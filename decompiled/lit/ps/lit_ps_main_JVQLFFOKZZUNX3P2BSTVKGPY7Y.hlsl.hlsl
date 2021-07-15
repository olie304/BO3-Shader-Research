// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:38:00 2021

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
  float alphaRevealSoftEdge : packoffset(c10);
  float alphaRevealRamp : packoffset(c10.y);
  float2 revealScale : packoffset(c10.z);
  float3 colorTint : packoffset(c11);
  float3 specColorTint : packoffset(c12);
  float baseNormalHeight : packoffset(c12.w);
  float2 glossRange : packoffset(c13);
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
SamplerState revealSampler_s : register(s1);
SamplerState samplerLinear_s : register(s2);
SamplerState colorSampler_s : register(s3);
SamplerState samplerLinearClamp_s : register(s4);
SamplerState specColorSampler_s : register(s5);
SamplerState normalSampler_s : register(s6);
SamplerState aoSampler_s : register(s7);
SamplerComparisonState ShadowSamplerComparisonState_s : register(s13);
Texture2D<float4> revealMap : register(t0);
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
Texture2D<float4> specColorMap : register(t24);
Texture2D<float4> normalMap : register(t25);
Texture2D<float4> glossMap : register(t26);
Texture2D<float4> aoMap : register(t29);
Texture2DArray<float> gTransShadowmapArray : register(t31);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float v1 : COLOR1,
  float2 w1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float3 v4 : TEXCOORD3,
  float3 v5 : OFFPOSITION0,
  uint v6 : SV_IsFrontFace0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = colorMap.Sample(colorSampler_s, w1.xy).xyz;
  r0.w = tintMask.Sample(colorSampler_s, w1.xy).x;
  r1.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r1.xyz = r0.www * r1.xyz + float3(1,1,1);
  r0.xyz = r1.xyz * r0.xyz;
  r1.xy = revealScale.xy * w1.xy;
  r0.w = revealMap.Sample(revealSampler_s, r1.xy).x;
  r1.x = saturate(v1.x * 0.998000026 + 0.00100000005);
  r1.y = 1 + -r1.x;
  r1.z = saturate(alphaRevealRamp);
  r1.x = log2(r1.x);
  r1.x = r1.z * r1.x;
  r1.x = exp2(r1.x);
  r2.x = -r1.x;
  r1.x = log2(r1.y);
  r1.x = r1.z * r1.x;
  r2.y = exp2(r1.x);
  r1.xy = saturate(alphaRevealSoftEdge * r2.xy + r1.yy);
  r0.w = -r1.x + r0.w;
  r1.x = r1.y + -r1.x;
  o0.w = saturate(r0.w / r1.x);
  r0.w = specColorMap.Sample(specColorSampler_s, w1.xy).x;
  r1.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + specColorTint.xyz;
  r1.xyz = r0.www * r1.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = saturate(1 + -r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = aoMap.Sample(aoSampler_s, w1.xy).x;
  r1.w = glossMap.Sample(specColorSampler_s, w1.xy).x;
  r2.x = glossRange.y + -glossRange.x;
  r1.w = r1.w * r2.x + glossRange.x;
  r1.w = saturate(0.0588235296 * r1.w);
  r2.xyz = normalMap.Sample(normalSampler_s, w1.xy).xyz;
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
  r3.x = v6.x ? 1 : -1;
  r3.y = dot(v2.xyz, v2.xyz);
  r3.y = rsqrt(r3.y);
  r3.yzw = v2.xyz * r3.yyy;
  r3.yzw = r3.yzw * r3.xxx;
  r4.x = dot(v3.xyz, v3.xyz);
  r4.x = rsqrt(r4.x);
  r4.xyz = v3.xyz * r4.xxx;
  r4.xyz = r4.xyz * r3.xxx;
  r4.w = dot(v4.xyz, v4.xyz);
  r4.w = rsqrt(r4.w);
  r5.xyz = v4.xyz * r4.www;
  r5.xyz = r5.xyz * r3.xxx;
  r1.w = -17 * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r2.z + r1.w;
  r1.w = log2(r1.w);
  r1.w = -0.0588235296 * r1.w;
  r6.y = max(0, r1.w);
  r5.xyz = r5.xyz * r2.yyy;
  r2.xyz = r4.xyz * r2.xxx + r5.xyz;
  r2.xyz = r3.yzw * r2.www + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  r3.xy = (uint2)v0.xy;
  r1.w = cmp(v0.z >= 0.984375);
  r3.z = 1.01587307 * v0.z;
  r3.w = v0.z * 64 + -63;
  r1.w = r1.w ? r3.w : r3.z;
  r1.w = max(9.99999994e-09, r1.w);
  r1.w = rcp(r1.w);
  r3.z = dot(-v5.xyz, -v5.xyz);
  r3.z = rsqrt(r3.z);
  r4.xyz = -v5.xyz * r3.zzz;
  r3.w = cmp(isDepthHack != 0);
  r5.xy = (uint2)r3.yx;
  r4.w = dot(r5.yx, float2(0.0671105608,0.00583714992));
  r4.w = frac(r4.w);
  r4.w = 52.9829178 * r4.w;
  r4.w = frac(r4.w);
  r4.w = r4.w * 6.28318548 + gameTick.w;
  sincos(r4.w, r7.x, r8.x);
  r4.w = dot(r5.xy, float2(0.0671105608,0.00583714992));
  r4.w = frac(r4.w);
  r4.w = 52.9829178 * r4.w;
  r4.w = frac(r4.w);
  r4.w = r4.w * 6.28318548 + gameTick.w;
  sincos(r4.w, r5.x, r9.x);
  r6.x = saturate(dot(r2.xyz, r4.xyz));
  r4.w = dot(-r4.xyz, r2.xyz);
  r4.w = r4.w + r4.w;
  r10.xyz = r2.xyz * -r4.www + -r4.xyz;
  r4.w = 17 * r6.y;
  r4.w = exp2(r4.w);
  r4.w = 2 + r4.w;
  r4.w = 2 / r4.w;
  r5.y = sqrt(r4.w);
  r5.z = 1 + -r6.y;
  r5.w = 5 * r5.z;
  r6.z = r5.z * 5 + -2.5;
  r6.z = 0.400000006 * r6.z;
  r6.z = max(0, r6.z);
  r7.zw = -r5.zz * float2(10,5) + float2(6.85740995,7.08500004);
  r6.w = exp2(r7.z);
  r6.w = r6.x * r6.w;
  r6.zw = float2(100,9.1368103) * r6.zw;
  r7.z = r5.w * r5.z;
  r7.z = -r7.z * 2.0159049 + r7.w;
  r7.z = exp2(r7.z);
  r7.z = r7.z * r6.x;
  r7.z = 9.70808983 * r7.z;
  r6.w = max(r7.z, r6.w);
  r6.w = max(1.26815999, r6.w);
  r7.z = numRefProbes + -numOverrideProbes;
  r1.w = 0.0078125 * r1.w;
  r1.w = min(15, r1.w);
  r1.w = (uint)r1.w;
  r11.xy = (uint2)r3.xy >> int2(6,6);
  r11.z = (uint)r1.w << 4;
  r1.w = (int)r7.z & -32;
  r3.x = (int)-r1.w + (int)r7.z;
  r3.y = numRefProbes & -32;
  r7.w = (int)-r3.y + numRefProbes;
  r12.xy = float2(0,0);
  r13.w = 0;
  r14.yz = float2(0,1);
  r15.xy = float2(0,0);
  r16.x = 1;
  r17.xy = float2(0,0);
  r18.xy = float2(0,0);
  r19.xyzw = float4(0,0,0,0);
  r20.yzw = float3(0,0,0);
  r8.w = r1.w;
  while (true) {
    r9.y = cmp((uint)r8.w >= numRefProbes);
    if (r9.y != 0) break;
    r12.z = (uint)r8.w >> 5;
    r13.xyz = (int3)r11.xyz + (int3)r12.xyz;
    r9.y = visibleProbes.Load(r13.xyzw).x;
    r9.z = cmp((int)r1.w == (int)r8.w);
    bitmask.w = ((~(-1 << r3.x)) << 0) & 0xffffffff;  r9.w = (((uint)0 << 0) & bitmask.w) | ((uint)r9.y & ~bitmask.w);
    r9.y = r9.z ? r9.w : r9.y;
    r9.z = cmp((int)r3.y == (int)r8.w);
    if (r7.w == 0) r9.w = 0; else if (r7.w+0 < 32) {     r9.w = (uint)r9.y << (32-(r7.w + 0)); r9.w = (uint)r9.w >> (32-r7.w);    } else r9.w = (uint)r9.y >> 0;
    r9.y = r9.z ? r9.w : r9.y;
    r9.z = (int)r8.w + numLights;
    r21.xyzw = r19.xyzw;
    r22.xyz = r20.yzw;
    r9.w = r9.y;
    while (true) {
      if (r9.w == 0) break;
      r11.w = firstbitlow((uint)r9.w);
      r12.z = 1 << (int)r11.w;
      r12.w = (int)r9.w & (int)r12.z;
      if (r12.w != 0) {
        r9.w = (int)r9.w ^ (int)r12.z;
        r12.z = (int)r9.z + (int)r11.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r23.xyzw, r12.z, l(0), t11.xyzw
      r23.x = samp0[]..swiz;
      r23.y = samp0[]..swiz;
      r23.z = samp0[]..swiz;
      r23.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r13.xy, r12.z, l(16), t11.xyxx
      r13.x = samp0[]..swiz;
      r13.y = samp0[]..swiz;
        r23.xyz = -v5.xyz + r23.xyz;
        r13.z = r23.w;
        r13.xyz = cmp(abs(r23.xyz) < r13.zxy);
        r12.z = r13.y ? r13.x : 0;
        r12.z = r13.z ? r12.z : 0;
        if (r12.z != 0) {
          r11.w = (int)r8.w + (int)r11.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r11.w, l(0), t15.wxyz
        r23.x = samp0[]..swiz;
        r23.y = samp0[]..swiz;
        r23.z = samp0[]..swiz;
        r23.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r12.zw, r11.w, l(96), t15.xxxy
        r12.z = samp0[]..swiz;
        r12.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r11.w, l(116), t15.zwxy
        r24.x = samp0[]..swiz;
        r24.y = samp0[]..swiz;
        r24.z = samp0[]..swiz;
        r24.w = samp0[]..swiz;
          r13.xyz = v5.xyz + -r23.yzw;
          r14.w = (int)r24.w & 0x0000ffff;
          if (6 == 0) r15.w = 0; else if (6+25 < 32) {           r15.w = (uint)r24.w << (32-(6 + 25)); r15.w = (uint)r15.w >> (32-6);          } else r15.w = (uint)r24.w >> 25;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r25.xyzw, r14.w, l(0), t16.xyzw
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        r25.z = samp0[]..swiz;
        r25.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r14.w, l(16), t16.xyzw
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
        r26.z = samp0[]..swiz;
        r26.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r14.w, l(32), t16.xyzw
        r27.x = samp0[]..swiz;
        r27.y = samp0[]..swiz;
        r27.z = samp0[]..swiz;
        r27.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r14.w, l(48), t16.xyzw
        r28.x = samp0[]..swiz;
        r28.y = samp0[]..swiz;
        r28.z = samp0[]..swiz;
        r28.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r14.w, l(64), t16.xyzw
        r29.x = samp0[]..swiz;
        r29.y = samp0[]..swiz;
        r29.z = samp0[]..swiz;
        r29.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r14.w, l(80), t16.xyzw
        r30.x = samp0[]..swiz;
        r30.y = samp0[]..swiz;
        r30.z = samp0[]..swiz;
        r30.w = samp0[]..swiz;
          r16.z = dot(r25.xyz, r13.xyz);
          r16.z = saturate(r16.z + r25.w);
          r16.w = dot(r26.xyz, r13.xyz);
          r16.w = saturate(r16.w + r26.w);
          r16.z = r16.z * r16.w;
          r16.w = dot(r27.xyz, r13.xyz);
          r16.w = saturate(r16.w + r27.w);
          r16.z = r16.z * r16.w;
          r16.w = dot(r28.xyz, r13.xyz);
          r16.w = saturate(r16.w + r28.w);
          r16.z = r16.z * r16.w;
          r16.w = dot(r29.xyz, r13.xyz);
          r16.w = saturate(r16.w + r29.w);
          r16.z = r16.z * r16.w;
          r16.w = dot(r30.xyz, r13.xyz);
          r16.w = saturate(r16.w + r30.w);
          r14.x = r16.z * r16.w;
          r16.z = (int)r12.z & 1;
          r16.zw = r16.zz ? r14.xy : r14.zx;
          r14.x = r12.z;
          r25.xy = r16.zw;
          r17.w = 1;
          while (true) {
            r18.w = cmp((int)r17.w >= (int)r15.w);
            if (r18.w != 0) break;
            r18.w = (int)r14.w + (int)r17.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r18.w, l(0), t16.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r18.w, l(16), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r18.w, l(32), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r18.w, l(48), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r18.w, l(64), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r18.w, l(80), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
            r18.w = dot(r26.xyz, r13.xyz);
            r18.w = saturate(r18.w + r26.w);
            r18.w = r25.x * r18.w;
            r23.w = dot(r27.xyz, r13.xyz);
            r23.w = saturate(r23.w + r27.w);
            r18.w = r23.w * r18.w;
            r23.w = dot(r28.xyz, r13.xyz);
            r23.w = saturate(r23.w + r28.w);
            r18.w = r23.w * r18.w;
            r23.w = dot(r29.xyz, r13.xyz);
            r23.w = saturate(r23.w + r29.w);
            r18.w = r23.w * r18.w;
            r23.w = dot(r30.xyz, r13.xyz);
            r23.w = saturate(r23.w + r30.w);
            r18.w = r23.w * r18.w;
            r23.w = dot(r31.xyz, r13.xyz);
            r23.w = saturate(r23.w + r31.w);
            r25.x = r23.w * r18.w;
            r25.z = (uint)r14.x >> 2;
            if (1 == 0) r25.w = 0; else if (1+2 < 32) {             r25.w = (uint)r14.x << (32-(1 + 2)); r25.w = (uint)r25.w >> (32-1);            } else r25.w = (uint)r14.x >> 2;
            r26.x = (int)r25.z & 2;
            r26.y = max(r25.y, r25.x);
            r18.w = -r18.w * r23.w + 1;
            r18.w = r25.y * r18.w;
            r16.y = r26.x ? r18.w : r26.y;
            r25.xy = r25.ww ? r25.xy : r16.xy;
            r17.w = (int)r17.w + 1;
            r14.x = r25.z;
          }
          r25.y = saturate(r25.y);
          r12.z = r25.y * r12.w;
          r14.x = cmp(0 < r12.z);
          if (r14.x != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r11.w, l(16), t15.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r11.w, l(32), t15.yxwz
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r11.w, l(48), t15.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r11.w, l(64), t15.zwxy
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r11.w, l(80), t15.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r11.w, l(132), t15.zwxy
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r11.w, l(148), t15.zwxy
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r11.w, l(164), t15.zwxy
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r11.w, l(180), t15.zwxy
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r11.w, l(196), t15.xyzw
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xy, r11.w, l(212), t15.xyxx
          r36.x = samp0[]..swiz;
          r36.y = samp0[]..swiz;
            r22.z = r25.y * r12.w + r22.z;
            r11.w = r12.z * r24.z;
            r24.z = r31.z;
            r12.z = dot(r10.xyz, r24.xyz);
            r12.w = dot(r13.xyz, r24.xyz);
            r12.w = r12.w + -r31.w;
            r14.x = cmp(r12.w >= 0);
            r12.w = max(abs(r12.w), r6.z);
            r12.w = r14.x ? r12.w : -r12.w;
            r12.z = max(1.00000001e-07, -r12.z);
            r12.z = r12.w / r12.z;
            r12.z = min(131072, abs(r12.z));
            r31.z = r32.z;
            r12.w = dot(r10.xyz, r31.xyz);
            r14.x = dot(r13.xyz, r31.xyz);
            r14.x = r14.x + -r32.w;
            r14.w = cmp(r14.x >= 0);
            r14.x = max(abs(r14.x), r6.z);
            r14.x = r14.w ? r14.x : -r14.x;
            r12.w = max(1.00000001e-07, -r12.w);
            r12.w = r14.x / r12.w;
            r12.z = min(r12.z, abs(r12.w));
            r32.z = r33.z;
            r12.w = dot(r10.xyz, r32.xyz);
            r14.x = dot(r13.xyz, r32.xyz);
            r14.x = r14.x + -r33.w;
            r14.w = cmp(r14.x >= 0);
            r14.x = max(abs(r14.x), r6.z);
            r14.x = r14.w ? r14.x : -r14.x;
            r12.w = max(1.00000001e-07, -r12.w);
            r12.w = r14.x / r12.w;
            r12.z = min(r12.z, abs(r12.w));
            r33.z = r34.z;
            r12.w = dot(r10.xyz, r33.xyz);
            r14.x = dot(r13.xyz, r33.xyz);
            r14.x = r14.x + -r34.w;
            r14.w = cmp(r14.x >= 0);
            r14.x = max(abs(r14.x), r6.z);
            r14.x = r14.w ? r14.x : -r14.x;
            r12.w = max(1.00000001e-07, -r12.w);
            r12.w = r14.x / r12.w;
            r12.z = min(r12.z, abs(r12.w));
            r34.z = r35.x;
            r12.w = dot(r10.xyz, r34.xyz);
            r14.x = dot(r13.xyz, r34.xyz);
            r14.x = r14.x + -r35.y;
            r14.w = cmp(r14.x >= 0);
            r14.x = max(abs(r14.x), r6.z);
            r14.x = r14.w ? r14.x : -r14.x;
            r12.w = max(1.00000001e-07, -r12.w);
            r12.w = r14.x / r12.w;
            r12.z = min(r12.z, abs(r12.w));
            r36.zw = r35.zw;
            r12.w = dot(r10.zxy, r36.xzw);
            r14.x = dot(r13.zxy, r36.xzw);
            r14.x = r14.x + -r36.y;
            r14.w = cmp(r14.x >= 0);
            r14.x = max(abs(r14.x), r6.z);
            r14.x = r14.w ? r14.x : -r14.x;
            r12.w = max(1.00000001e-07, -r12.w);
            r12.w = r14.x / r12.w;
            r12.z = min(r12.z, abs(r12.w));
            r24.x = r28.w;
            r24.yz = r29.zw;
            r16.yzw = r24.xyz + r13.xyz;
            r16.yzw = r10.xyz * r12.zzz + r16.yzw;
            r12.w = dot(r16.yzw, r16.yzw);
            r12.w = sqrt(r12.w);
            r12.z = r12.z / r12.w;
            r12.z = r12.z + r12.z;
            r12.z = sqrt(r12.z);
            r12.z = r5.z * 5 + r12.z;
            r12.z = -0.844799995 + r12.z;
            r23.y = r26.z;
            r23.z = r27.x;
            r31.x = dot(r16.yzw, r23.xyz);
            r24.xy = r26.xw;
            r24.z = r27.w;
            r31.y = dot(r16.yzw, r24.xyz);
            r27.x = r26.y;
            r31.z = dot(r16.yzw, r27.xyz);
            if (9 == 0) r12.w = 0; else if (9+16 < 32) {             r12.w = (uint)r24.w << (32-(9 + 16)); r12.w = (uint)r12.w >> (32-9);            } else r12.w = (uint)r24.w >> 16;
            r31.w = (uint)r12.w;
            r16.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r31.xyzw, r12.z).xyz;
            r26.x = dot(r13.xyz, r23.xyz);
            r26.y = dot(r13.xyz, r24.xyz);
            r26.z = dot(r13.xyz, r27.xyz);
            r13.xyz = saturate(r26.xyz * r28.xyz + float3(0.5,0.5,0.5));
            r29.z = r30.x;
            r13.xyz = r13.xyz * r29.xyz + r30.yzw;
            r31.x = dot(r2.xyz, r23.xyz);
            r31.y = dot(r2.xyz, r24.xyz);
            r31.z = dot(r2.xyz, r27.xyz);
            r23.xyz = cmp(float3(0,0,0) < r31.xyz);
            r15.z = r23.x ? 0 : 0.5;
            r24.xyz = r15.xyz + r13.xyz;
            r24.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r24.xyz, 0).xyz;
            r25.xzw = r31.xyz * r31.xyz;
            r25.xzw = r25.xzw * r11.www;
            r17.z = r23.y ? 0 : 0.5;
            r23.xyw = r17.xyz + r13.xyz;
            r23.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r23.xyw, 0).xyz;
            r23.xyw = r23.xyw * r25.zzz;
            r23.xyw = r24.xyz * r25.xxx + r23.xyw;
            r18.z = r23.z ? 0 : 0.5;
            r13.xyz = r18.xyz + r13.xyz;
            r13.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r13.xyz, 0).xyz;
            r13.xyz = r13.xyz * r25.www + r23.xyw;
            r23.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r31.xyzw, 6).xyz;
            r24.xyz = r23.xyz * r13.xyz;
            r12.z = dot(r24.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r21.xyz = r13.xyz * r23.xyz + r21.xyz;
            r12.w = r12.z * r6.w;
            r13.xyz = r16.yzw * r11.www;
            r11.w = dot(r13.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r11.w = r6.w * r12.z + r11.w;
            r11.w = r12.w / r11.w;
            r23.x = r21.w;
            r23.yz = r22.xy;
            r22.xyw = r13.yzx * r11.www + r23.yzx;
            r21.w = r22.w;
          }
        }
      }
    }
    r19.xyzw = r21.xyzw;
    r20.yzw = r22.xyz;
    r8.w = (int)r8.w + 32;
  }
  r3.y = cmp(r20.w < 1);
  if (r3.y != 0) {
    r12.xy = float2(0,0);
    r13.w = 0;
    r14.yz = float2(0,1);
    r15.xy = float2(0,0);
    r16.x = 1;
    r17.xy = float2(0,0);
    r18.xy = float2(0,0);
    r21.x = r19.w;
    r21.yzw = r20.yzw;
    r9.yzw = r19.xyz;
    r3.y = r20.w;
    r7.w = 0;
    while (true) {
      r8.w = cmp((uint)r7.w >= (uint)r7.z);
      if (r8.w != 0) break;
      r12.z = (uint)r7.w >> 5;
      r13.xyz = (int3)r11.xyz + (int3)r12.xyz;
      r8.w = visibleProbes.Load(r13.xyzw).x;
      r11.w = cmp((int)r1.w == (int)r7.w);
      if (r3.x == 0) r12.z = 0; else if (r3.x+0 < 32) {       r12.z = (uint)r8.w << (32-(r3.x + 0)); r12.z = (uint)r12.z >> (32-r3.x);      } else r12.z = (uint)r8.w >> 0;
      r8.w = r11.w ? r12.z : r8.w;
      r11.w = (int)r7.w + numLights;
      r22.xyzw = r21.xyzw;
      r13.xyz = r9.yzw;
      r12.z = r3.y;
      r12.w = r8.w;
      while (true) {
        if (r12.w == 0) break;
        r14.w = firstbitlow((uint)r12.w);
        r15.w = 1 << (int)r14.w;
        r16.z = (int)r12.w & (int)r15.w;
        if (r16.z != 0) {
          r12.w = (int)r12.w ^ (int)r15.w;
          r15.w = (int)r11.w + (int)r14.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r23.xyzw, r15.w, l(0), t11.xyzw
        r23.x = samp0[]..swiz;
        r23.y = samp0[]..swiz;
        r23.z = samp0[]..swiz;
        r23.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r24.xy, r15.w, l(16), t11.xyxx
        r24.x = samp0[]..swiz;
        r24.y = samp0[]..swiz;
          r23.xyz = -v5.xyz + r23.xyz;
          r24.z = r23.w;
          r23.xyz = cmp(abs(r23.xyz) < r24.zxy);
          r15.w = r23.y ? r23.x : 0;
          r15.w = r23.z ? r15.w : 0;
          if (r15.w != 0) {
            r14.w = (int)r7.w + (int)r14.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r14.w, l(0), t15.wxyz
          r23.x = samp0[]..swiz;
          r23.y = samp0[]..swiz;
          r23.z = samp0[]..swiz;
          r23.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r16.zw, r14.w, l(96), t15.xxxy
          r16.z = samp0[]..swiz;
          r16.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r14.w, l(116), t15.zwxy
          r24.x = samp0[]..swiz;
          r24.y = samp0[]..swiz;
          r24.z = samp0[]..swiz;
          r24.w = samp0[]..swiz;
            r25.xyz = v5.xyz + -r23.yzw;
            r15.w = (int)r24.w & 0x0000ffff;
            if (6 == 0) r17.w = 0; else if (6+25 < 32) {             r17.w = (uint)r24.w << (32-(6 + 25)); r17.w = (uint)r17.w >> (32-6);            } else r17.w = (uint)r24.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r15.w, l(0), t16.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r15.w, l(16), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r15.w, l(32), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r15.w, l(48), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r15.w, l(64), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r15.w, l(80), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
            r18.w = dot(r26.xyz, r25.xyz);
            r18.w = saturate(r18.w + r26.w);
            r23.w = dot(r27.xyz, r25.xyz);
            r23.w = saturate(r23.w + r27.w);
            r18.w = r23.w * r18.w;
            r23.w = dot(r28.xyz, r25.xyz);
            r23.w = saturate(r23.w + r28.w);
            r18.w = r23.w * r18.w;
            r23.w = dot(r29.xyz, r25.xyz);
            r23.w = saturate(r23.w + r29.w);
            r18.w = r23.w * r18.w;
            r23.w = dot(r30.xyz, r25.xyz);
            r23.w = saturate(r23.w + r30.w);
            r18.w = r23.w * r18.w;
            r23.w = dot(r31.xyz, r25.xyz);
            r23.w = saturate(r23.w + r31.w);
            r14.x = r23.w * r18.w;
            r18.w = (int)r16.z & 1;
            r26.xy = r18.ww ? r14.xy : r14.zx;
            r14.x = r16.z;
            r27.xy = r26.xy;
            r18.w = 1;
            while (true) {
              r23.w = cmp((int)r18.w >= (int)r17.w);
              if (r23.w != 0) break;
              r23.w = (int)r15.w + (int)r18.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r23.w, l(0), t16.xyzw
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r23.w, l(16), t16.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r23.w, l(32), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r23.w, l(48), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r23.w, l(64), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r23.w, l(80), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
              r23.w = dot(r28.xyz, r25.xyz);
              r23.w = saturate(r23.w + r28.w);
              r23.w = r27.x * r23.w;
              r25.w = dot(r29.xyz, r25.xyz);
              r25.w = saturate(r25.w + r29.w);
              r23.w = r25.w * r23.w;
              r25.w = dot(r30.xyz, r25.xyz);
              r25.w = saturate(r25.w + r30.w);
              r23.w = r25.w * r23.w;
              r25.w = dot(r31.xyz, r25.xyz);
              r25.w = saturate(r25.w + r31.w);
              r23.w = r25.w * r23.w;
              r25.w = dot(r32.xyz, r25.xyz);
              r25.w = saturate(r25.w + r32.w);
              r23.w = r25.w * r23.w;
              r25.w = dot(r33.xyz, r25.xyz);
              r25.w = saturate(r25.w + r33.w);
              r27.x = r25.w * r23.w;
              r26.z = (uint)r14.x >> 2;
              if (1 == 0) r26.w = 0; else if (1+2 < 32) {               r26.w = (uint)r14.x << (32-(1 + 2)); r26.w = (uint)r26.w >> (32-1);              } else r26.w = (uint)r14.x >> 2;
              r27.z = (int)r26.z & 2;
              r27.w = max(r27.y, r27.x);
              r23.w = -r23.w * r25.w + 1;
              r23.w = r27.y * r23.w;
              r16.y = r27.z ? r23.w : r27.w;
              r27.xy = r26.ww ? r27.xy : r16.xy;
              r18.w = (int)r18.w + 1;
              r14.x = r26.z;
            }
            r14.x = saturate(r27.y + -r12.z);
            r15.w = r14.x * r16.w;
            r16.y = cmp(0 < r15.w);
            if (r16.y != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r14.w, l(16), t15.xyzw
            r26.x = samp0[]..swiz;
            r26.y = samp0[]..swiz;
            r26.z = samp0[]..swiz;
            r26.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r14.w, l(32), t15.yxwz
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r14.w, l(48), t15.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r14.w, l(64), t15.zwxy
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r14.w, l(80), t15.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r14.w, l(132), t15.zwxy
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r14.w, l(148), t15.zwxy
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r14.w, l(164), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r14.w, l(180), t15.zwxy
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r14.w, l(196), t15.xyzw
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xy, r14.w, l(212), t15.xyxx
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
              r22.w = r14.x * r16.w + r22.w;
              r14.x = r15.w * r24.z;
              r24.z = r32.z;
              r14.w = dot(r10.xyz, r24.xyz);
              r15.w = dot(r25.xyz, r24.xyz);
              r15.w = r15.w + -r32.w;
              r16.y = cmp(r15.w >= 0);
              r15.w = max(abs(r15.w), r6.z);
              r15.w = r16.y ? r15.w : -r15.w;
              r14.w = max(1.00000001e-07, -r14.w);
              r14.w = r15.w / r14.w;
              r14.w = min(131072, abs(r14.w));
              r32.z = r33.z;
              r15.w = dot(r10.xyz, r32.xyz);
              r16.y = dot(r25.xyz, r32.xyz);
              r16.y = r16.y + -r33.w;
              r16.z = cmp(r16.y >= 0);
              r16.y = max(abs(r16.y), r6.z);
              r16.y = r16.z ? r16.y : -r16.y;
              r15.w = max(1.00000001e-07, -r15.w);
              r15.w = r16.y / r15.w;
              r14.w = min(abs(r15.w), r14.w);
              r33.z = r34.z;
              r15.w = dot(r10.xyz, r33.xyz);
              r16.y = dot(r25.xyz, r33.xyz);
              r16.y = r16.y + -r34.w;
              r16.z = cmp(r16.y >= 0);
              r16.y = max(abs(r16.y), r6.z);
              r16.y = r16.z ? r16.y : -r16.y;
              r15.w = max(1.00000001e-07, -r15.w);
              r15.w = r16.y / r15.w;
              r14.w = min(abs(r15.w), r14.w);
              r34.z = r35.z;
              r15.w = dot(r10.xyz, r34.xyz);
              r16.y = dot(r25.xyz, r34.xyz);
              r16.y = r16.y + -r35.w;
              r16.z = cmp(r16.y >= 0);
              r16.y = max(abs(r16.y), r6.z);
              r16.y = r16.z ? r16.y : -r16.y;
              r15.w = max(1.00000001e-07, -r15.w);
              r15.w = r16.y / r15.w;
              r14.w = min(abs(r15.w), r14.w);
              r35.z = r36.x;
              r15.w = dot(r10.xyz, r35.xyz);
              r16.y = dot(r25.xyz, r35.xyz);
              r16.y = r16.y + -r36.y;
              r16.z = cmp(r16.y >= 0);
              r16.y = max(abs(r16.y), r6.z);
              r16.y = r16.z ? r16.y : -r16.y;
              r15.w = max(1.00000001e-07, -r15.w);
              r15.w = r16.y / r15.w;
              r14.w = min(abs(r15.w), r14.w);
              r37.zw = r36.zw;
              r15.w = dot(r10.zxy, r37.xzw);
              r16.y = dot(r25.zxy, r37.xzw);
              r16.y = r16.y + -r37.y;
              r16.z = cmp(r16.y >= 0);
              r16.y = max(abs(r16.y), r6.z);
              r16.y = r16.z ? r16.y : -r16.y;
              r15.w = max(1.00000001e-07, -r15.w);
              r15.w = r16.y / r15.w;
              r14.w = min(abs(r15.w), r14.w);
              r24.x = r29.w;
              r24.yz = r30.zw;
              r16.yzw = r24.xyz + r25.xyz;
              r16.yzw = r10.xyz * r14.www + r16.yzw;
              r15.w = dot(r16.yzw, r16.yzw);
              r15.w = sqrt(r15.w);
              r14.w = r14.w / r15.w;
              r14.w = r14.w + r14.w;
              r14.w = sqrt(r14.w);
              r14.w = r5.z * 5 + r14.w;
              r14.w = -0.844799995 + r14.w;
              r23.y = r26.z;
              r23.z = r28.x;
              r32.x = dot(r16.yzw, r23.xyz);
              r24.xy = r26.xw;
              r24.z = r28.w;
              r32.y = dot(r16.yzw, r24.xyz);
              r28.x = r26.y;
              r32.z = dot(r16.yzw, r28.xyz);
              if (9 == 0) r15.w = 0; else if (9+16 < 32) {               r15.w = (uint)r24.w << (32-(9 + 16)); r15.w = (uint)r15.w >> (32-9);              } else r15.w = (uint)r24.w >> 16;
              r32.w = (uint)r15.w;
              r16.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r32.xyzw, r14.w).xyz;
              r26.x = dot(r25.xyz, r23.xyz);
              r26.y = dot(r25.xyz, r24.xyz);
              r26.z = dot(r25.xyz, r28.xyz);
              r25.xyz = saturate(r26.xyz * r29.xyz + float3(0.5,0.5,0.5));
              r30.z = r31.x;
              r25.xyz = r25.xyz * r30.xyz + r31.yzw;
              r32.x = dot(r2.xyz, r23.xyz);
              r32.y = dot(r2.xyz, r24.xyz);
              r32.z = dot(r2.xyz, r28.xyz);
              r23.xyz = cmp(float3(0,0,0) < r32.xyz);
              r15.z = r23.x ? 0 : 0.5;
              r24.xyz = r25.xyz + r15.xyz;
              r24.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r24.xyz, 0).xyz;
              r26.xyz = r32.xyz * r32.xyz;
              r26.xyz = r26.xyz * r14.xxx;
              r17.z = r23.y ? 0 : 0.5;
              r23.xyw = r25.xyz + r17.xyz;
              r23.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r23.xyw, 0).xyz;
              r23.xyw = r23.xyw * r26.yyy;
              r23.xyw = r24.xyz * r26.xxx + r23.xyw;
              r18.z = r23.z ? 0 : 0.5;
              r24.xyz = r25.xyz + r18.xyz;
              r24.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r24.xyz, 0).xyz;
              r23.xyz = r24.xyz * r26.zzz + r23.xyw;
              r24.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r32.xyzw, 6).xyz;
              r25.xyz = r24.xyz * r23.xyz;
              r14.w = dot(r25.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r13.xyz = r23.xyz * r24.xyz + r13.xyz;
              r15.z = r14.w * r6.w;
              r16.yzw = r16.yzw * r14.xxx;
              r14.x = dot(r16.yzw, float3(0.212599993,0.715200007,0.0722000003));
              r14.x = r6.w * r14.w + r14.x;
              r14.x = r15.z / r14.x;
              r22.xyz = r16.yzw * r14.xxx + r22.xyz;
            }
          }
        }
      }
      r21.xyzw = r22.xyzw;
      r9.yzw = r13.xyz;
      r7.w = (int)r7.w + 32;
    }
    r20.xyzw = r21.zxyw;
    r19.xyz = r9.yzw;
    r20.xyzw = r20.yzxw;
  } else {
    r20.x = r19.w;
  }
  r1.w = max(1, r20.w);
  r1.w = rcp(r1.w);
  r20.w = saturate(r20.w);
  r9.yzw = r19.xyz * r1.www;
  r12.xyz = r20.xyz * r1.www;
  r3.x = cmp(r20.w < 0.99000001);
  if (r3.x != 0) {
    r3.x = 1 + -r20.w;
    r3.y = sunConstants.globalProbeExposure * r3.x;
    r13.xyz = -globalProbeConstants.data[0].xyz + v5.xyz;
    r14.x = globalProbeConstants.data[0].w * r13.x;
    r14.yz = globalProbeConstants.data[1].xy * r13.yz;
    r13.xyz = saturate(float3(0.5,0.5,0.5) + r14.xyz);
    r14.xy = globalProbeConstants.data[1].zw * r13.xy;
    r14.z = globalProbeConstants.data[2].x * r13.z;
    r13.xyz = globalProbeConstants.data[2].yzw + r14.xyz;
    r14.xyz = cmp(float3(0,0,0) < r2.xyz);
    r14.xyz = r14.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r14.w = 0;
    r15.xyz = r14.wwx + r13.xyz;
    r15.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r15.xyz, 0).xyz;
    r16.xyz = r2.xyz * r2.xyz;
    r16.xyz = r16.xyz * r3.yyy;
    r17.xyz = r14.wwy + r13.xyz;
    r17.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r17.xyz, 0).xyz;
    r17.xyz = r17.xyz * r16.yyy;
    r15.xyz = r15.xyz * r16.xxx + r17.xyz;
    r13.xyz = r14.wwz + r13.xyz;
    r13.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r13.xyz, 0).xyz;
    r13.xyz = r13.xyz * r16.zzz + r15.xyz;
    r2.w = 0;
    r14.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r2.xyzw, 6).xyz;
    r13.xyz = r14.xyz * r13.xyz;
    r2.w = dot(r13.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r9.yzw = r19.xyz * r1.www + r13.xyz;
    r10.w = 0;
    r13.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r10.xyzw, r5.w).xyz;
    r1.w = sunConstants.globalProbeExposure * r3.x + -r2.w;
    r1.w = r6.y * r1.w + r2.w;
    r12.xyz = r13.xyz * r1.www + r12.xyz;
  }
  r1.w = r6.x + r0.w;
  r1.w = log2(abs(r1.w));
  r1.w = r5.y * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r1.w + r0.w;
  r1.w = saturate(-1 + r1.w);
  r13.xyz = r9.yzw * r0.www;
  r3.xy = r6.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r3.xy = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r3.xy, 0).xy;
  r6.yzw = r12.xyz * r1.www;
  r12.xyz = r6.zwy * r3.xxx;
  r6.yzw = r6.yzw * r3.yyy;
  r0.w = sqrt(r5.y);
  r0.w = r0.w * 0.5 + 0.5;
  r0.w = r0.w * r0.w;
  r1.w = 0.5 * r0.w;
  r0.w = -r0.w * 0.5 + 1;
  r2.w = r6.x * r0.w + r1.w;
  r0.w = r2.w * r0.w;
  r1.w = r2.w * r1.w;
  r2.w = dot(r2.xyz, sunConstants.wldDir.xyz);
  r3.x = saturate(r2.w);
  r3.y = cmp(0 >= r3.x);
  if (r3.y != 0) {
    r5.z = 0;
  }
  if (r3.y == 0) {
    r9.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v5.yyy;
    r9.yzw = v5.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r9.yzw;
    r9.yzw = v5.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r9.yzw;
    r9.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r9.yzw;
    r3.y = -sunConstants.splitDepthOffset + r9.w;
    r3.y = -r3.y * 6.10351563e-05 + 1;
    r5.w = saturate(r3.y);
    r5.w = cmp(r3.y == r5.w);
    if (r5.w != 0) {
      r5.w = 0;
      r7.z = 0;
      while (true) {
        r7.w = cmp(r5.w >= 3);
        if (r7.w != 0) break;
        r7.w = (uint)r5.w;
        r14.xy = -sunConstants.splitPinTransform[r7.w].xy + r9.yz;
        r8.w = max(abs(r14.x), abs(r14.y));
        r7.z = sunConstants.splitPinTransform[r7.w].z * r8.w;
        r7.w = cmp(r7.z < 1);
        if (r7.w != 0) {
          break;
        }
        r5.w = 1 + r5.w;
        r7.z = 0;
      }
    } else {
      r5.w = 3;
      r7.z = 0;
    }
    r7.w = cmp(r5.w >= 3);
    if (r7.w != 0) {
      r14.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r15.xz = rcp(r14.xx);
      r15.y = -r15.z;
      r14.xyz = r9.yzy * r15.xyz + r14.yzy;
      r15.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r14.xyz = max(float3(0,0,0), r14.xyz);
      r14.xyz = min(r14.xyz, r15.xyz);
      r15.xy = sunConstants.sstLightingConstants.coordScale * r14.zy;
      r15.xy = floor(r15.xy);
      r8.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r15.y;
      r8.w = r8.w * sunConstants.sstLightingConstants.coordScale + r15.x;
      r8.w = (uint)r8.w;
      r8.w = (int)r8.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.w, r8.w, l(0), t23.xxxx
    r10.w = samp0[]..swiz;
      r11.w = (int)r10.w & 0x40000000;
      r14.w = (uint)r10.w << 2;
      if (r11.w == 0) {
        r11.w = (int)r10.w & 0x01ffffff;
        r15.x = (int)r8.w + (int)r11.w;
        r8.w = (uint)r10.w >> 25;
        r8.w = (uint)r8.w;
        r14.xyz = r14.xyz * r8.www;
        r14.xyz = frac(r14.xyz);
        r14.xyz = float3(128,128,128) * r14.xyz;
        r14.xyz = (uint3)r14.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.z, r15.x, l(0), t23.xxxx
      r15.z = samp0[]..swiz;
        r16.xy = (uint2)r14.zy >> int2(6,6);
        r8.w = (int)r15.z & 0xc0000000;
        r10.w = (int)r15.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.w, r10.w, l(0), t23.xxxx
      r10.w = samp0[]..swiz;
        r10.w = r16.y ? r15.z : r10.w;
        r11.w = (uint)r10.w >> 13;
        r10.w = r16.x ? r11.w : r10.w;
        r10.w = (int)r10.w & 8191;
        r16.x = (int)r10.w + (int)r15.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.x, l(0), t23.xxxx
      r16.z = samp0[]..swiz;
        r15.y = 0;
        r16.y = 1;
        r16.xyz = r8.www ? r15.xyz : r16.xyz;
        r17.yz = r8.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r18.xy = (uint2)r14.zy >> (uint2)r17.yy;
        r18.xy = (int2)r18.xy & int2(1,1);
        r10.w = (int)r16.z & 0xc0000000;
        r11.w = (int)r16.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.w, r11.w, l(0), t23.xxxx
      r11.w = samp0[]..swiz;
        r11.w = r18.y ? r16.z : r11.w;
        r15.w = (uint)r11.w >> 13;
        r11.w = r18.x ? r15.w : r11.w;
        r11.w = (int)r11.w & 8191;
        r17.x = (int)r11.w + (int)r16.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.x, l(0), t23.xxxx
      r17.w = samp0[]..swiz;
        r16.xyz = r10.www ? r16.xyz : r17.xzw;
        r15.xyz = r8.www ? r15.xyz : r16.xyz;
        r8.w = (int)r15.z & 0xc0000000;
        if (r8.w == 0) {
          r8.w = (int)-r15.y + 6;
          r16.xy = (uint2)r14.zy >> (uint2)r8.ww;
          r8.w = (int)r15.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r10.w = (((uint)r16.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r10.w = (((uint)r16.x << 0) & bitmask.w) | ((uint)r10.w & ~bitmask.w);
          r10.w = (int)r10.w * 10;
          r8.w = (uint)r8.w >> (uint)r10.w;
          r8.w = (int)r8.w & 1023;
          r16.x = (int)r8.w + (int)r15.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.w, r16.x, l(0), t23.xxxx
        r16.w = samp0[]..swiz;
          r16.yz = (int2)r15.yy + int2(1,2);
          r8.w = (int)-r16.y + 6;
          r15.yw = (uint2)r14.zy >> (uint2)r8.ww;
          r8.w = (int)r16.w & 0xc0000000;
          r10.w = (int)r16.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r11.w = (((uint)r15.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r11.w = (((uint)r15.y << 0) & bitmask.w) | ((uint)r11.w & ~bitmask.w);
          r11.w = (int)r11.w * 10;
          r10.w = (uint)r10.w >> (uint)r11.w;
          r10.w = (int)r10.w & 1023;
          r17.x = (int)r10.w + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
        r17.z = samp0[]..swiz;
          r17.y = r16.z;
          r17.xyz = r8.www ? r16.xyw : r17.xyz;
          r10.w = (int)-r17.y + 6;
          r15.yw = (uint2)r14.zy >> (uint2)r10.ww;
          r10.w = (int)r17.z & 0xc0000000;
          r11.w = (int)r17.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r15.w = (((uint)r15.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r15.y = (((uint)r15.y << 0) & bitmask.y) | ((uint)r15.w & ~bitmask.y);
          r15.y = (int)r15.y * 10;
          r11.w = (uint)r11.w >> (uint)r15.y;
          r11.w = (int)r11.w & 1023;
          r18.x = (int)r11.w + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.y, r18.x, l(0), t23.xxxx
        r18.y = samp0[]..swiz;
          r15.yw = r10.ww ? r17.xz : r18.xy;
          r15.xz = r8.ww ? r16.xw : r15.yw;
        }
        r8.w = (int)r15.z & 0xc0000000;
        if (r8.w == 0) {
          if (14 == 0) r10.w = 0; else if (14+15 < 32) {           r10.w = (uint)r15.z << (32-(14 + 15)); r10.w = (uint)r10.w >> (32-14);          } else r10.w = (uint)r15.z >> 15;
          r10.w = (uint)r10.w;
          r10.w = sunConstants.sstLightingConstants.constants.spanInInches * r10.w;
          r10.w = 6.10388815e-05 * r10.w;
          r15.yw = (int2)r15.zz & int2(32767,536870912);
          r11.w = (uint)r15.y;
          r11.w = sunConstants.sstLightingConstants.constants.spanInInches * r11.w;
          r11.w = 3.05185094e-05 * r11.w;
          r15.y = (int)r14.y & 3;
          r15.y = (int)r15.y + (int)r15.x;
          r15.y = (int)r15.y + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.y, r15.y, l(0), t23.xxxx
        r15.y = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r16.x = (((uint)r14.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r16.y = (((uint)r14.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r16.z = (((uint)r14.z << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r14.x = (uint)r15.y >> (uint)r16.x;
          r14.x = (int)r14.x & 255;
          r14.x = (uint)r14.x;
          r14.x = r14.x * r11.w;
          r14.x = r14.x * 0.00392156886 + r10.w;
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
          r11.w = r14.y * r11.w;
          r10.w = r11.w * 1.52590219e-05 + r10.w;
          r14.w = r15.w ? r14.x : r10.w;
        } else {
          r10.w = (int)r15.z & 0x80000000;
          r11.w = (int)r15.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.w, r11.w, l(0), t23.xxxx
        r11.w = samp0[]..swiz;
          r10.w = r10.w ? r11.w : 0;
          r11.w = (uint)r15.z << 2;
          r14.x = (uint)r10.w >> 16;
          r14.x = f16tof32(r14.x);
          r10.w = (int)r10.w & 0x0000ffff;
          r10.w = f16tof32(r10.w);
          r11.w = r9.y * r14.x + r11.w;
          r10.w = r9.z * r10.w + r11.w;
          r14.w = r8.w ? r10.w : r14.w;
        }
      }
      r8.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r9.w;
      r8.w = cmp(r14.w < r8.w);
      r5.z = r8.w ? 0 : 1;
    }
    if (r7.w == 0) {
      if (enableDitheredShadow == 0) {
        r7.w = (uint)r5.w;
        r14.xy = -sunConstants.splitPinTransform[r7.w].xy + r9.yz;
        r14.xy = sunConstants.splitPinTransform[r7.w].zz * r14.xy;
        r14.xy = r14.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r7.w = (int16)sunConstants.splitArrayOffset;
        r14.z = r7.w + r5.w;
        r7.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r14.xyz, r3.y).x;
        r8.w = gTransShadowmapArray.SampleLevel(samp0_s, r14.xyz, 0).x;
        r7.w = r8.w + r7.w;
        r7.w = saturate(-1 + r7.w);
        r8.w = r7.w * r7.w;
        r5.z = r8.w * r7.w;
      }
      if (enableDitheredShadow != 0) {
        r14.x = -r7.x;
        r7.w = (uint)r5.w;
        r5.w = 1 + r5.w;
        r5.w = min(2, r5.w);
        r5.w = (uint)r5.w;
        r7.z = 1 + -r7.z;
        r7.z = 28 * r7.z;
        r7.z = (uint)r7.z;
        r15.xy = -sunConstants.splitPinTransform[r7.w].xy + r9.yz;
        r15.xy = sunConstants.splitPinTransform[r7.w].zz * r15.xy;
        r15.xy = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r9.yz = -sunConstants.splitPinTransform[r5.w].xy + r9.yz;
        r9.yz = sunConstants.splitPinTransform[r5.w].zz * r9.yz;
        r9.yz = r9.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r14.y = r8.x;
        r14.z = r7.x;
        r8.w = 0;
        r9.w = 0;
        while (true) {
          r10.w = cmp((uint)r9.w >= 8);
          if (r10.w != 0) break;
          r10.w = cmp((uint)r7.z < (uint)r9.w);
          r15.zw = r10.ww ? r9.yz : r15.xy;
          r11.w = r10.w ? sunConstants.splitPinTransform[r5.w].w : sunConstants.splitPinTransform[r7.w].w;
          r10.w = r10.w ? r5.w : r7.w;
          r16.x = dot(icb[r9.w+0].yx, r14.xy);
          r16.y = dot(icb[r9.w+0].yx, r14.yz);
          r16.xy = r16.xy * r11.ww + r15.zw;
          r10.w = (int)r10.w + (int16)sunConstants.splitArrayOffset;
          r16.z = (uint)r10.w;
          r10.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r3.y).x;
          r11.w = gTransShadowmapArray.SampleLevel(samp0_s, r16.xyz, 0).x;
          r10.w = r11.w + r10.w;
          r10.w = saturate(-1 + r10.w);
          r8.w = r10.w * 0.125 + r8.w;
          r9.w = (int)r9.w + 1;
        }
        r3.y = r8.w * r8.w;
        r5.z = r3.y * r8.w;
      }
    }
  }
  r3.y = cmp(0 < r3.x);
  if (r3.y != 0) {
    r3.y = cmp(0 < r5.z);
    if (r3.y != 0) {
      r3.y = sunConstants.specScale * r4.w;
      r3.y = r3.y * r3.x;
      if (sunConstants.sunCookieIndex != 0) {
        r14.xyz = eyeOffset.xyz + v5.xyz;
        r14.w = 1;
        r5.w = dot(sunConstants.sunCookieTransform[0].xyzw, r14.xyzw);
        r7.z = dot(sunConstants.sunCookieTransform[1].xyzw, r14.xyzw);
        r14.x = frac(r5.w);
        r14.y = frac(r7.z);
        r5.w = -1 + (int14)sunConstants.sunCookieIndex;
        r14.z = (uint)r5.w;
        r9.yzw = gCookieArray.SampleLevel(samplerLinear_s, r14.xyz, 0).xyz;
        r9.yzw = float3(-1,-1,-1) + r9.yzw;
        r9.yzw = sunConstants.sunCookieIntensity * r9.yzw + float3(1,1,1);
        r9.yzw = sunConstants.color.xyz * r9.yzw;
      } else {
        r9.yzw = sunConstants.color.xyz;
      }
      r5.w = viewmodelSunShadowRaw >> 16;
      r7.z = cmp(0 < (uint)r5.w);
      r7.z = r3.w ? r7.z : 0;
      if (r7.z != 0) {
        r5.w = (int)r5.w + numLights;
        r5.w = (int)r5.w + -1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r7.z, r5.w, l(52), t12.xxxx
      r7.z = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r5.w, l(68), t12.xyzw
      r14.x = samp0[]..swiz;
      r14.y = samp0[]..swiz;
      r14.z = samp0[]..swiz;
      r14.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r5.w, l(84), t12.xyzw
      r15.x = samp0[]..swiz;
      r15.y = samp0[]..swiz;
      r15.z = samp0[]..swiz;
      r15.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r5.w, l(132), t12.xyzw
      r16.x = samp0[]..swiz;
      r16.y = samp0[]..swiz;
      r16.z = samp0[]..swiz;
      r16.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r5.w, l(148), t12.xyzw
      r17.x = samp0[]..swiz;
      r17.y = samp0[]..swiz;
      r17.z = samp0[]..swiz;
      r17.w = samp0[]..swiz;
        r7.w = abs(r2.w) * -0.200000003 + 0.400000006;
        r18.xyz = r2.xyz * r7.www + v5.xyz;
        r18.w = 1;
        r14.x = dot(r14.xyzw, r18.xyzw);
        r14.y = dot(r15.xyzw, r18.xyzw);
        r14.xy = r14.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r14.xy = r14.xy + r17.zw;
        r14.xy = r14.xy * r17.xy;
        r14.zw = r7.zz / r16.xz;
        r15.xy = float2(1,1) + -r14.zw;
        r15.xy = cmp(r14.xy >= r15.xy);
        r14.zw = cmp(r14.zw >= r14.xy);
        r14.zw = (int2)r14.zw | (int2)r15.xy;
        r7.w = (int)r14.w | (int)r14.z;
        if (r7.w == 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r7.w, r5.w, l(28), t12.xxxx
        r7.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r5.w, l(100), t12.xyzw
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.zw, r5.w, l(164), t12.xxxy
        r14.z = samp0[]..swiz;
        r14.w = samp0[]..swiz;
          r5.w = dot(r15.xyzw, r18.xyzw);
          r14.xy = saturate(r14.xy);
          r15.xy = r14.xy * r16.xz + r16.yw;
          r5.w = r5.w + r14.z;
          r5.w = r5.w / r14.w;
          r5.w = max(6.10351563e-05, r5.w);
          r7.w = (int)r7.w & 0x0000ffff;
          if (enableDitheredShadow != 0) {
            r14.x = -r7.x;
            r16.z = (uint)r7.w;
            r14.y = r8.x;
            r14.z = r7.x;
            r8.w = 0;
            r10.w = 0;
            while (true) {
              r11.w = cmp((int)r10.w >= 8);
              if (r11.w != 0) break;
              r17.x = dot(icb[r10.w+0].yx, r14.xy);
              r17.y = dot(icb[r10.w+0].yx, r14.yz);
              r16.xy = r17.xy * r7.zz + r15.xy;
              r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r5.w).x;
              r8.w = r11.w * 0.125 + r8.w;
              r10.w = (int)r10.w + 1;
            }
          } else {
            r15.z = (uint)r7.w;
            r8.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r5.w).x;
          }
          r5.w = r8.w * r8.w;
          r5.w = r5.w * r8.w;
        } else {
          r5.w = 1;
        }
        r5.z = r5.z * r5.w;
      } else {
        r5.w = viewmodelSunShadowRaw & 0x0000ffff;
        r7.z = cmp(0 < (uint)r5.w);
        r7.w = ~(int)r3.w;
        r7.z = r7.z ? r7.w : 0;
        if (r7.z != 0) {
          r5.w = (int)r5.w + numLights;
          r5.w = (int)r5.w + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r7.z, r5.w, l(52), t12.xxxx
        r7.z = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r5.w, l(68), t12.xyzw
        r14.x = samp0[]..swiz;
        r14.y = samp0[]..swiz;
        r14.z = samp0[]..swiz;
        r14.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r5.w, l(84), t12.xyzw
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r5.w, l(132), t12.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r5.w, l(148), t12.xyzw
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
          r7.w = abs(r2.w) * -0.200000003 + 0.400000006;
          r18.xyz = r2.xyz * r7.www + v5.xyz;
          r18.w = 1;
          r14.x = dot(r14.xyzw, r18.xyzw);
          r14.y = dot(r15.xyzw, r18.xyzw);
          r14.xy = r14.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r14.xy = r14.xy + r17.zw;
          r14.xy = r14.xy * r17.xy;
          r14.zw = r7.zz / r16.xz;
          r15.xy = float2(1,1) + -r14.zw;
          r15.xy = cmp(r14.xy >= r15.xy);
          r14.zw = cmp(r14.zw >= r14.xy);
          r14.zw = (int2)r14.zw | (int2)r15.xy;
          r7.w = (int)r14.w | (int)r14.z;
          if (r7.w == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r7.w, r5.w, l(28), t12.xxxx
          r7.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r5.w, l(100), t12.xyzw
          r15.x = samp0[]..swiz;
          r15.y = samp0[]..swiz;
          r15.z = samp0[]..swiz;
          r15.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.zw, r5.w, l(164), t12.xxxy
          r14.z = samp0[]..swiz;
          r14.w = samp0[]..swiz;
            r5.w = dot(r15.xyzw, r18.xyzw);
            r14.xy = saturate(r14.xy);
            r15.xy = r14.xy * r16.xz + r16.yw;
            r5.w = r5.w + r14.z;
            r5.w = r5.w / r14.w;
            r5.w = max(6.10351563e-05, r5.w);
            r7.w = (int)r7.w & 0x0000ffff;
            if (enableDitheredShadow != 0) {
              r14.x = -r7.x;
              r16.z = (uint)r7.w;
              r14.y = r8.x;
              r14.z = r7.x;
              r8.w = 0;
              r10.w = 0;
              while (true) {
                r11.w = cmp((int)r10.w >= 8);
                if (r11.w != 0) break;
                r17.x = dot(icb[r10.w+0].yx, r14.xy);
                r17.y = dot(icb[r10.w+0].yx, r14.yz);
                r16.xy = r17.xy * r7.zz + r15.xy;
                r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r5.w).x;
                r8.w = r11.w * 0.125 + r8.w;
                r10.w = (int)r10.w + 1;
              }
            } else {
              r15.z = (uint)r7.w;
              r8.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r5.w).x;
            }
            r5.w = r8.w * r8.w;
            r5.w = r5.w * r8.w;
          } else {
            r5.w = 1;
          }
          r5.z = r5.z * r5.w;
        }
      }
      r5.w = -r6.x * 0.5 + 1;
      r5.w = -r3.x * r5.w + 1;
      r5.w = r5.w * r5.w;
      r5.w = -r5.w * 0.620000005 + 0.620000005;
      r5.w = r5.w + -r3.x;
      r5.w = r5.y * r5.w + r3.x;
      r5.w = r5.w * r5.z;
      r2.w = cmp(0 < r2.w);
      r14.xyz = r5.www * r9.yzw + r13.xyz;
      r15.xyz = -v5.xyz * r3.zzz + sunConstants.wldDir.xyz;
      r3.z = dot(r15.xyz, r15.xyz);
      r3.z = rsqrt(r3.z);
      r15.xyz = r15.xyz * r3.zzz;
      r3.z = dot(r15.xyz, r4.xyz);
      r5.w = dot(r2.xyz, r15.xyz);
      r7.z = abs(r5.w) * r4.w + -abs(r5.w);
      r5.w = abs(r5.w) * r7.z + 1;
      r3.x = r3.x * r0.w + r1.w;
      r5.w = r5.w * r5.w;
      r3.x = r5.w * r3.x;
      r3.x = rcp(r3.x);
      r3.x = r3.x * r3.y;
      r3.x = r5.z * r3.x;
      r3.x = 0.25 * r3.x;
      r15.xyz = r3.xxx * r9.yzw + r6.yzw;
      r3.y = saturate(1 + -r3.z);
      r3.z = r3.y * r3.y;
      r3.z = r3.z * r3.z;
      r3.y = r3.y * r3.z;
      r3.x = r3.x * r3.y;
      r16.xyz = r3.xxx * r9.zwy + r12.xyz;
      r14.w = r16.z;
      r13.w = r12.z;
      r13.xyzw = r2.wwww ? r14.xyzw : r13.xyzw;
      r16.zw = r15.xy;
      r12.zw = r6.yz;
      r14.xyzw = r2.wwww ? r16.xyzw : r12.xyzw;
      r6.w = r2.w ? r15.z : r6.w;
      r12.z = r13.w;
      r12.xy = r14.xy;
      r6.yz = r14.zw;
    }
  }
  r14.x = -r7.x;
  r2.w = ~(int)r3.w;
  r3.x = -r6.x * 0.5 + 1;
  r15.xy = float2(0,0);
  r16.w = 0;
  r17.xyz = v5.xyz;
  r17.w = 1;
  r18.w = 1;
  r14.z = r7.x;
  r19.w = 1;
  r20.z = 1;
  r21.w = 1;
  r14.yw = r8.xx;
  r7.y = r14.w;
  r22.w = 1;
  r8.y = r14.x;
  r8.z = r7.x;
  r23.w = 1;
  r24.x = r8.x;
  r24.y = r14.x;
  r24.z = r7.x;
  r25.x = r8.x;
  r25.y = r14.x;
  r25.z = r7.x;
  r26.x = r8.x;
  r26.y = r14.x;
  r26.z = r7.x;
  r9.yzw = r13.xyz;
  r27.xyz = r12.zxy;
  r28.xyz = r6.yzw;
  r3.y = enableDitheredShadow;
  r3.z = 0;
  while (true) {
    r5.z = cmp((uint)r3.z >= numLights);
    if (r5.z != 0) break;
    r15.z = (uint)r3.z >> 5;
    r16.xyz = (int3)r11.xyz + (int3)r15.xyz;
    r5.z = visibleLights.Load(r16.xyzw).x;
    r16.xyz = r9.yzw;
    r29.xyz = r27.xyz;
    r30.xyz = r28.xyz;
    r5.w = r3.y;
    r6.x = r5.z;
    while (true) {
      if (r6.x == 0) break;
      r7.z = firstbitlow((uint)r6.x);
      r7.w = 1 << (int)r7.z;
      r8.w = (int)r6.x & (int)r7.w;
      if (r8.w != 0) {
        r6.x = (int)r6.x ^ (int)r7.w;
        r7.z = (int)r3.z + (int)r7.z;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r31.xyzw, r7.z, l(0), t11.xyzw
      r31.x = samp0[]..swiz;
      r31.y = samp0[]..swiz;
      r31.z = samp0[]..swiz;
      r31.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r32.xy, r7.z, l(16), t11.xyxx
      r32.x = samp0[]..swiz;
      r32.y = samp0[]..swiz;
        r31.xyz = -v5.xyz + r31.xyz;
        r32.z = r31.w;
        r31.xyz = cmp(abs(r31.xyz) < r32.zxy);
        r7.w = r31.y ? r31.x : 0;
        r7.w = r31.z ? r7.w : 0;
        if (r7.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r7.z, l(0), t12.wxyz
        r31.x = samp0[]..swiz;
        r31.y = samp0[]..swiz;
        r31.z = samp0[]..swiz;
        r31.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r7.z, l(16), t12.zxyw
        r32.x = samp0[]..swiz;
        r32.y = samp0[]..swiz;
        r32.z = samp0[]..swiz;
        r32.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r7.z, l(32), t12.xyzw
        r33.x = samp0[]..swiz;
        r33.y = samp0[]..swiz;
        r33.z = samp0[]..swiz;
        r33.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r7.z, l(48), t12.xyzw
        r34.x = samp0[]..swiz;
        r34.y = samp0[]..swiz;
        r34.z = samp0[]..swiz;
        r34.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r7.z, l(64), t12.yzwx
        r35.x = samp0[]..swiz;
        r35.y = samp0[]..swiz;
        r35.z = samp0[]..swiz;
        r35.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r7.z, l(80), t12.xyzw
        r36.x = samp0[]..swiz;
        r36.y = samp0[]..swiz;
        r36.z = samp0[]..swiz;
        r36.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r7.z, l(96), t12.yzwx
        r37.x = samp0[]..swiz;
        r37.y = samp0[]..swiz;
        r37.z = samp0[]..swiz;
        r37.w = samp0[]..swiz;
          if (3 == 0) r7.w = 0; else if (3+24 < 32) {           r7.w = (uint)r32.w << (32-(3 + 24)); r7.w = (uint)r7.w >> (32-3);          } else r7.w = (uint)r32.w >> 24;
          switch (r7.w) {
            case 4 :            r7.w = cmp(0 < r37.x);
            r38.xy = r36.zw;
            r38.z = r37.w;
            r39.xyz = -r38.xyz * float3(0.5,0.5,0.5) + r31.yzw;
            r40.xyz = -v5.xyz + r39.xyz;
            r8.w = dot(r38.xyz, r40.xyz);
            r10.w = saturate(-r8.w / r37.x);
            r41.xyz = r10.www * r38.xyz + r39.xyz;
            r41.xyz = r7.www ? r41.xyz : r31.yzw;
            r41.xyz = -v5.xyz + r41.xyz;
            r11.w = dot(r41.xyz, r41.xyz);
            r12.w = rsqrt(r11.w);
            r41.xyz = r41.xyz * r12.www;
            r12.w = dot(r2.xyz, r41.xyz);
            r13.w = saturate(r12.w);
            r15.z = cmp(0 < r13.w);
            if (r15.z != 0) {
              r15.z = sqrt(r11.w);
              r15.w = r34.x * r34.x;
              r11.w = r15.w / r11.w;
              r11.w = min(1, r11.w);
              r15.zw = saturate(r15.zz * r33.xz + r33.yw);
              r41.xy = r15.zw * r15.zw;
              r15.zw = r15.zw * float2(-2,-2) + float2(3,3);
              r15.zw = r41.xy * r15.zw;
              r11.w = r15.z * r11.w;
              r11.w = r11.w * r15.w;
              r15.z = cmp(0 < r11.w);
              if (r15.z != 0) {
                if (3 == 0) r15.z = 0; else if (3+27 < 32) {                 r15.z = (uint)r32.w << (32-(3 + 27)); r15.z = (uint)r15.z >> (32-3);                } else r15.z = (uint)r32.w >> 27;
                r15.z = cmp((int)r15.z != 1);
                if (r15.z != 0) {
                  r15.z = abs(r12.w) * -0.200000003 + 0.400000006;
                  r41.xyz = r2.xyz * r15.zzz + v5.xyz;
                  r41.xyz = r41.xyz + -r35.xyz;
                  r15.z = max(abs(r41.y), abs(r41.z));
                  r15.z = max(abs(r41.x), r15.z);
                  r15.z = r36.x / r15.z;
                  r15.z = r15.z + r36.y;
                  r15.w = dot(r41.xyz, r41.xyz);
                  r15.w = rsqrt(r15.w);
                  r15.z = max(6.10351563e-05, r15.z);
                  r20.w = (int)r32.w & 0x0000ffff;
                  r42.w = (uint)r20.w;
                  r20.w = 0;
                  r24.w = 0;
                  while (true) {
                    r25.w = cmp((int)r24.w >= 8);
                    if (r25.w != 0) break;
                    r43.y = dot(icb[r24.w+0].yx, r14.xy);
                    r43.z = dot(icb[r24.w+0].yx, r14.yz);
                    r43.yz = r43.yz * r34.yy;
                    r43.x = r43.y * r9.x;
                    r43.w = r43.y * r5.x;
                    r42.xyz = r41.xyz * r15.www + r43.xzw;
                    r25.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r42.xyzw, r15.z).x;
                    r20.w = r25.w * 0.125 + r20.w;
                    r24.w = (int)r24.w + 1;
                  }
                } else {
                  r20.w = 1;
                }
                r11.w = r20.w * r11.w;
                r15.z = cmp(0 < r11.w);
                if (r15.z != 0) {
                  r15.z = r32.x * r4.w;
                  r15.w = dot(r38.xyz, r10.xyz);
                  r24.w = dot(r10.xyz, r40.xyz);
                  r25.w = -r15.w * r15.w + r37.x;
                  r8.w = r15.w * r24.w + -r8.w;
                  r8.w = saturate(r8.w / r25.w);
                  r15.w = r25.w / r37.x;
                  r15.zw = float2(0.25,10) * r15.zw;
                  r15.w = min(1, r15.w);
                  r8.w = r8.w + -r10.w;
                  r8.w = r15.w * r8.w + r10.w;
                  r38.xyz = r8.www * r38.xyz + r39.xyz;
                  r38.xyz = r7.www ? r38.xyz : r31.yzw;
                  r38.xyz = -v5.xyz + r38.xyz;
                  r7.w = dot(r38.xyz, r38.xyz);
                  r7.w = rsqrt(r7.w);
                  r39.xyz = r38.xyz * r7.www;
                  if (4 == 0) r8.w = 0; else if (4+16 < 32) {                   r8.w = (uint)r32.w << (32-(4 + 16)); r8.w = (uint)r8.w >> (32-4);                  } else r8.w = (uint)r32.w >> 16;
                  r10.w = cmp(0 < (uint)r8.w);
                  r10.w = r3.w ? r10.w : 0;
                  if (r10.w != 0) {
                    r8.w = (int)r8.w + numLights;
                    r8.w = (int)r8.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.w, r8.w, l(52), t12.xxxx
                  r10.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r8.w, l(100), t12.xyzw
                  r40.x = samp0[]..swiz;
                  r40.y = samp0[]..swiz;
                  r40.z = samp0[]..swiz;
                  r40.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r8.w, l(116), t12.xyzw
                  r41.x = samp0[]..swiz;
                  r41.y = samp0[]..swiz;
                  r41.z = samp0[]..swiz;
                  r41.w = samp0[]..swiz;
                    r15.w = abs(r12.w) * -0.200000003 + 0.400000006;
                    r18.xyz = r2.xyz * r15.www + v5.xyz;
                    r15.w = dot(r40.xyzw, r18.xyzw);
                    r24.w = dot(r41.xyzw, r18.xyzw);
                    r25.w = cmp(r24.w < r15.w);
                    if (r25.w == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r8.w, l(68), t12.xyzw
                    r40.x = samp0[]..swiz;
                    r40.y = samp0[]..swiz;
                    r40.z = samp0[]..swiz;
                    r40.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r8.w, l(84), t12.xyzw
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r8.w, l(132), t12.xyzw
                    r42.x = samp0[]..swiz;
                    r42.y = samp0[]..swiz;
                    r42.z = samp0[]..swiz;
                    r42.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r8.w, l(148), t12.xyzw
                    r43.x = samp0[]..swiz;
                    r43.y = samp0[]..swiz;
                    r43.z = samp0[]..swiz;
                    r43.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xy, r8.w, l(164), t12.xyxx
                    r44.x = samp0[]..swiz;
                    r44.y = samp0[]..swiz;
                      r40.x = dot(r40.xyzw, r18.xyzw);
                      r40.y = dot(r41.xyzw, r18.xyzw);
                      r18.xy = r40.xy / r24.ww;
                      r18.xy = r18.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r18.xy = r18.xy + r43.zw;
                      r18.xy = r18.xy * r43.xy;
                      r40.xy = r10.ww / r42.xz;
                      r40.zw = float2(1,1) + -r40.xy;
                      r40.zw = cmp(r18.xy >= r40.zw);
                      r40.xy = cmp(r40.xy >= r18.xy);
                      r40.xy = (int2)r40.xy | (int2)r40.zw;
                      r18.z = (int)r40.y | (int)r40.x;
                      r18.xy = saturate(r18.xy);
                      r40.xy = r18.xy * r42.xz + r42.yw;
                      r18.x = r44.y * r24.w;
                      r15.w = r44.x * r24.w + r15.w;
                      r15.w = r15.w / r18.x;
                    } else {
                      r18.z = -1;
                    }
                    r18.x = (int)r25.w | (int)r18.z;
                    if (r18.x == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.w, r8.w, l(28), t12.xxxx
                    r8.w = samp0[]..swiz;
                      r15.w = max(6.10351563e-05, r15.w);
                      r8.w = (int)r8.w & 0x0000ffff;
                      if (r5.w != 0) {
                        r18.z = (uint)r8.w;
                        r24.w = 0;
                        r25.w = 0;
                        while (true) {
                          r26.w = cmp((int)r25.w >= 8);
                          if (r26.w != 0) break;
                          r41.x = dot(icb[r25.w+0].yx, r14.xw);
                          r41.y = dot(icb[r25.w+0].xy, r7.xy);
                          r18.xy = r41.xy * r10.ww + r40.xy;
                          r18.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r15.w).x;
                          r24.w = r18.x * 0.125 + r24.w;
                          r25.w = (int)r25.w + 1;
                        }
                      } else {
                        r40.z = (uint)r8.w;
                        r24.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r40.xyz, r15.w).x;
                      }
                      r8.w = r24.w * r24.w;
                      r8.w = r8.w * r24.w;
                    } else {
                      r8.w = 1;
                    }
                    r11.w = r11.w * r8.w;
                  } else {
                    if (4 == 0) r8.w = 0; else if (4+20 < 32) {                     r8.w = (uint)r32.w << (32-(4 + 20)); r8.w = (uint)r8.w >> (32-4);                    } else r8.w = (uint)r32.w >> 20;
                    r10.w = cmp(0 < (uint)r8.w);
                    r10.w = r2.w ? r10.w : 0;
                    if (r10.w != 0) {
                      r8.w = (int)r8.w + numLights;
                      r8.w = (int)r8.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.w, r8.w, l(52), t12.xxxx
                    r10.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r8.w, l(100), t12.xyzw
                    r40.x = samp0[]..swiz;
                    r40.y = samp0[]..swiz;
                    r40.z = samp0[]..swiz;
                    r40.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r8.w, l(116), t12.xyzw
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                      r15.w = abs(r12.w) * -0.200000003 + 0.400000006;
                      r19.xyz = r2.xyz * r15.www + v5.xyz;
                      r15.w = dot(r40.xyzw, r19.xyzw);
                      r18.x = dot(r41.xyzw, r19.xyzw);
                      r18.y = cmp(r18.x < r15.w);
                      if (r18.y == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r8.w, l(68), t12.xyzw
                      r40.x = samp0[]..swiz;
                      r40.y = samp0[]..swiz;
                      r40.z = samp0[]..swiz;
                      r40.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r8.w, l(84), t12.xyzw
                      r41.x = samp0[]..swiz;
                      r41.y = samp0[]..swiz;
                      r41.z = samp0[]..swiz;
                      r41.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r8.w, l(132), t12.xyzw
                      r42.x = samp0[]..swiz;
                      r42.y = samp0[]..swiz;
                      r42.z = samp0[]..swiz;
                      r42.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r8.w, l(148), t12.xyzw
                      r43.x = samp0[]..swiz;
                      r43.y = samp0[]..swiz;
                      r43.z = samp0[]..swiz;
                      r43.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xy, r8.w, l(164), t12.xyxx
                      r44.x = samp0[]..swiz;
                      r44.y = samp0[]..swiz;
                        r40.x = dot(r40.xyzw, r19.xyzw);
                        r40.y = dot(r41.xyzw, r19.xyzw);
                        r19.xy = r40.xy / r18.xx;
                        r19.xy = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                        r19.xy = r19.xy + r43.zw;
                        r19.xy = r19.xy * r43.xy;
                        r40.xy = r10.ww / r42.xz;
                        r40.zw = float2(1,1) + -r40.xy;
                        r40.zw = cmp(r19.xy >= r40.zw);
                        r40.xy = cmp(r40.xy >= r19.xy);
                        r40.xy = (int2)r40.xy | (int2)r40.zw;
                        r18.z = (int)r40.y | (int)r40.x;
                        r19.xy = saturate(r19.xy);
                        r19.xy = r19.xy * r42.xz + r42.yw;
                        r25.w = r44.y * r18.x;
                        r15.w = r44.x * r18.x + r15.w;
                        r15.w = r15.w / r25.w;
                      } else {
                        r18.z = -1;
                      }
                      r18.x = (int)r18.y | (int)r18.z;
                      if (r18.x == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.w, r8.w, l(28), t12.xxxx
                      r8.w = samp0[]..swiz;
                        r15.w = max(6.10351563e-05, r15.w);
                        r8.w = (int)r8.w & 0x0000ffff;
                        if (r5.w != 0) {
                          r18.z = (uint)r8.w;
                          r25.w = 0;
                          r26.w = 0;
                          while (true) {
                            r27.w = cmp((int)r26.w >= 8);
                            if (r27.w != 0) break;
                            r40.x = dot(icb[r26.w+0].xy, r8.xy);
                            r40.y = dot(icb[r26.w+0].yx, r8.xz);
                            r18.xy = r40.xy * r10.ww + r19.xy;
                            r18.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r15.w).x;
                            r25.w = r18.x * 0.125 + r25.w;
                            r26.w = (int)r26.w + 1;
                          }
                        } else {
                          r19.z = (uint)r8.w;
                          r25.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r15.w).x;
                        }
                        r8.w = r25.w * r25.w;
                        r8.w = r8.w * r25.w;
                      } else {
                        r8.w = 1;
                      }
                      r11.w = r11.w * r8.w;
                    }
                  }
                  r8.w = -r13.w * r3.x + 1;
                  r8.w = r8.w * r8.w;
                  r8.w = -r8.w * 0.620000005 + 0.620000005;
                  r8.w = r8.w + -r13.w;
                  r8.w = r5.y * r8.w + r13.w;
                  r8.w = r8.w * r11.w;
                  r32.x = r31.x;
                  r10.w = cmp(0 < r12.w);
                  r18.xyz = r8.www * r32.xyz + r16.xyz;
                  r8.w = saturate(dot(r2.xyz, r39.xyz));
                  r19.xyz = r38.xyz * r7.www + r4.xyz;
                  r7.w = dot(r19.xyz, r19.xyz);
                  r7.w = rsqrt(r7.w);
                  r19.xyz = r19.xyz * r7.www;
                  r7.w = dot(r19.xyz, r4.xyz);
                  r12.w = dot(r2.xyz, r19.xyz);
                  r13.w = abs(r12.w) * r4.w + -abs(r12.w);
                  r12.w = abs(r12.w) * r13.w + 1;
                  r13.w = r8.w * r0.w + r1.w;
                  r12.w = r12.w * r12.w;
                  r12.w = r12.w * r13.w;
                  r12.w = rcp(r12.w);
                  r8.w = r8.w * r15.z;
                  r8.w = r12.w * r8.w;
                  r8.w = r8.w * r11.w;
                  r19.xyz = r8.www * r32.xyz + r30.xyz;
                  r7.w = saturate(1 + -r7.w);
                  r11.w = r7.w * r7.w;
                  r11.w = r11.w * r11.w;
                  r7.w = r11.w * r7.w;
                  r7.w = r8.w * r7.w;
                  r38.xyz = r7.www * r32.xyz + r29.xyz;
                  r16.xyz = r10.www ? r18.xyz : r16.xyz;
                  r29.xyz = r10.www ? r38.xyz : r29.xyz;
                  r30.xyz = r10.www ? r19.xyz : r30.xyz;
                }
              }
            }
            break;
            case 2 :            r18.xy = r34.zw;
            r18.z = r35.w;
            r18.xyz = -v5.xyz + r18.xyz;
            r7.w = dot(r18.xyz, r18.xyz);
            r7.w = rsqrt(r7.w);
            r19.xyz = r18.xyz * r7.www;
            r8.w = dot(r2.xyz, r19.xyz);
            r10.w = saturate(r8.w);
            r11.w = cmp(0 < r10.w);
            if (r11.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r7.z, l(112), t12.yzwx
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r7.z, l(128), t12.zxyw
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
              r40.xyz = r38.xyz;
              r40.w = r39.y;
              r11.w = dot(r40.xyzw, r17.xyzw);
              r12.w = cmp(r11.w < 1);
              if (r12.w != 0) {
                r19.xyz = float3(1,1,1);
                r12.w = 0;
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r7.z, l(172), t12.yzwx
              r41.x = samp0[]..swiz;
              r41.y = samp0[]..swiz;
              r41.z = samp0[]..swiz;
              r41.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r7.z, l(188), t12.wxyz
              r42.x = samp0[]..swiz;
              r42.y = samp0[]..swiz;
              r42.z = samp0[]..swiz;
              r42.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r7.z, l(204), t12.xyzw
              r43.x = samp0[]..swiz;
              r43.y = samp0[]..swiz;
              r43.z = samp0[]..swiz;
              r43.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.w, r7.z, l(236), t12.xxxx
              r13.w = samp0[]..swiz;
                r44.xyz = -v5.xyz + r31.yzw;
                r15.z = r34.x * r34.x;
                r15.w = dot(r44.xyz, r44.xyz);
                r15.z = r15.z / r15.w;
                r15.z = min(1, r15.z);
                r33.xy = saturate(r11.ww * r33.xz + r33.yw);
                r33.zw = r33.xy * r33.xy;
                r33.xy = r33.xy * float2(-2,-2) + float2(3,3);
                r33.xy = r33.zw * r33.xy;
                r15.z = r33.x * r15.z;
                r15.z = r15.z * r33.y;
                r35.w = r36.x;
                r33.x = dot(r35.xyzw, r17.xyzw);
                r44.xyz = r36.yzw;
                r44.w = r37.w;
                r33.y = dot(r44.xyzw, r17.xyzw);
                r20.xy = r33.xy / r11.ww;
                r11.w = cmp(r41.w < 0.00048828125);
                if (r11.w != 0) {
                  r42.y = r43.x;
                  r33.xy = saturate(abs(r20.xy) * r42.zw + r42.xy);
                  r33.zw = r33.xy * r33.xy;
                  r33.xy = r33.xy * float2(-2,-2) + float2(3,3);
                  r33.xy = r33.zw * r33.xy;
                  r11.w = r33.x * r33.y;
                } else {
                  r41.w = r42.y;
                  r33.xyzw = saturate(r41.xyzw * abs(r20.yyxx));
                  r33.xyzw = log2(r33.xyzw);
                  r33.xyzw = r42.xxxx * r33.xyzw;
                  r33.xyzw = exp2(r33.xyzw);
                  r33.xy = r33.xy + r33.zw;
                  r33.xy = log2(r33.xy);
                  r33.xy = r43.xx * r33.xy;
                  r33.xy = exp2(r33.xy);
                  r15.w = r42.z * r33.x;
                  r26.w = r42.w * r33.y + -1;
                  r15.w = r42.w * r33.y + -r15.w;
                  r15.w = saturate(r26.w / r15.w);
                  r26.w = r15.w * r15.w;
                  r15.w = r15.w * -2 + 3;
                  r11.w = r26.w * r15.w;
                }
                r12.w = r15.z * r11.w;
                r11.w = (int)r13.w & 255;
                if (r11.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyz, r7.z, l(220), t12.xyzx
                r33.x = samp0[]..swiz;
                r33.y = samp0[]..swiz;
                r33.z = samp0[]..swiz;
                  r13.w = dot(r43.yzw, r20.xyz);
                  r15.z = dot(r33.xyz, r20.xyz);
                  r33.x = frac(r13.w);
                  r33.y = frac(r15.z);
                  r11.w = (int)r11.w + -1;
                  r33.z = (uint)r11.w;
                  r19.xyz = gCookieArray.SampleLevel(samplerLinear_s, r33.xyz, 0).xyz;
                } else {
                  r19.xyz = float3(1,1,1);
                }
              }
              r31.yz = r32.yz;
              r19.xyz = r31.xyz * r19.xyz;
              r11.w = cmp(0 < r12.w);
              if (r11.w != 0) {
                if (3 == 0) r11.w = 0; else if (3+27 < 32) {                 r11.w = (uint)r32.w << (32-(3 + 27)); r11.w = (uint)r11.w >> (32-3);                } else r11.w = (uint)r32.w >> 27;
                r11.w = cmp((int)r11.w != 1);
                if (r11.w != 0) {
                  r11.w = abs(r8.w) * -0.200000003 + 0.400000006;
                  r21.xyz = r2.xyz * r11.www + v5.xyz;
                  r38.xyz = r37.xyz;
                  r11.w = dot(r38.xyzw, r21.xyzw);
                  r13.w = dot(r40.xyzw, r21.xyzw);
                  r15.z = cmp(r13.w >= r11.w);
                  if (r15.z != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.y, r7.z, l(144), t12.xxxx
                  r39.y = samp0[]..swiz;
                    r35.w = r36.x;
                    r20.x = dot(r35.xyzw, r21.xyzw);
                    r37.xyz = r36.yzw;
                    r20.y = dot(r37.xyzw, r21.xyzw);
                    r15.zw = r20.xy / r13.ww;
                    r15.zw = saturate(r15.zw * float2(0.5,-0.5) + float2(0.5,0.5));
                    r21.xy = r15.zw * r39.zw + r39.xy;
                    r7.z = r11.w / r13.w;
                    r7.z = max(6.10351563e-05, r7.z);
                    r11.w = (int)r32.w & 0x0000ffff;
                    if (r5.w != 0) {
                      r31.z = (uint)r11.w;
                      r13.w = 0;
                      r15.z = 0;
                      while (true) {
                        r15.w = cmp((int)r15.z >= 8);
                        if (r15.w != 0) break;
                        r20.x = dot(icb[r15.z+0].xy, r24.xy);
                        r20.y = dot(icb[r15.z+0].yx, r24.xz);
                        r31.xy = r20.xy * r34.yy + r21.xy;
                        r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r31.xyz, r7.z).x;
                        r13.w = r15.w * 0.125 + r13.w;
                        r15.z = (int)r15.z + 1;
                      }
                    } else {
                      r21.z = (uint)r11.w;
                      r13.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r7.z).x;
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
                  r11.w = r32.x * r4.w;
                  r11.w = r11.w * r10.w;
                  if (4 == 0) r12.w = 0; else if (4+16 < 32) {                   r12.w = (uint)r32.w << (32-(4 + 16)); r12.w = (uint)r12.w >> (32-4);                  } else r12.w = (uint)r32.w >> 16;
                  r15.z = cmp(0 < (uint)r12.w);
                  r15.z = r3.w ? r15.z : 0;
                  if (r15.z != 0) {
                    r12.w = (int)r12.w + numLights;
                    r12.w = (int)r12.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.z, r12.w, l(52), t12.xxxx
                  r15.z = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r12.w, l(68), t12.xyzw
                  r31.x = samp0[]..swiz;
                  r31.y = samp0[]..swiz;
                  r31.z = samp0[]..swiz;
                  r31.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r12.w, l(84), t12.xyzw
                  r33.x = samp0[]..swiz;
                  r33.y = samp0[]..swiz;
                  r33.z = samp0[]..swiz;
                  r33.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r12.w, l(100), t12.xyzw
                  r34.x = samp0[]..swiz;
                  r34.y = samp0[]..swiz;
                  r34.z = samp0[]..swiz;
                  r34.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r12.w, l(116), t12.xyzw
                  r35.x = samp0[]..swiz;
                  r35.y = samp0[]..swiz;
                  r35.z = samp0[]..swiz;
                  r35.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r12.w, l(132), t12.xyzw
                  r36.x = samp0[]..swiz;
                  r36.y = samp0[]..swiz;
                  r36.z = samp0[]..swiz;
                  r36.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r12.w, l(148), t12.xyzw
                  r37.x = samp0[]..swiz;
                  r37.y = samp0[]..swiz;
                  r37.z = samp0[]..swiz;
                  r37.w = samp0[]..swiz;
                    r15.w = abs(r8.w) * -0.200000003 + 0.400000006;
                    r22.xyz = r2.xyz * r15.www + v5.xyz;
                    r20.x = dot(r31.xyzw, r22.xyzw);
                    r20.y = dot(r33.xyzw, r22.xyzw);
                    r15.w = dot(r34.xyzw, r22.xyzw);
                    r21.x = dot(r35.xyzw, r22.xyzw);
                    r21.y = cmp(r21.x < r15.w);
                    r20.xy = r20.xy / r21.xx;
                    r20.xy = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r20.xy = r20.xy + r37.zw;
                    r20.xy = r20.xy * r37.xy;
                    r22.xy = r15.zz / r36.xz;
                    r31.xy = float2(1,1) + -r22.xy;
                    r31.xy = cmp(r20.xy >= r31.xy);
                    r22.xy = cmp(r22.xy >= r20.xy);
                    r22.xy = (int2)r22.xy | (int2)r31.xy;
                    r21.z = (int)r22.y | (int)r22.x;
                    r21.y = (int)r21.y | (int)r21.z;
                    if (r21.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r21.y, r12.w, l(28), t12.xxxx
                    r21.y = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.xy, r12.w, l(164), t12.xyxx
                    r22.x = samp0[]..swiz;
                    r22.y = samp0[]..swiz;
                      r20.xy = saturate(r20.xy);
                      r31.xy = r20.xy * r36.xz + r36.yw;
                      r12.w = r22.y * r21.x;
                      r15.w = r22.x * r21.x + r15.w;
                      r12.w = r15.w / r12.w;
                      r12.w = max(6.10351563e-05, r12.w);
                      r15.w = r21.y ? 0.000000 : 0;
                      if (r5.w != 0) {
                        r21.z = (uint)r15.w;
                        r20.xy = float2(0,0);
                        while (true) {
                          r22.x = cmp((int)r20.y >= 8);
                          if (r22.x != 0) break;
                          r22.x = dot(icb[r20.y+0].xy, r25.xy);
                          r22.y = dot(icb[r20.y+0].yx, r25.xz);
                          r21.xy = r22.xy * r15.zz + r31.xy;
                          r21.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r12.w).x;
                          r20.x = r21.x * 0.125 + r20.x;
                          r20.y = (int)r20.y + 1;
                        }
                      } else {
                        r31.z = (uint)r15.w;
                        r20.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r31.xyz, r12.w).x;
                      }
                      r12.w = r20.x * r20.x;
                      r12.w = r12.w * r20.x;
                    } else {
                      r12.w = 1;
                    }
                    r7.z = r12.w * r7.z;
                  } else {
                    if (4 == 0) r12.w = 0; else if (4+20 < 32) {                     r12.w = (uint)r32.w << (32-(4 + 20)); r12.w = (uint)r12.w >> (32-4);                    } else r12.w = (uint)r32.w >> 20;
                    r15.z = cmp(0 < (uint)r12.w);
                    r15.z = r2.w ? r15.z : 0;
                    if (r15.z != 0) {
                      r12.w = (int)r12.w + numLights;
                      r12.w = (int)r12.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.z, r12.w, l(52), t12.xxxx
                    r15.z = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r12.w, l(68), t12.xyzw
                    r31.x = samp0[]..swiz;
                    r31.y = samp0[]..swiz;
                    r31.z = samp0[]..swiz;
                    r31.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r12.w, l(84), t12.xyzw
                    r32.x = samp0[]..swiz;
                    r32.y = samp0[]..swiz;
                    r32.z = samp0[]..swiz;
                    r32.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r12.w, l(100), t12.xyzw
                    r33.x = samp0[]..swiz;
                    r33.y = samp0[]..swiz;
                    r33.z = samp0[]..swiz;
                    r33.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r12.w, l(116), t12.xyzw
                    r34.x = samp0[]..swiz;
                    r34.y = samp0[]..swiz;
                    r34.z = samp0[]..swiz;
                    r34.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r12.w, l(132), t12.xyzw
                    r35.x = samp0[]..swiz;
                    r35.y = samp0[]..swiz;
                    r35.z = samp0[]..swiz;
                    r35.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r12.w, l(148), t12.xyzw
                    r36.x = samp0[]..swiz;
                    r36.y = samp0[]..swiz;
                    r36.z = samp0[]..swiz;
                    r36.w = samp0[]..swiz;
                      r15.w = abs(r8.w) * -0.200000003 + 0.400000006;
                      r23.xyz = r2.xyz * r15.www + v5.xyz;
                      r21.x = dot(r31.xyzw, r23.xyzw);
                      r21.y = dot(r32.xyzw, r23.xyzw);
                      r15.w = dot(r33.xyzw, r23.xyzw);
                      r20.y = dot(r34.xyzw, r23.xyzw);
                      r21.z = cmp(r20.y < r15.w);
                      r21.xy = r21.xy / r20.yy;
                      r21.xy = r21.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r21.xy = r21.xy + r36.zw;
                      r21.xy = r21.xy * r36.xy;
                      r22.xy = r15.zz / r35.xz;
                      r23.xy = float2(1,1) + -r22.xy;
                      r23.xy = cmp(r21.xy >= r23.xy);
                      r22.xy = cmp(r22.xy >= r21.xy);
                      r22.xy = (int2)r22.xy | (int2)r23.xy;
                      r22.x = (int)r22.y | (int)r22.x;
                      r21.z = (int)r21.z | (int)r22.x;
                      if (r21.z == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r21.z, r12.w, l(28), t12.xxxx
                      r21.z = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.xy, r12.w, l(164), t12.xyxx
                      r22.x = samp0[]..swiz;
                      r22.y = samp0[]..swiz;
                        r21.xy = saturate(r21.xy);
                        r23.xy = r21.xy * r35.xz + r35.yw;
                        r12.w = r22.y * r20.y;
                        r15.w = r22.x * r20.y + r15.w;
                        r12.w = r15.w / r12.w;
                        r12.w = max(6.10351563e-05, r12.w);
                        r15.w = r21.z ? 0.000000 : 0;
                        if (r5.w != 0) {
                          r21.z = (uint)r15.w;
                          r20.y = 0;
                          r22.x = 0;
                          while (true) {
                            r22.y = cmp((int)r22.x >= 8);
                            if (r22.y != 0) break;
                            r31.x = dot(icb[r22.x+0].xy, r26.xy);
                            r31.y = dot(icb[r22.x+0].yx, r26.xz);
                            r21.xy = r31.xy * r15.zz + r23.xy;
                            r21.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r12.w).x;
                            r20.y = r21.x * 0.125 + r20.y;
                            r22.x = (int)r22.x + 1;
                          }
                        } else {
                          r23.z = (uint)r15.w;
                          r20.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r12.w).x;
                        }
                        r12.w = r20.y * r20.y;
                        r12.w = r12.w * r20.y;
                      } else {
                        r12.w = 1;
                      }
                      r7.z = r12.w * r7.z;
                    }
                  }
                  r12.w = -r10.w * r3.x + 1;
                  r12.w = r12.w * r12.w;
                  r12.w = -r12.w * 0.620000005 + 0.620000005;
                  r12.w = r12.w + -r10.w;
                  r12.w = r5.y * r12.w + r10.w;
                  r12.w = r12.w * r7.z;
                  r8.w = cmp(0 < r8.w);
                  r21.xyz = r12.www * r19.xyz + r16.xyz;
                  r18.xyz = r18.xyz * r7.www + r4.xyz;
                  r7.w = dot(r18.xyz, r18.xyz);
                  r7.w = rsqrt(r7.w);
                  r18.xyz = r18.xyz * r7.www;
                  r7.w = dot(r18.xyz, r4.xyz);
                  r12.w = dot(r2.xyz, r18.xyz);
                  r15.z = abs(r12.w) * r4.w + -abs(r12.w);
                  r12.w = abs(r12.w) * r15.z + 1;
                  r10.w = r10.w * r0.w + r1.w;
                  r12.w = r12.w * r12.w;
                  r10.w = r12.w * r10.w;
                  r10.w = rcp(r10.w);
                  r10.w = r10.w * r11.w;
                  r7.z = r10.w * r7.z;
                  r7.z = 0.25 * r7.z;
                  r18.xyz = r7.zzz * r19.xyz + r30.xyz;
                  r7.w = saturate(1 + -r7.w);
                  r10.w = r7.w * r7.w;
                  r10.w = r10.w * r10.w;
                  r7.w = r10.w * r7.w;
                  r7.z = r7.z * r7.w;
                  r19.xyz = r7.zzz * r19.xyz + r29.xyz;
                  r16.xyz = r8.www ? r21.xyz : r16.xyz;
                  r29.xyz = r8.www ? r19.xyz : r29.xyz;
                  r30.xyz = r8.www ? r18.xyz : r30.xyz;
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
    r3.z = (int)r3.z + 32;
  }
  r2.xyz = float3(1,1,1) + -r1.xyz;
  r2.xyz = r27.xyz * r2.xyz;
  r1.xyz = r28.xyz * r1.xyz + r2.xyz;
  r0.xyz = r9.yzw * r0.xyz + r1.xyz;
  r0.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.w != 0) {
    r0.w = dot(v5.xyz, v5.xyz);
    r1.x = rsqrt(r0.w);
    r1.xyz = v5.xyz * r1.xxx;
    r0.w = sqrt(r0.w);
    r1.w = cmp(0 < fogConstants.blendAmount);
    if (r1.w != 0) {
      r2.xy = r0.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r2.xy = fogConstants.atmospherefogdensityatcamera.xy * r2.xy;
      r1.w = cmp(0.00999999978 < abs(v5.z));
      r2.zw = fogConstants.atmospherefogheightdensityscale.xy * v5.zz;
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
      r2.w = cmp(0.00999999978 < abs(v5.z));
      r3.x = fogConstants.atmospherefogheightdensityscale.x * v5.z;
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
    r0.w = fogConstants.heightFalloff * v5.z;
    r1.w = fogConstants.heightFalloff * v5.z + fogConstants.K0;
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
    r1.w = dot(v5.xyz, v5.xyz);
    r2.x = sqrt(r1.w);
    r0.w = r0.w * r2.x + fogConstants.expAdd;
    r0.w = exp2(r0.w);
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r1.w = rsqrt(r1.w);
    r2.xyz = v5.xyz * r1.www;
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