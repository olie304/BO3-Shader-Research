// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:34:19 2021

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
  float rowCount : packoffset(c12.z);
  float columnCount : packoffset(c12.w);
  float imageTime : packoffset(c13);
  float2 rotateUVs : packoffset(c13.y);
  float2 scrollUVs : packoffset(c14);
  float2 scaleUVs : packoffset(c14.z);
  float2 offsetUVs : packoffset(c15);
  float2 zoomUVs : packoffset(c15.z);
  float zoomRate : packoffset(c16);
  float layerDepth : packoffset(c16.y);
  bool clampU : packoffset(c16.z);
  bool clampV : packoffset(c16.w);
  float2 flickerSeed : packoffset(c17);
  float flickerSpeed : packoffset(c17.z);
  float2 flickerRange : packoffset(c18);
  float flickerPower : packoffset(c18.z);
  uint zFeatherComputeSprites : packoffset(c18.w);
  float hdrScale : packoffset(c19);
  float emissiveFalloffPower : packoffset(c19.y);
  float3 emissiveTint1 : packoffset(c20);
  bool relativeHDR : packoffset(c20.w);
  bool invertFalloff : packoffset(c21);
  float uvMotionToggle1 : packoffset(c21.y);
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
SamplerState lookupSampler_s : register(s7);
SamplerComparisonState ShadowSamplerComparisonState_s : register(s13);
Texture2D<float4> colorMap : register(t0);
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
Texture2D<float4> specColorMap : register(t21);
Texture2D<float4> normalMap : register(t22);
StructuredBuffer<gSunShadowTree> gSunShadowTree : register(t23);
Texture2D<float4> glossMap : register(t24);
Texture2D<float4> aoMap : register(t25);
Texture2D<float4> flickerLookupMap : register(t26);
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
  nointerpolation float3 v2 : UVOFFSETS0,
  nointerpolation uint w2 : TEXCOORD4,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45,r46;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = colorMap.Sample(colorSampler_s, w1.xy).xyzw;
  r1.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r1.xyz = r0.www * r1.xyz + float3(1,1,1);
  r0.xyz = r1.xyz * r0.xyz;
  r0.w = v1.x * r0.w;
  r1.xyz = specColorMap.Sample(specColorSampler_s, w1.xy).xyz;
  r1.w = aoMap.Sample(aoSampler_s, w1.xy).x;
  r2.x = glossMap.Sample(specColorSampler_s, w1.xy).x;
  r2.y = glossRange.y + -glossRange.x;
  r2.x = r2.x * r2.y + glossRange.x;
  r2.x = saturate(0.0588235296 * r2.x);
  r2.yzw = normalMap.Sample(normalSampler_s, w1.xy).xyz;
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
  r3.y = v7.x ? 1 : -1;
  r3.z = dot(v3.xyz, v3.xyz);
  r3.z = rsqrt(r3.z);
  r4.xyz = v3.xyz * r3.zzz;
  r4.xyz = r4.xyz * r3.yyy;
  r3.z = dot(v4.xyz, v4.xyz);
  r3.z = rsqrt(r3.z);
  r5.xyz = v4.xyz * r3.zzz;
  r5.xyz = r5.xyz * r3.yyy;
  r3.z = dot(v5.xyz, v5.xyz);
  r3.z = rsqrt(r3.z);
  r6.xyz = v5.xyz * r3.zzz;
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
  r3.zw = (uint2)v0.xy;
  r5.xyz = ddx_coarse(v6.xyz);
  r6.xyz = ddy_coarse(v6.xyz);
  r4.w = numRefProbes + numLights;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r5.w, v2.w, l(8), t4.xxxx
r5.w = samp0[]..swiz;
  r7.xy = (int2)r5.ww & int2(268435456,536870912);
  if (r7.x != 0) {
    r8.xyz = eyeOffset.xyz + v6.xyz;
    r5.w = 0.0078125 * r3.x;
    r5.w = min(15, r5.w);
    r5.w = (uint)r5.w;
    r9.xy = (uint2)r3.zw >> int2(6,6);
    r9.z = (uint)r5.w << 4;
    r5.w = numStaticDecals & -32;
    r6.w = (int)-r5.w + numStaticDecals;
    r10.xy = float2(0,0);
    r11.w = 0;
    r8.w = 1;
    r12.xyzw = float4(0,0,0,0);
    r7.xzw = float3(0,0,0);
    r13.yz = float2(0,0);
    r14.xy = float2(0,0);
    r9.w = 0;
    while (true) {
      r10.w = cmp((uint)r9.w >= numStaticDecals);
      if (r10.w != 0) break;
      r10.z = (uint)r9.w >> 5;
      r11.xyz = (int3)r9.xyz + (int3)r10.xyz;
      r10.z = visibleDecals.Load(r11.xyzw).x;
      r10.w = cmp((int)r5.w == (int)r9.w);
      if (r6.w == 0) r11.x = 0; else if (r6.w+0 < 32) {       r11.x = (uint)r10.z << (32-(r6.w + 0)); r11.x = (uint)r11.x >> (32-r6.w);      } else r11.x = (uint)r10.z >> 0;
      r10.z = r10.w ? r11.x : r10.z;
      r10.w = (int)r4.w + (int)r9.w;
      r15.xyzw = r12.xzwy;
      r11.xyz = r7.xzw;
      r16.yz = r13.yz;
      r17.xy = r14.xy;
      r13.w = r10.z;
      while (true) {
        if (r13.w == 0) break;
        r14.w = firstbitlow((uint)r13.w);
        r16.w = 1 << (int)r14.w;
        r17.w = (int)r13.w & (int)r16.w;
        if (r17.w != 0) {
          r13.w = (int)r13.w ^ (int)r16.w;
          r16.w = (int)r10.w + (int)r14.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r18.xyzw, r16.w, l(0), t11.xyzw
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
        r18.z = samp0[]..swiz;
        r18.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r19.xy, r16.w, l(16), t11.xyxx
        r19.x = samp0[]..swiz;
        r19.y = samp0[]..swiz;
          r18.xyz = -v6.xyz + r18.xyz;
          r19.z = r18.w;
          r18.xyz = cmp(abs(r18.xyz) < r19.zxy);
          r16.w = r18.y ? r18.x : 0;
          r16.w = r18.z ? r16.w : 0;
          if (r16.w != 0) {
            r14.w = (int)r9.w + (int)r14.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r18.xyz, r14.w, l(0), t36.xyzx
          r18.x = samp0[]..swiz;
          r18.y = samp0[]..swiz;
          r18.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r19.xyz, r14.w, l(16), t36.xyzx
          r19.x = samp0[]..swiz;
          r19.y = samp0[]..swiz;
          r19.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r20.xyz, r14.w, l(32), t36.xyzx
          r20.x = samp0[]..swiz;
          r20.y = samp0[]..swiz;
          r20.z = samp0[]..swiz;
            r21.x = r18.x;
            r21.y = r19.x;
            r21.z = r20.x;
            r16.w = dot(r21.xyz, r21.xyz);
            r16.w = rsqrt(r16.w);
            r22.xyz = r21.xyz * r16.www;
            r16.w = dot(r22.xyz, v3.xyz);
            r16.w = cmp(r16.w >= 0.5);
            if (r16.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r23.xyw, r14.w, l(48), t36.xyxz
            r23.x = samp0[]..swiz;
            r23.y = samp0[]..swiz;
            r23.w = samp0[]..swiz;
              r21.w = r23.x;
              r21.x = dot(r8.xyzw, r21.xyzw);
              r24.x = r18.y;
              r24.y = r19.y;
              r24.z = r20.y;
              r24.w = r23.y;
              r21.y = dot(r8.xyzw, r24.xyzw);
              r23.x = r18.z;
              r23.y = r19.z;
              r23.z = r20.z;
              r21.z = dot(r8.xyzw, r23.xyzw);
              r18.xyz = cmp(abs(r21.xyz) < float3(1,1,1));
              r16.w = r18.y ? r18.x : 0;
              r16.w = r18.z ? r16.w : 0;
              if (r16.w != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r18.xyzw, r14.w, l(64), t36.xyzw
              r18.x = samp0[]..swiz;
              r18.y = samp0[]..swiz;
              r18.z = samp0[]..swiz;
              r18.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r19.xyzw, r14.w, l(80), t36.xyzw
              r19.x = samp0[]..swiz;
              r19.y = samp0[]..swiz;
              r19.z = samp0[]..swiz;
              r19.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r20.xyzw, r14.w, l(96), t36.xyzw
              r20.x = samp0[]..swiz;
              r20.y = samp0[]..swiz;
              r20.z = samp0[]..swiz;
              r20.w = samp0[]..swiz;
                r25.x = dot(r5.xyz, r24.xyz);
                r25.y = dot(r5.xyz, r23.xyz);
                r26.x = dot(r6.xyz, r24.xyz);
                r26.y = dot(r6.xyz, r23.xyz);
                r21.xy = r21.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                r25.xyz = float3(0.5,-0.5,0.5) * r25.xyx;
                r26.xyz = float3(0.5,-0.5,0.5) * r26.xyx;
                r21.zw = (int2)r19.yz & int2(65535,65535);
                if (r21.z != 0) {
                  if (4 == 0) r16.w = 0; else if (4+24 < 32) {                   r16.w = (uint)r19.w << (32-(4 + 24)); r16.w = (uint)r16.w >> (32-4);                  } else r16.w = (uint)r19.w >> 24;
                  r16.w = 1 << (int)r16.w;
                  r17.w = (uint)r19.w >> 28;
                  r17.w = 1 << (int)r17.w;
                  r22.w = cmp((int)r21.z == 4);
                  if (r22.w != 0) {
                    r22.w = (int)r19.w & 4095;
                    if (12 == 0) r23.w = 0; else if (12+12 < 32) {                     r23.w = (uint)r19.w << (32-(12 + 12)); r23.w = (uint)r23.w >> (32-12);                    } else r23.w = (uint)r19.w >> 12;
                    r24.w = (int)r20.w & 1023;
                    r27.xz = (uint2)r16.ww;
                    r27.y = (uint)r17.w;
                    r28.xy = r21.xy * r27.zy + float2(0.5,0.5);
                    r28.zw = float2(-0.5,-0.5) + r27.zy;
                    r28.xy = min(r28.xy, r28.zw);
                    r29.x = (uint)r22.w;
                    r29.y = (uint)r23.w;
                    r28.xy = r29.xy + r28.xy;
                    r28.xy = invBcTexSizes.xy * r28.xy;
                    r28.z = (uint)r24.w;
                    r29.xyz = invBcTexSizes.xyx * r25.zyz;
                    r29.xyz = r29.xyz * r27.xyz;
                    r30.xyz = invBcTexSizes.xyx * r26.zyz;
                    r27.xyz = r30.xyz * r27.xyz;
                    r27.xyzw = materialTexBC7.SampleGrad(samplerLinearClamp_s, r28.xyz, r29.xyzx, r27.xyzx).xyzw;
                  } else {
                    r21.z = cmp((int)r21.z == 1);
                    if (r21.z != 0) {
                      r21.z = (int)r19.w & 4095;
                      if (12 == 0) r19.w = 0; else if (12+12 < 32) {                       r19.w = (uint)r19.w << (32-(12 + 12)); r19.w = (uint)r19.w >> (32-12);                      } else r19.w = (uint)r19.w >> 12;
                      r22.w = (int)r20.w & 1023;
                      r28.xz = (uint2)r16.ww;
                      r28.y = (uint)r17.w;
                      r29.xy = r21.xy * r28.zy + float2(0.5,0.5);
                      r29.zw = float2(-0.5,-0.5) + r28.zy;
                      r29.xy = min(r29.xy, r29.zw);
                      r30.x = (uint)r21.z;
                      r30.y = (uint)r19.w;
                      r29.xy = r30.xy + r29.xy;
                      r29.xy = invBcTexSizes.zw * r29.xy;
                      r29.z = (uint)r22.w;
                      r30.xyz = invBcTexSizes.zwz * r25.zyz;
                      r30.xyz = r30.xyz * r28.xyz;
                      r31.xyz = invBcTexSizes.zwz * r26.zyz;
                      r28.xyz = r31.xyz * r28.xyz;
                      r27.xyzw = materialTexBC3.SampleGrad(samplerLinearClamp_s, r29.xyz, r30.xyzx, r28.xyzx).xyzw;
                    } else {
                      r27.xyzw = float4(1,1,1,1);
                    }
                  }
                  r18.xyz = r27.xyz * r18.xyz;
                  r16.w = r27.w * r18.w;
                } else {
                  r18.xyz = float3(0,0,0);
                  r16.w = 0;
                }
                r17.w = cmp(r19.x != 1.000000);
                r18.w = r16.w + r18.w;
                r18.w = saturate(r18.w * r19.x + -r19.x);
                r16.w = r17.w ? r18.w : r16.w;
                if (r21.w != 0) {
                  if (4 == 0) r17.w = 0; else if (4+24 < 32) {                   r17.w = (uint)r20.y << (32-(4 + 24)); r17.w = (uint)r17.w >> (32-4);                  } else r17.w = (uint)r20.y >> 24;
                  r17.w = 1 << (int)r17.w;
                  r18.w = (uint)r20.y >> 28;
                  r18.w = 1 << (int)r18.w;
                  r19.x = cmp((int)r21.w == 2);
                  if (r19.x != 0) {
                    r19.x = (int)r20.y & 4095;
                    if (12 == 0) r27.x = 0; else if (12+12 < 32) {                     r27.x = (uint)r20.y << (32-(12 + 12)); r27.x = (uint)r27.x >> (32-12);                    } else r27.x = (uint)r20.y >> 12;
                    if (10 == 0) r27.y = 0; else if (10+20 < 32) {                     r27.y = (uint)r20.w << (32-(10 + 20)); r27.y = (uint)r27.y >> (32-10);                    } else r27.y = (uint)r20.w >> 20;
                    r28.xz = (uint2)r17.ww;
                    r28.y = (uint)r18.w;
                    r27.zw = r21.xy * r28.zy + float2(0.5,0.5);
                    r29.xy = float2(-0.5,-0.5) + r28.zy;
                    r27.zw = min(r29.xy, r27.zw);
                    r29.x = (uint)r19.x;
                    r29.yz = (uint2)r27.xy;
                    r19.xw = r29.xy + r27.zw;
                    r29.xy = invMaskTexSizes.xy * r19.xw;
                    r27.xyz = invMaskTexSizes.xyx * r25.zyz;
                    r27.xyz = r27.xyz * r28.xyz;
                    r30.xyz = invMaskTexSizes.xyx * r26.zyz;
                    r28.xyz = r30.xyz * r28.xyz;
                    r19.x = materialTexMask.SampleGrad(samplerLinearClamp_s, r29.xyz, r27.x, r28.x).x;
                  } else {
                    r19.w = cmp((int)r21.w == 4);
                    if (r19.w != 0) {
                      r19.w = (int)r20.y & 4095;
                      if (12 == 0) r21.z = 0; else if (12+12 < 32) {                       r21.z = (uint)r20.y << (32-(12 + 12)); r21.z = (uint)r21.z >> (32-12);                      } else r21.z = (uint)r20.y >> 12;
                      if (10 == 0) r21.w = 0; else if (10+20 < 32) {                       r21.w = (uint)r20.w << (32-(10 + 20)); r21.w = (uint)r21.w >> (32-10);                      } else r21.w = (uint)r20.w >> 20;
                      r27.xz = (uint2)r17.ww;
                      r27.y = (uint)r18.w;
                      r28.xy = r21.xy * r27.zy + float2(0.5,0.5);
                      r28.zw = float2(-0.5,-0.5) + r27.zy;
                      r28.xy = min(r28.xy, r28.zw);
                      r29.x = (uint)r19.w;
                      r29.y = (uint)r21.z;
                      r28.xy = r29.xy + r28.xy;
                      r28.xy = invBcTexSizes.xy * r28.xy;
                      r28.z = (uint)r21.w;
                      r29.xyz = invBcTexSizes.xyx * r25.zyz;
                      r29.xyz = r29.xyz * r27.xyz;
                      r30.xyz = invBcTexSizes.xyx * r26.zyz;
                      r27.xyz = r30.xyz * r27.xyz;
                      r19.x = materialTexBC7.SampleGrad(samplerLinearClamp_s, r28.xyz, r29.x, r27.x).x;
                    } else {
                      r19.w = (int)r20.y & 4095;
                      if (12 == 0) r21.z = 0; else if (12+12 < 32) {                       r21.z = (uint)r20.y << (32-(12 + 12)); r21.z = (uint)r21.z >> (32-12);                      } else r21.z = (uint)r20.y >> 12;
                      if (10 == 0) r21.w = 0; else if (10+20 < 32) {                       r21.w = (uint)r20.w << (32-(10 + 20)); r21.w = (uint)r21.w >> (32-10);                      } else r21.w = (uint)r20.w >> 20;
                      r27.xz = (uint2)r17.ww;
                      r27.y = (uint)r18.w;
                      r28.xy = r21.xy * r27.zy + float2(0.5,0.5);
                      r28.zw = float2(-0.5,-0.5) + r27.zy;
                      r28.xy = min(r28.xy, r28.zw);
                      r29.x = (uint)r19.w;
                      r29.y = (uint)r21.z;
                      r28.xy = r29.xy + r28.xy;
                      r28.xy = invBcTexSizes.zw * r28.xy;
                      r28.z = (uint)r21.w;
                      r29.xyz = invBcTexSizes.zwz * r25.zyz;
                      r29.xyz = r29.xyz * r27.xyz;
                      r30.xyz = invBcTexSizes.zwz * r26.zyz;
                      r27.xyz = r30.xyz * r27.xyz;
                      r19.x = materialTexBC3.SampleGrad(samplerLinearClamp_s, r28.xyz, r29.x, r27.x).x;
                    }
                  }
                  r27.xyz = r19.xxx * float3(0.959999979,0.959999979,0.959999979) + float3(0.0399999991,0.0399999991,0.0399999991);
                  r17.w = saturate(1 + -r19.x);
                  r18.xyz = r18.xyz * r17.www;
                } else {
                  r27.xyz = float3(0.0399999991,0.0399999991,0.0399999991);
                }
                r19.xy = (uint2)r19.zy >> int2(16,16);
                if (r19.x != 0) {
                  r17.w = cmp((int)r19.x == 2);
                  if (r17.w != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r14.w, r14.w, l(112), t36.xxxx
                  r14.w = samp0[]..swiz;
                    if (4 == 0) r19.z = 0; else if (4+24 < 32) {                     r19.z = (uint)r20.z << (32-(4 + 24)); r19.z = (uint)r19.z >> (32-4);                    } else r19.z = (uint)r20.z >> 24;
                    if (12 == 0) r19.w = 0; else if (12+12 < 32) {                     r19.w = (uint)r20.z << (32-(12 + 12)); r19.w = (uint)r19.w >> (32-12);                    } else r19.w = (uint)r20.z >> 12;
                    r17.w = 1 << (int)r19.z;
                    r18.w = (uint)r20.z >> 28;
                    r18.w = 1 << (int)r18.w;
                    r19.z = (int)r20.z & 4095;
                    r14.w = (int)r14.w & 1023;
                    r28.xz = (uint2)r17.ww;
                    r28.y = (uint)r18.w;
                    r20.yz = r21.xy * r28.zy + float2(0.5,0.5);
                    r21.zw = float2(-0.5,-0.5) + r28.zy;
                    r20.yz = min(r21.zw, r20.yz);
                    r29.xy = (uint2)r19.zw;
                    r19.zw = r29.xy + r20.yz;
                    r29.xy = invMaskTexSizes.xy * r19.zw;
                    r29.z = (uint)r14.w;
                    r30.xyz = invMaskTexSizes.xyx * r25.zyz;
                    r30.xyz = r30.xyz * r28.xyz;
                    r31.xyz = invMaskTexSizes.xyx * r26.zyz;
                    r28.xyz = r31.xyz * r28.xyz;
                    r14.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r29.xyz, r30.x, r28.x).x;
                  } else {
                    r17.w = cmp((int)r19.x == 6);
                    r14.w = r17.w ? 0 : 1;
                  }
                } else {
                  r14.w = 1;
                }
                r14.w = saturate(0.764705896 * r14.w);
                if (r19.y != 0) {
                  r17.w = cmp((int)r19.y == 3);
                  if (r17.w != 0) {
                    if (4 == 0) r19.x = 0; else if (4+24 < 32) {                     r19.x = (uint)r20.x << (32-(4 + 24)); r19.x = (uint)r19.x >> (32-4);                    } else r19.x = (uint)r20.x >> 24;
                    if (12 == 0) r19.y = 0; else if (12+12 < 32) {                     r19.y = (uint)r20.x << (32-(12 + 12)); r19.y = (uint)r19.y >> (32-12);                    } else r19.y = (uint)r20.x >> 12;
                    if (10 == 0) r19.z = 0; else if (10+10 < 32) {                     r19.z = (uint)r20.w << (32-(10 + 10)); r19.z = (uint)r19.z >> (32-10);                    } else r19.z = (uint)r20.w >> 10;
                    r17.w = 1 << (int)r19.x;
                    r18.w = (uint)r20.x >> 28;
                    r18.w = 1 << (int)r18.w;
                    r19.x = (int)r20.x & 4095;
                    r20.xz = (uint2)r17.ww;
                    r20.y = (uint)r18.w;
                    r21.xy = r21.xy * r20.xy + float2(0.5,0.5);
                    r21.zw = float2(-0.5,-0.5) + r20.zy;
                    r21.xy = min(r21.xy, r21.zw);
                    r28.xy = (uint2)r19.xy;
                    r19.xy = r28.xy + r21.xy;
                    r21.xy = invMaskTexSizes.zw * r19.xy;
                    r21.z = (uint)r19.z;
                    r19.xyz = invMaskTexSizes.zwz * r25.xyz;
                    r19.xyz = r19.xyz * r20.xyz;
                    r25.xyz = invMaskTexSizes.zwz * r26.xyz;
                    r20.xyz = r25.xyz * r20.xyz;
                    r19.xyz = materialTexBC7linear.SampleGrad(samplerLinearClamp_s, r21.xyz, r19.xyz, r20.xyz).xyz;
                  } else {
                    r19.xyz = float3(0.5,0.5,1);
                  }
                  r19.xy = r19.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
                  r17.w = dot(r19.xy, r19.xy);
                  r17.w = 1 + -r17.w;
                  r17.w = max(0, r17.w);
                  r17.w = sqrt(r17.w);
                  r18.w = r19.z * r19.z;
                  r18.w = 0.333333343 * r18.w;
                  r18.w = min(1, r18.w);
                  r19.z = dot(r24.xyz, r24.xyz);
                  r19.z = rsqrt(r19.z);
                  r20.xyz = r24.xyz * r19.zzz;
                  r19.z = dot(-r23.xyz, -r23.xyz);
                  r19.z = rsqrt(r19.z);
                  r21.xyz = -r23.xyz * r19.zzz;
                  r22.xyz = r22.xyz * r3.yyy;
                  r20.xyz = r20.xyz * r3.yyy;
                  r21.xyz = r21.xyz * r3.yyy;
                  r19.z = -17 * r14.w;
                  r19.z = exp2(r19.z);
                  r18.w = r19.z + r18.w;
                  r18.w = log2(r18.w);
                  r18.w = -0.0588235296 * r18.w;
                  r14.w = max(0, r18.w);
                  r19.yzw = r21.xyz * r19.yyy;
                  r19.xyz = r20.xyz * r19.xxx + r19.yzw;
                  r19.xyz = r22.xyz * r17.www + r19.xyz;
                  r17.w = dot(r19.xyz, r19.xyz);
                  r17.w = rsqrt(r17.w);
                  r19.xyz = r19.xyz * r17.www;
                  r17.w = 1 + -r16.w;
                  r16.x = r15.x;
                  r20.xyz = r16.xyz * r17.www;
                  r16.xyz = r19.xyz * r16.www + r20.xyz;
                  r15.x = r16.x;
                }
                r16.x = 1 + -r16.w;
                r19.xyz = r16.xxx * r11.xyz;
                r11.xyz = r18.xyz * r16.www + r19.xyz;
                r17.z = r15.y;
                r18.xyz = r17.xyz * r16.xxx;
                r17.xyz = r27.xyz * r16.www + r18.xyz;
                r17.w = r16.x * r15.w;
                r15.z = r15.z * r16.x + r16.w;
                r15.w = r14.w * r16.w + r17.w;
                r15.y = r17.z;
              }
            }
          }
        }
      }
      r12.xyzw = r15.xwyz;
      r7.xzw = r11.xyz;
      r13.yz = r16.yz;
      r14.xy = r17.xy;
      r9.w = (int)r9.w + 32;
    }
    r13.x = r12.x;
    r14.z = r12.z;
    r12.xy = r12.wy;
  } else {
    r7.xzw = float3(0,0,0);
    r13.xyz = float3(0,0,0);
    r14.xyz = float3(0,0,0);
    r12.xy = float2(0,0);
  }
  if (r7.y != 0) {
    r8.xyz = eyeOffset.xyz + v6.xyz;
    r5.w = numDynamicDecals + numStaticDecals;
    r6.w = 0.0078125 * r3.x;
    r6.w = min(15, r6.w);
    r6.w = (uint)r6.w;
    r9.xy = (uint2)r3.zw >> int2(6,6);
    r9.z = (uint)r6.w << 4;
    r6.w = numStaticDecals & -32;
    r7.y = (int)-r6.w + numStaticDecals;
    r9.w = (int)r5.w & -32;
    r10.x = (int)r5.w + (int)-r9.w;
    r11.xy = float2(0,0);
    r15.w = 0;
    r8.w = 1;
    r10.yzw = r7.xzw;
    r16.xyz = r13.xyz;
    r17.xyz = r14.xyz;
    r18.xy = r12.xy;
    r11.w = r6.w;
    while (true) {
      r12.z = cmp((uint)r11.w >= (uint)r5.w);
      if (r12.z != 0) break;
      r11.z = (uint)r11.w >> 5;
      r15.xyz = (int3)r9.xyz + (int3)r11.xyz;
      r11.z = visibleDecals.Load(r15.xyzw).x;
      r12.z = cmp((int)r6.w == (int)r11.w);
      bitmask.w = ((~(-1 << r7.y)) << 0) & 0xffffffff;  r12.w = (((uint)0 << 0) & bitmask.w) | ((uint)r11.z & ~bitmask.w);
      r11.z = r12.z ? r12.w : r11.z;
      r12.z = cmp((int)r9.w == (int)r11.w);
      if (r10.x == 0) r12.w = 0; else if (r10.x+0 < 32) {       r12.w = (uint)r11.z << (32-(r10.x + 0)); r12.w = (uint)r12.w >> (32-r10.x);      } else r12.w = (uint)r11.z >> 0;
      r11.z = r12.z ? r12.w : r11.z;
      r12.z = (int)r4.w + (int)r11.w;
      r15.xyz = r10.yzw;
      r19.xyz = r16.xyz;
      r20.xyz = r17.xyz;
      r18.zw = r18.xy;
      r12.w = r11.z;
      while (true) {
        if (r12.w == 0) break;
        r13.w = firstbitlow((uint)r12.w);
        r14.w = 1 << (int)r13.w;
        r16.w = (int)r12.w & (int)r14.w;
        if (r16.w != 0) {
          r12.w = (int)r12.w ^ (int)r14.w;
          r14.w = (int)r12.z + (int)r13.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r21.xyzw, r14.w, l(0), t11.xyzw
        r21.x = samp0[]..swiz;
        r21.y = samp0[]..swiz;
        r21.z = samp0[]..swiz;
        r21.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r22.xy, r14.w, l(16), t11.xyxx
        r22.x = samp0[]..swiz;
        r22.y = samp0[]..swiz;
          r21.xyz = -v6.xyz + r21.xyz;
          r22.z = r21.w;
          r21.xyz = cmp(abs(r21.xyz) < r22.zxy);
          r14.w = r21.y ? r21.x : 0;
          r14.w = r21.z ? r14.w : 0;
          if (r14.w != 0) {
            r13.w = (int)r11.w + (int)r13.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r21.xyz, r13.w, l(0), t36.xyzx
          r21.x = samp0[]..swiz;
          r21.y = samp0[]..swiz;
          r21.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r22.xyz, r13.w, l(16), t36.xyzx
          r22.x = samp0[]..swiz;
          r22.y = samp0[]..swiz;
          r22.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r23.xyz, r13.w, l(32), t36.xyzx
          r23.x = samp0[]..swiz;
          r23.y = samp0[]..swiz;
          r23.z = samp0[]..swiz;
            r24.x = r21.x;
            r24.y = r22.x;
            r24.z = r23.x;
            r14.w = dot(r24.xyz, r24.xyz);
            r14.w = rsqrt(r14.w);
            r25.xyz = r24.xyz * r14.www;
            r14.w = dot(r25.xyz, v3.xyz);
            r14.w = cmp(r14.w >= 0.5);
            if (r14.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r26.xyw, r13.w, l(48), t36.xyxz
            r26.x = samp0[]..swiz;
            r26.y = samp0[]..swiz;
            r26.w = samp0[]..swiz;
              r24.w = r26.x;
              r24.x = dot(r8.xyzw, r24.xyzw);
              r27.x = r21.y;
              r27.y = r22.y;
              r27.z = r23.y;
              r27.w = r26.y;
              r24.y = dot(r8.xyzw, r27.xyzw);
              r26.x = r21.z;
              r26.y = r22.z;
              r26.z = r23.z;
              r24.z = dot(r8.xyzw, r26.xyzw);
              r21.xyz = cmp(abs(r24.xyz) < float3(1,1,1));
              r14.w = r21.y ? r21.x : 0;
              r14.w = r21.z ? r14.w : 0;
              if (r14.w != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r21.xyzw, r13.w, l(64), t36.xyzw
              r21.x = samp0[]..swiz;
              r21.y = samp0[]..swiz;
              r21.z = samp0[]..swiz;
              r21.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r22.xyzw, r13.w, l(80), t36.xyzw
              r22.x = samp0[]..swiz;
              r22.y = samp0[]..swiz;
              r22.z = samp0[]..swiz;
              r22.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r23.xyzw, r13.w, l(96), t36.xyzw
              r23.x = samp0[]..swiz;
              r23.y = samp0[]..swiz;
              r23.z = samp0[]..swiz;
              r23.w = samp0[]..swiz;
                r28.x = dot(r5.xyz, r27.xyz);
                r28.y = dot(r5.xyz, r26.xyz);
                r29.x = dot(r6.xyz, r27.xyz);
                r29.y = dot(r6.xyz, r26.xyz);
                r24.xy = r24.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                r28.xyz = float3(0.5,-0.5,0.5) * r28.xyx;
                r29.xyz = float3(0.5,-0.5,0.5) * r29.xyx;
                r24.zw = (int2)r22.yz & int2(65535,65535);
                if (r24.z != 0) {
                  if (4 == 0) r14.w = 0; else if (4+24 < 32) {                   r14.w = (uint)r22.w << (32-(4 + 24)); r14.w = (uint)r14.w >> (32-4);                  } else r14.w = (uint)r22.w >> 24;
                  r14.w = 1 << (int)r14.w;
                  r16.w = (uint)r22.w >> 28;
                  r16.w = 1 << (int)r16.w;
                  r17.w = cmp((int)r24.z == 4);
                  if (r17.w != 0) {
                    r17.w = r22.w ? 0.000000 : 0;
                    if (12 == 0) r19.w = 0; else if (12+12 < 32) {                     r19.w = (uint)r22.w << (32-(12 + 12)); r19.w = (uint)r19.w >> (32-12);                    } else r19.w = (uint)r22.w >> 12;
                    r20.w = (int)r23.w & 1023;
                    r30.xz = (uint2)r14.ww;
                    r30.y = (uint)r16.w;
                    r31.xy = r24.xy * r30.zy + float2(0.5,0.5);
                    r31.zw = float2(-0.5,-0.5) + r30.zy;
                    r31.xy = min(r31.xy, r31.zw);
                    r32.x = (uint)r17.w;
                    r32.y = (uint)r19.w;
                    r31.xy = r32.xy + r31.xy;
                    r31.xy = invBcTexSizes.xy * r31.xy;
                    r31.z = (uint)r20.w;
                    r32.xyz = invBcTexSizes.xyx * r28.zyz;
                    r32.xyz = r32.xyz * r30.xyz;
                    r33.xyz = invBcTexSizes.xyx * r29.zyz;
                    r30.xyz = r33.xyz * r30.xyz;
                    r30.xyzw = materialTexBC7.SampleGrad(samplerLinearClamp_s, r31.xyz, r32.xyzx, r30.xyzx).xyzw;
                  } else {
                    r17.w = cmp((int)r24.z == 1);
                    if (r17.w != 0) {
                      r17.w = r22.w ? 0.000000 : 0;
                      if (12 == 0) r19.w = 0; else if (12+12 < 32) {                       r19.w = (uint)r22.w << (32-(12 + 12)); r19.w = (uint)r19.w >> (32-12);                      } else r19.w = (uint)r22.w >> 12;
                      r20.w = (int)r23.w & 1023;
                      r31.xz = (uint2)r14.ww;
                      r31.y = (uint)r16.w;
                      r32.xy = r24.xy * r31.zy + float2(0.5,0.5);
                      r32.zw = float2(-0.5,-0.5) + r31.zy;
                      r32.xy = min(r32.xy, r32.zw);
                      r33.x = (uint)r17.w;
                      r33.y = (uint)r19.w;
                      r32.xy = r33.xy + r32.xy;
                      r32.xy = invBcTexSizes.zw * r32.xy;
                      r32.z = (uint)r20.w;
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
                  r14.w = r30.w * r21.w;
                } else {
                  r21.xyz = float3(0,0,0);
                  r14.w = 0;
                }
                r16.w = cmp(r22.x != 1.000000);
                r17.w = r14.w + r21.w;
                r17.w = saturate(r17.w * r22.x + -r22.x);
                r14.w = r16.w ? r17.w : r14.w;
                if (r24.w != 0) {
                  if (4 == 0) r16.w = 0; else if (4+24 < 32) {                   r16.w = (uint)r23.y << (32-(4 + 24)); r16.w = (uint)r16.w >> (32-4);                  } else r16.w = (uint)r23.y >> 24;
                  r16.w = 1 << (int)r16.w;
                  r17.w = (uint)r23.y >> 28;
                  r17.w = 1 << (int)r17.w;
                  r19.w = cmp((int)r24.w == 2);
                  if (r19.w != 0) {
                    r19.w = (int)r23.y & 4095;
                    if (12 == 0) r22.x = 0; else if (12+12 < 32) {                     r22.x = (uint)r23.y << (32-(12 + 12)); r22.x = (uint)r22.x >> (32-12);                    } else r22.x = (uint)r23.y >> 12;
                    if (10 == 0) r22.w = 0; else if (10+20 < 32) {                     r22.w = (uint)r23.w << (32-(10 + 20)); r22.w = (uint)r22.w >> (32-10);                    } else r22.w = (uint)r23.w >> 20;
                    r30.xz = (uint2)r16.ww;
                    r30.y = (uint)r17.w;
                    r31.xy = r24.xy * r30.zy + float2(0.5,0.5);
                    r31.zw = float2(-0.5,-0.5) + r30.zy;
                    r31.xy = min(r31.xy, r31.zw);
                    r32.x = (uint)r19.w;
                    r32.y = (uint)r22.x;
                    r31.xy = r32.xy + r31.xy;
                    r31.xy = invMaskTexSizes.xy * r31.xy;
                    r31.z = (uint)r22.w;
                    r32.xyz = invMaskTexSizes.xyx * r28.zyz;
                    r32.xyz = r32.xyz * r30.xyz;
                    r33.xyz = invMaskTexSizes.xyx * r29.zyz;
                    r30.xyz = r33.xyz * r30.xyz;
                    r19.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r31.xyz, r32.x, r30.x).x;
                  } else {
                    r20.w = cmp((int)r24.w == 4);
                    if (r20.w != 0) {
                      r20.w = (int)r23.y & 4095;
                      if (12 == 0) r22.x = 0; else if (12+12 < 32) {                       r22.x = (uint)r23.y << (32-(12 + 12)); r22.x = (uint)r22.x >> (32-12);                      } else r22.x = (uint)r23.y >> 12;
                      if (10 == 0) r22.w = 0; else if (10+20 < 32) {                       r22.w = (uint)r23.w << (32-(10 + 20)); r22.w = (uint)r22.w >> (32-10);                      } else r22.w = (uint)r23.w >> 20;
                      r30.xz = (uint2)r16.ww;
                      r30.y = (uint)r17.w;
                      r24.zw = r24.xy * r30.zy + float2(0.5,0.5);
                      r31.xy = float2(-0.5,-0.5) + r30.zy;
                      r24.zw = min(r31.xy, r24.zw);
                      r31.x = (uint)r20.w;
                      r31.yz = (uint2)r22.xw;
                      r24.zw = r31.xy + r24.zw;
                      r31.xy = invBcTexSizes.xy * r24.zw;
                      r32.xyz = invBcTexSizes.xyx * r28.zyz;
                      r32.xyz = r32.xyz * r30.xyz;
                      r33.xyz = invBcTexSizes.xyx * r29.zyz;
                      r30.xyz = r33.xyz * r30.xyz;
                      r19.w = materialTexBC7.SampleGrad(samplerLinearClamp_s, r31.xyz, r32.x, r30.x).x;
                    } else {
                      r20.w = (int)r23.y & 4095;
                      if (12 == 0) r22.x = 0; else if (12+12 < 32) {                       r22.x = (uint)r23.y << (32-(12 + 12)); r22.x = (uint)r22.x >> (32-12);                      } else r22.x = (uint)r23.y >> 12;
                      if (10 == 0) r22.w = 0; else if (10+20 < 32) {                       r22.w = (uint)r23.w << (32-(10 + 20)); r22.w = (uint)r22.w >> (32-10);                      } else r22.w = (uint)r23.w >> 20;
                      r30.xz = (uint2)r16.ww;
                      r30.y = (uint)r17.w;
                      r24.zw = r24.xy * r30.zy + float2(0.5,0.5);
                      r31.xy = float2(-0.5,-0.5) + r30.zy;
                      r24.zw = min(r31.xy, r24.zw);
                      r31.x = (uint)r20.w;
                      r31.yz = (uint2)r22.xw;
                      r24.zw = r31.xy + r24.zw;
                      r31.xy = invBcTexSizes.zw * r24.zw;
                      r32.xyz = invBcTexSizes.zwz * r28.zyz;
                      r32.xyz = r32.xyz * r30.xyz;
                      r33.xyz = invBcTexSizes.zwz * r29.zyz;
                      r30.xyz = r33.xyz * r30.xyz;
                      r19.w = materialTexBC3.SampleGrad(samplerLinearClamp_s, r31.xyz, r32.x, r30.x).x;
                    }
                  }
                  r30.xyz = r19.www * float3(0.959999979,0.959999979,0.959999979) + float3(0.0399999991,0.0399999991,0.0399999991);
                  r16.w = saturate(1 + -r19.w);
                  r21.xyz = r21.xyz * r16.www;
                } else {
                  r30.xyz = float3(0.0399999991,0.0399999991,0.0399999991);
                }
                r22.xy = (uint2)r22.zy >> int2(16,16);
                if (r22.x != 0) {
                  r16.w = cmp((int)r22.x == 2);
                  if (r16.w != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r13.w, r13.w, l(112), t36.xxxx
                  r13.w = samp0[]..swiz;
                    if (4 == 0) r22.z = 0; else if (4+24 < 32) {                     r22.z = (uint)r23.z << (32-(4 + 24)); r22.z = (uint)r22.z >> (32-4);                    } else r22.z = (uint)r23.z >> 24;
                    if (12 == 0) r22.w = 0; else if (12+12 < 32) {                     r22.w = (uint)r23.z << (32-(12 + 12)); r22.w = (uint)r22.w >> (32-12);                    } else r22.w = (uint)r23.z >> 12;
                    r16.w = 1 << (int)r22.z;
                    r17.w = (uint)r23.z >> 28;
                    r17.w = 1 << (int)r17.w;
                    r19.w = (int)r23.z & 4095;
                    r13.w = (int)r13.w & 1023;
                    r31.xz = (uint2)r16.ww;
                    r31.y = (uint)r17.w;
                    r23.yz = r24.xy * r31.zy + float2(0.5,0.5);
                    r24.zw = float2(-0.5,-0.5) + r31.zy;
                    r23.yz = min(r24.zw, r23.yz);
                    r32.x = (uint)r19.w;
                    r32.y = (uint)r22.w;
                    r22.zw = r32.xy + r23.yz;
                    r32.xy = invMaskTexSizes.xy * r22.zw;
                    r32.z = (uint)r13.w;
                    r33.xyz = invMaskTexSizes.xyx * r28.zyz;
                    r33.xyz = r33.xyz * r31.xyz;
                    r34.xyz = invMaskTexSizes.xyx * r29.zyz;
                    r31.xyz = r34.xyz * r31.xyz;
                    r13.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r32.xyz, r33.x, r31.x).x;
                  } else {
                    r16.w = cmp((int)r22.x == 6);
                    r13.w = r16.w ? 0 : 1;
                  }
                } else {
                  r13.w = 1;
                }
                r13.w = saturate(0.764705896 * r13.w);
                if (r22.y != 0) {
                  r16.w = cmp((int)r22.y == 3);
                  if (r16.w != 0) {
                    if (4 == 0) r22.x = 0; else if (4+24 < 32) {                     r22.x = (uint)r23.x << (32-(4 + 24)); r22.x = (uint)r22.x >> (32-4);                    } else r22.x = (uint)r23.x >> 24;
                    if (12 == 0) r22.y = 0; else if (12+12 < 32) {                     r22.y = (uint)r23.x << (32-(12 + 12)); r22.y = (uint)r22.y >> (32-12);                    } else r22.y = (uint)r23.x >> 12;
                    if (10 == 0) r22.z = 0; else if (10+10 < 32) {                     r22.z = (uint)r23.w << (32-(10 + 10)); r22.z = (uint)r22.z >> (32-10);                    } else r22.z = (uint)r23.w >> 10;
                    r16.w = 1 << (int)r22.x;
                    r17.w = (uint)r23.x >> 28;
                    r17.w = 1 << (int)r17.w;
                    r19.w = (int)r23.x & 4095;
                    r23.xz = (uint2)r16.ww;
                    r23.y = (uint)r17.w;
                    r22.xw = r24.xy * r23.xy + float2(0.5,0.5);
                    r24.xy = float2(-0.5,-0.5) + r23.zy;
                    r22.xw = min(r24.xy, r22.xw);
                    r24.x = (uint)r19.w;
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
                  r16.w = dot(r22.xy, r22.xy);
                  r16.w = 1 + -r16.w;
                  r16.w = max(0, r16.w);
                  r16.w = sqrt(r16.w);
                  r17.w = r22.z * r22.z;
                  r17.w = 0.333333343 * r17.w;
                  r17.w = min(1, r17.w);
                  r19.w = dot(r27.xyz, r27.xyz);
                  r19.w = rsqrt(r19.w);
                  r23.xyz = r27.xyz * r19.www;
                  r19.w = dot(-r26.xyz, -r26.xyz);
                  r19.w = rsqrt(r19.w);
                  r24.xyz = -r26.xyz * r19.www;
                  r25.xyz = r25.xyz * r3.yyy;
                  r23.xyz = r23.xyz * r3.yyy;
                  r24.xyz = r24.xyz * r3.yyy;
                  r19.w = -17 * r13.w;
                  r19.w = exp2(r19.w);
                  r17.w = r19.w + r17.w;
                  r17.w = log2(r17.w);
                  r17.w = -0.0588235296 * r17.w;
                  r13.w = max(0, r17.w);
                  r22.yzw = r24.xyz * r22.yyy;
                  r22.xyz = r23.xyz * r22.xxx + r22.yzw;
                  r22.xyz = r25.xyz * r16.www + r22.xyz;
                  r16.w = dot(r22.xyz, r22.xyz);
                  r16.w = rsqrt(r16.w);
                  r22.xyz = r22.xyz * r16.www;
                  r16.w = 1 + -r14.w;
                  r23.xyz = r19.xyz * r16.www;
                  r19.xyz = r22.xyz * r14.www + r23.xyz;
                }
                r16.w = 1 + -r14.w;
                r22.xyz = r16.www * r15.xyz;
                r15.xyz = r21.xyz * r14.www + r22.xyz;
                r21.xyz = r20.xyz * r16.www;
                r20.xyz = r30.xyz * r14.www + r21.xyz;
                r17.w = r18.w * r16.w;
                r18.z = r18.z * r16.w + r14.w;
                r18.w = r13.w * r14.w + r17.w;
              }
            }
          }
        }
      }
      r10.yzw = r15.xyz;
      r16.xyz = r19.xyz;
      r17.xyz = r20.xyz;
      r18.xy = r18.zw;
      r11.w = (int)r11.w + 32;
    }
    r7.xzw = r10.yzw;
    r13.xyz = r16.xyz;
    r14.xyz = r17.xyz;
    r12.xy = r18.xy;
  }
  r12.x = saturate(r12.x);
  r3.y = 1 + -r12.x;
  r0.xyz = r0.xyz * r3.yyy + r7.xzw;
  r0.w = r0.w * r3.y + r12.x;
  r2.yzw = r2.yzw * r3.yyy + r13.xyz;
  r4.w = dot(r2.yzw, r2.yzw);
  r4.w = rsqrt(r4.w);
  r5.xyz = r4.www * r2.yzw;
  r2.y = r2.x * r3.y + r12.y;
  r1.xyz = r1.xyz * r3.yyy + r14.xyz;
  r2.z = cmp(0.5 < invertFalloff);
  if (r2.z != 0) {
    r2.z = rowCount * columnCount;
    r2.w = imageTime * r2.z;
    r4.w = gameTime.w * r2.w;
    r4.w = cmp(r4.w >= -r4.w);
    r4.w = r4.w ? r2.w : -r2.w;
    r6.x = 1 / r4.w;
    r6.x = gameTime.w * r6.x;
    r6.x = frac(r6.x);
    r4.w = r6.x * r4.w;
    r2.w = r4.w / r2.w;
    r2.z = r2.w * r2.z;
    r2.z = round(r2.z);
    r2.w = r2.z / columnCount;
    r4.w = columnCount * r2.z;
    r4.w = cmp(r4.w >= -r4.w);
    r4.w = r4.w ? columnCount : -columnCount;
    r6.x = 1 / r4.w;
    r2.z = r6.x * r2.z;
    r2.z = frac(r2.z);
    r2.z = r4.w * r2.z;
    r2.z = trunc(r2.z);
    r2.z = w1.x + r2.z;
    r6.x = r2.z / columnCount;
    r2.z = trunc(r2.w);
    r2.z = w1.y + r2.z;
    r6.y = r2.z / rowCount;
  } else {
    r2.z = dot(-v6.xyz, -v6.xyz);
    r2.z = rsqrt(r2.z);
    r7.xyz = -v6.xyz * r2.zzz;
    r8.x = dot(r7.xyz, v4.xyz);
    r8.y = dot(r7.xyz, v5.xyz);
    r2.z = dot(r7.xyz, v3.xyz);
    r2.w = cmp(0 < r2.z);
    r6.zw = -r8.xy / r2.zz;
    r2.zw = r2.ww ? r6.zw : 0;
    r6.zw = float2(-0.5,-0.5) + w1.xy;
    r4.w = 9.99999975e-06 + layerDepth;
    r2.zw = r4.ww * r2.zw;
    r2.zw = scaleUVs.xy * r2.zw;
    r2.zw = r6.zw * scaleUVs.xy + r2.zw;
    r2.zw = offsetUVs.xy * scaleUVs.xy + r2.zw;
    r4.w = rotateUVs.y * gameTime.w + 1;
    r4.w = rotateUVs.x * r4.w;
    r4.w = 0.0174532924 * r4.w;
    sincos(r4.w, r7.x, r8.x);
    r8.y = r8.x;
    r8.z = r7.x;
    r9.x = dot(r8.yz, r2.zw);
    r8.x = -r7.x;
    r9.y = dot(r8.xy, r2.zw);
    r2.zw = gameTime.ww * scrollUVs.xy;
    r2.zw = r2.zw * scaleUVs.xy + r9.xy;
    r4.w = gameTime.w * zoomRate;
    r4.w = cos(r4.w);
    r4.w = r4.w * 0.5 + 0.5;
    r4.w = 1 + -r4.w;
    r6.z = zoomUVs.y + -zoomUVs.x;
    r4.w = r4.w * r6.z + zoomUVs.x;
    r2.zw = r2.zw / r4.ww;
    r2.zw = float2(0.5,0.5) + r2.zw;
    r6.zw = saturate(r2.zw);
    r6.xy = clampU ? r6.zw : r2.zw;
  }
  r2.z = dot(-v6.xyz, -v6.xyz);
  r2.z = rsqrt(r2.z);
  r7.xyz = -v6.xyz * r2.zzz;
  r2.w = saturate(dot(r7.xyz, r4.xyz));
  r4.xyzw = emissiveMap.Sample(colorSampler_s, r6.xy).xyzw;
  r4.xyz = emissiveTint1.xyz * r4.xyz;
  r6.x = log2(r2.w);
  r6.x = emissiveFalloffPower * r6.x;
  r6.x = exp2(r6.x);
  r2.w = 1 + -r2.w;
  r2.w = log2(r2.w);
  r2.w = emissiveFalloffPower * r2.w;
  r2.w = exp2(r2.w);
  r2.w = invertFalloff ? r2.w : r6.x;
  r6.x = cmp(emissiveFalloffPower == 0.000000);
  r2.w = r6.x ? 1 : r2.w;
  r4.w = hdrScale * r4.w;
  r2.w = r4.w * r2.w;
  r2.w = r2.w * r3.y;
  r4.xyz = r4.xyz * r2.www;
  r2.w = v2.x + v2.y;
  r2.w = v2.z + r2.w;
  r2.w = flickerSeed.y + r2.w;
  r2.w = frac(r2.w);
  r6.y = gameTime.w * flickerSpeed + r2.w;
  r6.x = flickerSeed.x;
  r2.w = flickerLookupMap.SampleLevel(lookupSampler_s, r6.xy, 0).x;
  r2.w = log2(abs(r2.w));
  r2.w = flickerPower * r2.w;
  r2.w = exp2(r2.w);
  r3.y = flickerRange.y + -flickerRange.x;
  r2.w = r2.w * r3.y + flickerRange.x;
  r4.xyz = r4.xyz * r2.www;
  r2.w = cmp(isDepthHack != 0);
  r6.xy = (uint2)r3.wz;
  r3.y = dot(r6.yx, float2(0.0671105608,0.00583714992));
  r3.y = frac(r3.y);
  r3.xy = float2(0.0078125,52.9829178) * r3.xy;
  r3.y = frac(r3.y);
  r3.y = r3.y * 6.28318548 + gameTick.w;
  sincos(r3.y, r8.x, r9.x);
  r3.y = dot(r6.xy, float2(0.0671105608,0.00583714992));
  r3.y = frac(r3.y);
  r3.y = 52.9829178 * r3.y;
  r3.y = frac(r3.y);
  r3.y = r3.y * 6.28318548 + gameTick.w;
  sincos(r3.y, r6.x, r10.x);
  r2.x = saturate(dot(r5.xyz, r7.xyz));
  r3.y = dot(-r7.xyz, r5.xyz);
  r3.y = r3.y + r3.y;
  r11.xyz = r5.xyz * -r3.yyy + -r7.xyz;
  r3.y = 17 * r2.y;
  r3.y = exp2(r3.y);
  r3.y = 2 + r3.y;
  r3.y = 2 / r3.y;
  r6.y = sqrt(r3.y);
  r6.z = 1 + -r2.y;
  r6.w = 5 * r6.z;
  r7.w = r6.z * 5 + -2.5;
  r7.w = saturate(0.400000006 * r7.w);
  r7.w = 100 * r7.w;
  r8.zw = -r6.zz * float2(10,5) + float2(6.85740995,7.08500004);
  r8.z = exp2(r8.z);
  r9.w = r6.w * r6.z;
  r8.w = -r9.w * 2.0159049 + r8.w;
  r8.w = exp2(r8.w);
  r8.zw = r8.zw * r2.xx;
  r8.zw = float2(9.1368103,9.70808983) * r8.zw;
  r8.z = max(r8.z, r8.w);
  r8.z = max(1.26815999, r8.z);
  r8.w = numRefProbes + -numOverrideProbes;
  r3.x = min(15, r3.x);
  r3.x = (uint)r3.x;
  r12.xy = (uint2)r3.zw >> int2(6,6);
  r12.z = (uint)r3.x << 4;
  r3.x = (int)r8.w & -32;
  r3.z = (int)-r3.x + (int)r8.w;
  r3.w = numRefProbes & -32;
  r9.w = (int)-r3.w + numRefProbes;
  r13.xy = float2(0,0);
  r14.w = 0;
  r15.yz = float2(0,1);
  r16.xy = float2(0,0);
  r17.x = 1;
  r18.xy = float2(0,0);
  r19.xy = float2(0,0);
  r20.xyzw = float4(0,0,0,0);
  r21.yzw = float3(0,0,0);
  r10.y = r3.x;
  while (true) {
    r10.z = cmp((uint)r10.y >= numRefProbes);
    if (r10.z != 0) break;
    r13.z = (uint)r10.y >> 5;
    r14.xyz = (int3)r12.xyz + (int3)r13.xyz;
    r10.z = visibleProbes.Load(r14.xyzw).x;
    r10.w = cmp((int)r3.x == (int)r10.y);
    bitmask.w = ((~(-1 << r3.z)) << 0) & 0xffffffff;  r12.w = (((uint)0 << 0) & bitmask.w) | ((uint)r10.z & ~bitmask.w);
    r10.z = r10.w ? r12.w : r10.z;
    r10.w = cmp((int)r3.w == (int)r10.y);
    if (r9.w == 0) r12.w = 0; else if (r9.w+0 < 32) {     r12.w = (uint)r10.z << (32-(r9.w + 0)); r12.w = (uint)r12.w >> (32-r9.w);    } else r12.w = (uint)r10.z >> 0;
    r10.z = r10.w ? r12.w : r10.z;
    r10.w = (int)r10.y + numLights;
    r22.xyzw = r20.xyzw;
    r23.xyz = r21.yzw;
    r12.w = r10.z;
    while (true) {
      if (r12.w == 0) break;
      r13.z = firstbitlow((uint)r12.w);
      r13.w = 1 << (int)r13.z;
      r14.x = (int)r12.w & (int)r13.w;
      if (r14.x != 0) {
        r12.w = (int)r12.w ^ (int)r13.w;
        r13.w = (int)r10.w + (int)r13.z;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r24.xyzw, r13.w, l(0), t11.xyzw
      r24.x = samp0[]..swiz;
      r24.y = samp0[]..swiz;
      r24.z = samp0[]..swiz;
      r24.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r14.xy, r13.w, l(16), t11.xyxx
      r14.x = samp0[]..swiz;
      r14.y = samp0[]..swiz;
        r24.xyz = -v6.xyz + r24.xyz;
        r14.z = r24.w;
        r14.xyz = cmp(abs(r24.xyz) < r14.zxy);
        r13.w = r14.y ? r14.x : 0;
        r13.w = r14.z ? r13.w : 0;
        if (r13.w != 0) {
          r13.z = (int)r10.y + (int)r13.z;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r13.z, l(0), t15.wxyz
        r24.x = samp0[]..swiz;
        r24.y = samp0[]..swiz;
        r24.z = samp0[]..swiz;
        r24.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r14.xy, r13.z, l(96), t15.xyxx
        r14.x = samp0[]..swiz;
        r14.y = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r13.z, l(116), t15.zwxy
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        r25.z = samp0[]..swiz;
        r25.w = samp0[]..swiz;
          r26.xyz = v6.xyz + -r24.yzw;
          r13.w = (int)r25.w & 0x0000ffff;
          if (6 == 0) r14.z = 0; else if (6+25 < 32) {           r14.z = (uint)r25.w << (32-(6 + 25)); r14.z = (uint)r14.z >> (32-6);          } else r14.z = (uint)r25.w >> 25;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r13.w, l(0), t16.xyzw
        r27.x = samp0[]..swiz;
        r27.y = samp0[]..swiz;
        r27.z = samp0[]..swiz;
        r27.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r13.w, l(16), t16.xyzw
        r28.x = samp0[]..swiz;
        r28.y = samp0[]..swiz;
        r28.z = samp0[]..swiz;
        r28.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r13.w, l(32), t16.xyzw
        r29.x = samp0[]..swiz;
        r29.y = samp0[]..swiz;
        r29.z = samp0[]..swiz;
        r29.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r13.w, l(48), t16.xyzw
        r30.x = samp0[]..swiz;
        r30.y = samp0[]..swiz;
        r30.z = samp0[]..swiz;
        r30.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r13.w, l(64), t16.xyzw
        r31.x = samp0[]..swiz;
        r31.y = samp0[]..swiz;
        r31.z = samp0[]..swiz;
        r31.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r13.w, l(80), t16.xyzw
        r32.x = samp0[]..swiz;
        r32.y = samp0[]..swiz;
        r32.z = samp0[]..swiz;
        r32.w = samp0[]..swiz;
          r15.w = dot(r27.xyz, r26.xyz);
          r15.w = saturate(r15.w + r27.w);
          r16.w = dot(r28.xyz, r26.xyz);
          r16.w = saturate(r16.w + r28.w);
          r15.w = r16.w * r15.w;
          r16.w = dot(r29.xyz, r26.xyz);
          r16.w = saturate(r16.w + r29.w);
          r15.w = r16.w * r15.w;
          r16.w = dot(r30.xyz, r26.xyz);
          r16.w = saturate(r16.w + r30.w);
          r15.w = r16.w * r15.w;
          r16.w = dot(r31.xyz, r26.xyz);
          r16.w = saturate(r16.w + r31.w);
          r15.w = r16.w * r15.w;
          r16.w = dot(r32.xyz, r26.xyz);
          r16.w = saturate(r16.w + r32.w);
          r15.x = r16.w * r15.w;
          r15.w = r14.x ? 0.000000 : 0;
          r15.xw = r15.ww ? r15.xy : r15.zx;
          r16.w = r14.x;
          r27.xy = r15.xw;
          r17.z = 1;
          while (true) {
            r17.w = cmp((int)r17.z >= (int)r14.z);
            if (r17.w != 0) break;
            r17.w = (int)r13.w + (int)r17.z;
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
            r19.w = (uint)r16.w >> 2;
            if (1 == 0) r24.w = 0; else if (1+2 < 32) {             r24.w = (uint)r16.w << (32-(1 + 2)); r24.w = (uint)r24.w >> (32-1);            } else r24.w = (uint)r16.w >> 2;
            r26.w = (int)r19.w & 2;
            r27.z = max(r27.y, r27.x);
            r17.w = -r17.w * r18.w + 1;
            r17.w = r27.y * r17.w;
            r17.y = r26.w ? r17.w : r27.z;
            r27.xy = r24.ww ? r27.xy : r17.xy;
            r17.z = (int)r17.z + 1;
            r16.w = r19.w;
          }
          r27.y = saturate(r27.y);
          r13.w = r27.y * r14.y;
          r14.x = cmp(0 < r13.w);
          if (r14.x != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r13.z, l(16), t15.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r13.z, l(32), t15.yxwz
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r13.z, l(48), t15.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r13.z, l(64), t15.zwxy
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r13.z, l(80), t15.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r13.z, l(132), t15.zwxy
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r13.z, l(148), t15.zwxy
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r13.z, l(164), t15.zwxy
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r13.z, l(180), t15.zwxy
          r36.x = samp0[]..swiz;
          r36.y = samp0[]..swiz;
          r36.z = samp0[]..swiz;
          r36.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r13.z, l(196), t15.xyzw
          r37.x = samp0[]..swiz;
          r37.y = samp0[]..swiz;
          r37.z = samp0[]..swiz;
          r37.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xy, r13.z, l(212), t15.xyxx
          r38.x = samp0[]..swiz;
          r38.y = samp0[]..swiz;
            r23.z = r27.y * r14.y + r23.z;
            r13.z = r13.w * r25.z;
            r25.z = r33.z;
            r13.w = dot(r11.xyz, r25.xyz);
            r14.x = dot(r26.xyz, r25.xyz);
            r14.x = r14.x + -r33.w;
            r14.y = cmp(r14.x >= 0);
            r14.x = max(abs(r14.x), r7.w);
            r14.x = r14.y ? r14.x : -r14.x;
            r13.w = max(1.00000001e-07, -r13.w);
            r13.w = r14.x / r13.w;
            r13.w = min(131072, abs(r13.w));
            r33.z = r34.z;
            r14.x = dot(r11.xyz, r33.xyz);
            r14.y = dot(r26.xyz, r33.xyz);
            r14.y = r14.y + -r34.w;
            r14.z = cmp(r14.y >= 0);
            r14.y = max(abs(r14.y), r7.w);
            r14.y = r14.z ? r14.y : -r14.y;
            r14.x = max(1.00000001e-07, -r14.x);
            r14.x = r14.y / r14.x;
            r13.w = min(abs(r14.x), r13.w);
            r34.z = r35.z;
            r14.x = dot(r11.xyz, r34.xyz);
            r14.y = dot(r26.xyz, r34.xyz);
            r14.y = r14.y + -r35.w;
            r14.z = cmp(r14.y >= 0);
            r14.y = max(abs(r14.y), r7.w);
            r14.y = r14.z ? r14.y : -r14.y;
            r14.x = max(1.00000001e-07, -r14.x);
            r14.x = r14.y / r14.x;
            r13.w = min(abs(r14.x), r13.w);
            r35.z = r36.z;
            r14.x = dot(r11.xyz, r35.xyz);
            r14.y = dot(r26.xyz, r35.xyz);
            r14.y = r14.y + -r36.w;
            r14.z = cmp(r14.y >= 0);
            r14.y = max(abs(r14.y), r7.w);
            r14.y = r14.z ? r14.y : -r14.y;
            r14.x = max(1.00000001e-07, -r14.x);
            r14.x = r14.y / r14.x;
            r13.w = min(abs(r14.x), r13.w);
            r36.z = r37.x;
            r14.x = dot(r11.xyz, r36.xyz);
            r14.y = dot(r26.xyz, r36.xyz);
            r14.y = r14.y + -r37.y;
            r14.z = cmp(r14.y >= 0);
            r14.y = max(abs(r14.y), r7.w);
            r14.y = r14.z ? r14.y : -r14.y;
            r14.x = max(1.00000001e-07, -r14.x);
            r14.x = r14.y / r14.x;
            r13.w = min(abs(r14.x), r13.w);
            r38.zw = r37.zw;
            r14.x = dot(r11.zxy, r38.xzw);
            r14.y = dot(r26.zxy, r38.xzw);
            r14.y = r14.y + -r38.y;
            r14.z = cmp(r14.y >= 0);
            r14.y = max(abs(r14.y), r7.w);
            r14.y = r14.z ? r14.y : -r14.y;
            r14.x = max(1.00000001e-07, -r14.x);
            r14.x = r14.y / r14.x;
            r13.w = min(abs(r14.x), r13.w);
            r14.x = r30.w;
            r14.yz = r31.zw;
            r14.xyz = r14.xyz + r26.xyz;
            r14.xyz = r11.xyz * r13.www + r14.xyz;
            r15.x = dot(r14.xyz, r14.xyz);
            r15.x = sqrt(r15.x);
            r13.w = r13.w / r15.x;
            r13.w = r13.w + r13.w;
            r13.w = sqrt(r13.w);
            r13.w = r6.z * 5 + r13.w;
            r13.w = -0.844799995 + r13.w;
            r24.y = r28.z;
            r24.z = r29.x;
            r33.x = dot(r14.xyz, r24.xyz);
            r25.xy = r28.xw;
            r25.z = r29.w;
            r33.y = dot(r14.xyz, r25.xyz);
            r29.x = r28.y;
            r33.z = dot(r14.xyz, r29.xyz);
            if (9 == 0) r14.x = 0; else if (9+16 < 32) {             r14.x = (uint)r25.w << (32-(9 + 16)); r14.x = (uint)r14.x >> (32-9);            } else r14.x = (uint)r25.w >> 16;
            r33.w = (uint)r14.x;
            r14.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, r13.w).xyz;
            r28.x = dot(r26.xyz, r24.xyz);
            r28.y = dot(r26.xyz, r25.xyz);
            r28.z = dot(r26.xyz, r29.xyz);
            r17.yzw = saturate(r28.xyz * r30.xyz + float3(0.5,0.5,0.5));
            r31.z = r32.x;
            r17.yzw = r17.yzw * r31.xyz + r32.yzw;
            r33.x = dot(r5.xyz, r24.xyz);
            r33.y = dot(r5.xyz, r25.xyz);
            r33.z = dot(r5.xyz, r29.xyz);
            r24.xyz = cmp(float3(0,0,0) < r33.xyz);
            r16.z = r24.x ? 0 : 0.5;
            r25.xyz = r17.yzw + r16.xyz;
            r25.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
            r26.xyz = r33.xyz * r33.xyz;
            r26.xyz = r26.xyz * r13.zzz;
            r18.z = r24.y ? 0 : 0.5;
            r24.xyw = r18.xyz + r17.yzw;
            r24.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r24.xyw, 0).xyz;
            r24.xyw = r24.xyw * r26.yyy;
            r24.xyw = r25.xyz * r26.xxx + r24.xyw;
            r19.z = r24.z ? 0 : 0.5;
            r17.yzw = r19.xyz + r17.yzw;
            r17.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r17.yzw, 0).xyz;
            r17.yzw = r17.yzw * r26.zzz + r24.xyw;
            r24.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, 6).xyz;
            r25.xyz = r24.xyz * r17.yzw;
            r13.w = dot(r25.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r22.xyz = r17.yzw * r24.xyz + r22.xyz;
            r15.x = r13.w * r8.z;
            r14.xyz = r14.xyz * r13.zzz;
            r13.z = dot(r14.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r13.z = r8.z * r13.w + r13.z;
            r13.z = r15.x / r13.z;
            r24.x = r22.w;
            r24.yz = r23.xy;
            r23.xyw = r14.yzx * r13.zzz + r24.yzx;
            r22.w = r23.w;
          }
        }
      }
    }
    r20.xyzw = r22.xyzw;
    r21.yzw = r23.xyz;
    r10.y = (int)r10.y + 32;
  }
  r3.w = cmp(r21.w < 1);
  if (r3.w != 0) {
    r13.xy = float2(0,0);
    r14.w = 0;
    r15.yz = float2(0,1);
    r16.xy = float2(0,0);
    r17.x = 1;
    r18.xy = float2(0,0);
    r19.xy = float2(0,0);
    r22.x = r20.w;
    r22.yzw = r21.yzw;
    r10.yzw = r20.xyz;
    r3.w = r21.w;
    r9.w = 0;
    while (true) {
      r12.w = cmp((uint)r9.w >= (uint)r8.w);
      if (r12.w != 0) break;
      r13.z = (uint)r9.w >> 5;
      r14.xyz = (int3)r12.xyz + (int3)r13.xyz;
      r12.w = visibleProbes.Load(r14.xyzw).x;
      r13.z = cmp((int)r3.x == (int)r9.w);
      if (r3.z == 0) r13.w = 0; else if (r3.z+0 < 32) {       r13.w = (uint)r12.w << (32-(r3.z + 0)); r13.w = (uint)r13.w >> (32-r3.z);      } else r13.w = (uint)r12.w >> 0;
      r12.w = r13.z ? r13.w : r12.w;
      r13.z = (int)r9.w + numLights;
      r23.xyzw = r22.xyzw;
      r14.xyz = r10.yzw;
      r13.w = r3.w;
      r15.w = r12.w;
      while (true) {
        if (r15.w == 0) break;
        r16.w = firstbitlow((uint)r15.w);
        r17.z = 1 << (int)r16.w;
        r17.w = (int)r15.w & (int)r17.z;
        if (r17.w != 0) {
          r15.w = (int)r15.w ^ (int)r17.z;
          r17.z = (int)r13.z + (int)r16.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r24.xyzw, r17.z, l(0), t11.xyzw
        r24.x = samp0[]..swiz;
        r24.y = samp0[]..swiz;
        r24.z = samp0[]..swiz;
        r24.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r25.xy, r17.z, l(16), t11.xyxx
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
          r24.xyz = -v6.xyz + r24.xyz;
          r25.z = r24.w;
          r24.xyz = cmp(abs(r24.xyz) < r25.zxy);
          r17.z = r24.y ? r24.x : 0;
          r17.z = r24.z ? r17.z : 0;
          if (r17.z != 0) {
            r16.w = (int)r9.w + (int)r16.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r16.w, l(0), t15.wxyz
          r24.x = samp0[]..swiz;
          r24.y = samp0[]..swiz;
          r24.z = samp0[]..swiz;
          r24.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r17.zw, r16.w, l(96), t15.xxxy
          r17.z = samp0[]..swiz;
          r17.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r16.w, l(116), t15.zwxy
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
            r26.xyz = v6.xyz + -r24.yzw;
            r18.w = (int)r25.w & 0x0000ffff;
            if (6 == 0) r19.w = 0; else if (6+25 < 32) {             r19.w = (uint)r25.w << (32-(6 + 25)); r19.w = (uint)r19.w >> (32-6);            } else r19.w = (uint)r25.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r18.w, l(0), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r18.w, l(16), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r18.w, l(32), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r18.w, l(48), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r18.w, l(64), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r18.w, l(80), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
            r24.w = dot(r27.xyz, r26.xyz);
            r24.w = saturate(r24.w + r27.w);
            r26.w = dot(r28.xyz, r26.xyz);
            r26.w = saturate(r26.w + r28.w);
            r24.w = r26.w * r24.w;
            r26.w = dot(r29.xyz, r26.xyz);
            r26.w = saturate(r26.w + r29.w);
            r24.w = r26.w * r24.w;
            r26.w = dot(r30.xyz, r26.xyz);
            r26.w = saturate(r26.w + r30.w);
            r24.w = r26.w * r24.w;
            r26.w = dot(r31.xyz, r26.xyz);
            r26.w = saturate(r26.w + r31.w);
            r24.w = r26.w * r24.w;
            r26.w = dot(r32.xyz, r26.xyz);
            r26.w = saturate(r26.w + r32.w);
            r15.x = r26.w * r24.w;
            r24.w = (int)r17.z & 1;
            r27.xy = r24.ww ? r15.xy : r15.zx;
            r15.x = r17.z;
            r28.xy = r27.xy;
            r24.w = 1;
            while (true) {
              r26.w = cmp((int)r24.w >= (int)r19.w);
              if (r26.w != 0) break;
              r26.w = (int)r18.w + (int)r24.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r26.w, l(0), t16.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r26.w, l(16), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r26.w, l(32), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r26.w, l(48), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r26.w, l(64), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r26.w, l(80), t16.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
              r26.w = dot(r29.xyz, r26.xyz);
              r26.w = saturate(r26.w + r29.w);
              r26.w = r28.x * r26.w;
              r27.z = dot(r30.xyz, r26.xyz);
              r27.z = saturate(r27.z + r30.w);
              r26.w = r27.z * r26.w;
              r27.z = dot(r31.xyz, r26.xyz);
              r27.z = saturate(r27.z + r31.w);
              r26.w = r27.z * r26.w;
              r27.z = dot(r32.xyz, r26.xyz);
              r27.z = saturate(r27.z + r32.w);
              r26.w = r27.z * r26.w;
              r27.z = dot(r33.xyz, r26.xyz);
              r27.z = saturate(r27.z + r33.w);
              r26.w = r27.z * r26.w;
              r27.z = dot(r34.xyz, r26.xyz);
              r27.z = saturate(r27.z + r34.w);
              r28.x = r27.z * r26.w;
              r27.w = (uint)r15.x >> 2;
              if (1 == 0) r28.z = 0; else if (1+2 < 32) {               r28.z = (uint)r15.x << (32-(1 + 2)); r28.z = (uint)r28.z >> (32-1);              } else r28.z = (uint)r15.x >> 2;
              r28.w = (int)r27.w & 2;
              r29.x = max(r28.y, r28.x);
              r26.w = -r26.w * r27.z + 1;
              r26.w = r28.y * r26.w;
              r17.y = r28.w ? r26.w : r29.x;
              r28.xy = r28.zz ? r28.xy : r17.xy;
              r24.w = (int)r24.w + 1;
              r15.x = r27.w;
            }
            r15.x = saturate(r28.y + -r13.w);
            r17.y = r15.x * r17.w;
            r17.z = cmp(0 < r17.y);
            if (r17.z != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r16.w, l(16), t15.xyzw
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r16.w, l(32), t15.yxwz
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r16.w, l(48), t15.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r16.w, l(64), t15.zwxy
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r16.w, l(80), t15.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r16.w, l(132), t15.zwxy
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r16.w, l(148), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r16.w, l(164), t15.zwxy
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r16.w, l(180), t15.zwxy
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r16.w, l(196), t15.xyzw
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xy, r16.w, l(212), t15.xyxx
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
              r23.w = r15.x * r17.w + r23.w;
              r15.x = r17.y * r25.z;
              r25.z = r33.z;
              r16.w = dot(r11.xyz, r25.xyz);
              r17.y = dot(r26.xyz, r25.xyz);
              r17.y = r17.y + -r33.w;
              r17.z = cmp(r17.y >= 0);
              r17.y = max(abs(r17.y), r7.w);
              r17.y = r17.z ? r17.y : -r17.y;
              r16.w = max(1.00000001e-07, -r16.w);
              r16.w = r17.y / r16.w;
              r16.w = min(131072, abs(r16.w));
              r33.z = r34.z;
              r17.y = dot(r11.xyz, r33.xyz);
              r17.z = dot(r26.xyz, r33.xyz);
              r17.z = r17.z + -r34.w;
              r17.w = cmp(r17.z >= 0);
              r17.z = max(abs(r17.z), r7.w);
              r17.z = r17.w ? r17.z : -r17.z;
              r17.y = max(1.00000001e-07, -r17.y);
              r17.y = r17.z / r17.y;
              r16.w = min(abs(r17.y), r16.w);
              r34.z = r35.z;
              r17.y = dot(r11.xyz, r34.xyz);
              r17.z = dot(r26.xyz, r34.xyz);
              r17.z = r17.z + -r35.w;
              r17.w = cmp(r17.z >= 0);
              r17.z = max(abs(r17.z), r7.w);
              r17.z = r17.w ? r17.z : -r17.z;
              r17.y = max(1.00000001e-07, -r17.y);
              r17.y = r17.z / r17.y;
              r16.w = min(abs(r17.y), r16.w);
              r35.z = r36.z;
              r17.y = dot(r11.xyz, r35.xyz);
              r17.z = dot(r26.xyz, r35.xyz);
              r17.z = r17.z + -r36.w;
              r17.w = cmp(r17.z >= 0);
              r17.z = max(abs(r17.z), r7.w);
              r17.z = r17.w ? r17.z : -r17.z;
              r17.y = max(1.00000001e-07, -r17.y);
              r17.y = r17.z / r17.y;
              r16.w = min(abs(r17.y), r16.w);
              r36.z = r37.x;
              r17.y = dot(r11.xyz, r36.xyz);
              r17.z = dot(r26.xyz, r36.xyz);
              r17.z = r17.z + -r37.y;
              r17.w = cmp(r17.z >= 0);
              r17.z = max(abs(r17.z), r7.w);
              r17.z = r17.w ? r17.z : -r17.z;
              r17.y = max(1.00000001e-07, -r17.y);
              r17.y = r17.z / r17.y;
              r16.w = min(abs(r17.y), r16.w);
              r38.zw = r37.zw;
              r17.y = dot(r11.zxy, r38.xzw);
              r17.z = dot(r26.zxy, r38.xzw);
              r17.z = r17.z + -r38.y;
              r17.w = cmp(r17.z >= 0);
              r17.z = max(abs(r17.z), r7.w);
              r17.z = r17.w ? r17.z : -r17.z;
              r17.y = max(1.00000001e-07, -r17.y);
              r17.y = r17.z / r17.y;
              r16.w = min(abs(r17.y), r16.w);
              r25.x = r30.w;
              r25.yz = r31.zw;
              r17.yzw = r25.xyz + r26.xyz;
              r17.yzw = r11.xyz * r16.www + r17.yzw;
              r18.w = dot(r17.yzw, r17.yzw);
              r18.w = sqrt(r18.w);
              r16.w = r16.w / r18.w;
              r16.w = r16.w + r16.w;
              r16.w = sqrt(r16.w);
              r16.w = r6.z * 5 + r16.w;
              r16.w = -0.844799995 + r16.w;
              r24.y = r27.z;
              r24.z = r29.x;
              r33.x = dot(r17.yzw, r24.xyz);
              r25.xy = r27.xw;
              r25.z = r29.w;
              r33.y = dot(r17.yzw, r25.xyz);
              r29.x = r27.y;
              r33.z = dot(r17.yzw, r29.xyz);
              if (9 == 0) r17.y = 0; else if (9+16 < 32) {               r17.y = (uint)r25.w << (32-(9 + 16)); r17.y = (uint)r17.y >> (32-9);              } else r17.y = (uint)r25.w >> 16;
              r33.w = (uint)r17.y;
              r17.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, r16.w).xyz;
              r27.x = dot(r26.xyz, r24.xyz);
              r27.y = dot(r26.xyz, r25.xyz);
              r27.z = dot(r26.xyz, r29.xyz);
              r26.xyz = saturate(r27.xyz * r30.xyz + float3(0.5,0.5,0.5));
              r31.z = r32.x;
              r26.xyz = r26.xyz * r31.xyz + r32.yzw;
              r33.x = dot(r5.xyz, r24.xyz);
              r33.y = dot(r5.xyz, r25.xyz);
              r33.z = dot(r5.xyz, r29.xyz);
              r24.xyz = cmp(float3(0,0,0) < r33.xyz);
              r16.z = r24.x ? 0 : 0.5;
              r25.xyz = r26.xyz + r16.xyz;
              r25.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
              r27.xyz = r33.xyz * r33.xyz;
              r27.xyz = r27.xyz * r15.xxx;
              r18.z = r24.y ? 0 : 0.5;
              r24.xyw = r26.xyz + r18.xyz;
              r24.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r24.xyw, 0).xyz;
              r24.xyw = r24.xyw * r27.yyy;
              r24.xyw = r25.xyz * r27.xxx + r24.xyw;
              r19.z = r24.z ? 0 : 0.5;
              r25.xyz = r26.xyz + r19.xyz;
              r25.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
              r24.xyz = r25.xyz * r27.zzz + r24.xyw;
              r25.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, 6).xyz;
              r26.xyz = r25.xyz * r24.xyz;
              r16.z = dot(r26.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r14.xyz = r24.xyz * r25.xyz + r14.xyz;
              r16.w = r16.z * r8.z;
              r17.yzw = r17.yzw * r15.xxx;
              r15.x = dot(r17.yzw, float3(0.212599993,0.715200007,0.0722000003));
              r15.x = r8.z * r16.z + r15.x;
              r15.x = r16.w / r15.x;
              r23.xyz = r17.yzw * r15.xxx + r23.xyz;
            }
          }
        }
      }
      r22.xyzw = r23.xyzw;
      r10.yzw = r14.xyz;
      r9.w = (int)r9.w + 32;
    }
    r21.xyzw = r22.zxyw;
    r20.xyz = r10.yzw;
    r21.xyzw = r21.yzxw;
  } else {
    r21.x = r20.w;
  }
  r3.x = max(1, r21.w);
  r3.x = rcp(r3.x);
  r21.w = saturate(r21.w);
  r10.yzw = r20.xyz * r3.xxx;
  r13.xyz = r21.xyz * r3.xxx;
  r3.z = cmp(r21.w < 0.99000001);
  if (r3.z != 0) {
    r3.z = 1 + -r21.w;
    r3.w = sunConstants.globalProbeExposure * r3.z;
    r14.xyz = -globalProbeConstants.data[0].xyz + v6.xyz;
    r15.x = globalProbeConstants.data[0].w * r14.x;
    r15.yz = globalProbeConstants.data[1].xy * r14.yz;
    r14.xyz = saturate(float3(0.5,0.5,0.5) + r15.xyz);
    r15.xy = globalProbeConstants.data[1].zw * r14.xy;
    r15.z = globalProbeConstants.data[2].x * r14.z;
    r14.xyz = globalProbeConstants.data[2].yzw + r15.xyz;
    r15.xyz = cmp(float3(0,0,0) < r5.xyz);
    r15.xyz = r15.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r15.w = 0;
    r16.xyz = r15.wwx + r14.xyz;
    r16.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r16.xyz, 0).xyz;
    r17.xyz = r5.xyz * r5.xyz;
    r17.xyz = r17.xyz * r3.www;
    r18.xyz = r15.wwy + r14.xyz;
    r18.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r18.xyz, 0).xyz;
    r18.xyz = r18.xyz * r17.yyy;
    r16.xyz = r16.xyz * r17.xxx + r18.xyz;
    r14.xyz = r15.wwz + r14.xyz;
    r14.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r14.xyz, 0).xyz;
    r14.xyz = r14.xyz * r17.zzz + r16.xyz;
    r5.w = 0;
    r15.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r5.xyzw, 6).xyz;
    r14.xyz = r15.xyz * r14.xyz;
    r3.w = dot(r14.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r10.yzw = r20.xyz * r3.xxx + r14.xyz;
    r11.w = 0;
    r14.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, r6.w).xyz;
    r3.x = sunConstants.globalProbeExposure * r3.z + -r3.w;
    r3.x = r2.y * r3.x + r3.w;
    r13.xyz = r14.xyz * r3.xxx + r13.xyz;
  }
  r3.x = r2.x + r1.w;
  r3.x = log2(abs(r3.x));
  r3.x = r6.y * r3.x;
  r3.x = exp2(r3.x);
  r3.x = r3.x + r1.w;
  r3.x = saturate(-1 + r3.x);
  r14.xyz = r10.yzw * r1.www;
  r3.zw = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r3.zw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r3.zw, 0).xy;
  r10.yzw = r13.xyz * r3.xxx;
  r13.xyz = r10.zwy * r3.zzz;
  r3.xzw = r10.yzw * r3.www;
  r1.w = sqrt(r6.y);
  r1.w = r1.w * 0.5 + 0.5;
  r1.w = r1.w * r1.w;
  r2.y = 0.5 * r1.w;
  r1.w = -r1.w * 0.5 + 1;
  r5.w = r2.x * r1.w + r2.y;
  r1.w = r5.w * r1.w;
  r2.y = r5.w * r2.y;
  r5.w = dot(r5.xyz, sunConstants.wldDir.xyz);
  r6.z = saturate(r5.w);
  r6.w = cmp(0 >= r6.z);
  if (r6.w != 0) {
    r7.w = 0;
  }
  if (r6.w == 0) {
    r10.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v6.yyy;
    r10.yzw = v6.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r10.yzw;
    r10.yzw = v6.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r10.yzw;
    r10.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r10.yzw;
    r6.w = -sunConstants.splitDepthOffset + r10.w;
    r6.w = -r6.w * 6.10351563e-05 + 1;
    r8.z = saturate(r6.w);
    r8.z = cmp(r6.w == r8.z);
    if (r8.z != 0) {
      r8.zw = float2(0,0);
      while (true) {
        r9.w = cmp(r8.z >= 3);
        if (r9.w != 0) break;
        r9.w = (uint)r8.z;
        r15.xy = -sunConstants.splitPinTransform[r9.w].xy + r10.yz;
        r11.w = max(abs(r15.x), abs(r15.y));
        r8.w = sunConstants.splitPinTransform[r9.w].z * r11.w;
        r9.w = cmp(r8.w < 1);
        if (r9.w != 0) {
          break;
        }
        r8.z = 1 + r8.z;
        r8.w = 0;
      }
    } else {
      r8.zw = float2(3,0);
    }
    r9.w = cmp(r8.z >= 3);
    if (r9.w != 0) {
      r15.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r16.xz = rcp(r15.xx);
      r16.y = -r16.z;
      r15.xyz = r10.yzy * r16.xyz + r15.yzy;
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
          r15.x = r10.y * r15.y + r15.x;
          r12.w = r10.z * r12.w + r15.x;
          r16.x = r11.w ? r12.w : r16.x;
        }
      }
      r10.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r10.w;
      r10.w = cmp(r16.x < r10.w);
      r7.w = r10.w ? 0 : 1;
    }
    if (r9.w == 0) {
      if (enableDitheredShadow == 0) {
        r9.w = (uint)r8.z;
        r15.xy = -sunConstants.splitPinTransform[r9.w].xy + r10.yz;
        r15.xy = sunConstants.splitPinTransform[r9.w].zz * r15.xy;
        r15.xy = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r9.w = (int16)sunConstants.splitArrayOffset;
        r15.z = r9.w + r8.z;
        r9.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r6.w).x;
        r10.w = gTransShadowmapArray.SampleLevel(samp0_s, r15.xyz, 0).x;
        r9.w = r10.w + r9.w;
        r9.w = saturate(-1 + r9.w);
        r10.w = r9.w * r9.w;
        r7.w = r10.w * r9.w;
      }
      if (enableDitheredShadow != 0) {
        r15.x = -r8.x;
        r9.w = (uint)r8.z;
        r8.z = 1 + r8.z;
        r8.z = min(2, r8.z);
        r8.w = 1 + -r8.w;
        r8.w = 28 * r8.w;
        r8.zw = (uint2)r8.zw;
        r16.xy = -sunConstants.splitPinTransform[r9.w].xy + r10.yz;
        r16.xy = sunConstants.splitPinTransform[r9.w].zz * r16.xy;
        r16.xy = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.yz = -sunConstants.splitPinTransform[r8.z].xy + r10.yz;
        r10.yz = sunConstants.splitPinTransform[r8.z].zz * r10.yz;
        r10.yz = r10.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r15.y = r9.x;
        r15.z = r8.x;
        r10.w = 0;
        r11.w = 0;
        while (true) {
          r12.w = cmp((uint)r11.w >= 8);
          if (r12.w != 0) break;
          r12.w = cmp((uint)r8.w < (uint)r11.w);
          r16.zw = r12.ww ? r10.yz : r16.xy;
          r15.w = r12.w ? sunConstants.splitPinTransform[r8.z].w : sunConstants.splitPinTransform[r9.w].w;
          r12.w = r12.w ? r8.z : r9.w;
          r17.x = dot(icb[r11.w+0].yx, r15.xy);
          r17.y = dot(icb[r11.w+0].yx, r15.yz);
          r17.xy = r17.xy * r15.ww + r16.zw;
          r12.w = (int)r12.w + (int16)sunConstants.splitArrayOffset;
          r17.z = (uint)r12.w;
          r12.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r6.w).x;
          r15.w = gTransShadowmapArray.SampleLevel(samp0_s, r17.xyz, 0).x;
          r12.w = r15.w + r12.w;
          r12.w = saturate(-1 + r12.w);
          r10.w = r12.w * 0.125 + r10.w;
          r11.w = (int)r11.w + 1;
        }
        r6.w = r10.w * r10.w;
        r7.w = r6.w * r10.w;
      }
    }
  }
  r6.w = cmp(0 < r6.z);
  if (r6.w != 0) {
    r6.w = cmp(0 < r7.w);
    if (r6.w != 0) {
      r6.w = sunConstants.specScale * r3.y;
      r6.w = r6.w * r6.z;
      if (sunConstants.sunCookieIndex != 0) {
        r15.xyz = eyeOffset.xyz + v6.xyz;
        r15.w = 1;
        r8.z = dot(sunConstants.sunCookieTransform[0].xyzw, r15.xyzw);
        r8.w = dot(sunConstants.sunCookieTransform[1].xyzw, r15.xyzw);
        r15.xy = frac(r8.zw);
        r8.z = -1 + (int14)sunConstants.sunCookieIndex;
        r15.z = (uint)r8.z;
        r10.yzw = gCookieArray.SampleLevel(samplerLinear_s, r15.xyz, 0).xyz;
        r10.yzw = float3(-1,-1,-1) + r10.yzw;
        r10.yzw = sunConstants.sunCookieIntensity * r10.yzw + float3(1,1,1);
        r10.yzw = sunConstants.color.xyz * r10.yzw;
      } else {
        r10.yzw = sunConstants.color.xyz;
      }
      r8.z = viewmodelSunShadowRaw >> 16;
      r8.w = cmp(0 < (uint)r8.z);
      r8.w = r2.w ? r8.w : 0;
      if (r8.w != 0) {
        r8.z = (int)r8.z + numLights;
        r8.z = (int)r8.z + -1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.w, r8.z, l(52), t12.xxxx
      r8.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r8.z, l(68), t12.xyzw
      r15.x = samp0[]..swiz;
      r15.y = samp0[]..swiz;
      r15.z = samp0[]..swiz;
      r15.w = samp0[]..swiz;
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
        r9.w = abs(r5.w) * -0.200000003 + 0.400000006;
        r19.xyz = r5.xyz * r9.www + v6.xyz;
        r19.w = 1;
        r15.x = dot(r15.xyzw, r19.xyzw);
        r15.y = dot(r16.xyzw, r19.xyzw);
        r15.xy = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r15.xy = r15.xy + r18.zw;
        r15.xy = r15.xy * r18.xy;
        r15.zw = r8.ww / r17.xz;
        r16.xy = float2(1,1) + -r15.zw;
        r16.xy = cmp(r15.xy >= r16.xy);
        r15.zw = cmp(r15.zw >= r15.xy);
        r15.zw = (int2)r15.zw | (int2)r16.xy;
        r9.w = (int)r15.w | (int)r15.z;
        if (r9.w == 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.w, r8.z, l(28), t12.xxxx
        r9.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r8.z, l(100), t12.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.zw, r8.z, l(164), t12.xxxy
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
          r8.z = dot(r16.xyzw, r19.xyzw);
          r15.xy = saturate(r15.xy);
          r16.xy = r15.xy * r17.xz + r17.yw;
          r8.z = r8.z + r15.z;
          r8.z = r8.z / r15.w;
          r8.z = max(6.10351563e-05, r8.z);
          r9.w = (int)r9.w & 0x0000ffff;
          if (enableDitheredShadow != 0) {
            r15.x = -r8.x;
            r17.z = (uint)r9.w;
            r15.y = r9.x;
            r15.z = r8.x;
            r11.w = 0;
            r12.w = 0;
            while (true) {
              r15.w = cmp((int)r12.w >= 8);
              if (r15.w != 0) break;
              r18.x = dot(icb[r12.w+0].yx, r15.xy);
              r18.y = dot(icb[r12.w+0].yx, r15.yz);
              r17.xy = r18.xy * r8.ww + r16.xy;
              r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r8.z).x;
              r11.w = r15.w * 0.125 + r11.w;
              r12.w = (int)r12.w + 1;
            }
          } else {
            r16.z = (uint)r9.w;
            r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r8.z).x;
          }
          r8.z = r11.w * r11.w;
          r8.z = r8.z * r11.w;
        } else {
          r8.z = 1;
        }
        r7.w = r8.z * r7.w;
      } else {
        r8.z = viewmodelSunShadowRaw & 0x0000ffff;
        r8.w = cmp(0 < (uint)r8.z);
        r9.w = ~(int)r2.w;
        r8.w = r8.w ? r9.w : 0;
        if (r8.w != 0) {
          r8.z = (int)r8.z + numLights;
          r8.z = (int)r8.z + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.w, r8.z, l(52), t12.xxxx
        r8.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r8.z, l(68), t12.xyzw
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
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
          r9.w = abs(r5.w) * -0.200000003 + 0.400000006;
          r19.xyz = r5.xyz * r9.www + v6.xyz;
          r19.w = 1;
          r15.x = dot(r15.xyzw, r19.xyzw);
          r15.y = dot(r16.xyzw, r19.xyzw);
          r15.xy = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r15.xy = r15.xy + r18.zw;
          r15.xy = r15.xy * r18.xy;
          r15.zw = r8.ww / r17.xz;
          r16.xy = float2(1,1) + -r15.zw;
          r16.xy = cmp(r15.xy >= r16.xy);
          r15.zw = cmp(r15.zw >= r15.xy);
          r15.zw = (int2)r15.zw | (int2)r16.xy;
          r9.w = (int)r15.w | (int)r15.z;
          if (r9.w == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.w, r8.z, l(28), t12.xxxx
          r9.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r8.z, l(100), t12.xyzw
          r16.x = samp0[]..swiz;
          r16.y = samp0[]..swiz;
          r16.z = samp0[]..swiz;
          r16.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.zw, r8.z, l(164), t12.xxxy
          r15.z = samp0[]..swiz;
          r15.w = samp0[]..swiz;
            r8.z = dot(r16.xyzw, r19.xyzw);
            r15.xy = saturate(r15.xy);
            r16.xy = r15.xy * r17.xz + r17.yw;
            r8.z = r8.z + r15.z;
            r8.z = r8.z / r15.w;
            r8.z = max(6.10351563e-05, r8.z);
            r9.w = (int)r9.w & 0x0000ffff;
            if (enableDitheredShadow != 0) {
              r15.x = -r8.x;
              r17.z = (uint)r9.w;
              r15.y = r9.x;
              r15.z = r8.x;
              r11.w = 0;
              r12.w = 0;
              while (true) {
                r15.w = cmp((int)r12.w >= 8);
                if (r15.w != 0) break;
                r18.x = dot(icb[r12.w+0].yx, r15.xy);
                r18.y = dot(icb[r12.w+0].yx, r15.yz);
                r17.xy = r18.xy * r8.ww + r16.xy;
                r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r8.z).x;
                r11.w = r15.w * 0.125 + r11.w;
                r12.w = (int)r12.w + 1;
              }
            } else {
              r16.z = (uint)r9.w;
              r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r8.z).x;
            }
            r8.z = r11.w * r11.w;
            r8.z = r8.z * r11.w;
          } else {
            r8.z = 1;
          }
          r7.w = r8.z * r7.w;
        }
      }
      r8.z = -r2.x * 0.5 + 1;
      r8.z = -r6.z * r8.z + 1;
      r8.z = r8.z * r8.z;
      r8.z = -r8.z * 0.620000005 + 0.620000005;
      r8.z = r8.z + -r6.z;
      r8.z = r6.y * r8.z + r6.z;
      r8.z = r8.z * r7.w;
      r5.w = cmp(0 < r5.w);
      r15.xyz = r8.zzz * r10.yzw + r14.xyz;
      r16.xyz = -v6.xyz * r2.zzz + sunConstants.wldDir.xyz;
      r2.z = dot(r16.xyz, r16.xyz);
      r2.z = rsqrt(r2.z);
      r16.xyz = r16.xyz * r2.zzz;
      r2.z = dot(r16.xyz, r7.xyz);
      r8.z = dot(r5.xyz, r16.xyz);
      r8.w = abs(r8.z) * r3.y + -abs(r8.z);
      r8.z = abs(r8.z) * r8.w + 1;
      r6.z = r6.z * r1.w + r2.y;
      r8.z = r8.z * r8.z;
      r6.z = r8.z * r6.z;
      r6.z = rcp(r6.z);
      r6.z = r6.z * r6.w;
      r6.z = r7.w * r6.z;
      r6.z = 0.25 * r6.z;
      r16.xyz = r6.zzz * r10.yzw + r3.xzw;
      r2.z = saturate(1 + -r2.z);
      r6.w = r2.z * r2.z;
      r6.w = r6.w * r6.w;
      r2.z = r6.w * r2.z;
      r2.z = r6.z * r2.z;
      r17.xyz = r2.zzz * r10.zwy + r13.xyz;
      r15.w = r17.z;
      r14.w = r13.z;
      r14.xyzw = r5.wwww ? r15.xyzw : r14.xyzw;
      r17.zw = r16.xy;
      r13.zw = r3.xz;
      r15.xyzw = r5.wwww ? r17.xyzw : r13.xyzw;
      r3.w = r5.w ? r16.z : r3.w;
      r13.z = r14.w;
      r13.xy = r15.xy;
      r3.xz = r15.zw;
    }
  }
  r15.x = -r8.x;
  r2.z = ~(int)r2.w;
  r2.x = -r2.x * 0.5 + 1;
  r16.xy = float2(0,0);
  r17.w = 0;
  r18.xyz = v6.xyz;
  r18.w = 1;
  r19.w = 1;
  r15.z = r8.x;
  r20.w = 1;
  r21.z = 1;
  r22.w = 1;
  r15.yw = r9.xx;
  r8.y = r15.w;
  r23.w = 1;
  r9.y = r15.x;
  r9.z = r8.x;
  r24.w = 1;
  r25.x = r9.x;
  r25.y = r15.x;
  r25.z = r8.x;
  r26.x = r9.x;
  r26.y = r15.x;
  r26.z = r8.x;
  r27.x = r9.x;
  r27.y = r15.x;
  r27.z = r8.x;
  r10.yzw = r14.xyz;
  r28.xyz = r13.zxy;
  r29.xyz = r3.xzw;
  r5.w = enableDitheredShadow;
  r6.z = 0;
  while (true) {
    r6.w = cmp((uint)r6.z >= numLights);
    if (r6.w != 0) break;
    r16.z = (uint)r6.z >> 5;
    r17.xyz = (int3)r12.xyz + (int3)r16.xyz;
    r6.w = visibleLights.Load(r17.xyzw).x;
    r17.xyz = r10.yzw;
    r30.xyz = r28.xyz;
    r31.xyz = r29.xyz;
    r7.w = r5.w;
    r8.z = r6.w;
    while (true) {
      if (r8.z == 0) break;
      r8.w = firstbitlow((uint)r8.z);
      r9.w = 1 << (int)r8.w;
      r11.w = (int)r8.z & (int)r9.w;
      if (r11.w != 0) {
        r8.z = (int)r8.z ^ (int)r9.w;
        r8.w = (int)r6.z + (int)r8.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r32.xyzw, r8.w, l(0), t11.xyzw
      r32.x = samp0[]..swiz;
      r32.y = samp0[]..swiz;
      r32.z = samp0[]..swiz;
      r32.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r33.xy, r8.w, l(16), t11.xyxx
      r33.x = samp0[]..swiz;
      r33.y = samp0[]..swiz;
        r32.xyz = -v6.xyz + r32.xyz;
        r33.z = r32.w;
        r32.xyz = cmp(abs(r32.xyz) < r33.zxy);
        r9.w = r32.y ? r32.x : 0;
        r9.w = r32.z ? r9.w : 0;
        if (r9.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r8.w, l(0), t12.wxyz
        r32.x = samp0[]..swiz;
        r32.y = samp0[]..swiz;
        r32.z = samp0[]..swiz;
        r32.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r8.w, l(16), t12.zxyw
        r33.x = samp0[]..swiz;
        r33.y = samp0[]..swiz;
        r33.z = samp0[]..swiz;
        r33.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r8.w, l(32), t12.xyzw
        r34.x = samp0[]..swiz;
        r34.y = samp0[]..swiz;
        r34.z = samp0[]..swiz;
        r34.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r8.w, l(48), t12.xyzw
        r35.x = samp0[]..swiz;
        r35.y = samp0[]..swiz;
        r35.z = samp0[]..swiz;
        r35.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r8.w, l(64), t12.yzwx
        r36.x = samp0[]..swiz;
        r36.y = samp0[]..swiz;
        r36.z = samp0[]..swiz;
        r36.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r8.w, l(80), t12.xyzw
        r37.x = samp0[]..swiz;
        r37.y = samp0[]..swiz;
        r37.z = samp0[]..swiz;
        r37.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r8.w, l(96), t12.yzwx
        r38.x = samp0[]..swiz;
        r38.y = samp0[]..swiz;
        r38.z = samp0[]..swiz;
        r38.w = samp0[]..swiz;
          if (3 == 0) r9.w = 0; else if (3+24 < 32) {           r9.w = (uint)r33.w << (32-(3 + 24)); r9.w = (uint)r9.w >> (32-3);          } else r9.w = (uint)r33.w >> 24;
          switch (r9.w) {
            case 4 :            r9.w = cmp(0 < r38.x);
            r39.xy = r37.zw;
            r39.z = r38.w;
            r40.xyz = -r39.xyz * float3(0.5,0.5,0.5) + r32.yzw;
            r41.xyz = -v6.xyz + r40.xyz;
            r11.w = dot(r39.xyz, r41.xyz);
            r12.w = saturate(-r11.w / r38.x);
            r42.xyz = r12.www * r39.xyz + r40.xyz;
            r42.xyz = r9.www ? r42.xyz : r32.yzw;
            r42.xyz = -v6.xyz + r42.xyz;
            r13.w = dot(r42.xyz, r42.xyz);
            r14.w = rsqrt(r13.w);
            r42.xyz = r42.xyz * r14.www;
            r14.w = dot(r5.xyz, r42.xyz);
            r16.z = saturate(r14.w);
            r16.w = cmp(0 < r16.z);
            if (r16.w != 0) {
              r16.w = sqrt(r13.w);
              r21.w = r35.x * r35.x;
              r13.w = r21.w / r13.w;
              r13.w = min(1, r13.w);
              r42.xy = saturate(r16.ww * r34.xz + r34.yw);
              r42.zw = r42.xy * r42.xy;
              r42.xy = r42.xy * float2(-2,-2) + float2(3,3);
              r42.xy = r42.zw * r42.xy;
              r13.w = r42.x * r13.w;
              r13.w = r13.w * r42.y;
              r16.w = cmp(0 < r13.w);
              if (r16.w != 0) {
                if (3 == 0) r16.w = 0; else if (3+27 < 32) {                 r16.w = (uint)r33.w << (32-(3 + 27)); r16.w = (uint)r16.w >> (32-3);                } else r16.w = (uint)r33.w >> 27;
                r16.w = cmp((int)r16.w != 1);
                if (r16.w != 0) {
                  r16.w = abs(r14.w) * -0.200000003 + 0.400000006;
                  r42.xyz = r5.xyz * r16.www + v6.xyz;
                  r42.xyz = r42.xyz + -r36.xyz;
                  r16.w = max(abs(r42.y), abs(r42.z));
                  r16.w = max(abs(r42.x), r16.w);
                  r16.w = r37.x / r16.w;
                  r16.w = r16.w + r37.y;
                  r21.w = dot(r42.xyz, r42.xyz);
                  r21.w = rsqrt(r21.w);
                  r16.w = max(6.10351563e-05, r16.w);
                  r25.w = (int)r33.w & 0x0000ffff;
                  r43.w = (uint)r25.w;
                  r25.w = 0;
                  r26.w = 0;
                  while (true) {
                    r27.w = cmp((int)r26.w >= 8);
                    if (r27.w != 0) break;
                    r44.y = dot(icb[r26.w+0].yx, r15.xy);
                    r44.z = dot(icb[r26.w+0].yx, r15.yz);
                    r44.yz = r44.yz * r35.yy;
                    r44.x = r44.y * r10.x;
                    r44.w = r44.y * r6.x;
                    r43.xyz = r42.xyz * r21.www + r44.xzw;
                    r27.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r43.xyzw, r16.w).x;
                    r25.w = r27.w * 0.125 + r25.w;
                    r26.w = (int)r26.w + 1;
                  }
                } else {
                  r25.w = 1;
                }
                r13.w = r25.w * r13.w;
                r16.w = cmp(0 < r13.w);
                if (r16.w != 0) {
                  r16.w = r33.x * r3.y;
                  r16.w = 0.25 * r16.w;
                  r21.w = dot(r39.xyz, r11.xyz);
                  r26.w = dot(r11.xyz, r41.xyz);
                  r27.w = -r21.w * r21.w + r38.x;
                  r11.w = r21.w * r26.w + -r11.w;
                  r11.w = saturate(r11.w / r27.w);
                  r21.w = r27.w / r38.x;
                  r21.w = 10 * r21.w;
                  r21.w = min(1, r21.w);
                  r11.w = r11.w + -r12.w;
                  r11.w = r21.w * r11.w + r12.w;
                  r39.xyz = r11.www * r39.xyz + r40.xyz;
                  r39.xyz = r9.www ? r39.xyz : r32.yzw;
                  r39.xyz = -v6.xyz + r39.xyz;
                  r9.w = dot(r39.xyz, r39.xyz);
                  r9.w = rsqrt(r9.w);
                  r40.xyz = r39.xyz * r9.www;
                  if (4 == 0) r11.w = 0; else if (4+16 < 32) {                   r11.w = (uint)r33.w << (32-(4 + 16)); r11.w = (uint)r11.w >> (32-4);                  } else r11.w = (uint)r33.w >> 16;
                  r12.w = cmp(0 < (uint)r11.w);
                  r12.w = r2.w ? r12.w : 0;
                  if (r12.w != 0) {
                    r11.w = (int)r11.w + numLights;
                    r11.w = (int)r11.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.w, r11.w, l(52), t12.xxxx
                  r12.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r11.w, l(100), t12.xyzw
                  r41.x = samp0[]..swiz;
                  r41.y = samp0[]..swiz;
                  r41.z = samp0[]..swiz;
                  r41.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r11.w, l(116), t12.xyzw
                  r42.x = samp0[]..swiz;
                  r42.y = samp0[]..swiz;
                  r42.z = samp0[]..swiz;
                  r42.w = samp0[]..swiz;
                    r21.w = abs(r14.w) * -0.200000003 + 0.400000006;
                    r19.xyz = r5.xyz * r21.www + v6.xyz;
                    r21.w = dot(r41.xyzw, r19.xyzw);
                    r26.w = dot(r42.xyzw, r19.xyzw);
                    r27.w = cmp(r26.w < r21.w);
                    if (r27.w == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r11.w, l(68), t12.xyzw
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r11.w, l(84), t12.xyzw
                    r42.x = samp0[]..swiz;
                    r42.y = samp0[]..swiz;
                    r42.z = samp0[]..swiz;
                    r42.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r11.w, l(132), t12.xyzw
                    r43.x = samp0[]..swiz;
                    r43.y = samp0[]..swiz;
                    r43.z = samp0[]..swiz;
                    r43.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r11.w, l(148), t12.xyzw
                    r44.x = samp0[]..swiz;
                    r44.y = samp0[]..swiz;
                    r44.z = samp0[]..swiz;
                    r44.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xy, r11.w, l(164), t12.xyxx
                    r45.x = samp0[]..swiz;
                    r45.y = samp0[]..swiz;
                      r41.x = dot(r41.xyzw, r19.xyzw);
                      r41.y = dot(r42.xyzw, r19.xyzw);
                      r19.xy = r41.xy / r26.ww;
                      r19.xy = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r19.xy = r19.xy + r44.zw;
                      r19.xy = r19.xy * r44.xy;
                      r41.xy = r12.ww / r43.xz;
                      r41.zw = float2(1,1) + -r41.xy;
                      r41.zw = cmp(r19.xy >= r41.zw);
                      r41.xy = cmp(r41.xy >= r19.xy);
                      r41.xy = (int2)r41.xy | (int2)r41.zw;
                      r19.z = (int)r41.y | (int)r41.x;
                      r19.xy = saturate(r19.xy);
                      r41.xy = r19.xy * r43.xz + r43.yw;
                      r19.x = r45.y * r26.w;
                      r19.y = r45.x * r26.w + r21.w;
                      r19.x = r19.y / r19.x;
                    } else {
                      r19.z = -1;
                    }
                    r19.y = (int)r27.w | (int)r19.z;
                    if (r19.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.w, r11.w, l(28), t12.xxxx
                    r11.w = samp0[]..swiz;
                      r19.x = max(6.10351563e-05, r19.x);
                      r11.w = (int)r11.w & 0x0000ffff;
                      if (r7.w != 0) {
                        r42.z = (uint)r11.w;
                        r19.yz = float2(0,0);
                        while (true) {
                          r21.w = cmp((int)r19.z >= 8);
                          if (r21.w != 0) break;
                          r43.x = dot(icb[r19.z+0].yx, r15.xw);
                          r43.y = dot(icb[r19.z+0].xy, r8.xy);
                          r42.xy = r43.xy * r12.ww + r41.xy;
                          r21.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r42.xyz, r19.x).x;
                          r19.y = r21.w * 0.125 + r19.y;
                          r19.z = (int)r19.z + 1;
                        }
                      } else {
                        r41.z = (uint)r11.w;
                        r19.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r41.xyz, r19.x).x;
                      }
                      r11.w = r19.y * r19.y;
                      r11.w = r11.w * r19.y;
                    } else {
                      r11.w = 1;
                    }
                    r13.w = r13.w * r11.w;
                  } else {
                    if (4 == 0) r11.w = 0; else if (4+20 < 32) {                     r11.w = (uint)r33.w << (32-(4 + 20)); r11.w = (uint)r11.w >> (32-4);                    } else r11.w = (uint)r33.w >> 20;
                    r12.w = cmp(0 < (uint)r11.w);
                    r12.w = r12.w ? r2.z : 0;
                    if (r12.w != 0) {
                      r11.w = (int)r11.w + numLights;
                      r11.w = (int)r11.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.w, r11.w, l(52), t12.xxxx
                    r12.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r11.w, l(100), t12.xyzw
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r11.w, l(116), t12.xyzw
                    r42.x = samp0[]..swiz;
                    r42.y = samp0[]..swiz;
                    r42.z = samp0[]..swiz;
                    r42.w = samp0[]..swiz;
                      r19.x = abs(r14.w) * -0.200000003 + 0.400000006;
                      r20.xyz = r5.xyz * r19.xxx + v6.xyz;
                      r19.x = dot(r41.xyzw, r20.xyzw);
                      r19.z = dot(r42.xyzw, r20.xyzw);
                      r21.w = cmp(r19.z < r19.x);
                      if (r21.w == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r11.w, l(68), t12.xyzw
                      r41.x = samp0[]..swiz;
                      r41.y = samp0[]..swiz;
                      r41.z = samp0[]..swiz;
                      r41.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r11.w, l(84), t12.xyzw
                      r42.x = samp0[]..swiz;
                      r42.y = samp0[]..swiz;
                      r42.z = samp0[]..swiz;
                      r42.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r11.w, l(132), t12.xyzw
                      r43.x = samp0[]..swiz;
                      r43.y = samp0[]..swiz;
                      r43.z = samp0[]..swiz;
                      r43.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r11.w, l(148), t12.xyzw
                      r44.x = samp0[]..swiz;
                      r44.y = samp0[]..swiz;
                      r44.z = samp0[]..swiz;
                      r44.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xy, r11.w, l(164), t12.xyxx
                      r45.x = samp0[]..swiz;
                      r45.y = samp0[]..swiz;
                        r41.x = dot(r41.xyzw, r20.xyzw);
                        r41.y = dot(r42.xyzw, r20.xyzw);
                        r20.xy = r41.xy / r19.zz;
                        r20.xy = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                        r20.xy = r20.xy + r44.zw;
                        r20.xy = r20.xy * r44.xy;
                        r41.xy = r12.ww / r43.xz;
                        r41.zw = float2(1,1) + -r41.xy;
                        r41.zw = cmp(r20.xy >= r41.zw);
                        r41.xy = cmp(r41.xy >= r20.xy);
                        r41.xy = (int2)r41.xy | (int2)r41.zw;
                        r20.z = (int)r41.y | (int)r41.x;
                        r20.xy = saturate(r20.xy);
                        r41.xy = r20.xy * r43.xz + r43.yw;
                        r20.x = r45.y * r19.z;
                        r19.x = r45.x * r19.z + r19.x;
                        r19.x = r19.x / r20.x;
                      } else {
                        r20.z = -1;
                      }
                      r19.z = (int)r21.w | (int)r20.z;
                      if (r19.z == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.w, r11.w, l(28), t12.xxxx
                      r11.w = samp0[]..swiz;
                        r19.x = max(6.10351563e-05, r19.x);
                        r11.w = (int)r11.w & 0x0000ffff;
                        if (r7.w != 0) {
                          r20.z = (uint)r11.w;
                          r19.z = 0;
                          r21.w = 0;
                          while (true) {
                            r26.w = cmp((int)r21.w >= 8);
                            if (r26.w != 0) break;
                            r42.x = dot(icb[r21.w+0].xy, r9.xy);
                            r42.y = dot(icb[r21.w+0].yx, r9.xz);
                            r20.xy = r42.xy * r12.ww + r41.xy;
                            r20.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r19.x).x;
                            r19.z = r20.x * 0.125 + r19.z;
                            r21.w = (int)r21.w + 1;
                          }
                        } else {
                          r41.z = (uint)r11.w;
                          r19.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r41.xyz, r19.x).x;
                        }
                        r11.w = r19.z * r19.z;
                        r11.w = r11.w * r19.z;
                      } else {
                        r11.w = 1;
                      }
                      r13.w = r13.w * r11.w;
                    }
                  }
                  r11.w = -r16.z * r2.x + 1;
                  r11.w = r11.w * r11.w;
                  r11.w = -r11.w * 0.620000005 + 0.620000005;
                  r11.w = r11.w + -r16.z;
                  r11.w = r6.y * r11.w + r16.z;
                  r11.w = r11.w * r13.w;
                  r33.x = r32.x;
                  r12.w = cmp(0 < r14.w);
                  r20.xyz = r11.www * r33.xyz + r17.xyz;
                  r11.w = saturate(dot(r5.xyz, r40.xyz));
                  r39.xyz = r39.xyz * r9.www + r7.xyz;
                  r9.w = dot(r39.xyz, r39.xyz);
                  r9.w = rsqrt(r9.w);
                  r39.xyz = r39.xyz * r9.www;
                  r9.w = dot(r39.xyz, r7.xyz);
                  r14.w = dot(r5.xyz, r39.xyz);
                  r16.z = abs(r14.w) * r3.y + -abs(r14.w);
                  r14.w = abs(r14.w) * r16.z + 1;
                  r16.z = r11.w * r1.w + r2.y;
                  r14.w = r14.w * r14.w;
                  r14.w = r14.w * r16.z;
                  r14.w = rcp(r14.w);
                  r11.w = r11.w * r16.w;
                  r11.w = r14.w * r11.w;
                  r11.w = r11.w * r13.w;
                  r39.xyz = r11.www * r33.xyz + r31.xyz;
                  r9.w = saturate(1 + -r9.w);
                  r13.w = r9.w * r9.w;
                  r13.w = r13.w * r13.w;
                  r9.w = r13.w * r9.w;
                  r9.w = r11.w * r9.w;
                  r40.xyz = r9.www * r33.xyz + r30.xyz;
                  r17.xyz = r12.www ? r20.xyz : r17.xyz;
                  r30.xyz = r12.www ? r40.xyz : r30.xyz;
                  r31.xyz = r12.www ? r39.xyz : r31.xyz;
                }
              }
            }
            break;
            case 2 :            r20.xy = r35.zw;
            r20.z = r36.w;
            r20.xyz = -v6.xyz + r20.xyz;
            r9.w = dot(r20.xyz, r20.xyz);
            r9.w = rsqrt(r9.w);
            r39.xyz = r20.xyz * r9.www;
            r11.w = dot(r5.xyz, r39.xyz);
            r12.w = saturate(r11.w);
            r13.w = cmp(0 < r12.w);
            if (r13.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r8.w, l(112), t12.yzwx
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r8.w, l(128), t12.zxyw
            r40.x = samp0[]..swiz;
            r40.y = samp0[]..swiz;
            r40.z = samp0[]..swiz;
            r40.w = samp0[]..swiz;
              r41.xyz = r39.xyz;
              r41.w = r40.y;
              r13.w = dot(r41.xyzw, r18.xyzw);
              r14.w = cmp(r13.w < 1);
              if (r14.w != 0) {
                r42.xyz = float3(1,1,1);
                r14.w = 0;
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r8.w, l(172), t12.yzwx
              r43.x = samp0[]..swiz;
              r43.y = samp0[]..swiz;
              r43.z = samp0[]..swiz;
              r43.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r8.w, l(188), t12.wxyz
              r44.x = samp0[]..swiz;
              r44.y = samp0[]..swiz;
              r44.z = samp0[]..swiz;
              r44.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r8.w, l(204), t12.xyzw
              r45.x = samp0[]..swiz;
              r45.y = samp0[]..swiz;
              r45.z = samp0[]..swiz;
              r45.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.z, r8.w, l(236), t12.xxxx
              r16.z = samp0[]..swiz;
                r46.xyz = -v6.xyz + r32.yzw;
                r16.w = r35.x * r35.x;
                r19.x = dot(r46.xyz, r46.xyz);
                r16.w = r16.w / r19.x;
                r16.w = min(1, r16.w);
                r34.xy = saturate(r13.ww * r34.xz + r34.yw);
                r34.zw = r34.xy * r34.xy;
                r34.xy = r34.xy * float2(-2,-2) + float2(3,3);
                r34.xy = r34.zw * r34.xy;
                r16.w = r34.x * r16.w;
                r16.w = r16.w * r34.y;
                r36.w = r37.x;
                r34.x = dot(r36.xyzw, r18.xyzw);
                r46.xyz = r37.yzw;
                r46.w = r38.w;
                r34.y = dot(r46.xyzw, r18.xyzw);
                r21.xy = r34.xy / r13.ww;
                r13.w = cmp(r43.w < 0.00048828125);
                if (r13.w != 0) {
                  r44.y = r45.x;
                  r34.xy = saturate(abs(r21.xy) * r44.zw + r44.xy);
                  r34.zw = r34.xy * r34.xy;
                  r34.xy = r34.xy * float2(-2,-2) + float2(3,3);
                  r34.xy = r34.zw * r34.xy;
                  r13.w = r34.x * r34.y;
                } else {
                  r43.w = r44.y;
                  r34.xyzw = saturate(r43.xyzw * abs(r21.yyxx));
                  r34.xyzw = log2(r34.xyzw);
                  r34.xyzw = r44.xxxx * r34.xyzw;
                  r34.xyzw = exp2(r34.xyzw);
                  r34.xy = r34.xy + r34.zw;
                  r34.xy = log2(r34.xy);
                  r34.xy = r45.xx * r34.xy;
                  r34.xy = exp2(r34.xy);
                  r19.x = r44.z * r34.x;
                  r21.w = r44.w * r34.y + -1;
                  r19.x = r44.w * r34.y + -r19.x;
                  r19.x = saturate(r21.w / r19.x);
                  r21.w = r19.x * r19.x;
                  r19.x = r19.x * -2 + 3;
                  r13.w = r21.w * r19.x;
                }
                r14.w = r16.w * r13.w;
                r13.w = (int)r16.z & 255;
                if (r13.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyz, r8.w, l(220), t12.xyzx
                r34.x = samp0[]..swiz;
                r34.y = samp0[]..swiz;
                r34.z = samp0[]..swiz;
                  r16.z = dot(r45.yzw, r21.xyz);
                  r16.w = dot(r34.xyz, r21.xyz);
                  r34.xy = frac(r16.zw);
                  r13.w = (int)r13.w + -1;
                  r34.z = (uint)r13.w;
                  r42.xyz = gCookieArray.SampleLevel(samplerLinear_s, r34.xyz, 0).xyz;
                } else {
                  r42.xyz = float3(1,1,1);
                }
              }
              r32.yz = r33.yz;
              r21.xyw = r32.xyz * r42.xyz;
              r13.w = cmp(0 < r14.w);
              if (r13.w != 0) {
                if (3 == 0) r13.w = 0; else if (3+27 < 32) {                 r13.w = (uint)r33.w << (32-(3 + 27)); r13.w = (uint)r13.w >> (32-3);                } else r13.w = (uint)r33.w >> 27;
                r13.w = cmp((int)r13.w != 1);
                if (r13.w != 0) {
                  r13.w = abs(r11.w) * -0.200000003 + 0.400000006;
                  r22.xyz = r5.xyz * r13.www + v6.xyz;
                  r39.xyz = r38.xyz;
                  r13.w = dot(r39.xyzw, r22.xyzw);
                  r16.z = dot(r41.xyzw, r22.xyzw);
                  r16.w = cmp(r16.z >= r13.w);
                  if (r16.w != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.y, r8.w, l(144), t12.xxxx
                  r40.y = samp0[]..swiz;
                    r36.w = r37.x;
                    r32.x = dot(r36.xyzw, r22.xyzw);
                    r38.xyz = r37.yzw;
                    r32.y = dot(r38.xyzw, r22.xyzw);
                    r22.xy = r32.xy / r16.zz;
                    r22.xy = saturate(r22.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                    r22.xy = r22.xy * r40.zw + r40.xy;
                    r8.w = r13.w / r16.z;
                    r8.w = max(6.10351563e-05, r8.w);
                    r13.w = (int)r33.w & 0x0000ffff;
                    if (r7.w != 0) {
                      r32.z = (uint)r13.w;
                      r16.zw = float2(0,0);
                      while (true) {
                        r19.x = cmp((int)r16.w >= 8);
                        if (r19.x != 0) break;
                        r34.x = dot(icb[r16.w+0].xy, r25.xy);
                        r34.y = dot(icb[r16.w+0].yx, r25.xz);
                        r32.xy = r34.xy * r35.yy + r22.xy;
                        r19.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r32.xyz, r8.w).x;
                        r16.z = r19.x * 0.125 + r16.z;
                        r16.w = (int)r16.w + 1;
                      }
                    } else {
                      r22.z = (uint)r13.w;
                      r16.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r8.w).x;
                    }
                    r8.w = r16.z * r16.z;
                    r8.w = r8.w * r16.z;
                  } else {
                    r8.w = 1;
                  }
                } else {
                  r8.w = 1;
                }
                r8.w = r14.w * r8.w;
                r13.w = cmp(0 < r8.w);
                if (r13.w != 0) {
                  r13.w = r33.x * r3.y;
                  r13.w = r13.w * r12.w;
                  if (4 == 0) r14.w = 0; else if (4+16 < 32) {                   r14.w = (uint)r33.w << (32-(4 + 16)); r14.w = (uint)r14.w >> (32-4);                  } else r14.w = (uint)r33.w >> 16;
                  r16.w = cmp(0 < (uint)r14.w);
                  r16.w = r2.w ? r16.w : 0;
                  if (r16.w != 0) {
                    r14.w = (int)r14.w + numLights;
                    r14.w = (int)r14.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.w, r14.w, l(52), t12.xxxx
                  r16.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r14.w, l(68), t12.xyzw
                  r32.x = samp0[]..swiz;
                  r32.y = samp0[]..swiz;
                  r32.z = samp0[]..swiz;
                  r32.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r14.w, l(84), t12.xyzw
                  r34.x = samp0[]..swiz;
                  r34.y = samp0[]..swiz;
                  r34.z = samp0[]..swiz;
                  r34.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r14.w, l(100), t12.xyzw
                  r35.x = samp0[]..swiz;
                  r35.y = samp0[]..swiz;
                  r35.z = samp0[]..swiz;
                  r35.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r14.w, l(116), t12.xyzw
                  r36.x = samp0[]..swiz;
                  r36.y = samp0[]..swiz;
                  r36.z = samp0[]..swiz;
                  r36.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r14.w, l(132), t12.xyzw
                  r37.x = samp0[]..swiz;
                  r37.y = samp0[]..swiz;
                  r37.z = samp0[]..swiz;
                  r37.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r14.w, l(148), t12.xyzw
                  r38.x = samp0[]..swiz;
                  r38.y = samp0[]..swiz;
                  r38.z = samp0[]..swiz;
                  r38.w = samp0[]..swiz;
                    r19.x = abs(r11.w) * -0.200000003 + 0.400000006;
                    r23.xyz = r5.xyz * r19.xxx + v6.xyz;
                    r22.x = dot(r32.xyzw, r23.xyzw);
                    r22.y = dot(r34.xyzw, r23.xyzw);
                    r19.x = dot(r35.xyzw, r23.xyzw);
                    r22.z = dot(r36.xyzw, r23.xyzw);
                    r23.x = cmp(r22.z < r19.x);
                    r22.xy = r22.xy / r22.zz;
                    r22.xy = r22.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r22.xy = r22.xy + r38.zw;
                    r22.xy = r22.xy * r38.xy;
                    r23.yz = r16.ww / r37.xz;
                    r32.xy = float2(1,1) + -r23.yz;
                    r32.xy = cmp(r22.xy >= r32.xy);
                    r23.yz = cmp(r23.yz >= r22.xy);
                    r23.yz = (int2)r23.yz | (int2)r32.xy;
                    r23.y = (int)r23.z | (int)r23.y;
                    r23.x = (int)r23.x | (int)r23.y;
                    if (r23.x == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.x, r14.w, l(28), t12.xxxx
                    r23.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.yz, r14.w, l(164), t12.xxyx
                    r23.y = samp0[]..swiz;
                    r23.z = samp0[]..swiz;
                      r22.xy = saturate(r22.xy);
                      r32.xy = r22.xy * r37.xz + r37.yw;
                      r14.w = r23.z * r22.z;
                      r19.x = r23.y * r22.z + r19.x;
                      r14.w = r19.x / r14.w;
                      r14.w = max(6.10351563e-05, r14.w);
                      r19.x = r23.x ? 0.000000 : 0;
                      if (r7.w != 0) {
                        r22.z = (uint)r19.x;
                        r23.xy = float2(0,0);
                        while (true) {
                          r23.z = cmp((int)r23.y >= 8);
                          if (r23.z != 0) break;
                          r33.x = dot(icb[r23.y+0].xy, r26.xy);
                          r33.y = dot(icb[r23.y+0].yx, r26.xz);
                          r22.xy = r33.xy * r16.ww + r32.xy;
                          r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r14.w).x;
                          r23.x = r22.x * 0.125 + r23.x;
                          r23.y = (int)r23.y + 1;
                        }
                      } else {
                        r32.z = (uint)r19.x;
                        r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r32.xyz, r14.w).x;
                      }
                      r14.w = r23.x * r23.x;
                      r14.w = r14.w * r23.x;
                    } else {
                      r14.w = 1;
                    }
                    r8.w = r14.w * r8.w;
                  } else {
                    if (4 == 0) r14.w = 0; else if (4+20 < 32) {                     r14.w = (uint)r33.w << (32-(4 + 20)); r14.w = (uint)r14.w >> (32-4);                    } else r14.w = (uint)r33.w >> 20;
                    r16.w = cmp(0 < (uint)r14.w);
                    r16.w = r16.w ? r2.z : 0;
                    if (r16.w != 0) {
                      r14.w = (int)r14.w + numLights;
                      r14.w = (int)r14.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.w, r14.w, l(52), t12.xxxx
                    r16.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r14.w, l(68), t12.xyzw
                    r32.x = samp0[]..swiz;
                    r32.y = samp0[]..swiz;
                    r32.z = samp0[]..swiz;
                    r32.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r14.w, l(84), t12.xyzw
                    r33.x = samp0[]..swiz;
                    r33.y = samp0[]..swiz;
                    r33.z = samp0[]..swiz;
                    r33.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r14.w, l(100), t12.xyzw
                    r34.x = samp0[]..swiz;
                    r34.y = samp0[]..swiz;
                    r34.z = samp0[]..swiz;
                    r34.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r14.w, l(116), t12.xyzw
                    r35.x = samp0[]..swiz;
                    r35.y = samp0[]..swiz;
                    r35.z = samp0[]..swiz;
                    r35.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r14.w, l(132), t12.xyzw
                    r36.x = samp0[]..swiz;
                    r36.y = samp0[]..swiz;
                    r36.z = samp0[]..swiz;
                    r36.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r14.w, l(148), t12.xyzw
                    r37.x = samp0[]..swiz;
                    r37.y = samp0[]..swiz;
                    r37.z = samp0[]..swiz;
                    r37.w = samp0[]..swiz;
                      r19.x = abs(r11.w) * -0.200000003 + 0.400000006;
                      r24.xyz = r5.xyz * r19.xxx + v6.xyz;
                      r22.x = dot(r32.xyzw, r24.xyzw);
                      r22.y = dot(r33.xyzw, r24.xyzw);
                      r19.x = dot(r34.xyzw, r24.xyzw);
                      r22.z = dot(r35.xyzw, r24.xyzw);
                      r23.y = cmp(r22.z < r19.x);
                      r22.xy = r22.xy / r22.zz;
                      r22.xy = r22.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r22.xy = r22.xy + r37.zw;
                      r22.xy = r22.xy * r37.xy;
                      r24.xy = r16.ww / r36.xz;
                      r32.xy = float2(1,1) + -r24.xy;
                      r32.xy = cmp(r22.xy >= r32.xy);
                      r24.xy = cmp(r24.xy >= r22.xy);
                      r24.xy = (int2)r24.xy | (int2)r32.xy;
                      r23.z = (int)r24.y | (int)r24.x;
                      r23.y = (int)r23.y | (int)r23.z;
                      if (r23.y == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.y, r14.w, l(28), t12.xxxx
                      r23.y = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.xy, r14.w, l(164), t12.xyxx
                      r24.x = samp0[]..swiz;
                      r24.y = samp0[]..swiz;
                        r22.xy = saturate(r22.xy);
                        r32.xy = r22.xy * r36.xz + r36.yw;
                        r14.w = r24.y * r22.z;
                        r19.x = r24.x * r22.z + r19.x;
                        r14.w = r19.x / r14.w;
                        r14.w = max(6.10351563e-05, r14.w);
                        r19.x = r23.y ? 0.000000 : 0;
                        if (r7.w != 0) {
                          r22.z = (uint)r19.x;
                          r23.yz = float2(0,0);
                          while (true) {
                            r24.x = cmp((int)r23.z >= 8);
                            if (r24.x != 0) break;
                            r24.x = dot(icb[r23.z+0].xy, r27.xy);
                            r24.y = dot(icb[r23.z+0].yx, r27.xz);
                            r22.xy = r24.xy * r16.ww + r32.xy;
                            r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r14.w).x;
                            r23.y = r22.x * 0.125 + r23.y;
                            r23.z = (int)r23.z + 1;
                          }
                        } else {
                          r32.z = (uint)r19.x;
                          r23.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r32.xyz, r14.w).x;
                        }
                        r14.w = r23.y * r23.y;
                        r14.w = r14.w * r23.y;
                      } else {
                        r14.w = 1;
                      }
                      r8.w = r14.w * r8.w;
                    }
                  }
                  r14.w = -r12.w * r2.x + 1;
                  r14.w = r14.w * r14.w;
                  r14.w = -r14.w * 0.620000005 + 0.620000005;
                  r14.w = r14.w + -r12.w;
                  r14.w = r6.y * r14.w + r12.w;
                  r14.w = r14.w * r8.w;
                  r11.w = cmp(0 < r11.w);
                  r22.xyz = r14.www * r21.xyw + r17.xyz;
                  r20.xyz = r20.xyz * r9.www + r7.xyz;
                  r9.w = dot(r20.xyz, r20.xyz);
                  r9.w = rsqrt(r9.w);
                  r20.xyz = r20.xyz * r9.www;
                  r9.w = dot(r20.xyz, r7.xyz);
                  r14.w = dot(r5.xyz, r20.xyz);
                  r16.w = abs(r14.w) * r3.y + -abs(r14.w);
                  r14.w = abs(r14.w) * r16.w + 1;
                  r12.w = r12.w * r1.w + r2.y;
                  r14.w = r14.w * r14.w;
                  r12.w = r14.w * r12.w;
                  r12.w = rcp(r12.w);
                  r12.w = r12.w * r13.w;
                  r8.w = r12.w * r8.w;
                  r8.w = 0.25 * r8.w;
                  r20.xyz = r8.www * r21.xyw + r31.xyz;
                  r9.w = saturate(1 + -r9.w);
                  r12.w = r9.w * r9.w;
                  r12.w = r12.w * r12.w;
                  r9.w = r12.w * r9.w;
                  r8.w = r9.w * r8.w;
                  r21.xyw = r8.www * r21.xyw + r30.xyz;
                  r17.xyz = r11.www ? r22.xyz : r17.xyz;
                  r30.xyz = r11.www ? r21.xyw : r30.xyz;
                  r31.xyz = r11.www ? r20.xyz : r31.xyz;
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
    r10.yzw = r17.xyz;
    r28.xyz = r30.xyz;
    r29.xyz = r31.xyz;
    r6.z = (int)r6.z + 32;
  }
  r2.xyz = float3(1,1,1) + -r1.xyz;
  r2.xyz = r28.xyz * r2.xyz;
  r1.xyz = r29.xyz * r1.xyz + r2.xyz;
  r0.xyz = r10.yzw * r0.xyz + r1.xyz;
  r1.x = dot(r0.xyz, float3(0.298999995,0.587000012,0.114));
  r1.x = max(9.99999975e-05, r1.x);
  r1.w = max(relHDRExposure.x, r1.x);
  r1.xyz = r4.xyz * r1.www;
  r4.w = 1;
  r1.xyzw = relativeHDR ? r1.xyzw : r4.xyzw;
  r0.xyz = r1.xyz + r0.xyz;
  r1.w = hdrScale * r1.w;
  r1.w = max(1, r1.w);
  r1.xyz = r1.xyz / r1.www;
  r1.x = saturate(dot(r1.xyz, float3(0.298999995,0.587000012,0.114)));
  o0.w = r1.x + r0.w;
  r0.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.w != 0) {
    r0.w = dot(v6.xyz, v6.xyz);
    r1.x = rsqrt(r0.w);
    r1.xyz = v6.xyz * r1.xxx;
    r0.w = sqrt(r0.w);
    r1.w = cmp(0 < fogConstants.blendAmount);
    if (r1.w != 0) {
      r2.xy = r0.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r2.xy = fogConstants.atmospherefogdensityatcamera.xy * r2.xy;
      r1.w = cmp(0.00999999978 < abs(v6.z));
      r2.zw = fogConstants.atmospherefogheightdensityscale.xy * v6.zz;
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
      r2.w = cmp(0.00999999978 < abs(v6.z));
      r3.x = fogConstants.atmospherefogheightdensityscale.x * v6.z;
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
    r0.w = fogConstants.heightFalloff * v6.z;
    r1.w = fogConstants.heightFalloff * v6.z + fogConstants.K0;
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
    r1.w = dot(v6.xyz, v6.xyz);
    r2.x = sqrt(r1.w);
    r0.w = r0.w * r2.x + fogConstants.expAdd;
    r0.w = exp2(r0.w);
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r1.w = rsqrt(r1.w);
    r2.xyz = v6.xyz * r1.www;
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