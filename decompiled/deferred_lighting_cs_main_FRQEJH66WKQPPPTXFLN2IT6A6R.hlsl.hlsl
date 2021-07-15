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

SamplerState samp0_s : register(s0);
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
Texture2DArray<float> gSunShadowmapArray : register(t13);
Texture3D<float3> gProbeXArray : register(t17);
Texture3D<float3> gProbeYArray : register(t18);
Texture3D<float3> gProbeZArray : register(t19);
Texture2DArray<float4> gCookieArray : register(t20);
StructuredBuffer<gSunShadowTree> gSunShadowTree : register(t23);
StructuredBuffer<gPermutedTilingBuffer> gPermutedTilingBuffer : register(t25);
StructuredBuffer<gDeferredCullBits> gDeferredCullBits : register(t26);
Texture2D<float> gSSAOTexture : register(t27);
Texture2DArray<float> gTransShadowmapArray : register(t31);


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
// unknown dcl_: dcl_resource_structured t23, 4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t25, 8
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t26, 4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_structured u2, 1792
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44;
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
  r0.x = mad(permuteStride, 3, (int)vThreadGroupID.x);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=8)(mixed,mixed,mixed,mixed) r0.xy, r0.x, l(0), t25.xyxx
r0.x = samp0[]..swiz;
r0.y = samp0[]..swiz;
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
  r11.zw = float2(1,1);
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
  r1.w = dot(r4.xy, float2(0.0671105608,0.00583714992));
  r1.w = frac(r1.w);
  r1.w = 52.9829178 * r1.w;
  r1.w = frac(r1.w);
  r1.w = r1.w * 6.28318548 + gameTick.w;
  sincos(r1.w, r4.x, r13.x);
  r2.zw = (uint2)r1.yx;
  r1.w = dot(r2.zw, float2(0.0671105608,0.00583714992));
  r1.w = frac(r1.w);
  r1.w = 52.9829178 * r1.w;
  r1.w = frac(r1.w);
  r1.w = r1.w * 6.28318548 + gameTick.w;
  sincos(r1.w, r14.x, r15.x);
  r2.x = saturate(dot(r12.xyz, r5.yzw));
  r1.w = dot(-r5.yzw, r12.xyz);
  r1.w = r1.w + r1.w;
  r16.xyz = r12.xyz * -r1.www + -r5.yzw;
  r1.w = 17 * r2.y;
  r1.w = exp2(r1.w);
  r1.w = 2 + r1.w;
  r1.w = 2 / r1.w;
  r2.z = sqrt(r1.w);
  r4.zw = float2(0.5,0.5) * renderTargetSize.xy;
  r4.zw = (uint2)r4.zw;
  r4.zw = cmp((int2)r1.xy == (int2)r4.zw);
  r2.w = r4.w ? r4.z : 0;
  r4.z = dot(r12.xyz, sunConstants.wldDir.xyz);
  r4.w = saturate(r4.z);
  r6.w = r3.z ? abs(r4.z) : r4.w;
  r7.w = cmp(0 >= r6.w);
  if (r7.w != 0) {
    r8.w = 0;
  }
  if (r7.w == 0) {
    r14.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * r11.yyy;
    r14.yzw = r11.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r14.yzw;
    r14.yzw = r11.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r14.yzw;
    r14.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r14.yzw;
    r7.w = -sunConstants.splitDepthOffset + r14.w;
    r7.w = -r7.w * 6.10351563e-05 + 1;
    r9.w = saturate(r7.w);
    r9.w = cmp(r7.w == r9.w);
    if (r9.w != 0) {
      r9.w = 0;
      r10.w = 0;
      while (true) {
        r13.w = cmp(r9.w >= 3);
        if (r13.w != 0) break;
        r13.w = (uint)r9.w;
        r15.yz = -sunConstants.splitPinTransform[r13.w].xy + r14.yz;
        r15.y = max(abs(r15.y), abs(r15.z));
        r10.w = sunConstants.splitPinTransform[r13.w].z * r15.y;
        r13.w = cmp(r10.w < 1);
        if (r13.w != 0) {
          break;
        }
        r9.w = 1 + r9.w;
        r10.w = 0;
      }
    } else {
      r9.w = 3;
      r10.w = 0;
    }
    r13.w = cmp(r9.w >= 3);
    if (r13.w != 0) {
      r15.yzw = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r17.xz = rcp(r15.yy);
      r17.y = -r17.z;
      r15.yzw = r14.yzy * r17.xyz + r15.zwz;
      r17.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r15.yzw = max(float3(0,0,0), r15.yzw);
      r15.yzw = min(r15.yzw, r17.xyz);
      r17.xy = sunConstants.sstLightingConstants.coordScale * r15.wz;
      r17.xy = floor(r17.xy);
      r17.y = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r17.y;
      r17.x = r17.y * sunConstants.sstLightingConstants.coordScale + r17.x;
      r17.x = (uint)r17.x;
      r17.x = (int)r17.x + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.y, r17.x, l(0), t23.xxxx
    r17.y = samp0[]..swiz;
      r17.z = (int)r17.y & 0x40000000;
      r17.w = (uint)r17.y << 2;
      if (r17.z == 0) {
        r17.z = (int)r17.y & 0x01ffffff;
        r18.x = (int)r17.z + (int)r17.x;
        r17.x = (uint)r17.y >> 25;
        r17.x = (uint)r17.x;
        r15.yzw = r17.xxx * r15.yzw;
        r15.yzw = frac(r15.yzw);
        r15.yzw = float3(128,128,128) * r15.yzw;
        r15.yzw = (uint3)r15.yzw;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
      r18.z = samp0[]..swiz;
        r17.xy = (uint2)r15.wz >> int2(6,6);
        r17.z = (int)r18.z & 0xc0000000;
        r18.w = (int)r18.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.w, l(0), t23.xxxx
      r18.w = samp0[]..swiz;
        r17.y = r17.y ? r18.z : r18.w;
        r18.w = (uint)r17.y >> 13;
        r17.x = r17.x ? r18.w : r17.y;
        r17.x = (int)r17.x & 8191;
        r19.x = (int)r17.x + (int)r18.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
      r19.z = samp0[]..swiz;
        r18.y = 0;
        r19.y = 1;
        r19.xyz = r17.zzz ? r18.xyz : r19.xyz;
        r20.yz = r17.zz ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r17.xy = (uint2)r15.wz >> (uint2)r20.yy;
        r17.xy = (int2)r17.xy & int2(1,1);
        r18.w = (int)r19.z & 0xc0000000;
        r19.w = (int)r19.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.w, r19.w, l(0), t23.xxxx
      r19.w = samp0[]..swiz;
        r17.y = r17.y ? r19.z : r19.w;
        r19.w = (uint)r17.y >> 13;
        r17.x = r17.x ? r19.w : r17.y;
        r17.x = (int)r17.x & 8191;
        r20.x = (int)r17.x + (int)r19.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.w, r20.x, l(0), t23.xxxx
      r20.w = samp0[]..swiz;
        r19.xyz = r18.www ? r19.xyz : r20.xzw;
        r17.xyz = r17.zzz ? r18.xyz : r19.xyz;
        r18.x = (int)r17.z & 0xc0000000;
        if (r18.x == 0) {
          r18.x = (int)-r17.y + 6;
          r18.xy = (uint2)r15.wz >> (uint2)r18.xx;
          r18.z = (int)r17.z | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r18.y = (((uint)r18.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r18.x = (((uint)r18.x << 0) & bitmask.x) | ((uint)r18.y & ~bitmask.x);
          r18.x = (int)r18.x * 10;
          r18.x = (uint)r18.z >> (uint)r18.x;
          r18.x = (int)r18.x & 1023;
          r18.x = (int)r17.x + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.x, l(0), t23.xxxx
        r18.w = samp0[]..swiz;
          r18.yz = (int2)r17.yy + int2(1,2);
          r17.y = (int)-r18.y + 6;
          r19.xy = (uint2)r15.wz >> (uint2)r17.yy;
          r17.y = (int)r18.w & 0xc0000000;
          r19.z = (int)r18.w | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r19.y = (((uint)r19.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r19.x = (((uint)r19.x << 0) & bitmask.x) | ((uint)r19.y & ~bitmask.x);
          r19.x = (int)r19.x * 10;
          r19.x = (uint)r19.z >> (uint)r19.x;
          r19.x = (int)r19.x & 1023;
          r19.x = (int)r18.x + (int)r19.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
        r19.z = samp0[]..swiz;
          r19.y = r18.z;
          r19.xyz = r17.yyy ? r18.xyw : r19.xyz;
          r18.y = (int)-r19.y + 6;
          r18.yz = (uint2)r15.wz >> (uint2)r18.yy;
          r19.y = (int)r19.z & 0xc0000000;
          r19.w = (int)r19.z | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r18.z = (((uint)r18.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r18.y = (((uint)r18.y << 0) & bitmask.y) | ((uint)r18.z & ~bitmask.y);
          r18.y = (int)r18.y * 10;
          r18.y = (uint)r19.w >> (uint)r18.y;
          r18.y = (int)r18.y & 1023;
          r20.x = (int)r18.y + (int)r19.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.y, r20.x, l(0), t23.xxxx
        r20.y = samp0[]..swiz;
          r18.yz = r19.yy ? r19.xz : r20.xy;
          r17.xz = r17.yy ? r18.xw : r18.yz;
        }
        r17.y = (int)r17.z & 0xc0000000;
        if (r17.y == 0) {
          if (14 == 0) r18.x = 0; else if (14+15 < 32) {           r18.x = (uint)r17.z << (32-(14 + 15)); r18.x = (uint)r18.x >> (32-14);          } else r18.x = (uint)r17.z >> 15;
          r18.x = (uint)r18.x;
          r18.yz = (int2)r17.zz & int2(32767,536870912);
          r18.y = (uint)r18.y;
          r18.xy = sunConstants.sstLightingConstants.constants.spanInInches * r18.xy;
          r18.xy = float2(6.10388815e-05,3.05185094e-05) * r18.xy;
          r18.w = (int)r15.z & 3;
          r18.w = (int)r17.x + (int)r18.w;
          r18.w = (int)r18.w + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.w, l(0), t23.xxxx
        r18.w = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r19.x = (((uint)r15.y << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r19.y = (((uint)r15.z << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r19.z = (((uint)r15.w << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r15.y = (uint)r18.w >> (uint)r19.x;
          r15.y = (int)r15.y & 255;
          r15.y = (uint)r15.y;
          r15.y = r15.y * r18.y;
          r15.y = r15.y * 0.00392156886 + r18.x;
          r15.z = (int)r19.y + 1;
          if (1 == 0) r15.w = 0; else if (1+1 < 32) {           r15.w = (uint)r15.w << (32-(1 + 1)); r15.w = (uint)r15.w >> (32-1);          } else r15.w = (uint)r15.w >> 1;
          r15.z = (int)r15.w + (int)r15.z;
          r15.z = (int)r15.z + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.z, r15.z, l(0), t23.xxxx
        r15.z = samp0[]..swiz;
          r15.z = (uint)r15.z >> (uint)r19.z;
          r15.z = (int)r15.z & 0x0000ffff;
          r15.z = (uint)r15.z;
          r15.z = r15.z * r18.y;
          r15.z = r15.z * 1.52590219e-05 + r18.x;
          r17.w = r18.z ? r15.y : r15.z;
        } else {
          r15.y = (int)r17.z & 0x80000000;
          r15.z = (int)r17.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.z, r15.z, l(0), t23.xxxx
        r15.z = samp0[]..swiz;
          r15.y = r15.y ? r15.z : 0;
          r15.z = (uint)r17.z << 2;
          r15.w = (uint)r15.y >> 16;
          r15.y = (int)r15.y & 0x0000ffff;
          r15.yw = f16tof32(r15.yw);
          r15.z = r14.y * r15.w + r15.z;
          r15.y = r14.z * r15.y + r15.z;
          r17.w = r17.y ? r15.y : r17.w;
        }
      }
      r14.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r14.w;
      r14.w = cmp(r17.w < r14.w);
      r8.w = r14.w ? 0 : 1;
    }
    if (r13.w == 0) {
      if (enableDitheredShadow == 0) {
        r13.w = (uint)r9.w;
        r15.yz = -sunConstants.splitPinTransform[r13.w].xy + r14.yz;
        r15.yz = sunConstants.splitPinTransform[r13.w].zz * r15.yz;
        r17.xy = r15.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r13.w = (int16)sunConstants.splitArrayOffset;
        r17.z = r13.w + r9.w;
        r13.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r7.w).x;
        r14.w = gTransShadowmapArray.SampleLevel(samp0_s, r17.xyz, 0).x;
        r13.w = r14.w + r13.w;
        r13.w = saturate(-1 + r13.w);
        r14.w = r13.w * r13.w;
        r8.w = r14.w * r13.w;
      }
      if (enableDitheredShadow != 0) {
        r17.x = -r4.x;
        r13.w = (uint)r9.w;
        r9.w = 1 + r9.w;
        r9.w = min(2, r9.w);
        r9.w = (uint)r9.w;
        r10.w = 1 + -r10.w;
        r10.w = 28 * r10.w;
        r10.w = (uint)r10.w;
        r15.yz = -sunConstants.splitPinTransform[r13.w].xy + r14.yz;
        r15.yz = sunConstants.splitPinTransform[r13.w].zz * r15.yz;
        r15.yz = r15.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r14.yz = -sunConstants.splitPinTransform[r9.w].xy + r14.yz;
        r14.yz = sunConstants.splitPinTransform[r9.w].zz * r14.yz;
        r14.yz = r14.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r17.y = r13.x;
        r17.z = r4.x;
        r14.w = 0;
        r15.w = 0;
        while (true) {
          r17.w = cmp((uint)r15.w >= 8);
          if (r17.w != 0) break;
          r17.w = cmp((uint)r10.w < (uint)r15.w);
          r18.xy = r17.ww ? r14.yz : r15.yz;
          r18.z = r17.w ? sunConstants.splitPinTransform[r9.w].w : sunConstants.splitPinTransform[r13.w].w;
          r17.w = r17.w ? r9.w : r13.w;
          r19.x = dot(icb[r15.w+0].yx, r17.xy);
          r19.y = dot(icb[r15.w+0].yx, r17.yz);
          r18.xy = r19.xy * r18.zz + r18.xy;
          r17.w = (int)r17.w + (int16)sunConstants.splitArrayOffset;
          r18.z = (uint)r17.w;
          r17.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r7.w).x;
          r18.x = gTransShadowmapArray.SampleLevel(samp0_s, r18.xyz, 0).x;
          r17.w = r18.x + r17.w;
          r17.w = saturate(-1 + r17.w);
          r14.w = r17.w * 0.125 + r14.w;
          r15.w = (int)r15.w + 1;
        }
        r7.w = r14.w * r14.w;
        r8.w = r7.w * r14.w;
      }
    }
  }
  r7.w = 1 + -r2.y;
  r9.w = 5 * r7.w;
  r10.w = r7.w * 5 + -2.5;
  r10.w = 0.400000006 * r10.w;
  r10.w = max(0, r10.w);
  r10.w = 100 * r10.w;
  r14.yz = -r7.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r13.w = exp2(r14.y);
  r13.w = r13.w * r2.x;
  r13.w = 9.1368103 * r13.w;
  r14.y = r9.w * r7.w;
  r14.y = -r14.y * 2.0159049 + r14.z;
  r14.y = exp2(r14.y);
  r14.y = r14.y * r2.x;
  r14.y = 9.70808983 * r14.y;
  r13.w = max(r14.y, r13.w);
  r13.w = max(1.26815999, r13.w);
  if (probeDebug != 0) {
    r14.y = (uint)renderTargetSize.x;
    r14.y = (int)r14.y + 7;
    r14.y = (uint)r14.y >> 3;
    r14.y = mad((int)r0.z, (int)r14.y, (int)r0.y);
    bitmask.y = ((~(-1 << 27)) << 5) & 0xffffffff;  r14.y = (((uint)r14.y << 5) & bitmask.y) | ((uint)16 & ~bitmask.y);
    r17.xyzw = float4(0,0,0,0);
    r18.xyzw = float4(0,0,0,0);
    r19.xyzw = float4(0,0,0,0);
    r20.xyzw = float4(0,0,0,0);
    r21.xyzw = float4(0,0,0,0);
    r22.xyzw = float4(0,0,0,0);
    r23.xyzw = float4(0,0,0,0);
    r24.xyzw = float4(0,0,0,0);
    r25.xyzw = float4(0,0,0,0);
    r26.xyzw = float4(0,0,0,0);
    r27.xyzw = float4(0,0,0,0);
    r15.yzw = float3(0,0,0);
    r14.zw = float2(0,0);
    r29.z = 0;
    r30.z = 0;
    r28.xyz = float3(0,0,0);
    while (true) {
      r28.w = cmp((uint)r28.z >= numRefProbes);
      if (r28.w != 0) break;
      r28.w = (uint)r28.z >> 5;
      r28.w = (int)r14.y + (int)r28.w;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r28.w, r28.w, l(0), t26.xxxx
    r28.w = samp0[]..swiz;
      r31.xyzw = r17.yxzw;
      r32.xyzw = r18.xyzw;
      r33.xyzw = r19.yzwx;
      r34.xyzw = r20.xyzw;
      r35.xyzw = r21.xyzw;
      r36.xyzw = r22.zwxy;
      r37.xyzw = r23.zwxy;
      r38.xyzw = r25.zwxy;
      r39.xyzw = r26.zwxy;
      r40.xyz = r15.yzw;
      r41.xy = r14.wz;
      r29.w = r28.x;
      r30.w = r29.z;
      r40.w = r30.z;
      r41.z = r28.y;
      r42.xyzw = r24.zwxy;
      r43.xyzw = r27.zwxy;
      r41.w = r28.w;
      while (true) {
        if (r41.w == 0) break;
        r44.x = firstbitlow((uint)r41.w);
        r44.y = 1 << (int)r44.x;
        r44.y = ~(int)r44.y;
        r41.w = (int)r41.w & (int)r44.y;
        r44.x = (int)r28.z + (int)r44.x;
        r44.x = (int)r44.x * 14;
        r44.yzw = -refProbeConstantsCB[r44.x].data[0].xyz + r11.xyz;
        r44.y = dot(r44.yzw, r44.yzw);
        r44.y = sqrt(r44.y);
        r44.y = cmp(probeDebugRadius >= r44.y);
        if (r44.y != 0) {
          r31.yzw = refProbeConstantsCB[r44.x].data[1].xyz;
          r31.x = refProbeConstantsCB[r44.x].data[0].w;
          r32.yzw = refProbeConstantsCB[r44.x].data[2].xyz;
          r32.x = refProbeConstantsCB[r44.x].data[1].w;
          r33.xyz = refProbeConstantsCB[r44.x].data[3].xyz;
          r33.w = refProbeConstantsCB[r44.x].data[4].z;
          r34.yz = refProbeConstantsCB[r44.x].data[4].xy;
          r34.x = refProbeConstantsCB[r44.x].data[3].w;
          r34.w = refProbeConstantsCB[r44.x].data[6].x;
          r35.yzw = refProbeConstantsCB[r44.x].data[5].xyz;
          r35.x = refProbeConstantsCB[r44.x].data[4].w;
          r36.yz = refProbeConstantsCB[r44.x].data[7].yw;
          r36.x = refProbeConstantsCB[r44.x].data[6].y;
          r36.w = refProbeConstantsCB[r44.x].data[8].x;
          r37.xyz = refProbeConstantsCB[r44.x].data[8].yzw;
          r37.w = refProbeConstantsCB[r44.x].data[9].x;
          r38.xyz = refProbeConstantsCB[r44.x].data[10].yzw;
          r38.w = refProbeConstantsCB[r44.x].data[11].x;
          r39.xyz = refProbeConstantsCB[r44.x].data[11].yzw;
          r39.w = refProbeConstantsCB[r44.x].data[12].x;
          r40.xyz = refProbeConstantsCB[r44.x].data[0].xyz;
          r44.yz = refProbeConstantsCB[r44.x].data[13].yz;
          r29.w = -1;
          r30.w = refProbeConstantsCB[r44.x].data[2].w;
          r40.w = refProbeConstantsCB[r44.x].data[5].w;
          r41.z = refProbeConstantsCB[r44.x].data[7].z;
          r42.xyz = refProbeConstantsCB[r44.x].data[9].yzw;
          r42.w = refProbeConstantsCB[r44.x].data[10].x;
          r43.xyz = refProbeConstantsCB[r44.x].data[12].yzw;
          r43.w = refProbeConstantsCB[r44.x].data[13].x;
          r41.xy = r44.yz;
          break;
        }
      }
      if (r29.w != 0) {
        r17.xyzw = r31.yxzw;
        r18.xyzw = r32.xyzw;
        r19.xyzw = r33.wxyz;
        r20.xyzw = r34.xyzw;
        r21.xyzw = r35.xyzw;
        r22.xyzw = r36.zwxy;
        r23.xyzw = r37.zwxy;
        r24.xyzw = r42.zwxy;
        r25.xyzw = r38.zwxy;
        r26.xyzw = r39.zwxy;
        r27.xyzw = r43.zwxy;
        r15.yzw = r40.xyz;
        r14.zw = r41.yx;
        r28.x = -1;
        r29.z = r30.w;
        r30.z = r40.w;
        r28.y = r41.z;
        break;
      }
      r28.z = (int)r28.z + 32;
      r17.xyzw = r31.yxzw;
      r18.xyzw = r32.xyzw;
      r19.xyzw = r33.wxyz;
      r20.xyzw = r34.xyzw;
      r21.xyzw = r35.xyzw;
      r22.xyzw = r36.zwxy;
      r23.xyzw = r37.zwxy;
      r25.xyzw = r38.zwxy;
      r26.xyzw = r39.zwxy;
      r15.yzw = r40.xyz;
      r14.zw = r41.yx;
      r28.x = r29.w;
      r29.z = r30.w;
      r30.z = r40.w;
      r28.y = r41.z;
      r24.xyzw = r42.zwxy;
      r27.xyzw = r43.zwxy;
    }
    r31.xy = r17.yw;
    r29.x = r17.z;
    r17.yz = r18.xw;
    r29.y = r18.y;
    r31.z = r18.z;
    r18.xyz = r19.yzw;
    r19.yz = r21.xy;
    r30.xy = r21.zw;
    r21.xy = r22.zw;
    r22.z = r23.z;
    r23.z = r24.z;
    r24.z = r25.z;
    r25.z = r26.z;
    r26.z = r27.z;
    r27.z = r14.w;
  } else {
    r28.x = 0;
  }
  if (r28.x != 0) {
    if (r2.w != 0) {
      r32.yzw = eyeOffset.xyz + r15.yzw;
      r32.x = 16;
      GBufferDiffuseColor[viewID].880 = u2.xyzw;
    }
    r15.yzw = -r15.yzw + r11.xyz;
    r14.y = (int)r28.y & 0x0000ffff;
    if (6 == 0) r14.w = 0; else if (6+25 < 32) {     r14.w = (uint)r28.y << (32-(6 + 25)); r14.w = (uint)r14.w >> (32-6);    } else r14.w = (uint)r28.y >> 25;
    r17.w = (int)r14.y * 6;
    r18.w = dot(refProbeAttenuationConstantsCB[r17.w].data[0].xyz, r15.yzw);
    r18.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[0].w + r18.w);
    r19.w = dot(refProbeAttenuationConstantsCB[r17.w].data[1].xyz, r15.yzw);
    r19.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[1].w + r19.w);
    r18.w = r19.w * r18.w;
    r19.w = dot(refProbeAttenuationConstantsCB[r17.w].data[2].xyz, r15.yzw);
    r19.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[2].w + r19.w);
    r18.w = r19.w * r18.w;
    r19.w = dot(refProbeAttenuationConstantsCB[r17.w].data[3].xyz, r15.yzw);
    r19.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[3].w + r19.w);
    r18.w = r19.w * r18.w;
    r19.w = dot(refProbeAttenuationConstantsCB[r17.w].data[4].xyz, r15.yzw);
    r19.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[4].w + r19.w);
    r18.w = r19.w * r18.w;
    r19.w = dot(refProbeAttenuationConstantsCB[r17.w].data[5].xyz, r15.yzw);
    r17.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[5].w + r19.w);
    r32.x = r18.w * r17.w;
    r17.w = (int)r20.w & 1;
    r32.yz = float2(0,1);
    r21.zw = r17.ww ? r32.xy : r32.zx;
    r32.x = 1;
    r17.w = r20.w;
    r33.xy = r21.zw;
    r18.w = 1;
    while (true) {
      r19.w = cmp((int)r18.w >= (int)r14.w);
      if (r19.w != 0) break;
      r19.w = (int)r14.y + (int)r18.w;
      r19.w = (int)r19.w * 6;
      r22.w = dot(refProbeAttenuationConstantsCB[r19.w].data[0].xyz, r15.yzw);
      r22.w = saturate(refProbeAttenuationConstantsCB[r19.w].data[0].w + r22.w);
      r22.w = r33.x * r22.w;
      r28.z = dot(refProbeAttenuationConstantsCB[r19.w].data[1].xyz, r15.yzw);
      r28.z = saturate(refProbeAttenuationConstantsCB[r19.w].data[1].w + r28.z);
      r22.w = r28.z * r22.w;
      r28.z = dot(refProbeAttenuationConstantsCB[r19.w].data[2].xyz, r15.yzw);
      r28.z = saturate(refProbeAttenuationConstantsCB[r19.w].data[2].w + r28.z);
      r22.w = r28.z * r22.w;
      r28.z = dot(refProbeAttenuationConstantsCB[r19.w].data[3].xyz, r15.yzw);
      r28.z = saturate(refProbeAttenuationConstantsCB[r19.w].data[3].w + r28.z);
      r22.w = r28.z * r22.w;
      r28.z = dot(refProbeAttenuationConstantsCB[r19.w].data[4].xyz, r15.yzw);
      r28.z = saturate(refProbeAttenuationConstantsCB[r19.w].data[4].w + r28.z);
      r22.w = r28.z * r22.w;
      r28.z = dot(refProbeAttenuationConstantsCB[r19.w].data[5].xyz, r15.yzw);
      r19.w = saturate(refProbeAttenuationConstantsCB[r19.w].data[5].w + r28.z);
      r33.x = r22.w * r19.w;
      r28.z = (uint)r17.w >> 2;
      if (1 == 0) r28.w = 0; else if (1+2 < 32) {       r28.w = (uint)r17.w << (32-(1 + 2)); r28.w = (uint)r28.w >> (32-1);      } else r28.w = (uint)r17.w >> 2;
      r29.w = (int)r28.z & 2;
      r30.w = max(r33.y, r33.x);
      r19.w = -r22.w * r19.w + 1;
      r19.w = r33.y * r19.w;
      r32.y = r29.w ? r19.w : r30.w;
      r33.xy = r28.ww ? r33.xy : r32.xy;
      r18.w = (int)r18.w + 1;
      r17.w = r28.z;
    }
    r33.y = saturate(r33.y);
    r32.w = r33.y * r21.x;
    r14.y = cmp(0 < r32.w);
    if (r14.y != 0) {
      if (r2.w != 0) {
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r14.y, cb2[52].x, l(880), u2.xxxx
      r14.y = samp0[]..swiz;
        r14.y = (int)r14.y | 32;
        GBufferDiffuseColor[viewID].880 = u2.x;
        GBufferDiffuseColor[viewID].896 = u2.x;
      }
      r14.y = r32.w * r21.y;
      r14.w = dot(r16.xyz, r22.xyz);
      r17.w = dot(r15.yzw, r22.xyz);
      r17.w = r17.w + -r23.w;
      r18.w = cmp(r17.w >= 0);
      r17.w = max(abs(r17.w), r10.w);
      r17.w = r18.w ? r17.w : -r17.w;
      r14.w = max(1.00000001e-07, -r14.w);
      r14.w = r17.w / r14.w;
      r14.w = min(131072, abs(r14.w));
      r17.w = dot(r16.xyz, r23.xyz);
      r18.w = dot(r15.yzw, r23.xyz);
      r18.w = r18.w + -r24.w;
      r19.w = cmp(r18.w >= 0);
      r18.w = max(abs(r18.w), r10.w);
      r18.w = r19.w ? r18.w : -r18.w;
      r17.w = max(1.00000001e-07, -r17.w);
      r17.w = r18.w / r17.w;
      r14.w = min(abs(r17.w), r14.w);
      r17.w = dot(r16.xyz, r24.xyz);
      r18.w = dot(r15.yzw, r24.xyz);
      r18.w = r18.w + -r25.w;
      r19.w = cmp(r18.w >= 0);
      r18.w = max(abs(r18.w), r10.w);
      r18.w = r19.w ? r18.w : -r18.w;
      r17.w = max(1.00000001e-07, -r17.w);
      r17.w = r18.w / r17.w;
      r14.w = min(abs(r17.w), r14.w);
      r17.w = dot(r16.xyz, r25.xyz);
      r18.w = dot(r15.yzw, r25.xyz);
      r18.w = r18.w + -r26.w;
      r19.w = cmp(r18.w >= 0);
      r18.w = max(abs(r18.w), r10.w);
      r18.w = r19.w ? r18.w : -r18.w;
      r17.w = max(1.00000001e-07, -r17.w);
      r17.w = r18.w / r17.w;
      r14.w = min(abs(r17.w), r14.w);
      r17.w = dot(r16.xyz, r26.xyz);
      r18.w = dot(r15.yzw, r26.xyz);
      r18.w = r18.w + -r27.w;
      r19.w = cmp(r18.w >= 0);
      r18.w = max(abs(r18.w), r10.w);
      r18.w = r19.w ? r18.w : -r18.w;
      r17.w = max(1.00000001e-07, -r17.w);
      r17.w = r18.w / r17.w;
      r14.w = min(abs(r17.w), r14.w);
      r17.w = dot(r16.xyz, r27.xyz);
      r18.w = dot(r15.yzw, r27.xyz);
      r14.z = r18.w + -r14.z;
      r18.w = cmp(r14.z >= 0);
      r14.z = max(abs(r14.z), r10.w);
      r14.z = r18.w ? r14.z : -r14.z;
      r17.w = max(1.00000001e-07, -r17.w);
      r14.z = r14.z / r17.w;
      r14.z = min(r14.w, abs(r14.z));
      r20.xyz = r20.xyz + r15.yzw;
      r20.xyz = r16.xyz * r14.zzz + r20.xyz;
      r14.w = dot(r20.xyz, r20.xyz);
      r14.w = sqrt(r14.w);
      r14.z = r14.z / r14.w;
      r14.z = r14.z + r14.z;
      r14.z = sqrt(r14.z);
      r14.z = r7.w * 5 + r14.z;
      r14.z = -0.844799995 + r14.z;
      r21.x = dot(r20.xyz, r31.xyz);
      r21.y = dot(r20.xyz, r17.xyz);
      r21.z = dot(r20.xyz, r29.xyz);
      if (9 == 0) r14.w = 0; else if (9+16 < 32) {       r14.w = (uint)r28.y << (32-(9 + 16)); r14.w = (uint)r14.w >> (32-9);      } else r14.w = (uint)r28.y >> 16;
      r21.w = (uint)r14.w;
      r20.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r21.xyzw, r14.z).xyz;
      r22.xyz = (int3)r20.xyz & int3(-2147483648,-2147483648,-2147483648);
      r22.xyz = cmp((int3)r22.xyz == int3(2139095040,2139095040,2139095040));
      r14.z = (int)r22.y | (int)r22.x;
      r14.z = (int)r22.z | (int)r14.z;
      r20.xyz = r14.zzz ? float3(1,1,0) : r20.xyz;
      r22.x = dot(r15.yzw, r31.xyz);
      r22.y = dot(r15.yzw, r17.xyz);
      r22.z = dot(r15.yzw, r29.xyz);
      r15.yzw = saturate(r22.xyz * r18.xyz + float3(0.5,0.5,0.5));
      r15.yzw = r15.yzw * r19.xyz + r30.xyz;
      r21.x = dot(r12.xyz, r31.xyz);
      r21.y = dot(r12.xyz, r17.xyz);
      r21.z = dot(r12.xyz, r29.xyz);
      r17.xyz = cmp(float3(0,0,0) < r21.xyz);
      r18.z = r17.x ? 0 : 0.5;
      r18.xy = float2(0,0);
      r18.xyz = r18.xyz + r15.yzw;
      r18.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r18.xyz, 0).xyz;
      r19.xyz = r21.xyz * r21.xyz;
      r19.xyz = r19.xyz * r14.yyy;
      r22.z = r17.y ? 0 : 0.5;
      r22.xy = float2(0,0);
      r17.xyw = r22.xyz + r15.yzw;
      r17.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r17.xyw, 0).xyz;
      r17.xyw = r17.xyw * r19.yyy;
      r17.xyw = r18.xyz * r19.xxx + r17.xyw;
      r18.z = r17.z ? 0 : 0.5;
      r18.xy = float2(0,0);
      r15.yzw = r18.xyz + r15.yzw;
      r15.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r15.yzw, 0).xyz;
      r15.yzw = r15.yzw * r19.zzz + r17.xyw;
      r17.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r21.xyzw, 6).xyz;
      r18.xyz = (int3)r17.xyz & int3(-2147483648,-2147483648,-2147483648);
      r18.xyz = cmp((int3)r18.xyz == int3(2139095040,2139095040,2139095040));
      r14.z = (int)r18.y | (int)r18.x;
      r14.z = (int)r18.z | (int)r14.z;
      r17.xyz = r14.zzz ? float3(1,1,0) : r17.xyz;
      r15.yzw = r17.xyz * r15.yzw;
      r14.z = dot(r15.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r14.w = r14.z * r13.w;
      r15.yzw = r20.xyz * r14.yyy;
      r14.y = dot(r15.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r14.y = r13.w * r14.z + r14.y;
      r14.y = r14.w / r14.y;
      r32.xyz = r15.yzw * r14.yyy;
      r14.y = 257;
    } else {
      r32.xyzw = float4(0,0,0,0);
      r14.y = 1;
    }
    r14.z = -1;
  } else {
    r32.xyzw = float4(0,0,0,0);
    r14.y = 0;
  }
  r14.z = (int)r14.z & (int)r28.x;
  if (r14.z == 0) {
    r14.z = numRefProbes + -numOverrideProbes;
    r14.w = (uint)renderTargetSize.x;
    r14.w = (int)r14.w + 7;
    r14.w = (uint)r14.w >> 3;
    r14.w = mad((int)r0.z, (int)r14.w, (int)r0.y);
    bitmask.w = ((~(-1 << 27)) << 5) & 0xffffffff;  r14.w = (((uint)r14.w << 5) & bitmask.w) | ((uint)16 & ~bitmask.w);
    r15.y = (int)r14.z & -32;
    r15.z = (int)r14.z + (int)-r15.y;
    r15.w = numRefProbes & -32;
    r17.x = (int)-r15.w + numRefProbes;
    r18.x = 16;
    r19.yz = float2(0,1);
    r20.xy = float2(0,0);
    r21.xz = float2(1,1);
    r22.xy = float2(0,0);
    r23.xy = float2(0,0);
    r24.xyz = float3(0,0,0);
    r24.w = r32.x;
    r25.xyz = r32.yzw;
    r25.w = r14.y;
    r17.y = r15.y;
    while (true) {
      r17.z = cmp((uint)r17.y >= numRefProbes);
      if (r17.z != 0) break;
      r17.z = (uint)r17.y >> 5;
      r17.z = (int)r14.w + (int)r17.z;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.z, l(0), t26.xxxx
    r17.z = samp0[]..swiz;
      r17.w = cmp((int)r15.y == (int)r17.y);
      bitmask.w = ((~(-1 << r15.z)) << 0) & 0xffffffff;  r19.w = (((uint)0 << 0) & bitmask.w) | ((uint)r17.z & ~bitmask.w);
      r17.z = r17.w ? r19.w : r17.z;
      r17.w = cmp((int)r15.w == (int)r17.y);
      if (r17.x == 0) r19.w = 0; else if (r17.x+0 < 32) {       r19.w = (uint)r17.z << (32-(r17.x + 0)); r19.w = (uint)r19.w >> (32-r17.x);      } else r19.w = (uint)r17.z >> 0;
      r17.z = r17.w ? r19.w : r17.z;
      r26.xyzw = r24.xyzw;
      r27.xyzw = r25.xyzw;
      r17.w = r17.z;
      while (true) {
        if (r17.w == 0) break;
        r19.w = firstbitlow((uint)r17.w);
        r20.w = 1 << (int)r19.w;
        r20.w = ~(int)r20.w;
        r17.w = (int)r17.w & (int)r20.w;
        r19.w = (int)r17.y + (int)r19.w;
        r19.w = (int)r19.w * 14;
        r20.w = (int)r27.w & 255;
        r22.w = cmp((uint)r20.w < 32);
        r22.w = r22.w ? r2.w : 0;
        if (r22.w != 0) {
          r20.w = mad((int)r20.w, 20, 880);
          r18.yzw = refProbeConstantsCB[r19.w].data[0].xyz + eyeOffset.xyz;
          GBufferDiffuseColor[viewID].r20.w = u2.xyzw;
        }
        r28.w = (int)r27.w + 1;
        r18.yzw = -refProbeConstantsCB[r19.w].data[0].xyz + r11.xyz;
        r20.w = 0x0000ffff & (int)refProbeConstantsCB[r19.w].data[7].z;
        if (6 == 0) r22.w = 0; else if (6+25 < 32) {         r22.w = (uint)refProbeConstantsCB[r19.w].data[7].z << (32-(6 + 25)); r22.w = (uint)r22.w >> (32-6);        } else r22.w = (uint)refProbeConstantsCB[r19.w].data[7].z >> 25;
        r23.w = (int)r20.w * 6;
        r29.x = dot(refProbeAttenuationConstantsCB[r23.w].data[0].xyz, r18.yzw);
        r29.x = saturate(refProbeAttenuationConstantsCB[r23.w].data[0].w + r29.x);
        r29.y = dot(refProbeAttenuationConstantsCB[r23.w].data[1].xyz, r18.yzw);
        r29.y = saturate(refProbeAttenuationConstantsCB[r23.w].data[1].w + r29.y);
        r29.x = r29.x * r29.y;
        r29.y = dot(refProbeAttenuationConstantsCB[r23.w].data[2].xyz, r18.yzw);
        r29.y = saturate(refProbeAttenuationConstantsCB[r23.w].data[2].w + r29.y);
        r29.x = r29.x * r29.y;
        r29.y = dot(refProbeAttenuationConstantsCB[r23.w].data[3].xyz, r18.yzw);
        r29.y = saturate(refProbeAttenuationConstantsCB[r23.w].data[3].w + r29.y);
        r29.x = r29.x * r29.y;
        r29.y = dot(refProbeAttenuationConstantsCB[r23.w].data[4].xyz, r18.yzw);
        r29.y = saturate(refProbeAttenuationConstantsCB[r23.w].data[4].w + r29.y);
        r29.x = r29.x * r29.y;
        r29.y = dot(refProbeAttenuationConstantsCB[r23.w].data[5].xyz, r18.yzw);
        r23.w = saturate(refProbeAttenuationConstantsCB[r23.w].data[5].w + r29.y);
        r19.x = r29.x * r23.w;
        r23.w = 1 & (int)refProbeConstantsCB[r19.w].data[6].x;
        r29.xy = r23.ww ? r19.xy : r19.zx;
        r19.x = refProbeConstantsCB[r19.w].data[6].x;
        r30.xy = r29.xy;
        r23.w = 1;
        while (true) {
          r29.z = cmp((int)r23.w >= (int)r22.w);
          if (r29.z != 0) break;
          r29.z = (int)r20.w + (int)r23.w;
          r29.z = (int)r29.z * 6;
          r29.w = dot(refProbeAttenuationConstantsCB[r29.z].data[0].xyz, r18.yzw);
          r29.w = saturate(refProbeAttenuationConstantsCB[r29.z].data[0].w + r29.w);
          r29.w = r30.x * r29.w;
          r30.z = dot(refProbeAttenuationConstantsCB[r29.z].data[1].xyz, r18.yzw);
          r30.z = saturate(refProbeAttenuationConstantsCB[r29.z].data[1].w + r30.z);
          r29.w = r30.z * r29.w;
          r30.z = dot(refProbeAttenuationConstantsCB[r29.z].data[2].xyz, r18.yzw);
          r30.z = saturate(refProbeAttenuationConstantsCB[r29.z].data[2].w + r30.z);
          r29.w = r30.z * r29.w;
          r30.z = dot(refProbeAttenuationConstantsCB[r29.z].data[3].xyz, r18.yzw);
          r30.z = saturate(refProbeAttenuationConstantsCB[r29.z].data[3].w + r30.z);
          r29.w = r30.z * r29.w;
          r30.z = dot(refProbeAttenuationConstantsCB[r29.z].data[4].xyz, r18.yzw);
          r30.z = saturate(refProbeAttenuationConstantsCB[r29.z].data[4].w + r30.z);
          r29.w = r30.z * r29.w;
          r30.z = dot(refProbeAttenuationConstantsCB[r29.z].data[5].xyz, r18.yzw);
          r29.z = saturate(refProbeAttenuationConstantsCB[r29.z].data[5].w + r30.z);
          r30.x = r29.w * r29.z;
          r30.z = (uint)r19.x >> 2;
          if (1 == 0) r30.w = 0; else if (1+2 < 32) {           r30.w = (uint)r19.x << (32-(1 + 2)); r30.w = (uint)r30.w >> (32-1);          } else r30.w = (uint)r19.x >> 2;
          r31.x = (int)r30.z & 2;
          r31.y = max(r30.y, r30.x);
          r29.z = -r29.w * r29.z + 1;
          r29.z = r30.y * r29.z;
          r21.y = r31.x ? r29.z : r31.y;
          r30.xy = r30.ww ? r30.xy : r21.xy;
          r23.w = (int)r23.w + 1;
          r19.x = r30.z;
        }
        r30.y = saturate(r30.y);
        r19.x = refProbeConstantsCB[r19.w].data[6].y * r30.y;
        r20.w = cmp(0 < r19.x);
        if (r20.w != 0) {
          r20.w = (int)r28.w & 255;
          r21.y = (int)r20.w + -1;
          r21.y = cmp((uint)r21.y < 32);
          r21.y = r21.y ? r2.w : 0;
          if (r21.y != 0) {
            r29.xy = mad((int2)r20.ww, int2(20,20), int2(860,876));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r20.w, cb2[52].x, r29.x, u2.xxxx
          r20.w = samp0[]..swiz;
            r20.w = (int)r20.w | 32;
            GBufferDiffuseColor[viewID].r29.x = u2.x;
            GBufferDiffuseColor[viewID].r29.y = u2.x;
          }
          r27.w = (int)r27.w + 257;
          r27.z = r30.y * refProbeConstantsCB[r19.w].data[6].y + r27.z;
          r19.x = refProbeConstantsCB[r19.w].data[7].y * r19.x;
          r29.x = refProbeConstantsCB[r19.w].data[7].w;
          r29.yz = refProbeConstantsCB[r19.w].data[8].xy;
          r20.w = dot(r16.xyz, r29.xyz);
          r21.y = dot(r18.yzw, r29.xyz);
          r21.y = -refProbeConstantsCB[r19.w].data[8].z + r21.y;
          r22.w = cmp(r21.y >= 0);
          r21.y = max(abs(r21.y), r10.w);
          r21.y = r22.w ? r21.y : -r21.y;
          r20.w = max(1.00000001e-07, -r20.w);
          r20.w = r21.y / r20.w;
          r20.w = min(131072, abs(r20.w));
          r29.x = refProbeConstantsCB[r19.w].data[8].w;
          r29.yz = refProbeConstantsCB[r19.w].data[9].xy;
          r21.y = dot(r16.xyz, r29.xyz);
          r22.w = dot(r18.yzw, r29.xyz);
          r22.w = -refProbeConstantsCB[r19.w].data[9].z + r22.w;
          r23.w = cmp(r22.w >= 0);
          r22.w = max(abs(r22.w), r10.w);
          r22.w = r23.w ? r22.w : -r22.w;
          r21.y = max(1.00000001e-07, -r21.y);
          r21.y = r22.w / r21.y;
          r20.w = min(abs(r21.y), r20.w);
          r29.x = refProbeConstantsCB[r19.w].data[9].w;
          r29.yz = refProbeConstantsCB[r19.w].data[10].xy;
          r21.y = dot(r16.xyz, r29.xyz);
          r22.w = dot(r18.yzw, r29.xyz);
          r22.w = -refProbeConstantsCB[r19.w].data[10].z + r22.w;
          r23.w = cmp(r22.w >= 0);
          r22.w = max(abs(r22.w), r10.w);
          r22.w = r23.w ? r22.w : -r22.w;
          r21.y = max(1.00000001e-07, -r21.y);
          r21.y = r22.w / r21.y;
          r20.w = min(abs(r21.y), r20.w);
          r29.x = refProbeConstantsCB[r19.w].data[10].w;
          r29.yz = refProbeConstantsCB[r19.w].data[11].xy;
          r21.y = dot(r16.xyz, r29.xyz);
          r22.w = dot(r18.yzw, r29.xyz);
          r22.w = -refProbeConstantsCB[r19.w].data[11].z + r22.w;
          r23.w = cmp(r22.w >= 0);
          r22.w = max(abs(r22.w), r10.w);
          r22.w = r23.w ? r22.w : -r22.w;
          r21.y = max(1.00000001e-07, -r21.y);
          r21.y = r22.w / r21.y;
          r20.w = min(abs(r21.y), r20.w);
          r29.x = refProbeConstantsCB[r19.w].data[11].w;
          r29.yz = refProbeConstantsCB[r19.w].data[12].xy;
          r21.y = dot(r16.xyz, r29.xyz);
          r22.w = dot(r18.yzw, r29.xyz);
          r22.w = -refProbeConstantsCB[r19.w].data[12].z + r22.w;
          r23.w = cmp(r22.w >= 0);
          r22.w = max(abs(r22.w), r10.w);
          r22.w = r23.w ? r22.w : -r22.w;
          r21.y = max(1.00000001e-07, -r21.y);
          r21.y = r22.w / r21.y;
          r20.w = min(abs(r21.y), r20.w);
          r29.x = refProbeConstantsCB[r19.w].data[12].w;
          r29.yz = refProbeConstantsCB[r19.w].data[13].xy;
          r21.y = dot(r16.xyz, r29.xyz);
          r22.w = dot(r18.yzw, r29.xyz);
          r22.w = -refProbeConstantsCB[r19.w].data[13].z + r22.w;
          r23.w = cmp(r22.w >= 0);
          r22.w = max(abs(r22.w), r10.w);
          r22.w = r23.w ? r22.w : -r22.w;
          r21.y = max(1.00000001e-07, -r21.y);
          r21.y = r22.w / r21.y;
          r20.w = min(abs(r21.y), r20.w);
          r29.x = refProbeConstantsCB[r19.w].data[3].w + r18.y;
          r29.yz = refProbeConstantsCB[r19.w].data[4].xy + r18.zw;
          r29.xyz = r16.xyz * r20.www + r29.xyz;
          r21.y = dot(r29.xyz, r29.xyz);
          r21.y = sqrt(r21.y);
          r20.w = r20.w / r21.y;
          r20.w = r20.w + r20.w;
          r20.w = sqrt(r20.w);
          r20.w = r7.w * 5 + r20.w;
          r20.w = -0.844799995 + r20.w;
          r31.x = refProbeConstantsCB[r19.w].data[0].w;
          r31.y = refProbeConstantsCB[r19.w].data[1].z;
          r31.z = refProbeConstantsCB[r19.w].data[2].y;
          r33.x = dot(r29.xyz, r31.xyz);
          r34.xy = refProbeConstantsCB[r19.w].data[1].xw;
          r34.z = refProbeConstantsCB[r19.w].data[2].z;
          r33.y = dot(r29.xyz, r34.xyz);
          r35.x = refProbeConstantsCB[r19.w].data[1].y;
          r35.yz = refProbeConstantsCB[r19.w].data[2].xw;
          r33.z = dot(r29.xyz, r35.xyz);
          if (9 == 0) r21.y = 0; else if (9+16 < 32) {           r21.y = (uint)refProbeConstantsCB[r19.w].data[7].z << (32-(9 + 16)); r21.y = (uint)r21.y >> (32-9);          } else r21.y = (uint)refProbeConstantsCB[r19.w].data[7].z >> 16;
          r33.w = (uint)r21.y;
          r29.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, r20.w).xyz;
          r30.xzw = (int3)r29.xyz & int3(-2147483648,-2147483648,-2147483648);
          r30.xzw = cmp((int3)r30.xzw == int3(2139095040,2139095040,2139095040));
          r20.w = (int)r30.z | (int)r30.x;
          r20.w = (int)r30.w | (int)r20.w;
          r29.xyz = r20.www ? float3(1,1,0) : r29.xyz;
          r36.x = dot(r18.yzw, r31.xyz);
          r36.y = dot(r18.yzw, r34.xyz);
          r36.z = dot(r18.yzw, r35.xyz);
          r18.yzw = saturate(r36.xyz * refProbeConstantsCB[r19.w].data[3].xyz + float3(0.5,0.5,0.5));
          r36.xy = refProbeConstantsCB[r19.w].data[4].zw * r18.yz;
          r36.z = refProbeConstantsCB[r19.w].data[5].x * r18.w;
          r18.yzw = refProbeConstantsCB[r19.w].data[5].yzw + r36.xyz;
          r33.x = dot(r12.xyz, r31.xyz);
          r33.y = dot(r12.xyz, r34.xyz);
          r33.z = dot(r12.xyz, r35.xyz);
          r30.xzw = cmp(float3(0,0,0) < r33.xyz);
          r20.z = r30.x ? 0 : 0.5;
          r31.xyz = r20.xyz + r18.yzw;
          r31.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r31.xyz, 0).xyz;
          r34.xyz = r33.xyz * r33.xyz;
          r34.xyz = r34.xyz * r19.xxx;
          r22.z = r30.z ? 0 : 0.5;
          r35.xyz = r22.xyz + r18.yzw;
          r35.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r35.xyz, 0).xyz;
          r35.xyz = r35.xyz * r34.yyy;
          r31.xyz = r31.xyz * r34.xxx + r35.xyz;
          r23.z = r30.w ? 0 : 0.5;
          r18.yzw = r23.xyz + r18.yzw;
          r18.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r18.yzw, 0).xyz;
          r18.yzw = r18.yzw * r34.zzz + r31.xyz;
          r30.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, 6).xyz;
          r31.xyz = (int3)r30.xzw & int3(-2147483648,-2147483648,-2147483648);
          r31.xyz = cmp((int3)r31.xyz == int3(2139095040,2139095040,2139095040));
          r19.w = (int)r31.y | (int)r31.x;
          r19.w = (int)r31.z | (int)r19.w;
          r30.xzw = r19.www ? float3(1,1,0) : r30.xzw;
          r31.xyz = r30.xzw * r18.yzw;
          r19.w = dot(r31.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r26.xyz = r18.yzw * r30.xzw + r26.xyz;
          r18.y = r19.w * r13.w;
          r29.xyz = r29.xyz * r19.xxx;
          r18.z = dot(r29.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r18.z = r13.w * r19.w + r18.z;
          r18.y = r18.y / r18.z;
          r31.x = r26.w;
          r31.yz = r27.xy;
          r18.yzw = r29.xyz * r18.yyy + r31.xyz;
          r26.w = r18.y;
          r27.xy = r18.zw;
        } else {
          r28.xyz = r27.xyz;
          r27.xyzw = r28.xyzw;
        }
      }
      r24.xyzw = r26.xyzw;
      r25.xyzw = r27.xyzw;
      r17.y = (int)r17.y + 32;
    }
    r17.x = 16;
    r18.yz = float2(0,1);
    r19.xy = float2(0,0);
    r20.xy = float2(0,0);
    r22.xy = float2(0,0);
    r23.xyz = r24.xyz;
    r26.x = r24.w;
    r26.yz = r25.xy;
    r27.xyz = r25.zwz;
    r15.w = 0;
    while (true) {
      r18.w = cmp((uint)r15.w >= (uint)r14.z);
      if (r18.w != 0) break;
      r18.w = (uint)r15.w >> 5;
      r18.w = (int)r14.w + (int)r18.w;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.w, l(0), t26.xxxx
    r18.w = samp0[]..swiz;
      r19.w = cmp((int)r15.y == (int)r15.w);
      if (r15.z == 0) r20.w = 0; else if (r15.z+0 < 32) {       r20.w = (uint)r18.w << (32-(r15.z + 0)); r20.w = (uint)r20.w >> (32-r15.z);      } else r20.w = (uint)r18.w >> 0;
      r18.w = r19.w ? r20.w : r18.w;
      r28.xyz = r23.xyz;
      r29.xyz = r26.xyz;
      r30.xyz = r27.xzy;
      r19.w = r18.w;
      while (true) {
        if (r19.w == 0) break;
        r20.w = firstbitlow((uint)r19.w);
        r21.x = 1 << (int)r20.w;
        r21.x = ~(int)r21.x;
        r19.w = (int)r19.w & (int)r21.x;
        r20.w = (int)r15.w + (int)r20.w;
        r20.w = (int)r20.w * 14;
        r21.x = (int)r30.z & 255;
        r21.y = cmp((uint)r21.x < 32);
        r21.y = r21.y ? r2.w : 0;
        if (r21.y != 0) {
          r21.x = mad((int)r21.x, 20, 880);
          r17.yzw = refProbeConstantsCB[r20.w].data[0].xyz + eyeOffset.xyz;
          GBufferDiffuseColor[viewID].r21.x = u2.xyzw;
        }
        r21.y = (int)r30.z + 1;
        r17.yzw = -refProbeConstantsCB[r20.w].data[0].xyz + r11.xyz;
        r22.w = 0x0000ffff & (int)refProbeConstantsCB[r20.w].data[7].z;
        if (6 == 0) r23.w = 0; else if (6+25 < 32) {         r23.w = (uint)refProbeConstantsCB[r20.w].data[7].z << (32-(6 + 25)); r23.w = (uint)r23.w >> (32-6);        } else r23.w = (uint)refProbeConstantsCB[r20.w].data[7].z >> 25;
        r26.w = (int)r22.w * 6;
        r27.w = dot(refProbeAttenuationConstantsCB[r26.w].data[0].xyz, r17.yzw);
        r27.w = saturate(refProbeAttenuationConstantsCB[r26.w].data[0].w + r27.w);
        r28.w = dot(refProbeAttenuationConstantsCB[r26.w].data[1].xyz, r17.yzw);
        r28.w = saturate(refProbeAttenuationConstantsCB[r26.w].data[1].w + r28.w);
        r27.w = r28.w * r27.w;
        r28.w = dot(refProbeAttenuationConstantsCB[r26.w].data[2].xyz, r17.yzw);
        r28.w = saturate(refProbeAttenuationConstantsCB[r26.w].data[2].w + r28.w);
        r27.w = r28.w * r27.w;
        r28.w = dot(refProbeAttenuationConstantsCB[r26.w].data[3].xyz, r17.yzw);
        r28.w = saturate(refProbeAttenuationConstantsCB[r26.w].data[3].w + r28.w);
        r27.w = r28.w * r27.w;
        r28.w = dot(refProbeAttenuationConstantsCB[r26.w].data[4].xyz, r17.yzw);
        r28.w = saturate(refProbeAttenuationConstantsCB[r26.w].data[4].w + r28.w);
        r27.w = r28.w * r27.w;
        r28.w = dot(refProbeAttenuationConstantsCB[r26.w].data[5].xyz, r17.yzw);
        r26.w = saturate(refProbeAttenuationConstantsCB[r26.w].data[5].w + r28.w);
        r18.x = r27.w * r26.w;
        r26.w = 1 & (int)refProbeConstantsCB[r20.w].data[6].x;
        r31.xy = r26.ww ? r18.xy : r18.zx;
        r18.x = refProbeConstantsCB[r20.w].data[6].x;
        r33.xy = r31.xy;
        r26.w = 1;
        while (true) {
          r27.w = cmp((int)r26.w >= (int)r23.w);
          if (r27.w != 0) break;
          r27.w = (int)r22.w + (int)r26.w;
          r27.w = (int)r27.w * 6;
          r28.w = dot(refProbeAttenuationConstantsCB[r27.w].data[0].xyz, r17.yzw);
          r28.w = saturate(refProbeAttenuationConstantsCB[r27.w].data[0].w + r28.w);
          r28.w = r33.x * r28.w;
          r29.w = dot(refProbeAttenuationConstantsCB[r27.w].data[1].xyz, r17.yzw);
          r29.w = saturate(refProbeAttenuationConstantsCB[r27.w].data[1].w + r29.w);
          r28.w = r29.w * r28.w;
          r29.w = dot(refProbeAttenuationConstantsCB[r27.w].data[2].xyz, r17.yzw);
          r29.w = saturate(refProbeAttenuationConstantsCB[r27.w].data[2].w + r29.w);
          r28.w = r29.w * r28.w;
          r29.w = dot(refProbeAttenuationConstantsCB[r27.w].data[3].xyz, r17.yzw);
          r29.w = saturate(refProbeAttenuationConstantsCB[r27.w].data[3].w + r29.w);
          r28.w = r29.w * r28.w;
          r29.w = dot(refProbeAttenuationConstantsCB[r27.w].data[4].xyz, r17.yzw);
          r29.w = saturate(refProbeAttenuationConstantsCB[r27.w].data[4].w + r29.w);
          r28.w = r29.w * r28.w;
          r29.w = dot(refProbeAttenuationConstantsCB[r27.w].data[5].xyz, r17.yzw);
          r27.w = saturate(refProbeAttenuationConstantsCB[r27.w].data[5].w + r29.w);
          r33.x = r28.w * r27.w;
          r29.w = (uint)r18.x >> 2;
          if (1 == 0) r30.w = 0; else if (1+2 < 32) {           r30.w = (uint)r18.x << (32-(1 + 2)); r30.w = (uint)r30.w >> (32-1);          } else r30.w = (uint)r18.x >> 2;
          r31.z = (int)r29.w & 2;
          r31.w = max(r33.y, r33.x);
          r27.w = -r28.w * r27.w + 1;
          r27.w = r33.y * r27.w;
          r21.w = r31.z ? r27.w : r31.w;
          r33.xy = r30.ww ? r33.xy : r21.zw;
          r26.w = (int)r26.w + 1;
          r18.x = r29.w;
        }
        r18.x = saturate(r33.y + -r30.y);
        r21.w = refProbeConstantsCB[r20.w].data[6].y * r18.x;
        r22.w = cmp(0 < r21.w);
        if (r22.w != 0) {
          r22.w = (int)r21.y & 255;
          r23.w = (int)r22.w + -1;
          r23.w = cmp((uint)r23.w < 32);
          r23.w = r23.w ? r2.w : 0;
          if (r23.w != 0) {
            r31.xy = mad((int2)r22.ww, int2(20,20), int2(860,876));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r22.w, cb2[52].x, r31.x, u2.xxxx
          r22.w = samp0[]..swiz;
            r22.w = (int)r22.w | 32;
            GBufferDiffuseColor[viewID].r31.x = u2.x;
            GBufferDiffuseColor[viewID].r31.y = u2.x;
          }
          r30.z = (int)r30.z + 257;
          r30.x = r18.x * refProbeConstantsCB[r20.w].data[6].y + r30.x;
          r18.x = refProbeConstantsCB[r20.w].data[7].y * r21.w;
          r31.x = refProbeConstantsCB[r20.w].data[7].w;
          r31.yz = refProbeConstantsCB[r20.w].data[8].xy;
          r21.w = dot(r16.xyz, r31.xyz);
          r22.w = dot(r17.yzw, r31.xyz);
          r22.w = -refProbeConstantsCB[r20.w].data[8].z + r22.w;
          r23.w = cmp(r22.w >= 0);
          r22.w = max(abs(r22.w), r10.w);
          r22.w = r23.w ? r22.w : -r22.w;
          r21.w = max(1.00000001e-07, -r21.w);
          r21.w = r22.w / r21.w;
          r21.w = min(131072, abs(r21.w));
          r31.x = refProbeConstantsCB[r20.w].data[8].w;
          r31.yz = refProbeConstantsCB[r20.w].data[9].xy;
          r22.w = dot(r16.xyz, r31.xyz);
          r23.w = dot(r17.yzw, r31.xyz);
          r23.w = -refProbeConstantsCB[r20.w].data[9].z + r23.w;
          r26.w = cmp(r23.w >= 0);
          r23.w = max(abs(r23.w), r10.w);
          r23.w = r26.w ? r23.w : -r23.w;
          r22.w = max(1.00000001e-07, -r22.w);
          r22.w = r23.w / r22.w;
          r21.w = min(abs(r22.w), r21.w);
          r31.x = refProbeConstantsCB[r20.w].data[9].w;
          r31.yz = refProbeConstantsCB[r20.w].data[10].xy;
          r22.w = dot(r16.xyz, r31.xyz);
          r23.w = dot(r17.yzw, r31.xyz);
          r23.w = -refProbeConstantsCB[r20.w].data[10].z + r23.w;
          r26.w = cmp(r23.w >= 0);
          r23.w = max(abs(r23.w), r10.w);
          r23.w = r26.w ? r23.w : -r23.w;
          r22.w = max(1.00000001e-07, -r22.w);
          r22.w = r23.w / r22.w;
          r21.w = min(abs(r22.w), r21.w);
          r31.x = refProbeConstantsCB[r20.w].data[10].w;
          r31.yz = refProbeConstantsCB[r20.w].data[11].xy;
          r22.w = dot(r16.xyz, r31.xyz);
          r23.w = dot(r17.yzw, r31.xyz);
          r23.w = -refProbeConstantsCB[r20.w].data[11].z + r23.w;
          r26.w = cmp(r23.w >= 0);
          r23.w = max(abs(r23.w), r10.w);
          r23.w = r26.w ? r23.w : -r23.w;
          r22.w = max(1.00000001e-07, -r22.w);
          r22.w = r23.w / r22.w;
          r21.w = min(abs(r22.w), r21.w);
          r31.x = refProbeConstantsCB[r20.w].data[11].w;
          r31.yz = refProbeConstantsCB[r20.w].data[12].xy;
          r22.w = dot(r16.xyz, r31.xyz);
          r23.w = dot(r17.yzw, r31.xyz);
          r23.w = -refProbeConstantsCB[r20.w].data[12].z + r23.w;
          r26.w = cmp(r23.w >= 0);
          r23.w = max(abs(r23.w), r10.w);
          r23.w = r26.w ? r23.w : -r23.w;
          r22.w = max(1.00000001e-07, -r22.w);
          r22.w = r23.w / r22.w;
          r21.w = min(abs(r22.w), r21.w);
          r31.x = refProbeConstantsCB[r20.w].data[12].w;
          r31.yz = refProbeConstantsCB[r20.w].data[13].xy;
          r22.w = dot(r16.xyz, r31.xyz);
          r23.w = dot(r17.yzw, r31.xyz);
          r23.w = -refProbeConstantsCB[r20.w].data[13].z + r23.w;
          r26.w = cmp(r23.w >= 0);
          r23.w = max(abs(r23.w), r10.w);
          r23.w = r26.w ? r23.w : -r23.w;
          r22.w = max(1.00000001e-07, -r22.w);
          r22.w = r23.w / r22.w;
          r21.w = min(abs(r22.w), r21.w);
          r31.x = refProbeConstantsCB[r20.w].data[3].w + r17.y;
          r31.yz = refProbeConstantsCB[r20.w].data[4].xy + r17.zw;
          r31.xyz = r16.xyz * r21.www + r31.xyz;
          r22.w = dot(r31.xyz, r31.xyz);
          r22.w = sqrt(r22.w);
          r21.w = r21.w / r22.w;
          r21.w = r21.w + r21.w;
          r21.w = sqrt(r21.w);
          r21.w = r7.w * 5 + r21.w;
          r21.w = -0.844799995 + r21.w;
          r34.x = refProbeConstantsCB[r20.w].data[0].w;
          r34.y = refProbeConstantsCB[r20.w].data[1].z;
          r34.z = refProbeConstantsCB[r20.w].data[2].y;
          r35.x = dot(r31.xyz, r34.xyz);
          r36.xy = refProbeConstantsCB[r20.w].data[1].xw;
          r36.z = refProbeConstantsCB[r20.w].data[2].z;
          r35.y = dot(r31.xyz, r36.xyz);
          r37.x = refProbeConstantsCB[r20.w].data[1].y;
          r37.yz = refProbeConstantsCB[r20.w].data[2].xw;
          r35.z = dot(r31.xyz, r37.xyz);
          if (9 == 0) r22.w = 0; else if (9+16 < 32) {           r22.w = (uint)refProbeConstantsCB[r20.w].data[7].z << (32-(9 + 16)); r22.w = (uint)r22.w >> (32-9);          } else r22.w = (uint)refProbeConstantsCB[r20.w].data[7].z >> 16;
          r35.w = (uint)r22.w;
          r31.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r35.xyzw, r21.w).xyz;
          r33.xzw = (int3)r31.xyz & int3(-2147483648,-2147483648,-2147483648);
          r33.xzw = cmp((int3)r33.xzw == int3(2139095040,2139095040,2139095040));
          r21.w = (int)r33.z | (int)r33.x;
          r21.w = (int)r33.w | (int)r21.w;
          r31.xyz = r21.www ? float3(1,1,0) : r31.xyz;
          r38.x = dot(r17.yzw, r34.xyz);
          r38.y = dot(r17.yzw, r36.xyz);
          r38.z = dot(r17.yzw, r37.xyz);
          r17.yzw = saturate(r38.xyz * refProbeConstantsCB[r20.w].data[3].xyz + float3(0.5,0.5,0.5));
          r38.xy = refProbeConstantsCB[r20.w].data[4].zw * r17.yz;
          r38.z = refProbeConstantsCB[r20.w].data[5].x * r17.w;
          r17.yzw = refProbeConstantsCB[r20.w].data[5].yzw + r38.xyz;
          r35.x = dot(r12.xyz, r34.xyz);
          r35.y = dot(r12.xyz, r36.xyz);
          r35.z = dot(r12.xyz, r37.xyz);
          r33.xzw = cmp(float3(0,0,0) < r35.xyz);
          r19.z = r33.x ? 0 : 0.5;
          r34.xyz = r19.xyz + r17.yzw;
          r34.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r34.xyz, 0).xyz;
          r36.xyz = r35.xyz * r35.xyz;
          r36.xyz = r36.xyz * r18.xxx;
          r20.z = r33.z ? 0 : 0.5;
          r37.xyz = r20.xyz + r17.yzw;
          r37.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r37.xyz, 0).xyz;
          r37.xyz = r37.xyz * r36.yyy;
          r34.xyz = r34.xyz * r36.xxx + r37.xyz;
          r22.z = r33.w ? 0 : 0.5;
          r17.yzw = r22.xyz + r17.yzw;
          r17.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r17.yzw, 0).xyz;
          r17.yzw = r17.yzw * r36.zzz + r34.xyz;
          r33.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r35.xyzw, 6).xyz;
          r34.xyz = (int3)r33.xzw & int3(-2147483648,-2147483648,-2147483648);
          r34.xyz = cmp((int3)r34.xyz == int3(2139095040,2139095040,2139095040));
          r19.z = (int)r34.y | (int)r34.x;
          r19.z = (int)r34.z | (int)r19.z;
          r33.xzw = r19.zzz ? float3(1,1,0) : r33.xzw;
          r34.xyz = r33.xzw * r17.yzw;
          r19.z = dot(r34.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r28.xyz = r17.yzw * r33.xzw + r28.xyz;
          r17.y = r19.z * r13.w;
          r31.xyz = r31.xyz * r18.xxx;
          r17.z = dot(r31.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r17.z = r13.w * r19.z + r17.z;
          r17.y = r17.y / r17.z;
          r29.xyz = r31.xyz * r17.yyy + r29.xyz;
        } else {
          r21.x = r30.x;
          r30.xz = r21.xy;
        }
      }
      r23.xyz = r28.xyz;
      r26.xyz = r29.xyz;
      r27.xy = r30.xz;
      r15.w = (int)r15.w + 32;
    }
    r7.w = cmp(r25.z >= 1);
    r10.w = (int)r25.w & 0x0000ff00;
    bitmask.w = ((~(-1 << 8)) << 0) & 0xffffffff;  r10.w = (((uint)r27.y << 0) & bitmask.w) | ((uint)r10.w & ~bitmask.w);
    r14.y = r7.w ? r10.w : r27.y;
    r7.w = max(1, r27.x);
    r7.w = rcp(r7.w);
    r27.x = saturate(r27.x);
    r15.yzw = r23.xyz * r7.www;
    r32.xyz = r26.xyz * r7.www;
    r10.w = cmp(r27.x < 0.99000001);
    if (r10.w != 0) {
      r14.y = (int)r14.y + 256;
      r10.w = 1 + -r27.x;
      r13.w = sunConstants.globalProbeExposure * r10.w;
      r17.xyz = -globalProbeConstants.data[0].xyz + r11.xyz;
      r18.x = globalProbeConstants.data[0].w * r17.x;
      r18.yz = globalProbeConstants.data[1].xy * r17.yz;
      r17.xyz = saturate(float3(0.5,0.5,0.5) + r18.xyz);
      r18.xy = globalProbeConstants.data[1].zw * r17.xy;
      r18.z = globalProbeConstants.data[2].x * r17.z;
      r17.xyz = globalProbeConstants.data[2].yzw + r18.xyz;
      r18.xyz = cmp(float3(0,0,0) < r12.xyz);
      r18.xyz = r18.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
      r18.w = 0;
      r19.xyz = r18.wwx + r17.xyz;
      r19.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r19.xyz, 0).xyz;
      r20.xyz = r12.xyz * r12.xyz;
      r20.xyz = r20.xyz * r13.www;
      r21.xyz = r18.wwy + r17.xyz;
      r21.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r21.xyz, 0).xyz;
      r21.xyz = r21.xyz * r20.yyy;
      r19.xyz = r19.xyz * r20.xxx + r21.xyz;
      r17.xyz = r18.wwz + r17.xyz;
      r17.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r17.xyz, 0).xyz;
      r17.xyz = r17.xyz * r20.zzz + r19.xyz;
      r12.w = 0;
      r18.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r12.xyzw, 6).xyz;
      r17.xyz = r18.xyz * r17.xyz;
      r12.w = dot(r17.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r15.yzw = r23.xyz * r7.www + r17.xyz;
      r16.w = 0;
      r17.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r16.xyzw, r9.w).xyz;
      r7.w = sunConstants.globalProbeExposure * r10.w + -r12.w;
      r7.w = r2.y * r7.w + r12.w;
      r32.xyz = r17.xyz * r7.www + r32.xyz;
    }
  } else {
    r15.yzw = float3(0,0,0);
  }
  r7.w = r2.x + r5.x;
  r7.w = log2(abs(r7.w));
  r7.w = r7.w * r2.z;
  r7.w = exp2(r7.w);
  r7.w = r7.w + r5.x;
  r7.w = saturate(-1 + r7.w);
  r17.xyz = r15.yzw * r5.xxx;
  r18.xyz = r3.zzz ? r17.yzx : 0;
  r14.zw = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r14.zw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r14.zw, 0).xy;
  r19.xyz = r32.xyz * r7.www;
  r20.xyz = r19.xyz * r14.zzz;
  r19.xyz = r19.xyz * r14.www;
  r2.y = sqrt(r2.z);
  r2.y = r2.y * 0.5 + 0.5;
  r2.y = r2.y * r2.y;
  r7.w = 0.5 * r2.y;
  r2.y = -r2.y * 0.5 + 1;
  r9.w = r2.x * r2.y + r7.w;
  r2.y = r9.w * r2.y;
  r7.w = r9.w * r7.w;
  if (r2.w != 0) {
    r21.x = 3;
    r21.yzw = eyeOffset.xyz;
    GBufferDiffuseColor[viewID].112 = u2.xyzw;
  }
  r9.w = cmp(0 < r6.w);
  if (r9.w != 0) {
    if (r2.w != 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r9.w, cb2[52].x, l(112), u2.xxxx
    r9.w = samp0[]..swiz;
      r9.w = (int)r9.w | 4;
      GBufferDiffuseColor[viewID].112 = u2.x;
      GBufferDiffuseColor[viewID].128 = u2.x;
    }
    r9.w = cmp(0 < r8.w);
    if (r9.w != 0) {
      r9.w = sunConstants.specScale * r1.w;
      r9.w = r9.w * r4.w;
      if (sunConstants.sunCookieIndex != 0) {
        r21.xyz = eyeOffset.xyz + r11.xyz;
        r21.w = 1;
        r10.w = dot(sunConstants.sunCookieTransform[0].xyzw, r21.xyzw);
        r12.w = dot(sunConstants.sunCookieTransform[1].xyzw, r21.xyzw);
        r21.x = frac(r10.w);
        r21.y = frac(r12.w);
        r10.w = -1 + (int14)sunConstants.sunCookieIndex;
        r21.z = (uint)r10.w;
        r21.xyz = gCookieArray.SampleLevel(samplerLinear_s, r21.xyz, 0).xyz;
        r21.xyz = float3(-1,-1,-1) + r21.xyz;
        r21.xyz = sunConstants.sunCookieIntensity * r21.xyz + float3(1,1,1);
        r21.xyz = sunConstants.color.xyz * r21.xyz;
      } else {
        r21.xyz = sunConstants.color.xyz;
      }
      r10.w = viewmodelSunShadowRaw >> 16;
      r12.w = cmp(0 < (uint)r10.w);
      r12.w = r12.w ? r1.z : 0;
      if (r12.w != 0) {
        r10.w = (int)r10.w + numLights;
        r10.w = mad((int)r10.w, 15, -15);
        r12.w = abs(r4.z) * -0.200000003 + 0.400000006;
        r13.w = cmp(r4.z < 0);
        r13.w = r3.z ? r13.w : 0;
        r12.w = r13.w ? -r12.w : r12.w;
        r22.xyz = r12.xyz * r12.www + r11.xyz;
        r23.xyz = lightConstantsCB[r10.w].data[4].yzw;
        r23.w = lightConstantsCB[r10.w].data[5].x;
        r22.w = 1;
        r23.x = dot(r23.xyzw, r22.xyzw);
        r24.xyz = lightConstantsCB[r10.w].data[5].yzw;
        r24.w = lightConstantsCB[r10.w].data[6].x;
        r23.y = dot(r24.xyzw, r22.xyzw);
        r14.zw = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r23.x = lightConstantsCB[r10.w].data[9].w + r14.z;
        r23.y = lightConstantsCB[r10.w].data[10].x + r14.w;
        r14.zw = lightConstantsCB[r10.w].data[9].yz * r23.xy;
        r23.xy = lightConstantsCB[r10.w].data[3].yy / lightConstantsCB[r10.w].data[8].yw;
        r23.zw = float2(1,1) + -r23.xy;
        r23.zw = cmp(r14.zw >= r23.zw);
        r23.xy = cmp(r23.xy >= r14.zw);
        r23.xy = (int2)r23.xy | (int2)r23.zw;
        r12.w = (int)r23.y | (int)r23.x;
        if (r12.w == 0) {
          r23.xyz = lightConstantsCB[r10.w].data[6].yzw;
          r23.w = lightConstantsCB[r10.w].data[7].x;
          r12.w = dot(r23.xyzw, r22.xyzw);
          r14.zw = saturate(r14.zw);
          r22.x = r14.z * lightConstantsCB[r10.w].data[8].y + lightConstantsCB[r10.w].data[8].z;
          r22.y = r14.w * lightConstantsCB[r10.w].data[8].w + lightConstantsCB[r10.w].data[9].x;
          r12.w = lightConstantsCB[r10.w].data[10].y + r12.w;
          r12.w = r12.w / lightConstantsCB[r10.w].data[10].z;
          r12.w = max(6.10351563e-05, r12.w);
          r13.w = 0x0000ffff & (int)lightConstantsCB[r10.w].data[1].w;
          if (enableDitheredShadow != 0) {
            r23.x = -r4.x;
            r24.z = (uint)r13.w;
            r23.y = r13.x;
            r23.z = r4.x;
            r14.zw = float2(0,0);
            while (true) {
              r16.w = cmp((int)r14.w >= 8);
              if (r16.w != 0) break;
              r25.x = dot(icb[r14.w+0].yx, r23.xy);
              r25.y = dot(icb[r14.w+0].yx, r23.yz);
              r24.xy = r25.xy * lightConstantsCB[r10.w].data[3].yy + r22.xy;
              r16.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r12.w).x;
              r14.z = r16.w * 0.125 + r14.z;
              r14.w = (int)r14.w + 1;
            }
          } else {
            r22.z = (uint)r13.w;
            r14.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r12.w).x;
          }
          r10.w = r14.z * r14.z;
          r10.w = r10.w * r14.z;
        } else {
          r10.w = 1;
        }
        r8.w = r10.w * r8.w;
      } else {
        r10.w = viewmodelSunShadowRaw & 0x0000ffff;
        r12.w = cmp(0 < (uint)r10.w);
        r13.w = ~(int)r1.z;
        r12.w = r12.w ? r13.w : 0;
        if (r12.w != 0) {
          r10.w = (int)r10.w + numLights;
          r10.w = mad((int)r10.w, 15, -15);
          r12.w = abs(r4.z) * -0.200000003 + 0.400000006;
          r13.w = cmp(r4.z < 0);
          r13.w = r3.z ? r13.w : 0;
          r12.w = r13.w ? -r12.w : r12.w;
          r22.xyz = r12.xyz * r12.www + r11.xyz;
          r23.xyz = lightConstantsCB[r10.w].data[4].yzw;
          r23.w = lightConstantsCB[r10.w].data[5].x;
          r22.w = 1;
          r23.x = dot(r23.xyzw, r22.xyzw);
          r24.xyz = lightConstantsCB[r10.w].data[5].yzw;
          r24.w = lightConstantsCB[r10.w].data[6].x;
          r23.y = dot(r24.xyzw, r22.xyzw);
          r14.zw = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r23.x = lightConstantsCB[r10.w].data[9].w + r14.z;
          r23.y = lightConstantsCB[r10.w].data[10].x + r14.w;
          r14.zw = lightConstantsCB[r10.w].data[9].yz * r23.xy;
          r23.xy = lightConstantsCB[r10.w].data[3].yy / lightConstantsCB[r10.w].data[8].yw;
          r23.zw = float2(1,1) + -r23.xy;
          r23.zw = cmp(r14.zw >= r23.zw);
          r23.xy = cmp(r23.xy >= r14.zw);
          r23.xy = (int2)r23.xy | (int2)r23.zw;
          r12.w = (int)r23.y | (int)r23.x;
          if (r12.w == 0) {
            r23.xyz = lightConstantsCB[r10.w].data[6].yzw;
            r23.w = lightConstantsCB[r10.w].data[7].x;
            r12.w = dot(r23.xyzw, r22.xyzw);
            r14.zw = saturate(r14.zw);
            r22.x = r14.z * lightConstantsCB[r10.w].data[8].y + lightConstantsCB[r10.w].data[8].z;
            r22.y = r14.w * lightConstantsCB[r10.w].data[8].w + lightConstantsCB[r10.w].data[9].x;
            r12.w = lightConstantsCB[r10.w].data[10].y + r12.w;
            r12.w = r12.w / lightConstantsCB[r10.w].data[10].z;
            r12.w = max(6.10351563e-05, r12.w);
            r13.w = 0x0000ffff & (int)lightConstantsCB[r10.w].data[1].w;
            if (enableDitheredShadow != 0) {
              r23.x = -r4.x;
              r24.z = (uint)r13.w;
              r23.y = r13.x;
              r23.z = r4.x;
              r14.zw = float2(0,0);
              while (true) {
                r16.w = cmp((int)r14.w >= 8);
                if (r16.w != 0) break;
                r25.x = dot(icb[r14.w+0].yx, r23.xy);
                r25.y = dot(icb[r14.w+0].yx, r23.yz);
                r24.xy = r25.xy * lightConstantsCB[r10.w].data[3].yy + r22.xy;
                r16.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r12.w).x;
                r14.z = r16.w * 0.125 + r14.z;
                r14.w = (int)r14.w + 1;
              }
            } else {
              r22.z = (uint)r13.w;
              r14.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r12.w).x;
            }
            r10.w = r14.z * r14.z;
            r10.w = r10.w * r14.z;
          } else {
            r10.w = 1;
          }
          r8.w = r10.w * r8.w;
        }
      }
      r10.w = -r2.x * 0.5 + 1;
      r10.w = -r6.w * r10.w + 1;
      r10.w = r10.w * r10.w;
      r10.w = -r10.w * 0.620000005 + 0.620000005;
      r10.w = r10.w + -r6.w;
      r6.w = r2.z * r10.w + r6.w;
      r6.w = r6.w * r8.w;
      r22.xyz = r6.www * r21.xyz;
      r4.z = cmp(0 < r4.z);
      r22.xyz = r15.yzw * r5.xxx + r22.xyz;
      r15.yzw = -r11.xyz * r0.www + sunConstants.wldDir.xyz;
      r0.w = dot(r15.yzw, r15.yzw);
      r0.w = rsqrt(r0.w);
      r15.yzw = r15.yzw * r0.www;
      r0.w = dot(r15.yzw, r5.yzw);
      r5.x = dot(r12.xyz, r15.yzw);
      r10.w = abs(r5.x) * r1.w + -abs(r5.x);
      r5.x = abs(r5.x) * r10.w + 1;
      r4.w = r4.w * r2.y + r7.w;
      r5.x = r5.x * r5.x;
      r4.w = r5.x * r4.w;
      r4.w = rcp(r4.w);
      r4.w = r4.w * r9.w;
      r4.w = r8.w * r4.w;
      r4.w = 0.25 * r4.w;
      r23.yzw = r4.www * r21.xyz + r19.xyz;
      r0.w = saturate(1 + -r0.w);
      r5.x = r0.w * r0.w;
      r5.x = r5.x * r5.x;
      r0.w = r5.x * r0.w;
      r0.w = r4.w * r0.w;
      r15.yzw = r0.www * r21.xyz + r20.xyz;
      r21.xyz = r6.www * r21.xyz + r18.zxy;
      r21.xyz = r3.zzz ? r21.yzx : 0;
      r22.w = r18.z;
      r17.w = r21.z;
      r17.xyzw = r4.zzzz ? r22.xyzw : r17.xyzw;
      r18.zw = r15.yz;
      r21.zw = r20.xy;
      r21.xyzw = r4.zzzz ? r18.xyzw : r21.xyzw;
      r23.x = r15.w;
      r19.w = r20.z;
      r19.xyzw = r4.zzzz ? r23.yzwx : r19.xyzw;
      if (r2.w != 0) {
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r0.w, cb2[52].x, l(112), u2.xxxx
      r0.w = samp0[]..swiz;
        r0.w = (int)r0.w | 8;
        GBufferDiffuseColor[viewID].112 = u2.x;
        GBufferDiffuseColor[viewID].132 = u2.x;
      }
      r18.z = r17.w;
      r18.xy = r21.xy;
      r20.xy = r21.zw;
      r20.z = r19.w;
      r0.w = 0x00010101;
    } else {
      r0.w = 257;
    }
  } else {
    r0.w = 1;
  }
  r4.z = (uint)r0.x >> 24;
  if (10 == 0) r0.x = 0; else if (10+12 < 32) {   r0.x = (uint)r0.x << (32-(10 + 12)); r0.x = (uint)r0.x >> (32-10);  } else r0.x = (uint)r0.x >> 12;
  r21.x = -r4.x;
  r4.w = ~(int)r1.z;
  r2.x = -r2.x * 0.5 + 1;
  r22.x = 2;
  r23.x = 2;
  r24.w = 1;
  r21.z = r4.x;
  r25.w = 1;
  r26.z = 1;
  r27.w = 1;
  r21.yw = r13.xx;
  r4.y = r21.w;
  r28.w = 1;
  r13.y = r21.x;
  r13.z = r4.x;
  r29.w = 1;
  r30.x = r13.x;
  r30.y = r21.x;
  r30.z = r4.x;
  r31.x = r13.x;
  r31.y = r21.x;
  r31.z = r4.x;
  r32.x = r13.x;
  r32.y = r21.x;
  r32.z = r4.x;
  r15.yzw = r17.xyz;
  r33.xyz = r18.zxy;
  r34.xyz = r20.xyz;
  r35.xyz = r19.xyz;
  r5.x = r0.w;
  r6.w = 0;
  while (true) {
    r8.w = cmp((int)r6.w == 2);
    if (r8.w != 0) break;
    r8.w = r6.w ? r0.x : r4.z;
    r8.w = (int)r8.w * 15;
    if (3 == 0) r9.w = 0; else if (3+24 < 32) {     r9.w = (uint)lightConstantsCB[r8.w].data[1].w << (32-(3 + 24)); r9.w = (uint)r9.w >> (32-3);    } else r9.w = (uint)lightConstantsCB[r8.w].data[1].w >> 24;
    switch (r9.w) {
      case 4 :      if (r2.w != 0) {
        r9.w = (int)r5.x & 7;
        r9.w = mad((int)r9.w, 24, 112);
        r22.yzw = lightConstantsCB[r8.w].data[0].xyz + eyeOffset.xyz;
        GBufferDiffuseColor[viewID].r9.w = u2.xyzw;
      }
      r9.w = (int)r5.x + 1;
      r10.w = cmp(0 < lightConstantsCB[r8.w].data[6].y);
      r36.xy = lightConstantsCB[r8.w].data[5].zw;
      r36.z = lightConstantsCB[r8.w].data[6].x;
      r22.yzw = -r36.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r8.w].data[0].xyz;
      r37.xyz = r22.yzw + -r11.xyz;
      r12.w = dot(r36.xyz, r37.xyz);
      r13.w = saturate(-r12.w / lightConstantsCB[r8.w].data[6].y);
      r38.xyz = r13.www * r36.xyz + r22.yzw;
      r38.xyz = r10.www ? r38.xyz : lightConstantsCB[r8.w].data[0].xyz;
      r38.xyz = r38.xyz + -r11.xyz;
      r14.z = dot(r38.xyz, r38.xyz);
      r14.w = rsqrt(r14.z);
      r38.xyz = r38.xyz * r14.www;
      r14.w = dot(r12.xyz, r38.xyz);
      r16.w = saturate(r14.w);
      r16.w = r3.z ? abs(r14.w) : r16.w;
      r17.w = cmp(0 < r16.w);
      if (r17.w != 0) {
        r17.w = sqrt(r14.z);
        r18.w = lightConstantsCB[r8.w].data[3].x * lightConstantsCB[r8.w].data[3].x;
        r14.z = r18.w / r14.z;
        r14.z = min(1, r14.z);
        r38.xy = saturate(r17.ww * lightConstantsCB[r8.w].data[2].xz + lightConstantsCB[r8.w].data[2].yw);
        r38.zw = r38.xy * r38.xy;
        r38.xy = r38.xy * float2(-2,-2) + float2(3,3);
        r38.xy = r38.zw * r38.xy;
        r14.z = r38.x * r14.z;
        r14.z = r14.z * r38.y;
        r17.w = cmp(0 < r14.z);
        if (r17.w != 0) {
          if (3 == 0) r17.w = 0; else if (3+27 < 32) {           r17.w = (uint)lightConstantsCB[r8.w].data[1].w << (32-(3 + 27)); r17.w = (uint)r17.w >> (32-3);          } else r17.w = (uint)lightConstantsCB[r8.w].data[1].w >> 27;
          r18.w = (int)r9.w & 15;
          r19.w = (int)r18.w + -1;
          r19.w = cmp((uint)r19.w < 32);
          r19.w = r19.w ? r2.w : 0;
          if (r19.w != 0) {
            r38.xy = mad((int2)r18.ww, int2(24,24), int2(88,104));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r18.w, cb2[52].x, r38.x, u2.xxxx
          r18.w = samp0[]..swiz;
            r18.w = (int)r18.w | 4;
            GBufferDiffuseColor[viewID].r38.x = u2.x;
            GBufferDiffuseColor[viewID].r38.y = u2.x;
          }
          r18.w = (int)r5.x + 257;
          r17.w = cmp((int)r17.w != 1);
          if (r17.w != 0) {
            r17.w = abs(r14.w) * -0.200000003 + 0.400000006;
            r19.w = cmp(r14.w < 0);
            r19.w = r3.z ? r19.w : 0;
            r17.w = r19.w ? -r17.w : r17.w;
            r38.xyz = r12.xyz * r17.www + r11.xyz;
            r38.xyz = -lightConstantsCB[r8.w].data[4].yzw + r38.xyz;
            r17.w = max(abs(r38.y), abs(r38.z));
            r17.w = max(abs(r38.x), r17.w);
            r17.w = lightConstantsCB[r8.w].data[5].x / r17.w;
            r17.w = lightConstantsCB[r8.w].data[5].y + r17.w;
            r19.w = dot(r38.xyz, r38.xyz);
            r19.w = rsqrt(r19.w);
            r17.w = max(6.10351563e-05, r17.w);
            r20.w = 0x0000ffff & (int)lightConstantsCB[r8.w].data[1].w;
            r39.w = (uint)r20.w;
            r20.w = 0;
            r26.w = 0;
            while (true) {
              r30.w = cmp((int)r26.w >= 8);
              if (r30.w != 0) break;
              r40.y = dot(icb[r26.w+0].yx, r21.xy);
              r40.z = dot(icb[r26.w+0].yx, r21.yz);
              r40.yz = lightConstantsCB[r8.w].data[3].yy * r40.yz;
              r40.x = r40.y * r15.x;
              r40.w = r40.y * r14.x;
              r39.xyz = r38.xyz * r19.www + r40.xzw;
              r30.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r39.xyzw, r17.w).x;
              r20.w = r30.w * 0.125 + r20.w;
              r26.w = (int)r26.w + 1;
            }
          } else {
            r20.w = 1;
          }
          r14.z = r20.w * r14.z;
          r17.w = cmp(0 < r14.z);
          if (r17.w != 0) {
            r17.w = lightConstantsCB[r8.w].data[1].z * r1.w;
            r17.w = 0.25 * r17.w;
            r19.w = dot(r36.xyz, r16.xyz);
            r26.w = dot(r16.xyz, r37.xyz);
            r30.w = -r19.w * r19.w + lightConstantsCB[r8.w].data[6].y;
            r12.w = r19.w * r26.w + -r12.w;
            r12.w = saturate(r12.w / r30.w);
            r19.w = r30.w / lightConstantsCB[r8.w].data[6].y;
            r19.w = 10 * r19.w;
            r19.w = min(1, r19.w);
            r12.w = r12.w + -r13.w;
            r12.w = r19.w * r12.w + r13.w;
            r22.yzw = r12.www * r36.xyz + r22.yzw;
            r22.yzw = r10.www ? r22.yzw : lightConstantsCB[r8.w].data[0].xyz;
            r22.yzw = r22.yzw + -r11.xyz;
            r10.w = dot(r22.yzw, r22.yzw);
            r10.w = rsqrt(r10.w);
            r36.xyz = r22.yzw * r10.www;
            if (4 == 0) r12.w = 0; else if (4+16 < 32) {             r12.w = (uint)lightConstantsCB[r8.w].data[1].w << (32-(4 + 16)); r12.w = (uint)r12.w >> (32-4);            } else r12.w = (uint)lightConstantsCB[r8.w].data[1].w >> 16;
            r13.w = cmp(0 < (uint)r12.w);
            r13.w = r13.w ? r1.z : 0;
            if (r13.w != 0) {
              r12.w = (int)r12.w + numLights;
              r12.w = mad((int)r12.w, 15, -15);
              r13.w = abs(r14.w) * -0.200000003 + 0.400000006;
              r19.w = cmp(r14.w < 0);
              r19.w = r3.z ? r19.w : 0;
              r13.w = r19.w ? -r13.w : r13.w;
              r24.xyz = r12.xyz * r13.www + r11.xyz;
              r37.xyz = lightConstantsCB[r12.w].data[6].yzw;
              r37.w = lightConstantsCB[r12.w].data[7].x;
              r13.w = dot(r37.xyzw, r24.xyzw);
              r37.xyz = lightConstantsCB[r12.w].data[7].yzw;
              r37.w = lightConstantsCB[r12.w].data[8].x;
              r19.w = dot(r37.xyzw, r24.xyzw);
              r26.w = cmp(r19.w < r13.w);
              if (r26.w == 0) {
                r37.xyz = lightConstantsCB[r12.w].data[4].yzw;
                r37.w = lightConstantsCB[r12.w].data[5].x;
                r37.x = dot(r37.xyzw, r24.xyzw);
                r38.xyz = lightConstantsCB[r12.w].data[5].yzw;
                r38.w = lightConstantsCB[r12.w].data[6].x;
                r37.y = dot(r38.xyzw, r24.xyzw);
                r24.xy = r37.xy / r19.ww;
                r24.xy = r24.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r37.x = lightConstantsCB[r12.w].data[9].w + r24.x;
                r37.y = lightConstantsCB[r12.w].data[10].x + r24.y;
                r24.xy = lightConstantsCB[r12.w].data[9].yz * r37.xy;
                r37.xy = lightConstantsCB[r12.w].data[3].yy / lightConstantsCB[r12.w].data[8].yw;
                r37.zw = float2(1,1) + -r37.xy;
                r37.zw = cmp(r24.xy >= r37.zw);
                r37.xy = cmp(r37.xy >= r24.xy);
                r37.xy = (int2)r37.xy | (int2)r37.zw;
                r24.z = (int)r37.y | (int)r37.x;
                if (r24.z == 0) {
                  r24.xy = saturate(r24.xy);
                  r37.x = r24.x * lightConstantsCB[r12.w].data[8].y + lightConstantsCB[r12.w].data[8].z;
                  r37.y = r24.y * lightConstantsCB[r12.w].data[8].w + lightConstantsCB[r12.w].data[9].x;
                  r24.x = lightConstantsCB[r12.w].data[10].z * r19.w;
                  r13.w = lightConstantsCB[r12.w].data[10].y * r19.w + r13.w;
                  r13.w = r13.w / r24.x;
                }
              } else {
                r24.z = -1;
              }
              r19.w = (int)r26.w | (int)r24.z;
              if (r19.w == 0) {
                r13.w = max(6.10351563e-05, r13.w);
                r19.w = 0x0000ffff & (int)lightConstantsCB[r12.w].data[1].w;
                if (enableDitheredShadow != 0) {
                  r24.z = (uint)r19.w;
                  r26.w = 0;
                  r30.w = 0;
                  while (true) {
                    r31.w = cmp((int)r30.w >= 8);
                    if (r31.w != 0) break;
                    r38.x = dot(icb[r30.w+0].yx, r21.xw);
                    r38.y = dot(icb[r30.w+0].xy, r4.xy);
                    r24.xy = r38.xy * lightConstantsCB[r12.w].data[3].yy + r37.xy;
                    r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r13.w).x;
                    r26.w = r24.x * 0.125 + r26.w;
                    r30.w = (int)r30.w + 1;
                  }
                } else {
                  r37.z = (uint)r19.w;
                  r26.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r37.xyz, r13.w).x;
                }
                r12.w = r26.w * r26.w;
                r12.w = r12.w * r26.w;
              } else {
                r12.w = 1;
              }
              r14.z = r14.z * r12.w;
            } else {
              if (4 == 0) r12.w = 0; else if (4+20 < 32) {               r12.w = (uint)lightConstantsCB[r8.w].data[1].w << (32-(4 + 20)); r12.w = (uint)r12.w >> (32-4);              } else r12.w = (uint)lightConstantsCB[r8.w].data[1].w >> 20;
              r13.w = cmp(0 < (uint)r12.w);
              r13.w = r13.w ? r4.w : 0;
              if (r13.w != 0) {
                r12.w = (int)r12.w + numLights;
                r12.w = mad((int)r12.w, 15, -15);
                r13.w = abs(r14.w) * -0.200000003 + 0.400000006;
                r19.w = cmp(r14.w < 0);
                r19.w = r3.z ? r19.w : 0;
                r13.w = r19.w ? -r13.w : r13.w;
                r25.xyz = r12.xyz * r13.www + r11.xyz;
                r37.xyz = lightConstantsCB[r12.w].data[6].yzw;
                r37.w = lightConstantsCB[r12.w].data[7].x;
                r13.w = dot(r37.xyzw, r25.xyzw);
                r37.xyz = lightConstantsCB[r12.w].data[7].yzw;
                r37.w = lightConstantsCB[r12.w].data[8].x;
                r19.w = dot(r37.xyzw, r25.xyzw);
                r24.x = cmp(r19.w < r13.w);
                if (r24.x == 0) {
                  r37.xyz = lightConstantsCB[r12.w].data[4].yzw;
                  r37.w = lightConstantsCB[r12.w].data[5].x;
                  r37.x = dot(r37.xyzw, r25.xyzw);
                  r38.xyz = lightConstantsCB[r12.w].data[5].yzw;
                  r38.w = lightConstantsCB[r12.w].data[6].x;
                  r37.y = dot(r38.xyzw, r25.xyzw);
                  r24.yz = r37.xy / r19.ww;
                  r24.yz = r24.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                  r25.x = lightConstantsCB[r12.w].data[9].w + r24.y;
                  r25.y = lightConstantsCB[r12.w].data[10].x + r24.z;
                  r24.yz = lightConstantsCB[r12.w].data[9].yz * r25.xy;
                  r25.xy = lightConstantsCB[r12.w].data[3].yy / lightConstantsCB[r12.w].data[8].yw;
                  r37.xy = float2(1,1) + -r25.xy;
                  r37.xy = cmp(r24.yz >= r37.xy);
                  r25.xy = cmp(r25.xy >= r24.yz);
                  r25.xy = (int2)r25.xy | (int2)r37.xy;
                  r25.x = (int)r25.y | (int)r25.x;
                  if (r25.x == 0) {
                    r24.yz = saturate(r24.yz);
                    r37.x = r24.y * lightConstantsCB[r12.w].data[8].y + lightConstantsCB[r12.w].data[8].z;
                    r37.y = r24.z * lightConstantsCB[r12.w].data[8].w + lightConstantsCB[r12.w].data[9].x;
                    r24.y = lightConstantsCB[r12.w].data[10].z * r19.w;
                    r13.w = lightConstantsCB[r12.w].data[10].y * r19.w + r13.w;
                    r13.w = r13.w / r24.y;
                  }
                } else {
                  r25.x = -1;
                }
                r19.w = (int)r24.x | (int)r25.x;
                if (r19.w == 0) {
                  r13.w = max(6.10351563e-05, r13.w);
                  r19.w = 0x0000ffff & (int)lightConstantsCB[r12.w].data[1].w;
                  if (enableDitheredShadow != 0) {
                    r24.z = (uint)r19.w;
                    r25.xy = float2(0,0);
                    while (true) {
                      r25.z = cmp((int)r25.y >= 8);
                      if (r25.z != 0) break;
                      r38.x = dot(icb[r25.y+0].xy, r13.xy);
                      r38.y = dot(icb[r25.y+0].yx, r13.xz);
                      r24.xy = r38.xy * lightConstantsCB[r12.w].data[3].yy + r37.xy;
                      r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r13.w).x;
                      r25.x = r24.x * 0.125 + r25.x;
                      r25.y = (int)r25.y + 1;
                    }
                  } else {
                    r37.z = (uint)r19.w;
                    r25.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r37.xyz, r13.w).x;
                  }
                  r12.w = r25.x * r25.x;
                  r12.w = r12.w * r25.x;
                } else {
                  r12.w = 1;
                }
                r14.z = r14.z * r12.w;
              }
            }
            r12.w = -r16.w * r2.x + 1;
            r12.w = r12.w * r12.w;
            r12.w = -r12.w * 0.620000005 + 0.620000005;
            r12.w = r12.w + -r16.w;
            r12.w = r2.z * r12.w + r16.w;
            r12.w = r12.w * r14.z;
            r24.x = lightConstantsCB[r8.w].data[0].w;
            r24.yz = lightConstantsCB[r8.w].data[1].xy;
            r13.w = cmp(0 < r14.w);
            r37.xyz = r12.www * r24.xyz + r15.yzw;
            r14.w = saturate(dot(r12.xyz, r36.xyz));
            r22.yzw = r22.yzw * r10.www + r5.yzw;
            r10.w = dot(r22.yzw, r22.yzw);
            r10.w = rsqrt(r10.w);
            r22.yzw = r22.yzw * r10.www;
            r10.w = dot(r22.yzw, r5.yzw);
            r16.w = dot(r12.xyz, r22.yzw);
            r19.w = abs(r16.w) * r1.w + -abs(r16.w);
            r16.w = abs(r16.w) * r19.w + 1;
            r19.w = r14.w * r2.y + r7.w;
            r16.w = r16.w * r16.w;
            r16.w = r16.w * r19.w;
            r16.w = rcp(r16.w);
            r14.w = r14.w * r17.w;
            r14.w = r16.w * r14.w;
            r14.w = r14.w * r14.z;
            r22.yzw = r14.www * r24.xyz + r35.xyz;
            r10.w = saturate(1 + -r10.w);
            r16.w = r10.w * r10.w;
            r16.w = r16.w * r16.w;
            r10.w = r16.w * r10.w;
            r10.w = r14.w * r10.w;
            r36.xyz = r10.www * r24.xyz + r34.xyz;
            r24.xyz = r12.www * r24.xyz + r33.xyz;
            r24.xyz = r3.zzz ? r24.xyz : r33.xyz;
            r15.yzw = r13.www ? r37.xyz : r15.yzw;
            r33.xyz = r13.www ? r33.xyz : r24.xyz;
            r34.xyz = r13.www ? r36.xyz : r34.xyz;
            r35.xyz = r13.www ? r22.yzw : r35.xyz;
            r10.w = (int)r18.w & 15;
            r12.w = (int)r10.w + -1;
            r12.w = cmp((uint)r12.w < 32);
            r12.w = r12.w ? r2.w : 0;
            if (r12.w != 0) {
              r22.yz = mad((int2)r10.ww, int2(24,24), int2(88,108));
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r10.w, cb2[52].x, r22.y, u2.xxxx
            r10.w = samp0[]..swiz;
              r10.w = (int)r10.w | 8;
              GBufferDiffuseColor[viewID].r22.y = u2.x;
              GBufferDiffuseColor[viewID].r22.z = u2.x;
            }
            r5.x = (int)r5.x + 0x00010101;
          } else {
            r5.x = r18.w;
          }
        } else {
          r5.x = r9.w;
        }
      } else {
        r5.x = r9.w;
      }
      break;
      case 2 :      if (r2.w != 0) {
        r9.w = (int)r5.x & 7;
        r9.w = mad((int)r9.w, 24, 112);
        r23.yzw = lightConstantsCB[r8.w].data[0].xyz + eyeOffset.xyz;
        GBufferDiffuseColor[viewID].r9.w = u2.xyzw;
      }
      r9.w = (int)r5.x + 1;
      r24.xy = lightConstantsCB[r8.w].data[3].zw + -r11.xy;
      r24.z = lightConstantsCB[r8.w].data[4].x + -r11.z;
      r10.w = dot(r24.xyz, r24.xyz);
      r10.w = rsqrt(r10.w);
      r22.yzw = r24.xyz * r10.www;
      r12.w = dot(r12.xyz, r22.yzw);
      r13.w = saturate(r12.w);
      r14.z = r3.z ? abs(r12.w) : r13.w;
      r14.w = cmp(0 < r14.z);
      if (r14.w != 0) {
        r36.xyz = lightConstantsCB[r8.w].data[7].yzw;
        r36.w = lightConstantsCB[r8.w].data[8].x;
        r14.w = dot(r36.xyzw, r11.xyzw);
        r16.w = cmp(r14.w < 1);
        if (r16.w != 0) {
          r22.yzw = float3(1,1,1);
          r16.w = 0;
        } else {
          r23.yzw = lightConstantsCB[r8.w].data[0].xyz + -r11.xyz;
          r17.w = lightConstantsCB[r8.w].data[3].x * lightConstantsCB[r8.w].data[3].x;
          r18.w = dot(r23.yzw, r23.yzw);
          r17.w = r17.w / r18.w;
          r17.w = min(1, r17.w);
          r23.yz = saturate(r14.ww * lightConstantsCB[r8.w].data[2].xz + lightConstantsCB[r8.w].data[2].yw);
          r25.yz = r23.yz * r23.yz;
          r23.yz = r23.yz * float2(-2,-2) + float2(3,3);
          r23.yz = r25.yz * r23.yz;
          r17.w = r23.y * r17.w;
          r17.w = r17.w * r23.z;
          r37.xyz = lightConstantsCB[r8.w].data[4].yzw;
          r37.w = lightConstantsCB[r8.w].data[5].x;
          r37.x = dot(r37.xyzw, r11.xyzw);
          r38.xyz = lightConstantsCB[r8.w].data[5].yzw;
          r38.w = lightConstantsCB[r8.w].data[6].x;
          r37.y = dot(r38.xyzw, r11.xyzw);
          r26.xy = r37.xy / r14.ww;
          r14.w = cmp(lightConstantsCB[r8.w].data[10].w < 0.00048828125);
          if (r14.w != 0) {
            r23.yz = saturate(abs(r26.xy) * lightConstantsCB[r8.w].data[12].xy + lightConstantsCB[r8.w].data[12].zw);
            r25.yz = r23.yz * r23.yz;
            r23.yz = r23.yz * float2(-2,-2) + float2(3,3);
            r23.yz = r25.yz * r23.yz;
            r14.w = r23.y * r23.z;
          } else {
            r37.xyzw = saturate(lightConstantsCB[r8.w].data[11].xyzw * abs(r26.yyxx));
            r37.xyzw = log2(r37.xyzw);
            r37.xyzw = lightConstantsCB[r8.w].data[12].zzzz * r37.xyzw;
            r37.xyzw = exp2(r37.xyzw);
            r23.yz = r37.xy + r37.zw;
            r23.yz = log2(r23.yz);
            r23.yz = lightConstantsCB[r8.w].data[12].ww * r23.yz;
            r23.yz = exp2(r23.yz);
            r18.w = lightConstantsCB[r8.w].data[12].x * r23.y;
            r19.w = lightConstantsCB[r8.w].data[12].y * r23.z + -1;
            r18.w = lightConstantsCB[r8.w].data[12].y * r23.z + -r18.w;
            r18.w = saturate(r19.w / r18.w);
            r19.w = r18.w * r18.w;
            r18.w = r18.w * -2 + 3;
            r14.w = r19.w * r18.w;
          }
          r16.w = r17.w * r14.w;
          r14.w = 255 & (int)lightConstantsCB[r8.w].data[14].w;
          if (r14.w != 0) {
            r17.w = dot(lightConstantsCB[r8.w].data[13].xyz, r26.xyz);
            r37.x = lightConstantsCB[r8.w].data[13].w;
            r37.yz = lightConstantsCB[r8.w].data[14].xy;
            r18.w = dot(r37.xyz, r26.xyz);
            r37.x = frac(r17.w);
            r37.y = frac(r18.w);
            r14.w = (int)r14.w + -1;
            r37.z = (uint)r14.w;
            r22.yzw = gCookieArray.SampleLevel(samplerLinear_s, r37.xyz, 0).xyz;
          } else {
            r22.yzw = float3(1,1,1);
          }
        }
        r37.x = lightConstantsCB[r8.w].data[0].w;
        r37.yz = lightConstantsCB[r8.w].data[1].xy;
        r22.yzw = r37.xyz * r22.yzw;
        r14.w = cmp(0 < r16.w);
        if (r14.w != 0) {
          if (3 == 0) r14.w = 0; else if (3+27 < 32) {           r14.w = (uint)lightConstantsCB[r8.w].data[1].w << (32-(3 + 27)); r14.w = (uint)r14.w >> (32-3);          } else r14.w = (uint)lightConstantsCB[r8.w].data[1].w >> 27;
          r17.w = (int)r9.w & 15;
          r18.w = (int)r17.w + -1;
          r18.w = cmp((uint)r18.w < 32);
          r18.w = r18.w ? r2.w : 0;
          if (r18.w != 0) {
            r23.yz = mad((int2)r17.ww, int2(24,24), int2(88,104));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r17.w, cb2[52].x, r23.y, u2.xxxx
          r17.w = samp0[]..swiz;
            r17.w = (int)r17.w | 4;
            GBufferDiffuseColor[viewID].r23.y = u2.x;
            GBufferDiffuseColor[viewID].r23.z = u2.x;
          }
          r17.w = (int)r5.x + 257;
          r14.w = cmp((int)r14.w != 1);
          if (r14.w != 0) {
            r14.w = abs(r12.w) * -0.200000003 + 0.400000006;
            r18.w = cmp(r12.w < 0);
            r18.w = r3.z ? r18.w : 0;
            r14.w = r18.w ? -r14.w : r14.w;
            r27.xyz = r12.xyz * r14.www + r11.xyz;
            r37.xyz = lightConstantsCB[r8.w].data[6].yzw;
            r37.w = lightConstantsCB[r8.w].data[7].x;
            r14.w = dot(r37.xyzw, r27.xyzw);
            r18.w = dot(r36.xyzw, r27.xyzw);
            r19.w = cmp(r18.w >= r14.w);
            if (r19.w != 0) {
              r36.xyz = lightConstantsCB[r8.w].data[4].yzw;
              r36.w = lightConstantsCB[r8.w].data[5].x;
              r26.x = dot(r36.xyzw, r27.xyzw);
              r36.xyz = lightConstantsCB[r8.w].data[5].yzw;
              r36.w = lightConstantsCB[r8.w].data[6].x;
              r26.y = dot(r36.xyzw, r27.xyzw);
              r23.yz = r26.xy / r18.ww;
              r23.yz = saturate(r23.yz * float2(0.5,-0.5) + float2(0.5,0.5));
              r27.x = r23.y * lightConstantsCB[r8.w].data[8].y + lightConstantsCB[r8.w].data[8].z;
              r27.y = r23.z * lightConstantsCB[r8.w].data[8].w + lightConstantsCB[r8.w].data[9].x;
              r14.w = r14.w / r18.w;
              r14.w = max(6.10351563e-05, r14.w);
              r18.w = 0x0000ffff & (int)lightConstantsCB[r8.w].data[1].w;
              if (enableDitheredShadow != 0) {
                r36.z = (uint)r18.w;
                r19.w = 0;
                r23.y = 0;
                while (true) {
                  r23.z = cmp((int)r23.y >= 8);
                  if (r23.z != 0) break;
                  r26.x = dot(icb[r23.y+0].xy, r30.xy);
                  r26.y = dot(icb[r23.y+0].yx, r30.xz);
                  r36.xy = r26.xy * lightConstantsCB[r8.w].data[3].yy + r27.xy;
                  r23.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r36.xyz, r14.w).x;
                  r19.w = r23.z * 0.125 + r19.w;
                  r23.y = (int)r23.y + 1;
                }
              } else {
                r27.z = (uint)r18.w;
                r19.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r27.xyz, r14.w).x;
              }
              r14.w = r19.w * r19.w;
              r14.w = r14.w * r19.w;
            } else {
              r14.w = 1;
            }
          } else {
            r14.w = 1;
          }
          r14.w = r16.w * r14.w;
          r16.w = cmp(0 < r14.w);
          if (r16.w != 0) {
            r16.w = lightConstantsCB[r8.w].data[1].z * r1.w;
            r16.w = r16.w * r13.w;
            if (4 == 0) r18.w = 0; else if (4+16 < 32) {             r18.w = (uint)lightConstantsCB[r8.w].data[1].w << (32-(4 + 16)); r18.w = (uint)r18.w >> (32-4);            } else r18.w = (uint)lightConstantsCB[r8.w].data[1].w >> 16;
            r23.y = cmp(0 < (uint)r18.w);
            r23.y = r23.y ? r1.z : 0;
            if (r23.y != 0) {
              r18.w = (int)r18.w + numLights;
              r18.w = mad((int)r18.w, 15, -15);
              r23.y = abs(r12.w) * -0.200000003 + 0.400000006;
              r23.z = cmp(r12.w < 0);
              r23.z = r3.z ? r23.z : 0;
              r23.y = r23.z ? -r23.y : r23.y;
              r28.xyz = r12.xyz * r23.yyy + r11.xyz;
              r36.xyz = lightConstantsCB[r18.w].data[6].yzw;
              r36.w = lightConstantsCB[r18.w].data[7].x;
              r23.y = dot(r36.xyzw, r28.xyzw);
              r36.xyz = lightConstantsCB[r18.w].data[7].yzw;
              r36.w = lightConstantsCB[r18.w].data[8].x;
              r23.z = dot(r36.xyzw, r28.xyzw);
              r23.w = cmp(r23.z < r23.y);
              if (r23.w == 0) {
                r36.xyz = lightConstantsCB[r18.w].data[4].yzw;
                r36.w = lightConstantsCB[r18.w].data[5].x;
                r26.x = dot(r36.xyzw, r28.xyzw);
                r36.xyz = lightConstantsCB[r18.w].data[5].yzw;
                r36.w = lightConstantsCB[r18.w].data[6].x;
                r26.y = dot(r36.xyzw, r28.xyzw);
                r25.yz = r26.xy / r23.zz;
                r25.yz = r25.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                r26.x = lightConstantsCB[r18.w].data[9].w + r25.y;
                r26.y = lightConstantsCB[r18.w].data[10].x + r25.z;
                r25.yz = lightConstantsCB[r18.w].data[9].yz * r26.xy;
                r26.xy = lightConstantsCB[r18.w].data[3].yy / lightConstantsCB[r18.w].data[8].yw;
                r27.xy = float2(1,1) + -r26.xy;
                r27.xy = cmp(r25.yz >= r27.xy);
                r26.xy = cmp(r26.xy >= r25.yz);
                r26.xy = (int2)r26.xy | (int2)r27.xy;
                r26.x = (int)r26.y | (int)r26.x;
                if (r26.x == 0) {
                  r25.yz = saturate(r25.yz);
                  r27.x = r25.y * lightConstantsCB[r18.w].data[8].y + lightConstantsCB[r18.w].data[8].z;
                  r27.y = r25.z * lightConstantsCB[r18.w].data[8].w + lightConstantsCB[r18.w].data[9].x;
                  r25.y = lightConstantsCB[r18.w].data[10].z * r23.z;
                  r23.y = lightConstantsCB[r18.w].data[10].y * r23.z + r23.y;
                  r23.y = r23.y / r25.y;
                }
              } else {
                r26.x = -1;
              }
              r23.z = (int)r23.w | (int)r26.x;
              if (r23.z == 0) {
                r23.y = max(6.10351563e-05, r23.y);
                r23.z = 0x0000ffff & (int)lightConstantsCB[r18.w].data[1].w;
                if (enableDitheredShadow != 0) {
                  r28.z = (uint)r23.z;
                  r23.w = 0;
                  r25.y = 0;
                  while (true) {
                    r25.z = cmp((int)r25.y >= 8);
                    if (r25.z != 0) break;
                    r26.x = dot(icb[r25.y+0].xy, r31.xy);
                    r26.y = dot(icb[r25.y+0].yx, r31.xz);
                    r28.xy = r26.xy * lightConstantsCB[r18.w].data[3].yy + r27.xy;
                    r25.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r28.xyz, r23.y).x;
                    r23.w = r25.z * 0.125 + r23.w;
                    r25.y = (int)r25.y + 1;
                  }
                } else {
                  r27.z = (uint)r23.z;
                  r23.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r27.xyz, r23.y).x;
                }
                r18.w = r23.w * r23.w;
                r18.w = r18.w * r23.w;
              } else {
                r18.w = 1;
              }
              r14.w = r18.w * r14.w;
            } else {
              if (4 == 0) r8.w = 0; else if (4+20 < 32) {               r8.w = (uint)lightConstantsCB[r8.w].data[1].w << (32-(4 + 20)); r8.w = (uint)r8.w >> (32-4);              } else r8.w = (uint)lightConstantsCB[r8.w].data[1].w >> 20;
              r18.w = cmp(0 < (uint)r8.w);
              r18.w = r18.w ? r4.w : 0;
              if (r18.w != 0) {
                r8.w = (int)r8.w + numLights;
                r8.w = mad((int)r8.w, 15, -15);
                r18.w = abs(r12.w) * -0.200000003 + 0.400000006;
                r23.y = cmp(r12.w < 0);
                r23.y = r3.z ? r23.y : 0;
                r18.w = r23.y ? -r18.w : r18.w;
                r29.xyz = r12.xyz * r18.www + r11.xyz;
                r36.xyz = lightConstantsCB[r8.w].data[6].yzw;
                r36.w = lightConstantsCB[r8.w].data[7].x;
                r18.w = dot(r36.xyzw, r29.xyzw);
                r36.xyz = lightConstantsCB[r8.w].data[7].yzw;
                r36.w = lightConstantsCB[r8.w].data[8].x;
                r23.y = dot(r36.xyzw, r29.xyzw);
                r23.z = cmp(r23.y < r18.w);
                if (r23.z == 0) {
                  r36.xyz = lightConstantsCB[r8.w].data[4].yzw;
                  r36.w = lightConstantsCB[r8.w].data[5].x;
                  r26.x = dot(r36.xyzw, r29.xyzw);
                  r36.xyz = lightConstantsCB[r8.w].data[5].yzw;
                  r36.w = lightConstantsCB[r8.w].data[6].x;
                  r26.y = dot(r36.xyzw, r29.xyzw);
                  r25.yz = r26.xy / r23.yy;
                  r25.yz = r25.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                  r26.x = lightConstantsCB[r8.w].data[9].w + r25.y;
                  r26.y = lightConstantsCB[r8.w].data[10].x + r25.z;
                  r25.yz = lightConstantsCB[r8.w].data[9].yz * r26.xy;
                  r26.xy = lightConstantsCB[r8.w].data[3].yy / lightConstantsCB[r8.w].data[8].yw;
                  r27.xy = float2(1,1) + -r26.xy;
                  r27.xy = cmp(r25.yz >= r27.xy);
                  r26.xy = cmp(r26.xy >= r25.yz);
                  r26.xy = (int2)r26.xy | (int2)r27.xy;
                  r26.x = (int)r26.y | (int)r26.x;
                  if (r26.x == 0) {
                    r25.yz = saturate(r25.yz);
                    r27.x = r25.y * lightConstantsCB[r8.w].data[8].y + lightConstantsCB[r8.w].data[8].z;
                    r27.y = r25.z * lightConstantsCB[r8.w].data[8].w + lightConstantsCB[r8.w].data[9].x;
                    r25.y = lightConstantsCB[r8.w].data[10].z * r23.y;
                    r18.w = lightConstantsCB[r8.w].data[10].y * r23.y + r18.w;
                    r18.w = r18.w / r25.y;
                  }
                } else {
                  r26.x = -1;
                }
                r23.y = (int)r23.z | (int)r26.x;
                if (r23.y == 0) {
                  r18.w = max(6.10351563e-05, r18.w);
                  r23.y = 0x0000ffff & (int)lightConstantsCB[r8.w].data[1].w;
                  if (enableDitheredShadow != 0) {
                    r28.z = (uint)r23.y;
                    r23.z = 0;
                    r25.y = 0;
                    while (true) {
                      r25.z = cmp((int)r25.y >= 8);
                      if (r25.z != 0) break;
                      r26.x = dot(icb[r25.y+0].xy, r32.xy);
                      r26.y = dot(icb[r25.y+0].yx, r32.xz);
                      r28.xy = r26.xy * lightConstantsCB[r8.w].data[3].yy + r27.xy;
                      r25.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r28.xyz, r18.w).x;
                      r23.z = r25.z * 0.125 + r23.z;
                      r25.y = (int)r25.y + 1;
                    }
                  } else {
                    r27.z = (uint)r23.y;
                    r23.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r27.xyz, r18.w).x;
                  }
                  r8.w = r23.z * r23.z;
                  r8.w = r8.w * r23.z;
                } else {
                  r8.w = 1;
                }
                r14.w = r14.w * r8.w;
              }
            }
            r8.w = -r14.z * r2.x + 1;
            r8.w = r8.w * r8.w;
            r8.w = -r8.w * 0.620000005 + 0.620000005;
            r8.w = r8.w + -r14.z;
            r8.w = r2.z * r8.w + r14.z;
            r8.w = r8.w * r14.w;
            r12.w = cmp(0 < r12.w);
            r27.xyz = r8.www * r22.yzw + r15.yzw;
            r24.xyz = r24.xyz * r10.www + r5.yzw;
            r10.w = dot(r24.xyz, r24.xyz);
            r10.w = rsqrt(r10.w);
            r24.xyz = r24.xyz * r10.www;
            r10.w = dot(r24.xyz, r5.yzw);
            r14.z = dot(r12.xyz, r24.xyz);
            r18.w = abs(r14.z) * r1.w + -abs(r14.z);
            r14.z = abs(r14.z) * r18.w + 1;
            r13.w = r13.w * r2.y + r7.w;
            r14.z = r14.z * r14.z;
            r13.w = r14.z * r13.w;
            r13.w = rcp(r13.w);
            r13.w = r13.w * r16.w;
            r13.w = r14.w * r13.w;
            r13.w = 0.25 * r13.w;
            r24.xyz = r13.www * r22.yzw + r35.xyz;
            r10.w = saturate(1 + -r10.w);
            r14.z = r10.w * r10.w;
            r14.z = r14.z * r14.z;
            r10.w = r14.z * r10.w;
            r10.w = r13.w * r10.w;
            r28.xyz = r10.www * r22.yzw + r34.xyz;
            r22.yzw = r8.www * r22.yzw + r33.xyz;
            r22.yzw = r3.zzz ? r22.yzw : r33.xyz;
            r15.yzw = r12.www ? r27.xyz : r15.yzw;
            r33.xyz = r12.www ? r33.xyz : r22.yzw;
            r34.xyz = r12.www ? r28.xyz : r34.xyz;
            r35.xyz = r12.www ? r24.xyz : r35.xyz;
            r8.w = (int)r17.w & 15;
            r10.w = (int)r8.w + -1;
            r10.w = cmp((uint)r10.w < 32);
            r10.w = r10.w ? r2.w : 0;
            if (r10.w != 0) {
              r22.yz = mad((int2)r8.ww, int2(24,24), int2(88,108));
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r8.w, cb2[52].x, r22.y, u2.xxxx
            r8.w = samp0[]..swiz;
              r8.w = (int)r8.w | 8;
              GBufferDiffuseColor[viewID].r22.y = u2.x;
              GBufferDiffuseColor[viewID].r22.z = u2.x;
            }
            r5.x = (int)r5.x + 0x00010101;
          } else {
            r5.x = r17.w;
          }
        } else {
          r5.x = r9.w;
        }
      } else {
        r5.x = r9.w;
      }
      break;
      default :
      break;
    }
    r6.w = (int)r6.w + 1;
  }
  r4.xyz = r3.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r0.x = (uint)r4.y;
  r2.xyz = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r2.x;
  r0.w = cmp((int)r0.x == (int)r0.w);
  r1.zw = r0.ww ? r2.yz : float2(-1,0);
  r2.xyz = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r2.x;
  r0.w = cmp((int)r0.x == (int)r0.w);
  r2.xy = r0.ww ? r2.yz : float2(-1,0);
  r3.xyw = r9.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r3.x;
  r0.w = cmp((int)r0.x == (int)r0.w);
  r3.xy = r0.ww ? r3.yw : float2(-1,0);
  r5.yzw = r10.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r5.y;
  r0.x = cmp((int)r0.x == (int)r0.w);
  r0.xw = r0.xx ? r5.zw : float2(-1,0);
  r7.x = r1.z;
  r7.y = r2.x;
  r7.z = r3.x;
  r7.w = r0.x;
  r7.xyzw = r7.xyzw + -r4.xxxx;
  r7.xyzw = cmp(abs(r7.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r7.xyzw = r7.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r0.x = r7.x + r7.y;
  r0.x = r0.x + r7.z;
  r0.x = r0.x + r7.w;
  r1.z = r7.y * r2.y;
  r1.z = r7.x * r1.w + r1.z;
  r1.z = r7.z * r3.y + r1.z;
  r0.w = r7.w * r0.w + r1.z;
  r4.w = r0.w / r0.x;
  r0.x = cmp(0 >= r0.x);
  r4.yz = r0.xx ? float2(0,0) : r4.zw;
  r0.xw = (int2)r1.xy & int2(1,1);
  r0.x = cmp((int)r0.w == (int)r0.x);
  r2.xyz = r0.xxx ? r4.xyz : r4.xzy;
  r0.x = -r2.z * 0.5 + r2.x;
  r4.y = r2.z + r0.x;
  r4.z = -r2.y * 0.5 + r0.x;
  r4.x = r4.z + r2.y;
  r2.xyz = r15.yzw * r6.xyz;
  r2.xyz = r33.xyz * r4.xyz + r2.xyz;
  r3.xyw = float3(0.959999979,0.959999979,0.959999979) * r34.xyz;
  r3.xyw = r35.xyz * float3(0.0399999991,0.0399999991,0.0399999991) + r3.xyw;
  r2.xyz = r3.xyw + r2.xyz;
  r3.xyw = float3(1,1,1) + -r4.xyz;
  r3.xyw = r34.xyz * r3.xyw;
  r3.xyw = r35.xyz * r4.xyz + r3.xyw;
  r3.xyw = r15.yzw * r6.xyz + r3.xyw;
  r2.xyz = r3.zzz ? r2.xyz : r3.xyw;
  r0.x = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.x != 0) {
    r0.x = dot(r11.xyz, r11.xyz);
    r0.w = rsqrt(r0.x);
    r3.xyz = r11.xyz * r0.www;
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
      r5.yzw = fogConstants.atmosphereTotalDensity.xyz * r1.www;
      r5.yzw = exp2(r5.yzw);
      r5.yzw = r5.yzw + -r4.xyz;
      r4.xyz = fogConstants.blendAmount * r5.yzw + r4.xyz;
    } else {
      r0.w = r0.x * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r0.w = fogConstants.atmospherefogdensityatcamera.x * r0.w;
      r1.z = cmp(0.00999999978 < abs(r11.z));
      r1.w = fogConstants.atmospherefogheightdensityscale.x * r11.z;
      r3.w = -1.44269502 * r1.w;
      r3.w = exp2(r3.w);
      r3.w = 1 + -r3.w;
      r1.w = r3.w / r1.w;
      r1.w = r1.w * r0.w;
      r0.w = r1.z ? r1.w : r0.w;
      r5.yzw = fogConstants.atmosphereTotalDensity.xyz * r0.www;
      r4.xyz = exp2(r5.yzw);
    }
    r4.xyz = r4.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r4.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r4.xyz);
    r0.w = dot(fogConstants.wldSunFogDir.xyz, -r3.xyz);
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
    r3.xyz = fogConstants.atmosphereMieDensity.xyz * r0.xxx;
    r3.xyz = r0.www * fogConstants.atmosphereRayleighDensity.xyz + r3.xyz;
    r3.xyz = fogConstants.atmosphereInScatterIntensity * r3.xyz;
    r5.yzw = float3(1,1,1) + -r4.xyz;
    r3.xyz = r5.yzw * r3.xyz;
    r3.xyz = r2.xyz * r4.xyz + r3.xyz;
  } else {
    r0.x = fogConstants.heightFalloff * r11.z;
    r0.w = fogConstants.heightFalloff * r11.z + fogConstants.K0;
    r1.z = cmp(abs(r0.x) < 9.99999975e-05);
    r1.w = min(64, r0.w);
    r1.w = 1.44269502 * r1.w;
    r1.w = exp2(r1.w);
    r3.w = saturate(fogConstants.K0b);
    r4.x = cmp(r0.w < 0);
    r0.w = 1 + r0.w;
    r0.w = r4.x ? r1.w : r0.w;
    r0.w = -fogConstants.K0b + r0.w;
    r0.x = r1.z ? 1 : r0.x;
    r0.x = r0.w / r0.x;
    r0.x = r1.z ? r3.w : r0.x;
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
    r4.xyz = r4.xyz + -r2.xyz;
    r3.xyz = r0.xxx * r4.xyz + r2.xyz;
  }
  r2.xyz = relHDRExposure.yyy * r3.xyz;
  r3.xyz = cmp(r2.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r2.xyz = r3.xyz ? r2.xyz : 0;
  r2.xyz = min(float3(65024,65024,64512), r2.xyz);
  r0.x = cmp(0 < permuteHighlight);
  r3.xyzw = permuteHighlight & int4(32,3,64,12);
  r1.zw = cmp((int2)r3.xz != int2(0,0));
  r3.xy = cmp((int2)r3.yw == int2(3,0));
  r1.zw = r1.zw ? r3.xy : 0;
  r3.xy = r1.zw ? float2(0.200000003,0.200000003) : 0;
  r0.w = permuteHighlight & 16;
  r1.z = cmp((int)r0.w != 0);
  r0.w = cmp((int)r0.w == 0);
  r0.w = r0.w ? r1.z : 0;
  r3.z = r0.w ? 0.200000 : 0;
  r3.xyz = r3.xyz * relHDRExposure.xxx + -r2.xyz;
  r3.xyz = r3.xyz * float3(0.5,0.5,0.5) + r2.xyz;
  r2.xyz = r0.xxx ? r3.xyz : r2.xyz;
  if (enableCountDebug != 0) {
    if (debugDrawOverlayType != 0) {
      switch (cb2[53].y) {
        case 1 :        r0.x = (int)r5.x & 7;
        break;
        case 2 :        if (3 == 0) r0.x = 0; else if (3+8 < 32) {         r0.x = (uint)r5.x << (32-(3 + 8)); r0.x = (uint)r0.x >> (32-3);        } else r0.x = (uint)r5.x >> 8;
        break;
        case 3 :        r0.x = (uint)r5.x >> 16;
        break;
        case 4 :        r0.x = (int)r14.y & 255;
        break;
        case 5 :        if (8 == 0) r0.x = 0; else if (8+8 < 32) {         r0.x = (uint)r14.y << (32-(8 + 8)); r0.x = (uint)r0.x >> (32-8);        } else r0.x = (uint)r14.y >> 8;
        break;
        default :
        r0.x = 0;
        break;
      }
      r0.x = (uint)r0.x;
      r0.x = drawNumLighstScale * r0.x;
      r3.xyz = r0.xxx * float3(0.5,0.5,0.5) + -r2.xyz;
      r2.xyz = drawNumLightsAlpha * r3.xyz + r2.xyz;
    }
  }
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xyyy, r2.xyzx
  if (r2.w != 0) {
    r1.xyz = eyeOffset.xyz + r11.xyz;
    r1.w = (int)r5.x & 7;
    GBufferDiffuseColor[viewID].92 = u2.xyzw;
    r0.x = (int)r14.y & 255;
    GBufferDiffuseColor[viewID].108 = u2.x;
  }
  if (enableCountDebug != 0) {
    r0.x = (int)r5.x & 7;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(0), r0.x
    InterlockedAdd(dest, value, orig_value);
    if (3 == 0) r0.w = 0; else if (3+8 < 32) {     r0.w = (uint)r5.x << (32-(3 + 8)); r0.w = (uint)r0.w >> (32-3);    } else r0.w = (uint)r5.x >> 8;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(4), r0.w
    InterlockedAdd(dest, value, orig_value);
    r1.x = (uint)r5.x >> 16;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(8), r1.x
    InterlockedAdd(dest, value, orig_value);
    r1.y = (int)r14.y & 255;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(12), r1.y
    InterlockedAdd(dest, value, orig_value);
    if (8 == 0) r1.z = 0; else if (8+8 < 32) {     r1.z = (uint)r14.y << (32-(8 + 8)); r1.z = (uint)r1.z >> (32-8);    } else r1.z = (uint)r14.y >> 8;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(16), r1.z
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
    atomic_umax g2, l(12), r1.y
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(16), r1.z
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