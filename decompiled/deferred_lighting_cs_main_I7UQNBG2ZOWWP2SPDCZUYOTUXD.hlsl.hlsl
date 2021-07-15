// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:23:29 2021

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.x = mad(permuteStride, 30, (int)vThreadGroupID.x);
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
  r1.zw = (uint2)r1.xy;
  r9.xy = float2(0.5,0.5) + r1.zw;
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
  r0.z = dot(r1.zw, float2(0.0671105608,0.00583714992));
  r0.z = frac(r0.z);
  r0.z = 52.9829178 * r0.z;
  r0.z = frac(r0.z);
  r0.z = r0.z * 6.28318548 + gameTick.w;
  sincos(r0.z, r3.x, r13.x);
  r2.x = saturate(dot(r11.xyz, r12.xyz));
  r0.z = dot(-r12.xyz, r11.xyz);
  r0.z = r0.z + r0.z;
  r14.xyz = r11.xyz * -r0.zzz + -r12.xyz;
  r0.z = 17 * r2.y;
  r0.z = exp2(r0.z);
  r0.z = 2 + r0.z;
  r0.z = 2 / r0.z;
  r1.z = sqrt(r0.z);
  r2.zw = renderTargetSize.zw * r9.xy;
  r1.w = gSSAOTexture.SampleLevel(samplerLinearClamp_s, r2.zw, 0).x;
  r2.z = r4.z * r1.w;
  r2.w = 1 + -r2.y;
  r5.w = 5 * r2.w;
  r6.w = r2.w * 5 + -2.5;
  r6.w = 0.400000006 * r6.w;
  r6.w = max(0, r6.w);
  r6.w = 100 * r6.w;
  r9.xy = -r2.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r7.w = exp2(r9.x);
  r7.w = r7.w * r2.x;
  r7.w = 9.1368103 * r7.w;
  r8.w = r5.w * r2.w;
  r8.w = -r8.w * 2.0159049 + r9.y;
  r8.w = exp2(r8.w);
  r8.w = r8.w * r2.x;
  r8.w = 9.70808983 * r8.w;
  r7.w = max(r8.w, r7.w);
  r7.w = max(1.26815999, r7.w);
  r8.w = numRefProbes + -numOverrideProbes;
  r9.xy = (uint2)r0.yx >> int2(24,24);
  if (10 == 0) r0.x = 0; else if (10+12 < 32) {   r0.x = (uint)r0.y << (32-(10 + 12)); r0.x = (uint)r0.x >> (32-10);  } else r0.x = (uint)r0.y >> 12;
  r15.yz = float2(0,1);
  r16.xy = float2(0,0);
  r17.x = 1;
  r18.xy = float2(0,0);
  r19.xy = float2(0,0);
  r20.xyzw = float4(0,0,0,0);
  r21.yzw = float3(0,0,0);
  r0.y = 0;
  while (true) {
    r9.w = cmp((int)r0.y == 2);
    if (r9.w != 0) break;
    r9.w = r0.y ? r0.x : r9.x;
    r12.w = cmp((uint)r9.w >= (uint)r8.w);
    r13.y = cmp((uint)r9.w < numRefProbes);
    r12.w = r12.w ? r13.y : 0;
    if (r12.w != 0) {
      r9.w = (int)r9.w * 14;
      r13.yzw = -refProbeConstantsCB[r9.w].data[0].xyz + r10.xyz;
      r12.w = 0x0000ffff & (int)refProbeConstantsCB[r9.w].data[7].z;
      if (6 == 0) r15.w = 0; else if (6+25 < 32) {       r15.w = (uint)refProbeConstantsCB[r9.w].data[7].z << (32-(6 + 25)); r15.w = (uint)r15.w >> (32-6);      } else r15.w = (uint)refProbeConstantsCB[r9.w].data[7].z >> 25;
      r16.w = (int)r12.w * 6;
      r17.z = dot(refProbeAttenuationConstantsCB[r16.w].data[0].xyz, r13.yzw);
      r17.z = saturate(refProbeAttenuationConstantsCB[r16.w].data[0].w + r17.z);
      r17.w = dot(refProbeAttenuationConstantsCB[r16.w].data[1].xyz, r13.yzw);
      r17.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[1].w + r17.w);
      r17.z = r17.z * r17.w;
      r17.w = dot(refProbeAttenuationConstantsCB[r16.w].data[2].xyz, r13.yzw);
      r17.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[2].w + r17.w);
      r17.z = r17.z * r17.w;
      r17.w = dot(refProbeAttenuationConstantsCB[r16.w].data[3].xyz, r13.yzw);
      r17.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[3].w + r17.w);
      r17.z = r17.z * r17.w;
      r17.w = dot(refProbeAttenuationConstantsCB[r16.w].data[4].xyz, r13.yzw);
      r17.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[4].w + r17.w);
      r17.z = r17.z * r17.w;
      r17.w = dot(refProbeAttenuationConstantsCB[r16.w].data[5].xyz, r13.yzw);
      r16.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[5].w + r17.w);
      r15.x = r17.z * r16.w;
      r16.w = 1 & (int)refProbeConstantsCB[r9.w].data[6].x;
      r17.zw = r16.ww ? r15.xy : r15.zx;
      r15.x = refProbeConstantsCB[r9.w].data[6].x;
      r22.xy = r17.zw;
      r16.w = 1;
      while (true) {
        r18.w = cmp((int)r16.w >= (int)r15.w);
        if (r18.w != 0) break;
        r18.w = (int)r12.w + (int)r16.w;
        r18.w = (int)r18.w * 6;
        r19.w = dot(refProbeAttenuationConstantsCB[r18.w].data[0].xyz, r13.yzw);
        r19.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[0].w + r19.w);
        r19.w = r22.x * r19.w;
        r22.z = dot(refProbeAttenuationConstantsCB[r18.w].data[1].xyz, r13.yzw);
        r22.z = saturate(refProbeAttenuationConstantsCB[r18.w].data[1].w + r22.z);
        r19.w = r22.z * r19.w;
        r22.z = dot(refProbeAttenuationConstantsCB[r18.w].data[2].xyz, r13.yzw);
        r22.z = saturate(refProbeAttenuationConstantsCB[r18.w].data[2].w + r22.z);
        r19.w = r22.z * r19.w;
        r22.z = dot(refProbeAttenuationConstantsCB[r18.w].data[3].xyz, r13.yzw);
        r22.z = saturate(refProbeAttenuationConstantsCB[r18.w].data[3].w + r22.z);
        r19.w = r22.z * r19.w;
        r22.z = dot(refProbeAttenuationConstantsCB[r18.w].data[4].xyz, r13.yzw);
        r22.z = saturate(refProbeAttenuationConstantsCB[r18.w].data[4].w + r22.z);
        r19.w = r22.z * r19.w;
        r22.z = dot(refProbeAttenuationConstantsCB[r18.w].data[5].xyz, r13.yzw);
        r18.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[5].w + r22.z);
        r22.x = r19.w * r18.w;
        r22.z = (uint)r15.x >> 2;
        if (1 == 0) r22.w = 0; else if (1+2 < 32) {         r22.w = (uint)r15.x << (32-(1 + 2)); r22.w = (uint)r22.w >> (32-1);        } else r22.w = (uint)r15.x >> 2;
        r23.x = (int)r22.z & 2;
        r23.y = max(r22.y, r22.x);
        r18.w = -r19.w * r18.w + 1;
        r18.w = r22.y * r18.w;
        r17.y = r23.x ? r18.w : r23.y;
        r22.xy = r22.ww ? r22.xy : r17.xy;
        r16.w = (int)r16.w + 1;
        r15.x = r22.z;
      }
      r22.y = saturate(r22.y);
      r12.w = refProbeConstantsCB[r9.w].data[6].y * r22.y;
      r15.x = cmp(0 < r12.w);
      if (r15.x != 0) {
        r21.w = r22.y * refProbeConstantsCB[r9.w].data[6].y + r21.w;
        r12.w = refProbeConstantsCB[r9.w].data[7].y * r12.w;
        r23.x = refProbeConstantsCB[r9.w].data[7].w;
        r23.yz = refProbeConstantsCB[r9.w].data[8].xy;
        r15.x = dot(r14.xyz, r23.xyz);
        r15.w = dot(r13.yzw, r23.xyz);
        r15.w = -refProbeConstantsCB[r9.w].data[8].z + r15.w;
        r16.w = cmp(r15.w >= 0);
        r15.w = max(abs(r15.w), r6.w);
        r15.w = r16.w ? r15.w : -r15.w;
        r15.x = max(1.00000001e-07, -r15.x);
        r15.x = r15.w / r15.x;
        r15.x = min(131072, abs(r15.x));
        r23.x = refProbeConstantsCB[r9.w].data[8].w;
        r23.yz = refProbeConstantsCB[r9.w].data[9].xy;
        r15.w = dot(r14.xyz, r23.xyz);
        r16.w = dot(r13.yzw, r23.xyz);
        r16.w = -refProbeConstantsCB[r9.w].data[9].z + r16.w;
        r17.y = cmp(r16.w >= 0);
        r16.w = max(abs(r16.w), r6.w);
        r16.w = r17.y ? r16.w : -r16.w;
        r15.w = max(1.00000001e-07, -r15.w);
        r15.w = r16.w / r15.w;
        r15.x = min(r15.x, abs(r15.w));
        r23.x = refProbeConstantsCB[r9.w].data[9].w;
        r23.yz = refProbeConstantsCB[r9.w].data[10].xy;
        r15.w = dot(r14.xyz, r23.xyz);
        r16.w = dot(r13.yzw, r23.xyz);
        r16.w = -refProbeConstantsCB[r9.w].data[10].z + r16.w;
        r17.y = cmp(r16.w >= 0);
        r16.w = max(abs(r16.w), r6.w);
        r16.w = r17.y ? r16.w : -r16.w;
        r15.w = max(1.00000001e-07, -r15.w);
        r15.w = r16.w / r15.w;
        r15.x = min(r15.x, abs(r15.w));
        r23.x = refProbeConstantsCB[r9.w].data[10].w;
        r23.yz = refProbeConstantsCB[r9.w].data[11].xy;
        r15.w = dot(r14.xyz, r23.xyz);
        r16.w = dot(r13.yzw, r23.xyz);
        r16.w = -refProbeConstantsCB[r9.w].data[11].z + r16.w;
        r17.y = cmp(r16.w >= 0);
        r16.w = max(abs(r16.w), r6.w);
        r16.w = r17.y ? r16.w : -r16.w;
        r15.w = max(1.00000001e-07, -r15.w);
        r15.w = r16.w / r15.w;
        r15.x = min(r15.x, abs(r15.w));
        r23.x = refProbeConstantsCB[r9.w].data[11].w;
        r23.yz = refProbeConstantsCB[r9.w].data[12].xy;
        r15.w = dot(r14.xyz, r23.xyz);
        r16.w = dot(r13.yzw, r23.xyz);
        r16.w = -refProbeConstantsCB[r9.w].data[12].z + r16.w;
        r17.y = cmp(r16.w >= 0);
        r16.w = max(abs(r16.w), r6.w);
        r16.w = r17.y ? r16.w : -r16.w;
        r15.w = max(1.00000001e-07, -r15.w);
        r15.w = r16.w / r15.w;
        r15.x = min(r15.x, abs(r15.w));
        r23.x = refProbeConstantsCB[r9.w].data[12].w;
        r23.yz = refProbeConstantsCB[r9.w].data[13].xy;
        r15.w = dot(r14.xyz, r23.xyz);
        r16.w = dot(r13.yzw, r23.xyz);
        r16.w = -refProbeConstantsCB[r9.w].data[13].z + r16.w;
        r17.y = cmp(r16.w >= 0);
        r16.w = max(abs(r16.w), r6.w);
        r16.w = r17.y ? r16.w : -r16.w;
        r15.w = max(1.00000001e-07, -r15.w);
        r15.w = r16.w / r15.w;
        r15.x = min(r15.x, abs(r15.w));
        r23.x = refProbeConstantsCB[r9.w].data[3].w + r13.y;
        r23.yz = refProbeConstantsCB[r9.w].data[4].xy + r13.zw;
        r17.yzw = r14.xyz * r15.xxx + r23.xyz;
        r15.w = dot(r17.yzw, r17.yzw);
        r15.w = sqrt(r15.w);
        r15.x = r15.x / r15.w;
        r15.x = r15.x + r15.x;
        r15.x = sqrt(r15.x);
        r15.x = r2.w * 5 + r15.x;
        r15.x = -0.844799995 + r15.x;
        r23.x = refProbeConstantsCB[r9.w].data[0].w;
        r23.y = refProbeConstantsCB[r9.w].data[1].z;
        r23.z = refProbeConstantsCB[r9.w].data[2].y;
        r24.x = dot(r17.yzw, r23.xyz);
        r25.xy = refProbeConstantsCB[r9.w].data[1].xw;
        r25.z = refProbeConstantsCB[r9.w].data[2].z;
        r24.y = dot(r17.yzw, r25.xyz);
        r26.x = refProbeConstantsCB[r9.w].data[1].y;
        r26.yz = refProbeConstantsCB[r9.w].data[2].xw;
        r24.z = dot(r17.yzw, r26.xyz);
        if (9 == 0) r15.w = 0; else if (9+16 < 32) {         r15.w = (uint)refProbeConstantsCB[r9.w].data[7].z << (32-(9 + 16)); r15.w = (uint)r15.w >> (32-9);        } else r15.w = (uint)refProbeConstantsCB[r9.w].data[7].z >> 16;
        r24.w = (uint)r15.w;
        r17.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r24.xyzw, r15.x).xyz;
        r27.x = dot(r13.yzw, r23.xyz);
        r27.y = dot(r13.yzw, r25.xyz);
        r27.z = dot(r13.yzw, r26.xyz);
        r13.yzw = saturate(r27.xyz * refProbeConstantsCB[r9.w].data[3].xyz + float3(0.5,0.5,0.5));
        r27.xy = refProbeConstantsCB[r9.w].data[4].zw * r13.yz;
        r27.z = refProbeConstantsCB[r9.w].data[5].x * r13.w;
        r13.yzw = refProbeConstantsCB[r9.w].data[5].yzw + r27.xyz;
        r24.x = dot(r11.xyz, r23.xyz);
        r24.y = dot(r11.xyz, r25.xyz);
        r24.z = dot(r11.xyz, r26.xyz);
        r22.xzw = cmp(float3(0,0,0) < r24.xyz);
        r16.z = r22.x ? 0 : 0.5;
        r23.xyz = r16.xyz + r13.yzw;
        r23.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
        r25.xyz = r24.xyz * r24.xyz;
        r25.xyz = r25.xyz * r12.www;
        r18.z = r22.z ? 0 : 0.5;
        r26.xyz = r18.xyz + r13.yzw;
        r26.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
        r26.xyz = r26.xyz * r25.yyy;
        r23.xyz = r23.xyz * r25.xxx + r26.xyz;
        r19.z = r22.w ? 0 : 0.5;
        r13.yzw = r19.xyz + r13.yzw;
        r13.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r13.yzw, 0).xyz;
        r13.yzw = r13.yzw * r25.zzz + r23.xyz;
        r22.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r24.xyzw, 6).xyz;
        r23.xyz = r22.xzw * r13.yzw;
        r9.w = dot(r23.xyz, float3(0.212599993,0.715200007,0.0722000003));
        r20.xyz = r13.yzw * r22.xzw + r20.xyz;
        r13.y = r9.w * r7.w;
        r17.yzw = r17.yzw * r12.www;
        r12.w = dot(r17.yzw, float3(0.212599993,0.715200007,0.0722000003));
        r9.w = r7.w * r9.w + r12.w;
        r9.w = r13.y / r9.w;
        r23.x = r20.w;
        r23.yz = r21.yz;
        r21.xyz = r17.yzw * r9.www + r23.xyz;
        r20.w = r21.x;
      }
    }
    r0.y = (int)r0.y + 1;
  }
  r0.y = cmp(r21.w < 1);
  if (r0.y != 0) {
    r15.yz = float2(0,1);
    r16.xy = float2(0,0);
    r17.x = 1;
    r18.xy = float2(0,0);
    r19.xy = float2(0,0);
    r22.x = r20.w;
    r22.yzw = r21.yzw;
    r13.yzw = r20.xyz;
    r0.y = 0;
    while (true) {
      r9.w = cmp((int)r0.y == 2);
      if (r9.w != 0) break;
      r9.w = r0.y ? r0.x : r9.x;
      r12.w = cmp((uint)r9.w < (uint)r8.w);
      if (r12.w != 0) {
        r9.w = (int)r9.w * 14;
        r23.xyz = -refProbeConstantsCB[r9.w].data[0].xyz + r10.xyz;
        r12.w = 0x0000ffff & (int)refProbeConstantsCB[r9.w].data[7].z;
        if (6 == 0) r15.w = 0; else if (6+25 < 32) {         r15.w = (uint)refProbeConstantsCB[r9.w].data[7].z << (32-(6 + 25)); r15.w = (uint)r15.w >> (32-6);        } else r15.w = (uint)refProbeConstantsCB[r9.w].data[7].z >> 25;
        r16.w = (int)r12.w * 6;
        r17.z = dot(refProbeAttenuationConstantsCB[r16.w].data[0].xyz, r23.xyz);
        r17.z = saturate(refProbeAttenuationConstantsCB[r16.w].data[0].w + r17.z);
        r17.w = dot(refProbeAttenuationConstantsCB[r16.w].data[1].xyz, r23.xyz);
        r17.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[1].w + r17.w);
        r17.z = r17.z * r17.w;
        r17.w = dot(refProbeAttenuationConstantsCB[r16.w].data[2].xyz, r23.xyz);
        r17.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[2].w + r17.w);
        r17.z = r17.z * r17.w;
        r17.w = dot(refProbeAttenuationConstantsCB[r16.w].data[3].xyz, r23.xyz);
        r17.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[3].w + r17.w);
        r17.z = r17.z * r17.w;
        r17.w = dot(refProbeAttenuationConstantsCB[r16.w].data[4].xyz, r23.xyz);
        r17.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[4].w + r17.w);
        r17.z = r17.z * r17.w;
        r17.w = dot(refProbeAttenuationConstantsCB[r16.w].data[5].xyz, r23.xyz);
        r16.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[5].w + r17.w);
        r15.x = r17.z * r16.w;
        r16.w = 1 & (int)refProbeConstantsCB[r9.w].data[6].x;
        r17.zw = r16.ww ? r15.xy : r15.zx;
        r15.x = refProbeConstantsCB[r9.w].data[6].x;
        r24.xy = r17.zw;
        r16.w = 1;
        while (true) {
          r18.w = cmp((int)r16.w >= (int)r15.w);
          if (r18.w != 0) break;
          r18.w = (int)r12.w + (int)r16.w;
          r18.w = (int)r18.w * 6;
          r19.w = dot(refProbeAttenuationConstantsCB[r18.w].data[0].xyz, r23.xyz);
          r19.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[0].w + r19.w);
          r19.w = r24.x * r19.w;
          r23.w = dot(refProbeAttenuationConstantsCB[r18.w].data[1].xyz, r23.xyz);
          r23.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[1].w + r23.w);
          r19.w = r23.w * r19.w;
          r23.w = dot(refProbeAttenuationConstantsCB[r18.w].data[2].xyz, r23.xyz);
          r23.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[2].w + r23.w);
          r19.w = r23.w * r19.w;
          r23.w = dot(refProbeAttenuationConstantsCB[r18.w].data[3].xyz, r23.xyz);
          r23.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[3].w + r23.w);
          r19.w = r23.w * r19.w;
          r23.w = dot(refProbeAttenuationConstantsCB[r18.w].data[4].xyz, r23.xyz);
          r23.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[4].w + r23.w);
          r19.w = r23.w * r19.w;
          r23.w = dot(refProbeAttenuationConstantsCB[r18.w].data[5].xyz, r23.xyz);
          r18.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[5].w + r23.w);
          r24.x = r19.w * r18.w;
          r23.w = (uint)r15.x >> 2;
          if (1 == 0) r24.z = 0; else if (1+2 < 32) {           r24.z = (uint)r15.x << (32-(1 + 2)); r24.z = (uint)r24.z >> (32-1);          } else r24.z = (uint)r15.x >> 2;
          r24.w = (int)r23.w & 2;
          r25.x = max(r24.y, r24.x);
          r18.w = -r19.w * r18.w + 1;
          r18.w = r24.y * r18.w;
          r17.y = r24.w ? r18.w : r25.x;
          r24.xy = r24.zz ? r24.xy : r17.xy;
          r16.w = (int)r16.w + 1;
          r15.x = r23.w;
        }
        r12.w = saturate(r24.y + -r21.w);
        r15.x = refProbeConstantsCB[r9.w].data[6].y * r12.w;
        r15.w = cmp(0 < r15.x);
        if (r15.w != 0) {
          r22.w = r12.w * refProbeConstantsCB[r9.w].data[6].y + r22.w;
          r12.w = refProbeConstantsCB[r9.w].data[7].y * r15.x;
          r25.x = refProbeConstantsCB[r9.w].data[7].w;
          r25.yz = refProbeConstantsCB[r9.w].data[8].xy;
          r15.x = dot(r14.xyz, r25.xyz);
          r15.w = dot(r23.xyz, r25.xyz);
          r15.w = -refProbeConstantsCB[r9.w].data[8].z + r15.w;
          r16.w = cmp(r15.w >= 0);
          r15.w = max(abs(r15.w), r6.w);
          r15.w = r16.w ? r15.w : -r15.w;
          r15.x = max(1.00000001e-07, -r15.x);
          r15.x = r15.w / r15.x;
          r15.x = min(131072, abs(r15.x));
          r25.x = refProbeConstantsCB[r9.w].data[8].w;
          r25.yz = refProbeConstantsCB[r9.w].data[9].xy;
          r15.w = dot(r14.xyz, r25.xyz);
          r16.w = dot(r23.xyz, r25.xyz);
          r16.w = -refProbeConstantsCB[r9.w].data[9].z + r16.w;
          r17.y = cmp(r16.w >= 0);
          r16.w = max(abs(r16.w), r6.w);
          r16.w = r17.y ? r16.w : -r16.w;
          r15.w = max(1.00000001e-07, -r15.w);
          r15.w = r16.w / r15.w;
          r15.x = min(r15.x, abs(r15.w));
          r25.x = refProbeConstantsCB[r9.w].data[9].w;
          r25.yz = refProbeConstantsCB[r9.w].data[10].xy;
          r15.w = dot(r14.xyz, r25.xyz);
          r16.w = dot(r23.xyz, r25.xyz);
          r16.w = -refProbeConstantsCB[r9.w].data[10].z + r16.w;
          r17.y = cmp(r16.w >= 0);
          r16.w = max(abs(r16.w), r6.w);
          r16.w = r17.y ? r16.w : -r16.w;
          r15.w = max(1.00000001e-07, -r15.w);
          r15.w = r16.w / r15.w;
          r15.x = min(r15.x, abs(r15.w));
          r25.x = refProbeConstantsCB[r9.w].data[10].w;
          r25.yz = refProbeConstantsCB[r9.w].data[11].xy;
          r15.w = dot(r14.xyz, r25.xyz);
          r16.w = dot(r23.xyz, r25.xyz);
          r16.w = -refProbeConstantsCB[r9.w].data[11].z + r16.w;
          r17.y = cmp(r16.w >= 0);
          r16.w = max(abs(r16.w), r6.w);
          r16.w = r17.y ? r16.w : -r16.w;
          r15.w = max(1.00000001e-07, -r15.w);
          r15.w = r16.w / r15.w;
          r15.x = min(r15.x, abs(r15.w));
          r25.x = refProbeConstantsCB[r9.w].data[11].w;
          r25.yz = refProbeConstantsCB[r9.w].data[12].xy;
          r15.w = dot(r14.xyz, r25.xyz);
          r16.w = dot(r23.xyz, r25.xyz);
          r16.w = -refProbeConstantsCB[r9.w].data[12].z + r16.w;
          r17.y = cmp(r16.w >= 0);
          r16.w = max(abs(r16.w), r6.w);
          r16.w = r17.y ? r16.w : -r16.w;
          r15.w = max(1.00000001e-07, -r15.w);
          r15.w = r16.w / r15.w;
          r15.x = min(r15.x, abs(r15.w));
          r25.x = refProbeConstantsCB[r9.w].data[12].w;
          r25.yz = refProbeConstantsCB[r9.w].data[13].xy;
          r15.w = dot(r14.xyz, r25.xyz);
          r16.w = dot(r23.xyz, r25.xyz);
          r16.w = -refProbeConstantsCB[r9.w].data[13].z + r16.w;
          r17.y = cmp(r16.w >= 0);
          r16.w = max(abs(r16.w), r6.w);
          r16.w = r17.y ? r16.w : -r16.w;
          r15.w = max(1.00000001e-07, -r15.w);
          r15.w = r16.w / r15.w;
          r15.x = min(r15.x, abs(r15.w));
          r25.x = refProbeConstantsCB[r9.w].data[3].w + r23.x;
          r25.yz = refProbeConstantsCB[r9.w].data[4].xy + r23.yz;
          r17.yzw = r14.xyz * r15.xxx + r25.xyz;
          r15.w = dot(r17.yzw, r17.yzw);
          r15.w = sqrt(r15.w);
          r15.x = r15.x / r15.w;
          r15.x = r15.x + r15.x;
          r15.x = sqrt(r15.x);
          r15.x = r2.w * 5 + r15.x;
          r15.x = -0.844799995 + r15.x;
          r25.x = refProbeConstantsCB[r9.w].data[0].w;
          r25.y = refProbeConstantsCB[r9.w].data[1].z;
          r25.z = refProbeConstantsCB[r9.w].data[2].y;
          r26.x = dot(r17.yzw, r25.xyz);
          r27.xy = refProbeConstantsCB[r9.w].data[1].xw;
          r27.z = refProbeConstantsCB[r9.w].data[2].z;
          r26.y = dot(r17.yzw, r27.xyz);
          r28.x = refProbeConstantsCB[r9.w].data[1].y;
          r28.yz = refProbeConstantsCB[r9.w].data[2].xw;
          r26.z = dot(r17.yzw, r28.xyz);
          if (9 == 0) r15.w = 0; else if (9+16 < 32) {           r15.w = (uint)refProbeConstantsCB[r9.w].data[7].z << (32-(9 + 16)); r15.w = (uint)r15.w >> (32-9);          } else r15.w = (uint)refProbeConstantsCB[r9.w].data[7].z >> 16;
          r26.w = (uint)r15.w;
          r17.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r26.xyzw, r15.x).xyz;
          r29.x = dot(r23.xyz, r25.xyz);
          r29.y = dot(r23.xyz, r27.xyz);
          r29.z = dot(r23.xyz, r28.xyz);
          r23.xyz = saturate(r29.xyz * refProbeConstantsCB[r9.w].data[3].xyz + float3(0.5,0.5,0.5));
          r29.xy = refProbeConstantsCB[r9.w].data[4].zw * r23.xy;
          r29.z = refProbeConstantsCB[r9.w].data[5].x * r23.z;
          r23.xyz = refProbeConstantsCB[r9.w].data[5].yzw + r29.xyz;
          r26.x = dot(r11.xyz, r25.xyz);
          r26.y = dot(r11.xyz, r27.xyz);
          r26.z = dot(r11.xyz, r28.xyz);
          r24.xzw = cmp(float3(0,0,0) < r26.xyz);
          r16.z = r24.x ? 0 : 0.5;
          r25.xyz = r23.xyz + r16.xyz;
          r25.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
          r27.xyz = r26.xyz * r26.xyz;
          r27.xyz = r27.xyz * r12.www;
          r18.z = r24.z ? 0 : 0.5;
          r28.xyz = r23.xyz + r18.xyz;
          r28.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r28.xyz, 0).xyz;
          r28.xyz = r28.xyz * r27.yyy;
          r25.xyz = r25.xyz * r27.xxx + r28.xyz;
          r19.z = r24.w ? 0 : 0.5;
          r23.xyz = r23.xyz + r19.xyz;
          r23.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
          r23.xyz = r23.xyz * r27.zzz + r25.xyz;
          r24.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r26.xyzw, 6).xyz;
          r25.xyz = r24.xzw * r23.xyz;
          r9.w = dot(r25.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r13.yzw = r23.xyz * r24.xzw + r13.yzw;
          r15.x = r9.w * r7.w;
          r17.yzw = r17.yzw * r12.www;
          r12.w = dot(r17.yzw, float3(0.212599993,0.715200007,0.0722000003));
          r9.w = r7.w * r9.w + r12.w;
          r9.w = r15.x / r9.w;
          r22.xyz = r17.yzw * r9.www + r22.xyz;
        }
      }
      r0.y = (int)r0.y + 1;
    }
    r21.xyzw = r22.zxyw;
    r20.xyz = r13.yzw;
    r21.xyzw = r21.yzxw;
  } else {
    r21.x = r20.w;
  }
  r0.x = max(1, r21.w);
  r0.x = rcp(r0.x);
  r21.w = saturate(r21.w);
  r13.yzw = r20.xyz * r0.xxx;
  r15.xyz = r21.xyz * r0.xxx;
  r0.y = cmp(r21.w < 0.99000001);
  if (r0.y != 0) {
    r0.y = 1 + -r21.w;
    r2.w = sunConstants.globalProbeExposure * r0.y;
    r16.xyz = -globalProbeConstants.data[0].xyz + r10.xyz;
    r17.x = globalProbeConstants.data[0].w * r16.x;
    r17.yz = globalProbeConstants.data[1].xy * r16.yz;
    r16.xyz = saturate(float3(0.5,0.5,0.5) + r17.xyz);
    r17.xy = globalProbeConstants.data[1].zw * r16.xy;
    r17.z = globalProbeConstants.data[2].x * r16.z;
    r16.xyz = globalProbeConstants.data[2].yzw + r17.xyz;
    r17.xyz = cmp(float3(0,0,0) < r11.xyz);
    r17.xyz = r17.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r17.w = 0;
    r18.xyz = r17.wwx + r16.xyz;
    r18.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r18.xyz, 0).xyz;
    r19.xyz = r11.xyz * r11.xyz;
    r19.xyz = r19.xyz * r2.www;
    r21.xyz = r17.wwy + r16.xyz;
    r21.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r21.xyz, 0).xyz;
    r21.xyz = r21.xyz * r19.yyy;
    r18.xyz = r18.xyz * r19.xxx + r21.xyz;
    r16.xyz = r17.wwz + r16.xyz;
    r16.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r16.xyz, 0).xyz;
    r16.xyz = r16.xyz * r19.zzz + r18.xyz;
    r11.w = 0;
    r17.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, 6).xyz;
    r16.xyz = r17.xyz * r16.xyz;
    r2.w = dot(r16.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r13.yzw = r20.xyz * r0.xxx + r16.xyz;
    r14.w = 0;
    r16.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r14.xyzw, r5.w).xyz;
    r0.x = sunConstants.globalProbeExposure * r0.y + -r2.w;
    r0.x = r2.y * r0.x + r2.w;
    r15.xyz = r16.xyz * r0.xxx + r15.xyz;
  }
  r0.x = r4.z * r1.w + r2.x;
  r0.x = log2(abs(r0.x));
  r0.x = r1.z * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r4.z * r1.w + r0.x;
  r0.x = saturate(-1 + r0.x);
  r16.xyz = r13.yzw * r2.zzz;
  r17.xyz = r0.www ? r16.xyz : 0;
  r2.yw = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r2.yw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r2.yw, 0).xy;
  r15.xyz = r15.xyz * r0.xxx;
  r18.xyz = r15.xyz * r2.yyy;
  r15.xyz = r15.xyz * r2.www;
  r0.x = sqrt(r1.z);
  r0.x = r0.x * 0.5 + 0.5;
  r0.x = r0.x * r0.x;
  r0.y = 0.5 * r0.x;
  r0.x = -r0.x * 0.5 + 1;
  r1.w = r2.x * r0.x + r0.y;
  r0.xy = r1.ww * r0.xy;
  r1.w = (int)r9.y * 15;
  if (3 == 0) r2.y = 0; else if (3+24 < 32) {   r2.y = (uint)lightConstantsCB[r1.w].data[1].w << (32-(3 + 24)); r2.y = (uint)r2.y >> (32-3);  } else r2.y = (uint)lightConstantsCB[r1.w].data[1].w >> 24;
  switch (r2.y) {
    case 4 :    r2.y = cmp(0 < lightConstantsCB[r1.w].data[6].y);
    r19.xy = lightConstantsCB[r1.w].data[5].zw;
    r19.z = lightConstantsCB[r1.w].data[6].x;
    r9.xyw = -r19.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r1.w].data[0].xyz;
    r20.xyz = r9.xyw + -r10.xyz;
    r2.w = dot(r19.xyz, r20.xyz);
    r4.z = saturate(-r2.w / lightConstantsCB[r1.w].data[6].y);
    r21.xyz = r4.zzz * r19.xyz + r9.xyw;
    r21.xyz = r2.yyy ? r21.xyz : lightConstantsCB[r1.w].data[0].xyz;
    r21.xyz = r21.xyz + -r10.xyz;
    r5.w = dot(r21.xyz, r21.xyz);
    r6.w = rsqrt(r5.w);
    r21.xyz = r21.xyz * r6.www;
    r6.w = dot(r11.xyz, r21.xyz);
    r7.w = saturate(r6.w);
    r7.w = r0.w ? abs(r6.w) : r7.w;
    r8.w = cmp(0 < r7.w);
    if (r8.w != 0) {
      r8.w = sqrt(r5.w);
      r11.w = lightConstantsCB[r1.w].data[3].x * lightConstantsCB[r1.w].data[3].x;
      r5.w = r11.w / r5.w;
      r5.w = min(1, r5.w);
      r21.xy = saturate(r8.ww * lightConstantsCB[r1.w].data[2].xz + lightConstantsCB[r1.w].data[2].yw);
      r21.zw = r21.xy * r21.xy;
      r21.xy = r21.xy * float2(-2,-2) + float2(3,3);
      r21.xy = r21.zw * r21.xy;
      r5.w = r21.x * r5.w;
      r5.w = r5.w * r21.y;
      r8.w = cmp(0 < r5.w);
      if (r8.w != 0) {
        if (3 == 0) r8.w = 0; else if (3+27 < 32) {         r8.w = (uint)lightConstantsCB[r1.w].data[1].w << (32-(3 + 27)); r8.w = (uint)r8.w >> (32-3);        } else r8.w = (uint)lightConstantsCB[r1.w].data[1].w >> 27;
        r8.w = cmp((int)r8.w != 1);
        if (r8.w != 0) {
          r21.xy = (uint2)r1.yx;
          r8.w = dot(r21.xy, float2(0.0671105608,0.00583714992));
          r8.w = frac(r8.w);
          r8.w = 52.9829178 * r8.w;
          r8.w = frac(r8.w);
          r8.w = r8.w * 6.28318548 + gameTick.w;
          sincos(r8.w, r21.x, r22.x);
          r8.w = abs(r6.w) * -0.200000003 + 0.400000006;
          r11.w = cmp(r6.w < 0);
          r11.w = r0.w ? r11.w : 0;
          r8.w = r11.w ? -r8.w : r8.w;
          r21.yzw = r11.xyz * r8.www + r10.xyz;
          r21.yzw = -lightConstantsCB[r1.w].data[4].yzw + r21.yzw;
          r8.w = max(abs(r21.z), abs(r21.w));
          r8.w = max(abs(r21.y), r8.w);
          r8.w = lightConstantsCB[r1.w].data[5].x / r8.w;
          r8.w = lightConstantsCB[r1.w].data[5].y + r8.w;
          r11.w = dot(r21.yzw, r21.yzw);
          r11.w = rsqrt(r11.w);
          r8.w = max(6.10351563e-05, r8.w);
          r12.w = 0x0000ffff & (int)lightConstantsCB[r1.w].data[1].w;
          r23.x = -r3.x;
          r24.w = (uint)r12.w;
          r23.y = r13.x;
          r23.z = r3.x;
          r12.w = 0;
          r14.w = 0;
          while (true) {
            r15.w = cmp((int)r14.w >= 8);
            if (r15.w != 0) break;
            r22.y = dot(icb[r14.w+0].yx, r23.xy);
            r22.z = dot(icb[r14.w+0].yx, r23.yz);
            r25.yz = lightConstantsCB[r1.w].data[3].yy * r22.yz;
            r25.x = r25.y * r22.x;
            r25.w = r25.y * r21.x;
            r24.xyz = r21.yzw * r11.www + r25.xzw;
            r15.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyzw, r8.w).x;
            r12.w = r15.w * 0.125 + r12.w;
            r14.w = (int)r14.w + 1;
          }
        } else {
          r12.w = 1;
        }
        r5.w = r12.w * r5.w;
        r8.w = cmp(0 < r5.w);
        if (r8.w != 0) {
          r8.w = lightConstantsCB[r1.w].data[1].z * r0.z;
          r8.w = 0.25 * r8.w;
          r11.w = dot(r19.xyz, r14.xyz);
          r12.w = dot(r14.xyz, r20.xyz);
          r14.x = -r11.w * r11.w + lightConstantsCB[r1.w].data[6].y;
          r2.w = r11.w * r12.w + -r2.w;
          r2.w = saturate(r2.w / r14.x);
          r11.w = r14.x / lightConstantsCB[r1.w].data[6].y;
          r11.w = 10 * r11.w;
          r11.w = min(1, r11.w);
          r2.w = r2.w + -r4.z;
          r2.w = r11.w * r2.w + r4.z;
          r9.xyw = r2.www * r19.xyz + r9.xyw;
          r9.xyw = r2.yyy ? r9.xyw : lightConstantsCB[r1.w].data[0].xyz;
          r9.xyw = r9.xyw + -r10.xyz;
          r2.y = dot(r9.xyw, r9.xyw);
          r2.y = rsqrt(r2.y);
          r14.xyz = r9.xyw * r2.yyy;
          if (4 == 0) r2.w = 0; else if (4+16 < 32) {           r2.w = (uint)lightConstantsCB[r1.w].data[1].w << (32-(4 + 16)); r2.w = (uint)r2.w >> (32-4);          } else r2.w = (uint)lightConstantsCB[r1.w].data[1].w >> 16;
          r4.z = cmp(0 < (uint)r2.w);
          r4.z = r4.z ? r9.z : 0;
          if (r4.z != 0) {
            r2.w = (int)r2.w + numLights;
            r2.w = mad((int)r2.w, 15, -15);
            r4.z = abs(r6.w) * -0.200000003 + 0.400000006;
            r11.w = cmp(r6.w < 0);
            r11.w = r0.w ? r11.w : 0;
            r4.z = r11.w ? -r4.z : r4.z;
            r19.xyz = r11.xyz * r4.zzz + r10.xyz;
            r20.xyz = lightConstantsCB[r2.w].data[6].yzw;
            r20.w = lightConstantsCB[r2.w].data[7].x;
            r19.w = 1;
            r4.z = dot(r20.xyzw, r19.xyzw);
            r20.xyz = lightConstantsCB[r2.w].data[7].yzw;
            r20.w = lightConstantsCB[r2.w].data[8].x;
            r11.w = dot(r20.xyzw, r19.xyzw);
            r12.w = cmp(r11.w < r4.z);
            if (r12.w == 0) {
              r20.xyz = lightConstantsCB[r2.w].data[4].yzw;
              r20.w = lightConstantsCB[r2.w].data[5].x;
              r20.x = dot(r20.xyzw, r19.xyzw);
              r21.xyz = lightConstantsCB[r2.w].data[5].yzw;
              r21.w = lightConstantsCB[r2.w].data[6].x;
              r20.y = dot(r21.xyzw, r19.xyzw);
              r19.xy = r20.xy / r11.ww;
              r19.xy = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
              r20.x = lightConstantsCB[r2.w].data[9].w + r19.x;
              r20.y = lightConstantsCB[r2.w].data[10].x + r19.y;
              r19.xy = lightConstantsCB[r2.w].data[9].yz * r20.xy;
              r19.zw = lightConstantsCB[r2.w].data[3].yy / lightConstantsCB[r2.w].data[8].yw;
              r20.xy = float2(1,1) + -r19.zw;
              r20.xy = cmp(r19.xy >= r20.xy);
              r19.zw = cmp(r19.zw >= r19.xy);
              r19.zw = (int2)r19.zw | (int2)r20.xy;
              r14.w = (int)r19.w | (int)r19.z;
              if (r14.w == 0) {
                r19.xy = saturate(r19.xy);
                r20.x = r19.x * lightConstantsCB[r2.w].data[8].y + lightConstantsCB[r2.w].data[8].z;
                r20.y = r19.y * lightConstantsCB[r2.w].data[8].w + lightConstantsCB[r2.w].data[9].x;
                r15.w = lightConstantsCB[r2.w].data[10].z * r11.w;
                r4.z = lightConstantsCB[r2.w].data[10].y * r11.w + r4.z;
                r4.z = r4.z / r15.w;
              }
            } else {
              r14.w = -1;
            }
            r11.w = (int)r12.w | (int)r14.w;
            if (r11.w == 0) {
              r4.z = max(6.10351563e-05, r4.z);
              r11.w = 0x0000ffff & (int)lightConstantsCB[r2.w].data[1].w;
              if (enableDitheredShadow != 0) {
                r19.x = -r3.x;
                r21.z = (uint)r11.w;
                r19.y = r13.x;
                r19.z = r3.x;
                r12.w = 0;
                r14.w = 0;
                while (true) {
                  r15.w = cmp((int)r14.w >= 8);
                  if (r15.w != 0) break;
                  r22.x = dot(icb[r14.w+0].yx, r19.xy);
                  r22.y = dot(icb[r14.w+0].yx, r19.yz);
                  r21.xy = r22.xy * lightConstantsCB[r2.w].data[3].yy + r20.xy;
                  r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r4.z).x;
                  r12.w = r15.w * 0.125 + r12.w;
                  r14.w = (int)r14.w + 1;
                }
              } else {
                r20.z = (uint)r11.w;
                r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r4.z).x;
              }
              r2.w = r12.w * r12.w;
              r2.w = r2.w * r12.w;
            } else {
              r2.w = 1;
            }
            r5.w = r5.w * r2.w;
          } else {
            if (4 == 0) r2.w = 0; else if (4+20 < 32) {             r2.w = (uint)lightConstantsCB[r1.w].data[1].w << (32-(4 + 20)); r2.w = (uint)r2.w >> (32-4);            } else r2.w = (uint)lightConstantsCB[r1.w].data[1].w >> 20;
            r4.z = cmp(0 < (uint)r2.w);
            r11.w = ~(int)r9.z;
            r4.z = r4.z ? r11.w : 0;
            if (r4.z != 0) {
              r2.w = (int)r2.w + numLights;
              r2.w = mad((int)r2.w, 15, -15);
              r4.z = abs(r6.w) * -0.200000003 + 0.400000006;
              r11.w = cmp(r6.w < 0);
              r11.w = r0.w ? r11.w : 0;
              r4.z = r11.w ? -r4.z : r4.z;
              r19.xyz = r11.xyz * r4.zzz + r10.xyz;
              r20.xyz = lightConstantsCB[r2.w].data[6].yzw;
              r20.w = lightConstantsCB[r2.w].data[7].x;
              r19.w = 1;
              r4.z = dot(r20.xyzw, r19.xyzw);
              r20.xyz = lightConstantsCB[r2.w].data[7].yzw;
              r20.w = lightConstantsCB[r2.w].data[8].x;
              r11.w = dot(r20.xyzw, r19.xyzw);
              r12.w = cmp(r11.w < r4.z);
              if (r12.w == 0) {
                r20.xyz = lightConstantsCB[r2.w].data[4].yzw;
                r20.w = lightConstantsCB[r2.w].data[5].x;
                r20.x = dot(r20.xyzw, r19.xyzw);
                r21.xyz = lightConstantsCB[r2.w].data[5].yzw;
                r21.w = lightConstantsCB[r2.w].data[6].x;
                r20.y = dot(r21.xyzw, r19.xyzw);
                r19.xy = r20.xy / r11.ww;
                r19.xy = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r20.x = lightConstantsCB[r2.w].data[9].w + r19.x;
                r20.y = lightConstantsCB[r2.w].data[10].x + r19.y;
                r19.xy = lightConstantsCB[r2.w].data[9].yz * r20.xy;
                r19.zw = lightConstantsCB[r2.w].data[3].yy / lightConstantsCB[r2.w].data[8].yw;
                r20.xy = float2(1,1) + -r19.zw;
                r20.xy = cmp(r19.xy >= r20.xy);
                r19.zw = cmp(r19.zw >= r19.xy);
                r19.zw = (int2)r19.zw | (int2)r20.xy;
                r14.w = (int)r19.w | (int)r19.z;
                if (r14.w == 0) {
                  r19.xy = saturate(r19.xy);
                  r20.x = r19.x * lightConstantsCB[r2.w].data[8].y + lightConstantsCB[r2.w].data[8].z;
                  r20.y = r19.y * lightConstantsCB[r2.w].data[8].w + lightConstantsCB[r2.w].data[9].x;
                  r15.w = lightConstantsCB[r2.w].data[10].z * r11.w;
                  r4.z = lightConstantsCB[r2.w].data[10].y * r11.w + r4.z;
                  r4.z = r4.z / r15.w;
                }
              } else {
                r14.w = -1;
              }
              r11.w = (int)r12.w | (int)r14.w;
              if (r11.w == 0) {
                r4.z = max(6.10351563e-05, r4.z);
                r11.w = 0x0000ffff & (int)lightConstantsCB[r2.w].data[1].w;
                if (enableDitheredShadow != 0) {
                  r19.x = -r3.x;
                  r21.z = (uint)r11.w;
                  r19.y = r13.x;
                  r19.z = r3.x;
                  r12.w = 0;
                  r14.w = 0;
                  while (true) {
                    r15.w = cmp((int)r14.w >= 8);
                    if (r15.w != 0) break;
                    r22.x = dot(icb[r14.w+0].yx, r19.xy);
                    r22.y = dot(icb[r14.w+0].yx, r19.yz);
                    r21.xy = r22.xy * lightConstantsCB[r2.w].data[3].yy + r20.xy;
                    r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r4.z).x;
                    r12.w = r15.w * 0.125 + r12.w;
                    r14.w = (int)r14.w + 1;
                  }
                } else {
                  r20.z = (uint)r11.w;
                  r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r4.z).x;
                }
                r2.w = r12.w * r12.w;
                r2.w = r2.w * r12.w;
              } else {
                r2.w = 1;
              }
              r5.w = r5.w * r2.w;
            }
          }
          r2.w = -r2.x * 0.5 + 1;
          r2.w = -r7.w * r2.w + 1;
          r2.w = r2.w * r2.w;
          r2.w = -r2.w * 0.620000005 + 0.620000005;
          r2.w = r2.w + -r7.w;
          r2.w = r1.z * r2.w + r7.w;
          r2.w = r2.w * r5.w;
          r19.x = lightConstantsCB[r1.w].data[0].w;
          r19.yz = lightConstantsCB[r1.w].data[1].xy;
          r20.xyz = r19.xyz * r2.www;
          r4.z = cmp(0 < r6.w);
          r20.xyz = r13.yzw * r2.zzz + r20.xyz;
          r6.w = saturate(dot(r11.xyz, r14.xyz));
          r9.xyw = r9.xyw * r2.yyy + r12.xyz;
          r2.y = dot(r9.xyw, r9.xyw);
          r2.y = rsqrt(r2.y);
          r9.xyw = r9.xyw * r2.yyy;
          r2.y = dot(r9.xyw, r12.xyz);
          r7.w = dot(r11.xyz, r9.xyw);
          r9.x = abs(r7.w) * r0.z + -abs(r7.w);
          r7.w = abs(r7.w) * r9.x + 1;
          r9.x = r6.w * r0.x + r0.y;
          r7.w = r7.w * r7.w;
          r7.w = r7.w * r9.x;
          r7.w = rcp(r7.w);
          r6.w = r6.w * r8.w;
          r6.w = r7.w * r6.w;
          r5.w = r6.w * r5.w;
          r9.xyw = r5.www * r19.xyz + r15.xyz;
          r2.y = saturate(1 + -r2.y);
          r6.w = r2.y * r2.y;
          r6.w = r6.w * r6.w;
          r2.y = r6.w * r2.y;
          r2.y = r5.w * r2.y;
          r14.xyz = r2.yyy * r19.xyz + r18.xyz;
          r19.xyz = r2.www * r19.xyz + r17.xyz;
          r19.xyz = r0.www ? r19.xyz : 0;
          r16.xyz = r4.zzz ? r20.xyz : r16.xyz;
          r17.xyz = r4.zzz ? r17.xyz : r19.xyz;
          r18.xyz = r4.zzz ? r14.xyz : r18.xyz;
          r15.xyz = r4.zzz ? r9.xyw : r15.xyz;
        }
      }
    }
    break;
    case 2 :    r14.xy = lightConstantsCB[r1.w].data[3].zw + -r10.xy;
    r14.z = lightConstantsCB[r1.w].data[4].x + -r10.z;
    r2.y = dot(r14.xyz, r14.xyz);
    r2.y = rsqrt(r2.y);
    r9.xyw = r14.xyz * r2.yyy;
    r2.w = dot(r11.xyz, r9.xyw);
    r4.z = saturate(r2.w);
    r5.w = r0.w ? abs(r2.w) : r4.z;
    r6.w = cmp(0 < r5.w);
    if (r6.w != 0) {
      r19.xyz = lightConstantsCB[r1.w].data[7].yzw;
      r19.w = lightConstantsCB[r1.w].data[8].x;
      r10.w = 1;
      r6.w = dot(r19.xyzw, r10.xyzw);
      r7.w = cmp(r6.w < 1);
      if (r7.w != 0) {
        r9.xyw = float3(1,1,1);
        r7.w = 0;
      } else {
        r20.xyz = lightConstantsCB[r1.w].data[0].xyz + -r10.xyz;
        r8.w = lightConstantsCB[r1.w].data[3].x * lightConstantsCB[r1.w].data[3].x;
        r11.w = dot(r20.xyz, r20.xyz);
        r8.w = r8.w / r11.w;
        r8.w = min(1, r8.w);
        r20.xy = saturate(r6.ww * lightConstantsCB[r1.w].data[2].xz + lightConstantsCB[r1.w].data[2].yw);
        r20.zw = r20.xy * r20.xy;
        r20.xy = r20.xy * float2(-2,-2) + float2(3,3);
        r20.xy = r20.zw * r20.xy;
        r8.w = r20.x * r8.w;
        r8.w = r8.w * r20.y;
        r20.xyz = lightConstantsCB[r1.w].data[4].yzw;
        r20.w = lightConstantsCB[r1.w].data[5].x;
        r20.x = dot(r20.xyzw, r10.xyzw);
        r21.xyz = lightConstantsCB[r1.w].data[5].yzw;
        r21.w = lightConstantsCB[r1.w].data[6].x;
        r20.y = dot(r21.xyzw, r10.xyzw);
        r20.xy = r20.xy / r6.ww;
        r6.w = cmp(lightConstantsCB[r1.w].data[10].w < 0.00048828125);
        if (r6.w != 0) {
          r21.xy = saturate(abs(r20.xy) * lightConstantsCB[r1.w].data[12].xy + lightConstantsCB[r1.w].data[12].zw);
          r21.zw = r21.xy * r21.xy;
          r21.xy = r21.xy * float2(-2,-2) + float2(3,3);
          r21.xy = r21.zw * r21.xy;
          r6.w = r21.x * r21.y;
        } else {
          r21.xyzw = saturate(lightConstantsCB[r1.w].data[11].xyzw * abs(r20.yyxx));
          r21.xyzw = log2(r21.xyzw);
          r21.xyzw = lightConstantsCB[r1.w].data[12].zzzz * r21.xyzw;
          r21.xyzw = exp2(r21.xyzw);
          r21.xy = r21.xy + r21.zw;
          r21.xy = log2(r21.xy);
          r21.xy = lightConstantsCB[r1.w].data[12].ww * r21.xy;
          r21.xy = exp2(r21.xy);
          r10.w = lightConstantsCB[r1.w].data[12].x * r21.x;
          r11.w = lightConstantsCB[r1.w].data[12].y * r21.y + -1;
          r10.w = lightConstantsCB[r1.w].data[12].y * r21.y + -r10.w;
          r10.w = saturate(r11.w / r10.w);
          r11.w = r10.w * r10.w;
          r10.w = r10.w * -2 + 3;
          r6.w = r11.w * r10.w;
        }
        r7.w = r8.w * r6.w;
        r6.w = 255 & (int)lightConstantsCB[r1.w].data[14].w;
        if (r6.w != 0) {
          r20.z = 1;
          r8.w = dot(lightConstantsCB[r1.w].data[13].xyz, r20.xyz);
          r21.x = lightConstantsCB[r1.w].data[13].w;
          r21.yz = lightConstantsCB[r1.w].data[14].xy;
          r10.w = dot(r21.xyz, r20.xyz);
          r20.x = frac(r8.w);
          r20.y = frac(r10.w);
          r6.w = (int)r6.w + -1;
          r20.z = (uint)r6.w;
          r9.xyw = gCookieArray.SampleLevel(samplerLinear_s, r20.xyz, 0).xyz;
        } else {
          r9.xyw = float3(1,1,1);
        }
      }
      r20.x = lightConstantsCB[r1.w].data[0].w;
      r20.yz = lightConstantsCB[r1.w].data[1].xy;
      r9.xyw = r20.xyz * r9.xyw;
      r6.w = cmp(0 < r7.w);
      if (r6.w != 0) {
        if (3 == 0) r6.w = 0; else if (3+27 < 32) {         r6.w = (uint)lightConstantsCB[r1.w].data[1].w << (32-(3 + 27)); r6.w = (uint)r6.w >> (32-3);        } else r6.w = (uint)lightConstantsCB[r1.w].data[1].w >> 27;
        r6.w = cmp((int)r6.w != 1);
        if (r6.w != 0) {
          r6.w = abs(r2.w) * -0.200000003 + 0.400000006;
          r8.w = cmp(r2.w < 0);
          r8.w = r0.w ? r8.w : 0;
          r6.w = r8.w ? -r6.w : r6.w;
          r20.xyz = r11.xyz * r6.www + r10.xyz;
          r21.xyz = lightConstantsCB[r1.w].data[6].yzw;
          r21.w = lightConstantsCB[r1.w].data[7].x;
          r20.w = 1;
          r6.w = dot(r21.xyzw, r20.xyzw);
          r8.w = dot(r19.xyzw, r20.xyzw);
          r10.w = cmp(r8.w >= r6.w);
          if (r10.w != 0) {
            r19.xyz = lightConstantsCB[r1.w].data[4].yzw;
            r19.w = lightConstantsCB[r1.w].data[5].x;
            r19.x = dot(r19.xyzw, r20.xyzw);
            r21.xyz = lightConstantsCB[r1.w].data[5].yzw;
            r21.w = lightConstantsCB[r1.w].data[6].x;
            r19.y = dot(r21.xyzw, r20.xyzw);
            r19.xy = r19.xy / r8.ww;
            r19.xy = saturate(r19.xy * float2(0.5,-0.5) + float2(0.5,0.5));
            r20.x = r19.x * lightConstantsCB[r1.w].data[8].y + lightConstantsCB[r1.w].data[8].z;
            r20.y = r19.y * lightConstantsCB[r1.w].data[8].w + lightConstantsCB[r1.w].data[9].x;
            r6.w = r6.w / r8.w;
            r6.w = max(6.10351563e-05, r6.w);
            r8.w = 0x0000ffff & (int)lightConstantsCB[r1.w].data[1].w;
            if (enableDitheredShadow != 0) {
              r19.x = -r3.x;
              r21.z = (uint)r8.w;
              r19.y = r13.x;
              r19.z = r3.x;
              r10.w = 0;
              r11.w = 0;
              while (true) {
                r12.w = cmp((int)r11.w >= 8);
                if (r12.w != 0) break;
                r22.x = dot(icb[r11.w+0].yx, r19.xy);
                r22.y = dot(icb[r11.w+0].yx, r19.yz);
                r21.xy = r22.xy * lightConstantsCB[r1.w].data[3].yy + r20.xy;
                r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r6.w).x;
                r10.w = r12.w * 0.125 + r10.w;
                r11.w = (int)r11.w + 1;
              }
            } else {
              r20.z = (uint)r8.w;
              r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r6.w).x;
            }
            r6.w = r10.w * r10.w;
            r6.w = r6.w * r10.w;
          } else {
            r6.w = 1;
          }
        } else {
          r6.w = 1;
        }
        r6.w = r7.w * r6.w;
        r7.w = cmp(0 < r6.w);
        if (r7.w != 0) {
          r7.w = lightConstantsCB[r1.w].data[1].z * r0.z;
          r7.w = r7.w * r4.z;
          if (4 == 0) r8.w = 0; else if (4+16 < 32) {           r8.w = (uint)lightConstantsCB[r1.w].data[1].w << (32-(4 + 16)); r8.w = (uint)r8.w >> (32-4);          } else r8.w = (uint)lightConstantsCB[r1.w].data[1].w >> 16;
          r10.w = cmp(0 < (uint)r8.w);
          r10.w = r10.w ? r9.z : 0;
          if (r10.w != 0) {
            r8.w = (int)r8.w + numLights;
            r8.w = mad((int)r8.w, 15, -15);
            r10.w = abs(r2.w) * -0.200000003 + 0.400000006;
            r11.w = cmp(r2.w < 0);
            r11.w = r0.w ? r11.w : 0;
            r10.w = r11.w ? -r10.w : r10.w;
            r19.xyz = r11.xyz * r10.www + r10.xyz;
            r20.xyz = lightConstantsCB[r8.w].data[6].yzw;
            r20.w = lightConstantsCB[r8.w].data[7].x;
            r19.w = 1;
            r10.w = dot(r20.xyzw, r19.xyzw);
            r20.xyz = lightConstantsCB[r8.w].data[7].yzw;
            r20.w = lightConstantsCB[r8.w].data[8].x;
            r11.w = dot(r20.xyzw, r19.xyzw);
            r12.w = cmp(r11.w < r10.w);
            if (r12.w == 0) {
              r20.xyz = lightConstantsCB[r8.w].data[4].yzw;
              r20.w = lightConstantsCB[r8.w].data[5].x;
              r20.x = dot(r20.xyzw, r19.xyzw);
              r21.xyz = lightConstantsCB[r8.w].data[5].yzw;
              r21.w = lightConstantsCB[r8.w].data[6].x;
              r20.y = dot(r21.xyzw, r19.xyzw);
              r19.xy = r20.xy / r11.ww;
              r19.xy = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
              r20.x = lightConstantsCB[r8.w].data[9].w + r19.x;
              r20.y = lightConstantsCB[r8.w].data[10].x + r19.y;
              r19.xy = lightConstantsCB[r8.w].data[9].yz * r20.xy;
              r19.zw = lightConstantsCB[r8.w].data[3].yy / lightConstantsCB[r8.w].data[8].yw;
              r20.xy = float2(1,1) + -r19.zw;
              r20.xy = cmp(r19.xy >= r20.xy);
              r19.zw = cmp(r19.zw >= r19.xy);
              r19.zw = (int2)r19.zw | (int2)r20.xy;
              r14.w = (int)r19.w | (int)r19.z;
              if (r14.w == 0) {
                r19.xy = saturate(r19.xy);
                r20.x = r19.x * lightConstantsCB[r8.w].data[8].y + lightConstantsCB[r8.w].data[8].z;
                r20.y = r19.y * lightConstantsCB[r8.w].data[8].w + lightConstantsCB[r8.w].data[9].x;
                r15.w = lightConstantsCB[r8.w].data[10].z * r11.w;
                r10.w = lightConstantsCB[r8.w].data[10].y * r11.w + r10.w;
                r10.w = r10.w / r15.w;
              }
            } else {
              r14.w = -1;
            }
            r11.w = (int)r12.w | (int)r14.w;
            if (r11.w == 0) {
              r10.w = max(6.10351563e-05, r10.w);
              r11.w = 0x0000ffff & (int)lightConstantsCB[r8.w].data[1].w;
              if (enableDitheredShadow != 0) {
                r19.x = -r3.x;
                r21.z = (uint)r11.w;
                r19.y = r13.x;
                r19.z = r3.x;
                r12.w = 0;
                r14.w = 0;
                while (true) {
                  r15.w = cmp((int)r14.w >= 8);
                  if (r15.w != 0) break;
                  r22.x = dot(icb[r14.w+0].yx, r19.xy);
                  r22.y = dot(icb[r14.w+0].yx, r19.yz);
                  r21.xy = r22.xy * lightConstantsCB[r8.w].data[3].yy + r20.xy;
                  r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r10.w).x;
                  r12.w = r15.w * 0.125 + r12.w;
                  r14.w = (int)r14.w + 1;
                }
              } else {
                r20.z = (uint)r11.w;
                r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r10.w).x;
              }
              r8.w = r12.w * r12.w;
              r8.w = r8.w * r12.w;
            } else {
              r8.w = 1;
            }
            r6.w = r8.w * r6.w;
          } else {
            if (4 == 0) r1.w = 0; else if (4+20 < 32) {             r1.w = (uint)lightConstantsCB[r1.w].data[1].w << (32-(4 + 20)); r1.w = (uint)r1.w >> (32-4);            } else r1.w = (uint)lightConstantsCB[r1.w].data[1].w >> 20;
            r8.w = cmp(0 < (uint)r1.w);
            r9.z = ~(int)r9.z;
            r8.w = r8.w ? r9.z : 0;
            if (r8.w != 0) {
              r1.w = (int)r1.w + numLights;
              r1.w = mad((int)r1.w, 15, -15);
              r8.w = abs(r2.w) * -0.200000003 + 0.400000006;
              r9.z = cmp(r2.w < 0);
              r9.z = r0.w ? r9.z : 0;
              r8.w = r9.z ? -r8.w : r8.w;
              r19.xyz = r11.xyz * r8.www + r10.xyz;
              r20.xyz = lightConstantsCB[r1.w].data[6].yzw;
              r20.w = lightConstantsCB[r1.w].data[7].x;
              r19.w = 1;
              r8.w = dot(r20.xyzw, r19.xyzw);
              r20.xyz = lightConstantsCB[r1.w].data[7].yzw;
              r20.w = lightConstantsCB[r1.w].data[8].x;
              r9.z = dot(r20.xyzw, r19.xyzw);
              r10.w = cmp(r9.z < r8.w);
              if (r10.w == 0) {
                r20.xyz = lightConstantsCB[r1.w].data[4].yzw;
                r20.w = lightConstantsCB[r1.w].data[5].x;
                r20.x = dot(r20.xyzw, r19.xyzw);
                r21.xyz = lightConstantsCB[r1.w].data[5].yzw;
                r21.w = lightConstantsCB[r1.w].data[6].x;
                r20.y = dot(r21.xyzw, r19.xyzw);
                r19.xy = r20.xy / r9.zz;
                r19.xy = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r20.x = lightConstantsCB[r1.w].data[9].w + r19.x;
                r20.y = lightConstantsCB[r1.w].data[10].x + r19.y;
                r19.xy = lightConstantsCB[r1.w].data[9].yz * r20.xy;
                r19.zw = lightConstantsCB[r1.w].data[3].yy / lightConstantsCB[r1.w].data[8].yw;
                r20.xy = float2(1,1) + -r19.zw;
                r20.xy = cmp(r19.xy >= r20.xy);
                r19.zw = cmp(r19.zw >= r19.xy);
                r19.zw = (int2)r19.zw | (int2)r20.xy;
                r11.w = (int)r19.w | (int)r19.z;
                if (r11.w == 0) {
                  r19.xy = saturate(r19.xy);
                  r20.x = r19.x * lightConstantsCB[r1.w].data[8].y + lightConstantsCB[r1.w].data[8].z;
                  r20.y = r19.y * lightConstantsCB[r1.w].data[8].w + lightConstantsCB[r1.w].data[9].x;
                  r12.w = lightConstantsCB[r1.w].data[10].z * r9.z;
                  r8.w = lightConstantsCB[r1.w].data[10].y * r9.z + r8.w;
                  r8.w = r8.w / r12.w;
                }
              } else {
                r11.w = -1;
              }
              r9.z = (int)r10.w | (int)r11.w;
              if (r9.z == 0) {
                r8.w = max(6.10351563e-05, r8.w);
                r9.z = 0x0000ffff & (int)lightConstantsCB[r1.w].data[1].w;
                if (enableDitheredShadow != 0) {
                  r19.x = -r3.x;
                  r21.z = (uint)r9.z;
                  r19.y = r13.x;
                  r19.z = r3.x;
                  r3.x = 0;
                  r10.w = 0;
                  while (true) {
                    r11.w = cmp((int)r10.w >= 8);
                    if (r11.w != 0) break;
                    r22.x = dot(icb[r10.w+0].yx, r19.xy);
                    r22.y = dot(icb[r10.w+0].yx, r19.yz);
                    r21.xy = r22.xy * lightConstantsCB[r1.w].data[3].yy + r20.xy;
                    r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r8.w).x;
                    r3.x = r11.w * 0.125 + r3.x;
                    r10.w = (int)r10.w + 1;
                  }
                } else {
                  r20.z = (uint)r9.z;
                  r3.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r8.w).x;
                }
                r1.w = r3.x * r3.x;
                r1.w = r1.w * r3.x;
              } else {
                r1.w = 1;
              }
              r6.w = r6.w * r1.w;
            }
          }
          r1.w = -r2.x * 0.5 + 1;
          r1.w = -r5.w * r1.w + 1;
          r1.w = r1.w * r1.w;
          r1.w = -r1.w * 0.620000005 + 0.620000005;
          r1.w = r1.w + -r5.w;
          r1.z = r1.z * r1.w + r5.w;
          r1.z = r1.z * r6.w;
          r19.xyz = r1.zzz * r9.xyw;
          r1.w = cmp(0 < r2.w);
          r2.xzw = r13.yzw * r2.zzz + r19.xyz;
          r13.xyz = r14.xyz * r2.yyy + r12.xyz;
          r2.y = dot(r13.xyz, r13.xyz);
          r2.y = rsqrt(r2.y);
          r13.xyz = r13.xyz * r2.yyy;
          r2.y = dot(r13.xyz, r12.xyz);
          r3.x = dot(r11.xyz, r13.xyz);
          r0.z = abs(r3.x) * r0.z + -abs(r3.x);
          r0.z = abs(r3.x) * r0.z + 1;
          r0.x = r4.z * r0.x + r0.y;
          r0.y = r0.z * r0.z;
          r0.x = r0.y * r0.x;
          r0.x = rcp(r0.x);
          r0.x = r0.x * r7.w;
          r0.x = r6.w * r0.x;
          r0.x = 0.25 * r0.x;
          r11.xyz = r0.xxx * r9.xyw + r15.xyz;
          r0.y = saturate(1 + -r2.y);
          r0.z = r0.y * r0.y;
          r0.z = r0.z * r0.z;
          r0.y = r0.y * r0.z;
          r0.x = r0.x * r0.y;
          r0.xyz = r0.xxx * r9.xyw + r18.xyz;
          r9.xyz = r1.zzz * r9.xyw + r17.xyz;
          r9.xyz = r0.www ? r9.xyz : 0;
          r16.xyz = r1.www ? r2.xzw : r16.xyz;
          r17.xyz = r1.www ? r17.xyz : r9.xyz;
          r18.xyz = r1.www ? r0.xyz : r18.xyz;
          r15.xyz = r1.www ? r11.xyz : r15.xyz;
        }
      }
    }
    break;
    default :
    break;
  }
  r2.xyz = r4.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r0.x = (uint)r2.y;
  r4.xyz = r5.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.y = (uint)r4.x;
  r0.y = cmp((int)r0.x == (int)r0.y);
  r0.yz = r0.yy ? r4.yz : float2(-1,0);
  r4.xyz = r6.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.z = (uint)r4.x;
  r1.z = cmp((int)r0.x == (int)r1.z);
  r1.zw = r1.zz ? r4.yz : float2(-1,0);
  r4.xyz = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r3.x = (uint)r4.x;
  r3.x = cmp((int)r0.x == (int)r3.x);
  r4.xy = r3.xx ? r4.yz : float2(-1,0);
  r5.xyz = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r3.x = (uint)r5.x;
  r0.x = cmp((int)r0.x == (int)r3.x);
  r4.zw = r0.xx ? r5.yz : float2(-1,0);
  r5.x = r0.y;
  r5.y = r1.z;
  r5.zw = r4.xz;
  r5.xyzw = r5.xyzw + -r2.xxxx;
  r5.xyzw = cmp(abs(r5.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r5.xyzw = r5.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r0.x = r5.x + r5.y;
  r0.x = r0.x + r5.z;
  r0.x = r0.x + r5.w;
  r0.y = r5.y * r1.w;
  r0.y = r5.x * r0.z + r0.y;
  r0.y = r5.z * r4.y + r0.y;
  r0.y = r5.w * r4.w + r0.y;
  r2.w = r0.y / r0.x;
  r0.x = cmp(0 >= r0.x);
  r2.yz = r0.xx ? float2(0,0) : r2.zw;
  r0.xy = (int2)r1.xy & int2(1,1);
  r0.x = cmp((int)r0.y == (int)r0.x);
  r0.xyz = r0.xxx ? r2.xyz : r2.xzy;
  r0.x = -r0.z * 0.5 + r0.x;
  r2.y = r0.z + r0.x;
  r2.z = -r0.y * 0.5 + r0.x;
  r2.x = r2.z + r0.y;
  r0.xyz = r16.xyz * r3.yzw;
  r0.xyz = r17.xyz * r2.xyz + r0.xyz;
  r4.xyz = float3(0.959999979,0.959999979,0.959999979) * r18.xyz;
  r4.xyz = r15.xyz * float3(0.0399999991,0.0399999991,0.0399999991) + r4.xyz;
  r0.xyz = r4.xyz + r0.xyz;
  r4.xyz = float3(1,1,1) + -r2.xyz;
  r4.xyz = r18.xyz * r4.xyz;
  r2.xyz = r15.xyz * r2.xyz + r4.xyz;
  r2.xyz = r16.xyz * r3.yzw + r2.xyz;
  r0.xyz = r0.www ? r0.xyz : r2.xyz;
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