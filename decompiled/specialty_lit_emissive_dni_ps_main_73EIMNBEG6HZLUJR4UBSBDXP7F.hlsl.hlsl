// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:41:31 2021

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
  float2 rotateUVs : packoffset(c12.z);
  float2 scrollUVs : packoffset(c13);
  float2 scaleUVs : packoffset(c13.z);
  float2 offsetUVs : packoffset(c14);
  float2 zoomUVs : packoffset(c14.z);
  float zoomRate : packoffset(c15);
  float layerDepth : packoffset(c15.y);
  bool clampU : packoffset(c15.z);
  bool clampV : packoffset(c15.w);
  float hdrScale : packoffset(c16);
  float emissiveFalloffPower : packoffset(c16.y);
  float3 emissiveTint1 : packoffset(c17);
  float revealDriver : packoffset(c17.w);
  bool invertFalloff : packoffset(c18);
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
SamplerState revealSampler_s : register(s7);
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
Texture2D<float4> revealMap : register(t30);
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45,r46;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = colorMap.Sample(colorSampler_s, v2.xy).xyzw;
  r1.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r1.xyz = r0.www * r1.xyz + float3(1,1,1);
  r0.xyz = r1.xyz * r0.xyz;
  r0.xyzw = v1.xyzw * r0.xyzw;
  r1.xyz = specColorMap.Sample(specColorSampler_s, v2.xy).xyz;
  r1.w = aoMap.Sample(aoSampler_s, v2.xy).x;
  r2.x = glossMap.Sample(specColorSampler_s, v2.xy).x;
  r2.y = glossRange.y + -glossRange.x;
  r2.x = r2.x * r2.y + glossRange.x;
  r2.x = saturate(0.0588235296 * r2.x);
  r2.yzw = normalMap.Sample(normalSampler_s, v2.xy).xyz;
  r2.yzw = float3(-0.5,-0.5,-0) + r2.yzw;
  r2.yzw = baseNormalHeight * r2.yzw + float3(0.5,0.5,0);
  r2.yz = r2.yz * float2(1.9921875,1.9921875) + float2(-1,-1);
  r3.x = dot(r2.yz, r2.yz);
  r3.x = 1 + -r3.x;
  r3.x = max(0, r3.x);
  r3.x = sqrt(r3.x);
  r2.w = r2.w * r2.w;
  r2.w = 0.333333343 * r2.w;
  r2.w = min(1, r2.w);
  r3.y = v8.x ? 1 : -1;
  r3.z = dot(v4.xyz, v4.xyz);
  r3.z = rsqrt(r3.z);
  r4.xyz = v4.xyz * r3.zzz;
  r4.xyz = r4.xyz * r3.yyy;
  r3.z = dot(v5.xyz, v5.xyz);
  r3.z = rsqrt(r3.z);
  r5.xyz = v5.xyz * r3.zzz;
  r5.xyz = r5.xyz * r3.yyy;
  r3.z = dot(v6.xyz, v6.xyz);
  r3.z = rsqrt(r3.z);
  r6.xyz = v6.xyz * r3.zzz;
  r6.xyz = r6.xyz * r3.yyy;
  r2.x = -17 * r2.x;
  r2.x = exp2(r2.x);
  r2.x = r2.w + r2.x;
  r2.x = log2(r2.x);
  r2.x = -0.0588235296 * r2.x;
  r2.x = max(0, r2.x);
  r6.xyz = r6.xyz * r2.zzz;
  r2.yzw = r5.xyz * r2.yyy + r6.xyz;
  r2.yzw = r4.xyz * r3.xxx + r2.yzw;
  r3.x = dot(r2.yzw, r2.yzw);
  r3.x = rsqrt(r3.x);
  r2.yzw = r3.xxx * r2.yzw;
  r3.x = cmp(v0.z >= 0.984375);
  r3.z = 1.01587307 * v0.z;
  r3.w = v0.z * 64 + -63;
  r3.x = r3.x ? r3.w : r3.z;
  r3.x = max(9.99999994e-09, r3.x);
  r3.x = rcp(r3.x);
  r3.zw = (uint2)v0.yx;
  r5.xyz = ddx_coarse(v7.xyz);
  r6.xyz = ddy_coarse(v7.xyz);
  r4.w = numRefProbes + numLights;
  r7.xyz = eyeOffset.xyz + v7.xyz;
  r3.x = 0.0078125 * r3.x;
  r3.x = min(15, r3.x);
  r3.x = (uint)r3.x;
  r8.xy = (uint2)r3.wz >> int2(6,6);
  r8.z = (uint)r3.x << 4;
  r3.x = numStaticDecals & -32;
  r5.w = (int)-r3.x + numStaticDecals;
  r9.xy = float2(0,0);
  r10.w = 0;
  r7.w = 1;
  r11.xyz = float3(0,0,0);
  r12.xyz = float3(0,0,0);
  r13.xyz = float3(0,0,0);
  r6.w = 0;
  r8.w = 0;
  r9.w = 0;
  while (true) {
    r11.w = cmp((uint)r9.w >= numStaticDecals);
    if (r11.w != 0) break;
    r9.z = (uint)r9.w >> 5;
    r10.xyz = (int3)r8.xyz + (int3)r9.xyz;
    r9.z = visibleDecals.Load(r10.xyzw).x;
    r10.x = cmp((int)r3.x == (int)r9.w);
    if (r5.w == 0) r10.y = 0; else if (r5.w+0 < 32) {     r10.y = (uint)r9.z << (32-(r5.w + 0)); r10.y = (uint)r10.y >> (32-r5.w);    } else r10.y = (uint)r9.z >> 0;
    r9.z = r10.x ? r10.y : r9.z;
    r10.x = (int)r4.w + (int)r9.w;
    r14.xyz = r11.xyz;
    r15.xyz = r12.xyz;
    r16.xyz = r13.xyz;
    r10.y = r6.w;
    r10.z = r8.w;
    r11.w = r9.z;
    while (true) {
      if (r11.w == 0) break;
      r12.w = firstbitlow((uint)r11.w);
      r13.w = 1 << (int)r12.w;
      r14.w = (int)r11.w & (int)r13.w;
      if (r14.w != 0) {
        r11.w = (int)r11.w ^ (int)r13.w;
        r13.w = (int)r10.x + (int)r12.w;
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
        r17.xyz = -v7.xyz + r17.xyz;
        r18.z = r17.w;
        r17.xyz = cmp(abs(r17.xyz) < r18.zxy);
        r13.w = r17.y ? r17.x : 0;
        r13.w = r17.z ? r13.w : 0;
        if (r13.w != 0) {
          r12.w = (int)r9.w + (int)r12.w;
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
          r13.w = dot(r21.xyz, v4.xyz);
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
              r24.x = dot(r5.xyz, r23.xyz);
              r24.y = dot(r5.xyz, r22.xyz);
              r25.x = dot(r6.xyz, r23.xyz);
              r25.y = dot(r6.xyz, r22.xyz);
              r20.xy = r20.yz * float2(0.5,-0.5) + float2(0.5,0.5);
              r24.xyz = float3(0.5,-0.5,0.5) * r24.xyx;
              r25.xyz = float3(0.5,-0.5,0.5) * r25.xyx;
              r20.zw = (int2)r18.yz & int2(65535,65535);
              if (r20.z != 0) {
                if (4 == 0) r13.w = 0; else if (4+24 < 32) {                 r13.w = (uint)r18.w << (32-(4 + 24)); r13.w = (uint)r13.w >> (32-4);                } else r13.w = (uint)r18.w >> 24;
                r13.w = 1 << (int)r13.w;
                r14.w = (uint)r18.w >> 28;
                r14.w = 1 << (int)r14.w;
                r15.w = cmp((int)r20.z == 4);
                if (r15.w != 0) {
                  r15.w = (int)r18.w & 4095;
                  if (12 == 0) r16.w = 0; else if (12+12 < 32) {                   r16.w = (uint)r18.w << (32-(12 + 12)); r16.w = (uint)r16.w >> (32-12);                  } else r16.w = (uint)r18.w >> 12;
                  r21.w = (int)r19.w & 1023;
                  r26.xz = (uint2)r13.ww;
                  r26.y = (uint)r14.w;
                  r27.xy = r20.xy * r26.zy + float2(0.5,0.5);
                  r27.zw = float2(-0.5,-0.5) + r26.zy;
                  r27.xy = min(r27.xy, r27.zw);
                  r28.x = (uint)r15.w;
                  r28.y = (uint)r16.w;
                  r27.xy = r28.xy + r27.xy;
                  r27.xy = invBcTexSizes.xy * r27.xy;
                  r27.z = (uint)r21.w;
                  r28.xyz = invBcTexSizes.xyx * r24.zyz;
                  r28.xyz = r28.xyz * r26.xyz;
                  r29.xyz = invBcTexSizes.xyx * r25.zyz;
                  r26.xyz = r29.xyz * r26.xyz;
                  r26.xyzw = materialTexBC7.SampleGrad(samplerLinearClamp_s, r27.xyz, r28.xyzx, r26.xyzx).xyzw;
                } else {
                  r15.w = cmp((int)r20.z == 1);
                  if (r15.w != 0) {
                    r15.w = (int)r18.w & 4095;
                    if (12 == 0) r16.w = 0; else if (12+12 < 32) {                     r16.w = (uint)r18.w << (32-(12 + 12)); r16.w = (uint)r16.w >> (32-12);                    } else r16.w = (uint)r18.w >> 12;
                    r18.w = (int)r19.w & 1023;
                    r27.xz = (uint2)r13.ww;
                    r27.y = (uint)r14.w;
                    r28.xy = r20.xy * r27.zy + float2(0.5,0.5);
                    r28.zw = float2(-0.5,-0.5) + r27.zy;
                    r28.xy = min(r28.xy, r28.zw);
                    r29.x = (uint)r15.w;
                    r29.y = (uint)r16.w;
                    r28.xy = r29.xy + r28.xy;
                    r28.xy = invBcTexSizes.zw * r28.xy;
                    r28.z = (uint)r18.w;
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
              r14.w = cmp(r18.x != 1.000000);
              r15.w = r13.w + r17.w;
              r15.w = saturate(r15.w * r18.x + -r18.x);
              r13.w = r14.w ? r15.w : r13.w;
              if (r20.w != 0) {
                if (4 == 0) r14.w = 0; else if (4+24 < 32) {                 r14.w = (uint)r19.y << (32-(4 + 24)); r14.w = (uint)r14.w >> (32-4);                } else r14.w = (uint)r19.y >> 24;
                r14.w = 1 << (int)r14.w;
                r15.w = (uint)r19.y >> 28;
                r15.w = 1 << (int)r15.w;
                r16.w = cmp((int)r20.w == 2);
                if (r16.w != 0) {
                  r16.w = (int)r19.y & 4095;
                  if (12 == 0) r18.x = 0; else if (12+12 < 32) {                   r18.x = (uint)r19.y << (32-(12 + 12)); r18.x = (uint)r18.x >> (32-12);                  } else r18.x = (uint)r19.y >> 12;
                  if (10 == 0) r18.w = 0; else if (10+20 < 32) {                   r18.w = (uint)r19.w << (32-(10 + 20)); r18.w = (uint)r18.w >> (32-10);                  } else r18.w = (uint)r19.w >> 20;
                  r26.xz = (uint2)r14.ww;
                  r26.y = (uint)r15.w;
                  r27.xy = r20.xy * r26.zy + float2(0.5,0.5);
                  r27.zw = float2(-0.5,-0.5) + r26.zy;
                  r27.xy = min(r27.xy, r27.zw);
                  r28.x = (uint)r16.w;
                  r28.y = (uint)r18.x;
                  r27.xy = r28.xy + r27.xy;
                  r27.xy = invMaskTexSizes.xy * r27.xy;
                  r27.z = (uint)r18.w;
                  r28.xyz = invMaskTexSizes.xyx * r24.zyz;
                  r28.xyz = r28.xyz * r26.xyz;
                  r29.xyz = invMaskTexSizes.xyx * r25.zyz;
                  r26.xyz = r29.xyz * r26.xyz;
                  r16.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r27.xyz, r28.x, r26.x).x;
                } else {
                  r17.w = cmp((int)r20.w == 4);
                  if (r17.w != 0) {
                    r17.w = (int)r19.y & 4095;
                    if (12 == 0) r18.x = 0; else if (12+12 < 32) {                     r18.x = (uint)r19.y << (32-(12 + 12)); r18.x = (uint)r18.x >> (32-12);                    } else r18.x = (uint)r19.y >> 12;
                    if (10 == 0) r18.w = 0; else if (10+20 < 32) {                     r18.w = (uint)r19.w << (32-(10 + 20)); r18.w = (uint)r18.w >> (32-10);                    } else r18.w = (uint)r19.w >> 20;
                    r26.xz = (uint2)r14.ww;
                    r26.y = (uint)r15.w;
                    r20.zw = r20.xy * r26.zy + float2(0.5,0.5);
                    r27.xy = float2(-0.5,-0.5) + r26.zy;
                    r20.zw = min(r27.xy, r20.zw);
                    r27.x = (uint)r17.w;
                    r27.yz = (uint2)r18.xw;
                    r20.zw = r27.xy + r20.zw;
                    r27.xy = invBcTexSizes.xy * r20.zw;
                    r28.xyz = invBcTexSizes.xyx * r24.zyz;
                    r28.xyz = r28.xyz * r26.xyz;
                    r29.xyz = invBcTexSizes.xyx * r25.zyz;
                    r26.xyz = r29.xyz * r26.xyz;
                    r16.w = materialTexBC7.SampleGrad(samplerLinearClamp_s, r27.xyz, r28.x, r26.x).x;
                  } else {
                    r17.w = (int)r19.y & 4095;
                    if (12 == 0) r18.x = 0; else if (12+12 < 32) {                     r18.x = (uint)r19.y << (32-(12 + 12)); r18.x = (uint)r18.x >> (32-12);                    } else r18.x = (uint)r19.y >> 12;
                    if (10 == 0) r18.w = 0; else if (10+20 < 32) {                     r18.w = (uint)r19.w << (32-(10 + 20)); r18.w = (uint)r18.w >> (32-10);                    } else r18.w = (uint)r19.w >> 20;
                    r26.xz = (uint2)r14.ww;
                    r26.y = (uint)r15.w;
                    r20.zw = r20.xy * r26.zy + float2(0.5,0.5);
                    r27.xy = float2(-0.5,-0.5) + r26.zy;
                    r20.zw = min(r27.xy, r20.zw);
                    r27.x = (uint)r17.w;
                    r27.yz = (uint2)r18.xw;
                    r20.zw = r27.xy + r20.zw;
                    r27.xy = invBcTexSizes.zw * r20.zw;
                    r28.xyz = invBcTexSizes.zwz * r24.zyz;
                    r28.xyz = r28.xyz * r26.xyz;
                    r29.xyz = invBcTexSizes.zwz * r25.zyz;
                    r26.xyz = r29.xyz * r26.xyz;
                    r16.w = materialTexBC3.SampleGrad(samplerLinearClamp_s, r27.xyz, r28.x, r26.x).x;
                  }
                }
                r26.xyz = r16.www * float3(0.959999979,0.959999979,0.959999979) + float3(0.0399999991,0.0399999991,0.0399999991);
                r14.w = saturate(1 + -r16.w);
                r17.xyz = r17.xyz * r14.www;
              } else {
                r26.xyz = float3(0.0399999991,0.0399999991,0.0399999991);
              }
              r18.xy = (uint2)r18.zy >> int2(16,16);
              if (r18.x != 0) {
                r14.w = cmp((int)r18.x == 2);
                if (r14.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r12.w, r12.w, l(112), t36.xxxx
                r12.w = samp0[]..swiz;
                  if (4 == 0) r18.z = 0; else if (4+24 < 32) {                   r18.z = (uint)r19.z << (32-(4 + 24)); r18.z = (uint)r18.z >> (32-4);                  } else r18.z = (uint)r19.z >> 24;
                  if (12 == 0) r18.w = 0; else if (12+12 < 32) {                   r18.w = (uint)r19.z << (32-(12 + 12)); r18.w = (uint)r18.w >> (32-12);                  } else r18.w = (uint)r19.z >> 12;
                  r14.w = 1 << (int)r18.z;
                  r15.w = (uint)r19.z >> 28;
                  r15.w = 1 << (int)r15.w;
                  r16.w = (int)r19.z & 4095;
                  r12.w = (int)r12.w & 1023;
                  r27.xz = (uint2)r14.ww;
                  r27.y = (uint)r15.w;
                  r19.yz = r20.xy * r27.zy + float2(0.5,0.5);
                  r20.zw = float2(-0.5,-0.5) + r27.zy;
                  r19.yz = min(r20.zw, r19.yz);
                  r28.x = (uint)r16.w;
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
                  r14.w = cmp((int)r18.x == 6);
                  r12.w = r14.w ? 0 : 1;
                }
              } else {
                r12.w = 1;
              }
              r12.w = saturate(0.764705896 * r12.w);
              if (r18.y != 0) {
                r14.w = cmp((int)r18.y == 3);
                if (r14.w != 0) {
                  if (4 == 0) r18.x = 0; else if (4+24 < 32) {                   r18.x = (uint)r19.x << (32-(4 + 24)); r18.x = (uint)r18.x >> (32-4);                  } else r18.x = (uint)r19.x >> 24;
                  if (12 == 0) r18.y = 0; else if (12+12 < 32) {                   r18.y = (uint)r19.x << (32-(12 + 12)); r18.y = (uint)r18.y >> (32-12);                  } else r18.y = (uint)r19.x >> 12;
                  if (10 == 0) r18.z = 0; else if (10+10 < 32) {                   r18.z = (uint)r19.w << (32-(10 + 10)); r18.z = (uint)r18.z >> (32-10);                  } else r18.z = (uint)r19.w >> 10;
                  r14.w = 1 << (int)r18.x;
                  r15.w = (uint)r19.x >> 28;
                  r15.w = 1 << (int)r15.w;
                  r16.w = (int)r19.x & 4095;
                  r19.xz = (uint2)r14.ww;
                  r19.y = (uint)r15.w;
                  r18.xw = r20.xy * r19.xy + float2(0.5,0.5);
                  r20.xy = float2(-0.5,-0.5) + r19.zy;
                  r18.xw = min(r20.xy, r18.xw);
                  r20.x = (uint)r16.w;
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
                r14.w = dot(r18.xy, r18.xy);
                r14.w = 1 + -r14.w;
                r14.w = max(0, r14.w);
                r14.w = sqrt(r14.w);
                r15.w = r18.z * r18.z;
                r15.w = 0.333333343 * r15.w;
                r15.w = min(1, r15.w);
                r16.w = dot(r23.xyz, r23.xyz);
                r16.w = rsqrt(r16.w);
                r19.xyz = r23.xyz * r16.www;
                r16.w = dot(-r22.xyz, -r22.xyz);
                r16.w = rsqrt(r16.w);
                r20.xyz = -r22.xyz * r16.www;
                r21.xyz = r21.xyz * r3.yyy;
                r19.xyz = r19.xyz * r3.yyy;
                r20.xyz = r20.xyz * r3.yyy;
                r16.w = -17 * r12.w;
                r16.w = exp2(r16.w);
                r15.w = r16.w + r15.w;
                r15.w = log2(r15.w);
                r15.w = -0.0588235296 * r15.w;
                r12.w = max(0, r15.w);
                r18.yzw = r20.xyz * r18.yyy;
                r18.xyz = r19.xyz * r18.xxx + r18.yzw;
                r18.xyz = r21.xyz * r14.www + r18.xyz;
                r14.w = dot(r18.xyz, r18.xyz);
                r14.w = rsqrt(r14.w);
                r18.xyz = r18.xyz * r14.www;
                r14.w = 1 + -r13.w;
                r19.xyz = r15.xyz * r14.www;
                r15.xyz = r18.xyz * r13.www + r19.xyz;
              }
              r14.w = 1 + -r13.w;
              r18.xyz = r14.xyz * r14.www;
              r14.xyz = r17.xyz * r13.www + r18.xyz;
              r17.xyz = r16.xyz * r14.www;
              r16.xyz = r26.xyz * r13.www + r17.xyz;
              r10.y = r10.y * r14.w + r13.w;
              r14.w = r14.w * r10.z;
              r10.z = r12.w * r13.w + r14.w;
            }
          }
        }
      }
    }
    r11.xyz = r14.xyz;
    r12.xyz = r15.xyz;
    r13.xyz = r16.xyz;
    r6.w = r10.y;
    r8.w = r10.z;
    r9.w = (int)r9.w + 32;
  }
  r6.w = saturate(r6.w);
  r3.x = 1 + -r6.w;
  r0.xyz = r0.xyz * r3.xxx + r11.xyz;
  o0.w = r0.w * r3.x + r6.w;
  r2.yzw = r2.yzw * r3.xxx + r12.xyz;
  r0.w = dot(r2.yzw, r2.yzw);
  r0.w = rsqrt(r0.w);
  r5.xyz = r2.yzw * r0.www;
  r2.y = r2.x * r3.x + r8.w;
  r1.xyz = r1.xyz * r3.xxx + r13.xyz;
  r0.w = dot(-v7.xyz, -v7.xyz);
  r0.w = rsqrt(r0.w);
  r6.xyz = -v7.xyz * r0.www;
  r3.x = dot(r6.xyz, v5.xyz);
  r3.y = dot(r6.xyz, v6.xyz);
  r2.z = dot(r6.xyz, v4.xyz);
  r2.w = cmp(0 < r2.z);
  r3.xy = -r3.xy / r2.zz;
  r2.zw = r2.ww ? r3.xy : 0;
  r3.xy = float2(-0.5,-0.5) + v2.xy;
  r4.w = 9.99999975e-06 + layerDepth;
  r2.zw = r4.ww * r2.zw;
  r2.zw = scaleUVs.xy * r2.zw;
  r2.zw = r3.xy * scaleUVs.xy + r2.zw;
  r2.zw = offsetUVs.xy * scaleUVs.xy + r2.zw;
  r3.x = rotateUVs.y * gameTime.w + 1;
  r3.x = rotateUVs.x * r3.x;
  r3.x = 0.0174532924 * r3.x;
  sincos(r3.x, r3.x, r9.x);
  r9.y = r9.x;
  r9.z = r3.x;
  r10.x = dot(r9.yz, r2.zw);
  r9.x = -r3.x;
  r10.y = dot(r9.xy, r2.zw);
  r2.zw = gameTime.ww * scrollUVs.xy;
  r2.zw = r2.zw * scaleUVs.xy + r10.xy;
  r3.x = gameTime.w * zoomRate;
  r3.x = cos(r3.x);
  r3.x = r3.x * 0.5 + 0.5;
  r3.x = 1 + -r3.x;
  r3.y = zoomUVs.y + -zoomUVs.x;
  r3.x = r3.x * r3.y + zoomUVs.x;
  r2.zw = r2.zw / r3.xx;
  r2.zw = float2(0.5,0.5) + r2.zw;
  r3.xy = saturate(r2.zw);
  r2.zw = clampU ? r3.xy : r2.zw;
  r3.x = saturate(dot(r6.xyz, r4.xyz));
  r4.xyzw = emissiveMap.Sample(colorSampler_s, r2.zw).xyzw;
  r4.xyz = emissiveTint1.xyz * r4.xyz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r2.z, v3.x, l(4), t4.xxxx
r2.z = samp0[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r2.z, r2.z, l(16), t0.xxxx
r2.z = samp0[]..swiz;
  r2.w = revealMap.Sample(revealSampler_s, v2.xy).x;
  r2.z = saturate(0.998000026 * r2.z);
  r3.y = saturate(-alphaRevealParms.x * 0.5 + r2.z);
  r6.w = -r3.y + r2.z;
  r3.y = -r3.y + r2.w;
  r6.w = 1 / r6.w;
  r3.y = saturate(r6.w * r3.y);
  r6.w = r3.y * -2 + 3;
  r3.y = r3.y * r3.y;
  r3.y = r6.w * r3.y;
  r6.w = saturate(alphaRevealParms.x * 0.5 + r2.z);
  r6.w = r6.w + -r2.z;
  r2.z = r2.w + -r2.z;
  r2.w = 1 / r6.w;
  r2.z = saturate(r2.z * r2.w);
  r2.w = r2.z * -2 + 3;
  r2.z = r2.z * r2.z;
  r2.z = -r2.w * r2.z + 1;
  r2.z = r3.y * r2.z;
  r2.z = log2(r2.z);
  r2.z = alphaRevealParms.y * r2.z;
  r2.z = exp2(r2.z);
  r2.w = 0.200000003 + r2.z;
  r2.w = min(1, r2.w);
  r2.w = r4.w * r2.w;
  r9.xyz = emissiveTint1.xyz * r2.www;
  r4.xyz = saturate(r4.xyz * r2.zzz + r9.xyz);
  r2.z = log2(r3.x);
  r2.z = emissiveFalloffPower * r2.z;
  r2.z = exp2(r2.z);
  r2.w = 1 + -r3.x;
  r2.w = log2(r2.w);
  r2.w = emissiveFalloffPower * r2.w;
  r2.w = exp2(r2.w);
  r2.z = invertFalloff ? r2.w : r2.z;
  r2.w = cmp(emissiveFalloffPower == 0.000000);
  r2.z = r2.w ? 1 : r2.z;
  r2.z = hdrScale * r2.z;
  r4.xyz = r4.xyz * r2.zzz;
  r2.z = cmp(isDepthHack != 0);
  r3.xy = (uint2)r3.zw;
  r2.w = dot(r3.yx, float2(0.0671105608,0.00583714992));
  r2.w = frac(r2.w);
  r2.w = 52.9829178 * r2.w;
  r2.w = frac(r2.w);
  r2.w = r2.w * 6.28318548 + gameTick.w;
  sincos(r2.w, r9.x, r10.x);
  r2.w = dot(r3.xy, float2(0.0671105608,0.00583714992));
  r2.w = frac(r2.w);
  r2.w = 52.9829178 * r2.w;
  r2.w = frac(r2.w);
  r2.w = r2.w * 6.28318548 + gameTick.w;
  sincos(r2.w, r3.x, r11.x);
  r2.x = saturate(dot(r5.xyz, r6.xyz));
  r2.w = dot(-r6.xyz, r5.xyz);
  r2.w = r2.w + r2.w;
  r12.xyz = r5.xyz * -r2.www + -r6.xyz;
  r2.w = 17 * r2.y;
  r2.w = exp2(r2.w);
  r2.w = 2 + r2.w;
  r2.w = 2 / r2.w;
  r3.y = sqrt(r2.w);
  r3.z = sqrt(r3.y);
  r3.z = r3.z * 0.5 + 0.5;
  r3.z = r3.z * r3.z;
  r3.w = 0.5 * r3.z;
  r3.z = -r3.z * 0.5 + 1;
  r4.w = r2.x * r3.z + r3.w;
  r3.zw = r4.ww * r3.zw;
  r4.w = dot(r5.xyz, sunConstants.wldDir.xyz);
  r6.w = saturate(r4.w);
  r8.w = cmp(0 >= r6.w);
  if (r8.w != 0) {
    r9.z = 0;
  }
  if (r8.w == 0) {
    r11.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v7.yyy;
    r11.yzw = v7.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r11.yzw;
    r11.yzw = v7.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r11.yzw;
    r11.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r11.yzw;
    r8.w = -sunConstants.splitDepthOffset + r11.w;
    r8.w = -r8.w * 6.10351563e-05 + 1;
    r9.w = saturate(r8.w);
    r9.w = cmp(r8.w == r9.w);
    if (r9.w != 0) {
      r9.w = 0;
      r10.w = 0;
      while (true) {
        r13.x = cmp(r9.w >= 3);
        if (r13.x != 0) break;
        r13.x = (uint)r9.w;
        r13.yz = -sunConstants.splitPinTransform[r13.x].xy + r11.yz;
        r13.y = max(abs(r13.y), abs(r13.z));
        r10.w = sunConstants.splitPinTransform[r13.x].z * r13.y;
        r13.x = cmp(r10.w < 1);
        if (r13.x != 0) {
          break;
        }
        r9.w = 1 + r9.w;
        r10.w = 0;
      }
    } else {
      r9.w = 3;
      r10.w = 0;
    }
    r13.x = cmp(r9.w >= 3);
    if (r13.x != 0) {
      r13.yzw = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r14.xz = rcp(r13.yy);
      r14.y = -r14.z;
      r13.yzw = r11.yzy * r14.xyz + r13.zwz;
      r14.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r13.yzw = max(float3(0,0,0), r13.yzw);
      r13.yzw = min(r13.yzw, r14.xyz);
      r14.xy = sunConstants.sstLightingConstants.coordScale * r13.wz;
      r14.xy = floor(r14.xy);
      r14.y = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r14.y;
      r14.x = r14.y * sunConstants.sstLightingConstants.coordScale + r14.x;
      r14.x = (uint)r14.x;
      r14.x = (int)r14.x + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.y, r14.x, l(0), t23.xxxx
    r14.y = samp0[]..swiz;
      r14.z = (int)r14.y & 0x40000000;
      r14.w = (uint)r14.y << 2;
      if (r14.z == 0) {
        r14.z = (int)r14.y & 0x01ffffff;
        r15.x = (int)r14.z + (int)r14.x;
        r14.x = (uint)r14.y >> 25;
        r14.x = (uint)r14.x;
        r13.yzw = r14.xxx * r13.yzw;
        r13.yzw = frac(r13.yzw);
        r13.yzw = float3(128,128,128) * r13.yzw;
        r13.yzw = (uint3)r13.yzw;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.z, r15.x, l(0), t23.xxxx
      r15.z = samp0[]..swiz;
        r14.xy = (uint2)r13.wz >> int2(6,6);
        r14.z = (int)r15.z & 0xc0000000;
        r15.w = (int)r15.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.w, r15.w, l(0), t23.xxxx
      r15.w = samp0[]..swiz;
        r14.y = r14.y ? r15.z : r15.w;
        r15.w = (uint)r14.y >> 13;
        r14.x = r14.x ? r15.w : r14.y;
        r14.x = (int)r14.x & 8191;
        r16.x = (int)r14.x + (int)r15.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.x, l(0), t23.xxxx
      r16.z = samp0[]..swiz;
        r15.y = 0;
        r16.y = 1;
        r16.xyz = r14.zzz ? r15.xyz : r16.xyz;
        r17.yz = r14.zz ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r14.xy = (uint2)r13.wz >> (uint2)r17.yy;
        r14.xy = (int2)r14.xy & int2(1,1);
        r15.w = (int)r16.z & 0xc0000000;
        r16.w = (int)r16.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.w, r16.w, l(0), t23.xxxx
      r16.w = samp0[]..swiz;
        r14.y = r14.y ? r16.z : r16.w;
        r16.w = (uint)r14.y >> 13;
        r14.x = r14.x ? r16.w : r14.y;
        r14.x = (int)r14.x & 8191;
        r17.x = (int)r14.x + (int)r16.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.x, l(0), t23.xxxx
      r17.w = samp0[]..swiz;
        r16.xyz = r15.www ? r16.xyz : r17.xzw;
        r14.xyz = r14.zzz ? r15.xyz : r16.xyz;
        r15.x = (int)r14.z & 0xc0000000;
        if (r15.x == 0) {
          r15.x = (int)-r14.y + 6;
          r15.xy = (uint2)r13.wz >> (uint2)r15.xx;
          r15.z = (int)r14.z | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r15.y = (((uint)r15.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r15.x = (((uint)r15.x << 0) & bitmask.x) | ((uint)r15.y & ~bitmask.x);
          r15.x = (int)r15.x * 10;
          r15.x = (uint)r15.z >> (uint)r15.x;
          r15.x = (int)r15.x & 1023;
          r15.x = (int)r14.x + (int)r15.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.w, r15.x, l(0), t23.xxxx
        r15.w = samp0[]..swiz;
          r15.yz = (int2)r14.yy + int2(1,2);
          r14.y = (int)-r15.y + 6;
          r16.xy = (uint2)r13.wz >> (uint2)r14.yy;
          r14.y = (int)r15.w & 0xc0000000;
          r16.z = (int)r15.w | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r16.y = (((uint)r16.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r16.x = (((uint)r16.x << 0) & bitmask.x) | ((uint)r16.y & ~bitmask.x);
          r16.x = (int)r16.x * 10;
          r16.x = (uint)r16.z >> (uint)r16.x;
          r16.x = (int)r16.x & 1023;
          r16.x = (int)r15.x + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.x, l(0), t23.xxxx
        r16.z = samp0[]..swiz;
          r16.y = r15.z;
          r16.xyz = r14.yyy ? r15.xyw : r16.xyz;
          r15.y = (int)-r16.y + 6;
          r15.yz = (uint2)r13.wz >> (uint2)r15.yy;
          r16.y = (int)r16.z & 0xc0000000;
          r16.w = (int)r16.z | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r15.z = (((uint)r15.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r15.y = (((uint)r15.y << 0) & bitmask.y) | ((uint)r15.z & ~bitmask.y);
          r15.y = (int)r15.y * 10;
          r15.y = (uint)r16.w >> (uint)r15.y;
          r15.y = (int)r15.y & 1023;
          r17.x = (int)r15.y + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.y, r17.x, l(0), t23.xxxx
        r17.y = samp0[]..swiz;
          r15.yz = r16.yy ? r16.xz : r17.xy;
          r14.xz = r14.yy ? r15.xw : r15.yz;
        }
        r14.y = (int)r14.z & 0xc0000000;
        if (r14.y == 0) {
          if (14 == 0) r15.x = 0; else if (14+15 < 32) {           r15.x = (uint)r14.z << (32-(14 + 15)); r15.x = (uint)r15.x >> (32-14);          } else r15.x = (uint)r14.z >> 15;
          r15.x = (uint)r15.x;
          r15.x = sunConstants.sstLightingConstants.constants.spanInInches * r15.x;
          r15.yz = (int2)r14.zz & int2(32767,536870912);
          r15.y = (uint)r15.y;
          r15.y = sunConstants.sstLightingConstants.constants.spanInInches * r15.y;
          r15.xy = float2(6.10388815e-05,3.05185094e-05) * r15.xy;
          r15.w = (int)r13.z & 3;
          r15.w = (int)r14.x + (int)r15.w;
          r15.w = (int)r15.w + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.w, r15.w, l(0), t23.xxxx
        r15.w = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r16.x = (((uint)r13.y << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r16.y = (((uint)r13.z << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r16.z = (((uint)r13.w << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r13.y = (uint)r15.w >> (uint)r16.x;
          r13.y = (int)r13.y & 255;
          r13.y = (uint)r13.y;
          r13.y = r13.y * r15.y;
          r13.y = r13.y * 0.00392156886 + r15.x;
          r13.z = (int)r16.y + 1;
          if (1 == 0) r13.w = 0; else if (1+1 < 32) {           r13.w = (uint)r13.w << (32-(1 + 1)); r13.w = (uint)r13.w >> (32-1);          } else r13.w = (uint)r13.w >> 1;
          r13.z = (int)r13.w + (int)r13.z;
          r13.z = (int)r13.z + (int)r14.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.z, r13.z, l(0), t23.xxxx
        r13.z = samp0[]..swiz;
          r13.z = (uint)r13.z >> (uint)r16.z;
          r13.z = (int)r13.z & 0x0000ffff;
          r13.z = (uint)r13.z;
          r13.z = r13.z * r15.y;
          r13.z = r13.z * 1.52590219e-05 + r15.x;
          r14.w = r15.z ? r13.y : r13.z;
        } else {
          r13.y = (int)r14.z & 0x80000000;
          r13.z = (int)r14.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.z, r13.z, l(0), t23.xxxx
        r13.z = samp0[]..swiz;
          r13.y = r13.y ? r13.z : 0;
          r13.z = (uint)r14.z << 2;
          r13.w = (uint)r13.y >> 16;
          r13.y = (int)r13.y & 0x0000ffff;
          r13.yw = f16tof32(r13.yw);
          r13.z = r11.y * r13.w + r13.z;
          r13.y = r11.z * r13.y + r13.z;
          r14.w = r14.y ? r13.y : r14.w;
        }
      }
      r11.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r11.w;
      r11.w = cmp(r14.w < r11.w);
      r9.z = r11.w ? 0 : 1;
    }
    if (r13.x == 0) {
      if (enableDitheredShadow == 0) {
        r11.w = (uint)r9.w;
        r13.xy = -sunConstants.splitPinTransform[r11.w].xy + r11.yz;
        r13.xy = sunConstants.splitPinTransform[r11.w].zz * r13.xy;
        r13.xy = r13.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r11.w = (int16)sunConstants.splitArrayOffset;
        r13.z = r11.w + r9.w;
        r11.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r13.xyz, r8.w).x;
        r13.x = gTransShadowmapArray.SampleLevel(samp0_s, r13.xyz, 0).x;
        r11.w = r13.x + r11.w;
        r11.w = saturate(-1 + r11.w);
        r13.x = r11.w * r11.w;
        r9.z = r13.x * r11.w;
      }
      if (enableDitheredShadow != 0) {
        r13.x = -r9.x;
        r11.w = (uint)r9.w;
        r9.w = 1 + r9.w;
        r9.w = min(2, r9.w);
        r9.w = (uint)r9.w;
        r10.w = 1 + -r10.w;
        r10.w = 28 * r10.w;
        r10.w = (uint)r10.w;
        r14.xy = -sunConstants.splitPinTransform[r11.w].xy + r11.yz;
        r14.xy = sunConstants.splitPinTransform[r11.w].zz * r14.xy;
        r14.xy = r14.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r11.yz = -sunConstants.splitPinTransform[r9.w].xy + r11.yz;
        r11.yz = sunConstants.splitPinTransform[r9.w].zz * r11.yz;
        r11.yz = r11.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r13.y = r10.x;
        r13.z = r9.x;
        r13.w = 0;
        r14.z = 0;
        while (true) {
          r14.w = cmp((uint)r14.z >= 8);
          if (r14.w != 0) break;
          r14.w = cmp((uint)r10.w < (uint)r14.z);
          r15.xy = r14.ww ? r11.yz : r14.xy;
          r15.z = r14.w ? sunConstants.splitPinTransform[r9.w].w : sunConstants.splitPinTransform[r11.w].w;
          r14.w = r14.w ? r9.w : r11.w;
          r16.x = dot(icb[r14.z+0].yx, r13.xy);
          r16.y = dot(icb[r14.z+0].yx, r13.yz);
          r15.xy = r16.xy * r15.zz + r15.xy;
          r14.w = (int)r14.w + (int16)sunConstants.splitArrayOffset;
          r15.z = (uint)r14.w;
          r14.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r8.w).x;
          r15.x = gTransShadowmapArray.SampleLevel(samp0_s, r15.xyz, 0).x;
          r14.w = r15.x + r14.w;
          r14.w = saturate(-1 + r14.w);
          r13.w = r14.w * 0.125 + r13.w;
          r14.z = (int)r14.z + 1;
        }
        r8.w = r13.w * r13.w;
        r9.z = r8.w * r13.w;
      }
    }
  }
  r8.w = cmp(0 < r6.w);
  if (r8.w != 0) {
    r8.w = cmp(0 < r9.z);
    if (r8.w != 0) {
      r8.w = sunConstants.specScale * r2.w;
      r8.w = r8.w * r6.w;
      if (sunConstants.sunCookieIndex != 0) {
        r7.w = 1;
        r9.w = dot(sunConstants.sunCookieTransform[0].xyzw, r7.xyzw);
        r7.x = dot(sunConstants.sunCookieTransform[1].xyzw, r7.xyzw);
        r13.x = frac(r9.w);
        r13.y = frac(r7.x);
        r7.x = -1 + (int14)sunConstants.sunCookieIndex;
        r13.z = (uint)r7.x;
        r7.xyz = gCookieArray.SampleLevel(samplerLinear_s, r13.xyz, 0).xyz;
        r7.xyz = float3(-1,-1,-1) + r7.xyz;
        r7.xyz = sunConstants.sunCookieIntensity * r7.xyz + float3(1,1,1);
        r7.xyz = sunConstants.color.xyz * r7.xyz;
      } else {
        r7.xyz = sunConstants.color.xyz;
      }
      r7.w = viewmodelSunShadowRaw >> 16;
      r9.w = cmp(0 < (uint)r7.w);
      r9.w = r2.z ? r9.w : 0;
      if (r9.w != 0) {
        r7.w = (int)r7.w + numLights;
        r7.w = (int)r7.w + -1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.w, r7.w, l(52), t12.xxxx
      r9.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.xyzw, r7.w, l(68), t12.xyzw
      r13.x = samp0[]..swiz;
      r13.y = samp0[]..swiz;
      r13.z = samp0[]..swiz;
      r13.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r7.w, l(84), t12.xyzw
      r14.x = samp0[]..swiz;
      r14.y = samp0[]..swiz;
      r14.z = samp0[]..swiz;
      r14.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r7.w, l(132), t12.xyzw
      r15.x = samp0[]..swiz;
      r15.y = samp0[]..swiz;
      r15.z = samp0[]..swiz;
      r15.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r7.w, l(148), t12.xyzw
      r16.x = samp0[]..swiz;
      r16.y = samp0[]..swiz;
      r16.z = samp0[]..swiz;
      r16.w = samp0[]..swiz;
        r10.w = abs(r4.w) * -0.200000003 + 0.400000006;
        r17.xyz = r5.xyz * r10.www + v7.xyz;
        r17.w = 1;
        r13.x = dot(r13.xyzw, r17.xyzw);
        r13.y = dot(r14.xyzw, r17.xyzw);
        r11.yz = r13.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r11.yz = r11.yz + r16.zw;
        r11.yz = r11.yz * r16.xy;
        r13.xy = r9.ww / r15.xz;
        r13.zw = float2(1,1) + -r13.xy;
        r13.zw = cmp(r11.yz >= r13.zw);
        r13.xy = cmp(r13.xy >= r11.yz);
        r13.xy = (int2)r13.xy | (int2)r13.zw;
        r10.w = (int)r13.y | (int)r13.x;
        if (r10.w == 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.w, r7.w, l(28), t12.xxxx
        r10.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.xyzw, r7.w, l(100), t12.xyzw
        r13.x = samp0[]..swiz;
        r13.y = samp0[]..swiz;
        r13.z = samp0[]..swiz;
        r13.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xy, r7.w, l(164), t12.xyxx
        r14.x = samp0[]..swiz;
        r14.y = samp0[]..swiz;
          r7.w = dot(r13.xyzw, r17.xyzw);
          r11.yz = saturate(r11.yz);
          r13.xy = r11.yz * r15.xz + r15.yw;
          r7.w = r7.w + r14.x;
          r7.w = r7.w / r14.y;
          r7.w = max(6.10351563e-05, r7.w);
          r10.w = (int)r10.w & 0x0000ffff;
          if (enableDitheredShadow != 0) {
            r14.x = -r9.x;
            r15.z = (uint)r10.w;
            r14.y = r10.x;
            r14.z = r9.x;
            r11.yz = float2(0,0);
            while (true) {
              r11.w = cmp((int)r11.z >= 8);
              if (r11.w != 0) break;
              r16.x = dot(icb[r11.z+0].yx, r14.xy);
              r16.y = dot(icb[r11.z+0].yx, r14.yz);
              r15.xy = r16.xy * r9.ww + r13.xy;
              r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r7.w).x;
              r11.y = r11.w * 0.125 + r11.y;
              r11.z = (int)r11.z + 1;
            }
          } else {
            r13.z = (uint)r10.w;
            r11.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r13.xyz, r7.w).x;
          }
          r7.w = r11.y * r11.y;
          r7.w = r7.w * r11.y;
        } else {
          r7.w = 1;
        }
        r9.z = r9.z * r7.w;
      } else {
        r7.w = viewmodelSunShadowRaw & 0x0000ffff;
        r9.w = cmp(0 < (uint)r7.w);
        r10.w = ~(int)r2.z;
        r9.w = r9.w ? r10.w : 0;
        if (r9.w != 0) {
          r7.w = (int)r7.w + numLights;
          r7.w = (int)r7.w + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.w, r7.w, l(52), t12.xxxx
        r9.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.xyzw, r7.w, l(68), t12.xyzw
        r13.x = samp0[]..swiz;
        r13.y = samp0[]..swiz;
        r13.z = samp0[]..swiz;
        r13.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r7.w, l(84), t12.xyzw
        r14.x = samp0[]..swiz;
        r14.y = samp0[]..swiz;
        r14.z = samp0[]..swiz;
        r14.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r7.w, l(132), t12.xyzw
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r7.w, l(148), t12.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
          r10.w = abs(r4.w) * -0.200000003 + 0.400000006;
          r17.xyz = r5.xyz * r10.www + v7.xyz;
          r17.w = 1;
          r13.x = dot(r13.xyzw, r17.xyzw);
          r13.y = dot(r14.xyzw, r17.xyzw);
          r11.yz = r13.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r11.yz = r11.yz + r16.zw;
          r11.yz = r11.yz * r16.xy;
          r13.xy = r9.ww / r15.xz;
          r13.zw = float2(1,1) + -r13.xy;
          r13.zw = cmp(r11.yz >= r13.zw);
          r13.xy = cmp(r13.xy >= r11.yz);
          r13.xy = (int2)r13.xy | (int2)r13.zw;
          r10.w = (int)r13.y | (int)r13.x;
          if (r10.w == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.w, r7.w, l(28), t12.xxxx
          r10.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.xyzw, r7.w, l(100), t12.xyzw
          r13.x = samp0[]..swiz;
          r13.y = samp0[]..swiz;
          r13.z = samp0[]..swiz;
          r13.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xy, r7.w, l(164), t12.xyxx
          r14.x = samp0[]..swiz;
          r14.y = samp0[]..swiz;
            r7.w = dot(r13.xyzw, r17.xyzw);
            r11.yz = saturate(r11.yz);
            r13.xy = r11.yz * r15.xz + r15.yw;
            r7.w = r7.w + r14.x;
            r7.w = r7.w / r14.y;
            r7.w = max(6.10351563e-05, r7.w);
            r10.w = (int)r10.w & 0x0000ffff;
            if (enableDitheredShadow != 0) {
              r14.x = -r9.x;
              r15.z = (uint)r10.w;
              r14.y = r10.x;
              r14.z = r9.x;
              r11.yz = float2(0,0);
              while (true) {
                r11.w = cmp((int)r11.z >= 8);
                if (r11.w != 0) break;
                r16.x = dot(icb[r11.z+0].yx, r14.xy);
                r16.y = dot(icb[r11.z+0].yx, r14.yz);
                r15.xy = r16.xy * r9.ww + r13.xy;
                r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r7.w).x;
                r11.y = r11.w * 0.125 + r11.y;
                r11.z = (int)r11.z + 1;
              }
            } else {
              r13.z = (uint)r10.w;
              r11.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r13.xyz, r7.w).x;
            }
            r7.w = r11.y * r11.y;
            r7.w = r7.w * r11.y;
          } else {
            r7.w = 1;
          }
          r9.z = r9.z * r7.w;
        }
      }
      r7.w = -r2.x * 0.5 + 1;
      r7.w = -r6.w * r7.w + 1;
      r7.w = r7.w * r7.w;
      r7.w = -r7.w * 0.620000005 + 0.620000005;
      r7.w = r7.w + -r6.w;
      r7.w = r3.y * r7.w + r6.w;
      r7.w = r7.w * r9.z;
      r13.xyz = r7.www * r7.xyz;
      r4.w = cmp(0 < r4.w);
      r11.yzw = -v7.xyz * r0.www + sunConstants.wldDir.xyz;
      r0.w = dot(r11.yzw, r11.yzw);
      r0.w = rsqrt(r0.w);
      r11.yzw = r11.yzw * r0.www;
      r0.w = dot(r11.yzw, r6.xyz);
      r7.w = dot(r5.xyz, r11.yzw);
      r9.w = abs(r7.w) * r2.w + -abs(r7.w);
      r7.w = abs(r7.w) * r9.w + 1;
      r6.w = r6.w * r3.z + r3.w;
      r7.w = r7.w * r7.w;
      r6.w = r7.w * r6.w;
      r6.w = rcp(r6.w);
      r6.w = r6.w * r8.w;
      r6.w = r9.z * r6.w;
      r6.w = 0.25 * r6.w;
      r11.yzw = r6.www * r7.xyz;
      r0.w = saturate(1 + -r0.w);
      r7.w = r0.w * r0.w;
      r7.w = r7.w * r7.w;
      r0.w = r7.w * r0.w;
      r0.w = r6.w * r0.w;
      r7.xyz = r0.www * r7.yzx;
      r13.w = r7.z;
      r13.xyzw = r4.wwww ? r13.xyzw : 0;
      r7.zw = r11.yz;
      r7.xyzw = r4.wwww ? r7.xyzw : 0;
      r0.w = r4.w ? r11.w : 0;
    } else {
      r13.xyzw = float4(0,0,0,0);
      r7.xyzw = float4(0,0,0,0);
      r0.w = 0;
    }
  } else {
    r13.xyzw = float4(0,0,0,0);
    r7.xyzw = float4(0,0,0,0);
    r0.w = 0;
  }
  r4.w = ~(int)r2.z;
  r14.x = -r9.x;
  r6.w = -r2.x * 0.5 + 1;
  r15.xy = float2(0,0);
  r16.w = 0;
  r17.xyz = v7.xyz;
  r17.w = 1;
  r18.w = 1;
  r14.z = r9.x;
  r19.w = 1;
  r20.z = 1;
  r21.w = 1;
  r14.yw = r10.xx;
  r9.y = r14.w;
  r22.w = 1;
  r10.y = r14.x;
  r10.z = r9.x;
  r23.w = 1;
  r24.x = r10.x;
  r24.y = r14.x;
  r24.z = r9.x;
  r25.x = r10.x;
  r25.y = r14.x;
  r25.z = r9.x;
  r26.x = r10.x;
  r26.y = r14.x;
  r26.z = r9.x;
  r11.yzw = r13.xyz;
  r27.x = r13.w;
  r27.yz = r7.xy;
  r28.xy = r7.zw;
  r28.z = r0.w;
  r8.w = enableDitheredShadow;
  r9.z = 0;
  while (true) {
    r9.w = cmp((uint)r9.z >= numLights);
    if (r9.w != 0) break;
    r15.z = (uint)r9.z >> 5;
    r16.xyz = (int3)r8.xyz + (int3)r15.xyz;
    r9.w = visibleLights.Load(r16.xyzw).x;
    r16.xyz = r11.yzw;
    r29.xyz = r27.xyz;
    r30.xyz = r28.xyz;
    r10.w = r8.w;
    r15.z = r9.w;
    while (true) {
      if (r15.z == 0) break;
      r15.w = firstbitlow((uint)r15.z);
      r20.w = 1 << (int)r15.w;
      r24.w = (int)r15.z & (int)r20.w;
      if (r24.w != 0) {
        r15.z = (int)r15.z ^ (int)r20.w;
        r15.w = (int)r9.z + (int)r15.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r31.xyzw, r15.w, l(0), t11.xyzw
      r31.x = samp0[]..swiz;
      r31.y = samp0[]..swiz;
      r31.z = samp0[]..swiz;
      r31.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r32.xy, r15.w, l(16), t11.xyxx
      r32.x = samp0[]..swiz;
      r32.y = samp0[]..swiz;
        r31.xyz = -v7.xyz + r31.xyz;
        r32.z = r31.w;
        r31.xyz = cmp(abs(r31.xyz) < r32.zxy);
        r20.w = r31.y ? r31.x : 0;
        r20.w = r31.z ? r20.w : 0;
        if (r20.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r15.w, l(0), t12.wxyz
        r31.x = samp0[]..swiz;
        r31.y = samp0[]..swiz;
        r31.z = samp0[]..swiz;
        r31.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r15.w, l(16), t12.zxyw
        r32.x = samp0[]..swiz;
        r32.y = samp0[]..swiz;
        r32.z = samp0[]..swiz;
        r32.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r15.w, l(32), t12.xyzw
        r33.x = samp0[]..swiz;
        r33.y = samp0[]..swiz;
        r33.z = samp0[]..swiz;
        r33.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r15.w, l(48), t12.xyzw
        r34.x = samp0[]..swiz;
        r34.y = samp0[]..swiz;
        r34.z = samp0[]..swiz;
        r34.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r15.w, l(64), t12.yzwx
        r35.x = samp0[]..swiz;
        r35.y = samp0[]..swiz;
        r35.z = samp0[]..swiz;
        r35.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r15.w, l(80), t12.xyzw
        r36.x = samp0[]..swiz;
        r36.y = samp0[]..swiz;
        r36.z = samp0[]..swiz;
        r36.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r15.w, l(96), t12.yzwx
        r37.x = samp0[]..swiz;
        r37.y = samp0[]..swiz;
        r37.z = samp0[]..swiz;
        r37.w = samp0[]..swiz;
          if (3 == 0) r20.w = 0; else if (3+24 < 32) {           r20.w = (uint)r32.w << (32-(3 + 24)); r20.w = (uint)r20.w >> (32-3);          } else r20.w = (uint)r32.w >> 24;
          switch (r20.w) {
            case 4 :            r20.w = cmp(0 < r37.x);
            r38.xy = r36.zw;
            r38.z = r37.w;
            r39.xyz = -r38.xyz * float3(0.5,0.5,0.5) + r31.yzw;
            r40.xyz = -v7.xyz + r39.xyz;
            r24.w = dot(r38.xyz, r40.xyz);
            r25.w = saturate(-r24.w / r37.x);
            r41.xyz = r25.www * r38.xyz + r39.xyz;
            r41.xyz = r20.www ? r41.xyz : r31.yzw;
            r41.xyz = -v7.xyz + r41.xyz;
            r26.w = dot(r41.xyz, r41.xyz);
            r27.w = rsqrt(r26.w);
            r41.xyz = r41.xyz * r27.www;
            r27.w = dot(r5.xyz, r41.xyz);
            r28.w = saturate(r27.w);
            r29.w = cmp(0 < r28.w);
            if (r29.w != 0) {
              r29.w = sqrt(r26.w);
              r30.w = r34.x * r34.x;
              r26.w = r30.w / r26.w;
              r26.w = min(1, r26.w);
              r41.xy = saturate(r29.ww * r33.xz + r33.yw);
              r41.zw = r41.xy * r41.xy;
              r41.xy = r41.xy * float2(-2,-2) + float2(3,3);
              r41.xy = r41.zw * r41.xy;
              r26.w = r41.x * r26.w;
              r26.w = r26.w * r41.y;
              r29.w = cmp(0 < r26.w);
              if (r29.w != 0) {
                if (3 == 0) r29.w = 0; else if (3+27 < 32) {                 r29.w = (uint)r32.w << (32-(3 + 27)); r29.w = (uint)r29.w >> (32-3);                } else r29.w = (uint)r32.w >> 27;
                r29.w = cmp((int)r29.w != 1);
                if (r29.w != 0) {
                  r29.w = abs(r27.w) * -0.200000003 + 0.400000006;
                  r41.xyz = r5.xyz * r29.www + v7.xyz;
                  r41.xyz = r41.xyz + -r35.xyz;
                  r29.w = max(abs(r41.y), abs(r41.z));
                  r29.w = max(abs(r41.x), r29.w);
                  r29.w = r36.x / r29.w;
                  r29.w = r29.w + r36.y;
                  r30.w = dot(r41.xyz, r41.xyz);
                  r30.w = rsqrt(r30.w);
                  r29.w = max(6.10351563e-05, r29.w);
                  r38.w = (int)r32.w & 0x0000ffff;
                  r42.w = (uint)r38.w;
                  r38.w = 0;
                  r39.w = 0;
                  while (true) {
                    r40.w = cmp((int)r39.w >= 8);
                    if (r40.w != 0) break;
                    r43.y = dot(icb[r39.w+0].yx, r14.xy);
                    r43.z = dot(icb[r39.w+0].yx, r14.yz);
                    r43.yz = r43.yz * r34.yy;
                    r43.x = r43.y * r11.x;
                    r43.w = r43.y * r3.x;
                    r42.xyz = r41.xyz * r30.www + r43.xzw;
                    r40.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r42.xyzw, r29.w).x;
                    r38.w = r40.w * 0.125 + r38.w;
                    r39.w = (int)r39.w + 1;
                  }
                } else {
                  r38.w = 1;
                }
                r26.w = r38.w * r26.w;
                r29.w = cmp(0 < r26.w);
                if (r29.w != 0) {
                  r29.w = r32.x * r2.w;
                  r29.w = 0.25 * r29.w;
                  r30.w = dot(r38.xyz, r12.xyz);
                  r39.w = dot(r12.xyz, r40.xyz);
                  r40.x = -r30.w * r30.w + r37.x;
                  r24.w = r30.w * r39.w + -r24.w;
                  r24.w = saturate(r24.w / r40.x);
                  r30.w = r40.x / r37.x;
                  r30.w = 10 * r30.w;
                  r30.w = min(1, r30.w);
                  r24.w = r24.w + -r25.w;
                  r24.w = r30.w * r24.w + r25.w;
                  r38.xyz = r24.www * r38.xyz + r39.xyz;
                  r38.xyz = r20.www ? r38.xyz : r31.yzw;
                  r38.xyz = -v7.xyz + r38.xyz;
                  r20.w = dot(r38.xyz, r38.xyz);
                  r20.w = rsqrt(r20.w);
                  r39.xyz = r38.xyz * r20.www;
                  if (4 == 0) r24.w = 0; else if (4+16 < 32) {                   r24.w = (uint)r32.w << (32-(4 + 16)); r24.w = (uint)r24.w >> (32-4);                  } else r24.w = (uint)r32.w >> 16;
                  r25.w = cmp(0 < (uint)r24.w);
                  r25.w = r2.z ? r25.w : 0;
                  if (r25.w != 0) {
                    r24.w = (int)r24.w + numLights;
                    r24.w = (int)r24.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r25.w, r24.w, l(52), t12.xxxx
                  r25.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r24.w, l(100), t12.xyzw
                  r40.x = samp0[]..swiz;
                  r40.y = samp0[]..swiz;
                  r40.z = samp0[]..swiz;
                  r40.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r24.w, l(116), t12.xyzw
                  r41.x = samp0[]..swiz;
                  r41.y = samp0[]..swiz;
                  r41.z = samp0[]..swiz;
                  r41.w = samp0[]..swiz;
                    r30.w = abs(r27.w) * -0.200000003 + 0.400000006;
                    r18.xyz = r5.xyz * r30.www + v7.xyz;
                    r30.w = dot(r40.xyzw, r18.xyzw);
                    r39.w = dot(r41.xyzw, r18.xyzw);
                    r40.x = cmp(r39.w < r30.w);
                    if (r40.x == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r24.w, l(68), t12.xyzw
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r24.w, l(84), t12.xyzw
                    r42.x = samp0[]..swiz;
                    r42.y = samp0[]..swiz;
                    r42.z = samp0[]..swiz;
                    r42.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r24.w, l(132), t12.xyzw
                    r43.x = samp0[]..swiz;
                    r43.y = samp0[]..swiz;
                    r43.z = samp0[]..swiz;
                    r43.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r24.w, l(148), t12.xyzw
                    r44.x = samp0[]..swiz;
                    r44.y = samp0[]..swiz;
                    r44.z = samp0[]..swiz;
                    r44.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.yz, r24.w, l(164), t12.xxyx
                    r40.y = samp0[]..swiz;
                    r40.z = samp0[]..swiz;
                      r41.x = dot(r41.xyzw, r18.xyzw);
                      r41.y = dot(r42.xyzw, r18.xyzw);
                      r18.xy = r41.xy / r39.ww;
                      r18.xy = r18.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r18.xy = r18.xy + r44.zw;
                      r18.xy = r18.xy * r44.xy;
                      r41.xy = r25.ww / r43.xz;
                      r41.zw = float2(1,1) + -r41.xy;
                      r41.zw = cmp(r18.xy >= r41.zw);
                      r41.xy = cmp(r41.xy >= r18.xy);
                      r41.xy = (int2)r41.xy | (int2)r41.zw;
                      r18.z = (int)r41.y | (int)r41.x;
                      r18.xy = saturate(r18.xy);
                      r41.xy = r18.xy * r43.xz + r43.yw;
                      r18.x = r40.z * r39.w;
                      r18.y = r40.y * r39.w + r30.w;
                      r18.x = r18.y / r18.x;
                    } else {
                      r18.z = -1;
                    }
                    r18.y = (int)r40.x | (int)r18.z;
                    if (r18.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.y, r24.w, l(28), t12.xxxx
                    r18.y = samp0[]..swiz;
                      r18.x = max(6.10351563e-05, r18.x);
                      r18.y = (int)r18.y & 0x0000ffff;
                      if (r10.w != 0) {
                        r40.z = (uint)r18.y;
                        r18.z = 0;
                        r24.w = 0;
                        while (true) {
                          r30.w = cmp((int)r24.w >= 8);
                          if (r30.w != 0) break;
                          r42.x = dot(icb[r24.w+0].yx, r14.xw);
                          r42.y = dot(icb[r24.w+0].xy, r9.xy);
                          r40.xy = r42.xy * r25.ww + r41.xy;
                          r30.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r40.xyz, r18.x).x;
                          r18.z = r30.w * 0.125 + r18.z;
                          r24.w = (int)r24.w + 1;
                        }
                      } else {
                        r41.z = (uint)r18.y;
                        r18.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r41.xyz, r18.x).x;
                      }
                      r18.x = r18.z * r18.z;
                      r18.x = r18.x * r18.z;
                    } else {
                      r18.x = 1;
                    }
                    r26.w = r26.w * r18.x;
                  } else {
                    if (4 == 0) r18.x = 0; else if (4+20 < 32) {                     r18.x = (uint)r32.w << (32-(4 + 20)); r18.x = (uint)r18.x >> (32-4);                    } else r18.x = (uint)r32.w >> 20;
                    r18.y = cmp(0 < (uint)r18.x);
                    r18.y = r4.w ? r18.y : 0;
                    if (r18.y != 0) {
                      r18.x = (int)r18.x + numLights;
                      r18.x = (int)r18.x + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.y, r18.x, l(52), t12.xxxx
                    r18.y = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r18.x, l(100), t12.xyzw
                    r40.x = samp0[]..swiz;
                    r40.y = samp0[]..swiz;
                    r40.z = samp0[]..swiz;
                    r40.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r18.x, l(116), t12.xyzw
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                      r24.w = abs(r27.w) * -0.200000003 + 0.400000006;
                      r19.xyz = r5.xyz * r24.www + v7.xyz;
                      r24.w = dot(r40.xyzw, r19.xyzw);
                      r25.w = dot(r41.xyzw, r19.xyzw);
                      r30.w = cmp(r25.w < r24.w);
                      if (r30.w == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r18.x, l(68), t12.xyzw
                      r40.x = samp0[]..swiz;
                      r40.y = samp0[]..swiz;
                      r40.z = samp0[]..swiz;
                      r40.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r18.x, l(84), t12.xyzw
                      r41.x = samp0[]..swiz;
                      r41.y = samp0[]..swiz;
                      r41.z = samp0[]..swiz;
                      r41.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r18.x, l(132), t12.xyzw
                      r42.x = samp0[]..swiz;
                      r42.y = samp0[]..swiz;
                      r42.z = samp0[]..swiz;
                      r42.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r18.x, l(148), t12.xyzw
                      r43.x = samp0[]..swiz;
                      r43.y = samp0[]..swiz;
                      r43.z = samp0[]..swiz;
                      r43.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xy, r18.x, l(164), t12.xyxx
                      r44.x = samp0[]..swiz;
                      r44.y = samp0[]..swiz;
                        r40.x = dot(r40.xyzw, r19.xyzw);
                        r40.y = dot(r41.xyzw, r19.xyzw);
                        r19.xy = r40.xy / r25.ww;
                        r19.xy = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                        r19.xy = r19.xy + r43.zw;
                        r19.xy = r19.xy * r43.xy;
                        r40.xy = r18.yy / r42.xz;
                        r40.zw = float2(1,1) + -r40.xy;
                        r40.zw = cmp(r19.xy >= r40.zw);
                        r40.xy = cmp(r40.xy >= r19.xy);
                        r40.xy = (int2)r40.xy | (int2)r40.zw;
                        r19.z = (int)r40.y | (int)r40.x;
                        r19.xy = saturate(r19.xy);
                        r40.xy = r19.xy * r42.xz + r42.yw;
                        r19.x = r44.y * r25.w;
                        r19.y = r44.x * r25.w + r24.w;
                        r19.x = r19.y / r19.x;
                      } else {
                        r19.z = -1;
                      }
                      r19.y = (int)r30.w | (int)r19.z;
                      if (r19.y == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.x, r18.x, l(28), t12.xxxx
                      r18.x = samp0[]..swiz;
                        r19.x = max(6.10351563e-05, r19.x);
                        r18.x = (int)r18.x & 0x0000ffff;
                        if (r10.w != 0) {
                          r41.z = (uint)r18.x;
                          r19.yz = float2(0,0);
                          while (true) {
                            r24.w = cmp((int)r19.z >= 8);
                            if (r24.w != 0) break;
                            r42.x = dot(icb[r19.z+0].xy, r10.xy);
                            r42.y = dot(icb[r19.z+0].yx, r10.xz);
                            r41.xy = r42.xy * r18.yy + r40.xy;
                            r24.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r41.xyz, r19.x).x;
                            r19.y = r24.w * 0.125 + r19.y;
                            r19.z = (int)r19.z + 1;
                          }
                        } else {
                          r40.z = (uint)r18.x;
                          r19.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r40.xyz, r19.x).x;
                        }
                        r18.x = r19.y * r19.y;
                        r18.x = r18.x * r19.y;
                      } else {
                        r18.x = 1;
                      }
                      r26.w = r26.w * r18.x;
                    }
                  }
                  r18.x = -r28.w * r6.w + 1;
                  r18.x = r18.x * r18.x;
                  r18.x = -r18.x * 0.620000005 + 0.620000005;
                  r18.x = r18.x + -r28.w;
                  r18.x = r3.y * r18.x + r28.w;
                  r18.x = r18.x * r26.w;
                  r32.x = r31.x;
                  r18.y = cmp(0 < r27.w);
                  r40.xyz = r18.xxx * r32.xyz + r16.xyz;
                  r18.x = saturate(dot(r5.xyz, r39.xyz));
                  r38.xyz = r38.xyz * r20.www + r6.xyz;
                  r19.x = dot(r38.xyz, r38.xyz);
                  r19.x = rsqrt(r19.x);
                  r38.xyz = r38.xyz * r19.xxx;
                  r19.x = dot(r38.xyz, r6.xyz);
                  r19.z = dot(r5.xyz, r38.xyz);
                  r20.w = abs(r19.z) * r2.w + -abs(r19.z);
                  r19.z = abs(r19.z) * r20.w + 1;
                  r20.w = r18.x * r3.z + r3.w;
                  r19.z = r19.z * r19.z;
                  r19.z = r19.z * r20.w;
                  r19.z = rcp(r19.z);
                  r18.x = r18.x * r29.w;
                  r18.x = r19.z * r18.x;
                  r18.x = r18.x * r26.w;
                  r38.xyz = r18.xxx * r32.xyz + r30.xyz;
                  r19.x = saturate(1 + -r19.x);
                  r19.z = r19.x * r19.x;
                  r19.z = r19.z * r19.z;
                  r19.x = r19.x * r19.z;
                  r18.x = r19.x * r18.x;
                  r39.xyz = r18.xxx * r32.xyz + r29.xyz;
                  r16.xyz = r18.yyy ? r40.xyz : r16.xyz;
                  r29.xyz = r18.yyy ? r39.xyz : r29.xyz;
                  r30.xyz = r18.yyy ? r38.xyz : r30.xyz;
                }
              }
            }
            break;
            case 2 :            r38.xy = r34.zw;
            r38.z = r35.w;
            r38.xyz = -v7.xyz + r38.xyz;
            r18.x = dot(r38.xyz, r38.xyz);
            r18.x = rsqrt(r18.x);
            r39.xyz = r38.xyz * r18.xxx;
            r18.y = dot(r5.xyz, r39.xyz);
            r19.x = saturate(r18.y);
            r19.z = cmp(0 < r19.x);
            if (r19.z != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r15.w, l(112), t12.yzwx
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r15.w, l(128), t12.zxyw
            r40.x = samp0[]..swiz;
            r40.y = samp0[]..swiz;
            r40.z = samp0[]..swiz;
            r40.w = samp0[]..swiz;
              r41.xyz = r39.xyz;
              r41.w = r40.y;
              r19.z = dot(r41.xyzw, r17.xyzw);
              r20.w = cmp(r19.z < 1);
              if (r20.w != 0) {
                r42.xyz = float3(1,1,1);
                r20.w = 0;
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r15.w, l(172), t12.yzwx
              r43.x = samp0[]..swiz;
              r43.y = samp0[]..swiz;
              r43.z = samp0[]..swiz;
              r43.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r15.w, l(188), t12.wxyz
              r44.x = samp0[]..swiz;
              r44.y = samp0[]..swiz;
              r44.z = samp0[]..swiz;
              r44.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r15.w, l(204), t12.xyzw
              r45.x = samp0[]..swiz;
              r45.y = samp0[]..swiz;
              r45.z = samp0[]..swiz;
              r45.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.w, r15.w, l(236), t12.xxxx
              r24.w = samp0[]..swiz;
                r46.xyz = -v7.xyz + r31.yzw;
                r25.w = r34.x * r34.x;
                r26.w = dot(r46.xyz, r46.xyz);
                r25.w = r25.w / r26.w;
                r25.w = min(1, r25.w);
                r33.xy = saturate(r19.zz * r33.xz + r33.yw);
                r33.zw = r33.xy * r33.xy;
                r33.xy = r33.xy * float2(-2,-2) + float2(3,3);
                r33.xy = r33.zw * r33.xy;
                r25.w = r33.x * r25.w;
                r25.w = r25.w * r33.y;
                r35.w = r36.x;
                r33.x = dot(r35.xyzw, r17.xyzw);
                r46.xyz = r36.yzw;
                r46.w = r37.w;
                r33.y = dot(r46.xyzw, r17.xyzw);
                r20.xy = r33.xy / r19.zz;
                r19.z = cmp(r43.w < 0.00048828125);
                if (r19.z != 0) {
                  r44.y = r45.x;
                  r33.xy = saturate(abs(r20.xy) * r44.zw + r44.xy);
                  r33.zw = r33.xy * r33.xy;
                  r33.xy = r33.xy * float2(-2,-2) + float2(3,3);
                  r33.xy = r33.zw * r33.xy;
                  r19.z = r33.x * r33.y;
                } else {
                  r43.w = r44.y;
                  r33.xyzw = saturate(r43.xyzw * abs(r20.yyxx));
                  r33.xyzw = log2(r33.xyzw);
                  r33.xyzw = r44.xxxx * r33.xyzw;
                  r33.xyzw = exp2(r33.xyzw);
                  r33.xy = r33.xy + r33.zw;
                  r33.xy = log2(r33.xy);
                  r33.xy = r45.xx * r33.xy;
                  r33.xy = exp2(r33.xy);
                  r26.w = r44.z * r33.x;
                  r27.w = r44.w * r33.y + -1;
                  r26.w = r44.w * r33.y + -r26.w;
                  r26.w = saturate(r27.w / r26.w);
                  r27.w = r26.w * r26.w;
                  r26.w = r26.w * -2 + 3;
                  r19.z = r27.w * r26.w;
                }
                r20.w = r25.w * r19.z;
                r19.z = (int)r24.w & 255;
                if (r19.z != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyz, r15.w, l(220), t12.xyzx
                r33.x = samp0[]..swiz;
                r33.y = samp0[]..swiz;
                r33.z = samp0[]..swiz;
                  r24.w = dot(r45.yzw, r20.xyz);
                  r20.x = dot(r33.xyz, r20.xyz);
                  r33.x = frac(r24.w);
                  r33.y = frac(r20.x);
                  r19.z = (int)r19.z + -1;
                  r33.z = (uint)r19.z;
                  r42.xyz = gCookieArray.SampleLevel(samplerLinear_s, r33.xyz, 0).xyz;
                } else {
                  r42.xyz = float3(1,1,1);
                }
              }
              r31.yz = r32.yz;
              r31.xyz = r31.xyz * r42.xyz;
              r19.z = cmp(0 < r20.w);
              if (r19.z != 0) {
                if (3 == 0) r19.z = 0; else if (3+27 < 32) {                 r19.z = (uint)r32.w << (32-(3 + 27)); r19.z = (uint)r19.z >> (32-3);                } else r19.z = (uint)r32.w >> 27;
                r19.z = cmp((int)r19.z != 1);
                if (r19.z != 0) {
                  r19.z = abs(r18.y) * -0.200000003 + 0.400000006;
                  r21.xyz = r5.xyz * r19.zzz + v7.xyz;
                  r39.xyz = r37.xyz;
                  r19.z = dot(r39.xyzw, r21.xyzw);
                  r20.x = dot(r41.xyzw, r21.xyzw);
                  r20.y = cmp(r20.x >= r19.z);
                  if (r20.y != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.y, r15.w, l(144), t12.xxxx
                  r40.y = samp0[]..swiz;
                    r35.w = r36.x;
                    r33.x = dot(r35.xyzw, r21.xyzw);
                    r37.xyz = r36.yzw;
                    r33.y = dot(r37.xyzw, r21.xyzw);
                    r21.xy = r33.xy / r20.xx;
                    r21.xy = saturate(r21.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                    r21.xy = r21.xy * r40.zw + r40.xy;
                    r15.w = r19.z / r20.x;
                    r15.w = max(6.10351563e-05, r15.w);
                    r19.z = (int)r32.w & 0x0000ffff;
                    if (r10.w != 0) {
                      r33.z = (uint)r19.z;
                      r20.xy = float2(0,0);
                      while (true) {
                        r24.w = cmp((int)r20.y >= 8);
                        if (r24.w != 0) break;
                        r35.x = dot(icb[r20.y+0].xy, r24.xy);
                        r35.y = dot(icb[r20.y+0].yx, r24.xz);
                        r33.xy = r35.xy * r34.yy + r21.xy;
                        r24.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r33.xyz, r15.w).x;
                        r20.x = r24.w * 0.125 + r20.x;
                        r20.y = (int)r20.y + 1;
                      }
                    } else {
                      r21.z = (uint)r19.z;
                      r20.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r15.w).x;
                    }
                    r15.w = r20.x * r20.x;
                    r15.w = r15.w * r20.x;
                  } else {
                    r15.w = 1;
                  }
                } else {
                  r15.w = 1;
                }
                r15.w = r20.w * r15.w;
                r19.z = cmp(0 < r15.w);
                if (r19.z != 0) {
                  r19.z = r32.x * r2.w;
                  r19.z = r19.z * r19.x;
                  if (4 == 0) r20.y = 0; else if (4+16 < 32) {                   r20.y = (uint)r32.w << (32-(4 + 16)); r20.y = (uint)r20.y >> (32-4);                  } else r20.y = (uint)r32.w >> 16;
                  r20.w = cmp(0 < (uint)r20.y);
                  r20.w = r2.z ? r20.w : 0;
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
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r20.y, l(148), t12.xyzw
                  r39.x = samp0[]..swiz;
                  r39.y = samp0[]..swiz;
                  r39.z = samp0[]..swiz;
                  r39.w = samp0[]..swiz;
                    r21.x = abs(r18.y) * -0.200000003 + 0.400000006;
                    r22.xyz = r5.xyz * r21.xxx + v7.xyz;
                    r21.x = dot(r33.xyzw, r22.xyzw);
                    r21.y = dot(r34.xyzw, r22.xyzw);
                    r21.z = dot(r35.xyzw, r22.xyzw);
                    r22.x = dot(r36.xyzw, r22.xyzw);
                    r22.y = cmp(r22.x < r21.z);
                    r21.xy = r21.xy / r22.xx;
                    r21.xy = r21.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r21.xy = r21.xy + r39.zw;
                    r21.xy = r21.xy * r39.xy;
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
                      if (r10.w != 0) {
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
                    r15.w = r20.y * r15.w;
                  } else {
                    if (4 == 0) r20.y = 0; else if (4+20 < 32) {                     r20.y = (uint)r32.w << (32-(4 + 20)); r20.y = (uint)r20.y >> (32-4);                    } else r20.y = (uint)r32.w >> 20;
                    r20.w = cmp(0 < (uint)r20.y);
                    r20.w = r4.w ? r20.w : 0;
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
                      r21.x = abs(r18.y) * -0.200000003 + 0.400000006;
                      r23.xyz = r5.xyz * r21.xxx + v7.xyz;
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
                        if (r10.w != 0) {
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
                      r15.w = r20.y * r15.w;
                    }
                  }
                  r20.y = -r19.x * r6.w + 1;
                  r20.y = r20.y * r20.y;
                  r20.y = -r20.y * 0.620000005 + 0.620000005;
                  r20.y = r20.y + -r19.x;
                  r20.y = r3.y * r20.y + r19.x;
                  r20.y = r20.y * r15.w;
                  r18.y = cmp(0 < r18.y);
                  r22.xyz = r20.yyy * r31.xyz + r16.xyz;
                  r23.xyz = r38.xyz * r18.xxx + r6.xyz;
                  r18.x = dot(r23.xyz, r23.xyz);
                  r18.x = rsqrt(r18.x);
                  r23.xyz = r23.xyz * r18.xxx;
                  r18.x = dot(r23.xyz, r6.xyz);
                  r20.y = dot(r5.xyz, r23.xyz);
                  r20.w = abs(r20.y) * r2.w + -abs(r20.y);
                  r20.y = abs(r20.y) * r20.w + 1;
                  r19.x = r19.x * r3.z + r3.w;
                  r20.y = r20.y * r20.y;
                  r19.x = r20.y * r19.x;
                  r19.x = rcp(r19.x);
                  r19.x = r19.x * r19.z;
                  r15.w = r19.x * r15.w;
                  r15.w = 0.25 * r15.w;
                  r23.xyz = r15.www * r31.xyz + r30.xyz;
                  r18.x = saturate(1 + -r18.x);
                  r19.x = r18.x * r18.x;
                  r19.x = r19.x * r19.x;
                  r18.x = r19.x * r18.x;
                  r15.w = r18.x * r15.w;
                  r31.xyz = r15.www * r31.xyz + r29.xyz;
                  r16.xyz = r18.yyy ? r22.xyz : r16.xyz;
                  r29.xyz = r18.yyy ? r31.xyz : r29.xyz;
                  r30.xyz = r18.yyy ? r23.xyz : r30.xyz;
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
    r9.z = (int)r9.z + 32;
  }
  r0.w = 1 + -r2.y;
  r2.z = 5 * r0.w;
  r2.w = r0.w * 5 + -2.5;
  r2.w = saturate(0.400000006 * r2.w);
  r2.w = 100 * r2.w;
  r3.xy = -r0.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r3.x = exp2(r3.x);
  r3.x = r3.x * r2.x;
  r3.z = r2.z * r0.w;
  r3.y = -r3.z * 2.0159049 + r3.y;
  r3.y = exp2(r3.y);
  r3.y = r3.y * r2.x;
  r3.xy = float2(9.1368103,9.70808983) * r3.xy;
  r3.x = max(r3.x, r3.y);
  r3.x = max(1.26815999, r3.x);
  r3.y = numRefProbes + -numOverrideProbes;
  r3.z = (int)r3.y & -32;
  r3.w = (int)-r3.z + (int)r3.y;
  r4.w = numRefProbes & -32;
  r6.x = (int)-r4.w + numRefProbes;
  r7.xy = float2(0,0);
  r9.w = 0;
  r10.yz = float2(0,1);
  r13.xy = float2(0,0);
  r14.x = 1;
  r15.xy = float2(0,0);
  r16.xy = float2(0,0);
  r17.xyzw = float4(0,0,0,0);
  r18.yzw = float3(0,0,0);
  r6.y = r3.z;
  while (true) {
    r6.z = cmp((uint)r6.y >= numRefProbes);
    if (r6.z != 0) break;
    r7.z = (uint)r6.y >> 5;
    r9.xyz = (int3)r7.xyz + (int3)r8.xyz;
    r6.z = visibleProbes.Load(r9.xyzw).x;
    r6.w = cmp((int)r3.z == (int)r6.y);
    bitmask.z = ((~(-1 << r3.w)) << 0) & 0xffffffff;  r7.z = (((uint)0 << 0) & bitmask.z) | ((uint)r6.z & ~bitmask.z);
    r6.z = r6.w ? r7.z : r6.z;
    r6.w = cmp((int)r4.w == (int)r6.y);
    if (r6.x == 0) r7.z = 0; else if (r6.x+0 < 32) {     r7.z = (uint)r6.z << (32-(r6.x + 0)); r7.z = (uint)r7.z >> (32-r6.x);    } else r7.z = (uint)r6.z >> 0;
    r6.z = r6.w ? r7.z : r6.z;
    r6.w = (int)r6.y + numLights;
    r19.xyzw = r17.xyzw;
    r20.xyz = r18.yzw;
    r7.z = r6.z;
    while (true) {
      if (r7.z == 0) break;
      r7.w = firstbitlow((uint)r7.z);
      r8.w = 1 << (int)r7.w;
      r9.x = (int)r7.z & (int)r8.w;
      if (r9.x != 0) {
        r7.z = (int)r7.z ^ (int)r8.w;
        r8.w = (int)r6.w + (int)r7.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r21.xyzw, r8.w, l(0), t11.xyzw
      r21.x = samp0[]..swiz;
      r21.y = samp0[]..swiz;
      r21.z = samp0[]..swiz;
      r21.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r9.xy, r8.w, l(16), t11.xyxx
      r9.x = samp0[]..swiz;
      r9.y = samp0[]..swiz;
        r21.xyz = -v7.xyz + r21.xyz;
        r9.z = r21.w;
        r9.xyz = cmp(abs(r21.xyz) < r9.zxy);
        r8.w = r9.y ? r9.x : 0;
        r8.w = r9.z ? r8.w : 0;
        if (r8.w != 0) {
          r7.w = (int)r6.y + (int)r7.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r21.xyzw, r7.w, l(0), t15.wxyz
        r21.x = samp0[]..swiz;
        r21.y = samp0[]..swiz;
        r21.z = samp0[]..swiz;
        r21.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r9.xy, r7.w, l(96), t15.xyxx
        r9.x = samp0[]..swiz;
        r9.y = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r7.w, l(116), t15.zwxy
        r22.x = samp0[]..swiz;
        r22.y = samp0[]..swiz;
        r22.z = samp0[]..swiz;
        r22.w = samp0[]..swiz;
          r23.xyz = v7.xyz + -r21.yzw;
          r8.w = (int)r22.w & 0x0000ffff;
          if (6 == 0) r9.z = 0; else if (6+25 < 32) {           r9.z = (uint)r22.w << (32-(6 + 25)); r9.z = (uint)r9.z >> (32-6);          } else r9.z = (uint)r22.w >> 25;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r24.xyzw, r8.w, l(0), t16.xyzw
        r24.x = samp0[]..swiz;
        r24.y = samp0[]..swiz;
        r24.z = samp0[]..swiz;
        r24.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r25.xyzw, r8.w, l(16), t16.xyzw
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        r25.z = samp0[]..swiz;
        r25.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r8.w, l(32), t16.xyzw
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
        r26.z = samp0[]..swiz;
        r26.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r8.w, l(48), t16.xyzw
        r29.x = samp0[]..swiz;
        r29.y = samp0[]..swiz;
        r29.z = samp0[]..swiz;
        r29.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r8.w, l(64), t16.xyzw
        r30.x = samp0[]..swiz;
        r30.y = samp0[]..swiz;
        r30.z = samp0[]..swiz;
        r30.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r8.w, l(80), t16.xyzw
        r31.x = samp0[]..swiz;
        r31.y = samp0[]..swiz;
        r31.z = samp0[]..swiz;
        r31.w = samp0[]..swiz;
          r10.w = dot(r24.xyz, r23.xyz);
          r10.w = saturate(r10.w + r24.w);
          r11.x = dot(r25.xyz, r23.xyz);
          r11.x = saturate(r11.x + r25.w);
          r10.w = r11.x * r10.w;
          r11.x = dot(r26.xyz, r23.xyz);
          r11.x = saturate(r11.x + r26.w);
          r10.w = r11.x * r10.w;
          r11.x = dot(r29.xyz, r23.xyz);
          r11.x = saturate(r11.x + r29.w);
          r10.w = r11.x * r10.w;
          r11.x = dot(r30.xyz, r23.xyz);
          r11.x = saturate(r11.x + r30.w);
          r10.w = r11.x * r10.w;
          r11.x = dot(r31.xyz, r23.xyz);
          r11.x = saturate(r11.x + r31.w);
          r10.x = r11.x * r10.w;
          r10.w = r9.x ? 0.000000 : 0;
          r10.xw = r10.ww ? r10.xy : r10.zx;
          r11.x = r9.x;
          r24.xy = r10.xw;
          r13.w = 1;
          while (true) {
            r14.z = cmp((int)r13.w >= (int)r9.z);
            if (r14.z != 0) break;
            r14.z = (int)r8.w + (int)r13.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r25.xyzw, r14.z, l(0), t16.xyzw
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r14.z, l(16), t16.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
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
            r14.z = dot(r25.xyz, r23.xyz);
            r14.z = saturate(r14.z + r25.w);
            r14.z = r24.x * r14.z;
            r14.w = dot(r26.xyz, r23.xyz);
            r14.w = saturate(r14.w + r26.w);
            r14.z = r14.z * r14.w;
            r14.w = dot(r29.xyz, r23.xyz);
            r14.w = saturate(r14.w + r29.w);
            r14.z = r14.z * r14.w;
            r14.w = dot(r30.xyz, r23.xyz);
            r14.w = saturate(r14.w + r30.w);
            r14.z = r14.z * r14.w;
            r14.w = dot(r31.xyz, r23.xyz);
            r14.w = saturate(r14.w + r31.w);
            r14.z = r14.z * r14.w;
            r14.w = dot(r32.xyz, r23.xyz);
            r14.w = saturate(r14.w + r32.w);
            r24.x = r14.z * r14.w;
            r15.w = (uint)r11.x >> 2;
            if (1 == 0) r16.w = 0; else if (1+2 < 32) {             r16.w = (uint)r11.x << (32-(1 + 2)); r16.w = (uint)r16.w >> (32-1);            } else r16.w = (uint)r11.x >> 2;
            r21.w = (int)r15.w & 2;
            r23.w = max(r24.y, r24.x);
            r14.z = -r14.z * r14.w + 1;
            r14.z = r24.y * r14.z;
            r14.y = r21.w ? r14.z : r23.w;
            r24.xy = r16.ww ? r24.xy : r14.xy;
            r13.w = (int)r13.w + 1;
            r11.x = r15.w;
          }
          r24.y = saturate(r24.y);
          r8.w = r24.y * r9.y;
          r9.x = cmp(0 < r8.w);
          if (r9.x != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r7.w, l(16), t15.xyzw
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r7.w, l(32), t15.yxwz
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r7.w, l(48), t15.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r7.w, l(64), t15.zwxy
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r7.w, l(80), t15.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r7.w, l(132), t15.zwxy
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r7.w, l(148), t15.zwxy
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r7.w, l(164), t15.zwxy
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r7.w, l(180), t15.zwxy
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r7.w, l(196), t15.xyzw
          r36.x = samp0[]..swiz;
          r36.y = samp0[]..swiz;
          r36.z = samp0[]..swiz;
          r36.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xy, r7.w, l(212), t15.xyxx
          r37.x = samp0[]..swiz;
          r37.y = samp0[]..swiz;
            r20.z = r24.y * r9.y + r20.z;
            r7.w = r8.w * r22.z;
            r22.z = r32.z;
            r8.w = dot(r12.xyz, r22.xyz);
            r9.x = dot(r23.xyz, r22.xyz);
            r9.x = r9.x + -r32.w;
            r9.y = cmp(r9.x >= 0);
            r9.x = max(abs(r9.x), r2.w);
            r9.x = r9.y ? r9.x : -r9.x;
            r8.w = max(1.00000001e-07, -r8.w);
            r8.w = r9.x / r8.w;
            r8.w = min(131072, abs(r8.w));
            r32.z = r33.z;
            r9.x = dot(r12.xyz, r32.xyz);
            r9.y = dot(r23.xyz, r32.xyz);
            r9.y = r9.y + -r33.w;
            r9.z = cmp(r9.y >= 0);
            r9.y = max(abs(r9.y), r2.w);
            r9.y = r9.z ? r9.y : -r9.y;
            r9.x = max(1.00000001e-07, -r9.x);
            r9.x = r9.y / r9.x;
            r8.w = min(abs(r9.x), r8.w);
            r33.z = r34.z;
            r9.x = dot(r12.xyz, r33.xyz);
            r9.y = dot(r23.xyz, r33.xyz);
            r9.y = r9.y + -r34.w;
            r9.z = cmp(r9.y >= 0);
            r9.y = max(abs(r9.y), r2.w);
            r9.y = r9.z ? r9.y : -r9.y;
            r9.x = max(1.00000001e-07, -r9.x);
            r9.x = r9.y / r9.x;
            r8.w = min(abs(r9.x), r8.w);
            r34.z = r35.z;
            r9.x = dot(r12.xyz, r34.xyz);
            r9.y = dot(r23.xyz, r34.xyz);
            r9.y = r9.y + -r35.w;
            r9.z = cmp(r9.y >= 0);
            r9.y = max(abs(r9.y), r2.w);
            r9.y = r9.z ? r9.y : -r9.y;
            r9.x = max(1.00000001e-07, -r9.x);
            r9.x = r9.y / r9.x;
            r8.w = min(abs(r9.x), r8.w);
            r35.z = r36.x;
            r9.x = dot(r12.xyz, r35.xyz);
            r9.y = dot(r23.xyz, r35.xyz);
            r9.y = r9.y + -r36.y;
            r9.z = cmp(r9.y >= 0);
            r9.y = max(abs(r9.y), r2.w);
            r9.y = r9.z ? r9.y : -r9.y;
            r9.x = max(1.00000001e-07, -r9.x);
            r9.x = r9.y / r9.x;
            r8.w = min(abs(r9.x), r8.w);
            r37.zw = r36.zw;
            r9.x = dot(r12.zxy, r37.xzw);
            r9.y = dot(r23.zxy, r37.xzw);
            r9.y = r9.y + -r37.y;
            r9.z = cmp(r9.y >= 0);
            r9.y = max(abs(r9.y), r2.w);
            r9.y = r9.z ? r9.y : -r9.y;
            r9.x = max(1.00000001e-07, -r9.x);
            r9.x = r9.y / r9.x;
            r8.w = min(abs(r9.x), r8.w);
            r9.x = r29.w;
            r9.yz = r30.zw;
            r9.xyz = r9.xyz + r23.xyz;
            r9.xyz = r12.xyz * r8.www + r9.xyz;
            r10.x = dot(r9.xyz, r9.xyz);
            r10.x = sqrt(r10.x);
            r8.w = r8.w / r10.x;
            r8.w = r8.w + r8.w;
            r8.w = sqrt(r8.w);
            r8.w = r0.w * 5 + r8.w;
            r8.w = -0.844799995 + r8.w;
            r21.y = r25.z;
            r21.z = r26.x;
            r32.x = dot(r9.xyz, r21.xyz);
            r22.xy = r25.xw;
            r22.z = r26.w;
            r32.y = dot(r9.xyz, r22.xyz);
            r26.x = r25.y;
            r32.z = dot(r9.xyz, r26.xyz);
            if (9 == 0) r9.x = 0; else if (9+16 < 32) {             r9.x = (uint)r22.w << (32-(9 + 16)); r9.x = (uint)r9.x >> (32-9);            } else r9.x = (uint)r22.w >> 16;
            r32.w = (uint)r9.x;
            r9.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r32.xyzw, r8.w).xyz;
            r25.x = dot(r23.xyz, r21.xyz);
            r25.y = dot(r23.xyz, r22.xyz);
            r25.z = dot(r23.xyz, r26.xyz);
            r14.yzw = saturate(r25.xyz * r29.xyz + float3(0.5,0.5,0.5));
            r30.z = r31.x;
            r14.yzw = r14.yzw * r30.xyz + r31.yzw;
            r32.x = dot(r5.xyz, r21.xyz);
            r32.y = dot(r5.xyz, r22.xyz);
            r32.z = dot(r5.xyz, r26.xyz);
            r21.xyz = cmp(float3(0,0,0) < r32.xyz);
            r13.z = r21.x ? 0 : 0.5;
            r22.xyz = r14.yzw + r13.xyz;
            r22.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r22.xyz, 0).xyz;
            r23.xyz = r32.xyz * r32.xyz;
            r23.xyz = r23.xyz * r7.www;
            r15.z = r21.y ? 0 : 0.5;
            r21.xyw = r15.xyz + r14.yzw;
            r21.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r21.xyw, 0).xyz;
            r21.xyw = r21.xyw * r23.yyy;
            r21.xyw = r22.xyz * r23.xxx + r21.xyw;
            r16.z = r21.z ? 0 : 0.5;
            r14.yzw = r16.xyz + r14.yzw;
            r14.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r14.yzw, 0).xyz;
            r14.yzw = r14.yzw * r23.zzz + r21.xyw;
            r21.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r32.xyzw, 6).xyz;
            r22.xyz = r21.xyz * r14.yzw;
            r8.w = dot(r22.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r19.xyz = r14.yzw * r21.xyz + r19.xyz;
            r10.x = r8.w * r3.x;
            r9.xyz = r9.xyz * r7.www;
            r7.w = dot(r9.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r7.w = r3.x * r8.w + r7.w;
            r7.w = r10.x / r7.w;
            r21.x = r19.w;
            r21.yz = r20.xy;
            r20.xyw = r9.yzx * r7.www + r21.yzx;
            r19.w = r20.w;
          }
        }
      }
    }
    r17.xyzw = r19.xyzw;
    r18.yzw = r20.xyz;
    r6.y = (int)r6.y + 32;
  }
  r4.w = cmp(r18.w < 1);
  if (r4.w != 0) {
    r6.xy = float2(0,0);
    r7.w = 0;
    r9.yz = float2(0,1);
    r10.xy = float2(0,0);
    r13.x = 1;
    r14.xy = float2(0,0);
    r15.xy = float2(0,0);
    r16.x = r17.w;
    r16.yzw = r18.yzw;
    r19.xyz = r17.xyz;
    r4.w = r18.w;
    r6.w = 0;
    while (true) {
      r8.w = cmp((uint)r6.w >= (uint)r3.y);
      if (r8.w != 0) break;
      r6.z = (uint)r6.w >> 5;
      r7.xyz = (int3)r6.xyz + (int3)r8.xyz;
      r6.z = visibleProbes.Load(r7.xyzw).x;
      r7.x = cmp((int)r3.z == (int)r6.w);
      if (r3.w == 0) r7.y = 0; else if (r3.w+0 < 32) {       r7.y = (uint)r6.z << (32-(r3.w + 0)); r7.y = (uint)r7.y >> (32-r3.w);      } else r7.y = (uint)r6.z >> 0;
      r6.z = r7.x ? r7.y : r6.z;
      r7.x = (int)r6.w + numLights;
      r20.xyzw = r16.xyzw;
      r21.xyz = r19.xyz;
      r7.y = r4.w;
      r7.z = r6.z;
      while (true) {
        if (r7.z == 0) break;
        r8.w = firstbitlow((uint)r7.z);
        r9.w = 1 << (int)r8.w;
        r10.w = (int)r7.z & (int)r9.w;
        if (r10.w != 0) {
          r7.z = (int)r7.z ^ (int)r9.w;
          r9.w = (int)r7.x + (int)r8.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r22.xyzw, r9.w, l(0), t11.xyzw
        r22.x = samp0[]..swiz;
        r22.y = samp0[]..swiz;
        r22.z = samp0[]..swiz;
        r22.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r23.xy, r9.w, l(16), t11.xyxx
        r23.x = samp0[]..swiz;
        r23.y = samp0[]..swiz;
          r22.xyz = -v7.xyz + r22.xyz;
          r23.z = r22.w;
          r22.xyz = cmp(abs(r22.xyz) < r23.zxy);
          r9.w = r22.y ? r22.x : 0;
          r9.w = r22.z ? r9.w : 0;
          if (r9.w != 0) {
            r8.w = (int)r6.w + (int)r8.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r8.w, l(0), t15.wxyz
          r22.x = samp0[]..swiz;
          r22.y = samp0[]..swiz;
          r22.z = samp0[]..swiz;
          r22.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r13.zw, r8.w, l(96), t15.xxxy
          r13.z = samp0[]..swiz;
          r13.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r8.w, l(116), t15.zwxy
          r23.x = samp0[]..swiz;
          r23.y = samp0[]..swiz;
          r23.z = samp0[]..swiz;
          r23.w = samp0[]..swiz;
            r24.xyz = v7.xyz + -r22.yzw;
            r9.w = (int)r23.w & 0x0000ffff;
            if (6 == 0) r10.w = 0; else if (6+25 < 32) {             r10.w = (uint)r23.w << (32-(6 + 25)); r10.w = (uint)r10.w >> (32-6);            } else r10.w = (uint)r23.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r25.xyzw, r9.w, l(0), t16.xyzw
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r9.w, l(16), t16.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r9.w, l(32), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r9.w, l(48), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r9.w, l(64), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r9.w, l(80), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
            r11.x = dot(r25.xyz, r24.xyz);
            r11.x = saturate(r11.x + r25.w);
            r14.w = dot(r26.xyz, r24.xyz);
            r14.w = saturate(r14.w + r26.w);
            r11.x = r14.w * r11.x;
            r14.w = dot(r29.xyz, r24.xyz);
            r14.w = saturate(r14.w + r29.w);
            r11.x = r14.w * r11.x;
            r14.w = dot(r30.xyz, r24.xyz);
            r14.w = saturate(r14.w + r30.w);
            r11.x = r14.w * r11.x;
            r14.w = dot(r31.xyz, r24.xyz);
            r14.w = saturate(r14.w + r31.w);
            r11.x = r14.w * r11.x;
            r14.w = dot(r32.xyz, r24.xyz);
            r14.w = saturate(r14.w + r32.w);
            r9.x = r14.w * r11.x;
            r11.x = (int)r13.z & 1;
            r25.xy = r11.xx ? r9.xy : r9.zx;
            r9.x = r13.z;
            r26.xy = r25.xy;
            r11.x = 1;
            while (true) {
              r14.w = cmp((int)r11.x >= (int)r10.w);
              if (r14.w != 0) break;
              r14.w = (int)r9.w + (int)r11.x;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r14.w, l(0), t16.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r14.w, l(16), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r14.w, l(32), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r14.w, l(48), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r14.w, l(64), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r14.w, l(80), t16.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
              r14.w = dot(r29.xyz, r24.xyz);
              r14.w = saturate(r14.w + r29.w);
              r14.w = r26.x * r14.w;
              r15.w = dot(r30.xyz, r24.xyz);
              r15.w = saturate(r15.w + r30.w);
              r14.w = r15.w * r14.w;
              r15.w = dot(r31.xyz, r24.xyz);
              r15.w = saturate(r15.w + r31.w);
              r14.w = r15.w * r14.w;
              r15.w = dot(r32.xyz, r24.xyz);
              r15.w = saturate(r15.w + r32.w);
              r14.w = r15.w * r14.w;
              r15.w = dot(r33.xyz, r24.xyz);
              r15.w = saturate(r15.w + r33.w);
              r14.w = r15.w * r14.w;
              r15.w = dot(r34.xyz, r24.xyz);
              r15.w = saturate(r15.w + r34.w);
              r26.x = r15.w * r14.w;
              r19.w = (uint)r9.x >> 2;
              if (1 == 0) r21.w = 0; else if (1+2 < 32) {               r21.w = (uint)r9.x << (32-(1 + 2)); r21.w = (uint)r21.w >> (32-1);              } else r21.w = (uint)r9.x >> 2;
              r22.w = (int)r19.w & 2;
              r24.w = max(r26.y, r26.x);
              r14.w = -r14.w * r15.w + 1;
              r14.w = r26.y * r14.w;
              r13.y = r22.w ? r14.w : r24.w;
              r26.xy = r21.ww ? r26.xy : r13.xy;
              r11.x = (int)r11.x + 1;
              r9.x = r19.w;
            }
            r9.x = saturate(r26.y + -r7.y);
            r9.w = r9.x * r13.w;
            r10.w = cmp(0 < r9.w);
            if (r10.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r8.w, l(16), t15.xyzw
            r25.x = samp0[]..swiz;
            r25.y = samp0[]..swiz;
            r25.z = samp0[]..swiz;
            r25.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r8.w, l(32), t15.yxwz
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r8.w, l(48), t15.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r8.w, l(64), t15.zwxy
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r8.w, l(80), t15.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r8.w, l(132), t15.zwxy
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r8.w, l(148), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r8.w, l(164), t15.zwxy
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r8.w, l(180), t15.zwxy
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r8.w, l(196), t15.xyzw
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xy, r8.w, l(212), t15.xyxx
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
              r20.w = r9.x * r13.w + r20.w;
              r8.w = r9.w * r23.z;
              r23.z = r33.z;
              r9.x = dot(r12.xyz, r23.xyz);
              r9.w = dot(r24.xyz, r23.xyz);
              r9.w = r9.w + -r33.w;
              r10.w = cmp(r9.w >= 0);
              r9.w = max(abs(r9.w), r2.w);
              r9.w = r10.w ? r9.w : -r9.w;
              r9.x = max(1.00000001e-07, -r9.x);
              r9.x = r9.w / r9.x;
              r9.x = min(131072, abs(r9.x));
              r33.z = r34.z;
              r9.w = dot(r12.xyz, r33.xyz);
              r10.w = dot(r24.xyz, r33.xyz);
              r10.w = r10.w + -r34.w;
              r11.x = cmp(r10.w >= 0);
              r10.w = max(abs(r10.w), r2.w);
              r10.w = r11.x ? r10.w : -r10.w;
              r9.w = max(1.00000001e-07, -r9.w);
              r9.w = r10.w / r9.w;
              r9.x = min(r9.x, abs(r9.w));
              r34.z = r35.z;
              r9.w = dot(r12.xyz, r34.xyz);
              r10.w = dot(r24.xyz, r34.xyz);
              r10.w = r10.w + -r35.w;
              r11.x = cmp(r10.w >= 0);
              r10.w = max(abs(r10.w), r2.w);
              r10.w = r11.x ? r10.w : -r10.w;
              r9.w = max(1.00000001e-07, -r9.w);
              r9.w = r10.w / r9.w;
              r9.x = min(r9.x, abs(r9.w));
              r35.z = r36.z;
              r9.w = dot(r12.xyz, r35.xyz);
              r10.w = dot(r24.xyz, r35.xyz);
              r10.w = r10.w + -r36.w;
              r11.x = cmp(r10.w >= 0);
              r10.w = max(abs(r10.w), r2.w);
              r10.w = r11.x ? r10.w : -r10.w;
              r9.w = max(1.00000001e-07, -r9.w);
              r9.w = r10.w / r9.w;
              r9.x = min(r9.x, abs(r9.w));
              r36.z = r37.x;
              r9.w = dot(r12.xyz, r36.xyz);
              r10.w = dot(r24.xyz, r36.xyz);
              r10.w = r10.w + -r37.y;
              r11.x = cmp(r10.w >= 0);
              r10.w = max(abs(r10.w), r2.w);
              r10.w = r11.x ? r10.w : -r10.w;
              r9.w = max(1.00000001e-07, -r9.w);
              r9.w = r10.w / r9.w;
              r9.x = min(r9.x, abs(r9.w));
              r38.zw = r37.zw;
              r9.w = dot(r12.zxy, r38.xzw);
              r10.w = dot(r24.zxy, r38.xzw);
              r10.w = r10.w + -r38.y;
              r11.x = cmp(r10.w >= 0);
              r10.w = max(abs(r10.w), r2.w);
              r10.w = r11.x ? r10.w : -r10.w;
              r9.w = max(1.00000001e-07, -r9.w);
              r9.w = r10.w / r9.w;
              r9.x = min(r9.x, abs(r9.w));
              r23.x = r30.w;
              r23.yz = r31.zw;
              r13.yzw = r23.xyz + r24.xyz;
              r13.yzw = r12.xyz * r9.xxx + r13.yzw;
              r9.w = dot(r13.yzw, r13.yzw);
              r9.w = sqrt(r9.w);
              r9.x = r9.x / r9.w;
              r9.x = r9.x + r9.x;
              r9.x = sqrt(r9.x);
              r9.x = r0.w * 5 + r9.x;
              r9.x = -0.844799995 + r9.x;
              r22.y = r25.z;
              r22.z = r29.x;
              r33.x = dot(r13.yzw, r22.xyz);
              r23.xy = r25.xw;
              r23.z = r29.w;
              r33.y = dot(r13.yzw, r23.xyz);
              r29.x = r25.y;
              r33.z = dot(r13.yzw, r29.xyz);
              if (9 == 0) r9.w = 0; else if (9+16 < 32) {               r9.w = (uint)r23.w << (32-(9 + 16)); r9.w = (uint)r9.w >> (32-9);              } else r9.w = (uint)r23.w >> 16;
              r33.w = (uint)r9.w;
              r13.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, r9.x).xyz;
              r25.x = dot(r24.xyz, r22.xyz);
              r25.y = dot(r24.xyz, r23.xyz);
              r25.z = dot(r24.xyz, r29.xyz);
              r24.xyz = saturate(r25.xyz * r30.xyz + float3(0.5,0.5,0.5));
              r31.z = r32.x;
              r24.xyz = r24.xyz * r31.xyz + r32.yzw;
              r33.x = dot(r5.xyz, r22.xyz);
              r33.y = dot(r5.xyz, r23.xyz);
              r33.z = dot(r5.xyz, r29.xyz);
              r22.xyz = cmp(float3(0,0,0) < r33.xyz);
              r10.z = r22.x ? 0 : 0.5;
              r23.xyz = r24.xyz + r10.xyz;
              r23.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
              r25.xyz = r33.xyz * r33.xyz;
              r25.xyz = r25.xyz * r8.www;
              r14.z = r22.y ? 0 : 0.5;
              r22.xyw = r24.xyz + r14.xyz;
              r22.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r22.xyw, 0).xyz;
              r22.xyw = r22.xyw * r25.yyy;
              r22.xyw = r23.xyz * r25.xxx + r22.xyw;
              r15.z = r22.z ? 0 : 0.5;
              r23.xyz = r24.xyz + r15.xyz;
              r23.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
              r22.xyz = r23.xyz * r25.zzz + r22.xyw;
              r23.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, 6).xyz;
              r24.xyz = r23.xyz * r22.xyz;
              r9.x = dot(r24.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r21.xyz = r22.xyz * r23.xyz + r21.xyz;
              r9.w = r9.x * r3.x;
              r13.yzw = r13.yzw * r8.www;
              r8.w = dot(r13.yzw, float3(0.212599993,0.715200007,0.0722000003));
              r8.w = r3.x * r9.x + r8.w;
              r8.w = r9.w / r8.w;
              r20.xyz = r13.yzw * r8.www + r20.xyz;
            }
          }
        }
      }
      r16.xyzw = r20.xyzw;
      r19.xyz = r21.xyz;
      r6.w = (int)r6.w + 32;
    }
    r18.xyzw = r16.zxyw;
    r17.xyz = r19.xyz;
    r18.xyzw = r18.yzxw;
  } else {
    r18.x = r17.w;
  }
  r0.w = max(1, r18.w);
  r0.w = rcp(r0.w);
  r18.w = saturate(r18.w);
  r3.xyz = r17.xyz * r0.www;
  r6.xyz = r18.xyz * r0.www;
  r2.w = cmp(r18.w < 0.99000001);
  if (r2.w != 0) {
    r2.w = 1 + -r18.w;
    r3.w = sunConstants.globalProbeExposure * r2.w;
    r7.xyz = -globalProbeConstants.data[0].xyz + v7.xyz;
    r8.x = globalProbeConstants.data[0].w * r7.x;
    r8.yz = globalProbeConstants.data[1].xy * r7.yz;
    r7.xyz = saturate(float3(0.5,0.5,0.5) + r8.xyz);
    r8.xy = globalProbeConstants.data[1].zw * r7.xy;
    r8.z = globalProbeConstants.data[2].x * r7.z;
    r7.xyz = globalProbeConstants.data[2].yzw + r8.xyz;
    r8.xyz = cmp(float3(0,0,0) < r5.xyz);
    r8.xyz = r8.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r8.w = 0;
    r9.xyz = r8.wwx + r7.xyz;
    r9.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r9.xyz, 0).xyz;
    r10.xyz = r5.xyz * r5.xyz;
    r10.xyz = r10.xyz * r3.www;
    r13.xyz = r8.wwy + r7.xyz;
    r13.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r13.xyz, 0).xyz;
    r13.xyz = r13.xyz * r10.yyy;
    r9.xyz = r9.xyz * r10.xxx + r13.xyz;
    r7.xyz = r8.wwz + r7.xyz;
    r7.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r7.xyz, 0).xyz;
    r7.xyz = r7.xyz * r10.zzz + r9.xyz;
    r5.w = 0;
    r5.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r5.xyzw, 6).xyz;
    r5.xyz = r7.xyz * r5.xyz;
    r3.w = dot(r5.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r3.xyz = r17.xyz * r0.www + r5.xyz;
    r12.w = 0;
    r5.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r12.xyzw, r2.z).xyz;
    r0.w = sunConstants.globalProbeExposure * r2.w + -r3.w;
    r0.w = r2.y * r0.w + r3.w;
    r6.xyz = r5.xyz * r0.www + r6.xyz;
  }
  r3.xyz = r3.xyz * r1.www + r11.yzw;
  r2.xy = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r2.xy = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r2.xy, 0).xy;
  r5.xyz = r6.xyz * r1.www;
  r2.xzw = r5.xyz * r2.xxx + r27.xyz;
  r5.xyz = r5.xyz * r2.yyy + r28.xyz;
  r6.xyz = float3(1,1,1) + -r1.xyz;
  r2.xyz = r6.xyz * r2.xzw;
  r1.xyz = r5.xyz * r1.xyz + r2.xyz;
  r0.xyz = r3.xyz * r0.xyz + r1.xyz;
  r0.w = dot(r0.xyz, float3(0.298999995,0.587000012,0.114));
  r0.w = max(9.99999975e-05, r0.w);
  r0.w = max(relHDRExposure.x, r0.w);
  r0.xyz = r4.xyz * r0.www + r0.xyz;
  r0.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.w != 0) {
    r0.w = dot(v7.xyz, v7.xyz);
    r1.x = rsqrt(r0.w);
    r1.xyz = v7.xyz * r1.xxx;
    r0.w = sqrt(r0.w);
    r1.w = cmp(0 < fogConstants.blendAmount);
    if (r1.w != 0) {
      r2.xy = r0.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
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
      r1.w = r0.w * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
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
    r0.w = -fogConstants.atmospherehazebasedist + r0.w;
    r0.w = saturate(fogConstants.atmospherehazefadedist * r0.w);
    r0.w = r1.y * r0.w;
    r1.x = saturate(r1.x);
    r1.x = r1.x * r1.x + 1;
    r1.x = r1.x * 0.0596831031 + -1;
    r1.x = fogConstants.atmospheresunstrength * r1.x + 1;
    r1.yzw = fogConstants.atmosphereMieDensity.xyz * r0.www;
    r1.xyz = r1.xxx * fogConstants.atmosphereRayleighDensity.xyz + r1.yzw;
    r1.xyz = fogConstants.atmosphereInScatterIntensity * r1.xyz;
    r3.xyz = float3(1,1,1) + -r2.xyz;
    r1.xyz = r3.xyz * r1.xyz;
    r1.xyz = r0.xyz * r2.xyz + r1.xyz;
  } else {
    r0.w = fogConstants.heightFalloff * v7.z;
    r1.w = fogConstants.heightFalloff * v7.z + fogConstants.K0;
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
    r1.w = dot(v7.xyz, v7.xyz);
    r2.x = sqrt(r1.w);
    r0.w = r0.w * r2.x + fogConstants.expAdd;
    r0.w = exp2(r0.w);
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r1.w = rsqrt(r1.w);
    r2.xyz = v7.xyz * r1.www;
    r1.w = dot(fogConstants.wldSunFogDir.xyz, r2.xyz);
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
  return;
}