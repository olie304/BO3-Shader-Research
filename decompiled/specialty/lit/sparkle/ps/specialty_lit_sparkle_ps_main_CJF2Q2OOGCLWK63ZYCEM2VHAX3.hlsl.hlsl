// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:42:34 2021

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
  bool useUVOffsets : packoffset(c11.z);
  float2 sparkleTile : packoffset(c12);
  float3 backlightScatterColor : packoffset(c13);
  float3 specColorTint : packoffset(c14);
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
SamplerState sparkleDataSampler_s : register(s7);
SamplerComparisonState ShadowSamplerComparisonState_s : register(s13);
Texture2D<float4> colorMap : register(t0);
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
Texture2D<float4> normalMap : register(t21);
Texture2D<float4> glossMap : register(t22);
StructuredBuffer<gSunShadowTree> gSunShadowTree : register(t23);
Texture2D<float4> aoMap : register(t24);
Texture2D<float4> thicknessMap : register(t25);
Texture2D<float4> sparkleDataMap : register(t26);
Texture2DArray<float> gTransShadowmapArray : register(t31);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float3 v1 : COLOR0,
  float w1 : COLOR1,
  float2 v2 : TEXCOORD0,
  float3 v3 : UVOFFSETS0,
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
// unknown dcl_: dcl_resource_structured t11, 80
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t12, 240
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t15, 224
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t16, 96
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t23, 4
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45,r46,r47,r48,r49,r50,r51,r52;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = colorMap.Sample(colorSampler_s, v2.xy).xyzw;
  r1.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r1.xyz = r0.www * r1.xyz + float3(1,1,1);
  r0.xyz = r1.xyz * r0.xyz;
  r0.xyz = v1.xyz * r0.xyz;
  o0.w = w1.x * r0.w;
  r0.w = aoMap.Sample(aoSampler_s, v2.xy).x;
  r1.x = glossMap.Sample(specColorSampler_s, v2.xy).x;
  r1.y = glossRange.y + -glossRange.x;
  r1.x = r1.x * r1.y + glossRange.x;
  r1.x = saturate(0.0588235296 * r1.x);
  r1.yzw = normalMap.Sample(normalSampler_s, v2.xy).xyz;
  r1.yzw = float3(-0.5,-0.5,-0) + r1.yzw;
  r1.yzw = baseNormalHeight * r1.yzw + float3(0.5,0.5,0);
  r1.yz = r1.yz * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.x = dot(r1.yz, r1.yz);
  r2.x = 1 + -r2.x;
  r2.x = max(0, r2.x);
  r2.x = sqrt(r2.x);
  r1.w = r1.w * r1.w;
  r1.w = 0.333333343 * r1.w;
  r1.w = min(1, r1.w);
  r2.y = v8.x ? 1 : -1;
  r2.z = dot(v4.xyz, v4.xyz);
  r2.z = rsqrt(r2.z);
  r3.xyz = v4.xyz * r2.zzz;
  r3.xyz = r3.xyz * r2.yyy;
  r2.z = dot(v5.xyz, v5.xyz);
  r2.z = rsqrt(r2.z);
  r4.xyz = v5.xyz * r2.zzz;
  r4.xyz = r4.xyz * r2.yyy;
  r2.z = dot(v6.xyz, v6.xyz);
  r2.z = rsqrt(r2.z);
  r5.xyz = v6.xyz * r2.zzz;
  r2.yzw = r5.xyz * r2.yyy;
  r1.x = -17 * r1.x;
  r1.x = exp2(r1.x);
  r1.x = r1.w + r1.x;
  r1.x = log2(r1.x);
  r1.x = -0.0588235296 * r1.x;
  r5.y = max(0, r1.x);
  r1.xzw = r2.yzw * r1.zzz;
  r1.xyz = r4.xyz * r1.yyy + r1.xzw;
  r1.xyz = r3.xyz * r2.xxx + r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  r2.x = thicknessMap.Sample(colorSampler_s, v2.xy).x;
  r2.yzw = backlightScatterColor.xyz * r0.xyz;
  r2.x = 1 + -r2.x;
  r2.xyz = r2.yzw * r2.xxx;
  r3.xy = sparkleTile.xy * v2.xy;
  r3.xy = sparkleDataMap.Sample(sparkleDataSampler_s, r3.xy).xy;
  r3.zw = (uint2)v0.xy;
  r2.w = cmp(v0.z >= 0.984375);
  r4.x = 1.01587307 * v0.z;
  r4.y = v0.z * 64 + -63;
  r2.w = r2.w ? r4.y : r4.x;
  r2.w = max(9.99999994e-09, r2.w);
  r2.w = rcp(r2.w);
  r4.x = dot(-v7.xyz, -v7.xyz);
  r4.x = rsqrt(r4.x);
  r4.yzw = -v7.xyz * r4.xxx;
  r5.z = cmp(isDepthHack != 0);
  r6.xy = (uint2)r3.wz;
  r5.w = dot(r6.yx, float2(0.0671105608,0.00583714992));
  r5.w = frac(r5.w);
  r5.w = 52.9829178 * r5.w;
  r5.w = frac(r5.w);
  r5.w = r5.w * 6.28318548 + gameTick.w;
  sincos(r5.w, r7.x, r8.x);
  r5.w = dot(r6.xy, float2(0.0671105608,0.00583714992));
  r5.w = frac(r5.w);
  r5.w = 52.9829178 * r5.w;
  r5.w = frac(r5.w);
  r5.w = r5.w * 6.28318548 + gameTick.w;
  sincos(r5.w, r6.x, r9.x);
  r5.w = dot(r1.xyz, r4.yzw);
  r5.x = saturate(r5.w);
  r6.y = dot(-r4.yzw, r1.xyz);
  r6.y = r6.y + r6.y;
  r10.xyz = r1.xyz * -r6.yyy + -r4.yzw;
  r6.y = 17 * r5.y;
  r6.y = exp2(r6.y);
  r6.y = 2 + r6.y;
  r6.y = 2 / r6.y;
  r6.z = sqrt(r6.y);
  r6.w = 1 + -r5.y;
  r7.y = 5 * r6.w;
  r7.z = r6.w * 5 + -2.5;
  r7.z = 0.400000006 * r7.z;
  r7.z = max(0, r7.z);
  r9.yz = -r6.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r7.w = exp2(r9.y);
  r7.w = r7.w * r5.x;
  r7.zw = float2(100,9.1368103) * r7.zw;
  r8.w = r7.y * r6.w;
  r8.w = -r8.w * 2.0159049 + r9.z;
  r8.w = exp2(r8.w);
  r8.w = r8.w * r5.x;
  r8.w = 9.70808983 * r8.w;
  r7.w = max(r8.w, r7.w);
  r7.w = max(1.26815999, r7.w);
  r8.w = numRefProbes + -numOverrideProbes;
  r2.w = 0.0078125 * r2.w;
  r2.w = min(15, r2.w);
  r2.w = (uint)r2.w;
  r11.xy = (uint2)r3.zw >> int2(6,6);
  r11.z = (uint)r2.w << 4;
  r2.w = (int)r8.w & -32;
  r3.z = (int)-r2.w + (int)r8.w;
  r3.w = numRefProbes & -32;
  r9.y = (int)-r3.w + numRefProbes;
  r12.xy = float2(0,0);
  r13.w = 0;
  r14.yz = float2(0,1);
  r15.xy = float2(0,0);
  r16.xz = float2(1,1);
  r17.xy = float2(0,0);
  r18.xy = float2(0,0);
  r19.xyzw = float4(0,0,0,0);
  r20.yzw = float3(0,0,0);
  r9.z = r2.w;
  while (true) {
    r9.w = cmp((uint)r9.z >= numRefProbes);
    if (r9.w != 0) break;
    r12.z = (uint)r9.z >> 5;
    r13.xyz = (int3)r11.xyz + (int3)r12.xyz;
    r9.w = visibleProbes.Load(r13.xyzw).x;
    r11.w = cmp((int)r2.w == (int)r9.z);
    bitmask.z = ((~(-1 << r3.z)) << 0) & 0xffffffff;  r12.z = (((uint)0 << 0) & bitmask.z) | ((uint)r9.w & ~bitmask.z);
    r9.w = r11.w ? r12.z : r9.w;
    r11.w = cmp((int)r3.w == (int)r9.z);
    if (r9.y == 0) r12.z = 0; else if (r9.y+0 < 32) {     r12.z = (uint)r9.w << (32-(r9.y + 0)); r12.z = (uint)r12.z >> (32-r9.y);    } else r12.z = (uint)r9.w >> 0;
    r9.w = r11.w ? r12.z : r9.w;
    r11.w = (int)r9.z + numLights;
    r21.xyzw = r19.xyzw;
    r22.xyz = r20.yzw;
    r12.z = r9.w;
    while (true) {
      if (r12.z == 0) break;
      r12.w = firstbitlow((uint)r12.z);
      r13.x = 1 << (int)r12.w;
      r13.y = (int)r12.z & (int)r13.x;
      if (r13.y != 0) {
        r12.z = (int)r12.z ^ (int)r13.x;
        r13.x = (int)r11.w + (int)r12.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r23.xyzw, r13.x, l(0), t11.xyzw
      r23.x = samp0[]..swiz;
      r23.y = samp0[]..swiz;
      r23.z = samp0[]..swiz;
      r23.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r13.xy, r13.x, l(16), t11.xyxx
      r13.x = samp0[]..swiz;
      r13.y = samp0[]..swiz;
        r23.xyz = -v7.xyz + r23.xyz;
        r13.z = r23.w;
        r13.xyz = cmp(abs(r23.xyz) < r13.zxy);
        r13.x = r13.y ? r13.x : 0;
        r13.x = r13.z ? r13.x : 0;
        if (r13.x != 0) {
          r12.w = (int)r9.z + (int)r12.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r12.w, l(0), t15.wxyz
        r23.x = samp0[]..swiz;
        r23.y = samp0[]..swiz;
        r23.z = samp0[]..swiz;
        r23.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r13.xy, r12.w, l(96), t15.xyxx
        r13.x = samp0[]..swiz;
        r13.y = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r12.w, l(116), t15.zwxy
        r24.x = samp0[]..swiz;
        r24.y = samp0[]..swiz;
        r24.z = samp0[]..swiz;
        r24.w = samp0[]..swiz;
          r25.xyz = v7.xyz + -r23.yzw;
          r13.z = (int)r24.w & 0x0000ffff;
          if (6 == 0) r14.w = 0; else if (6+25 < 32) {           r14.w = (uint)r24.w << (32-(6 + 25)); r14.w = (uint)r14.w >> (32-6);          } else r14.w = (uint)r24.w >> 25;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r13.z, l(0), t16.xyzw
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
        r26.z = samp0[]..swiz;
        r26.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r13.z, l(16), t16.xyzw
        r27.x = samp0[]..swiz;
        r27.y = samp0[]..swiz;
        r27.z = samp0[]..swiz;
        r27.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r13.z, l(32), t16.xyzw
        r28.x = samp0[]..swiz;
        r28.y = samp0[]..swiz;
        r28.z = samp0[]..swiz;
        r28.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r13.z, l(48), t16.xyzw
        r29.x = samp0[]..swiz;
        r29.y = samp0[]..swiz;
        r29.z = samp0[]..swiz;
        r29.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r13.z, l(64), t16.xyzw
        r30.x = samp0[]..swiz;
        r30.y = samp0[]..swiz;
        r30.z = samp0[]..swiz;
        r30.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r13.z, l(80), t16.xyzw
        r31.x = samp0[]..swiz;
        r31.y = samp0[]..swiz;
        r31.z = samp0[]..swiz;
        r31.w = samp0[]..swiz;
          r15.w = dot(r26.xyz, r25.xyz);
          r15.w = saturate(r15.w + r26.w);
          r17.w = dot(r27.xyz, r25.xyz);
          r17.w = saturate(r17.w + r27.w);
          r15.w = r17.w * r15.w;
          r17.w = dot(r28.xyz, r25.xyz);
          r17.w = saturate(r17.w + r28.w);
          r15.w = r17.w * r15.w;
          r17.w = dot(r29.xyz, r25.xyz);
          r17.w = saturate(r17.w + r29.w);
          r15.w = r17.w * r15.w;
          r17.w = dot(r30.xyz, r25.xyz);
          r17.w = saturate(r17.w + r30.w);
          r15.w = r17.w * r15.w;
          r17.w = dot(r31.xyz, r25.xyz);
          r17.w = saturate(r17.w + r31.w);
          r14.x = r17.w * r15.w;
          r15.w = r13.x ? 0.000000 : 0;
          r26.xy = r15.ww ? r14.xy : r14.zx;
          r14.x = r13.x;
          r27.xy = r26.xy;
          r15.w = 1;
          while (true) {
            r17.w = cmp((int)r15.w >= (int)r14.w);
            if (r17.w != 0) break;
            r17.w = (int)r13.z + (int)r15.w;
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
            r17.w = dot(r28.xyz, r25.xyz);
            r17.w = saturate(r17.w + r28.w);
            r17.w = r27.x * r17.w;
            r18.w = dot(r29.xyz, r25.xyz);
            r18.w = saturate(r18.w + r29.w);
            r17.w = r18.w * r17.w;
            r18.w = dot(r30.xyz, r25.xyz);
            r18.w = saturate(r18.w + r30.w);
            r17.w = r18.w * r17.w;
            r18.w = dot(r31.xyz, r25.xyz);
            r18.w = saturate(r18.w + r31.w);
            r17.w = r18.w * r17.w;
            r18.w = dot(r32.xyz, r25.xyz);
            r18.w = saturate(r18.w + r32.w);
            r17.w = r18.w * r17.w;
            r18.w = dot(r33.xyz, r25.xyz);
            r18.w = saturate(r18.w + r33.w);
            r27.x = r18.w * r17.w;
            r23.w = (uint)r14.x >> 2;
            if (1 == 0) r25.w = 0; else if (1+2 < 32) {             r25.w = (uint)r14.x << (32-(1 + 2)); r25.w = (uint)r25.w >> (32-1);            } else r25.w = (uint)r14.x >> 2;
            r26.z = (int)r23.w & 2;
            r26.w = max(r27.y, r27.x);
            r17.w = -r17.w * r18.w + 1;
            r17.w = r27.y * r17.w;
            r16.y = r26.z ? r17.w : r26.w;
            r27.xy = r25.ww ? r27.xy : r16.xy;
            r15.w = (int)r15.w + 1;
            r14.x = r23.w;
          }
          r27.y = saturate(r27.y);
          r13.x = r27.y * r13.y;
          r13.z = cmp(0 < r13.x);
          if (r13.z != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r12.w, l(16), t15.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r12.w, l(32), t15.yxwz
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r12.w, l(48), t15.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r12.w, l(64), t15.zwxy
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r12.w, l(80), t15.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r12.w, l(132), t15.zwxy
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r12.w, l(148), t15.zwxy
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r12.w, l(164), t15.zwxy
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r12.w, l(180), t15.zwxy
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r12.w, l(196), t15.xyzw
          r36.x = samp0[]..swiz;
          r36.y = samp0[]..swiz;
          r36.z = samp0[]..swiz;
          r36.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xy, r12.w, l(212), t15.xyxx
          r37.x = samp0[]..swiz;
          r37.y = samp0[]..swiz;
            r22.z = r27.y * r13.y + r22.z;
            r12.w = r13.x * r24.z;
            r24.z = r32.z;
            r13.x = dot(r10.xyz, r24.xyz);
            r13.y = dot(r25.xyz, r24.xyz);
            r13.y = r13.y + -r32.w;
            r13.z = cmp(r13.y >= 0);
            r13.y = max(abs(r13.y), r7.z);
            r13.y = r13.z ? r13.y : -r13.y;
            r13.x = max(1.00000001e-07, -r13.x);
            r13.x = r13.y / r13.x;
            r13.x = min(131072, abs(r13.x));
            r32.z = r33.z;
            r13.y = dot(r10.xyz, r32.xyz);
            r13.z = dot(r25.xyz, r32.xyz);
            r13.z = r13.z + -r33.w;
            r14.x = cmp(r13.z >= 0);
            r13.z = max(abs(r13.z), r7.z);
            r13.z = r14.x ? r13.z : -r13.z;
            r13.y = max(1.00000001e-07, -r13.y);
            r13.y = r13.z / r13.y;
            r13.x = min(r13.x, abs(r13.y));
            r33.z = r34.z;
            r13.y = dot(r10.xyz, r33.xyz);
            r13.z = dot(r25.xyz, r33.xyz);
            r13.z = r13.z + -r34.w;
            r14.x = cmp(r13.z >= 0);
            r13.z = max(abs(r13.z), r7.z);
            r13.z = r14.x ? r13.z : -r13.z;
            r13.y = max(1.00000001e-07, -r13.y);
            r13.y = r13.z / r13.y;
            r13.x = min(r13.x, abs(r13.y));
            r34.z = r35.z;
            r13.y = dot(r10.xyz, r34.xyz);
            r13.z = dot(r25.xyz, r34.xyz);
            r13.z = r13.z + -r35.w;
            r14.x = cmp(r13.z >= 0);
            r13.z = max(abs(r13.z), r7.z);
            r13.z = r14.x ? r13.z : -r13.z;
            r13.y = max(1.00000001e-07, -r13.y);
            r13.y = r13.z / r13.y;
            r13.x = min(r13.x, abs(r13.y));
            r35.z = r36.x;
            r13.y = dot(r10.xyz, r35.xyz);
            r13.z = dot(r25.xyz, r35.xyz);
            r13.z = r13.z + -r36.y;
            r14.x = cmp(r13.z >= 0);
            r13.z = max(abs(r13.z), r7.z);
            r13.z = r14.x ? r13.z : -r13.z;
            r13.y = max(1.00000001e-07, -r13.y);
            r13.y = r13.z / r13.y;
            r13.x = min(r13.x, abs(r13.y));
            r37.zw = r36.zw;
            r13.y = dot(r10.zxy, r37.xzw);
            r13.z = dot(r25.zxy, r37.xzw);
            r13.z = r13.z + -r37.y;
            r14.x = cmp(r13.z >= 0);
            r13.z = max(abs(r13.z), r7.z);
            r13.z = r14.x ? r13.z : -r13.z;
            r13.y = max(1.00000001e-07, -r13.y);
            r13.y = r13.z / r13.y;
            r13.x = min(r13.x, abs(r13.y));
            r24.x = r29.w;
            r24.yz = r30.zw;
            r24.xyz = r24.xyz + r25.xyz;
            r24.xyz = r10.xyz * r13.xxx + r24.xyz;
            r13.y = dot(r24.xyz, r24.xyz);
            r13.y = sqrt(r13.y);
            r13.x = r13.x / r13.y;
            r13.x = r13.x + r13.x;
            r13.x = sqrt(r13.x);
            r13.x = r6.w * 5 + r13.x;
            r13.x = -0.844799995 + r13.x;
            r23.y = r26.z;
            r23.z = r28.x;
            r32.x = dot(r24.xyz, r23.xyz);
            r33.xy = r26.xw;
            r33.z = r28.w;
            r32.y = dot(r24.xyz, r33.xyz);
            r28.x = r26.y;
            r32.z = dot(r24.xyz, r28.xyz);
            if (9 == 0) r13.y = 0; else if (9+16 < 32) {             r13.y = (uint)r24.w << (32-(9 + 16)); r13.y = (uint)r13.y >> (32-9);            } else r13.y = (uint)r24.w >> 16;
            r32.w = (uint)r13.y;
            r13.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r32.xyzw, r13.x).xyz;
            r24.x = dot(r25.xyz, r23.xyz);
            r24.y = dot(r25.xyz, r33.xyz);
            r24.z = dot(r25.xyz, r28.xyz);
            r24.xyz = saturate(r24.xyz * r29.xyz + float3(0.5,0.5,0.5));
            r30.z = r31.x;
            r24.xyz = r24.xyz * r30.xyz + r31.yzw;
            r32.x = dot(r1.xyz, r23.xyz);
            r32.y = dot(r1.xyz, r33.xyz);
            r32.z = dot(r1.xyz, r28.xyz);
            r23.xyz = cmp(float3(0,0,0) < r32.xyz);
            r15.z = r23.x ? 0 : 0.5;
            r25.xyz = r24.xyz + r15.xyz;
            r25.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
            r26.xyz = r32.xyz * r32.xyz;
            r26.xyz = r26.xyz * r12.www;
            r17.z = r23.y ? 0 : 0.5;
            r23.xyw = r24.xyz + r17.xyz;
            r23.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r23.xyw, 0).xyz;
            r23.xyw = r23.xyw * r26.yyy;
            r23.xyw = r25.xyz * r26.xxx + r23.xyw;
            r18.z = r23.z ? 0 : 0.5;
            r24.xyz = r24.xyz + r18.xyz;
            r24.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r24.xyz, 0).xyz;
            r23.xyz = r24.xyz * r26.zzz + r23.xyw;
            r24.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r32.xyzw, 6).xyz;
            r25.xyz = r24.xyz * r23.xyz;
            r14.x = dot(r25.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r21.xyz = r23.xyz * r24.xyz + r21.xyz;
            r14.w = r14.x * r7.w;
            r13.xyz = r13.xyz * r12.www;
            r12.w = dot(r13.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r12.w = r7.w * r14.x + r12.w;
            r12.w = r14.w / r12.w;
            r23.x = r21.w;
            r23.yz = r22.xy;
            r22.xyw = r13.yzx * r12.www + r23.yzx;
            r21.w = r22.w;
          }
        }
      }
    }
    r19.xyzw = r21.xyzw;
    r20.yzw = r22.xyz;
    r9.z = (int)r9.z + 32;
  }
  r9.z = cmp(r20.w < 1);
  if (r9.z != 0) {
    r12.xy = float2(0,0);
    r13.w = 0;
    r14.yz = float2(0,1);
    r15.xy = float2(0,0);
    r16.x = 1;
    r17.xy = float2(0,0);
    r18.xy = float2(0,0);
    r21.x = r19.w;
    r21.yzw = r20.yzw;
    r22.xyz = r19.xyz;
    r9.z = r20.w;
    r9.w = 0;
    while (true) {
      r11.w = cmp((uint)r9.w >= (uint)r8.w);
      if (r11.w != 0) break;
      r12.z = (uint)r9.w >> 5;
      r13.xyz = (int3)r11.xyz + (int3)r12.xyz;
      r11.w = visibleProbes.Load(r13.xyzw).x;
      r12.z = cmp((int)r2.w == (int)r9.w);
      if (r3.z == 0) r12.w = 0; else if (r3.z+0 < 32) {       r12.w = (uint)r11.w << (32-(r3.z + 0)); r12.w = (uint)r12.w >> (32-r3.z);      } else r12.w = (uint)r11.w >> 0;
      r11.w = r12.z ? r12.w : r11.w;
      r12.z = (int)r9.w + numLights;
      r23.xyzw = r21.xyzw;
      r13.xyz = r22.xyz;
      r12.w = r9.z;
      r14.w = r11.w;
      while (true) {
        if (r14.w == 0) break;
        r15.w = firstbitlow((uint)r14.w);
        r17.w = 1 << (int)r15.w;
        r18.w = (int)r14.w & (int)r17.w;
        if (r18.w != 0) {
          r14.w = (int)r14.w ^ (int)r17.w;
          r17.w = (int)r12.z + (int)r15.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r24.xyzw, r17.w, l(0), t11.xyzw
        r24.x = samp0[]..swiz;
        r24.y = samp0[]..swiz;
        r24.z = samp0[]..swiz;
        r24.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r25.xy, r17.w, l(16), t11.xyxx
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
          r24.xyz = -v7.xyz + r24.xyz;
          r25.z = r24.w;
          r24.xyz = cmp(abs(r24.xyz) < r25.zxy);
          r17.w = r24.y ? r24.x : 0;
          r17.w = r24.z ? r17.w : 0;
          if (r17.w != 0) {
            r15.w = (int)r9.w + (int)r15.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r15.w, l(0), t15.wxyz
          r24.x = samp0[]..swiz;
          r24.y = samp0[]..swiz;
          r24.z = samp0[]..swiz;
          r24.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xy, r15.w, l(96), t15.xyxx
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r15.w, l(116), t15.zwxy
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
            r27.xyz = v7.xyz + -r24.yzw;
            r17.w = (int)r26.w & 0x0000ffff;
            if (6 == 0) r18.w = 0; else if (6+25 < 32) {             r18.w = (uint)r26.w << (32-(6 + 25)); r18.w = (uint)r18.w >> (32-6);            } else r18.w = (uint)r26.w >> 25;
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
            r22.w = dot(r28.xyz, r27.xyz);
            r22.w = saturate(r22.w + r28.w);
            r24.w = dot(r29.xyz, r27.xyz);
            r24.w = saturate(r24.w + r29.w);
            r22.w = r24.w * r22.w;
            r24.w = dot(r30.xyz, r27.xyz);
            r24.w = saturate(r24.w + r30.w);
            r22.w = r24.w * r22.w;
            r24.w = dot(r31.xyz, r27.xyz);
            r24.w = saturate(r24.w + r31.w);
            r22.w = r24.w * r22.w;
            r24.w = dot(r32.xyz, r27.xyz);
            r24.w = saturate(r24.w + r32.w);
            r22.w = r24.w * r22.w;
            r24.w = dot(r33.xyz, r27.xyz);
            r24.w = saturate(r24.w + r33.w);
            r14.x = r24.w * r22.w;
            r22.w = (int)r25.x & 1;
            r25.zw = r22.ww ? r14.xy : r14.zx;
            r14.x = r25.x;
            r28.xy = r25.zw;
            r22.w = 1;
            while (true) {
              r24.w = cmp((int)r22.w >= (int)r18.w);
              if (r24.w != 0) break;
              r24.w = (int)r17.w + (int)r22.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r24.w, l(0), t16.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r24.w, l(16), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r24.w, l(32), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r24.w, l(48), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r24.w, l(64), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r24.w, l(80), t16.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
              r24.w = dot(r29.xyz, r27.xyz);
              r24.w = saturate(r24.w + r29.w);
              r24.w = r28.x * r24.w;
              r27.w = dot(r30.xyz, r27.xyz);
              r27.w = saturate(r27.w + r30.w);
              r24.w = r27.w * r24.w;
              r27.w = dot(r31.xyz, r27.xyz);
              r27.w = saturate(r27.w + r31.w);
              r24.w = r27.w * r24.w;
              r27.w = dot(r32.xyz, r27.xyz);
              r27.w = saturate(r27.w + r32.w);
              r24.w = r27.w * r24.w;
              r27.w = dot(r33.xyz, r27.xyz);
              r27.w = saturate(r27.w + r33.w);
              r24.w = r27.w * r24.w;
              r27.w = dot(r34.xyz, r27.xyz);
              r27.w = saturate(r27.w + r34.w);
              r28.x = r27.w * r24.w;
              r28.z = (uint)r14.x >> 2;
              if (1 == 0) r28.w = 0; else if (1+2 < 32) {               r28.w = (uint)r14.x << (32-(1 + 2)); r28.w = (uint)r28.w >> (32-1);              } else r28.w = (uint)r14.x >> 2;
              r29.x = (int)r28.z & 2;
              r29.y = max(r28.y, r28.x);
              r24.w = -r24.w * r27.w + 1;
              r24.w = r28.y * r24.w;
              r16.y = r29.x ? r24.w : r29.y;
              r28.xy = r28.ww ? r28.xy : r16.xy;
              r22.w = (int)r22.w + 1;
              r14.x = r28.z;
            }
            r14.x = saturate(r28.y + -r12.w);
            r16.y = r14.x * r25.y;
            r17.w = cmp(0 < r16.y);
            if (r17.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r15.w, l(16), t15.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r15.w, l(32), t15.yxwz
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r15.w, l(48), t15.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r15.w, l(64), t15.zwxy
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r15.w, l(80), t15.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r15.w, l(132), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r15.w, l(148), t15.zwxy
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r15.w, l(164), t15.zwxy
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r15.w, l(180), t15.zwxy
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r15.w, l(196), t15.xyzw
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xy, r15.w, l(212), t15.xyxx
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
              r23.w = r14.x * r25.y + r23.w;
              r14.x = r16.y * r26.z;
              r26.z = r34.z;
              r15.w = dot(r10.xyz, r26.xyz);
              r16.y = dot(r27.xyz, r26.xyz);
              r16.y = r16.y + -r34.w;
              r17.w = cmp(r16.y >= 0);
              r16.y = max(abs(r16.y), r7.z);
              r16.y = r17.w ? r16.y : -r16.y;
              r15.w = max(1.00000001e-07, -r15.w);
              r15.w = r16.y / r15.w;
              r15.w = min(131072, abs(r15.w));
              r34.z = r35.z;
              r16.y = dot(r10.xyz, r34.xyz);
              r17.w = dot(r27.xyz, r34.xyz);
              r17.w = r17.w + -r35.w;
              r18.w = cmp(r17.w >= 0);
              r17.w = max(abs(r17.w), r7.z);
              r17.w = r18.w ? r17.w : -r17.w;
              r16.y = max(1.00000001e-07, -r16.y);
              r16.y = r17.w / r16.y;
              r15.w = min(abs(r16.y), r15.w);
              r35.z = r36.z;
              r16.y = dot(r10.xyz, r35.xyz);
              r17.w = dot(r27.xyz, r35.xyz);
              r17.w = r17.w + -r36.w;
              r18.w = cmp(r17.w >= 0);
              r17.w = max(abs(r17.w), r7.z);
              r17.w = r18.w ? r17.w : -r17.w;
              r16.y = max(1.00000001e-07, -r16.y);
              r16.y = r17.w / r16.y;
              r15.w = min(abs(r16.y), r15.w);
              r36.z = r37.z;
              r16.y = dot(r10.xyz, r36.xyz);
              r17.w = dot(r27.xyz, r36.xyz);
              r17.w = r17.w + -r37.w;
              r18.w = cmp(r17.w >= 0);
              r17.w = max(abs(r17.w), r7.z);
              r17.w = r18.w ? r17.w : -r17.w;
              r16.y = max(1.00000001e-07, -r16.y);
              r16.y = r17.w / r16.y;
              r15.w = min(abs(r16.y), r15.w);
              r37.z = r38.x;
              r16.y = dot(r10.xyz, r37.xyz);
              r17.w = dot(r27.xyz, r37.xyz);
              r17.w = r17.w + -r38.y;
              r18.w = cmp(r17.w >= 0);
              r17.w = max(abs(r17.w), r7.z);
              r17.w = r18.w ? r17.w : -r17.w;
              r16.y = max(1.00000001e-07, -r16.y);
              r16.y = r17.w / r16.y;
              r15.w = min(abs(r16.y), r15.w);
              r39.zw = r38.zw;
              r16.y = dot(r10.zxy, r39.xzw);
              r17.w = dot(r27.zxy, r39.xzw);
              r17.w = r17.w + -r39.y;
              r18.w = cmp(r17.w >= 0);
              r17.w = max(abs(r17.w), r7.z);
              r17.w = r18.w ? r17.w : -r17.w;
              r16.y = max(1.00000001e-07, -r16.y);
              r16.y = r17.w / r16.y;
              r15.w = min(abs(r16.y), r15.w);
              r25.x = r31.w;
              r25.yz = r32.zw;
              r25.xyz = r25.xyz + r27.xyz;
              r25.xyz = r10.xyz * r15.www + r25.xyz;
              r16.y = dot(r25.xyz, r25.xyz);
              r16.y = sqrt(r16.y);
              r15.w = r15.w / r16.y;
              r15.w = r15.w + r15.w;
              r15.w = sqrt(r15.w);
              r15.w = r6.w * 5 + r15.w;
              r15.w = -0.844799995 + r15.w;
              r24.y = r29.z;
              r24.z = r30.x;
              r34.x = dot(r25.xyz, r24.xyz);
              r26.xy = r29.xw;
              r26.z = r30.w;
              r34.y = dot(r25.xyz, r26.xyz);
              r30.x = r29.y;
              r34.z = dot(r25.xyz, r30.xyz);
              if (9 == 0) r16.y = 0; else if (9+16 < 32) {               r16.y = (uint)r26.w << (32-(9 + 16)); r16.y = (uint)r16.y >> (32-9);              } else r16.y = (uint)r26.w >> 16;
              r34.w = (uint)r16.y;
              r25.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, r15.w).xyz;
              r29.x = dot(r27.xyz, r24.xyz);
              r29.y = dot(r27.xyz, r26.xyz);
              r29.z = dot(r27.xyz, r30.xyz);
              r27.xyz = saturate(r29.xyz * r31.xyz + float3(0.5,0.5,0.5));
              r32.z = r33.x;
              r27.xyz = r27.xyz * r32.xyz + r33.yzw;
              r34.x = dot(r1.xyz, r24.xyz);
              r34.y = dot(r1.xyz, r26.xyz);
              r34.z = dot(r1.xyz, r30.xyz);
              r24.xyz = cmp(float3(0,0,0) < r34.xyz);
              r15.z = r24.x ? 0 : 0.5;
              r26.xyz = r27.xyz + r15.xyz;
              r26.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
              r28.xzw = r34.xyz * r34.xyz;
              r28.xzw = r28.xzw * r14.xxx;
              r17.z = r24.y ? 0 : 0.5;
              r24.xyw = r27.xyz + r17.xyz;
              r24.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r24.xyw, 0).xyz;
              r24.xyw = r24.xyw * r28.zzz;
              r24.xyw = r26.xyz * r28.xxx + r24.xyw;
              r18.z = r24.z ? 0 : 0.5;
              r26.xyz = r27.xyz + r18.xyz;
              r26.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
              r24.xyz = r26.xyz * r28.www + r24.xyw;
              r26.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, 6).xyz;
              r27.xyz = r26.xyz * r24.xyz;
              r15.z = dot(r27.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r13.xyz = r24.xyz * r26.xyz + r13.xyz;
              r15.w = r15.z * r7.w;
              r24.xyz = r25.xyz * r14.xxx;
              r14.x = dot(r24.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r14.x = r7.w * r15.z + r14.x;
              r14.x = r15.w / r14.x;
              r23.xyz = r24.xyz * r14.xxx + r23.xyz;
            }
          }
        }
      }
      r21.xyzw = r23.xyzw;
      r22.xyz = r13.xyz;
      r9.w = (int)r9.w + 32;
    }
    r20.xyzw = r21.zxyw;
    r19.xyz = r22.xyz;
    r20.xyzw = r20.yzxw;
  } else {
    r20.x = r19.w;
  }
  r6.w = max(1, r20.w);
  r6.w = rcp(r6.w);
  r20.w = saturate(r20.w);
  r12.xyz = r19.xyz * r6.www;
  r13.xyz = r20.xyz * r6.www;
  r7.z = cmp(r20.w < 0.99000001);
  if (r7.z != 0) {
    r7.z = 1 + -r20.w;
    r7.w = sunConstants.globalProbeExposure * r7.z;
    r14.xyz = -globalProbeConstants.data[0].xyz + v7.xyz;
    r15.x = globalProbeConstants.data[0].w * r14.x;
    r15.yz = globalProbeConstants.data[1].xy * r14.yz;
    r14.xyz = saturate(float3(0.5,0.5,0.5) + r15.xyz);
    r15.xy = globalProbeConstants.data[1].zw * r14.xy;
    r15.z = globalProbeConstants.data[2].x * r14.z;
    r14.xyz = globalProbeConstants.data[2].yzw + r15.xyz;
    r15.xyz = cmp(float3(0,0,0) < r1.xyz);
    r15.xyz = r15.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r15.w = 0;
    r17.xyz = r15.wwx + r14.xyz;
    r17.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r17.xyz, 0).xyz;
    r18.xyz = r1.xyz * r1.xyz;
    r18.xyz = r18.xyz * r7.www;
    r20.xyz = r15.wwy + r14.xyz;
    r20.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r20.xyz, 0).xyz;
    r20.xyz = r20.xyz * r18.yyy;
    r17.xyz = r17.xyz * r18.xxx + r20.xyz;
    r14.xyz = r15.wwz + r14.xyz;
    r14.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r14.xyz, 0).xyz;
    r14.xyz = r14.xyz * r18.zzz + r17.xyz;
    r1.w = 0;
    r15.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r1.xyzw, 6).xyz;
    r14.xyz = r15.xyz * r14.xyz;
    r1.w = dot(r14.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r12.xyz = r19.xyz * r6.www + r14.xyz;
    r10.w = 0;
    r14.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r10.xyzw, r7.y).xyz;
    r6.w = sunConstants.globalProbeExposure * r7.z + -r1.w;
    r1.w = r5.y * r6.w + r1.w;
    r13.xyz = r14.xyz * r1.www + r13.xyz;
  }
  r1.w = r5.x + r0.w;
  r1.w = log2(abs(r1.w));
  r1.w = r6.z * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r1.w + r0.w;
  r1.w = saturate(-1 + r1.w);
  r12.xyz = r12.yzx * r0.www;
  r7.zw = r5.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r7.zw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r7.zw, 0).xy;
  r13.xyz = r13.xyz * r1.www;
  r14.xyz = r13.xyz * r7.zzz;
  r13.xyz = r13.xyz * r7.www;
  r0.w = sqrt(r6.z);
  r0.w = r0.w * 0.5 + 0.5;
  r0.w = r0.w * r0.w;
  r1.w = 0.5 * r0.w;
  r0.w = -r0.w * 0.5 + 1;
  r6.w = r5.x * r0.w + r1.w;
  r0.w = r6.w * r0.w;
  r1.w = r6.w * r1.w;
  r6.w = dot(r1.xyz, sunConstants.wldDir.xyz);
  r9.z = cmp(0 >= abs(r6.w));
  if (r9.z != 0) {
    r9.w = 0;
  }
  if (r9.z == 0) {
    r15.xyz = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v7.yyy;
    r15.xyz = v7.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r15.xyz;
    r15.xyz = v7.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r15.xyz;
    r15.xyz = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r15.xyz;
    r10.w = -sunConstants.splitDepthOffset + r15.z;
    r10.w = -r10.w * 6.10351563e-05 + 1;
    r11.w = saturate(r10.w);
    r11.w = cmp(r10.w == r11.w);
    if (r11.w != 0) {
      r11.w = 0;
      r14.w = 0;
      while (true) {
        r15.w = cmp(r11.w >= 3);
        if (r15.w != 0) break;
        r15.w = (uint)r11.w;
        r16.xy = -sunConstants.splitPinTransform[r15.w].xy + r15.xy;
        r16.x = max(abs(r16.x), abs(r16.y));
        r14.w = sunConstants.splitPinTransform[r15.w].z * r16.x;
        r15.w = cmp(r14.w < 1);
        if (r15.w != 0) {
          break;
        }
        r11.w = 1 + r11.w;
        r14.w = 0;
      }
    } else {
      r11.w = 3;
      r14.w = 0;
    }
    r15.w = cmp(r11.w >= 3);
    if (r15.w != 0) {
      r17.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r18.xz = rcp(r17.xx);
      r18.y = -r18.z;
      r17.xyz = r15.xyx * r18.xyz + r17.yzy;
      r18.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r17.xyz = max(float3(0,0,0), r17.xyz);
      r17.xyz = min(r17.xyz, r18.xyz);
      r16.xy = sunConstants.sstLightingConstants.coordScale * r17.zy;
      r16.xy = floor(r16.xy);
      r16.y = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r16.y;
      r16.x = r16.y * sunConstants.sstLightingConstants.coordScale + r16.x;
      r16.x = (uint)r16.x;
      r16.x = (int)r16.x + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.y, r16.x, l(0), t23.xxxx
    r16.y = samp0[]..swiz;
      r17.w = (int)r16.y & 0x40000000;
      r18.x = (uint)r16.y << 2;
      if (r17.w == 0) {
        r17.w = (int)r16.y & 0x01ffffff;
        r19.x = (int)r16.x + (int)r17.w;
        r16.x = (uint)r16.y >> 25;
        r16.x = (uint)r16.x;
        r17.xyz = r17.xyz * r16.xxx;
        r17.xyz = frac(r17.xyz);
        r17.xyz = float3(128,128,128) * r17.xyz;
        r17.xyz = (uint3)r17.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
      r19.z = samp0[]..swiz;
        r16.xy = (uint2)r17.zy >> int2(6,6);
        r17.w = (int)r19.z & 0xc0000000;
        r18.y = (int)r19.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.y, r18.y, l(0), t23.xxxx
      r18.y = samp0[]..swiz;
        r16.y = r16.y ? r19.z : r18.y;
        r18.y = (uint)r16.y >> 13;
        r16.x = r16.x ? r18.y : r16.y;
        r16.x = (int)r16.x & 8191;
        r20.x = (int)r16.x + (int)r19.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.z, r20.x, l(0), t23.xxxx
      r20.z = samp0[]..swiz;
        r19.y = 0;
        r20.y = 1;
        r18.yzw = r17.www ? r19.xyz : r20.xyz;
        r20.yz = r17.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r16.xy = (uint2)r17.zy >> (uint2)r20.yy;
        r16.xy = (int2)r16.xy & int2(1,1);
        r19.w = (int)r18.w & 0xc0000000;
        r20.y = (int)r18.y + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.y, r20.y, l(0), t23.xxxx
      r20.y = samp0[]..swiz;
        r16.y = r16.y ? r18.w : r20.y;
        r20.y = (uint)r16.y >> 13;
        r16.x = r16.x ? r20.y : r16.y;
        r16.x = (int)r16.x & 8191;
        r20.x = (int)r16.x + (int)r18.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.w, r20.x, l(0), t23.xxxx
      r20.w = samp0[]..swiz;
        r18.yzw = r19.www ? r18.yzw : r20.xzw;
        r18.yzw = r17.www ? r19.xyz : r18.yzw;
        r16.x = (int)r18.w & 0xc0000000;
        if (r16.x == 0) {
          r16.x = (int)-r18.z + 6;
          r16.xy = (uint2)r17.zy >> (uint2)r16.xx;
          r17.w = (int)r18.w | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r16.y = (((uint)r16.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r16.x = (((uint)r16.x << 0) & bitmask.x) | ((uint)r16.y & ~bitmask.x);
          r16.x = (int)r16.x * 10;
          r16.x = (uint)r17.w >> (uint)r16.x;
          r16.x = (int)r16.x & 1023;
          r19.x = (int)r16.x + (int)r18.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.w, r19.x, l(0), t23.xxxx
        r19.w = samp0[]..swiz;
          r19.yz = (int2)r18.zz + int2(1,2);
          r16.x = (int)-r19.y + 6;
          r16.xy = (uint2)r17.zy >> (uint2)r16.xx;
          r17.w = (int)r19.w & 0xc0000000;
          r18.z = (int)r19.w | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r16.y = (((uint)r16.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r16.x = (((uint)r16.x << 0) & bitmask.x) | ((uint)r16.y & ~bitmask.x);
          r16.x = (int)r16.x * 10;
          r16.x = (uint)r18.z >> (uint)r16.x;
          r16.x = (int)r16.x & 1023;
          r20.x = (int)r16.x + (int)r19.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.z, r20.x, l(0), t23.xxxx
        r20.z = samp0[]..swiz;
          r20.y = r19.z;
          r20.xyz = r17.www ? r19.xyw : r20.xyz;
          r16.x = (int)-r20.y + 6;
          r16.xy = (uint2)r17.zy >> (uint2)r16.xx;
          r18.z = (int)r20.z & 0xc0000000;
          r19.y = (int)r20.z | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r16.y = (((uint)r16.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r16.x = (((uint)r16.x << 0) & bitmask.x) | ((uint)r16.y & ~bitmask.x);
          r16.x = (int)r16.x * 10;
          r16.x = (uint)r19.y >> (uint)r16.x;
          r16.x = (int)r16.x & 1023;
          r16.x = (int)r16.x + (int)r20.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.y, r16.x, l(0), t23.xxxx
        r16.y = samp0[]..swiz;
          r16.xy = r18.zz ? r20.xz : r16.xy;
          r18.yw = r17.ww ? r19.xw : r16.xy;
        }
        r16.x = (int)r18.w & 0xc0000000;
        if (r16.x == 0) {
          if (14 == 0) r16.y = 0; else if (14+15 < 32) {           r16.y = (uint)r18.w << (32-(14 + 15)); r16.y = (uint)r16.y >> (32-14);          } else r16.y = (uint)r18.w >> 15;
          r16.y = (uint)r16.y;
          r16.y = sunConstants.sstLightingConstants.constants.spanInInches * r16.y;
          r16.y = 6.10388815e-05 * r16.y;
          r19.xy = (int2)r18.ww & int2(32767,536870912);
          r17.w = (uint)r19.x;
          r17.w = sunConstants.sstLightingConstants.constants.spanInInches * r17.w;
          r17.w = 3.05185094e-05 * r17.w;
          r18.z = (int)r17.y & 3;
          r18.z = (int)r18.z + (int)r18.y;
          r18.z = (int)r18.z + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.z, l(0), t23.xxxx
        r18.z = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r19.x = (((uint)r17.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.z = ((~(-1 << 2)) << 1) & 0xffffffff;  r19.z = (((uint)r17.y << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.w = ((~(-1 << 1)) << 4) & 0xffffffff;  r19.w = (((uint)r17.z << 4) & bitmask.w) | ((uint)0 & ~bitmask.w);
          r17.x = (uint)r18.z >> (uint)r19.x;
          r17.x = (int)r17.x & 255;
          r17.x = (uint)r17.x;
          r17.x = r17.x * r17.w;
          r17.x = r17.x * 0.00392156886 + r16.y;
          r17.y = (int)r19.z + 1;
          if (1 == 0) r17.z = 0; else if (1+1 < 32) {           r17.z = (uint)r17.z << (32-(1 + 1)); r17.z = (uint)r17.z >> (32-1);          } else r17.z = (uint)r17.z >> 1;
          r17.y = (int)r17.z + (int)r17.y;
          r17.y = (int)r17.y + (int)r18.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.y, r17.y, l(0), t23.xxxx
        r17.y = samp0[]..swiz;
          r17.y = (uint)r17.y >> (uint)r19.w;
          r17.y = (int)r17.y & 0x0000ffff;
          r17.y = (uint)r17.y;
          r17.y = r17.y * r17.w;
          r16.y = r17.y * 1.52590219e-05 + r16.y;
          r18.x = r19.y ? r17.x : r16.y;
        } else {
          r16.y = (int)r18.w & 0x80000000;
          r17.x = (int)r18.y + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.x, r17.x, l(0), t23.xxxx
        r17.x = samp0[]..swiz;
          r16.y = r16.y ? r17.x : 0;
          r17.x = (uint)r18.w << 2;
          r17.y = (uint)r16.y >> 16;
          r17.y = f16tof32(r17.y);
          r16.y = (int)r16.y & 0x0000ffff;
          r16.y = f16tof32(r16.y);
          r17.x = r15.x * r17.y + r17.x;
          r16.y = r15.y * r16.y + r17.x;
          r18.x = r16.x ? r16.y : r18.x;
        }
      }
      r15.z = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r15.z;
      r15.z = cmp(r18.x < r15.z);
      r9.w = r15.z ? 0 : 1;
    }
    if (r15.w == 0) {
      if (enableDitheredShadow == 0) {
        r15.z = (uint)r11.w;
        r16.xy = -sunConstants.splitPinTransform[r15.z].xy + r15.xy;
        r15.zw = sunConstants.splitPinTransform[r15.z].zz * r16.xy;
        r17.xy = r15.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r15.z = (int16)sunConstants.splitArrayOffset;
        r17.z = r15.z + r11.w;
        r15.z = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r10.w).x;
        r15.w = gTransShadowmapArray.SampleLevel(samp0_s, r17.xyz, 0).x;
        r15.z = r15.z + r15.w;
        r15.z = saturate(-1 + r15.z);
        r15.w = r15.z * r15.z;
        r9.w = r15.w * r15.z;
      }
      if (enableDitheredShadow != 0) {
        r17.x = -r7.x;
        r15.z = (uint)r11.w;
        r11.w = 1 + r11.w;
        r11.w = min(2, r11.w);
        r11.w = (uint)r11.w;
        r14.w = 1 + -r14.w;
        r14.w = 28 * r14.w;
        r14.w = (uint)r14.w;
        r16.xy = -sunConstants.splitPinTransform[r15.z].xy + r15.xy;
        r16.xy = sunConstants.splitPinTransform[r15.z].zz * r16.xy;
        r16.xy = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r15.xy = -sunConstants.splitPinTransform[r11.w].xy + r15.xy;
        r15.xy = sunConstants.splitPinTransform[r11.w].zz * r15.xy;
        r15.xy = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r17.y = r8.x;
        r17.z = r7.x;
        r15.w = 0;
        r17.w = 0;
        while (true) {
          r18.x = cmp((uint)r17.w >= 8);
          if (r18.x != 0) break;
          r18.x = cmp((uint)r14.w < (uint)r17.w);
          r18.yz = r18.xx ? r15.xy : r16.xy;
          r18.w = r18.x ? sunConstants.splitPinTransform[r11.w].w : sunConstants.splitPinTransform[r15.z].w;
          r18.x = r18.x ? r11.w : r15.z;
          r19.x = dot(icb[r17.w+0].yx, r17.xy);
          r19.y = dot(icb[r17.w+0].yx, r17.yz);
          r19.xy = r19.xy * r18.ww + r18.yz;
          r18.x = (int)r18.x + (int16)sunConstants.splitArrayOffset;
          r19.z = (uint)r18.x;
          r18.x = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r10.w).x;
          r18.y = gTransShadowmapArray.SampleLevel(samp0_s, r19.xyz, 0).x;
          r18.x = r18.x + r18.y;
          r18.x = saturate(-1 + r18.x);
          r15.w = r18.x * 0.125 + r15.w;
          r17.w = (int)r17.w + 1;
        }
        r10.w = r15.w * r15.w;
        r9.w = r10.w * r15.w;
      }
    }
  }
  r10.w = cmp(0 < abs(r6.w));
  if (r10.w != 0) {
    r11.w = cmp(0 < r9.w);
    if (r11.w != 0) {
      r11.w = sunConstants.specScale * r6.y;
      r11.w = 0.25 * r11.w;
      if (sunConstants.sunCookieIndex != 0) {
        r15.xyz = eyeOffset.xyz + v7.xyz;
        r15.w = 1;
        r14.w = dot(sunConstants.sunCookieTransform[0].xyzw, r15.xyzw);
        r15.x = dot(sunConstants.sunCookieTransform[1].xyzw, r15.xyzw);
        r17.x = frac(r14.w);
        r17.y = frac(r15.x);
        r14.w = -1 + (int14)sunConstants.sunCookieIndex;
        r17.z = (uint)r14.w;
        r15.xyz = gCookieArray.SampleLevel(samplerLinear_s, r17.xyz, 0).xyz;
        r15.xyz = float3(-1,-1,-1) + r15.xyz;
        r15.xyz = sunConstants.sunCookieIntensity * r15.xyz + float3(1,1,1);
        r15.xyz = sunConstants.color.xyz * r15.xyz;
      } else {
        r15.xyz = sunConstants.color.xyz;
      }
      r14.w = viewmodelSunShadowRaw >> 16;
      r15.w = cmp(0 < (uint)r14.w);
      r15.w = r5.z ? r15.w : 0;
      if (r15.w != 0) {
        r14.w = (int)r14.w + numLights;
        r14.w = (int)r14.w + -1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.w, r14.w, l(52), t12.xxxx
      r15.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r14.w, l(68), t12.xyzw
      r17.x = samp0[]..swiz;
      r17.y = samp0[]..swiz;
      r17.z = samp0[]..swiz;
      r17.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r14.w, l(84), t12.xyzw
      r18.x = samp0[]..swiz;
      r18.y = samp0[]..swiz;
      r18.z = samp0[]..swiz;
      r18.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.xyzw, r14.w, l(132), t12.xyzw
      r19.x = samp0[]..swiz;
      r19.y = samp0[]..swiz;
      r19.z = samp0[]..swiz;
      r19.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.xyzw, r14.w, l(148), t12.xyzw
      r20.x = samp0[]..swiz;
      r20.y = samp0[]..swiz;
      r20.z = samp0[]..swiz;
      r20.w = samp0[]..swiz;
        r16.x = abs(r6.w) * -0.200000003 + 0.400000006;
        r16.y = cmp(r6.w < 0);
        r16.x = r16.y ? -r16.x : r16.x;
        r21.xyz = r1.xyz * r16.xxx + v7.xyz;
        r21.w = 1;
        r16.x = dot(r17.xyzw, r21.xyzw);
        r16.y = dot(r18.xyzw, r21.xyzw);
        r16.xy = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r16.xy = r16.xy + r20.zw;
        r16.xy = r16.xy * r20.xy;
        r17.xy = r15.ww / r19.xz;
        r17.zw = float2(1,1) + -r17.xy;
        r17.zw = cmp(r16.xy >= r17.zw);
        r17.xy = cmp(r17.xy >= r16.xy);
        r17.xy = (int2)r17.xy | (int2)r17.zw;
        r17.x = (int)r17.y | (int)r17.x;
        if (r17.x == 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.x, r14.w, l(28), t12.xxxx
        r17.x = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r14.w, l(100), t12.xyzw
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
        r18.z = samp0[]..swiz;
        r18.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.yz, r14.w, l(164), t12.xxyx
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
          r14.w = dot(r18.xyzw, r21.xyzw);
          r16.xy = saturate(r16.xy);
          r18.xy = r16.xy * r19.xz + r19.yw;
          r14.w = r14.w + r17.y;
          r14.w = r14.w / r17.z;
          r14.w = max(6.10351563e-05, r14.w);
          r16.x = r17.x ? 0.000000 : 0;
          if (enableDitheredShadow != 0) {
            r17.x = -r7.x;
            r19.z = (uint)r16.x;
            r17.y = r8.x;
            r17.z = r7.x;
            r16.y = 0;
            r17.w = 0;
            while (true) {
              r18.w = cmp((int)r17.w >= 8);
              if (r18.w != 0) break;
              r20.x = dot(icb[r17.w+0].yx, r17.xy);
              r20.y = dot(icb[r17.w+0].yx, r17.yz);
              r19.xy = r20.xy * r15.ww + r18.xy;
              r18.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r14.w).x;
              r16.y = r18.w * 0.125 + r16.y;
              r17.w = (int)r17.w + 1;
            }
          } else {
            r18.z = (uint)r16.x;
            r16.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r14.w).x;
          }
          r14.w = r16.y * r16.y;
          r14.w = r14.w * r16.y;
        } else {
          r14.w = 1;
        }
        r9.w = r14.w * r9.w;
      } else {
        r14.w = viewmodelSunShadowRaw & 0x0000ffff;
        r15.w = cmp(0 < (uint)r14.w);
        r16.x = ~(int)r5.z;
        r15.w = r15.w ? r16.x : 0;
        if (r15.w != 0) {
          r14.w = (int)r14.w + numLights;
          r14.w = (int)r14.w + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.w, r14.w, l(52), t12.xxxx
        r15.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r14.w, l(68), t12.xyzw
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r14.w, l(84), t12.xyzw
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
        r18.z = samp0[]..swiz;
        r18.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.xyzw, r14.w, l(132), t12.xyzw
        r19.x = samp0[]..swiz;
        r19.y = samp0[]..swiz;
        r19.z = samp0[]..swiz;
        r19.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.xyzw, r14.w, l(148), t12.xyzw
        r20.x = samp0[]..swiz;
        r20.y = samp0[]..swiz;
        r20.z = samp0[]..swiz;
        r20.w = samp0[]..swiz;
          r16.x = abs(r6.w) * -0.200000003 + 0.400000006;
          r16.y = cmp(r6.w < 0);
          r16.x = r16.y ? -r16.x : r16.x;
          r21.xyz = r1.xyz * r16.xxx + v7.xyz;
          r21.w = 1;
          r16.x = dot(r17.xyzw, r21.xyzw);
          r16.y = dot(r18.xyzw, r21.xyzw);
          r16.xy = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r16.xy = r16.xy + r20.zw;
          r16.xy = r16.xy * r20.xy;
          r17.xy = r15.ww / r19.xz;
          r17.zw = float2(1,1) + -r17.xy;
          r17.zw = cmp(r16.xy >= r17.zw);
          r17.xy = cmp(r17.xy >= r16.xy);
          r17.xy = (int2)r17.xy | (int2)r17.zw;
          r17.x = (int)r17.y | (int)r17.x;
          if (r17.x == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.x, r14.w, l(28), t12.xxxx
          r17.x = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r14.w, l(100), t12.xyzw
          r18.x = samp0[]..swiz;
          r18.y = samp0[]..swiz;
          r18.z = samp0[]..swiz;
          r18.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.yz, r14.w, l(164), t12.xxyx
          r17.y = samp0[]..swiz;
          r17.z = samp0[]..swiz;
            r14.w = dot(r18.xyzw, r21.xyzw);
            r16.xy = saturate(r16.xy);
            r18.xy = r16.xy * r19.xz + r19.yw;
            r14.w = r14.w + r17.y;
            r14.w = r14.w / r17.z;
            r14.w = max(6.10351563e-05, r14.w);
            r16.x = r17.x ? 0.000000 : 0;
            if (enableDitheredShadow != 0) {
              r17.x = -r7.x;
              r19.z = (uint)r16.x;
              r17.y = r8.x;
              r17.z = r7.x;
              r16.y = 0;
              r17.w = 0;
              while (true) {
                r18.w = cmp((int)r17.w >= 8);
                if (r18.w != 0) break;
                r20.x = dot(icb[r17.w+0].yx, r17.xy);
                r20.y = dot(icb[r17.w+0].yx, r17.yz);
                r19.xy = r20.xy * r15.ww + r18.xy;
                r18.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r14.w).x;
                r16.y = r18.w * 0.125 + r16.y;
                r17.w = (int)r17.w + 1;
              }
            } else {
              r18.z = (uint)r16.x;
              r16.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r14.w).x;
            }
            r14.w = r16.y * r16.y;
            r14.w = r14.w * r16.y;
          } else {
            r14.w = 1;
          }
          r9.w = r14.w * r9.w;
        }
      }
      r14.w = -r5.x * 0.5 + 1;
      r14.w = -abs(r6.w) * r14.w + 1;
      r14.w = r14.w * r14.w;
      r14.w = -r14.w * 0.620000005 + 0.620000005;
      r14.w = r14.w + -abs(r6.w);
      r14.w = r6.z * r14.w + abs(r6.w);
      r14.w = r14.w * r9.w;
      r15.w = cmp(0 < r6.w);
      r17.xyz = r14.www * r15.yzx + r12.xyz;
      r14.w = saturate(r6.w);
      r18.xyz = -v7.xyz * r4.xxx + sunConstants.wldDir.xyz;
      r4.x = dot(r18.xyz, r18.xyz);
      r4.x = rsqrt(r4.x);
      r18.xyz = r18.xyz * r4.xxx;
      r4.x = dot(r18.xyz, r4.yzw);
      r16.x = dot(r1.xyz, r18.xyz);
      r16.y = abs(r16.x) * r6.y + -abs(r16.x);
      r16.x = abs(r16.x) * r16.y + 1;
      r16.y = r14.w * r0.w + r1.w;
      r16.x = r16.x * r16.x;
      r16.x = r16.x * r16.y;
      r16.x = rcp(r16.x);
      r11.w = r14.w * r11.w;
      r11.w = r16.x * r11.w;
      r9.w = r11.w * r9.w;
      r18.yzw = r9.www * r15.xyz + r13.xyz;
      r4.x = saturate(1 + -r4.x);
      r11.w = r4.x * r4.x;
      r11.w = r11.w * r11.w;
      r4.x = r11.w * r4.x;
      r4.x = r9.w * r4.x;
      r15.xyz = r4.xxx * r15.xyz + r14.xyz;
      r17.w = r12.z;
      r12.w = r17.z;
      r19.xyzw = r15.wwww ? r17.zxyw : r12.zxyw;
      r12.zw = r15.xy;
      r17.zw = r14.xy;
      r17.xyzw = r15.wwww ? r12.xyzw : r17.xyzw;
      r18.x = r15.z;
      r13.w = r14.z;
      r13.xyzw = r15.wwww ? r18.yzwx : r13.xyzw;
      r12.z = r19.w;
      r12.xy = r17.xy;
      r14.xy = r17.zw;
      r14.z = r13.w;
    } else {
      r19.xyz = r12.zxy;
    }
  } else {
    r19.xyz = r12.zxy;
  }
  r15.x = -r7.x;
  r4.x = ~(int)r5.z;
  r5.x = -r5.x * 0.5 + 1;
  r17.xy = float2(0,0);
  r18.w = 0;
  r20.xyz = v7.xyz;
  r20.w = 1;
  r21.w = 1;
  r15.z = r7.x;
  r22.w = 1;
  r23.z = 1;
  r24.w = 1;
  r15.yw = r8.xx;
  r25.z = r7.x;
  r25.x = r15.w;
  r26.w = 1;
  r8.y = r15.x;
  r8.z = r25.z;
  r27.w = 1;
  r28.x = r8.x;
  r28.y = r15.x;
  r28.z = r25.z;
  r29.x = r8.x;
  r29.y = r15.x;
  r29.z = r25.z;
  r30.x = r8.x;
  r30.y = r15.x;
  r30.z = r25.z;
  r31.xyz = r19.xyz;
  r32.xyz = r12.zxy;
  r33.xyz = r14.xyz;
  r34.xyz = r13.xyz;
  r7.x = enableDitheredShadow;
  r9.w = 0;
  while (true) {
    r11.w = cmp((uint)r9.w >= numLights);
    if (r11.w != 0) break;
    r17.z = (uint)r9.w >> 5;
    r18.xyz = (int3)r11.xyz + (int3)r17.xyz;
    r11.w = visibleLights.Load(r18.xyzw).x;
    r18.xyz = r31.xyz;
    r35.xyz = r32.xyz;
    r36.xyz = r33.xyz;
    r37.xyz = r34.xyz;
    r12.w = r7.x;
    r13.w = r11.w;
    while (true) {
      if (r13.w == 0) break;
      r14.w = firstbitlow((uint)r13.w);
      r16.x = 1 << (int)r14.w;
      r16.y = (int)r13.w & (int)r16.x;
      if (r16.y != 0) {
        r13.w = (int)r13.w ^ (int)r16.x;
        r14.w = (int)r9.w + (int)r14.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r38.xyzw, r14.w, l(0), t11.xyzw
      r38.x = samp0[]..swiz;
      r38.y = samp0[]..swiz;
      r38.z = samp0[]..swiz;
      r38.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r39.xy, r14.w, l(16), t11.xyxx
      r39.x = samp0[]..swiz;
      r39.y = samp0[]..swiz;
        r38.xyz = -v7.xyz + r38.xyz;
        r39.z = r38.w;
        r38.xyz = cmp(abs(r38.xyz) < r39.zxy);
        r16.x = r38.y ? r38.x : 0;
        r16.x = r38.z ? r16.x : 0;
        if (r16.x != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r14.w, l(0), t12.wxyz
        r38.x = samp0[]..swiz;
        r38.y = samp0[]..swiz;
        r38.z = samp0[]..swiz;
        r38.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r14.w, l(16), t12.zxyw
        r39.x = samp0[]..swiz;
        r39.y = samp0[]..swiz;
        r39.z = samp0[]..swiz;
        r39.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r14.w, l(32), t12.xyzw
        r40.x = samp0[]..swiz;
        r40.y = samp0[]..swiz;
        r40.z = samp0[]..swiz;
        r40.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r14.w, l(48), t12.xyzw
        r41.x = samp0[]..swiz;
        r41.y = samp0[]..swiz;
        r41.z = samp0[]..swiz;
        r41.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r14.w, l(64), t12.yzwx
        r42.x = samp0[]..swiz;
        r42.y = samp0[]..swiz;
        r42.z = samp0[]..swiz;
        r42.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r14.w, l(80), t12.xyzw
        r43.x = samp0[]..swiz;
        r43.y = samp0[]..swiz;
        r43.z = samp0[]..swiz;
        r43.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r14.w, l(96), t12.yzwx
        r44.x = samp0[]..swiz;
        r44.y = samp0[]..swiz;
        r44.z = samp0[]..swiz;
        r44.w = samp0[]..swiz;
          if (3 == 0) r16.x = 0; else if (3+24 < 32) {           r16.x = (uint)r39.w << (32-(3 + 24)); r16.x = (uint)r16.x >> (32-3);          } else r16.x = (uint)r39.w >> 24;
          switch (r16.x) {
            case 4 :            r16.x = cmp(0 < r44.x);
            r45.xy = r43.zw;
            r45.z = r44.w;
            r46.xyz = -r45.xyz * float3(0.5,0.5,0.5) + r38.yzw;
            r47.xyz = -v7.xyz + r46.xyz;
            r16.y = dot(r45.xyz, r47.xyz);
            r17.z = saturate(-r16.y / r44.x);
            r48.xyz = r17.zzz * r45.xyz + r46.xyz;
            r48.xyz = r16.xxx ? r48.xyz : r38.yzw;
            r48.xyz = -v7.xyz + r48.xyz;
            r17.w = dot(r48.xyz, r48.xyz);
            r19.w = rsqrt(r17.w);
            r48.xyz = r48.xyz * r19.www;
            r19.w = dot(r1.xyz, r48.xyz);
            r23.w = cmp(0 < abs(r19.w));
            if (r23.w != 0) {
              r23.w = sqrt(r17.w);
              r25.w = r41.x * r41.x;
              r17.w = r25.w / r17.w;
              r17.w = min(1, r17.w);
              r48.xy = saturate(r23.ww * r40.xz + r40.yw);
              r48.zw = r48.xy * r48.xy;
              r48.xy = r48.xy * float2(-2,-2) + float2(3,3);
              r48.xy = r48.zw * r48.xy;
              r17.w = r48.x * r17.w;
              r17.w = r17.w * r48.y;
              r23.w = cmp(0 < r17.w);
              if (r23.w != 0) {
                if (3 == 0) r23.w = 0; else if (3+27 < 32) {                 r23.w = (uint)r39.w << (32-(3 + 27)); r23.w = (uint)r23.w >> (32-3);                } else r23.w = (uint)r39.w >> 27;
                r23.w = cmp((int)r23.w != 1);
                if (r23.w != 0) {
                  r23.w = abs(r19.w) * -0.200000003 + 0.400000006;
                  r25.w = cmp(r19.w < 0);
                  r23.w = r25.w ? -r23.w : r23.w;
                  r48.xyz = r1.xyz * r23.www + v7.xyz;
                  r48.xyz = r48.xyz + -r42.xyz;
                  r23.w = max(abs(r48.y), abs(r48.z));
                  r23.w = max(abs(r48.x), r23.w);
                  r23.w = r43.x / r23.w;
                  r23.w = r23.w + r43.y;
                  r25.w = dot(r48.xyz, r48.xyz);
                  r25.w = rsqrt(r25.w);
                  r23.w = max(6.10351563e-05, r23.w);
                  r28.w = (int)r39.w & 0x0000ffff;
                  r49.w = (uint)r28.w;
                  r28.w = 0;
                  r29.w = 0;
                  while (true) {
                    r30.w = cmp((int)r29.w >= 8);
                    if (r30.w != 0) break;
                    r50.y = dot(icb[r29.w+0].yx, r15.xy);
                    r50.z = dot(icb[r29.w+0].yx, r15.yz);
                    r50.yz = r50.yz * r41.yy;
                    r50.x = r50.y * r9.x;
                    r50.w = r50.y * r6.x;
                    r49.xyz = r48.xyz * r25.www + r50.xzw;
                    r30.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r49.xyzw, r23.w).x;
                    r28.w = r30.w * 0.125 + r28.w;
                    r29.w = (int)r29.w + 1;
                  }
                } else {
                  r28.w = 1;
                }
                r17.w = r28.w * r17.w;
                r23.w = cmp(0 < r17.w);
                if (r23.w != 0) {
                  r23.w = r39.x * r6.y;
                  r23.w = 0.25 * r23.w;
                  r25.w = dot(r45.xyz, r10.xyz);
                  r29.w = dot(r10.xyz, r47.xyz);
                  r30.w = -r25.w * r25.w + r44.x;
                  r16.y = r25.w * r29.w + -r16.y;
                  r16.y = saturate(r16.y / r30.w);
                  r25.w = r30.w / r44.x;
                  r25.w = 10 * r25.w;
                  r25.w = min(1, r25.w);
                  r16.y = r16.y + -r17.z;
                  r16.y = r25.w * r16.y + r17.z;
                  r45.xyz = r16.yyy * r45.xyz + r46.xyz;
                  r45.xyz = r16.xxx ? r45.xyz : r38.yzw;
                  r45.xyz = -v7.xyz + r45.xyz;
                  r16.x = dot(r45.xyz, r45.xyz);
                  r16.x = rsqrt(r16.x);
                  r46.xyz = r45.xyz * r16.xxx;
                  if (4 == 0) r16.y = 0; else if (4+16 < 32) {                   r16.y = (uint)r39.w << (32-(4 + 16)); r16.y = (uint)r16.y >> (32-4);                  } else r16.y = (uint)r39.w >> 16;
                  r17.z = cmp(0 < (uint)r16.y);
                  r17.z = r5.z ? r17.z : 0;
                  if (r17.z != 0) {
                    r16.y = (int)r16.y + numLights;
                    r16.y = (int)r16.y + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.z, r16.y, l(52), t12.xxxx
                  r17.z = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r47.xyzw, r16.y, l(100), t12.xyzw
                  r47.x = samp0[]..swiz;
                  r47.y = samp0[]..swiz;
                  r47.z = samp0[]..swiz;
                  r47.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r48.xyzw, r16.y, l(116), t12.xyzw
                  r48.x = samp0[]..swiz;
                  r48.y = samp0[]..swiz;
                  r48.z = samp0[]..swiz;
                  r48.w = samp0[]..swiz;
                    r25.w = abs(r19.w) * -0.200000003 + 0.400000006;
                    r29.w = cmp(r19.w < 0);
                    r25.w = r29.w ? -r25.w : r25.w;
                    r21.xyz = r1.xyz * r25.www + v7.xyz;
                    r25.w = dot(r47.xyzw, r21.xyzw);
                    r29.w = dot(r48.xyzw, r21.xyzw);
                    r30.w = cmp(r29.w < r25.w);
                    if (r30.w == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r47.xyzw, r16.y, l(68), t12.xyzw
                    r47.x = samp0[]..swiz;
                    r47.y = samp0[]..swiz;
                    r47.z = samp0[]..swiz;
                    r47.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r48.xyzw, r16.y, l(84), t12.xyzw
                    r48.x = samp0[]..swiz;
                    r48.y = samp0[]..swiz;
                    r48.z = samp0[]..swiz;
                    r48.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r49.xyzw, r16.y, l(132), t12.xyzw
                    r49.x = samp0[]..swiz;
                    r49.y = samp0[]..swiz;
                    r49.z = samp0[]..swiz;
                    r49.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r50.xyzw, r16.y, l(148), t12.xyzw
                    r50.x = samp0[]..swiz;
                    r50.y = samp0[]..swiz;
                    r50.z = samp0[]..swiz;
                    r50.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r51.xy, r16.y, l(164), t12.xyxx
                    r51.x = samp0[]..swiz;
                    r51.y = samp0[]..swiz;
                      r47.x = dot(r47.xyzw, r21.xyzw);
                      r47.y = dot(r48.xyzw, r21.xyzw);
                      r21.xy = r47.xy / r29.ww;
                      r21.xy = r21.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r21.xy = r21.xy + r50.zw;
                      r21.xy = r21.xy * r50.xy;
                      r47.xy = r17.zz / r49.xz;
                      r47.zw = float2(1,1) + -r47.xy;
                      r47.zw = cmp(r21.xy >= r47.zw);
                      r47.xy = cmp(r47.xy >= r21.xy);
                      r47.xy = (int2)r47.xy | (int2)r47.zw;
                      r21.z = (int)r47.y | (int)r47.x;
                      r21.xy = saturate(r21.xy);
                      r47.xy = r21.xy * r49.xz + r49.yw;
                      r21.x = r51.y * r29.w;
                      r21.y = r51.x * r29.w + r25.w;
                      r21.x = r21.y / r21.x;
                    } else {
                      r21.z = -1;
                    }
                    r21.y = (int)r30.w | (int)r21.z;
                    if (r21.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.y, r16.y, l(28), t12.xxxx
                    r16.y = samp0[]..swiz;
                      r21.x = max(6.10351563e-05, r21.x);
                      r16.y = (int)r16.y & 0x0000ffff;
                      if (r12.w != 0) {
                        r48.z = (uint)r16.y;
                        r21.yz = float2(0,0);
                        while (true) {
                          r25.w = cmp((int)r21.z >= 8);
                          if (r25.w != 0) break;
                          r49.x = dot(icb[r21.z+0].yx, r15.xw);
                          r49.y = dot(icb[r21.z+0].yx, r25.xz);
                          r48.xy = r49.xy * r17.zz + r47.xy;
                          r25.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r48.xyz, r21.x).x;
                          r21.y = r25.w * 0.125 + r21.y;
                          r21.z = (int)r21.z + 1;
                        }
                      } else {
                        r47.z = (uint)r16.y;
                        r21.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r47.xyz, r21.x).x;
                      }
                      r16.y = r21.y * r21.y;
                      r16.y = r16.y * r21.y;
                    } else {
                      r16.y = 1;
                    }
                    r17.w = r17.w * r16.y;
                  } else {
                    if (4 == 0) r16.y = 0; else if (4+20 < 32) {                     r16.y = (uint)r39.w << (32-(4 + 20)); r16.y = (uint)r16.y >> (32-4);                    } else r16.y = (uint)r39.w >> 20;
                    r17.z = cmp(0 < (uint)r16.y);
                    r17.z = r17.z ? r4.x : 0;
                    if (r17.z != 0) {
                      r16.y = (int)r16.y + numLights;
                      r16.y = (int)r16.y + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.z, r16.y, l(52), t12.xxxx
                    r17.z = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r47.xyzw, r16.y, l(100), t12.xyzw
                    r47.x = samp0[]..swiz;
                    r47.y = samp0[]..swiz;
                    r47.z = samp0[]..swiz;
                    r47.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r48.xyzw, r16.y, l(116), t12.xyzw
                    r48.x = samp0[]..swiz;
                    r48.y = samp0[]..swiz;
                    r48.z = samp0[]..swiz;
                    r48.w = samp0[]..swiz;
                      r21.x = abs(r19.w) * -0.200000003 + 0.400000006;
                      r21.z = cmp(r19.w < 0);
                      r21.x = r21.z ? -r21.x : r21.x;
                      r22.xyz = r1.xyz * r21.xxx + v7.xyz;
                      r21.x = dot(r47.xyzw, r22.xyzw);
                      r21.z = dot(r48.xyzw, r22.xyzw);
                      r25.w = cmp(r21.z < r21.x);
                      if (r25.w == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r47.xyzw, r16.y, l(68), t12.xyzw
                      r47.x = samp0[]..swiz;
                      r47.y = samp0[]..swiz;
                      r47.z = samp0[]..swiz;
                      r47.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r48.xyzw, r16.y, l(84), t12.xyzw
                      r48.x = samp0[]..swiz;
                      r48.y = samp0[]..swiz;
                      r48.z = samp0[]..swiz;
                      r48.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r49.xyzw, r16.y, l(132), t12.xyzw
                      r49.x = samp0[]..swiz;
                      r49.y = samp0[]..swiz;
                      r49.z = samp0[]..swiz;
                      r49.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r50.xyzw, r16.y, l(148), t12.xyzw
                      r50.x = samp0[]..swiz;
                      r50.y = samp0[]..swiz;
                      r50.z = samp0[]..swiz;
                      r50.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r51.xy, r16.y, l(164), t12.xyxx
                      r51.x = samp0[]..swiz;
                      r51.y = samp0[]..swiz;
                        r47.x = dot(r47.xyzw, r22.xyzw);
                        r47.y = dot(r48.xyzw, r22.xyzw);
                        r22.xy = r47.xy / r21.zz;
                        r22.xy = r22.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                        r22.xy = r22.xy + r50.zw;
                        r22.xy = r22.xy * r50.xy;
                        r47.xy = r17.zz / r49.xz;
                        r47.zw = float2(1,1) + -r47.xy;
                        r47.zw = cmp(r22.xy >= r47.zw);
                        r47.xy = cmp(r47.xy >= r22.xy);
                        r47.xy = (int2)r47.xy | (int2)r47.zw;
                        r22.z = (int)r47.y | (int)r47.x;
                        r22.xy = saturate(r22.xy);
                        r47.xy = r22.xy * r49.xz + r49.yw;
                        r22.x = r51.y * r21.z;
                        r21.x = r51.x * r21.z + r21.x;
                        r21.x = r21.x / r22.x;
                      } else {
                        r22.z = -1;
                      }
                      r21.z = (int)r25.w | (int)r22.z;
                      if (r21.z == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.y, r16.y, l(28), t12.xxxx
                      r16.y = samp0[]..swiz;
                        r21.x = max(6.10351563e-05, r21.x);
                        r16.y = (int)r16.y & 0x0000ffff;
                        if (r12.w != 0) {
                          r22.z = (uint)r16.y;
                          r21.z = 0;
                          r25.w = 0;
                          while (true) {
                            r29.w = cmp((int)r25.w >= 8);
                            if (r29.w != 0) break;
                            r48.x = dot(icb[r25.w+0].xy, r8.xy);
                            r48.y = dot(icb[r25.w+0].yx, r8.xz);
                            r22.xy = r48.xy * r17.zz + r47.xy;
                            r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r21.x).x;
                            r21.z = r22.x * 0.125 + r21.z;
                            r25.w = (int)r25.w + 1;
                          }
                        } else {
                          r47.z = (uint)r16.y;
                          r21.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r47.xyz, r21.x).x;
                        }
                        r16.y = r21.z * r21.z;
                        r16.y = r16.y * r21.z;
                      } else {
                        r16.y = 1;
                      }
                      r17.w = r17.w * r16.y;
                    }
                  }
                  r16.y = -abs(r19.w) * r5.x + 1;
                  r16.y = r16.y * r16.y;
                  r16.y = -r16.y * 0.620000005 + 0.620000005;
                  r16.y = r16.y + -abs(r19.w);
                  r16.y = r6.z * r16.y + abs(r19.w);
                  r16.y = r16.y * r17.w;
                  r39.x = r38.x;
                  r17.z = cmp(0 < r19.w);
                  r22.xyz = r16.yyy * r39.xyz + r18.xyz;
                  r19.w = saturate(dot(r1.xyz, r46.xyz));
                  r45.xyz = r45.xyz * r16.xxx + r4.yzw;
                  r16.x = dot(r45.xyz, r45.xyz);
                  r16.x = rsqrt(r16.x);
                  r45.xyz = r45.xyz * r16.xxx;
                  r16.x = dot(r45.xyz, r4.yzw);
                  r21.x = dot(r1.xyz, r45.xyz);
                  r25.w = abs(r21.x) * r6.y + -abs(r21.x);
                  r21.x = abs(r21.x) * r25.w + 1;
                  r25.w = r19.w * r0.w + r1.w;
                  r21.x = r21.x * r21.x;
                  r21.x = r21.x * r25.w;
                  r21.x = rcp(r21.x);
                  r19.w = r19.w * r23.w;
                  r19.w = r21.x * r19.w;
                  r17.w = r19.w * r17.w;
                  r45.xyz = r17.www * r39.xyz + r37.xyz;
                  r16.x = saturate(1 + -r16.x);
                  r19.w = r16.x * r16.x;
                  r19.w = r19.w * r19.w;
                  r16.x = r19.w * r16.x;
                  r16.x = r17.w * r16.x;
                  r46.xyz = r16.xxx * r39.xyz + r36.xyz;
                  r47.xyz = r16.yyy * r39.xyz + r35.xyz;
                  r18.xyz = r17.zzz ? r22.xyz : r18.xyz;
                  r35.xyz = r17.zzz ? r35.xyz : r47.xyz;
                  r36.xyz = r17.zzz ? r46.xyz : r36.xyz;
                  r37.xyz = r17.zzz ? r45.xyz : r37.xyz;
                }
              }
            }
            break;
            case 2 :            r22.xy = r41.zw;
            r22.z = r42.w;
            r22.xyz = -v7.xyz + r22.xyz;
            r16.x = dot(r22.xyz, r22.xyz);
            r16.x = rsqrt(r16.x);
            r45.xyz = r22.xyz * r16.xxx;
            r16.y = dot(r1.xyz, r45.xyz);
            r17.z = cmp(0 < abs(r16.y));
            if (r17.z != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r14.w, l(112), t12.yzwx
            r45.x = samp0[]..swiz;
            r45.y = samp0[]..swiz;
            r45.z = samp0[]..swiz;
            r45.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r46.xyzw, r14.w, l(128), t12.zxyw
            r46.x = samp0[]..swiz;
            r46.y = samp0[]..swiz;
            r46.z = samp0[]..swiz;
            r46.w = samp0[]..swiz;
              r47.xyz = r45.xyz;
              r47.w = r46.y;
              r17.z = dot(r47.xyzw, r20.xyzw);
              r17.w = cmp(r17.z < 1);
              if (r17.w != 0) {
                r48.xyz = float3(1,1,1);
                r17.w = 0;
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r49.xyzw, r14.w, l(172), t12.yzwx
              r49.x = samp0[]..swiz;
              r49.y = samp0[]..swiz;
              r49.z = samp0[]..swiz;
              r49.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r50.xyzw, r14.w, l(188), t12.wxyz
              r50.x = samp0[]..swiz;
              r50.y = samp0[]..swiz;
              r50.z = samp0[]..swiz;
              r50.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r51.xyzw, r14.w, l(204), t12.xyzw
              r51.x = samp0[]..swiz;
              r51.y = samp0[]..swiz;
              r51.z = samp0[]..swiz;
              r51.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.w, r14.w, l(236), t12.xxxx
              r19.w = samp0[]..swiz;
                r52.xyz = -v7.xyz + r38.yzw;
                r21.x = r41.x * r41.x;
                r23.w = dot(r52.xyz, r52.xyz);
                r21.x = r21.x / r23.w;
                r21.x = min(1, r21.x);
                r40.xy = saturate(r17.zz * r40.xz + r40.yw);
                r40.zw = r40.xy * r40.xy;
                r40.xy = r40.xy * float2(-2,-2) + float2(3,3);
                r40.xy = r40.zw * r40.xy;
                r21.x = r40.x * r21.x;
                r21.x = r21.x * r40.y;
                r42.w = r43.x;
                r40.x = dot(r42.xyzw, r20.xyzw);
                r52.xyz = r43.yzw;
                r52.w = r44.w;
                r40.y = dot(r52.xyzw, r20.xyzw);
                r23.xy = r40.xy / r17.zz;
                r17.z = cmp(r49.w < 0.00048828125);
                if (r17.z != 0) {
                  r50.y = r51.x;
                  r40.xy = saturate(abs(r23.xy) * r50.zw + r50.xy);
                  r40.zw = r40.xy * r40.xy;
                  r40.xy = r40.xy * float2(-2,-2) + float2(3,3);
                  r40.xy = r40.zw * r40.xy;
                  r17.z = r40.x * r40.y;
                } else {
                  r49.w = r50.y;
                  r40.xyzw = saturate(r49.xyzw * abs(r23.yyxx));
                  r40.xyzw = log2(r40.xyzw);
                  r40.xyzw = r50.xxxx * r40.xyzw;
                  r40.xyzw = exp2(r40.xyzw);
                  r40.xy = r40.xy + r40.zw;
                  r40.xy = log2(r40.xy);
                  r40.xy = r51.xx * r40.xy;
                  r40.xy = exp2(r40.xy);
                  r23.w = r50.z * r40.x;
                  r25.w = r50.w * r40.y + -1;
                  r23.w = r50.w * r40.y + -r23.w;
                  r23.w = saturate(r25.w / r23.w);
                  r25.w = r23.w * r23.w;
                  r23.w = r23.w * -2 + 3;
                  r17.z = r25.w * r23.w;
                }
                r17.w = r21.x * r17.z;
                r17.z = (int)r19.w & 255;
                if (r17.z != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyz, r14.w, l(220), t12.xyzx
                r40.x = samp0[]..swiz;
                r40.y = samp0[]..swiz;
                r40.z = samp0[]..swiz;
                  r19.w = dot(r51.yzw, r23.xyz);
                  r21.x = dot(r40.xyz, r23.xyz);
                  r40.x = frac(r19.w);
                  r40.y = frac(r21.x);
                  r17.z = (int)r17.z + -1;
                  r40.z = (uint)r17.z;
                  r48.xyz = gCookieArray.SampleLevel(samplerLinear_s, r40.xyz, 0).xyz;
                } else {
                  r48.xyz = float3(1,1,1);
                }
              }
              r38.yz = r39.yz;
              r23.xyw = r38.xyz * r48.xyz;
              r17.z = cmp(0 < r17.w);
              if (r17.z != 0) {
                if (3 == 0) r17.z = 0; else if (3+27 < 32) {                 r17.z = (uint)r39.w << (32-(3 + 27)); r17.z = (uint)r17.z >> (32-3);                } else r17.z = (uint)r39.w >> 27;
                r17.z = cmp((int)r17.z != 1);
                if (r17.z != 0) {
                  r17.z = abs(r16.y) * -0.200000003 + 0.400000006;
                  r19.w = cmp(r16.y < 0);
                  r17.z = r19.w ? -r17.z : r17.z;
                  r24.xyz = r1.xyz * r17.zzz + v7.xyz;
                  r45.xyz = r44.xyz;
                  r17.z = dot(r45.xyzw, r24.xyzw);
                  r19.w = dot(r47.xyzw, r24.xyzw);
                  r21.x = cmp(r19.w >= r17.z);
                  if (r21.x != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r46.y, r14.w, l(144), t12.xxxx
                  r46.y = samp0[]..swiz;
                    r42.w = r43.x;
                    r38.x = dot(r42.xyzw, r24.xyzw);
                    r44.xyz = r43.yzw;
                    r38.y = dot(r44.xyzw, r24.xyzw);
                    r24.xy = r38.xy / r19.ww;
                    r24.xy = saturate(r24.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                    r24.xy = r24.xy * r46.zw + r46.xy;
                    r14.w = r17.z / r19.w;
                    r14.w = max(6.10351563e-05, r14.w);
                    r17.z = (int)r39.w & 0x0000ffff;
                    if (r12.w != 0) {
                      r38.z = (uint)r17.z;
                      r19.w = 0;
                      r21.x = 0;
                      while (true) {
                        r25.w = cmp((int)r21.x >= 8);
                        if (r25.w != 0) break;
                        r40.x = dot(icb[r21.x+0].xy, r28.xy);
                        r40.y = dot(icb[r21.x+0].yx, r28.xz);
                        r38.xy = r40.xy * r41.yy + r24.xy;
                        r25.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r38.xyz, r14.w).x;
                        r19.w = r25.w * 0.125 + r19.w;
                        r21.x = (int)r21.x + 1;
                      }
                    } else {
                      r24.z = (uint)r17.z;
                      r19.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r14.w).x;
                    }
                    r14.w = r19.w * r19.w;
                    r14.w = r14.w * r19.w;
                  } else {
                    r14.w = 1;
                  }
                } else {
                  r14.w = 1;
                }
                r14.w = r17.w * r14.w;
                r17.z = cmp(0 < r14.w);
                if (r17.z != 0) {
                  r17.z = r39.x * r6.y;
                  r17.z = 0.25 * r17.z;
                  if (4 == 0) r17.w = 0; else if (4+16 < 32) {                   r17.w = (uint)r39.w << (32-(4 + 16)); r17.w = (uint)r17.w >> (32-4);                  } else r17.w = (uint)r39.w >> 16;
                  r21.x = cmp(0 < (uint)r17.w);
                  r21.x = r5.z ? r21.x : 0;
                  if (r21.x != 0) {
                    r17.w = (int)r17.w + numLights;
                    r17.w = (int)r17.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r21.x, r17.w, l(52), t12.xxxx
                  r21.x = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r17.w, l(68), t12.xyzw
                  r38.x = samp0[]..swiz;
                  r38.y = samp0[]..swiz;
                  r38.z = samp0[]..swiz;
                  r38.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r17.w, l(84), t12.xyzw
                  r40.x = samp0[]..swiz;
                  r40.y = samp0[]..swiz;
                  r40.z = samp0[]..swiz;
                  r40.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r17.w, l(100), t12.xyzw
                  r41.x = samp0[]..swiz;
                  r41.y = samp0[]..swiz;
                  r41.z = samp0[]..swiz;
                  r41.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r17.w, l(116), t12.xyzw
                  r42.x = samp0[]..swiz;
                  r42.y = samp0[]..swiz;
                  r42.z = samp0[]..swiz;
                  r42.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r17.w, l(132), t12.xyzw
                  r43.x = samp0[]..swiz;
                  r43.y = samp0[]..swiz;
                  r43.z = samp0[]..swiz;
                  r43.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r17.w, l(148), t12.xyzw
                  r44.x = samp0[]..swiz;
                  r44.y = samp0[]..swiz;
                  r44.z = samp0[]..swiz;
                  r44.w = samp0[]..swiz;
                    r24.x = abs(r16.y) * -0.200000003 + 0.400000006;
                    r24.y = cmp(r16.y < 0);
                    r24.x = r24.y ? -r24.x : r24.x;
                    r26.xyz = r1.xyz * r24.xxx + v7.xyz;
                    r24.x = dot(r38.xyzw, r26.xyzw);
                    r24.y = dot(r40.xyzw, r26.xyzw);
                    r24.z = dot(r41.xyzw, r26.xyzw);
                    r25.w = dot(r42.xyzw, r26.xyzw);
                    r26.x = cmp(r25.w < r24.z);
                    r24.xy = r24.xy / r25.ww;
                    r24.xy = r24.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r24.xy = r24.xy + r44.zw;
                    r24.xy = r24.xy * r44.xy;
                    r26.yz = r21.xx / r43.xz;
                    r38.xy = float2(1,1) + -r26.yz;
                    r38.xy = cmp(r24.xy >= r38.xy);
                    r26.yz = cmp(r26.yz >= r24.xy);
                    r26.yz = (int2)r26.yz | (int2)r38.xy;
                    r26.y = (int)r26.z | (int)r26.y;
                    r26.x = (int)r26.x | (int)r26.y;
                    if (r26.x == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r26.x, r17.w, l(28), t12.xxxx
                    r26.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r26.yz, r17.w, l(164), t12.xxyx
                    r26.y = samp0[]..swiz;
                    r26.z = samp0[]..swiz;
                      r24.xy = saturate(r24.xy);
                      r38.xy = r24.xy * r43.xz + r43.yw;
                      r17.w = r26.z * r25.w;
                      r24.x = r26.y * r25.w + r24.z;
                      r17.w = r24.x / r17.w;
                      r17.w = max(6.10351563e-05, r17.w);
                      r24.x = r26.x ? 0.000000 : 0;
                      if (r12.w != 0) {
                        r26.z = (uint)r24.x;
                        r24.yz = float2(0,0);
                        while (true) {
                          r25.w = cmp((int)r24.z >= 8);
                          if (r25.w != 0) break;
                          r39.x = dot(icb[r24.z+0].xy, r29.xy);
                          r39.y = dot(icb[r24.z+0].yx, r29.xz);
                          r26.xy = r39.xy * r21.xx + r38.xy;
                          r25.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r17.w).x;
                          r24.y = r25.w * 0.125 + r24.y;
                          r24.z = (int)r24.z + 1;
                        }
                      } else {
                        r38.z = (uint)r24.x;
                        r24.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r38.xyz, r17.w).x;
                      }
                      r17.w = r24.y * r24.y;
                      r17.w = r17.w * r24.y;
                    } else {
                      r17.w = 1;
                    }
                    r14.w = r17.w * r14.w;
                  } else {
                    if (4 == 0) r17.w = 0; else if (4+20 < 32) {                     r17.w = (uint)r39.w << (32-(4 + 20)); r17.w = (uint)r17.w >> (32-4);                    } else r17.w = (uint)r39.w >> 20;
                    r21.x = cmp(0 < (uint)r17.w);
                    r21.x = r21.x ? r4.x : 0;
                    if (r21.x != 0) {
                      r17.w = (int)r17.w + numLights;
                      r17.w = (int)r17.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r21.x, r17.w, l(52), t12.xxxx
                    r21.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r17.w, l(68), t12.xyzw
                    r38.x = samp0[]..swiz;
                    r38.y = samp0[]..swiz;
                    r38.z = samp0[]..swiz;
                    r38.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r17.w, l(84), t12.xyzw
                    r39.x = samp0[]..swiz;
                    r39.y = samp0[]..swiz;
                    r39.z = samp0[]..swiz;
                    r39.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r17.w, l(100), t12.xyzw
                    r40.x = samp0[]..swiz;
                    r40.y = samp0[]..swiz;
                    r40.z = samp0[]..swiz;
                    r40.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r17.w, l(116), t12.xyzw
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r17.w, l(132), t12.xyzw
                    r42.x = samp0[]..swiz;
                    r42.y = samp0[]..swiz;
                    r42.z = samp0[]..swiz;
                    r42.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r17.w, l(148), t12.xyzw
                    r43.x = samp0[]..swiz;
                    r43.y = samp0[]..swiz;
                    r43.z = samp0[]..swiz;
                    r43.w = samp0[]..swiz;
                      r24.x = abs(r16.y) * -0.200000003 + 0.400000006;
                      r24.z = cmp(r16.y < 0);
                      r24.x = r24.z ? -r24.x : r24.x;
                      r27.xyz = r1.xyz * r24.xxx + v7.xyz;
                      r26.x = dot(r38.xyzw, r27.xyzw);
                      r26.y = dot(r39.xyzw, r27.xyzw);
                      r24.x = dot(r40.xyzw, r27.xyzw);
                      r24.z = dot(r41.xyzw, r27.xyzw);
                      r25.w = cmp(r24.z < r24.x);
                      r26.xy = r26.xy / r24.zz;
                      r26.xy = r26.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r26.xy = r26.xy + r43.zw;
                      r26.xy = r26.xy * r43.xy;
                      r27.xy = r21.xx / r42.xz;
                      r38.xy = float2(1,1) + -r27.xy;
                      r38.xy = cmp(r26.xy >= r38.xy);
                      r27.xy = cmp(r27.xy >= r26.xy);
                      r27.xy = (int2)r27.xy | (int2)r38.xy;
                      r26.z = (int)r27.y | (int)r27.x;
                      r25.w = (int)r25.w | (int)r26.z;
                      if (r25.w == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r25.w, r17.w, l(28), t12.xxxx
                      r25.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r27.xy, r17.w, l(164), t12.xyxx
                      r27.x = samp0[]..swiz;
                      r27.y = samp0[]..swiz;
                        r26.xy = saturate(r26.xy);
                        r26.xy = r26.xy * r42.xz + r42.yw;
                        r17.w = r27.y * r24.z;
                        r24.x = r27.x * r24.z + r24.x;
                        r17.w = r24.x / r17.w;
                        r17.w = max(6.10351563e-05, r17.w);
                        r24.x = r25.w ? 0.000000 : 0;
                        if (r12.w != 0) {
                          r27.z = (uint)r24.x;
                          r24.z = 0;
                          r25.w = 0;
                          while (true) {
                            r29.w = cmp((int)r25.w >= 8);
                            if (r29.w != 0) break;
                            r38.x = dot(icb[r25.w+0].xy, r30.xy);
                            r38.y = dot(icb[r25.w+0].yx, r30.xz);
                            r27.xy = r38.xy * r21.xx + r26.xy;
                            r27.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r27.xyz, r17.w).x;
                            r24.z = r27.x * 0.125 + r24.z;
                            r25.w = (int)r25.w + 1;
                          }
                        } else {
                          r26.z = (uint)r24.x;
                          r24.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r17.w).x;
                        }
                        r17.w = r24.z * r24.z;
                        r17.w = r17.w * r24.z;
                      } else {
                        r17.w = 1;
                      }
                      r14.w = r17.w * r14.w;
                    }
                  }
                  r17.w = -abs(r16.y) * r5.x + 1;
                  r17.w = r17.w * r17.w;
                  r17.w = -r17.w * 0.620000005 + 0.620000005;
                  r17.w = r17.w + -abs(r16.y);
                  r17.w = r6.z * r17.w + abs(r16.y);
                  r17.w = r17.w * r14.w;
                  r21.x = cmp(0 < r16.y);
                  r26.xyz = r17.www * r23.xyw + r18.xyz;
                  r16.y = saturate(r16.y);
                  r22.xyz = r22.xyz * r16.xxx + r4.yzw;
                  r16.x = dot(r22.xyz, r22.xyz);
                  r16.x = rsqrt(r16.x);
                  r22.xyz = r22.xyz * r16.xxx;
                  r16.x = dot(r22.xyz, r4.yzw);
                  r22.x = dot(r1.xyz, r22.xyz);
                  r22.y = abs(r22.x) * r6.y + -abs(r22.x);
                  r22.x = abs(r22.x) * r22.y + 1;
                  r22.y = r16.y * r0.w + r1.w;
                  r22.x = r22.x * r22.x;
                  r22.x = r22.x * r22.y;
                  r22.x = rcp(r22.x);
                  r16.y = r16.y * r17.z;
                  r16.y = r22.x * r16.y;
                  r14.w = r16.y * r14.w;
                  r22.xyz = r14.www * r23.xyw + r37.xyz;
                  r16.x = saturate(1 + -r16.x);
                  r16.y = r16.x * r16.x;
                  r16.y = r16.y * r16.y;
                  r16.x = r16.x * r16.y;
                  r14.w = r16.x * r14.w;
                  r27.xyz = r14.www * r23.xyw + r36.xyz;
                  r23.xyw = r17.www * r23.xyw + r35.xyz;
                  r18.xyz = r21.xxx ? r26.xyz : r18.xyz;
                  r35.xyz = r21.xxx ? r35.xyz : r23.xyw;
                  r36.xyz = r21.xxx ? r27.xyz : r36.xyz;
                  r37.xyz = r21.xxx ? r22.xyz : r37.xyz;
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
    r31.xyz = r18.xyz;
    r32.xyz = r35.xyz;
    r33.xyz = r36.xyz;
    r34.xyz = r37.xyz;
    r9.w = (int)r9.w + 32;
  }
  r6.xy = float2(0,0);
  r12.w = 0;
  r13.yz = float2(0,1);
  r4.x = 0;
  r0.w = r2.w;
  while (true) {
    r1.w = cmp((uint)r0.w >= numRefProbes);
    if (r1.w != 0) break;
    r6.z = (uint)r0.w >> 5;
    r12.xyz = (int3)r6.xyz + (int3)r11.xyz;
    r1.w = visibleProbes.Load(r12.xyzw).x;
    r5.x = cmp((int)r2.w == (int)r0.w);
    bitmask.z = ((~(-1 << r3.z)) << 0) & 0xffffffff;  r5.z = (((uint)0 << 0) & bitmask.z) | ((uint)r1.w & ~bitmask.z);
    r1.w = r5.x ? r5.z : r1.w;
    r5.x = cmp((int)r3.w == (int)r0.w);
    if (r9.y == 0) r5.z = 0; else if (r9.y+0 < 32) {     r5.z = (uint)r1.w << (32-(r9.y + 0)); r5.z = (uint)r5.z >> (32-r9.y);    } else r5.z = (uint)r1.w >> 0;
    r1.w = r5.x ? r5.z : r1.w;
    r5.x = (int)r0.w + numLights;
    r5.z = r4.x;
    r6.z = r1.w;
    while (true) {
      if (r6.z == 0) break;
      r7.x = firstbitlow((uint)r6.z);
      r8.y = 1 << (int)r7.x;
      r8.z = (int)r6.z & (int)r8.y;
      if (r8.z != 0) {
        r6.z = (int)r6.z ^ (int)r8.y;
        r8.y = (int)r5.x + (int)r7.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r14.xyzw, r8.y, l(0), t11.xyzw
      r14.x = samp0[]..swiz;
      r14.y = samp0[]..swiz;
      r14.z = samp0[]..swiz;
      r14.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r12.xy, r8.y, l(16), t11.xyxx
      r12.x = samp0[]..swiz;
      r12.y = samp0[]..swiz;
        r14.xyz = -v7.xyz + r14.xyz;
        r12.z = r14.w;
        r12.xyz = cmp(abs(r14.xyz) < r12.zxy);
        r8.y = r12.y ? r12.x : 0;
        r8.y = r12.z ? r8.y : 0;
        if (r8.y != 0) {
          r7.x = (int)r0.w + (int)r7.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r12.xyz, r7.x, l(0), t15.xyzx
        r12.x = samp0[]..swiz;
        r12.y = samp0[]..swiz;
        r12.z = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r8.yz, r7.x, l(96), t15.xxyx
        r8.y = samp0[]..swiz;
        r8.z = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r7.x, r7.x, l(120), t15.xxxx
        r7.x = samp0[]..swiz;
          r12.xyz = v7.xyz + -r12.xyz;
          r9.x = (int)r7.x & 0x0000ffff;
          if (6 == 0) r7.x = 0; else if (6+25 < 32) {           r7.x = (uint)r7.x << (32-(6 + 25)); r7.x = (uint)r7.x >> (32-6);          } else r7.x = (uint)r7.x >> 25;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r14.xyzw, r9.x, l(0), t16.xyzw
        r14.x = samp0[]..swiz;
        r14.y = samp0[]..swiz;
        r14.z = samp0[]..swiz;
        r14.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r17.xyzw, r9.x, l(16), t16.xyzw
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r18.xyzw, r9.x, l(32), t16.xyzw
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
        r18.z = samp0[]..swiz;
        r18.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r19.xyzw, r9.x, l(48), t16.xyzw
        r19.x = samp0[]..swiz;
        r19.y = samp0[]..swiz;
        r19.z = samp0[]..swiz;
        r19.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r20.xyzw, r9.x, l(64), t16.xyzw
        r20.x = samp0[]..swiz;
        r20.y = samp0[]..swiz;
        r20.z = samp0[]..swiz;
        r20.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r21.xyzw, r9.x, l(80), t16.xyzw
        r21.x = samp0[]..swiz;
        r21.y = samp0[]..swiz;
        r21.z = samp0[]..swiz;
        r21.w = samp0[]..swiz;
          r9.w = dot(r14.xyz, r12.xyz);
          r9.w = saturate(r9.w + r14.w);
          r11.w = dot(r17.xyz, r12.xyz);
          r11.w = saturate(r11.w + r17.w);
          r9.w = r11.w * r9.w;
          r11.w = dot(r18.xyz, r12.xyz);
          r11.w = saturate(r11.w + r18.w);
          r9.w = r11.w * r9.w;
          r11.w = dot(r19.xyz, r12.xyz);
          r11.w = saturate(r11.w + r19.w);
          r9.w = r11.w * r9.w;
          r11.w = dot(r20.xyz, r12.xyz);
          r11.w = saturate(r11.w + r20.w);
          r9.w = r11.w * r9.w;
          r11.w = dot(r21.xyz, r12.xyz);
          r11.w = saturate(r11.w + r21.w);
          r13.x = r11.w * r9.w;
          r9.w = (int)r8.y & 1;
          r13.xw = r9.ww ? r13.xy : r13.zx;
          r9.w = r8.y;
          r14.xy = r13.xw;
          r11.w = 1;
          while (true) {
            r14.z = cmp((int)r11.w >= (int)r7.x);
            if (r14.z != 0) break;
            r14.z = (int)r9.x + (int)r11.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r17.xyzw, r14.z, l(0), t16.xyzw
          r17.x = samp0[]..swiz;
          r17.y = samp0[]..swiz;
          r17.z = samp0[]..swiz;
          r17.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r18.xyzw, r14.z, l(16), t16.xyzw
          r18.x = samp0[]..swiz;
          r18.y = samp0[]..swiz;
          r18.z = samp0[]..swiz;
          r18.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r19.xyzw, r14.z, l(32), t16.xyzw
          r19.x = samp0[]..swiz;
          r19.y = samp0[]..swiz;
          r19.z = samp0[]..swiz;
          r19.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r20.xyzw, r14.z, l(48), t16.xyzw
          r20.x = samp0[]..swiz;
          r20.y = samp0[]..swiz;
          r20.z = samp0[]..swiz;
          r20.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r21.xyzw, r14.z, l(64), t16.xyzw
          r21.x = samp0[]..swiz;
          r21.y = samp0[]..swiz;
          r21.z = samp0[]..swiz;
          r21.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r22.xyzw, r14.z, l(80), t16.xyzw
          r22.x = samp0[]..swiz;
          r22.y = samp0[]..swiz;
          r22.z = samp0[]..swiz;
          r22.w = samp0[]..swiz;
            r14.z = dot(r17.xyz, r12.xyz);
            r14.z = saturate(r14.z + r17.w);
            r14.z = r14.x * r14.z;
            r14.w = dot(r18.xyz, r12.xyz);
            r14.w = saturate(r14.w + r18.w);
            r14.z = r14.z * r14.w;
            r14.w = dot(r19.xyz, r12.xyz);
            r14.w = saturate(r14.w + r19.w);
            r14.z = r14.z * r14.w;
            r14.w = dot(r20.xyz, r12.xyz);
            r14.w = saturate(r14.w + r20.w);
            r14.z = r14.z * r14.w;
            r14.w = dot(r21.xyz, r12.xyz);
            r14.w = saturate(r14.w + r21.w);
            r14.z = r14.z * r14.w;
            r14.w = dot(r22.xyz, r12.xyz);
            r14.w = saturate(r14.w + r22.w);
            r14.x = r14.z * r14.w;
            r15.y = (uint)r9.w >> 2;
            if (1 == 0) r15.z = 0; else if (1+2 < 32) {             r15.z = (uint)r9.w << (32-(1 + 2)); r15.z = (uint)r15.z >> (32-1);            } else r15.z = (uint)r9.w >> 2;
            r15.w = (int)r15.y & 2;
            r16.x = max(r14.y, r14.x);
            r14.z = -r14.z * r14.w + 1;
            r14.z = r14.y * r14.z;
            r16.w = r15.w ? r14.z : r16.x;
            r14.xy = r15.zz ? r14.xy : r16.zw;
            r11.w = (int)r11.w + 1;
            r9.w = r15.y;
          }
          r14.y = saturate(r14.y);
          r7.x = r14.y * r8.z;
          r7.x = cmp(0 < r7.x);
          if (r7.x != 0) {
            r5.z = r14.y * r8.z + r5.z;
          }
        }
      }
    }
    r4.x = r5.z;
    r0.w = (int)r0.w + 32;
  }
  r0.w = cmp(r4.x < 1);
  if (r0.w != 0) {
    r6.xy = float2(0,0);
    r12.w = 0;
    r13.yz = float2(0,1);
    r9.x = 1;
    r0.w = r4.x;
    r1.w = r4.x;
    r3.w = 0;
    while (true) {
      r5.x = cmp((uint)r3.w >= (uint)r8.w);
      if (r5.x != 0) break;
      r6.z = (uint)r3.w >> 5;
      r12.xyz = (int3)r6.xyz + (int3)r11.xyz;
      r5.x = visibleProbes.Load(r12.xyzw).x;
      r5.z = cmp((int)r2.w == (int)r3.w);
      if (r3.z == 0) r6.z = 0; else if (r3.z+0 < 32) {       r6.z = (uint)r5.x << (32-(r3.z + 0)); r6.z = (uint)r6.z >> (32-r3.z);      } else r6.z = (uint)r5.x >> 0;
      r5.x = r5.z ? r6.z : r5.x;
      r5.z = (int)r3.w + numLights;
      r6.z = r0.w;
      r7.x = r1.w;
      r8.y = r5.x;
      while (true) {
        if (r8.y == 0) break;
        r8.z = firstbitlow((uint)r8.y);
        r9.w = 1 << (int)r8.z;
        r11.w = (int)r8.y & (int)r9.w;
        if (r11.w != 0) {
          r8.y = (int)r8.y ^ (int)r9.w;
          r9.w = (int)r5.z + (int)r8.z;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r14.xyzw, r9.w, l(0), t11.xyzw
        r14.x = samp0[]..swiz;
        r14.y = samp0[]..swiz;
        r14.z = samp0[]..swiz;
        r14.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r12.xy, r9.w, l(16), t11.xyxx
        r12.x = samp0[]..swiz;
        r12.y = samp0[]..swiz;
          r14.xyz = -v7.xyz + r14.xyz;
          r12.z = r14.w;
          r12.xyz = cmp(abs(r14.xyz) < r12.zxy);
          r9.w = r12.y ? r12.x : 0;
          r9.w = r12.z ? r9.w : 0;
          if (r9.w != 0) {
            r8.z = (int)r3.w + (int)r8.z;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r12.xyz, r8.z, l(0), t15.xyzx
          r12.x = samp0[]..swiz;
          r12.y = samp0[]..swiz;
          r12.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r14.xy, r8.z, l(96), t15.xyxx
          r14.x = samp0[]..swiz;
          r14.y = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r8.z, r8.z, l(120), t15.xxxx
          r8.z = samp0[]..swiz;
            r12.xyz = v7.xyz + -r12.xyz;
            r9.w = (int)r8.z & 0x0000ffff;
            if (6 == 0) r8.z = 0; else if (6+25 < 32) {             r8.z = (uint)r8.z << (32-(6 + 25)); r8.z = (uint)r8.z >> (32-6);            } else r8.z = (uint)r8.z >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r16.xyzw, r9.w, l(0), t16.xyzw
          r16.x = samp0[]..swiz;
          r16.y = samp0[]..swiz;
          r16.z = samp0[]..swiz;
          r16.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r17.xyzw, r9.w, l(16), t16.xyzw
          r17.x = samp0[]..swiz;
          r17.y = samp0[]..swiz;
          r17.z = samp0[]..swiz;
          r17.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r18.xyzw, r9.w, l(32), t16.xyzw
          r18.x = samp0[]..swiz;
          r18.y = samp0[]..swiz;
          r18.z = samp0[]..swiz;
          r18.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r19.xyzw, r9.w, l(48), t16.xyzw
          r19.x = samp0[]..swiz;
          r19.y = samp0[]..swiz;
          r19.z = samp0[]..swiz;
          r19.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r20.xyzw, r9.w, l(64), t16.xyzw
          r20.x = samp0[]..swiz;
          r20.y = samp0[]..swiz;
          r20.z = samp0[]..swiz;
          r20.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r21.xyzw, r9.w, l(80), t16.xyzw
          r21.x = samp0[]..swiz;
          r21.y = samp0[]..swiz;
          r21.z = samp0[]..swiz;
          r21.w = samp0[]..swiz;
            r11.w = dot(r16.xyz, r12.xyz);
            r11.w = saturate(r11.w + r16.w);
            r13.w = dot(r17.xyz, r12.xyz);
            r13.w = saturate(r13.w + r17.w);
            r11.w = r13.w * r11.w;
            r13.w = dot(r18.xyz, r12.xyz);
            r13.w = saturate(r13.w + r18.w);
            r11.w = r13.w * r11.w;
            r13.w = dot(r19.xyz, r12.xyz);
            r13.w = saturate(r13.w + r19.w);
            r11.w = r13.w * r11.w;
            r13.w = dot(r20.xyz, r12.xyz);
            r13.w = saturate(r13.w + r20.w);
            r11.w = r13.w * r11.w;
            r13.w = dot(r21.xyz, r12.xyz);
            r13.w = saturate(r13.w + r21.w);
            r13.x = r13.w * r11.w;
            r11.w = (int)r14.x & 1;
            r13.xw = r11.ww ? r13.xy : r13.zx;
            r11.w = r14.x;
            r16.xy = r13.xw;
            r14.z = 1;
            while (true) {
              r14.w = cmp((int)r14.z >= (int)r8.z);
              if (r14.w != 0) break;
              r14.w = (int)r9.w + (int)r14.z;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r17.xyzw, r14.w, l(0), t16.xyzw
            r17.x = samp0[]..swiz;
            r17.y = samp0[]..swiz;
            r17.z = samp0[]..swiz;
            r17.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r18.xyzw, r14.w, l(16), t16.xyzw
            r18.x = samp0[]..swiz;
            r18.y = samp0[]..swiz;
            r18.z = samp0[]..swiz;
            r18.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r19.xyzw, r14.w, l(32), t16.xyzw
            r19.x = samp0[]..swiz;
            r19.y = samp0[]..swiz;
            r19.z = samp0[]..swiz;
            r19.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r20.xyzw, r14.w, l(48), t16.xyzw
            r20.x = samp0[]..swiz;
            r20.y = samp0[]..swiz;
            r20.z = samp0[]..swiz;
            r20.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r21.xyzw, r14.w, l(64), t16.xyzw
            r21.x = samp0[]..swiz;
            r21.y = samp0[]..swiz;
            r21.z = samp0[]..swiz;
            r21.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r22.xyzw, r14.w, l(80), t16.xyzw
            r22.x = samp0[]..swiz;
            r22.y = samp0[]..swiz;
            r22.z = samp0[]..swiz;
            r22.w = samp0[]..swiz;
              r14.w = dot(r17.xyz, r12.xyz);
              r14.w = saturate(r14.w + r17.w);
              r14.w = r16.x * r14.w;
              r15.y = dot(r18.xyz, r12.xyz);
              r15.y = saturate(r15.y + r18.w);
              r14.w = r15.y * r14.w;
              r15.y = dot(r19.xyz, r12.xyz);
              r15.y = saturate(r15.y + r19.w);
              r14.w = r15.y * r14.w;
              r15.y = dot(r20.xyz, r12.xyz);
              r15.y = saturate(r15.y + r20.w);
              r14.w = r15.y * r14.w;
              r15.y = dot(r21.xyz, r12.xyz);
              r15.y = saturate(r15.y + r21.w);
              r14.w = r15.y * r14.w;
              r15.y = dot(r22.xyz, r12.xyz);
              r15.y = saturate(r15.y + r22.w);
              r16.x = r15.y * r14.w;
              r15.z = (uint)r11.w >> 2;
              if (1 == 0) r15.w = 0; else if (1+2 < 32) {               r15.w = (uint)r11.w << (32-(1 + 2)); r15.w = (uint)r15.w >> (32-1);              } else r15.w = (uint)r11.w >> 2;
              r16.z = (int)r15.z & 2;
              r16.w = max(r16.y, r16.x);
              r14.w = -r14.w * r15.y + 1;
              r14.w = r16.y * r14.w;
              r9.y = r16.z ? r14.w : r16.w;
              r16.xy = r15.ww ? r16.xy : r9.xy;
              r14.z = (int)r14.z + 1;
              r11.w = r15.z;
            }
            r8.z = saturate(r16.y + -r7.x);
            r9.y = r8.z * r14.y;
            r9.y = cmp(0 < r9.y);
            if (r9.y != 0) {
              r6.z = r8.z * r14.y + r6.z;
            }
          }
        }
      }
      r0.w = r6.z;
      r3.w = (int)r3.w + 32;
    }
    r4.x = r0.w;
  }
  r4.x = saturate(r4.x);
  r0.w = cmp(r4.x < 0.99000001);
  if (r0.w != 0) {
    r0.w = 1 + -r4.x;
    r0.w = sunConstants.globalProbeExposure * r0.w;
    r6.xyz = r10.xyz + -r3.yyy;
    r12.xyz = min(float3(1,1,1), abs(r6.xyz));
    r1.w = dot(v7.xyz, v7.xyz);
    r1.w = rsqrt(r1.w);
    r6.xyz = v7.xyz * r1.www;
    r1.w = dot(r12.xyz, -r6.xyz);
    r2.w = r1.w + -r3.y;
    r2.w = min(1, abs(r2.w));
    r2.w = 10 * r2.w;
    r2.w = min(1, r2.w);
    r3.z = r2.w * -2 + 3;
    r2.w = r2.w * r2.w;
    r2.w = -r3.z * r2.w + 1;
    r3.z = r2.w * r2.w;
    r3.z = r3.z * r3.z;
    r2.w = r3.z * r2.w;
    r2.w = r2.w * r3.x;
    r2.w = sunConstants.globalProbeExposure * r2.w;
    r2.w = 20 * r2.w;
    r1.w = 0.5 + r1.w;
    r1.w = saturate(4 * r1.w);
    r3.z = r1.w * -2 + 3;
    r1.w = r1.w * r1.w;
    r1.w = r3.z * r1.w;
    r1.w = r2.w * r1.w;
    r12.w = 0;
    r6.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r12.xyzw, r7.y).xyz;
    r6.xyz = r6.xyz * r1.www;
    r0.w = r5.y * r0.w;
    r5.xyz = r6.xyz * r0.www;
  } else {
    r5.xyz = float3(0,0,0);
  }
  r12.xyz = r5.xyz * r7.zzz;
  r5.xyz = r5.xyz * r7.www;
  if (r9.z != 0) {
    r0.w = 0;
  }
  if (r9.z == 0) {
    r6.xyz = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v7.yyy;
    r6.xyz = v7.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r6.xyz;
    r6.xyz = v7.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r6.xyz;
    r6.xyz = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r6.xyz;
    r1.w = -sunConstants.splitDepthOffset + r6.z;
    r1.w = -r1.w * 6.10351563e-05 + 1;
    r2.w = saturate(r1.w);
    r2.w = cmp(r1.w == r2.w);
    if (r2.w != 0) {
      r2.w = 0;
      r3.z = 0;
      while (true) {
        r3.w = cmp(r2.w >= 3);
        if (r3.w != 0) break;
        r3.w = (uint)r2.w;
        r7.xy = -sunConstants.splitPinTransform[r3.w].xy + r6.xy;
        r4.x = max(abs(r7.x), abs(r7.y));
        r3.z = sunConstants.splitPinTransform[r3.w].z * r4.x;
        r3.w = cmp(r3.z < 1);
        if (r3.w != 0) {
          break;
        }
        r2.w = 1 + r2.w;
        r3.z = 0;
      }
    } else {
      r2.w = 3;
      r3.z = 0;
    }
    r3.w = cmp(r2.w >= 3);
    if (r3.w != 0) {
      r7.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r9.xz = rcp(r7.xx);
      r9.y = -r9.z;
      r7.xyz = r6.xyx * r9.xyz + r7.yzy;
      r8.yzw = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r7.xyz = max(float3(0,0,0), r7.xyz);
      r7.xyz = min(r7.xyz, r8.yzw);
      r8.yz = sunConstants.sstLightingConstants.coordScale * r7.zy;
      r8.yz = floor(r8.yz);
      r4.x = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r8.z;
      r4.x = r4.x * sunConstants.sstLightingConstants.coordScale + r8.y;
      r4.x = (uint)r4.x;
      r4.x = (int)r4.x + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r7.w, r4.x, l(0), t23.xxxx
    r7.w = samp0[]..swiz;
      r8.y = (int)r7.w & 0x40000000;
      r8.z = (uint)r7.w << 2;
      if (r8.y == 0) {
        r8.y = (int)r7.w & 0x01ffffff;
        r9.x = (int)r4.x + (int)r8.y;
        r4.x = (uint)r7.w >> 25;
        r4.x = (uint)r4.x;
        r7.xyz = r7.xyz * r4.xxx;
        r7.xyz = frac(r7.xyz);
        r7.xyz = float3(128,128,128) * r7.xyz;
        r7.xyz = (uint3)r7.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r9.z, r9.x, l(0), t23.xxxx
      r9.z = samp0[]..swiz;
        r8.yw = (uint2)r7.zy >> int2(6,6);
        r4.x = r9.z ? -2.000000 : 0;
        r7.w = (int)r9.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r7.w, r7.w, l(0), t23.xxxx
      r7.w = samp0[]..swiz;
        r7.w = r8.w ? r9.z : r7.w;
        r8.w = (uint)r7.w >> 13;
        r7.w = r8.y ? r8.w : r7.w;
        r7.w = (int)r7.w & 8191;
        r13.x = (int)r7.w + (int)r9.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.z, r13.x, l(0), t23.xxxx
      r13.z = samp0[]..swiz;
        r9.y = 0;
        r13.y = 1;
        r13.xyz = r4.xxx ? r9.xyz : r13.xyz;
        r14.yz = r4.xx ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r8.yw = (uint2)r7.zy >> (uint2)r14.yy;
        r8.yw = (int2)r8.yw & int2(1,1);
        r7.w = (int)r13.z & 0xc0000000;
        r9.w = (int)r13.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r9.w, r9.w, l(0), t23.xxxx
      r9.w = samp0[]..swiz;
        r8.w = r8.w ? r13.z : r9.w;
        r9.w = (uint)r8.w >> 13;
        r8.y = r8.y ? r9.w : r8.w;
        r8.y = (int)r8.y & 8191;
        r14.x = (int)r8.y + (int)r13.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.w, r14.x, l(0), t23.xxxx
      r14.w = samp0[]..swiz;
        r13.xyz = r7.www ? r13.xyz : r14.xzw;
        r9.xyz = r4.xxx ? r9.xyz : r13.xyz;
        r4.x = (int)r9.z & 0xc0000000;
        if (r4.x == 0) {
          r4.x = (int)-r9.y + 6;
          r8.yw = (uint2)r7.zy >> (uint2)r4.xx;
          r4.x = (int)r9.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r7.w = (((uint)r8.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r7.w = (((uint)r8.y << 0) & bitmask.w) | ((uint)r7.w & ~bitmask.w);
          r7.w = (int)r7.w * 10;
          r4.x = (uint)r4.x >> (uint)r7.w;
          r4.x = (int)r4.x & 1023;
          r13.x = (int)r4.x + (int)r9.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.w, r13.x, l(0), t23.xxxx
        r13.w = samp0[]..swiz;
          r13.yz = (int2)r9.yy + int2(1,2);
          r4.x = (int)-r13.y + 6;
          r8.yw = (uint2)r7.zy >> (uint2)r4.xx;
          r4.x = (int)r13.w & 0xc0000000;
          r7.w = (int)r13.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r8.w = (((uint)r8.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r8.y = (((uint)r8.y << 0) & bitmask.y) | ((uint)r8.w & ~bitmask.y);
          r8.y = (int)r8.y * 10;
          r7.w = (uint)r7.w >> (uint)r8.y;
          r7.w = (int)r7.w & 1023;
          r14.x = (int)r7.w + (int)r13.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.z, r14.x, l(0), t23.xxxx
        r14.z = samp0[]..swiz;
          r14.y = r13.z;
          r14.xyz = r4.xxx ? r13.xyw : r14.xyz;
          r7.w = (int)-r14.y + 6;
          r8.yw = (uint2)r7.zy >> (uint2)r7.ww;
          r7.w = (int)r14.z & 0xc0000000;
          r9.y = (int)r14.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r8.w = (((uint)r8.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r8.y = (((uint)r8.y << 0) & bitmask.y) | ((uint)r8.w & ~bitmask.y);
          r8.y = (int)r8.y * 10;
          r8.y = (uint)r9.y >> (uint)r8.y;
          r8.y = (int)r8.y & 1023;
          r16.x = (int)r8.y + (int)r14.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.y, r16.x, l(0), t23.xxxx
        r16.y = samp0[]..swiz;
          r8.yw = r7.ww ? r14.xz : r16.xy;
          r9.xz = r4.xx ? r13.xw : r8.yw;
        }
        r4.x = (int)r9.z & 0xc0000000;
        if (r4.x == 0) {
          if (14 == 0) r7.w = 0; else if (14+15 < 32) {           r7.w = (uint)r9.z << (32-(14 + 15)); r7.w = (uint)r7.w >> (32-14);          } else r7.w = (uint)r9.z >> 15;
          r7.w = (uint)r7.w;
          r7.w = sunConstants.sstLightingConstants.constants.spanInInches * r7.w;
          r7.w = 6.10388815e-05 * r7.w;
          r8.yw = (int2)r9.zz & int2(32767,536870912);
          r8.y = (uint)r8.y;
          r8.y = sunConstants.sstLightingConstants.constants.spanInInches * r8.y;
          r8.y = 3.05185094e-05 * r8.y;
          r9.y = (int)r7.y & 3;
          r9.y = (int)r9.y + (int)r9.x;
          r9.y = (int)r9.y + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r9.y, r9.y, l(0), t23.xxxx
        r9.y = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r13.x = (((uint)r7.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r13.y = (((uint)r7.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r13.z = (((uint)r7.z << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r7.x = (uint)r9.y >> (uint)r13.x;
          r7.x = (int)r7.x & 255;
          r7.x = (uint)r7.x;
          r7.x = r7.x * r8.y;
          r7.x = r7.x * 0.00392156886 + r7.w;
          r7.y = (int)r13.y + 1;
          if (1 == 0) r7.z = 0; else if (1+1 < 32) {           r7.z = (uint)r7.z << (32-(1 + 1)); r7.z = (uint)r7.z >> (32-1);          } else r7.z = (uint)r7.z >> 1;
          r7.y = (int)r7.z + (int)r7.y;
          r7.y = (int)r7.y + (int)r9.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r7.y, r7.y, l(0), t23.xxxx
        r7.y = samp0[]..swiz;
          r7.y = (uint)r7.y >> (uint)r13.z;
          r7.y = (int)r7.y & 0x0000ffff;
          r7.y = (uint)r7.y;
          r7.y = r7.y * r8.y;
          r7.y = r7.y * 1.52590219e-05 + r7.w;
          r8.z = r8.w ? r7.x : r7.y;
        } else {
          r7.x = (int)r9.z & 0x80000000;
          r7.y = (int)r9.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r7.y, r7.y, l(0), t23.xxxx
        r7.y = samp0[]..swiz;
          r7.x = r7.x ? r7.y : 0;
          r7.y = (uint)r9.z << 2;
          r7.z = (uint)r7.x >> 16;
          r7.x = (int)r7.x & 0x0000ffff;
          r7.xz = f16tof32(r7.xz);
          r7.y = r6.x * r7.z + r7.y;
          r7.x = r6.y * r7.x + r7.y;
          r8.z = r4.x ? r7.x : r8.z;
        }
      }
      r4.x = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r6.z;
      r4.x = cmp(r8.z < r4.x);
      r0.w = r4.x ? 0 : 1;
    }
    if (r3.w == 0) {
      if (enableDitheredShadow == 0) {
        r3.w = (uint)r2.w;
        r7.xy = -sunConstants.splitPinTransform[r3.w].xy + r6.xy;
        r7.xy = sunConstants.splitPinTransform[r3.w].zz * r7.xy;
        r7.xy = r7.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r3.w = (int16)sunConstants.splitArrayOffset;
        r7.z = r3.w + r2.w;
        r3.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r7.xyz, r1.w).x;
        r4.x = gTransShadowmapArray.SampleLevel(samp0_s, r7.xyz, 0).x;
        r3.w = r4.x + r3.w;
        r3.w = saturate(-1 + r3.w);
        r4.x = r3.w * r3.w;
        r0.w = r4.x * r3.w;
      }
      if (enableDitheredShadow != 0) {
        r3.w = (uint)r2.w;
        r2.w = 1 + r2.w;
        r2.w = min(2, r2.w);
        r2.w = (uint)r2.w;
        r3.z = 1 + -r3.z;
        r3.z = 28 * r3.z;
        r3.z = (uint)r3.z;
        r7.xy = -sunConstants.splitPinTransform[r3.w].xy + r6.xy;
        r7.xy = sunConstants.splitPinTransform[r3.w].zz * r7.xy;
        r7.xy = r7.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r6.xy = -sunConstants.splitPinTransform[r2.w].xy + r6.xy;
        r6.xy = sunConstants.splitPinTransform[r2.w].zz * r6.xy;
        r6.xy = r6.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r25.x = r8.x;
        r25.y = r15.x;
        r4.x = 0;
        r6.z = 0;
        while (true) {
          r7.z = cmp((uint)r6.z >= 8);
          if (r7.z != 0) break;
          r7.z = cmp((uint)r3.z < (uint)r6.z);
          r8.xy = r7.zz ? r6.xy : r7.xy;
          r7.w = r7.z ? sunConstants.splitPinTransform[r2.w].w : sunConstants.splitPinTransform[r3.w].w;
          r7.z = r7.z ? r2.w : r3.w;
          r9.x = dot(icb[r6.z+0].xy, r25.xy);
          r9.y = dot(icb[r6.z+0].yx, r25.xz);
          r8.xy = r9.xy * r7.ww + r8.xy;
          r7.z = (int)r7.z + (int16)sunConstants.splitArrayOffset;
          r8.z = (uint)r7.z;
          r7.z = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r8.xyz, r1.w).x;
          r7.w = gTransShadowmapArray.SampleLevel(samp0_s, r8.xyz, 0).x;
          r7.z = r7.z + r7.w;
          r7.z = saturate(-1 + r7.z);
          r4.x = r7.z * 0.125 + r4.x;
          r6.z = (int)r6.z + 1;
        }
        r1.w = r4.x * r4.x;
        r0.w = r1.w * r4.x;
      }
    }
  }
  if (r10.w != 0) {
    r0.w = cmp(0 < r0.w);
    if (r0.w != 0) {
      if (sunConstants.sunCookieIndex != 0) {
        r7.xyz = eyeOffset.xyz + v7.xyz;
        r7.w = 1;
        r0.w = dot(sunConstants.sunCookieTransform[0].xyzw, r7.xyzw);
        r1.w = dot(sunConstants.sunCookieTransform[1].xyzw, r7.xyzw);
        r6.x = frac(r0.w);
        r6.y = frac(r1.w);
        r0.w = -1 + (int14)sunConstants.sunCookieIndex;
        r6.z = (uint)r0.w;
        r6.xyz = gCookieArray.SampleLevel(samplerLinear_s, r6.xyz, 0).xyz;
        r6.xyz = float3(-1,-1,-1) + r6.xyz;
        r6.xyz = sunConstants.sunCookieIntensity * r6.xyz + float3(1,1,1);
        r6.xyz = sunConstants.color.xyz * r6.xyz;
      } else {
        r6.xyz = sunConstants.color.xyz;
      }
      r0.w = cmp(0 < r6.w);
      r1.w = r5.w + r5.w;
      r7.xyz = r1.xyz * -r1.www + r4.yzw;
      r1.w = dot(r7.xyz, -sunConstants.wldDir.xyz);
      r2.w = r1.w + -r3.y;
      r2.w = min(1, abs(r2.w));
      r2.w = 10 * r2.w;
      r2.w = min(1, r2.w);
      r3.z = r2.w * -2 + 3;
      r2.w = r2.w * r2.w;
      r2.w = -r3.z * r2.w + 1;
      r3.z = r2.w * r2.w;
      r3.z = r3.z * r3.z;
      r2.w = r3.z * r2.w;
      r2.w = r2.w * r3.x;
      r2.w = 20 * r2.w;
      r1.w = 0.5 + r1.w;
      r1.w = saturate(4 * r1.w);
      r3.z = r1.w * -2 + 3;
      r1.w = r1.w * r1.w;
      r1.w = r3.z * r1.w;
      r3.z = r2.w * r1.w;
      r7.xyz = r3.zzz * r6.xyz + r5.xyz;
      r1.w = saturate(-r2.w * r1.w + 1);
      r2.w = r1.w * r1.w;
      r2.w = r2.w * r2.w;
      r1.w = r2.w * r1.w;
      r1.w = r3.z * r1.w;
      r6.xyz = r1.www * r6.xyz + r12.xyz;
      r6.w = r7.x;
      r12.w = r5.x;
      r12.xyzw = r0.wwww ? r6.xyzw : r12.xyzw;
      r5.yz = r0.ww ? r7.yz : r5.yz;
      r5.x = r12.w;
    }
  }
  r0.w = r5.w + r5.w;
  r4.xyz = r1.xyz * -r0.www + r4.yzw;
  r6.xy = float2(0,0);
  r7.w = 0;
  r8.xyz = v7.xyz;
  r8.w = 1;
  r9.z = 1;
  r13.xyz = r12.xyz;
  r14.xyz = r5.xyz;
  r0.w = 0;
  while (true) {
    r1.w = cmp((uint)r0.w >= numLights);
    if (r1.w != 0) break;
    r6.z = (uint)r0.w >> 5;
    r7.xyz = (int3)r6.xyz + (int3)r11.xyz;
    r1.w = visibleLights.Load(r7.xyzw).x;
    r7.xyz = r13.xyz;
    r15.xyz = r14.xyz;
    r2.w = r1.w;
    while (true) {
      if (r2.w == 0) break;
      r3.z = firstbitlow((uint)r2.w);
      r3.w = 1 << (int)r3.z;
      r4.w = (int)r2.w & (int)r3.w;
      if (r4.w != 0) {
        r2.w = (int)r2.w ^ (int)r3.w;
        r3.z = (int)r0.w + (int)r3.z;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r16.xyzw, r3.z, l(0), t11.xyzw
      r16.x = samp0[]..swiz;
      r16.y = samp0[]..swiz;
      r16.z = samp0[]..swiz;
      r16.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r17.xy, r3.z, l(16), t11.xyxx
      r17.x = samp0[]..swiz;
      r17.y = samp0[]..swiz;
        r16.xyz = -v7.xyz + r16.xyz;
        r17.z = r16.w;
        r16.xyz = cmp(abs(r16.xyz) < r17.zxy);
        r3.w = r16.y ? r16.x : 0;
        r3.w = r16.z ? r3.w : 0;
        if (r3.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r3.z, l(0), t12.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xy, r3.z, l(16), t12.xyxx
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r3.z, l(28), t12.xyzw
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
        r18.z = samp0[]..swiz;
        r18.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r6.zw, r3.z, l(44), t12.xxxy
        r6.z = samp0[]..swiz;
        r6.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.xyzw, r3.z, l(88), t12.wxyz
        r19.x = samp0[]..swiz;
        r19.y = samp0[]..swiz;
        r19.z = samp0[]..swiz;
        r19.w = samp0[]..swiz;
          if (3 == 0) r3.w = 0; else if (3+24 < 32) {           r3.w = (uint)r18.x << (32-(3 + 24)); r3.w = (uint)r3.w >> (32-3);          } else r3.w = (uint)r18.x >> 24;
          switch (r3.w) {
            case 4 :            r3.w = cmp(0 < r19.x);
            r20.xyz = -r19.yzw * float3(0.5,0.5,0.5) + r16.xyz;
            r21.xyz = -v7.xyz + r20.xyz;
            r4.w = dot(r19.yzw, r21.xyz);
            r5.w = saturate(-r4.w / r19.x);
            r22.xyz = r5.www * r19.yzw + r20.xyz;
            r22.xyz = r3.www ? r22.xyz : r16.xyz;
            r22.xyz = -v7.xyz + r22.xyz;
            r9.w = dot(r22.xyz, r22.xyz);
            r10.w = rsqrt(r9.w);
            r22.xyz = r22.xyz * r10.www;
            r10.w = dot(r1.xyz, r22.xyz);
            r11.w = cmp(0 < abs(r10.w));
            if (r11.w != 0) {
              r11.w = sqrt(r9.w);
              r12.w = r6.w * r6.w;
              r9.w = r12.w / r9.w;
              r9.w = min(1, r9.w);
              r12.w = saturate(r11.w * r18.y + r18.z);
              r11.w = saturate(r11.w * r18.w + r6.z);
              r13.w = r12.w * r12.w;
              r12.w = r12.w * -2 + 3;
              r12.w = r13.w * r12.w;
              r9.w = r12.w * r9.w;
              r12.w = r11.w * r11.w;
              r11.w = r11.w * -2 + 3;
              r11.w = r12.w * r11.w;
              r9.w = r11.w * r9.w;
              r9.w = cmp(0 < r9.w);
              if (r9.w != 0) {
                r9.w = dot(r19.yzw, r10.xyz);
                r11.w = dot(r10.xyz, r21.xyz);
                r12.w = -r9.w * r9.w + r19.x;
                r4.w = r9.w * r11.w + -r4.w;
                r4.w = saturate(r4.w / r12.w);
                r9.w = r12.w / r19.x;
                r9.w = 10 * r9.w;
                r9.w = min(1, r9.w);
                r4.w = r4.w + -r5.w;
                r4.w = r9.w * r4.w + r5.w;
                r20.xyz = r4.www * r19.yzw + r20.xyz;
                r20.xyz = r3.www ? r20.xyz : r16.xyz;
                r20.xyz = -v7.xyz + r20.xyz;
                r3.w = dot(r20.xyz, r20.xyz);
                r3.w = rsqrt(r3.w);
                r20.xyz = r20.xyz * r3.www;
                r3.w = cmp(0 < r10.w);
                r4.w = dot(r4.xyz, -r20.xyz);
                r5.w = r4.w + -r3.y;
                r5.w = min(1, abs(r5.w));
                r5.w = 10 * r5.w;
                r5.w = min(1, r5.w);
                r9.w = r5.w * -2 + 3;
                r5.w = r5.w * r5.w;
                r5.w = -r9.w * r5.w + 1;
                r9.w = r5.w * r5.w;
                r9.w = r9.w * r9.w;
                r5.w = r9.w * r5.w;
                r5.w = r5.w * r3.x;
                r5.w = 20 * r5.w;
                r4.w = 0.5 + r4.w;
                r4.w = saturate(4 * r4.w);
                r9.w = r4.w * -2 + 3;
                r4.w = r4.w * r4.w;
                r4.w = r9.w * r4.w;
                r9.w = r5.w * r4.w;
                r17.z = r16.w;
                r20.xyz = r9.www * r17.zxy + r15.xyz;
                r4.w = saturate(-r5.w * r4.w + 1);
                r5.w = r4.w * r4.w;
                r5.w = r5.w * r5.w;
                r4.w = r5.w * r4.w;
                r4.w = r9.w * r4.w;
                r21.xyz = r4.www * r17.zxy + r7.xyz;
                r7.xyz = r3.www ? r21.xyz : r7.xyz;
                r15.xyz = r3.www ? r20.xyz : r15.xyz;
              }
            }
            break;
            case 2 :          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.xyzw, r3.z, l(56), t12.wxyz
          r20.x = samp0[]..swiz;
          r20.y = samp0[]..swiz;
          r20.z = samp0[]..swiz;
          r20.w = samp0[]..swiz;
            r21.xyz = -v7.xyz + r20.yzw;
            r3.w = dot(r21.xyz, r21.xyz);
            r3.w = rsqrt(r3.w);
            r21.xyz = r21.xyz * r3.www;
            r3.w = dot(r1.xyz, r21.xyz);
            r4.w = cmp(0 < abs(r3.w));
            if (r4.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.xyzw, r3.z, l(116), t12.xyzw
            r22.x = samp0[]..swiz;
            r22.y = samp0[]..swiz;
            r22.z = samp0[]..swiz;
            r22.w = samp0[]..swiz;
              r4.w = dot(r22.xyzw, r8.xyzw);
              r5.w = cmp(r4.w < 1);
              if (r5.w != 0) {
                r22.xyz = float3(1,1,1);
                r5.w = 0;
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.xyzw, r3.z, l(72), t12.xyzw
              r23.x = samp0[]..swiz;
              r23.y = samp0[]..swiz;
              r23.z = samp0[]..swiz;
              r23.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.xyzw, r3.z, l(172), t12.yzwx
              r24.x = samp0[]..swiz;
              r24.y = samp0[]..swiz;
              r24.z = samp0[]..swiz;
              r24.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r25.xyzw, r3.z, l(188), t12.wxyz
              r25.x = samp0[]..swiz;
              r25.y = samp0[]..swiz;
              r25.z = samp0[]..swiz;
              r25.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r26.xyzw, r3.z, l(204), t12.xyzw
              r26.x = samp0[]..swiz;
              r26.y = samp0[]..swiz;
              r26.z = samp0[]..swiz;
              r26.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.w, r3.z, l(236), t12.xxxx
              r9.w = samp0[]..swiz;
                r16.xyz = -v7.xyz + r16.xyz;
                r6.w = r6.w * r6.w;
                r10.w = dot(r16.xyz, r16.xyz);
                r6.w = r6.w / r10.w;
                r6.w = min(1, r6.w);
                r10.w = saturate(r4.w * r18.y + r18.z);
                r6.z = saturate(r4.w * r18.w + r6.z);
                r11.w = r10.w * r10.w;
                r10.w = r10.w * -2 + 3;
                r10.w = r11.w * r10.w;
                r6.w = r10.w * r6.w;
                r10.w = r6.z * r6.z;
                r6.z = r6.z * -2 + 3;
                r6.z = r10.w * r6.z;
                r6.z = r6.w * r6.z;
                r20.yzw = r23.xyz;
                r16.x = dot(r20.xyzw, r8.xyzw);
                r19.x = r23.w;
                r16.y = dot(r19.xyzw, r8.xyzw);
                r9.xy = r16.xy / r4.ww;
                r4.w = cmp(r24.w < 0.00048828125);
                if (r4.w != 0) {
                  r25.y = r26.x;
                  r16.xy = saturate(abs(r9.xy) * r25.zw + r25.xy);
                  r18.xy = r16.xy * r16.xy;
                  r16.xy = r16.xy * float2(-2,-2) + float2(3,3);
                  r16.xy = r18.xy * r16.xy;
                  r4.w = r16.x * r16.y;
                } else {
                  r24.w = r25.y;
                  r18.xyzw = saturate(r24.xyzw * abs(r9.yyxx));
                  r18.xyzw = log2(r18.xyzw);
                  r18.xyzw = r25.xxxx * r18.xyzw;
                  r18.xyzw = exp2(r18.xyzw);
                  r16.xy = r18.xy + r18.zw;
                  r16.xy = log2(r16.xy);
                  r16.xy = r26.xx * r16.xy;
                  r16.xy = exp2(r16.xy);
                  r6.w = r25.z * r16.x;
                  r10.w = r25.w * r16.y + -1;
                  r6.w = r25.w * r16.y + -r6.w;
                  r6.w = saturate(r10.w / r6.w);
                  r10.w = r6.w * r6.w;
                  r6.w = r6.w * -2 + 3;
                  r4.w = r10.w * r6.w;
                }
                r5.w = r6.z * r4.w;
                r4.w = (int)r9.w & 255;
                if (r4.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyz, r3.z, l(220), t12.xyzx
                r16.x = samp0[]..swiz;
                r16.y = samp0[]..swiz;
                r16.z = samp0[]..swiz;
                  r3.z = dot(r26.yzw, r9.xyz);
                  r6.z = dot(r16.xyz, r9.xyz);
                  r16.x = frac(r3.z);
                  r16.y = frac(r6.z);
                  r3.z = (int)r4.w + -1;
                  r16.z = (uint)r3.z;
                  r22.xyz = gCookieArray.SampleLevel(samplerLinear_s, r16.xyz, 0).xyz;
                } else {
                  r22.xyz = float3(1,1,1);
                }
              }
              r17.w = r16.w;
              r9.xyw = r22.xyz * r17.wxy;
              r3.z = cmp(0 < r5.w);
              if (r3.z != 0) {
                r3.z = cmp(0 < r3.w);
                r3.w = dot(r4.xyz, -r21.xyz);
                r4.w = r3.w + -r3.y;
                r4.w = min(1, abs(r4.w));
                r4.w = 10 * r4.w;
                r4.w = min(1, r4.w);
                r5.w = r4.w * -2 + 3;
                r4.w = r4.w * r4.w;
                r4.w = -r5.w * r4.w + 1;
                r5.w = r4.w * r4.w;
                r5.w = r5.w * r5.w;
                r4.w = r5.w * r4.w;
                r4.w = r4.w * r3.x;
                r4.w = 20 * r4.w;
                r3.w = 0.5 + r3.w;
                r3.w = saturate(4 * r3.w);
                r5.w = r3.w * -2 + 3;
                r3.w = r3.w * r3.w;
                r3.w = r5.w * r3.w;
                r5.w = r4.w * r3.w;
                r16.xyz = r5.www * r9.xyw + r15.xyz;
                r3.w = saturate(-r4.w * r3.w + 1);
                r4.w = r3.w * r3.w;
                r4.w = r4.w * r4.w;
                r3.w = r4.w * r3.w;
                r3.w = r5.w * r3.w;
                r9.xyw = r3.www * r9.xyw + r7.xyz;
                r7.xyz = r3.zzz ? r9.xyw : r7.xyz;
                r15.xyz = r3.zzz ? r16.xyz : r15.xyz;
              }
            }
            break;
            default :
            break;
          }
        }
      }
    }
    r13.xyz = r7.xyz;
    r14.xyz = r15.xyz;
    r0.w = (int)r0.w + 32;
  }
  r1.xyz = r32.xyz * r2.xyz;
  r0.xyz = r31.xyz * r0.xyz + r1.xyz;
  r1.xyz = float3(0.959999979,0.959999979,0.959999979) * r33.xyz;
  r1.xyz = r34.xyz * float3(0.0399999991,0.0399999991,0.0399999991) + r1.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyz = float3(1,1,1) + -specColorTint.xyz;
  r1.xyz = r13.xyz * r1.xyz;
  r1.xyz = r14.xyz * specColorTint.xyz + r1.xyz;
  r0.xyz = r1.xyz + r0.xyz;
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