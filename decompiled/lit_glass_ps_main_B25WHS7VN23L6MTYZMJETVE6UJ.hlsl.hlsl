// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:36:33 2021

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
  float3 backscatterTint : packoffset(c12);
  uint zFeatherComputeSprites : packoffset(c12.w);
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
SamplerComparisonState ShadowSamplerComparisonState_s : register(s13);
StructuredBuffer<shaderConstantSetBuffer> shaderConstantSetBuffer : register(t0);
StructuredBuffer<modelInstanceBuffer> modelInstanceBuffer : register(t4);
Texture2D<float2> gEnvBRDFGlass : register(t5);
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45,r46,r47;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = colorMap.Sample(colorSampler_s, w1.xy).xyzw;
  r1.x = tintMask.Sample(colorSampler_s, w1.xy).x;
  r1.yzw = float3(-1,-1,-1) + colorTint.xyz;
  r1.xyz = r1.xxx * r1.yzw + float3(1,1,1);
  r0.xyz = r1.xyz * r0.xyz;
  r1.x = v1.x * r0.w;
  r1.y = glossMap.Sample(specColorSampler_s, w1.xy).x;
  r1.z = glossRange.y + -glossRange.x;
  r1.y = r1.y * r1.z + glossRange.x;
  r1.y = saturate(0.0588235296 * r1.y);
  r2.xyz = normalMap.Sample(normalSampler_s, w1.xy).xyz;
  r2.xyz = float3(-0.5,-0.5,-0) + r2.xyz;
  r2.xyz = baseNormalHeight * r2.xyz + float3(0.5,0.5,0);
  r2.xy = r2.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r1.w = dot(r2.xy, r2.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r2.z = r2.z * r2.z;
  r2.z = 0.333333343 * r2.z;
  r2.z = min(1, r2.z);
  r2.w = v7.x ? 1 : -1;
  r3.x = dot(v3.xyz, v3.xyz);
  r3.x = rsqrt(r3.x);
  r3.xyz = v3.xyz * r3.xxx;
  r3.xyz = r3.xyz * r2.www;
  r3.w = dot(v4.xyz, v4.xyz);
  r3.w = rsqrt(r3.w);
  r4.xyz = v4.xyz * r3.www;
  r4.xyz = r4.xyz * r2.www;
  r3.w = dot(v5.xyz, v5.xyz);
  r3.w = rsqrt(r3.w);
  r5.xyz = v5.xyz * r3.www;
  r5.xyz = r5.xyz * r2.www;
  r1.y = -17 * r1.y;
  r1.y = exp2(r1.y);
  r1.y = r2.z + r1.y;
  r1.y = log2(r1.y);
  r1.y = -0.0588235296 * r1.y;
  r5.xyz = r5.xyz * r2.yyy;
  r4.xyz = r4.xyz * r2.xxx + r5.xyz;
  r3.xyz = r3.xyz * r1.www + r4.xyz;
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = r3.xyz * r1.www;
  r1.z = debugGlossOverride.x * r1.z + glossRange.x;
  r1.z = saturate(0.0588235296 * r1.z);
  r1.z = -17 * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r2.z + r1.z;
  r1.z = log2(r1.z);
  r1.z = -0.0588235296 * r1.z;
  r1.yz = max(float2(0,0), r1.yz);
  r1.w = cmp(0 < debugStreamerControl.w);
  if (r1.w != 0) {
    r1.w = (int)debugStreamerControl.w;
    r2.x = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, w1.xy);
    r2.y = colorMap.CalculateLevelOfDetail(colorSampler_s, w1.xy);
    r2.x = cmp(r2.x < r2.y);
    r2.y = cmp(0 < r2.y);
    r4.xyz = (int3)r1.www & int3(1,2,4);
    r5.xyz = r4.xxx ? float3(1,0,1) : r0.xyz;
    r4.xyw = r4.yyy ? float3(0,1,1) : r0.xyz;
    r4.xyw = r2.yyy ? r5.xyz : r4.xyw;
    r5.xyz = r4.zzz ? float3(0,1,0) : r0.xyz;
    r0.xyz = r2.xxx ? r4.xyw : r5.xyz;
  }
  r2.xyz = debugColorOverride.xyz + -r0.xyz;
  r0.xyz = debugColorOverride.www * r2.xyz + r0.xyz;
  r0.w = -r0.w * v1.x + debugAlphaOverride.x;
  r0.w = debugAlphaOverride.w * r0.w + r1.x;
  r1.x = r1.z + -r1.y;
  r1.x = debugGlossOverride.w * r1.x + r1.y;
  r1.y = -1 + debugOcclusionOverride.x;
  r1.y = debugOcclusionOverride.w * r1.y + 1;
  r2.xyz = v7.xxx ? v3.xyz : -v3.xyz;
  r1.z = dot(r2.xyz, r2.xyz);
  r1.z = rsqrt(r1.z);
  r2.xyz = r2.xyz * r1.zzz + -r3.xyz;
  r2.xyz = debugNormalOverride.www * r2.xyz + r3.xyz;
  r1.z = cmp(v0.z >= 0.984375);
  r1.w = 1.01587307 * v0.z;
  r3.x = v0.z * 64 + -63;
  r1.z = r1.z ? r3.x : r1.w;
  r1.z = max(9.99999994e-09, r1.z);
  r1.z = rcp(r1.z);
  r3.xy = (uint2)v0.xy;
  r4.xyz = ddx_coarse(v6.xyz);
  r5.xyz = ddy_coarse(v6.xyz);
  r1.w = numRefProbes + numLights;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r3.zw, v2.x, l(4), t4.xxxy
r3.z = samp0[]..swiz;
r3.w = samp0[]..swiz;
  r6.xy = (int2)r3.ww & int2(268435456,536870912);
  if (r6.x != 0) {
    r7.xyz = eyeOffset.xyz + v6.xyz;
    r3.w = 0.0078125 * r1.z;
    r3.w = min(15, r3.w);
    r3.w = (uint)r3.w;
    r8.xy = (uint2)r3.xy >> int2(6,6);
    r8.z = (uint)r3.w << 4;
    r3.w = numStaticDecals & -32;
    r4.w = (int)-r3.w + numStaticDecals;
    r9.xy = float2(0,0);
    r10.w = 0;
    r7.w = 1;
    r11.xyzw = float4(0,0,0,0);
    r6.xzw = float3(0,0,0);
    r12.yz = float2(0,0);
    r13.xy = float2(0,0);
    r5.w = 0;
    while (true) {
      r8.w = cmp((uint)r5.w >= numStaticDecals);
      if (r8.w != 0) break;
      r9.z = (uint)r5.w >> 5;
      r10.xyz = (int3)r8.xyz + (int3)r9.xyz;
      r8.w = visibleDecals.Load(r10.xyzw).x;
      r9.z = cmp((int)r3.w == (int)r5.w);
      if (r4.w == 0) r9.w = 0; else if (r4.w+0 < 32) {       r9.w = (uint)r8.w << (32-(r4.w + 0)); r9.w = (uint)r9.w >> (32-r4.w);      } else r9.w = (uint)r8.w >> 0;
      r8.w = r9.z ? r9.w : r8.w;
      r9.z = (int)r1.w + (int)r5.w;
      r14.xyzw = r11.xzwy;
      r10.xyz = r6.xzw;
      r15.yz = r12.yz;
      r16.xy = r13.xy;
      r9.w = r8.w;
      while (true) {
        if (r9.w == 0) break;
        r12.w = firstbitlow((uint)r9.w);
        r13.w = 1 << (int)r12.w;
        r15.w = (int)r9.w & (int)r13.w;
        if (r15.w != 0) {
          r9.w = (int)r9.w ^ (int)r13.w;
          r13.w = (int)r9.z + (int)r12.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r17.xyzw, r13.w, l(0), t11.xyzw
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r18.xy, r13.w, l(16), t11.xyxx
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
          r17.xyz = -v6.xyz + r17.xyz;
          r18.z = r17.w;
          r17.xyz = cmp(abs(r17.xyz) < r18.zxy);
          r13.w = r17.y ? r17.x : 0;
          r13.w = r17.z ? r13.w : 0;
          if (r13.w != 0) {
            r12.w = (int)r5.w + (int)r12.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r17.xyz, r12.w, l(0), t36.xyzx
          r17.x = samp0[]..swiz;
          r17.y = samp0[]..swiz;
          r17.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r18.xyz, r12.w, l(16), t36.xyzx
          r18.x = samp0[]..swiz;
          r18.y = samp0[]..swiz;
          r18.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r19.xyz, r12.w, l(32), t36.xyzx
          r19.x = samp0[]..swiz;
          r19.y = samp0[]..swiz;
          r19.z = samp0[]..swiz;
            r20.x = r17.x;
            r20.y = r18.x;
            r20.z = r19.x;
            r13.w = dot(r20.xyz, r20.xyz);
            r13.w = rsqrt(r13.w);
            r21.xyz = r20.xyz * r13.www;
            r13.w = dot(r21.xyz, v3.xyz);
            r13.w = cmp(r13.w >= 0.5);
            if (r13.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r22.xyw, r12.w, l(48), t36.xyxz
            r22.x = samp0[]..swiz;
            r22.y = samp0[]..swiz;
            r22.w = samp0[]..swiz;
              r20.w = r22.x;
              r20.x = dot(r7.xyzw, r20.xyzw);
              r23.x = r17.y;
              r23.y = r18.y;
              r23.z = r19.y;
              r23.w = r22.y;
              r20.y = dot(r7.xyzw, r23.xyzw);
              r22.x = r17.z;
              r22.y = r18.z;
              r22.z = r19.z;
              r20.z = dot(r7.xyzw, r22.xyzw);
              r17.xyz = cmp(abs(r20.xyz) < float3(1,1,1));
              r13.w = r17.y ? r17.x : 0;
              r13.w = r17.z ? r13.w : 0;
              if (r13.w != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r17.xyzw, r12.w, l(64), t36.xyzw
              r17.x = samp0[]..swiz;
              r17.y = samp0[]..swiz;
              r17.z = samp0[]..swiz;
              r17.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r18.xyzw, r12.w, l(80), t36.xyzw
              r18.x = samp0[]..swiz;
              r18.y = samp0[]..swiz;
              r18.z = samp0[]..swiz;
              r18.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r19.xyzw, r12.w, l(96), t36.xyzw
              r19.x = samp0[]..swiz;
              r19.y = samp0[]..swiz;
              r19.z = samp0[]..swiz;
              r19.w = samp0[]..swiz;
                r24.x = dot(r4.xyz, r23.xyz);
                r24.y = dot(r4.xyz, r22.xyz);
                r25.x = dot(r5.xyz, r23.xyz);
                r25.y = dot(r5.xyz, r22.xyz);
                r20.xy = r20.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                r24.xyz = float3(0.5,-0.5,0.5) * r24.xyx;
                r25.xyz = float3(0.5,-0.5,0.5) * r25.xyx;
                r20.zw = (int2)r18.yz & int2(65535,65535);
                if (r20.z != 0) {
                  if (4 == 0) r13.w = 0; else if (4+24 < 32) {                   r13.w = (uint)r18.w << (32-(4 + 24)); r13.w = (uint)r13.w >> (32-4);                  } else r13.w = (uint)r18.w >> 24;
                  r13.w = 1 << (int)r13.w;
                  r15.w = (uint)r18.w >> 28;
                  r15.w = 1 << (int)r15.w;
                  r16.w = cmp((int)r20.z == 4);
                  if (r16.w != 0) {
                    r16.w = (int)r18.w & 4095;
                    if (12 == 0) r21.w = 0; else if (12+12 < 32) {                     r21.w = (uint)r18.w << (32-(12 + 12)); r21.w = (uint)r21.w >> (32-12);                    } else r21.w = (uint)r18.w >> 12;
                    r22.w = (int)r19.w & 1023;
                    r26.xz = (uint2)r13.ww;
                    r26.y = (uint)r15.w;
                    r27.xy = r20.xy * r26.zy + float2(0.5,0.5);
                    r27.zw = float2(-0.5,-0.5) + r26.zy;
                    r27.xy = min(r27.xy, r27.zw);
                    r28.x = (uint)r16.w;
                    r28.y = (uint)r21.w;
                    r27.xy = r28.xy + r27.xy;
                    r27.xy = invBcTexSizes.xy * r27.xy;
                    r27.z = (uint)r22.w;
                    r28.xyz = invBcTexSizes.xyx * r24.zyz;
                    r28.xyz = r28.xyz * r26.xyz;
                    r29.xyz = invBcTexSizes.xyx * r25.zyz;
                    r26.xyz = r29.xyz * r26.xyz;
                    r26.xyzw = materialTexBC7.SampleGrad(samplerLinearClamp_s, r27.xyz, r28.xyzx, r26.xyzx).xyzw;
                  } else {
                    r16.w = cmp((int)r20.z == 1);
                    if (r16.w != 0) {
                      r16.w = (int)r18.w & 4095;
                      if (12 == 0) r18.w = 0; else if (12+12 < 32) {                       r18.w = (uint)r18.w << (32-(12 + 12)); r18.w = (uint)r18.w >> (32-12);                      } else r18.w = (uint)r18.w >> 12;
                      r20.z = (int)r19.w & 1023;
                      r27.xz = (uint2)r13.ww;
                      r27.y = (uint)r15.w;
                      r28.xy = r20.xy * r27.zy + float2(0.5,0.5);
                      r28.zw = float2(-0.5,-0.5) + r27.zy;
                      r28.xy = min(r28.xy, r28.zw);
                      r29.x = (uint)r16.w;
                      r29.y = (uint)r18.w;
                      r28.xy = r29.xy + r28.xy;
                      r28.xy = invBcTexSizes.zw * r28.xy;
                      r28.z = (uint)r20.z;
                      r29.xyz = invBcTexSizes.zwz * r24.zyz;
                      r29.xyz = r29.xyz * r27.xyz;
                      r30.xyz = invBcTexSizes.zwz * r25.zyz;
                      r27.xyz = r30.xyz * r27.xyz;
                      r26.xyzw = materialTexBC3.SampleGrad(samplerLinearClamp_s, r28.xyz, r29.xyzx, r27.xyzx).xyzw;
                    } else {
                      r26.xyzw = float4(1,1,1,1);
                    }
                  }
                  r17.xyz = r26.xyz * r17.xyz;
                  r13.w = r26.w * r17.w;
                } else {
                  r17.xyz = float3(0,0,0);
                  r13.w = 0;
                }
                r15.w = cmp(r18.x != 1.000000);
                r16.w = r13.w + r17.w;
                r16.w = saturate(r16.w * r18.x + -r18.x);
                r13.w = r15.w ? r16.w : r13.w;
                if (r20.w != 0) {
                  if (4 == 0) r15.w = 0; else if (4+24 < 32) {                   r15.w = (uint)r19.y << (32-(4 + 24)); r15.w = (uint)r15.w >> (32-4);                  } else r15.w = (uint)r19.y >> 24;
                  r15.w = 1 << (int)r15.w;
                  r16.w = (uint)r19.y >> 28;
                  r16.w = 1 << (int)r16.w;
                  r17.w = cmp((int)r20.w == 2);
                  if (r17.w != 0) {
                    r17.w = (int)r19.y & 4095;
                    if (12 == 0) r18.x = 0; else if (12+12 < 32) {                     r18.x = (uint)r19.y << (32-(12 + 12)); r18.x = (uint)r18.x >> (32-12);                    } else r18.x = (uint)r19.y >> 12;
                    if (10 == 0) r18.w = 0; else if (10+20 < 32) {                     r18.w = (uint)r19.w << (32-(10 + 20)); r18.w = (uint)r18.w >> (32-10);                    } else r18.w = (uint)r19.w >> 20;
                    r26.xz = (uint2)r15.ww;
                    r26.y = (uint)r16.w;
                    r27.xy = r20.xy * r26.zy + float2(0.5,0.5);
                    r27.zw = float2(-0.5,-0.5) + r26.zy;
                    r27.xy = min(r27.xy, r27.zw);
                    r28.x = (uint)r17.w;
                    r28.y = (uint)r18.x;
                    r27.xy = r28.xy + r27.xy;
                    r27.xy = invMaskTexSizes.xy * r27.xy;
                    r27.z = (uint)r18.w;
                    r28.xyz = invMaskTexSizes.xyx * r24.zyz;
                    r28.xyz = r28.xyz * r26.xyz;
                    r29.xyz = invMaskTexSizes.xyx * r25.zyz;
                    r26.xyz = r29.xyz * r26.xyz;
                    r17.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r27.xyz, r28.x, r26.x).x;
                  } else {
                    r18.x = cmp((int)r20.w == 4);
                    if (r18.x != 0) {
                      r18.x = (int)r19.y & 4095;
                      if (12 == 0) r20.z = 0; else if (12+12 < 32) {                       r20.z = (uint)r19.y << (32-(12 + 12)); r20.z = (uint)r20.z >> (32-12);                      } else r20.z = (uint)r19.y >> 12;
                      if (10 == 0) r20.w = 0; else if (10+20 < 32) {                       r20.w = (uint)r19.w << (32-(10 + 20)); r20.w = (uint)r20.w >> (32-10);                      } else r20.w = (uint)r19.w >> 20;
                      r26.xz = (uint2)r15.ww;
                      r26.y = (uint)r16.w;
                      r27.xy = r20.xy * r26.zy + float2(0.5,0.5);
                      r27.zw = float2(-0.5,-0.5) + r26.zy;
                      r27.xy = min(r27.xy, r27.zw);
                      r28.x = (uint)r18.x;
                      r28.y = (uint)r20.z;
                      r18.xw = r28.xy + r27.xy;
                      r27.xy = invBcTexSizes.xy * r18.xw;
                      r27.z = (uint)r20.w;
                      r28.xyz = invBcTexSizes.xyx * r24.zyz;
                      r28.xyz = r28.xyz * r26.xyz;
                      r29.xyz = invBcTexSizes.xyx * r25.zyz;
                      r26.xyz = r29.xyz * r26.xyz;
                      r17.w = materialTexBC7.SampleGrad(samplerLinearClamp_s, r27.xyz, r28.x, r26.x).x;
                    } else {
                      r18.x = (int)r19.y & 4095;
                      if (12 == 0) r20.z = 0; else if (12+12 < 32) {                       r20.z = (uint)r19.y << (32-(12 + 12)); r20.z = (uint)r20.z >> (32-12);                      } else r20.z = (uint)r19.y >> 12;
                      if (10 == 0) r20.w = 0; else if (10+20 < 32) {                       r20.w = (uint)r19.w << (32-(10 + 20)); r20.w = (uint)r20.w >> (32-10);                      } else r20.w = (uint)r19.w >> 20;
                      r26.xz = (uint2)r15.ww;
                      r26.y = (uint)r16.w;
                      r27.xy = r20.xy * r26.zy + float2(0.5,0.5);
                      r27.zw = float2(-0.5,-0.5) + r26.zy;
                      r27.xy = min(r27.xy, r27.zw);
                      r28.x = (uint)r18.x;
                      r28.y = (uint)r20.z;
                      r18.xw = r28.xy + r27.xy;
                      r27.xy = invBcTexSizes.zw * r18.xw;
                      r27.z = (uint)r20.w;
                      r28.xyz = invBcTexSizes.zwz * r24.zyz;
                      r28.xyz = r28.xyz * r26.xyz;
                      r29.xyz = invBcTexSizes.zwz * r25.zyz;
                      r26.xyz = r29.xyz * r26.xyz;
                      r17.w = materialTexBC3.SampleGrad(samplerLinearClamp_s, r27.xyz, r28.x, r26.x).x;
                    }
                  }
                  r26.xyz = r17.www * float3(0.959999979,0.959999979,0.959999979) + float3(0.0399999991,0.0399999991,0.0399999991);
                  r15.w = saturate(1 + -r17.w);
                  r17.xyz = r17.xyz * r15.www;
                } else {
                  r26.xyz = float3(0.0399999991,0.0399999991,0.0399999991);
                }
                r18.xy = (uint2)r18.zy >> int2(16,16);
                if (r18.x != 0) {
                  r15.w = cmp((int)r18.x == 2);
                  if (r15.w != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r12.w, r12.w, l(112), t36.xxxx
                  r12.w = samp0[]..swiz;
                    if (4 == 0) r18.z = 0; else if (4+24 < 32) {                     r18.z = (uint)r19.z << (32-(4 + 24)); r18.z = (uint)r18.z >> (32-4);                    } else r18.z = (uint)r19.z >> 24;
                    if (12 == 0) r18.w = 0; else if (12+12 < 32) {                     r18.w = (uint)r19.z << (32-(12 + 12)); r18.w = (uint)r18.w >> (32-12);                    } else r18.w = (uint)r19.z >> 12;
                    r15.w = 1 << (int)r18.z;
                    r16.w = (uint)r19.z >> 28;
                    r16.w = 1 << (int)r16.w;
                    r17.w = (int)r19.z & 4095;
                    r12.w = (int)r12.w & 1023;
                    r27.xz = (uint2)r15.ww;
                    r27.y = (uint)r16.w;
                    r19.yz = r20.xy * r27.zy + float2(0.5,0.5);
                    r20.zw = float2(-0.5,-0.5) + r27.zy;
                    r19.yz = min(r20.zw, r19.yz);
                    r28.x = (uint)r17.w;
                    r28.y = (uint)r18.w;
                    r18.zw = r28.xy + r19.yz;
                    r28.xy = invMaskTexSizes.xy * r18.zw;
                    r28.z = (uint)r12.w;
                    r29.xyz = invMaskTexSizes.xyx * r24.zyz;
                    r29.xyz = r29.xyz * r27.xyz;
                    r30.xyz = invMaskTexSizes.xyx * r25.zyz;
                    r27.xyz = r30.xyz * r27.xyz;
                    r12.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r28.xyz, r29.x, r27.x).x;
                  } else {
                    r15.w = cmp((int)r18.x == 6);
                    r12.w = r15.w ? 0 : 1;
                  }
                } else {
                  r12.w = 1;
                }
                r12.w = saturate(0.764705896 * r12.w);
                if (r18.y != 0) {
                  r15.w = cmp((int)r18.y == 3);
                  if (r15.w != 0) {
                    if (4 == 0) r18.x = 0; else if (4+24 < 32) {                     r18.x = (uint)r19.x << (32-(4 + 24)); r18.x = (uint)r18.x >> (32-4);                    } else r18.x = (uint)r19.x >> 24;
                    if (12 == 0) r18.y = 0; else if (12+12 < 32) {                     r18.y = (uint)r19.x << (32-(12 + 12)); r18.y = (uint)r18.y >> (32-12);                    } else r18.y = (uint)r19.x >> 12;
                    if (10 == 0) r18.z = 0; else if (10+10 < 32) {                     r18.z = (uint)r19.w << (32-(10 + 10)); r18.z = (uint)r18.z >> (32-10);                    } else r18.z = (uint)r19.w >> 10;
                    r15.w = 1 << (int)r18.x;
                    r16.w = (uint)r19.x >> 28;
                    r16.w = 1 << (int)r16.w;
                    r17.w = (int)r19.x & 4095;
                    r19.xz = (uint2)r15.ww;
                    r19.y = (uint)r16.w;
                    r18.xw = r20.xy * r19.xy + float2(0.5,0.5);
                    r20.xy = float2(-0.5,-0.5) + r19.zy;
                    r18.xw = min(r20.xy, r18.xw);
                    r20.x = (uint)r17.w;
                    r20.yz = (uint2)r18.yz;
                    r18.xy = r20.xy + r18.xw;
                    r20.xy = invMaskTexSizes.zw * r18.xy;
                    r18.xyz = invMaskTexSizes.zwz * r24.xyz;
                    r18.xyz = r18.xyz * r19.xyz;
                    r24.xyz = invMaskTexSizes.zwz * r25.xyz;
                    r19.xyz = r24.xyz * r19.xyz;
                    r18.xyz = materialTexBC7linear.SampleGrad(samplerLinearClamp_s, r20.xyz, r18.xyz, r19.xyz).xyz;
                  } else {
                    r18.xyz = float3(0.5,0.5,1);
                  }
                  r18.xy = r18.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
                  r15.w = dot(r18.xy, r18.xy);
                  r15.w = 1 + -r15.w;
                  r15.w = max(0, r15.w);
                  r15.w = sqrt(r15.w);
                  r16.w = r18.z * r18.z;
                  r16.w = 0.333333343 * r16.w;
                  r16.w = min(1, r16.w);
                  r17.w = dot(r23.xyz, r23.xyz);
                  r17.w = rsqrt(r17.w);
                  r19.xyz = r23.xyz * r17.www;
                  r17.w = dot(-r22.xyz, -r22.xyz);
                  r17.w = rsqrt(r17.w);
                  r20.xyz = -r22.xyz * r17.www;
                  r21.xyz = r21.xyz * r2.www;
                  r19.xyz = r19.xyz * r2.www;
                  r20.xyz = r20.xyz * r2.www;
                  r17.w = -17 * r12.w;
                  r17.w = exp2(r17.w);
                  r16.w = r17.w + r16.w;
                  r16.w = log2(r16.w);
                  r16.w = -0.0588235296 * r16.w;
                  r12.w = max(0, r16.w);
                  r18.yzw = r20.xyz * r18.yyy;
                  r18.xyz = r19.xyz * r18.xxx + r18.yzw;
                  r18.xyz = r21.xyz * r15.www + r18.xyz;
                  r15.w = dot(r18.xyz, r18.xyz);
                  r15.w = rsqrt(r15.w);
                  r18.xyz = r18.xyz * r15.www;
                  r15.w = 1 + -r13.w;
                  r15.x = r14.x;
                  r19.xyz = r15.xyz * r15.www;
                  r15.xyz = r18.xyz * r13.www + r19.xyz;
                  r14.x = r15.x;
                }
                r15.x = 1 + -r13.w;
                r18.xyz = r15.xxx * r10.xyz;
                r10.xyz = r17.xyz * r13.www + r18.xyz;
                r16.z = r14.y;
                r17.xyz = r16.xyz * r15.xxx;
                r16.xyz = r26.xyz * r13.www + r17.xyz;
                r15.w = r15.x * r14.w;
                r14.z = r14.z * r15.x + r13.w;
                r14.w = r12.w * r13.w + r15.w;
                r14.y = r16.z;
              }
            }
          }
        }
      }
      r11.xyzw = r14.xwyz;
      r6.xzw = r10.xyz;
      r12.yz = r15.yz;
      r13.xy = r16.xy;
      r5.w = (int)r5.w + 32;
    }
    r12.x = r11.x;
    r13.z = r11.z;
    r11.xy = r11.wy;
  } else {
    r6.xzw = float3(0,0,0);
    r12.xyz = float3(0,0,0);
    r13.xyz = float3(0,0,0);
    r11.xy = float2(0,0);
  }
  if (r6.y != 0) {
    r7.xyz = eyeOffset.xyz + v6.xyz;
    r3.w = numDynamicDecals + numStaticDecals;
    r4.w = 0.0078125 * r1.z;
    r4.w = min(15, r4.w);
    r4.w = (uint)r4.w;
    r8.xy = (uint2)r3.xy >> int2(6,6);
    r8.z = (uint)r4.w << 4;
    r4.w = numStaticDecals & -32;
    r5.w = (int)-r4.w + numStaticDecals;
    r6.y = (int)r3.w & -32;
    r8.w = (int)r3.w + (int)-r6.y;
    r9.xy = float2(0,0);
    r10.w = 0;
    r7.w = 1;
    r14.xyz = r6.xzw;
    r15.xyz = r12.xyz;
    r16.xyz = r13.xyz;
    r17.xy = r11.xy;
    r9.w = r4.w;
    while (true) {
      r11.z = cmp((uint)r9.w >= (uint)r3.w);
      if (r11.z != 0) break;
      r9.z = (uint)r9.w >> 5;
      r10.xyz = (int3)r8.xyz + (int3)r9.xyz;
      r9.z = visibleDecals.Load(r10.xyzw).x;
      r10.x = cmp((int)r4.w == (int)r9.w);
      bitmask.y = ((~(-1 << r5.w)) << 0) & 0xffffffff;  r10.y = (((uint)0 << 0) & bitmask.y) | ((uint)r9.z & ~bitmask.y);
      r9.z = r10.x ? r10.y : r9.z;
      r10.x = cmp((int)r6.y == (int)r9.w);
      if (r8.w == 0) r10.y = 0; else if (r8.w+0 < 32) {       r10.y = (uint)r9.z << (32-(r8.w + 0)); r10.y = (uint)r10.y >> (32-r8.w);      } else r10.y = (uint)r9.z >> 0;
      r9.z = r10.x ? r10.y : r9.z;
      r10.x = (int)r1.w + (int)r9.w;
      r18.xyz = r14.xyz;
      r19.xyz = r15.xyz;
      r20.xyz = r16.xyz;
      r10.yz = r17.xy;
      r11.z = r9.z;
      while (true) {
        if (r11.z == 0) break;
        r11.w = firstbitlow((uint)r11.z);
        r12.w = 1 << (int)r11.w;
        r13.w = (int)r11.z & (int)r12.w;
        if (r13.w != 0) {
          r11.z = (int)r11.z ^ (int)r12.w;
          r12.w = (int)r10.x + (int)r11.w;
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
            r11.w = (int)r9.w + (int)r11.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r21.xyz, r11.w, l(0), t36.xyzx
          r21.x = samp0[]..swiz;
          r21.y = samp0[]..swiz;
          r21.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r22.xyz, r11.w, l(16), t36.xyzx
          r22.x = samp0[]..swiz;
          r22.y = samp0[]..swiz;
          r22.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r23.xyz, r11.w, l(32), t36.xyzx
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
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r26.xyw, r11.w, l(48), t36.xyxz
            r26.x = samp0[]..swiz;
            r26.y = samp0[]..swiz;
            r26.w = samp0[]..swiz;
              r24.w = r26.x;
              r24.x = dot(r7.xyzw, r24.xyzw);
              r27.x = r21.y;
              r27.y = r22.y;
              r27.z = r23.y;
              r27.w = r26.y;
              r24.y = dot(r7.xyzw, r27.xyzw);
              r26.x = r21.z;
              r26.y = r22.z;
              r26.z = r23.z;
              r24.z = dot(r7.xyzw, r26.xyzw);
              r21.xyz = cmp(abs(r24.xyz) < float3(1,1,1));
              r12.w = r21.y ? r21.x : 0;
              r12.w = r21.z ? r12.w : 0;
              if (r12.w != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r21.xyzw, r11.w, l(64), t36.xyzw
              r21.x = samp0[]..swiz;
              r21.y = samp0[]..swiz;
              r21.z = samp0[]..swiz;
              r21.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r22.xyzw, r11.w, l(80), t36.xyzw
              r22.x = samp0[]..swiz;
              r22.y = samp0[]..swiz;
              r22.z = samp0[]..swiz;
              r22.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r23.xyzw, r11.w, l(96), t36.xyzw
              r23.x = samp0[]..swiz;
              r23.y = samp0[]..swiz;
              r23.z = samp0[]..swiz;
              r23.w = samp0[]..swiz;
                r28.x = dot(r4.xyz, r27.xyz);
                r28.y = dot(r4.xyz, r26.xyz);
                r29.x = dot(r5.xyz, r27.xyz);
                r29.y = dot(r5.xyz, r26.xyz);
                r17.zw = r24.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                r24.xyz = float3(0.5,-0.5,0.5) * r28.xyx;
                r28.xyz = float3(0.5,-0.5,0.5) * r29.xyx;
                r29.xy = (int2)r22.yz & int2(65535,65535);
                if (r29.x != 0) {
                  if (4 == 0) r12.w = 0; else if (4+24 < 32) {                   r12.w = (uint)r22.w << (32-(4 + 24)); r12.w = (uint)r12.w >> (32-4);                  } else r12.w = (uint)r22.w >> 24;
                  r12.w = 1 << (int)r12.w;
                  r13.w = (uint)r22.w >> 28;
                  r13.w = 1 << (int)r13.w;
                  r14.w = cmp((int)r29.x == 4);
                  if (r14.w != 0) {
                    r14.w = (int)r22.w & 4095;
                    if (12 == 0) r15.w = 0; else if (12+12 < 32) {                     r15.w = (uint)r22.w << (32-(12 + 12)); r15.w = (uint)r15.w >> (32-12);                    } else r15.w = (uint)r22.w >> 12;
                    r16.w = (int)r23.w & 1023;
                    r30.xz = (uint2)r12.ww;
                    r30.y = (uint)r13.w;
                    r29.zw = r17.zw * r30.zy + float2(0.5,0.5);
                    r31.xy = float2(-0.5,-0.5) + r30.zy;
                    r29.zw = min(r31.xy, r29.zw);
                    r31.x = (uint)r14.w;
                    r31.y = (uint)r15.w;
                    r29.zw = r31.xy + r29.zw;
                    r31.xy = invBcTexSizes.xy * r29.zw;
                    r31.z = (uint)r16.w;
                    r32.xyz = invBcTexSizes.xyx * r24.zyz;
                    r32.xyz = r32.xyz * r30.xyz;
                    r33.xyz = invBcTexSizes.xyx * r28.zyz;
                    r30.xyz = r33.xyz * r30.xyz;
                    r30.xyzw = materialTexBC7.SampleGrad(samplerLinearClamp_s, r31.xyz, r32.xyzx, r30.xyzx).xyzw;
                  } else {
                    r14.w = cmp((int)r29.x == 1);
                    if (r14.w != 0) {
                      r14.w = (int)r22.w & 4095;
                      if (12 == 0) r15.w = 0; else if (12+12 < 32) {                       r15.w = (uint)r22.w << (32-(12 + 12)); r15.w = (uint)r15.w >> (32-12);                      } else r15.w = (uint)r22.w >> 12;
                      r16.w = (int)r23.w & 1023;
                      r31.xz = (uint2)r12.ww;
                      r31.y = (uint)r13.w;
                      r29.xz = r17.zw * r31.zy + float2(0.5,0.5);
                      r32.xy = float2(-0.5,-0.5) + r31.zy;
                      r29.xz = min(r32.xy, r29.xz);
                      r32.x = (uint)r14.w;
                      r32.y = (uint)r15.w;
                      r29.xz = r32.xy + r29.xz;
                      r32.xy = invBcTexSizes.zw * r29.xz;
                      r32.z = (uint)r16.w;
                      r29.xzw = invBcTexSizes.zwz * r24.zyz;
                      r29.xzw = r29.xzw * r31.xyz;
                      r33.xyz = invBcTexSizes.zwz * r28.zyz;
                      r31.xyz = r33.xyz * r31.xyz;
                      r30.xyzw = materialTexBC3.SampleGrad(samplerLinearClamp_s, r32.xyz, r29.xzwx, r31.xyzx).xyzw;
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
                r13.w = cmp(r22.x != 1.000000);
                r14.w = r12.w + r21.w;
                r14.w = saturate(r14.w * r22.x + -r22.x);
                r12.w = r13.w ? r14.w : r12.w;
                if (r29.y != 0) {
                  if (4 == 0) r13.w = 0; else if (4+24 < 32) {                   r13.w = (uint)r23.y << (32-(4 + 24)); r13.w = (uint)r13.w >> (32-4);                  } else r13.w = (uint)r23.y >> 24;
                  r13.w = 1 << (int)r13.w;
                  r14.w = (uint)r23.y >> 28;
                  r14.w = 1 << (int)r14.w;
                  r15.w = cmp((int)r29.y == 2);
                  if (r15.w != 0) {
                    r15.w = (int)r23.y & 4095;
                    if (12 == 0) r22.x = 0; else if (12+12 < 32) {                     r22.x = (uint)r23.y << (32-(12 + 12)); r22.x = (uint)r22.x >> (32-12);                    } else r22.x = (uint)r23.y >> 12;
                    if (10 == 0) r22.w = 0; else if (10+20 < 32) {                     r22.w = (uint)r23.w << (32-(10 + 20)); r22.w = (uint)r22.w >> (32-10);                    } else r22.w = (uint)r23.w >> 20;
                    r30.xz = (uint2)r13.ww;
                    r30.y = (uint)r14.w;
                    r29.xz = r17.zw * r30.zy + float2(0.5,0.5);
                    r31.xy = float2(-0.5,-0.5) + r30.zy;
                    r29.xz = min(r31.xy, r29.xz);
                    r31.x = (uint)r15.w;
                    r31.yz = (uint2)r22.xw;
                    r29.xz = r31.xy + r29.xz;
                    r31.xy = invMaskTexSizes.xy * r29.xz;
                    r29.xzw = invMaskTexSizes.xyx * r24.zyz;
                    r29.xzw = r29.xzw * r30.xyz;
                    r32.xyz = invMaskTexSizes.xyx * r28.zyz;
                    r30.xyz = r32.xyz * r30.xyz;
                    r15.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r31.xyz, r29.x, r30.x).x;
                  } else {
                    r16.w = cmp((int)r29.y == 4);
                    if (r16.w != 0) {
                      r16.w = (int)r23.y & 4095;
                      if (12 == 0) r22.x = 0; else if (12+12 < 32) {                       r22.x = (uint)r23.y << (32-(12 + 12)); r22.x = (uint)r22.x >> (32-12);                      } else r22.x = (uint)r23.y >> 12;
                      if (10 == 0) r22.w = 0; else if (10+20 < 32) {                       r22.w = (uint)r23.w << (32-(10 + 20)); r22.w = (uint)r22.w >> (32-10);                      } else r22.w = (uint)r23.w >> 20;
                      r29.xz = (uint2)r13.ww;
                      r29.y = (uint)r14.w;
                      r30.xy = r17.zw * r29.zy + float2(0.5,0.5);
                      r30.zw = float2(-0.5,-0.5) + r29.zy;
                      r30.xy = min(r30.xy, r30.zw);
                      r31.x = (uint)r16.w;
                      r31.y = (uint)r22.x;
                      r30.xy = r31.xy + r30.xy;
                      r30.xy = invBcTexSizes.xy * r30.xy;
                      r30.z = (uint)r22.w;
                      r31.xyz = invBcTexSizes.xyx * r24.zyz;
                      r31.xyz = r31.xyz * r29.xyz;
                      r32.xyz = invBcTexSizes.xyx * r28.zyz;
                      r29.xyz = r32.xyz * r29.xyz;
                      r15.w = materialTexBC7.SampleGrad(samplerLinearClamp_s, r30.xyz, r31.x, r29.x).x;
                    } else {
                      r16.w = (int)r23.y & 4095;
                      if (12 == 0) r22.x = 0; else if (12+12 < 32) {                       r22.x = (uint)r23.y << (32-(12 + 12)); r22.x = (uint)r22.x >> (32-12);                      } else r22.x = (uint)r23.y >> 12;
                      if (10 == 0) r22.w = 0; else if (10+20 < 32) {                       r22.w = (uint)r23.w << (32-(10 + 20)); r22.w = (uint)r22.w >> (32-10);                      } else r22.w = (uint)r23.w >> 20;
                      r29.xz = (uint2)r13.ww;
                      r29.y = (uint)r14.w;
                      r30.xy = r17.zw * r29.zy + float2(0.5,0.5);
                      r30.zw = float2(-0.5,-0.5) + r29.zy;
                      r30.xy = min(r30.xy, r30.zw);
                      r31.x = (uint)r16.w;
                      r31.y = (uint)r22.x;
                      r30.xy = r31.xy + r30.xy;
                      r30.xy = invBcTexSizes.zw * r30.xy;
                      r30.z = (uint)r22.w;
                      r31.xyz = invBcTexSizes.zwz * r24.zyz;
                      r31.xyz = r31.xyz * r29.xyz;
                      r32.xyz = invBcTexSizes.zwz * r28.zyz;
                      r29.xyz = r32.xyz * r29.xyz;
                      r15.w = materialTexBC3.SampleGrad(samplerLinearClamp_s, r30.xyz, r31.x, r29.x).x;
                    }
                  }
                  r29.xyz = r15.www * float3(0.959999979,0.959999979,0.959999979) + float3(0.0399999991,0.0399999991,0.0399999991);
                  r13.w = saturate(1 + -r15.w);
                  r21.xyz = r21.xyz * r13.www;
                } else {
                  r29.xyz = float3(0.0399999991,0.0399999991,0.0399999991);
                }
                r22.xy = (uint2)r22.zy >> int2(16,16);
                if (r22.x != 0) {
                  r13.w = cmp((int)r22.x == 2);
                  if (r13.w != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r11.w, r11.w, l(112), t36.xxxx
                  r11.w = samp0[]..swiz;
                    if (4 == 0) r22.z = 0; else if (4+24 < 32) {                     r22.z = (uint)r23.z << (32-(4 + 24)); r22.z = (uint)r22.z >> (32-4);                    } else r22.z = (uint)r23.z >> 24;
                    if (12 == 0) r22.w = 0; else if (12+12 < 32) {                     r22.w = (uint)r23.z << (32-(12 + 12)); r22.w = (uint)r22.w >> (32-12);                    } else r22.w = (uint)r23.z >> 12;
                    r13.w = 1 << (int)r22.z;
                    r14.w = (uint)r23.z >> 28;
                    r14.w = 1 << (int)r14.w;
                    r15.w = (int)r23.z & 4095;
                    r11.w = (int)r11.w & 1023;
                    r30.xz = (uint2)r13.ww;
                    r30.y = (uint)r14.w;
                    r23.yz = r17.zw * r30.zy + float2(0.5,0.5);
                    r31.xy = float2(-0.5,-0.5) + r30.zy;
                    r23.yz = min(r31.xy, r23.yz);
                    r31.x = (uint)r15.w;
                    r31.y = (uint)r22.w;
                    r22.zw = r31.xy + r23.yz;
                    r31.xy = invMaskTexSizes.xy * r22.zw;
                    r31.z = (uint)r11.w;
                    r32.xyz = invMaskTexSizes.xyx * r24.zyz;
                    r32.xyz = r32.xyz * r30.xyz;
                    r33.xyz = invMaskTexSizes.xyx * r28.zyz;
                    r30.xyz = r33.xyz * r30.xyz;
                    r11.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r31.xyz, r32.x, r30.x).x;
                  } else {
                    r13.w = cmp((int)r22.x == 6);
                    r11.w = r13.w ? 0 : 1;
                  }
                } else {
                  r11.w = 1;
                }
                r11.w = saturate(0.764705896 * r11.w);
                if (r22.y != 0) {
                  r13.w = cmp((int)r22.y == 3);
                  if (r13.w != 0) {
                    if (4 == 0) r22.x = 0; else if (4+24 < 32) {                     r22.x = (uint)r23.x << (32-(4 + 24)); r22.x = (uint)r22.x >> (32-4);                    } else r22.x = (uint)r23.x >> 24;
                    if (12 == 0) r22.y = 0; else if (12+12 < 32) {                     r22.y = (uint)r23.x << (32-(12 + 12)); r22.y = (uint)r22.y >> (32-12);                    } else r22.y = (uint)r23.x >> 12;
                    if (10 == 0) r22.z = 0; else if (10+10 < 32) {                     r22.z = (uint)r23.w << (32-(10 + 10)); r22.z = (uint)r22.z >> (32-10);                    } else r22.z = (uint)r23.w >> 10;
                    r13.w = 1 << (int)r22.x;
                    r14.w = (uint)r23.x >> 28;
                    r14.w = 1 << (int)r14.w;
                    r15.w = (int)r23.x & 4095;
                    r23.xz = (uint2)r13.ww;
                    r23.y = (uint)r14.w;
                    r17.zw = r17.zw * r23.xy + float2(0.5,0.5);
                    r22.xw = float2(-0.5,-0.5) + r23.zy;
                    r17.zw = min(r22.xw, r17.zw);
                    r30.x = (uint)r15.w;
                    r30.yz = (uint2)r22.yz;
                    r17.zw = r30.xy + r17.zw;
                    r30.xy = invMaskTexSizes.zw * r17.zw;
                    r22.xyz = invMaskTexSizes.zwz * r24.xyz;
                    r22.xyz = r22.xyz * r23.xyz;
                    r24.xyz = invMaskTexSizes.zwz * r28.xyz;
                    r23.xyz = r24.xyz * r23.xyz;
                    r22.xyz = materialTexBC7linear.SampleGrad(samplerLinearClamp_s, r30.xyz, r22.xyz, r23.xyz).xyz;
                  } else {
                    r22.xyz = float3(0.5,0.5,1);
                  }
                  r17.zw = r22.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
                  r13.w = dot(r17.zw, r17.zw);
                  r13.w = 1 + -r13.w;
                  r13.w = max(0, r13.w);
                  r13.w = sqrt(r13.w);
                  r14.w = r22.z * r22.z;
                  r14.w = 0.333333343 * r14.w;
                  r14.w = min(1, r14.w);
                  r15.w = dot(r27.xyz, r27.xyz);
                  r15.w = rsqrt(r15.w);
                  r22.xyz = r27.xyz * r15.www;
                  r15.w = dot(-r26.xyz, -r26.xyz);
                  r15.w = rsqrt(r15.w);
                  r23.xyz = -r26.xyz * r15.www;
                  r24.xyz = r25.xyz * r2.www;
                  r22.xyz = r22.xyz * r2.www;
                  r23.xyz = r23.xyz * r2.www;
                  r15.w = -17 * r11.w;
                  r15.w = exp2(r15.w);
                  r14.w = r15.w + r14.w;
                  r14.w = log2(r14.w);
                  r14.w = -0.0588235296 * r14.w;
                  r11.w = max(0, r14.w);
                  r23.xyz = r23.xyz * r17.www;
                  r22.xyz = r22.xyz * r17.zzz + r23.xyz;
                  r22.xyz = r24.xyz * r13.www + r22.xyz;
                  r13.w = dot(r22.xyz, r22.xyz);
                  r13.w = rsqrt(r13.w);
                  r22.xyz = r22.xyz * r13.www;
                  r13.w = 1 + -r12.w;
                  r23.xyz = r19.xyz * r13.www;
                  r19.xyz = r22.xyz * r12.www + r23.xyz;
                }
                r13.w = 1 + -r12.w;
                r22.xyz = r18.xyz * r13.www;
                r18.xyz = r21.xyz * r12.www + r22.xyz;
                r21.xyz = r20.xyz * r13.www;
                r20.xyz = r29.xyz * r12.www + r21.xyz;
                r14.w = r13.w * r10.z;
                r10.y = r10.y * r13.w + r12.w;
                r10.z = r11.w * r12.w + r14.w;
              }
            }
          }
        }
      }
      r14.xyz = r18.xyz;
      r15.xyz = r19.xyz;
      r16.xyz = r20.xyz;
      r17.xy = r10.yz;
      r9.w = (int)r9.w + 32;
    }
    r6.xzw = r14.xyz;
    r12.xyz = r15.xyz;
    r13.xyz = r16.xyz;
    r11.xy = r17.xy;
  }
  r11.x = saturate(r11.x);
  r1.w = 1 + -r11.x;
  r0.xyz = r0.xyz * r1.www + r6.xzw;
  r0.w = r0.w * r1.w + r11.x;
  r2.xyz = r2.xyz * r1.www + r12.xyz;
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = rsqrt(r2.w);
  r2.xyz = r2.xyz * r2.www;
  r4.y = r1.x * r1.w + r11.y;
  r5.xyz = r1.www * float3(0.0799999982,0.0799999982,0.0799999982) + r13.xyz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r1.x, r3.z, l(0), t0.xxxx
r1.x = samp0[]..swiz;
  r0.w = saturate(r1.x + r0.w);
  r1.x = dot(-v6.xyz, -v6.xyz);
  r1.x = rsqrt(r1.x);
  r6.xyz = -v6.xyz * r1.xxx;
  r1.w = cmp(isDepthHack != 0);
  r3.zw = (uint2)r3.yx;
  r4.z = dot(r3.wz, float2(0.0671105608,0.00583714992));
  r4.z = frac(r4.z);
  r4.z = 52.9829178 * r4.z;
  r4.z = frac(r4.z);
  r4.z = r4.z * 6.28318548 + gameTick.w;
  sincos(r4.z, r7.x, r8.x);
  r3.z = dot(r3.zw, float2(0.0671105608,0.00583714992));
  r3.z = frac(r3.z);
  r3.z = 52.9829178 * r3.z;
  r3.z = frac(r3.z);
  r3.z = r3.z * 6.28318548 + gameTick.w;
  sincos(r3.z, r9.x, r10.x);
  r4.x = saturate(dot(r2.xyz, r6.xyz));
  r3.z = dot(-r6.xyz, r2.xyz);
  r3.z = r3.z + r3.z;
  r11.xyz = r2.xyz * -r3.zzz + -r6.xyz;
  r3.z = 17 * r4.y;
  r3.z = exp2(r3.z);
  r3.z = 2 + r3.z;
  r3.z = 2 / r3.z;
  r3.w = sqrt(r3.z);
  r4.zw = float2(1,1) + -r4.yx;
  r5.w = 5 * r4.z;
  r6.w = r4.z * 5 + -2.5;
  r6.w = saturate(0.400000006 * r6.w);
  r6.w = 100 * r6.w;
  r7.zw = -r4.zz * float2(10,5) + float2(6.85740995,7.08500004);
  r7.z = exp2(r7.z);
  r7.z = r7.z * r4.x;
  r8.w = r5.w * r4.z;
  r7.w = -r8.w * 2.0159049 + r7.w;
  r7.w = exp2(r7.w);
  r7.w = r7.w * r4.x;
  r7.zw = float2(9.1368103,9.70808983) * r7.zw;
  r7.z = max(r7.z, r7.w);
  r7.z = max(1.26815999, r7.z);
  r1.z = 0.0078125 * r1.z;
  r1.z = min(15, r1.z);
  r1.z = (uint)r1.z;
  r12.xy = (uint2)r3.xy >> int2(6,6);
  r12.z = (uint)r1.z << 4;
  r13.xy = float2(0,0);
  r14.w = 0;
  r15.yz = float2(0,1);
  r16.xy = float2(0,0);
  r17.xy = float2(0,0);
  r18.xy = float2(0,0);
  r3.x = 1;
  r19.xyzw = float4(0,0,0,0);
  r20.yzw = float3(0,0,0);
  r1.z = 0;
  r7.w = 0;
  while (true) {
    r8.w = cmp((uint)r7.w >= numRefProbes);
    if (r8.w != 0) break;
    r13.z = (uint)r7.w >> 5;
    r14.xyz = (int3)r12.xyz + (int3)r13.xyz;
    r8.w = visibleProbes.Load(r14.xyzw).x;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r21.xyzw, r7.w, l(0), t15.wxyz
  r21.x = samp0[]..swiz;
  r21.y = samp0[]..swiz;
  r21.z = samp0[]..swiz;
  r21.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r7.w, l(16), t15.xyzw
  r22.x = samp0[]..swiz;
  r22.y = samp0[]..swiz;
  r22.z = samp0[]..swiz;
  r22.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r7.w, l(32), t15.yxwz
  r23.x = samp0[]..swiz;
  r23.y = samp0[]..swiz;
  r23.z = samp0[]..swiz;
  r23.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r7.w, l(48), t15.xyzw
  r24.x = samp0[]..swiz;
  r24.y = samp0[]..swiz;
  r24.z = samp0[]..swiz;
  r24.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r7.w, l(64), t15.zwxy
  r25.x = samp0[]..swiz;
  r25.y = samp0[]..swiz;
  r25.z = samp0[]..swiz;
  r25.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r7.w, l(80), t15.xyzw
  r26.x = samp0[]..swiz;
  r26.y = samp0[]..swiz;
  r26.z = samp0[]..swiz;
  r26.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r9.yz, r7.w, l(96), t15.xxyx
  r9.y = samp0[]..swiz;
  r9.z = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r7.w, l(116), t15.xyzw
  r27.x = samp0[]..swiz;
  r27.y = samp0[]..swiz;
  r27.z = samp0[]..swiz;
  r27.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r7.w, l(132), t15.zwxy
  r28.x = samp0[]..swiz;
  r28.y = samp0[]..swiz;
  r28.z = samp0[]..swiz;
  r28.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r7.w, l(148), t15.zwxy
  r29.x = samp0[]..swiz;
  r29.y = samp0[]..swiz;
  r29.z = samp0[]..swiz;
  r29.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r7.w, l(164), t15.zwxy
  r30.x = samp0[]..swiz;
  r30.y = samp0[]..swiz;
  r30.z = samp0[]..swiz;
  r30.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r7.w, l(180), t15.zwxy
  r31.x = samp0[]..swiz;
  r31.y = samp0[]..swiz;
  r31.z = samp0[]..swiz;
  r31.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r7.w, l(196), t15.xyzw
  r32.x = samp0[]..swiz;
  r32.y = samp0[]..swiz;
  r32.z = samp0[]..swiz;
  r32.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xy, r7.w, l(212), t15.xyxx
  r33.x = samp0[]..swiz;
  r33.y = samp0[]..swiz;
    r10.yzw = v6.xyz + -r21.yzw;
    r9.w = dot(r10.yzw, r10.yzw);
    r9.w = sqrt(r9.w);
    r9.w = cmp(probeDebugRadius >= r9.w);
    r12.w = (int)r27.y & 0x0000ffff;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r12.w, l(0), t16.xyzw
  r34.x = samp0[]..swiz;
  r34.y = samp0[]..swiz;
  r34.z = samp0[]..swiz;
  r34.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r12.w, l(16), t16.xyzw
  r35.x = samp0[]..swiz;
  r35.y = samp0[]..swiz;
  r35.z = samp0[]..swiz;
  r35.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r12.w, l(32), t16.xyzw
  r36.x = samp0[]..swiz;
  r36.y = samp0[]..swiz;
  r36.z = samp0[]..swiz;
  r36.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r12.w, l(48), t16.xyzw
  r37.x = samp0[]..swiz;
  r37.y = samp0[]..swiz;
  r37.z = samp0[]..swiz;
  r37.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r38.xyzw, r12.w, l(64), t16.xyzw
  r38.x = samp0[]..swiz;
  r38.y = samp0[]..swiz;
  r38.z = samp0[]..swiz;
  r38.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r39.xyzw, r12.w, l(80), t16.xyzw
  r39.x = samp0[]..swiz;
  r39.y = samp0[]..swiz;
  r39.z = samp0[]..swiz;
  r39.w = samp0[]..swiz;
    r13.z = dot(r34.xyz, r10.yzw);
    r13.z = saturate(r13.z + r34.w);
    r13.w = dot(r35.xyz, r10.yzw);
    r13.w = saturate(r13.w + r35.w);
    r13.z = r13.z * r13.w;
    r13.w = dot(r36.xyz, r10.yzw);
    r13.w = saturate(r13.w + r36.w);
    r13.z = r13.z * r13.w;
    r13.w = dot(r37.xyz, r10.yzw);
    r13.w = saturate(r13.w + r37.w);
    r13.z = r13.z * r13.w;
    r13.w = dot(r38.xyz, r10.yzw);
    r13.w = saturate(r13.w + r38.w);
    r13.z = r13.z * r13.w;
    r13.w = dot(r39.xyz, r10.yzw);
    r13.w = saturate(r13.w + r39.w);
    r15.x = r13.z * r13.w;
    r13.z = (int)r9.y & 1;
    r13.zw = r13.zz ? r15.xy : r15.zx;
    r14.xy = r27.zw;
    r14.z = r28.z;
    r15.x = dot(r11.xyz, r14.xyz);
    r14.x = dot(r10.yzw, r14.xyz);
    r14.x = r14.x + -r28.w;
    r14.y = cmp(r14.x >= 0);
    r14.x = max(abs(r14.x), r6.w);
    r14.x = r14.y ? r14.x : -r14.x;
    r14.y = max(1.00000001e-07, -r15.x);
    r14.x = r14.x / r14.y;
    r14.x = min(131072, abs(r14.x));
    r28.z = r29.z;
    r14.y = dot(r11.xyz, r28.xyz);
    r14.z = dot(r10.yzw, r28.xyz);
    r14.z = r14.z + -r29.w;
    r15.x = cmp(r14.z >= 0);
    r14.z = max(abs(r14.z), r6.w);
    r14.z = r15.x ? r14.z : -r14.z;
    r14.y = max(1.00000001e-07, -r14.y);
    r14.y = r14.z / r14.y;
    r14.x = min(r14.x, abs(r14.y));
    r29.z = r30.z;
    r14.y = dot(r11.xyz, r29.xyz);
    r14.z = dot(r10.yzw, r29.xyz);
    r14.z = r14.z + -r30.w;
    r15.x = cmp(r14.z >= 0);
    r14.z = max(abs(r14.z), r6.w);
    r14.z = r15.x ? r14.z : -r14.z;
    r14.y = max(1.00000001e-07, -r14.y);
    r14.y = r14.z / r14.y;
    r14.x = min(r14.x, abs(r14.y));
    r30.z = r31.z;
    r14.y = dot(r11.xyz, r30.xyz);
    r14.z = dot(r10.yzw, r30.xyz);
    r14.z = r14.z + -r31.w;
    r15.x = cmp(r14.z >= 0);
    r14.z = max(abs(r14.z), r6.w);
    r14.z = r15.x ? r14.z : -r14.z;
    r14.y = max(1.00000001e-07, -r14.y);
    r14.y = r14.z / r14.y;
    r14.x = min(r14.x, abs(r14.y));
    r31.z = r32.x;
    r14.y = dot(r11.xyz, r31.xyz);
    r14.z = dot(r10.yzw, r31.xyz);
    r14.z = r14.z + -r32.y;
    r15.x = cmp(r14.z >= 0);
    r14.z = max(abs(r14.z), r6.w);
    r14.z = r15.x ? r14.z : -r14.z;
    r14.y = max(1.00000001e-07, -r14.y);
    r14.y = r14.z / r14.y;
    r14.x = min(r14.x, abs(r14.y));
    r33.zw = r32.zw;
    r14.y = dot(r11.zxy, r33.xzw);
    r14.z = dot(r10.wyz, r33.xzw);
    r14.z = r14.z + -r33.y;
    r15.x = cmp(r14.z >= 0);
    r14.z = max(abs(r14.z), r6.w);
    r14.z = r15.x ? r14.z : -r14.z;
    r14.y = max(1.00000001e-07, -r14.y);
    r14.y = r14.z / r14.y;
    r14.x = min(r14.x, abs(r14.y));
    r28.x = r24.w;
    r28.yz = r25.zw;
    r28.xyz = r28.xyz + r10.yzw;
    r28.xyz = r11.xyz * r14.xxx + r28.xyz;
    r14.y = dot(r28.xyz, r28.xyz);
    r14.y = sqrt(r14.y);
    r14.x = r14.x / r14.y;
    r14.x = r14.x + r14.x;
    r14.x = sqrt(r14.x);
    r14.x = r4.z * 5 + r14.x;
    r14.x = -0.844799995 + r14.x;
    r21.y = r22.z;
    r21.z = r23.x;
    r29.x = dot(r28.xyz, r21.xyz);
    r30.xy = r22.xw;
    r30.z = r23.w;
    r29.y = dot(r28.xyz, r30.xyz);
    r23.x = r22.y;
    r29.z = dot(r28.xyz, r23.xyz);
    if (6 == 0) r14.y = 0; else if (6+25 < 32) {     r14.y = (uint)r27.y << (32-(6 + 25)); r14.y = (uint)r14.y >> (32-6);    } else r14.y = (uint)r27.y >> 25;
    if (9 == 0) r14.z = 0; else if (9+16 < 32) {     r14.z = (uint)r27.y << (32-(9 + 16)); r14.z = (uint)r14.z >> (32-9);    } else r14.z = (uint)r27.y >> 16;
    r29.w = (uint)r14.z;
    r22.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r29.xyzw, r14.x).xyz;
    r27.yzw = (int3)r22.xyz & int3(-2147483648,-2147483648,-2147483648);
    r27.yzw = cmp((int3)r27.yzw == int3(2139095040,2139095040,2139095040));
    r14.x = (int)r27.z | (int)r27.y;
    r14.x = (int)r27.w | (int)r14.x;
    r22.xyz = r14.xxx ? float3(1,1,0) : r22.xyz;
    r28.x = dot(r10.yzw, r21.xyz);
    r28.y = dot(r10.yzw, r30.xyz);
    r28.z = dot(r10.yzw, r23.xyz);
    r24.xyz = saturate(r28.xyz * r24.xyz + float3(0.5,0.5,0.5));
    r25.z = r26.x;
    r24.xyz = r24.xyz * r25.xyz + r26.yzw;
    r29.x = dot(r2.xyz, r21.xyz);
    r29.y = dot(r2.xyz, r30.xyz);
    r29.z = dot(r2.xyz, r23.xyz);
    r21.xyz = cmp(float3(0,0,0) < r29.xyz);
    r16.z = r21.x ? 0 : 0.5;
    r23.xyz = r24.xyz + r16.xyz;
    r23.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
    r17.z = r21.y ? 0 : 0.5;
    r21.xyw = r24.xyz + r17.xyz;
    r21.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r21.xyw, 0).xyz;
    r18.z = r21.z ? 0 : 0.5;
    r24.xyz = r24.xyz + r18.xyz;
    r24.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r24.xyz, 0).xyz;
    r25.xyz = r29.xyz * r29.xyz;
    r26.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r29.xyzw, 6).xyz;
    r27.yzw = (int3)r26.xyz & int3(-2147483648,-2147483648,-2147483648);
    r27.yzw = cmp((int3)r27.yzw == int3(2139095040,2139095040,2139095040));
    r14.x = (int)r27.z | (int)r27.y;
    r14.x = (int)r27.w | (int)r14.x;
    r26.xyz = r14.xxx ? float3(1,1,0) : r26.xyz;
    r28.xyzw = r19.xyzw;
    r27.yzw = r20.yzw;
    r14.x = r1.z;
    r14.z = r8.w;
    while (true) {
      if (r14.z == 0) break;
      r15.x = firstbitlow((uint)r14.z);
      r15.x = 1 << (int)r15.x;
      r15.w = (int)r14.z & (int)r15.x;
      if (r15.w != 0) {
        r15.x = ~(int)r15.x;
        r14.z = (int)r14.z & (int)r15.x;
        if (r9.w != 0) {
          r15.x = r9.y;
          r29.xy = r13.zw;
          r15.w = 1;
          while (true) {
            r16.z = cmp((int)r15.w >= (int)r14.y);
            if (r16.z != 0) break;
            r16.z = (int)r12.w + (int)r15.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r16.z, l(0), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r16.z, l(16), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r16.z, l(32), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r16.z, l(48), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r16.z, l(64), t16.xyzw
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r16.z, l(80), t16.xyzw
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
            r16.z = dot(r30.xyz, r10.yzw);
            r16.z = saturate(r16.z + r30.w);
            r16.z = r29.x * r16.z;
            r16.w = dot(r31.xyz, r10.yzw);
            r16.w = saturate(r16.w + r31.w);
            r16.z = r16.z * r16.w;
            r16.w = dot(r32.xyz, r10.yzw);
            r16.w = saturate(r16.w + r32.w);
            r16.z = r16.z * r16.w;
            r16.w = dot(r33.xyz, r10.yzw);
            r16.w = saturate(r16.w + r33.w);
            r16.z = r16.z * r16.w;
            r16.w = dot(r34.xyz, r10.yzw);
            r16.w = saturate(r16.w + r34.w);
            r16.z = r16.z * r16.w;
            r16.w = dot(r35.xyz, r10.yzw);
            r16.w = saturate(r16.w + r35.w);
            r29.x = r16.z * r16.w;
            r17.z = (uint)r15.x >> 2;
            if (1 == 0) r17.w = 0; else if (1+2 < 32) {             r17.w = (uint)r15.x << (32-(1 + 2)); r17.w = (uint)r17.w >> (32-1);            } else r17.w = (uint)r15.x >> 2;
            r18.z = (int)r17.z & 2;
            r18.w = max(r29.y, r29.x);
            r16.z = -r16.z * r16.w + 1;
            r16.z = r29.y * r16.z;
            r3.y = r18.z ? r16.z : r18.w;
            r29.xy = r17.ww ? r29.xy : r3.xy;
            r15.w = (int)r15.w + 1;
            r15.x = r17.z;
          }
          r29.y = saturate(r29.y);
          r3.y = r29.y * r9.z;
          r15.x = cmp(0 < r3.y);
          if (r15.x != 0) {
            r30.z = r29.y * r9.z + r27.w;
            r3.y = r3.y * r27.x;
            r29.xzw = r25.xyz * r3.yyy;
            r31.xyz = r29.zzz * r21.xyw;
            r31.xyz = r23.xyz * r29.xxx + r31.xyz;
            r29.xzw = r24.xyz * r29.www + r31.xyz;
            r31.xyz = r29.xzw * r26.xyz;
            r15.x = dot(r31.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r31.xyz = r29.xzw * r26.xyz + r28.xyz;
            r15.w = r15.x * r7.z;
            r29.xzw = r22.xyz * r3.yyy;
            r3.y = dot(r29.xzw, float3(0.212599993,0.715200007,0.0722000003));
            r3.y = r7.z * r15.x + r3.y;
            r3.y = r15.w / r3.y;
            r32.x = r28.w;
            r32.yz = r27.yz;
            r30.xyw = r29.zwx * r3.yyy + r32.yzx;
            r31.w = r30.w;
          } else {
            r31.xyzw = r28.xyzw;
            r30.xyz = r27.yzw;
          }
          r14.x = -1;
          r28.xyzw = r31.xyzw;
          r27.yzw = r30.xyz;
          break;
        }
      }
    }
    if (r14.x != 0) {
      r19.xyzw = r28.xyzw;
      r20.yzw = r27.yzw;
      r1.z = -1;
      break;
    }
    r7.w = (int)r7.w + 32;
    r19.xyzw = r28.xyzw;
    r20.yzw = r27.yzw;
    r1.z = r14.x;
  }
  if (r1.z == 0) {
    r1.z = numRefProbes + -numOverrideProbes;
    r3.x = (int)r1.z & -32;
    r3.y = (int)r1.z + (int)-r3.x;
    r7.w = numRefProbes & -32;
    r8.w = (int)-r7.w + numRefProbes;
    r13.xy = float2(0,0);
    r14.w = 0;
    r15.yz = float2(0,1);
    r16.xy = float2(0,0);
    r17.x = 1;
    r18.xy = float2(0,0);
    r21.xy = float2(0,0);
    r22.xyzw = r19.xyzw;
    r23.yzw = r20.yzw;
    r9.y = r3.x;
    while (true) {
      r9.z = cmp((uint)r9.y >= numRefProbes);
      if (r9.z != 0) break;
      r13.z = (uint)r9.y >> 5;
      r14.xyz = (int3)r12.xyz + (int3)r13.xyz;
      r9.z = visibleProbes.Load(r14.xyzw).x;
      r9.w = cmp((int)r3.x == (int)r9.y);
      bitmask.y = ((~(-1 << r3.y)) << 0) & 0xffffffff;  r10.y = (((uint)0 << 0) & bitmask.y) | ((uint)r9.z & ~bitmask.y);
      r9.z = r9.w ? r10.y : r9.z;
      r9.w = cmp((int)r7.w == (int)r9.y);
      if (r8.w == 0) r10.y = 0; else if (r8.w+0 < 32) {       r10.y = (uint)r9.z << (32-(r8.w + 0)); r10.y = (uint)r10.y >> (32-r8.w);      } else r10.y = (uint)r9.z >> 0;
      r9.z = r9.w ? r10.y : r9.z;
      r9.w = (int)r9.y + numLights;
      r24.xyzw = r22.xyzw;
      r25.xyz = r23.yzw;
      r10.y = r9.z;
      while (true) {
        if (r10.y == 0) break;
        r10.z = firstbitlow((uint)r10.y);
        r10.w = 1 << (int)r10.z;
        r12.w = (int)r10.w & (int)r10.y;
        if (r12.w != 0) {
          r10.y = (int)r10.w ^ (int)r10.y;
          r10.w = (int)r9.w + (int)r10.z;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r26.xyzw, r10.w, l(0), t11.xyzw
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
        r26.z = samp0[]..swiz;
        r26.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r14.xy, r10.w, l(16), t11.xyxx
        r14.x = samp0[]..swiz;
        r14.y = samp0[]..swiz;
          r26.xyz = -v6.xyz + r26.xyz;
          r14.z = r26.w;
          r14.xyz = cmp(abs(r26.xyz) < r14.zxy);
          r10.w = r14.y ? r14.x : 0;
          r10.w = r14.z ? r10.w : 0;
          if (r10.w != 0) {
            r10.z = (int)r9.y + (int)r10.z;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r10.z, l(0), t15.wxyz
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r13.zw, r10.z, l(96), t15.xxxy
          r13.z = samp0[]..swiz;
          r13.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r10.z, l(116), t15.zwxy
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
            r14.xyz = v6.xyz + -r26.yzw;
            r10.w = (int)r27.w & 0x0000ffff;
            if (6 == 0) r12.w = 0; else if (6+25 < 32) {             r12.w = (uint)r27.w << (32-(6 + 25)); r12.w = (uint)r12.w >> (32-6);            } else r12.w = (uint)r27.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r10.w, l(0), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r10.w, l(16), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r10.w, l(32), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r10.w, l(48), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r10.w, l(64), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r10.w, l(80), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
            r15.w = dot(r28.xyz, r14.xyz);
            r15.w = saturate(r15.w + r28.w);
            r16.w = dot(r29.xyz, r14.xyz);
            r16.w = saturate(r16.w + r29.w);
            r15.w = r16.w * r15.w;
            r16.w = dot(r30.xyz, r14.xyz);
            r16.w = saturate(r16.w + r30.w);
            r15.w = r16.w * r15.w;
            r16.w = dot(r31.xyz, r14.xyz);
            r16.w = saturate(r16.w + r31.w);
            r15.w = r16.w * r15.w;
            r16.w = dot(r32.xyz, r14.xyz);
            r16.w = saturate(r16.w + r32.w);
            r15.w = r16.w * r15.w;
            r16.w = dot(r33.xyz, r14.xyz);
            r16.w = saturate(r16.w + r33.w);
            r15.x = r16.w * r15.w;
            r15.w = (int)r13.z & 1;
            r15.xw = r15.ww ? r15.xy : r15.zx;
            r16.w = r13.z;
            r28.xy = r15.xw;
            r17.z = 1;
            while (true) {
              r17.w = cmp((int)r17.z >= (int)r12.w);
              if (r17.w != 0) break;
              r17.w = (int)r10.w + (int)r17.z;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r17.w, l(0), t16.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r17.w, l(16), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r17.w, l(32), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r17.w, l(48), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r17.w, l(64), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r17.w, l(80), t16.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
              r17.w = dot(r29.xyz, r14.xyz);
              r17.w = saturate(r17.w + r29.w);
              r17.w = r28.x * r17.w;
              r18.w = dot(r30.xyz, r14.xyz);
              r18.w = saturate(r18.w + r30.w);
              r17.w = r18.w * r17.w;
              r18.w = dot(r31.xyz, r14.xyz);
              r18.w = saturate(r18.w + r31.w);
              r17.w = r18.w * r17.w;
              r18.w = dot(r32.xyz, r14.xyz);
              r18.w = saturate(r18.w + r32.w);
              r17.w = r18.w * r17.w;
              r18.w = dot(r33.xyz, r14.xyz);
              r18.w = saturate(r18.w + r33.w);
              r17.w = r18.w * r17.w;
              r18.w = dot(r34.xyz, r14.xyz);
              r18.w = saturate(r18.w + r34.w);
              r28.x = r18.w * r17.w;
              r21.w = (uint)r16.w >> 2;
              if (1 == 0) r26.w = 0; else if (1+2 < 32) {               r26.w = (uint)r16.w << (32-(1 + 2)); r26.w = (uint)r26.w >> (32-1);              } else r26.w = (uint)r16.w >> 2;
              r28.z = (int)r21.w & 2;
              r28.w = max(r28.y, r28.x);
              r17.w = -r17.w * r18.w + 1;
              r17.w = r28.y * r17.w;
              r17.y = r28.z ? r17.w : r28.w;
              r28.xy = r26.ww ? r28.xy : r17.xy;
              r17.z = (int)r17.z + 1;
              r16.w = r21.w;
            }
            r28.y = saturate(r28.y);
            r10.w = r28.y * r13.w;
            r12.w = cmp(0 < r10.w);
            if (r12.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r10.z, l(16), t15.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r10.z, l(32), t15.yxwz
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r10.z, l(48), t15.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r10.z, l(64), t15.zwxy
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r10.z, l(80), t15.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r10.z, l(132), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r10.z, l(148), t15.zwxy
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r10.z, l(164), t15.zwxy
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r10.z, l(180), t15.zwxy
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r10.z, l(196), t15.xyzw
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xy, r10.z, l(212), t15.xyxx
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
              r25.z = r28.y * r13.w + r25.z;
              r10.z = r10.w * r27.z;
              r27.z = r34.z;
              r10.w = dot(r11.xyz, r27.xyz);
              r12.w = dot(r14.xyz, r27.xyz);
              r12.w = r12.w + -r34.w;
              r13.z = cmp(r12.w >= 0);
              r12.w = max(abs(r12.w), r6.w);
              r12.w = r13.z ? r12.w : -r12.w;
              r10.w = max(1.00000001e-07, -r10.w);
              r10.w = r12.w / r10.w;
              r10.w = min(131072, abs(r10.w));
              r34.z = r35.z;
              r12.w = dot(r11.xyz, r34.xyz);
              r13.z = dot(r14.xyz, r34.xyz);
              r13.z = r13.z + -r35.w;
              r13.w = cmp(r13.z >= 0);
              r13.z = max(abs(r13.z), r6.w);
              r13.z = r13.w ? r13.z : -r13.z;
              r12.w = max(1.00000001e-07, -r12.w);
              r12.w = r13.z / r12.w;
              r10.w = min(abs(r12.w), r10.w);
              r35.z = r36.z;
              r12.w = dot(r11.xyz, r35.xyz);
              r13.z = dot(r14.xyz, r35.xyz);
              r13.z = r13.z + -r36.w;
              r13.w = cmp(r13.z >= 0);
              r13.z = max(abs(r13.z), r6.w);
              r13.z = r13.w ? r13.z : -r13.z;
              r12.w = max(1.00000001e-07, -r12.w);
              r12.w = r13.z / r12.w;
              r10.w = min(abs(r12.w), r10.w);
              r36.z = r37.z;
              r12.w = dot(r11.xyz, r36.xyz);
              r13.z = dot(r14.xyz, r36.xyz);
              r13.z = r13.z + -r37.w;
              r13.w = cmp(r13.z >= 0);
              r13.z = max(abs(r13.z), r6.w);
              r13.z = r13.w ? r13.z : -r13.z;
              r12.w = max(1.00000001e-07, -r12.w);
              r12.w = r13.z / r12.w;
              r10.w = min(abs(r12.w), r10.w);
              r37.z = r38.x;
              r12.w = dot(r11.xyz, r37.xyz);
              r13.z = dot(r14.xyz, r37.xyz);
              r13.z = r13.z + -r38.y;
              r13.w = cmp(r13.z >= 0);
              r13.z = max(abs(r13.z), r6.w);
              r13.z = r13.w ? r13.z : -r13.z;
              r12.w = max(1.00000001e-07, -r12.w);
              r12.w = r13.z / r12.w;
              r10.w = min(abs(r12.w), r10.w);
              r39.zw = r38.zw;
              r12.w = dot(r11.zxy, r39.xzw);
              r13.z = dot(r14.zxy, r39.xzw);
              r13.z = r13.z + -r39.y;
              r13.w = cmp(r13.z >= 0);
              r13.z = max(abs(r13.z), r6.w);
              r13.z = r13.w ? r13.z : -r13.z;
              r12.w = max(1.00000001e-07, -r12.w);
              r12.w = r13.z / r12.w;
              r10.w = min(abs(r12.w), r10.w);
              r27.x = r31.w;
              r27.yz = r32.zw;
              r17.yzw = r27.xyz + r14.xyz;
              r17.yzw = r11.xyz * r10.www + r17.yzw;
              r12.w = dot(r17.yzw, r17.yzw);
              r12.w = sqrt(r12.w);
              r10.w = r10.w / r12.w;
              r10.w = r10.w + r10.w;
              r10.w = sqrt(r10.w);
              r10.w = r4.z * 5 + r10.w;
              r10.w = -0.844799995 + r10.w;
              r26.y = r29.z;
              r26.z = r30.x;
              r34.x = dot(r17.yzw, r26.xyz);
              r27.xy = r29.xw;
              r27.z = r30.w;
              r34.y = dot(r17.yzw, r27.xyz);
              r30.x = r29.y;
              r34.z = dot(r17.yzw, r30.xyz);
              if (9 == 0) r12.w = 0; else if (9+16 < 32) {               r12.w = (uint)r27.w << (32-(9 + 16)); r12.w = (uint)r12.w >> (32-9);              } else r12.w = (uint)r27.w >> 16;
              r34.w = (uint)r12.w;
              r17.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, r10.w).xyz;
              r28.xzw = (int3)r17.yzw & int3(-2147483648,-2147483648,-2147483648);
              r28.xzw = cmp((int3)r28.xzw == int3(2139095040,2139095040,2139095040));
              r10.w = (int)r28.z | (int)r28.x;
              r10.w = (int)r28.w | (int)r10.w;
              r17.yzw = r10.www ? float3(1,1,0) : r17.yzw;
              r29.x = dot(r14.xyz, r26.xyz);
              r29.y = dot(r14.xyz, r27.xyz);
              r29.z = dot(r14.xyz, r30.xyz);
              r14.xyz = saturate(r29.xyz * r31.xyz + float3(0.5,0.5,0.5));
              r32.z = r33.x;
              r14.xyz = r14.xyz * r32.xyz + r33.yzw;
              r34.x = dot(r2.xyz, r26.xyz);
              r34.y = dot(r2.xyz, r27.xyz);
              r34.z = dot(r2.xyz, r30.xyz);
              r26.xyz = cmp(float3(0,0,0) < r34.xyz);
              r16.z = r26.x ? 0 : 0.5;
              r27.xyz = r16.xyz + r14.xyz;
              r27.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r27.xyz, 0).xyz;
              r28.xzw = r34.xyz * r34.xyz;
              r28.xzw = r28.xzw * r10.zzz;
              r18.z = r26.y ? 0 : 0.5;
              r26.xyw = r18.xyz + r14.xyz;
              r26.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r26.xyw, 0).xyz;
              r26.xyw = r26.xyw * r28.zzz;
              r26.xyw = r27.xyz * r28.xxx + r26.xyw;
              r21.z = r26.z ? 0 : 0.5;
              r14.xyz = r21.xyz + r14.xyz;
              r14.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r14.xyz, 0).xyz;
              r14.xyz = r14.xyz * r28.www + r26.xyw;
              r26.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, 6).xyz;
              r27.xyz = (int3)r26.xyz & int3(-2147483648,-2147483648,-2147483648);
              r27.xyz = cmp((int3)r27.xyz == int3(2139095040,2139095040,2139095040));
              r10.w = (int)r27.y | (int)r27.x;
              r10.w = (int)r27.z | (int)r10.w;
              r26.xyz = r10.www ? float3(1,1,0) : r26.xyz;
              r27.xyz = r26.xyz * r14.xyz;
              r10.w = dot(r27.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r24.xyz = r14.xyz * r26.xyz + r24.xyz;
              r12.w = r10.w * r7.z;
              r14.xyz = r17.yzw * r10.zzz;
              r10.z = dot(r14.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r10.z = r7.z * r10.w + r10.z;
              r10.z = r12.w / r10.z;
              r26.x = r24.w;
              r26.yz = r25.xy;
              r25.xyw = r14.yzx * r10.zzz + r26.yzx;
              r24.w = r25.w;
            }
          }
        }
      }
      r22.xyzw = r24.xyzw;
      r23.yzw = r25.xyz;
      r9.y = (int)r9.y + 32;
    }
    r7.w = cmp(r23.w < 1);
    if (r7.w != 0) {
      r13.xy = float2(0,0);
      r14.w = 0;
      r15.yz = float2(0,1);
      r16.xy = float2(0,0);
      r17.x = 1;
      r18.xy = float2(0,0);
      r21.xy = float2(0,0);
      r24.x = r22.w;
      r24.yzw = r23.yzw;
      r9.yzw = r22.xyz;
      r7.w = r23.w;
      r8.w = 0;
      while (true) {
        r10.y = cmp((uint)r8.w >= (uint)r1.z);
        if (r10.y != 0) break;
        r13.z = (uint)r8.w >> 5;
        r14.xyz = (int3)r12.xyz + (int3)r13.xyz;
        r10.y = visibleProbes.Load(r14.xyzw).x;
        r10.z = cmp((int)r3.x == (int)r8.w);
        if (r3.y == 0) r10.w = 0; else if (r3.y+0 < 32) {         r10.w = (uint)r10.y << (32-(r3.y + 0)); r10.w = (uint)r10.w >> (32-r3.y);        } else r10.w = (uint)r10.y >> 0;
        r10.y = r10.z ? r10.w : r10.y;
        r10.z = (int)r8.w + numLights;
        r25.xyzw = r24.xyzw;
        r14.xyz = r9.yzw;
        r10.w = r7.w;
        r12.w = r10.y;
        while (true) {
          if (r12.w == 0) break;
          r13.z = firstbitlow((uint)r12.w);
          r13.w = 1 << (int)r13.z;
          r15.w = (int)r12.w & (int)r13.w;
          if (r15.w != 0) {
            r12.w = (int)r12.w ^ (int)r13.w;
            r13.w = (int)r10.z + (int)r13.z;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r26.xyzw, r13.w, l(0), t11.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r27.xy, r13.w, l(16), t11.xyxx
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
            r26.xyz = -v6.xyz + r26.xyz;
            r27.z = r26.w;
            r26.xyz = cmp(abs(r26.xyz) < r27.zxy);
            r13.w = r26.y ? r26.x : 0;
            r13.w = r26.z ? r13.w : 0;
            if (r13.w != 0) {
              r13.z = (int)r8.w + (int)r13.z;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r13.z, l(0), t15.wxyz
            r26.x = samp0[]..swiz;
            r26.y = samp0[]..swiz;
            r26.z = samp0[]..swiz;
            r26.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r17.zw, r13.z, l(96), t15.xxxy
            r17.z = samp0[]..swiz;
            r17.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r13.z, l(116), t15.zwxy
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
              r28.xyz = v6.xyz + -r26.yzw;
              r13.w = (int)r27.w & 0x0000ffff;
              if (6 == 0) r15.w = 0; else if (6+25 < 32) {               r15.w = (uint)r27.w << (32-(6 + 25)); r15.w = (uint)r15.w >> (32-6);              } else r15.w = (uint)r27.w >> 25;
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
              r16.w = dot(r29.xyz, r28.xyz);
              r16.w = saturate(r16.w + r29.w);
              r18.w = dot(r30.xyz, r28.xyz);
              r18.w = saturate(r18.w + r30.w);
              r16.w = r18.w * r16.w;
              r18.w = dot(r31.xyz, r28.xyz);
              r18.w = saturate(r18.w + r31.w);
              r16.w = r18.w * r16.w;
              r18.w = dot(r32.xyz, r28.xyz);
              r18.w = saturate(r18.w + r32.w);
              r16.w = r18.w * r16.w;
              r18.w = dot(r33.xyz, r28.xyz);
              r18.w = saturate(r18.w + r33.w);
              r16.w = r18.w * r16.w;
              r18.w = dot(r34.xyz, r28.xyz);
              r18.w = saturate(r18.w + r34.w);
              r15.x = r18.w * r16.w;
              r16.w = (int)r17.z & 1;
              r29.xy = r16.ww ? r15.xy : r15.zx;
              r15.x = r17.z;
              r30.xy = r29.xy;
              r16.w = 1;
              while (true) {
                r18.w = cmp((int)r16.w >= (int)r15.w);
                if (r18.w != 0) break;
                r18.w = (int)r13.w + (int)r16.w;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r18.w, l(0), t16.xyzw
              r31.x = samp0[]..swiz;
              r31.y = samp0[]..swiz;
              r31.z = samp0[]..swiz;
              r31.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r18.w, l(16), t16.xyzw
              r32.x = samp0[]..swiz;
              r32.y = samp0[]..swiz;
              r32.z = samp0[]..swiz;
              r32.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r18.w, l(32), t16.xyzw
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r18.w, l(48), t16.xyzw
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r18.w, l(64), t16.xyzw
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r18.w, l(80), t16.xyzw
              r36.x = samp0[]..swiz;
              r36.y = samp0[]..swiz;
              r36.z = samp0[]..swiz;
              r36.w = samp0[]..swiz;
                r18.w = dot(r31.xyz, r28.xyz);
                r18.w = saturate(r18.w + r31.w);
                r18.w = r30.x * r18.w;
                r20.w = dot(r32.xyz, r28.xyz);
                r20.w = saturate(r20.w + r32.w);
                r18.w = r20.w * r18.w;
                r20.w = dot(r33.xyz, r28.xyz);
                r20.w = saturate(r20.w + r33.w);
                r18.w = r20.w * r18.w;
                r20.w = dot(r34.xyz, r28.xyz);
                r20.w = saturate(r20.w + r34.w);
                r18.w = r20.w * r18.w;
                r20.w = dot(r35.xyz, r28.xyz);
                r20.w = saturate(r20.w + r35.w);
                r18.w = r20.w * r18.w;
                r20.w = dot(r36.xyz, r28.xyz);
                r20.w = saturate(r20.w + r36.w);
                r30.x = r20.w * r18.w;
                r21.w = (uint)r15.x >> 2;
                if (1 == 0) r26.w = 0; else if (1+2 < 32) {                 r26.w = (uint)r15.x << (32-(1 + 2)); r26.w = (uint)r26.w >> (32-1);                } else r26.w = (uint)r15.x >> 2;
                r28.w = (int)r21.w & 2;
                r29.z = max(r30.y, r30.x);
                r18.w = -r18.w * r20.w + 1;
                r18.w = r30.y * r18.w;
                r17.y = r28.w ? r18.w : r29.z;
                r30.xy = r26.ww ? r30.xy : r17.xy;
                r16.w = (int)r16.w + 1;
                r15.x = r21.w;
              }
              r13.w = saturate(r30.y + -r10.w);
              r15.x = r13.w * r17.w;
              r15.w = cmp(0 < r15.x);
              if (r15.w != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r13.z, l(16), t15.xyzw
              r29.x = samp0[]..swiz;
              r29.y = samp0[]..swiz;
              r29.z = samp0[]..swiz;
              r29.w = samp0[]..swiz;
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
                r25.w = r13.w * r17.w + r25.w;
                r13.z = r15.x * r27.z;
                r27.z = r35.z;
                r13.w = dot(r11.xyz, r27.xyz);
                r15.x = dot(r28.xyz, r27.xyz);
                r15.x = r15.x + -r35.w;
                r15.w = cmp(r15.x >= 0);
                r15.x = max(abs(r15.x), r6.w);
                r15.x = r15.w ? r15.x : -r15.x;
                r13.w = max(1.00000001e-07, -r13.w);
                r13.w = r15.x / r13.w;
                r13.w = min(131072, abs(r13.w));
                r35.z = r36.z;
                r15.x = dot(r11.xyz, r35.xyz);
                r15.w = dot(r28.xyz, r35.xyz);
                r15.w = r15.w + -r36.w;
                r16.w = cmp(r15.w >= 0);
                r15.w = max(abs(r15.w), r6.w);
                r15.w = r16.w ? r15.w : -r15.w;
                r15.x = max(1.00000001e-07, -r15.x);
                r15.x = r15.w / r15.x;
                r13.w = min(abs(r15.x), r13.w);
                r36.z = r37.z;
                r15.x = dot(r11.xyz, r36.xyz);
                r15.w = dot(r28.xyz, r36.xyz);
                r15.w = r15.w + -r37.w;
                r16.w = cmp(r15.w >= 0);
                r15.w = max(abs(r15.w), r6.w);
                r15.w = r16.w ? r15.w : -r15.w;
                r15.x = max(1.00000001e-07, -r15.x);
                r15.x = r15.w / r15.x;
                r13.w = min(abs(r15.x), r13.w);
                r37.z = r38.z;
                r15.x = dot(r11.xyz, r37.xyz);
                r15.w = dot(r28.xyz, r37.xyz);
                r15.w = r15.w + -r38.w;
                r16.w = cmp(r15.w >= 0);
                r15.w = max(abs(r15.w), r6.w);
                r15.w = r16.w ? r15.w : -r15.w;
                r15.x = max(1.00000001e-07, -r15.x);
                r15.x = r15.w / r15.x;
                r13.w = min(abs(r15.x), r13.w);
                r38.z = r39.x;
                r15.x = dot(r11.xyz, r38.xyz);
                r15.w = dot(r28.xyz, r38.xyz);
                r15.w = r15.w + -r39.y;
                r16.w = cmp(r15.w >= 0);
                r15.w = max(abs(r15.w), r6.w);
                r15.w = r16.w ? r15.w : -r15.w;
                r15.x = max(1.00000001e-07, -r15.x);
                r15.x = r15.w / r15.x;
                r13.w = min(abs(r15.x), r13.w);
                r40.zw = r39.zw;
                r15.x = dot(r11.zxy, r40.xzw);
                r15.w = dot(r28.zxy, r40.xzw);
                r15.w = r15.w + -r40.y;
                r16.w = cmp(r15.w >= 0);
                r15.w = max(abs(r15.w), r6.w);
                r15.w = r16.w ? r15.w : -r15.w;
                r15.x = max(1.00000001e-07, -r15.x);
                r15.x = r15.w / r15.x;
                r13.w = min(abs(r15.x), r13.w);
                r27.x = r32.w;
                r27.yz = r33.zw;
                r17.yzw = r27.xyz + r28.xyz;
                r17.yzw = r11.xyz * r13.www + r17.yzw;
                r15.x = dot(r17.yzw, r17.yzw);
                r15.x = sqrt(r15.x);
                r13.w = r13.w / r15.x;
                r13.w = r13.w + r13.w;
                r13.w = sqrt(r13.w);
                r13.w = r4.z * 5 + r13.w;
                r13.w = -0.844799995 + r13.w;
                r26.y = r29.z;
                r26.z = r31.x;
                r35.x = dot(r17.yzw, r26.xyz);
                r27.xy = r29.xw;
                r27.z = r31.w;
                r35.y = dot(r17.yzw, r27.xyz);
                r31.x = r29.y;
                r35.z = dot(r17.yzw, r31.xyz);
                if (9 == 0) r15.x = 0; else if (9+16 < 32) {                 r15.x = (uint)r27.w << (32-(9 + 16)); r15.x = (uint)r15.x >> (32-9);                } else r15.x = (uint)r27.w >> 16;
                r35.w = (uint)r15.x;
                r17.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r35.xyzw, r13.w).xyz;
                r29.xyz = (int3)r17.yzw & int3(-2147483648,-2147483648,-2147483648);
                r29.xyz = cmp((int3)r29.xyz == int3(2139095040,2139095040,2139095040));
                r13.w = (int)r29.y | (int)r29.x;
                r13.w = (int)r29.z | (int)r13.w;
                r17.yzw = r13.www ? float3(1,1,0) : r17.yzw;
                r29.x = dot(r28.xyz, r26.xyz);
                r29.y = dot(r28.xyz, r27.xyz);
                r29.z = dot(r28.xyz, r31.xyz);
                r28.xyz = saturate(r29.xyz * r32.xyz + float3(0.5,0.5,0.5));
                r33.z = r34.x;
                r28.xyz = r28.xyz * r33.xyz + r34.yzw;
                r35.x = dot(r2.xyz, r26.xyz);
                r35.y = dot(r2.xyz, r27.xyz);
                r35.z = dot(r2.xyz, r31.xyz);
                r26.xyz = cmp(float3(0,0,0) < r35.xyz);
                r16.z = r26.x ? 0 : 0.5;
                r27.xyz = r28.xyz + r16.xyz;
                r27.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r27.xyz, 0).xyz;
                r29.xyz = r35.xyz * r35.xyz;
                r29.xyz = r29.xyz * r13.zzz;
                r18.z = r26.y ? 0 : 0.5;
                r26.xyw = r28.xyz + r18.xyz;
                r26.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r26.xyw, 0).xyz;
                r26.xyw = r26.xyw * r29.yyy;
                r26.xyw = r27.xyz * r29.xxx + r26.xyw;
                r21.z = r26.z ? 0 : 0.5;
                r27.xyz = r28.xyz + r21.xyz;
                r27.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r27.xyz, 0).xyz;
                r26.xyz = r27.xyz * r29.zzz + r26.xyw;
                r27.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r35.xyzw, 6).xyz;
                r28.xyz = (int3)r27.xyz & int3(-2147483648,-2147483648,-2147483648);
                r28.xyz = cmp((int3)r28.xyz == int3(2139095040,2139095040,2139095040));
                r13.w = (int)r28.y | (int)r28.x;
                r13.w = (int)r28.z | (int)r13.w;
                r27.xyz = r13.www ? float3(1,1,0) : r27.xyz;
                r28.xyz = r27.xyz * r26.xyz;
                r13.w = dot(r28.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r14.xyz = r26.xyz * r27.xyz + r14.xyz;
                r15.x = r13.w * r7.z;
                r17.yzw = r17.yzw * r13.zzz;
                r13.z = dot(r17.yzw, float3(0.212599993,0.715200007,0.0722000003));
                r13.z = r7.z * r13.w + r13.z;
                r13.z = r15.x / r13.z;
                r25.xyz = r17.yzw * r13.zzz + r25.xyz;
              }
            }
          }
        }
        r24.xyzw = r25.xyzw;
        r9.yzw = r14.xyz;
        r8.w = (int)r8.w + 32;
      }
      r23.xyzw = r24.zxyw;
      r22.xyz = r9.yzw;
      r23.xyzw = r23.yzxw;
    } else {
      r23.x = r22.w;
    }
    r1.z = max(1, r23.w);
    r1.z = rcp(r1.z);
    r23.w = saturate(r23.w);
    r19.xyz = r22.xyz * r1.zzz;
    r20.xyz = r23.xyz * r1.zzz;
    r3.x = cmp(r23.w < 0.99000001);
    if (r3.x != 0) {
      r3.x = 1 + -r23.w;
      r3.y = sunConstants.globalProbeExposure * r3.x;
      r9.yzw = -globalProbeConstants.data[0].xyz + v6.xyz;
      r13.x = globalProbeConstants.data[0].w * r9.y;
      r13.yz = globalProbeConstants.data[1].xy * r9.zw;
      r9.yzw = saturate(float3(0.5,0.5,0.5) + r13.xyz);
      r13.xy = globalProbeConstants.data[1].zw * r9.yz;
      r13.z = globalProbeConstants.data[2].x * r9.w;
      r9.yzw = globalProbeConstants.data[2].yzw + r13.xyz;
      r10.yzw = cmp(float3(0,0,0) < r2.xyz);
      r13.xyz = r10.yzw ? float3(0,0,0) : float3(0.5,0.5,0.5);
      r13.w = 0;
      r10.yzw = r13.wwx + r9.yzw;
      r10.yzw = gProbeXArray.SampleLevel(samplerLinearClamp_s, r10.yzw, 0).xyz;
      r14.xyz = r2.xyz * r2.xyz;
      r14.xyz = r14.xyz * r3.yyy;
      r15.xyz = r13.wwy + r9.yzw;
      r15.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r15.xyz, 0).xyz;
      r15.xyz = r15.xyz * r14.yyy;
      r10.yzw = r10.yzw * r14.xxx + r15.xyz;
      r9.yzw = r13.wwz + r9.yzw;
      r9.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r9.yzw, 0).xyz;
      r9.yzw = r9.yzw * r14.zzz + r10.yzw;
      r2.w = 0;
      r10.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r2.xyzw, 6).xyz;
      r9.yzw = r10.yzw * r9.yzw;
      r2.w = dot(r9.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r19.xyz = r22.xyz * r1.zzz + r9.yzw;
      r11.w = 0;
      r9.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, r5.w).xyz;
      r1.z = sunConstants.globalProbeExposure * r3.x + -r2.w;
      r1.z = r4.y * r1.z + r2.w;
      r20.xyz = r9.yzw * r1.zzz + r20.xyz;
    }
  } else {
    r20.x = r19.w;
  }
  r1.z = r4.x + r1.y;
  r1.z = log2(abs(r1.z));
  r1.z = r3.w * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r1.z + r1.y;
  r1.z = saturate(-1 + r1.z);
  r13.xyz = r19.yzx * r1.yyy;
  r3.xy = r4.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r3.xy = gEnvBRDFGlass.SampleLevel(samplerLinear_s, r3.xy, 0).xy;
  r9.yzw = r20.xyz * r1.zzz;
  r10.yzw = r9.yzw * r3.xxx;
  r14.xyz = r9.yzw * r3.yyy;
  r1.y = sqrt(r3.w);
  r1.y = r1.y * 0.5 + 0.5;
  r1.y = r1.y * r1.y;
  r1.z = 0.5 * r1.y;
  r1.y = -r1.y * 0.5 + 1;
  r2.w = r4.x * r1.y + r1.z;
  r1.yz = r2.ww * r1.yz;
  r2.w = dot(r2.xyz, sunConstants.wldDir.xyz);
  r3.x = cmp(0 >= abs(r2.w));
  if (r3.x != 0) {
    r3.y = 0;
  }
  if (r3.x == 0) {
    r9.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v6.yyy;
    r9.yzw = v6.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r9.yzw;
    r9.yzw = v6.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r9.yzw;
    r9.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r9.yzw;
    r3.x = -sunConstants.splitDepthOffset + r9.w;
    r3.x = -r3.x * 6.10351563e-05 + 1;
    r4.y = saturate(r3.x);
    r4.y = cmp(r3.x == r4.y);
    if (r4.y != 0) {
      r4.yz = float2(0,0);
      while (true) {
        r5.w = cmp(r4.y >= 3);
        if (r5.w != 0) break;
        r5.w = (uint)r4.y;
        r7.zw = -sunConstants.splitPinTransform[r5.w].xy + r9.yz;
        r6.w = max(abs(r7.z), abs(r7.w));
        r4.z = sunConstants.splitPinTransform[r5.w].z * r6.w;
        r5.w = cmp(r4.z < 1);
        if (r5.w != 0) {
          break;
        }
        r4.y = 1 + r4.y;
        r4.z = 0;
      }
    } else {
      r4.yz = float2(3,0);
    }
    r5.w = cmp(r4.y >= 3);
    if (r5.w != 0) {
      r15.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r16.xz = rcp(r15.xx);
      r16.y = -r16.z;
      r15.xyz = r9.yzy * r16.xyz + r15.yzy;
      r16.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r15.xyz = max(float3(0,0,0), r15.xyz);
      r15.xyz = min(r15.xyz, r16.xyz);
      r7.zw = sunConstants.sstLightingConstants.coordScale * r15.zy;
      r7.zw = floor(r7.zw);
      r6.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r7.w;
      r6.w = r6.w * sunConstants.sstLightingConstants.coordScale + r7.z;
      r6.w = (uint)r6.w;
      r6.w = (int)r6.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r7.z, r6.w, l(0), t23.xxxx
    r7.z = samp0[]..swiz;
      r7.w = (int)r7.z & 0x40000000;
      r8.w = (uint)r7.z << 2;
      if (r7.w == 0) {
        r7.w = (int)r7.z & 0x01ffffff;
        r16.x = (int)r6.w + (int)r7.w;
        r6.w = (uint)r7.z >> 25;
        r6.w = (uint)r6.w;
        r15.xyz = r15.xyz * r6.www;
        r15.xyz = frac(r15.xyz);
        r15.xyz = float3(128,128,128) * r15.xyz;
        r15.xyz = (uint3)r15.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.x, l(0), t23.xxxx
      r16.z = samp0[]..swiz;
        r7.zw = (uint2)r15.zy >> int2(6,6);
        r6.w = (int)r16.z & 0xc0000000;
        r11.w = (int)r16.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.w, r11.w, l(0), t23.xxxx
      r11.w = samp0[]..swiz;
        r7.w = r7.w ? r16.z : r11.w;
        r11.w = (uint)r7.w >> 13;
        r7.z = r7.z ? r11.w : r7.w;
        r7.z = (int)r7.z & 8191;
        r17.x = (int)r7.z + (int)r16.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
      r17.z = samp0[]..swiz;
        r16.y = 0;
        r17.y = 1;
        r17.xyz = r6.www ? r16.xyz : r17.xyz;
        r18.yz = r6.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r7.zw = (uint2)r15.zy >> (uint2)r18.yy;
        r7.zw = (int2)r7.zw & int2(1,1);
        r11.w = (int)r17.z & 0xc0000000;
        r12.w = (int)r17.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.w, r12.w, l(0), t23.xxxx
      r12.w = samp0[]..swiz;
        r7.w = r7.w ? r17.z : r12.w;
        r12.w = (uint)r7.w >> 13;
        r7.z = r7.z ? r12.w : r7.w;
        r7.z = (int)r7.z & 8191;
        r18.x = (int)r7.z + (int)r17.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.x, l(0), t23.xxxx
      r18.w = samp0[]..swiz;
        r17.xyz = r11.www ? r17.xyz : r18.xzw;
        r16.xyz = r6.www ? r16.xyz : r17.xyz;
        r6.w = (int)r16.z & 0xc0000000;
        if (r6.w == 0) {
          r6.w = (int)-r16.y + 6;
          r7.zw = (uint2)r15.zy >> (uint2)r6.ww;
          r6.w = (int)r16.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r7.w = (((uint)r7.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r7.z = (((uint)r7.z << 0) & bitmask.z) | ((uint)r7.w & ~bitmask.z);
          r7.z = (int)r7.z * 10;
          r6.w = (uint)r6.w >> (uint)r7.z;
          r6.w = (int)r6.w & 1023;
          r17.x = (int)r6.w + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.x, l(0), t23.xxxx
        r17.w = samp0[]..swiz;
          r17.yz = (int2)r16.yy + int2(1,2);
          r6.w = (int)-r17.y + 6;
          r7.zw = (uint2)r15.zy >> (uint2)r6.ww;
          r6.w = (int)r17.w & 0xc0000000;
          r11.w = (int)r17.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r7.w = (((uint)r7.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r7.z = (((uint)r7.z << 0) & bitmask.z) | ((uint)r7.w & ~bitmask.z);
          r7.z = (int)r7.z * 10;
          r7.z = (uint)r11.w >> (uint)r7.z;
          r7.z = (int)r7.z & 1023;
          r18.x = (int)r7.z + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
        r18.z = samp0[]..swiz;
          r18.y = r17.z;
          r18.xyz = r6.www ? r17.xyw : r18.xyz;
          r7.z = (int)-r18.y + 6;
          r7.zw = (uint2)r15.zy >> (uint2)r7.zz;
          r11.w = (int)r18.z & 0xc0000000;
          r12.w = (int)r18.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r7.w = (((uint)r7.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r7.z = (((uint)r7.z << 0) & bitmask.z) | ((uint)r7.w & ~bitmask.z);
          r7.z = (int)r7.z * 10;
          r7.z = (uint)r12.w >> (uint)r7.z;
          r7.z = (int)r7.z & 1023;
          r19.x = (int)r7.z + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.y, r19.x, l(0), t23.xxxx
        r19.y = samp0[]..swiz;
          r7.zw = r11.ww ? r18.xz : r19.xy;
          r16.xz = r6.ww ? r17.xw : r7.zw;
        }
        r6.w = (int)r16.z & 0xc0000000;
        if (r6.w == 0) {
          if (14 == 0) r7.z = 0; else if (14+15 < 32) {           r7.z = (uint)r16.z << (32-(14 + 15)); r7.z = (uint)r7.z >> (32-14);          } else r7.z = (uint)r16.z >> 15;
          r7.z = (uint)r7.z;
          r7.z = sunConstants.sstLightingConstants.constants.spanInInches * r7.z;
          r16.yw = (int2)r16.zz & int2(32767,536870912);
          r7.w = (uint)r16.y;
          r7.w = sunConstants.sstLightingConstants.constants.spanInInches * r7.w;
          r7.zw = float2(6.10388815e-05,3.05185094e-05) * r7.zw;
          r11.w = (int)r15.y & 3;
          r11.w = (int)r11.w + (int)r16.x;
          r11.w = (int)r11.w + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.w, r11.w, l(0), t23.xxxx
        r11.w = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r15.x = (((uint)r15.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r15.y = (((uint)r15.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.w = ((~(-1 << 1)) << 4) & 0xffffffff;  r15.w = (((uint)r15.z << 4) & bitmask.w) | ((uint)0 & ~bitmask.w);
          r11.w = (uint)r11.w >> (uint)r15.x;
          r11.w = (int)r11.w & 255;
          r11.w = (uint)r11.w;
          r11.w = r11.w * r7.w;
          r11.w = r11.w * 0.00392156886 + r7.z;
          r12.w = (int)r15.y + 1;
          if (1 == 0) r15.x = 0; else if (1+1 < 32) {           r15.x = (uint)r15.z << (32-(1 + 1)); r15.x = (uint)r15.x >> (32-1);          } else r15.x = (uint)r15.z >> 1;
          r12.w = (int)r12.w + (int)r15.x;
          r12.w = (int)r12.w + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.w, r12.w, l(0), t23.xxxx
        r12.w = samp0[]..swiz;
          r12.w = (uint)r12.w >> (uint)r15.w;
          r12.w = (int)r12.w & 0x0000ffff;
          r12.w = (uint)r12.w;
          r7.w = r12.w * r7.w;
          r7.z = r7.w * 1.52590219e-05 + r7.z;
          r8.w = r16.w ? r11.w : r7.z;
        } else {
          r7.z = (int)r16.z & 0x80000000;
          r7.w = (int)r16.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r7.w, r7.w, l(0), t23.xxxx
        r7.w = samp0[]..swiz;
          r7.z = r7.z ? r7.w : 0;
          r7.w = (uint)r16.z << 2;
          r11.w = (uint)r7.z >> 16;
          r11.w = f16tof32(r11.w);
          r7.z = (int)r7.z & 0x0000ffff;
          r7.z = f16tof32(r7.z);
          r7.w = r9.y * r11.w + r7.w;
          r7.z = r9.z * r7.z + r7.w;
          r8.w = r6.w ? r7.z : r8.w;
        }
      }
      r6.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r9.w;
      r6.w = cmp(r8.w < r6.w);
      r3.y = r6.w ? 0 : 1;
    }
    if (r5.w == 0) {
      if (enableDitheredShadow == 0) {
        r5.w = (uint)r4.y;
        r7.zw = -sunConstants.splitPinTransform[r5.w].xy + r9.yz;
        r7.zw = sunConstants.splitPinTransform[r5.w].zz * r7.zw;
        r15.xy = r7.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r5.w = (int16)sunConstants.splitArrayOffset;
        r15.z = r5.w + r4.y;
        r5.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r3.x).x;
        r6.w = gTransShadowmapArray.SampleLevel(samp0_s, r15.xyz, 0).x;
        r5.w = r6.w + r5.w;
        r5.w = saturate(-1 + r5.w);
        r6.w = r5.w * r5.w;
        r3.y = r6.w * r5.w;
      }
      if (enableDitheredShadow != 0) {
        r15.x = -r7.x;
        r5.w = (uint)r4.y;
        r4.y = 1 + r4.y;
        r4.y = min(2, r4.y);
        r4.z = 1 + -r4.z;
        r4.z = 28 * r4.z;
        r4.yz = (uint2)r4.yz;
        r7.zw = -sunConstants.splitPinTransform[r5.w].xy + r9.yz;
        r7.zw = sunConstants.splitPinTransform[r5.w].zz * r7.zw;
        r7.zw = r7.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r9.yz = -sunConstants.splitPinTransform[r4.y].xy + r9.yz;
        r9.yz = sunConstants.splitPinTransform[r4.y].zz * r9.yz;
        r9.yz = r9.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r15.y = r8.x;
        r15.z = r7.x;
        r6.w = 0;
        r8.w = 0;
        while (true) {
          r9.w = cmp((uint)r8.w >= 8);
          if (r9.w != 0) break;
          r9.w = cmp((uint)r4.z < (uint)r8.w);
          r16.xy = r9.ww ? r9.yz : r7.zw;
          r11.w = r9.w ? sunConstants.splitPinTransform[r4.y].w : sunConstants.splitPinTransform[r5.w].w;
          r9.w = r9.w ? r4.y : r5.w;
          r17.x = dot(icb[r8.w+0].yx, r15.xy);
          r17.y = dot(icb[r8.w+0].yx, r15.yz);
          r16.xy = r17.xy * r11.ww + r16.xy;
          r9.w = (int)r9.w + (int16)sunConstants.splitArrayOffset;
          r16.z = (uint)r9.w;
          r9.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r3.x).x;
          r11.w = gTransShadowmapArray.SampleLevel(samp0_s, r16.xyz, 0).x;
          r9.w = r11.w + r9.w;
          r9.w = saturate(-1 + r9.w);
          r6.w = r9.w * 0.125 + r6.w;
          r8.w = (int)r8.w + 1;
        }
        r3.x = r6.w * r6.w;
        r3.y = r3.x * r6.w;
      }
    }
  }
  r3.x = cmp(0 < abs(r2.w));
  if (r3.x != 0) {
    r3.x = cmp(0 < r3.y);
    if (r3.x != 0) {
      r3.x = sunConstants.specScale * r3.z;
      r3.x = 0.25 * r3.x;
      if (sunConstants.sunCookieIndex != 0) {
        r15.xyz = eyeOffset.xyz + v6.xyz;
        r15.w = 1;
        r4.y = dot(sunConstants.sunCookieTransform[0].xyzw, r15.xyzw);
        r4.z = dot(sunConstants.sunCookieTransform[1].xyzw, r15.xyzw);
        r15.xy = frac(r4.yz);
        r4.y = -1 + (int14)sunConstants.sunCookieIndex;
        r15.z = (uint)r4.y;
        r9.yzw = gCookieArray.SampleLevel(samplerLinear_s, r15.xyz, 0).xyz;
        r9.yzw = float3(-1,-1,-1) + r9.yzw;
        r9.yzw = sunConstants.sunCookieIntensity * r9.yzw + float3(1,1,1);
        r9.yzw = sunConstants.color.xyz * r9.yzw;
      } else {
        r9.yzw = sunConstants.color.xyz;
      }
      r4.y = viewmodelSunShadowRaw >> 16;
      r4.z = cmp(0 < (uint)r4.y);
      r4.z = r1.w ? r4.z : 0;
      if (r4.z != 0) {
        r4.y = (int)r4.y + numLights;
        r4.y = (int)r4.y + -1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r4.z, r4.y, l(52), t12.xxxx
      r4.z = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r4.y, l(68), t12.xyzw
      r15.x = samp0[]..swiz;
      r15.y = samp0[]..swiz;
      r15.z = samp0[]..swiz;
      r15.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r4.y, l(84), t12.xyzw
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
        r5.w = abs(r2.w) * -0.200000003 + 0.400000006;
        r6.w = cmp(r2.w < 0);
        r5.w = r6.w ? -r5.w : r5.w;
        r19.xyz = r2.xyz * r5.www + v6.xyz;
        r19.w = 1;
        r15.x = dot(r15.xyzw, r19.xyzw);
        r15.y = dot(r16.xyzw, r19.xyzw);
        r7.zw = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r7.zw = r7.zw + r18.zw;
        r7.zw = r7.zw * r18.xy;
        r15.xy = r4.zz / r17.xz;
        r15.zw = float2(1,1) + -r15.xy;
        r15.zw = cmp(r7.zw >= r15.zw);
        r15.xy = cmp(r15.xy >= r7.zw);
        r15.xy = (int2)r15.xy | (int2)r15.zw;
        r5.w = (int)r15.y | (int)r15.x;
        if (r5.w == 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r5.w, r4.y, l(28), t12.xxxx
        r5.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r4.y, l(100), t12.xyzw
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xy, r4.y, l(164), t12.xyxx
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
          r4.y = dot(r15.xyzw, r19.xyzw);
          r7.zw = saturate(r7.zw);
          r15.xy = r7.zw * r17.xz + r17.yw;
          r4.y = r4.y + r16.x;
          r4.y = r4.y / r16.y;
          r4.y = max(6.10351563e-05, r4.y);
          r5.w = (int)r5.w & 0x0000ffff;
          if (enableDitheredShadow != 0) {
            r16.x = -r7.x;
            r17.z = (uint)r5.w;
            r16.y = r8.x;
            r16.z = r7.x;
            r6.w = 0;
            r7.z = 0;
            while (true) {
              r7.w = cmp((int)r7.z >= 8);
              if (r7.w != 0) break;
              r18.x = dot(icb[r7.z+0].yx, r16.xy);
              r18.y = dot(icb[r7.z+0].yx, r16.yz);
              r17.xy = r18.xy * r4.zz + r15.xy;
              r7.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r4.y).x;
              r6.w = r7.w * 0.125 + r6.w;
              r7.z = (int)r7.z + 1;
            }
          } else {
            r15.z = (uint)r5.w;
            r6.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r4.y).x;
          }
          r4.y = r6.w * r6.w;
          r4.y = r4.y * r6.w;
        } else {
          r4.y = 1;
        }
        r3.y = r4.y * r3.y;
      } else {
        r4.y = viewmodelSunShadowRaw & 0x0000ffff;
        r4.z = cmp(0 < (uint)r4.y);
        r5.w = ~(int)r1.w;
        r4.z = r4.z ? r5.w : 0;
        if (r4.z != 0) {
          r4.y = (int)r4.y + numLights;
          r4.y = (int)r4.y + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r4.z, r4.y, l(52), t12.xxxx
        r4.z = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r4.y, l(68), t12.xyzw
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r4.y, l(84), t12.xyzw
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
          r5.w = abs(r2.w) * -0.200000003 + 0.400000006;
          r6.w = cmp(r2.w < 0);
          r5.w = r6.w ? -r5.w : r5.w;
          r19.xyz = r2.xyz * r5.www + v6.xyz;
          r19.w = 1;
          r15.x = dot(r15.xyzw, r19.xyzw);
          r15.y = dot(r16.xyzw, r19.xyzw);
          r7.zw = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r7.zw = r7.zw + r18.zw;
          r7.zw = r7.zw * r18.xy;
          r15.xy = r4.zz / r17.xz;
          r15.zw = float2(1,1) + -r15.xy;
          r15.zw = cmp(r7.zw >= r15.zw);
          r15.xy = cmp(r15.xy >= r7.zw);
          r15.xy = (int2)r15.xy | (int2)r15.zw;
          r5.w = (int)r15.y | (int)r15.x;
          if (r5.w == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r5.w, r4.y, l(28), t12.xxxx
          r5.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r4.y, l(100), t12.xyzw
          r15.x = samp0[]..swiz;
          r15.y = samp0[]..swiz;
          r15.z = samp0[]..swiz;
          r15.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xy, r4.y, l(164), t12.xyxx
          r16.x = samp0[]..swiz;
          r16.y = samp0[]..swiz;
            r4.y = dot(r15.xyzw, r19.xyzw);
            r7.zw = saturate(r7.zw);
            r15.xy = r7.zw * r17.xz + r17.yw;
            r4.y = r4.y + r16.x;
            r4.y = r4.y / r16.y;
            r4.y = max(6.10351563e-05, r4.y);
            r5.w = (int)r5.w & 0x0000ffff;
            if (enableDitheredShadow != 0) {
              r16.x = -r7.x;
              r17.z = (uint)r5.w;
              r16.y = r8.x;
              r16.z = r7.x;
              r6.w = 0;
              r7.z = 0;
              while (true) {
                r7.w = cmp((int)r7.z >= 8);
                if (r7.w != 0) break;
                r18.x = dot(icb[r7.z+0].yx, r16.xy);
                r18.y = dot(icb[r7.z+0].yx, r16.yz);
                r17.xy = r18.xy * r4.zz + r15.xy;
                r7.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r4.y).x;
                r6.w = r7.w * 0.125 + r6.w;
                r7.z = (int)r7.z + 1;
              }
            } else {
              r15.z = (uint)r5.w;
              r6.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r4.y).x;
            }
            r4.y = r6.w * r6.w;
            r4.y = r4.y * r6.w;
          } else {
            r4.y = 1;
          }
          r3.y = r4.y * r3.y;
        }
      }
      r4.y = -r4.x * 0.5 + 1;
      r4.y = -abs(r2.w) * r4.y + 1;
      r4.y = r4.y * r4.y;
      r4.y = -r4.y * 0.620000005 + 0.620000005;
      r4.y = r4.y + -abs(r2.w);
      r4.y = r3.w * r4.y + abs(r2.w);
      r4.y = r4.y * r3.y;
      r4.z = cmp(0 < r2.w);
      r15.xyz = r4.yyy * r9.zwy + r13.xyz;
      r2.w = saturate(r2.w);
      r16.xyz = -v6.xyz * r1.xxx + sunConstants.wldDir.xyz;
      r1.x = dot(r16.xyz, r16.xyz);
      r1.x = rsqrt(r1.x);
      r16.xyz = r16.xyz * r1.xxx;
      r1.x = dot(r16.xyz, r6.xyz);
      r4.y = dot(r2.xyz, r16.xyz);
      r5.w = abs(r4.y) * r3.z + -abs(r4.y);
      r4.y = abs(r4.y) * r5.w + 1;
      r5.w = r2.w * r1.y + r1.z;
      r4.y = r4.y * r4.y;
      r4.y = r4.y * r5.w;
      r4.y = rcp(r4.y);
      r2.w = r2.w * r3.x;
      r2.w = r4.y * r2.w;
      r2.w = r2.w * r3.y;
      r16.yzw = r2.www * r9.yzw + r14.xyz;
      r1.x = saturate(1 + -r1.x);
      r1.x = log2(r1.x);
      r1.x = 3.4000001 * r1.x;
      r1.x = exp2(r1.x);
      r1.x = r2.w * r1.x;
      r9.yzw = r1.xxx * r9.yzw + r10.yzw;
      r15.w = r13.z;
      r13.w = r15.z;
      r17.xyzw = r4.zzzz ? r15.zxyw : r13.zxyw;
      r13.zw = r9.yz;
      r15.zw = r10.yz;
      r15.xyzw = r4.zzzz ? r13.xyzw : r15.xyzw;
      r16.x = r9.w;
      r14.w = r10.w;
      r14.xyzw = r4.zzzz ? r16.yzwx : r14.xyzw;
      r13.z = r17.w;
      r13.xy = r15.xy;
      r10.yz = r15.zw;
      r10.w = r14.w;
    } else {
      r17.xyz = r13.zxy;
    }
  } else {
    r17.xyz = r13.zxy;
  }
  r15.x = -r7.x;
  r1.x = ~(int)r1.w;
  r2.w = -r4.x * 0.5 + 1;
  r4.xy = float2(0,0);
  r16.w = 0;
  r18.xyz = v6.xyz;
  r18.w = 1;
  r19.w = 1;
  r15.z = r7.x;
  r20.w = 1;
  r21.z = 1;
  r22.w = 1;
  r15.yw = r8.xx;
  r7.y = r15.w;
  r23.w = 1;
  r8.y = r15.x;
  r8.z = r7.x;
  r24.w = 1;
  r25.x = r8.x;
  r25.y = r15.x;
  r25.z = r7.x;
  r26.x = r8.x;
  r26.y = r15.x;
  r26.z = r7.x;
  r27.x = r8.x;
  r27.y = r15.x;
  r27.z = r7.x;
  r9.yzw = r17.xyz;
  r28.xyz = r13.zxy;
  r29.xyz = r10.yzw;
  r30.xyz = r14.xyz;
  r3.x = enableDitheredShadow;
  r3.y = 0;
  while (true) {
    r5.w = cmp((uint)r3.y >= numLights);
    if (r5.w != 0) break;
    r4.z = (uint)r3.y >> 5;
    r16.xyz = (int3)r4.xyz + (int3)r12.xyz;
    r4.z = visibleLights.Load(r16.xyzw).x;
    r16.xyz = r9.yzw;
    r31.xyz = r28.xyz;
    r32.xyz = r29.xyz;
    r33.xyz = r30.xyz;
    r5.w = r3.x;
    r6.w = r4.z;
    while (true) {
      if (r6.w == 0) break;
      r7.z = firstbitlow((uint)r6.w);
      r7.w = 1 << (int)r7.z;
      r8.w = (int)r6.w & (int)r7.w;
      if (r8.w != 0) {
        r6.w = (int)r6.w ^ (int)r7.w;
        r7.z = (int)r3.y + (int)r7.z;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r34.xyzw, r7.z, l(0), t11.xyzw
      r34.x = samp0[]..swiz;
      r34.y = samp0[]..swiz;
      r34.z = samp0[]..swiz;
      r34.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r35.xy, r7.z, l(16), t11.xyxx
      r35.x = samp0[]..swiz;
      r35.y = samp0[]..swiz;
        r34.xyz = -v6.xyz + r34.xyz;
        r35.z = r34.w;
        r34.xyz = cmp(abs(r34.xyz) < r35.zxy);
        r7.w = r34.y ? r34.x : 0;
        r7.w = r34.z ? r7.w : 0;
        if (r7.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r7.z, l(0), t12.wxyz
        r34.x = samp0[]..swiz;
        r34.y = samp0[]..swiz;
        r34.z = samp0[]..swiz;
        r34.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r7.z, l(16), t12.zxyw
        r35.x = samp0[]..swiz;
        r35.y = samp0[]..swiz;
        r35.z = samp0[]..swiz;
        r35.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r7.z, l(32), t12.xyzw
        r36.x = samp0[]..swiz;
        r36.y = samp0[]..swiz;
        r36.z = samp0[]..swiz;
        r36.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r7.z, l(48), t12.xyzw
        r37.x = samp0[]..swiz;
        r37.y = samp0[]..swiz;
        r37.z = samp0[]..swiz;
        r37.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r7.z, l(64), t12.yzwx
        r38.x = samp0[]..swiz;
        r38.y = samp0[]..swiz;
        r38.z = samp0[]..swiz;
        r38.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r7.z, l(80), t12.xyzw
        r39.x = samp0[]..swiz;
        r39.y = samp0[]..swiz;
        r39.z = samp0[]..swiz;
        r39.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r7.z, l(96), t12.yzwx
        r40.x = samp0[]..swiz;
        r40.y = samp0[]..swiz;
        r40.z = samp0[]..swiz;
        r40.w = samp0[]..swiz;
          if (3 == 0) r7.w = 0; else if (3+24 < 32) {           r7.w = (uint)r35.w << (32-(3 + 24)); r7.w = (uint)r7.w >> (32-3);          } else r7.w = (uint)r35.w >> 24;
          switch (r7.w) {
            case 4 :            r7.w = cmp(0 < r40.x);
            r41.xy = r39.zw;
            r41.z = r40.w;
            r42.xyz = -r41.xyz * float3(0.5,0.5,0.5) + r34.yzw;
            r43.xyz = -v6.xyz + r42.xyz;
            r8.w = dot(r41.xyz, r43.xyz);
            r11.w = saturate(-r8.w / r40.x);
            r44.xyz = r11.www * r41.xyz + r42.xyz;
            r44.xyz = r7.www ? r44.xyz : r34.yzw;
            r44.xyz = -v6.xyz + r44.xyz;
            r12.w = dot(r44.xyz, r44.xyz);
            r13.w = rsqrt(r12.w);
            r44.xyz = r44.xyz * r13.www;
            r13.w = dot(r2.xyz, r44.xyz);
            r14.w = cmp(0 < abs(r13.w));
            if (r14.w != 0) {
              r14.w = sqrt(r12.w);
              r17.w = r37.x * r37.x;
              r12.w = r17.w / r12.w;
              r12.w = min(1, r12.w);
              r44.xy = saturate(r14.ww * r36.xz + r36.yw);
              r44.zw = r44.xy * r44.xy;
              r44.xy = r44.xy * float2(-2,-2) + float2(3,3);
              r44.xy = r44.zw * r44.xy;
              r12.w = r44.x * r12.w;
              r12.w = r12.w * r44.y;
              r14.w = cmp(0 < r12.w);
              if (r14.w != 0) {
                if (3 == 0) r14.w = 0; else if (3+27 < 32) {                 r14.w = (uint)r35.w << (32-(3 + 27)); r14.w = (uint)r14.w >> (32-3);                } else r14.w = (uint)r35.w >> 27;
                r14.w = cmp((int)r14.w != 1);
                if (r14.w != 0) {
                  r14.w = abs(r13.w) * -0.200000003 + 0.400000006;
                  r17.w = cmp(r13.w < 0);
                  r14.w = r17.w ? -r14.w : r14.w;
                  r44.xyz = r2.xyz * r14.www + v6.xyz;
                  r44.xyz = r44.xyz + -r38.xyz;
                  r14.w = max(abs(r44.y), abs(r44.z));
                  r14.w = max(abs(r44.x), r14.w);
                  r14.w = r39.x / r14.w;
                  r14.w = r14.w + r39.y;
                  r17.w = dot(r44.xyz, r44.xyz);
                  r17.w = rsqrt(r17.w);
                  r14.w = max(6.10351563e-05, r14.w);
                  r21.w = (int)r35.w & 0x0000ffff;
                  r45.w = (uint)r21.w;
                  r21.w = 0;
                  r25.w = 0;
                  while (true) {
                    r26.w = cmp((int)r25.w >= 8);
                    if (r26.w != 0) break;
                    r46.y = dot(icb[r25.w+0].yx, r15.xy);
                    r46.z = dot(icb[r25.w+0].yx, r15.yz);
                    r46.yz = r46.yz * r37.yy;
                    r46.x = r46.y * r10.x;
                    r46.w = r46.y * r9.x;
                    r45.xyz = r44.xyz * r17.www + r46.xzw;
                    r26.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r45.xyzw, r14.w).x;
                    r21.w = r26.w * 0.125 + r21.w;
                    r25.w = (int)r25.w + 1;
                  }
                } else {
                  r21.w = 1;
                }
                r12.w = r21.w * r12.w;
                r14.w = cmp(0 < r12.w);
                if (r14.w != 0) {
                  r14.w = r35.x * r3.z;
                  r14.w = 0.25 * r14.w;
                  r17.w = dot(r41.xyz, r11.xyz);
                  r25.w = dot(r11.xyz, r43.xyz);
                  r26.w = -r17.w * r17.w + r40.x;
                  r8.w = r17.w * r25.w + -r8.w;
                  r8.w = saturate(r8.w / r26.w);
                  r17.w = r26.w / r40.x;
                  r17.w = 10 * r17.w;
                  r17.w = min(1, r17.w);
                  r8.w = r8.w + -r11.w;
                  r8.w = r17.w * r8.w + r11.w;
                  r41.xyz = r8.www * r41.xyz + r42.xyz;
                  r41.xyz = r7.www ? r41.xyz : r34.yzw;
                  r41.xyz = -v6.xyz + r41.xyz;
                  r7.w = dot(r41.xyz, r41.xyz);
                  r7.w = rsqrt(r7.w);
                  r42.xyz = r41.xyz * r7.www;
                  if (4 == 0) r8.w = 0; else if (4+16 < 32) {                   r8.w = (uint)r35.w << (32-(4 + 16)); r8.w = (uint)r8.w >> (32-4);                  } else r8.w = (uint)r35.w >> 16;
                  r11.w = cmp(0 < (uint)r8.w);
                  r11.w = r1.w ? r11.w : 0;
                  if (r11.w != 0) {
                    r8.w = (int)r8.w + numLights;
                    r8.w = (int)r8.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.w, r8.w, l(52), t12.xxxx
                  r11.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r8.w, l(100), t12.xyzw
                  r43.x = samp0[]..swiz;
                  r43.y = samp0[]..swiz;
                  r43.z = samp0[]..swiz;
                  r43.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r8.w, l(116), t12.xyzw
                  r44.x = samp0[]..swiz;
                  r44.y = samp0[]..swiz;
                  r44.z = samp0[]..swiz;
                  r44.w = samp0[]..swiz;
                    r17.w = abs(r13.w) * -0.200000003 + 0.400000006;
                    r25.w = cmp(r13.w < 0);
                    r17.w = r25.w ? -r17.w : r17.w;
                    r19.xyz = r2.xyz * r17.www + v6.xyz;
                    r17.w = dot(r43.xyzw, r19.xyzw);
                    r25.w = dot(r44.xyzw, r19.xyzw);
                    r26.w = cmp(r25.w < r17.w);
                    if (r26.w == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r8.w, l(68), t12.xyzw
                    r43.x = samp0[]..swiz;
                    r43.y = samp0[]..swiz;
                    r43.z = samp0[]..swiz;
                    r43.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r8.w, l(84), t12.xyzw
                    r44.x = samp0[]..swiz;
                    r44.y = samp0[]..swiz;
                    r44.z = samp0[]..swiz;
                    r44.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r8.w, l(132), t12.xyzw
                    r45.x = samp0[]..swiz;
                    r45.y = samp0[]..swiz;
                    r45.z = samp0[]..swiz;
                    r45.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r46.xyzw, r8.w, l(148), t12.xyzw
                    r46.x = samp0[]..swiz;
                    r46.y = samp0[]..swiz;
                    r46.z = samp0[]..swiz;
                    r46.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r47.xy, r8.w, l(164), t12.xyxx
                    r47.x = samp0[]..swiz;
                    r47.y = samp0[]..swiz;
                      r43.x = dot(r43.xyzw, r19.xyzw);
                      r43.y = dot(r44.xyzw, r19.xyzw);
                      r19.xy = r43.xy / r25.ww;
                      r19.xy = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r19.xy = r19.xy + r46.zw;
                      r19.xy = r19.xy * r46.xy;
                      r43.xy = r11.ww / r45.xz;
                      r43.zw = float2(1,1) + -r43.xy;
                      r43.zw = cmp(r19.xy >= r43.zw);
                      r43.xy = cmp(r43.xy >= r19.xy);
                      r43.xy = (int2)r43.xy | (int2)r43.zw;
                      r19.z = (int)r43.y | (int)r43.x;
                      r19.xy = saturate(r19.xy);
                      r43.xy = r19.xy * r45.xz + r45.yw;
                      r19.x = r47.y * r25.w;
                      r17.w = r47.x * r25.w + r17.w;
                      r17.w = r17.w / r19.x;
                    } else {
                      r19.z = -1;
                    }
                    r19.x = (int)r26.w | (int)r19.z;
                    if (r19.x == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.w, r8.w, l(28), t12.xxxx
                    r8.w = samp0[]..swiz;
                      r17.w = max(6.10351563e-05, r17.w);
                      r8.w = (int)r8.w & 0x0000ffff;
                      if (r5.w != 0) {
                        r19.z = (uint)r8.w;
                        r25.w = 0;
                        r26.w = 0;
                        while (true) {
                          r27.w = cmp((int)r26.w >= 8);
                          if (r27.w != 0) break;
                          r44.x = dot(icb[r26.w+0].yx, r15.xw);
                          r44.y = dot(icb[r26.w+0].xy, r7.xy);
                          r19.xy = r44.xy * r11.ww + r43.xy;
                          r19.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r17.w).x;
                          r25.w = r19.x * 0.125 + r25.w;
                          r26.w = (int)r26.w + 1;
                        }
                      } else {
                        r43.z = (uint)r8.w;
                        r25.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r43.xyz, r17.w).x;
                      }
                      r8.w = r25.w * r25.w;
                      r8.w = r8.w * r25.w;
                    } else {
                      r8.w = 1;
                    }
                    r12.w = r12.w * r8.w;
                  } else {
                    if (4 == 0) r8.w = 0; else if (4+20 < 32) {                     r8.w = (uint)r35.w << (32-(4 + 20)); r8.w = (uint)r8.w >> (32-4);                    } else r8.w = (uint)r35.w >> 20;
                    r11.w = cmp(0 < (uint)r8.w);
                    r11.w = r11.w ? r1.x : 0;
                    if (r11.w != 0) {
                      r8.w = (int)r8.w + numLights;
                      r8.w = (int)r8.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.w, r8.w, l(52), t12.xxxx
                    r11.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r8.w, l(100), t12.xyzw
                    r43.x = samp0[]..swiz;
                    r43.y = samp0[]..swiz;
                    r43.z = samp0[]..swiz;
                    r43.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r8.w, l(116), t12.xyzw
                    r44.x = samp0[]..swiz;
                    r44.y = samp0[]..swiz;
                    r44.z = samp0[]..swiz;
                    r44.w = samp0[]..swiz;
                      r17.w = abs(r13.w) * -0.200000003 + 0.400000006;
                      r19.x = cmp(r13.w < 0);
                      r17.w = r19.x ? -r17.w : r17.w;
                      r20.xyz = r2.xyz * r17.www + v6.xyz;
                      r17.w = dot(r43.xyzw, r20.xyzw);
                      r19.x = dot(r44.xyzw, r20.xyzw);
                      r19.y = cmp(r19.x < r17.w);
                      if (r19.y == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r8.w, l(68), t12.xyzw
                      r43.x = samp0[]..swiz;
                      r43.y = samp0[]..swiz;
                      r43.z = samp0[]..swiz;
                      r43.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r8.w, l(84), t12.xyzw
                      r44.x = samp0[]..swiz;
                      r44.y = samp0[]..swiz;
                      r44.z = samp0[]..swiz;
                      r44.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r8.w, l(132), t12.xyzw
                      r45.x = samp0[]..swiz;
                      r45.y = samp0[]..swiz;
                      r45.z = samp0[]..swiz;
                      r45.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r46.xyzw, r8.w, l(148), t12.xyzw
                      r46.x = samp0[]..swiz;
                      r46.y = samp0[]..swiz;
                      r46.z = samp0[]..swiz;
                      r46.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r47.xy, r8.w, l(164), t12.xyxx
                      r47.x = samp0[]..swiz;
                      r47.y = samp0[]..swiz;
                        r43.x = dot(r43.xyzw, r20.xyzw);
                        r43.y = dot(r44.xyzw, r20.xyzw);
                        r20.xy = r43.xy / r19.xx;
                        r20.xy = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                        r20.xy = r20.xy + r46.zw;
                        r20.xy = r20.xy * r46.xy;
                        r43.xy = r11.ww / r45.xz;
                        r43.zw = float2(1,1) + -r43.xy;
                        r43.zw = cmp(r20.xy >= r43.zw);
                        r43.xy = cmp(r43.xy >= r20.xy);
                        r43.xy = (int2)r43.xy | (int2)r43.zw;
                        r19.z = (int)r43.y | (int)r43.x;
                        r20.xy = saturate(r20.xy);
                        r20.xy = r20.xy * r45.xz + r45.yw;
                        r26.w = r47.y * r19.x;
                        r17.w = r47.x * r19.x + r17.w;
                        r17.w = r17.w / r26.w;
                      } else {
                        r19.z = -1;
                      }
                      r19.x = (int)r19.y | (int)r19.z;
                      if (r19.x == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.w, r8.w, l(28), t12.xxxx
                      r8.w = samp0[]..swiz;
                        r17.w = max(6.10351563e-05, r17.w);
                        r8.w = (int)r8.w & 0x0000ffff;
                        if (r5.w != 0) {
                          r19.z = (uint)r8.w;
                          r26.w = 0;
                          r27.w = 0;
                          while (true) {
                            r28.w = cmp((int)r27.w >= 8);
                            if (r28.w != 0) break;
                            r43.x = dot(icb[r27.w+0].xy, r8.xy);
                            r43.y = dot(icb[r27.w+0].yx, r8.xz);
                            r19.xy = r43.xy * r11.ww + r20.xy;
                            r19.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r17.w).x;
                            r26.w = r19.x * 0.125 + r26.w;
                            r27.w = (int)r27.w + 1;
                          }
                        } else {
                          r20.z = (uint)r8.w;
                          r26.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r17.w).x;
                        }
                        r8.w = r26.w * r26.w;
                        r8.w = r8.w * r26.w;
                      } else {
                        r8.w = 1;
                      }
                      r12.w = r12.w * r8.w;
                    }
                  }
                  r8.w = -abs(r13.w) * r2.w + 1;
                  r8.w = r8.w * r8.w;
                  r8.w = -r8.w * 0.620000005 + 0.620000005;
                  r8.w = r8.w + -abs(r13.w);
                  r8.w = r3.w * r8.w + abs(r13.w);
                  r8.w = r8.w * r12.w;
                  r35.x = r34.x;
                  r11.w = cmp(0 < r13.w);
                  r19.xyz = r8.www * r35.xyz + r16.xyz;
                  r13.w = saturate(dot(r2.xyz, r42.xyz));
                  r20.xyz = r41.xyz * r7.www + r6.xyz;
                  r7.w = dot(r20.xyz, r20.xyz);
                  r7.w = rsqrt(r7.w);
                  r20.xyz = r20.xyz * r7.www;
                  r7.w = dot(r20.xyz, r6.xyz);
                  r17.w = dot(r2.xyz, r20.xyz);
                  r20.x = abs(r17.w) * r3.z + -abs(r17.w);
                  r17.w = abs(r17.w) * r20.x + 1;
                  r20.x = r13.w * r1.y + r1.z;
                  r17.w = r17.w * r17.w;
                  r17.w = r17.w * r20.x;
                  r17.w = rcp(r17.w);
                  r13.w = r13.w * r14.w;
                  r13.w = r17.w * r13.w;
                  r12.w = r13.w * r12.w;
                  r20.xyz = r12.www * r35.xyz + r33.xyz;
                  r7.w = saturate(1 + -r7.w);
                  r7.w = log2(r7.w);
                  r7.w = 3.4000001 * r7.w;
                  r7.w = exp2(r7.w);
                  r7.w = r12.w * r7.w;
                  r41.xyz = r7.www * r35.xyz + r32.xyz;
                  r42.xyz = r8.www * r35.xyz + r31.xyz;
                  r16.xyz = r11.www ? r19.xyz : r16.xyz;
                  r31.xyz = r11.www ? r31.xyz : r42.xyz;
                  r32.xyz = r11.www ? r41.xyz : r32.xyz;
                  r33.xyz = r11.www ? r20.xyz : r33.xyz;
                }
              }
            }
            break;
            case 2 :            r19.xy = r37.zw;
            r19.z = r38.w;
            r19.xyz = -v6.xyz + r19.xyz;
            r7.w = dot(r19.xyz, r19.xyz);
            r7.w = rsqrt(r7.w);
            r20.xyz = r19.xyz * r7.www;
            r8.w = dot(r2.xyz, r20.xyz);
            r11.w = cmp(0 < abs(r8.w));
            if (r11.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r7.z, l(112), t12.yzwx
            r41.x = samp0[]..swiz;
            r41.y = samp0[]..swiz;
            r41.z = samp0[]..swiz;
            r41.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r7.z, l(128), t12.zxyw
            r42.x = samp0[]..swiz;
            r42.y = samp0[]..swiz;
            r42.z = samp0[]..swiz;
            r42.w = samp0[]..swiz;
              r43.xyz = r41.xyz;
              r43.w = r42.y;
              r11.w = dot(r43.xyzw, r18.xyzw);
              r12.w = cmp(r11.w < 1);
              if (r12.w != 0) {
                r20.xyz = float3(1,1,1);
                r12.w = 0;
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r7.z, l(172), t12.yzwx
              r44.x = samp0[]..swiz;
              r44.y = samp0[]..swiz;
              r44.z = samp0[]..swiz;
              r44.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r7.z, l(188), t12.wxyz
              r45.x = samp0[]..swiz;
              r45.y = samp0[]..swiz;
              r45.z = samp0[]..swiz;
              r45.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r46.xyzw, r7.z, l(204), t12.xyzw
              r46.x = samp0[]..swiz;
              r46.y = samp0[]..swiz;
              r46.z = samp0[]..swiz;
              r46.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.w, r7.z, l(236), t12.xxxx
              r13.w = samp0[]..swiz;
                r47.xyz = -v6.xyz + r34.yzw;
                r14.w = r37.x * r37.x;
                r17.w = dot(r47.xyz, r47.xyz);
                r14.w = r14.w / r17.w;
                r14.w = min(1, r14.w);
                r36.xy = saturate(r11.ww * r36.xz + r36.yw);
                r36.zw = r36.xy * r36.xy;
                r36.xy = r36.xy * float2(-2,-2) + float2(3,3);
                r36.xy = r36.zw * r36.xy;
                r14.w = r36.x * r14.w;
                r14.w = r14.w * r36.y;
                r38.w = r39.x;
                r36.x = dot(r38.xyzw, r18.xyzw);
                r47.xyz = r39.yzw;
                r47.w = r40.w;
                r36.y = dot(r47.xyzw, r18.xyzw);
                r21.xy = r36.xy / r11.ww;
                r11.w = cmp(r44.w < 0.00048828125);
                if (r11.w != 0) {
                  r45.y = r46.x;
                  r36.xy = saturate(abs(r21.xy) * r45.zw + r45.xy);
                  r36.zw = r36.xy * r36.xy;
                  r36.xy = r36.xy * float2(-2,-2) + float2(3,3);
                  r36.xy = r36.zw * r36.xy;
                  r11.w = r36.x * r36.y;
                } else {
                  r44.w = r45.y;
                  r36.xyzw = saturate(r44.xyzw * abs(r21.yyxx));
                  r36.xyzw = log2(r36.xyzw);
                  r36.xyzw = r45.xxxx * r36.xyzw;
                  r36.xyzw = exp2(r36.xyzw);
                  r36.xy = r36.xy + r36.zw;
                  r36.xy = log2(r36.xy);
                  r36.xy = r46.xx * r36.xy;
                  r36.xy = exp2(r36.xy);
                  r17.w = r45.z * r36.x;
                  r27.w = r45.w * r36.y + -1;
                  r17.w = r45.w * r36.y + -r17.w;
                  r17.w = saturate(r27.w / r17.w);
                  r27.w = r17.w * r17.w;
                  r17.w = r17.w * -2 + 3;
                  r11.w = r27.w * r17.w;
                }
                r12.w = r14.w * r11.w;
                r11.w = (int)r13.w & 255;
                if (r11.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyz, r7.z, l(220), t12.xyzx
                r36.x = samp0[]..swiz;
                r36.y = samp0[]..swiz;
                r36.z = samp0[]..swiz;
                  r13.w = dot(r46.yzw, r21.xyz);
                  r14.w = dot(r36.xyz, r21.xyz);
                  r36.x = frac(r13.w);
                  r36.y = frac(r14.w);
                  r11.w = (int)r11.w + -1;
                  r36.z = (uint)r11.w;
                  r20.xyz = gCookieArray.SampleLevel(samplerLinear_s, r36.xyz, 0).xyz;
                } else {
                  r20.xyz = float3(1,1,1);
                }
              }
              r34.yz = r35.yz;
              r20.xyz = r34.xyz * r20.xyz;
              r11.w = cmp(0 < r12.w);
              if (r11.w != 0) {
                if (3 == 0) r11.w = 0; else if (3+27 < 32) {                 r11.w = (uint)r35.w << (32-(3 + 27)); r11.w = (uint)r11.w >> (32-3);                } else r11.w = (uint)r35.w >> 27;
                r11.w = cmp((int)r11.w != 1);
                if (r11.w != 0) {
                  r11.w = abs(r8.w) * -0.200000003 + 0.400000006;
                  r13.w = cmp(r8.w < 0);
                  r11.w = r13.w ? -r11.w : r11.w;
                  r22.xyz = r2.xyz * r11.www + v6.xyz;
                  r41.xyz = r40.xyz;
                  r11.w = dot(r41.xyzw, r22.xyzw);
                  r13.w = dot(r43.xyzw, r22.xyzw);
                  r14.w = cmp(r13.w >= r11.w);
                  if (r14.w != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.y, r7.z, l(144), t12.xxxx
                  r42.y = samp0[]..swiz;
                    r38.w = r39.x;
                    r21.x = dot(r38.xyzw, r22.xyzw);
                    r40.xyz = r39.yzw;
                    r21.y = dot(r40.xyzw, r22.xyzw);
                    r21.xy = r21.xy / r13.ww;
                    r21.xy = saturate(r21.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                    r22.xy = r21.xy * r42.zw + r42.xy;
                    r7.z = r11.w / r13.w;
                    r7.z = max(6.10351563e-05, r7.z);
                    r11.w = (int)r35.w & 0x0000ffff;
                    if (r5.w != 0) {
                      r34.z = (uint)r11.w;
                      r13.w = 0;
                      r14.w = 0;
                      while (true) {
                        r17.w = cmp((int)r14.w >= 8);
                        if (r17.w != 0) break;
                        r21.x = dot(icb[r14.w+0].xy, r25.xy);
                        r21.y = dot(icb[r14.w+0].yx, r25.xz);
                        r34.xy = r21.xy * r37.yy + r22.xy;
                        r17.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r34.xyz, r7.z).x;
                        r13.w = r17.w * 0.125 + r13.w;
                        r14.w = (int)r14.w + 1;
                      }
                    } else {
                      r22.z = (uint)r11.w;
                      r13.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r7.z).x;
                    }
                    r7.z = r13.w * r13.w;
                    r7.z = r7.z * r13.w;
                  } else {
                    r7.z = 1;
                  }
                } else {
                  r7.z = 1;
                }
                r7.z = r12.w * r7.z;
                r11.w = cmp(0 < r7.z);
                if (r11.w != 0) {
                  r11.w = r35.x * r3.z;
                  r11.w = 0.25 * r11.w;
                  if (4 == 0) r12.w = 0; else if (4+16 < 32) {                   r12.w = (uint)r35.w << (32-(4 + 16)); r12.w = (uint)r12.w >> (32-4);                  } else r12.w = (uint)r35.w >> 16;
                  r14.w = cmp(0 < (uint)r12.w);
                  r14.w = r1.w ? r14.w : 0;
                  if (r14.w != 0) {
                    r12.w = (int)r12.w + numLights;
                    r12.w = (int)r12.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.w, r12.w, l(52), t12.xxxx
                  r14.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r12.w, l(68), t12.xyzw
                  r34.x = samp0[]..swiz;
                  r34.y = samp0[]..swiz;
                  r34.z = samp0[]..swiz;
                  r34.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r12.w, l(84), t12.xyzw
                  r36.x = samp0[]..swiz;
                  r36.y = samp0[]..swiz;
                  r36.z = samp0[]..swiz;
                  r36.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r12.w, l(100), t12.xyzw
                  r37.x = samp0[]..swiz;
                  r37.y = samp0[]..swiz;
                  r37.z = samp0[]..swiz;
                  r37.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r12.w, l(116), t12.xyzw
                  r38.x = samp0[]..swiz;
                  r38.y = samp0[]..swiz;
                  r38.z = samp0[]..swiz;
                  r38.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r12.w, l(132), t12.xyzw
                  r39.x = samp0[]..swiz;
                  r39.y = samp0[]..swiz;
                  r39.z = samp0[]..swiz;
                  r39.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r12.w, l(148), t12.xyzw
                  r40.x = samp0[]..swiz;
                  r40.y = samp0[]..swiz;
                  r40.z = samp0[]..swiz;
                  r40.w = samp0[]..swiz;
                    r17.w = abs(r8.w) * -0.200000003 + 0.400000006;
                    r21.x = cmp(r8.w < 0);
                    r17.w = r21.x ? -r17.w : r17.w;
                    r23.xyz = r2.xyz * r17.www + v6.xyz;
                    r21.x = dot(r34.xyzw, r23.xyzw);
                    r21.y = dot(r36.xyzw, r23.xyzw);
                    r17.w = dot(r37.xyzw, r23.xyzw);
                    r22.x = dot(r38.xyzw, r23.xyzw);
                    r22.y = cmp(r22.x < r17.w);
                    r21.xy = r21.xy / r22.xx;
                    r21.xy = r21.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r21.xy = r21.xy + r40.zw;
                    r21.xy = r21.xy * r40.xy;
                    r23.xy = r14.ww / r39.xz;
                    r34.xy = float2(1,1) + -r23.xy;
                    r34.xy = cmp(r21.xy >= r34.xy);
                    r23.xy = cmp(r23.xy >= r21.xy);
                    r23.xy = (int2)r23.xy | (int2)r34.xy;
                    r22.z = (int)r23.y | (int)r23.x;
                    r22.y = (int)r22.y | (int)r22.z;
                    if (r22.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.y, r12.w, l(28), t12.xxxx
                    r22.y = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.xy, r12.w, l(164), t12.xyxx
                    r23.x = samp0[]..swiz;
                    r23.y = samp0[]..swiz;
                      r21.xy = saturate(r21.xy);
                      r34.xy = r21.xy * r39.xz + r39.yw;
                      r12.w = r23.y * r22.x;
                      r17.w = r23.x * r22.x + r17.w;
                      r12.w = r17.w / r12.w;
                      r12.w = max(6.10351563e-05, r12.w);
                      r17.w = r22.y ? 0.000000 : 0;
                      if (r5.w != 0) {
                        r22.z = (uint)r17.w;
                        r21.xy = float2(0,0);
                        while (true) {
                          r23.x = cmp((int)r21.y >= 8);
                          if (r23.x != 0) break;
                          r23.x = dot(icb[r21.y+0].xy, r26.xy);
                          r23.y = dot(icb[r21.y+0].yx, r26.xz);
                          r22.xy = r23.xy * r14.ww + r34.xy;
                          r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r12.w).x;
                          r21.x = r22.x * 0.125 + r21.x;
                          r21.y = (int)r21.y + 1;
                        }
                      } else {
                        r34.z = (uint)r17.w;
                        r21.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r34.xyz, r12.w).x;
                      }
                      r12.w = r21.x * r21.x;
                      r12.w = r12.w * r21.x;
                    } else {
                      r12.w = 1;
                    }
                    r7.z = r12.w * r7.z;
                  } else {
                    if (4 == 0) r12.w = 0; else if (4+20 < 32) {                     r12.w = (uint)r35.w << (32-(4 + 20)); r12.w = (uint)r12.w >> (32-4);                    } else r12.w = (uint)r35.w >> 20;
                    r14.w = cmp(0 < (uint)r12.w);
                    r14.w = r14.w ? r1.x : 0;
                    if (r14.w != 0) {
                      r12.w = (int)r12.w + numLights;
                      r12.w = (int)r12.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.w, r12.w, l(52), t12.xxxx
                    r14.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r12.w, l(68), t12.xyzw
                    r34.x = samp0[]..swiz;
                    r34.y = samp0[]..swiz;
                    r34.z = samp0[]..swiz;
                    r34.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r12.w, l(84), t12.xyzw
                    r35.x = samp0[]..swiz;
                    r35.y = samp0[]..swiz;
                    r35.z = samp0[]..swiz;
                    r35.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r12.w, l(100), t12.xyzw
                    r36.x = samp0[]..swiz;
                    r36.y = samp0[]..swiz;
                    r36.z = samp0[]..swiz;
                    r36.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r12.w, l(116), t12.xyzw
                    r37.x = samp0[]..swiz;
                    r37.y = samp0[]..swiz;
                    r37.z = samp0[]..swiz;
                    r37.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r12.w, l(132), t12.xyzw
                    r38.x = samp0[]..swiz;
                    r38.y = samp0[]..swiz;
                    r38.z = samp0[]..swiz;
                    r38.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r12.w, l(148), t12.xyzw
                    r39.x = samp0[]..swiz;
                    r39.y = samp0[]..swiz;
                    r39.z = samp0[]..swiz;
                    r39.w = samp0[]..swiz;
                      r17.w = abs(r8.w) * -0.200000003 + 0.400000006;
                      r21.y = cmp(r8.w < 0);
                      r17.w = r21.y ? -r17.w : r17.w;
                      r24.xyz = r2.xyz * r17.www + v6.xyz;
                      r22.x = dot(r34.xyzw, r24.xyzw);
                      r22.y = dot(r35.xyzw, r24.xyzw);
                      r17.w = dot(r36.xyzw, r24.xyzw);
                      r21.y = dot(r37.xyzw, r24.xyzw);
                      r22.z = cmp(r21.y < r17.w);
                      r22.xy = r22.xy / r21.yy;
                      r22.xy = r22.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r22.xy = r22.xy + r39.zw;
                      r22.xy = r22.xy * r39.xy;
                      r23.xy = r14.ww / r38.xz;
                      r24.xy = float2(1,1) + -r23.xy;
                      r24.xy = cmp(r22.xy >= r24.xy);
                      r23.xy = cmp(r23.xy >= r22.xy);
                      r23.xy = (int2)r23.xy | (int2)r24.xy;
                      r23.x = (int)r23.y | (int)r23.x;
                      r22.z = (int)r22.z | (int)r23.x;
                      if (r22.z == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.z, r12.w, l(28), t12.xxxx
                      r22.z = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.xy, r12.w, l(164), t12.xyxx
                      r23.x = samp0[]..swiz;
                      r23.y = samp0[]..swiz;
                        r22.xy = saturate(r22.xy);
                        r24.xy = r22.xy * r38.xz + r38.yw;
                        r12.w = r23.y * r21.y;
                        r17.w = r23.x * r21.y + r17.w;
                        r12.w = r17.w / r12.w;
                        r12.w = max(6.10351563e-05, r12.w);
                        r17.w = r22.z ? 0.000000 : 0;
                        if (r5.w != 0) {
                          r22.z = (uint)r17.w;
                          r21.y = 0;
                          r23.x = 0;
                          while (true) {
                            r23.y = cmp((int)r23.x >= 8);
                            if (r23.y != 0) break;
                            r34.x = dot(icb[r23.x+0].xy, r27.xy);
                            r34.y = dot(icb[r23.x+0].yx, r27.xz);
                            r22.xy = r34.xy * r14.ww + r24.xy;
                            r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r12.w).x;
                            r21.y = r22.x * 0.125 + r21.y;
                            r23.x = (int)r23.x + 1;
                          }
                        } else {
                          r24.z = (uint)r17.w;
                          r21.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r12.w).x;
                        }
                        r12.w = r21.y * r21.y;
                        r12.w = r12.w * r21.y;
                      } else {
                        r12.w = 1;
                      }
                      r7.z = r12.w * r7.z;
                    }
                  }
                  r12.w = -abs(r8.w) * r2.w + 1;
                  r12.w = r12.w * r12.w;
                  r12.w = -r12.w * 0.620000005 + 0.620000005;
                  r12.w = r12.w + -abs(r8.w);
                  r12.w = r3.w * r12.w + abs(r8.w);
                  r12.w = r12.w * r7.z;
                  r14.w = cmp(0 < r8.w);
                  r22.xyz = r12.www * r20.xyz + r16.xyz;
                  r8.w = saturate(r8.w);
                  r19.xyz = r19.xyz * r7.www + r6.xyz;
                  r7.w = dot(r19.xyz, r19.xyz);
                  r7.w = rsqrt(r7.w);
                  r19.xyz = r19.xyz * r7.www;
                  r7.w = dot(r19.xyz, r6.xyz);
                  r17.w = dot(r2.xyz, r19.xyz);
                  r19.x = abs(r17.w) * r3.z + -abs(r17.w);
                  r17.w = abs(r17.w) * r19.x + 1;
                  r19.x = r8.w * r1.y + r1.z;
                  r17.w = r17.w * r17.w;
                  r17.w = r17.w * r19.x;
                  r17.w = rcp(r17.w);
                  r8.w = r8.w * r11.w;
                  r8.w = r17.w * r8.w;
                  r7.z = r8.w * r7.z;
                  r19.xyz = r7.zzz * r20.xyz + r33.xyz;
                  r7.w = saturate(1 + -r7.w);
                  r7.w = log2(r7.w);
                  r7.w = 3.4000001 * r7.w;
                  r7.w = exp2(r7.w);
                  r7.z = r7.z * r7.w;
                  r23.xyz = r7.zzz * r20.xyz + r32.xyz;
                  r20.xyz = r12.www * r20.xyz + r31.xyz;
                  r16.xyz = r14.www ? r22.xyz : r16.xyz;
                  r31.xyz = r14.www ? r31.xyz : r20.xyz;
                  r32.xyz = r14.www ? r23.xyz : r32.xyz;
                  r33.xyz = r14.www ? r19.xyz : r33.xyz;
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
    r28.xyz = r31.xyz;
    r29.xyz = r32.xyz;
    r30.xyz = r33.xyz;
    r3.y = (int)r3.y + 32;
  }
  r1.x = log2(r4.w);
  r1.x = 3.4000001 * r1.x;
  r1.x = exp2(r1.x);
  r1.y = 1 + -r0.w;
  r1.w = r1.x * r1.y + r0.w;
  r0.xyz = r1.www * r0.xyz;
  r2.xyz = backscatterTint.xyz * r0.xyz;
  r2.xyz = r28.xyz * r2.xyz;
  r0.xyz = r9.yzw * r0.xyz + r2.xyz;
  r2.xyz = float3(1,1,1) + -r5.xyz;
  r2.xyz = r29.xyz * r2.xyz;
  r2.xyz = r30.xyz * r5.xyz + r2.xyz;
  r0.xyz = r2.xyz + r0.xyz;
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
    r2.xyz = r2.xyz * r1.www;
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
    r3.xyz = r3.xyz * r1.www + -r0.xyz;
    r2.xyz = r0.www * r3.xyz + r0.xyz;
  }
  r0.xyz = relHDRExposure.yyy * r2.xyz;
  r2.xyz = cmp(r0.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r0.xyz = r2.xyz ? r0.xyz : 0;
  r0.xyz = min(float3(65024,65024,64512), r0.xyz);
  r1.xyz = max(float3(0,0,0), r0.xyz);
  r2.xyzw = cmp(r1.xyzw == float4(0,0,0,0));
  r2.xy = r2.zw ? r2.xy : 0;
  r2.x = r2.y ? r2.x : 0;
  if (r2.x == 0) {
    r2.xy = (uint2)v0.xy;
    // Needs manual fix for instruction:
    imm_atomic_iadd r2.z, u6, r2.xyxx, l(1)
    InterlockedAdd(dest, imm_value, orig_value);
    r2.w = cmp((uint)r2.z < oitMaxEntries);
    if (r2.w != 0) {
      r2.w = max(r1.y, r1.z);
      r2.w = max(r2.w, r1.x);
      r2.w = (int)r2.w & 0x7f800000;
      r2.w = (int)r2.w + 0x00800000;
      r1.xyz = r2.www + r1.xyz;
      if (8 == 0) r1.x = 0; else if (8+15 < 32) {       r1.x = (uint)r1.x << (32-(8 + 15)); r1.x = (uint)r1.x >> (32-8);      } else r1.x = (uint)r1.x >> 15;
      r1.yz = (uint2)r1.yz >> int2(15,15);
      bitmask.y = ((~(-1 << 8)) << 8) & 0xffffffff;  r1.y = (((uint)r1.y << 8) & bitmask.y) | ((uint)0 & ~bitmask.y);
      bitmask.z = ((~(-1 << 8)) << 16) & 0xffffffff;  r1.z = (((uint)r1.z << 16) & bitmask.z) | ((uint)0 & ~bitmask.z);
      r1.x = (int)r1.y + (int)r1.x;
      r1.x = (int)r1.z + (int)r1.x;
      r1.y = (uint)r2.w << 1;
      r3.xzw = (int3)r1.yyy + (int3)r1.xxx;
      r1.x = min(1, r1.w);
      r1.x = 2046 * r1.x;
      r1.x = (uint)r1.x;
      r1.y = (uint)v0.z << 2;
      r1.x = (int)r1.x & 2046;
      bitmask.x = ((~(-1 << 11)) << 0) & 0xffffffff;  r1.x = (((uint)r1.x << 0) & bitmask.x) | ((uint)r1.y & ~bitmask.x);
      bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r3.y = (((uint)zFeatherComputeSprites << 0) & bitmask.y) | ((uint)r1.x & ~bitmask.y);
    // No code for instruction (needs manual fix):
        store_uav_typed u7.xyzw, r2.xyzz, r3.xyzw
      r1.x = -1;
    } else {
      r1.x = 0;
    }
  } else {
    r1.x = -1;
  }
  r0.w = r1.w;
  o0.xyzw = r1.xxxx ? float4(0,0,0,0) : r0.xyzw;
  return;
}