// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:34:13 2021

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
  float baseNormalHeight : packoffset(c10.w);
  float2 glossRange : packoffset(c11);
  float rowCount : packoffset(c11.z);
  float columnCount : packoffset(c11.w);
  float imageTime : packoffset(c12);
  float2 rotateUVs : packoffset(c12.y);
  float2 scrollUVs : packoffset(c13);
  float2 scaleUVs : packoffset(c13.z);
  float2 offsetUVs : packoffset(c14);
  float2 zoomUVs : packoffset(c14.z);
  float zoomRate : packoffset(c15);
  float layerDepth : packoffset(c15.y);
  bool clampU : packoffset(c15.z);
  bool clampV : packoffset(c15.w);
  float2 flickerSeed : packoffset(c16);
  float flickerSpeed : packoffset(c16.z);
  float2 flickerRange : packoffset(c17);
  float flickerPower : packoffset(c17.z);
  uint zFeatherComputeSprites : packoffset(c17.w);
  float hdrScale : packoffset(c18);
  float emissiveFalloffPower : packoffset(c18.y);
  float3 emissiveTint1 : packoffset(c19);
  bool relativeHDR : packoffset(c19.w);
  bool invertFalloff : packoffset(c20);
  float uvMotionToggle1 : packoffset(c20.y);
  float2 scriptControl : packoffset(c20.z);
  float3 tint1 : packoffset(c21);
  float3 tint2 : packoffset(c22);
  float3 tint3 : packoffset(c23);
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
SamplerState lookupSampler_s : register(s5);
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
Texture2D<float4> tintMask : register(t22);
StructuredBuffer<gSunShadowTree> gSunShadowTree : register(t23);
Texture2D<float4> normalMap : register(t24);
Texture2D<float4> flickerLookupMap : register(t25);
Texture2D<float4> emissiveMap : register(t26);
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
  float2 v2 : TEXCOORD0,
  nointerpolation float3 v3 : UVOFFSETS0,
  nointerpolation uint w3 : TEXCOORD4,
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
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (uint,uint,uint,uint) u6
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2darray (uint,uint,uint,uint) u7
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45;
  uint4 bitmask, uiDest;
  float4 fDest;

// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.x, v3.w, l(4), t4.xxxx
r0.x = samp0[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.xyz, r0.x, l(36), t0.xyzx
r0.x = samp0[]..swiz;
r0.y = samp0[]..swiz;
r0.z = samp0[]..swiz;
  r1.xyzw = colorMap.Sample(colorSampler_s, v2.xy).xyzw;
  r0.w = tintMask.Sample(colorSampler_s, v2.xy).x;
  r2.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r2.xyz = r0.www * r2.xyz + float3(1,1,1);
  r1.xyz = r2.xyz * r1.xyz;
  r1.xyz = v1.xyz * r1.xyz;
  r0.w = w1.x * r1.w;
  r1.w = saturate(0.0588235296 * glossRange.y);
  r2.xyz = normalMap.Sample(normalSampler_s, v2.xy).xyz;
  r2.xyz = float3(-0.5,-0.5,-0) + r2.xyz;
  r2.xyz = baseNormalHeight * r2.xyz + float3(0.5,0.5,0);
  r2.xy = r2.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.w = dot(r2.xy, r2.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r2.z = r2.z * r2.z;
  r2.z = 0.333333343 * r2.z;
  r2.z = min(1, r2.z);
  r3.x = v8.x ? 1 : -1;
  r3.y = dot(v4.xyz, v4.xyz);
  r3.y = rsqrt(r3.y);
  r3.yzw = v4.xyz * r3.yyy;
  r3.yzw = r3.yzw * r3.xxx;
  r4.x = dot(v5.xyz, v5.xyz);
  r4.x = rsqrt(r4.x);
  r4.xyz = v5.xyz * r4.xxx;
  r4.xyz = r4.xyz * r3.xxx;
  r4.w = dot(v6.xyz, v6.xyz);
  r4.w = rsqrt(r4.w);
  r5.xyz = v6.xyz * r4.www;
  r5.xyz = r5.xyz * r3.xxx;
  r1.w = -17 * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r2.z + r1.w;
  r1.w = log2(r1.w);
  r1.w = -0.0588235296 * r1.w;
  r1.w = max(0, r1.w);
  r5.xyz = r5.xyz * r2.yyy;
  r2.xyz = r4.xyz * r2.xxx + r5.xyz;
  r2.xyz = r3.yzw * r2.www + r2.xyz;
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = rsqrt(r2.w);
  r2.xyz = r2.xyz * r2.www;
  r2.w = cmp(v0.z >= 0.984375);
  r4.x = 1.01587307 * v0.z;
  r4.y = v0.z * 64 + -63;
  r2.w = r2.w ? r4.y : r4.x;
  r2.w = max(9.99999994e-09, r2.w);
  r2.w = rcp(r2.w);
  r4.xy = (uint2)v0.yx;
  r5.xyz = ddx_coarse(v7.xyz);
  r6.xyz = ddy_coarse(v7.xyz);
  r4.z = numRefProbes + numLights;
  r7.xyz = eyeOffset.xyz + v7.xyz;
  r2.w = 0.0078125 * r2.w;
  r2.w = min(15, r2.w);
  r2.w = (uint)r2.w;
  r8.xy = (uint2)r4.yx >> int2(6,6);
  r8.z = (uint)r2.w << 4;
  r2.w = numStaticDecals & -32;
  r4.w = (int)-r2.w + numStaticDecals;
  r9.xy = float2(0,0);
  r10.w = 0;
  r7.w = 1;
  r11.xyz = float3(0,0,0);
  r12.xyz = float3(0,0,0);
  r13.xyz = float3(0,0,0);
  r5.w = 0;
  r6.w = 0;
  r8.w = 0;
  while (true) {
    r9.w = cmp((uint)r8.w >= numStaticDecals);
    if (r9.w != 0) break;
    r9.z = (uint)r8.w >> 5;
    r10.xyz = (int3)r8.xyz + (int3)r9.xyz;
    r9.z = visibleDecals.Load(r10.xyzw).x;
    r9.w = cmp((int)r2.w == (int)r8.w);
    if (r4.w == 0) r10.x = 0; else if (r4.w+0 < 32) {     r10.x = (uint)r9.z << (32-(r4.w + 0)); r10.x = (uint)r10.x >> (32-r4.w);    } else r10.x = (uint)r9.z >> 0;
    r9.z = r9.w ? r10.x : r9.z;
    r9.w = (int)r4.z + (int)r8.w;
    r10.xyz = r11.xyz;
    r14.xyz = r12.xyz;
    r15.xyz = r13.xyz;
    r11.w = r5.w;
    r12.w = r6.w;
    r13.w = r9.z;
    while (true) {
      if (r13.w == 0) break;
      r14.w = firstbitlow((uint)r13.w);
      r15.w = 1 << (int)r14.w;
      r16.x = (int)r13.w & (int)r15.w;
      if (r16.x != 0) {
        r13.w = (int)r13.w ^ (int)r15.w;
        r15.w = (int)r9.w + (int)r14.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r16.xyzw, r15.w, l(0), t11.xyzw
      r16.x = samp0[]..swiz;
      r16.y = samp0[]..swiz;
      r16.z = samp0[]..swiz;
      r16.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r17.xy, r15.w, l(16), t11.xyxx
      r17.x = samp0[]..swiz;
      r17.y = samp0[]..swiz;
        r16.xyz = -v7.xyz + r16.xyz;
        r17.z = r16.w;
        r16.xyz = cmp(abs(r16.xyz) < r17.zxy);
        r15.w = r16.y ? r16.x : 0;
        r15.w = r16.z ? r15.w : 0;
        if (r15.w != 0) {
          r14.w = (int)r8.w + (int)r14.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r16.xyz, r14.w, l(0), t36.xyzx
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r17.xyz, r14.w, l(16), t36.xyzx
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r18.xyz, r14.w, l(32), t36.xyzx
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
        r18.z = samp0[]..swiz;
          r19.x = r16.x;
          r19.y = r17.x;
          r19.z = r18.x;
          r15.w = dot(r19.xyz, r19.xyz);
          r15.w = rsqrt(r15.w);
          r20.xyz = r19.xyz * r15.www;
          r15.w = dot(r20.xyz, v4.xyz);
          r15.w = cmp(r15.w >= 0.5);
          if (r15.w != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r21.xyw, r14.w, l(48), t36.xyxz
          r21.x = samp0[]..swiz;
          r21.y = samp0[]..swiz;
          r21.w = samp0[]..swiz;
            r19.w = r21.x;
            r19.x = dot(r7.xyzw, r19.xyzw);
            r22.x = r16.y;
            r22.y = r17.y;
            r22.z = r18.y;
            r22.w = r21.y;
            r19.y = dot(r7.xyzw, r22.xyzw);
            r21.x = r16.z;
            r21.y = r17.z;
            r21.z = r18.z;
            r19.z = dot(r7.xyzw, r21.xyzw);
            r16.xyz = cmp(abs(r19.xyz) < float3(1,1,1));
            r15.w = r16.y ? r16.x : 0;
            r15.w = r16.z ? r15.w : 0;
            if (r15.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r16.xyzw, r14.w, l(64), t36.xyzw
            r16.x = samp0[]..swiz;
            r16.y = samp0[]..swiz;
            r16.z = samp0[]..swiz;
            r16.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r17.xyzw, r14.w, l(80), t36.xyzw
            r17.x = samp0[]..swiz;
            r17.y = samp0[]..swiz;
            r17.z = samp0[]..swiz;
            r17.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r18.xyzw, r14.w, l(96), t36.xyzw
            r18.x = samp0[]..swiz;
            r18.y = samp0[]..swiz;
            r18.z = samp0[]..swiz;
            r18.w = samp0[]..swiz;
              r23.x = dot(r5.xyz, r22.xyz);
              r23.y = dot(r5.xyz, r21.xyz);
              r24.x = dot(r6.xyz, r22.xyz);
              r24.y = dot(r6.xyz, r21.xyz);
              r19.xy = r19.yz * float2(0.5,-0.5) + float2(0.5,0.5);
              r23.xyz = float3(0.5,-0.5,0.5) * r23.xyx;
              r24.xyz = float3(0.5,-0.5,0.5) * r24.xyx;
              r19.zw = (int2)r17.yz & int2(65535,65535);
              if (r19.z != 0) {
                if (4 == 0) r15.w = 0; else if (4+24 < 32) {                 r15.w = (uint)r17.w << (32-(4 + 24)); r15.w = (uint)r15.w >> (32-4);                } else r15.w = (uint)r17.w >> 24;
                r15.w = 1 << (int)r15.w;
                r20.w = (uint)r17.w >> 28;
                r20.w = 1 << (int)r20.w;
                r21.w = cmp((int)r19.z == 4);
                if (r21.w != 0) {
                  r21.w = (int)r17.w & 4095;
                  if (12 == 0) r22.w = 0; else if (12+12 < 32) {                   r22.w = (uint)r17.w << (32-(12 + 12)); r22.w = (uint)r22.w >> (32-12);                  } else r22.w = (uint)r17.w >> 12;
                  r23.w = (int)r18.w & 1023;
                  r25.xz = (uint2)r15.ww;
                  r25.y = (uint)r20.w;
                  r26.xy = r19.xy * r25.zy + float2(0.5,0.5);
                  r26.zw = float2(-0.5,-0.5) + r25.zy;
                  r26.xy = min(r26.xy, r26.zw);
                  r27.x = (uint)r21.w;
                  r27.y = (uint)r22.w;
                  r26.xy = r27.xy + r26.xy;
                  r26.xy = invBcTexSizes.xy * r26.xy;
                  r26.z = (uint)r23.w;
                  r27.xyz = invBcTexSizes.xyx * r23.zyz;
                  r27.xyz = r27.xyz * r25.xyz;
                  r28.xyz = invBcTexSizes.xyx * r24.zyz;
                  r25.xyz = r28.xyz * r25.xyz;
                  r25.xyzw = materialTexBC7.SampleGrad(samplerLinearClamp_s, r26.xyz, r27.xyzx, r25.xyzx).xyzw;
                } else {
                  r19.z = cmp((int)r19.z == 1);
                  if (r19.z != 0) {
                    r19.z = (int)r17.w & 4095;
                    if (12 == 0) r17.w = 0; else if (12+12 < 32) {                     r17.w = (uint)r17.w << (32-(12 + 12)); r17.w = (uint)r17.w >> (32-12);                    } else r17.w = (uint)r17.w >> 12;
                    r21.w = (int)r18.w & 1023;
                    r26.xz = (uint2)r15.ww;
                    r26.y = (uint)r20.w;
                    r27.xy = r19.xy * r26.zy + float2(0.5,0.5);
                    r27.zw = float2(-0.5,-0.5) + r26.zy;
                    r27.xy = min(r27.xy, r27.zw);
                    r28.x = (uint)r19.z;
                    r28.y = (uint)r17.w;
                    r27.xy = r28.xy + r27.xy;
                    r27.xy = invBcTexSizes.zw * r27.xy;
                    r27.z = (uint)r21.w;
                    r28.xyz = invBcTexSizes.zwz * r23.zyz;
                    r28.xyz = r28.xyz * r26.xyz;
                    r29.xyz = invBcTexSizes.zwz * r24.zyz;
                    r26.xyz = r29.xyz * r26.xyz;
                    r25.xyzw = materialTexBC3.SampleGrad(samplerLinearClamp_s, r27.xyz, r28.xyzx, r26.xyzx).xyzw;
                  } else {
                    r25.xyzw = float4(1,1,1,1);
                  }
                }
                r16.xyz = r25.xyz * r16.xyz;
                r15.w = r25.w * r16.w;
              } else {
                r16.xyz = float3(0,0,0);
                r15.w = 0;
              }
              r17.w = cmp(r17.x != 1.000000);
              r16.w = r15.w + r16.w;
              r16.w = saturate(r16.w * r17.x + -r17.x);
              r15.w = r17.w ? r16.w : r15.w;
              if (r19.w != 0) {
                if (4 == 0) r16.w = 0; else if (4+24 < 32) {                 r16.w = (uint)r18.y << (32-(4 + 24)); r16.w = (uint)r16.w >> (32-4);                } else r16.w = (uint)r18.y >> 24;
                r16.w = 1 << (int)r16.w;
                r17.x = (uint)r18.y >> 28;
                r17.x = 1 << (int)r17.x;
                r17.w = cmp((int)r19.w == 2);
                if (r17.w != 0) {
                  r17.w = (int)r18.y & 4095;
                  if (12 == 0) r25.x = 0; else if (12+12 < 32) {                   r25.x = (uint)r18.y << (32-(12 + 12)); r25.x = (uint)r25.x >> (32-12);                  } else r25.x = (uint)r18.y >> 12;
                  if (10 == 0) r25.y = 0; else if (10+20 < 32) {                   r25.y = (uint)r18.w << (32-(10 + 20)); r25.y = (uint)r25.y >> (32-10);                  } else r25.y = (uint)r18.w >> 20;
                  r26.xz = (uint2)r16.ww;
                  r26.y = (uint)r17.x;
                  r25.zw = r19.xy * r26.zy + float2(0.5,0.5);
                  r27.xy = float2(-0.5,-0.5) + r26.zy;
                  r25.zw = min(r27.xy, r25.zw);
                  r27.x = (uint)r17.w;
                  r27.yz = (uint2)r25.xy;
                  r25.xz = r27.xy + r25.zw;
                  r27.xy = invMaskTexSizes.xy * r25.xz;
                  r25.xyz = invMaskTexSizes.xyx * r23.zyz;
                  r25.xyz = r25.xyz * r26.xyz;
                  r28.xyz = invMaskTexSizes.xyx * r24.zyz;
                  r26.xyz = r28.xyz * r26.xyz;
                  r17.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r27.xyz, r25.x, r26.x).x;
                } else {
                  r19.z = cmp((int)r19.w == 4);
                  if (r19.z != 0) {
                    r19.z = (int)r18.y & 4095;
                    if (12 == 0) r25.x = 0; else if (12+12 < 32) {                     r25.x = (uint)r18.y << (32-(12 + 12)); r25.x = (uint)r25.x >> (32-12);                    } else r25.x = (uint)r18.y >> 12;
                    if (10 == 0) r25.y = 0; else if (10+20 < 32) {                     r25.y = (uint)r18.w << (32-(10 + 20)); r25.y = (uint)r25.y >> (32-10);                    } else r25.y = (uint)r18.w >> 20;
                    r26.xz = (uint2)r16.ww;
                    r26.y = (uint)r17.x;
                    r25.zw = r19.xy * r26.zy + float2(0.5,0.5);
                    r27.xy = float2(-0.5,-0.5) + r26.zy;
                    r25.zw = min(r27.xy, r25.zw);
                    r27.x = (uint)r19.z;
                    r27.yz = (uint2)r25.xy;
                    r19.zw = r27.xy + r25.zw;
                    r27.xy = invBcTexSizes.xy * r19.zw;
                    r25.xyz = invBcTexSizes.xyx * r23.zyz;
                    r25.xyz = r25.xyz * r26.xyz;
                    r28.xyz = invBcTexSizes.xyx * r24.zyz;
                    r26.xyz = r28.xyz * r26.xyz;
                    r17.w = materialTexBC7.SampleGrad(samplerLinearClamp_s, r27.xyz, r25.x, r26.x).x;
                  } else {
                    r19.z = (int)r18.y & 4095;
                    if (12 == 0) r25.x = 0; else if (12+12 < 32) {                     r25.x = (uint)r18.y << (32-(12 + 12)); r25.x = (uint)r25.x >> (32-12);                    } else r25.x = (uint)r18.y >> 12;
                    if (10 == 0) r25.y = 0; else if (10+20 < 32) {                     r25.y = (uint)r18.w << (32-(10 + 20)); r25.y = (uint)r25.y >> (32-10);                    } else r25.y = (uint)r18.w >> 20;
                    r26.xz = (uint2)r16.ww;
                    r26.y = (uint)r17.x;
                    r25.zw = r19.xy * r26.zy + float2(0.5,0.5);
                    r27.xy = float2(-0.5,-0.5) + r26.zy;
                    r25.zw = min(r27.xy, r25.zw);
                    r27.x = (uint)r19.z;
                    r27.yz = (uint2)r25.xy;
                    r19.zw = r27.xy + r25.zw;
                    r27.xy = invBcTexSizes.zw * r19.zw;
                    r25.xyz = invBcTexSizes.zwz * r23.zyz;
                    r25.xyz = r25.xyz * r26.xyz;
                    r28.xyz = invBcTexSizes.zwz * r24.zyz;
                    r26.xyz = r28.xyz * r26.xyz;
                    r17.w = materialTexBC3.SampleGrad(samplerLinearClamp_s, r27.xyz, r25.x, r26.x).x;
                  }
                }
                r25.xyz = r17.www * float3(0.959999979,0.959999979,0.959999979) + float3(0.0399999991,0.0399999991,0.0399999991);
                r16.w = saturate(1 + -r17.w);
                r16.xyz = r16.xyz * r16.www;
              } else {
                r25.xyz = float3(0.0399999991,0.0399999991,0.0399999991);
              }
              r17.xy = (uint2)r17.zy >> int2(16,16);
              if (r17.x != 0) {
                r16.w = cmp((int)r17.x == 2);
                if (r16.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r14.w, r14.w, l(112), t36.xxxx
                r14.w = samp0[]..swiz;
                  if (4 == 0) r17.z = 0; else if (4+24 < 32) {                   r17.z = (uint)r18.z << (32-(4 + 24)); r17.z = (uint)r17.z >> (32-4);                  } else r17.z = (uint)r18.z >> 24;
                  if (12 == 0) r17.w = 0; else if (12+12 < 32) {                   r17.w = (uint)r18.z << (32-(12 + 12)); r17.w = (uint)r17.w >> (32-12);                  } else r17.w = (uint)r18.z >> 12;
                  r16.w = 1 << (int)r17.z;
                  r17.z = (uint)r18.z >> 28;
                  r17.z = 1 << (int)r17.z;
                  r18.y = (int)r18.z & 4095;
                  r14.w = (int)r14.w & 1023;
                  r26.xz = (uint2)r16.ww;
                  r26.y = (uint)r17.z;
                  r19.zw = r19.xy * r26.zy + float2(0.5,0.5);
                  r27.xy = float2(-0.5,-0.5) + r26.zy;
                  r19.zw = min(r27.xy, r19.zw);
                  r27.x = (uint)r18.y;
                  r27.y = (uint)r17.w;
                  r17.zw = r27.xy + r19.zw;
                  r27.xy = invMaskTexSizes.xy * r17.zw;
                  r27.z = (uint)r14.w;
                  r28.xyz = invMaskTexSizes.xyx * r23.zyz;
                  r28.xyz = r28.xyz * r26.xyz;
                  r29.xyz = invMaskTexSizes.xyx * r24.zyz;
                  r26.xyz = r29.xyz * r26.xyz;
                  r14.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r27.xyz, r28.x, r26.x).x;
                } else {
                  r16.w = cmp((int)r17.x == 6);
                  r14.w = r16.w ? 0 : 1;
                }
              } else {
                r14.w = 1;
              }
              r14.w = saturate(0.764705896 * r14.w);
              if (r17.y != 0) {
                r16.w = cmp((int)r17.y == 3);
                if (r16.w != 0) {
                  if (4 == 0) r17.x = 0; else if (4+24 < 32) {                   r17.x = (uint)r18.x << (32-(4 + 24)); r17.x = (uint)r17.x >> (32-4);                  } else r17.x = (uint)r18.x >> 24;
                  if (12 == 0) r17.y = 0; else if (12+12 < 32) {                   r17.y = (uint)r18.x << (32-(12 + 12)); r17.y = (uint)r17.y >> (32-12);                  } else r17.y = (uint)r18.x >> 12;
                  if (10 == 0) r17.z = 0; else if (10+10 < 32) {                   r17.z = (uint)r18.w << (32-(10 + 10)); r17.z = (uint)r17.z >> (32-10);                  } else r17.z = (uint)r18.w >> 10;
                  r16.w = 1 << (int)r17.x;
                  r17.x = (uint)r18.x >> 28;
                  r17.x = 1 << (int)r17.x;
                  r17.w = (int)r18.x & 4095;
                  r18.xz = (uint2)r16.ww;
                  r18.y = (uint)r17.x;
                  r19.xy = r19.xy * r18.xy + float2(0.5,0.5);
                  r19.zw = float2(-0.5,-0.5) + r18.zy;
                  r19.xy = min(r19.xy, r19.zw);
                  r26.xy = (uint2)r17.wy;
                  r17.xy = r26.xy + r19.xy;
                  r19.xy = invMaskTexSizes.zw * r17.xy;
                  r19.z = (uint)r17.z;
                  r17.xyz = invMaskTexSizes.zwz * r23.xyz;
                  r17.xyz = r17.xyz * r18.xyz;
                  r23.xyz = invMaskTexSizes.zwz * r24.xyz;
                  r18.xyz = r23.xyz * r18.xyz;
                  r17.xyz = materialTexBC7linear.SampleGrad(samplerLinearClamp_s, r19.xyz, r17.xyz, r18.xyz).xyz;
                } else {
                  r17.xyz = float3(0.5,0.5,1);
                }
                r17.xy = r17.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
                r16.w = dot(r17.xy, r17.xy);
                r16.w = 1 + -r16.w;
                r16.w = max(0, r16.w);
                r16.w = sqrt(r16.w);
                r17.z = r17.z * r17.z;
                r17.z = 0.333333343 * r17.z;
                r17.z = min(1, r17.z);
                r17.w = dot(r22.xyz, r22.xyz);
                r17.w = rsqrt(r17.w);
                r18.xyz = r22.xyz * r17.www;
                r17.w = dot(-r21.xyz, -r21.xyz);
                r17.w = rsqrt(r17.w);
                r19.xyz = -r21.xyz * r17.www;
                r20.xyz = r20.xyz * r3.xxx;
                r18.xyz = r18.xyz * r3.xxx;
                r19.xyz = r19.xyz * r3.xxx;
                r17.w = -17 * r14.w;
                r17.w = exp2(r17.w);
                r17.z = r17.z + r17.w;
                r17.z = log2(r17.z);
                r17.z = -0.0588235296 * r17.z;
                r14.w = max(0, r17.z);
                r17.yzw = r19.xyz * r17.yyy;
                r17.xyz = r18.xyz * r17.xxx + r17.yzw;
                r17.xyz = r20.xyz * r16.www + r17.xyz;
                r16.w = dot(r17.xyz, r17.xyz);
                r16.w = rsqrt(r16.w);
                r17.xyz = r17.xyz * r16.www;
                r16.w = 1 + -r15.w;
                r18.xyz = r16.www * r14.xyz;
                r14.xyz = r17.xyz * r15.www + r18.xyz;
              }
              r16.w = 1 + -r15.w;
              r17.xyz = r16.www * r10.xyz;
              r10.xyz = r16.xyz * r15.www + r17.xyz;
              r16.xyz = r16.www * r15.xyz;
              r15.xyz = r25.xyz * r15.www + r16.xyz;
              r11.w = r11.w * r16.w + r15.w;
              r16.x = r16.w * r12.w;
              r12.w = r14.w * r15.w + r16.x;
            }
          }
        }
      }
    }
    r11.xyz = r10.xyz;
    r12.xyz = r14.xyz;
    r13.xyz = r15.xyz;
    r5.w = r11.w;
    r6.w = r12.w;
    r8.w = (int)r8.w + 32;
  }
  r5.w = saturate(r5.w);
  r2.w = 1 + -r5.w;
  r1.xyz = r1.xyz * r2.www + r11.xyz;
  r0.w = r0.w * r2.w + r5.w;
  r2.xyz = r2.xyz * r2.www + r12.xyz;
  r3.x = dot(r2.xyz, r2.xyz);
  r3.x = rsqrt(r3.x);
  r5.xyz = r3.xxx * r2.xyz;
  r2.y = r1.w * r2.w + r6.w;
  r6.xyz = r2.www * float3(0.0399999991,0.0399999991,0.0399999991) + r13.xyz;
  r0.z = gameTime.w + -r0.z;
  r0.x = saturate(r0.x);
  r0.x = hdrScale * r0.x;
  r9.xyz = cmp(r0.yyy == float3(3,2,1));
  r10.xyz = r9.zzz ? tint1.xyz : emissiveTint1.xyz;
  r9.yzw = r9.yyy ? tint2.xyz : r10.xyz;
  r9.xyz = r9.xxx ? tint3.xyz : r9.yzw;
  r0.y = cmp(0.5 < invertFalloff);
  if (r0.y != 0) {
    r0.y = rowCount * columnCount;
    r1.w = imageTime * r0.y;
    r2.z = r1.w * r0.z;
    r2.z = cmp(r2.z >= -r2.z);
    r2.z = r2.z ? r1.w : -r1.w;
    r3.x = 1 / r2.z;
    r3.x = r3.x * r0.z;
    r3.x = frac(r3.x);
    r2.z = r3.x * r2.z;
    r1.w = r2.z / r1.w;
    r0.y = r1.w * r0.y;
    r0.y = round(r0.y);
    r1.w = r0.y / columnCount;
    r2.z = columnCount * r0.y;
    r2.z = cmp(r2.z >= -r2.z);
    r2.z = r2.z ? columnCount : -columnCount;
    r3.x = 1 / r2.z;
    r0.y = r3.x * r0.y;
    r0.y = frac(r0.y);
    r0.y = r2.z * r0.y;
    r0.y = trunc(r0.y);
    r0.y = v2.x + r0.y;
    r10.x = r0.y / columnCount;
    r0.y = trunc(r1.w);
    r0.y = v2.y + r0.y;
    r10.y = r0.y / rowCount;
  } else {
    r0.y = dot(-v7.xyz, -v7.xyz);
    r0.y = rsqrt(r0.y);
    r11.xyz = -v7.xyz * r0.yyy;
    r12.x = dot(r11.xyz, v5.xyz);
    r12.y = dot(r11.xyz, v6.xyz);
    r0.y = dot(r11.xyz, v4.xyz);
    r1.w = cmp(0 < r0.y);
    r4.zw = -r12.xy / r0.yy;
    r4.zw = r1.ww ? r4.zw : 0;
    r10.zw = float2(-0.5,-0.5) + v2.xy;
    r0.y = 9.99999975e-06 + layerDepth;
    r4.zw = r4.zw * r0.yy;
    r4.zw = scaleUVs.xy * r4.zw;
    r4.zw = r10.zw * scaleUVs.xy + r4.zw;
    r4.zw = offsetUVs.xy * scaleUVs.xy + r4.zw;
    r0.y = rotateUVs.y * r0.z + 1;
    r0.y = rotateUVs.x * r0.y;
    r0.y = 0.0174532924 * r0.y;
    sincos(r0.y, r3.x, r11.x);
    r11.y = r11.x;
    r11.z = r3.x;
    r12.x = dot(r11.yz, r4.zw);
    r11.x = -r3.x;
    r12.y = dot(r11.xy, r4.zw);
    r0.yz = scrollUVs.xy * r0.zz;
    r0.yz = r0.yz * scaleUVs.xy + r12.xy;
    r1.w = gameTime.w * zoomRate;
    r1.w = cos(r1.w);
    r1.w = r1.w * 0.5 + 0.5;
    r1.w = 1 + -r1.w;
    r2.z = zoomUVs.y + -zoomUVs.x;
    r1.w = r1.w * r2.z + zoomUVs.x;
    r0.yz = r0.yz / r1.ww;
    r0.yz = float2(0.5,0.5) + r0.yz;
    r4.zw = saturate(r0.yz);
    r10.xy = clampU ? r4.zw : r0.yz;
  }
  r0.y = dot(-v7.xyz, -v7.xyz);
  r0.y = rsqrt(r0.y);
  r11.xyz = -v7.xyz * r0.yyy;
  r0.z = saturate(dot(r11.xyz, r3.yzw));
  r3.xyzw = emissiveMap.Sample(colorSampler_s, r10.xy).xyzw;
  r3.xyz = r3.xyz * r9.xyz;
  r1.w = log2(r0.z);
  r1.w = emissiveFalloffPower * r1.w;
  r1.w = exp2(r1.w);
  r0.z = 1 + -r0.z;
  r0.z = log2(r0.z);
  r0.z = emissiveFalloffPower * r0.z;
  r0.z = exp2(r0.z);
  r0.z = invertFalloff ? r0.z : r1.w;
  r1.w = cmp(emissiveFalloffPower == 0.000000);
  r0.z = r1.w ? 1 : r0.z;
  r0.x = r3.w * r0.x;
  r0.x = r0.x * r0.z;
  r0.x = r0.x * r2.w;
  r3.xyz = r3.xyz * r0.xxx;
  r0.x = v3.x + v3.y;
  r0.x = v3.z + r0.x;
  r0.x = flickerSeed.y + r0.x;
  r0.x = frac(r0.x);
  r9.y = gameTime.w * flickerSpeed + r0.x;
  r9.x = flickerSeed.x;
  r0.x = flickerLookupMap.SampleLevel(lookupSampler_s, r9.xy, 0).x;
  r0.x = log2(abs(r0.x));
  r0.x = flickerPower * r0.x;
  r0.x = exp2(r0.x);
  r0.z = flickerRange.y + -flickerRange.x;
  r0.x = r0.x * r0.z + flickerRange.x;
  r3.xyz = r3.xyz * r0.xxx;
  r0.x = cmp(isDepthHack != 0);
  r2.zw = (uint2)r4.xy;
  r0.z = dot(r2.wz, float2(0.0671105608,0.00583714992));
  r0.z = frac(r0.z);
  r0.z = 52.9829178 * r0.z;
  r0.z = frac(r0.z);
  r0.z = r0.z * 6.28318548 + gameTick.w;
  sincos(r0.z, r4.x, r9.x);
  r0.z = dot(r2.zw, float2(0.0671105608,0.00583714992));
  r0.z = frac(r0.z);
  r0.z = 52.9829178 * r0.z;
  r0.z = frac(r0.z);
  r0.z = r0.z * 6.28318548 + gameTick.w;
  sincos(r0.z, r10.x, r12.x);
  r2.x = saturate(dot(r5.xyz, r11.xyz));
  r0.z = dot(-r11.xyz, r5.xyz);
  r0.z = r0.z + r0.z;
  r13.xyz = r5.xyz * -r0.zzz + -r11.xyz;
  r0.z = 17 * r2.y;
  r0.z = exp2(r0.z);
  r0.z = 2 + r0.z;
  r0.z = 2 / r0.z;
  r1.w = sqrt(r0.z);
  r2.z = 1 + -r2.y;
  r2.w = 5 * r2.z;
  r4.z = r2.z * 5 + -2.5;
  r4.z = saturate(0.400000006 * r4.z);
  r4.z = 100 * r4.z;
  r10.yz = -r2.zz * float2(10,5) + float2(6.85740995,7.08500004);
  r4.w = exp2(r10.y);
  r4.w = r4.w * r2.x;
  r4.w = 9.1368103 * r4.w;
  r6.w = r2.w * r2.z;
  r6.w = -r6.w * 2.0159049 + r10.z;
  r6.w = exp2(r6.w);
  r6.w = r6.w * r2.x;
  r6.w = 9.70808983 * r6.w;
  r4.w = max(r6.w, r4.w);
  r4.w = max(1.26815999, r4.w);
  r6.w = numRefProbes + -numOverrideProbes;
  r8.w = (int)r6.w & -32;
  r9.w = (int)r6.w + (int)-r8.w;
  r10.y = numRefProbes & -32;
  r10.z = (int)-r10.y + numRefProbes;
  r14.xy = float2(0,0);
  r15.w = 0;
  r16.yz = float2(0,1);
  r17.xy = float2(0,0);
  r18.x = 1;
  r19.xy = float2(0,0);
  r20.xy = float2(0,0);
  r21.xyzw = float4(0,0,0,0);
  r22.yzw = float3(0,0,0);
  r10.w = r8.w;
  while (true) {
    r11.w = cmp((uint)r10.w >= numRefProbes);
    if (r11.w != 0) break;
    r14.z = (uint)r10.w >> 5;
    r15.xyz = (int3)r8.xyz + (int3)r14.xyz;
    r11.w = visibleProbes.Load(r15.xyzw).x;
    r12.y = cmp((int)r8.w == (int)r10.w);
    bitmask.z = ((~(-1 << r9.w)) << 0) & 0xffffffff;  r12.z = (((uint)0 << 0) & bitmask.z) | ((uint)r11.w & ~bitmask.z);
    r11.w = r12.y ? r12.z : r11.w;
    r12.y = cmp((int)r10.y == (int)r10.w);
    if (r10.z == 0) r12.z = 0; else if (r10.z+0 < 32) {     r12.z = (uint)r11.w << (32-(r10.z + 0)); r12.z = (uint)r12.z >> (32-r10.z);    } else r12.z = (uint)r11.w >> 0;
    r11.w = r12.y ? r12.z : r11.w;
    r12.y = (int)r10.w + numLights;
    r23.xyzw = r21.xyzw;
    r24.xyz = r22.yzw;
    r12.z = r11.w;
    while (true) {
      if (r12.z == 0) break;
      r12.w = firstbitlow((uint)r12.z);
      r14.z = 1 << (int)r12.w;
      r14.w = (int)r12.z & (int)r14.z;
      if (r14.w != 0) {
        r12.z = (int)r12.z ^ (int)r14.z;
        r14.z = (int)r12.w + (int)r12.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r25.xyzw, r14.z, l(0), t11.xyzw
      r25.x = samp0[]..swiz;
      r25.y = samp0[]..swiz;
      r25.z = samp0[]..swiz;
      r25.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r15.xy, r14.z, l(16), t11.xyxx
      r15.x = samp0[]..swiz;
      r15.y = samp0[]..swiz;
        r25.xyz = -v7.xyz + r25.xyz;
        r15.z = r25.w;
        r15.xyz = cmp(abs(r25.xyz) < r15.zxy);
        r14.z = r15.y ? r15.x : 0;
        r14.z = r15.z ? r14.z : 0;
        if (r14.z != 0) {
          r12.w = (int)r10.w + (int)r12.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r12.w, l(0), t15.wxyz
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        r25.z = samp0[]..swiz;
        r25.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r14.zw, r12.w, l(96), t15.xxxy
        r14.z = samp0[]..swiz;
        r14.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r12.w, l(116), t15.zwxy
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
        r26.z = samp0[]..swiz;
        r26.w = samp0[]..swiz;
          r15.xyz = v7.xyz + -r25.yzw;
          r16.w = (int)r26.w & 0x0000ffff;
          if (6 == 0) r17.w = 0; else if (6+25 < 32) {           r17.w = (uint)r26.w << (32-(6 + 25)); r17.w = (uint)r17.w >> (32-6);          } else r17.w = (uint)r26.w >> 25;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r16.w, l(0), t16.xyzw
        r27.x = samp0[]..swiz;
        r27.y = samp0[]..swiz;
        r27.z = samp0[]..swiz;
        r27.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r16.w, l(16), t16.xyzw
        r28.x = samp0[]..swiz;
        r28.y = samp0[]..swiz;
        r28.z = samp0[]..swiz;
        r28.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r16.w, l(32), t16.xyzw
        r29.x = samp0[]..swiz;
        r29.y = samp0[]..swiz;
        r29.z = samp0[]..swiz;
        r29.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r16.w, l(48), t16.xyzw
        r30.x = samp0[]..swiz;
        r30.y = samp0[]..swiz;
        r30.z = samp0[]..swiz;
        r30.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r16.w, l(64), t16.xyzw
        r31.x = samp0[]..swiz;
        r31.y = samp0[]..swiz;
        r31.z = samp0[]..swiz;
        r31.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r16.w, l(80), t16.xyzw
        r32.x = samp0[]..swiz;
        r32.y = samp0[]..swiz;
        r32.z = samp0[]..swiz;
        r32.w = samp0[]..swiz;
          r18.z = dot(r27.xyz, r15.xyz);
          r18.z = saturate(r18.z + r27.w);
          r18.w = dot(r28.xyz, r15.xyz);
          r18.w = saturate(r18.w + r28.w);
          r18.z = r18.z * r18.w;
          r18.w = dot(r29.xyz, r15.xyz);
          r18.w = saturate(r18.w + r29.w);
          r18.z = r18.z * r18.w;
          r18.w = dot(r30.xyz, r15.xyz);
          r18.w = saturate(r18.w + r30.w);
          r18.z = r18.z * r18.w;
          r18.w = dot(r31.xyz, r15.xyz);
          r18.w = saturate(r18.w + r31.w);
          r18.z = r18.z * r18.w;
          r18.w = dot(r32.xyz, r15.xyz);
          r18.w = saturate(r18.w + r32.w);
          r16.x = r18.z * r18.w;
          r18.z = (int)r14.z & 1;
          r18.zw = r18.zz ? r16.xy : r16.zx;
          r16.x = r14.z;
          r27.xy = r18.zw;
          r19.w = 1;
          while (true) {
            r20.w = cmp((int)r19.w >= (int)r17.w);
            if (r20.w != 0) break;
            r20.w = (int)r16.w + (int)r19.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r20.w, l(0), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r20.w, l(16), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r20.w, l(32), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r20.w, l(48), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r20.w, l(64), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r20.w, l(80), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
            r20.w = dot(r28.xyz, r15.xyz);
            r20.w = saturate(r20.w + r28.w);
            r20.w = r27.x * r20.w;
            r25.w = dot(r29.xyz, r15.xyz);
            r25.w = saturate(r25.w + r29.w);
            r20.w = r25.w * r20.w;
            r25.w = dot(r30.xyz, r15.xyz);
            r25.w = saturate(r25.w + r30.w);
            r20.w = r25.w * r20.w;
            r25.w = dot(r31.xyz, r15.xyz);
            r25.w = saturate(r25.w + r31.w);
            r20.w = r25.w * r20.w;
            r25.w = dot(r32.xyz, r15.xyz);
            r25.w = saturate(r25.w + r32.w);
            r20.w = r25.w * r20.w;
            r25.w = dot(r33.xyz, r15.xyz);
            r25.w = saturate(r25.w + r33.w);
            r27.x = r25.w * r20.w;
            r27.z = (uint)r16.x >> 2;
            if (1 == 0) r27.w = 0; else if (1+2 < 32) {             r27.w = (uint)r16.x << (32-(1 + 2)); r27.w = (uint)r27.w >> (32-1);            } else r27.w = (uint)r16.x >> 2;
            r28.x = (int)r27.z & 2;
            r28.y = max(r27.y, r27.x);
            r20.w = -r20.w * r25.w + 1;
            r20.w = r27.y * r20.w;
            r18.y = r28.x ? r20.w : r28.y;
            r27.xy = r27.ww ? r27.xy : r18.xy;
            r19.w = (int)r19.w + 1;
            r16.x = r27.z;
          }
          r27.y = saturate(r27.y);
          r14.z = r27.y * r14.w;
          r16.x = cmp(0 < r14.z);
          if (r16.x != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r12.w, l(16), t15.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r12.w, l(32), t15.yxwz
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r12.w, l(48), t15.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r12.w, l(64), t15.zwxy
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r12.w, l(80), t15.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r12.w, l(132), t15.zwxy
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r12.w, l(148), t15.zwxy
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r12.w, l(164), t15.zwxy
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r12.w, l(180), t15.zwxy
          r36.x = samp0[]..swiz;
          r36.y = samp0[]..swiz;
          r36.z = samp0[]..swiz;
          r36.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r12.w, l(196), t15.xyzw
          r37.x = samp0[]..swiz;
          r37.y = samp0[]..swiz;
          r37.z = samp0[]..swiz;
          r37.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xy, r12.w, l(212), t15.xyxx
          r38.x = samp0[]..swiz;
          r38.y = samp0[]..swiz;
            r24.z = r27.y * r14.w + r24.z;
            r12.w = r14.z * r26.z;
            r26.z = r33.z;
            r14.z = dot(r13.xyz, r26.xyz);
            r14.w = dot(r15.xyz, r26.xyz);
            r14.w = r14.w + -r33.w;
            r16.x = cmp(r14.w >= 0);
            r14.w = max(abs(r14.w), r4.z);
            r14.w = r16.x ? r14.w : -r14.w;
            r14.z = max(1.00000001e-07, -r14.z);
            r14.z = r14.w / r14.z;
            r14.z = min(131072, abs(r14.z));
            r33.z = r34.z;
            r14.w = dot(r13.xyz, r33.xyz);
            r16.x = dot(r15.xyz, r33.xyz);
            r16.x = r16.x + -r34.w;
            r16.w = cmp(r16.x >= 0);
            r16.x = max(abs(r16.x), r4.z);
            r16.x = r16.w ? r16.x : -r16.x;
            r14.w = max(1.00000001e-07, -r14.w);
            r14.w = r16.x / r14.w;
            r14.z = min(r14.z, abs(r14.w));
            r34.z = r35.z;
            r14.w = dot(r13.xyz, r34.xyz);
            r16.x = dot(r15.xyz, r34.xyz);
            r16.x = r16.x + -r35.w;
            r16.w = cmp(r16.x >= 0);
            r16.x = max(abs(r16.x), r4.z);
            r16.x = r16.w ? r16.x : -r16.x;
            r14.w = max(1.00000001e-07, -r14.w);
            r14.w = r16.x / r14.w;
            r14.z = min(r14.z, abs(r14.w));
            r35.z = r36.z;
            r14.w = dot(r13.xyz, r35.xyz);
            r16.x = dot(r15.xyz, r35.xyz);
            r16.x = r16.x + -r36.w;
            r16.w = cmp(r16.x >= 0);
            r16.x = max(abs(r16.x), r4.z);
            r16.x = r16.w ? r16.x : -r16.x;
            r14.w = max(1.00000001e-07, -r14.w);
            r14.w = r16.x / r14.w;
            r14.z = min(r14.z, abs(r14.w));
            r36.z = r37.x;
            r14.w = dot(r13.xyz, r36.xyz);
            r16.x = dot(r15.xyz, r36.xyz);
            r16.x = r16.x + -r37.y;
            r16.w = cmp(r16.x >= 0);
            r16.x = max(abs(r16.x), r4.z);
            r16.x = r16.w ? r16.x : -r16.x;
            r14.w = max(1.00000001e-07, -r14.w);
            r14.w = r16.x / r14.w;
            r14.z = min(r14.z, abs(r14.w));
            r38.zw = r37.zw;
            r14.w = dot(r13.zxy, r38.xzw);
            r16.x = dot(r15.zxy, r38.xzw);
            r16.x = r16.x + -r38.y;
            r16.w = cmp(r16.x >= 0);
            r16.x = max(abs(r16.x), r4.z);
            r16.x = r16.w ? r16.x : -r16.x;
            r14.w = max(1.00000001e-07, -r14.w);
            r14.w = r16.x / r14.w;
            r14.z = min(r14.z, abs(r14.w));
            r26.x = r30.w;
            r26.yz = r31.zw;
            r18.yzw = r26.xyz + r15.xyz;
            r18.yzw = r13.xyz * r14.zzz + r18.yzw;
            r14.w = dot(r18.yzw, r18.yzw);
            r14.w = sqrt(r14.w);
            r14.z = r14.z / r14.w;
            r14.z = r14.z + r14.z;
            r14.z = sqrt(r14.z);
            r14.z = r2.z * 5 + r14.z;
            r14.z = -0.844799995 + r14.z;
            r25.y = r28.z;
            r25.z = r29.x;
            r33.x = dot(r18.yzw, r25.xyz);
            r26.xy = r28.xw;
            r26.z = r29.w;
            r33.y = dot(r18.yzw, r26.xyz);
            r29.x = r28.y;
            r33.z = dot(r18.yzw, r29.xyz);
            if (9 == 0) r14.w = 0; else if (9+16 < 32) {             r14.w = (uint)r26.w << (32-(9 + 16)); r14.w = (uint)r14.w >> (32-9);            } else r14.w = (uint)r26.w >> 16;
            r33.w = (uint)r14.w;
            r18.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, r14.z).xyz;
            r28.x = dot(r15.xyz, r25.xyz);
            r28.y = dot(r15.xyz, r26.xyz);
            r28.z = dot(r15.xyz, r29.xyz);
            r15.xyz = saturate(r28.xyz * r30.xyz + float3(0.5,0.5,0.5));
            r31.z = r32.x;
            r15.xyz = r15.xyz * r31.xyz + r32.yzw;
            r33.x = dot(r5.xyz, r25.xyz);
            r33.y = dot(r5.xyz, r26.xyz);
            r33.z = dot(r5.xyz, r29.xyz);
            r25.xyz = cmp(float3(0,0,0) < r33.xyz);
            r17.z = r25.x ? 0 : 0.5;
            r26.xyz = r17.xyz + r15.xyz;
            r26.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
            r27.xzw = r33.xyz * r33.xyz;
            r27.xzw = r27.xzw * r12.www;
            r19.z = r25.y ? 0 : 0.5;
            r25.xyw = r19.xyz + r15.xyz;
            r25.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r25.xyw, 0).xyz;
            r25.xyw = r25.xyw * r27.zzz;
            r25.xyw = r26.xyz * r27.xxx + r25.xyw;
            r20.z = r25.z ? 0 : 0.5;
            r15.xyz = r20.xyz + r15.xyz;
            r15.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r15.xyz, 0).xyz;
            r15.xyz = r15.xyz * r27.www + r25.xyw;
            r25.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, 6).xyz;
            r26.xyz = r25.xyz * r15.xyz;
            r14.z = dot(r26.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r23.xyz = r15.xyz * r25.xyz + r23.xyz;
            r14.w = r14.z * r4.w;
            r15.xyz = r18.yzw * r12.www;
            r12.w = dot(r15.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r12.w = r4.w * r14.z + r12.w;
            r12.w = r14.w / r12.w;
            r25.x = r23.w;
            r25.yz = r24.xy;
            r24.xyw = r15.yzx * r12.www + r25.yzx;
            r23.w = r24.w;
          }
        }
      }
    }
    r21.xyzw = r23.xyzw;
    r22.yzw = r24.xyz;
    r10.w = (int)r10.w + 32;
  }
  r10.y = cmp(r22.w < 1);
  if (r10.y != 0) {
    r14.xy = float2(0,0);
    r15.w = 0;
    r16.yz = float2(0,1);
    r17.xy = float2(0,0);
    r18.x = 1;
    r19.xy = float2(0,0);
    r20.xy = float2(0,0);
    r23.x = r21.w;
    r23.yzw = r22.yzw;
    r10.yzw = r21.xyz;
    r11.w = r22.w;
    r12.y = 0;
    while (true) {
      r12.z = cmp((uint)r12.y >= (uint)r6.w);
      if (r12.z != 0) break;
      r14.z = (uint)r12.y >> 5;
      r15.xyz = (int3)r8.xyz + (int3)r14.xyz;
      r12.z = visibleProbes.Load(r15.xyzw).x;
      r12.w = cmp((int)r8.w == (int)r12.y);
      if (r9.w == 0) r14.z = 0; else if (r9.w+0 < 32) {       r14.z = (uint)r12.z << (32-(r9.w + 0)); r14.z = (uint)r14.z >> (32-r9.w);      } else r14.z = (uint)r12.z >> 0;
      r12.z = r12.w ? r14.z : r12.z;
      r12.w = (int)r12.y + numLights;
      r24.xyzw = r23.xyzw;
      r15.xyz = r10.yzw;
      r14.z = r11.w;
      r14.w = r12.z;
      while (true) {
        if (r14.w == 0) break;
        r16.w = firstbitlow((uint)r14.w);
        r17.w = 1 << (int)r16.w;
        r18.z = (int)r14.w & (int)r17.w;
        if (r18.z != 0) {
          r14.w = (int)r14.w ^ (int)r17.w;
          r17.w = (int)r12.w + (int)r16.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r25.xyzw, r17.w, l(0), t11.xyzw
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        r25.z = samp0[]..swiz;
        r25.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r26.xy, r17.w, l(16), t11.xyxx
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
          r25.xyz = -v7.xyz + r25.xyz;
          r26.z = r25.w;
          r25.xyz = cmp(abs(r25.xyz) < r26.zxy);
          r17.w = r25.y ? r25.x : 0;
          r17.w = r25.z ? r17.w : 0;
          if (r17.w != 0) {
            r16.w = (int)r12.y + (int)r16.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r16.w, l(0), t15.wxyz
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r18.zw, r16.w, l(96), t15.xxxy
          r18.z = samp0[]..swiz;
          r18.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r16.w, l(116), t15.zwxy
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
            r27.xyz = v7.xyz + -r25.yzw;
            r17.w = (int)r26.w & 0x0000ffff;
            if (6 == 0) r19.w = 0; else if (6+25 < 32) {             r19.w = (uint)r26.w << (32-(6 + 25)); r19.w = (uint)r19.w >> (32-6);            } else r19.w = (uint)r26.w >> 25;
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
            r20.w = dot(r28.xyz, r27.xyz);
            r20.w = saturate(r20.w + r28.w);
            r25.w = dot(r29.xyz, r27.xyz);
            r25.w = saturate(r25.w + r29.w);
            r20.w = r25.w * r20.w;
            r25.w = dot(r30.xyz, r27.xyz);
            r25.w = saturate(r25.w + r30.w);
            r20.w = r25.w * r20.w;
            r25.w = dot(r31.xyz, r27.xyz);
            r25.w = saturate(r25.w + r31.w);
            r20.w = r25.w * r20.w;
            r25.w = dot(r32.xyz, r27.xyz);
            r25.w = saturate(r25.w + r32.w);
            r20.w = r25.w * r20.w;
            r25.w = dot(r33.xyz, r27.xyz);
            r25.w = saturate(r25.w + r33.w);
            r16.x = r25.w * r20.w;
            r20.w = (int)r18.z & 1;
            r28.xy = r20.ww ? r16.xy : r16.zx;
            r16.x = r18.z;
            r29.xy = r28.xy;
            r20.w = 1;
            while (true) {
              r25.w = cmp((int)r20.w >= (int)r19.w);
              if (r25.w != 0) break;
              r25.w = (int)r17.w + (int)r20.w;
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
              r25.w = dot(r30.xyz, r27.xyz);
              r25.w = saturate(r25.w + r30.w);
              r25.w = r29.x * r25.w;
              r27.w = dot(r31.xyz, r27.xyz);
              r27.w = saturate(r27.w + r31.w);
              r25.w = r27.w * r25.w;
              r27.w = dot(r32.xyz, r27.xyz);
              r27.w = saturate(r27.w + r32.w);
              r25.w = r27.w * r25.w;
              r27.w = dot(r33.xyz, r27.xyz);
              r27.w = saturate(r27.w + r33.w);
              r25.w = r27.w * r25.w;
              r27.w = dot(r34.xyz, r27.xyz);
              r27.w = saturate(r27.w + r34.w);
              r25.w = r27.w * r25.w;
              r27.w = dot(r35.xyz, r27.xyz);
              r27.w = saturate(r27.w + r35.w);
              r29.x = r27.w * r25.w;
              r28.z = (uint)r16.x >> 2;
              if (1 == 0) r28.w = 0; else if (1+2 < 32) {               r28.w = (uint)r16.x << (32-(1 + 2)); r28.w = (uint)r28.w >> (32-1);              } else r28.w = (uint)r16.x >> 2;
              r29.z = (int)r28.z & 2;
              r29.w = max(r29.y, r29.x);
              r25.w = -r25.w * r27.w + 1;
              r25.w = r29.y * r25.w;
              r18.y = r29.z ? r25.w : r29.w;
              r29.xy = r28.ww ? r29.xy : r18.xy;
              r20.w = (int)r20.w + 1;
              r16.x = r28.z;
            }
            r16.x = saturate(r29.y + -r14.z);
            r17.w = r16.x * r18.w;
            r18.y = cmp(0 < r17.w);
            if (r18.y != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r16.w, l(16), t15.xyzw
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
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
              r24.w = r16.x * r18.w + r24.w;
              r16.x = r17.w * r26.z;
              r26.z = r34.z;
              r16.w = dot(r13.xyz, r26.xyz);
              r17.w = dot(r27.xyz, r26.xyz);
              r17.w = r17.w + -r34.w;
              r18.y = cmp(r17.w >= 0);
              r17.w = max(abs(r17.w), r4.z);
              r17.w = r18.y ? r17.w : -r17.w;
              r16.w = max(1.00000001e-07, -r16.w);
              r16.w = r17.w / r16.w;
              r16.w = min(131072, abs(r16.w));
              r34.z = r35.z;
              r17.w = dot(r13.xyz, r34.xyz);
              r18.y = dot(r27.xyz, r34.xyz);
              r18.y = r18.y + -r35.w;
              r18.z = cmp(r18.y >= 0);
              r18.y = max(abs(r18.y), r4.z);
              r18.y = r18.z ? r18.y : -r18.y;
              r17.w = max(1.00000001e-07, -r17.w);
              r17.w = r18.y / r17.w;
              r16.w = min(abs(r17.w), r16.w);
              r35.z = r36.z;
              r17.w = dot(r13.xyz, r35.xyz);
              r18.y = dot(r27.xyz, r35.xyz);
              r18.y = r18.y + -r36.w;
              r18.z = cmp(r18.y >= 0);
              r18.y = max(abs(r18.y), r4.z);
              r18.y = r18.z ? r18.y : -r18.y;
              r17.w = max(1.00000001e-07, -r17.w);
              r17.w = r18.y / r17.w;
              r16.w = min(abs(r17.w), r16.w);
              r36.z = r37.z;
              r17.w = dot(r13.xyz, r36.xyz);
              r18.y = dot(r27.xyz, r36.xyz);
              r18.y = r18.y + -r37.w;
              r18.z = cmp(r18.y >= 0);
              r18.y = max(abs(r18.y), r4.z);
              r18.y = r18.z ? r18.y : -r18.y;
              r17.w = max(1.00000001e-07, -r17.w);
              r17.w = r18.y / r17.w;
              r16.w = min(abs(r17.w), r16.w);
              r37.z = r38.x;
              r17.w = dot(r13.xyz, r37.xyz);
              r18.y = dot(r27.xyz, r37.xyz);
              r18.y = r18.y + -r38.y;
              r18.z = cmp(r18.y >= 0);
              r18.y = max(abs(r18.y), r4.z);
              r18.y = r18.z ? r18.y : -r18.y;
              r17.w = max(1.00000001e-07, -r17.w);
              r17.w = r18.y / r17.w;
              r16.w = min(abs(r17.w), r16.w);
              r39.zw = r38.zw;
              r17.w = dot(r13.zxy, r39.xzw);
              r18.y = dot(r27.zxy, r39.xzw);
              r18.y = r18.y + -r39.y;
              r18.z = cmp(r18.y >= 0);
              r18.y = max(abs(r18.y), r4.z);
              r18.y = r18.z ? r18.y : -r18.y;
              r17.w = max(1.00000001e-07, -r17.w);
              r17.w = r18.y / r17.w;
              r16.w = min(abs(r17.w), r16.w);
              r26.x = r31.w;
              r26.yz = r32.zw;
              r18.yzw = r26.xyz + r27.xyz;
              r18.yzw = r13.xyz * r16.www + r18.yzw;
              r17.w = dot(r18.yzw, r18.yzw);
              r17.w = sqrt(r17.w);
              r16.w = r16.w / r17.w;
              r16.w = r16.w + r16.w;
              r16.w = sqrt(r16.w);
              r16.w = r2.z * 5 + r16.w;
              r16.w = -0.844799995 + r16.w;
              r25.y = r28.z;
              r25.z = r30.x;
              r34.x = dot(r18.yzw, r25.xyz);
              r26.xy = r28.xw;
              r26.z = r30.w;
              r34.y = dot(r18.yzw, r26.xyz);
              r30.x = r28.y;
              r34.z = dot(r18.yzw, r30.xyz);
              if (9 == 0) r17.w = 0; else if (9+16 < 32) {               r17.w = (uint)r26.w << (32-(9 + 16)); r17.w = (uint)r17.w >> (32-9);              } else r17.w = (uint)r26.w >> 16;
              r34.w = (uint)r17.w;
              r18.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, r16.w).xyz;
              r28.x = dot(r27.xyz, r25.xyz);
              r28.y = dot(r27.xyz, r26.xyz);
              r28.z = dot(r27.xyz, r30.xyz);
              r27.xyz = saturate(r28.xyz * r31.xyz + float3(0.5,0.5,0.5));
              r32.z = r33.x;
              r27.xyz = r27.xyz * r32.xyz + r33.yzw;
              r34.x = dot(r5.xyz, r25.xyz);
              r34.y = dot(r5.xyz, r26.xyz);
              r34.z = dot(r5.xyz, r30.xyz);
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
              r16.w = dot(r27.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r15.xyz = r25.xyz * r26.xyz + r15.xyz;
              r17.z = r16.w * r4.w;
              r18.yzw = r18.yzw * r16.xxx;
              r16.x = dot(r18.yzw, float3(0.212599993,0.715200007,0.0722000003));
              r16.x = r4.w * r16.w + r16.x;
              r16.x = r17.z / r16.x;
              r24.xyz = r18.yzw * r16.xxx + r24.xyz;
            }
          }
        }
      }
      r23.xyzw = r24.xyzw;
      r10.yzw = r15.xyz;
      r12.y = (int)r12.y + 32;
    }
    r22.xyzw = r23.zxyw;
    r21.xyz = r10.yzw;
    r22.xyzw = r22.yzxw;
  } else {
    r22.x = r21.w;
  }
  r2.z = max(1, r22.w);
  r2.z = rcp(r2.z);
  r22.w = saturate(r22.w);
  r14.xyz = r21.xyz * r2.zzz;
  r10.yzw = r22.xyz * r2.zzz;
  r4.z = cmp(r22.w < 0.99000001);
  if (r4.z != 0) {
    r4.z = 1 + -r22.w;
    r4.w = sunConstants.globalProbeExposure * r4.z;
    r12.yzw = -globalProbeConstants.data[0].xyz + v7.xyz;
    r15.x = globalProbeConstants.data[0].w * r12.y;
    r15.yz = globalProbeConstants.data[1].xy * r12.zw;
    r12.yzw = saturate(float3(0.5,0.5,0.5) + r15.xyz);
    r15.xy = globalProbeConstants.data[1].zw * r12.yz;
    r15.z = globalProbeConstants.data[2].x * r12.w;
    r12.yzw = globalProbeConstants.data[2].yzw + r15.xyz;
    r15.xyz = cmp(float3(0,0,0) < r5.xyz);
    r15.xyz = r15.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r15.w = 0;
    r16.xyz = r15.wwx + r12.yzw;
    r16.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r16.xyz, 0).xyz;
    r17.xyz = r5.xyz * r5.xyz;
    r17.xyz = r17.xyz * r4.www;
    r18.xyz = r15.wwy + r12.yzw;
    r18.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r18.xyz, 0).xyz;
    r18.xyz = r18.xyz * r17.yyy;
    r16.xyz = r16.xyz * r17.xxx + r18.xyz;
    r12.yzw = r15.wwz + r12.yzw;
    r12.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r12.yzw, 0).xyz;
    r12.yzw = r12.yzw * r17.zzz + r16.xyz;
    r5.w = 0;
    r15.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r5.xyzw, 6).xyz;
    r12.yzw = r15.xyz * r12.yzw;
    r4.w = dot(r12.yzw, float3(0.212599993,0.715200007,0.0722000003));
    r14.xyz = r21.xyz * r2.zzz + r12.yzw;
    r13.w = 0;
    r12.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r13.xyzw, r2.w).xyz;
    r2.z = sunConstants.globalProbeExposure * r4.z + -r4.w;
    r2.z = r2.y * r2.z + r4.w;
    r10.yzw = r12.yzw * r2.zzz + r10.yzw;
  }
  r2.yz = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r2.yz = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r2.yz, 0).xy;
  r15.xyz = r10.zwy * r2.yyy;
  r2.yzw = r10.yzw * r2.zzz;
  r4.z = sqrt(r1.w);
  r4.z = r4.z * 0.5 + 0.5;
  r4.z = r4.z * r4.z;
  r4.w = 0.5 * r4.z;
  r4.z = -r4.z * 0.5 + 1;
  r5.w = r2.x * r4.z + r4.w;
  r4.zw = r5.ww * r4.zw;
  r5.w = dot(r5.xyz, sunConstants.wldDir.xyz);
  r6.w = saturate(r5.w);
  r8.w = cmp(0 >= r6.w);
  if (r8.w != 0) {
    r9.w = 0;
  }
  if (r8.w == 0) {
    r10.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v7.yyy;
    r10.yzw = v7.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r10.yzw;
    r10.yzw = v7.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r10.yzw;
    r10.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r10.yzw;
    r8.w = -sunConstants.splitDepthOffset + r10.w;
    r8.w = -r8.w * 6.10351563e-05 + 1;
    r11.w = saturate(r8.w);
    r11.w = cmp(r8.w == r11.w);
    if (r11.w != 0) {
      r11.w = 0;
      r12.y = 0;
      while (true) {
        r12.z = cmp(r11.w >= 3);
        if (r12.z != 0) break;
        r12.z = (uint)r11.w;
        r16.xy = -sunConstants.splitPinTransform[r12.z].xy + r10.yz;
        r12.w = max(abs(r16.x), abs(r16.y));
        r12.y = sunConstants.splitPinTransform[r12.z].z * r12.w;
        r12.z = cmp(r12.y < 1);
        if (r12.z != 0) {
          break;
        }
        r11.w = 1 + r11.w;
        r12.y = 0;
      }
    } else {
      r11.w = 3;
      r12.y = 0;
    }
    r12.z = cmp(r11.w >= 3);
    if (r12.z != 0) {
      r16.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r17.xz = rcp(r16.xx);
      r17.y = -r17.z;
      r16.xyz = r10.yzy * r17.xyz + r16.yzy;
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
          r16.x = r10.y * r16.y + r16.x;
          r13.w = r10.z * r13.w + r16.x;
          r17.x = r12.w ? r13.w : r17.x;
        }
      }
      r10.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r10.w;
      r10.w = cmp(r17.x < r10.w);
      r9.w = r10.w ? 0 : 1;
    }
    if (r12.z == 0) {
      if (enableDitheredShadow == 0) {
        r10.w = (uint)r11.w;
        r12.zw = -sunConstants.splitPinTransform[r10.w].xy + r10.yz;
        r12.zw = sunConstants.splitPinTransform[r10.w].zz * r12.zw;
        r16.xy = r12.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.w = (int16)sunConstants.splitArrayOffset;
        r16.z = r11.w + r10.w;
        r10.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r8.w).x;
        r12.z = gTransShadowmapArray.SampleLevel(samp0_s, r16.xyz, 0).x;
        r10.w = r12.z + r10.w;
        r10.w = saturate(-1 + r10.w);
        r12.z = r10.w * r10.w;
        r9.w = r12.z * r10.w;
      }
      if (enableDitheredShadow != 0) {
        r16.x = -r4.x;
        r10.w = (uint)r11.w;
        r11.w = 1 + r11.w;
        r11.w = min(2, r11.w);
        r11.w = (uint)r11.w;
        r12.y = 1 + -r12.y;
        r12.y = 28 * r12.y;
        r12.y = (uint)r12.y;
        r12.zw = -sunConstants.splitPinTransform[r10.w].xy + r10.yz;
        r12.zw = sunConstants.splitPinTransform[r10.w].zz * r12.zw;
        r12.zw = r12.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.yz = -sunConstants.splitPinTransform[r11.w].xy + r10.yz;
        r10.yz = sunConstants.splitPinTransform[r11.w].zz * r10.yz;
        r10.yz = r10.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r16.y = r9.x;
        r16.z = r4.x;
        r13.w = 0;
        r16.w = 0;
        while (true) {
          r17.x = cmp((uint)r16.w >= 8);
          if (r17.x != 0) break;
          r17.x = cmp((uint)r12.y < (uint)r16.w);
          r17.yz = r17.xx ? r10.yz : r12.zw;
          r17.w = r17.x ? sunConstants.splitPinTransform[r11.w].w : sunConstants.splitPinTransform[r10.w].w;
          r17.x = r17.x ? r11.w : r10.w;
          r18.x = dot(icb[r16.w+0].yx, r16.xy);
          r18.y = dot(icb[r16.w+0].yx, r16.yz);
          r18.xy = r18.xy * r17.ww + r17.yz;
          r17.x = (int)r17.x + (int16)sunConstants.splitArrayOffset;
          r18.z = (uint)r17.x;
          r17.x = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r8.w).x;
          r17.y = gTransShadowmapArray.SampleLevel(samp0_s, r18.xyz, 0).x;
          r17.x = r17.x + r17.y;
          r17.x = saturate(-1 + r17.x);
          r13.w = r17.x * 0.125 + r13.w;
          r16.w = (int)r16.w + 1;
        }
        r8.w = r13.w * r13.w;
        r9.w = r8.w * r13.w;
      }
    }
  }
  r8.w = cmp(0 < r6.w);
  if (r8.w != 0) {
    r8.w = cmp(0 < r9.w);
    if (r8.w != 0) {
      r8.w = sunConstants.specScale * r0.z;
      r8.w = r8.w * r6.w;
      if (sunConstants.sunCookieIndex != 0) {
        r7.w = 1;
        r10.y = dot(sunConstants.sunCookieTransform[0].xyzw, r7.xyzw);
        r7.x = dot(sunConstants.sunCookieTransform[1].xyzw, r7.xyzw);
        r16.x = frac(r10.y);
        r16.y = frac(r7.x);
        r7.x = -1 + (int14)sunConstants.sunCookieIndex;
        r16.z = (uint)r7.x;
        r7.xyz = gCookieArray.SampleLevel(samplerLinear_s, r16.xyz, 0).xyz;
        r7.xyz = float3(-1,-1,-1) + r7.xyz;
        r7.xyz = sunConstants.sunCookieIntensity * r7.xyz + float3(1,1,1);
        r7.xyz = sunConstants.color.xyz * r7.xyz;
      } else {
        r7.xyz = sunConstants.color.xyz;
      }
      r7.w = viewmodelSunShadowRaw >> 16;
      r10.y = cmp(0 < (uint)r7.w);
      r10.y = r0.x ? r10.y : 0;
      if (r10.y != 0) {
        r7.w = (int)r7.w + numLights;
        r7.w = (int)r7.w + -1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.y, r7.w, l(52), t12.xxxx
      r10.y = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r7.w, l(68), t12.xyzw
      r16.x = samp0[]..swiz;
      r16.y = samp0[]..swiz;
      r16.z = samp0[]..swiz;
      r16.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r7.w, l(84), t12.xyzw
      r17.x = samp0[]..swiz;
      r17.y = samp0[]..swiz;
      r17.z = samp0[]..swiz;
      r17.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r7.w, l(132), t12.xyzw
      r18.x = samp0[]..swiz;
      r18.y = samp0[]..swiz;
      r18.z = samp0[]..swiz;
      r18.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.xyzw, r7.w, l(148), t12.xyzw
      r19.x = samp0[]..swiz;
      r19.y = samp0[]..swiz;
      r19.z = samp0[]..swiz;
      r19.w = samp0[]..swiz;
        r10.z = abs(r5.w) * -0.200000003 + 0.400000006;
        r20.xyz = r5.xyz * r10.zzz + v7.xyz;
        r20.w = 1;
        r16.x = dot(r16.xyzw, r20.xyzw);
        r16.y = dot(r17.xyzw, r20.xyzw);
        r10.zw = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.zw = r10.zw + r19.zw;
        r10.zw = r10.zw * r19.xy;
        r12.yz = r10.yy / r18.xz;
        r16.xy = float2(1,1) + -r12.yz;
        r16.xy = cmp(r10.zw >= r16.xy);
        r12.yz = cmp(r12.yz >= r10.zw);
        r12.yz = (int2)r12.yz | (int2)r16.xy;
        r11.w = (int)r12.z | (int)r12.y;
        if (r11.w == 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.w, r7.w, l(28), t12.xxxx
        r11.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r7.w, l(100), t12.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.yz, r7.w, l(164), t12.xxyx
        r12.y = samp0[]..swiz;
        r12.z = samp0[]..swiz;
          r7.w = dot(r16.xyzw, r20.xyzw);
          r10.zw = saturate(r10.zw);
          r16.xy = r10.zw * r18.xz + r18.yw;
          r7.w = r7.w + r12.y;
          r7.w = r7.w / r12.z;
          r7.w = max(6.10351563e-05, r7.w);
          r10.z = (int)r11.w & 0x0000ffff;
          if (enableDitheredShadow != 0) {
            r17.x = -r4.x;
            r18.z = (uint)r10.z;
            r17.y = r9.x;
            r17.z = r4.x;
            r10.w = 0;
            r11.w = 0;
            while (true) {
              r12.y = cmp((int)r11.w >= 8);
              if (r12.y != 0) break;
              r19.x = dot(icb[r11.w+0].yx, r17.xy);
              r19.y = dot(icb[r11.w+0].yx, r17.yz);
              r18.xy = r19.xy * r10.yy + r16.xy;
              r12.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r7.w).x;
              r10.w = r12.y * 0.125 + r10.w;
              r11.w = (int)r11.w + 1;
            }
          } else {
            r16.z = (uint)r10.z;
            r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r7.w).x;
          }
          r7.w = r10.w * r10.w;
          r7.w = r7.w * r10.w;
        } else {
          r7.w = 1;
        }
        r9.w = r9.w * r7.w;
      } else {
        r7.w = viewmodelSunShadowRaw & 0x0000ffff;
        r10.y = cmp(0 < (uint)r7.w);
        r10.z = ~(int)r0.x;
        r10.y = r10.y ? r10.z : 0;
        if (r10.y != 0) {
          r7.w = (int)r7.w + numLights;
          r7.w = (int)r7.w + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.y, r7.w, l(52), t12.xxxx
        r10.y = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r7.w, l(68), t12.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r7.w, l(84), t12.xyzw
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r7.w, l(132), t12.xyzw
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
        r18.z = samp0[]..swiz;
        r18.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.xyzw, r7.w, l(148), t12.xyzw
        r19.x = samp0[]..swiz;
        r19.y = samp0[]..swiz;
        r19.z = samp0[]..swiz;
        r19.w = samp0[]..swiz;
          r10.z = abs(r5.w) * -0.200000003 + 0.400000006;
          r20.xyz = r5.xyz * r10.zzz + v7.xyz;
          r20.w = 1;
          r16.x = dot(r16.xyzw, r20.xyzw);
          r16.y = dot(r17.xyzw, r20.xyzw);
          r10.zw = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r10.zw = r10.zw + r19.zw;
          r10.zw = r10.zw * r19.xy;
          r12.yz = r10.yy / r18.xz;
          r16.xy = float2(1,1) + -r12.yz;
          r16.xy = cmp(r10.zw >= r16.xy);
          r12.yz = cmp(r12.yz >= r10.zw);
          r12.yz = (int2)r12.yz | (int2)r16.xy;
          r11.w = (int)r12.z | (int)r12.y;
          if (r11.w == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.w, r7.w, l(28), t12.xxxx
          r11.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r7.w, l(100), t12.xyzw
          r16.x = samp0[]..swiz;
          r16.y = samp0[]..swiz;
          r16.z = samp0[]..swiz;
          r16.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.yz, r7.w, l(164), t12.xxyx
          r12.y = samp0[]..swiz;
          r12.z = samp0[]..swiz;
            r7.w = dot(r16.xyzw, r20.xyzw);
            r10.zw = saturate(r10.zw);
            r16.xy = r10.zw * r18.xz + r18.yw;
            r7.w = r7.w + r12.y;
            r7.w = r7.w / r12.z;
            r7.w = max(6.10351563e-05, r7.w);
            r10.z = (int)r11.w & 0x0000ffff;
            if (enableDitheredShadow != 0) {
              r17.x = -r4.x;
              r18.z = (uint)r10.z;
              r17.y = r9.x;
              r17.z = r4.x;
              r10.w = 0;
              r11.w = 0;
              while (true) {
                r12.y = cmp((int)r11.w >= 8);
                if (r12.y != 0) break;
                r19.x = dot(icb[r11.w+0].yx, r17.xy);
                r19.y = dot(icb[r11.w+0].yx, r17.yz);
                r18.xy = r19.xy * r10.yy + r16.xy;
                r12.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r7.w).x;
                r10.w = r12.y * 0.125 + r10.w;
                r11.w = (int)r11.w + 1;
              }
            } else {
              r16.z = (uint)r10.z;
              r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r7.w).x;
            }
            r7.w = r10.w * r10.w;
            r7.w = r7.w * r10.w;
          } else {
            r7.w = 1;
          }
          r9.w = r9.w * r7.w;
        }
      }
      r7.w = -r2.x * 0.5 + 1;
      r7.w = -r6.w * r7.w + 1;
      r7.w = r7.w * r7.w;
      r7.w = -r7.w * 0.620000005 + 0.620000005;
      r7.w = r7.w + -r6.w;
      r7.w = r1.w * r7.w + r6.w;
      r7.w = r7.w * r9.w;
      r5.w = cmp(0 < r5.w);
      r16.xyz = r7.www * r7.xyz + r14.xyz;
      r10.yzw = -v7.xyz * r0.yyy + sunConstants.wldDir.xyz;
      r0.y = dot(r10.yzw, r10.yzw);
      r0.y = rsqrt(r0.y);
      r10.yzw = r10.yzw * r0.yyy;
      r0.y = dot(r10.yzw, r11.xyz);
      r7.w = dot(r5.xyz, r10.yzw);
      r10.y = abs(r7.w) * r0.z + -abs(r7.w);
      r7.w = abs(r7.w) * r10.y + 1;
      r6.w = r6.w * r4.z + r4.w;
      r7.w = r7.w * r7.w;
      r6.w = r7.w * r6.w;
      r6.w = rcp(r6.w);
      r6.w = r6.w * r8.w;
      r6.w = r9.w * r6.w;
      r6.w = 0.25 * r6.w;
      r10.yzw = r6.www * r7.xyz + r2.yzw;
      r0.y = saturate(1 + -r0.y);
      r7.w = r0.y * r0.y;
      r7.w = r7.w * r7.w;
      r0.y = r7.w * r0.y;
      r0.y = r6.w * r0.y;
      r7.xyz = r0.yyy * r7.yzx + r15.xyz;
      r16.w = r7.z;
      r14.w = r15.z;
      r14.xyzw = r5.wwww ? r16.xyzw : r14.xyzw;
      r7.zw = r10.yz;
      r15.zw = r2.yz;
      r7.xyzw = r5.wwww ? r7.xyzw : r15.xyzw;
      r2.w = r5.w ? r10.w : r2.w;
      r15.z = r14.w;
      r15.xy = r7.xy;
      r2.yz = r7.zw;
    }
  }
  r7.x = -r4.x;
  r0.y = ~(int)r0.x;
  r2.x = -r2.x * 0.5 + 1;
  r16.xy = float2(0,0);
  r17.w = 0;
  r18.xyz = v7.xyz;
  r18.w = 1;
  r19.w = 1;
  r7.z = r4.x;
  r20.w = 1;
  r21.z = 1;
  r22.w = 1;
  r7.yw = r9.xx;
  r4.y = r7.w;
  r23.w = 1;
  r9.y = r7.x;
  r9.z = r4.x;
  r24.w = 1;
  r25.x = r9.x;
  r25.y = r7.x;
  r25.z = r4.x;
  r26.x = r9.x;
  r26.y = r7.x;
  r26.z = r4.x;
  r27.x = r9.x;
  r27.y = r7.x;
  r27.z = r4.x;
  r10.yzw = r14.xyz;
  r28.xyz = r15.zxy;
  r29.xyz = r2.yzw;
  r5.w = enableDitheredShadow;
  r6.w = 0;
  while (true) {
    r8.w = cmp((uint)r6.w >= numLights);
    if (r8.w != 0) break;
    r16.z = (uint)r6.w >> 5;
    r17.xyz = (int3)r8.xyz + (int3)r16.xyz;
    r8.w = visibleLights.Load(r17.xyzw).x;
    r12.yzw = r10.yzw;
    r17.xyz = r28.xyz;
    r30.xyz = r29.xyz;
    r9.w = r5.w;
    r11.w = r8.w;
    while (true) {
      if (r11.w == 0) break;
      r13.w = firstbitlow((uint)r11.w);
      r14.w = 1 << (int)r13.w;
      r15.w = (int)r11.w & (int)r14.w;
      if (r15.w != 0) {
        r11.w = (int)r11.w ^ (int)r14.w;
        r13.w = (int)r6.w + (int)r13.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r31.xyzw, r13.w, l(0), t11.xyzw
      r31.x = samp0[]..swiz;
      r31.y = samp0[]..swiz;
      r31.z = samp0[]..swiz;
      r31.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r32.xy, r13.w, l(16), t11.xyxx
      r32.x = samp0[]..swiz;
      r32.y = samp0[]..swiz;
        r31.xyz = -v7.xyz + r31.xyz;
        r32.z = r31.w;
        r31.xyz = cmp(abs(r31.xyz) < r32.zxy);
        r14.w = r31.y ? r31.x : 0;
        r14.w = r31.z ? r14.w : 0;
        if (r14.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r13.w, l(0), t12.wxyz
        r31.x = samp0[]..swiz;
        r31.y = samp0[]..swiz;
        r31.z = samp0[]..swiz;
        r31.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r13.w, l(16), t12.zxyw
        r32.x = samp0[]..swiz;
        r32.y = samp0[]..swiz;
        r32.z = samp0[]..swiz;
        r32.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r13.w, l(32), t12.xyzw
        r33.x = samp0[]..swiz;
        r33.y = samp0[]..swiz;
        r33.z = samp0[]..swiz;
        r33.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r13.w, l(48), t12.xyzw
        r34.x = samp0[]..swiz;
        r34.y = samp0[]..swiz;
        r34.z = samp0[]..swiz;
        r34.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r13.w, l(64), t12.yzwx
        r35.x = samp0[]..swiz;
        r35.y = samp0[]..swiz;
        r35.z = samp0[]..swiz;
        r35.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r13.w, l(80), t12.xyzw
        r36.x = samp0[]..swiz;
        r36.y = samp0[]..swiz;
        r36.z = samp0[]..swiz;
        r36.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r13.w, l(96), t12.yzwx
        r37.x = samp0[]..swiz;
        r37.y = samp0[]..swiz;
        r37.z = samp0[]..swiz;
        r37.w = samp0[]..swiz;
          if (3 == 0) r14.w = 0; else if (3+24 < 32) {           r14.w = (uint)r32.w << (32-(3 + 24)); r14.w = (uint)r14.w >> (32-3);          } else r14.w = (uint)r32.w >> 24;
          switch (r14.w) {
            case 4 :            r14.w = cmp(0 < r37.x);
            r38.xy = r36.zw;
            r38.z = r37.w;
            r39.xyz = -r38.xyz * float3(0.5,0.5,0.5) + r31.yzw;
            r40.xyz = -v7.xyz + r39.xyz;
            r15.w = dot(r38.xyz, r40.xyz);
            r16.z = saturate(-r15.w / r37.x);
            r41.xyz = r16.zzz * r38.xyz + r39.xyz;
            r41.xyz = r14.www ? r41.xyz : r31.yzw;
            r41.xyz = -v7.xyz + r41.xyz;
            r16.w = dot(r41.xyz, r41.xyz);
            r21.w = rsqrt(r16.w);
            r41.xyz = r41.xyz * r21.www;
            r21.w = dot(r5.xyz, r41.xyz);
            r25.w = saturate(r21.w);
            r26.w = cmp(0 < r25.w);
            if (r26.w != 0) {
              r26.w = sqrt(r16.w);
              r27.w = r34.x * r34.x;
              r16.w = r27.w / r16.w;
              r16.w = min(1, r16.w);
              r41.xy = saturate(r26.ww * r33.xz + r33.yw);
              r41.zw = r41.xy * r41.xy;
              r41.xy = r41.xy * float2(-2,-2) + float2(3,3);
              r41.xy = r41.zw * r41.xy;
              r16.w = r41.x * r16.w;
              r16.w = r16.w * r41.y;
              r26.w = cmp(0 < r16.w);
              if (r26.w != 0) {
                if (3 == 0) r26.w = 0; else if (3+27 < 32) {                 r26.w = (uint)r32.w << (32-(3 + 27)); r26.w = (uint)r26.w >> (32-3);                } else r26.w = (uint)r32.w >> 27;
                r26.w = cmp((int)r26.w != 1);
                if (r26.w != 0) {
                  r26.w = abs(r21.w) * -0.200000003 + 0.400000006;
                  r41.xyz = r5.xyz * r26.www + v7.xyz;
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
                    r43.y = dot(icb[r29.w+0].yx, r7.xy);
                    r43.z = dot(icb[r29.w+0].yx, r7.yz);
                    r43.yz = r43.yz * r34.yy;
                    r43.x = r43.y * r12.x;
                    r43.w = r43.y * r10.x;
                    r42.xyz = r41.xyz * r27.www + r43.xzw;
                    r30.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r42.xyzw, r26.w).x;
                    r28.w = r30.w * 0.125 + r28.w;
                    r29.w = (int)r29.w + 1;
                  }
                } else {
                  r28.w = 1;
                }
                r16.w = r28.w * r16.w;
                r26.w = cmp(0 < r16.w);
                if (r26.w != 0) {
                  r26.w = r32.x * r0.z;
                  r26.w = 0.25 * r26.w;
                  r27.w = dot(r38.xyz, r13.xyz);
                  r29.w = dot(r13.xyz, r40.xyz);
                  r30.w = -r27.w * r27.w + r37.x;
                  r15.w = r27.w * r29.w + -r15.w;
                  r15.w = saturate(r15.w / r30.w);
                  r27.w = r30.w / r37.x;
                  r27.w = 10 * r27.w;
                  r27.w = min(1, r27.w);
                  r15.w = r15.w + -r16.z;
                  r15.w = r27.w * r15.w + r16.z;
                  r38.xyz = r15.www * r38.xyz + r39.xyz;
                  r38.xyz = r14.www ? r38.xyz : r31.yzw;
                  r38.xyz = -v7.xyz + r38.xyz;
                  r14.w = dot(r38.xyz, r38.xyz);
                  r14.w = rsqrt(r14.w);
                  r39.xyz = r38.xyz * r14.www;
                  if (4 == 0) r15.w = 0; else if (4+16 < 32) {                   r15.w = (uint)r32.w << (32-(4 + 16)); r15.w = (uint)r15.w >> (32-4);                  } else r15.w = (uint)r32.w >> 16;
                  r16.z = cmp(0 < (uint)r15.w);
                  r16.z = r0.x ? r16.z : 0;
                  if (r16.z != 0) {
                    r15.w = (int)r15.w + numLights;
                    r15.w = (int)r15.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.z, r15.w, l(52), t12.xxxx
                  r16.z = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r15.w, l(100), t12.xyzw
                  r40.x = samp0[]..swiz;
                  r40.y = samp0[]..swiz;
                  r40.z = samp0[]..swiz;
                  r40.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r15.w, l(116), t12.xyzw
                  r41.x = samp0[]..swiz;
                  r41.y = samp0[]..swiz;
                  r41.z = samp0[]..swiz;
                  r41.w = samp0[]..swiz;
                    r27.w = abs(r21.w) * -0.200000003 + 0.400000006;
                    r19.xyz = r5.xyz * r27.www + v7.xyz;
                    r27.w = dot(r40.xyzw, r19.xyzw);
                    r29.w = dot(r41.xyzw, r19.xyzw);
                    r30.w = cmp(r29.w < r27.w);
                    if (r30.w == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r15.w, l(68), t12.xyzw
                    r40.x = samp0[]..swiz;
                    r40.y = samp0[]..swiz;
                    r40.z = samp0[]..swiz;
                    r40.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r15.w, l(84), t12.xyzw
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r15.w, l(132), t12.xyzw
                    r42.x = samp0[]..swiz;
                    r42.y = samp0[]..swiz;
                    r42.z = samp0[]..swiz;
                    r42.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r15.w, l(148), t12.xyzw
                    r43.x = samp0[]..swiz;
                    r43.y = samp0[]..swiz;
                    r43.z = samp0[]..swiz;
                    r43.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xy, r15.w, l(164), t12.xyxx
                    r44.x = samp0[]..swiz;
                    r44.y = samp0[]..swiz;
                      r40.x = dot(r40.xyzw, r19.xyzw);
                      r40.y = dot(r41.xyzw, r19.xyzw);
                      r19.xy = r40.xy / r29.ww;
                      r19.xy = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r19.xy = r19.xy + r43.zw;
                      r19.xy = r19.xy * r43.xy;
                      r40.xy = r16.zz / r42.xz;
                      r40.zw = float2(1,1) + -r40.xy;
                      r40.zw = cmp(r19.xy >= r40.zw);
                      r40.xy = cmp(r40.xy >= r19.xy);
                      r40.xy = (int2)r40.xy | (int2)r40.zw;
                      r19.z = (int)r40.y | (int)r40.x;
                      r19.xy = saturate(r19.xy);
                      r40.xy = r19.xy * r42.xz + r42.yw;
                      r19.x = r44.y * r29.w;
                      r19.y = r44.x * r29.w + r27.w;
                      r19.x = r19.y / r19.x;
                    } else {
                      r19.z = -1;
                    }
                    r19.y = (int)r30.w | (int)r19.z;
                    if (r19.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.w, r15.w, l(28), t12.xxxx
                    r15.w = samp0[]..swiz;
                      r19.x = max(6.10351563e-05, r19.x);
                      r15.w = (int)r15.w & 0x0000ffff;
                      if (r9.w != 0) {
                        r41.z = (uint)r15.w;
                        r19.yz = float2(0,0);
                        while (true) {
                          r27.w = cmp((int)r19.z >= 8);
                          if (r27.w != 0) break;
                          r42.x = dot(icb[r19.z+0].yx, r7.xw);
                          r42.y = dot(icb[r19.z+0].xy, r4.xy);
                          r41.xy = r42.xy * r16.zz + r40.xy;
                          r27.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r41.xyz, r19.x).x;
                          r19.y = r27.w * 0.125 + r19.y;
                          r19.z = (int)r19.z + 1;
                        }
                      } else {
                        r40.z = (uint)r15.w;
                        r19.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r40.xyz, r19.x).x;
                      }
                      r15.w = r19.y * r19.y;
                      r15.w = r15.w * r19.y;
                    } else {
                      r15.w = 1;
                    }
                    r16.w = r16.w * r15.w;
                  } else {
                    if (4 == 0) r15.w = 0; else if (4+20 < 32) {                     r15.w = (uint)r32.w << (32-(4 + 20)); r15.w = (uint)r15.w >> (32-4);                    } else r15.w = (uint)r32.w >> 20;
                    r16.z = cmp(0 < (uint)r15.w);
                    r16.z = r16.z ? r0.y : 0;
                    if (r16.z != 0) {
                      r15.w = (int)r15.w + numLights;
                      r15.w = (int)r15.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.z, r15.w, l(52), t12.xxxx
                    r16.z = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r15.w, l(100), t12.xyzw
                    r40.x = samp0[]..swiz;
                    r40.y = samp0[]..swiz;
                    r40.z = samp0[]..swiz;
                    r40.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r15.w, l(116), t12.xyzw
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                      r19.x = abs(r21.w) * -0.200000003 + 0.400000006;
                      r20.xyz = r5.xyz * r19.xxx + v7.xyz;
                      r19.x = dot(r40.xyzw, r20.xyzw);
                      r19.z = dot(r41.xyzw, r20.xyzw);
                      r27.w = cmp(r19.z < r19.x);
                      if (r27.w == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r15.w, l(68), t12.xyzw
                      r40.x = samp0[]..swiz;
                      r40.y = samp0[]..swiz;
                      r40.z = samp0[]..swiz;
                      r40.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r15.w, l(84), t12.xyzw
                      r41.x = samp0[]..swiz;
                      r41.y = samp0[]..swiz;
                      r41.z = samp0[]..swiz;
                      r41.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r15.w, l(132), t12.xyzw
                      r42.x = samp0[]..swiz;
                      r42.y = samp0[]..swiz;
                      r42.z = samp0[]..swiz;
                      r42.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r15.w, l(148), t12.xyzw
                      r43.x = samp0[]..swiz;
                      r43.y = samp0[]..swiz;
                      r43.z = samp0[]..swiz;
                      r43.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xy, r15.w, l(164), t12.xyxx
                      r44.x = samp0[]..swiz;
                      r44.y = samp0[]..swiz;
                        r40.x = dot(r40.xyzw, r20.xyzw);
                        r40.y = dot(r41.xyzw, r20.xyzw);
                        r20.xy = r40.xy / r19.zz;
                        r20.xy = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                        r20.xy = r20.xy + r43.zw;
                        r20.xy = r20.xy * r43.xy;
                        r40.xy = r16.zz / r42.xz;
                        r40.zw = float2(1,1) + -r40.xy;
                        r40.zw = cmp(r20.xy >= r40.zw);
                        r40.xy = cmp(r40.xy >= r20.xy);
                        r40.xy = (int2)r40.xy | (int2)r40.zw;
                        r20.z = (int)r40.y | (int)r40.x;
                        r20.xy = saturate(r20.xy);
                        r40.xy = r20.xy * r42.xz + r42.yw;
                        r20.x = r44.y * r19.z;
                        r19.x = r44.x * r19.z + r19.x;
                        r19.x = r19.x / r20.x;
                      } else {
                        r20.z = -1;
                      }
                      r19.z = (int)r27.w | (int)r20.z;
                      if (r19.z == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.w, r15.w, l(28), t12.xxxx
                      r15.w = samp0[]..swiz;
                        r19.x = max(6.10351563e-05, r19.x);
                        r15.w = (int)r15.w & 0x0000ffff;
                        if (r9.w != 0) {
                          r20.z = (uint)r15.w;
                          r19.z = 0;
                          r27.w = 0;
                          while (true) {
                            r29.w = cmp((int)r27.w >= 8);
                            if (r29.w != 0) break;
                            r41.x = dot(icb[r27.w+0].xy, r9.xy);
                            r41.y = dot(icb[r27.w+0].yx, r9.xz);
                            r20.xy = r41.xy * r16.zz + r40.xy;
                            r20.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r19.x).x;
                            r19.z = r20.x * 0.125 + r19.z;
                            r27.w = (int)r27.w + 1;
                          }
                        } else {
                          r40.z = (uint)r15.w;
                          r19.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r40.xyz, r19.x).x;
                        }
                        r15.w = r19.z * r19.z;
                        r15.w = r15.w * r19.z;
                      } else {
                        r15.w = 1;
                      }
                      r16.w = r16.w * r15.w;
                    }
                  }
                  r15.w = -r25.w * r2.x + 1;
                  r15.w = r15.w * r15.w;
                  r15.w = -r15.w * 0.620000005 + 0.620000005;
                  r15.w = r15.w + -r25.w;
                  r15.w = r1.w * r15.w + r25.w;
                  r15.w = r15.w * r16.w;
                  r32.x = r31.x;
                  r16.z = cmp(0 < r21.w);
                  r20.xyz = r15.www * r32.xyz + r12.yzw;
                  r15.w = saturate(dot(r5.xyz, r39.xyz));
                  r38.xyz = r38.xyz * r14.www + r11.xyz;
                  r14.w = dot(r38.xyz, r38.xyz);
                  r14.w = rsqrt(r14.w);
                  r38.xyz = r38.xyz * r14.www;
                  r14.w = dot(r38.xyz, r11.xyz);
                  r19.x = dot(r5.xyz, r38.xyz);
                  r21.w = abs(r19.x) * r0.z + -abs(r19.x);
                  r19.x = abs(r19.x) * r21.w + 1;
                  r21.w = r15.w * r4.z + r4.w;
                  r19.x = r19.x * r19.x;
                  r19.x = r19.x * r21.w;
                  r19.x = rcp(r19.x);
                  r15.w = r15.w * r26.w;
                  r15.w = r19.x * r15.w;
                  r15.w = r15.w * r16.w;
                  r38.xyz = r15.www * r32.xyz + r30.xyz;
                  r14.w = saturate(1 + -r14.w);
                  r16.w = r14.w * r14.w;
                  r16.w = r16.w * r16.w;
                  r14.w = r16.w * r14.w;
                  r14.w = r15.w * r14.w;
                  r39.xyz = r14.www * r32.xyz + r17.xyz;
                  r12.yzw = r16.zzz ? r20.xyz : r12.yzw;
                  r17.xyz = r16.zzz ? r39.xyz : r17.xyz;
                  r30.xyz = r16.zzz ? r38.xyz : r30.xyz;
                }
              }
            }
            break;
            case 2 :            r20.xy = r34.zw;
            r20.z = r35.w;
            r20.xyz = -v7.xyz + r20.xyz;
            r14.w = dot(r20.xyz, r20.xyz);
            r14.w = rsqrt(r14.w);
            r38.xyz = r20.xyz * r14.www;
            r15.w = dot(r5.xyz, r38.xyz);
            r16.z = saturate(r15.w);
            r16.w = cmp(0 < r16.z);
            if (r16.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r13.w, l(112), t12.yzwx
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r13.w, l(128), t12.zxyw
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
              r40.xyz = r38.xyz;
              r40.w = r39.y;
              r16.w = dot(r40.xyzw, r18.xyzw);
              r19.x = cmp(r16.w < 1);
              if (r19.x != 0) {
                r41.xyz = float3(1,1,1);
                r19.x = 0;
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r13.w, l(172), t12.yzwx
              r42.x = samp0[]..swiz;
              r42.y = samp0[]..swiz;
              r42.z = samp0[]..swiz;
              r42.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r13.w, l(188), t12.wxyz
              r43.x = samp0[]..swiz;
              r43.y = samp0[]..swiz;
              r43.z = samp0[]..swiz;
              r43.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r13.w, l(204), t12.xyzw
              r44.x = samp0[]..swiz;
              r44.y = samp0[]..swiz;
              r44.z = samp0[]..swiz;
              r44.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r21.w, r13.w, l(236), t12.xxxx
              r21.w = samp0[]..swiz;
                r45.xyz = -v7.xyz + r31.yzw;
                r25.w = r34.x * r34.x;
                r26.w = dot(r45.xyz, r45.xyz);
                r25.w = r25.w / r26.w;
                r25.w = min(1, r25.w);
                r33.xy = saturate(r16.ww * r33.xz + r33.yw);
                r33.zw = r33.xy * r33.xy;
                r33.xy = r33.xy * float2(-2,-2) + float2(3,3);
                r33.xy = r33.zw * r33.xy;
                r25.w = r33.x * r25.w;
                r25.w = r25.w * r33.y;
                r35.w = r36.x;
                r33.x = dot(r35.xyzw, r18.xyzw);
                r45.xyz = r36.yzw;
                r45.w = r37.w;
                r33.y = dot(r45.xyzw, r18.xyzw);
                r21.xy = r33.xy / r16.ww;
                r16.w = cmp(r42.w < 0.00048828125);
                if (r16.w != 0) {
                  r43.y = r44.x;
                  r33.xy = saturate(abs(r21.xy) * r43.zw + r43.xy);
                  r33.zw = r33.xy * r33.xy;
                  r33.xy = r33.xy * float2(-2,-2) + float2(3,3);
                  r33.xy = r33.zw * r33.xy;
                  r16.w = r33.x * r33.y;
                } else {
                  r42.w = r43.y;
                  r33.xyzw = saturate(r42.xyzw * abs(r21.yyxx));
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
                  r16.w = r27.w * r26.w;
                }
                r19.x = r25.w * r16.w;
                r16.w = (int)r21.w & 255;
                if (r16.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyz, r13.w, l(220), t12.xyzx
                r33.x = samp0[]..swiz;
                r33.y = samp0[]..swiz;
                r33.z = samp0[]..swiz;
                  r21.w = dot(r44.yzw, r21.xyz);
                  r21.x = dot(r33.xyz, r21.xyz);
                  r33.xy = frac(r21.wx);
                  r16.w = (int)r16.w + -1;
                  r33.z = (uint)r16.w;
                  r41.xyz = gCookieArray.SampleLevel(samplerLinear_s, r33.xyz, 0).xyz;
                } else {
                  r41.xyz = float3(1,1,1);
                }
              }
              r31.yz = r32.yz;
              r21.xyw = r31.xyz * r41.xyz;
              r16.w = cmp(0 < r19.x);
              if (r16.w != 0) {
                if (3 == 0) r16.w = 0; else if (3+27 < 32) {                 r16.w = (uint)r32.w << (32-(3 + 27)); r16.w = (uint)r16.w >> (32-3);                } else r16.w = (uint)r32.w >> 27;
                r16.w = cmp((int)r16.w != 1);
                if (r16.w != 0) {
                  r16.w = abs(r15.w) * -0.200000003 + 0.400000006;
                  r22.xyz = r5.xyz * r16.www + v7.xyz;
                  r38.xyz = r37.xyz;
                  r16.w = dot(r38.xyzw, r22.xyzw);
                  r25.w = dot(r40.xyzw, r22.xyzw);
                  r26.w = cmp(r25.w >= r16.w);
                  if (r26.w != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.y, r13.w, l(144), t12.xxxx
                  r39.y = samp0[]..swiz;
                    r35.w = r36.x;
                    r31.x = dot(r35.xyzw, r22.xyzw);
                    r37.xyz = r36.yzw;
                    r31.y = dot(r37.xyzw, r22.xyzw);
                    r22.xy = r31.xy / r25.ww;
                    r22.xy = saturate(r22.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                    r22.xy = r22.xy * r39.zw + r39.xy;
                    r13.w = r16.w / r25.w;
                    r13.w = max(6.10351563e-05, r13.w);
                    r16.w = (int)r32.w & 0x0000ffff;
                    if (r9.w != 0) {
                      r31.z = (uint)r16.w;
                      r25.w = 0;
                      r26.w = 0;
                      while (true) {
                        r27.w = cmp((int)r26.w >= 8);
                        if (r27.w != 0) break;
                        r33.x = dot(icb[r26.w+0].xy, r25.xy);
                        r33.y = dot(icb[r26.w+0].yx, r25.xz);
                        r31.xy = r33.xy * r34.yy + r22.xy;
                        r27.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r31.xyz, r13.w).x;
                        r25.w = r27.w * 0.125 + r25.w;
                        r26.w = (int)r26.w + 1;
                      }
                    } else {
                      r22.z = (uint)r16.w;
                      r25.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r13.w).x;
                    }
                    r13.w = r25.w * r25.w;
                    r13.w = r13.w * r25.w;
                  } else {
                    r13.w = 1;
                  }
                } else {
                  r13.w = 1;
                }
                r13.w = r19.x * r13.w;
                r16.w = cmp(0 < r13.w);
                if (r16.w != 0) {
                  r16.w = r32.x * r0.z;
                  r16.w = r16.w * r16.z;
                  if (4 == 0) r19.x = 0; else if (4+16 < 32) {                   r19.x = (uint)r32.w << (32-(4 + 16)); r19.x = (uint)r19.x >> (32-4);                  } else r19.x = (uint)r32.w >> 16;
                  r22.x = cmp(0 < (uint)r19.x);
                  r22.x = r0.x ? r22.x : 0;
                  if (r22.x != 0) {
                    r19.x = (int)r19.x + numLights;
                    r19.x = (int)r19.x + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.x, r19.x, l(52), t12.xxxx
                  r22.x = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r19.x, l(68), t12.xyzw
                  r31.x = samp0[]..swiz;
                  r31.y = samp0[]..swiz;
                  r31.z = samp0[]..swiz;
                  r31.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r19.x, l(84), t12.xyzw
                  r33.x = samp0[]..swiz;
                  r33.y = samp0[]..swiz;
                  r33.z = samp0[]..swiz;
                  r33.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r19.x, l(100), t12.xyzw
                  r34.x = samp0[]..swiz;
                  r34.y = samp0[]..swiz;
                  r34.z = samp0[]..swiz;
                  r34.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r19.x, l(116), t12.xyzw
                  r35.x = samp0[]..swiz;
                  r35.y = samp0[]..swiz;
                  r35.z = samp0[]..swiz;
                  r35.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r19.x, l(132), t12.xyzw
                  r36.x = samp0[]..swiz;
                  r36.y = samp0[]..swiz;
                  r36.z = samp0[]..swiz;
                  r36.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r19.x, l(148), t12.xyzw
                  r37.x = samp0[]..swiz;
                  r37.y = samp0[]..swiz;
                  r37.z = samp0[]..swiz;
                  r37.w = samp0[]..swiz;
                    r22.y = abs(r15.w) * -0.200000003 + 0.400000006;
                    r23.xyz = r5.xyz * r22.yyy + v7.xyz;
                    r31.x = dot(r31.xyzw, r23.xyzw);
                    r31.y = dot(r33.xyzw, r23.xyzw);
                    r22.y = dot(r34.xyzw, r23.xyzw);
                    r22.z = dot(r35.xyzw, r23.xyzw);
                    r23.x = cmp(r22.z < r22.y);
                    r23.yz = r31.xy / r22.zz;
                    r23.yz = r23.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                    r23.yz = r23.yz + r37.zw;
                    r23.yz = r23.yz * r37.xy;
                    r31.xy = r22.xx / r36.xz;
                    r31.zw = float2(1,1) + -r31.xy;
                    r31.zw = cmp(r23.yz >= r31.zw);
                    r31.xy = cmp(r31.xy >= r23.yz);
                    r31.xy = (int2)r31.xy | (int2)r31.zw;
                    r26.w = (int)r31.y | (int)r31.x;
                    r23.x = (int)r23.x | (int)r26.w;
                    if (r23.x == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.x, r19.x, l(28), t12.xxxx
                    r23.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xy, r19.x, l(164), t12.xyxx
                    r31.x = samp0[]..swiz;
                    r31.y = samp0[]..swiz;
                      r23.yz = saturate(r23.yz);
                      r32.xy = r23.yz * r36.xz + r36.yw;
                      r19.x = r31.y * r22.z;
                      r22.y = r31.x * r22.z + r22.y;
                      r19.x = r22.y / r19.x;
                      r19.x = max(6.10351563e-05, r19.x);
                      r22.y = r23.x ? 0.000000 : 0;
                      if (r9.w != 0) {
                        r23.z = (uint)r22.y;
                        r22.z = 0;
                        r26.w = 0;
                        while (true) {
                          r27.w = cmp((int)r26.w >= 8);
                          if (r27.w != 0) break;
                          r31.x = dot(icb[r26.w+0].xy, r26.xy);
                          r31.y = dot(icb[r26.w+0].yx, r26.xz);
                          r23.xy = r31.xy * r22.xx + r32.xy;
                          r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r19.x).x;
                          r22.z = r23.x * 0.125 + r22.z;
                          r26.w = (int)r26.w + 1;
                        }
                      } else {
                        r32.z = (uint)r22.y;
                        r22.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r32.xyz, r19.x).x;
                      }
                      r19.x = r22.z * r22.z;
                      r19.x = r19.x * r22.z;
                    } else {
                      r19.x = 1;
                    }
                    r13.w = r19.x * r13.w;
                  } else {
                    if (4 == 0) r19.x = 0; else if (4+20 < 32) {                     r19.x = (uint)r32.w << (32-(4 + 20)); r19.x = (uint)r19.x >> (32-4);                    } else r19.x = (uint)r32.w >> 20;
                    r22.x = cmp(0 < (uint)r19.x);
                    r22.x = r22.x ? r0.y : 0;
                    if (r22.x != 0) {
                      r19.x = (int)r19.x + numLights;
                      r19.x = (int)r19.x + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.x, r19.x, l(52), t12.xxxx
                    r22.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r19.x, l(68), t12.xyzw
                    r31.x = samp0[]..swiz;
                    r31.y = samp0[]..swiz;
                    r31.z = samp0[]..swiz;
                    r31.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r19.x, l(84), t12.xyzw
                    r32.x = samp0[]..swiz;
                    r32.y = samp0[]..swiz;
                    r32.z = samp0[]..swiz;
                    r32.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r19.x, l(100), t12.xyzw
                    r33.x = samp0[]..swiz;
                    r33.y = samp0[]..swiz;
                    r33.z = samp0[]..swiz;
                    r33.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r19.x, l(116), t12.xyzw
                    r34.x = samp0[]..swiz;
                    r34.y = samp0[]..swiz;
                    r34.z = samp0[]..swiz;
                    r34.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r19.x, l(132), t12.xyzw
                    r35.x = samp0[]..swiz;
                    r35.y = samp0[]..swiz;
                    r35.z = samp0[]..swiz;
                    r35.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r19.x, l(148), t12.xyzw
                    r36.x = samp0[]..swiz;
                    r36.y = samp0[]..swiz;
                    r36.z = samp0[]..swiz;
                    r36.w = samp0[]..swiz;
                      r22.y = abs(r15.w) * -0.200000003 + 0.400000006;
                      r24.xyz = r5.xyz * r22.yyy + v7.xyz;
                      r23.x = dot(r31.xyzw, r24.xyzw);
                      r23.y = dot(r32.xyzw, r24.xyzw);
                      r22.y = dot(r33.xyzw, r24.xyzw);
                      r23.z = dot(r34.xyzw, r24.xyzw);
                      r24.x = cmp(r23.z < r22.y);
                      r23.xy = r23.xy / r23.zz;
                      r23.xy = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r23.xy = r23.xy + r36.zw;
                      r23.xy = r23.xy * r36.xy;
                      r24.yz = r22.xx / r35.xz;
                      r31.xy = float2(1,1) + -r24.yz;
                      r31.xy = cmp(r23.xy >= r31.xy);
                      r24.yz = cmp(r24.yz >= r23.xy);
                      r24.yz = (int2)r24.yz | (int2)r31.xy;
                      r24.y = (int)r24.z | (int)r24.y;
                      r24.x = (int)r24.x | (int)r24.y;
                      if (r24.x == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.x, r19.x, l(28), t12.xxxx
                      r24.x = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.yz, r19.x, l(164), t12.xxyx
                      r24.y = samp0[]..swiz;
                      r24.z = samp0[]..swiz;
                        r23.xy = saturate(r23.xy);
                        r31.xy = r23.xy * r35.xz + r35.yw;
                        r19.x = r24.z * r23.z;
                        r22.y = r24.y * r23.z + r22.y;
                        r19.x = r22.y / r19.x;
                        r19.x = max(6.10351563e-05, r19.x);
                        r22.y = r24.x ? 0.000000 : 0;
                        if (r9.w != 0) {
                          r23.z = (uint)r22.y;
                          r24.xy = float2(0,0);
                          while (true) {
                            r24.z = cmp((int)r24.y >= 8);
                            if (r24.z != 0) break;
                            r32.x = dot(icb[r24.y+0].xy, r27.xy);
                            r32.y = dot(icb[r24.y+0].yx, r27.xz);
                            r23.xy = r32.xy * r22.xx + r31.xy;
                            r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r19.x).x;
                            r24.x = r23.x * 0.125 + r24.x;
                            r24.y = (int)r24.y + 1;
                          }
                        } else {
                          r31.z = (uint)r22.y;
                          r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r31.xyz, r19.x).x;
                        }
                        r19.x = r24.x * r24.x;
                        r19.x = r19.x * r24.x;
                      } else {
                        r19.x = 1;
                      }
                      r13.w = r19.x * r13.w;
                    }
                  }
                  r19.x = -r16.z * r2.x + 1;
                  r19.x = r19.x * r19.x;
                  r19.x = -r19.x * 0.620000005 + 0.620000005;
                  r19.x = r19.x + -r16.z;
                  r19.x = r1.w * r19.x + r16.z;
                  r19.x = r19.x * r13.w;
                  r15.w = cmp(0 < r15.w);
                  r23.xyz = r19.xxx * r21.xyw + r12.yzw;
                  r20.xyz = r20.xyz * r14.www + r11.xyz;
                  r14.w = dot(r20.xyz, r20.xyz);
                  r14.w = rsqrt(r14.w);
                  r20.xyz = r20.xyz * r14.www;
                  r14.w = dot(r20.xyz, r11.xyz);
                  r19.x = dot(r5.xyz, r20.xyz);
                  r20.x = abs(r19.x) * r0.z + -abs(r19.x);
                  r19.x = abs(r19.x) * r20.x + 1;
                  r16.z = r16.z * r4.z + r4.w;
                  r19.x = r19.x * r19.x;
                  r16.z = r19.x * r16.z;
                  r16.z = rcp(r16.z);
                  r16.z = r16.z * r16.w;
                  r13.w = r16.z * r13.w;
                  r13.w = 0.25 * r13.w;
                  r20.xyz = r13.www * r21.xyw + r30.xyz;
                  r14.w = saturate(1 + -r14.w);
                  r16.z = r14.w * r14.w;
                  r16.z = r16.z * r16.z;
                  r14.w = r16.z * r14.w;
                  r13.w = r14.w * r13.w;
                  r21.xyw = r13.www * r21.xyw + r17.xyz;
                  r12.yzw = r15.www ? r23.xyz : r12.yzw;
                  r17.xyz = r15.www ? r21.xyw : r17.xyz;
                  r30.xyz = r15.www ? r20.xyz : r30.xyz;
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
    r10.yzw = r12.yzw;
    r28.xyz = r17.xyz;
    r29.xyz = r30.xyz;
    r6.w = (int)r6.w + 32;
  }
  r0.xyz = float3(1,1,1) + -r6.xyz;
  r0.xyz = r28.xyz * r0.xyz;
  r0.xyz = r29.xyz * r6.xyz + r0.xyz;
  r0.xyz = r10.yzw * r1.xyz + r0.xyz;
  r1.x = dot(r0.xyz, float3(0.298999995,0.587000012,0.114));
  r1.x = max(9.99999975e-05, r1.x);
  r1.w = max(relHDRExposure.x, r1.x);
  r1.xyz = r3.xyz * r1.www;
  r3.w = 1;
  r1.xyzw = relativeHDR ? r1.xyzw : r3.xyzw;
  r0.xyz = r1.xyz + r0.xyz;
  r1.w = hdrScale * r1.w;
  r1.w = max(1, r1.w);
  r1.xyz = r1.xyz / r1.www;
  r1.x = saturate(dot(r1.xyz, float3(0.298999995,0.587000012,0.114)));
  r1.w = r1.x + r0.w;
  r0.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.w != 0) {
    r0.w = dot(v7.xyz, v7.xyz);
    r2.x = rsqrt(r0.w);
    r2.xyz = v7.xyz * r2.xxx;
    r0.w = sqrt(r0.w);
    r2.w = cmp(0 < fogConstants.blendAmount);
    if (r2.w != 0) {
      r3.xy = r0.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r3.xy = fogConstants.atmospherefogdensityatcamera.xy * r3.xy;
      r2.w = cmp(0.00999999978 < abs(v7.z));
      r3.zw = fogConstants.atmospherefogheightdensityscale.xy * v7.zz;
      r4.xy = float2(-1.44269502,-1.44269502) * r3.zw;
      r4.xy = exp2(r4.xy);
      r4.xy = float2(1,1) + -r4.xy;
      r3.zw = r4.xy / r3.zw;
      r3.zw = r3.xy * r3.zw;
      r3.xy = r2.ww ? r3.zw : r3.xy;
      r3.xzw = fogConstants.atmosphereTotalDensity.xyz * r3.xxx;
      r3.xzw = exp2(r3.xzw);
      r4.xyz = fogConstants.atmosphereTotalDensity.xyz * r3.yyy;
      r4.xyz = exp2(r4.xyz);
      r4.xyz = r4.xyz + -r3.xzw;
      r3.xyz = fogConstants.blendAmount * r4.xyz + r3.xzw;
    } else {
      r2.w = r0.w * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r2.w = fogConstants.atmospherefogdensityatcamera.x * r2.w;
      r3.w = cmp(0.00999999978 < abs(v7.z));
      r4.x = fogConstants.atmospherefogheightdensityscale.x * v7.z;
      r4.y = -1.44269502 * r4.x;
      r4.y = exp2(r4.y);
      r4.y = 1 + -r4.y;
      r4.x = r4.y / r4.x;
      r4.x = r4.x * r2.w;
      r2.w = r3.w ? r4.x : r2.w;
      r4.xyz = fogConstants.atmosphereTotalDensity.xyz * r2.www;
      r3.xyz = exp2(r4.xyz);
    }
    r3.xyz = r3.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r3.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r3.xyz);
    r2.x = dot(fogConstants.wldSunFogDir.xyz, -r2.xyz);
    r2.y = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r2.z = fogConstants.atmosphereMieSchlickK * -r2.x + 1;
    r2.z = r2.z * r2.z;
    r2.z = 12.566371 * r2.z;
    r2.y = r2.y / r2.z;
    r0.w = -fogConstants.atmospherehazebasedist + r0.w;
    r0.w = saturate(fogConstants.atmospherehazefadedist * r0.w);
    r0.w = r2.y * r0.w;
    r2.x = saturate(r2.x);
    r2.x = r2.x * r2.x + 1;
    r2.x = r2.x * 0.0596831031 + -1;
    r2.x = fogConstants.atmospheresunstrength * r2.x + 1;
    r2.yzw = fogConstants.atmosphereMieDensity.xyz * r0.www;
    r2.xyz = r2.xxx * fogConstants.atmosphereRayleighDensity.xyz + r2.yzw;
    r2.xyz = fogConstants.atmosphereInScatterIntensity * r2.xyz;
    r4.xyz = float3(1,1,1) + -r3.xyz;
    r2.xyz = r4.xyz * r2.xyz;
    r2.xyz = r0.xyz * r3.xyz + r2.xyz;
  } else {
    r0.w = fogConstants.heightFalloff * v7.z;
    r2.w = fogConstants.heightFalloff * v7.z + fogConstants.K0;
    r3.x = cmp(abs(r0.w) < 9.99999975e-05);
    r3.y = min(64, r2.w);
    r3.y = 1.44269502 * r3.y;
    r3.y = exp2(r3.y);
    r3.z = saturate(fogConstants.K0b);
    r3.w = cmp(r2.w < 0);
    r2.w = 1 + r2.w;
    r2.w = r3.w ? r3.y : r2.w;
    r2.w = -fogConstants.K0b + r2.w;
    r0.w = r3.x ? 1 : r0.w;
    r0.w = r2.w / r0.w;
    r0.w = r3.x ? r3.z : r0.w;
    r0.w = fogConstants.expMul * r0.w;
    r2.w = dot(v7.xyz, v7.xyz);
    r3.x = sqrt(r2.w);
    r0.w = r0.w * r3.x + fogConstants.expAdd;
    r0.w = exp2(r0.w);
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r2.w = rsqrt(r2.w);
    r3.xyz = v7.xyz * r2.www;
    r2.w = dot(fogConstants.wldSunFogDir.xyz, r3.xyz);
    r2.w = saturate(fogConstants.sunFogAngles.y * r2.w + fogConstants.sunFogAngles.x);
    r3.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r3.xyzw = r2.wwww * r3.xyzw + fogConstants.sunFogColor.xyzw;
    r0.w = r3.w * r0.w;
    r3.xyz = r3.xyz + -r0.xyz;
    r2.xyz = r0.www * r3.xyz + r0.xyz;
  }
  r0.xyz = relHDRExposure.yyy * r2.xyz;
  r2.xyz = cmp(r0.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r0.xyz = r2.xyz ? r0.xyz : 0;
  r0.xyz = min(float3(65024,65024,64512), r0.xyz);
  r2.xyz = max(float3(0,0,0), r0.xyz);
  r1.xyz = r2.xyz * r1.www;
  r0.w = (int)r1.w & 0x7f800000;
  r0.w = cmp((int)r0.w == 0x7f800000);
  r3.xyzw = cmp(r1.xyzw == float4(0,0,0,0));
  r3.xy = r3.zw ? r3.xy : 0;
  r2.w = r3.y ? r3.x : 0;
  r0.w = (int)r0.w | (int)r2.w;
  if (r0.w == 0) {
    r3.xy = (uint2)v0.xy;
    bitmask.w = ((~(-1 << 1)) << 16) & 0xffffffff;  r0.w = (((uint)zFeatherComputeSprites << 16) & bitmask.w) | ((uint)0 & ~bitmask.w);
    r0.w = (int)r0.w + 1;
    // Needs manual fix for instruction:
    imm_atomic_iadd r4.x, u6, r3.xyxx, r0.w
    InterlockedAdd(dest, imm_value, orig_value);
    r3.zw = (int2)r4.xx & int2(65535,65535);
    r0.w = cmp((uint)r3.w < oitMaxEntries);
    if (r0.w != 0) {
      r0.w = max(r1.y, r1.z);
      r0.w = max(r1.x, r0.w);
      r0.w = abs(r0.w);
      r0.w = (int)r0.w & 0x7f800000;
      r0.w = (int)r0.w + 0x00800000;
      r2.xyz = r2.xyz * r1.www + r0.www;
      if (8 == 0) r2.x = 0; else if (8+15 < 32) {       r2.x = (uint)r2.x << (32-(8 + 15)); r2.x = (uint)r2.x >> (32-8);      } else r2.x = (uint)r2.x >> 15;
      r2.yz = (uint2)r2.yz >> int2(15,15);
      bitmask.y = ((~(-1 << 8)) << 8) & 0xffffffff;  r2.y = (((uint)r2.y << 8) & bitmask.y) | ((uint)0 & ~bitmask.y);
      bitmask.z = ((~(-1 << 8)) << 16) & 0xffffffff;  r2.z = (((uint)r2.z << 16) & bitmask.z) | ((uint)0 & ~bitmask.z);
      r2.x = (int)r2.y + (int)r2.x;
      r2.x = (int)r2.z + (int)r2.x;
      r0.w = (uint)r0.w << 1;
      r2.xzw = (int3)r0.www + (int3)r2.xxx;
      r0.w = saturate(r1.w);
      r0.w = 2046 * r0.w;
      r0.w = (uint)r0.w;
      r4.x = (uint)v0.z << 2;
      r0.w = (int)r0.w & 2046;
      bitmask.w = ((~(-1 << 11)) << 0) & 0xffffffff;  r0.w = (((uint)r0.w << 0) & bitmask.w) | ((uint)r4.x & ~bitmask.w);
      bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r2.y = (((uint)zFeatherComputeSprites << 0) & bitmask.y) | ((uint)r0.w & ~bitmask.y);
    // No code for instruction (needs manual fix):
        store_uav_typed u7.xyzw, r3.xyzw, r2.xyzw
      r0.w = -1;
    } else {
      r0.w = 0;
    }
  } else {
    r0.w = -1;
  }
  r1.xyz = r0.xyz * r1.www;
  o0.xyzw = r0.wwww ? float4(0,0,0,0) : r1.xyzw;
  return;
}