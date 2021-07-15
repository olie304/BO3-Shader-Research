// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:33:57 2021

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
  float3 specColorTint : packoffset(c11);
  float baseNormalHeight : packoffset(c11.w);
  float2 glossRange : packoffset(c12);
  uint zFeatherComputeSprites : packoffset(c12.z);
  float hdrScale : packoffset(c12.w);
  float emissiveFalloffPower : packoffset(c13);
  float3 emissiveTint1 : packoffset(c13.y);
  bool relativeHDR : packoffset(c14);
  bool invertFalloff : packoffset(c14.y);
  float layerDepth : packoffset(c14.z);
  float uvMotionToggle1 : packoffset(c14.w) = {0};
  float2 scriptControl : packoffset(c15);
  float3 tint1 : packoffset(c16);
  float3 tint2 : packoffset(c17);
  float3 tint3 : packoffset(c18);
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
SamplerState specColorSampler_s : register(s3);
SamplerState samplerLinearClamp_s : register(s4);
SamplerState normalSampler_s : register(s5);
SamplerState aoSampler_s : register(s6);
SamplerComparisonState ShadowSamplerComparisonState_s : register(s13);
StructuredBuffer<shaderConstantSetBuffer> shaderConstantSetBuffer : register(t0);
StructuredBuffer<modelInstanceBuffer> modelInstanceBuffer : register(t4);
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
Texture2D<float4> colorMap : register(t21);
Texture2D<float4> specColorMap : register(t22);
StructuredBuffer<gSunShadowTree> gSunShadowTree : register(t23);
Texture2D<float4> normalMap : register(t24);
Texture2D<float4> glossMap : register(t25);
Texture2D<float4> aoMap : register(t26);
Texture2D<float4> emissiveMap : register(t29);
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
  float4 v2 : TEXCOORD0,
  nointerpolation uint4 v3 : TEXCOORD4,
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
// unknown dcl_: dcl_resource_structured t0, 384
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45;
  uint4 bitmask, uiDest;
  float4 fDest;

// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.x, v3.x, l(4), t4.xxxx
r0.x = samp0[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.xy, r0.x, l(36), t0.xyxx
r0.x = samp0[]..swiz;
r0.y = samp0[]..swiz;
  r1.xyzw = colorMap.Sample(colorSampler_s, v2.xy).xyzw;
  r2.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r2.xyz = r1.www * r2.xyz + float3(1,1,1);
  r1.xyz = r2.xyz * r1.xyz;
  r1.xyz = v1.xyz * r1.xyz;
  r0.z = w1.x * r1.w;
  r0.w = specColorMap.Sample(specColorSampler_s, v2.xy).x;
  r2.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + specColorTint.xyz;
  r2.xyz = r0.www * r2.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = saturate(1 + -r0.w);
  r1.xyz = r1.xyz * r0.www;
  r0.w = aoMap.Sample(aoSampler_s, v2.xy).x;
  r1.w = glossMap.Sample(specColorSampler_s, v2.xy).x;
  r2.w = glossRange.y + -glossRange.x;
  r1.w = r1.w * r2.w + glossRange.x;
  r1.w = saturate(0.0588235296 * r1.w);
  r3.xyz = normalMap.Sample(normalSampler_s, v2.xy).xyz;
  r3.xyz = float3(-0.5,-0.5,-0) + r3.xyz;
  r3.xyz = baseNormalHeight * r3.xyz + float3(0.5,0.5,0);
  r3.xy = r3.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.w = dot(r3.xy, r3.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r3.z = r3.z * r3.z;
  r3.z = 0.333333343 * r3.z;
  r3.z = min(1, r3.z);
  r3.w = v8.x ? 1 : -1;
  r4.x = dot(v4.xyz, v4.xyz);
  r4.x = rsqrt(r4.x);
  r4.xyz = v4.xyz * r4.xxx;
  r4.xyz = r4.xyz * r3.www;
  r4.w = dot(v5.xyz, v5.xyz);
  r4.w = rsqrt(r4.w);
  r5.xyz = v5.xyz * r4.www;
  r5.xyz = r5.xyz * r3.www;
  r4.w = dot(v6.xyz, v6.xyz);
  r4.w = rsqrt(r4.w);
  r6.xyz = v6.xyz * r4.www;
  r6.xyz = r6.xyz * r3.www;
  r1.w = -17 * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r3.z + r1.w;
  r1.w = log2(r1.w);
  r1.w = -0.0588235296 * r1.w;
  r1.w = max(0, r1.w);
  r7.xyz = r6.xyz * r3.yyy;
  r3.xyz = r5.xyz * r3.xxx + r7.xyz;
  r3.xyz = r4.xyz * r2.www + r3.xyz;
  r2.w = dot(r3.xyz, r3.xyz);
  r2.w = rsqrt(r2.w);
  r3.xyz = r3.xyz * r2.www;
  r2.w = cmp(v0.z >= 0.984375);
  r4.w = 1.01587307 * v0.z;
  r5.w = v0.z * 64 + -63;
  r2.w = r2.w ? r5.w : r4.w;
  r2.w = max(9.99999994e-09, r2.w);
  r2.w = rcp(r2.w);
  r7.xy = (uint2)v0.yx;
  r8.xyz = ddx_coarse(v7.xyz);
  r9.xyz = ddy_coarse(v7.xyz);
  r4.w = numRefProbes + numLights;
  r10.xyz = eyeOffset.xyz + v7.xyz;
  r2.w = 0.0078125 * r2.w;
  r2.w = min(15, r2.w);
  r2.w = (uint)r2.w;
  r11.xy = (uint2)r7.yx >> int2(6,6);
  r11.z = (uint)r2.w << 4;
  r2.w = numStaticDecals & -32;
  r5.w = (int)-r2.w + numStaticDecals;
  r12.xy = float2(0,0);
  r13.w = 0;
  r10.w = 1;
  r14.xyz = float3(0,0,0);
  r15.xyz = float3(0,0,0);
  r16.xyz = float3(0,0,0);
  r6.w = 0;
  r7.zw = float2(0,0);
  while (true) {
    r8.w = cmp((uint)r7.w >= numStaticDecals);
    if (r8.w != 0) break;
    r12.z = (uint)r7.w >> 5;
    r13.xyz = (int3)r11.xyz + (int3)r12.xyz;
    r8.w = visibleDecals.Load(r13.xyzw).x;
    r9.w = cmp((int)r2.w == (int)r7.w);
    if (r5.w == 0) r11.w = 0; else if (r5.w+0 < 32) {     r11.w = (uint)r8.w << (32-(r5.w + 0)); r11.w = (uint)r11.w >> (32-r5.w);    } else r11.w = (uint)r8.w >> 0;
    r8.w = r9.w ? r11.w : r8.w;
    r9.w = (int)r4.w + (int)r7.w;
    r13.xyz = r14.xyz;
    r17.xyz = r15.xyz;
    r18.xyz = r16.xyz;
    r11.w = r6.w;
    r12.z = r7.z;
    r12.w = r8.w;
    while (true) {
      if (r12.w == 0) break;
      r14.w = firstbitlow((uint)r12.w);
      r15.w = 1 << (int)r14.w;
      r16.w = (int)r12.w & (int)r15.w;
      if (r16.w != 0) {
        r12.w = (int)r12.w ^ (int)r15.w;
        r15.w = (int)r9.w + (int)r14.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r19.xyzw, r15.w, l(0), t11.xyzw
      r19.x = samp0[]..swiz;
      r19.y = samp0[]..swiz;
      r19.z = samp0[]..swiz;
      r19.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r20.xy, r15.w, l(16), t11.xyxx
      r20.x = samp0[]..swiz;
      r20.y = samp0[]..swiz;
        r19.xyz = -v7.xyz + r19.xyz;
        r20.z = r19.w;
        r19.xyz = cmp(abs(r19.xyz) < r20.zxy);
        r15.w = r19.y ? r19.x : 0;
        r15.w = r19.z ? r15.w : 0;
        if (r15.w != 0) {
          r14.w = (int)r7.w + (int)r14.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r19.xyz, r14.w, l(0), t36.xyzx
        r19.x = samp0[]..swiz;
        r19.y = samp0[]..swiz;
        r19.z = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r20.xyz, r14.w, l(16), t36.xyzx
        r20.x = samp0[]..swiz;
        r20.y = samp0[]..swiz;
        r20.z = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r21.xyz, r14.w, l(32), t36.xyzx
        r21.x = samp0[]..swiz;
        r21.y = samp0[]..swiz;
        r21.z = samp0[]..swiz;
          r22.x = r19.x;
          r22.y = r20.x;
          r22.z = r21.x;
          r15.w = dot(r22.xyz, r22.xyz);
          r15.w = rsqrt(r15.w);
          r23.xyz = r22.xyz * r15.www;
          r15.w = dot(r23.xyz, v4.xyz);
          r15.w = cmp(r15.w >= 0.5);
          if (r15.w != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r24.xyw, r14.w, l(48), t36.xyxz
          r24.x = samp0[]..swiz;
          r24.y = samp0[]..swiz;
          r24.w = samp0[]..swiz;
            r22.w = r24.x;
            r22.x = dot(r10.xyzw, r22.xyzw);
            r25.x = r19.y;
            r25.y = r20.y;
            r25.z = r21.y;
            r25.w = r24.y;
            r22.y = dot(r10.xyzw, r25.xyzw);
            r24.x = r19.z;
            r24.y = r20.z;
            r24.z = r21.z;
            r22.z = dot(r10.xyzw, r24.xyzw);
            r19.xyz = cmp(abs(r22.xyz) < float3(1,1,1));
            r15.w = r19.y ? r19.x : 0;
            r15.w = r19.z ? r15.w : 0;
            if (r15.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r19.xyzw, r14.w, l(64), t36.xyzw
            r19.x = samp0[]..swiz;
            r19.y = samp0[]..swiz;
            r19.z = samp0[]..swiz;
            r19.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r20.xyzw, r14.w, l(80), t36.xyzw
            r20.x = samp0[]..swiz;
            r20.y = samp0[]..swiz;
            r20.z = samp0[]..swiz;
            r20.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r21.xyzw, r14.w, l(96), t36.xyzw
            r21.x = samp0[]..swiz;
            r21.y = samp0[]..swiz;
            r21.z = samp0[]..swiz;
            r21.w = samp0[]..swiz;
              r26.x = dot(r8.xyz, r25.xyz);
              r26.y = dot(r8.xyz, r24.xyz);
              r27.x = dot(r9.xyz, r25.xyz);
              r27.y = dot(r9.xyz, r24.xyz);
              r22.xy = r22.yz * float2(0.5,-0.5) + float2(0.5,0.5);
              r26.xyz = float3(0.5,-0.5,0.5) * r26.xyx;
              r27.xyz = float3(0.5,-0.5,0.5) * r27.xyx;
              r22.zw = (int2)r20.yz & int2(65535,65535);
              if (r22.z != 0) {
                if (4 == 0) r15.w = 0; else if (4+24 < 32) {                 r15.w = (uint)r20.w << (32-(4 + 24)); r15.w = (uint)r15.w >> (32-4);                } else r15.w = (uint)r20.w >> 24;
                r15.w = 1 << (int)r15.w;
                r16.w = (uint)r20.w >> 28;
                r16.w = 1 << (int)r16.w;
                r17.w = cmp((int)r22.z == 4);
                if (r17.w != 0) {
                  r17.w = (int)r20.w & 4095;
                  if (12 == 0) r18.w = 0; else if (12+12 < 32) {                   r18.w = (uint)r20.w << (32-(12 + 12)); r18.w = (uint)r18.w >> (32-12);                  } else r18.w = (uint)r20.w >> 12;
                  r23.w = (int)r21.w & 1023;
                  r28.xz = (uint2)r15.ww;
                  r28.y = (uint)r16.w;
                  r29.xy = r22.xy * r28.zy + float2(0.5,0.5);
                  r29.zw = float2(-0.5,-0.5) + r28.zy;
                  r29.xy = min(r29.xy, r29.zw);
                  r30.x = (uint)r17.w;
                  r30.y = (uint)r18.w;
                  r29.xy = r30.xy + r29.xy;
                  r29.xy = invBcTexSizes.xy * r29.xy;
                  r29.z = (uint)r23.w;
                  r30.xyz = invBcTexSizes.xyx * r26.zyz;
                  r30.xyz = r30.xyz * r28.xyz;
                  r31.xyz = invBcTexSizes.xyx * r27.zyz;
                  r28.xyz = r31.xyz * r28.xyz;
                  r28.xyzw = materialTexBC7.SampleGrad(samplerLinearClamp_s, r29.xyz, r30.xyzx, r28.xyzx).xyzw;
                } else {
                  r17.w = cmp((int)r22.z == 1);
                  if (r17.w != 0) {
                    r17.w = (int)r20.w & 4095;
                    if (12 == 0) r18.w = 0; else if (12+12 < 32) {                     r18.w = (uint)r20.w << (32-(12 + 12)); r18.w = (uint)r18.w >> (32-12);                    } else r18.w = (uint)r20.w >> 12;
                    r20.w = (int)r21.w & 1023;
                    r29.xz = (uint2)r15.ww;
                    r29.y = (uint)r16.w;
                    r30.xy = r22.xy * r29.zy + float2(0.5,0.5);
                    r30.zw = float2(-0.5,-0.5) + r29.zy;
                    r30.xy = min(r30.xy, r30.zw);
                    r31.x = (uint)r17.w;
                    r31.y = (uint)r18.w;
                    r30.xy = r31.xy + r30.xy;
                    r30.xy = invBcTexSizes.zw * r30.xy;
                    r30.z = (uint)r20.w;
                    r31.xyz = invBcTexSizes.zwz * r26.zyz;
                    r31.xyz = r31.xyz * r29.xyz;
                    r32.xyz = invBcTexSizes.zwz * r27.zyz;
                    r29.xyz = r32.xyz * r29.xyz;
                    r28.xyzw = materialTexBC3.SampleGrad(samplerLinearClamp_s, r30.xyz, r31.xyzx, r29.xyzx).xyzw;
                  } else {
                    r28.xyzw = float4(1,1,1,1);
                  }
                }
                r19.xyz = r28.xyz * r19.xyz;
                r15.w = r28.w * r19.w;
              } else {
                r19.xyz = float3(0,0,0);
                r15.w = 0;
              }
              r16.w = cmp(r20.x != 1.000000);
              r17.w = r15.w + r19.w;
              r17.w = saturate(r17.w * r20.x + -r20.x);
              r15.w = r16.w ? r17.w : r15.w;
              if (r22.w != 0) {
                if (4 == 0) r16.w = 0; else if (4+24 < 32) {                 r16.w = (uint)r21.y << (32-(4 + 24)); r16.w = (uint)r16.w >> (32-4);                } else r16.w = (uint)r21.y >> 24;
                r16.w = 1 << (int)r16.w;
                r17.w = (uint)r21.y >> 28;
                r17.w = 1 << (int)r17.w;
                r18.w = cmp((int)r22.w == 2);
                if (r18.w != 0) {
                  r18.w = (int)r21.y & 4095;
                  if (12 == 0) r20.x = 0; else if (12+12 < 32) {                   r20.x = (uint)r21.y << (32-(12 + 12)); r20.x = (uint)r20.x >> (32-12);                  } else r20.x = (uint)r21.y >> 12;
                  if (10 == 0) r20.w = 0; else if (10+20 < 32) {                   r20.w = (uint)r21.w << (32-(10 + 20)); r20.w = (uint)r20.w >> (32-10);                  } else r20.w = (uint)r21.w >> 20;
                  r28.xz = (uint2)r16.ww;
                  r28.y = (uint)r17.w;
                  r29.xy = r22.xy * r28.zy + float2(0.5,0.5);
                  r29.zw = float2(-0.5,-0.5) + r28.zy;
                  r29.xy = min(r29.xy, r29.zw);
                  r30.x = (uint)r18.w;
                  r30.y = (uint)r20.x;
                  r29.xy = r30.xy + r29.xy;
                  r29.xy = invMaskTexSizes.xy * r29.xy;
                  r29.z = (uint)r20.w;
                  r30.xyz = invMaskTexSizes.xyx * r26.zyz;
                  r30.xyz = r30.xyz * r28.xyz;
                  r31.xyz = invMaskTexSizes.xyx * r27.zyz;
                  r28.xyz = r31.xyz * r28.xyz;
                  r18.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r29.xyz, r30.x, r28.x).x;
                } else {
                  r19.w = cmp((int)r22.w == 4);
                  if (r19.w != 0) {
                    r19.w = (int)r21.y & 4095;
                    if (12 == 0) r20.x = 0; else if (12+12 < 32) {                     r20.x = (uint)r21.y << (32-(12 + 12)); r20.x = (uint)r20.x >> (32-12);                    } else r20.x = (uint)r21.y >> 12;
                    if (10 == 0) r20.w = 0; else if (10+20 < 32) {                     r20.w = (uint)r21.w << (32-(10 + 20)); r20.w = (uint)r20.w >> (32-10);                    } else r20.w = (uint)r21.w >> 20;
                    r28.xz = (uint2)r16.ww;
                    r28.y = (uint)r17.w;
                    r22.zw = r22.xy * r28.zy + float2(0.5,0.5);
                    r29.xy = float2(-0.5,-0.5) + r28.zy;
                    r22.zw = min(r29.xy, r22.zw);
                    r29.x = (uint)r19.w;
                    r29.yz = (uint2)r20.xw;
                    r22.zw = r29.xy + r22.zw;
                    r29.xy = invBcTexSizes.xy * r22.zw;
                    r30.xyz = invBcTexSizes.xyx * r26.zyz;
                    r30.xyz = r30.xyz * r28.xyz;
                    r31.xyz = invBcTexSizes.xyx * r27.zyz;
                    r28.xyz = r31.xyz * r28.xyz;
                    r18.w = materialTexBC7.SampleGrad(samplerLinearClamp_s, r29.xyz, r30.x, r28.x).x;
                  } else {
                    r19.w = (int)r21.y & 4095;
                    if (12 == 0) r20.x = 0; else if (12+12 < 32) {                     r20.x = (uint)r21.y << (32-(12 + 12)); r20.x = (uint)r20.x >> (32-12);                    } else r20.x = (uint)r21.y >> 12;
                    if (10 == 0) r20.w = 0; else if (10+20 < 32) {                     r20.w = (uint)r21.w << (32-(10 + 20)); r20.w = (uint)r20.w >> (32-10);                    } else r20.w = (uint)r21.w >> 20;
                    r28.xz = (uint2)r16.ww;
                    r28.y = (uint)r17.w;
                    r22.zw = r22.xy * r28.zy + float2(0.5,0.5);
                    r29.xy = float2(-0.5,-0.5) + r28.zy;
                    r22.zw = min(r29.xy, r22.zw);
                    r29.x = (uint)r19.w;
                    r29.yz = (uint2)r20.xw;
                    r22.zw = r29.xy + r22.zw;
                    r29.xy = invBcTexSizes.zw * r22.zw;
                    r30.xyz = invBcTexSizes.zwz * r26.zyz;
                    r30.xyz = r30.xyz * r28.xyz;
                    r31.xyz = invBcTexSizes.zwz * r27.zyz;
                    r28.xyz = r31.xyz * r28.xyz;
                    r18.w = materialTexBC3.SampleGrad(samplerLinearClamp_s, r29.xyz, r30.x, r28.x).x;
                  }
                }
                r28.xyz = r18.www * float3(0.959999979,0.959999979,0.959999979) + float3(0.0399999991,0.0399999991,0.0399999991);
                r16.w = saturate(1 + -r18.w);
                r19.xyz = r19.xyz * r16.www;
              } else {
                r28.xyz = float3(0.0399999991,0.0399999991,0.0399999991);
              }
              r20.xy = (uint2)r20.zy >> int2(16,16);
              if (r20.x != 0) {
                r16.w = cmp((int)r20.x == 2);
                if (r16.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r14.w, r14.w, l(112), t36.xxxx
                r14.w = samp0[]..swiz;
                  if (4 == 0) r20.z = 0; else if (4+24 < 32) {                   r20.z = (uint)r21.z << (32-(4 + 24)); r20.z = (uint)r20.z >> (32-4);                  } else r20.z = (uint)r21.z >> 24;
                  if (12 == 0) r20.w = 0; else if (12+12 < 32) {                   r20.w = (uint)r21.z << (32-(12 + 12)); r20.w = (uint)r20.w >> (32-12);                  } else r20.w = (uint)r21.z >> 12;
                  r16.w = 1 << (int)r20.z;
                  r17.w = (uint)r21.z >> 28;
                  r17.w = 1 << (int)r17.w;
                  r18.w = (int)r21.z & 4095;
                  r14.w = (int)r14.w & 1023;
                  r29.xz = (uint2)r16.ww;
                  r29.y = (uint)r17.w;
                  r21.yz = r22.xy * r29.zy + float2(0.5,0.5);
                  r22.zw = float2(-0.5,-0.5) + r29.zy;
                  r21.yz = min(r22.zw, r21.yz);
                  r30.x = (uint)r18.w;
                  r30.y = (uint)r20.w;
                  r20.zw = r30.xy + r21.yz;
                  r30.xy = invMaskTexSizes.xy * r20.zw;
                  r30.z = (uint)r14.w;
                  r31.xyz = invMaskTexSizes.xyx * r26.zyz;
                  r31.xyz = r31.xyz * r29.xyz;
                  r32.xyz = invMaskTexSizes.xyx * r27.zyz;
                  r29.xyz = r32.xyz * r29.xyz;
                  r14.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r30.xyz, r31.x, r29.x).x;
                } else {
                  r16.w = cmp((int)r20.x == 6);
                  r14.w = r16.w ? 0 : 1;
                }
              } else {
                r14.w = 1;
              }
              r14.w = saturate(0.764705896 * r14.w);
              if (r20.y != 0) {
                r16.w = cmp((int)r20.y == 3);
                if (r16.w != 0) {
                  if (4 == 0) r20.x = 0; else if (4+24 < 32) {                   r20.x = (uint)r21.x << (32-(4 + 24)); r20.x = (uint)r20.x >> (32-4);                  } else r20.x = (uint)r21.x >> 24;
                  if (12 == 0) r20.y = 0; else if (12+12 < 32) {                   r20.y = (uint)r21.x << (32-(12 + 12)); r20.y = (uint)r20.y >> (32-12);                  } else r20.y = (uint)r21.x >> 12;
                  if (10 == 0) r20.z = 0; else if (10+10 < 32) {                   r20.z = (uint)r21.w << (32-(10 + 10)); r20.z = (uint)r20.z >> (32-10);                  } else r20.z = (uint)r21.w >> 10;
                  r16.w = 1 << (int)r20.x;
                  r17.w = (uint)r21.x >> 28;
                  r17.w = 1 << (int)r17.w;
                  r18.w = (int)r21.x & 4095;
                  r21.xz = (uint2)r16.ww;
                  r21.y = (uint)r17.w;
                  r20.xw = r22.xy * r21.xy + float2(0.5,0.5);
                  r22.xy = float2(-0.5,-0.5) + r21.zy;
                  r20.xw = min(r22.xy, r20.xw);
                  r22.x = (uint)r18.w;
                  r22.yz = (uint2)r20.yz;
                  r20.xy = r22.xy + r20.xw;
                  r22.xy = invMaskTexSizes.zw * r20.xy;
                  r20.xyz = invMaskTexSizes.zwz * r26.xyz;
                  r20.xyz = r20.xyz * r21.xyz;
                  r26.xyz = invMaskTexSizes.zwz * r27.xyz;
                  r21.xyz = r26.xyz * r21.xyz;
                  r20.xyz = materialTexBC7linear.SampleGrad(samplerLinearClamp_s, r22.xyz, r20.xyz, r21.xyz).xyz;
                } else {
                  r20.xyz = float3(0.5,0.5,1);
                }
                r20.xy = r20.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
                r16.w = dot(r20.xy, r20.xy);
                r16.w = 1 + -r16.w;
                r16.w = max(0, r16.w);
                r16.w = sqrt(r16.w);
                r17.w = r20.z * r20.z;
                r17.w = 0.333333343 * r17.w;
                r17.w = min(1, r17.w);
                r18.w = dot(r25.xyz, r25.xyz);
                r18.w = rsqrt(r18.w);
                r21.xyz = r25.xyz * r18.www;
                r18.w = dot(-r24.xyz, -r24.xyz);
                r18.w = rsqrt(r18.w);
                r22.xyz = -r24.xyz * r18.www;
                r23.xyz = r23.xyz * r3.www;
                r21.xyz = r21.xyz * r3.www;
                r22.xyz = r22.xyz * r3.www;
                r18.w = -17 * r14.w;
                r18.w = exp2(r18.w);
                r17.w = r18.w + r17.w;
                r17.w = log2(r17.w);
                r17.w = -0.0588235296 * r17.w;
                r14.w = max(0, r17.w);
                r20.yzw = r22.xyz * r20.yyy;
                r20.xyz = r21.xyz * r20.xxx + r20.yzw;
                r20.xyz = r23.xyz * r16.www + r20.xyz;
                r16.w = dot(r20.xyz, r20.xyz);
                r16.w = rsqrt(r16.w);
                r20.xyz = r20.xyz * r16.www;
                r16.w = 1 + -r15.w;
                r21.xyz = r17.xyz * r16.www;
                r17.xyz = r20.xyz * r15.www + r21.xyz;
              }
              r16.w = 1 + -r15.w;
              r20.xyz = r16.www * r13.xyz;
              r13.xyz = r19.xyz * r15.www + r20.xyz;
              r19.xyz = r18.xyz * r16.www;
              r18.xyz = r28.xyz * r15.www + r19.xyz;
              r11.w = r11.w * r16.w + r15.w;
              r16.w = r16.w * r12.z;
              r12.z = r14.w * r15.w + r16.w;
            }
          }
        }
      }
    }
    r14.xyz = r13.xyz;
    r15.xyz = r17.xyz;
    r16.xyz = r18.xyz;
    r6.w = r11.w;
    r7.z = r12.z;
    r7.w = (int)r7.w + 32;
  }
  r6.w = saturate(r6.w);
  r2.w = 1 + -r6.w;
  r1.xyz = r1.xyz * r2.www + r14.xyz;
  r0.z = r0.z * r2.w + r6.w;
  r3.xyz = r3.xyz * r2.www + r15.xyz;
  r3.w = dot(r3.xyz, r3.xyz);
  r3.w = rsqrt(r3.w);
  r3.xyz = r3.xyz * r3.www;
  r8.y = r1.w * r2.w + r7.z;
  r2.xyz = r2.xyz * r2.www + r16.xyz;
  r0.x = saturate(r0.x);
  r0.x = hdrScale * r0.x;
  r9.xyz = cmp(r0.yyy == float3(3,2,1));
  r12.xyz = r9.zzz ? tint1.xyz : emissiveTint1.xyz;
  r9.yzw = r9.yyy ? tint2.xyz : r12.xyz;
  r9.xyz = r9.xxx ? tint3.xyz : r9.yzw;
  r0.y = dot(-v7.xyz, -v7.xyz);
  r0.y = rsqrt(r0.y);
  r12.xyz = -v7.xyz * r0.yyy;
  r1.w = dot(r12.xyz, r4.xyz);
  r4.x = dot(r12.xyz, r5.xyz);
  r4.y = dot(r12.xyz, r6.xyz);
  r4.z = cmp(0 < r1.w);
  r4.xy = -r4.xy / r1.ww;
  r4.xy = r4.zz ? r4.xy : 0;
  r4.z = 9.99999975e-06 + relativeHDR;
  r4.xy = r4.xy * r4.zz + v2.xy;
  r4.xyzw = emissiveMap.Sample(colorSampler_s, r4.xy).xyzw;
  r4.xyz = r4.xyz * r9.xyz;
  r1.w = saturate(r1.w);
  r5.x = log2(r1.w);
  r5.x = emissiveFalloffPower * r5.x;
  r5.x = exp2(r5.x);
  r1.w = 1 + -r1.w;
  r1.w = log2(r1.w);
  r1.w = emissiveFalloffPower * r1.w;
  r1.w = exp2(r1.w);
  r1.w = relativeHDR ? r1.w : r5.x;
  r5.x = cmp(emissiveFalloffPower == 0.000000);
  r1.w = r5.x ? 1 : r1.w;
  r0.x = r4.w * r0.x;
  r0.x = r0.x * r1.w;
  r0.x = r0.x * r2.w;
  r4.xyz = r4.xyz * r0.xxx;
  r0.x = cmp(isDepthHack != 0);
  r5.xy = (uint2)r7.xy;
  r1.w = dot(r5.yx, float2(0.0671105608,0.00583714992));
  r1.w = frac(r1.w);
  r1.w = 52.9829178 * r1.w;
  r1.w = frac(r1.w);
  r1.w = r1.w * 6.28318548 + gameTick.w;
  sincos(r1.w, r6.x, r7.x);
  r1.w = dot(r5.xy, float2(0.0671105608,0.00583714992));
  r1.w = frac(r1.w);
  r1.w = 52.9829178 * r1.w;
  r1.w = frac(r1.w);
  r1.w = r1.w * 6.28318548 + gameTick.w;
  sincos(r1.w, r5.x, r9.x);
  r8.x = saturate(dot(r3.xyz, r12.xyz));
  r1.w = dot(-r12.xyz, r3.xyz);
  r1.w = r1.w + r1.w;
  r13.xyz = r3.xyz * -r1.www + -r12.xyz;
  r1.w = 17 * r8.y;
  r1.w = exp2(r1.w);
  r1.w = 2 + r1.w;
  r1.w = 2 / r1.w;
  r2.w = sqrt(r1.w);
  r5.y = 1 + -r8.y;
  r5.z = 5 * r5.y;
  r5.w = r5.y * 5 + -2.5;
  r5.w = saturate(0.400000006 * r5.w);
  r5.w = 100 * r5.w;
  r6.zw = -r5.yy * float2(10,5) + float2(6.85740995,7.08500004);
  r6.z = exp2(r6.z);
  r6.z = r8.x * r6.z;
  r7.w = r5.z * r5.y;
  r6.w = -r7.w * 2.0159049 + r6.w;
  r6.w = exp2(r6.w);
  r6.w = r8.x * r6.w;
  r6.zw = float2(9.1368103,9.70808983) * r6.zw;
  r6.z = max(r6.z, r6.w);
  r6.z = max(1.26815999, r6.z);
  r6.w = numRefProbes + -numOverrideProbes;
  r7.w = (int)r6.w & -32;
  r8.z = (int)r6.w + (int)-r7.w;
  r8.w = numRefProbes & -32;
  r9.y = (int)-r8.w + numRefProbes;
  r14.xy = float2(0,0);
  r15.w = 0;
  r16.yz = float2(0,1);
  r17.xy = float2(0,0);
  r18.x = 1;
  r19.xy = float2(0,0);
  r20.xy = float2(0,0);
  r21.xyzw = float4(0,0,0,0);
  r22.yzw = float3(0,0,0);
  r9.z = r7.w;
  while (true) {
    r9.w = cmp((uint)r9.z >= numRefProbes);
    if (r9.w != 0) break;
    r14.z = (uint)r9.z >> 5;
    r15.xyz = (int3)r11.xyz + (int3)r14.xyz;
    r9.w = visibleProbes.Load(r15.xyzw).x;
    r11.w = cmp((int)r7.w == (int)r9.z);
    bitmask.w = ((~(-1 << r8.z)) << 0) & 0xffffffff;  r12.w = (((uint)0 << 0) & bitmask.w) | ((uint)r9.w & ~bitmask.w);
    r9.w = r11.w ? r12.w : r9.w;
    r11.w = cmp((int)r8.w == (int)r9.z);
    if (r9.y == 0) r12.w = 0; else if (r9.y+0 < 32) {     r12.w = (uint)r9.w << (32-(r9.y + 0)); r12.w = (uint)r12.w >> (32-r9.y);    } else r12.w = (uint)r9.w >> 0;
    r9.w = r11.w ? r12.w : r9.w;
    r11.w = (int)r9.z + numLights;
    r23.xyzw = r21.xyzw;
    r24.xyz = r22.yzw;
    r12.w = r9.w;
    while (true) {
      if (r12.w == 0) break;
      r14.z = firstbitlow((uint)r12.w);
      r14.w = 1 << (int)r14.z;
      r15.x = (int)r12.w & (int)r14.w;
      if (r15.x != 0) {
        r12.w = (int)r12.w ^ (int)r14.w;
        r14.w = (int)r11.w + (int)r14.z;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r25.xyzw, r14.w, l(0), t11.xyzw
      r25.x = samp0[]..swiz;
      r25.y = samp0[]..swiz;
      r25.z = samp0[]..swiz;
      r25.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r15.xy, r14.w, l(16), t11.xyxx
      r15.x = samp0[]..swiz;
      r15.y = samp0[]..swiz;
        r25.xyz = -v7.xyz + r25.xyz;
        r15.z = r25.w;
        r15.xyz = cmp(abs(r25.xyz) < r15.zxy);
        r14.w = r15.y ? r15.x : 0;
        r14.w = r15.z ? r14.w : 0;
        if (r14.w != 0) {
          r14.z = (int)r9.z + (int)r14.z;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r14.z, l(0), t15.wxyz
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        r25.z = samp0[]..swiz;
        r25.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r15.xy, r14.z, l(96), t15.xyxx
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r14.z, l(116), t15.zwxy
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
        r26.z = samp0[]..swiz;
        r26.w = samp0[]..swiz;
          r27.xyz = v7.xyz + -r25.yzw;
          r14.w = (int)r26.w & 0x0000ffff;
          if (6 == 0) r15.z = 0; else if (6+25 < 32) {           r15.z = (uint)r26.w << (32-(6 + 25)); r15.z = (uint)r15.z >> (32-6);          } else r15.z = (uint)r26.w >> 25;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r14.w, l(0), t16.xyzw
        r28.x = samp0[]..swiz;
        r28.y = samp0[]..swiz;
        r28.z = samp0[]..swiz;
        r28.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r14.w, l(16), t16.xyzw
        r29.x = samp0[]..swiz;
        r29.y = samp0[]..swiz;
        r29.z = samp0[]..swiz;
        r29.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r14.w, l(32), t16.xyzw
        r30.x = samp0[]..swiz;
        r30.y = samp0[]..swiz;
        r30.z = samp0[]..swiz;
        r30.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r14.w, l(48), t16.xyzw
        r31.x = samp0[]..swiz;
        r31.y = samp0[]..swiz;
        r31.z = samp0[]..swiz;
        r31.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r14.w, l(64), t16.xyzw
        r32.x = samp0[]..swiz;
        r32.y = samp0[]..swiz;
        r32.z = samp0[]..swiz;
        r32.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r14.w, l(80), t16.xyzw
        r33.x = samp0[]..swiz;
        r33.y = samp0[]..swiz;
        r33.z = samp0[]..swiz;
        r33.w = samp0[]..swiz;
          r16.w = dot(r28.xyz, r27.xyz);
          r16.w = saturate(r16.w + r28.w);
          r17.w = dot(r29.xyz, r27.xyz);
          r17.w = saturate(r17.w + r29.w);
          r16.w = r17.w * r16.w;
          r17.w = dot(r30.xyz, r27.xyz);
          r17.w = saturate(r17.w + r30.w);
          r16.w = r17.w * r16.w;
          r17.w = dot(r31.xyz, r27.xyz);
          r17.w = saturate(r17.w + r31.w);
          r16.w = r17.w * r16.w;
          r17.w = dot(r32.xyz, r27.xyz);
          r17.w = saturate(r17.w + r32.w);
          r16.w = r17.w * r16.w;
          r17.w = dot(r33.xyz, r27.xyz);
          r17.w = saturate(r17.w + r33.w);
          r16.x = r17.w * r16.w;
          r16.w = r15.x ? 0.000000 : 0;
          r16.xw = r16.ww ? r16.xy : r16.zx;
          r17.w = r15.x;
          r28.xy = r16.xw;
          r18.z = 1;
          while (true) {
            r18.w = cmp((int)r18.z >= (int)r15.z);
            if (r18.w != 0) break;
            r18.w = (int)r14.w + (int)r18.z;
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
            r20.w = (uint)r17.w >> 2;
            if (1 == 0) r25.w = 0; else if (1+2 < 32) {             r25.w = (uint)r17.w << (32-(1 + 2)); r25.w = (uint)r25.w >> (32-1);            } else r25.w = (uint)r17.w >> 2;
            r27.w = (int)r20.w & 2;
            r28.z = max(r28.y, r28.x);
            r18.w = -r18.w * r19.w + 1;
            r18.w = r28.y * r18.w;
            r18.y = r27.w ? r18.w : r28.z;
            r28.xy = r25.ww ? r28.xy : r18.xy;
            r18.z = (int)r18.z + 1;
            r17.w = r20.w;
          }
          r28.y = saturate(r28.y);
          r14.w = r28.y * r15.y;
          r15.x = cmp(0 < r14.w);
          if (r15.x != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r14.z, l(16), t15.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r14.z, l(32), t15.yxwz
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r14.z, l(48), t15.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r14.z, l(64), t15.zwxy
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r14.z, l(80), t15.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r14.z, l(132), t15.zwxy
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r14.z, l(148), t15.zwxy
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r14.z, l(164), t15.zwxy
          r36.x = samp0[]..swiz;
          r36.y = samp0[]..swiz;
          r36.z = samp0[]..swiz;
          r36.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r14.z, l(180), t15.zwxy
          r37.x = samp0[]..swiz;
          r37.y = samp0[]..swiz;
          r37.z = samp0[]..swiz;
          r37.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r14.z, l(196), t15.xyzw
          r38.x = samp0[]..swiz;
          r38.y = samp0[]..swiz;
          r38.z = samp0[]..swiz;
          r38.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xy, r14.z, l(212), t15.xyxx
          r39.x = samp0[]..swiz;
          r39.y = samp0[]..swiz;
            r24.z = r28.y * r15.y + r24.z;
            r14.z = r14.w * r26.z;
            r26.z = r34.z;
            r14.w = dot(r13.xyz, r26.xyz);
            r15.x = dot(r27.xyz, r26.xyz);
            r15.x = r15.x + -r34.w;
            r15.y = cmp(r15.x >= 0);
            r15.x = max(abs(r15.x), r5.w);
            r15.x = r15.y ? r15.x : -r15.x;
            r14.w = max(1.00000001e-07, -r14.w);
            r14.w = r15.x / r14.w;
            r14.w = min(131072, abs(r14.w));
            r34.z = r35.z;
            r15.x = dot(r13.xyz, r34.xyz);
            r15.y = dot(r27.xyz, r34.xyz);
            r15.y = r15.y + -r35.w;
            r15.z = cmp(r15.y >= 0);
            r15.y = max(abs(r15.y), r5.w);
            r15.y = r15.z ? r15.y : -r15.y;
            r15.x = max(1.00000001e-07, -r15.x);
            r15.x = r15.y / r15.x;
            r14.w = min(abs(r15.x), r14.w);
            r35.z = r36.z;
            r15.x = dot(r13.xyz, r35.xyz);
            r15.y = dot(r27.xyz, r35.xyz);
            r15.y = r15.y + -r36.w;
            r15.z = cmp(r15.y >= 0);
            r15.y = max(abs(r15.y), r5.w);
            r15.y = r15.z ? r15.y : -r15.y;
            r15.x = max(1.00000001e-07, -r15.x);
            r15.x = r15.y / r15.x;
            r14.w = min(abs(r15.x), r14.w);
            r36.z = r37.z;
            r15.x = dot(r13.xyz, r36.xyz);
            r15.y = dot(r27.xyz, r36.xyz);
            r15.y = r15.y + -r37.w;
            r15.z = cmp(r15.y >= 0);
            r15.y = max(abs(r15.y), r5.w);
            r15.y = r15.z ? r15.y : -r15.y;
            r15.x = max(1.00000001e-07, -r15.x);
            r15.x = r15.y / r15.x;
            r14.w = min(abs(r15.x), r14.w);
            r37.z = r38.x;
            r15.x = dot(r13.xyz, r37.xyz);
            r15.y = dot(r27.xyz, r37.xyz);
            r15.y = r15.y + -r38.y;
            r15.z = cmp(r15.y >= 0);
            r15.y = max(abs(r15.y), r5.w);
            r15.y = r15.z ? r15.y : -r15.y;
            r15.x = max(1.00000001e-07, -r15.x);
            r15.x = r15.y / r15.x;
            r14.w = min(abs(r15.x), r14.w);
            r39.zw = r38.zw;
            r15.x = dot(r13.zxy, r39.xzw);
            r15.y = dot(r27.zxy, r39.xzw);
            r15.y = r15.y + -r39.y;
            r15.z = cmp(r15.y >= 0);
            r15.y = max(abs(r15.y), r5.w);
            r15.y = r15.z ? r15.y : -r15.y;
            r15.x = max(1.00000001e-07, -r15.x);
            r15.x = r15.y / r15.x;
            r14.w = min(abs(r15.x), r14.w);
            r15.x = r31.w;
            r15.yz = r32.zw;
            r15.xyz = r15.xyz + r27.xyz;
            r15.xyz = r13.xyz * r14.www + r15.xyz;
            r16.x = dot(r15.xyz, r15.xyz);
            r16.x = sqrt(r16.x);
            r14.w = r14.w / r16.x;
            r14.w = r14.w + r14.w;
            r14.w = sqrt(r14.w);
            r14.w = r5.y * 5 + r14.w;
            r14.w = -0.844799995 + r14.w;
            r25.y = r29.z;
            r25.z = r30.x;
            r34.x = dot(r15.xyz, r25.xyz);
            r26.xy = r29.xw;
            r26.z = r30.w;
            r34.y = dot(r15.xyz, r26.xyz);
            r30.x = r29.y;
            r34.z = dot(r15.xyz, r30.xyz);
            if (9 == 0) r15.x = 0; else if (9+16 < 32) {             r15.x = (uint)r26.w << (32-(9 + 16)); r15.x = (uint)r15.x >> (32-9);            } else r15.x = (uint)r26.w >> 16;
            r34.w = (uint)r15.x;
            r15.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, r14.w).xyz;
            r29.x = dot(r27.xyz, r25.xyz);
            r29.y = dot(r27.xyz, r26.xyz);
            r29.z = dot(r27.xyz, r30.xyz);
            r18.yzw = saturate(r29.xyz * r31.xyz + float3(0.5,0.5,0.5));
            r32.z = r33.x;
            r18.yzw = r18.yzw * r32.xyz + r33.yzw;
            r34.x = dot(r3.xyz, r25.xyz);
            r34.y = dot(r3.xyz, r26.xyz);
            r34.z = dot(r3.xyz, r30.xyz);
            r25.xyz = cmp(float3(0,0,0) < r34.xyz);
            r17.z = r25.x ? 0 : 0.5;
            r26.xyz = r18.yzw + r17.xyz;
            r26.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
            r27.xyz = r34.xyz * r34.xyz;
            r27.xyz = r27.xyz * r14.zzz;
            r19.z = r25.y ? 0 : 0.5;
            r25.xyw = r19.xyz + r18.yzw;
            r25.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r25.xyw, 0).xyz;
            r25.xyw = r25.xyw * r27.yyy;
            r25.xyw = r26.xyz * r27.xxx + r25.xyw;
            r20.z = r25.z ? 0 : 0.5;
            r18.yzw = r20.xyz + r18.yzw;
            r18.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r18.yzw, 0).xyz;
            r18.yzw = r18.yzw * r27.zzz + r25.xyw;
            r25.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, 6).xyz;
            r26.xyz = r25.xyz * r18.yzw;
            r14.w = dot(r26.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r23.xyz = r18.yzw * r25.xyz + r23.xyz;
            r16.x = r14.w * r6.z;
            r15.xyz = r15.xyz * r14.zzz;
            r14.z = dot(r15.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r14.z = r6.z * r14.w + r14.z;
            r14.z = r16.x / r14.z;
            r25.x = r23.w;
            r25.yz = r24.xy;
            r24.xyw = r15.yzx * r14.zzz + r25.yzx;
            r23.w = r24.w;
          }
        }
      }
    }
    r21.xyzw = r23.xyzw;
    r22.yzw = r24.xyz;
    r9.z = (int)r9.z + 32;
  }
  r8.w = cmp(r22.w < 1);
  if (r8.w != 0) {
    r14.xy = float2(0,0);
    r15.w = 0;
    r16.yz = float2(0,1);
    r17.xy = float2(0,0);
    r18.x = 1;
    r19.xy = float2(0,0);
    r20.xy = float2(0,0);
    r23.x = r21.w;
    r23.yzw = r22.yzw;
    r9.yzw = r21.xyz;
    r8.w = r22.w;
    r11.w = 0;
    while (true) {
      r12.w = cmp((uint)r11.w >= (uint)r6.w);
      if (r12.w != 0) break;
      r14.z = (uint)r11.w >> 5;
      r15.xyz = (int3)r11.xyz + (int3)r14.xyz;
      r12.w = visibleProbes.Load(r15.xyzw).x;
      r14.z = cmp((int)r7.w == (int)r11.w);
      if (r8.z == 0) r14.w = 0; else if (r8.z+0 < 32) {       r14.w = (uint)r12.w << (32-(r8.z + 0)); r14.w = (uint)r14.w >> (32-r8.z);      } else r14.w = (uint)r12.w >> 0;
      r12.w = r14.z ? r14.w : r12.w;
      r14.z = (int)r11.w + numLights;
      r24.xyzw = r23.xyzw;
      r15.xyz = r9.yzw;
      r14.w = r8.w;
      r16.w = r12.w;
      while (true) {
        if (r16.w == 0) break;
        r17.w = firstbitlow((uint)r16.w);
        r18.z = 1 << (int)r17.w;
        r18.w = (int)r16.w & (int)r18.z;
        if (r18.w != 0) {
          r16.w = (int)r16.w ^ (int)r18.z;
          r18.z = (int)r14.z + (int)r17.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r25.xyzw, r18.z, l(0), t11.xyzw
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        r25.z = samp0[]..swiz;
        r25.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r26.xy, r18.z, l(16), t11.xyxx
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
          r25.xyz = -v7.xyz + r25.xyz;
          r26.z = r25.w;
          r25.xyz = cmp(abs(r25.xyz) < r26.zxy);
          r18.z = r25.y ? r25.x : 0;
          r18.z = r25.z ? r18.z : 0;
          if (r18.z != 0) {
            r17.w = (int)r11.w + (int)r17.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r17.w, l(0), t15.wxyz
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r18.zw, r17.w, l(96), t15.xxxy
          r18.z = samp0[]..swiz;
          r18.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r17.w, l(116), t15.zwxy
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
            r27.xyz = v7.xyz + -r25.yzw;
            r19.w = (int)r26.w & 0x0000ffff;
            if (6 == 0) r20.w = 0; else if (6+25 < 32) {             r20.w = (uint)r26.w << (32-(6 + 25)); r20.w = (uint)r20.w >> (32-6);            } else r20.w = (uint)r26.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r19.w, l(0), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r19.w, l(16), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r19.w, l(32), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r19.w, l(48), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r19.w, l(64), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r19.w, l(80), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
            r25.w = dot(r28.xyz, r27.xyz);
            r25.w = saturate(r25.w + r28.w);
            r27.w = dot(r29.xyz, r27.xyz);
            r27.w = saturate(r27.w + r29.w);
            r25.w = r27.w * r25.w;
            r27.w = dot(r30.xyz, r27.xyz);
            r27.w = saturate(r27.w + r30.w);
            r25.w = r27.w * r25.w;
            r27.w = dot(r31.xyz, r27.xyz);
            r27.w = saturate(r27.w + r31.w);
            r25.w = r27.w * r25.w;
            r27.w = dot(r32.xyz, r27.xyz);
            r27.w = saturate(r27.w + r32.w);
            r25.w = r27.w * r25.w;
            r27.w = dot(r33.xyz, r27.xyz);
            r27.w = saturate(r27.w + r33.w);
            r16.x = r27.w * r25.w;
            r25.w = (int)r18.z & 1;
            r28.xy = r25.ww ? r16.xy : r16.zx;
            r16.x = r18.z;
            r29.xy = r28.xy;
            r25.w = 1;
            while (true) {
              r27.w = cmp((int)r25.w >= (int)r20.w);
              if (r27.w != 0) break;
              r27.w = (int)r19.w + (int)r25.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r27.w, l(0), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r27.w, l(16), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r27.w, l(32), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r27.w, l(48), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r27.w, l(64), t16.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r27.w, l(80), t16.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
              r27.w = dot(r30.xyz, r27.xyz);
              r27.w = saturate(r27.w + r30.w);
              r27.w = r29.x * r27.w;
              r28.z = dot(r31.xyz, r27.xyz);
              r28.z = saturate(r28.z + r31.w);
              r27.w = r28.z * r27.w;
              r28.z = dot(r32.xyz, r27.xyz);
              r28.z = saturate(r28.z + r32.w);
              r27.w = r28.z * r27.w;
              r28.z = dot(r33.xyz, r27.xyz);
              r28.z = saturate(r28.z + r33.w);
              r27.w = r28.z * r27.w;
              r28.z = dot(r34.xyz, r27.xyz);
              r28.z = saturate(r28.z + r34.w);
              r27.w = r28.z * r27.w;
              r28.z = dot(r35.xyz, r27.xyz);
              r28.z = saturate(r28.z + r35.w);
              r29.x = r28.z * r27.w;
              r28.w = (uint)r16.x >> 2;
              if (1 == 0) r29.z = 0; else if (1+2 < 32) {               r29.z = (uint)r16.x << (32-(1 + 2)); r29.z = (uint)r29.z >> (32-1);              } else r29.z = (uint)r16.x >> 2;
              r29.w = (int)r28.w & 2;
              r30.x = max(r29.y, r29.x);
              r27.w = -r27.w * r28.z + 1;
              r27.w = r29.y * r27.w;
              r18.y = r29.w ? r27.w : r30.x;
              r29.xy = r29.zz ? r29.xy : r18.xy;
              r25.w = (int)r25.w + 1;
              r16.x = r28.w;
            }
            r16.x = saturate(r29.y + -r14.w);
            r18.y = r16.x * r18.w;
            r18.z = cmp(0 < r18.y);
            if (r18.z != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r17.w, l(16), t15.xyzw
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r17.w, l(32), t15.yxwz
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r17.w, l(48), t15.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r17.w, l(64), t15.zwxy
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r17.w, l(80), t15.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r17.w, l(132), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r17.w, l(148), t15.zwxy
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r17.w, l(164), t15.zwxy
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r17.w, l(180), t15.zwxy
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r17.w, l(196), t15.xyzw
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xy, r17.w, l(212), t15.xyxx
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
              r24.w = r16.x * r18.w + r24.w;
              r16.x = r18.y * r26.z;
              r26.z = r34.z;
              r17.w = dot(r13.xyz, r26.xyz);
              r18.y = dot(r27.xyz, r26.xyz);
              r18.y = r18.y + -r34.w;
              r18.z = cmp(r18.y >= 0);
              r18.y = max(abs(r18.y), r5.w);
              r18.y = r18.z ? r18.y : -r18.y;
              r17.w = max(1.00000001e-07, -r17.w);
              r17.w = r18.y / r17.w;
              r17.w = min(131072, abs(r17.w));
              r34.z = r35.z;
              r18.y = dot(r13.xyz, r34.xyz);
              r18.z = dot(r27.xyz, r34.xyz);
              r18.z = r18.z + -r35.w;
              r18.w = cmp(r18.z >= 0);
              r18.z = max(abs(r18.z), r5.w);
              r18.z = r18.w ? r18.z : -r18.z;
              r18.y = max(1.00000001e-07, -r18.y);
              r18.y = r18.z / r18.y;
              r17.w = min(abs(r18.y), r17.w);
              r35.z = r36.z;
              r18.y = dot(r13.xyz, r35.xyz);
              r18.z = dot(r27.xyz, r35.xyz);
              r18.z = r18.z + -r36.w;
              r18.w = cmp(r18.z >= 0);
              r18.z = max(abs(r18.z), r5.w);
              r18.z = r18.w ? r18.z : -r18.z;
              r18.y = max(1.00000001e-07, -r18.y);
              r18.y = r18.z / r18.y;
              r17.w = min(abs(r18.y), r17.w);
              r36.z = r37.z;
              r18.y = dot(r13.xyz, r36.xyz);
              r18.z = dot(r27.xyz, r36.xyz);
              r18.z = r18.z + -r37.w;
              r18.w = cmp(r18.z >= 0);
              r18.z = max(abs(r18.z), r5.w);
              r18.z = r18.w ? r18.z : -r18.z;
              r18.y = max(1.00000001e-07, -r18.y);
              r18.y = r18.z / r18.y;
              r17.w = min(abs(r18.y), r17.w);
              r37.z = r38.x;
              r18.y = dot(r13.xyz, r37.xyz);
              r18.z = dot(r27.xyz, r37.xyz);
              r18.z = r18.z + -r38.y;
              r18.w = cmp(r18.z >= 0);
              r18.z = max(abs(r18.z), r5.w);
              r18.z = r18.w ? r18.z : -r18.z;
              r18.y = max(1.00000001e-07, -r18.y);
              r18.y = r18.z / r18.y;
              r17.w = min(abs(r18.y), r17.w);
              r39.zw = r38.zw;
              r18.y = dot(r13.zxy, r39.xzw);
              r18.z = dot(r27.zxy, r39.xzw);
              r18.z = r18.z + -r39.y;
              r18.w = cmp(r18.z >= 0);
              r18.z = max(abs(r18.z), r5.w);
              r18.z = r18.w ? r18.z : -r18.z;
              r18.y = max(1.00000001e-07, -r18.y);
              r18.y = r18.z / r18.y;
              r17.w = min(abs(r18.y), r17.w);
              r26.x = r31.w;
              r26.yz = r32.zw;
              r18.yzw = r26.xyz + r27.xyz;
              r18.yzw = r13.xyz * r17.www + r18.yzw;
              r19.w = dot(r18.yzw, r18.yzw);
              r19.w = sqrt(r19.w);
              r17.w = r17.w / r19.w;
              r17.w = r17.w + r17.w;
              r17.w = sqrt(r17.w);
              r17.w = r5.y * 5 + r17.w;
              r17.w = -0.844799995 + r17.w;
              r25.y = r28.z;
              r25.z = r30.x;
              r34.x = dot(r18.yzw, r25.xyz);
              r26.xy = r28.xw;
              r26.z = r30.w;
              r34.y = dot(r18.yzw, r26.xyz);
              r30.x = r28.y;
              r34.z = dot(r18.yzw, r30.xyz);
              if (9 == 0) r18.y = 0; else if (9+16 < 32) {               r18.y = (uint)r26.w << (32-(9 + 16)); r18.y = (uint)r18.y >> (32-9);              } else r18.y = (uint)r26.w >> 16;
              r34.w = (uint)r18.y;
              r18.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, r17.w).xyz;
              r28.x = dot(r27.xyz, r25.xyz);
              r28.y = dot(r27.xyz, r26.xyz);
              r28.z = dot(r27.xyz, r30.xyz);
              r27.xyz = saturate(r28.xyz * r31.xyz + float3(0.5,0.5,0.5));
              r32.z = r33.x;
              r27.xyz = r27.xyz * r32.xyz + r33.yzw;
              r34.x = dot(r3.xyz, r25.xyz);
              r34.y = dot(r3.xyz, r26.xyz);
              r34.z = dot(r3.xyz, r30.xyz);
              r25.xyz = cmp(float3(0,0,0) < r34.xyz);
              r17.z = r25.x ? 0 : 0.5;
              r26.xyz = r27.xyz + r17.xyz;
              r26.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
              r28.xyz = r34.xyz * r34.xyz;
              r28.xyz = r28.xyz * r16.xxx;
              r19.z = r25.y ? 0 : 0.5;
              r25.xyw = r27.xyz + r19.xyz;
              r25.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r25.xyw, 0).xyz;
              r25.xyw = r25.xyw * r28.yyy;
              r25.xyw = r26.xyz * r28.xxx + r25.xyw;
              r20.z = r25.z ? 0 : 0.5;
              r26.xyz = r27.xyz + r20.xyz;
              r26.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
              r25.xyz = r26.xyz * r28.zzz + r25.xyw;
              r26.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, 6).xyz;
              r27.xyz = r26.xyz * r25.xyz;
              r17.z = dot(r27.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r15.xyz = r25.xyz * r26.xyz + r15.xyz;
              r17.w = r17.z * r6.z;
              r18.yzw = r18.yzw * r16.xxx;
              r16.x = dot(r18.yzw, float3(0.212599993,0.715200007,0.0722000003));
              r16.x = r6.z * r17.z + r16.x;
              r16.x = r17.w / r16.x;
              r24.xyz = r18.yzw * r16.xxx + r24.xyz;
            }
          }
        }
      }
      r23.xyzw = r24.xyzw;
      r9.yzw = r15.xyz;
      r11.w = (int)r11.w + 32;
    }
    r22.xyzw = r23.zxyw;
    r21.xyz = r9.yzw;
    r22.xyzw = r22.yzxw;
  } else {
    r22.x = r21.w;
  }
  r5.y = max(1, r22.w);
  r5.y = rcp(r5.y);
  r22.w = saturate(r22.w);
  r9.yzw = r21.xyz * r5.yyy;
  r14.xyz = r22.xyz * r5.yyy;
  r5.w = cmp(r22.w < 0.99000001);
  if (r5.w != 0) {
    r5.w = 1 + -r22.w;
    r6.z = sunConstants.globalProbeExposure * r5.w;
    r15.xyz = -globalProbeConstants.data[0].xyz + v7.xyz;
    r16.x = globalProbeConstants.data[0].w * r15.x;
    r16.yz = globalProbeConstants.data[1].xy * r15.yz;
    r15.xyz = saturate(float3(0.5,0.5,0.5) + r16.xyz);
    r16.xy = globalProbeConstants.data[1].zw * r15.xy;
    r16.z = globalProbeConstants.data[2].x * r15.z;
    r15.xyz = globalProbeConstants.data[2].yzw + r16.xyz;
    r16.xyz = cmp(float3(0,0,0) < r3.xyz);
    r16.xyz = r16.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r16.w = 0;
    r17.xyz = r16.wwx + r15.xyz;
    r17.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r17.xyz, 0).xyz;
    r18.xyz = r3.xyz * r3.xyz;
    r18.xyz = r18.xyz * r6.zzz;
    r19.xyz = r16.wwy + r15.xyz;
    r19.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r19.xyz, 0).xyz;
    r19.xyz = r19.xyz * r18.yyy;
    r17.xyz = r17.xyz * r18.xxx + r19.xyz;
    r15.xyz = r16.wwz + r15.xyz;
    r15.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r15.xyz, 0).xyz;
    r15.xyz = r15.xyz * r18.zzz + r17.xyz;
    r3.w = 0;
    r16.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r3.xyzw, 6).xyz;
    r15.xyz = r16.xyz * r15.xyz;
    r3.w = dot(r15.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r9.yzw = r21.xyz * r5.yyy + r15.xyz;
    r13.w = 0;
    r15.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r13.xyzw, r5.z).xyz;
    r5.y = sunConstants.globalProbeExposure * r5.w + -r3.w;
    r3.w = r8.y * r5.y + r3.w;
    r14.xyz = r15.xyz * r3.www + r14.xyz;
  }
  r3.w = r8.x + r0.w;
  r3.w = log2(abs(r3.w));
  r3.w = r3.w * r2.w;
  r3.w = exp2(r3.w);
  r3.w = r3.w + r0.w;
  r3.w = saturate(-1 + r3.w);
  r15.xyz = r9.yzw * r0.www;
  r5.yz = r8.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r5.yz = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r5.yz, 0).xy;
  r8.yzw = r14.xyz * r3.www;
  r14.xyz = r8.zwy * r5.yyy;
  r5.yzw = r8.yzw * r5.zzz;
  r0.w = sqrt(r2.w);
  r0.w = r0.w * 0.5 + 0.5;
  r0.w = r0.w * r0.w;
  r3.w = 0.5 * r0.w;
  r0.w = -r0.w * 0.5 + 1;
  r6.z = r8.x * r0.w + r3.w;
  r0.w = r6.z * r0.w;
  r3.w = r6.z * r3.w;
  r6.z = dot(r3.xyz, sunConstants.wldDir.xyz);
  r6.w = saturate(r6.z);
  r7.w = cmp(0 >= r6.w);
  if (r7.w != 0) {
    r8.y = 0;
  }
  if (r7.w == 0) {
    r9.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v7.yyy;
    r9.yzw = v7.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r9.yzw;
    r9.yzw = v7.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r9.yzw;
    r9.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r9.yzw;
    r7.w = -sunConstants.splitDepthOffset + r9.w;
    r7.w = -r7.w * 6.10351563e-05 + 1;
    r8.z = saturate(r7.w);
    r8.z = cmp(r7.w == r8.z);
    if (r8.z != 0) {
      r8.zw = float2(0,0);
      while (true) {
        r11.w = cmp(r8.z >= 3);
        if (r11.w != 0) break;
        r11.w = (uint)r8.z;
        r16.xy = -sunConstants.splitPinTransform[r11.w].xy + r9.yz;
        r12.w = max(abs(r16.x), abs(r16.y));
        r8.w = sunConstants.splitPinTransform[r11.w].z * r12.w;
        r11.w = cmp(r8.w < 1);
        if (r11.w != 0) {
          break;
        }
        r8.z = 1 + r8.z;
        r8.w = 0;
      }
    } else {
      r8.zw = float2(3,0);
    }
    r11.w = cmp(r8.z >= 3);
    if (r11.w != 0) {
      r16.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r17.xz = rcp(r16.xx);
      r17.y = -r17.z;
      r16.xyz = r9.yzy * r17.xyz + r16.yzy;
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
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.w, r12.w, l(0), t23.xxxx
    r13.w = samp0[]..swiz;
      r16.w = (int)r13.w & 0x40000000;
      r17.x = (uint)r13.w << 2;
      if (r16.w == 0) {
        r16.w = (int)r13.w & 0x01ffffff;
        r18.x = (int)r12.w + (int)r16.w;
        r12.w = (uint)r13.w >> 25;
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
        r13.w = (int)r18.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.w, r13.w, l(0), t23.xxxx
      r13.w = samp0[]..swiz;
        r13.w = r17.z ? r18.z : r13.w;
        r16.w = (uint)r13.w >> 13;
        r13.w = r17.y ? r16.w : r13.w;
        r13.w = (int)r13.w & 8191;
        r19.x = (int)r13.w + (int)r18.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
      r19.z = samp0[]..swiz;
        r18.y = 0;
        r19.y = 1;
        r17.yzw = r12.www ? r18.xyz : r19.xyz;
        r19.yz = r12.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r20.xy = (uint2)r16.zy >> (uint2)r19.yy;
        r20.xy = (int2)r20.xy & int2(1,1);
        r13.w = (int)r17.w & 0xc0000000;
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
        r17.yzw = r13.www ? r17.yzw : r19.xzw;
        r17.yzw = r12.www ? r18.xyz : r17.yzw;
        r12.w = (int)r17.w & 0xc0000000;
        if (r12.w == 0) {
          r12.w = (int)-r17.z + 6;
          r18.xy = (uint2)r16.zy >> (uint2)r12.ww;
          r12.w = (int)r17.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.w = (((uint)r18.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.w = (((uint)r18.x << 0) & bitmask.w) | ((uint)r13.w & ~bitmask.w);
          r13.w = (int)r13.w * 10;
          r12.w = (uint)r12.w >> (uint)r13.w;
          r12.w = (int)r12.w & 1023;
          r18.x = (int)r12.w + (int)r17.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.x, l(0), t23.xxxx
        r18.w = samp0[]..swiz;
          r18.yz = (int2)r17.zz + int2(1,2);
          r12.w = (int)-r18.y + 6;
          r19.xy = (uint2)r16.zy >> (uint2)r12.ww;
          r12.w = (int)r18.w & 0xc0000000;
          r13.w = (int)r18.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r16.w = (((uint)r19.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r16.w = (((uint)r19.x << 0) & bitmask.w) | ((uint)r16.w & ~bitmask.w);
          r16.w = (int)r16.w * 10;
          r13.w = (uint)r13.w >> (uint)r16.w;
          r13.w = (int)r13.w & 1023;
          r19.x = (int)r13.w + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
        r19.z = samp0[]..swiz;
          r19.y = r18.z;
          r19.xyz = r12.www ? r18.xyw : r19.xyz;
          r13.w = (int)-r19.y + 6;
          r18.yz = (uint2)r16.zy >> (uint2)r13.ww;
          r13.w = (int)r19.z & 0xc0000000;
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
          r18.yz = r13.ww ? r19.xz : r20.xy;
          r17.yw = r12.ww ? r18.xw : r18.yz;
        }
        r12.w = (int)r17.w & 0xc0000000;
        if (r12.w == 0) {
          if (14 == 0) r13.w = 0; else if (14+15 < 32) {           r13.w = (uint)r17.w << (32-(14 + 15)); r13.w = (uint)r13.w >> (32-14);          } else r13.w = (uint)r17.w >> 15;
          r13.w = (uint)r13.w;
          r13.w = sunConstants.sstLightingConstants.constants.spanInInches * r13.w;
          r13.w = 6.10388815e-05 * r13.w;
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
          r16.x = r16.x * 0.00392156886 + r13.w;
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
          r13.w = r16.y * 1.52590219e-05 + r13.w;
          r17.x = r18.y ? r16.x : r13.w;
        } else {
          r13.w = (int)r17.w & 0x80000000;
          r16.x = (int)r17.y + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.x, r16.x, l(0), t23.xxxx
        r16.x = samp0[]..swiz;
          r13.w = r13.w ? r16.x : 0;
          r16.x = (uint)r17.w << 2;
          r16.y = (uint)r13.w >> 16;
          r16.y = f16tof32(r16.y);
          r13.w = (int)r13.w & 0x0000ffff;
          r13.w = f16tof32(r13.w);
          r16.x = r9.y * r16.y + r16.x;
          r13.w = r9.z * r13.w + r16.x;
          r17.x = r12.w ? r13.w : r17.x;
        }
      }
      r9.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r9.w;
      r9.w = cmp(r17.x < r9.w);
      r8.y = r9.w ? 0 : 1;
    }
    if (r11.w == 0) {
      if (enableDitheredShadow == 0) {
        r9.w = (uint)r8.z;
        r16.xy = -sunConstants.splitPinTransform[r9.w].xy + r9.yz;
        r16.xy = sunConstants.splitPinTransform[r9.w].zz * r16.xy;
        r16.xy = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r9.w = (int16)sunConstants.splitArrayOffset;
        r16.z = r9.w + r8.z;
        r9.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r7.w).x;
        r11.w = gTransShadowmapArray.SampleLevel(samp0_s, r16.xyz, 0).x;
        r9.w = r11.w + r9.w;
        r9.w = saturate(-1 + r9.w);
        r11.w = r9.w * r9.w;
        r8.y = r11.w * r9.w;
      }
      if (enableDitheredShadow != 0) {
        r16.x = -r6.x;
        r9.w = (uint)r8.z;
        r8.z = 1 + r8.z;
        r8.z = min(2, r8.z);
        r8.w = 1 + -r8.w;
        r8.w = 28 * r8.w;
        r8.zw = (uint2)r8.zw;
        r17.xy = -sunConstants.splitPinTransform[r9.w].xy + r9.yz;
        r17.xy = sunConstants.splitPinTransform[r9.w].zz * r17.xy;
        r17.xy = r17.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r9.yz = -sunConstants.splitPinTransform[r8.z].xy + r9.yz;
        r9.yz = sunConstants.splitPinTransform[r8.z].zz * r9.yz;
        r9.yz = r9.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r16.y = r7.x;
        r16.z = r6.x;
        r11.w = 0;
        r12.w = 0;
        while (true) {
          r13.w = cmp((uint)r12.w >= 8);
          if (r13.w != 0) break;
          r13.w = cmp((uint)r8.w < (uint)r12.w);
          r17.zw = r13.ww ? r9.yz : r17.xy;
          r16.w = r13.w ? sunConstants.splitPinTransform[r8.z].w : sunConstants.splitPinTransform[r9.w].w;
          r13.w = r13.w ? r8.z : r9.w;
          r18.x = dot(icb[r12.w+0].yx, r16.xy);
          r18.y = dot(icb[r12.w+0].yx, r16.yz);
          r18.xy = r18.xy * r16.ww + r17.zw;
          r13.w = (int)r13.w + (int16)sunConstants.splitArrayOffset;
          r18.z = (uint)r13.w;
          r13.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r7.w).x;
          r16.w = gTransShadowmapArray.SampleLevel(samp0_s, r18.xyz, 0).x;
          r13.w = r16.w + r13.w;
          r13.w = saturate(-1 + r13.w);
          r11.w = r13.w * 0.125 + r11.w;
          r12.w = (int)r12.w + 1;
        }
        r7.w = r11.w * r11.w;
        r8.y = r7.w * r11.w;
      }
    }
  }
  r7.w = cmp(0 < r6.w);
  if (r7.w != 0) {
    r7.w = cmp(0 < r8.y);
    if (r7.w != 0) {
      r7.w = sunConstants.specScale * r1.w;
      r7.w = r7.w * r6.w;
      if (sunConstants.sunCookieIndex != 0) {
        r10.w = 1;
        r8.z = dot(sunConstants.sunCookieTransform[0].xyzw, r10.xyzw);
        r8.w = dot(sunConstants.sunCookieTransform[1].xyzw, r10.xyzw);
        r10.xy = frac(r8.zw);
        r8.z = -1 + (int14)sunConstants.sunCookieIndex;
        r10.z = (uint)r8.z;
        r9.yzw = gCookieArray.SampleLevel(samplerLinear_s, r10.xyz, 0).xyz;
        r9.yzw = float3(-1,-1,-1) + r9.yzw;
        r9.yzw = sunConstants.sunCookieIntensity * r9.yzw + float3(1,1,1);
        r9.yzw = sunConstants.color.xyz * r9.yzw;
      } else {
        r9.yzw = sunConstants.color.xyz;
      }
      r8.z = viewmodelSunShadowRaw >> 16;
      r8.w = cmp(0 < (uint)r8.z);
      r8.w = r0.x ? r8.w : 0;
      if (r8.w != 0) {
        r8.z = (int)r8.z + numLights;
        r8.z = (int)r8.z + -1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.w, r8.z, l(52), t12.xxxx
      r8.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.xyzw, r8.z, l(68), t12.xyzw
      r10.x = samp0[]..swiz;
      r10.y = samp0[]..swiz;
      r10.z = samp0[]..swiz;
      r10.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r8.z, l(84), t12.xyzw
      r16.x = samp0[]..swiz;
      r16.y = samp0[]..swiz;
      r16.z = samp0[]..swiz;
      r16.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r8.z, l(132), t12.xyzw
      r17.x = samp0[]..swiz;
      r17.y = samp0[]..swiz;
      r17.z = samp0[]..swiz;
      r17.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r8.z, l(148), t12.xyzw
      r18.x = samp0[]..swiz;
      r18.y = samp0[]..swiz;
      r18.z = samp0[]..swiz;
      r18.w = samp0[]..swiz;
        r11.w = abs(r6.z) * -0.200000003 + 0.400000006;
        r19.xyz = r3.xyz * r11.www + v7.xyz;
        r19.w = 1;
        r10.x = dot(r10.xyzw, r19.xyzw);
        r10.y = dot(r16.xyzw, r19.xyzw);
        r10.xy = r10.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.xy = r10.xy + r18.zw;
        r10.xy = r10.xy * r18.xy;
        r10.zw = r8.ww / r17.xz;
        r16.xy = float2(1,1) + -r10.zw;
        r16.xy = cmp(r10.xy >= r16.xy);
        r10.zw = cmp(r10.zw >= r10.xy);
        r10.zw = (int2)r10.zw | (int2)r16.xy;
        r10.z = (int)r10.w | (int)r10.z;
        if (r10.z == 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.z, r8.z, l(28), t12.xxxx
        r10.z = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r8.z, l(100), t12.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xy, r8.z, l(164), t12.xyxx
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
          r8.z = dot(r16.xyzw, r19.xyzw);
          r10.xy = saturate(r10.xy);
          r16.xy = r10.xy * r17.xz + r17.yw;
          r8.z = r8.z + r18.x;
          r8.z = r8.z / r18.y;
          r8.z = max(6.10351563e-05, r8.z);
          r10.x = r10.z ? 0.000000 : 0;
          if (enableDitheredShadow != 0) {
            r17.x = -r6.x;
            r18.z = (uint)r10.x;
            r17.y = r7.x;
            r17.z = r6.x;
            r10.yz = float2(0,0);
            while (true) {
              r10.w = cmp((int)r10.z >= 8);
              if (r10.w != 0) break;
              r19.x = dot(icb[r10.z+0].yx, r17.xy);
              r19.y = dot(icb[r10.z+0].yx, r17.yz);
              r18.xy = r19.xy * r8.ww + r16.xy;
              r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r8.z).x;
              r10.y = r10.w * 0.125 + r10.y;
              r10.z = (int)r10.z + 1;
            }
          } else {
            r16.z = (uint)r10.x;
            r10.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r8.z).x;
          }
          r8.z = r10.y * r10.y;
          r8.z = r8.z * r10.y;
        } else {
          r8.z = 1;
        }
        r8.y = r8.y * r8.z;
      } else {
        r8.z = viewmodelSunShadowRaw & 0x0000ffff;
        r8.w = cmp(0 < (uint)r8.z);
        r10.x = ~(int)r0.x;
        r8.w = r8.w ? r10.x : 0;
        if (r8.w != 0) {
          r8.z = (int)r8.z + numLights;
          r8.z = (int)r8.z + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.w, r8.z, l(52), t12.xxxx
        r8.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.xyzw, r8.z, l(68), t12.xyzw
        r10.x = samp0[]..swiz;
        r10.y = samp0[]..swiz;
        r10.z = samp0[]..swiz;
        r10.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r8.z, l(84), t12.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r8.z, l(132), t12.xyzw
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r8.z, l(148), t12.xyzw
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
        r18.z = samp0[]..swiz;
        r18.w = samp0[]..swiz;
          r11.w = abs(r6.z) * -0.200000003 + 0.400000006;
          r19.xyz = r3.xyz * r11.www + v7.xyz;
          r19.w = 1;
          r10.x = dot(r10.xyzw, r19.xyzw);
          r10.y = dot(r16.xyzw, r19.xyzw);
          r10.xy = r10.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r10.xy = r10.xy + r18.zw;
          r10.xy = r10.xy * r18.xy;
          r10.zw = r8.ww / r17.xz;
          r16.xy = float2(1,1) + -r10.zw;
          r16.xy = cmp(r10.xy >= r16.xy);
          r10.zw = cmp(r10.zw >= r10.xy);
          r10.zw = (int2)r10.zw | (int2)r16.xy;
          r10.z = (int)r10.w | (int)r10.z;
          if (r10.z == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.z, r8.z, l(28), t12.xxxx
          r10.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r8.z, l(100), t12.xyzw
          r16.x = samp0[]..swiz;
          r16.y = samp0[]..swiz;
          r16.z = samp0[]..swiz;
          r16.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xy, r8.z, l(164), t12.xyxx
          r18.x = samp0[]..swiz;
          r18.y = samp0[]..swiz;
            r8.z = dot(r16.xyzw, r19.xyzw);
            r10.xy = saturate(r10.xy);
            r16.xy = r10.xy * r17.xz + r17.yw;
            r8.z = r8.z + r18.x;
            r8.z = r8.z / r18.y;
            r8.z = max(6.10351563e-05, r8.z);
            r10.x = r10.z ? 0.000000 : 0;
            if (enableDitheredShadow != 0) {
              r17.x = -r6.x;
              r18.z = (uint)r10.x;
              r17.y = r7.x;
              r17.z = r6.x;
              r10.yz = float2(0,0);
              while (true) {
                r10.w = cmp((int)r10.z >= 8);
                if (r10.w != 0) break;
                r19.x = dot(icb[r10.z+0].yx, r17.xy);
                r19.y = dot(icb[r10.z+0].yx, r17.yz);
                r18.xy = r19.xy * r8.ww + r16.xy;
                r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r8.z).x;
                r10.y = r10.w * 0.125 + r10.y;
                r10.z = (int)r10.z + 1;
              }
            } else {
              r16.z = (uint)r10.x;
              r10.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r8.z).x;
            }
            r8.z = r10.y * r10.y;
            r8.z = r8.z * r10.y;
          } else {
            r8.z = 1;
          }
          r8.y = r8.y * r8.z;
        }
      }
      r8.z = -r8.x * 0.5 + 1;
      r8.z = -r6.w * r8.z + 1;
      r8.z = r8.z * r8.z;
      r8.z = -r8.z * 0.620000005 + 0.620000005;
      r8.z = r8.z + -r6.w;
      r8.z = r2.w * r8.z + r6.w;
      r8.z = r8.z * r8.y;
      r6.z = cmp(0 < r6.z);
      r10.xyz = r8.zzz * r9.yzw + r15.xyz;
      r16.xyz = -v7.xyz * r0.yyy + sunConstants.wldDir.xyz;
      r0.y = dot(r16.xyz, r16.xyz);
      r0.y = rsqrt(r0.y);
      r16.xyz = r16.xyz * r0.yyy;
      r0.y = dot(r16.xyz, r12.xyz);
      r8.z = dot(r3.xyz, r16.xyz);
      r8.w = abs(r8.z) * r1.w + -abs(r8.z);
      r8.z = abs(r8.z) * r8.w + 1;
      r6.w = r6.w * r0.w + r3.w;
      r8.z = r8.z * r8.z;
      r6.w = r8.z * r6.w;
      r6.w = rcp(r6.w);
      r6.w = r6.w * r7.w;
      r6.w = r8.y * r6.w;
      r6.w = 0.25 * r6.w;
      r8.yzw = r6.www * r9.yzw + r5.yzw;
      r0.y = saturate(1 + -r0.y);
      r7.w = r0.y * r0.y;
      r7.w = r7.w * r7.w;
      r0.y = r7.w * r0.y;
      r0.y = r6.w * r0.y;
      r16.xyz = r0.yyy * r9.zwy + r14.xyz;
      r10.w = r16.z;
      r15.w = r14.z;
      r15.xyzw = r6.zzzz ? r10.xyzw : r15.xyzw;
      r16.zw = r8.yz;
      r14.zw = r5.yz;
      r10.xyzw = r6.zzzz ? r16.xyzw : r14.xyzw;
      r5.w = r6.z ? r8.w : r5.w;
      r14.z = r15.w;
      r14.xy = r10.xy;
      r5.yz = r10.zw;
    }
  }
  r10.x = -r6.x;
  r0.y = ~(int)r0.x;
  r6.z = -r8.x * 0.5 + 1;
  r8.xy = float2(0,0);
  r16.w = 0;
  r17.xyz = v7.xyz;
  r17.w = 1;
  r18.w = 1;
  r10.z = r6.x;
  r19.w = 1;
  r20.z = 1;
  r21.w = 1;
  r10.yw = r7.xx;
  r6.y = r10.w;
  r22.w = 1;
  r7.y = r10.x;
  r7.z = r6.x;
  r23.w = 1;
  r24.x = r7.x;
  r24.y = r10.x;
  r24.z = r6.x;
  r25.x = r7.x;
  r25.y = r10.x;
  r25.z = r6.x;
  r26.x = r7.x;
  r26.y = r10.x;
  r26.z = r6.x;
  r9.yzw = r15.xyz;
  r27.xyz = r14.zxy;
  r28.xyz = r5.yzw;
  r6.w = enableDitheredShadow;
  r7.w = 0;
  while (true) {
    r8.w = cmp((uint)r7.w >= numLights);
    if (r8.w != 0) break;
    r8.z = (uint)r7.w >> 5;
    r16.xyz = (int3)r8.xyz + (int3)r11.xyz;
    r8.z = visibleLights.Load(r16.xyzw).x;
    r16.xyz = r9.yzw;
    r29.xyz = r27.xyz;
    r30.xyz = r28.xyz;
    r8.w = r6.w;
    r11.w = r8.z;
    while (true) {
      if (r11.w == 0) break;
      r12.w = firstbitlow((uint)r11.w);
      r13.w = 1 << (int)r12.w;
      r14.w = (int)r11.w & (int)r13.w;
      if (r14.w != 0) {
        r11.w = (int)r11.w ^ (int)r13.w;
        r12.w = (int)r7.w + (int)r12.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r31.xyzw, r12.w, l(0), t11.xyzw
      r31.x = samp0[]..swiz;
      r31.y = samp0[]..swiz;
      r31.z = samp0[]..swiz;
      r31.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r32.xy, r12.w, l(16), t11.xyxx
      r32.x = samp0[]..swiz;
      r32.y = samp0[]..swiz;
        r31.xyz = -v7.xyz + r31.xyz;
        r32.z = r31.w;
        r31.xyz = cmp(abs(r31.xyz) < r32.zxy);
        r13.w = r31.y ? r31.x : 0;
        r13.w = r31.z ? r13.w : 0;
        if (r13.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r12.w, l(0), t12.wxyz
        r31.x = samp0[]..swiz;
        r31.y = samp0[]..swiz;
        r31.z = samp0[]..swiz;
        r31.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r12.w, l(16), t12.zxyw
        r32.x = samp0[]..swiz;
        r32.y = samp0[]..swiz;
        r32.z = samp0[]..swiz;
        r32.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r12.w, l(32), t12.xyzw
        r33.x = samp0[]..swiz;
        r33.y = samp0[]..swiz;
        r33.z = samp0[]..swiz;
        r33.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r12.w, l(48), t12.xyzw
        r34.x = samp0[]..swiz;
        r34.y = samp0[]..swiz;
        r34.z = samp0[]..swiz;
        r34.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r12.w, l(64), t12.yzwx
        r35.x = samp0[]..swiz;
        r35.y = samp0[]..swiz;
        r35.z = samp0[]..swiz;
        r35.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r12.w, l(80), t12.xyzw
        r36.x = samp0[]..swiz;
        r36.y = samp0[]..swiz;
        r36.z = samp0[]..swiz;
        r36.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r12.w, l(96), t12.yzwx
        r37.x = samp0[]..swiz;
        r37.y = samp0[]..swiz;
        r37.z = samp0[]..swiz;
        r37.w = samp0[]..swiz;
          if (3 == 0) r13.w = 0; else if (3+24 < 32) {           r13.w = (uint)r32.w << (32-(3 + 24)); r13.w = (uint)r13.w >> (32-3);          } else r13.w = (uint)r32.w >> 24;
          switch (r13.w) {
            case 4 :            r13.w = cmp(0 < r37.x);
            r38.xy = r36.zw;
            r38.z = r37.w;
            r39.xyz = -r38.xyz * float3(0.5,0.5,0.5) + r31.yzw;
            r40.xyz = -v7.xyz + r39.xyz;
            r14.w = dot(r38.xyz, r40.xyz);
            r15.w = saturate(-r14.w / r37.x);
            r41.xyz = r15.www * r38.xyz + r39.xyz;
            r41.xyz = r13.www ? r41.xyz : r31.yzw;
            r41.xyz = -v7.xyz + r41.xyz;
            r20.w = dot(r41.xyz, r41.xyz);
            r24.w = rsqrt(r20.w);
            r41.xyz = r41.xyz * r24.www;
            r24.w = dot(r3.xyz, r41.xyz);
            r25.w = saturate(r24.w);
            r26.w = cmp(0 < r25.w);
            if (r26.w != 0) {
              r26.w = sqrt(r20.w);
              r27.w = r34.x * r34.x;
              r20.w = r27.w / r20.w;
              r20.w = min(1, r20.w);
              r41.xy = saturate(r26.ww * r33.xz + r33.yw);
              r41.zw = r41.xy * r41.xy;
              r41.xy = r41.xy * float2(-2,-2) + float2(3,3);
              r41.xy = r41.zw * r41.xy;
              r20.w = r41.x * r20.w;
              r20.w = r20.w * r41.y;
              r26.w = cmp(0 < r20.w);
              if (r26.w != 0) {
                if (3 == 0) r26.w = 0; else if (3+27 < 32) {                 r26.w = (uint)r32.w << (32-(3 + 27)); r26.w = (uint)r26.w >> (32-3);                } else r26.w = (uint)r32.w >> 27;
                r26.w = cmp((int)r26.w != 1);
                if (r26.w != 0) {
                  r26.w = abs(r24.w) * -0.200000003 + 0.400000006;
                  r41.xyz = r3.xyz * r26.www + v7.xyz;
                  r41.xyz = r41.xyz + -r35.xyz;
                  r26.w = max(abs(r41.y), abs(r41.z));
                  r26.w = max(abs(r41.x), r26.w);
                  r26.w = r36.x / r26.w;
                  r26.w = r26.w + r36.y;
                  r27.w = dot(r41.xyz, r41.xyz);
                  r27.w = rsqrt(r27.w);
                  r26.w = max(6.10351563e-05, r26.w);
                  r28.w = (int)r32.w & 0x0000ffff;
                  r42.w = (uint)r28.w;
                  r28.w = 0;
                  r29.w = 0;
                  while (true) {
                    r30.w = cmp((int)r29.w >= 8);
                    if (r30.w != 0) break;
                    r43.y = dot(icb[r29.w+0].yx, r10.xy);
                    r43.z = dot(icb[r29.w+0].yx, r10.yz);
                    r43.yz = r43.yz * r34.yy;
                    r43.x = r43.y * r9.x;
                    r43.w = r43.y * r5.x;
                    r42.xyz = r41.xyz * r27.www + r43.xzw;
                    r30.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r42.xyzw, r26.w).x;
                    r28.w = r30.w * 0.125 + r28.w;
                    r29.w = (int)r29.w + 1;
                  }
                } else {
                  r28.w = 1;
                }
                r20.w = r28.w * r20.w;
                r26.w = cmp(0 < r20.w);
                if (r26.w != 0) {
                  r26.w = r32.x * r1.w;
                  r26.w = 0.25 * r26.w;
                  r27.w = dot(r38.xyz, r13.xyz);
                  r29.w = dot(r13.xyz, r40.xyz);
                  r30.w = -r27.w * r27.w + r37.x;
                  r14.w = r27.w * r29.w + -r14.w;
                  r14.w = saturate(r14.w / r30.w);
                  r27.w = r30.w / r37.x;
                  r27.w = 10 * r27.w;
                  r27.w = min(1, r27.w);
                  r14.w = r14.w + -r15.w;
                  r14.w = r27.w * r14.w + r15.w;
                  r38.xyz = r14.www * r38.xyz + r39.xyz;
                  r38.xyz = r13.www ? r38.xyz : r31.yzw;
                  r38.xyz = -v7.xyz + r38.xyz;
                  r13.w = dot(r38.xyz, r38.xyz);
                  r13.w = rsqrt(r13.w);
                  r39.xyz = r38.xyz * r13.www;
                  if (4 == 0) r14.w = 0; else if (4+16 < 32) {                   r14.w = (uint)r32.w << (32-(4 + 16)); r14.w = (uint)r14.w >> (32-4);                  } else r14.w = (uint)r32.w >> 16;
                  r15.w = cmp(0 < (uint)r14.w);
                  r15.w = r0.x ? r15.w : 0;
                  if (r15.w != 0) {
                    r14.w = (int)r14.w + numLights;
                    r14.w = (int)r14.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.w, r14.w, l(52), t12.xxxx
                  r15.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r14.w, l(100), t12.xyzw
                  r40.x = samp0[]..swiz;
                  r40.y = samp0[]..swiz;
                  r40.z = samp0[]..swiz;
                  r40.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r14.w, l(116), t12.xyzw
                  r41.x = samp0[]..swiz;
                  r41.y = samp0[]..swiz;
                  r41.z = samp0[]..swiz;
                  r41.w = samp0[]..swiz;
                    r27.w = abs(r24.w) * -0.200000003 + 0.400000006;
                    r18.xyz = r3.xyz * r27.www + v7.xyz;
                    r27.w = dot(r40.xyzw, r18.xyzw);
                    r29.w = dot(r41.xyzw, r18.xyzw);
                    r30.w = cmp(r29.w < r27.w);
                    if (r30.w == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r14.w, l(68), t12.xyzw
                    r40.x = samp0[]..swiz;
                    r40.y = samp0[]..swiz;
                    r40.z = samp0[]..swiz;
                    r40.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r14.w, l(84), t12.xyzw
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r14.w, l(132), t12.xyzw
                    r42.x = samp0[]..swiz;
                    r42.y = samp0[]..swiz;
                    r42.z = samp0[]..swiz;
                    r42.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r14.w, l(148), t12.xyzw
                    r43.x = samp0[]..swiz;
                    r43.y = samp0[]..swiz;
                    r43.z = samp0[]..swiz;
                    r43.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xy, r14.w, l(164), t12.xyxx
                    r44.x = samp0[]..swiz;
                    r44.y = samp0[]..swiz;
                      r40.x = dot(r40.xyzw, r18.xyzw);
                      r40.y = dot(r41.xyzw, r18.xyzw);
                      r18.xy = r40.xy / r29.ww;
                      r18.xy = r18.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r18.xy = r18.xy + r43.zw;
                      r18.xy = r18.xy * r43.xy;
                      r40.xy = r15.ww / r42.xz;
                      r40.zw = float2(1,1) + -r40.xy;
                      r40.zw = cmp(r18.xy >= r40.zw);
                      r40.xy = cmp(r40.xy >= r18.xy);
                      r40.xy = (int2)r40.xy | (int2)r40.zw;
                      r18.z = (int)r40.y | (int)r40.x;
                      r18.xy = saturate(r18.xy);
                      r40.xy = r18.xy * r42.xz + r42.yw;
                      r18.x = r44.y * r29.w;
                      r18.y = r44.x * r29.w + r27.w;
                      r18.x = r18.y / r18.x;
                    } else {
                      r18.z = -1;
                    }
                    r18.y = (int)r30.w | (int)r18.z;
                    if (r18.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.w, r14.w, l(28), t12.xxxx
                    r14.w = samp0[]..swiz;
                      r18.x = max(6.10351563e-05, r18.x);
                      r14.w = (int)r14.w & 0x0000ffff;
                      if (r8.w != 0) {
                        r41.z = (uint)r14.w;
                        r18.yz = float2(0,0);
                        while (true) {
                          r27.w = cmp((int)r18.z >= 8);
                          if (r27.w != 0) break;
                          r42.x = dot(icb[r18.z+0].yx, r10.xw);
                          r42.y = dot(icb[r18.z+0].xy, r6.xy);
                          r41.xy = r42.xy * r15.ww + r40.xy;
                          r27.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r41.xyz, r18.x).x;
                          r18.y = r27.w * 0.125 + r18.y;
                          r18.z = (int)r18.z + 1;
                        }
                      } else {
                        r40.z = (uint)r14.w;
                        r18.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r40.xyz, r18.x).x;
                      }
                      r14.w = r18.y * r18.y;
                      r14.w = r14.w * r18.y;
                    } else {
                      r14.w = 1;
                    }
                    r20.w = r20.w * r14.w;
                  } else {
                    if (4 == 0) r14.w = 0; else if (4+20 < 32) {                     r14.w = (uint)r32.w << (32-(4 + 20)); r14.w = (uint)r14.w >> (32-4);                    } else r14.w = (uint)r32.w >> 20;
                    r15.w = cmp(0 < (uint)r14.w);
                    r15.w = r15.w ? r0.y : 0;
                    if (r15.w != 0) {
                      r14.w = (int)r14.w + numLights;
                      r14.w = (int)r14.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.w, r14.w, l(52), t12.xxxx
                    r15.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r14.w, l(100), t12.xyzw
                    r40.x = samp0[]..swiz;
                    r40.y = samp0[]..swiz;
                    r40.z = samp0[]..swiz;
                    r40.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r14.w, l(116), t12.xyzw
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                      r18.x = abs(r24.w) * -0.200000003 + 0.400000006;
                      r19.xyz = r3.xyz * r18.xxx + v7.xyz;
                      r18.x = dot(r40.xyzw, r19.xyzw);
                      r18.z = dot(r41.xyzw, r19.xyzw);
                      r27.w = cmp(r18.z < r18.x);
                      if (r27.w == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r14.w, l(68), t12.xyzw
                      r40.x = samp0[]..swiz;
                      r40.y = samp0[]..swiz;
                      r40.z = samp0[]..swiz;
                      r40.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r14.w, l(84), t12.xyzw
                      r41.x = samp0[]..swiz;
                      r41.y = samp0[]..swiz;
                      r41.z = samp0[]..swiz;
                      r41.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r14.w, l(132), t12.xyzw
                      r42.x = samp0[]..swiz;
                      r42.y = samp0[]..swiz;
                      r42.z = samp0[]..swiz;
                      r42.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r14.w, l(148), t12.xyzw
                      r43.x = samp0[]..swiz;
                      r43.y = samp0[]..swiz;
                      r43.z = samp0[]..swiz;
                      r43.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xy, r14.w, l(164), t12.xyxx
                      r44.x = samp0[]..swiz;
                      r44.y = samp0[]..swiz;
                        r40.x = dot(r40.xyzw, r19.xyzw);
                        r40.y = dot(r41.xyzw, r19.xyzw);
                        r19.xy = r40.xy / r18.zz;
                        r19.xy = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                        r19.xy = r19.xy + r43.zw;
                        r19.xy = r19.xy * r43.xy;
                        r40.xy = r15.ww / r42.xz;
                        r40.zw = float2(1,1) + -r40.xy;
                        r40.zw = cmp(r19.xy >= r40.zw);
                        r40.xy = cmp(r40.xy >= r19.xy);
                        r40.xy = (int2)r40.xy | (int2)r40.zw;
                        r19.z = (int)r40.y | (int)r40.x;
                        r19.xy = saturate(r19.xy);
                        r40.xy = r19.xy * r42.xz + r42.yw;
                        r19.x = r44.y * r18.z;
                        r18.x = r44.x * r18.z + r18.x;
                        r18.x = r18.x / r19.x;
                      } else {
                        r19.z = -1;
                      }
                      r18.z = (int)r27.w | (int)r19.z;
                      if (r18.z == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.w, r14.w, l(28), t12.xxxx
                      r14.w = samp0[]..swiz;
                        r18.x = max(6.10351563e-05, r18.x);
                        r14.w = (int)r14.w & 0x0000ffff;
                        if (r8.w != 0) {
                          r19.z = (uint)r14.w;
                          r18.z = 0;
                          r27.w = 0;
                          while (true) {
                            r29.w = cmp((int)r27.w >= 8);
                            if (r29.w != 0) break;
                            r41.x = dot(icb[r27.w+0].xy, r7.xy);
                            r41.y = dot(icb[r27.w+0].yx, r7.xz);
                            r19.xy = r41.xy * r15.ww + r40.xy;
                            r19.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r18.x).x;
                            r18.z = r19.x * 0.125 + r18.z;
                            r27.w = (int)r27.w + 1;
                          }
                        } else {
                          r40.z = (uint)r14.w;
                          r18.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r40.xyz, r18.x).x;
                        }
                        r14.w = r18.z * r18.z;
                        r14.w = r14.w * r18.z;
                      } else {
                        r14.w = 1;
                      }
                      r20.w = r20.w * r14.w;
                    }
                  }
                  r14.w = -r25.w * r6.z + 1;
                  r14.w = r14.w * r14.w;
                  r14.w = -r14.w * 0.620000005 + 0.620000005;
                  r14.w = r14.w + -r25.w;
                  r14.w = r2.w * r14.w + r25.w;
                  r14.w = r14.w * r20.w;
                  r32.x = r31.x;
                  r15.w = cmp(0 < r24.w);
                  r19.xyz = r14.www * r32.xyz + r16.xyz;
                  r14.w = saturate(dot(r3.xyz, r39.xyz));
                  r38.xyz = r38.xyz * r13.www + r12.xyz;
                  r13.w = dot(r38.xyz, r38.xyz);
                  r13.w = rsqrt(r13.w);
                  r38.xyz = r38.xyz * r13.www;
                  r13.w = dot(r38.xyz, r12.xyz);
                  r18.x = dot(r3.xyz, r38.xyz);
                  r24.w = abs(r18.x) * r1.w + -abs(r18.x);
                  r18.x = abs(r18.x) * r24.w + 1;
                  r24.w = r14.w * r0.w + r3.w;
                  r18.x = r18.x * r18.x;
                  r18.x = r18.x * r24.w;
                  r18.x = rcp(r18.x);
                  r14.w = r14.w * r26.w;
                  r14.w = r18.x * r14.w;
                  r14.w = r14.w * r20.w;
                  r38.xyz = r14.www * r32.xyz + r30.xyz;
                  r13.w = saturate(1 + -r13.w);
                  r18.x = r13.w * r13.w;
                  r18.x = r18.x * r18.x;
                  r13.w = r18.x * r13.w;
                  r13.w = r14.w * r13.w;
                  r39.xyz = r13.www * r32.xyz + r29.xyz;
                  r16.xyz = r15.www ? r19.xyz : r16.xyz;
                  r29.xyz = r15.www ? r39.xyz : r29.xyz;
                  r30.xyz = r15.www ? r38.xyz : r30.xyz;
                }
              }
            }
            break;
            case 2 :            r19.xy = r34.zw;
            r19.z = r35.w;
            r19.xyz = -v7.xyz + r19.xyz;
            r13.w = dot(r19.xyz, r19.xyz);
            r13.w = rsqrt(r13.w);
            r38.xyz = r19.xyz * r13.www;
            r14.w = dot(r3.xyz, r38.xyz);
            r15.w = saturate(r14.w);
            r18.x = cmp(0 < r15.w);
            if (r18.x != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r12.w, l(112), t12.yzwx
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r12.w, l(128), t12.zxyw
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
              r40.xyz = r38.xyz;
              r40.w = r39.y;
              r18.x = dot(r40.xyzw, r17.xyzw);
              r20.w = cmp(r18.x < 1);
              if (r20.w != 0) {
                r41.xyz = float3(1,1,1);
                r20.w = 0;
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r12.w, l(172), t12.yzwx
              r42.x = samp0[]..swiz;
              r42.y = samp0[]..swiz;
              r42.z = samp0[]..swiz;
              r42.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r12.w, l(188), t12.wxyz
              r43.x = samp0[]..swiz;
              r43.y = samp0[]..swiz;
              r43.z = samp0[]..swiz;
              r43.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r12.w, l(204), t12.xyzw
              r44.x = samp0[]..swiz;
              r44.y = samp0[]..swiz;
              r44.z = samp0[]..swiz;
              r44.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.w, r12.w, l(236), t12.xxxx
              r24.w = samp0[]..swiz;
                r45.xyz = -v7.xyz + r31.yzw;
                r25.w = r34.x * r34.x;
                r26.w = dot(r45.xyz, r45.xyz);
                r25.w = r25.w / r26.w;
                r25.w = min(1, r25.w);
                r33.xy = saturate(r18.xx * r33.xz + r33.yw);
                r33.zw = r33.xy * r33.xy;
                r33.xy = r33.xy * float2(-2,-2) + float2(3,3);
                r33.xy = r33.zw * r33.xy;
                r25.w = r33.x * r25.w;
                r25.w = r25.w * r33.y;
                r35.w = r36.x;
                r33.x = dot(r35.xyzw, r17.xyzw);
                r45.xyz = r36.yzw;
                r45.w = r37.w;
                r33.y = dot(r45.xyzw, r17.xyzw);
                r20.xy = r33.xy / r18.xx;
                r18.x = cmp(r42.w < 0.00048828125);
                if (r18.x != 0) {
                  r43.y = r44.x;
                  r33.xy = saturate(abs(r20.xy) * r43.zw + r43.xy);
                  r33.zw = r33.xy * r33.xy;
                  r33.xy = r33.xy * float2(-2,-2) + float2(3,3);
                  r33.xy = r33.zw * r33.xy;
                  r18.x = r33.x * r33.y;
                } else {
                  r42.w = r43.y;
                  r33.xyzw = saturate(r42.xyzw * abs(r20.yyxx));
                  r33.xyzw = log2(r33.xyzw);
                  r33.xyzw = r43.xxxx * r33.xyzw;
                  r33.xyzw = exp2(r33.xyzw);
                  r33.xy = r33.xy + r33.zw;
                  r33.xy = log2(r33.xy);
                  r33.xy = r44.xx * r33.xy;
                  r33.xy = exp2(r33.xy);
                  r26.w = r43.z * r33.x;
                  r27.w = r43.w * r33.y + -1;
                  r26.w = r43.w * r33.y + -r26.w;
                  r26.w = saturate(r27.w / r26.w);
                  r27.w = r26.w * r26.w;
                  r26.w = r26.w * -2 + 3;
                  r18.x = r27.w * r26.w;
                }
                r20.w = r25.w * r18.x;
                r18.x = (int)r24.w & 255;
                if (r18.x != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyz, r12.w, l(220), t12.xyzx
                r33.x = samp0[]..swiz;
                r33.y = samp0[]..swiz;
                r33.z = samp0[]..swiz;
                  r24.w = dot(r44.yzw, r20.xyz);
                  r20.x = dot(r33.xyz, r20.xyz);
                  r33.x = frac(r24.w);
                  r33.y = frac(r20.x);
                  r18.x = (int)r18.x + -1;
                  r33.z = (uint)r18.x;
                  r41.xyz = gCookieArray.SampleLevel(samplerLinear_s, r33.xyz, 0).xyz;
                } else {
                  r41.xyz = float3(1,1,1);
                }
              }
              r31.yz = r32.yz;
              r31.xyz = r31.xyz * r41.xyz;
              r18.x = cmp(0 < r20.w);
              if (r18.x != 0) {
                if (3 == 0) r18.x = 0; else if (3+27 < 32) {                 r18.x = (uint)r32.w << (32-(3 + 27)); r18.x = (uint)r18.x >> (32-3);                } else r18.x = (uint)r32.w >> 27;
                r18.x = cmp((int)r18.x != 1);
                if (r18.x != 0) {
                  r18.x = abs(r14.w) * -0.200000003 + 0.400000006;
                  r21.xyz = r3.xyz * r18.xxx + v7.xyz;
                  r38.xyz = r37.xyz;
                  r18.x = dot(r38.xyzw, r21.xyzw);
                  r20.x = dot(r40.xyzw, r21.xyzw);
                  r20.y = cmp(r20.x >= r18.x);
                  if (r20.y != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.y, r12.w, l(144), t12.xxxx
                  r39.y = samp0[]..swiz;
                    r35.w = r36.x;
                    r33.x = dot(r35.xyzw, r21.xyzw);
                    r37.xyz = r36.yzw;
                    r33.y = dot(r37.xyzw, r21.xyzw);
                    r21.xy = r33.xy / r20.xx;
                    r21.xy = saturate(r21.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                    r21.xy = r21.xy * r39.zw + r39.xy;
                    r12.w = r18.x / r20.x;
                    r12.w = max(6.10351563e-05, r12.w);
                    r18.x = (int)r32.w & 0x0000ffff;
                    if (r8.w != 0) {
                      r33.z = (uint)r18.x;
                      r20.xy = float2(0,0);
                      while (true) {
                        r24.w = cmp((int)r20.y >= 8);
                        if (r24.w != 0) break;
                        r35.x = dot(icb[r20.y+0].xy, r24.xy);
                        r35.y = dot(icb[r20.y+0].yx, r24.xz);
                        r33.xy = r35.xy * r34.yy + r21.xy;
                        r24.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r33.xyz, r12.w).x;
                        r20.x = r24.w * 0.125 + r20.x;
                        r20.y = (int)r20.y + 1;
                      }
                    } else {
                      r21.z = (uint)r18.x;
                      r20.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r12.w).x;
                    }
                    r12.w = r20.x * r20.x;
                    r12.w = r12.w * r20.x;
                  } else {
                    r12.w = 1;
                  }
                } else {
                  r12.w = 1;
                }
                r12.w = r20.w * r12.w;
                r18.x = cmp(0 < r12.w);
                if (r18.x != 0) {
                  r18.x = r32.x * r1.w;
                  r18.x = r18.x * r15.w;
                  if (4 == 0) r20.y = 0; else if (4+16 < 32) {                   r20.y = (uint)r32.w << (32-(4 + 16)); r20.y = (uint)r20.y >> (32-4);                  } else r20.y = (uint)r32.w >> 16;
                  r20.w = cmp(0 < (uint)r20.y);
                  r20.w = r0.x ? r20.w : 0;
                  if (r20.w != 0) {
                    r20.y = (int)r20.y + numLights;
                    r20.y = (int)r20.y + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.w, r20.y, l(52), t12.xxxx
                  r20.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r20.y, l(68), t12.xyzw
                  r33.x = samp0[]..swiz;
                  r33.y = samp0[]..swiz;
                  r33.z = samp0[]..swiz;
                  r33.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r20.y, l(84), t12.xyzw
                  r34.x = samp0[]..swiz;
                  r34.y = samp0[]..swiz;
                  r34.z = samp0[]..swiz;
                  r34.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r20.y, l(100), t12.xyzw
                  r35.x = samp0[]..swiz;
                  r35.y = samp0[]..swiz;
                  r35.z = samp0[]..swiz;
                  r35.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r20.y, l(116), t12.xyzw
                  r36.x = samp0[]..swiz;
                  r36.y = samp0[]..swiz;
                  r36.z = samp0[]..swiz;
                  r36.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r20.y, l(132), t12.xyzw
                  r37.x = samp0[]..swiz;
                  r37.y = samp0[]..swiz;
                  r37.z = samp0[]..swiz;
                  r37.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r20.y, l(148), t12.xyzw
                  r38.x = samp0[]..swiz;
                  r38.y = samp0[]..swiz;
                  r38.z = samp0[]..swiz;
                  r38.w = samp0[]..swiz;
                    r21.x = abs(r14.w) * -0.200000003 + 0.400000006;
                    r22.xyz = r3.xyz * r21.xxx + v7.xyz;
                    r21.x = dot(r33.xyzw, r22.xyzw);
                    r21.y = dot(r34.xyzw, r22.xyzw);
                    r21.z = dot(r35.xyzw, r22.xyzw);
                    r22.x = dot(r36.xyzw, r22.xyzw);
                    r22.y = cmp(r22.x < r21.z);
                    r21.xy = r21.xy / r22.xx;
                    r21.xy = r21.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r21.xy = r21.xy + r38.zw;
                    r21.xy = r21.xy * r38.xy;
                    r32.xy = r20.ww / r37.xz;
                    r33.xy = float2(1,1) + -r32.xy;
                    r33.xy = cmp(r21.xy >= r33.xy);
                    r32.xy = cmp(r32.xy >= r21.xy);
                    r32.xy = (int2)r32.xy | (int2)r33.xy;
                    r22.z = (int)r32.y | (int)r32.x;
                    r22.y = (int)r22.y | (int)r22.z;
                    if (r22.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.y, r20.y, l(28), t12.xxxx
                    r22.y = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xy, r20.y, l(164), t12.xyxx
                    r32.x = samp0[]..swiz;
                    r32.y = samp0[]..swiz;
                      r21.xy = saturate(r21.xy);
                      r33.xy = r21.xy * r37.xz + r37.yw;
                      r20.y = r32.y * r22.x;
                      r21.x = r32.x * r22.x + r21.z;
                      r20.y = r21.x / r20.y;
                      r20.y = max(6.10351563e-05, r20.y);
                      r21.x = r22.y ? 0.000000 : 0;
                      if (r8.w != 0) {
                        r22.z = (uint)r21.x;
                        r21.yz = float2(0,0);
                        while (true) {
                          r24.w = cmp((int)r21.z >= 8);
                          if (r24.w != 0) break;
                          r32.x = dot(icb[r21.z+0].xy, r25.xy);
                          r32.y = dot(icb[r21.z+0].yx, r25.xz);
                          r22.xy = r32.xy * r20.ww + r33.xy;
                          r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r20.y).x;
                          r21.y = r22.x * 0.125 + r21.y;
                          r21.z = (int)r21.z + 1;
                        }
                      } else {
                        r33.z = (uint)r21.x;
                        r21.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r33.xyz, r20.y).x;
                      }
                      r20.y = r21.y * r21.y;
                      r20.y = r20.y * r21.y;
                    } else {
                      r20.y = 1;
                    }
                    r12.w = r20.y * r12.w;
                  } else {
                    if (4 == 0) r20.y = 0; else if (4+20 < 32) {                     r20.y = (uint)r32.w << (32-(4 + 20)); r20.y = (uint)r20.y >> (32-4);                    } else r20.y = (uint)r32.w >> 20;
                    r20.w = cmp(0 < (uint)r20.y);
                    r20.w = r20.w ? r0.y : 0;
                    if (r20.w != 0) {
                      r20.y = (int)r20.y + numLights;
                      r20.y = (int)r20.y + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.w, r20.y, l(52), t12.xxxx
                    r20.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r20.y, l(68), t12.xyzw
                    r32.x = samp0[]..swiz;
                    r32.y = samp0[]..swiz;
                    r32.z = samp0[]..swiz;
                    r32.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r20.y, l(84), t12.xyzw
                    r33.x = samp0[]..swiz;
                    r33.y = samp0[]..swiz;
                    r33.z = samp0[]..swiz;
                    r33.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r20.y, l(100), t12.xyzw
                    r34.x = samp0[]..swiz;
                    r34.y = samp0[]..swiz;
                    r34.z = samp0[]..swiz;
                    r34.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r20.y, l(116), t12.xyzw
                    r35.x = samp0[]..swiz;
                    r35.y = samp0[]..swiz;
                    r35.z = samp0[]..swiz;
                    r35.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r20.y, l(132), t12.xyzw
                    r36.x = samp0[]..swiz;
                    r36.y = samp0[]..swiz;
                    r36.z = samp0[]..swiz;
                    r36.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r20.y, l(148), t12.xyzw
                    r37.x = samp0[]..swiz;
                    r37.y = samp0[]..swiz;
                    r37.z = samp0[]..swiz;
                    r37.w = samp0[]..swiz;
                      r21.x = abs(r14.w) * -0.200000003 + 0.400000006;
                      r23.xyz = r3.xyz * r21.xxx + v7.xyz;
                      r22.x = dot(r32.xyzw, r23.xyzw);
                      r22.y = dot(r33.xyzw, r23.xyzw);
                      r21.x = dot(r34.xyzw, r23.xyzw);
                      r21.z = dot(r35.xyzw, r23.xyzw);
                      r22.z = cmp(r21.z < r21.x);
                      r22.xy = r22.xy / r21.zz;
                      r22.xy = r22.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r22.xy = r22.xy + r37.zw;
                      r22.xy = r22.xy * r37.xy;
                      r23.xy = r20.ww / r36.xz;
                      r32.xy = float2(1,1) + -r23.xy;
                      r32.xy = cmp(r22.xy >= r32.xy);
                      r23.xy = cmp(r23.xy >= r22.xy);
                      r23.xy = (int2)r23.xy | (int2)r32.xy;
                      r23.x = (int)r23.y | (int)r23.x;
                      r22.z = (int)r22.z | (int)r23.x;
                      if (r22.z == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.z, r20.y, l(28), t12.xxxx
                      r22.z = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.xy, r20.y, l(164), t12.xyxx
                      r23.x = samp0[]..swiz;
                      r23.y = samp0[]..swiz;
                        r22.xy = saturate(r22.xy);
                        r32.xy = r22.xy * r36.xz + r36.yw;
                        r20.y = r23.y * r21.z;
                        r21.x = r23.x * r21.z + r21.x;
                        r20.y = r21.x / r20.y;
                        r20.y = max(6.10351563e-05, r20.y);
                        r21.x = r22.z ? 0.000000 : 0;
                        if (r8.w != 0) {
                          r22.z = (uint)r21.x;
                          r21.z = 0;
                          r23.x = 0;
                          while (true) {
                            r23.y = cmp((int)r23.x >= 8);
                            if (r23.y != 0) break;
                            r33.x = dot(icb[r23.x+0].xy, r26.xy);
                            r33.y = dot(icb[r23.x+0].yx, r26.xz);
                            r22.xy = r33.xy * r20.ww + r32.xy;
                            r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r20.y).x;
                            r21.z = r22.x * 0.125 + r21.z;
                            r23.x = (int)r23.x + 1;
                          }
                        } else {
                          r32.z = (uint)r21.x;
                          r21.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r32.xyz, r20.y).x;
                        }
                        r20.y = r21.z * r21.z;
                        r20.y = r20.y * r21.z;
                      } else {
                        r20.y = 1;
                      }
                      r12.w = r20.y * r12.w;
                    }
                  }
                  r20.y = -r15.w * r6.z + 1;
                  r20.y = r20.y * r20.y;
                  r20.y = -r20.y * 0.620000005 + 0.620000005;
                  r20.y = r20.y + -r15.w;
                  r20.y = r2.w * r20.y + r15.w;
                  r20.y = r20.y * r12.w;
                  r14.w = cmp(0 < r14.w);
                  r22.xyz = r20.yyy * r31.xyz + r16.xyz;
                  r19.xyz = r19.xyz * r13.www + r12.xyz;
                  r13.w = dot(r19.xyz, r19.xyz);
                  r13.w = rsqrt(r13.w);
                  r19.xyz = r19.xyz * r13.www;
                  r13.w = dot(r19.xyz, r12.xyz);
                  r19.x = dot(r3.xyz, r19.xyz);
                  r19.y = abs(r19.x) * r1.w + -abs(r19.x);
                  r19.x = abs(r19.x) * r19.y + 1;
                  r15.w = r15.w * r0.w + r3.w;
                  r19.x = r19.x * r19.x;
                  r15.w = r19.x * r15.w;
                  r15.w = rcp(r15.w);
                  r15.w = r15.w * r18.x;
                  r12.w = r15.w * r12.w;
                  r12.w = 0.25 * r12.w;
                  r19.xyz = r12.www * r31.xyz + r30.xyz;
                  r13.w = saturate(1 + -r13.w);
                  r15.w = r13.w * r13.w;
                  r15.w = r15.w * r15.w;
                  r13.w = r15.w * r13.w;
                  r12.w = r13.w * r12.w;
                  r23.xyz = r12.www * r31.xyz + r29.xyz;
                  r16.xyz = r14.www ? r22.xyz : r16.xyz;
                  r29.xyz = r14.www ? r23.xyz : r29.xyz;
                  r30.xyz = r14.www ? r19.xyz : r30.xyz;
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
    r9.yzw = r16.xyz;
    r27.xyz = r29.xyz;
    r28.xyz = r30.xyz;
    r7.w = (int)r7.w + 32;
  }
  r0.xyw = float3(1,1,1) + -r2.xyz;
  r0.xyw = r27.xyz * r0.xyw;
  r0.xyw = r28.xyz * r2.xyz + r0.xyw;
  r0.xyw = r9.yzw * r1.xyz + r0.xyw;
  r1.x = dot(r0.xyw, float3(0.298999995,0.587000012,0.114));
  r1.x = max(9.99999975e-05, r1.x);
  r1.w = max(relHDRExposure.x, r1.x);
  r1.xyz = r4.xyz * r1.www;
  r4.w = 1;
  r1.xyzw = relativeHDR ? r1.xyzw : r4.xyzw;
  r0.xyw = r1.xyz + r0.xyw;
  r1.w = hdrScale * r1.w;
  r1.w = max(1, r1.w);
  r1.xyz = r1.xyz / r1.www;
  r1.x = saturate(dot(r1.xyz, float3(0.298999995,0.587000012,0.114)));
  o0.w = r1.x + r0.z;
  r0.z = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.z != 0) {
    r0.z = dot(v7.xyz, v7.xyz);
    r1.x = rsqrt(r0.z);
    r1.xyz = v7.xyz * r1.xxx;
    r0.z = sqrt(r0.z);
    r1.w = cmp(0 < fogConstants.blendAmount);
    if (r1.w != 0) {
      r2.xy = r0.zz * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
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
      r1.w = r0.z * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
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
    r0.z = -fogConstants.atmospherehazebasedist + r0.z;
    r0.z = saturate(fogConstants.atmospherehazefadedist * r0.z);
    r0.z = r1.y * r0.z;
    r1.x = saturate(r1.x);
    r1.x = r1.x * r1.x + 1;
    r1.x = r1.x * 0.0596831031 + -1;
    r1.x = fogConstants.atmospheresunstrength * r1.x + 1;
    r1.yzw = fogConstants.atmosphereMieDensity.xyz * r0.zzz;
    r1.xyz = r1.xxx * fogConstants.atmosphereRayleighDensity.xyz + r1.yzw;
    r1.xyz = fogConstants.atmosphereInScatterIntensity * r1.xyz;
    r3.xyz = float3(1,1,1) + -r2.xyz;
    r1.xyz = r3.xyz * r1.xyz;
    r1.xyz = r0.xyw * r2.xyz + r1.xyz;
  } else {
    r0.z = fogConstants.heightFalloff * v7.z;
    r1.w = fogConstants.heightFalloff * v7.z + fogConstants.K0;
    r2.x = cmp(abs(r0.z) < 9.99999975e-05);
    r2.y = min(64, r1.w);
    r2.y = 1.44269502 * r2.y;
    r2.y = exp2(r2.y);
    r2.z = saturate(fogConstants.K0b);
    r2.w = cmp(r1.w < 0);
    r1.w = 1 + r1.w;
    r1.w = r2.w ? r2.y : r1.w;
    r1.w = -fogConstants.K0b + r1.w;
    r0.z = r2.x ? 1 : r0.z;
    r0.z = r1.w / r0.z;
    r0.z = r2.x ? r2.z : r0.z;
    r0.z = fogConstants.expMul * r0.z;
    r1.w = dot(v7.xyz, v7.xyz);
    r2.x = sqrt(r1.w);
    r0.z = r0.z * r2.x + fogConstants.expAdd;
    r0.z = exp2(r0.z);
    r0.z = min(1, r0.z);
    r0.z = 1 + -r0.z;
    r1.w = rsqrt(r1.w);
    r2.xyz = v7.xyz * r1.www;
    r1.w = dot(fogConstants.wldSunFogDir.xyz, r2.xyz);
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
  return;
}