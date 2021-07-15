// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:37:41 2021

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
  float2 scopeDiameter : packoffset(c12.z);
  float scopeCrush : packoffset(c13);
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
  r0.w = cmp(r1.w == 0.000000);
  if (r0.w != 0) {
    o0.xyzw = float4(0,0,0,0);
    return;
  }
  r0.w = tintMask.Sample(colorSampler_s, w1.xy).x;
  r2.x = specColorMap.Sample(specColorSampler_s, w1.xy).x;
  r2.y = glossMap.Sample(specColorSampler_s, w1.xy).x;
  r3.xyz = normalMap.Sample(normalSampler_s, w1.xy).xyz;
  r4.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r4.xyz = r0.www * r4.xyz + float3(1,1,1);
  r0.xyz = r4.xyz * r0.xyz;
  r4.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + specColorTint.xyz;
  r4.xyz = r2.xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = saturate(1 + -r2.x);
  r0.xyz = r0.xyz * r0.www;
  r0.w = aoMap.Sample(aoSampler_s, w1.xy).x;
  r2.x = glossRange.y + -glossRange.x;
  r2.x = r2.y * r2.x + glossRange.x;
  r2.x = saturate(0.0588235296 * r2.x);
  r2.yzw = float3(-0.5,-0.5,-0) + r3.xyz;
  r2.yzw = baseNormalHeight * r2.yzw + float3(0.5,0.5,0);
  r2.yz = r2.yz * float2(1.9921875,1.9921875) + float2(-1,-1);
  r3.x = dot(r2.yz, r2.yz);
  r3.x = 1 + -r3.x;
  r3.x = max(0, r3.x);
  r3.x = sqrt(r3.x);
  r2.w = r2.w * r2.w;
  r2.w = 0.333333343 * r2.w;
  r2.w = min(1, r2.w);
  r3.y = v6.x ? 1 : -1;
  r3.z = dot(v2.xyz, v2.xyz);
  r3.z = rsqrt(r3.z);
  r5.xyz = v2.xyz * r3.zzz;
  r5.xyz = r5.xyz * r3.yyy;
  r3.z = dot(v3.xyz, v3.xyz);
  r3.z = rsqrt(r3.z);
  r6.xyz = v3.xyz * r3.zzz;
  r6.xyz = r6.xyz * r3.yyy;
  r3.z = dot(v4.xyz, v4.xyz);
  r3.z = rsqrt(r3.z);
  r7.xyz = v4.xyz * r3.zzz;
  r3.yzw = r7.xyz * r3.yyy;
  r2.x = -17 * r2.x;
  r2.x = exp2(r2.x);
  r2.x = r2.w + r2.x;
  r2.x = log2(r2.x);
  r2.x = -0.0588235296 * r2.x;
  r7.y = max(0, r2.x);
  r2.xzw = r3.yzw * r2.zzz;
  r2.xyz = r6.xyz * r2.yyy + r2.xzw;
  r2.xyz = r5.xyz * r3.xxx + r2.xyz;
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = rsqrt(r2.w);
  r2.xyz = r2.xyz * r2.www;
  r3.xyzw = renderTargetSize.zwzw * scopeDiameter.xxyy;
  r5.xy = renderTargetSize.zw * v0.xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r3.x = dot(r3.xy, r3.xy);
  r3.y = dot(r3.zw, r3.zw);
  r3.z = dot(r5.xy, r5.xy);
  r3.xyz = sqrt(r3.xyz);
  r3.y = r3.y + -r3.x;
  r3.x = r3.z + -r3.x;
  r3.y = 1 / r3.y;
  r3.x = saturate(r3.x * r3.y);
  r3.y = r3.x * -2 + 3;
  r3.x = r3.x * r3.x;
  r3.x = r3.y * r3.x;
  r3.yzw = scopeCrush * r4.xyz;
  r4.xyz = -r4.xyz * scopeCrush + r4.xyz;
  r3.xyz = r3.xxx * r4.xyz + r3.yzw;
  r4.xy = (uint2)v0.xy;
  r3.w = cmp(v0.z >= 0.984375);
  r4.z = 1.01587307 * v0.z;
  r4.w = v0.z * 64 + -63;
  r3.w = r3.w ? r4.w : r4.z;
  r3.w = max(9.99999994e-09, r3.w);
  r3.w = rcp(r3.w);
  r4.z = dot(-v5.xyz, -v5.xyz);
  r4.z = rsqrt(r4.z);
  r5.xyz = -v5.xyz * r4.zzz;
  r4.w = cmp(isDepthHack != 0);
  r6.xy = (uint2)r4.yx;
  r5.w = dot(r6.yx, float2(0.0671105608,0.00583714992));
  r5.w = frac(r5.w);
  r5.w = 52.9829178 * r5.w;
  r5.w = frac(r5.w);
  r5.w = r5.w * 6.28318548 + gameTick.w;
  sincos(r5.w, r8.x, r9.x);
  r5.w = dot(r6.xy, float2(0.0671105608,0.00583714992));
  r5.w = frac(r5.w);
  r5.w = 52.9829178 * r5.w;
  r5.w = frac(r5.w);
  r5.w = r5.w * 6.28318548 + gameTick.w;
  sincos(r5.w, r6.x, r10.x);
  r7.x = saturate(dot(r2.xyz, r5.xyz));
  r5.w = dot(-r5.xyz, r2.xyz);
  r5.w = r5.w + r5.w;
  r11.xyz = r2.xyz * -r5.www + -r5.xyz;
  r5.w = 17 * r7.y;
  r5.w = exp2(r5.w);
  r5.w = 2 + r5.w;
  r5.w = 2 / r5.w;
  r6.y = sqrt(r5.w);
  r6.z = 1 + -r7.y;
  r6.w = 5 * r6.z;
  r7.z = r6.z * 5 + -2.5;
  r7.z = 0.400000006 * r7.z;
  r7.z = max(0, r7.z);
  r8.zw = -r6.zz * float2(10,5) + float2(6.85740995,7.08500004);
  r7.w = exp2(r8.z);
  r7.w = r7.x * r7.w;
  r7.zw = float2(100,9.1368103) * r7.zw;
  r8.z = r6.w * r6.z;
  r8.z = -r8.z * 2.0159049 + r8.w;
  r8.z = exp2(r8.z);
  r8.z = r8.z * r7.x;
  r8.z = 9.70808983 * r8.z;
  r7.w = max(r8.z, r7.w);
  r7.w = max(1.26815999, r7.w);
  r8.z = numRefProbes + -numOverrideProbes;
  r3.w = 0.0078125 * r3.w;
  r3.w = min(15, r3.w);
  r3.w = (uint)r3.w;
  r12.xy = (uint2)r4.xy >> int2(6,6);
  r12.z = (uint)r3.w << 4;
  r3.w = (int)r8.z & -32;
  r4.x = (int)-r3.w + (int)r8.z;
  r4.y = numRefProbes & -32;
  r8.w = (int)-r4.y + numRefProbes;
  r13.xy = float2(0,0);
  r14.w = 0;
  r15.yz = float2(0,1);
  r16.xy = float2(0,0);
  r17.x = 1;
  r18.xy = float2(0,0);
  r19.xy = float2(0,0);
  r20.xyzw = float4(0,0,0,0);
  r21.yzw = float3(0,0,0);
  r9.w = r3.w;
  while (true) {
    r10.y = cmp((uint)r9.w >= numRefProbes);
    if (r10.y != 0) break;
    r13.z = (uint)r9.w >> 5;
    r14.xyz = (int3)r12.xyz + (int3)r13.xyz;
    r10.y = visibleProbes.Load(r14.xyzw).x;
    r10.z = cmp((int)r3.w == (int)r9.w);
    bitmask.w = ((~(-1 << r4.x)) << 0) & 0xffffffff;  r10.w = (((uint)0 << 0) & bitmask.w) | ((uint)r10.y & ~bitmask.w);
    r10.y = r10.z ? r10.w : r10.y;
    r10.z = cmp((int)r4.y == (int)r9.w);
    if (r8.w == 0) r10.w = 0; else if (r8.w+0 < 32) {     r10.w = (uint)r10.y << (32-(r8.w + 0)); r10.w = (uint)r10.w >> (32-r8.w);    } else r10.w = (uint)r10.y >> 0;
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
            r13.w = max(abs(r13.w), r7.z);
            r13.w = r15.x ? r13.w : -r13.w;
            r13.z = max(1.00000001e-07, -r13.z);
            r13.z = r13.w / r13.z;
            r13.z = min(131072, abs(r13.z));
            r32.z = r33.z;
            r13.w = dot(r11.xyz, r32.xyz);
            r15.x = dot(r14.xyz, r32.xyz);
            r15.x = r15.x + -r33.w;
            r15.w = cmp(r15.x >= 0);
            r15.x = max(abs(r15.x), r7.z);
            r15.x = r15.w ? r15.x : -r15.x;
            r13.w = max(1.00000001e-07, -r13.w);
            r13.w = r15.x / r13.w;
            r13.z = min(r13.z, abs(r13.w));
            r33.z = r34.z;
            r13.w = dot(r11.xyz, r33.xyz);
            r15.x = dot(r14.xyz, r33.xyz);
            r15.x = r15.x + -r34.w;
            r15.w = cmp(r15.x >= 0);
            r15.x = max(abs(r15.x), r7.z);
            r15.x = r15.w ? r15.x : -r15.x;
            r13.w = max(1.00000001e-07, -r13.w);
            r13.w = r15.x / r13.w;
            r13.z = min(r13.z, abs(r13.w));
            r34.z = r35.z;
            r13.w = dot(r11.xyz, r34.xyz);
            r15.x = dot(r14.xyz, r34.xyz);
            r15.x = r15.x + -r35.w;
            r15.w = cmp(r15.x >= 0);
            r15.x = max(abs(r15.x), r7.z);
            r15.x = r15.w ? r15.x : -r15.x;
            r13.w = max(1.00000001e-07, -r13.w);
            r13.w = r15.x / r13.w;
            r13.z = min(r13.z, abs(r13.w));
            r35.z = r36.x;
            r13.w = dot(r11.xyz, r35.xyz);
            r15.x = dot(r14.xyz, r35.xyz);
            r15.x = r15.x + -r36.y;
            r15.w = cmp(r15.x >= 0);
            r15.x = max(abs(r15.x), r7.z);
            r15.x = r15.w ? r15.x : -r15.x;
            r13.w = max(1.00000001e-07, -r13.w);
            r13.w = r15.x / r13.w;
            r13.z = min(r13.z, abs(r13.w));
            r37.zw = r36.zw;
            r13.w = dot(r11.zxy, r37.xzw);
            r15.x = dot(r14.zxy, r37.xzw);
            r15.x = r15.x + -r37.y;
            r15.w = cmp(r15.x >= 0);
            r15.x = max(abs(r15.x), r7.z);
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
            r13.z = r6.z * 5 + r13.z;
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
            r32.x = dot(r2.xyz, r24.xyz);
            r32.y = dot(r2.xyz, r25.xyz);
            r32.z = dot(r2.xyz, r28.xyz);
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
            r13.w = r13.z * r7.w;
            r14.xyz = r17.yzw * r12.www;
            r12.w = dot(r14.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r12.w = r7.w * r13.z + r12.w;
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
    r10.yzw = r20.xyz;
    r4.y = r21.w;
    r8.w = 0;
    while (true) {
      r9.w = cmp((uint)r8.w >= (uint)r8.z);
      if (r9.w != 0) break;
      r13.z = (uint)r8.w >> 5;
      r14.xyz = (int3)r12.xyz + (int3)r13.xyz;
      r9.w = visibleProbes.Load(r14.xyzw).x;
      r12.w = cmp((int)r3.w == (int)r8.w);
      if (r4.x == 0) r13.z = 0; else if (r4.x+0 < 32) {       r13.z = (uint)r9.w << (32-(r4.x + 0)); r13.z = (uint)r13.z >> (32-r4.x);      } else r13.z = (uint)r9.w >> 0;
      r9.w = r12.w ? r13.z : r9.w;
      r12.w = (int)r8.w + numLights;
      r23.xyzw = r22.xyzw;
      r14.xyz = r10.yzw;
      r13.z = r4.y;
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
            r15.w = (int)r8.w + (int)r15.w;
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
              r16.w = max(abs(r16.w), r7.z);
              r16.w = r17.y ? r16.w : -r16.w;
              r15.w = max(1.00000001e-07, -r15.w);
              r15.w = r16.w / r15.w;
              r15.w = min(131072, abs(r15.w));
              r33.z = r34.z;
              r16.w = dot(r11.xyz, r33.xyz);
              r17.y = dot(r26.xyz, r33.xyz);
              r17.y = r17.y + -r34.w;
              r17.z = cmp(r17.y >= 0);
              r17.y = max(abs(r17.y), r7.z);
              r17.y = r17.z ? r17.y : -r17.y;
              r16.w = max(1.00000001e-07, -r16.w);
              r16.w = r17.y / r16.w;
              r15.w = min(abs(r16.w), r15.w);
              r34.z = r35.z;
              r16.w = dot(r11.xyz, r34.xyz);
              r17.y = dot(r26.xyz, r34.xyz);
              r17.y = r17.y + -r35.w;
              r17.z = cmp(r17.y >= 0);
              r17.y = max(abs(r17.y), r7.z);
              r17.y = r17.z ? r17.y : -r17.y;
              r16.w = max(1.00000001e-07, -r16.w);
              r16.w = r17.y / r16.w;
              r15.w = min(abs(r16.w), r15.w);
              r35.z = r36.z;
              r16.w = dot(r11.xyz, r35.xyz);
              r17.y = dot(r26.xyz, r35.xyz);
              r17.y = r17.y + -r36.w;
              r17.z = cmp(r17.y >= 0);
              r17.y = max(abs(r17.y), r7.z);
              r17.y = r17.z ? r17.y : -r17.y;
              r16.w = max(1.00000001e-07, -r16.w);
              r16.w = r17.y / r16.w;
              r15.w = min(abs(r16.w), r15.w);
              r36.z = r37.x;
              r16.w = dot(r11.xyz, r36.xyz);
              r17.y = dot(r26.xyz, r36.xyz);
              r17.y = r17.y + -r37.y;
              r17.z = cmp(r17.y >= 0);
              r17.y = max(abs(r17.y), r7.z);
              r17.y = r17.z ? r17.y : -r17.y;
              r16.w = max(1.00000001e-07, -r16.w);
              r16.w = r17.y / r16.w;
              r15.w = min(abs(r16.w), r15.w);
              r38.zw = r37.zw;
              r16.w = dot(r11.zxy, r38.xzw);
              r17.y = dot(r26.zxy, r38.xzw);
              r17.y = r17.y + -r38.y;
              r17.z = cmp(r17.y >= 0);
              r17.y = max(abs(r17.y), r7.z);
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
              r15.w = r6.z * 5 + r15.w;
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
              r33.x = dot(r2.xyz, r24.xyz);
              r33.y = dot(r2.xyz, r25.xyz);
              r33.z = dot(r2.xyz, r29.xyz);
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
              r16.z = r15.w * r7.w;
              r17.yzw = r17.yzw * r15.xxx;
              r15.x = dot(r17.yzw, float3(0.212599993,0.715200007,0.0722000003));
              r15.x = r7.w * r15.w + r15.x;
              r15.x = r16.z / r15.x;
              r23.xyz = r17.yzw * r15.xxx + r23.xyz;
            }
          }
        }
      }
      r22.xyzw = r23.xyzw;
      r10.yzw = r14.xyz;
      r8.w = (int)r8.w + 32;
    }
    r21.xyzw = r22.zxyw;
    r20.xyz = r10.yzw;
    r21.xyzw = r21.yzxw;
  } else {
    r21.x = r20.w;
  }
  r3.w = max(1, r21.w);
  r3.w = rcp(r3.w);
  r21.w = saturate(r21.w);
  r10.yzw = r20.xyz * r3.www;
  r13.xyz = r21.xyz * r3.www;
  r4.x = cmp(r21.w < 0.99000001);
  if (r4.x != 0) {
    r4.x = 1 + -r21.w;
    r4.y = sunConstants.globalProbeExposure * r4.x;
    r14.xyz = -globalProbeConstants.data[0].xyz + v5.xyz;
    r15.x = globalProbeConstants.data[0].w * r14.x;
    r15.yz = globalProbeConstants.data[1].xy * r14.yz;
    r14.xyz = saturate(float3(0.5,0.5,0.5) + r15.xyz);
    r15.xy = globalProbeConstants.data[1].zw * r14.xy;
    r15.z = globalProbeConstants.data[2].x * r14.z;
    r14.xyz = globalProbeConstants.data[2].yzw + r15.xyz;
    r15.xyz = cmp(float3(0,0,0) < r2.xyz);
    r15.xyz = r15.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r15.w = 0;
    r16.xyz = r15.wwx + r14.xyz;
    r16.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r16.xyz, 0).xyz;
    r17.xyz = r2.xyz * r2.xyz;
    r17.xyz = r17.xyz * r4.yyy;
    r18.xyz = r15.wwy + r14.xyz;
    r18.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r18.xyz, 0).xyz;
    r18.xyz = r18.xyz * r17.yyy;
    r16.xyz = r16.xyz * r17.xxx + r18.xyz;
    r14.xyz = r15.wwz + r14.xyz;
    r14.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r14.xyz, 0).xyz;
    r14.xyz = r14.xyz * r17.zzz + r16.xyz;
    r2.w = 0;
    r15.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r2.xyzw, 6).xyz;
    r14.xyz = r15.xyz * r14.xyz;
    r2.w = dot(r14.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r10.yzw = r20.xyz * r3.www + r14.xyz;
    r11.w = 0;
    r14.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, r6.w).xyz;
    r3.w = sunConstants.globalProbeExposure * r4.x + -r2.w;
    r2.w = r7.y * r3.w + r2.w;
    r13.xyz = r14.xyz * r2.www + r13.xyz;
  }
  r2.w = r7.x + r0.w;
  r2.w = log2(abs(r2.w));
  r2.w = r6.y * r2.w;
  r2.w = exp2(r2.w);
  r2.w = r2.w + r0.w;
  r2.w = saturate(-1 + r2.w);
  r14.xyz = r10.yzw * r0.www;
  r4.xy = r7.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r4.xy = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r4.xy, 0).xy;
  r7.yzw = r13.xyz * r2.www;
  r13.xyz = r7.zwy * r4.xxx;
  r7.yzw = r7.yzw * r4.yyy;
  r0.w = sqrt(r6.y);
  r0.w = r0.w * 0.5 + 0.5;
  r0.w = r0.w * r0.w;
  r2.w = 0.5 * r0.w;
  r0.w = -r0.w * 0.5 + 1;
  r3.w = r7.x * r0.w + r2.w;
  r0.w = r3.w * r0.w;
  r2.w = r3.w * r2.w;
  r3.w = dot(r2.xyz, sunConstants.wldDir.xyz);
  r4.x = saturate(r3.w);
  r4.y = cmp(0 >= r4.x);
  if (r4.y != 0) {
    r6.z = 0;
  }
  if (r4.y == 0) {
    r10.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v5.yyy;
    r10.yzw = v5.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r10.yzw;
    r10.yzw = v5.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r10.yzw;
    r10.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r10.yzw;
    r4.y = -sunConstants.splitDepthOffset + r10.w;
    r4.y = -r4.y * 6.10351563e-05 + 1;
    r6.w = saturate(r4.y);
    r6.w = cmp(r4.y == r6.w);
    if (r6.w != 0) {
      r6.w = 0;
      r8.z = 0;
      while (true) {
        r8.w = cmp(r6.w >= 3);
        if (r8.w != 0) break;
        r8.w = (uint)r6.w;
        r15.xy = -sunConstants.splitPinTransform[r8.w].xy + r10.yz;
        r9.w = max(abs(r15.x), abs(r15.y));
        r8.z = sunConstants.splitPinTransform[r8.w].z * r9.w;
        r8.w = cmp(r8.z < 1);
        if (r8.w != 0) {
          break;
        }
        r6.w = 1 + r6.w;
        r8.z = 0;
      }
    } else {
      r6.w = 3;
      r8.z = 0;
    }
    r8.w = cmp(r6.w >= 3);
    if (r8.w != 0) {
      r15.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r16.xz = rcp(r15.xx);
      r16.y = -r16.z;
      r15.xyz = r10.yzy * r16.xyz + r15.yzy;
      r16.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r15.xyz = max(float3(0,0,0), r15.xyz);
      r15.xyz = min(r15.xyz, r16.xyz);
      r16.xy = sunConstants.sstLightingConstants.coordScale * r15.zy;
      r16.xy = floor(r16.xy);
      r9.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r16.y;
      r9.w = r9.w * sunConstants.sstLightingConstants.coordScale + r16.x;
      r9.w = (uint)r9.w;
      r9.w = (int)r9.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.w, r9.w, l(0), t23.xxxx
    r11.w = samp0[]..swiz;
      r12.w = (int)r11.w & 0x40000000;
      r15.w = (uint)r11.w << 2;
      if (r12.w == 0) {
        r12.w = (int)r11.w & 0x01ffffff;
        r16.x = (int)r9.w + (int)r12.w;
        r9.w = (uint)r11.w >> 25;
        r9.w = (uint)r9.w;
        r15.xyz = r15.xyz * r9.www;
        r15.xyz = frac(r15.xyz);
        r15.xyz = float3(128,128,128) * r15.xyz;
        r15.xyz = (uint3)r15.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.x, l(0), t23.xxxx
      r16.z = samp0[]..swiz;
        r17.xy = (uint2)r15.zy >> int2(6,6);
        r9.w = (int)r16.z & 0xc0000000;
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
        r17.xyz = r9.www ? r16.xyz : r17.xyz;
        r18.yz = r9.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
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
        r16.xyz = r9.www ? r16.xyz : r17.xyz;
        r9.w = (int)r16.z & 0xc0000000;
        if (r9.w == 0) {
          r9.w = (int)-r16.y + 6;
          r17.xy = (uint2)r15.zy >> (uint2)r9.ww;
          r9.w = (int)r16.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r11.w = (((uint)r17.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r11.w = (((uint)r17.x << 0) & bitmask.w) | ((uint)r11.w & ~bitmask.w);
          r11.w = (int)r11.w * 10;
          r9.w = (uint)r9.w >> (uint)r11.w;
          r9.w = (int)r9.w & 1023;
          r17.x = (int)r9.w + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.x, l(0), t23.xxxx
        r17.w = samp0[]..swiz;
          r17.yz = (int2)r16.yy + int2(1,2);
          r9.w = (int)-r17.y + 6;
          r16.yw = (uint2)r15.zy >> (uint2)r9.ww;
          r9.w = (int)r17.w & 0xc0000000;
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
          r18.xyz = r9.www ? r17.xyw : r18.xyz;
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
          r16.xz = r9.ww ? r17.xw : r16.yw;
        }
        r9.w = (int)r16.z & 0xc0000000;
        if (r9.w == 0) {
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
          r12.w = r10.y * r15.x + r12.w;
          r11.w = r10.z * r11.w + r12.w;
          r15.w = r9.w ? r11.w : r15.w;
        }
      }
      r9.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r10.w;
      r9.w = cmp(r15.w < r9.w);
      r6.z = r9.w ? 0 : 1;
    }
    if (r8.w == 0) {
      if (enableDitheredShadow == 0) {
        r8.w = (uint)r6.w;
        r15.xy = -sunConstants.splitPinTransform[r8.w].xy + r10.yz;
        r15.xy = sunConstants.splitPinTransform[r8.w].zz * r15.xy;
        r15.xy = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r8.w = (int16)sunConstants.splitArrayOffset;
        r15.z = r8.w + r6.w;
        r8.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r4.y).x;
        r9.w = gTransShadowmapArray.SampleLevel(samp0_s, r15.xyz, 0).x;
        r8.w = r9.w + r8.w;
        r8.w = saturate(-1 + r8.w);
        r9.w = r8.w * r8.w;
        r6.z = r9.w * r8.w;
      }
      if (enableDitheredShadow != 0) {
        r15.x = -r8.x;
        r8.w = (uint)r6.w;
        r6.w = 1 + r6.w;
        r6.w = min(2, r6.w);
        r6.w = (uint)r6.w;
        r8.z = 1 + -r8.z;
        r8.z = 28 * r8.z;
        r8.z = (uint)r8.z;
        r16.xy = -sunConstants.splitPinTransform[r8.w].xy + r10.yz;
        r16.xy = sunConstants.splitPinTransform[r8.w].zz * r16.xy;
        r16.xy = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.yz = -sunConstants.splitPinTransform[r6.w].xy + r10.yz;
        r10.yz = sunConstants.splitPinTransform[r6.w].zz * r10.yz;
        r10.yz = r10.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r15.y = r9.x;
        r15.z = r8.x;
        r9.w = 0;
        r10.w = 0;
        while (true) {
          r11.w = cmp((uint)r10.w >= 8);
          if (r11.w != 0) break;
          r11.w = cmp((uint)r8.z < (uint)r10.w);
          r16.zw = r11.ww ? r10.yz : r16.xy;
          r12.w = r11.w ? sunConstants.splitPinTransform[r6.w].w : sunConstants.splitPinTransform[r8.w].w;
          r11.w = r11.w ? r6.w : r8.w;
          r17.x = dot(icb[r10.w+0].yx, r15.xy);
          r17.y = dot(icb[r10.w+0].yx, r15.yz);
          r17.xy = r17.xy * r12.ww + r16.zw;
          r11.w = (int)r11.w + (int16)sunConstants.splitArrayOffset;
          r17.z = (uint)r11.w;
          r11.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r4.y).x;
          r12.w = gTransShadowmapArray.SampleLevel(samp0_s, r17.xyz, 0).x;
          r11.w = r12.w + r11.w;
          r11.w = saturate(-1 + r11.w);
          r9.w = r11.w * 0.125 + r9.w;
          r10.w = (int)r10.w + 1;
        }
        r4.y = r9.w * r9.w;
        r6.z = r4.y * r9.w;
      }
    }
  }
  r4.y = cmp(0 < r4.x);
  if (r4.y != 0) {
    r4.y = cmp(0 < r6.z);
    if (r4.y != 0) {
      r4.y = sunConstants.specScale * r5.w;
      r4.y = r4.y * r4.x;
      if (sunConstants.sunCookieIndex != 0) {
        r15.xyz = eyeOffset.xyz + v5.xyz;
        r15.w = 1;
        r6.w = dot(sunConstants.sunCookieTransform[0].xyzw, r15.xyzw);
        r8.z = dot(sunConstants.sunCookieTransform[1].xyzw, r15.xyzw);
        r15.x = frac(r6.w);
        r15.y = frac(r8.z);
        r6.w = -1 + (int14)sunConstants.sunCookieIndex;
        r15.z = (uint)r6.w;
        r10.yzw = gCookieArray.SampleLevel(samplerLinear_s, r15.xyz, 0).xyz;
        r10.yzw = float3(-1,-1,-1) + r10.yzw;
        r10.yzw = sunConstants.sunCookieIntensity * r10.yzw + float3(1,1,1);
        r10.yzw = sunConstants.color.xyz * r10.yzw;
      } else {
        r10.yzw = sunConstants.color.xyz;
      }
      r6.w = viewmodelSunShadowRaw >> 16;
      r8.z = cmp(0 < (uint)r6.w);
      r8.z = r4.w ? r8.z : 0;
      if (r8.z != 0) {
        r6.w = (int)r6.w + numLights;
        r6.w = (int)r6.w + -1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.z, r6.w, l(52), t12.xxxx
      r8.z = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r6.w, l(68), t12.xyzw
      r15.x = samp0[]..swiz;
      r15.y = samp0[]..swiz;
      r15.z = samp0[]..swiz;
      r15.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r6.w, l(84), t12.xyzw
      r16.x = samp0[]..swiz;
      r16.y = samp0[]..swiz;
      r16.z = samp0[]..swiz;
      r16.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r6.w, l(132), t12.xyzw
      r17.x = samp0[]..swiz;
      r17.y = samp0[]..swiz;
      r17.z = samp0[]..swiz;
      r17.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r6.w, l(148), t12.xyzw
      r18.x = samp0[]..swiz;
      r18.y = samp0[]..swiz;
      r18.z = samp0[]..swiz;
      r18.w = samp0[]..swiz;
        r8.w = abs(r3.w) * -0.200000003 + 0.400000006;
        r19.xyz = r2.xyz * r8.www + v5.xyz;
        r19.w = 1;
        r15.x = dot(r15.xyzw, r19.xyzw);
        r15.y = dot(r16.xyzw, r19.xyzw);
        r15.xy = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r15.xy = r15.xy + r18.zw;
        r15.xy = r15.xy * r18.xy;
        r15.zw = r8.zz / r17.xz;
        r16.xy = float2(1,1) + -r15.zw;
        r16.xy = cmp(r15.xy >= r16.xy);
        r15.zw = cmp(r15.zw >= r15.xy);
        r15.zw = (int2)r15.zw | (int2)r16.xy;
        r8.w = (int)r15.w | (int)r15.z;
        if (r8.w == 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.w, r6.w, l(28), t12.xxxx
        r8.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r6.w, l(100), t12.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.zw, r6.w, l(164), t12.xxxy
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
          r6.w = dot(r16.xyzw, r19.xyzw);
          r15.xy = saturate(r15.xy);
          r16.xy = r15.xy * r17.xz + r17.yw;
          r6.w = r6.w + r15.z;
          r6.w = r6.w / r15.w;
          r6.w = max(6.10351563e-05, r6.w);
          r8.w = (int)r8.w & 0x0000ffff;
          if (enableDitheredShadow != 0) {
            r15.x = -r8.x;
            r17.z = (uint)r8.w;
            r15.y = r9.x;
            r15.z = r8.x;
            r9.w = 0;
            r11.w = 0;
            while (true) {
              r12.w = cmp((int)r11.w >= 8);
              if (r12.w != 0) break;
              r18.x = dot(icb[r11.w+0].yx, r15.xy);
              r18.y = dot(icb[r11.w+0].yx, r15.yz);
              r17.xy = r18.xy * r8.zz + r16.xy;
              r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r6.w).x;
              r9.w = r12.w * 0.125 + r9.w;
              r11.w = (int)r11.w + 1;
            }
          } else {
            r16.z = (uint)r8.w;
            r9.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r6.w).x;
          }
          r6.w = r9.w * r9.w;
          r6.w = r6.w * r9.w;
        } else {
          r6.w = 1;
        }
        r6.z = r6.z * r6.w;
      } else {
        r6.w = viewmodelSunShadowRaw & 0x0000ffff;
        r8.z = cmp(0 < (uint)r6.w);
        r8.w = ~(int)r4.w;
        r8.z = r8.z ? r8.w : 0;
        if (r8.z != 0) {
          r6.w = (int)r6.w + numLights;
          r6.w = (int)r6.w + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.z, r6.w, l(52), t12.xxxx
        r8.z = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r6.w, l(68), t12.xyzw
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r6.w, l(84), t12.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r6.w, l(132), t12.xyzw
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r6.w, l(148), t12.xyzw
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
        r18.z = samp0[]..swiz;
        r18.w = samp0[]..swiz;
          r8.w = abs(r3.w) * -0.200000003 + 0.400000006;
          r19.xyz = r2.xyz * r8.www + v5.xyz;
          r19.w = 1;
          r15.x = dot(r15.xyzw, r19.xyzw);
          r15.y = dot(r16.xyzw, r19.xyzw);
          r15.xy = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r15.xy = r15.xy + r18.zw;
          r15.xy = r15.xy * r18.xy;
          r15.zw = r8.zz / r17.xz;
          r16.xy = float2(1,1) + -r15.zw;
          r16.xy = cmp(r15.xy >= r16.xy);
          r15.zw = cmp(r15.zw >= r15.xy);
          r15.zw = (int2)r15.zw | (int2)r16.xy;
          r8.w = (int)r15.w | (int)r15.z;
          if (r8.w == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.w, r6.w, l(28), t12.xxxx
          r8.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r6.w, l(100), t12.xyzw
          r16.x = samp0[]..swiz;
          r16.y = samp0[]..swiz;
          r16.z = samp0[]..swiz;
          r16.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.zw, r6.w, l(164), t12.xxxy
          r15.z = samp0[]..swiz;
          r15.w = samp0[]..swiz;
            r6.w = dot(r16.xyzw, r19.xyzw);
            r15.xy = saturate(r15.xy);
            r16.xy = r15.xy * r17.xz + r17.yw;
            r6.w = r6.w + r15.z;
            r6.w = r6.w / r15.w;
            r6.w = max(6.10351563e-05, r6.w);
            r8.w = (int)r8.w & 0x0000ffff;
            if (enableDitheredShadow != 0) {
              r15.x = -r8.x;
              r17.z = (uint)r8.w;
              r15.y = r9.x;
              r15.z = r8.x;
              r9.w = 0;
              r11.w = 0;
              while (true) {
                r12.w = cmp((int)r11.w >= 8);
                if (r12.w != 0) break;
                r18.x = dot(icb[r11.w+0].yx, r15.xy);
                r18.y = dot(icb[r11.w+0].yx, r15.yz);
                r17.xy = r18.xy * r8.zz + r16.xy;
                r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r6.w).x;
                r9.w = r12.w * 0.125 + r9.w;
                r11.w = (int)r11.w + 1;
              }
            } else {
              r16.z = (uint)r8.w;
              r9.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r6.w).x;
            }
            r6.w = r9.w * r9.w;
            r6.w = r6.w * r9.w;
          } else {
            r6.w = 1;
          }
          r6.z = r6.z * r6.w;
        }
      }
      r6.w = -r7.x * 0.5 + 1;
      r6.w = -r4.x * r6.w + 1;
      r6.w = r6.w * r6.w;
      r6.w = -r6.w * 0.620000005 + 0.620000005;
      r6.w = r6.w + -r4.x;
      r6.w = r6.y * r6.w + r4.x;
      r6.w = r6.w * r6.z;
      r3.w = cmp(0 < r3.w);
      r15.xyz = r6.www * r10.yzw + r14.xyz;
      r16.xyz = -v5.xyz * r4.zzz + sunConstants.wldDir.xyz;
      r4.z = dot(r16.xyz, r16.xyz);
      r4.z = rsqrt(r4.z);
      r16.xyz = r16.xyz * r4.zzz;
      r4.z = dot(r16.xyz, r5.xyz);
      r6.w = dot(r2.xyz, r16.xyz);
      r8.z = abs(r6.w) * r5.w + -abs(r6.w);
      r6.w = abs(r6.w) * r8.z + 1;
      r4.x = r4.x * r0.w + r2.w;
      r6.w = r6.w * r6.w;
      r4.x = r6.w * r4.x;
      r4.x = rcp(r4.x);
      r4.x = r4.x * r4.y;
      r4.x = r6.z * r4.x;
      r4.x = 0.25 * r4.x;
      r16.xyz = r4.xxx * r10.yzw + r7.yzw;
      r4.y = saturate(1 + -r4.z);
      r4.z = r4.y * r4.y;
      r4.z = r4.z * r4.z;
      r4.y = r4.y * r4.z;
      r4.x = r4.x * r4.y;
      r17.xyz = r4.xxx * r10.zwy + r13.xyz;
      r15.w = r17.z;
      r14.w = r13.z;
      r14.xyzw = r3.wwww ? r15.xyzw : r14.xyzw;
      r17.zw = r16.xy;
      r13.zw = r7.yz;
      r15.xyzw = r3.wwww ? r17.xyzw : r13.xyzw;
      r7.w = r3.w ? r16.z : r7.w;
      r13.z = r14.w;
      r13.xy = r15.xy;
      r7.yz = r15.zw;
    }
  }
  r15.x = -r8.x;
  r3.w = -r7.x * 0.5 + 1;
  r4.x = ~(int)r4.w;
  r16.xy = float2(0,0);
  r17.w = 0;
  r18.xyz = v5.xyz;
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
  r29.xyz = r7.yzw;
  r4.y = enableDitheredShadow;
  r4.z = 0;
  while (true) {
    r6.z = cmp((uint)r4.z >= numLights);
    if (r6.z != 0) break;
    r16.z = (uint)r4.z >> 5;
    r17.xyz = (int3)r12.xyz + (int3)r16.xyz;
    r6.z = visibleLights.Load(r17.xyzw).x;
    r17.xyz = r10.yzw;
    r30.xyz = r28.xyz;
    r31.xyz = r29.xyz;
    r6.w = r4.y;
    r7.x = r6.z;
    while (true) {
      if (r7.x == 0) break;
      r8.z = firstbitlow((uint)r7.x);
      r8.w = 1 << (int)r8.z;
      r9.w = (int)r7.x & (int)r8.w;
      if (r9.w != 0) {
        r7.x = (int)r7.x ^ (int)r8.w;
        r8.z = (int)r4.z + (int)r8.z;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r32.xyzw, r8.z, l(0), t11.xyzw
      r32.x = samp0[]..swiz;
      r32.y = samp0[]..swiz;
      r32.z = samp0[]..swiz;
      r32.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r33.xy, r8.z, l(16), t11.xyxx
      r33.x = samp0[]..swiz;
      r33.y = samp0[]..swiz;
        r32.xyz = -v5.xyz + r32.xyz;
        r33.z = r32.w;
        r32.xyz = cmp(abs(r32.xyz) < r33.zxy);
        r8.w = r32.y ? r32.x : 0;
        r8.w = r32.z ? r8.w : 0;
        if (r8.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r8.z, l(0), t12.wxyz
        r32.x = samp0[]..swiz;
        r32.y = samp0[]..swiz;
        r32.z = samp0[]..swiz;
        r32.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r8.z, l(16), t12.zxyw
        r33.x = samp0[]..swiz;
        r33.y = samp0[]..swiz;
        r33.z = samp0[]..swiz;
        r33.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r8.z, l(32), t12.xyzw
        r34.x = samp0[]..swiz;
        r34.y = samp0[]..swiz;
        r34.z = samp0[]..swiz;
        r34.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r8.z, l(48), t12.xyzw
        r35.x = samp0[]..swiz;
        r35.y = samp0[]..swiz;
        r35.z = samp0[]..swiz;
        r35.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r8.z, l(64), t12.yzwx
        r36.x = samp0[]..swiz;
        r36.y = samp0[]..swiz;
        r36.z = samp0[]..swiz;
        r36.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r8.z, l(80), t12.xyzw
        r37.x = samp0[]..swiz;
        r37.y = samp0[]..swiz;
        r37.z = samp0[]..swiz;
        r37.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r8.z, l(96), t12.yzwx
        r38.x = samp0[]..swiz;
        r38.y = samp0[]..swiz;
        r38.z = samp0[]..swiz;
        r38.w = samp0[]..swiz;
          if (3 == 0) r8.w = 0; else if (3+24 < 32) {           r8.w = (uint)r33.w << (32-(3 + 24)); r8.w = (uint)r8.w >> (32-3);          } else r8.w = (uint)r33.w >> 24;
          switch (r8.w) {
            case 4 :            r8.w = cmp(0 < r38.x);
            r39.xy = r37.zw;
            r39.z = r38.w;
            r40.xyz = -r39.xyz * float3(0.5,0.5,0.5) + r32.yzw;
            r41.xyz = -v5.xyz + r40.xyz;
            r9.w = dot(r39.xyz, r41.xyz);
            r11.w = saturate(-r9.w / r38.x);
            r42.xyz = r11.www * r39.xyz + r40.xyz;
            r42.xyz = r8.www ? r42.xyz : r32.yzw;
            r42.xyz = -v5.xyz + r42.xyz;
            r12.w = dot(r42.xyz, r42.xyz);
            r13.w = rsqrt(r12.w);
            r42.xyz = r42.xyz * r13.www;
            r13.w = dot(r2.xyz, r42.xyz);
            r14.w = saturate(r13.w);
            r16.z = cmp(0 < r14.w);
            if (r16.z != 0) {
              r16.z = sqrt(r12.w);
              r16.w = r35.x * r35.x;
              r12.w = r16.w / r12.w;
              r12.w = min(1, r12.w);
              r16.zw = saturate(r16.zz * r34.xz + r34.yw);
              r42.xy = r16.zw * r16.zw;
              r16.zw = r16.zw * float2(-2,-2) + float2(3,3);
              r16.zw = r42.xy * r16.zw;
              r12.w = r16.z * r12.w;
              r12.w = r12.w * r16.w;
              r16.z = cmp(0 < r12.w);
              if (r16.z != 0) {
                if (3 == 0) r16.z = 0; else if (3+27 < 32) {                 r16.z = (uint)r33.w << (32-(3 + 27)); r16.z = (uint)r16.z >> (32-3);                } else r16.z = (uint)r33.w >> 27;
                r16.z = cmp((int)r16.z != 1);
                if (r16.z != 0) {
                  r16.z = abs(r13.w) * -0.200000003 + 0.400000006;
                  r42.xyz = r2.xyz * r16.zzz + v5.xyz;
                  r42.xyz = r42.xyz + -r36.xyz;
                  r16.z = max(abs(r42.y), abs(r42.z));
                  r16.z = max(abs(r42.x), r16.z);
                  r16.z = r37.x / r16.z;
                  r16.z = r16.z + r37.y;
                  r16.w = dot(r42.xyz, r42.xyz);
                  r16.w = rsqrt(r16.w);
                  r16.z = max(6.10351563e-05, r16.z);
                  r21.w = (int)r33.w & 0x0000ffff;
                  r43.w = (uint)r21.w;
                  r21.w = 0;
                  r25.w = 0;
                  while (true) {
                    r26.w = cmp((int)r25.w >= 8);
                    if (r26.w != 0) break;
                    r44.y = dot(icb[r25.w+0].yx, r15.xy);
                    r44.z = dot(icb[r25.w+0].yx, r15.yz);
                    r44.yz = r44.yz * r35.yy;
                    r44.x = r44.y * r10.x;
                    r44.w = r44.y * r6.x;
                    r43.xyz = r42.xyz * r16.www + r44.xzw;
                    r26.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r43.xyzw, r16.z).x;
                    r21.w = r26.w * 0.125 + r21.w;
                    r25.w = (int)r25.w + 1;
                  }
                } else {
                  r21.w = 1;
                }
                r12.w = r21.w * r12.w;
                r16.z = cmp(0 < r12.w);
                if (r16.z != 0) {
                  r16.z = r33.x * r5.w;
                  r16.w = dot(r39.xyz, r11.xyz);
                  r25.w = dot(r11.xyz, r41.xyz);
                  r26.w = -r16.w * r16.w + r38.x;
                  r9.w = r16.w * r25.w + -r9.w;
                  r9.w = saturate(r9.w / r26.w);
                  r16.w = r26.w / r38.x;
                  r16.zw = float2(0.25,10) * r16.zw;
                  r16.w = min(1, r16.w);
                  r9.w = r9.w + -r11.w;
                  r9.w = r16.w * r9.w + r11.w;
                  r39.xyz = r9.www * r39.xyz + r40.xyz;
                  r39.xyz = r8.www ? r39.xyz : r32.yzw;
                  r39.xyz = -v5.xyz + r39.xyz;
                  r8.w = dot(r39.xyz, r39.xyz);
                  r8.w = rsqrt(r8.w);
                  r40.xyz = r39.xyz * r8.www;
                  if (4 == 0) r9.w = 0; else if (4+16 < 32) {                   r9.w = (uint)r33.w << (32-(4 + 16)); r9.w = (uint)r9.w >> (32-4);                  } else r9.w = (uint)r33.w >> 16;
                  r11.w = cmp(0 < (uint)r9.w);
                  r11.w = r4.w ? r11.w : 0;
                  if (r11.w != 0) {
                    r9.w = (int)r9.w + numLights;
                    r9.w = (int)r9.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.w, r9.w, l(52), t12.xxxx
                  r11.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r9.w, l(100), t12.xyzw
                  r41.x = samp0[]..swiz;
                  r41.y = samp0[]..swiz;
                  r41.z = samp0[]..swiz;
                  r41.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r9.w, l(116), t12.xyzw
                  r42.x = samp0[]..swiz;
                  r42.y = samp0[]..swiz;
                  r42.z = samp0[]..swiz;
                  r42.w = samp0[]..swiz;
                    r16.w = abs(r13.w) * -0.200000003 + 0.400000006;
                    r19.xyz = r2.xyz * r16.www + v5.xyz;
                    r16.w = dot(r41.xyzw, r19.xyzw);
                    r25.w = dot(r42.xyzw, r19.xyzw);
                    r26.w = cmp(r25.w < r16.w);
                    if (r26.w == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r9.w, l(68), t12.xyzw
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r9.w, l(84), t12.xyzw
                    r42.x = samp0[]..swiz;
                    r42.y = samp0[]..swiz;
                    r42.z = samp0[]..swiz;
                    r42.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r9.w, l(132), t12.xyzw
                    r43.x = samp0[]..swiz;
                    r43.y = samp0[]..swiz;
                    r43.z = samp0[]..swiz;
                    r43.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r9.w, l(148), t12.xyzw
                    r44.x = samp0[]..swiz;
                    r44.y = samp0[]..swiz;
                    r44.z = samp0[]..swiz;
                    r44.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xy, r9.w, l(164), t12.xyxx
                    r45.x = samp0[]..swiz;
                    r45.y = samp0[]..swiz;
                      r41.x = dot(r41.xyzw, r19.xyzw);
                      r41.y = dot(r42.xyzw, r19.xyzw);
                      r19.xy = r41.xy / r25.ww;
                      r19.xy = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r19.xy = r19.xy + r44.zw;
                      r19.xy = r19.xy * r44.xy;
                      r41.xy = r11.ww / r43.xz;
                      r41.zw = float2(1,1) + -r41.xy;
                      r41.zw = cmp(r19.xy >= r41.zw);
                      r41.xy = cmp(r41.xy >= r19.xy);
                      r41.xy = (int2)r41.xy | (int2)r41.zw;
                      r19.z = (int)r41.y | (int)r41.x;
                      r19.xy = saturate(r19.xy);
                      r41.xy = r19.xy * r43.xz + r43.yw;
                      r19.x = r45.y * r25.w;
                      r16.w = r45.x * r25.w + r16.w;
                      r16.w = r16.w / r19.x;
                    } else {
                      r19.z = -1;
                    }
                    r19.x = (int)r26.w | (int)r19.z;
                    if (r19.x == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.w, r9.w, l(28), t12.xxxx
                    r9.w = samp0[]..swiz;
                      r16.w = max(6.10351563e-05, r16.w);
                      r9.w = (int)r9.w & 0x0000ffff;
                      if (r6.w != 0) {
                        r19.z = (uint)r9.w;
                        r25.w = 0;
                        r26.w = 0;
                        while (true) {
                          r27.w = cmp((int)r26.w >= 8);
                          if (r27.w != 0) break;
                          r42.x = dot(icb[r26.w+0].yx, r15.xw);
                          r42.y = dot(icb[r26.w+0].xy, r8.xy);
                          r19.xy = r42.xy * r11.ww + r41.xy;
                          r19.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r16.w).x;
                          r25.w = r19.x * 0.125 + r25.w;
                          r26.w = (int)r26.w + 1;
                        }
                      } else {
                        r41.z = (uint)r9.w;
                        r25.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r41.xyz, r16.w).x;
                      }
                      r9.w = r25.w * r25.w;
                      r9.w = r9.w * r25.w;
                    } else {
                      r9.w = 1;
                    }
                    r12.w = r12.w * r9.w;
                  } else {
                    if (4 == 0) r9.w = 0; else if (4+20 < 32) {                     r9.w = (uint)r33.w << (32-(4 + 20)); r9.w = (uint)r9.w >> (32-4);                    } else r9.w = (uint)r33.w >> 20;
                    r11.w = cmp(0 < (uint)r9.w);
                    r11.w = r11.w ? r4.x : 0;
                    if (r11.w != 0) {
                      r9.w = (int)r9.w + numLights;
                      r9.w = (int)r9.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.w, r9.w, l(52), t12.xxxx
                    r11.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r9.w, l(100), t12.xyzw
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r9.w, l(116), t12.xyzw
                    r42.x = samp0[]..swiz;
                    r42.y = samp0[]..swiz;
                    r42.z = samp0[]..swiz;
                    r42.w = samp0[]..swiz;
                      r16.w = abs(r13.w) * -0.200000003 + 0.400000006;
                      r20.xyz = r2.xyz * r16.www + v5.xyz;
                      r16.w = dot(r41.xyzw, r20.xyzw);
                      r19.x = dot(r42.xyzw, r20.xyzw);
                      r19.y = cmp(r19.x < r16.w);
                      if (r19.y == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r9.w, l(68), t12.xyzw
                      r41.x = samp0[]..swiz;
                      r41.y = samp0[]..swiz;
                      r41.z = samp0[]..swiz;
                      r41.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r9.w, l(84), t12.xyzw
                      r42.x = samp0[]..swiz;
                      r42.y = samp0[]..swiz;
                      r42.z = samp0[]..swiz;
                      r42.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r9.w, l(132), t12.xyzw
                      r43.x = samp0[]..swiz;
                      r43.y = samp0[]..swiz;
                      r43.z = samp0[]..swiz;
                      r43.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r9.w, l(148), t12.xyzw
                      r44.x = samp0[]..swiz;
                      r44.y = samp0[]..swiz;
                      r44.z = samp0[]..swiz;
                      r44.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xy, r9.w, l(164), t12.xyxx
                      r45.x = samp0[]..swiz;
                      r45.y = samp0[]..swiz;
                        r41.x = dot(r41.xyzw, r20.xyzw);
                        r41.y = dot(r42.xyzw, r20.xyzw);
                        r20.xy = r41.xy / r19.xx;
                        r20.xy = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                        r20.xy = r20.xy + r44.zw;
                        r20.xy = r20.xy * r44.xy;
                        r41.xy = r11.ww / r43.xz;
                        r41.zw = float2(1,1) + -r41.xy;
                        r41.zw = cmp(r20.xy >= r41.zw);
                        r41.xy = cmp(r41.xy >= r20.xy);
                        r41.xy = (int2)r41.xy | (int2)r41.zw;
                        r19.z = (int)r41.y | (int)r41.x;
                        r20.xy = saturate(r20.xy);
                        r20.xy = r20.xy * r43.xz + r43.yw;
                        r26.w = r45.y * r19.x;
                        r16.w = r45.x * r19.x + r16.w;
                        r16.w = r16.w / r26.w;
                      } else {
                        r19.z = -1;
                      }
                      r19.x = (int)r19.y | (int)r19.z;
                      if (r19.x == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.w, r9.w, l(28), t12.xxxx
                      r9.w = samp0[]..swiz;
                        r16.w = max(6.10351563e-05, r16.w);
                        r9.w = (int)r9.w & 0x0000ffff;
                        if (r6.w != 0) {
                          r19.z = (uint)r9.w;
                          r26.w = 0;
                          r27.w = 0;
                          while (true) {
                            r28.w = cmp((int)r27.w >= 8);
                            if (r28.w != 0) break;
                            r41.x = dot(icb[r27.w+0].xy, r9.xy);
                            r41.y = dot(icb[r27.w+0].yx, r9.xz);
                            r19.xy = r41.xy * r11.ww + r20.xy;
                            r19.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r16.w).x;
                            r26.w = r19.x * 0.125 + r26.w;
                            r27.w = (int)r27.w + 1;
                          }
                        } else {
                          r20.z = (uint)r9.w;
                          r26.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r16.w).x;
                        }
                        r9.w = r26.w * r26.w;
                        r9.w = r9.w * r26.w;
                      } else {
                        r9.w = 1;
                      }
                      r12.w = r12.w * r9.w;
                    }
                  }
                  r9.w = -r14.w * r3.w + 1;
                  r9.w = r9.w * r9.w;
                  r9.w = -r9.w * 0.620000005 + 0.620000005;
                  r9.w = r9.w + -r14.w;
                  r9.w = r6.y * r9.w + r14.w;
                  r9.w = r9.w * r12.w;
                  r33.x = r32.x;
                  r11.w = cmp(0 < r13.w);
                  r19.xyz = r9.www * r33.xyz + r17.xyz;
                  r9.w = saturate(dot(r2.xyz, r40.xyz));
                  r20.xyz = r39.xyz * r8.www + r5.xyz;
                  r8.w = dot(r20.xyz, r20.xyz);
                  r8.w = rsqrt(r8.w);
                  r20.xyz = r20.xyz * r8.www;
                  r8.w = dot(r20.xyz, r5.xyz);
                  r13.w = dot(r2.xyz, r20.xyz);
                  r14.w = abs(r13.w) * r5.w + -abs(r13.w);
                  r13.w = abs(r13.w) * r14.w + 1;
                  r14.w = r9.w * r0.w + r2.w;
                  r13.w = r13.w * r13.w;
                  r13.w = r13.w * r14.w;
                  r13.w = rcp(r13.w);
                  r9.w = r9.w * r16.z;
                  r9.w = r13.w * r9.w;
                  r9.w = r9.w * r12.w;
                  r20.xyz = r9.www * r33.xyz + r31.xyz;
                  r8.w = saturate(1 + -r8.w);
                  r12.w = r8.w * r8.w;
                  r12.w = r12.w * r12.w;
                  r8.w = r12.w * r8.w;
                  r8.w = r9.w * r8.w;
                  r39.xyz = r8.www * r33.xyz + r30.xyz;
                  r17.xyz = r11.www ? r19.xyz : r17.xyz;
                  r30.xyz = r11.www ? r39.xyz : r30.xyz;
                  r31.xyz = r11.www ? r20.xyz : r31.xyz;
                }
              }
            }
            break;
            case 2 :            r19.xy = r35.zw;
            r19.z = r36.w;
            r19.xyz = -v5.xyz + r19.xyz;
            r8.w = dot(r19.xyz, r19.xyz);
            r8.w = rsqrt(r8.w);
            r20.xyz = r19.xyz * r8.www;
            r9.w = dot(r2.xyz, r20.xyz);
            r11.w = saturate(r9.w);
            r12.w = cmp(0 < r11.w);
            if (r12.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r8.z, l(112), t12.yzwx
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r8.z, l(128), t12.zxyw
            r40.x = samp0[]..swiz;
            r40.y = samp0[]..swiz;
            r40.z = samp0[]..swiz;
            r40.w = samp0[]..swiz;
              r41.xyz = r39.xyz;
              r41.w = r40.y;
              r12.w = dot(r41.xyzw, r18.xyzw);
              r13.w = cmp(r12.w < 1);
              if (r13.w != 0) {
                r20.xyz = float3(1,1,1);
                r13.w = 0;
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r8.z, l(172), t12.yzwx
              r42.x = samp0[]..swiz;
              r42.y = samp0[]..swiz;
              r42.z = samp0[]..swiz;
              r42.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r8.z, l(188), t12.wxyz
              r43.x = samp0[]..swiz;
              r43.y = samp0[]..swiz;
              r43.z = samp0[]..swiz;
              r43.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r8.z, l(204), t12.xyzw
              r44.x = samp0[]..swiz;
              r44.y = samp0[]..swiz;
              r44.z = samp0[]..swiz;
              r44.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.w, r8.z, l(236), t12.xxxx
              r14.w = samp0[]..swiz;
                r45.xyz = -v5.xyz + r32.yzw;
                r16.z = r35.x * r35.x;
                r16.w = dot(r45.xyz, r45.xyz);
                r16.z = r16.z / r16.w;
                r16.z = min(1, r16.z);
                r34.xy = saturate(r12.ww * r34.xz + r34.yw);
                r34.zw = r34.xy * r34.xy;
                r34.xy = r34.xy * float2(-2,-2) + float2(3,3);
                r34.xy = r34.zw * r34.xy;
                r16.z = r34.x * r16.z;
                r16.z = r16.z * r34.y;
                r36.w = r37.x;
                r34.x = dot(r36.xyzw, r18.xyzw);
                r45.xyz = r37.yzw;
                r45.w = r38.w;
                r34.y = dot(r45.xyzw, r18.xyzw);
                r21.xy = r34.xy / r12.ww;
                r12.w = cmp(r42.w < 0.00048828125);
                if (r12.w != 0) {
                  r43.y = r44.x;
                  r34.xy = saturate(abs(r21.xy) * r43.zw + r43.xy);
                  r34.zw = r34.xy * r34.xy;
                  r34.xy = r34.xy * float2(-2,-2) + float2(3,3);
                  r34.xy = r34.zw * r34.xy;
                  r12.w = r34.x * r34.y;
                } else {
                  r42.w = r43.y;
                  r34.xyzw = saturate(r42.xyzw * abs(r21.yyxx));
                  r34.xyzw = log2(r34.xyzw);
                  r34.xyzw = r43.xxxx * r34.xyzw;
                  r34.xyzw = exp2(r34.xyzw);
                  r34.xy = r34.xy + r34.zw;
                  r34.xy = log2(r34.xy);
                  r34.xy = r44.xx * r34.xy;
                  r34.xy = exp2(r34.xy);
                  r16.w = r43.z * r34.x;
                  r27.w = r43.w * r34.y + -1;
                  r16.w = r43.w * r34.y + -r16.w;
                  r16.w = saturate(r27.w / r16.w);
                  r27.w = r16.w * r16.w;
                  r16.w = r16.w * -2 + 3;
                  r12.w = r27.w * r16.w;
                }
                r13.w = r16.z * r12.w;
                r12.w = (int)r14.w & 255;
                if (r12.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyz, r8.z, l(220), t12.xyzx
                r34.x = samp0[]..swiz;
                r34.y = samp0[]..swiz;
                r34.z = samp0[]..swiz;
                  r14.w = dot(r44.yzw, r21.xyz);
                  r16.z = dot(r34.xyz, r21.xyz);
                  r34.x = frac(r14.w);
                  r34.y = frac(r16.z);
                  r12.w = (int)r12.w + -1;
                  r34.z = (uint)r12.w;
                  r20.xyz = gCookieArray.SampleLevel(samplerLinear_s, r34.xyz, 0).xyz;
                } else {
                  r20.xyz = float3(1,1,1);
                }
              }
              r32.yz = r33.yz;
              r20.xyz = r32.xyz * r20.xyz;
              r12.w = cmp(0 < r13.w);
              if (r12.w != 0) {
                if (3 == 0) r12.w = 0; else if (3+27 < 32) {                 r12.w = (uint)r33.w << (32-(3 + 27)); r12.w = (uint)r12.w >> (32-3);                } else r12.w = (uint)r33.w >> 27;
                r12.w = cmp((int)r12.w != 1);
                if (r12.w != 0) {
                  r12.w = abs(r9.w) * -0.200000003 + 0.400000006;
                  r22.xyz = r2.xyz * r12.www + v5.xyz;
                  r39.xyz = r38.xyz;
                  r12.w = dot(r39.xyzw, r22.xyzw);
                  r14.w = dot(r41.xyzw, r22.xyzw);
                  r16.z = cmp(r14.w >= r12.w);
                  if (r16.z != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.y, r8.z, l(144), t12.xxxx
                  r40.y = samp0[]..swiz;
                    r36.w = r37.x;
                    r21.x = dot(r36.xyzw, r22.xyzw);
                    r38.xyz = r37.yzw;
                    r21.y = dot(r38.xyzw, r22.xyzw);
                    r16.zw = r21.xy / r14.ww;
                    r16.zw = saturate(r16.zw * float2(0.5,-0.5) + float2(0.5,0.5));
                    r22.xy = r16.zw * r40.zw + r40.xy;
                    r8.z = r12.w / r14.w;
                    r8.z = max(6.10351563e-05, r8.z);
                    r12.w = (int)r33.w & 0x0000ffff;
                    if (r6.w != 0) {
                      r32.z = (uint)r12.w;
                      r14.w = 0;
                      r16.z = 0;
                      while (true) {
                        r16.w = cmp((int)r16.z >= 8);
                        if (r16.w != 0) break;
                        r21.x = dot(icb[r16.z+0].xy, r25.xy);
                        r21.y = dot(icb[r16.z+0].yx, r25.xz);
                        r32.xy = r21.xy * r35.yy + r22.xy;
                        r16.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r32.xyz, r8.z).x;
                        r14.w = r16.w * 0.125 + r14.w;
                        r16.z = (int)r16.z + 1;
                      }
                    } else {
                      r22.z = (uint)r12.w;
                      r14.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r8.z).x;
                    }
                    r8.z = r14.w * r14.w;
                    r8.z = r8.z * r14.w;
                  } else {
                    r8.z = 1;
                  }
                } else {
                  r8.z = 1;
                }
                r8.z = r13.w * r8.z;
                r12.w = cmp(0 < r8.z);
                if (r12.w != 0) {
                  r12.w = r33.x * r5.w;
                  r12.w = r12.w * r11.w;
                  if (4 == 0) r13.w = 0; else if (4+16 < 32) {                   r13.w = (uint)r33.w << (32-(4 + 16)); r13.w = (uint)r13.w >> (32-4);                  } else r13.w = (uint)r33.w >> 16;
                  r16.z = cmp(0 < (uint)r13.w);
                  r16.z = r4.w ? r16.z : 0;
                  if (r16.z != 0) {
                    r13.w = (int)r13.w + numLights;
                    r13.w = (int)r13.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.z, r13.w, l(52), t12.xxxx
                  r16.z = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r13.w, l(68), t12.xyzw
                  r32.x = samp0[]..swiz;
                  r32.y = samp0[]..swiz;
                  r32.z = samp0[]..swiz;
                  r32.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r13.w, l(84), t12.xyzw
                  r34.x = samp0[]..swiz;
                  r34.y = samp0[]..swiz;
                  r34.z = samp0[]..swiz;
                  r34.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r13.w, l(100), t12.xyzw
                  r35.x = samp0[]..swiz;
                  r35.y = samp0[]..swiz;
                  r35.z = samp0[]..swiz;
                  r35.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r13.w, l(116), t12.xyzw
                  r36.x = samp0[]..swiz;
                  r36.y = samp0[]..swiz;
                  r36.z = samp0[]..swiz;
                  r36.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r13.w, l(132), t12.xyzw
                  r37.x = samp0[]..swiz;
                  r37.y = samp0[]..swiz;
                  r37.z = samp0[]..swiz;
                  r37.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r13.w, l(148), t12.xyzw
                  r38.x = samp0[]..swiz;
                  r38.y = samp0[]..swiz;
                  r38.z = samp0[]..swiz;
                  r38.w = samp0[]..swiz;
                    r16.w = abs(r9.w) * -0.200000003 + 0.400000006;
                    r23.xyz = r2.xyz * r16.www + v5.xyz;
                    r21.x = dot(r32.xyzw, r23.xyzw);
                    r21.y = dot(r34.xyzw, r23.xyzw);
                    r16.w = dot(r35.xyzw, r23.xyzw);
                    r22.x = dot(r36.xyzw, r23.xyzw);
                    r22.y = cmp(r22.x < r16.w);
                    r21.xy = r21.xy / r22.xx;
                    r21.xy = r21.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r21.xy = r21.xy + r38.zw;
                    r21.xy = r21.xy * r38.xy;
                    r23.xy = r16.zz / r37.xz;
                    r32.xy = float2(1,1) + -r23.xy;
                    r32.xy = cmp(r21.xy >= r32.xy);
                    r23.xy = cmp(r23.xy >= r21.xy);
                    r23.xy = (int2)r23.xy | (int2)r32.xy;
                    r22.z = (int)r23.y | (int)r23.x;
                    r22.y = (int)r22.y | (int)r22.z;
                    if (r22.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.y, r13.w, l(28), t12.xxxx
                    r22.y = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.xy, r13.w, l(164), t12.xyxx
                    r23.x = samp0[]..swiz;
                    r23.y = samp0[]..swiz;
                      r21.xy = saturate(r21.xy);
                      r32.xy = r21.xy * r37.xz + r37.yw;
                      r13.w = r23.y * r22.x;
                      r16.w = r23.x * r22.x + r16.w;
                      r13.w = r16.w / r13.w;
                      r13.w = max(6.10351563e-05, r13.w);
                      r16.w = r22.y ? 0.000000 : 0;
                      if (r6.w != 0) {
                        r22.z = (uint)r16.w;
                        r21.xy = float2(0,0);
                        while (true) {
                          r23.x = cmp((int)r21.y >= 8);
                          if (r23.x != 0) break;
                          r23.x = dot(icb[r21.y+0].xy, r26.xy);
                          r23.y = dot(icb[r21.y+0].yx, r26.xz);
                          r22.xy = r23.xy * r16.zz + r32.xy;
                          r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r13.w).x;
                          r21.x = r22.x * 0.125 + r21.x;
                          r21.y = (int)r21.y + 1;
                        }
                      } else {
                        r32.z = (uint)r16.w;
                        r21.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r32.xyz, r13.w).x;
                      }
                      r13.w = r21.x * r21.x;
                      r13.w = r13.w * r21.x;
                    } else {
                      r13.w = 1;
                    }
                    r8.z = r13.w * r8.z;
                  } else {
                    if (4 == 0) r13.w = 0; else if (4+20 < 32) {                     r13.w = (uint)r33.w << (32-(4 + 20)); r13.w = (uint)r13.w >> (32-4);                    } else r13.w = (uint)r33.w >> 20;
                    r16.z = cmp(0 < (uint)r13.w);
                    r16.z = r16.z ? r4.x : 0;
                    if (r16.z != 0) {
                      r13.w = (int)r13.w + numLights;
                      r13.w = (int)r13.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.z, r13.w, l(52), t12.xxxx
                    r16.z = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r13.w, l(68), t12.xyzw
                    r32.x = samp0[]..swiz;
                    r32.y = samp0[]..swiz;
                    r32.z = samp0[]..swiz;
                    r32.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r13.w, l(84), t12.xyzw
                    r33.x = samp0[]..swiz;
                    r33.y = samp0[]..swiz;
                    r33.z = samp0[]..swiz;
                    r33.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r13.w, l(100), t12.xyzw
                    r34.x = samp0[]..swiz;
                    r34.y = samp0[]..swiz;
                    r34.z = samp0[]..swiz;
                    r34.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r13.w, l(116), t12.xyzw
                    r35.x = samp0[]..swiz;
                    r35.y = samp0[]..swiz;
                    r35.z = samp0[]..swiz;
                    r35.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r13.w, l(132), t12.xyzw
                    r36.x = samp0[]..swiz;
                    r36.y = samp0[]..swiz;
                    r36.z = samp0[]..swiz;
                    r36.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r13.w, l(148), t12.xyzw
                    r37.x = samp0[]..swiz;
                    r37.y = samp0[]..swiz;
                    r37.z = samp0[]..swiz;
                    r37.w = samp0[]..swiz;
                      r16.w = abs(r9.w) * -0.200000003 + 0.400000006;
                      r24.xyz = r2.xyz * r16.www + v5.xyz;
                      r22.x = dot(r32.xyzw, r24.xyzw);
                      r22.y = dot(r33.xyzw, r24.xyzw);
                      r16.w = dot(r34.xyzw, r24.xyzw);
                      r21.y = dot(r35.xyzw, r24.xyzw);
                      r22.z = cmp(r21.y < r16.w);
                      r22.xy = r22.xy / r21.yy;
                      r22.xy = r22.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r22.xy = r22.xy + r37.zw;
                      r22.xy = r22.xy * r37.xy;
                      r23.xy = r16.zz / r36.xz;
                      r24.xy = float2(1,1) + -r23.xy;
                      r24.xy = cmp(r22.xy >= r24.xy);
                      r23.xy = cmp(r23.xy >= r22.xy);
                      r23.xy = (int2)r23.xy | (int2)r24.xy;
                      r23.x = (int)r23.y | (int)r23.x;
                      r22.z = (int)r22.z | (int)r23.x;
                      if (r22.z == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.z, r13.w, l(28), t12.xxxx
                      r22.z = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.xy, r13.w, l(164), t12.xyxx
                      r23.x = samp0[]..swiz;
                      r23.y = samp0[]..swiz;
                        r22.xy = saturate(r22.xy);
                        r24.xy = r22.xy * r36.xz + r36.yw;
                        r13.w = r23.y * r21.y;
                        r16.w = r23.x * r21.y + r16.w;
                        r13.w = r16.w / r13.w;
                        r13.w = max(6.10351563e-05, r13.w);
                        r16.w = r22.z ? 0.000000 : 0;
                        if (r6.w != 0) {
                          r22.z = (uint)r16.w;
                          r21.y = 0;
                          r23.x = 0;
                          while (true) {
                            r23.y = cmp((int)r23.x >= 8);
                            if (r23.y != 0) break;
                            r32.x = dot(icb[r23.x+0].xy, r27.xy);
                            r32.y = dot(icb[r23.x+0].yx, r27.xz);
                            r22.xy = r32.xy * r16.zz + r24.xy;
                            r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r13.w).x;
                            r21.y = r22.x * 0.125 + r21.y;
                            r23.x = (int)r23.x + 1;
                          }
                        } else {
                          r24.z = (uint)r16.w;
                          r21.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r13.w).x;
                        }
                        r13.w = r21.y * r21.y;
                        r13.w = r13.w * r21.y;
                      } else {
                        r13.w = 1;
                      }
                      r8.z = r13.w * r8.z;
                    }
                  }
                  r13.w = -r11.w * r3.w + 1;
                  r13.w = r13.w * r13.w;
                  r13.w = -r13.w * 0.620000005 + 0.620000005;
                  r13.w = r13.w + -r11.w;
                  r13.w = r6.y * r13.w + r11.w;
                  r13.w = r13.w * r8.z;
                  r9.w = cmp(0 < r9.w);
                  r22.xyz = r13.www * r20.xyz + r17.xyz;
                  r19.xyz = r19.xyz * r8.www + r5.xyz;
                  r8.w = dot(r19.xyz, r19.xyz);
                  r8.w = rsqrt(r8.w);
                  r19.xyz = r19.xyz * r8.www;
                  r8.w = dot(r19.xyz, r5.xyz);
                  r13.w = dot(r2.xyz, r19.xyz);
                  r16.z = abs(r13.w) * r5.w + -abs(r13.w);
                  r13.w = abs(r13.w) * r16.z + 1;
                  r11.w = r11.w * r0.w + r2.w;
                  r13.w = r13.w * r13.w;
                  r11.w = r13.w * r11.w;
                  r11.w = rcp(r11.w);
                  r11.w = r11.w * r12.w;
                  r8.z = r11.w * r8.z;
                  r8.z = 0.25 * r8.z;
                  r19.xyz = r8.zzz * r20.xyz + r31.xyz;
                  r8.w = saturate(1 + -r8.w);
                  r11.w = r8.w * r8.w;
                  r11.w = r11.w * r11.w;
                  r8.w = r11.w * r8.w;
                  r8.z = r8.z * r8.w;
                  r20.xyz = r8.zzz * r20.xyz + r30.xyz;
                  r17.xyz = r9.www ? r22.xyz : r17.xyz;
                  r30.xyz = r9.www ? r20.xyz : r30.xyz;
                  r31.xyz = r9.www ? r19.xyz : r31.xyz;
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
    r4.z = (int)r4.z + 32;
  }
  r2.xyz = float3(1,1,1) + -r3.xyz;
  r2.xyz = r28.xyz * r2.xyz;
  r2.xyz = r29.xyz * r3.xyz + r2.xyz;
  r0.xyz = r10.yzw * r0.xyz + r2.xyz;
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
      bitmask.y = ((~(-1 << 11)) << 0) & 0xffffffff;  r2.y = (((uint)r0.w << 0) & bitmask.y) | ((uint)r3.w & ~bitmask.y);
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