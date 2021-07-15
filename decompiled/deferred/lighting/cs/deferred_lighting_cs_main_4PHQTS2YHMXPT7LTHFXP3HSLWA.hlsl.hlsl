// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:23:00 2021

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.x = mad(permuteStride, 18, (int)vThreadGroupID.x);
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
  r1.zw = (uint2)r1.xy;
  r3.zw = float2(0.5,0.5) + r1.zw;
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
  r11.z = 1;
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
  r0.w = dot(r1.zw, float2(0.0671105608,0.00583714992));
  r0.w = frac(r0.w);
  r0.w = 52.9829178 * r0.w;
  r0.w = frac(r0.w);
  r0.w = r0.w * 6.28318548 + gameTick.w;
  sincos(r0.w, r13.x, r14.x);
  r2.x = saturate(dot(r12.xyz, r10.yzw));
  r0.w = dot(-r10.yzw, r12.xyz);
  r0.w = r0.w + r0.w;
  r15.xyz = r12.xyz * -r0.www + -r10.yzw;
  r0.w = 17 * r2.y;
  r0.w = exp2(r0.w);
  r0.w = 2 + r0.w;
  r0.w = 2 / r0.w;
  r1.z = sqrt(r0.w);
  r2.zw = renderTargetSize.zw * r3.zw;
  r1.w = gSSAOTexture.SampleLevel(samplerLinearClamp_s, r2.zw, 0).x;
  r2.z = r5.z * r1.w;
  r2.w = 1 + -r2.y;
  r3.y = 5 * r2.w;
  r3.z = r2.w * 5 + -2.5;
  r3.z = 0.400000006 * r3.z;
  r3.z = max(0, r3.z);
  r13.yz = -r2.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r3.w = exp2(r13.y);
  r3.w = r3.w * r2.x;
  r3.zw = float2(100,9.1368103) * r3.zw;
  r4.w = r3.y * r2.w;
  r4.w = -r4.w * 2.0159049 + r13.z;
  r4.w = exp2(r4.w);
  r4.w = r4.w * r2.x;
  r4.w = 9.70808983 * r4.w;
  r3.w = max(r4.w, r3.w);
  r3.w = max(1.26815999, r3.w);
  r4.w = numRefProbes + -numOverrideProbes;
  r6.w = (uint)renderTargetSize.x;
  r6.w = (int)r6.w + 7;
  r6.w = (uint)r6.w >> 3;
  r0.y = mad((int)r0.z, (int)r6.w, (int)r0.y);
  bitmask.y = ((~(-1 << 27)) << 5) & 0xffffffff;  r0.y = (((uint)r0.y << 5) & bitmask.y) | ((uint)16 & ~bitmask.y);
  r0.z = (int)r4.w & -32;
  r6.w = (int)-r0.z + (int)r4.w;
  r7.w = numRefProbes & -32;
  r8.w = (int)-r7.w + numRefProbes;
  r16.yz = float2(0,1);
  r17.xy = float2(0,0);
  r18.x = 1;
  r19.xy = float2(0,0);
  r20.xy = float2(0,0);
  r21.xyzw = float4(0,0,0,0);
  r22.yzw = float3(0,0,0);
  r9.w = r0.z;
  while (true) {
    r13.y = cmp((uint)r9.w >= numRefProbes);
    if (r13.y != 0) break;
    r13.y = (uint)r9.w >> 5;
    r13.y = (int)r0.y + (int)r13.y;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.y, r13.y, l(0), t26.xxxx
  r13.y = samplerLinear[]..swiz;
    r13.z = cmp((int)r0.z == (int)r9.w);
    bitmask.w = ((~(-1 << r6.w)) << 0) & 0xffffffff;  r13.w = (((uint)0 << 0) & bitmask.w) | ((uint)r13.y & ~bitmask.w);
    r13.y = r13.z ? r13.w : r13.y;
    r13.z = cmp((int)r7.w == (int)r9.w);
    if (r8.w == 0) r13.w = 0; else if (r8.w+0 < 32) {     r13.w = (uint)r13.y << (32-(r8.w + 0)); r13.w = (uint)r13.w >> (32-r8.w);    } else r13.w = (uint)r13.y >> 0;
    r13.y = r13.z ? r13.w : r13.y;
    r23.xyzw = r21.xyzw;
    r24.xyz = r22.yzw;
    r13.z = r13.y;
    while (true) {
      if (r13.z == 0) break;
      r13.w = firstbitlow((uint)r13.z);
      r14.y = 1 << (int)r13.w;
      r14.y = ~(int)r14.y;
      r13.z = (int)r13.z & (int)r14.y;
      r13.w = (int)r9.w + (int)r13.w;
      r13.w = (int)r13.w * 14;
      r14.yzw = -refProbeConstantsCB[r13.w].data[0].xyz + r11.xyz;
      r16.w = 0x0000ffff & (int)refProbeConstantsCB[r13.w].data[7].z;
      if (6 == 0) r17.w = 0; else if (6+25 < 32) {       r17.w = (uint)refProbeConstantsCB[r13.w].data[7].z << (32-(6 + 25)); r17.w = (uint)r17.w >> (32-6);      } else r17.w = (uint)refProbeConstantsCB[r13.w].data[7].z >> 25;
      r18.z = (int)r16.w * 6;
      r18.w = dot(refProbeAttenuationConstantsCB[r18.z].data[0].xyz, r14.yzw);
      r18.w = saturate(refProbeAttenuationConstantsCB[r18.z].data[0].w + r18.w);
      r19.w = dot(refProbeAttenuationConstantsCB[r18.z].data[1].xyz, r14.yzw);
      r19.w = saturate(refProbeAttenuationConstantsCB[r18.z].data[1].w + r19.w);
      r18.w = r19.w * r18.w;
      r19.w = dot(refProbeAttenuationConstantsCB[r18.z].data[2].xyz, r14.yzw);
      r19.w = saturate(refProbeAttenuationConstantsCB[r18.z].data[2].w + r19.w);
      r18.w = r19.w * r18.w;
      r19.w = dot(refProbeAttenuationConstantsCB[r18.z].data[3].xyz, r14.yzw);
      r19.w = saturate(refProbeAttenuationConstantsCB[r18.z].data[3].w + r19.w);
      r18.w = r19.w * r18.w;
      r19.w = dot(refProbeAttenuationConstantsCB[r18.z].data[4].xyz, r14.yzw);
      r19.w = saturate(refProbeAttenuationConstantsCB[r18.z].data[4].w + r19.w);
      r18.w = r19.w * r18.w;
      r19.w = dot(refProbeAttenuationConstantsCB[r18.z].data[5].xyz, r14.yzw);
      r18.z = saturate(refProbeAttenuationConstantsCB[r18.z].data[5].w + r19.w);
      r16.x = r18.w * r18.z;
      r18.z = 1 & (int)refProbeConstantsCB[r13.w].data[6].x;
      r18.zw = r18.zz ? r16.xy : r16.zx;
      r16.x = refProbeConstantsCB[r13.w].data[6].x;
      r25.xy = r18.zw;
      r19.w = 1;
      while (true) {
        r20.w = cmp((int)r19.w >= (int)r17.w);
        if (r20.w != 0) break;
        r20.w = (int)r16.w + (int)r19.w;
        r20.w = (int)r20.w * 6;
        r25.z = dot(refProbeAttenuationConstantsCB[r20.w].data[0].xyz, r14.yzw);
        r25.z = saturate(refProbeAttenuationConstantsCB[r20.w].data[0].w + r25.z);
        r25.z = r25.x * r25.z;
        r25.w = dot(refProbeAttenuationConstantsCB[r20.w].data[1].xyz, r14.yzw);
        r25.w = saturate(refProbeAttenuationConstantsCB[r20.w].data[1].w + r25.w);
        r25.z = r25.z * r25.w;
        r25.w = dot(refProbeAttenuationConstantsCB[r20.w].data[2].xyz, r14.yzw);
        r25.w = saturate(refProbeAttenuationConstantsCB[r20.w].data[2].w + r25.w);
        r25.z = r25.z * r25.w;
        r25.w = dot(refProbeAttenuationConstantsCB[r20.w].data[3].xyz, r14.yzw);
        r25.w = saturate(refProbeAttenuationConstantsCB[r20.w].data[3].w + r25.w);
        r25.z = r25.z * r25.w;
        r25.w = dot(refProbeAttenuationConstantsCB[r20.w].data[4].xyz, r14.yzw);
        r25.w = saturate(refProbeAttenuationConstantsCB[r20.w].data[4].w + r25.w);
        r25.z = r25.z * r25.w;
        r25.w = dot(refProbeAttenuationConstantsCB[r20.w].data[5].xyz, r14.yzw);
        r20.w = saturate(refProbeAttenuationConstantsCB[r20.w].data[5].w + r25.w);
        r25.x = r25.z * r20.w;
        r25.w = (uint)r16.x >> 2;
        if (1 == 0) r26.x = 0; else if (1+2 < 32) {         r26.x = (uint)r16.x << (32-(1 + 2)); r26.x = (uint)r26.x >> (32-1);        } else r26.x = (uint)r16.x >> 2;
        r26.y = (int)r25.w & 2;
        r26.z = max(r25.y, r25.x);
        r20.w = -r25.z * r20.w + 1;
        r20.w = r25.y * r20.w;
        r18.y = r26.y ? r20.w : r26.z;
        r25.xy = r26.xx ? r25.xy : r18.xy;
        r19.w = (int)r19.w + 1;
        r16.x = r25.w;
      }
      r25.y = saturate(r25.y);
      r16.x = refProbeConstantsCB[r13.w].data[6].y * r25.y;
      r16.w = cmp(0 < r16.x);
      if (r16.w != 0) {
        r24.z = r25.y * refProbeConstantsCB[r13.w].data[6].y + r24.z;
        r16.x = refProbeConstantsCB[r13.w].data[7].y * r16.x;
        r26.x = refProbeConstantsCB[r13.w].data[7].w;
        r26.yz = refProbeConstantsCB[r13.w].data[8].xy;
        r16.w = dot(r15.xyz, r26.xyz);
        r17.w = dot(r14.yzw, r26.xyz);
        r17.w = -refProbeConstantsCB[r13.w].data[8].z + r17.w;
        r18.y = cmp(r17.w >= 0);
        r17.w = max(abs(r17.w), r3.z);
        r17.w = r18.y ? r17.w : -r17.w;
        r16.w = max(1.00000001e-07, -r16.w);
        r16.w = r17.w / r16.w;
        r16.w = min(131072, abs(r16.w));
        r26.x = refProbeConstantsCB[r13.w].data[8].w;
        r26.yz = refProbeConstantsCB[r13.w].data[9].xy;
        r17.w = dot(r15.xyz, r26.xyz);
        r18.y = dot(r14.yzw, r26.xyz);
        r18.y = -refProbeConstantsCB[r13.w].data[9].z + r18.y;
        r18.z = cmp(r18.y >= 0);
        r18.y = max(abs(r18.y), r3.z);
        r18.y = r18.z ? r18.y : -r18.y;
        r17.w = max(1.00000001e-07, -r17.w);
        r17.w = r18.y / r17.w;
        r16.w = min(abs(r17.w), r16.w);
        r26.x = refProbeConstantsCB[r13.w].data[9].w;
        r26.yz = refProbeConstantsCB[r13.w].data[10].xy;
        r17.w = dot(r15.xyz, r26.xyz);
        r18.y = dot(r14.yzw, r26.xyz);
        r18.y = -refProbeConstantsCB[r13.w].data[10].z + r18.y;
        r18.z = cmp(r18.y >= 0);
        r18.y = max(abs(r18.y), r3.z);
        r18.y = r18.z ? r18.y : -r18.y;
        r17.w = max(1.00000001e-07, -r17.w);
        r17.w = r18.y / r17.w;
        r16.w = min(abs(r17.w), r16.w);
        r26.x = refProbeConstantsCB[r13.w].data[10].w;
        r26.yz = refProbeConstantsCB[r13.w].data[11].xy;
        r17.w = dot(r15.xyz, r26.xyz);
        r18.y = dot(r14.yzw, r26.xyz);
        r18.y = -refProbeConstantsCB[r13.w].data[11].z + r18.y;
        r18.z = cmp(r18.y >= 0);
        r18.y = max(abs(r18.y), r3.z);
        r18.y = r18.z ? r18.y : -r18.y;
        r17.w = max(1.00000001e-07, -r17.w);
        r17.w = r18.y / r17.w;
        r16.w = min(abs(r17.w), r16.w);
        r26.x = refProbeConstantsCB[r13.w].data[11].w;
        r26.yz = refProbeConstantsCB[r13.w].data[12].xy;
        r17.w = dot(r15.xyz, r26.xyz);
        r18.y = dot(r14.yzw, r26.xyz);
        r18.y = -refProbeConstantsCB[r13.w].data[12].z + r18.y;
        r18.z = cmp(r18.y >= 0);
        r18.y = max(abs(r18.y), r3.z);
        r18.y = r18.z ? r18.y : -r18.y;
        r17.w = max(1.00000001e-07, -r17.w);
        r17.w = r18.y / r17.w;
        r16.w = min(abs(r17.w), r16.w);
        r26.x = refProbeConstantsCB[r13.w].data[12].w;
        r26.yz = refProbeConstantsCB[r13.w].data[13].xy;
        r17.w = dot(r15.xyz, r26.xyz);
        r18.y = dot(r14.yzw, r26.xyz);
        r18.y = -refProbeConstantsCB[r13.w].data[13].z + r18.y;
        r18.z = cmp(r18.y >= 0);
        r18.y = max(abs(r18.y), r3.z);
        r18.y = r18.z ? r18.y : -r18.y;
        r17.w = max(1.00000001e-07, -r17.w);
        r17.w = r18.y / r17.w;
        r16.w = min(abs(r17.w), r16.w);
        r26.x = refProbeConstantsCB[r13.w].data[3].w + r14.y;
        r26.yz = refProbeConstantsCB[r13.w].data[4].xy + r14.zw;
        r18.yzw = r15.xyz * r16.www + r26.xyz;
        r17.w = dot(r18.yzw, r18.yzw);
        r17.w = sqrt(r17.w);
        r16.w = r16.w / r17.w;
        r16.w = r16.w + r16.w;
        r16.w = sqrt(r16.w);
        r16.w = r2.w * 5 + r16.w;
        r16.w = -0.844799995 + r16.w;
        r26.x = refProbeConstantsCB[r13.w].data[0].w;
        r26.y = refProbeConstantsCB[r13.w].data[1].z;
        r26.z = refProbeConstantsCB[r13.w].data[2].y;
        r27.x = dot(r18.yzw, r26.xyz);
        r28.xy = refProbeConstantsCB[r13.w].data[1].xw;
        r28.z = refProbeConstantsCB[r13.w].data[2].z;
        r27.y = dot(r18.yzw, r28.xyz);
        r29.x = refProbeConstantsCB[r13.w].data[1].y;
        r29.yz = refProbeConstantsCB[r13.w].data[2].xw;
        r27.z = dot(r18.yzw, r29.xyz);
        if (9 == 0) r17.w = 0; else if (9+16 < 32) {         r17.w = (uint)refProbeConstantsCB[r13.w].data[7].z << (32-(9 + 16)); r17.w = (uint)r17.w >> (32-9);        } else r17.w = (uint)refProbeConstantsCB[r13.w].data[7].z >> 16;
        r27.w = (uint)r17.w;
        r18.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r27.xyzw, r16.w).xyz;
        r30.x = dot(r14.yzw, r26.xyz);
        r30.y = dot(r14.yzw, r28.xyz);
        r30.z = dot(r14.yzw, r29.xyz);
        r14.yzw = saturate(r30.xyz * refProbeConstantsCB[r13.w].data[3].xyz + float3(0.5,0.5,0.5));
        r30.xy = refProbeConstantsCB[r13.w].data[4].zw * r14.yz;
        r30.z = refProbeConstantsCB[r13.w].data[5].x * r14.w;
        r14.yzw = refProbeConstantsCB[r13.w].data[5].yzw + r30.xyz;
        r27.x = dot(r12.xyz, r26.xyz);
        r27.y = dot(r12.xyz, r28.xyz);
        r27.z = dot(r12.xyz, r29.xyz);
        r25.xzw = cmp(float3(0,0,0) < r27.xyz);
        r17.z = r25.x ? 0 : 0.5;
        r26.xyz = r17.xyz + r14.yzw;
        r26.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
        r28.xyz = r27.xyz * r27.xyz;
        r28.xyz = r28.xyz * r16.xxx;
        r19.z = r25.z ? 0 : 0.5;
        r29.xyz = r19.xyz + r14.yzw;
        r29.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r29.xyz, 0).xyz;
        r29.xyz = r29.xyz * r28.yyy;
        r26.xyz = r26.xyz * r28.xxx + r29.xyz;
        r20.z = r25.w ? 0 : 0.5;
        r14.yzw = r20.xyz + r14.yzw;
        r14.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r14.yzw, 0).xyz;
        r14.yzw = r14.yzw * r28.zzz + r26.xyz;
        r25.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r27.xyzw, 6).xyz;
        r26.xyz = r25.xzw * r14.yzw;
        r13.w = dot(r26.xyz, float3(0.212599993,0.715200007,0.0722000003));
        r23.xyz = r14.yzw * r25.xzw + r23.xyz;
        r14.y = r13.w * r3.w;
        r18.yzw = r18.yzw * r16.xxx;
        r14.z = dot(r18.yzw, float3(0.212599993,0.715200007,0.0722000003));
        r13.w = r3.w * r13.w + r14.z;
        r13.w = r14.y / r13.w;
        r26.x = r23.w;
        r26.yz = r24.xy;
        r24.xyw = r18.zwy * r13.www + r26.yzx;
        r23.w = r24.w;
      }
    }
    r21.xyzw = r23.xyzw;
    r22.yzw = r24.xyz;
    r9.w = (int)r9.w + 32;
  }
  r7.w = cmp(r22.w < 1);
  if (r7.w != 0) {
    r16.yz = float2(0,1);
    r17.xy = float2(0,0);
    r18.x = 1;
    r19.xy = float2(0,0);
    r20.xy = float2(0,0);
    r23.x = r21.w;
    r23.yzw = r22.yzw;
    r13.yzw = r21.xyz;
    r7.w = r22.w;
    r8.w = 0;
    while (true) {
      r9.w = cmp((uint)r8.w >= (uint)r4.w);
      if (r9.w != 0) break;
      r9.w = (uint)r8.w >> 5;
      r9.w = (int)r0.y + (int)r9.w;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r9.w, r9.w, l(0), t26.xxxx
    r9.w = samplerLinear[]..swiz;
      r14.y = cmp((int)r0.z == (int)r8.w);
      if (r6.w == 0) r14.z = 0; else if (r6.w+0 < 32) {       r14.z = (uint)r9.w << (32-(r6.w + 0)); r14.z = (uint)r14.z >> (32-r6.w);      } else r14.z = (uint)r9.w >> 0;
      r9.w = r14.y ? r14.z : r9.w;
      r24.xyzw = r23.xyzw;
      r14.yzw = r13.yzw;
      r16.w = r7.w;
      r17.w = r9.w;
      while (true) {
        if (r17.w == 0) break;
        r18.z = firstbitlow((uint)r17.w);
        r18.w = 1 << (int)r18.z;
        r18.w = ~(int)r18.w;
        r17.w = (int)r17.w & (int)r18.w;
        r18.z = (int)r8.w + (int)r18.z;
        r18.z = (int)r18.z * 14;
        r25.xyz = -refProbeConstantsCB[r18.z].data[0].xyz + r11.xyz;
        r18.w = 0x0000ffff & (int)refProbeConstantsCB[r18.z].data[7].z;
        if (6 == 0) r19.w = 0; else if (6+25 < 32) {         r19.w = (uint)refProbeConstantsCB[r18.z].data[7].z << (32-(6 + 25)); r19.w = (uint)r19.w >> (32-6);        } else r19.w = (uint)refProbeConstantsCB[r18.z].data[7].z >> 25;
        r20.w = (int)r18.w * 6;
        r25.w = dot(refProbeAttenuationConstantsCB[r20.w].data[0].xyz, r25.xyz);
        r25.w = saturate(refProbeAttenuationConstantsCB[r20.w].data[0].w + r25.w);
        r26.x = dot(refProbeAttenuationConstantsCB[r20.w].data[1].xyz, r25.xyz);
        r26.x = saturate(refProbeAttenuationConstantsCB[r20.w].data[1].w + r26.x);
        r25.w = r26.x * r25.w;
        r26.x = dot(refProbeAttenuationConstantsCB[r20.w].data[2].xyz, r25.xyz);
        r26.x = saturate(refProbeAttenuationConstantsCB[r20.w].data[2].w + r26.x);
        r25.w = r26.x * r25.w;
        r26.x = dot(refProbeAttenuationConstantsCB[r20.w].data[3].xyz, r25.xyz);
        r26.x = saturate(refProbeAttenuationConstantsCB[r20.w].data[3].w + r26.x);
        r25.w = r26.x * r25.w;
        r26.x = dot(refProbeAttenuationConstantsCB[r20.w].data[4].xyz, r25.xyz);
        r26.x = saturate(refProbeAttenuationConstantsCB[r20.w].data[4].w + r26.x);
        r25.w = r26.x * r25.w;
        r26.x = dot(refProbeAttenuationConstantsCB[r20.w].data[5].xyz, r25.xyz);
        r20.w = saturate(refProbeAttenuationConstantsCB[r20.w].data[5].w + r26.x);
        r16.x = r25.w * r20.w;
        r20.w = 1 & (int)refProbeConstantsCB[r18.z].data[6].x;
        r26.xy = r20.ww ? r16.xy : r16.zx;
        r16.x = refProbeConstantsCB[r18.z].data[6].x;
        r27.xy = r26.xy;
        r20.w = 1;
        while (true) {
          r25.w = cmp((int)r20.w >= (int)r19.w);
          if (r25.w != 0) break;
          r25.w = (int)r18.w + (int)r20.w;
          r25.w = (int)r25.w * 6;
          r26.z = dot(refProbeAttenuationConstantsCB[r25.w].data[0].xyz, r25.xyz);
          r26.z = saturate(refProbeAttenuationConstantsCB[r25.w].data[0].w + r26.z);
          r26.z = r27.x * r26.z;
          r26.w = dot(refProbeAttenuationConstantsCB[r25.w].data[1].xyz, r25.xyz);
          r26.w = saturate(refProbeAttenuationConstantsCB[r25.w].data[1].w + r26.w);
          r26.z = r26.z * r26.w;
          r26.w = dot(refProbeAttenuationConstantsCB[r25.w].data[2].xyz, r25.xyz);
          r26.w = saturate(refProbeAttenuationConstantsCB[r25.w].data[2].w + r26.w);
          r26.z = r26.z * r26.w;
          r26.w = dot(refProbeAttenuationConstantsCB[r25.w].data[3].xyz, r25.xyz);
          r26.w = saturate(refProbeAttenuationConstantsCB[r25.w].data[3].w + r26.w);
          r26.z = r26.z * r26.w;
          r26.w = dot(refProbeAttenuationConstantsCB[r25.w].data[4].xyz, r25.xyz);
          r26.w = saturate(refProbeAttenuationConstantsCB[r25.w].data[4].w + r26.w);
          r26.z = r26.z * r26.w;
          r26.w = dot(refProbeAttenuationConstantsCB[r25.w].data[5].xyz, r25.xyz);
          r25.w = saturate(refProbeAttenuationConstantsCB[r25.w].data[5].w + r26.w);
          r27.x = r26.z * r25.w;
          r26.w = (uint)r16.x >> 2;
          if (1 == 0) r27.z = 0; else if (1+2 < 32) {           r27.z = (uint)r16.x << (32-(1 + 2)); r27.z = (uint)r27.z >> (32-1);          } else r27.z = (uint)r16.x >> 2;
          r27.w = (int)r26.w & 2;
          r28.x = max(r27.y, r27.x);
          r25.w = -r26.z * r25.w + 1;
          r25.w = r27.y * r25.w;
          r18.y = r27.w ? r25.w : r28.x;
          r27.xy = r27.zz ? r27.xy : r18.xy;
          r20.w = (int)r20.w + 1;
          r16.x = r26.w;
        }
        r16.x = saturate(r27.y + -r16.w);
        r18.y = refProbeConstantsCB[r18.z].data[6].y * r16.x;
        r18.w = cmp(0 < r18.y);
        if (r18.w != 0) {
          r24.w = r16.x * refProbeConstantsCB[r18.z].data[6].y + r24.w;
          r16.x = refProbeConstantsCB[r18.z].data[7].y * r18.y;
          r26.x = refProbeConstantsCB[r18.z].data[7].w;
          r26.yz = refProbeConstantsCB[r18.z].data[8].xy;
          r18.y = dot(r15.xyz, r26.xyz);
          r18.w = dot(r25.xyz, r26.xyz);
          r18.w = -refProbeConstantsCB[r18.z].data[8].z + r18.w;
          r19.w = cmp(r18.w >= 0);
          r18.w = max(abs(r18.w), r3.z);
          r18.w = r19.w ? r18.w : -r18.w;
          r18.y = max(1.00000001e-07, -r18.y);
          r18.y = r18.w / r18.y;
          r18.y = min(131072, abs(r18.y));
          r26.x = refProbeConstantsCB[r18.z].data[8].w;
          r26.yz = refProbeConstantsCB[r18.z].data[9].xy;
          r18.w = dot(r15.xyz, r26.xyz);
          r19.w = dot(r25.xyz, r26.xyz);
          r19.w = -refProbeConstantsCB[r18.z].data[9].z + r19.w;
          r20.w = cmp(r19.w >= 0);
          r19.w = max(abs(r19.w), r3.z);
          r19.w = r20.w ? r19.w : -r19.w;
          r18.w = max(1.00000001e-07, -r18.w);
          r18.w = r19.w / r18.w;
          r18.y = min(r18.y, abs(r18.w));
          r26.x = refProbeConstantsCB[r18.z].data[9].w;
          r26.yz = refProbeConstantsCB[r18.z].data[10].xy;
          r18.w = dot(r15.xyz, r26.xyz);
          r19.w = dot(r25.xyz, r26.xyz);
          r19.w = -refProbeConstantsCB[r18.z].data[10].z + r19.w;
          r20.w = cmp(r19.w >= 0);
          r19.w = max(abs(r19.w), r3.z);
          r19.w = r20.w ? r19.w : -r19.w;
          r18.w = max(1.00000001e-07, -r18.w);
          r18.w = r19.w / r18.w;
          r18.y = min(r18.y, abs(r18.w));
          r26.x = refProbeConstantsCB[r18.z].data[10].w;
          r26.yz = refProbeConstantsCB[r18.z].data[11].xy;
          r18.w = dot(r15.xyz, r26.xyz);
          r19.w = dot(r25.xyz, r26.xyz);
          r19.w = -refProbeConstantsCB[r18.z].data[11].z + r19.w;
          r20.w = cmp(r19.w >= 0);
          r19.w = max(abs(r19.w), r3.z);
          r19.w = r20.w ? r19.w : -r19.w;
          r18.w = max(1.00000001e-07, -r18.w);
          r18.w = r19.w / r18.w;
          r18.y = min(r18.y, abs(r18.w));
          r26.x = refProbeConstantsCB[r18.z].data[11].w;
          r26.yz = refProbeConstantsCB[r18.z].data[12].xy;
          r18.w = dot(r15.xyz, r26.xyz);
          r19.w = dot(r25.xyz, r26.xyz);
          r19.w = -refProbeConstantsCB[r18.z].data[12].z + r19.w;
          r20.w = cmp(r19.w >= 0);
          r19.w = max(abs(r19.w), r3.z);
          r19.w = r20.w ? r19.w : -r19.w;
          r18.w = max(1.00000001e-07, -r18.w);
          r18.w = r19.w / r18.w;
          r18.y = min(r18.y, abs(r18.w));
          r26.x = refProbeConstantsCB[r18.z].data[12].w;
          r26.yz = refProbeConstantsCB[r18.z].data[13].xy;
          r18.w = dot(r15.xyz, r26.xyz);
          r19.w = dot(r25.xyz, r26.xyz);
          r19.w = -refProbeConstantsCB[r18.z].data[13].z + r19.w;
          r20.w = cmp(r19.w >= 0);
          r19.w = max(abs(r19.w), r3.z);
          r19.w = r20.w ? r19.w : -r19.w;
          r18.w = max(1.00000001e-07, -r18.w);
          r18.w = r19.w / r18.w;
          r18.y = min(r18.y, abs(r18.w));
          r26.x = refProbeConstantsCB[r18.z].data[3].w + r25.x;
          r26.yz = refProbeConstantsCB[r18.z].data[4].xy + r25.yz;
          r26.xyz = r15.xyz * r18.yyy + r26.xyz;
          r18.w = dot(r26.xyz, r26.xyz);
          r18.w = sqrt(r18.w);
          r18.y = r18.y / r18.w;
          r18.y = r18.y + r18.y;
          r18.y = sqrt(r18.y);
          r18.y = r2.w * 5 + r18.y;
          r18.y = -0.844799995 + r18.y;
          r28.x = refProbeConstantsCB[r18.z].data[0].w;
          r28.y = refProbeConstantsCB[r18.z].data[1].z;
          r28.z = refProbeConstantsCB[r18.z].data[2].y;
          r29.x = dot(r26.xyz, r28.xyz);
          r30.xy = refProbeConstantsCB[r18.z].data[1].xw;
          r30.z = refProbeConstantsCB[r18.z].data[2].z;
          r29.y = dot(r26.xyz, r30.xyz);
          r31.x = refProbeConstantsCB[r18.z].data[1].y;
          r31.yz = refProbeConstantsCB[r18.z].data[2].xw;
          r29.z = dot(r26.xyz, r31.xyz);
          if (9 == 0) r18.w = 0; else if (9+16 < 32) {           r18.w = (uint)refProbeConstantsCB[r18.z].data[7].z << (32-(9 + 16)); r18.w = (uint)r18.w >> (32-9);          } else r18.w = (uint)refProbeConstantsCB[r18.z].data[7].z >> 16;
          r29.w = (uint)r18.w;
          r26.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r29.xyzw, r18.y).xyz;
          r32.x = dot(r25.xyz, r28.xyz);
          r32.y = dot(r25.xyz, r30.xyz);
          r32.z = dot(r25.xyz, r31.xyz);
          r25.xyz = saturate(r32.xyz * refProbeConstantsCB[r18.z].data[3].xyz + float3(0.5,0.5,0.5));
          r32.xy = refProbeConstantsCB[r18.z].data[4].zw * r25.xy;
          r32.z = refProbeConstantsCB[r18.z].data[5].x * r25.z;
          r18.yzw = refProbeConstantsCB[r18.z].data[5].yzw + r32.xyz;
          r29.x = dot(r12.xyz, r28.xyz);
          r29.y = dot(r12.xyz, r30.xyz);
          r29.z = dot(r12.xyz, r31.xyz);
          r25.xyz = cmp(float3(0,0,0) < r29.xyz);
          r17.z = r25.x ? 0 : 0.5;
          r27.xzw = r18.yzw + r17.xyz;
          r27.xzw = gProbeXArray.SampleLevel(samplerLinearClamp_s, r27.xzw, 0).xyz;
          r28.xyz = r29.xyz * r29.xyz;
          r28.xyz = r28.xyz * r16.xxx;
          r19.z = r25.y ? 0 : 0.5;
          r25.xyw = r19.xyz + r18.yzw;
          r25.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r25.xyw, 0).xyz;
          r25.xyw = r25.xyw * r28.yyy;
          r25.xyw = r27.xzw * r28.xxx + r25.xyw;
          r20.z = r25.z ? 0 : 0.5;
          r18.yzw = r20.xyz + r18.yzw;
          r18.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r18.yzw, 0).xyz;
          r18.yzw = r18.yzw * r28.zzz + r25.xyw;
          r25.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r29.xyzw, 6).xyz;
          r27.xzw = r25.xyz * r18.yzw;
          r17.z = dot(r27.xzw, float3(0.212599993,0.715200007,0.0722000003));
          r14.yzw = r18.yzw * r25.xyz + r14.yzw;
          r18.y = r17.z * r3.w;
          r25.xyz = r26.xyz * r16.xxx;
          r16.x = dot(r25.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r16.x = r3.w * r17.z + r16.x;
          r16.x = r18.y / r16.x;
          r24.xyz = r25.xyz * r16.xxx + r24.xyz;
        }
      }
      r23.xyzw = r24.xyzw;
      r13.yzw = r14.yzw;
      r8.w = (int)r8.w + 32;
    }
    r22.xyzw = r23.zxyw;
    r21.xyz = r13.yzw;
    r22.xyzw = r22.yzxw;
  } else {
    r22.x = r21.w;
  }
  r0.y = max(1, r22.w);
  r0.y = rcp(r0.y);
  r22.w = saturate(r22.w);
  r13.yzw = r21.xyz * r0.yyy;
  r14.yzw = r22.xyz * r0.yyy;
  r0.z = cmp(r22.w < 0.99000001);
  if (r0.z != 0) {
    r0.z = 1 + -r22.w;
    r2.w = sunConstants.globalProbeExposure * r0.z;
    r16.xyz = -globalProbeConstants.data[0].xyz + r11.xyz;
    r17.x = globalProbeConstants.data[0].w * r16.x;
    r17.yz = globalProbeConstants.data[1].xy * r16.yz;
    r16.xyz = saturate(float3(0.5,0.5,0.5) + r17.xyz);
    r17.xy = globalProbeConstants.data[1].zw * r16.xy;
    r17.z = globalProbeConstants.data[2].x * r16.z;
    r16.xyz = globalProbeConstants.data[2].yzw + r17.xyz;
    r17.xyz = cmp(float3(0,0,0) < r12.xyz);
    r17.xyz = r17.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r17.w = 0;
    r18.xyz = r17.wwx + r16.xyz;
    r18.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r18.xyz, 0).xyz;
    r19.xyz = r12.xyz * r12.xyz;
    r19.xyz = r19.xyz * r2.www;
    r20.xyz = r17.wwy + r16.xyz;
    r20.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r20.xyz, 0).xyz;
    r20.xyz = r20.xyz * r19.yyy;
    r18.xyz = r18.xyz * r19.xxx + r20.xyz;
    r16.xyz = r17.wwz + r16.xyz;
    r16.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r16.xyz, 0).xyz;
    r16.xyz = r16.xyz * r19.zzz + r18.xyz;
    r12.w = 0;
    r17.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r12.xyzw, 6).xyz;
    r16.xyz = r17.xyz * r16.xyz;
    r2.w = dot(r16.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r13.yzw = r21.xyz * r0.yyy + r16.xyz;
    r15.w = 0;
    r3.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r15.xyzw, r3.y).xyz;
    r0.y = sunConstants.globalProbeExposure * r0.z + -r2.w;
    r0.y = r2.y * r0.y + r2.w;
    r14.yzw = r3.yzw * r0.yyy + r14.yzw;
  }
  r0.y = r5.z * r1.w + r2.x;
  r0.y = log2(abs(r0.y));
  r0.y = r1.z * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r5.z * r1.w + r0.y;
  r0.y = saturate(-1 + r0.y);
  r3.yzw = r13.yzw * r2.zzz;
  r16.xyz = r3.xxx ? r3.yzw : 0;
  r2.yw = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r2.yw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r2.yw, 0).xy;
  r14.yzw = r14.yzw * r0.yyy;
  r17.xyz = r14.yzw * r2.yyy;
  r14.yzw = r14.yzw * r2.www;
  r0.y = sqrt(r1.z);
  r0.y = r0.y * 0.5 + 0.5;
  r0.y = r0.y * r0.y;
  r0.z = 0.5 * r0.y;
  r0.y = -r0.y * 0.5 + 1;
  r1.w = r2.x * r0.y + r0.z;
  r0.yz = r1.ww * r0.yz;
  r0.x = (uint)r0.x >> 24;
  r0.x = (int)r0.x * 15;
  if (3 == 0) r1.w = 0; else if (3+24 < 32) {   r1.w = (uint)lightConstantsCB[r0.x].data[1].w << (32-(3 + 24)); r1.w = (uint)r1.w >> (32-3);  } else r1.w = (uint)lightConstantsCB[r0.x].data[1].w >> 24;
  switch (r1.w) {
    case 4 :    r1.w = cmp(0 < lightConstantsCB[r0.x].data[6].y);
    r18.xy = lightConstantsCB[r0.x].data[5].zw;
    r18.z = lightConstantsCB[r0.x].data[6].x;
    r19.xyz = -r18.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r0.x].data[0].xyz;
    r20.xyz = r19.xyz + -r11.xyz;
    r2.y = dot(r18.xyz, r20.xyz);
    r2.w = saturate(-r2.y / lightConstantsCB[r0.x].data[6].y);
    r21.xyz = r2.www * r18.xyz + r19.xyz;
    r21.xyz = r1.www ? r21.xyz : lightConstantsCB[r0.x].data[0].xyz;
    r21.xyz = r21.xyz + -r11.xyz;
    r4.w = dot(r21.xyz, r21.xyz);
    r5.z = rsqrt(r4.w);
    r21.xyz = r21.xyz * r5.zzz;
    r5.z = dot(r12.xyz, r21.xyz);
    r6.w = saturate(r5.z);
    r6.w = r3.x ? abs(r5.z) : r6.w;
    r7.w = cmp(0 < r6.w);
    if (r7.w != 0) {
      r7.w = sqrt(r4.w);
      r8.w = lightConstantsCB[r0.x].data[3].x * lightConstantsCB[r0.x].data[3].x;
      r4.w = r8.w / r4.w;
      r4.w = min(1, r4.w);
      r21.xy = saturate(r7.ww * lightConstantsCB[r0.x].data[2].xz + lightConstantsCB[r0.x].data[2].yw);
      r21.zw = r21.xy * r21.xy;
      r21.xy = r21.xy * float2(-2,-2) + float2(3,3);
      r21.xy = r21.zw * r21.xy;
      r4.w = r21.x * r4.w;
      r4.w = r4.w * r21.y;
      r7.w = cmp(0 < r4.w);
      if (r7.w != 0) {
        if (3 == 0) r7.w = 0; else if (3+27 < 32) {         r7.w = (uint)lightConstantsCB[r0.x].data[1].w << (32-(3 + 27)); r7.w = (uint)r7.w >> (32-3);        } else r7.w = (uint)lightConstantsCB[r0.x].data[1].w >> 27;
        r7.w = cmp((int)r7.w != 1);
        if (r7.w != 0) {
          r21.xy = (uint2)r1.yx;
          r7.w = dot(r21.xy, float2(0.0671105608,0.00583714992));
          r7.w = frac(r7.w);
          r7.w = 52.9829178 * r7.w;
          r7.w = frac(r7.w);
          r7.w = r7.w * 6.28318548 + gameTick.w;
          sincos(r7.w, r21.x, r22.x);
          r7.w = abs(r5.z) * -0.200000003 + 0.400000006;
          r8.w = cmp(r5.z < 0);
          r8.w = r3.x ? r8.w : 0;
          r7.w = r8.w ? -r7.w : r7.w;
          r21.yzw = r12.xyz * r7.www + r11.xyz;
          r21.yzw = -lightConstantsCB[r0.x].data[4].yzw + r21.yzw;
          r7.w = max(abs(r21.z), abs(r21.w));
          r7.w = max(abs(r21.y), r7.w);
          r7.w = lightConstantsCB[r0.x].data[5].x / r7.w;
          r7.w = lightConstantsCB[r0.x].data[5].y + r7.w;
          r8.w = dot(r21.yzw, r21.yzw);
          r8.w = rsqrt(r8.w);
          r7.w = max(6.10351563e-05, r7.w);
          r9.w = 0x0000ffff & (int)lightConstantsCB[r0.x].data[1].w;
          r23.x = -r13.x;
          r24.w = (uint)r9.w;
          r23.y = r14.x;
          r23.z = r13.x;
          r9.w = 0;
          r12.w = 0;
          while (true) {
            r15.w = cmp((int)r12.w >= 8);
            if (r15.w != 0) break;
            r22.y = dot(icb[r12.w+0].yx, r23.xy);
            r22.z = dot(icb[r12.w+0].yx, r23.yz);
            r25.yz = lightConstantsCB[r0.x].data[3].yy * r22.yz;
            r25.x = r25.y * r22.x;
            r25.w = r25.y * r21.x;
            r24.xyz = r21.yzw * r8.www + r25.xzw;
            r15.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyzw, r7.w).x;
            r9.w = r15.w * 0.125 + r9.w;
            r12.w = (int)r12.w + 1;
          }
        } else {
          r9.w = 1;
        }
        r4.w = r9.w * r4.w;
        r7.w = cmp(0 < r4.w);
        if (r7.w != 0) {
          r7.w = lightConstantsCB[r0.x].data[1].z * r0.w;
          r7.w = 0.25 * r7.w;
          r8.w = dot(r18.xyz, r15.xyz);
          r9.w = dot(r15.xyz, r20.xyz);
          r12.w = -r8.w * r8.w + lightConstantsCB[r0.x].data[6].y;
          r2.y = r8.w * r9.w + -r2.y;
          r2.y = saturate(r2.y / r12.w);
          r8.w = r12.w / lightConstantsCB[r0.x].data[6].y;
          r8.w = 10 * r8.w;
          r8.w = min(1, r8.w);
          r2.y = r2.y + -r2.w;
          r2.y = r8.w * r2.y + r2.w;
          r15.xyz = r2.yyy * r18.xyz + r19.xyz;
          r15.xyz = r1.www ? r15.xyz : lightConstantsCB[r0.x].data[0].xyz;
          r15.xyz = r15.xyz + -r11.xyz;
          r1.w = dot(r15.xyz, r15.xyz);
          r1.w = rsqrt(r1.w);
          r18.xyz = r15.xyz * r1.www;
          if (4 == 0) r2.y = 0; else if (4+16 < 32) {           r2.y = (uint)lightConstantsCB[r0.x].data[1].w << (32-(4 + 16)); r2.y = (uint)r2.y >> (32-4);          } else r2.y = (uint)lightConstantsCB[r0.x].data[1].w >> 16;
          r2.w = cmp(0 < (uint)r2.y);
          r2.w = r10.x ? r2.w : 0;
          if (r2.w != 0) {
            r2.y = (int)r2.y + numLights;
            r2.y = mad((int)r2.y, 15, -15);
            r2.w = abs(r5.z) * -0.200000003 + 0.400000006;
            r8.w = cmp(r5.z < 0);
            r8.w = r3.x ? r8.w : 0;
            r2.w = r8.w ? -r2.w : r2.w;
            r19.xyz = r12.xyz * r2.www + r11.xyz;
            r20.xyz = lightConstantsCB[r2.y].data[6].yzw;
            r20.w = lightConstantsCB[r2.y].data[7].x;
            r19.w = 1;
            r2.w = dot(r20.xyzw, r19.xyzw);
            r20.xyz = lightConstantsCB[r2.y].data[7].yzw;
            r20.w = lightConstantsCB[r2.y].data[8].x;
            r8.w = dot(r20.xyzw, r19.xyzw);
            r9.w = cmp(r8.w < r2.w);
            if (r9.w == 0) {
              r20.xyz = lightConstantsCB[r2.y].data[4].yzw;
              r20.w = lightConstantsCB[r2.y].data[5].x;
              r20.x = dot(r20.xyzw, r19.xyzw);
              r21.xyz = lightConstantsCB[r2.y].data[5].yzw;
              r21.w = lightConstantsCB[r2.y].data[6].x;
              r20.y = dot(r21.xyzw, r19.xyzw);
              r19.xy = r20.xy / r8.ww;
              r19.xy = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
              r20.x = lightConstantsCB[r2.y].data[9].w + r19.x;
              r20.y = lightConstantsCB[r2.y].data[10].x + r19.y;
              r19.xy = lightConstantsCB[r2.y].data[9].yz * r20.xy;
              r19.zw = lightConstantsCB[r2.y].data[3].yy / lightConstantsCB[r2.y].data[8].yw;
              r20.xy = float2(1,1) + -r19.zw;
              r20.xy = cmp(r19.xy >= r20.xy);
              r19.zw = cmp(r19.zw >= r19.xy);
              r19.zw = (int2)r19.zw | (int2)r20.xy;
              r12.w = (int)r19.w | (int)r19.z;
              if (r12.w == 0) {
                r19.xy = saturate(r19.xy);
                r20.x = r19.x * lightConstantsCB[r2.y].data[8].y + lightConstantsCB[r2.y].data[8].z;
                r20.y = r19.y * lightConstantsCB[r2.y].data[8].w + lightConstantsCB[r2.y].data[9].x;
                r15.w = lightConstantsCB[r2.y].data[10].z * r8.w;
                r2.w = lightConstantsCB[r2.y].data[10].y * r8.w + r2.w;
                r2.w = r2.w / r15.w;
              }
            } else {
              r12.w = -1;
            }
            r8.w = (int)r9.w | (int)r12.w;
            if (r8.w == 0) {
              r2.w = max(6.10351563e-05, r2.w);
              r8.w = 0x0000ffff & (int)lightConstantsCB[r2.y].data[1].w;
              if (enableDitheredShadow != 0) {
                r19.x = -r13.x;
                r21.z = (uint)r8.w;
                r19.y = r14.x;
                r19.z = r13.x;
                r9.w = 0;
                r12.w = 0;
                while (true) {
                  r15.w = cmp((int)r12.w >= 8);
                  if (r15.w != 0) break;
                  r22.x = dot(icb[r12.w+0].yx, r19.xy);
                  r22.y = dot(icb[r12.w+0].yx, r19.yz);
                  r21.xy = r22.xy * lightConstantsCB[r2.y].data[3].yy + r20.xy;
                  r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r2.w).x;
                  r9.w = r15.w * 0.125 + r9.w;
                  r12.w = (int)r12.w + 1;
                }
              } else {
                r20.z = (uint)r8.w;
                r9.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r2.w).x;
              }
              r2.y = r9.w * r9.w;
              r2.y = r2.y * r9.w;
            } else {
              r2.y = 1;
            }
            r4.w = r4.w * r2.y;
          } else {
            if (4 == 0) r2.y = 0; else if (4+20 < 32) {             r2.y = (uint)lightConstantsCB[r0.x].data[1].w << (32-(4 + 20)); r2.y = (uint)r2.y >> (32-4);            } else r2.y = (uint)lightConstantsCB[r0.x].data[1].w >> 20;
            r2.w = cmp(0 < (uint)r2.y);
            r8.w = ~(int)r10.x;
            r2.w = r2.w ? r8.w : 0;
            if (r2.w != 0) {
              r2.y = (int)r2.y + numLights;
              r2.y = mad((int)r2.y, 15, -15);
              r2.w = abs(r5.z) * -0.200000003 + 0.400000006;
              r8.w = cmp(r5.z < 0);
              r8.w = r3.x ? r8.w : 0;
              r2.w = r8.w ? -r2.w : r2.w;
              r19.xyz = r12.xyz * r2.www + r11.xyz;
              r20.xyz = lightConstantsCB[r2.y].data[6].yzw;
              r20.w = lightConstantsCB[r2.y].data[7].x;
              r19.w = 1;
              r2.w = dot(r20.xyzw, r19.xyzw);
              r20.xyz = lightConstantsCB[r2.y].data[7].yzw;
              r20.w = lightConstantsCB[r2.y].data[8].x;
              r8.w = dot(r20.xyzw, r19.xyzw);
              r9.w = cmp(r8.w < r2.w);
              if (r9.w == 0) {
                r20.xyz = lightConstantsCB[r2.y].data[4].yzw;
                r20.w = lightConstantsCB[r2.y].data[5].x;
                r20.x = dot(r20.xyzw, r19.xyzw);
                r21.xyz = lightConstantsCB[r2.y].data[5].yzw;
                r21.w = lightConstantsCB[r2.y].data[6].x;
                r20.y = dot(r21.xyzw, r19.xyzw);
                r19.xy = r20.xy / r8.ww;
                r19.xy = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r20.x = lightConstantsCB[r2.y].data[9].w + r19.x;
                r20.y = lightConstantsCB[r2.y].data[10].x + r19.y;
                r19.xy = lightConstantsCB[r2.y].data[9].yz * r20.xy;
                r19.zw = lightConstantsCB[r2.y].data[3].yy / lightConstantsCB[r2.y].data[8].yw;
                r20.xy = float2(1,1) + -r19.zw;
                r20.xy = cmp(r19.xy >= r20.xy);
                r19.zw = cmp(r19.zw >= r19.xy);
                r19.zw = (int2)r19.zw | (int2)r20.xy;
                r12.w = (int)r19.w | (int)r19.z;
                if (r12.w == 0) {
                  r19.xy = saturate(r19.xy);
                  r20.x = r19.x * lightConstantsCB[r2.y].data[8].y + lightConstantsCB[r2.y].data[8].z;
                  r20.y = r19.y * lightConstantsCB[r2.y].data[8].w + lightConstantsCB[r2.y].data[9].x;
                  r15.w = lightConstantsCB[r2.y].data[10].z * r8.w;
                  r2.w = lightConstantsCB[r2.y].data[10].y * r8.w + r2.w;
                  r2.w = r2.w / r15.w;
                }
              } else {
                r12.w = -1;
              }
              r8.w = (int)r9.w | (int)r12.w;
              if (r8.w == 0) {
                r2.w = max(6.10351563e-05, r2.w);
                r8.w = 0x0000ffff & (int)lightConstantsCB[r2.y].data[1].w;
                if (enableDitheredShadow != 0) {
                  r19.x = -r13.x;
                  r21.z = (uint)r8.w;
                  r19.y = r14.x;
                  r19.z = r13.x;
                  r9.w = 0;
                  r12.w = 0;
                  while (true) {
                    r15.w = cmp((int)r12.w >= 8);
                    if (r15.w != 0) break;
                    r22.x = dot(icb[r12.w+0].yx, r19.xy);
                    r22.y = dot(icb[r12.w+0].yx, r19.yz);
                    r21.xy = r22.xy * lightConstantsCB[r2.y].data[3].yy + r20.xy;
                    r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r2.w).x;
                    r9.w = r15.w * 0.125 + r9.w;
                    r12.w = (int)r12.w + 1;
                  }
                } else {
                  r20.z = (uint)r8.w;
                  r9.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r2.w).x;
                }
                r2.y = r9.w * r9.w;
                r2.y = r2.y * r9.w;
              } else {
                r2.y = 1;
              }
              r4.w = r4.w * r2.y;
            }
          }
          r2.y = -r2.x * 0.5 + 1;
          r2.y = -r6.w * r2.y + 1;
          r2.y = r2.y * r2.y;
          r2.y = -r2.y * 0.620000005 + 0.620000005;
          r2.y = r2.y + -r6.w;
          r2.y = r1.z * r2.y + r6.w;
          r2.y = r2.y * r4.w;
          r19.x = lightConstantsCB[r0.x].data[0].w;
          r19.yz = lightConstantsCB[r0.x].data[1].xy;
          r20.xyz = r19.xyz * r2.yyy;
          r2.w = cmp(0 < r5.z);
          r20.xyz = r13.yzw * r2.zzz + r20.xyz;
          r5.z = saturate(dot(r12.xyz, r18.xyz));
          r15.xyz = r15.xyz * r1.www + r10.yzw;
          r1.w = dot(r15.xyz, r15.xyz);
          r1.w = rsqrt(r1.w);
          r15.xyz = r15.xyz * r1.www;
          r1.w = dot(r15.xyz, r10.yzw);
          r6.w = dot(r12.xyz, r15.xyz);
          r8.w = abs(r6.w) * r0.w + -abs(r6.w);
          r6.w = abs(r6.w) * r8.w + 1;
          r8.w = r5.z * r0.y + r0.z;
          r6.w = r6.w * r6.w;
          r6.w = r6.w * r8.w;
          r6.w = rcp(r6.w);
          r5.z = r5.z * r7.w;
          r5.z = r6.w * r5.z;
          r4.w = r5.z * r4.w;
          r15.xyz = r4.www * r19.xyz + r14.yzw;
          r1.w = saturate(1 + -r1.w);
          r5.z = r1.w * r1.w;
          r5.z = r5.z * r5.z;
          r1.w = r5.z * r1.w;
          r1.w = r4.w * r1.w;
          r18.xyz = r1.www * r19.xyz + r17.xyz;
          r19.xyz = r2.yyy * r19.xyz + r16.xyz;
          r19.xyz = r3.xxx ? r19.xyz : 0;
          r3.yzw = r2.www ? r20.xyz : r3.yzw;
          r16.xyz = r2.www ? r16.xyz : r19.xyz;
          r17.xyz = r2.www ? r18.xyz : r17.xyz;
          r14.yzw = r2.www ? r15.xyz : r14.yzw;
        }
      }
    }
    break;
    case 2 :    r15.xy = lightConstantsCB[r0.x].data[3].zw + -r11.xy;
    r15.z = lightConstantsCB[r0.x].data[4].x + -r11.z;
    r1.w = dot(r15.xyz, r15.xyz);
    r1.w = rsqrt(r1.w);
    r18.xyz = r15.xyz * r1.www;
    r2.y = dot(r12.xyz, r18.xyz);
    r2.w = saturate(r2.y);
    r4.w = r3.x ? abs(r2.y) : r2.w;
    r5.z = cmp(0 < r4.w);
    if (r5.z != 0) {
      r18.xyz = lightConstantsCB[r0.x].data[7].yzw;
      r18.w = lightConstantsCB[r0.x].data[8].x;
      r11.w = 1;
      r5.z = dot(r18.xyzw, r11.xyzw);
      r6.w = cmp(r5.z < 1);
      if (r6.w != 0) {
        r19.xyz = float3(1,1,1);
        r6.w = 0;
      } else {
        r20.xyz = lightConstantsCB[r0.x].data[0].xyz + -r11.xyz;
        r7.w = lightConstantsCB[r0.x].data[3].x * lightConstantsCB[r0.x].data[3].x;
        r8.w = dot(r20.xyz, r20.xyz);
        r7.w = r7.w / r8.w;
        r7.w = min(1, r7.w);
        r20.xy = saturate(r5.zz * lightConstantsCB[r0.x].data[2].xz + lightConstantsCB[r0.x].data[2].yw);
        r20.zw = r20.xy * r20.xy;
        r20.xy = r20.xy * float2(-2,-2) + float2(3,3);
        r20.xy = r20.zw * r20.xy;
        r7.w = r20.x * r7.w;
        r7.w = r7.w * r20.y;
        r20.xyz = lightConstantsCB[r0.x].data[4].yzw;
        r20.w = lightConstantsCB[r0.x].data[5].x;
        r20.x = dot(r20.xyzw, r11.xyzw);
        r21.xyz = lightConstantsCB[r0.x].data[5].yzw;
        r21.w = lightConstantsCB[r0.x].data[6].x;
        r20.y = dot(r21.xyzw, r11.xyzw);
        r20.xy = r20.xy / r5.zz;
        r5.z = cmp(lightConstantsCB[r0.x].data[10].w < 0.00048828125);
        if (r5.z != 0) {
          r21.xy = saturate(abs(r20.xy) * lightConstantsCB[r0.x].data[12].xy + lightConstantsCB[r0.x].data[12].zw);
          r21.zw = r21.xy * r21.xy;
          r21.xy = r21.xy * float2(-2,-2) + float2(3,3);
          r21.xy = r21.zw * r21.xy;
          r5.z = r21.x * r21.y;
        } else {
          r21.xyzw = saturate(lightConstantsCB[r0.x].data[11].xyzw * abs(r20.yyxx));
          r21.xyzw = log2(r21.xyzw);
          r21.xyzw = lightConstantsCB[r0.x].data[12].zzzz * r21.xyzw;
          r21.xyzw = exp2(r21.xyzw);
          r21.xy = r21.xy + r21.zw;
          r21.xy = log2(r21.xy);
          r21.xy = lightConstantsCB[r0.x].data[12].ww * r21.xy;
          r21.xy = exp2(r21.xy);
          r8.w = lightConstantsCB[r0.x].data[12].x * r21.x;
          r9.w = lightConstantsCB[r0.x].data[12].y * r21.y + -1;
          r8.w = lightConstantsCB[r0.x].data[12].y * r21.y + -r8.w;
          r8.w = saturate(r9.w / r8.w);
          r9.w = r8.w * r8.w;
          r8.w = r8.w * -2 + 3;
          r5.z = r9.w * r8.w;
        }
        r6.w = r7.w * r5.z;
        r5.z = 255 & (int)lightConstantsCB[r0.x].data[14].w;
        if (r5.z != 0) {
          r20.z = 1;
          r7.w = dot(lightConstantsCB[r0.x].data[13].xyz, r20.xyz);
          r21.x = lightConstantsCB[r0.x].data[13].w;
          r21.yz = lightConstantsCB[r0.x].data[14].xy;
          r8.w = dot(r21.xyz, r20.xyz);
          r20.x = frac(r7.w);
          r20.y = frac(r8.w);
          r5.z = (int)r5.z + -1;
          r20.z = (uint)r5.z;
          r19.xyz = gCookieArray.SampleLevel(samplerLinear_s, r20.xyz, 0).xyz;
        } else {
          r19.xyz = float3(1,1,1);
        }
      }
      r20.x = lightConstantsCB[r0.x].data[0].w;
      r20.yz = lightConstantsCB[r0.x].data[1].xy;
      r19.xyz = r20.xyz * r19.xyz;
      r5.z = cmp(0 < r6.w);
      if (r5.z != 0) {
        if (3 == 0) r5.z = 0; else if (3+27 < 32) {         r5.z = (uint)lightConstantsCB[r0.x].data[1].w << (32-(3 + 27)); r5.z = (uint)r5.z >> (32-3);        } else r5.z = (uint)lightConstantsCB[r0.x].data[1].w >> 27;
        r5.z = cmp((int)r5.z != 1);
        if (r5.z != 0) {
          r5.z = abs(r2.y) * -0.200000003 + 0.400000006;
          r7.w = cmp(r2.y < 0);
          r7.w = r3.x ? r7.w : 0;
          r5.z = r7.w ? -r5.z : r5.z;
          r20.xyz = r12.xyz * r5.zzz + r11.xyz;
          r21.xyz = lightConstantsCB[r0.x].data[6].yzw;
          r21.w = lightConstantsCB[r0.x].data[7].x;
          r20.w = 1;
          r5.z = dot(r21.xyzw, r20.xyzw);
          r7.w = dot(r18.xyzw, r20.xyzw);
          r8.w = cmp(r7.w >= r5.z);
          if (r8.w != 0) {
            r18.xyz = lightConstantsCB[r0.x].data[4].yzw;
            r18.w = lightConstantsCB[r0.x].data[5].x;
            r18.x = dot(r18.xyzw, r20.xyzw);
            r21.xyz = lightConstantsCB[r0.x].data[5].yzw;
            r21.w = lightConstantsCB[r0.x].data[6].x;
            r18.y = dot(r21.xyzw, r20.xyzw);
            r18.xy = r18.xy / r7.ww;
            r18.xy = saturate(r18.xy * float2(0.5,-0.5) + float2(0.5,0.5));
            r20.x = r18.x * lightConstantsCB[r0.x].data[8].y + lightConstantsCB[r0.x].data[8].z;
            r20.y = r18.y * lightConstantsCB[r0.x].data[8].w + lightConstantsCB[r0.x].data[9].x;
            r5.z = r5.z / r7.w;
            r5.z = max(6.10351563e-05, r5.z);
            r7.w = 0x0000ffff & (int)lightConstantsCB[r0.x].data[1].w;
            if (enableDitheredShadow != 0) {
              r18.x = -r13.x;
              r21.z = (uint)r7.w;
              r18.y = r14.x;
              r18.z = r13.x;
              r8.w = 0;
              r9.w = 0;
              while (true) {
                r11.w = cmp((int)r9.w >= 8);
                if (r11.w != 0) break;
                r22.x = dot(icb[r9.w+0].yx, r18.xy);
                r22.y = dot(icb[r9.w+0].yx, r18.yz);
                r21.xy = r22.xy * lightConstantsCB[r0.x].data[3].yy + r20.xy;
                r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r5.z).x;
                r8.w = r11.w * 0.125 + r8.w;
                r9.w = (int)r9.w + 1;
              }
            } else {
              r20.z = (uint)r7.w;
              r8.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r5.z).x;
            }
            r5.z = r8.w * r8.w;
            r5.z = r5.z * r8.w;
          } else {
            r5.z = 1;
          }
        } else {
          r5.z = 1;
        }
        r5.z = r6.w * r5.z;
        r6.w = cmp(0 < r5.z);
        if (r6.w != 0) {
          r6.w = lightConstantsCB[r0.x].data[1].z * r0.w;
          r6.w = r6.w * r2.w;
          if (4 == 0) r7.w = 0; else if (4+16 < 32) {           r7.w = (uint)lightConstantsCB[r0.x].data[1].w << (32-(4 + 16)); r7.w = (uint)r7.w >> (32-4);          } else r7.w = (uint)lightConstantsCB[r0.x].data[1].w >> 16;
          r8.w = cmp(0 < (uint)r7.w);
          r8.w = r10.x ? r8.w : 0;
          if (r8.w != 0) {
            r7.w = (int)r7.w + numLights;
            r7.w = mad((int)r7.w, 15, -15);
            r8.w = abs(r2.y) * -0.200000003 + 0.400000006;
            r9.w = cmp(r2.y < 0);
            r9.w = r3.x ? r9.w : 0;
            r8.w = r9.w ? -r8.w : r8.w;
            r18.xyz = r12.xyz * r8.www + r11.xyz;
            r20.xyz = lightConstantsCB[r7.w].data[6].yzw;
            r20.w = lightConstantsCB[r7.w].data[7].x;
            r18.w = 1;
            r8.w = dot(r20.xyzw, r18.xyzw);
            r20.xyz = lightConstantsCB[r7.w].data[7].yzw;
            r20.w = lightConstantsCB[r7.w].data[8].x;
            r9.w = dot(r20.xyzw, r18.xyzw);
            r11.w = cmp(r9.w < r8.w);
            if (r11.w == 0) {
              r20.xyz = lightConstantsCB[r7.w].data[4].yzw;
              r20.w = lightConstantsCB[r7.w].data[5].x;
              r20.x = dot(r20.xyzw, r18.xyzw);
              r21.xyz = lightConstantsCB[r7.w].data[5].yzw;
              r21.w = lightConstantsCB[r7.w].data[6].x;
              r20.y = dot(r21.xyzw, r18.xyzw);
              r18.xy = r20.xy / r9.ww;
              r18.xy = r18.xy * float2(0.5,-0.5) + float2(0.5,0.5);
              r20.x = lightConstantsCB[r7.w].data[9].w + r18.x;
              r20.y = lightConstantsCB[r7.w].data[10].x + r18.y;
              r18.xy = lightConstantsCB[r7.w].data[9].yz * r20.xy;
              r18.zw = lightConstantsCB[r7.w].data[3].yy / lightConstantsCB[r7.w].data[8].yw;
              r20.xy = float2(1,1) + -r18.zw;
              r20.xy = cmp(r18.xy >= r20.xy);
              r18.zw = cmp(r18.zw >= r18.xy);
              r18.zw = (int2)r18.zw | (int2)r20.xy;
              r12.w = (int)r18.w | (int)r18.z;
              if (r12.w == 0) {
                r18.xy = saturate(r18.xy);
                r20.x = r18.x * lightConstantsCB[r7.w].data[8].y + lightConstantsCB[r7.w].data[8].z;
                r20.y = r18.y * lightConstantsCB[r7.w].data[8].w + lightConstantsCB[r7.w].data[9].x;
                r15.w = lightConstantsCB[r7.w].data[10].z * r9.w;
                r8.w = lightConstantsCB[r7.w].data[10].y * r9.w + r8.w;
                r8.w = r8.w / r15.w;
              }
            } else {
              r12.w = -1;
            }
            r9.w = (int)r11.w | (int)r12.w;
            if (r9.w == 0) {
              r8.w = max(6.10351563e-05, r8.w);
              r9.w = 0x0000ffff & (int)lightConstantsCB[r7.w].data[1].w;
              if (enableDitheredShadow != 0) {
                r18.x = -r13.x;
                r21.z = (uint)r9.w;
                r18.y = r14.x;
                r18.z = r13.x;
                r11.w = 0;
                r12.w = 0;
                while (true) {
                  r15.w = cmp((int)r12.w >= 8);
                  if (r15.w != 0) break;
                  r22.x = dot(icb[r12.w+0].yx, r18.xy);
                  r22.y = dot(icb[r12.w+0].yx, r18.yz);
                  r21.xy = r22.xy * lightConstantsCB[r7.w].data[3].yy + r20.xy;
                  r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r8.w).x;
                  r11.w = r15.w * 0.125 + r11.w;
                  r12.w = (int)r12.w + 1;
                }
              } else {
                r20.z = (uint)r9.w;
                r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r8.w).x;
              }
              r7.w = r11.w * r11.w;
              r7.w = r7.w * r11.w;
            } else {
              r7.w = 1;
            }
            r5.z = r7.w * r5.z;
          } else {
            if (4 == 0) r0.x = 0; else if (4+20 < 32) {             r0.x = (uint)lightConstantsCB[r0.x].data[1].w << (32-(4 + 20)); r0.x = (uint)r0.x >> (32-4);            } else r0.x = (uint)lightConstantsCB[r0.x].data[1].w >> 20;
            r7.w = cmp(0 < (uint)r0.x);
            r8.w = ~(int)r10.x;
            r7.w = r7.w ? r8.w : 0;
            if (r7.w != 0) {
              r0.x = (int)r0.x + numLights;
              r0.x = mad((int)r0.x, 15, -15);
              r7.w = abs(r2.y) * -0.200000003 + 0.400000006;
              r8.w = cmp(r2.y < 0);
              r8.w = r3.x ? r8.w : 0;
              r7.w = r8.w ? -r7.w : r7.w;
              r18.xyz = r12.xyz * r7.www + r11.xyz;
              r20.xyz = lightConstantsCB[r0.x].data[6].yzw;
              r20.w = lightConstantsCB[r0.x].data[7].x;
              r18.w = 1;
              r7.w = dot(r20.xyzw, r18.xyzw);
              r20.xyz = lightConstantsCB[r0.x].data[7].yzw;
              r20.w = lightConstantsCB[r0.x].data[8].x;
              r8.w = dot(r20.xyzw, r18.xyzw);
              r9.w = cmp(r8.w < r7.w);
              if (r9.w == 0) {
                r20.xyz = lightConstantsCB[r0.x].data[4].yzw;
                r20.w = lightConstantsCB[r0.x].data[5].x;
                r20.x = dot(r20.xyzw, r18.xyzw);
                r21.xyz = lightConstantsCB[r0.x].data[5].yzw;
                r21.w = lightConstantsCB[r0.x].data[6].x;
                r20.y = dot(r21.xyzw, r18.xyzw);
                r18.xy = r20.xy / r8.ww;
                r18.xy = r18.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r20.x = lightConstantsCB[r0.x].data[9].w + r18.x;
                r20.y = lightConstantsCB[r0.x].data[10].x + r18.y;
                r18.xy = lightConstantsCB[r0.x].data[9].yz * r20.xy;
                r18.zw = lightConstantsCB[r0.x].data[3].yy / lightConstantsCB[r0.x].data[8].yw;
                r20.xy = float2(1,1) + -r18.zw;
                r20.xy = cmp(r18.xy >= r20.xy);
                r18.zw = cmp(r18.zw >= r18.xy);
                r18.zw = (int2)r18.zw | (int2)r20.xy;
                r10.x = (int)r18.w | (int)r18.z;
                if (r10.x == 0) {
                  r18.xy = saturate(r18.xy);
                  r20.x = r18.x * lightConstantsCB[r0.x].data[8].y + lightConstantsCB[r0.x].data[8].z;
                  r20.y = r18.y * lightConstantsCB[r0.x].data[8].w + lightConstantsCB[r0.x].data[9].x;
                  r11.w = lightConstantsCB[r0.x].data[10].z * r8.w;
                  r7.w = lightConstantsCB[r0.x].data[10].y * r8.w + r7.w;
                  r7.w = r7.w / r11.w;
                }
              } else {
                r10.x = -1;
              }
              r8.w = (int)r9.w | (int)r10.x;
              if (r8.w == 0) {
                r7.w = max(6.10351563e-05, r7.w);
                r8.w = 0x0000ffff & (int)lightConstantsCB[r0.x].data[1].w;
                if (enableDitheredShadow != 0) {
                  r18.x = -r13.x;
                  r21.z = (uint)r8.w;
                  r18.y = r14.x;
                  r18.z = r13.x;
                  r9.w = 0;
                  r10.x = 0;
                  while (true) {
                    r11.w = cmp((int)r10.x >= 8);
                    if (r11.w != 0) break;
                    r22.x = dot(icb[r10.x+0].yx, r18.xy);
                    r22.y = dot(icb[r10.x+0].yx, r18.yz);
                    r21.xy = r22.xy * lightConstantsCB[r0.x].data[3].yy + r20.xy;
                    r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r7.w).x;
                    r9.w = r11.w * 0.125 + r9.w;
                    r10.x = (int)r10.x + 1;
                  }
                } else {
                  r20.z = (uint)r8.w;
                  r9.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r7.w).x;
                }
                r0.x = r9.w * r9.w;
                r0.x = r0.x * r9.w;
              } else {
                r0.x = 1;
              }
              r5.z = r5.z * r0.x;
            }
          }
          r0.x = -r2.x * 0.5 + 1;
          r0.x = -r4.w * r0.x + 1;
          r0.x = r0.x * r0.x;
          r0.x = -r0.x * 0.620000005 + 0.620000005;
          r0.x = r0.x + -r4.w;
          r0.x = r1.z * r0.x + r4.w;
          r0.x = r0.x * r5.z;
          r18.xyz = r0.xxx * r19.xyz;
          r1.z = cmp(0 < r2.y);
          r2.xyz = r13.yzw * r2.zzz + r18.xyz;
          r13.xyz = r15.xyz * r1.www + r10.yzw;
          r1.w = dot(r13.xyz, r13.xyz);
          r1.w = rsqrt(r1.w);
          r13.xyz = r13.xyz * r1.www;
          r1.w = dot(r13.xyz, r10.yzw);
          r4.w = dot(r12.xyz, r13.xyz);
          r0.w = abs(r4.w) * r0.w + -abs(r4.w);
          r0.w = abs(r4.w) * r0.w + 1;
          r0.y = r2.w * r0.y + r0.z;
          r0.z = r0.w * r0.w;
          r0.y = r0.z * r0.y;
          r0.y = rcp(r0.y);
          r0.y = r0.y * r6.w;
          r0.y = r5.z * r0.y;
          r0.y = 0.25 * r0.y;
          r10.xyz = r0.yyy * r19.xyz + r14.yzw;
          r0.z = saturate(1 + -r1.w);
          r0.w = r0.z * r0.z;
          r0.w = r0.w * r0.w;
          r0.z = r0.z * r0.w;
          r0.y = r0.y * r0.z;
          r0.yzw = r0.yyy * r19.xyz + r17.xyz;
          r12.xyz = r0.xxx * r19.xyz + r16.xyz;
          r12.xyz = r3.xxx ? r12.xyz : 0;
          r3.yzw = r1.zzz ? r2.xyz : r3.yzw;
          r16.xyz = r1.zzz ? r16.xyz : r12.xyz;
          r17.xyz = r1.zzz ? r0.yzw : r17.xyz;
          r14.yzw = r1.zzz ? r10.xyz : r14.yzw;
        }
      }
    }
    break;
    default :
    break;
  }
  r0.xyz = r5.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r1.z = (uint)r0.y;
  r2.xyz = r6.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r2.x;
  r1.w = cmp((int)r1.z == (int)r1.w);
  r2.xy = r1.ww ? r2.yz : float2(-1,0);
  r5.xyz = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r5.x;
  r1.w = cmp((int)r1.z == (int)r1.w);
  r2.zw = r1.ww ? r5.yz : float2(-1,0);
  r5.xyz = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r5.x;
  r1.w = cmp((int)r1.z == (int)r1.w);
  r5.xy = r1.ww ? r5.yz : float2(-1,0);
  r6.xyz = r9.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r6.x;
  r1.z = cmp((int)r1.z == (int)r1.w);
  r1.zw = r1.zz ? r6.yz : float2(-1,0);
  r6.xy = r2.xz;
  r6.z = r5.x;
  r6.w = r1.z;
  r6.xyzw = r6.xyzw + -r0.xxxx;
  r6.xyzw = cmp(abs(r6.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r6.xyzw = r6.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r1.z = r6.x + r6.y;
  r1.z = r1.z + r6.z;
  r1.z = r1.z + r6.w;
  r2.x = r6.y * r2.w;
  r2.x = r6.x * r2.y + r2.x;
  r2.x = r6.z * r5.y + r2.x;
  r1.w = r6.w * r1.w + r2.x;
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
  r0.xyz = r3.yzw * r4.xyz;
  r0.xyz = r16.xyz * r2.xyz + r0.xyz;
  r5.xyz = float3(0.959999979,0.959999979,0.959999979) * r17.xyz;
  r5.xyz = r14.yzw * float3(0.0399999991,0.0399999991,0.0399999991) + r5.xyz;
  r0.xyz = r5.xyz + r0.xyz;
  r5.xyz = float3(1,1,1) + -r2.xyz;
  r5.xyz = r17.xyz * r5.xyz;
  r2.xyz = r14.yzw * r2.xyz + r5.xyz;
  r2.xyz = r3.yzw * r4.xyz + r2.xyz;
  r0.xyz = r3.xxx ? r0.xyz : r2.xyz;
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