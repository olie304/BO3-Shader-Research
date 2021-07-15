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
Texture2D<float4> GBufferDiffuseColor : register(t0);
Texture2D<float4> GBufferNormalAndGloss : register(t1);
Texture2D<float4> GBufferSpecularColorAndOcclusion : register(t2);
Texture2D<float> GBufferDepth : register(t4);
Texture2D<float2> gEnvBRDFGeneric : register(t5);
TextureCubeArray<float3> gReflectionProbeArray : register(t8);
Texture3D<float3> gProbeXArray : register(t17);
Texture3D<float3> gProbeYArray : register(t18);
Texture3D<float3> gProbeZArray : register(t19);
StructuredBuffer<gPermutedTilingBuffer> gPermutedTilingBuffer : register(t25);
StructuredBuffer<gDeferredCullBits> gDeferredCullBits : register(t26);
Texture2D<float> gSSAOTexture : register(t27);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main()
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t25, 8
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t26, 4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_structured u2, 1792
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39;
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
  r0.x = mad(permuteStride, 49, (int)vThreadGroupID.x);
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
  r3.xyzw = GBufferSpecularColorAndOcclusion.Load(r1.xyw).xyzw;
  r4.xy = (uint2)r1.xy;
  r4.xy = float2(0.5,0.5) + r4.xy;
  r4.zw = renderTargetSize.zw * r4.xy;
  r0.w = gSSAOTexture.SampleLevel(samplerLinearClamp_s, r4.zw, 0).x;
  r0.w = r3.z * r0.w;
  if (showAO != 0) {
    r3.z = 0.75 * r0.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xyyy, r3.zzzz
    return;
  } else {
    r3.z = enableAO ? r0.w : 1;
  }
  r0.w = cmp(r2.z >= 0.5);
  r4.z = GBufferDepth.Load(r1.xyw).x;
  r5.xyz = GBufferDiffuseColor.Load(r1.xyw).xyz;
  r6.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r7.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r8.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r9.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyz, int3(0, 0, 0)).xyw;
  r1.z = cmp(r4.z >= 0.984375);
  r1.w = 1.01587307 * r4.z;
  r4.z = r4.z * 64 + -63;
  r1.z = r1.z ? r4.z : r1.w;
  r1.z = max(9.99999994e-09, r1.z);
  r1.z = rcp(r1.z);
  r0.z = r0.z ? r1.z : 0;
  r1.zw = -subpixelOffset.xy + r4.xy;
  r1.zw = renderTargetSize.zw * r1.zw;
  r1.zw = r1.zw * float2(2,-2) + float2(-1,1);
  r4.x = inverseProjectionMatrix._m00 * r1.z;
  r4.y = inverseProjectionMatrix._m11 * r1.w;
  r4.z = 1;
  r4.xyz = r4.xyz * r0.zzz;
  r10.xyz = inverseViewMatrix._m10_m11_m12 * r4.yyy;
  r4.xyw = r4.xxx * inverseViewMatrix._m00_m01_m02 + r10.xyz;
  r4.xyz = r4.zzz * inverseViewMatrix._m20_m21_m22 + r4.xyw;
  r0.z = r2.w * 3 + 0.5;
  r0.z = (uint)r0.z;
  r1.zw = r2.xy * float2(2,2) + float2(-1,-1);
  r1.zw = float2(0.850000024,0.850000024) * r1.zw;
  r2.x = dot(r1.zw, r1.zw);
  r10.zw = float2(2,1) + -r2.xx;
  r2.x = sqrt(r10.z);
  r10.xy = r2.xx * r1.zw;
  r11.xyzw = (int4)r0.zzzz & int4(2,1,2,1);
  r11.xyzw = r11.zwxy ? float4(-1,-1,1.40129846e-45,1.40129846e-45) : float4(1,1,0,0);
  r0.z = (int)r11.w ^ (int)r11.z;
  r11.z = r0.z ? -1 : 1;
  r2.xyw = float3(-1,0,1) * r11.xyz;
  r12.xyz = float3(1,-2,1) * r11.xyz;
  r10.xyz = float3(0.408248305,0.707106769,0.577350259) * r10.xyw;
  r2.xyw = r10.yyy * r2.xyw;
  r2.xyw = r12.xyz * r10.xxx + r2.xyw;
  r10.xyz = r11.xyz * r10.zzz + r2.xyw;
  r0.z = r0.w ? -0.5 : -0.00146627566;
  r0.z = r2.z + r0.z;
  r2.y = saturate(2.00982332 * r0.z);
  r0.z = dot(-r4.xyz, -r4.xyz);
  r0.z = rsqrt(r0.z);
  r11.xyz = -r4.xyz * r0.zzz;
  r2.x = saturate(dot(r10.xyz, r11.xyz));
  r0.z = dot(-r11.xyz, r10.xyz);
  r0.z = r0.z + r0.z;
  r11.xyz = r10.xyz * -r0.zzz + -r11.xyz;
  r0.z = 17 * r2.y;
  r0.z = exp2(r0.z);
  r0.z = 2 + r0.z;
  r0.z = 2 / r0.z;
  r0.z = sqrt(r0.z);
  r1.zw = float2(0.5,0.5) * renderTargetSize.xy;
  r1.zw = (uint2)r1.zw;
  r1.zw = cmp((int2)r1.zw == (int2)r1.xy);
  r0.w = r1.w ? r1.z : 0;
  r1.z = 1 + -r2.y;
  r1.w = 5 * r1.z;
  r2.z = r1.z * 5 + -2.5;
  r2.z = 0.400000006 * r2.z;
  r2.z = max(0, r2.z);
  r12.xy = -r1.zz * float2(10,5) + float2(6.85740995,7.08500004);
  r2.w = exp2(r12.x);
  r2.w = r2.x * r2.w;
  r2.zw = float2(100,9.1368103) * r2.zw;
  r4.w = r1.w * r1.z;
  r4.w = -r4.w * 2.0159049 + r12.y;
  r4.w = exp2(r4.w);
  r4.w = r4.w * r2.x;
  r4.w = 9.70808983 * r4.w;
  r2.w = max(r4.w, r2.w);
  r2.w = max(1.26815999, r2.w);
  if (probeDebug != 0) {
    r4.w = (uint)renderTargetSize.x;
    r4.w = (int)r4.w + 7;
    r4.w = (uint)r4.w >> 3;
    r4.w = mad((int)r0.y, (int)r4.w, (int)r0.x);
    bitmask.w = ((~(-1 << 27)) << 5) & 0xffffffff;  r4.w = (((uint)r4.w << 5) & bitmask.w) | ((uint)16 & ~bitmask.w);
    r12.xyzw = float4(0,0,0,0);
    r13.xyzw = float4(0,0,0,0);
    r14.xyzw = float4(0,0,0,0);
    r15.xyzw = float4(0,0,0,0);
    r16.xyzw = float4(0,0,0,0);
    r17.xyzw = float4(0,0,0,0);
    r18.xyzw = float4(0,0,0,0);
    r19.xyzw = float4(0,0,0,0);
    r20.xyzw = float4(0,0,0,0);
    r21.xyzw = float4(0,0,0,0);
    r22.xyzw = float4(0,0,0,0);
    r23.xyz = float3(0,0,0);
    r24.xy = float2(0,0);
    r5.w = 0;
    r25.z = 0;
    r26.z = 0;
    r6.w = 0;
    r7.w = 0;
    while (true) {
      r8.w = cmp((uint)r7.w >= numRefProbes);
      if (r8.w != 0) break;
      r8.w = (uint)r7.w >> 5;
      r8.w = (int)r4.w + (int)r8.w;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r8.w, r8.w, l(0), t26.xxxx
    r8.w = samplerLinear[]..swiz;
      r27.xyzw = r12.yxzw;
      r28.xyzw = r13.xyzw;
      r29.xyzw = r14.yzwx;
      r30.xyzw = r15.xyzw;
      r31.xyzw = r16.xyzw;
      r32.xyzw = r17.zwxy;
      r33.xyzw = r18.zwxy;
      r34.xyzw = r20.zwxy;
      r35.xyzw = r21.zwxy;
      r36.xyz = r23.xyz;
      r24.zw = r24.yx;
      r9.w = r5.w;
      r23.w = r25.z;
      r25.w = r26.z;
      r26.w = r6.w;
      r37.xyzw = r19.zwxy;
      r38.xyzw = r22.zwxy;
      r36.w = r8.w;
      while (true) {
        if (r36.w == 0) break;
        r39.x = firstbitlow((uint)r36.w);
        r39.y = 1 << (int)r39.x;
        r39.y = ~(int)r39.y;
        r36.w = (int)r36.w & (int)r39.y;
        r39.x = (int)r7.w + (int)r39.x;
        r39.x = (int)r39.x * 14;
        r39.yzw = -refProbeConstantsCB[r39.x].data[0].xyz + r4.xyz;
        r39.y = dot(r39.yzw, r39.yzw);
        r39.y = sqrt(r39.y);
        r39.y = cmp(probeDebugRadius >= r39.y);
        if (r39.y != 0) {
          r27.yzw = refProbeConstantsCB[r39.x].data[1].xyz;
          r27.x = refProbeConstantsCB[r39.x].data[0].w;
          r28.yzw = refProbeConstantsCB[r39.x].data[2].xyz;
          r28.x = refProbeConstantsCB[r39.x].data[1].w;
          r29.xyz = refProbeConstantsCB[r39.x].data[3].xyz;
          r29.w = refProbeConstantsCB[r39.x].data[4].z;
          r30.yz = refProbeConstantsCB[r39.x].data[4].xy;
          r30.x = refProbeConstantsCB[r39.x].data[3].w;
          r30.w = refProbeConstantsCB[r39.x].data[6].x;
          r31.yzw = refProbeConstantsCB[r39.x].data[5].xyz;
          r31.x = refProbeConstantsCB[r39.x].data[4].w;
          r32.yz = refProbeConstantsCB[r39.x].data[7].yw;
          r32.x = refProbeConstantsCB[r39.x].data[6].y;
          r32.w = refProbeConstantsCB[r39.x].data[8].x;
          r33.xyz = refProbeConstantsCB[r39.x].data[8].yzw;
          r33.w = refProbeConstantsCB[r39.x].data[9].x;
          r34.xyz = refProbeConstantsCB[r39.x].data[10].yzw;
          r34.w = refProbeConstantsCB[r39.x].data[11].x;
          r35.xyz = refProbeConstantsCB[r39.x].data[11].yzw;
          r35.w = refProbeConstantsCB[r39.x].data[12].x;
          r36.xyz = refProbeConstantsCB[r39.x].data[0].xyz;
          r39.yz = refProbeConstantsCB[r39.x].data[13].yz;
          r9.w = -1;
          r23.w = refProbeConstantsCB[r39.x].data[2].w;
          r25.w = refProbeConstantsCB[r39.x].data[5].w;
          r26.w = refProbeConstantsCB[r39.x].data[7].z;
          r37.xyz = refProbeConstantsCB[r39.x].data[9].yzw;
          r37.w = refProbeConstantsCB[r39.x].data[10].x;
          r38.xyz = refProbeConstantsCB[r39.x].data[12].yzw;
          r38.w = refProbeConstantsCB[r39.x].data[13].x;
          r24.zw = r39.yz;
          break;
        }
      }
      if (r9.w != 0) {
        r12.xyzw = r27.yxzw;
        r13.xyzw = r28.xyzw;
        r14.xyzw = r29.wxyz;
        r15.xyzw = r30.xyzw;
        r16.xyzw = r31.xyzw;
        r17.xyzw = r32.zwxy;
        r18.xyzw = r33.zwxy;
        r19.xyzw = r37.zwxy;
        r20.xyzw = r34.zwxy;
        r21.xyzw = r35.zwxy;
        r22.xyzw = r38.zwxy;
        r23.xyz = r36.xyz;
        r24.xy = r24.wz;
        r5.w = -1;
        r25.z = r23.w;
        r26.z = r25.w;
        r6.w = r26.w;
        break;
      }
      r7.w = (int)r7.w + 32;
      r12.xyzw = r27.yxzw;
      r13.xyzw = r28.xyzw;
      r14.xyzw = r29.wxyz;
      r15.xyzw = r30.xyzw;
      r16.xyzw = r31.xyzw;
      r17.xyzw = r32.zwxy;
      r18.xyzw = r33.zwxy;
      r20.xyzw = r34.zwxy;
      r21.xyzw = r35.zwxy;
      r23.xyz = r36.xyz;
      r24.xy = r24.wz;
      r5.w = r9.w;
      r25.z = r23.w;
      r26.z = r25.w;
      r6.w = r26.w;
      r19.xyzw = r37.zwxy;
      r22.xyzw = r38.zwxy;
    }
    r27.xy = r12.yw;
    r25.x = r12.z;
    r12.yz = r13.xw;
    r25.y = r13.y;
    r27.z = r13.z;
    r13.xyz = r14.yzw;
    r14.yz = r16.xy;
    r26.xy = r16.zw;
    r16.xy = r17.zw;
    r17.z = r18.z;
    r18.z = r19.z;
    r19.z = r20.z;
    r20.z = r21.z;
    r21.z = r22.z;
    r22.z = r24.y;
  } else {
    r5.w = 0;
  }
  if (r5.w != 0) {
    if (r0.w != 0) {
      r28.yzw = eyeOffset.xyz + r23.xyz;
      r28.x = 16;
      GBufferDiffuseColor[viewID].880 = u2.xyzw;
    }
    r23.xyz = -r23.xyz + r4.xyz;
    r4.w = (int)r6.w & 0x0000ffff;
    if (6 == 0) r7.w = 0; else if (6+25 < 32) {     r7.w = (uint)r6.w << (32-(6 + 25)); r7.w = (uint)r7.w >> (32-6);    } else r7.w = (uint)r6.w >> 25;
    r8.w = (int)r4.w * 6;
    r9.w = dot(refProbeAttenuationConstantsCB[r8.w].data[0].xyz, r23.xyz);
    r9.w = saturate(refProbeAttenuationConstantsCB[r8.w].data[0].w + r9.w);
    r12.w = dot(refProbeAttenuationConstantsCB[r8.w].data[1].xyz, r23.xyz);
    r12.w = saturate(refProbeAttenuationConstantsCB[r8.w].data[1].w + r12.w);
    r9.w = r12.w * r9.w;
    r12.w = dot(refProbeAttenuationConstantsCB[r8.w].data[2].xyz, r23.xyz);
    r12.w = saturate(refProbeAttenuationConstantsCB[r8.w].data[2].w + r12.w);
    r9.w = r12.w * r9.w;
    r12.w = dot(refProbeAttenuationConstantsCB[r8.w].data[3].xyz, r23.xyz);
    r12.w = saturate(refProbeAttenuationConstantsCB[r8.w].data[3].w + r12.w);
    r9.w = r12.w * r9.w;
    r12.w = dot(refProbeAttenuationConstantsCB[r8.w].data[4].xyz, r23.xyz);
    r12.w = saturate(refProbeAttenuationConstantsCB[r8.w].data[4].w + r12.w);
    r9.w = r12.w * r9.w;
    r12.w = dot(refProbeAttenuationConstantsCB[r8.w].data[5].xyz, r23.xyz);
    r8.w = saturate(refProbeAttenuationConstantsCB[r8.w].data[5].w + r12.w);
    r28.x = r9.w * r8.w;
    r8.w = (int)r15.w & 1;
    r28.yz = float2(0,1);
    r16.zw = r8.ww ? r28.xy : r28.zx;
    r28.x = 1;
    r8.w = r15.w;
    r29.xy = r16.zw;
    r9.w = 1;
    while (true) {
      r12.w = cmp((int)r9.w >= (int)r7.w);
      if (r12.w != 0) break;
      r12.w = (int)r4.w + (int)r9.w;
      r12.w = (int)r12.w * 6;
      r13.w = dot(refProbeAttenuationConstantsCB[r12.w].data[0].xyz, r23.xyz);
      r13.w = saturate(refProbeAttenuationConstantsCB[r12.w].data[0].w + r13.w);
      r13.w = r29.x * r13.w;
      r14.w = dot(refProbeAttenuationConstantsCB[r12.w].data[1].xyz, r23.xyz);
      r14.w = saturate(refProbeAttenuationConstantsCB[r12.w].data[1].w + r14.w);
      r13.w = r14.w * r13.w;
      r14.w = dot(refProbeAttenuationConstantsCB[r12.w].data[2].xyz, r23.xyz);
      r14.w = saturate(refProbeAttenuationConstantsCB[r12.w].data[2].w + r14.w);
      r13.w = r14.w * r13.w;
      r14.w = dot(refProbeAttenuationConstantsCB[r12.w].data[3].xyz, r23.xyz);
      r14.w = saturate(refProbeAttenuationConstantsCB[r12.w].data[3].w + r14.w);
      r13.w = r14.w * r13.w;
      r14.w = dot(refProbeAttenuationConstantsCB[r12.w].data[4].xyz, r23.xyz);
      r14.w = saturate(refProbeAttenuationConstantsCB[r12.w].data[4].w + r14.w);
      r13.w = r14.w * r13.w;
      r14.w = dot(refProbeAttenuationConstantsCB[r12.w].data[5].xyz, r23.xyz);
      r12.w = saturate(refProbeAttenuationConstantsCB[r12.w].data[5].w + r14.w);
      r29.x = r13.w * r12.w;
      r14.w = (uint)r8.w >> 2;
      if (1 == 0) r17.w = 0; else if (1+2 < 32) {       r17.w = (uint)r8.w << (32-(1 + 2)); r17.w = (uint)r17.w >> (32-1);      } else r17.w = (uint)r8.w >> 2;
      r23.w = (int)r14.w & 2;
      r24.y = max(r29.y, r29.x);
      r12.w = -r13.w * r12.w + 1;
      r12.w = r29.y * r12.w;
      r28.y = r23.w ? r12.w : r24.y;
      r29.xy = r17.ww ? r29.xy : r28.xy;
      r9.w = (int)r9.w + 1;
      r8.w = r14.w;
    }
    r29.y = saturate(r29.y);
    r28.w = r29.y * r16.x;
    r4.w = cmp(0 < r28.w);
    if (r4.w != 0) {
      if (r0.w != 0) {
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r4.w, cb2[52].x, l(880), u2.xxxx
      r4.w = samplerLinear[]..swiz;
        r4.w = (int)r4.w | 32;
        GBufferDiffuseColor[viewID].880 = u2.x;
        GBufferDiffuseColor[viewID].896 = u2.x;
      }
      r4.w = r28.w * r16.y;
      r7.w = dot(r11.xyz, r17.xyz);
      r8.w = dot(r23.xyz, r17.xyz);
      r8.w = r8.w + -r18.w;
      r9.w = cmp(r8.w >= 0);
      r8.w = max(abs(r8.w), r2.z);
      r8.w = r9.w ? r8.w : -r8.w;
      r7.w = max(1.00000001e-07, -r7.w);
      r7.w = r8.w / r7.w;
      r7.w = min(131072, abs(r7.w));
      r8.w = dot(r11.xyz, r18.xyz);
      r9.w = dot(r23.xyz, r18.xyz);
      r9.w = r9.w + -r19.w;
      r12.w = cmp(r9.w >= 0);
      r9.w = max(abs(r9.w), r2.z);
      r9.w = r12.w ? r9.w : -r9.w;
      r8.w = max(1.00000001e-07, -r8.w);
      r8.w = r9.w / r8.w;
      r7.w = min(abs(r8.w), r7.w);
      r8.w = dot(r11.xyz, r19.xyz);
      r9.w = dot(r23.xyz, r19.xyz);
      r9.w = r9.w + -r20.w;
      r12.w = cmp(r9.w >= 0);
      r9.w = max(abs(r9.w), r2.z);
      r9.w = r12.w ? r9.w : -r9.w;
      r8.w = max(1.00000001e-07, -r8.w);
      r8.w = r9.w / r8.w;
      r7.w = min(abs(r8.w), r7.w);
      r8.w = dot(r11.xyz, r20.xyz);
      r9.w = dot(r23.xyz, r20.xyz);
      r9.w = r9.w + -r21.w;
      r12.w = cmp(r9.w >= 0);
      r9.w = max(abs(r9.w), r2.z);
      r9.w = r12.w ? r9.w : -r9.w;
      r8.w = max(1.00000001e-07, -r8.w);
      r8.w = r9.w / r8.w;
      r7.w = min(abs(r8.w), r7.w);
      r8.w = dot(r11.xyz, r21.xyz);
      r9.w = dot(r23.xyz, r21.xyz);
      r9.w = r9.w + -r22.w;
      r12.w = cmp(r9.w >= 0);
      r9.w = max(abs(r9.w), r2.z);
      r9.w = r12.w ? r9.w : -r9.w;
      r8.w = max(1.00000001e-07, -r8.w);
      r8.w = r9.w / r8.w;
      r7.w = min(abs(r8.w), r7.w);
      r8.w = dot(r11.xyz, r22.xyz);
      r9.w = dot(r23.xyz, r22.xyz);
      r9.w = r9.w + -r24.x;
      r12.w = cmp(r9.w >= 0);
      r9.w = max(abs(r9.w), r2.z);
      r9.w = r12.w ? r9.w : -r9.w;
      r8.w = max(1.00000001e-07, -r8.w);
      r8.w = r9.w / r8.w;
      r7.w = min(abs(r8.w), r7.w);
      r15.xyz = r23.xyz + r15.xyz;
      r15.xyz = r11.xyz * r7.www + r15.xyz;
      r8.w = dot(r15.xyz, r15.xyz);
      r8.w = sqrt(r8.w);
      r7.w = r7.w / r8.w;
      r7.w = r7.w + r7.w;
      r7.w = sqrt(r7.w);
      r7.w = r1.z * 5 + r7.w;
      r7.w = -0.844799995 + r7.w;
      r16.x = dot(r15.xyz, r27.xyz);
      r16.y = dot(r15.xyz, r12.xyz);
      r16.z = dot(r15.xyz, r25.xyz);
      if (9 == 0) r6.w = 0; else if (9+16 < 32) {       r6.w = (uint)r6.w << (32-(9 + 16)); r6.w = (uint)r6.w >> (32-9);      } else r6.w = (uint)r6.w >> 16;
      r16.w = (uint)r6.w;
      r15.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r16.xyzw, r7.w).xyz;
      r17.xyz = (int3)r15.xyz & int3(-2147483648,-2147483648,-2147483648);
      r17.xyz = cmp((int3)r17.xyz == int3(2139095040,2139095040,2139095040));
      r6.w = (int)r17.y | (int)r17.x;
      r6.w = (int)r17.z | (int)r6.w;
      r15.xyz = r6.www ? float3(1,1,0) : r15.xyz;
      r17.x = dot(r23.xyz, r27.xyz);
      r17.y = dot(r23.xyz, r12.xyz);
      r17.z = dot(r23.xyz, r25.xyz);
      r13.xyz = saturate(r17.xyz * r13.xyz + float3(0.5,0.5,0.5));
      r13.xyz = r13.xyz * r14.xyz + r26.xyz;
      r16.x = dot(r10.xyz, r27.xyz);
      r16.y = dot(r10.xyz, r12.xyz);
      r16.z = dot(r10.xyz, r25.xyz);
      r12.xyz = cmp(float3(0,0,0) < r16.xyz);
      r14.z = r12.x ? 0 : 0.5;
      r14.xy = float2(0,0);
      r14.xyz = r14.xyz + r13.xyz;
      r14.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r14.xyz, 0).xyz;
      r17.xyz = r16.xyz * r16.xyz;
      r17.xyz = r17.xyz * r4.www;
      r18.z = r12.y ? 0 : 0.5;
      r18.xy = float2(0,0);
      r12.xyw = r18.xyz + r13.xyz;
      r12.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r12.xyw, 0).xyz;
      r12.xyw = r12.xyw * r17.yyy;
      r12.xyw = r14.xyz * r17.xxx + r12.xyw;
      r14.z = r12.z ? 0 : 0.5;
      r14.xy = float2(0,0);
      r13.xyz = r14.xyz + r13.xyz;
      r13.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r13.xyz, 0).xyz;
      r12.xyz = r13.xyz * r17.zzz + r12.xyw;
      r13.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r16.xyzw, 6).xyz;
      r14.xyz = (int3)r13.xyz & int3(-2147483648,-2147483648,-2147483648);
      r14.xyz = cmp((int3)r14.xyz == int3(2139095040,2139095040,2139095040));
      r6.w = (int)r14.y | (int)r14.x;
      r6.w = (int)r14.z | (int)r6.w;
      r13.xyz = r6.www ? float3(1,1,0) : r13.xyz;
      r12.xyz = r13.xyz * r12.xyz;
      r6.w = dot(r12.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r7.w = r6.w * r2.w;
      r12.xyz = r15.xyz * r4.www;
      r4.w = dot(r12.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r4.w = r2.w * r6.w + r4.w;
      r4.w = r7.w / r4.w;
      r28.xyz = r12.xyz * r4.www;
      r4.w = 257;
    } else {
      r28.xyzw = float4(0,0,0,0);
      r4.w = 1;
    }
    r6.w = -1;
  } else {
    r28.xyzw = float4(0,0,0,0);
    r4.w = 0;
  }
  r5.w = (int)r5.w & (int)r6.w;
  if (r5.w == 0) {
    r5.w = numRefProbes + -numOverrideProbes;
    r6.w = (uint)renderTargetSize.x;
    r6.w = (int)r6.w + 7;
    r6.w = (uint)r6.w >> 3;
    r6.w = mad((int)r0.y, (int)r6.w, (int)r0.x);
    bitmask.w = ((~(-1 << 27)) << 5) & 0xffffffff;  r6.w = (((uint)r6.w << 5) & bitmask.w) | ((uint)16 & ~bitmask.w);
    r7.w = (int)r5.w & -32;
    r8.w = (int)r5.w + (int)-r7.w;
    r9.w = numRefProbes & -32;
    r12.x = (int)-r9.w + numRefProbes;
    r13.x = 16;
    r14.yz = float2(0,1);
    r15.xy = float2(0,0);
    r16.xz = float2(1,1);
    r17.xy = float2(0,0);
    r18.xy = float2(0,0);
    r19.xyz = float3(0,0,0);
    r19.w = r28.x;
    r20.xyz = r28.yzw;
    r20.w = r4.w;
    r12.y = r7.w;
    while (true) {
      r12.z = cmp((uint)r12.y >= numRefProbes);
      if (r12.z != 0) break;
      r12.z = (uint)r12.y >> 5;
      r12.z = (int)r6.w + (int)r12.z;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.z, r12.z, l(0), t26.xxxx
    r12.z = samplerLinear[]..swiz;
      r12.w = cmp((int)r7.w == (int)r12.y);
      bitmask.w = ((~(-1 << r8.w)) << 0) & 0xffffffff;  r14.w = (((uint)0 << 0) & bitmask.w) | ((uint)r12.z & ~bitmask.w);
      r12.z = r12.w ? r14.w : r12.z;
      r12.w = cmp((int)r9.w == (int)r12.y);
      if (r12.x == 0) r14.w = 0; else if (r12.x+0 < 32) {       r14.w = (uint)r12.z << (32-(r12.x + 0)); r14.w = (uint)r14.w >> (32-r12.x);      } else r14.w = (uint)r12.z >> 0;
      r12.z = r12.w ? r14.w : r12.z;
      r21.xyzw = r19.xyzw;
      r22.xyzw = r20.xyzw;
      r12.w = r12.z;
      while (true) {
        if (r12.w == 0) break;
        r14.w = firstbitlow((uint)r12.w);
        r15.w = 1 << (int)r14.w;
        r15.w = ~(int)r15.w;
        r12.w = (int)r12.w & (int)r15.w;
        r14.w = (int)r12.y + (int)r14.w;
        r14.w = (int)r14.w * 14;
        r15.w = (int)r22.w & 255;
        r17.w = cmp((uint)r15.w < 32);
        r17.w = r0.w ? r17.w : 0;
        if (r17.w != 0) {
          r15.w = mad((int)r15.w, 20, 880);
          r13.yzw = refProbeConstantsCB[r14.w].data[0].xyz + eyeOffset.xyz;
          GBufferDiffuseColor[viewID].r15.w = u2.xyzw;
        }
        r23.w = (int)r22.w + 1;
        r13.yzw = -refProbeConstantsCB[r14.w].data[0].xyz + r4.xyz;
        r15.w = 0x0000ffff & (int)refProbeConstantsCB[r14.w].data[7].z;
        if (6 == 0) r17.w = 0; else if (6+25 < 32) {         r17.w = (uint)refProbeConstantsCB[r14.w].data[7].z << (32-(6 + 25)); r17.w = (uint)r17.w >> (32-6);        } else r17.w = (uint)refProbeConstantsCB[r14.w].data[7].z >> 25;
        r18.w = (int)r15.w * 6;
        r24.x = dot(refProbeAttenuationConstantsCB[r18.w].data[0].xyz, r13.yzw);
        r24.x = saturate(refProbeAttenuationConstantsCB[r18.w].data[0].w + r24.x);
        r24.y = dot(refProbeAttenuationConstantsCB[r18.w].data[1].xyz, r13.yzw);
        r24.y = saturate(refProbeAttenuationConstantsCB[r18.w].data[1].w + r24.y);
        r24.x = r24.x * r24.y;
        r24.y = dot(refProbeAttenuationConstantsCB[r18.w].data[2].xyz, r13.yzw);
        r24.y = saturate(refProbeAttenuationConstantsCB[r18.w].data[2].w + r24.y);
        r24.x = r24.x * r24.y;
        r24.y = dot(refProbeAttenuationConstantsCB[r18.w].data[3].xyz, r13.yzw);
        r24.y = saturate(refProbeAttenuationConstantsCB[r18.w].data[3].w + r24.y);
        r24.x = r24.x * r24.y;
        r24.y = dot(refProbeAttenuationConstantsCB[r18.w].data[4].xyz, r13.yzw);
        r24.y = saturate(refProbeAttenuationConstantsCB[r18.w].data[4].w + r24.y);
        r24.x = r24.x * r24.y;
        r24.y = dot(refProbeAttenuationConstantsCB[r18.w].data[5].xyz, r13.yzw);
        r18.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[5].w + r24.y);
        r14.x = r24.x * r18.w;
        r18.w = 1 & (int)refProbeConstantsCB[r14.w].data[6].x;
        r24.xy = r18.ww ? r14.xy : r14.zx;
        r14.x = refProbeConstantsCB[r14.w].data[6].x;
        r25.xy = r24.xy;
        r18.w = 1;
        while (true) {
          r24.z = cmp((int)r18.w >= (int)r17.w);
          if (r24.z != 0) break;
          r24.z = (int)r15.w + (int)r18.w;
          r24.z = (int)r24.z * 6;
          r24.w = dot(refProbeAttenuationConstantsCB[r24.z].data[0].xyz, r13.yzw);
          r24.w = saturate(refProbeAttenuationConstantsCB[r24.z].data[0].w + r24.w);
          r24.w = r25.x * r24.w;
          r25.z = dot(refProbeAttenuationConstantsCB[r24.z].data[1].xyz, r13.yzw);
          r25.z = saturate(refProbeAttenuationConstantsCB[r24.z].data[1].w + r25.z);
          r24.w = r25.z * r24.w;
          r25.z = dot(refProbeAttenuationConstantsCB[r24.z].data[2].xyz, r13.yzw);
          r25.z = saturate(refProbeAttenuationConstantsCB[r24.z].data[2].w + r25.z);
          r24.w = r25.z * r24.w;
          r25.z = dot(refProbeAttenuationConstantsCB[r24.z].data[3].xyz, r13.yzw);
          r25.z = saturate(refProbeAttenuationConstantsCB[r24.z].data[3].w + r25.z);
          r24.w = r25.z * r24.w;
          r25.z = dot(refProbeAttenuationConstantsCB[r24.z].data[4].xyz, r13.yzw);
          r25.z = saturate(refProbeAttenuationConstantsCB[r24.z].data[4].w + r25.z);
          r24.w = r25.z * r24.w;
          r25.z = dot(refProbeAttenuationConstantsCB[r24.z].data[5].xyz, r13.yzw);
          r24.z = saturate(refProbeAttenuationConstantsCB[r24.z].data[5].w + r25.z);
          r25.x = r24.w * r24.z;
          r25.z = (uint)r14.x >> 2;
          if (1 == 0) r25.w = 0; else if (1+2 < 32) {           r25.w = (uint)r14.x << (32-(1 + 2)); r25.w = (uint)r25.w >> (32-1);          } else r25.w = (uint)r14.x >> 2;
          r26.x = (int)r25.z & 2;
          r26.y = max(r25.y, r25.x);
          r24.z = -r24.w * r24.z + 1;
          r24.z = r25.y * r24.z;
          r16.y = r26.x ? r24.z : r26.y;
          r25.xy = r25.ww ? r25.xy : r16.xy;
          r18.w = (int)r18.w + 1;
          r14.x = r25.z;
        }
        r25.y = saturate(r25.y);
        r14.x = refProbeConstantsCB[r14.w].data[6].y * r25.y;
        r15.w = cmp(0 < r14.x);
        if (r15.w != 0) {
          r15.w = (int)r23.w & 255;
          r16.y = (int)r15.w + -1;
          r16.y = cmp((uint)r16.y < 32);
          r16.y = r0.w ? r16.y : 0;
          if (r16.y != 0) {
            r24.xy = mad((int2)r15.ww, int2(20,20), int2(860,876));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r15.w, cb2[52].x, r24.x, u2.xxxx
          r15.w = samplerLinear[]..swiz;
            r15.w = (int)r15.w | 32;
            GBufferDiffuseColor[viewID].r24.x = u2.x;
            GBufferDiffuseColor[viewID].r24.y = u2.x;
          }
          r22.w = (int)r22.w + 257;
          r22.z = r25.y * refProbeConstantsCB[r14.w].data[6].y + r22.z;
          r14.x = refProbeConstantsCB[r14.w].data[7].y * r14.x;
          r24.x = refProbeConstantsCB[r14.w].data[7].w;
          r24.yz = refProbeConstantsCB[r14.w].data[8].xy;
          r15.w = dot(r11.xyz, r24.xyz);
          r16.y = dot(r13.yzw, r24.xyz);
          r16.y = -refProbeConstantsCB[r14.w].data[8].z + r16.y;
          r17.w = cmp(r16.y >= 0);
          r16.y = max(abs(r16.y), r2.z);
          r16.y = r17.w ? r16.y : -r16.y;
          r15.w = max(1.00000001e-07, -r15.w);
          r15.w = r16.y / r15.w;
          r15.w = min(131072, abs(r15.w));
          r24.x = refProbeConstantsCB[r14.w].data[8].w;
          r24.yz = refProbeConstantsCB[r14.w].data[9].xy;
          r16.y = dot(r11.xyz, r24.xyz);
          r17.w = dot(r13.yzw, r24.xyz);
          r17.w = -refProbeConstantsCB[r14.w].data[9].z + r17.w;
          r18.w = cmp(r17.w >= 0);
          r17.w = max(abs(r17.w), r2.z);
          r17.w = r18.w ? r17.w : -r17.w;
          r16.y = max(1.00000001e-07, -r16.y);
          r16.y = r17.w / r16.y;
          r15.w = min(abs(r16.y), r15.w);
          r24.x = refProbeConstantsCB[r14.w].data[9].w;
          r24.yz = refProbeConstantsCB[r14.w].data[10].xy;
          r16.y = dot(r11.xyz, r24.xyz);
          r17.w = dot(r13.yzw, r24.xyz);
          r17.w = -refProbeConstantsCB[r14.w].data[10].z + r17.w;
          r18.w = cmp(r17.w >= 0);
          r17.w = max(abs(r17.w), r2.z);
          r17.w = r18.w ? r17.w : -r17.w;
          r16.y = max(1.00000001e-07, -r16.y);
          r16.y = r17.w / r16.y;
          r15.w = min(abs(r16.y), r15.w);
          r24.x = refProbeConstantsCB[r14.w].data[10].w;
          r24.yz = refProbeConstantsCB[r14.w].data[11].xy;
          r16.y = dot(r11.xyz, r24.xyz);
          r17.w = dot(r13.yzw, r24.xyz);
          r17.w = -refProbeConstantsCB[r14.w].data[11].z + r17.w;
          r18.w = cmp(r17.w >= 0);
          r17.w = max(abs(r17.w), r2.z);
          r17.w = r18.w ? r17.w : -r17.w;
          r16.y = max(1.00000001e-07, -r16.y);
          r16.y = r17.w / r16.y;
          r15.w = min(abs(r16.y), r15.w);
          r24.x = refProbeConstantsCB[r14.w].data[11].w;
          r24.yz = refProbeConstantsCB[r14.w].data[12].xy;
          r16.y = dot(r11.xyz, r24.xyz);
          r17.w = dot(r13.yzw, r24.xyz);
          r17.w = -refProbeConstantsCB[r14.w].data[12].z + r17.w;
          r18.w = cmp(r17.w >= 0);
          r17.w = max(abs(r17.w), r2.z);
          r17.w = r18.w ? r17.w : -r17.w;
          r16.y = max(1.00000001e-07, -r16.y);
          r16.y = r17.w / r16.y;
          r15.w = min(abs(r16.y), r15.w);
          r24.x = refProbeConstantsCB[r14.w].data[12].w;
          r24.yz = refProbeConstantsCB[r14.w].data[13].xy;
          r16.y = dot(r11.xyz, r24.xyz);
          r17.w = dot(r13.yzw, r24.xyz);
          r17.w = -refProbeConstantsCB[r14.w].data[13].z + r17.w;
          r18.w = cmp(r17.w >= 0);
          r17.w = max(abs(r17.w), r2.z);
          r17.w = r18.w ? r17.w : -r17.w;
          r16.y = max(1.00000001e-07, -r16.y);
          r16.y = r17.w / r16.y;
          r15.w = min(abs(r16.y), r15.w);
          r24.x = refProbeConstantsCB[r14.w].data[3].w + r13.y;
          r24.yz = refProbeConstantsCB[r14.w].data[4].xy + r13.zw;
          r24.xyz = r11.xyz * r15.www + r24.xyz;
          r16.y = dot(r24.xyz, r24.xyz);
          r16.y = sqrt(r16.y);
          r15.w = r15.w / r16.y;
          r15.w = r15.w + r15.w;
          r15.w = sqrt(r15.w);
          r15.w = r1.z * 5 + r15.w;
          r15.w = -0.844799995 + r15.w;
          r26.x = refProbeConstantsCB[r14.w].data[0].w;
          r26.y = refProbeConstantsCB[r14.w].data[1].z;
          r26.z = refProbeConstantsCB[r14.w].data[2].y;
          r27.x = dot(r24.xyz, r26.xyz);
          r29.xy = refProbeConstantsCB[r14.w].data[1].xw;
          r29.z = refProbeConstantsCB[r14.w].data[2].z;
          r27.y = dot(r24.xyz, r29.xyz);
          r30.x = refProbeConstantsCB[r14.w].data[1].y;
          r30.yz = refProbeConstantsCB[r14.w].data[2].xw;
          r27.z = dot(r24.xyz, r30.xyz);
          if (9 == 0) r16.y = 0; else if (9+16 < 32) {           r16.y = (uint)refProbeConstantsCB[r14.w].data[7].z << (32-(9 + 16)); r16.y = (uint)r16.y >> (32-9);          } else r16.y = (uint)refProbeConstantsCB[r14.w].data[7].z >> 16;
          r27.w = (uint)r16.y;
          r24.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r27.xyzw, r15.w).xyz;
          r25.xzw = (int3)r24.xyz & int3(-2147483648,-2147483648,-2147483648);
          r25.xzw = cmp((int3)r25.xzw == int3(2139095040,2139095040,2139095040));
          r15.w = (int)r25.z | (int)r25.x;
          r15.w = (int)r25.w | (int)r15.w;
          r24.xyz = r15.www ? float3(1,1,0) : r24.xyz;
          r31.x = dot(r13.yzw, r26.xyz);
          r31.y = dot(r13.yzw, r29.xyz);
          r31.z = dot(r13.yzw, r30.xyz);
          r13.yzw = saturate(r31.xyz * refProbeConstantsCB[r14.w].data[3].xyz + float3(0.5,0.5,0.5));
          r31.xy = refProbeConstantsCB[r14.w].data[4].zw * r13.yz;
          r31.z = refProbeConstantsCB[r14.w].data[5].x * r13.w;
          r13.yzw = refProbeConstantsCB[r14.w].data[5].yzw + r31.xyz;
          r27.x = dot(r10.xyz, r26.xyz);
          r27.y = dot(r10.xyz, r29.xyz);
          r27.z = dot(r10.xyz, r30.xyz);
          r25.xzw = cmp(float3(0,0,0) < r27.xyz);
          r15.z = r25.x ? 0 : 0.5;
          r26.xyz = r15.xyz + r13.yzw;
          r26.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
          r29.xyz = r27.xyz * r27.xyz;
          r29.xyz = r29.xyz * r14.xxx;
          r17.z = r25.z ? 0 : 0.5;
          r30.xyz = r17.xyz + r13.yzw;
          r30.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r30.xyz, 0).xyz;
          r30.xyz = r30.xyz * r29.yyy;
          r26.xyz = r26.xyz * r29.xxx + r30.xyz;
          r18.z = r25.w ? 0 : 0.5;
          r13.yzw = r18.xyz + r13.yzw;
          r13.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r13.yzw, 0).xyz;
          r13.yzw = r13.yzw * r29.zzz + r26.xyz;
          r25.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r27.xyzw, 6).xyz;
          r26.xyz = (int3)r25.xzw & int3(-2147483648,-2147483648,-2147483648);
          r26.xyz = cmp((int3)r26.xyz == int3(2139095040,2139095040,2139095040));
          r14.w = (int)r26.y | (int)r26.x;
          r14.w = (int)r26.z | (int)r14.w;
          r25.xzw = r14.www ? float3(1,1,0) : r25.xzw;
          r26.xyz = r25.xzw * r13.yzw;
          r14.w = dot(r26.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r21.xyz = r13.yzw * r25.xzw + r21.xyz;
          r13.y = r14.w * r2.w;
          r24.xyz = r24.xyz * r14.xxx;
          r13.z = dot(r24.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r13.z = r2.w * r14.w + r13.z;
          r13.y = r13.y / r13.z;
          r26.x = r21.w;
          r26.yz = r22.xy;
          r13.yzw = r24.xyz * r13.yyy + r26.xyz;
          r21.w = r13.y;
          r22.xy = r13.zw;
        } else {
          r23.xyz = r22.xyz;
          r22.xyzw = r23.xyzw;
        }
      }
      r19.xyzw = r21.xyzw;
      r20.xyzw = r22.xyzw;
      r12.y = (int)r12.y + 32;
    }
    r12.x = 16;
    r13.yz = float2(0,1);
    r14.xy = float2(0,0);
    r15.xy = float2(0,0);
    r17.xy = float2(0,0);
    r18.xyz = r19.xyz;
    r21.x = r19.w;
    r21.yz = r20.xy;
    r22.xyz = r20.zwz;
    r9.w = 0;
    while (true) {
      r13.w = cmp((uint)r9.w >= (uint)r5.w);
      if (r13.w != 0) break;
      r13.w = (uint)r9.w >> 5;
      r13.w = (int)r6.w + (int)r13.w;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.w, r13.w, l(0), t26.xxxx
    r13.w = samplerLinear[]..swiz;
      r14.w = cmp((int)r7.w == (int)r9.w);
      if (r8.w == 0) r15.w = 0; else if (r8.w+0 < 32) {       r15.w = (uint)r13.w << (32-(r8.w + 0)); r15.w = (uint)r15.w >> (32-r8.w);      } else r15.w = (uint)r13.w >> 0;
      r13.w = r14.w ? r15.w : r13.w;
      r23.xyz = r18.xyz;
      r24.xyz = r21.xyz;
      r25.xyz = r22.xzy;
      r14.w = r13.w;
      while (true) {
        if (r14.w == 0) break;
        r15.w = firstbitlow((uint)r14.w);
        r16.x = 1 << (int)r15.w;
        r16.x = ~(int)r16.x;
        r14.w = (int)r14.w & (int)r16.x;
        r15.w = (int)r9.w + (int)r15.w;
        r15.w = (int)r15.w * 14;
        r16.x = (int)r25.z & 255;
        r16.y = cmp((uint)r16.x < 32);
        r16.y = r0.w ? r16.y : 0;
        if (r16.y != 0) {
          r16.x = mad((int)r16.x, 20, 880);
          r12.yzw = refProbeConstantsCB[r15.w].data[0].xyz + eyeOffset.xyz;
          GBufferDiffuseColor[viewID].r16.x = u2.xyzw;
        }
        r16.y = (int)r25.z + 1;
        r12.yzw = -refProbeConstantsCB[r15.w].data[0].xyz + r4.xyz;
        r17.w = 0x0000ffff & (int)refProbeConstantsCB[r15.w].data[7].z;
        if (6 == 0) r18.w = 0; else if (6+25 < 32) {         r18.w = (uint)refProbeConstantsCB[r15.w].data[7].z << (32-(6 + 25)); r18.w = (uint)r18.w >> (32-6);        } else r18.w = (uint)refProbeConstantsCB[r15.w].data[7].z >> 25;
        r21.w = (int)r17.w * 6;
        r22.w = dot(refProbeAttenuationConstantsCB[r21.w].data[0].xyz, r12.yzw);
        r22.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[0].w + r22.w);
        r23.w = dot(refProbeAttenuationConstantsCB[r21.w].data[1].xyz, r12.yzw);
        r23.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[1].w + r23.w);
        r22.w = r23.w * r22.w;
        r23.w = dot(refProbeAttenuationConstantsCB[r21.w].data[2].xyz, r12.yzw);
        r23.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[2].w + r23.w);
        r22.w = r23.w * r22.w;
        r23.w = dot(refProbeAttenuationConstantsCB[r21.w].data[3].xyz, r12.yzw);
        r23.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[3].w + r23.w);
        r22.w = r23.w * r22.w;
        r23.w = dot(refProbeAttenuationConstantsCB[r21.w].data[4].xyz, r12.yzw);
        r23.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[4].w + r23.w);
        r22.w = r23.w * r22.w;
        r23.w = dot(refProbeAttenuationConstantsCB[r21.w].data[5].xyz, r12.yzw);
        r21.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[5].w + r23.w);
        r13.x = r22.w * r21.w;
        r21.w = 1 & (int)refProbeConstantsCB[r15.w].data[6].x;
        r26.xy = r21.ww ? r13.xy : r13.zx;
        r13.x = refProbeConstantsCB[r15.w].data[6].x;
        r27.xy = r26.xy;
        r21.w = 1;
        while (true) {
          r22.w = cmp((int)r21.w >= (int)r18.w);
          if (r22.w != 0) break;
          r22.w = (int)r17.w + (int)r21.w;
          r22.w = (int)r22.w * 6;
          r23.w = dot(refProbeAttenuationConstantsCB[r22.w].data[0].xyz, r12.yzw);
          r23.w = saturate(refProbeAttenuationConstantsCB[r22.w].data[0].w + r23.w);
          r23.w = r27.x * r23.w;
          r24.w = dot(refProbeAttenuationConstantsCB[r22.w].data[1].xyz, r12.yzw);
          r24.w = saturate(refProbeAttenuationConstantsCB[r22.w].data[1].w + r24.w);
          r23.w = r24.w * r23.w;
          r24.w = dot(refProbeAttenuationConstantsCB[r22.w].data[2].xyz, r12.yzw);
          r24.w = saturate(refProbeAttenuationConstantsCB[r22.w].data[2].w + r24.w);
          r23.w = r24.w * r23.w;
          r24.w = dot(refProbeAttenuationConstantsCB[r22.w].data[3].xyz, r12.yzw);
          r24.w = saturate(refProbeAttenuationConstantsCB[r22.w].data[3].w + r24.w);
          r23.w = r24.w * r23.w;
          r24.w = dot(refProbeAttenuationConstantsCB[r22.w].data[4].xyz, r12.yzw);
          r24.w = saturate(refProbeAttenuationConstantsCB[r22.w].data[4].w + r24.w);
          r23.w = r24.w * r23.w;
          r24.w = dot(refProbeAttenuationConstantsCB[r22.w].data[5].xyz, r12.yzw);
          r22.w = saturate(refProbeAttenuationConstantsCB[r22.w].data[5].w + r24.w);
          r27.x = r23.w * r22.w;
          r24.w = (uint)r13.x >> 2;
          if (1 == 0) r25.w = 0; else if (1+2 < 32) {           r25.w = (uint)r13.x << (32-(1 + 2)); r25.w = (uint)r25.w >> (32-1);          } else r25.w = (uint)r13.x >> 2;
          r26.z = (int)r24.w & 2;
          r26.w = max(r27.y, r27.x);
          r22.w = -r23.w * r22.w + 1;
          r22.w = r27.y * r22.w;
          r16.w = r26.z ? r22.w : r26.w;
          r27.xy = r25.ww ? r27.xy : r16.zw;
          r21.w = (int)r21.w + 1;
          r13.x = r24.w;
        }
        r13.x = saturate(r27.y + -r25.y);
        r16.w = refProbeConstantsCB[r15.w].data[6].y * r13.x;
        r17.w = cmp(0 < r16.w);
        if (r17.w != 0) {
          r17.w = (int)r16.y & 255;
          r18.w = (int)r17.w + -1;
          r18.w = cmp((uint)r18.w < 32);
          r18.w = r0.w ? r18.w : 0;
          if (r18.w != 0) {
            r26.xy = mad((int2)r17.ww, int2(20,20), int2(860,876));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r17.w, cb2[52].x, r26.x, u2.xxxx
          r17.w = samplerLinear[]..swiz;
            r17.w = (int)r17.w | 32;
            GBufferDiffuseColor[viewID].r26.x = u2.x;
            GBufferDiffuseColor[viewID].r26.y = u2.x;
          }
          r25.z = (int)r25.z + 257;
          r25.x = r13.x * refProbeConstantsCB[r15.w].data[6].y + r25.x;
          r13.x = refProbeConstantsCB[r15.w].data[7].y * r16.w;
          r26.x = refProbeConstantsCB[r15.w].data[7].w;
          r26.yz = refProbeConstantsCB[r15.w].data[8].xy;
          r16.w = dot(r11.xyz, r26.xyz);
          r17.w = dot(r12.yzw, r26.xyz);
          r17.w = -refProbeConstantsCB[r15.w].data[8].z + r17.w;
          r18.w = cmp(r17.w >= 0);
          r17.w = max(abs(r17.w), r2.z);
          r17.w = r18.w ? r17.w : -r17.w;
          r16.w = max(1.00000001e-07, -r16.w);
          r16.w = r17.w / r16.w;
          r16.w = min(131072, abs(r16.w));
          r26.x = refProbeConstantsCB[r15.w].data[8].w;
          r26.yz = refProbeConstantsCB[r15.w].data[9].xy;
          r17.w = dot(r11.xyz, r26.xyz);
          r18.w = dot(r12.yzw, r26.xyz);
          r18.w = -refProbeConstantsCB[r15.w].data[9].z + r18.w;
          r21.w = cmp(r18.w >= 0);
          r18.w = max(abs(r18.w), r2.z);
          r18.w = r21.w ? r18.w : -r18.w;
          r17.w = max(1.00000001e-07, -r17.w);
          r17.w = r18.w / r17.w;
          r16.w = min(abs(r17.w), r16.w);
          r26.x = refProbeConstantsCB[r15.w].data[9].w;
          r26.yz = refProbeConstantsCB[r15.w].data[10].xy;
          r17.w = dot(r11.xyz, r26.xyz);
          r18.w = dot(r12.yzw, r26.xyz);
          r18.w = -refProbeConstantsCB[r15.w].data[10].z + r18.w;
          r21.w = cmp(r18.w >= 0);
          r18.w = max(abs(r18.w), r2.z);
          r18.w = r21.w ? r18.w : -r18.w;
          r17.w = max(1.00000001e-07, -r17.w);
          r17.w = r18.w / r17.w;
          r16.w = min(abs(r17.w), r16.w);
          r26.x = refProbeConstantsCB[r15.w].data[10].w;
          r26.yz = refProbeConstantsCB[r15.w].data[11].xy;
          r17.w = dot(r11.xyz, r26.xyz);
          r18.w = dot(r12.yzw, r26.xyz);
          r18.w = -refProbeConstantsCB[r15.w].data[11].z + r18.w;
          r21.w = cmp(r18.w >= 0);
          r18.w = max(abs(r18.w), r2.z);
          r18.w = r21.w ? r18.w : -r18.w;
          r17.w = max(1.00000001e-07, -r17.w);
          r17.w = r18.w / r17.w;
          r16.w = min(abs(r17.w), r16.w);
          r26.x = refProbeConstantsCB[r15.w].data[11].w;
          r26.yz = refProbeConstantsCB[r15.w].data[12].xy;
          r17.w = dot(r11.xyz, r26.xyz);
          r18.w = dot(r12.yzw, r26.xyz);
          r18.w = -refProbeConstantsCB[r15.w].data[12].z + r18.w;
          r21.w = cmp(r18.w >= 0);
          r18.w = max(abs(r18.w), r2.z);
          r18.w = r21.w ? r18.w : -r18.w;
          r17.w = max(1.00000001e-07, -r17.w);
          r17.w = r18.w / r17.w;
          r16.w = min(abs(r17.w), r16.w);
          r26.x = refProbeConstantsCB[r15.w].data[12].w;
          r26.yz = refProbeConstantsCB[r15.w].data[13].xy;
          r17.w = dot(r11.xyz, r26.xyz);
          r18.w = dot(r12.yzw, r26.xyz);
          r18.w = -refProbeConstantsCB[r15.w].data[13].z + r18.w;
          r21.w = cmp(r18.w >= 0);
          r18.w = max(abs(r18.w), r2.z);
          r18.w = r21.w ? r18.w : -r18.w;
          r17.w = max(1.00000001e-07, -r17.w);
          r17.w = r18.w / r17.w;
          r16.w = min(abs(r17.w), r16.w);
          r26.x = refProbeConstantsCB[r15.w].data[3].w + r12.y;
          r26.yz = refProbeConstantsCB[r15.w].data[4].xy + r12.zw;
          r26.xyz = r11.xyz * r16.www + r26.xyz;
          r17.w = dot(r26.xyz, r26.xyz);
          r17.w = sqrt(r17.w);
          r16.w = r16.w / r17.w;
          r16.w = r16.w + r16.w;
          r16.w = sqrt(r16.w);
          r16.w = r1.z * 5 + r16.w;
          r16.w = -0.844799995 + r16.w;
          r29.x = refProbeConstantsCB[r15.w].data[0].w;
          r29.y = refProbeConstantsCB[r15.w].data[1].z;
          r29.z = refProbeConstantsCB[r15.w].data[2].y;
          r30.x = dot(r26.xyz, r29.xyz);
          r31.xy = refProbeConstantsCB[r15.w].data[1].xw;
          r31.z = refProbeConstantsCB[r15.w].data[2].z;
          r30.y = dot(r26.xyz, r31.xyz);
          r32.x = refProbeConstantsCB[r15.w].data[1].y;
          r32.yz = refProbeConstantsCB[r15.w].data[2].xw;
          r30.z = dot(r26.xyz, r32.xyz);
          if (9 == 0) r17.w = 0; else if (9+16 < 32) {           r17.w = (uint)refProbeConstantsCB[r15.w].data[7].z << (32-(9 + 16)); r17.w = (uint)r17.w >> (32-9);          } else r17.w = (uint)refProbeConstantsCB[r15.w].data[7].z >> 16;
          r30.w = (uint)r17.w;
          r26.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r30.xyzw, r16.w).xyz;
          r27.xzw = (int3)r26.xyz & int3(-2147483648,-2147483648,-2147483648);
          r27.xzw = cmp((int3)r27.xzw == int3(2139095040,2139095040,2139095040));
          r16.w = (int)r27.z | (int)r27.x;
          r16.w = (int)r27.w | (int)r16.w;
          r26.xyz = r16.www ? float3(1,1,0) : r26.xyz;
          r33.x = dot(r12.yzw, r29.xyz);
          r33.y = dot(r12.yzw, r31.xyz);
          r33.z = dot(r12.yzw, r32.xyz);
          r12.yzw = saturate(r33.xyz * refProbeConstantsCB[r15.w].data[3].xyz + float3(0.5,0.5,0.5));
          r33.xy = refProbeConstantsCB[r15.w].data[4].zw * r12.yz;
          r33.z = refProbeConstantsCB[r15.w].data[5].x * r12.w;
          r12.yzw = refProbeConstantsCB[r15.w].data[5].yzw + r33.xyz;
          r30.x = dot(r10.xyz, r29.xyz);
          r30.y = dot(r10.xyz, r31.xyz);
          r30.z = dot(r10.xyz, r32.xyz);
          r27.xzw = cmp(float3(0,0,0) < r30.xyz);
          r14.z = r27.x ? 0 : 0.5;
          r29.xyz = r14.xyz + r12.yzw;
          r29.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r29.xyz, 0).xyz;
          r31.xyz = r30.xyz * r30.xyz;
          r31.xyz = r31.xyz * r13.xxx;
          r15.z = r27.z ? 0 : 0.5;
          r32.xyz = r15.xyz + r12.yzw;
          r32.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r32.xyz, 0).xyz;
          r32.xyz = r32.xyz * r31.yyy;
          r29.xyz = r29.xyz * r31.xxx + r32.xyz;
          r17.z = r27.w ? 0 : 0.5;
          r12.yzw = r17.xyz + r12.yzw;
          r12.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r12.yzw, 0).xyz;
          r12.yzw = r12.yzw * r31.zzz + r29.xyz;
          r27.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r30.xyzw, 6).xyz;
          r29.xyz = (int3)r27.xzw & int3(-2147483648,-2147483648,-2147483648);
          r29.xyz = cmp((int3)r29.xyz == int3(2139095040,2139095040,2139095040));
          r14.z = (int)r29.y | (int)r29.x;
          r14.z = (int)r29.z | (int)r14.z;
          r27.xzw = r14.zzz ? float3(1,1,0) : r27.xzw;
          r29.xyz = r27.xzw * r12.yzw;
          r14.z = dot(r29.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r23.xyz = r12.yzw * r27.xzw + r23.xyz;
          r12.y = r14.z * r2.w;
          r26.xyz = r26.xyz * r13.xxx;
          r12.z = dot(r26.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r12.z = r2.w * r14.z + r12.z;
          r12.y = r12.y / r12.z;
          r24.xyz = r26.xyz * r12.yyy + r24.xyz;
        } else {
          r16.x = r25.x;
          r25.xz = r16.xy;
        }
      }
      r18.xyz = r23.xyz;
      r21.xyz = r24.xyz;
      r22.xy = r25.xz;
      r9.w = (int)r9.w + 32;
    }
    r1.z = cmp(r20.z >= 1);
    r2.z = (int)r20.w & 0x0000ff00;
    bitmask.z = ((~(-1 << 8)) << 0) & 0xffffffff;  r2.z = (((uint)r22.y << 0) & bitmask.z) | ((uint)r2.z & ~bitmask.z);
    r4.w = r1.z ? r2.z : r22.y;
    r1.z = max(1, r22.x);
    r1.z = rcp(r1.z);
    r22.x = saturate(r22.x);
    r12.xyz = r18.xyz * r1.zzz;
    r28.xyz = r21.xyz * r1.zzz;
    r2.z = cmp(r22.x < 0.99000001);
    if (r2.z != 0) {
      r4.w = (int)r4.w + 256;
      r2.z = 1 + -r22.x;
      r2.w = sunConstants.globalProbeExposure * r2.z;
      r13.xyz = -globalProbeConstants.data[0].xyz + r4.xyz;
      r14.x = globalProbeConstants.data[0].w * r13.x;
      r14.yz = globalProbeConstants.data[1].xy * r13.yz;
      r13.xyz = saturate(float3(0.5,0.5,0.5) + r14.xyz);
      r14.xy = globalProbeConstants.data[1].zw * r13.xy;
      r14.z = globalProbeConstants.data[2].x * r13.z;
      r13.xyz = globalProbeConstants.data[2].yzw + r14.xyz;
      r14.xyz = cmp(float3(0,0,0) < r10.xyz);
      r14.xyz = r14.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
      r14.w = 0;
      r15.xyz = r14.wwx + r13.xyz;
      r15.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r15.xyz, 0).xyz;
      r16.xyz = r10.xyz * r10.xyz;
      r16.xyz = r16.xyz * r2.www;
      r17.xyz = r14.wwy + r13.xyz;
      r17.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r17.xyz, 0).xyz;
      r17.xyz = r17.xyz * r16.yyy;
      r15.xyz = r15.xyz * r16.xxx + r17.xyz;
      r13.xyz = r14.wwz + r13.xyz;
      r13.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r13.xyz, 0).xyz;
      r13.xyz = r13.xyz * r16.zzz + r15.xyz;
      r10.w = 0;
      r10.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r10.xyzw, 6).xyz;
      r10.xyz = r13.xyz * r10.xyz;
      r2.w = dot(r10.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r12.xyz = r18.xyz * r1.zzz + r10.xyz;
      r11.w = 0;
      r10.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, r1.w).xyz;
      r1.z = sunConstants.globalProbeExposure * r2.z + -r2.w;
      r1.z = r2.y * r1.z + r2.w;
      r28.xyz = r10.xyz * r1.zzz + r28.xyz;
    }
  } else {
    r12.xyz = float3(0,0,0);
  }
  r1.z = r2.x + r3.z;
  r1.z = log2(abs(r1.z));
  r0.z = r1.z * r0.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z + r3.z;
  r0.z = saturate(-1 + r0.z);
  r10.xyz = r12.xyz * r3.zzz;
  r1.zw = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r1.zw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r1.zw, 0).xy;
  r2.xyz = r28.xyz * r0.zzz;
  r11.xyz = r2.xyz * r1.zzz;
  r2.xyz = r2.xyz * r1.www;
  r3.xyz = r3.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r0.z = (uint)r3.y;
  r6.xyz = r6.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.z = (uint)r6.x;
  r1.z = cmp((int)r0.z == (int)r1.z);
  r1.zw = r1.zz ? r6.yz : float2(-1,0);
  r6.xyz = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.w = (uint)r6.x;
  r2.w = cmp((int)r0.z == (int)r2.w);
  r6.xy = r2.ww ? r6.yz : float2(-1,0);
  r7.xyz = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.w = (uint)r7.x;
  r2.w = cmp((int)r0.z == (int)r2.w);
  r6.zw = r2.ww ? r7.yz : float2(-1,0);
  r7.xyz = r9.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.w = (uint)r7.x;
  r0.z = cmp((int)r0.z == (int)r2.w);
  r7.xy = r0.zz ? r7.yz : float2(-1,0);
  r8.x = r1.z;
  r8.yz = r6.xz;
  r8.w = r7.x;
  r8.xyzw = r8.xyzw + -r3.xxxx;
  r8.xyzw = cmp(abs(r8.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r8.xyzw = r8.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r0.z = r8.x + r8.y;
  r0.z = r0.z + r8.z;
  r0.z = r0.z + r8.w;
  r1.z = r8.y * r6.y;
  r1.z = r8.x * r1.w + r1.z;
  r1.z = r8.z * r6.w + r1.z;
  r1.z = r8.w * r7.y + r1.z;
  r3.w = r1.z / r0.z;
  r0.z = cmp(0 >= r0.z);
  r3.yz = r0.zz ? float2(0,0) : r3.zw;
  r1.zw = (int2)r1.xy & int2(1,1);
  r0.z = cmp((int)r1.w == (int)r1.z);
  r3.xyz = r0.zzz ? r3.xyz : r3.xzy;
  r0.z = -r3.z * 0.5 + r3.x;
  r6.y = r3.z + r0.z;
  r6.z = -r3.y * 0.5 + r0.z;
  r6.x = r6.z + r3.y;
  r3.xyz = float3(1,1,1) + -r6.xyz;
  r3.xyz = r11.xyz * r3.xyz;
  r2.xyz = r2.xyz * r6.xyz + r3.xyz;
  r2.xyz = r10.xyz * r5.xyz + r2.xyz;
  r0.z = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.z != 0) {
    r0.z = dot(r4.xyz, r4.xyz);
    r1.z = rsqrt(r0.z);
    r3.xyz = r4.xyz * r1.zzz;
    r0.z = sqrt(r0.z);
    r1.z = cmp(0 < fogConstants.blendAmount);
    if (r1.z != 0) {
      r1.zw = r0.zz * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r1.zw = fogConstants.atmospherefogdensityatcamera.xy * r1.zw;
      r2.w = cmp(0.00999999978 < abs(r4.z));
      r5.xy = fogConstants.atmospherefogheightdensityscale.xy * r4.zz;
      r5.zw = float2(-1.44269502,-1.44269502) * r5.xy;
      r5.zw = exp2(r5.zw);
      r5.zw = float2(1,1) + -r5.zw;
      r5.xy = r5.zw / r5.xy;
      r5.xy = r5.xy * r1.zw;
      r1.zw = r2.ww ? r5.xy : r1.zw;
      r5.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.zzz;
      r5.xyz = exp2(r5.xyz);
      r6.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.www;
      r6.xyz = exp2(r6.xyz);
      r6.xyz = r6.xyz + -r5.xyz;
      r5.xyz = fogConstants.blendAmount * r6.xyz + r5.xyz;
    } else {
      r1.z = r0.z * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r1.z = fogConstants.atmospherefogdensityatcamera.x * r1.z;
      r1.w = cmp(0.00999999978 < abs(r4.z));
      r2.w = fogConstants.atmospherefogheightdensityscale.x * r4.z;
      r3.w = -1.44269502 * r2.w;
      r3.w = exp2(r3.w);
      r3.w = 1 + -r3.w;
      r2.w = r3.w / r2.w;
      r2.w = r2.w * r1.z;
      r1.z = r1.w ? r2.w : r1.z;
      r6.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.zzz;
      r5.xyz = exp2(r6.xyz);
    }
    r5.xyz = r5.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r5.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r5.xyz);
    r1.z = dot(fogConstants.wldSunFogDir.xyz, -r3.xyz);
    r1.w = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r2.w = fogConstants.atmosphereMieSchlickK * -r1.z + 1;
    r2.w = r2.w * r2.w;
    r2.w = 12.566371 * r2.w;
    r1.w = r1.w / r2.w;
    r0.z = -fogConstants.atmospherehazebasedist + r0.z;
    r0.z = saturate(fogConstants.atmospherehazefadedist * r0.z);
    r0.z = r1.w * r0.z;
    r1.z = saturate(r1.z);
    r1.z = r1.z * r1.z + 1;
    r1.z = r1.z * 0.0596831031 + -1;
    r1.z = fogConstants.atmospheresunstrength * r1.z + 1;
    r3.xyz = fogConstants.atmosphereMieDensity.xyz * r0.zzz;
    r3.xyz = r1.zzz * fogConstants.atmosphereRayleighDensity.xyz + r3.xyz;
    r3.xyz = fogConstants.atmosphereInScatterIntensity * r3.xyz;
    r6.xyz = float3(1,1,1) + -r5.xyz;
    r3.xyz = r6.xyz * r3.xyz;
    r3.xyz = r2.xyz * r5.xyz + r3.xyz;
  } else {
    r0.z = fogConstants.heightFalloff * r4.z;
    r1.z = fogConstants.heightFalloff * r4.z + fogConstants.K0;
    r1.w = cmp(abs(r0.z) < 9.99999975e-05);
    r2.w = min(64, r1.z);
    r2.w = 1.44269502 * r2.w;
    r2.w = exp2(r2.w);
    r3.w = saturate(fogConstants.K0b);
    r5.x = cmp(r1.z < 0);
    r1.z = 1 + r1.z;
    r1.z = r5.x ? r2.w : r1.z;
    r1.z = -fogConstants.K0b + r1.z;
    r0.z = r1.w ? 1 : r0.z;
    r0.z = r1.z / r0.z;
    r0.z = r1.w ? r3.w : r0.z;
    r0.z = fogConstants.expMul * r0.z;
    r1.z = dot(r4.xyz, r4.xyz);
    r1.w = sqrt(r1.z);
    r0.z = r0.z * r1.w + fogConstants.expAdd;
    r0.z = exp2(r0.z);
    r0.z = min(1, r0.z);
    r0.z = 1 + -r0.z;
    r1.z = rsqrt(r1.z);
    r5.xyz = r4.xyz * r1.zzz;
    r1.z = dot(fogConstants.wldSunFogDir.xyz, r5.xyz);
    r1.z = saturate(fogConstants.sunFogAngles.y * r1.z + fogConstants.sunFogAngles.x);
    r5.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r5.xyzw = r1.zzzz * r5.xyzw + fogConstants.sunFogColor.xyzw;
    r0.z = r5.w * r0.z;
    r5.xyz = r5.xyz + -r2.xyz;
    r3.xyz = r0.zzz * r5.xyz + r2.xyz;
  }
  r2.xyz = relHDRExposure.yyy * r3.xyz;
  r3.xyz = cmp(r2.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r2.xyz = r3.xyz ? r2.xyz : 0;
  r2.xyz = min(float3(65024,65024,64512), r2.xyz);
  r0.z = cmp(0 < permuteHighlight);
  r3.xyzw = permuteHighlight & int4(32,3,64,12);
  r1.zw = cmp((int2)r3.xz != int2(0,0));
  r3.xy = cmp((int2)r3.yw == int2(1,0));
  r1.zw = r1.zw ? r3.xy : 0;
  r3.xy = r1.zw ? float2(0.200000003,0.200000003) : 0;
  r1.z = permuteHighlight & 16;
  r1.w = cmp((int)r1.z != 0);
  r1.z = cmp((int)r1.z == 16);
  r1.z = r1.z ? r1.w : 0;
  r3.z = r1.z ? 0.200000 : 0;
  r3.xyz = r3.xyz * relHDRExposure.xxx + -r2.xyz;
  r3.xyz = r3.xyz * float3(0.5,0.5,0.5) + r2.xyz;
  r2.xyz = r0.zzz ? r3.xyz : r2.xyz;
  if (enableCountDebug != 0) {
    if (debugDrawOverlayType != 0) {
      switch (cb2[53].y) {
        case 1 :        r0.z = 0;
        break;
        case 2 :        r0.z = 0;
        break;
        case 3 :        r0.z = 0;
        break;
        case 4 :        r0.z = (int)r4.w & 255;
        break;
        case 5 :        if (8 == 0) r0.z = 0; else if (8+8 < 32) {         r0.z = (uint)r4.w << (32-(8 + 8)); r0.z = (uint)r0.z >> (32-8);        } else r0.z = (uint)r4.w >> 8;
        break;
        default :
        r0.z = 0;
        break;
      }
      r0.z = (uint)r0.z;
      r0.z = drawNumLighstScale * r0.z;
      r3.xyz = r0.zzz * float3(0.5,0.5,0.5) + -r2.xyz;
      r2.xyz = drawNumLightsAlpha * r3.xyz + r2.xyz;
    }
  }
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xyyy, r2.xyzx
  if (r0.w != 0) {
    r1.xyz = eyeOffset.xyz + r4.xyz;
    r1.w = 0;
    GBufferDiffuseColor[viewID].92 = u2.xyzw;
    r0.z = (int)r4.w & 255;
    GBufferDiffuseColor[viewID].108 = u2.x;
  }
  if (enableCountDebug != 0) {
    // Needs manual fix for instruction:
    atomic_iadd g1, l(0), l(0)
    InterlockedAdd(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_iadd g1, l(4), l(0)
    InterlockedAdd(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_iadd g1, l(8), l(0)
    InterlockedAdd(dest, value, orig_value);
    r0.z = (int)r4.w & 255;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(12), r0.z
    InterlockedAdd(dest, value, orig_value);
    if (8 == 0) r0.w = 0; else if (8+8 < 32) {     r0.w = (uint)r4.w << (32-(8 + 8)); r0.w = (uint)r0.w >> (32-8);    } else r0.w = (uint)r4.w >> 8;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(16), r0.w
    InterlockedAdd(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(0), l(0)
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(4), l(0)
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(8), l(0)
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(12), r0.z
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(16), r0.w
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    imm_atomic_iadd r1.x, g0, l(0), l(1)
    InterlockedAdd(dest, imm_value, orig_value);
    r0.z = cmp((int)r1.x == 63);
    if (r0.z != 0) {
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
        ld_raw r0.z, l(16), g1.xxxx
      r1.xz = viewID;
      r1.yw = float2(7.8472714e-44,0);
      // Needs manual fix for instruction:
        atomic_iadd u2, r1.xyxx, r0.z
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
        ld_raw r0.z, l(16), g2.xxxx
      // Needs manual fix for instruction:
        atomic_umax u2, r1.zwzz, r0.z
      InterlockedMax(dest, value, orig_value);
      r0.xy = cmp((int2)r0.xy == centerGroupIDx);
      r0.x = r0.y ? r0.x : 0;
      if (r0.x != 0) {
        GBufferDiffuseColor[viewID].20 = u2.xyzw;
        GBufferDiffuseColor[viewID].36 = u2.x;
      }
    }
  }
  return;
}