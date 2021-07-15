// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:23:21 2021

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.x = mad(permuteStride, 57, (int)vThreadGroupID.x);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=8)(mixed,mixed,mixed,mixed) r0.xy, r0.x, l(0), t25.xyxx
r0.x = samplerLinear[]..swiz;
r0.y = samplerLinear[]..swiz;
  r0.xz = (int2)r0.xy & int2(4095,4095);
  r1.xy = mad((int2)r0.xz, int2(8,8), (int2)vThreadIDInGroup.xy);
  r1.zw = float2(0,0);
  r2.xyzw = GBufferNormalAndGloss.Load(r1.xyw).xyzw;
  r0.xz = (uint2)renderTargetSize.xy;
  r0.xz = cmp((uint2)r1.xy < (uint2)r0.xz);
  r0.x = r0.z ? r0.x : 0;
  r0.z = cmp(0 < r2.z);
  r0.x = r0.z ? r0.x : 0;
  if (r0.x == 0) {
    return;
  }
  r0.z = cmp(r2.z >= 0.5);
  r0.w = GBufferDepth.Load(r1.xyw).x;
  r3.xyz = GBufferDiffuseColor.Load(r1.xyw).xyz;
  r4.xyzw = GBufferSpecularColorAndOcclusion.Load(r1.xyw).xyzw;
  r5.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r6.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r7.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r8.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyz, int3(0, 0, 0)).xyw;
  r1.zw = (uint2)r1.xy;
  r1.zw = float2(0.5,0.5) + r1.zw;
  r3.w = cmp(r0.w >= 0.984375);
  r5.w = 1.01587307 * r0.w;
  r0.w = r0.w * 64 + -63;
  r0.w = r3.w ? r0.w : r5.w;
  r0.w = max(9.99999994e-09, r0.w);
  r0.w = rcp(r0.w);
  r0.x = r0.x ? r0.w : 0;
  r9.xy = -subpixelOffset.xy + r1.zw;
  r9.xy = renderTargetSize.zw * r9.xy;
  r9.xy = r9.xy * float2(2,-2) + float2(-1,1);
  r10.x = inverseProjectionMatrix._m00 * r9.x;
  r10.y = inverseProjectionMatrix._m11 * r9.y;
  r10.z = 1;
  r9.xyz = r10.xyz * r0.xxx;
  r10.xyz = inverseViewMatrix._m10_m11_m12 * r9.yyy;
  r9.xyw = r9.xxx * inverseViewMatrix._m00_m01_m02 + r10.xyz;
  r9.xyz = r9.zzz * inverseViewMatrix._m20_m21_m22 + r9.xyw;
  r0.x = r2.w * 3 + 0.5;
  r0.x = (uint)r0.x;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r2.xy = float2(0.850000024,0.850000024) * r2.xy;
  r0.w = dot(r2.xy, r2.xy);
  r10.zw = float2(2,1) + -r0.ww;
  r0.w = sqrt(r10.z);
  r10.xy = r2.xy * r0.ww;
  r11.xyzw = (int4)r0.xxxx & int4(2,1,2,1);
  r11.xyzw = r11.zwxy ? float4(-1,-1,1.40129846e-45,1.40129846e-45) : float4(1,1,0,0);
  r0.x = (int)r11.w ^ (int)r11.z;
  r11.z = r0.x ? -1 : 1;
  r2.xyw = float3(-1,0,1) * r11.xyz;
  r12.xyz = float3(1,-2,1) * r11.xyz;
  r10.xyz = float3(0.408248305,0.707106769,0.577350259) * r10.xyw;
  r2.xyw = r10.yyy * r2.xyw;
  r2.xyw = r12.xyz * r10.xxx + r2.xyw;
  r10.xyz = r11.xyz * r10.zzz + r2.xyw;
  r0.x = r0.z ? -0.5 : -0.00146627566;
  r0.x = r2.z + r0.x;
  r2.y = saturate(2.00982332 * r0.x);
  r0.x = dot(-r9.xyz, -r9.xyz);
  r0.x = rsqrt(r0.x);
  r0.xzw = -r9.xyz * r0.xxx;
  r2.x = saturate(dot(r10.xyz, r0.xzw));
  r2.z = dot(-r0.xzw, r10.xyz);
  r2.z = r2.z + r2.z;
  r11.xyz = r10.xyz * -r2.zzz + -r0.xzw;
  r0.x = 17 * r2.y;
  r0.x = exp2(r0.x);
  r0.x = 2 + r0.x;
  r0.x = 2 / r0.x;
  r0.x = sqrt(r0.x);
  r0.zw = renderTargetSize.zw * r1.zw;
  r0.z = gSSAOTexture.SampleLevel(samplerLinearClamp_s, r0.zw, 0).x;
  r0.w = r4.z * r0.z;
  r1.z = 1 + -r2.y;
  r1.w = 5 * r1.z;
  r2.z = r1.z * 5 + -2.5;
  r2.z = 0.400000006 * r2.z;
  r2.z = max(0, r2.z);
  r12.xy = -r1.zz * float2(10,5) + float2(6.85740995,7.08500004);
  r2.w = exp2(r12.x);
  r2.w = r2.x * r2.w;
  r2.zw = float2(100,9.1368103) * r2.zw;
  r3.w = r1.w * r1.z;
  r3.w = -r3.w * 2.0159049 + r12.y;
  r3.w = exp2(r3.w);
  r3.w = r3.w * r2.x;
  r3.w = 9.70808983 * r3.w;
  r2.w = max(r3.w, r2.w);
  r2.w = max(1.26815999, r2.w);
  r3.w = numRefProbes + -numOverrideProbes;
  r0.y = (uint)r0.y >> 24;
  r5.w = cmp((uint)r0.y >= (uint)r3.w);
  r6.w = cmp((uint)r0.y < numRefProbes);
  r5.w = r5.w ? r6.w : 0;
  if (r5.w != 0) {
    r5.w = (int)r0.y * 14;
    r12.xyz = -refProbeConstantsCB[r5.w].data[0].xyz + r9.xyz;
    r6.w = 0x0000ffff & (int)refProbeConstantsCB[r5.w].data[7].z;
    if (6 == 0) r7.w = 0; else if (6+25 < 32) {     r7.w = (uint)refProbeConstantsCB[r5.w].data[7].z << (32-(6 + 25)); r7.w = (uint)r7.w >> (32-6);    } else r7.w = (uint)refProbeConstantsCB[r5.w].data[7].z >> 25;
    r8.w = (int)r6.w * 6;
    r9.w = dot(refProbeAttenuationConstantsCB[r8.w].data[0].xyz, r12.xyz);
    r9.w = saturate(refProbeAttenuationConstantsCB[r8.w].data[0].w + r9.w);
    r12.w = dot(refProbeAttenuationConstantsCB[r8.w].data[1].xyz, r12.xyz);
    r12.w = saturate(refProbeAttenuationConstantsCB[r8.w].data[1].w + r12.w);
    r9.w = r12.w * r9.w;
    r12.w = dot(refProbeAttenuationConstantsCB[r8.w].data[2].xyz, r12.xyz);
    r12.w = saturate(refProbeAttenuationConstantsCB[r8.w].data[2].w + r12.w);
    r9.w = r12.w * r9.w;
    r12.w = dot(refProbeAttenuationConstantsCB[r8.w].data[3].xyz, r12.xyz);
    r12.w = saturate(refProbeAttenuationConstantsCB[r8.w].data[3].w + r12.w);
    r9.w = r12.w * r9.w;
    r12.w = dot(refProbeAttenuationConstantsCB[r8.w].data[4].xyz, r12.xyz);
    r12.w = saturate(refProbeAttenuationConstantsCB[r8.w].data[4].w + r12.w);
    r9.w = r12.w * r9.w;
    r12.w = dot(refProbeAttenuationConstantsCB[r8.w].data[5].xyz, r12.xyz);
    r8.w = saturate(refProbeAttenuationConstantsCB[r8.w].data[5].w + r12.w);
    r13.x = r9.w * r8.w;
    r8.w = 1 & (int)refProbeConstantsCB[r5.w].data[6].x;
    r13.yz = float2(0,1);
    r13.xy = r8.ww ? r13.xy : r13.zx;
    r14.x = 1;
    r8.w = refProbeConstantsCB[r5.w].data[6].x;
    r15.xy = r13.xy;
    r9.w = 1;
    while (true) {
      r12.w = cmp((int)r9.w >= (int)r7.w);
      if (r12.w != 0) break;
      r12.w = (int)r6.w + (int)r9.w;
      r12.w = (int)r12.w * 6;
      r13.z = dot(refProbeAttenuationConstantsCB[r12.w].data[0].xyz, r12.xyz);
      r13.z = saturate(refProbeAttenuationConstantsCB[r12.w].data[0].w + r13.z);
      r13.z = r15.x * r13.z;
      r13.w = dot(refProbeAttenuationConstantsCB[r12.w].data[1].xyz, r12.xyz);
      r13.w = saturate(refProbeAttenuationConstantsCB[r12.w].data[1].w + r13.w);
      r13.z = r13.z * r13.w;
      r13.w = dot(refProbeAttenuationConstantsCB[r12.w].data[2].xyz, r12.xyz);
      r13.w = saturate(refProbeAttenuationConstantsCB[r12.w].data[2].w + r13.w);
      r13.z = r13.z * r13.w;
      r13.w = dot(refProbeAttenuationConstantsCB[r12.w].data[3].xyz, r12.xyz);
      r13.w = saturate(refProbeAttenuationConstantsCB[r12.w].data[3].w + r13.w);
      r13.z = r13.z * r13.w;
      r13.w = dot(refProbeAttenuationConstantsCB[r12.w].data[4].xyz, r12.xyz);
      r13.w = saturate(refProbeAttenuationConstantsCB[r12.w].data[4].w + r13.w);
      r13.z = r13.z * r13.w;
      r13.w = dot(refProbeAttenuationConstantsCB[r12.w].data[5].xyz, r12.xyz);
      r12.w = saturate(refProbeAttenuationConstantsCB[r12.w].data[5].w + r13.w);
      r15.x = r13.z * r12.w;
      r13.w = (uint)r8.w >> 2;
      if (1 == 0) r14.z = 0; else if (1+2 < 32) {       r14.z = (uint)r8.w << (32-(1 + 2)); r14.z = (uint)r14.z >> (32-1);      } else r14.z = (uint)r8.w >> 2;
      r14.w = (int)r13.w & 2;
      r15.z = max(r15.y, r15.x);
      r12.w = -r13.z * r12.w + 1;
      r12.w = r15.y * r12.w;
      r14.y = r14.w ? r12.w : r15.z;
      r15.xy = r14.zz ? r15.xy : r14.xy;
      r9.w = (int)r9.w + 1;
      r8.w = r13.w;
    }
    r15.y = saturate(r15.y);
    r6.w = refProbeConstantsCB[r5.w].data[6].y * r15.y;
    r7.w = cmp(0 < r6.w);
    if (r7.w != 0) {
      r7.w = refProbeConstantsCB[r5.w].data[7].y * r6.w;
      r13.x = refProbeConstantsCB[r5.w].data[7].w;
      r13.yz = refProbeConstantsCB[r5.w].data[8].xy;
      r8.w = dot(r11.xyz, r13.xyz);
      r9.w = dot(r12.xyz, r13.xyz);
      r9.w = -refProbeConstantsCB[r5.w].data[8].z + r9.w;
      r12.w = cmp(r9.w >= 0);
      r9.w = max(abs(r9.w), r2.z);
      r9.w = r12.w ? r9.w : -r9.w;
      r8.w = max(1.00000001e-07, -r8.w);
      r8.w = r9.w / r8.w;
      r8.w = min(131072, abs(r8.w));
      r13.x = refProbeConstantsCB[r5.w].data[8].w;
      r13.yz = refProbeConstantsCB[r5.w].data[9].xy;
      r9.w = dot(r11.xyz, r13.xyz);
      r12.w = dot(r12.xyz, r13.xyz);
      r12.w = -refProbeConstantsCB[r5.w].data[9].z + r12.w;
      r13.x = cmp(r12.w >= 0);
      r12.w = max(abs(r12.w), r2.z);
      r12.w = r13.x ? r12.w : -r12.w;
      r9.w = max(1.00000001e-07, -r9.w);
      r9.w = r12.w / r9.w;
      r8.w = min(abs(r9.w), r8.w);
      r13.x = refProbeConstantsCB[r5.w].data[9].w;
      r13.yz = refProbeConstantsCB[r5.w].data[10].xy;
      r9.w = dot(r11.xyz, r13.xyz);
      r12.w = dot(r12.xyz, r13.xyz);
      r12.w = -refProbeConstantsCB[r5.w].data[10].z + r12.w;
      r13.x = cmp(r12.w >= 0);
      r12.w = max(abs(r12.w), r2.z);
      r12.w = r13.x ? r12.w : -r12.w;
      r9.w = max(1.00000001e-07, -r9.w);
      r9.w = r12.w / r9.w;
      r8.w = min(abs(r9.w), r8.w);
      r13.x = refProbeConstantsCB[r5.w].data[10].w;
      r13.yz = refProbeConstantsCB[r5.w].data[11].xy;
      r9.w = dot(r11.xyz, r13.xyz);
      r12.w = dot(r12.xyz, r13.xyz);
      r12.w = -refProbeConstantsCB[r5.w].data[11].z + r12.w;
      r13.x = cmp(r12.w >= 0);
      r12.w = max(abs(r12.w), r2.z);
      r12.w = r13.x ? r12.w : -r12.w;
      r9.w = max(1.00000001e-07, -r9.w);
      r9.w = r12.w / r9.w;
      r8.w = min(abs(r9.w), r8.w);
      r13.x = refProbeConstantsCB[r5.w].data[11].w;
      r13.yz = refProbeConstantsCB[r5.w].data[12].xy;
      r9.w = dot(r11.xyz, r13.xyz);
      r12.w = dot(r12.xyz, r13.xyz);
      r12.w = -refProbeConstantsCB[r5.w].data[12].z + r12.w;
      r13.x = cmp(r12.w >= 0);
      r12.w = max(abs(r12.w), r2.z);
      r12.w = r13.x ? r12.w : -r12.w;
      r9.w = max(1.00000001e-07, -r9.w);
      r9.w = r12.w / r9.w;
      r8.w = min(abs(r9.w), r8.w);
      r13.x = refProbeConstantsCB[r5.w].data[12].w;
      r13.yz = refProbeConstantsCB[r5.w].data[13].xy;
      r9.w = dot(r11.xyz, r13.xyz);
      r12.w = dot(r12.xyz, r13.xyz);
      r12.w = -refProbeConstantsCB[r5.w].data[13].z + r12.w;
      r13.x = cmp(r12.w >= 0);
      r12.w = max(abs(r12.w), r2.z);
      r12.w = r13.x ? r12.w : -r12.w;
      r9.w = max(1.00000001e-07, -r9.w);
      r9.w = r12.w / r9.w;
      r8.w = min(abs(r9.w), r8.w);
      r13.x = refProbeConstantsCB[r5.w].data[3].w + r12.x;
      r13.yz = refProbeConstantsCB[r5.w].data[4].xy + r12.yz;
      r13.xyz = r11.xyz * r8.www + r13.xyz;
      r9.w = dot(r13.xyz, r13.xyz);
      r9.w = sqrt(r9.w);
      r8.w = r8.w / r9.w;
      r8.w = r8.w + r8.w;
      r8.w = sqrt(r8.w);
      r8.w = r1.z * 5 + r8.w;
      r8.w = -0.844799995 + r8.w;
      r14.x = refProbeConstantsCB[r5.w].data[0].w;
      r14.y = refProbeConstantsCB[r5.w].data[1].z;
      r14.z = refProbeConstantsCB[r5.w].data[2].y;
      r15.x = dot(r13.xyz, r14.xyz);
      r16.xy = refProbeConstantsCB[r5.w].data[1].xw;
      r16.z = refProbeConstantsCB[r5.w].data[2].z;
      r15.y = dot(r13.xyz, r16.xyz);
      r17.x = refProbeConstantsCB[r5.w].data[1].y;
      r17.yz = refProbeConstantsCB[r5.w].data[2].xw;
      r15.z = dot(r13.xyz, r17.xyz);
      if (9 == 0) r9.w = 0; else if (9+16 < 32) {       r9.w = (uint)refProbeConstantsCB[r5.w].data[7].z << (32-(9 + 16)); r9.w = (uint)r9.w >> (32-9);      } else r9.w = (uint)refProbeConstantsCB[r5.w].data[7].z >> 16;
      r15.w = (uint)r9.w;
      r13.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r15.xyzw, r8.w).xyz;
      r18.x = dot(r12.xyz, r14.xyz);
      r18.y = dot(r12.xyz, r16.xyz);
      r18.z = dot(r12.xyz, r17.xyz);
      r12.xyz = saturate(r18.xyz * refProbeConstantsCB[r5.w].data[3].xyz + float3(0.5,0.5,0.5));
      r18.xy = refProbeConstantsCB[r5.w].data[4].zw * r12.xy;
      r18.z = refProbeConstantsCB[r5.w].data[5].x * r12.z;
      r12.xyz = refProbeConstantsCB[r5.w].data[5].yzw + r18.xyz;
      r15.x = dot(r10.xyz, r14.xyz);
      r15.y = dot(r10.xyz, r16.xyz);
      r15.z = dot(r10.xyz, r17.xyz);
      r14.xyz = cmp(float3(0,0,0) < r15.xyz);
      r16.z = r14.x ? 0 : 0.5;
      r16.xy = float2(0,0);
      r16.xyz = r16.xyz + r12.xyz;
      r16.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r16.xyz, 0).xyz;
      r17.xyz = r15.xyz * r15.xyz;
      r17.xyz = r17.xyz * r7.www;
      r18.z = r14.y ? 0 : 0.5;
      r18.xy = float2(0,0);
      r14.xyw = r18.xyz + r12.xyz;
      r14.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r14.xyw, 0).xyz;
      r14.xyw = r14.xyw * r17.yyy;
      r14.xyw = r16.xyz * r17.xxx + r14.xyw;
      r16.z = r14.z ? 0 : 0.5;
      r16.xy = float2(0,0);
      r12.xyz = r16.xyz + r12.xyz;
      r12.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r12.xyz, 0).xyz;
      r12.xyz = r12.xyz * r17.zzz + r14.xyw;
      r14.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r15.xyzw, 6).xyz;
      r12.xyz = r14.xyz * r12.xyz;
      r5.w = dot(r12.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r8.w = r5.w * r2.w;
      r13.xyz = r13.xyz * r7.www;
      r7.w = dot(r13.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r5.w = r2.w * r5.w + r7.w;
      r5.w = r8.w / r5.w;
      r13.xyz = r13.xyz * r5.www;
    } else {
      r13.xyz = float3(0,0,0);
      r6.w = 0;
      r12.xyz = float3(0,0,0);
    }
  } else {
    r13.xyz = float3(0,0,0);
    r6.w = 0;
    r12.xyz = float3(0,0,0);
  }
  r5.w = cmp(r6.w < 1);
  if (r5.w != 0) {
    r3.w = cmp((uint)r0.y < (uint)r3.w);
    if (r3.w != 0) {
      r0.y = (int)r0.y * 14;
      r14.xyz = -refProbeConstantsCB[r0.y].data[0].xyz + r9.xyz;
      r3.w = 0x0000ffff & (int)refProbeConstantsCB[r0.y].data[7].z;
      if (6 == 0) r5.w = 0; else if (6+25 < 32) {       r5.w = (uint)refProbeConstantsCB[r0.y].data[7].z << (32-(6 + 25)); r5.w = (uint)r5.w >> (32-6);      } else r5.w = (uint)refProbeConstantsCB[r0.y].data[7].z >> 25;
      r7.w = (int)r3.w * 6;
      r8.w = dot(refProbeAttenuationConstantsCB[r7.w].data[0].xyz, r14.xyz);
      r8.w = saturate(refProbeAttenuationConstantsCB[r7.w].data[0].w + r8.w);
      r9.w = dot(refProbeAttenuationConstantsCB[r7.w].data[1].xyz, r14.xyz);
      r9.w = saturate(refProbeAttenuationConstantsCB[r7.w].data[1].w + r9.w);
      r8.w = r9.w * r8.w;
      r9.w = dot(refProbeAttenuationConstantsCB[r7.w].data[2].xyz, r14.xyz);
      r9.w = saturate(refProbeAttenuationConstantsCB[r7.w].data[2].w + r9.w);
      r8.w = r9.w * r8.w;
      r9.w = dot(refProbeAttenuationConstantsCB[r7.w].data[3].xyz, r14.xyz);
      r9.w = saturate(refProbeAttenuationConstantsCB[r7.w].data[3].w + r9.w);
      r8.w = r9.w * r8.w;
      r9.w = dot(refProbeAttenuationConstantsCB[r7.w].data[4].xyz, r14.xyz);
      r9.w = saturate(refProbeAttenuationConstantsCB[r7.w].data[4].w + r9.w);
      r8.w = r9.w * r8.w;
      r9.w = dot(refProbeAttenuationConstantsCB[r7.w].data[5].xyz, r14.xyz);
      r7.w = saturate(refProbeAttenuationConstantsCB[r7.w].data[5].w + r9.w);
      r15.x = r8.w * r7.w;
      r7.w = 1 & (int)refProbeConstantsCB[r0.y].data[6].x;
      r15.yz = float2(0,1);
      r15.xy = r7.ww ? r15.xy : r15.zx;
      r16.x = 1;
      r7.w = refProbeConstantsCB[r0.y].data[6].x;
      r17.xy = r15.xy;
      r8.w = 1;
      while (true) {
        r9.w = cmp((int)r8.w >= (int)r5.w);
        if (r9.w != 0) break;
        r9.w = (int)r3.w + (int)r8.w;
        r9.w = (int)r9.w * 6;
        r12.w = dot(refProbeAttenuationConstantsCB[r9.w].data[0].xyz, r14.xyz);
        r12.w = saturate(refProbeAttenuationConstantsCB[r9.w].data[0].w + r12.w);
        r12.w = r17.x * r12.w;
        r13.w = dot(refProbeAttenuationConstantsCB[r9.w].data[1].xyz, r14.xyz);
        r13.w = saturate(refProbeAttenuationConstantsCB[r9.w].data[1].w + r13.w);
        r12.w = r13.w * r12.w;
        r13.w = dot(refProbeAttenuationConstantsCB[r9.w].data[2].xyz, r14.xyz);
        r13.w = saturate(refProbeAttenuationConstantsCB[r9.w].data[2].w + r13.w);
        r12.w = r13.w * r12.w;
        r13.w = dot(refProbeAttenuationConstantsCB[r9.w].data[3].xyz, r14.xyz);
        r13.w = saturate(refProbeAttenuationConstantsCB[r9.w].data[3].w + r13.w);
        r12.w = r13.w * r12.w;
        r13.w = dot(refProbeAttenuationConstantsCB[r9.w].data[4].xyz, r14.xyz);
        r13.w = saturate(refProbeAttenuationConstantsCB[r9.w].data[4].w + r13.w);
        r12.w = r13.w * r12.w;
        r13.w = dot(refProbeAttenuationConstantsCB[r9.w].data[5].xyz, r14.xyz);
        r9.w = saturate(refProbeAttenuationConstantsCB[r9.w].data[5].w + r13.w);
        r17.x = r12.w * r9.w;
        r13.w = (uint)r7.w >> 2;
        if (1 == 0) r14.w = 0; else if (1+2 < 32) {         r14.w = (uint)r7.w << (32-(1 + 2)); r14.w = (uint)r14.w >> (32-1);        } else r14.w = (uint)r7.w >> 2;
        r15.z = (int)r13.w & 2;
        r15.w = max(r17.y, r17.x);
        r9.w = -r12.w * r9.w + 1;
        r9.w = r17.y * r9.w;
        r16.y = r15.z ? r9.w : r15.w;
        r17.xy = r14.ww ? r17.xy : r16.xy;
        r8.w = (int)r8.w + 1;
        r7.w = r13.w;
      }
      r3.w = saturate(r17.y + -r6.w);
      r5.w = refProbeConstantsCB[r0.y].data[6].y * r3.w;
      r7.w = cmp(0 < r5.w);
      if (r7.w != 0) {
        r6.w = r3.w * refProbeConstantsCB[r0.y].data[6].y + r6.w;
        r3.w = refProbeConstantsCB[r0.y].data[7].y * r5.w;
        r15.x = refProbeConstantsCB[r0.y].data[7].w;
        r15.yz = refProbeConstantsCB[r0.y].data[8].xy;
        r5.w = dot(r11.xyz, r15.xyz);
        r7.w = dot(r14.xyz, r15.xyz);
        r7.w = -refProbeConstantsCB[r0.y].data[8].z + r7.w;
        r8.w = cmp(r7.w >= 0);
        r7.w = max(abs(r7.w), r2.z);
        r7.w = r8.w ? r7.w : -r7.w;
        r5.w = max(1.00000001e-07, -r5.w);
        r5.w = r7.w / r5.w;
        r5.w = min(131072, abs(r5.w));
        r15.x = refProbeConstantsCB[r0.y].data[8].w;
        r15.yz = refProbeConstantsCB[r0.y].data[9].xy;
        r7.w = dot(r11.xyz, r15.xyz);
        r8.w = dot(r14.xyz, r15.xyz);
        r8.w = -refProbeConstantsCB[r0.y].data[9].z + r8.w;
        r9.w = cmp(r8.w >= 0);
        r8.w = max(abs(r8.w), r2.z);
        r8.w = r9.w ? r8.w : -r8.w;
        r7.w = max(1.00000001e-07, -r7.w);
        r7.w = r8.w / r7.w;
        r5.w = min(abs(r7.w), r5.w);
        r15.x = refProbeConstantsCB[r0.y].data[9].w;
        r15.yz = refProbeConstantsCB[r0.y].data[10].xy;
        r7.w = dot(r11.xyz, r15.xyz);
        r8.w = dot(r14.xyz, r15.xyz);
        r8.w = -refProbeConstantsCB[r0.y].data[10].z + r8.w;
        r9.w = cmp(r8.w >= 0);
        r8.w = max(abs(r8.w), r2.z);
        r8.w = r9.w ? r8.w : -r8.w;
        r7.w = max(1.00000001e-07, -r7.w);
        r7.w = r8.w / r7.w;
        r5.w = min(abs(r7.w), r5.w);
        r15.x = refProbeConstantsCB[r0.y].data[10].w;
        r15.yz = refProbeConstantsCB[r0.y].data[11].xy;
        r7.w = dot(r11.xyz, r15.xyz);
        r8.w = dot(r14.xyz, r15.xyz);
        r8.w = -refProbeConstantsCB[r0.y].data[11].z + r8.w;
        r9.w = cmp(r8.w >= 0);
        r8.w = max(abs(r8.w), r2.z);
        r8.w = r9.w ? r8.w : -r8.w;
        r7.w = max(1.00000001e-07, -r7.w);
        r7.w = r8.w / r7.w;
        r5.w = min(abs(r7.w), r5.w);
        r15.x = refProbeConstantsCB[r0.y].data[11].w;
        r15.yz = refProbeConstantsCB[r0.y].data[12].xy;
        r7.w = dot(r11.xyz, r15.xyz);
        r8.w = dot(r14.xyz, r15.xyz);
        r8.w = -refProbeConstantsCB[r0.y].data[12].z + r8.w;
        r9.w = cmp(r8.w >= 0);
        r8.w = max(abs(r8.w), r2.z);
        r8.w = r9.w ? r8.w : -r8.w;
        r7.w = max(1.00000001e-07, -r7.w);
        r7.w = r8.w / r7.w;
        r5.w = min(abs(r7.w), r5.w);
        r15.x = refProbeConstantsCB[r0.y].data[12].w;
        r15.yz = refProbeConstantsCB[r0.y].data[13].xy;
        r7.w = dot(r11.xyz, r15.xyz);
        r8.w = dot(r14.xyz, r15.xyz);
        r8.w = -refProbeConstantsCB[r0.y].data[13].z + r8.w;
        r9.w = cmp(r8.w >= 0);
        r2.z = max(abs(r8.w), r2.z);
        r2.z = r9.w ? r2.z : -r2.z;
        r7.w = max(1.00000001e-07, -r7.w);
        r2.z = r2.z / r7.w;
        r2.z = min(r5.w, abs(r2.z));
        r15.x = refProbeConstantsCB[r0.y].data[3].w + r14.x;
        r15.yz = refProbeConstantsCB[r0.y].data[4].xy + r14.yz;
        r15.xyz = r11.xyz * r2.zzz + r15.xyz;
        r5.w = dot(r15.xyz, r15.xyz);
        r5.w = sqrt(r5.w);
        r2.z = r2.z / r5.w;
        r2.z = r2.z + r2.z;
        r2.z = sqrt(r2.z);
        r1.z = r1.z * 5 + r2.z;
        r1.z = -0.844799995 + r1.z;
        r16.x = refProbeConstantsCB[r0.y].data[0].w;
        r16.y = refProbeConstantsCB[r0.y].data[1].z;
        r16.z = refProbeConstantsCB[r0.y].data[2].y;
        r17.x = dot(r15.xyz, r16.xyz);
        r18.xy = refProbeConstantsCB[r0.y].data[1].xw;
        r18.z = refProbeConstantsCB[r0.y].data[2].z;
        r17.y = dot(r15.xyz, r18.xyz);
        r19.x = refProbeConstantsCB[r0.y].data[1].y;
        r19.yz = refProbeConstantsCB[r0.y].data[2].xw;
        r17.z = dot(r15.xyz, r19.xyz);
        if (9 == 0) r2.z = 0; else if (9+16 < 32) {         r2.z = (uint)refProbeConstantsCB[r0.y].data[7].z << (32-(9 + 16)); r2.z = (uint)r2.z >> (32-9);        } else r2.z = (uint)refProbeConstantsCB[r0.y].data[7].z >> 16;
        r17.w = (uint)r2.z;
        r15.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r17.xyzw, r1.z).xyz;
        r20.x = dot(r14.xyz, r16.xyz);
        r20.y = dot(r14.xyz, r18.xyz);
        r20.z = dot(r14.xyz, r19.xyz);
        r14.xyz = saturate(r20.xyz * refProbeConstantsCB[r0.y].data[3].xyz + float3(0.5,0.5,0.5));
        r20.xy = refProbeConstantsCB[r0.y].data[4].zw * r14.xy;
        r20.z = refProbeConstantsCB[r0.y].data[5].x * r14.z;
        r14.xyz = refProbeConstantsCB[r0.y].data[5].yzw + r20.xyz;
        r17.x = dot(r10.xyz, r16.xyz);
        r17.y = dot(r10.xyz, r18.xyz);
        r17.z = dot(r10.xyz, r19.xyz);
        r16.xyz = cmp(float3(0,0,0) < r17.xyz);
        r18.z = r16.x ? 0 : 0.5;
        r18.xy = float2(0,0);
        r18.xyz = r18.xyz + r14.xyz;
        r18.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r18.xyz, 0).xyz;
        r19.xyz = r17.xyz * r17.xyz;
        r19.xyz = r19.xyz * r3.www;
        r20.z = r16.y ? 0 : 0.5;
        r20.xy = float2(0,0);
        r16.xyw = r20.xyz + r14.xyz;
        r16.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r16.xyw, 0).xyz;
        r16.xyw = r16.xyw * r19.yyy;
        r16.xyw = r18.xyz * r19.xxx + r16.xyw;
        r18.z = r16.z ? 0 : 0.5;
        r18.xy = float2(0,0);
        r14.xyz = r18.xyz + r14.xyz;
        r14.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r14.xyz, 0).xyz;
        r14.xyz = r14.xyz * r19.zzz + r16.xyw;
        r16.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r17.xyzw, 6).xyz;
        r17.xyz = r16.xyz * r14.xyz;
        r0.y = dot(r17.xyz, float3(0.212599993,0.715200007,0.0722000003));
        r12.xyz = r14.xyz * r16.xyz + r12.xyz;
        r1.z = r2.w * r0.y;
        r14.xyz = r15.xyz * r3.www;
        r2.z = dot(r14.xyz, float3(0.212599993,0.715200007,0.0722000003));
        r0.y = r2.w * r0.y + r2.z;
        r0.y = r1.z / r0.y;
        r13.xyz = r14.xyz * r0.yyy + r13.xyz;
      }
    }
  }
  r0.y = max(1, r6.w);
  r0.y = rcp(r0.y);
  r6.w = saturate(r6.w);
  r14.xyz = r12.xyz * r0.yyy;
  r13.xyz = r13.xyz * r0.yyy;
  r1.z = cmp(r6.w < 0.99000001);
  if (r1.z != 0) {
    r1.z = 1 + -r6.w;
    r2.z = sunConstants.globalProbeExposure * r1.z;
    r15.xyz = -globalProbeConstants.data[0].xyz + r9.xyz;
    r16.x = globalProbeConstants.data[0].w * r15.x;
    r16.yz = globalProbeConstants.data[1].xy * r15.yz;
    r15.xyz = saturate(float3(0.5,0.5,0.5) + r16.xyz);
    r16.xy = globalProbeConstants.data[1].zw * r15.xy;
    r16.z = globalProbeConstants.data[2].x * r15.z;
    r15.xyz = globalProbeConstants.data[2].yzw + r16.xyz;
    r16.xyz = cmp(float3(0,0,0) < r10.xyz);
    r16.xyz = r16.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r16.w = 0;
    r17.xyz = r16.wwx + r15.xyz;
    r17.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r17.xyz, 0).xyz;
    r18.xyz = r10.xyz * r10.xyz;
    r18.xyz = r18.xyz * r2.zzz;
    r19.xyz = r16.wwy + r15.xyz;
    r19.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r19.xyz, 0).xyz;
    r19.xyz = r19.xyz * r18.yyy;
    r17.xyz = r17.xyz * r18.xxx + r19.xyz;
    r15.xyz = r16.wwz + r15.xyz;
    r15.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r15.xyz, 0).xyz;
    r15.xyz = r15.xyz * r18.zzz + r17.xyz;
    r10.w = 0;
    r10.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r10.xyzw, 6).xyz;
    r10.xyz = r15.xyz * r10.xyz;
    r2.z = dot(r10.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r14.xyz = r12.xyz * r0.yyy + r10.xyz;
    r11.w = 0;
    r10.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, r1.w).xyz;
    r0.y = sunConstants.globalProbeExposure * r1.z + -r2.z;
    r0.y = r2.y * r0.y + r2.z;
    r13.xyz = r10.xyz * r0.yyy + r13.xyz;
  }
  r0.y = r4.z * r0.z + r2.x;
  r0.y = log2(abs(r0.y));
  r0.x = r0.x * r0.y;
  r0.x = exp2(r0.x);
  r0.x = r4.z * r0.z + r0.x;
  r0.x = saturate(-1 + r0.x);
  r0.yzw = r14.xyz * r0.www;
  r1.zw = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r1.zw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r1.zw, 0).xy;
  r2.xyz = r13.xyz * r0.xxx;
  r10.xyz = r2.xyz * r1.zzz;
  r2.xyz = r2.xyz * r1.www;
  r4.xyz = r4.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r0.x = (uint)r4.y;
  r5.xyz = r5.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.z = (uint)r5.x;
  r1.z = cmp((int)r0.x == (int)r1.z);
  r1.zw = r1.zz ? r5.yz : float2(-1,0);
  r5.xyz = r6.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.w = (uint)r5.x;
  r2.w = cmp((int)r0.x == (int)r2.w);
  r5.xy = r2.ww ? r5.yz : float2(-1,0);
  r6.xyz = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.w = (uint)r6.x;
  r2.w = cmp((int)r0.x == (int)r2.w);
  r5.zw = r2.ww ? r6.yz : float2(-1,0);
  r6.xyz = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.w = (uint)r6.x;
  r0.x = cmp((int)r0.x == (int)r2.w);
  r6.xy = r0.xx ? r6.yz : float2(-1,0);
  r7.x = r1.z;
  r7.yz = r5.xz;
  r7.w = r6.x;
  r7.xyzw = r7.xyzw + -r4.xxxx;
  r7.xyzw = cmp(abs(r7.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r7.xyzw = r7.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r0.x = r7.x + r7.y;
  r0.x = r0.x + r7.z;
  r0.x = r0.x + r7.w;
  r1.z = r7.y * r5.y;
  r1.z = r7.x * r1.w + r1.z;
  r1.z = r7.z * r5.w + r1.z;
  r1.z = r7.w * r6.y + r1.z;
  r4.w = r1.z / r0.x;
  r0.x = cmp(0 >= r0.x);
  r4.yz = r0.xx ? float2(0,0) : r4.zw;
  r1.zw = (int2)r1.xy & int2(1,1);
  r0.x = cmp((int)r1.w == (int)r1.z);
  r4.xyz = r0.xxx ? r4.xyz : r4.xzy;
  r0.x = -r4.z * 0.5 + r4.x;
  r5.y = r4.z + r0.x;
  r5.z = -r4.y * 0.5 + r0.x;
  r5.x = r5.z + r4.y;
  r4.xyz = float3(1,1,1) + -r5.xyz;
  r4.xyz = r10.xyz * r4.xyz;
  r2.xyz = r2.xyz * r5.xyz + r4.xyz;
  r0.xyz = r0.yzw * r3.xyz + r2.xyz;
  r0.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.w != 0) {
    r0.w = dot(r9.xyz, r9.xyz);
    r1.z = rsqrt(r0.w);
    r2.xyz = r9.xyz * r1.zzz;
    r0.w = sqrt(r0.w);
    r1.z = cmp(0 < fogConstants.blendAmount);
    if (r1.z != 0) {
      r1.zw = r0.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r1.zw = fogConstants.atmospherefogdensityatcamera.xy * r1.zw;
      r2.w = cmp(0.00999999978 < abs(r9.z));
      r3.xy = fogConstants.atmospherefogheightdensityscale.xy * r9.zz;
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
      r1.w = cmp(0.00999999978 < abs(r9.z));
      r2.w = fogConstants.atmospherefogheightdensityscale.x * r9.z;
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
    r0.w = fogConstants.heightFalloff * r9.z;
    r1.z = fogConstants.heightFalloff * r9.z + fogConstants.K0;
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
    r1.z = dot(r9.xyz, r9.xyz);
    r1.w = sqrt(r1.z);
    r0.w = r0.w * r1.w + fogConstants.expAdd;
    r0.w = exp2(r0.w);
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r1.z = rsqrt(r1.z);
    r3.xyz = r9.xyz * r1.zzz;
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