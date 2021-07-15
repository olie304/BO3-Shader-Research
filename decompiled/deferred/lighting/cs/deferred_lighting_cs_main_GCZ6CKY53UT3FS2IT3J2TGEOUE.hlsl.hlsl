// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:23:23 2021

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43;
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
  r0.x = permuteStride << 1;
  r0.x = (int)r0.x + (int)vThreadGroupID.x;
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
  r1.w = dot(r4.xy, float2(0.0671105608,0.00583714992));
  r1.w = frac(r1.w);
  r1.w = 52.9829178 * r1.w;
  r1.w = frac(r1.w);
  r1.w = r1.w * 6.28318548 + gameTick.w;
  sincos(r1.w, r4.x, r13.x);
  r2.x = saturate(dot(r12.xyz, r5.yzw));
  r1.w = dot(-r5.yzw, r12.xyz);
  r1.w = r1.w + r1.w;
  r14.xyz = r12.xyz * -r1.www + -r5.yzw;
  r1.w = 17 * r2.y;
  r1.w = exp2(r1.w);
  r1.w = 2 + r1.w;
  r1.w = 2 / r1.w;
  r2.z = sqrt(r1.w);
  r4.yz = float2(0.5,0.5) * renderTargetSize.xy;
  r4.yz = (uint2)r4.yz;
  r4.yz = cmp((int2)r1.xy == (int2)r4.yz);
  r2.w = r4.z ? r4.y : 0;
  r4.y = dot(r12.xyz, sunConstants.wldDir.xyz);
  r4.z = saturate(r4.y);
  r4.w = r3.z ? abs(r4.y) : r4.z;
  r6.w = cmp(0 >= r4.w);
  if (r6.w != 0) {
    r7.w = 0;
  }
  if (r6.w == 0) {
    r13.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * r11.yyy;
    r13.yzw = r11.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r13.yzw;
    r13.yzw = r11.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r13.yzw;
    r13.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r13.yzw;
    r6.w = -sunConstants.splitDepthOffset + r13.w;
    r6.w = -r6.w * 6.10351563e-05 + 1;
    r8.w = saturate(r6.w);
    r8.w = cmp(r6.w == r8.w);
    if (r8.w != 0) {
      r8.w = 0;
      r9.w = 0;
      while (true) {
        r10.w = cmp(r8.w >= 3);
        if (r10.w != 0) break;
        r10.w = (uint)r8.w;
        r15.xy = -sunConstants.splitPinTransform[r10.w].xy + r13.yz;
        r15.x = max(abs(r15.x), abs(r15.y));
        r9.w = sunConstants.splitPinTransform[r10.w].z * r15.x;
        r10.w = cmp(r9.w < 1);
        if (r10.w != 0) {
          break;
        }
        r8.w = 1 + r8.w;
        r9.w = 0;
      }
    } else {
      r8.w = 3;
      r9.w = 0;
    }
    r10.w = cmp(r8.w >= 3);
    if (r10.w != 0) {
      r15.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r16.xz = rcp(r15.xx);
      r16.y = -r16.z;
      r15.xyz = r13.yzy * r16.xyz + r15.yzy;
      r16.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r15.xyz = max(float3(0,0,0), r15.xyz);
      r15.xyz = min(r15.xyz, r16.xyz);
      r16.xy = sunConstants.sstLightingConstants.coordScale * r15.zy;
      r16.xy = floor(r16.xy);
      r15.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r16.y;
      r15.w = r15.w * sunConstants.sstLightingConstants.coordScale + r16.x;
      r15.w = (uint)r15.w;
      r15.w = (int)r15.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.x, r15.w, l(0), t23.xxxx
    r16.x = samp0[]..swiz;
      r16.y = (int)r16.x & 0x40000000;
      r16.z = (uint)r16.x << 2;
      if (r16.y == 0) {
        r16.y = (int)r16.x & 0x01ffffff;
        r17.x = (int)r15.w + (int)r16.y;
        r15.w = (uint)r16.x >> 25;
        r15.w = (uint)r15.w;
        r15.xyz = r15.xyz * r15.www;
        r15.xyz = frac(r15.xyz);
        r15.xyz = float3(128,128,128) * r15.xyz;
        r15.xyz = (uint3)r15.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
      r17.z = samp0[]..swiz;
        r16.xy = (uint2)r15.zy >> int2(6,6);
        r15.w = (int)r17.z & 0xc0000000;
        r16.w = (int)r17.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.w, r16.w, l(0), t23.xxxx
      r16.w = samp0[]..swiz;
        r16.y = r16.y ? r17.z : r16.w;
        r16.w = (uint)r16.y >> 13;
        r16.x = r16.x ? r16.w : r16.y;
        r16.x = (int)r16.x & 8191;
        r18.x = (int)r16.x + (int)r17.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
      r18.z = samp0[]..swiz;
        r17.y = 0;
        r18.y = 1;
        r16.xyw = r15.www ? r17.xyz : r18.xyz;
        r18.yz = r15.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r19.xy = (uint2)r15.zy >> (uint2)r18.yy;
        r19.xy = (int2)r19.xy & int2(1,1);
        r17.w = (int)r16.w & 0xc0000000;
        r18.y = (int)r16.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.y, r18.y, l(0), t23.xxxx
      r18.y = samp0[]..swiz;
        r18.y = r19.y ? r16.w : r18.y;
        r19.y = (uint)r18.y >> 13;
        r18.y = r19.x ? r19.y : r18.y;
        r18.y = (int)r18.y & 8191;
        r18.x = (int)r16.x + (int)r18.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.x, l(0), t23.xxxx
      r18.w = samp0[]..swiz;
        r16.xyw = r17.www ? r16.xyw : r18.xzw;
        r16.xyw = r15.www ? r17.xyz : r16.xyw;
        r15.w = (int)r16.w & 0xc0000000;
        if (r15.w == 0) {
          r15.w = (int)-r16.y + 6;
          r17.xy = (uint2)r15.zy >> (uint2)r15.ww;
          r15.w = (int)r16.w | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r17.y = (((uint)r17.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r17.x = (((uint)r17.x << 0) & bitmask.x) | ((uint)r17.y & ~bitmask.x);
          r17.x = (int)r17.x * 10;
          r15.w = (uint)r15.w >> (uint)r17.x;
          r15.w = (int)r15.w & 1023;
          r17.x = (int)r15.w + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.x, l(0), t23.xxxx
        r17.w = samp0[]..swiz;
          r17.yz = (int2)r16.yy + int2(1,2);
          r15.w = (int)-r17.y + 6;
          r18.xy = (uint2)r15.zy >> (uint2)r15.ww;
          r15.w = (int)r17.w & 0xc0000000;
          r16.y = (int)r17.w | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r18.y = (((uint)r18.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r18.x = (((uint)r18.x << 0) & bitmask.x) | ((uint)r18.y & ~bitmask.x);
          r18.x = (int)r18.x * 10;
          r16.y = (uint)r16.y >> (uint)r18.x;
          r16.y = (int)r16.y & 1023;
          r18.x = (int)r16.y + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
        r18.z = samp0[]..swiz;
          r18.y = r17.z;
          r18.xyz = r15.www ? r17.xyw : r18.xyz;
          r16.y = (int)-r18.y + 6;
          r17.yz = (uint2)r15.zy >> (uint2)r16.yy;
          r16.y = (int)r18.z & 0xc0000000;
          r18.y = (int)r18.z | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r17.z = (((uint)r17.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r17.y = (((uint)r17.y << 0) & bitmask.y) | ((uint)r17.z & ~bitmask.y);
          r17.y = (int)r17.y * 10;
          r17.y = (uint)r18.y >> (uint)r17.y;
          r17.y = (int)r17.y & 1023;
          r19.x = (int)r17.y + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.y, r19.x, l(0), t23.xxxx
        r19.y = samp0[]..swiz;
          r17.yz = r16.yy ? r18.xz : r19.xy;
          r16.xw = r15.ww ? r17.xw : r17.yz;
        }
        r15.w = (int)r16.w & 0xc0000000;
        if (r15.w == 0) {
          if (14 == 0) r16.y = 0; else if (14+15 < 32) {           r16.y = (uint)r16.w << (32-(14 + 15)); r16.y = (uint)r16.y >> (32-14);          } else r16.y = (uint)r16.w >> 15;
          r16.y = (uint)r16.y;
          r16.y = sunConstants.sstLightingConstants.constants.spanInInches * r16.y;
          r16.y = 6.10388815e-05 * r16.y;
          r17.xy = (int2)r16.ww & int2(32767,536870912);
          r17.x = (uint)r17.x;
          r17.x = sunConstants.sstLightingConstants.constants.spanInInches * r17.x;
          r17.x = 3.05185094e-05 * r17.x;
          r17.z = (int)r15.y & 3;
          r17.z = (int)r16.x + (int)r17.z;
          r17.z = (int)r17.z + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.z, l(0), t23.xxxx
        r17.z = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r18.x = (((uint)r15.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r18.y = (((uint)r15.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r18.z = (((uint)r15.z << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r15.x = (uint)r17.z >> (uint)r18.x;
          r15.x = (int)r15.x & 255;
          r15.x = (uint)r15.x;
          r15.x = r15.x * r17.x;
          r15.x = r15.x * 0.00392156886 + r16.y;
          r15.y = (int)r18.y + 1;
          if (1 == 0) r15.z = 0; else if (1+1 < 32) {           r15.z = (uint)r15.z << (32-(1 + 1)); r15.z = (uint)r15.z >> (32-1);          } else r15.z = (uint)r15.z >> 1;
          r15.y = (int)r15.z + (int)r15.y;
          r15.y = (int)r15.y + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.y, r15.y, l(0), t23.xxxx
        r15.y = samp0[]..swiz;
          r15.y = (uint)r15.y >> (uint)r18.z;
          r15.y = (int)r15.y & 0x0000ffff;
          r15.y = (uint)r15.y;
          r15.y = r15.y * r17.x;
          r15.y = r15.y * 1.52590219e-05 + r16.y;
          r16.z = r17.y ? r15.x : r15.y;
        } else {
          r15.x = (int)r16.w & 0x80000000;
          r15.y = (int)r16.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.y, r15.y, l(0), t23.xxxx
        r15.y = samp0[]..swiz;
          r15.x = r15.x ? r15.y : 0;
          r15.y = (uint)r16.w << 2;
          r15.z = (uint)r15.x >> 16;
          r15.x = (int)r15.x & 0x0000ffff;
          r15.xz = f16tof32(r15.xz);
          r15.y = r13.y * r15.z + r15.y;
          r15.x = r13.z * r15.x + r15.y;
          r16.z = r15.w ? r15.x : r16.z;
        }
      }
      r13.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r13.w;
      r13.w = cmp(r16.z < r13.w);
      r7.w = r13.w ? 0 : 1;
    }
    if (r10.w == 0) {
      if (enableDitheredShadow == 0) {
        r10.w = (uint)r8.w;
        r15.xy = -sunConstants.splitPinTransform[r10.w].xy + r13.yz;
        r15.xy = sunConstants.splitPinTransform[r10.w].zz * r15.xy;
        r15.xy = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.w = (int16)sunConstants.splitArrayOffset;
        r15.z = r10.w + r8.w;
        r10.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r6.w).x;
        r13.w = gTransShadowmapArray.SampleLevel(samp0_s, r15.xyz, 0).x;
        r10.w = r13.w + r10.w;
        r10.w = saturate(-1 + r10.w);
        r13.w = r10.w * r10.w;
        r7.w = r13.w * r10.w;
      }
      if (enableDitheredShadow != 0) {
        r15.x = -r4.x;
        r10.w = (uint)r8.w;
        r8.w = 1 + r8.w;
        r8.w = min(2, r8.w);
        r8.w = (uint)r8.w;
        r9.w = 1 + -r9.w;
        r9.w = 28 * r9.w;
        r9.w = (uint)r9.w;
        r16.xy = -sunConstants.splitPinTransform[r10.w].xy + r13.yz;
        r16.xy = sunConstants.splitPinTransform[r10.w].zz * r16.xy;
        r16.xy = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r13.yz = -sunConstants.splitPinTransform[r8.w].xy + r13.yz;
        r13.yz = sunConstants.splitPinTransform[r8.w].zz * r13.yz;
        r13.yz = r13.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r15.y = r13.x;
        r15.z = r4.x;
        r13.w = 0;
        r15.w = 0;
        while (true) {
          r16.z = cmp((uint)r15.w >= 8);
          if (r16.z != 0) break;
          r16.z = cmp((uint)r9.w < (uint)r15.w);
          r17.xy = r16.zz ? r13.yz : r16.xy;
          r16.w = r16.z ? sunConstants.splitPinTransform[r8.w].w : sunConstants.splitPinTransform[r10.w].w;
          r16.z = r16.z ? r8.w : r10.w;
          r18.x = dot(icb[r15.w+0].yx, r15.xy);
          r18.y = dot(icb[r15.w+0].yx, r15.yz);
          r17.xy = r18.xy * r16.ww + r17.xy;
          r16.z = (int)r16.z + (int16)sunConstants.splitArrayOffset;
          r17.z = (uint)r16.z;
          r16.z = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r6.w).x;
          r16.w = gTransShadowmapArray.SampleLevel(samp0_s, r17.xyz, 0).x;
          r16.z = r16.z + r16.w;
          r16.z = saturate(-1 + r16.z);
          r13.w = r16.z * 0.125 + r13.w;
          r15.w = (int)r15.w + 1;
        }
        r6.w = r13.w * r13.w;
        r7.w = r6.w * r13.w;
      }
    }
  }
  r6.w = 1 + -r2.y;
  r8.w = 5 * r6.w;
  r9.w = r6.w * 5 + -2.5;
  r9.w = 0.400000006 * r9.w;
  r9.w = max(0, r9.w);
  r9.w = 100 * r9.w;
  r13.yz = -r6.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r10.w = exp2(r13.y);
  r10.w = r10.w * r2.x;
  r10.w = 9.1368103 * r10.w;
  r13.y = r8.w * r6.w;
  r13.y = -r13.y * 2.0159049 + r13.z;
  r13.y = exp2(r13.y);
  r13.y = r13.y * r2.x;
  r13.y = 9.70808983 * r13.y;
  r10.w = max(r13.y, r10.w);
  r10.w = max(1.26815999, r10.w);
  if (probeDebug != 0) {
    r13.y = (uint)renderTargetSize.x;
    r13.y = (int)r13.y + 7;
    r13.y = (uint)r13.y >> 3;
    r13.y = mad((int)r0.z, (int)r13.y, (int)r0.y);
    bitmask.y = ((~(-1 << 27)) << 5) & 0xffffffff;  r13.y = (((uint)r13.y << 5) & bitmask.y) | ((uint)16 & ~bitmask.y);
    r15.xyzw = float4(0,0,0,0);
    r16.xyzw = float4(0,0,0,0);
    r17.xyzw = float4(0,0,0,0);
    r18.xyzw = float4(0,0,0,0);
    r19.xyzw = float4(0,0,0,0);
    r20.xyzw = float4(0,0,0,0);
    r21.xyzw = float4(0,0,0,0);
    r22.xyzw = float4(0,0,0,0);
    r23.xyzw = float4(0,0,0,0);
    r24.xyzw = float4(0,0,0,0);
    r25.xyzw = float4(0,0,0,0);
    r13.zw = float2(0,0);
    r26.xyzw = float4(0,0,0,0);
    r27.zw = float2(0,0);
    r28.zw = float2(0,0);
    while (true) {
      r29.x = cmp((uint)r28.w >= numRefProbes);
      if (r29.x != 0) break;
      r29.x = (uint)r28.w >> 5;
      r29.x = (int)r13.y + (int)r29.x;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r29.x, r29.x, l(0), t26.xxxx
    r29.x = samp0[]..swiz;
      r30.xyzw = r15.yxzw;
      r31.xyzw = r16.xyzw;
      r32.xyzw = r17.yzwx;
      r33.xyzw = r18.xyzw;
      r34.xyzw = r19.xyzw;
      r35.xyzw = r20.zwxy;
      r36.xyzw = r21.zwxy;
      r37.xyzw = r23.zwxy;
      r38.xyzw = r24.zwxy;
      r29.yzw = r26.xyz;
      r39.xy = r13.wz;
      r39.z = r26.w;
      r39.w = r27.z;
      r40.x = r28.z;
      r40.y = r27.w;
      r41.xyzw = r22.zwxy;
      r42.xyzw = r25.zwxy;
      r40.z = r29.x;
      while (true) {
        if (r40.z == 0) break;
        r40.w = firstbitlow((uint)r40.z);
        r43.x = 1 << (int)r40.w;
        r43.x = ~(int)r43.x;
        r40.z = (int)r40.z & (int)r43.x;
        r40.w = (int)r28.w + (int)r40.w;
        r40.w = (int)r40.w * 14;
        r43.xyz = -refProbeConstantsCB[r40.w].data[0].xyz + r11.xyz;
        r43.x = dot(r43.xyz, r43.xyz);
        r43.x = sqrt(r43.x);
        r43.x = cmp(probeDebugRadius >= r43.x);
        if (r43.x != 0) {
          r30.yzw = refProbeConstantsCB[r40.w].data[1].xyz;
          r30.x = refProbeConstantsCB[r40.w].data[0].w;
          r31.yzw = refProbeConstantsCB[r40.w].data[2].xyz;
          r31.x = refProbeConstantsCB[r40.w].data[1].w;
          r32.xyz = refProbeConstantsCB[r40.w].data[3].xyz;
          r32.w = refProbeConstantsCB[r40.w].data[4].z;
          r33.yz = refProbeConstantsCB[r40.w].data[4].xy;
          r33.x = refProbeConstantsCB[r40.w].data[3].w;
          r33.w = refProbeConstantsCB[r40.w].data[6].x;
          r34.yzw = refProbeConstantsCB[r40.w].data[5].xyz;
          r34.x = refProbeConstantsCB[r40.w].data[4].w;
          r35.yz = refProbeConstantsCB[r40.w].data[7].yw;
          r35.x = refProbeConstantsCB[r40.w].data[6].y;
          r35.w = refProbeConstantsCB[r40.w].data[8].x;
          r36.xyz = refProbeConstantsCB[r40.w].data[8].yzw;
          r36.w = refProbeConstantsCB[r40.w].data[9].x;
          r37.xyz = refProbeConstantsCB[r40.w].data[10].yzw;
          r37.w = refProbeConstantsCB[r40.w].data[11].x;
          r38.xyz = refProbeConstantsCB[r40.w].data[11].yzw;
          r38.w = refProbeConstantsCB[r40.w].data[12].x;
          r29.yzw = refProbeConstantsCB[r40.w].data[0].xyz;
          r43.xy = refProbeConstantsCB[r40.w].data[13].yz;
          r39.z = -1;
          r39.w = refProbeConstantsCB[r40.w].data[2].w;
          r40.x = refProbeConstantsCB[r40.w].data[5].w;
          r40.y = refProbeConstantsCB[r40.w].data[7].z;
          r41.xyz = refProbeConstantsCB[r40.w].data[9].yzw;
          r41.w = refProbeConstantsCB[r40.w].data[10].x;
          r42.xyz = refProbeConstantsCB[r40.w].data[12].yzw;
          r42.w = refProbeConstantsCB[r40.w].data[13].x;
          r39.xy = r43.xy;
          break;
        }
      }
      if (r39.z != 0) {
        r15.xyzw = r30.yxzw;
        r16.xyzw = r31.xyzw;
        r17.xyzw = r32.wxyz;
        r18.xyzw = r33.xyzw;
        r19.xyzw = r34.xyzw;
        r20.xyzw = r35.zwxy;
        r21.xyzw = r36.zwxy;
        r22.xyzw = r41.zwxy;
        r23.xyzw = r37.zwxy;
        r24.xyzw = r38.zwxy;
        r25.xyzw = r42.zwxy;
        r26.xyz = r29.yzw;
        r13.zw = r39.yx;
        r26.w = -1;
        r27.z = r39.w;
        r28.z = r40.x;
        r27.w = r40.y;
        break;
      }
      r28.w = (int)r28.w + 32;
      r15.xyzw = r30.yxzw;
      r16.xyzw = r31.xyzw;
      r17.xyzw = r32.wxyz;
      r18.xyzw = r33.xyzw;
      r19.xyzw = r34.xyzw;
      r20.xyzw = r35.zwxy;
      r21.xyzw = r36.zwxy;
      r23.xyzw = r37.zwxy;
      r24.xyzw = r38.zwxy;
      r26.xyz = r29.yzw;
      r13.zw = r39.yx;
      r26.w = r39.z;
      r27.z = r39.w;
      r28.z = r40.x;
      r27.w = r40.y;
      r22.xyzw = r41.zwxy;
      r25.xyzw = r42.zwxy;
    }
    r29.xy = r15.yw;
    r27.x = r15.z;
    r15.yz = r16.xw;
    r27.y = r16.y;
    r29.z = r16.z;
    r16.xyz = r17.yzw;
    r17.yz = r19.xy;
    r28.xy = r19.zw;
    r19.xy = r20.zw;
    r20.z = r21.z;
    r21.z = r22.z;
    r22.z = r23.z;
    r23.z = r24.z;
    r24.z = r25.z;
    r25.z = r13.w;
  } else {
    r26.w = 0;
  }
  if (r26.w != 0) {
    if (r2.w != 0) {
      r30.yzw = eyeOffset.xyz + r26.xyz;
      r30.x = 16;
      GBufferDiffuseColor[viewID].880 = u2.xyzw;
    }
    r26.xyz = -r26.xyz + r11.xyz;
    r13.y = (int)r27.w & 0x0000ffff;
    if (6 == 0) r13.w = 0; else if (6+25 < 32) {     r13.w = (uint)r27.w << (32-(6 + 25)); r13.w = (uint)r13.w >> (32-6);    } else r13.w = (uint)r27.w >> 25;
    r15.w = (int)r13.y * 6;
    r16.w = dot(refProbeAttenuationConstantsCB[r15.w].data[0].xyz, r26.xyz);
    r16.w = saturate(refProbeAttenuationConstantsCB[r15.w].data[0].w + r16.w);
    r17.w = dot(refProbeAttenuationConstantsCB[r15.w].data[1].xyz, r26.xyz);
    r17.w = saturate(refProbeAttenuationConstantsCB[r15.w].data[1].w + r17.w);
    r16.w = r17.w * r16.w;
    r17.w = dot(refProbeAttenuationConstantsCB[r15.w].data[2].xyz, r26.xyz);
    r17.w = saturate(refProbeAttenuationConstantsCB[r15.w].data[2].w + r17.w);
    r16.w = r17.w * r16.w;
    r17.w = dot(refProbeAttenuationConstantsCB[r15.w].data[3].xyz, r26.xyz);
    r17.w = saturate(refProbeAttenuationConstantsCB[r15.w].data[3].w + r17.w);
    r16.w = r17.w * r16.w;
    r17.w = dot(refProbeAttenuationConstantsCB[r15.w].data[4].xyz, r26.xyz);
    r17.w = saturate(refProbeAttenuationConstantsCB[r15.w].data[4].w + r17.w);
    r16.w = r17.w * r16.w;
    r17.w = dot(refProbeAttenuationConstantsCB[r15.w].data[5].xyz, r26.xyz);
    r15.w = saturate(refProbeAttenuationConstantsCB[r15.w].data[5].w + r17.w);
    r30.x = r16.w * r15.w;
    r15.w = (int)r18.w & 1;
    r30.yz = float2(0,1);
    r19.zw = r15.ww ? r30.xy : r30.zx;
    r30.x = 1;
    r15.w = r18.w;
    r31.xy = r19.zw;
    r16.w = 1;
    while (true) {
      r17.w = cmp((int)r16.w >= (int)r13.w);
      if (r17.w != 0) break;
      r17.w = (int)r13.y + (int)r16.w;
      r17.w = (int)r17.w * 6;
      r20.w = dot(refProbeAttenuationConstantsCB[r17.w].data[0].xyz, r26.xyz);
      r20.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[0].w + r20.w);
      r20.w = r31.x * r20.w;
      r28.w = dot(refProbeAttenuationConstantsCB[r17.w].data[1].xyz, r26.xyz);
      r28.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[1].w + r28.w);
      r20.w = r28.w * r20.w;
      r28.w = dot(refProbeAttenuationConstantsCB[r17.w].data[2].xyz, r26.xyz);
      r28.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[2].w + r28.w);
      r20.w = r28.w * r20.w;
      r28.w = dot(refProbeAttenuationConstantsCB[r17.w].data[3].xyz, r26.xyz);
      r28.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[3].w + r28.w);
      r20.w = r28.w * r20.w;
      r28.w = dot(refProbeAttenuationConstantsCB[r17.w].data[4].xyz, r26.xyz);
      r28.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[4].w + r28.w);
      r20.w = r28.w * r20.w;
      r28.w = dot(refProbeAttenuationConstantsCB[r17.w].data[5].xyz, r26.xyz);
      r17.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[5].w + r28.w);
      r31.x = r20.w * r17.w;
      r28.w = (uint)r15.w >> 2;
      if (1 == 0) r29.w = 0; else if (1+2 < 32) {       r29.w = (uint)r15.w << (32-(1 + 2)); r29.w = (uint)r29.w >> (32-1);      } else r29.w = (uint)r15.w >> 2;
      r30.z = (int)r28.w & 2;
      r30.w = max(r31.y, r31.x);
      r17.w = -r20.w * r17.w + 1;
      r17.w = r31.y * r17.w;
      r30.y = r30.z ? r17.w : r30.w;
      r31.xy = r29.ww ? r31.xy : r30.xy;
      r16.w = (int)r16.w + 1;
      r15.w = r28.w;
    }
    r31.y = saturate(r31.y);
    r30.w = r31.y * r19.x;
    r13.y = cmp(0 < r30.w);
    if (r13.y != 0) {
      if (r2.w != 0) {
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r13.y, cb2[52].x, l(880), u2.xxxx
      r13.y = samp0[]..swiz;
        r13.y = (int)r13.y | 32;
        GBufferDiffuseColor[viewID].880 = u2.x;
        GBufferDiffuseColor[viewID].896 = u2.x;
      }
      r13.y = r30.w * r19.y;
      r13.w = dot(r14.xyz, r20.xyz);
      r15.w = dot(r26.xyz, r20.xyz);
      r15.w = r15.w + -r21.w;
      r16.w = cmp(r15.w >= 0);
      r15.w = max(abs(r15.w), r9.w);
      r15.w = r16.w ? r15.w : -r15.w;
      r13.w = max(1.00000001e-07, -r13.w);
      r13.w = r15.w / r13.w;
      r13.w = min(131072, abs(r13.w));
      r15.w = dot(r14.xyz, r21.xyz);
      r16.w = dot(r26.xyz, r21.xyz);
      r16.w = r16.w + -r22.w;
      r17.w = cmp(r16.w >= 0);
      r16.w = max(abs(r16.w), r9.w);
      r16.w = r17.w ? r16.w : -r16.w;
      r15.w = max(1.00000001e-07, -r15.w);
      r15.w = r16.w / r15.w;
      r13.w = min(abs(r15.w), r13.w);
      r15.w = dot(r14.xyz, r22.xyz);
      r16.w = dot(r26.xyz, r22.xyz);
      r16.w = r16.w + -r23.w;
      r17.w = cmp(r16.w >= 0);
      r16.w = max(abs(r16.w), r9.w);
      r16.w = r17.w ? r16.w : -r16.w;
      r15.w = max(1.00000001e-07, -r15.w);
      r15.w = r16.w / r15.w;
      r13.w = min(abs(r15.w), r13.w);
      r15.w = dot(r14.xyz, r23.xyz);
      r16.w = dot(r26.xyz, r23.xyz);
      r16.w = r16.w + -r24.w;
      r17.w = cmp(r16.w >= 0);
      r16.w = max(abs(r16.w), r9.w);
      r16.w = r17.w ? r16.w : -r16.w;
      r15.w = max(1.00000001e-07, -r15.w);
      r15.w = r16.w / r15.w;
      r13.w = min(abs(r15.w), r13.w);
      r15.w = dot(r14.xyz, r24.xyz);
      r16.w = dot(r26.xyz, r24.xyz);
      r16.w = r16.w + -r25.w;
      r17.w = cmp(r16.w >= 0);
      r16.w = max(abs(r16.w), r9.w);
      r16.w = r17.w ? r16.w : -r16.w;
      r15.w = max(1.00000001e-07, -r15.w);
      r15.w = r16.w / r15.w;
      r13.w = min(abs(r15.w), r13.w);
      r15.w = dot(r14.xyz, r25.xyz);
      r16.w = dot(r26.xyz, r25.xyz);
      r13.z = r16.w + -r13.z;
      r16.w = cmp(r13.z >= 0);
      r13.z = max(abs(r13.z), r9.w);
      r13.z = r16.w ? r13.z : -r13.z;
      r15.w = max(1.00000001e-07, -r15.w);
      r13.z = r13.z / r15.w;
      r13.z = min(r13.w, abs(r13.z));
      r18.xyz = r26.xyz + r18.xyz;
      r18.xyz = r14.xyz * r13.zzz + r18.xyz;
      r13.w = dot(r18.xyz, r18.xyz);
      r13.w = sqrt(r13.w);
      r13.z = r13.z / r13.w;
      r13.z = r13.z + r13.z;
      r13.z = sqrt(r13.z);
      r13.z = r6.w * 5 + r13.z;
      r13.z = -0.844799995 + r13.z;
      r19.x = dot(r18.xyz, r29.xyz);
      r19.y = dot(r18.xyz, r15.xyz);
      r19.z = dot(r18.xyz, r27.xyz);
      if (9 == 0) r13.w = 0; else if (9+16 < 32) {       r13.w = (uint)r27.w << (32-(9 + 16)); r13.w = (uint)r13.w >> (32-9);      } else r13.w = (uint)r27.w >> 16;
      r19.w = (uint)r13.w;
      r18.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r19.xyzw, r13.z).xyz;
      r20.xyz = (int3)r18.xyz & int3(-2147483648,-2147483648,-2147483648);
      r20.xyz = cmp((int3)r20.xyz == int3(2139095040,2139095040,2139095040));
      r13.z = (int)r20.y | (int)r20.x;
      r13.z = (int)r20.z | (int)r13.z;
      r18.xyz = r13.zzz ? float3(1,1,0) : r18.xyz;
      r20.x = dot(r26.xyz, r29.xyz);
      r20.y = dot(r26.xyz, r15.xyz);
      r20.z = dot(r26.xyz, r27.xyz);
      r16.xyz = saturate(r20.xyz * r16.xyz + float3(0.5,0.5,0.5));
      r16.xyz = r16.xyz * r17.xyz + r28.xyz;
      r19.x = dot(r12.xyz, r29.xyz);
      r19.y = dot(r12.xyz, r15.xyz);
      r19.z = dot(r12.xyz, r27.xyz);
      r15.xyz = cmp(float3(0,0,0) < r19.xyz);
      r17.z = r15.x ? 0 : 0.5;
      r17.xy = float2(0,0);
      r17.xyz = r17.xyz + r16.xyz;
      r17.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r17.xyz, 0).xyz;
      r20.xyz = r19.xyz * r19.xyz;
      r20.xyz = r20.xyz * r13.yyy;
      r21.z = r15.y ? 0 : 0.5;
      r21.xy = float2(0,0);
      r15.xyw = r21.xyz + r16.xyz;
      r15.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r15.xyw, 0).xyz;
      r15.xyw = r15.xyw * r20.yyy;
      r15.xyw = r17.xyz * r20.xxx + r15.xyw;
      r17.z = r15.z ? 0 : 0.5;
      r17.xy = float2(0,0);
      r16.xyz = r17.xyz + r16.xyz;
      r16.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r16.xyz, 0).xyz;
      r15.xyz = r16.xyz * r20.zzz + r15.xyw;
      r16.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r19.xyzw, 6).xyz;
      r17.xyz = (int3)r16.xyz & int3(-2147483648,-2147483648,-2147483648);
      r17.xyz = cmp((int3)r17.xyz == int3(2139095040,2139095040,2139095040));
      r13.z = (int)r17.y | (int)r17.x;
      r13.z = (int)r17.z | (int)r13.z;
      r16.xyz = r13.zzz ? float3(1,1,0) : r16.xyz;
      r15.xyz = r16.xyz * r15.xyz;
      r13.z = dot(r15.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r13.w = r13.z * r10.w;
      r15.xyz = r18.xyz * r13.yyy;
      r13.y = dot(r15.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r13.y = r10.w * r13.z + r13.y;
      r13.y = r13.w / r13.y;
      r30.xyz = r15.xyz * r13.yyy;
      r13.y = 257;
    } else {
      r30.xyzw = float4(0,0,0,0);
      r13.y = 1;
    }
    r13.z = -1;
  } else {
    r30.xyzw = float4(0,0,0,0);
    r13.y = 0;
  }
  r13.z = (int)r13.z & (int)r26.w;
  if (r13.z == 0) {
    r13.z = numRefProbes + -numOverrideProbes;
    r13.w = (uint)renderTargetSize.x;
    r13.w = (int)r13.w + 7;
    r13.w = (uint)r13.w >> 3;
    r13.w = mad((int)r0.z, (int)r13.w, (int)r0.y);
    bitmask.w = ((~(-1 << 27)) << 5) & 0xffffffff;  r13.w = (((uint)r13.w << 5) & bitmask.w) | ((uint)16 & ~bitmask.w);
    r15.x = (int)r13.z & -32;
    r15.y = (int)r13.z + (int)-r15.x;
    r15.z = numRefProbes & -32;
    r15.w = (int)-r15.z + numRefProbes;
    r16.x = 16;
    r17.yz = float2(0,1);
    r18.xy = float2(0,0);
    r19.xz = float2(1,1);
    r20.xy = float2(0,0);
    r21.xy = float2(0,0);
    r22.xyz = float3(0,0,0);
    r22.w = r30.x;
    r23.xyz = r30.yzw;
    r23.w = r13.y;
    r17.w = r15.x;
    while (true) {
      r18.w = cmp((uint)r17.w >= numRefProbes);
      if (r18.w != 0) break;
      r18.w = (uint)r17.w >> 5;
      r18.w = (int)r13.w + (int)r18.w;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.w, l(0), t26.xxxx
    r18.w = samp0[]..swiz;
      r20.w = cmp((int)r15.x == (int)r17.w);
      bitmask.w = ((~(-1 << r15.y)) << 0) & 0xffffffff;  r21.w = (((uint)0 << 0) & bitmask.w) | ((uint)r18.w & ~bitmask.w);
      r18.w = r20.w ? r21.w : r18.w;
      r20.w = cmp((int)r15.z == (int)r17.w);
      if (r15.w == 0) r21.w = 0; else if (r15.w+0 < 32) {       r21.w = (uint)r18.w << (32-(r15.w + 0)); r21.w = (uint)r21.w >> (32-r15.w);      } else r21.w = (uint)r18.w >> 0;
      r18.w = r20.w ? r21.w : r18.w;
      r24.xyzw = r22.xyzw;
      r25.xyzw = r23.xyzw;
      r20.w = r18.w;
      while (true) {
        if (r20.w == 0) break;
        r21.w = firstbitlow((uint)r20.w);
        r26.x = 1 << (int)r21.w;
        r26.x = ~(int)r26.x;
        r20.w = (int)r20.w & (int)r26.x;
        r21.w = (int)r17.w + (int)r21.w;
        r21.w = (int)r21.w * 14;
        r26.x = (int)r25.w & 255;
        r26.y = cmp((uint)r26.x < 32);
        r26.y = r26.y ? r2.w : 0;
        if (r26.y != 0) {
          r26.x = mad((int)r26.x, 20, 880);
          r16.yzw = refProbeConstantsCB[r21.w].data[0].xyz + eyeOffset.xyz;
          GBufferDiffuseColor[viewID].r26.x = u2.xyzw;
        }
        r26.w = (int)r25.w + 1;
        r16.yzw = -refProbeConstantsCB[r21.w].data[0].xyz + r11.xyz;
        r27.x = 0x0000ffff & (int)refProbeConstantsCB[r21.w].data[7].z;
        if (6 == 0) r27.y = 0; else if (6+25 < 32) {         r27.y = (uint)refProbeConstantsCB[r21.w].data[7].z << (32-(6 + 25)); r27.y = (uint)r27.y >> (32-6);        } else r27.y = (uint)refProbeConstantsCB[r21.w].data[7].z >> 25;
        r27.z = (int)r27.x * 6;
        r27.w = dot(refProbeAttenuationConstantsCB[r27.z].data[0].xyz, r16.yzw);
        r27.w = saturate(refProbeAttenuationConstantsCB[r27.z].data[0].w + r27.w);
        r28.x = dot(refProbeAttenuationConstantsCB[r27.z].data[1].xyz, r16.yzw);
        r28.x = saturate(refProbeAttenuationConstantsCB[r27.z].data[1].w + r28.x);
        r27.w = r28.x * r27.w;
        r28.x = dot(refProbeAttenuationConstantsCB[r27.z].data[2].xyz, r16.yzw);
        r28.x = saturate(refProbeAttenuationConstantsCB[r27.z].data[2].w + r28.x);
        r27.w = r28.x * r27.w;
        r28.x = dot(refProbeAttenuationConstantsCB[r27.z].data[3].xyz, r16.yzw);
        r28.x = saturate(refProbeAttenuationConstantsCB[r27.z].data[3].w + r28.x);
        r27.w = r28.x * r27.w;
        r28.x = dot(refProbeAttenuationConstantsCB[r27.z].data[4].xyz, r16.yzw);
        r28.x = saturate(refProbeAttenuationConstantsCB[r27.z].data[4].w + r28.x);
        r27.w = r28.x * r27.w;
        r28.x = dot(refProbeAttenuationConstantsCB[r27.z].data[5].xyz, r16.yzw);
        r27.z = saturate(refProbeAttenuationConstantsCB[r27.z].data[5].w + r28.x);
        r17.x = r27.w * r27.z;
        r27.z = 1 & (int)refProbeConstantsCB[r21.w].data[6].x;
        r27.zw = r27.zz ? r17.xy : r17.zx;
        r17.x = refProbeConstantsCB[r21.w].data[6].x;
        r28.xy = r27.zw;
        r28.z = 1;
        while (true) {
          r28.w = cmp((int)r28.z >= (int)r27.y);
          if (r28.w != 0) break;
          r28.w = (int)r27.x + (int)r28.z;
          r28.w = (int)r28.w * 6;
          r29.x = dot(refProbeAttenuationConstantsCB[r28.w].data[0].xyz, r16.yzw);
          r29.x = saturate(refProbeAttenuationConstantsCB[r28.w].data[0].w + r29.x);
          r29.x = r29.x * r28.x;
          r29.y = dot(refProbeAttenuationConstantsCB[r28.w].data[1].xyz, r16.yzw);
          r29.y = saturate(refProbeAttenuationConstantsCB[r28.w].data[1].w + r29.y);
          r29.x = r29.x * r29.y;
          r29.y = dot(refProbeAttenuationConstantsCB[r28.w].data[2].xyz, r16.yzw);
          r29.y = saturate(refProbeAttenuationConstantsCB[r28.w].data[2].w + r29.y);
          r29.x = r29.x * r29.y;
          r29.y = dot(refProbeAttenuationConstantsCB[r28.w].data[3].xyz, r16.yzw);
          r29.y = saturate(refProbeAttenuationConstantsCB[r28.w].data[3].w + r29.y);
          r29.x = r29.x * r29.y;
          r29.y = dot(refProbeAttenuationConstantsCB[r28.w].data[4].xyz, r16.yzw);
          r29.y = saturate(refProbeAttenuationConstantsCB[r28.w].data[4].w + r29.y);
          r29.x = r29.x * r29.y;
          r29.y = dot(refProbeAttenuationConstantsCB[r28.w].data[5].xyz, r16.yzw);
          r28.w = saturate(refProbeAttenuationConstantsCB[r28.w].data[5].w + r29.y);
          r28.x = r29.x * r28.w;
          r29.y = (uint)r17.x >> 2;
          if (1 == 0) r29.z = 0; else if (1+2 < 32) {           r29.z = (uint)r17.x << (32-(1 + 2)); r29.z = (uint)r29.z >> (32-1);          } else r29.z = (uint)r17.x >> 2;
          r29.w = (int)r29.y & 2;
          r31.x = max(r28.y, r28.x);
          r28.w = -r29.x * r28.w + 1;
          r28.w = r28.y * r28.w;
          r19.y = r29.w ? r28.w : r31.x;
          r28.xy = r29.zz ? r28.xy : r19.xy;
          r28.z = (int)r28.z + 1;
          r17.x = r29.y;
        }
        r28.y = saturate(r28.y);
        r17.x = refProbeConstantsCB[r21.w].data[6].y * r28.y;
        r19.y = cmp(0 < r17.x);
        if (r19.y != 0) {
          r19.y = (int)r26.w & 255;
          r27.x = (int)r19.y + -1;
          r27.x = cmp((uint)r27.x < 32);
          r27.x = r27.x ? r2.w : 0;
          if (r27.x != 0) {
            r27.xy = mad((int2)r19.yy, int2(20,20), int2(860,876));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r19.y, cb2[52].x, r27.x, u2.xxxx
          r19.y = samp0[]..swiz;
            r19.y = (int)r19.y | 32;
            GBufferDiffuseColor[viewID].r27.x = u2.x;
            GBufferDiffuseColor[viewID].r27.y = u2.x;
          }
          r25.w = (int)r25.w + 257;
          r25.z = r28.y * refProbeConstantsCB[r21.w].data[6].y + r25.z;
          r17.x = refProbeConstantsCB[r21.w].data[7].y * r17.x;
          r27.x = refProbeConstantsCB[r21.w].data[7].w;
          r27.yz = refProbeConstantsCB[r21.w].data[8].xy;
          r19.y = dot(r14.xyz, r27.xyz);
          r27.x = dot(r16.yzw, r27.xyz);
          r27.x = -refProbeConstantsCB[r21.w].data[8].z + r27.x;
          r27.y = cmp(r27.x >= 0);
          r27.x = max(abs(r27.x), r9.w);
          r27.x = r27.y ? r27.x : -r27.x;
          r19.y = max(1.00000001e-07, -r19.y);
          r19.y = r27.x / r19.y;
          r19.y = min(131072, abs(r19.y));
          r27.x = refProbeConstantsCB[r21.w].data[8].w;
          r27.yz = refProbeConstantsCB[r21.w].data[9].xy;
          r27.w = dot(r14.xyz, r27.xyz);
          r27.x = dot(r16.yzw, r27.xyz);
          r27.x = -refProbeConstantsCB[r21.w].data[9].z + r27.x;
          r27.y = cmp(r27.x >= 0);
          r27.x = max(abs(r27.x), r9.w);
          r27.x = r27.y ? r27.x : -r27.x;
          r27.y = max(1.00000001e-07, -r27.w);
          r27.x = r27.x / r27.y;
          r19.y = min(abs(r27.x), r19.y);
          r27.x = refProbeConstantsCB[r21.w].data[9].w;
          r27.yz = refProbeConstantsCB[r21.w].data[10].xy;
          r27.w = dot(r14.xyz, r27.xyz);
          r27.x = dot(r16.yzw, r27.xyz);
          r27.x = -refProbeConstantsCB[r21.w].data[10].z + r27.x;
          r27.y = cmp(r27.x >= 0);
          r27.x = max(abs(r27.x), r9.w);
          r27.x = r27.y ? r27.x : -r27.x;
          r27.y = max(1.00000001e-07, -r27.w);
          r27.x = r27.x / r27.y;
          r19.y = min(abs(r27.x), r19.y);
          r27.x = refProbeConstantsCB[r21.w].data[10].w;
          r27.yz = refProbeConstantsCB[r21.w].data[11].xy;
          r27.w = dot(r14.xyz, r27.xyz);
          r27.x = dot(r16.yzw, r27.xyz);
          r27.x = -refProbeConstantsCB[r21.w].data[11].z + r27.x;
          r27.y = cmp(r27.x >= 0);
          r27.x = max(abs(r27.x), r9.w);
          r27.x = r27.y ? r27.x : -r27.x;
          r27.y = max(1.00000001e-07, -r27.w);
          r27.x = r27.x / r27.y;
          r19.y = min(abs(r27.x), r19.y);
          r27.x = refProbeConstantsCB[r21.w].data[11].w;
          r27.yz = refProbeConstantsCB[r21.w].data[12].xy;
          r27.w = dot(r14.xyz, r27.xyz);
          r27.x = dot(r16.yzw, r27.xyz);
          r27.x = -refProbeConstantsCB[r21.w].data[12].z + r27.x;
          r27.y = cmp(r27.x >= 0);
          r27.x = max(abs(r27.x), r9.w);
          r27.x = r27.y ? r27.x : -r27.x;
          r27.y = max(1.00000001e-07, -r27.w);
          r27.x = r27.x / r27.y;
          r19.y = min(abs(r27.x), r19.y);
          r27.x = refProbeConstantsCB[r21.w].data[12].w;
          r27.yz = refProbeConstantsCB[r21.w].data[13].xy;
          r27.w = dot(r14.xyz, r27.xyz);
          r27.x = dot(r16.yzw, r27.xyz);
          r27.x = -refProbeConstantsCB[r21.w].data[13].z + r27.x;
          r27.y = cmp(r27.x >= 0);
          r27.x = max(abs(r27.x), r9.w);
          r27.x = r27.y ? r27.x : -r27.x;
          r27.y = max(1.00000001e-07, -r27.w);
          r27.x = r27.x / r27.y;
          r19.y = min(abs(r27.x), r19.y);
          r27.x = refProbeConstantsCB[r21.w].data[3].w + r16.y;
          r27.yz = refProbeConstantsCB[r21.w].data[4].xy + r16.zw;
          r27.xyz = r14.xyz * r19.yyy + r27.xyz;
          r27.w = dot(r27.xyz, r27.xyz);
          r27.w = sqrt(r27.w);
          r19.y = r19.y / r27.w;
          r19.y = r19.y + r19.y;
          r19.y = sqrt(r19.y);
          r19.y = r6.w * 5 + r19.y;
          r19.y = -0.844799995 + r19.y;
          r29.x = refProbeConstantsCB[r21.w].data[0].w;
          r29.y = refProbeConstantsCB[r21.w].data[1].z;
          r29.z = refProbeConstantsCB[r21.w].data[2].y;
          r31.x = dot(r27.xyz, r29.xyz);
          r32.xy = refProbeConstantsCB[r21.w].data[1].xw;
          r32.z = refProbeConstantsCB[r21.w].data[2].z;
          r31.y = dot(r27.xyz, r32.xyz);
          r33.x = refProbeConstantsCB[r21.w].data[1].y;
          r33.yz = refProbeConstantsCB[r21.w].data[2].xw;
          r31.z = dot(r27.xyz, r33.xyz);
          if (9 == 0) r27.x = 0; else if (9+16 < 32) {           r27.x = (uint)refProbeConstantsCB[r21.w].data[7].z << (32-(9 + 16)); r27.x = (uint)r27.x >> (32-9);          } else r27.x = (uint)refProbeConstantsCB[r21.w].data[7].z >> 16;
          r31.w = (uint)r27.x;
          r27.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r31.xyzw, r19.y).xyz;
          r28.xzw = (int3)r27.xyz & int3(-2147483648,-2147483648,-2147483648);
          r28.xzw = cmp((int3)r28.xzw == int3(2139095040,2139095040,2139095040));
          r19.y = (int)r28.z | (int)r28.x;
          r19.y = (int)r28.w | (int)r19.y;
          r27.xyz = r19.yyy ? float3(1,1,0) : r27.xyz;
          r34.x = dot(r16.yzw, r29.xyz);
          r34.y = dot(r16.yzw, r32.xyz);
          r34.z = dot(r16.yzw, r33.xyz);
          r16.yzw = saturate(r34.xyz * refProbeConstantsCB[r21.w].data[3].xyz + float3(0.5,0.5,0.5));
          r34.xy = refProbeConstantsCB[r21.w].data[4].zw * r16.yz;
          r34.z = refProbeConstantsCB[r21.w].data[5].x * r16.w;
          r16.yzw = refProbeConstantsCB[r21.w].data[5].yzw + r34.xyz;
          r31.x = dot(r12.xyz, r29.xyz);
          r31.y = dot(r12.xyz, r32.xyz);
          r31.z = dot(r12.xyz, r33.xyz);
          r28.xzw = cmp(float3(0,0,0) < r31.xyz);
          r18.z = r28.x ? 0 : 0.5;
          r29.xyz = r18.xyz + r16.yzw;
          r29.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r29.xyz, 0).xyz;
          r32.xyz = r31.xyz * r31.xyz;
          r32.xyz = r32.xyz * r17.xxx;
          r20.z = r28.z ? 0 : 0.5;
          r33.xyz = r20.xyz + r16.yzw;
          r33.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r33.xyz, 0).xyz;
          r33.xyz = r33.xyz * r32.yyy;
          r29.xyz = r29.xyz * r32.xxx + r33.xyz;
          r21.z = r28.w ? 0 : 0.5;
          r16.yzw = r21.xyz + r16.yzw;
          r16.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r16.yzw, 0).xyz;
          r16.yzw = r16.yzw * r32.zzz + r29.xyz;
          r28.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r31.xyzw, 6).xyz;
          r29.xyz = (int3)r28.xzw & int3(-2147483648,-2147483648,-2147483648);
          r29.xyz = cmp((int3)r29.xyz == int3(2139095040,2139095040,2139095040));
          r18.z = (int)r29.y | (int)r29.x;
          r18.z = (int)r29.z | (int)r18.z;
          r28.xzw = r18.zzz ? float3(1,1,0) : r28.xzw;
          r29.xyz = r28.xzw * r16.yzw;
          r18.z = dot(r29.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r24.xyz = r16.yzw * r28.xzw + r24.xyz;
          r16.y = r18.z * r10.w;
          r27.xyz = r27.xyz * r17.xxx;
          r16.z = dot(r27.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r16.z = r10.w * r18.z + r16.z;
          r16.y = r16.y / r16.z;
          r29.x = r24.w;
          r29.yz = r25.xy;
          r16.yzw = r27.xyz * r16.yyy + r29.xyz;
          r24.w = r16.y;
          r25.xy = r16.zw;
        } else {
          r26.xyz = r25.xyz;
          r25.xyzw = r26.xyzw;
        }
      }
      r22.xyzw = r24.xyzw;
      r23.xyzw = r25.xyzw;
      r17.w = (int)r17.w + 32;
    }
    r16.x = 16;
    r17.yz = float2(0,1);
    r18.xy = float2(0,0);
    r20.xy = float2(0,0);
    r21.xy = float2(0,0);
    r24.xyz = r22.xyz;
    r25.x = r22.w;
    r25.yz = r23.xy;
    r26.xyz = r23.zwz;
    r15.z = 0;
    while (true) {
      r15.w = cmp((uint)r15.z >= (uint)r13.z);
      if (r15.w != 0) break;
      r15.w = (uint)r15.z >> 5;
      r15.w = (int)r13.w + (int)r15.w;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.w, r15.w, l(0), t26.xxxx
    r15.w = samp0[]..swiz;
      r17.w = cmp((int)r15.x == (int)r15.z);
      if (r15.y == 0) r18.w = 0; else if (r15.y+0 < 32) {       r18.w = (uint)r15.w << (32-(r15.y + 0)); r18.w = (uint)r18.w >> (32-r15.y);      } else r18.w = (uint)r15.w >> 0;
      r15.w = r17.w ? r18.w : r15.w;
      r27.xyz = r24.xyz;
      r28.xyz = r25.xyz;
      r29.xyz = r26.xzy;
      r17.w = r15.w;
      while (true) {
        if (r17.w == 0) break;
        r18.w = firstbitlow((uint)r17.w);
        r19.x = 1 << (int)r18.w;
        r19.x = ~(int)r19.x;
        r17.w = (int)r17.w & (int)r19.x;
        r18.w = (int)r15.z + (int)r18.w;
        r18.w = (int)r18.w * 14;
        r19.x = (int)r29.z & 255;
        r19.y = cmp((uint)r19.x < 32);
        r19.y = r19.y ? r2.w : 0;
        if (r19.y != 0) {
          r19.x = mad((int)r19.x, 20, 880);
          r16.yzw = refProbeConstantsCB[r18.w].data[0].xyz + eyeOffset.xyz;
          GBufferDiffuseColor[viewID].r19.x = u2.xyzw;
        }
        r19.y = (int)r29.z + 1;
        r16.yzw = -refProbeConstantsCB[r18.w].data[0].xyz + r11.xyz;
        r20.w = 0x0000ffff & (int)refProbeConstantsCB[r18.w].data[7].z;
        if (6 == 0) r21.w = 0; else if (6+25 < 32) {         r21.w = (uint)refProbeConstantsCB[r18.w].data[7].z << (32-(6 + 25)); r21.w = (uint)r21.w >> (32-6);        } else r21.w = (uint)refProbeConstantsCB[r18.w].data[7].z >> 25;
        r24.w = (int)r20.w * 6;
        r25.w = dot(refProbeAttenuationConstantsCB[r24.w].data[0].xyz, r16.yzw);
        r25.w = saturate(refProbeAttenuationConstantsCB[r24.w].data[0].w + r25.w);
        r26.w = dot(refProbeAttenuationConstantsCB[r24.w].data[1].xyz, r16.yzw);
        r26.w = saturate(refProbeAttenuationConstantsCB[r24.w].data[1].w + r26.w);
        r25.w = r26.w * r25.w;
        r26.w = dot(refProbeAttenuationConstantsCB[r24.w].data[2].xyz, r16.yzw);
        r26.w = saturate(refProbeAttenuationConstantsCB[r24.w].data[2].w + r26.w);
        r25.w = r26.w * r25.w;
        r26.w = dot(refProbeAttenuationConstantsCB[r24.w].data[3].xyz, r16.yzw);
        r26.w = saturate(refProbeAttenuationConstantsCB[r24.w].data[3].w + r26.w);
        r25.w = r26.w * r25.w;
        r26.w = dot(refProbeAttenuationConstantsCB[r24.w].data[4].xyz, r16.yzw);
        r26.w = saturate(refProbeAttenuationConstantsCB[r24.w].data[4].w + r26.w);
        r25.w = r26.w * r25.w;
        r26.w = dot(refProbeAttenuationConstantsCB[r24.w].data[5].xyz, r16.yzw);
        r24.w = saturate(refProbeAttenuationConstantsCB[r24.w].data[5].w + r26.w);
        r17.x = r25.w * r24.w;
        r24.w = 1 & (int)refProbeConstantsCB[r18.w].data[6].x;
        r31.xy = r24.ww ? r17.xy : r17.zx;
        r17.x = refProbeConstantsCB[r18.w].data[6].x;
        r32.xy = r31.xy;
        r24.w = 1;
        while (true) {
          r25.w = cmp((int)r24.w >= (int)r21.w);
          if (r25.w != 0) break;
          r25.w = (int)r20.w + (int)r24.w;
          r25.w = (int)r25.w * 6;
          r26.w = dot(refProbeAttenuationConstantsCB[r25.w].data[0].xyz, r16.yzw);
          r26.w = saturate(refProbeAttenuationConstantsCB[r25.w].data[0].w + r26.w);
          r26.w = r32.x * r26.w;
          r27.w = dot(refProbeAttenuationConstantsCB[r25.w].data[1].xyz, r16.yzw);
          r27.w = saturate(refProbeAttenuationConstantsCB[r25.w].data[1].w + r27.w);
          r26.w = r27.w * r26.w;
          r27.w = dot(refProbeAttenuationConstantsCB[r25.w].data[2].xyz, r16.yzw);
          r27.w = saturate(refProbeAttenuationConstantsCB[r25.w].data[2].w + r27.w);
          r26.w = r27.w * r26.w;
          r27.w = dot(refProbeAttenuationConstantsCB[r25.w].data[3].xyz, r16.yzw);
          r27.w = saturate(refProbeAttenuationConstantsCB[r25.w].data[3].w + r27.w);
          r26.w = r27.w * r26.w;
          r27.w = dot(refProbeAttenuationConstantsCB[r25.w].data[4].xyz, r16.yzw);
          r27.w = saturate(refProbeAttenuationConstantsCB[r25.w].data[4].w + r27.w);
          r26.w = r27.w * r26.w;
          r27.w = dot(refProbeAttenuationConstantsCB[r25.w].data[5].xyz, r16.yzw);
          r25.w = saturate(refProbeAttenuationConstantsCB[r25.w].data[5].w + r27.w);
          r32.x = r26.w * r25.w;
          r27.w = (uint)r17.x >> 2;
          if (1 == 0) r28.w = 0; else if (1+2 < 32) {           r28.w = (uint)r17.x << (32-(1 + 2)); r28.w = (uint)r28.w >> (32-1);          } else r28.w = (uint)r17.x >> 2;
          r29.w = (int)r27.w & 2;
          r30.w = max(r32.y, r32.x);
          r25.w = -r26.w * r25.w + 1;
          r25.w = r32.y * r25.w;
          r19.w = r29.w ? r25.w : r30.w;
          r32.xy = r28.ww ? r32.xy : r19.zw;
          r24.w = (int)r24.w + 1;
          r17.x = r27.w;
        }
        r17.x = saturate(r32.y + -r29.y);
        r19.w = refProbeConstantsCB[r18.w].data[6].y * r17.x;
        r20.w = cmp(0 < r19.w);
        if (r20.w != 0) {
          r20.w = (int)r19.y & 255;
          r21.w = (int)r20.w + -1;
          r21.w = cmp((uint)r21.w < 32);
          r21.w = r21.w ? r2.w : 0;
          if (r21.w != 0) {
            r31.xy = mad((int2)r20.ww, int2(20,20), int2(860,876));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r20.w, cb2[52].x, r31.x, u2.xxxx
          r20.w = samp0[]..swiz;
            r20.w = (int)r20.w | 32;
            GBufferDiffuseColor[viewID].r31.x = u2.x;
            GBufferDiffuseColor[viewID].r31.y = u2.x;
          }
          r29.z = (int)r29.z + 257;
          r29.x = r17.x * refProbeConstantsCB[r18.w].data[6].y + r29.x;
          r17.x = refProbeConstantsCB[r18.w].data[7].y * r19.w;
          r31.x = refProbeConstantsCB[r18.w].data[7].w;
          r31.yz = refProbeConstantsCB[r18.w].data[8].xy;
          r19.w = dot(r14.xyz, r31.xyz);
          r20.w = dot(r16.yzw, r31.xyz);
          r20.w = -refProbeConstantsCB[r18.w].data[8].z + r20.w;
          r21.w = cmp(r20.w >= 0);
          r20.w = max(abs(r20.w), r9.w);
          r20.w = r21.w ? r20.w : -r20.w;
          r19.w = max(1.00000001e-07, -r19.w);
          r19.w = r20.w / r19.w;
          r19.w = min(131072, abs(r19.w));
          r31.x = refProbeConstantsCB[r18.w].data[8].w;
          r31.yz = refProbeConstantsCB[r18.w].data[9].xy;
          r20.w = dot(r14.xyz, r31.xyz);
          r21.w = dot(r16.yzw, r31.xyz);
          r21.w = -refProbeConstantsCB[r18.w].data[9].z + r21.w;
          r24.w = cmp(r21.w >= 0);
          r21.w = max(abs(r21.w), r9.w);
          r21.w = r24.w ? r21.w : -r21.w;
          r20.w = max(1.00000001e-07, -r20.w);
          r20.w = r21.w / r20.w;
          r19.w = min(abs(r20.w), r19.w);
          r31.x = refProbeConstantsCB[r18.w].data[9].w;
          r31.yz = refProbeConstantsCB[r18.w].data[10].xy;
          r20.w = dot(r14.xyz, r31.xyz);
          r21.w = dot(r16.yzw, r31.xyz);
          r21.w = -refProbeConstantsCB[r18.w].data[10].z + r21.w;
          r24.w = cmp(r21.w >= 0);
          r21.w = max(abs(r21.w), r9.w);
          r21.w = r24.w ? r21.w : -r21.w;
          r20.w = max(1.00000001e-07, -r20.w);
          r20.w = r21.w / r20.w;
          r19.w = min(abs(r20.w), r19.w);
          r31.x = refProbeConstantsCB[r18.w].data[10].w;
          r31.yz = refProbeConstantsCB[r18.w].data[11].xy;
          r20.w = dot(r14.xyz, r31.xyz);
          r21.w = dot(r16.yzw, r31.xyz);
          r21.w = -refProbeConstantsCB[r18.w].data[11].z + r21.w;
          r24.w = cmp(r21.w >= 0);
          r21.w = max(abs(r21.w), r9.w);
          r21.w = r24.w ? r21.w : -r21.w;
          r20.w = max(1.00000001e-07, -r20.w);
          r20.w = r21.w / r20.w;
          r19.w = min(abs(r20.w), r19.w);
          r31.x = refProbeConstantsCB[r18.w].data[11].w;
          r31.yz = refProbeConstantsCB[r18.w].data[12].xy;
          r20.w = dot(r14.xyz, r31.xyz);
          r21.w = dot(r16.yzw, r31.xyz);
          r21.w = -refProbeConstantsCB[r18.w].data[12].z + r21.w;
          r24.w = cmp(r21.w >= 0);
          r21.w = max(abs(r21.w), r9.w);
          r21.w = r24.w ? r21.w : -r21.w;
          r20.w = max(1.00000001e-07, -r20.w);
          r20.w = r21.w / r20.w;
          r19.w = min(abs(r20.w), r19.w);
          r31.x = refProbeConstantsCB[r18.w].data[12].w;
          r31.yz = refProbeConstantsCB[r18.w].data[13].xy;
          r20.w = dot(r14.xyz, r31.xyz);
          r21.w = dot(r16.yzw, r31.xyz);
          r21.w = -refProbeConstantsCB[r18.w].data[13].z + r21.w;
          r24.w = cmp(r21.w >= 0);
          r21.w = max(abs(r21.w), r9.w);
          r21.w = r24.w ? r21.w : -r21.w;
          r20.w = max(1.00000001e-07, -r20.w);
          r20.w = r21.w / r20.w;
          r19.w = min(abs(r20.w), r19.w);
          r31.x = refProbeConstantsCB[r18.w].data[3].w + r16.y;
          r31.yz = refProbeConstantsCB[r18.w].data[4].xy + r16.zw;
          r31.xyz = r14.xyz * r19.www + r31.xyz;
          r20.w = dot(r31.xyz, r31.xyz);
          r20.w = sqrt(r20.w);
          r19.w = r19.w / r20.w;
          r19.w = r19.w + r19.w;
          r19.w = sqrt(r19.w);
          r19.w = r6.w * 5 + r19.w;
          r19.w = -0.844799995 + r19.w;
          r33.x = refProbeConstantsCB[r18.w].data[0].w;
          r33.y = refProbeConstantsCB[r18.w].data[1].z;
          r33.z = refProbeConstantsCB[r18.w].data[2].y;
          r34.x = dot(r31.xyz, r33.xyz);
          r35.xy = refProbeConstantsCB[r18.w].data[1].xw;
          r35.z = refProbeConstantsCB[r18.w].data[2].z;
          r34.y = dot(r31.xyz, r35.xyz);
          r36.x = refProbeConstantsCB[r18.w].data[1].y;
          r36.yz = refProbeConstantsCB[r18.w].data[2].xw;
          r34.z = dot(r31.xyz, r36.xyz);
          if (9 == 0) r20.w = 0; else if (9+16 < 32) {           r20.w = (uint)refProbeConstantsCB[r18.w].data[7].z << (32-(9 + 16)); r20.w = (uint)r20.w >> (32-9);          } else r20.w = (uint)refProbeConstantsCB[r18.w].data[7].z >> 16;
          r34.w = (uint)r20.w;
          r31.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, r19.w).xyz;
          r32.xzw = (int3)r31.xyz & int3(-2147483648,-2147483648,-2147483648);
          r32.xzw = cmp((int3)r32.xzw == int3(2139095040,2139095040,2139095040));
          r19.w = (int)r32.z | (int)r32.x;
          r19.w = (int)r32.w | (int)r19.w;
          r31.xyz = r19.www ? float3(1,1,0) : r31.xyz;
          r37.x = dot(r16.yzw, r33.xyz);
          r37.y = dot(r16.yzw, r35.xyz);
          r37.z = dot(r16.yzw, r36.xyz);
          r16.yzw = saturate(r37.xyz * refProbeConstantsCB[r18.w].data[3].xyz + float3(0.5,0.5,0.5));
          r37.xy = refProbeConstantsCB[r18.w].data[4].zw * r16.yz;
          r37.z = refProbeConstantsCB[r18.w].data[5].x * r16.w;
          r16.yzw = refProbeConstantsCB[r18.w].data[5].yzw + r37.xyz;
          r34.x = dot(r12.xyz, r33.xyz);
          r34.y = dot(r12.xyz, r35.xyz);
          r34.z = dot(r12.xyz, r36.xyz);
          r32.xzw = cmp(float3(0,0,0) < r34.xyz);
          r18.z = r32.x ? 0 : 0.5;
          r33.xyz = r18.xyz + r16.yzw;
          r33.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r33.xyz, 0).xyz;
          r35.xyz = r34.xyz * r34.xyz;
          r35.xyz = r35.xyz * r17.xxx;
          r20.z = r32.z ? 0 : 0.5;
          r36.xyz = r20.xyz + r16.yzw;
          r36.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r36.xyz, 0).xyz;
          r36.xyz = r36.xyz * r35.yyy;
          r33.xyz = r33.xyz * r35.xxx + r36.xyz;
          r21.z = r32.w ? 0 : 0.5;
          r16.yzw = r21.xyz + r16.yzw;
          r16.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r16.yzw, 0).xyz;
          r16.yzw = r16.yzw * r35.zzz + r33.xyz;
          r32.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, 6).xyz;
          r33.xyz = (int3)r32.xzw & int3(-2147483648,-2147483648,-2147483648);
          r33.xyz = cmp((int3)r33.xyz == int3(2139095040,2139095040,2139095040));
          r18.z = (int)r33.y | (int)r33.x;
          r18.z = (int)r33.z | (int)r18.z;
          r32.xzw = r18.zzz ? float3(1,1,0) : r32.xzw;
          r33.xyz = r32.xzw * r16.yzw;
          r18.z = dot(r33.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r27.xyz = r16.yzw * r32.xzw + r27.xyz;
          r16.y = r18.z * r10.w;
          r31.xyz = r31.xyz * r17.xxx;
          r16.z = dot(r31.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r16.z = r10.w * r18.z + r16.z;
          r16.y = r16.y / r16.z;
          r28.xyz = r31.xyz * r16.yyy + r28.xyz;
        } else {
          r19.x = r29.x;
          r29.xz = r19.xy;
        }
      }
      r24.xyz = r27.xyz;
      r25.xyz = r28.xyz;
      r26.xy = r29.xz;
      r15.z = (int)r15.z + 32;
    }
    r6.w = cmp(r23.z >= 1);
    r9.w = (int)r23.w & 0x0000ff00;
    bitmask.w = ((~(-1 << 8)) << 0) & 0xffffffff;  r9.w = (((uint)r26.y << 0) & bitmask.w) | ((uint)r9.w & ~bitmask.w);
    r13.y = r6.w ? r9.w : r26.y;
    r6.w = max(1, r26.x);
    r6.w = rcp(r6.w);
    r26.x = saturate(r26.x);
    r15.xyz = r24.xyz * r6.www;
    r30.xyz = r25.xyz * r6.www;
    r9.w = cmp(r26.x < 0.99000001);
    if (r9.w != 0) {
      r13.y = (int)r13.y + 256;
      r9.w = 1 + -r26.x;
      r10.w = sunConstants.globalProbeExposure * r9.w;
      r16.xyz = -globalProbeConstants.data[0].xyz + r11.xyz;
      r17.x = globalProbeConstants.data[0].w * r16.x;
      r17.yz = globalProbeConstants.data[1].xy * r16.yz;
      r16.xyz = saturate(float3(0.5,0.5,0.5) + r17.xyz);
      r17.xy = globalProbeConstants.data[1].zw * r16.xy;
      r17.z = globalProbeConstants.data[2].x * r16.z;
      r16.xyz = globalProbeConstants.data[2].yzw + r17.xyz;
      r17.xyz = cmp(float3(0,0,0) < r12.xyz);
      r17.xyz = r17.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
      r17.w = 0;
      r18.xyz = r17.wwx + r16.xyz;
      r18.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r18.xyz, 0).xyz;
      r19.xyz = r12.xyz * r12.xyz;
      r19.xyz = r19.xyz * r10.www;
      r20.xyz = r17.wwy + r16.xyz;
      r20.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r20.xyz, 0).xyz;
      r20.xyz = r20.xyz * r19.yyy;
      r18.xyz = r18.xyz * r19.xxx + r20.xyz;
      r16.xyz = r17.wwz + r16.xyz;
      r16.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r16.xyz, 0).xyz;
      r16.xyz = r16.xyz * r19.zzz + r18.xyz;
      r12.w = 0;
      r17.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r12.xyzw, 6).xyz;
      r16.xyz = r17.xyz * r16.xyz;
      r10.w = dot(r16.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r15.xyz = r24.xyz * r6.www + r16.xyz;
      r14.w = 0;
      r16.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r14.xyzw, r8.w).xyz;
      r6.w = sunConstants.globalProbeExposure * r9.w + -r10.w;
      r6.w = r2.y * r6.w + r10.w;
      r30.xyz = r16.xyz * r6.www + r30.xyz;
    }
  } else {
    r15.xyz = float3(0,0,0);
  }
  r6.w = r2.x + r5.x;
  r6.w = log2(abs(r6.w));
  r6.w = r6.w * r2.z;
  r6.w = exp2(r6.w);
  r6.w = r6.w + r5.x;
  r6.w = saturate(-1 + r6.w);
  r16.xyz = r15.xyz * r5.xxx;
  r17.xyz = r3.zzz ? r16.yzx : 0;
  r13.zw = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r13.zw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r13.zw, 0).xy;
  r18.xyz = r30.xyz * r6.www;
  r19.xyz = r18.xyz * r13.zzz;
  r18.xyz = r18.xyz * r13.www;
  r2.y = sqrt(r2.z);
  r2.y = r2.y * 0.5 + 0.5;
  r2.y = r2.y * r2.y;
  r6.w = 0.5 * r2.y;
  r2.y = -r2.y * 0.5 + 1;
  r8.w = r2.x * r2.y + r6.w;
  r2.y = r8.w * r2.y;
  r6.w = r8.w * r6.w;
  if (r2.w != 0) {
    r20.x = 3;
    r20.yzw = eyeOffset.xyz;
    GBufferDiffuseColor[viewID].112 = u2.xyzw;
  }
  r8.w = cmp(0 < r4.w);
  if (r8.w != 0) {
    if (r2.w != 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r8.w, cb2[52].x, l(112), u2.xxxx
    r8.w = samp0[]..swiz;
      r8.w = (int)r8.w | 4;
      GBufferDiffuseColor[viewID].112 = u2.x;
      GBufferDiffuseColor[viewID].128 = u2.x;
    }
    r8.w = cmp(0 < r7.w);
    if (r8.w != 0) {
      r8.w = sunConstants.specScale * r1.w;
      r8.w = r8.w * r4.z;
      if (sunConstants.sunCookieIndex != 0) {
        r20.xyz = eyeOffset.xyz + r11.xyz;
        r20.w = 1;
        r9.w = dot(sunConstants.sunCookieTransform[0].xyzw, r20.xyzw);
        r10.w = dot(sunConstants.sunCookieTransform[1].xyzw, r20.xyzw);
        r20.x = frac(r9.w);
        r20.y = frac(r10.w);
        r9.w = -1 + (int14)sunConstants.sunCookieIndex;
        r20.z = (uint)r9.w;
        r20.xyz = gCookieArray.SampleLevel(samplerLinear_s, r20.xyz, 0).xyz;
        r20.xyz = float3(-1,-1,-1) + r20.xyz;
        r20.xyz = sunConstants.sunCookieIntensity * r20.xyz + float3(1,1,1);
        r20.xyz = sunConstants.color.xyz * r20.xyz;
      } else {
        r20.xyz = sunConstants.color.xyz;
      }
      r9.w = viewmodelSunShadowRaw >> 16;
      r10.w = cmp(0 < (uint)r9.w);
      r10.w = r10.w ? r1.z : 0;
      if (r10.w != 0) {
        r9.w = (int)r9.w + numLights;
        r9.w = mad((int)r9.w, 15, -15);
        r10.w = abs(r4.y) * -0.200000003 + 0.400000006;
        r12.w = cmp(r4.y < 0);
        r12.w = r3.z ? r12.w : 0;
        r10.w = r12.w ? -r10.w : r10.w;
        r21.xyz = r12.xyz * r10.www + r11.xyz;
        r22.xyz = lightConstantsCB[r9.w].data[4].yzw;
        r22.w = lightConstantsCB[r9.w].data[5].x;
        r21.w = 1;
        r22.x = dot(r22.xyzw, r21.xyzw);
        r23.xyz = lightConstantsCB[r9.w].data[5].yzw;
        r23.w = lightConstantsCB[r9.w].data[6].x;
        r22.y = dot(r23.xyzw, r21.xyzw);
        r13.zw = r22.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r22.x = lightConstantsCB[r9.w].data[9].w + r13.z;
        r22.y = lightConstantsCB[r9.w].data[10].x + r13.w;
        r13.zw = lightConstantsCB[r9.w].data[9].yz * r22.xy;
        r22.xy = lightConstantsCB[r9.w].data[3].yy / lightConstantsCB[r9.w].data[8].yw;
        r22.zw = float2(1,1) + -r22.xy;
        r22.zw = cmp(r13.zw >= r22.zw);
        r22.xy = cmp(r22.xy >= r13.zw);
        r22.xy = (int2)r22.xy | (int2)r22.zw;
        r10.w = (int)r22.y | (int)r22.x;
        if (r10.w == 0) {
          r22.xyz = lightConstantsCB[r9.w].data[6].yzw;
          r22.w = lightConstantsCB[r9.w].data[7].x;
          r10.w = dot(r22.xyzw, r21.xyzw);
          r13.zw = saturate(r13.zw);
          r21.x = r13.z * lightConstantsCB[r9.w].data[8].y + lightConstantsCB[r9.w].data[8].z;
          r21.y = r13.w * lightConstantsCB[r9.w].data[8].w + lightConstantsCB[r9.w].data[9].x;
          r10.w = lightConstantsCB[r9.w].data[10].y + r10.w;
          r10.w = r10.w / lightConstantsCB[r9.w].data[10].z;
          r10.w = max(6.10351563e-05, r10.w);
          r12.w = 0x0000ffff & (int)lightConstantsCB[r9.w].data[1].w;
          if (enableDitheredShadow != 0) {
            r22.x = -r4.x;
            r23.z = (uint)r12.w;
            r22.y = r13.x;
            r22.z = r4.x;
            r13.zw = float2(0,0);
            while (true) {
              r14.w = cmp((int)r13.w >= 8);
              if (r14.w != 0) break;
              r24.x = dot(icb[r13.w+0].yx, r22.xy);
              r24.y = dot(icb[r13.w+0].yx, r22.yz);
              r23.xy = r24.xy * lightConstantsCB[r9.w].data[3].yy + r21.xy;
              r14.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r10.w).x;
              r13.z = r14.w * 0.125 + r13.z;
              r13.w = (int)r13.w + 1;
            }
          } else {
            r21.z = (uint)r12.w;
            r13.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r10.w).x;
          }
          r9.w = r13.z * r13.z;
          r9.w = r9.w * r13.z;
        } else {
          r9.w = 1;
        }
        r7.w = r9.w * r7.w;
      } else {
        r9.w = viewmodelSunShadowRaw & 0x0000ffff;
        r10.w = cmp(0 < (uint)r9.w);
        r12.w = ~(int)r1.z;
        r10.w = r10.w ? r12.w : 0;
        if (r10.w != 0) {
          r9.w = (int)r9.w + numLights;
          r9.w = mad((int)r9.w, 15, -15);
          r10.w = abs(r4.y) * -0.200000003 + 0.400000006;
          r12.w = cmp(r4.y < 0);
          r12.w = r3.z ? r12.w : 0;
          r10.w = r12.w ? -r10.w : r10.w;
          r21.xyz = r12.xyz * r10.www + r11.xyz;
          r22.xyz = lightConstantsCB[r9.w].data[4].yzw;
          r22.w = lightConstantsCB[r9.w].data[5].x;
          r21.w = 1;
          r22.x = dot(r22.xyzw, r21.xyzw);
          r23.xyz = lightConstantsCB[r9.w].data[5].yzw;
          r23.w = lightConstantsCB[r9.w].data[6].x;
          r22.y = dot(r23.xyzw, r21.xyzw);
          r13.zw = r22.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r22.x = lightConstantsCB[r9.w].data[9].w + r13.z;
          r22.y = lightConstantsCB[r9.w].data[10].x + r13.w;
          r13.zw = lightConstantsCB[r9.w].data[9].yz * r22.xy;
          r22.xy = lightConstantsCB[r9.w].data[3].yy / lightConstantsCB[r9.w].data[8].yw;
          r22.zw = float2(1,1) + -r22.xy;
          r22.zw = cmp(r13.zw >= r22.zw);
          r22.xy = cmp(r22.xy >= r13.zw);
          r22.xy = (int2)r22.xy | (int2)r22.zw;
          r10.w = (int)r22.y | (int)r22.x;
          if (r10.w == 0) {
            r22.xyz = lightConstantsCB[r9.w].data[6].yzw;
            r22.w = lightConstantsCB[r9.w].data[7].x;
            r10.w = dot(r22.xyzw, r21.xyzw);
            r13.zw = saturate(r13.zw);
            r21.x = r13.z * lightConstantsCB[r9.w].data[8].y + lightConstantsCB[r9.w].data[8].z;
            r21.y = r13.w * lightConstantsCB[r9.w].data[8].w + lightConstantsCB[r9.w].data[9].x;
            r10.w = lightConstantsCB[r9.w].data[10].y + r10.w;
            r10.w = r10.w / lightConstantsCB[r9.w].data[10].z;
            r10.w = max(6.10351563e-05, r10.w);
            r12.w = 0x0000ffff & (int)lightConstantsCB[r9.w].data[1].w;
            if (enableDitheredShadow != 0) {
              r22.x = -r4.x;
              r23.z = (uint)r12.w;
              r22.y = r13.x;
              r22.z = r4.x;
              r13.zw = float2(0,0);
              while (true) {
                r14.w = cmp((int)r13.w >= 8);
                if (r14.w != 0) break;
                r24.x = dot(icb[r13.w+0].yx, r22.xy);
                r24.y = dot(icb[r13.w+0].yx, r22.yz);
                r23.xy = r24.xy * lightConstantsCB[r9.w].data[3].yy + r21.xy;
                r14.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r10.w).x;
                r13.z = r14.w * 0.125 + r13.z;
                r13.w = (int)r13.w + 1;
              }
            } else {
              r21.z = (uint)r12.w;
              r13.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r10.w).x;
            }
            r9.w = r13.z * r13.z;
            r9.w = r9.w * r13.z;
          } else {
            r9.w = 1;
          }
          r7.w = r9.w * r7.w;
        }
      }
      r9.w = -r2.x * 0.5 + 1;
      r9.w = -r4.w * r9.w + 1;
      r9.w = r9.w * r9.w;
      r9.w = -r9.w * 0.620000005 + 0.620000005;
      r9.w = r9.w + -r4.w;
      r4.w = r2.z * r9.w + r4.w;
      r4.w = r4.w * r7.w;
      r21.xyz = r4.www * r20.xyz;
      r4.y = cmp(0 < r4.y);
      r15.xyz = r15.xyz * r5.xxx + r21.xyz;
      r21.xyz = -r11.xyz * r0.www + sunConstants.wldDir.xyz;
      r0.w = dot(r21.xyz, r21.xyz);
      r0.w = rsqrt(r0.w);
      r21.xyz = r21.xyz * r0.www;
      r0.w = dot(r21.xyz, r5.yzw);
      r5.x = dot(r12.xyz, r21.xyz);
      r9.w = abs(r5.x) * r1.w + -abs(r5.x);
      r5.x = abs(r5.x) * r9.w + 1;
      r4.z = r4.z * r2.y + r6.w;
      r5.x = r5.x * r5.x;
      r4.z = r5.x * r4.z;
      r4.z = rcp(r4.z);
      r4.z = r4.z * r8.w;
      r4.z = r7.w * r4.z;
      r4.z = 0.25 * r4.z;
      r21.yzw = r4.zzz * r20.xyz + r18.xyz;
      r0.w = saturate(1 + -r0.w);
      r5.x = r0.w * r0.w;
      r5.x = r5.x * r5.x;
      r0.w = r5.x * r0.w;
      r0.w = r4.z * r0.w;
      r22.xyz = r0.www * r20.xyz + r19.xyz;
      r20.xyz = r4.www * r20.xyz + r17.zxy;
      r20.xyz = r3.zzz ? r20.yzx : 0;
      r15.w = r17.z;
      r16.w = r20.z;
      r16.xyzw = r4.yyyy ? r15.xyzw : r16.xyzw;
      r17.zw = r22.xy;
      r20.zw = r19.xy;
      r15.xyzw = r4.yyyy ? r17.xyzw : r20.xyzw;
      r21.x = r22.z;
      r18.w = r19.z;
      r18.xyzw = r4.yyyy ? r21.yzwx : r18.xyzw;
      if (r2.w != 0) {
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r0.w, cb2[52].x, l(112), u2.xxxx
      r0.w = samp0[]..swiz;
        r0.w = (int)r0.w | 8;
        GBufferDiffuseColor[viewID].112 = u2.x;
        GBufferDiffuseColor[viewID].132 = u2.x;
      }
      r17.z = r16.w;
      r17.xy = r15.xy;
      r19.xy = r15.zw;
      r19.z = r18.w;
      r0.w = 0x00010101;
    } else {
      r0.w = 257;
    }
  } else {
    r0.w = 1;
  }
  r0.x = (uint)r0.x >> 24;
  r0.x = (int)r0.x * 15;
  if (3 == 0) r4.y = 0; else if (3+24 < 32) {   r4.y = (uint)lightConstantsCB[r0.x].data[1].w << (32-(3 + 24)); r4.y = (uint)r4.y >> (32-3);  } else r4.y = (uint)lightConstantsCB[r0.x].data[1].w >> 24;
  switch (r4.y) {
    case 4 :    if (r2.w != 0) {
      r15.yzw = lightConstantsCB[r0.x].data[0].xyz + eyeOffset.xyz;
      r15.x = 2;
      GBufferDiffuseColor[viewID].136 = u2.xyzw;
    }
    r4.y = (int)r0.w + 1;
    r4.z = cmp(0 < lightConstantsCB[r0.x].data[6].y);
    r15.xy = lightConstantsCB[r0.x].data[5].zw;
    r15.z = lightConstantsCB[r0.x].data[6].x;
    r20.xyz = -r15.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r0.x].data[0].xyz;
    r21.xyz = r20.xyz + -r11.xyz;
    r4.w = dot(r15.xyz, r21.xyz);
    r5.x = saturate(-r4.w / lightConstantsCB[r0.x].data[6].y);
    r22.xyz = r5.xxx * r15.xyz + r20.xyz;
    r22.xyz = r4.zzz ? r22.xyz : lightConstantsCB[r0.x].data[0].xyz;
    r22.xyz = r22.xyz + -r11.xyz;
    r7.w = dot(r22.xyz, r22.xyz);
    r8.w = rsqrt(r7.w);
    r22.xyz = r22.xyz * r8.www;
    r8.w = dot(r12.xyz, r22.xyz);
    r9.w = saturate(r8.w);
    r9.w = r3.z ? abs(r8.w) : r9.w;
    r10.w = cmp(0 < r9.w);
    if (r10.w != 0) {
      r10.w = sqrt(r7.w);
      r12.w = lightConstantsCB[r0.x].data[3].x * lightConstantsCB[r0.x].data[3].x;
      r7.w = r12.w / r7.w;
      r7.w = min(1, r7.w);
      r13.zw = saturate(r10.ww * lightConstantsCB[r0.x].data[2].xz + lightConstantsCB[r0.x].data[2].yw);
      r22.xy = r13.zw * r13.zw;
      r13.zw = r13.zw * float2(-2,-2) + float2(3,3);
      r13.zw = r22.xy * r13.zw;
      r7.w = r13.z * r7.w;
      r7.w = r7.w * r13.w;
      r10.w = cmp(0 < r7.w);
      if (r10.w != 0) {
        if (3 == 0) r10.w = 0; else if (3+27 < 32) {         r10.w = (uint)lightConstantsCB[r0.x].data[1].w << (32-(3 + 27)); r10.w = (uint)r10.w >> (32-3);        } else r10.w = (uint)lightConstantsCB[r0.x].data[1].w >> 27;
        if (r2.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r12.w, cb2[52].x, l(136), u2.xxxx
        r12.w = samp0[]..swiz;
          r12.w = (int)r12.w | 4;
          GBufferDiffuseColor[viewID].136 = u2.x;
          GBufferDiffuseColor[viewID].152 = u2.x;
        }
        r12.w = (int)r0.w + 257;
        r10.w = cmp((int)r10.w != 1);
        if (r10.w != 0) {
          r13.zw = (uint2)r1.yx;
          r10.w = dot(r13.zw, float2(0.0671105608,0.00583714992));
          r10.w = frac(r10.w);
          r10.w = 52.9829178 * r10.w;
          r10.w = frac(r10.w);
          r10.w = r10.w * 6.28318548 + gameTick.w;
          sincos(r10.w, r22.x, r23.x);
          r10.w = abs(r8.w) * -0.200000003 + 0.400000006;
          r13.z = cmp(r8.w < 0);
          r13.z = r3.z ? r13.z : 0;
          r10.w = r13.z ? -r10.w : r10.w;
          r22.yzw = r12.xyz * r10.www + r11.xyz;
          r22.yzw = -lightConstantsCB[r0.x].data[4].yzw + r22.yzw;
          r10.w = max(abs(r22.z), abs(r22.w));
          r10.w = max(abs(r22.y), r10.w);
          r10.w = lightConstantsCB[r0.x].data[5].x / r10.w;
          r10.w = lightConstantsCB[r0.x].data[5].y + r10.w;
          r13.z = dot(r22.yzw, r22.yzw);
          r13.z = rsqrt(r13.z);
          r10.w = max(6.10351563e-05, r10.w);
          r13.w = 0x0000ffff & (int)lightConstantsCB[r0.x].data[1].w;
          r24.x = -r4.x;
          r25.w = (uint)r13.w;
          r24.y = r13.x;
          r24.z = r4.x;
          r13.w = 0;
          r14.w = 0;
          while (true) {
            r15.w = cmp((int)r14.w >= 8);
            if (r15.w != 0) break;
            r23.y = dot(icb[r14.w+0].yx, r24.xy);
            r23.z = dot(icb[r14.w+0].yx, r24.yz);
            r26.yz = lightConstantsCB[r0.x].data[3].yy * r23.yz;
            r26.x = r26.y * r23.x;
            r26.w = r26.y * r22.x;
            r25.xyz = r22.yzw * r13.zzz + r26.xzw;
            r15.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyzw, r10.w).x;
            r13.w = r15.w * 0.125 + r13.w;
            r14.w = (int)r14.w + 1;
          }
        } else {
          r13.w = 1;
        }
        r7.w = r13.w * r7.w;
        r10.w = cmp(0 < r7.w);
        if (r10.w != 0) {
          r10.w = lightConstantsCB[r0.x].data[1].z * r1.w;
          r10.w = 0.25 * r10.w;
          r13.z = dot(r15.xyz, r14.xyz);
          r13.w = dot(r14.xyz, r21.xyz);
          r14.x = -r13.z * r13.z + lightConstantsCB[r0.x].data[6].y;
          r4.w = r13.z * r13.w + -r4.w;
          r4.w = saturate(r4.w / r14.x);
          r13.z = r14.x / lightConstantsCB[r0.x].data[6].y;
          r13.z = 10 * r13.z;
          r13.z = min(1, r13.z);
          r4.w = r4.w + -r5.x;
          r4.w = r13.z * r4.w + r5.x;
          r14.xyz = r4.www * r15.xyz + r20.xyz;
          r14.xyz = r4.zzz ? r14.xyz : lightConstantsCB[r0.x].data[0].xyz;
          r14.xyz = r14.xyz + -r11.xyz;
          r4.z = dot(r14.xyz, r14.xyz);
          r4.z = rsqrt(r4.z);
          r15.xyz = r14.xyz * r4.zzz;
          if (4 == 0) r4.w = 0; else if (4+16 < 32) {           r4.w = (uint)lightConstantsCB[r0.x].data[1].w << (32-(4 + 16)); r4.w = (uint)r4.w >> (32-4);          } else r4.w = (uint)lightConstantsCB[r0.x].data[1].w >> 16;
          r5.x = cmp(0 < (uint)r4.w);
          r5.x = r5.x ? r1.z : 0;
          if (r5.x != 0) {
            r4.w = (int)r4.w + numLights;
            r4.w = mad((int)r4.w, 15, -15);
            r5.x = abs(r8.w) * -0.200000003 + 0.400000006;
            r13.z = cmp(r8.w < 0);
            r13.z = r3.z ? r13.z : 0;
            r5.x = r13.z ? -r5.x : r5.x;
            r20.xyz = r12.xyz * r5.xxx + r11.xyz;
            r21.xyz = lightConstantsCB[r4.w].data[6].yzw;
            r21.w = lightConstantsCB[r4.w].data[7].x;
            r20.w = 1;
            r5.x = dot(r21.xyzw, r20.xyzw);
            r21.xyz = lightConstantsCB[r4.w].data[7].yzw;
            r21.w = lightConstantsCB[r4.w].data[8].x;
            r13.z = dot(r21.xyzw, r20.xyzw);
            r13.w = cmp(r13.z < r5.x);
            if (r13.w == 0) {
              r21.xyz = lightConstantsCB[r4.w].data[4].yzw;
              r21.w = lightConstantsCB[r4.w].data[5].x;
              r21.x = dot(r21.xyzw, r20.xyzw);
              r22.xyz = lightConstantsCB[r4.w].data[5].yzw;
              r22.w = lightConstantsCB[r4.w].data[6].x;
              r21.y = dot(r22.xyzw, r20.xyzw);
              r20.xy = r21.xy / r13.zz;
              r20.xy = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
              r21.x = lightConstantsCB[r4.w].data[9].w + r20.x;
              r21.y = lightConstantsCB[r4.w].data[10].x + r20.y;
              r20.xy = lightConstantsCB[r4.w].data[9].yz * r21.xy;
              r20.zw = lightConstantsCB[r4.w].data[3].yy / lightConstantsCB[r4.w].data[8].yw;
              r21.xy = float2(1,1) + -r20.zw;
              r21.xy = cmp(r20.xy >= r21.xy);
              r20.zw = cmp(r20.zw >= r20.xy);
              r20.zw = (int2)r20.zw | (int2)r21.xy;
              r14.w = (int)r20.w | (int)r20.z;
              if (r14.w == 0) {
                r20.xy = saturate(r20.xy);
                r21.x = r20.x * lightConstantsCB[r4.w].data[8].y + lightConstantsCB[r4.w].data[8].z;
                r21.y = r20.y * lightConstantsCB[r4.w].data[8].w + lightConstantsCB[r4.w].data[9].x;
                r15.w = lightConstantsCB[r4.w].data[10].z * r13.z;
                r5.x = lightConstantsCB[r4.w].data[10].y * r13.z + r5.x;
                r5.x = r5.x / r15.w;
              }
            } else {
              r14.w = -1;
            }
            r13.z = (int)r13.w | (int)r14.w;
            if (r13.z == 0) {
              r5.x = max(6.10351563e-05, r5.x);
              r13.z = 0x0000ffff & (int)lightConstantsCB[r4.w].data[1].w;
              if (enableDitheredShadow != 0) {
                r20.x = -r4.x;
                r22.z = (uint)r13.z;
                r20.y = r13.x;
                r20.z = r4.x;
                r13.w = 0;
                r14.w = 0;
                while (true) {
                  r15.w = cmp((int)r14.w >= 8);
                  if (r15.w != 0) break;
                  r23.x = dot(icb[r14.w+0].yx, r20.xy);
                  r23.y = dot(icb[r14.w+0].yx, r20.yz);
                  r22.xy = r23.xy * lightConstantsCB[r4.w].data[3].yy + r21.xy;
                  r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r5.x).x;
                  r13.w = r15.w * 0.125 + r13.w;
                  r14.w = (int)r14.w + 1;
                }
              } else {
                r21.z = (uint)r13.z;
                r13.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r5.x).x;
              }
              r4.w = r13.w * r13.w;
              r4.w = r4.w * r13.w;
            } else {
              r4.w = 1;
            }
            r7.w = r7.w * r4.w;
          } else {
            if (4 == 0) r4.w = 0; else if (4+20 < 32) {             r4.w = (uint)lightConstantsCB[r0.x].data[1].w << (32-(4 + 20)); r4.w = (uint)r4.w >> (32-4);            } else r4.w = (uint)lightConstantsCB[r0.x].data[1].w >> 20;
            r5.x = cmp(0 < (uint)r4.w);
            r13.z = ~(int)r1.z;
            r5.x = r5.x ? r13.z : 0;
            if (r5.x != 0) {
              r4.w = (int)r4.w + numLights;
              r4.w = mad((int)r4.w, 15, -15);
              r5.x = abs(r8.w) * -0.200000003 + 0.400000006;
              r13.z = cmp(r8.w < 0);
              r13.z = r3.z ? r13.z : 0;
              r5.x = r13.z ? -r5.x : r5.x;
              r20.xyz = r12.xyz * r5.xxx + r11.xyz;
              r21.xyz = lightConstantsCB[r4.w].data[6].yzw;
              r21.w = lightConstantsCB[r4.w].data[7].x;
              r20.w = 1;
              r5.x = dot(r21.xyzw, r20.xyzw);
              r21.xyz = lightConstantsCB[r4.w].data[7].yzw;
              r21.w = lightConstantsCB[r4.w].data[8].x;
              r13.z = dot(r21.xyzw, r20.xyzw);
              r13.w = cmp(r13.z < r5.x);
              if (r13.w == 0) {
                r21.xyz = lightConstantsCB[r4.w].data[4].yzw;
                r21.w = lightConstantsCB[r4.w].data[5].x;
                r21.x = dot(r21.xyzw, r20.xyzw);
                r22.xyz = lightConstantsCB[r4.w].data[5].yzw;
                r22.w = lightConstantsCB[r4.w].data[6].x;
                r21.y = dot(r22.xyzw, r20.xyzw);
                r20.xy = r21.xy / r13.zz;
                r20.xy = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r21.x = lightConstantsCB[r4.w].data[9].w + r20.x;
                r21.y = lightConstantsCB[r4.w].data[10].x + r20.y;
                r20.xy = lightConstantsCB[r4.w].data[9].yz * r21.xy;
                r20.zw = lightConstantsCB[r4.w].data[3].yy / lightConstantsCB[r4.w].data[8].yw;
                r21.xy = float2(1,1) + -r20.zw;
                r21.xy = cmp(r20.xy >= r21.xy);
                r20.zw = cmp(r20.zw >= r20.xy);
                r20.zw = (int2)r20.zw | (int2)r21.xy;
                r14.w = (int)r20.w | (int)r20.z;
                if (r14.w == 0) {
                  r20.xy = saturate(r20.xy);
                  r21.x = r20.x * lightConstantsCB[r4.w].data[8].y + lightConstantsCB[r4.w].data[8].z;
                  r21.y = r20.y * lightConstantsCB[r4.w].data[8].w + lightConstantsCB[r4.w].data[9].x;
                  r15.w = lightConstantsCB[r4.w].data[10].z * r13.z;
                  r5.x = lightConstantsCB[r4.w].data[10].y * r13.z + r5.x;
                  r5.x = r5.x / r15.w;
                }
              } else {
                r14.w = -1;
              }
              r13.z = (int)r13.w | (int)r14.w;
              if (r13.z == 0) {
                r5.x = max(6.10351563e-05, r5.x);
                r13.z = 0x0000ffff & (int)lightConstantsCB[r4.w].data[1].w;
                if (enableDitheredShadow != 0) {
                  r20.x = -r4.x;
                  r22.z = (uint)r13.z;
                  r20.y = r13.x;
                  r20.z = r4.x;
                  r13.w = 0;
                  r14.w = 0;
                  while (true) {
                    r15.w = cmp((int)r14.w >= 8);
                    if (r15.w != 0) break;
                    r23.x = dot(icb[r14.w+0].yx, r20.xy);
                    r23.y = dot(icb[r14.w+0].yx, r20.yz);
                    r22.xy = r23.xy * lightConstantsCB[r4.w].data[3].yy + r21.xy;
                    r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r5.x).x;
                    r13.w = r15.w * 0.125 + r13.w;
                    r14.w = (int)r14.w + 1;
                  }
                } else {
                  r21.z = (uint)r13.z;
                  r13.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r5.x).x;
                }
                r4.w = r13.w * r13.w;
                r4.w = r4.w * r13.w;
              } else {
                r4.w = 1;
              }
              r7.w = r7.w * r4.w;
            }
          }
          r4.w = -r2.x * 0.5 + 1;
          r4.w = -r9.w * r4.w + 1;
          r4.w = r4.w * r4.w;
          r4.w = -r4.w * 0.620000005 + 0.620000005;
          r4.w = r4.w + -r9.w;
          r4.w = r2.z * r4.w + r9.w;
          r4.w = r4.w * r7.w;
          r20.x = lightConstantsCB[r0.x].data[0].w;
          r20.yz = lightConstantsCB[r0.x].data[1].xy;
          r5.x = cmp(0 < r8.w);
          r21.xyz = r4.www * r20.xyz + r16.xyz;
          r8.w = saturate(dot(r12.xyz, r15.xyz));
          r14.xyz = r14.xyz * r4.zzz + r5.yzw;
          r4.z = dot(r14.xyz, r14.xyz);
          r4.z = rsqrt(r4.z);
          r14.xyz = r14.xyz * r4.zzz;
          r4.z = dot(r14.xyz, r5.yzw);
          r9.w = dot(r12.xyz, r14.xyz);
          r13.z = abs(r9.w) * r1.w + -abs(r9.w);
          r9.w = abs(r9.w) * r13.z + 1;
          r13.z = r8.w * r2.y + r6.w;
          r9.w = r9.w * r9.w;
          r9.w = r9.w * r13.z;
          r9.w = rcp(r9.w);
          r8.w = r8.w * r10.w;
          r8.w = r9.w * r8.w;
          r8.w = r8.w * r7.w;
          r14.xyz = r8.www * r20.xyz + r18.xyz;
          r4.z = saturate(1 + -r4.z);
          r9.w = r4.z * r4.z;
          r9.w = r9.w * r9.w;
          r4.z = r9.w * r4.z;
          r4.z = r8.w * r4.z;
          r15.xyz = r4.zzz * r20.xyz + r19.xyz;
          r20.xyz = r4.www * r20.xyz + r17.zxy;
          r20.xyz = r3.zzz ? r20.xyz : r17.zxy;
          r16.xyz = r5.xxx ? r21.xyz : r16.xyz;
          r17.xyz = r5.xxx ? r17.xyz : r20.yzx;
          r19.xyz = r5.xxx ? r15.xyz : r19.xyz;
          r18.xyz = r5.xxx ? r14.xyz : r18.xyz;
          if (r2.w != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r4.z, cb2[52].x, l(136), u2.xxxx
          r4.z = samp0[]..swiz;
            r4.z = (int)r4.z | 8;
            GBufferDiffuseColor[viewID].136 = u2.x;
            GBufferDiffuseColor[viewID].156 = u2.x;
          }
          r0.w = (int)r0.w + 0x00010101;
        } else {
          r0.w = r12.w;
        }
      } else {
        r0.w = r4.y;
      }
    } else {
      r0.w = r4.y;
    }
    break;
    case 2 :    if (r2.w != 0) {
      r14.yzw = lightConstantsCB[r0.x].data[0].xyz + eyeOffset.xyz;
      r14.x = 2;
      GBufferDiffuseColor[viewID].136 = u2.xyzw;
    }
    r4.y = (int)r0.w + 1;
    r14.xy = lightConstantsCB[r0.x].data[3].zw + -r11.xy;
    r14.z = lightConstantsCB[r0.x].data[4].x + -r11.z;
    r4.z = dot(r14.xyz, r14.xyz);
    r4.z = rsqrt(r4.z);
    r15.xyz = r14.xyz * r4.zzz;
    r4.w = dot(r12.xyz, r15.xyz);
    r5.x = saturate(r4.w);
    r7.w = r3.z ? abs(r4.w) : r5.x;
    r8.w = cmp(0 < r7.w);
    if (r8.w != 0) {
      r15.xyz = lightConstantsCB[r0.x].data[7].yzw;
      r15.w = lightConstantsCB[r0.x].data[8].x;
      r11.w = 1;
      r8.w = dot(r15.xyzw, r11.xyzw);
      r9.w = cmp(r8.w < 1);
      if (r9.w != 0) {
        r20.xyz = float3(1,1,1);
        r9.w = 0;
      } else {
        r21.xyz = lightConstantsCB[r0.x].data[0].xyz + -r11.xyz;
        r10.w = lightConstantsCB[r0.x].data[3].x * lightConstantsCB[r0.x].data[3].x;
        r12.w = dot(r21.xyz, r21.xyz);
        r10.w = r10.w / r12.w;
        r10.w = min(1, r10.w);
        r13.zw = saturate(r8.ww * lightConstantsCB[r0.x].data[2].xz + lightConstantsCB[r0.x].data[2].yw);
        r21.xy = r13.zw * r13.zw;
        r13.zw = r13.zw * float2(-2,-2) + float2(3,3);
        r13.zw = r21.xy * r13.zw;
        r10.w = r13.z * r10.w;
        r10.w = r10.w * r13.w;
        r21.xyz = lightConstantsCB[r0.x].data[4].yzw;
        r21.w = lightConstantsCB[r0.x].data[5].x;
        r21.x = dot(r21.xyzw, r11.xyzw);
        r22.xyz = lightConstantsCB[r0.x].data[5].yzw;
        r22.w = lightConstantsCB[r0.x].data[6].x;
        r21.y = dot(r22.xyzw, r11.xyzw);
        r21.xy = r21.xy / r8.ww;
        r8.w = cmp(lightConstantsCB[r0.x].data[10].w < 0.00048828125);
        if (r8.w != 0) {
          r13.zw = saturate(abs(r21.xy) * lightConstantsCB[r0.x].data[12].xy + lightConstantsCB[r0.x].data[12].zw);
          r22.xy = r13.zw * r13.zw;
          r13.zw = r13.zw * float2(-2,-2) + float2(3,3);
          r13.zw = r22.xy * r13.zw;
          r8.w = r13.z * r13.w;
        } else {
          r22.xyzw = saturate(lightConstantsCB[r0.x].data[11].xyzw * abs(r21.yyxx));
          r22.xyzw = log2(r22.xyzw);
          r22.xyzw = lightConstantsCB[r0.x].data[12].zzzz * r22.xyzw;
          r22.xyzw = exp2(r22.xyzw);
          r13.zw = r22.xy + r22.zw;
          r13.zw = log2(r13.zw);
          r13.zw = lightConstantsCB[r0.x].data[12].ww * r13.zw;
          r13.zw = exp2(r13.zw);
          r11.w = lightConstantsCB[r0.x].data[12].x * r13.z;
          r12.w = lightConstantsCB[r0.x].data[12].y * r13.w + -1;
          r11.w = lightConstantsCB[r0.x].data[12].y * r13.w + -r11.w;
          r11.w = saturate(r12.w / r11.w);
          r12.w = r11.w * r11.w;
          r11.w = r11.w * -2 + 3;
          r8.w = r12.w * r11.w;
        }
        r9.w = r10.w * r8.w;
        r8.w = 255 & (int)lightConstantsCB[r0.x].data[14].w;
        if (r8.w != 0) {
          r21.z = 1;
          r10.w = dot(lightConstantsCB[r0.x].data[13].xyz, r21.xyz);
          r22.x = lightConstantsCB[r0.x].data[13].w;
          r22.yz = lightConstantsCB[r0.x].data[14].xy;
          r11.w = dot(r22.xyz, r21.xyz);
          r21.x = frac(r10.w);
          r21.y = frac(r11.w);
          r8.w = (int)r8.w + -1;
          r21.z = (uint)r8.w;
          r20.xyz = gCookieArray.SampleLevel(samplerLinear_s, r21.xyz, 0).xyz;
        } else {
          r20.xyz = float3(1,1,1);
        }
      }
      r21.x = lightConstantsCB[r0.x].data[0].w;
      r21.yz = lightConstantsCB[r0.x].data[1].xy;
      r20.xyz = r21.xyz * r20.xyz;
      r8.w = cmp(0 < r9.w);
      if (r8.w != 0) {
        if (3 == 0) r8.w = 0; else if (3+27 < 32) {         r8.w = (uint)lightConstantsCB[r0.x].data[1].w << (32-(3 + 27)); r8.w = (uint)r8.w >> (32-3);        } else r8.w = (uint)lightConstantsCB[r0.x].data[1].w >> 27;
        if (r2.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r10.w, cb2[52].x, l(136), u2.xxxx
        r10.w = samp0[]..swiz;
          r10.w = (int)r10.w | 4;
          GBufferDiffuseColor[viewID].136 = u2.x;
          GBufferDiffuseColor[viewID].152 = u2.x;
        }
        r10.w = (int)r0.w + 257;
        r8.w = cmp((int)r8.w != 1);
        if (r8.w != 0) {
          r8.w = abs(r4.w) * -0.200000003 + 0.400000006;
          r11.w = cmp(r4.w < 0);
          r11.w = r3.z ? r11.w : 0;
          r8.w = r11.w ? -r8.w : r8.w;
          r21.xyz = r12.xyz * r8.www + r11.xyz;
          r22.xyz = lightConstantsCB[r0.x].data[6].yzw;
          r22.w = lightConstantsCB[r0.x].data[7].x;
          r21.w = 1;
          r8.w = dot(r22.xyzw, r21.xyzw);
          r11.w = dot(r15.xyzw, r21.xyzw);
          r12.w = cmp(r11.w >= r8.w);
          if (r12.w != 0) {
            r15.xyz = lightConstantsCB[r0.x].data[4].yzw;
            r15.w = lightConstantsCB[r0.x].data[5].x;
            r15.x = dot(r15.xyzw, r21.xyzw);
            r22.xyz = lightConstantsCB[r0.x].data[5].yzw;
            r22.w = lightConstantsCB[r0.x].data[6].x;
            r15.y = dot(r22.xyzw, r21.xyzw);
            r13.zw = r15.xy / r11.ww;
            r13.zw = saturate(r13.zw * float2(0.5,-0.5) + float2(0.5,0.5));
            r15.x = r13.z * lightConstantsCB[r0.x].data[8].y + lightConstantsCB[r0.x].data[8].z;
            r15.y = r13.w * lightConstantsCB[r0.x].data[8].w + lightConstantsCB[r0.x].data[9].x;
            r8.w = r8.w / r11.w;
            r8.w = max(6.10351563e-05, r8.w);
            r11.w = 0x0000ffff & (int)lightConstantsCB[r0.x].data[1].w;
            if (enableDitheredShadow != 0) {
              r21.x = -r4.x;
              r22.z = (uint)r11.w;
              r21.y = r13.x;
              r21.z = r4.x;
              r12.w = 0;
              r13.z = 0;
              while (true) {
                r13.w = cmp((int)r13.z >= 8);
                if (r13.w != 0) break;
                r23.x = dot(icb[r13.z+0].yx, r21.xy);
                r23.y = dot(icb[r13.z+0].yx, r21.yz);
                r22.xy = r23.xy * lightConstantsCB[r0.x].data[3].yy + r15.xy;
                r13.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r8.w).x;
                r12.w = r13.w * 0.125 + r12.w;
                r13.z = (int)r13.z + 1;
              }
            } else {
              r15.z = (uint)r11.w;
              r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r8.w).x;
            }
            r8.w = r12.w * r12.w;
            r8.w = r8.w * r12.w;
          } else {
            r8.w = 1;
          }
        } else {
          r8.w = 1;
        }
        r8.w = r9.w * r8.w;
        r9.w = cmp(0 < r8.w);
        if (r9.w != 0) {
          r9.w = lightConstantsCB[r0.x].data[1].z * r1.w;
          r9.w = r9.w * r5.x;
          if (4 == 0) r11.w = 0; else if (4+16 < 32) {           r11.w = (uint)lightConstantsCB[r0.x].data[1].w << (32-(4 + 16)); r11.w = (uint)r11.w >> (32-4);          } else r11.w = (uint)lightConstantsCB[r0.x].data[1].w >> 16;
          r12.w = cmp(0 < (uint)r11.w);
          r12.w = r12.w ? r1.z : 0;
          if (r12.w != 0) {
            r11.w = (int)r11.w + numLights;
            r11.w = mad((int)r11.w, 15, -15);
            r12.w = abs(r4.w) * -0.200000003 + 0.400000006;
            r13.z = cmp(r4.w < 0);
            r13.z = r3.z ? r13.z : 0;
            r12.w = r13.z ? -r12.w : r12.w;
            r15.xyz = r12.xyz * r12.www + r11.xyz;
            r21.xyz = lightConstantsCB[r11.w].data[6].yzw;
            r21.w = lightConstantsCB[r11.w].data[7].x;
            r15.w = 1;
            r12.w = dot(r21.xyzw, r15.xyzw);
            r21.xyz = lightConstantsCB[r11.w].data[7].yzw;
            r21.w = lightConstantsCB[r11.w].data[8].x;
            r13.z = dot(r21.xyzw, r15.xyzw);
            r13.w = cmp(r13.z < r12.w);
            if (r13.w == 0) {
              r21.xyz = lightConstantsCB[r11.w].data[4].yzw;
              r21.w = lightConstantsCB[r11.w].data[5].x;
              r21.x = dot(r21.xyzw, r15.xyzw);
              r22.xyz = lightConstantsCB[r11.w].data[5].yzw;
              r22.w = lightConstantsCB[r11.w].data[6].x;
              r21.y = dot(r22.xyzw, r15.xyzw);
              r15.xy = r21.xy / r13.zz;
              r15.xy = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
              r21.x = lightConstantsCB[r11.w].data[9].w + r15.x;
              r21.y = lightConstantsCB[r11.w].data[10].x + r15.y;
              r15.xy = lightConstantsCB[r11.w].data[9].yz * r21.xy;
              r15.zw = lightConstantsCB[r11.w].data[3].yy / lightConstantsCB[r11.w].data[8].yw;
              r21.xy = float2(1,1) + -r15.zw;
              r21.xy = cmp(r15.xy >= r21.xy);
              r15.zw = cmp(r15.zw >= r15.xy);
              r15.zw = (int2)r15.zw | (int2)r21.xy;
              r14.w = (int)r15.w | (int)r15.z;
              if (r14.w == 0) {
                r15.xy = saturate(r15.xy);
                r21.x = r15.x * lightConstantsCB[r11.w].data[8].y + lightConstantsCB[r11.w].data[8].z;
                r21.y = r15.y * lightConstantsCB[r11.w].data[8].w + lightConstantsCB[r11.w].data[9].x;
                r15.x = lightConstantsCB[r11.w].data[10].z * r13.z;
                r12.w = lightConstantsCB[r11.w].data[10].y * r13.z + r12.w;
                r12.w = r12.w / r15.x;
              }
            } else {
              r14.w = -1;
            }
            r13.z = (int)r13.w | (int)r14.w;
            if (r13.z == 0) {
              r12.w = max(6.10351563e-05, r12.w);
              r13.z = 0x0000ffff & (int)lightConstantsCB[r11.w].data[1].w;
              if (enableDitheredShadow != 0) {
                r15.x = -r4.x;
                r22.z = (uint)r13.z;
                r15.y = r13.x;
                r15.z = r4.x;
                r13.w = 0;
                r14.w = 0;
                while (true) {
                  r15.w = cmp((int)r14.w >= 8);
                  if (r15.w != 0) break;
                  r23.x = dot(icb[r14.w+0].yx, r15.xy);
                  r23.y = dot(icb[r14.w+0].yx, r15.yz);
                  r22.xy = r23.xy * lightConstantsCB[r11.w].data[3].yy + r21.xy;
                  r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r12.w).x;
                  r13.w = r15.w * 0.125 + r13.w;
                  r14.w = (int)r14.w + 1;
                }
              } else {
                r21.z = (uint)r13.z;
                r13.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r12.w).x;
              }
              r11.w = r13.w * r13.w;
              r11.w = r11.w * r13.w;
            } else {
              r11.w = 1;
            }
            r8.w = r11.w * r8.w;
          } else {
            if (4 == 0) r0.x = 0; else if (4+20 < 32) {             r0.x = (uint)lightConstantsCB[r0.x].data[1].w << (32-(4 + 20)); r0.x = (uint)r0.x >> (32-4);            } else r0.x = (uint)lightConstantsCB[r0.x].data[1].w >> 20;
            r11.w = cmp(0 < (uint)r0.x);
            r1.z = ~(int)r1.z;
            r1.z = r11.w ? r1.z : 0;
            if (r1.z != 0) {
              r0.x = (int)r0.x + numLights;
              r0.x = mad((int)r0.x, 15, -15);
              r1.z = abs(r4.w) * -0.200000003 + 0.400000006;
              r11.w = cmp(r4.w < 0);
              r11.w = r3.z ? r11.w : 0;
              r1.z = r11.w ? -r1.z : r1.z;
              r15.xyz = r12.xyz * r1.zzz + r11.xyz;
              r21.xyz = lightConstantsCB[r0.x].data[6].yzw;
              r21.w = lightConstantsCB[r0.x].data[7].x;
              r15.w = 1;
              r1.z = dot(r21.xyzw, r15.xyzw);
              r21.xyz = lightConstantsCB[r0.x].data[7].yzw;
              r21.w = lightConstantsCB[r0.x].data[8].x;
              r11.w = dot(r21.xyzw, r15.xyzw);
              r12.w = cmp(r11.w < r1.z);
              if (r12.w == 0) {
                r21.xyz = lightConstantsCB[r0.x].data[4].yzw;
                r21.w = lightConstantsCB[r0.x].data[5].x;
                r21.x = dot(r21.xyzw, r15.xyzw);
                r22.xyz = lightConstantsCB[r0.x].data[5].yzw;
                r22.w = lightConstantsCB[r0.x].data[6].x;
                r21.y = dot(r22.xyzw, r15.xyzw);
                r13.zw = r21.xy / r11.ww;
                r13.zw = r13.zw * float2(0.5,-0.5) + float2(0.5,0.5);
                r15.x = lightConstantsCB[r0.x].data[9].w + r13.z;
                r15.y = lightConstantsCB[r0.x].data[10].x + r13.w;
                r13.zw = lightConstantsCB[r0.x].data[9].yz * r15.xy;
                r15.xy = lightConstantsCB[r0.x].data[3].yy / lightConstantsCB[r0.x].data[8].yw;
                r15.zw = float2(1,1) + -r15.xy;
                r15.zw = cmp(r13.zw >= r15.zw);
                r15.xy = cmp(r15.xy >= r13.zw);
                r15.xy = (int2)r15.xy | (int2)r15.zw;
                r14.w = (int)r15.y | (int)r15.x;
                if (r14.w == 0) {
                  r13.zw = saturate(r13.zw);
                  r15.x = r13.z * lightConstantsCB[r0.x].data[8].y + lightConstantsCB[r0.x].data[8].z;
                  r15.y = r13.w * lightConstantsCB[r0.x].data[8].w + lightConstantsCB[r0.x].data[9].x;
                  r13.z = lightConstantsCB[r0.x].data[10].z * r11.w;
                  r1.z = lightConstantsCB[r0.x].data[10].y * r11.w + r1.z;
                  r1.z = r1.z / r13.z;
                }
              } else {
                r14.w = -1;
              }
              r11.w = (int)r12.w | (int)r14.w;
              if (r11.w == 0) {
                r1.z = max(6.10351563e-05, r1.z);
                r11.w = 0x0000ffff & (int)lightConstantsCB[r0.x].data[1].w;
                if (enableDitheredShadow != 0) {
                  r21.x = -r4.x;
                  r22.z = (uint)r11.w;
                  r21.y = r13.x;
                  r21.z = r4.x;
                  r4.x = 0;
                  r12.w = 0;
                  while (true) {
                    r13.x = cmp((int)r12.w >= 8);
                    if (r13.x != 0) break;
                    r23.x = dot(icb[r12.w+0].yx, r21.xy);
                    r23.y = dot(icb[r12.w+0].yx, r21.yz);
                    r22.xy = r23.xy * lightConstantsCB[r0.x].data[3].yy + r15.xy;
                    r13.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r1.z).x;
                    r4.x = r13.x * 0.125 + r4.x;
                    r12.w = (int)r12.w + 1;
                  }
                } else {
                  r15.z = (uint)r11.w;
                  r4.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r1.z).x;
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
          r0.x = r2.z * r0.x + r7.w;
          r0.x = r0.x * r8.w;
          r1.z = cmp(0 < r4.w);
          r13.xzw = r0.xxx * r20.xyz + r16.xyz;
          r4.xzw = r14.xyz * r4.zzz + r5.yzw;
          r2.x = dot(r4.xzw, r4.xzw);
          r2.x = rsqrt(r2.x);
          r4.xzw = r4.xzw * r2.xxx;
          r2.x = dot(r4.xzw, r5.yzw);
          r2.z = dot(r12.xyz, r4.xzw);
          r1.w = abs(r2.z) * r1.w + -abs(r2.z);
          r1.w = abs(r2.z) * r1.w + 1;
          r2.y = r5.x * r2.y + r6.w;
          r1.w = r1.w * r1.w;
          r1.w = r1.w * r2.y;
          r1.w = rcp(r1.w);
          r1.w = r1.w * r9.w;
          r1.w = r8.w * r1.w;
          r1.w = 0.25 * r1.w;
          r4.xzw = r1.www * r20.xyz + r18.xyz;
          r2.x = saturate(1 + -r2.x);
          r2.y = r2.x * r2.x;
          r2.y = r2.y * r2.y;
          r2.x = r2.x * r2.y;
          r1.w = r2.x * r1.w;
          r2.xyz = r1.www * r20.xyz + r19.xyz;
          r5.xyz = r0.xxx * r20.xyz + r17.zxy;
          r5.xyz = r3.zzz ? r5.xyz : r17.zxy;
          r16.xyz = r1.zzz ? r13.xzw : r16.xyz;
          r17.xyz = r1.zzz ? r17.xyz : r5.yzx;
          r19.xyz = r1.zzz ? r2.xyz : r19.xyz;
          r18.xyz = r1.zzz ? r4.xzw : r18.xyz;
          if (r2.w != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r0.x, cb2[52].x, l(136), u2.xxxx
          r0.x = samp0[]..swiz;
            r0.x = (int)r0.x | 8;
            GBufferDiffuseColor[viewID].136 = u2.x;
            GBufferDiffuseColor[viewID].156 = u2.x;
          }
          r0.w = (int)r0.w + 0x00010101;
        } else {
          r0.w = r10.w;
        }
      } else {
        r0.w = r4.y;
      }
    } else {
      r0.w = r4.y;
    }
    break;
    default :
    break;
  }
  r4.xyz = r3.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r0.x = (uint)r4.y;
  r2.xyz = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.z = (uint)r2.x;
  r1.z = cmp((int)r0.x == (int)r1.z);
  r1.zw = r1.zz ? r2.yz : float2(-1,0);
  r2.xyz = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.x = (uint)r2.x;
  r2.x = cmp((int)r0.x == (int)r2.x);
  r2.xy = r2.xx ? r2.yz : float2(-1,0);
  r3.xyw = r9.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.z = (uint)r3.x;
  r2.z = cmp((int)r0.x == (int)r2.z);
  r3.xy = r2.zz ? r3.yw : float2(-1,0);
  r5.xyz = r10.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.z = (uint)r5.x;
  r0.x = cmp((int)r0.x == (int)r2.z);
  r5.xy = r0.xx ? r5.yz : float2(-1,0);
  r7.x = r1.z;
  r7.y = r2.x;
  r7.z = r3.x;
  r7.w = r5.x;
  r7.xyzw = r7.xyzw + -r4.xxxx;
  r7.xyzw = cmp(abs(r7.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r7.xyzw = r7.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r0.x = r7.x + r7.y;
  r0.x = r0.x + r7.z;
  r0.x = r0.x + r7.w;
  r1.z = r7.y * r2.y;
  r1.z = r7.x * r1.w + r1.z;
  r1.z = r7.z * r3.y + r1.z;
  r1.z = r7.w * r5.y + r1.z;
  r4.w = r1.z / r0.x;
  r0.x = cmp(0 >= r0.x);
  r4.yz = r0.xx ? float2(0,0) : r4.zw;
  r1.zw = (int2)r1.xy & int2(1,1);
  r0.x = cmp((int)r1.w == (int)r1.z);
  r2.xyz = r0.xxx ? r4.xyz : r4.xzy;
  r0.x = -r2.z * 0.5 + r2.x;
  r4.y = r2.z + r0.x;
  r4.z = -r2.y * 0.5 + r0.x;
  r4.x = r4.z + r2.y;
  r2.xyz = r16.xyz * r6.xyz;
  r2.xyz = r17.zxy * r4.xyz + r2.xyz;
  r3.xyw = float3(0.959999979,0.959999979,0.959999979) * r19.xyz;
  r3.xyw = r18.xyz * float3(0.0399999991,0.0399999991,0.0399999991) + r3.xyw;
  r2.xyz = r3.xyw + r2.xyz;
  r3.xyw = float3(1,1,1) + -r4.xyz;
  r3.xyw = r19.xyz * r3.xyw;
  r3.xyw = r18.xyz * r4.xyz + r3.xyw;
  r3.xyw = r16.xyz * r6.xyz + r3.xyw;
  r2.xyz = r3.zzz ? r2.xyz : r3.xyw;
  r0.x = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.x != 0) {
    r0.x = dot(r11.xyz, r11.xyz);
    r1.z = rsqrt(r0.x);
    r3.xyz = r11.xyz * r1.zzz;
    r0.x = sqrt(r0.x);
    r1.z = cmp(0 < fogConstants.blendAmount);
    if (r1.z != 0) {
      r1.zw = r0.xx * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r1.zw = fogConstants.atmospherefogdensityatcamera.xy * r1.zw;
      r3.w = cmp(0.00999999978 < abs(r11.z));
      r4.xy = fogConstants.atmospherefogheightdensityscale.xy * r11.zz;
      r4.zw = float2(-1.44269502,-1.44269502) * r4.xy;
      r4.zw = exp2(r4.zw);
      r4.zw = float2(1,1) + -r4.zw;
      r4.xy = r4.zw / r4.xy;
      r4.xy = r4.xy * r1.zw;
      r1.zw = r3.ww ? r4.xy : r1.zw;
      r4.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.zzz;
      r4.xyz = exp2(r4.xyz);
      r5.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.www;
      r5.xyz = exp2(r5.xyz);
      r5.xyz = r5.xyz + -r4.xyz;
      r4.xyz = fogConstants.blendAmount * r5.xyz + r4.xyz;
    } else {
      r1.z = r0.x * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r1.z = fogConstants.atmospherefogdensityatcamera.x * r1.z;
      r1.w = cmp(0.00999999978 < abs(r11.z));
      r3.w = fogConstants.atmospherefogheightdensityscale.x * r11.z;
      r4.w = -1.44269502 * r3.w;
      r4.w = exp2(r4.w);
      r4.w = 1 + -r4.w;
      r3.w = r4.w / r3.w;
      r3.w = r3.w * r1.z;
      r1.z = r1.w ? r3.w : r1.z;
      r5.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.zzz;
      r4.xyz = exp2(r5.xyz);
    }
    r4.xyz = r4.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r4.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r4.xyz);
    r1.z = dot(fogConstants.wldSunFogDir.xyz, -r3.xyz);
    r1.w = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r3.x = fogConstants.atmosphereMieSchlickK * -r1.z + 1;
    r3.x = r3.x * r3.x;
    r3.x = 12.566371 * r3.x;
    r1.w = r1.w / r3.x;
    r0.x = -fogConstants.atmospherehazebasedist + r0.x;
    r0.x = saturate(fogConstants.atmospherehazefadedist * r0.x);
    r0.x = r1.w * r0.x;
    r1.z = saturate(r1.z);
    r1.z = r1.z * r1.z + 1;
    r1.z = r1.z * 0.0596831031 + -1;
    r1.z = fogConstants.atmospheresunstrength * r1.z + 1;
    r3.xyz = fogConstants.atmosphereMieDensity.xyz * r0.xxx;
    r3.xyz = r1.zzz * fogConstants.atmosphereRayleighDensity.xyz + r3.xyz;
    r3.xyz = fogConstants.atmosphereInScatterIntensity * r3.xyz;
    r5.xyz = float3(1,1,1) + -r4.xyz;
    r3.xyz = r5.xyz * r3.xyz;
    r3.xyz = r2.xyz * r4.xyz + r3.xyz;
  } else {
    r0.x = fogConstants.heightFalloff * r11.z;
    r1.z = fogConstants.heightFalloff * r11.z + fogConstants.K0;
    r1.w = cmp(abs(r0.x) < 9.99999975e-05);
    r3.w = min(64, r1.z);
    r3.w = 1.44269502 * r3.w;
    r3.w = exp2(r3.w);
    r4.x = saturate(fogConstants.K0b);
    r4.y = cmp(r1.z < 0);
    r1.z = 1 + r1.z;
    r1.z = r4.y ? r3.w : r1.z;
    r1.z = -fogConstants.K0b + r1.z;
    r0.x = r1.w ? 1 : r0.x;
    r0.x = r1.z / r0.x;
    r0.x = r1.w ? r4.x : r0.x;
    r0.x = fogConstants.expMul * r0.x;
    r1.z = dot(r11.xyz, r11.xyz);
    r1.w = sqrt(r1.z);
    r0.x = r0.x * r1.w + fogConstants.expAdd;
    r0.x = exp2(r0.x);
    r0.x = min(1, r0.x);
    r0.x = 1 + -r0.x;
    r1.z = rsqrt(r1.z);
    r4.xyz = r11.xyz * r1.zzz;
    r1.z = dot(fogConstants.wldSunFogDir.xyz, r4.xyz);
    r1.z = saturate(fogConstants.sunFogAngles.y * r1.z + fogConstants.sunFogAngles.x);
    r4.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r4.xyzw = r1.zzzz * r4.xyzw + fogConstants.sunFogColor.xyzw;
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
  r3.xy = cmp((int2)r3.yw == int2(2,0));
  r1.zw = r1.zw ? r3.xy : 0;
  r3.xy = r1.zw ? float2(0.200000003,0.200000003) : 0;
  r1.z = permuteHighlight & 16;
  r1.w = cmp((int)r1.z != 0);
  r1.z = cmp((int)r1.z == 0);
  r1.z = r1.z ? r1.w : 0;
  r3.z = r1.z ? 0.200000 : 0;
  r3.xyz = r3.xyz * relHDRExposure.xxx + -r2.xyz;
  r3.xyz = r3.xyz * float3(0.5,0.5,0.5) + r2.xyz;
  r2.xyz = r0.xxx ? r3.xyz : r2.xyz;
  if (enableCountDebug != 0) {
    if (debugDrawOverlayType != 0) {
      switch (cb2[53].y) {
        case 1 :        r0.x = (int)r0.w & 3;
        break;
        case 2 :        if (2 == 0) r0.x = 0; else if (2+8 < 32) {         r0.x = (uint)r0.w << (32-(2 + 8)); r0.x = (uint)r0.x >> (32-2);        } else r0.x = (uint)r0.w >> 8;
        break;
        case 3 :        r0.x = (uint)r0.w >> 16;
        break;
        case 4 :        r0.x = (int)r13.y & 255;
        break;
        case 5 :        if (8 == 0) r0.x = 0; else if (8+8 < 32) {         r0.x = (uint)r13.y << (32-(8 + 8)); r0.x = (uint)r0.x >> (32-8);        } else r0.x = (uint)r13.y >> 8;
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
    r1.w = (int)r0.w & 3;
    GBufferDiffuseColor[viewID].92 = u2.xyzw;
    r0.x = (int)r13.y & 255;
    GBufferDiffuseColor[viewID].108 = u2.x;
  }
  if (enableCountDebug != 0) {
    r0.x = (int)r0.w & 3;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(0), r0.x
    InterlockedAdd(dest, value, orig_value);
    if (2 == 0) r1.x = 0; else if (2+8 < 32) {     r1.x = (uint)r0.w << (32-(2 + 8)); r1.x = (uint)r1.x >> (32-2);    } else r1.x = (uint)r0.w >> 8;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(4), r1.x
    InterlockedAdd(dest, value, orig_value);
    r0.w = (uint)r0.w >> 16;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(8), r0.w
    InterlockedAdd(dest, value, orig_value);
    r1.y = (int)r13.y & 255;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(12), r1.y
    InterlockedAdd(dest, value, orig_value);
    if (8 == 0) r1.z = 0; else if (8+8 < 32) {     r1.z = (uint)r13.y << (32-(8 + 8)); r1.z = (uint)r1.z >> (32-8);    } else r1.z = (uint)r13.y >> 8;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(16), r1.z
    InterlockedAdd(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(0), r0.x
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(4), r1.x
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(8), r0.w
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