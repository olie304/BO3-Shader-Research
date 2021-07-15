// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:08 2021

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

cbuffer RefProbePackCBuffer : register(b10)
{

  struct
  {
    uint4 data[14];
  } refProbeConstantsCB[273] : packoffset(c0);

}

cbuffer RefProbeBlendPackCBuffer : register(b11)
{

  struct
  {
    uint4 data[6];
  } refProbeAttenuationConstantsCB[682] : packoffset(c0);

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
StructuredBuffer<gDeferredCullBits> gDeferredCullBits : register(t26);
Texture2D<float> gSSAOTexture : register(t27);
Texture2D<float> gSSAODepthTexture : register(t28);


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
// unknown dcl_: dcl_resource_structured t26, 4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.x = mad(permuteStride, 48, (int)vThreadGroupID.x);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=8)(mixed,mixed,mixed,mixed) r0.xy, r0.x, l(0), t25.xyxx
r0.x = samplerLinear[]..swiz;
r0.y = samplerLinear[]..swiz;
  r0.xy = (int2)r0.xy & int2(4095,4095);
  r1.xy = mad((int2)r0.xy, int2(8,8), (int2)vThreadIDInGroup.xy);
  r1.zw = float2(0,0);
  r2.xyzw = GBufferNormalAndGloss.Load(r1.xyw).xyzw;
  r0.zw = (uint2)renderTargetSize.xy;
  r0.zw = cmp((uint2)r1.xy < (uint2)r0.zw);
  r0.z = r0.w ? r0.z : 0;
  r0.w = cmp(0 < r2.z);
  r0.z = r0.w ? r0.z : 0;
  if (r0.z == 0) {
    return;
  }
  r0.w = cmp(r2.z >= 0.5);
  r3.x = GBufferDepth.Load(r1.xyw).x;
  r3.yzw = GBufferDiffuseColor.Load(r1.xyw).xyz;
  r4.xyzw = GBufferSpecularColorAndOcclusion.Load(r1.xyw).xyzw;
  r5.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r6.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r7.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r8.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyz, int3(0, 0, 0)).xyw;
  r1.zw = (uint2)r1.yx;
  r9.xy = float2(0.5,0.5) + r1.wz;
  r10.x = cmp(r3.x >= 0.984375);
  r5.w = 1.01587307 * r3.x;
  r3.x = r3.x * 64 + -63;
  r3.x = r10.x ? r3.x : r5.w;
  r3.x = max(9.99999994e-09, r3.x);
  r10.y = rcp(r3.x);
  r9.zw = r0.zz ? r10.xy : 0;
  r10.xy = -subpixelOffset.xy + r9.xy;
  r10.xy = renderTargetSize.zw * r10.xy;
  r10.xy = r10.xy * float2(2,-2) + float2(-1,1);
  r11.x = inverseProjectionMatrix._m00 * r10.x;
  r11.y = inverseProjectionMatrix._m11 * r10.y;
  r11.z = 1;
  r10.xyz = r11.xyz * r9.www;
  r11.xyz = inverseViewMatrix._m10_m11_m12 * r10.yyy;
  r10.xyw = r10.xxx * inverseViewMatrix._m00_m01_m02 + r11.xyz;
  r10.xyz = r10.zzz * inverseViewMatrix._m20_m21_m22 + r10.xyw;
  r0.z = r2.w * 3 + 0.5;
  r0.z = (uint)r0.z;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r2.xy = float2(0.850000024,0.850000024) * r2.xy;
  r2.w = dot(r2.xy, r2.xy);
  r11.zw = float2(2,1) + -r2.ww;
  r2.w = sqrt(r11.z);
  r11.xy = r2.xy * r2.ww;
  r12.xyzw = (int4)r0.zzzz & int4(2,1,2,1);
  r12.xyzw = r12.zwxy ? float4(-1,-1,1.40129846e-45,1.40129846e-45) : float4(1,1,0,0);
  r0.z = (int)r12.w ^ (int)r12.z;
  r12.z = r0.z ? -1 : 1;
  r2.xyw = float3(-1,0,1) * r12.xyz;
  r13.xyz = float3(1,-2,1) * r12.xyz;
  r11.xyz = float3(0.408248305,0.707106769,0.577350259) * r11.xyw;
  r2.xyw = r11.yyy * r2.xyw;
  r2.xyw = r13.xyz * r11.xxx + r2.xyw;
  r11.xyz = r12.xyz * r11.zzz + r2.xyw;
  r0.z = r0.w ? -0.5 : -0.00146627566;
  r0.z = r2.z + r0.z;
  r2.y = saturate(2.00982332 * r0.z);
  r0.z = dot(-r10.xyz, -r10.xyz);
  r0.z = rsqrt(r0.z);
  r12.xyz = -r10.xyz * r0.zzz;
  r0.z = dot(r1.wz, float2(0.0671105608,0.00583714992));
  r0.z = frac(r0.z);
  r0.z = 52.9829178 * r0.z;
  r0.z = frac(r0.z);
  r0.z = r0.z * 6.28318548 + gameTick.w;
  sincos(r0.z, r13.x, r14.x);
  r0.z = dot(r1.zw, float2(0.0671105608,0.00583714992));
  r0.z = frac(r0.z);
  r0.z = 52.9829178 * r0.z;
  r0.z = frac(r0.z);
  r0.z = r0.z * 6.28318548 + gameTick.w;
  sincos(r0.z, r3.x, r15.x);
  r2.x = saturate(dot(r11.xyz, r12.xyz));
  r0.z = dot(-r12.xyz, r11.xyz);
  r0.z = r0.z + r0.z;
  r16.xyz = r11.xyz * -r0.zzz + -r12.xyz;
  r0.z = 17 * r2.y;
  r0.z = exp2(r0.z);
  r0.z = 2 + r0.z;
  r0.z = 2 / r0.z;
  r0.w = sqrt(r0.z);
  r1.zw = renderTargetSize.zw * r9.xy;
  r17.xyzw = gSSAOTexture.Gather(samplerLinearClamp_s, r1.zw).xyzw;
  r18.xyzw = gSSAODepthTexture.Gather(samplerLinearClamp_s, r1.zw).xyzw;
  r1.zw = float2(0.5,0.5) * r9.xy;
  r1.zw = frac(r1.zw);
  r2.zw = float2(1,1) + -r1.wz;
  r19.y = r2.w * r2.z;
  r19.xz = r2.zw * r1.zw;
  r19.w = r1.z * r1.w;
  r1.z = dot(r17.xyzw, r19.xyzw);
  r18.xyzw = r18.xyzw + -r9.wwww;
  r1.w = min(abs(r18.z), abs(r18.w));
  r1.w = min(abs(r18.y), r1.w);
  r1.w = min(abs(r18.x), r1.w);
  r2.z = max(abs(r18.z), abs(r18.w));
  r2.z = max(abs(r18.y), r2.z);
  r2.z = max(abs(r18.x), r2.z);
  r15.yzw = cmp(r1.www == abs(r18.yzw));
  r1.w = r15.y ? r17.y : r17.x;
  r1.w = r15.z ? r17.z : r1.w;
  r1.w = r15.w ? r17.w : r1.w;
  r2.w = 0.00999999978 * r9.w;
  r2.z = cmp(r2.w < r2.z);
  r1.z = r2.z ? r1.w : r1.z;
  r1.w = r4.z * r1.z;
  r2.z = 1 + -r2.y;
  r2.w = 5 * r2.z;
  r5.w = r2.z * 5 + -2.5;
  r5.w = 0.400000006 * r5.w;
  r5.w = max(0, r5.w);
  r5.w = 100 * r5.w;
  r9.xy = -r2.zz * float2(10,5) + float2(6.85740995,7.08500004);
  r6.w = exp2(r9.x);
  r6.w = r6.w * r2.x;
  r6.w = 9.1368103 * r6.w;
  r7.w = r2.w * r2.z;
  r7.w = -r7.w * 2.0159049 + r9.y;
  r7.w = exp2(r7.w);
  r7.w = r7.w * r2.x;
  r7.w = 9.70808983 * r7.w;
  r6.w = max(r7.w, r6.w);
  r6.w = max(1.26815999, r6.w);
  r7.w = numRefProbes + -numOverrideProbes;
  r8.w = (uint)renderTargetSize.x;
  r8.w = (int)r8.w + 7;
  r8.w = (uint)r8.w >> 3;
  r0.x = mad((int)r0.y, (int)r8.w, (int)r0.x);
  r0.y = (uint)r0.x << 5;
  bitmask.x = ((~(-1 << 27)) << 5) & 0xffffffff;  r0.x = (((uint)r0.x << 5) & bitmask.x) | ((uint)16 & ~bitmask.x);
  r8.w = (int)r7.w & -32;
  r9.x = (int)r7.w + (int)-r8.w;
  r9.y = numRefProbes & -32;
  r9.w = (int)-r9.y + numRefProbes;
  r17.yz = float2(0,1);
  r18.xy = float2(0,0);
  r19.x = 1;
  r20.xy = float2(0,0);
  r21.xy = float2(0,0);
  r22.xyzw = float4(0,0,0,0);
  r23.yzw = float3(0,0,0);
  r12.w = r8.w;
  while (true) {
    r13.z = cmp((uint)r12.w >= numRefProbes);
    if (r13.z != 0) break;
    r13.z = (uint)r12.w >> 5;
    r13.z = (int)r0.x + (int)r13.z;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.z, r13.z, l(0), t26.xxxx
  r13.z = samplerLinear[]..swiz;
    r13.w = cmp((int)r8.w == (int)r12.w);
    bitmask.w = ((~(-1 << r9.x)) << 0) & 0xffffffff;  r14.w = (((uint)0 << 0) & bitmask.w) | ((uint)r13.z & ~bitmask.w);
    r13.z = r13.w ? r14.w : r13.z;
    r13.w = cmp((int)r9.y == (int)r12.w);
    if (r9.w == 0) r14.w = 0; else if (r9.w+0 < 32) {     r14.w = (uint)r13.z << (32-(r9.w + 0)); r14.w = (uint)r14.w >> (32-r9.w);    } else r14.w = (uint)r13.z >> 0;
    r13.z = r13.w ? r14.w : r13.z;
    r24.xyzw = r22.xyzw;
    r25.xyz = r23.yzw;
    r13.w = r13.z;
    while (true) {
      if (r13.w == 0) break;
      r14.w = firstbitlow((uint)r13.w);
      r15.y = 1 << (int)r14.w;
      r15.y = ~(int)r15.y;
      r13.w = (int)r13.w & (int)r15.y;
      r14.w = (int)r12.w + (int)r14.w;
      r14.w = (int)r14.w * 14;
      r15.yzw = -refProbeConstantsCB[r14.w].data[0].xyz + r10.xyz;
      r17.w = 0x0000ffff & (int)refProbeConstantsCB[r14.w].data[7].z;
      if (6 == 0) r18.w = 0; else if (6+25 < 32) {       r18.w = (uint)refProbeConstantsCB[r14.w].data[7].z << (32-(6 + 25)); r18.w = (uint)r18.w >> (32-6);      } else r18.w = (uint)refProbeConstantsCB[r14.w].data[7].z >> 25;
      r19.z = (int)r17.w * 6;
      r19.w = dot(refProbeAttenuationConstantsCB[r19.z].data[0].xyz, r15.yzw);
      r19.w = saturate(refProbeAttenuationConstantsCB[r19.z].data[0].w + r19.w);
      r20.w = dot(refProbeAttenuationConstantsCB[r19.z].data[1].xyz, r15.yzw);
      r20.w = saturate(refProbeAttenuationConstantsCB[r19.z].data[1].w + r20.w);
      r19.w = r20.w * r19.w;
      r20.w = dot(refProbeAttenuationConstantsCB[r19.z].data[2].xyz, r15.yzw);
      r20.w = saturate(refProbeAttenuationConstantsCB[r19.z].data[2].w + r20.w);
      r19.w = r20.w * r19.w;
      r20.w = dot(refProbeAttenuationConstantsCB[r19.z].data[3].xyz, r15.yzw);
      r20.w = saturate(refProbeAttenuationConstantsCB[r19.z].data[3].w + r20.w);
      r19.w = r20.w * r19.w;
      r20.w = dot(refProbeAttenuationConstantsCB[r19.z].data[4].xyz, r15.yzw);
      r20.w = saturate(refProbeAttenuationConstantsCB[r19.z].data[4].w + r20.w);
      r19.w = r20.w * r19.w;
      r20.w = dot(refProbeAttenuationConstantsCB[r19.z].data[5].xyz, r15.yzw);
      r19.z = saturate(refProbeAttenuationConstantsCB[r19.z].data[5].w + r20.w);
      r17.x = r19.w * r19.z;
      r19.z = 1 & (int)refProbeConstantsCB[r14.w].data[6].x;
      r19.zw = r19.zz ? r17.xy : r17.zx;
      r17.x = refProbeConstantsCB[r14.w].data[6].x;
      r26.xy = r19.zw;
      r20.w = 1;
      while (true) {
        r21.w = cmp((int)r20.w >= (int)r18.w);
        if (r21.w != 0) break;
        r21.w = (int)r17.w + (int)r20.w;
        r21.w = (int)r21.w * 6;
        r26.z = dot(refProbeAttenuationConstantsCB[r21.w].data[0].xyz, r15.yzw);
        r26.z = saturate(refProbeAttenuationConstantsCB[r21.w].data[0].w + r26.z);
        r26.z = r26.x * r26.z;
        r26.w = dot(refProbeAttenuationConstantsCB[r21.w].data[1].xyz, r15.yzw);
        r26.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[1].w + r26.w);
        r26.z = r26.z * r26.w;
        r26.w = dot(refProbeAttenuationConstantsCB[r21.w].data[2].xyz, r15.yzw);
        r26.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[2].w + r26.w);
        r26.z = r26.z * r26.w;
        r26.w = dot(refProbeAttenuationConstantsCB[r21.w].data[3].xyz, r15.yzw);
        r26.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[3].w + r26.w);
        r26.z = r26.z * r26.w;
        r26.w = dot(refProbeAttenuationConstantsCB[r21.w].data[4].xyz, r15.yzw);
        r26.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[4].w + r26.w);
        r26.z = r26.z * r26.w;
        r26.w = dot(refProbeAttenuationConstantsCB[r21.w].data[5].xyz, r15.yzw);
        r21.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[5].w + r26.w);
        r26.x = r26.z * r21.w;
        r26.w = (uint)r17.x >> 2;
        if (1 == 0) r27.x = 0; else if (1+2 < 32) {         r27.x = (uint)r17.x << (32-(1 + 2)); r27.x = (uint)r27.x >> (32-1);        } else r27.x = (uint)r17.x >> 2;
        r27.y = (int)r26.w & 2;
        r27.z = max(r26.y, r26.x);
        r21.w = -r26.z * r21.w + 1;
        r21.w = r26.y * r21.w;
        r19.y = r27.y ? r21.w : r27.z;
        r26.xy = r27.xx ? r26.xy : r19.xy;
        r20.w = (int)r20.w + 1;
        r17.x = r26.w;
      }
      r26.y = saturate(r26.y);
      r17.x = refProbeConstantsCB[r14.w].data[6].y * r26.y;
      r17.w = cmp(0 < r17.x);
      if (r17.w != 0) {
        r25.z = r26.y * refProbeConstantsCB[r14.w].data[6].y + r25.z;
        r17.x = refProbeConstantsCB[r14.w].data[7].y * r17.x;
        r27.x = refProbeConstantsCB[r14.w].data[7].w;
        r27.yz = refProbeConstantsCB[r14.w].data[8].xy;
        r17.w = dot(r16.xyz, r27.xyz);
        r18.w = dot(r15.yzw, r27.xyz);
        r18.w = -refProbeConstantsCB[r14.w].data[8].z + r18.w;
        r19.y = cmp(r18.w >= 0);
        r18.w = max(abs(r18.w), r5.w);
        r18.w = r19.y ? r18.w : -r18.w;
        r17.w = max(1.00000001e-07, -r17.w);
        r17.w = r18.w / r17.w;
        r17.w = min(131072, abs(r17.w));
        r27.x = refProbeConstantsCB[r14.w].data[8].w;
        r27.yz = refProbeConstantsCB[r14.w].data[9].xy;
        r18.w = dot(r16.xyz, r27.xyz);
        r19.y = dot(r15.yzw, r27.xyz);
        r19.y = -refProbeConstantsCB[r14.w].data[9].z + r19.y;
        r19.z = cmp(r19.y >= 0);
        r19.y = max(abs(r19.y), r5.w);
        r19.y = r19.z ? r19.y : -r19.y;
        r18.w = max(1.00000001e-07, -r18.w);
        r18.w = r19.y / r18.w;
        r17.w = min(abs(r18.w), r17.w);
        r27.x = refProbeConstantsCB[r14.w].data[9].w;
        r27.yz = refProbeConstantsCB[r14.w].data[10].xy;
        r18.w = dot(r16.xyz, r27.xyz);
        r19.y = dot(r15.yzw, r27.xyz);
        r19.y = -refProbeConstantsCB[r14.w].data[10].z + r19.y;
        r19.z = cmp(r19.y >= 0);
        r19.y = max(abs(r19.y), r5.w);
        r19.y = r19.z ? r19.y : -r19.y;
        r18.w = max(1.00000001e-07, -r18.w);
        r18.w = r19.y / r18.w;
        r17.w = min(abs(r18.w), r17.w);
        r27.x = refProbeConstantsCB[r14.w].data[10].w;
        r27.yz = refProbeConstantsCB[r14.w].data[11].xy;
        r18.w = dot(r16.xyz, r27.xyz);
        r19.y = dot(r15.yzw, r27.xyz);
        r19.y = -refProbeConstantsCB[r14.w].data[11].z + r19.y;
        r19.z = cmp(r19.y >= 0);
        r19.y = max(abs(r19.y), r5.w);
        r19.y = r19.z ? r19.y : -r19.y;
        r18.w = max(1.00000001e-07, -r18.w);
        r18.w = r19.y / r18.w;
        r17.w = min(abs(r18.w), r17.w);
        r27.x = refProbeConstantsCB[r14.w].data[11].w;
        r27.yz = refProbeConstantsCB[r14.w].data[12].xy;
        r18.w = dot(r16.xyz, r27.xyz);
        r19.y = dot(r15.yzw, r27.xyz);
        r19.y = -refProbeConstantsCB[r14.w].data[12].z + r19.y;
        r19.z = cmp(r19.y >= 0);
        r19.y = max(abs(r19.y), r5.w);
        r19.y = r19.z ? r19.y : -r19.y;
        r18.w = max(1.00000001e-07, -r18.w);
        r18.w = r19.y / r18.w;
        r17.w = min(abs(r18.w), r17.w);
        r27.x = refProbeConstantsCB[r14.w].data[12].w;
        r27.yz = refProbeConstantsCB[r14.w].data[13].xy;
        r18.w = dot(r16.xyz, r27.xyz);
        r19.y = dot(r15.yzw, r27.xyz);
        r19.y = -refProbeConstantsCB[r14.w].data[13].z + r19.y;
        r19.z = cmp(r19.y >= 0);
        r19.y = max(abs(r19.y), r5.w);
        r19.y = r19.z ? r19.y : -r19.y;
        r18.w = max(1.00000001e-07, -r18.w);
        r18.w = r19.y / r18.w;
        r17.w = min(abs(r18.w), r17.w);
        r27.x = refProbeConstantsCB[r14.w].data[3].w + r15.y;
        r27.yz = refProbeConstantsCB[r14.w].data[4].xy + r15.zw;
        r19.yzw = r16.xyz * r17.www + r27.xyz;
        r18.w = dot(r19.yzw, r19.yzw);
        r18.w = sqrt(r18.w);
        r17.w = r17.w / r18.w;
        r17.w = r17.w + r17.w;
        r17.w = sqrt(r17.w);
        r17.w = r2.z * 5 + r17.w;
        r17.w = -0.844799995 + r17.w;
        r27.x = refProbeConstantsCB[r14.w].data[0].w;
        r27.y = refProbeConstantsCB[r14.w].data[1].z;
        r27.z = refProbeConstantsCB[r14.w].data[2].y;
        r28.x = dot(r19.yzw, r27.xyz);
        r29.xy = refProbeConstantsCB[r14.w].data[1].xw;
        r29.z = refProbeConstantsCB[r14.w].data[2].z;
        r28.y = dot(r19.yzw, r29.xyz);
        r30.x = refProbeConstantsCB[r14.w].data[1].y;
        r30.yz = refProbeConstantsCB[r14.w].data[2].xw;
        r28.z = dot(r19.yzw, r30.xyz);
        if (9 == 0) r18.w = 0; else if (9+16 < 32) {         r18.w = (uint)refProbeConstantsCB[r14.w].data[7].z << (32-(9 + 16)); r18.w = (uint)r18.w >> (32-9);        } else r18.w = (uint)refProbeConstantsCB[r14.w].data[7].z >> 16;
        r28.w = (uint)r18.w;
        r19.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r28.xyzw, r17.w).xyz;
        r31.x = dot(r15.yzw, r27.xyz);
        r31.y = dot(r15.yzw, r29.xyz);
        r31.z = dot(r15.yzw, r30.xyz);
        r15.yzw = saturate(r31.xyz * refProbeConstantsCB[r14.w].data[3].xyz + float3(0.5,0.5,0.5));
        r31.xy = refProbeConstantsCB[r14.w].data[4].zw * r15.yz;
        r31.z = refProbeConstantsCB[r14.w].data[5].x * r15.w;
        r15.yzw = refProbeConstantsCB[r14.w].data[5].yzw + r31.xyz;
        r28.x = dot(r11.xyz, r27.xyz);
        r28.y = dot(r11.xyz, r29.xyz);
        r28.z = dot(r11.xyz, r30.xyz);
        r26.xzw = cmp(float3(0,0,0) < r28.xyz);
        r18.z = r26.x ? 0 : 0.5;
        r27.xyz = r18.xyz + r15.yzw;
        r27.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r27.xyz, 0).xyz;
        r29.xyz = r28.xyz * r28.xyz;
        r29.xyz = r29.xyz * r17.xxx;
        r20.z = r26.z ? 0 : 0.5;
        r30.xyz = r20.xyz + r15.yzw;
        r30.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r30.xyz, 0).xyz;
        r30.xyz = r30.xyz * r29.yyy;
        r27.xyz = r27.xyz * r29.xxx + r30.xyz;
        r21.z = r26.w ? 0 : 0.5;
        r15.yzw = r21.xyz + r15.yzw;
        r15.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r15.yzw, 0).xyz;
        r15.yzw = r15.yzw * r29.zzz + r27.xyz;
        r26.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r28.xyzw, 6).xyz;
        r27.xyz = r26.xzw * r15.yzw;
        r14.w = dot(r27.xyz, float3(0.212599993,0.715200007,0.0722000003));
        r24.xyz = r15.yzw * r26.xzw + r24.xyz;
        r15.y = r14.w * r6.w;
        r19.yzw = r19.yzw * r17.xxx;
        r15.z = dot(r19.yzw, float3(0.212599993,0.715200007,0.0722000003));
        r14.w = r6.w * r14.w + r15.z;
        r14.w = r15.y / r14.w;
        r27.x = r24.w;
        r27.yz = r25.xy;
        r25.xyw = r19.zwy * r14.www + r27.yzx;
        r24.w = r25.w;
      }
    }
    r22.xyzw = r24.xyzw;
    r23.yzw = r25.xyz;
    r12.w = (int)r12.w + 32;
  }
  r9.y = cmp(r23.w < 1);
  if (r9.y != 0) {
    r17.yz = float2(0,1);
    r18.xy = float2(0,0);
    r19.x = 1;
    r20.xy = float2(0,0);
    r21.xy = float2(0,0);
    r24.x = r22.w;
    r24.yzw = r23.yzw;
    r15.yzw = r22.xyz;
    r9.y = r23.w;
    r9.w = 0;
    while (true) {
      r12.w = cmp((uint)r9.w >= (uint)r7.w);
      if (r12.w != 0) break;
      r12.w = (uint)r9.w >> 5;
      r12.w = (int)r0.x + (int)r12.w;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.w, r12.w, l(0), t26.xxxx
    r12.w = samplerLinear[]..swiz;
      r13.z = cmp((int)r8.w == (int)r9.w);
      if (r9.x == 0) r13.w = 0; else if (r9.x+0 < 32) {       r13.w = (uint)r12.w << (32-(r9.x + 0)); r13.w = (uint)r13.w >> (32-r9.x);      } else r13.w = (uint)r12.w >> 0;
      r12.w = r13.z ? r13.w : r12.w;
      r25.xyzw = r24.xyzw;
      r26.xyz = r15.yzw;
      r13.z = r9.y;
      r13.w = r12.w;
      while (true) {
        if (r13.w == 0) break;
        r14.w = firstbitlow((uint)r13.w);
        r17.w = 1 << (int)r14.w;
        r17.w = ~(int)r17.w;
        r13.w = (int)r13.w & (int)r17.w;
        r14.w = (int)r9.w + (int)r14.w;
        r14.w = (int)r14.w * 14;
        r27.xyz = -refProbeConstantsCB[r14.w].data[0].xyz + r10.xyz;
        r17.w = 0x0000ffff & (int)refProbeConstantsCB[r14.w].data[7].z;
        if (6 == 0) r18.w = 0; else if (6+25 < 32) {         r18.w = (uint)refProbeConstantsCB[r14.w].data[7].z << (32-(6 + 25)); r18.w = (uint)r18.w >> (32-6);        } else r18.w = (uint)refProbeConstantsCB[r14.w].data[7].z >> 25;
        r19.z = (int)r17.w * 6;
        r19.w = dot(refProbeAttenuationConstantsCB[r19.z].data[0].xyz, r27.xyz);
        r19.w = saturate(refProbeAttenuationConstantsCB[r19.z].data[0].w + r19.w);
        r20.w = dot(refProbeAttenuationConstantsCB[r19.z].data[1].xyz, r27.xyz);
        r20.w = saturate(refProbeAttenuationConstantsCB[r19.z].data[1].w + r20.w);
        r19.w = r20.w * r19.w;
        r20.w = dot(refProbeAttenuationConstantsCB[r19.z].data[2].xyz, r27.xyz);
        r20.w = saturate(refProbeAttenuationConstantsCB[r19.z].data[2].w + r20.w);
        r19.w = r20.w * r19.w;
        r20.w = dot(refProbeAttenuationConstantsCB[r19.z].data[3].xyz, r27.xyz);
        r20.w = saturate(refProbeAttenuationConstantsCB[r19.z].data[3].w + r20.w);
        r19.w = r20.w * r19.w;
        r20.w = dot(refProbeAttenuationConstantsCB[r19.z].data[4].xyz, r27.xyz);
        r20.w = saturate(refProbeAttenuationConstantsCB[r19.z].data[4].w + r20.w);
        r19.w = r20.w * r19.w;
        r20.w = dot(refProbeAttenuationConstantsCB[r19.z].data[5].xyz, r27.xyz);
        r19.z = saturate(refProbeAttenuationConstantsCB[r19.z].data[5].w + r20.w);
        r17.x = r19.w * r19.z;
        r19.z = 1 & (int)refProbeConstantsCB[r14.w].data[6].x;
        r19.zw = r19.zz ? r17.xy : r17.zx;
        r17.x = refProbeConstantsCB[r14.w].data[6].x;
        r28.xy = r19.zw;
        r20.w = 1;
        while (true) {
          r21.w = cmp((int)r20.w >= (int)r18.w);
          if (r21.w != 0) break;
          r21.w = (int)r17.w + (int)r20.w;
          r21.w = (int)r21.w * 6;
          r26.w = dot(refProbeAttenuationConstantsCB[r21.w].data[0].xyz, r27.xyz);
          r26.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[0].w + r26.w);
          r26.w = r28.x * r26.w;
          r27.w = dot(refProbeAttenuationConstantsCB[r21.w].data[1].xyz, r27.xyz);
          r27.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[1].w + r27.w);
          r26.w = r27.w * r26.w;
          r27.w = dot(refProbeAttenuationConstantsCB[r21.w].data[2].xyz, r27.xyz);
          r27.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[2].w + r27.w);
          r26.w = r27.w * r26.w;
          r27.w = dot(refProbeAttenuationConstantsCB[r21.w].data[3].xyz, r27.xyz);
          r27.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[3].w + r27.w);
          r26.w = r27.w * r26.w;
          r27.w = dot(refProbeAttenuationConstantsCB[r21.w].data[4].xyz, r27.xyz);
          r27.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[4].w + r27.w);
          r26.w = r27.w * r26.w;
          r27.w = dot(refProbeAttenuationConstantsCB[r21.w].data[5].xyz, r27.xyz);
          r21.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[5].w + r27.w);
          r28.x = r26.w * r21.w;
          r27.w = (uint)r17.x >> 2;
          if (1 == 0) r28.z = 0; else if (1+2 < 32) {           r28.z = (uint)r17.x << (32-(1 + 2)); r28.z = (uint)r28.z >> (32-1);          } else r28.z = (uint)r17.x >> 2;
          r28.w = (int)r27.w & 2;
          r29.x = max(r28.y, r28.x);
          r21.w = -r26.w * r21.w + 1;
          r21.w = r28.y * r21.w;
          r19.y = r28.w ? r21.w : r29.x;
          r28.xy = r28.zz ? r28.xy : r19.xy;
          r20.w = (int)r20.w + 1;
          r17.x = r27.w;
        }
        r17.x = saturate(r28.y + -r13.z);
        r17.w = refProbeConstantsCB[r14.w].data[6].y * r17.x;
        r18.w = cmp(0 < r17.w);
        if (r18.w != 0) {
          r25.w = r17.x * refProbeConstantsCB[r14.w].data[6].y + r25.w;
          r17.x = refProbeConstantsCB[r14.w].data[7].y * r17.w;
          r29.x = refProbeConstantsCB[r14.w].data[7].w;
          r29.yz = refProbeConstantsCB[r14.w].data[8].xy;
          r17.w = dot(r16.xyz, r29.xyz);
          r18.w = dot(r27.xyz, r29.xyz);
          r18.w = -refProbeConstantsCB[r14.w].data[8].z + r18.w;
          r19.y = cmp(r18.w >= 0);
          r18.w = max(abs(r18.w), r5.w);
          r18.w = r19.y ? r18.w : -r18.w;
          r17.w = max(1.00000001e-07, -r17.w);
          r17.w = r18.w / r17.w;
          r17.w = min(131072, abs(r17.w));
          r29.x = refProbeConstantsCB[r14.w].data[8].w;
          r29.yz = refProbeConstantsCB[r14.w].data[9].xy;
          r18.w = dot(r16.xyz, r29.xyz);
          r19.y = dot(r27.xyz, r29.xyz);
          r19.y = -refProbeConstantsCB[r14.w].data[9].z + r19.y;
          r19.z = cmp(r19.y >= 0);
          r19.y = max(abs(r19.y), r5.w);
          r19.y = r19.z ? r19.y : -r19.y;
          r18.w = max(1.00000001e-07, -r18.w);
          r18.w = r19.y / r18.w;
          r17.w = min(abs(r18.w), r17.w);
          r29.x = refProbeConstantsCB[r14.w].data[9].w;
          r29.yz = refProbeConstantsCB[r14.w].data[10].xy;
          r18.w = dot(r16.xyz, r29.xyz);
          r19.y = dot(r27.xyz, r29.xyz);
          r19.y = -refProbeConstantsCB[r14.w].data[10].z + r19.y;
          r19.z = cmp(r19.y >= 0);
          r19.y = max(abs(r19.y), r5.w);
          r19.y = r19.z ? r19.y : -r19.y;
          r18.w = max(1.00000001e-07, -r18.w);
          r18.w = r19.y / r18.w;
          r17.w = min(abs(r18.w), r17.w);
          r29.x = refProbeConstantsCB[r14.w].data[10].w;
          r29.yz = refProbeConstantsCB[r14.w].data[11].xy;
          r18.w = dot(r16.xyz, r29.xyz);
          r19.y = dot(r27.xyz, r29.xyz);
          r19.y = -refProbeConstantsCB[r14.w].data[11].z + r19.y;
          r19.z = cmp(r19.y >= 0);
          r19.y = max(abs(r19.y), r5.w);
          r19.y = r19.z ? r19.y : -r19.y;
          r18.w = max(1.00000001e-07, -r18.w);
          r18.w = r19.y / r18.w;
          r17.w = min(abs(r18.w), r17.w);
          r29.x = refProbeConstantsCB[r14.w].data[11].w;
          r29.yz = refProbeConstantsCB[r14.w].data[12].xy;
          r18.w = dot(r16.xyz, r29.xyz);
          r19.y = dot(r27.xyz, r29.xyz);
          r19.y = -refProbeConstantsCB[r14.w].data[12].z + r19.y;
          r19.z = cmp(r19.y >= 0);
          r19.y = max(abs(r19.y), r5.w);
          r19.y = r19.z ? r19.y : -r19.y;
          r18.w = max(1.00000001e-07, -r18.w);
          r18.w = r19.y / r18.w;
          r17.w = min(abs(r18.w), r17.w);
          r29.x = refProbeConstantsCB[r14.w].data[12].w;
          r29.yz = refProbeConstantsCB[r14.w].data[13].xy;
          r18.w = dot(r16.xyz, r29.xyz);
          r19.y = dot(r27.xyz, r29.xyz);
          r19.y = -refProbeConstantsCB[r14.w].data[13].z + r19.y;
          r19.z = cmp(r19.y >= 0);
          r19.y = max(abs(r19.y), r5.w);
          r19.y = r19.z ? r19.y : -r19.y;
          r18.w = max(1.00000001e-07, -r18.w);
          r18.w = r19.y / r18.w;
          r17.w = min(abs(r18.w), r17.w);
          r29.x = refProbeConstantsCB[r14.w].data[3].w + r27.x;
          r29.yz = refProbeConstantsCB[r14.w].data[4].xy + r27.yz;
          r19.yzw = r16.xyz * r17.www + r29.xyz;
          r18.w = dot(r19.yzw, r19.yzw);
          r18.w = sqrt(r18.w);
          r17.w = r17.w / r18.w;
          r17.w = r17.w + r17.w;
          r17.w = sqrt(r17.w);
          r17.w = r2.z * 5 + r17.w;
          r17.w = -0.844799995 + r17.w;
          r29.x = refProbeConstantsCB[r14.w].data[0].w;
          r29.y = refProbeConstantsCB[r14.w].data[1].z;
          r29.z = refProbeConstantsCB[r14.w].data[2].y;
          r30.x = dot(r19.yzw, r29.xyz);
          r31.xy = refProbeConstantsCB[r14.w].data[1].xw;
          r31.z = refProbeConstantsCB[r14.w].data[2].z;
          r30.y = dot(r19.yzw, r31.xyz);
          r32.x = refProbeConstantsCB[r14.w].data[1].y;
          r32.yz = refProbeConstantsCB[r14.w].data[2].xw;
          r30.z = dot(r19.yzw, r32.xyz);
          if (9 == 0) r18.w = 0; else if (9+16 < 32) {           r18.w = (uint)refProbeConstantsCB[r14.w].data[7].z << (32-(9 + 16)); r18.w = (uint)r18.w >> (32-9);          } else r18.w = (uint)refProbeConstantsCB[r14.w].data[7].z >> 16;
          r30.w = (uint)r18.w;
          r19.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r30.xyzw, r17.w).xyz;
          r33.x = dot(r27.xyz, r29.xyz);
          r33.y = dot(r27.xyz, r31.xyz);
          r33.z = dot(r27.xyz, r32.xyz);
          r27.xyz = saturate(r33.xyz * refProbeConstantsCB[r14.w].data[3].xyz + float3(0.5,0.5,0.5));
          r33.xy = refProbeConstantsCB[r14.w].data[4].zw * r27.xy;
          r33.z = refProbeConstantsCB[r14.w].data[5].x * r27.z;
          r27.xyz = refProbeConstantsCB[r14.w].data[5].yzw + r33.xyz;
          r30.x = dot(r11.xyz, r29.xyz);
          r30.y = dot(r11.xyz, r31.xyz);
          r30.z = dot(r11.xyz, r32.xyz);
          r28.xzw = cmp(float3(0,0,0) < r30.xyz);
          r18.z = r28.x ? 0 : 0.5;
          r29.xyz = r27.xyz + r18.xyz;
          r29.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r29.xyz, 0).xyz;
          r31.xyz = r30.xyz * r30.xyz;
          r31.xyz = r31.xyz * r17.xxx;
          r20.z = r28.z ? 0 : 0.5;
          r32.xyz = r27.xyz + r20.xyz;
          r32.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r32.xyz, 0).xyz;
          r32.xyz = r32.xyz * r31.yyy;
          r29.xyz = r29.xyz * r31.xxx + r32.xyz;
          r21.z = r28.w ? 0 : 0.5;
          r27.xyz = r27.xyz + r21.xyz;
          r27.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r27.xyz, 0).xyz;
          r27.xyz = r27.xyz * r31.zzz + r29.xyz;
          r28.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r30.xyzw, 6).xyz;
          r29.xyz = r28.xzw * r27.xyz;
          r14.w = dot(r29.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r26.xyz = r27.xyz * r28.xzw + r26.xyz;
          r17.w = r14.w * r6.w;
          r19.yzw = r19.yzw * r17.xxx;
          r17.x = dot(r19.yzw, float3(0.212599993,0.715200007,0.0722000003));
          r14.w = r6.w * r14.w + r17.x;
          r14.w = r17.w / r14.w;
          r25.xyz = r19.yzw * r14.www + r25.xyz;
        }
      }
      r24.xyzw = r25.xyzw;
      r15.yzw = r26.xyz;
      r9.w = (int)r9.w + 32;
    }
    r23.xyzw = r24.zxyw;
    r22.xyz = r15.yzw;
    r23.xyzw = r23.yzxw;
  } else {
    r23.x = r22.w;
  }
  r0.x = max(1, r23.w);
  r0.x = rcp(r0.x);
  r23.w = saturate(r23.w);
  r9.xyw = r22.xyz * r0.xxx;
  r15.yzw = r23.xyz * r0.xxx;
  r2.z = cmp(r23.w < 0.99000001);
  if (r2.z != 0) {
    r2.z = 1 + -r23.w;
    r5.w = sunConstants.globalProbeExposure * r2.z;
    r17.xyz = -globalProbeConstants.data[0].xyz + r10.xyz;
    r18.x = globalProbeConstants.data[0].w * r17.x;
    r18.yz = globalProbeConstants.data[1].xy * r17.yz;
    r17.xyz = saturate(float3(0.5,0.5,0.5) + r18.xyz);
    r18.xy = globalProbeConstants.data[1].zw * r17.xy;
    r18.z = globalProbeConstants.data[2].x * r17.z;
    r17.xyz = globalProbeConstants.data[2].yzw + r18.xyz;
    r18.xyz = cmp(float3(0,0,0) < r11.xyz);
    r18.xyz = r18.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r18.w = 0;
    r19.xyz = r18.wwx + r17.xyz;
    r19.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r19.xyz, 0).xyz;
    r20.xyz = r11.xyz * r11.xyz;
    r20.xyz = r20.xyz * r5.www;
    r21.xyz = r18.wwy + r17.xyz;
    r21.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r21.xyz, 0).xyz;
    r21.xyz = r21.xyz * r20.yyy;
    r19.xyz = r19.xyz * r20.xxx + r21.xyz;
    r17.xyz = r18.wwz + r17.xyz;
    r17.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r17.xyz, 0).xyz;
    r17.xyz = r17.xyz * r20.zzz + r19.xyz;
    r11.w = 0;
    r18.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, 6).xyz;
    r17.xyz = r18.xyz * r17.xyz;
    r5.w = dot(r17.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r9.xyw = r22.xyz * r0.xxx + r17.xyz;
    r16.w = 0;
    r17.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r16.xyzw, r2.w).xyz;
    r0.x = sunConstants.globalProbeExposure * r2.z + -r5.w;
    r0.x = r2.y * r0.x + r5.w;
    r15.yzw = r17.xyz * r0.xxx + r15.yzw;
  }
  r0.x = r4.z * r1.z + r2.x;
  r0.x = log2(abs(r0.x));
  r0.x = r0.w * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r4.z * r1.z + r0.x;
  r0.x = saturate(-1 + r0.x);
  r9.xyw = r9.xyw * r1.www;
  r1.zw = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r1.zw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r1.zw, 0).xy;
  r2.yzw = r15.yzw * r0.xxx;
  r15.yzw = r2.yzw * r1.zzz;
  r2.yzw = r2.yzw * r1.www;
  r0.x = sqrt(r0.w);
  r0.x = r0.x * 0.5 + 0.5;
  r0.x = r0.x * r0.x;
  r1.z = 0.5 * r0.x;
  r0.x = -r0.x * 0.5 + 1;
  r1.w = r2.x * r0.x + r1.z;
  r0.x = r1.w * r0.x;
  r1.z = r1.z * r1.w;
  r1.w = ~(int)r9.z;
  r17.x = -r13.x;
  r2.x = -r2.x * 0.5 + 1;
  r10.w = 1;
  r18.z = 1;
  r19.w = 1;
  r20.w = 1;
  r21.w = 1;
  r17.z = r13.x;
  r22.w = 1;
  r17.yw = r14.xx;
  r13.y = r17.w;
  r14.y = r17.x;
  r14.z = r13.x;
  r23.x = r14.x;
  r23.y = r17.x;
  r23.z = r13.x;
  r24.w = 1;
  r25.x = r14.x;
  r25.y = r17.x;
  r25.z = r13.x;
  r26.x = r14.x;
  r26.y = r17.x;
  r26.z = r13.x;
  r27.xyz = r9.xyw;
  r28.xyz = r15.yzw;
  r29.xyz = r2.yzw;
  r4.z = enableDitheredShadow;
  r5.w = 0;
  while (true) {
    r6.w = cmp((uint)r5.w >= numLights);
    if (r6.w != 0) break;
    r6.w = (uint)r5.w >> 5;
    r6.w = (int)r0.y + (int)r6.w;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r6.w, r6.w, l(0), t26.xxxx
  r6.w = samplerLinear[]..swiz;
    r30.xyz = r27.xyz;
    r31.xyz = r28.xyz;
    r32.xyz = r29.xyz;
    r7.w = r4.z;
    r8.w = r6.w;
    while (true) {
      if (r8.w == 0) break;
      r11.w = firstbitlow((uint)r8.w);
      r12.w = 1 << (int)r11.w;
      r12.w = ~(int)r12.w;
      r8.w = (int)r8.w & (int)r12.w;
      r11.w = (int)r5.w + (int)r11.w;
      r11.w = (int)r11.w * 15;
      if (3 == 0) r12.w = 0; else if (3+24 < 32) {       r12.w = (uint)lightConstantsCB[r11.w].data[1].w << (32-(3 + 24)); r12.w = (uint)r12.w >> (32-3);      } else r12.w = (uint)lightConstantsCB[r11.w].data[1].w >> 24;
      r13.z = cmp((int)r12.w == 2);
      if (r13.z != 0) {
        if (3 == 0) r13.z = 0; else if (3+27 < 32) {         r13.z = (uint)lightConstantsCB[r11.w].data[1].w << (32-(3 + 27)); r13.z = (uint)r13.z >> (32-3);        } else r13.z = (uint)lightConstantsCB[r11.w].data[1].w >> 27;
        r33.xy = lightConstantsCB[r11.w].data[3].zw + -r10.xy;
        r33.z = lightConstantsCB[r11.w].data[4].x + -r10.z;
        r13.w = dot(r33.xyz, r33.xyz);
        r13.w = rsqrt(r13.w);
        r34.xyz = r33.xyz * r13.www;
        r14.w = lightConstantsCB[r11.w].data[1].z * r0.z;
        r14.w = 0.25 * r14.w;
        r16.w = dot(r11.xyz, r34.xyz);
        r18.w = saturate(r16.w);
        r23.w = cmp(0 < r18.w);
        if (r23.w != 0) {
          r34.xyz = lightConstantsCB[r11.w].data[7].yzw;
          r34.w = lightConstantsCB[r11.w].data[8].x;
          r23.w = dot(r34.xyzw, r10.xyzw);
          r25.w = cmp(r23.w < 1);
          if (r25.w != 0) {
            r35.xyz = float3(1,1,1);
            r25.w = 0;
          } else {
            r36.xyz = lightConstantsCB[r11.w].data[0].xyz + -r10.xyz;
            r26.w = lightConstantsCB[r11.w].data[3].x * lightConstantsCB[r11.w].data[3].x;
            r27.w = dot(r36.xyz, r36.xyz);
            r26.w = r26.w / r27.w;
            r26.w = min(1, r26.w);
            r36.xy = saturate(r23.ww * lightConstantsCB[r11.w].data[2].xz + lightConstantsCB[r11.w].data[2].yw);
            r36.zw = r36.xy * r36.xy;
            r36.xy = r36.xy * float2(-2,-2) + float2(3,3);
            r36.xy = r36.zw * r36.xy;
            r26.w = r36.x * r26.w;
            r26.w = r26.w * r36.y;
            r36.xyz = lightConstantsCB[r11.w].data[4].yzw;
            r36.w = lightConstantsCB[r11.w].data[5].x;
            r36.x = dot(r36.xyzw, r10.xyzw);
            r37.xyz = lightConstantsCB[r11.w].data[5].yzw;
            r37.w = lightConstantsCB[r11.w].data[6].x;
            r36.y = dot(r37.xyzw, r10.xyzw);
            r18.xy = r36.xy / r23.ww;
            r23.w = cmp(lightConstantsCB[r11.w].data[10].w < 0.00048828125);
            if (r23.w != 0) {
              r36.xy = saturate(abs(r18.xy) * lightConstantsCB[r11.w].data[12].xy + lightConstantsCB[r11.w].data[12].zw);
              r36.zw = r36.xy * r36.xy;
              r36.xy = r36.xy * float2(-2,-2) + float2(3,3);
              r36.xy = r36.zw * r36.xy;
              r23.w = r36.x * r36.y;
            } else {
              r36.xyzw = saturate(lightConstantsCB[r11.w].data[11].xyzw * abs(r18.yyxx));
              r36.xyzw = log2(r36.xyzw);
              r36.xyzw = lightConstantsCB[r11.w].data[12].zzzz * r36.xyzw;
              r36.xyzw = exp2(r36.xyzw);
              r36.xy = r36.xy + r36.zw;
              r36.xy = log2(r36.xy);
              r36.xy = lightConstantsCB[r11.w].data[12].ww * r36.xy;
              r36.xy = exp2(r36.xy);
              r27.w = lightConstantsCB[r11.w].data[12].x * r36.x;
              r28.w = lightConstantsCB[r11.w].data[12].y * r36.y + -1;
              r27.w = lightConstantsCB[r11.w].data[12].y * r36.y + -r27.w;
              r27.w = saturate(r28.w / r27.w);
              r28.w = r27.w * r27.w;
              r27.w = r27.w * -2 + 3;
              r23.w = r28.w * r27.w;
            }
            r25.w = r26.w * r23.w;
            r23.w = 255 & (int)lightConstantsCB[r11.w].data[14].w;
            if (r23.w != 0) {
              r26.w = dot(lightConstantsCB[r11.w].data[13].xyz, r18.xyz);
              r36.x = lightConstantsCB[r11.w].data[13].w;
              r36.yz = lightConstantsCB[r11.w].data[14].xy;
              r18.x = dot(r36.xyz, r18.xyz);
              r36.x = frac(r26.w);
              r36.y = frac(r18.x);
              r18.x = (int)r23.w + -1;
              r36.z = (uint)r18.x;
              r35.xyz = gCookieArray.SampleLevel(samplerLinear_s, r36.xyz, 0).xyz;
            } else {
              r35.xyz = float3(1,1,1);
            }
          }
          r36.x = lightConstantsCB[r11.w].data[0].w;
          r36.yz = lightConstantsCB[r11.w].data[1].xy;
          r35.xyz = r36.xyz * r35.xyz;
          r18.x = cmp(0 < r25.w);
          if (r18.x != 0) {
            r13.z = cmp((int)r13.z != 1);
            if (r13.z != 0) {
              r13.z = abs(r16.w) * -0.200000003 + 0.400000006;
              r19.xyz = r11.xyz * r13.zzz + r10.xyz;
              r36.xyz = lightConstantsCB[r11.w].data[6].yzw;
              r36.w = lightConstantsCB[r11.w].data[7].x;
              r13.z = dot(r36.xyzw, r19.xyzw);
              r18.x = dot(r34.xyzw, r19.xyzw);
              r18.y = cmp(r18.x >= r13.z);
              if (r18.y != 0) {
                r34.xyz = lightConstantsCB[r11.w].data[4].yzw;
                r34.w = lightConstantsCB[r11.w].data[5].x;
                r34.x = dot(r34.xyzw, r19.xyzw);
                r36.xyz = lightConstantsCB[r11.w].data[5].yzw;
                r36.w = lightConstantsCB[r11.w].data[6].x;
                r34.y = dot(r36.xyzw, r19.xyzw);
                r19.xy = r34.xy / r18.xx;
                r19.xy = saturate(r19.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                r34.x = r19.x * lightConstantsCB[r11.w].data[8].y + lightConstantsCB[r11.w].data[8].z;
                r34.y = r19.y * lightConstantsCB[r11.w].data[8].w + lightConstantsCB[r11.w].data[9].x;
                r13.z = r13.z / r18.x;
                r13.z = max(6.10351563e-05, r13.z);
                r18.x = 0x0000ffff & (int)lightConstantsCB[r11.w].data[1].w;
                if (r7.w != 0) {
                  r19.z = (uint)r18.x;
                  r18.y = 0;
                  r23.w = 0;
                  while (true) {
                    r26.w = cmp((int)r23.w >= 8);
                    if (r26.w != 0) break;
                    r36.x = dot(icb[r23.w+0].yx, r17.xy);
                    r36.y = dot(icb[r23.w+0].yx, r17.yz);
                    r19.xy = r36.xy * lightConstantsCB[r11.w].data[3].yy + r34.xy;
                    r19.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r13.z).x;
                    r18.y = r19.x * 0.125 + r18.y;
                    r23.w = (int)r23.w + 1;
                  }
                } else {
                  r34.z = (uint)r18.x;
                  r18.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r34.xyz, r13.z).x;
                }
                r13.z = r18.y * r18.y;
                r13.z = r13.z * r18.y;
              } else {
                r13.z = 1;
              }
            } else {
              r13.z = 1;
            }
            r13.z = r25.w * r13.z;
            r18.x = cmp(0 < r13.z);
            if (r18.x != 0) {
              if (4 == 0) r18.x = 0; else if (4+16 < 32) {               r18.x = (uint)lightConstantsCB[r11.w].data[1].w << (32-(4 + 16)); r18.x = (uint)r18.x >> (32-4);              } else r18.x = (uint)lightConstantsCB[r11.w].data[1].w >> 16;
              r19.x = cmp(0 < (uint)r18.x);
              r19.x = r19.x ? r9.z : 0;
              if (r19.x != 0) {
                r18.x = (int)r18.x + numLights;
                r18.x = mad((int)r18.x, 15, -15);
                r19.x = abs(r16.w) * -0.200000003 + 0.400000006;
                r20.xyz = r11.xyz * r19.xxx + r10.xyz;
                r34.xyz = lightConstantsCB[r18.x].data[6].yzw;
                r34.w = lightConstantsCB[r18.x].data[7].x;
                r19.x = dot(r34.xyzw, r20.xyzw);
                r34.xyz = lightConstantsCB[r18.x].data[7].yzw;
                r34.w = lightConstantsCB[r18.x].data[8].x;
                r19.y = dot(r34.xyzw, r20.xyzw);
                r19.z = cmp(r19.y < r19.x);
                if (r19.z == 0) {
                  r34.xyz = lightConstantsCB[r18.x].data[4].yzw;
                  r34.w = lightConstantsCB[r18.x].data[5].x;
                  r34.x = dot(r34.xyzw, r20.xyzw);
                  r36.xyz = lightConstantsCB[r18.x].data[5].yzw;
                  r36.w = lightConstantsCB[r18.x].data[6].x;
                  r34.y = dot(r36.xyzw, r20.xyzw);
                  r20.xy = r34.xy / r19.yy;
                  r20.xy = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                  r34.x = lightConstantsCB[r18.x].data[9].w + r20.x;
                  r34.y = lightConstantsCB[r18.x].data[10].x + r20.y;
                  r20.xy = lightConstantsCB[r18.x].data[9].yz * r34.xy;
                  r34.xy = lightConstantsCB[r18.x].data[3].yy / lightConstantsCB[r18.x].data[8].yw;
                  r34.zw = float2(1,1) + -r34.xy;
                  r34.zw = cmp(r20.xy >= r34.zw);
                  r34.xy = cmp(r34.xy >= r20.xy);
                  r34.xy = (int2)r34.xy | (int2)r34.zw;
                  r20.z = (int)r34.y | (int)r34.x;
                  if (r20.z == 0) {
                    r20.xy = saturate(r20.xy);
                    r34.x = r20.x * lightConstantsCB[r18.x].data[8].y + lightConstantsCB[r18.x].data[8].z;
                    r34.y = r20.y * lightConstantsCB[r18.x].data[8].w + lightConstantsCB[r18.x].data[9].x;
                    r20.x = lightConstantsCB[r18.x].data[10].z * r19.y;
                    r19.x = lightConstantsCB[r18.x].data[10].y * r19.y + r19.x;
                    r19.x = r19.x / r20.x;
                  }
                } else {
                  r20.z = -1;
                }
                r19.y = (int)r19.z | (int)r20.z;
                if (r19.y == 0) {
                  r19.x = max(6.10351563e-05, r19.x);
                  r19.y = 0x0000ffff & (int)lightConstantsCB[r18.x].data[1].w;
                  if (r7.w != 0) {
                    r20.z = (uint)r19.y;
                    r19.z = 0;
                    r23.w = 0;
                    while (true) {
                      r25.w = cmp((int)r23.w >= 8);
                      if (r25.w != 0) break;
                      r36.x = dot(icb[r23.w+0].yx, r17.xw);
                      r36.y = dot(icb[r23.w+0].xy, r13.xy);
                      r20.xy = r36.xy * lightConstantsCB[r18.x].data[3].yy + r34.xy;
                      r20.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r19.x).x;
                      r19.z = r20.x * 0.125 + r19.z;
                      r23.w = (int)r23.w + 1;
                    }
                  } else {
                    r34.z = (uint)r19.y;
                    r19.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r34.xyz, r19.x).x;
                  }
                  r18.x = r19.z * r19.z;
                  r18.x = r18.x * r19.z;
                } else {
                  r18.x = 1;
                }
                r13.z = r18.x * r13.z;
              } else {
                if (4 == 0) r18.x = 0; else if (4+20 < 32) {                 r18.x = (uint)lightConstantsCB[r11.w].data[1].w << (32-(4 + 20)); r18.x = (uint)r18.x >> (32-4);                } else r18.x = (uint)lightConstantsCB[r11.w].data[1].w >> 20;
                r19.x = cmp(0 < (uint)r18.x);
                r19.x = r19.x ? r1.w : 0;
                if (r19.x != 0) {
                  r18.x = (int)r18.x + numLights;
                  r18.x = mad((int)r18.x, 15, -15);
                  r19.x = abs(r16.w) * -0.200000003 + 0.400000006;
                  r21.xyz = r11.xyz * r19.xxx + r10.xyz;
                  r34.xyz = lightConstantsCB[r18.x].data[6].yzw;
                  r34.w = lightConstantsCB[r18.x].data[7].x;
                  r19.x = dot(r34.xyzw, r21.xyzw);
                  r34.xyz = lightConstantsCB[r18.x].data[7].yzw;
                  r34.w = lightConstantsCB[r18.x].data[8].x;
                  r19.y = dot(r34.xyzw, r21.xyzw);
                  r20.x = cmp(r19.y < r19.x);
                  if (r20.x == 0) {
                    r34.xyz = lightConstantsCB[r18.x].data[4].yzw;
                    r34.w = lightConstantsCB[r18.x].data[5].x;
                    r34.x = dot(r34.xyzw, r21.xyzw);
                    r36.xyz = lightConstantsCB[r18.x].data[5].yzw;
                    r36.w = lightConstantsCB[r18.x].data[6].x;
                    r34.y = dot(r36.xyzw, r21.xyzw);
                    r20.yz = r34.xy / r19.yy;
                    r20.yz = r20.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                    r21.x = lightConstantsCB[r18.x].data[9].w + r20.y;
                    r21.y = lightConstantsCB[r18.x].data[10].x + r20.z;
                    r20.yz = lightConstantsCB[r18.x].data[9].yz * r21.xy;
                    r21.xy = lightConstantsCB[r18.x].data[3].yy / lightConstantsCB[r18.x].data[8].yw;
                    r34.xy = float2(1,1) + -r21.xy;
                    r34.xy = cmp(r20.yz >= r34.xy);
                    r21.xy = cmp(r21.xy >= r20.yz);
                    r21.xy = (int2)r21.xy | (int2)r34.xy;
                    r21.x = (int)r21.y | (int)r21.x;
                    if (r21.x == 0) {
                      r20.yz = saturate(r20.yz);
                      r34.x = r20.y * lightConstantsCB[r18.x].data[8].y + lightConstantsCB[r18.x].data[8].z;
                      r34.y = r20.z * lightConstantsCB[r18.x].data[8].w + lightConstantsCB[r18.x].data[9].x;
                      r20.y = lightConstantsCB[r18.x].data[10].z * r19.y;
                      r19.x = lightConstantsCB[r18.x].data[10].y * r19.y + r19.x;
                      r19.x = r19.x / r20.y;
                    }
                  } else {
                    r21.x = -1;
                  }
                  r19.y = (int)r20.x | (int)r21.x;
                  if (r19.y == 0) {
                    r19.x = max(6.10351563e-05, r19.x);
                    r19.y = 0x0000ffff & (int)lightConstantsCB[r18.x].data[1].w;
                    if (r7.w != 0) {
                      r20.z = (uint)r19.y;
                      r21.xy = float2(0,0);
                      while (true) {
                        r21.z = cmp((int)r21.y >= 8);
                        if (r21.z != 0) break;
                        r36.x = dot(icb[r21.y+0].xy, r23.xy);
                        r36.y = dot(icb[r21.y+0].yx, r23.xz);
                        r20.xy = r36.xy * lightConstantsCB[r18.x].data[3].yy + r34.xy;
                        r20.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r19.x).x;
                        r21.x = r20.x * 0.125 + r21.x;
                        r21.y = (int)r21.y + 1;
                      }
                    } else {
                      r34.z = (uint)r19.y;
                      r21.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r34.xyz, r19.x).x;
                    }
                    r18.x = r21.x * r21.x;
                    r18.x = r18.x * r21.x;
                  } else {
                    r18.x = 1;
                  }
                  r13.z = r18.x * r13.z;
                }
              }
              r18.x = -r18.w * r2.x + 1;
              r18.x = r18.x * r18.x;
              r18.x = -r18.x * 0.620000005 + 0.620000005;
              r18.x = r18.x + -r18.w;
              r18.x = r0.w * r18.x + r18.w;
              r18.x = r18.x * r13.z;
              r16.w = cmp(0 < r16.w);
              r20.xyz = r18.xxx * r35.xyz + r30.xyz;
              r33.xyz = r33.xyz * r13.www + r12.xyz;
              r13.w = dot(r33.xyz, r33.xyz);
              r13.w = rsqrt(r13.w);
              r33.xyz = r33.xyz * r13.www;
              r13.w = dot(r33.xyz, r12.xyz);
              r18.x = dot(r11.xyz, r33.xyz);
              r19.x = abs(r18.x) * r0.z + -abs(r18.x);
              r18.x = abs(r18.x) * r19.x + 1;
              r19.x = r18.w * r0.x + r1.z;
              r18.x = r18.x * r18.x;
              r18.x = r18.x * r19.x;
              r18.x = rcp(r18.x);
              r14.w = r18.w * r14.w;
              r14.w = r18.x * r14.w;
              r13.z = r14.w * r13.z;
              r33.xyz = r13.zzz * r35.xyz + r32.xyz;
              r13.w = saturate(1 + -r13.w);
              r14.w = r13.w * r13.w;
              r14.w = r14.w * r14.w;
              r13.w = r14.w * r13.w;
              r13.z = r13.z * r13.w;
              r34.xyz = r13.zzz * r35.xyz + r31.xyz;
              r30.xyz = r16.www ? r20.xyz : r30.xyz;
              r31.xyz = r16.www ? r34.xyz : r31.xyz;
              r32.xyz = r16.www ? r33.xyz : r32.xyz;
            }
          }
        }
      } else {
        r12.w = cmp((int)r12.w == 4);
        if (r12.w != 0) {
          if (3 == 0) r12.w = 0; else if (3+27 < 32) {           r12.w = (uint)lightConstantsCB[r11.w].data[1].w << (32-(3 + 27)); r12.w = (uint)r12.w >> (32-3);          } else r12.w = (uint)lightConstantsCB[r11.w].data[1].w >> 27;
          r13.z = lightConstantsCB[r11.w].data[1].z * r0.z;
          r13.z = 0.25 * r13.z;
          r13.w = cmp(0 < lightConstantsCB[r11.w].data[6].y);
          r20.xy = lightConstantsCB[r11.w].data[5].zw;
          r20.z = lightConstantsCB[r11.w].data[6].x;
          r33.xyz = -r20.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r11.w].data[0].xyz;
          r34.xyz = r33.xyz + -r10.xyz;
          r14.w = dot(r20.xyz, r16.xyz);
          r16.w = dot(r20.xyz, r34.xyz);
          r18.x = dot(r16.xyz, r34.xyz);
          r18.w = -r14.w * r14.w + lightConstantsCB[r11.w].data[6].y;
          r14.w = r14.w * r18.x + -r16.w;
          r16.w = saturate(-r16.w / lightConstantsCB[r11.w].data[6].y);
          r14.w = saturate(r14.w / r18.w);
          r18.x = r18.w / lightConstantsCB[r11.w].data[6].y;
          r18.x = 10 * r18.x;
          r18.x = min(1, r18.x);
          r14.w = r14.w + -r16.w;
          r14.w = r18.x * r14.w + r16.w;
          r34.xyz = r14.www * r20.xyz + r33.xyz;
          r20.xyz = r16.www * r20.xyz + r33.xyz;
          r20.xyz = r13.www ? r20.xyz : lightConstantsCB[r11.w].data[0].xyz;
          r33.xyz = r13.www ? r34.xyz : lightConstantsCB[r11.w].data[0].xyz;
          r33.xyz = r33.xyz + -r10.xyz;
          r20.xyz = r20.xyz + -r10.xyz;
          r13.w = dot(r33.xyz, r33.xyz);
          r13.w = rsqrt(r13.w);
          r34.xyz = r33.xyz * r13.www;
          r14.w = dot(r20.xyz, r20.xyz);
          r16.w = rsqrt(r14.w);
          r20.xyz = r20.xyz * r16.www;
          r16.w = dot(r11.xyz, r20.xyz);
          r18.x = saturate(r16.w);
          r18.w = cmp(0 < r18.x);
          if (r18.w != 0) {
            r18.w = sqrt(r14.w);
            r19.x = lightConstantsCB[r11.w].data[3].x * lightConstantsCB[r11.w].data[3].x;
            r14.w = r19.x / r14.w;
            r14.w = min(1, r14.w);
            r19.xy = saturate(r18.ww * lightConstantsCB[r11.w].data[2].xz + lightConstantsCB[r11.w].data[2].yw);
            r20.xy = r19.xy * r19.xy;
            r19.xy = r19.xy * float2(-2,-2) + float2(3,3);
            r19.xy = r20.xy * r19.xy;
            r14.w = r19.x * r14.w;
            r14.w = r14.w * r19.y;
            r18.w = cmp(0 < r14.w);
            if (r18.w != 0) {
              r12.w = cmp((int)r12.w != 1);
              if (r12.w != 0) {
                r12.w = abs(r16.w) * -0.200000003 + 0.400000006;
                r20.xyz = r11.xyz * r12.www + r10.xyz;
                r20.xyz = -lightConstantsCB[r11.w].data[4].yzw + r20.xyz;
                r12.w = max(abs(r20.y), abs(r20.z));
                r12.w = max(abs(r20.x), r12.w);
                r12.w = lightConstantsCB[r11.w].data[5].x / r12.w;
                r12.w = lightConstantsCB[r11.w].data[5].y + r12.w;
                r18.w = dot(r20.xyz, r20.xyz);
                r18.w = rsqrt(r18.w);
                r12.w = max(6.10351563e-05, r12.w);
                r19.x = 0x0000ffff & (int)lightConstantsCB[r11.w].data[1].w;
                r35.w = (uint)r19.x;
                r19.xy = float2(0,0);
                while (true) {
                  r21.y = cmp((int)r19.y >= 8);
                  if (r21.y != 0) break;
                  r21.y = dot(icb[r19.y+0].xy, r14.xy);
                  r21.z = dot(icb[r19.y+0].yx, r14.xz);
                  r36.yz = lightConstantsCB[r11.w].data[3].yy * r21.yz;
                  r36.x = r36.y * r15.x;
                  r36.w = r36.y * r3.x;
                  r35.xyz = r20.xyz * r18.www + r36.xzw;
                  r21.y = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r35.xyzw, r12.w).x;
                  r19.x = r21.y * 0.125 + r19.x;
                  r19.y = (int)r19.y + 1;
                }
              } else {
                r19.x = 1;
              }
              r12.w = r19.x * r14.w;
              r14.w = cmp(0 < r12.w);
              if (r14.w != 0) {
                if (4 == 0) r14.w = 0; else if (4+16 < 32) {                 r14.w = (uint)lightConstantsCB[r11.w].data[1].w << (32-(4 + 16)); r14.w = (uint)r14.w >> (32-4);                } else r14.w = (uint)lightConstantsCB[r11.w].data[1].w >> 16;
                r18.w = cmp(0 < (uint)r14.w);
                r18.w = r18.w ? r9.z : 0;
                if (r18.w != 0) {
                  r14.w = (int)r14.w + numLights;
                  r14.w = mad((int)r14.w, 15, -15);
                  r18.w = abs(r16.w) * -0.200000003 + 0.400000006;
                  r22.xyz = r11.xyz * r18.www + r10.xyz;
                  r35.xyz = lightConstantsCB[r14.w].data[6].yzw;
                  r35.w = lightConstantsCB[r14.w].data[7].x;
                  r18.w = dot(r35.xyzw, r22.xyzw);
                  r35.xyz = lightConstantsCB[r14.w].data[7].yzw;
                  r35.w = lightConstantsCB[r14.w].data[8].x;
                  r19.y = dot(r35.xyzw, r22.xyzw);
                  r20.x = cmp(r19.y < r18.w);
                  if (r20.x == 0) {
                    r35.xyz = lightConstantsCB[r14.w].data[4].yzw;
                    r35.w = lightConstantsCB[r14.w].data[5].x;
                    r35.x = dot(r35.xyzw, r22.xyzw);
                    r36.xyz = lightConstantsCB[r14.w].data[5].yzw;
                    r36.w = lightConstantsCB[r14.w].data[6].x;
                    r35.y = dot(r36.xyzw, r22.xyzw);
                    r20.yz = r35.xy / r19.yy;
                    r20.yz = r20.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                    r22.x = lightConstantsCB[r14.w].data[9].w + r20.y;
                    r22.y = lightConstantsCB[r14.w].data[10].x + r20.z;
                    r20.yz = lightConstantsCB[r14.w].data[9].yz * r22.xy;
                    r21.yz = lightConstantsCB[r14.w].data[3].yy / lightConstantsCB[r14.w].data[8].yw;
                    r22.xy = float2(1,1) + -r21.yz;
                    r22.xy = cmp(r20.yz >= r22.xy);
                    r21.yz = cmp(r21.yz >= r20.yz);
                    r21.yz = (int2)r21.yz | (int2)r22.xy;
                    r21.y = (int)r21.z | (int)r21.y;
                    if (r21.y == 0) {
                      r20.yz = saturate(r20.yz);
                      r22.x = r20.y * lightConstantsCB[r14.w].data[8].y + lightConstantsCB[r14.w].data[8].z;
                      r22.y = r20.z * lightConstantsCB[r14.w].data[8].w + lightConstantsCB[r14.w].data[9].x;
                      r20.y = lightConstantsCB[r14.w].data[10].z * r19.y;
                      r18.w = lightConstantsCB[r14.w].data[10].y * r19.y + r18.w;
                      r18.w = r18.w / r20.y;
                    }
                  } else {
                    r21.y = -1;
                  }
                  r19.y = (int)r20.x | (int)r21.y;
                  if (r19.y == 0) {
                    r18.w = max(6.10351563e-05, r18.w);
                    r19.y = 0x0000ffff & (int)lightConstantsCB[r14.w].data[1].w;
                    if (r7.w != 0) {
                      r20.z = (uint)r19.y;
                      r21.yz = float2(0,0);
                      while (true) {
                        r23.w = cmp((int)r21.z >= 8);
                        if (r23.w != 0) break;
                        r35.x = dot(icb[r21.z+0].xy, r25.xy);
                        r35.y = dot(icb[r21.z+0].yx, r25.xz);
                        r20.xy = r35.xy * lightConstantsCB[r14.w].data[3].yy + r22.xy;
                        r20.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r18.w).x;
                        r21.y = r20.x * 0.125 + r21.y;
                        r21.z = (int)r21.z + 1;
                      }
                    } else {
                      r22.z = (uint)r19.y;
                      r21.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r18.w).x;
                    }
                    r14.w = r21.y * r21.y;
                    r14.w = r14.w * r21.y;
                  } else {
                    r14.w = 1;
                  }
                  r12.w = r14.w * r12.w;
                } else {
                  if (4 == 0) r14.w = 0; else if (4+20 < 32) {                   r14.w = (uint)lightConstantsCB[r11.w].data[1].w << (32-(4 + 20)); r14.w = (uint)r14.w >> (32-4);                  } else r14.w = (uint)lightConstantsCB[r11.w].data[1].w >> 20;
                  r18.w = cmp(0 < (uint)r14.w);
                  r18.w = r18.w ? r1.w : 0;
                  if (r18.w != 0) {
                    r14.w = (int)r14.w + numLights;
                    r14.w = mad((int)r14.w, 15, -15);
                    r18.w = abs(r16.w) * -0.200000003 + 0.400000006;
                    r24.xyz = r11.xyz * r18.www + r10.xyz;
                    r35.xyz = lightConstantsCB[r14.w].data[6].yzw;
                    r35.w = lightConstantsCB[r14.w].data[7].x;
                    r18.w = dot(r35.xyzw, r24.xyzw);
                    r35.xyz = lightConstantsCB[r14.w].data[7].yzw;
                    r35.w = lightConstantsCB[r14.w].data[8].x;
                    r19.y = dot(r35.xyzw, r24.xyzw);
                    r20.x = cmp(r19.y < r18.w);
                    if (r20.x == 0) {
                      r35.xyz = lightConstantsCB[r14.w].data[4].yzw;
                      r35.w = lightConstantsCB[r14.w].data[5].x;
                      r22.x = dot(r35.xyzw, r24.xyzw);
                      r35.xyz = lightConstantsCB[r14.w].data[5].yzw;
                      r35.w = lightConstantsCB[r14.w].data[6].x;
                      r22.y = dot(r35.xyzw, r24.xyzw);
                      r20.yz = r22.xy / r19.yy;
                      r20.yz = r20.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                      r22.x = lightConstantsCB[r14.w].data[9].w + r20.y;
                      r22.y = lightConstantsCB[r14.w].data[10].x + r20.z;
                      r20.yz = lightConstantsCB[r14.w].data[9].yz * r22.xy;
                      r22.xy = lightConstantsCB[r14.w].data[3].yy / lightConstantsCB[r14.w].data[8].yw;
                      r24.xy = float2(1,1) + -r22.xy;
                      r24.xy = cmp(r20.yz >= r24.xy);
                      r22.xy = cmp(r22.xy >= r20.yz);
                      r22.xy = (int2)r22.xy | (int2)r24.xy;
                      r21.z = (int)r22.y | (int)r22.x;
                      if (r21.z == 0) {
                        r20.yz = saturate(r20.yz);
                        r22.x = r20.y * lightConstantsCB[r14.w].data[8].y + lightConstantsCB[r14.w].data[8].z;
                        r22.y = r20.z * lightConstantsCB[r14.w].data[8].w + lightConstantsCB[r14.w].data[9].x;
                        r20.y = lightConstantsCB[r14.w].data[10].z * r19.y;
                        r18.w = lightConstantsCB[r14.w].data[10].y * r19.y + r18.w;
                        r18.w = r18.w / r20.y;
                      }
                    } else {
                      r21.z = -1;
                    }
                    r19.y = (int)r20.x | (int)r21.z;
                    if (r19.y == 0) {
                      r18.w = max(6.10351563e-05, r18.w);
                      r19.y = 0x0000ffff & (int)lightConstantsCB[r14.w].data[1].w;
                      if (r7.w != 0) {
                        r20.z = (uint)r19.y;
                        r21.z = 0;
                        r23.w = 0;
                        while (true) {
                          r24.x = cmp((int)r23.w >= 8);
                          if (r24.x != 0) break;
                          r24.x = dot(icb[r23.w+0].xy, r26.xy);
                          r24.y = dot(icb[r23.w+0].yx, r26.xz);
                          r20.xy = r24.xy * lightConstantsCB[r14.w].data[3].yy + r22.xy;
                          r20.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r18.w).x;
                          r21.z = r20.x * 0.125 + r21.z;
                          r23.w = (int)r23.w + 1;
                        }
                      } else {
                        r22.z = (uint)r19.y;
                        r21.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r18.w).x;
                      }
                      r14.w = r21.z * r21.z;
                      r14.w = r14.w * r21.z;
                    } else {
                      r14.w = 1;
                    }
                    r12.w = r14.w * r12.w;
                  }
                }
                r14.w = -r18.x * r2.x + 1;
                r14.w = r14.w * r14.w;
                r14.w = -r14.w * 0.620000005 + 0.620000005;
                r14.w = r14.w + -r18.x;
                r14.w = r0.w * r14.w + r18.x;
                r14.w = r14.w * r12.w;
                r20.x = lightConstantsCB[r11.w].data[0].w;
                r20.yz = lightConstantsCB[r11.w].data[1].xy;
                r11.w = cmp(0 < r16.w);
                r22.xyz = r14.www * r20.xyz + r30.xyz;
                r14.w = saturate(dot(r11.xyz, r34.xyz));
                r24.xyz = r33.xyz * r13.www + r12.xyz;
                r13.w = dot(r24.xyz, r24.xyz);
                r13.w = rsqrt(r13.w);
                r24.xyz = r24.xyz * r13.www;
                r13.w = dot(r24.xyz, r12.xyz);
                r16.w = dot(r11.xyz, r24.xyz);
                r18.x = abs(r16.w) * r0.z + -abs(r16.w);
                r16.w = abs(r16.w) * r18.x + 1;
                r18.x = r14.w * r0.x + r1.z;
                r16.w = r16.w * r16.w;
                r16.w = r16.w * r18.x;
                r16.w = rcp(r16.w);
                r13.z = r14.w * r13.z;
                r13.z = r16.w * r13.z;
                r12.w = r13.z * r12.w;
                r24.xyz = r12.www * r20.xyz + r32.xyz;
                r13.z = saturate(1 + -r13.w);
                r13.w = r13.z * r13.z;
                r13.w = r13.w * r13.w;
                r13.z = r13.z * r13.w;
                r12.w = r13.z * r12.w;
                r20.xyz = r12.www * r20.xyz + r31.xyz;
                r30.xyz = r11.www ? r22.xyz : r30.xyz;
                r31.xyz = r11.www ? r20.xyz : r31.xyz;
                r32.xyz = r11.www ? r24.xyz : r32.xyz;
              }
            }
          }
        }
      }
    }
    r27.xyz = r30.xyz;
    r28.xyz = r31.xyz;
    r29.xyz = r32.xyz;
    r5.w = (int)r5.w + 32;
  }
  r0.xyz = r4.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r1.z = (uint)r0.y;
  r2.xyz = r5.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r2.x;
  r1.w = cmp((int)r1.z == (int)r1.w);
  r2.xy = r1.ww ? r2.yz : float2(-1,0);
  r4.xyz = r6.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r4.x;
  r1.w = cmp((int)r1.z == (int)r1.w);
  r2.zw = r1.ww ? r4.yz : float2(-1,0);
  r4.xyz = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r4.x;
  r1.w = cmp((int)r1.z == (int)r1.w);
  r4.xy = r1.ww ? r4.yz : float2(-1,0);
  r5.xyz = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r5.x;
  r1.z = cmp((int)r1.z == (int)r1.w);
  r1.zw = r1.zz ? r5.yz : float2(-1,0);
  r5.xy = r2.xz;
  r5.z = r4.x;
  r5.w = r1.z;
  r5.xyzw = r5.xyzw + -r0.xxxx;
  r5.xyzw = cmp(abs(r5.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r5.xyzw = r5.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r1.z = r5.x + r5.y;
  r1.z = r1.z + r5.z;
  r1.z = r1.z + r5.w;
  r2.x = r5.y * r2.w;
  r2.x = r5.x * r2.y + r2.x;
  r2.x = r5.z * r4.y + r2.x;
  r1.w = r5.w * r1.w + r2.x;
  r0.w = r1.w / r1.z;
  r1.z = cmp(0 >= r1.z);
  r0.yz = r1.zz ? float2(0,0) : r0.zw;
  r1.zw = (int2)r1.xy & int2(1,1);
  r0.w = cmp((int)r1.w == (int)r1.z);
  r0.xyz = r0.www ? r0.xyz : r0.xzy;
  r0.x = -r0.z * 0.5 + r0.x;
  r2.y = r0.z + r0.x;
  r2.z = -r0.y * 0.5 + r0.x;
  r2.x = r2.z + r0.y;
  r0.xyz = float3(1,1,1) + -r2.xyz;
  r0.xyz = r28.xyz * r0.xyz;
  r0.xyz = r29.xyz * r2.xyz + r0.xyz;
  r0.xyz = r27.xyz * r3.yzw + r0.xyz;
  r0.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.w != 0) {
    r0.w = dot(r10.xyz, r10.xyz);
    r1.z = rsqrt(r0.w);
    r2.xyz = r10.xyz * r1.zzz;
    r0.w = sqrt(r0.w);
    r1.z = cmp(0 < fogConstants.blendAmount);
    if (r1.z != 0) {
      r1.zw = r0.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r1.zw = fogConstants.atmospherefogdensityatcamera.xy * r1.zw;
      r2.w = cmp(0.00999999978 < abs(r10.z));
      r3.xy = fogConstants.atmospherefogheightdensityscale.xy * r10.zz;
      r3.zw = float2(-1.44269502,-1.44269502) * r3.xy;
      r3.zw = exp2(r3.zw);
      r3.zw = float2(1,1) + -r3.zw;
      r3.xy = r3.zw / r3.xy;
      r3.xy = r3.xy * r1.zw;
      r1.zw = r2.ww ? r3.xy : r1.zw;
      r3.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.zzz;
      r3.xyz = exp2(r3.xyz);
      r4.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.www;
      r4.xyz = exp2(r4.xyz);
      r4.xyz = r4.xyz + -r3.xyz;
      r3.xyz = fogConstants.blendAmount * r4.xyz + r3.xyz;
    } else {
      r1.z = r0.w * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r1.z = fogConstants.atmospherefogdensityatcamera.x * r1.z;
      r1.w = cmp(0.00999999978 < abs(r10.z));
      r2.w = fogConstants.atmospherefogheightdensityscale.x * r10.z;
      r3.w = -1.44269502 * r2.w;
      r3.w = exp2(r3.w);
      r3.w = 1 + -r3.w;
      r2.w = r3.w / r2.w;
      r2.w = r2.w * r1.z;
      r1.z = r1.w ? r2.w : r1.z;
      r4.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.zzz;
      r3.xyz = exp2(r4.xyz);
    }
    r3.xyz = r3.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r3.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r3.xyz);
    r1.z = dot(fogConstants.wldSunFogDir.xyz, -r2.xyz);
    r1.w = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r2.x = fogConstants.atmosphereMieSchlickK * -r1.z + 1;
    r2.x = r2.x * r2.x;
    r2.x = 12.566371 * r2.x;
    r1.w = r1.w / r2.x;
    r0.w = -fogConstants.atmospherehazebasedist + r0.w;
    r0.w = saturate(fogConstants.atmospherehazefadedist * r0.w);
    r0.w = r1.w * r0.w;
    r1.z = saturate(r1.z);
    r1.z = r1.z * r1.z + 1;
    r1.z = r1.z * 0.0596831031 + -1;
    r1.z = fogConstants.atmospheresunstrength * r1.z + 1;
    r2.xyz = fogConstants.atmosphereMieDensity.xyz * r0.www;
    r2.xyz = r1.zzz * fogConstants.atmosphereRayleighDensity.xyz + r2.xyz;
    r2.xyz = fogConstants.atmosphereInScatterIntensity * r2.xyz;
    r4.xyz = float3(1,1,1) + -r3.xyz;
    r2.xyz = r4.xyz * r2.xyz;
    r2.xyz = r0.xyz * r3.xyz + r2.xyz;
  } else {
    r0.w = fogConstants.heightFalloff * r10.z;
    r1.z = fogConstants.heightFalloff * r10.z + fogConstants.K0;
    r1.w = cmp(abs(r0.w) < 9.99999975e-05);
    r2.w = min(64, r1.z);
    r2.w = 1.44269502 * r2.w;
    r2.w = exp2(r2.w);
    r3.x = saturate(fogConstants.K0b);
    r3.y = cmp(r1.z < 0);
    r1.z = 1 + r1.z;
    r1.z = r3.y ? r2.w : r1.z;
    r1.z = -fogConstants.K0b + r1.z;
    r0.w = r1.w ? 1 : r0.w;
    r0.w = r1.z / r0.w;
    r0.w = r1.w ? r3.x : r0.w;
    r0.w = fogConstants.expMul * r0.w;
    r1.z = dot(r10.xyz, r10.xyz);
    r1.w = sqrt(r1.z);
    r0.w = r0.w * r1.w + fogConstants.expAdd;
    r0.w = exp2(r0.w);
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r1.z = rsqrt(r1.z);
    r3.xyz = r10.xyz * r1.zzz;
    r1.z = dot(fogConstants.wldSunFogDir.xyz, r3.xyz);
    r1.z = saturate(fogConstants.sunFogAngles.y * r1.z + fogConstants.sunFogAngles.x);
    r3.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r3.xyzw = r1.zzzz * r3.xyzw + fogConstants.sunFogColor.xyzw;
    r0.w = r3.w * r0.w;
    r3.xyz = r3.xyz + -r0.xyz;
    r2.xyz = r0.www * r3.xyz + r0.xyz;
  }
  r0.xyzw = relHDRExposure.yyyy * r2.xyzx;
  r2.xyzw = cmp(r0.wyzw >= float4(6.10351563e-05,6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r0.xyzw = r2.xyzw ? r0.xyzw : 0;
  r0.xyzw = min(float4(65024,65024,64512,65024), r0.xyzw);
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xyyy, r0.xyzw
  return;
}