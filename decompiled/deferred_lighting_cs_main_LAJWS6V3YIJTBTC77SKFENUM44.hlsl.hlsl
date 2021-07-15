// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:23:37 2021

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
  r0.x = mad(permuteStride, 60, (int)vThreadGroupID.x);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=8)(mixed,mixed,mixed,mixed) r0.xy, r0.x, l(0), t25.xyxx
r0.x = samplerLinear[]..swiz;
r0.y = samplerLinear[]..swiz;
  r0.xz = (int2)r0.xy & int2(4095,4095);
  r1.xy = mad((int2)r0.xz, int2(8,8), (int2)vThreadIDInGroup.xy);
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
  r11.z = 1;
  r11.xyz = r11.xyz * r10.yyy;
  r12.xyz = inverseViewMatrix._m10_m11_m12 * r11.yyy;
  r11.xyw = r11.xxx * inverseViewMatrix._m00_m01_m02 + r12.xyz;
  r11.xyz = r11.zzz * inverseViewMatrix._m20_m21_m22 + r11.xyw;
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
  r14.xyz = float3(1,-2,1) * r13.xyz;
  r12.xyz = float3(0.408248305,0.707106769,0.577350259) * r12.xyw;
  r2.xyw = r12.yyy * r2.xyw;
  r2.xyw = r14.xyz * r12.xxx + r2.xyw;
  r12.xyz = r13.xyz * r12.zzz + r2.xyw;
  r0.w = r3.x ? -0.5 : -0.00146627566;
  r0.w = r2.z + r0.w;
  r2.y = saturate(2.00982332 * r0.w);
  r0.w = dot(-r11.xyz, -r11.xyz);
  r0.w = rsqrt(r0.w);
  r13.xyz = -r11.xyz * r0.www;
  r0.w = dot(r1.wz, float2(0.0671105608,0.00583714992));
  r0.w = frac(r0.w);
  r0.w = 52.9829178 * r0.w;
  r0.w = frac(r0.w);
  r0.w = r0.w * 6.28318548 + gameTick.w;
  sincos(r0.w, r3.x, r14.x);
  r0.w = dot(r1.zw, float2(0.0671105608,0.00583714992));
  r0.w = frac(r0.w);
  r0.w = 52.9829178 * r0.w;
  r0.w = frac(r0.w);
  r0.w = r0.w * 6.28318548 + gameTick.w;
  sincos(r0.w, r15.x, r16.x);
  r2.x = saturate(dot(r12.xyz, r13.xyz));
  r0.w = dot(-r13.xyz, r12.xyz);
  r0.w = r0.w + r0.w;
  r17.xyz = r12.xyz * -r0.www + -r13.xyz;
  r0.w = 17 * r2.y;
  r0.w = exp2(r0.w);
  r0.w = 2 + r0.w;
  r0.w = 2 / r0.w;
  r1.z = sqrt(r0.w);
  r2.zw = renderTargetSize.zw * r3.zw;
  r18.xyzw = gSSAOTexture.Gather(samplerLinearClamp_s, r2.zw).xyzw;
  r19.xyzw = gSSAODepthTexture.Gather(samplerLinearClamp_s, r2.zw).xyzw;
  r2.zw = float2(0.5,0.5) * r3.zw;
  r2.zw = frac(r2.zw);
  r3.zw = float2(1,1) + -r2.wz;
  r20.y = r3.w * r3.z;
  r20.xz = r3.zw * r2.zw;
  r20.w = r2.z * r2.w;
  r1.w = dot(r18.xyzw, r20.xyzw);
  r19.xyzw = r19.xyzw + -r10.yyyy;
  r2.z = min(abs(r19.z), abs(r19.w));
  r2.z = min(abs(r19.y), r2.z);
  r2.z = min(abs(r19.x), r2.z);
  r2.w = max(abs(r19.z), abs(r19.w));
  r2.w = max(abs(r19.y), r2.w);
  r2.w = max(abs(r19.x), r2.w);
  r15.yzw = cmp(r2.zzz == abs(r19.yzw));
  r2.z = r15.y ? r18.y : r18.x;
  r2.z = r15.z ? r18.z : r2.z;
  r2.z = r15.w ? r18.w : r2.z;
  r3.z = 0.00999999978 * r10.y;
  r2.w = cmp(r3.z < r2.w);
  r1.w = r2.w ? r2.z : r1.w;
  r2.z = r5.z * r1.w;
  r2.w = 1 + -r2.y;
  r3.z = 5 * r2.w;
  r3.w = r2.w * 5 + -2.5;
  r3.w = 0.400000006 * r3.w;
  r3.w = max(0, r3.w);
  r3.w = 100 * r3.w;
  r10.yz = -r2.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r4.w = exp2(r10.y);
  r4.w = r4.w * r2.x;
  r4.w = 9.1368103 * r4.w;
  r6.w = r3.z * r2.w;
  r6.w = -r6.w * 2.0159049 + r10.z;
  r6.w = exp2(r6.w);
  r6.w = r6.w * r2.x;
  r6.w = 9.70808983 * r6.w;
  r4.w = max(r6.w, r4.w);
  r4.w = max(1.26815999, r4.w);
  r6.w = numRefProbes + -numOverrideProbes;
  r7.w = (uint)r0.y >> 24;
  if (10 == 0) r0.y = 0; else if (10+12 < 32) {   r0.y = (uint)r0.y << (32-(10 + 12)); r0.y = (uint)r0.y >> (32-10);  } else r0.y = (uint)r0.y >> 12;
  r18.yz = float2(0,1);
  r19.xy = float2(0,0);
  r20.x = 1;
  r21.xy = float2(0,0);
  r22.xy = float2(0,0);
  r23.xyzw = float4(0,0,0,0);
  r24.yzw = float3(0,0,0);
  r8.w = 0;
  while (true) {
    r9.w = cmp((int)r8.w == 2);
    if (r9.w != 0) break;
    r9.w = r8.w ? r0.y : r7.w;
    r10.y = cmp((uint)r9.w >= (uint)r6.w);
    r10.z = cmp((uint)r9.w < numRefProbes);
    r10.y = r10.z ? r10.y : 0;
    if (r10.y != 0) {
      r9.w = (int)r9.w * 14;
      r10.yzw = -refProbeConstantsCB[r9.w].data[0].xyz + r11.xyz;
      r13.w = 0x0000ffff & (int)refProbeConstantsCB[r9.w].data[7].z;
      if (6 == 0) r14.w = 0; else if (6+25 < 32) {       r14.w = (uint)refProbeConstantsCB[r9.w].data[7].z << (32-(6 + 25)); r14.w = (uint)r14.w >> (32-6);      } else r14.w = (uint)refProbeConstantsCB[r9.w].data[7].z >> 25;
      r15.y = (int)r13.w * 6;
      r15.z = dot(refProbeAttenuationConstantsCB[r15.y].data[0].xyz, r10.yzw);
      r15.z = saturate(refProbeAttenuationConstantsCB[r15.y].data[0].w + r15.z);
      r15.w = dot(refProbeAttenuationConstantsCB[r15.y].data[1].xyz, r10.yzw);
      r15.w = saturate(refProbeAttenuationConstantsCB[r15.y].data[1].w + r15.w);
      r15.z = r15.z * r15.w;
      r15.w = dot(refProbeAttenuationConstantsCB[r15.y].data[2].xyz, r10.yzw);
      r15.w = saturate(refProbeAttenuationConstantsCB[r15.y].data[2].w + r15.w);
      r15.z = r15.z * r15.w;
      r15.w = dot(refProbeAttenuationConstantsCB[r15.y].data[3].xyz, r10.yzw);
      r15.w = saturate(refProbeAttenuationConstantsCB[r15.y].data[3].w + r15.w);
      r15.z = r15.z * r15.w;
      r15.w = dot(refProbeAttenuationConstantsCB[r15.y].data[4].xyz, r10.yzw);
      r15.w = saturate(refProbeAttenuationConstantsCB[r15.y].data[4].w + r15.w);
      r15.z = r15.z * r15.w;
      r15.w = dot(refProbeAttenuationConstantsCB[r15.y].data[5].xyz, r10.yzw);
      r15.y = saturate(refProbeAttenuationConstantsCB[r15.y].data[5].w + r15.w);
      r18.x = r15.z * r15.y;
      r15.y = 1 & (int)refProbeConstantsCB[r9.w].data[6].x;
      r15.yz = r15.yy ? r18.xy : r18.zx;
      r15.w = refProbeConstantsCB[r9.w].data[6].x;
      r25.xy = r15.yz;
      r16.y = 1;
      while (true) {
        r16.z = cmp((int)r16.y >= (int)r14.w);
        if (r16.z != 0) break;
        r16.z = (int)r13.w + (int)r16.y;
        r16.z = (int)r16.z * 6;
        r16.w = dot(refProbeAttenuationConstantsCB[r16.z].data[0].xyz, r10.yzw);
        r16.w = saturate(refProbeAttenuationConstantsCB[r16.z].data[0].w + r16.w);
        r16.w = r25.x * r16.w;
        r18.x = dot(refProbeAttenuationConstantsCB[r16.z].data[1].xyz, r10.yzw);
        r18.x = saturate(refProbeAttenuationConstantsCB[r16.z].data[1].w + r18.x);
        r16.w = r18.x * r16.w;
        r18.x = dot(refProbeAttenuationConstantsCB[r16.z].data[2].xyz, r10.yzw);
        r18.x = saturate(refProbeAttenuationConstantsCB[r16.z].data[2].w + r18.x);
        r16.w = r18.x * r16.w;
        r18.x = dot(refProbeAttenuationConstantsCB[r16.z].data[3].xyz, r10.yzw);
        r18.x = saturate(refProbeAttenuationConstantsCB[r16.z].data[3].w + r18.x);
        r16.w = r18.x * r16.w;
        r18.x = dot(refProbeAttenuationConstantsCB[r16.z].data[4].xyz, r10.yzw);
        r18.x = saturate(refProbeAttenuationConstantsCB[r16.z].data[4].w + r18.x);
        r16.w = r18.x * r16.w;
        r18.x = dot(refProbeAttenuationConstantsCB[r16.z].data[5].xyz, r10.yzw);
        r16.z = saturate(refProbeAttenuationConstantsCB[r16.z].data[5].w + r18.x);
        r25.x = r16.w * r16.z;
        r18.x = (uint)r15.w >> 2;
        if (1 == 0) r18.w = 0; else if (1+2 < 32) {         r18.w = (uint)r15.w << (32-(1 + 2)); r18.w = (uint)r18.w >> (32-1);        } else r18.w = (uint)r15.w >> 2;
        r19.w = (int)r18.x & 2;
        r20.z = max(r25.y, r25.x);
        r16.z = -r16.w * r16.z + 1;
        r16.z = r25.y * r16.z;
        r20.y = r19.w ? r16.z : r20.z;
        r25.xy = r18.ww ? r25.xy : r20.xy;
        r16.y = (int)r16.y + 1;
        r15.w = r18.x;
      }
      r25.y = saturate(r25.y);
      r13.w = refProbeConstantsCB[r9.w].data[6].y * r25.y;
      r14.w = cmp(0 < r13.w);
      if (r14.w != 0) {
        r24.w = r25.y * refProbeConstantsCB[r9.w].data[6].y + r24.w;
        r13.w = refProbeConstantsCB[r9.w].data[7].y * r13.w;
        r26.x = refProbeConstantsCB[r9.w].data[7].w;
        r26.yz = refProbeConstantsCB[r9.w].data[8].xy;
        r14.w = dot(r17.xyz, r26.xyz);
        r15.y = dot(r10.yzw, r26.xyz);
        r15.y = -refProbeConstantsCB[r9.w].data[8].z + r15.y;
        r15.z = cmp(r15.y >= 0);
        r15.y = max(abs(r15.y), r3.w);
        r15.y = r15.z ? r15.y : -r15.y;
        r14.w = max(1.00000001e-07, -r14.w);
        r14.w = r15.y / r14.w;
        r14.w = min(131072, abs(r14.w));
        r26.x = refProbeConstantsCB[r9.w].data[8].w;
        r26.yz = refProbeConstantsCB[r9.w].data[9].xy;
        r15.y = dot(r17.xyz, r26.xyz);
        r15.z = dot(r10.yzw, r26.xyz);
        r15.z = -refProbeConstantsCB[r9.w].data[9].z + r15.z;
        r15.w = cmp(r15.z >= 0);
        r15.z = max(abs(r15.z), r3.w);
        r15.z = r15.w ? r15.z : -r15.z;
        r15.y = max(1.00000001e-07, -r15.y);
        r15.y = r15.z / r15.y;
        r14.w = min(abs(r15.y), r14.w);
        r26.x = refProbeConstantsCB[r9.w].data[9].w;
        r26.yz = refProbeConstantsCB[r9.w].data[10].xy;
        r15.y = dot(r17.xyz, r26.xyz);
        r15.z = dot(r10.yzw, r26.xyz);
        r15.z = -refProbeConstantsCB[r9.w].data[10].z + r15.z;
        r15.w = cmp(r15.z >= 0);
        r15.z = max(abs(r15.z), r3.w);
        r15.z = r15.w ? r15.z : -r15.z;
        r15.y = max(1.00000001e-07, -r15.y);
        r15.y = r15.z / r15.y;
        r14.w = min(abs(r15.y), r14.w);
        r26.x = refProbeConstantsCB[r9.w].data[10].w;
        r26.yz = refProbeConstantsCB[r9.w].data[11].xy;
        r15.y = dot(r17.xyz, r26.xyz);
        r15.z = dot(r10.yzw, r26.xyz);
        r15.z = -refProbeConstantsCB[r9.w].data[11].z + r15.z;
        r15.w = cmp(r15.z >= 0);
        r15.z = max(abs(r15.z), r3.w);
        r15.z = r15.w ? r15.z : -r15.z;
        r15.y = max(1.00000001e-07, -r15.y);
        r15.y = r15.z / r15.y;
        r14.w = min(abs(r15.y), r14.w);
        r26.x = refProbeConstantsCB[r9.w].data[11].w;
        r26.yz = refProbeConstantsCB[r9.w].data[12].xy;
        r15.y = dot(r17.xyz, r26.xyz);
        r15.z = dot(r10.yzw, r26.xyz);
        r15.z = -refProbeConstantsCB[r9.w].data[12].z + r15.z;
        r15.w = cmp(r15.z >= 0);
        r15.z = max(abs(r15.z), r3.w);
        r15.z = r15.w ? r15.z : -r15.z;
        r15.y = max(1.00000001e-07, -r15.y);
        r15.y = r15.z / r15.y;
        r14.w = min(abs(r15.y), r14.w);
        r26.x = refProbeConstantsCB[r9.w].data[12].w;
        r26.yz = refProbeConstantsCB[r9.w].data[13].xy;
        r15.y = dot(r17.xyz, r26.xyz);
        r15.z = dot(r10.yzw, r26.xyz);
        r15.z = -refProbeConstantsCB[r9.w].data[13].z + r15.z;
        r15.w = cmp(r15.z >= 0);
        r15.z = max(abs(r15.z), r3.w);
        r15.z = r15.w ? r15.z : -r15.z;
        r15.y = max(1.00000001e-07, -r15.y);
        r15.y = r15.z / r15.y;
        r14.w = min(abs(r15.y), r14.w);
        r26.x = refProbeConstantsCB[r9.w].data[3].w + r10.y;
        r26.yz = refProbeConstantsCB[r9.w].data[4].xy + r10.zw;
        r15.yzw = r17.xyz * r14.www + r26.xyz;
        r16.y = dot(r15.yzw, r15.yzw);
        r16.y = sqrt(r16.y);
        r14.w = r14.w / r16.y;
        r14.w = r14.w + r14.w;
        r14.w = sqrt(r14.w);
        r14.w = r2.w * 5 + r14.w;
        r14.w = -0.844799995 + r14.w;
        r26.x = refProbeConstantsCB[r9.w].data[0].w;
        r26.y = refProbeConstantsCB[r9.w].data[1].z;
        r26.z = refProbeConstantsCB[r9.w].data[2].y;
        r27.x = dot(r15.yzw, r26.xyz);
        r28.xy = refProbeConstantsCB[r9.w].data[1].xw;
        r28.z = refProbeConstantsCB[r9.w].data[2].z;
        r27.y = dot(r15.yzw, r28.xyz);
        r29.x = refProbeConstantsCB[r9.w].data[1].y;
        r29.yz = refProbeConstantsCB[r9.w].data[2].xw;
        r27.z = dot(r15.yzw, r29.xyz);
        if (9 == 0) r15.y = 0; else if (9+16 < 32) {         r15.y = (uint)refProbeConstantsCB[r9.w].data[7].z << (32-(9 + 16)); r15.y = (uint)r15.y >> (32-9);        } else r15.y = (uint)refProbeConstantsCB[r9.w].data[7].z >> 16;
        r27.w = (uint)r15.y;
        r15.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r27.xyzw, r14.w).xyz;
        r30.x = dot(r10.yzw, r26.xyz);
        r30.y = dot(r10.yzw, r28.xyz);
        r30.z = dot(r10.yzw, r29.xyz);
        r10.yzw = saturate(r30.xyz * refProbeConstantsCB[r9.w].data[3].xyz + float3(0.5,0.5,0.5));
        r30.xy = refProbeConstantsCB[r9.w].data[4].zw * r10.yz;
        r30.z = refProbeConstantsCB[r9.w].data[5].x * r10.w;
        r10.yzw = refProbeConstantsCB[r9.w].data[5].yzw + r30.xyz;
        r27.x = dot(r12.xyz, r26.xyz);
        r27.y = dot(r12.xyz, r28.xyz);
        r27.z = dot(r12.xyz, r29.xyz);
        r16.yzw = cmp(float3(0,0,0) < r27.xyz);
        r19.z = r16.y ? 0 : 0.5;
        r20.yzw = r19.xyz + r10.yzw;
        r20.yzw = gProbeXArray.SampleLevel(samplerLinearClamp_s, r20.yzw, 0).xyz;
        r25.xzw = r27.xyz * r27.xyz;
        r25.xzw = r25.xzw * r13.www;
        r21.z = r16.z ? 0 : 0.5;
        r26.xyz = r21.xyz + r10.yzw;
        r26.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
        r26.xyz = r26.xyz * r25.zzz;
        r20.yzw = r20.yzw * r25.xxx + r26.xyz;
        r22.z = r16.w ? 0 : 0.5;
        r10.yzw = r22.xyz + r10.yzw;
        r10.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r10.yzw, 0).xyz;
        r10.yzw = r10.yzw * r25.www + r20.yzw;
        r16.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r27.xyzw, 6).xyz;
        r20.yzw = r16.yzw * r10.yzw;
        r9.w = dot(r20.yzw, float3(0.212599993,0.715200007,0.0722000003));
        r23.xyz = r10.yzw * r16.yzw + r23.xyz;
        r10.y = r9.w * r4.w;
        r15.yzw = r15.yzw * r13.www;
        r10.z = dot(r15.yzw, float3(0.212599993,0.715200007,0.0722000003));
        r9.w = r4.w * r9.w + r10.z;
        r9.w = r10.y / r9.w;
        r26.x = r23.w;
        r26.yz = r24.yz;
        r24.xyz = r15.yzw * r9.www + r26.xyz;
        r23.w = r24.x;
      }
    }
    r8.w = (int)r8.w + 1;
  }
  r8.w = cmp(r24.w < 1);
  if (r8.w != 0) {
    r18.yz = float2(0,1);
    r19.xy = float2(0,0);
    r20.x = 1;
    r21.xy = float2(0,0);
    r22.xy = float2(0,0);
    r25.x = r23.w;
    r25.yzw = r24.yzw;
    r10.yzw = r23.xyz;
    r8.w = 0;
    while (true) {
      r9.w = cmp((int)r8.w == 2);
      if (r9.w != 0) break;
      r9.w = r8.w ? r0.y : r7.w;
      r13.w = cmp((uint)r9.w < (uint)r6.w);
      if (r13.w != 0) {
        r9.w = (int)r9.w * 14;
        r15.yzw = -refProbeConstantsCB[r9.w].data[0].xyz + r11.xyz;
        r13.w = 0x0000ffff & (int)refProbeConstantsCB[r9.w].data[7].z;
        if (6 == 0) r14.w = 0; else if (6+25 < 32) {         r14.w = (uint)refProbeConstantsCB[r9.w].data[7].z << (32-(6 + 25)); r14.w = (uint)r14.w >> (32-6);        } else r14.w = (uint)refProbeConstantsCB[r9.w].data[7].z >> 25;
        r16.y = (int)r13.w * 6;
        r16.z = dot(refProbeAttenuationConstantsCB[r16.y].data[0].xyz, r15.yzw);
        r16.z = saturate(refProbeAttenuationConstantsCB[r16.y].data[0].w + r16.z);
        r16.w = dot(refProbeAttenuationConstantsCB[r16.y].data[1].xyz, r15.yzw);
        r16.w = saturate(refProbeAttenuationConstantsCB[r16.y].data[1].w + r16.w);
        r16.z = r16.z * r16.w;
        r16.w = dot(refProbeAttenuationConstantsCB[r16.y].data[2].xyz, r15.yzw);
        r16.w = saturate(refProbeAttenuationConstantsCB[r16.y].data[2].w + r16.w);
        r16.z = r16.z * r16.w;
        r16.w = dot(refProbeAttenuationConstantsCB[r16.y].data[3].xyz, r15.yzw);
        r16.w = saturate(refProbeAttenuationConstantsCB[r16.y].data[3].w + r16.w);
        r16.z = r16.z * r16.w;
        r16.w = dot(refProbeAttenuationConstantsCB[r16.y].data[4].xyz, r15.yzw);
        r16.w = saturate(refProbeAttenuationConstantsCB[r16.y].data[4].w + r16.w);
        r16.z = r16.z * r16.w;
        r16.w = dot(refProbeAttenuationConstantsCB[r16.y].data[5].xyz, r15.yzw);
        r16.y = saturate(refProbeAttenuationConstantsCB[r16.y].data[5].w + r16.w);
        r18.x = r16.z * r16.y;
        r16.y = 1 & (int)refProbeConstantsCB[r9.w].data[6].x;
        r16.yz = r16.yy ? r18.xy : r18.zx;
        r16.w = refProbeConstantsCB[r9.w].data[6].x;
        r26.xy = r16.yz;
        r18.x = 1;
        while (true) {
          r18.w = cmp((int)r18.x >= (int)r14.w);
          if (r18.w != 0) break;
          r18.w = (int)r13.w + (int)r18.x;
          r18.w = (int)r18.w * 6;
          r19.w = dot(refProbeAttenuationConstantsCB[r18.w].data[0].xyz, r15.yzw);
          r19.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[0].w + r19.w);
          r19.w = r26.x * r19.w;
          r20.z = dot(refProbeAttenuationConstantsCB[r18.w].data[1].xyz, r15.yzw);
          r20.z = saturate(refProbeAttenuationConstantsCB[r18.w].data[1].w + r20.z);
          r19.w = r20.z * r19.w;
          r20.z = dot(refProbeAttenuationConstantsCB[r18.w].data[2].xyz, r15.yzw);
          r20.z = saturate(refProbeAttenuationConstantsCB[r18.w].data[2].w + r20.z);
          r19.w = r20.z * r19.w;
          r20.z = dot(refProbeAttenuationConstantsCB[r18.w].data[3].xyz, r15.yzw);
          r20.z = saturate(refProbeAttenuationConstantsCB[r18.w].data[3].w + r20.z);
          r19.w = r20.z * r19.w;
          r20.z = dot(refProbeAttenuationConstantsCB[r18.w].data[4].xyz, r15.yzw);
          r20.z = saturate(refProbeAttenuationConstantsCB[r18.w].data[4].w + r20.z);
          r19.w = r20.z * r19.w;
          r20.z = dot(refProbeAttenuationConstantsCB[r18.w].data[5].xyz, r15.yzw);
          r18.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[5].w + r20.z);
          r26.x = r19.w * r18.w;
          r20.z = (uint)r16.w >> 2;
          if (1 == 0) r20.w = 0; else if (1+2 < 32) {           r20.w = (uint)r16.w << (32-(1 + 2)); r20.w = (uint)r20.w >> (32-1);          } else r20.w = (uint)r16.w >> 2;
          r21.w = (int)r20.z & 2;
          r22.w = max(r26.y, r26.x);
          r18.w = -r19.w * r18.w + 1;
          r18.w = r26.y * r18.w;
          r20.y = r21.w ? r18.w : r22.w;
          r26.xy = r20.ww ? r26.xy : r20.xy;
          r18.x = (int)r18.x + 1;
          r16.w = r20.z;
        }
        r13.w = saturate(r26.y + -r24.w);
        r14.w = refProbeConstantsCB[r9.w].data[6].y * r13.w;
        r16.y = cmp(0 < r14.w);
        if (r16.y != 0) {
          r25.w = r13.w * refProbeConstantsCB[r9.w].data[6].y + r25.w;
          r13.w = refProbeConstantsCB[r9.w].data[7].y * r14.w;
          r27.x = refProbeConstantsCB[r9.w].data[7].w;
          r27.yz = refProbeConstantsCB[r9.w].data[8].xy;
          r14.w = dot(r17.xyz, r27.xyz);
          r16.y = dot(r15.yzw, r27.xyz);
          r16.y = -refProbeConstantsCB[r9.w].data[8].z + r16.y;
          r16.z = cmp(r16.y >= 0);
          r16.y = max(abs(r16.y), r3.w);
          r16.y = r16.z ? r16.y : -r16.y;
          r14.w = max(1.00000001e-07, -r14.w);
          r14.w = r16.y / r14.w;
          r14.w = min(131072, abs(r14.w));
          r27.x = refProbeConstantsCB[r9.w].data[8].w;
          r27.yz = refProbeConstantsCB[r9.w].data[9].xy;
          r16.y = dot(r17.xyz, r27.xyz);
          r16.z = dot(r15.yzw, r27.xyz);
          r16.z = -refProbeConstantsCB[r9.w].data[9].z + r16.z;
          r16.w = cmp(r16.z >= 0);
          r16.z = max(abs(r16.z), r3.w);
          r16.z = r16.w ? r16.z : -r16.z;
          r16.y = max(1.00000001e-07, -r16.y);
          r16.y = r16.z / r16.y;
          r14.w = min(abs(r16.y), r14.w);
          r27.x = refProbeConstantsCB[r9.w].data[9].w;
          r27.yz = refProbeConstantsCB[r9.w].data[10].xy;
          r16.y = dot(r17.xyz, r27.xyz);
          r16.z = dot(r15.yzw, r27.xyz);
          r16.z = -refProbeConstantsCB[r9.w].data[10].z + r16.z;
          r16.w = cmp(r16.z >= 0);
          r16.z = max(abs(r16.z), r3.w);
          r16.z = r16.w ? r16.z : -r16.z;
          r16.y = max(1.00000001e-07, -r16.y);
          r16.y = r16.z / r16.y;
          r14.w = min(abs(r16.y), r14.w);
          r27.x = refProbeConstantsCB[r9.w].data[10].w;
          r27.yz = refProbeConstantsCB[r9.w].data[11].xy;
          r16.y = dot(r17.xyz, r27.xyz);
          r16.z = dot(r15.yzw, r27.xyz);
          r16.z = -refProbeConstantsCB[r9.w].data[11].z + r16.z;
          r16.w = cmp(r16.z >= 0);
          r16.z = max(abs(r16.z), r3.w);
          r16.z = r16.w ? r16.z : -r16.z;
          r16.y = max(1.00000001e-07, -r16.y);
          r16.y = r16.z / r16.y;
          r14.w = min(abs(r16.y), r14.w);
          r27.x = refProbeConstantsCB[r9.w].data[11].w;
          r27.yz = refProbeConstantsCB[r9.w].data[12].xy;
          r16.y = dot(r17.xyz, r27.xyz);
          r16.z = dot(r15.yzw, r27.xyz);
          r16.z = -refProbeConstantsCB[r9.w].data[12].z + r16.z;
          r16.w = cmp(r16.z >= 0);
          r16.z = max(abs(r16.z), r3.w);
          r16.z = r16.w ? r16.z : -r16.z;
          r16.y = max(1.00000001e-07, -r16.y);
          r16.y = r16.z / r16.y;
          r14.w = min(abs(r16.y), r14.w);
          r27.x = refProbeConstantsCB[r9.w].data[12].w;
          r27.yz = refProbeConstantsCB[r9.w].data[13].xy;
          r16.y = dot(r17.xyz, r27.xyz);
          r16.z = dot(r15.yzw, r27.xyz);
          r16.z = -refProbeConstantsCB[r9.w].data[13].z + r16.z;
          r16.w = cmp(r16.z >= 0);
          r16.z = max(abs(r16.z), r3.w);
          r16.z = r16.w ? r16.z : -r16.z;
          r16.y = max(1.00000001e-07, -r16.y);
          r16.y = r16.z / r16.y;
          r14.w = min(abs(r16.y), r14.w);
          r27.x = refProbeConstantsCB[r9.w].data[3].w + r15.y;
          r27.yz = refProbeConstantsCB[r9.w].data[4].xy + r15.zw;
          r16.yzw = r17.xyz * r14.www + r27.xyz;
          r18.x = dot(r16.yzw, r16.yzw);
          r18.x = sqrt(r18.x);
          r14.w = r14.w / r18.x;
          r14.w = r14.w + r14.w;
          r14.w = sqrt(r14.w);
          r14.w = r2.w * 5 + r14.w;
          r14.w = -0.844799995 + r14.w;
          r27.x = refProbeConstantsCB[r9.w].data[0].w;
          r27.y = refProbeConstantsCB[r9.w].data[1].z;
          r27.z = refProbeConstantsCB[r9.w].data[2].y;
          r28.x = dot(r16.yzw, r27.xyz);
          r29.xy = refProbeConstantsCB[r9.w].data[1].xw;
          r29.z = refProbeConstantsCB[r9.w].data[2].z;
          r28.y = dot(r16.yzw, r29.xyz);
          r30.x = refProbeConstantsCB[r9.w].data[1].y;
          r30.yz = refProbeConstantsCB[r9.w].data[2].xw;
          r28.z = dot(r16.yzw, r30.xyz);
          if (9 == 0) r16.y = 0; else if (9+16 < 32) {           r16.y = (uint)refProbeConstantsCB[r9.w].data[7].z << (32-(9 + 16)); r16.y = (uint)r16.y >> (32-9);          } else r16.y = (uint)refProbeConstantsCB[r9.w].data[7].z >> 16;
          r28.w = (uint)r16.y;
          r16.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r28.xyzw, r14.w).xyz;
          r31.x = dot(r15.yzw, r27.xyz);
          r31.y = dot(r15.yzw, r29.xyz);
          r31.z = dot(r15.yzw, r30.xyz);
          r15.yzw = saturate(r31.xyz * refProbeConstantsCB[r9.w].data[3].xyz + float3(0.5,0.5,0.5));
          r31.xy = refProbeConstantsCB[r9.w].data[4].zw * r15.yz;
          r31.z = refProbeConstantsCB[r9.w].data[5].x * r15.w;
          r15.yzw = refProbeConstantsCB[r9.w].data[5].yzw + r31.xyz;
          r28.x = dot(r12.xyz, r27.xyz);
          r28.y = dot(r12.xyz, r29.xyz);
          r28.z = dot(r12.xyz, r30.xyz);
          r20.yzw = cmp(float3(0,0,0) < r28.xyz);
          r19.z = r20.y ? 0 : 0.5;
          r26.xzw = r19.xyz + r15.yzw;
          r26.xzw = gProbeXArray.SampleLevel(samplerLinearClamp_s, r26.xzw, 0).xyz;
          r27.xyz = r28.xyz * r28.xyz;
          r27.xyz = r27.xyz * r13.www;
          r21.z = r20.z ? 0 : 0.5;
          r29.xyz = r21.xyz + r15.yzw;
          r29.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r29.xyz, 0).xyz;
          r29.xyz = r29.xyz * r27.yyy;
          r26.xzw = r26.xzw * r27.xxx + r29.xyz;
          r22.z = r20.w ? 0 : 0.5;
          r15.yzw = r22.xyz + r15.yzw;
          r15.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r15.yzw, 0).xyz;
          r15.yzw = r15.yzw * r27.zzz + r26.xzw;
          r20.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r28.xyzw, 6).xyz;
          r26.xzw = r20.yzw * r15.yzw;
          r9.w = dot(r26.xzw, float3(0.212599993,0.715200007,0.0722000003));
          r10.yzw = r15.yzw * r20.yzw + r10.yzw;
          r14.w = r9.w * r4.w;
          r15.yzw = r16.yzw * r13.www;
          r13.w = dot(r15.yzw, float3(0.212599993,0.715200007,0.0722000003));
          r9.w = r4.w * r9.w + r13.w;
          r9.w = r14.w / r9.w;
          r25.xyz = r15.yzw * r9.www + r25.xyz;
        }
      }
      r8.w = (int)r8.w + 1;
    }
    r24.xyzw = r25.zxyw;
    r23.xyz = r10.yzw;
    r24.xyzw = r24.yzxw;
  } else {
    r24.x = r23.w;
  }
  r0.y = max(1, r24.w);
  r0.y = rcp(r0.y);
  r24.w = saturate(r24.w);
  r10.yzw = r23.xyz * r0.yyy;
  r15.yzw = r24.xyz * r0.yyy;
  r2.w = cmp(r24.w < 0.99000001);
  if (r2.w != 0) {
    r2.w = 1 + -r24.w;
    r3.w = sunConstants.globalProbeExposure * r2.w;
    r16.yzw = -globalProbeConstants.data[0].xyz + r11.xyz;
    r18.x = globalProbeConstants.data[0].w * r16.y;
    r18.yz = globalProbeConstants.data[1].xy * r16.zw;
    r16.yzw = saturate(float3(0.5,0.5,0.5) + r18.xyz);
    r18.xy = globalProbeConstants.data[1].zw * r16.yz;
    r18.z = globalProbeConstants.data[2].x * r16.w;
    r16.yzw = globalProbeConstants.data[2].yzw + r18.xyz;
    r18.xyz = cmp(float3(0,0,0) < r12.xyz);
    r18.xyz = r18.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r18.w = 0;
    r19.xyz = r18.wwx + r16.yzw;
    r19.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r19.xyz, 0).xyz;
    r20.xyz = r12.xyz * r12.xyz;
    r20.xyz = r20.xyz * r3.www;
    r21.xyz = r18.wwy + r16.yzw;
    r21.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r21.xyz, 0).xyz;
    r21.xyz = r21.xyz * r20.yyy;
    r19.xyz = r19.xyz * r20.xxx + r21.xyz;
    r16.yzw = r18.wwz + r16.yzw;
    r16.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r16.yzw, 0).xyz;
    r16.yzw = r16.yzw * r20.zzz + r19.xyz;
    r12.w = 0;
    r18.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r12.xyzw, 6).xyz;
    r16.yzw = r18.xyz * r16.yzw;
    r3.w = dot(r16.yzw, float3(0.212599993,0.715200007,0.0722000003));
    r10.yzw = r23.xyz * r0.yyy + r16.yzw;
    r17.w = 0;
    r16.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r17.xyzw, r3.z).xyz;
    r0.y = sunConstants.globalProbeExposure * r2.w + -r3.w;
    r0.y = r2.y * r0.y + r3.w;
    r15.yzw = r16.yzw * r0.yyy + r15.yzw;
  }
  r0.y = r5.z * r1.w + r2.x;
  r0.y = log2(abs(r0.y));
  r0.y = r1.z * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r5.z * r1.w + r0.y;
  r0.y = saturate(-1 + r0.y);
  r10.yzw = r10.yzw * r2.zzz;
  r2.yz = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r2.yz = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r2.yz, 0).xy;
  r15.yzw = r15.yzw * r0.yyy;
  r16.yzw = r15.yzw * r2.yyy;
  r2.yzw = r15.yzw * r2.zzz;
  r0.y = sqrt(r1.z);
  r0.y = r0.y * 0.5 + 0.5;
  r0.y = r0.y * r0.y;
  r1.w = 0.5 * r0.y;
  r0.y = -r0.y * 0.5 + 1;
  r3.z = r2.x * r0.y + r1.w;
  r0.y = r3.z * r0.y;
  r1.w = r3.z * r1.w;
  r3.z = (uint)renderTargetSize.x;
  r3.z = (int)r3.z + 7;
  r3.z = (uint)r3.z >> 3;
  r0.x = mad((int)r0.z, (int)r3.z, (int)r0.x);
  r0.x = (uint)r0.x << 5;
  r0.z = ~(int)r10.x;
  r18.x = -r3.x;
  r2.x = -r2.x * 0.5 + 1;
  r11.w = 1;
  r19.z = 1;
  r20.w = 1;
  r21.w = 1;
  r22.w = 1;
  r18.z = r3.x;
  r23.w = 1;
  r18.yw = r14.xx;
  r3.y = r18.w;
  r14.y = r18.x;
  r14.z = r3.x;
  r24.x = r14.x;
  r24.y = r18.x;
  r24.z = r3.x;
  r25.w = 1;
  r26.x = r14.x;
  r26.y = r18.x;
  r26.z = r3.x;
  r27.x = r14.x;
  r27.y = r18.x;
  r27.z = r3.x;
  r15.yzw = r10.yzw;
  r28.xyz = r16.yzw;
  r29.xyz = r2.yzw;
  r3.z = enableDitheredShadow;
  r3.w = 0;
  while (true) {
    r4.w = cmp((uint)r3.w >= numLights);
    if (r4.w != 0) break;
    r4.w = (uint)r3.w >> 5;
    r4.w = (int)r0.x + (int)r4.w;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r4.w, r4.w, l(0), t26.xxxx
  r4.w = samplerLinear[]..swiz;
    r30.xyz = r15.yzw;
    r31.xyz = r28.xyz;
    r32.xyz = r29.xyz;
    r5.z = r3.z;
    r6.w = r4.w;
    while (true) {
      if (r6.w == 0) break;
      r7.w = firstbitlow((uint)r6.w);
      r8.w = 1 << (int)r7.w;
      r8.w = ~(int)r8.w;
      r6.w = (int)r6.w & (int)r8.w;
      r7.w = (int)r3.w + (int)r7.w;
      r7.w = (int)r7.w * 15;
      if (3 == 0) r8.w = 0; else if (3+24 < 32) {       r8.w = (uint)lightConstantsCB[r7.w].data[1].w << (32-(3 + 24)); r8.w = (uint)r8.w >> (32-3);      } else r8.w = (uint)lightConstantsCB[r7.w].data[1].w >> 24;
      r9.w = cmp((int)r8.w == 2);
      if (r9.w != 0) {
        if (3 == 0) r9.w = 0; else if (3+27 < 32) {         r9.w = (uint)lightConstantsCB[r7.w].data[1].w << (32-(3 + 27)); r9.w = (uint)r9.w >> (32-3);        } else r9.w = (uint)lightConstantsCB[r7.w].data[1].w >> 27;
        r33.xy = lightConstantsCB[r7.w].data[3].zw + -r11.xy;
        r33.z = lightConstantsCB[r7.w].data[4].x + -r11.z;
        r12.w = dot(r33.xyz, r33.xyz);
        r12.w = rsqrt(r12.w);
        r34.xyz = r33.xyz * r12.www;
        r13.w = lightConstantsCB[r7.w].data[1].z * r0.w;
        r13.w = 0.25 * r13.w;
        r14.w = dot(r12.xyz, r34.xyz);
        r17.w = saturate(r14.w);
        r19.w = cmp(0 < r17.w);
        if (r19.w != 0) {
          r34.xyz = lightConstantsCB[r7.w].data[7].yzw;
          r34.w = lightConstantsCB[r7.w].data[8].x;
          r19.w = dot(r34.xyzw, r11.xyzw);
          r24.w = cmp(r19.w < 1);
          if (r24.w != 0) {
            r35.xyz = float3(1,1,1);
            r24.w = 0;
          } else {
            r36.xyz = lightConstantsCB[r7.w].data[0].xyz + -r11.xyz;
            r26.w = lightConstantsCB[r7.w].data[3].x * lightConstantsCB[r7.w].data[3].x;
            r27.w = dot(r36.xyz, r36.xyz);
            r26.w = r26.w / r27.w;
            r26.w = min(1, r26.w);
            r36.xy = saturate(r19.ww * lightConstantsCB[r7.w].data[2].xz + lightConstantsCB[r7.w].data[2].yw);
            r36.zw = r36.xy * r36.xy;
            r36.xy = r36.xy * float2(-2,-2) + float2(3,3);
            r36.xy = r36.zw * r36.xy;
            r26.w = r36.x * r26.w;
            r26.w = r26.w * r36.y;
            r36.xyz = lightConstantsCB[r7.w].data[4].yzw;
            r36.w = lightConstantsCB[r7.w].data[5].x;
            r36.x = dot(r36.xyzw, r11.xyzw);
            r37.xyz = lightConstantsCB[r7.w].data[5].yzw;
            r37.w = lightConstantsCB[r7.w].data[6].x;
            r36.y = dot(r37.xyzw, r11.xyzw);
            r19.xy = r36.xy / r19.ww;
            r19.w = cmp(lightConstantsCB[r7.w].data[10].w < 0.00048828125);
            if (r19.w != 0) {
              r36.xy = saturate(abs(r19.xy) * lightConstantsCB[r7.w].data[12].xy + lightConstantsCB[r7.w].data[12].zw);
              r36.zw = r36.xy * r36.xy;
              r36.xy = r36.xy * float2(-2,-2) + float2(3,3);
              r36.xy = r36.zw * r36.xy;
              r19.w = r36.x * r36.y;
            } else {
              r36.xyzw = saturate(lightConstantsCB[r7.w].data[11].xyzw * abs(r19.yyxx));
              r36.xyzw = log2(r36.xyzw);
              r36.xyzw = lightConstantsCB[r7.w].data[12].zzzz * r36.xyzw;
              r36.xyzw = exp2(r36.xyzw);
              r36.xy = r36.xy + r36.zw;
              r36.xy = log2(r36.xy);
              r36.xy = lightConstantsCB[r7.w].data[12].ww * r36.xy;
              r36.xy = exp2(r36.xy);
              r27.w = lightConstantsCB[r7.w].data[12].x * r36.x;
              r28.w = lightConstantsCB[r7.w].data[12].y * r36.y + -1;
              r27.w = lightConstantsCB[r7.w].data[12].y * r36.y + -r27.w;
              r27.w = saturate(r28.w / r27.w);
              r28.w = r27.w * r27.w;
              r27.w = r27.w * -2 + 3;
              r19.w = r28.w * r27.w;
            }
            r24.w = r26.w * r19.w;
            r19.w = 255 & (int)lightConstantsCB[r7.w].data[14].w;
            if (r19.w != 0) {
              r26.w = dot(lightConstantsCB[r7.w].data[13].xyz, r19.xyz);
              r36.x = lightConstantsCB[r7.w].data[13].w;
              r36.yz = lightConstantsCB[r7.w].data[14].xy;
              r19.x = dot(r36.xyz, r19.xyz);
              r36.x = frac(r26.w);
              r36.y = frac(r19.x);
              r19.x = (int)r19.w + -1;
              r36.z = (uint)r19.x;
              r35.xyz = gCookieArray.SampleLevel(samplerLinear_s, r36.xyz, 0).xyz;
            } else {
              r35.xyz = float3(1,1,1);
            }
          }
          r36.x = lightConstantsCB[r7.w].data[0].w;
          r36.yz = lightConstantsCB[r7.w].data[1].xy;
          r19.xyw = r36.xyz * r35.xyz;
          r26.w = cmp(0 < r24.w);
          if (r26.w != 0) {
            r9.w = cmp((int)r9.w != 1);
            if (r9.w != 0) {
              r9.w = abs(r14.w) * -0.200000003 + 0.400000006;
              r20.xyz = r12.xyz * r9.www + r11.xyz;
              r35.xyz = lightConstantsCB[r7.w].data[6].yzw;
              r35.w = lightConstantsCB[r7.w].data[7].x;
              r9.w = dot(r35.xyzw, r20.xyzw);
              r26.w = dot(r34.xyzw, r20.xyzw);
              r27.w = cmp(r26.w >= r9.w);
              if (r27.w != 0) {
                r34.xyz = lightConstantsCB[r7.w].data[4].yzw;
                r34.w = lightConstantsCB[r7.w].data[5].x;
                r34.x = dot(r34.xyzw, r20.xyzw);
                r35.xyz = lightConstantsCB[r7.w].data[5].yzw;
                r35.w = lightConstantsCB[r7.w].data[6].x;
                r34.y = dot(r35.xyzw, r20.xyzw);
                r20.xy = r34.xy / r26.ww;
                r20.xy = saturate(r20.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                r34.x = r20.x * lightConstantsCB[r7.w].data[8].y + lightConstantsCB[r7.w].data[8].z;
                r34.y = r20.y * lightConstantsCB[r7.w].data[8].w + lightConstantsCB[r7.w].data[9].x;
                r9.w = r9.w / r26.w;
                r9.w = max(6.10351563e-05, r9.w);
                r20.x = 0x0000ffff & (int)lightConstantsCB[r7.w].data[1].w;
                if (r5.z != 0) {
                  r35.z = (uint)r20.x;
                  r20.yz = float2(0,0);
                  while (true) {
                    r26.w = cmp((int)r20.z >= 8);
                    if (r26.w != 0) break;
                    r36.x = dot(icb[r20.z+0].yx, r18.xy);
                    r36.y = dot(icb[r20.z+0].yx, r18.yz);
                    r35.xy = r36.xy * lightConstantsCB[r7.w].data[3].yy + r34.xy;
                    r26.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r35.xyz, r9.w).x;
                    r20.y = r26.w * 0.125 + r20.y;
                    r20.z = (int)r20.z + 1;
                  }
                } else {
                  r34.z = (uint)r20.x;
                  r20.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r34.xyz, r9.w).x;
                }
                r9.w = r20.y * r20.y;
                r9.w = r9.w * r20.y;
              } else {
                r9.w = 1;
              }
            } else {
              r9.w = 1;
            }
            r9.w = r24.w * r9.w;
            r20.x = cmp(0 < r9.w);
            if (r20.x != 0) {
              if (4 == 0) r20.x = 0; else if (4+16 < 32) {               r20.x = (uint)lightConstantsCB[r7.w].data[1].w << (32-(4 + 16)); r20.x = (uint)r20.x >> (32-4);              } else r20.x = (uint)lightConstantsCB[r7.w].data[1].w >> 16;
              r20.z = cmp(0 < (uint)r20.x);
              r20.z = r10.x ? r20.z : 0;
              if (r20.z != 0) {
                r20.x = (int)r20.x + numLights;
                r20.x = mad((int)r20.x, 15, -15);
                r20.z = abs(r14.w) * -0.200000003 + 0.400000006;
                r21.xyz = r12.xyz * r20.zzz + r11.xyz;
                r34.xyz = lightConstantsCB[r20.x].data[6].yzw;
                r34.w = lightConstantsCB[r20.x].data[7].x;
                r20.z = dot(r34.xyzw, r21.xyzw);
                r34.xyz = lightConstantsCB[r20.x].data[7].yzw;
                r34.w = lightConstantsCB[r20.x].data[8].x;
                r24.w = dot(r34.xyzw, r21.xyzw);
                r26.w = cmp(r24.w < r20.z);
                if (r26.w == 0) {
                  r34.xyz = lightConstantsCB[r20.x].data[4].yzw;
                  r34.w = lightConstantsCB[r20.x].data[5].x;
                  r34.x = dot(r34.xyzw, r21.xyzw);
                  r35.xyz = lightConstantsCB[r20.x].data[5].yzw;
                  r35.w = lightConstantsCB[r20.x].data[6].x;
                  r34.y = dot(r35.xyzw, r21.xyzw);
                  r21.xy = r34.xy / r24.ww;
                  r21.xy = r21.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                  r34.x = lightConstantsCB[r20.x].data[9].w + r21.x;
                  r34.y = lightConstantsCB[r20.x].data[10].x + r21.y;
                  r21.xy = lightConstantsCB[r20.x].data[9].yz * r34.xy;
                  r34.xy = lightConstantsCB[r20.x].data[3].yy / lightConstantsCB[r20.x].data[8].yw;
                  r34.zw = float2(1,1) + -r34.xy;
                  r34.zw = cmp(r21.xy >= r34.zw);
                  r34.xy = cmp(r34.xy >= r21.xy);
                  r34.xy = (int2)r34.xy | (int2)r34.zw;
                  r21.z = (int)r34.y | (int)r34.x;
                  if (r21.z == 0) {
                    r21.xy = saturate(r21.xy);
                    r34.x = r21.x * lightConstantsCB[r20.x].data[8].y + lightConstantsCB[r20.x].data[8].z;
                    r34.y = r21.y * lightConstantsCB[r20.x].data[8].w + lightConstantsCB[r20.x].data[9].x;
                    r21.x = lightConstantsCB[r20.x].data[10].z * r24.w;
                    r20.z = lightConstantsCB[r20.x].data[10].y * r24.w + r20.z;
                    r20.z = r20.z / r21.x;
                  }
                } else {
                  r21.z = -1;
                }
                r21.x = (int)r26.w | (int)r21.z;
                if (r21.x == 0) {
                  r20.z = max(6.10351563e-05, r20.z);
                  r21.x = 0x0000ffff & (int)lightConstantsCB[r20.x].data[1].w;
                  if (r5.z != 0) {
                    r35.z = (uint)r21.x;
                    r21.yz = float2(0,0);
                    while (true) {
                      r24.w = cmp((int)r21.z >= 8);
                      if (r24.w != 0) break;
                      r36.x = dot(icb[r21.z+0].yx, r18.xw);
                      r36.y = dot(icb[r21.z+0].xy, r3.xy);
                      r35.xy = r36.xy * lightConstantsCB[r20.x].data[3].yy + r34.xy;
                      r24.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r35.xyz, r20.z).x;
                      r21.y = r24.w * 0.125 + r21.y;
                      r21.z = (int)r21.z + 1;
                    }
                  } else {
                    r34.z = (uint)r21.x;
                    r21.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r34.xyz, r20.z).x;
                  }
                  r20.x = r21.y * r21.y;
                  r20.x = r20.x * r21.y;
                } else {
                  r20.x = 1;
                }
                r9.w = r20.x * r9.w;
              } else {
                if (4 == 0) r20.x = 0; else if (4+20 < 32) {                 r20.x = (uint)lightConstantsCB[r7.w].data[1].w << (32-(4 + 20)); r20.x = (uint)r20.x >> (32-4);                } else r20.x = (uint)lightConstantsCB[r7.w].data[1].w >> 20;
                r20.z = cmp(0 < (uint)r20.x);
                r20.z = r20.z ? r0.z : 0;
                if (r20.z != 0) {
                  r20.x = (int)r20.x + numLights;
                  r20.x = mad((int)r20.x, 15, -15);
                  r20.z = abs(r14.w) * -0.200000003 + 0.400000006;
                  r22.xyz = r12.xyz * r20.zzz + r11.xyz;
                  r34.xyz = lightConstantsCB[r20.x].data[6].yzw;
                  r34.w = lightConstantsCB[r20.x].data[7].x;
                  r20.z = dot(r34.xyzw, r22.xyzw);
                  r34.xyz = lightConstantsCB[r20.x].data[7].yzw;
                  r34.w = lightConstantsCB[r20.x].data[8].x;
                  r21.x = dot(r34.xyzw, r22.xyzw);
                  r21.z = cmp(r21.x < r20.z);
                  if (r21.z == 0) {
                    r34.xyz = lightConstantsCB[r20.x].data[4].yzw;
                    r34.w = lightConstantsCB[r20.x].data[5].x;
                    r34.x = dot(r34.xyzw, r22.xyzw);
                    r35.xyz = lightConstantsCB[r20.x].data[5].yzw;
                    r35.w = lightConstantsCB[r20.x].data[6].x;
                    r34.y = dot(r35.xyzw, r22.xyzw);
                    r22.xy = r34.xy / r21.xx;
                    r22.xy = r22.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r34.x = lightConstantsCB[r20.x].data[9].w + r22.x;
                    r34.y = lightConstantsCB[r20.x].data[10].x + r22.y;
                    r22.xy = lightConstantsCB[r20.x].data[9].yz * r34.xy;
                    r34.xy = lightConstantsCB[r20.x].data[3].yy / lightConstantsCB[r20.x].data[8].yw;
                    r34.zw = float2(1,1) + -r34.xy;
                    r34.zw = cmp(r22.xy >= r34.zw);
                    r34.xy = cmp(r34.xy >= r22.xy);
                    r34.xy = (int2)r34.xy | (int2)r34.zw;
                    r22.z = (int)r34.y | (int)r34.x;
                    if (r22.z == 0) {
                      r22.xy = saturate(r22.xy);
                      r34.x = r22.x * lightConstantsCB[r20.x].data[8].y + lightConstantsCB[r20.x].data[8].z;
                      r34.y = r22.y * lightConstantsCB[r20.x].data[8].w + lightConstantsCB[r20.x].data[9].x;
                      r22.x = lightConstantsCB[r20.x].data[10].z * r21.x;
                      r20.z = lightConstantsCB[r20.x].data[10].y * r21.x + r20.z;
                      r20.z = r20.z / r22.x;
                    }
                  } else {
                    r22.z = -1;
                  }
                  r21.x = (int)r21.z | (int)r22.z;
                  if (r21.x == 0) {
                    r20.z = max(6.10351563e-05, r20.z);
                    r21.x = 0x0000ffff & (int)lightConstantsCB[r20.x].data[1].w;
                    if (r5.z != 0) {
                      r22.z = (uint)r21.x;
                      r21.z = 0;
                      r24.w = 0;
                      while (true) {
                        r26.w = cmp((int)r24.w >= 8);
                        if (r26.w != 0) break;
                        r35.x = dot(icb[r24.w+0].xy, r24.xy);
                        r35.y = dot(icb[r24.w+0].yx, r24.xz);
                        r22.xy = r35.xy * lightConstantsCB[r20.x].data[3].yy + r34.xy;
                        r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r20.z).x;
                        r21.z = r22.x * 0.125 + r21.z;
                        r24.w = (int)r24.w + 1;
                      }
                    } else {
                      r34.z = (uint)r21.x;
                      r21.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r34.xyz, r20.z).x;
                    }
                    r20.x = r21.z * r21.z;
                    r20.x = r20.x * r21.z;
                  } else {
                    r20.x = 1;
                  }
                  r9.w = r20.x * r9.w;
                }
              }
              r20.x = -r17.w * r2.x + 1;
              r20.x = r20.x * r20.x;
              r20.x = -r20.x * 0.620000005 + 0.620000005;
              r20.x = r20.x + -r17.w;
              r20.x = r1.z * r20.x + r17.w;
              r20.x = r20.x * r9.w;
              r14.w = cmp(0 < r14.w);
              r22.xyz = r20.xxx * r19.xyw + r30.xyz;
              r33.xyz = r33.xyz * r12.www + r13.xyz;
              r12.w = dot(r33.xyz, r33.xyz);
              r12.w = rsqrt(r12.w);
              r33.xyz = r33.xyz * r12.www;
              r12.w = dot(r33.xyz, r13.xyz);
              r20.x = dot(r12.xyz, r33.xyz);
              r20.z = abs(r20.x) * r0.w + -abs(r20.x);
              r20.x = abs(r20.x) * r20.z + 1;
              r20.z = r17.w * r0.y + r1.w;
              r20.x = r20.x * r20.x;
              r20.x = r20.x * r20.z;
              r20.x = rcp(r20.x);
              r13.w = r17.w * r13.w;
              r13.w = r20.x * r13.w;
              r9.w = r13.w * r9.w;
              r33.xyz = r9.www * r19.xyw + r32.xyz;
              r12.w = saturate(1 + -r12.w);
              r13.w = r12.w * r12.w;
              r13.w = r13.w * r13.w;
              r12.w = r13.w * r12.w;
              r9.w = r12.w * r9.w;
              r19.xyw = r9.www * r19.xyw + r31.xyz;
              r30.xyz = r14.www ? r22.xyz : r30.xyz;
              r31.xyz = r14.www ? r19.xyw : r31.xyz;
              r32.xyz = r14.www ? r33.xyz : r32.xyz;
            }
          }
        }
      } else {
        r8.w = cmp((int)r8.w == 4);
        if (r8.w != 0) {
          if (3 == 0) r8.w = 0; else if (3+27 < 32) {           r8.w = (uint)lightConstantsCB[r7.w].data[1].w << (32-(3 + 27)); r8.w = (uint)r8.w >> (32-3);          } else r8.w = (uint)lightConstantsCB[r7.w].data[1].w >> 27;
          r9.w = lightConstantsCB[r7.w].data[1].z * r0.w;
          r9.w = 0.25 * r9.w;
          r12.w = cmp(0 < lightConstantsCB[r7.w].data[6].y);
          r22.xy = lightConstantsCB[r7.w].data[5].zw;
          r22.z = lightConstantsCB[r7.w].data[6].x;
          r19.xyw = -r22.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r7.w].data[0].xyz;
          r33.xyz = r19.xyw + -r11.xyz;
          r13.w = dot(r22.xyz, r17.xyz);
          r14.w = dot(r22.xyz, r33.xyz);
          r17.w = dot(r17.xyz, r33.xyz);
          r20.x = -r13.w * r13.w + lightConstantsCB[r7.w].data[6].y;
          r13.w = r13.w * r17.w + -r14.w;
          r14.w = saturate(-r14.w / lightConstantsCB[r7.w].data[6].y);
          r13.w = saturate(r13.w / r20.x);
          r17.w = r20.x / lightConstantsCB[r7.w].data[6].y;
          r17.w = 10 * r17.w;
          r17.w = min(1, r17.w);
          r13.w = r13.w + -r14.w;
          r13.w = r17.w * r13.w + r14.w;
          r33.xyz = r13.www * r22.xyz + r19.xyw;
          r19.xyw = r14.www * r22.xyz + r19.xyw;
          r19.xyw = r12.www ? r19.xyw : lightConstantsCB[r7.w].data[0].xyz;
          r22.xyz = r12.www ? r33.xyz : lightConstantsCB[r7.w].data[0].xyz;
          r22.xyz = r22.xyz + -r11.xyz;
          r19.xyw = r19.xyw + -r11.xyz;
          r12.w = dot(r22.xyz, r22.xyz);
          r12.w = rsqrt(r12.w);
          r33.xyz = r22.xyz * r12.www;
          r13.w = dot(r19.xyw, r19.xyw);
          r14.w = rsqrt(r13.w);
          r19.xyw = r19.xyw * r14.www;
          r14.w = dot(r12.xyz, r19.xyw);
          r17.w = saturate(r14.w);
          r19.x = cmp(0 < r17.w);
          if (r19.x != 0) {
            r19.x = sqrt(r13.w);
            r19.y = lightConstantsCB[r7.w].data[3].x * lightConstantsCB[r7.w].data[3].x;
            r13.w = r19.y / r13.w;
            r13.w = min(1, r13.w);
            r19.xy = saturate(r19.xx * lightConstantsCB[r7.w].data[2].xz + lightConstantsCB[r7.w].data[2].yw);
            r20.xz = r19.xy * r19.xy;
            r19.xy = r19.xy * float2(-2,-2) + float2(3,3);
            r19.xy = r20.xz * r19.xy;
            r13.w = r19.x * r13.w;
            r13.w = r13.w * r19.y;
            r19.x = cmp(0 < r13.w);
            if (r19.x != 0) {
              r8.w = cmp((int)r8.w != 1);
              if (r8.w != 0) {
                r8.w = abs(r14.w) * -0.200000003 + 0.400000006;
                r19.xyw = r12.xyz * r8.www + r11.xyz;
                r19.xyw = -lightConstantsCB[r7.w].data[4].yzw + r19.xyw;
                r8.w = max(abs(r19.y), abs(r19.w));
                r8.w = max(abs(r19.x), r8.w);
                r8.w = lightConstantsCB[r7.w].data[5].x / r8.w;
                r8.w = lightConstantsCB[r7.w].data[5].y + r8.w;
                r20.x = dot(r19.xyw, r19.xyw);
                r20.x = rsqrt(r20.x);
                r8.w = max(6.10351563e-05, r8.w);
                r20.z = 0x0000ffff & (int)lightConstantsCB[r7.w].data[1].w;
                r34.w = (uint)r20.z;
                r20.z = 0;
                r21.x = 0;
                while (true) {
                  r24.w = cmp((int)r21.x >= 8);
                  if (r24.w != 0) break;
                  r35.y = dot(icb[r21.x+0].xy, r14.xy);
                  r35.z = dot(icb[r21.x+0].yx, r14.xz);
                  r35.yz = lightConstantsCB[r7.w].data[3].yy * r35.yz;
                  r35.x = r35.y * r16.x;
                  r35.w = r35.y * r15.x;
                  r34.xyz = r19.xyw * r20.xxx + r35.xzw;
                  r24.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r34.xyzw, r8.w).x;
                  r20.z = r24.w * 0.125 + r20.z;
                  r21.x = (int)r21.x + 1;
                }
              } else {
                r20.z = 1;
              }
              r8.w = r20.z * r13.w;
              r13.w = cmp(0 < r8.w);
              if (r13.w != 0) {
                if (4 == 0) r13.w = 0; else if (4+16 < 32) {                 r13.w = (uint)lightConstantsCB[r7.w].data[1].w << (32-(4 + 16)); r13.w = (uint)r13.w >> (32-4);                } else r13.w = (uint)lightConstantsCB[r7.w].data[1].w >> 16;
                r19.x = cmp(0 < (uint)r13.w);
                r19.x = r10.x ? r19.x : 0;
                if (r19.x != 0) {
                  r13.w = (int)r13.w + numLights;
                  r13.w = mad((int)r13.w, 15, -15);
                  r19.x = abs(r14.w) * -0.200000003 + 0.400000006;
                  r23.xyz = r12.xyz * r19.xxx + r11.xyz;
                  r34.xyz = lightConstantsCB[r13.w].data[6].yzw;
                  r34.w = lightConstantsCB[r13.w].data[7].x;
                  r19.x = dot(r34.xyzw, r23.xyzw);
                  r34.xyz = lightConstantsCB[r13.w].data[7].yzw;
                  r34.w = lightConstantsCB[r13.w].data[8].x;
                  r19.y = dot(r34.xyzw, r23.xyzw);
                  r19.w = cmp(r19.y < r19.x);
                  if (r19.w == 0) {
                    r34.xyz = lightConstantsCB[r13.w].data[4].yzw;
                    r34.w = lightConstantsCB[r13.w].data[5].x;
                    r34.x = dot(r34.xyzw, r23.xyzw);
                    r35.xyz = lightConstantsCB[r13.w].data[5].yzw;
                    r35.w = lightConstantsCB[r13.w].data[6].x;
                    r34.y = dot(r35.xyzw, r23.xyzw);
                    r23.xy = r34.xy / r19.yy;
                    r23.xy = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r34.x = lightConstantsCB[r13.w].data[9].w + r23.x;
                    r34.y = lightConstantsCB[r13.w].data[10].x + r23.y;
                    r23.xy = lightConstantsCB[r13.w].data[9].yz * r34.xy;
                    r34.xy = lightConstantsCB[r13.w].data[3].yy / lightConstantsCB[r13.w].data[8].yw;
                    r34.zw = float2(1,1) + -r34.xy;
                    r34.zw = cmp(r23.xy >= r34.zw);
                    r34.xy = cmp(r34.xy >= r23.xy);
                    r34.xy = (int2)r34.xy | (int2)r34.zw;
                    r20.x = (int)r34.y | (int)r34.x;
                    if (r20.x == 0) {
                      r23.xy = saturate(r23.xy);
                      r34.x = r23.x * lightConstantsCB[r13.w].data[8].y + lightConstantsCB[r13.w].data[8].z;
                      r34.y = r23.y * lightConstantsCB[r13.w].data[8].w + lightConstantsCB[r13.w].data[9].x;
                      r21.x = lightConstantsCB[r13.w].data[10].z * r19.y;
                      r19.x = lightConstantsCB[r13.w].data[10].y * r19.y + r19.x;
                      r19.x = r19.x / r21.x;
                    }
                  } else {
                    r20.x = -1;
                  }
                  r19.y = (int)r19.w | (int)r20.x;
                  if (r19.y == 0) {
                    r19.x = max(6.10351563e-05, r19.x);
                    r19.y = 0x0000ffff & (int)lightConstantsCB[r13.w].data[1].w;
                    if (r5.z != 0) {
                      r23.z = (uint)r19.y;
                      r19.w = 0;
                      r20.x = 0;
                      while (true) {
                        r21.x = cmp((int)r20.x >= 8);
                        if (r21.x != 0) break;
                        r35.x = dot(icb[r20.x+0].xy, r26.xy);
                        r35.y = dot(icb[r20.x+0].yx, r26.xz);
                        r23.xy = r35.xy * lightConstantsCB[r13.w].data[3].yy + r34.xy;
                        r21.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r19.x).x;
                        r19.w = r21.x * 0.125 + r19.w;
                        r20.x = (int)r20.x + 1;
                      }
                    } else {
                      r34.z = (uint)r19.y;
                      r19.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r34.xyz, r19.x).x;
                    }
                    r13.w = r19.w * r19.w;
                    r13.w = r13.w * r19.w;
                  } else {
                    r13.w = 1;
                  }
                  r8.w = r13.w * r8.w;
                } else {
                  if (4 == 0) r13.w = 0; else if (4+20 < 32) {                   r13.w = (uint)lightConstantsCB[r7.w].data[1].w << (32-(4 + 20)); r13.w = (uint)r13.w >> (32-4);                  } else r13.w = (uint)lightConstantsCB[r7.w].data[1].w >> 20;
                  r19.x = cmp(0 < (uint)r13.w);
                  r19.x = r19.x ? r0.z : 0;
                  if (r19.x != 0) {
                    r13.w = (int)r13.w + numLights;
                    r13.w = mad((int)r13.w, 15, -15);
                    r19.x = abs(r14.w) * -0.200000003 + 0.400000006;
                    r25.xyz = r12.xyz * r19.xxx + r11.xyz;
                    r34.xyz = lightConstantsCB[r13.w].data[6].yzw;
                    r34.w = lightConstantsCB[r13.w].data[7].x;
                    r19.x = dot(r34.xyzw, r25.xyzw);
                    r34.xyz = lightConstantsCB[r13.w].data[7].yzw;
                    r34.w = lightConstantsCB[r13.w].data[8].x;
                    r19.y = dot(r34.xyzw, r25.xyzw);
                    r20.x = cmp(r19.y < r19.x);
                    if (r20.x == 0) {
                      r34.xyz = lightConstantsCB[r13.w].data[4].yzw;
                      r34.w = lightConstantsCB[r13.w].data[5].x;
                      r23.x = dot(r34.xyzw, r25.xyzw);
                      r34.xyz = lightConstantsCB[r13.w].data[5].yzw;
                      r34.w = lightConstantsCB[r13.w].data[6].x;
                      r23.y = dot(r34.xyzw, r25.xyzw);
                      r23.xy = r23.xy / r19.yy;
                      r23.xy = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r25.x = lightConstantsCB[r13.w].data[9].w + r23.x;
                      r25.y = lightConstantsCB[r13.w].data[10].x + r23.y;
                      r23.xy = lightConstantsCB[r13.w].data[9].yz * r25.xy;
                      r25.xy = lightConstantsCB[r13.w].data[3].yy / lightConstantsCB[r13.w].data[8].yw;
                      r34.xy = float2(1,1) + -r25.xy;
                      r34.xy = cmp(r23.xy >= r34.xy);
                      r25.xy = cmp(r25.xy >= r23.xy);
                      r25.xy = (int2)r25.xy | (int2)r34.xy;
                      r21.x = (int)r25.y | (int)r25.x;
                      if (r21.x == 0) {
                        r23.xy = saturate(r23.xy);
                        r25.x = r23.x * lightConstantsCB[r13.w].data[8].y + lightConstantsCB[r13.w].data[8].z;
                        r25.y = r23.y * lightConstantsCB[r13.w].data[8].w + lightConstantsCB[r13.w].data[9].x;
                        r23.x = lightConstantsCB[r13.w].data[10].z * r19.y;
                        r19.x = lightConstantsCB[r13.w].data[10].y * r19.y + r19.x;
                        r19.x = r19.x / r23.x;
                      }
                    } else {
                      r21.x = -1;
                    }
                    r19.y = (int)r20.x | (int)r21.x;
                    if (r19.y == 0) {
                      r19.x = max(6.10351563e-05, r19.x);
                      r19.y = 0x0000ffff & (int)lightConstantsCB[r13.w].data[1].w;
                      if (r5.z != 0) {
                        r23.z = (uint)r19.y;
                        r20.x = 0;
                        r21.x = 0;
                        while (true) {
                          r24.w = cmp((int)r21.x >= 8);
                          if (r24.w != 0) break;
                          r34.x = dot(icb[r21.x+0].xy, r27.xy);
                          r34.y = dot(icb[r21.x+0].yx, r27.xz);
                          r23.xy = r34.xy * lightConstantsCB[r13.w].data[3].yy + r25.xy;
                          r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r19.x).x;
                          r20.x = r23.x * 0.125 + r20.x;
                          r21.x = (int)r21.x + 1;
                        }
                      } else {
                        r25.z = (uint)r19.y;
                        r20.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r19.x).x;
                      }
                      r13.w = r20.x * r20.x;
                      r13.w = r13.w * r20.x;
                    } else {
                      r13.w = 1;
                    }
                    r8.w = r13.w * r8.w;
                  }
                }
                r13.w = -r17.w * r2.x + 1;
                r13.w = r13.w * r13.w;
                r13.w = -r13.w * 0.620000005 + 0.620000005;
                r13.w = r13.w + -r17.w;
                r13.w = r1.z * r13.w + r17.w;
                r13.w = r13.w * r8.w;
                r23.x = lightConstantsCB[r7.w].data[0].w;
                r23.yz = lightConstantsCB[r7.w].data[1].xy;
                r7.w = cmp(0 < r14.w);
                r25.xyz = r13.www * r23.xyz + r30.xyz;
                r13.w = saturate(dot(r12.xyz, r33.xyz));
                r22.xyz = r22.xyz * r12.www + r13.xyz;
                r12.w = dot(r22.xyz, r22.xyz);
                r12.w = rsqrt(r12.w);
                r22.xyz = r22.xyz * r12.www;
                r12.w = dot(r22.xyz, r13.xyz);
                r14.w = dot(r12.xyz, r22.xyz);
                r17.w = abs(r14.w) * r0.w + -abs(r14.w);
                r14.w = abs(r14.w) * r17.w + 1;
                r17.w = r13.w * r0.y + r1.w;
                r14.w = r14.w * r14.w;
                r14.w = r14.w * r17.w;
                r14.w = rcp(r14.w);
                r9.w = r13.w * r9.w;
                r9.w = r14.w * r9.w;
                r8.w = r9.w * r8.w;
                r22.xyz = r8.www * r23.xyz + r32.xyz;
                r9.w = saturate(1 + -r12.w);
                r12.w = r9.w * r9.w;
                r12.w = r12.w * r12.w;
                r9.w = r12.w * r9.w;
                r8.w = r9.w * r8.w;
                r23.xyz = r8.www * r23.xyz + r31.xyz;
                r30.xyz = r7.www ? r25.xyz : r30.xyz;
                r31.xyz = r7.www ? r23.xyz : r31.xyz;
                r32.xyz = r7.www ? r22.xyz : r32.xyz;
              }
            }
          }
        }
      }
    }
    r15.yzw = r30.xyz;
    r28.xyz = r31.xyz;
    r29.xyz = r32.xyz;
    r3.w = (int)r3.w + 32;
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