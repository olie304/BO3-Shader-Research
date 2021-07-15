// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:33:54 2021

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
  uint zFeatherComputeSprites : packoffset(c11.z);
  float hdrScale : packoffset(c11.w);
  float emissiveFalloffPower : packoffset(c12);
  float3 emissiveTint1 : packoffset(c12.y);
  bool relativeHDR : packoffset(c13);
  bool invertFalloff : packoffset(c13.y);
  float layerDepth : packoffset(c13.z);
  float uvMotionToggle1 : packoffset(c13.w) = {0};
  float2 scriptControl : packoffset(c14);
  float3 tint1 : packoffset(c15);
  float3 tint2 : packoffset(c16);
  float3 tint3 : packoffset(c17);
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
Texture2D<float4> tintMask : register(t22);
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
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.xy, v2.x, l(4), t4.xyxx
r0.x = samp0[]..swiz;
r0.y = samp0[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.xz, r0.x, l(36), t0.xxyx
r0.x = samp0[]..swiz;
r0.z = samp0[]..swiz;
  r1.xyzw = colorMap.Sample(colorSampler_s, w1.xy).xyzw;
  r0.w = tintMask.Sample(colorSampler_s, w1.xy).x;
  r2.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r2.xyz = r0.www * r2.xyz + float3(1,1,1);
  r1.xyz = r2.xyz * r1.xyz;
  r0.w = v1.x * r1.w;
  r2.x = aoMap.Sample(aoSampler_s, w1.xy).x;
  r2.y = glossMap.Sample(specColorSampler_s, w1.xy).x;
  r2.z = glossRange.y + -glossRange.x;
  r2.y = r2.y * r2.z + glossRange.x;
  r2.y = saturate(0.0588235296 * r2.y);
  r3.xyz = normalMap.Sample(normalSampler_s, w1.xy).xyz;
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
  r3.w = v7.x ? 1 : -1;
  r4.x = dot(v3.xyz, v3.xyz);
  r4.x = rsqrt(r4.x);
  r4.xyz = v3.xyz * r4.xxx;
  r4.xyz = r4.xyz * r3.www;
  r4.w = dot(v4.xyz, v4.xyz);
  r4.w = rsqrt(r4.w);
  r5.xyz = v4.xyz * r4.www;
  r5.xyz = r5.xyz * r3.www;
  r4.w = dot(v5.xyz, v5.xyz);
  r4.w = rsqrt(r4.w);
  r6.xyz = v5.xyz * r4.www;
  r6.xyz = r6.xyz * r3.www;
  r2.y = -17 * r2.y;
  r2.y = exp2(r2.y);
  r2.y = r3.z + r2.y;
  r2.y = log2(r2.y);
  r2.y = -0.0588235296 * r2.y;
  r7.xyz = r6.xyz * r3.yyy;
  r7.xyz = r5.xyz * r3.xxx + r7.xyz;
  r7.xyz = r4.xyz * r2.www + r7.xyz;
  r2.w = dot(r7.xyz, r7.xyz);
  r2.w = rsqrt(r2.w);
  r7.xyz = r7.xyz * r2.www;
  r2.z = debugGlossOverride.x * r2.z + glossRange.x;
  r2.z = saturate(0.0588235296 * r2.z);
  r2.z = -17 * r2.z;
  r2.z = exp2(r2.z);
  r2.z = r3.z + r2.z;
  r2.z = log2(r2.z);
  r2.z = -0.0588235296 * r2.z;
  r2.yz = max(float2(0,0), r2.yz);
  r2.w = cmp(0 < debugStreamerControl.w);
  if (r2.w != 0) {
    r2.w = (int)debugStreamerControl.w;
    r3.x = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, w1.xy);
    r3.y = colorMap.CalculateLevelOfDetail(colorSampler_s, w1.xy);
    r3.x = cmp(r3.x < r3.y);
    r3.y = cmp(0 < r3.y);
    r8.xyz = (int3)r2.www & int3(1,2,4);
    r9.xyz = r8.xxx ? float3(1,0,1) : r1.xyz;
    r8.xyw = r8.yyy ? float3(0,1,1) : r1.xyz;
    r8.xyw = r3.yyy ? r9.xyz : r8.xyw;
    r9.xyz = r8.zzz ? float3(0,1,0) : r1.xyz;
    r1.xyz = r3.xxx ? r8.xyw : r9.xyz;
  }
  r3.xyz = debugColorOverride.xyz + -r1.xyz;
  r1.xyz = debugColorOverride.www * r3.xyz + r1.xyz;
  r1.w = -r1.w * v1.x + debugAlphaOverride.x;
  r0.w = debugAlphaOverride.w * r1.w + r0.w;
  r3.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + debugSpecularOverride.xyz;
  r3.xyz = debugSpecularOverride.www * r3.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r1.w = r2.z + -r2.y;
  r1.w = debugGlossOverride.w * r1.w + r2.y;
  r2.y = debugOcclusionOverride.x + -r2.x;
  r2.x = debugOcclusionOverride.w * r2.y + r2.x;
  r2.yzw = v7.xxx ? v3.xyz : -v3.xyz;
  r4.w = dot(r2.yzw, r2.yzw);
  r4.w = rsqrt(r4.w);
  r2.yzw = r2.yzw * r4.www + -r7.xyz;
  r2.yzw = debugNormalOverride.www * r2.yzw + r7.xyz;
  r4.w = cmp(v0.z >= 0.984375);
  r5.w = 1.01587307 * v0.z;
  r6.w = v0.z * 64 + -63;
  r4.w = r4.w ? r6.w : r5.w;
  r4.w = max(9.99999994e-09, r4.w);
  r4.w = rcp(r4.w);
  r7.xy = (uint2)v0.xy;
  r8.xyz = ddx_coarse(v6.xyz);
  r9.xyz = ddy_coarse(v6.xyz);
  r5.w = numRefProbes + numLights;
  r7.zw = (int2)r0.yy & int2(268435456,536870912);
  if (r7.z != 0) {
    r10.xyz = eyeOffset.xyz + v6.xyz;
    r0.y = 0.0078125 * r4.w;
    r0.y = min(15, r0.y);
    r0.y = (uint)r0.y;
    r11.xy = (uint2)r7.xy >> int2(6,6);
    r11.z = (uint)r0.y << 4;
    r0.y = numStaticDecals & -32;
    r6.w = (int)-r0.y + numStaticDecals;
    r12.xy = float2(0,0);
    r13.w = 0;
    r10.w = 1;
    r14.xyzw = float4(0,0,0,0);
    r15.xyz = float3(0,0,0);
    r16.yz = float2(0,0);
    r17.xy = float2(0,0);
    r7.z = 0;
    while (true) {
      r8.w = cmp((uint)r7.z >= numStaticDecals);
      if (r8.w != 0) break;
      r12.z = (uint)r7.z >> 5;
      r13.xyz = (int3)r11.xyz + (int3)r12.xyz;
      r8.w = visibleDecals.Load(r13.xyzw).x;
      r9.w = cmp((int)r0.y == (int)r7.z);
      if (r6.w == 0) r11.w = 0; else if (r6.w+0 < 32) {       r11.w = (uint)r8.w << (32-(r6.w + 0)); r11.w = (uint)r11.w >> (32-r6.w);      } else r11.w = (uint)r8.w >> 0;
      r8.w = r9.w ? r11.w : r8.w;
      r9.w = (int)r5.w + (int)r7.z;
      r18.xyzw = r14.xzwy;
      r13.xyz = r15.xyz;
      r19.yz = r16.yz;
      r20.xy = r17.xy;
      r11.w = r8.w;
      while (true) {
        if (r11.w == 0) break;
        r12.z = firstbitlow((uint)r11.w);
        r12.w = 1 << (int)r12.z;
        r15.w = (int)r11.w & (int)r12.w;
        if (r15.w != 0) {
          r11.w = (int)r11.w ^ (int)r12.w;
          r12.w = (int)r9.w + (int)r12.z;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r21.xyzw, r12.w, l(0), t11.xyzw
        r21.x = samp0[]..swiz;
        r21.y = samp0[]..swiz;
        r21.z = samp0[]..swiz;
        r21.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r22.xy, r12.w, l(16), t11.xyxx
        r22.x = samp0[]..swiz;
        r22.y = samp0[]..swiz;
          r21.xyz = -v6.xyz + r21.xyz;
          r22.z = r21.w;
          r21.xyz = cmp(abs(r21.xyz) < r22.zxy);
          r12.w = r21.y ? r21.x : 0;
          r12.w = r21.z ? r12.w : 0;
          if (r12.w != 0) {
            r12.z = (int)r7.z + (int)r12.z;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r21.xyz, r12.z, l(0), t36.xyzx
          r21.x = samp0[]..swiz;
          r21.y = samp0[]..swiz;
          r21.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r22.xyz, r12.z, l(16), t36.xyzx
          r22.x = samp0[]..swiz;
          r22.y = samp0[]..swiz;
          r22.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r23.xyz, r12.z, l(32), t36.xyzx
          r23.x = samp0[]..swiz;
          r23.y = samp0[]..swiz;
          r23.z = samp0[]..swiz;
            r24.x = r21.x;
            r24.y = r22.x;
            r24.z = r23.x;
            r12.w = dot(r24.xyz, r24.xyz);
            r12.w = rsqrt(r12.w);
            r25.xyz = r24.xyz * r12.www;
            r12.w = dot(r25.xyz, v3.xyz);
            r12.w = cmp(r12.w >= 0.5);
            if (r12.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r26.xyw, r12.z, l(48), t36.xyxz
            r26.x = samp0[]..swiz;
            r26.y = samp0[]..swiz;
            r26.w = samp0[]..swiz;
              r24.w = r26.x;
              r24.x = dot(r10.xyzw, r24.xyzw);
              r27.x = r21.y;
              r27.y = r22.y;
              r27.z = r23.y;
              r27.w = r26.y;
              r24.y = dot(r10.xyzw, r27.xyzw);
              r26.x = r21.z;
              r26.y = r22.z;
              r26.z = r23.z;
              r24.z = dot(r10.xyzw, r26.xyzw);
              r21.xyz = cmp(abs(r24.xyz) < float3(1,1,1));
              r12.w = r21.y ? r21.x : 0;
              r12.w = r21.z ? r12.w : 0;
              if (r12.w != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r21.xyzw, r12.z, l(64), t36.xyzw
              r21.x = samp0[]..swiz;
              r21.y = samp0[]..swiz;
              r21.z = samp0[]..swiz;
              r21.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r22.xyzw, r12.z, l(80), t36.xyzw
              r22.x = samp0[]..swiz;
              r22.y = samp0[]..swiz;
              r22.z = samp0[]..swiz;
              r22.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r23.xyzw, r12.z, l(96), t36.xyzw
              r23.x = samp0[]..swiz;
              r23.y = samp0[]..swiz;
              r23.z = samp0[]..swiz;
              r23.w = samp0[]..swiz;
                r28.x = dot(r8.xyz, r27.xyz);
                r28.y = dot(r8.xyz, r26.xyz);
                r29.x = dot(r9.xyz, r27.xyz);
                r29.y = dot(r9.xyz, r26.xyz);
                r24.xy = r24.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                r28.xyz = float3(0.5,-0.5,0.5) * r28.xyx;
                r29.xyz = float3(0.5,-0.5,0.5) * r29.xyx;
                r24.zw = (int2)r22.yz & int2(65535,65535);
                if (r24.z != 0) {
                  if (4 == 0) r12.w = 0; else if (4+24 < 32) {                   r12.w = (uint)r22.w << (32-(4 + 24)); r12.w = (uint)r12.w >> (32-4);                  } else r12.w = (uint)r22.w >> 24;
                  r12.w = 1 << (int)r12.w;
                  r15.w = (uint)r22.w >> 28;
                  r15.w = 1 << (int)r15.w;
                  r16.w = cmp((int)r24.z == 4);
                  if (r16.w != 0) {
                    r16.w = (int)r22.w & 4095;
                    if (12 == 0) r17.w = 0; else if (12+12 < 32) {                     r17.w = (uint)r22.w << (32-(12 + 12)); r17.w = (uint)r17.w >> (32-12);                    } else r17.w = (uint)r22.w >> 12;
                    r19.w = (int)r23.w & 1023;
                    r30.xz = (uint2)r12.ww;
                    r30.y = (uint)r15.w;
                    r31.xy = r24.xy * r30.zy + float2(0.5,0.5);
                    r31.zw = float2(-0.5,-0.5) + r30.zy;
                    r31.xy = min(r31.xy, r31.zw);
                    r32.x = (uint)r16.w;
                    r32.y = (uint)r17.w;
                    r31.xy = r32.xy + r31.xy;
                    r31.xy = invBcTexSizes.xy * r31.xy;
                    r31.z = (uint)r19.w;
                    r32.xyz = invBcTexSizes.xyx * r28.zyz;
                    r32.xyz = r32.xyz * r30.xyz;
                    r33.xyz = invBcTexSizes.xyx * r29.zyz;
                    r30.xyz = r33.xyz * r30.xyz;
                    r30.xyzw = materialTexBC7.SampleGrad(samplerLinearClamp_s, r31.xyz, r32.xyzx, r30.xyzx).xyzw;
                  } else {
                    r16.w = cmp((int)r24.z == 1);
                    if (r16.w != 0) {
                      r16.w = (int)r22.w & 4095;
                      if (12 == 0) r17.w = 0; else if (12+12 < 32) {                       r17.w = (uint)r22.w << (32-(12 + 12)); r17.w = (uint)r17.w >> (32-12);                      } else r17.w = (uint)r22.w >> 12;
                      r19.w = (int)r23.w & 1023;
                      r31.xz = (uint2)r12.ww;
                      r31.y = (uint)r15.w;
                      r32.xy = r24.xy * r31.zy + float2(0.5,0.5);
                      r32.zw = float2(-0.5,-0.5) + r31.zy;
                      r32.xy = min(r32.xy, r32.zw);
                      r33.x = (uint)r16.w;
                      r33.y = (uint)r17.w;
                      r32.xy = r33.xy + r32.xy;
                      r32.xy = invBcTexSizes.zw * r32.xy;
                      r32.z = (uint)r19.w;
                      r33.xyz = invBcTexSizes.zwz * r28.zyz;
                      r33.xyz = r33.xyz * r31.xyz;
                      r34.xyz = invBcTexSizes.zwz * r29.zyz;
                      r31.xyz = r34.xyz * r31.xyz;
                      r30.xyzw = materialTexBC3.SampleGrad(samplerLinearClamp_s, r32.xyz, r33.xyzx, r31.xyzx).xyzw;
                    } else {
                      r30.xyzw = float4(1,1,1,1);
                    }
                  }
                  r21.xyz = r30.xyz * r21.xyz;
                  r12.w = r30.w * r21.w;
                } else {
                  r21.xyz = float3(0,0,0);
                  r12.w = 0;
                }
                r15.w = cmp(r22.x != 1.000000);
                r16.w = r12.w + r21.w;
                r16.w = saturate(r16.w * r22.x + -r22.x);
                r12.w = r15.w ? r16.w : r12.w;
                if (r24.w != 0) {
                  if (4 == 0) r15.w = 0; else if (4+24 < 32) {                   r15.w = (uint)r23.y << (32-(4 + 24)); r15.w = (uint)r15.w >> (32-4);                  } else r15.w = (uint)r23.y >> 24;
                  r15.w = 1 << (int)r15.w;
                  r16.w = (uint)r23.y >> 28;
                  r16.w = 1 << (int)r16.w;
                  r17.w = cmp((int)r24.w == 2);
                  if (r17.w != 0) {
                    r17.w = (int)r23.y & 4095;
                    if (12 == 0) r22.x = 0; else if (12+12 < 32) {                     r22.x = (uint)r23.y << (32-(12 + 12)); r22.x = (uint)r22.x >> (32-12);                    } else r22.x = (uint)r23.y >> 12;
                    if (10 == 0) r22.w = 0; else if (10+20 < 32) {                     r22.w = (uint)r23.w << (32-(10 + 20)); r22.w = (uint)r22.w >> (32-10);                    } else r22.w = (uint)r23.w >> 20;
                    r30.xz = (uint2)r15.ww;
                    r30.y = (uint)r16.w;
                    r31.xy = r24.xy * r30.zy + float2(0.5,0.5);
                    r31.zw = float2(-0.5,-0.5) + r30.zy;
                    r31.xy = min(r31.xy, r31.zw);
                    r32.x = (uint)r17.w;
                    r32.y = (uint)r22.x;
                    r31.xy = r32.xy + r31.xy;
                    r31.xy = invMaskTexSizes.xy * r31.xy;
                    r31.z = (uint)r22.w;
                    r32.xyz = invMaskTexSizes.xyx * r28.zyz;
                    r32.xyz = r32.xyz * r30.xyz;
                    r33.xyz = invMaskTexSizes.xyx * r29.zyz;
                    r30.xyz = r33.xyz * r30.xyz;
                    r17.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r31.xyz, r32.x, r30.x).x;
                  } else {
                    r19.w = cmp((int)r24.w == 4);
                    if (r19.w != 0) {
                      r19.w = (int)r23.y & 4095;
                      if (12 == 0) r22.x = 0; else if (12+12 < 32) {                       r22.x = (uint)r23.y << (32-(12 + 12)); r22.x = (uint)r22.x >> (32-12);                      } else r22.x = (uint)r23.y >> 12;
                      if (10 == 0) r22.w = 0; else if (10+20 < 32) {                       r22.w = (uint)r23.w << (32-(10 + 20)); r22.w = (uint)r22.w >> (32-10);                      } else r22.w = (uint)r23.w >> 20;
                      r30.xz = (uint2)r15.ww;
                      r30.y = (uint)r16.w;
                      r24.zw = r24.xy * r30.zy + float2(0.5,0.5);
                      r31.xy = float2(-0.5,-0.5) + r30.zy;
                      r24.zw = min(r31.xy, r24.zw);
                      r31.x = (uint)r19.w;
                      r31.yz = (uint2)r22.xw;
                      r24.zw = r31.xy + r24.zw;
                      r31.xy = invBcTexSizes.xy * r24.zw;
                      r32.xyz = invBcTexSizes.xyx * r28.zyz;
                      r32.xyz = r32.xyz * r30.xyz;
                      r33.xyz = invBcTexSizes.xyx * r29.zyz;
                      r30.xyz = r33.xyz * r30.xyz;
                      r17.w = materialTexBC7.SampleGrad(samplerLinearClamp_s, r31.xyz, r32.x, r30.x).x;
                    } else {
                      r19.w = (int)r23.y & 4095;
                      if (12 == 0) r22.x = 0; else if (12+12 < 32) {                       r22.x = (uint)r23.y << (32-(12 + 12)); r22.x = (uint)r22.x >> (32-12);                      } else r22.x = (uint)r23.y >> 12;
                      if (10 == 0) r22.w = 0; else if (10+20 < 32) {                       r22.w = (uint)r23.w << (32-(10 + 20)); r22.w = (uint)r22.w >> (32-10);                      } else r22.w = (uint)r23.w >> 20;
                      r30.xz = (uint2)r15.ww;
                      r30.y = (uint)r16.w;
                      r24.zw = r24.xy * r30.zy + float2(0.5,0.5);
                      r31.xy = float2(-0.5,-0.5) + r30.zy;
                      r24.zw = min(r31.xy, r24.zw);
                      r31.x = (uint)r19.w;
                      r31.yz = (uint2)r22.xw;
                      r24.zw = r31.xy + r24.zw;
                      r31.xy = invBcTexSizes.zw * r24.zw;
                      r32.xyz = invBcTexSizes.zwz * r28.zyz;
                      r32.xyz = r32.xyz * r30.xyz;
                      r33.xyz = invBcTexSizes.zwz * r29.zyz;
                      r30.xyz = r33.xyz * r30.xyz;
                      r17.w = materialTexBC3.SampleGrad(samplerLinearClamp_s, r31.xyz, r32.x, r30.x).x;
                    }
                  }
                  r30.xyz = r17.www * float3(0.959999979,0.959999979,0.959999979) + float3(0.0399999991,0.0399999991,0.0399999991);
                  r15.w = saturate(1 + -r17.w);
                  r21.xyz = r21.xyz * r15.www;
                } else {
                  r30.xyz = float3(0.0399999991,0.0399999991,0.0399999991);
                }
                r22.xy = (uint2)r22.zy >> int2(16,16);
                if (r22.x != 0) {
                  r15.w = cmp((int)r22.x == 2);
                  if (r15.w != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r12.z, r12.z, l(112), t36.xxxx
                  r12.z = samp0[]..swiz;
                    if (4 == 0) r22.z = 0; else if (4+24 < 32) {                     r22.z = (uint)r23.z << (32-(4 + 24)); r22.z = (uint)r22.z >> (32-4);                    } else r22.z = (uint)r23.z >> 24;
                    if (12 == 0) r22.w = 0; else if (12+12 < 32) {                     r22.w = (uint)r23.z << (32-(12 + 12)); r22.w = (uint)r22.w >> (32-12);                    } else r22.w = (uint)r23.z >> 12;
                    r15.w = 1 << (int)r22.z;
                    r16.w = (uint)r23.z >> 28;
                    r16.w = 1 << (int)r16.w;
                    r17.w = (int)r23.z & 4095;
                    r12.z = (int)r12.z & 1023;
                    r31.xz = (uint2)r15.ww;
                    r31.y = (uint)r16.w;
                    r23.yz = r24.xy * r31.zy + float2(0.5,0.5);
                    r24.zw = float2(-0.5,-0.5) + r31.zy;
                    r23.yz = min(r24.zw, r23.yz);
                    r32.x = (uint)r17.w;
                    r32.y = (uint)r22.w;
                    r22.zw = r32.xy + r23.yz;
                    r32.xy = invMaskTexSizes.xy * r22.zw;
                    r32.z = (uint)r12.z;
                    r33.xyz = invMaskTexSizes.xyx * r28.zyz;
                    r33.xyz = r33.xyz * r31.xyz;
                    r34.xyz = invMaskTexSizes.xyx * r29.zyz;
                    r31.xyz = r34.xyz * r31.xyz;
                    r12.z = materialTexMask.SampleGrad(samplerLinearClamp_s, r32.xyz, r33.z, r31.z).x;
                  } else {
                    r15.w = cmp((int)r22.x == 6);
                    r12.z = r15.w ? 0 : 1;
                  }
                } else {
                  r12.z = 1;
                }
                r12.z = saturate(0.764705896 * r12.z);
                if (r22.y != 0) {
                  r15.w = cmp((int)r22.y == 3);
                  if (r15.w != 0) {
                    if (4 == 0) r22.x = 0; else if (4+24 < 32) {                     r22.x = (uint)r23.x << (32-(4 + 24)); r22.x = (uint)r22.x >> (32-4);                    } else r22.x = (uint)r23.x >> 24;
                    if (12 == 0) r22.y = 0; else if (12+12 < 32) {                     r22.y = (uint)r23.x << (32-(12 + 12)); r22.y = (uint)r22.y >> (32-12);                    } else r22.y = (uint)r23.x >> 12;
                    if (10 == 0) r22.z = 0; else if (10+10 < 32) {                     r22.z = (uint)r23.w << (32-(10 + 10)); r22.z = (uint)r22.z >> (32-10);                    } else r22.z = (uint)r23.w >> 10;
                    r15.w = 1 << (int)r22.x;
                    r16.w = (uint)r23.x >> 28;
                    r16.w = 1 << (int)r16.w;
                    r17.w = (int)r23.x & 4095;
                    r23.xz = (uint2)r15.ww;
                    r23.y = (uint)r16.w;
                    r22.xw = r24.xy * r23.xy + float2(0.5,0.5);
                    r24.xy = float2(-0.5,-0.5) + r23.zy;
                    r22.xw = min(r24.xy, r22.xw);
                    r24.x = (uint)r17.w;
                    r24.yz = (uint2)r22.yz;
                    r22.xy = r24.xy + r22.xw;
                    r24.xy = invMaskTexSizes.zw * r22.xy;
                    r22.xyz = invMaskTexSizes.zwz * r28.xyz;
                    r22.xyz = r22.xyz * r23.xyz;
                    r28.xyz = invMaskTexSizes.zwz * r29.xyz;
                    r23.xyz = r28.xyz * r23.xyz;
                    r22.xyz = materialTexBC7linear.SampleGrad(samplerLinearClamp_s, r24.xyz, r22.xyz, r23.xyz).xyz;
                  } else {
                    r22.xyz = float3(0.5,0.5,1);
                  }
                  r22.xy = r22.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
                  r15.w = dot(r22.xy, r22.xy);
                  r15.w = 1 + -r15.w;
                  r15.w = max(0, r15.w);
                  r15.w = sqrt(r15.w);
                  r16.w = r22.z * r22.z;
                  r16.w = 0.333333343 * r16.w;
                  r16.w = min(1, r16.w);
                  r17.w = dot(r27.xyz, r27.xyz);
                  r17.w = rsqrt(r17.w);
                  r23.xyz = r27.xyz * r17.www;
                  r17.w = dot(-r26.xyz, -r26.xyz);
                  r17.w = rsqrt(r17.w);
                  r24.xyz = -r26.xyz * r17.www;
                  r25.xyz = r25.xyz * r3.www;
                  r23.xyz = r23.xyz * r3.www;
                  r24.xyz = r24.xyz * r3.www;
                  r17.w = -17 * r12.z;
                  r17.w = exp2(r17.w);
                  r16.w = r17.w + r16.w;
                  r16.w = log2(r16.w);
                  r16.w = -0.0588235296 * r16.w;
                  r12.z = max(0, r16.w);
                  r22.yzw = r24.xyz * r22.yyy;
                  r22.xyz = r23.xyz * r22.xxx + r22.yzw;
                  r22.xyz = r25.xyz * r15.www + r22.xyz;
                  r15.w = dot(r22.xyz, r22.xyz);
                  r15.w = rsqrt(r15.w);
                  r22.xyz = r22.xyz * r15.www;
                  r15.w = 1 + -r12.w;
                  r19.x = r18.x;
                  r23.xyz = r19.xyz * r15.www;
                  r19.xyz = r22.xyz * r12.www + r23.xyz;
                  r18.x = r19.x;
                }
                r15.w = 1 + -r12.w;
                r22.xyz = r15.www * r13.xyz;
                r13.xyz = r21.xyz * r12.www + r22.xyz;
                r20.z = r18.y;
                r21.xyz = r20.xyz * r15.www;
                r20.xyz = r30.xyz * r12.www + r21.xyz;
                r16.w = r18.w * r15.w;
                r18.z = r18.z * r15.w + r12.w;
                r18.w = r12.z * r12.w + r16.w;
                r18.y = r20.z;
              }
            }
          }
        }
      }
      r14.xyzw = r18.xwyz;
      r15.xyz = r13.xyz;
      r16.yz = r19.yz;
      r17.xy = r20.xy;
      r7.z = (int)r7.z + 32;
    }
    r16.x = r14.x;
    r17.z = r14.z;
    r14.xy = r14.wy;
  } else {
    r15.xyz = float3(0,0,0);
    r16.xyz = float3(0,0,0);
    r17.xyz = float3(0,0,0);
    r14.xy = float2(0,0);
  }
  if (r7.w != 0) {
    r10.xyz = eyeOffset.xyz + v6.xyz;
    r0.y = numDynamicDecals + numStaticDecals;
    r6.w = 0.0078125 * r4.w;
    r6.w = min(15, r6.w);
    r6.w = (uint)r6.w;
    r11.xy = (uint2)r7.xy >> int2(6,6);
    r11.z = (uint)r6.w << 4;
    r6.w = numStaticDecals & -32;
    r7.z = (int)-r6.w + numStaticDecals;
    r7.w = (int)r0.y & -32;
    r8.w = (int)r0.y + (int)-r7.w;
    r12.xy = float2(0,0);
    r13.w = 0;
    r10.w = 1;
    r18.xyz = r15.xyz;
    r19.xyz = r16.xyz;
    r20.xyz = r17.xyz;
    r21.xy = r14.xy;
    r9.w = r6.w;
    while (true) {
      r11.w = cmp((uint)r9.w >= (uint)r0.y);
      if (r11.w != 0) break;
      r12.z = (uint)r9.w >> 5;
      r13.xyz = (int3)r11.xyz + (int3)r12.xyz;
      r11.w = visibleDecals.Load(r13.xyzw).x;
      r12.z = cmp((int)r6.w == (int)r9.w);
      bitmask.w = ((~(-1 << r7.z)) << 0) & 0xffffffff;  r12.w = (((uint)0 << 0) & bitmask.w) | ((uint)r11.w & ~bitmask.w);
      r11.w = r12.z ? r12.w : r11.w;
      r12.z = cmp((int)r7.w == (int)r9.w);
      if (r8.w == 0) r12.w = 0; else if (r8.w+0 < 32) {       r12.w = (uint)r11.w << (32-(r8.w + 0)); r12.w = (uint)r12.w >> (32-r8.w);      } else r12.w = (uint)r11.w >> 0;
      r11.w = r12.z ? r12.w : r11.w;
      r12.z = (int)r5.w + (int)r9.w;
      r13.xyz = r18.xyz;
      r22.xyz = r19.xyz;
      r23.xyz = r20.xyz;
      r14.zw = r21.xy;
      r12.w = r11.w;
      while (true) {
        if (r12.w == 0) break;
        r15.w = firstbitlow((uint)r12.w);
        r16.w = 1 << (int)r15.w;
        r17.w = (int)r12.w & (int)r16.w;
        if (r17.w != 0) {
          r12.w = (int)r12.w ^ (int)r16.w;
          r16.w = (int)r12.z + (int)r15.w;
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
          r24.xyz = -v6.xyz + r24.xyz;
          r25.z = r24.w;
          r24.xyz = cmp(abs(r24.xyz) < r25.zxy);
          r16.w = r24.y ? r24.x : 0;
          r16.w = r24.z ? r16.w : 0;
          if (r16.w != 0) {
            r15.w = (int)r9.w + (int)r15.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r24.xyz, r15.w, l(0), t36.xyzx
          r24.x = samp0[]..swiz;
          r24.y = samp0[]..swiz;
          r24.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r25.xyz, r15.w, l(16), t36.xyzx
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r26.xyz, r15.w, l(32), t36.xyzx
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
            r27.x = r24.x;
            r27.y = r25.x;
            r27.z = r26.x;
            r16.w = dot(r27.xyz, r27.xyz);
            r16.w = rsqrt(r16.w);
            r28.xyz = r27.xyz * r16.www;
            r16.w = dot(r28.xyz, v3.xyz);
            r16.w = cmp(r16.w >= 0.5);
            if (r16.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r29.xyw, r15.w, l(48), t36.xyxz
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.w = samp0[]..swiz;
              r27.w = r29.x;
              r27.x = dot(r10.xyzw, r27.xyzw);
              r30.x = r24.y;
              r30.y = r25.y;
              r30.z = r26.y;
              r30.w = r29.y;
              r27.y = dot(r10.xyzw, r30.xyzw);
              r29.x = r24.z;
              r29.y = r25.z;
              r29.z = r26.z;
              r27.z = dot(r10.xyzw, r29.xyzw);
              r24.xyz = cmp(abs(r27.xyz) < float3(1,1,1));
              r16.w = r24.y ? r24.x : 0;
              r16.w = r24.z ? r16.w : 0;
              if (r16.w != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r24.xyzw, r15.w, l(64), t36.xyzw
              r24.x = samp0[]..swiz;
              r24.y = samp0[]..swiz;
              r24.z = samp0[]..swiz;
              r24.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r25.xyzw, r15.w, l(80), t36.xyzw
              r25.x = samp0[]..swiz;
              r25.y = samp0[]..swiz;
              r25.z = samp0[]..swiz;
              r25.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r26.xyzw, r15.w, l(96), t36.xyzw
              r26.x = samp0[]..swiz;
              r26.y = samp0[]..swiz;
              r26.z = samp0[]..swiz;
              r26.w = samp0[]..swiz;
                r31.x = dot(r8.xyz, r30.xyz);
                r31.y = dot(r8.xyz, r29.xyz);
                r32.x = dot(r9.xyz, r30.xyz);
                r32.y = dot(r9.xyz, r29.xyz);
                r21.zw = r27.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                r27.xyz = float3(0.5,-0.5,0.5) * r31.xyx;
                r31.xyz = float3(0.5,-0.5,0.5) * r32.xyx;
                r32.xy = (int2)r25.yz & int2(65535,65535);
                if (r32.x != 0) {
                  if (4 == 0) r16.w = 0; else if (4+24 < 32) {                   r16.w = (uint)r25.w << (32-(4 + 24)); r16.w = (uint)r16.w >> (32-4);                  } else r16.w = (uint)r25.w >> 24;
                  r16.w = 1 << (int)r16.w;
                  r17.w = (uint)r25.w >> 28;
                  r17.w = 1 << (int)r17.w;
                  r18.w = cmp((int)r32.x == 4);
                  if (r18.w != 0) {
                    r18.w = (int)r25.w & 4095;
                    if (12 == 0) r19.w = 0; else if (12+12 < 32) {                     r19.w = (uint)r25.w << (32-(12 + 12)); r19.w = (uint)r19.w >> (32-12);                    } else r19.w = (uint)r25.w >> 12;
                    r20.w = (int)r26.w & 1023;
                    r33.xz = (uint2)r16.ww;
                    r33.y = (uint)r17.w;
                    r32.zw = r21.zw * r33.zy + float2(0.5,0.5);
                    r34.xy = float2(-0.5,-0.5) + r33.zy;
                    r32.zw = min(r34.xy, r32.zw);
                    r34.x = (uint)r18.w;
                    r34.y = (uint)r19.w;
                    r32.zw = r34.xy + r32.zw;
                    r34.xy = invBcTexSizes.xy * r32.zw;
                    r34.z = (uint)r20.w;
                    r35.xyz = invBcTexSizes.xyx * r27.zyz;
                    r35.xyz = r35.xyz * r33.xyz;
                    r36.xyz = invBcTexSizes.xyx * r31.zyz;
                    r33.xyz = r36.xyz * r33.xyz;
                    r33.xyzw = materialTexBC7.SampleGrad(samplerLinearClamp_s, r34.xyz, r35.xyzx, r33.xyzx).xyzw;
                  } else {
                    r18.w = cmp((int)r32.x == 1);
                    if (r18.w != 0) {
                      r18.w = (int)r25.w & 4095;
                      if (12 == 0) r19.w = 0; else if (12+12 < 32) {                       r19.w = (uint)r25.w << (32-(12 + 12)); r19.w = (uint)r19.w >> (32-12);                      } else r19.w = (uint)r25.w >> 12;
                      r20.w = (int)r26.w & 1023;
                      r34.xz = (uint2)r16.ww;
                      r34.y = (uint)r17.w;
                      r32.xz = r21.zw * r34.zy + float2(0.5,0.5);
                      r35.xy = float2(-0.5,-0.5) + r34.zy;
                      r32.xz = min(r35.xy, r32.xz);
                      r35.x = (uint)r18.w;
                      r35.y = (uint)r19.w;
                      r32.xz = r35.xy + r32.xz;
                      r35.xy = invBcTexSizes.zw * r32.xz;
                      r35.z = (uint)r20.w;
                      r32.xzw = invBcTexSizes.zwz * r27.zyz;
                      r32.xzw = r32.xzw * r34.xyz;
                      r36.xyz = invBcTexSizes.zwz * r31.zyz;
                      r34.xyz = r36.xyz * r34.xyz;
                      r33.xyzw = materialTexBC3.SampleGrad(samplerLinearClamp_s, r35.xyz, r32.xzwx, r34.xyzx).xyzw;
                    } else {
                      r33.xyzw = float4(1,1,1,1);
                    }
                  }
                  r24.xyz = r33.xyz * r24.xyz;
                  r16.w = r33.w * r24.w;
                } else {
                  r24.xyz = float3(0,0,0);
                  r16.w = 0;
                }
                r17.w = cmp(r25.x != 1.000000);
                r18.w = r16.w + r24.w;
                r18.w = saturate(r18.w * r25.x + -r25.x);
                r16.w = r17.w ? r18.w : r16.w;
                if (r32.y != 0) {
                  if (4 == 0) r17.w = 0; else if (4+24 < 32) {                   r17.w = (uint)r26.y << (32-(4 + 24)); r17.w = (uint)r17.w >> (32-4);                  } else r17.w = (uint)r26.y >> 24;
                  r17.w = 1 << (int)r17.w;
                  r18.w = (uint)r26.y >> 28;
                  r18.w = 1 << (int)r18.w;
                  r19.w = cmp((int)r32.y == 2);
                  if (r19.w != 0) {
                    r19.w = (int)r26.y & 4095;
                    if (12 == 0) r25.x = 0; else if (12+12 < 32) {                     r25.x = (uint)r26.y << (32-(12 + 12)); r25.x = (uint)r25.x >> (32-12);                    } else r25.x = (uint)r26.y >> 12;
                    if (10 == 0) r25.w = 0; else if (10+20 < 32) {                     r25.w = (uint)r26.w << (32-(10 + 20)); r25.w = (uint)r25.w >> (32-10);                    } else r25.w = (uint)r26.w >> 20;
                    r33.xz = (uint2)r17.ww;
                    r33.y = (uint)r18.w;
                    r32.xz = r21.zw * r33.zy + float2(0.5,0.5);
                    r34.xy = float2(-0.5,-0.5) + r33.zy;
                    r32.xz = min(r34.xy, r32.xz);
                    r34.x = (uint)r19.w;
                    r34.yz = (uint2)r25.xw;
                    r32.xz = r34.xy + r32.xz;
                    r34.xy = invMaskTexSizes.xy * r32.xz;
                    r32.xzw = invMaskTexSizes.xyx * r27.zyz;
                    r32.xzw = r32.xzw * r33.xyz;
                    r35.xyz = invMaskTexSizes.xyx * r31.zyz;
                    r33.xyz = r35.xyz * r33.xyz;
                    r19.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r34.xyz, r32.x, r33.x).x;
                  } else {
                    r20.w = cmp((int)r32.y == 4);
                    if (r20.w != 0) {
                      r20.w = (int)r26.y & 4095;
                      if (12 == 0) r25.x = 0; else if (12+12 < 32) {                       r25.x = (uint)r26.y << (32-(12 + 12)); r25.x = (uint)r25.x >> (32-12);                      } else r25.x = (uint)r26.y >> 12;
                      if (10 == 0) r25.w = 0; else if (10+20 < 32) {                       r25.w = (uint)r26.w << (32-(10 + 20)); r25.w = (uint)r25.w >> (32-10);                      } else r25.w = (uint)r26.w >> 20;
                      r32.xz = (uint2)r17.ww;
                      r32.y = (uint)r18.w;
                      r33.xy = r21.zw * r32.zy + float2(0.5,0.5);
                      r33.zw = float2(-0.5,-0.5) + r32.zy;
                      r33.xy = min(r33.xy, r33.zw);
                      r34.x = (uint)r20.w;
                      r34.y = (uint)r25.x;
                      r33.xy = r34.xy + r33.xy;
                      r33.xy = invBcTexSizes.xy * r33.xy;
                      r33.z = (uint)r25.w;
                      r34.xyz = invBcTexSizes.xyx * r27.zyz;
                      r34.xyz = r34.xyz * r32.xyz;
                      r35.xyz = invBcTexSizes.xyx * r31.zyz;
                      r32.xyz = r35.xyz * r32.xyz;
                      r19.w = materialTexBC7.SampleGrad(samplerLinearClamp_s, r33.xyz, r34.x, r32.x).x;
                    } else {
                      r20.w = (int)r26.y & 4095;
                      if (12 == 0) r25.x = 0; else if (12+12 < 32) {                       r25.x = (uint)r26.y << (32-(12 + 12)); r25.x = (uint)r25.x >> (32-12);                      } else r25.x = (uint)r26.y >> 12;
                      if (10 == 0) r25.w = 0; else if (10+20 < 32) {                       r25.w = (uint)r26.w << (32-(10 + 20)); r25.w = (uint)r25.w >> (32-10);                      } else r25.w = (uint)r26.w >> 20;
                      r32.xz = (uint2)r17.ww;
                      r32.y = (uint)r18.w;
                      r33.xy = r21.zw * r32.zy + float2(0.5,0.5);
                      r33.zw = float2(-0.5,-0.5) + r32.zy;
                      r33.xy = min(r33.xy, r33.zw);
                      r34.x = (uint)r20.w;
                      r34.y = (uint)r25.x;
                      r33.xy = r34.xy + r33.xy;
                      r33.xy = invBcTexSizes.zw * r33.xy;
                      r33.z = (uint)r25.w;
                      r34.xyz = invBcTexSizes.zwz * r27.zyz;
                      r34.xyz = r34.xyz * r32.xyz;
                      r35.xyz = invBcTexSizes.zwz * r31.zyz;
                      r32.xyz = r35.xyz * r32.xyz;
                      r19.w = materialTexBC3.SampleGrad(samplerLinearClamp_s, r33.xyz, r34.x, r32.x).x;
                    }
                  }
                  r32.xyz = r19.www * float3(0.959999979,0.959999979,0.959999979) + float3(0.0399999991,0.0399999991,0.0399999991);
                  r17.w = saturate(1 + -r19.w);
                  r24.xyz = r24.xyz * r17.www;
                } else {
                  r32.xyz = float3(0.0399999991,0.0399999991,0.0399999991);
                }
                r25.xy = (uint2)r25.zy >> int2(16,16);
                if (r25.x != 0) {
                  r17.w = cmp((int)r25.x == 2);
                  if (r17.w != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r15.w, r15.w, l(112), t36.xxxx
                  r15.w = samp0[]..swiz;
                    if (4 == 0) r25.z = 0; else if (4+24 < 32) {                     r25.z = (uint)r26.z << (32-(4 + 24)); r25.z = (uint)r25.z >> (32-4);                    } else r25.z = (uint)r26.z >> 24;
                    if (12 == 0) r25.w = 0; else if (12+12 < 32) {                     r25.w = (uint)r26.z << (32-(12 + 12)); r25.w = (uint)r25.w >> (32-12);                    } else r25.w = (uint)r26.z >> 12;
                    r17.w = 1 << (int)r25.z;
                    r18.w = (uint)r26.z >> 28;
                    r18.w = 1 << (int)r18.w;
                    r19.w = (int)r26.z & 4095;
                    r15.w = (int)r15.w & 1023;
                    r33.xz = (uint2)r17.ww;
                    r33.y = (uint)r18.w;
                    r26.yz = r21.zw * r33.zy + float2(0.5,0.5);
                    r34.xy = float2(-0.5,-0.5) + r33.zy;
                    r26.yz = min(r34.xy, r26.yz);
                    r34.x = (uint)r19.w;
                    r34.y = (uint)r25.w;
                    r25.zw = r34.xy + r26.yz;
                    r34.xy = invMaskTexSizes.xy * r25.zw;
                    r34.z = (uint)r15.w;
                    r35.xyz = invMaskTexSizes.xyx * r27.zyz;
                    r35.xyz = r35.xyz * r33.xyz;
                    r36.xyz = invMaskTexSizes.xyx * r31.zyz;
                    r33.xyz = r36.xyz * r33.xyz;
                    r15.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r34.xyz, r35.x, r33.x).x;
                  } else {
                    r17.w = cmp((int)r25.x == 6);
                    r15.w = r17.w ? 0 : 1;
                  }
                } else {
                  r15.w = 1;
                }
                r15.w = saturate(0.764705896 * r15.w);
                if (r25.y != 0) {
                  r17.w = cmp((int)r25.y == 3);
                  if (r17.w != 0) {
                    if (4 == 0) r25.x = 0; else if (4+24 < 32) {                     r25.x = (uint)r26.x << (32-(4 + 24)); r25.x = (uint)r25.x >> (32-4);                    } else r25.x = (uint)r26.x >> 24;
                    if (12 == 0) r25.y = 0; else if (12+12 < 32) {                     r25.y = (uint)r26.x << (32-(12 + 12)); r25.y = (uint)r25.y >> (32-12);                    } else r25.y = (uint)r26.x >> 12;
                    if (10 == 0) r25.z = 0; else if (10+10 < 32) {                     r25.z = (uint)r26.w << (32-(10 + 10)); r25.z = (uint)r25.z >> (32-10);                    } else r25.z = (uint)r26.w >> 10;
                    r17.w = 1 << (int)r25.x;
                    r18.w = (uint)r26.x >> 28;
                    r18.w = 1 << (int)r18.w;
                    r19.w = (int)r26.x & 4095;
                    r26.xz = (uint2)r17.ww;
                    r26.y = (uint)r18.w;
                    r21.zw = r21.zw * r26.xy + float2(0.5,0.5);
                    r25.xw = float2(-0.5,-0.5) + r26.zy;
                    r21.zw = min(r25.xw, r21.zw);
                    r33.x = (uint)r19.w;
                    r33.yz = (uint2)r25.yz;
                    r21.zw = r33.xy + r21.zw;
                    r33.xy = invMaskTexSizes.zw * r21.zw;
                    r25.xyz = invMaskTexSizes.zwz * r27.xyz;
                    r25.xyz = r25.xyz * r26.xyz;
                    r27.xyz = invMaskTexSizes.zwz * r31.xyz;
                    r26.xyz = r27.xyz * r26.xyz;
                    r25.xyz = materialTexBC7linear.SampleGrad(samplerLinearClamp_s, r33.xyz, r25.xyz, r26.xyz).xyz;
                  } else {
                    r25.xyz = float3(0.5,0.5,1);
                  }
                  r21.zw = r25.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
                  r17.w = dot(r21.zw, r21.zw);
                  r17.w = 1 + -r17.w;
                  r17.w = max(0, r17.w);
                  r17.w = sqrt(r17.w);
                  r18.w = r25.z * r25.z;
                  r18.w = 0.333333343 * r18.w;
                  r18.w = min(1, r18.w);
                  r19.w = dot(r30.xyz, r30.xyz);
                  r19.w = rsqrt(r19.w);
                  r25.xyz = r30.xyz * r19.www;
                  r19.w = dot(-r29.xyz, -r29.xyz);
                  r19.w = rsqrt(r19.w);
                  r26.xyz = -r29.xyz * r19.www;
                  r27.xyz = r28.xyz * r3.www;
                  r25.xyz = r25.xyz * r3.www;
                  r26.xyz = r26.xyz * r3.www;
                  r19.w = -17 * r15.w;
                  r19.w = exp2(r19.w);
                  r18.w = r19.w + r18.w;
                  r18.w = log2(r18.w);
                  r18.w = -0.0588235296 * r18.w;
                  r15.w = max(0, r18.w);
                  r26.xyz = r26.xyz * r21.www;
                  r25.xyz = r25.xyz * r21.zzz + r26.xyz;
                  r25.xyz = r27.xyz * r17.www + r25.xyz;
                  r17.w = dot(r25.xyz, r25.xyz);
                  r17.w = rsqrt(r17.w);
                  r25.xyz = r25.xyz * r17.www;
                  r17.w = 1 + -r16.w;
                  r26.xyz = r22.xyz * r17.www;
                  r22.xyz = r25.xyz * r16.www + r26.xyz;
                }
                r17.w = 1 + -r16.w;
                r25.xyz = r17.www * r13.xyz;
                r13.xyz = r24.xyz * r16.www + r25.xyz;
                r24.xyz = r23.xyz * r17.www;
                r23.xyz = r32.xyz * r16.www + r24.xyz;
                r18.w = r17.w * r14.w;
                r14.z = r14.z * r17.w + r16.w;
                r14.w = r15.w * r16.w + r18.w;
              }
            }
          }
        }
      }
      r18.xyz = r13.xyz;
      r19.xyz = r22.xyz;
      r20.xyz = r23.xyz;
      r21.xy = r14.zw;
      r9.w = (int)r9.w + 32;
    }
    r15.xyz = r18.xyz;
    r16.xyz = r19.xyz;
    r17.xyz = r20.xyz;
    r14.xy = r21.xy;
  }
  r14.x = saturate(r14.x);
  r0.y = 1 + -r14.x;
  r1.xyz = r1.xyz * r0.yyy + r15.xyz;
  r0.w = r0.w * r0.y + r14.x;
  r2.yzw = r2.yzw * r0.yyy + r16.xyz;
  r3.w = dot(r2.yzw, r2.yzw);
  r3.w = rsqrt(r3.w);
  r8.xyz = r3.www * r2.yzw;
  r9.y = r1.w * r0.y + r14.y;
  r2.yzw = r3.xyz * r0.yyy + r17.xyz;
  r0.x = saturate(r0.x);
  r0.x = hdrScale * r0.x;
  r3.xyz = cmp(r0.zzz == float3(3,2,1));
  r10.xyz = r3.zzz ? tint1.xyz : emissiveTint1.xyz;
  r3.yzw = r3.yyy ? tint2.xyz : r10.xyz;
  r3.xyz = r3.xxx ? tint3.xyz : r3.yzw;
  r0.z = dot(-v6.xyz, -v6.xyz);
  r0.z = rsqrt(r0.z);
  r10.xyz = -v6.xyz * r0.zzz;
  r1.w = dot(r10.xyz, r4.xyz);
  r4.x = dot(r10.xyz, r5.xyz);
  r4.y = dot(r10.xyz, r6.xyz);
  r3.w = cmp(0 < r1.w);
  r4.xy = -r4.xy / r1.ww;
  r4.xy = r3.ww ? r4.xy : 0;
  r3.w = 9.99999975e-06 + relativeHDR;
  r4.xy = r4.xy * r3.ww + w1.xy;
  r5.xyzw = emissiveMap.Sample(colorSampler_s, r4.xy).xyzw;
  r3.xyz = r5.xyz * r3.xyz;
  r1.w = saturate(r1.w);
  r3.w = log2(r1.w);
  r3.w = emissiveFalloffPower * r3.w;
  r3.w = exp2(r3.w);
  r1.w = 1 + -r1.w;
  r1.w = log2(r1.w);
  r1.w = emissiveFalloffPower * r1.w;
  r1.w = exp2(r1.w);
  r1.w = relativeHDR ? r1.w : r3.w;
  r3.w = cmp(emissiveFalloffPower == 0.000000);
  r1.w = r3.w ? 1 : r1.w;
  r0.x = r5.w * r0.x;
  r0.x = r0.x * r1.w;
  r0.x = r0.x * r0.y;
  r3.xyz = r3.xyz * r0.xxx;
  r0.x = cmp(isDepthHack != 0);
  r4.xy = (uint2)r7.yx;
  r0.y = dot(r4.yx, float2(0.0671105608,0.00583714992));
  r0.y = frac(r0.y);
  r0.y = 52.9829178 * r0.y;
  r0.y = frac(r0.y);
  r0.y = r0.y * 6.28318548 + gameTick.w;
  sincos(r0.y, r5.x, r6.x);
  r0.y = dot(r4.xy, float2(0.0671105608,0.00583714992));
  r0.y = frac(r0.y);
  r0.y = 52.9829178 * r0.y;
  r0.y = frac(r0.y);
  r0.y = r0.y * 6.28318548 + gameTick.w;
  sincos(r0.y, r4.x, r11.x);
  r9.x = saturate(dot(r8.xyz, r10.xyz));
  r0.y = dot(-r10.xyz, r8.xyz);
  r0.y = r0.y + r0.y;
  r12.xyz = r8.xyz * -r0.yyy + -r10.xyz;
  r0.y = 17 * r9.y;
  r0.y = exp2(r0.y);
  r0.y = 2 + r0.y;
  r0.y = 2 / r0.y;
  r1.w = sqrt(r0.y);
  r4.y = 1 + -r9.y;
  r4.zw = float2(5,0.0078125) * r4.yw;
  r5.z = r4.y * 5 + -2.5;
  r5.z = saturate(0.400000006 * r5.z);
  r5.z = 100 * r5.z;
  r7.zw = -r4.yy * float2(10,5) + float2(6.85740995,7.08500004);
  r5.w = exp2(r7.z);
  r5.w = r9.x * r5.w;
  r5.w = 9.1368103 * r5.w;
  r6.w = r4.z * r4.y;
  r6.w = -r6.w * 2.0159049 + r7.w;
  r6.w = exp2(r6.w);
  r6.w = r9.x * r6.w;
  r6.w = 9.70808983 * r6.w;
  r5.w = max(r6.w, r5.w);
  r5.w = max(1.26815999, r5.w);
  r4.w = min(15, r4.w);
  r4.w = (uint)r4.w;
  r7.xy = (uint2)r7.xy >> int2(6,6);
  r7.z = (uint)r4.w << 4;
  r13.xy = float2(0,0);
  r14.w = 0;
  r15.yz = float2(0,1);
  r16.xy = float2(0,0);
  r17.xy = float2(0,0);
  r18.xy = float2(0,0);
  r19.x = 1;
  r20.xyzw = float4(0,0,0,0);
  r21.yzw = float3(0,0,0);
  r4.w = 0;
  r6.w = 0;
  while (true) {
    r7.w = cmp((uint)r6.w >= numRefProbes);
    if (r7.w != 0) break;
    r13.z = (uint)r6.w >> 5;
    r14.xyz = (int3)r7.xyz + (int3)r13.xyz;
    r7.w = visibleProbes.Load(r14.xyzw).x;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r6.w, l(0), t15.wxyz
  r22.x = samp0[]..swiz;
  r22.y = samp0[]..swiz;
  r22.z = samp0[]..swiz;
  r22.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r6.w, l(16), t15.xyzw
  r23.x = samp0[]..swiz;
  r23.y = samp0[]..swiz;
  r23.z = samp0[]..swiz;
  r23.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r6.w, l(32), t15.yxwz
  r24.x = samp0[]..swiz;
  r24.y = samp0[]..swiz;
  r24.z = samp0[]..swiz;
  r24.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r6.w, l(48), t15.xyzw
  r25.x = samp0[]..swiz;
  r25.y = samp0[]..swiz;
  r25.z = samp0[]..swiz;
  r25.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r6.w, l(64), t15.zwxy
  r26.x = samp0[]..swiz;
  r26.y = samp0[]..swiz;
  r26.z = samp0[]..swiz;
  r26.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r6.w, l(80), t15.xyzw
  r27.x = samp0[]..swiz;
  r27.y = samp0[]..swiz;
  r27.z = samp0[]..swiz;
  r27.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r9.zw, r6.w, l(96), t15.xxxy
  r9.z = samp0[]..swiz;
  r9.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r6.w, l(116), t15.xyzw
  r28.x = samp0[]..swiz;
  r28.y = samp0[]..swiz;
  r28.z = samp0[]..swiz;
  r28.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r6.w, l(132), t15.zwxy
  r29.x = samp0[]..swiz;
  r29.y = samp0[]..swiz;
  r29.z = samp0[]..swiz;
  r29.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r6.w, l(148), t15.zwxy
  r30.x = samp0[]..swiz;
  r30.y = samp0[]..swiz;
  r30.z = samp0[]..swiz;
  r30.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r6.w, l(164), t15.zwxy
  r31.x = samp0[]..swiz;
  r31.y = samp0[]..swiz;
  r31.z = samp0[]..swiz;
  r31.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r6.w, l(180), t15.zwxy
  r32.x = samp0[]..swiz;
  r32.y = samp0[]..swiz;
  r32.z = samp0[]..swiz;
  r32.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r6.w, l(196), t15.xyzw
  r33.x = samp0[]..swiz;
  r33.y = samp0[]..swiz;
  r33.z = samp0[]..swiz;
  r33.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xy, r6.w, l(212), t15.xyxx
  r34.x = samp0[]..swiz;
  r34.y = samp0[]..swiz;
    r11.yzw = v6.xyz + -r22.yzw;
    r10.w = dot(r11.yzw, r11.yzw);
    r10.w = sqrt(r10.w);
    r10.w = cmp(probeDebugRadius >= r10.w);
    r13.z = (int)r28.y & 0x0000ffff;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r13.z, l(0), t16.xyzw
  r35.x = samp0[]..swiz;
  r35.y = samp0[]..swiz;
  r35.z = samp0[]..swiz;
  r35.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r13.z, l(16), t16.xyzw
  r36.x = samp0[]..swiz;
  r36.y = samp0[]..swiz;
  r36.z = samp0[]..swiz;
  r36.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r13.z, l(32), t16.xyzw
  r37.x = samp0[]..swiz;
  r37.y = samp0[]..swiz;
  r37.z = samp0[]..swiz;
  r37.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r38.xyzw, r13.z, l(48), t16.xyzw
  r38.x = samp0[]..swiz;
  r38.y = samp0[]..swiz;
  r38.z = samp0[]..swiz;
  r38.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r39.xyzw, r13.z, l(64), t16.xyzw
  r39.x = samp0[]..swiz;
  r39.y = samp0[]..swiz;
  r39.z = samp0[]..swiz;
  r39.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r40.xyzw, r13.z, l(80), t16.xyzw
  r40.x = samp0[]..swiz;
  r40.y = samp0[]..swiz;
  r40.z = samp0[]..swiz;
  r40.w = samp0[]..swiz;
    r13.w = dot(r35.xyz, r11.yzw);
    r13.w = saturate(r13.w + r35.w);
    r14.x = dot(r36.xyz, r11.yzw);
    r14.x = saturate(r14.x + r36.w);
    r13.w = r14.x * r13.w;
    r14.x = dot(r37.xyz, r11.yzw);
    r14.x = saturate(r14.x + r37.w);
    r13.w = r14.x * r13.w;
    r14.x = dot(r38.xyz, r11.yzw);
    r14.x = saturate(r14.x + r38.w);
    r13.w = r14.x * r13.w;
    r14.x = dot(r39.xyz, r11.yzw);
    r14.x = saturate(r14.x + r39.w);
    r13.w = r14.x * r13.w;
    r14.x = dot(r40.xyz, r11.yzw);
    r14.x = saturate(r14.x + r40.w);
    r15.x = r14.x * r13.w;
    r13.w = (int)r9.z & 1;
    r14.xy = r13.ww ? r15.xy : r15.zx;
    r35.xy = r28.zw;
    r35.z = r29.z;
    r13.w = dot(r12.xyz, r35.xyz);
    r14.z = dot(r11.yzw, r35.xyz);
    r14.z = r14.z + -r29.w;
    r15.x = cmp(r14.z >= 0);
    r14.z = max(abs(r14.z), r5.z);
    r14.z = r15.x ? r14.z : -r14.z;
    r13.w = max(1.00000001e-07, -r13.w);
    r13.w = r14.z / r13.w;
    r13.w = min(131072, abs(r13.w));
    r29.z = r30.z;
    r14.z = dot(r12.xyz, r29.xyz);
    r15.x = dot(r11.yzw, r29.xyz);
    r15.x = r15.x + -r30.w;
    r15.w = cmp(r15.x >= 0);
    r15.x = max(abs(r15.x), r5.z);
    r15.x = r15.w ? r15.x : -r15.x;
    r14.z = max(1.00000001e-07, -r14.z);
    r14.z = r15.x / r14.z;
    r13.w = min(abs(r14.z), r13.w);
    r30.z = r31.z;
    r14.z = dot(r12.xyz, r30.xyz);
    r15.x = dot(r11.yzw, r30.xyz);
    r15.x = r15.x + -r31.w;
    r15.w = cmp(r15.x >= 0);
    r15.x = max(abs(r15.x), r5.z);
    r15.x = r15.w ? r15.x : -r15.x;
    r14.z = max(1.00000001e-07, -r14.z);
    r14.z = r15.x / r14.z;
    r13.w = min(abs(r14.z), r13.w);
    r31.z = r32.z;
    r14.z = dot(r12.xyz, r31.xyz);
    r15.x = dot(r11.yzw, r31.xyz);
    r15.x = r15.x + -r32.w;
    r15.w = cmp(r15.x >= 0);
    r15.x = max(abs(r15.x), r5.z);
    r15.x = r15.w ? r15.x : -r15.x;
    r14.z = max(1.00000001e-07, -r14.z);
    r14.z = r15.x / r14.z;
    r13.w = min(abs(r14.z), r13.w);
    r32.z = r33.x;
    r14.z = dot(r12.xyz, r32.xyz);
    r15.x = dot(r11.yzw, r32.xyz);
    r15.x = r15.x + -r33.y;
    r15.w = cmp(r15.x >= 0);
    r15.x = max(abs(r15.x), r5.z);
    r15.x = r15.w ? r15.x : -r15.x;
    r14.z = max(1.00000001e-07, -r14.z);
    r14.z = r15.x / r14.z;
    r13.w = min(abs(r14.z), r13.w);
    r34.zw = r33.zw;
    r14.z = dot(r12.zxy, r34.xzw);
    r15.x = dot(r11.wyz, r34.xzw);
    r15.x = r15.x + -r34.y;
    r15.w = cmp(r15.x >= 0);
    r15.x = max(abs(r15.x), r5.z);
    r15.x = r15.w ? r15.x : -r15.x;
    r14.z = max(1.00000001e-07, -r14.z);
    r14.z = r15.x / r14.z;
    r13.w = min(abs(r14.z), r13.w);
    r29.x = r25.w;
    r29.yz = r26.zw;
    r29.xyz = r29.xyz + r11.yzw;
    r29.xyz = r12.xyz * r13.www + r29.xyz;
    r14.z = dot(r29.xyz, r29.xyz);
    r14.z = sqrt(r14.z);
    r13.w = r13.w / r14.z;
    r13.w = r13.w + r13.w;
    r13.w = sqrt(r13.w);
    r13.w = r4.y * 5 + r13.w;
    r13.w = -0.844799995 + r13.w;
    r22.y = r23.z;
    r22.z = r24.x;
    r30.x = dot(r29.xyz, r22.xyz);
    r31.xy = r23.xw;
    r31.z = r24.w;
    r30.y = dot(r29.xyz, r31.xyz);
    r24.x = r23.y;
    r30.z = dot(r29.xyz, r24.xyz);
    if (6 == 0) r15.x = 0; else if (6+25 < 32) {     r15.x = (uint)r28.y << (32-(6 + 25)); r15.x = (uint)r15.x >> (32-6);    } else r15.x = (uint)r28.y >> 25;
    if (9 == 0) r15.w = 0; else if (9+16 < 32) {     r15.w = (uint)r28.y << (32-(9 + 16)); r15.w = (uint)r15.w >> (32-9);    } else r15.w = (uint)r28.y >> 16;
    r30.w = (uint)r15.w;
    r23.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r30.xyzw, r13.w).xyz;
    r28.yzw = (int3)r23.xyz & int3(-2147483648,-2147483648,-2147483648);
    r28.yzw = cmp((int3)r28.yzw == int3(2139095040,2139095040,2139095040));
    r13.w = (int)r28.z | (int)r28.y;
    r13.w = (int)r28.w | (int)r13.w;
    r23.xyz = r13.www ? float3(1,1,0) : r23.xyz;
    r29.x = dot(r11.yzw, r22.xyz);
    r29.y = dot(r11.yzw, r31.xyz);
    r29.z = dot(r11.yzw, r24.xyz);
    r25.xyz = saturate(r29.xyz * r25.xyz + float3(0.5,0.5,0.5));
    r26.z = r27.x;
    r25.xyz = r25.xyz * r26.xyz + r27.yzw;
    r30.x = dot(r8.xyz, r22.xyz);
    r30.y = dot(r8.xyz, r31.xyz);
    r30.z = dot(r8.xyz, r24.xyz);
    r22.xyz = cmp(float3(0,0,0) < r30.xyz);
    r16.z = r22.x ? 0 : 0.5;
    r24.xyz = r25.xyz + r16.xyz;
    r24.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r24.xyz, 0).xyz;
    r17.z = r22.y ? 0 : 0.5;
    r22.xyw = r25.xyz + r17.xyz;
    r22.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r22.xyw, 0).xyz;
    r18.z = r22.z ? 0 : 0.5;
    r25.xyz = r25.xyz + r18.xyz;
    r25.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
    r26.xyz = r30.xyz * r30.xyz;
    r27.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r30.xyzw, 6).xyz;
    r28.yzw = (int3)r27.xyz & int3(-2147483648,-2147483648,-2147483648);
    r28.yzw = cmp((int3)r28.yzw == int3(2139095040,2139095040,2139095040));
    r13.w = (int)r28.z | (int)r28.y;
    r13.w = (int)r28.w | (int)r13.w;
    r27.xyz = r13.www ? float3(1,1,0) : r27.xyz;
    r29.xyzw = r20.xyzw;
    r28.yzw = r21.yzw;
    r13.w = r4.w;
    r14.z = r7.w;
    while (true) {
      if (r14.z == 0) break;
      r15.w = firstbitlow((uint)r14.z);
      r15.w = 1 << (int)r15.w;
      r16.z = (int)r14.z & (int)r15.w;
      if (r16.z != 0) {
        r15.w = ~(int)r15.w;
        r14.z = (int)r14.z & (int)r15.w;
        if (r10.w != 0) {
          r15.w = r9.z;
          r30.xy = r14.xy;
          r16.z = 1;
          while (true) {
            r16.w = cmp((int)r16.z >= (int)r15.x);
            if (r16.w != 0) break;
            r16.w = (int)r13.z + (int)r16.z;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r16.w, l(0), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r16.w, l(16), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r16.w, l(32), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r16.w, l(48), t16.xyzw
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r16.w, l(64), t16.xyzw
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r16.w, l(80), t16.xyzw
          r36.x = samp0[]..swiz;
          r36.y = samp0[]..swiz;
          r36.z = samp0[]..swiz;
          r36.w = samp0[]..swiz;
            r16.w = dot(r31.xyz, r11.yzw);
            r16.w = saturate(r16.w + r31.w);
            r16.w = r30.x * r16.w;
            r17.z = dot(r32.xyz, r11.yzw);
            r17.z = saturate(r17.z + r32.w);
            r16.w = r17.z * r16.w;
            r17.z = dot(r33.xyz, r11.yzw);
            r17.z = saturate(r17.z + r33.w);
            r16.w = r17.z * r16.w;
            r17.z = dot(r34.xyz, r11.yzw);
            r17.z = saturate(r17.z + r34.w);
            r16.w = r17.z * r16.w;
            r17.z = dot(r35.xyz, r11.yzw);
            r17.z = saturate(r17.z + r35.w);
            r16.w = r17.z * r16.w;
            r17.z = dot(r36.xyz, r11.yzw);
            r17.z = saturate(r17.z + r36.w);
            r30.x = r17.z * r16.w;
            r17.w = (uint)r15.w >> 2;
            if (1 == 0) r18.z = 0; else if (1+2 < 32) {             r18.z = (uint)r15.w << (32-(1 + 2)); r18.z = (uint)r18.z >> (32-1);            } else r18.z = (uint)r15.w >> 2;
            r18.w = (int)r17.w & 2;
            r19.z = max(r30.y, r30.x);
            r16.w = -r16.w * r17.z + 1;
            r16.w = r30.y * r16.w;
            r19.y = r18.w ? r16.w : r19.z;
            r30.xy = r18.zz ? r30.xy : r19.xy;
            r16.z = (int)r16.z + 1;
            r15.w = r17.w;
          }
          r30.y = saturate(r30.y);
          r15.w = r30.y * r9.w;
          r16.z = cmp(0 < r15.w);
          if (r16.z != 0) {
            r31.z = r30.y * r9.w + r28.w;
            r15.w = r15.w * r28.x;
            r19.yzw = r26.xyz * r15.www;
            r30.xzw = r22.xyw * r19.zzz;
            r30.xzw = r24.xyz * r19.yyy + r30.xzw;
            r19.yzw = r25.xyz * r19.www + r30.xzw;
            r30.xzw = r19.yzw * r27.xyz;
            r16.z = dot(r30.xzw, float3(0.212599993,0.715200007,0.0722000003));
            r32.xyz = r19.yzw * r27.xyz + r29.xyz;
            r16.w = r16.z * r5.w;
            r19.yzw = r23.xyz * r15.www;
            r15.w = dot(r19.yzw, float3(0.212599993,0.715200007,0.0722000003));
            r15.w = r5.w * r16.z + r15.w;
            r15.w = r16.w / r15.w;
            r33.x = r29.w;
            r33.yz = r28.yz;
            r31.xyw = r19.zwy * r15.www + r33.yzx;
            r32.w = r31.w;
          } else {
            r32.xyzw = r29.xyzw;
            r31.xyz = r28.yzw;
          }
          r13.w = -1;
          r29.xyzw = r32.xyzw;
          r28.yzw = r31.xyz;
          break;
        }
      }
    }
    if (r13.w != 0) {
      r20.xyzw = r29.xyzw;
      r21.yzw = r28.yzw;
      r4.w = -1;
      break;
    }
    r6.w = (int)r6.w + 32;
    r20.xyzw = r29.xyzw;
    r21.yzw = r28.yzw;
    r4.w = r13.w;
  }
  if (r4.w == 0) {
    r4.w = numRefProbes + -numOverrideProbes;
    r6.w = (int)r4.w & -32;
    r7.w = (int)r4.w + (int)-r6.w;
    r9.z = numRefProbes & -32;
    r9.w = (int)-r9.z + numRefProbes;
    r13.xy = float2(0,0);
    r14.w = 0;
    r15.yz = float2(0,1);
    r16.xy = float2(0,0);
    r17.x = 1;
    r18.xy = float2(0,0);
    r19.xy = float2(0,0);
    r22.xyzw = r20.xyzw;
    r23.yzw = r21.yzw;
    r10.w = r6.w;
    while (true) {
      r11.y = cmp((uint)r10.w >= numRefProbes);
      if (r11.y != 0) break;
      r13.z = (uint)r10.w >> 5;
      r14.xyz = (int3)r7.xyz + (int3)r13.xyz;
      r11.y = visibleProbes.Load(r14.xyzw).x;
      r11.z = cmp((int)r6.w == (int)r10.w);
      bitmask.w = ((~(-1 << r7.w)) << 0) & 0xffffffff;  r11.w = (((uint)0 << 0) & bitmask.w) | ((uint)r11.y & ~bitmask.w);
      r11.y = r11.z ? r11.w : r11.y;
      r11.z = cmp((int)r9.z == (int)r10.w);
      if (r9.w == 0) r11.w = 0; else if (r9.w+0 < 32) {       r11.w = (uint)r11.y << (32-(r9.w + 0)); r11.w = (uint)r11.w >> (32-r9.w);      } else r11.w = (uint)r11.y >> 0;
      r11.y = r11.z ? r11.w : r11.y;
      r11.z = (int)r10.w + numLights;
      r24.xyzw = r22.xyzw;
      r25.xyz = r23.yzw;
      r11.w = r11.y;
      while (true) {
        if (r11.w == 0) break;
        r13.z = firstbitlow((uint)r11.w);
        r13.w = 1 << (int)r13.z;
        r14.x = (int)r11.w & (int)r13.w;
        if (r14.x != 0) {
          r11.w = (int)r11.w ^ (int)r13.w;
          r13.w = (int)r11.z + (int)r13.z;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r26.xyzw, r13.w, l(0), t11.xyzw
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
        r26.z = samp0[]..swiz;
        r26.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r14.xy, r13.w, l(16), t11.xyxx
        r14.x = samp0[]..swiz;
        r14.y = samp0[]..swiz;
          r26.xyz = -v6.xyz + r26.xyz;
          r14.z = r26.w;
          r14.xyz = cmp(abs(r26.xyz) < r14.zxy);
          r13.w = r14.y ? r14.x : 0;
          r13.w = r14.z ? r13.w : 0;
          if (r13.w != 0) {
            r13.z = (int)r10.w + (int)r13.z;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r13.z, l(0), t15.wxyz
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r14.xy, r13.z, l(96), t15.xyxx
          r14.x = samp0[]..swiz;
          r14.y = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r13.z, l(116), t15.zwxy
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
            r28.xyz = v6.xyz + -r26.yzw;
            r13.w = (int)r27.w & 0x0000ffff;
            if (6 == 0) r14.z = 0; else if (6+25 < 32) {             r14.z = (uint)r27.w << (32-(6 + 25)); r14.z = (uint)r14.z >> (32-6);            } else r14.z = (uint)r27.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r13.w, l(0), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r13.w, l(16), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r13.w, l(32), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r13.w, l(48), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r13.w, l(64), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r13.w, l(80), t16.xyzw
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
            r15.w = dot(r29.xyz, r28.xyz);
            r15.w = saturate(r15.w + r29.w);
            r16.w = dot(r30.xyz, r28.xyz);
            r16.w = saturate(r16.w + r30.w);
            r15.w = r16.w * r15.w;
            r16.w = dot(r31.xyz, r28.xyz);
            r16.w = saturate(r16.w + r31.w);
            r15.w = r16.w * r15.w;
            r16.w = dot(r32.xyz, r28.xyz);
            r16.w = saturate(r16.w + r32.w);
            r15.w = r16.w * r15.w;
            r16.w = dot(r33.xyz, r28.xyz);
            r16.w = saturate(r16.w + r33.w);
            r15.w = r16.w * r15.w;
            r16.w = dot(r34.xyz, r28.xyz);
            r16.w = saturate(r16.w + r34.w);
            r15.x = r16.w * r15.w;
            r15.w = r14.x ? 0.000000 : 0;
            r15.xw = r15.ww ? r15.xy : r15.zx;
            r16.w = r14.x;
            r29.xy = r15.xw;
            r17.z = 1;
            while (true) {
              r17.w = cmp((int)r17.z >= (int)r14.z);
              if (r17.w != 0) break;
              r17.w = (int)r13.w + (int)r17.z;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r17.w, l(0), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r17.w, l(16), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r17.w, l(32), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r17.w, l(48), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r17.w, l(64), t16.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r17.w, l(80), t16.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
              r17.w = dot(r30.xyz, r28.xyz);
              r17.w = saturate(r17.w + r30.w);
              r17.w = r29.x * r17.w;
              r18.w = dot(r31.xyz, r28.xyz);
              r18.w = saturate(r18.w + r31.w);
              r17.w = r18.w * r17.w;
              r18.w = dot(r32.xyz, r28.xyz);
              r18.w = saturate(r18.w + r32.w);
              r17.w = r18.w * r17.w;
              r18.w = dot(r33.xyz, r28.xyz);
              r18.w = saturate(r18.w + r33.w);
              r17.w = r18.w * r17.w;
              r18.w = dot(r34.xyz, r28.xyz);
              r18.w = saturate(r18.w + r34.w);
              r17.w = r18.w * r17.w;
              r18.w = dot(r35.xyz, r28.xyz);
              r18.w = saturate(r18.w + r35.w);
              r29.x = r18.w * r17.w;
              r19.w = (uint)r16.w >> 2;
              if (1 == 0) r26.w = 0; else if (1+2 < 32) {               r26.w = (uint)r16.w << (32-(1 + 2)); r26.w = (uint)r26.w >> (32-1);              } else r26.w = (uint)r16.w >> 2;
              r28.w = (int)r19.w & 2;
              r29.z = max(r29.y, r29.x);
              r17.w = -r17.w * r18.w + 1;
              r17.w = r29.y * r17.w;
              r17.y = r28.w ? r17.w : r29.z;
              r29.xy = r26.ww ? r29.xy : r17.xy;
              r17.z = (int)r17.z + 1;
              r16.w = r19.w;
            }
            r29.y = saturate(r29.y);
            r13.w = r29.y * r14.y;
            r14.x = cmp(0 < r13.w);
            if (r14.x != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r13.z, l(16), t15.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r13.z, l(32), t15.yxwz
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r13.z, l(48), t15.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r13.z, l(64), t15.zwxy
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r13.z, l(80), t15.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r13.z, l(132), t15.zwxy
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r13.z, l(148), t15.zwxy
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r13.z, l(164), t15.zwxy
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r13.z, l(180), t15.zwxy
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r13.z, l(196), t15.xyzw
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xy, r13.z, l(212), t15.xyxx
            r40.x = samp0[]..swiz;
            r40.y = samp0[]..swiz;
              r25.z = r29.y * r14.y + r25.z;
              r13.z = r13.w * r27.z;
              r27.z = r35.z;
              r13.w = dot(r12.xyz, r27.xyz);
              r14.x = dot(r28.xyz, r27.xyz);
              r14.x = r14.x + -r35.w;
              r14.y = cmp(r14.x >= 0);
              r14.x = max(abs(r14.x), r5.z);
              r14.x = r14.y ? r14.x : -r14.x;
              r13.w = max(1.00000001e-07, -r13.w);
              r13.w = r14.x / r13.w;
              r13.w = min(131072, abs(r13.w));
              r35.z = r36.z;
              r14.x = dot(r12.xyz, r35.xyz);
              r14.y = dot(r28.xyz, r35.xyz);
              r14.y = r14.y + -r36.w;
              r14.z = cmp(r14.y >= 0);
              r14.y = max(abs(r14.y), r5.z);
              r14.y = r14.z ? r14.y : -r14.y;
              r14.x = max(1.00000001e-07, -r14.x);
              r14.x = r14.y / r14.x;
              r13.w = min(abs(r14.x), r13.w);
              r36.z = r37.z;
              r14.x = dot(r12.xyz, r36.xyz);
              r14.y = dot(r28.xyz, r36.xyz);
              r14.y = r14.y + -r37.w;
              r14.z = cmp(r14.y >= 0);
              r14.y = max(abs(r14.y), r5.z);
              r14.y = r14.z ? r14.y : -r14.y;
              r14.x = max(1.00000001e-07, -r14.x);
              r14.x = r14.y / r14.x;
              r13.w = min(abs(r14.x), r13.w);
              r37.z = r38.z;
              r14.x = dot(r12.xyz, r37.xyz);
              r14.y = dot(r28.xyz, r37.xyz);
              r14.y = r14.y + -r38.w;
              r14.z = cmp(r14.y >= 0);
              r14.y = max(abs(r14.y), r5.z);
              r14.y = r14.z ? r14.y : -r14.y;
              r14.x = max(1.00000001e-07, -r14.x);
              r14.x = r14.y / r14.x;
              r13.w = min(abs(r14.x), r13.w);
              r38.z = r39.x;
              r14.x = dot(r12.xyz, r38.xyz);
              r14.y = dot(r28.xyz, r38.xyz);
              r14.y = r14.y + -r39.y;
              r14.z = cmp(r14.y >= 0);
              r14.y = max(abs(r14.y), r5.z);
              r14.y = r14.z ? r14.y : -r14.y;
              r14.x = max(1.00000001e-07, -r14.x);
              r14.x = r14.y / r14.x;
              r13.w = min(abs(r14.x), r13.w);
              r40.zw = r39.zw;
              r14.x = dot(r12.zxy, r40.xzw);
              r14.y = dot(r28.zxy, r40.xzw);
              r14.y = r14.y + -r40.y;
              r14.z = cmp(r14.y >= 0);
              r14.y = max(abs(r14.y), r5.z);
              r14.y = r14.z ? r14.y : -r14.y;
              r14.x = max(1.00000001e-07, -r14.x);
              r14.x = r14.y / r14.x;
              r13.w = min(abs(r14.x), r13.w);
              r14.x = r32.w;
              r14.yz = r33.zw;
              r14.xyz = r14.xyz + r28.xyz;
              r14.xyz = r12.xyz * r13.www + r14.xyz;
              r15.x = dot(r14.xyz, r14.xyz);
              r15.x = sqrt(r15.x);
              r13.w = r13.w / r15.x;
              r13.w = r13.w + r13.w;
              r13.w = sqrt(r13.w);
              r13.w = r4.y * 5 + r13.w;
              r13.w = -0.844799995 + r13.w;
              r26.y = r30.z;
              r26.z = r31.x;
              r35.x = dot(r14.xyz, r26.xyz);
              r27.xy = r30.xw;
              r27.z = r31.w;
              r35.y = dot(r14.xyz, r27.xyz);
              r31.x = r30.y;
              r35.z = dot(r14.xyz, r31.xyz);
              if (9 == 0) r14.x = 0; else if (9+16 < 32) {               r14.x = (uint)r27.w << (32-(9 + 16)); r14.x = (uint)r14.x >> (32-9);              } else r14.x = (uint)r27.w >> 16;
              r35.w = (uint)r14.x;
              r14.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r35.xyzw, r13.w).xyz;
              r17.yzw = (int3)r14.xyz & int3(-2147483648,-2147483648,-2147483648);
              r17.yzw = cmp((int3)r17.yzw == int3(2139095040,2139095040,2139095040));
              r13.w = (int)r17.z | (int)r17.y;
              r13.w = (int)r17.w | (int)r13.w;
              r14.xyz = r13.www ? float3(1,1,0) : r14.xyz;
              r30.x = dot(r28.xyz, r26.xyz);
              r30.y = dot(r28.xyz, r27.xyz);
              r30.z = dot(r28.xyz, r31.xyz);
              r17.yzw = saturate(r30.xyz * r32.xyz + float3(0.5,0.5,0.5));
              r33.z = r34.x;
              r17.yzw = r17.yzw * r33.xyz + r34.yzw;
              r35.x = dot(r8.xyz, r26.xyz);
              r35.y = dot(r8.xyz, r27.xyz);
              r35.z = dot(r8.xyz, r31.xyz);
              r26.xyz = cmp(float3(0,0,0) < r35.xyz);
              r16.z = r26.x ? 0 : 0.5;
              r27.xyz = r17.yzw + r16.xyz;
              r27.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r27.xyz, 0).xyz;
              r28.xyz = r35.xyz * r35.xyz;
              r28.xyz = r28.xyz * r13.zzz;
              r18.z = r26.y ? 0 : 0.5;
              r26.xyw = r18.xyz + r17.yzw;
              r26.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r26.xyw, 0).xyz;
              r26.xyw = r26.xyw * r28.yyy;
              r26.xyw = r27.xyz * r28.xxx + r26.xyw;
              r19.z = r26.z ? 0 : 0.5;
              r17.yzw = r19.xyz + r17.yzw;
              r17.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r17.yzw, 0).xyz;
              r17.yzw = r17.yzw * r28.zzz + r26.xyw;
              r26.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r35.xyzw, 6).xyz;
              r27.xyz = (int3)r26.xyz & int3(-2147483648,-2147483648,-2147483648);
              r27.xyz = cmp((int3)r27.xyz == int3(2139095040,2139095040,2139095040));
              r13.w = (int)r27.y | (int)r27.x;
              r13.w = (int)r27.z | (int)r13.w;
              r26.xyz = r13.www ? float3(1,1,0) : r26.xyz;
              r27.xyz = r26.xyz * r17.yzw;
              r13.w = dot(r27.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r24.xyz = r17.yzw * r26.xyz + r24.xyz;
              r15.x = r13.w * r5.w;
              r14.xyz = r14.xyz * r13.zzz;
              r13.z = dot(r14.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r13.z = r5.w * r13.w + r13.z;
              r13.z = r15.x / r13.z;
              r26.x = r24.w;
              r26.yz = r25.xy;
              r25.xyw = r14.yzx * r13.zzz + r26.yzx;
              r24.w = r25.w;
            }
          }
        }
      }
      r22.xyzw = r24.xyzw;
      r23.yzw = r25.xyz;
      r10.w = (int)r10.w + 32;
    }
    r9.z = cmp(r23.w < 1);
    if (r9.z != 0) {
      r13.xy = float2(0,0);
      r14.w = 0;
      r15.yz = float2(0,1);
      r16.xy = float2(0,0);
      r17.x = 1;
      r18.xy = float2(0,0);
      r19.xy = float2(0,0);
      r24.x = r22.w;
      r24.yzw = r23.yzw;
      r11.yzw = r22.xyz;
      r9.z = r23.w;
      r9.w = 0;
      while (true) {
        r10.w = cmp((uint)r9.w >= (uint)r4.w);
        if (r10.w != 0) break;
        r13.z = (uint)r9.w >> 5;
        r14.xyz = (int3)r7.xyz + (int3)r13.xyz;
        r10.w = visibleProbes.Load(r14.xyzw).x;
        r13.z = cmp((int)r6.w == (int)r9.w);
        if (r7.w == 0) r13.w = 0; else if (r7.w+0 < 32) {         r13.w = (uint)r10.w << (32-(r7.w + 0)); r13.w = (uint)r13.w >> (32-r7.w);        } else r13.w = (uint)r10.w >> 0;
        r10.w = r13.z ? r13.w : r10.w;
        r13.z = (int)r9.w + numLights;
        r25.xyzw = r24.xyzw;
        r14.xyz = r11.yzw;
        r13.w = r9.z;
        r15.w = r10.w;
        while (true) {
          if (r15.w == 0) break;
          r16.w = firstbitlow((uint)r15.w);
          r17.z = 1 << (int)r16.w;
          r17.w = (int)r15.w & (int)r17.z;
          if (r17.w != 0) {
            r15.w = (int)r15.w ^ (int)r17.z;
            r17.z = (int)r13.z + (int)r16.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r26.xyzw, r17.z, l(0), t11.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r27.xy, r17.z, l(16), t11.xyxx
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
            r26.xyz = -v6.xyz + r26.xyz;
            r27.z = r26.w;
            r26.xyz = cmp(abs(r26.xyz) < r27.zxy);
            r17.z = r26.y ? r26.x : 0;
            r17.z = r26.z ? r17.z : 0;
            if (r17.z != 0) {
              r16.w = (int)r9.w + (int)r16.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r16.w, l(0), t15.wxyz
            r26.x = samp0[]..swiz;
            r26.y = samp0[]..swiz;
            r26.z = samp0[]..swiz;
            r26.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r17.zw, r16.w, l(96), t15.xxxy
            r17.z = samp0[]..swiz;
            r17.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r16.w, l(116), t15.zwxy
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
              r28.xyz = v6.xyz + -r26.yzw;
              r18.w = (int)r27.w & 0x0000ffff;
              if (6 == 0) r19.w = 0; else if (6+25 < 32) {               r19.w = (uint)r27.w << (32-(6 + 25)); r19.w = (uint)r19.w >> (32-6);              } else r19.w = (uint)r27.w >> 25;
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
              r21.w = dot(r29.xyz, r28.xyz);
              r21.w = saturate(r21.w + r29.w);
              r26.w = dot(r30.xyz, r28.xyz);
              r26.w = saturate(r26.w + r30.w);
              r21.w = r26.w * r21.w;
              r26.w = dot(r31.xyz, r28.xyz);
              r26.w = saturate(r26.w + r31.w);
              r21.w = r26.w * r21.w;
              r26.w = dot(r32.xyz, r28.xyz);
              r26.w = saturate(r26.w + r32.w);
              r21.w = r26.w * r21.w;
              r26.w = dot(r33.xyz, r28.xyz);
              r26.w = saturate(r26.w + r33.w);
              r21.w = r26.w * r21.w;
              r26.w = dot(r34.xyz, r28.xyz);
              r26.w = saturate(r26.w + r34.w);
              r15.x = r26.w * r21.w;
              r21.w = (int)r17.z & 1;
              r29.xy = r21.ww ? r15.xy : r15.zx;
              r15.x = r17.z;
              r30.xy = r29.xy;
              r21.w = 1;
              while (true) {
                r26.w = cmp((int)r21.w >= (int)r19.w);
                if (r26.w != 0) break;
                r26.w = (int)r18.w + (int)r21.w;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r26.w, l(0), t16.xyzw
              r31.x = samp0[]..swiz;
              r31.y = samp0[]..swiz;
              r31.z = samp0[]..swiz;
              r31.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r26.w, l(16), t16.xyzw
              r32.x = samp0[]..swiz;
              r32.y = samp0[]..swiz;
              r32.z = samp0[]..swiz;
              r32.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r26.w, l(32), t16.xyzw
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r26.w, l(48), t16.xyzw
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r26.w, l(64), t16.xyzw
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r26.w, l(80), t16.xyzw
              r36.x = samp0[]..swiz;
              r36.y = samp0[]..swiz;
              r36.z = samp0[]..swiz;
              r36.w = samp0[]..swiz;
                r26.w = dot(r31.xyz, r28.xyz);
                r26.w = saturate(r26.w + r31.w);
                r26.w = r30.x * r26.w;
                r28.w = dot(r32.xyz, r28.xyz);
                r28.w = saturate(r28.w + r32.w);
                r26.w = r28.w * r26.w;
                r28.w = dot(r33.xyz, r28.xyz);
                r28.w = saturate(r28.w + r33.w);
                r26.w = r28.w * r26.w;
                r28.w = dot(r34.xyz, r28.xyz);
                r28.w = saturate(r28.w + r34.w);
                r26.w = r28.w * r26.w;
                r28.w = dot(r35.xyz, r28.xyz);
                r28.w = saturate(r28.w + r35.w);
                r26.w = r28.w * r26.w;
                r28.w = dot(r36.xyz, r28.xyz);
                r28.w = saturate(r28.w + r36.w);
                r30.x = r28.w * r26.w;
                r29.z = (uint)r15.x >> 2;
                if (1 == 0) r29.w = 0; else if (1+2 < 32) {                 r29.w = (uint)r15.x << (32-(1 + 2)); r29.w = (uint)r29.w >> (32-1);                } else r29.w = (uint)r15.x >> 2;
                r30.z = (int)r29.z & 2;
                r30.w = max(r30.y, r30.x);
                r26.w = -r26.w * r28.w + 1;
                r26.w = r30.y * r26.w;
                r17.y = r30.z ? r26.w : r30.w;
                r30.xy = r29.ww ? r30.xy : r17.xy;
                r21.w = (int)r21.w + 1;
                r15.x = r29.z;
              }
              r15.x = saturate(r30.y + -r13.w);
              r17.y = r15.x * r17.w;
              r17.z = cmp(0 < r17.y);
              if (r17.z != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r16.w, l(16), t15.xyzw
              r29.x = samp0[]..swiz;
              r29.y = samp0[]..swiz;
              r29.z = samp0[]..swiz;
              r29.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r16.w, l(32), t15.yxwz
              r31.x = samp0[]..swiz;
              r31.y = samp0[]..swiz;
              r31.z = samp0[]..swiz;
              r31.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r16.w, l(48), t15.xyzw
              r32.x = samp0[]..swiz;
              r32.y = samp0[]..swiz;
              r32.z = samp0[]..swiz;
              r32.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r16.w, l(64), t15.zwxy
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r16.w, l(80), t15.xyzw
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r16.w, l(132), t15.zwxy
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r16.w, l(148), t15.zwxy
              r36.x = samp0[]..swiz;
              r36.y = samp0[]..swiz;
              r36.z = samp0[]..swiz;
              r36.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r16.w, l(164), t15.zwxy
              r37.x = samp0[]..swiz;
              r37.y = samp0[]..swiz;
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r16.w, l(180), t15.zwxy
              r38.x = samp0[]..swiz;
              r38.y = samp0[]..swiz;
              r38.z = samp0[]..swiz;
              r38.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r16.w, l(196), t15.xyzw
              r39.x = samp0[]..swiz;
              r39.y = samp0[]..swiz;
              r39.z = samp0[]..swiz;
              r39.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xy, r16.w, l(212), t15.xyxx
              r40.x = samp0[]..swiz;
              r40.y = samp0[]..swiz;
                r25.w = r15.x * r17.w + r25.w;
                r15.x = r17.y * r27.z;
                r27.z = r35.z;
                r16.w = dot(r12.xyz, r27.xyz);
                r17.y = dot(r28.xyz, r27.xyz);
                r17.y = r17.y + -r35.w;
                r17.z = cmp(r17.y >= 0);
                r17.y = max(abs(r17.y), r5.z);
                r17.y = r17.z ? r17.y : -r17.y;
                r16.w = max(1.00000001e-07, -r16.w);
                r16.w = r17.y / r16.w;
                r16.w = min(131072, abs(r16.w));
                r35.z = r36.z;
                r17.y = dot(r12.xyz, r35.xyz);
                r17.z = dot(r28.xyz, r35.xyz);
                r17.z = r17.z + -r36.w;
                r17.w = cmp(r17.z >= 0);
                r17.z = max(abs(r17.z), r5.z);
                r17.z = r17.w ? r17.z : -r17.z;
                r17.y = max(1.00000001e-07, -r17.y);
                r17.y = r17.z / r17.y;
                r16.w = min(abs(r17.y), r16.w);
                r36.z = r37.z;
                r17.y = dot(r12.xyz, r36.xyz);
                r17.z = dot(r28.xyz, r36.xyz);
                r17.z = r17.z + -r37.w;
                r17.w = cmp(r17.z >= 0);
                r17.z = max(abs(r17.z), r5.z);
                r17.z = r17.w ? r17.z : -r17.z;
                r17.y = max(1.00000001e-07, -r17.y);
                r17.y = r17.z / r17.y;
                r16.w = min(abs(r17.y), r16.w);
                r37.z = r38.z;
                r17.y = dot(r12.xyz, r37.xyz);
                r17.z = dot(r28.xyz, r37.xyz);
                r17.z = r17.z + -r38.w;
                r17.w = cmp(r17.z >= 0);
                r17.z = max(abs(r17.z), r5.z);
                r17.z = r17.w ? r17.z : -r17.z;
                r17.y = max(1.00000001e-07, -r17.y);
                r17.y = r17.z / r17.y;
                r16.w = min(abs(r17.y), r16.w);
                r38.z = r39.x;
                r17.y = dot(r12.xyz, r38.xyz);
                r17.z = dot(r28.xyz, r38.xyz);
                r17.z = r17.z + -r39.y;
                r17.w = cmp(r17.z >= 0);
                r17.z = max(abs(r17.z), r5.z);
                r17.z = r17.w ? r17.z : -r17.z;
                r17.y = max(1.00000001e-07, -r17.y);
                r17.y = r17.z / r17.y;
                r16.w = min(abs(r17.y), r16.w);
                r40.zw = r39.zw;
                r17.y = dot(r12.zxy, r40.xzw);
                r17.z = dot(r28.zxy, r40.xzw);
                r17.z = r17.z + -r40.y;
                r17.w = cmp(r17.z >= 0);
                r17.z = max(abs(r17.z), r5.z);
                r17.z = r17.w ? r17.z : -r17.z;
                r17.y = max(1.00000001e-07, -r17.y);
                r17.y = r17.z / r17.y;
                r16.w = min(abs(r17.y), r16.w);
                r27.x = r32.w;
                r27.yz = r33.zw;
                r17.yzw = r27.xyz + r28.xyz;
                r17.yzw = r12.xyz * r16.www + r17.yzw;
                r18.w = dot(r17.yzw, r17.yzw);
                r18.w = sqrt(r18.w);
                r16.w = r16.w / r18.w;
                r16.w = r16.w + r16.w;
                r16.w = sqrt(r16.w);
                r16.w = r4.y * 5 + r16.w;
                r16.w = -0.844799995 + r16.w;
                r26.y = r29.z;
                r26.z = r31.x;
                r35.x = dot(r17.yzw, r26.xyz);
                r27.xy = r29.xw;
                r27.z = r31.w;
                r35.y = dot(r17.yzw, r27.xyz);
                r31.x = r29.y;
                r35.z = dot(r17.yzw, r31.xyz);
                if (9 == 0) r17.y = 0; else if (9+16 < 32) {                 r17.y = (uint)r27.w << (32-(9 + 16)); r17.y = (uint)r17.y >> (32-9);                } else r17.y = (uint)r27.w >> 16;
                r35.w = (uint)r17.y;
                r17.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r35.xyzw, r16.w).xyz;
                r29.xyz = (int3)r17.yzw & int3(-2147483648,-2147483648,-2147483648);
                r29.xyz = cmp((int3)r29.xyz == int3(2139095040,2139095040,2139095040));
                r16.w = (int)r29.y | (int)r29.x;
                r16.w = (int)r29.z | (int)r16.w;
                r17.yzw = r16.www ? float3(1,1,0) : r17.yzw;
                r29.x = dot(r28.xyz, r26.xyz);
                r29.y = dot(r28.xyz, r27.xyz);
                r29.z = dot(r28.xyz, r31.xyz);
                r28.xyz = saturate(r29.xyz * r32.xyz + float3(0.5,0.5,0.5));
                r33.z = r34.x;
                r28.xyz = r28.xyz * r33.xyz + r34.yzw;
                r35.x = dot(r8.xyz, r26.xyz);
                r35.y = dot(r8.xyz, r27.xyz);
                r35.z = dot(r8.xyz, r31.xyz);
                r26.xyz = cmp(float3(0,0,0) < r35.xyz);
                r16.z = r26.x ? 0 : 0.5;
                r27.xyz = r28.xyz + r16.xyz;
                r27.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r27.xyz, 0).xyz;
                r29.xyz = r35.xyz * r35.xyz;
                r29.xyz = r29.xyz * r15.xxx;
                r18.z = r26.y ? 0 : 0.5;
                r26.xyw = r28.xyz + r18.xyz;
                r26.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r26.xyw, 0).xyz;
                r26.xyw = r26.xyw * r29.yyy;
                r26.xyw = r27.xyz * r29.xxx + r26.xyw;
                r19.z = r26.z ? 0 : 0.5;
                r27.xyz = r28.xyz + r19.xyz;
                r27.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r27.xyz, 0).xyz;
                r26.xyz = r27.xyz * r29.zzz + r26.xyw;
                r27.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r35.xyzw, 6).xyz;
                r28.xyz = (int3)r27.xyz & int3(-2147483648,-2147483648,-2147483648);
                r28.xyz = cmp((int3)r28.xyz == int3(2139095040,2139095040,2139095040));
                r16.z = (int)r28.y | (int)r28.x;
                r16.z = (int)r28.z | (int)r16.z;
                r27.xyz = r16.zzz ? float3(1,1,0) : r27.xyz;
                r28.xyz = r27.xyz * r26.xyz;
                r16.z = dot(r28.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r14.xyz = r26.xyz * r27.xyz + r14.xyz;
                r16.w = r16.z * r5.w;
                r17.yzw = r17.yzw * r15.xxx;
                r15.x = dot(r17.yzw, float3(0.212599993,0.715200007,0.0722000003));
                r15.x = r5.w * r16.z + r15.x;
                r15.x = r16.w / r15.x;
                r25.xyz = r17.yzw * r15.xxx + r25.xyz;
              }
            }
          }
        }
        r24.xyzw = r25.xyzw;
        r11.yzw = r14.xyz;
        r9.w = (int)r9.w + 32;
      }
      r23.xyzw = r24.zxyw;
      r22.xyz = r11.yzw;
      r23.xyzw = r23.yzxw;
    } else {
      r23.x = r22.w;
    }
    r4.y = max(1, r23.w);
    r4.y = rcp(r4.y);
    r23.w = saturate(r23.w);
    r20.xyz = r22.xyz * r4.yyy;
    r21.xyz = r23.xyz * r4.yyy;
    r4.w = cmp(r23.w < 0.99000001);
    if (r4.w != 0) {
      r4.w = 1 + -r23.w;
      r5.z = sunConstants.globalProbeExposure * r4.w;
      r11.yzw = -globalProbeConstants.data[0].xyz + v6.xyz;
      r13.x = globalProbeConstants.data[0].w * r11.y;
      r13.yz = globalProbeConstants.data[1].xy * r11.zw;
      r11.yzw = saturate(float3(0.5,0.5,0.5) + r13.xyz);
      r13.xy = globalProbeConstants.data[1].zw * r11.yz;
      r13.z = globalProbeConstants.data[2].x * r11.w;
      r11.yzw = globalProbeConstants.data[2].yzw + r13.xyz;
      r13.xyz = cmp(float3(0,0,0) < r8.xyz);
      r13.xyz = r13.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
      r13.w = 0;
      r14.xyz = r13.wwx + r11.yzw;
      r14.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r14.xyz, 0).xyz;
      r15.xyz = r8.xyz * r8.xyz;
      r15.xyz = r15.xyz * r5.zzz;
      r16.xyz = r13.wwy + r11.yzw;
      r16.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r16.xyz, 0).xyz;
      r16.xyz = r16.xyz * r15.yyy;
      r14.xyz = r14.xyz * r15.xxx + r16.xyz;
      r11.yzw = r13.wwz + r11.yzw;
      r11.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r11.yzw, 0).xyz;
      r11.yzw = r11.yzw * r15.zzz + r14.xyz;
      r8.w = 0;
      r13.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r8.xyzw, 6).xyz;
      r11.yzw = r13.xyz * r11.yzw;
      r5.z = dot(r11.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r20.xyz = r22.xyz * r4.yyy + r11.yzw;
      r12.w = 0;
      r11.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r12.xyzw, r4.z).xyz;
      r4.y = sunConstants.globalProbeExposure * r4.w + -r5.z;
      r4.y = r9.y * r4.y + r5.z;
      r21.xyz = r11.yzw * r4.yyy + r21.xyz;
    }
  } else {
    r21.x = r20.w;
  }
  r4.y = r9.x + r2.x;
  r4.y = log2(abs(r4.y));
  r4.y = r4.y * r1.w;
  r4.y = exp2(r4.y);
  r4.y = r4.y + r2.x;
  r4.y = saturate(-1 + r4.y);
  r13.xyz = r20.xyz * r2.xxx;
  r4.zw = r9.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r4.zw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r4.zw, 0).xy;
  r9.yzw = r21.xyz * r4.yyy;
  r14.xyz = r9.zwy * r4.zzz;
  r4.yzw = r9.yzw * r4.www;
  r2.x = sqrt(r1.w);
  r2.x = r2.x * 0.5 + 0.5;
  r2.x = r2.x * r2.x;
  r5.z = 0.5 * r2.x;
  r2.x = -r2.x * 0.5 + 1;
  r5.w = r9.x * r2.x + r5.z;
  r2.x = r5.w * r2.x;
  r5.z = r5.z * r5.w;
  r5.w = dot(r8.xyz, sunConstants.wldDir.xyz);
  r6.w = saturate(r5.w);
  r7.w = cmp(0 >= r6.w);
  if (r7.w != 0) {
    r8.w = 0;
  }
  if (r7.w == 0) {
    r9.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v6.yyy;
    r9.yzw = v6.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r9.yzw;
    r9.yzw = v6.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r9.yzw;
    r9.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r9.yzw;
    r7.w = -sunConstants.splitDepthOffset + r9.w;
    r7.w = -r7.w * 6.10351563e-05 + 1;
    r10.w = saturate(r7.w);
    r10.w = cmp(r7.w == r10.w);
    if (r10.w != 0) {
      r10.w = 0;
      r11.y = 0;
      while (true) {
        r11.z = cmp(r10.w >= 3);
        if (r11.z != 0) break;
        r11.z = (uint)r10.w;
        r15.xy = -sunConstants.splitPinTransform[r11.z].xy + r9.yz;
        r11.w = max(abs(r15.x), abs(r15.y));
        r11.y = sunConstants.splitPinTransform[r11.z].z * r11.w;
        r11.z = cmp(r11.y < 1);
        if (r11.z != 0) {
          break;
        }
        r10.w = 1 + r10.w;
        r11.y = 0;
      }
    } else {
      r10.w = 3;
      r11.y = 0;
    }
    r11.z = cmp(r10.w >= 3);
    if (r11.z != 0) {
      r15.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r16.xz = rcp(r15.xx);
      r16.y = -r16.z;
      r15.xyz = r9.yzy * r16.xyz + r15.yzy;
      r16.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r15.xyz = max(float3(0,0,0), r15.xyz);
      r15.xyz = min(r15.xyz, r16.xyz);
      r16.xy = sunConstants.sstLightingConstants.coordScale * r15.zy;
      r16.xy = floor(r16.xy);
      r11.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r16.y;
      r11.w = r11.w * sunConstants.sstLightingConstants.coordScale + r16.x;
      r11.w = (uint)r11.w;
      r11.w = (int)r11.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.w, r11.w, l(0), t23.xxxx
    r12.w = samp0[]..swiz;
      r15.w = (int)r12.w & 0x40000000;
      r16.x = (uint)r12.w << 2;
      if (r15.w == 0) {
        r15.w = (int)r12.w & 0x01ffffff;
        r17.x = (int)r11.w + (int)r15.w;
        r11.w = (uint)r12.w >> 25;
        r11.w = (uint)r11.w;
        r15.xyz = r15.xyz * r11.www;
        r15.xyz = frac(r15.xyz);
        r15.xyz = float3(128,128,128) * r15.xyz;
        r15.xyz = (uint3)r15.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
      r17.z = samp0[]..swiz;
        r16.yz = (uint2)r15.zy >> int2(6,6);
        r11.w = (int)r17.z & 0xc0000000;
        r12.w = (int)r17.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.w, r12.w, l(0), t23.xxxx
      r12.w = samp0[]..swiz;
        r12.w = r16.z ? r17.z : r12.w;
        r15.w = (uint)r12.w >> 13;
        r12.w = r16.y ? r15.w : r12.w;
        r12.w = (int)r12.w & 8191;
        r18.x = (int)r12.w + (int)r17.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
      r18.z = samp0[]..swiz;
        r17.y = 0;
        r18.y = 1;
        r16.yzw = r11.www ? r17.xyz : r18.xyz;
        r18.yz = r11.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r19.xy = (uint2)r15.zy >> (uint2)r18.yy;
        r19.xy = (int2)r19.xy & int2(1,1);
        r12.w = (int)r16.w & 0xc0000000;
        r15.w = (int)r16.y + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.w, r15.w, l(0), t23.xxxx
      r15.w = samp0[]..swiz;
        r15.w = r19.y ? r16.w : r15.w;
        r17.w = (uint)r15.w >> 13;
        r15.w = r19.x ? r17.w : r15.w;
        r15.w = (int)r15.w & 8191;
        r18.x = (int)r15.w + (int)r16.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.x, l(0), t23.xxxx
      r18.w = samp0[]..swiz;
        r16.yzw = r12.www ? r16.yzw : r18.xzw;
        r16.yzw = r11.www ? r17.xyz : r16.yzw;
        r11.w = (int)r16.w & 0xc0000000;
        if (r11.w == 0) {
          r11.w = (int)-r16.z + 6;
          r17.xy = (uint2)r15.zy >> (uint2)r11.ww;
          r11.w = (int)r16.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r12.w = (((uint)r17.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r12.w = (((uint)r17.x << 0) & bitmask.w) | ((uint)r12.w & ~bitmask.w);
          r12.w = (int)r12.w * 10;
          r11.w = (uint)r11.w >> (uint)r12.w;
          r11.w = (int)r11.w & 1023;
          r17.x = (int)r11.w + (int)r16.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.x, l(0), t23.xxxx
        r17.w = samp0[]..swiz;
          r17.yz = (int2)r16.zz + int2(1,2);
          r11.w = (int)-r17.y + 6;
          r18.xy = (uint2)r15.zy >> (uint2)r11.ww;
          r11.w = (int)r17.w & 0xc0000000;
          r12.w = (int)r17.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r15.w = (((uint)r18.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r15.w = (((uint)r18.x << 0) & bitmask.w) | ((uint)r15.w & ~bitmask.w);
          r15.w = (int)r15.w * 10;
          r12.w = (uint)r12.w >> (uint)r15.w;
          r12.w = (int)r12.w & 1023;
          r18.x = (int)r12.w + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
        r18.z = samp0[]..swiz;
          r18.y = r17.z;
          r18.xyz = r11.www ? r17.xyw : r18.xyz;
          r12.w = (int)-r18.y + 6;
          r17.yz = (uint2)r15.zy >> (uint2)r12.ww;
          r12.w = (int)r18.z & 0xc0000000;
          r15.w = (int)r18.z | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r16.z = (((uint)r17.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r16.z = (((uint)r17.y << 0) & bitmask.z) | ((uint)r16.z & ~bitmask.z);
          r16.z = (int)r16.z * 10;
          r15.w = (uint)r15.w >> (uint)r16.z;
          r15.w = (int)r15.w & 1023;
          r19.x = (int)r15.w + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.y, r19.x, l(0), t23.xxxx
        r19.y = samp0[]..swiz;
          r17.yz = r12.ww ? r18.xz : r19.xy;
          r16.yw = r11.ww ? r17.xw : r17.yz;
        }
        r11.w = (int)r16.w & 0xc0000000;
        if (r11.w == 0) {
          if (14 == 0) r12.w = 0; else if (14+15 < 32) {           r12.w = (uint)r16.w << (32-(14 + 15)); r12.w = (uint)r12.w >> (32-14);          } else r12.w = (uint)r16.w >> 15;
          r12.w = (uint)r12.w;
          r12.w = sunConstants.sstLightingConstants.constants.spanInInches * r12.w;
          r12.w = 6.10388815e-05 * r12.w;
          r17.xy = (int2)r16.ww & int2(32767,536870912);
          r15.w = (uint)r17.x;
          r15.w = sunConstants.sstLightingConstants.constants.spanInInches * r15.w;
          r15.w = 3.05185094e-05 * r15.w;
          r16.z = (int)r15.y & 3;
          r16.z = (int)r16.z + (int)r16.y;
          r16.z = (int)r16.z + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.z, l(0), t23.xxxx
        r16.z = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r17.x = (((uint)r15.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.z = ((~(-1 << 2)) << 1) & 0xffffffff;  r17.z = (((uint)r15.y << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.w = ((~(-1 << 1)) << 4) & 0xffffffff;  r17.w = (((uint)r15.z << 4) & bitmask.w) | ((uint)0 & ~bitmask.w);
          r15.x = (uint)r16.z >> (uint)r17.x;
          r15.x = (int)r15.x & 255;
          r15.x = (uint)r15.x;
          r15.x = r15.x * r15.w;
          r15.x = r15.x * 0.00392156886 + r12.w;
          r15.y = (int)r17.z + 1;
          if (1 == 0) r15.z = 0; else if (1+1 < 32) {           r15.z = (uint)r15.z << (32-(1 + 1)); r15.z = (uint)r15.z >> (32-1);          } else r15.z = (uint)r15.z >> 1;
          r15.y = (int)r15.z + (int)r15.y;
          r15.y = (int)r15.y + (int)r16.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.y, r15.y, l(0), t23.xxxx
        r15.y = samp0[]..swiz;
          r15.y = (uint)r15.y >> (uint)r17.w;
          r15.y = (int)r15.y & 0x0000ffff;
          r15.y = (uint)r15.y;
          r15.y = r15.y * r15.w;
          r12.w = r15.y * 1.52590219e-05 + r12.w;
          r16.x = r17.y ? r15.x : r12.w;
        } else {
          r12.w = (int)r16.w & 0x80000000;
          r15.x = (int)r16.y + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.x, r15.x, l(0), t23.xxxx
        r15.x = samp0[]..swiz;
          r12.w = r12.w ? r15.x : 0;
          r15.x = (uint)r16.w << 2;
          r15.y = (uint)r12.w >> 16;
          r15.y = f16tof32(r15.y);
          r12.w = (int)r12.w & 0x0000ffff;
          r12.w = f16tof32(r12.w);
          r15.x = r9.y * r15.y + r15.x;
          r12.w = r9.z * r12.w + r15.x;
          r16.x = r11.w ? r12.w : r16.x;
        }
      }
      r9.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r9.w;
      r9.w = cmp(r16.x < r9.w);
      r8.w = r9.w ? 0 : 1;
    }
    if (r11.z == 0) {
      if (enableDitheredShadow == 0) {
        r9.w = (uint)r10.w;
        r11.zw = -sunConstants.splitPinTransform[r9.w].xy + r9.yz;
        r11.zw = sunConstants.splitPinTransform[r9.w].zz * r11.zw;
        r15.xy = r11.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r9.w = (int16)sunConstants.splitArrayOffset;
        r15.z = r10.w + r9.w;
        r9.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r7.w).x;
        r11.z = gTransShadowmapArray.SampleLevel(samp0_s, r15.xyz, 0).x;
        r9.w = r11.z + r9.w;
        r9.w = saturate(-1 + r9.w);
        r11.z = r9.w * r9.w;
        r8.w = r11.z * r9.w;
      }
      if (enableDitheredShadow != 0) {
        r15.x = -r5.x;
        r9.w = (uint)r10.w;
        r10.w = 1 + r10.w;
        r10.w = min(2, r10.w);
        r10.w = (uint)r10.w;
        r11.y = 1 + -r11.y;
        r11.y = 28 * r11.y;
        r11.y = (uint)r11.y;
        r11.zw = -sunConstants.splitPinTransform[r9.w].xy + r9.yz;
        r11.zw = sunConstants.splitPinTransform[r9.w].zz * r11.zw;
        r11.zw = r11.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r9.yz = -sunConstants.splitPinTransform[r10.w].xy + r9.yz;
        r9.yz = sunConstants.splitPinTransform[r10.w].zz * r9.yz;
        r9.yz = r9.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r15.y = r6.x;
        r15.z = r5.x;
        r12.w = 0;
        r15.w = 0;
        while (true) {
          r16.x = cmp((uint)r15.w >= 8);
          if (r16.x != 0) break;
          r16.x = cmp((uint)r11.y < (uint)r15.w);
          r16.yz = r16.xx ? r9.yz : r11.zw;
          r16.w = r16.x ? sunConstants.splitPinTransform[r10.w].w : sunConstants.splitPinTransform[r9.w].w;
          r16.x = r16.x ? r10.w : r9.w;
          r17.x = dot(icb[r15.w+0].yx, r15.xy);
          r17.y = dot(icb[r15.w+0].yx, r15.yz);
          r17.xy = r17.xy * r16.ww + r16.yz;
          r16.x = (int)r16.x + (int16)sunConstants.splitArrayOffset;
          r17.z = (uint)r16.x;
          r16.x = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r7.w).x;
          r16.y = gTransShadowmapArray.SampleLevel(samp0_s, r17.xyz, 0).x;
          r16.x = r16.x + r16.y;
          r16.x = saturate(-1 + r16.x);
          r12.w = r16.x * 0.125 + r12.w;
          r15.w = (int)r15.w + 1;
        }
        r7.w = r12.w * r12.w;
        r8.w = r7.w * r12.w;
      }
    }
  }
  r7.w = cmp(0 < r6.w);
  if (r7.w != 0) {
    r7.w = cmp(0 < r8.w);
    if (r7.w != 0) {
      r7.w = sunConstants.specScale * r0.y;
      r7.w = r7.w * r6.w;
      if (sunConstants.sunCookieIndex != 0) {
        r15.xyz = eyeOffset.xyz + v6.xyz;
        r15.w = 1;
        r9.y = dot(sunConstants.sunCookieTransform[0].xyzw, r15.xyzw);
        r9.z = dot(sunConstants.sunCookieTransform[1].xyzw, r15.xyzw);
        r15.xy = frac(r9.yz);
        r9.y = -1 + (int14)sunConstants.sunCookieIndex;
        r15.z = (uint)r9.y;
        r9.yzw = gCookieArray.SampleLevel(samplerLinear_s, r15.xyz, 0).xyz;
        r9.yzw = float3(-1,-1,-1) + r9.yzw;
        r9.yzw = sunConstants.sunCookieIntensity * r9.yzw + float3(1,1,1);
        r9.yzw = sunConstants.color.xyz * r9.yzw;
      } else {
        r9.yzw = sunConstants.color.xyz;
      }
      r10.w = viewmodelSunShadowRaw >> 16;
      r11.y = cmp(0 < (uint)r10.w);
      r11.y = r0.x ? r11.y : 0;
      if (r11.y != 0) {
        r10.w = (int)r10.w + numLights;
        r10.w = (int)r10.w + -1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.y, r10.w, l(52), t12.xxxx
      r11.y = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r10.w, l(68), t12.xyzw
      r15.x = samp0[]..swiz;
      r15.y = samp0[]..swiz;
      r15.z = samp0[]..swiz;
      r15.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r10.w, l(84), t12.xyzw
      r16.x = samp0[]..swiz;
      r16.y = samp0[]..swiz;
      r16.z = samp0[]..swiz;
      r16.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r10.w, l(132), t12.xyzw
      r17.x = samp0[]..swiz;
      r17.y = samp0[]..swiz;
      r17.z = samp0[]..swiz;
      r17.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r10.w, l(148), t12.xyzw
      r18.x = samp0[]..swiz;
      r18.y = samp0[]..swiz;
      r18.z = samp0[]..swiz;
      r18.w = samp0[]..swiz;
        r11.z = abs(r5.w) * -0.200000003 + 0.400000006;
        r19.xyz = r8.xyz * r11.zzz + v6.xyz;
        r19.w = 1;
        r15.x = dot(r15.xyzw, r19.xyzw);
        r15.y = dot(r16.xyzw, r19.xyzw);
        r11.zw = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r11.zw = r11.zw + r18.zw;
        r11.zw = r11.zw * r18.xy;
        r15.xy = r11.yy / r17.xz;
        r15.zw = float2(1,1) + -r15.xy;
        r15.zw = cmp(r11.zw >= r15.zw);
        r15.xy = cmp(r15.xy >= r11.zw);
        r15.xy = (int2)r15.xy | (int2)r15.zw;
        r12.w = (int)r15.y | (int)r15.x;
        if (r12.w == 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.w, r10.w, l(28), t12.xxxx
        r12.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r10.w, l(100), t12.xyzw
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xy, r10.w, l(164), t12.xyxx
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
          r10.w = dot(r15.xyzw, r19.xyzw);
          r11.zw = saturate(r11.zw);
          r15.xy = r11.zw * r17.xz + r17.yw;
          r10.w = r10.w + r16.x;
          r10.w = r10.w / r16.y;
          r10.w = max(6.10351563e-05, r10.w);
          r11.z = (int)r12.w & 0x0000ffff;
          if (enableDitheredShadow != 0) {
            r16.x = -r5.x;
            r17.z = (uint)r11.z;
            r16.y = r6.x;
            r16.z = r5.x;
            r11.w = 0;
            r12.w = 0;
            while (true) {
              r15.w = cmp((int)r12.w >= 8);
              if (r15.w != 0) break;
              r18.x = dot(icb[r12.w+0].yx, r16.xy);
              r18.y = dot(icb[r12.w+0].yx, r16.yz);
              r17.xy = r18.xy * r11.yy + r15.xy;
              r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r10.w).x;
              r11.w = r15.w * 0.125 + r11.w;
              r12.w = (int)r12.w + 1;
            }
          } else {
            r15.z = (uint)r11.z;
            r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r10.w).x;
          }
          r10.w = r11.w * r11.w;
          r10.w = r10.w * r11.w;
        } else {
          r10.w = 1;
        }
        r8.w = r10.w * r8.w;
      } else {
        r10.w = viewmodelSunShadowRaw & 0x0000ffff;
        r11.y = cmp(0 < (uint)r10.w);
        r11.z = ~(int)r0.x;
        r11.y = r11.y ? r11.z : 0;
        if (r11.y != 0) {
          r10.w = (int)r10.w + numLights;
          r10.w = (int)r10.w + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.y, r10.w, l(52), t12.xxxx
        r11.y = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r10.w, l(68), t12.xyzw
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r10.w, l(84), t12.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r10.w, l(132), t12.xyzw
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r10.w, l(148), t12.xyzw
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
        r18.z = samp0[]..swiz;
        r18.w = samp0[]..swiz;
          r11.z = abs(r5.w) * -0.200000003 + 0.400000006;
          r19.xyz = r8.xyz * r11.zzz + v6.xyz;
          r19.w = 1;
          r15.x = dot(r15.xyzw, r19.xyzw);
          r15.y = dot(r16.xyzw, r19.xyzw);
          r11.zw = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r11.zw = r11.zw + r18.zw;
          r11.zw = r11.zw * r18.xy;
          r15.xy = r11.yy / r17.xz;
          r15.zw = float2(1,1) + -r15.xy;
          r15.zw = cmp(r11.zw >= r15.zw);
          r15.xy = cmp(r15.xy >= r11.zw);
          r15.xy = (int2)r15.xy | (int2)r15.zw;
          r12.w = (int)r15.y | (int)r15.x;
          if (r12.w == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.w, r10.w, l(28), t12.xxxx
          r12.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r10.w, l(100), t12.xyzw
          r15.x = samp0[]..swiz;
          r15.y = samp0[]..swiz;
          r15.z = samp0[]..swiz;
          r15.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xy, r10.w, l(164), t12.xyxx
          r16.x = samp0[]..swiz;
          r16.y = samp0[]..swiz;
            r10.w = dot(r15.xyzw, r19.xyzw);
            r11.zw = saturate(r11.zw);
            r15.xy = r11.zw * r17.xz + r17.yw;
            r10.w = r10.w + r16.x;
            r10.w = r10.w / r16.y;
            r10.w = max(6.10351563e-05, r10.w);
            r11.z = (int)r12.w & 0x0000ffff;
            if (enableDitheredShadow != 0) {
              r16.x = -r5.x;
              r17.z = (uint)r11.z;
              r16.y = r6.x;
              r16.z = r5.x;
              r11.w = 0;
              r12.w = 0;
              while (true) {
                r15.w = cmp((int)r12.w >= 8);
                if (r15.w != 0) break;
                r18.x = dot(icb[r12.w+0].yx, r16.xy);
                r18.y = dot(icb[r12.w+0].yx, r16.yz);
                r17.xy = r18.xy * r11.yy + r15.xy;
                r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r10.w).x;
                r11.w = r15.w * 0.125 + r11.w;
                r12.w = (int)r12.w + 1;
              }
            } else {
              r15.z = (uint)r11.z;
              r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r10.w).x;
            }
            r10.w = r11.w * r11.w;
            r10.w = r10.w * r11.w;
          } else {
            r10.w = 1;
          }
          r8.w = r10.w * r8.w;
        }
      }
      r10.w = -r9.x * 0.5 + 1;
      r10.w = -r6.w * r10.w + 1;
      r10.w = r10.w * r10.w;
      r10.w = -r10.w * 0.620000005 + 0.620000005;
      r10.w = r10.w + -r6.w;
      r10.w = r1.w * r10.w + r6.w;
      r10.w = r10.w * r8.w;
      r5.w = cmp(0 < r5.w);
      r15.xyz = r10.www * r9.yzw + r13.xyz;
      r11.yzw = -v6.xyz * r0.zzz + sunConstants.wldDir.xyz;
      r0.z = dot(r11.yzw, r11.yzw);
      r0.z = rsqrt(r0.z);
      r11.yzw = r11.yzw * r0.zzz;
      r0.z = dot(r11.yzw, r10.xyz);
      r10.w = dot(r8.xyz, r11.yzw);
      r11.y = abs(r10.w) * r0.y + -abs(r10.w);
      r10.w = abs(r10.w) * r11.y + 1;
      r6.w = r6.w * r2.x + r5.z;
      r10.w = r10.w * r10.w;
      r6.w = r10.w * r6.w;
      r6.w = rcp(r6.w);
      r6.w = r6.w * r7.w;
      r6.w = r8.w * r6.w;
      r6.w = 0.25 * r6.w;
      r11.yzw = r6.www * r9.yzw + r4.yzw;
      r0.z = saturate(1 + -r0.z);
      r7.w = r0.z * r0.z;
      r7.w = r7.w * r7.w;
      r0.z = r7.w * r0.z;
      r0.z = r6.w * r0.z;
      r16.xyz = r0.zzz * r9.zwy + r14.xyz;
      r15.w = r16.z;
      r13.w = r14.z;
      r13.xyzw = r5.wwww ? r15.xyzw : r13.xyzw;
      r16.zw = r11.yz;
      r14.zw = r4.yz;
      r15.xyzw = r5.wwww ? r16.xyzw : r14.xyzw;
      r4.w = r5.w ? r11.w : r4.w;
      r14.z = r13.w;
      r14.xy = r15.xy;
      r4.yz = r15.zw;
    }
  }
  r15.x = -r5.x;
  r0.z = ~(int)r0.x;
  r5.w = -r9.x * 0.5 + 1;
  r9.xy = float2(0,0);
  r16.w = 0;
  r17.xyz = v6.xyz;
  r17.w = 1;
  r18.w = 1;
  r15.z = r5.x;
  r19.w = 1;
  r20.z = 1;
  r21.w = 1;
  r15.yw = r6.xx;
  r5.y = r15.w;
  r22.w = 1;
  r6.y = r15.x;
  r6.z = r5.x;
  r23.w = 1;
  r24.x = r6.x;
  r24.y = r15.x;
  r24.z = r5.x;
  r25.x = r6.x;
  r25.y = r15.x;
  r25.z = r5.x;
  r26.x = r6.x;
  r26.y = r15.x;
  r26.z = r5.x;
  r11.yzw = r13.xyz;
  r27.xyz = r14.zxy;
  r28.xyz = r4.yzw;
  r6.w = enableDitheredShadow;
  r7.w = 0;
  while (true) {
    r8.w = cmp((uint)r7.w >= numLights);
    if (r8.w != 0) break;
    r9.z = (uint)r7.w >> 5;
    r16.xyz = (int3)r7.xyz + (int3)r9.xyz;
    r8.w = visibleLights.Load(r16.xyzw).x;
    r16.xyz = r11.yzw;
    r29.xyz = r27.xyz;
    r30.xyz = r28.xyz;
    r9.z = r6.w;
    r9.w = r8.w;
    while (true) {
      if (r9.w == 0) break;
      r10.w = firstbitlow((uint)r9.w);
      r12.w = 1 << (int)r10.w;
      r13.w = (int)r9.w & (int)r12.w;
      if (r13.w != 0) {
        r9.w = (int)r9.w ^ (int)r12.w;
        r10.w = (int)r7.w + (int)r10.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r31.xyzw, r10.w, l(0), t11.xyzw
      r31.x = samp0[]..swiz;
      r31.y = samp0[]..swiz;
      r31.z = samp0[]..swiz;
      r31.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r32.xy, r10.w, l(16), t11.xyxx
      r32.x = samp0[]..swiz;
      r32.y = samp0[]..swiz;
        r31.xyz = -v6.xyz + r31.xyz;
        r32.z = r31.w;
        r31.xyz = cmp(abs(r31.xyz) < r32.zxy);
        r12.w = r31.y ? r31.x : 0;
        r12.w = r31.z ? r12.w : 0;
        if (r12.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r10.w, l(0), t12.wxyz
        r31.x = samp0[]..swiz;
        r31.y = samp0[]..swiz;
        r31.z = samp0[]..swiz;
        r31.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r10.w, l(16), t12.zxyw
        r32.x = samp0[]..swiz;
        r32.y = samp0[]..swiz;
        r32.z = samp0[]..swiz;
        r32.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r10.w, l(32), t12.xyzw
        r33.x = samp0[]..swiz;
        r33.y = samp0[]..swiz;
        r33.z = samp0[]..swiz;
        r33.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r10.w, l(48), t12.xyzw
        r34.x = samp0[]..swiz;
        r34.y = samp0[]..swiz;
        r34.z = samp0[]..swiz;
        r34.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r10.w, l(64), t12.yzwx
        r35.x = samp0[]..swiz;
        r35.y = samp0[]..swiz;
        r35.z = samp0[]..swiz;
        r35.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r10.w, l(80), t12.xyzw
        r36.x = samp0[]..swiz;
        r36.y = samp0[]..swiz;
        r36.z = samp0[]..swiz;
        r36.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r10.w, l(96), t12.yzwx
        r37.x = samp0[]..swiz;
        r37.y = samp0[]..swiz;
        r37.z = samp0[]..swiz;
        r37.w = samp0[]..swiz;
          if (3 == 0) r12.w = 0; else if (3+24 < 32) {           r12.w = (uint)r32.w << (32-(3 + 24)); r12.w = (uint)r12.w >> (32-3);          } else r12.w = (uint)r32.w >> 24;
          switch (r12.w) {
            case 4 :            r12.w = cmp(0 < r37.x);
            r38.xy = r36.zw;
            r38.z = r37.w;
            r39.xyz = -r38.xyz * float3(0.5,0.5,0.5) + r31.yzw;
            r40.xyz = -v6.xyz + r39.xyz;
            r13.w = dot(r38.xyz, r40.xyz);
            r14.w = saturate(-r13.w / r37.x);
            r41.xyz = r14.www * r38.xyz + r39.xyz;
            r41.xyz = r12.www ? r41.xyz : r31.yzw;
            r41.xyz = -v6.xyz + r41.xyz;
            r20.w = dot(r41.xyz, r41.xyz);
            r24.w = rsqrt(r20.w);
            r41.xyz = r41.xyz * r24.www;
            r24.w = dot(r8.xyz, r41.xyz);
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
                  r41.xyz = r8.xyz * r26.www + v6.xyz;
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
                    r43.y = dot(icb[r29.w+0].yx, r15.xy);
                    r43.z = dot(icb[r29.w+0].yx, r15.yz);
                    r43.yz = r43.yz * r34.yy;
                    r43.x = r43.y * r11.x;
                    r43.w = r43.y * r4.x;
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
                  r26.w = r32.x * r0.y;
                  r26.w = 0.25 * r26.w;
                  r27.w = dot(r38.xyz, r12.xyz);
                  r29.w = dot(r12.xyz, r40.xyz);
                  r30.w = -r27.w * r27.w + r37.x;
                  r13.w = r27.w * r29.w + -r13.w;
                  r13.w = saturate(r13.w / r30.w);
                  r27.w = r30.w / r37.x;
                  r27.w = 10 * r27.w;
                  r27.w = min(1, r27.w);
                  r13.w = r13.w + -r14.w;
                  r13.w = r27.w * r13.w + r14.w;
                  r38.xyz = r13.www * r38.xyz + r39.xyz;
                  r38.xyz = r12.www ? r38.xyz : r31.yzw;
                  r38.xyz = -v6.xyz + r38.xyz;
                  r12.w = dot(r38.xyz, r38.xyz);
                  r12.w = rsqrt(r12.w);
                  r39.xyz = r38.xyz * r12.www;
                  if (4 == 0) r13.w = 0; else if (4+16 < 32) {                   r13.w = (uint)r32.w << (32-(4 + 16)); r13.w = (uint)r13.w >> (32-4);                  } else r13.w = (uint)r32.w >> 16;
                  r14.w = cmp(0 < (uint)r13.w);
                  r14.w = r0.x ? r14.w : 0;
                  if (r14.w != 0) {
                    r13.w = (int)r13.w + numLights;
                    r13.w = (int)r13.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.w, r13.w, l(52), t12.xxxx
                  r14.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r13.w, l(100), t12.xyzw
                  r40.x = samp0[]..swiz;
                  r40.y = samp0[]..swiz;
                  r40.z = samp0[]..swiz;
                  r40.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r13.w, l(116), t12.xyzw
                  r41.x = samp0[]..swiz;
                  r41.y = samp0[]..swiz;
                  r41.z = samp0[]..swiz;
                  r41.w = samp0[]..swiz;
                    r27.w = abs(r24.w) * -0.200000003 + 0.400000006;
                    r18.xyz = r8.xyz * r27.www + v6.xyz;
                    r27.w = dot(r40.xyzw, r18.xyzw);
                    r29.w = dot(r41.xyzw, r18.xyzw);
                    r30.w = cmp(r29.w < r27.w);
                    if (r30.w == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r13.w, l(68), t12.xyzw
                    r40.x = samp0[]..swiz;
                    r40.y = samp0[]..swiz;
                    r40.z = samp0[]..swiz;
                    r40.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r13.w, l(84), t12.xyzw
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r13.w, l(132), t12.xyzw
                    r42.x = samp0[]..swiz;
                    r42.y = samp0[]..swiz;
                    r42.z = samp0[]..swiz;
                    r42.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r13.w, l(148), t12.xyzw
                    r43.x = samp0[]..swiz;
                    r43.y = samp0[]..swiz;
                    r43.z = samp0[]..swiz;
                    r43.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xy, r13.w, l(164), t12.xyxx
                    r44.x = samp0[]..swiz;
                    r44.y = samp0[]..swiz;
                      r40.x = dot(r40.xyzw, r18.xyzw);
                      r40.y = dot(r41.xyzw, r18.xyzw);
                      r18.xy = r40.xy / r29.ww;
                      r18.xy = r18.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r18.xy = r18.xy + r43.zw;
                      r18.xy = r18.xy * r43.xy;
                      r40.xy = r14.ww / r42.xz;
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
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.w, r13.w, l(28), t12.xxxx
                    r13.w = samp0[]..swiz;
                      r18.x = max(6.10351563e-05, r18.x);
                      r13.w = (int)r13.w & 0x0000ffff;
                      if (r9.z != 0) {
                        r41.z = (uint)r13.w;
                        r18.yz = float2(0,0);
                        while (true) {
                          r27.w = cmp((int)r18.z >= 8);
                          if (r27.w != 0) break;
                          r42.x = dot(icb[r18.z+0].yx, r15.xw);
                          r42.y = dot(icb[r18.z+0].xy, r5.xy);
                          r41.xy = r42.xy * r14.ww + r40.xy;
                          r27.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r41.xyz, r18.x).x;
                          r18.y = r27.w * 0.125 + r18.y;
                          r18.z = (int)r18.z + 1;
                        }
                      } else {
                        r40.z = (uint)r13.w;
                        r18.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r40.xyz, r18.x).x;
                      }
                      r13.w = r18.y * r18.y;
                      r13.w = r13.w * r18.y;
                    } else {
                      r13.w = 1;
                    }
                    r20.w = r20.w * r13.w;
                  } else {
                    if (4 == 0) r13.w = 0; else if (4+20 < 32) {                     r13.w = (uint)r32.w << (32-(4 + 20)); r13.w = (uint)r13.w >> (32-4);                    } else r13.w = (uint)r32.w >> 20;
                    r14.w = cmp(0 < (uint)r13.w);
                    r14.w = r14.w ? r0.z : 0;
                    if (r14.w != 0) {
                      r13.w = (int)r13.w + numLights;
                      r13.w = (int)r13.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.w, r13.w, l(52), t12.xxxx
                    r14.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r13.w, l(100), t12.xyzw
                    r40.x = samp0[]..swiz;
                    r40.y = samp0[]..swiz;
                    r40.z = samp0[]..swiz;
                    r40.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r13.w, l(116), t12.xyzw
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                      r18.x = abs(r24.w) * -0.200000003 + 0.400000006;
                      r19.xyz = r8.xyz * r18.xxx + v6.xyz;
                      r18.x = dot(r40.xyzw, r19.xyzw);
                      r18.z = dot(r41.xyzw, r19.xyzw);
                      r27.w = cmp(r18.z < r18.x);
                      if (r27.w == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r13.w, l(68), t12.xyzw
                      r40.x = samp0[]..swiz;
                      r40.y = samp0[]..swiz;
                      r40.z = samp0[]..swiz;
                      r40.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r13.w, l(84), t12.xyzw
                      r41.x = samp0[]..swiz;
                      r41.y = samp0[]..swiz;
                      r41.z = samp0[]..swiz;
                      r41.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r13.w, l(132), t12.xyzw
                      r42.x = samp0[]..swiz;
                      r42.y = samp0[]..swiz;
                      r42.z = samp0[]..swiz;
                      r42.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r13.w, l(148), t12.xyzw
                      r43.x = samp0[]..swiz;
                      r43.y = samp0[]..swiz;
                      r43.z = samp0[]..swiz;
                      r43.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xy, r13.w, l(164), t12.xyxx
                      r44.x = samp0[]..swiz;
                      r44.y = samp0[]..swiz;
                        r40.x = dot(r40.xyzw, r19.xyzw);
                        r40.y = dot(r41.xyzw, r19.xyzw);
                        r19.xy = r40.xy / r18.zz;
                        r19.xy = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                        r19.xy = r19.xy + r43.zw;
                        r19.xy = r19.xy * r43.xy;
                        r40.xy = r14.ww / r42.xz;
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
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.w, r13.w, l(28), t12.xxxx
                      r13.w = samp0[]..swiz;
                        r18.x = max(6.10351563e-05, r18.x);
                        r13.w = (int)r13.w & 0x0000ffff;
                        if (r9.z != 0) {
                          r19.z = (uint)r13.w;
                          r18.z = 0;
                          r27.w = 0;
                          while (true) {
                            r29.w = cmp((int)r27.w >= 8);
                            if (r29.w != 0) break;
                            r41.x = dot(icb[r27.w+0].xy, r6.xy);
                            r41.y = dot(icb[r27.w+0].yx, r6.xz);
                            r19.xy = r41.xy * r14.ww + r40.xy;
                            r19.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r18.x).x;
                            r18.z = r19.x * 0.125 + r18.z;
                            r27.w = (int)r27.w + 1;
                          }
                        } else {
                          r40.z = (uint)r13.w;
                          r18.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r40.xyz, r18.x).x;
                        }
                        r13.w = r18.z * r18.z;
                        r13.w = r13.w * r18.z;
                      } else {
                        r13.w = 1;
                      }
                      r20.w = r20.w * r13.w;
                    }
                  }
                  r13.w = -r25.w * r5.w + 1;
                  r13.w = r13.w * r13.w;
                  r13.w = -r13.w * 0.620000005 + 0.620000005;
                  r13.w = r13.w + -r25.w;
                  r13.w = r1.w * r13.w + r25.w;
                  r13.w = r13.w * r20.w;
                  r32.x = r31.x;
                  r14.w = cmp(0 < r24.w);
                  r19.xyz = r13.www * r32.xyz + r16.xyz;
                  r13.w = saturate(dot(r8.xyz, r39.xyz));
                  r38.xyz = r38.xyz * r12.www + r10.xyz;
                  r12.w = dot(r38.xyz, r38.xyz);
                  r12.w = rsqrt(r12.w);
                  r38.xyz = r38.xyz * r12.www;
                  r12.w = dot(r38.xyz, r10.xyz);
                  r18.x = dot(r8.xyz, r38.xyz);
                  r24.w = abs(r18.x) * r0.y + -abs(r18.x);
                  r18.x = abs(r18.x) * r24.w + 1;
                  r24.w = r13.w * r2.x + r5.z;
                  r18.x = r18.x * r18.x;
                  r18.x = r18.x * r24.w;
                  r18.x = rcp(r18.x);
                  r13.w = r13.w * r26.w;
                  r13.w = r18.x * r13.w;
                  r13.w = r13.w * r20.w;
                  r38.xyz = r13.www * r32.xyz + r30.xyz;
                  r12.w = saturate(1 + -r12.w);
                  r18.x = r12.w * r12.w;
                  r18.x = r18.x * r18.x;
                  r12.w = r18.x * r12.w;
                  r12.w = r13.w * r12.w;
                  r39.xyz = r12.www * r32.xyz + r29.xyz;
                  r16.xyz = r14.www ? r19.xyz : r16.xyz;
                  r29.xyz = r14.www ? r39.xyz : r29.xyz;
                  r30.xyz = r14.www ? r38.xyz : r30.xyz;
                }
              }
            }
            break;
            case 2 :            r19.xy = r34.zw;
            r19.z = r35.w;
            r19.xyz = -v6.xyz + r19.xyz;
            r12.w = dot(r19.xyz, r19.xyz);
            r12.w = rsqrt(r12.w);
            r38.xyz = r19.xyz * r12.www;
            r13.w = dot(r8.xyz, r38.xyz);
            r14.w = saturate(r13.w);
            r18.x = cmp(0 < r14.w);
            if (r18.x != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r10.w, l(112), t12.yzwx
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r10.w, l(128), t12.zxyw
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
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r10.w, l(172), t12.yzwx
              r42.x = samp0[]..swiz;
              r42.y = samp0[]..swiz;
              r42.z = samp0[]..swiz;
              r42.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r10.w, l(188), t12.wxyz
              r43.x = samp0[]..swiz;
              r43.y = samp0[]..swiz;
              r43.z = samp0[]..swiz;
              r43.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r10.w, l(204), t12.xyzw
              r44.x = samp0[]..swiz;
              r44.y = samp0[]..swiz;
              r44.z = samp0[]..swiz;
              r44.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.w, r10.w, l(236), t12.xxxx
              r24.w = samp0[]..swiz;
                r45.xyz = -v6.xyz + r31.yzw;
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
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyz, r10.w, l(220), t12.xyzx
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
                  r18.x = abs(r13.w) * -0.200000003 + 0.400000006;
                  r21.xyz = r8.xyz * r18.xxx + v6.xyz;
                  r38.xyz = r37.xyz;
                  r18.x = dot(r38.xyzw, r21.xyzw);
                  r20.x = dot(r40.xyzw, r21.xyzw);
                  r20.y = cmp(r20.x >= r18.x);
                  if (r20.y != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.y, r10.w, l(144), t12.xxxx
                  r39.y = samp0[]..swiz;
                    r35.w = r36.x;
                    r33.x = dot(r35.xyzw, r21.xyzw);
                    r37.xyz = r36.yzw;
                    r33.y = dot(r37.xyzw, r21.xyzw);
                    r21.xy = r33.xy / r20.xx;
                    r21.xy = saturate(r21.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                    r21.xy = r21.xy * r39.zw + r39.xy;
                    r10.w = r18.x / r20.x;
                    r10.w = max(6.10351563e-05, r10.w);
                    r18.x = (int)r32.w & 0x0000ffff;
                    if (r9.z != 0) {
                      r33.z = (uint)r18.x;
                      r20.xy = float2(0,0);
                      while (true) {
                        r24.w = cmp((int)r20.y >= 8);
                        if (r24.w != 0) break;
                        r35.x = dot(icb[r20.y+0].xy, r24.xy);
                        r35.y = dot(icb[r20.y+0].yx, r24.xz);
                        r33.xy = r35.xy * r34.yy + r21.xy;
                        r24.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r33.xyz, r10.w).x;
                        r20.x = r24.w * 0.125 + r20.x;
                        r20.y = (int)r20.y + 1;
                      }
                    } else {
                      r21.z = (uint)r18.x;
                      r20.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r10.w).x;
                    }
                    r10.w = r20.x * r20.x;
                    r10.w = r10.w * r20.x;
                  } else {
                    r10.w = 1;
                  }
                } else {
                  r10.w = 1;
                }
                r10.w = r20.w * r10.w;
                r18.x = cmp(0 < r10.w);
                if (r18.x != 0) {
                  r18.x = r32.x * r0.y;
                  r18.x = r18.x * r14.w;
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
                    r21.x = abs(r13.w) * -0.200000003 + 0.400000006;
                    r22.xyz = r8.xyz * r21.xxx + v6.xyz;
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
                      if (r9.z != 0) {
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
                    r10.w = r20.y * r10.w;
                  } else {
                    if (4 == 0) r20.y = 0; else if (4+20 < 32) {                     r20.y = (uint)r32.w << (32-(4 + 20)); r20.y = (uint)r20.y >> (32-4);                    } else r20.y = (uint)r32.w >> 20;
                    r20.w = cmp(0 < (uint)r20.y);
                    r20.w = r20.w ? r0.z : 0;
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
                      r21.x = abs(r13.w) * -0.200000003 + 0.400000006;
                      r23.xyz = r8.xyz * r21.xxx + v6.xyz;
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
                        if (r9.z != 0) {
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
                      r10.w = r20.y * r10.w;
                    }
                  }
                  r20.y = -r14.w * r5.w + 1;
                  r20.y = r20.y * r20.y;
                  r20.y = -r20.y * 0.620000005 + 0.620000005;
                  r20.y = r20.y + -r14.w;
                  r20.y = r1.w * r20.y + r14.w;
                  r20.y = r20.y * r10.w;
                  r13.w = cmp(0 < r13.w);
                  r22.xyz = r20.yyy * r31.xyz + r16.xyz;
                  r19.xyz = r19.xyz * r12.www + r10.xyz;
                  r12.w = dot(r19.xyz, r19.xyz);
                  r12.w = rsqrt(r12.w);
                  r19.xyz = r19.xyz * r12.www;
                  r12.w = dot(r19.xyz, r10.xyz);
                  r19.x = dot(r8.xyz, r19.xyz);
                  r19.y = abs(r19.x) * r0.y + -abs(r19.x);
                  r19.x = abs(r19.x) * r19.y + 1;
                  r14.w = r14.w * r2.x + r5.z;
                  r19.x = r19.x * r19.x;
                  r14.w = r19.x * r14.w;
                  r14.w = rcp(r14.w);
                  r14.w = r14.w * r18.x;
                  r10.w = r14.w * r10.w;
                  r10.w = 0.25 * r10.w;
                  r19.xyz = r10.www * r31.xyz + r30.xyz;
                  r12.w = saturate(1 + -r12.w);
                  r14.w = r12.w * r12.w;
                  r14.w = r14.w * r14.w;
                  r12.w = r14.w * r12.w;
                  r10.w = r12.w * r10.w;
                  r23.xyz = r10.www * r31.xyz + r29.xyz;
                  r16.xyz = r13.www ? r22.xyz : r16.xyz;
                  r29.xyz = r13.www ? r23.xyz : r29.xyz;
                  r30.xyz = r13.www ? r19.xyz : r30.xyz;
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
    r11.yzw = r16.xyz;
    r27.xyz = r29.xyz;
    r28.xyz = r30.xyz;
    r7.w = (int)r7.w + 32;
  }
  r0.xyz = float3(1,1,1) + -r2.yzw;
  r0.xyz = r27.xyz * r0.xyz;
  r0.xyz = r28.xyz * r2.yzw + r0.xyz;
  r0.xyz = r11.yzw * r1.xyz + r0.xyz;
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
    r0.w = dot(v6.xyz, v6.xyz);
    r2.x = rsqrt(r0.w);
    r2.xyz = v6.xyz * r2.xxx;
    r0.w = sqrt(r0.w);
    r2.w = cmp(0 < fogConstants.blendAmount);
    if (r2.w != 0) {
      r3.xy = r0.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r3.xy = fogConstants.atmospherefogdensityatcamera.xy * r3.xy;
      r2.w = cmp(0.00999999978 < abs(v6.z));
      r3.zw = fogConstants.atmospherefogheightdensityscale.xy * v6.zz;
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
      r3.w = cmp(0.00999999978 < abs(v6.z));
      r4.x = fogConstants.atmospherefogheightdensityscale.x * v6.z;
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
    r0.w = fogConstants.heightFalloff * v6.z;
    r2.w = fogConstants.heightFalloff * v6.z + fogConstants.K0;
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
    r2.w = dot(v6.xyz, v6.xyz);
    r3.x = sqrt(r2.w);
    r0.w = r0.w * r3.x + fogConstants.expAdd;
    r0.w = exp2(r0.w);
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r2.w = rsqrt(r2.w);
    r3.xyz = v6.xyz * r2.www;
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
    // Needs manual fix for instruction:
    imm_atomic_iadd r3.z, u6, r3.xyxx, l(1)
    InterlockedAdd(dest, imm_value, orig_value);
    r0.w = cmp((uint)r3.z < oitMaxEntries);
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
      r3.w = (uint)v0.z << 2;
      r0.w = (int)r0.w & 2046;
      bitmask.w = ((~(-1 << 11)) << 0) & 0xffffffff;  r0.w = (((uint)r0.w << 0) & bitmask.w) | ((uint)r3.w & ~bitmask.w);
      bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r2.y = (((uint)zFeatherComputeSprites << 0) & bitmask.y) | ((uint)r0.w & ~bitmask.y);
    // No code for instruction (needs manual fix):
        store_uav_typed u7.xyzw, r3.xyzz, r2.xyzw
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