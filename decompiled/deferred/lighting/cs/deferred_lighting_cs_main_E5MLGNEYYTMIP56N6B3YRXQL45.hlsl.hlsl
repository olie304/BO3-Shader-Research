// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:23:18 2021

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.x = mad(permuteStride, 51, (int)vThreadGroupID.x);
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
  r3.x = cmp(r2.z >= 0.5);
  r3.y = GBufferDepth.Load(r1.xyw).x;
  r4.xyz = GBufferDiffuseColor.Load(r1.xyw).xyz;
  r5.xyzw = GBufferSpecularColorAndOcclusion.Load(r1.xyw).xyzw;
  r6.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r7.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r8.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r9.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyz, int3(0, 0, 0)).xyw;
  r1.zw = (uint2)r1.yx;
  r3.zw = float2(0.5,0.5) + r1.wz;
  r10.x = cmp(r3.y >= 0.984375);
  r4.w = 1.01587307 * r3.y;
  r3.y = r3.y * 64 + -63;
  r3.y = r10.x ? r3.y : r4.w;
  r3.y = max(9.99999994e-09, r3.y);
  r10.y = rcp(r3.y);
  r10.xy = r10.xy ? r0.ww : 0;
  r10.zw = -subpixelOffset.xy + r3.zw;
  r10.zw = renderTargetSize.zw * r10.zw;
  r10.zw = r10.zw * float2(2,-2) + float2(-1,1);
  r11.x = inverseProjectionMatrix._m00 * r10.z;
  r11.y = inverseProjectionMatrix._m11 * r10.w;
  r11.zw = float2(1,1);
  r10.yzw = r11.xyz * r10.yyy;
  r11.xyz = inverseViewMatrix._m10_m11_m12 * r10.zzz;
  r11.xyz = r10.yyy * inverseViewMatrix._m00_m01_m02 + r11.xyz;
  r11.xyz = r10.www * inverseViewMatrix._m20_m21_m22 + r11.xyz;
  r0.w = r2.w * 3 + 0.5;
  r0.w = (uint)r0.w;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r2.xy = float2(0.850000024,0.850000024) * r2.xy;
  r2.w = dot(r2.xy, r2.xy);
  r12.zw = float2(2,1) + -r2.ww;
  r2.w = sqrt(r12.z);
  r12.xy = r2.xy * r2.ww;
  r13.xyzw = (int4)r0.wwww & int4(2,1,2,1);
  r13.xyzw = r13.zwxy ? float4(-1,-1,1.40129846e-45,1.40129846e-45) : float4(1,1,0,0);
  r0.w = (int)r13.w ^ (int)r13.z;
  r13.z = r0.w ? -1 : 1;
  r2.xyw = float3(-1,0,1) * r13.xyz;
  r10.yzw = float3(1,-2,1) * r13.xyz;
  r12.xyz = float3(0.408248305,0.707106769,0.577350259) * r12.xyw;
  r2.xyw = r12.yyy * r2.xyw;
  r2.xyw = r10.yzw * r12.xxx + r2.xyw;
  r12.xyz = r13.xyz * r12.zzz + r2.xyw;
  r0.w = r3.x ? -0.5 : -0.00146627566;
  r0.w = r2.z + r0.w;
  r2.y = saturate(2.00982332 * r0.w);
  r0.w = dot(-r11.xyz, -r11.xyz);
  r0.w = rsqrt(r0.w);
  r10.yzw = -r11.xyz * r0.www;
  r0.w = dot(r1.wz, float2(0.0671105608,0.00583714992));
  r0.w = frac(r0.w);
  r0.w = 52.9829178 * r0.w;
  r0.w = frac(r0.w);
  r0.w = r0.w * 6.28318548 + gameTick.w;
  sincos(r0.w, r3.x, r13.x);
  r0.w = dot(r1.zw, float2(0.0671105608,0.00583714992));
  r0.w = frac(r0.w);
  r0.w = 52.9829178 * r0.w;
  r0.w = frac(r0.w);
  r0.w = r0.w * 6.28318548 + gameTick.w;
  sincos(r0.w, r14.x, r15.x);
  r2.x = saturate(dot(r12.xyz, r10.yzw));
  r0.w = dot(-r10.yzw, r12.xyz);
  r0.w = r0.w + r0.w;
  r16.xyz = r12.xyz * -r0.www + -r10.yzw;
  r0.w = 17 * r2.y;
  r0.w = exp2(r0.w);
  r0.w = 2 + r0.w;
  r0.w = 2 / r0.w;
  r1.z = sqrt(r0.w);
  r2.zw = renderTargetSize.zw * r3.zw;
  r1.w = gSSAOTexture.SampleLevel(samplerLinearClamp_s, r2.zw, 0).x;
  r2.z = r5.z * r1.w;
  r2.w = 1 + -r2.y;
  r3.z = 5 * r2.w;
  r3.w = r2.w * 5 + -2.5;
  r3.w = 0.400000006 * r3.w;
  r3.w = max(0, r3.w);
  r3.w = 100 * r3.w;
  r14.yz = -r2.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r4.w = exp2(r14.y);
  r4.w = r4.w * r2.x;
  r4.w = 9.1368103 * r4.w;
  r6.w = r3.z * r2.w;
  r6.w = -r6.w * 2.0159049 + r14.z;
  r6.w = exp2(r6.w);
  r6.w = r6.w * r2.x;
  r6.w = 9.70808983 * r6.w;
  r4.w = max(r6.w, r4.w);
  r4.w = max(1.26815999, r4.w);
  r6.w = numRefProbes + -numOverrideProbes;
  r7.w = (uint)renderTargetSize.x;
  r7.w = (int)r7.w + 7;
  r7.w = (uint)r7.w >> 3;
  r0.y = mad((int)r0.z, (int)r7.w, (int)r0.y);
  bitmask.y = ((~(-1 << 27)) << 5) & 0xffffffff;  r0.y = (((uint)r0.y << 5) & bitmask.y) | ((uint)16 & ~bitmask.y);
  r0.z = (int)r6.w & -32;
  r7.w = (int)-r0.z + (int)r6.w;
  r8.w = numRefProbes & -32;
  r9.w = (int)-r8.w + numRefProbes;
  r17.yz = float2(0,1);
  r18.xy = float2(0,0);
  r19.x = 1;
  r20.xy = float2(0,0);
  r21.xy = float2(0,0);
  r22.xyzw = float4(0,0,0,0);
  r23.yzw = float3(0,0,0);
  r13.w = r0.z;
  while (true) {
    r14.y = cmp((uint)r13.w >= numRefProbes);
    if (r14.y != 0) break;
    r14.y = (uint)r13.w >> 5;
    r14.y = (int)r0.y + (int)r14.y;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.y, r14.y, l(0), t26.xxxx
  r14.y = samplerLinear[]..swiz;
    r14.z = cmp((int)r0.z == (int)r13.w);
    bitmask.w = ((~(-1 << r7.w)) << 0) & 0xffffffff;  r14.w = (((uint)0 << 0) & bitmask.w) | ((uint)r14.y & ~bitmask.w);
    r14.y = r14.z ? r14.w : r14.y;
    r14.z = cmp((int)r8.w == (int)r13.w);
    if (r9.w == 0) r14.w = 0; else if (r9.w+0 < 32) {     r14.w = (uint)r14.y << (32-(r9.w + 0)); r14.w = (uint)r14.w >> (32-r9.w);    } else r14.w = (uint)r14.y >> 0;
    r14.y = r14.z ? r14.w : r14.y;
    r24.xyzw = r22.xyzw;
    r25.xyz = r23.yzw;
    r14.z = r14.y;
    while (true) {
      if (r14.z == 0) break;
      r14.w = firstbitlow((uint)r14.z);
      r15.y = 1 << (int)r14.w;
      r15.y = ~(int)r15.y;
      r14.z = (int)r14.z & (int)r15.y;
      r14.w = (int)r13.w + (int)r14.w;
      r14.w = (int)r14.w * 14;
      r15.yzw = -refProbeConstantsCB[r14.w].data[0].xyz + r11.xyz;
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
        r18.w = max(abs(r18.w), r3.w);
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
        r19.y = max(abs(r19.y), r3.w);
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
        r19.y = max(abs(r19.y), r3.w);
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
        r19.y = max(abs(r19.y), r3.w);
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
        r19.y = max(abs(r19.y), r3.w);
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
        r19.y = max(abs(r19.y), r3.w);
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
        r17.w = r2.w * 5 + r17.w;
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
        r28.x = dot(r12.xyz, r27.xyz);
        r28.y = dot(r12.xyz, r29.xyz);
        r28.z = dot(r12.xyz, r30.xyz);
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
        r15.y = r14.w * r4.w;
        r19.yzw = r19.yzw * r17.xxx;
        r15.z = dot(r19.yzw, float3(0.212599993,0.715200007,0.0722000003));
        r14.w = r4.w * r14.w + r15.z;
        r14.w = r15.y / r14.w;
        r27.x = r24.w;
        r27.yz = r25.xy;
        r25.xyw = r19.zwy * r14.www + r27.yzx;
        r24.w = r25.w;
      }
    }
    r22.xyzw = r24.xyzw;
    r23.yzw = r25.xyz;
    r13.w = (int)r13.w + 32;
  }
  r8.w = cmp(r23.w < 1);
  if (r8.w != 0) {
    r17.yz = float2(0,1);
    r18.xy = float2(0,0);
    r19.x = 1;
    r20.xy = float2(0,0);
    r21.xy = float2(0,0);
    r24.x = r22.w;
    r24.yzw = r23.yzw;
    r14.yzw = r22.xyz;
    r8.w = r23.w;
    r9.w = 0;
    while (true) {
      r13.w = cmp((uint)r9.w >= (uint)r6.w);
      if (r13.w != 0) break;
      r13.w = (uint)r9.w >> 5;
      r13.w = (int)r0.y + (int)r13.w;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.w, r13.w, l(0), t26.xxxx
    r13.w = samplerLinear[]..swiz;
      r15.y = cmp((int)r0.z == (int)r9.w);
      if (r7.w == 0) r15.z = 0; else if (r7.w+0 < 32) {       r15.z = (uint)r13.w << (32-(r7.w + 0)); r15.z = (uint)r15.z >> (32-r7.w);      } else r15.z = (uint)r13.w >> 0;
      r13.w = r15.y ? r15.z : r13.w;
      r25.xyzw = r24.xyzw;
      r15.yzw = r14.yzw;
      r17.w = r8.w;
      r18.w = r13.w;
      while (true) {
        if (r18.w == 0) break;
        r19.z = firstbitlow((uint)r18.w);
        r19.w = 1 << (int)r19.z;
        r19.w = ~(int)r19.w;
        r18.w = (int)r18.w & (int)r19.w;
        r19.z = (int)r9.w + (int)r19.z;
        r19.z = (int)r19.z * 14;
        r26.xyz = -refProbeConstantsCB[r19.z].data[0].xyz + r11.xyz;
        r19.w = 0x0000ffff & (int)refProbeConstantsCB[r19.z].data[7].z;
        if (6 == 0) r20.w = 0; else if (6+25 < 32) {         r20.w = (uint)refProbeConstantsCB[r19.z].data[7].z << (32-(6 + 25)); r20.w = (uint)r20.w >> (32-6);        } else r20.w = (uint)refProbeConstantsCB[r19.z].data[7].z >> 25;
        r21.w = (int)r19.w * 6;
        r26.w = dot(refProbeAttenuationConstantsCB[r21.w].data[0].xyz, r26.xyz);
        r26.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[0].w + r26.w);
        r27.x = dot(refProbeAttenuationConstantsCB[r21.w].data[1].xyz, r26.xyz);
        r27.x = saturate(refProbeAttenuationConstantsCB[r21.w].data[1].w + r27.x);
        r26.w = r27.x * r26.w;
        r27.x = dot(refProbeAttenuationConstantsCB[r21.w].data[2].xyz, r26.xyz);
        r27.x = saturate(refProbeAttenuationConstantsCB[r21.w].data[2].w + r27.x);
        r26.w = r27.x * r26.w;
        r27.x = dot(refProbeAttenuationConstantsCB[r21.w].data[3].xyz, r26.xyz);
        r27.x = saturate(refProbeAttenuationConstantsCB[r21.w].data[3].w + r27.x);
        r26.w = r27.x * r26.w;
        r27.x = dot(refProbeAttenuationConstantsCB[r21.w].data[4].xyz, r26.xyz);
        r27.x = saturate(refProbeAttenuationConstantsCB[r21.w].data[4].w + r27.x);
        r26.w = r27.x * r26.w;
        r27.x = dot(refProbeAttenuationConstantsCB[r21.w].data[5].xyz, r26.xyz);
        r21.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[5].w + r27.x);
        r17.x = r26.w * r21.w;
        r21.w = 1 & (int)refProbeConstantsCB[r19.z].data[6].x;
        r27.xy = r21.ww ? r17.xy : r17.zx;
        r17.x = refProbeConstantsCB[r19.z].data[6].x;
        r28.xy = r27.xy;
        r21.w = 1;
        while (true) {
          r26.w = cmp((int)r21.w >= (int)r20.w);
          if (r26.w != 0) break;
          r26.w = (int)r19.w + (int)r21.w;
          r26.w = (int)r26.w * 6;
          r27.z = dot(refProbeAttenuationConstantsCB[r26.w].data[0].xyz, r26.xyz);
          r27.z = saturate(refProbeAttenuationConstantsCB[r26.w].data[0].w + r27.z);
          r27.z = r28.x * r27.z;
          r27.w = dot(refProbeAttenuationConstantsCB[r26.w].data[1].xyz, r26.xyz);
          r27.w = saturate(refProbeAttenuationConstantsCB[r26.w].data[1].w + r27.w);
          r27.z = r27.z * r27.w;
          r27.w = dot(refProbeAttenuationConstantsCB[r26.w].data[2].xyz, r26.xyz);
          r27.w = saturate(refProbeAttenuationConstantsCB[r26.w].data[2].w + r27.w);
          r27.z = r27.z * r27.w;
          r27.w = dot(refProbeAttenuationConstantsCB[r26.w].data[3].xyz, r26.xyz);
          r27.w = saturate(refProbeAttenuationConstantsCB[r26.w].data[3].w + r27.w);
          r27.z = r27.z * r27.w;
          r27.w = dot(refProbeAttenuationConstantsCB[r26.w].data[4].xyz, r26.xyz);
          r27.w = saturate(refProbeAttenuationConstantsCB[r26.w].data[4].w + r27.w);
          r27.z = r27.z * r27.w;
          r27.w = dot(refProbeAttenuationConstantsCB[r26.w].data[5].xyz, r26.xyz);
          r26.w = saturate(refProbeAttenuationConstantsCB[r26.w].data[5].w + r27.w);
          r28.x = r27.z * r26.w;
          r27.w = (uint)r17.x >> 2;
          if (1 == 0) r28.z = 0; else if (1+2 < 32) {           r28.z = (uint)r17.x << (32-(1 + 2)); r28.z = (uint)r28.z >> (32-1);          } else r28.z = (uint)r17.x >> 2;
          r28.w = (int)r27.w & 2;
          r29.x = max(r28.y, r28.x);
          r26.w = -r27.z * r26.w + 1;
          r26.w = r28.y * r26.w;
          r19.y = r28.w ? r26.w : r29.x;
          r28.xy = r28.zz ? r28.xy : r19.xy;
          r21.w = (int)r21.w + 1;
          r17.x = r27.w;
        }
        r17.x = saturate(r28.y + -r17.w);
        r19.y = refProbeConstantsCB[r19.z].data[6].y * r17.x;
        r19.w = cmp(0 < r19.y);
        if (r19.w != 0) {
          r25.w = r17.x * refProbeConstantsCB[r19.z].data[6].y + r25.w;
          r17.x = refProbeConstantsCB[r19.z].data[7].y * r19.y;
          r27.x = refProbeConstantsCB[r19.z].data[7].w;
          r27.yz = refProbeConstantsCB[r19.z].data[8].xy;
          r19.y = dot(r16.xyz, r27.xyz);
          r19.w = dot(r26.xyz, r27.xyz);
          r19.w = -refProbeConstantsCB[r19.z].data[8].z + r19.w;
          r20.w = cmp(r19.w >= 0);
          r19.w = max(abs(r19.w), r3.w);
          r19.w = r20.w ? r19.w : -r19.w;
          r19.y = max(1.00000001e-07, -r19.y);
          r19.y = r19.w / r19.y;
          r19.y = min(131072, abs(r19.y));
          r27.x = refProbeConstantsCB[r19.z].data[8].w;
          r27.yz = refProbeConstantsCB[r19.z].data[9].xy;
          r19.w = dot(r16.xyz, r27.xyz);
          r20.w = dot(r26.xyz, r27.xyz);
          r20.w = -refProbeConstantsCB[r19.z].data[9].z + r20.w;
          r21.w = cmp(r20.w >= 0);
          r20.w = max(abs(r20.w), r3.w);
          r20.w = r21.w ? r20.w : -r20.w;
          r19.w = max(1.00000001e-07, -r19.w);
          r19.w = r20.w / r19.w;
          r19.y = min(r19.y, abs(r19.w));
          r27.x = refProbeConstantsCB[r19.z].data[9].w;
          r27.yz = refProbeConstantsCB[r19.z].data[10].xy;
          r19.w = dot(r16.xyz, r27.xyz);
          r20.w = dot(r26.xyz, r27.xyz);
          r20.w = -refProbeConstantsCB[r19.z].data[10].z + r20.w;
          r21.w = cmp(r20.w >= 0);
          r20.w = max(abs(r20.w), r3.w);
          r20.w = r21.w ? r20.w : -r20.w;
          r19.w = max(1.00000001e-07, -r19.w);
          r19.w = r20.w / r19.w;
          r19.y = min(r19.y, abs(r19.w));
          r27.x = refProbeConstantsCB[r19.z].data[10].w;
          r27.yz = refProbeConstantsCB[r19.z].data[11].xy;
          r19.w = dot(r16.xyz, r27.xyz);
          r20.w = dot(r26.xyz, r27.xyz);
          r20.w = -refProbeConstantsCB[r19.z].data[11].z + r20.w;
          r21.w = cmp(r20.w >= 0);
          r20.w = max(abs(r20.w), r3.w);
          r20.w = r21.w ? r20.w : -r20.w;
          r19.w = max(1.00000001e-07, -r19.w);
          r19.w = r20.w / r19.w;
          r19.y = min(r19.y, abs(r19.w));
          r27.x = refProbeConstantsCB[r19.z].data[11].w;
          r27.yz = refProbeConstantsCB[r19.z].data[12].xy;
          r19.w = dot(r16.xyz, r27.xyz);
          r20.w = dot(r26.xyz, r27.xyz);
          r20.w = -refProbeConstantsCB[r19.z].data[12].z + r20.w;
          r21.w = cmp(r20.w >= 0);
          r20.w = max(abs(r20.w), r3.w);
          r20.w = r21.w ? r20.w : -r20.w;
          r19.w = max(1.00000001e-07, -r19.w);
          r19.w = r20.w / r19.w;
          r19.y = min(r19.y, abs(r19.w));
          r27.x = refProbeConstantsCB[r19.z].data[12].w;
          r27.yz = refProbeConstantsCB[r19.z].data[13].xy;
          r19.w = dot(r16.xyz, r27.xyz);
          r20.w = dot(r26.xyz, r27.xyz);
          r20.w = -refProbeConstantsCB[r19.z].data[13].z + r20.w;
          r21.w = cmp(r20.w >= 0);
          r20.w = max(abs(r20.w), r3.w);
          r20.w = r21.w ? r20.w : -r20.w;
          r19.w = max(1.00000001e-07, -r19.w);
          r19.w = r20.w / r19.w;
          r19.y = min(r19.y, abs(r19.w));
          r27.x = refProbeConstantsCB[r19.z].data[3].w + r26.x;
          r27.yz = refProbeConstantsCB[r19.z].data[4].xy + r26.yz;
          r27.xyz = r16.xyz * r19.yyy + r27.xyz;
          r19.w = dot(r27.xyz, r27.xyz);
          r19.w = sqrt(r19.w);
          r19.y = r19.y / r19.w;
          r19.y = r19.y + r19.y;
          r19.y = sqrt(r19.y);
          r19.y = r2.w * 5 + r19.y;
          r19.y = -0.844799995 + r19.y;
          r29.x = refProbeConstantsCB[r19.z].data[0].w;
          r29.y = refProbeConstantsCB[r19.z].data[1].z;
          r29.z = refProbeConstantsCB[r19.z].data[2].y;
          r30.x = dot(r27.xyz, r29.xyz);
          r31.xy = refProbeConstantsCB[r19.z].data[1].xw;
          r31.z = refProbeConstantsCB[r19.z].data[2].z;
          r30.y = dot(r27.xyz, r31.xyz);
          r32.x = refProbeConstantsCB[r19.z].data[1].y;
          r32.yz = refProbeConstantsCB[r19.z].data[2].xw;
          r30.z = dot(r27.xyz, r32.xyz);
          if (9 == 0) r19.w = 0; else if (9+16 < 32) {           r19.w = (uint)refProbeConstantsCB[r19.z].data[7].z << (32-(9 + 16)); r19.w = (uint)r19.w >> (32-9);          } else r19.w = (uint)refProbeConstantsCB[r19.z].data[7].z >> 16;
          r30.w = (uint)r19.w;
          r27.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r30.xyzw, r19.y).xyz;
          r33.x = dot(r26.xyz, r29.xyz);
          r33.y = dot(r26.xyz, r31.xyz);
          r33.z = dot(r26.xyz, r32.xyz);
          r26.xyz = saturate(r33.xyz * refProbeConstantsCB[r19.z].data[3].xyz + float3(0.5,0.5,0.5));
          r33.xy = refProbeConstantsCB[r19.z].data[4].zw * r26.xy;
          r33.z = refProbeConstantsCB[r19.z].data[5].x * r26.z;
          r19.yzw = refProbeConstantsCB[r19.z].data[5].yzw + r33.xyz;
          r30.x = dot(r12.xyz, r29.xyz);
          r30.y = dot(r12.xyz, r31.xyz);
          r30.z = dot(r12.xyz, r32.xyz);
          r26.xyz = cmp(float3(0,0,0) < r30.xyz);
          r18.z = r26.x ? 0 : 0.5;
          r28.xzw = r19.yzw + r18.xyz;
          r28.xzw = gProbeXArray.SampleLevel(samplerLinearClamp_s, r28.xzw, 0).xyz;
          r29.xyz = r30.xyz * r30.xyz;
          r29.xyz = r29.xyz * r17.xxx;
          r20.z = r26.y ? 0 : 0.5;
          r26.xyw = r20.xyz + r19.yzw;
          r26.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r26.xyw, 0).xyz;
          r26.xyw = r26.xyw * r29.yyy;
          r26.xyw = r28.xzw * r29.xxx + r26.xyw;
          r21.z = r26.z ? 0 : 0.5;
          r19.yzw = r21.xyz + r19.yzw;
          r19.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r19.yzw, 0).xyz;
          r19.yzw = r19.yzw * r29.zzz + r26.xyw;
          r26.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r30.xyzw, 6).xyz;
          r28.xzw = r26.xyz * r19.yzw;
          r18.z = dot(r28.xzw, float3(0.212599993,0.715200007,0.0722000003));
          r15.yzw = r19.yzw * r26.xyz + r15.yzw;
          r19.y = r18.z * r4.w;
          r26.xyz = r27.xyz * r17.xxx;
          r17.x = dot(r26.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r17.x = r4.w * r18.z + r17.x;
          r17.x = r19.y / r17.x;
          r25.xyz = r26.xyz * r17.xxx + r25.xyz;
        }
      }
      r24.xyzw = r25.xyzw;
      r14.yzw = r15.yzw;
      r9.w = (int)r9.w + 32;
    }
    r23.xyzw = r24.zxyw;
    r22.xyz = r14.yzw;
    r23.xyzw = r23.yzxw;
  } else {
    r23.x = r22.w;
  }
  r0.y = max(1, r23.w);
  r0.y = rcp(r0.y);
  r23.w = saturate(r23.w);
  r14.yzw = r22.xyz * r0.yyy;
  r15.yzw = r23.xyz * r0.yyy;
  r0.z = cmp(r23.w < 0.99000001);
  if (r0.z != 0) {
    r0.z = 1 + -r23.w;
    r2.w = sunConstants.globalProbeExposure * r0.z;
    r17.xyz = -globalProbeConstants.data[0].xyz + r11.xyz;
    r18.x = globalProbeConstants.data[0].w * r17.x;
    r18.yz = globalProbeConstants.data[1].xy * r17.yz;
    r17.xyz = saturate(float3(0.5,0.5,0.5) + r18.xyz);
    r18.xy = globalProbeConstants.data[1].zw * r17.xy;
    r18.z = globalProbeConstants.data[2].x * r17.z;
    r17.xyz = globalProbeConstants.data[2].yzw + r18.xyz;
    r18.xyz = cmp(float3(0,0,0) < r12.xyz);
    r18.xyz = r18.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r18.w = 0;
    r19.xyz = r18.wwx + r17.xyz;
    r19.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r19.xyz, 0).xyz;
    r20.xyz = r12.xyz * r12.xyz;
    r20.xyz = r20.xyz * r2.www;
    r21.xyz = r18.wwy + r17.xyz;
    r21.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r21.xyz, 0).xyz;
    r21.xyz = r21.xyz * r20.yyy;
    r19.xyz = r19.xyz * r20.xxx + r21.xyz;
    r17.xyz = r18.wwz + r17.xyz;
    r17.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r17.xyz, 0).xyz;
    r17.xyz = r17.xyz * r20.zzz + r19.xyz;
    r12.w = 0;
    r18.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r12.xyzw, 6).xyz;
    r17.xyz = r18.xyz * r17.xyz;
    r2.w = dot(r17.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r14.yzw = r22.xyz * r0.yyy + r17.xyz;
    r16.w = 0;
    r17.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r16.xyzw, r3.z).xyz;
    r0.y = sunConstants.globalProbeExposure * r0.z + -r2.w;
    r0.y = r2.y * r0.y + r2.w;
    r15.yzw = r17.xyz * r0.yyy + r15.yzw;
  }
  r0.y = r5.z * r1.w + r2.x;
  r0.y = log2(abs(r0.y));
  r0.y = r1.z * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r5.z * r1.w + r0.y;
  r0.y = saturate(-1 + r0.y);
  r14.yzw = r14.yzw * r2.zzz;
  r2.yz = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r2.yz = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r2.yz, 0).xy;
  r15.yzw = r15.yzw * r0.yyy;
  r17.xyz = r15.yzw * r2.yyy;
  r2.yzw = r15.yzw * r2.zzz;
  r0.y = sqrt(r1.z);
  r0.y = r0.y * 0.5 + 0.5;
  r0.y = r0.y * r0.y;
  r0.z = 0.5 * r0.y;
  r0.y = -r0.y * 0.5 + 1;
  r1.w = r2.x * r0.y + r0.z;
  r0.yz = r1.ww * r0.yz;
  r1.w = (uint)r0.x >> 24;
  if (10 == 0) r0.x = 0; else if (10+12 < 32) {   r0.x = (uint)r0.x << (32-(10 + 12)); r0.x = (uint)r0.x >> (32-10);  } else r0.x = (uint)r0.x >> 12;
  r18.x = -r3.x;
  r3.z = ~(int)r10.x;
  r2.x = -r2.x * 0.5 + 1;
  r19.w = 1;
  r18.z = r3.x;
  r20.z = 1;
  r21.w = 1;
  r22.w = 1;
  r18.yw = r13.xx;
  r3.y = r18.w;
  r23.w = 1;
  r13.y = r18.x;
  r13.z = r3.x;
  r24.w = 1;
  r25.x = r13.x;
  r25.y = r18.x;
  r25.z = r3.x;
  r26.x = r13.x;
  r26.y = r18.x;
  r26.z = r3.x;
  r27.x = r13.x;
  r27.y = r18.x;
  r27.z = r3.x;
  r15.yzw = r14.yzw;
  r28.xyz = r17.xyz;
  r29.xyz = r2.yzw;
  r3.w = 0;
  while (true) {
    r4.w = cmp((int)r3.w == 2);
    if (r4.w != 0) break;
    r4.w = r3.w ? r0.x : r1.w;
    r4.w = (int)r4.w * 15;
    if (3 == 0) r5.z = 0; else if (3+24 < 32) {     r5.z = (uint)lightConstantsCB[r4.w].data[1].w << (32-(3 + 24)); r5.z = (uint)r5.z >> (32-3);    } else r5.z = (uint)lightConstantsCB[r4.w].data[1].w >> 24;
    switch (r5.z) {
      case 4 :      r5.z = cmp(0 < lightConstantsCB[r4.w].data[6].y);
      r30.xy = lightConstantsCB[r4.w].data[5].zw;
      r30.z = lightConstantsCB[r4.w].data[6].x;
      r31.xyz = -r30.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r4.w].data[0].xyz;
      r32.xyz = r31.xyz + -r11.xyz;
      r6.w = dot(r30.xyz, r32.xyz);
      r7.w = saturate(-r6.w / lightConstantsCB[r4.w].data[6].y);
      r33.xyz = r7.www * r30.xyz + r31.xyz;
      r33.xyz = r5.zzz ? r33.xyz : lightConstantsCB[r4.w].data[0].xyz;
      r33.xyz = r33.xyz + -r11.xyz;
      r8.w = dot(r33.xyz, r33.xyz);
      r9.w = rsqrt(r8.w);
      r33.xyz = r33.xyz * r9.www;
      r9.w = dot(r12.xyz, r33.xyz);
      r12.w = saturate(r9.w);
      r13.w = cmp(0 < r12.w);
      if (r13.w != 0) {
        r13.w = sqrt(r8.w);
        r16.w = lightConstantsCB[r4.w].data[3].x * lightConstantsCB[r4.w].data[3].x;
        r8.w = r16.w / r8.w;
        r8.w = min(1, r8.w);
        r33.xy = saturate(r13.ww * lightConstantsCB[r4.w].data[2].xz + lightConstantsCB[r4.w].data[2].yw);
        r33.zw = r33.xy * r33.xy;
        r33.xy = r33.xy * float2(-2,-2) + float2(3,3);
        r33.xy = r33.zw * r33.xy;
        r8.w = r33.x * r8.w;
        r8.w = r8.w * r33.y;
        r13.w = cmp(0 < r8.w);
        if (r13.w != 0) {
          if (3 == 0) r13.w = 0; else if (3+27 < 32) {           r13.w = (uint)lightConstantsCB[r4.w].data[1].w << (32-(3 + 27)); r13.w = (uint)r13.w >> (32-3);          } else r13.w = (uint)lightConstantsCB[r4.w].data[1].w >> 27;
          r13.w = cmp((int)r13.w != 1);
          if (r13.w != 0) {
            r13.w = abs(r9.w) * -0.200000003 + 0.400000006;
            r33.xyz = r12.xyz * r13.www + r11.xyz;
            r33.xyz = -lightConstantsCB[r4.w].data[4].yzw + r33.xyz;
            r13.w = max(abs(r33.y), abs(r33.z));
            r13.w = max(abs(r33.x), r13.w);
            r13.w = lightConstantsCB[r4.w].data[5].x / r13.w;
            r13.w = lightConstantsCB[r4.w].data[5].y + r13.w;
            r16.w = dot(r33.xyz, r33.xyz);
            r16.w = rsqrt(r16.w);
            r13.w = max(6.10351563e-05, r13.w);
            r17.w = 0x0000ffff & (int)lightConstantsCB[r4.w].data[1].w;
            r34.w = (uint)r17.w;
            r17.w = 0;
            r20.w = 0;
            while (true) {
              r25.w = cmp((int)r20.w >= 8);
              if (r25.w != 0) break;
              r35.y = dot(icb[r20.w+0].yx, r18.xy);
              r35.z = dot(icb[r20.w+0].yx, r18.yz);
              r35.yz = lightConstantsCB[r4.w].data[3].yy * r35.yz;
              r35.x = r35.y * r15.x;
              r35.w = r35.y * r14.x;
              r34.xyz = r33.xyz * r16.www + r35.xzw;
              r25.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r34.xyzw, r13.w).x;
              r17.w = r25.w * 0.125 + r17.w;
              r20.w = (int)r20.w + 1;
            }
          } else {
            r17.w = 1;
          }
          r8.w = r17.w * r8.w;
          r13.w = cmp(0 < r8.w);
          if (r13.w != 0) {
            r13.w = lightConstantsCB[r4.w].data[1].z * r0.w;
            r13.w = 0.25 * r13.w;
            r16.w = dot(r30.xyz, r16.xyz);
            r20.w = dot(r16.xyz, r32.xyz);
            r25.w = -r16.w * r16.w + lightConstantsCB[r4.w].data[6].y;
            r6.w = r16.w * r20.w + -r6.w;
            r6.w = saturate(r6.w / r25.w);
            r16.w = r25.w / lightConstantsCB[r4.w].data[6].y;
            r16.w = 10 * r16.w;
            r16.w = min(1, r16.w);
            r6.w = r6.w + -r7.w;
            r6.w = r16.w * r6.w + r7.w;
            r30.xyz = r6.www * r30.xyz + r31.xyz;
            r30.xyz = r5.zzz ? r30.xyz : lightConstantsCB[r4.w].data[0].xyz;
            r30.xyz = r30.xyz + -r11.xyz;
            r5.z = dot(r30.xyz, r30.xyz);
            r5.z = rsqrt(r5.z);
            r31.xyz = r30.xyz * r5.zzz;
            if (4 == 0) r6.w = 0; else if (4+16 < 32) {             r6.w = (uint)lightConstantsCB[r4.w].data[1].w << (32-(4 + 16)); r6.w = (uint)r6.w >> (32-4);            } else r6.w = (uint)lightConstantsCB[r4.w].data[1].w >> 16;
            r7.w = cmp(0 < (uint)r6.w);
            r7.w = r10.x ? r7.w : 0;
            if (r7.w != 0) {
              r6.w = (int)r6.w + numLights;
              r6.w = mad((int)r6.w, 15, -15);
              r7.w = abs(r9.w) * -0.200000003 + 0.400000006;
              r19.xyz = r12.xyz * r7.www + r11.xyz;
              r32.xyz = lightConstantsCB[r6.w].data[6].yzw;
              r32.w = lightConstantsCB[r6.w].data[7].x;
              r7.w = dot(r32.xyzw, r19.xyzw);
              r32.xyz = lightConstantsCB[r6.w].data[7].yzw;
              r32.w = lightConstantsCB[r6.w].data[8].x;
              r16.w = dot(r32.xyzw, r19.xyzw);
              r20.w = cmp(r16.w < r7.w);
              if (r20.w == 0) {
                r32.xyz = lightConstantsCB[r6.w].data[4].yzw;
                r32.w = lightConstantsCB[r6.w].data[5].x;
                r32.x = dot(r32.xyzw, r19.xyzw);
                r33.xyz = lightConstantsCB[r6.w].data[5].yzw;
                r33.w = lightConstantsCB[r6.w].data[6].x;
                r32.y = dot(r33.xyzw, r19.xyzw);
                r19.xy = r32.xy / r16.ww;
                r19.xy = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r32.x = lightConstantsCB[r6.w].data[9].w + r19.x;
                r32.y = lightConstantsCB[r6.w].data[10].x + r19.y;
                r19.xy = lightConstantsCB[r6.w].data[9].yz * r32.xy;
                r32.xy = lightConstantsCB[r6.w].data[3].yy / lightConstantsCB[r6.w].data[8].yw;
                r32.zw = float2(1,1) + -r32.xy;
                r32.zw = cmp(r19.xy >= r32.zw);
                r32.xy = cmp(r32.xy >= r19.xy);
                r32.xy = (int2)r32.xy | (int2)r32.zw;
                r19.z = (int)r32.y | (int)r32.x;
                if (r19.z == 0) {
                  r19.xy = saturate(r19.xy);
                  r32.x = r19.x * lightConstantsCB[r6.w].data[8].y + lightConstantsCB[r6.w].data[8].z;
                  r32.y = r19.y * lightConstantsCB[r6.w].data[8].w + lightConstantsCB[r6.w].data[9].x;
                  r19.x = lightConstantsCB[r6.w].data[10].z * r16.w;
                  r7.w = lightConstantsCB[r6.w].data[10].y * r16.w + r7.w;
                  r7.w = r7.w / r19.x;
                }
              } else {
                r19.z = -1;
              }
              r16.w = (int)r20.w | (int)r19.z;
              if (r16.w == 0) {
                r7.w = max(6.10351563e-05, r7.w);
                r16.w = 0x0000ffff & (int)lightConstantsCB[r6.w].data[1].w;
                if (enableDitheredShadow != 0) {
                  r19.z = (uint)r16.w;
                  r20.w = 0;
                  r25.w = 0;
                  while (true) {
                    r26.w = cmp((int)r25.w >= 8);
                    if (r26.w != 0) break;
                    r33.x = dot(icb[r25.w+0].yx, r18.xw);
                    r33.y = dot(icb[r25.w+0].xy, r3.xy);
                    r19.xy = r33.xy * lightConstantsCB[r6.w].data[3].yy + r32.xy;
                    r19.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r7.w).x;
                    r20.w = r19.x * 0.125 + r20.w;
                    r25.w = (int)r25.w + 1;
                  }
                } else {
                  r32.z = (uint)r16.w;
                  r20.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r32.xyz, r7.w).x;
                }
                r6.w = r20.w * r20.w;
                r6.w = r6.w * r20.w;
              } else {
                r6.w = 1;
              }
              r8.w = r8.w * r6.w;
            } else {
              if (4 == 0) r6.w = 0; else if (4+20 < 32) {               r6.w = (uint)lightConstantsCB[r4.w].data[1].w << (32-(4 + 20)); r6.w = (uint)r6.w >> (32-4);              } else r6.w = (uint)lightConstantsCB[r4.w].data[1].w >> 20;
              r7.w = cmp(0 < (uint)r6.w);
              r7.w = r7.w ? r3.z : 0;
              if (r7.w != 0) {
                r6.w = (int)r6.w + numLights;
                r6.w = mad((int)r6.w, 15, -15);
                r7.w = abs(r9.w) * -0.200000003 + 0.400000006;
                r21.xyz = r12.xyz * r7.www + r11.xyz;
                r32.xyz = lightConstantsCB[r6.w].data[6].yzw;
                r32.w = lightConstantsCB[r6.w].data[7].x;
                r7.w = dot(r32.xyzw, r21.xyzw);
                r32.xyz = lightConstantsCB[r6.w].data[7].yzw;
                r32.w = lightConstantsCB[r6.w].data[8].x;
                r16.w = dot(r32.xyzw, r21.xyzw);
                r19.x = cmp(r16.w < r7.w);
                if (r19.x == 0) {
                  r32.xyz = lightConstantsCB[r6.w].data[4].yzw;
                  r32.w = lightConstantsCB[r6.w].data[5].x;
                  r32.x = dot(r32.xyzw, r21.xyzw);
                  r33.xyz = lightConstantsCB[r6.w].data[5].yzw;
                  r33.w = lightConstantsCB[r6.w].data[6].x;
                  r32.y = dot(r33.xyzw, r21.xyzw);
                  r19.yz = r32.xy / r16.ww;
                  r19.yz = r19.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                  r21.x = lightConstantsCB[r6.w].data[9].w + r19.y;
                  r21.y = lightConstantsCB[r6.w].data[10].x + r19.z;
                  r19.yz = lightConstantsCB[r6.w].data[9].yz * r21.xy;
                  r21.xy = lightConstantsCB[r6.w].data[3].yy / lightConstantsCB[r6.w].data[8].yw;
                  r32.xy = float2(1,1) + -r21.xy;
                  r32.xy = cmp(r19.yz >= r32.xy);
                  r21.xy = cmp(r21.xy >= r19.yz);
                  r21.xy = (int2)r21.xy | (int2)r32.xy;
                  r21.x = (int)r21.y | (int)r21.x;
                  if (r21.x == 0) {
                    r19.yz = saturate(r19.yz);
                    r32.x = r19.y * lightConstantsCB[r6.w].data[8].y + lightConstantsCB[r6.w].data[8].z;
                    r32.y = r19.z * lightConstantsCB[r6.w].data[8].w + lightConstantsCB[r6.w].data[9].x;
                    r19.y = lightConstantsCB[r6.w].data[10].z * r16.w;
                    r7.w = lightConstantsCB[r6.w].data[10].y * r16.w + r7.w;
                    r7.w = r7.w / r19.y;
                  }
                } else {
                  r21.x = -1;
                }
                r16.w = (int)r19.x | (int)r21.x;
                if (r16.w == 0) {
                  r7.w = max(6.10351563e-05, r7.w);
                  r16.w = 0x0000ffff & (int)lightConstantsCB[r6.w].data[1].w;
                  if (enableDitheredShadow != 0) {
                    r19.z = (uint)r16.w;
                    r21.xy = float2(0,0);
                    while (true) {
                      r21.z = cmp((int)r21.y >= 8);
                      if (r21.z != 0) break;
                      r33.x = dot(icb[r21.y+0].xy, r13.xy);
                      r33.y = dot(icb[r21.y+0].yx, r13.xz);
                      r19.xy = r33.xy * lightConstantsCB[r6.w].data[3].yy + r32.xy;
                      r19.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r7.w).x;
                      r21.x = r19.x * 0.125 + r21.x;
                      r21.y = (int)r21.y + 1;
                    }
                  } else {
                    r32.z = (uint)r16.w;
                    r21.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r32.xyz, r7.w).x;
                  }
                  r6.w = r21.x * r21.x;
                  r6.w = r6.w * r21.x;
                } else {
                  r6.w = 1;
                }
                r8.w = r8.w * r6.w;
              }
            }
            r6.w = -r12.w * r2.x + 1;
            r6.w = r6.w * r6.w;
            r6.w = -r6.w * 0.620000005 + 0.620000005;
            r6.w = r6.w + -r12.w;
            r6.w = r1.z * r6.w + r12.w;
            r6.w = r6.w * r8.w;
            r19.x = lightConstantsCB[r4.w].data[0].w;
            r19.yz = lightConstantsCB[r4.w].data[1].xy;
            r7.w = cmp(0 < r9.w);
            r32.xyz = r6.www * r19.xyz + r15.yzw;
            r6.w = saturate(dot(r12.xyz, r31.xyz));
            r30.xyz = r30.xyz * r5.zzz + r10.yzw;
            r5.z = dot(r30.xyz, r30.xyz);
            r5.z = rsqrt(r5.z);
            r30.xyz = r30.xyz * r5.zzz;
            r5.z = dot(r30.xyz, r10.yzw);
            r9.w = dot(r12.xyz, r30.xyz);
            r12.w = abs(r9.w) * r0.w + -abs(r9.w);
            r9.w = abs(r9.w) * r12.w + 1;
            r12.w = r6.w * r0.y + r0.z;
            r9.w = r9.w * r9.w;
            r9.w = r9.w * r12.w;
            r9.w = rcp(r9.w);
            r6.w = r6.w * r13.w;
            r6.w = r9.w * r6.w;
            r6.w = r6.w * r8.w;
            r30.xyz = r6.www * r19.xyz + r29.xyz;
            r5.z = saturate(1 + -r5.z);
            r8.w = r5.z * r5.z;
            r8.w = r8.w * r8.w;
            r5.z = r8.w * r5.z;
            r5.z = r6.w * r5.z;
            r19.xyz = r5.zzz * r19.xyz + r28.xyz;
            r15.yzw = r7.www ? r32.xyz : r15.yzw;
            r28.xyz = r7.www ? r19.xyz : r28.xyz;
            r29.xyz = r7.www ? r30.xyz : r29.xyz;
          }
        }
      }
      break;
      case 2 :      r19.xy = lightConstantsCB[r4.w].data[3].zw + -r11.xy;
      r19.z = lightConstantsCB[r4.w].data[4].x + -r11.z;
      r5.z = dot(r19.xyz, r19.xyz);
      r5.z = rsqrt(r5.z);
      r30.xyz = r19.xyz * r5.zzz;
      r6.w = dot(r12.xyz, r30.xyz);
      r7.w = saturate(r6.w);
      r8.w = cmp(0 < r7.w);
      if (r8.w != 0) {
        r30.xyz = lightConstantsCB[r4.w].data[7].yzw;
        r30.w = lightConstantsCB[r4.w].data[8].x;
        r8.w = dot(r30.xyzw, r11.xyzw);
        r9.w = cmp(r8.w < 1);
        if (r9.w != 0) {
          r31.xyz = float3(1,1,1);
          r9.w = 0;
        } else {
          r32.xyz = lightConstantsCB[r4.w].data[0].xyz + -r11.xyz;
          r12.w = lightConstantsCB[r4.w].data[3].x * lightConstantsCB[r4.w].data[3].x;
          r13.w = dot(r32.xyz, r32.xyz);
          r12.w = r12.w / r13.w;
          r12.w = min(1, r12.w);
          r21.yz = saturate(r8.ww * lightConstantsCB[r4.w].data[2].xz + lightConstantsCB[r4.w].data[2].yw);
          r32.xy = r21.yz * r21.yz;
          r21.yz = r21.yz * float2(-2,-2) + float2(3,3);
          r21.yz = r32.xy * r21.yz;
          r12.w = r21.y * r12.w;
          r12.w = r12.w * r21.z;
          r32.xyz = lightConstantsCB[r4.w].data[4].yzw;
          r32.w = lightConstantsCB[r4.w].data[5].x;
          r32.x = dot(r32.xyzw, r11.xyzw);
          r33.xyz = lightConstantsCB[r4.w].data[5].yzw;
          r33.w = lightConstantsCB[r4.w].data[6].x;
          r32.y = dot(r33.xyzw, r11.xyzw);
          r20.xy = r32.xy / r8.ww;
          r8.w = cmp(lightConstantsCB[r4.w].data[10].w < 0.00048828125);
          if (r8.w != 0) {
            r21.yz = saturate(abs(r20.xy) * lightConstantsCB[r4.w].data[12].xy + lightConstantsCB[r4.w].data[12].zw);
            r32.xy = r21.yz * r21.yz;
            r21.yz = r21.yz * float2(-2,-2) + float2(3,3);
            r21.yz = r32.xy * r21.yz;
            r8.w = r21.y * r21.z;
          } else {
            r32.xyzw = saturate(lightConstantsCB[r4.w].data[11].xyzw * abs(r20.yyxx));
            r32.xyzw = log2(r32.xyzw);
            r32.xyzw = lightConstantsCB[r4.w].data[12].zzzz * r32.xyzw;
            r32.xyzw = exp2(r32.xyzw);
            r21.yz = r32.xy + r32.zw;
            r21.yz = log2(r21.yz);
            r21.yz = lightConstantsCB[r4.w].data[12].ww * r21.yz;
            r21.yz = exp2(r21.yz);
            r13.w = lightConstantsCB[r4.w].data[12].x * r21.y;
            r16.w = lightConstantsCB[r4.w].data[12].y * r21.z + -1;
            r13.w = lightConstantsCB[r4.w].data[12].y * r21.z + -r13.w;
            r13.w = saturate(r16.w / r13.w);
            r16.w = r13.w * r13.w;
            r13.w = r13.w * -2 + 3;
            r8.w = r16.w * r13.w;
          }
          r9.w = r12.w * r8.w;
          r8.w = 255 & (int)lightConstantsCB[r4.w].data[14].w;
          if (r8.w != 0) {
            r12.w = dot(lightConstantsCB[r4.w].data[13].xyz, r20.xyz);
            r32.x = lightConstantsCB[r4.w].data[13].w;
            r32.yz = lightConstantsCB[r4.w].data[14].xy;
            r13.w = dot(r32.xyz, r20.xyz);
            r32.x = frac(r12.w);
            r32.y = frac(r13.w);
            r8.w = (int)r8.w + -1;
            r32.z = (uint)r8.w;
            r31.xyz = gCookieArray.SampleLevel(samplerLinear_s, r32.xyz, 0).xyz;
          } else {
            r31.xyz = float3(1,1,1);
          }
        }
        r32.x = lightConstantsCB[r4.w].data[0].w;
        r32.yz = lightConstantsCB[r4.w].data[1].xy;
        r31.xyz = r32.xyz * r31.xyz;
        r8.w = cmp(0 < r9.w);
        if (r8.w != 0) {
          if (3 == 0) r8.w = 0; else if (3+27 < 32) {           r8.w = (uint)lightConstantsCB[r4.w].data[1].w << (32-(3 + 27)); r8.w = (uint)r8.w >> (32-3);          } else r8.w = (uint)lightConstantsCB[r4.w].data[1].w >> 27;
          r8.w = cmp((int)r8.w != 1);
          if (r8.w != 0) {
            r8.w = abs(r6.w) * -0.200000003 + 0.400000006;
            r22.xyz = r12.xyz * r8.www + r11.xyz;
            r32.xyz = lightConstantsCB[r4.w].data[6].yzw;
            r32.w = lightConstantsCB[r4.w].data[7].x;
            r8.w = dot(r32.xyzw, r22.xyzw);
            r12.w = dot(r30.xyzw, r22.xyzw);
            r13.w = cmp(r12.w >= r8.w);
            if (r13.w != 0) {
              r30.xyz = lightConstantsCB[r4.w].data[4].yzw;
              r30.w = lightConstantsCB[r4.w].data[5].x;
              r20.x = dot(r30.xyzw, r22.xyzw);
              r30.xyz = lightConstantsCB[r4.w].data[5].yzw;
              r30.w = lightConstantsCB[r4.w].data[6].x;
              r20.y = dot(r30.xyzw, r22.xyzw);
              r20.xy = r20.xy / r12.ww;
              r20.xy = saturate(r20.xy * float2(0.5,-0.5) + float2(0.5,0.5));
              r22.x = r20.x * lightConstantsCB[r4.w].data[8].y + lightConstantsCB[r4.w].data[8].z;
              r22.y = r20.y * lightConstantsCB[r4.w].data[8].w + lightConstantsCB[r4.w].data[9].x;
              r8.w = r8.w / r12.w;
              r8.w = max(6.10351563e-05, r8.w);
              r12.w = 0x0000ffff & (int)lightConstantsCB[r4.w].data[1].w;
              if (enableDitheredShadow != 0) {
                r30.z = (uint)r12.w;
                r13.w = 0;
                r16.w = 0;
                while (true) {
                  r20.x = cmp((int)r16.w >= 8);
                  if (r20.x != 0) break;
                  r20.x = dot(icb[r16.w+0].xy, r25.xy);
                  r20.y = dot(icb[r16.w+0].yx, r25.xz);
                  r30.xy = r20.xy * lightConstantsCB[r4.w].data[3].yy + r22.xy;
                  r20.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r30.xyz, r8.w).x;
                  r13.w = r20.x * 0.125 + r13.w;
                  r16.w = (int)r16.w + 1;
                }
              } else {
                r22.z = (uint)r12.w;
                r13.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r8.w).x;
              }
              r8.w = r13.w * r13.w;
              r8.w = r8.w * r13.w;
            } else {
              r8.w = 1;
            }
          } else {
            r8.w = 1;
          }
          r8.w = r9.w * r8.w;
          r9.w = cmp(0 < r8.w);
          if (r9.w != 0) {
            r9.w = lightConstantsCB[r4.w].data[1].z * r0.w;
            r9.w = r9.w * r7.w;
            if (4 == 0) r12.w = 0; else if (4+16 < 32) {             r12.w = (uint)lightConstantsCB[r4.w].data[1].w << (32-(4 + 16)); r12.w = (uint)r12.w >> (32-4);            } else r12.w = (uint)lightConstantsCB[r4.w].data[1].w >> 16;
            r16.w = cmp(0 < (uint)r12.w);
            r16.w = r10.x ? r16.w : 0;
            if (r16.w != 0) {
              r12.w = (int)r12.w + numLights;
              r12.w = mad((int)r12.w, 15, -15);
              r16.w = abs(r6.w) * -0.200000003 + 0.400000006;
              r23.xyz = r12.xyz * r16.www + r11.xyz;
              r30.xyz = lightConstantsCB[r12.w].data[6].yzw;
              r30.w = lightConstantsCB[r12.w].data[7].x;
              r16.w = dot(r30.xyzw, r23.xyzw);
              r30.xyz = lightConstantsCB[r12.w].data[7].yzw;
              r30.w = lightConstantsCB[r12.w].data[8].x;
              r20.x = dot(r30.xyzw, r23.xyzw);
              r20.y = cmp(r20.x < r16.w);
              if (r20.y == 0) {
                r30.xyz = lightConstantsCB[r12.w].data[4].yzw;
                r30.w = lightConstantsCB[r12.w].data[5].x;
                r22.x = dot(r30.xyzw, r23.xyzw);
                r30.xyz = lightConstantsCB[r12.w].data[5].yzw;
                r30.w = lightConstantsCB[r12.w].data[6].x;
                r22.y = dot(r30.xyzw, r23.xyzw);
                r21.yz = r22.xy / r20.xx;
                r21.yz = r21.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                r22.x = lightConstantsCB[r12.w].data[9].w + r21.y;
                r22.y = lightConstantsCB[r12.w].data[10].x + r21.z;
                r21.yz = lightConstantsCB[r12.w].data[9].yz * r22.xy;
                r22.xy = lightConstantsCB[r12.w].data[3].yy / lightConstantsCB[r12.w].data[8].yw;
                r23.xy = float2(1,1) + -r22.xy;
                r23.xy = cmp(r21.yz >= r23.xy);
                r22.xy = cmp(r22.xy >= r21.yz);
                r22.xy = (int2)r22.xy | (int2)r23.xy;
                r22.x = (int)r22.y | (int)r22.x;
                if (r22.x == 0) {
                  r21.yz = saturate(r21.yz);
                  r23.x = r21.y * lightConstantsCB[r12.w].data[8].y + lightConstantsCB[r12.w].data[8].z;
                  r23.y = r21.z * lightConstantsCB[r12.w].data[8].w + lightConstantsCB[r12.w].data[9].x;
                  r21.y = lightConstantsCB[r12.w].data[10].z * r20.x;
                  r16.w = lightConstantsCB[r12.w].data[10].y * r20.x + r16.w;
                  r16.w = r16.w / r21.y;
                }
              } else {
                r22.x = -1;
              }
              r20.x = (int)r20.y | (int)r22.x;
              if (r20.x == 0) {
                r16.w = max(6.10351563e-05, r16.w);
                r20.x = 0x0000ffff & (int)lightConstantsCB[r12.w].data[1].w;
                if (enableDitheredShadow != 0) {
                  r22.z = (uint)r20.x;
                  r20.y = 0;
                  r21.y = 0;
                  while (true) {
                    r21.z = cmp((int)r21.y >= 8);
                    if (r21.z != 0) break;
                    r30.x = dot(icb[r21.y+0].xy, r26.xy);
                    r30.y = dot(icb[r21.y+0].yx, r26.xz);
                    r22.xy = r30.xy * lightConstantsCB[r12.w].data[3].yy + r23.xy;
                    r21.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r16.w).x;
                    r20.y = r21.z * 0.125 + r20.y;
                    r21.y = (int)r21.y + 1;
                  }
                } else {
                  r23.z = (uint)r20.x;
                  r20.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r16.w).x;
                }
                r12.w = r20.y * r20.y;
                r12.w = r12.w * r20.y;
              } else {
                r12.w = 1;
              }
              r8.w = r12.w * r8.w;
            } else {
              if (4 == 0) r4.w = 0; else if (4+20 < 32) {               r4.w = (uint)lightConstantsCB[r4.w].data[1].w << (32-(4 + 20)); r4.w = (uint)r4.w >> (32-4);              } else r4.w = (uint)lightConstantsCB[r4.w].data[1].w >> 20;
              r12.w = cmp(0 < (uint)r4.w);
              r12.w = r12.w ? r3.z : 0;
              if (r12.w != 0) {
                r4.w = (int)r4.w + numLights;
                r4.w = mad((int)r4.w, 15, -15);
                r12.w = abs(r6.w) * -0.200000003 + 0.400000006;
                r24.xyz = r12.xyz * r12.www + r11.xyz;
                r30.xyz = lightConstantsCB[r4.w].data[6].yzw;
                r30.w = lightConstantsCB[r4.w].data[7].x;
                r12.w = dot(r30.xyzw, r24.xyzw);
                r30.xyz = lightConstantsCB[r4.w].data[7].yzw;
                r30.w = lightConstantsCB[r4.w].data[8].x;
                r16.w = dot(r30.xyzw, r24.xyzw);
                r20.x = cmp(r16.w < r12.w);
                if (r20.x == 0) {
                  r30.xyz = lightConstantsCB[r4.w].data[4].yzw;
                  r30.w = lightConstantsCB[r4.w].data[5].x;
                  r22.x = dot(r30.xyzw, r24.xyzw);
                  r30.xyz = lightConstantsCB[r4.w].data[5].yzw;
                  r30.w = lightConstantsCB[r4.w].data[6].x;
                  r22.y = dot(r30.xyzw, r24.xyzw);
                  r21.yz = r22.xy / r16.ww;
                  r21.yz = r21.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                  r22.x = lightConstantsCB[r4.w].data[9].w + r21.y;
                  r22.y = lightConstantsCB[r4.w].data[10].x + r21.z;
                  r21.yz = lightConstantsCB[r4.w].data[9].yz * r22.xy;
                  r22.xy = lightConstantsCB[r4.w].data[3].yy / lightConstantsCB[r4.w].data[8].yw;
                  r23.xy = float2(1,1) + -r22.xy;
                  r23.xy = cmp(r21.yz >= r23.xy);
                  r22.xy = cmp(r22.xy >= r21.yz);
                  r22.xy = (int2)r22.xy | (int2)r23.xy;
                  r22.x = (int)r22.y | (int)r22.x;
                  if (r22.x == 0) {
                    r21.yz = saturate(r21.yz);
                    r23.x = r21.y * lightConstantsCB[r4.w].data[8].y + lightConstantsCB[r4.w].data[8].z;
                    r23.y = r21.z * lightConstantsCB[r4.w].data[8].w + lightConstantsCB[r4.w].data[9].x;
                    r21.y = lightConstantsCB[r4.w].data[10].z * r16.w;
                    r12.w = lightConstantsCB[r4.w].data[10].y * r16.w + r12.w;
                    r12.w = r12.w / r21.y;
                  }
                } else {
                  r22.x = -1;
                }
                r16.w = (int)r20.x | (int)r22.x;
                if (r16.w == 0) {
                  r12.w = max(6.10351563e-05, r12.w);
                  r16.w = 0x0000ffff & (int)lightConstantsCB[r4.w].data[1].w;
                  if (enableDitheredShadow != 0) {
                    r22.z = (uint)r16.w;
                    r20.x = 0;
                    r21.y = 0;
                    while (true) {
                      r21.z = cmp((int)r21.y >= 8);
                      if (r21.z != 0) break;
                      r24.x = dot(icb[r21.y+0].xy, r27.xy);
                      r24.y = dot(icb[r21.y+0].yx, r27.xz);
                      r22.xy = r24.xy * lightConstantsCB[r4.w].data[3].yy + r23.xy;
                      r21.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r12.w).x;
                      r20.x = r21.z * 0.125 + r20.x;
                      r21.y = (int)r21.y + 1;
                    }
                  } else {
                    r23.z = (uint)r16.w;
                    r20.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r12.w).x;
                  }
                  r4.w = r20.x * r20.x;
                  r4.w = r4.w * r20.x;
                } else {
                  r4.w = 1;
                }
                r8.w = r8.w * r4.w;
              }
            }
            r4.w = -r7.w * r2.x + 1;
            r4.w = r4.w * r4.w;
            r4.w = -r4.w * 0.620000005 + 0.620000005;
            r4.w = r4.w + -r7.w;
            r4.w = r1.z * r4.w + r7.w;
            r4.w = r4.w * r8.w;
            r6.w = cmp(0 < r6.w);
            r22.xyz = r4.www * r31.xyz + r15.yzw;
            r19.xyz = r19.xyz * r5.zzz + r10.yzw;
            r4.w = dot(r19.xyz, r19.xyz);
            r4.w = rsqrt(r4.w);
            r19.xyz = r19.xyz * r4.www;
            r4.w = dot(r19.xyz, r10.yzw);
            r5.z = dot(r12.xyz, r19.xyz);
            r12.w = abs(r5.z) * r0.w + -abs(r5.z);
            r5.z = abs(r5.z) * r12.w + 1;
            r7.w = r7.w * r0.y + r0.z;
            r5.z = r5.z * r5.z;
            r5.z = r5.z * r7.w;
            r5.z = rcp(r5.z);
            r5.z = r5.z * r9.w;
            r5.z = r8.w * r5.z;
            r5.z = 0.25 * r5.z;
            r19.xyz = r5.zzz * r31.xyz + r29.xyz;
            r4.w = saturate(1 + -r4.w);
            r7.w = r4.w * r4.w;
            r7.w = r7.w * r7.w;
            r4.w = r7.w * r4.w;
            r4.w = r5.z * r4.w;
            r23.xyz = r4.www * r31.xyz + r28.xyz;
            r15.yzw = r6.www ? r22.xyz : r15.yzw;
            r28.xyz = r6.www ? r23.xyz : r28.xyz;
            r29.xyz = r6.www ? r19.xyz : r29.xyz;
          }
        }
      }
      break;
      default :
      break;
    }
    r3.w = (int)r3.w + 1;
  }
  r0.xyz = r5.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r1.z = (uint)r0.y;
  r2.xyz = r6.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r2.x;
  r1.w = cmp((int)r1.z == (int)r1.w);
  r2.xy = r1.ww ? r2.yz : float2(-1,0);
  r3.xyz = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r3.x;
  r1.w = cmp((int)r1.z == (int)r1.w);
  r2.zw = r1.ww ? r3.yz : float2(-1,0);
  r3.xyz = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r3.x;
  r1.w = cmp((int)r1.z == (int)r1.w);
  r3.xy = r1.ww ? r3.yz : float2(-1,0);
  r5.xyz = r9.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r5.x;
  r1.z = cmp((int)r1.z == (int)r1.w);
  r1.zw = r1.zz ? r5.yz : float2(-1,0);
  r5.xy = r2.xz;
  r5.z = r3.x;
  r5.w = r1.z;
  r5.xyzw = r5.xyzw + -r0.xxxx;
  r5.xyzw = cmp(abs(r5.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r5.xyzw = r5.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r1.z = r5.x + r5.y;
  r1.z = r1.z + r5.z;
  r1.z = r1.z + r5.w;
  r2.x = r5.y * r2.w;
  r2.x = r5.x * r2.y + r2.x;
  r2.x = r5.z * r3.y + r2.x;
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
  r0.xyz = r15.yzw * r4.xyz + r0.xyz;
  r0.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.w != 0) {
    r0.w = dot(r11.xyz, r11.xyz);
    r1.z = rsqrt(r0.w);
    r2.xyz = r11.xyz * r1.zzz;
    r0.w = sqrt(r0.w);
    r1.z = cmp(0 < fogConstants.blendAmount);
    if (r1.z != 0) {
      r1.zw = r0.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r1.zw = fogConstants.atmospherefogdensityatcamera.xy * r1.zw;
      r2.w = cmp(0.00999999978 < abs(r11.z));
      r3.xy = fogConstants.atmospherefogheightdensityscale.xy * r11.zz;
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
      r1.w = cmp(0.00999999978 < abs(r11.z));
      r2.w = fogConstants.atmospherefogheightdensityscale.x * r11.z;
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
    r0.w = fogConstants.heightFalloff * r11.z;
    r1.z = fogConstants.heightFalloff * r11.z + fogConstants.K0;
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
    r1.z = dot(r11.xyz, r11.xyz);
    r1.w = sqrt(r1.z);
    r0.w = r0.w * r1.w + fogConstants.expAdd;
    r0.w = exp2(r0.w);
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r1.z = rsqrt(r1.z);
    r3.xyz = r11.xyz * r1.zzz;
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