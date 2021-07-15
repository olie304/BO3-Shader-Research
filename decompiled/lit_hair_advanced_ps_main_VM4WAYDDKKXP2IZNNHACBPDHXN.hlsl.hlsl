// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:36:50 2021

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
  float3 secondColorTint : packoffset(c11);
  bool useAlphaControls : packoffset(c11.w);
  float zFeatherDistance : packoffset(c12);
  float falloffBegin : packoffset(c12.y);
  float falloffEnd : packoffset(c12.z);
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
SamplerState LinearSampler_s : register(s7);
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
Texture2D<float4> flowMap : register(t26);
Texture2D<float4> cavityMap : register(t29);
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45,r46,r47,r48,r49,r50,r51,r52,r53,r54,r55,r56,r57,r58,r59;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[4];
  float4 x1[4];
  float4 x2[4];
  r0.xyzw = colorMap.Sample(colorSampler_s, w1.xy).xyzw;
  r0.w = v1.x * r0.w;
  r1.x = aoMap.Sample(aoSampler_s, w1.xy).x;
  r1.y = glossMap.Sample(specColorSampler_s, w1.xy).x;
  r1.z = glossRange.y + -glossRange.x;
  r1.y = r1.y * r1.z + glossRange.x;
  r1.y = saturate(0.0588235296 * r1.y);
  r1.z = normalMap.Sample(normalSampler_s, w1.xy).z;
  r1.z = baseNormalHeight * r1.z;
  r1.z = r1.z * r1.z;
  r1.z = 0.333333343 * r1.z;
  r1.z = min(1, r1.z);
  r1.y = -17 * r1.y;
  r1.y = exp2(r1.y);
  r1.y = r1.z + r1.y;
  r1.y = log2(r1.y);
  r1.y = -0.0588235296 * r1.y;
  r2.y = max(0, r1.y);
  r1.yzw = -eyeOffset.yyy * viewProjectionMatrix._m10_m11_m13;
  r1.yzw = -eyeOffset.xxx * viewProjectionMatrix._m00_m01_m03 + r1.yzw;
  r1.yzw = -eyeOffset.zzz * viewProjectionMatrix._m20_m21_m23 + r1.yzw;
  r1.yzw = viewProjectionMatrix._m30_m31_m33 + r1.yzw;
  r3.xyz = eyeOffset.xyz + v5.xyz;
  r2.z = cavityMap.Sample(LinearSampler_s, w1.xy).x;
  r4.xyzw = flowMap.Sample(LinearSampler_s, w1.xy).xyzw;
  r2.w = 0.173648 * r4.w;
  r4.xyz = r4.xyz * float3(1.9921875,1.9921875,1.9921875) + float3(-1,-1,-1);
  r5.xyz = v6.xxx ? v2.xyz : -v2.xyz;
  r4.w = dot(r5.xyz, r5.xyz);
  r4.w = rsqrt(r4.w);
  r5.xyz = r5.xyz * r4.www;
  r6.xyz = v6.xxx ? v3.xyz : -v3.xyz;
  r4.w = dot(r6.xyz, r6.xyz);
  r4.w = rsqrt(r4.w);
  r6.xyz = r6.xyz * r4.www;
  r7.xyz = v6.xxx ? v4.xyz : -v4.xyz;
  r4.w = dot(r7.xyz, r7.xyz);
  r4.w = rsqrt(r4.w);
  r7.xyz = r7.xyz * r4.www;
  r7.xyz = r7.xyz * r4.yyy;
  r4.xyw = r6.xyz * r4.xxx + r7.xyz;
  r4.xyz = r5.xyz * r4.zzz + r4.xyw;
  r4.w = dot(r4.xyz, r4.xyz);
  r4.w = rsqrt(r4.w);
  r6.xyz = r4.xyz * r4.www;
  r7.xyz = r6.yzx * r5.zxy;
  r7.xyz = r5.yzx * r6.zxy + -r7.xyz;
  r8.xyz = r7.yzx * r6.zxy;
  r6.xyz = r6.yzx * r7.zxy + -r8.xyz;
  r8.xy = (uint2)v0.xy;
  r5.w = cmp(v0.z >= 0.984375);
  r7.w = 1.01587307 * v0.z;
  r8.z = v0.z * 64 + -63;
  r5.w = r5.w ? r8.z : r7.w;
  r5.w = max(9.99999994e-09, r5.w);
  r5.w = rcp(r5.w);
  r7.w = dot(-v5.xyz, -v5.xyz);
  r7.w = rsqrt(r7.w);
  r9.xyz = -v5.xyz * r7.www;
  r8.zw = (uint2)r8.yx;
  r9.w = dot(r8.wz, float2(0.0671105608,0.00583714992));
  r9.w = frac(r9.w);
  r9.w = 52.9829178 * r9.w;
  r9.w = frac(r9.w);
  r9.w = r9.w * 6.28318548 + gameTick.w;
  sincos(r9.w, r10.x, r11.x);
  r8.z = dot(r8.zw, float2(0.0671105608,0.00583714992));
  r8.z = frac(r8.z);
  r8.z = 52.9829178 * r8.z;
  r8.z = frac(r8.z);
  r8.z = r8.z * 6.28318548 + gameTick.w;
  sincos(r8.z, r12.x, r13.x);
  r2.x = saturate(dot(r6.xyz, r9.xyz));
  r8.z = 17 * r2.y;
  r8.z = exp2(r8.z);
  r8.z = 2 + r8.z;
  r8.z = 2 / r8.z;
  r8.w = sqrt(r8.z);
  r12.yzw = r6.xyz * r2.www;
  r13.yzw = r4.xyz * r4.www + r12.yzw;
  r2.w = dot(r13.yzw, r13.yzw);
  r2.w = rsqrt(r2.w);
  r14.xyz = r13.yzw * r2.www;
  r15.xyz = secondColorTint.xyz * r0.xyz;
  r2.w = sqrt(r8.w);
  r2.w = r2.w * 0.5 + 0.5;
  r2.w = r2.w * r2.w;
  r8.w = 0.5 * r2.w;
  r2.w = -r2.w * 0.5 + 1;
  r9.w = r2.x * r2.w + r8.w;
  r2.w = r9.w * r2.w;
  r8.w = r9.w * r8.w;
  r4.xyz = r4.xyz * r4.www + -r12.yzw;
  r4.w = saturate(anisotropy);
  r4.w = 1 + -r4.w;
  r4.w = r4.w * r2.y;
  r4.w = 17 * r4.w;
  r4.w = exp2(r4.w);
  r4.w = 2 + r4.w;
  r4.w = 2 / r4.w;
  r9.w = r8.z * r4.w;
  r9.w = sqrt(r9.w);
  r12.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v5.yyy;
  r12.yzw = v5.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r12.yzw;
  r12.yzw = v5.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r12.yzw;
  r12.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r12.yzw;
  r10.z = -sunConstants.splitDepthOffset + r12.w;
  r10.z = -r10.z * 6.10351563e-05 + 1;
  r10.w = saturate(r10.z);
  r10.w = cmp(r10.z == r10.w);
  if (r10.w != 0) {
    r10.w = 0;
    r11.w = 0;
    while (true) {
      r14.w = cmp(r10.w >= 3);
      if (r14.w != 0) break;
      r14.w = (uint)r10.w;
      r16.xy = -sunConstants.splitPinTransform[r14.w].xy + r12.yz;
      r15.w = max(abs(r16.x), abs(r16.y));
      r11.w = sunConstants.splitPinTransform[r14.w].z * r15.w;
      r14.w = cmp(r11.w < 1);
      if (r14.w != 0) {
        break;
      }
      r10.w = 1 + r10.w;
      r11.w = 0;
    }
  } else {
    r10.w = 3;
    r11.w = 0;
  }
  r14.w = cmp(r10.w >= 3);
  if (r14.w != 0) {
    r16.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
    r17.xz = rcp(r16.xx);
    r17.y = -r17.z;
    r16.xyz = r12.yzy * r17.xyz + r16.yzy;
    r17.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
    r16.xyz = max(float3(0,0,0), r16.xyz);
    r16.xyz = min(r16.xyz, r17.xyz);
    r17.xy = sunConstants.sstLightingConstants.coordScale * r16.zy;
    r17.xy = floor(r17.xy);
    r15.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r17.y;
    r15.w = r15.w * sunConstants.sstLightingConstants.coordScale + r17.x;
    r15.w = (uint)r15.w;
    r15.w = (int)r15.w + (int10)sunConstants.sstLightingConstants.rootOffset;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.w, r15.w, l(0), t23.xxxx
  r16.w = samp0[]..swiz;
    r17.x = (int)r16.w & 0x40000000;
    r17.y = (uint)r16.w << 2;
    if (r17.x == 0) {
      r17.x = (int)r16.w & 0x01ffffff;
      r18.x = (int)r15.w + (int)r17.x;
      r15.w = (uint)r16.w >> 25;
      r15.w = (uint)r15.w;
      r16.xyz = r16.xyz * r15.www;
      r16.xyz = frac(r16.xyz);
      r16.xyz = float3(128,128,128) * r16.xyz;
      r16.xyz = (uint3)r16.xyz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
    r18.z = samp0[]..swiz;
      r17.xz = (uint2)r16.zy >> int2(6,6);
      r15.w = (int)r18.z & 0xc0000000;
      r16.w = (int)r18.x + 1;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.w, r16.w, l(0), t23.xxxx
    r16.w = samp0[]..swiz;
      r16.w = r17.z ? r18.z : r16.w;
      r17.z = (uint)r16.w >> 13;
      r16.w = r17.x ? r17.z : r16.w;
      r16.w = (int)r16.w & 8191;
      r19.x = (int)r16.w + (int)r18.x;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
    r19.z = samp0[]..swiz;
      r18.y = 0;
      r19.y = 1;
      r17.xzw = r15.www ? r18.xyz : r19.xyz;
      r19.yz = r15.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
      r20.xy = (uint2)r16.zy >> (uint2)r19.yy;
      r20.xy = (int2)r20.xy & int2(1,1);
      r16.w = (int)r17.w & 0xc0000000;
      r18.w = (int)r17.x + 1;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.w, l(0), t23.xxxx
    r18.w = samp0[]..swiz;
      r18.w = r20.y ? r17.w : r18.w;
      r19.y = (uint)r18.w >> 13;
      r18.w = r20.x ? r19.y : r18.w;
      r18.w = (int)r18.w & 8191;
      r19.x = (int)r17.x + (int)r18.w;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.w, r19.x, l(0), t23.xxxx
    r19.w = samp0[]..swiz;
      r17.xzw = r16.www ? r17.xzw : r19.xzw;
      r17.xzw = r15.www ? r18.xyz : r17.xzw;
      r15.w = (int)r17.w & 0xc0000000;
      if (r15.w == 0) {
        r15.w = (int)-r17.z + 6;
        r18.xy = (uint2)r16.zy >> (uint2)r15.ww;
        r15.w = (int)r17.w | 0x40000000;
        bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r16.w = (((uint)r18.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
        bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r16.w = (((uint)r18.x << 0) & bitmask.w) | ((uint)r16.w & ~bitmask.w);
        r16.w = (int)r16.w * 10;
        r15.w = (uint)r15.w >> (uint)r16.w;
        r15.w = (int)r15.w & 1023;
        r18.x = (int)r15.w + (int)r17.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.x, l(0), t23.xxxx
      r18.w = samp0[]..swiz;
        r18.yz = (int2)r17.zz + int2(1,2);
        r15.w = (int)-r18.y + 6;
        r19.xy = (uint2)r16.zy >> (uint2)r15.ww;
        r15.w = (int)r18.w & 0xc0000000;
        r16.w = (int)r18.w | 0x40000000;
        bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r17.z = (((uint)r19.y << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
        bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r17.z = (((uint)r19.x << 0) & bitmask.z) | ((uint)r17.z & ~bitmask.z);
        r17.z = (int)r17.z * 10;
        r16.w = (uint)r16.w >> (uint)r17.z;
        r16.w = (int)r16.w & 1023;
        r19.x = (int)r16.w + (int)r18.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
      r19.z = samp0[]..swiz;
        r19.y = r18.z;
        r19.xyz = r15.www ? r18.xyw : r19.xyz;
        r16.w = (int)-r19.y + 6;
        r18.yz = (uint2)r16.zy >> (uint2)r16.ww;
        r16.w = (int)r19.z & 0xc0000000;
        r17.z = (int)r19.z | 0x40000000;
        bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r18.z = (((uint)r18.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
        bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r18.y = (((uint)r18.y << 0) & bitmask.y) | ((uint)r18.z & ~bitmask.y);
        r18.y = (int)r18.y * 10;
        r17.z = (uint)r17.z >> (uint)r18.y;
        r17.z = (int)r17.z & 1023;
        r20.x = (int)r17.z + (int)r19.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.y, r20.x, l(0), t23.xxxx
      r20.y = samp0[]..swiz;
        r18.yz = r16.ww ? r19.xz : r20.xy;
        r17.xw = r15.ww ? r18.xw : r18.yz;
      }
      r15.w = (int)r17.w & 0xc0000000;
      if (r15.w == 0) {
        if (14 == 0) r16.w = 0; else if (14+15 < 32) {         r16.w = (uint)r17.w << (32-(14 + 15)); r16.w = (uint)r16.w >> (32-14);        } else r16.w = (uint)r17.w >> 15;
        r16.w = (uint)r16.w;
        r16.w = sunConstants.sstLightingConstants.constants.spanInInches * r16.w;
        r16.w = 6.10388815e-05 * r16.w;
        r18.xy = (int2)r17.ww & int2(32767,536870912);
        r17.z = (uint)r18.x;
        r17.z = sunConstants.sstLightingConstants.constants.spanInInches * r17.z;
        r17.z = 3.05185094e-05 * r17.z;
        r18.x = (int)r16.y & 3;
        r18.x = (int)r17.x + (int)r18.x;
        r18.x = (int)r18.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.x, r18.x, l(0), t23.xxxx
      r18.x = samp0[]..swiz;
        bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r19.x = (((uint)r16.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
        bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r19.y = (((uint)r16.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
        bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r19.z = (((uint)r16.z << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
        r16.x = (uint)r18.x >> (uint)r19.x;
        r16.x = (int)r16.x & 255;
        r16.x = (uint)r16.x;
        r16.x = r16.x * r17.z;
        r16.x = r16.x * 0.00392156886 + r16.w;
        r16.y = (int)r19.y + 1;
        if (1 == 0) r16.z = 0; else if (1+1 < 32) {         r16.z = (uint)r16.z << (32-(1 + 1)); r16.z = (uint)r16.z >> (32-1);        } else r16.z = (uint)r16.z >> 1;
        r16.y = (int)r16.z + (int)r16.y;
        r16.y = (int)r16.y + (int)r17.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.y, r16.y, l(0), t23.xxxx
      r16.y = samp0[]..swiz;
        r16.y = (uint)r16.y >> (uint)r19.z;
        r16.y = (int)r16.y & 0x0000ffff;
        r16.y = (uint)r16.y;
        r16.y = r16.y * r17.z;
        r16.y = r16.y * 1.52590219e-05 + r16.w;
        r17.y = r18.y ? r16.x : r16.y;
      } else {
        r16.x = (int)r17.w & 0x80000000;
        r16.y = (int)r17.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.y, r16.y, l(0), t23.xxxx
      r16.y = samp0[]..swiz;
        r16.x = r16.x ? r16.y : 0;
        r16.y = (uint)r17.w << 2;
        r16.z = (uint)r16.x >> 16;
        r16.x = (int)r16.x & 0x0000ffff;
        r16.xz = f16tof32(r16.xz);
        r16.y = r12.y * r16.z + r16.y;
        r16.x = r12.z * r16.x + r16.y;
        r17.y = r15.w ? r16.x : r17.y;
      }
    }
    r12.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r12.w;
    r12.w = cmp(r17.y < r12.w);
    r16.y = r12.w ? 0 : 1;
  }
  if (r14.w == 0) {
    if (enableDitheredShadow == 0) {
      r12.w = (uint)r10.w;
      r16.zw = -sunConstants.splitPinTransform[r12.w].xy + r12.yz;
      r16.zw = sunConstants.splitPinTransform[r12.w].zz * r16.zw;
      r17.xy = r16.zw * float2(0.5,-0.5) + float2(0.5,0.5);
      r12.w = (int16)sunConstants.splitArrayOffset;
      r17.z = r12.w + r10.w;
      r12.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r10.z).x;
      r14.w = gTransShadowmapArray.SampleLevel(samp0_s, r17.xyz, 0).x;
      r12.w = r14.w + r12.w;
      r12.w = saturate(-1 + r12.w);
      r14.w = r12.w * r12.w;
      r16.y = r14.w * r12.w;
    }
    if (enableDitheredShadow != 0) {
      r17.x = -r10.x;
      r12.w = (uint)r10.w;
      r10.w = 1 + r10.w;
      r10.w = min(2, r10.w);
      r10.w = (uint)r10.w;
      r11.w = 1 + -r11.w;
      r11.w = 28 * r11.w;
      r11.w = (uint)r11.w;
      r16.zw = -sunConstants.splitPinTransform[r12.w].xy + r12.yz;
      r16.zw = sunConstants.splitPinTransform[r12.w].zz * r16.zw;
      r16.zw = r16.zw * float2(0.5,-0.5) + float2(0.5,0.5);
      r12.yz = -sunConstants.splitPinTransform[r10.w].xy + r12.yz;
      r12.yz = sunConstants.splitPinTransform[r10.w].zz * r12.yz;
      r12.yz = r12.yz * float2(0.5,-0.5) + float2(0.5,0.5);
      r17.y = r11.x;
      r17.z = r10.x;
      r14.w = 0;
      r15.w = 0;
      while (true) {
        r17.w = cmp((uint)r15.w >= 8);
        if (r17.w != 0) break;
        r17.w = cmp((uint)r11.w < (uint)r15.w);
        r18.xy = r17.ww ? r12.yz : r16.zw;
        r18.z = r17.w ? sunConstants.splitPinTransform[r10.w].w : sunConstants.splitPinTransform[r12.w].w;
        r17.w = r17.w ? r10.w : r12.w;
        r19.x = dot(icb[r15.w+0].yx, r17.xy);
        r19.y = dot(icb[r15.w+0].yx, r17.yz);
        r18.xy = r19.xy * r18.zz + r18.xy;
        r17.w = (int)r17.w + (int16)sunConstants.splitArrayOffset;
        r18.z = (uint)r17.w;
        r17.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r10.z).x;
        r18.x = gTransShadowmapArray.SampleLevel(samp0_s, r18.xyz, 0).x;
        r17.w = r18.x + r17.w;
        r17.w = saturate(-1 + r17.w);
        r14.w = r17.w * 0.125 + r14.w;
        r15.w = (int)r15.w + 1;
      }
      r10.z = r14.w * r14.w;
      r16.y = r10.z * r14.w;
    }
  }
  r10.z = viewmodelSunShadowRaw & 0x0000ffff;
  if (r10.z != 0) {
    r10.z = (int)r10.z + numLights;
    r10.z = (int)r10.z + -1;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.w, r10.z, l(52), t12.xxxx
  r10.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r10.z, l(68), t12.xyzw
  r17.x = samp0[]..swiz;
  r17.y = samp0[]..swiz;
  r17.z = samp0[]..swiz;
  r17.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r10.z, l(84), t12.xyzw
  r18.x = samp0[]..swiz;
  r18.y = samp0[]..swiz;
  r18.z = samp0[]..swiz;
  r18.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.xyzw, r10.z, l(132), t12.xyzw
  r19.x = samp0[]..swiz;
  r19.y = samp0[]..swiz;
  r19.z = samp0[]..swiz;
  r19.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.xyzw, r10.z, l(148), t12.xyzw
  r20.x = samp0[]..swiz;
  r20.y = samp0[]..swiz;
  r20.z = samp0[]..swiz;
  r20.w = samp0[]..swiz;
    r11.w = dot(sunConstants.wldDir.xyz, r6.xyz);
    r11.w = abs(r11.w) * -0.200000003 + 0.400000006;
    r21.xyz = r6.xyz * r11.www + v5.xyz;
    r21.w = 1;
    r17.x = dot(r17.xyzw, r21.xyzw);
    r17.y = dot(r18.xyzw, r21.xyzw);
    r12.yz = r17.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r12.yz = r12.yz + r20.zw;
    r12.yz = r12.yz * r20.xy;
    r16.zw = r10.ww / r19.xz;
    r17.xy = float2(1,1) + -r16.zw;
    r17.xy = cmp(r12.yz >= r17.xy);
    r16.zw = cmp(r16.zw >= r12.yz);
    r16.zw = (int2)r16.zw | (int2)r17.xy;
    r11.w = (int)r16.w | (int)r16.z;
    if (r11.w == 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.w, r10.z, l(28), t12.xxxx
    r11.w = samp0[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r10.z, l(100), t12.xyzw
    r17.x = samp0[]..swiz;
    r17.y = samp0[]..swiz;
    r17.z = samp0[]..swiz;
    r17.w = samp0[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.zw, r10.z, l(164), t12.xxxy
    r16.z = samp0[]..swiz;
    r16.w = samp0[]..swiz;
      r10.z = dot(r17.xyzw, r21.xyzw);
      r12.yz = saturate(r12.yz);
      r17.xy = r12.yz * r19.xz + r19.yw;
      r10.z = r10.z + r16.z;
      r10.z = r10.z / r16.w;
      r10.z = max(6.10351563e-05, r10.z);
      r11.w = (int)r11.w & 0x0000ffff;
      if (enableDitheredShadow != 0) {
        r18.x = -r10.x;
        r19.z = (uint)r11.w;
        r18.y = r11.x;
        r18.z = r10.x;
        r12.yz = float2(0,0);
        while (true) {
          r12.w = cmp((int)r12.z >= 8);
          if (r12.w != 0) break;
          r20.x = dot(icb[r12.z+0].yx, r18.xy);
          r20.y = dot(icb[r12.z+0].yx, r18.yz);
          r19.xy = r20.xy * r10.ww + r17.xy;
          r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r10.z).x;
          r12.y = r12.w * 0.125 + r12.y;
          r12.z = (int)r12.z + 1;
        }
      } else {
        r17.z = (uint)r11.w;
        r12.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r10.z).x;
      }
      r10.z = r12.y * r12.y;
      r10.z = r10.z * r12.y;
    } else {
      r10.z = 1;
    }
    r16.y = r16.y * r10.z;
  }
  r10.z = cmp(0 < r16.y);
  if (r10.z != 0) {
    r10.z = saturate(dot(r6.xyz, sunConstants.wldDir.xyz));
    if (sunConstants.sunCookieIndex != 0) {
      r3.w = 1;
      r10.w = dot(sunConstants.sunCookieTransform[0].xyzw, r3.xyzw);
      r3.w = dot(sunConstants.sunCookieTransform[1].xyzw, r3.xyzw);
      r17.x = frac(r10.w);
      r17.y = frac(r3.w);
      r3.w = -1 + (int14)sunConstants.sunCookieIndex;
      r17.z = (uint)r3.w;
      r12.yzw = gCookieArray.SampleLevel(samplerLinear_s, r17.xyz, 0).xyz;
      r12.yzw = float3(-1,-1,-1) + r12.yzw;
      r12.yzw = sunConstants.sunCookieIntensity * r12.yzw + float3(1,1,1);
      r12.yzw = sunConstants.color.xyz * r12.yzw;
    } else {
      r12.yzw = sunConstants.color.xyz;
    }
    r3.w = dot(r4.xyz, sunConstants.wldDir.xyz);
    r3.w = -r3.w * r3.w + 1;
    r17.xyz = sqrt(r3.www);
    r18.xyz = -v5.xyz * r7.www + sunConstants.wldDir.xyz;
    r3.w = dot(r18.xyz, r18.xyz);
    r3.w = rsqrt(r3.w);
    r18.xyz = r18.xyz * r3.www;
    r3.w = dot(r18.xyz, r9.xyz);
    r3.w = saturate(1 + -r3.w);
    r7.w = r3.w * r3.w;
    r7.w = r7.w * r7.w;
    r3.w = r7.w * r3.w;
    r7.w = r10.z * r2.w + r8.w;
    r10.w = dot(r6.xyz, r18.xyz);
    r11.w = dot(r18.xyz, r7.xyz);
    r14.w = dot(r18.xyz, r4.xyz);
    r14.w = r14.w * r14.w;
    r14.w = r14.w / r8.z;
    r11.w = r11.w * r11.w;
    r11.w = r11.w / r4.w;
    r14.w = r14.w + r11.w;
    r14.w = abs(r10.w) * abs(r10.w) + r14.w;
    r7.w = r9.w * r7.w;
    r14.w = r14.w * r14.w;
    r14.w = r14.w * r7.w;
    r14.w = rcp(r14.w);
    r14.w = r14.w * r10.z;
    r14.w = 0.25 * r14.w;
    r15.w = dot(r18.xyz, r13.yzw);
    r15.w = r15.w * r15.w;
    r15.w = r15.w / r8.z;
    r11.w = r15.w + r11.w;
    r10.w = abs(r10.w) * abs(r10.w) + r11.w;
    r10.w = r10.w * r10.w;
    r7.w = r10.w * r7.w;
    r7.w = rcp(r7.w);
    r7.w = r7.w * r10.z;
    r7.w = 0.25 * r7.w;
    r18.xyz = r7.www * r15.xyz;
    r18.xyz = r18.xyz * float3(0.829999983,0.829999983,0.829999983) + r14.www;
    r10.zw = r14.ww * r3.ww;
    r3.w = dot(r12.yzw, float3(0.212599993,0.715200007,0.0722000003));
    r3.w = r16.y * r3.w;
    r16.x = 1;
    r16.zw = sunConstants.wldDir.xy;
    r7.w = sunConstants.wldDir.z;
    r11.w = r10.w;
  } else {
    r3.w = 0;
    r12.yzw = float3(0,0,0);
    r16.xyzw = float4(0,0,0,0);
    r17.xyz = float3(0,0,0);
    r7.w = 0;
    r18.xyz = float3(0,0,0);
    r11.w = 0;
    r10.zw = float2(0,0);
  }
  r14.w = 0.0078125 * r5.w;
  r14.w = min(15, r14.w);
  r14.w = (uint)r14.w;
  r19.xy = (uint2)r8.xy >> int2(6,6);
  r19.z = (uint)r14.w << 4;
  r20.x = -r10.x;
  r21.xy = float2(0,0);
  r22.w = 0;
  r23.xyz = v5.xyz;
  r23.w = 1;
  r24.w = 1;
  r20.z = r10.x;
  r25.z = 1;
  r26.w = 1;
  r20.yw = r11.xx;
  r10.y = r20.w;
  r27.w = 1;
  r11.y = r20.x;
  r11.z = r10.x;
  r28.x = r11.x;
  r28.y = r20.x;
  r28.z = r10.x;
  r29.xyz = float3(0,0,0);
  r30.xyz = float3(0,0,0);
  r31.xyz = float3(0,0,0);
  r32.xyz = r12.yzw;
  r33.xy = r16.zw;
  r33.z = r7.w;
  r34.xyz = r17.xyz;
  r35.xyz = r18.xyz;
  r36.x = r11.w;
  r36.yz = r10.zw;
  r8.x = enableDitheredShadow;
  r8.y = r3.w;
  r37.xy = r16.xy;
  r14.w = 0;
  while (true) {
    r15.w = cmp((uint)r14.w >= numLights);
    if (r15.w != 0) break;
    r21.z = (uint)r14.w >> 5;
    r22.xyz = (int3)r19.xyz + (int3)r21.xyz;
    r15.w = visibleLights.Load(r22.xyzw).x;
    r22.xyz = r29.xyz;
    r38.xyz = r30.xyz;
    r39.xyz = r31.xyz;
    r40.xyz = r32.xyz;
    r41.xyz = r33.xyz;
    r42.xyz = r34.xyz;
    r43.xyz = r35.xyz;
    r21.zw = r37.xy;
    r17.w = r8.x;
    r18.w = r8.y;
    r44.xyz = r36.xyz;
    r19.w = r15.w;
    while (true) {
      if (r19.w == 0) break;
      r25.w = firstbitlow((uint)r19.w);
      r28.w = 1 << (int)r25.w;
      r29.w = (int)r19.w & (int)r28.w;
      if (r29.w != 0) {
        r19.w = (int)r19.w ^ (int)r28.w;
        r25.w = (int)r14.w + (int)r25.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r25.w, l(0), t12.xyzw
      r45.x = samp0[]..swiz;
      r45.y = samp0[]..swiz;
      r45.z = samp0[]..swiz;
      r45.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r46.xy, r25.w, l(16), t12.xyxx
      r46.x = samp0[]..swiz;
      r46.y = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r47.xyzw, r25.w, l(28), t12.xyzw
      r47.x = samp0[]..swiz;
      r47.y = samp0[]..swiz;
      r47.z = samp0[]..swiz;
      r47.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r48.xyzw, r25.w, l(44), t12.wxyz
      r48.x = samp0[]..swiz;
      r48.y = samp0[]..swiz;
      r48.z = samp0[]..swiz;
      r48.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r49.xyzw, r25.w, l(60), t12.zwxy
      r49.x = samp0[]..swiz;
      r49.y = samp0[]..swiz;
      r49.z = samp0[]..swiz;
      r49.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r50.xyzw, r25.w, l(76), t12.xyzw
      r50.x = samp0[]..swiz;
      r50.y = samp0[]..swiz;
      r50.z = samp0[]..swiz;
      r50.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r51.xyzw, r25.w, l(92), t12.zwxy
      r51.x = samp0[]..swiz;
      r51.y = samp0[]..swiz;
      r51.z = samp0[]..swiz;
      r51.w = samp0[]..swiz;
        if (3 == 0) r28.w = 0; else if (3+24 < 32) {         r28.w = (uint)r47.x << (32-(3 + 24)); r28.w = (uint)r28.w >> (32-3);        } else r28.w = (uint)r47.x >> 24;
        switch (r28.w) {
          case 4 :          r28.w = cmp(0 < r51.x);
          r52.x = r50.w;
          r52.yz = r51.zw;
          r53.xyz = -r52.xyz * float3(0.5,0.5,0.5) + r45.xyz;
          r54.xyz = -v5.xyz + r53.xyz;
          r29.w = dot(r52.xyz, r54.xyz);
          r29.w = saturate(-r29.w / r51.x);
          r52.xyz = r29.www * r52.xyz + r53.xyz;
          r52.xyz = r28.www ? r52.xyz : r45.xyz;
          r52.xyz = -v5.xyz + r52.xyz;
          r28.w = dot(r52.xyz, r52.xyz);
          r29.w = sqrt(r28.w);
          r30.w = r48.z * r48.z;
          r30.w = r30.w / r28.w;
          r30.w = min(1, r30.w);
          r31.w = saturate(r29.w * r47.y + r47.z);
          r29.w = saturate(r29.w * r47.w + r48.y);
          r32.w = r31.w * r31.w;
          r31.w = r31.w * -2 + 3;
          r31.w = r32.w * r31.w;
          r30.w = r31.w * r30.w;
          r31.w = r29.w * r29.w;
          r29.w = r29.w * -2 + 3;
          r29.w = r31.w * r29.w;
          r29.w = r30.w * r29.w;
          r30.w = cmp(0 < r29.w);
          if (r30.w != 0) {
            r28.w = rsqrt(r28.w);
            r53.xyz = r52.xyz * r28.www;
            r30.w = dot(r6.xyz, r53.xyz);
            if (3 == 0) r37.z = 0; else if (3+27 < 32) {             r37.z = (uint)r47.x << (32-(3 + 27)); r37.z = (uint)r37.z >> (32-3);            } else r37.z = (uint)r47.x >> 27;
            if (4 == 0) r37.w = 0; else if (4+20 < 32) {             r37.w = (uint)r47.x << (32-(4 + 20)); r37.w = (uint)r37.w >> (32-4);            } else r37.w = (uint)r47.x >> 20;
            r31.w = cmp((int)r37.z != 1);
            if (r31.w != 0) {
              r31.w = abs(r30.w) * -0.200000003 + 0.400000006;
              r54.xyz = r6.xyz * r31.www + v5.xyz;
              r49.z = r50.x;
              r54.xyz = r54.xyz + -r49.xyz;
              r31.w = max(abs(r54.y), abs(r54.z));
              r31.w = max(abs(r54.x), r31.w);
              r31.w = r50.y / r31.w;
              r31.w = r31.w + r50.z;
              r32.w = dot(r54.xyz, r54.xyz);
              r32.w = rsqrt(r32.w);
              r31.w = max(6.10351563e-05, r31.w);
              r33.w = (int)r47.x & 0x0000ffff;
              r55.w = (uint)r33.w;
              r33.w = 0;
              r34.w = 0;
              while (true) {
                r35.w = cmp((int)r34.w >= 8);
                if (r35.w != 0) break;
                r56.y = dot(icb[r34.w+0].yx, r20.xy);
                r56.z = dot(icb[r34.w+0].yx, r20.yz);
                r56.yz = r56.yz * r48.ww;
                r56.x = r56.y * r13.x;
                r56.w = r56.y * r12.x;
                r55.xyz = r54.xyz * r32.www + r56.xzw;
                r35.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r55.xyzw, r31.w).x;
                r33.w = r35.w * 0.125 + r33.w;
                r34.w = (int)r34.w + 1;
              }
            } else {
              r33.w = 1;
            }
            if (r37.w != 0) {
              r31.w = (int)r37.w + numLights;
              r31.w = (int)r31.w + -1;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.w, r31.w, l(52), t12.xxxx
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r54.xyzw, r31.w, l(100), t12.xyzw
            r54.x = samp0[]..swiz;
            r54.y = samp0[]..swiz;
            r54.z = samp0[]..swiz;
            r54.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r55.xyzw, r31.w, l(116), t12.xyzw
            r55.x = samp0[]..swiz;
            r55.y = samp0[]..swiz;
            r55.z = samp0[]..swiz;
            r55.w = samp0[]..swiz;
              r34.w = abs(r30.w) * -0.200000003 + 0.400000006;
              r24.xyz = r6.xyz * r34.www + v5.xyz;
              r34.w = dot(r54.xyzw, r24.xyzw);
              r35.w = dot(r55.xyzw, r24.xyzw);
              r36.w = cmp(r35.w < r34.w);
              if (r36.w == 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r54.xyzw, r31.w, l(68), t12.xyzw
              r54.x = samp0[]..swiz;
              r54.y = samp0[]..swiz;
              r54.z = samp0[]..swiz;
              r54.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r55.xyzw, r31.w, l(84), t12.xyzw
              r55.x = samp0[]..swiz;
              r55.y = samp0[]..swiz;
              r55.z = samp0[]..swiz;
              r55.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r56.xyzw, r31.w, l(132), t12.xyzw
              r56.x = samp0[]..swiz;
              r56.y = samp0[]..swiz;
              r56.z = samp0[]..swiz;
              r56.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r57.xyzw, r31.w, l(148), t12.xyzw
              r57.x = samp0[]..swiz;
              r57.y = samp0[]..swiz;
              r57.z = samp0[]..swiz;
              r57.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.zw, r31.w, l(164), t12.xxxy
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
                r54.x = dot(r54.xyzw, r24.xyzw);
                r54.y = dot(r55.xyzw, r24.xyzw);
                r24.xy = r54.xy / r35.ww;
                r24.xy = r24.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r24.xy = r24.xy + r57.zw;
                r24.xy = r24.xy * r57.xy;
                r54.xy = r32.ww / r56.xz;
                r54.zw = float2(1,1) + -r54.xy;
                r54.zw = cmp(r24.xy >= r54.zw);
                r54.xy = cmp(r54.xy >= r24.xy);
                r54.xy = (int2)r54.xy | (int2)r54.zw;
                r24.z = (int)r54.y | (int)r54.x;
                r24.xy = saturate(r24.xy);
                r54.xy = r24.xy * r56.xz + r56.yw;
                r24.x = r37.w * r35.w;
                r24.y = r37.z * r35.w + r34.w;
                r24.x = r24.y / r24.x;
              } else {
                r24.z = -1;
              }
              r24.y = (int)r36.w | (int)r24.z;
              if (r24.y == 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.y, r31.w, l(28), t12.xxxx
              r24.y = samp0[]..swiz;
                r24.x = max(6.10351563e-05, r24.x);
                r24.y = (int)r24.y & 0x0000ffff;
                if (r17.w != 0) {
                  r55.z = (uint)r24.y;
                  r24.z = 0;
                  r31.w = 0;
                  while (true) {
                    r34.w = cmp((int)r31.w >= 8);
                    if (r34.w != 0) break;
                    r56.x = dot(icb[r31.w+0].yx, r20.xw);
                    r56.y = dot(icb[r31.w+0].xy, r10.xy);
                    r55.xy = r56.xy * r32.ww + r54.xy;
                    r34.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r55.xyz, r24.x).x;
                    r24.z = r34.w * 0.125 + r24.z;
                    r31.w = (int)r31.w + 1;
                  }
                } else {
                  r54.z = (uint)r24.y;
                  r24.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r54.xyz, r24.x).x;
                }
                r24.x = r24.z * r24.z;
                r24.x = r24.x * r24.z;
              } else {
                r24.x = 1;
              }
              r33.w = r33.w * r24.x;
            }
            r24.x = r33.w * r29.w;
            r24.y = cmp(0 < r24.x);
            if (r24.y != 0) {
              r30.w = saturate(r30.w);
              r24.y = dot(r4.xyz, r53.xyz);
              r24.y = -r24.y * r24.y + 1;
              r54.xyz = sqrt(r24.yyy);
              r52.xyz = r52.xyz * r28.www + r9.xyz;
              r24.y = dot(r52.xyz, r52.xyz);
              r24.y = rsqrt(r24.y);
              r52.xyz = r52.xyz * r24.yyy;
              r24.y = dot(r52.xyz, r9.xyz);
              r24.y = saturate(1 + -r24.y);
              r28.w = r24.y * r24.y;
              r28.w = r28.w * r28.w;
              r24.y = r28.w * r24.y;
              r28.w = r30.w * r2.w + r8.w;
              r31.w = dot(r6.xyz, r52.xyz);
              r32.w = dot(r52.xyz, r7.xyz);
              r34.w = dot(r52.xyz, r4.xyz);
              r34.w = r34.w * r34.w;
              r34.w = r34.w / r8.z;
              r32.w = r32.w * r32.w;
              r32.w = r32.w / r4.w;
              r34.w = r34.w + r32.w;
              r34.w = abs(r31.w) * abs(r31.w) + r34.w;
              r28.w = r28.w * r9.w;
              r34.w = r34.w * r34.w;
              r34.w = r34.w * r28.w;
              r34.w = rcp(r34.w);
              r34.w = r34.w * r30.w;
              r34.w = 0.25 * r34.w;
              r35.w = dot(r52.xyz, r13.yzw);
              r35.w = r35.w * r35.w;
              r35.w = r35.w / r8.z;
              r32.w = r35.w + r32.w;
              r31.w = abs(r31.w) * abs(r31.w) + r32.w;
              r31.w = r31.w * r31.w;
              r28.w = r31.w * r28.w;
              r28.w = rcp(r28.w);
              r28.w = r28.w * r30.w;
              r28.w = 0.25 * r28.w;
              r52.xyz = r28.www * r15.xyz;
              r52.xyz = r52.xyz * float3(0.829999983,0.829999983,0.829999983) + r34.www;
              r24.y = r34.w * r24.y;
              r46.z = r45.w;
              r28.w = dot(r46.zxy, float3(0.212599993,0.715200007,0.0722000003));
              r28.w = r28.w * r24.x;
              r30.w = cmp(r18.w < r28.w);
              if (r30.w != 0) {
                r30.w = r21.z * r21.w;
                r55.xyz = r30.www * r40.xyz;
                r22.xyz = r55.xyz * r42.xyz + r22.xyz;
                r39.xyz = r55.xyz * r43.xyz + r39.xyz;
                r38.xyz = r55.xyz * r44.xyz + r38.xyz;
                r21.w = r33.w;
                r44.xyz = r24.yyy;
                r40.xyz = r46.zxy;
                r41.xyz = r53.xyz;
                r42.xyz = r54.xyz;
                r43.xyz = r52.xyz;
                r18.w = r28.w;
                r21.z = r29.w;
              } else {
                r53.xyz = r24.xxx * r46.zxy;
                r22.xyz = r53.xyz * r54.zzz + r22.xyz;
                r39.xyz = r53.xyz * r52.xyz + r39.xyz;
                r38.xyz = r53.xyz * r24.yyy + r38.xyz;
              }
            }
          }
          break;
          case 2 :        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r52.xyzw, r25.w, l(108), t12.zwxy
        r52.x = samp0[]..swiz;
        r52.y = samp0[]..swiz;
        r52.z = samp0[]..swiz;
        r52.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r53.xyzw, r25.w, l(124), t12.xyzw
        r53.x = samp0[]..swiz;
        r53.y = samp0[]..swiz;
        r53.z = samp0[]..swiz;
        r53.w = samp0[]..swiz;
          r54.xy = r52.xy;
          r54.zw = r53.xy;
          r24.x = dot(r54.xyzw, r23.xyzw);
          r24.y = cmp(r24.x < 1);
          if (r24.y != 0) {
            r55.xyz = float3(1,1,1);
            r24.y = 0;
          } else {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r56.xyzw, r25.w, l(172), t12.yzwx
          r56.x = samp0[]..swiz;
          r56.y = samp0[]..swiz;
          r56.z = samp0[]..swiz;
          r56.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r57.xyzw, r25.w, l(188), t12.wxyz
          r57.x = samp0[]..swiz;
          r57.y = samp0[]..swiz;
          r57.z = samp0[]..swiz;
          r57.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r58.xyzw, r25.w, l(204), t12.xyzw
          r58.x = samp0[]..swiz;
          r58.y = samp0[]..swiz;
          r58.z = samp0[]..swiz;
          r58.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r28.w, r25.w, l(236), t12.xxxx
          r28.w = samp0[]..swiz;
            r45.xyz = -v5.xyz + r45.xyz;
            r29.w = r48.z * r48.z;
            r30.w = dot(r45.xyz, r45.xyz);
            r29.w = r29.w / r30.w;
            r29.w = min(1, r29.w);
            r30.w = saturate(r24.x * r47.y + r47.z);
            r31.w = saturate(r24.x * r47.w + r48.y);
            r32.w = r30.w * r30.w;
            r30.w = r30.w * -2 + 3;
            r30.w = r32.w * r30.w;
            r29.w = r30.w * r29.w;
            r30.w = r31.w * r31.w;
            r31.w = r31.w * -2 + 3;
            r30.w = r31.w * r30.w;
            r29.w = r30.w * r29.w;
            r59.xy = r49.xy;
            r59.zw = r50.xy;
            r45.x = dot(r59.xyzw, r23.xyzw);
            r59.xy = r50.zw;
            r59.zw = r51.zw;
            r45.y = dot(r59.xyzw, r23.xyzw);
            r25.xy = r45.xy / r24.xx;
            r24.x = cmp(r56.w < 0.00048828125);
            if (r24.x != 0) {
              r57.y = r58.x;
              r37.zw = saturate(abs(r25.xy) * r57.zw + r57.xy);
              r45.xy = r37.zw * r37.zw;
              r37.zw = r37.zw * float2(-2,-2) + float2(3,3);
              r37.zw = r45.xy * r37.zw;
              r24.x = r37.z * r37.w;
            } else {
              r56.w = r57.y;
              r56.xyzw = saturate(r56.xyzw * abs(r25.yyxx));
              r56.xyzw = log2(r56.xyzw);
              r56.xyzw = r57.xxxx * r56.xyzw;
              r56.xyzw = exp2(r56.xyzw);
              r37.zw = r56.xy + r56.zw;
              r37.zw = log2(r37.zw);
              r37.zw = r58.xx * r37.zw;
              r37.zw = exp2(r37.zw);
              r30.w = r57.z * r37.z;
              r31.w = r57.w * r37.w + -1;
              r30.w = r57.w * r37.w + -r30.w;
              r30.w = saturate(r31.w / r30.w);
              r31.w = r30.w * r30.w;
              r30.w = r30.w * -2 + 3;
              r24.x = r31.w * r30.w;
            }
            r24.y = r29.w * r24.x;
            r24.x = (int)r28.w & 255;
            if (r24.x != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyz, r25.w, l(220), t12.xyzx
            r45.x = samp0[]..swiz;
            r45.y = samp0[]..swiz;
            r45.z = samp0[]..swiz;
              r28.w = dot(r58.yzw, r25.xyz);
              r25.x = dot(r45.xyz, r25.xyz);
              r45.x = frac(r28.w);
              r45.y = frac(r25.x);
              r24.x = (int)r24.x + -1;
              r45.z = (uint)r24.x;
              r55.xyz = gCookieArray.SampleLevel(samplerLinear_s, r45.xyz, 0).xyz;
            } else {
              r55.xyz = float3(1,1,1);
            }
          }
          r24.x = cmp(0 < r24.y);
          if (r24.x != 0) {
            r48.yz = r49.zw;
            r45.xyz = -v5.xyz + r48.xyz;
            r24.x = dot(r45.xyz, r45.xyz);
            r24.x = rsqrt(r24.x);
            r47.yzw = r45.xyz * r24.xxx;
            r25.x = dot(r6.xyz, r47.yzw);
            if (3 == 0) r37.z = 0; else if (3+27 < 32) {             r37.z = (uint)r47.x << (32-(3 + 27)); r37.z = (uint)r37.z >> (32-3);            } else r37.z = (uint)r47.x >> 27;
            if (4 == 0) r37.w = 0; else if (4+20 < 32) {             r37.w = (uint)r47.x << (32-(4 + 20)); r37.w = (uint)r37.w >> (32-4);            } else r37.w = (uint)r47.x >> 20;
            r25.y = cmp((int)r37.z != 1);
            if (r25.y != 0) {
              r25.y = abs(r25.x) * -0.200000003 + 0.400000006;
              r26.xyz = r6.xyz * r25.yyy + v5.xyz;
              r52.xy = r51.xy;
              r25.y = dot(r52.xyzw, r26.xyzw);
              r28.w = dot(r54.xyzw, r26.xyzw);
              r29.w = cmp(r28.w >= r25.y);
              if (r29.w != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r53.xy, r25.w, l(140), t12.xyxx
              r53.x = samp0[]..swiz;
              r53.y = samp0[]..swiz;
                r49.zw = r50.xy;
                r48.x = dot(r49.xyzw, r26.xyzw);
                r51.xy = r50.zw;
                r48.y = dot(r51.xyzw, r26.xyzw);
                r26.xy = r48.xy / r28.ww;
                r26.xy = saturate(r26.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                r26.xy = r26.xy * r53.zx + r53.wy;
                r25.y = r25.y / r28.w;
                r25.y = max(6.10351563e-05, r25.y);
                r25.w = (int)r47.x & 0x0000ffff;
                if (r17.w != 0) {
                  r48.z = (uint)r25.w;
                  r28.w = 0;
                  r29.w = 0;
                  while (true) {
                    r30.w = cmp((int)r29.w >= 8);
                    if (r30.w != 0) break;
                    r49.x = dot(icb[r29.w+0].xy, r11.xy);
                    r49.y = dot(icb[r29.w+0].yx, r11.xz);
                    r48.xy = r49.xy * r48.ww + r26.xy;
                    r30.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r48.xyz, r25.y).x;
                    r28.w = r30.w * 0.125 + r28.w;
                    r29.w = (int)r29.w + 1;
                  }
                } else {
                  r26.z = (uint)r25.w;
                  r28.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r25.y).x;
                }
                r25.y = r28.w * r28.w;
                r25.y = r25.y * r28.w;
              } else {
                r25.y = 1;
              }
            } else {
              r25.y = 1;
            }
            if (r37.w != 0) {
              r25.w = (int)r37.w + numLights;
              r25.w = (int)r25.w + -1;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r26.x, r25.w, l(52), t12.xxxx
            r26.x = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r48.xyzw, r25.w, l(68), t12.xyzw
            r48.x = samp0[]..swiz;
            r48.y = samp0[]..swiz;
            r48.z = samp0[]..swiz;
            r48.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r49.xyzw, r25.w, l(84), t12.xyzw
            r49.x = samp0[]..swiz;
            r49.y = samp0[]..swiz;
            r49.z = samp0[]..swiz;
            r49.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r50.xyzw, r25.w, l(100), t12.xyzw
            r50.x = samp0[]..swiz;
            r50.y = samp0[]..swiz;
            r50.z = samp0[]..swiz;
            r50.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r51.xyzw, r25.w, l(116), t12.xyzw
            r51.x = samp0[]..swiz;
            r51.y = samp0[]..swiz;
            r51.z = samp0[]..swiz;
            r51.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r52.xyzw, r25.w, l(132), t12.xyzw
            r52.x = samp0[]..swiz;
            r52.y = samp0[]..swiz;
            r52.z = samp0[]..swiz;
            r52.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r53.xyzw, r25.w, l(148), t12.xyzw
            r53.x = samp0[]..swiz;
            r53.y = samp0[]..swiz;
            r53.z = samp0[]..swiz;
            r53.w = samp0[]..swiz;
              r26.y = abs(r25.x) * -0.200000003 + 0.400000006;
              r27.xyz = r6.xyz * r26.yyy + v5.xyz;
              r48.x = dot(r48.xyzw, r27.xyzw);
              r48.y = dot(r49.xyzw, r27.xyzw);
              r26.y = dot(r50.xyzw, r27.xyzw);
              r26.z = dot(r51.xyzw, r27.xyzw);
              r27.x = cmp(r26.z < r26.y);
              r27.yz = r48.xy / r26.zz;
              r27.yz = r27.yz * float2(0.5,-0.5) + float2(0.5,0.5);
              r27.yz = r27.yz + r53.zw;
              r27.yz = r27.yz * r53.xy;
              r37.zw = r26.xx / r52.xz;
              r48.xy = float2(1,1) + -r37.zw;
              r48.xy = cmp(r27.yz >= r48.xy);
              r37.zw = cmp(r37.zw >= r27.yz);
              r37.zw = (int2)r37.zw | (int2)r48.xy;
              r29.w = (int)r37.w | (int)r37.z;
              r27.x = (int)r27.x | (int)r29.w;
              if (r27.x == 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r27.x, r25.w, l(28), t12.xxxx
              r27.x = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.zw, r25.w, l(164), t12.xxxy
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
                r27.yz = saturate(r27.yz);
                r48.xy = r27.yz * r52.xz + r52.yw;
                r25.w = r37.w * r26.z;
                r26.y = r37.z * r26.z + r26.y;
                r25.w = r26.y / r25.w;
                r25.w = max(6.10351563e-05, r25.w);
                r26.y = r27.x ? 0.000000 : 0;
                if (r17.w != 0) {
                  r27.z = (uint)r26.y;
                  r26.z = 0;
                  r29.w = 0;
                  while (true) {
                    r30.w = cmp((int)r29.w >= 8);
                    if (r30.w != 0) break;
                    r49.x = dot(icb[r29.w+0].xy, r28.xy);
                    r49.y = dot(icb[r29.w+0].yx, r28.xz);
                    r27.xy = r49.xy * r26.xx + r48.xy;
                    r27.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r27.xyz, r25.w).x;
                    r26.z = r27.x * 0.125 + r26.z;
                    r29.w = (int)r29.w + 1;
                  }
                } else {
                  r48.z = (uint)r26.y;
                  r26.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r48.xyz, r25.w).x;
                }
                r25.w = r26.z * r26.z;
                r25.w = r25.w * r26.z;
              } else {
                r25.w = 1;
              }
              r25.y = r25.y * r25.w;
            }
            r25.w = r25.y * r24.y;
            r26.x = cmp(0 < r25.w);
            if (r26.x != 0) {
              r25.x = saturate(r25.x);
              r46.w = r45.w;
              r27.xyz = r55.xyz * r46.wxy;
              r26.x = dot(r4.xyz, r47.yzw);
              r26.x = -r26.x * r26.x + 1;
              r46.xyz = sqrt(r26.xxx);
              r45.xyz = r45.xyz * r24.xxx + r9.xyz;
              r24.x = dot(r45.xyz, r45.xyz);
              r24.x = rsqrt(r24.x);
              r45.xyz = r45.xyz * r24.xxx;
              r24.x = dot(r45.xyz, r9.xyz);
              r24.x = saturate(1 + -r24.x);
              r26.x = r24.x * r24.x;
              r26.x = r26.x * r26.x;
              r24.x = r26.x * r24.x;
              r26.x = r25.x * r2.w + r8.w;
              r26.y = dot(r6.xyz, r45.xyz);
              r29.w = dot(r45.xyz, r7.xyz);
              r30.w = dot(r45.xyz, r4.xyz);
              r30.w = r30.w * r30.w;
              r30.w = r30.w / r8.z;
              r29.w = r29.w * r29.w;
              r29.w = r29.w / r4.w;
              r30.w = r30.w + r29.w;
              r30.w = abs(r26.y) * abs(r26.y) + r30.w;
              r26.x = r26.x * r9.w;
              r30.w = r30.w * r30.w;
              r30.w = r30.w * r26.x;
              r30.w = rcp(r30.w);
              r30.w = r30.w * r25.x;
              r30.w = 0.25 * r30.w;
              r31.w = dot(r45.xyz, r13.yzw);
              r31.w = r31.w * r31.w;
              r31.w = r31.w / r8.z;
              r29.w = r31.w + r29.w;
              r26.y = abs(r26.y) * abs(r26.y) + r29.w;
              r26.y = r26.y * r26.y;
              r26.x = r26.y * r26.x;
              r26.x = rcp(r26.x);
              r25.x = r26.x * r25.x;
              r25.x = 0.25 * r25.x;
              r45.xyz = r25.xxx * r15.xyz;
              r45.xyz = r45.xyz * float3(0.829999983,0.829999983,0.829999983) + r30.www;
              r24.x = r30.w * r24.x;
              r25.x = dot(r27.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r25.x = r25.w * r25.x;
              r26.x = cmp(r18.w < r25.x);
              if (r26.x != 0) {
                r26.x = r21.z * r21.w;
                r48.xyz = r26.xxx * r40.xyz;
                r22.xyz = r48.xyz * r42.xyz + r22.xyz;
                r39.xyz = r48.xyz * r43.xyz + r39.xyz;
                r38.xyz = r48.xyz * r44.xyz + r38.xyz;
                r21.w = r25.y;
                r44.xyz = r24.xxx;
                r40.xyz = r27.xyz;
                r41.xyz = r47.yzw;
                r42.xyz = r46.xyz;
                r43.xyz = r45.xyz;
                r18.w = r25.x;
                r21.z = r24.y;
              } else {
                r25.xyw = r27.xyz * r25.www;
                r22.xyz = r25.xyw * r46.zzz + r22.xyz;
                r39.xyz = r25.xyw * r45.xyz + r39.xyz;
                r38.xyz = r25.xyw * r24.xxx + r38.xyz;
              }
            }
          }
          break;
          default :
          break;
        }
      }
    }
    r29.xyz = r22.xyz;
    r30.xyz = r38.xyz;
    r31.xyz = r39.xyz;
    r32.xyz = r40.xyz;
    r33.xyz = r41.xyz;
    r34.xyz = r42.xyz;
    r35.xyz = r43.xyz;
    r37.xy = r21.zw;
    r8.y = r18.w;
    r36.xyz = r44.xyz;
    r14.w = (int)r14.w + 32;
  }
  r4.z = 0;
  r4.xy = float2(1,-1) * r33.yx;
  r7.xyz = r33.zxy * r4.yzx;
  r7.xyz = r33.yzx * r4.zxy + -r7.xyz;
  r8.xyz = viewProjectionMatrix._m10_m11_m13 * r3.yyy;
  r8.xyz = r3.xxx * viewProjectionMatrix._m00_m01_m03 + r8.xyz;
  r8.xyz = r3.zzz * viewProjectionMatrix._m20_m21_m23 + r8.xyz;
  r8.xyz = r8.xyz + r1.yzw;
  r10.z = rcp(r8.z);
  r8.xy = r10.zz * r8.xy;
  r10.xy = r8.xy * float2(0.5,-0.5) + float2(0.5,0.5);
  r3.xyz = r33.xyz * float3(2.4000001,2.4000001,2.4000001) + r3.xyz;
  r2.w = dot(v0.xy, float2(0.0671105608,0.00583714992));
  r2.w = frac(r2.w);
  r2.w = 52.9829178 * r2.w;
  r2.w = frac(r2.w);
  r3.w = 3.14159989 * r2.w;
  r3.w = gameTick.w * 0.5 + r3.w;
  sincos(r3.w, r8.x, r11.x);
  r8.xyw = r8.xxx * r7.xyz;
  r8.xyw = r11.xxx * r4.xyz + r8.xyw;
  r8.xyw = r8.xyw * float3(0.119999997,0.119999997,0.119999997) + r3.xyz;
  r11.xyz = viewProjectionMatrix._m10_m11_m13 * r8.yyy;
  r11.xyz = r8.xxx * viewProjectionMatrix._m00_m01_m03 + r11.xyz;
  r8.xyw = r8.www * viewProjectionMatrix._m20_m21_m23 + r11.xyz;
  r8.xyw = r8.xyw + r1.yzw;
  r8.xy = float2(0.5,-0.5) * r8.xy;
  r11.z = rcp(r8.w);
  r11.xy = r8.xy * r11.zz + float2(0.5,0.5);
  r12.xyz = -r10.xyz;
  r8.xyw = r12.xyz + r11.xyz;
  r3.w = 3.14159989 + r3.w;
  sincos(r3.w, r11.x, r13.x);
  r7.xyz = r11.xxx * r7.xyz;
  r4.xyz = r13.xxx * r4.xyz + r7.xyz;
  r3.xyz = r4.xyz * float3(0.119999997,0.119999997,0.119999997) + r3.xyz;
  r4.xyz = viewProjectionMatrix._m10_m11_m13 * r3.yyy;
  r3.xyw = r3.xxx * viewProjectionMatrix._m00_m01_m03 + r4.xyz;
  r3.xyz = r3.zzz * viewProjectionMatrix._m20_m21_m23 + r3.xyw;
  r1.yzw = r3.xyz + r1.yzw;
  r1.yz = float2(0.5,-0.5) * r1.yz;
  r3.z = rcp(r1.w);
  r3.xy = r1.yz * r3.zz + r12.xy;
  r12.w = 0.5;
  r1.yzw = r3.xyz + r12.wwz;
  r3.x = dot(renderTargetSize.zw, renderTargetSize.zw);
  r3.y = dot(r8.xy, r8.xy);
  r3.xy = sqrt(r3.xy);
  r3.y = rcp(r3.y);
  r3.x = r3.x * r3.y;
  r3.yz = r2.ww * float2(0.5,0.5) + float2(0.333333343,1);
  r3.yz = float2(0.117647059,0.117647059) * r3.yz;
  r3.yz = r3.yz * r3.yz;
  x1[0].x = r3.y;
  r4.xyz = r8.xyw * r3.yyy + r10.xyz;
  r7.xy = cmp(r3.xx < r3.yz);
  r4.xy = renderTargetSize.xy * r4.xy;
  r11.xy = (int2)r4.xy;
  r11.zw = float2(0,0);
  r3.w = floatZSampler.Load(r11.xyz).x;
  r4.x = cmp(r3.w >= 0.984375);
  r4.y = 1.01587307 * r3.w;
  r3.w = r3.w * 64 + -63;
  r3.w = r4.x ? r3.w : r4.y;
  r3.w = max(9.99999994e-09, r3.w);
  r3.w = rcp(r3.w);
  x2[0].x = r3.w;
  r4.x = 0.0419999994 + r3.w;
  r4.x = r4.z * r4.x;
  r4.x = cmp(1 < r4.x);
  r4.x = r4.x ? 1.000000 : 0;
  r4.x = r7.x ? r4.x : 1;
  x0[0].x = r4.x;
  x1[1].x = r3.z;
  r4.yzw = r1.yzw * r3.zzz + r10.xyz;
  r4.yz = renderTargetSize.xy * r4.yz;
  r11.xy = (int2)r4.yz;
  r11.zw = float2(0,0);
  r4.y = floatZSampler.Load(r11.xyz).x;
  r4.z = cmp(r4.y >= 0.984375);
  r7.x = 1.01587307 * r4.y;
  r4.y = r4.y * 64 + -63;
  r4.y = r4.z ? r4.y : r7.x;
  r4.y = max(9.99999994e-09, r4.y);
  r4.y = rcp(r4.y);
  x2[1].x = r4.y;
  r4.z = 0.0419999994 + r4.y;
  r4.z = r4.w * r4.z;
  r4.z = cmp(1 < r4.z);
  r4.z = r4.z ? 1.000000 : 0;
  r4.z = r7.y ? r4.z : 1;
  x0[1].x = r4.z;
  r4.w = r4.x + r4.z;
  r4.w = cmp(r4.w != 0.000000);
  if (r4.w != 0) {
    r7.xy = r2.ww * float2(0.5,0.5) + float2(1.33333337,2);
    r7.xy = float2(0.117647059,0.117647059) * r7.xy;
    r7.xy = r7.xy * r7.xy + -r3.yz;
    r3.y = r4.x * r7.x + r3.y;
    x1[0].x = r3.y;
    r7.xzw = r8.xyw * r3.yyy + r10.xyz;
    r3.y = cmp(r3.x < r3.y);
    r7.xz = renderTargetSize.xy * r7.xz;
    r11.xy = (int2)r7.xz;
    r11.zw = float2(0,0);
    r4.w = floatZSampler.Load(r11.xyz).x;
    r7.x = cmp(r4.w >= 0.984375);
    r7.z = 1.01587307 * r4.w;
    r4.w = r4.w * 64 + -63;
    r4.w = r7.x ? r4.w : r7.z;
    r4.w = max(9.99999994e-09, r4.w);
    r4.w = rcp(r4.w);
    r3.w = r3.y ? r4.w : r3.w;
    x2[0].x = r3.w;
    r3.w = 0.0419999994 + r4.w;
    r3.w = r7.w * r3.w;
    r3.w = cmp(1 < r3.w);
    r3.w = r3.w ? 1.000000 : 0;
    r3.w = r4.x * r3.w;
    r3.y = r3.y ? r3.w : r4.x;
    x0[0].x = r3.y;
    r3.z = r4.z * r7.y + r3.z;
    x1[1].x = r3.z;
    r7.xyz = r1.yzw * r3.zzz + r10.xyz;
    r3.z = cmp(r3.x < r3.z);
    r4.xw = renderTargetSize.xy * r7.xy;
    r11.xy = (int2)r4.xw;
    r11.zw = float2(0,0);
    r3.w = floatZSampler.Load(r11.xyz).x;
    r4.x = cmp(r3.w >= 0.984375);
    r4.w = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r4.x ? r3.w : r4.w;
    r3.w = max(9.99999994e-09, r3.w);
    r3.w = rcp(r3.w);
    r4.x = r3.z ? r3.w : r4.y;
    x2[1].x = r4.x;
    r3.w = 0.0419999994 + r3.w;
    r3.w = r7.z * r3.w;
    r3.w = cmp(1 < r3.w);
    r3.w = r3.w ? 1.000000 : 0;
    r3.w = r4.z * r3.w;
    r3.z = r3.z ? r3.w : r4.z;
    x0[1].x = r3.z;
    r3.y = r3.y + r3.z;
    r3.y = cmp(r3.y == 0.000000);
  } else {
    r3.y = -1;
  }
  if (r3.y == 0) {
    r3.yz = r2.ww * float2(0.5,0.5) + float2(2.33333325,3);
    r3.yz = float2(0.117647059,0.117647059) * r3.yz;
    r3.w = x1[0].x;
    r4.x = x0[0].x;
    r3.y = r3.y * r3.y + -r3.w;
    r3.y = r4.x * r3.y + r3.w;
    x1[0].x = r3.y;
    r4.yzw = r8.xyw * r3.yyy + r10.xyz;
    r3.y = cmp(r3.x < r3.y);
    r4.yz = renderTargetSize.xy * r4.yz;
    r7.xy = (int2)r4.yz;
    r7.zw = float2(0,0);
    r3.w = floatZSampler.Load(r7.xyz).x;
    r4.y = cmp(r3.w >= 0.984375);
    r4.z = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r4.y ? r3.w : r4.z;
    r3.w = max(9.99999994e-09, r3.w);
    r3.w = rcp(r3.w);
    r4.y = x2[0].x;
    r4.y = r3.y ? r3.w : r4.y;
    x2[0].x = r4.y;
    r3.w = 0.0419999994 + r3.w;
    r3.w = r4.w * r3.w;
    r3.w = cmp(1 < r3.w);
    r3.w = r3.w ? 1.000000 : 0;
    r3.w = r4.x * r3.w;
    r3.y = r3.y ? r3.w : r4.x;
    x0[0].x = r3.y;
    r3.w = x1[1].x;
    r4.x = x0[1].x;
    r3.z = r3.z * r3.z + -r3.w;
    r3.z = r4.x * r3.z + r3.w;
    x1[1].x = r3.z;
    r4.yzw = r1.yzw * r3.zzz + r10.xyz;
    r3.z = cmp(r3.x < r3.z);
    r4.yz = renderTargetSize.xy * r4.yz;
    r7.xy = (int2)r4.yz;
    r7.zw = float2(0,0);
    r3.w = floatZSampler.Load(r7.xyz).x;
    r4.y = cmp(r3.w >= 0.984375);
    r4.z = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r4.y ? r3.w : r4.z;
    r3.w = max(9.99999994e-09, r3.w);
    r3.w = rcp(r3.w);
    r4.y = x2[1].x;
    r4.y = r3.z ? r3.w : r4.y;
    x2[1].x = r4.y;
    r3.w = 0.0419999994 + r3.w;
    r3.w = r4.w * r3.w;
    r3.w = cmp(1 < r3.w);
    r3.w = r3.w ? 1.000000 : 0;
    r3.w = r4.x * r3.w;
    r3.z = r3.z ? r3.w : r4.x;
    x0[1].x = r3.z;
    r3.y = r3.y + r3.z;
    r3.y = cmp(r3.y == 0.000000);
  } else {
    r3.y = -1;
  }
  if (r3.y == 0) {
    r3.yz = r2.ww * float2(0.5,0.5) + float2(3.33333325,4);
    r3.yz = float2(0.117647059,0.117647059) * r3.yz;
    r3.w = x1[0].x;
    r4.x = x0[0].x;
    r3.y = r3.y * r3.y + -r3.w;
    r3.y = r4.x * r3.y + r3.w;
    x1[0].x = r3.y;
    r4.yzw = r8.xyw * r3.yyy + r10.xyz;
    r3.y = cmp(r3.x < r3.y);
    r4.yz = renderTargetSize.xy * r4.yz;
    r7.xy = (int2)r4.yz;
    r7.zw = float2(0,0);
    r3.w = floatZSampler.Load(r7.xyz).x;
    r4.y = cmp(r3.w >= 0.984375);
    r4.z = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r4.y ? r3.w : r4.z;
    r3.w = max(9.99999994e-09, r3.w);
    r3.w = rcp(r3.w);
    r4.y = x2[0].x;
    r4.y = r3.y ? r3.w : r4.y;
    x2[0].x = r4.y;
    r3.w = 0.0419999994 + r3.w;
    r3.w = r4.w * r3.w;
    r3.w = cmp(1 < r3.w);
    r3.w = r3.w ? 1.000000 : 0;
    r3.w = r4.x * r3.w;
    r3.y = r3.y ? r3.w : r4.x;
    x0[0].x = r3.y;
    r3.w = x1[1].x;
    r4.x = x0[1].x;
    r3.z = r3.z * r3.z + -r3.w;
    r3.z = r4.x * r3.z + r3.w;
    x1[1].x = r3.z;
    r4.yzw = r1.yzw * r3.zzz + r10.xyz;
    r3.z = cmp(r3.x < r3.z);
    r4.yz = renderTargetSize.xy * r4.yz;
    r7.xy = (int2)r4.yz;
    r7.zw = float2(0,0);
    r3.w = floatZSampler.Load(r7.xyz).x;
    r4.y = cmp(r3.w >= 0.984375);
    r4.z = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r4.y ? r3.w : r4.z;
    r3.w = max(9.99999994e-09, r3.w);
    r3.w = rcp(r3.w);
    r4.y = x2[1].x;
    r4.y = r3.z ? r3.w : r4.y;
    x2[1].x = r4.y;
    r3.w = 0.0419999994 + r3.w;
    r3.w = r4.w * r3.w;
    r3.w = cmp(1 < r3.w);
    r3.w = r3.w ? 1.000000 : 0;
    r3.w = r4.x * r3.w;
    r3.z = r3.z ? r3.w : r4.x;
    x0[1].x = r3.z;
    r3.y = r3.y + r3.z;
    r3.y = cmp(r3.y == 0.000000);
  } else {
    r3.y = -1;
  }
  if (r3.y == 0) {
    r3.yz = r2.ww * float2(0.5,0.5) + float2(4.33333349,5);
    r3.yz = float2(0.117647059,0.117647059) * r3.yz;
    r3.w = x1[0].x;
    r4.x = x0[0].x;
    r3.y = r3.y * r3.y + -r3.w;
    r3.y = r4.x * r3.y + r3.w;
    x1[0].x = r3.y;
    r4.yzw = r8.xyw * r3.yyy + r10.xyz;
    r3.y = cmp(r3.x < r3.y);
    r4.yz = renderTargetSize.xy * r4.yz;
    r7.xy = (int2)r4.yz;
    r7.zw = float2(0,0);
    r3.w = floatZSampler.Load(r7.xyz).x;
    r4.y = cmp(r3.w >= 0.984375);
    r4.z = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r4.y ? r3.w : r4.z;
    r3.w = max(9.99999994e-09, r3.w);
    r3.w = rcp(r3.w);
    r4.y = x2[0].x;
    r4.y = r3.y ? r3.w : r4.y;
    x2[0].x = r4.y;
    r3.w = 0.0419999994 + r3.w;
    r3.w = r4.w * r3.w;
    r3.w = cmp(1 < r3.w);
    r3.w = r3.w ? 1.000000 : 0;
    r3.w = r4.x * r3.w;
    r3.y = r3.y ? r3.w : r4.x;
    x0[0].x = r3.y;
    r3.w = x1[1].x;
    r4.x = x0[1].x;
    r3.z = r3.z * r3.z + -r3.w;
    r3.z = r4.x * r3.z + r3.w;
    x1[1].x = r3.z;
    r4.yzw = r1.yzw * r3.zzz + r10.xyz;
    r3.z = cmp(r3.x < r3.z);
    r4.yz = renderTargetSize.xy * r4.yz;
    r7.xy = (int2)r4.yz;
    r7.zw = float2(0,0);
    r3.w = floatZSampler.Load(r7.xyz).x;
    r4.y = cmp(r3.w >= 0.984375);
    r4.z = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r4.y ? r3.w : r4.z;
    r3.w = max(9.99999994e-09, r3.w);
    r3.w = rcp(r3.w);
    r4.y = x2[1].x;
    r4.y = r3.z ? r3.w : r4.y;
    x2[1].x = r4.y;
    r3.w = 0.0419999994 + r3.w;
    r3.w = r4.w * r3.w;
    r3.w = cmp(1 < r3.w);
    r3.w = r3.w ? 1.000000 : 0;
    r3.w = r4.x * r3.w;
    r3.z = r3.z ? r3.w : r4.x;
    x0[1].x = r3.z;
    r3.y = r3.y + r3.z;
    r3.y = cmp(r3.y == 0.000000);
  } else {
    r3.y = -1;
  }
  if (r3.y == 0) {
    r3.yz = r2.ww * float2(0.5,0.5) + float2(5.33333349,6);
    r3.yz = float2(0.117647059,0.117647059) * r3.yz;
    r3.w = x1[0].x;
    r4.x = x0[0].x;
    r3.y = r3.y * r3.y + -r3.w;
    r3.y = r4.x * r3.y + r3.w;
    x1[0].x = r3.y;
    r4.yzw = r8.xyw * r3.yyy + r10.xyz;
    r3.y = cmp(r3.x < r3.y);
    r4.yz = renderTargetSize.xy * r4.yz;
    r7.xy = (int2)r4.yz;
    r7.zw = float2(0,0);
    r3.w = floatZSampler.Load(r7.xyz).x;
    r4.y = cmp(r3.w >= 0.984375);
    r4.z = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r4.y ? r3.w : r4.z;
    r3.w = max(9.99999994e-09, r3.w);
    r3.w = rcp(r3.w);
    r4.y = x2[0].x;
    r4.y = r3.y ? r3.w : r4.y;
    x2[0].x = r4.y;
    r3.w = 0.0419999994 + r3.w;
    r3.w = r4.w * r3.w;
    r3.w = cmp(1 < r3.w);
    r3.w = r3.w ? 1.000000 : 0;
    r3.w = r4.x * r3.w;
    r3.y = r3.y ? r3.w : r4.x;
    x0[0].x = r3.y;
    r3.w = x1[1].x;
    r4.x = x0[1].x;
    r3.z = r3.z * r3.z + -r3.w;
    r3.z = r4.x * r3.z + r3.w;
    x1[1].x = r3.z;
    r4.yzw = r1.yzw * r3.zzz + r10.xyz;
    r3.z = cmp(r3.x < r3.z);
    r4.yz = renderTargetSize.xy * r4.yz;
    r7.xy = (int2)r4.yz;
    r7.zw = float2(0,0);
    r3.w = floatZSampler.Load(r7.xyz).x;
    r4.y = cmp(r3.w >= 0.984375);
    r4.z = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r4.y ? r3.w : r4.z;
    r3.w = max(9.99999994e-09, r3.w);
    r3.w = rcp(r3.w);
    r4.y = x2[1].x;
    r4.y = r3.z ? r3.w : r4.y;
    x2[1].x = r4.y;
    r3.w = 0.0419999994 + r3.w;
    r3.w = r4.w * r3.w;
    r3.w = cmp(1 < r3.w);
    r3.w = r3.w ? 1.000000 : 0;
    r3.w = r4.x * r3.w;
    r3.z = r3.z ? r3.w : r4.x;
    x0[1].x = r3.z;
    r3.y = r3.y + r3.z;
    r3.y = cmp(r3.y == 0.000000);
  } else {
    r3.y = -1;
  }
  if (r3.y == 0) {
    r3.yz = r2.ww * float2(0.5,0.5) + float2(6.33333349,7);
    r3.yz = float2(0.117647059,0.117647059) * r3.yz;
    r3.w = x1[0].x;
    r4.x = x0[0].x;
    r3.y = r3.y * r3.y + -r3.w;
    r3.y = r4.x * r3.y + r3.w;
    x1[0].x = r3.y;
    r4.yzw = r8.xyw * r3.yyy + r10.xyz;
    r3.y = cmp(r3.x < r3.y);
    r4.yz = renderTargetSize.xy * r4.yz;
    r7.xy = (int2)r4.yz;
    r7.zw = float2(0,0);
    r3.w = floatZSampler.Load(r7.xyz).x;
    r4.y = cmp(r3.w >= 0.984375);
    r4.z = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r4.y ? r3.w : r4.z;
    r3.w = max(9.99999994e-09, r3.w);
    r3.w = rcp(r3.w);
    r4.y = x2[0].x;
    r4.y = r3.y ? r3.w : r4.y;
    x2[0].x = r4.y;
    r3.w = 0.0419999994 + r3.w;
    r3.w = r4.w * r3.w;
    r3.w = cmp(1 < r3.w);
    r3.w = r3.w ? 1.000000 : 0;
    r3.w = r4.x * r3.w;
    r3.y = r3.y ? r3.w : r4.x;
    x0[0].x = r3.y;
    r3.w = x1[1].x;
    r4.x = x0[1].x;
    r3.z = r3.z * r3.z + -r3.w;
    r3.z = r4.x * r3.z + r3.w;
    x1[1].x = r3.z;
    r4.yzw = r1.yzw * r3.zzz + r10.xyz;
    r3.z = cmp(r3.x < r3.z);
    r4.yz = renderTargetSize.xy * r4.yz;
    r7.xy = (int2)r4.yz;
    r7.zw = float2(0,0);
    r3.w = floatZSampler.Load(r7.xyz).x;
    r4.y = cmp(r3.w >= 0.984375);
    r4.z = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r4.y ? r3.w : r4.z;
    r3.w = max(9.99999994e-09, r3.w);
    r3.w = rcp(r3.w);
    r4.y = x2[1].x;
    r4.y = r3.z ? r3.w : r4.y;
    x2[1].x = r4.y;
    r3.w = 0.0419999994 + r3.w;
    r3.w = r4.w * r3.w;
    r3.w = cmp(1 < r3.w);
    r3.w = r3.w ? 1.000000 : 0;
    r3.w = r4.x * r3.w;
    r3.z = r3.z ? r3.w : r4.x;
    x0[1].x = r3.z;
    r3.y = r3.y + r3.z;
    r3.y = cmp(r3.y == 0.000000);
  } else {
    r3.y = -1;
  }
  if (r3.y == 0) {
    r3.yz = r2.ww * float2(0.5,0.5) + float2(7.33333349,8);
    r3.yz = float2(0.117647059,0.117647059) * r3.yz;
    r2.w = x1[0].x;
    r3.w = x0[0].x;
    r3.y = r3.y * r3.y + -r2.w;
    r2.w = r3.w * r3.y + r2.w;
    r4.xyz = r8.xyw * r2.www + r10.xyz;
    r2.w = cmp(r3.x < r2.w);
    r4.xy = renderTargetSize.xy * r4.xy;
    r7.xy = (int2)r4.xy;
    r7.zw = float2(0,0);
    r3.y = floatZSampler.Load(r7.xyz).x;
    r4.x = cmp(r3.y >= 0.984375);
    r4.y = 1.01587307 * r3.y;
    r3.y = r3.y * 64 + -63;
    r3.y = r4.x ? r3.y : r4.y;
    r3.y = max(9.99999994e-09, r3.y);
    r3.y = rcp(r3.y);
    r4.x = x2[0].x;
    r4.x = r2.w ? r3.y : r4.x;
    x2[0].x = r4.x;
    r3.y = 0.0419999994 + r3.y;
    r3.y = r4.z * r3.y;
    r3.y = cmp(1 < r3.y);
    r3.y = r3.y ? 1.000000 : 0;
    r3.y = r3.w * r3.y;
    r2.w = r2.w ? r3.y : r3.w;
    x0[0].x = r2.w;
    r2.w = x1[1].x;
    r3.y = x0[1].x;
    r3.z = r3.z * r3.z + -r2.w;
    r2.w = r3.y * r3.z + r2.w;
    r1.yzw = r1.yzw * r2.www + r10.xyz;
    r2.w = cmp(r3.x < r2.w);
    r1.yz = renderTargetSize.xy * r1.yz;
    r4.xy = (int2)r1.yz;
    r4.zw = float2(0,0);
    r1.y = floatZSampler.Load(r4.xyz).x;
    r1.z = cmp(r1.y >= 0.984375);
    r3.x = 1.01587307 * r1.y;
    r1.y = r1.y * 64 + -63;
    r1.y = r1.z ? r1.y : r3.x;
    r1.y = max(9.99999994e-09, r1.y);
    r1.y = rcp(r1.y);
    r1.z = x2[1].x;
    r1.z = r2.w ? r1.y : r1.z;
    x2[1].x = r1.z;
    r1.y = 0.0419999994 + r1.y;
    r1.y = r1.w * r1.y;
    r1.y = cmp(1 < r1.y);
    r1.y = r1.y ? 1.000000 : 0;
    r1.y = r3.y * r1.y;
    r1.y = r2.w ? r1.y : r3.y;
    x0[1].x = r1.y;
  }
  r1.y = x2[0].x;
  r1.y = r1.y + -r8.z;
  r1.y = cmp(2.4000001 < abs(r1.y));
  r1.z = x0[0].x;
  r1.z = -r1.z * 0.5 + 1;
  r1.y = r1.y ? 0.5 : r1.z;
  r1.z = x2[1].x;
  r1.z = r1.z + -r8.z;
  r1.z = cmp(2.4000001 < abs(r1.z));
  r1.w = x0[1].x;
  r1.w = 0.5 * r1.w;
  r1.z = r1.z ? -0.5 : -r1.w;
  r1.y = r1.y + r1.z;
  r1.y = saturate(1 + -r1.y);
  r1.z = r1.y * -2 + 3;
  r1.y = r1.y * r1.y;
  r1.y = r1.z * r1.y;
  r1.y = min(r37.y, r1.y);
  r1.y = r37.x * r1.y;
  r1.yzw = r1.yyy * r32.xyz;
  r3.xyz = r1.yzw * r34.xyz + r29.xyz;
  r4.xyz = r1.yzw * r35.xyz + r31.xyz;
  r1.yzw = r1.yzw * r36.xyz + r30.xyz;
  r2.w = 1 + -r2.y;
  r3.w = 5 * r2.w;
  r4.w = r2.w * 5 + -2.5;
  r4.w = 0.400000006 * r4.w;
  r4.w = max(0, r4.w);
  r4.w = 100 * r4.w;
  r7.xy = -r2.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r7.x = exp2(r7.x);
  r7.x = r7.x * r2.x;
  r7.z = r3.w * r2.w;
  r7.y = -r7.z * 2.0159049 + r7.y;
  r7.y = exp2(r7.y);
  r7.y = r7.y * r2.x;
  r7.xy = float2(9.1368103,9.70808983) * r7.xy;
  r7.x = max(r7.x, r7.y);
  r7.x = max(1.26815999, r7.x);
  r7.yzw = r14.zxy * r9.xyz;
  r7.yzw = r9.zxy * r14.xyz + -r7.yzw;
  r8.xyz = r14.zxy * r7.yzw;
  r7.yzw = r14.yzx * r7.zwy + -r8.xyz;
  r7.yzw = r7.yzw + -r6.xyz;
  r7.yzw = anisotropy * r7.yzw + r6.xyz;
  r8.x = dot(r7.yzw, r7.yzw);
  r8.x = rsqrt(r8.x);
  r7.yzw = r8.xxx * r7.yzw;
  r8.x = dot(-r9.xyz, r7.yzw);
  r8.x = r8.x + r8.x;
  r8.xyz = r7.yzw * -r8.xxx + -r9.xyz;
  r7.y = numRefProbes + -numOverrideProbes;
  r7.z = (int)r7.y & -32;
  r7.w = (int)-r7.z + (int)r7.y;
  r9.w = numRefProbes & -32;
  r10.x = (int)-r9.w + numRefProbes;
  r10.yzw = r14.xyz * r14.xyz;
  r11.xy = float2(0,0);
  r12.w = 0;
  r13.yz = float2(0,1);
  r14.x = 1;
  r15.xyzw = float4(0,0,0,0);
  r16.yzw = float3(0,0,0);
  r11.w = r7.z;
  while (true) {
    r13.w = cmp((uint)r11.w >= numRefProbes);
    if (r13.w != 0) break;
    r11.z = (uint)r11.w >> 5;
    r12.xyz = (int3)r11.xyz + (int3)r19.xyz;
    r11.z = visibleProbes.Load(r12.xyzw).x;
    r12.x = cmp((int)r7.z == (int)r11.w);
    bitmask.y = ((~(-1 << r7.w)) << 0) & 0xffffffff;  r12.y = (((uint)0 << 0) & bitmask.y) | ((uint)r11.z & ~bitmask.y);
    r11.z = r12.x ? r12.y : r11.z;
    r12.x = cmp((int)r9.w == (int)r11.w);
    if (r10.x == 0) r12.y = 0; else if (r10.x+0 < 32) {     r12.y = (uint)r11.z << (32-(r10.x + 0)); r12.y = (uint)r12.y >> (32-r10.x);    } else r12.y = (uint)r11.z >> 0;
    r11.z = r12.x ? r12.y : r11.z;
    r12.x = (int)r11.w + numLights;
    r17.xyzw = r15.xyzw;
    r18.xyz = r16.yzw;
    r12.y = r11.z;
    while (true) {
      if (r12.y == 0) break;
      r12.z = firstbitlow((uint)r12.y);
      r13.w = 1 << (int)r12.z;
      r14.z = (int)r12.y & (int)r13.w;
      if (r14.z != 0) {
        r12.y = (int)r12.y ^ (int)r13.w;
        r13.w = (int)r12.z + (int)r12.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r20.xyzw, r13.w, l(0), t11.xyzw
      r20.x = samp0[]..swiz;
      r20.y = samp0[]..swiz;
      r20.z = samp0[]..swiz;
      r20.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r21.xy, r13.w, l(16), t11.xyxx
      r21.x = samp0[]..swiz;
      r21.y = samp0[]..swiz;
        r20.xyz = -v5.xyz + r20.xyz;
        r21.z = r20.w;
        r20.xyz = cmp(abs(r20.xyz) < r21.zxy);
        r13.w = r20.y ? r20.x : 0;
        r13.w = r20.z ? r13.w : 0;
        if (r13.w != 0) {
          r12.z = (int)r11.w + (int)r12.z;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r20.xyzw, r12.z, l(0), t15.wxyz
        r20.x = samp0[]..swiz;
        r20.y = samp0[]..swiz;
        r20.z = samp0[]..swiz;
        r20.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r14.zw, r12.z, l(96), t15.xxxy
        r14.z = samp0[]..swiz;
        r14.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r21.xyzw, r12.z, l(116), t15.zwxy
        r21.x = samp0[]..swiz;
        r21.y = samp0[]..swiz;
        r21.z = samp0[]..swiz;
        r21.w = samp0[]..swiz;
          r22.xyz = v5.xyz + -r20.yzw;
          r13.w = (int)r21.w & 0x0000ffff;
          if (6 == 0) r19.w = 0; else if (6+25 < 32) {           r19.w = (uint)r21.w << (32-(6 + 25)); r19.w = (uint)r19.w >> (32-6);          } else r19.w = (uint)r21.w >> 25;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r23.xyzw, r13.w, l(0), t16.xyzw
        r23.x = samp0[]..swiz;
        r23.y = samp0[]..swiz;
        r23.z = samp0[]..swiz;
        r23.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r24.xyzw, r13.w, l(16), t16.xyzw
        r24.x = samp0[]..swiz;
        r24.y = samp0[]..swiz;
        r24.z = samp0[]..swiz;
        r24.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r25.xyzw, r13.w, l(32), t16.xyzw
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        r25.z = samp0[]..swiz;
        r25.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r13.w, l(48), t16.xyzw
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
        r26.z = samp0[]..swiz;
        r26.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r13.w, l(64), t16.xyzw
        r27.x = samp0[]..swiz;
        r27.y = samp0[]..swiz;
        r27.z = samp0[]..swiz;
        r27.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r13.w, l(80), t16.xyzw
        r28.x = samp0[]..swiz;
        r28.y = samp0[]..swiz;
        r28.z = samp0[]..swiz;
        r28.w = samp0[]..swiz;
          r20.w = dot(r23.xyz, r22.xyz);
          r20.w = saturate(r20.w + r23.w);
          r22.w = dot(r24.xyz, r22.xyz);
          r22.w = saturate(r22.w + r24.w);
          r20.w = r22.w * r20.w;
          r22.w = dot(r25.xyz, r22.xyz);
          r22.w = saturate(r22.w + r25.w);
          r20.w = r22.w * r20.w;
          r22.w = dot(r26.xyz, r22.xyz);
          r22.w = saturate(r22.w + r26.w);
          r20.w = r22.w * r20.w;
          r22.w = dot(r27.xyz, r22.xyz);
          r22.w = saturate(r22.w + r27.w);
          r20.w = r22.w * r20.w;
          r22.w = dot(r28.xyz, r22.xyz);
          r22.w = saturate(r22.w + r28.w);
          r13.x = r22.w * r20.w;
          r20.w = (int)r14.z & 1;
          r23.xy = r20.ww ? r13.xy : r13.zx;
          r13.x = r14.z;
          r24.xy = r23.xy;
          r20.w = 1;
          while (true) {
            r22.w = cmp((int)r20.w >= (int)r19.w);
            if (r22.w != 0) break;
            r22.w = (int)r13.w + (int)r20.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r25.xyzw, r22.w, l(0), t16.xyzw
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r22.w, l(16), t16.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r22.w, l(32), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r22.w, l(48), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r22.w, l(64), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r22.w, l(80), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
            r22.w = dot(r25.xyz, r22.xyz);
            r22.w = saturate(r22.w + r25.w);
            r22.w = r24.x * r22.w;
            r23.z = dot(r26.xyz, r22.xyz);
            r23.z = saturate(r23.z + r26.w);
            r22.w = r23.z * r22.w;
            r23.z = dot(r27.xyz, r22.xyz);
            r23.z = saturate(r23.z + r27.w);
            r22.w = r23.z * r22.w;
            r23.z = dot(r28.xyz, r22.xyz);
            r23.z = saturate(r23.z + r28.w);
            r22.w = r23.z * r22.w;
            r23.z = dot(r29.xyz, r22.xyz);
            r23.z = saturate(r23.z + r29.w);
            r22.w = r23.z * r22.w;
            r23.z = dot(r30.xyz, r22.xyz);
            r23.z = saturate(r23.z + r30.w);
            r24.x = r23.z * r22.w;
            r23.w = (uint)r13.x >> 2;
            if (1 == 0) r24.z = 0; else if (1+2 < 32) {             r24.z = (uint)r13.x << (32-(1 + 2)); r24.z = (uint)r24.z >> (32-1);            } else r24.z = (uint)r13.x >> 2;
            r24.w = (int)r23.w & 2;
            r25.x = max(r24.y, r24.x);
            r22.w = -r22.w * r23.z + 1;
            r22.w = r24.y * r22.w;
            r14.y = r24.w ? r22.w : r25.x;
            r24.xy = r24.zz ? r24.xy : r14.xy;
            r20.w = (int)r20.w + 1;
            r13.x = r23.w;
          }
          r24.y = saturate(r24.y);
          r13.x = r24.y * r14.w;
          r13.w = cmp(0 < r13.x);
          if (r13.w != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r12.z, l(16), t15.xyzw
          r23.x = samp0[]..swiz;
          r23.y = samp0[]..swiz;
          r23.z = samp0[]..swiz;
          r23.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r12.z, l(32), t15.yxwz
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r12.z, l(48), t15.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r12.z, l(64), t15.zwxy
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r12.z, l(80), t15.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r12.z, l(132), t15.zwxy
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r12.z, l(148), t15.zwxy
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r12.z, l(164), t15.zwxy
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r12.z, l(180), t15.zwxy
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r12.z, l(196), t15.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xy, r12.z, l(212), t15.xyxx
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
            r18.z = r24.y * r14.w + r18.z;
            r12.z = r13.x * r21.z;
            r21.z = r29.z;
            r13.x = dot(r8.xyz, r21.xyz);
            r13.w = dot(r22.xyz, r21.xyz);
            r13.w = r13.w + -r29.w;
            r14.y = cmp(r13.w >= 0);
            r13.w = max(abs(r13.w), r4.w);
            r13.w = r14.y ? r13.w : -r13.w;
            r13.x = max(1.00000001e-07, -r13.x);
            r13.x = r13.w / r13.x;
            r13.x = min(131072, abs(r13.x));
            r29.z = r30.z;
            r13.w = dot(r8.xyz, r29.xyz);
            r14.y = dot(r22.xyz, r29.xyz);
            r14.y = r14.y + -r30.w;
            r14.z = cmp(r14.y >= 0);
            r14.y = max(abs(r14.y), r4.w);
            r14.y = r14.z ? r14.y : -r14.y;
            r13.w = max(1.00000001e-07, -r13.w);
            r13.w = r14.y / r13.w;
            r13.x = min(r13.x, abs(r13.w));
            r30.z = r31.z;
            r13.w = dot(r8.xyz, r30.xyz);
            r14.y = dot(r22.xyz, r30.xyz);
            r14.y = r14.y + -r31.w;
            r14.z = cmp(r14.y >= 0);
            r14.y = max(abs(r14.y), r4.w);
            r14.y = r14.z ? r14.y : -r14.y;
            r13.w = max(1.00000001e-07, -r13.w);
            r13.w = r14.y / r13.w;
            r13.x = min(r13.x, abs(r13.w));
            r31.z = r32.z;
            r13.w = dot(r8.xyz, r31.xyz);
            r14.y = dot(r22.xyz, r31.xyz);
            r14.y = r14.y + -r32.w;
            r14.z = cmp(r14.y >= 0);
            r14.y = max(abs(r14.y), r4.w);
            r14.y = r14.z ? r14.y : -r14.y;
            r13.w = max(1.00000001e-07, -r13.w);
            r13.w = r14.y / r13.w;
            r13.x = min(r13.x, abs(r13.w));
            r32.z = r33.x;
            r13.w = dot(r8.xyz, r32.xyz);
            r14.y = dot(r22.xyz, r32.xyz);
            r14.y = r14.y + -r33.y;
            r14.z = cmp(r14.y >= 0);
            r14.y = max(abs(r14.y), r4.w);
            r14.y = r14.z ? r14.y : -r14.y;
            r13.w = max(1.00000001e-07, -r13.w);
            r13.w = r14.y / r13.w;
            r13.x = min(r13.x, abs(r13.w));
            r34.zw = r33.zw;
            r13.w = dot(r8.zxy, r34.xzw);
            r14.y = dot(r22.zxy, r34.xzw);
            r14.y = r14.y + -r34.y;
            r14.z = cmp(r14.y >= 0);
            r14.y = max(abs(r14.y), r4.w);
            r14.y = r14.z ? r14.y : -r14.y;
            r13.w = max(1.00000001e-07, -r13.w);
            r13.w = r14.y / r13.w;
            r13.x = min(r13.x, abs(r13.w));
            r21.x = r26.w;
            r21.yz = r27.zw;
            r14.yzw = r21.xyz + r22.xyz;
            r14.yzw = r8.xyz * r13.xxx + r14.yzw;
            r13.w = dot(r14.yzw, r14.yzw);
            r13.w = sqrt(r13.w);
            r13.x = r13.x / r13.w;
            r13.x = r13.x + r13.x;
            r13.x = sqrt(r13.x);
            r13.x = r2.w * 5 + r13.x;
            r13.x = -0.844799995 + r13.x;
            r20.y = r23.z;
            r20.z = r25.x;
            r29.x = dot(r14.yzw, r20.xyz);
            r21.xy = r23.xw;
            r21.z = r25.w;
            r29.y = dot(r14.yzw, r21.xyz);
            r25.x = r23.y;
            r29.z = dot(r14.yzw, r25.xyz);
            if (9 == 0) r13.w = 0; else if (9+16 < 32) {             r13.w = (uint)r21.w << (32-(9 + 16)); r13.w = (uint)r13.w >> (32-9);            } else r13.w = (uint)r21.w >> 16;
            r29.w = (uint)r13.w;
            r14.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r29.xyzw, r13.x).xyz;
            r23.x = dot(r22.xyz, r20.xyz);
            r23.y = dot(r22.xyz, r21.xyz);
            r23.z = dot(r22.xyz, r25.xyz);
            r22.xyz = saturate(r23.xyz * r26.xyz + float3(0.5,0.5,0.5));
            r27.z = r28.x;
            r22.xyz = r22.xyz * r27.xyz + r28.yzw;
            r29.x = dot(r6.xyz, r20.xyz);
            r29.y = dot(r6.xyz, r21.xyz);
            r29.z = dot(r6.xyz, r25.xyz);
            r20.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r22.xyz, 0).xyz;
            r21.xyz = float3(0,0,0.5) + r22.xyz;
            r23.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r21.xyz, 0).xyz;
            r24.xzw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r22.xyz, 0).xyz;
            r25.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r21.xyz, 0).xyz;
            r22.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r22.xyz, 0).xyz;
            r21.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r21.xyz, 0).xyz;
            r26.xyz = r25.xyz + r24.xzw;
            r26.xyz = r26.xyz + r22.xyz;
            r26.xyz = r26.xyz + r21.xyz;
            r26.xyz = r26.xyz * r10.yyy;
            r20.xyz = r23.xyz + r20.xyz;
            r22.xyz = r20.xyz + r22.xyz;
            r21.xyz = r22.xyz + r21.xyz;
            r21.xyz = r21.xyz * r10.zzz;
            r20.xyz = r20.xyz + r24.xzw;
            r20.xyz = r20.xyz + r25.xyz;
            r20.xyz = r20.xyz * r10.www;
            r21.xyz = float3(0.25,0.25,0.25) * r21.xyz;
            r21.xyz = r26.xyz * float3(0.25,0.25,0.25) + r21.xyz;
            r20.xyz = r20.xyz * float3(0.25,0.25,0.25) + r21.xyz;
            r20.xyz = r20.xyz * r12.zzz;
            r21.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r29.xyzw, 6).xyz;
            r22.xyz = r21.xyz * r20.xyz;
            r13.x = dot(r22.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r17.xyz = r20.xyz * r21.xyz + r17.xyz;
            r13.w = r13.x * r7.x;
            r14.yzw = r14.yzw * r12.zzz;
            r12.z = dot(r14.yzw, float3(0.212599993,0.715200007,0.0722000003));
            r12.z = r7.x * r13.x + r12.z;
            r12.z = r13.w / r12.z;
            r20.x = r17.w;
            r20.yz = r18.xy;
            r18.xyw = r14.zwy * r12.zzz + r20.yzx;
            r17.w = r18.w;
          }
        }
      }
    }
    r15.xyzw = r17.xyzw;
    r16.yzw = r18.xyz;
    r11.w = (int)r11.w + 32;
  }
  r9.w = cmp(r16.w < 1);
  if (r9.w != 0) {
    r11.xy = float2(0,0);
    r12.w = 0;
    r13.yz = float2(0,1);
    r14.x = 1;
    r17.x = r15.w;
    r17.yzw = r16.yzw;
    r18.xyz = r15.xyz;
    r9.w = r16.w;
    r10.x = 0;
    while (true) {
      r11.w = cmp((uint)r10.x >= (uint)r7.y);
      if (r11.w != 0) break;
      r11.z = (uint)r10.x >> 5;
      r12.xyz = (int3)r11.xyz + (int3)r19.xyz;
      r11.z = visibleProbes.Load(r12.xyzw).x;
      r11.w = cmp((int)r7.z == (int)r10.x);
      if (r7.w == 0) r12.x = 0; else if (r7.w+0 < 32) {       r12.x = (uint)r11.z << (32-(r7.w + 0)); r12.x = (uint)r12.x >> (32-r7.w);      } else r12.x = (uint)r11.z >> 0;
      r11.z = r11.w ? r12.x : r11.z;
      r11.w = (int)r10.x + numLights;
      r20.xyzw = r17.xyzw;
      r12.xyz = r18.xyz;
      r13.w = r9.w;
      r14.z = r11.z;
      while (true) {
        if (r14.z == 0) break;
        r14.w = firstbitlow((uint)r14.z);
        r18.w = 1 << (int)r14.w;
        r19.w = (int)r14.z & (int)r18.w;
        if (r19.w != 0) {
          r14.z = (int)r14.z ^ (int)r18.w;
          r18.w = (int)r11.w + (int)r14.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r21.xyzw, r18.w, l(0), t11.xyzw
        r21.x = samp0[]..swiz;
        r21.y = samp0[]..swiz;
        r21.z = samp0[]..swiz;
        r21.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r22.xy, r18.w, l(16), t11.xyxx
        r22.x = samp0[]..swiz;
        r22.y = samp0[]..swiz;
          r21.xyz = -v5.xyz + r21.xyz;
          r22.z = r21.w;
          r21.xyz = cmp(abs(r21.xyz) < r22.zxy);
          r18.w = r21.y ? r21.x : 0;
          r18.w = r21.z ? r18.w : 0;
          if (r18.w != 0) {
            r14.w = (int)r10.x + (int)r14.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r21.xyzw, r14.w, l(0), t15.wxyz
          r21.x = samp0[]..swiz;
          r21.y = samp0[]..swiz;
          r21.z = samp0[]..swiz;
          r21.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xy, r14.w, l(96), t15.xyxx
          r22.x = samp0[]..swiz;
          r22.y = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r14.w, l(116), t15.zwxy
          r23.x = samp0[]..swiz;
          r23.y = samp0[]..swiz;
          r23.z = samp0[]..swiz;
          r23.w = samp0[]..swiz;
            r24.xyz = v5.xyz + -r21.yzw;
            r18.w = (int)r23.w & 0x0000ffff;
            if (6 == 0) r19.w = 0; else if (6+25 < 32) {             r19.w = (uint)r23.w << (32-(6 + 25)); r19.w = (uint)r19.w >> (32-6);            } else r19.w = (uint)r23.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r25.xyzw, r18.w, l(0), t16.xyzw
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r18.w, l(16), t16.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r18.w, l(32), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r18.w, l(48), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r18.w, l(64), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r18.w, l(80), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
            r21.w = dot(r25.xyz, r24.xyz);
            r21.w = saturate(r21.w + r25.w);
            r22.z = dot(r26.xyz, r24.xyz);
            r22.z = saturate(r22.z + r26.w);
            r21.w = r22.z * r21.w;
            r22.z = dot(r27.xyz, r24.xyz);
            r22.z = saturate(r22.z + r27.w);
            r21.w = r22.z * r21.w;
            r22.z = dot(r28.xyz, r24.xyz);
            r22.z = saturate(r22.z + r28.w);
            r21.w = r22.z * r21.w;
            r22.z = dot(r29.xyz, r24.xyz);
            r22.z = saturate(r22.z + r29.w);
            r21.w = r22.z * r21.w;
            r22.z = dot(r30.xyz, r24.xyz);
            r22.z = saturate(r22.z + r30.w);
            r13.x = r22.z * r21.w;
            r21.w = (int)r22.x & 1;
            r22.zw = r21.ww ? r13.xy : r13.zx;
            r13.x = r22.x;
            r25.xy = r22.zw;
            r21.w = 1;
            while (true) {
              r24.w = cmp((int)r21.w >= (int)r19.w);
              if (r24.w != 0) break;
              r24.w = (int)r18.w + (int)r21.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r24.w, l(0), t16.xyzw
            r26.x = samp0[]..swiz;
            r26.y = samp0[]..swiz;
            r26.z = samp0[]..swiz;
            r26.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r24.w, l(16), t16.xyzw
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r24.w, l(32), t16.xyzw
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r24.w, l(48), t16.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r24.w, l(64), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r24.w, l(80), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
              r24.w = dot(r26.xyz, r24.xyz);
              r24.w = saturate(r24.w + r26.w);
              r24.w = r25.x * r24.w;
              r25.z = dot(r27.xyz, r24.xyz);
              r25.z = saturate(r25.z + r27.w);
              r24.w = r25.z * r24.w;
              r25.z = dot(r28.xyz, r24.xyz);
              r25.z = saturate(r25.z + r28.w);
              r24.w = r25.z * r24.w;
              r25.z = dot(r29.xyz, r24.xyz);
              r25.z = saturate(r25.z + r29.w);
              r24.w = r25.z * r24.w;
              r25.z = dot(r30.xyz, r24.xyz);
              r25.z = saturate(r25.z + r30.w);
              r24.w = r25.z * r24.w;
              r25.z = dot(r31.xyz, r24.xyz);
              r25.z = saturate(r25.z + r31.w);
              r25.x = r25.z * r24.w;
              r25.w = (uint)r13.x >> 2;
              if (1 == 0) r26.x = 0; else if (1+2 < 32) {               r26.x = (uint)r13.x << (32-(1 + 2)); r26.x = (uint)r26.x >> (32-1);              } else r26.x = (uint)r13.x >> 2;
              r26.y = (int)r25.w & 2;
              r26.z = max(r25.y, r25.x);
              r24.w = -r24.w * r25.z + 1;
              r24.w = r25.y * r24.w;
              r14.y = r26.y ? r24.w : r26.z;
              r25.xy = r26.xx ? r25.xy : r14.xy;
              r21.w = (int)r21.w + 1;
              r13.x = r25.w;
            }
            r13.x = saturate(r25.y + -r13.w);
            r14.y = r13.x * r22.y;
            r18.w = cmp(0 < r14.y);
            if (r18.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r14.w, l(16), t15.xyzw
            r26.x = samp0[]..swiz;
            r26.y = samp0[]..swiz;
            r26.z = samp0[]..swiz;
            r26.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r14.w, l(32), t15.yxwz
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r14.w, l(48), t15.xyzw
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r14.w, l(64), t15.zwxy
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r14.w, l(80), t15.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r14.w, l(132), t15.zwxy
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r14.w, l(148), t15.zwxy
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r14.w, l(164), t15.zwxy
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r14.w, l(180), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r14.w, l(196), t15.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xy, r14.w, l(212), t15.xyxx
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
              r20.w = r13.x * r22.y + r20.w;
              r13.x = r14.y * r23.z;
              r23.z = r31.z;
              r14.y = dot(r8.xyz, r23.xyz);
              r14.w = dot(r24.xyz, r23.xyz);
              r14.w = r14.w + -r31.w;
              r18.w = cmp(r14.w >= 0);
              r14.w = max(abs(r14.w), r4.w);
              r14.w = r18.w ? r14.w : -r14.w;
              r14.y = max(1.00000001e-07, -r14.y);
              r14.y = r14.w / r14.y;
              r14.y = min(131072, abs(r14.y));
              r31.z = r32.z;
              r14.w = dot(r8.xyz, r31.xyz);
              r18.w = dot(r24.xyz, r31.xyz);
              r18.w = r18.w + -r32.w;
              r19.w = cmp(r18.w >= 0);
              r18.w = max(abs(r18.w), r4.w);
              r18.w = r19.w ? r18.w : -r18.w;
              r14.w = max(1.00000001e-07, -r14.w);
              r14.w = r18.w / r14.w;
              r14.y = min(r14.y, abs(r14.w));
              r32.z = r33.z;
              r14.w = dot(r8.xyz, r32.xyz);
              r18.w = dot(r24.xyz, r32.xyz);
              r18.w = r18.w + -r33.w;
              r19.w = cmp(r18.w >= 0);
              r18.w = max(abs(r18.w), r4.w);
              r18.w = r19.w ? r18.w : -r18.w;
              r14.w = max(1.00000001e-07, -r14.w);
              r14.w = r18.w / r14.w;
              r14.y = min(r14.y, abs(r14.w));
              r33.z = r34.z;
              r14.w = dot(r8.xyz, r33.xyz);
              r18.w = dot(r24.xyz, r33.xyz);
              r18.w = r18.w + -r34.w;
              r19.w = cmp(r18.w >= 0);
              r18.w = max(abs(r18.w), r4.w);
              r18.w = r19.w ? r18.w : -r18.w;
              r14.w = max(1.00000001e-07, -r14.w);
              r14.w = r18.w / r14.w;
              r14.y = min(r14.y, abs(r14.w));
              r34.z = r35.x;
              r14.w = dot(r8.xyz, r34.xyz);
              r18.w = dot(r24.xyz, r34.xyz);
              r18.w = r18.w + -r35.y;
              r19.w = cmp(r18.w >= 0);
              r18.w = max(abs(r18.w), r4.w);
              r18.w = r19.w ? r18.w : -r18.w;
              r14.w = max(1.00000001e-07, -r14.w);
              r14.w = r18.w / r14.w;
              r14.y = min(r14.y, abs(r14.w));
              r36.zw = r35.zw;
              r14.w = dot(r8.zxy, r36.xzw);
              r18.w = dot(r24.zxy, r36.xzw);
              r18.w = r18.w + -r36.y;
              r19.w = cmp(r18.w >= 0);
              r18.w = max(abs(r18.w), r4.w);
              r18.w = r19.w ? r18.w : -r18.w;
              r14.w = max(1.00000001e-07, -r14.w);
              r14.w = r18.w / r14.w;
              r14.y = min(r14.y, abs(r14.w));
              r22.x = r28.w;
              r22.yz = r29.zw;
              r22.xyz = r22.xyz + r24.xyz;
              r22.xyz = r8.xyz * r14.yyy + r22.xyz;
              r14.w = dot(r22.xyz, r22.xyz);
              r14.w = sqrt(r14.w);
              r14.y = r14.y / r14.w;
              r14.y = r14.y + r14.y;
              r14.y = sqrt(r14.y);
              r14.y = r2.w * 5 + r14.y;
              r14.y = -0.844799995 + r14.y;
              r21.y = r26.z;
              r21.z = r27.x;
              r31.x = dot(r22.xyz, r21.xyz);
              r23.xy = r26.xw;
              r23.z = r27.w;
              r31.y = dot(r22.xyz, r23.xyz);
              r27.x = r26.y;
              r31.z = dot(r22.xyz, r27.xyz);
              if (9 == 0) r14.w = 0; else if (9+16 < 32) {               r14.w = (uint)r23.w << (32-(9 + 16)); r14.w = (uint)r14.w >> (32-9);              } else r14.w = (uint)r23.w >> 16;
              r31.w = (uint)r14.w;
              r22.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r31.xyzw, r14.y).xyz;
              r26.x = dot(r24.xyz, r21.xyz);
              r26.y = dot(r24.xyz, r23.xyz);
              r26.z = dot(r24.xyz, r27.xyz);
              r24.xyz = saturate(r26.xyz * r28.xyz + float3(0.5,0.5,0.5));
              r29.z = r30.x;
              r24.xyz = r24.xyz * r29.xyz + r30.yzw;
              r31.x = dot(r6.xyz, r21.xyz);
              r31.y = dot(r6.xyz, r23.xyz);
              r31.z = dot(r6.xyz, r27.xyz);
              r21.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r24.xyz, 0).xyz;
              r23.xyz = float3(0,0,0.5) + r24.xyz;
              r25.xzw = gProbeXArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
              r26.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r24.xyz, 0).xyz;
              r27.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
              r24.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r24.xyz, 0).xyz;
              r23.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
              r28.xyz = r27.xyz + r26.xyz;
              r28.xyz = r28.xyz + r24.xyz;
              r28.xyz = r28.xyz + r23.xyz;
              r28.xyz = r28.xyz * r10.yyy;
              r21.xyz = r25.xzw + r21.xyz;
              r24.xyz = r21.xyz + r24.xyz;
              r23.xyz = r24.xyz + r23.xyz;
              r23.xyz = r23.xyz * r10.zzz;
              r21.xyz = r21.xyz + r26.xyz;
              r21.xyz = r21.xyz + r27.xyz;
              r21.xyz = r21.xyz * r10.www;
              r23.xyz = float3(0.25,0.25,0.25) * r23.xyz;
              r23.xyz = r28.xyz * float3(0.25,0.25,0.25) + r23.xyz;
              r21.xyz = r21.xyz * float3(0.25,0.25,0.25) + r23.xyz;
              r21.xyz = r21.xyz * r13.xxx;
              r23.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r31.xyzw, 6).xyz;
              r24.xyz = r23.xyz * r21.xyz;
              r14.y = dot(r24.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r12.xyz = r21.xyz * r23.xyz + r12.xyz;
              r14.w = r14.y * r7.x;
              r21.xyz = r22.xyz * r13.xxx;
              r13.x = dot(r21.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r13.x = r7.x * r14.y + r13.x;
              r13.x = r14.w / r13.x;
              r20.xyz = r21.xyz * r13.xxx + r20.xyz;
            }
          }
        }
      }
      r17.xyzw = r20.xyzw;
      r18.xyz = r12.xyz;
      r10.x = (int)r10.x + 32;
    }
    r16.xyzw = r17.zxyw;
    r15.xyz = r18.xyz;
    r16.xyzw = r16.yzxw;
  } else {
    r16.x = r15.w;
  }
  r2.w = max(1, r16.w);
  r2.w = rcp(r2.w);
  r16.w = saturate(r16.w);
  r7.xyz = r15.xyz * r2.www;
  r11.xyz = r16.xyz * r2.www;
  r4.w = cmp(r16.w < 0.99000001);
  if (r4.w != 0) {
    r4.w = 1 + -r16.w;
    r7.w = sunConstants.globalProbeExposure * r4.w;
    r12.xyz = -globalProbeConstants.data[0].xyz + v5.xyz;
    r13.x = globalProbeConstants.data[0].w * r12.x;
    r13.yz = globalProbeConstants.data[1].xy * r12.yz;
    r12.xyz = saturate(float3(0.5,0.5,0.5) + r13.xyz);
    r13.xy = globalProbeConstants.data[1].zw * r12.xy;
    r13.z = globalProbeConstants.data[2].x * r12.z;
    r12.xyz = globalProbeConstants.data[2].yzw + r13.xyz;
    r13.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r12.xyz, 0).xyz;
    r14.xyz = float3(0,0,0.5) + r12.xyz;
    r16.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r14.xyz, 0).xyz;
    r17.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r12.xyz, 0).xyz;
    r18.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r14.xyz, 0).xyz;
    r12.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r12.xyz, 0).xyz;
    r14.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r14.xyz, 0).xyz;
    r19.xyz = r18.xyz + r17.xyz;
    r19.xyz = r19.xyz + r12.xyz;
    r19.xyz = r19.xyz + r14.xyz;
    r19.xyz = r19.xyz * r10.yyy;
    r13.xyz = r16.xyz + r13.xyz;
    r12.xyz = r13.xyz + r12.xyz;
    r12.xyz = r12.xyz + r14.xyz;
    r10.xyz = r12.xyz * r10.zzz;
    r12.xyz = r13.xyz + r17.xyz;
    r12.xyz = r12.xyz + r18.xyz;
    r12.xyz = r12.xyz * r10.www;
    r10.xyz = float3(0.25,0.25,0.25) * r10.xyz;
    r10.xyz = r19.xyz * float3(0.25,0.25,0.25) + r10.xyz;
    r10.xyz = r12.xyz * float3(0.25,0.25,0.25) + r10.xyz;
    r10.xyz = r10.xyz * r7.www;
    r6.w = 0;
    r6.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r6.xyzw, 6).xyz;
    r6.xyz = r10.xyz * r6.xyz;
    r6.w = dot(r6.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r7.xyz = r15.xyz * r2.www + r6.xyz;
    r8.w = 0;
    r6.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r8.xyzw, r3.w).xyz;
    r2.w = sunConstants.globalProbeExposure * r4.w + -r6.w;
    r2.w = r2.y * r2.w + r6.w;
    r11.xyz = r6.xyz * r2.www + r11.xyz;
  }
  r3.xyz = r7.xyz * r1.xxx + r3.xyz;
  r2.xy = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r2.xy = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r2.xy, 0).xy;
  r6.xyz = r11.xyz * r1.xxx;
  r1.xyz = r6.xyz * r2.xxx + r1.yzw;
  r2.xyw = r6.xyz * r2.yyy + r4.xyz;
  r1.w = 0.0399999991 * r2.z;
  r2.z = -r2.z * 0.0399999991 + 1;
  r1.xyz = r2.zzz * r1.xyz;
  r1.xyz = r2.xyw * r1.www + r1.xyz;
  r0.xyz = r3.xyz * r0.xyz + r1.xyz;
  if (useAlphaControls != 0) {
    r1.x = dot(r5.xyz, r9.xyz);
    r1.yzw = cmp(falloffBegin == float3(0,0,0));
    r1.y = r1.z ? r1.y : 0;
    r2.xy = float2(0.0174532924,0.0174532924) * falloffBegin;
    r2.xy = cos(r2.xy);
    r2.yz = r2.xy * r2.xy;
    r1.z = r2.x * r2.x + -r2.z;
    r3.x = 1 / r1.z;
    r3.y = -r2.y * r3.x + 1;
    r1.yz = r1.yy ? float2(0,1) : r3.xy;
    r1.x = abs(r1.x) * abs(r1.x);
    r1.x = saturate(r1.x * r1.y + r1.z);
    r1.x = r1.x * r0.w;
    r2.xy = (int2)v0.xy;
    r2.zw = float2(0,0);
    r1.y = floatZSampler.Load(r2.xyz).x;
    r1.z = cmp(r1.y >= 0.984375);
    r2.x = 1.01587307 * r1.y;
    r1.y = r1.y * 64 + -63;
    r1.y = r1.z ? r1.y : r2.x;
    r1.y = max(9.99999994e-09, r1.y);
    r1.y = rcp(r1.y);
    r1.z = 1 / zFeatherDistance;
    r1.z = r1.w ? 60000 : r1.z;
    r1.y = r1.y + -r5.w;
    r1.y = saturate(r1.y * r1.z);
    o0.w = r1.x * r1.y;
  } else {
    o0.w = r0.w;
  }
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