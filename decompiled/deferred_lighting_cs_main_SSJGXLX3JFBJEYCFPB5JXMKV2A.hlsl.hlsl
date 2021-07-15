// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:23:57 2021

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
Texture2D<float> gSSAODepthTexture : register(t28);


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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21;
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
  r0.x = mad(permuteStride, 57, (int)vThreadGroupID.x);
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
  r3.x = GBufferDepth.Load(r1.xyw).x;
  r4.xyzw = GBufferSpecularColorAndOcclusion.Load(r1.xyw).xyzw;
  r3.yz = (uint2)r1.xy;
  r3.yz = float2(0.5,0.5) + r3.yz;
  r3.w = cmp(r3.x >= 0.984375);
  r5.x = 1.01587307 * r3.x;
  r3.x = r3.x * 64 + -63;
  r3.x = r3.w ? r3.x : r5.x;
  r3.x = max(9.99999994e-09, r3.x);
  r3.x = rcp(r3.x);
  r0.w = (int)r0.w & (int)r3.x;
  r3.xw = renderTargetSize.zw * r3.yz;
  r5.xyzw = gSSAOTexture.Gather(samplerLinearClamp_s, r3.xw).xyzw;
  r6.xyzw = gSSAODepthTexture.Gather(samplerLinearClamp_s, r3.xw).xyzw;
  r3.xw = float2(0.5,0.5) * r3.yz;
  r3.xw = frac(r3.xw);
  r7.xy = float2(1,1) + -r3.wx;
  r8.y = r7.y * r7.x;
  r8.xz = r7.xy * r3.xw;
  r8.w = r3.x * r3.w;
  r3.x = dot(r5.xyzw, r8.xyzw);
  r6.xyzw = r6.xyzw + -r0.wwww;
  r3.w = min(abs(r6.z), abs(r6.w));
  r3.w = min(abs(r6.y), r3.w);
  r3.w = min(abs(r6.x), r3.w);
  r7.x = max(abs(r6.z), abs(r6.w));
  r7.x = max(r7.x, abs(r6.y));
  r6.x = max(r7.x, abs(r6.x));
  r6.yzw = cmp(r3.www == abs(r6.yzw));
  r3.w = r6.y ? r5.y : r5.x;
  r3.w = r6.z ? r5.z : r3.w;
  r3.w = r6.w ? r5.w : r3.w;
  r5.x = 0.00999999978 * r0.w;
  r5.x = cmp(r5.x < r6.x);
  r3.x = r5.x ? r3.w : r3.x;
  r3.x = r4.z * r3.x;
  if (showAO != 0) {
    r3.w = 0.75 * r3.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xyyy, r3.wwww
    return;
  } else {
    r3.w = enableAO ? r3.x : 1;
  }
  r3.x = cmp(r2.z >= 0.5);
  r5.xyz = GBufferDiffuseColor.Load(r1.xyw).xyz;
  r6.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r7.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r8.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r9.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyz, int3(0, 0, 0)).xyw;
  r1.zw = -subpixelOffset.xy + r3.yz;
  r1.zw = renderTargetSize.zw * r1.zw;
  r1.zw = r1.zw * float2(2,-2) + float2(-1,1);
  r10.x = inverseProjectionMatrix._m00 * r1.z;
  r10.y = inverseProjectionMatrix._m11 * r1.w;
  r10.z = 1;
  r10.xyz = r10.xyz * r0.www;
  r11.xyz = inverseViewMatrix._m10_m11_m12 * r10.yyy;
  r10.xyw = r10.xxx * inverseViewMatrix._m00_m01_m02 + r11.xyz;
  r10.xyz = r10.zzz * inverseViewMatrix._m20_m21_m22 + r10.xyw;
  r0.w = r2.w * 3 + 0.5;
  r0.w = (uint)r0.w;
  r1.zw = r2.xy * float2(2,2) + float2(-1,-1);
  r1.zw = float2(0.850000024,0.850000024) * r1.zw;
  r2.x = dot(r1.zw, r1.zw);
  r11.zw = float2(2,1) + -r2.xx;
  r2.x = sqrt(r11.z);
  r11.xy = r2.xx * r1.zw;
  r12.xyzw = (int4)r0.wwww & int4(2,1,2,1);
  r12.xyzw = r12.zwxy ? float4(-1,-1,1.40129846e-45,1.40129846e-45) : float4(1,1,0,0);
  r0.w = (int)r12.w ^ (int)r12.z;
  r12.z = r0.w ? -1 : 1;
  r2.xyw = float3(-1,0,1) * r12.xyz;
  r13.xyz = float3(1,-2,1) * r12.xyz;
  r11.xyz = float3(0.408248305,0.707106769,0.577350259) * r11.xyw;
  r2.xyw = r11.yyy * r2.xyw;
  r2.xyw = r13.xyz * r11.xxx + r2.xyw;
  r11.xyz = r12.xyz * r11.zzz + r2.xyw;
  r0.w = r3.x ? -0.5 : -0.00146627566;
  r0.w = r2.z + r0.w;
  r2.y = saturate(2.00982332 * r0.w);
  r0.w = dot(-r10.xyz, -r10.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = -r10.xyz * r0.www;
  r2.x = saturate(dot(r11.xyz, r3.xyz));
  r0.w = dot(-r3.xyz, r11.xyz);
  r0.w = r0.w + r0.w;
  r12.xyz = r11.xyz * -r0.www + -r3.xyz;
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
  r3.xy = -r1.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r3.x = exp2(r3.x);
  r3.x = r3.x * r2.x;
  r3.z = r2.z * r1.w;
  r3.y = -r3.z * 2.0159049 + r3.y;
  r3.y = exp2(r3.y);
  r3.y = r3.y * r2.x;
  r3.xy = float2(9.1368103,9.70808983) * r3.xy;
  r3.x = max(r3.x, r3.y);
  r3.x = max(1.26815999, r3.x);
  r3.y = numRefProbes + -numOverrideProbes;
  r0.y = (uint)r0.y >> 24;
  r3.z = cmp((uint)r0.y >= (uint)r3.y);
  r4.z = cmp((uint)r0.y < numRefProbes);
  r3.z = r3.z ? r4.z : 0;
  if (r3.z != 0) {
    r3.z = (int)r0.y * 14;
    if (r1.z != 0) {
      r13.yzw = refProbeConstantsCB[r3.z].data[0].xyz + eyeOffset.xyz;
      r13.x = 16;
      GBufferDiffuseColor[viewID].880 = u2.xyzw;
    }
    r13.xyz = -refProbeConstantsCB[r3.z].data[0].xyz + r10.xyz;
    r4.z = 0x0000ffff & (int)refProbeConstantsCB[r3.z].data[7].z;
    if (6 == 0) r5.w = 0; else if (6+25 < 32) {     r5.w = (uint)refProbeConstantsCB[r3.z].data[7].z << (32-(6 + 25)); r5.w = (uint)r5.w >> (32-6);    } else r5.w = (uint)refProbeConstantsCB[r3.z].data[7].z >> 25;
    r6.w = (int)r4.z * 6;
    r7.w = dot(refProbeAttenuationConstantsCB[r6.w].data[0].xyz, r13.xyz);
    r7.w = saturate(refProbeAttenuationConstantsCB[r6.w].data[0].w + r7.w);
    r8.w = dot(refProbeAttenuationConstantsCB[r6.w].data[1].xyz, r13.xyz);
    r8.w = saturate(refProbeAttenuationConstantsCB[r6.w].data[1].w + r8.w);
    r7.w = r8.w * r7.w;
    r8.w = dot(refProbeAttenuationConstantsCB[r6.w].data[2].xyz, r13.xyz);
    r8.w = saturate(refProbeAttenuationConstantsCB[r6.w].data[2].w + r8.w);
    r7.w = r8.w * r7.w;
    r8.w = dot(refProbeAttenuationConstantsCB[r6.w].data[3].xyz, r13.xyz);
    r8.w = saturate(refProbeAttenuationConstantsCB[r6.w].data[3].w + r8.w);
    r7.w = r8.w * r7.w;
    r8.w = dot(refProbeAttenuationConstantsCB[r6.w].data[4].xyz, r13.xyz);
    r8.w = saturate(refProbeAttenuationConstantsCB[r6.w].data[4].w + r8.w);
    r7.w = r8.w * r7.w;
    r8.w = dot(refProbeAttenuationConstantsCB[r6.w].data[5].xyz, r13.xyz);
    r6.w = saturate(refProbeAttenuationConstantsCB[r6.w].data[5].w + r8.w);
    r14.x = r7.w * r6.w;
    r6.w = 1 & (int)refProbeConstantsCB[r3.z].data[6].x;
    r14.yz = float2(0,1);
    r14.xy = r6.ww ? r14.xy : r14.zx;
    r15.x = 1;
    r6.w = refProbeConstantsCB[r3.z].data[6].x;
    r16.xy = r14.xy;
    r7.w = 1;
    while (true) {
      r8.w = cmp((int)r7.w >= (int)r5.w);
      if (r8.w != 0) break;
      r8.w = (int)r4.z + (int)r7.w;
      r8.w = (int)r8.w * 6;
      r9.w = dot(refProbeAttenuationConstantsCB[r8.w].data[0].xyz, r13.xyz);
      r9.w = saturate(refProbeAttenuationConstantsCB[r8.w].data[0].w + r9.w);
      r9.w = r16.x * r9.w;
      r10.w = dot(refProbeAttenuationConstantsCB[r8.w].data[1].xyz, r13.xyz);
      r10.w = saturate(refProbeAttenuationConstantsCB[r8.w].data[1].w + r10.w);
      r9.w = r10.w * r9.w;
      r10.w = dot(refProbeAttenuationConstantsCB[r8.w].data[2].xyz, r13.xyz);
      r10.w = saturate(refProbeAttenuationConstantsCB[r8.w].data[2].w + r10.w);
      r9.w = r10.w * r9.w;
      r10.w = dot(refProbeAttenuationConstantsCB[r8.w].data[3].xyz, r13.xyz);
      r10.w = saturate(refProbeAttenuationConstantsCB[r8.w].data[3].w + r10.w);
      r9.w = r10.w * r9.w;
      r10.w = dot(refProbeAttenuationConstantsCB[r8.w].data[4].xyz, r13.xyz);
      r10.w = saturate(refProbeAttenuationConstantsCB[r8.w].data[4].w + r10.w);
      r9.w = r10.w * r9.w;
      r10.w = dot(refProbeAttenuationConstantsCB[r8.w].data[5].xyz, r13.xyz);
      r8.w = saturate(refProbeAttenuationConstantsCB[r8.w].data[5].w + r10.w);
      r16.x = r9.w * r8.w;
      r10.w = (uint)r6.w >> 2;
      if (1 == 0) r13.w = 0; else if (1+2 < 32) {       r13.w = (uint)r6.w << (32-(1 + 2)); r13.w = (uint)r13.w >> (32-1);      } else r13.w = (uint)r6.w >> 2;
      r14.z = (int)r10.w & 2;
      r14.w = max(r16.y, r16.x);
      r8.w = -r9.w * r8.w + 1;
      r8.w = r16.y * r8.w;
      r15.y = r14.z ? r8.w : r14.w;
      r16.xy = r13.ww ? r16.xy : r15.xy;
      r7.w = (int)r7.w + 1;
      r6.w = r10.w;
    }
    r16.y = saturate(r16.y);
    r4.z = refProbeConstantsCB[r3.z].data[6].y * r16.y;
    r5.w = cmp(0 < r4.z);
    if (r5.w != 0) {
      if (r1.z != 0) {
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r5.w, cb2[52].x, l(880), u2.xxxx
      r5.w = samplerLinear[]..swiz;
        r5.w = (int)r5.w | 32;
        GBufferDiffuseColor[viewID].880 = u2.x;
        GBufferDiffuseColor[viewID].896 = u2.x;
      }
      r5.w = refProbeConstantsCB[r3.z].data[7].y * r4.z;
      r14.x = refProbeConstantsCB[r3.z].data[7].w;
      r14.yz = refProbeConstantsCB[r3.z].data[8].xy;
      r6.w = dot(r12.xyz, r14.xyz);
      r7.w = dot(r13.xyz, r14.xyz);
      r7.w = -refProbeConstantsCB[r3.z].data[8].z + r7.w;
      r8.w = cmp(r7.w >= 0);
      r7.w = max(abs(r7.w), r2.w);
      r7.w = r8.w ? r7.w : -r7.w;
      r6.w = max(1.00000001e-07, -r6.w);
      r6.w = r7.w / r6.w;
      r6.w = min(131072, abs(r6.w));
      r14.x = refProbeConstantsCB[r3.z].data[8].w;
      r14.yz = refProbeConstantsCB[r3.z].data[9].xy;
      r7.w = dot(r12.xyz, r14.xyz);
      r8.w = dot(r13.xyz, r14.xyz);
      r8.w = -refProbeConstantsCB[r3.z].data[9].z + r8.w;
      r9.w = cmp(r8.w >= 0);
      r8.w = max(abs(r8.w), r2.w);
      r8.w = r9.w ? r8.w : -r8.w;
      r7.w = max(1.00000001e-07, -r7.w);
      r7.w = r8.w / r7.w;
      r6.w = min(abs(r7.w), r6.w);
      r14.x = refProbeConstantsCB[r3.z].data[9].w;
      r14.yz = refProbeConstantsCB[r3.z].data[10].xy;
      r7.w = dot(r12.xyz, r14.xyz);
      r8.w = dot(r13.xyz, r14.xyz);
      r8.w = -refProbeConstantsCB[r3.z].data[10].z + r8.w;
      r9.w = cmp(r8.w >= 0);
      r8.w = max(abs(r8.w), r2.w);
      r8.w = r9.w ? r8.w : -r8.w;
      r7.w = max(1.00000001e-07, -r7.w);
      r7.w = r8.w / r7.w;
      r6.w = min(abs(r7.w), r6.w);
      r14.x = refProbeConstantsCB[r3.z].data[10].w;
      r14.yz = refProbeConstantsCB[r3.z].data[11].xy;
      r7.w = dot(r12.xyz, r14.xyz);
      r8.w = dot(r13.xyz, r14.xyz);
      r8.w = -refProbeConstantsCB[r3.z].data[11].z + r8.w;
      r9.w = cmp(r8.w >= 0);
      r8.w = max(abs(r8.w), r2.w);
      r8.w = r9.w ? r8.w : -r8.w;
      r7.w = max(1.00000001e-07, -r7.w);
      r7.w = r8.w / r7.w;
      r6.w = min(abs(r7.w), r6.w);
      r14.x = refProbeConstantsCB[r3.z].data[11].w;
      r14.yz = refProbeConstantsCB[r3.z].data[12].xy;
      r7.w = dot(r12.xyz, r14.xyz);
      r8.w = dot(r13.xyz, r14.xyz);
      r8.w = -refProbeConstantsCB[r3.z].data[12].z + r8.w;
      r9.w = cmp(r8.w >= 0);
      r8.w = max(abs(r8.w), r2.w);
      r8.w = r9.w ? r8.w : -r8.w;
      r7.w = max(1.00000001e-07, -r7.w);
      r7.w = r8.w / r7.w;
      r6.w = min(abs(r7.w), r6.w);
      r14.x = refProbeConstantsCB[r3.z].data[12].w;
      r14.yz = refProbeConstantsCB[r3.z].data[13].xy;
      r7.w = dot(r12.xyz, r14.xyz);
      r8.w = dot(r13.xyz, r14.xyz);
      r8.w = -refProbeConstantsCB[r3.z].data[13].z + r8.w;
      r9.w = cmp(r8.w >= 0);
      r8.w = max(abs(r8.w), r2.w);
      r8.w = r9.w ? r8.w : -r8.w;
      r7.w = max(1.00000001e-07, -r7.w);
      r7.w = r8.w / r7.w;
      r6.w = min(abs(r7.w), r6.w);
      r14.x = refProbeConstantsCB[r3.z].data[3].w + r13.x;
      r14.yz = refProbeConstantsCB[r3.z].data[4].xy + r13.yz;
      r14.xyz = r12.xyz * r6.www + r14.xyz;
      r7.w = dot(r14.xyz, r14.xyz);
      r7.w = sqrt(r7.w);
      r6.w = r6.w / r7.w;
      r6.w = r6.w + r6.w;
      r6.w = sqrt(r6.w);
      r6.w = r1.w * 5 + r6.w;
      r6.w = -0.844799995 + r6.w;
      r15.x = refProbeConstantsCB[r3.z].data[0].w;
      r15.y = refProbeConstantsCB[r3.z].data[1].z;
      r15.z = refProbeConstantsCB[r3.z].data[2].y;
      r16.x = dot(r14.xyz, r15.xyz);
      r17.xy = refProbeConstantsCB[r3.z].data[1].xw;
      r17.z = refProbeConstantsCB[r3.z].data[2].z;
      r16.y = dot(r14.xyz, r17.xyz);
      r18.x = refProbeConstantsCB[r3.z].data[1].y;
      r18.yz = refProbeConstantsCB[r3.z].data[2].xw;
      r16.z = dot(r14.xyz, r18.xyz);
      if (9 == 0) r7.w = 0; else if (9+16 < 32) {       r7.w = (uint)refProbeConstantsCB[r3.z].data[7].z << (32-(9 + 16)); r7.w = (uint)r7.w >> (32-9);      } else r7.w = (uint)refProbeConstantsCB[r3.z].data[7].z >> 16;
      r16.w = (uint)r7.w;
      r14.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r16.xyzw, r6.w).xyz;
      r19.xyz = (int3)r14.xyz & int3(-2147483648,-2147483648,-2147483648);
      r19.xyz = cmp((int3)r19.xyz == int3(2139095040,2139095040,2139095040));
      r6.w = (int)r19.y | (int)r19.x;
      r6.w = (int)r19.z | (int)r6.w;
      r14.xyz = r6.www ? float3(1,1,0) : r14.xyz;
      r19.x = dot(r13.xyz, r15.xyz);
      r19.y = dot(r13.xyz, r17.xyz);
      r19.z = dot(r13.xyz, r18.xyz);
      r13.xyz = saturate(r19.xyz * refProbeConstantsCB[r3.z].data[3].xyz + float3(0.5,0.5,0.5));
      r19.xy = refProbeConstantsCB[r3.z].data[4].zw * r13.xy;
      r19.z = refProbeConstantsCB[r3.z].data[5].x * r13.z;
      r13.xyz = refProbeConstantsCB[r3.z].data[5].yzw + r19.xyz;
      r16.x = dot(r11.xyz, r15.xyz);
      r16.y = dot(r11.xyz, r17.xyz);
      r16.z = dot(r11.xyz, r18.xyz);
      r15.xyz = cmp(float3(0,0,0) < r16.xyz);
      r17.z = r15.x ? 0 : 0.5;
      r17.xy = float2(0,0);
      r17.xyz = r17.xyz + r13.xyz;
      r17.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r17.xyz, 0).xyz;
      r18.xyz = r16.xyz * r16.xyz;
      r18.xyz = r18.xyz * r5.www;
      r19.z = r15.y ? 0 : 0.5;
      r19.xy = float2(0,0);
      r15.xyw = r19.xyz + r13.xyz;
      r15.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r15.xyw, 0).xyz;
      r15.xyw = r15.xyw * r18.yyy;
      r15.xyw = r17.xyz * r18.xxx + r15.xyw;
      r17.z = r15.z ? 0 : 0.5;
      r17.xy = float2(0,0);
      r13.xyz = r17.xyz + r13.xyz;
      r13.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r13.xyz, 0).xyz;
      r13.xyz = r13.xyz * r18.zzz + r15.xyw;
      r15.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r16.xyzw, 6).xyz;
      r16.xyz = (int3)r15.xyz & int3(-2147483648,-2147483648,-2147483648);
      r16.xyz = cmp((int3)r16.xyz == int3(2139095040,2139095040,2139095040));
      r3.z = (int)r16.y | (int)r16.x;
      r3.z = (int)r16.z | (int)r3.z;
      r15.xyz = r3.zzz ? float3(1,1,0) : r15.xyz;
      r13.xyz = r15.xyz * r13.xyz;
      r3.z = dot(r13.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r6.w = r3.x * r3.z;
      r14.xyz = r14.xyz * r5.www;
      r5.w = dot(r14.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r3.z = r3.x * r3.z + r5.w;
      r3.z = r6.w / r3.z;
      r14.xyz = r14.xyz * r3.zzz;
      r3.z = 257;
    } else {
      r13.xyz = float3(0,0,0);
      r14.xyz = float3(0,0,0);
      r4.z = 0;
      r3.z = 1;
    }
  } else {
    r13.xyz = float3(0,0,0);
    r14.xyz = float3(0,0,0);
    r4.z = 0;
    r3.z = 0;
  }
  r3.y = cmp((uint)r0.y < (uint)r3.y);
  if (r3.y != 0) {
    r0.y = (int)r0.y * 14;
    if (r1.z != 0) {
      r3.y = (int)r3.z & 1;
      r3.y = mad((int)r3.y, 20, 880);
      r15.yzw = refProbeConstantsCB[r0.y].data[0].xyz + eyeOffset.xyz;
      r15.x = 16;
      GBufferDiffuseColor[viewID].r3.y = u2.xyzw;
    }
    r3.y = (int)r3.z + 1;
    r15.xyz = -refProbeConstantsCB[r0.y].data[0].xyz + r10.xyz;
    r5.w = 0x0000ffff & (int)refProbeConstantsCB[r0.y].data[7].z;
    if (6 == 0) r6.w = 0; else if (6+25 < 32) {     r6.w = (uint)refProbeConstantsCB[r0.y].data[7].z << (32-(6 + 25)); r6.w = (uint)r6.w >> (32-6);    } else r6.w = (uint)refProbeConstantsCB[r0.y].data[7].z >> 25;
    r7.w = (int)r5.w * 6;
    r8.w = dot(refProbeAttenuationConstantsCB[r7.w].data[0].xyz, r15.xyz);
    r8.w = saturate(refProbeAttenuationConstantsCB[r7.w].data[0].w + r8.w);
    r9.w = dot(refProbeAttenuationConstantsCB[r7.w].data[1].xyz, r15.xyz);
    r9.w = saturate(refProbeAttenuationConstantsCB[r7.w].data[1].w + r9.w);
    r8.w = r9.w * r8.w;
    r9.w = dot(refProbeAttenuationConstantsCB[r7.w].data[2].xyz, r15.xyz);
    r9.w = saturate(refProbeAttenuationConstantsCB[r7.w].data[2].w + r9.w);
    r8.w = r9.w * r8.w;
    r9.w = dot(refProbeAttenuationConstantsCB[r7.w].data[3].xyz, r15.xyz);
    r9.w = saturate(refProbeAttenuationConstantsCB[r7.w].data[3].w + r9.w);
    r8.w = r9.w * r8.w;
    r9.w = dot(refProbeAttenuationConstantsCB[r7.w].data[4].xyz, r15.xyz);
    r9.w = saturate(refProbeAttenuationConstantsCB[r7.w].data[4].w + r9.w);
    r8.w = r9.w * r8.w;
    r9.w = dot(refProbeAttenuationConstantsCB[r7.w].data[5].xyz, r15.xyz);
    r7.w = saturate(refProbeAttenuationConstantsCB[r7.w].data[5].w + r9.w);
    r16.x = r8.w * r7.w;
    r7.w = 1 & (int)refProbeConstantsCB[r0.y].data[6].x;
    r16.yz = float2(0,1);
    r16.xy = r7.ww ? r16.xy : r16.zx;
    r17.x = 1;
    r7.w = refProbeConstantsCB[r0.y].data[6].x;
    r18.xy = r16.xy;
    r8.w = 1;
    while (true) {
      r9.w = cmp((int)r8.w >= (int)r6.w);
      if (r9.w != 0) break;
      r9.w = (int)r5.w + (int)r8.w;
      r9.w = (int)r9.w * 6;
      r10.w = dot(refProbeAttenuationConstantsCB[r9.w].data[0].xyz, r15.xyz);
      r10.w = saturate(refProbeAttenuationConstantsCB[r9.w].data[0].w + r10.w);
      r10.w = r18.x * r10.w;
      r13.w = dot(refProbeAttenuationConstantsCB[r9.w].data[1].xyz, r15.xyz);
      r13.w = saturate(refProbeAttenuationConstantsCB[r9.w].data[1].w + r13.w);
      r10.w = r13.w * r10.w;
      r13.w = dot(refProbeAttenuationConstantsCB[r9.w].data[2].xyz, r15.xyz);
      r13.w = saturate(refProbeAttenuationConstantsCB[r9.w].data[2].w + r13.w);
      r10.w = r13.w * r10.w;
      r13.w = dot(refProbeAttenuationConstantsCB[r9.w].data[3].xyz, r15.xyz);
      r13.w = saturate(refProbeAttenuationConstantsCB[r9.w].data[3].w + r13.w);
      r10.w = r13.w * r10.w;
      r13.w = dot(refProbeAttenuationConstantsCB[r9.w].data[4].xyz, r15.xyz);
      r13.w = saturate(refProbeAttenuationConstantsCB[r9.w].data[4].w + r13.w);
      r10.w = r13.w * r10.w;
      r13.w = dot(refProbeAttenuationConstantsCB[r9.w].data[5].xyz, r15.xyz);
      r9.w = saturate(refProbeAttenuationConstantsCB[r9.w].data[5].w + r13.w);
      r18.x = r10.w * r9.w;
      r13.w = (uint)r7.w >> 2;
      if (1 == 0) r14.w = 0; else if (1+2 < 32) {       r14.w = (uint)r7.w << (32-(1 + 2)); r14.w = (uint)r14.w >> (32-1);      } else r14.w = (uint)r7.w >> 2;
      r15.w = (int)r13.w & 2;
      r16.z = max(r18.y, r18.x);
      r9.w = -r10.w * r9.w + 1;
      r9.w = r18.y * r9.w;
      r17.y = r15.w ? r9.w : r16.z;
      r18.xy = r14.ww ? r18.xy : r17.xy;
      r8.w = (int)r8.w + 1;
      r7.w = r13.w;
    }
    r5.w = saturate(r18.y + -r4.z);
    r6.w = refProbeConstantsCB[r0.y].data[6].y * r5.w;
    r7.w = cmp(0 < r6.w);
    if (r7.w != 0) {
      r7.w = (int)r3.y & 3;
      r8.w = (int)r7.w + -1;
      r8.w = cmp((uint)r8.w < 32);
      r8.w = r1.z ? r8.w : 0;
      if (r8.w != 0) {
        r16.xy = mad((int2)r7.ww, int2(20,20), int2(860,876));
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r7.w, cb2[52].x, r16.x, u2.xxxx
      r7.w = samplerLinear[]..swiz;
        r7.w = (int)r7.w | 32;
        GBufferDiffuseColor[viewID].r16.x = u2.x;
        GBufferDiffuseColor[viewID].r16.y = u2.x;
      }
      r3.y = (int)r3.z + 257;
      r5.w = r5.w * refProbeConstantsCB[r0.y].data[6].y + r4.z;
      r6.w = refProbeConstantsCB[r0.y].data[7].y * r6.w;
      r16.x = refProbeConstantsCB[r0.y].data[7].w;
      r16.yz = refProbeConstantsCB[r0.y].data[8].xy;
      r7.w = dot(r12.xyz, r16.xyz);
      r8.w = dot(r15.xyz, r16.xyz);
      r8.w = -refProbeConstantsCB[r0.y].data[8].z + r8.w;
      r9.w = cmp(r8.w >= 0);
      r8.w = max(abs(r8.w), r2.w);
      r8.w = r9.w ? r8.w : -r8.w;
      r7.w = max(1.00000001e-07, -r7.w);
      r7.w = r8.w / r7.w;
      r7.w = min(131072, abs(r7.w));
      r16.x = refProbeConstantsCB[r0.y].data[8].w;
      r16.yz = refProbeConstantsCB[r0.y].data[9].xy;
      r8.w = dot(r12.xyz, r16.xyz);
      r9.w = dot(r15.xyz, r16.xyz);
      r9.w = -refProbeConstantsCB[r0.y].data[9].z + r9.w;
      r10.w = cmp(r9.w >= 0);
      r9.w = max(abs(r9.w), r2.w);
      r9.w = r10.w ? r9.w : -r9.w;
      r8.w = max(1.00000001e-07, -r8.w);
      r8.w = r9.w / r8.w;
      r7.w = min(abs(r8.w), r7.w);
      r16.x = refProbeConstantsCB[r0.y].data[9].w;
      r16.yz = refProbeConstantsCB[r0.y].data[10].xy;
      r8.w = dot(r12.xyz, r16.xyz);
      r9.w = dot(r15.xyz, r16.xyz);
      r9.w = -refProbeConstantsCB[r0.y].data[10].z + r9.w;
      r10.w = cmp(r9.w >= 0);
      r9.w = max(abs(r9.w), r2.w);
      r9.w = r10.w ? r9.w : -r9.w;
      r8.w = max(1.00000001e-07, -r8.w);
      r8.w = r9.w / r8.w;
      r7.w = min(abs(r8.w), r7.w);
      r16.x = refProbeConstantsCB[r0.y].data[10].w;
      r16.yz = refProbeConstantsCB[r0.y].data[11].xy;
      r8.w = dot(r12.xyz, r16.xyz);
      r9.w = dot(r15.xyz, r16.xyz);
      r9.w = -refProbeConstantsCB[r0.y].data[11].z + r9.w;
      r10.w = cmp(r9.w >= 0);
      r9.w = max(abs(r9.w), r2.w);
      r9.w = r10.w ? r9.w : -r9.w;
      r8.w = max(1.00000001e-07, -r8.w);
      r8.w = r9.w / r8.w;
      r7.w = min(abs(r8.w), r7.w);
      r16.x = refProbeConstantsCB[r0.y].data[11].w;
      r16.yz = refProbeConstantsCB[r0.y].data[12].xy;
      r8.w = dot(r12.xyz, r16.xyz);
      r9.w = dot(r15.xyz, r16.xyz);
      r9.w = -refProbeConstantsCB[r0.y].data[12].z + r9.w;
      r10.w = cmp(r9.w >= 0);
      r9.w = max(abs(r9.w), r2.w);
      r9.w = r10.w ? r9.w : -r9.w;
      r8.w = max(1.00000001e-07, -r8.w);
      r8.w = r9.w / r8.w;
      r7.w = min(abs(r8.w), r7.w);
      r16.x = refProbeConstantsCB[r0.y].data[12].w;
      r16.yz = refProbeConstantsCB[r0.y].data[13].xy;
      r8.w = dot(r12.xyz, r16.xyz);
      r9.w = dot(r15.xyz, r16.xyz);
      r9.w = -refProbeConstantsCB[r0.y].data[13].z + r9.w;
      r10.w = cmp(r9.w >= 0);
      r2.w = max(abs(r9.w), r2.w);
      r2.w = r10.w ? r2.w : -r2.w;
      r8.w = max(1.00000001e-07, -r8.w);
      r2.w = r2.w / r8.w;
      r2.w = min(r7.w, abs(r2.w));
      r16.x = refProbeConstantsCB[r0.y].data[3].w + r15.x;
      r16.yz = refProbeConstantsCB[r0.y].data[4].xy + r15.yz;
      r16.xyz = r12.xyz * r2.www + r16.xyz;
      r7.w = dot(r16.xyz, r16.xyz);
      r7.w = sqrt(r7.w);
      r2.w = r2.w / r7.w;
      r2.w = r2.w + r2.w;
      r2.w = sqrt(r2.w);
      r1.w = r1.w * 5 + r2.w;
      r1.w = -0.844799995 + r1.w;
      r17.x = refProbeConstantsCB[r0.y].data[0].w;
      r17.y = refProbeConstantsCB[r0.y].data[1].z;
      r17.z = refProbeConstantsCB[r0.y].data[2].y;
      r18.x = dot(r16.xyz, r17.xyz);
      r19.xy = refProbeConstantsCB[r0.y].data[1].xw;
      r19.z = refProbeConstantsCB[r0.y].data[2].z;
      r18.y = dot(r16.xyz, r19.xyz);
      r20.x = refProbeConstantsCB[r0.y].data[1].y;
      r20.yz = refProbeConstantsCB[r0.y].data[2].xw;
      r18.z = dot(r16.xyz, r20.xyz);
      if (9 == 0) r2.w = 0; else if (9+16 < 32) {       r2.w = (uint)refProbeConstantsCB[r0.y].data[7].z << (32-(9 + 16)); r2.w = (uint)r2.w >> (32-9);      } else r2.w = (uint)refProbeConstantsCB[r0.y].data[7].z >> 16;
      r18.w = (uint)r2.w;
      r16.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r18.xyzw, r1.w).xyz;
      r21.xyz = (int3)r16.xyz & int3(-2147483648,-2147483648,-2147483648);
      r21.xyz = cmp((int3)r21.xyz == int3(2139095040,2139095040,2139095040));
      r1.w = (int)r21.y | (int)r21.x;
      r1.w = (int)r21.z | (int)r1.w;
      r16.xyz = r1.www ? float3(1,1,0) : r16.xyz;
      r21.x = dot(r15.xyz, r17.xyz);
      r21.y = dot(r15.xyz, r19.xyz);
      r21.z = dot(r15.xyz, r20.xyz);
      r15.xyz = saturate(r21.xyz * refProbeConstantsCB[r0.y].data[3].xyz + float3(0.5,0.5,0.5));
      r21.xy = refProbeConstantsCB[r0.y].data[4].zw * r15.xy;
      r21.z = refProbeConstantsCB[r0.y].data[5].x * r15.z;
      r15.xyz = refProbeConstantsCB[r0.y].data[5].yzw + r21.xyz;
      r18.x = dot(r11.xyz, r17.xyz);
      r18.y = dot(r11.xyz, r19.xyz);
      r18.z = dot(r11.xyz, r20.xyz);
      r17.xyz = cmp(float3(0,0,0) < r18.xyz);
      r19.z = r17.x ? 0 : 0.5;
      r19.xy = float2(0,0);
      r19.xyz = r19.xyz + r15.xyz;
      r19.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r19.xyz, 0).xyz;
      r20.xyz = r18.xyz * r18.xyz;
      r20.xyz = r20.xyz * r6.www;
      r21.z = r17.y ? 0 : 0.5;
      r21.xy = float2(0,0);
      r17.xyw = r21.xyz + r15.xyz;
      r17.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r17.xyw, 0).xyz;
      r17.xyw = r17.xyw * r20.yyy;
      r17.xyw = r19.xyz * r20.xxx + r17.xyw;
      r19.z = r17.z ? 0 : 0.5;
      r19.xy = float2(0,0);
      r15.xyz = r19.xyz + r15.xyz;
      r15.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r15.xyz, 0).xyz;
      r15.xyz = r15.xyz * r20.zzz + r17.xyw;
      r17.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r18.xyzw, 6).xyz;
      r18.xyz = (int3)r17.xyz & int3(-2147483648,-2147483648,-2147483648);
      r18.xyz = cmp((int3)r18.xyz == int3(2139095040,2139095040,2139095040));
      r0.y = (int)r18.y | (int)r18.x;
      r0.y = (int)r18.z | (int)r0.y;
      r17.xyz = r0.yyy ? float3(1,1,0) : r17.xyz;
      r18.xyz = r17.xyz * r15.xyz;
      r0.y = dot(r18.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r13.xyz = r15.xyz * r17.xyz + r13.xyz;
      r1.w = r3.x * r0.y;
      r15.xyz = r16.xyz * r6.www;
      r2.w = dot(r15.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r0.y = r3.x * r0.y + r2.w;
      r0.y = r1.w / r0.y;
      r14.xyz = r15.xyz * r0.yyy + r14.xyz;
    } else {
      r5.w = r4.z;
    }
  } else {
    r5.w = r4.z;
    r3.y = r3.z;
  }
  r0.y = cmp(r4.z >= 1);
  bitmask.w = ((~(-1 << 8)) << 0) & 0xffffffff;  r1.w = (((uint)r3.y << 0) & bitmask.w) | ((uint)r3.z & ~bitmask.w);
  r0.y = r0.y ? r1.w : r3.y;
  r1.w = max(1, r5.w);
  r1.w = rcp(r1.w);
  r5.w = saturate(r5.w);
  r3.xyz = r13.xyz * r1.www;
  r14.xyz = r14.xyz * r1.www;
  r2.w = cmp(r5.w < 0.99000001);
  if (r2.w != 0) {
    r0.y = (int)r0.y + 256;
    r2.w = 1 + -r5.w;
    r4.z = sunConstants.globalProbeExposure * r2.w;
    r15.xyz = -globalProbeConstants.data[0].xyz + r10.xyz;
    r16.x = globalProbeConstants.data[0].w * r15.x;
    r16.yz = globalProbeConstants.data[1].xy * r15.yz;
    r15.xyz = saturate(float3(0.5,0.5,0.5) + r16.xyz);
    r16.xy = globalProbeConstants.data[1].zw * r15.xy;
    r16.z = globalProbeConstants.data[2].x * r15.z;
    r15.xyz = globalProbeConstants.data[2].yzw + r16.xyz;
    r16.xyz = cmp(float3(0,0,0) < r11.xyz);
    r16.xyz = r16.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r16.w = 0;
    r17.xyz = r16.wwx + r15.xyz;
    r17.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r17.xyz, 0).xyz;
    r18.xyz = r11.xyz * r11.xyz;
    r18.xyz = r18.xyz * r4.zzz;
    r19.xyz = r16.wwy + r15.xyz;
    r19.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r19.xyz, 0).xyz;
    r19.xyz = r19.xyz * r18.yyy;
    r17.xyz = r17.xyz * r18.xxx + r19.xyz;
    r15.xyz = r16.wwz + r15.xyz;
    r15.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r15.xyz, 0).xyz;
    r15.xyz = r15.xyz * r18.zzz + r17.xyz;
    r11.w = 0;
    r11.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, 6).xyz;
    r11.xyz = r15.xyz * r11.xyz;
    r4.z = dot(r11.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r3.xyz = r13.xyz * r1.www + r11.xyz;
    r12.w = 0;
    r11.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r12.xyzw, r2.z).xyz;
    r1.w = sunConstants.globalProbeExposure * r2.w + -r4.z;
    r1.w = r2.y * r1.w + r4.z;
    r14.xyz = r11.xyz * r1.www + r14.xyz;
  }
  r1.w = r2.x + r3.w;
  r1.w = log2(abs(r1.w));
  r0.w = r1.w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r0.w + r3.w;
  r0.w = saturate(-1 + r0.w);
  r3.xyz = r3.xyz * r3.www;
  r2.xy = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r2.xy = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r2.xy, 0).xy;
  r11.xyz = r14.xyz * r0.www;
  r2.xzw = r11.xyz * r2.xxx;
  r11.xyz = r11.xyz * r2.yyy;
  r4.xyz = r4.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r0.w = (uint)r4.y;
  r6.xyz = r6.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r6.x;
  r1.w = cmp((int)r0.w == (int)r1.w);
  r6.xy = r1.ww ? r6.yz : float2(-1,0);
  r7.xyz = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r7.x;
  r1.w = cmp((int)r0.w == (int)r1.w);
  r6.zw = r1.ww ? r7.yz : float2(-1,0);
  r7.xyz = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r7.x;
  r1.w = cmp((int)r0.w == (int)r1.w);
  r7.xy = r1.ww ? r7.yz : float2(-1,0);
  r8.xyz = r9.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r8.x;
  r0.w = cmp((int)r0.w == (int)r1.w);
  r7.zw = r0.ww ? r8.yz : float2(-1,0);
  r8.xy = r6.xz;
  r8.zw = r7.xz;
  r8.xyzw = r8.xyzw + -r4.xxxx;
  r8.xyzw = cmp(abs(r8.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r8.xyzw = r8.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r0.w = r8.x + r8.y;
  r0.w = r0.w + r8.z;
  r0.w = r0.w + r8.w;
  r1.w = r8.y * r6.w;
  r1.w = r8.x * r6.y + r1.w;
  r1.w = r8.z * r7.y + r1.w;
  r1.w = r8.w * r7.w + r1.w;
  r4.w = r1.w / r0.w;
  r0.w = cmp(0 >= r0.w);
  r4.yz = r0.ww ? float2(0,0) : r4.zw;
  r6.xy = (int2)r1.xy & int2(1,1);
  r0.w = cmp((int)r6.y == (int)r6.x);
  r4.xyz = r0.www ? r4.xyz : r4.xzy;
  r0.w = -r4.z * 0.5 + r4.x;
  r6.y = r4.z + r0.w;
  r6.z = -r4.y * 0.5 + r0.w;
  r6.x = r6.z + r4.y;
  r4.xyz = float3(1,1,1) + -r6.xyz;
  r2.xyz = r4.xyz * r2.xzw;
  r2.xyz = r11.xyz * r6.xyz + r2.xyz;
  r2.xyz = r3.xyz * r5.xyz + r2.xyz;
  r0.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.w != 0) {
    r0.w = dot(r10.xyz, r10.xyz);
    r1.w = rsqrt(r0.w);
    r3.xyz = r10.xyz * r1.www;
    r0.w = sqrt(r0.w);
    r1.w = cmp(0 < fogConstants.blendAmount);
    if (r1.w != 0) {
      r4.xy = r0.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r4.xy = fogConstants.atmospherefogdensityatcamera.xy * r4.xy;
      r1.w = cmp(0.00999999978 < abs(r10.z));
      r4.zw = fogConstants.atmospherefogheightdensityscale.xy * r10.zz;
      r5.xy = float2(-1.44269502,-1.44269502) * r4.zw;
      r5.xy = exp2(r5.xy);
      r5.xy = float2(1,1) + -r5.xy;
      r4.zw = r5.xy / r4.zw;
      r4.zw = r4.xy * r4.zw;
      r4.xy = r1.ww ? r4.zw : r4.xy;
      r4.xzw = fogConstants.atmosphereTotalDensity.xyz * r4.xxx;
      r4.xzw = exp2(r4.xzw);
      r5.xyz = fogConstants.atmosphereTotalDensity.xyz * r4.yyy;
      r5.xyz = exp2(r5.xyz);
      r5.xyz = r5.xyz + -r4.xzw;
      r4.xyz = fogConstants.blendAmount * r5.xyz + r4.xzw;
    } else {
      r1.w = r0.w * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r1.w = fogConstants.atmospherefogdensityatcamera.x * r1.w;
      r2.w = cmp(0.00999999978 < abs(r10.z));
      r3.w = fogConstants.atmospherefogheightdensityscale.x * r10.z;
      r4.w = -1.44269502 * r3.w;
      r4.w = exp2(r4.w);
      r4.w = 1 + -r4.w;
      r3.w = r4.w / r3.w;
      r3.w = r3.w * r1.w;
      r1.w = r2.w ? r3.w : r1.w;
      r5.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.www;
      r4.xyz = exp2(r5.xyz);
    }
    r4.xyz = r4.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r4.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r4.xyz);
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
    r5.xyz = float3(1,1,1) + -r4.xyz;
    r3.xyz = r5.xyz * r3.xyz;
    r3.xyz = r2.xyz * r4.xyz + r3.xyz;
  } else {
    r0.w = fogConstants.heightFalloff * r10.z;
    r1.w = fogConstants.heightFalloff * r10.z + fogConstants.K0;
    r2.w = cmp(abs(r0.w) < 9.99999975e-05);
    r3.w = min(64, r1.w);
    r3.w = 1.44269502 * r3.w;
    r3.w = exp2(r3.w);
    r4.x = saturate(fogConstants.K0b);
    r4.y = cmp(r1.w < 0);
    r1.w = 1 + r1.w;
    r1.w = r4.y ? r3.w : r1.w;
    r1.w = -fogConstants.K0b + r1.w;
    r0.w = r2.w ? 1 : r0.w;
    r0.w = r1.w / r0.w;
    r0.w = r2.w ? r4.x : r0.w;
    r0.w = fogConstants.expMul * r0.w;
    r1.w = dot(r10.xyz, r10.xyz);
    r2.w = sqrt(r1.w);
    r0.w = r0.w * r2.w + fogConstants.expAdd;
    r0.w = exp2(r0.w);
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r1.w = rsqrt(r1.w);
    r4.xyz = r10.xyz * r1.www;
    r1.w = dot(fogConstants.wldSunFogDir.xyz, r4.xyz);
    r1.w = saturate(fogConstants.sunFogAngles.y * r1.w + fogConstants.sunFogAngles.x);
    r4.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r4.xyzw = r1.wwww * r4.xyzw + fogConstants.sunFogColor.xyzw;
    r0.w = r4.w * r0.w;
    r4.xyz = r4.xyz + -r2.xyz;
    r3.xyz = r0.www * r4.xyz + r2.xyz;
  }
  r2.xyz = relHDRExposure.yyy * r3.xyz;
  r3.xyz = cmp(r2.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r2.xyz = r3.xyz ? r2.xyz : 0;
  r2.xyz = min(float3(65024,65024,64512), r2.xyz);
  r0.w = cmp(0 < permuteHighlight);
  r3.xyzw = permuteHighlight & int4(32,3,64,12);
  r3.xz = cmp((int2)r3.xz != int2(0,0));
  r3.yw = cmp((int2)r3.yw == int2(1,8));
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
        case 4 :        r0.w = (int)r0.y & 3;
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
    r1.xyz = eyeOffset.xyz + r10.xyz;
    r1.w = 0;
    GBufferDiffuseColor[viewID].92 = u2.xyzw;
    r0.w = (int)r0.y & 3;
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
    r0.w = (int)r0.y & 3;
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