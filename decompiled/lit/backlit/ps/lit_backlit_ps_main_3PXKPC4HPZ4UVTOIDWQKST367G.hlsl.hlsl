// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:32:06 2021

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
  float3 backlightScatterColor : packoffset(c13);
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
Texture2D<float4> specColorMap : register(t21);
Texture2D<float4> normalMap : register(t22);
StructuredBuffer<gSunShadowTree> gSunShadowTree : register(t23);
Texture2D<float4> glossMap : register(t24);
Texture2D<float4> aoMap : register(t25);
Texture2D<float4> thicknessMap : register(t26);
Texture2DArray<float> gTransShadowmapArray : register(t31);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float3 v1 : COLOR0,
  float w1 : COLOR1,
  float4 v2 : TEXCOORD0,
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
// unknown dcl_: dcl_resource_structured t11, 80
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t12, 240
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t15, 224
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t16, 96
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t23, 4
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45,r46,r47,r48;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = colorMap.Sample(colorSampler_s, v2.xy).xyzw;
  r1.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r1.xyz = r0.www * r1.xyz + float3(1,1,1);
  r0.xyz = r1.xyz * r0.xyz;
  r0.xyz = v1.xyz * r0.xyz;
  o0.w = w1.x * r0.w;
  r1.xyz = specColorMap.Sample(specColorSampler_s, v2.xy).xyz;
  r0.w = aoMap.Sample(aoSampler_s, v2.xy).x;
  r1.w = glossMap.Sample(specColorSampler_s, v2.xy).x;
  r2.x = glossRange.y + -glossRange.x;
  r1.w = r1.w * r2.x + glossRange.x;
  r1.w = saturate(0.0588235296 * r1.w);
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
  r3.x = v7.x ? 1 : -1;
  r3.y = dot(v3.xyz, v3.xyz);
  r3.y = rsqrt(r3.y);
  r3.yzw = v3.xyz * r3.yyy;
  r3.yzw = r3.yzw * r3.xxx;
  r4.x = dot(v4.xyz, v4.xyz);
  r4.x = rsqrt(r4.x);
  r4.xyz = v4.xyz * r4.xxx;
  r4.xyz = r4.xyz * r3.xxx;
  r4.w = dot(v5.xyz, v5.xyz);
  r4.w = rsqrt(r4.w);
  r5.xyz = v5.xyz * r4.www;
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
  r1.w = thicknessMap.Sample(colorSampler_s, v2.xy).x;
  r1.w = 1 + -r1.w;
  r3.xyz = backlightScatterColor.xyz * r1.www;
  r3.xyz = r3.xyz * r1.xyz;
  r4.xy = (uint2)v0.xy;
  r1.w = cmp(v0.z >= 0.984375);
  r3.w = 1.01587307 * v0.z;
  r4.z = v0.z * 64 + -63;
  r1.w = r1.w ? r4.z : r3.w;
  r1.w = max(9.99999994e-09, r1.w);
  r1.w = rcp(r1.w);
  r3.w = dot(-v6.xyz, -v6.xyz);
  r3.w = rsqrt(r3.w);
  r5.xyz = -v6.xyz * r3.www;
  r4.z = cmp(isDepthHack != 0);
  r6.zw = (uint2)r4.yx;
  r4.w = dot(r6.wz, float2(0.0671105608,0.00583714992));
  r4.w = frac(r4.w);
  r4.w = 52.9829178 * r4.w;
  r4.w = frac(r4.w);
  r4.w = r4.w * 6.28318548 + gameTick.w;
  sincos(r4.w, r7.x, r8.x);
  r4.w = dot(r6.zw, float2(0.0671105608,0.00583714992));
  r4.w = frac(r4.w);
  r4.w = 52.9829178 * r4.w;
  r4.w = frac(r4.w);
  r4.w = r4.w * 6.28318548 + gameTick.w;
  sincos(r4.w, r9.x, r10.x);
  r6.x = saturate(dot(r2.xyz, r5.xyz));
  r4.w = dot(-r5.xyz, r2.xyz);
  r4.w = r4.w + r4.w;
  r11.xyz = r2.xyz * -r4.www + -r5.xyz;
  r4.w = 17 * r6.y;
  r4.w = exp2(r4.w);
  r4.w = 2 + r4.w;
  r4.w = 2 / r4.w;
  r5.w = sqrt(r4.w);
  r6.z = 1 + -r6.y;
  r6.w = 5 * r6.z;
  r7.z = r6.z * 5 + -2.5;
  r7.z = 0.400000006 * r7.z;
  r7.z = max(0, r7.z);
  r9.yz = -r6.zz * float2(10,5) + float2(6.85740995,7.08500004);
  r7.w = exp2(r9.y);
  r7.w = r7.w * r6.x;
  r7.zw = float2(100,9.1368103) * r7.zw;
  r8.w = r6.w * r6.z;
  r8.w = -r8.w * 2.0159049 + r9.z;
  r8.w = exp2(r8.w);
  r8.w = r8.w * r6.x;
  r8.w = 9.70808983 * r8.w;
  r7.w = max(r8.w, r7.w);
  r7.w = max(1.26815999, r7.w);
  r8.w = numRefProbes + -numOverrideProbes;
  r1.w = 0.0078125 * r1.w;
  r1.w = min(15, r1.w);
  r1.w = (uint)r1.w;
  r12.xy = (uint2)r4.xy >> int2(6,6);
  r12.z = (uint)r1.w << 4;
  r1.w = (int)r8.w & -32;
  r4.x = (int)-r1.w + (int)r8.w;
  r4.y = numRefProbes & -32;
  r9.y = (int)-r4.y + numRefProbes;
  r13.xy = float2(0,0);
  r14.w = 0;
  r15.yz = float2(0,1);
  r16.xy = float2(0,0);
  r17.x = 1;
  r18.xy = float2(0,0);
  r19.xy = float2(0,0);
  r20.xyzw = float4(0,0,0,0);
  r21.yzw = float3(0,0,0);
  r9.z = r1.w;
  while (true) {
    r9.w = cmp((uint)r9.z >= numRefProbes);
    if (r9.w != 0) break;
    r13.z = (uint)r9.z >> 5;
    r14.xyz = (int3)r12.xyz + (int3)r13.xyz;
    r9.w = visibleProbes.Load(r14.xyzw).x;
    r10.y = cmp((int)r1.w == (int)r9.z);
    bitmask.z = ((~(-1 << r4.x)) << 0) & 0xffffffff;  r10.z = (((uint)0 << 0) & bitmask.z) | ((uint)r9.w & ~bitmask.z);
    r9.w = r10.y ? r10.z : r9.w;
    r10.y = cmp((int)r4.y == (int)r9.z);
    if (r9.y == 0) r10.z = 0; else if (r9.y+0 < 32) {     r10.z = (uint)r9.w << (32-(r9.y + 0)); r10.z = (uint)r10.z >> (32-r9.y);    } else r10.z = (uint)r9.w >> 0;
    r9.w = r10.y ? r10.z : r9.w;
    r10.y = (int)r9.z + numLights;
    r22.xyzw = r20.xyzw;
    r23.xyz = r21.yzw;
    r10.z = r9.w;
    while (true) {
      if (r10.z == 0) break;
      r10.w = firstbitlow((uint)r10.z);
      r12.w = 1 << (int)r10.w;
      r13.z = (int)r10.z & (int)r12.w;
      if (r13.z != 0) {
        r10.z = (int)r10.z ^ (int)r12.w;
        r12.w = (int)r10.w + (int)r10.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r24.xyzw, r12.w, l(0), t11.xyzw
      r24.x = samp0[]..swiz;
      r24.y = samp0[]..swiz;
      r24.z = samp0[]..swiz;
      r24.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r14.xy, r12.w, l(16), t11.xyxx
      r14.x = samp0[]..swiz;
      r14.y = samp0[]..swiz;
        r24.xyz = -v6.xyz + r24.xyz;
        r14.z = r24.w;
        r14.xyz = cmp(abs(r24.xyz) < r14.zxy);
        r12.w = r14.y ? r14.x : 0;
        r12.w = r14.z ? r12.w : 0;
        if (r12.w != 0) {
          r10.w = (int)r9.z + (int)r10.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r10.w, l(0), t15.wxyz
        r24.x = samp0[]..swiz;
        r24.y = samp0[]..swiz;
        r24.z = samp0[]..swiz;
        r24.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r13.zw, r10.w, l(96), t15.xxxy
        r13.z = samp0[]..swiz;
        r13.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r10.w, l(116), t15.zwxy
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        r25.z = samp0[]..swiz;
        r25.w = samp0[]..swiz;
          r14.xyz = v6.xyz + -r24.yzw;
          r12.w = (int)r25.w & 0x0000ffff;
          if (6 == 0) r15.w = 0; else if (6+25 < 32) {           r15.w = (uint)r25.w << (32-(6 + 25)); r15.w = (uint)r15.w >> (32-6);          } else r15.w = (uint)r25.w >> 25;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r12.w, l(0), t16.xyzw
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
        r26.z = samp0[]..swiz;
        r26.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r12.w, l(16), t16.xyzw
        r27.x = samp0[]..swiz;
        r27.y = samp0[]..swiz;
        r27.z = samp0[]..swiz;
        r27.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r12.w, l(32), t16.xyzw
        r28.x = samp0[]..swiz;
        r28.y = samp0[]..swiz;
        r28.z = samp0[]..swiz;
        r28.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r12.w, l(48), t16.xyzw
        r29.x = samp0[]..swiz;
        r29.y = samp0[]..swiz;
        r29.z = samp0[]..swiz;
        r29.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r12.w, l(64), t16.xyzw
        r30.x = samp0[]..swiz;
        r30.y = samp0[]..swiz;
        r30.z = samp0[]..swiz;
        r30.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r12.w, l(80), t16.xyzw
        r31.x = samp0[]..swiz;
        r31.y = samp0[]..swiz;
        r31.z = samp0[]..swiz;
        r31.w = samp0[]..swiz;
          r16.w = dot(r26.xyz, r14.xyz);
          r16.w = saturate(r16.w + r26.w);
          r17.z = dot(r27.xyz, r14.xyz);
          r17.z = saturate(r17.z + r27.w);
          r16.w = r17.z * r16.w;
          r17.z = dot(r28.xyz, r14.xyz);
          r17.z = saturate(r17.z + r28.w);
          r16.w = r17.z * r16.w;
          r17.z = dot(r29.xyz, r14.xyz);
          r17.z = saturate(r17.z + r29.w);
          r16.w = r17.z * r16.w;
          r17.z = dot(r30.xyz, r14.xyz);
          r17.z = saturate(r17.z + r30.w);
          r16.w = r17.z * r16.w;
          r17.z = dot(r31.xyz, r14.xyz);
          r17.z = saturate(r17.z + r31.w);
          r15.x = r17.z * r16.w;
          r16.w = (int)r13.z & 1;
          r17.zw = r16.ww ? r15.xy : r15.zx;
          r15.x = r13.z;
          r26.xy = r17.zw;
          r16.w = 1;
          while (true) {
            r18.w = cmp((int)r16.w >= (int)r15.w);
            if (r18.w != 0) break;
            r18.w = (int)r12.w + (int)r16.w;
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
            r18.w = dot(r27.xyz, r14.xyz);
            r18.w = saturate(r18.w + r27.w);
            r18.w = r26.x * r18.w;
            r19.w = dot(r28.xyz, r14.xyz);
            r19.w = saturate(r19.w + r28.w);
            r18.w = r19.w * r18.w;
            r19.w = dot(r29.xyz, r14.xyz);
            r19.w = saturate(r19.w + r29.w);
            r18.w = r19.w * r18.w;
            r19.w = dot(r30.xyz, r14.xyz);
            r19.w = saturate(r19.w + r30.w);
            r18.w = r19.w * r18.w;
            r19.w = dot(r31.xyz, r14.xyz);
            r19.w = saturate(r19.w + r31.w);
            r18.w = r19.w * r18.w;
            r19.w = dot(r32.xyz, r14.xyz);
            r19.w = saturate(r19.w + r32.w);
            r26.x = r19.w * r18.w;
            r24.w = (uint)r15.x >> 2;
            if (1 == 0) r26.z = 0; else if (1+2 < 32) {             r26.z = (uint)r15.x << (32-(1 + 2)); r26.z = (uint)r26.z >> (32-1);            } else r26.z = (uint)r15.x >> 2;
            r26.w = (int)r24.w & 2;
            r27.x = max(r26.y, r26.x);
            r18.w = -r18.w * r19.w + 1;
            r18.w = r26.y * r18.w;
            r17.y = r26.w ? r18.w : r27.x;
            r26.xy = r26.zz ? r26.xy : r17.xy;
            r16.w = (int)r16.w + 1;
            r15.x = r24.w;
          }
          r26.y = saturate(r26.y);
          r12.w = r26.y * r13.w;
          r13.z = cmp(0 < r12.w);
          if (r13.z != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r10.w, l(16), t15.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r10.w, l(32), t15.yxwz
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r10.w, l(48), t15.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r10.w, l(64), t15.zwxy
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r10.w, l(80), t15.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r10.w, l(132), t15.zwxy
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r10.w, l(148), t15.zwxy
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r10.w, l(164), t15.zwxy
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r10.w, l(180), t15.zwxy
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r10.w, l(196), t15.xyzw
          r36.x = samp0[]..swiz;
          r36.y = samp0[]..swiz;
          r36.z = samp0[]..swiz;
          r36.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xy, r10.w, l(212), t15.xyxx
          r37.x = samp0[]..swiz;
          r37.y = samp0[]..swiz;
            r23.z = r26.y * r13.w + r23.z;
            r10.w = r12.w * r25.z;
            r25.z = r32.z;
            r12.w = dot(r11.xyz, r25.xyz);
            r13.z = dot(r14.xyz, r25.xyz);
            r13.z = r13.z + -r32.w;
            r13.w = cmp(r13.z >= 0);
            r13.z = max(abs(r13.z), r7.z);
            r13.z = r13.w ? r13.z : -r13.z;
            r12.w = max(1.00000001e-07, -r12.w);
            r12.w = r13.z / r12.w;
            r12.w = min(131072, abs(r12.w));
            r32.z = r33.z;
            r13.z = dot(r11.xyz, r32.xyz);
            r13.w = dot(r14.xyz, r32.xyz);
            r13.w = r13.w + -r33.w;
            r15.x = cmp(r13.w >= 0);
            r13.w = max(abs(r13.w), r7.z);
            r13.w = r15.x ? r13.w : -r13.w;
            r13.z = max(1.00000001e-07, -r13.z);
            r13.z = r13.w / r13.z;
            r12.w = min(abs(r13.z), r12.w);
            r33.z = r34.z;
            r13.z = dot(r11.xyz, r33.xyz);
            r13.w = dot(r14.xyz, r33.xyz);
            r13.w = r13.w + -r34.w;
            r15.x = cmp(r13.w >= 0);
            r13.w = max(abs(r13.w), r7.z);
            r13.w = r15.x ? r13.w : -r13.w;
            r13.z = max(1.00000001e-07, -r13.z);
            r13.z = r13.w / r13.z;
            r12.w = min(abs(r13.z), r12.w);
            r34.z = r35.z;
            r13.z = dot(r11.xyz, r34.xyz);
            r13.w = dot(r14.xyz, r34.xyz);
            r13.w = r13.w + -r35.w;
            r15.x = cmp(r13.w >= 0);
            r13.w = max(abs(r13.w), r7.z);
            r13.w = r15.x ? r13.w : -r13.w;
            r13.z = max(1.00000001e-07, -r13.z);
            r13.z = r13.w / r13.z;
            r12.w = min(abs(r13.z), r12.w);
            r35.z = r36.x;
            r13.z = dot(r11.xyz, r35.xyz);
            r13.w = dot(r14.xyz, r35.xyz);
            r13.w = r13.w + -r36.y;
            r15.x = cmp(r13.w >= 0);
            r13.w = max(abs(r13.w), r7.z);
            r13.w = r15.x ? r13.w : -r13.w;
            r13.z = max(1.00000001e-07, -r13.z);
            r13.z = r13.w / r13.z;
            r12.w = min(abs(r13.z), r12.w);
            r37.zw = r36.zw;
            r13.z = dot(r11.zxy, r37.xzw);
            r13.w = dot(r14.zxy, r37.xzw);
            r13.w = r13.w + -r37.y;
            r15.x = cmp(r13.w >= 0);
            r13.w = max(abs(r13.w), r7.z);
            r13.w = r15.x ? r13.w : -r13.w;
            r13.z = max(1.00000001e-07, -r13.z);
            r13.z = r13.w / r13.z;
            r12.w = min(abs(r13.z), r12.w);
            r25.x = r29.w;
            r25.yz = r30.zw;
            r17.yzw = r25.xyz + r14.xyz;
            r17.yzw = r11.xyz * r12.www + r17.yzw;
            r13.z = dot(r17.yzw, r17.yzw);
            r13.z = sqrt(r13.z);
            r12.w = r12.w / r13.z;
            r12.w = r12.w + r12.w;
            r12.w = sqrt(r12.w);
            r12.w = r6.z * 5 + r12.w;
            r12.w = -0.844799995 + r12.w;
            r24.y = r27.z;
            r24.z = r28.x;
            r32.x = dot(r17.yzw, r24.xyz);
            r25.xy = r27.xw;
            r25.z = r28.w;
            r32.y = dot(r17.yzw, r25.xyz);
            r28.x = r27.y;
            r32.z = dot(r17.yzw, r28.xyz);
            if (9 == 0) r13.z = 0; else if (9+16 < 32) {             r13.z = (uint)r25.w << (32-(9 + 16)); r13.z = (uint)r13.z >> (32-9);            } else r13.z = (uint)r25.w >> 16;
            r32.w = (uint)r13.z;
            r17.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r32.xyzw, r12.w).xyz;
            r27.x = dot(r14.xyz, r24.xyz);
            r27.y = dot(r14.xyz, r25.xyz);
            r27.z = dot(r14.xyz, r28.xyz);
            r14.xyz = saturate(r27.xyz * r29.xyz + float3(0.5,0.5,0.5));
            r30.z = r31.x;
            r14.xyz = r14.xyz * r30.xyz + r31.yzw;
            r32.x = dot(r2.xyz, r24.xyz);
            r32.y = dot(r2.xyz, r25.xyz);
            r32.z = dot(r2.xyz, r28.xyz);
            r24.xyz = cmp(float3(0,0,0) < r32.xyz);
            r16.z = r24.x ? 0 : 0.5;
            r25.xyz = r16.xyz + r14.xyz;
            r25.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
            r26.xzw = r32.xyz * r32.xyz;
            r26.xzw = r26.xzw * r10.www;
            r18.z = r24.y ? 0 : 0.5;
            r24.xyw = r18.xyz + r14.xyz;
            r24.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r24.xyw, 0).xyz;
            r24.xyw = r24.xyw * r26.zzz;
            r24.xyw = r25.xyz * r26.xxx + r24.xyw;
            r19.z = r24.z ? 0 : 0.5;
            r14.xyz = r19.xyz + r14.xyz;
            r14.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r14.xyz, 0).xyz;
            r14.xyz = r14.xyz * r26.www + r24.xyw;
            r24.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r32.xyzw, 6).xyz;
            r25.xyz = r24.xyz * r14.xyz;
            r12.w = dot(r25.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r22.xyz = r14.xyz * r24.xyz + r22.xyz;
            r13.z = r12.w * r7.w;
            r14.xyz = r17.yzw * r10.www;
            r10.w = dot(r14.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r10.w = r7.w * r12.w + r10.w;
            r10.w = r13.z / r10.w;
            r24.x = r22.w;
            r24.yz = r23.xy;
            r23.xyw = r14.yzx * r10.www + r24.yzx;
            r22.w = r23.w;
          }
        }
      }
    }
    r20.xyzw = r22.xyzw;
    r21.yzw = r23.xyz;
    r9.z = (int)r9.z + 32;
  }
  r4.y = cmp(r21.w < 1);
  if (r4.y != 0) {
    r13.xy = float2(0,0);
    r14.w = 0;
    r15.yz = float2(0,1);
    r16.xy = float2(0,0);
    r17.x = 1;
    r18.xy = float2(0,0);
    r19.xy = float2(0,0);
    r22.x = r20.w;
    r22.yzw = r21.yzw;
    r9.yzw = r20.xyz;
    r4.y = r21.w;
    r10.y = 0;
    while (true) {
      r10.z = cmp((uint)r10.y >= (uint)r8.w);
      if (r10.z != 0) break;
      r13.z = (uint)r10.y >> 5;
      r14.xyz = (int3)r12.xyz + (int3)r13.xyz;
      r10.z = visibleProbes.Load(r14.xyzw).x;
      r10.w = cmp((int)r1.w == (int)r10.y);
      if (r4.x == 0) r12.w = 0; else if (r4.x+0 < 32) {       r12.w = (uint)r10.z << (32-(r4.x + 0)); r12.w = (uint)r12.w >> (32-r4.x);      } else r12.w = (uint)r10.z >> 0;
      r10.z = r10.w ? r12.w : r10.z;
      r10.w = (int)r10.y + numLights;
      r23.xyzw = r22.xyzw;
      r14.xyz = r9.yzw;
      r12.w = r4.y;
      r13.z = r10.z;
      while (true) {
        if (r13.z == 0) break;
        r13.w = firstbitlow((uint)r13.z);
        r15.w = 1 << (int)r13.w;
        r16.w = (int)r13.z & (int)r15.w;
        if (r16.w != 0) {
          r13.z = (int)r13.z ^ (int)r15.w;
          r15.w = (int)r10.w + (int)r13.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r24.xyzw, r15.w, l(0), t11.xyzw
        r24.x = samp0[]..swiz;
        r24.y = samp0[]..swiz;
        r24.z = samp0[]..swiz;
        r24.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r25.xy, r15.w, l(16), t11.xyxx
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
          r24.xyz = -v6.xyz + r24.xyz;
          r25.z = r24.w;
          r24.xyz = cmp(abs(r24.xyz) < r25.zxy);
          r15.w = r24.y ? r24.x : 0;
          r15.w = r24.z ? r15.w : 0;
          if (r15.w != 0) {
            r13.w = (int)r10.y + (int)r13.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r13.w, l(0), t15.wxyz
          r24.x = samp0[]..swiz;
          r24.y = samp0[]..swiz;
          r24.z = samp0[]..swiz;
          r24.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r17.zw, r13.w, l(96), t15.xxxy
          r17.z = samp0[]..swiz;
          r17.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r13.w, l(116), t15.zwxy
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
            r26.xyz = v6.xyz + -r24.yzw;
            r15.w = (int)r25.w & 0x0000ffff;
            if (6 == 0) r16.w = 0; else if (6+25 < 32) {             r16.w = (uint)r25.w << (32-(6 + 25)); r16.w = (uint)r16.w >> (32-6);            } else r16.w = (uint)r25.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r15.w, l(0), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r15.w, l(16), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r15.w, l(32), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r15.w, l(48), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r15.w, l(64), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r15.w, l(80), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
            r18.w = dot(r27.xyz, r26.xyz);
            r18.w = saturate(r18.w + r27.w);
            r19.w = dot(r28.xyz, r26.xyz);
            r19.w = saturate(r19.w + r28.w);
            r18.w = r19.w * r18.w;
            r19.w = dot(r29.xyz, r26.xyz);
            r19.w = saturate(r19.w + r29.w);
            r18.w = r19.w * r18.w;
            r19.w = dot(r30.xyz, r26.xyz);
            r19.w = saturate(r19.w + r30.w);
            r18.w = r19.w * r18.w;
            r19.w = dot(r31.xyz, r26.xyz);
            r19.w = saturate(r19.w + r31.w);
            r18.w = r19.w * r18.w;
            r19.w = dot(r32.xyz, r26.xyz);
            r19.w = saturate(r19.w + r32.w);
            r15.x = r19.w * r18.w;
            r18.w = (int)r17.z & 1;
            r27.xy = r18.ww ? r15.xy : r15.zx;
            r15.x = r17.z;
            r28.xy = r27.xy;
            r18.w = 1;
            while (true) {
              r19.w = cmp((int)r18.w >= (int)r16.w);
              if (r19.w != 0) break;
              r19.w = (int)r15.w + (int)r18.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r19.w, l(0), t16.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r19.w, l(16), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r19.w, l(32), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r19.w, l(48), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r19.w, l(64), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r19.w, l(80), t16.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
              r19.w = dot(r29.xyz, r26.xyz);
              r19.w = saturate(r19.w + r29.w);
              r19.w = r28.x * r19.w;
              r24.w = dot(r30.xyz, r26.xyz);
              r24.w = saturate(r24.w + r30.w);
              r19.w = r24.w * r19.w;
              r24.w = dot(r31.xyz, r26.xyz);
              r24.w = saturate(r24.w + r31.w);
              r19.w = r24.w * r19.w;
              r24.w = dot(r32.xyz, r26.xyz);
              r24.w = saturate(r24.w + r32.w);
              r19.w = r24.w * r19.w;
              r24.w = dot(r33.xyz, r26.xyz);
              r24.w = saturate(r24.w + r33.w);
              r19.w = r24.w * r19.w;
              r24.w = dot(r34.xyz, r26.xyz);
              r24.w = saturate(r24.w + r34.w);
              r28.x = r24.w * r19.w;
              r26.w = (uint)r15.x >> 2;
              if (1 == 0) r27.z = 0; else if (1+2 < 32) {               r27.z = (uint)r15.x << (32-(1 + 2)); r27.z = (uint)r27.z >> (32-1);              } else r27.z = (uint)r15.x >> 2;
              r27.w = (int)r26.w & 2;
              r28.z = max(r28.y, r28.x);
              r19.w = -r19.w * r24.w + 1;
              r19.w = r28.y * r19.w;
              r17.y = r27.w ? r19.w : r28.z;
              r28.xy = r27.zz ? r28.xy : r17.xy;
              r18.w = (int)r18.w + 1;
              r15.x = r26.w;
            }
            r15.x = saturate(r28.y + -r12.w);
            r15.w = r15.x * r17.w;
            r16.w = cmp(0 < r15.w);
            if (r16.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r13.w, l(16), t15.xyzw
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r13.w, l(32), t15.yxwz
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r13.w, l(48), t15.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r13.w, l(64), t15.zwxy
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r13.w, l(80), t15.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r13.w, l(132), t15.zwxy
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r13.w, l(148), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r13.w, l(164), t15.zwxy
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r13.w, l(180), t15.zwxy
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r13.w, l(196), t15.xyzw
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xy, r13.w, l(212), t15.xyxx
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
              r23.w = r15.x * r17.w + r23.w;
              r13.w = r15.w * r25.z;
              r25.z = r33.z;
              r15.x = dot(r11.xyz, r25.xyz);
              r15.w = dot(r26.xyz, r25.xyz);
              r15.w = r15.w + -r33.w;
              r16.w = cmp(r15.w >= 0);
              r15.w = max(abs(r15.w), r7.z);
              r15.w = r16.w ? r15.w : -r15.w;
              r15.x = max(1.00000001e-07, -r15.x);
              r15.x = r15.w / r15.x;
              r15.x = min(131072, abs(r15.x));
              r33.z = r34.z;
              r15.w = dot(r11.xyz, r33.xyz);
              r16.w = dot(r26.xyz, r33.xyz);
              r16.w = r16.w + -r34.w;
              r17.y = cmp(r16.w >= 0);
              r16.w = max(abs(r16.w), r7.z);
              r16.w = r17.y ? r16.w : -r16.w;
              r15.w = max(1.00000001e-07, -r15.w);
              r15.w = r16.w / r15.w;
              r15.x = min(r15.x, abs(r15.w));
              r34.z = r35.z;
              r15.w = dot(r11.xyz, r34.xyz);
              r16.w = dot(r26.xyz, r34.xyz);
              r16.w = r16.w + -r35.w;
              r17.y = cmp(r16.w >= 0);
              r16.w = max(abs(r16.w), r7.z);
              r16.w = r17.y ? r16.w : -r16.w;
              r15.w = max(1.00000001e-07, -r15.w);
              r15.w = r16.w / r15.w;
              r15.x = min(r15.x, abs(r15.w));
              r35.z = r36.z;
              r15.w = dot(r11.xyz, r35.xyz);
              r16.w = dot(r26.xyz, r35.xyz);
              r16.w = r16.w + -r36.w;
              r17.y = cmp(r16.w >= 0);
              r16.w = max(abs(r16.w), r7.z);
              r16.w = r17.y ? r16.w : -r16.w;
              r15.w = max(1.00000001e-07, -r15.w);
              r15.w = r16.w / r15.w;
              r15.x = min(r15.x, abs(r15.w));
              r36.z = r37.x;
              r15.w = dot(r11.xyz, r36.xyz);
              r16.w = dot(r26.xyz, r36.xyz);
              r16.w = r16.w + -r37.y;
              r17.y = cmp(r16.w >= 0);
              r16.w = max(abs(r16.w), r7.z);
              r16.w = r17.y ? r16.w : -r16.w;
              r15.w = max(1.00000001e-07, -r15.w);
              r15.w = r16.w / r15.w;
              r15.x = min(r15.x, abs(r15.w));
              r38.zw = r37.zw;
              r15.w = dot(r11.zxy, r38.xzw);
              r16.w = dot(r26.zxy, r38.xzw);
              r16.w = r16.w + -r38.y;
              r17.y = cmp(r16.w >= 0);
              r16.w = max(abs(r16.w), r7.z);
              r16.w = r17.y ? r16.w : -r16.w;
              r15.w = max(1.00000001e-07, -r15.w);
              r15.w = r16.w / r15.w;
              r15.x = min(r15.x, abs(r15.w));
              r25.x = r30.w;
              r25.yz = r31.zw;
              r17.yzw = r25.xyz + r26.xyz;
              r17.yzw = r11.xyz * r15.xxx + r17.yzw;
              r15.w = dot(r17.yzw, r17.yzw);
              r15.w = sqrt(r15.w);
              r15.x = r15.x / r15.w;
              r15.x = r15.x + r15.x;
              r15.x = sqrt(r15.x);
              r15.x = r6.z * 5 + r15.x;
              r15.x = -0.844799995 + r15.x;
              r24.y = r27.z;
              r24.z = r29.x;
              r33.x = dot(r17.yzw, r24.xyz);
              r25.xy = r27.xw;
              r25.z = r29.w;
              r33.y = dot(r17.yzw, r25.xyz);
              r29.x = r27.y;
              r33.z = dot(r17.yzw, r29.xyz);
              if (9 == 0) r15.w = 0; else if (9+16 < 32) {               r15.w = (uint)r25.w << (32-(9 + 16)); r15.w = (uint)r15.w >> (32-9);              } else r15.w = (uint)r25.w >> 16;
              r33.w = (uint)r15.w;
              r17.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, r15.x).xyz;
              r27.x = dot(r26.xyz, r24.xyz);
              r27.y = dot(r26.xyz, r25.xyz);
              r27.z = dot(r26.xyz, r29.xyz);
              r26.xyz = saturate(r27.xyz * r30.xyz + float3(0.5,0.5,0.5));
              r31.z = r32.x;
              r26.xyz = r26.xyz * r31.xyz + r32.yzw;
              r33.x = dot(r2.xyz, r24.xyz);
              r33.y = dot(r2.xyz, r25.xyz);
              r33.z = dot(r2.xyz, r29.xyz);
              r24.xyz = cmp(float3(0,0,0) < r33.xyz);
              r16.z = r24.x ? 0 : 0.5;
              r25.xyz = r26.xyz + r16.xyz;
              r25.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
              r27.xyz = r33.xyz * r33.xyz;
              r27.xyz = r27.xyz * r13.www;
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
              r15.x = dot(r26.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r14.xyz = r24.xyz * r25.xyz + r14.xyz;
              r15.w = r15.x * r7.w;
              r17.yzw = r17.yzw * r13.www;
              r13.w = dot(r17.yzw, float3(0.212599993,0.715200007,0.0722000003));
              r13.w = r7.w * r15.x + r13.w;
              r13.w = r15.w / r13.w;
              r23.xyz = r17.yzw * r13.www + r23.xyz;
            }
          }
        }
      }
      r22.xyzw = r23.xyzw;
      r9.yzw = r14.xyz;
      r10.y = (int)r10.y + 32;
    }
    r21.xyzw = r22.zxyw;
    r20.xyz = r9.yzw;
    r21.xyzw = r21.yzxw;
  } else {
    r21.x = r20.w;
  }
  r1.w = max(1, r21.w);
  r1.w = rcp(r1.w);
  r21.w = saturate(r21.w);
  r9.yzw = r20.xyz * r1.www;
  r10.yzw = r21.xyz * r1.www;
  r4.x = cmp(r21.w < 0.99000001);
  if (r4.x != 0) {
    r4.x = 1 + -r21.w;
    r4.y = sunConstants.globalProbeExposure * r4.x;
    r13.xyz = -globalProbeConstants.data[0].xyz + v6.xyz;
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
    r16.xyz = r16.xyz * r4.yyy;
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
    r9.yzw = r20.xyz * r1.www + r13.xyz;
    r11.w = 0;
    r13.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, r6.w).xyz;
    r1.w = sunConstants.globalProbeExposure * r4.x + -r2.w;
    r1.w = r6.y * r1.w + r2.w;
    r10.yzw = r13.xyz * r1.www + r10.yzw;
  }
  r1.w = r6.x + r0.w;
  r1.w = log2(abs(r1.w));
  r1.w = r5.w * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r1.w + r0.w;
  r1.w = saturate(-1 + r1.w);
  r13.xyz = r9.zwy * r0.www;
  r4.xy = r6.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r4.xy = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r4.xy, 0).xy;
  r6.yzw = r10.yzw * r1.www;
  r9.yzw = r6.yzw * r4.xxx;
  r14.xyz = r6.yzw * r4.yyy;
  r0.w = sqrt(r5.w);
  r0.w = r0.w * 0.5 + 0.5;
  r0.w = r0.w * r0.w;
  r1.w = 0.5 * r0.w;
  r0.w = -r0.w * 0.5 + 1;
  r2.w = r6.x * r0.w + r1.w;
  r0.w = r2.w * r0.w;
  r1.w = r2.w * r1.w;
  r2.w = dot(r2.xyz, sunConstants.wldDir.xyz);
  r4.x = cmp(0 >= abs(r2.w));
  if (r4.x != 0) {
    r4.y = 0;
  }
  if (r4.x == 0) {
    r6.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v6.yyy;
    r6.yzw = v6.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r6.yzw;
    r6.yzw = v6.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r6.yzw;
    r6.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r6.yzw;
    r4.x = -sunConstants.splitDepthOffset + r6.w;
    r4.x = -r4.x * 6.10351563e-05 + 1;
    r7.z = saturate(r4.x);
    r7.z = cmp(r4.x == r7.z);
    if (r7.z != 0) {
      r7.zw = float2(0,0);
      while (true) {
        r8.w = cmp(r7.z >= 3);
        if (r8.w != 0) break;
        r8.w = (uint)r7.z;
        r10.yz = -sunConstants.splitPinTransform[r8.w].xy + r6.yz;
        r10.y = max(abs(r10.y), abs(r10.z));
        r7.w = sunConstants.splitPinTransform[r8.w].z * r10.y;
        r8.w = cmp(r7.w < 1);
        if (r8.w != 0) {
          break;
        }
        r7.z = 1 + r7.z;
        r7.w = 0;
      }
    } else {
      r7.zw = float2(3,0);
    }
    r8.w = cmp(r7.z >= 3);
    if (r8.w != 0) {
      r10.yzw = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r15.xz = rcp(r10.yy);
      r15.y = -r15.z;
      r10.yzw = r6.yzy * r15.xyz + r10.zwz;
      r15.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r10.yzw = max(float3(0,0,0), r10.yzw);
      r10.yzw = min(r10.yzw, r15.xyz);
      r15.xy = sunConstants.sstLightingConstants.coordScale * r10.wz;
      r15.xy = floor(r15.xy);
      r11.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r15.y;
      r11.w = r11.w * sunConstants.sstLightingConstants.coordScale + r15.x;
      r11.w = (uint)r11.w;
      r11.w = (int)r11.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.w, r11.w, l(0), t23.xxxx
    r12.w = samp0[]..swiz;
      r15.x = (int)r12.w & 0x40000000;
      r15.y = (uint)r12.w << 2;
      if (r15.x == 0) {
        r15.x = (int)r12.w & 0x01ffffff;
        r16.x = (int)r11.w + (int)r15.x;
        r11.w = (uint)r12.w >> 25;
        r11.w = (uint)r11.w;
        r10.yzw = r11.www * r10.yzw;
        r10.yzw = frac(r10.yzw);
        r10.yzw = float3(128,128,128) * r10.yzw;
        r10.yzw = (uint3)r10.yzw;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.x, l(0), t23.xxxx
      r16.z = samp0[]..swiz;
        r15.xz = (uint2)r10.wz >> int2(6,6);
        r11.w = (int)r16.z & 0xc0000000;
        r12.w = (int)r16.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.w, r12.w, l(0), t23.xxxx
      r12.w = samp0[]..swiz;
        r12.w = r15.z ? r16.z : r12.w;
        r15.z = (uint)r12.w >> 13;
        r12.w = r15.x ? r15.z : r12.w;
        r12.w = (int)r12.w & 8191;
        r17.x = (int)r12.w + (int)r16.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
      r17.z = samp0[]..swiz;
        r16.y = 0;
        r17.y = 1;
        r15.xzw = r11.www ? r16.xyz : r17.xyz;
        r17.yz = r11.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r18.xy = (uint2)r10.wz >> (uint2)r17.yy;
        r18.xy = (int2)r18.xy & int2(1,1);
        r12.w = (int)r15.w & 0xc0000000;
        r16.w = (int)r15.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.w, r16.w, l(0), t23.xxxx
      r16.w = samp0[]..swiz;
        r16.w = r18.y ? r15.w : r16.w;
        r17.y = (uint)r16.w >> 13;
        r16.w = r18.x ? r17.y : r16.w;
        r16.w = (int)r16.w & 8191;
        r17.x = (int)r15.x + (int)r16.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.x, l(0), t23.xxxx
      r17.w = samp0[]..swiz;
        r15.xzw = r12.www ? r15.xzw : r17.xzw;
        r15.xzw = r11.www ? r16.xyz : r15.xzw;
        r11.w = (int)r15.w & 0xc0000000;
        if (r11.w == 0) {
          r11.w = (int)-r15.z + 6;
          r16.xy = (uint2)r10.wz >> (uint2)r11.ww;
          r11.w = (int)r15.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r12.w = (((uint)r16.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r12.w = (((uint)r16.x << 0) & bitmask.w) | ((uint)r12.w & ~bitmask.w);
          r12.w = (int)r12.w * 10;
          r11.w = (uint)r11.w >> (uint)r12.w;
          r11.w = (int)r11.w & 1023;
          r16.x = (int)r11.w + (int)r15.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.w, r16.x, l(0), t23.xxxx
        r16.w = samp0[]..swiz;
          r16.yz = (int2)r15.zz + int2(1,2);
          r11.w = (int)-r16.y + 6;
          r17.xy = (uint2)r10.wz >> (uint2)r11.ww;
          r11.w = (int)r16.w & 0xc0000000;
          r12.w = (int)r16.w | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r15.z = (((uint)r17.y << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r15.z = (((uint)r17.x << 0) & bitmask.z) | ((uint)r15.z & ~bitmask.z);
          r15.z = (int)r15.z * 10;
          r12.w = (uint)r12.w >> (uint)r15.z;
          r12.w = (int)r12.w & 1023;
          r17.x = (int)r12.w + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
        r17.z = samp0[]..swiz;
          r17.y = r16.z;
          r17.xyz = r11.www ? r16.xyw : r17.xyz;
          r12.w = (int)-r17.y + 6;
          r16.yz = (uint2)r10.wz >> (uint2)r12.ww;
          r12.w = (int)r17.z & 0xc0000000;
          r15.z = (int)r17.z | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r16.z = (((uint)r16.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r16.y = (((uint)r16.y << 0) & bitmask.y) | ((uint)r16.z & ~bitmask.y);
          r16.y = (int)r16.y * 10;
          r15.z = (uint)r15.z >> (uint)r16.y;
          r15.z = (int)r15.z & 1023;
          r18.x = (int)r15.z + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.y, r18.x, l(0), t23.xxxx
        r18.y = samp0[]..swiz;
          r16.yz = r12.ww ? r17.xz : r18.xy;
          r15.xw = r11.ww ? r16.xw : r16.yz;
        }
        r11.w = (int)r15.w & 0xc0000000;
        if (r11.w == 0) {
          if (14 == 0) r12.w = 0; else if (14+15 < 32) {           r12.w = (uint)r15.w << (32-(14 + 15)); r12.w = (uint)r12.w >> (32-14);          } else r12.w = (uint)r15.w >> 15;
          r12.w = (uint)r12.w;
          r12.w = sunConstants.sstLightingConstants.constants.spanInInches * r12.w;
          r12.w = 6.10388815e-05 * r12.w;
          r16.xy = (int2)r15.ww & int2(32767,536870912);
          r15.z = (uint)r16.x;
          r15.z = sunConstants.sstLightingConstants.constants.spanInInches * r15.z;
          r15.z = 3.05185094e-05 * r15.z;
          r16.x = (int)r10.z & 3;
          r16.x = (int)r15.x + (int)r16.x;
          r16.x = (int)r16.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.x, r16.x, l(0), t23.xxxx
        r16.x = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r17.x = (((uint)r10.y << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r17.y = (((uint)r10.z << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r17.z = (((uint)r10.w << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r10.y = (uint)r16.x >> (uint)r17.x;
          r10.y = (int)r10.y & 255;
          r10.y = (uint)r10.y;
          r10.y = r10.y * r15.z;
          r10.y = r10.y * 0.00392156886 + r12.w;
          r10.z = (int)r17.y + 1;
          if (1 == 0) r10.w = 0; else if (1+1 < 32) {           r10.w = (uint)r10.w << (32-(1 + 1)); r10.w = (uint)r10.w >> (32-1);          } else r10.w = (uint)r10.w >> 1;
          r10.z = (int)r10.w + (int)r10.z;
          r10.z = (int)r10.z + (int)r15.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.z, r10.z, l(0), t23.xxxx
        r10.z = samp0[]..swiz;
          r10.z = (uint)r10.z >> (uint)r17.z;
          r10.z = (int)r10.z & 0x0000ffff;
          r10.z = (uint)r10.z;
          r10.z = r10.z * r15.z;
          r10.z = r10.z * 1.52590219e-05 + r12.w;
          r15.y = r16.y ? r10.y : r10.z;
        } else {
          r10.y = (int)r15.w & 0x80000000;
          r10.z = (int)r15.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.z, r10.z, l(0), t23.xxxx
        r10.z = samp0[]..swiz;
          r10.y = r10.y ? r10.z : 0;
          r10.z = (uint)r15.w << 2;
          r10.w = (uint)r10.y >> 16;
          r10.y = (int)r10.y & 0x0000ffff;
          r10.yw = f16tof32(r10.yw);
          r10.z = r6.y * r10.w + r10.z;
          r10.y = r6.z * r10.y + r10.z;
          r15.y = r11.w ? r10.y : r15.y;
        }
      }
      r6.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r6.w;
      r6.w = cmp(r15.y < r6.w);
      r4.y = r6.w ? 0 : 1;
    }
    if (r8.w == 0) {
      if (enableDitheredShadow == 0) {
        r6.w = (uint)r7.z;
        r10.yz = -sunConstants.splitPinTransform[r6.w].xy + r6.yz;
        r10.yz = sunConstants.splitPinTransform[r6.w].zz * r10.yz;
        r15.xy = r10.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r6.w = (int16)sunConstants.splitArrayOffset;
        r15.z = r7.z + r6.w;
        r6.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r4.x).x;
        r8.w = gTransShadowmapArray.SampleLevel(samp0_s, r15.xyz, 0).x;
        r6.w = r8.w + r6.w;
        r6.w = saturate(-1 + r6.w);
        r8.w = r6.w * r6.w;
        r4.y = r8.w * r6.w;
      }
      if (enableDitheredShadow != 0) {
        r15.x = -r7.x;
        r6.w = (uint)r7.z;
        r7.z = 1 + r7.z;
        r7.z = min(2, r7.z);
        r7.w = 1 + -r7.w;
        r7.w = 28 * r7.w;
        r7.zw = (uint2)r7.zw;
        r10.yz = -sunConstants.splitPinTransform[r6.w].xy + r6.yz;
        r10.yz = sunConstants.splitPinTransform[r6.w].zz * r10.yz;
        r10.yz = r10.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r6.yz = -sunConstants.splitPinTransform[r7.z].xy + r6.yz;
        r6.yz = sunConstants.splitPinTransform[r7.z].zz * r6.yz;
        r6.yz = r6.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r15.y = r8.x;
        r15.z = r7.x;
        r8.w = 0;
        r10.w = 0;
        while (true) {
          r11.w = cmp((uint)r10.w >= 8);
          if (r11.w != 0) break;
          r11.w = cmp((uint)r7.w < (uint)r10.w);
          r16.xy = r11.ww ? r6.yz : r10.yz;
          r12.w = r11.w ? sunConstants.splitPinTransform[r7.z].w : sunConstants.splitPinTransform[r6.w].w;
          r11.w = r11.w ? r7.z : r6.w;
          r17.x = dot(icb[r10.w+0].yx, r15.xy);
          r17.y = dot(icb[r10.w+0].yx, r15.yz);
          r16.xy = r17.xy * r12.ww + r16.xy;
          r11.w = (int)r11.w + (int16)sunConstants.splitArrayOffset;
          r16.z = (uint)r11.w;
          r11.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r4.x).x;
          r12.w = gTransShadowmapArray.SampleLevel(samp0_s, r16.xyz, 0).x;
          r11.w = r12.w + r11.w;
          r11.w = saturate(-1 + r11.w);
          r8.w = r11.w * 0.125 + r8.w;
          r10.w = (int)r10.w + 1;
        }
        r4.x = r8.w * r8.w;
        r4.y = r4.x * r8.w;
      }
    }
  }
  r4.x = cmp(0 < abs(r2.w));
  if (r4.x != 0) {
    r4.x = cmp(0 < r4.y);
    if (r4.x != 0) {
      r4.x = sunConstants.specScale * r4.w;
      r4.x = 0.25 * r4.x;
      if (sunConstants.sunCookieIndex != 0) {
        r15.xyz = eyeOffset.xyz + v6.xyz;
        r15.w = 1;
        r6.y = dot(sunConstants.sunCookieTransform[0].xyzw, r15.xyzw);
        r6.z = dot(sunConstants.sunCookieTransform[1].xyzw, r15.xyzw);
        r15.xy = frac(r6.yz);
        r6.y = -1 + (int14)sunConstants.sunCookieIndex;
        r15.z = (uint)r6.y;
        r6.yzw = gCookieArray.SampleLevel(samplerLinear_s, r15.xyz, 0).xyz;
        r6.yzw = float3(-1,-1,-1) + r6.yzw;
        r6.yzw = sunConstants.sunCookieIntensity * r6.yzw + float3(1,1,1);
        r6.yzw = sunConstants.color.xyz * r6.yzw;
      } else {
        r6.yzw = sunConstants.color.xyz;
      }
      r7.z = viewmodelSunShadowRaw >> 16;
      r7.w = cmp(0 < (uint)r7.z);
      r7.w = r4.z ? r7.w : 0;
      if (r7.w != 0) {
        r7.z = (int)r7.z + numLights;
        r7.z = (int)r7.z + -1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r7.w, r7.z, l(52), t12.xxxx
      r7.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r7.z, l(68), t12.xyzw
      r15.x = samp0[]..swiz;
      r15.y = samp0[]..swiz;
      r15.z = samp0[]..swiz;
      r15.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r7.z, l(84), t12.xyzw
      r16.x = samp0[]..swiz;
      r16.y = samp0[]..swiz;
      r16.z = samp0[]..swiz;
      r16.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r7.z, l(132), t12.xyzw
      r17.x = samp0[]..swiz;
      r17.y = samp0[]..swiz;
      r17.z = samp0[]..swiz;
      r17.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r7.z, l(148), t12.xyzw
      r18.x = samp0[]..swiz;
      r18.y = samp0[]..swiz;
      r18.z = samp0[]..swiz;
      r18.w = samp0[]..swiz;
        r8.w = abs(r2.w) * -0.200000003 + 0.400000006;
        r10.y = cmp(r2.w < 0);
        r8.w = r10.y ? -r8.w : r8.w;
        r19.xyz = r2.xyz * r8.www + v6.xyz;
        r19.w = 1;
        r15.x = dot(r15.xyzw, r19.xyzw);
        r15.y = dot(r16.xyzw, r19.xyzw);
        r10.yz = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.yz = r10.yz + r18.zw;
        r10.yz = r10.yz * r18.xy;
        r15.xy = r7.ww / r17.xz;
        r15.zw = float2(1,1) + -r15.xy;
        r15.zw = cmp(r10.yz >= r15.zw);
        r15.xy = cmp(r15.xy >= r10.yz);
        r15.xy = (int2)r15.xy | (int2)r15.zw;
        r8.w = (int)r15.y | (int)r15.x;
        if (r8.w == 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.w, r7.z, l(28), t12.xxxx
        r8.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r7.z, l(100), t12.xyzw
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xy, r7.z, l(164), t12.xyxx
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
          r7.z = dot(r15.xyzw, r19.xyzw);
          r10.yz = saturate(r10.yz);
          r15.xy = r10.yz * r17.xz + r17.yw;
          r7.z = r7.z + r16.x;
          r7.z = r7.z / r16.y;
          r7.z = max(6.10351563e-05, r7.z);
          r8.w = (int)r8.w & 0x0000ffff;
          if (enableDitheredShadow != 0) {
            r16.x = -r7.x;
            r17.z = (uint)r8.w;
            r16.y = r8.x;
            r16.z = r7.x;
            r10.yz = float2(0,0);
            while (true) {
              r10.w = cmp((int)r10.z >= 8);
              if (r10.w != 0) break;
              r18.x = dot(icb[r10.z+0].yx, r16.xy);
              r18.y = dot(icb[r10.z+0].yx, r16.yz);
              r17.xy = r18.xy * r7.ww + r15.xy;
              r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r7.z).x;
              r10.y = r10.w * 0.125 + r10.y;
              r10.z = (int)r10.z + 1;
            }
          } else {
            r15.z = (uint)r8.w;
            r10.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r7.z).x;
          }
          r7.z = r10.y * r10.y;
          r7.z = r7.z * r10.y;
        } else {
          r7.z = 1;
        }
        r4.y = r7.z * r4.y;
      } else {
        r7.z = viewmodelSunShadowRaw & 0x0000ffff;
        r7.w = cmp(0 < (uint)r7.z);
        r8.w = ~(int)r4.z;
        r7.w = r7.w ? r8.w : 0;
        if (r7.w != 0) {
          r7.z = (int)r7.z + numLights;
          r7.z = (int)r7.z + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r7.w, r7.z, l(52), t12.xxxx
        r7.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r7.z, l(68), t12.xyzw
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r7.z, l(84), t12.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r7.z, l(132), t12.xyzw
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r7.z, l(148), t12.xyzw
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
        r18.z = samp0[]..swiz;
        r18.w = samp0[]..swiz;
          r8.w = abs(r2.w) * -0.200000003 + 0.400000006;
          r10.y = cmp(r2.w < 0);
          r8.w = r10.y ? -r8.w : r8.w;
          r19.xyz = r2.xyz * r8.www + v6.xyz;
          r19.w = 1;
          r15.x = dot(r15.xyzw, r19.xyzw);
          r15.y = dot(r16.xyzw, r19.xyzw);
          r10.yz = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r10.yz = r10.yz + r18.zw;
          r10.yz = r10.yz * r18.xy;
          r15.xy = r7.ww / r17.xz;
          r15.zw = float2(1,1) + -r15.xy;
          r15.zw = cmp(r10.yz >= r15.zw);
          r15.xy = cmp(r15.xy >= r10.yz);
          r15.xy = (int2)r15.xy | (int2)r15.zw;
          r8.w = (int)r15.y | (int)r15.x;
          if (r8.w == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.w, r7.z, l(28), t12.xxxx
          r8.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r7.z, l(100), t12.xyzw
          r15.x = samp0[]..swiz;
          r15.y = samp0[]..swiz;
          r15.z = samp0[]..swiz;
          r15.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xy, r7.z, l(164), t12.xyxx
          r16.x = samp0[]..swiz;
          r16.y = samp0[]..swiz;
            r7.z = dot(r15.xyzw, r19.xyzw);
            r10.yz = saturate(r10.yz);
            r15.xy = r10.yz * r17.xz + r17.yw;
            r7.z = r7.z + r16.x;
            r7.z = r7.z / r16.y;
            r7.z = max(6.10351563e-05, r7.z);
            r8.w = (int)r8.w & 0x0000ffff;
            if (enableDitheredShadow != 0) {
              r16.x = -r7.x;
              r17.z = (uint)r8.w;
              r16.y = r8.x;
              r16.z = r7.x;
              r10.yz = float2(0,0);
              while (true) {
                r10.w = cmp((int)r10.z >= 8);
                if (r10.w != 0) break;
                r18.x = dot(icb[r10.z+0].yx, r16.xy);
                r18.y = dot(icb[r10.z+0].yx, r16.yz);
                r17.xy = r18.xy * r7.ww + r15.xy;
                r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r7.z).x;
                r10.y = r10.w * 0.125 + r10.y;
                r10.z = (int)r10.z + 1;
              }
            } else {
              r15.z = (uint)r8.w;
              r10.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r7.z).x;
            }
            r7.z = r10.y * r10.y;
            r7.z = r7.z * r10.y;
          } else {
            r7.z = 1;
          }
          r4.y = r7.z * r4.y;
        }
      }
      r7.z = -r6.x * 0.5 + 1;
      r7.z = -abs(r2.w) * r7.z + 1;
      r7.z = r7.z * r7.z;
      r7.z = -r7.z * 0.620000005 + 0.620000005;
      r7.z = r7.z + -abs(r2.w);
      r7.z = r5.w * r7.z + abs(r2.w);
      r7.z = r7.z * r4.y;
      r7.w = cmp(0 < r2.w);
      r15.xyz = r7.zzz * r6.zwy + r13.xyz;
      r2.w = saturate(r2.w);
      r10.yzw = -v6.xyz * r3.www + sunConstants.wldDir.xyz;
      r3.w = dot(r10.yzw, r10.yzw);
      r3.w = rsqrt(r3.w);
      r10.yzw = r10.yzw * r3.www;
      r3.w = dot(r10.yzw, r5.xyz);
      r7.z = dot(r2.xyz, r10.yzw);
      r8.w = abs(r7.z) * r4.w + -abs(r7.z);
      r7.z = abs(r7.z) * r8.w + 1;
      r8.w = r2.w * r0.w + r1.w;
      r7.z = r7.z * r7.z;
      r7.z = r7.z * r8.w;
      r7.z = rcp(r7.z);
      r2.w = r2.w * r4.x;
      r2.w = r7.z * r2.w;
      r2.w = r2.w * r4.y;
      r16.yzw = r2.www * r6.yzw + r14.xyz;
      r3.w = saturate(1 + -r3.w);
      r4.x = r3.w * r3.w;
      r4.x = r4.x * r4.x;
      r3.w = r4.x * r3.w;
      r2.w = r3.w * r2.w;
      r6.yzw = r2.www * r6.yzw + r9.yzw;
      r15.w = r13.z;
      r13.w = r15.z;
      r17.xyzw = r7.wwww ? r15.zxyw : r13.zxyw;
      r13.zw = r6.yz;
      r15.zw = r9.yz;
      r15.xyzw = r7.wwww ? r13.xyzw : r15.xyzw;
      r16.x = r6.w;
      r14.w = r9.w;
      r14.xyzw = r7.wwww ? r16.yzwx : r14.xyzw;
      r13.z = r17.w;
      r13.xy = r15.xy;
      r9.yz = r15.zw;
      r9.w = r14.w;
    } else {
      r17.xyz = r13.zxy;
    }
  } else {
    r17.xyz = r13.zxy;
  }
  r15.x = -r7.x;
  r2.w = ~(int)r4.z;
  r3.w = -r6.x * 0.5 + 1;
  r6.xy = float2(0,0);
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
  r10.yzw = r17.xyz;
  r28.xyz = r13.zxy;
  r29.xyz = r9.yzw;
  r30.xyz = r14.xyz;
  r4.x = enableDitheredShadow;
  r4.y = 0;
  while (true) {
    r6.w = cmp((uint)r4.y >= numLights);
    if (r6.w != 0) break;
    r6.z = (uint)r4.y >> 5;
    r16.xyz = (int3)r6.xyz + (int3)r12.xyz;
    r6.z = visibleLights.Load(r16.xyzw).x;
    r16.xyz = r10.yzw;
    r31.xyz = r28.xyz;
    r32.xyz = r29.xyz;
    r33.xyz = r30.xyz;
    r6.w = r4.x;
    r7.z = r6.z;
    while (true) {
      if (r7.z == 0) break;
      r7.w = firstbitlow((uint)r7.z);
      r8.w = 1 << (int)r7.w;
      r11.w = (int)r7.z & (int)r8.w;
      if (r11.w != 0) {
        r7.z = (int)r7.z ^ (int)r8.w;
        r7.w = (int)r4.y + (int)r7.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r34.xyzw, r7.w, l(0), t11.xyzw
      r34.x = samp0[]..swiz;
      r34.y = samp0[]..swiz;
      r34.z = samp0[]..swiz;
      r34.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r35.xy, r7.w, l(16), t11.xyxx
      r35.x = samp0[]..swiz;
      r35.y = samp0[]..swiz;
        r34.xyz = -v6.xyz + r34.xyz;
        r35.z = r34.w;
        r34.xyz = cmp(abs(r34.xyz) < r35.zxy);
        r8.w = r34.y ? r34.x : 0;
        r8.w = r34.z ? r8.w : 0;
        if (r8.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r7.w, l(0), t12.wxyz
        r34.x = samp0[]..swiz;
        r34.y = samp0[]..swiz;
        r34.z = samp0[]..swiz;
        r34.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r7.w, l(16), t12.zxyw
        r35.x = samp0[]..swiz;
        r35.y = samp0[]..swiz;
        r35.z = samp0[]..swiz;
        r35.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r7.w, l(32), t12.xyzw
        r36.x = samp0[]..swiz;
        r36.y = samp0[]..swiz;
        r36.z = samp0[]..swiz;
        r36.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r7.w, l(48), t12.xyzw
        r37.x = samp0[]..swiz;
        r37.y = samp0[]..swiz;
        r37.z = samp0[]..swiz;
        r37.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r7.w, l(64), t12.yzwx
        r38.x = samp0[]..swiz;
        r38.y = samp0[]..swiz;
        r38.z = samp0[]..swiz;
        r38.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r7.w, l(80), t12.xyzw
        r39.x = samp0[]..swiz;
        r39.y = samp0[]..swiz;
        r39.z = samp0[]..swiz;
        r39.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r7.w, l(96), t12.yzwx
        r40.x = samp0[]..swiz;
        r40.y = samp0[]..swiz;
        r40.z = samp0[]..swiz;
        r40.w = samp0[]..swiz;
          if (3 == 0) r8.w = 0; else if (3+24 < 32) {           r8.w = (uint)r35.w << (32-(3 + 24)); r8.w = (uint)r8.w >> (32-3);          } else r8.w = (uint)r35.w >> 24;
          switch (r8.w) {
            case 4 :            r8.w = cmp(0 < r40.x);
            r41.xy = r39.zw;
            r41.z = r40.w;
            r42.xyz = -r41.xyz * float3(0.5,0.5,0.5) + r34.yzw;
            r43.xyz = -v6.xyz + r42.xyz;
            r11.w = dot(r41.xyz, r43.xyz);
            r12.w = saturate(-r11.w / r40.x);
            r44.xyz = r12.www * r41.xyz + r42.xyz;
            r44.xyz = r8.www ? r44.xyz : r34.yzw;
            r44.xyz = -v6.xyz + r44.xyz;
            r13.w = dot(r44.xyz, r44.xyz);
            r14.w = rsqrt(r13.w);
            r44.xyz = r44.xyz * r14.www;
            r14.w = dot(r2.xyz, r44.xyz);
            r17.w = cmp(0 < abs(r14.w));
            if (r17.w != 0) {
              r17.w = sqrt(r13.w);
              r21.w = r37.x * r37.x;
              r13.w = r21.w / r13.w;
              r13.w = min(1, r13.w);
              r44.xy = saturate(r17.ww * r36.xz + r36.yw);
              r44.zw = r44.xy * r44.xy;
              r44.xy = r44.xy * float2(-2,-2) + float2(3,3);
              r44.xy = r44.zw * r44.xy;
              r13.w = r44.x * r13.w;
              r13.w = r13.w * r44.y;
              r17.w = cmp(0 < r13.w);
              if (r17.w != 0) {
                if (3 == 0) r17.w = 0; else if (3+27 < 32) {                 r17.w = (uint)r35.w << (32-(3 + 27)); r17.w = (uint)r17.w >> (32-3);                } else r17.w = (uint)r35.w >> 27;
                r17.w = cmp((int)r17.w != 1);
                if (r17.w != 0) {
                  r17.w = abs(r14.w) * -0.200000003 + 0.400000006;
                  r21.w = cmp(r14.w < 0);
                  r17.w = r21.w ? -r17.w : r17.w;
                  r44.xyz = r2.xyz * r17.www + v6.xyz;
                  r44.xyz = r44.xyz + -r38.xyz;
                  r17.w = max(abs(r44.y), abs(r44.z));
                  r17.w = max(abs(r44.x), r17.w);
                  r17.w = r39.x / r17.w;
                  r17.w = r17.w + r39.y;
                  r21.w = dot(r44.xyz, r44.xyz);
                  r21.w = rsqrt(r21.w);
                  r17.w = max(6.10351563e-05, r17.w);
                  r25.w = (int)r35.w & 0x0000ffff;
                  r45.w = (uint)r25.w;
                  r25.w = 0;
                  r26.w = 0;
                  while (true) {
                    r27.w = cmp((int)r26.w >= 8);
                    if (r27.w != 0) break;
                    r46.y = dot(icb[r26.w+0].yx, r15.xy);
                    r46.z = dot(icb[r26.w+0].yx, r15.yz);
                    r46.yz = r46.yz * r37.yy;
                    r46.x = r46.y * r10.x;
                    r46.w = r46.y * r9.x;
                    r45.xyz = r44.xyz * r21.www + r46.xzw;
                    r27.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r45.xyzw, r17.w).x;
                    r25.w = r27.w * 0.125 + r25.w;
                    r26.w = (int)r26.w + 1;
                  }
                } else {
                  r25.w = 1;
                }
                r13.w = r25.w * r13.w;
                r17.w = cmp(0 < r13.w);
                if (r17.w != 0) {
                  r17.w = r35.x * r4.w;
                  r17.w = 0.25 * r17.w;
                  r21.w = dot(r41.xyz, r11.xyz);
                  r26.w = dot(r11.xyz, r43.xyz);
                  r27.w = -r21.w * r21.w + r40.x;
                  r11.w = r21.w * r26.w + -r11.w;
                  r11.w = saturate(r11.w / r27.w);
                  r21.w = r27.w / r40.x;
                  r21.w = 10 * r21.w;
                  r21.w = min(1, r21.w);
                  r11.w = r11.w + -r12.w;
                  r11.w = r21.w * r11.w + r12.w;
                  r41.xyz = r11.www * r41.xyz + r42.xyz;
                  r41.xyz = r8.www ? r41.xyz : r34.yzw;
                  r41.xyz = -v6.xyz + r41.xyz;
                  r8.w = dot(r41.xyz, r41.xyz);
                  r8.w = rsqrt(r8.w);
                  r42.xyz = r41.xyz * r8.www;
                  if (4 == 0) r11.w = 0; else if (4+16 < 32) {                   r11.w = (uint)r35.w << (32-(4 + 16)); r11.w = (uint)r11.w >> (32-4);                  } else r11.w = (uint)r35.w >> 16;
                  r12.w = cmp(0 < (uint)r11.w);
                  r12.w = r4.z ? r12.w : 0;
                  if (r12.w != 0) {
                    r11.w = (int)r11.w + numLights;
                    r11.w = (int)r11.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.w, r11.w, l(52), t12.xxxx
                  r12.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r11.w, l(100), t12.xyzw
                  r43.x = samp0[]..swiz;
                  r43.y = samp0[]..swiz;
                  r43.z = samp0[]..swiz;
                  r43.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r11.w, l(116), t12.xyzw
                  r44.x = samp0[]..swiz;
                  r44.y = samp0[]..swiz;
                  r44.z = samp0[]..swiz;
                  r44.w = samp0[]..swiz;
                    r21.w = abs(r14.w) * -0.200000003 + 0.400000006;
                    r26.w = cmp(r14.w < 0);
                    r21.w = r26.w ? -r21.w : r21.w;
                    r19.xyz = r2.xyz * r21.www + v6.xyz;
                    r21.w = dot(r43.xyzw, r19.xyzw);
                    r26.w = dot(r44.xyzw, r19.xyzw);
                    r27.w = cmp(r26.w < r21.w);
                    if (r27.w == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r11.w, l(68), t12.xyzw
                    r43.x = samp0[]..swiz;
                    r43.y = samp0[]..swiz;
                    r43.z = samp0[]..swiz;
                    r43.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r11.w, l(84), t12.xyzw
                    r44.x = samp0[]..swiz;
                    r44.y = samp0[]..swiz;
                    r44.z = samp0[]..swiz;
                    r44.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r11.w, l(132), t12.xyzw
                    r45.x = samp0[]..swiz;
                    r45.y = samp0[]..swiz;
                    r45.z = samp0[]..swiz;
                    r45.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r46.xyzw, r11.w, l(148), t12.xyzw
                    r46.x = samp0[]..swiz;
                    r46.y = samp0[]..swiz;
                    r46.z = samp0[]..swiz;
                    r46.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r47.xy, r11.w, l(164), t12.xyxx
                    r47.x = samp0[]..swiz;
                    r47.y = samp0[]..swiz;
                      r43.x = dot(r43.xyzw, r19.xyzw);
                      r43.y = dot(r44.xyzw, r19.xyzw);
                      r19.xy = r43.xy / r26.ww;
                      r19.xy = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r19.xy = r19.xy + r46.zw;
                      r19.xy = r19.xy * r46.xy;
                      r43.xy = r12.ww / r45.xz;
                      r43.zw = float2(1,1) + -r43.xy;
                      r43.zw = cmp(r19.xy >= r43.zw);
                      r43.xy = cmp(r43.xy >= r19.xy);
                      r43.xy = (int2)r43.xy | (int2)r43.zw;
                      r19.z = (int)r43.y | (int)r43.x;
                      r19.xy = saturate(r19.xy);
                      r43.xy = r19.xy * r45.xz + r45.yw;
                      r19.x = r47.y * r26.w;
                      r19.y = r47.x * r26.w + r21.w;
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
                      if (r6.w != 0) {
                        r44.z = (uint)r11.w;
                        r19.yz = float2(0,0);
                        while (true) {
                          r21.w = cmp((int)r19.z >= 8);
                          if (r21.w != 0) break;
                          r45.x = dot(icb[r19.z+0].yx, r15.xw);
                          r45.y = dot(icb[r19.z+0].xy, r7.xy);
                          r44.xy = r45.xy * r12.ww + r43.xy;
                          r21.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r44.xyz, r19.x).x;
                          r19.y = r21.w * 0.125 + r19.y;
                          r19.z = (int)r19.z + 1;
                        }
                      } else {
                        r43.z = (uint)r11.w;
                        r19.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r43.xyz, r19.x).x;
                      }
                      r11.w = r19.y * r19.y;
                      r11.w = r11.w * r19.y;
                    } else {
                      r11.w = 1;
                    }
                    r13.w = r13.w * r11.w;
                  } else {
                    if (4 == 0) r11.w = 0; else if (4+20 < 32) {                     r11.w = (uint)r35.w << (32-(4 + 20)); r11.w = (uint)r11.w >> (32-4);                    } else r11.w = (uint)r35.w >> 20;
                    r12.w = cmp(0 < (uint)r11.w);
                    r12.w = r12.w ? r2.w : 0;
                    if (r12.w != 0) {
                      r11.w = (int)r11.w + numLights;
                      r11.w = (int)r11.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.w, r11.w, l(52), t12.xxxx
                    r12.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r11.w, l(100), t12.xyzw
                    r43.x = samp0[]..swiz;
                    r43.y = samp0[]..swiz;
                    r43.z = samp0[]..swiz;
                    r43.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r11.w, l(116), t12.xyzw
                    r44.x = samp0[]..swiz;
                    r44.y = samp0[]..swiz;
                    r44.z = samp0[]..swiz;
                    r44.w = samp0[]..swiz;
                      r19.x = abs(r14.w) * -0.200000003 + 0.400000006;
                      r19.z = cmp(r14.w < 0);
                      r19.x = r19.z ? -r19.x : r19.x;
                      r20.xyz = r2.xyz * r19.xxx + v6.xyz;
                      r19.x = dot(r43.xyzw, r20.xyzw);
                      r19.z = dot(r44.xyzw, r20.xyzw);
                      r21.w = cmp(r19.z < r19.x);
                      if (r21.w == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r11.w, l(68), t12.xyzw
                      r43.x = samp0[]..swiz;
                      r43.y = samp0[]..swiz;
                      r43.z = samp0[]..swiz;
                      r43.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r11.w, l(84), t12.xyzw
                      r44.x = samp0[]..swiz;
                      r44.y = samp0[]..swiz;
                      r44.z = samp0[]..swiz;
                      r44.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r11.w, l(132), t12.xyzw
                      r45.x = samp0[]..swiz;
                      r45.y = samp0[]..swiz;
                      r45.z = samp0[]..swiz;
                      r45.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r46.xyzw, r11.w, l(148), t12.xyzw
                      r46.x = samp0[]..swiz;
                      r46.y = samp0[]..swiz;
                      r46.z = samp0[]..swiz;
                      r46.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r47.xy, r11.w, l(164), t12.xyxx
                      r47.x = samp0[]..swiz;
                      r47.y = samp0[]..swiz;
                        r43.x = dot(r43.xyzw, r20.xyzw);
                        r43.y = dot(r44.xyzw, r20.xyzw);
                        r20.xy = r43.xy / r19.zz;
                        r20.xy = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                        r20.xy = r20.xy + r46.zw;
                        r20.xy = r20.xy * r46.xy;
                        r43.xy = r12.ww / r45.xz;
                        r43.zw = float2(1,1) + -r43.xy;
                        r43.zw = cmp(r20.xy >= r43.zw);
                        r43.xy = cmp(r43.xy >= r20.xy);
                        r43.xy = (int2)r43.xy | (int2)r43.zw;
                        r20.z = (int)r43.y | (int)r43.x;
                        r20.xy = saturate(r20.xy);
                        r43.xy = r20.xy * r45.xz + r45.yw;
                        r20.x = r47.y * r19.z;
                        r19.x = r47.x * r19.z + r19.x;
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
                        if (r6.w != 0) {
                          r20.z = (uint)r11.w;
                          r19.z = 0;
                          r21.w = 0;
                          while (true) {
                            r26.w = cmp((int)r21.w >= 8);
                            if (r26.w != 0) break;
                            r44.x = dot(icb[r21.w+0].xy, r8.xy);
                            r44.y = dot(icb[r21.w+0].yx, r8.xz);
                            r20.xy = r44.xy * r12.ww + r43.xy;
                            r20.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r19.x).x;
                            r19.z = r20.x * 0.125 + r19.z;
                            r21.w = (int)r21.w + 1;
                          }
                        } else {
                          r43.z = (uint)r11.w;
                          r19.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r43.xyz, r19.x).x;
                        }
                        r11.w = r19.z * r19.z;
                        r11.w = r11.w * r19.z;
                      } else {
                        r11.w = 1;
                      }
                      r13.w = r13.w * r11.w;
                    }
                  }
                  r11.w = -abs(r14.w) * r3.w + 1;
                  r11.w = r11.w * r11.w;
                  r11.w = -r11.w * 0.620000005 + 0.620000005;
                  r11.w = r11.w + -abs(r14.w);
                  r11.w = r5.w * r11.w + abs(r14.w);
                  r11.w = r11.w * r13.w;
                  r35.x = r34.x;
                  r12.w = cmp(0 < r14.w);
                  r20.xyz = r11.www * r35.xyz + r16.xyz;
                  r14.w = saturate(dot(r2.xyz, r42.xyz));
                  r41.xyz = r41.xyz * r8.www + r5.xyz;
                  r8.w = dot(r41.xyz, r41.xyz);
                  r8.w = rsqrt(r8.w);
                  r41.xyz = r41.xyz * r8.www;
                  r8.w = dot(r41.xyz, r5.xyz);
                  r19.x = dot(r2.xyz, r41.xyz);
                  r21.w = abs(r19.x) * r4.w + -abs(r19.x);
                  r19.x = abs(r19.x) * r21.w + 1;
                  r21.w = r14.w * r0.w + r1.w;
                  r19.x = r19.x * r19.x;
                  r19.x = r19.x * r21.w;
                  r19.x = rcp(r19.x);
                  r14.w = r14.w * r17.w;
                  r14.w = r19.x * r14.w;
                  r13.w = r14.w * r13.w;
                  r41.xyz = r13.www * r35.xyz + r33.xyz;
                  r8.w = saturate(1 + -r8.w);
                  r14.w = r8.w * r8.w;
                  r14.w = r14.w * r14.w;
                  r8.w = r14.w * r8.w;
                  r8.w = r13.w * r8.w;
                  r42.xyz = r8.www * r35.xyz + r32.xyz;
                  r43.xyz = r11.www * r35.xyz + r31.xyz;
                  r16.xyz = r12.www ? r20.xyz : r16.xyz;
                  r31.xyz = r12.www ? r31.xyz : r43.xyz;
                  r32.xyz = r12.www ? r42.xyz : r32.xyz;
                  r33.xyz = r12.www ? r41.xyz : r33.xyz;
                }
              }
            }
            break;
            case 2 :            r20.xy = r37.zw;
            r20.z = r38.w;
            r20.xyz = -v6.xyz + r20.xyz;
            r8.w = dot(r20.xyz, r20.xyz);
            r8.w = rsqrt(r8.w);
            r41.xyz = r20.xyz * r8.www;
            r11.w = dot(r2.xyz, r41.xyz);
            r12.w = cmp(0 < abs(r11.w));
            if (r12.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r7.w, l(112), t12.yzwx
            r41.x = samp0[]..swiz;
            r41.y = samp0[]..swiz;
            r41.z = samp0[]..swiz;
            r41.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r7.w, l(128), t12.zxyw
            r42.x = samp0[]..swiz;
            r42.y = samp0[]..swiz;
            r42.z = samp0[]..swiz;
            r42.w = samp0[]..swiz;
              r43.xyz = r41.xyz;
              r43.w = r42.y;
              r12.w = dot(r43.xyzw, r18.xyzw);
              r13.w = cmp(r12.w < 1);
              if (r13.w != 0) {
                r44.xyz = float3(1,1,1);
                r13.w = 0;
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r7.w, l(172), t12.yzwx
              r45.x = samp0[]..swiz;
              r45.y = samp0[]..swiz;
              r45.z = samp0[]..swiz;
              r45.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r46.xyzw, r7.w, l(188), t12.wxyz
              r46.x = samp0[]..swiz;
              r46.y = samp0[]..swiz;
              r46.z = samp0[]..swiz;
              r46.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r47.xyzw, r7.w, l(204), t12.xyzw
              r47.x = samp0[]..swiz;
              r47.y = samp0[]..swiz;
              r47.z = samp0[]..swiz;
              r47.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.w, r7.w, l(236), t12.xxxx
              r14.w = samp0[]..swiz;
                r48.xyz = -v6.xyz + r34.yzw;
                r17.w = r37.x * r37.x;
                r19.x = dot(r48.xyz, r48.xyz);
                r17.w = r17.w / r19.x;
                r17.w = min(1, r17.w);
                r36.xy = saturate(r12.ww * r36.xz + r36.yw);
                r36.zw = r36.xy * r36.xy;
                r36.xy = r36.xy * float2(-2,-2) + float2(3,3);
                r36.xy = r36.zw * r36.xy;
                r17.w = r36.x * r17.w;
                r17.w = r17.w * r36.y;
                r38.w = r39.x;
                r36.x = dot(r38.xyzw, r18.xyzw);
                r48.xyz = r39.yzw;
                r48.w = r40.w;
                r36.y = dot(r48.xyzw, r18.xyzw);
                r21.xy = r36.xy / r12.ww;
                r12.w = cmp(r45.w < 0.00048828125);
                if (r12.w != 0) {
                  r46.y = r47.x;
                  r36.xy = saturate(abs(r21.xy) * r46.zw + r46.xy);
                  r36.zw = r36.xy * r36.xy;
                  r36.xy = r36.xy * float2(-2,-2) + float2(3,3);
                  r36.xy = r36.zw * r36.xy;
                  r12.w = r36.x * r36.y;
                } else {
                  r45.w = r46.y;
                  r36.xyzw = saturate(r45.xyzw * abs(r21.yyxx));
                  r36.xyzw = log2(r36.xyzw);
                  r36.xyzw = r46.xxxx * r36.xyzw;
                  r36.xyzw = exp2(r36.xyzw);
                  r36.xy = r36.xy + r36.zw;
                  r36.xy = log2(r36.xy);
                  r36.xy = r47.xx * r36.xy;
                  r36.xy = exp2(r36.xy);
                  r19.x = r46.z * r36.x;
                  r21.w = r46.w * r36.y + -1;
                  r19.x = r46.w * r36.y + -r19.x;
                  r19.x = saturate(r21.w / r19.x);
                  r21.w = r19.x * r19.x;
                  r19.x = r19.x * -2 + 3;
                  r12.w = r21.w * r19.x;
                }
                r13.w = r17.w * r12.w;
                r12.w = (int)r14.w & 255;
                if (r12.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyz, r7.w, l(220), t12.xyzx
                r36.x = samp0[]..swiz;
                r36.y = samp0[]..swiz;
                r36.z = samp0[]..swiz;
                  r14.w = dot(r47.yzw, r21.xyz);
                  r17.w = dot(r36.xyz, r21.xyz);
                  r36.x = frac(r14.w);
                  r36.y = frac(r17.w);
                  r12.w = (int)r12.w + -1;
                  r36.z = (uint)r12.w;
                  r44.xyz = gCookieArray.SampleLevel(samplerLinear_s, r36.xyz, 0).xyz;
                } else {
                  r44.xyz = float3(1,1,1);
                }
              }
              r34.yz = r35.yz;
              r21.xyw = r34.xyz * r44.xyz;
              r12.w = cmp(0 < r13.w);
              if (r12.w != 0) {
                if (3 == 0) r12.w = 0; else if (3+27 < 32) {                 r12.w = (uint)r35.w << (32-(3 + 27)); r12.w = (uint)r12.w >> (32-3);                } else r12.w = (uint)r35.w >> 27;
                r12.w = cmp((int)r12.w != 1);
                if (r12.w != 0) {
                  r12.w = abs(r11.w) * -0.200000003 + 0.400000006;
                  r14.w = cmp(r11.w < 0);
                  r12.w = r14.w ? -r12.w : r12.w;
                  r22.xyz = r2.xyz * r12.www + v6.xyz;
                  r41.xyz = r40.xyz;
                  r12.w = dot(r41.xyzw, r22.xyzw);
                  r14.w = dot(r43.xyzw, r22.xyzw);
                  r17.w = cmp(r14.w >= r12.w);
                  if (r17.w != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.y, r7.w, l(144), t12.xxxx
                  r42.y = samp0[]..swiz;
                    r38.w = r39.x;
                    r34.x = dot(r38.xyzw, r22.xyzw);
                    r40.xyz = r39.yzw;
                    r34.y = dot(r40.xyzw, r22.xyzw);
                    r22.xy = r34.xy / r14.ww;
                    r22.xy = saturate(r22.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                    r22.xy = r22.xy * r42.zw + r42.xy;
                    r7.w = r12.w / r14.w;
                    r7.w = max(6.10351563e-05, r7.w);
                    r12.w = (int)r35.w & 0x0000ffff;
                    if (r6.w != 0) {
                      r34.z = (uint)r12.w;
                      r14.w = 0;
                      r17.w = 0;
                      while (true) {
                        r19.x = cmp((int)r17.w >= 8);
                        if (r19.x != 0) break;
                        r36.x = dot(icb[r17.w+0].xy, r25.xy);
                        r36.y = dot(icb[r17.w+0].yx, r25.xz);
                        r34.xy = r36.xy * r37.yy + r22.xy;
                        r19.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r34.xyz, r7.w).x;
                        r14.w = r19.x * 0.125 + r14.w;
                        r17.w = (int)r17.w + 1;
                      }
                    } else {
                      r22.z = (uint)r12.w;
                      r14.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r7.w).x;
                    }
                    r7.w = r14.w * r14.w;
                    r7.w = r7.w * r14.w;
                  } else {
                    r7.w = 1;
                  }
                } else {
                  r7.w = 1;
                }
                r7.w = r13.w * r7.w;
                r12.w = cmp(0 < r7.w);
                if (r12.w != 0) {
                  r12.w = r35.x * r4.w;
                  r12.w = 0.25 * r12.w;
                  if (4 == 0) r13.w = 0; else if (4+16 < 32) {                   r13.w = (uint)r35.w << (32-(4 + 16)); r13.w = (uint)r13.w >> (32-4);                  } else r13.w = (uint)r35.w >> 16;
                  r17.w = cmp(0 < (uint)r13.w);
                  r17.w = r4.z ? r17.w : 0;
                  if (r17.w != 0) {
                    r13.w = (int)r13.w + numLights;
                    r13.w = (int)r13.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.w, r13.w, l(52), t12.xxxx
                  r17.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r13.w, l(68), t12.xyzw
                  r34.x = samp0[]..swiz;
                  r34.y = samp0[]..swiz;
                  r34.z = samp0[]..swiz;
                  r34.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r13.w, l(84), t12.xyzw
                  r36.x = samp0[]..swiz;
                  r36.y = samp0[]..swiz;
                  r36.z = samp0[]..swiz;
                  r36.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r13.w, l(100), t12.xyzw
                  r37.x = samp0[]..swiz;
                  r37.y = samp0[]..swiz;
                  r37.z = samp0[]..swiz;
                  r37.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r13.w, l(116), t12.xyzw
                  r38.x = samp0[]..swiz;
                  r38.y = samp0[]..swiz;
                  r38.z = samp0[]..swiz;
                  r38.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r13.w, l(132), t12.xyzw
                  r39.x = samp0[]..swiz;
                  r39.y = samp0[]..swiz;
                  r39.z = samp0[]..swiz;
                  r39.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r13.w, l(148), t12.xyzw
                  r40.x = samp0[]..swiz;
                  r40.y = samp0[]..swiz;
                  r40.z = samp0[]..swiz;
                  r40.w = samp0[]..swiz;
                    r19.x = abs(r11.w) * -0.200000003 + 0.400000006;
                    r22.x = cmp(r11.w < 0);
                    r19.x = r22.x ? -r19.x : r19.x;
                    r23.xyz = r2.xyz * r19.xxx + v6.xyz;
                    r22.x = dot(r34.xyzw, r23.xyzw);
                    r22.y = dot(r36.xyzw, r23.xyzw);
                    r19.x = dot(r37.xyzw, r23.xyzw);
                    r22.z = dot(r38.xyzw, r23.xyzw);
                    r23.x = cmp(r22.z < r19.x);
                    r22.xy = r22.xy / r22.zz;
                    r22.xy = r22.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r22.xy = r22.xy + r40.zw;
                    r22.xy = r22.xy * r40.xy;
                    r23.yz = r17.ww / r39.xz;
                    r34.xy = float2(1,1) + -r23.yz;
                    r34.xy = cmp(r22.xy >= r34.xy);
                    r23.yz = cmp(r23.yz >= r22.xy);
                    r23.yz = (int2)r23.yz | (int2)r34.xy;
                    r23.y = (int)r23.z | (int)r23.y;
                    r23.x = (int)r23.x | (int)r23.y;
                    if (r23.x == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.x, r13.w, l(28), t12.xxxx
                    r23.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.yz, r13.w, l(164), t12.xxyx
                    r23.y = samp0[]..swiz;
                    r23.z = samp0[]..swiz;
                      r22.xy = saturate(r22.xy);
                      r34.xy = r22.xy * r39.xz + r39.yw;
                      r13.w = r23.z * r22.z;
                      r19.x = r23.y * r22.z + r19.x;
                      r13.w = r19.x / r13.w;
                      r13.w = max(6.10351563e-05, r13.w);
                      r19.x = r23.x ? 0.000000 : 0;
                      if (r6.w != 0) {
                        r22.z = (uint)r19.x;
                        r23.xy = float2(0,0);
                        while (true) {
                          r23.z = cmp((int)r23.y >= 8);
                          if (r23.z != 0) break;
                          r35.x = dot(icb[r23.y+0].xy, r26.xy);
                          r35.y = dot(icb[r23.y+0].yx, r26.xz);
                          r22.xy = r35.xy * r17.ww + r34.xy;
                          r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r13.w).x;
                          r23.x = r22.x * 0.125 + r23.x;
                          r23.y = (int)r23.y + 1;
                        }
                      } else {
                        r34.z = (uint)r19.x;
                        r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r34.xyz, r13.w).x;
                      }
                      r13.w = r23.x * r23.x;
                      r13.w = r13.w * r23.x;
                    } else {
                      r13.w = 1;
                    }
                    r7.w = r13.w * r7.w;
                  } else {
                    if (4 == 0) r13.w = 0; else if (4+20 < 32) {                     r13.w = (uint)r35.w << (32-(4 + 20)); r13.w = (uint)r13.w >> (32-4);                    } else r13.w = (uint)r35.w >> 20;
                    r17.w = cmp(0 < (uint)r13.w);
                    r17.w = r17.w ? r2.w : 0;
                    if (r17.w != 0) {
                      r13.w = (int)r13.w + numLights;
                      r13.w = (int)r13.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.w, r13.w, l(52), t12.xxxx
                    r17.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r13.w, l(68), t12.xyzw
                    r34.x = samp0[]..swiz;
                    r34.y = samp0[]..swiz;
                    r34.z = samp0[]..swiz;
                    r34.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r13.w, l(84), t12.xyzw
                    r35.x = samp0[]..swiz;
                    r35.y = samp0[]..swiz;
                    r35.z = samp0[]..swiz;
                    r35.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r13.w, l(100), t12.xyzw
                    r36.x = samp0[]..swiz;
                    r36.y = samp0[]..swiz;
                    r36.z = samp0[]..swiz;
                    r36.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r13.w, l(116), t12.xyzw
                    r37.x = samp0[]..swiz;
                    r37.y = samp0[]..swiz;
                    r37.z = samp0[]..swiz;
                    r37.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r13.w, l(132), t12.xyzw
                    r38.x = samp0[]..swiz;
                    r38.y = samp0[]..swiz;
                    r38.z = samp0[]..swiz;
                    r38.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r13.w, l(148), t12.xyzw
                    r39.x = samp0[]..swiz;
                    r39.y = samp0[]..swiz;
                    r39.z = samp0[]..swiz;
                    r39.w = samp0[]..swiz;
                      r19.x = abs(r11.w) * -0.200000003 + 0.400000006;
                      r22.x = cmp(r11.w < 0);
                      r19.x = r22.x ? -r19.x : r19.x;
                      r24.xyz = r2.xyz * r19.xxx + v6.xyz;
                      r22.x = dot(r34.xyzw, r24.xyzw);
                      r22.y = dot(r35.xyzw, r24.xyzw);
                      r19.x = dot(r36.xyzw, r24.xyzw);
                      r22.z = dot(r37.xyzw, r24.xyzw);
                      r23.y = cmp(r22.z < r19.x);
                      r22.xy = r22.xy / r22.zz;
                      r22.xy = r22.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r22.xy = r22.xy + r39.zw;
                      r22.xy = r22.xy * r39.xy;
                      r24.xy = r17.ww / r38.xz;
                      r34.xy = float2(1,1) + -r24.xy;
                      r34.xy = cmp(r22.xy >= r34.xy);
                      r24.xy = cmp(r24.xy >= r22.xy);
                      r24.xy = (int2)r24.xy | (int2)r34.xy;
                      r23.z = (int)r24.y | (int)r24.x;
                      r23.y = (int)r23.y | (int)r23.z;
                      if (r23.y == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.y, r13.w, l(28), t12.xxxx
                      r23.y = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.xy, r13.w, l(164), t12.xyxx
                      r24.x = samp0[]..swiz;
                      r24.y = samp0[]..swiz;
                        r22.xy = saturate(r22.xy);
                        r34.xy = r22.xy * r38.xz + r38.yw;
                        r13.w = r24.y * r22.z;
                        r19.x = r24.x * r22.z + r19.x;
                        r13.w = r19.x / r13.w;
                        r13.w = max(6.10351563e-05, r13.w);
                        r19.x = r23.y ? 0.000000 : 0;
                        if (r6.w != 0) {
                          r22.z = (uint)r19.x;
                          r23.yz = float2(0,0);
                          while (true) {
                            r24.x = cmp((int)r23.z >= 8);
                            if (r24.x != 0) break;
                            r24.x = dot(icb[r23.z+0].xy, r27.xy);
                            r24.y = dot(icb[r23.z+0].yx, r27.xz);
                            r22.xy = r24.xy * r17.ww + r34.xy;
                            r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r13.w).x;
                            r23.y = r22.x * 0.125 + r23.y;
                            r23.z = (int)r23.z + 1;
                          }
                        } else {
                          r34.z = (uint)r19.x;
                          r23.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r34.xyz, r13.w).x;
                        }
                        r13.w = r23.y * r23.y;
                        r13.w = r13.w * r23.y;
                      } else {
                        r13.w = 1;
                      }
                      r7.w = r13.w * r7.w;
                    }
                  }
                  r13.w = -abs(r11.w) * r3.w + 1;
                  r13.w = r13.w * r13.w;
                  r13.w = -r13.w * 0.620000005 + 0.620000005;
                  r13.w = r13.w + -abs(r11.w);
                  r13.w = r5.w * r13.w + abs(r11.w);
                  r13.w = r13.w * r7.w;
                  r17.w = cmp(0 < r11.w);
                  r22.xyz = r13.www * r21.xyw + r16.xyz;
                  r11.w = saturate(r11.w);
                  r20.xyz = r20.xyz * r8.www + r5.xyz;
                  r8.w = dot(r20.xyz, r20.xyz);
                  r8.w = rsqrt(r8.w);
                  r20.xyz = r20.xyz * r8.www;
                  r8.w = dot(r20.xyz, r5.xyz);
                  r19.x = dot(r2.xyz, r20.xyz);
                  r20.x = abs(r19.x) * r4.w + -abs(r19.x);
                  r19.x = abs(r19.x) * r20.x + 1;
                  r20.x = r11.w * r0.w + r1.w;
                  r19.x = r19.x * r19.x;
                  r19.x = r19.x * r20.x;
                  r19.x = rcp(r19.x);
                  r11.w = r11.w * r12.w;
                  r11.w = r19.x * r11.w;
                  r7.w = r11.w * r7.w;
                  r20.xyz = r7.www * r21.xyw + r33.xyz;
                  r8.w = saturate(1 + -r8.w);
                  r11.w = r8.w * r8.w;
                  r11.w = r11.w * r11.w;
                  r8.w = r11.w * r8.w;
                  r7.w = r8.w * r7.w;
                  r24.xyz = r7.www * r21.xyw + r32.xyz;
                  r21.xyw = r13.www * r21.xyw + r31.xyz;
                  r16.xyz = r17.www ? r22.xyz : r16.xyz;
                  r31.xyz = r17.www ? r31.xyz : r21.xyw;
                  r32.xyz = r17.www ? r24.xyz : r32.xyz;
                  r33.xyz = r17.www ? r20.xyz : r33.xyz;
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
    r10.yzw = r16.xyz;
    r28.xyz = r31.xyz;
    r29.xyz = r32.xyz;
    r30.xyz = r33.xyz;
    r4.y = (int)r4.y + 32;
  }
  r2.xyz = r28.xyz * r3.xyz;
  r0.xyz = r10.yzw * r0.xyz + r2.xyz;
  r2.xyz = float3(1,1,1) + -r1.xyz;
  r2.xyz = r29.xyz * r2.xyz;
  r1.xyz = r30.xyz * r1.xyz + r2.xyz;
  r0.xyz = r1.xyz + r0.xyz;
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