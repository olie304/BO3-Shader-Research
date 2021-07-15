// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:13 2021

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.x = mad(permuteStride, 29, (int)vThreadGroupID.x);
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
  r0.w = r2.w * 3 + 0.5;
  r0.w = (uint)r0.w;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r2.xy = float2(0.850000024,0.850000024) * r2.xy;
  r2.w = dot(r2.xy, r2.xy);
  r10.zw = float2(2,1) + -r2.ww;
  r2.w = sqrt(r10.z);
  r10.xy = r2.xy * r2.ww;
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
  r0.w = r0.z ? -0.5 : -0.00146627566;
  r0.w = r2.z + r0.w;
  r2.y = saturate(2.00982332 * r0.w);
  r0.w = dot(-r9.xyz, -r9.xyz);
  r0.w = rsqrt(r0.w);
  r11.xyz = -r9.xyz * r0.www;
  r2.x = saturate(dot(r10.xyz, r11.xyz));
  r0.w = dot(-r11.xyz, r10.xyz);
  r0.w = r0.w + r0.w;
  r11.xyz = r10.xyz * -r0.www + -r11.xyz;
  r0.w = 17 * r2.y;
  r0.w = exp2(r0.w);
  r0.w = 2 + r0.w;
  r0.w = 2 / r0.w;
  r0.w = sqrt(r0.w);
  r2.zw = renderTargetSize.zw * r1.zw;
  r12.xyzw = gSSAOTexture.Gather(samplerLinearClamp_s, r2.zw).xyzw;
  r13.xyzw = gSSAODepthTexture.Gather(samplerLinearClamp_s, r2.zw).xyzw;
  r1.zw = float2(0.5,0.5) * r1.zw;
  r1.zw = frac(r1.zw);
  r2.zw = float2(1,1) + -r1.wz;
  r14.y = r2.w * r2.z;
  r14.xz = r2.zw * r1.zw;
  r14.w = r1.z * r1.w;
  r1.z = dot(r12.xyzw, r14.xyzw);
  r13.xyzw = r13.xyzw + -r0.xxxx;
  r1.w = min(abs(r13.z), abs(r13.w));
  r1.w = min(abs(r13.y), r1.w);
  r1.w = min(abs(r13.x), r1.w);
  r2.z = max(abs(r13.z), abs(r13.w));
  r2.z = max(abs(r13.y), r2.z);
  r2.z = max(abs(r13.x), r2.z);
  r13.xyz = cmp(r1.www == abs(r13.yzw));
  r1.w = r13.x ? r12.y : r12.x;
  r1.w = r13.y ? r12.z : r1.w;
  r1.w = r13.z ? r12.w : r1.w;
  r0.x = 0.00999999978 * r0.x;
  r0.x = cmp(r0.x < r2.z);
  r0.x = r0.x ? r1.w : r1.z;
  r1.z = r4.z * r0.x;
  r1.w = 1 + -r2.y;
  r2.z = 5 * r1.w;
  r2.w = r1.w * 5 + -2.5;
  r2.w = 0.400000006 * r2.w;
  r2.w = max(0, r2.w);
  r2.w = 100 * r2.w;
  r12.xy = -r1.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r3.w = exp2(r12.x);
  r3.w = r3.w * r2.x;
  r3.w = 9.1368103 * r3.w;
  r5.w = r2.z * r1.w;
  r5.w = -r5.w * 2.0159049 + r12.y;
  r5.w = exp2(r5.w);
  r5.w = r5.w * r2.x;
  r5.w = 9.70808983 * r5.w;
  r3.w = max(r5.w, r3.w);
  r3.w = max(1.26815999, r3.w);
  r5.w = numRefProbes + -numOverrideProbes;
  r6.w = (uint)r0.y >> 24;
  if (10 == 0) r0.y = 0; else if (10+12 < 32) {   r0.y = (uint)r0.y << (32-(10 + 12)); r0.y = (uint)r0.y >> (32-10);  } else r0.y = (uint)r0.y >> 12;
  r12.yz = float2(0,1);
  r13.xy = float2(0,0);
  r14.x = 1;
  r15.xy = float2(0,0);
  r16.xy = float2(0,0);
  r17.xyzw = float4(0,0,0,0);
  r18.yzw = float3(0,0,0);
  r7.w = 0;
  while (true) {
    r8.w = cmp((int)r7.w == 2);
    if (r8.w != 0) break;
    r8.w = r7.w ? r0.y : r6.w;
    r9.w = cmp((uint)r8.w >= (uint)r5.w);
    r12.w = cmp((uint)r8.w < numRefProbes);
    r9.w = r9.w ? r12.w : 0;
    if (r9.w != 0) {
      r8.w = (int)r8.w * 14;
      r19.xyz = -refProbeConstantsCB[r8.w].data[0].xyz + r9.xyz;
      r9.w = 0x0000ffff & (int)refProbeConstantsCB[r8.w].data[7].z;
      if (6 == 0) r12.w = 0; else if (6+25 < 32) {       r12.w = (uint)refProbeConstantsCB[r8.w].data[7].z << (32-(6 + 25)); r12.w = (uint)r12.w >> (32-6);      } else r12.w = (uint)refProbeConstantsCB[r8.w].data[7].z >> 25;
      r13.w = (int)r9.w * 6;
      r14.z = dot(refProbeAttenuationConstantsCB[r13.w].data[0].xyz, r19.xyz);
      r14.z = saturate(refProbeAttenuationConstantsCB[r13.w].data[0].w + r14.z);
      r14.w = dot(refProbeAttenuationConstantsCB[r13.w].data[1].xyz, r19.xyz);
      r14.w = saturate(refProbeAttenuationConstantsCB[r13.w].data[1].w + r14.w);
      r14.z = r14.z * r14.w;
      r14.w = dot(refProbeAttenuationConstantsCB[r13.w].data[2].xyz, r19.xyz);
      r14.w = saturate(refProbeAttenuationConstantsCB[r13.w].data[2].w + r14.w);
      r14.z = r14.z * r14.w;
      r14.w = dot(refProbeAttenuationConstantsCB[r13.w].data[3].xyz, r19.xyz);
      r14.w = saturate(refProbeAttenuationConstantsCB[r13.w].data[3].w + r14.w);
      r14.z = r14.z * r14.w;
      r14.w = dot(refProbeAttenuationConstantsCB[r13.w].data[4].xyz, r19.xyz);
      r14.w = saturate(refProbeAttenuationConstantsCB[r13.w].data[4].w + r14.w);
      r14.z = r14.z * r14.w;
      r14.w = dot(refProbeAttenuationConstantsCB[r13.w].data[5].xyz, r19.xyz);
      r13.w = saturate(refProbeAttenuationConstantsCB[r13.w].data[5].w + r14.w);
      r12.x = r14.z * r13.w;
      r13.w = 1 & (int)refProbeConstantsCB[r8.w].data[6].x;
      r14.zw = r13.ww ? r12.xy : r12.zx;
      r12.x = refProbeConstantsCB[r8.w].data[6].x;
      r20.xy = r14.zw;
      r13.w = 1;
      while (true) {
        r15.w = cmp((int)r13.w >= (int)r12.w);
        if (r15.w != 0) break;
        r15.w = (int)r9.w + (int)r13.w;
        r15.w = (int)r15.w * 6;
        r16.w = dot(refProbeAttenuationConstantsCB[r15.w].data[0].xyz, r19.xyz);
        r16.w = saturate(refProbeAttenuationConstantsCB[r15.w].data[0].w + r16.w);
        r16.w = r20.x * r16.w;
        r19.w = dot(refProbeAttenuationConstantsCB[r15.w].data[1].xyz, r19.xyz);
        r19.w = saturate(refProbeAttenuationConstantsCB[r15.w].data[1].w + r19.w);
        r16.w = r19.w * r16.w;
        r19.w = dot(refProbeAttenuationConstantsCB[r15.w].data[2].xyz, r19.xyz);
        r19.w = saturate(refProbeAttenuationConstantsCB[r15.w].data[2].w + r19.w);
        r16.w = r19.w * r16.w;
        r19.w = dot(refProbeAttenuationConstantsCB[r15.w].data[3].xyz, r19.xyz);
        r19.w = saturate(refProbeAttenuationConstantsCB[r15.w].data[3].w + r19.w);
        r16.w = r19.w * r16.w;
        r19.w = dot(refProbeAttenuationConstantsCB[r15.w].data[4].xyz, r19.xyz);
        r19.w = saturate(refProbeAttenuationConstantsCB[r15.w].data[4].w + r19.w);
        r16.w = r19.w * r16.w;
        r19.w = dot(refProbeAttenuationConstantsCB[r15.w].data[5].xyz, r19.xyz);
        r15.w = saturate(refProbeAttenuationConstantsCB[r15.w].data[5].w + r19.w);
        r20.x = r16.w * r15.w;
        r19.w = (uint)r12.x >> 2;
        if (1 == 0) r20.z = 0; else if (1+2 < 32) {         r20.z = (uint)r12.x << (32-(1 + 2)); r20.z = (uint)r20.z >> (32-1);        } else r20.z = (uint)r12.x >> 2;
        r20.w = (int)r19.w & 2;
        r21.x = max(r20.y, r20.x);
        r15.w = -r16.w * r15.w + 1;
        r15.w = r20.y * r15.w;
        r14.y = r20.w ? r15.w : r21.x;
        r20.xy = r20.zz ? r20.xy : r14.xy;
        r13.w = (int)r13.w + 1;
        r12.x = r19.w;
      }
      r20.y = saturate(r20.y);
      r9.w = refProbeConstantsCB[r8.w].data[6].y * r20.y;
      r12.x = cmp(0 < r9.w);
      if (r12.x != 0) {
        r18.w = r20.y * refProbeConstantsCB[r8.w].data[6].y + r18.w;
        r9.w = refProbeConstantsCB[r8.w].data[7].y * r9.w;
        r21.x = refProbeConstantsCB[r8.w].data[7].w;
        r21.yz = refProbeConstantsCB[r8.w].data[8].xy;
        r12.x = dot(r11.xyz, r21.xyz);
        r12.w = dot(r19.xyz, r21.xyz);
        r12.w = -refProbeConstantsCB[r8.w].data[8].z + r12.w;
        r13.w = cmp(r12.w >= 0);
        r12.w = max(abs(r12.w), r2.w);
        r12.w = r13.w ? r12.w : -r12.w;
        r12.x = max(1.00000001e-07, -r12.x);
        r12.x = r12.w / r12.x;
        r12.x = min(131072, abs(r12.x));
        r21.x = refProbeConstantsCB[r8.w].data[8].w;
        r21.yz = refProbeConstantsCB[r8.w].data[9].xy;
        r12.w = dot(r11.xyz, r21.xyz);
        r13.w = dot(r19.xyz, r21.xyz);
        r13.w = -refProbeConstantsCB[r8.w].data[9].z + r13.w;
        r14.y = cmp(r13.w >= 0);
        r13.w = max(abs(r13.w), r2.w);
        r13.w = r14.y ? r13.w : -r13.w;
        r12.w = max(1.00000001e-07, -r12.w);
        r12.w = r13.w / r12.w;
        r12.x = min(r12.x, abs(r12.w));
        r21.x = refProbeConstantsCB[r8.w].data[9].w;
        r21.yz = refProbeConstantsCB[r8.w].data[10].xy;
        r12.w = dot(r11.xyz, r21.xyz);
        r13.w = dot(r19.xyz, r21.xyz);
        r13.w = -refProbeConstantsCB[r8.w].data[10].z + r13.w;
        r14.y = cmp(r13.w >= 0);
        r13.w = max(abs(r13.w), r2.w);
        r13.w = r14.y ? r13.w : -r13.w;
        r12.w = max(1.00000001e-07, -r12.w);
        r12.w = r13.w / r12.w;
        r12.x = min(r12.x, abs(r12.w));
        r21.x = refProbeConstantsCB[r8.w].data[10].w;
        r21.yz = refProbeConstantsCB[r8.w].data[11].xy;
        r12.w = dot(r11.xyz, r21.xyz);
        r13.w = dot(r19.xyz, r21.xyz);
        r13.w = -refProbeConstantsCB[r8.w].data[11].z + r13.w;
        r14.y = cmp(r13.w >= 0);
        r13.w = max(abs(r13.w), r2.w);
        r13.w = r14.y ? r13.w : -r13.w;
        r12.w = max(1.00000001e-07, -r12.w);
        r12.w = r13.w / r12.w;
        r12.x = min(r12.x, abs(r12.w));
        r21.x = refProbeConstantsCB[r8.w].data[11].w;
        r21.yz = refProbeConstantsCB[r8.w].data[12].xy;
        r12.w = dot(r11.xyz, r21.xyz);
        r13.w = dot(r19.xyz, r21.xyz);
        r13.w = -refProbeConstantsCB[r8.w].data[12].z + r13.w;
        r14.y = cmp(r13.w >= 0);
        r13.w = max(abs(r13.w), r2.w);
        r13.w = r14.y ? r13.w : -r13.w;
        r12.w = max(1.00000001e-07, -r12.w);
        r12.w = r13.w / r12.w;
        r12.x = min(r12.x, abs(r12.w));
        r21.x = refProbeConstantsCB[r8.w].data[12].w;
        r21.yz = refProbeConstantsCB[r8.w].data[13].xy;
        r12.w = dot(r11.xyz, r21.xyz);
        r13.w = dot(r19.xyz, r21.xyz);
        r13.w = -refProbeConstantsCB[r8.w].data[13].z + r13.w;
        r14.y = cmp(r13.w >= 0);
        r13.w = max(abs(r13.w), r2.w);
        r13.w = r14.y ? r13.w : -r13.w;
        r12.w = max(1.00000001e-07, -r12.w);
        r12.w = r13.w / r12.w;
        r12.x = min(r12.x, abs(r12.w));
        r21.x = refProbeConstantsCB[r8.w].data[3].w + r19.x;
        r21.yz = refProbeConstantsCB[r8.w].data[4].xy + r19.yz;
        r14.yzw = r11.xyz * r12.xxx + r21.xyz;
        r12.w = dot(r14.yzw, r14.yzw);
        r12.w = sqrt(r12.w);
        r12.x = r12.x / r12.w;
        r12.x = r12.x + r12.x;
        r12.x = sqrt(r12.x);
        r12.x = r1.w * 5 + r12.x;
        r12.x = -0.844799995 + r12.x;
        r21.x = refProbeConstantsCB[r8.w].data[0].w;
        r21.y = refProbeConstantsCB[r8.w].data[1].z;
        r21.z = refProbeConstantsCB[r8.w].data[2].y;
        r22.x = dot(r14.yzw, r21.xyz);
        r23.xy = refProbeConstantsCB[r8.w].data[1].xw;
        r23.z = refProbeConstantsCB[r8.w].data[2].z;
        r22.y = dot(r14.yzw, r23.xyz);
        r24.x = refProbeConstantsCB[r8.w].data[1].y;
        r24.yz = refProbeConstantsCB[r8.w].data[2].xw;
        r22.z = dot(r14.yzw, r24.xyz);
        if (9 == 0) r12.w = 0; else if (9+16 < 32) {         r12.w = (uint)refProbeConstantsCB[r8.w].data[7].z << (32-(9 + 16)); r12.w = (uint)r12.w >> (32-9);        } else r12.w = (uint)refProbeConstantsCB[r8.w].data[7].z >> 16;
        r22.w = (uint)r12.w;
        r14.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r22.xyzw, r12.x).xyz;
        r25.x = dot(r19.xyz, r21.xyz);
        r25.y = dot(r19.xyz, r23.xyz);
        r25.z = dot(r19.xyz, r24.xyz);
        r19.xyz = saturate(r25.xyz * refProbeConstantsCB[r8.w].data[3].xyz + float3(0.5,0.5,0.5));
        r25.xy = refProbeConstantsCB[r8.w].data[4].zw * r19.xy;
        r25.z = refProbeConstantsCB[r8.w].data[5].x * r19.z;
        r19.xyz = refProbeConstantsCB[r8.w].data[5].yzw + r25.xyz;
        r22.x = dot(r10.xyz, r21.xyz);
        r22.y = dot(r10.xyz, r23.xyz);
        r22.z = dot(r10.xyz, r24.xyz);
        r20.xzw = cmp(float3(0,0,0) < r22.xyz);
        r13.z = r20.x ? 0 : 0.5;
        r21.xyz = r19.xyz + r13.xyz;
        r21.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r21.xyz, 0).xyz;
        r23.xyz = r22.xyz * r22.xyz;
        r23.xyz = r23.xyz * r9.www;
        r15.z = r20.z ? 0 : 0.5;
        r24.xyz = r19.xyz + r15.xyz;
        r24.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r24.xyz, 0).xyz;
        r24.xyz = r24.xyz * r23.yyy;
        r21.xyz = r21.xyz * r23.xxx + r24.xyz;
        r16.z = r20.w ? 0 : 0.5;
        r19.xyz = r19.xyz + r16.xyz;
        r19.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r19.xyz, 0).xyz;
        r19.xyz = r19.xyz * r23.zzz + r21.xyz;
        r20.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r22.xyzw, 6).xyz;
        r21.xyz = r20.xzw * r19.xyz;
        r8.w = dot(r21.xyz, float3(0.212599993,0.715200007,0.0722000003));
        r17.xyz = r19.xyz * r20.xzw + r17.xyz;
        r12.x = r8.w * r3.w;
        r14.yzw = r14.yzw * r9.www;
        r9.w = dot(r14.yzw, float3(0.212599993,0.715200007,0.0722000003));
        r8.w = r3.w * r8.w + r9.w;
        r8.w = r12.x / r8.w;
        r19.x = r17.w;
        r19.yz = r18.yz;
        r18.xyz = r14.yzw * r8.www + r19.xyz;
        r17.w = r18.x;
      }
    }
    r7.w = (int)r7.w + 1;
  }
  r7.w = cmp(r18.w < 1);
  if (r7.w != 0) {
    r12.yz = float2(0,1);
    r13.xy = float2(0,0);
    r14.x = 1;
    r15.xy = float2(0,0);
    r16.xy = float2(0,0);
    r19.x = r17.w;
    r19.yzw = r18.yzw;
    r20.xyz = r17.xyz;
    r7.w = 0;
    while (true) {
      r8.w = cmp((int)r7.w == 2);
      if (r8.w != 0) break;
      r8.w = r7.w ? r0.y : r6.w;
      r9.w = cmp((uint)r8.w < (uint)r5.w);
      if (r9.w != 0) {
        r8.w = (int)r8.w * 14;
        r21.xyz = -refProbeConstantsCB[r8.w].data[0].xyz + r9.xyz;
        r9.w = 0x0000ffff & (int)refProbeConstantsCB[r8.w].data[7].z;
        if (6 == 0) r12.w = 0; else if (6+25 < 32) {         r12.w = (uint)refProbeConstantsCB[r8.w].data[7].z << (32-(6 + 25)); r12.w = (uint)r12.w >> (32-6);        } else r12.w = (uint)refProbeConstantsCB[r8.w].data[7].z >> 25;
        r13.w = (int)r9.w * 6;
        r14.z = dot(refProbeAttenuationConstantsCB[r13.w].data[0].xyz, r21.xyz);
        r14.z = saturate(refProbeAttenuationConstantsCB[r13.w].data[0].w + r14.z);
        r14.w = dot(refProbeAttenuationConstantsCB[r13.w].data[1].xyz, r21.xyz);
        r14.w = saturate(refProbeAttenuationConstantsCB[r13.w].data[1].w + r14.w);
        r14.z = r14.z * r14.w;
        r14.w = dot(refProbeAttenuationConstantsCB[r13.w].data[2].xyz, r21.xyz);
        r14.w = saturate(refProbeAttenuationConstantsCB[r13.w].data[2].w + r14.w);
        r14.z = r14.z * r14.w;
        r14.w = dot(refProbeAttenuationConstantsCB[r13.w].data[3].xyz, r21.xyz);
        r14.w = saturate(refProbeAttenuationConstantsCB[r13.w].data[3].w + r14.w);
        r14.z = r14.z * r14.w;
        r14.w = dot(refProbeAttenuationConstantsCB[r13.w].data[4].xyz, r21.xyz);
        r14.w = saturate(refProbeAttenuationConstantsCB[r13.w].data[4].w + r14.w);
        r14.z = r14.z * r14.w;
        r14.w = dot(refProbeAttenuationConstantsCB[r13.w].data[5].xyz, r21.xyz);
        r13.w = saturate(refProbeAttenuationConstantsCB[r13.w].data[5].w + r14.w);
        r12.x = r14.z * r13.w;
        r13.w = 1 & (int)refProbeConstantsCB[r8.w].data[6].x;
        r14.zw = r13.ww ? r12.xy : r12.zx;
        r12.x = refProbeConstantsCB[r8.w].data[6].x;
        r22.xy = r14.zw;
        r13.w = 1;
        while (true) {
          r15.w = cmp((int)r13.w >= (int)r12.w);
          if (r15.w != 0) break;
          r15.w = (int)r9.w + (int)r13.w;
          r15.w = (int)r15.w * 6;
          r16.w = dot(refProbeAttenuationConstantsCB[r15.w].data[0].xyz, r21.xyz);
          r16.w = saturate(refProbeAttenuationConstantsCB[r15.w].data[0].w + r16.w);
          r16.w = r22.x * r16.w;
          r20.w = dot(refProbeAttenuationConstantsCB[r15.w].data[1].xyz, r21.xyz);
          r20.w = saturate(refProbeAttenuationConstantsCB[r15.w].data[1].w + r20.w);
          r16.w = r20.w * r16.w;
          r20.w = dot(refProbeAttenuationConstantsCB[r15.w].data[2].xyz, r21.xyz);
          r20.w = saturate(refProbeAttenuationConstantsCB[r15.w].data[2].w + r20.w);
          r16.w = r20.w * r16.w;
          r20.w = dot(refProbeAttenuationConstantsCB[r15.w].data[3].xyz, r21.xyz);
          r20.w = saturate(refProbeAttenuationConstantsCB[r15.w].data[3].w + r20.w);
          r16.w = r20.w * r16.w;
          r20.w = dot(refProbeAttenuationConstantsCB[r15.w].data[4].xyz, r21.xyz);
          r20.w = saturate(refProbeAttenuationConstantsCB[r15.w].data[4].w + r20.w);
          r16.w = r20.w * r16.w;
          r20.w = dot(refProbeAttenuationConstantsCB[r15.w].data[5].xyz, r21.xyz);
          r15.w = saturate(refProbeAttenuationConstantsCB[r15.w].data[5].w + r20.w);
          r22.x = r16.w * r15.w;
          r20.w = (uint)r12.x >> 2;
          if (1 == 0) r21.w = 0; else if (1+2 < 32) {           r21.w = (uint)r12.x << (32-(1 + 2)); r21.w = (uint)r21.w >> (32-1);          } else r21.w = (uint)r12.x >> 2;
          r22.z = (int)r20.w & 2;
          r22.w = max(r22.y, r22.x);
          r15.w = -r16.w * r15.w + 1;
          r15.w = r22.y * r15.w;
          r14.y = r22.z ? r15.w : r22.w;
          r22.xy = r21.ww ? r22.xy : r14.xy;
          r13.w = (int)r13.w + 1;
          r12.x = r20.w;
        }
        r9.w = saturate(r22.y + -r18.w);
        r12.x = refProbeConstantsCB[r8.w].data[6].y * r9.w;
        r12.w = cmp(0 < r12.x);
        if (r12.w != 0) {
          r19.w = r9.w * refProbeConstantsCB[r8.w].data[6].y + r19.w;
          r9.w = refProbeConstantsCB[r8.w].data[7].y * r12.x;
          r23.x = refProbeConstantsCB[r8.w].data[7].w;
          r23.yz = refProbeConstantsCB[r8.w].data[8].xy;
          r12.x = dot(r11.xyz, r23.xyz);
          r12.w = dot(r21.xyz, r23.xyz);
          r12.w = -refProbeConstantsCB[r8.w].data[8].z + r12.w;
          r13.w = cmp(r12.w >= 0);
          r12.w = max(abs(r12.w), r2.w);
          r12.w = r13.w ? r12.w : -r12.w;
          r12.x = max(1.00000001e-07, -r12.x);
          r12.x = r12.w / r12.x;
          r12.x = min(131072, abs(r12.x));
          r23.x = refProbeConstantsCB[r8.w].data[8].w;
          r23.yz = refProbeConstantsCB[r8.w].data[9].xy;
          r12.w = dot(r11.xyz, r23.xyz);
          r13.w = dot(r21.xyz, r23.xyz);
          r13.w = -refProbeConstantsCB[r8.w].data[9].z + r13.w;
          r14.y = cmp(r13.w >= 0);
          r13.w = max(abs(r13.w), r2.w);
          r13.w = r14.y ? r13.w : -r13.w;
          r12.w = max(1.00000001e-07, -r12.w);
          r12.w = r13.w / r12.w;
          r12.x = min(r12.x, abs(r12.w));
          r23.x = refProbeConstantsCB[r8.w].data[9].w;
          r23.yz = refProbeConstantsCB[r8.w].data[10].xy;
          r12.w = dot(r11.xyz, r23.xyz);
          r13.w = dot(r21.xyz, r23.xyz);
          r13.w = -refProbeConstantsCB[r8.w].data[10].z + r13.w;
          r14.y = cmp(r13.w >= 0);
          r13.w = max(abs(r13.w), r2.w);
          r13.w = r14.y ? r13.w : -r13.w;
          r12.w = max(1.00000001e-07, -r12.w);
          r12.w = r13.w / r12.w;
          r12.x = min(r12.x, abs(r12.w));
          r23.x = refProbeConstantsCB[r8.w].data[10].w;
          r23.yz = refProbeConstantsCB[r8.w].data[11].xy;
          r12.w = dot(r11.xyz, r23.xyz);
          r13.w = dot(r21.xyz, r23.xyz);
          r13.w = -refProbeConstantsCB[r8.w].data[11].z + r13.w;
          r14.y = cmp(r13.w >= 0);
          r13.w = max(abs(r13.w), r2.w);
          r13.w = r14.y ? r13.w : -r13.w;
          r12.w = max(1.00000001e-07, -r12.w);
          r12.w = r13.w / r12.w;
          r12.x = min(r12.x, abs(r12.w));
          r23.x = refProbeConstantsCB[r8.w].data[11].w;
          r23.yz = refProbeConstantsCB[r8.w].data[12].xy;
          r12.w = dot(r11.xyz, r23.xyz);
          r13.w = dot(r21.xyz, r23.xyz);
          r13.w = -refProbeConstantsCB[r8.w].data[12].z + r13.w;
          r14.y = cmp(r13.w >= 0);
          r13.w = max(abs(r13.w), r2.w);
          r13.w = r14.y ? r13.w : -r13.w;
          r12.w = max(1.00000001e-07, -r12.w);
          r12.w = r13.w / r12.w;
          r12.x = min(r12.x, abs(r12.w));
          r23.x = refProbeConstantsCB[r8.w].data[12].w;
          r23.yz = refProbeConstantsCB[r8.w].data[13].xy;
          r12.w = dot(r11.xyz, r23.xyz);
          r13.w = dot(r21.xyz, r23.xyz);
          r13.w = -refProbeConstantsCB[r8.w].data[13].z + r13.w;
          r14.y = cmp(r13.w >= 0);
          r13.w = max(abs(r13.w), r2.w);
          r13.w = r14.y ? r13.w : -r13.w;
          r12.w = max(1.00000001e-07, -r12.w);
          r12.w = r13.w / r12.w;
          r12.x = min(r12.x, abs(r12.w));
          r23.x = refProbeConstantsCB[r8.w].data[3].w + r21.x;
          r23.yz = refProbeConstantsCB[r8.w].data[4].xy + r21.yz;
          r14.yzw = r11.xyz * r12.xxx + r23.xyz;
          r12.w = dot(r14.yzw, r14.yzw);
          r12.w = sqrt(r12.w);
          r12.x = r12.x / r12.w;
          r12.x = r12.x + r12.x;
          r12.x = sqrt(r12.x);
          r12.x = r1.w * 5 + r12.x;
          r12.x = -0.844799995 + r12.x;
          r23.x = refProbeConstantsCB[r8.w].data[0].w;
          r23.y = refProbeConstantsCB[r8.w].data[1].z;
          r23.z = refProbeConstantsCB[r8.w].data[2].y;
          r24.x = dot(r14.yzw, r23.xyz);
          r25.xy = refProbeConstantsCB[r8.w].data[1].xw;
          r25.z = refProbeConstantsCB[r8.w].data[2].z;
          r24.y = dot(r14.yzw, r25.xyz);
          r26.x = refProbeConstantsCB[r8.w].data[1].y;
          r26.yz = refProbeConstantsCB[r8.w].data[2].xw;
          r24.z = dot(r14.yzw, r26.xyz);
          if (9 == 0) r12.w = 0; else if (9+16 < 32) {           r12.w = (uint)refProbeConstantsCB[r8.w].data[7].z << (32-(9 + 16)); r12.w = (uint)r12.w >> (32-9);          } else r12.w = (uint)refProbeConstantsCB[r8.w].data[7].z >> 16;
          r24.w = (uint)r12.w;
          r14.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r24.xyzw, r12.x).xyz;
          r27.x = dot(r21.xyz, r23.xyz);
          r27.y = dot(r21.xyz, r25.xyz);
          r27.z = dot(r21.xyz, r26.xyz);
          r21.xyz = saturate(r27.xyz * refProbeConstantsCB[r8.w].data[3].xyz + float3(0.5,0.5,0.5));
          r27.xy = refProbeConstantsCB[r8.w].data[4].zw * r21.xy;
          r27.z = refProbeConstantsCB[r8.w].data[5].x * r21.z;
          r21.xyz = refProbeConstantsCB[r8.w].data[5].yzw + r27.xyz;
          r24.x = dot(r10.xyz, r23.xyz);
          r24.y = dot(r10.xyz, r25.xyz);
          r24.z = dot(r10.xyz, r26.xyz);
          r22.xzw = cmp(float3(0,0,0) < r24.xyz);
          r13.z = r22.x ? 0 : 0.5;
          r23.xyz = r21.xyz + r13.xyz;
          r23.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
          r25.xyz = r24.xyz * r24.xyz;
          r25.xyz = r25.xyz * r9.www;
          r15.z = r22.z ? 0 : 0.5;
          r26.xyz = r21.xyz + r15.xyz;
          r26.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
          r26.xyz = r26.xyz * r25.yyy;
          r23.xyz = r23.xyz * r25.xxx + r26.xyz;
          r16.z = r22.w ? 0 : 0.5;
          r21.xyz = r21.xyz + r16.xyz;
          r21.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r21.xyz, 0).xyz;
          r21.xyz = r21.xyz * r25.zzz + r23.xyz;
          r22.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r24.xyzw, 6).xyz;
          r23.xyz = r22.xzw * r21.xyz;
          r8.w = dot(r23.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r20.xyz = r21.xyz * r22.xzw + r20.xyz;
          r12.x = r8.w * r3.w;
          r14.yzw = r14.yzw * r9.www;
          r9.w = dot(r14.yzw, float3(0.212599993,0.715200007,0.0722000003));
          r8.w = r3.w * r8.w + r9.w;
          r8.w = r12.x / r8.w;
          r19.xyz = r14.yzw * r8.www + r19.xyz;
        }
      }
      r7.w = (int)r7.w + 1;
    }
    r18.xyzw = r19.zxyw;
    r17.xyz = r20.xyz;
    r18.xyzw = r18.yzxw;
  } else {
    r18.x = r17.w;
  }
  r0.y = max(1, r18.w);
  r0.y = rcp(r0.y);
  r18.w = saturate(r18.w);
  r12.xyz = r17.xyz * r0.yyy;
  r13.xyz = r18.xyz * r0.yyy;
  r1.w = cmp(r18.w < 0.99000001);
  if (r1.w != 0) {
    r1.w = 1 + -r18.w;
    r2.w = sunConstants.globalProbeExposure * r1.w;
    r14.xyz = -globalProbeConstants.data[0].xyz + r9.xyz;
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
    r18.xyz = r10.xyz * r10.xyz;
    r18.xyz = r18.xyz * r2.www;
    r19.xyz = r15.wwy + r14.xyz;
    r19.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r19.xyz, 0).xyz;
    r19.xyz = r19.xyz * r18.yyy;
    r16.xyz = r16.xyz * r18.xxx + r19.xyz;
    r14.xyz = r15.wwz + r14.xyz;
    r14.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r14.xyz, 0).xyz;
    r14.xyz = r14.xyz * r18.zzz + r16.xyz;
    r10.w = 0;
    r10.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r10.xyzw, 6).xyz;
    r10.xyz = r14.xyz * r10.xyz;
    r2.w = dot(r10.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r12.xyz = r17.xyz * r0.yyy + r10.xyz;
    r11.w = 0;
    r10.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, r2.z).xyz;
    r0.y = sunConstants.globalProbeExposure * r1.w + -r2.w;
    r0.y = r2.y * r0.y + r2.w;
    r13.xyz = r10.xyz * r0.yyy + r13.xyz;
  }
  r0.y = r4.z * r0.x + r2.x;
  r0.y = log2(abs(r0.y));
  r0.y = r0.w * r0.y;
  r0.y = exp2(r0.y);
  r0.x = r4.z * r0.x + r0.y;
  r0.x = saturate(-1 + r0.x);
  r10.xyz = r12.xyz * r1.zzz;
  r11.xyz = r0.zzz ? r10.xyz : 0;
  r0.yw = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r0.yw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r0.yw, 0).xy;
  r2.xyz = r13.xyz * r0.xxx;
  r12.xyz = r2.xyz * r0.yyy;
  r0.xyw = r2.xyz * r0.www;
  r2.xyz = r4.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r1.z = (uint)r2.y;
  r4.xyz = r5.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r4.x;
  r1.w = cmp((int)r1.z == (int)r1.w);
  r4.xy = r1.ww ? r4.yz : float2(-1,0);
  r5.xyz = r6.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r5.x;
  r1.w = cmp((int)r1.z == (int)r1.w);
  r4.zw = r1.ww ? r5.yz : float2(-1,0);
  r5.xyz = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r5.x;
  r1.w = cmp((int)r1.z == (int)r1.w);
  r5.xy = r1.ww ? r5.yz : float2(-1,0);
  r6.xyz = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r6.x;
  r1.z = cmp((int)r1.z == (int)r1.w);
  r1.zw = r1.zz ? r6.yz : float2(-1,0);
  r6.xy = r4.xz;
  r6.z = r5.x;
  r6.w = r1.z;
  r6.xyzw = r6.xyzw + -r2.xxxx;
  r6.xyzw = cmp(abs(r6.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r6.xyzw = r6.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r1.z = r6.x + r6.y;
  r1.z = r1.z + r6.z;
  r1.z = r1.z + r6.w;
  r3.w = r6.y * r4.w;
  r3.w = r6.x * r4.y + r3.w;
  r3.w = r6.z * r5.y + r3.w;
  r1.w = r6.w * r1.w + r3.w;
  r2.w = r1.w / r1.z;
  r1.z = cmp(0 >= r1.z);
  r2.yz = r1.zz ? float2(0,0) : r2.zw;
  r1.zw = (int2)r1.xy & int2(1,1);
  r1.z = cmp((int)r1.w == (int)r1.z);
  r2.xyz = r1.zzz ? r2.xyz : r2.xzy;
  r1.z = -r2.z * 0.5 + r2.x;
  r4.y = r2.z + r1.z;
  r4.z = -r2.y * 0.5 + r1.z;
  r4.x = r4.z + r2.y;
  r2.xyz = r10.xyz * r3.xyz;
  r2.xyz = r11.xyz * r4.xyz + r2.xyz;
  r5.xyz = float3(0.959999979,0.959999979,0.959999979) * r12.xyz;
  r5.xyz = r0.xyw * float3(0.0399999991,0.0399999991,0.0399999991) + r5.xyz;
  r2.xyz = r5.xyz + r2.xyz;
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r5.xyz = r12.xyz * r5.xyz;
  r0.xyw = r0.xyw * r4.xyz + r5.xyz;
  r0.xyw = r10.xyz * r3.xyz + r0.xyw;
  r0.xyz = r0.zzz ? r2.xyz : r0.xyw;
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