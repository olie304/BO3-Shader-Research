// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:23:19 2021

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
  r0.x = mad(permuteStride, 35, (int)vThreadGroupID.x);
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
  r3.z = dot(r12.xyz, sunConstants.wldDir.xyz);
  r4.z = saturate(r3.z);
  r4.w = cmp(0 >= r4.z);
  if (r4.w != 0) {
    r6.w = 0;
  }
  if (r4.w == 0) {
    r14.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * r11.yyy;
    r14.yzw = r11.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r14.yzw;
    r14.yzw = r11.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r14.yzw;
    r14.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r14.yzw;
    r4.w = -sunConstants.splitDepthOffset + r14.w;
    r4.w = -r4.w * 6.10351563e-05 + 1;
    r7.w = saturate(r4.w);
    r7.w = cmp(r4.w == r7.w);
    if (r7.w != 0) {
      r7.w = 0;
      r8.w = 0;
      while (true) {
        r9.w = cmp(r7.w >= 3);
        if (r9.w != 0) break;
        r9.w = (uint)r7.w;
        r15.yz = -sunConstants.splitPinTransform[r9.w].xy + r14.yz;
        r10.w = max(abs(r15.y), abs(r15.z));
        r8.w = sunConstants.splitPinTransform[r9.w].z * r10.w;
        r9.w = cmp(r8.w < 1);
        if (r9.w != 0) {
          break;
        }
        r7.w = 1 + r7.w;
        r8.w = 0;
      }
    } else {
      r7.w = 3;
      r8.w = 0;
    }
    r9.w = cmp(r7.w >= 3);
    if (r9.w != 0) {
      r15.yzw = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r17.xz = rcp(r15.yy);
      r17.y = -r17.z;
      r15.yzw = r14.yzy * r17.xyz + r15.zwz;
      r17.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r15.yzw = max(float3(0,0,0), r15.yzw);
      r15.yzw = min(r15.yzw, r17.xyz);
      r17.xy = sunConstants.sstLightingConstants.coordScale * r15.wz;
      r17.xy = floor(r17.xy);
      r10.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r17.y;
      r10.w = r10.w * sunConstants.sstLightingConstants.coordScale + r17.x;
      r10.w = (uint)r10.w;
      r10.w = (int)r10.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.w, r10.w, l(0), t23.xxxx
    r13.w = samp0[]..swiz;
      r17.x = (int)r13.w & 0x40000000;
      r17.y = (uint)r13.w << 2;
      if (r17.x == 0) {
        r17.x = (int)r13.w & 0x01ffffff;
        r18.x = (int)r10.w + (int)r17.x;
        r10.w = (uint)r13.w >> 25;
        r10.w = (uint)r10.w;
        r15.yzw = r15.yzw * r10.www;
        r15.yzw = frac(r15.yzw);
        r15.yzw = float3(128,128,128) * r15.yzw;
        r15.yzw = (uint3)r15.yzw;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
      r18.z = samp0[]..swiz;
        r17.xz = (uint2)r15.wz >> int2(6,6);
        r10.w = (int)r18.z & 0xc0000000;
        r13.w = (int)r18.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.w, r13.w, l(0), t23.xxxx
      r13.w = samp0[]..swiz;
        r13.w = r17.z ? r18.z : r13.w;
        r17.z = (uint)r13.w >> 13;
        r13.w = r17.x ? r17.z : r13.w;
        r13.w = (int)r13.w & 8191;
        r19.x = (int)r13.w + (int)r18.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
      r19.z = samp0[]..swiz;
        r18.y = 0;
        r19.y = 1;
        r17.xzw = r10.www ? r18.xyz : r19.xyz;
        r19.yz = r10.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r20.xy = (uint2)r15.wz >> (uint2)r19.yy;
        r20.xy = (int2)r20.xy & int2(1,1);
        r13.w = (int)r17.w & 0xc0000000;
        r18.w = (int)r17.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.w, l(0), t23.xxxx
      r18.w = samp0[]..swiz;
        r18.w = r20.y ? r17.w : r18.w;
        r19.y = (uint)r18.w >> 13;
        r18.w = r20.x ? r19.y : r18.w;
        r18.w = (int)r18.w & 8191;
        r19.x = (int)r17.x + (int)r18.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.w, r19.x, l(0), t23.xxxx
      r19.w = samp0[]..swiz;
        r17.xzw = r13.www ? r17.xzw : r19.xzw;
        r17.xzw = r10.www ? r18.xyz : r17.xzw;
        r10.w = (int)r17.w & 0xc0000000;
        if (r10.w == 0) {
          r10.w = (int)-r17.z + 6;
          r18.xy = (uint2)r15.wz >> (uint2)r10.ww;
          r10.w = (int)r17.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.w = (((uint)r18.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.w = (((uint)r18.x << 0) & bitmask.w) | ((uint)r13.w & ~bitmask.w);
          r13.w = (int)r13.w * 10;
          r10.w = (uint)r10.w >> (uint)r13.w;
          r10.w = (int)r10.w & 1023;
          r18.x = (int)r10.w + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.x, l(0), t23.xxxx
        r18.w = samp0[]..swiz;
          r18.yz = (int2)r17.zz + int2(1,2);
          r10.w = (int)-r18.y + 6;
          r19.xy = (uint2)r15.wz >> (uint2)r10.ww;
          r10.w = (int)r18.w & 0xc0000000;
          r13.w = (int)r18.w | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r17.z = (((uint)r19.y << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r17.z = (((uint)r19.x << 0) & bitmask.z) | ((uint)r17.z & ~bitmask.z);
          r17.z = (int)r17.z * 10;
          r13.w = (uint)r13.w >> (uint)r17.z;
          r13.w = (int)r13.w & 1023;
          r19.x = (int)r13.w + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
        r19.z = samp0[]..swiz;
          r19.y = r18.z;
          r19.xyz = r10.www ? r18.xyw : r19.xyz;
          r13.w = (int)-r19.y + 6;
          r18.yz = (uint2)r15.wz >> (uint2)r13.ww;
          r13.w = (int)r19.z & 0xc0000000;
          r17.z = (int)r19.z | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r18.z = (((uint)r18.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r18.y = (((uint)r18.y << 0) & bitmask.y) | ((uint)r18.z & ~bitmask.y);
          r18.y = (int)r18.y * 10;
          r17.z = (uint)r17.z >> (uint)r18.y;
          r17.z = (int)r17.z & 1023;
          r20.x = (int)r17.z + (int)r19.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.y, r20.x, l(0), t23.xxxx
        r20.y = samp0[]..swiz;
          r18.yz = r13.ww ? r19.xz : r20.xy;
          r17.xw = r10.ww ? r18.xw : r18.yz;
        }
        r10.w = (int)r17.w & 0xc0000000;
        if (r10.w == 0) {
          if (14 == 0) r13.w = 0; else if (14+15 < 32) {           r13.w = (uint)r17.w << (32-(14 + 15)); r13.w = (uint)r13.w >> (32-14);          } else r13.w = (uint)r17.w >> 15;
          r13.w = (uint)r13.w;
          r13.w = sunConstants.sstLightingConstants.constants.spanInInches * r13.w;
          r13.w = 6.10388815e-05 * r13.w;
          r18.xy = (int2)r17.ww & int2(32767,536870912);
          r17.z = (uint)r18.x;
          r17.z = sunConstants.sstLightingConstants.constants.spanInInches * r17.z;
          r17.z = 3.05185094e-05 * r17.z;
          r18.x = (int)r15.z & 3;
          r18.x = (int)r17.x + (int)r18.x;
          r18.x = (int)r18.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.x, r18.x, l(0), t23.xxxx
        r18.x = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r19.x = (((uint)r15.y << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r19.y = (((uint)r15.z << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r19.z = (((uint)r15.w << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r15.y = (uint)r18.x >> (uint)r19.x;
          r15.y = (int)r15.y & 255;
          r15.y = (uint)r15.y;
          r15.y = r15.y * r17.z;
          r15.y = r15.y * 0.00392156886 + r13.w;
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
          r15.z = r15.z * r17.z;
          r13.w = r15.z * 1.52590219e-05 + r13.w;
          r17.y = r18.y ? r15.y : r13.w;
        } else {
          r13.w = (int)r17.w & 0x80000000;
          r15.y = (int)r17.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.y, r15.y, l(0), t23.xxxx
        r15.y = samp0[]..swiz;
          r13.w = r13.w ? r15.y : 0;
          r15.y = (uint)r17.w << 2;
          r15.z = (uint)r13.w >> 16;
          r15.z = f16tof32(r15.z);
          r13.w = (int)r13.w & 0x0000ffff;
          r13.w = f16tof32(r13.w);
          r15.y = r14.y * r15.z + r15.y;
          r13.w = r14.z * r13.w + r15.y;
          r17.y = r10.w ? r13.w : r17.y;
        }
      }
      r10.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r14.w;
      r10.w = cmp(r17.y < r10.w);
      r6.w = r10.w ? 0 : 1;
    }
    if (r9.w == 0) {
      if (enableDitheredShadow == 0) {
        r9.w = (uint)r7.w;
        r15.yz = -sunConstants.splitPinTransform[r9.w].xy + r14.yz;
        r15.yz = sunConstants.splitPinTransform[r9.w].zz * r15.yz;
        r17.xy = r15.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r9.w = (int16)sunConstants.splitArrayOffset;
        r17.z = r9.w + r7.w;
        r9.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r4.w).x;
        r10.w = gTransShadowmapArray.SampleLevel(samp0_s, r17.xyz, 0).x;
        r9.w = r10.w + r9.w;
        r9.w = saturate(-1 + r9.w);
        r10.w = r9.w * r9.w;
        r6.w = r10.w * r9.w;
      }
      if (enableDitheredShadow != 0) {
        r17.x = -r4.x;
        r9.w = (uint)r7.w;
        r7.w = 1 + r7.w;
        r7.w = min(2, r7.w);
        r7.w = (uint)r7.w;
        r8.w = 1 + -r8.w;
        r8.w = 28 * r8.w;
        r8.w = (uint)r8.w;
        r15.yz = -sunConstants.splitPinTransform[r9.w].xy + r14.yz;
        r15.yz = sunConstants.splitPinTransform[r9.w].zz * r15.yz;
        r15.yz = r15.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r14.yz = -sunConstants.splitPinTransform[r7.w].xy + r14.yz;
        r14.yz = sunConstants.splitPinTransform[r7.w].zz * r14.yz;
        r14.yz = r14.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r17.y = r13.x;
        r17.z = r4.x;
        r10.w = 0;
        r13.w = 0;
        while (true) {
          r14.w = cmp((uint)r13.w >= 8);
          if (r14.w != 0) break;
          r14.w = cmp((uint)r8.w < (uint)r13.w);
          r18.xy = r14.ww ? r14.yz : r15.yz;
          r15.w = r14.w ? sunConstants.splitPinTransform[r7.w].w : sunConstants.splitPinTransform[r9.w].w;
          r14.w = r14.w ? r7.w : r9.w;
          r19.x = dot(icb[r13.w+0].yx, r17.xy);
          r19.y = dot(icb[r13.w+0].yx, r17.yz);
          r18.xy = r19.xy * r15.ww + r18.xy;
          r14.w = (int)r14.w + (int16)sunConstants.splitArrayOffset;
          r18.z = (uint)r14.w;
          r14.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r4.w).x;
          r15.w = gTransShadowmapArray.SampleLevel(samp0_s, r18.xyz, 0).x;
          r14.w = r15.w + r14.w;
          r14.w = saturate(-1 + r14.w);
          r10.w = r14.w * 0.125 + r10.w;
          r13.w = (int)r13.w + 1;
        }
        r4.w = r10.w * r10.w;
        r6.w = r4.w * r10.w;
      }
    }
  }
  r4.w = 1 + -r2.y;
  r7.w = 5 * r4.w;
  r8.w = r4.w * 5 + -2.5;
  r8.w = 0.400000006 * r8.w;
  r8.w = max(0, r8.w);
  r8.w = 100 * r8.w;
  r14.yz = -r4.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r9.w = exp2(r14.y);
  r9.w = r9.w * r2.x;
  r9.w = 9.1368103 * r9.w;
  r10.w = r7.w * r4.w;
  r10.w = -r10.w * 2.0159049 + r14.z;
  r10.w = exp2(r10.w);
  r10.w = r10.w * r2.x;
  r10.w = 9.70808983 * r10.w;
  r9.w = max(r10.w, r9.w);
  r9.w = max(1.26815999, r9.w);
  if (probeDebug != 0) {
    r10.w = (uint)renderTargetSize.x;
    r10.w = (int)r10.w + 7;
    r10.w = (uint)r10.w >> 3;
    r10.w = mad((int)r0.z, (int)r10.w, (int)r0.y);
    bitmask.w = ((~(-1 << 27)) << 5) & 0xffffffff;  r10.w = (((uint)r10.w << 5) & bitmask.w) | ((uint)16 & ~bitmask.w);
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
    r14.yzw = float3(0,0,0);
    r13.w = 0;
    r29.z = 0;
    r15.yzw = float3(0,0,0);
    r28.zw = float2(0,0);
    while (true) {
      r29.w = cmp((uint)r28.w >= numRefProbes);
      if (r29.w != 0) break;
      r29.w = (uint)r28.w >> 5;
      r29.w = (int)r10.w + (int)r29.w;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r29.w, r29.w, l(0), t26.xxxx
    r29.w = samp0[]..swiz;
      r30.xyzw = r17.yxzw;
      r31.xyzw = r18.xyzw;
      r32.xyzw = r19.yzwx;
      r33.xyzw = r20.xyzw;
      r34.xyzw = r21.xyzw;
      r35.xyzw = r22.zwxy;
      r36.xyzw = r23.zwxy;
      r37.xyzw = r25.zwxy;
      r38.xyzw = r26.zwxy;
      r39.xyz = r14.yzw;
      r40.xy = r15.zy;
      r39.w = r13.w;
      r40.z = r28.z;
      r40.w = r29.z;
      r41.x = r15.w;
      r42.xyzw = r24.zwxy;
      r43.xyzw = r27.zwxy;
      r41.y = r29.w;
      while (true) {
        if (r41.y == 0) break;
        r41.z = firstbitlow((uint)r41.y);
        r41.w = 1 << (int)r41.z;
        r41.w = ~(int)r41.w;
        r41.y = (int)r41.w & (int)r41.y;
        r41.z = (int)r28.w + (int)r41.z;
        r41.z = (int)r41.z * 14;
        r44.xyz = -refProbeConstantsCB[r41.z].data[0].xyz + r11.xyz;
        r41.w = dot(r44.xyz, r44.xyz);
        r41.w = sqrt(r41.w);
        r41.w = cmp(probeDebugRadius >= r41.w);
        if (r41.w != 0) {
          r30.yzw = refProbeConstantsCB[r41.z].data[1].xyz;
          r30.x = refProbeConstantsCB[r41.z].data[0].w;
          r31.yzw = refProbeConstantsCB[r41.z].data[2].xyz;
          r31.x = refProbeConstantsCB[r41.z].data[1].w;
          r32.xyz = refProbeConstantsCB[r41.z].data[3].xyz;
          r32.w = refProbeConstantsCB[r41.z].data[4].z;
          r33.yz = refProbeConstantsCB[r41.z].data[4].xy;
          r33.x = refProbeConstantsCB[r41.z].data[3].w;
          r33.w = refProbeConstantsCB[r41.z].data[6].x;
          r34.yzw = refProbeConstantsCB[r41.z].data[5].xyz;
          r34.x = refProbeConstantsCB[r41.z].data[4].w;
          r35.yz = refProbeConstantsCB[r41.z].data[7].yw;
          r35.x = refProbeConstantsCB[r41.z].data[6].y;
          r35.w = refProbeConstantsCB[r41.z].data[8].x;
          r36.xyz = refProbeConstantsCB[r41.z].data[8].yzw;
          r36.w = refProbeConstantsCB[r41.z].data[9].x;
          r37.xyz = refProbeConstantsCB[r41.z].data[10].yzw;
          r37.w = refProbeConstantsCB[r41.z].data[11].x;
          r38.xyz = refProbeConstantsCB[r41.z].data[11].yzw;
          r38.w = refProbeConstantsCB[r41.z].data[12].x;
          r39.xyz = refProbeConstantsCB[r41.z].data[0].xyz;
          r44.xy = refProbeConstantsCB[r41.z].data[13].yz;
          r39.w = -1;
          r40.z = refProbeConstantsCB[r41.z].data[2].w;
          r40.w = refProbeConstantsCB[r41.z].data[5].w;
          r41.x = refProbeConstantsCB[r41.z].data[7].z;
          r42.xyz = refProbeConstantsCB[r41.z].data[9].yzw;
          r42.w = refProbeConstantsCB[r41.z].data[10].x;
          r43.xyz = refProbeConstantsCB[r41.z].data[12].yzw;
          r43.w = refProbeConstantsCB[r41.z].data[13].x;
          r40.xy = r44.xy;
          break;
        }
      }
      if (r39.w != 0) {
        r17.xyzw = r30.yxzw;
        r18.xyzw = r31.xyzw;
        r19.xyzw = r32.wxyz;
        r20.xyzw = r33.xyzw;
        r21.xyzw = r34.xyzw;
        r22.xyzw = r35.zwxy;
        r23.xyzw = r36.zwxy;
        r24.xyzw = r42.zwxy;
        r25.xyzw = r37.zwxy;
        r26.xyzw = r38.zwxy;
        r27.xyzw = r43.zwxy;
        r14.yzw = r39.xyz;
        r15.yz = r40.yx;
        r13.w = -1;
        r28.z = r40.z;
        r29.z = r40.w;
        r15.w = r41.x;
        break;
      }
      r28.w = (int)r28.w + 32;
      r17.xyzw = r30.yxzw;
      r18.xyzw = r31.xyzw;
      r19.xyzw = r32.wxyz;
      r20.xyzw = r33.xyzw;
      r21.xyzw = r34.xyzw;
      r22.xyzw = r35.zwxy;
      r23.xyzw = r36.zwxy;
      r25.xyzw = r37.zwxy;
      r26.xyzw = r38.zwxy;
      r14.yzw = r39.xyz;
      r15.yz = r40.yx;
      r13.w = r39.w;
      r28.z = r40.z;
      r29.z = r40.w;
      r15.w = r41.x;
      r24.xyzw = r42.zwxy;
      r27.xyzw = r43.zwxy;
    }
    r30.xy = r17.yw;
    r28.x = r17.z;
    r17.yz = r18.xw;
    r28.y = r18.y;
    r30.z = r18.z;
    r18.xyz = r19.yzw;
    r19.yz = r21.xy;
    r29.xy = r21.zw;
    r21.xy = r22.zw;
    r22.z = r23.z;
    r23.z = r24.z;
    r24.z = r25.z;
    r25.z = r26.z;
    r26.z = r27.z;
    r27.z = r15.z;
  } else {
    r13.w = 0;
  }
  if (r13.w != 0) {
    if (r2.w != 0) {
      r31.yzw = eyeOffset.xyz + r14.yzw;
      r31.x = 16;
      GBufferDiffuseColor[viewID].880 = u2.xyzw;
    }
    r14.yzw = -r14.yzw + r11.xyz;
    r10.w = (int)r15.w & 0x0000ffff;
    if (6 == 0) r15.z = 0; else if (6+25 < 32) {     r15.z = (uint)r15.w << (32-(6 + 25)); r15.z = (uint)r15.z >> (32-6);    } else r15.z = (uint)r15.w >> 25;
    r17.w = (int)r10.w * 6;
    r18.w = dot(refProbeAttenuationConstantsCB[r17.w].data[0].xyz, r14.yzw);
    r18.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[0].w + r18.w);
    r19.w = dot(refProbeAttenuationConstantsCB[r17.w].data[1].xyz, r14.yzw);
    r19.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[1].w + r19.w);
    r18.w = r19.w * r18.w;
    r19.w = dot(refProbeAttenuationConstantsCB[r17.w].data[2].xyz, r14.yzw);
    r19.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[2].w + r19.w);
    r18.w = r19.w * r18.w;
    r19.w = dot(refProbeAttenuationConstantsCB[r17.w].data[3].xyz, r14.yzw);
    r19.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[3].w + r19.w);
    r18.w = r19.w * r18.w;
    r19.w = dot(refProbeAttenuationConstantsCB[r17.w].data[4].xyz, r14.yzw);
    r19.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[4].w + r19.w);
    r18.w = r19.w * r18.w;
    r19.w = dot(refProbeAttenuationConstantsCB[r17.w].data[5].xyz, r14.yzw);
    r17.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[5].w + r19.w);
    r31.x = r18.w * r17.w;
    r17.w = (int)r20.w & 1;
    r31.yz = float2(0,1);
    r21.zw = r17.ww ? r31.xy : r31.zx;
    r31.x = 1;
    r17.w = r20.w;
    r32.xy = r21.zw;
    r18.w = 1;
    while (true) {
      r19.w = cmp((int)r18.w >= (int)r15.z);
      if (r19.w != 0) break;
      r19.w = (int)r10.w + (int)r18.w;
      r19.w = (int)r19.w * 6;
      r22.w = dot(refProbeAttenuationConstantsCB[r19.w].data[0].xyz, r14.yzw);
      r22.w = saturate(refProbeAttenuationConstantsCB[r19.w].data[0].w + r22.w);
      r22.w = r32.x * r22.w;
      r28.w = dot(refProbeAttenuationConstantsCB[r19.w].data[1].xyz, r14.yzw);
      r28.w = saturate(refProbeAttenuationConstantsCB[r19.w].data[1].w + r28.w);
      r22.w = r28.w * r22.w;
      r28.w = dot(refProbeAttenuationConstantsCB[r19.w].data[2].xyz, r14.yzw);
      r28.w = saturate(refProbeAttenuationConstantsCB[r19.w].data[2].w + r28.w);
      r22.w = r28.w * r22.w;
      r28.w = dot(refProbeAttenuationConstantsCB[r19.w].data[3].xyz, r14.yzw);
      r28.w = saturate(refProbeAttenuationConstantsCB[r19.w].data[3].w + r28.w);
      r22.w = r28.w * r22.w;
      r28.w = dot(refProbeAttenuationConstantsCB[r19.w].data[4].xyz, r14.yzw);
      r28.w = saturate(refProbeAttenuationConstantsCB[r19.w].data[4].w + r28.w);
      r22.w = r28.w * r22.w;
      r28.w = dot(refProbeAttenuationConstantsCB[r19.w].data[5].xyz, r14.yzw);
      r19.w = saturate(refProbeAttenuationConstantsCB[r19.w].data[5].w + r28.w);
      r32.x = r22.w * r19.w;
      r28.w = (uint)r17.w >> 2;
      if (1 == 0) r29.w = 0; else if (1+2 < 32) {       r29.w = (uint)r17.w << (32-(1 + 2)); r29.w = (uint)r29.w >> (32-1);      } else r29.w = (uint)r17.w >> 2;
      r30.w = (int)r28.w & 2;
      r31.z = max(r32.y, r32.x);
      r19.w = -r22.w * r19.w + 1;
      r19.w = r32.y * r19.w;
      r31.y = r30.w ? r19.w : r31.z;
      r32.xy = r29.ww ? r32.xy : r31.xy;
      r18.w = (int)r18.w + 1;
      r17.w = r28.w;
    }
    r32.y = saturate(r32.y);
    r31.w = r32.y * r21.x;
    r10.w = cmp(0 < r31.w);
    if (r10.w != 0) {
      if (r2.w != 0) {
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r10.w, cb2[52].x, l(880), u2.xxxx
      r10.w = samp0[]..swiz;
        r10.w = (int)r10.w | 32;
        GBufferDiffuseColor[viewID].880 = u2.x;
        GBufferDiffuseColor[viewID].896 = u2.x;
      }
      r10.w = r31.w * r21.y;
      r15.z = dot(r16.xyz, r22.xyz);
      r17.w = dot(r14.yzw, r22.xyz);
      r17.w = r17.w + -r23.w;
      r18.w = cmp(r17.w >= 0);
      r17.w = max(abs(r17.w), r8.w);
      r17.w = r18.w ? r17.w : -r17.w;
      r15.z = max(1.00000001e-07, -r15.z);
      r15.z = r17.w / r15.z;
      r15.z = min(131072, abs(r15.z));
      r17.w = dot(r16.xyz, r23.xyz);
      r18.w = dot(r14.yzw, r23.xyz);
      r18.w = r18.w + -r24.w;
      r19.w = cmp(r18.w >= 0);
      r18.w = max(abs(r18.w), r8.w);
      r18.w = r19.w ? r18.w : -r18.w;
      r17.w = max(1.00000001e-07, -r17.w);
      r17.w = r18.w / r17.w;
      r15.z = min(abs(r17.w), r15.z);
      r17.w = dot(r16.xyz, r24.xyz);
      r18.w = dot(r14.yzw, r24.xyz);
      r18.w = r18.w + -r25.w;
      r19.w = cmp(r18.w >= 0);
      r18.w = max(abs(r18.w), r8.w);
      r18.w = r19.w ? r18.w : -r18.w;
      r17.w = max(1.00000001e-07, -r17.w);
      r17.w = r18.w / r17.w;
      r15.z = min(abs(r17.w), r15.z);
      r17.w = dot(r16.xyz, r25.xyz);
      r18.w = dot(r14.yzw, r25.xyz);
      r18.w = r18.w + -r26.w;
      r19.w = cmp(r18.w >= 0);
      r18.w = max(abs(r18.w), r8.w);
      r18.w = r19.w ? r18.w : -r18.w;
      r17.w = max(1.00000001e-07, -r17.w);
      r17.w = r18.w / r17.w;
      r15.z = min(abs(r17.w), r15.z);
      r17.w = dot(r16.xyz, r26.xyz);
      r18.w = dot(r14.yzw, r26.xyz);
      r18.w = r18.w + -r27.w;
      r19.w = cmp(r18.w >= 0);
      r18.w = max(abs(r18.w), r8.w);
      r18.w = r19.w ? r18.w : -r18.w;
      r17.w = max(1.00000001e-07, -r17.w);
      r17.w = r18.w / r17.w;
      r15.z = min(abs(r17.w), r15.z);
      r17.w = dot(r16.xyz, r27.xyz);
      r18.w = dot(r14.yzw, r27.xyz);
      r15.y = r18.w + -r15.y;
      r18.w = cmp(r15.y >= 0);
      r15.y = max(abs(r15.y), r8.w);
      r15.y = r18.w ? r15.y : -r15.y;
      r17.w = max(1.00000001e-07, -r17.w);
      r15.y = r15.y / r17.w;
      r15.y = min(r15.z, abs(r15.y));
      r20.xyz = r20.xyz + r14.yzw;
      r20.xyz = r16.xyz * r15.yyy + r20.xyz;
      r15.z = dot(r20.xyz, r20.xyz);
      r15.z = sqrt(r15.z);
      r15.y = r15.y / r15.z;
      r15.y = r15.y + r15.y;
      r15.y = sqrt(r15.y);
      r15.y = r4.w * 5 + r15.y;
      r15.y = -0.844799995 + r15.y;
      r21.x = dot(r20.xyz, r30.xyz);
      r21.y = dot(r20.xyz, r17.xyz);
      r21.z = dot(r20.xyz, r28.xyz);
      if (9 == 0) r15.z = 0; else if (9+16 < 32) {       r15.z = (uint)r15.w << (32-(9 + 16)); r15.z = (uint)r15.z >> (32-9);      } else r15.z = (uint)r15.w >> 16;
      r21.w = (uint)r15.z;
      r15.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r21.xyzw, r15.y).xyz;
      r20.xyz = (int3)r15.yzw & int3(-2147483648,-2147483648,-2147483648);
      r20.xyz = cmp((int3)r20.xyz == int3(2139095040,2139095040,2139095040));
      r17.w = (int)r20.y | (int)r20.x;
      r17.w = (int)r20.z | (int)r17.w;
      r15.yzw = r17.www ? float3(1,1,0) : r15.yzw;
      r20.x = dot(r14.yzw, r30.xyz);
      r20.y = dot(r14.yzw, r17.xyz);
      r20.z = dot(r14.yzw, r28.xyz);
      r14.yzw = saturate(r20.xyz * r18.xyz + float3(0.5,0.5,0.5));
      r14.yzw = r14.yzw * r19.xyz + r29.xyz;
      r21.x = dot(r12.xyz, r30.xyz);
      r21.y = dot(r12.xyz, r17.xyz);
      r21.z = dot(r12.xyz, r28.xyz);
      r17.xyz = cmp(float3(0,0,0) < r21.xyz);
      r18.z = r17.x ? 0 : 0.5;
      r18.xy = float2(0,0);
      r18.xyz = r18.xyz + r14.yzw;
      r18.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r18.xyz, 0).xyz;
      r19.xyz = r21.xyz * r21.xyz;
      r19.xyz = r19.xyz * r10.www;
      r20.z = r17.y ? 0 : 0.5;
      r20.xy = float2(0,0);
      r17.xyw = r20.xyz + r14.yzw;
      r17.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r17.xyw, 0).xyz;
      r17.xyw = r17.xyw * r19.yyy;
      r17.xyw = r18.xyz * r19.xxx + r17.xyw;
      r18.z = r17.z ? 0 : 0.5;
      r18.xy = float2(0,0);
      r14.yzw = r18.xyz + r14.yzw;
      r14.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r14.yzw, 0).xyz;
      r14.yzw = r14.yzw * r19.zzz + r17.xyw;
      r17.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r21.xyzw, 6).xyz;
      r18.xyz = (int3)r17.xyz & int3(-2147483648,-2147483648,-2147483648);
      r18.xyz = cmp((int3)r18.xyz == int3(2139095040,2139095040,2139095040));
      r17.w = (int)r18.y | (int)r18.x;
      r17.w = (int)r18.z | (int)r17.w;
      r17.xyz = r17.www ? float3(1,1,0) : r17.xyz;
      r14.yzw = r17.xyz * r14.yzw;
      r14.y = dot(r14.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r14.z = r14.y * r9.w;
      r15.yzw = r15.yzw * r10.www;
      r10.w = dot(r15.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r10.w = r9.w * r14.y + r10.w;
      r10.w = r14.z / r10.w;
      r31.xyz = r15.yzw * r10.www;
      r10.w = 257;
    } else {
      r31.xyzw = float4(0,0,0,0);
      r10.w = 1;
    }
    r14.y = -1;
  } else {
    r31.xyzw = float4(0,0,0,0);
    r10.w = 0;
  }
  r13.w = (int)r13.w & (int)r14.y;
  if (r13.w == 0) {
    r13.w = numRefProbes + -numOverrideProbes;
    r14.y = (uint)renderTargetSize.x;
    r14.y = (int)r14.y + 7;
    r14.y = (uint)r14.y >> 3;
    r14.y = mad((int)r0.z, (int)r14.y, (int)r0.y);
    bitmask.y = ((~(-1 << 27)) << 5) & 0xffffffff;  r14.y = (((uint)r14.y << 5) & bitmask.y) | ((uint)16 & ~bitmask.y);
    r14.z = (int)r13.w & -32;
    r14.w = (int)r13.w + (int)-r14.z;
    r15.y = numRefProbes & -32;
    r15.z = (int)-r15.y + numRefProbes;
    r17.x = 16;
    r18.yz = float2(0,1);
    r19.xy = float2(0,0);
    r20.xz = float2(1,1);
    r21.xy = float2(0,0);
    r22.xy = float2(0,0);
    r23.xyz = float3(0,0,0);
    r23.w = r31.x;
    r24.xyz = r31.yzw;
    r24.w = r10.w;
    r15.w = r14.z;
    while (true) {
      r18.w = cmp((uint)r15.w >= numRefProbes);
      if (r18.w != 0) break;
      r18.w = (uint)r15.w >> 5;
      r18.w = (int)r14.y + (int)r18.w;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.w, l(0), t26.xxxx
    r18.w = samp0[]..swiz;
      r19.w = cmp((int)r14.z == (int)r15.w);
      bitmask.w = ((~(-1 << r14.w)) << 0) & 0xffffffff;  r21.w = (((uint)0 << 0) & bitmask.w) | ((uint)r18.w & ~bitmask.w);
      r18.w = r19.w ? r21.w : r18.w;
      r19.w = cmp((int)r15.y == (int)r15.w);
      if (r15.z == 0) r21.w = 0; else if (r15.z+0 < 32) {       r21.w = (uint)r18.w << (32-(r15.z + 0)); r21.w = (uint)r21.w >> (32-r15.z);      } else r21.w = (uint)r18.w >> 0;
      r18.w = r19.w ? r21.w : r18.w;
      r25.xyzw = r23.xyzw;
      r26.xyzw = r24.xyzw;
      r19.w = r18.w;
      while (true) {
        if (r19.w == 0) break;
        r21.w = firstbitlow((uint)r19.w);
        r22.w = 1 << (int)r21.w;
        r22.w = ~(int)r22.w;
        r19.w = (int)r19.w & (int)r22.w;
        r21.w = (int)r15.w + (int)r21.w;
        r21.w = (int)r21.w * 14;
        r22.w = (int)r26.w & 255;
        r27.x = cmp((uint)r22.w < 32);
        r27.x = r27.x ? r2.w : 0;
        if (r27.x != 0) {
          r22.w = mad((int)r22.w, 20, 880);
          r17.yzw = refProbeConstantsCB[r21.w].data[0].xyz + eyeOffset.xyz;
          GBufferDiffuseColor[viewID].r22.w = u2.xyzw;
        }
        r27.w = (int)r26.w + 1;
        r17.yzw = -refProbeConstantsCB[r21.w].data[0].xyz + r11.xyz;
        r22.w = 0x0000ffff & (int)refProbeConstantsCB[r21.w].data[7].z;
        if (6 == 0) r28.x = 0; else if (6+25 < 32) {         r28.x = (uint)refProbeConstantsCB[r21.w].data[7].z << (32-(6 + 25)); r28.x = (uint)r28.x >> (32-6);        } else r28.x = (uint)refProbeConstantsCB[r21.w].data[7].z >> 25;
        r28.y = (int)r22.w * 6;
        r28.z = dot(refProbeAttenuationConstantsCB[r28.y].data[0].xyz, r17.yzw);
        r28.z = saturate(refProbeAttenuationConstantsCB[r28.y].data[0].w + r28.z);
        r28.w = dot(refProbeAttenuationConstantsCB[r28.y].data[1].xyz, r17.yzw);
        r28.w = saturate(refProbeAttenuationConstantsCB[r28.y].data[1].w + r28.w);
        r28.z = r28.z * r28.w;
        r28.w = dot(refProbeAttenuationConstantsCB[r28.y].data[2].xyz, r17.yzw);
        r28.w = saturate(refProbeAttenuationConstantsCB[r28.y].data[2].w + r28.w);
        r28.z = r28.z * r28.w;
        r28.w = dot(refProbeAttenuationConstantsCB[r28.y].data[3].xyz, r17.yzw);
        r28.w = saturate(refProbeAttenuationConstantsCB[r28.y].data[3].w + r28.w);
        r28.z = r28.z * r28.w;
        r28.w = dot(refProbeAttenuationConstantsCB[r28.y].data[4].xyz, r17.yzw);
        r28.w = saturate(refProbeAttenuationConstantsCB[r28.y].data[4].w + r28.w);
        r28.z = r28.z * r28.w;
        r28.w = dot(refProbeAttenuationConstantsCB[r28.y].data[5].xyz, r17.yzw);
        r28.y = saturate(refProbeAttenuationConstantsCB[r28.y].data[5].w + r28.w);
        r18.x = r28.z * r28.y;
        r28.y = 1 & (int)refProbeConstantsCB[r21.w].data[6].x;
        r28.yz = r28.yy ? r18.xy : r18.zx;
        r18.x = refProbeConstantsCB[r21.w].data[6].x;
        r29.xy = r28.yz;
        r28.w = 1;
        while (true) {
          r29.z = cmp((int)r28.w >= (int)r28.x);
          if (r29.z != 0) break;
          r29.z = (int)r22.w + (int)r28.w;
          r29.z = (int)r29.z * 6;
          r29.w = dot(refProbeAttenuationConstantsCB[r29.z].data[0].xyz, r17.yzw);
          r29.w = saturate(refProbeAttenuationConstantsCB[r29.z].data[0].w + r29.w);
          r29.w = r29.x * r29.w;
          r30.x = dot(refProbeAttenuationConstantsCB[r29.z].data[1].xyz, r17.yzw);
          r30.x = saturate(refProbeAttenuationConstantsCB[r29.z].data[1].w + r30.x);
          r29.w = r30.x * r29.w;
          r30.x = dot(refProbeAttenuationConstantsCB[r29.z].data[2].xyz, r17.yzw);
          r30.x = saturate(refProbeAttenuationConstantsCB[r29.z].data[2].w + r30.x);
          r29.w = r30.x * r29.w;
          r30.x = dot(refProbeAttenuationConstantsCB[r29.z].data[3].xyz, r17.yzw);
          r30.x = saturate(refProbeAttenuationConstantsCB[r29.z].data[3].w + r30.x);
          r29.w = r30.x * r29.w;
          r30.x = dot(refProbeAttenuationConstantsCB[r29.z].data[4].xyz, r17.yzw);
          r30.x = saturate(refProbeAttenuationConstantsCB[r29.z].data[4].w + r30.x);
          r29.w = r30.x * r29.w;
          r30.x = dot(refProbeAttenuationConstantsCB[r29.z].data[5].xyz, r17.yzw);
          r29.z = saturate(refProbeAttenuationConstantsCB[r29.z].data[5].w + r30.x);
          r29.x = r29.w * r29.z;
          r30.x = (uint)r18.x >> 2;
          if (1 == 0) r30.y = 0; else if (1+2 < 32) {           r30.y = (uint)r18.x << (32-(1 + 2)); r30.y = (uint)r30.y >> (32-1);          } else r30.y = (uint)r18.x >> 2;
          r30.z = (int)r30.x & 2;
          r30.w = max(r29.y, r29.x);
          r29.z = -r29.w * r29.z + 1;
          r29.z = r29.y * r29.z;
          r20.y = r30.z ? r29.z : r30.w;
          r29.xy = r30.yy ? r29.xy : r20.xy;
          r28.w = (int)r28.w + 1;
          r18.x = r30.x;
        }
        r29.y = saturate(r29.y);
        r18.x = refProbeConstantsCB[r21.w].data[6].y * r29.y;
        r20.y = cmp(0 < r18.x);
        if (r20.y != 0) {
          r20.y = (int)r27.w & 255;
          r22.w = (int)r20.y + -1;
          r22.w = cmp((uint)r22.w < 32);
          r22.w = r22.w ? r2.w : 0;
          if (r22.w != 0) {
            r28.xy = mad((int2)r20.yy, int2(20,20), int2(860,876));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r20.y, cb2[52].x, r28.x, u2.xxxx
          r20.y = samp0[]..swiz;
            r20.y = (int)r20.y | 32;
            GBufferDiffuseColor[viewID].r28.x = u2.x;
            GBufferDiffuseColor[viewID].r28.y = u2.x;
          }
          r26.w = (int)r26.w + 257;
          r26.z = r29.y * refProbeConstantsCB[r21.w].data[6].y + r26.z;
          r18.x = refProbeConstantsCB[r21.w].data[7].y * r18.x;
          r28.x = refProbeConstantsCB[r21.w].data[7].w;
          r28.yz = refProbeConstantsCB[r21.w].data[8].xy;
          r20.y = dot(r16.xyz, r28.xyz);
          r22.w = dot(r17.yzw, r28.xyz);
          r22.w = -refProbeConstantsCB[r21.w].data[8].z + r22.w;
          r28.x = cmp(r22.w >= 0);
          r22.w = max(abs(r22.w), r8.w);
          r22.w = r28.x ? r22.w : -r22.w;
          r20.y = max(1.00000001e-07, -r20.y);
          r20.y = r22.w / r20.y;
          r20.y = min(131072, abs(r20.y));
          r28.x = refProbeConstantsCB[r21.w].data[8].w;
          r28.yz = refProbeConstantsCB[r21.w].data[9].xy;
          r22.w = dot(r16.xyz, r28.xyz);
          r28.x = dot(r17.yzw, r28.xyz);
          r28.x = -refProbeConstantsCB[r21.w].data[9].z + r28.x;
          r28.y = cmp(r28.x >= 0);
          r28.x = max(abs(r28.x), r8.w);
          r28.x = r28.y ? r28.x : -r28.x;
          r22.w = max(1.00000001e-07, -r22.w);
          r22.w = r28.x / r22.w;
          r20.y = min(abs(r22.w), r20.y);
          r28.x = refProbeConstantsCB[r21.w].data[9].w;
          r28.yz = refProbeConstantsCB[r21.w].data[10].xy;
          r22.w = dot(r16.xyz, r28.xyz);
          r28.x = dot(r17.yzw, r28.xyz);
          r28.x = -refProbeConstantsCB[r21.w].data[10].z + r28.x;
          r28.y = cmp(r28.x >= 0);
          r28.x = max(abs(r28.x), r8.w);
          r28.x = r28.y ? r28.x : -r28.x;
          r22.w = max(1.00000001e-07, -r22.w);
          r22.w = r28.x / r22.w;
          r20.y = min(abs(r22.w), r20.y);
          r28.x = refProbeConstantsCB[r21.w].data[10].w;
          r28.yz = refProbeConstantsCB[r21.w].data[11].xy;
          r22.w = dot(r16.xyz, r28.xyz);
          r28.x = dot(r17.yzw, r28.xyz);
          r28.x = -refProbeConstantsCB[r21.w].data[11].z + r28.x;
          r28.y = cmp(r28.x >= 0);
          r28.x = max(abs(r28.x), r8.w);
          r28.x = r28.y ? r28.x : -r28.x;
          r22.w = max(1.00000001e-07, -r22.w);
          r22.w = r28.x / r22.w;
          r20.y = min(abs(r22.w), r20.y);
          r28.x = refProbeConstantsCB[r21.w].data[11].w;
          r28.yz = refProbeConstantsCB[r21.w].data[12].xy;
          r22.w = dot(r16.xyz, r28.xyz);
          r28.x = dot(r17.yzw, r28.xyz);
          r28.x = -refProbeConstantsCB[r21.w].data[12].z + r28.x;
          r28.y = cmp(r28.x >= 0);
          r28.x = max(abs(r28.x), r8.w);
          r28.x = r28.y ? r28.x : -r28.x;
          r22.w = max(1.00000001e-07, -r22.w);
          r22.w = r28.x / r22.w;
          r20.y = min(abs(r22.w), r20.y);
          r28.x = refProbeConstantsCB[r21.w].data[12].w;
          r28.yz = refProbeConstantsCB[r21.w].data[13].xy;
          r22.w = dot(r16.xyz, r28.xyz);
          r28.x = dot(r17.yzw, r28.xyz);
          r28.x = -refProbeConstantsCB[r21.w].data[13].z + r28.x;
          r28.y = cmp(r28.x >= 0);
          r28.x = max(abs(r28.x), r8.w);
          r28.x = r28.y ? r28.x : -r28.x;
          r22.w = max(1.00000001e-07, -r22.w);
          r22.w = r28.x / r22.w;
          r20.y = min(abs(r22.w), r20.y);
          r28.x = refProbeConstantsCB[r21.w].data[3].w + r17.y;
          r28.yz = refProbeConstantsCB[r21.w].data[4].xy + r17.zw;
          r28.xyz = r16.xyz * r20.yyy + r28.xyz;
          r22.w = dot(r28.xyz, r28.xyz);
          r22.w = sqrt(r22.w);
          r20.y = r20.y / r22.w;
          r20.y = r20.y + r20.y;
          r20.y = sqrt(r20.y);
          r20.y = r4.w * 5 + r20.y;
          r20.y = -0.844799995 + r20.y;
          r30.x = refProbeConstantsCB[r21.w].data[0].w;
          r30.y = refProbeConstantsCB[r21.w].data[1].z;
          r30.z = refProbeConstantsCB[r21.w].data[2].y;
          r32.x = dot(r28.xyz, r30.xyz);
          r33.xy = refProbeConstantsCB[r21.w].data[1].xw;
          r33.z = refProbeConstantsCB[r21.w].data[2].z;
          r32.y = dot(r28.xyz, r33.xyz);
          r34.x = refProbeConstantsCB[r21.w].data[1].y;
          r34.yz = refProbeConstantsCB[r21.w].data[2].xw;
          r32.z = dot(r28.xyz, r34.xyz);
          if (9 == 0) r22.w = 0; else if (9+16 < 32) {           r22.w = (uint)refProbeConstantsCB[r21.w].data[7].z << (32-(9 + 16)); r22.w = (uint)r22.w >> (32-9);          } else r22.w = (uint)refProbeConstantsCB[r21.w].data[7].z >> 16;
          r32.w = (uint)r22.w;
          r28.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r32.xyzw, r20.y).xyz;
          r29.xzw = (int3)r28.xyz & int3(-2147483648,-2147483648,-2147483648);
          r29.xzw = cmp((int3)r29.xzw == int3(2139095040,2139095040,2139095040));
          r20.y = (int)r29.z | (int)r29.x;
          r20.y = (int)r29.w | (int)r20.y;
          r28.xyz = r20.yyy ? float3(1,1,0) : r28.xyz;
          r35.x = dot(r17.yzw, r30.xyz);
          r35.y = dot(r17.yzw, r33.xyz);
          r35.z = dot(r17.yzw, r34.xyz);
          r17.yzw = saturate(r35.xyz * refProbeConstantsCB[r21.w].data[3].xyz + float3(0.5,0.5,0.5));
          r35.xy = refProbeConstantsCB[r21.w].data[4].zw * r17.yz;
          r35.z = refProbeConstantsCB[r21.w].data[5].x * r17.w;
          r17.yzw = refProbeConstantsCB[r21.w].data[5].yzw + r35.xyz;
          r32.x = dot(r12.xyz, r30.xyz);
          r32.y = dot(r12.xyz, r33.xyz);
          r32.z = dot(r12.xyz, r34.xyz);
          r29.xzw = cmp(float3(0,0,0) < r32.xyz);
          r19.z = r29.x ? 0 : 0.5;
          r30.xyz = r19.xyz + r17.yzw;
          r30.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r30.xyz, 0).xyz;
          r33.xyz = r32.xyz * r32.xyz;
          r33.xyz = r33.xyz * r18.xxx;
          r21.z = r29.z ? 0 : 0.5;
          r34.xyz = r21.xyz + r17.yzw;
          r34.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r34.xyz, 0).xyz;
          r34.xyz = r34.xyz * r33.yyy;
          r30.xyz = r30.xyz * r33.xxx + r34.xyz;
          r22.z = r29.w ? 0 : 0.5;
          r17.yzw = r22.xyz + r17.yzw;
          r17.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r17.yzw, 0).xyz;
          r17.yzw = r17.yzw * r33.zzz + r30.xyz;
          r29.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r32.xyzw, 6).xyz;
          r30.xyz = (int3)r29.xzw & int3(-2147483648,-2147483648,-2147483648);
          r30.xyz = cmp((int3)r30.xyz == int3(2139095040,2139095040,2139095040));
          r19.z = (int)r30.y | (int)r30.x;
          r19.z = (int)r30.z | (int)r19.z;
          r29.xzw = r19.zzz ? float3(1,1,0) : r29.xzw;
          r30.xyz = r29.xzw * r17.yzw;
          r19.z = dot(r30.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r25.xyz = r17.yzw * r29.xzw + r25.xyz;
          r17.y = r19.z * r9.w;
          r28.xyz = r28.xyz * r18.xxx;
          r17.z = dot(r28.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r17.z = r9.w * r19.z + r17.z;
          r17.y = r17.y / r17.z;
          r30.x = r25.w;
          r30.yz = r26.xy;
          r17.yzw = r28.xyz * r17.yyy + r30.xyz;
          r25.w = r17.y;
          r26.xy = r17.zw;
        } else {
          r27.xyz = r26.xyz;
          r26.xyzw = r27.xyzw;
        }
      }
      r23.xyzw = r25.xyzw;
      r24.xyzw = r26.xyzw;
      r15.w = (int)r15.w + 32;
    }
    r17.x = 16;
    r18.yz = float2(0,1);
    r19.xy = float2(0,0);
    r21.xy = float2(0,0);
    r22.xy = float2(0,0);
    r15.yzw = r23.xyz;
    r25.x = r23.w;
    r25.yz = r24.xy;
    r26.xyz = r24.zwz;
    r18.w = 0;
    while (true) {
      r19.w = cmp((uint)r18.w >= (uint)r13.w);
      if (r19.w != 0) break;
      r19.w = (uint)r18.w >> 5;
      r19.w = (int)r14.y + (int)r19.w;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.w, r19.w, l(0), t26.xxxx
    r19.w = samp0[]..swiz;
      r20.x = cmp((int)r14.z == (int)r18.w);
      if (r14.w == 0) r20.y = 0; else if (r14.w+0 < 32) {       r20.y = (uint)r19.w << (32-(r14.w + 0)); r20.y = (uint)r20.y >> (32-r14.w);      } else r20.y = (uint)r19.w >> 0;
      r19.w = r20.x ? r20.y : r19.w;
      r27.xyz = r15.yzw;
      r28.xyz = r25.xyz;
      r29.xyz = r26.xzy;
      r20.x = r19.w;
      while (true) {
        if (r20.x == 0) break;
        r20.y = firstbitlow((uint)r20.x);
        r21.w = 1 << (int)r20.y;
        r21.w = ~(int)r21.w;
        r20.x = (int)r20.x & (int)r21.w;
        r20.y = (int)r18.w + (int)r20.y;
        r20.y = (int)r20.y * 14;
        r21.w = (int)r29.z & 255;
        r22.w = cmp((uint)r21.w < 32);
        r22.w = r22.w ? r2.w : 0;
        if (r22.w != 0) {
          r21.w = mad((int)r21.w, 20, 880);
          r17.yzw = refProbeConstantsCB[r20.y].data[0].xyz + eyeOffset.xyz;
          GBufferDiffuseColor[viewID].r21.w = u2.xyzw;
        }
        r30.y = (int)r29.z + 1;
        r17.yzw = -refProbeConstantsCB[r20.y].data[0].xyz + r11.xyz;
        r21.w = 0x0000ffff & (int)refProbeConstantsCB[r20.y].data[7].z;
        if (6 == 0) r22.w = 0; else if (6+25 < 32) {         r22.w = (uint)refProbeConstantsCB[r20.y].data[7].z << (32-(6 + 25)); r22.w = (uint)r22.w >> (32-6);        } else r22.w = (uint)refProbeConstantsCB[r20.y].data[7].z >> 25;
        r25.w = (int)r21.w * 6;
        r26.w = dot(refProbeAttenuationConstantsCB[r25.w].data[0].xyz, r17.yzw);
        r26.w = saturate(refProbeAttenuationConstantsCB[r25.w].data[0].w + r26.w);
        r27.w = dot(refProbeAttenuationConstantsCB[r25.w].data[1].xyz, r17.yzw);
        r27.w = saturate(refProbeAttenuationConstantsCB[r25.w].data[1].w + r27.w);
        r26.w = r27.w * r26.w;
        r27.w = dot(refProbeAttenuationConstantsCB[r25.w].data[2].xyz, r17.yzw);
        r27.w = saturate(refProbeAttenuationConstantsCB[r25.w].data[2].w + r27.w);
        r26.w = r27.w * r26.w;
        r27.w = dot(refProbeAttenuationConstantsCB[r25.w].data[3].xyz, r17.yzw);
        r27.w = saturate(refProbeAttenuationConstantsCB[r25.w].data[3].w + r27.w);
        r26.w = r27.w * r26.w;
        r27.w = dot(refProbeAttenuationConstantsCB[r25.w].data[4].xyz, r17.yzw);
        r27.w = saturate(refProbeAttenuationConstantsCB[r25.w].data[4].w + r27.w);
        r26.w = r27.w * r26.w;
        r27.w = dot(refProbeAttenuationConstantsCB[r25.w].data[5].xyz, r17.yzw);
        r25.w = saturate(refProbeAttenuationConstantsCB[r25.w].data[5].w + r27.w);
        r18.x = r26.w * r25.w;
        r25.w = 1 & (int)refProbeConstantsCB[r20.y].data[6].x;
        r30.zw = r25.ww ? r18.xy : r18.zx;
        r18.x = refProbeConstantsCB[r20.y].data[6].x;
        r32.xy = r30.zw;
        r25.w = 1;
        while (true) {
          r26.w = cmp((int)r25.w >= (int)r22.w);
          if (r26.w != 0) break;
          r26.w = (int)r21.w + (int)r25.w;
          r26.w = (int)r26.w * 6;
          r27.w = dot(refProbeAttenuationConstantsCB[r26.w].data[0].xyz, r17.yzw);
          r27.w = saturate(refProbeAttenuationConstantsCB[r26.w].data[0].w + r27.w);
          r27.w = r32.x * r27.w;
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
          r32.x = r27.w * r26.w;
          r28.w = (uint)r18.x >> 2;
          if (1 == 0) r29.w = 0; else if (1+2 < 32) {           r29.w = (uint)r18.x << (32-(1 + 2)); r29.w = (uint)r29.w >> (32-1);          } else r29.w = (uint)r18.x >> 2;
          r31.w = (int)r28.w & 2;
          r32.z = max(r32.y, r32.x);
          r26.w = -r27.w * r26.w + 1;
          r26.w = r32.y * r26.w;
          r20.w = r31.w ? r26.w : r32.z;
          r32.xy = r29.ww ? r32.xy : r20.zw;
          r25.w = (int)r25.w + 1;
          r18.x = r28.w;
        }
        r18.x = saturate(r32.y + -r29.y);
        r20.w = refProbeConstantsCB[r20.y].data[6].y * r18.x;
        r21.w = cmp(0 < r20.w);
        if (r21.w != 0) {
          r21.w = (int)r30.y & 255;
          r22.w = (int)r21.w + -1;
          r22.w = cmp((uint)r22.w < 32);
          r22.w = r22.w ? r2.w : 0;
          if (r22.w != 0) {
            r30.zw = mad((int2)r21.ww, int2(20,20), int2(860,876));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r21.w, cb2[52].x, r30.z, u2.xxxx
          r21.w = samp0[]..swiz;
            r21.w = (int)r21.w | 32;
            GBufferDiffuseColor[viewID].r30.z = u2.x;
            GBufferDiffuseColor[viewID].r30.w = u2.x;
          }
          r29.z = (int)r29.z + 257;
          r29.x = r18.x * refProbeConstantsCB[r20.y].data[6].y + r29.x;
          r18.x = refProbeConstantsCB[r20.y].data[7].y * r20.w;
          r33.x = refProbeConstantsCB[r20.y].data[7].w;
          r33.yz = refProbeConstantsCB[r20.y].data[8].xy;
          r20.w = dot(r16.xyz, r33.xyz);
          r21.w = dot(r17.yzw, r33.xyz);
          r21.w = -refProbeConstantsCB[r20.y].data[8].z + r21.w;
          r22.w = cmp(r21.w >= 0);
          r21.w = max(abs(r21.w), r8.w);
          r21.w = r22.w ? r21.w : -r21.w;
          r20.w = max(1.00000001e-07, -r20.w);
          r20.w = r21.w / r20.w;
          r20.w = min(131072, abs(r20.w));
          r33.x = refProbeConstantsCB[r20.y].data[8].w;
          r33.yz = refProbeConstantsCB[r20.y].data[9].xy;
          r21.w = dot(r16.xyz, r33.xyz);
          r22.w = dot(r17.yzw, r33.xyz);
          r22.w = -refProbeConstantsCB[r20.y].data[9].z + r22.w;
          r25.w = cmp(r22.w >= 0);
          r22.w = max(abs(r22.w), r8.w);
          r22.w = r25.w ? r22.w : -r22.w;
          r21.w = max(1.00000001e-07, -r21.w);
          r21.w = r22.w / r21.w;
          r20.w = min(abs(r21.w), r20.w);
          r33.x = refProbeConstantsCB[r20.y].data[9].w;
          r33.yz = refProbeConstantsCB[r20.y].data[10].xy;
          r21.w = dot(r16.xyz, r33.xyz);
          r22.w = dot(r17.yzw, r33.xyz);
          r22.w = -refProbeConstantsCB[r20.y].data[10].z + r22.w;
          r25.w = cmp(r22.w >= 0);
          r22.w = max(abs(r22.w), r8.w);
          r22.w = r25.w ? r22.w : -r22.w;
          r21.w = max(1.00000001e-07, -r21.w);
          r21.w = r22.w / r21.w;
          r20.w = min(abs(r21.w), r20.w);
          r33.x = refProbeConstantsCB[r20.y].data[10].w;
          r33.yz = refProbeConstantsCB[r20.y].data[11].xy;
          r21.w = dot(r16.xyz, r33.xyz);
          r22.w = dot(r17.yzw, r33.xyz);
          r22.w = -refProbeConstantsCB[r20.y].data[11].z + r22.w;
          r25.w = cmp(r22.w >= 0);
          r22.w = max(abs(r22.w), r8.w);
          r22.w = r25.w ? r22.w : -r22.w;
          r21.w = max(1.00000001e-07, -r21.w);
          r21.w = r22.w / r21.w;
          r20.w = min(abs(r21.w), r20.w);
          r33.x = refProbeConstantsCB[r20.y].data[11].w;
          r33.yz = refProbeConstantsCB[r20.y].data[12].xy;
          r21.w = dot(r16.xyz, r33.xyz);
          r22.w = dot(r17.yzw, r33.xyz);
          r22.w = -refProbeConstantsCB[r20.y].data[12].z + r22.w;
          r25.w = cmp(r22.w >= 0);
          r22.w = max(abs(r22.w), r8.w);
          r22.w = r25.w ? r22.w : -r22.w;
          r21.w = max(1.00000001e-07, -r21.w);
          r21.w = r22.w / r21.w;
          r20.w = min(abs(r21.w), r20.w);
          r33.x = refProbeConstantsCB[r20.y].data[12].w;
          r33.yz = refProbeConstantsCB[r20.y].data[13].xy;
          r21.w = dot(r16.xyz, r33.xyz);
          r22.w = dot(r17.yzw, r33.xyz);
          r22.w = -refProbeConstantsCB[r20.y].data[13].z + r22.w;
          r25.w = cmp(r22.w >= 0);
          r22.w = max(abs(r22.w), r8.w);
          r22.w = r25.w ? r22.w : -r22.w;
          r21.w = max(1.00000001e-07, -r21.w);
          r21.w = r22.w / r21.w;
          r20.w = min(abs(r21.w), r20.w);
          r33.x = refProbeConstantsCB[r20.y].data[3].w + r17.y;
          r33.yz = refProbeConstantsCB[r20.y].data[4].xy + r17.zw;
          r32.xzw = r16.xyz * r20.www + r33.xyz;
          r21.w = dot(r32.xzw, r32.xzw);
          r21.w = sqrt(r21.w);
          r20.w = r20.w / r21.w;
          r20.w = r20.w + r20.w;
          r20.w = sqrt(r20.w);
          r20.w = r4.w * 5 + r20.w;
          r20.w = -0.844799995 + r20.w;
          r33.x = refProbeConstantsCB[r20.y].data[0].w;
          r33.y = refProbeConstantsCB[r20.y].data[1].z;
          r33.z = refProbeConstantsCB[r20.y].data[2].y;
          r34.x = dot(r32.xzw, r33.xyz);
          r35.xy = refProbeConstantsCB[r20.y].data[1].xw;
          r35.z = refProbeConstantsCB[r20.y].data[2].z;
          r34.y = dot(r32.xzw, r35.xyz);
          r36.x = refProbeConstantsCB[r20.y].data[1].y;
          r36.yz = refProbeConstantsCB[r20.y].data[2].xw;
          r34.z = dot(r32.xzw, r36.xyz);
          if (9 == 0) r21.w = 0; else if (9+16 < 32) {           r21.w = (uint)refProbeConstantsCB[r20.y].data[7].z << (32-(9 + 16)); r21.w = (uint)r21.w >> (32-9);          } else r21.w = (uint)refProbeConstantsCB[r20.y].data[7].z >> 16;
          r34.w = (uint)r21.w;
          r32.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, r20.w).xyz;
          r37.xyz = (int3)r32.xzw & int3(-2147483648,-2147483648,-2147483648);
          r37.xyz = cmp((int3)r37.xyz == int3(2139095040,2139095040,2139095040));
          r20.w = (int)r37.y | (int)r37.x;
          r20.w = (int)r37.z | (int)r20.w;
          r32.xzw = r20.www ? float3(1,1,0) : r32.xzw;
          r37.x = dot(r17.yzw, r33.xyz);
          r37.y = dot(r17.yzw, r35.xyz);
          r37.z = dot(r17.yzw, r36.xyz);
          r17.yzw = saturate(r37.xyz * refProbeConstantsCB[r20.y].data[3].xyz + float3(0.5,0.5,0.5));
          r37.xy = refProbeConstantsCB[r20.y].data[4].zw * r17.yz;
          r37.z = refProbeConstantsCB[r20.y].data[5].x * r17.w;
          r17.yzw = refProbeConstantsCB[r20.y].data[5].yzw + r37.xyz;
          r34.x = dot(r12.xyz, r33.xyz);
          r34.y = dot(r12.xyz, r35.xyz);
          r34.z = dot(r12.xyz, r36.xyz);
          r33.xyz = cmp(float3(0,0,0) < r34.xyz);
          r19.z = r33.x ? 0 : 0.5;
          r35.xyz = r19.xyz + r17.yzw;
          r35.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r35.xyz, 0).xyz;
          r36.xyz = r34.xyz * r34.xyz;
          r36.xyz = r36.xyz * r18.xxx;
          r21.z = r33.y ? 0 : 0.5;
          r33.xyw = r21.xyz + r17.yzw;
          r33.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r33.xyw, 0).xyz;
          r33.xyw = r33.xyw * r36.yyy;
          r33.xyw = r35.xyz * r36.xxx + r33.xyw;
          r22.z = r33.z ? 0 : 0.5;
          r17.yzw = r22.xyz + r17.yzw;
          r17.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r17.yzw, 0).xyz;
          r17.yzw = r17.yzw * r36.zzz + r33.xyw;
          r33.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, 6).xyz;
          r34.xyz = (int3)r33.xyz & int3(-2147483648,-2147483648,-2147483648);
          r34.xyz = cmp((int3)r34.xyz == int3(2139095040,2139095040,2139095040));
          r19.z = (int)r34.y | (int)r34.x;
          r19.z = (int)r34.z | (int)r19.z;
          r33.xyz = r19.zzz ? float3(1,1,0) : r33.xyz;
          r34.xyz = r33.xyz * r17.yzw;
          r19.z = dot(r34.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r27.xyz = r17.yzw * r33.xyz + r27.xyz;
          r17.y = r19.z * r9.w;
          r32.xzw = r32.xzw * r18.xxx;
          r17.z = dot(r32.xzw, float3(0.212599993,0.715200007,0.0722000003));
          r17.z = r9.w * r19.z + r17.z;
          r17.y = r17.y / r17.z;
          r28.xyz = r32.xzw * r17.yyy + r28.xyz;
        } else {
          r30.x = r29.x;
          r29.xz = r30.xy;
        }
      }
      r15.yzw = r27.xyz;
      r25.xyz = r28.xyz;
      r26.xy = r29.xz;
      r18.w = (int)r18.w + 32;
    }
    r4.w = cmp(r24.z >= 1);
    r8.w = (int)r24.w & 0x0000ff00;
    bitmask.w = ((~(-1 << 8)) << 0) & 0xffffffff;  r8.w = (((uint)r26.y << 0) & bitmask.w) | ((uint)r8.w & ~bitmask.w);
    r10.w = r4.w ? r8.w : r26.y;
    r4.w = max(1, r26.x);
    r4.w = rcp(r4.w);
    r26.x = saturate(r26.x);
    r14.yzw = r15.yzw * r4.www;
    r31.xyz = r25.xyz * r4.www;
    r8.w = cmp(r26.x < 0.99000001);
    if (r8.w != 0) {
      r10.w = (int)r10.w + 256;
      r8.w = 1 + -r26.x;
      r9.w = sunConstants.globalProbeExposure * r8.w;
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
      r20.xyz = r20.xyz * r9.www;
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
      r9.w = dot(r17.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r14.yzw = r15.yzw * r4.www + r17.xyz;
      r16.w = 0;
      r15.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r16.xyzw, r7.w).xyz;
      r4.w = sunConstants.globalProbeExposure * r8.w + -r9.w;
      r4.w = r2.y * r4.w + r9.w;
      r31.xyz = r15.yzw * r4.www + r31.xyz;
    }
  } else {
    r14.yzw = float3(0,0,0);
  }
  r4.w = r2.x + r5.x;
  r4.w = log2(abs(r4.w));
  r4.w = r4.w * r2.z;
  r4.w = exp2(r4.w);
  r4.w = r4.w + r5.x;
  r4.w = saturate(-1 + r4.w);
  r17.xyz = r14.yzw * r5.xxx;
  r14.yz = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r14.yz = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r14.yz, 0).xy;
  r15.yzw = r31.xyz * r4.www;
  r18.xyz = r15.zwy * r14.yyy;
  r14.yzw = r15.yzw * r14.zzz;
  r2.y = sqrt(r2.z);
  r2.y = r2.y * 0.5 + 0.5;
  r2.y = r2.y * r2.y;
  r4.w = 0.5 * r2.y;
  r2.y = -r2.y * 0.5 + 1;
  r5.x = r2.x * r2.y + r4.w;
  r2.y = r5.x * r2.y;
  r4.w = r5.x * r4.w;
  if (r2.w != 0) {
    r19.x = 3;
    r19.yzw = eyeOffset.xyz;
    GBufferDiffuseColor[viewID].112 = u2.xyzw;
  }
  r5.x = cmp(0 < r4.z);
  if (r5.x != 0) {
    if (r2.w != 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r5.x, cb2[52].x, l(112), u2.xxxx
    r5.x = samp0[]..swiz;
      r5.x = (int)r5.x | 4;
      GBufferDiffuseColor[viewID].112 = u2.x;
      GBufferDiffuseColor[viewID].128 = u2.x;
    }
    r5.x = cmp(0 < r6.w);
    if (r5.x != 0) {
      r5.x = sunConstants.specScale * r1.w;
      r5.x = r5.x * r4.z;
      if (sunConstants.sunCookieIndex != 0) {
        r19.xyz = eyeOffset.xyz + r11.xyz;
        r19.w = 1;
        r7.w = dot(sunConstants.sunCookieTransform[0].xyzw, r19.xyzw);
        r8.w = dot(sunConstants.sunCookieTransform[1].xyzw, r19.xyzw);
        r19.x = frac(r7.w);
        r19.y = frac(r8.w);
        r7.w = -1 + (int14)sunConstants.sunCookieIndex;
        r19.z = (uint)r7.w;
        r15.yzw = gCookieArray.SampleLevel(samplerLinear_s, r19.xyz, 0).xyz;
        r15.yzw = float3(-1,-1,-1) + r15.yzw;
        r15.yzw = sunConstants.sunCookieIntensity * r15.yzw + float3(1,1,1);
        r15.yzw = sunConstants.color.xyz * r15.yzw;
      } else {
        r15.yzw = sunConstants.color.xyz;
      }
      r7.w = viewmodelSunShadowRaw >> 16;
      r8.w = cmp(0 < (uint)r7.w);
      r8.w = r8.w ? r1.z : 0;
      if (r8.w != 0) {
        r7.w = (int)r7.w + numLights;
        r7.w = mad((int)r7.w, 15, -15);
        r8.w = abs(r3.z) * -0.200000003 + 0.400000006;
        r19.xyz = r12.xyz * r8.www + r11.xyz;
        r20.xyz = lightConstantsCB[r7.w].data[4].yzw;
        r20.w = lightConstantsCB[r7.w].data[5].x;
        r19.w = 1;
        r20.x = dot(r20.xyzw, r19.xyzw);
        r21.xyz = lightConstantsCB[r7.w].data[5].yzw;
        r21.w = lightConstantsCB[r7.w].data[6].x;
        r20.y = dot(r21.xyzw, r19.xyzw);
        r20.xy = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r21.x = lightConstantsCB[r7.w].data[9].w + r20.x;
        r21.y = lightConstantsCB[r7.w].data[10].x + r20.y;
        r20.xy = lightConstantsCB[r7.w].data[9].yz * r21.xy;
        r20.zw = lightConstantsCB[r7.w].data[3].yy / lightConstantsCB[r7.w].data[8].yw;
        r21.xy = float2(1,1) + -r20.zw;
        r21.xy = cmp(r20.xy >= r21.xy);
        r20.zw = cmp(r20.zw >= r20.xy);
        r20.zw = (int2)r20.zw | (int2)r21.xy;
        r8.w = (int)r20.w | (int)r20.z;
        if (r8.w == 0) {
          r21.xyz = lightConstantsCB[r7.w].data[6].yzw;
          r21.w = lightConstantsCB[r7.w].data[7].x;
          r8.w = dot(r21.xyzw, r19.xyzw);
          r20.xy = saturate(r20.xy);
          r19.x = r20.x * lightConstantsCB[r7.w].data[8].y + lightConstantsCB[r7.w].data[8].z;
          r19.y = r20.y * lightConstantsCB[r7.w].data[8].w + lightConstantsCB[r7.w].data[9].x;
          r8.w = lightConstantsCB[r7.w].data[10].y + r8.w;
          r8.w = r8.w / lightConstantsCB[r7.w].data[10].z;
          r8.w = max(6.10351563e-05, r8.w);
          r9.w = 0x0000ffff & (int)lightConstantsCB[r7.w].data[1].w;
          if (enableDitheredShadow != 0) {
            r20.x = -r4.x;
            r21.z = (uint)r9.w;
            r20.y = r13.x;
            r20.z = r4.x;
            r12.w = 0;
            r13.w = 0;
            while (true) {
              r16.w = cmp((int)r13.w >= 8);
              if (r16.w != 0) break;
              r22.x = dot(icb[r13.w+0].yx, r20.xy);
              r22.y = dot(icb[r13.w+0].yx, r20.yz);
              r21.xy = r22.xy * lightConstantsCB[r7.w].data[3].yy + r19.xy;
              r16.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r8.w).x;
              r12.w = r16.w * 0.125 + r12.w;
              r13.w = (int)r13.w + 1;
            }
          } else {
            r19.z = (uint)r9.w;
            r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r8.w).x;
          }
          r7.w = r12.w * r12.w;
          r7.w = r7.w * r12.w;
        } else {
          r7.w = 1;
        }
        r6.w = r7.w * r6.w;
      } else {
        r7.w = viewmodelSunShadowRaw & 0x0000ffff;
        r8.w = cmp(0 < (uint)r7.w);
        r9.w = ~(int)r1.z;
        r8.w = r8.w ? r9.w : 0;
        if (r8.w != 0) {
          r7.w = (int)r7.w + numLights;
          r7.w = mad((int)r7.w, 15, -15);
          r8.w = abs(r3.z) * -0.200000003 + 0.400000006;
          r19.xyz = r12.xyz * r8.www + r11.xyz;
          r20.xyz = lightConstantsCB[r7.w].data[4].yzw;
          r20.w = lightConstantsCB[r7.w].data[5].x;
          r19.w = 1;
          r20.x = dot(r20.xyzw, r19.xyzw);
          r21.xyz = lightConstantsCB[r7.w].data[5].yzw;
          r21.w = lightConstantsCB[r7.w].data[6].x;
          r20.y = dot(r21.xyzw, r19.xyzw);
          r20.xy = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r21.x = lightConstantsCB[r7.w].data[9].w + r20.x;
          r21.y = lightConstantsCB[r7.w].data[10].x + r20.y;
          r20.xy = lightConstantsCB[r7.w].data[9].yz * r21.xy;
          r20.zw = lightConstantsCB[r7.w].data[3].yy / lightConstantsCB[r7.w].data[8].yw;
          r21.xy = float2(1,1) + -r20.zw;
          r21.xy = cmp(r20.xy >= r21.xy);
          r20.zw = cmp(r20.zw >= r20.xy);
          r20.zw = (int2)r20.zw | (int2)r21.xy;
          r8.w = (int)r20.w | (int)r20.z;
          if (r8.w == 0) {
            r21.xyz = lightConstantsCB[r7.w].data[6].yzw;
            r21.w = lightConstantsCB[r7.w].data[7].x;
            r8.w = dot(r21.xyzw, r19.xyzw);
            r20.xy = saturate(r20.xy);
            r19.x = r20.x * lightConstantsCB[r7.w].data[8].y + lightConstantsCB[r7.w].data[8].z;
            r19.y = r20.y * lightConstantsCB[r7.w].data[8].w + lightConstantsCB[r7.w].data[9].x;
            r8.w = lightConstantsCB[r7.w].data[10].y + r8.w;
            r8.w = r8.w / lightConstantsCB[r7.w].data[10].z;
            r8.w = max(6.10351563e-05, r8.w);
            r9.w = 0x0000ffff & (int)lightConstantsCB[r7.w].data[1].w;
            if (enableDitheredShadow != 0) {
              r20.x = -r4.x;
              r21.z = (uint)r9.w;
              r20.y = r13.x;
              r20.z = r4.x;
              r12.w = 0;
              r13.w = 0;
              while (true) {
                r16.w = cmp((int)r13.w >= 8);
                if (r16.w != 0) break;
                r22.x = dot(icb[r13.w+0].yx, r20.xy);
                r22.y = dot(icb[r13.w+0].yx, r20.yz);
                r21.xy = r22.xy * lightConstantsCB[r7.w].data[3].yy + r19.xy;
                r16.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r8.w).x;
                r12.w = r16.w * 0.125 + r12.w;
                r13.w = (int)r13.w + 1;
              }
            } else {
              r19.z = (uint)r9.w;
              r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r8.w).x;
            }
            r7.w = r12.w * r12.w;
            r7.w = r7.w * r12.w;
          } else {
            r7.w = 1;
          }
          r6.w = r7.w * r6.w;
        }
      }
      r7.w = -r2.x * 0.5 + 1;
      r7.w = -r4.z * r7.w + 1;
      r7.w = r7.w * r7.w;
      r7.w = -r7.w * 0.620000005 + 0.620000005;
      r7.w = r7.w + -r4.z;
      r7.w = r2.z * r7.w + r4.z;
      r7.w = r7.w * r6.w;
      r3.z = cmp(0 < r3.z);
      r19.xyz = r7.www * r15.yzw + r17.xyz;
      r20.xyz = -r11.xyz * r0.www + sunConstants.wldDir.xyz;
      r0.w = dot(r20.xyz, r20.xyz);
      r0.w = rsqrt(r0.w);
      r20.xyz = r20.xyz * r0.www;
      r0.w = dot(r20.xyz, r5.yzw);
      r7.w = dot(r12.xyz, r20.xyz);
      r8.w = abs(r7.w) * r1.w + -abs(r7.w);
      r7.w = abs(r7.w) * r8.w + 1;
      r4.z = r4.z * r2.y + r4.w;
      r7.w = r7.w * r7.w;
      r4.z = r7.w * r4.z;
      r4.z = rcp(r4.z);
      r4.z = r4.z * r5.x;
      r4.z = r6.w * r4.z;
      r4.z = 0.25 * r4.z;
      r20.xyz = r4.zzz * r15.yzw + r14.yzw;
      r0.w = saturate(1 + -r0.w);
      r5.x = r0.w * r0.w;
      r5.x = r5.x * r5.x;
      r0.w = r5.x * r0.w;
      r0.w = r4.z * r0.w;
      r21.xyz = r0.www * r15.zwy + r18.xyz;
      r19.w = r21.z;
      r17.w = r18.z;
      r17.xyzw = r3.zzzz ? r19.xyzw : r17.xyzw;
      r21.zw = r20.xy;
      r18.zw = r14.yz;
      r19.xyzw = r3.zzzz ? r21.xyzw : r18.xyzw;
      r14.w = r3.z ? r20.z : r14.w;
      if (r2.w != 0) {
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r0.w, cb2[52].x, l(112), u2.xxxx
      r0.w = samp0[]..swiz;
        r0.w = (int)r0.w | 8;
        GBufferDiffuseColor[viewID].112 = u2.x;
        GBufferDiffuseColor[viewID].132 = u2.x;
      }
      r18.z = r17.w;
      r18.xy = r19.xy;
      r14.yz = r19.zw;
      r0.w = 0x00010101;
    } else {
      r0.w = 257;
    }
  } else {
    r0.w = 1;
  }
  r3.z = (uint)r0.x >> 24;
  if (10 == 0) r0.x = 0; else if (10+12 < 32) {   r0.x = (uint)r0.x << (32-(10 + 12)); r0.x = (uint)r0.x >> (32-10);  } else r0.x = (uint)r0.x >> 12;
  r4.z = ~(int)r1.z;
  r2.x = -r2.x * 0.5 + 1;
  r19.x = -r4.x;
  r20.x = 2;
  r21.x = 2;
  r22.w = 1;
  r19.z = r4.x;
  r23.w = 1;
  r24.z = 1;
  r25.w = 1;
  r19.yw = r13.xx;
  r4.y = r19.w;
  r26.w = 1;
  r13.y = r19.x;
  r13.z = r4.x;
  r27.w = 1;
  r28.x = r13.x;
  r28.y = r19.x;
  r28.z = r4.x;
  r29.x = r13.x;
  r29.y = r19.x;
  r29.z = r4.x;
  r30.x = r13.x;
  r30.y = r19.x;
  r30.z = r4.x;
  r15.yzw = r17.xyz;
  r31.xyz = r18.zxy;
  r32.xyz = r14.yzw;
  r5.x = r0.w;
  r6.w = 0;
  while (true) {
    r7.w = cmp((int)r6.w == 2);
    if (r7.w != 0) break;
    r7.w = r6.w ? r0.x : r3.z;
    r7.w = (int)r7.w * 15;
    if (3 == 0) r8.w = 0; else if (3+24 < 32) {     r8.w = (uint)lightConstantsCB[r7.w].data[1].w << (32-(3 + 24)); r8.w = (uint)r8.w >> (32-3);    } else r8.w = (uint)lightConstantsCB[r7.w].data[1].w >> 24;
    switch (r8.w) {
      case 4 :      if (r2.w != 0) {
        r8.w = (int)r5.x & 7;
        r8.w = mad((int)r8.w, 24, 112);
        r20.yzw = lightConstantsCB[r7.w].data[0].xyz + eyeOffset.xyz;
        GBufferDiffuseColor[viewID].r8.w = u2.xyzw;
      }
      r8.w = (int)r5.x + 1;
      r9.w = cmp(0 < lightConstantsCB[r7.w].data[6].y);
      r33.xy = lightConstantsCB[r7.w].data[5].zw;
      r33.z = lightConstantsCB[r7.w].data[6].x;
      r20.yzw = -r33.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r7.w].data[0].xyz;
      r34.xyz = r20.yzw + -r11.xyz;
      r12.w = dot(r33.xyz, r34.xyz);
      r13.w = saturate(-r12.w / lightConstantsCB[r7.w].data[6].y);
      r35.xyz = r13.www * r33.xyz + r20.yzw;
      r35.xyz = r9.www ? r35.xyz : lightConstantsCB[r7.w].data[0].xyz;
      r35.xyz = r35.xyz + -r11.xyz;
      r16.w = dot(r35.xyz, r35.xyz);
      r17.w = rsqrt(r16.w);
      r35.xyz = r35.xyz * r17.www;
      r17.w = dot(r12.xyz, r35.xyz);
      r18.w = saturate(r17.w);
      r24.w = cmp(0 < r18.w);
      if (r24.w != 0) {
        r24.w = sqrt(r16.w);
        r28.w = lightConstantsCB[r7.w].data[3].x * lightConstantsCB[r7.w].data[3].x;
        r16.w = r28.w / r16.w;
        r16.w = min(1, r16.w);
        r35.xy = saturate(r24.ww * lightConstantsCB[r7.w].data[2].xz + lightConstantsCB[r7.w].data[2].yw);
        r35.zw = r35.xy * r35.xy;
        r35.xy = r35.xy * float2(-2,-2) + float2(3,3);
        r35.xy = r35.zw * r35.xy;
        r16.w = r35.x * r16.w;
        r16.w = r16.w * r35.y;
        r24.w = cmp(0 < r16.w);
        if (r24.w != 0) {
          if (3 == 0) r24.w = 0; else if (3+27 < 32) {           r24.w = (uint)lightConstantsCB[r7.w].data[1].w << (32-(3 + 27)); r24.w = (uint)r24.w >> (32-3);          } else r24.w = (uint)lightConstantsCB[r7.w].data[1].w >> 27;
          r28.w = (int)r8.w & 15;
          r29.w = (int)r28.w + -1;
          r29.w = cmp((uint)r29.w < 32);
          r29.w = r29.w ? r2.w : 0;
          if (r29.w != 0) {
            r35.xy = mad((int2)r28.ww, int2(24,24), int2(88,104));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r28.w, cb2[52].x, r35.x, u2.xxxx
          r28.w = samp0[]..swiz;
            r28.w = (int)r28.w | 4;
            GBufferDiffuseColor[viewID].r35.x = u2.x;
            GBufferDiffuseColor[viewID].r35.y = u2.x;
          }
          r28.w = (int)r5.x + 257;
          r24.w = cmp((int)r24.w != 1);
          if (r24.w != 0) {
            r24.w = abs(r17.w) * -0.200000003 + 0.400000006;
            r35.xyz = r12.xyz * r24.www + r11.xyz;
            r35.xyz = -lightConstantsCB[r7.w].data[4].yzw + r35.xyz;
            r24.w = max(abs(r35.y), abs(r35.z));
            r24.w = max(abs(r35.x), r24.w);
            r24.w = lightConstantsCB[r7.w].data[5].x / r24.w;
            r24.w = lightConstantsCB[r7.w].data[5].y + r24.w;
            r29.w = dot(r35.xyz, r35.xyz);
            r29.w = rsqrt(r29.w);
            r24.w = max(6.10351563e-05, r24.w);
            r30.w = 0x0000ffff & (int)lightConstantsCB[r7.w].data[1].w;
            r36.w = (uint)r30.w;
            r30.w = 0;
            r31.w = 0;
            while (true) {
              r32.w = cmp((int)r31.w >= 8);
              if (r32.w != 0) break;
              r37.y = dot(icb[r31.w+0].yx, r19.xy);
              r37.z = dot(icb[r31.w+0].yx, r19.yz);
              r37.yz = lightConstantsCB[r7.w].data[3].yy * r37.yz;
              r37.x = r37.y * r15.x;
              r37.w = r37.y * r14.x;
              r36.xyz = r35.xyz * r29.www + r37.xzw;
              r32.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r36.xyzw, r24.w).x;
              r30.w = r32.w * 0.125 + r30.w;
              r31.w = (int)r31.w + 1;
            }
          } else {
            r30.w = 1;
          }
          r16.w = r30.w * r16.w;
          r24.w = cmp(0 < r16.w);
          if (r24.w != 0) {
            r24.w = lightConstantsCB[r7.w].data[1].z * r1.w;
            r24.w = 0.25 * r24.w;
            r29.w = dot(r33.xyz, r16.xyz);
            r31.w = dot(r16.xyz, r34.xyz);
            r32.w = -r29.w * r29.w + lightConstantsCB[r7.w].data[6].y;
            r12.w = r29.w * r31.w + -r12.w;
            r12.w = saturate(r12.w / r32.w);
            r29.w = r32.w / lightConstantsCB[r7.w].data[6].y;
            r29.w = 10 * r29.w;
            r29.w = min(1, r29.w);
            r12.w = r12.w + -r13.w;
            r12.w = r29.w * r12.w + r13.w;
            r20.yzw = r12.www * r33.xyz + r20.yzw;
            r20.yzw = r9.www ? r20.yzw : lightConstantsCB[r7.w].data[0].xyz;
            r20.yzw = r20.yzw + -r11.xyz;
            r9.w = dot(r20.yzw, r20.yzw);
            r9.w = rsqrt(r9.w);
            r33.xyz = r20.yzw * r9.www;
            if (4 == 0) r12.w = 0; else if (4+16 < 32) {             r12.w = (uint)lightConstantsCB[r7.w].data[1].w << (32-(4 + 16)); r12.w = (uint)r12.w >> (32-4);            } else r12.w = (uint)lightConstantsCB[r7.w].data[1].w >> 16;
            r13.w = cmp(0 < (uint)r12.w);
            r13.w = r13.w ? r1.z : 0;
            if (r13.w != 0) {
              r12.w = (int)r12.w + numLights;
              r12.w = mad((int)r12.w, 15, -15);
              r13.w = abs(r17.w) * -0.200000003 + 0.400000006;
              r22.xyz = r12.xyz * r13.www + r11.xyz;
              r34.xyz = lightConstantsCB[r12.w].data[6].yzw;
              r34.w = lightConstantsCB[r12.w].data[7].x;
              r13.w = dot(r34.xyzw, r22.xyzw);
              r34.xyz = lightConstantsCB[r12.w].data[7].yzw;
              r34.w = lightConstantsCB[r12.w].data[8].x;
              r29.w = dot(r34.xyzw, r22.xyzw);
              r31.w = cmp(r29.w < r13.w);
              if (r31.w == 0) {
                r34.xyz = lightConstantsCB[r12.w].data[4].yzw;
                r34.w = lightConstantsCB[r12.w].data[5].x;
                r34.x = dot(r34.xyzw, r22.xyzw);
                r35.xyz = lightConstantsCB[r12.w].data[5].yzw;
                r35.w = lightConstantsCB[r12.w].data[6].x;
                r34.y = dot(r35.xyzw, r22.xyzw);
                r22.xy = r34.xy / r29.ww;
                r22.xy = r22.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r34.x = lightConstantsCB[r12.w].data[9].w + r22.x;
                r34.y = lightConstantsCB[r12.w].data[10].x + r22.y;
                r22.xy = lightConstantsCB[r12.w].data[9].yz * r34.xy;
                r34.xy = lightConstantsCB[r12.w].data[3].yy / lightConstantsCB[r12.w].data[8].yw;
                r34.zw = float2(1,1) + -r34.xy;
                r34.zw = cmp(r22.xy >= r34.zw);
                r34.xy = cmp(r34.xy >= r22.xy);
                r34.xy = (int2)r34.xy | (int2)r34.zw;
                r22.z = (int)r34.y | (int)r34.x;
                if (r22.z == 0) {
                  r22.xy = saturate(r22.xy);
                  r34.x = r22.x * lightConstantsCB[r12.w].data[8].y + lightConstantsCB[r12.w].data[8].z;
                  r34.y = r22.y * lightConstantsCB[r12.w].data[8].w + lightConstantsCB[r12.w].data[9].x;
                  r22.x = lightConstantsCB[r12.w].data[10].z * r29.w;
                  r13.w = lightConstantsCB[r12.w].data[10].y * r29.w + r13.w;
                  r13.w = r13.w / r22.x;
                }
              } else {
                r22.z = -1;
              }
              r22.x = (int)r31.w | (int)r22.z;
              if (r22.x == 0) {
                r13.w = max(6.10351563e-05, r13.w);
                r22.x = 0x0000ffff & (int)lightConstantsCB[r12.w].data[1].w;
                if (enableDitheredShadow != 0) {
                  r35.z = (uint)r22.x;
                  r22.yz = float2(0,0);
                  while (true) {
                    r29.w = cmp((int)r22.z >= 8);
                    if (r29.w != 0) break;
                    r36.x = dot(icb[r22.z+0].yx, r19.xw);
                    r36.y = dot(icb[r22.z+0].xy, r4.xy);
                    r35.xy = r36.xy * lightConstantsCB[r12.w].data[3].yy + r34.xy;
                    r29.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r35.xyz, r13.w).x;
                    r22.y = r29.w * 0.125 + r22.y;
                    r22.z = (int)r22.z + 1;
                  }
                } else {
                  r34.z = (uint)r22.x;
                  r22.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r34.xyz, r13.w).x;
                }
                r12.w = r22.y * r22.y;
                r12.w = r12.w * r22.y;
              } else {
                r12.w = 1;
              }
              r16.w = r16.w * r12.w;
            } else {
              if (4 == 0) r12.w = 0; else if (4+20 < 32) {               r12.w = (uint)lightConstantsCB[r7.w].data[1].w << (32-(4 + 20)); r12.w = (uint)r12.w >> (32-4);              } else r12.w = (uint)lightConstantsCB[r7.w].data[1].w >> 20;
              r13.w = cmp(0 < (uint)r12.w);
              r13.w = r13.w ? r4.z : 0;
              if (r13.w != 0) {
                r12.w = (int)r12.w + numLights;
                r12.w = mad((int)r12.w, 15, -15);
                r13.w = abs(r17.w) * -0.200000003 + 0.400000006;
                r23.xyz = r12.xyz * r13.www + r11.xyz;
                r34.xyz = lightConstantsCB[r12.w].data[6].yzw;
                r34.w = lightConstantsCB[r12.w].data[7].x;
                r13.w = dot(r34.xyzw, r23.xyzw);
                r34.xyz = lightConstantsCB[r12.w].data[7].yzw;
                r34.w = lightConstantsCB[r12.w].data[8].x;
                r22.x = dot(r34.xyzw, r23.xyzw);
                r22.z = cmp(r22.x < r13.w);
                if (r22.z == 0) {
                  r34.xyz = lightConstantsCB[r12.w].data[4].yzw;
                  r34.w = lightConstantsCB[r12.w].data[5].x;
                  r34.x = dot(r34.xyzw, r23.xyzw);
                  r35.xyz = lightConstantsCB[r12.w].data[5].yzw;
                  r35.w = lightConstantsCB[r12.w].data[6].x;
                  r34.y = dot(r35.xyzw, r23.xyzw);
                  r23.xy = r34.xy / r22.xx;
                  r23.xy = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                  r34.x = lightConstantsCB[r12.w].data[9].w + r23.x;
                  r34.y = lightConstantsCB[r12.w].data[10].x + r23.y;
                  r23.xy = lightConstantsCB[r12.w].data[9].yz * r34.xy;
                  r34.xy = lightConstantsCB[r12.w].data[3].yy / lightConstantsCB[r12.w].data[8].yw;
                  r34.zw = float2(1,1) + -r34.xy;
                  r34.zw = cmp(r23.xy >= r34.zw);
                  r34.xy = cmp(r34.xy >= r23.xy);
                  r34.xy = (int2)r34.xy | (int2)r34.zw;
                  r23.z = (int)r34.y | (int)r34.x;
                  if (r23.z == 0) {
                    r23.xy = saturate(r23.xy);
                    r34.x = r23.x * lightConstantsCB[r12.w].data[8].y + lightConstantsCB[r12.w].data[8].z;
                    r34.y = r23.y * lightConstantsCB[r12.w].data[8].w + lightConstantsCB[r12.w].data[9].x;
                    r23.x = lightConstantsCB[r12.w].data[10].z * r22.x;
                    r13.w = lightConstantsCB[r12.w].data[10].y * r22.x + r13.w;
                    r13.w = r13.w / r23.x;
                  }
                } else {
                  r23.z = -1;
                }
                r22.x = (int)r22.z | (int)r23.z;
                if (r22.x == 0) {
                  r13.w = max(6.10351563e-05, r13.w);
                  r22.x = 0x0000ffff & (int)lightConstantsCB[r12.w].data[1].w;
                  if (enableDitheredShadow != 0) {
                    r23.z = (uint)r22.x;
                    r22.z = 0;
                    r29.w = 0;
                    while (true) {
                      r31.w = cmp((int)r29.w >= 8);
                      if (r31.w != 0) break;
                      r35.x = dot(icb[r29.w+0].xy, r13.xy);
                      r35.y = dot(icb[r29.w+0].yx, r13.xz);
                      r23.xy = r35.xy * lightConstantsCB[r12.w].data[3].yy + r34.xy;
                      r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r13.w).x;
                      r22.z = r23.x * 0.125 + r22.z;
                      r29.w = (int)r29.w + 1;
                    }
                  } else {
                    r34.z = (uint)r22.x;
                    r22.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r34.xyz, r13.w).x;
                  }
                  r12.w = r22.z * r22.z;
                  r12.w = r12.w * r22.z;
                } else {
                  r12.w = 1;
                }
                r16.w = r16.w * r12.w;
              }
            }
            r12.w = -r18.w * r2.x + 1;
            r12.w = r12.w * r12.w;
            r12.w = -r12.w * 0.620000005 + 0.620000005;
            r12.w = r12.w + -r18.w;
            r12.w = r2.z * r12.w + r18.w;
            r12.w = r12.w * r16.w;
            r23.x = lightConstantsCB[r7.w].data[0].w;
            r23.yz = lightConstantsCB[r7.w].data[1].xy;
            r13.w = cmp(0 < r17.w);
            r34.xyz = r12.www * r23.xyz + r15.yzw;
            r12.w = saturate(dot(r12.xyz, r33.xyz));
            r20.yzw = r20.yzw * r9.www + r5.yzw;
            r9.w = dot(r20.yzw, r20.yzw);
            r9.w = rsqrt(r9.w);
            r20.yzw = r20.yzw * r9.www;
            r9.w = dot(r20.yzw, r5.yzw);
            r17.w = dot(r12.xyz, r20.yzw);
            r18.w = abs(r17.w) * r1.w + -abs(r17.w);
            r17.w = abs(r17.w) * r18.w + 1;
            r18.w = r12.w * r2.y + r4.w;
            r17.w = r17.w * r17.w;
            r17.w = r17.w * r18.w;
            r17.w = rcp(r17.w);
            r12.w = r12.w * r24.w;
            r12.w = r17.w * r12.w;
            r12.w = r12.w * r16.w;
            r20.yzw = r12.www * r23.xyz + r32.xyz;
            r9.w = saturate(1 + -r9.w);
            r17.w = r9.w * r9.w;
            r17.w = r17.w * r17.w;
            r9.w = r17.w * r9.w;
            r9.w = r12.w * r9.w;
            r23.xyz = r9.www * r23.xyz + r31.xyz;
            r15.yzw = r13.www ? r34.xyz : r15.yzw;
            r31.xyz = r13.www ? r23.xyz : r31.xyz;
            r32.xyz = r13.www ? r20.yzw : r32.xyz;
            r9.w = (int)r28.w & 15;
            r12.w = (int)r9.w + -1;
            r12.w = cmp((uint)r12.w < 32);
            r12.w = r12.w ? r2.w : 0;
            if (r12.w != 0) {
              r20.yz = mad((int2)r9.ww, int2(24,24), int2(88,108));
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r9.w, cb2[52].x, r20.y, u2.xxxx
            r9.w = samp0[]..swiz;
              r9.w = (int)r9.w | 8;
              GBufferDiffuseColor[viewID].r20.y = u2.x;
              GBufferDiffuseColor[viewID].r20.z = u2.x;
            }
            r5.x = (int)r5.x + 0x00010101;
          } else {
            r5.x = r28.w;
          }
        } else {
          r5.x = r8.w;
        }
      } else {
        r5.x = r8.w;
      }
      break;
      case 2 :      if (r2.w != 0) {
        r8.w = (int)r5.x & 7;
        r8.w = mad((int)r8.w, 24, 112);
        r21.yzw = lightConstantsCB[r7.w].data[0].xyz + eyeOffset.xyz;
        GBufferDiffuseColor[viewID].r8.w = u2.xyzw;
      }
      r8.w = (int)r5.x + 1;
      r23.xy = lightConstantsCB[r7.w].data[3].zw + -r11.xy;
      r23.z = lightConstantsCB[r7.w].data[4].x + -r11.z;
      r9.w = dot(r23.xyz, r23.xyz);
      r9.w = rsqrt(r9.w);
      r20.yzw = r23.xyz * r9.www;
      r12.w = dot(r12.xyz, r20.yzw);
      r13.w = saturate(r12.w);
      r16.w = cmp(0 < r13.w);
      if (r16.w != 0) {
        r33.xyz = lightConstantsCB[r7.w].data[7].yzw;
        r33.w = lightConstantsCB[r7.w].data[8].x;
        r16.w = dot(r33.xyzw, r11.xyzw);
        r17.w = cmp(r16.w < 1);
        if (r17.w != 0) {
          r20.yzw = float3(1,1,1);
          r17.w = 0;
        } else {
          r21.yzw = lightConstantsCB[r7.w].data[0].xyz + -r11.xyz;
          r18.w = lightConstantsCB[r7.w].data[3].x * lightConstantsCB[r7.w].data[3].x;
          r21.y = dot(r21.yzw, r21.yzw);
          r18.w = r18.w / r21.y;
          r18.w = min(1, r18.w);
          r21.yz = saturate(r16.ww * lightConstantsCB[r7.w].data[2].xz + lightConstantsCB[r7.w].data[2].yw);
          r34.xy = r21.yz * r21.yz;
          r21.yz = r21.yz * float2(-2,-2) + float2(3,3);
          r21.yz = r34.xy * r21.yz;
          r18.w = r21.y * r18.w;
          r18.w = r18.w * r21.z;
          r34.xyz = lightConstantsCB[r7.w].data[4].yzw;
          r34.w = lightConstantsCB[r7.w].data[5].x;
          r34.x = dot(r34.xyzw, r11.xyzw);
          r35.xyz = lightConstantsCB[r7.w].data[5].yzw;
          r35.w = lightConstantsCB[r7.w].data[6].x;
          r34.y = dot(r35.xyzw, r11.xyzw);
          r24.xy = r34.xy / r16.ww;
          r16.w = cmp(lightConstantsCB[r7.w].data[10].w < 0.00048828125);
          if (r16.w != 0) {
            r21.yz = saturate(abs(r24.xy) * lightConstantsCB[r7.w].data[12].xy + lightConstantsCB[r7.w].data[12].zw);
            r34.xy = r21.yz * r21.yz;
            r21.yz = r21.yz * float2(-2,-2) + float2(3,3);
            r21.yz = r34.xy * r21.yz;
            r16.w = r21.y * r21.z;
          } else {
            r34.xyzw = saturate(lightConstantsCB[r7.w].data[11].xyzw * abs(r24.yyxx));
            r34.xyzw = log2(r34.xyzw);
            r34.xyzw = lightConstantsCB[r7.w].data[12].zzzz * r34.xyzw;
            r34.xyzw = exp2(r34.xyzw);
            r21.yz = r34.xy + r34.zw;
            r21.yz = log2(r21.yz);
            r21.yz = lightConstantsCB[r7.w].data[12].ww * r21.yz;
            r21.yz = exp2(r21.yz);
            r21.y = lightConstantsCB[r7.w].data[12].x * r21.y;
            r21.w = lightConstantsCB[r7.w].data[12].y * r21.z + -1;
            r21.y = lightConstantsCB[r7.w].data[12].y * r21.z + -r21.y;
            r21.y = saturate(r21.w / r21.y);
            r21.z = r21.y * r21.y;
            r21.y = r21.y * -2 + 3;
            r16.w = r21.z * r21.y;
          }
          r17.w = r18.w * r16.w;
          r16.w = 255 & (int)lightConstantsCB[r7.w].data[14].w;
          if (r16.w != 0) {
            r18.w = dot(lightConstantsCB[r7.w].data[13].xyz, r24.xyz);
            r34.x = lightConstantsCB[r7.w].data[13].w;
            r34.yz = lightConstantsCB[r7.w].data[14].xy;
            r21.y = dot(r34.xyz, r24.xyz);
            r34.x = frac(r18.w);
            r34.y = frac(r21.y);
            r16.w = (int)r16.w + -1;
            r34.z = (uint)r16.w;
            r20.yzw = gCookieArray.SampleLevel(samplerLinear_s, r34.xyz, 0).xyz;
          } else {
            r20.yzw = float3(1,1,1);
          }
        }
        r34.x = lightConstantsCB[r7.w].data[0].w;
        r34.yz = lightConstantsCB[r7.w].data[1].xy;
        r20.yzw = r34.xyz * r20.yzw;
        r16.w = cmp(0 < r17.w);
        if (r16.w != 0) {
          if (3 == 0) r16.w = 0; else if (3+27 < 32) {           r16.w = (uint)lightConstantsCB[r7.w].data[1].w << (32-(3 + 27)); r16.w = (uint)r16.w >> (32-3);          } else r16.w = (uint)lightConstantsCB[r7.w].data[1].w >> 27;
          r18.w = (int)r8.w & 15;
          r21.y = (int)r18.w + -1;
          r21.y = cmp((uint)r21.y < 32);
          r21.y = r21.y ? r2.w : 0;
          if (r21.y != 0) {
            r21.yz = mad((int2)r18.ww, int2(24,24), int2(88,104));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r18.w, cb2[52].x, r21.y, u2.xxxx
          r18.w = samp0[]..swiz;
            r18.w = (int)r18.w | 4;
            GBufferDiffuseColor[viewID].r21.y = u2.x;
            GBufferDiffuseColor[viewID].r21.z = u2.x;
          }
          r18.w = (int)r5.x + 257;
          r16.w = cmp((int)r16.w != 1);
          if (r16.w != 0) {
            r16.w = abs(r12.w) * -0.200000003 + 0.400000006;
            r25.xyz = r12.xyz * r16.www + r11.xyz;
            r34.xyz = lightConstantsCB[r7.w].data[6].yzw;
            r34.w = lightConstantsCB[r7.w].data[7].x;
            r16.w = dot(r34.xyzw, r25.xyzw);
            r21.y = dot(r33.xyzw, r25.xyzw);
            r21.z = cmp(r21.y >= r16.w);
            if (r21.z != 0) {
              r33.xyz = lightConstantsCB[r7.w].data[4].yzw;
              r33.w = lightConstantsCB[r7.w].data[5].x;
              r24.x = dot(r33.xyzw, r25.xyzw);
              r33.xyz = lightConstantsCB[r7.w].data[5].yzw;
              r33.w = lightConstantsCB[r7.w].data[6].x;
              r24.y = dot(r33.xyzw, r25.xyzw);
              r21.zw = r24.xy / r21.yy;
              r21.zw = saturate(r21.zw * float2(0.5,-0.5) + float2(0.5,0.5));
              r25.x = r21.z * lightConstantsCB[r7.w].data[8].y + lightConstantsCB[r7.w].data[8].z;
              r25.y = r21.w * lightConstantsCB[r7.w].data[8].w + lightConstantsCB[r7.w].data[9].x;
              r16.w = r16.w / r21.y;
              r16.w = max(6.10351563e-05, r16.w);
              r21.y = 0x0000ffff & (int)lightConstantsCB[r7.w].data[1].w;
              if (enableDitheredShadow != 0) {
                r33.z = (uint)r21.y;
                r21.zw = float2(0,0);
                while (true) {
                  r22.x = cmp((int)r21.w >= 8);
                  if (r22.x != 0) break;
                  r24.x = dot(icb[r21.w+0].xy, r28.xy);
                  r24.y = dot(icb[r21.w+0].yx, r28.xz);
                  r33.xy = r24.xy * lightConstantsCB[r7.w].data[3].yy + r25.xy;
                  r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r33.xyz, r16.w).x;
                  r21.z = r22.x * 0.125 + r21.z;
                  r21.w = (int)r21.w + 1;
                }
              } else {
                r25.z = (uint)r21.y;
                r21.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r16.w).x;
              }
              r16.w = r21.z * r21.z;
              r16.w = r16.w * r21.z;
            } else {
              r16.w = 1;
            }
          } else {
            r16.w = 1;
          }
          r16.w = r17.w * r16.w;
          r17.w = cmp(0 < r16.w);
          if (r17.w != 0) {
            r17.w = lightConstantsCB[r7.w].data[1].z * r1.w;
            r17.w = r17.w * r13.w;
            if (4 == 0) r21.y = 0; else if (4+16 < 32) {             r21.y = (uint)lightConstantsCB[r7.w].data[1].w << (32-(4 + 16)); r21.y = (uint)r21.y >> (32-4);            } else r21.y = (uint)lightConstantsCB[r7.w].data[1].w >> 16;
            r21.w = cmp(0 < (uint)r21.y);
            r21.w = r21.w ? r1.z : 0;
            if (r21.w != 0) {
              r21.y = (int)r21.y + numLights;
              r21.y = mad((int)r21.y, 15, -15);
              r21.w = abs(r12.w) * -0.200000003 + 0.400000006;
              r26.xyz = r12.xyz * r21.www + r11.xyz;
              r33.xyz = lightConstantsCB[r21.y].data[6].yzw;
              r33.w = lightConstantsCB[r21.y].data[7].x;
              r21.w = dot(r33.xyzw, r26.xyzw);
              r33.xyz = lightConstantsCB[r21.y].data[7].yzw;
              r33.w = lightConstantsCB[r21.y].data[8].x;
              r22.x = dot(r33.xyzw, r26.xyzw);
              r24.x = cmp(r22.x < r21.w);
              if (r24.x == 0) {
                r33.xyz = lightConstantsCB[r21.y].data[4].yzw;
                r33.w = lightConstantsCB[r21.y].data[5].x;
                r25.x = dot(r33.xyzw, r26.xyzw);
                r33.xyz = lightConstantsCB[r21.y].data[5].yzw;
                r33.w = lightConstantsCB[r21.y].data[6].x;
                r25.y = dot(r33.xyzw, r26.xyzw);
                r24.yw = r25.xy / r22.xx;
                r24.yw = r24.yw * float2(0.5,-0.5) + float2(0.5,0.5);
                r25.x = lightConstantsCB[r21.y].data[9].w + r24.y;
                r25.y = lightConstantsCB[r21.y].data[10].x + r24.w;
                r24.yw = lightConstantsCB[r21.y].data[9].yz * r25.xy;
                r25.xy = lightConstantsCB[r21.y].data[3].yy / lightConstantsCB[r21.y].data[8].yw;
                r26.xy = float2(1,1) + -r25.xy;
                r26.xy = cmp(r24.yw >= r26.xy);
                r25.xy = cmp(r25.xy >= r24.yw);
                r25.xy = (int2)r25.xy | (int2)r26.xy;
                r25.x = (int)r25.y | (int)r25.x;
                if (r25.x == 0) {
                  r24.yw = saturate(r24.yw);
                  r26.x = r24.y * lightConstantsCB[r21.y].data[8].y + lightConstantsCB[r21.y].data[8].z;
                  r26.y = r24.w * lightConstantsCB[r21.y].data[8].w + lightConstantsCB[r21.y].data[9].x;
                  r24.y = lightConstantsCB[r21.y].data[10].z * r22.x;
                  r21.w = lightConstantsCB[r21.y].data[10].y * r22.x + r21.w;
                  r21.w = r21.w / r24.y;
                }
              } else {
                r25.x = -1;
              }
              r22.x = (int)r24.x | (int)r25.x;
              if (r22.x == 0) {
                r21.w = max(6.10351563e-05, r21.w);
                r22.x = 0x0000ffff & (int)lightConstantsCB[r21.y].data[1].w;
                if (enableDitheredShadow != 0) {
                  r25.z = (uint)r22.x;
                  r24.xy = float2(0,0);
                  while (true) {
                    r24.w = cmp((int)r24.y >= 8);
                    if (r24.w != 0) break;
                    r33.x = dot(icb[r24.y+0].xy, r29.xy);
                    r33.y = dot(icb[r24.y+0].yx, r29.xz);
                    r25.xy = r33.xy * lightConstantsCB[r21.y].data[3].yy + r26.xy;
                    r24.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r21.w).x;
                    r24.x = r24.w * 0.125 + r24.x;
                    r24.y = (int)r24.y + 1;
                  }
                } else {
                  r26.z = (uint)r22.x;
                  r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r21.w).x;
                }
                r21.y = r24.x * r24.x;
                r21.y = r21.y * r24.x;
              } else {
                r21.y = 1;
              }
              r16.w = r21.y * r16.w;
            } else {
              if (4 == 0) r7.w = 0; else if (4+20 < 32) {               r7.w = (uint)lightConstantsCB[r7.w].data[1].w << (32-(4 + 20)); r7.w = (uint)r7.w >> (32-4);              } else r7.w = (uint)lightConstantsCB[r7.w].data[1].w >> 20;
              r21.y = cmp(0 < (uint)r7.w);
              r21.y = r21.y ? r4.z : 0;
              if (r21.y != 0) {
                r7.w = (int)r7.w + numLights;
                r7.w = mad((int)r7.w, 15, -15);
                r21.y = abs(r12.w) * -0.200000003 + 0.400000006;
                r27.xyz = r12.xyz * r21.yyy + r11.xyz;
                r33.xyz = lightConstantsCB[r7.w].data[6].yzw;
                r33.w = lightConstantsCB[r7.w].data[7].x;
                r21.y = dot(r33.xyzw, r27.xyzw);
                r33.xyz = lightConstantsCB[r7.w].data[7].yzw;
                r33.w = lightConstantsCB[r7.w].data[8].x;
                r21.w = dot(r33.xyzw, r27.xyzw);
                r22.x = cmp(r21.w < r21.y);
                if (r22.x == 0) {
                  r33.xyz = lightConstantsCB[r7.w].data[4].yzw;
                  r33.w = lightConstantsCB[r7.w].data[5].x;
                  r25.x = dot(r33.xyzw, r27.xyzw);
                  r33.xyz = lightConstantsCB[r7.w].data[5].yzw;
                  r33.w = lightConstantsCB[r7.w].data[6].x;
                  r25.y = dot(r33.xyzw, r27.xyzw);
                  r24.yw = r25.xy / r21.ww;
                  r24.yw = r24.yw * float2(0.5,-0.5) + float2(0.5,0.5);
                  r25.x = lightConstantsCB[r7.w].data[9].w + r24.y;
                  r25.y = lightConstantsCB[r7.w].data[10].x + r24.w;
                  r24.yw = lightConstantsCB[r7.w].data[9].yz * r25.xy;
                  r25.xy = lightConstantsCB[r7.w].data[3].yy / lightConstantsCB[r7.w].data[8].yw;
                  r26.xy = float2(1,1) + -r25.xy;
                  r26.xy = cmp(r24.yw >= r26.xy);
                  r25.xy = cmp(r25.xy >= r24.yw);
                  r25.xy = (int2)r25.xy | (int2)r26.xy;
                  r25.x = (int)r25.y | (int)r25.x;
                  if (r25.x == 0) {
                    r24.yw = saturate(r24.yw);
                    r26.x = r24.y * lightConstantsCB[r7.w].data[8].y + lightConstantsCB[r7.w].data[8].z;
                    r26.y = r24.w * lightConstantsCB[r7.w].data[8].w + lightConstantsCB[r7.w].data[9].x;
                    r24.y = lightConstantsCB[r7.w].data[10].z * r21.w;
                    r21.y = lightConstantsCB[r7.w].data[10].y * r21.w + r21.y;
                    r21.y = r21.y / r24.y;
                  }
                } else {
                  r25.x = -1;
                }
                r21.w = (int)r22.x | (int)r25.x;
                if (r21.w == 0) {
                  r21.y = max(6.10351563e-05, r21.y);
                  r21.w = 0x0000ffff & (int)lightConstantsCB[r7.w].data[1].w;
                  if (enableDitheredShadow != 0) {
                    r25.z = (uint)r21.w;
                    r22.x = 0;
                    r24.y = 0;
                    while (true) {
                      r24.w = cmp((int)r24.y >= 8);
                      if (r24.w != 0) break;
                      r27.x = dot(icb[r24.y+0].xy, r30.xy);
                      r27.y = dot(icb[r24.y+0].yx, r30.xz);
                      r25.xy = r27.xy * lightConstantsCB[r7.w].data[3].yy + r26.xy;
                      r24.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r21.y).x;
                      r22.x = r24.w * 0.125 + r22.x;
                      r24.y = (int)r24.y + 1;
                    }
                  } else {
                    r26.z = (uint)r21.w;
                    r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r21.y).x;
                  }
                  r7.w = r22.x * r22.x;
                  r7.w = r7.w * r22.x;
                } else {
                  r7.w = 1;
                }
                r16.w = r16.w * r7.w;
              }
            }
            r7.w = -r13.w * r2.x + 1;
            r7.w = r7.w * r7.w;
            r7.w = -r7.w * 0.620000005 + 0.620000005;
            r7.w = r7.w + -r13.w;
            r7.w = r2.z * r7.w + r13.w;
            r7.w = r7.w * r16.w;
            r12.w = cmp(0 < r12.w);
            r25.xyz = r7.www * r20.yzw + r15.yzw;
            r23.xyz = r23.xyz * r9.www + r5.yzw;
            r7.w = dot(r23.xyz, r23.xyz);
            r7.w = rsqrt(r7.w);
            r23.xyz = r23.xyz * r7.www;
            r7.w = dot(r23.xyz, r5.yzw);
            r9.w = dot(r12.xyz, r23.xyz);
            r21.y = abs(r9.w) * r1.w + -abs(r9.w);
            r9.w = abs(r9.w) * r21.y + 1;
            r13.w = r13.w * r2.y + r4.w;
            r9.w = r9.w * r9.w;
            r9.w = r9.w * r13.w;
            r9.w = rcp(r9.w);
            r9.w = r9.w * r17.w;
            r9.w = r16.w * r9.w;
            r9.w = 0.25 * r9.w;
            r23.xyz = r9.www * r20.yzw + r32.xyz;
            r7.w = saturate(1 + -r7.w);
            r13.w = r7.w * r7.w;
            r13.w = r13.w * r13.w;
            r7.w = r13.w * r7.w;
            r7.w = r9.w * r7.w;
            r20.yzw = r7.www * r20.yzw + r31.xyz;
            r15.yzw = r12.www ? r25.xyz : r15.yzw;
            r31.xyz = r12.www ? r20.yzw : r31.xyz;
            r32.xyz = r12.www ? r23.xyz : r32.xyz;
            r7.w = (int)r18.w & 15;
            r9.w = (int)r7.w + -1;
            r9.w = cmp((uint)r9.w < 32);
            r9.w = r9.w ? r2.w : 0;
            if (r9.w != 0) {
              r20.yz = mad((int2)r7.ww, int2(24,24), int2(88,108));
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r7.w, cb2[52].x, r20.y, u2.xxxx
            r7.w = samp0[]..swiz;
              r7.w = (int)r7.w | 8;
              GBufferDiffuseColor[viewID].r20.y = u2.x;
              GBufferDiffuseColor[viewID].r20.z = u2.x;
            }
            r5.x = (int)r5.x + 0x00010101;
          } else {
            r5.x = r18.w;
          }
        } else {
          r5.x = r8.w;
        }
      } else {
        r5.x = r8.w;
      }
      break;
      default :
      break;
    }
    r6.w = (int)r6.w + 1;
  }
  r3.xyz = r3.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r0.x = (uint)r3.y;
  r2.xyz = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r2.x;
  r0.w = cmp((int)r0.x == (int)r0.w);
  r1.zw = r0.ww ? r2.yz : float2(-1,0);
  r2.xyz = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r2.x;
  r0.w = cmp((int)r0.x == (int)r0.w);
  r2.xy = r0.ww ? r2.yz : float2(-1,0);
  r4.xyz = r9.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r4.x;
  r0.w = cmp((int)r0.x == (int)r0.w);
  r4.xy = r0.ww ? r4.yz : float2(-1,0);
  r5.yzw = r10.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r5.y;
  r0.x = cmp((int)r0.x == (int)r0.w);
  r0.xw = r0.xx ? r5.zw : float2(-1,0);
  r7.x = r1.z;
  r7.y = r2.x;
  r7.z = r4.x;
  r7.w = r0.x;
  r7.xyzw = r7.xyzw + -r3.xxxx;
  r7.xyzw = cmp(abs(r7.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r7.xyzw = r7.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r0.x = r7.x + r7.y;
  r0.x = r0.x + r7.z;
  r0.x = r0.x + r7.w;
  r1.z = r7.y * r2.y;
  r1.z = r7.x * r1.w + r1.z;
  r1.z = r7.z * r4.y + r1.z;
  r0.w = r7.w * r0.w + r1.z;
  r3.w = r0.w / r0.x;
  r0.x = cmp(0 >= r0.x);
  r3.yz = r0.xx ? float2(0,0) : r3.zw;
  r0.xw = (int2)r1.xy & int2(1,1);
  r0.x = cmp((int)r0.w == (int)r0.x);
  r2.xyz = r0.xxx ? r3.xyz : r3.xzy;
  r0.x = -r2.z * 0.5 + r2.x;
  r3.y = r2.z + r0.x;
  r3.z = -r2.y * 0.5 + r0.x;
  r3.x = r3.z + r2.y;
  r2.xyz = float3(1,1,1) + -r3.xyz;
  r2.xyz = r31.xyz * r2.xyz;
  r2.xyz = r32.xyz * r3.xyz + r2.xyz;
  r2.xyz = r15.yzw * r6.xyz + r2.xyz;
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
        case 4 :        r0.x = (int)r10.w & 255;
        break;
        case 5 :        if (8 == 0) r0.x = 0; else if (8+8 < 32) {         r0.x = (uint)r10.w << (32-(8 + 8)); r0.x = (uint)r0.x >> (32-8);        } else r0.x = (uint)r10.w >> 8;
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
    r0.x = (int)r10.w & 255;
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
    r1.y = (int)r10.w & 255;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(12), r1.y
    InterlockedAdd(dest, value, orig_value);
    if (8 == 0) r1.z = 0; else if (8+8 < 32) {     r1.z = (uint)r10.w << (32-(8 + 8)); r1.z = (uint)r1.z >> (32-8);    } else r1.z = (uint)r10.w >> 8;
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