// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:23:50 2021

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

cbuffer LightingPackCBuffer : register(b9)
{

  struct
  {
    uint4 data[15];
  } lightConstantsCB[273] : packoffset(c0);

}

SamplerState samplerLinear_s : register(s2);
SamplerState samplerLinearClamp_s : register(s4);
SamplerComparisonState ShadowSamplerComparisonState_s : register(s13);
Texture2D<float4> GBufferDiffuseColor : register(t0);
Texture2D<float4> GBufferNormalAndGloss : register(t1);
Texture2D<float4> GBufferSpecularColorAndOcclusion : register(t2);
Texture2D<float> GBufferDepth : register(t4);
Texture2D<float2> gEnvBRDFGeneric : register(t5);
TextureCubeArray<float3> gReflectionProbeArray : register(t8);
Texture2DArray<float> gSpotShadowmapArray : register(t9);
TextureCubeArray<float> gOmniShadowmapArray : register(t10);
Texture3D<float3> gProbeXArray : register(t17);
Texture3D<float3> gProbeYArray : register(t18);
Texture3D<float3> gProbeZArray : register(t19);
Texture2DArray<float4> gCookieArray : register(t20);
StructuredBuffer<gPermutedTilingBuffer> gPermutedTilingBuffer : register(t25);
Texture2D<float> gSSAOTexture : register(t27);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main()
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
// unknown dcl_: dcl_resource_structured t25, 8
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_structured u2, 1792
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_raw g0, 4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_raw g1, 20
// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_raw g2, 20
// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  if (vThreadIDInGroupFlattened.x == 0) {
  // No code for instruction (needs manual fix):
    store_raw g0.x, l(0), l(0)
  // No code for instruction (needs manual fix):
    store_raw g1.xyzw, l(0), l(0,0,0,0)
  // No code for instruction (needs manual fix):
    store_raw g1.x, l(16), l(0)
  // No code for instruction (needs manual fix):
    store_raw g2.xyzw, l(0), l(0,0,0,0)
  // No code for instruction (needs manual fix):
    store_raw g2.x, l(16), l(0)
  }
  GroupMemoryBarrierWithGroupSync();
  r0.x = mad(permuteStride, 55, (int)vThreadGroupID.x);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=8)(mixed,mixed,mixed,mixed) r0.xy, r0.x, l(0), t25.xyxx
r0.x = samplerLinear[]..swiz;
r0.y = samplerLinear[]..swiz;
  r0.yz = (int2)r0.xy & int2(4095,4095);
  r1.xy = mad((int2)r0.yz, int2(8,8), (int2)vThreadIDInGroup.xy);
  r1.zw = float2(0,0);
  r2.xyzw = GBufferNormalAndGloss.Load(r1.xyw).xyzw;
  r3.xy = (uint2)renderTargetSize.xy;
  r3.xy = cmp((uint2)r1.xy < (uint2)r3.xy);
  r0.w = r3.y ? r3.x : 0;
  r3.x = cmp(0 < r2.z);
  r0.w = r3.x ? r0.w : 0;
  if (r0.w == 0) {
    return;
  }
  r3.xyzw = GBufferSpecularColorAndOcclusion.Load(r1.xyw).xyzw;
  r4.xy = (uint2)r1.xy;
  r4.zw = float2(0.5,0.5) + r4.xy;
  r5.xy = renderTargetSize.zw * r4.zw;
  r5.x = gSSAOTexture.SampleLevel(samplerLinearClamp_s, r5.xy, 0).x;
  r3.z = r5.x * r3.z;
  if (showAO != 0) {
    r5.x = 0.75 * r3.z;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xyyy, r5.xxxx
    return;
  } else {
    r5.x = enableAO ? r3.z : 1;
  }
  r3.z = cmp(r2.z >= 0.5);
  r5.y = GBufferDepth.Load(r1.xyw).x;
  r6.xyz = GBufferDiffuseColor.Load(r1.xyw).xyz;
  r7.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r8.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r9.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r10.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyz, int3(0, 0, 0)).xyw;
  r11.x = cmp(r5.y >= 0.984375);
  r1.z = 1.01587307 * r5.y;
  r1.w = r5.y * 64 + -63;
  r1.z = r11.x ? r1.w : r1.z;
  r1.z = max(9.99999994e-09, r1.z);
  r11.y = rcp(r1.z);
  r1.zw = r11.xy ? r0.ww : 0;
  r4.zw = -subpixelOffset.xy + r4.zw;
  r4.zw = renderTargetSize.zw * r4.zw;
  r4.zw = r4.zw * float2(2,-2) + float2(-1,1);
  r11.x = inverseProjectionMatrix._m00 * r4.z;
  r11.y = inverseProjectionMatrix._m11 * r4.w;
  r11.zw = float2(1,1);
  r5.yzw = r11.xyz * r1.www;
  r11.xyz = inverseViewMatrix._m10_m11_m12 * r5.zzz;
  r11.xyz = r5.yyy * inverseViewMatrix._m00_m01_m02 + r11.xyz;
  r11.xyz = r5.www * inverseViewMatrix._m20_m21_m22 + r11.xyz;
  r0.w = r2.w * 3 + 0.5;
  r0.w = (uint)r0.w;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r2.xy = float2(0.850000024,0.850000024) * r2.xy;
  r1.w = dot(r2.xy, r2.xy);
  r12.zw = float2(2,1) + -r1.ww;
  r1.w = sqrt(r12.z);
  r12.xy = r2.xy * r1.ww;
  r13.xyzw = (int4)r0.wwww & int4(2,1,2,1);
  r13.xyzw = r13.zwxy ? float4(-1,-1,1.40129846e-45,1.40129846e-45) : float4(1,1,0,0);
  r0.w = (int)r13.w ^ (int)r13.z;
  r13.z = r0.w ? -1 : 1;
  r2.xyw = float3(-1,0,1) * r13.xyz;
  r5.yzw = float3(1,-2,1) * r13.xyz;
  r12.xyz = float3(0.408248305,0.707106769,0.577350259) * r12.xyw;
  r2.xyw = r12.yyy * r2.xyw;
  r2.xyw = r5.yzw * r12.xxx + r2.xyw;
  r12.xyz = r13.xyz * r12.zzz + r2.xyw;
  r0.w = r3.z ? -0.5 : -0.00146627566;
  r0.w = r2.z + r0.w;
  r2.y = saturate(2.00982332 * r0.w);
  r0.w = dot(-r11.xyz, -r11.xyz);
  r0.w = rsqrt(r0.w);
  r5.yzw = -r11.xyz * r0.www;
  r0.w = dot(r4.xy, float2(0.0671105608,0.00583714992));
  r0.w = frac(r0.w);
  r0.w = 52.9829178 * r0.w;
  r0.w = frac(r0.w);
  r0.w = r0.w * 6.28318548 + gameTick.w;
  sincos(r0.w, r4.x, r13.x);
  r2.zw = (uint2)r1.yx;
  r0.w = dot(r2.zw, float2(0.0671105608,0.00583714992));
  r0.w = frac(r0.w);
  r0.w = 52.9829178 * r0.w;
  r0.w = frac(r0.w);
  r0.w = r0.w * 6.28318548 + gameTick.w;
  sincos(r0.w, r14.x, r15.x);
  r2.x = saturate(dot(r12.xyz, r5.yzw));
  r0.w = dot(-r5.yzw, r12.xyz);
  r0.w = r0.w + r0.w;
  r16.xyz = r12.xyz * -r0.www + -r5.yzw;
  r0.w = 17 * r2.y;
  r0.w = exp2(r0.w);
  r0.w = 2 + r0.w;
  r0.w = 2 / r0.w;
  r1.w = sqrt(r0.w);
  r2.zw = float2(0.5,0.5) * renderTargetSize.xy;
  r2.zw = (uint2)r2.zw;
  r2.zw = cmp((int2)r1.xy == (int2)r2.zw);
  r2.z = r2.w ? r2.z : 0;
  r2.w = 1 + -r2.y;
  r2.w = 5 * r2.w;
  r14.yzw = -globalProbeConstants.data[0].xyz + r11.xyz;
  r17.x = globalProbeConstants.data[0].w * r14.y;
  r17.yz = globalProbeConstants.data[1].xy * r14.zw;
  r14.yzw = saturate(float3(0.5,0.5,0.5) + r17.xyz);
  r17.xy = globalProbeConstants.data[1].zw * r14.yz;
  r17.z = globalProbeConstants.data[2].x * r14.w;
  r14.yzw = globalProbeConstants.data[2].yzw + r17.xyz;
  r15.yzw = cmp(float3(0,0,0) < r12.xyz);
  r17.xyz = r15.yzw ? float3(0,0,0) : float3(0.5,0.5,0.5);
  r17.w = 0;
  r15.yzw = r17.wwx + r14.yzw;
  r15.yzw = gProbeXArray.SampleLevel(samplerLinearClamp_s, r15.yzw, 0).xyz;
  r18.xyz = r12.xyz * r12.xyz;
  r18.xyz = sunConstants.globalProbeExposure * r18.xyz;
  r19.xyz = r17.wwy + r14.yzw;
  r19.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r19.xyz, 0).xyz;
  r19.xyz = r19.xyz * r18.yyy;
  r15.yzw = r15.yzw * r18.xxx + r19.xyz;
  r14.yzw = r17.wwz + r14.yzw;
  r14.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r14.yzw, 0).xyz;
  r14.yzw = r14.yzw * r18.zzz + r15.yzw;
  r12.w = 0;
  r15.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r12.xyzw, 6).xyz;
  r14.yzw = r15.yzw * r14.yzw;
  r3.z = dot(r14.yzw, float3(0.212599993,0.715200007,0.0722000003));
  r16.w = 0;
  r15.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r16.xyzw, r2.w).xyz;
  r2.w = sunConstants.globalProbeExposure + -r3.z;
  r2.w = r2.y * r2.w + r3.z;
  r15.yzw = r15.yzw * r2.www;
  r2.w = r2.x + r5.x;
  r2.w = log2(abs(r2.w));
  r2.w = r2.w * r1.w;
  r2.w = exp2(r2.w);
  r2.w = r2.w + r5.x;
  r2.w = saturate(-1 + r2.w);
  r14.yzw = r14.yzw * r5.xxx;
  r4.zw = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r4.zw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r4.zw, 0).xy;
  r15.yzw = r15.yzw * r2.www;
  r17.xyz = r15.yzw * r4.zzz;
  r15.yzw = r15.yzw * r4.www;
  r2.y = sqrt(r1.w);
  r2.y = r2.y * 0.5 + 0.5;
  r2.y = r2.y * r2.y;
  r2.w = 0.5 * r2.y;
  r2.y = -r2.y * 0.5 + 1;
  r3.z = r2.x * r2.y + r2.w;
  r2.yw = r3.zz * r2.yw;
  r3.z = (uint)r0.x >> 24;
  if (10 == 0) r0.x = 0; else if (10+12 < 32) {   r0.x = (uint)r0.x << (32-(10 + 12)); r0.x = (uint)r0.x >> (32-10);  } else r0.x = (uint)r0.x >> 12;
  r18.x = -r4.x;
  r4.z = ~(int)r1.z;
  r2.x = -r2.x * 0.5 + 1;
  r19.x = 2;
  r20.x = 2;
  r21.w = 1;
  r18.z = r4.x;
  r22.w = 1;
  r23.z = 1;
  r24.w = 1;
  r18.yw = r13.xx;
  r4.y = r18.w;
  r25.w = 1;
  r13.y = r18.x;
  r13.z = r4.x;
  r26.w = 1;
  r27.x = r13.x;
  r27.y = r18.x;
  r27.z = r4.x;
  r28.x = r13.x;
  r28.y = r18.x;
  r28.z = r4.x;
  r29.x = r13.x;
  r29.y = r18.x;
  r29.z = r4.x;
  r30.xyz = r14.yzw;
  r31.xyz = r17.xyz;
  r32.xyz = r15.yzw;
  r4.w = 0;
  r5.x = 0;
  while (true) {
    r6.w = cmp((int)r5.x == 2);
    if (r6.w != 0) break;
    r6.w = r5.x ? r0.x : r3.z;
    r6.w = (int)r6.w * 15;
    if (3 == 0) r7.w = 0; else if (3+24 < 32) {     r7.w = (uint)lightConstantsCB[r6.w].data[1].w << (32-(3 + 24)); r7.w = (uint)r7.w >> (32-3);    } else r7.w = (uint)lightConstantsCB[r6.w].data[1].w >> 24;
    switch (r7.w) {
      case 4 :      if (r2.z != 0) {
        r7.w = (int)r4.w & 3;
        r7.w = mad((int)r7.w, 24, 112);
        r19.yzw = lightConstantsCB[r6.w].data[0].xyz + eyeOffset.xyz;
        GBufferDiffuseColor[viewID].r7.w = u2.xyzw;
      }
      r7.w = (int)r4.w + 1;
      r8.w = cmp(0 < lightConstantsCB[r6.w].data[6].y);
      r33.xy = lightConstantsCB[r6.w].data[5].zw;
      r33.z = lightConstantsCB[r6.w].data[6].x;
      r19.yzw = -r33.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r6.w].data[0].xyz;
      r34.xyz = r19.yzw + -r11.xyz;
      r9.w = dot(r33.xyz, r34.xyz);
      r10.w = saturate(-r9.w / lightConstantsCB[r6.w].data[6].y);
      r35.xyz = r10.www * r33.xyz + r19.yzw;
      r35.xyz = r8.www ? r35.xyz : lightConstantsCB[r6.w].data[0].xyz;
      r35.xyz = r35.xyz + -r11.xyz;
      r12.w = dot(r35.xyz, r35.xyz);
      r13.w = rsqrt(r12.w);
      r35.xyz = r35.xyz * r13.www;
      r13.w = dot(r12.xyz, r35.xyz);
      r16.w = saturate(r13.w);
      r17.w = cmp(0 < r16.w);
      if (r17.w != 0) {
        r17.w = sqrt(r12.w);
        r23.w = lightConstantsCB[r6.w].data[3].x * lightConstantsCB[r6.w].data[3].x;
        r12.w = r23.w / r12.w;
        r12.w = min(1, r12.w);
        r35.xy = saturate(r17.ww * lightConstantsCB[r6.w].data[2].xz + lightConstantsCB[r6.w].data[2].yw);
        r35.zw = r35.xy * r35.xy;
        r35.xy = r35.xy * float2(-2,-2) + float2(3,3);
        r35.xy = r35.zw * r35.xy;
        r12.w = r35.x * r12.w;
        r12.w = r12.w * r35.y;
        r17.w = cmp(0 < r12.w);
        if (r17.w != 0) {
          if (3 == 0) r17.w = 0; else if (3+27 < 32) {           r17.w = (uint)lightConstantsCB[r6.w].data[1].w << (32-(3 + 27)); r17.w = (uint)r17.w >> (32-3);          } else r17.w = (uint)lightConstantsCB[r6.w].data[1].w >> 27;
          r23.w = (int)r7.w & 7;
          r27.w = (int)r23.w + -1;
          r27.w = cmp((uint)r27.w < 32);
          r27.w = r2.z ? r27.w : 0;
          if (r27.w != 0) {
            r35.xy = mad((int2)r23.ww, int2(24,24), int2(88,104));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r23.w, cb2[52].x, r35.x, u2.xxxx
          r23.w = samplerLinear[]..swiz;
            r23.w = (int)r23.w | 4;
            GBufferDiffuseColor[viewID].r35.x = u2.x;
            GBufferDiffuseColor[viewID].r35.y = u2.x;
          }
          r23.w = (int)r4.w + 257;
          r17.w = cmp((int)r17.w != 1);
          if (r17.w != 0) {
            r17.w = abs(r13.w) * -0.200000003 + 0.400000006;
            r35.xyz = r12.xyz * r17.www + r11.xyz;
            r35.xyz = -lightConstantsCB[r6.w].data[4].yzw + r35.xyz;
            r17.w = max(abs(r35.y), abs(r35.z));
            r17.w = max(abs(r35.x), r17.w);
            r17.w = lightConstantsCB[r6.w].data[5].x / r17.w;
            r17.w = lightConstantsCB[r6.w].data[5].y + r17.w;
            r27.w = dot(r35.xyz, r35.xyz);
            r27.w = rsqrt(r27.w);
            r17.w = max(6.10351563e-05, r17.w);
            r28.w = 0x0000ffff & (int)lightConstantsCB[r6.w].data[1].w;
            r36.w = (uint)r28.w;
            r28.w = 0;
            r29.w = 0;
            while (true) {
              r30.w = cmp((int)r29.w >= 8);
              if (r30.w != 0) break;
              r37.y = dot(icb[r29.w+0].yx, r18.xy);
              r37.z = dot(icb[r29.w+0].yx, r18.yz);
              r37.yz = lightConstantsCB[r6.w].data[3].yy * r37.yz;
              r37.x = r37.y * r15.x;
              r37.w = r37.y * r14.x;
              r36.xyz = r35.xyz * r27.www + r37.xzw;
              r30.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r36.xyzw, r17.w).x;
              r28.w = r30.w * 0.125 + r28.w;
              r29.w = (int)r29.w + 1;
            }
          } else {
            r28.w = 1;
          }
          r12.w = r28.w * r12.w;
          r17.w = cmp(0 < r12.w);
          if (r17.w != 0) {
            r17.w = lightConstantsCB[r6.w].data[1].z * r0.w;
            r17.w = 0.25 * r17.w;
            r27.w = dot(r33.xyz, r16.xyz);
            r29.w = dot(r16.xyz, r34.xyz);
            r30.w = -r27.w * r27.w + lightConstantsCB[r6.w].data[6].y;
            r9.w = r27.w * r29.w + -r9.w;
            r9.w = saturate(r9.w / r30.w);
            r27.w = r30.w / lightConstantsCB[r6.w].data[6].y;
            r27.w = 10 * r27.w;
            r27.w = min(1, r27.w);
            r9.w = r9.w + -r10.w;
            r9.w = r27.w * r9.w + r10.w;
            r19.yzw = r9.www * r33.xyz + r19.yzw;
            r19.yzw = r8.www ? r19.yzw : lightConstantsCB[r6.w].data[0].xyz;
            r19.yzw = r19.yzw + -r11.xyz;
            r8.w = dot(r19.yzw, r19.yzw);
            r8.w = rsqrt(r8.w);
            r33.xyz = r19.yzw * r8.www;
            if (4 == 0) r9.w = 0; else if (4+16 < 32) {             r9.w = (uint)lightConstantsCB[r6.w].data[1].w << (32-(4 + 16)); r9.w = (uint)r9.w >> (32-4);            } else r9.w = (uint)lightConstantsCB[r6.w].data[1].w >> 16;
            r10.w = cmp(0 < (uint)r9.w);
            r10.w = r10.w ? r1.z : 0;
            if (r10.w != 0) {
              r9.w = (int)r9.w + numLights;
              r9.w = mad((int)r9.w, 15, -15);
              r10.w = abs(r13.w) * -0.200000003 + 0.400000006;
              r21.xyz = r12.xyz * r10.www + r11.xyz;
              r34.xyz = lightConstantsCB[r9.w].data[6].yzw;
              r34.w = lightConstantsCB[r9.w].data[7].x;
              r10.w = dot(r34.xyzw, r21.xyzw);
              r34.xyz = lightConstantsCB[r9.w].data[7].yzw;
              r34.w = lightConstantsCB[r9.w].data[8].x;
              r27.w = dot(r34.xyzw, r21.xyzw);
              r29.w = cmp(r27.w < r10.w);
              if (r29.w == 0) {
                r34.xyz = lightConstantsCB[r9.w].data[4].yzw;
                r34.w = lightConstantsCB[r9.w].data[5].x;
                r34.x = dot(r34.xyzw, r21.xyzw);
                r35.xyz = lightConstantsCB[r9.w].data[5].yzw;
                r35.w = lightConstantsCB[r9.w].data[6].x;
                r34.y = dot(r35.xyzw, r21.xyzw);
                r21.xy = r34.xy / r27.ww;
                r21.xy = r21.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r34.x = lightConstantsCB[r9.w].data[9].w + r21.x;
                r34.y = lightConstantsCB[r9.w].data[10].x + r21.y;
                r21.xy = lightConstantsCB[r9.w].data[9].yz * r34.xy;
                r34.xy = lightConstantsCB[r9.w].data[3].yy / lightConstantsCB[r9.w].data[8].yw;
                r34.zw = float2(1,1) + -r34.xy;
                r34.zw = cmp(r21.xy >= r34.zw);
                r34.xy = cmp(r34.xy >= r21.xy);
                r34.xy = (int2)r34.xy | (int2)r34.zw;
                r21.z = (int)r34.y | (int)r34.x;
                if (r21.z == 0) {
                  r21.xy = saturate(r21.xy);
                  r34.x = r21.x * lightConstantsCB[r9.w].data[8].y + lightConstantsCB[r9.w].data[8].z;
                  r34.y = r21.y * lightConstantsCB[r9.w].data[8].w + lightConstantsCB[r9.w].data[9].x;
                  r21.x = lightConstantsCB[r9.w].data[10].z * r27.w;
                  r10.w = lightConstantsCB[r9.w].data[10].y * r27.w + r10.w;
                  r10.w = r10.w / r21.x;
                }
              } else {
                r21.z = -1;
              }
              r21.x = (int)r29.w | (int)r21.z;
              if (r21.x == 0) {
                r10.w = max(6.10351563e-05, r10.w);
                r21.x = 0x0000ffff & (int)lightConstantsCB[r9.w].data[1].w;
                if (enableDitheredShadow != 0) {
                  r35.z = (uint)r21.x;
                  r21.yz = float2(0,0);
                  while (true) {
                    r27.w = cmp((int)r21.z >= 8);
                    if (r27.w != 0) break;
                    r36.x = dot(icb[r21.z+0].yx, r18.xw);
                    r36.y = dot(icb[r21.z+0].xy, r4.xy);
                    r35.xy = r36.xy * lightConstantsCB[r9.w].data[3].yy + r34.xy;
                    r27.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r35.xyz, r10.w).x;
                    r21.y = r27.w * 0.125 + r21.y;
                    r21.z = (int)r21.z + 1;
                  }
                } else {
                  r34.z = (uint)r21.x;
                  r21.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r34.xyz, r10.w).x;
                }
                r9.w = r21.y * r21.y;
                r9.w = r9.w * r21.y;
              } else {
                r9.w = 1;
              }
              r12.w = r12.w * r9.w;
            } else {
              if (4 == 0) r9.w = 0; else if (4+20 < 32) {               r9.w = (uint)lightConstantsCB[r6.w].data[1].w << (32-(4 + 20)); r9.w = (uint)r9.w >> (32-4);              } else r9.w = (uint)lightConstantsCB[r6.w].data[1].w >> 20;
              r10.w = cmp(0 < (uint)r9.w);
              r10.w = r10.w ? r4.z : 0;
              if (r10.w != 0) {
                r9.w = (int)r9.w + numLights;
                r9.w = mad((int)r9.w, 15, -15);
                r10.w = abs(r13.w) * -0.200000003 + 0.400000006;
                r22.xyz = r12.xyz * r10.www + r11.xyz;
                r34.xyz = lightConstantsCB[r9.w].data[6].yzw;
                r34.w = lightConstantsCB[r9.w].data[7].x;
                r10.w = dot(r34.xyzw, r22.xyzw);
                r34.xyz = lightConstantsCB[r9.w].data[7].yzw;
                r34.w = lightConstantsCB[r9.w].data[8].x;
                r21.x = dot(r34.xyzw, r22.xyzw);
                r21.z = cmp(r21.x < r10.w);
                if (r21.z == 0) {
                  r34.xyz = lightConstantsCB[r9.w].data[4].yzw;
                  r34.w = lightConstantsCB[r9.w].data[5].x;
                  r34.x = dot(r34.xyzw, r22.xyzw);
                  r35.xyz = lightConstantsCB[r9.w].data[5].yzw;
                  r35.w = lightConstantsCB[r9.w].data[6].x;
                  r34.y = dot(r35.xyzw, r22.xyzw);
                  r22.xy = r34.xy / r21.xx;
                  r22.xy = r22.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                  r34.x = lightConstantsCB[r9.w].data[9].w + r22.x;
                  r34.y = lightConstantsCB[r9.w].data[10].x + r22.y;
                  r22.xy = lightConstantsCB[r9.w].data[9].yz * r34.xy;
                  r34.xy = lightConstantsCB[r9.w].data[3].yy / lightConstantsCB[r9.w].data[8].yw;
                  r34.zw = float2(1,1) + -r34.xy;
                  r34.zw = cmp(r22.xy >= r34.zw);
                  r34.xy = cmp(r34.xy >= r22.xy);
                  r34.xy = (int2)r34.xy | (int2)r34.zw;
                  r22.z = (int)r34.y | (int)r34.x;
                  if (r22.z == 0) {
                    r22.xy = saturate(r22.xy);
                    r34.x = r22.x * lightConstantsCB[r9.w].data[8].y + lightConstantsCB[r9.w].data[8].z;
                    r34.y = r22.y * lightConstantsCB[r9.w].data[8].w + lightConstantsCB[r9.w].data[9].x;
                    r22.x = lightConstantsCB[r9.w].data[10].z * r21.x;
                    r10.w = lightConstantsCB[r9.w].data[10].y * r21.x + r10.w;
                    r10.w = r10.w / r22.x;
                  }
                } else {
                  r22.z = -1;
                }
                r21.x = (int)r21.z | (int)r22.z;
                if (r21.x == 0) {
                  r10.w = max(6.10351563e-05, r10.w);
                  r21.x = 0x0000ffff & (int)lightConstantsCB[r9.w].data[1].w;
                  if (enableDitheredShadow != 0) {
                    r22.z = (uint)r21.x;
                    r21.z = 0;
                    r27.w = 0;
                    while (true) {
                      r29.w = cmp((int)r27.w >= 8);
                      if (r29.w != 0) break;
                      r35.x = dot(icb[r27.w+0].xy, r13.xy);
                      r35.y = dot(icb[r27.w+0].yx, r13.xz);
                      r22.xy = r35.xy * lightConstantsCB[r9.w].data[3].yy + r34.xy;
                      r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r10.w).x;
                      r21.z = r22.x * 0.125 + r21.z;
                      r27.w = (int)r27.w + 1;
                    }
                  } else {
                    r34.z = (uint)r21.x;
                    r21.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r34.xyz, r10.w).x;
                  }
                  r9.w = r21.z * r21.z;
                  r9.w = r9.w * r21.z;
                } else {
                  r9.w = 1;
                }
                r12.w = r12.w * r9.w;
              }
            }
            r9.w = -r16.w * r2.x + 1;
            r9.w = r9.w * r9.w;
            r9.w = -r9.w * 0.620000005 + 0.620000005;
            r9.w = r9.w + -r16.w;
            r9.w = r1.w * r9.w + r16.w;
            r9.w = r9.w * r12.w;
            r22.x = lightConstantsCB[r6.w].data[0].w;
            r22.yz = lightConstantsCB[r6.w].data[1].xy;
            r10.w = cmp(0 < r13.w);
            r34.xyz = r9.www * r22.xyz + r30.xyz;
            r9.w = saturate(dot(r12.xyz, r33.xyz));
            r19.yzw = r19.yzw * r8.www + r5.yzw;
            r8.w = dot(r19.yzw, r19.yzw);
            r8.w = rsqrt(r8.w);
            r19.yzw = r19.yzw * r8.www;
            r8.w = dot(r19.yzw, r5.yzw);
            r13.w = dot(r12.xyz, r19.yzw);
            r16.w = abs(r13.w) * r0.w + -abs(r13.w);
            r13.w = abs(r13.w) * r16.w + 1;
            r16.w = r9.w * r2.y + r2.w;
            r13.w = r13.w * r13.w;
            r13.w = r13.w * r16.w;
            r13.w = rcp(r13.w);
            r9.w = r9.w * r17.w;
            r9.w = r13.w * r9.w;
            r9.w = r9.w * r12.w;
            r19.yzw = r9.www * r22.xyz + r32.xyz;
            r8.w = saturate(1 + -r8.w);
            r13.w = r8.w * r8.w;
            r13.w = r13.w * r13.w;
            r8.w = r13.w * r8.w;
            r8.w = r9.w * r8.w;
            r22.xyz = r8.www * r22.xyz + r31.xyz;
            r30.xyz = r10.www ? r34.xyz : r30.xyz;
            r31.xyz = r10.www ? r22.xyz : r31.xyz;
            r32.xyz = r10.www ? r19.yzw : r32.xyz;
            r8.w = (int)r23.w & 7;
            r9.w = (int)r8.w + -1;
            r9.w = cmp((uint)r9.w < 32);
            r9.w = r2.z ? r9.w : 0;
            if (r9.w != 0) {
              r19.yz = mad((int2)r8.ww, int2(24,24), int2(88,108));
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r8.w, cb2[52].x, r19.y, u2.xxxx
            r8.w = samplerLinear[]..swiz;
              r8.w = (int)r8.w | 8;
              GBufferDiffuseColor[viewID].r19.y = u2.x;
              GBufferDiffuseColor[viewID].r19.z = u2.x;
            }
            r4.w = (int)r4.w + 0x00010101;
          } else {
            r4.w = r23.w;
          }
        } else {
          r4.w = r7.w;
        }
      } else {
        r4.w = r7.w;
      }
      break;
      case 2 :      if (r2.z != 0) {
        r7.w = (int)r4.w & 3;
        r7.w = mad((int)r7.w, 24, 112);
        r20.yzw = lightConstantsCB[r6.w].data[0].xyz + eyeOffset.xyz;
        GBufferDiffuseColor[viewID].r7.w = u2.xyzw;
      }
      r7.w = (int)r4.w + 1;
      r22.xy = lightConstantsCB[r6.w].data[3].zw + -r11.xy;
      r22.z = lightConstantsCB[r6.w].data[4].x + -r11.z;
      r8.w = dot(r22.xyz, r22.xyz);
      r8.w = rsqrt(r8.w);
      r19.yzw = r22.xyz * r8.www;
      r9.w = dot(r12.xyz, r19.yzw);
      r10.w = saturate(r9.w);
      r12.w = cmp(0 < r10.w);
      if (r12.w != 0) {
        r33.xyz = lightConstantsCB[r6.w].data[7].yzw;
        r33.w = lightConstantsCB[r6.w].data[8].x;
        r12.w = dot(r33.xyzw, r11.xyzw);
        r13.w = cmp(r12.w < 1);
        if (r13.w != 0) {
          r19.yzw = float3(1,1,1);
          r13.w = 0;
        } else {
          r20.yzw = lightConstantsCB[r6.w].data[0].xyz + -r11.xyz;
          r16.w = lightConstantsCB[r6.w].data[3].x * lightConstantsCB[r6.w].data[3].x;
          r17.w = dot(r20.yzw, r20.yzw);
          r16.w = r16.w / r17.w;
          r16.w = min(1, r16.w);
          r20.yz = saturate(r12.ww * lightConstantsCB[r6.w].data[2].xz + lightConstantsCB[r6.w].data[2].yw);
          r34.xy = r20.yz * r20.yz;
          r20.yz = r20.yz * float2(-2,-2) + float2(3,3);
          r20.yz = r34.xy * r20.yz;
          r16.w = r20.y * r16.w;
          r16.w = r16.w * r20.z;
          r34.xyz = lightConstantsCB[r6.w].data[4].yzw;
          r34.w = lightConstantsCB[r6.w].data[5].x;
          r34.x = dot(r34.xyzw, r11.xyzw);
          r35.xyz = lightConstantsCB[r6.w].data[5].yzw;
          r35.w = lightConstantsCB[r6.w].data[6].x;
          r34.y = dot(r35.xyzw, r11.xyzw);
          r23.xy = r34.xy / r12.ww;
          r12.w = cmp(lightConstantsCB[r6.w].data[10].w < 0.00048828125);
          if (r12.w != 0) {
            r20.yz = saturate(abs(r23.xy) * lightConstantsCB[r6.w].data[12].xy + lightConstantsCB[r6.w].data[12].zw);
            r34.xy = r20.yz * r20.yz;
            r20.yz = r20.yz * float2(-2,-2) + float2(3,3);
            r20.yz = r34.xy * r20.yz;
            r12.w = r20.y * r20.z;
          } else {
            r34.xyzw = saturate(lightConstantsCB[r6.w].data[11].xyzw * abs(r23.yyxx));
            r34.xyzw = log2(r34.xyzw);
            r34.xyzw = lightConstantsCB[r6.w].data[12].zzzz * r34.xyzw;
            r34.xyzw = exp2(r34.xyzw);
            r20.yz = r34.xy + r34.zw;
            r20.yz = log2(r20.yz);
            r20.yz = lightConstantsCB[r6.w].data[12].ww * r20.yz;
            r20.yz = exp2(r20.yz);
            r17.w = lightConstantsCB[r6.w].data[12].x * r20.y;
            r20.y = lightConstantsCB[r6.w].data[12].y * r20.z + -1;
            r17.w = lightConstantsCB[r6.w].data[12].y * r20.z + -r17.w;
            r17.w = saturate(r20.y / r17.w);
            r20.y = r17.w * r17.w;
            r17.w = r17.w * -2 + 3;
            r12.w = r20.y * r17.w;
          }
          r13.w = r16.w * r12.w;
          r12.w = 255 & (int)lightConstantsCB[r6.w].data[14].w;
          if (r12.w != 0) {
            r16.w = dot(lightConstantsCB[r6.w].data[13].xyz, r23.xyz);
            r34.x = lightConstantsCB[r6.w].data[13].w;
            r34.yz = lightConstantsCB[r6.w].data[14].xy;
            r17.w = dot(r34.xyz, r23.xyz);
            r34.x = frac(r16.w);
            r34.y = frac(r17.w);
            r12.w = (int)r12.w + -1;
            r34.z = (uint)r12.w;
            r19.yzw = gCookieArray.SampleLevel(samplerLinear_s, r34.xyz, 0).xyz;
          } else {
            r19.yzw = float3(1,1,1);
          }
        }
        r34.x = lightConstantsCB[r6.w].data[0].w;
        r34.yz = lightConstantsCB[r6.w].data[1].xy;
        r19.yzw = r34.xyz * r19.yzw;
        r12.w = cmp(0 < r13.w);
        if (r12.w != 0) {
          if (3 == 0) r12.w = 0; else if (3+27 < 32) {           r12.w = (uint)lightConstantsCB[r6.w].data[1].w << (32-(3 + 27)); r12.w = (uint)r12.w >> (32-3);          } else r12.w = (uint)lightConstantsCB[r6.w].data[1].w >> 27;
          r16.w = (int)r7.w & 7;
          r17.w = (int)r16.w + -1;
          r17.w = cmp((uint)r17.w < 32);
          r17.w = r2.z ? r17.w : 0;
          if (r17.w != 0) {
            r20.yz = mad((int2)r16.ww, int2(24,24), int2(88,104));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r16.w, cb2[52].x, r20.y, u2.xxxx
          r16.w = samplerLinear[]..swiz;
            r16.w = (int)r16.w | 4;
            GBufferDiffuseColor[viewID].r20.y = u2.x;
            GBufferDiffuseColor[viewID].r20.z = u2.x;
          }
          r16.w = (int)r4.w + 257;
          r12.w = cmp((int)r12.w != 1);
          if (r12.w != 0) {
            r12.w = abs(r9.w) * -0.200000003 + 0.400000006;
            r24.xyz = r12.xyz * r12.www + r11.xyz;
            r34.xyz = lightConstantsCB[r6.w].data[6].yzw;
            r34.w = lightConstantsCB[r6.w].data[7].x;
            r12.w = dot(r34.xyzw, r24.xyzw);
            r17.w = dot(r33.xyzw, r24.xyzw);
            r20.y = cmp(r17.w >= r12.w);
            if (r20.y != 0) {
              r33.xyz = lightConstantsCB[r6.w].data[4].yzw;
              r33.w = lightConstantsCB[r6.w].data[5].x;
              r23.x = dot(r33.xyzw, r24.xyzw);
              r33.xyz = lightConstantsCB[r6.w].data[5].yzw;
              r33.w = lightConstantsCB[r6.w].data[6].x;
              r23.y = dot(r33.xyzw, r24.xyzw);
              r20.yz = r23.xy / r17.ww;
              r20.yz = saturate(r20.yz * float2(0.5,-0.5) + float2(0.5,0.5));
              r24.x = r20.y * lightConstantsCB[r6.w].data[8].y + lightConstantsCB[r6.w].data[8].z;
              r24.y = r20.z * lightConstantsCB[r6.w].data[8].w + lightConstantsCB[r6.w].data[9].x;
              r12.w = r12.w / r17.w;
              r12.w = max(6.10351563e-05, r12.w);
              r17.w = 0x0000ffff & (int)lightConstantsCB[r6.w].data[1].w;
              if (enableDitheredShadow != 0) {
                r33.z = (uint)r17.w;
                r20.yz = float2(0,0);
                while (true) {
                  r20.w = cmp((int)r20.z >= 8);
                  if (r20.w != 0) break;
                  r23.x = dot(icb[r20.z+0].xy, r27.xy);
                  r23.y = dot(icb[r20.z+0].yx, r27.xz);
                  r33.xy = r23.xy * lightConstantsCB[r6.w].data[3].yy + r24.xy;
                  r20.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r33.xyz, r12.w).x;
                  r20.y = r20.w * 0.125 + r20.y;
                  r20.z = (int)r20.z + 1;
                }
              } else {
                r24.z = (uint)r17.w;
                r20.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r12.w).x;
              }
              r12.w = r20.y * r20.y;
              r12.w = r12.w * r20.y;
            } else {
              r12.w = 1;
            }
          } else {
            r12.w = 1;
          }
          r12.w = r13.w * r12.w;
          r13.w = cmp(0 < r12.w);
          if (r13.w != 0) {
            r13.w = lightConstantsCB[r6.w].data[1].z * r0.w;
            r13.w = r13.w * r10.w;
            if (4 == 0) r17.w = 0; else if (4+16 < 32) {             r17.w = (uint)lightConstantsCB[r6.w].data[1].w << (32-(4 + 16)); r17.w = (uint)r17.w >> (32-4);            } else r17.w = (uint)lightConstantsCB[r6.w].data[1].w >> 16;
            r20.z = cmp(0 < (uint)r17.w);
            r20.z = r20.z ? r1.z : 0;
            if (r20.z != 0) {
              r17.w = (int)r17.w + numLights;
              r17.w = mad((int)r17.w, 15, -15);
              r20.z = abs(r9.w) * -0.200000003 + 0.400000006;
              r25.xyz = r12.xyz * r20.zzz + r11.xyz;
              r33.xyz = lightConstantsCB[r17.w].data[6].yzw;
              r33.w = lightConstantsCB[r17.w].data[7].x;
              r20.z = dot(r33.xyzw, r25.xyzw);
              r33.xyz = lightConstantsCB[r17.w].data[7].yzw;
              r33.w = lightConstantsCB[r17.w].data[8].x;
              r20.w = dot(r33.xyzw, r25.xyzw);
              r21.x = cmp(r20.w < r20.z);
              if (r21.x == 0) {
                r33.xyz = lightConstantsCB[r17.w].data[4].yzw;
                r33.w = lightConstantsCB[r17.w].data[5].x;
                r23.x = dot(r33.xyzw, r25.xyzw);
                r33.xyz = lightConstantsCB[r17.w].data[5].yzw;
                r33.w = lightConstantsCB[r17.w].data[6].x;
                r23.y = dot(r33.xyzw, r25.xyzw);
                r23.xy = r23.xy / r20.ww;
                r23.xy = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r24.x = lightConstantsCB[r17.w].data[9].w + r23.x;
                r24.y = lightConstantsCB[r17.w].data[10].x + r23.y;
                r23.xy = lightConstantsCB[r17.w].data[9].yz * r24.xy;
                r24.xy = lightConstantsCB[r17.w].data[3].yy / lightConstantsCB[r17.w].data[8].yw;
                r25.xy = float2(1,1) + -r24.xy;
                r25.xy = cmp(r23.xy >= r25.xy);
                r24.xy = cmp(r24.xy >= r23.xy);
                r24.xy = (int2)r24.xy | (int2)r25.xy;
                r23.w = (int)r24.y | (int)r24.x;
                if (r23.w == 0) {
                  r23.xy = saturate(r23.xy);
                  r24.x = r23.x * lightConstantsCB[r17.w].data[8].y + lightConstantsCB[r17.w].data[8].z;
                  r24.y = r23.y * lightConstantsCB[r17.w].data[8].w + lightConstantsCB[r17.w].data[9].x;
                  r23.x = lightConstantsCB[r17.w].data[10].z * r20.w;
                  r20.z = lightConstantsCB[r17.w].data[10].y * r20.w + r20.z;
                  r20.z = r20.z / r23.x;
                }
              } else {
                r23.w = -1;
              }
              r20.w = (int)r21.x | (int)r23.w;
              if (r20.w == 0) {
                r20.z = max(6.10351563e-05, r20.z);
                r20.w = 0x0000ffff & (int)lightConstantsCB[r17.w].data[1].w;
                if (enableDitheredShadow != 0) {
                  r25.z = (uint)r20.w;
                  r21.x = 0;
                  r23.x = 0;
                  while (true) {
                    r23.y = cmp((int)r23.x >= 8);
                    if (r23.y != 0) break;
                    r33.x = dot(icb[r23.x+0].xy, r28.xy);
                    r33.y = dot(icb[r23.x+0].yx, r28.xz);
                    r25.xy = r33.xy * lightConstantsCB[r17.w].data[3].yy + r24.xy;
                    r23.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r20.z).x;
                    r21.x = r23.y * 0.125 + r21.x;
                    r23.x = (int)r23.x + 1;
                  }
                } else {
                  r24.z = (uint)r20.w;
                  r21.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r20.z).x;
                }
                r17.w = r21.x * r21.x;
                r17.w = r17.w * r21.x;
              } else {
                r17.w = 1;
              }
              r12.w = r17.w * r12.w;
            } else {
              if (4 == 0) r6.w = 0; else if (4+20 < 32) {               r6.w = (uint)lightConstantsCB[r6.w].data[1].w << (32-(4 + 20)); r6.w = (uint)r6.w >> (32-4);              } else r6.w = (uint)lightConstantsCB[r6.w].data[1].w >> 20;
              r17.w = cmp(0 < (uint)r6.w);
              r17.w = r17.w ? r4.z : 0;
              if (r17.w != 0) {
                r6.w = (int)r6.w + numLights;
                r6.w = mad((int)r6.w, 15, -15);
                r17.w = abs(r9.w) * -0.200000003 + 0.400000006;
                r26.xyz = r12.xyz * r17.www + r11.xyz;
                r33.xyz = lightConstantsCB[r6.w].data[6].yzw;
                r33.w = lightConstantsCB[r6.w].data[7].x;
                r17.w = dot(r33.xyzw, r26.xyzw);
                r33.xyz = lightConstantsCB[r6.w].data[7].yzw;
                r33.w = lightConstantsCB[r6.w].data[8].x;
                r20.z = dot(r33.xyzw, r26.xyzw);
                r20.w = cmp(r20.z < r17.w);
                if (r20.w == 0) {
                  r33.xyz = lightConstantsCB[r6.w].data[4].yzw;
                  r33.w = lightConstantsCB[r6.w].data[5].x;
                  r23.x = dot(r33.xyzw, r26.xyzw);
                  r33.xyz = lightConstantsCB[r6.w].data[5].yzw;
                  r33.w = lightConstantsCB[r6.w].data[6].x;
                  r23.y = dot(r33.xyzw, r26.xyzw);
                  r23.xy = r23.xy / r20.zz;
                  r23.xy = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                  r24.x = lightConstantsCB[r6.w].data[9].w + r23.x;
                  r24.y = lightConstantsCB[r6.w].data[10].x + r23.y;
                  r23.xy = lightConstantsCB[r6.w].data[9].yz * r24.xy;
                  r24.xy = lightConstantsCB[r6.w].data[3].yy / lightConstantsCB[r6.w].data[8].yw;
                  r25.xy = float2(1,1) + -r24.xy;
                  r25.xy = cmp(r23.xy >= r25.xy);
                  r24.xy = cmp(r24.xy >= r23.xy);
                  r24.xy = (int2)r24.xy | (int2)r25.xy;
                  r23.w = (int)r24.y | (int)r24.x;
                  if (r23.w == 0) {
                    r23.xy = saturate(r23.xy);
                    r24.x = r23.x * lightConstantsCB[r6.w].data[8].y + lightConstantsCB[r6.w].data[8].z;
                    r24.y = r23.y * lightConstantsCB[r6.w].data[8].w + lightConstantsCB[r6.w].data[9].x;
                    r23.x = lightConstantsCB[r6.w].data[10].z * r20.z;
                    r17.w = lightConstantsCB[r6.w].data[10].y * r20.z + r17.w;
                    r17.w = r17.w / r23.x;
                  }
                } else {
                  r23.w = -1;
                }
                r20.z = (int)r20.w | (int)r23.w;
                if (r20.z == 0) {
                  r17.w = max(6.10351563e-05, r17.w);
                  r20.z = 0x0000ffff & (int)lightConstantsCB[r6.w].data[1].w;
                  if (enableDitheredShadow != 0) {
                    r25.z = (uint)r20.z;
                    r20.w = 0;
                    r23.x = 0;
                    while (true) {
                      r23.y = cmp((int)r23.x >= 8);
                      if (r23.y != 0) break;
                      r26.x = dot(icb[r23.x+0].xy, r29.xy);
                      r26.y = dot(icb[r23.x+0].yx, r29.xz);
                      r25.xy = r26.xy * lightConstantsCB[r6.w].data[3].yy + r24.xy;
                      r23.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r17.w).x;
                      r20.w = r23.y * 0.125 + r20.w;
                      r23.x = (int)r23.x + 1;
                    }
                  } else {
                    r24.z = (uint)r20.z;
                    r20.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r17.w).x;
                  }
                  r6.w = r20.w * r20.w;
                  r6.w = r6.w * r20.w;
                } else {
                  r6.w = 1;
                }
                r12.w = r12.w * r6.w;
              }
            }
            r6.w = -r10.w * r2.x + 1;
            r6.w = r6.w * r6.w;
            r6.w = -r6.w * 0.620000005 + 0.620000005;
            r6.w = r6.w + -r10.w;
            r6.w = r1.w * r6.w + r10.w;
            r6.w = r6.w * r12.w;
            r9.w = cmp(0 < r9.w);
            r23.xyw = r6.www * r19.yzw + r30.xyz;
            r22.xyz = r22.xyz * r8.www + r5.yzw;
            r6.w = dot(r22.xyz, r22.xyz);
            r6.w = rsqrt(r6.w);
            r22.xyz = r22.xyz * r6.www;
            r6.w = dot(r22.xyz, r5.yzw);
            r8.w = dot(r12.xyz, r22.xyz);
            r17.w = abs(r8.w) * r0.w + -abs(r8.w);
            r8.w = abs(r8.w) * r17.w + 1;
            r10.w = r10.w * r2.y + r2.w;
            r8.w = r8.w * r8.w;
            r8.w = r8.w * r10.w;
            r8.w = rcp(r8.w);
            r8.w = r8.w * r13.w;
            r8.w = r12.w * r8.w;
            r8.w = 0.25 * r8.w;
            r22.xyz = r8.www * r19.yzw + r32.xyz;
            r6.w = saturate(1 + -r6.w);
            r10.w = r6.w * r6.w;
            r10.w = r10.w * r10.w;
            r6.w = r10.w * r6.w;
            r6.w = r8.w * r6.w;
            r19.yzw = r6.www * r19.yzw + r31.xyz;
            r30.xyz = r9.www ? r23.xyw : r30.xyz;
            r31.xyz = r9.www ? r19.yzw : r31.xyz;
            r32.xyz = r9.www ? r22.xyz : r32.xyz;
            r6.w = (int)r16.w & 7;
            r8.w = (int)r6.w + -1;
            r8.w = cmp((uint)r8.w < 32);
            r8.w = r2.z ? r8.w : 0;
            if (r8.w != 0) {
              r19.yz = mad((int2)r6.ww, int2(24,24), int2(88,108));
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r6.w, cb2[52].x, r19.y, u2.xxxx
            r6.w = samplerLinear[]..swiz;
              r6.w = (int)r6.w | 8;
              GBufferDiffuseColor[viewID].r19.y = u2.x;
              GBufferDiffuseColor[viewID].r19.z = u2.x;
            }
            r4.w = (int)r4.w + 0x00010101;
          } else {
            r4.w = r16.w;
          }
        } else {
          r4.w = r7.w;
        }
      } else {
        r4.w = r7.w;
      }
      break;
      default :
      break;
    }
    r5.x = (int)r5.x + 1;
  }
  r3.xyz = r3.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r0.x = (uint)r3.y;
  r2.xyw = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r2.x;
  r0.w = cmp((int)r0.x == (int)r0.w);
  r1.zw = r0.ww ? r2.yw : float2(-1,0);
  r2.xyw = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r2.x;
  r0.w = cmp((int)r0.x == (int)r0.w);
  r2.xy = r0.ww ? r2.yw : float2(-1,0);
  r4.xyz = r9.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r4.x;
  r0.w = cmp((int)r0.x == (int)r0.w);
  r4.xy = r0.ww ? r4.yz : float2(-1,0);
  r5.xyz = r10.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r5.x;
  r0.x = cmp((int)r0.x == (int)r0.w);
  r0.xw = r0.xx ? r5.yz : float2(-1,0);
  r5.x = r1.z;
  r5.y = r2.x;
  r5.z = r4.x;
  r5.w = r0.x;
  r5.xyzw = r5.xyzw + -r3.xxxx;
  r5.xyzw = cmp(abs(r5.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r5.xyzw = r5.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r0.x = r5.x + r5.y;
  r0.x = r0.x + r5.z;
  r0.x = r0.x + r5.w;
  r1.z = r5.y * r2.y;
  r1.z = r5.x * r1.w + r1.z;
  r1.z = r5.z * r4.y + r1.z;
  r0.w = r5.w * r0.w + r1.z;
  r3.w = r0.w / r0.x;
  r0.x = cmp(0 >= r0.x);
  r3.yz = r0.xx ? float2(0,0) : r3.zw;
  r0.xw = (int2)r1.xy & int2(1,1);
  r0.x = cmp((int)r0.w == (int)r0.x);
  r2.xyw = r0.xxx ? r3.xyz : r3.xzy;
  r0.x = -r2.w * 0.5 + r2.x;
  r3.y = r2.w + r0.x;
  r3.z = -r2.y * 0.5 + r0.x;
  r3.x = r3.z + r2.y;
  r2.xyw = float3(1,1,1) + -r3.xyz;
  r2.xyw = r31.xyz * r2.xyw;
  r2.xyw = r32.xyz * r3.xyz + r2.xyw;
  r2.xyw = r30.xyz * r6.xyz + r2.xyw;
  r0.x = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.x != 0) {
    r0.x = dot(r11.xyz, r11.xyz);
    r0.w = rsqrt(r0.x);
    r3.xyz = r11.xyz * r0.www;
    r0.x = sqrt(r0.x);
    r0.w = cmp(0 < fogConstants.blendAmount);
    if (r0.w != 0) {
      r1.zw = r0.xx * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r1.zw = fogConstants.atmospherefogdensityatcamera.xy * r1.zw;
      r0.w = cmp(0.00999999978 < abs(r11.z));
      r4.xy = fogConstants.atmospherefogheightdensityscale.xy * r11.zz;
      r5.xy = float2(-1.44269502,-1.44269502) * r4.xy;
      r5.xy = exp2(r5.xy);
      r5.xy = float2(1,1) + -r5.xy;
      r4.xy = r5.xy / r4.xy;
      r4.xy = r4.xy * r1.zw;
      r1.zw = r0.ww ? r4.xy : r1.zw;
      r4.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.zzz;
      r4.xyz = exp2(r4.xyz);
      r5.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.www;
      r5.xyz = exp2(r5.xyz);
      r5.xyz = r5.xyz + -r4.xyz;
      r4.xyz = fogConstants.blendAmount * r5.xyz + r4.xyz;
    } else {
      r0.w = r0.x * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r0.w = fogConstants.atmospherefogdensityatcamera.x * r0.w;
      r1.z = cmp(0.00999999978 < abs(r11.z));
      r1.w = fogConstants.atmospherefogheightdensityscale.x * r11.z;
      r3.w = -1.44269502 * r1.w;
      r3.w = exp2(r3.w);
      r3.w = 1 + -r3.w;
      r1.w = r3.w / r1.w;
      r1.w = r1.w * r0.w;
      r0.w = r1.z ? r1.w : r0.w;
      r5.xyz = fogConstants.atmosphereTotalDensity.xyz * r0.www;
      r4.xyz = exp2(r5.xyz);
    }
    r4.xyz = r4.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r4.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r4.xyz);
    r0.w = dot(fogConstants.wldSunFogDir.xyz, -r3.xyz);
    r1.z = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r1.w = fogConstants.atmosphereMieSchlickK * -r0.w + 1;
    r1.w = r1.w * r1.w;
    r1.w = 12.566371 * r1.w;
    r1.z = r1.z / r1.w;
    r0.x = -fogConstants.atmospherehazebasedist + r0.x;
    r0.x = saturate(fogConstants.atmospherehazefadedist * r0.x);
    r0.x = r1.z * r0.x;
    r0.w = saturate(r0.w);
    r0.w = r0.w * r0.w + 1;
    r0.w = r0.w * 0.0596831031 + -1;
    r0.w = fogConstants.atmospheresunstrength * r0.w + 1;
    r3.xyz = fogConstants.atmosphereMieDensity.xyz * r0.xxx;
    r3.xyz = r0.www * fogConstants.atmosphereRayleighDensity.xyz + r3.xyz;
    r3.xyz = fogConstants.atmosphereInScatterIntensity * r3.xyz;
    r5.xyz = float3(1,1,1) + -r4.xyz;
    r3.xyz = r5.xyz * r3.xyz;
    r3.xyz = r2.xyw * r4.xyz + r3.xyz;
  } else {
    r0.x = fogConstants.heightFalloff * r11.z;
    r0.w = fogConstants.heightFalloff * r11.z + fogConstants.K0;
    r1.z = cmp(abs(r0.x) < 9.99999975e-05);
    r1.w = min(64, r0.w);
    r1.w = 1.44269502 * r1.w;
    r1.w = exp2(r1.w);
    r3.w = saturate(fogConstants.K0b);
    r4.x = cmp(r0.w < 0);
    r0.w = 1 + r0.w;
    r0.w = r4.x ? r1.w : r0.w;
    r0.w = -fogConstants.K0b + r0.w;
    r0.x = r1.z ? 1 : r0.x;
    r0.x = r0.w / r0.x;
    r0.x = r1.z ? r3.w : r0.x;
    r0.x = fogConstants.expMul * r0.x;
    r0.w = dot(r11.xyz, r11.xyz);
    r1.z = sqrt(r0.w);
    r0.x = r0.x * r1.z + fogConstants.expAdd;
    r0.x = exp2(r0.x);
    r0.x = min(1, r0.x);
    r0.x = 1 + -r0.x;
    r0.w = rsqrt(r0.w);
    r4.xyz = r11.xyz * r0.www;
    r0.w = dot(fogConstants.wldSunFogDir.xyz, r4.xyz);
    r0.w = saturate(fogConstants.sunFogAngles.y * r0.w + fogConstants.sunFogAngles.x);
    r5.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r5.xyzw = r0.wwww * r5.xyzw + fogConstants.sunFogColor.xyzw;
    r0.x = r5.w * r0.x;
    r4.xyz = r5.xyz + -r2.xyw;
    r3.xyz = r0.xxx * r4.xyz + r2.xyw;
  }
  r2.xyw = relHDRExposure.yyy * r3.xyz;
  r3.xyz = cmp(r2.xyw >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r2.xyw = r3.xyz ? r2.xyw : 0;
  r2.xyw = min(float3(65024,65024,64512), r2.xyw);
  r0.x = cmp(0 < permuteHighlight);
  r3.xyzw = permuteHighlight & int4(32,3,64,12);
  r1.zw = cmp((int2)r3.xz != int2(0,0));
  r3.xy = cmp((int2)r3.yw == int2(3,4));
  r1.zw = r1.zw ? r3.xy : 0;
  r3.xy = r1.zw ? float2(0.200000003,0.200000003) : 0;
  r0.w = permuteHighlight & 16;
  r1.z = cmp((int)r0.w != 0);
  r0.w = cmp((int)r0.w == 16);
  r0.w = r0.w ? r1.z : 0;
  r3.z = r0.w ? 0.200000 : 0;
  r3.xyz = r3.xyz * relHDRExposure.xxx + -r2.xyw;
  r3.xyz = r3.xyz * float3(0.5,0.5,0.5) + r2.xyw;
  r2.xyw = r0.xxx ? r3.xyz : r2.xyw;
  if (enableCountDebug != 0) {
    if (debugDrawOverlayType != 0) {
      switch (cb2[53].y) {
        case 1 :        r0.x = (int)r4.w & 3;
        break;
        case 2 :        if (2 == 0) r0.x = 0; else if (2+8 < 32) {         r0.x = (uint)r4.w << (32-(2 + 8)); r0.x = (uint)r0.x >> (32-2);        } else r0.x = (uint)r4.w >> 8;
        break;
        case 3 :        r0.x = (uint)r4.w >> 16;
        break;
        case 4 :        r0.x = 0;
        break;
        case 5 :        r0.x = 1;
        break;
        default :
        r0.x = 0;
        break;
      }
      r0.x = (uint)r0.x;
      r0.x = drawNumLighstScale * r0.x;
      r3.xyz = r0.xxx * float3(0.5,0.5,0.5) + -r2.xyw;
      r2.xyw = drawNumLightsAlpha * r3.xyz + r2.xyw;
    }
  }
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xyyy, r2.xywx
  if (r2.z != 0) {
    r1.xyz = eyeOffset.xyz + r11.xyz;
    r1.w = (int)r4.w & 3;
    GBufferDiffuseColor[viewID].92 = u2.xyzw;
    GBufferDiffuseColor[viewID].108 = u2.x;
  }
  if (enableCountDebug != 0) {
    r0.x = (int)r4.w & 3;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(0), r0.x
    InterlockedAdd(dest, value, orig_value);
    if (2 == 0) r0.w = 0; else if (2+8 < 32) {     r0.w = (uint)r4.w << (32-(2 + 8)); r0.w = (uint)r0.w >> (32-2);    } else r0.w = (uint)r4.w >> 8;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(4), r0.w
    InterlockedAdd(dest, value, orig_value);
    r1.x = (uint)r4.w >> 16;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(8), r1.x
    InterlockedAdd(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_iadd g1, l(12), l(0)
    InterlockedAdd(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_iadd g1, l(16), l(1)
    InterlockedAdd(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(0), r0.x
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(4), r0.w
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(8), r1.x
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(12), l(0)
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(16), l(1)
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    imm_atomic_iadd r1.x, g0, l(0), l(1)
    InterlockedAdd(dest, imm_value, orig_value);
    r0.x = cmp((int)r1.x == 63);
    if (r0.x != 0) {
    // No code for instruction (needs manual fix):
        ld_raw r1.xyzw, l(0), g1.xyzw
      r2.xz = viewID;
      r2.yw = float2(5.60519386e-44,6.16571324e-44);
      // Needs manual fix for instruction:
        atomic_iadd u2, r2.xyxx, r1.x
      InterlockedAdd(dest, value, orig_value);
      // Needs manual fix for instruction:
        atomic_iadd u2, r2.zwzz, r1.y
      InterlockedAdd(dest, value, orig_value);
      r2.xz = viewID;
      r2.yw = float2(6.72623263e-44,7.28675201e-44);
      // Needs manual fix for instruction:
        atomic_iadd u2, r2.xyxx, r1.z
      InterlockedAdd(dest, value, orig_value);
      // Needs manual fix for instruction:
        atomic_iadd u2, r2.zwzz, r1.w
      InterlockedAdd(dest, value, orig_value);
    // No code for instruction (needs manual fix):
        ld_raw r0.x, l(16), g1.xxxx
      r1.xz = viewID;
      r1.yw = float2(7.8472714e-44,0);
      // Needs manual fix for instruction:
        atomic_iadd u2, r1.xyxx, r0.x
      InterlockedAdd(dest, value, orig_value);
    // No code for instruction (needs manual fix):
        ld_raw r2.xyzw, l(0), g2.xyzw
      // Needs manual fix for instruction:
        atomic_umax u2, r1.zwzz, r2.x
      InterlockedMax(dest, value, orig_value);
      r1.xz = viewID;
      r1.yw = float2(5.60519386e-45,1.12103877e-44);
      // Needs manual fix for instruction:
        atomic_umax u2, r1.xyxx, r2.y
      InterlockedMax(dest, value, orig_value);
      // Needs manual fix for instruction:
        atomic_umax u2, r1.zwzz, r2.z
      InterlockedMax(dest, value, orig_value);
      r1.xz = viewID;
      r1.yw = float2(1.68155816e-44,2.24207754e-44);
      // Needs manual fix for instruction:
        atomic_umax u2, r1.xyxx, r2.w
      InterlockedMax(dest, value, orig_value);
    // No code for instruction (needs manual fix):
        ld_raw r0.x, l(16), g2.xxxx
      // Needs manual fix for instruction:
        atomic_umax u2, r1.zwzz, r0.x
      InterlockedMax(dest, value, orig_value);
      r0.yz = cmp((int2)r0.yz == centerGroupIDx);
      r0.y = r0.z ? r0.y : 0;
      if (r0.y != 0) {
        GBufferDiffuseColor[viewID].20 = u2.xyzw;
        GBufferDiffuseColor[viewID].36 = u2.x;
      }
    }
  }
  return;
}