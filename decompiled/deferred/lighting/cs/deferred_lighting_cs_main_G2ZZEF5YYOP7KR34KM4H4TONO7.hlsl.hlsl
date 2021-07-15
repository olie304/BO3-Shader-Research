// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:23:22 2021

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
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_structured u2, 1792
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23;
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
  r0.x = mad(permuteStride, 54, (int)vThreadGroupID.x);
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
  r3.xyzw = GBufferSpecularColorAndOcclusion.Load(r1.xyw).xyzw;
  r4.xy = (uint2)r1.xy;
  r4.zw = float2(0.5,0.5) + r4.xy;
  r5.xy = renderTargetSize.zw * r4.zw;
  r5.x = gSSAOTexture.SampleLevel(samplerLinearClamp_s, r5.xy, 0).x;
  r3.z = r5.x * r3.z;
  if (showAO != 0) {
    r5.x = 0.75 * r3.z;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xyyy, r5.xxxx
    return;
  } else {
    r5.x = enableAO ? r3.z : 1;
  }
  r3.z = cmp(r2.z >= 0.5);
  r5.y = GBufferDepth.Load(r1.xyw).x;
  r6.xyz = GBufferDiffuseColor.Load(r1.xyw).xyz;
  r7.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r8.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r9.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r10.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyz, int3(0, 0, 0)).xyw;
  r11.x = cmp(r5.y >= 0.984375);
  r1.z = 1.01587307 * r5.y;
  r1.w = r5.y * 64 + -63;
  r1.z = r11.x ? r1.w : r1.z;
  r1.z = max(9.99999994e-09, r1.z);
  r11.y = rcp(r1.z);
  r1.zw = r11.xy ? r0.ww : 0;
  r4.zw = -subpixelOffset.xy + r4.zw;
  r4.zw = renderTargetSize.zw * r4.zw;
  r4.zw = r4.zw * float2(2,-2) + float2(-1,1);
  r11.x = inverseProjectionMatrix._m00 * r4.z;
  r11.y = inverseProjectionMatrix._m11 * r4.w;
  r11.z = 1;
  r5.yzw = r11.xyz * r1.www;
  r11.xyz = inverseViewMatrix._m10_m11_m12 * r5.zzz;
  r11.xyz = r5.yyy * inverseViewMatrix._m00_m01_m02 + r11.xyz;
  r11.xyz = r5.www * inverseViewMatrix._m20_m21_m22 + r11.xyz;
  r0.w = r2.w * 3 + 0.5;
  r0.w = (uint)r0.w;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r2.xy = float2(0.850000024,0.850000024) * r2.xy;
  r1.w = dot(r2.xy, r2.xy);
  r12.zw = float2(2,1) + -r1.ww;
  r1.w = sqrt(r12.z);
  r12.xy = r2.xy * r1.ww;
  r13.xyzw = (int4)r0.wwww & int4(2,1,2,1);
  r13.xyzw = r13.zwxy ? float4(-1,-1,1.40129846e-45,1.40129846e-45) : float4(1,1,0,0);
  r0.w = (int)r13.w ^ (int)r13.z;
  r13.z = r0.w ? -1 : 1;
  r2.xyw = float3(-1,0,1) * r13.xyz;
  r5.yzw = float3(1,-2,1) * r13.xyz;
  r12.xyz = float3(0.408248305,0.707106769,0.577350259) * r12.xyw;
  r2.xyw = r12.yyy * r2.xyw;
  r2.xyw = r5.yzw * r12.xxx + r2.xyw;
  r12.xyz = r13.xyz * r12.zzz + r2.xyw;
  r0.w = r3.z ? -0.5 : -0.00146627566;
  r0.w = r2.z + r0.w;
  r2.y = saturate(2.00982332 * r0.w);
  r0.w = dot(-r11.xyz, -r11.xyz);
  r0.w = rsqrt(r0.w);
  r5.yzw = -r11.xyz * r0.www;
  r0.w = dot(r4.xy, float2(0.0671105608,0.00583714992));
  r0.w = frac(r0.w);
  r0.w = 52.9829178 * r0.w;
  r0.w = frac(r0.w);
  r0.w = r0.w * 6.28318548 + gameTick.w;
  sincos(r0.w, r4.x, r13.x);
  r2.x = saturate(dot(r12.xyz, r5.yzw));
  r0.w = dot(-r5.yzw, r12.xyz);
  r0.w = r0.w + r0.w;
  r14.xyz = r12.xyz * -r0.www + -r5.yzw;
  r0.w = 17 * r2.y;
  r0.w = exp2(r0.w);
  r0.w = 2 + r0.w;
  r0.w = 2 / r0.w;
  r1.w = sqrt(r0.w);
  r2.zw = float2(0.5,0.5) * renderTargetSize.xy;
  r2.zw = (uint2)r2.zw;
  r2.zw = cmp((int2)r1.xy == (int2)r2.zw);
  r2.z = r2.w ? r2.z : 0;
  r2.w = 1 + -r2.y;
  r2.w = 5 * r2.w;
  r4.yzw = -globalProbeConstants.data[0].xyz + r11.xyz;
  r15.x = globalProbeConstants.data[0].w * r4.y;
  r15.yz = globalProbeConstants.data[1].xy * r4.zw;
  r4.yzw = saturate(float3(0.5,0.5,0.5) + r15.xyz);
  r15.xy = globalProbeConstants.data[1].zw * r4.yz;
  r15.z = globalProbeConstants.data[2].x * r4.w;
  r4.yzw = globalProbeConstants.data[2].yzw + r15.xyz;
  r13.yzw = cmp(float3(0,0,0) < r12.xyz);
  r15.xyz = r13.yzw ? float3(0,0,0) : float3(0.5,0.5,0.5);
  r15.w = 0;
  r13.yzw = r15.wwx + r4.yzw;
  r13.yzw = gProbeXArray.SampleLevel(samplerLinearClamp_s, r13.yzw, 0).xyz;
  r16.xyz = r12.xyz * r12.xyz;
  r16.xyz = sunConstants.globalProbeExposure * r16.xyz;
  r17.xyz = r15.wwy + r4.yzw;
  r17.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r17.xyz, 0).xyz;
  r17.xyz = r17.xyz * r16.yyy;
  r13.yzw = r13.yzw * r16.xxx + r17.xyz;
  r4.yzw = r15.wwz + r4.yzw;
  r4.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r4.yzw, 0).xyz;
  r4.yzw = r4.yzw * r16.zzz + r13.yzw;
  r12.w = 0;
  r13.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r12.xyzw, 6).xyz;
  r4.yzw = r13.yzw * r4.yzw;
  r3.z = dot(r4.yzw, float3(0.212599993,0.715200007,0.0722000003));
  r14.w = 0;
  r13.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r14.xyzw, r2.w).xyz;
  r2.w = sunConstants.globalProbeExposure + -r3.z;
  r2.w = r2.y * r2.w + r3.z;
  r13.yzw = r13.yzw * r2.www;
  r2.w = r2.x + r5.x;
  r2.w = log2(abs(r2.w));
  r2.w = r2.w * r1.w;
  r2.w = exp2(r2.w);
  r2.w = r2.w + r5.x;
  r2.w = saturate(-1 + r2.w);
  r4.yzw = r4.yzw * r5.xxx;
  r15.xy = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r15.xy = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r15.xy, 0).xy;
  r13.yzw = r13.yzw * r2.www;
  r15.xzw = r13.yzw * r15.xxx;
  r13.yzw = r13.yzw * r15.yyy;
  r2.y = sqrt(r1.w);
  r2.y = r2.y * 0.5 + 0.5;
  r2.y = r2.y * r2.y;
  r2.w = 0.5 * r2.y;
  r2.y = -r2.y * 0.5 + 1;
  r3.z = r2.x * r2.y + r2.w;
  r2.yw = r3.zz * r2.yw;
  r0.x = (uint)r0.x >> 24;
  r0.x = (int)r0.x * 15;
  if (3 == 0) r3.z = 0; else if (3+24 < 32) {   r3.z = (uint)lightConstantsCB[r0.x].data[1].w << (32-(3 + 24)); r3.z = (uint)r3.z >> (32-3);  } else r3.z = (uint)lightConstantsCB[r0.x].data[1].w >> 24;
  switch (r3.z) {
    case 4 :    if (r2.z != 0) {
      r16.yzw = lightConstantsCB[r0.x].data[0].xyz + eyeOffset.xyz;
      r16.x = 2;
      GBufferDiffuseColor[viewID].112 = u2.xyzw;
    }
    r5.x = cmp(0 < lightConstantsCB[r0.x].data[6].y);
    r16.xy = lightConstantsCB[r0.x].data[5].zw;
    r16.z = lightConstantsCB[r0.x].data[6].x;
    r17.xyz = -r16.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r0.x].data[0].xyz;
    r18.xyz = r17.xyz + -r11.xyz;
    r6.w = dot(r16.xyz, r18.xyz);
    r7.w = saturate(-r6.w / lightConstantsCB[r0.x].data[6].y);
    r19.xyz = r7.www * r16.xyz + r17.xyz;
    r19.xyz = r5.xxx ? r19.xyz : lightConstantsCB[r0.x].data[0].xyz;
    r19.xyz = r19.xyz + -r11.xyz;
    r8.w = dot(r19.xyz, r19.xyz);
    r9.w = rsqrt(r8.w);
    r19.xyz = r19.xyz * r9.www;
    r9.w = dot(r12.xyz, r19.xyz);
    r10.w = saturate(r9.w);
    r12.w = cmp(0 < r10.w);
    if (r12.w != 0) {
      r12.w = sqrt(r8.w);
      r14.w = lightConstantsCB[r0.x].data[3].x * lightConstantsCB[r0.x].data[3].x;
      r8.w = r14.w / r8.w;
      r8.w = min(1, r8.w);
      r19.xy = saturate(r12.ww * lightConstantsCB[r0.x].data[2].xz + lightConstantsCB[r0.x].data[2].yw);
      r19.zw = r19.xy * r19.xy;
      r19.xy = r19.xy * float2(-2,-2) + float2(3,3);
      r19.xy = r19.zw * r19.xy;
      r8.w = r19.x * r8.w;
      r8.w = r8.w * r19.y;
      r12.w = cmp(0 < r8.w);
      if (r12.w != 0) {
        if (3 == 0) r12.w = 0; else if (3+27 < 32) {         r12.w = (uint)lightConstantsCB[r0.x].data[1].w << (32-(3 + 27)); r12.w = (uint)r12.w >> (32-3);        } else r12.w = (uint)lightConstantsCB[r0.x].data[1].w >> 27;
        if (r2.z != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r14.w, cb2[52].x, l(112), u2.xxxx
        r14.w = samplerLinear[]..swiz;
          r14.w = (int)r14.w | 4;
          GBufferDiffuseColor[viewID].112 = u2.x;
          GBufferDiffuseColor[viewID].128 = u2.x;
        }
        r12.w = cmp((int)r12.w != 1);
        if (r12.w != 0) {
          r19.xy = (uint2)r1.yx;
          r12.w = dot(r19.xy, float2(0.0671105608,0.00583714992));
          r12.w = frac(r12.w);
          r12.w = 52.9829178 * r12.w;
          r12.w = frac(r12.w);
          r12.w = r12.w * 6.28318548 + gameTick.w;
          sincos(r12.w, r19.x, r20.x);
          r12.w = abs(r9.w) * -0.200000003 + 0.400000006;
          r19.yzw = r12.xyz * r12.www + r11.xyz;
          r19.yzw = -lightConstantsCB[r0.x].data[4].yzw + r19.yzw;
          r12.w = max(abs(r19.z), abs(r19.w));
          r12.w = max(abs(r19.y), r12.w);
          r12.w = lightConstantsCB[r0.x].data[5].x / r12.w;
          r12.w = lightConstantsCB[r0.x].data[5].y + r12.w;
          r14.w = dot(r19.yzw, r19.yzw);
          r14.w = rsqrt(r14.w);
          r12.w = max(6.10351563e-05, r12.w);
          r15.y = 0x0000ffff & (int)lightConstantsCB[r0.x].data[1].w;
          r21.x = -r4.x;
          r22.w = (uint)r15.y;
          r21.y = r13.x;
          r21.z = r4.x;
          r15.y = 0;
          r16.w = 0;
          while (true) {
            r17.w = cmp((int)r16.w >= 8);
            if (r17.w != 0) break;
            r20.y = dot(icb[r16.w+0].yx, r21.xy);
            r20.z = dot(icb[r16.w+0].yx, r21.yz);
            r23.yz = lightConstantsCB[r0.x].data[3].yy * r20.yz;
            r23.x = r23.y * r20.x;
            r23.w = r23.y * r19.x;
            r22.xyz = r19.yzw * r14.www + r23.xzw;
            r17.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyzw, r12.w).x;
            r15.y = r17.w * 0.125 + r15.y;
            r16.w = (int)r16.w + 1;
          }
        } else {
          r15.y = 1;
        }
        r8.w = r15.y * r8.w;
        r12.w = cmp(0 < r8.w);
        if (r12.w != 0) {
          r12.w = lightConstantsCB[r0.x].data[1].z * r0.w;
          r12.w = 0.25 * r12.w;
          r14.w = dot(r16.xyz, r14.xyz);
          r14.x = dot(r14.xyz, r18.xyz);
          r14.y = -r14.w * r14.w + lightConstantsCB[r0.x].data[6].y;
          r6.w = r14.w * r14.x + -r6.w;
          r6.w = saturate(r6.w / r14.y);
          r14.x = r14.y / lightConstantsCB[r0.x].data[6].y;
          r14.x = 10 * r14.x;
          r14.x = min(1, r14.x);
          r6.w = r6.w + -r7.w;
          r6.w = r14.x * r6.w + r7.w;
          r14.xyz = r6.www * r16.xyz + r17.xyz;
          r14.xyz = r5.xxx ? r14.xyz : lightConstantsCB[r0.x].data[0].xyz;
          r14.xyz = r14.xyz + -r11.xyz;
          r5.x = dot(r14.xyz, r14.xyz);
          r5.x = rsqrt(r5.x);
          r16.xyz = r14.xyz * r5.xxx;
          if (4 == 0) r6.w = 0; else if (4+16 < 32) {           r6.w = (uint)lightConstantsCB[r0.x].data[1].w << (32-(4 + 16)); r6.w = (uint)r6.w >> (32-4);          } else r6.w = (uint)lightConstantsCB[r0.x].data[1].w >> 16;
          r7.w = cmp(0 < (uint)r6.w);
          r7.w = r7.w ? r1.z : 0;
          if (r7.w != 0) {
            r6.w = (int)r6.w + numLights;
            r6.w = mad((int)r6.w, 15, -15);
            r7.w = abs(r9.w) * -0.200000003 + 0.400000006;
            r17.xyz = r12.xyz * r7.www + r11.xyz;
            r18.xyz = lightConstantsCB[r6.w].data[6].yzw;
            r18.w = lightConstantsCB[r6.w].data[7].x;
            r17.w = 1;
            r7.w = dot(r18.xyzw, r17.xyzw);
            r18.xyz = lightConstantsCB[r6.w].data[7].yzw;
            r18.w = lightConstantsCB[r6.w].data[8].x;
            r14.w = dot(r18.xyzw, r17.xyzw);
            r15.y = cmp(r14.w < r7.w);
            if (r15.y == 0) {
              r18.xyz = lightConstantsCB[r6.w].data[4].yzw;
              r18.w = lightConstantsCB[r6.w].data[5].x;
              r18.x = dot(r18.xyzw, r17.xyzw);
              r19.xyz = lightConstantsCB[r6.w].data[5].yzw;
              r19.w = lightConstantsCB[r6.w].data[6].x;
              r18.y = dot(r19.xyzw, r17.xyzw);
              r17.xy = r18.xy / r14.ww;
              r17.xy = r17.xy * float2(0.5,-0.5) + float2(0.5,0.5);
              r18.x = lightConstantsCB[r6.w].data[9].w + r17.x;
              r18.y = lightConstantsCB[r6.w].data[10].x + r17.y;
              r17.xy = lightConstantsCB[r6.w].data[9].yz * r18.xy;
              r17.zw = lightConstantsCB[r6.w].data[3].yy / lightConstantsCB[r6.w].data[8].yw;
              r18.xy = float2(1,1) + -r17.zw;
              r18.xy = cmp(r17.xy >= r18.xy);
              r17.zw = cmp(r17.zw >= r17.xy);
              r17.zw = (int2)r17.zw | (int2)r18.xy;
              r16.w = (int)r17.w | (int)r17.z;
              if (r16.w == 0) {
                r17.xy = saturate(r17.xy);
                r18.x = r17.x * lightConstantsCB[r6.w].data[8].y + lightConstantsCB[r6.w].data[8].z;
                r18.y = r17.y * lightConstantsCB[r6.w].data[8].w + lightConstantsCB[r6.w].data[9].x;
                r17.x = lightConstantsCB[r6.w].data[10].z * r14.w;
                r7.w = lightConstantsCB[r6.w].data[10].y * r14.w + r7.w;
                r7.w = r7.w / r17.x;
              }
            } else {
              r16.w = -1;
            }
            r14.w = (int)r15.y | (int)r16.w;
            if (r14.w == 0) {
              r7.w = max(6.10351563e-05, r7.w);
              r14.w = 0x0000ffff & (int)lightConstantsCB[r6.w].data[1].w;
              if (enableDitheredShadow != 0) {
                r17.x = -r4.x;
                r19.z = (uint)r14.w;
                r17.y = r13.x;
                r17.z = r4.x;
                r15.y = 0;
                r16.w = 0;
                while (true) {
                  r17.w = cmp((int)r16.w >= 8);
                  if (r17.w != 0) break;
                  r20.x = dot(icb[r16.w+0].yx, r17.xy);
                  r20.y = dot(icb[r16.w+0].yx, r17.yz);
                  r19.xy = r20.xy * lightConstantsCB[r6.w].data[3].yy + r18.xy;
                  r17.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r7.w).x;
                  r15.y = r17.w * 0.125 + r15.y;
                  r16.w = (int)r16.w + 1;
                }
              } else {
                r18.z = (uint)r14.w;
                r15.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r7.w).x;
              }
              r6.w = r15.y * r15.y;
              r6.w = r6.w * r15.y;
            } else {
              r6.w = 1;
            }
            r8.w = r8.w * r6.w;
          } else {
            if (4 == 0) r6.w = 0; else if (4+20 < 32) {             r6.w = (uint)lightConstantsCB[r0.x].data[1].w << (32-(4 + 20)); r6.w = (uint)r6.w >> (32-4);            } else r6.w = (uint)lightConstantsCB[r0.x].data[1].w >> 20;
            r7.w = cmp(0 < (uint)r6.w);
            r14.w = ~(int)r1.z;
            r7.w = r7.w ? r14.w : 0;
            if (r7.w != 0) {
              r6.w = (int)r6.w + numLights;
              r6.w = mad((int)r6.w, 15, -15);
              r7.w = abs(r9.w) * -0.200000003 + 0.400000006;
              r17.xyz = r12.xyz * r7.www + r11.xyz;
              r18.xyz = lightConstantsCB[r6.w].data[6].yzw;
              r18.w = lightConstantsCB[r6.w].data[7].x;
              r17.w = 1;
              r7.w = dot(r18.xyzw, r17.xyzw);
              r18.xyz = lightConstantsCB[r6.w].data[7].yzw;
              r18.w = lightConstantsCB[r6.w].data[8].x;
              r14.w = dot(r18.xyzw, r17.xyzw);
              r15.y = cmp(r14.w < r7.w);
              if (r15.y == 0) {
                r18.xyz = lightConstantsCB[r6.w].data[4].yzw;
                r18.w = lightConstantsCB[r6.w].data[5].x;
                r18.x = dot(r18.xyzw, r17.xyzw);
                r19.xyz = lightConstantsCB[r6.w].data[5].yzw;
                r19.w = lightConstantsCB[r6.w].data[6].x;
                r18.y = dot(r19.xyzw, r17.xyzw);
                r17.xy = r18.xy / r14.ww;
                r17.xy = r17.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r18.x = lightConstantsCB[r6.w].data[9].w + r17.x;
                r18.y = lightConstantsCB[r6.w].data[10].x + r17.y;
                r17.xy = lightConstantsCB[r6.w].data[9].yz * r18.xy;
                r17.zw = lightConstantsCB[r6.w].data[3].yy / lightConstantsCB[r6.w].data[8].yw;
                r18.xy = float2(1,1) + -r17.zw;
                r18.xy = cmp(r17.xy >= r18.xy);
                r17.zw = cmp(r17.zw >= r17.xy);
                r17.zw = (int2)r17.zw | (int2)r18.xy;
                r16.w = (int)r17.w | (int)r17.z;
                if (r16.w == 0) {
                  r17.xy = saturate(r17.xy);
                  r18.x = r17.x * lightConstantsCB[r6.w].data[8].y + lightConstantsCB[r6.w].data[8].z;
                  r18.y = r17.y * lightConstantsCB[r6.w].data[8].w + lightConstantsCB[r6.w].data[9].x;
                  r17.x = lightConstantsCB[r6.w].data[10].z * r14.w;
                  r7.w = lightConstantsCB[r6.w].data[10].y * r14.w + r7.w;
                  r7.w = r7.w / r17.x;
                }
              } else {
                r16.w = -1;
              }
              r14.w = (int)r15.y | (int)r16.w;
              if (r14.w == 0) {
                r7.w = max(6.10351563e-05, r7.w);
                r14.w = 0x0000ffff & (int)lightConstantsCB[r6.w].data[1].w;
                if (enableDitheredShadow != 0) {
                  r17.x = -r4.x;
                  r19.z = (uint)r14.w;
                  r17.y = r13.x;
                  r17.z = r4.x;
                  r15.y = 0;
                  r16.w = 0;
                  while (true) {
                    r17.w = cmp((int)r16.w >= 8);
                    if (r17.w != 0) break;
                    r20.x = dot(icb[r16.w+0].yx, r17.xy);
                    r20.y = dot(icb[r16.w+0].yx, r17.yz);
                    r19.xy = r20.xy * lightConstantsCB[r6.w].data[3].yy + r18.xy;
                    r17.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r7.w).x;
                    r15.y = r17.w * 0.125 + r15.y;
                    r16.w = (int)r16.w + 1;
                  }
                } else {
                  r18.z = (uint)r14.w;
                  r15.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r7.w).x;
                }
                r6.w = r15.y * r15.y;
                r6.w = r6.w * r15.y;
              } else {
                r6.w = 1;
              }
              r8.w = r8.w * r6.w;
            }
          }
          r6.w = -r2.x * 0.5 + 1;
          r6.w = -r10.w * r6.w + 1;
          r6.w = r6.w * r6.w;
          r6.w = -r6.w * 0.620000005 + 0.620000005;
          r6.w = r6.w + -r10.w;
          r6.w = r1.w * r6.w + r10.w;
          r6.w = r6.w * r8.w;
          r17.x = lightConstantsCB[r0.x].data[0].w;
          r17.yz = lightConstantsCB[r0.x].data[1].xy;
          r7.w = cmp(0 < r9.w);
          r18.xyz = r6.www * r17.xyz + r4.yzw;
          r6.w = saturate(dot(r12.xyz, r16.xyz));
          r14.xyz = r14.xyz * r5.xxx + r5.yzw;
          r5.x = dot(r14.xyz, r14.xyz);
          r5.x = rsqrt(r5.x);
          r14.xyz = r14.xyz * r5.xxx;
          r5.x = dot(r14.xyz, r5.yzw);
          r9.w = dot(r12.xyz, r14.xyz);
          r10.w = abs(r9.w) * r0.w + -abs(r9.w);
          r9.w = abs(r9.w) * r10.w + 1;
          r10.w = r6.w * r2.y + r2.w;
          r9.w = r9.w * r9.w;
          r9.w = r9.w * r10.w;
          r9.w = rcp(r9.w);
          r6.w = r6.w * r12.w;
          r6.w = r9.w * r6.w;
          r6.w = r6.w * r8.w;
          r14.xyz = r6.www * r17.xyz + r13.yzw;
          r5.x = saturate(1 + -r5.x);
          r9.w = r5.x * r5.x;
          r9.w = r9.w * r9.w;
          r5.x = r9.w * r5.x;
          r5.x = r6.w * r5.x;
          r16.xyz = r5.xxx * r17.xyz + r15.xzw;
          r4.yzw = r7.www ? r18.xyz : r4.yzw;
          r15.xzw = r7.www ? r16.xyz : r15.xzw;
          r13.yzw = r7.www ? r14.xyz : r13.yzw;
          if (r2.z != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r5.x, cb2[52].x, l(112), u2.xxxx
          r5.x = samplerLinear[]..swiz;
            r5.x = (int)r5.x | 8;
            GBufferDiffuseColor[viewID].112 = u2.x;
            GBufferDiffuseColor[viewID].132 = u2.x;
          }
          r3.z = 0x00010101;
        } else {
          r3.z = 257;
        }
      } else {
        r3.z = 1;
      }
    } else {
      r3.z = 1;
    }
    break;
    case 2 :    if (r2.z != 0) {
      r14.yzw = lightConstantsCB[r0.x].data[0].xyz + eyeOffset.xyz;
      r14.x = 2;
      GBufferDiffuseColor[viewID].112 = u2.xyzw;
    }
    r14.xy = lightConstantsCB[r0.x].data[3].zw + -r11.xy;
    r14.z = lightConstantsCB[r0.x].data[4].x + -r11.z;
    r5.x = dot(r14.xyz, r14.xyz);
    r5.x = rsqrt(r5.x);
    r16.xyz = r14.xyz * r5.xxx;
    r6.w = dot(r12.xyz, r16.xyz);
    r7.w = saturate(r6.w);
    r8.w = cmp(0 < r7.w);
    if (r8.w != 0) {
      r16.xyz = lightConstantsCB[r0.x].data[7].yzw;
      r16.w = lightConstantsCB[r0.x].data[8].x;
      r11.w = 1;
      r8.w = dot(r16.xyzw, r11.xyzw);
      r9.w = cmp(r8.w < 1);
      if (r9.w != 0) {
        r17.xyz = float3(1,1,1);
        r9.w = 0;
      } else {
        r18.xyz = lightConstantsCB[r0.x].data[0].xyz + -r11.xyz;
        r10.w = lightConstantsCB[r0.x].data[3].x * lightConstantsCB[r0.x].data[3].x;
        r12.w = dot(r18.xyz, r18.xyz);
        r10.w = r10.w / r12.w;
        r10.w = min(1, r10.w);
        r18.xy = saturate(r8.ww * lightConstantsCB[r0.x].data[2].xz + lightConstantsCB[r0.x].data[2].yw);
        r18.zw = r18.xy * r18.xy;
        r18.xy = r18.xy * float2(-2,-2) + float2(3,3);
        r18.xy = r18.zw * r18.xy;
        r10.w = r18.x * r10.w;
        r10.w = r10.w * r18.y;
        r18.xyz = lightConstantsCB[r0.x].data[4].yzw;
        r18.w = lightConstantsCB[r0.x].data[5].x;
        r18.x = dot(r18.xyzw, r11.xyzw);
        r19.xyz = lightConstantsCB[r0.x].data[5].yzw;
        r19.w = lightConstantsCB[r0.x].data[6].x;
        r18.y = dot(r19.xyzw, r11.xyzw);
        r18.xy = r18.xy / r8.ww;
        r8.w = cmp(lightConstantsCB[r0.x].data[10].w < 0.00048828125);
        if (r8.w != 0) {
          r19.xy = saturate(abs(r18.xy) * lightConstantsCB[r0.x].data[12].xy + lightConstantsCB[r0.x].data[12].zw);
          r19.zw = r19.xy * r19.xy;
          r19.xy = r19.xy * float2(-2,-2) + float2(3,3);
          r19.xy = r19.zw * r19.xy;
          r8.w = r19.x * r19.y;
        } else {
          r19.xyzw = saturate(lightConstantsCB[r0.x].data[11].xyzw * abs(r18.yyxx));
          r19.xyzw = log2(r19.xyzw);
          r19.xyzw = lightConstantsCB[r0.x].data[12].zzzz * r19.xyzw;
          r19.xyzw = exp2(r19.xyzw);
          r19.xy = r19.xy + r19.zw;
          r19.xy = log2(r19.xy);
          r19.xy = lightConstantsCB[r0.x].data[12].ww * r19.xy;
          r19.xy = exp2(r19.xy);
          r11.w = lightConstantsCB[r0.x].data[12].x * r19.x;
          r12.w = lightConstantsCB[r0.x].data[12].y * r19.y + -1;
          r11.w = lightConstantsCB[r0.x].data[12].y * r19.y + -r11.w;
          r11.w = saturate(r12.w / r11.w);
          r12.w = r11.w * r11.w;
          r11.w = r11.w * -2 + 3;
          r8.w = r12.w * r11.w;
        }
        r9.w = r10.w * r8.w;
        r8.w = 255 & (int)lightConstantsCB[r0.x].data[14].w;
        if (r8.w != 0) {
          r18.z = 1;
          r10.w = dot(lightConstantsCB[r0.x].data[13].xyz, r18.xyz);
          r19.x = lightConstantsCB[r0.x].data[13].w;
          r19.yz = lightConstantsCB[r0.x].data[14].xy;
          r11.w = dot(r19.xyz, r18.xyz);
          r18.x = frac(r10.w);
          r18.y = frac(r11.w);
          r8.w = (int)r8.w + -1;
          r18.z = (uint)r8.w;
          r17.xyz = gCookieArray.SampleLevel(samplerLinear_s, r18.xyz, 0).xyz;
        } else {
          r17.xyz = float3(1,1,1);
        }
      }
      r18.x = lightConstantsCB[r0.x].data[0].w;
      r18.yz = lightConstantsCB[r0.x].data[1].xy;
      r17.xyz = r18.xyz * r17.xyz;
      r8.w = cmp(0 < r9.w);
      if (r8.w != 0) {
        if (3 == 0) r8.w = 0; else if (3+27 < 32) {         r8.w = (uint)lightConstantsCB[r0.x].data[1].w << (32-(3 + 27)); r8.w = (uint)r8.w >> (32-3);        } else r8.w = (uint)lightConstantsCB[r0.x].data[1].w >> 27;
        if (r2.z != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r10.w, cb2[52].x, l(112), u2.xxxx
        r10.w = samplerLinear[]..swiz;
          r10.w = (int)r10.w | 4;
          GBufferDiffuseColor[viewID].112 = u2.x;
          GBufferDiffuseColor[viewID].128 = u2.x;
        }
        r8.w = cmp((int)r8.w != 1);
        if (r8.w != 0) {
          r8.w = abs(r6.w) * -0.200000003 + 0.400000006;
          r18.xyz = r12.xyz * r8.www + r11.xyz;
          r19.xyz = lightConstantsCB[r0.x].data[6].yzw;
          r19.w = lightConstantsCB[r0.x].data[7].x;
          r18.w = 1;
          r8.w = dot(r19.xyzw, r18.xyzw);
          r10.w = dot(r16.xyzw, r18.xyzw);
          r11.w = cmp(r10.w >= r8.w);
          if (r11.w != 0) {
            r16.xyz = lightConstantsCB[r0.x].data[4].yzw;
            r16.w = lightConstantsCB[r0.x].data[5].x;
            r16.x = dot(r16.xyzw, r18.xyzw);
            r19.xyz = lightConstantsCB[r0.x].data[5].yzw;
            r19.w = lightConstantsCB[r0.x].data[6].x;
            r16.y = dot(r19.xyzw, r18.xyzw);
            r16.xy = r16.xy / r10.ww;
            r16.xy = saturate(r16.xy * float2(0.5,-0.5) + float2(0.5,0.5));
            r18.x = r16.x * lightConstantsCB[r0.x].data[8].y + lightConstantsCB[r0.x].data[8].z;
            r18.y = r16.y * lightConstantsCB[r0.x].data[8].w + lightConstantsCB[r0.x].data[9].x;
            r8.w = r8.w / r10.w;
            r8.w = max(6.10351563e-05, r8.w);
            r10.w = 0x0000ffff & (int)lightConstantsCB[r0.x].data[1].w;
            if (enableDitheredShadow != 0) {
              r16.x = -r4.x;
              r19.z = (uint)r10.w;
              r16.y = r13.x;
              r16.z = r4.x;
              r11.w = 0;
              r12.w = 0;
              while (true) {
                r14.w = cmp((int)r12.w >= 8);
                if (r14.w != 0) break;
                r20.x = dot(icb[r12.w+0].yx, r16.xy);
                r20.y = dot(icb[r12.w+0].yx, r16.yz);
                r19.xy = r20.xy * lightConstantsCB[r0.x].data[3].yy + r18.xy;
                r14.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r8.w).x;
                r11.w = r14.w * 0.125 + r11.w;
                r12.w = (int)r12.w + 1;
              }
            } else {
              r18.z = (uint)r10.w;
              r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r8.w).x;
            }
            r8.w = r11.w * r11.w;
            r8.w = r8.w * r11.w;
          } else {
            r8.w = 1;
          }
        } else {
          r8.w = 1;
        }
        r8.w = r9.w * r8.w;
        r9.w = cmp(0 < r8.w);
        if (r9.w != 0) {
          r9.w = lightConstantsCB[r0.x].data[1].z * r0.w;
          r9.w = r9.w * r7.w;
          if (4 == 0) r10.w = 0; else if (4+16 < 32) {           r10.w = (uint)lightConstantsCB[r0.x].data[1].w << (32-(4 + 16)); r10.w = (uint)r10.w >> (32-4);          } else r10.w = (uint)lightConstantsCB[r0.x].data[1].w >> 16;
          r11.w = cmp(0 < (uint)r10.w);
          r11.w = r11.w ? r1.z : 0;
          if (r11.w != 0) {
            r10.w = (int)r10.w + numLights;
            r10.w = mad((int)r10.w, 15, -15);
            r11.w = abs(r6.w) * -0.200000003 + 0.400000006;
            r16.xyz = r12.xyz * r11.www + r11.xyz;
            r18.xyz = lightConstantsCB[r10.w].data[6].yzw;
            r18.w = lightConstantsCB[r10.w].data[7].x;
            r16.w = 1;
            r11.w = dot(r18.xyzw, r16.xyzw);
            r18.xyz = lightConstantsCB[r10.w].data[7].yzw;
            r18.w = lightConstantsCB[r10.w].data[8].x;
            r12.w = dot(r18.xyzw, r16.xyzw);
            r14.w = cmp(r12.w < r11.w);
            if (r14.w == 0) {
              r18.xyz = lightConstantsCB[r10.w].data[4].yzw;
              r18.w = lightConstantsCB[r10.w].data[5].x;
              r18.x = dot(r18.xyzw, r16.xyzw);
              r19.xyz = lightConstantsCB[r10.w].data[5].yzw;
              r19.w = lightConstantsCB[r10.w].data[6].x;
              r18.y = dot(r19.xyzw, r16.xyzw);
              r16.xy = r18.xy / r12.ww;
              r16.xy = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
              r18.x = lightConstantsCB[r10.w].data[9].w + r16.x;
              r18.y = lightConstantsCB[r10.w].data[10].x + r16.y;
              r16.xy = lightConstantsCB[r10.w].data[9].yz * r18.xy;
              r16.zw = lightConstantsCB[r10.w].data[3].yy / lightConstantsCB[r10.w].data[8].yw;
              r18.xy = float2(1,1) + -r16.zw;
              r18.xy = cmp(r16.xy >= r18.xy);
              r16.zw = cmp(r16.zw >= r16.xy);
              r16.zw = (int2)r16.zw | (int2)r18.xy;
              r15.y = (int)r16.w | (int)r16.z;
              if (r15.y == 0) {
                r16.xy = saturate(r16.xy);
                r18.x = r16.x * lightConstantsCB[r10.w].data[8].y + lightConstantsCB[r10.w].data[8].z;
                r18.y = r16.y * lightConstantsCB[r10.w].data[8].w + lightConstantsCB[r10.w].data[9].x;
                r16.x = lightConstantsCB[r10.w].data[10].z * r12.w;
                r11.w = lightConstantsCB[r10.w].data[10].y * r12.w + r11.w;
                r11.w = r11.w / r16.x;
              }
            } else {
              r15.y = -1;
            }
            r12.w = (int)r14.w | (int)r15.y;
            if (r12.w == 0) {
              r11.w = max(6.10351563e-05, r11.w);
              r12.w = 0x0000ffff & (int)lightConstantsCB[r10.w].data[1].w;
              if (enableDitheredShadow != 0) {
                r16.x = -r4.x;
                r19.z = (uint)r12.w;
                r16.y = r13.x;
                r16.z = r4.x;
                r14.w = 0;
                r15.y = 0;
                while (true) {
                  r16.w = cmp((int)r15.y >= 8);
                  if (r16.w != 0) break;
                  r20.x = dot(icb[r15.y+0].yx, r16.xy);
                  r20.y = dot(icb[r15.y+0].yx, r16.yz);
                  r19.xy = r20.xy * lightConstantsCB[r10.w].data[3].yy + r18.xy;
                  r16.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r11.w).x;
                  r14.w = r16.w * 0.125 + r14.w;
                  r15.y = (int)r15.y + 1;
                }
              } else {
                r18.z = (uint)r12.w;
                r14.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r11.w).x;
              }
              r10.w = r14.w * r14.w;
              r10.w = r10.w * r14.w;
            } else {
              r10.w = 1;
            }
            r8.w = r10.w * r8.w;
          } else {
            if (4 == 0) r0.x = 0; else if (4+20 < 32) {             r0.x = (uint)lightConstantsCB[r0.x].data[1].w << (32-(4 + 20)); r0.x = (uint)r0.x >> (32-4);            } else r0.x = (uint)lightConstantsCB[r0.x].data[1].w >> 20;
            r10.w = cmp(0 < (uint)r0.x);
            r1.z = ~(int)r1.z;
            r1.z = r10.w ? r1.z : 0;
            if (r1.z != 0) {
              r0.x = (int)r0.x + numLights;
              r0.x = mad((int)r0.x, 15, -15);
              r1.z = abs(r6.w) * -0.200000003 + 0.400000006;
              r16.xyz = r12.xyz * r1.zzz + r11.xyz;
              r18.xyz = lightConstantsCB[r0.x].data[6].yzw;
              r18.w = lightConstantsCB[r0.x].data[7].x;
              r16.w = 1;
              r1.z = dot(r18.xyzw, r16.xyzw);
              r18.xyz = lightConstantsCB[r0.x].data[7].yzw;
              r18.w = lightConstantsCB[r0.x].data[8].x;
              r10.w = dot(r18.xyzw, r16.xyzw);
              r11.w = cmp(r10.w < r1.z);
              if (r11.w == 0) {
                r18.xyz = lightConstantsCB[r0.x].data[4].yzw;
                r18.w = lightConstantsCB[r0.x].data[5].x;
                r18.x = dot(r18.xyzw, r16.xyzw);
                r19.xyz = lightConstantsCB[r0.x].data[5].yzw;
                r19.w = lightConstantsCB[r0.x].data[6].x;
                r18.y = dot(r19.xyzw, r16.xyzw);
                r16.xy = r18.xy / r10.ww;
                r16.xy = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r18.x = lightConstantsCB[r0.x].data[9].w + r16.x;
                r18.y = lightConstantsCB[r0.x].data[10].x + r16.y;
                r16.xy = lightConstantsCB[r0.x].data[9].yz * r18.xy;
                r16.zw = lightConstantsCB[r0.x].data[3].yy / lightConstantsCB[r0.x].data[8].yw;
                r18.xy = float2(1,1) + -r16.zw;
                r18.xy = cmp(r16.xy >= r18.xy);
                r16.zw = cmp(r16.zw >= r16.xy);
                r16.zw = (int2)r16.zw | (int2)r18.xy;
                r12.w = (int)r16.w | (int)r16.z;
                if (r12.w == 0) {
                  r16.xy = saturate(r16.xy);
                  r18.x = r16.x * lightConstantsCB[r0.x].data[8].y + lightConstantsCB[r0.x].data[8].z;
                  r18.y = r16.y * lightConstantsCB[r0.x].data[8].w + lightConstantsCB[r0.x].data[9].x;
                  r14.w = lightConstantsCB[r0.x].data[10].z * r10.w;
                  r1.z = lightConstantsCB[r0.x].data[10].y * r10.w + r1.z;
                  r1.z = r1.z / r14.w;
                }
              } else {
                r12.w = -1;
              }
              r10.w = (int)r11.w | (int)r12.w;
              if (r10.w == 0) {
                r1.z = max(6.10351563e-05, r1.z);
                r10.w = 0x0000ffff & (int)lightConstantsCB[r0.x].data[1].w;
                if (enableDitheredShadow != 0) {
                  r16.x = -r4.x;
                  r19.z = (uint)r10.w;
                  r16.y = r13.x;
                  r16.z = r4.x;
                  r4.x = 0;
                  r11.w = 0;
                  while (true) {
                    r12.w = cmp((int)r11.w >= 8);
                    if (r12.w != 0) break;
                    r20.x = dot(icb[r11.w+0].yx, r16.xy);
                    r20.y = dot(icb[r11.w+0].yx, r16.yz);
                    r19.xy = r20.xy * lightConstantsCB[r0.x].data[3].yy + r18.xy;
                    r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r1.z).x;
                    r4.x = r12.w * 0.125 + r4.x;
                    r11.w = (int)r11.w + 1;
                  }
                } else {
                  r18.z = (uint)r10.w;
                  r4.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r1.z).x;
                }
                r0.x = r4.x * r4.x;
                r0.x = r0.x * r4.x;
              } else {
                r0.x = 1;
              }
              r8.w = r8.w * r0.x;
            }
          }
          r0.x = -r2.x * 0.5 + 1;
          r0.x = -r7.w * r0.x + 1;
          r0.x = r0.x * r0.x;
          r0.x = -r0.x * 0.620000005 + 0.620000005;
          r0.x = r0.x + -r7.w;
          r0.x = r1.w * r0.x + r7.w;
          r0.x = r0.x * r8.w;
          r1.z = cmp(0 < r6.w);
          r16.xyz = r0.xxx * r17.xyz + r4.yzw;
          r14.xyz = r14.xyz * r5.xxx + r5.yzw;
          r0.x = dot(r14.xyz, r14.xyz);
          r0.x = rsqrt(r0.x);
          r14.xyz = r14.xyz * r0.xxx;
          r0.x = dot(r14.xyz, r5.yzw);
          r1.w = dot(r12.xyz, r14.xyz);
          r0.w = abs(r1.w) * r0.w + -abs(r1.w);
          r0.w = abs(r1.w) * r0.w + 1;
          r1.w = r7.w * r2.y + r2.w;
          r0.w = r0.w * r0.w;
          r0.w = r0.w * r1.w;
          r0.w = rcp(r0.w);
          r0.w = r0.w * r9.w;
          r0.w = r8.w * r0.w;
          r0.w = 0.25 * r0.w;
          r2.xyw = r0.www * r17.xyz + r13.yzw;
          r0.x = saturate(1 + -r0.x);
          r1.w = r0.x * r0.x;
          r1.w = r1.w * r1.w;
          r0.x = r1.w * r0.x;
          r0.x = r0.w * r0.x;
          r5.xyz = r0.xxx * r17.xyz + r15.xzw;
          r4.yzw = r1.zzz ? r16.xyz : r4.yzw;
          r15.xzw = r1.zzz ? r5.xyz : r15.xzw;
          r13.yzw = r1.zzz ? r2.xyw : r13.yzw;
          if (r2.z != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r0.x, cb2[52].x, l(112), u2.xxxx
          r0.x = samplerLinear[]..swiz;
            r0.x = (int)r0.x | 8;
            GBufferDiffuseColor[viewID].112 = u2.x;
            GBufferDiffuseColor[viewID].132 = u2.x;
          }
          r3.z = 0x00010101;
        } else {
          r3.z = 257;
        }
      } else {
        r3.z = 1;
      }
    } else {
      r3.z = 1;
    }
    break;
    default :
    r3.z = 0;
    break;
  }
  r5.xyz = r3.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r0.x = (uint)r5.y;
  r2.xyw = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r2.x;
  r0.w = cmp((int)r0.x == (int)r0.w);
  r1.zw = r0.ww ? r2.yw : float2(-1,0);
  r2.xyw = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r2.x;
  r0.w = cmp((int)r0.x == (int)r0.w);
  r2.xy = r0.ww ? r2.yw : float2(-1,0);
  r3.xyw = r9.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r3.x;
  r0.w = cmp((int)r0.x == (int)r0.w);
  r3.xy = r0.ww ? r3.yw : float2(-1,0);
  r7.xyz = r10.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r7.x;
  r0.x = cmp((int)r0.x == (int)r0.w);
  r0.xw = r0.xx ? r7.yz : float2(-1,0);
  r7.x = r1.z;
  r7.y = r2.x;
  r7.z = r3.x;
  r7.w = r0.x;
  r7.xyzw = r7.xyzw + -r5.xxxx;
  r7.xyzw = cmp(abs(r7.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r7.xyzw = r7.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r0.x = r7.x + r7.y;
  r0.x = r0.x + r7.z;
  r0.x = r0.x + r7.w;
  r1.z = r7.y * r2.y;
  r1.z = r7.x * r1.w + r1.z;
  r1.z = r7.z * r3.y + r1.z;
  r0.w = r7.w * r0.w + r1.z;
  r5.w = r0.w / r0.x;
  r0.x = cmp(0 >= r0.x);
  r5.yz = r0.xx ? float2(0,0) : r5.zw;
  r0.xw = (int2)r1.xy & int2(1,1);
  r0.x = cmp((int)r0.w == (int)r0.x);
  r2.xyw = r0.xxx ? r5.xyz : r5.xzy;
  r0.x = -r2.w * 0.5 + r2.x;
  r5.y = r2.w + r0.x;
  r5.z = -r2.y * 0.5 + r0.x;
  r5.x = r5.z + r2.y;
  r2.xyw = float3(1,1,1) + -r5.xyz;
  r2.xyw = r15.xzw * r2.xyw;
  r2.xyw = r13.yzw * r5.xyz + r2.xyw;
  r2.xyw = r4.yzw * r6.xyz + r2.xyw;
  r0.x = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.x != 0) {
    r0.x = dot(r11.xyz, r11.xyz);
    r0.w = rsqrt(r0.x);
    r3.xyw = r11.xyz * r0.www;
    r0.x = sqrt(r0.x);
    r0.w = cmp(0 < fogConstants.blendAmount);
    if (r0.w != 0) {
      r1.zw = r0.xx * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r1.zw = fogConstants.atmospherefogdensityatcamera.xy * r1.zw;
      r0.w = cmp(0.00999999978 < abs(r11.z));
      r4.xy = fogConstants.atmospherefogheightdensityscale.xy * r11.zz;
      r4.zw = float2(-1.44269502,-1.44269502) * r4.xy;
      r4.zw = exp2(r4.zw);
      r4.zw = float2(1,1) + -r4.zw;
      r4.xy = r4.zw / r4.xy;
      r4.xy = r4.xy * r1.zw;
      r1.zw = r0.ww ? r4.xy : r1.zw;
      r4.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.zzz;
      r4.xyz = exp2(r4.xyz);
      r5.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.www;
      r5.xyz = exp2(r5.xyz);
      r5.xyz = r5.xyz + -r4.xyz;
      r4.xyz = fogConstants.blendAmount * r5.xyz + r4.xyz;
    } else {
      r0.w = r0.x * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r0.w = fogConstants.atmospherefogdensityatcamera.x * r0.w;
      r1.z = cmp(0.00999999978 < abs(r11.z));
      r1.w = fogConstants.atmospherefogheightdensityscale.x * r11.z;
      r4.w = -1.44269502 * r1.w;
      r4.w = exp2(r4.w);
      r4.w = 1 + -r4.w;
      r1.w = r4.w / r1.w;
      r1.w = r1.w * r0.w;
      r0.w = r1.z ? r1.w : r0.w;
      r5.xyz = fogConstants.atmosphereTotalDensity.xyz * r0.www;
      r4.xyz = exp2(r5.xyz);
    }
    r4.xyz = r4.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r4.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r4.xyz);
    r0.w = dot(fogConstants.wldSunFogDir.xyz, -r3.xyw);
    r1.z = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r1.w = fogConstants.atmosphereMieSchlickK * -r0.w + 1;
    r1.w = r1.w * r1.w;
    r1.w = 12.566371 * r1.w;
    r1.z = r1.z / r1.w;
    r0.x = -fogConstants.atmospherehazebasedist + r0.x;
    r0.x = saturate(fogConstants.atmospherehazefadedist * r0.x);
    r0.x = r1.z * r0.x;
    r0.w = saturate(r0.w);
    r0.w = r0.w * r0.w + 1;
    r0.w = r0.w * 0.0596831031 + -1;
    r0.w = fogConstants.atmospheresunstrength * r0.w + 1;
    r3.xyw = fogConstants.atmosphereMieDensity.xyz * r0.xxx;
    r3.xyw = r0.www * fogConstants.atmosphereRayleighDensity.xyz + r3.xyw;
    r3.xyw = fogConstants.atmosphereInScatterIntensity * r3.xyw;
    r5.xyz = float3(1,1,1) + -r4.xyz;
    r3.xyw = r5.xyz * r3.xyw;
    r3.xyw = r2.xyw * r4.xyz + r3.xyw;
  } else {
    r0.x = fogConstants.heightFalloff * r11.z;
    r0.w = fogConstants.heightFalloff * r11.z + fogConstants.K0;
    r1.z = cmp(abs(r0.x) < 9.99999975e-05);
    r1.w = min(64, r0.w);
    r1.w = 1.44269502 * r1.w;
    r1.w = exp2(r1.w);
    r4.x = saturate(fogConstants.K0b);
    r4.y = cmp(r0.w < 0);
    r0.w = 1 + r0.w;
    r0.w = r4.y ? r1.w : r0.w;
    r0.w = -fogConstants.K0b + r0.w;
    r0.x = r1.z ? 1 : r0.x;
    r0.x = r0.w / r0.x;
    r0.x = r1.z ? r4.x : r0.x;
    r0.x = fogConstants.expMul * r0.x;
    r0.w = dot(r11.xyz, r11.xyz);
    r1.z = sqrt(r0.w);
    r0.x = r0.x * r1.z + fogConstants.expAdd;
    r0.x = exp2(r0.x);
    r0.x = min(1, r0.x);
    r0.x = 1 + -r0.x;
    r0.w = rsqrt(r0.w);
    r4.xyz = r11.xyz * r0.www;
    r0.w = dot(fogConstants.wldSunFogDir.xyz, r4.xyz);
    r0.w = saturate(fogConstants.sunFogAngles.y * r0.w + fogConstants.sunFogAngles.x);
    r4.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r4.xyzw = r0.wwww * r4.xyzw + fogConstants.sunFogColor.xyzw;
    r0.x = r4.w * r0.x;
    r4.xyz = r4.xyz + -r2.xyw;
    r3.xyw = r0.xxx * r4.xyz + r2.xyw;
  }
  r2.xyw = relHDRExposure.yyy * r3.xyw;
  r3.xyw = cmp(r2.xyw >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r2.xyw = r3.xyw ? r2.xyw : 0;
  r2.xyw = min(float3(65024,65024,64512), r2.xyw);
  r0.x = cmp(0 < permuteHighlight);
  r4.xyzw = permuteHighlight & int4(32,3,64,12);
  r1.zw = cmp((int2)r4.xz != int2(0,0));
  r3.xy = cmp((int2)r4.yw == int2(2,4));
  r1.zw = r1.zw ? r3.xy : 0;
  r4.xy = r1.zw ? float2(0.200000003,0.200000003) : 0;
  r0.w = permuteHighlight & 16;
  r1.z = cmp((int)r0.w != 0);
  r0.w = cmp((int)r0.w == 16);
  r0.w = r0.w ? r1.z : 0;
  r4.z = r0.w ? 0.200000 : 0;
  r3.xyw = r4.xyz * relHDRExposure.xxx + -r2.xyw;
  r3.xyw = r3.xyw * float3(0.5,0.5,0.5) + r2.xyw;
  r2.xyw = r0.xxx ? r3.xyw : r2.xyw;
  if (enableCountDebug != 0) {
    if (debugDrawOverlayType != 0) {
      switch (cb2[53].y) {
        case 1 :        r0.x = (int)r3.z & 1;
        break;
        case 2 :        if (1 == 0) r0.x = 0; else if (1+8 < 32) {         r0.x = (uint)r3.z << (32-(1 + 8)); r0.x = (uint)r0.x >> (32-1);        } else r0.x = (uint)r3.z >> 8;
        break;
        case 3 :        r0.x = (uint)r3.z >> 16;
        break;
        case 4 :        r0.x = 0;
        break;
        case 5 :        r0.x = 1;
        break;
        default :
        r0.x = 0;
        break;
      }
      r0.x = (uint)r0.x;
      r0.x = drawNumLighstScale * r0.x;
      r3.xyw = r0.xxx * float3(0.5,0.5,0.5) + -r2.xyw;
      r2.xyw = drawNumLightsAlpha * r3.xyw + r2.xyw;
    }
  }
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xyyy, r2.xywx
  if (r2.z != 0) {
    r1.xyz = eyeOffset.xyz + r11.xyz;
    r1.w = (int)r3.z & 1;
    GBufferDiffuseColor[viewID].92 = u2.xyzw;
    GBufferDiffuseColor[viewID].108 = u2.x;
  }
  if (enableCountDebug != 0) {
    r0.x = (int)r3.z & 1;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(0), r0.x
    InterlockedAdd(dest, value, orig_value);
    if (1 == 0) r0.w = 0; else if (1+8 < 32) {     r0.w = (uint)r3.z << (32-(1 + 8)); r0.w = (uint)r0.w >> (32-1);    } else r0.w = (uint)r3.z >> 8;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(4), r0.w
    InterlockedAdd(dest, value, orig_value);
    r1.x = (uint)r3.z >> 16;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(8), r1.x
    InterlockedAdd(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_iadd g1, l(12), l(0)
    InterlockedAdd(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_iadd g1, l(16), l(1)
    InterlockedAdd(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(0), r0.x
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(4), r0.w
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(8), r1.x
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(12), l(0)
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(16), l(1)
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    imm_atomic_iadd r1.x, g0, l(0), l(1)
    InterlockedAdd(dest, imm_value, orig_value);
    r0.x = cmp((int)r1.x == 63);
    if (r0.x != 0) {
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
        ld_raw r0.x, l(16), g1.xxxx
      r1.xz = viewID;
      r1.yw = float2(7.8472714e-44,0);
      // Needs manual fix for instruction:
        atomic_iadd u2, r1.xyxx, r0.x
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
        ld_raw r0.x, l(16), g2.xxxx
      // Needs manual fix for instruction:
        atomic_umax u2, r1.zwzz, r0.x
      InterlockedMax(dest, value, orig_value);
      r0.yz = cmp((int2)r0.yz == centerGroupIDx);
      r0.y = r0.z ? r0.y : 0;
      if (r0.y != 0) {
        GBufferDiffuseColor[viewID].20 = u2.xyzw;
        GBufferDiffuseColor[viewID].36 = u2.x;
      }
    }
  }
  return;
}