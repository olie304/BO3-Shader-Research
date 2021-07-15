// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:23:53 2021

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
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_structured u2, 1792
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28;
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
  r0.x = mad(permuteStride, 29, (int)vThreadGroupID.x);
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
  r3.xyzw = GBufferSpecularColorAndOcclusion.Load(r1.xyw).xyzw;
  r4.xy = (uint2)r1.xy;
  r4.xy = float2(0.5,0.5) + r4.xy;
  r4.zw = renderTargetSize.zw * r4.xy;
  r4.z = gSSAOTexture.SampleLevel(samplerLinearClamp_s, r4.zw, 0).x;
  r3.z = r4.z * r3.z;
  if (showAO != 0) {
    r4.z = 0.75 * r3.z;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xyyy, r4.zzzz
    return;
  } else {
    r4.z = enableAO ? r3.z : 1;
  }
  r3.z = cmp(r2.z >= 0.5);
  r4.w = GBufferDepth.Load(r1.xyw).x;
  r5.xyz = GBufferDiffuseColor.Load(r1.xyw).xyz;
  r6.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r7.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r8.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r9.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyz, int3(0, 0, 0)).xyw;
  r1.z = cmp(r4.w >= 0.984375);
  r1.w = 1.01587307 * r4.w;
  r4.w = r4.w * 64 + -63;
  r1.z = r1.z ? r4.w : r1.w;
  r1.z = max(9.99999994e-09, r1.z);
  r1.z = rcp(r1.z);
  r0.w = (int)r0.w & (int)r1.z;
  r1.zw = -subpixelOffset.xy + r4.xy;
  r1.zw = renderTargetSize.zw * r1.zw;
  r1.zw = r1.zw * float2(2,-2) + float2(-1,1);
  r10.x = inverseProjectionMatrix._m00 * r1.z;
  r10.y = inverseProjectionMatrix._m11 * r1.w;
  r10.z = 1;
  r4.xyw = r10.xyz * r0.www;
  r10.xyz = inverseViewMatrix._m10_m11_m12 * r4.yyy;
  r10.xyz = r4.xxx * inverseViewMatrix._m00_m01_m02 + r10.xyz;
  r4.xyw = r4.www * inverseViewMatrix._m20_m21_m22 + r10.xyz;
  r0.w = r2.w * 3 + 0.5;
  r0.w = (uint)r0.w;
  r1.zw = r2.xy * float2(2,2) + float2(-1,-1);
  r1.zw = float2(0.850000024,0.850000024) * r1.zw;
  r2.x = dot(r1.zw, r1.zw);
  r10.zw = float2(2,1) + -r2.xx;
  r2.x = sqrt(r10.z);
  r10.xy = r2.xx * r1.zw;
  r11.xyzw = (int4)r0.wwww & int4(2,1,2,1);
  r11.xyzw = r11.zwxy ? float4(-1,-1,1.40129846e-45,1.40129846e-45) : float4(1,1,0,0);
  r0.w = (int)r11.w ^ (int)r11.z;
  r11.z = r0.w ? -1 : 1;
  r2.xyw = float3(-1,0,1) * r11.xyz;
  r12.xyz = float3(1,-2,1) * r11.xyz;
  r10.xyz = float3(0.408248305,0.707106769,0.577350259) * r10.xyw;
  r2.xyw = r10.yyy * r2.xyw;
  r2.xyw = r12.xyz * r10.xxx + r2.xyw;
  r10.xyz = r11.xyz * r10.zzz + r2.xyw;
  r0.w = r3.z ? -0.5 : -0.00146627566;
  r0.w = r2.z + r0.w;
  r2.y = saturate(2.00982332 * r0.w);
  r0.w = dot(-r4.xyw, -r4.xyw);
  r0.w = rsqrt(r0.w);
  r11.xyz = -r4.xyw * r0.www;
  r2.x = saturate(dot(r10.xyz, r11.xyz));
  r0.w = dot(-r11.xyz, r10.xyz);
  r0.w = r0.w + r0.w;
  r11.xyz = r10.xyz * -r0.www + -r11.xyz;
  r0.w = 17 * r2.y;
  r0.w = exp2(r0.w);
  r0.w = 2 + r0.w;
  r0.w = 2 / r0.w;
  r0.w = sqrt(r0.w);
  r1.zw = float2(0.5,0.5) * renderTargetSize.xy;
  r1.zw = (uint2)r1.zw;
  r1.zw = cmp((int2)r1.zw == (int2)r1.xy);
  r1.z = r1.w ? r1.z : 0;
  r1.w = 1 + -r2.y;
  r2.z = 5 * r1.w;
  r2.w = r1.w * 5 + -2.5;
  r2.w = 0.400000006 * r2.w;
  r2.w = max(0, r2.w);
  r2.w = 100 * r2.w;
  r12.xy = -r1.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r5.w = exp2(r12.x);
  r5.w = r5.w * r2.x;
  r5.w = 9.1368103 * r5.w;
  r6.w = r2.z * r1.w;
  r6.w = -r6.w * 2.0159049 + r12.y;
  r6.w = exp2(r6.w);
  r6.w = r6.w * r2.x;
  r6.w = 9.70808983 * r6.w;
  r5.w = max(r6.w, r5.w);
  r5.w = max(1.26815999, r5.w);
  r6.w = numRefProbes + -numOverrideProbes;
  r7.w = (uint)r0.y >> 24;
  if (10 == 0) r0.y = 0; else if (10+12 < 32) {   r0.y = (uint)r0.y << (32-(10 + 12)); r0.y = (uint)r0.y >> (32-10);  } else r0.y = (uint)r0.y >> 12;
  r12.x = 16;
  r13.yz = float2(0,1);
  r14.xy = float2(0,0);
  r15.xz = float2(1,1);
  r16.xy = float2(0,0);
  r17.xy = float2(0,0);
  r18.xyzw = float4(0,0,0,0);
  r19.xyzw = float4(0,0,0,0);
  r8.w = 0;
  while (true) {
    r9.w = cmp((int)r8.w == 2);
    if (r9.w != 0) break;
    r9.w = r8.w ? r0.y : r7.w;
    r13.w = cmp((uint)r9.w >= (uint)r6.w);
    r14.w = cmp((uint)r9.w < numRefProbes);
    r13.w = r13.w ? r14.w : 0;
    if (r13.w != 0) {
      r9.w = (int)r9.w * 14;
      if (r1.z != 0) {
        r13.w = (int)r19.w & 3;
        r13.w = mad((int)r13.w, 20, 880);
        r12.yzw = refProbeConstantsCB[r9.w].data[0].xyz + eyeOffset.xyz;
        GBufferDiffuseColor[viewID].r13.w = u2.xyzw;
      }
      r20.w = (int)r19.w + 1;
      r12.yzw = -refProbeConstantsCB[r9.w].data[0].xyz + r4.xyw;
      r13.w = 0x0000ffff & (int)refProbeConstantsCB[r9.w].data[7].z;
      if (6 == 0) r14.w = 0; else if (6+25 < 32) {       r14.w = (uint)refProbeConstantsCB[r9.w].data[7].z << (32-(6 + 25)); r14.w = (uint)r14.w >> (32-6);      } else r14.w = (uint)refProbeConstantsCB[r9.w].data[7].z >> 25;
      r16.w = (int)r13.w * 6;
      r17.w = dot(refProbeAttenuationConstantsCB[r16.w].data[0].xyz, r12.yzw);
      r17.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[0].w + r17.w);
      r21.x = dot(refProbeAttenuationConstantsCB[r16.w].data[1].xyz, r12.yzw);
      r21.x = saturate(refProbeAttenuationConstantsCB[r16.w].data[1].w + r21.x);
      r17.w = r21.x * r17.w;
      r21.x = dot(refProbeAttenuationConstantsCB[r16.w].data[2].xyz, r12.yzw);
      r21.x = saturate(refProbeAttenuationConstantsCB[r16.w].data[2].w + r21.x);
      r17.w = r21.x * r17.w;
      r21.x = dot(refProbeAttenuationConstantsCB[r16.w].data[3].xyz, r12.yzw);
      r21.x = saturate(refProbeAttenuationConstantsCB[r16.w].data[3].w + r21.x);
      r17.w = r21.x * r17.w;
      r21.x = dot(refProbeAttenuationConstantsCB[r16.w].data[4].xyz, r12.yzw);
      r21.x = saturate(refProbeAttenuationConstantsCB[r16.w].data[4].w + r21.x);
      r17.w = r21.x * r17.w;
      r21.x = dot(refProbeAttenuationConstantsCB[r16.w].data[5].xyz, r12.yzw);
      r16.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[5].w + r21.x);
      r13.x = r17.w * r16.w;
      r16.w = 1 & (int)refProbeConstantsCB[r9.w].data[6].x;
      r21.xy = r16.ww ? r13.xy : r13.zx;
      r13.x = refProbeConstantsCB[r9.w].data[6].x;
      r22.xy = r21.xy;
      r16.w = 1;
      while (true) {
        r17.w = cmp((int)r16.w >= (int)r14.w);
        if (r17.w != 0) break;
        r17.w = (int)r13.w + (int)r16.w;
        r17.w = (int)r17.w * 6;
        r21.z = dot(refProbeAttenuationConstantsCB[r17.w].data[0].xyz, r12.yzw);
        r21.z = saturate(refProbeAttenuationConstantsCB[r17.w].data[0].w + r21.z);
        r21.z = r22.x * r21.z;
        r21.w = dot(refProbeAttenuationConstantsCB[r17.w].data[1].xyz, r12.yzw);
        r21.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[1].w + r21.w);
        r21.z = r21.z * r21.w;
        r21.w = dot(refProbeAttenuationConstantsCB[r17.w].data[2].xyz, r12.yzw);
        r21.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[2].w + r21.w);
        r21.z = r21.z * r21.w;
        r21.w = dot(refProbeAttenuationConstantsCB[r17.w].data[3].xyz, r12.yzw);
        r21.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[3].w + r21.w);
        r21.z = r21.z * r21.w;
        r21.w = dot(refProbeAttenuationConstantsCB[r17.w].data[4].xyz, r12.yzw);
        r21.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[4].w + r21.w);
        r21.z = r21.z * r21.w;
        r21.w = dot(refProbeAttenuationConstantsCB[r17.w].data[5].xyz, r12.yzw);
        r17.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[5].w + r21.w);
        r22.x = r21.z * r17.w;
        r21.w = (uint)r13.x >> 2;
        if (1 == 0) r22.z = 0; else if (1+2 < 32) {         r22.z = (uint)r13.x << (32-(1 + 2)); r22.z = (uint)r22.z >> (32-1);        } else r22.z = (uint)r13.x >> 2;
        r22.w = (int)r21.w & 2;
        r23.x = max(r22.y, r22.x);
        r17.w = -r21.z * r17.w + 1;
        r17.w = r22.y * r17.w;
        r15.y = r22.w ? r17.w : r23.x;
        r22.xy = r22.zz ? r22.xy : r15.xy;
        r16.w = (int)r16.w + 1;
        r13.x = r21.w;
      }
      r22.y = saturate(r22.y);
      r13.x = refProbeConstantsCB[r9.w].data[6].y * r22.y;
      r13.w = cmp(0 < r13.x);
      if (r13.w != 0) {
        r13.w = (int)r20.w & 7;
        r14.w = (int)r13.w + -1;
        r14.w = cmp((uint)r14.w < 32);
        r14.w = r1.z ? r14.w : 0;
        if (r14.w != 0) {
          r21.xy = mad((int2)r13.ww, int2(20,20), int2(860,876));
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r13.w, cb2[52].x, r21.x, u2.xxxx
        r13.w = samplerLinear[]..swiz;
          r13.w = (int)r13.w | 32;
          GBufferDiffuseColor[viewID].r21.x = u2.x;
          GBufferDiffuseColor[viewID].r21.y = u2.x;
        }
        r19.w = (int)r19.w + 257;
        r19.z = r22.y * refProbeConstantsCB[r9.w].data[6].y + r19.z;
        r13.x = refProbeConstantsCB[r9.w].data[7].y * r13.x;
        r21.x = refProbeConstantsCB[r9.w].data[7].w;
        r21.yz = refProbeConstantsCB[r9.w].data[8].xy;
        r13.w = dot(r11.xyz, r21.xyz);
        r14.w = dot(r12.yzw, r21.xyz);
        r14.w = -refProbeConstantsCB[r9.w].data[8].z + r14.w;
        r15.y = cmp(r14.w >= 0);
        r14.w = max(abs(r14.w), r2.w);
        r14.w = r15.y ? r14.w : -r14.w;
        r13.w = max(1.00000001e-07, -r13.w);
        r13.w = r14.w / r13.w;
        r13.w = min(131072, abs(r13.w));
        r21.x = refProbeConstantsCB[r9.w].data[8].w;
        r21.yz = refProbeConstantsCB[r9.w].data[9].xy;
        r14.w = dot(r11.xyz, r21.xyz);
        r15.y = dot(r12.yzw, r21.xyz);
        r15.y = -refProbeConstantsCB[r9.w].data[9].z + r15.y;
        r16.w = cmp(r15.y >= 0);
        r15.y = max(abs(r15.y), r2.w);
        r15.y = r16.w ? r15.y : -r15.y;
        r14.w = max(1.00000001e-07, -r14.w);
        r14.w = r15.y / r14.w;
        r13.w = min(abs(r14.w), r13.w);
        r21.x = refProbeConstantsCB[r9.w].data[9].w;
        r21.yz = refProbeConstantsCB[r9.w].data[10].xy;
        r14.w = dot(r11.xyz, r21.xyz);
        r15.y = dot(r12.yzw, r21.xyz);
        r15.y = -refProbeConstantsCB[r9.w].data[10].z + r15.y;
        r16.w = cmp(r15.y >= 0);
        r15.y = max(abs(r15.y), r2.w);
        r15.y = r16.w ? r15.y : -r15.y;
        r14.w = max(1.00000001e-07, -r14.w);
        r14.w = r15.y / r14.w;
        r13.w = min(abs(r14.w), r13.w);
        r21.x = refProbeConstantsCB[r9.w].data[10].w;
        r21.yz = refProbeConstantsCB[r9.w].data[11].xy;
        r14.w = dot(r11.xyz, r21.xyz);
        r15.y = dot(r12.yzw, r21.xyz);
        r15.y = -refProbeConstantsCB[r9.w].data[11].z + r15.y;
        r16.w = cmp(r15.y >= 0);
        r15.y = max(abs(r15.y), r2.w);
        r15.y = r16.w ? r15.y : -r15.y;
        r14.w = max(1.00000001e-07, -r14.w);
        r14.w = r15.y / r14.w;
        r13.w = min(abs(r14.w), r13.w);
        r21.x = refProbeConstantsCB[r9.w].data[11].w;
        r21.yz = refProbeConstantsCB[r9.w].data[12].xy;
        r14.w = dot(r11.xyz, r21.xyz);
        r15.y = dot(r12.yzw, r21.xyz);
        r15.y = -refProbeConstantsCB[r9.w].data[12].z + r15.y;
        r16.w = cmp(r15.y >= 0);
        r15.y = max(abs(r15.y), r2.w);
        r15.y = r16.w ? r15.y : -r15.y;
        r14.w = max(1.00000001e-07, -r14.w);
        r14.w = r15.y / r14.w;
        r13.w = min(abs(r14.w), r13.w);
        r21.x = refProbeConstantsCB[r9.w].data[12].w;
        r21.yz = refProbeConstantsCB[r9.w].data[13].xy;
        r14.w = dot(r11.xyz, r21.xyz);
        r15.y = dot(r12.yzw, r21.xyz);
        r15.y = -refProbeConstantsCB[r9.w].data[13].z + r15.y;
        r16.w = cmp(r15.y >= 0);
        r15.y = max(abs(r15.y), r2.w);
        r15.y = r16.w ? r15.y : -r15.y;
        r14.w = max(1.00000001e-07, -r14.w);
        r14.w = r15.y / r14.w;
        r13.w = min(abs(r14.w), r13.w);
        r21.x = refProbeConstantsCB[r9.w].data[3].w + r12.y;
        r21.yz = refProbeConstantsCB[r9.w].data[4].xy + r12.zw;
        r21.xyz = r11.xyz * r13.www + r21.xyz;
        r14.w = dot(r21.xyz, r21.xyz);
        r14.w = sqrt(r14.w);
        r13.w = r13.w / r14.w;
        r13.w = r13.w + r13.w;
        r13.w = sqrt(r13.w);
        r13.w = r1.w * 5 + r13.w;
        r13.w = -0.844799995 + r13.w;
        r23.x = refProbeConstantsCB[r9.w].data[0].w;
        r23.y = refProbeConstantsCB[r9.w].data[1].z;
        r23.z = refProbeConstantsCB[r9.w].data[2].y;
        r24.x = dot(r21.xyz, r23.xyz);
        r25.xy = refProbeConstantsCB[r9.w].data[1].xw;
        r25.z = refProbeConstantsCB[r9.w].data[2].z;
        r24.y = dot(r21.xyz, r25.xyz);
        r26.x = refProbeConstantsCB[r9.w].data[1].y;
        r26.yz = refProbeConstantsCB[r9.w].data[2].xw;
        r24.z = dot(r21.xyz, r26.xyz);
        if (9 == 0) r14.w = 0; else if (9+16 < 32) {         r14.w = (uint)refProbeConstantsCB[r9.w].data[7].z << (32-(9 + 16)); r14.w = (uint)r14.w >> (32-9);        } else r14.w = (uint)refProbeConstantsCB[r9.w].data[7].z >> 16;
        r24.w = (uint)r14.w;
        r21.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r24.xyzw, r13.w).xyz;
        r22.xzw = (int3)r21.xyz & int3(-2147483648,-2147483648,-2147483648);
        r22.xzw = cmp((int3)r22.xzw == int3(2139095040,2139095040,2139095040));
        r13.w = (int)r22.z | (int)r22.x;
        r13.w = (int)r22.w | (int)r13.w;
        r21.xyz = r13.www ? float3(1,1,0) : r21.xyz;
        r27.x = dot(r12.yzw, r23.xyz);
        r27.y = dot(r12.yzw, r25.xyz);
        r27.z = dot(r12.yzw, r26.xyz);
        r12.yzw = saturate(r27.xyz * refProbeConstantsCB[r9.w].data[3].xyz + float3(0.5,0.5,0.5));
        r27.xy = refProbeConstantsCB[r9.w].data[4].zw * r12.yz;
        r27.z = refProbeConstantsCB[r9.w].data[5].x * r12.w;
        r12.yzw = refProbeConstantsCB[r9.w].data[5].yzw + r27.xyz;
        r24.x = dot(r10.xyz, r23.xyz);
        r24.y = dot(r10.xyz, r25.xyz);
        r24.z = dot(r10.xyz, r26.xyz);
        r22.xzw = cmp(float3(0,0,0) < r24.xyz);
        r14.z = r22.x ? 0 : 0.5;
        r23.xyz = r14.xyz + r12.yzw;
        r23.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
        r25.xyz = r24.xyz * r24.xyz;
        r25.xyz = r25.xyz * r13.xxx;
        r16.z = r22.z ? 0 : 0.5;
        r26.xyz = r16.xyz + r12.yzw;
        r26.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
        r26.xyz = r26.xyz * r25.yyy;
        r23.xyz = r23.xyz * r25.xxx + r26.xyz;
        r17.z = r22.w ? 0 : 0.5;
        r12.yzw = r17.xyz + r12.yzw;
        r12.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r12.yzw, 0).xyz;
        r12.yzw = r12.yzw * r25.zzz + r23.xyz;
        r22.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r24.xyzw, 6).xyz;
        r23.xyz = (int3)r22.xzw & int3(-2147483648,-2147483648,-2147483648);
        r23.xyz = cmp((int3)r23.xyz == int3(2139095040,2139095040,2139095040));
        r9.w = (int)r23.y | (int)r23.x;
        r9.w = (int)r23.z | (int)r9.w;
        r22.xzw = r9.www ? float3(1,1,0) : r22.xzw;
        r23.xyz = r22.xzw * r12.yzw;
        r9.w = dot(r23.xyz, float3(0.212599993,0.715200007,0.0722000003));
        r18.xyz = r12.yzw * r22.xzw + r18.xyz;
        r12.y = r9.w * r5.w;
        r21.xyz = r21.xyz * r13.xxx;
        r12.z = dot(r21.xyz, float3(0.212599993,0.715200007,0.0722000003));
        r9.w = r5.w * r9.w + r12.z;
        r9.w = r12.y / r9.w;
        r23.x = r18.w;
        r23.yz = r19.xy;
        r12.yzw = r21.xyz * r9.www + r23.xyz;
        r18.w = r12.y;
        r19.xy = r12.zw;
      } else {
        r20.xyz = r19.xyz;
        r19.xyzw = r20.xyzw;
      }
    }
    r8.w = (int)r8.w + 1;
  }
  r12.x = 16;
  r13.yz = float2(0,1);
  r14.xy = float2(0,0);
  r16.xy = float2(0,0);
  r17.xy = float2(0,0);
  r20.xyz = r18.xyz;
  r21.x = r18.w;
  r21.yz = r19.xy;
  r15.xy = r19.zw;
  r8.w = 0;
  while (true) {
    r9.w = cmp((int)r8.w == 2);
    if (r9.w != 0) break;
    r9.w = r8.w ? r0.y : r7.w;
    r13.w = cmp((uint)r9.w < (uint)r6.w);
    if (r13.w != 0) {
      r9.w = (int)r9.w * 14;
      if (r1.z != 0) {
        r13.w = (int)r15.y & 15;
        r13.w = mad((int)r13.w, 20, 880);
        r12.yzw = refProbeConstantsCB[r9.w].data[0].xyz + eyeOffset.xyz;
        GBufferDiffuseColor[viewID].r13.w = u2.xyzw;
      }
      r22.y = (int)r15.y + 1;
      r12.yzw = -refProbeConstantsCB[r9.w].data[0].xyz + r4.xyw;
      r13.w = 0x0000ffff & (int)refProbeConstantsCB[r9.w].data[7].z;
      if (6 == 0) r14.w = 0; else if (6+25 < 32) {       r14.w = (uint)refProbeConstantsCB[r9.w].data[7].z << (32-(6 + 25)); r14.w = (uint)r14.w >> (32-6);      } else r14.w = (uint)refProbeConstantsCB[r9.w].data[7].z >> 25;
      r16.w = (int)r13.w * 6;
      r17.w = dot(refProbeAttenuationConstantsCB[r16.w].data[0].xyz, r12.yzw);
      r17.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[0].w + r17.w);
      r20.w = dot(refProbeAttenuationConstantsCB[r16.w].data[1].xyz, r12.yzw);
      r20.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[1].w + r20.w);
      r17.w = r20.w * r17.w;
      r20.w = dot(refProbeAttenuationConstantsCB[r16.w].data[2].xyz, r12.yzw);
      r20.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[2].w + r20.w);
      r17.w = r20.w * r17.w;
      r20.w = dot(refProbeAttenuationConstantsCB[r16.w].data[3].xyz, r12.yzw);
      r20.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[3].w + r20.w);
      r17.w = r20.w * r17.w;
      r20.w = dot(refProbeAttenuationConstantsCB[r16.w].data[4].xyz, r12.yzw);
      r20.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[4].w + r20.w);
      r17.w = r20.w * r17.w;
      r20.w = dot(refProbeAttenuationConstantsCB[r16.w].data[5].xyz, r12.yzw);
      r16.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[5].w + r20.w);
      r13.x = r17.w * r16.w;
      r16.w = 1 & (int)refProbeConstantsCB[r9.w].data[6].x;
      r22.zw = r16.ww ? r13.xy : r13.zx;
      r13.x = refProbeConstantsCB[r9.w].data[6].x;
      r23.xy = r22.zw;
      r16.w = 1;
      while (true) {
        r17.w = cmp((int)r16.w >= (int)r14.w);
        if (r17.w != 0) break;
        r17.w = (int)r13.w + (int)r16.w;
        r17.w = (int)r17.w * 6;
        r20.w = dot(refProbeAttenuationConstantsCB[r17.w].data[0].xyz, r12.yzw);
        r20.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[0].w + r20.w);
        r20.w = r23.x * r20.w;
        r21.w = dot(refProbeAttenuationConstantsCB[r17.w].data[1].xyz, r12.yzw);
        r21.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[1].w + r21.w);
        r20.w = r21.w * r20.w;
        r21.w = dot(refProbeAttenuationConstantsCB[r17.w].data[2].xyz, r12.yzw);
        r21.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[2].w + r21.w);
        r20.w = r21.w * r20.w;
        r21.w = dot(refProbeAttenuationConstantsCB[r17.w].data[3].xyz, r12.yzw);
        r21.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[3].w + r21.w);
        r20.w = r21.w * r20.w;
        r21.w = dot(refProbeAttenuationConstantsCB[r17.w].data[4].xyz, r12.yzw);
        r21.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[4].w + r21.w);
        r20.w = r21.w * r20.w;
        r21.w = dot(refProbeAttenuationConstantsCB[r17.w].data[5].xyz, r12.yzw);
        r17.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[5].w + r21.w);
        r23.x = r20.w * r17.w;
        r21.w = (uint)r13.x >> 2;
        if (1 == 0) r23.z = 0; else if (1+2 < 32) {         r23.z = (uint)r13.x << (32-(1 + 2)); r23.z = (uint)r23.z >> (32-1);        } else r23.z = (uint)r13.x >> 2;
        r23.w = (int)r21.w & 2;
        r24.x = max(r23.y, r23.x);
        r17.w = -r20.w * r17.w + 1;
        r17.w = r23.y * r17.w;
        r15.w = r23.w ? r17.w : r24.x;
        r23.xy = r23.zz ? r23.xy : r15.zw;
        r16.w = (int)r16.w + 1;
        r13.x = r21.w;
      }
      r13.x = saturate(r23.y + -r19.z);
      r13.w = refProbeConstantsCB[r9.w].data[6].y * r13.x;
      r14.w = cmp(0 < r13.w);
      if (r14.w != 0) {
        r14.w = (int)r22.y & 31;
        r15.w = (int)r14.w + -1;
        r15.w = cmp((uint)r15.w < 32);
        r15.w = r1.z ? r15.w : 0;
        if (r15.w != 0) {
          r22.zw = mad((int2)r14.ww, int2(20,20), int2(860,876));
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r14.w, cb2[52].x, r22.z, u2.xxxx
        r14.w = samplerLinear[]..swiz;
          r14.w = (int)r14.w | 32;
          GBufferDiffuseColor[viewID].r22.z = u2.x;
          GBufferDiffuseColor[viewID].r22.w = u2.x;
        }
        r15.y = (int)r15.y + 257;
        r15.x = r13.x * refProbeConstantsCB[r9.w].data[6].y + r15.x;
        r13.x = refProbeConstantsCB[r9.w].data[7].y * r13.w;
        r24.x = refProbeConstantsCB[r9.w].data[7].w;
        r24.yz = refProbeConstantsCB[r9.w].data[8].xy;
        r13.w = dot(r11.xyz, r24.xyz);
        r14.w = dot(r12.yzw, r24.xyz);
        r14.w = -refProbeConstantsCB[r9.w].data[8].z + r14.w;
        r15.w = cmp(r14.w >= 0);
        r14.w = max(abs(r14.w), r2.w);
        r14.w = r15.w ? r14.w : -r14.w;
        r13.w = max(1.00000001e-07, -r13.w);
        r13.w = r14.w / r13.w;
        r13.w = min(131072, abs(r13.w));
        r24.x = refProbeConstantsCB[r9.w].data[8].w;
        r24.yz = refProbeConstantsCB[r9.w].data[9].xy;
        r14.w = dot(r11.xyz, r24.xyz);
        r15.w = dot(r12.yzw, r24.xyz);
        r15.w = -refProbeConstantsCB[r9.w].data[9].z + r15.w;
        r16.w = cmp(r15.w >= 0);
        r15.w = max(abs(r15.w), r2.w);
        r15.w = r16.w ? r15.w : -r15.w;
        r14.w = max(1.00000001e-07, -r14.w);
        r14.w = r15.w / r14.w;
        r13.w = min(abs(r14.w), r13.w);
        r24.x = refProbeConstantsCB[r9.w].data[9].w;
        r24.yz = refProbeConstantsCB[r9.w].data[10].xy;
        r14.w = dot(r11.xyz, r24.xyz);
        r15.w = dot(r12.yzw, r24.xyz);
        r15.w = -refProbeConstantsCB[r9.w].data[10].z + r15.w;
        r16.w = cmp(r15.w >= 0);
        r15.w = max(abs(r15.w), r2.w);
        r15.w = r16.w ? r15.w : -r15.w;
        r14.w = max(1.00000001e-07, -r14.w);
        r14.w = r15.w / r14.w;
        r13.w = min(abs(r14.w), r13.w);
        r24.x = refProbeConstantsCB[r9.w].data[10].w;
        r24.yz = refProbeConstantsCB[r9.w].data[11].xy;
        r14.w = dot(r11.xyz, r24.xyz);
        r15.w = dot(r12.yzw, r24.xyz);
        r15.w = -refProbeConstantsCB[r9.w].data[11].z + r15.w;
        r16.w = cmp(r15.w >= 0);
        r15.w = max(abs(r15.w), r2.w);
        r15.w = r16.w ? r15.w : -r15.w;
        r14.w = max(1.00000001e-07, -r14.w);
        r14.w = r15.w / r14.w;
        r13.w = min(abs(r14.w), r13.w);
        r24.x = refProbeConstantsCB[r9.w].data[11].w;
        r24.yz = refProbeConstantsCB[r9.w].data[12].xy;
        r14.w = dot(r11.xyz, r24.xyz);
        r15.w = dot(r12.yzw, r24.xyz);
        r15.w = -refProbeConstantsCB[r9.w].data[12].z + r15.w;
        r16.w = cmp(r15.w >= 0);
        r15.w = max(abs(r15.w), r2.w);
        r15.w = r16.w ? r15.w : -r15.w;
        r14.w = max(1.00000001e-07, -r14.w);
        r14.w = r15.w / r14.w;
        r13.w = min(abs(r14.w), r13.w);
        r24.x = refProbeConstantsCB[r9.w].data[12].w;
        r24.yz = refProbeConstantsCB[r9.w].data[13].xy;
        r14.w = dot(r11.xyz, r24.xyz);
        r15.w = dot(r12.yzw, r24.xyz);
        r15.w = -refProbeConstantsCB[r9.w].data[13].z + r15.w;
        r16.w = cmp(r15.w >= 0);
        r15.w = max(abs(r15.w), r2.w);
        r15.w = r16.w ? r15.w : -r15.w;
        r14.w = max(1.00000001e-07, -r14.w);
        r14.w = r15.w / r14.w;
        r13.w = min(abs(r14.w), r13.w);
        r24.x = refProbeConstantsCB[r9.w].data[3].w + r12.y;
        r24.yz = refProbeConstantsCB[r9.w].data[4].xy + r12.zw;
        r23.xzw = r11.xyz * r13.www + r24.xyz;
        r14.w = dot(r23.xzw, r23.xzw);
        r14.w = sqrt(r14.w);
        r13.w = r13.w / r14.w;
        r13.w = r13.w + r13.w;
        r13.w = sqrt(r13.w);
        r13.w = r1.w * 5 + r13.w;
        r13.w = -0.844799995 + r13.w;
        r24.x = refProbeConstantsCB[r9.w].data[0].w;
        r24.y = refProbeConstantsCB[r9.w].data[1].z;
        r24.z = refProbeConstantsCB[r9.w].data[2].y;
        r25.x = dot(r23.xzw, r24.xyz);
        r26.xy = refProbeConstantsCB[r9.w].data[1].xw;
        r26.z = refProbeConstantsCB[r9.w].data[2].z;
        r25.y = dot(r23.xzw, r26.xyz);
        r27.x = refProbeConstantsCB[r9.w].data[1].y;
        r27.yz = refProbeConstantsCB[r9.w].data[2].xw;
        r25.z = dot(r23.xzw, r27.xyz);
        if (9 == 0) r14.w = 0; else if (9+16 < 32) {         r14.w = (uint)refProbeConstantsCB[r9.w].data[7].z << (32-(9 + 16)); r14.w = (uint)r14.w >> (32-9);        } else r14.w = (uint)refProbeConstantsCB[r9.w].data[7].z >> 16;
        r25.w = (uint)r14.w;
        r23.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r25.xyzw, r13.w).xyz;
        r28.xyz = (int3)r23.xzw & int3(-2147483648,-2147483648,-2147483648);
        r28.xyz = cmp((int3)r28.xyz == int3(2139095040,2139095040,2139095040));
        r13.w = (int)r28.y | (int)r28.x;
        r13.w = (int)r28.z | (int)r13.w;
        r23.xzw = r13.www ? float3(1,1,0) : r23.xzw;
        r28.x = dot(r12.yzw, r24.xyz);
        r28.y = dot(r12.yzw, r26.xyz);
        r28.z = dot(r12.yzw, r27.xyz);
        r12.yzw = saturate(r28.xyz * refProbeConstantsCB[r9.w].data[3].xyz + float3(0.5,0.5,0.5));
        r28.xy = refProbeConstantsCB[r9.w].data[4].zw * r12.yz;
        r28.z = refProbeConstantsCB[r9.w].data[5].x * r12.w;
        r12.yzw = refProbeConstantsCB[r9.w].data[5].yzw + r28.xyz;
        r25.x = dot(r10.xyz, r24.xyz);
        r25.y = dot(r10.xyz, r26.xyz);
        r25.z = dot(r10.xyz, r27.xyz);
        r24.xyz = cmp(float3(0,0,0) < r25.xyz);
        r14.z = r24.x ? 0 : 0.5;
        r26.xyz = r14.xyz + r12.yzw;
        r26.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
        r27.xyz = r25.xyz * r25.xyz;
        r27.xyz = r27.xyz * r13.xxx;
        r16.z = r24.y ? 0 : 0.5;
        r24.xyw = r16.xyz + r12.yzw;
        r24.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r24.xyw, 0).xyz;
        r24.xyw = r24.xyw * r27.yyy;
        r24.xyw = r26.xyz * r27.xxx + r24.xyw;
        r17.z = r24.z ? 0 : 0.5;
        r12.yzw = r17.xyz + r12.yzw;
        r12.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r12.yzw, 0).xyz;
        r12.yzw = r12.yzw * r27.zzz + r24.xyw;
        r24.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r25.xyzw, 6).xyz;
        r25.xyz = (int3)r24.xyz & int3(-2147483648,-2147483648,-2147483648);
        r25.xyz = cmp((int3)r25.xyz == int3(2139095040,2139095040,2139095040));
        r9.w = (int)r25.y | (int)r25.x;
        r9.w = (int)r25.z | (int)r9.w;
        r24.xyz = r9.www ? float3(1,1,0) : r24.xyz;
        r25.xyz = r24.xyz * r12.yzw;
        r9.w = dot(r25.xyz, float3(0.212599993,0.715200007,0.0722000003));
        r20.xyz = r12.yzw * r24.xyz + r20.xyz;
        r12.y = r9.w * r5.w;
        r23.xzw = r23.xzw * r13.xxx;
        r12.z = dot(r23.xzw, float3(0.212599993,0.715200007,0.0722000003));
        r9.w = r5.w * r9.w + r12.z;
        r9.w = r12.y / r9.w;
        r21.xyz = r23.xzw * r9.www + r21.xyz;
      } else {
        r22.x = r15.x;
        r15.xy = r22.xy;
      }
    }
    r8.w = (int)r8.w + 1;
  }
  r0.y = cmp(r19.z >= 1);
  bitmask.w = ((~(-1 << 8)) << 0) & 0xffffffff;  r1.w = (((uint)r15.y << 0) & bitmask.w) | ((uint)r19.w & ~bitmask.w);
  r0.y = r0.y ? r1.w : r15.y;
  r1.w = max(1, r15.x);
  r1.w = rcp(r1.w);
  r15.x = saturate(r15.x);
  r12.xyz = r20.xyz * r1.www;
  r13.xyz = r21.xyz * r1.www;
  r2.w = cmp(r15.x < 0.99000001);
  if (r2.w != 0) {
    r0.y = (int)r0.y + 256;
    r2.w = 1 + -r15.x;
    r5.w = sunConstants.globalProbeExposure * r2.w;
    r14.xyz = -globalProbeConstants.data[0].xyz + r4.xyw;
    r15.x = globalProbeConstants.data[0].w * r14.x;
    r15.yz = globalProbeConstants.data[1].xy * r14.yz;
    r14.xyz = saturate(float3(0.5,0.5,0.5) + r15.xyz);
    r15.xy = globalProbeConstants.data[1].zw * r14.xy;
    r15.z = globalProbeConstants.data[2].x * r14.z;
    r14.xyz = globalProbeConstants.data[2].yzw + r15.xyz;
    r15.xyz = cmp(float3(0,0,0) < r10.xyz);
    r15.xyz = r15.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r15.w = 0;
    r16.xyz = r15.wwx + r14.xyz;
    r16.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r16.xyz, 0).xyz;
    r17.xyz = r10.xyz * r10.xyz;
    r17.xyz = r17.xyz * r5.www;
    r18.xyz = r15.wwy + r14.xyz;
    r18.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r18.xyz, 0).xyz;
    r18.xyz = r18.xyz * r17.yyy;
    r16.xyz = r16.xyz * r17.xxx + r18.xyz;
    r14.xyz = r15.wwz + r14.xyz;
    r14.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r14.xyz, 0).xyz;
    r14.xyz = r14.xyz * r17.zzz + r16.xyz;
    r10.w = 0;
    r10.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r10.xyzw, 6).xyz;
    r10.xyz = r14.xyz * r10.xyz;
    r5.w = dot(r10.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r12.xyz = r20.xyz * r1.www + r10.xyz;
    r11.w = 0;
    r10.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, r2.z).xyz;
    r1.w = sunConstants.globalProbeExposure * r2.w + -r5.w;
    r1.w = r2.y * r1.w + r5.w;
    r13.xyz = r10.xyz * r1.www + r13.xyz;
  }
  r1.w = r2.x + r4.z;
  r1.w = log2(abs(r1.w));
  r0.w = r1.w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r0.w + r4.z;
  r0.w = saturate(-1 + r0.w);
  r10.xyz = r12.xyz * r4.zzz;
  r11.xyz = r3.zzz ? r10.xyz : 0;
  r2.xy = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r2.xy = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r2.xy, 0).xy;
  r12.xyz = r13.xyz * r0.www;
  r2.xzw = r12.xyz * r2.xxx;
  r12.xyz = r12.xyz * r2.yyy;
  r13.xyz = r3.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r0.w = (uint)r13.y;
  r3.xyw = r6.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r3.x;
  r1.w = cmp((int)r0.w == (int)r1.w);
  r3.xy = r1.ww ? r3.yw : float2(-1,0);
  r6.xyz = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r6.x;
  r1.w = cmp((int)r0.w == (int)r1.w);
  r6.xy = r1.ww ? r6.yz : float2(-1,0);
  r7.xyz = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r7.x;
  r1.w = cmp((int)r0.w == (int)r1.w);
  r6.zw = r1.ww ? r7.yz : float2(-1,0);
  r7.xyz = r9.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r7.x;
  r0.w = cmp((int)r0.w == (int)r1.w);
  r7.xy = r0.ww ? r7.yz : float2(-1,0);
  r8.x = r3.x;
  r8.yz = r6.xz;
  r8.w = r7.x;
  r8.xyzw = r8.xyzw + -r13.xxxx;
  r8.xyzw = cmp(abs(r8.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r8.xyzw = r8.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r0.w = r8.x + r8.y;
  r0.w = r0.w + r8.z;
  r0.w = r0.w + r8.w;
  r1.w = r8.y * r6.y;
  r1.w = r8.x * r3.y + r1.w;
  r1.w = r8.z * r6.w + r1.w;
  r1.w = r8.w * r7.y + r1.w;
  r13.w = r1.w / r0.w;
  r0.w = cmp(0 >= r0.w);
  r13.yz = r0.ww ? float2(0,0) : r13.zw;
  r3.xy = (int2)r1.xy & int2(1,1);
  r0.w = cmp((int)r3.y == (int)r3.x);
  r3.xyw = r0.www ? r13.xyz : r13.xzy;
  r0.w = -r3.w * 0.5 + r3.x;
  r6.y = r3.w + r0.w;
  r6.z = -r3.y * 0.5 + r0.w;
  r6.x = r6.z + r3.y;
  r3.xyw = r10.xyz * r5.xyz;
  r3.xyw = r11.xyz * r6.xyz + r3.xyw;
  r7.xyz = float3(0.959999979,0.959999979,0.959999979) * r2.xzw;
  r7.xyz = r12.xyz * float3(0.0399999991,0.0399999991,0.0399999991) + r7.xyz;
  r3.xyw = r7.xyz + r3.xyw;
  r7.xyz = float3(1,1,1) + -r6.xyz;
  r2.xyz = r7.xyz * r2.xzw;
  r2.xyz = r12.xyz * r6.xyz + r2.xyz;
  r2.xyz = r10.xyz * r5.xyz + r2.xyz;
  r2.xyz = r3.zzz ? r3.xyw : r2.xyz;
  r0.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.w != 0) {
    r0.w = dot(r4.xyw, r4.xyw);
    r1.w = rsqrt(r0.w);
    r3.xyz = r4.xyw * r1.www;
    r0.w = sqrt(r0.w);
    r1.w = cmp(0 < fogConstants.blendAmount);
    if (r1.w != 0) {
      r5.xy = r0.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r5.xy = fogConstants.atmospherefogdensityatcamera.xy * r5.xy;
      r1.w = cmp(0.00999999978 < abs(r4.w));
      r5.zw = fogConstants.atmospherefogheightdensityscale.xy * r4.ww;
      r6.xy = float2(-1.44269502,-1.44269502) * r5.zw;
      r6.xy = exp2(r6.xy);
      r6.xy = float2(1,1) + -r6.xy;
      r5.zw = r6.xy / r5.zw;
      r5.zw = r5.xy * r5.zw;
      r5.xy = r1.ww ? r5.zw : r5.xy;
      r5.xzw = fogConstants.atmosphereTotalDensity.xyz * r5.xxx;
      r5.xzw = exp2(r5.xzw);
      r6.xyz = fogConstants.atmosphereTotalDensity.xyz * r5.yyy;
      r6.xyz = exp2(r6.xyz);
      r6.xyz = r6.xyz + -r5.xzw;
      r5.xyz = fogConstants.blendAmount * r6.xyz + r5.xzw;
    } else {
      r1.w = r0.w * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r1.w = fogConstants.atmospherefogdensityatcamera.x * r1.w;
      r2.w = cmp(0.00999999978 < abs(r4.w));
      r3.w = fogConstants.atmospherefogheightdensityscale.x * r4.w;
      r4.z = -1.44269502 * r3.w;
      r4.z = exp2(r4.z);
      r4.z = 1 + -r4.z;
      r3.w = r4.z / r3.w;
      r3.w = r3.w * r1.w;
      r1.w = r2.w ? r3.w : r1.w;
      r6.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.www;
      r5.xyz = exp2(r6.xyz);
    }
    r5.xyz = r5.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r5.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r5.xyz);
    r1.w = dot(fogConstants.wldSunFogDir.xyz, -r3.xyz);
    r2.w = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r3.x = fogConstants.atmosphereMieSchlickK * -r1.w + 1;
    r3.x = r3.x * r3.x;
    r3.x = 12.566371 * r3.x;
    r2.w = r2.w / r3.x;
    r0.w = -fogConstants.atmospherehazebasedist + r0.w;
    r0.w = saturate(fogConstants.atmospherehazefadedist * r0.w);
    r0.w = r2.w * r0.w;
    r1.w = saturate(r1.w);
    r1.w = r1.w * r1.w + 1;
    r1.w = r1.w * 0.0596831031 + -1;
    r1.w = fogConstants.atmospheresunstrength * r1.w + 1;
    r3.xyz = fogConstants.atmosphereMieDensity.xyz * r0.www;
    r3.xyz = r1.www * fogConstants.atmosphereRayleighDensity.xyz + r3.xyz;
    r3.xyz = fogConstants.atmosphereInScatterIntensity * r3.xyz;
    r6.xyz = float3(1,1,1) + -r5.xyz;
    r3.xyz = r6.xyz * r3.xyz;
    r3.xyz = r2.xyz * r5.xyz + r3.xyz;
  } else {
    r0.w = fogConstants.heightFalloff * r4.w;
    r1.w = fogConstants.heightFalloff * r4.w + fogConstants.K0;
    r2.w = cmp(abs(r0.w) < 9.99999975e-05);
    r3.w = min(64, r1.w);
    r3.w = 1.44269502 * r3.w;
    r3.w = exp2(r3.w);
    r4.z = saturate(fogConstants.K0b);
    r5.x = cmp(r1.w < 0);
    r1.w = 1 + r1.w;
    r1.w = r5.x ? r3.w : r1.w;
    r1.w = -fogConstants.K0b + r1.w;
    r0.w = r2.w ? 1 : r0.w;
    r0.w = r1.w / r0.w;
    r0.w = r2.w ? r4.z : r0.w;
    r0.w = fogConstants.expMul * r0.w;
    r1.w = dot(r4.xyw, r4.xyw);
    r2.w = sqrt(r1.w);
    r0.w = r0.w * r2.w + fogConstants.expAdd;
    r0.w = exp2(r0.w);
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r1.w = rsqrt(r1.w);
    r5.xyz = r4.xyw * r1.www;
    r1.w = dot(fogConstants.wldSunFogDir.xyz, r5.xyz);
    r1.w = saturate(fogConstants.sunFogAngles.y * r1.w + fogConstants.sunFogAngles.x);
    r5.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r5.xyzw = r1.wwww * r5.xyzw + fogConstants.sunFogColor.xyzw;
    r0.w = r5.w * r0.w;
    r5.xyz = r5.xyz + -r2.xyz;
    r3.xyz = r0.www * r5.xyz + r2.xyz;
  }
  r2.xyz = relHDRExposure.yyy * r3.xyz;
  r3.xyz = cmp(r2.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r2.xyz = r3.xyz ? r2.xyz : 0;
  r2.xyz = min(float3(65024,65024,64512), r2.xyz);
  r0.w = cmp(0 < permuteHighlight);
  r3.xyzw = permuteHighlight & int4(32,3,64,12);
  r3.xz = cmp((int2)r3.xz != int2(0,0));
  r3.yw = cmp((int2)r3.yw == int2(1,12));
  r3.xy = r3.yw ? r3.xz : 0;
  r3.xy = r3.xy ? float2(0.200000003,0.200000003) : 0;
  r1.w = permuteHighlight & 16;
  r2.w = cmp((int)r1.w != 0);
  r1.w = cmp((int)r1.w == 16);
  r1.w = r1.w ? r2.w : 0;
  r3.z = r1.w ? 0.200000 : 0;
  r3.xyz = r3.xyz * relHDRExposure.xxx + -r2.xyz;
  r3.xyz = r3.xyz * float3(0.5,0.5,0.5) + r2.xyz;
  r2.xyz = r0.www ? r3.xyz : r2.xyz;
  if (enableCountDebug != 0) {
    if (debugDrawOverlayType != 0) {
      switch (cb2[53].y) {
        case 1 :        r0.w = 0;
        break;
        case 2 :        r0.w = 0;
        break;
        case 3 :        r0.w = 0;
        break;
        case 4 :        r0.w = (int)r0.y & 15;
        break;
        case 5 :        r0.w = (uint)r0.y >> 8;
        break;
        default :
        r0.w = 0;
        break;
      }
      r0.w = (uint)r0.w;
      r0.w = drawNumLighstScale * r0.w;
      r3.xyz = r0.www * float3(0.5,0.5,0.5) + -r2.xyz;
      r2.xyz = drawNumLightsAlpha * r3.xyz + r2.xyz;
    }
  }
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xyyy, r2.xyzx
  if (r1.z != 0) {
    r1.xyz = eyeOffset.xyz + r4.xyw;
    r1.w = 0;
    GBufferDiffuseColor[viewID].92 = u2.xyzw;
    r0.w = (int)r0.y & 15;
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
    r0.w = (int)r0.y & 15;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(12), r0.w
    InterlockedAdd(dest, value, orig_value);
    r0.y = (uint)r0.y >> 8;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(16), r0.y
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
    atomic_umax g2, l(12), r0.w
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(16), r0.y
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    imm_atomic_iadd r1.x, g0, l(0), l(1)
    InterlockedAdd(dest, imm_value, orig_value);
    r0.y = cmp((int)r1.x == 63);
    if (r0.y != 0) {
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
        ld_raw r0.y, l(16), g1.xxxx
      r1.xz = viewID;
      r1.yw = float2(7.8472714e-44,0);
      // Needs manual fix for instruction:
        atomic_iadd u2, r1.xyxx, r0.y
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
        ld_raw r0.y, l(16), g2.xxxx
      // Needs manual fix for instruction:
        atomic_umax u2, r1.zwzz, r0.y
      InterlockedMax(dest, value, orig_value);
      r0.xz = cmp((int2)r0.xz == centerGroupIDx);
      r0.x = r0.z ? r0.x : 0;
      if (r0.x != 0) {
        GBufferDiffuseColor[viewID].20 = u2.xyzw;
        GBufferDiffuseColor[viewID].36 = u2.x;
      }
    }
  }
  return;
}