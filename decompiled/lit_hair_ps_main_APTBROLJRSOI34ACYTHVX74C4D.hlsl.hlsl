// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:36:55 2021

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
  float baseNormalHeight : packoffset(c10);
  float2 glossRange : packoffset(c10.y);
  float anisotropy : packoffset(c10.w);
  float3 specColorTint : packoffset(c11);
  float3 transColorTint : packoffset(c12);
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
Texture2D<float4> floatZSampler : register(t0);
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
Texture2D<float4> normalMap : register(t22);
StructuredBuffer<gSunShadowTree> gSunShadowTree : register(t23);
Texture2D<float4> glossMap : register(t24);
Texture2D<float4> aoMap : register(t25);
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45,r46,r47,r48,r49,r50,r51,r52,r53,r54,r55,r56,r57,r58,r59,r60,r61,r62,r63,r64,r65;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[4];
  float4 x1[4];
  float4 x2[4];
  r0.xyzw = colorMap.Sample(colorSampler_s, w1.xy).xyzw;
  r1.x = cmp(r0.w < 0.5);
  if (r1.x != 0) discard;
  r1.x = aoMap.Sample(aoSampler_s, w1.xy).x;
  r1.y = glossMap.Sample(specColorSampler_s, w1.xy).x;
  r1.z = glossRange.y + -glossRange.x;
  r1.w = r1.y * r1.z;
  r1.y = r1.y * r1.z + glossRange.x;
  r1.w = r1.w * 0.5 + glossRange.x;
  r1.yw = saturate(float2(0.0588235296,0.0588235296) * r1.yw);
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
  r1.yw = float2(-17,-17) * r1.yw;
  r1.y = exp2(r1.y);
  r1.y = r2.z + r1.y;
  r1.y = log2(r1.y);
  r1.w = exp2(r1.w);
  r1.w = r2.z + r1.w;
  r1.w = log2(r1.w);
  r1.yw = float2(-0.0588235296,-0.0588235296) * r1.yw;
  r6.xyz = r5.xyz * r2.yyy;
  r6.xyz = r4.xyz * r2.xxx + r6.xyz;
  r2.xyw = r3.yzw * r2.www + r6.xyz;
  r3.x = dot(r2.xyw, r2.xyw);
  r3.x = rsqrt(r3.x);
  r2.xyw = r3.xxx * r2.xyw;
  r1.z = debugGlossOverride.x * r1.z + glossRange.x;
  r1.z = saturate(0.0588235296 * r1.z);
  r1.z = -17 * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r2.z + r1.z;
  r1.z = log2(r1.z);
  r1.z = -0.0588235296 * r1.z;
  r1.yzw = max(float3(0,0,0), r1.yzw);
  r2.z = cmp(0 < debugStreamerControl.w);
  if (r2.z != 0) {
    r2.z = (int)debugStreamerControl.w;
    r3.x = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, w1.xy);
    r4.w = colorMap.CalculateLevelOfDetail(colorSampler_s, w1.xy);
    r3.x = cmp(r3.x < r4.w);
    r4.w = cmp(0 < r4.w);
    r6.xyz = (int3)r2.zzz & int3(1,2,4);
    r7.xyz = r6.xxx ? float3(1,0,1) : r0.xyz;
    r6.xyw = r6.yyy ? float3(0,1,1) : r0.xyz;
    r6.xyw = r4.www ? r7.xyz : r6.xyw;
    r7.xyz = r6.zzz ? float3(0,1,0) : r0.xyz;
    r0.xyz = r3.xxx ? r6.xyw : r7.xyz;
  }
  r6.xyz = debugColorOverride.xyz + -r0.xyz;
  r0.xyz = debugColorOverride.www * r6.xyz + r0.xyz;
  r2.z = debugAlphaOverride.x + -r0.w;
  o0.w = debugAlphaOverride.w * r2.z + r0.w;
  r6.y = debugGlossOverride.w * r1.z;
  r0.w = debugOcclusionOverride.x + -r1.x;
  r0.w = debugOcclusionOverride.w * r0.w + r1.x;
  r7.xyz = v6.xxx ? r3.yzw : -r3.yzw;
  r1.x = dot(r7.xyz, r7.xyz);
  r1.x = rsqrt(r1.x);
  r7.xyz = r7.xyz * r1.xxx + -r2.xyw;
  r2.xyz = debugNormalOverride.www * r7.xyz + r2.xyw;
  r6.zw = (uint2)v0.xy;
  r1.x = cmp(v0.z >= 0.984375);
  r3.x = 1.01587307 * v0.z;
  r4.w = v0.z * 64 + -63;
  r1.x = r1.x ? r4.w : r3.x;
  r1.x = max(9.99999994e-09, r1.x);
  r1.x = rcp(r1.x);
  r3.x = dot(-v5.xyz, -v5.xyz);
  r3.x = rsqrt(r3.x);
  r7.xyz = -v5.xyz * r3.xxx;
  r8.xy = (uint2)r6.wz;
  r4.w = dot(r8.yx, float2(0.0671105608,0.00583714992));
  r4.w = frac(r4.w);
  r4.w = 52.9829178 * r4.w;
  r4.w = frac(r4.w);
  r4.w = r4.w * 6.28318548 + gameTick.w;
  sincos(r4.w, r9.x, r10.x);
  r4.w = dot(r8.xy, float2(0.0671105608,0.00583714992));
  r4.w = frac(r4.w);
  r4.w = 52.9829178 * r4.w;
  r4.w = frac(r4.w);
  r4.w = r4.w * 6.28318548 + gameTick.w;
  sincos(r4.w, r8.x, r11.x);
  r6.x = saturate(dot(r2.xyz, r7.xyz));
  r4.w = dot(-r7.xyz, r2.xyz);
  r4.w = r4.w + r4.w;
  r12.xyz = r2.xyz * -r4.www + -r7.xyz;
  r4.w = 17 * r6.y;
  r13.x = exp2(r4.w);
  r4.w = 2 + r13.x;
  r4.w = 2 / r4.w;
  r5.w = sqrt(r4.w);
  r8.yzw = -eyeOffset.yyy * viewProjectionMatrix._m10_m11_m13;
  r8.yzw = -eyeOffset.xxx * viewProjectionMatrix._m00_m01_m03 + r8.yzw;
  r8.yzw = -eyeOffset.zzz * viewProjectionMatrix._m20_m21_m23 + r8.yzw;
  r8.yzw = viewProjectionMatrix._m30_m31_m33 + r8.yzw;
  r14.xyz = eyeOffset.xyz + v5.xyz;
  r7.w = sqrt(r5.w);
  r7.w = r7.w * 0.5 + 0.5;
  r7.w = r7.w * r7.w;
  r9.z = 0.5 * r7.w;
  r7.w = -r7.w * 0.5 + 1;
  r9.w = r6.x * r7.w + r9.z;
  r7.w = r9.w * r7.w;
  r9.z = r9.z * r9.w;
  r9.w = min(1, abs(anisotropy));
  r1.w = r1.w + -r1.y;
  r1.y = r9.w * r1.w + r1.y;
  r1.w = cmp(anisotropy < 0);
  r1.xy = float2(0.0078125,17) * r1.xy;
  r13.y = exp2(r1.y);
  r1.yw = r1.ww ? r13.xy : r13.yx;
  r1.yw = float2(2,2) + r1.yw;
  r1.yw = float2(2,2) / r1.yw;
  r9.w = dot(r2.xyz, sunConstants.wldDir.xyz);
  r10.w = cmp(0 >= abs(r9.w));
  if (r10.w != 0) {
    r13.y = 0;
  }
  if (r10.w == 0) {
    r11.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v5.yyy;
    r11.yzw = v5.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r11.yzw;
    r11.yzw = v5.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r11.yzw;
    r11.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r11.yzw;
    r10.w = -sunConstants.splitDepthOffset + r11.w;
    r10.w = -r10.w * 6.10351563e-05 + 1;
    r13.z = saturate(r10.w);
    r13.z = cmp(r10.w == r13.z);
    if (r13.z != 0) {
      r13.zw = float2(0,0);
      while (true) {
        r15.x = cmp(r13.z >= 3);
        if (r15.x != 0) break;
        r15.x = (uint)r13.z;
        r15.yz = -sunConstants.splitPinTransform[r15.x].xy + r11.yz;
        r15.y = max(abs(r15.y), abs(r15.z));
        r13.w = sunConstants.splitPinTransform[r15.x].z * r15.y;
        r15.x = cmp(r13.w < 1);
        if (r15.x != 0) {
          break;
        }
        r13.z = 1 + r13.z;
        r13.w = 0;
      }
    } else {
      r13.zw = float2(3,0);
    }
    r15.x = cmp(r13.z >= 3);
    if (r15.x != 0) {
      r15.yzw = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r16.xz = rcp(r15.yy);
      r16.y = -r16.z;
      r15.yzw = r11.yzy * r16.xyz + r15.zwz;
      r16.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r15.yzw = max(float3(0,0,0), r15.yzw);
      r15.yzw = min(r15.yzw, r16.xyz);
      r16.xy = sunConstants.sstLightingConstants.coordScale * r15.wz;
      r16.xy = floor(r16.xy);
      r16.y = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r16.y;
      r16.x = r16.y * sunConstants.sstLightingConstants.coordScale + r16.x;
      r16.x = (uint)r16.x;
      r16.x = (int)r16.x + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.y, r16.x, l(0), t23.xxxx
    r16.y = samp0[]..swiz;
      r16.z = (int)r16.y & 0x40000000;
      r16.w = (uint)r16.y << 2;
      if (r16.z == 0) {
        r16.z = (int)r16.y & 0x01ffffff;
        r17.x = (int)r16.z + (int)r16.x;
        r16.x = (uint)r16.y >> 25;
        r16.x = (uint)r16.x;
        r15.yzw = r16.xxx * r15.yzw;
        r15.yzw = frac(r15.yzw);
        r15.yzw = float3(128,128,128) * r15.yzw;
        r15.yzw = (uint3)r15.yzw;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
      r17.z = samp0[]..swiz;
        r16.xy = (uint2)r15.wz >> int2(6,6);
        r16.z = (int)r17.z & 0xc0000000;
        r17.w = (int)r17.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.w, l(0), t23.xxxx
      r17.w = samp0[]..swiz;
        r16.y = r16.y ? r17.z : r17.w;
        r17.w = (uint)r16.y >> 13;
        r16.x = r16.x ? r17.w : r16.y;
        r16.x = (int)r16.x & 8191;
        r18.x = (int)r16.x + (int)r17.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
      r18.z = samp0[]..swiz;
        r17.y = 0;
        r18.y = 1;
        r18.xyz = r16.zzz ? r17.xyz : r18.xyz;
        r19.yz = r16.zz ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r16.xy = (uint2)r15.wz >> (uint2)r19.yy;
        r16.xy = (int2)r16.xy & int2(1,1);
        r17.w = (int)r18.z & 0xc0000000;
        r18.w = (int)r18.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.w, l(0), t23.xxxx
      r18.w = samp0[]..swiz;
        r16.y = r16.y ? r18.z : r18.w;
        r18.w = (uint)r16.y >> 13;
        r16.x = r16.x ? r18.w : r16.y;
        r16.x = (int)r16.x & 8191;
        r19.x = (int)r16.x + (int)r18.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.w, r19.x, l(0), t23.xxxx
      r19.w = samp0[]..swiz;
        r18.xyz = r17.www ? r18.xyz : r19.xzw;
        r16.xyz = r16.zzz ? r17.xyz : r18.xyz;
        r17.x = (int)r16.z & 0xc0000000;
        if (r17.x == 0) {
          r17.x = (int)-r16.y + 6;
          r17.xy = (uint2)r15.wz >> (uint2)r17.xx;
          r17.z = (int)r16.z | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r17.y = (((uint)r17.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r17.x = (((uint)r17.x << 0) & bitmask.x) | ((uint)r17.y & ~bitmask.x);
          r17.x = (int)r17.x * 10;
          r17.x = (uint)r17.z >> (uint)r17.x;
          r17.x = (int)r17.x & 1023;
          r17.x = (int)r16.x + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.x, l(0), t23.xxxx
        r17.w = samp0[]..swiz;
          r17.yz = (int2)r16.yy + int2(1,2);
          r16.y = (int)-r17.y + 6;
          r18.xy = (uint2)r15.wz >> (uint2)r16.yy;
          r16.y = (int)r17.w & 0xc0000000;
          r18.z = (int)r17.w | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r18.y = (((uint)r18.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r18.x = (((uint)r18.x << 0) & bitmask.x) | ((uint)r18.y & ~bitmask.x);
          r18.x = (int)r18.x * 10;
          r18.x = (uint)r18.z >> (uint)r18.x;
          r18.x = (int)r18.x & 1023;
          r18.x = (int)r17.x + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
        r18.z = samp0[]..swiz;
          r18.y = r17.z;
          r18.xyz = r16.yyy ? r17.xyw : r18.xyz;
          r17.y = (int)-r18.y + 6;
          r17.yz = (uint2)r15.wz >> (uint2)r17.yy;
          r18.y = (int)r18.z & 0xc0000000;
          r18.w = (int)r18.z | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r17.z = (((uint)r17.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r17.y = (((uint)r17.y << 0) & bitmask.y) | ((uint)r17.z & ~bitmask.y);
          r17.y = (int)r17.y * 10;
          r17.y = (uint)r18.w >> (uint)r17.y;
          r17.y = (int)r17.y & 1023;
          r19.x = (int)r17.y + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.y, r19.x, l(0), t23.xxxx
        r19.y = samp0[]..swiz;
          r17.yz = r18.yy ? r18.xz : r19.xy;
          r16.xz = r16.yy ? r17.xw : r17.yz;
        }
        r16.y = (int)r16.z & 0xc0000000;
        if (r16.y == 0) {
          if (14 == 0) r17.x = 0; else if (14+15 < 32) {           r17.x = (uint)r16.z << (32-(14 + 15)); r17.x = (uint)r17.x >> (32-14);          } else r17.x = (uint)r16.z >> 15;
          r17.x = (uint)r17.x;
          r17.yz = (int2)r16.zz & int2(32767,536870912);
          r17.y = (uint)r17.y;
          r17.xy = sunConstants.sstLightingConstants.constants.spanInInches * r17.xy;
          r17.xy = float2(6.10388815e-05,3.05185094e-05) * r17.xy;
          r17.w = (int)r15.z & 3;
          r17.w = (int)r16.x + (int)r17.w;
          r17.w = (int)r17.w + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.w, l(0), t23.xxxx
        r17.w = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r18.x = (((uint)r15.y << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r18.y = (((uint)r15.z << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r18.z = (((uint)r15.w << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r15.y = (uint)r17.w >> (uint)r18.x;
          r15.y = (int)r15.y & 255;
          r15.y = (uint)r15.y;
          r15.y = r15.y * r17.y;
          r15.y = r15.y * 0.00392156886 + r17.x;
          r15.z = (int)r18.y + 1;
          if (1 == 0) r15.w = 0; else if (1+1 < 32) {           r15.w = (uint)r15.w << (32-(1 + 1)); r15.w = (uint)r15.w >> (32-1);          } else r15.w = (uint)r15.w >> 1;
          r15.z = (int)r15.w + (int)r15.z;
          r15.z = (int)r15.z + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.z, r15.z, l(0), t23.xxxx
        r15.z = samp0[]..swiz;
          r15.z = (uint)r15.z >> (uint)r18.z;
          r15.z = (int)r15.z & 0x0000ffff;
          r15.z = (uint)r15.z;
          r15.z = r15.z * r17.y;
          r15.z = r15.z * 1.52590219e-05 + r17.x;
          r16.w = r17.z ? r15.y : r15.z;
        } else {
          r15.y = (int)r16.z & 0x80000000;
          r15.z = (int)r16.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.z, r15.z, l(0), t23.xxxx
        r15.z = samp0[]..swiz;
          r15.y = r15.y ? r15.z : 0;
          r15.z = (uint)r16.z << 2;
          r15.w = (uint)r15.y >> 16;
          r15.y = (int)r15.y & 0x0000ffff;
          r15.yw = f16tof32(r15.yw);
          r15.z = r11.y * r15.w + r15.z;
          r15.y = r11.z * r15.y + r15.z;
          r16.w = r16.y ? r15.y : r16.w;
        }
      }
      r11.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r11.w;
      r11.w = cmp(r16.w < r11.w);
      r13.y = r11.w ? 0 : 1;
    }
    if (r15.x == 0) {
      if (enableDitheredShadow == 0) {
        r11.w = (uint)r13.z;
        r15.xy = -sunConstants.splitPinTransform[r11.w].xy + r11.yz;
        r15.xy = sunConstants.splitPinTransform[r11.w].zz * r15.xy;
        r15.xy = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r11.w = (int16)sunConstants.splitArrayOffset;
        r15.z = r13.z + r11.w;
        r11.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r10.w).x;
        r15.x = gTransShadowmapArray.SampleLevel(samp0_s, r15.xyz, 0).x;
        r11.w = r15.x + r11.w;
        r11.w = saturate(-1 + r11.w);
        r15.x = r11.w * r11.w;
        r13.y = r15.x * r11.w;
      }
      if (enableDitheredShadow != 0) {
        r15.x = -r9.x;
        r11.w = (uint)r13.z;
        r13.z = 1 + r13.z;
        r13.z = min(2, r13.z);
        r13.w = 1 + -r13.w;
        r13.w = 28 * r13.w;
        r13.zw = (uint2)r13.zw;
        r16.xy = -sunConstants.splitPinTransform[r11.w].xy + r11.yz;
        r16.xy = sunConstants.splitPinTransform[r11.w].zz * r16.xy;
        r16.xy = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r11.yz = -sunConstants.splitPinTransform[r13.z].xy + r11.yz;
        r11.yz = sunConstants.splitPinTransform[r13.z].zz * r11.yz;
        r11.yz = r11.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r15.y = r10.x;
        r15.z = r9.x;
        r15.w = 0;
        r16.z = 0;
        while (true) {
          r16.w = cmp((uint)r16.z >= 8);
          if (r16.w != 0) break;
          r16.w = cmp((uint)r13.w < (uint)r16.z);
          r17.xy = r16.ww ? r11.yz : r16.xy;
          r17.z = r16.w ? sunConstants.splitPinTransform[r13.z].w : sunConstants.splitPinTransform[r11.w].w;
          r16.w = r16.w ? r13.z : r11.w;
          r18.x = dot(icb[r16.z+0].yx, r15.xy);
          r18.y = dot(icb[r16.z+0].yx, r15.yz);
          r17.xy = r18.xy * r17.zz + r17.xy;
          r16.w = (int)r16.w + (int16)sunConstants.splitArrayOffset;
          r17.z = (uint)r16.w;
          r16.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r10.w).x;
          r17.x = gTransShadowmapArray.SampleLevel(samp0_s, r17.xyz, 0).x;
          r16.w = r17.x + r16.w;
          r16.w = saturate(-1 + r16.w);
          r15.w = r16.w * 0.125 + r15.w;
          r16.z = (int)r16.z + 1;
        }
        r10.w = r15.w * r15.w;
        r13.y = r10.w * r15.w;
      }
    }
  }
  r10.w = viewmodelSunShadowRaw & 0x0000ffff;
  if (r10.w != 0) {
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
    r11.z = abs(r9.w) * -0.200000003 + 0.400000006;
    r11.w = cmp(r9.w < 0);
    r11.z = r11.w ? -r11.z : r11.z;
    r19.xyz = r2.xyz * r11.zzz + v5.xyz;
    r19.w = 1;
    r15.x = dot(r15.xyzw, r19.xyzw);
    r15.y = dot(r16.xyzw, r19.xyzw);
    r11.zw = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r11.zw = r11.zw + r18.zw;
    r11.zw = r11.zw * r18.xy;
    r13.zw = r11.yy / r17.xz;
    r15.xy = float2(1,1) + -r13.zw;
    r15.xy = cmp(r11.zw >= r15.xy);
    r13.zw = cmp(r13.zw >= r11.zw);
    r13.zw = (int2)r13.zw | (int2)r15.xy;
    r13.z = (int)r13.w | (int)r13.z;
    if (r13.z == 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.z, r10.w, l(28), t12.xxxx
    r13.z = samp0[]..swiz;
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
      r11.z = r13.z ? 0.000000 : 0;
      if (enableDitheredShadow != 0) {
        r16.x = -r9.x;
        r17.z = (uint)r11.z;
        r16.y = r10.x;
        r16.z = r9.x;
        r11.w = 0;
        r13.z = 0;
        while (true) {
          r13.w = cmp((int)r13.z >= 8);
          if (r13.w != 0) break;
          r18.x = dot(icb[r13.z+0].yx, r16.xy);
          r18.y = dot(icb[r13.z+0].yx, r16.yz);
          r17.xy = r18.xy * r11.yy + r15.xy;
          r13.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r10.w).x;
          r11.w = r13.w * 0.125 + r11.w;
          r13.z = (int)r13.z + 1;
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
    r13.y = r13.y * r10.w;
  }
  r10.w = cmp(0 < abs(r9.w));
  if (r10.w != 0) {
    r10.w = cmp(0 < r13.y);
    if (r10.w != 0) {
      r10.w = sunConstants.specScale * r4.w;
      r10.w = 0.25 * r10.w;
      if (sunConstants.sunCookieIndex != 0) {
        r14.w = 1;
        r11.y = dot(sunConstants.sunCookieTransform[0].xyzw, r14.xyzw);
        r11.z = dot(sunConstants.sunCookieTransform[1].xyzw, r14.xyzw);
        r15.xy = frac(r11.yz);
        r11.y = -1 + (int14)sunConstants.sunCookieIndex;
        r15.z = (uint)r11.y;
        r11.yzw = gCookieArray.SampleLevel(samplerLinear_s, r15.xyz, 0).xyz;
        r11.yzw = float3(-1,-1,-1) + r11.yzw;
        r11.yzw = sunConstants.sunCookieIntensity * r11.yzw + float3(1,1,1);
        r11.yzw = sunConstants.color.xyz * r11.yzw;
      } else {
        r11.yzw = sunConstants.color.xyz;
      }
      r13.z = -r6.x * 0.5 + 1;
      r13.z = -abs(r9.w) * r13.z + 1;
      r13.z = r13.z * r13.z;
      r13.z = -r13.z * 0.620000005 + 0.620000005;
      r13.z = r13.z + -abs(r9.w);
      r13.z = r5.w * r13.z + abs(r9.w);
      r13.w = cmp(0 < r9.w);
      r9.w = saturate(r9.w);
      r15.xyz = -v5.xyz * r3.xxx + sunConstants.wldDir.xyz;
      r3.x = dot(r15.xyz, r15.xyz);
      r3.x = rsqrt(r3.x);
      r15.xyz = r15.xyz * r3.xxx;
      r3.x = dot(r2.xyz, r15.xyz);
      r14.w = dot(r15.xyz, r7.xyz);
      r15.w = r1.y * r1.w;
      r15.w = sqrt(r15.w);
      r16.x = dot(r15.xyz, r4.xyz);
      r15.x = dot(r15.xyz, r5.xyz);
      r15.y = r16.x * r16.x;
      r15.x = r15.x * r15.x;
      r15.xy = r15.xy / r1.wy;
      r15.x = r15.y + r15.x;
      r3.x = abs(r3.x) * abs(r3.x) + r15.x;
      r15.x = r9.w * r7.w + r9.z;
      r3.x = r3.x * r3.x;
      r3.x = r3.x * r15.w;
      r3.x = r3.x * r15.x;
      r3.x = rcp(r3.x);
      r9.w = r9.w * r10.w;
      r3.x = r9.w * r3.x;
      r9.w = saturate(1 + -r14.w);
      r10.w = r9.w * r9.w;
      r10.w = r10.w * r10.w;
      r9.w = r10.w * r9.w;
      r9.w = r9.w * r3.x;
      r10.w = r13.w ? r13.z : 0;
      r15.xyz = r13.www ? float3(0,0,0) : r13.zzz;
      r16.xy = r13.ww ? r9.ww : 0;
      r17.xyz = r13.www ? r3.xxx : 0;
      r3.x = dot(r11.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r3.x = r13.y * r3.x;
      r13.x = 1;
      r9.w = sunConstants.wldDir.x;
      r13.zw = sunConstants.wldDir.yz;
      r16.zw = r10.ww;
      r14.w = r16.y;
    } else {
      r3.x = 0;
      r11.yzw = float3(0,0,0);
      r9.w = 0;
      r13.xyzw = float4(0,0,0,0);
      r15.xyz = float3(0,0,0);
      r10.w = 0;
      r17.xyz = float3(0,0,0);
      r14.w = 0;
      r16.xyzw = float4(0,0,0,0);
    }
  } else {
    r3.x = 0;
    r11.yzw = float3(0,0,0);
    r9.w = 0;
    r13.xyzw = float4(0,0,0,0);
    r15.xyz = float3(0,0,0);
    r10.w = 0;
    r17.xyz = float3(0,0,0);
    r14.w = 0;
    r16.xyzw = float4(0,0,0,0);
  }
  r1.x = min(15, r1.x);
  r1.x = (uint)r1.x;
  r18.xy = (uint2)r6.zw >> int2(6,6);
  r18.z = (uint)r1.x << 4;
  r19.x = -r9.x;
  r1.x = -r6.x * 0.5 + 1;
  r6.z = r1.y * r1.w;
  r6.z = sqrt(r6.z);
  r20.xy = float2(0,0);
  r21.w = 0;
  r22.xyz = v5.xyz;
  r22.w = 1;
  r23.w = 1;
  r19.z = r9.x;
  r24.z = 1;
  r25.w = 1;
  r19.yw = r10.xx;
  r9.y = r19.w;
  r26.w = 1;
  r10.y = r19.x;
  r10.z = r9.x;
  r27.x = r10.x;
  r27.y = r19.x;
  r27.z = r9.x;
  r28.xyz = float3(0,0,0);
  r29.xyz = float3(0,0,0);
  r30.xyz = float3(0,0,0);
  r31.xyz = float3(0,0,0);
  r32.xyz = r11.yzw;
  r33.x = r9.w;
  r33.yz = r13.zw;
  r34.xy = r16.zw;
  r34.z = r10.w;
  r35.xyz = r15.xyz;
  r36.xyz = r17.xyz;
  r37.x = r14.w;
  r37.yz = r16.xy;
  r38.x = enableDitheredShadow;
  r38.y = r3.x;
  r38.zw = r13.xy;
  r6.w = 0;
  while (true) {
    r15.w = cmp((uint)r6.w >= numLights);
    if (r15.w != 0) break;
    r20.z = (uint)r6.w >> 5;
    r21.xyz = (int3)r18.xyz + (int3)r20.xyz;
    r15.w = visibleLights.Load(r21.xyzw).x;
    r21.xyz = r28.xyz;
    r39.xyz = r29.xyz;
    r40.xyz = r30.xyz;
    r41.xyz = r31.xyz;
    r42.xyz = r32.xyz;
    r43.xyz = r33.xyz;
    r44.xyz = r34.xyz;
    r45.xyz = r36.xyz;
    r46.xyz = r37.xyz;
    r20.zw = r38.zw;
    r17.w = r38.x;
    r18.w = r38.y;
    r47.xyz = r35.xyz;
    r24.w = r15.w;
    while (true) {
      if (r24.w == 0) break;
      r27.w = firstbitlow((uint)r24.w);
      r28.w = 1 << (int)r27.w;
      r29.w = (int)r24.w & (int)r28.w;
      if (r29.w != 0) {
        r24.w = (int)r24.w ^ (int)r28.w;
        r27.w = (int)r6.w + (int)r27.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r48.xyzw, r27.w, l(0), t12.wxyz
      r48.x = samp0[]..swiz;
      r48.y = samp0[]..swiz;
      r48.z = samp0[]..swiz;
      r48.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r49.xyzw, r27.w, l(16), t12.zxyw
      r49.x = samp0[]..swiz;
      r49.y = samp0[]..swiz;
      r49.z = samp0[]..swiz;
      r49.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r50.xyzw, r27.w, l(32), t12.xyzw
      r50.x = samp0[]..swiz;
      r50.y = samp0[]..swiz;
      r50.z = samp0[]..swiz;
      r50.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r51.xyzw, r27.w, l(48), t12.xyzw
      r51.x = samp0[]..swiz;
      r51.y = samp0[]..swiz;
      r51.z = samp0[]..swiz;
      r51.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r52.xyzw, r27.w, l(64), t12.yzwx
      r52.x = samp0[]..swiz;
      r52.y = samp0[]..swiz;
      r52.z = samp0[]..swiz;
      r52.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r53.xyzw, r27.w, l(80), t12.xyzw
      r53.x = samp0[]..swiz;
      r53.y = samp0[]..swiz;
      r53.z = samp0[]..swiz;
      r53.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r54.xyzw, r27.w, l(96), t12.yzwx
      r54.x = samp0[]..swiz;
      r54.y = samp0[]..swiz;
      r54.z = samp0[]..swiz;
      r54.w = samp0[]..swiz;
        if (3 == 0) r28.w = 0; else if (3+24 < 32) {         r28.w = (uint)r49.w << (32-(3 + 24)); r28.w = (uint)r28.w >> (32-3);        } else r28.w = (uint)r49.w >> 24;
        switch (r28.w) {
          case 4 :          r28.w = cmp(0 < r54.x);
          r55.xy = r53.zw;
          r55.z = r54.w;
          r56.xyz = -r55.xyz * float3(0.5,0.5,0.5) + r48.yzw;
          r57.xyz = -v5.xyz + r56.xyz;
          r29.w = dot(r55.xyz, r57.xyz);
          r30.w = saturate(-r29.w / r54.x);
          r58.xyz = r30.www * r55.xyz + r56.xyz;
          r58.xyz = r28.www ? r58.xyz : r48.yzw;
          r58.xyz = -v5.xyz + r58.xyz;
          r31.w = dot(r58.xyz, r58.xyz);
          r32.w = rsqrt(r31.w);
          r58.xyz = r58.xyz * r32.www;
          r32.w = dot(r2.xyz, r58.xyz);
          r33.w = cmp(0 < abs(r32.w));
          if (r33.w != 0) {
            r33.w = sqrt(r31.w);
            r34.w = r51.x * r51.x;
            r31.w = r34.w / r31.w;
            r31.w = min(1, r31.w);
            r59.xy = saturate(r33.ww * r50.xz + r50.yw);
            r59.zw = r59.xy * r59.xy;
            r59.xy = r59.xy * float2(-2,-2) + float2(3,3);
            r59.xy = r59.zw * r59.xy;
            r31.w = r59.x * r31.w;
            r59.x = r31.w * r59.y;
            r31.w = cmp(0 < r59.x);
            if (r31.w != 0) {
              if (3 == 0) r59.z = 0; else if (3+27 < 32) {               r59.z = (uint)r49.w << (32-(3 + 27)); r59.z = (uint)r59.z >> (32-3);              } else r59.z = (uint)r49.w >> 27;
              if (4 == 0) r59.w = 0; else if (4+20 < 32) {               r59.w = (uint)r49.w << (32-(4 + 20)); r59.w = (uint)r59.w >> (32-4);              } else r59.w = (uint)r49.w >> 20;
              r31.w = cmp((int)r59.z != 1);
              if (r31.w != 0) {
                r31.w = abs(r32.w) * -0.200000003 + 0.400000006;
                r33.w = cmp(r32.w < 0);
                r31.w = r33.w ? -r31.w : r31.w;
                r60.xyz = r2.xyz * r31.www + v5.xyz;
                r60.xyz = r60.xyz + -r52.xyz;
                r31.w = max(abs(r60.y), abs(r60.z));
                r31.w = max(abs(r60.x), r31.w);
                r31.w = r53.x / r31.w;
                r31.w = r31.w + r53.y;
                r33.w = dot(r60.xyz, r60.xyz);
                r33.w = rsqrt(r33.w);
                r31.w = max(6.10351563e-05, r31.w);
                r34.w = (int)r49.w & 0x0000ffff;
                r61.w = (uint)r34.w;
                r59.y = 0;
                r34.w = 0;
                while (true) {
                  r35.w = cmp((int)r34.w >= 8);
                  if (r35.w != 0) break;
                  r62.y = dot(icb[r34.w+0].yx, r19.xy);
                  r62.z = dot(icb[r34.w+0].yx, r19.yz);
                  r62.yz = r62.yz * r51.yy;
                  r62.x = r62.y * r11.x;
                  r62.w = r62.y * r8.x;
                  r61.xyz = r60.xyz * r33.www + r62.xzw;
                  r35.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r61.xyzw, r31.w).x;
                  r59.y = r35.w * 0.125 + r59.y;
                  r34.w = (int)r34.w + 1;
                }
              } else {
                r59.y = 1;
              }
              if (r59.w != 0) {
                r31.w = (int)r59.w + numLights;
                r31.w = (int)r31.w + -1;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.w, r31.w, l(52), t12.xxxx
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r60.xyzw, r31.w, l(100), t12.xyzw
              r60.x = samp0[]..swiz;
              r60.y = samp0[]..swiz;
              r60.z = samp0[]..swiz;
              r60.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r61.xyzw, r31.w, l(116), t12.xyzw
              r61.x = samp0[]..swiz;
              r61.y = samp0[]..swiz;
              r61.z = samp0[]..swiz;
              r61.w = samp0[]..swiz;
                r34.w = abs(r32.w) * -0.200000003 + 0.400000006;
                r35.w = cmp(r32.w < 0);
                r34.w = r35.w ? -r34.w : r34.w;
                r23.xyz = r2.xyz * r34.www + v5.xyz;
                r34.w = dot(r60.xyzw, r23.xyzw);
                r35.w = dot(r61.xyzw, r23.xyzw);
                r36.w = cmp(r35.w < r34.w);
                if (r36.w == 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r60.xyzw, r31.w, l(68), t12.xyzw
                r60.x = samp0[]..swiz;
                r60.y = samp0[]..swiz;
                r60.z = samp0[]..swiz;
                r60.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r61.xyzw, r31.w, l(84), t12.xyzw
                r61.x = samp0[]..swiz;
                r61.y = samp0[]..swiz;
                r61.z = samp0[]..swiz;
                r61.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r62.xyzw, r31.w, l(132), t12.xyzw
                r62.x = samp0[]..swiz;
                r62.y = samp0[]..swiz;
                r62.z = samp0[]..swiz;
                r62.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r63.xyzw, r31.w, l(148), t12.xyzw
                r63.x = samp0[]..swiz;
                r63.y = samp0[]..swiz;
                r63.z = samp0[]..swiz;
                r63.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r59.zw, r31.w, l(164), t12.xxxy
                r59.z = samp0[]..swiz;
                r59.w = samp0[]..swiz;
                  r60.x = dot(r60.xyzw, r23.xyzw);
                  r60.y = dot(r61.xyzw, r23.xyzw);
                  r23.xy = r60.xy / r35.ww;
                  r23.xy = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                  r23.xy = r23.xy + r63.zw;
                  r23.xy = r23.xy * r63.xy;
                  r60.xy = r33.ww / r62.xz;
                  r60.zw = float2(1,1) + -r60.xy;
                  r60.zw = cmp(r23.xy >= r60.zw);
                  r60.xy = cmp(r60.xy >= r23.xy);
                  r60.xy = (int2)r60.xy | (int2)r60.zw;
                  r23.z = (int)r60.y | (int)r60.x;
                  r23.xy = saturate(r23.xy);
                  r60.xy = r23.xy * r62.xz + r62.yw;
                  r23.x = r59.w * r35.w;
                  r23.y = r59.z * r35.w + r34.w;
                  r23.x = r23.y / r23.x;
                } else {
                  r23.z = -1;
                }
                r23.y = (int)r36.w | (int)r23.z;
                if (r23.y == 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.y, r31.w, l(28), t12.xxxx
                r23.y = samp0[]..swiz;
                  r23.x = max(6.10351563e-05, r23.x);
                  r23.y = (int)r23.y & 0x0000ffff;
                  if (r17.w != 0) {
                    r61.z = (uint)r23.y;
                    r23.z = 0;
                    r31.w = 0;
                    while (true) {
                      r34.w = cmp((int)r31.w >= 8);
                      if (r34.w != 0) break;
                      r62.x = dot(icb[r31.w+0].yx, r19.xw);
                      r62.y = dot(icb[r31.w+0].xy, r9.xy);
                      r61.xy = r62.xy * r33.ww + r60.xy;
                      r34.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r61.xyz, r23.x).x;
                      r23.z = r34.w * 0.125 + r23.z;
                      r31.w = (int)r31.w + 1;
                    }
                  } else {
                    r60.z = (uint)r23.y;
                    r23.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r60.xyz, r23.x).x;
                  }
                  r23.x = r23.z * r23.z;
                  r23.x = r23.x * r23.z;
                } else {
                  r23.x = 1;
                }
                r59.y = r59.y * r23.x;
              }
              r23.x = r59.x * r59.y;
              r23.y = cmp(0 < r23.x);
              if (r23.y != 0) {
                r23.y = r49.x * r4.w;
                r23.y = 0.25 * r23.y;
                r31.w = dot(r55.xyz, r12.xyz);
                r33.w = dot(r12.xyz, r57.xyz);
                r34.w = -r31.w * r31.w + r54.x;
                r29.w = r31.w * r33.w + -r29.w;
                r29.w = saturate(r29.w / r34.w);
                r31.w = r34.w / r54.x;
                r31.w = 10 * r31.w;
                r31.w = min(1, r31.w);
                r29.w = r29.w + -r30.w;
                r29.w = r31.w * r29.w + r30.w;
                r55.xyz = r29.www * r55.xyz + r56.xyz;
                r55.xyz = r28.www ? r55.xyz : r48.yzw;
                r55.xyz = -v5.xyz + r55.xyz;
                r28.w = dot(r55.xyz, r55.xyz);
                r28.w = rsqrt(r28.w);
                r56.xyz = r55.xyz * r28.www;
                r29.w = -abs(r32.w) * r1.x + 1;
                r29.w = r29.w * r29.w;
                r29.w = -r29.w * 0.620000005 + 0.620000005;
                r29.w = r29.w + -abs(r32.w);
                r29.w = r5.w * r29.w + abs(r32.w);
                r30.w = cmp(0 < r32.w);
                r31.w = saturate(dot(r2.xyz, r56.xyz));
                r55.xyz = r55.xyz * r28.www + r7.xyz;
                r28.w = dot(r55.xyz, r55.xyz);
                r28.w = rsqrt(r28.w);
                r55.xyz = r55.xyz * r28.www;
                r28.w = dot(r2.xyz, r55.xyz);
                r32.w = dot(r55.xyz, r7.xyz);
                r33.w = dot(r55.xyz, r4.xyz);
                r34.w = dot(r55.xyz, r5.xyz);
                r33.w = r33.w * r33.w;
                r33.w = r33.w / r1.y;
                r34.w = r34.w * r34.w;
                r34.w = r34.w / r1.w;
                r33.w = r34.w + r33.w;
                r28.w = abs(r28.w) * abs(r28.w) + r33.w;
                r33.w = r31.w * r7.w + r9.z;
                r28.w = r28.w * r28.w;
                r28.w = r28.w * r6.z;
                r28.w = r28.w * r33.w;
                r28.w = rcp(r28.w);
                r23.y = r31.w * r23.y;
                r23.y = r28.w * r23.y;
                r28.w = saturate(1 + -r32.w);
                r31.w = r28.w * r28.w;
                r31.w = r31.w * r31.w;
                r28.w = r31.w * r28.w;
                r28.w = r28.w * r23.y;
                r55.xyz = r30.www ? r29.www : 0;
                r29.w = r30.w ? 0 : r29.w;
                r56.xyz = r30.www ? r28.www : 0;
                r23.y = r30.w ? r23.y : 0;
                r49.x = r48.x;
                r28.w = dot(r49.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r28.w = r28.w * r23.x;
                r30.w = cmp(r18.w < r28.w);
                if (r30.w != 0) {
                  r30.w = r20.z * r20.w;
                  r57.xyz = r30.www * r42.xyz;
                  r21.xyz = r57.xyz * r44.xyz + r21.xyz;
                  r39.xyz = r57.xyz * r47.xyz + r39.xyz;
                  r41.xyz = r57.xyz * r45.xyz + r41.xyz;
                  r40.xyz = r57.xyz * r46.xyz + r40.xyz;
                  r45.xyz = r23.yyy;
                  r18.w = r28.w;
                  r47.xyz = r29.www;
                  r42.xyz = r49.xyz;
                  r43.xyz = r58.xyz;
                  r44.xyz = r55.xyz;
                  r46.xyz = r56.xyz;
                  r20.zw = r59.xy;
                } else {
                  r55.xyw = r49.xyz * r23.xxx;
                  r21.xyz = r55.xyw * r55.zzz + r21.xyz;
                  r39.xyz = r55.xyw * r29.www + r39.xyz;
                  r41.xyz = r55.xyw * r23.yyy + r41.xyz;
                  r40.xyz = r55.xyw * r56.xyz + r40.xyz;
                }
              }
            }
          }
          break;
          case 2 :          r55.xy = r51.zw;
          r55.z = r52.w;
          r55.xyz = -v5.xyz + r55.xyz;
          r23.x = dot(r55.xyz, r55.xyz);
          r23.x = rsqrt(r23.x);
          r56.xyz = r55.xyz * r23.xxx;
          r23.y = dot(r2.xyz, r56.xyz);
          r28.w = cmp(0 < abs(r23.y));
          if (r28.w != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r57.xyzw, r27.w, l(112), t12.yzwx
          r57.x = samp0[]..swiz;
          r57.y = samp0[]..swiz;
          r57.z = samp0[]..swiz;
          r57.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r58.xyzw, r27.w, l(128), t12.zxyw
          r58.x = samp0[]..swiz;
          r58.y = samp0[]..swiz;
          r58.z = samp0[]..swiz;
          r58.w = samp0[]..swiz;
            r60.xyz = r57.xyz;
            r60.w = r58.y;
            r28.w = dot(r60.xyzw, r22.xyzw);
            r29.w = cmp(r28.w < 1);
            if (r29.w != 0) {
              r59.xzw = float3(1,1,1);
              r61.x = 0;
            } else {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r62.xyzw, r27.w, l(172), t12.yzwx
            r62.x = samp0[]..swiz;
            r62.y = samp0[]..swiz;
            r62.z = samp0[]..swiz;
            r62.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r63.xyzw, r27.w, l(188), t12.wxyz
            r63.x = samp0[]..swiz;
            r63.y = samp0[]..swiz;
            r63.z = samp0[]..swiz;
            r63.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r64.xyzw, r27.w, l(204), t12.xyzw
            r64.x = samp0[]..swiz;
            r64.y = samp0[]..swiz;
            r64.z = samp0[]..swiz;
            r64.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r29.w, r27.w, l(236), t12.xxxx
            r29.w = samp0[]..swiz;
              r65.xyz = -v5.xyz + r48.yzw;
              r30.w = r51.x * r51.x;
              r31.w = dot(r65.xyz, r65.xyz);
              r30.w = r30.w / r31.w;
              r30.w = min(1, r30.w);
              r50.xy = saturate(r28.ww * r50.xz + r50.yw);
              r50.zw = r50.xy * r50.xy;
              r50.xy = r50.xy * float2(-2,-2) + float2(3,3);
              r50.xy = r50.zw * r50.xy;
              r30.w = r50.x * r30.w;
              r30.w = r30.w * r50.y;
              r52.w = r53.x;
              r50.x = dot(r52.xyzw, r22.xyzw);
              r65.xyz = r53.yzw;
              r65.w = r54.w;
              r50.y = dot(r65.xyzw, r22.xyzw);
              r24.xy = r50.xy / r28.ww;
              r28.w = cmp(r62.w < 0.00048828125);
              if (r28.w != 0) {
                r63.y = r64.x;
                r50.xy = saturate(abs(r24.xy) * r63.zw + r63.xy);
                r50.zw = r50.xy * r50.xy;
                r50.xy = r50.xy * float2(-2,-2) + float2(3,3);
                r50.xy = r50.zw * r50.xy;
                r28.w = r50.x * r50.y;
              } else {
                r62.w = r63.y;
                r50.xyzw = saturate(r62.xyzw * abs(r24.yyxx));
                r50.xyzw = log2(r50.xyzw);
                r50.xyzw = r63.xxxx * r50.xyzw;
                r50.xyzw = exp2(r50.xyzw);
                r50.xy = r50.xy + r50.zw;
                r50.xy = log2(r50.xy);
                r50.xy = r64.xx * r50.xy;
                r50.xy = exp2(r50.xy);
                r31.w = r63.z * r50.x;
                r32.w = r63.w * r50.y + -1;
                r31.w = r63.w * r50.y + -r31.w;
                r31.w = saturate(r32.w / r31.w);
                r32.w = r31.w * r31.w;
                r31.w = r31.w * -2 + 3;
                r28.w = r32.w * r31.w;
              }
              r61.x = r30.w * r28.w;
              r28.w = r29.w ? 0.000000 : 0;
              if (r28.w != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r50.xyz, r27.w, l(220), t12.xyzx
              r50.x = samp0[]..swiz;
              r50.y = samp0[]..swiz;
              r50.z = samp0[]..swiz;
                r29.w = dot(r64.yzw, r24.xyz);
                r24.x = dot(r50.xyz, r24.xyz);
                r50.x = frac(r29.w);
                r50.y = frac(r24.x);
                r24.x = (int)r28.w + -1;
                r50.z = (uint)r24.x;
                r59.xzw = gCookieArray.SampleLevel(samplerLinear_s, r50.xyz, 0).xyz;
              } else {
                r59.xzw = float3(1,1,1);
              }
            }
            r48.yz = r49.yz;
            r48.xyz = r48.xyz * r59.xzw;
            r24.x = cmp(0 < r61.x);
            if (r24.x != 0) {
              if (3 == 0) r24.x = 0; else if (3+27 < 32) {               r24.x = (uint)r49.w << (32-(3 + 27)); r24.x = (uint)r24.x >> (32-3);              } else r24.x = (uint)r49.w >> 27;
              if (4 == 0) r24.y = 0; else if (4+20 < 32) {               r24.y = (uint)r49.w << (32-(4 + 20)); r24.y = (uint)r24.y >> (32-4);              } else r24.y = (uint)r49.w >> 20;
              r24.x = cmp((int)r24.x != 1);
              if (r24.x != 0) {
                r24.x = abs(r23.y) * -0.200000003 + 0.400000006;
                r28.w = cmp(r23.y < 0);
                r24.x = r28.w ? -r24.x : r24.x;
                r25.xyz = r2.xyz * r24.xxx + v5.xyz;
                r57.xyz = r54.xyz;
                r24.x = dot(r57.xyzw, r25.xyzw);
                r28.w = dot(r60.xyzw, r25.xyzw);
                r29.w = cmp(r28.w >= r24.x);
                if (r29.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r58.y, r27.w, l(144), t12.xxxx
                r58.y = samp0[]..swiz;
                  r52.w = r53.x;
                  r50.x = dot(r52.xyzw, r25.xyzw);
                  r54.xyz = r53.yzw;
                  r50.y = dot(r54.xyzw, r25.xyzw);
                  r25.xy = r50.xy / r28.ww;
                  r25.xy = saturate(r25.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                  r25.xy = r25.xy * r58.zw + r58.xy;
                  r24.x = r24.x / r28.w;
                  r24.x = max(6.10351563e-05, r24.x);
                  r27.w = (int)r49.w & 0x0000ffff;
                  if (r17.w != 0) {
                    r50.z = (uint)r27.w;
                    r28.w = 0;
                    r29.w = 0;
                    while (true) {
                      r30.w = cmp((int)r29.w >= 8);
                      if (r30.w != 0) break;
                      r52.x = dot(icb[r29.w+0].xy, r10.xy);
                      r52.y = dot(icb[r29.w+0].yx, r10.xz);
                      r50.xy = r52.xy * r51.yy + r25.xy;
                      r30.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r50.xyz, r24.x).x;
                      r28.w = r30.w * 0.125 + r28.w;
                      r29.w = (int)r29.w + 1;
                    }
                  } else {
                    r25.z = (uint)r27.w;
                    r28.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r24.x).x;
                  }
                  r24.x = r28.w * r28.w;
                  r61.y = r24.x * r28.w;
                } else {
                  r61.y = 1;
                }
              } else {
                r61.y = 1;
              }
              if (r24.y != 0) {
                r24.x = (int)r24.y + numLights;
                r24.x = (int)r24.x + -1;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.y, r24.x, l(52), t12.xxxx
              r24.y = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r50.xyzw, r24.x, l(68), t12.xyzw
              r50.x = samp0[]..swiz;
              r50.y = samp0[]..swiz;
              r50.z = samp0[]..swiz;
              r50.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r51.xyzw, r24.x, l(84), t12.xyzw
              r51.x = samp0[]..swiz;
              r51.y = samp0[]..swiz;
              r51.z = samp0[]..swiz;
              r51.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r52.xyzw, r24.x, l(100), t12.xyzw
              r52.x = samp0[]..swiz;
              r52.y = samp0[]..swiz;
              r52.z = samp0[]..swiz;
              r52.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r53.xyzw, r24.x, l(116), t12.xyzw
              r53.x = samp0[]..swiz;
              r53.y = samp0[]..swiz;
              r53.z = samp0[]..swiz;
              r53.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r54.xyzw, r24.x, l(132), t12.xyzw
              r54.x = samp0[]..swiz;
              r54.y = samp0[]..swiz;
              r54.z = samp0[]..swiz;
              r54.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r57.xyzw, r24.x, l(148), t12.xyzw
              r57.x = samp0[]..swiz;
              r57.y = samp0[]..swiz;
              r57.z = samp0[]..swiz;
              r57.w = samp0[]..swiz;
                r25.x = abs(r23.y) * -0.200000003 + 0.400000006;
                r25.y = cmp(r23.y < 0);
                r25.x = r25.y ? -r25.x : r25.x;
                r26.xyz = r2.xyz * r25.xxx + v5.xyz;
                r25.x = dot(r50.xyzw, r26.xyzw);
                r25.y = dot(r51.xyzw, r26.xyzw);
                r25.z = dot(r52.xyzw, r26.xyzw);
                r26.x = dot(r53.xyzw, r26.xyzw);
                r26.y = cmp(r26.x < r25.z);
                r25.xy = r25.xy / r26.xx;
                r25.xy = r25.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r25.xy = r25.xy + r57.zw;
                r25.xy = r25.xy * r57.xy;
                r49.yz = r24.yy / r54.xz;
                r50.xy = float2(1,1) + -r49.yz;
                r50.xy = cmp(r25.xy >= r50.xy);
                r49.yz = cmp(r49.yz >= r25.xy);
                r49.yz = (int2)r49.yz | (int2)r50.xy;
                r26.z = (int)r49.z | (int)r49.y;
                r26.y = (int)r26.y | (int)r26.z;
                if (r26.y == 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r26.y, r24.x, l(28), t12.xxxx
                r26.y = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r49.yz, r24.x, l(164), t12.xxyx
                r49.y = samp0[]..swiz;
                r49.z = samp0[]..swiz;
                  r25.xy = saturate(r25.xy);
                  r50.xy = r25.xy * r54.xz + r54.yw;
                  r24.x = r49.z * r26.x;
                  r25.x = r49.y * r26.x + r25.z;
                  r24.x = r25.x / r24.x;
                  r24.x = max(6.10351563e-05, r24.x);
                  r25.x = r26.y ? 0.000000 : 0;
                  if (r17.w != 0) {
                    r26.z = (uint)r25.x;
                    r25.yz = float2(0,0);
                    while (true) {
                      r27.w = cmp((int)r25.z >= 8);
                      if (r27.w != 0) break;
                      r51.x = dot(icb[r25.z+0].xy, r27.xy);
                      r51.y = dot(icb[r25.z+0].yx, r27.xz);
                      r26.xy = r51.xy * r24.yy + r50.xy;
                      r26.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r24.x).x;
                      r25.y = r26.x * 0.125 + r25.y;
                      r25.z = (int)r25.z + 1;
                    }
                  } else {
                    r50.z = (uint)r25.x;
                    r25.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r50.xyz, r24.x).x;
                  }
                  r24.x = r25.y * r25.y;
                  r24.x = r24.x * r25.y;
                } else {
                  r24.x = 1;
                }
                r61.y = r61.y * r24.x;
              }
              r24.x = r61.x * r61.y;
              r24.y = cmp(0 < r24.x);
              if (r24.y != 0) {
                r24.y = r49.x * r4.w;
                r24.y = 0.25 * r24.y;
                r25.x = -abs(r23.y) * r1.x + 1;
                r25.x = r25.x * r25.x;
                r25.x = -r25.x * 0.620000005 + 0.620000005;
                r25.x = r25.x + -abs(r23.y);
                r25.x = r5.w * r25.x + abs(r23.y);
                r25.z = cmp(0 < r23.y);
                r23.y = saturate(r23.y);
                r26.xyz = r55.xyz * r23.xxx + r7.xyz;
                r23.x = dot(r26.xyz, r26.xyz);
                r23.x = rsqrt(r23.x);
                r26.xyz = r26.xyz * r23.xxx;
                r23.x = dot(r2.xyz, r26.xyz);
                r27.w = dot(r26.xyz, r7.xyz);
                r29.w = dot(r26.xyz, r4.xyz);
                r26.x = dot(r26.xyz, r5.xyz);
                r26.y = r29.w * r29.w;
                r26.x = r26.x * r26.x;
                r26.xy = r26.xy / r1.wy;
                r26.x = r26.y + r26.x;
                r23.x = abs(r23.x) * abs(r23.x) + r26.x;
                r26.x = r23.y * r7.w + r9.z;
                r23.x = r23.x * r23.x;
                r23.x = r23.x * r6.z;
                r23.x = r23.x * r26.x;
                r23.x = rcp(r23.x);
                r23.y = r23.y * r24.y;
                r23.x = r23.x * r23.y;
                r23.y = saturate(1 + -r27.w);
                r24.y = r23.y * r23.y;
                r24.y = r24.y * r24.y;
                r23.y = r24.y * r23.y;
                r23.y = r23.x * r23.y;
                r26.xyz = r25.zzz ? r25.xxx : 0;
                r24.y = r25.z ? 0 : r25.x;
                r49.xyz = r25.zzz ? r23.yyy : 0;
                r23.x = r25.z ? r23.x : 0;
                r23.y = dot(r48.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r23.y = r24.x * r23.y;
                r25.x = cmp(r18.w < r23.y);
                if (r25.x != 0) {
                  r25.x = r20.z * r20.w;
                  r50.xyz = r25.xxx * r42.xyz;
                  r21.xyz = r50.xyz * r44.xyz + r21.xyz;
                  r39.xyz = r50.xyz * r47.xyz + r39.xyz;
                  r41.xyz = r50.xyz * r45.xyz + r41.xyz;
                  r40.xyz = r50.xyz * r46.xyz + r40.xyz;
                  r45.xyz = r23.xxx;
                  r18.w = r23.y;
                  r47.xyz = r24.yyy;
                  r42.xyz = r48.xyz;
                  r43.xyz = r56.xyz;
                  r44.xyz = r26.xyz;
                  r46.xyz = r49.xyz;
                  r20.zw = r61.xy;
                } else {
                  r48.xyz = r24.xxx * r48.xyz;
                  r21.xyz = r48.xyz * r26.zzz + r21.xyz;
                  r39.xyz = r48.xyz * r24.yyy + r39.xyz;
                  r41.xyz = r48.xyz * r23.xxx + r41.xyz;
                  r40.xyz = r48.xyz * r49.xyz + r40.xyz;
                }
              }
            }
          }
          break;
          default :
          break;
        }
      }
    }
    r28.xyz = r21.xyz;
    r29.xyz = r39.xyz;
    r30.xyz = r40.xyz;
    r31.xyz = r41.xyz;
    r32.xyz = r42.xyz;
    r33.xyz = r43.xyz;
    r34.xyz = r44.xyz;
    r36.xyz = r45.xyz;
    r37.xyz = r46.xyz;
    r38.zw = r20.zw;
    r38.y = r18.w;
    r35.xyz = r47.xyz;
    r6.w = (int)r6.w + 32;
  }
  r4.z = 0;
  r4.xy = float2(1,-1) * r33.yx;
  r1.xyw = r33.zxy * r4.yzx;
  r1.xyw = r33.yzx * r4.zxy + -r1.xyw;
  r5.xyz = viewProjectionMatrix._m10_m11_m13 * r14.yyy;
  r5.xyz = r14.xxx * viewProjectionMatrix._m00_m01_m03 + r5.xyz;
  r5.xyz = r14.zzz * viewProjectionMatrix._m20_m21_m23 + r5.xyz;
  r5.xyz = r5.xyz + r8.yzw;
  r9.z = rcp(r5.z);
  r5.xy = r9.zz * r5.xy;
  r9.xy = r5.xy * float2(0.5,-0.5) + float2(0.5,0.5);
  r5.xyw = r33.xyz * float3(2.4000001,2.4000001,2.4000001) + r14.xyz;
  r3.x = dot(v0.xy, float2(0.0671105608,0.00583714992));
  r3.x = frac(r3.x);
  r3.x = 52.9829178 * r3.x;
  r3.x = frac(r3.x);
  r4.w = 3.14159989 * r3.x;
  r4.w = gameTick.w * 0.5 + r4.w;
  sincos(r4.w, r8.x, r10.x);
  r10.yzw = r8.xxx * r1.xyw;
  r10.xyz = r10.xxx * r4.xyz + r10.yzw;
  r10.xyz = r10.xyz * float3(0.119999997,0.119999997,0.119999997) + r5.xyw;
  r11.xyz = viewProjectionMatrix._m10_m11_m13 * r10.yyy;
  r10.xyw = r10.xxx * viewProjectionMatrix._m00_m01_m03 + r11.xyz;
  r10.xyz = r10.zzz * viewProjectionMatrix._m20_m21_m23 + r10.xyw;
  r10.xyz = r10.xyz + r8.yzw;
  r6.zw = float2(0.5,-0.5) * r10.xy;
  r10.z = rcp(r10.z);
  r10.xy = r6.zw * r10.zz + float2(0.5,0.5);
  r11.xyz = -r9.xyz;
  r10.xyz = r11.xyz + r10.xyz;
  r4.w = 3.14159989 + r4.w;
  sincos(r4.w, r8.x, r13.x);
  r1.xyw = r8.xxx * r1.xyw;
  r1.xyw = r13.xxx * r4.xyz + r1.xyw;
  r1.xyw = r1.xyw * float3(0.119999997,0.119999997,0.119999997) + r5.xyw;
  r4.xyz = viewProjectionMatrix._m10_m11_m13 * r1.yyy;
  r4.xyz = r1.xxx * viewProjectionMatrix._m00_m01_m03 + r4.xyz;
  r1.xyw = r1.www * viewProjectionMatrix._m20_m21_m23 + r4.xyz;
  r1.xyw = r1.xyw + r8.yzw;
  r1.xy = float2(0.5,-0.5) * r1.xy;
  r4.z = rcp(r1.w);
  r4.xy = r1.xy * r4.zz + r11.xy;
  r11.w = 0.5;
  r1.xyw = r4.xyz + r11.wwz;
  r4.x = dot(renderTargetSize.zw, renderTargetSize.zw);
  r4.y = dot(r10.xy, r10.xy);
  r4.xy = sqrt(r4.xy);
  r4.y = rcp(r4.y);
  r4.x = r4.x * r4.y;
  r4.yz = r3.xx * float2(0.5,0.5) + float2(0.333333343,1);
  r4.yz = float2(0.117647059,0.117647059) * r4.yz;
  r4.yz = r4.yz * r4.yz;
  x1[0].x = r4.y;
  r5.xyw = r10.xyz * r4.yyy + r9.xyz;
  r6.zw = cmp(r4.xx < r4.yz);
  r5.xy = renderTargetSize.xy * r5.xy;
  r8.xy = (int2)r5.xy;
  r8.zw = float2(0,0);
  r4.w = floatZSampler.Load(r8.xyz).x;
  r5.x = cmp(r4.w >= 0.984375);
  r5.y = 1.01587307 * r4.w;
  r4.w = r4.w * 64 + -63;
  r4.w = r5.x ? r4.w : r5.y;
  r4.w = max(9.99999994e-09, r4.w);
  r4.w = rcp(r4.w);
  x2[0].x = r4.w;
  r5.x = 0.0419999994 + r4.w;
  r5.x = r5.w * r5.x;
  r5.x = cmp(1 < r5.x);
  r5.x = r5.x ? 1.000000 : 0;
  r5.x = r6.z ? r5.x : 1;
  x0[0].x = r5.x;
  x1[1].x = r4.z;
  r8.xyz = r1.xyw * r4.zzz + r9.xyz;
  r5.yw = renderTargetSize.xy * r8.xy;
  r11.xy = (int2)r5.yw;
  r11.zw = float2(0,0);
  r5.y = floatZSampler.Load(r11.xyz).x;
  r5.w = cmp(r5.y >= 0.984375);
  r6.z = 1.01587307 * r5.y;
  r5.y = r5.y * 64 + -63;
  r5.y = r5.w ? r5.y : r6.z;
  r5.y = max(9.99999994e-09, r5.y);
  r5.y = rcp(r5.y);
  x2[1].x = r5.y;
  r5.w = 0.0419999994 + r5.y;
  r5.w = r8.z * r5.w;
  r5.w = cmp(1 < r5.w);
  r5.w = r5.w ? 1.000000 : 0;
  r5.w = r6.w ? r5.w : 1;
  x0[1].x = r5.w;
  r6.z = r5.x + r5.w;
  r6.z = cmp(r6.z != 0.000000);
  if (r6.z != 0) {
    r6.zw = r3.xx * float2(0.5,0.5) + float2(1.33333337,2);
    r6.zw = float2(0.117647059,0.117647059) * r6.zw;
    r6.zw = r6.zw * r6.zw + -r4.yz;
    r4.y = r5.x * r6.z + r4.y;
    x1[0].x = r4.y;
    r8.xyz = r10.xyz * r4.yyy + r9.xyz;
    r4.y = cmp(r4.x < r4.y);
    r8.xy = renderTargetSize.xy * r8.xy;
    r11.xy = (int2)r8.xy;
    r11.zw = float2(0,0);
    r6.z = floatZSampler.Load(r11.xyz).x;
    r7.w = cmp(r6.z >= 0.984375);
    r8.x = 1.01587307 * r6.z;
    r6.z = r6.z * 64 + -63;
    r6.z = r7.w ? r6.z : r8.x;
    r6.z = max(9.99999994e-09, r6.z);
    r6.z = rcp(r6.z);
    r4.w = r4.y ? r6.z : r4.w;
    x2[0].x = r4.w;
    r4.w = 0.0419999994 + r6.z;
    r4.w = r8.z * r4.w;
    r4.w = cmp(1 < r4.w);
    r4.w = r4.w ? 1.000000 : 0;
    r4.w = r5.x * r4.w;
    r4.y = r4.y ? r4.w : r5.x;
    x0[0].x = r4.y;
    r4.z = r5.w * r6.w + r4.z;
    x1[1].x = r4.z;
    r8.xyz = r1.xyw * r4.zzz + r9.xyz;
    r4.z = cmp(r4.x < r4.z);
    r6.zw = renderTargetSize.xy * r8.xy;
    r11.xy = (int2)r6.zw;
    r11.zw = float2(0,0);
    r4.w = floatZSampler.Load(r11.xyz).x;
    r5.x = cmp(r4.w >= 0.984375);
    r6.z = 1.01587307 * r4.w;
    r4.w = r4.w * 64 + -63;
    r4.w = r5.x ? r4.w : r6.z;
    r4.w = max(9.99999994e-09, r4.w);
    r4.w = rcp(r4.w);
    r5.x = r4.z ? r4.w : r5.y;
    x2[1].x = r5.x;
    r4.w = 0.0419999994 + r4.w;
    r4.w = r8.z * r4.w;
    r4.w = cmp(1 < r4.w);
    r4.w = r4.w ? 1.000000 : 0;
    r4.w = r5.w * r4.w;
    r4.z = r4.z ? r4.w : r5.w;
    x0[1].x = r4.z;
    r4.y = r4.y + r4.z;
    r4.y = cmp(r4.y == 0.000000);
  } else {
    r4.y = -1;
  }
  if (r4.y == 0) {
    r4.yz = r3.xx * float2(0.5,0.5) + float2(2.33333325,3);
    r4.yz = float2(0.117647059,0.117647059) * r4.yz;
    r4.w = x1[0].x;
    r5.x = x0[0].x;
    r4.y = r4.y * r4.y + -r4.w;
    r4.y = r5.x * r4.y + r4.w;
    x1[0].x = r4.y;
    r8.xyz = r10.xyz * r4.yyy + r9.xyz;
    r4.y = cmp(r4.x < r4.y);
    r5.yw = renderTargetSize.xy * r8.xy;
    r11.xy = (int2)r5.yw;
    r11.zw = float2(0,0);
    r4.w = floatZSampler.Load(r11.xyz).x;
    r5.y = cmp(r4.w >= 0.984375);
    r5.w = 1.01587307 * r4.w;
    r4.w = r4.w * 64 + -63;
    r4.w = r5.y ? r4.w : r5.w;
    r4.w = max(9.99999994e-09, r4.w);
    r4.w = rcp(r4.w);
    r5.y = x2[0].x;
    r5.y = r4.y ? r4.w : r5.y;
    x2[0].x = r5.y;
    r4.w = 0.0419999994 + r4.w;
    r4.w = r8.z * r4.w;
    r4.w = cmp(1 < r4.w);
    r4.w = r4.w ? 1.000000 : 0;
    r4.w = r5.x * r4.w;
    r4.y = r4.y ? r4.w : r5.x;
    x0[0].x = r4.y;
    r4.w = x1[1].x;
    r5.x = x0[1].x;
    r4.z = r4.z * r4.z + -r4.w;
    r4.z = r5.x * r4.z + r4.w;
    x1[1].x = r4.z;
    r8.xyz = r1.xyw * r4.zzz + r9.xyz;
    r4.z = cmp(r4.x < r4.z);
    r5.yw = renderTargetSize.xy * r8.xy;
    r11.xy = (int2)r5.yw;
    r11.zw = float2(0,0);
    r4.w = floatZSampler.Load(r11.xyz).x;
    r5.y = cmp(r4.w >= 0.984375);
    r5.w = 1.01587307 * r4.w;
    r4.w = r4.w * 64 + -63;
    r4.w = r5.y ? r4.w : r5.w;
    r4.w = max(9.99999994e-09, r4.w);
    r4.w = rcp(r4.w);
    r5.y = x2[1].x;
    r5.y = r4.z ? r4.w : r5.y;
    x2[1].x = r5.y;
    r4.w = 0.0419999994 + r4.w;
    r4.w = r8.z * r4.w;
    r4.w = cmp(1 < r4.w);
    r4.w = r4.w ? 1.000000 : 0;
    r4.w = r5.x * r4.w;
    r4.z = r4.z ? r4.w : r5.x;
    x0[1].x = r4.z;
    r4.y = r4.y + r4.z;
    r4.y = cmp(r4.y == 0.000000);
  } else {
    r4.y = -1;
  }
  if (r4.y == 0) {
    r4.yz = r3.xx * float2(0.5,0.5) + float2(3.33333325,4);
    r4.yz = float2(0.117647059,0.117647059) * r4.yz;
    r4.w = x1[0].x;
    r5.x = x0[0].x;
    r4.y = r4.y * r4.y + -r4.w;
    r4.y = r5.x * r4.y + r4.w;
    x1[0].x = r4.y;
    r8.xyz = r10.xyz * r4.yyy + r9.xyz;
    r4.y = cmp(r4.x < r4.y);
    r5.yw = renderTargetSize.xy * r8.xy;
    r11.xy = (int2)r5.yw;
    r11.zw = float2(0,0);
    r4.w = floatZSampler.Load(r11.xyz).x;
    r5.y = cmp(r4.w >= 0.984375);
    r5.w = 1.01587307 * r4.w;
    r4.w = r4.w * 64 + -63;
    r4.w = r5.y ? r4.w : r5.w;
    r4.w = max(9.99999994e-09, r4.w);
    r4.w = rcp(r4.w);
    r5.y = x2[0].x;
    r5.y = r4.y ? r4.w : r5.y;
    x2[0].x = r5.y;
    r4.w = 0.0419999994 + r4.w;
    r4.w = r8.z * r4.w;
    r4.w = cmp(1 < r4.w);
    r4.w = r4.w ? 1.000000 : 0;
    r4.w = r5.x * r4.w;
    r4.y = r4.y ? r4.w : r5.x;
    x0[0].x = r4.y;
    r4.w = x1[1].x;
    r5.x = x0[1].x;
    r4.z = r4.z * r4.z + -r4.w;
    r4.z = r5.x * r4.z + r4.w;
    x1[1].x = r4.z;
    r8.xyz = r1.xyw * r4.zzz + r9.xyz;
    r4.z = cmp(r4.x < r4.z);
    r5.yw = renderTargetSize.xy * r8.xy;
    r11.xy = (int2)r5.yw;
    r11.zw = float2(0,0);
    r4.w = floatZSampler.Load(r11.xyz).x;
    r5.y = cmp(r4.w >= 0.984375);
    r5.w = 1.01587307 * r4.w;
    r4.w = r4.w * 64 + -63;
    r4.w = r5.y ? r4.w : r5.w;
    r4.w = max(9.99999994e-09, r4.w);
    r4.w = rcp(r4.w);
    r5.y = x2[1].x;
    r5.y = r4.z ? r4.w : r5.y;
    x2[1].x = r5.y;
    r4.w = 0.0419999994 + r4.w;
    r4.w = r8.z * r4.w;
    r4.w = cmp(1 < r4.w);
    r4.w = r4.w ? 1.000000 : 0;
    r4.w = r5.x * r4.w;
    r4.z = r4.z ? r4.w : r5.x;
    x0[1].x = r4.z;
    r4.y = r4.y + r4.z;
    r4.y = cmp(r4.y == 0.000000);
  } else {
    r4.y = -1;
  }
  if (r4.y == 0) {
    r4.yz = r3.xx * float2(0.5,0.5) + float2(4.33333349,5);
    r4.yz = float2(0.117647059,0.117647059) * r4.yz;
    r4.w = x1[0].x;
    r5.x = x0[0].x;
    r4.y = r4.y * r4.y + -r4.w;
    r4.y = r5.x * r4.y + r4.w;
    x1[0].x = r4.y;
    r8.xyz = r10.xyz * r4.yyy + r9.xyz;
    r4.y = cmp(r4.x < r4.y);
    r5.yw = renderTargetSize.xy * r8.xy;
    r11.xy = (int2)r5.yw;
    r11.zw = float2(0,0);
    r4.w = floatZSampler.Load(r11.xyz).x;
    r5.y = cmp(r4.w >= 0.984375);
    r5.w = 1.01587307 * r4.w;
    r4.w = r4.w * 64 + -63;
    r4.w = r5.y ? r4.w : r5.w;
    r4.w = max(9.99999994e-09, r4.w);
    r4.w = rcp(r4.w);
    r5.y = x2[0].x;
    r5.y = r4.y ? r4.w : r5.y;
    x2[0].x = r5.y;
    r4.w = 0.0419999994 + r4.w;
    r4.w = r8.z * r4.w;
    r4.w = cmp(1 < r4.w);
    r4.w = r4.w ? 1.000000 : 0;
    r4.w = r5.x * r4.w;
    r4.y = r4.y ? r4.w : r5.x;
    x0[0].x = r4.y;
    r4.w = x1[1].x;
    r5.x = x0[1].x;
    r4.z = r4.z * r4.z + -r4.w;
    r4.z = r5.x * r4.z + r4.w;
    x1[1].x = r4.z;
    r8.xyz = r1.xyw * r4.zzz + r9.xyz;
    r4.z = cmp(r4.x < r4.z);
    r5.yw = renderTargetSize.xy * r8.xy;
    r11.xy = (int2)r5.yw;
    r11.zw = float2(0,0);
    r4.w = floatZSampler.Load(r11.xyz).x;
    r5.y = cmp(r4.w >= 0.984375);
    r5.w = 1.01587307 * r4.w;
    r4.w = r4.w * 64 + -63;
    r4.w = r5.y ? r4.w : r5.w;
    r4.w = max(9.99999994e-09, r4.w);
    r4.w = rcp(r4.w);
    r5.y = x2[1].x;
    r5.y = r4.z ? r4.w : r5.y;
    x2[1].x = r5.y;
    r4.w = 0.0419999994 + r4.w;
    r4.w = r8.z * r4.w;
    r4.w = cmp(1 < r4.w);
    r4.w = r4.w ? 1.000000 : 0;
    r4.w = r5.x * r4.w;
    r4.z = r4.z ? r4.w : r5.x;
    x0[1].x = r4.z;
    r4.y = r4.y + r4.z;
    r4.y = cmp(r4.y == 0.000000);
  } else {
    r4.y = -1;
  }
  if (r4.y == 0) {
    r4.yz = r3.xx * float2(0.5,0.5) + float2(5.33333349,6);
    r4.yz = float2(0.117647059,0.117647059) * r4.yz;
    r4.w = x1[0].x;
    r5.x = x0[0].x;
    r4.y = r4.y * r4.y + -r4.w;
    r4.y = r5.x * r4.y + r4.w;
    x1[0].x = r4.y;
    r8.xyz = r10.xyz * r4.yyy + r9.xyz;
    r4.y = cmp(r4.x < r4.y);
    r5.yw = renderTargetSize.xy * r8.xy;
    r11.xy = (int2)r5.yw;
    r11.zw = float2(0,0);
    r4.w = floatZSampler.Load(r11.xyz).x;
    r5.y = cmp(r4.w >= 0.984375);
    r5.w = 1.01587307 * r4.w;
    r4.w = r4.w * 64 + -63;
    r4.w = r5.y ? r4.w : r5.w;
    r4.w = max(9.99999994e-09, r4.w);
    r4.w = rcp(r4.w);
    r5.y = x2[0].x;
    r5.y = r4.y ? r4.w : r5.y;
    x2[0].x = r5.y;
    r4.w = 0.0419999994 + r4.w;
    r4.w = r8.z * r4.w;
    r4.w = cmp(1 < r4.w);
    r4.w = r4.w ? 1.000000 : 0;
    r4.w = r5.x * r4.w;
    r4.y = r4.y ? r4.w : r5.x;
    x0[0].x = r4.y;
    r4.w = x1[1].x;
    r5.x = x0[1].x;
    r4.z = r4.z * r4.z + -r4.w;
    r4.z = r5.x * r4.z + r4.w;
    x1[1].x = r4.z;
    r8.xyz = r1.xyw * r4.zzz + r9.xyz;
    r4.z = cmp(r4.x < r4.z);
    r5.yw = renderTargetSize.xy * r8.xy;
    r11.xy = (int2)r5.yw;
    r11.zw = float2(0,0);
    r4.w = floatZSampler.Load(r11.xyz).x;
    r5.y = cmp(r4.w >= 0.984375);
    r5.w = 1.01587307 * r4.w;
    r4.w = r4.w * 64 + -63;
    r4.w = r5.y ? r4.w : r5.w;
    r4.w = max(9.99999994e-09, r4.w);
    r4.w = rcp(r4.w);
    r5.y = x2[1].x;
    r5.y = r4.z ? r4.w : r5.y;
    x2[1].x = r5.y;
    r4.w = 0.0419999994 + r4.w;
    r4.w = r8.z * r4.w;
    r4.w = cmp(1 < r4.w);
    r4.w = r4.w ? 1.000000 : 0;
    r4.w = r5.x * r4.w;
    r4.z = r4.z ? r4.w : r5.x;
    x0[1].x = r4.z;
    r4.y = r4.y + r4.z;
    r4.y = cmp(r4.y == 0.000000);
  } else {
    r4.y = -1;
  }
  if (r4.y == 0) {
    r4.yz = r3.xx * float2(0.5,0.5) + float2(6.33333349,7);
    r4.yz = float2(0.117647059,0.117647059) * r4.yz;
    r4.w = x1[0].x;
    r5.x = x0[0].x;
    r4.y = r4.y * r4.y + -r4.w;
    r4.y = r5.x * r4.y + r4.w;
    x1[0].x = r4.y;
    r8.xyz = r10.xyz * r4.yyy + r9.xyz;
    r4.y = cmp(r4.x < r4.y);
    r5.yw = renderTargetSize.xy * r8.xy;
    r11.xy = (int2)r5.yw;
    r11.zw = float2(0,0);
    r4.w = floatZSampler.Load(r11.xyz).x;
    r5.y = cmp(r4.w >= 0.984375);
    r5.w = 1.01587307 * r4.w;
    r4.w = r4.w * 64 + -63;
    r4.w = r5.y ? r4.w : r5.w;
    r4.w = max(9.99999994e-09, r4.w);
    r4.w = rcp(r4.w);
    r5.y = x2[0].x;
    r5.y = r4.y ? r4.w : r5.y;
    x2[0].x = r5.y;
    r4.w = 0.0419999994 + r4.w;
    r4.w = r8.z * r4.w;
    r4.w = cmp(1 < r4.w);
    r4.w = r4.w ? 1.000000 : 0;
    r4.w = r5.x * r4.w;
    r4.y = r4.y ? r4.w : r5.x;
    x0[0].x = r4.y;
    r4.w = x1[1].x;
    r5.x = x0[1].x;
    r4.z = r4.z * r4.z + -r4.w;
    r4.z = r5.x * r4.z + r4.w;
    x1[1].x = r4.z;
    r8.xyz = r1.xyw * r4.zzz + r9.xyz;
    r4.z = cmp(r4.x < r4.z);
    r5.yw = renderTargetSize.xy * r8.xy;
    r11.xy = (int2)r5.yw;
    r11.zw = float2(0,0);
    r4.w = floatZSampler.Load(r11.xyz).x;
    r5.y = cmp(r4.w >= 0.984375);
    r5.w = 1.01587307 * r4.w;
    r4.w = r4.w * 64 + -63;
    r4.w = r5.y ? r4.w : r5.w;
    r4.w = max(9.99999994e-09, r4.w);
    r4.w = rcp(r4.w);
    r5.y = x2[1].x;
    r5.y = r4.z ? r4.w : r5.y;
    x2[1].x = r5.y;
    r4.w = 0.0419999994 + r4.w;
    r4.w = r8.z * r4.w;
    r4.w = cmp(1 < r4.w);
    r4.w = r4.w ? 1.000000 : 0;
    r4.w = r5.x * r4.w;
    r4.z = r4.z ? r4.w : r5.x;
    x0[1].x = r4.z;
    r4.y = r4.y + r4.z;
    r4.y = cmp(r4.y == 0.000000);
  } else {
    r4.y = -1;
  }
  if (r4.y == 0) {
    r4.yz = r3.xx * float2(0.5,0.5) + float2(7.33333349,8);
    r4.yz = float2(0.117647059,0.117647059) * r4.yz;
    r3.x = x1[0].x;
    r4.w = x0[0].x;
    r4.y = r4.y * r4.y + -r3.x;
    r3.x = r4.w * r4.y + r3.x;
    r5.xyw = r10.xyz * r3.xxx + r9.xyz;
    r3.x = cmp(r4.x < r3.x);
    r5.xy = renderTargetSize.xy * r5.xy;
    r8.xy = (int2)r5.xy;
    r8.zw = float2(0,0);
    r4.y = floatZSampler.Load(r8.xyz).x;
    r5.x = cmp(r4.y >= 0.984375);
    r5.y = 1.01587307 * r4.y;
    r4.y = r4.y * 64 + -63;
    r4.y = r5.x ? r4.y : r5.y;
    r4.y = max(9.99999994e-09, r4.y);
    r4.y = rcp(r4.y);
    r5.x = x2[0].x;
    r5.x = r3.x ? r4.y : r5.x;
    x2[0].x = r5.x;
    r4.y = 0.0419999994 + r4.y;
    r4.y = r5.w * r4.y;
    r4.y = cmp(1 < r4.y);
    r4.y = r4.y ? 1.000000 : 0;
    r4.y = r4.w * r4.y;
    r3.x = r3.x ? r4.y : r4.w;
    x0[0].x = r3.x;
    r3.x = x1[1].x;
    r4.y = x0[1].x;
    r4.z = r4.z * r4.z + -r3.x;
    r3.x = r4.y * r4.z + r3.x;
    r1.xyw = r1.xyw * r3.xxx + r9.xyz;
    r3.x = cmp(r4.x < r3.x);
    r1.xy = renderTargetSize.xy * r1.xy;
    r8.xy = (int2)r1.xy;
    r8.zw = float2(0,0);
    r1.x = floatZSampler.Load(r8.xyz).x;
    r1.y = cmp(r1.x >= 0.984375);
    r4.x = 1.01587307 * r1.x;
    r1.x = r1.x * 64 + -63;
    r1.x = r1.y ? r1.x : r4.x;
    r1.x = max(9.99999994e-09, r1.x);
    r1.x = rcp(r1.x);
    r1.y = x2[1].x;
    r1.y = r3.x ? r1.x : r1.y;
    x2[1].x = r1.y;
    r1.x = 0.0419999994 + r1.x;
    r1.x = r1.w * r1.x;
    r1.x = cmp(1 < r1.x);
    r1.x = r1.x ? 1.000000 : 0;
    r1.x = r4.y * r1.x;
    r1.x = r3.x ? r1.x : r4.y;
    x0[1].x = r1.x;
  }
  r1.x = x2[0].x;
  r1.x = r1.x + -r5.z;
  r1.x = cmp(2.4000001 < abs(r1.x));
  r1.y = x0[0].x;
  r1.y = -r1.y * 0.5 + 1;
  r1.x = r1.x ? 0.5 : r1.y;
  r1.y = x2[1].x;
  r1.y = r1.y + -r5.z;
  r1.y = cmp(2.4000001 < abs(r1.y));
  r1.w = x0[1].x;
  r1.w = 0.5 * r1.w;
  r1.y = r1.y ? -0.5 : -r1.w;
  r1.x = r1.x + r1.y;
  r1.x = saturate(1 + -r1.x);
  r1.y = r1.x * -2 + 3;
  r1.x = r1.x * r1.x;
  r1.x = r1.y * r1.x;
  r1.x = min(r38.w, r1.x);
  r1.x = r38.z * r1.x;
  r1.xyw = r1.xxx * r32.xyz;
  r4.xyz = r1.xyw * r34.xyz + r28.xyz;
  r5.xyz = r1.xyw * r35.xyz + r29.xyz;
  r8.xyz = r1.xyw * r36.xyz + r31.xyz;
  r1.xyw = r1.xyw * r37.xyz + r30.xyz;
  r1.z = -debugGlossOverride.w * r1.z + 1;
  r3.x = 5 * r1.z;
  r4.w = r1.z * 5 + -2.5;
  r4.w = saturate(0.400000006 * r4.w);
  r4.w = 100 * r4.w;
  r6.zw = -r1.zz * float2(10,5) + float2(6.85740995,7.08500004);
  r5.w = exp2(r6.z);
  r5.w = r6.x * r5.w;
  r5.w = 9.1368103 * r5.w;
  r6.z = r3.x * r1.z;
  r6.z = -r6.z * 2.0159049 + r6.w;
  r6.z = exp2(r6.z);
  r6.z = r6.x * r6.z;
  r6.z = 9.70808983 * r6.z;
  r5.w = max(r6.z, r5.w);
  r5.w = max(1.26815999, r5.w);
  r9.xy = float2(0,0);
  r10.w = 0;
  r11.yz = float2(0,1);
  r13.xy = float2(0,0);
  r14.xy = float2(0,0);
  r15.xy = float2(0,0);
  r16.x = 1;
  r17.xyzw = float4(0,0,0,0);
  r19.yzw = float3(0,0,0);
  r6.zw = float2(0,0);
  while (true) {
    r7.w = cmp((uint)r6.w >= numRefProbes);
    if (r7.w != 0) break;
    r9.z = (uint)r6.w >> 5;
    r10.xyz = (int3)r9.xyz + (int3)r18.xyz;
    r7.w = visibleProbes.Load(r10.xyzw).x;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r20.xyzw, r6.w, l(0), t15.wxyz
  r20.x = samp0[]..swiz;
  r20.y = samp0[]..swiz;
  r20.z = samp0[]..swiz;
  r20.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r21.xyzw, r6.w, l(16), t15.xyzw
  r21.x = samp0[]..swiz;
  r21.y = samp0[]..swiz;
  r21.z = samp0[]..swiz;
  r21.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r6.w, l(32), t15.yxwz
  r22.x = samp0[]..swiz;
  r22.y = samp0[]..swiz;
  r22.z = samp0[]..swiz;
  r22.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r6.w, l(48), t15.xyzw
  r23.x = samp0[]..swiz;
  r23.y = samp0[]..swiz;
  r23.z = samp0[]..swiz;
  r23.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r6.w, l(64), t15.zwxy
  r24.x = samp0[]..swiz;
  r24.y = samp0[]..swiz;
  r24.z = samp0[]..swiz;
  r24.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r6.w, l(80), t15.xyzw
  r25.x = samp0[]..swiz;
  r25.y = samp0[]..swiz;
  r25.z = samp0[]..swiz;
  r25.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r9.zw, r6.w, l(96), t15.xxxy
  r9.z = samp0[]..swiz;
  r9.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r6.w, l(116), t15.xyzw
  r26.x = samp0[]..swiz;
  r26.y = samp0[]..swiz;
  r26.z = samp0[]..swiz;
  r26.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r6.w, l(132), t15.zwxy
  r27.x = samp0[]..swiz;
  r27.y = samp0[]..swiz;
  r27.z = samp0[]..swiz;
  r27.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r6.w, l(148), t15.zwxy
  r28.x = samp0[]..swiz;
  r28.y = samp0[]..swiz;
  r28.z = samp0[]..swiz;
  r28.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r6.w, l(164), t15.zwxy
  r29.x = samp0[]..swiz;
  r29.y = samp0[]..swiz;
  r29.z = samp0[]..swiz;
  r29.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r6.w, l(180), t15.zwxy
  r30.x = samp0[]..swiz;
  r30.y = samp0[]..swiz;
  r30.z = samp0[]..swiz;
  r30.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r6.w, l(196), t15.xyzw
  r31.x = samp0[]..swiz;
  r31.y = samp0[]..swiz;
  r31.z = samp0[]..swiz;
  r31.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xy, r6.w, l(212), t15.xyxx
  r32.x = samp0[]..swiz;
  r32.y = samp0[]..swiz;
    r10.xyz = v5.xyz + -r20.yzw;
    r8.w = dot(r10.xyz, r10.xyz);
    r8.w = sqrt(r8.w);
    r8.w = cmp(probeDebugRadius >= r8.w);
    r11.w = (int)r26.y & 0x0000ffff;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r11.w, l(0), t16.xyzw
  r33.x = samp0[]..swiz;
  r33.y = samp0[]..swiz;
  r33.z = samp0[]..swiz;
  r33.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r11.w, l(16), t16.xyzw
  r34.x = samp0[]..swiz;
  r34.y = samp0[]..swiz;
  r34.z = samp0[]..swiz;
  r34.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r11.w, l(32), t16.xyzw
  r35.x = samp0[]..swiz;
  r35.y = samp0[]..swiz;
  r35.z = samp0[]..swiz;
  r35.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r11.w, l(48), t16.xyzw
  r36.x = samp0[]..swiz;
  r36.y = samp0[]..swiz;
  r36.z = samp0[]..swiz;
  r36.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r11.w, l(64), t16.xyzw
  r37.x = samp0[]..swiz;
  r37.y = samp0[]..swiz;
  r37.z = samp0[]..swiz;
  r37.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r38.xyzw, r11.w, l(80), t16.xyzw
  r38.x = samp0[]..swiz;
  r38.y = samp0[]..swiz;
  r38.z = samp0[]..swiz;
  r38.w = samp0[]..swiz;
    r13.w = dot(r33.xyz, r10.xyz);
    r13.w = saturate(r13.w + r33.w);
    r14.w = dot(r34.xyz, r10.xyz);
    r14.w = saturate(r14.w + r34.w);
    r13.w = r14.w * r13.w;
    r14.w = dot(r35.xyz, r10.xyz);
    r14.w = saturate(r14.w + r35.w);
    r13.w = r14.w * r13.w;
    r14.w = dot(r36.xyz, r10.xyz);
    r14.w = saturate(r14.w + r36.w);
    r13.w = r14.w * r13.w;
    r14.w = dot(r37.xyz, r10.xyz);
    r14.w = saturate(r14.w + r37.w);
    r13.w = r14.w * r13.w;
    r14.w = dot(r38.xyz, r10.xyz);
    r14.w = saturate(r14.w + r38.w);
    r11.x = r14.w * r13.w;
    r13.w = (int)r9.z & 1;
    r16.zw = r13.ww ? r11.xy : r11.zx;
    r33.xy = r26.zw;
    r33.z = r27.z;
    r11.x = dot(r12.xyz, r33.xyz);
    r13.w = dot(r10.xyz, r33.xyz);
    r13.w = r13.w + -r27.w;
    r14.w = cmp(r13.w >= 0);
    r13.w = max(abs(r13.w), r4.w);
    r13.w = r14.w ? r13.w : -r13.w;
    r11.x = max(1.00000001e-07, -r11.x);
    r11.x = r13.w / r11.x;
    r11.x = min(131072, abs(r11.x));
    r27.z = r28.z;
    r13.w = dot(r12.xyz, r27.xyz);
    r14.w = dot(r10.xyz, r27.xyz);
    r14.w = r14.w + -r28.w;
    r15.w = cmp(r14.w >= 0);
    r14.w = max(abs(r14.w), r4.w);
    r14.w = r15.w ? r14.w : -r14.w;
    r13.w = max(1.00000001e-07, -r13.w);
    r13.w = r14.w / r13.w;
    r11.x = min(abs(r13.w), r11.x);
    r28.z = r29.z;
    r13.w = dot(r12.xyz, r28.xyz);
    r14.w = dot(r10.xyz, r28.xyz);
    r14.w = r14.w + -r29.w;
    r15.w = cmp(r14.w >= 0);
    r14.w = max(abs(r14.w), r4.w);
    r14.w = r15.w ? r14.w : -r14.w;
    r13.w = max(1.00000001e-07, -r13.w);
    r13.w = r14.w / r13.w;
    r11.x = min(abs(r13.w), r11.x);
    r29.z = r30.z;
    r13.w = dot(r12.xyz, r29.xyz);
    r14.w = dot(r10.xyz, r29.xyz);
    r14.w = r14.w + -r30.w;
    r15.w = cmp(r14.w >= 0);
    r14.w = max(abs(r14.w), r4.w);
    r14.w = r15.w ? r14.w : -r14.w;
    r13.w = max(1.00000001e-07, -r13.w);
    r13.w = r14.w / r13.w;
    r11.x = min(abs(r13.w), r11.x);
    r30.z = r31.x;
    r13.w = dot(r12.xyz, r30.xyz);
    r14.w = dot(r10.xyz, r30.xyz);
    r14.w = r14.w + -r31.y;
    r15.w = cmp(r14.w >= 0);
    r14.w = max(abs(r14.w), r4.w);
    r14.w = r15.w ? r14.w : -r14.w;
    r13.w = max(1.00000001e-07, -r13.w);
    r13.w = r14.w / r13.w;
    r11.x = min(abs(r13.w), r11.x);
    r32.zw = r31.zw;
    r13.w = dot(r12.zxy, r32.xzw);
    r14.w = dot(r10.zxy, r32.xzw);
    r14.w = r14.w + -r32.y;
    r15.w = cmp(r14.w >= 0);
    r14.w = max(abs(r14.w), r4.w);
    r14.w = r15.w ? r14.w : -r14.w;
    r13.w = max(1.00000001e-07, -r13.w);
    r13.w = r14.w / r13.w;
    r11.x = min(abs(r13.w), r11.x);
    r27.x = r23.w;
    r27.yz = r24.zw;
    r27.xyz = r27.xyz + r10.xyz;
    r27.xyz = r12.xyz * r11.xxx + r27.xyz;
    r13.w = dot(r27.xyz, r27.xyz);
    r13.w = sqrt(r13.w);
    r11.x = r11.x / r13.w;
    r11.x = r11.x + r11.x;
    r11.x = sqrt(r11.x);
    r11.x = r1.z * 5 + r11.x;
    r11.x = -0.844799995 + r11.x;
    r20.y = r21.z;
    r20.z = r22.x;
    r28.x = dot(r27.xyz, r20.xyz);
    r29.xy = r21.xw;
    r29.z = r22.w;
    r28.y = dot(r27.xyz, r29.xyz);
    r22.x = r21.y;
    r28.z = dot(r27.xyz, r22.xyz);
    if (6 == 0) r21.x = 0; else if (6+25 < 32) {     r21.x = (uint)r26.y << (32-(6 + 25)); r21.x = (uint)r21.x >> (32-6);    } else r21.x = (uint)r26.y >> 25;
    if (9 == 0) r21.y = 0; else if (9+16 < 32) {     r21.y = (uint)r26.y << (32-(9 + 16)); r21.y = (uint)r21.y >> (32-9);    } else r21.y = (uint)r26.y >> 16;
    r28.w = (uint)r21.y;
    r21.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r28.xyzw, r11.x).xyz;
    r26.yzw = (int3)r21.yzw & int3(-2147483648,-2147483648,-2147483648);
    r26.yzw = cmp((int3)r26.yzw == int3(2139095040,2139095040,2139095040));
    r11.x = (int)r26.z | (int)r26.y;
    r11.x = (int)r26.w | (int)r11.x;
    r21.yzw = r11.xxx ? float3(1,1,0) : r21.yzw;
    r27.x = dot(r10.xyz, r20.xyz);
    r27.y = dot(r10.xyz, r29.xyz);
    r27.z = dot(r10.xyz, r22.xyz);
    r23.xyz = saturate(r27.xyz * r23.xyz + float3(0.5,0.5,0.5));
    r24.z = r25.x;
    r23.xyz = r23.xyz * r24.xyz + r25.yzw;
    r28.x = dot(r2.xyz, r20.xyz);
    r28.y = dot(r2.xyz, r29.xyz);
    r28.z = dot(r2.xyz, r22.xyz);
    r20.xyz = cmp(float3(0,0,0) < r28.xyz);
    r13.z = r20.x ? 0 : 0.5;
    r22.xyz = r23.xyz + r13.xyz;
    r22.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r22.xyz, 0).xyz;
    r14.z = r20.y ? 0 : 0.5;
    r20.xyw = r23.xyz + r14.xyz;
    r20.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r20.xyw, 0).xyz;
    r15.z = r20.z ? 0 : 0.5;
    r23.xyz = r23.xyz + r15.xyz;
    r23.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
    r24.xyz = r28.xyz * r28.xyz;
    r25.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r28.xyzw, 6).xyz;
    r26.yzw = (int3)r25.xyz & int3(-2147483648,-2147483648,-2147483648);
    r26.yzw = cmp((int3)r26.yzw == int3(2139095040,2139095040,2139095040));
    r11.x = (int)r26.z | (int)r26.y;
    r11.x = (int)r26.w | (int)r11.x;
    r25.xyz = r11.xxx ? float3(1,1,0) : r25.xyz;
    r27.xyzw = r17.xyzw;
    r26.yzw = r19.yzw;
    r11.x = r6.z;
    r13.z = r7.w;
    while (true) {
      if (r13.z == 0) break;
      r13.w = firstbitlow((uint)r13.z);
      r13.w = 1 << (int)r13.w;
      r14.z = (int)r13.w & (int)r13.z;
      if (r14.z != 0) {
        r13.w = ~(int)r13.w;
        r13.z = (int)r13.w & (int)r13.z;
        if (r8.w != 0) {
          r13.w = r9.z;
          r28.xy = r16.zw;
          r14.z = 1;
          while (true) {
            r14.w = cmp((int)r14.z >= (int)r21.x);
            if (r14.w != 0) break;
            r14.w = (int)r11.w + (int)r14.z;
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
            r14.w = dot(r29.xyz, r10.xyz);
            r14.w = saturate(r14.w + r29.w);
            r14.w = r28.x * r14.w;
            r15.z = dot(r30.xyz, r10.xyz);
            r15.z = saturate(r15.z + r30.w);
            r14.w = r15.z * r14.w;
            r15.z = dot(r31.xyz, r10.xyz);
            r15.z = saturate(r15.z + r31.w);
            r14.w = r15.z * r14.w;
            r15.z = dot(r32.xyz, r10.xyz);
            r15.z = saturate(r15.z + r32.w);
            r14.w = r15.z * r14.w;
            r15.z = dot(r33.xyz, r10.xyz);
            r15.z = saturate(r15.z + r33.w);
            r14.w = r15.z * r14.w;
            r15.z = dot(r34.xyz, r10.xyz);
            r15.z = saturate(r15.z + r34.w);
            r28.x = r15.z * r14.w;
            r15.w = (uint)r13.w >> 2;
            if (1 == 0) r18.w = 0; else if (1+2 < 32) {             r18.w = (uint)r13.w << (32-(1 + 2)); r18.w = (uint)r18.w >> (32-1);            } else r18.w = (uint)r13.w >> 2;
            r20.z = (int)r15.w & 2;
            r22.w = max(r28.y, r28.x);
            r14.w = -r14.w * r15.z + 1;
            r14.w = r28.y * r14.w;
            r16.y = r20.z ? r14.w : r22.w;
            r28.xy = r18.ww ? r28.xy : r16.xy;
            r14.z = (int)r14.z + 1;
            r13.w = r15.w;
          }
          r28.y = saturate(r28.y);
          r13.w = r28.y * r9.w;
          r14.z = cmp(0 < r13.w);
          if (r14.z != 0) {
            r29.z = r28.y * r9.w + r26.w;
            r13.w = r13.w * r26.x;
            r28.xzw = r24.xyz * r13.www;
            r30.xyz = r28.zzz * r20.xyw;
            r30.xyz = r22.xyz * r28.xxx + r30.xyz;
            r28.xzw = r23.xyz * r28.www + r30.xyz;
            r30.xyz = r28.xzw * r25.xyz;
            r14.z = dot(r30.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r30.xyz = r28.xzw * r25.xyz + r27.xyz;
            r14.w = r14.z * r5.w;
            r28.xzw = r21.yzw * r13.www;
            r13.w = dot(r28.xzw, float3(0.212599993,0.715200007,0.0722000003));
            r13.w = r5.w * r14.z + r13.w;
            r13.w = r14.w / r13.w;
            r31.x = r27.w;
            r31.yz = r26.yz;
            r29.xyw = r28.zwx * r13.www + r31.yzx;
            r30.w = r29.w;
          } else {
            r30.xyzw = r27.xyzw;
            r29.xyz = r26.yzw;
          }
          r11.x = -1;
          r27.xyzw = r30.xyzw;
          r26.yzw = r29.xyz;
          break;
        }
      }
    }
    if (r11.x != 0) {
      r17.xyzw = r27.xyzw;
      r19.yzw = r26.yzw;
      r6.z = -1;
      break;
    }
    r6.w = (int)r6.w + 32;
    r17.xyzw = r27.xyzw;
    r19.yzw = r26.yzw;
    r6.z = r11.x;
  }
  if (r6.z == 0) {
    r6.z = numRefProbes + -numOverrideProbes;
    r6.w = (int)r6.z & -32;
    r7.w = (int)-r6.w + (int)r6.z;
    r8.w = numRefProbes & -32;
    r9.x = (int)-r8.w + numRefProbes;
    r10.xy = float2(0,0);
    r11.w = 0;
    r13.yz = float2(0,1);
    r14.xy = float2(0,0);
    r15.x = 1;
    r16.xy = float2(0,0);
    r20.xy = float2(0,0);
    r21.xyzw = r17.xyzw;
    r22.yzw = r19.yzw;
    r9.y = r6.w;
    while (true) {
      r9.z = cmp((uint)r9.y >= numRefProbes);
      if (r9.z != 0) break;
      r10.z = (uint)r9.y >> 5;
      r11.xyz = (int3)r10.xyz + (int3)r18.xyz;
      r9.z = visibleProbes.Load(r11.xyzw).x;
      r9.w = cmp((int)r6.w == (int)r9.y);
      bitmask.z = ((~(-1 << r7.w)) << 0) & 0xffffffff;  r10.z = (((uint)0 << 0) & bitmask.z) | ((uint)r9.z & ~bitmask.z);
      r9.z = r9.w ? r10.z : r9.z;
      r9.w = cmp((int)r8.w == (int)r9.y);
      if (r9.x == 0) r10.z = 0; else if (r9.x+0 < 32) {       r10.z = (uint)r9.z << (32-(r9.x + 0)); r10.z = (uint)r10.z >> (32-r9.x);      } else r10.z = (uint)r9.z >> 0;
      r9.z = r9.w ? r10.z : r9.z;
      r9.w = (int)r9.y + numLights;
      r23.xyzw = r21.xyzw;
      r24.xyz = r22.yzw;
      r10.z = r9.z;
      while (true) {
        if (r10.z == 0) break;
        r10.w = firstbitlow((uint)r10.z);
        r11.x = 1 << (int)r10.w;
        r11.y = (int)r10.z & (int)r11.x;
        if (r11.y != 0) {
          r10.z = (int)r10.z ^ (int)r11.x;
          r11.x = (int)r9.w + (int)r10.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r25.xyzw, r11.x, l(0), t11.xyzw
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        r25.z = samp0[]..swiz;
        r25.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r11.xy, r11.x, l(16), t11.xyxx
        r11.x = samp0[]..swiz;
        r11.y = samp0[]..swiz;
          r25.xyz = -v5.xyz + r25.xyz;
          r11.z = r25.w;
          r11.xyz = cmp(abs(r25.xyz) < r11.zxy);
          r11.x = r11.y ? r11.x : 0;
          r11.x = r11.z ? r11.x : 0;
          if (r11.x != 0) {
            r10.w = (int)r9.y + (int)r10.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r10.w, l(0), t15.wxyz
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r11.xy, r10.w, l(96), t15.xyxx
          r11.x = samp0[]..swiz;
          r11.y = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r10.w, l(116), t15.zwxy
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
            r27.xyz = v5.xyz + -r25.yzw;
            r11.z = (int)r26.w & 0x0000ffff;
            if (6 == 0) r13.w = 0; else if (6+25 < 32) {             r13.w = (uint)r26.w << (32-(6 + 25)); r13.w = (uint)r13.w >> (32-6);            } else r13.w = (uint)r26.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r11.z, l(0), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r11.z, l(16), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r11.z, l(32), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r11.z, l(48), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r11.z, l(64), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r11.z, l(80), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
            r14.w = dot(r28.xyz, r27.xyz);
            r14.w = saturate(r14.w + r28.w);
            r15.z = dot(r29.xyz, r27.xyz);
            r15.z = saturate(r15.z + r29.w);
            r14.w = r15.z * r14.w;
            r15.z = dot(r30.xyz, r27.xyz);
            r15.z = saturate(r15.z + r30.w);
            r14.w = r15.z * r14.w;
            r15.z = dot(r31.xyz, r27.xyz);
            r15.z = saturate(r15.z + r31.w);
            r14.w = r15.z * r14.w;
            r15.z = dot(r32.xyz, r27.xyz);
            r15.z = saturate(r15.z + r32.w);
            r14.w = r15.z * r14.w;
            r15.z = dot(r33.xyz, r27.xyz);
            r15.z = saturate(r15.z + r33.w);
            r13.x = r15.z * r14.w;
            r14.w = r11.x ? 0.000000 : 0;
            r15.zw = r14.ww ? r13.xy : r13.zx;
            r13.x = r11.x;
            r28.xy = r15.zw;
            r14.w = 1;
            while (true) {
              r16.w = cmp((int)r14.w >= (int)r13.w);
              if (r16.w != 0) break;
              r16.w = (int)r11.z + (int)r14.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r16.w, l(0), t16.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r16.w, l(16), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r16.w, l(32), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r16.w, l(48), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r16.w, l(64), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r16.w, l(80), t16.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
              r16.w = dot(r29.xyz, r27.xyz);
              r16.w = saturate(r16.w + r29.w);
              r16.w = r28.x * r16.w;
              r18.w = dot(r30.xyz, r27.xyz);
              r18.w = saturate(r18.w + r30.w);
              r16.w = r18.w * r16.w;
              r18.w = dot(r31.xyz, r27.xyz);
              r18.w = saturate(r18.w + r31.w);
              r16.w = r18.w * r16.w;
              r18.w = dot(r32.xyz, r27.xyz);
              r18.w = saturate(r18.w + r32.w);
              r16.w = r18.w * r16.w;
              r18.w = dot(r33.xyz, r27.xyz);
              r18.w = saturate(r18.w + r33.w);
              r16.w = r18.w * r16.w;
              r18.w = dot(r34.xyz, r27.xyz);
              r18.w = saturate(r18.w + r34.w);
              r28.x = r18.w * r16.w;
              r20.w = (uint)r13.x >> 2;
              if (1 == 0) r25.w = 0; else if (1+2 < 32) {               r25.w = (uint)r13.x << (32-(1 + 2)); r25.w = (uint)r25.w >> (32-1);              } else r25.w = (uint)r13.x >> 2;
              r27.w = (int)r20.w & 2;
              r28.z = max(r28.y, r28.x);
              r16.w = -r16.w * r18.w + 1;
              r16.w = r28.y * r16.w;
              r15.y = r27.w ? r16.w : r28.z;
              r28.xy = r25.ww ? r28.xy : r15.xy;
              r14.w = (int)r14.w + 1;
              r13.x = r20.w;
            }
            r28.y = saturate(r28.y);
            r11.x = r28.y * r11.y;
            r11.z = cmp(0 < r11.x);
            if (r11.z != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r10.w, l(16), t15.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r10.w, l(32), t15.yxwz
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r10.w, l(48), t15.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r10.w, l(64), t15.zwxy
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r10.w, l(80), t15.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r10.w, l(132), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r10.w, l(148), t15.zwxy
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r10.w, l(164), t15.zwxy
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r10.w, l(180), t15.zwxy
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r10.w, l(196), t15.xyzw
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xy, r10.w, l(212), t15.xyxx
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
              r24.z = r28.y * r11.y + r24.z;
              r10.w = r11.x * r26.z;
              r26.z = r34.z;
              r11.x = dot(r12.xyz, r26.xyz);
              r11.y = dot(r27.xyz, r26.xyz);
              r11.y = r11.y + -r34.w;
              r11.z = cmp(r11.y >= 0);
              r11.y = max(abs(r11.y), r4.w);
              r11.y = r11.z ? r11.y : -r11.y;
              r11.x = max(1.00000001e-07, -r11.x);
              r11.x = r11.y / r11.x;
              r11.x = min(131072, abs(r11.x));
              r34.z = r35.z;
              r11.y = dot(r12.xyz, r34.xyz);
              r11.z = dot(r27.xyz, r34.xyz);
              r11.z = r11.z + -r35.w;
              r13.x = cmp(r11.z >= 0);
              r11.z = max(abs(r11.z), r4.w);
              r11.z = r13.x ? r11.z : -r11.z;
              r11.y = max(1.00000001e-07, -r11.y);
              r11.y = r11.z / r11.y;
              r11.x = min(r11.x, abs(r11.y));
              r35.z = r36.z;
              r11.y = dot(r12.xyz, r35.xyz);
              r11.z = dot(r27.xyz, r35.xyz);
              r11.z = r11.z + -r36.w;
              r13.x = cmp(r11.z >= 0);
              r11.z = max(abs(r11.z), r4.w);
              r11.z = r13.x ? r11.z : -r11.z;
              r11.y = max(1.00000001e-07, -r11.y);
              r11.y = r11.z / r11.y;
              r11.x = min(r11.x, abs(r11.y));
              r36.z = r37.z;
              r11.y = dot(r12.xyz, r36.xyz);
              r11.z = dot(r27.xyz, r36.xyz);
              r11.z = r11.z + -r37.w;
              r13.x = cmp(r11.z >= 0);
              r11.z = max(abs(r11.z), r4.w);
              r11.z = r13.x ? r11.z : -r11.z;
              r11.y = max(1.00000001e-07, -r11.y);
              r11.y = r11.z / r11.y;
              r11.x = min(r11.x, abs(r11.y));
              r37.z = r38.x;
              r11.y = dot(r12.xyz, r37.xyz);
              r11.z = dot(r27.xyz, r37.xyz);
              r11.z = r11.z + -r38.y;
              r13.x = cmp(r11.z >= 0);
              r11.z = max(abs(r11.z), r4.w);
              r11.z = r13.x ? r11.z : -r11.z;
              r11.y = max(1.00000001e-07, -r11.y);
              r11.y = r11.z / r11.y;
              r11.x = min(r11.x, abs(r11.y));
              r39.zw = r38.zw;
              r11.y = dot(r12.zxy, r39.xzw);
              r11.z = dot(r27.zxy, r39.xzw);
              r11.z = r11.z + -r39.y;
              r13.x = cmp(r11.z >= 0);
              r11.z = max(abs(r11.z), r4.w);
              r11.z = r13.x ? r11.z : -r11.z;
              r11.y = max(1.00000001e-07, -r11.y);
              r11.y = r11.z / r11.y;
              r11.x = min(r11.x, abs(r11.y));
              r26.x = r31.w;
              r26.yz = r32.zw;
              r15.yzw = r26.xyz + r27.xyz;
              r15.yzw = r12.xyz * r11.xxx + r15.yzw;
              r11.y = dot(r15.yzw, r15.yzw);
              r11.y = sqrt(r11.y);
              r11.x = r11.x / r11.y;
              r11.x = r11.x + r11.x;
              r11.x = sqrt(r11.x);
              r11.x = r1.z * 5 + r11.x;
              r11.x = -0.844799995 + r11.x;
              r25.y = r29.z;
              r25.z = r30.x;
              r34.x = dot(r15.yzw, r25.xyz);
              r26.xy = r29.xw;
              r26.z = r30.w;
              r34.y = dot(r15.yzw, r26.xyz);
              r30.x = r29.y;
              r34.z = dot(r15.yzw, r30.xyz);
              if (9 == 0) r11.y = 0; else if (9+16 < 32) {               r11.y = (uint)r26.w << (32-(9 + 16)); r11.y = (uint)r11.y >> (32-9);              } else r11.y = (uint)r26.w >> 16;
              r34.w = (uint)r11.y;
              r11.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, r11.x).xyz;
              r15.yzw = (int3)r11.xyz & int3(-2147483648,-2147483648,-2147483648);
              r15.yzw = cmp((int3)r15.yzw == int3(2139095040,2139095040,2139095040));
              r13.x = (int)r15.z | (int)r15.y;
              r13.x = (int)r15.w | (int)r13.x;
              r11.xyz = r13.xxx ? float3(1,1,0) : r11.xyz;
              r29.x = dot(r27.xyz, r25.xyz);
              r29.y = dot(r27.xyz, r26.xyz);
              r29.z = dot(r27.xyz, r30.xyz);
              r15.yzw = saturate(r29.xyz * r31.xyz + float3(0.5,0.5,0.5));
              r32.z = r33.x;
              r15.yzw = r15.yzw * r32.xyz + r33.yzw;
              r34.x = dot(r2.xyz, r25.xyz);
              r34.y = dot(r2.xyz, r26.xyz);
              r34.z = dot(r2.xyz, r30.xyz);
              r25.xyz = cmp(float3(0,0,0) < r34.xyz);
              r14.z = r25.x ? 0 : 0.5;
              r26.xyz = r15.yzw + r14.xyz;
              r26.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
              r27.xyz = r34.xyz * r34.xyz;
              r27.xyz = r27.xyz * r10.www;
              r16.z = r25.y ? 0 : 0.5;
              r25.xyw = r16.xyz + r15.yzw;
              r25.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r25.xyw, 0).xyz;
              r25.xyw = r25.xyw * r27.yyy;
              r25.xyw = r26.xyz * r27.xxx + r25.xyw;
              r20.z = r25.z ? 0 : 0.5;
              r15.yzw = r20.xyz + r15.yzw;
              r15.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r15.yzw, 0).xyz;
              r15.yzw = r15.yzw * r27.zzz + r25.xyw;
              r25.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, 6).xyz;
              r26.xyz = (int3)r25.xyz & int3(-2147483648,-2147483648,-2147483648);
              r26.xyz = cmp((int3)r26.xyz == int3(2139095040,2139095040,2139095040));
              r13.x = (int)r26.y | (int)r26.x;
              r13.x = (int)r26.z | (int)r13.x;
              r25.xyz = r13.xxx ? float3(1,1,0) : r25.xyz;
              r26.xyz = r25.xyz * r15.yzw;
              r13.x = dot(r26.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r23.xyz = r15.yzw * r25.xyz + r23.xyz;
              r13.w = r13.x * r5.w;
              r11.xyz = r11.xyz * r10.www;
              r10.w = dot(r11.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r10.w = r5.w * r13.x + r10.w;
              r10.w = r13.w / r10.w;
              r25.x = r23.w;
              r25.yz = r24.xy;
              r24.xyw = r11.yzx * r10.www + r25.yzx;
              r23.w = r24.w;
            }
          }
        }
      }
      r21.xyzw = r23.xyzw;
      r22.yzw = r24.xyz;
      r9.y = (int)r9.y + 32;
    }
    r8.w = cmp(r22.w < 1);
    if (r8.w != 0) {
      r9.xy = float2(0,0);
      r10.w = 0;
      r11.yz = float2(0,1);
      r13.xy = float2(0,0);
      r14.x = 1;
      r15.xy = float2(0,0);
      r16.xy = float2(0,0);
      r20.x = r21.w;
      r20.yzw = r22.yzw;
      r23.xyz = r21.xyz;
      r8.w = r22.w;
      r9.w = 0;
      while (true) {
        r11.w = cmp((uint)r9.w >= (uint)r6.z);
        if (r11.w != 0) break;
        r9.z = (uint)r9.w >> 5;
        r10.xyz = (int3)r9.xyz + (int3)r18.xyz;
        r9.z = visibleProbes.Load(r10.xyzw).x;
        r10.x = cmp((int)r6.w == (int)r9.w);
        if (r7.w == 0) r10.y = 0; else if (r7.w+0 < 32) {         r10.y = (uint)r9.z << (32-(r7.w + 0)); r10.y = (uint)r10.y >> (32-r7.w);        } else r10.y = (uint)r9.z >> 0;
        r9.z = r10.x ? r10.y : r9.z;
        r10.x = (int)r9.w + numLights;
        r24.xyzw = r20.xyzw;
        r25.xyz = r23.xyz;
        r10.y = r8.w;
        r10.z = r9.z;
        while (true) {
          if (r10.z == 0) break;
          r11.w = firstbitlow((uint)r10.z);
          r13.w = 1 << (int)r11.w;
          r14.z = (int)r10.z & (int)r13.w;
          if (r14.z != 0) {
            r10.z = (int)r10.z ^ (int)r13.w;
            r13.w = (int)r10.x + (int)r11.w;
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
            r26.xyz = -v5.xyz + r26.xyz;
            r27.z = r26.w;
            r26.xyz = cmp(abs(r26.xyz) < r27.zxy);
            r13.w = r26.y ? r26.x : 0;
            r13.w = r26.z ? r13.w : 0;
            if (r13.w != 0) {
              r11.w = (int)r9.w + (int)r11.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r11.w, l(0), t15.wxyz
            r26.x = samp0[]..swiz;
            r26.y = samp0[]..swiz;
            r26.z = samp0[]..swiz;
            r26.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r14.zw, r11.w, l(96), t15.xxxy
            r14.z = samp0[]..swiz;
            r14.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r11.w, l(116), t15.zwxy
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
              r28.xyz = v5.xyz + -r26.yzw;
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
              r11.x = r18.w * r16.w;
              r16.w = (int)r14.z & 1;
              r29.xy = r16.ww ? r11.xy : r11.zx;
              r11.x = r14.z;
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
                r19.w = dot(r32.xyz, r28.xyz);
                r19.w = saturate(r19.w + r32.w);
                r18.w = r19.w * r18.w;
                r19.w = dot(r33.xyz, r28.xyz);
                r19.w = saturate(r19.w + r33.w);
                r18.w = r19.w * r18.w;
                r19.w = dot(r34.xyz, r28.xyz);
                r19.w = saturate(r19.w + r34.w);
                r18.w = r19.w * r18.w;
                r19.w = dot(r35.xyz, r28.xyz);
                r19.w = saturate(r19.w + r35.w);
                r18.w = r19.w * r18.w;
                r19.w = dot(r36.xyz, r28.xyz);
                r19.w = saturate(r19.w + r36.w);
                r30.x = r19.w * r18.w;
                r23.w = (uint)r11.x >> 2;
                if (1 == 0) r25.w = 0; else if (1+2 < 32) {                 r25.w = (uint)r11.x << (32-(1 + 2)); r25.w = (uint)r25.w >> (32-1);                } else r25.w = (uint)r11.x >> 2;
                r26.w = (int)r23.w & 2;
                r28.w = max(r30.y, r30.x);
                r18.w = -r18.w * r19.w + 1;
                r18.w = r30.y * r18.w;
                r14.y = r26.w ? r18.w : r28.w;
                r30.xy = r25.ww ? r30.xy : r14.xy;
                r16.w = (int)r16.w + 1;
                r11.x = r23.w;
              }
              r11.x = saturate(r30.y + -r10.y);
              r13.w = r11.x * r14.w;
              r14.y = cmp(0 < r13.w);
              if (r14.y != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r11.w, l(16), t15.xyzw
              r29.x = samp0[]..swiz;
              r29.y = samp0[]..swiz;
              r29.z = samp0[]..swiz;
              r29.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r11.w, l(32), t15.yxwz
              r31.x = samp0[]..swiz;
              r31.y = samp0[]..swiz;
              r31.z = samp0[]..swiz;
              r31.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r11.w, l(48), t15.xyzw
              r32.x = samp0[]..swiz;
              r32.y = samp0[]..swiz;
              r32.z = samp0[]..swiz;
              r32.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r11.w, l(64), t15.zwxy
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r11.w, l(80), t15.xyzw
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r11.w, l(132), t15.zwxy
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r11.w, l(148), t15.zwxy
              r36.x = samp0[]..swiz;
              r36.y = samp0[]..swiz;
              r36.z = samp0[]..swiz;
              r36.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r11.w, l(164), t15.zwxy
              r37.x = samp0[]..swiz;
              r37.y = samp0[]..swiz;
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r11.w, l(180), t15.zwxy
              r38.x = samp0[]..swiz;
              r38.y = samp0[]..swiz;
              r38.z = samp0[]..swiz;
              r38.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r11.w, l(196), t15.xyzw
              r39.x = samp0[]..swiz;
              r39.y = samp0[]..swiz;
              r39.z = samp0[]..swiz;
              r39.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xy, r11.w, l(212), t15.xyxx
              r40.x = samp0[]..swiz;
              r40.y = samp0[]..swiz;
                r24.w = r11.x * r14.w + r24.w;
                r11.x = r13.w * r27.z;
                r27.z = r35.z;
                r11.w = dot(r12.xyz, r27.xyz);
                r13.w = dot(r28.xyz, r27.xyz);
                r13.w = r13.w + -r35.w;
                r14.y = cmp(r13.w >= 0);
                r13.w = max(abs(r13.w), r4.w);
                r13.w = r14.y ? r13.w : -r13.w;
                r11.w = max(1.00000001e-07, -r11.w);
                r11.w = r13.w / r11.w;
                r11.w = min(131072, abs(r11.w));
                r35.z = r36.z;
                r13.w = dot(r12.xyz, r35.xyz);
                r14.y = dot(r28.xyz, r35.xyz);
                r14.y = r14.y + -r36.w;
                r14.z = cmp(r14.y >= 0);
                r14.y = max(abs(r14.y), r4.w);
                r14.y = r14.z ? r14.y : -r14.y;
                r13.w = max(1.00000001e-07, -r13.w);
                r13.w = r14.y / r13.w;
                r11.w = min(abs(r13.w), r11.w);
                r36.z = r37.z;
                r13.w = dot(r12.xyz, r36.xyz);
                r14.y = dot(r28.xyz, r36.xyz);
                r14.y = r14.y + -r37.w;
                r14.z = cmp(r14.y >= 0);
                r14.y = max(abs(r14.y), r4.w);
                r14.y = r14.z ? r14.y : -r14.y;
                r13.w = max(1.00000001e-07, -r13.w);
                r13.w = r14.y / r13.w;
                r11.w = min(abs(r13.w), r11.w);
                r37.z = r38.z;
                r13.w = dot(r12.xyz, r37.xyz);
                r14.y = dot(r28.xyz, r37.xyz);
                r14.y = r14.y + -r38.w;
                r14.z = cmp(r14.y >= 0);
                r14.y = max(abs(r14.y), r4.w);
                r14.y = r14.z ? r14.y : -r14.y;
                r13.w = max(1.00000001e-07, -r13.w);
                r13.w = r14.y / r13.w;
                r11.w = min(abs(r13.w), r11.w);
                r38.z = r39.x;
                r13.w = dot(r12.xyz, r38.xyz);
                r14.y = dot(r28.xyz, r38.xyz);
                r14.y = r14.y + -r39.y;
                r14.z = cmp(r14.y >= 0);
                r14.y = max(abs(r14.y), r4.w);
                r14.y = r14.z ? r14.y : -r14.y;
                r13.w = max(1.00000001e-07, -r13.w);
                r13.w = r14.y / r13.w;
                r11.w = min(abs(r13.w), r11.w);
                r40.zw = r39.zw;
                r13.w = dot(r12.zxy, r40.xzw);
                r14.y = dot(r28.zxy, r40.xzw);
                r14.y = r14.y + -r40.y;
                r14.z = cmp(r14.y >= 0);
                r14.y = max(abs(r14.y), r4.w);
                r14.y = r14.z ? r14.y : -r14.y;
                r13.w = max(1.00000001e-07, -r13.w);
                r13.w = r14.y / r13.w;
                r11.w = min(abs(r13.w), r11.w);
                r27.x = r32.w;
                r27.yz = r33.zw;
                r14.yzw = r27.xyz + r28.xyz;
                r14.yzw = r12.xyz * r11.www + r14.yzw;
                r13.w = dot(r14.yzw, r14.yzw);
                r13.w = sqrt(r13.w);
                r11.w = r11.w / r13.w;
                r11.w = r11.w + r11.w;
                r11.w = sqrt(r11.w);
                r11.w = r1.z * 5 + r11.w;
                r11.w = -0.844799995 + r11.w;
                r26.y = r29.z;
                r26.z = r31.x;
                r35.x = dot(r14.yzw, r26.xyz);
                r27.xy = r29.xw;
                r27.z = r31.w;
                r35.y = dot(r14.yzw, r27.xyz);
                r31.x = r29.y;
                r35.z = dot(r14.yzw, r31.xyz);
                if (9 == 0) r13.w = 0; else if (9+16 < 32) {                 r13.w = (uint)r27.w << (32-(9 + 16)); r13.w = (uint)r13.w >> (32-9);                } else r13.w = (uint)r27.w >> 16;
                r35.w = (uint)r13.w;
                r14.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r35.xyzw, r11.w).xyz;
                r29.xyz = (int3)r14.yzw & int3(-2147483648,-2147483648,-2147483648);
                r29.xyz = cmp((int3)r29.xyz == int3(2139095040,2139095040,2139095040));
                r11.w = (int)r29.y | (int)r29.x;
                r11.w = (int)r29.z | (int)r11.w;
                r14.yzw = r11.www ? float3(1,1,0) : r14.yzw;
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
                r13.z = r26.x ? 0 : 0.5;
                r27.xyz = r28.xyz + r13.xyz;
                r27.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r27.xyz, 0).xyz;
                r29.xyz = r35.xyz * r35.xyz;
                r29.xyz = r29.xyz * r11.xxx;
                r15.z = r26.y ? 0 : 0.5;
                r26.xyw = r28.xyz + r15.xyz;
                r26.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r26.xyw, 0).xyz;
                r26.xyw = r26.xyw * r29.yyy;
                r26.xyw = r27.xyz * r29.xxx + r26.xyw;
                r16.z = r26.z ? 0 : 0.5;
                r27.xyz = r28.xyz + r16.xyz;
                r27.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r27.xyz, 0).xyz;
                r26.xyz = r27.xyz * r29.zzz + r26.xyw;
                r27.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r35.xyzw, 6).xyz;
                r28.xyz = (int3)r27.xyz & int3(-2147483648,-2147483648,-2147483648);
                r28.xyz = cmp((int3)r28.xyz == int3(2139095040,2139095040,2139095040));
                r11.w = (int)r28.y | (int)r28.x;
                r11.w = (int)r28.z | (int)r11.w;
                r27.xyz = r11.www ? float3(1,1,0) : r27.xyz;
                r28.xyz = r27.xyz * r26.xyz;
                r11.w = dot(r28.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r25.xyz = r26.xyz * r27.xyz + r25.xyz;
                r13.z = r11.w * r5.w;
                r14.yzw = r14.yzw * r11.xxx;
                r11.x = dot(r14.yzw, float3(0.212599993,0.715200007,0.0722000003));
                r11.x = r5.w * r11.w + r11.x;
                r11.x = r13.z / r11.x;
                r24.xyz = r14.yzw * r11.xxx + r24.xyz;
              }
            }
          }
        }
        r20.xyzw = r24.xyzw;
        r23.xyz = r25.xyz;
        r9.w = (int)r9.w + 32;
      }
      r22.xyzw = r20.zxyw;
      r21.xyz = r23.xyz;
      r22.xyzw = r22.yzxw;
    } else {
      r22.x = r21.w;
    }
    r1.z = max(1, r22.w);
    r1.z = rcp(r1.z);
    r22.w = saturate(r22.w);
    r17.xyz = r21.xyz * r1.zzz;
    r19.xyz = r22.xyz * r1.zzz;
    r4.w = cmp(r22.w < 0.99000001);
    if (r4.w != 0) {
      r4.w = 1 + -r22.w;
      r5.w = sunConstants.globalProbeExposure * r4.w;
      r9.xyz = -globalProbeConstants.data[0].xyz + v5.xyz;
      r10.x = globalProbeConstants.data[0].w * r9.x;
      r10.yz = globalProbeConstants.data[1].xy * r9.yz;
      r9.xyz = saturate(float3(0.5,0.5,0.5) + r10.xyz);
      r10.xy = globalProbeConstants.data[1].zw * r9.xy;
      r10.z = globalProbeConstants.data[2].x * r9.z;
      r9.xyz = globalProbeConstants.data[2].yzw + r10.xyz;
      r10.xyz = cmp(float3(0,0,0) < r2.xyz);
      r10.xyz = r10.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
      r10.w = 0;
      r11.xyz = r10.wwx + r9.xyz;
      r11.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r11.xyz, 0).xyz;
      r13.xyz = r2.xyz * r2.xyz;
      r13.xyz = r13.xyz * r5.www;
      r14.xyz = r10.wwy + r9.xyz;
      r14.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r14.xyz, 0).xyz;
      r14.xyz = r14.xyz * r13.yyy;
      r11.xyz = r11.xyz * r13.xxx + r14.xyz;
      r9.xyz = r10.wwz + r9.xyz;
      r9.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r9.xyz, 0).xyz;
      r9.xyz = r9.xyz * r13.zzz + r11.xyz;
      r2.w = 0;
      r2.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r2.xyzw, 6).xyz;
      r2.xyz = r9.xyz * r2.xyz;
      r2.w = dot(r2.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r17.xyz = r21.xyz * r1.zzz + r2.xyz;
      r12.w = 0;
      r2.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r12.xyzw, r3.x).xyz;
      r1.z = sunConstants.globalProbeExposure * r4.w + -r2.w;
      r1.z = r6.y * r1.z + r2.w;
      r19.xyz = r2.xyz * r1.zzz + r19.xyz;
    }
  } else {
    r19.x = r17.w;
  }
  r2.xyz = r17.xyz * r0.www + r4.xyz;
  r4.xyz = r17.xyz * r0.www + r5.xyz;
  r5.xy = r6.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r5.xy = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r5.xy, 0).xy;
  r6.xyz = r19.xyz * r0.www;
  r1.xyz = r6.xyz * r5.xxx + r1.xyw;
  r5.xyz = r6.xyz * r5.yyy + r8.xyz;
  r0.w = dot(r3.yzw, r7.xyz);
  r0.w = 1 + -abs(r0.w);
  r0.w = r0.w * r0.w;
  r0.w = r0.w * 0.600000024 + 0.400000006;
  r0.w = min(1, r0.w);
  r3.xyz = transColorTint.xyz * r0.www;
  r6.xyz = saturate(r0.xyz * float3(0.0199999996,0.0199999996,0.0199999996) + float3(0.0399999991,0.0399999991,0.0399999991));
  r7.xyz = specColorTint.xyz * r6.xyz;
  r3.xyz = r3.xyz * r0.xyz;
  r3.xyz = r4.xyz * r3.xyz;
  r0.xyz = r2.xyz * r0.xyz + r3.xyz;
  r2.xyz = -r6.xyz * specColorTint.xyz + float3(1,1,1);
  r1.xyz = r2.xyz * r1.xyz;
  r1.xyz = r5.xyz * r7.xyz + r1.xyz;
  r0.xyz = r1.xyz + r0.xyz;
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