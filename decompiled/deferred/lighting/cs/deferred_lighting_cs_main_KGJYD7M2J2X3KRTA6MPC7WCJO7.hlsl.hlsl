// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:23:36 2021

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
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.x = mad(permuteStride, 63, (int)vThreadGroupID.x);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=8)(mixed,mixed,mixed,mixed) r0.xy, r0.x, l(0), t25.xyxx
r0.x = samplerLinear[]..swiz;
r0.y = samplerLinear[]..swiz;
  r0.zw = (int2)r0.xy & int2(4095,4095);
  r1.xy = mad((int2)r0.zw, int2(8,8), (int2)vThreadIDInGroup.xy);
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
  r9.xy = (uint2)r0.yx >> int2(24,24);
  if (10 == 0) r0.x = 0; else if (10+12 < 32) {   r0.x = (uint)r0.y << (32-(10 + 12)); r0.x = (uint)r0.x >> (32-10);  } else r0.x = (uint)r0.y >> 12;
  if (10 == 0) r0.y = 0; else if (10+12 < 32) {   r0.y = (uint)r0.x << (32-(10 + 12)); r0.y = (uint)r0.y >> (32-10);  } else r0.y = (uint)r0.x >> 12;
  r17.yz = float2(0,1);
  r18.xy = float2(0,0);
  r19.x = 1;
  r20.xy = float2(0,0);
  r21.xy = float2(0,0);
  r22.xyzw = float4(0,0,0,0);
  r23.yzw = float3(0,0,0);
  r8.w = 0;
  while (true) {
    r9.w = cmp((int)r8.w == 2);
    if (r9.w != 0) break;
    r9.w = r8.w ? r0.x : r9.x;
    r12.w = cmp((uint)r9.w >= (uint)r7.w);
    r13.z = cmp((uint)r9.w < numRefProbes);
    r12.w = r12.w ? r13.z : 0;
    if (r12.w != 0) {
      r9.w = (int)r9.w * 14;
      r15.yzw = -refProbeConstantsCB[r9.w].data[0].xyz + r10.xyz;
      r12.w = 0x0000ffff & (int)refProbeConstantsCB[r9.w].data[7].z;
      if (6 == 0) r13.z = 0; else if (6+25 < 32) {       r13.z = (uint)refProbeConstantsCB[r9.w].data[7].z << (32-(6 + 25)); r13.z = (uint)r13.z >> (32-6);      } else r13.z = (uint)refProbeConstantsCB[r9.w].data[7].z >> 25;
      r13.w = (int)r12.w * 6;
      r14.w = dot(refProbeAttenuationConstantsCB[r13.w].data[0].xyz, r15.yzw);
      r14.w = saturate(refProbeAttenuationConstantsCB[r13.w].data[0].w + r14.w);
      r17.w = dot(refProbeAttenuationConstantsCB[r13.w].data[1].xyz, r15.yzw);
      r17.w = saturate(refProbeAttenuationConstantsCB[r13.w].data[1].w + r17.w);
      r14.w = r17.w * r14.w;
      r17.w = dot(refProbeAttenuationConstantsCB[r13.w].data[2].xyz, r15.yzw);
      r17.w = saturate(refProbeAttenuationConstantsCB[r13.w].data[2].w + r17.w);
      r14.w = r17.w * r14.w;
      r17.w = dot(refProbeAttenuationConstantsCB[r13.w].data[3].xyz, r15.yzw);
      r17.w = saturate(refProbeAttenuationConstantsCB[r13.w].data[3].w + r17.w);
      r14.w = r17.w * r14.w;
      r17.w = dot(refProbeAttenuationConstantsCB[r13.w].data[4].xyz, r15.yzw);
      r17.w = saturate(refProbeAttenuationConstantsCB[r13.w].data[4].w + r17.w);
      r14.w = r17.w * r14.w;
      r17.w = dot(refProbeAttenuationConstantsCB[r13.w].data[5].xyz, r15.yzw);
      r13.w = saturate(refProbeAttenuationConstantsCB[r13.w].data[5].w + r17.w);
      r17.x = r14.w * r13.w;
      r13.w = 1 & (int)refProbeConstantsCB[r9.w].data[6].x;
      r17.xw = r13.ww ? r17.xy : r17.zx;
      r13.w = refProbeConstantsCB[r9.w].data[6].x;
      r24.xy = r17.xw;
      r14.w = 1;
      while (true) {
        r18.w = cmp((int)r14.w >= (int)r13.z);
        if (r18.w != 0) break;
        r18.w = (int)r12.w + (int)r14.w;
        r18.w = (int)r18.w * 6;
        r19.z = dot(refProbeAttenuationConstantsCB[r18.w].data[0].xyz, r15.yzw);
        r19.z = saturate(refProbeAttenuationConstantsCB[r18.w].data[0].w + r19.z);
        r19.z = r24.x * r19.z;
        r19.w = dot(refProbeAttenuationConstantsCB[r18.w].data[1].xyz, r15.yzw);
        r19.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[1].w + r19.w);
        r19.z = r19.z * r19.w;
        r19.w = dot(refProbeAttenuationConstantsCB[r18.w].data[2].xyz, r15.yzw);
        r19.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[2].w + r19.w);
        r19.z = r19.z * r19.w;
        r19.w = dot(refProbeAttenuationConstantsCB[r18.w].data[3].xyz, r15.yzw);
        r19.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[3].w + r19.w);
        r19.z = r19.z * r19.w;
        r19.w = dot(refProbeAttenuationConstantsCB[r18.w].data[4].xyz, r15.yzw);
        r19.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[4].w + r19.w);
        r19.z = r19.z * r19.w;
        r19.w = dot(refProbeAttenuationConstantsCB[r18.w].data[5].xyz, r15.yzw);
        r18.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[5].w + r19.w);
        r24.x = r19.z * r18.w;
        r19.w = (uint)r13.w >> 2;
        if (1 == 0) r20.w = 0; else if (1+2 < 32) {         r20.w = (uint)r13.w << (32-(1 + 2)); r20.w = (uint)r20.w >> (32-1);        } else r20.w = (uint)r13.w >> 2;
        r21.w = (int)r19.w & 2;
        r24.z = max(r24.y, r24.x);
        r18.w = -r19.z * r18.w + 1;
        r18.w = r24.y * r18.w;
        r19.y = r21.w ? r18.w : r24.z;
        r24.xy = r20.ww ? r24.xy : r19.xy;
        r14.w = (int)r14.w + 1;
        r13.w = r19.w;
      }
      r24.y = saturate(r24.y);
      r12.w = refProbeConstantsCB[r9.w].data[6].y * r24.y;
      r13.z = cmp(0 < r12.w);
      if (r13.z != 0) {
        r23.w = r24.y * refProbeConstantsCB[r9.w].data[6].y + r23.w;
        r12.w = refProbeConstantsCB[r9.w].data[7].y * r12.w;
        r25.x = refProbeConstantsCB[r9.w].data[7].w;
        r25.yz = refProbeConstantsCB[r9.w].data[8].xy;
        r13.z = dot(r16.xyz, r25.xyz);
        r13.w = dot(r15.yzw, r25.xyz);
        r13.w = -refProbeConstantsCB[r9.w].data[8].z + r13.w;
        r14.w = cmp(r13.w >= 0);
        r13.w = max(abs(r13.w), r5.w);
        r13.w = r14.w ? r13.w : -r13.w;
        r13.z = max(1.00000001e-07, -r13.z);
        r13.z = r13.w / r13.z;
        r13.z = min(131072, abs(r13.z));
        r25.x = refProbeConstantsCB[r9.w].data[8].w;
        r25.yz = refProbeConstantsCB[r9.w].data[9].xy;
        r13.w = dot(r16.xyz, r25.xyz);
        r14.w = dot(r15.yzw, r25.xyz);
        r14.w = -refProbeConstantsCB[r9.w].data[9].z + r14.w;
        r17.x = cmp(r14.w >= 0);
        r14.w = max(abs(r14.w), r5.w);
        r14.w = r17.x ? r14.w : -r14.w;
        r13.w = max(1.00000001e-07, -r13.w);
        r13.w = r14.w / r13.w;
        r13.z = min(r13.z, abs(r13.w));
        r25.x = refProbeConstantsCB[r9.w].data[9].w;
        r25.yz = refProbeConstantsCB[r9.w].data[10].xy;
        r13.w = dot(r16.xyz, r25.xyz);
        r14.w = dot(r15.yzw, r25.xyz);
        r14.w = -refProbeConstantsCB[r9.w].data[10].z + r14.w;
        r17.x = cmp(r14.w >= 0);
        r14.w = max(abs(r14.w), r5.w);
        r14.w = r17.x ? r14.w : -r14.w;
        r13.w = max(1.00000001e-07, -r13.w);
        r13.w = r14.w / r13.w;
        r13.z = min(r13.z, abs(r13.w));
        r25.x = refProbeConstantsCB[r9.w].data[10].w;
        r25.yz = refProbeConstantsCB[r9.w].data[11].xy;
        r13.w = dot(r16.xyz, r25.xyz);
        r14.w = dot(r15.yzw, r25.xyz);
        r14.w = -refProbeConstantsCB[r9.w].data[11].z + r14.w;
        r17.x = cmp(r14.w >= 0);
        r14.w = max(abs(r14.w), r5.w);
        r14.w = r17.x ? r14.w : -r14.w;
        r13.w = max(1.00000001e-07, -r13.w);
        r13.w = r14.w / r13.w;
        r13.z = min(r13.z, abs(r13.w));
        r25.x = refProbeConstantsCB[r9.w].data[11].w;
        r25.yz = refProbeConstantsCB[r9.w].data[12].xy;
        r13.w = dot(r16.xyz, r25.xyz);
        r14.w = dot(r15.yzw, r25.xyz);
        r14.w = -refProbeConstantsCB[r9.w].data[12].z + r14.w;
        r17.x = cmp(r14.w >= 0);
        r14.w = max(abs(r14.w), r5.w);
        r14.w = r17.x ? r14.w : -r14.w;
        r13.w = max(1.00000001e-07, -r13.w);
        r13.w = r14.w / r13.w;
        r13.z = min(r13.z, abs(r13.w));
        r25.x = refProbeConstantsCB[r9.w].data[12].w;
        r25.yz = refProbeConstantsCB[r9.w].data[13].xy;
        r13.w = dot(r16.xyz, r25.xyz);
        r14.w = dot(r15.yzw, r25.xyz);
        r14.w = -refProbeConstantsCB[r9.w].data[13].z + r14.w;
        r17.x = cmp(r14.w >= 0);
        r14.w = max(abs(r14.w), r5.w);
        r14.w = r17.x ? r14.w : -r14.w;
        r13.w = max(1.00000001e-07, -r13.w);
        r13.w = r14.w / r13.w;
        r13.z = min(r13.z, abs(r13.w));
        r25.x = refProbeConstantsCB[r9.w].data[3].w + r15.y;
        r25.yz = refProbeConstantsCB[r9.w].data[4].xy + r15.zw;
        r19.yzw = r16.xyz * r13.zzz + r25.xyz;
        r13.w = dot(r19.yzw, r19.yzw);
        r13.w = sqrt(r13.w);
        r13.z = r13.z / r13.w;
        r13.z = r13.z + r13.z;
        r13.z = sqrt(r13.z);
        r13.z = r2.z * 5 + r13.z;
        r13.z = -0.844799995 + r13.z;
        r25.x = refProbeConstantsCB[r9.w].data[0].w;
        r25.y = refProbeConstantsCB[r9.w].data[1].z;
        r25.z = refProbeConstantsCB[r9.w].data[2].y;
        r26.x = dot(r19.yzw, r25.xyz);
        r27.xy = refProbeConstantsCB[r9.w].data[1].xw;
        r27.z = refProbeConstantsCB[r9.w].data[2].z;
        r26.y = dot(r19.yzw, r27.xyz);
        r28.x = refProbeConstantsCB[r9.w].data[1].y;
        r28.yz = refProbeConstantsCB[r9.w].data[2].xw;
        r26.z = dot(r19.yzw, r28.xyz);
        if (9 == 0) r13.w = 0; else if (9+16 < 32) {         r13.w = (uint)refProbeConstantsCB[r9.w].data[7].z << (32-(9 + 16)); r13.w = (uint)r13.w >> (32-9);        } else r13.w = (uint)refProbeConstantsCB[r9.w].data[7].z >> 16;
        r26.w = (uint)r13.w;
        r19.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r26.xyzw, r13.z).xyz;
        r29.x = dot(r15.yzw, r25.xyz);
        r29.y = dot(r15.yzw, r27.xyz);
        r29.z = dot(r15.yzw, r28.xyz);
        r15.yzw = saturate(r29.xyz * refProbeConstantsCB[r9.w].data[3].xyz + float3(0.5,0.5,0.5));
        r29.xy = refProbeConstantsCB[r9.w].data[4].zw * r15.yz;
        r29.z = refProbeConstantsCB[r9.w].data[5].x * r15.w;
        r15.yzw = refProbeConstantsCB[r9.w].data[5].yzw + r29.xyz;
        r26.x = dot(r11.xyz, r25.xyz);
        r26.y = dot(r11.xyz, r27.xyz);
        r26.z = dot(r11.xyz, r28.xyz);
        r24.xzw = cmp(float3(0,0,0) < r26.xyz);
        r18.z = r24.x ? 0 : 0.5;
        r25.xyz = r18.xyz + r15.yzw;
        r25.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
        r27.xyz = r26.xyz * r26.xyz;
        r27.xyz = r27.xyz * r12.www;
        r20.z = r24.z ? 0 : 0.5;
        r28.xyz = r20.xyz + r15.yzw;
        r28.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r28.xyz, 0).xyz;
        r28.xyz = r28.xyz * r27.yyy;
        r25.xyz = r25.xyz * r27.xxx + r28.xyz;
        r21.z = r24.w ? 0 : 0.5;
        r15.yzw = r21.xyz + r15.yzw;
        r15.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r15.yzw, 0).xyz;
        r15.yzw = r15.yzw * r27.zzz + r25.xyz;
        r24.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r26.xyzw, 6).xyz;
        r25.xyz = r24.xzw * r15.yzw;
        r9.w = dot(r25.xyz, float3(0.212599993,0.715200007,0.0722000003));
        r22.xyz = r15.yzw * r24.xzw + r22.xyz;
        r13.z = r9.w * r6.w;
        r15.yzw = r19.yzw * r12.www;
        r12.w = dot(r15.yzw, float3(0.212599993,0.715200007,0.0722000003));
        r9.w = r6.w * r9.w + r12.w;
        r9.w = r13.z / r9.w;
        r25.x = r22.w;
        r25.yz = r23.yz;
        r23.xyz = r15.yzw * r9.www + r25.xyz;
        r22.w = r23.x;
      }
    }
    r8.w = (int)r8.w + 1;
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
    r15.yzw = r22.xyz;
    r8.w = 0;
    while (true) {
      r9.w = cmp((int)r8.w == 2);
      if (r9.w != 0) break;
      r9.w = r8.w ? r0.x : r9.x;
      r12.w = cmp((uint)r9.w < (uint)r7.w);
      if (r12.w != 0) {
        r9.w = (int)r9.w * 14;
        r25.xyz = -refProbeConstantsCB[r9.w].data[0].xyz + r10.xyz;
        r12.w = 0x0000ffff & (int)refProbeConstantsCB[r9.w].data[7].z;
        if (6 == 0) r13.z = 0; else if (6+25 < 32) {         r13.z = (uint)refProbeConstantsCB[r9.w].data[7].z << (32-(6 + 25)); r13.z = (uint)r13.z >> (32-6);        } else r13.z = (uint)refProbeConstantsCB[r9.w].data[7].z >> 25;
        r13.w = (int)r12.w * 6;
        r14.w = dot(refProbeAttenuationConstantsCB[r13.w].data[0].xyz, r25.xyz);
        r14.w = saturate(refProbeAttenuationConstantsCB[r13.w].data[0].w + r14.w);
        r17.w = dot(refProbeAttenuationConstantsCB[r13.w].data[1].xyz, r25.xyz);
        r17.w = saturate(refProbeAttenuationConstantsCB[r13.w].data[1].w + r17.w);
        r14.w = r17.w * r14.w;
        r17.w = dot(refProbeAttenuationConstantsCB[r13.w].data[2].xyz, r25.xyz);
        r17.w = saturate(refProbeAttenuationConstantsCB[r13.w].data[2].w + r17.w);
        r14.w = r17.w * r14.w;
        r17.w = dot(refProbeAttenuationConstantsCB[r13.w].data[3].xyz, r25.xyz);
        r17.w = saturate(refProbeAttenuationConstantsCB[r13.w].data[3].w + r17.w);
        r14.w = r17.w * r14.w;
        r17.w = dot(refProbeAttenuationConstantsCB[r13.w].data[4].xyz, r25.xyz);
        r17.w = saturate(refProbeAttenuationConstantsCB[r13.w].data[4].w + r17.w);
        r14.w = r17.w * r14.w;
        r17.w = dot(refProbeAttenuationConstantsCB[r13.w].data[5].xyz, r25.xyz);
        r13.w = saturate(refProbeAttenuationConstantsCB[r13.w].data[5].w + r17.w);
        r17.x = r14.w * r13.w;
        r13.w = 1 & (int)refProbeConstantsCB[r9.w].data[6].x;
        r17.xw = r13.ww ? r17.xy : r17.zx;
        r13.w = refProbeConstantsCB[r9.w].data[6].x;
        r26.xy = r17.xw;
        r14.w = 1;
        while (true) {
          r18.w = cmp((int)r14.w >= (int)r13.z);
          if (r18.w != 0) break;
          r18.w = (int)r12.w + (int)r14.w;
          r18.w = (int)r18.w * 6;
          r19.z = dot(refProbeAttenuationConstantsCB[r18.w].data[0].xyz, r25.xyz);
          r19.z = saturate(refProbeAttenuationConstantsCB[r18.w].data[0].w + r19.z);
          r19.z = r26.x * r19.z;
          r19.w = dot(refProbeAttenuationConstantsCB[r18.w].data[1].xyz, r25.xyz);
          r19.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[1].w + r19.w);
          r19.z = r19.z * r19.w;
          r19.w = dot(refProbeAttenuationConstantsCB[r18.w].data[2].xyz, r25.xyz);
          r19.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[2].w + r19.w);
          r19.z = r19.z * r19.w;
          r19.w = dot(refProbeAttenuationConstantsCB[r18.w].data[3].xyz, r25.xyz);
          r19.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[3].w + r19.w);
          r19.z = r19.z * r19.w;
          r19.w = dot(refProbeAttenuationConstantsCB[r18.w].data[4].xyz, r25.xyz);
          r19.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[4].w + r19.w);
          r19.z = r19.z * r19.w;
          r19.w = dot(refProbeAttenuationConstantsCB[r18.w].data[5].xyz, r25.xyz);
          r18.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[5].w + r19.w);
          r26.x = r19.z * r18.w;
          r19.w = (uint)r13.w >> 2;
          if (1 == 0) r20.w = 0; else if (1+2 < 32) {           r20.w = (uint)r13.w << (32-(1 + 2)); r20.w = (uint)r20.w >> (32-1);          } else r20.w = (uint)r13.w >> 2;
          r21.w = (int)r19.w & 2;
          r25.w = max(r26.y, r26.x);
          r18.w = -r19.z * r18.w + 1;
          r18.w = r26.y * r18.w;
          r19.y = r21.w ? r18.w : r25.w;
          r26.xy = r20.ww ? r26.xy : r19.xy;
          r14.w = (int)r14.w + 1;
          r13.w = r19.w;
        }
        r12.w = saturate(r26.y + -r23.w);
        r13.z = refProbeConstantsCB[r9.w].data[6].y * r12.w;
        r13.w = cmp(0 < r13.z);
        if (r13.w != 0) {
          r24.w = r12.w * refProbeConstantsCB[r9.w].data[6].y + r24.w;
          r12.w = refProbeConstantsCB[r9.w].data[7].y * r13.z;
          r27.x = refProbeConstantsCB[r9.w].data[7].w;
          r27.yz = refProbeConstantsCB[r9.w].data[8].xy;
          r13.z = dot(r16.xyz, r27.xyz);
          r13.w = dot(r25.xyz, r27.xyz);
          r13.w = -refProbeConstantsCB[r9.w].data[8].z + r13.w;
          r14.w = cmp(r13.w >= 0);
          r13.w = max(abs(r13.w), r5.w);
          r13.w = r14.w ? r13.w : -r13.w;
          r13.z = max(1.00000001e-07, -r13.z);
          r13.z = r13.w / r13.z;
          r13.z = min(131072, abs(r13.z));
          r27.x = refProbeConstantsCB[r9.w].data[8].w;
          r27.yz = refProbeConstantsCB[r9.w].data[9].xy;
          r13.w = dot(r16.xyz, r27.xyz);
          r14.w = dot(r25.xyz, r27.xyz);
          r14.w = -refProbeConstantsCB[r9.w].data[9].z + r14.w;
          r17.x = cmp(r14.w >= 0);
          r14.w = max(abs(r14.w), r5.w);
          r14.w = r17.x ? r14.w : -r14.w;
          r13.w = max(1.00000001e-07, -r13.w);
          r13.w = r14.w / r13.w;
          r13.z = min(r13.z, abs(r13.w));
          r27.x = refProbeConstantsCB[r9.w].data[9].w;
          r27.yz = refProbeConstantsCB[r9.w].data[10].xy;
          r13.w = dot(r16.xyz, r27.xyz);
          r14.w = dot(r25.xyz, r27.xyz);
          r14.w = -refProbeConstantsCB[r9.w].data[10].z + r14.w;
          r17.x = cmp(r14.w >= 0);
          r14.w = max(abs(r14.w), r5.w);
          r14.w = r17.x ? r14.w : -r14.w;
          r13.w = max(1.00000001e-07, -r13.w);
          r13.w = r14.w / r13.w;
          r13.z = min(r13.z, abs(r13.w));
          r27.x = refProbeConstantsCB[r9.w].data[10].w;
          r27.yz = refProbeConstantsCB[r9.w].data[11].xy;
          r13.w = dot(r16.xyz, r27.xyz);
          r14.w = dot(r25.xyz, r27.xyz);
          r14.w = -refProbeConstantsCB[r9.w].data[11].z + r14.w;
          r17.x = cmp(r14.w >= 0);
          r14.w = max(abs(r14.w), r5.w);
          r14.w = r17.x ? r14.w : -r14.w;
          r13.w = max(1.00000001e-07, -r13.w);
          r13.w = r14.w / r13.w;
          r13.z = min(r13.z, abs(r13.w));
          r27.x = refProbeConstantsCB[r9.w].data[11].w;
          r27.yz = refProbeConstantsCB[r9.w].data[12].xy;
          r13.w = dot(r16.xyz, r27.xyz);
          r14.w = dot(r25.xyz, r27.xyz);
          r14.w = -refProbeConstantsCB[r9.w].data[12].z + r14.w;
          r17.x = cmp(r14.w >= 0);
          r14.w = max(abs(r14.w), r5.w);
          r14.w = r17.x ? r14.w : -r14.w;
          r13.w = max(1.00000001e-07, -r13.w);
          r13.w = r14.w / r13.w;
          r13.z = min(r13.z, abs(r13.w));
          r27.x = refProbeConstantsCB[r9.w].data[12].w;
          r27.yz = refProbeConstantsCB[r9.w].data[13].xy;
          r13.w = dot(r16.xyz, r27.xyz);
          r14.w = dot(r25.xyz, r27.xyz);
          r14.w = -refProbeConstantsCB[r9.w].data[13].z + r14.w;
          r17.x = cmp(r14.w >= 0);
          r14.w = max(abs(r14.w), r5.w);
          r14.w = r17.x ? r14.w : -r14.w;
          r13.w = max(1.00000001e-07, -r13.w);
          r13.w = r14.w / r13.w;
          r13.z = min(r13.z, abs(r13.w));
          r27.x = refProbeConstantsCB[r9.w].data[3].w + r25.x;
          r27.yz = refProbeConstantsCB[r9.w].data[4].xy + r25.yz;
          r19.yzw = r16.xyz * r13.zzz + r27.xyz;
          r13.w = dot(r19.yzw, r19.yzw);
          r13.w = sqrt(r13.w);
          r13.z = r13.z / r13.w;
          r13.z = r13.z + r13.z;
          r13.z = sqrt(r13.z);
          r13.z = r2.z * 5 + r13.z;
          r13.z = -0.844799995 + r13.z;
          r27.x = refProbeConstantsCB[r9.w].data[0].w;
          r27.y = refProbeConstantsCB[r9.w].data[1].z;
          r27.z = refProbeConstantsCB[r9.w].data[2].y;
          r28.x = dot(r19.yzw, r27.xyz);
          r29.xy = refProbeConstantsCB[r9.w].data[1].xw;
          r29.z = refProbeConstantsCB[r9.w].data[2].z;
          r28.y = dot(r19.yzw, r29.xyz);
          r30.x = refProbeConstantsCB[r9.w].data[1].y;
          r30.yz = refProbeConstantsCB[r9.w].data[2].xw;
          r28.z = dot(r19.yzw, r30.xyz);
          if (9 == 0) r13.w = 0; else if (9+16 < 32) {           r13.w = (uint)refProbeConstantsCB[r9.w].data[7].z << (32-(9 + 16)); r13.w = (uint)r13.w >> (32-9);          } else r13.w = (uint)refProbeConstantsCB[r9.w].data[7].z >> 16;
          r28.w = (uint)r13.w;
          r19.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r28.xyzw, r13.z).xyz;
          r31.x = dot(r25.xyz, r27.xyz);
          r31.y = dot(r25.xyz, r29.xyz);
          r31.z = dot(r25.xyz, r30.xyz);
          r25.xyz = saturate(r31.xyz * refProbeConstantsCB[r9.w].data[3].xyz + float3(0.5,0.5,0.5));
          r31.xy = refProbeConstantsCB[r9.w].data[4].zw * r25.xy;
          r31.z = refProbeConstantsCB[r9.w].data[5].x * r25.z;
          r25.xyz = refProbeConstantsCB[r9.w].data[5].yzw + r31.xyz;
          r28.x = dot(r11.xyz, r27.xyz);
          r28.y = dot(r11.xyz, r29.xyz);
          r28.z = dot(r11.xyz, r30.xyz);
          r26.xzw = cmp(float3(0,0,0) < r28.xyz);
          r18.z = r26.x ? 0 : 0.5;
          r27.xyz = r25.xyz + r18.xyz;
          r27.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r27.xyz, 0).xyz;
          r29.xyz = r28.xyz * r28.xyz;
          r29.xyz = r29.xyz * r12.www;
          r20.z = r26.z ? 0 : 0.5;
          r30.xyz = r25.xyz + r20.xyz;
          r30.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r30.xyz, 0).xyz;
          r30.xyz = r30.xyz * r29.yyy;
          r27.xyz = r27.xyz * r29.xxx + r30.xyz;
          r21.z = r26.w ? 0 : 0.5;
          r25.xyz = r25.xyz + r21.xyz;
          r25.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
          r25.xyz = r25.xyz * r29.zzz + r27.xyz;
          r26.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r28.xyzw, 6).xyz;
          r27.xyz = r26.xzw * r25.xyz;
          r9.w = dot(r27.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r15.yzw = r25.xyz * r26.xzw + r15.yzw;
          r13.z = r9.w * r6.w;
          r19.yzw = r19.yzw * r12.www;
          r12.w = dot(r19.yzw, float3(0.212599993,0.715200007,0.0722000003));
          r9.w = r6.w * r9.w + r12.w;
          r9.w = r13.z / r9.w;
          r24.xyz = r19.yzw * r9.www + r24.xyz;
        }
      }
      r8.w = (int)r8.w + 1;
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
  r15.yzw = r22.xyz * r0.xxx;
  r17.xyz = r23.xyz * r0.xxx;
  r2.z = cmp(r23.w < 0.99000001);
  if (r2.z != 0) {
    r2.z = 1 + -r23.w;
    r5.w = sunConstants.globalProbeExposure * r2.z;
    r18.xyz = -globalProbeConstants.data[0].xyz + r10.xyz;
    r19.x = globalProbeConstants.data[0].w * r18.x;
    r19.yz = globalProbeConstants.data[1].xy * r18.yz;
    r18.xyz = saturate(float3(0.5,0.5,0.5) + r19.xyz);
    r19.xy = globalProbeConstants.data[1].zw * r18.xy;
    r19.z = globalProbeConstants.data[2].x * r18.z;
    r18.xyz = globalProbeConstants.data[2].yzw + r19.xyz;
    r19.xyz = cmp(float3(0,0,0) < r11.xyz);
    r19.xyz = r19.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r19.w = 0;
    r20.xyz = r19.wwx + r18.xyz;
    r20.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r20.xyz, 0).xyz;
    r21.xyz = r11.xyz * r11.xyz;
    r21.xyz = r21.xyz * r5.www;
    r23.xyz = r19.wwy + r18.xyz;
    r23.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
    r23.xyz = r23.xyz * r21.yyy;
    r20.xyz = r20.xyz * r21.xxx + r23.xyz;
    r18.xyz = r19.wwz + r18.xyz;
    r18.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r18.xyz, 0).xyz;
    r18.xyz = r18.xyz * r21.zzz + r20.xyz;
    r11.w = 0;
    r19.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, 6).xyz;
    r18.xyz = r19.xyz * r18.xyz;
    r5.w = dot(r18.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r15.yzw = r22.xyz * r0.xxx + r18.xyz;
    r16.w = 0;
    r18.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r16.xyzw, r2.w).xyz;
    r0.x = sunConstants.globalProbeExposure * r2.z + -r5.w;
    r0.x = r2.y * r0.x + r5.w;
    r17.xyz = r18.xyz * r0.xxx + r17.xyz;
  }
  r0.x = r4.z * r1.z + r2.x;
  r0.x = log2(abs(r0.x));
  r0.x = r0.w * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r4.z * r1.z + r0.x;
  r0.x = saturate(-1 + r0.x);
  r15.yzw = r15.yzw * r1.www;
  r1.zw = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r1.zw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r1.zw, 0).xy;
  r2.yzw = r17.xyz * r0.xxx;
  r17.xyz = r2.yzw * r1.zzz;
  r2.yzw = r2.yzw * r1.www;
  r0.x = sqrt(r0.w);
  r0.x = r0.x * 0.5 + 0.5;
  r0.x = r0.x * r0.x;
  r1.z = 0.5 * r0.x;
  r0.x = -r0.x * 0.5 + 1;
  r1.w = r2.x * r0.x + r1.z;
  r0.x = r1.w * r0.x;
  r1.z = r1.z * r1.w;
  r18.x = -r13.x;
  r1.w = ~(int)r9.z;
  r2.x = -r2.x * 0.5 + 1;
  r10.w = 1;
  r19.w = 1;
  r18.z = r13.x;
  r20.z = 1;
  r21.w = 1;
  r22.w = 1;
  r18.yw = r14.xx;
  r13.y = r18.w;
  r23.w = 1;
  r14.y = r18.x;
  r14.z = r13.x;
  r24.w = 1;
  r25.x = r14.x;
  r25.y = r18.x;
  r25.z = r13.x;
  r26.x = r14.x;
  r26.y = r18.x;
  r26.z = r13.x;
  r27.x = r14.x;
  r27.y = r18.x;
  r27.z = r13.x;
  r28.xyz = r15.yzw;
  r29.xyz = r17.xyz;
  r30.xyz = r2.yzw;
  r4.z = 0;
  while (true) {
    r5.w = cmp((int)r4.z == 2);
    if (r5.w != 0) break;
    r5.w = r4.z ? r0.y : r9.y;
    r5.w = (int)r5.w * 15;
    if (3 == 0) r6.w = 0; else if (3+24 < 32) {     r6.w = (uint)lightConstantsCB[r5.w].data[1].w << (32-(3 + 24)); r6.w = (uint)r6.w >> (32-3);    } else r6.w = (uint)lightConstantsCB[r5.w].data[1].w >> 24;
    switch (r6.w) {
      case 4 :      r6.w = cmp(0 < lightConstantsCB[r5.w].data[6].y);
      r31.xy = lightConstantsCB[r5.w].data[5].zw;
      r31.z = lightConstantsCB[r5.w].data[6].x;
      r32.xyz = -r31.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r5.w].data[0].xyz;
      r33.xyz = r32.xyz + -r10.xyz;
      r7.w = dot(r31.xyz, r33.xyz);
      r8.w = saturate(-r7.w / lightConstantsCB[r5.w].data[6].y);
      r34.xyz = r8.www * r31.xyz + r32.xyz;
      r34.xyz = r6.www ? r34.xyz : lightConstantsCB[r5.w].data[0].xyz;
      r34.xyz = r34.xyz + -r10.xyz;
      r9.x = dot(r34.xyz, r34.xyz);
      r9.w = rsqrt(r9.x);
      r34.xyz = r34.xyz * r9.www;
      r9.w = dot(r11.xyz, r34.xyz);
      r11.w = saturate(r9.w);
      r12.w = cmp(0 < r11.w);
      if (r12.w != 0) {
        r12.w = sqrt(r9.x);
        r13.z = lightConstantsCB[r5.w].data[3].x * lightConstantsCB[r5.w].data[3].x;
        r9.x = r13.z / r9.x;
        r9.x = min(1, r9.x);
        r13.zw = saturate(r12.ww * lightConstantsCB[r5.w].data[2].xz + lightConstantsCB[r5.w].data[2].yw);
        r34.xy = r13.zw * r13.zw;
        r13.zw = r13.zw * float2(-2,-2) + float2(3,3);
        r13.zw = r34.xy * r13.zw;
        r9.x = r13.z * r9.x;
        r9.x = r9.x * r13.w;
        r12.w = cmp(0 < r9.x);
        if (r12.w != 0) {
          if (3 == 0) r12.w = 0; else if (3+27 < 32) {           r12.w = (uint)lightConstantsCB[r5.w].data[1].w << (32-(3 + 27)); r12.w = (uint)r12.w >> (32-3);          } else r12.w = (uint)lightConstantsCB[r5.w].data[1].w >> 27;
          r12.w = cmp((int)r12.w != 1);
          if (r12.w != 0) {
            r12.w = abs(r9.w) * -0.200000003 + 0.400000006;
            r34.xyz = r11.xyz * r12.www + r10.xyz;
            r34.xyz = -lightConstantsCB[r5.w].data[4].yzw + r34.xyz;
            r12.w = max(abs(r34.y), abs(r34.z));
            r12.w = max(abs(r34.x), r12.w);
            r12.w = lightConstantsCB[r5.w].data[5].x / r12.w;
            r12.w = lightConstantsCB[r5.w].data[5].y + r12.w;
            r13.z = dot(r34.xyz, r34.xyz);
            r13.z = rsqrt(r13.z);
            r12.w = max(6.10351563e-05, r12.w);
            r13.w = 0x0000ffff & (int)lightConstantsCB[r5.w].data[1].w;
            r35.w = (uint)r13.w;
            r13.w = 0;
            r14.w = 0;
            while (true) {
              r16.w = cmp((int)r14.w >= 8);
              if (r16.w != 0) break;
              r36.y = dot(icb[r14.w+0].yx, r18.xy);
              r36.z = dot(icb[r14.w+0].yx, r18.yz);
              r36.yz = lightConstantsCB[r5.w].data[3].yy * r36.yz;
              r36.x = r36.y * r15.x;
              r36.w = r36.y * r3.x;
              r35.xyz = r34.xyz * r13.zzz + r36.xzw;
              r16.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r35.xyzw, r12.w).x;
              r13.w = r16.w * 0.125 + r13.w;
              r14.w = (int)r14.w + 1;
            }
          } else {
            r13.w = 1;
          }
          r9.x = r13.w * r9.x;
          r12.w = cmp(0 < r9.x);
          if (r12.w != 0) {
            r12.w = lightConstantsCB[r5.w].data[1].z * r0.z;
            r12.w = 0.25 * r12.w;
            r13.z = dot(r31.xyz, r16.xyz);
            r14.w = dot(r16.xyz, r33.xyz);
            r16.w = -r13.z * r13.z + lightConstantsCB[r5.w].data[6].y;
            r7.w = r13.z * r14.w + -r7.w;
            r7.w = saturate(r7.w / r16.w);
            r13.z = r16.w / lightConstantsCB[r5.w].data[6].y;
            r13.z = 10 * r13.z;
            r13.z = min(1, r13.z);
            r7.w = r7.w + -r8.w;
            r7.w = r13.z * r7.w + r8.w;
            r31.xyz = r7.www * r31.xyz + r32.xyz;
            r31.xyz = r6.www ? r31.xyz : lightConstantsCB[r5.w].data[0].xyz;
            r31.xyz = r31.xyz + -r10.xyz;
            r6.w = dot(r31.xyz, r31.xyz);
            r6.w = rsqrt(r6.w);
            r32.xyz = r31.xyz * r6.www;
            if (4 == 0) r7.w = 0; else if (4+16 < 32) {             r7.w = (uint)lightConstantsCB[r5.w].data[1].w << (32-(4 + 16)); r7.w = (uint)r7.w >> (32-4);            } else r7.w = (uint)lightConstantsCB[r5.w].data[1].w >> 16;
            r8.w = cmp(0 < (uint)r7.w);
            r8.w = r8.w ? r9.z : 0;
            if (r8.w != 0) {
              r7.w = (int)r7.w + numLights;
              r7.w = mad((int)r7.w, 15, -15);
              r8.w = abs(r9.w) * -0.200000003 + 0.400000006;
              r19.xyz = r11.xyz * r8.www + r10.xyz;
              r33.xyz = lightConstantsCB[r7.w].data[6].yzw;
              r33.w = lightConstantsCB[r7.w].data[7].x;
              r8.w = dot(r33.xyzw, r19.xyzw);
              r33.xyz = lightConstantsCB[r7.w].data[7].yzw;
              r33.w = lightConstantsCB[r7.w].data[8].x;
              r13.z = dot(r33.xyzw, r19.xyzw);
              r14.w = cmp(r13.z < r8.w);
              if (r14.w == 0) {
                r33.xyz = lightConstantsCB[r7.w].data[4].yzw;
                r33.w = lightConstantsCB[r7.w].data[5].x;
                r33.x = dot(r33.xyzw, r19.xyzw);
                r34.xyz = lightConstantsCB[r7.w].data[5].yzw;
                r34.w = lightConstantsCB[r7.w].data[6].x;
                r33.y = dot(r34.xyzw, r19.xyzw);
                r19.xy = r33.xy / r13.zz;
                r19.xy = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r33.x = lightConstantsCB[r7.w].data[9].w + r19.x;
                r33.y = lightConstantsCB[r7.w].data[10].x + r19.y;
                r19.xy = lightConstantsCB[r7.w].data[9].yz * r33.xy;
                r33.xy = lightConstantsCB[r7.w].data[3].yy / lightConstantsCB[r7.w].data[8].yw;
                r33.zw = float2(1,1) + -r33.xy;
                r33.zw = cmp(r19.xy >= r33.zw);
                r33.xy = cmp(r33.xy >= r19.xy);
                r33.xy = (int2)r33.xy | (int2)r33.zw;
                r16.w = (int)r33.y | (int)r33.x;
                if (r16.w == 0) {
                  r19.xy = saturate(r19.xy);
                  r33.x = r19.x * lightConstantsCB[r7.w].data[8].y + lightConstantsCB[r7.w].data[8].z;
                  r33.y = r19.y * lightConstantsCB[r7.w].data[8].w + lightConstantsCB[r7.w].data[9].x;
                  r17.w = lightConstantsCB[r7.w].data[10].z * r13.z;
                  r8.w = lightConstantsCB[r7.w].data[10].y * r13.z + r8.w;
                  r8.w = r8.w / r17.w;
                }
              } else {
                r16.w = -1;
              }
              r13.z = (int)r14.w | (int)r16.w;
              if (r13.z == 0) {
                r8.w = max(6.10351563e-05, r8.w);
                r13.z = 0x0000ffff & (int)lightConstantsCB[r7.w].data[1].w;
                if (enableDitheredShadow != 0) {
                  r19.z = (uint)r13.z;
                  r14.w = 0;
                  r16.w = 0;
                  while (true) {
                    r17.w = cmp((int)r16.w >= 8);
                    if (r17.w != 0) break;
                    r34.x = dot(icb[r16.w+0].yx, r18.xw);
                    r34.y = dot(icb[r16.w+0].xy, r13.xy);
                    r19.xy = r34.xy * lightConstantsCB[r7.w].data[3].yy + r33.xy;
                    r17.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r8.w).x;
                    r14.w = r17.w * 0.125 + r14.w;
                    r16.w = (int)r16.w + 1;
                  }
                } else {
                  r33.z = (uint)r13.z;
                  r14.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r33.xyz, r8.w).x;
                }
                r7.w = r14.w * r14.w;
                r7.w = r7.w * r14.w;
              } else {
                r7.w = 1;
              }
              r9.x = r9.x * r7.w;
            } else {
              if (4 == 0) r7.w = 0; else if (4+20 < 32) {               r7.w = (uint)lightConstantsCB[r5.w].data[1].w << (32-(4 + 20)); r7.w = (uint)r7.w >> (32-4);              } else r7.w = (uint)lightConstantsCB[r5.w].data[1].w >> 20;
              r8.w = cmp(0 < (uint)r7.w);
              r8.w = r8.w ? r1.w : 0;
              if (r8.w != 0) {
                r7.w = (int)r7.w + numLights;
                r7.w = mad((int)r7.w, 15, -15);
                r8.w = abs(r9.w) * -0.200000003 + 0.400000006;
                r21.xyz = r11.xyz * r8.www + r10.xyz;
                r33.xyz = lightConstantsCB[r7.w].data[6].yzw;
                r33.w = lightConstantsCB[r7.w].data[7].x;
                r8.w = dot(r33.xyzw, r21.xyzw);
                r33.xyz = lightConstantsCB[r7.w].data[7].yzw;
                r33.w = lightConstantsCB[r7.w].data[8].x;
                r13.z = dot(r33.xyzw, r21.xyzw);
                r16.w = cmp(r13.z < r8.w);
                if (r16.w == 0) {
                  r33.xyz = lightConstantsCB[r7.w].data[4].yzw;
                  r33.w = lightConstantsCB[r7.w].data[5].x;
                  r19.x = dot(r33.xyzw, r21.xyzw);
                  r33.xyz = lightConstantsCB[r7.w].data[5].yzw;
                  r33.w = lightConstantsCB[r7.w].data[6].x;
                  r19.y = dot(r33.xyzw, r21.xyzw);
                  r19.xy = r19.xy / r13.zz;
                  r19.xy = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                  r21.x = lightConstantsCB[r7.w].data[9].w + r19.x;
                  r21.y = lightConstantsCB[r7.w].data[10].x + r19.y;
                  r19.xy = lightConstantsCB[r7.w].data[9].yz * r21.xy;
                  r21.xy = lightConstantsCB[r7.w].data[3].yy / lightConstantsCB[r7.w].data[8].yw;
                  r33.xy = float2(1,1) + -r21.xy;
                  r33.xy = cmp(r19.xy >= r33.xy);
                  r21.xy = cmp(r21.xy >= r19.xy);
                  r21.xy = (int2)r21.xy | (int2)r33.xy;
                  r17.w = (int)r21.y | (int)r21.x;
                  if (r17.w == 0) {
                    r19.xy = saturate(r19.xy);
                    r21.x = r19.x * lightConstantsCB[r7.w].data[8].y + lightConstantsCB[r7.w].data[8].z;
                    r21.y = r19.y * lightConstantsCB[r7.w].data[8].w + lightConstantsCB[r7.w].data[9].x;
                    r19.x = lightConstantsCB[r7.w].data[10].z * r13.z;
                    r8.w = lightConstantsCB[r7.w].data[10].y * r13.z + r8.w;
                    r8.w = r8.w / r19.x;
                  }
                } else {
                  r17.w = -1;
                }
                r13.z = (int)r16.w | (int)r17.w;
                if (r13.z == 0) {
                  r8.w = max(6.10351563e-05, r8.w);
                  r13.z = 0x0000ffff & (int)lightConstantsCB[r7.w].data[1].w;
                  if (enableDitheredShadow != 0) {
                    r19.z = (uint)r13.z;
                    r16.w = 0;
                    r17.w = 0;
                    while (true) {
                      r20.w = cmp((int)r17.w >= 8);
                      if (r20.w != 0) break;
                      r33.x = dot(icb[r17.w+0].xy, r14.xy);
                      r33.y = dot(icb[r17.w+0].yx, r14.xz);
                      r19.xy = r33.xy * lightConstantsCB[r7.w].data[3].yy + r21.xy;
                      r19.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r8.w).x;
                      r16.w = r19.x * 0.125 + r16.w;
                      r17.w = (int)r17.w + 1;
                    }
                  } else {
                    r21.z = (uint)r13.z;
                    r16.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r8.w).x;
                  }
                  r7.w = r16.w * r16.w;
                  r7.w = r7.w * r16.w;
                } else {
                  r7.w = 1;
                }
                r9.x = r9.x * r7.w;
              }
            }
            r7.w = -r11.w * r2.x + 1;
            r7.w = r7.w * r7.w;
            r7.w = -r7.w * 0.620000005 + 0.620000005;
            r7.w = r7.w + -r11.w;
            r7.w = r0.w * r7.w + r11.w;
            r7.w = r7.w * r9.x;
            r19.x = lightConstantsCB[r5.w].data[0].w;
            r19.yz = lightConstantsCB[r5.w].data[1].xy;
            r8.w = cmp(0 < r9.w);
            r21.xyz = r7.www * r19.xyz + r28.xyz;
            r7.w = saturate(dot(r11.xyz, r32.xyz));
            r31.xyz = r31.xyz * r6.www + r12.xyz;
            r6.w = dot(r31.xyz, r31.xyz);
            r6.w = rsqrt(r6.w);
            r31.xyz = r31.xyz * r6.www;
            r6.w = dot(r31.xyz, r12.xyz);
            r9.w = dot(r11.xyz, r31.xyz);
            r11.w = abs(r9.w) * r0.z + -abs(r9.w);
            r9.w = abs(r9.w) * r11.w + 1;
            r11.w = r7.w * r0.x + r1.z;
            r9.w = r9.w * r9.w;
            r9.w = r9.w * r11.w;
            r9.w = rcp(r9.w);
            r7.w = r7.w * r12.w;
            r7.w = r9.w * r7.w;
            r7.w = r7.w * r9.x;
            r31.xyz = r7.www * r19.xyz + r30.xyz;
            r6.w = saturate(1 + -r6.w);
            r9.x = r6.w * r6.w;
            r9.x = r9.x * r9.x;
            r6.w = r9.x * r6.w;
            r6.w = r7.w * r6.w;
            r19.xyz = r6.www * r19.xyz + r29.xyz;
            r28.xyz = r8.www ? r21.xyz : r28.xyz;
            r29.xyz = r8.www ? r19.xyz : r29.xyz;
            r30.xyz = r8.www ? r31.xyz : r30.xyz;
          }
        }
      }
      break;
      case 2 :      r19.xy = lightConstantsCB[r5.w].data[3].zw + -r10.xy;
      r19.z = lightConstantsCB[r5.w].data[4].x + -r10.z;
      r6.w = dot(r19.xyz, r19.xyz);
      r6.w = rsqrt(r6.w);
      r21.xyz = r19.xyz * r6.www;
      r7.w = dot(r11.xyz, r21.xyz);
      r8.w = saturate(r7.w);
      r9.x = cmp(0 < r8.w);
      if (r9.x != 0) {
        r31.xyz = lightConstantsCB[r5.w].data[7].yzw;
        r31.w = lightConstantsCB[r5.w].data[8].x;
        r9.x = dot(r31.xyzw, r10.xyzw);
        r9.w = cmp(r9.x < 1);
        if (r9.w != 0) {
          r21.xyz = float3(1,1,1);
          r9.w = 0;
        } else {
          r32.xyz = lightConstantsCB[r5.w].data[0].xyz + -r10.xyz;
          r11.w = lightConstantsCB[r5.w].data[3].x * lightConstantsCB[r5.w].data[3].x;
          r12.w = dot(r32.xyz, r32.xyz);
          r11.w = r11.w / r12.w;
          r11.w = min(1, r11.w);
          r32.xy = saturate(r9.xx * lightConstantsCB[r5.w].data[2].xz + lightConstantsCB[r5.w].data[2].yw);
          r32.zw = r32.xy * r32.xy;
          r32.xy = r32.xy * float2(-2,-2) + float2(3,3);
          r32.xy = r32.zw * r32.xy;
          r11.w = r32.x * r11.w;
          r11.w = r11.w * r32.y;
          r32.xyz = lightConstantsCB[r5.w].data[4].yzw;
          r32.w = lightConstantsCB[r5.w].data[5].x;
          r32.x = dot(r32.xyzw, r10.xyzw);
          r33.xyz = lightConstantsCB[r5.w].data[5].yzw;
          r33.w = lightConstantsCB[r5.w].data[6].x;
          r32.y = dot(r33.xyzw, r10.xyzw);
          r20.xy = r32.xy / r9.xx;
          r9.x = cmp(lightConstantsCB[r5.w].data[10].w < 0.00048828125);
          if (r9.x != 0) {
            r32.xy = saturate(abs(r20.xy) * lightConstantsCB[r5.w].data[12].xy + lightConstantsCB[r5.w].data[12].zw);
            r32.zw = r32.xy * r32.xy;
            r32.xy = r32.xy * float2(-2,-2) + float2(3,3);
            r32.xy = r32.zw * r32.xy;
            r9.x = r32.x * r32.y;
          } else {
            r32.xyzw = saturate(lightConstantsCB[r5.w].data[11].xyzw * abs(r20.yyxx));
            r32.xyzw = log2(r32.xyzw);
            r32.xyzw = lightConstantsCB[r5.w].data[12].zzzz * r32.xyzw;
            r32.xyzw = exp2(r32.xyzw);
            r32.xy = r32.xy + r32.zw;
            r32.xy = log2(r32.xy);
            r32.xy = lightConstantsCB[r5.w].data[12].ww * r32.xy;
            r32.xy = exp2(r32.xy);
            r12.w = lightConstantsCB[r5.w].data[12].x * r32.x;
            r13.z = lightConstantsCB[r5.w].data[12].y * r32.y + -1;
            r12.w = lightConstantsCB[r5.w].data[12].y * r32.y + -r12.w;
            r12.w = saturate(r13.z / r12.w);
            r13.z = r12.w * r12.w;
            r12.w = r12.w * -2 + 3;
            r9.x = r13.z * r12.w;
          }
          r9.w = r11.w * r9.x;
          r9.x = 255 & (int)lightConstantsCB[r5.w].data[14].w;
          if (r9.x != 0) {
            r11.w = dot(lightConstantsCB[r5.w].data[13].xyz, r20.xyz);
            r32.x = lightConstantsCB[r5.w].data[13].w;
            r32.yz = lightConstantsCB[r5.w].data[14].xy;
            r12.w = dot(r32.xyz, r20.xyz);
            r32.x = frac(r11.w);
            r32.y = frac(r12.w);
            r9.x = (int)r9.x + -1;
            r32.z = (uint)r9.x;
            r21.xyz = gCookieArray.SampleLevel(samplerLinear_s, r32.xyz, 0).xyz;
          } else {
            r21.xyz = float3(1,1,1);
          }
        }
        r32.x = lightConstantsCB[r5.w].data[0].w;
        r32.yz = lightConstantsCB[r5.w].data[1].xy;
        r20.xyw = r32.xyz * r21.xyz;
        r9.x = cmp(0 < r9.w);
        if (r9.x != 0) {
          if (3 == 0) r9.x = 0; else if (3+27 < 32) {           r9.x = (uint)lightConstantsCB[r5.w].data[1].w << (32-(3 + 27)); r9.x = (uint)r9.x >> (32-3);          } else r9.x = (uint)lightConstantsCB[r5.w].data[1].w >> 27;
          r9.x = cmp((int)r9.x != 1);
          if (r9.x != 0) {
            r9.x = abs(r7.w) * -0.200000003 + 0.400000006;
            r22.xyz = r11.xyz * r9.xxx + r10.xyz;
            r32.xyz = lightConstantsCB[r5.w].data[6].yzw;
            r32.w = lightConstantsCB[r5.w].data[7].x;
            r9.x = dot(r32.xyzw, r22.xyzw);
            r11.w = dot(r31.xyzw, r22.xyzw);
            r12.w = cmp(r11.w >= r9.x);
            if (r12.w != 0) {
              r31.xyz = lightConstantsCB[r5.w].data[4].yzw;
              r31.w = lightConstantsCB[r5.w].data[5].x;
              r21.x = dot(r31.xyzw, r22.xyzw);
              r31.xyz = lightConstantsCB[r5.w].data[5].yzw;
              r31.w = lightConstantsCB[r5.w].data[6].x;
              r21.y = dot(r31.xyzw, r22.xyzw);
              r21.xy = r21.xy / r11.ww;
              r21.xy = saturate(r21.xy * float2(0.5,-0.5) + float2(0.5,0.5));
              r22.x = r21.x * lightConstantsCB[r5.w].data[8].y + lightConstantsCB[r5.w].data[8].z;
              r22.y = r21.y * lightConstantsCB[r5.w].data[8].w + lightConstantsCB[r5.w].data[9].x;
              r9.x = r9.x / r11.w;
              r9.x = max(6.10351563e-05, r9.x);
              r11.w = 0x0000ffff & (int)lightConstantsCB[r5.w].data[1].w;
              if (enableDitheredShadow != 0) {
                r21.z = (uint)r11.w;
                r12.w = 0;
                r13.z = 0;
                while (true) {
                  r17.w = cmp((int)r13.z >= 8);
                  if (r17.w != 0) break;
                  r31.x = dot(icb[r13.z+0].xy, r25.xy);
                  r31.y = dot(icb[r13.z+0].yx, r25.xz);
                  r21.xy = r31.xy * lightConstantsCB[r5.w].data[3].yy + r22.xy;
                  r17.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r9.x).x;
                  r12.w = r17.w * 0.125 + r12.w;
                  r13.z = (int)r13.z + 1;
                }
              } else {
                r22.z = (uint)r11.w;
                r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r9.x).x;
              }
              r9.x = r12.w * r12.w;
              r9.x = r9.x * r12.w;
            } else {
              r9.x = 1;
            }
          } else {
            r9.x = 1;
          }
          r9.x = r9.w * r9.x;
          r9.w = cmp(0 < r9.x);
          if (r9.w != 0) {
            r9.w = lightConstantsCB[r5.w].data[1].z * r0.z;
            r9.w = r9.w * r8.w;
            if (4 == 0) r11.w = 0; else if (4+16 < 32) {             r11.w = (uint)lightConstantsCB[r5.w].data[1].w << (32-(4 + 16)); r11.w = (uint)r11.w >> (32-4);            } else r11.w = (uint)lightConstantsCB[r5.w].data[1].w >> 16;
            r13.z = cmp(0 < (uint)r11.w);
            r13.z = r13.z ? r9.z : 0;
            if (r13.z != 0) {
              r11.w = (int)r11.w + numLights;
              r11.w = mad((int)r11.w, 15, -15);
              r13.z = abs(r7.w) * -0.200000003 + 0.400000006;
              r23.xyz = r11.xyz * r13.zzz + r10.xyz;
              r31.xyz = lightConstantsCB[r11.w].data[6].yzw;
              r31.w = lightConstantsCB[r11.w].data[7].x;
              r13.z = dot(r31.xyzw, r23.xyzw);
              r31.xyz = lightConstantsCB[r11.w].data[7].yzw;
              r31.w = lightConstantsCB[r11.w].data[8].x;
              r17.w = dot(r31.xyzw, r23.xyzw);
              r21.x = cmp(r17.w < r13.z);
              if (r21.x == 0) {
                r31.xyz = lightConstantsCB[r11.w].data[4].yzw;
                r31.w = lightConstantsCB[r11.w].data[5].x;
                r22.x = dot(r31.xyzw, r23.xyzw);
                r31.xyz = lightConstantsCB[r11.w].data[5].yzw;
                r31.w = lightConstantsCB[r11.w].data[6].x;
                r22.y = dot(r31.xyzw, r23.xyzw);
                r21.yz = r22.xy / r17.ww;
                r21.yz = r21.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                r22.x = lightConstantsCB[r11.w].data[9].w + r21.y;
                r22.y = lightConstantsCB[r11.w].data[10].x + r21.z;
                r21.yz = lightConstantsCB[r11.w].data[9].yz * r22.xy;
                r22.xy = lightConstantsCB[r11.w].data[3].yy / lightConstantsCB[r11.w].data[8].yw;
                r23.xy = float2(1,1) + -r22.xy;
                r23.xy = cmp(r21.yz >= r23.xy);
                r22.xy = cmp(r22.xy >= r21.yz);
                r22.xy = (int2)r22.xy | (int2)r23.xy;
                r22.x = (int)r22.y | (int)r22.x;
                if (r22.x == 0) {
                  r21.yz = saturate(r21.yz);
                  r23.x = r21.y * lightConstantsCB[r11.w].data[8].y + lightConstantsCB[r11.w].data[8].z;
                  r23.y = r21.z * lightConstantsCB[r11.w].data[8].w + lightConstantsCB[r11.w].data[9].x;
                  r21.y = lightConstantsCB[r11.w].data[10].z * r17.w;
                  r13.z = lightConstantsCB[r11.w].data[10].y * r17.w + r13.z;
                  r13.z = r13.z / r21.y;
                }
              } else {
                r22.x = -1;
              }
              r17.w = (int)r21.x | (int)r22.x;
              if (r17.w == 0) {
                r13.z = max(6.10351563e-05, r13.z);
                r17.w = 0x0000ffff & (int)lightConstantsCB[r11.w].data[1].w;
                if (enableDitheredShadow != 0) {
                  r21.z = (uint)r17.w;
                  r22.xy = float2(0,0);
                  while (true) {
                    r22.z = cmp((int)r22.y >= 8);
                    if (r22.z != 0) break;
                    r31.x = dot(icb[r22.y+0].xy, r26.xy);
                    r31.y = dot(icb[r22.y+0].yx, r26.xz);
                    r21.xy = r31.xy * lightConstantsCB[r11.w].data[3].yy + r23.xy;
                    r21.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r13.z).x;
                    r22.x = r21.x * 0.125 + r22.x;
                    r22.y = (int)r22.y + 1;
                  }
                } else {
                  r23.z = (uint)r17.w;
                  r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r13.z).x;
                }
                r11.w = r22.x * r22.x;
                r11.w = r11.w * r22.x;
              } else {
                r11.w = 1;
              }
              r9.x = r11.w * r9.x;
            } else {
              if (4 == 0) r5.w = 0; else if (4+20 < 32) {               r5.w = (uint)lightConstantsCB[r5.w].data[1].w << (32-(4 + 20)); r5.w = (uint)r5.w >> (32-4);              } else r5.w = (uint)lightConstantsCB[r5.w].data[1].w >> 20;
              r11.w = cmp(0 < (uint)r5.w);
              r11.w = r11.w ? r1.w : 0;
              if (r11.w != 0) {
                r5.w = (int)r5.w + numLights;
                r5.w = mad((int)r5.w, 15, -15);
                r11.w = abs(r7.w) * -0.200000003 + 0.400000006;
                r24.xyz = r11.xyz * r11.www + r10.xyz;
                r31.xyz = lightConstantsCB[r5.w].data[6].yzw;
                r31.w = lightConstantsCB[r5.w].data[7].x;
                r11.w = dot(r31.xyzw, r24.xyzw);
                r31.xyz = lightConstantsCB[r5.w].data[7].yzw;
                r31.w = lightConstantsCB[r5.w].data[8].x;
                r13.z = dot(r31.xyzw, r24.xyzw);
                r17.w = cmp(r13.z < r11.w);
                if (r17.w == 0) {
                  r31.xyz = lightConstantsCB[r5.w].data[4].yzw;
                  r31.w = lightConstantsCB[r5.w].data[5].x;
                  r21.x = dot(r31.xyzw, r24.xyzw);
                  r31.xyz = lightConstantsCB[r5.w].data[5].yzw;
                  r31.w = lightConstantsCB[r5.w].data[6].x;
                  r21.y = dot(r31.xyzw, r24.xyzw);
                  r21.xy = r21.xy / r13.zz;
                  r21.xy = r21.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                  r23.x = lightConstantsCB[r5.w].data[9].w + r21.x;
                  r23.y = lightConstantsCB[r5.w].data[10].x + r21.y;
                  r21.xy = lightConstantsCB[r5.w].data[9].yz * r23.xy;
                  r22.yz = lightConstantsCB[r5.w].data[3].yy / lightConstantsCB[r5.w].data[8].yw;
                  r23.xy = float2(1,1) + -r22.yz;
                  r23.xy = cmp(r21.xy >= r23.xy);
                  r22.yz = cmp(r22.yz >= r21.xy);
                  r22.yz = (int2)r22.yz | (int2)r23.xy;
                  r21.z = (int)r22.z | (int)r22.y;
                  if (r21.z == 0) {
                    r21.xy = saturate(r21.xy);
                    r23.x = r21.x * lightConstantsCB[r5.w].data[8].y + lightConstantsCB[r5.w].data[8].z;
                    r23.y = r21.y * lightConstantsCB[r5.w].data[8].w + lightConstantsCB[r5.w].data[9].x;
                    r21.x = lightConstantsCB[r5.w].data[10].z * r13.z;
                    r11.w = lightConstantsCB[r5.w].data[10].y * r13.z + r11.w;
                    r11.w = r11.w / r21.x;
                  }
                } else {
                  r21.z = -1;
                }
                r13.z = (int)r17.w | (int)r21.z;
                if (r13.z == 0) {
                  r11.w = max(6.10351563e-05, r11.w);
                  r13.z = 0x0000ffff & (int)lightConstantsCB[r5.w].data[1].w;
                  if (enableDitheredShadow != 0) {
                    r21.z = (uint)r13.z;
                    r17.w = 0;
                    r22.y = 0;
                    while (true) {
                      r22.z = cmp((int)r22.y >= 8);
                      if (r22.z != 0) break;
                      r24.x = dot(icb[r22.y+0].xy, r27.xy);
                      r24.y = dot(icb[r22.y+0].yx, r27.xz);
                      r21.xy = r24.xy * lightConstantsCB[r5.w].data[3].yy + r23.xy;
                      r21.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r11.w).x;
                      r17.w = r21.x * 0.125 + r17.w;
                      r22.y = (int)r22.y + 1;
                    }
                  } else {
                    r23.z = (uint)r13.z;
                    r17.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r11.w).x;
                  }
                  r5.w = r17.w * r17.w;
                  r5.w = r5.w * r17.w;
                } else {
                  r5.w = 1;
                }
                r9.x = r9.x * r5.w;
              }
            }
            r5.w = -r8.w * r2.x + 1;
            r5.w = r5.w * r5.w;
            r5.w = -r5.w * 0.620000005 + 0.620000005;
            r5.w = r5.w + -r8.w;
            r5.w = r0.w * r5.w + r8.w;
            r5.w = r5.w * r9.x;
            r7.w = cmp(0 < r7.w);
            r21.xyz = r5.www * r20.xyw + r28.xyz;
            r19.xyz = r19.xyz * r6.www + r12.xyz;
            r5.w = dot(r19.xyz, r19.xyz);
            r5.w = rsqrt(r5.w);
            r19.xyz = r19.xyz * r5.www;
            r5.w = dot(r19.xyz, r12.xyz);
            r6.w = dot(r11.xyz, r19.xyz);
            r11.w = abs(r6.w) * r0.z + -abs(r6.w);
            r6.w = abs(r6.w) * r11.w + 1;
            r8.w = r8.w * r0.x + r1.z;
            r6.w = r6.w * r6.w;
            r6.w = r6.w * r8.w;
            r6.w = rcp(r6.w);
            r6.w = r6.w * r9.w;
            r6.w = r9.x * r6.w;
            r6.w = 0.25 * r6.w;
            r19.xyz = r6.www * r20.xyw + r30.xyz;
            r5.w = saturate(1 + -r5.w);
            r8.w = r5.w * r5.w;
            r8.w = r8.w * r8.w;
            r5.w = r8.w * r5.w;
            r5.w = r6.w * r5.w;
            r20.xyw = r5.www * r20.xyw + r29.xyz;
            r28.xyz = r7.www ? r21.xyz : r28.xyz;
            r29.xyz = r7.www ? r20.xyw : r29.xyz;
            r30.xyz = r7.www ? r19.xyz : r30.xyz;
          }
        }
      }
      break;
      default :
      break;
    }
    r4.z = (int)r4.z + 1;
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
  r0.xyz = r29.xyz * r0.xyz;
  r0.xyz = r30.xyz * r2.xyz + r0.xyz;
  r0.xyz = r28.xyz * r3.yzw + r0.xyz;
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