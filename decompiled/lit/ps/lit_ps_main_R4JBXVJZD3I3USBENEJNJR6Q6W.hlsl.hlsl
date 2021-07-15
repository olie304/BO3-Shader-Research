// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:38:14 2021

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
  float detailScaleHeight : packoffset(c12.z);
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
Texture2D<float4> tintMask : register(t21);
Texture2D<float4> specColorMap : register(t22);
StructuredBuffer<gSunShadowTree> gSunShadowTree : register(t23);
Texture2D<float4> normalMap : register(t24);
Texture2D<float4> glossMap : register(t25);
Texture2D<float4> aoMap : register(t26);
Texture2D<float4> detailMap : register(t29);
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
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (uint,uint,uint,uint) u6
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2darray (uint,uint,uint,uint) u7
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = colorMap.Sample(colorSampler_s, w1.xy).xyzw;
  r1.w = v1.x * r0.w;
  r2.xy = detailScale.xy * w1.xy;
  r2.xyz = detailMap.Sample(normalSampler_s, r2.xy).xyz;
  r0.w = cmp(r1.w == 0.000000);
  if (r0.w != 0) {
    o0.xyzw = float4(0,0,0,0);
    return;
  }
  r0.w = tintMask.Sample(colorSampler_s, w1.xy).x;
  r2.w = specColorMap.Sample(specColorSampler_s, w1.xy).x;
  r3.x = glossMap.Sample(specColorSampler_s, w1.xy).x;
  r3.yzw = normalMap.Sample(normalSampler_s, w1.xy).xyz;
  r4.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r4.xyz = r0.www * r4.xyz + float3(1,1,1);
  r0.xyz = r4.xyz * r0.xyz;
  r4.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + specColorTint.xyz;
  r4.xyz = r2.www * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = saturate(1 + -r2.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = aoMap.Sample(aoSampler_s, w1.xy).x;
  r2.w = glossRange.y + -glossRange.x;
  r2.w = r3.x * r2.w + glossRange.x;
  r2.w = saturate(0.0588235296 * r2.w);
  r3.xyz = float3(-0.5,-0.5,-0) + r3.yzw;
  r3.xyz = baseNormalHeight * r3.xyz + float3(0.5,0.5,0);
  r3.xy = r3.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r3.w = dot(r3.xy, r3.xy);
  r3.w = 1 + -r3.w;
  r3.w = max(0, r3.w);
  r5.z = sqrt(r3.w);
  r3.z = r3.z * r3.z;
  r3.z = 0.333333343 * r3.z;
  r3.z = min(1, r3.z);
  r2.xy = r2.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.z = r2.z * r2.z;
  r2.z = 0.333333343 * r2.z;
  r2.z = min(1, r2.z);
  r5.xy = r2.xy * detailScaleHeight + r3.xy;
  r2.x = dot(r5.xyz, r5.xyz);
  r2.x = rsqrt(r2.x);
  r3.xyw = r5.xyz * r2.xxx;
  r2.x = r2.z * detailScaleHeight + r3.z;
  r2.y = v6.x ? 1 : -1;
  r2.z = dot(v2.xyz, v2.xyz);
  r2.z = rsqrt(r2.z);
  r5.xyz = v2.xyz * r2.zzz;
  r5.xyz = r5.xyz * r2.yyy;
  r2.z = dot(v3.xyz, v3.xyz);
  r2.z = rsqrt(r2.z);
  r6.xyz = v3.xyz * r2.zzz;
  r6.xyz = r6.xyz * r2.yyy;
  r2.z = dot(v4.xyz, v4.xyz);
  r2.z = rsqrt(r2.z);
  r7.xyz = v4.xyz * r2.zzz;
  r7.xyz = r7.xyz * r2.yyy;
  r2.y = -17 * r2.w;
  r2.y = exp2(r2.y);
  r2.x = r2.x + r2.y;
  r2.x = log2(r2.x);
  r2.y = saturate(-0.0588235296 * r2.x);
  r7.xyz = r7.xyz * r3.yyy;
  r3.xyz = r6.xyz * r3.xxx + r7.xyz;
  r3.xyz = r5.xyz * r3.www + r3.xyz;
  r2.z = dot(r3.xyz, r3.xyz);
  r2.z = rsqrt(r2.z);
  r3.xyz = r3.xyz * r2.zzz;
  r2.zw = (uint2)v0.xy;
  r4.w = cmp(v0.z >= 0.984375);
  r5.x = 1.01587307 * v0.z;
  r5.y = v0.z * 64 + -63;
  r4.w = r4.w ? r5.y : r5.x;
  r4.w = max(9.99999994e-09, r4.w);
  r4.w = rcp(r4.w);
  r5.x = dot(-v5.xyz, -v5.xyz);
  r5.x = rsqrt(r5.x);
  r5.yzw = -v5.xyz * r5.xxx;
  r6.x = cmp(isDepthHack != 0);
  r6.yz = (uint2)r2.wz;
  r6.w = dot(r6.zy, float2(0.0671105608,0.00583714992));
  r6.w = frac(r6.w);
  r6.w = 52.9829178 * r6.w;
  r6.w = frac(r6.w);
  r6.w = r6.w * 6.28318548 + gameTick.w;
  sincos(r6.w, r7.x, r8.x);
  r6.y = dot(r6.yz, float2(0.0671105608,0.00583714992));
  r6.y = frac(r6.y);
  r6.y = 52.9829178 * r6.y;
  r6.y = frac(r6.y);
  r6.y = r6.y * 6.28318548 + gameTick.w;
  sincos(r6.y, r9.x, r10.x);
  r2.x = saturate(dot(r3.xyz, r5.yzw));
  r6.y = dot(-r5.yzw, r3.xyz);
  r6.y = r6.y + r6.y;
  r11.xyz = r3.xyz * -r6.yyy + -r5.yzw;
  r6.y = 17 * r2.y;
  r6.y = exp2(r6.y);
  r6.y = 2 + r6.y;
  r6.y = 2 / r6.y;
  r6.z = sqrt(r6.y);
  r6.w = 1 + -r2.y;
  r7.z = 5 * r6.w;
  r7.w = r6.w * 5 + -2.5;
  r7.w = 0.400000006 * r7.w;
  r7.w = max(0, r7.w);
  r7.w = 100 * r7.w;
  r9.yz = -r6.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r8.w = exp2(r9.y);
  r8.w = r8.w * r2.x;
  r8.w = 9.1368103 * r8.w;
  r9.y = r7.z * r6.w;
  r9.y = -r9.y * 2.0159049 + r9.z;
  r9.y = exp2(r9.y);
  r9.y = r9.y * r2.x;
  r9.y = 9.70808983 * r9.y;
  r8.w = max(r9.y, r8.w);
  r8.w = max(1.26815999, r8.w);
  r9.y = numRefProbes + -numOverrideProbes;
  r4.w = 0.0078125 * r4.w;
  r4.w = min(15, r4.w);
  r4.w = (uint)r4.w;
  r12.xy = (uint2)r2.zw >> int2(6,6);
  r12.z = (uint)r4.w << 4;
  r2.z = (int)r9.y & -32;
  r2.w = (int)-r2.z + (int)r9.y;
  r4.w = numRefProbes & -32;
  r9.z = (int)-r4.w + numRefProbes;
  r13.xy = float2(0,0);
  r14.w = 0;
  r15.yz = float2(0,1);
  r16.xy = float2(0,0);
  r17.x = 1;
  r18.xy = float2(0,0);
  r19.xy = float2(0,0);
  r20.xyzw = float4(0,0,0,0);
  r21.yzw = float3(0,0,0);
  r9.w = r2.z;
  while (true) {
    r10.y = cmp((uint)r9.w >= numRefProbes);
    if (r10.y != 0) break;
    r13.z = (uint)r9.w >> 5;
    r14.xyz = (int3)r12.xyz + (int3)r13.xyz;
    r10.y = visibleProbes.Load(r14.xyzw).x;
    r10.z = cmp((int)r2.z == (int)r9.w);
    bitmask.w = ((~(-1 << r2.w)) << 0) & 0xffffffff;  r10.w = (((uint)0 << 0) & bitmask.w) | ((uint)r10.y & ~bitmask.w);
    r10.y = r10.z ? r10.w : r10.y;
    r10.z = cmp((int)r4.w == (int)r9.w);
    if (r9.z == 0) r10.w = 0; else if (r9.z+0 < 32) {     r10.w = (uint)r10.y << (32-(r9.z + 0)); r10.w = (uint)r10.w >> (32-r9.z);    } else r10.w = (uint)r10.y >> 0;
    r10.y = r10.z ? r10.w : r10.y;
    r10.z = (int)r9.w + numLights;
    r22.xyzw = r20.xyzw;
    r23.xyz = r21.yzw;
    r10.w = r10.y;
    while (true) {
      if (r10.w == 0) break;
      r12.w = firstbitlow((uint)r10.w);
      r13.z = 1 << (int)r12.w;
      r13.w = (int)r10.w & (int)r13.z;
      if (r13.w != 0) {
        r10.w = (int)r10.w ^ (int)r13.z;
        r13.z = (int)r10.z + (int)r12.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r24.xyzw, r13.z, l(0), t11.xyzw
      r24.x = samp0[]..swiz;
      r24.y = samp0[]..swiz;
      r24.z = samp0[]..swiz;
      r24.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r14.xy, r13.z, l(16), t11.xyxx
      r14.x = samp0[]..swiz;
      r14.y = samp0[]..swiz;
        r24.xyz = -v5.xyz + r24.xyz;
        r14.z = r24.w;
        r14.xyz = cmp(abs(r24.xyz) < r14.zxy);
        r13.z = r14.y ? r14.x : 0;
        r13.z = r14.z ? r13.z : 0;
        if (r13.z != 0) {
          r12.w = (int)r9.w + (int)r12.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r12.w, l(0), t15.wxyz
        r24.x = samp0[]..swiz;
        r24.y = samp0[]..swiz;
        r24.z = samp0[]..swiz;
        r24.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r13.zw, r12.w, l(96), t15.xxxy
        r13.z = samp0[]..swiz;
        r13.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r12.w, l(116), t15.zwxy
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        r25.z = samp0[]..swiz;
        r25.w = samp0[]..swiz;
          r14.xyz = v5.xyz + -r24.yzw;
          r15.w = (int)r25.w & 0x0000ffff;
          if (6 == 0) r16.w = 0; else if (6+25 < 32) {           r16.w = (uint)r25.w << (32-(6 + 25)); r16.w = (uint)r16.w >> (32-6);          } else r16.w = (uint)r25.w >> 25;
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
          r17.z = dot(r26.xyz, r14.xyz);
          r17.z = saturate(r17.z + r26.w);
          r17.w = dot(r27.xyz, r14.xyz);
          r17.w = saturate(r17.w + r27.w);
          r17.z = r17.z * r17.w;
          r17.w = dot(r28.xyz, r14.xyz);
          r17.w = saturate(r17.w + r28.w);
          r17.z = r17.z * r17.w;
          r17.w = dot(r29.xyz, r14.xyz);
          r17.w = saturate(r17.w + r29.w);
          r17.z = r17.z * r17.w;
          r17.w = dot(r30.xyz, r14.xyz);
          r17.w = saturate(r17.w + r30.w);
          r17.z = r17.z * r17.w;
          r17.w = dot(r31.xyz, r14.xyz);
          r17.w = saturate(r17.w + r31.w);
          r15.x = r17.z * r17.w;
          r17.z = (int)r13.z & 1;
          r17.zw = r17.zz ? r15.xy : r15.zx;
          r15.x = r13.z;
          r26.xy = r17.zw;
          r18.w = 1;
          while (true) {
            r19.w = cmp((int)r18.w >= (int)r16.w);
            if (r19.w != 0) break;
            r19.w = (int)r15.w + (int)r18.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r19.w, l(0), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r19.w, l(16), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r19.w, l(32), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r19.w, l(48), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r19.w, l(64), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r19.w, l(80), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
            r19.w = dot(r27.xyz, r14.xyz);
            r19.w = saturate(r19.w + r27.w);
            r19.w = r26.x * r19.w;
            r24.w = dot(r28.xyz, r14.xyz);
            r24.w = saturate(r24.w + r28.w);
            r19.w = r24.w * r19.w;
            r24.w = dot(r29.xyz, r14.xyz);
            r24.w = saturate(r24.w + r29.w);
            r19.w = r24.w * r19.w;
            r24.w = dot(r30.xyz, r14.xyz);
            r24.w = saturate(r24.w + r30.w);
            r19.w = r24.w * r19.w;
            r24.w = dot(r31.xyz, r14.xyz);
            r24.w = saturate(r24.w + r31.w);
            r19.w = r24.w * r19.w;
            r24.w = dot(r32.xyz, r14.xyz);
            r24.w = saturate(r24.w + r32.w);
            r26.x = r24.w * r19.w;
            r26.z = (uint)r15.x >> 2;
            if (1 == 0) r26.w = 0; else if (1+2 < 32) {             r26.w = (uint)r15.x << (32-(1 + 2)); r26.w = (uint)r26.w >> (32-1);            } else r26.w = (uint)r15.x >> 2;
            r27.x = (int)r26.z & 2;
            r27.y = max(r26.y, r26.x);
            r19.w = -r19.w * r24.w + 1;
            r19.w = r26.y * r19.w;
            r17.y = r27.x ? r19.w : r27.y;
            r26.xy = r26.ww ? r26.xy : r17.xy;
            r18.w = (int)r18.w + 1;
            r15.x = r26.z;
          }
          r26.y = saturate(r26.y);
          r13.z = r26.y * r13.w;
          r15.x = cmp(0 < r13.z);
          if (r15.x != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r12.w, l(16), t15.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
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
            r23.z = r26.y * r13.w + r23.z;
            r12.w = r13.z * r25.z;
            r25.z = r32.z;
            r13.z = dot(r11.xyz, r25.xyz);
            r13.w = dot(r14.xyz, r25.xyz);
            r13.w = r13.w + -r32.w;
            r15.x = cmp(r13.w >= 0);
            r13.w = max(abs(r13.w), r7.w);
            r13.w = r15.x ? r13.w : -r13.w;
            r13.z = max(1.00000001e-07, -r13.z);
            r13.z = r13.w / r13.z;
            r13.z = min(131072, abs(r13.z));
            r32.z = r33.z;
            r13.w = dot(r11.xyz, r32.xyz);
            r15.x = dot(r14.xyz, r32.xyz);
            r15.x = r15.x + -r33.w;
            r15.w = cmp(r15.x >= 0);
            r15.x = max(abs(r15.x), r7.w);
            r15.x = r15.w ? r15.x : -r15.x;
            r13.w = max(1.00000001e-07, -r13.w);
            r13.w = r15.x / r13.w;
            r13.z = min(r13.z, abs(r13.w));
            r33.z = r34.z;
            r13.w = dot(r11.xyz, r33.xyz);
            r15.x = dot(r14.xyz, r33.xyz);
            r15.x = r15.x + -r34.w;
            r15.w = cmp(r15.x >= 0);
            r15.x = max(abs(r15.x), r7.w);
            r15.x = r15.w ? r15.x : -r15.x;
            r13.w = max(1.00000001e-07, -r13.w);
            r13.w = r15.x / r13.w;
            r13.z = min(r13.z, abs(r13.w));
            r34.z = r35.z;
            r13.w = dot(r11.xyz, r34.xyz);
            r15.x = dot(r14.xyz, r34.xyz);
            r15.x = r15.x + -r35.w;
            r15.w = cmp(r15.x >= 0);
            r15.x = max(abs(r15.x), r7.w);
            r15.x = r15.w ? r15.x : -r15.x;
            r13.w = max(1.00000001e-07, -r13.w);
            r13.w = r15.x / r13.w;
            r13.z = min(r13.z, abs(r13.w));
            r35.z = r36.x;
            r13.w = dot(r11.xyz, r35.xyz);
            r15.x = dot(r14.xyz, r35.xyz);
            r15.x = r15.x + -r36.y;
            r15.w = cmp(r15.x >= 0);
            r15.x = max(abs(r15.x), r7.w);
            r15.x = r15.w ? r15.x : -r15.x;
            r13.w = max(1.00000001e-07, -r13.w);
            r13.w = r15.x / r13.w;
            r13.z = min(r13.z, abs(r13.w));
            r37.zw = r36.zw;
            r13.w = dot(r11.zxy, r37.xzw);
            r15.x = dot(r14.zxy, r37.xzw);
            r15.x = r15.x + -r37.y;
            r15.w = cmp(r15.x >= 0);
            r15.x = max(abs(r15.x), r7.w);
            r15.x = r15.w ? r15.x : -r15.x;
            r13.w = max(1.00000001e-07, -r13.w);
            r13.w = r15.x / r13.w;
            r13.z = min(r13.z, abs(r13.w));
            r25.x = r29.w;
            r25.yz = r30.zw;
            r17.yzw = r25.xyz + r14.xyz;
            r17.yzw = r11.xyz * r13.zzz + r17.yzw;
            r13.w = dot(r17.yzw, r17.yzw);
            r13.w = sqrt(r13.w);
            r13.z = r13.z / r13.w;
            r13.z = r13.z + r13.z;
            r13.z = sqrt(r13.z);
            r13.z = r6.w * 5 + r13.z;
            r13.z = -0.844799995 + r13.z;
            r24.y = r27.z;
            r24.z = r28.x;
            r32.x = dot(r17.yzw, r24.xyz);
            r25.xy = r27.xw;
            r25.z = r28.w;
            r32.y = dot(r17.yzw, r25.xyz);
            r28.x = r27.y;
            r32.z = dot(r17.yzw, r28.xyz);
            if (9 == 0) r13.w = 0; else if (9+16 < 32) {             r13.w = (uint)r25.w << (32-(9 + 16)); r13.w = (uint)r13.w >> (32-9);            } else r13.w = (uint)r25.w >> 16;
            r32.w = (uint)r13.w;
            r17.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r32.xyzw, r13.z).xyz;
            r27.x = dot(r14.xyz, r24.xyz);
            r27.y = dot(r14.xyz, r25.xyz);
            r27.z = dot(r14.xyz, r28.xyz);
            r14.xyz = saturate(r27.xyz * r29.xyz + float3(0.5,0.5,0.5));
            r30.z = r31.x;
            r14.xyz = r14.xyz * r30.xyz + r31.yzw;
            r32.x = dot(r3.xyz, r24.xyz);
            r32.y = dot(r3.xyz, r25.xyz);
            r32.z = dot(r3.xyz, r28.xyz);
            r24.xyz = cmp(float3(0,0,0) < r32.xyz);
            r16.z = r24.x ? 0 : 0.5;
            r25.xyz = r16.xyz + r14.xyz;
            r25.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
            r26.xzw = r32.xyz * r32.xyz;
            r26.xzw = r26.xzw * r12.www;
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
            r13.z = dot(r25.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r22.xyz = r14.xyz * r24.xyz + r22.xyz;
            r13.w = r13.z * r8.w;
            r14.xyz = r17.yzw * r12.www;
            r12.w = dot(r14.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r12.w = r8.w * r13.z + r12.w;
            r12.w = r13.w / r12.w;
            r24.x = r22.w;
            r24.yz = r23.xy;
            r23.xyw = r14.yzx * r12.www + r24.yzx;
            r22.w = r23.w;
          }
        }
      }
    }
    r20.xyzw = r22.xyzw;
    r21.yzw = r23.xyz;
    r9.w = (int)r9.w + 32;
  }
  r4.w = cmp(r21.w < 1);
  if (r4.w != 0) {
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
    r4.w = r21.w;
    r9.z = 0;
    while (true) {
      r9.w = cmp((uint)r9.z >= (uint)r9.y);
      if (r9.w != 0) break;
      r13.z = (uint)r9.z >> 5;
      r14.xyz = (int3)r12.xyz + (int3)r13.xyz;
      r9.w = visibleProbes.Load(r14.xyzw).x;
      r12.w = cmp((int)r2.z == (int)r9.z);
      if (r2.w == 0) r13.z = 0; else if (r2.w+0 < 32) {       r13.z = (uint)r9.w << (32-(r2.w + 0)); r13.z = (uint)r13.z >> (32-r2.w);      } else r13.z = (uint)r9.w >> 0;
      r9.w = r12.w ? r13.z : r9.w;
      r12.w = (int)r9.z + numLights;
      r23.xyzw = r22.xyzw;
      r14.xyz = r10.yzw;
      r13.z = r4.w;
      r13.w = r9.w;
      while (true) {
        if (r13.w == 0) break;
        r15.w = firstbitlow((uint)r13.w);
        r16.w = 1 << (int)r15.w;
        r17.z = (int)r13.w & (int)r16.w;
        if (r17.z != 0) {
          r13.w = (int)r13.w ^ (int)r16.w;
          r16.w = (int)r12.w + (int)r15.w;
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
          r24.xyz = -v5.xyz + r24.xyz;
          r25.z = r24.w;
          r24.xyz = cmp(abs(r24.xyz) < r25.zxy);
          r16.w = r24.y ? r24.x : 0;
          r16.w = r24.z ? r16.w : 0;
          if (r16.w != 0) {
            r15.w = (int)r9.z + (int)r15.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r15.w, l(0), t15.wxyz
          r24.x = samp0[]..swiz;
          r24.y = samp0[]..swiz;
          r24.z = samp0[]..swiz;
          r24.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r17.zw, r15.w, l(96), t15.xxxy
          r17.z = samp0[]..swiz;
          r17.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r15.w, l(116), t15.zwxy
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
            r26.xyz = v5.xyz + -r24.yzw;
            r16.w = (int)r25.w & 0x0000ffff;
            if (6 == 0) r18.w = 0; else if (6+25 < 32) {             r18.w = (uint)r25.w << (32-(6 + 25)); r18.w = (uint)r18.w >> (32-6);            } else r18.w = (uint)r25.w >> 25;
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
            r19.w = dot(r27.xyz, r26.xyz);
            r19.w = saturate(r19.w + r27.w);
            r24.w = dot(r28.xyz, r26.xyz);
            r24.w = saturate(r24.w + r28.w);
            r19.w = r24.w * r19.w;
            r24.w = dot(r29.xyz, r26.xyz);
            r24.w = saturate(r24.w + r29.w);
            r19.w = r24.w * r19.w;
            r24.w = dot(r30.xyz, r26.xyz);
            r24.w = saturate(r24.w + r30.w);
            r19.w = r24.w * r19.w;
            r24.w = dot(r31.xyz, r26.xyz);
            r24.w = saturate(r24.w + r31.w);
            r19.w = r24.w * r19.w;
            r24.w = dot(r32.xyz, r26.xyz);
            r24.w = saturate(r24.w + r32.w);
            r15.x = r24.w * r19.w;
            r19.w = (int)r17.z & 1;
            r27.xy = r19.ww ? r15.xy : r15.zx;
            r15.x = r17.z;
            r28.xy = r27.xy;
            r19.w = 1;
            while (true) {
              r24.w = cmp((int)r19.w >= (int)r18.w);
              if (r24.w != 0) break;
              r24.w = (int)r16.w + (int)r19.w;
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
              r24.w = dot(r29.xyz, r26.xyz);
              r24.w = saturate(r24.w + r29.w);
              r24.w = r28.x * r24.w;
              r26.w = dot(r30.xyz, r26.xyz);
              r26.w = saturate(r26.w + r30.w);
              r24.w = r26.w * r24.w;
              r26.w = dot(r31.xyz, r26.xyz);
              r26.w = saturate(r26.w + r31.w);
              r24.w = r26.w * r24.w;
              r26.w = dot(r32.xyz, r26.xyz);
              r26.w = saturate(r26.w + r32.w);
              r24.w = r26.w * r24.w;
              r26.w = dot(r33.xyz, r26.xyz);
              r26.w = saturate(r26.w + r33.w);
              r24.w = r26.w * r24.w;
              r26.w = dot(r34.xyz, r26.xyz);
              r26.w = saturate(r26.w + r34.w);
              r28.x = r26.w * r24.w;
              r27.z = (uint)r15.x >> 2;
              if (1 == 0) r27.w = 0; else if (1+2 < 32) {               r27.w = (uint)r15.x << (32-(1 + 2)); r27.w = (uint)r27.w >> (32-1);              } else r27.w = (uint)r15.x >> 2;
              r28.z = (int)r27.z & 2;
              r28.w = max(r28.y, r28.x);
              r24.w = -r24.w * r26.w + 1;
              r24.w = r28.y * r24.w;
              r17.y = r28.z ? r24.w : r28.w;
              r28.xy = r27.ww ? r28.xy : r17.xy;
              r19.w = (int)r19.w + 1;
              r15.x = r27.z;
            }
            r15.x = saturate(r28.y + -r13.z);
            r16.w = r15.x * r17.w;
            r17.y = cmp(0 < r16.w);
            if (r17.y != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r15.w, l(16), t15.xyzw
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r15.w, l(32), t15.yxwz
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r15.w, l(48), t15.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r15.w, l(64), t15.zwxy
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r15.w, l(80), t15.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r15.w, l(132), t15.zwxy
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r15.w, l(148), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r15.w, l(164), t15.zwxy
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r15.w, l(180), t15.zwxy
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r15.w, l(196), t15.xyzw
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xy, r15.w, l(212), t15.xyxx
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
              r23.w = r15.x * r17.w + r23.w;
              r15.x = r16.w * r25.z;
              r25.z = r33.z;
              r15.w = dot(r11.xyz, r25.xyz);
              r16.w = dot(r26.xyz, r25.xyz);
              r16.w = r16.w + -r33.w;
              r17.y = cmp(r16.w >= 0);
              r16.w = max(abs(r16.w), r7.w);
              r16.w = r17.y ? r16.w : -r16.w;
              r15.w = max(1.00000001e-07, -r15.w);
              r15.w = r16.w / r15.w;
              r15.w = min(131072, abs(r15.w));
              r33.z = r34.z;
              r16.w = dot(r11.xyz, r33.xyz);
              r17.y = dot(r26.xyz, r33.xyz);
              r17.y = r17.y + -r34.w;
              r17.z = cmp(r17.y >= 0);
              r17.y = max(abs(r17.y), r7.w);
              r17.y = r17.z ? r17.y : -r17.y;
              r16.w = max(1.00000001e-07, -r16.w);
              r16.w = r17.y / r16.w;
              r15.w = min(abs(r16.w), r15.w);
              r34.z = r35.z;
              r16.w = dot(r11.xyz, r34.xyz);
              r17.y = dot(r26.xyz, r34.xyz);
              r17.y = r17.y + -r35.w;
              r17.z = cmp(r17.y >= 0);
              r17.y = max(abs(r17.y), r7.w);
              r17.y = r17.z ? r17.y : -r17.y;
              r16.w = max(1.00000001e-07, -r16.w);
              r16.w = r17.y / r16.w;
              r15.w = min(abs(r16.w), r15.w);
              r35.z = r36.z;
              r16.w = dot(r11.xyz, r35.xyz);
              r17.y = dot(r26.xyz, r35.xyz);
              r17.y = r17.y + -r36.w;
              r17.z = cmp(r17.y >= 0);
              r17.y = max(abs(r17.y), r7.w);
              r17.y = r17.z ? r17.y : -r17.y;
              r16.w = max(1.00000001e-07, -r16.w);
              r16.w = r17.y / r16.w;
              r15.w = min(abs(r16.w), r15.w);
              r36.z = r37.x;
              r16.w = dot(r11.xyz, r36.xyz);
              r17.y = dot(r26.xyz, r36.xyz);
              r17.y = r17.y + -r37.y;
              r17.z = cmp(r17.y >= 0);
              r17.y = max(abs(r17.y), r7.w);
              r17.y = r17.z ? r17.y : -r17.y;
              r16.w = max(1.00000001e-07, -r16.w);
              r16.w = r17.y / r16.w;
              r15.w = min(abs(r16.w), r15.w);
              r38.zw = r37.zw;
              r16.w = dot(r11.zxy, r38.xzw);
              r17.y = dot(r26.zxy, r38.xzw);
              r17.y = r17.y + -r38.y;
              r17.z = cmp(r17.y >= 0);
              r17.y = max(abs(r17.y), r7.w);
              r17.y = r17.z ? r17.y : -r17.y;
              r16.w = max(1.00000001e-07, -r16.w);
              r16.w = r17.y / r16.w;
              r15.w = min(abs(r16.w), r15.w);
              r25.x = r30.w;
              r25.yz = r31.zw;
              r17.yzw = r25.xyz + r26.xyz;
              r17.yzw = r11.xyz * r15.www + r17.yzw;
              r16.w = dot(r17.yzw, r17.yzw);
              r16.w = sqrt(r16.w);
              r15.w = r15.w / r16.w;
              r15.w = r15.w + r15.w;
              r15.w = sqrt(r15.w);
              r15.w = r6.w * 5 + r15.w;
              r15.w = -0.844799995 + r15.w;
              r24.y = r27.z;
              r24.z = r29.x;
              r33.x = dot(r17.yzw, r24.xyz);
              r25.xy = r27.xw;
              r25.z = r29.w;
              r33.y = dot(r17.yzw, r25.xyz);
              r29.x = r27.y;
              r33.z = dot(r17.yzw, r29.xyz);
              if (9 == 0) r16.w = 0; else if (9+16 < 32) {               r16.w = (uint)r25.w << (32-(9 + 16)); r16.w = (uint)r16.w >> (32-9);              } else r16.w = (uint)r25.w >> 16;
              r33.w = (uint)r16.w;
              r17.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, r15.w).xyz;
              r27.x = dot(r26.xyz, r24.xyz);
              r27.y = dot(r26.xyz, r25.xyz);
              r27.z = dot(r26.xyz, r29.xyz);
              r26.xyz = saturate(r27.xyz * r30.xyz + float3(0.5,0.5,0.5));
              r31.z = r32.x;
              r26.xyz = r26.xyz * r31.xyz + r32.yzw;
              r33.x = dot(r3.xyz, r24.xyz);
              r33.y = dot(r3.xyz, r25.xyz);
              r33.z = dot(r3.xyz, r29.xyz);
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
              r15.w = dot(r26.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r14.xyz = r24.xyz * r25.xyz + r14.xyz;
              r16.z = r15.w * r8.w;
              r17.yzw = r17.yzw * r15.xxx;
              r15.x = dot(r17.yzw, float3(0.212599993,0.715200007,0.0722000003));
              r15.x = r8.w * r15.w + r15.x;
              r15.x = r16.z / r15.x;
              r23.xyz = r17.yzw * r15.xxx + r23.xyz;
            }
          }
        }
      }
      r22.xyzw = r23.xyzw;
      r10.yzw = r14.xyz;
      r9.z = (int)r9.z + 32;
    }
    r21.xyzw = r22.zxyw;
    r20.xyz = r10.yzw;
    r21.xyzw = r21.yzxw;
  } else {
    r21.x = r20.w;
  }
  r2.z = max(1, r21.w);
  r2.z = rcp(r2.z);
  r21.w = saturate(r21.w);
  r9.yzw = r20.xyz * r2.zzz;
  r10.yzw = r21.xyz * r2.zzz;
  r2.w = cmp(r21.w < 0.99000001);
  if (r2.w != 0) {
    r2.w = 1 + -r21.w;
    r4.w = sunConstants.globalProbeExposure * r2.w;
    r13.xyz = -globalProbeConstants.data[0].xyz + v5.xyz;
    r14.x = globalProbeConstants.data[0].w * r13.x;
    r14.yz = globalProbeConstants.data[1].xy * r13.yz;
    r13.xyz = saturate(float3(0.5,0.5,0.5) + r14.xyz);
    r14.xy = globalProbeConstants.data[1].zw * r13.xy;
    r14.z = globalProbeConstants.data[2].x * r13.z;
    r13.xyz = globalProbeConstants.data[2].yzw + r14.xyz;
    r14.xyz = cmp(float3(0,0,0) < r3.xyz);
    r14.xyz = r14.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r14.w = 0;
    r15.xyz = r14.wwx + r13.xyz;
    r15.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r15.xyz, 0).xyz;
    r16.xyz = r3.xyz * r3.xyz;
    r16.xyz = r16.xyz * r4.www;
    r17.xyz = r14.wwy + r13.xyz;
    r17.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r17.xyz, 0).xyz;
    r17.xyz = r17.xyz * r16.yyy;
    r15.xyz = r15.xyz * r16.xxx + r17.xyz;
    r13.xyz = r14.wwz + r13.xyz;
    r13.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r13.xyz, 0).xyz;
    r13.xyz = r13.xyz * r16.zzz + r15.xyz;
    r3.w = 0;
    r14.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r3.xyzw, 6).xyz;
    r13.xyz = r14.xyz * r13.xyz;
    r3.w = dot(r13.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r9.yzw = r20.xyz * r2.zzz + r13.xyz;
    r11.w = 0;
    r13.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, r7.z).xyz;
    r2.z = sunConstants.globalProbeExposure * r2.w + -r3.w;
    r2.z = r2.y * r2.z + r3.w;
    r10.yzw = r13.xyz * r2.zzz + r10.yzw;
  }
  r2.z = r2.x + r0.w;
  r2.z = log2(abs(r2.z));
  r2.z = r6.z * r2.z;
  r2.z = exp2(r2.z);
  r2.z = r2.z + r0.w;
  r2.z = saturate(-1 + r2.z);
  r13.xyz = r9.yzw * r0.www;
  r2.yw = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r2.yw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r2.yw, 0).xy;
  r9.yzw = r10.yzw * r2.zzz;
  r14.xyz = r9.zwy * r2.yyy;
  r2.yzw = r9.yzw * r2.www;
  r0.w = sqrt(r6.z);
  r0.w = r0.w * 0.5 + 0.5;
  r0.w = r0.w * r0.w;
  r3.w = 0.5 * r0.w;
  r0.w = -r0.w * 0.5 + 1;
  r4.w = r2.x * r0.w + r3.w;
  r0.w = r4.w * r0.w;
  r3.w = r4.w * r3.w;
  r4.w = dot(r3.xyz, sunConstants.wldDir.xyz);
  r6.w = saturate(r4.w);
  r7.z = cmp(0 >= r6.w);
  if (r7.z != 0) {
    r7.w = 0;
  }
  if (r7.z == 0) {
    r9.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v5.yyy;
    r9.yzw = v5.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r9.yzw;
    r9.yzw = v5.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r9.yzw;
    r9.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r9.yzw;
    r7.z = -sunConstants.splitDepthOffset + r9.w;
    r7.z = -r7.z * 6.10351563e-05 + 1;
    r8.w = saturate(r7.z);
    r8.w = cmp(r7.z == r8.w);
    if (r8.w != 0) {
      r8.w = 0;
      r10.y = 0;
      while (true) {
        r10.z = cmp(r8.w >= 3);
        if (r10.z != 0) break;
        r10.z = (uint)r8.w;
        r15.xy = -sunConstants.splitPinTransform[r10.z].xy + r9.yz;
        r10.w = max(abs(r15.x), abs(r15.y));
        r10.y = sunConstants.splitPinTransform[r10.z].z * r10.w;
        r10.z = cmp(r10.y < 1);
        if (r10.z != 0) {
          break;
        }
        r8.w = 1 + r8.w;
        r10.y = 0;
      }
    } else {
      r8.w = 3;
      r10.y = 0;
    }
    r10.z = cmp(r8.w >= 3);
    if (r10.z != 0) {
      r15.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r16.xz = rcp(r15.xx);
      r16.y = -r16.z;
      r15.xyz = r9.yzy * r16.xyz + r15.yzy;
      r16.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r15.xyz = max(float3(0,0,0), r15.xyz);
      r15.xyz = min(r15.xyz, r16.xyz);
      r16.xy = sunConstants.sstLightingConstants.coordScale * r15.zy;
      r16.xy = floor(r16.xy);
      r10.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r16.y;
      r10.w = r10.w * sunConstants.sstLightingConstants.coordScale + r16.x;
      r10.w = (uint)r10.w;
      r10.w = (int)r10.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.w, r10.w, l(0), t23.xxxx
    r11.w = samp0[]..swiz;
      r12.w = (int)r11.w & 0x40000000;
      r15.w = (uint)r11.w << 2;
      if (r12.w == 0) {
        r12.w = (int)r11.w & 0x01ffffff;
        r16.x = (int)r10.w + (int)r12.w;
        r10.w = (uint)r11.w >> 25;
        r10.w = (uint)r10.w;
        r15.xyz = r15.xyz * r10.www;
        r15.xyz = frac(r15.xyz);
        r15.xyz = float3(128,128,128) * r15.xyz;
        r15.xyz = (uint3)r15.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.x, l(0), t23.xxxx
      r16.z = samp0[]..swiz;
        r17.xy = (uint2)r15.zy >> int2(6,6);
        r10.w = (int)r16.z & 0xc0000000;
        r11.w = (int)r16.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.w, r11.w, l(0), t23.xxxx
      r11.w = samp0[]..swiz;
        r11.w = r17.y ? r16.z : r11.w;
        r12.w = (uint)r11.w >> 13;
        r11.w = r17.x ? r12.w : r11.w;
        r11.w = (int)r11.w & 8191;
        r17.x = (int)r11.w + (int)r16.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
      r17.z = samp0[]..swiz;
        r16.y = 0;
        r17.y = 1;
        r17.xyz = r10.www ? r16.xyz : r17.xyz;
        r18.yz = r10.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r19.xy = (uint2)r15.zy >> (uint2)r18.yy;
        r19.xy = (int2)r19.xy & int2(1,1);
        r11.w = (int)r17.z & 0xc0000000;
        r12.w = (int)r17.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.w, r12.w, l(0), t23.xxxx
      r12.w = samp0[]..swiz;
        r12.w = r19.y ? r17.z : r12.w;
        r16.w = (uint)r12.w >> 13;
        r12.w = r19.x ? r16.w : r12.w;
        r12.w = (int)r12.w & 8191;
        r18.x = (int)r12.w + (int)r17.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.x, l(0), t23.xxxx
      r18.w = samp0[]..swiz;
        r17.xyz = r11.www ? r17.xyz : r18.xzw;
        r16.xyz = r10.www ? r16.xyz : r17.xyz;
        r10.w = (int)r16.z & 0xc0000000;
        if (r10.w == 0) {
          r10.w = (int)-r16.y + 6;
          r17.xy = (uint2)r15.zy >> (uint2)r10.ww;
          r10.w = (int)r16.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r11.w = (((uint)r17.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r11.w = (((uint)r17.x << 0) & bitmask.w) | ((uint)r11.w & ~bitmask.w);
          r11.w = (int)r11.w * 10;
          r10.w = (uint)r10.w >> (uint)r11.w;
          r10.w = (int)r10.w & 1023;
          r17.x = (int)r10.w + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.x, l(0), t23.xxxx
        r17.w = samp0[]..swiz;
          r17.yz = (int2)r16.yy + int2(1,2);
          r10.w = (int)-r17.y + 6;
          r16.yw = (uint2)r15.zy >> (uint2)r10.ww;
          r10.w = (int)r17.w & 0xc0000000;
          r11.w = (int)r17.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r12.w = (((uint)r16.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r12.w = (((uint)r16.y << 0) & bitmask.w) | ((uint)r12.w & ~bitmask.w);
          r12.w = (int)r12.w * 10;
          r11.w = (uint)r11.w >> (uint)r12.w;
          r11.w = (int)r11.w & 1023;
          r18.x = (int)r11.w + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
        r18.z = samp0[]..swiz;
          r18.y = r17.z;
          r18.xyz = r10.www ? r17.xyw : r18.xyz;
          r11.w = (int)-r18.y + 6;
          r16.yw = (uint2)r15.zy >> (uint2)r11.ww;
          r11.w = (int)r18.z & 0xc0000000;
          r12.w = (int)r18.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r16.w = (((uint)r16.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r16.y = (((uint)r16.y << 0) & bitmask.y) | ((uint)r16.w & ~bitmask.y);
          r16.y = (int)r16.y * 10;
          r12.w = (uint)r12.w >> (uint)r16.y;
          r12.w = (int)r12.w & 1023;
          r19.x = (int)r12.w + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.y, r19.x, l(0), t23.xxxx
        r19.y = samp0[]..swiz;
          r16.yw = r11.ww ? r18.xz : r19.xy;
          r16.xz = r10.ww ? r17.xw : r16.yw;
        }
        r10.w = (int)r16.z & 0xc0000000;
        if (r10.w == 0) {
          if (14 == 0) r11.w = 0; else if (14+15 < 32) {           r11.w = (uint)r16.z << (32-(14 + 15)); r11.w = (uint)r11.w >> (32-14);          } else r11.w = (uint)r16.z >> 15;
          r11.w = (uint)r11.w;
          r11.w = sunConstants.sstLightingConstants.constants.spanInInches * r11.w;
          r11.w = 6.10388815e-05 * r11.w;
          r16.yw = (int2)r16.zz & int2(32767,536870912);
          r12.w = (uint)r16.y;
          r12.w = sunConstants.sstLightingConstants.constants.spanInInches * r12.w;
          r12.w = 3.05185094e-05 * r12.w;
          r16.y = (int)r15.y & 3;
          r16.y = (int)r16.y + (int)r16.x;
          r16.y = (int)r16.y + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.y, r16.y, l(0), t23.xxxx
        r16.y = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r17.x = (((uint)r15.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r17.y = (((uint)r15.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r17.z = (((uint)r15.z << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r15.x = (uint)r16.y >> (uint)r17.x;
          r15.x = (int)r15.x & 255;
          r15.x = (uint)r15.x;
          r15.x = r15.x * r12.w;
          r15.x = r15.x * 0.00392156886 + r11.w;
          r15.y = (int)r17.y + 1;
          if (1 == 0) r15.z = 0; else if (1+1 < 32) {           r15.z = (uint)r15.z << (32-(1 + 1)); r15.z = (uint)r15.z >> (32-1);          } else r15.z = (uint)r15.z >> 1;
          r15.y = (int)r15.z + (int)r15.y;
          r15.y = (int)r15.y + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.y, r15.y, l(0), t23.xxxx
        r15.y = samp0[]..swiz;
          r15.y = (uint)r15.y >> (uint)r17.z;
          r15.y = (int)r15.y & 0x0000ffff;
          r15.y = (uint)r15.y;
          r12.w = r15.y * r12.w;
          r11.w = r12.w * 1.52590219e-05 + r11.w;
          r15.w = r16.w ? r15.x : r11.w;
        } else {
          r11.w = (int)r16.z & 0x80000000;
          r12.w = (int)r16.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.w, r12.w, l(0), t23.xxxx
        r12.w = samp0[]..swiz;
          r11.w = r11.w ? r12.w : 0;
          r12.w = (uint)r16.z << 2;
          r15.x = (uint)r11.w >> 16;
          r15.x = f16tof32(r15.x);
          r11.w = (int)r11.w & 0x0000ffff;
          r11.w = f16tof32(r11.w);
          r12.w = r9.y * r15.x + r12.w;
          r11.w = r9.z * r11.w + r12.w;
          r15.w = r10.w ? r11.w : r15.w;
        }
      }
      r9.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r9.w;
      r9.w = cmp(r15.w < r9.w);
      r7.w = r9.w ? 0 : 1;
    }
    if (r10.z == 0) {
      if (enableDitheredShadow == 0) {
        r9.w = (uint)r8.w;
        r10.zw = -sunConstants.splitPinTransform[r9.w].xy + r9.yz;
        r10.zw = sunConstants.splitPinTransform[r9.w].zz * r10.zw;
        r15.xy = r10.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r9.w = (int16)sunConstants.splitArrayOffset;
        r15.z = r9.w + r8.w;
        r9.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r7.z).x;
        r10.z = gTransShadowmapArray.SampleLevel(samp0_s, r15.xyz, 0).x;
        r9.w = r10.z + r9.w;
        r9.w = saturate(-1 + r9.w);
        r10.z = r9.w * r9.w;
        r7.w = r10.z * r9.w;
      }
      if (enableDitheredShadow != 0) {
        r15.x = -r7.x;
        r9.w = (uint)r8.w;
        r8.w = 1 + r8.w;
        r8.w = min(2, r8.w);
        r8.w = (uint)r8.w;
        r10.y = 1 + -r10.y;
        r10.y = 28 * r10.y;
        r10.y = (uint)r10.y;
        r10.zw = -sunConstants.splitPinTransform[r9.w].xy + r9.yz;
        r10.zw = sunConstants.splitPinTransform[r9.w].zz * r10.zw;
        r10.zw = r10.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r9.yz = -sunConstants.splitPinTransform[r8.w].xy + r9.yz;
        r9.yz = sunConstants.splitPinTransform[r8.w].zz * r9.yz;
        r9.yz = r9.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r15.y = r8.x;
        r15.z = r7.x;
        r11.w = 0;
        r12.w = 0;
        while (true) {
          r15.w = cmp((uint)r12.w >= 8);
          if (r15.w != 0) break;
          r15.w = cmp((uint)r10.y < (uint)r12.w);
          r16.xy = r15.ww ? r9.yz : r10.zw;
          r16.z = r15.w ? sunConstants.splitPinTransform[r8.w].w : sunConstants.splitPinTransform[r9.w].w;
          r15.w = r15.w ? r8.w : r9.w;
          r17.x = dot(icb[r12.w+0].yx, r15.xy);
          r17.y = dot(icb[r12.w+0].yx, r15.yz);
          r16.xy = r17.xy * r16.zz + r16.xy;
          r15.w = (int)r15.w + (int16)sunConstants.splitArrayOffset;
          r16.z = (uint)r15.w;
          r15.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r7.z).x;
          r16.x = gTransShadowmapArray.SampleLevel(samp0_s, r16.xyz, 0).x;
          r15.w = r16.x + r15.w;
          r15.w = saturate(-1 + r15.w);
          r11.w = r15.w * 0.125 + r11.w;
          r12.w = (int)r12.w + 1;
        }
        r7.z = r11.w * r11.w;
        r7.w = r7.z * r11.w;
      }
    }
  }
  r7.z = cmp(0 < r6.w);
  if (r7.z != 0) {
    r7.z = cmp(0 < r7.w);
    if (r7.z != 0) {
      r7.z = sunConstants.specScale * r6.y;
      r7.z = r7.z * r6.w;
      if (sunConstants.sunCookieIndex != 0) {
        r15.xyz = eyeOffset.xyz + v5.xyz;
        r15.w = 1;
        r8.w = dot(sunConstants.sunCookieTransform[0].xyzw, r15.xyzw);
        r9.y = dot(sunConstants.sunCookieTransform[1].xyzw, r15.xyzw);
        r15.x = frac(r8.w);
        r15.y = frac(r9.y);
        r8.w = -1 + (int14)sunConstants.sunCookieIndex;
        r15.z = (uint)r8.w;
        r9.yzw = gCookieArray.SampleLevel(samplerLinear_s, r15.xyz, 0).xyz;
        r9.yzw = float3(-1,-1,-1) + r9.yzw;
        r9.yzw = sunConstants.sunCookieIntensity * r9.yzw + float3(1,1,1);
        r9.yzw = sunConstants.color.xyz * r9.yzw;
      } else {
        r9.yzw = sunConstants.color.xyz;
      }
      r8.w = viewmodelSunShadowRaw >> 16;
      r10.y = cmp(0 < (uint)r8.w);
      r10.y = r6.x ? r10.y : 0;
      if (r10.y != 0) {
        r8.w = (int)r8.w + numLights;
        r8.w = (int)r8.w + -1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.y, r8.w, l(52), t12.xxxx
      r10.y = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r8.w, l(68), t12.xyzw
      r15.x = samp0[]..swiz;
      r15.y = samp0[]..swiz;
      r15.z = samp0[]..swiz;
      r15.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r8.w, l(84), t12.xyzw
      r16.x = samp0[]..swiz;
      r16.y = samp0[]..swiz;
      r16.z = samp0[]..swiz;
      r16.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r8.w, l(132), t12.xyzw
      r17.x = samp0[]..swiz;
      r17.y = samp0[]..swiz;
      r17.z = samp0[]..swiz;
      r17.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r8.w, l(148), t12.xyzw
      r18.x = samp0[]..swiz;
      r18.y = samp0[]..swiz;
      r18.z = samp0[]..swiz;
      r18.w = samp0[]..swiz;
        r10.z = abs(r4.w) * -0.200000003 + 0.400000006;
        r19.xyz = r3.xyz * r10.zzz + v5.xyz;
        r19.w = 1;
        r15.x = dot(r15.xyzw, r19.xyzw);
        r15.y = dot(r16.xyzw, r19.xyzw);
        r10.zw = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.zw = r10.zw + r18.zw;
        r10.zw = r10.zw * r18.xy;
        r15.xy = r10.yy / r17.xz;
        r15.zw = float2(1,1) + -r15.xy;
        r15.zw = cmp(r10.zw >= r15.zw);
        r15.xy = cmp(r15.xy >= r10.zw);
        r15.xy = (int2)r15.xy | (int2)r15.zw;
        r11.w = (int)r15.y | (int)r15.x;
        if (r11.w == 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.w, r8.w, l(28), t12.xxxx
        r11.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r8.w, l(100), t12.xyzw
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xy, r8.w, l(164), t12.xyxx
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
          r8.w = dot(r15.xyzw, r19.xyzw);
          r10.zw = saturate(r10.zw);
          r15.xy = r10.zw * r17.xz + r17.yw;
          r8.w = r8.w + r16.x;
          r8.w = r8.w / r16.y;
          r8.w = max(6.10351563e-05, r8.w);
          r10.z = (int)r11.w & 0x0000ffff;
          if (enableDitheredShadow != 0) {
            r16.x = -r7.x;
            r17.z = (uint)r10.z;
            r16.y = r8.x;
            r16.z = r7.x;
            r10.w = 0;
            r11.w = 0;
            while (true) {
              r12.w = cmp((int)r11.w >= 8);
              if (r12.w != 0) break;
              r18.x = dot(icb[r11.w+0].yx, r16.xy);
              r18.y = dot(icb[r11.w+0].yx, r16.yz);
              r17.xy = r18.xy * r10.yy + r15.xy;
              r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r8.w).x;
              r10.w = r12.w * 0.125 + r10.w;
              r11.w = (int)r11.w + 1;
            }
          } else {
            r15.z = (uint)r10.z;
            r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r8.w).x;
          }
          r8.w = r10.w * r10.w;
          r8.w = r8.w * r10.w;
        } else {
          r8.w = 1;
        }
        r7.w = r8.w * r7.w;
      } else {
        r8.w = viewmodelSunShadowRaw & 0x0000ffff;
        r10.y = cmp(0 < (uint)r8.w);
        r10.z = ~(int)r6.x;
        r10.y = r10.y ? r10.z : 0;
        if (r10.y != 0) {
          r8.w = (int)r8.w + numLights;
          r8.w = (int)r8.w + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.y, r8.w, l(52), t12.xxxx
        r10.y = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r8.w, l(68), t12.xyzw
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r8.w, l(84), t12.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r8.w, l(132), t12.xyzw
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r8.w, l(148), t12.xyzw
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
        r18.z = samp0[]..swiz;
        r18.w = samp0[]..swiz;
          r10.z = abs(r4.w) * -0.200000003 + 0.400000006;
          r19.xyz = r3.xyz * r10.zzz + v5.xyz;
          r19.w = 1;
          r15.x = dot(r15.xyzw, r19.xyzw);
          r15.y = dot(r16.xyzw, r19.xyzw);
          r10.zw = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r10.zw = r10.zw + r18.zw;
          r10.zw = r10.zw * r18.xy;
          r15.xy = r10.yy / r17.xz;
          r15.zw = float2(1,1) + -r15.xy;
          r15.zw = cmp(r10.zw >= r15.zw);
          r15.xy = cmp(r15.xy >= r10.zw);
          r15.xy = (int2)r15.xy | (int2)r15.zw;
          r11.w = (int)r15.y | (int)r15.x;
          if (r11.w == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.w, r8.w, l(28), t12.xxxx
          r11.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r8.w, l(100), t12.xyzw
          r15.x = samp0[]..swiz;
          r15.y = samp0[]..swiz;
          r15.z = samp0[]..swiz;
          r15.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xy, r8.w, l(164), t12.xyxx
          r16.x = samp0[]..swiz;
          r16.y = samp0[]..swiz;
            r8.w = dot(r15.xyzw, r19.xyzw);
            r10.zw = saturate(r10.zw);
            r15.xy = r10.zw * r17.xz + r17.yw;
            r8.w = r8.w + r16.x;
            r8.w = r8.w / r16.y;
            r8.w = max(6.10351563e-05, r8.w);
            r10.z = (int)r11.w & 0x0000ffff;
            if (enableDitheredShadow != 0) {
              r16.x = -r7.x;
              r17.z = (uint)r10.z;
              r16.y = r8.x;
              r16.z = r7.x;
              r10.w = 0;
              r11.w = 0;
              while (true) {
                r12.w = cmp((int)r11.w >= 8);
                if (r12.w != 0) break;
                r18.x = dot(icb[r11.w+0].yx, r16.xy);
                r18.y = dot(icb[r11.w+0].yx, r16.yz);
                r17.xy = r18.xy * r10.yy + r15.xy;
                r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r8.w).x;
                r10.w = r12.w * 0.125 + r10.w;
                r11.w = (int)r11.w + 1;
              }
            } else {
              r15.z = (uint)r10.z;
              r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r8.w).x;
            }
            r8.w = r10.w * r10.w;
            r8.w = r8.w * r10.w;
          } else {
            r8.w = 1;
          }
          r7.w = r8.w * r7.w;
        }
      }
      r8.w = -r2.x * 0.5 + 1;
      r8.w = -r6.w * r8.w + 1;
      r8.w = r8.w * r8.w;
      r8.w = -r8.w * 0.620000005 + 0.620000005;
      r8.w = r8.w + -r6.w;
      r8.w = r6.z * r8.w + r6.w;
      r8.w = r8.w * r7.w;
      r4.w = cmp(0 < r4.w);
      r15.xyz = r8.www * r9.yzw + r13.xyz;
      r10.yzw = -v5.xyz * r5.xxx + sunConstants.wldDir.xyz;
      r5.x = dot(r10.yzw, r10.yzw);
      r5.x = rsqrt(r5.x);
      r10.yzw = r10.yzw * r5.xxx;
      r5.x = dot(r10.yzw, r5.yzw);
      r8.w = dot(r3.xyz, r10.yzw);
      r10.y = abs(r8.w) * r6.y + -abs(r8.w);
      r8.w = abs(r8.w) * r10.y + 1;
      r6.w = r6.w * r0.w + r3.w;
      r8.w = r8.w * r8.w;
      r6.w = r8.w * r6.w;
      r6.w = rcp(r6.w);
      r6.w = r6.w * r7.z;
      r6.w = r7.w * r6.w;
      r6.w = 0.25 * r6.w;
      r10.yzw = r6.www * r9.yzw + r2.yzw;
      r5.x = saturate(1 + -r5.x);
      r7.z = r5.x * r5.x;
      r7.z = r7.z * r7.z;
      r5.x = r7.z * r5.x;
      r5.x = r6.w * r5.x;
      r16.xyz = r5.xxx * r9.zwy + r14.xyz;
      r15.w = r16.z;
      r13.w = r14.z;
      r13.xyzw = r4.wwww ? r15.xyzw : r13.xyzw;
      r16.zw = r10.yz;
      r14.zw = r2.yz;
      r15.xyzw = r4.wwww ? r16.xyzw : r14.xyzw;
      r2.w = r4.w ? r10.w : r2.w;
      r14.z = r13.w;
      r14.xy = r15.xy;
      r2.yz = r15.zw;
    }
  }
  r15.x = -r7.x;
  r4.w = ~(int)r6.x;
  r2.x = -r2.x * 0.5 + 1;
  r16.xy = float2(0,0);
  r17.w = 0;
  r18.xyz = v5.xyz;
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
  r9.yzw = r13.xyz;
  r28.xyz = r14.zxy;
  r29.xyz = r2.yzw;
  r5.x = enableDitheredShadow;
  r6.w = 0;
  while (true) {
    r7.z = cmp((uint)r6.w >= numLights);
    if (r7.z != 0) break;
    r16.z = (uint)r6.w >> 5;
    r17.xyz = (int3)r12.xyz + (int3)r16.xyz;
    r7.z = visibleLights.Load(r17.xyzw).x;
    r10.yzw = r9.yzw;
    r17.xyz = r28.xyz;
    r30.xyz = r29.xyz;
    r7.w = r5.x;
    r8.w = r7.z;
    while (true) {
      if (r8.w == 0) break;
      r11.w = firstbitlow((uint)r8.w);
      r12.w = 1 << (int)r11.w;
      r13.w = (int)r8.w & (int)r12.w;
      if (r13.w != 0) {
        r8.w = (int)r8.w ^ (int)r12.w;
        r11.w = (int)r6.w + (int)r11.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r31.xyzw, r11.w, l(0), t11.xyzw
      r31.x = samp0[]..swiz;
      r31.y = samp0[]..swiz;
      r31.z = samp0[]..swiz;
      r31.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r32.xy, r11.w, l(16), t11.xyxx
      r32.x = samp0[]..swiz;
      r32.y = samp0[]..swiz;
        r31.xyz = -v5.xyz + r31.xyz;
        r32.z = r31.w;
        r31.xyz = cmp(abs(r31.xyz) < r32.zxy);
        r12.w = r31.y ? r31.x : 0;
        r12.w = r31.z ? r12.w : 0;
        if (r12.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r11.w, l(0), t12.wxyz
        r31.x = samp0[]..swiz;
        r31.y = samp0[]..swiz;
        r31.z = samp0[]..swiz;
        r31.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r11.w, l(16), t12.zxyw
        r32.x = samp0[]..swiz;
        r32.y = samp0[]..swiz;
        r32.z = samp0[]..swiz;
        r32.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r11.w, l(32), t12.xyzw
        r33.x = samp0[]..swiz;
        r33.y = samp0[]..swiz;
        r33.z = samp0[]..swiz;
        r33.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r11.w, l(48), t12.xyzw
        r34.x = samp0[]..swiz;
        r34.y = samp0[]..swiz;
        r34.z = samp0[]..swiz;
        r34.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r11.w, l(64), t12.yzwx
        r35.x = samp0[]..swiz;
        r35.y = samp0[]..swiz;
        r35.z = samp0[]..swiz;
        r35.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r11.w, l(80), t12.xyzw
        r36.x = samp0[]..swiz;
        r36.y = samp0[]..swiz;
        r36.z = samp0[]..swiz;
        r36.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r11.w, l(96), t12.yzwx
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
            r40.xyz = -v5.xyz + r39.xyz;
            r13.w = dot(r38.xyz, r40.xyz);
            r14.w = saturate(-r13.w / r37.x);
            r41.xyz = r14.www * r38.xyz + r39.xyz;
            r41.xyz = r12.www ? r41.xyz : r31.yzw;
            r41.xyz = -v5.xyz + r41.xyz;
            r16.z = dot(r41.xyz, r41.xyz);
            r16.w = rsqrt(r16.z);
            r41.xyz = r41.xyz * r16.www;
            r16.w = dot(r3.xyz, r41.xyz);
            r21.w = saturate(r16.w);
            r25.w = cmp(0 < r21.w);
            if (r25.w != 0) {
              r25.w = sqrt(r16.z);
              r26.w = r34.x * r34.x;
              r16.z = r26.w / r16.z;
              r16.z = min(1, r16.z);
              r41.xy = saturate(r25.ww * r33.xz + r33.yw);
              r41.zw = r41.xy * r41.xy;
              r41.xy = r41.xy * float2(-2,-2) + float2(3,3);
              r41.xy = r41.zw * r41.xy;
              r16.z = r41.x * r16.z;
              r16.z = r16.z * r41.y;
              r25.w = cmp(0 < r16.z);
              if (r25.w != 0) {
                if (3 == 0) r25.w = 0; else if (3+27 < 32) {                 r25.w = (uint)r32.w << (32-(3 + 27)); r25.w = (uint)r25.w >> (32-3);                } else r25.w = (uint)r32.w >> 27;
                r25.w = cmp((int)r25.w != 1);
                if (r25.w != 0) {
                  r25.w = abs(r16.w) * -0.200000003 + 0.400000006;
                  r41.xyz = r3.xyz * r25.www + v5.xyz;
                  r41.xyz = r41.xyz + -r35.xyz;
                  r25.w = max(abs(r41.y), abs(r41.z));
                  r25.w = max(abs(r41.x), r25.w);
                  r25.w = r36.x / r25.w;
                  r25.w = r25.w + r36.y;
                  r26.w = dot(r41.xyz, r41.xyz);
                  r26.w = rsqrt(r26.w);
                  r25.w = max(6.10351563e-05, r25.w);
                  r27.w = (int)r32.w & 0x0000ffff;
                  r42.w = (uint)r27.w;
                  r27.w = 0;
                  r28.w = 0;
                  while (true) {
                    r29.w = cmp((int)r28.w >= 8);
                    if (r29.w != 0) break;
                    r43.y = dot(icb[r28.w+0].yx, r15.xy);
                    r43.z = dot(icb[r28.w+0].yx, r15.yz);
                    r43.yz = r43.yz * r34.yy;
                    r43.x = r43.y * r10.x;
                    r43.w = r43.y * r9.x;
                    r42.xyz = r41.xyz * r26.www + r43.xzw;
                    r29.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r42.xyzw, r25.w).x;
                    r27.w = r29.w * 0.125 + r27.w;
                    r28.w = (int)r28.w + 1;
                  }
                } else {
                  r27.w = 1;
                }
                r16.z = r27.w * r16.z;
                r25.w = cmp(0 < r16.z);
                if (r25.w != 0) {
                  r25.w = r32.x * r6.y;
                  r25.w = 0.25 * r25.w;
                  r26.w = dot(r38.xyz, r11.xyz);
                  r28.w = dot(r11.xyz, r40.xyz);
                  r29.w = -r26.w * r26.w + r37.x;
                  r13.w = r26.w * r28.w + -r13.w;
                  r13.w = saturate(r13.w / r29.w);
                  r26.w = r29.w / r37.x;
                  r26.w = 10 * r26.w;
                  r26.w = min(1, r26.w);
                  r13.w = r13.w + -r14.w;
                  r13.w = r26.w * r13.w + r14.w;
                  r38.xyz = r13.www * r38.xyz + r39.xyz;
                  r38.xyz = r12.www ? r38.xyz : r31.yzw;
                  r38.xyz = -v5.xyz + r38.xyz;
                  r12.w = dot(r38.xyz, r38.xyz);
                  r12.w = rsqrt(r12.w);
                  r39.xyz = r38.xyz * r12.www;
                  if (4 == 0) r13.w = 0; else if (4+16 < 32) {                   r13.w = (uint)r32.w << (32-(4 + 16)); r13.w = (uint)r13.w >> (32-4);                  } else r13.w = (uint)r32.w >> 16;
                  r14.w = cmp(0 < (uint)r13.w);
                  r14.w = r6.x ? r14.w : 0;
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
                    r26.w = abs(r16.w) * -0.200000003 + 0.400000006;
                    r19.xyz = r3.xyz * r26.www + v5.xyz;
                    r26.w = dot(r40.xyzw, r19.xyzw);
                    r28.w = dot(r41.xyzw, r19.xyzw);
                    r29.w = cmp(r28.w < r26.w);
                    if (r29.w == 0) {
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
                      r19.xy = r40.xy / r28.ww;
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
                      r19.x = r44.y * r28.w;
                      r19.y = r44.x * r28.w + r26.w;
                      r19.x = r19.y / r19.x;
                    } else {
                      r19.z = -1;
                    }
                    r19.y = (int)r29.w | (int)r19.z;
                    if (r19.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.w, r13.w, l(28), t12.xxxx
                    r13.w = samp0[]..swiz;
                      r19.x = max(6.10351563e-05, r19.x);
                      r13.w = (int)r13.w & 0x0000ffff;
                      if (r7.w != 0) {
                        r41.z = (uint)r13.w;
                        r19.yz = float2(0,0);
                        while (true) {
                          r26.w = cmp((int)r19.z >= 8);
                          if (r26.w != 0) break;
                          r42.x = dot(icb[r19.z+0].yx, r15.xw);
                          r42.y = dot(icb[r19.z+0].xy, r7.xy);
                          r41.xy = r42.xy * r14.ww + r40.xy;
                          r26.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r41.xyz, r19.x).x;
                          r19.y = r26.w * 0.125 + r19.y;
                          r19.z = (int)r19.z + 1;
                        }
                      } else {
                        r40.z = (uint)r13.w;
                        r19.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r40.xyz, r19.x).x;
                      }
                      r13.w = r19.y * r19.y;
                      r13.w = r13.w * r19.y;
                    } else {
                      r13.w = 1;
                    }
                    r16.z = r16.z * r13.w;
                  } else {
                    if (4 == 0) r13.w = 0; else if (4+20 < 32) {                     r13.w = (uint)r32.w << (32-(4 + 20)); r13.w = (uint)r13.w >> (32-4);                    } else r13.w = (uint)r32.w >> 20;
                    r14.w = cmp(0 < (uint)r13.w);
                    r14.w = r4.w ? r14.w : 0;
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
                      r19.x = abs(r16.w) * -0.200000003 + 0.400000006;
                      r20.xyz = r3.xyz * r19.xxx + v5.xyz;
                      r19.x = dot(r40.xyzw, r20.xyzw);
                      r19.z = dot(r41.xyzw, r20.xyzw);
                      r26.w = cmp(r19.z < r19.x);
                      if (r26.w == 0) {
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
                        r40.x = dot(r40.xyzw, r20.xyzw);
                        r40.y = dot(r41.xyzw, r20.xyzw);
                        r20.xy = r40.xy / r19.zz;
                        r20.xy = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                        r20.xy = r20.xy + r43.zw;
                        r20.xy = r20.xy * r43.xy;
                        r40.xy = r14.ww / r42.xz;
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
                      r19.z = (int)r26.w | (int)r20.z;
                      if (r19.z == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.w, r13.w, l(28), t12.xxxx
                      r13.w = samp0[]..swiz;
                        r19.x = max(6.10351563e-05, r19.x);
                        r13.w = (int)r13.w & 0x0000ffff;
                        if (r7.w != 0) {
                          r20.z = (uint)r13.w;
                          r19.z = 0;
                          r26.w = 0;
                          while (true) {
                            r28.w = cmp((int)r26.w >= 8);
                            if (r28.w != 0) break;
                            r41.x = dot(icb[r26.w+0].xy, r8.xy);
                            r41.y = dot(icb[r26.w+0].yx, r8.xz);
                            r20.xy = r41.xy * r14.ww + r40.xy;
                            r20.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r19.x).x;
                            r19.z = r20.x * 0.125 + r19.z;
                            r26.w = (int)r26.w + 1;
                          }
                        } else {
                          r40.z = (uint)r13.w;
                          r19.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r40.xyz, r19.x).x;
                        }
                        r13.w = r19.z * r19.z;
                        r13.w = r13.w * r19.z;
                      } else {
                        r13.w = 1;
                      }
                      r16.z = r16.z * r13.w;
                    }
                  }
                  r13.w = -r21.w * r2.x + 1;
                  r13.w = r13.w * r13.w;
                  r13.w = -r13.w * 0.620000005 + 0.620000005;
                  r13.w = r13.w + -r21.w;
                  r13.w = r6.z * r13.w + r21.w;
                  r13.w = r13.w * r16.z;
                  r32.x = r31.x;
                  r14.w = cmp(0 < r16.w);
                  r20.xyz = r13.www * r32.xyz + r10.yzw;
                  r13.w = saturate(dot(r3.xyz, r39.xyz));
                  r38.xyz = r38.xyz * r12.www + r5.yzw;
                  r12.w = dot(r38.xyz, r38.xyz);
                  r12.w = rsqrt(r12.w);
                  r38.xyz = r38.xyz * r12.www;
                  r12.w = dot(r38.xyz, r5.yzw);
                  r16.w = dot(r3.xyz, r38.xyz);
                  r19.x = abs(r16.w) * r6.y + -abs(r16.w);
                  r16.w = abs(r16.w) * r19.x + 1;
                  r19.x = r13.w * r0.w + r3.w;
                  r16.w = r16.w * r16.w;
                  r16.w = r16.w * r19.x;
                  r16.w = rcp(r16.w);
                  r13.w = r13.w * r25.w;
                  r13.w = r16.w * r13.w;
                  r13.w = r13.w * r16.z;
                  r38.xyz = r13.www * r32.xyz + r30.xyz;
                  r12.w = saturate(1 + -r12.w);
                  r16.z = r12.w * r12.w;
                  r16.z = r16.z * r16.z;
                  r12.w = r16.z * r12.w;
                  r12.w = r13.w * r12.w;
                  r39.xyz = r12.www * r32.xyz + r17.xyz;
                  r10.yzw = r14.www ? r20.xyz : r10.yzw;
                  r17.xyz = r14.www ? r39.xyz : r17.xyz;
                  r30.xyz = r14.www ? r38.xyz : r30.xyz;
                }
              }
            }
            break;
            case 2 :            r20.xy = r34.zw;
            r20.z = r35.w;
            r20.xyz = -v5.xyz + r20.xyz;
            r12.w = dot(r20.xyz, r20.xyz);
            r12.w = rsqrt(r12.w);
            r38.xyz = r20.xyz * r12.www;
            r13.w = dot(r3.xyz, r38.xyz);
            r14.w = saturate(r13.w);
            r16.z = cmp(0 < r14.w);
            if (r16.z != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r11.w, l(112), t12.yzwx
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r11.w, l(128), t12.zxyw
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
              r40.xyz = r38.xyz;
              r40.w = r39.y;
              r16.z = dot(r40.xyzw, r18.xyzw);
              r16.w = cmp(r16.z < 1);
              if (r16.w != 0) {
                r41.xyz = float3(1,1,1);
                r16.w = 0;
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r11.w, l(172), t12.yzwx
              r42.x = samp0[]..swiz;
              r42.y = samp0[]..swiz;
              r42.z = samp0[]..swiz;
              r42.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r11.w, l(188), t12.wxyz
              r43.x = samp0[]..swiz;
              r43.y = samp0[]..swiz;
              r43.z = samp0[]..swiz;
              r43.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r11.w, l(204), t12.xyzw
              r44.x = samp0[]..swiz;
              r44.y = samp0[]..swiz;
              r44.z = samp0[]..swiz;
              r44.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.x, r11.w, l(236), t12.xxxx
              r19.x = samp0[]..swiz;
                r45.xyz = -v5.xyz + r31.yzw;
                r21.w = r34.x * r34.x;
                r25.w = dot(r45.xyz, r45.xyz);
                r21.w = r21.w / r25.w;
                r21.w = min(1, r21.w);
                r33.xy = saturate(r16.zz * r33.xz + r33.yw);
                r33.zw = r33.xy * r33.xy;
                r33.xy = r33.xy * float2(-2,-2) + float2(3,3);
                r33.xy = r33.zw * r33.xy;
                r21.w = r33.x * r21.w;
                r21.w = r21.w * r33.y;
                r35.w = r36.x;
                r33.x = dot(r35.xyzw, r18.xyzw);
                r45.xyz = r36.yzw;
                r45.w = r37.w;
                r33.y = dot(r45.xyzw, r18.xyzw);
                r21.xy = r33.xy / r16.zz;
                r16.z = cmp(r42.w < 0.00048828125);
                if (r16.z != 0) {
                  r43.y = r44.x;
                  r33.xy = saturate(abs(r21.xy) * r43.zw + r43.xy);
                  r33.zw = r33.xy * r33.xy;
                  r33.xy = r33.xy * float2(-2,-2) + float2(3,3);
                  r33.xy = r33.zw * r33.xy;
                  r16.z = r33.x * r33.y;
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
                  r25.w = r43.z * r33.x;
                  r26.w = r43.w * r33.y + -1;
                  r25.w = r43.w * r33.y + -r25.w;
                  r25.w = saturate(r26.w / r25.w);
                  r26.w = r25.w * r25.w;
                  r25.w = r25.w * -2 + 3;
                  r16.z = r26.w * r25.w;
                }
                r16.w = r21.w * r16.z;
                r16.z = (int)r19.x & 255;
                if (r16.z != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyz, r11.w, l(220), t12.xyzx
                r33.x = samp0[]..swiz;
                r33.y = samp0[]..swiz;
                r33.z = samp0[]..swiz;
                  r19.x = dot(r44.yzw, r21.xyz);
                  r21.x = dot(r33.xyz, r21.xyz);
                  r33.x = frac(r19.x);
                  r33.y = frac(r21.x);
                  r16.z = (int)r16.z + -1;
                  r33.z = (uint)r16.z;
                  r41.xyz = gCookieArray.SampleLevel(samplerLinear_s, r33.xyz, 0).xyz;
                } else {
                  r41.xyz = float3(1,1,1);
                }
              }
              r31.yz = r32.yz;
              r21.xyw = r31.xyz * r41.xyz;
              r16.z = cmp(0 < r16.w);
              if (r16.z != 0) {
                if (3 == 0) r16.z = 0; else if (3+27 < 32) {                 r16.z = (uint)r32.w << (32-(3 + 27)); r16.z = (uint)r16.z >> (32-3);                } else r16.z = (uint)r32.w >> 27;
                r16.z = cmp((int)r16.z != 1);
                if (r16.z != 0) {
                  r16.z = abs(r13.w) * -0.200000003 + 0.400000006;
                  r22.xyz = r3.xyz * r16.zzz + v5.xyz;
                  r38.xyz = r37.xyz;
                  r16.z = dot(r38.xyzw, r22.xyzw);
                  r19.x = dot(r40.xyzw, r22.xyzw);
                  r25.w = cmp(r19.x >= r16.z);
                  if (r25.w != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.y, r11.w, l(144), t12.xxxx
                  r39.y = samp0[]..swiz;
                    r35.w = r36.x;
                    r31.x = dot(r35.xyzw, r22.xyzw);
                    r37.xyz = r36.yzw;
                    r31.y = dot(r37.xyzw, r22.xyzw);
                    r22.xy = r31.xy / r19.xx;
                    r22.xy = saturate(r22.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                    r22.xy = r22.xy * r39.zw + r39.xy;
                    r11.w = r16.z / r19.x;
                    r11.w = max(6.10351563e-05, r11.w);
                    r16.z = (int)r32.w & 0x0000ffff;
                    if (r7.w != 0) {
                      r31.z = (uint)r16.z;
                      r19.x = 0;
                      r25.w = 0;
                      while (true) {
                        r26.w = cmp((int)r25.w >= 8);
                        if (r26.w != 0) break;
                        r33.x = dot(icb[r25.w+0].xy, r25.xy);
                        r33.y = dot(icb[r25.w+0].yx, r25.xz);
                        r31.xy = r33.xy * r34.yy + r22.xy;
                        r26.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r31.xyz, r11.w).x;
                        r19.x = r26.w * 0.125 + r19.x;
                        r25.w = (int)r25.w + 1;
                      }
                    } else {
                      r22.z = (uint)r16.z;
                      r19.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r11.w).x;
                    }
                    r11.w = r19.x * r19.x;
                    r11.w = r11.w * r19.x;
                  } else {
                    r11.w = 1;
                  }
                } else {
                  r11.w = 1;
                }
                r11.w = r16.w * r11.w;
                r16.z = cmp(0 < r11.w);
                if (r16.z != 0) {
                  r16.z = r32.x * r6.y;
                  r16.z = r16.z * r14.w;
                  if (4 == 0) r16.w = 0; else if (4+16 < 32) {                   r16.w = (uint)r32.w << (32-(4 + 16)); r16.w = (uint)r16.w >> (32-4);                  } else r16.w = (uint)r32.w >> 16;
                  r22.x = cmp(0 < (uint)r16.w);
                  r22.x = r6.x ? r22.x : 0;
                  if (r22.x != 0) {
                    r16.w = (int)r16.w + numLights;
                    r16.w = (int)r16.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.x, r16.w, l(52), t12.xxxx
                  r22.x = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r16.w, l(68), t12.xyzw
                  r31.x = samp0[]..swiz;
                  r31.y = samp0[]..swiz;
                  r31.z = samp0[]..swiz;
                  r31.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r16.w, l(84), t12.xyzw
                  r33.x = samp0[]..swiz;
                  r33.y = samp0[]..swiz;
                  r33.z = samp0[]..swiz;
                  r33.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r16.w, l(100), t12.xyzw
                  r34.x = samp0[]..swiz;
                  r34.y = samp0[]..swiz;
                  r34.z = samp0[]..swiz;
                  r34.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r16.w, l(116), t12.xyzw
                  r35.x = samp0[]..swiz;
                  r35.y = samp0[]..swiz;
                  r35.z = samp0[]..swiz;
                  r35.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r16.w, l(132), t12.xyzw
                  r36.x = samp0[]..swiz;
                  r36.y = samp0[]..swiz;
                  r36.z = samp0[]..swiz;
                  r36.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r16.w, l(148), t12.xyzw
                  r37.x = samp0[]..swiz;
                  r37.y = samp0[]..swiz;
                  r37.z = samp0[]..swiz;
                  r37.w = samp0[]..swiz;
                    r22.y = abs(r13.w) * -0.200000003 + 0.400000006;
                    r23.xyz = r3.xyz * r22.yyy + v5.xyz;
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
                    r25.w = (int)r31.y | (int)r31.x;
                    r23.x = (int)r23.x | (int)r25.w;
                    if (r23.x == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.x, r16.w, l(28), t12.xxxx
                    r23.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xy, r16.w, l(164), t12.xyxx
                    r31.x = samp0[]..swiz;
                    r31.y = samp0[]..swiz;
                      r23.yz = saturate(r23.yz);
                      r32.xy = r23.yz * r36.xz + r36.yw;
                      r16.w = r31.y * r22.z;
                      r22.y = r31.x * r22.z + r22.y;
                      r16.w = r22.y / r16.w;
                      r16.w = max(6.10351563e-05, r16.w);
                      r22.y = r23.x ? 0.000000 : 0;
                      if (r7.w != 0) {
                        r23.z = (uint)r22.y;
                        r22.z = 0;
                        r25.w = 0;
                        while (true) {
                          r26.w = cmp((int)r25.w >= 8);
                          if (r26.w != 0) break;
                          r31.x = dot(icb[r25.w+0].xy, r26.xy);
                          r31.y = dot(icb[r25.w+0].yx, r26.xz);
                          r23.xy = r31.xy * r22.xx + r32.xy;
                          r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r16.w).x;
                          r22.z = r23.x * 0.125 + r22.z;
                          r25.w = (int)r25.w + 1;
                        }
                      } else {
                        r32.z = (uint)r22.y;
                        r22.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r32.xyz, r16.w).x;
                      }
                      r16.w = r22.z * r22.z;
                      r16.w = r16.w * r22.z;
                    } else {
                      r16.w = 1;
                    }
                    r11.w = r16.w * r11.w;
                  } else {
                    if (4 == 0) r16.w = 0; else if (4+20 < 32) {                     r16.w = (uint)r32.w << (32-(4 + 20)); r16.w = (uint)r16.w >> (32-4);                    } else r16.w = (uint)r32.w >> 20;
                    r22.x = cmp(0 < (uint)r16.w);
                    r22.x = r4.w ? r22.x : 0;
                    if (r22.x != 0) {
                      r16.w = (int)r16.w + numLights;
                      r16.w = (int)r16.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.x, r16.w, l(52), t12.xxxx
                    r22.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r16.w, l(68), t12.xyzw
                    r31.x = samp0[]..swiz;
                    r31.y = samp0[]..swiz;
                    r31.z = samp0[]..swiz;
                    r31.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r16.w, l(84), t12.xyzw
                    r32.x = samp0[]..swiz;
                    r32.y = samp0[]..swiz;
                    r32.z = samp0[]..swiz;
                    r32.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r16.w, l(100), t12.xyzw
                    r33.x = samp0[]..swiz;
                    r33.y = samp0[]..swiz;
                    r33.z = samp0[]..swiz;
                    r33.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r16.w, l(116), t12.xyzw
                    r34.x = samp0[]..swiz;
                    r34.y = samp0[]..swiz;
                    r34.z = samp0[]..swiz;
                    r34.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r16.w, l(132), t12.xyzw
                    r35.x = samp0[]..swiz;
                    r35.y = samp0[]..swiz;
                    r35.z = samp0[]..swiz;
                    r35.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r16.w, l(148), t12.xyzw
                    r36.x = samp0[]..swiz;
                    r36.y = samp0[]..swiz;
                    r36.z = samp0[]..swiz;
                    r36.w = samp0[]..swiz;
                      r22.y = abs(r13.w) * -0.200000003 + 0.400000006;
                      r24.xyz = r3.xyz * r22.yyy + v5.xyz;
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
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.x, r16.w, l(28), t12.xxxx
                      r24.x = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.yz, r16.w, l(164), t12.xxyx
                      r24.y = samp0[]..swiz;
                      r24.z = samp0[]..swiz;
                        r23.xy = saturate(r23.xy);
                        r31.xy = r23.xy * r35.xz + r35.yw;
                        r16.w = r24.z * r23.z;
                        r22.y = r24.y * r23.z + r22.y;
                        r16.w = r22.y / r16.w;
                        r16.w = max(6.10351563e-05, r16.w);
                        r22.y = r24.x ? 0.000000 : 0;
                        if (r7.w != 0) {
                          r23.z = (uint)r22.y;
                          r24.xy = float2(0,0);
                          while (true) {
                            r24.z = cmp((int)r24.y >= 8);
                            if (r24.z != 0) break;
                            r32.x = dot(icb[r24.y+0].xy, r27.xy);
                            r32.y = dot(icb[r24.y+0].yx, r27.xz);
                            r23.xy = r32.xy * r22.xx + r31.xy;
                            r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r16.w).x;
                            r24.x = r23.x * 0.125 + r24.x;
                            r24.y = (int)r24.y + 1;
                          }
                        } else {
                          r31.z = (uint)r22.y;
                          r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r31.xyz, r16.w).x;
                        }
                        r16.w = r24.x * r24.x;
                        r16.w = r16.w * r24.x;
                      } else {
                        r16.w = 1;
                      }
                      r11.w = r16.w * r11.w;
                    }
                  }
                  r16.w = -r14.w * r2.x + 1;
                  r16.w = r16.w * r16.w;
                  r16.w = -r16.w * 0.620000005 + 0.620000005;
                  r16.w = r16.w + -r14.w;
                  r16.w = r6.z * r16.w + r14.w;
                  r16.w = r16.w * r11.w;
                  r13.w = cmp(0 < r13.w);
                  r23.xyz = r16.www * r21.xyw + r10.yzw;
                  r20.xyz = r20.xyz * r12.www + r5.yzw;
                  r12.w = dot(r20.xyz, r20.xyz);
                  r12.w = rsqrt(r12.w);
                  r20.xyz = r20.xyz * r12.www;
                  r12.w = dot(r20.xyz, r5.yzw);
                  r16.w = dot(r3.xyz, r20.xyz);
                  r20.x = abs(r16.w) * r6.y + -abs(r16.w);
                  r16.w = abs(r16.w) * r20.x + 1;
                  r14.w = r14.w * r0.w + r3.w;
                  r16.w = r16.w * r16.w;
                  r14.w = r16.w * r14.w;
                  r14.w = rcp(r14.w);
                  r14.w = r14.w * r16.z;
                  r11.w = r14.w * r11.w;
                  r11.w = 0.25 * r11.w;
                  r20.xyz = r11.www * r21.xyw + r30.xyz;
                  r12.w = saturate(1 + -r12.w);
                  r14.w = r12.w * r12.w;
                  r14.w = r14.w * r14.w;
                  r12.w = r14.w * r12.w;
                  r11.w = r12.w * r11.w;
                  r21.xyw = r11.www * r21.xyw + r17.xyz;
                  r10.yzw = r13.www ? r23.xyz : r10.yzw;
                  r17.xyz = r13.www ? r21.xyw : r17.xyz;
                  r30.xyz = r13.www ? r20.xyz : r30.xyz;
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
    r9.yzw = r10.yzw;
    r28.xyz = r17.xyz;
    r29.xyz = r30.xyz;
    r6.w = (int)r6.w + 32;
  }
  r2.xyz = float3(1,1,1) + -r4.xyz;
  r2.xyz = r28.xyz * r2.xyz;
  r2.xyz = r29.xyz * r4.xyz + r2.xyz;
  r0.xyz = r9.yzw * r0.xyz + r2.xyz;
  r0.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.w != 0) {
    r0.w = dot(v5.xyz, v5.xyz);
    r2.x = rsqrt(r0.w);
    r2.xyz = v5.xyz * r2.xxx;
    r0.w = sqrt(r0.w);
    r2.w = cmp(0 < fogConstants.blendAmount);
    if (r2.w != 0) {
      r3.xy = r0.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r3.xy = fogConstants.atmospherefogdensityatcamera.xy * r3.xy;
      r2.w = cmp(0.00999999978 < abs(v5.z));
      r3.zw = fogConstants.atmospherefogheightdensityscale.xy * v5.zz;
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
      r3.w = cmp(0.00999999978 < abs(v5.z));
      r4.x = fogConstants.atmospherefogheightdensityscale.x * v5.z;
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
    r0.w = fogConstants.heightFalloff * v5.z;
    r2.w = fogConstants.heightFalloff * v5.z + fogConstants.K0;
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
    r2.w = dot(v5.xyz, v5.xyz);
    r3.x = sqrt(r2.w);
    r0.w = r0.w * r3.x + fogConstants.expAdd;
    r0.w = exp2(r0.w);
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r2.w = rsqrt(r2.w);
    r3.xyz = v5.xyz * r2.www;
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
    imm_atomic_iadd r4.x, u6, r3.xyxx, l(1)
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
      bitmask.y = ((~(-1 << 11)) << 0) & 0xffffffff;  r2.y = (((uint)r0.w << 0) & bitmask.y) | ((uint)r4.x & ~bitmask.y);
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