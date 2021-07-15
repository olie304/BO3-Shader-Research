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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.x = mad(permuteStride, 20, (int)vThreadGroupID.x);
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
  r1.z = sqrt(r0.z);
  r2.zw = renderTargetSize.zw * r9.xy;
  r17.xyzw = gSSAOTexture.Gather(samplerLinearClamp_s, r2.zw).xyzw;
  r18.xyzw = gSSAODepthTexture.Gather(samplerLinearClamp_s, r2.zw).xyzw;
  r2.zw = float2(0.5,0.5) * r9.xy;
  r2.zw = frac(r2.zw);
  r9.xy = float2(1,1) + -r2.wz;
  r19.y = r9.y * r9.x;
  r19.xz = r9.xy * r2.zw;
  r19.w = r2.z * r2.w;
  r1.w = dot(r17.xyzw, r19.xyzw);
  r18.xyzw = r18.xyzw + -r9.wwww;
  r2.z = min(abs(r18.z), abs(r18.w));
  r2.z = min(abs(r18.y), r2.z);
  r2.z = min(abs(r18.x), r2.z);
  r2.w = max(abs(r18.z), abs(r18.w));
  r2.w = max(abs(r18.y), r2.w);
  r2.w = max(abs(r18.x), r2.w);
  r15.yzw = cmp(r2.zzz == abs(r18.yzw));
  r2.z = r15.y ? r17.y : r17.x;
  r2.z = r15.z ? r17.z : r2.z;
  r2.z = r15.w ? r17.w : r2.z;
  r5.w = 0.00999999978 * r9.w;
  r2.w = cmp(r5.w < r2.w);
  r1.w = r2.w ? r2.z : r1.w;
  r2.z = r4.z * r1.w;
  r2.w = 1 + -r2.y;
  r2.w = 5 * r2.w;
  r9.xyw = -globalProbeConstants.data[0].xyz + r10.xyz;
  r17.x = globalProbeConstants.data[0].w * r9.x;
  r17.yz = globalProbeConstants.data[1].xy * r9.yw;
  r9.xyw = saturate(float3(0.5,0.5,0.5) + r17.xyz);
  r17.xy = globalProbeConstants.data[1].zw * r9.xy;
  r17.z = globalProbeConstants.data[2].x * r9.w;
  r9.xyw = globalProbeConstants.data[2].yzw + r17.xyz;
  r15.yzw = cmp(float3(0,0,0) < r11.xyz);
  r17.xyz = r15.yzw ? float3(0,0,0) : float3(0.5,0.5,0.5);
  r17.w = 0;
  r15.yzw = r17.wwx + r9.xyw;
  r15.yzw = gProbeXArray.SampleLevel(samplerLinearClamp_s, r15.yzw, 0).xyz;
  r18.xyz = r11.xyz * r11.xyz;
  r18.xyz = sunConstants.globalProbeExposure * r18.xyz;
  r19.xyz = r17.wwy + r9.xyw;
  r19.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r19.xyz, 0).xyz;
  r19.xyz = r19.xyz * r18.yyy;
  r15.yzw = r15.yzw * r18.xxx + r19.xyz;
  r9.xyw = r17.wwz + r9.xyw;
  r9.xyw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r9.xyw, 0).xyz;
  r9.xyw = r9.xyw * r18.zzz + r15.yzw;
  r11.w = 0;
  r15.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, 6).xyz;
  r9.xyw = r15.yzw * r9.xyw;
  r5.w = dot(r9.xyw, float3(0.212599993,0.715200007,0.0722000003));
  r16.w = 0;
  r15.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r16.xyzw, r2.w).xyz;
  r2.w = sunConstants.globalProbeExposure + -r5.w;
  r2.w = r2.y * r2.w + r5.w;
  r15.yzw = r15.yzw * r2.www;
  r2.w = r4.z * r1.w + r2.x;
  r2.w = log2(abs(r2.w));
  r2.w = r2.w * r1.z;
  r2.w = exp2(r2.w);
  r1.w = r4.z * r1.w + r2.w;
  r1.w = saturate(-1 + r1.w);
  r9.xyw = r9.xyw * r2.zzz;
  r17.xyz = r0.www ? r9.xyw : 0;
  r2.yz = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r2.yz = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r2.yz, 0).xy;
  r15.yzw = r15.yzw * r1.www;
  r18.xyz = r15.yzw * r2.yyy;
  r2.yzw = r15.yzw * r2.zzz;
  r1.w = sqrt(r1.z);
  r1.w = r1.w * 0.5 + 0.5;
  r1.w = r1.w * r1.w;
  r4.z = 0.5 * r1.w;
  r1.w = -r1.w * 0.5 + 1;
  r5.w = r2.x * r1.w + r4.z;
  r1.w = r5.w * r1.w;
  r4.z = r5.w * r4.z;
  r5.w = (uint)renderTargetSize.x;
  r5.w = (int)r5.w + 7;
  r5.w = (uint)r5.w >> 3;
  r0.x = mad((int)r0.y, (int)r5.w, (int)r0.x);
  r0.x = (uint)r0.x << 5;
  r0.y = ~(int)r9.z;
  r19.x = -r13.x;
  r2.x = -r2.x * 0.5 + 1;
  r10.w = 1;
  r20.z = 1;
  r21.w = 1;
  r22.w = 1;
  r23.w = 1;
  r19.z = r13.x;
  r24.w = 1;
  r19.yw = r14.xx;
  r13.y = r19.w;
  r14.y = r19.x;
  r14.z = r13.x;
  r25.x = r14.x;
  r25.y = r19.x;
  r25.z = r13.x;
  r26.w = 1;
  r27.x = r14.x;
  r27.y = r19.x;
  r27.z = r13.x;
  r28.x = r14.x;
  r28.y = r19.x;
  r28.z = r13.x;
  r15.yzw = r9.xyw;
  r29.xyz = r17.xyz;
  r30.xyz = r18.xyz;
  r31.xyz = r2.yzw;
  r5.w = enableDitheredShadow;
  r6.w = 0;
  while (true) {
    r7.w = cmp((uint)r6.w >= numLights);
    if (r7.w != 0) break;
    r7.w = (uint)r6.w >> 5;
    r7.w = (int)r0.x + (int)r7.w;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r7.w, r7.w, l(0), t26.xxxx
  r7.w = samplerLinear[]..swiz;
    r32.xyz = r15.yzw;
    r33.xyz = r29.xyz;
    r34.xyz = r30.xyz;
    r35.xyz = r31.xyz;
    r8.w = r5.w;
    r11.w = r7.w;
    while (true) {
      if (r11.w == 0) break;
      r12.w = firstbitlow((uint)r11.w);
      r13.z = 1 << (int)r12.w;
      r13.z = ~(int)r13.z;
      r11.w = (int)r11.w & (int)r13.z;
      r12.w = (int)r6.w + (int)r12.w;
      r12.w = (int)r12.w * 15;
      if (3 == 0) r13.z = 0; else if (3+24 < 32) {       r13.z = (uint)lightConstantsCB[r12.w].data[1].w << (32-(3 + 24)); r13.z = (uint)r13.z >> (32-3);      } else r13.z = (uint)lightConstantsCB[r12.w].data[1].w >> 24;
      r13.w = cmp((int)r13.z == 2);
      if (r13.w != 0) {
        if (3 == 0) r13.w = 0; else if (3+27 < 32) {         r13.w = (uint)lightConstantsCB[r12.w].data[1].w << (32-(3 + 27)); r13.w = (uint)r13.w >> (32-3);        } else r13.w = (uint)lightConstantsCB[r12.w].data[1].w >> 27;
        r36.xy = lightConstantsCB[r12.w].data[3].zw + -r10.xy;
        r36.z = lightConstantsCB[r12.w].data[4].x + -r10.z;
        r14.w = dot(r36.xyz, r36.xyz);
        r14.w = rsqrt(r14.w);
        r37.xyz = r36.xyz * r14.www;
        r16.w = lightConstantsCB[r12.w].data[1].z * r0.z;
        r16.w = 0.25 * r16.w;
        r17.w = dot(r11.xyz, r37.xyz);
        r18.w = saturate(r17.w);
        r20.w = r0.w ? abs(r17.w) : r18.w;
        r25.w = cmp(0 < r20.w);
        if (r25.w != 0) {
          r37.xyz = lightConstantsCB[r12.w].data[7].yzw;
          r37.w = lightConstantsCB[r12.w].data[8].x;
          r25.w = dot(r37.xyzw, r10.xyzw);
          r27.w = cmp(r25.w < 1);
          if (r27.w != 0) {
            r38.xyz = float3(1,1,1);
            r27.w = 0;
          } else {
            r39.xyz = lightConstantsCB[r12.w].data[0].xyz + -r10.xyz;
            r28.w = lightConstantsCB[r12.w].data[3].x * lightConstantsCB[r12.w].data[3].x;
            r29.w = dot(r39.xyz, r39.xyz);
            r28.w = r28.w / r29.w;
            r28.w = min(1, r28.w);
            r39.xy = saturate(r25.ww * lightConstantsCB[r12.w].data[2].xz + lightConstantsCB[r12.w].data[2].yw);
            r39.zw = r39.xy * r39.xy;
            r39.xy = r39.xy * float2(-2,-2) + float2(3,3);
            r39.xy = r39.zw * r39.xy;
            r28.w = r39.x * r28.w;
            r28.w = r28.w * r39.y;
            r39.xyz = lightConstantsCB[r12.w].data[4].yzw;
            r39.w = lightConstantsCB[r12.w].data[5].x;
            r39.x = dot(r39.xyzw, r10.xyzw);
            r40.xyz = lightConstantsCB[r12.w].data[5].yzw;
            r40.w = lightConstantsCB[r12.w].data[6].x;
            r39.y = dot(r40.xyzw, r10.xyzw);
            r20.xy = r39.xy / r25.ww;
            r25.w = cmp(lightConstantsCB[r12.w].data[10].w < 0.00048828125);
            if (r25.w != 0) {
              r39.xy = saturate(abs(r20.xy) * lightConstantsCB[r12.w].data[12].xy + lightConstantsCB[r12.w].data[12].zw);
              r39.zw = r39.xy * r39.xy;
              r39.xy = r39.xy * float2(-2,-2) + float2(3,3);
              r39.xy = r39.zw * r39.xy;
              r25.w = r39.x * r39.y;
            } else {
              r39.xyzw = saturate(lightConstantsCB[r12.w].data[11].xyzw * abs(r20.yyxx));
              r39.xyzw = log2(r39.xyzw);
              r39.xyzw = lightConstantsCB[r12.w].data[12].zzzz * r39.xyzw;
              r39.xyzw = exp2(r39.xyzw);
              r39.xy = r39.xy + r39.zw;
              r39.xy = log2(r39.xy);
              r39.xy = lightConstantsCB[r12.w].data[12].ww * r39.xy;
              r39.xy = exp2(r39.xy);
              r29.w = lightConstantsCB[r12.w].data[12].x * r39.x;
              r30.w = lightConstantsCB[r12.w].data[12].y * r39.y + -1;
              r29.w = lightConstantsCB[r12.w].data[12].y * r39.y + -r29.w;
              r29.w = saturate(r30.w / r29.w);
              r30.w = r29.w * r29.w;
              r29.w = r29.w * -2 + 3;
              r25.w = r30.w * r29.w;
            }
            r27.w = r28.w * r25.w;
            r25.w = 255 & (int)lightConstantsCB[r12.w].data[14].w;
            if (r25.w != 0) {
              r28.w = dot(lightConstantsCB[r12.w].data[13].xyz, r20.xyz);
              r39.x = lightConstantsCB[r12.w].data[13].w;
              r39.yz = lightConstantsCB[r12.w].data[14].xy;
              r20.x = dot(r39.xyz, r20.xyz);
              r39.x = frac(r28.w);
              r39.y = frac(r20.x);
              r20.x = (int)r25.w + -1;
              r39.z = (uint)r20.x;
              r38.xyz = gCookieArray.SampleLevel(samplerLinear_s, r39.xyz, 0).xyz;
            } else {
              r38.xyz = float3(1,1,1);
            }
          }
          r39.x = lightConstantsCB[r12.w].data[0].w;
          r39.yz = lightConstantsCB[r12.w].data[1].xy;
          r38.xyz = r39.xyz * r38.xyz;
          r20.x = cmp(0 < r27.w);
          if (r20.x != 0) {
            r13.w = cmp((int)r13.w != 1);
            if (r13.w != 0) {
              r13.w = abs(r17.w) * -0.200000003 + 0.400000006;
              r20.x = cmp(r17.w < 0);
              r20.x = r0.w ? r20.x : 0;
              r13.w = r20.x ? -r13.w : r13.w;
              r21.xyz = r11.xyz * r13.www + r10.xyz;
              r39.xyz = lightConstantsCB[r12.w].data[6].yzw;
              r39.w = lightConstantsCB[r12.w].data[7].x;
              r13.w = dot(r39.xyzw, r21.xyzw);
              r20.x = dot(r37.xyzw, r21.xyzw);
              r20.y = cmp(r20.x >= r13.w);
              if (r20.y != 0) {
                r37.xyz = lightConstantsCB[r12.w].data[4].yzw;
                r37.w = lightConstantsCB[r12.w].data[5].x;
                r37.x = dot(r37.xyzw, r21.xyzw);
                r39.xyz = lightConstantsCB[r12.w].data[5].yzw;
                r39.w = lightConstantsCB[r12.w].data[6].x;
                r37.y = dot(r39.xyzw, r21.xyzw);
                r21.xy = r37.xy / r20.xx;
                r21.xy = saturate(r21.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                r37.x = r21.x * lightConstantsCB[r12.w].data[8].y + lightConstantsCB[r12.w].data[8].z;
                r37.y = r21.y * lightConstantsCB[r12.w].data[8].w + lightConstantsCB[r12.w].data[9].x;
                r13.w = r13.w / r20.x;
                r13.w = max(6.10351563e-05, r13.w);
                r20.x = 0x0000ffff & (int)lightConstantsCB[r12.w].data[1].w;
                if (r8.w != 0) {
                  r21.z = (uint)r20.x;
                  r20.y = 0;
                  r25.w = 0;
                  while (true) {
                    r28.w = cmp((int)r25.w >= 8);
                    if (r28.w != 0) break;
                    r39.x = dot(icb[r25.w+0].yx, r19.xy);
                    r39.y = dot(icb[r25.w+0].yx, r19.yz);
                    r21.xy = r39.xy * lightConstantsCB[r12.w].data[3].yy + r37.xy;
                    r21.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r13.w).x;
                    r20.y = r21.x * 0.125 + r20.y;
                    r25.w = (int)r25.w + 1;
                  }
                } else {
                  r37.z = (uint)r20.x;
                  r20.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r37.xyz, r13.w).x;
                }
                r13.w = r20.y * r20.y;
                r13.w = r13.w * r20.y;
              } else {
                r13.w = 1;
              }
            } else {
              r13.w = 1;
            }
            r13.w = r27.w * r13.w;
            r20.x = cmp(0 < r13.w);
            if (r20.x != 0) {
              if (4 == 0) r20.x = 0; else if (4+16 < 32) {               r20.x = (uint)lightConstantsCB[r12.w].data[1].w << (32-(4 + 16)); r20.x = (uint)r20.x >> (32-4);              } else r20.x = (uint)lightConstantsCB[r12.w].data[1].w >> 16;
              r21.x = cmp(0 < (uint)r20.x);
              r21.x = r21.x ? r9.z : 0;
              if (r21.x != 0) {
                r20.x = (int)r20.x + numLights;
                r20.x = mad((int)r20.x, 15, -15);
                r21.x = abs(r17.w) * -0.200000003 + 0.400000006;
                r21.y = cmp(r17.w < 0);
                r21.y = r0.w ? r21.y : 0;
                r21.x = r21.y ? -r21.x : r21.x;
                r22.xyz = r11.xyz * r21.xxx + r10.xyz;
                r37.xyz = lightConstantsCB[r20.x].data[6].yzw;
                r37.w = lightConstantsCB[r20.x].data[7].x;
                r21.x = dot(r37.xyzw, r22.xyzw);
                r37.xyz = lightConstantsCB[r20.x].data[7].yzw;
                r37.w = lightConstantsCB[r20.x].data[8].x;
                r21.y = dot(r37.xyzw, r22.xyzw);
                r21.z = cmp(r21.y < r21.x);
                if (r21.z == 0) {
                  r37.xyz = lightConstantsCB[r20.x].data[4].yzw;
                  r37.w = lightConstantsCB[r20.x].data[5].x;
                  r37.x = dot(r37.xyzw, r22.xyzw);
                  r39.xyz = lightConstantsCB[r20.x].data[5].yzw;
                  r39.w = lightConstantsCB[r20.x].data[6].x;
                  r37.y = dot(r39.xyzw, r22.xyzw);
                  r22.xy = r37.xy / r21.yy;
                  r22.xy = r22.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                  r37.x = lightConstantsCB[r20.x].data[9].w + r22.x;
                  r37.y = lightConstantsCB[r20.x].data[10].x + r22.y;
                  r22.xy = lightConstantsCB[r20.x].data[9].yz * r37.xy;
                  r37.xy = lightConstantsCB[r20.x].data[3].yy / lightConstantsCB[r20.x].data[8].yw;
                  r37.zw = float2(1,1) + -r37.xy;
                  r37.zw = cmp(r22.xy >= r37.zw);
                  r37.xy = cmp(r37.xy >= r22.xy);
                  r37.xy = (int2)r37.xy | (int2)r37.zw;
                  r22.z = (int)r37.y | (int)r37.x;
                  if (r22.z == 0) {
                    r22.xy = saturate(r22.xy);
                    r37.x = r22.x * lightConstantsCB[r20.x].data[8].y + lightConstantsCB[r20.x].data[8].z;
                    r37.y = r22.y * lightConstantsCB[r20.x].data[8].w + lightConstantsCB[r20.x].data[9].x;
                    r22.x = lightConstantsCB[r20.x].data[10].z * r21.y;
                    r21.x = lightConstantsCB[r20.x].data[10].y * r21.y + r21.x;
                    r21.x = r21.x / r22.x;
                  }
                } else {
                  r22.z = -1;
                }
                r21.y = (int)r21.z | (int)r22.z;
                if (r21.y == 0) {
                  r21.x = max(6.10351563e-05, r21.x);
                  r21.y = 0x0000ffff & (int)lightConstantsCB[r20.x].data[1].w;
                  if (r8.w != 0) {
                    r22.z = (uint)r21.y;
                    r21.z = 0;
                    r25.w = 0;
                    while (true) {
                      r27.w = cmp((int)r25.w >= 8);
                      if (r27.w != 0) break;
                      r39.x = dot(icb[r25.w+0].yx, r19.xw);
                      r39.y = dot(icb[r25.w+0].xy, r13.xy);
                      r22.xy = r39.xy * lightConstantsCB[r20.x].data[3].yy + r37.xy;
                      r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r21.x).x;
                      r21.z = r22.x * 0.125 + r21.z;
                      r25.w = (int)r25.w + 1;
                    }
                  } else {
                    r37.z = (uint)r21.y;
                    r21.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r37.xyz, r21.x).x;
                  }
                  r20.x = r21.z * r21.z;
                  r20.x = r20.x * r21.z;
                } else {
                  r20.x = 1;
                }
                r13.w = r20.x * r13.w;
              } else {
                if (4 == 0) r20.x = 0; else if (4+20 < 32) {                 r20.x = (uint)lightConstantsCB[r12.w].data[1].w << (32-(4 + 20)); r20.x = (uint)r20.x >> (32-4);                } else r20.x = (uint)lightConstantsCB[r12.w].data[1].w >> 20;
                r21.x = cmp(0 < (uint)r20.x);
                r21.x = r21.x ? r0.y : 0;
                if (r21.x != 0) {
                  r20.x = (int)r20.x + numLights;
                  r20.x = mad((int)r20.x, 15, -15);
                  r21.x = abs(r17.w) * -0.200000003 + 0.400000006;
                  r21.y = cmp(r17.w < 0);
                  r21.y = r0.w ? r21.y : 0;
                  r21.x = r21.y ? -r21.x : r21.x;
                  r23.xyz = r11.xyz * r21.xxx + r10.xyz;
                  r37.xyz = lightConstantsCB[r20.x].data[6].yzw;
                  r37.w = lightConstantsCB[r20.x].data[7].x;
                  r21.x = dot(r37.xyzw, r23.xyzw);
                  r37.xyz = lightConstantsCB[r20.x].data[7].yzw;
                  r37.w = lightConstantsCB[r20.x].data[8].x;
                  r21.y = dot(r37.xyzw, r23.xyzw);
                  r22.x = cmp(r21.y < r21.x);
                  if (r22.x == 0) {
                    r37.xyz = lightConstantsCB[r20.x].data[4].yzw;
                    r37.w = lightConstantsCB[r20.x].data[5].x;
                    r37.x = dot(r37.xyzw, r23.xyzw);
                    r39.xyz = lightConstantsCB[r20.x].data[5].yzw;
                    r39.w = lightConstantsCB[r20.x].data[6].x;
                    r37.y = dot(r39.xyzw, r23.xyzw);
                    r22.yz = r37.xy / r21.yy;
                    r22.yz = r22.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                    r23.x = lightConstantsCB[r20.x].data[9].w + r22.y;
                    r23.y = lightConstantsCB[r20.x].data[10].x + r22.z;
                    r22.yz = lightConstantsCB[r20.x].data[9].yz * r23.xy;
                    r23.xy = lightConstantsCB[r20.x].data[3].yy / lightConstantsCB[r20.x].data[8].yw;
                    r37.xy = float2(1,1) + -r23.xy;
                    r37.xy = cmp(r22.yz >= r37.xy);
                    r23.xy = cmp(r23.xy >= r22.yz);
                    r23.xy = (int2)r23.xy | (int2)r37.xy;
                    r23.x = (int)r23.y | (int)r23.x;
                    if (r23.x == 0) {
                      r22.yz = saturate(r22.yz);
                      r37.x = r22.y * lightConstantsCB[r20.x].data[8].y + lightConstantsCB[r20.x].data[8].z;
                      r37.y = r22.z * lightConstantsCB[r20.x].data[8].w + lightConstantsCB[r20.x].data[9].x;
                      r22.y = lightConstantsCB[r20.x].data[10].z * r21.y;
                      r21.x = lightConstantsCB[r20.x].data[10].y * r21.y + r21.x;
                      r21.x = r21.x / r22.y;
                    }
                  } else {
                    r23.x = -1;
                  }
                  r21.y = (int)r22.x | (int)r23.x;
                  if (r21.y == 0) {
                    r21.x = max(6.10351563e-05, r21.x);
                    r21.y = 0x0000ffff & (int)lightConstantsCB[r20.x].data[1].w;
                    if (r8.w != 0) {
                      r22.z = (uint)r21.y;
                      r23.xy = float2(0,0);
                      while (true) {
                        r23.z = cmp((int)r23.y >= 8);
                        if (r23.z != 0) break;
                        r39.x = dot(icb[r23.y+0].xy, r25.xy);
                        r39.y = dot(icb[r23.y+0].yx, r25.xz);
                        r22.xy = r39.xy * lightConstantsCB[r20.x].data[3].yy + r37.xy;
                        r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r21.x).x;
                        r23.x = r22.x * 0.125 + r23.x;
                        r23.y = (int)r23.y + 1;
                      }
                    } else {
                      r37.z = (uint)r21.y;
                      r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r37.xyz, r21.x).x;
                    }
                    r20.x = r23.x * r23.x;
                    r20.x = r20.x * r23.x;
                  } else {
                    r20.x = 1;
                  }
                  r13.w = r20.x * r13.w;
                }
              }
              r20.x = -r20.w * r2.x + 1;
              r20.x = r20.x * r20.x;
              r20.x = -r20.x * 0.620000005 + 0.620000005;
              r20.x = r20.x + -r20.w;
              r20.x = r1.z * r20.x + r20.w;
              r20.x = r20.x * r13.w;
              r17.w = cmp(0 < r17.w);
              r22.xyz = r20.xxx * r38.xyz + r32.xyz;
              r36.xyz = r36.xyz * r14.www + r12.xyz;
              r14.w = dot(r36.xyz, r36.xyz);
              r14.w = rsqrt(r14.w);
              r36.xyz = r36.xyz * r14.www;
              r14.w = dot(r36.xyz, r12.xyz);
              r20.w = dot(r11.xyz, r36.xyz);
              r21.x = abs(r20.w) * r0.z + -abs(r20.w);
              r20.w = abs(r20.w) * r21.x + 1;
              r21.x = r18.w * r1.w + r4.z;
              r20.w = r20.w * r20.w;
              r20.w = r20.w * r21.x;
              r20.w = rcp(r20.w);
              r16.w = r18.w * r16.w;
              r16.w = r20.w * r16.w;
              r13.w = r16.w * r13.w;
              r36.xyz = r13.www * r38.xyz + r35.xyz;
              r14.w = saturate(1 + -r14.w);
              r16.w = r14.w * r14.w;
              r16.w = r16.w * r16.w;
              r14.w = r16.w * r14.w;
              r13.w = r14.w * r13.w;
              r37.xyz = r13.www * r38.xyz + r34.xyz;
              r38.xyz = r20.xxx * r38.xyz + r33.xyz;
              r38.xyz = r0.www ? r38.xyz : r33.xyz;
              r32.xyz = r17.www ? r22.xyz : r32.xyz;
              r33.xyz = r17.www ? r33.xyz : r38.xyz;
              r34.xyz = r17.www ? r37.xyz : r34.xyz;
              r35.xyz = r17.www ? r36.xyz : r35.xyz;
            }
          }
        }
      } else {
        r13.z = cmp((int)r13.z == 4);
        if (r13.z != 0) {
          if (3 == 0) r13.z = 0; else if (3+27 < 32) {           r13.z = (uint)lightConstantsCB[r12.w].data[1].w << (32-(3 + 27)); r13.z = (uint)r13.z >> (32-3);          } else r13.z = (uint)lightConstantsCB[r12.w].data[1].w >> 27;
          r13.w = lightConstantsCB[r12.w].data[1].z * r0.z;
          r13.w = 0.25 * r13.w;
          r14.w = cmp(0 < lightConstantsCB[r12.w].data[6].y);
          r22.xy = lightConstantsCB[r12.w].data[5].zw;
          r22.z = lightConstantsCB[r12.w].data[6].x;
          r36.xyz = -r22.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r12.w].data[0].xyz;
          r37.xyz = r36.xyz + -r10.xyz;
          r16.w = dot(r22.xyz, r16.xyz);
          r17.w = dot(r22.xyz, r37.xyz);
          r18.w = dot(r16.xyz, r37.xyz);
          r20.x = -r16.w * r16.w + lightConstantsCB[r12.w].data[6].y;
          r16.w = r16.w * r18.w + -r17.w;
          r17.w = saturate(-r17.w / lightConstantsCB[r12.w].data[6].y);
          r16.w = saturate(r16.w / r20.x);
          r18.w = r20.x / lightConstantsCB[r12.w].data[6].y;
          r18.w = 10 * r18.w;
          r18.w = min(1, r18.w);
          r16.w = r16.w + -r17.w;
          r16.w = r18.w * r16.w + r17.w;
          r37.xyz = r16.www * r22.xyz + r36.xyz;
          r22.xyz = r17.www * r22.xyz + r36.xyz;
          r22.xyz = r14.www ? r22.xyz : lightConstantsCB[r12.w].data[0].xyz;
          r36.xyz = r14.www ? r37.xyz : lightConstantsCB[r12.w].data[0].xyz;
          r36.xyz = r36.xyz + -r10.xyz;
          r22.xyz = r22.xyz + -r10.xyz;
          r14.w = dot(r36.xyz, r36.xyz);
          r14.w = rsqrt(r14.w);
          r37.xyz = r36.xyz * r14.www;
          r16.w = dot(r22.xyz, r22.xyz);
          r17.w = rsqrt(r16.w);
          r22.xyz = r22.xyz * r17.www;
          r17.w = dot(r11.xyz, r22.xyz);
          r18.w = saturate(r17.w);
          r18.w = r0.w ? abs(r17.w) : r18.w;
          r20.x = cmp(0 < r18.w);
          if (r20.x != 0) {
            r20.x = sqrt(r16.w);
            r20.w = lightConstantsCB[r12.w].data[3].x * lightConstantsCB[r12.w].data[3].x;
            r16.w = r20.w / r16.w;
            r16.w = min(1, r16.w);
            r20.xw = saturate(r20.xx * lightConstantsCB[r12.w].data[2].xz + lightConstantsCB[r12.w].data[2].yw);
            r21.xy = r20.xw * r20.xw;
            r20.xw = r20.xw * float2(-2,-2) + float2(3,3);
            r20.xw = r21.xy * r20.xw;
            r16.w = r20.x * r16.w;
            r16.w = r16.w * r20.w;
            r20.x = cmp(0 < r16.w);
            if (r20.x != 0) {
              r13.z = cmp((int)r13.z != 1);
              if (r13.z != 0) {
                r13.z = abs(r17.w) * -0.200000003 + 0.400000006;
                r20.x = cmp(r17.w < 0);
                r20.x = r0.w ? r20.x : 0;
                r13.z = r20.x ? -r13.z : r13.z;
                r22.xyz = r11.xyz * r13.zzz + r10.xyz;
                r22.xyz = -lightConstantsCB[r12.w].data[4].yzw + r22.xyz;
                r13.z = max(abs(r22.y), abs(r22.z));
                r13.z = max(abs(r22.x), r13.z);
                r13.z = lightConstantsCB[r12.w].data[5].x / r13.z;
                r13.z = lightConstantsCB[r12.w].data[5].y + r13.z;
                r20.x = dot(r22.xyz, r22.xyz);
                r20.x = rsqrt(r20.x);
                r13.z = max(6.10351563e-05, r13.z);
                r20.w = 0x0000ffff & (int)lightConstantsCB[r12.w].data[1].w;
                r38.w = (uint)r20.w;
                r20.w = 0;
                r21.x = 0;
                while (true) {
                  r21.y = cmp((int)r21.x >= 8);
                  if (r21.y != 0) break;
                  r23.y = dot(icb[r21.x+0].xy, r14.xy);
                  r23.z = dot(icb[r21.x+0].yx, r14.xz);
                  r39.yz = lightConstantsCB[r12.w].data[3].yy * r23.yz;
                  r39.x = r39.y * r15.x;
                  r39.w = r39.y * r3.x;
                  r38.xyz = r22.xyz * r20.xxx + r39.xzw;
                  r21.y = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r38.xyzw, r13.z).x;
                  r20.w = r21.y * 0.125 + r20.w;
                  r21.x = (int)r21.x + 1;
                }
              } else {
                r20.w = 1;
              }
              r13.z = r20.w * r16.w;
              r16.w = cmp(0 < r13.z);
              if (r16.w != 0) {
                if (4 == 0) r16.w = 0; else if (4+16 < 32) {                 r16.w = (uint)lightConstantsCB[r12.w].data[1].w << (32-(4 + 16)); r16.w = (uint)r16.w >> (32-4);                } else r16.w = (uint)lightConstantsCB[r12.w].data[1].w >> 16;
                r20.x = cmp(0 < (uint)r16.w);
                r20.x = r20.x ? r9.z : 0;
                if (r20.x != 0) {
                  r16.w = (int)r16.w + numLights;
                  r16.w = mad((int)r16.w, 15, -15);
                  r20.x = abs(r17.w) * -0.200000003 + 0.400000006;
                  r21.x = cmp(r17.w < 0);
                  r21.x = r0.w ? r21.x : 0;
                  r20.x = r21.x ? -r20.x : r20.x;
                  r24.xyz = r11.xyz * r20.xxx + r10.xyz;
                  r38.xyz = lightConstantsCB[r16.w].data[6].yzw;
                  r38.w = lightConstantsCB[r16.w].data[7].x;
                  r20.x = dot(r38.xyzw, r24.xyzw);
                  r38.xyz = lightConstantsCB[r16.w].data[7].yzw;
                  r38.w = lightConstantsCB[r16.w].data[8].x;
                  r21.x = dot(r38.xyzw, r24.xyzw);
                  r21.y = cmp(r21.x < r20.x);
                  if (r21.y == 0) {
                    r38.xyz = lightConstantsCB[r16.w].data[4].yzw;
                    r38.w = lightConstantsCB[r16.w].data[5].x;
                    r22.x = dot(r38.xyzw, r24.xyzw);
                    r38.xyz = lightConstantsCB[r16.w].data[5].yzw;
                    r38.w = lightConstantsCB[r16.w].data[6].x;
                    r22.y = dot(r38.xyzw, r24.xyzw);
                    r22.xy = r22.xy / r21.xx;
                    r22.xy = r22.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r24.x = lightConstantsCB[r16.w].data[9].w + r22.x;
                    r24.y = lightConstantsCB[r16.w].data[10].x + r22.y;
                    r22.xy = lightConstantsCB[r16.w].data[9].yz * r24.xy;
                    r23.yz = lightConstantsCB[r16.w].data[3].yy / lightConstantsCB[r16.w].data[8].yw;
                    r24.xy = float2(1,1) + -r23.yz;
                    r24.xy = cmp(r22.xy >= r24.xy);
                    r23.yz = cmp(r23.yz >= r22.xy);
                    r23.yz = (int2)r23.yz | (int2)r24.xy;
                    r22.z = (int)r23.z | (int)r23.y;
                    if (r22.z == 0) {
                      r22.xy = saturate(r22.xy);
                      r24.x = r22.x * lightConstantsCB[r16.w].data[8].y + lightConstantsCB[r16.w].data[8].z;
                      r24.y = r22.y * lightConstantsCB[r16.w].data[8].w + lightConstantsCB[r16.w].data[9].x;
                      r22.x = lightConstantsCB[r16.w].data[10].z * r21.x;
                      r20.x = lightConstantsCB[r16.w].data[10].y * r21.x + r20.x;
                      r20.x = r20.x / r22.x;
                    }
                  } else {
                    r22.z = -1;
                  }
                  r21.x = (int)r21.y | (int)r22.z;
                  if (r21.x == 0) {
                    r20.x = max(6.10351563e-05, r20.x);
                    r21.x = 0x0000ffff & (int)lightConstantsCB[r16.w].data[1].w;
                    if (r8.w != 0) {
                      r22.z = (uint)r21.x;
                      r21.y = 0;
                      r23.y = 0;
                      while (true) {
                        r23.z = cmp((int)r23.y >= 8);
                        if (r23.z != 0) break;
                        r38.x = dot(icb[r23.y+0].xy, r27.xy);
                        r38.y = dot(icb[r23.y+0].yx, r27.xz);
                        r22.xy = r38.xy * lightConstantsCB[r16.w].data[3].yy + r24.xy;
                        r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r20.x).x;
                        r21.y = r22.x * 0.125 + r21.y;
                        r23.y = (int)r23.y + 1;
                      }
                    } else {
                      r24.z = (uint)r21.x;
                      r21.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r20.x).x;
                    }
                    r16.w = r21.y * r21.y;
                    r16.w = r16.w * r21.y;
                  } else {
                    r16.w = 1;
                  }
                  r13.z = r16.w * r13.z;
                } else {
                  if (4 == 0) r16.w = 0; else if (4+20 < 32) {                   r16.w = (uint)lightConstantsCB[r12.w].data[1].w << (32-(4 + 20)); r16.w = (uint)r16.w >> (32-4);                  } else r16.w = (uint)lightConstantsCB[r12.w].data[1].w >> 20;
                  r20.x = cmp(0 < (uint)r16.w);
                  r20.x = r20.x ? r0.y : 0;
                  if (r20.x != 0) {
                    r16.w = (int)r16.w + numLights;
                    r16.w = mad((int)r16.w, 15, -15);
                    r20.x = abs(r17.w) * -0.200000003 + 0.400000006;
                    r21.x = cmp(r17.w < 0);
                    r21.x = r0.w ? r21.x : 0;
                    r20.x = r21.x ? -r20.x : r20.x;
                    r26.xyz = r11.xyz * r20.xxx + r10.xyz;
                    r38.xyz = lightConstantsCB[r16.w].data[6].yzw;
                    r38.w = lightConstantsCB[r16.w].data[7].x;
                    r20.x = dot(r38.xyzw, r26.xyzw);
                    r38.xyz = lightConstantsCB[r16.w].data[7].yzw;
                    r38.w = lightConstantsCB[r16.w].data[8].x;
                    r21.x = dot(r38.xyzw, r26.xyzw);
                    r22.x = cmp(r21.x < r20.x);
                    if (r22.x == 0) {
                      r38.xyz = lightConstantsCB[r16.w].data[4].yzw;
                      r38.w = lightConstantsCB[r16.w].data[5].x;
                      r24.x = dot(r38.xyzw, r26.xyzw);
                      r38.xyz = lightConstantsCB[r16.w].data[5].yzw;
                      r38.w = lightConstantsCB[r16.w].data[6].x;
                      r24.y = dot(r38.xyzw, r26.xyzw);
                      r22.yz = r24.xy / r21.xx;
                      r22.yz = r22.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                      r24.x = lightConstantsCB[r16.w].data[9].w + r22.y;
                      r24.y = lightConstantsCB[r16.w].data[10].x + r22.z;
                      r22.yz = lightConstantsCB[r16.w].data[9].yz * r24.xy;
                      r23.yz = lightConstantsCB[r16.w].data[3].yy / lightConstantsCB[r16.w].data[8].yw;
                      r24.xy = float2(1,1) + -r23.yz;
                      r24.xy = cmp(r22.yz >= r24.xy);
                      r23.yz = cmp(r23.yz >= r22.yz);
                      r23.yz = (int2)r23.yz | (int2)r24.xy;
                      r23.y = (int)r23.z | (int)r23.y;
                      if (r23.y == 0) {
                        r22.yz = saturate(r22.yz);
                        r24.x = r22.y * lightConstantsCB[r16.w].data[8].y + lightConstantsCB[r16.w].data[8].z;
                        r24.y = r22.z * lightConstantsCB[r16.w].data[8].w + lightConstantsCB[r16.w].data[9].x;
                        r22.y = lightConstantsCB[r16.w].data[10].z * r21.x;
                        r20.x = lightConstantsCB[r16.w].data[10].y * r21.x + r20.x;
                        r20.x = r20.x / r22.y;
                      }
                    } else {
                      r23.y = -1;
                    }
                    r21.x = (int)r22.x | (int)r23.y;
                    if (r21.x == 0) {
                      r20.x = max(6.10351563e-05, r20.x);
                      r21.x = 0x0000ffff & (int)lightConstantsCB[r16.w].data[1].w;
                      if (r8.w != 0) {
                        r22.z = (uint)r21.x;
                        r23.yz = float2(0,0);
                        while (true) {
                          r25.w = cmp((int)r23.z >= 8);
                          if (r25.w != 0) break;
                          r26.x = dot(icb[r23.z+0].xy, r28.xy);
                          r26.y = dot(icb[r23.z+0].yx, r28.xz);
                          r22.xy = r26.xy * lightConstantsCB[r16.w].data[3].yy + r24.xy;
                          r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r20.x).x;
                          r23.y = r22.x * 0.125 + r23.y;
                          r23.z = (int)r23.z + 1;
                        }
                      } else {
                        r24.z = (uint)r21.x;
                        r23.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r20.x).x;
                      }
                      r16.w = r23.y * r23.y;
                      r16.w = r16.w * r23.y;
                    } else {
                      r16.w = 1;
                    }
                    r13.z = r16.w * r13.z;
                  }
                }
                r16.w = -r18.w * r2.x + 1;
                r16.w = r16.w * r16.w;
                r16.w = -r16.w * 0.620000005 + 0.620000005;
                r16.w = r16.w + -r18.w;
                r16.w = r1.z * r16.w + r18.w;
                r16.w = r16.w * r13.z;
                r22.x = lightConstantsCB[r12.w].data[0].w;
                r22.yz = lightConstantsCB[r12.w].data[1].xy;
                r12.w = cmp(0 < r17.w);
                r24.xyz = r16.www * r22.xyz + r32.xyz;
                r17.w = saturate(dot(r11.xyz, r37.xyz));
                r26.xyz = r36.xyz * r14.www + r12.xyz;
                r14.w = dot(r26.xyz, r26.xyz);
                r14.w = rsqrt(r14.w);
                r26.xyz = r26.xyz * r14.www;
                r14.w = dot(r26.xyz, r12.xyz);
                r18.w = dot(r11.xyz, r26.xyz);
                r20.x = abs(r18.w) * r0.z + -abs(r18.w);
                r18.w = abs(r18.w) * r20.x + 1;
                r20.x = r17.w * r1.w + r4.z;
                r18.w = r18.w * r18.w;
                r18.w = r18.w * r20.x;
                r18.w = rcp(r18.w);
                r13.w = r17.w * r13.w;
                r13.w = r18.w * r13.w;
                r13.z = r13.w * r13.z;
                r26.xyz = r13.zzz * r22.xyz + r35.xyz;
                r13.w = saturate(1 + -r14.w);
                r14.w = r13.w * r13.w;
                r14.w = r14.w * r14.w;
                r13.w = r14.w * r13.w;
                r13.z = r13.z * r13.w;
                r36.xyz = r13.zzz * r22.xyz + r34.xyz;
                r22.xyz = r16.www * r22.xyz + r33.xyz;
                r22.xyz = r0.www ? r22.xyz : r33.xyz;
                r32.xyz = r12.www ? r24.xyz : r32.xyz;
                r33.xyz = r12.www ? r33.xyz : r22.xyz;
                r34.xyz = r12.www ? r36.xyz : r34.xyz;
                r35.xyz = r12.www ? r26.xyz : r35.xyz;
              }
            }
          }
        }
      }
    }
    r15.yzw = r32.xyz;
    r29.xyz = r33.xyz;
    r30.xyz = r34.xyz;
    r31.xyz = r35.xyz;
    r6.w = (int)r6.w + 32;
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
  r0.xyz = r15.yzw * r3.yzw;
  r0.xyz = r29.xyz * r2.xyz + r0.xyz;
  r4.xyz = float3(0.959999979,0.959999979,0.959999979) * r30.xyz;
  r4.xyz = r31.xyz * float3(0.0399999991,0.0399999991,0.0399999991) + r4.xyz;
  r0.xyz = r4.xyz + r0.xyz;
  r4.xyz = float3(1,1,1) + -r2.xyz;
  r4.xyz = r30.xyz * r4.xyz;
  r2.xyz = r31.xyz * r2.xyz + r4.xyz;
  r2.xyz = r15.yzw * r3.yzw + r2.xyz;
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