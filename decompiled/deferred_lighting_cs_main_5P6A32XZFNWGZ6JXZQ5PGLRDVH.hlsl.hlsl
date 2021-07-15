// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:23:02 2021

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
  r0.x = mad(permuteStride, 34, (int)vThreadGroupID.x);
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
  r3.z = dot(r12.xyz, sunConstants.wldDir.xyz);
  r4.y = saturate(r3.z);
  r4.z = cmp(0 >= r4.y);
  if (r4.z != 0) {
    r4.w = 0;
  }
  if (r4.z == 0) {
    r13.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * r11.yyy;
    r13.yzw = r11.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r13.yzw;
    r13.yzw = r11.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r13.yzw;
    r13.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r13.yzw;
    r4.z = -sunConstants.splitDepthOffset + r13.w;
    r4.z = -r4.z * 6.10351563e-05 + 1;
    r6.w = saturate(r4.z);
    r6.w = cmp(r4.z == r6.w);
    if (r6.w != 0) {
      r6.w = 0;
      r7.w = 0;
      while (true) {
        r8.w = cmp(r6.w >= 3);
        if (r8.w != 0) break;
        r8.w = (uint)r6.w;
        r15.xy = -sunConstants.splitPinTransform[r8.w].xy + r13.yz;
        r9.w = max(abs(r15.x), abs(r15.y));
        r7.w = sunConstants.splitPinTransform[r8.w].z * r9.w;
        r8.w = cmp(r7.w < 1);
        if (r8.w != 0) {
          break;
        }
        r6.w = 1 + r6.w;
        r7.w = 0;
      }
    } else {
      r6.w = 3;
      r7.w = 0;
    }
    r8.w = cmp(r6.w >= 3);
    if (r8.w != 0) {
      r15.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r16.xz = rcp(r15.xx);
      r16.y = -r16.z;
      r15.xyz = r13.yzy * r16.xyz + r15.yzy;
      r16.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r15.xyz = max(float3(0,0,0), r15.xyz);
      r15.xyz = min(r15.xyz, r16.xyz);
      r16.xy = sunConstants.sstLightingConstants.coordScale * r15.zy;
      r16.xy = floor(r16.xy);
      r9.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r16.y;
      r9.w = r9.w * sunConstants.sstLightingConstants.coordScale + r16.x;
      r9.w = (uint)r9.w;
      r9.w = (int)r9.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.w, r9.w, l(0), t23.xxxx
    r10.w = samp0[]..swiz;
      r15.w = (int)r10.w & 0x40000000;
      r16.x = (uint)r10.w << 2;
      if (r15.w == 0) {
        r15.w = (int)r10.w & 0x01ffffff;
        r17.x = (int)r9.w + (int)r15.w;
        r9.w = (uint)r10.w >> 25;
        r9.w = (uint)r9.w;
        r15.xyz = r15.xyz * r9.www;
        r15.xyz = frac(r15.xyz);
        r15.xyz = float3(128,128,128) * r15.xyz;
        r15.xyz = (uint3)r15.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
      r17.z = samp0[]..swiz;
        r16.yz = (uint2)r15.zy >> int2(6,6);
        r9.w = (int)r17.z & 0xc0000000;
        r10.w = (int)r17.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.w, r10.w, l(0), t23.xxxx
      r10.w = samp0[]..swiz;
        r10.w = r16.z ? r17.z : r10.w;
        r15.w = (uint)r10.w >> 13;
        r10.w = r16.y ? r15.w : r10.w;
        r10.w = (int)r10.w & 8191;
        r18.x = (int)r10.w + (int)r17.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
      r18.z = samp0[]..swiz;
        r17.y = 0;
        r18.y = 1;
        r16.yzw = r9.www ? r17.xyz : r18.xyz;
        r18.yz = r9.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r19.xy = (uint2)r15.zy >> (uint2)r18.yy;
        r19.xy = (int2)r19.xy & int2(1,1);
        r10.w = (int)r16.w & 0xc0000000;
        r15.w = (int)r16.y + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.w, r15.w, l(0), t23.xxxx
      r15.w = samp0[]..swiz;
        r15.w = r19.y ? r16.w : r15.w;
        r17.w = (uint)r15.w >> 13;
        r15.w = r19.x ? r17.w : r15.w;
        r15.w = (int)r15.w & 8191;
        r18.x = (int)r15.w + (int)r16.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.x, l(0), t23.xxxx
      r18.w = samp0[]..swiz;
        r16.yzw = r10.www ? r16.yzw : r18.xzw;
        r16.yzw = r9.www ? r17.xyz : r16.yzw;
        r9.w = (int)r16.w & 0xc0000000;
        if (r9.w == 0) {
          r9.w = (int)-r16.z + 6;
          r17.xy = (uint2)r15.zy >> (uint2)r9.ww;
          r9.w = (int)r16.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r10.w = (((uint)r17.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r10.w = (((uint)r17.x << 0) & bitmask.w) | ((uint)r10.w & ~bitmask.w);
          r10.w = (int)r10.w * 10;
          r9.w = (uint)r9.w >> (uint)r10.w;
          r9.w = (int)r9.w & 1023;
          r17.x = (int)r9.w + (int)r16.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.x, l(0), t23.xxxx
        r17.w = samp0[]..swiz;
          r17.yz = (int2)r16.zz + int2(1,2);
          r9.w = (int)-r17.y + 6;
          r18.xy = (uint2)r15.zy >> (uint2)r9.ww;
          r9.w = (int)r17.w & 0xc0000000;
          r10.w = (int)r17.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r15.w = (((uint)r18.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r15.w = (((uint)r18.x << 0) & bitmask.w) | ((uint)r15.w & ~bitmask.w);
          r15.w = (int)r15.w * 10;
          r10.w = (uint)r10.w >> (uint)r15.w;
          r10.w = (int)r10.w & 1023;
          r18.x = (int)r10.w + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
        r18.z = samp0[]..swiz;
          r18.y = r17.z;
          r18.xyz = r9.www ? r17.xyw : r18.xyz;
          r10.w = (int)-r18.y + 6;
          r17.yz = (uint2)r15.zy >> (uint2)r10.ww;
          r10.w = (int)r18.z & 0xc0000000;
          r15.w = (int)r18.z | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r16.z = (((uint)r17.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r16.z = (((uint)r17.y << 0) & bitmask.z) | ((uint)r16.z & ~bitmask.z);
          r16.z = (int)r16.z * 10;
          r15.w = (uint)r15.w >> (uint)r16.z;
          r15.w = (int)r15.w & 1023;
          r19.x = (int)r15.w + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.y, r19.x, l(0), t23.xxxx
        r19.y = samp0[]..swiz;
          r17.yz = r10.ww ? r18.xz : r19.xy;
          r16.yw = r9.ww ? r17.xw : r17.yz;
        }
        r9.w = (int)r16.w & 0xc0000000;
        if (r9.w == 0) {
          if (14 == 0) r10.w = 0; else if (14+15 < 32) {           r10.w = (uint)r16.w << (32-(14 + 15)); r10.w = (uint)r10.w >> (32-14);          } else r10.w = (uint)r16.w >> 15;
          r10.w = (uint)r10.w;
          r10.w = sunConstants.sstLightingConstants.constants.spanInInches * r10.w;
          r10.w = 6.10388815e-05 * r10.w;
          r17.xy = (int2)r16.ww & int2(32767,536870912);
          r15.w = (uint)r17.x;
          r15.w = sunConstants.sstLightingConstants.constants.spanInInches * r15.w;
          r15.w = 3.05185094e-05 * r15.w;
          r16.z = (int)r15.y & 3;
          r16.z = (int)r16.z + (int)r16.y;
          r16.z = (int)r16.z + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.z, l(0), t23.xxxx
        r16.z = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r17.x = (((uint)r15.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.z = ((~(-1 << 2)) << 1) & 0xffffffff;  r17.z = (((uint)r15.y << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.w = ((~(-1 << 1)) << 4) & 0xffffffff;  r17.w = (((uint)r15.z << 4) & bitmask.w) | ((uint)0 & ~bitmask.w);
          r15.x = (uint)r16.z >> (uint)r17.x;
          r15.x = (int)r15.x & 255;
          r15.x = (uint)r15.x;
          r15.x = r15.x * r15.w;
          r15.x = r15.x * 0.00392156886 + r10.w;
          r15.y = (int)r17.z + 1;
          if (1 == 0) r15.z = 0; else if (1+1 < 32) {           r15.z = (uint)r15.z << (32-(1 + 1)); r15.z = (uint)r15.z >> (32-1);          } else r15.z = (uint)r15.z >> 1;
          r15.y = (int)r15.z + (int)r15.y;
          r15.y = (int)r15.y + (int)r16.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.y, r15.y, l(0), t23.xxxx
        r15.y = samp0[]..swiz;
          r15.y = (uint)r15.y >> (uint)r17.w;
          r15.y = (int)r15.y & 0x0000ffff;
          r15.y = (uint)r15.y;
          r15.y = r15.y * r15.w;
          r10.w = r15.y * 1.52590219e-05 + r10.w;
          r16.x = r17.y ? r15.x : r10.w;
        } else {
          r10.w = (int)r16.w & 0x80000000;
          r15.x = (int)r16.y + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.x, r15.x, l(0), t23.xxxx
        r15.x = samp0[]..swiz;
          r10.w = r10.w ? r15.x : 0;
          r15.x = (uint)r16.w << 2;
          r15.y = (uint)r10.w >> 16;
          r15.y = f16tof32(r15.y);
          r10.w = (int)r10.w & 0x0000ffff;
          r10.w = f16tof32(r10.w);
          r15.x = r13.y * r15.y + r15.x;
          r10.w = r13.z * r10.w + r15.x;
          r16.x = r9.w ? r10.w : r16.x;
        }
      }
      r9.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r13.w;
      r9.w = cmp(r16.x < r9.w);
      r4.w = r9.w ? 0 : 1;
    }
    if (r8.w == 0) {
      if (enableDitheredShadow == 0) {
        r8.w = (uint)r6.w;
        r15.xy = -sunConstants.splitPinTransform[r8.w].xy + r13.yz;
        r15.xy = sunConstants.splitPinTransform[r8.w].zz * r15.xy;
        r15.xy = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r8.w = (int16)sunConstants.splitArrayOffset;
        r15.z = r8.w + r6.w;
        r8.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r4.z).x;
        r9.w = gTransShadowmapArray.SampleLevel(samp0_s, r15.xyz, 0).x;
        r8.w = r9.w + r8.w;
        r8.w = saturate(-1 + r8.w);
        r9.w = r8.w * r8.w;
        r4.w = r9.w * r8.w;
      }
      if (enableDitheredShadow != 0) {
        r15.x = -r4.x;
        r8.w = (uint)r6.w;
        r6.w = 1 + r6.w;
        r6.w = min(2, r6.w);
        r6.w = (uint)r6.w;
        r7.w = 1 + -r7.w;
        r7.w = 28 * r7.w;
        r7.w = (uint)r7.w;
        r16.xy = -sunConstants.splitPinTransform[r8.w].xy + r13.yz;
        r16.xy = sunConstants.splitPinTransform[r8.w].zz * r16.xy;
        r16.xy = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r13.yz = -sunConstants.splitPinTransform[r6.w].xy + r13.yz;
        r13.yz = sunConstants.splitPinTransform[r6.w].zz * r13.yz;
        r13.yz = r13.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r15.y = r13.x;
        r15.z = r4.x;
        r9.w = 0;
        r10.w = 0;
        while (true) {
          r13.w = cmp((uint)r10.w >= 8);
          if (r13.w != 0) break;
          r13.w = cmp((uint)r7.w < (uint)r10.w);
          r16.zw = r13.ww ? r13.yz : r16.xy;
          r15.w = r13.w ? sunConstants.splitPinTransform[r6.w].w : sunConstants.splitPinTransform[r8.w].w;
          r13.w = r13.w ? r6.w : r8.w;
          r17.x = dot(icb[r10.w+0].yx, r15.xy);
          r17.y = dot(icb[r10.w+0].yx, r15.yz);
          r17.xy = r17.xy * r15.ww + r16.zw;
          r13.w = (int)r13.w + (int16)sunConstants.splitArrayOffset;
          r17.z = (uint)r13.w;
          r13.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r4.z).x;
          r15.w = gTransShadowmapArray.SampleLevel(samp0_s, r17.xyz, 0).x;
          r13.w = r15.w + r13.w;
          r13.w = saturate(-1 + r13.w);
          r9.w = r13.w * 0.125 + r9.w;
          r10.w = (int)r10.w + 1;
        }
        r4.z = r9.w * r9.w;
        r4.w = r4.z * r9.w;
      }
    }
  }
  r4.z = 1 + -r2.y;
  r6.w = 5 * r4.z;
  r7.w = r4.z * 5 + -2.5;
  r7.w = 0.400000006 * r7.w;
  r7.w = max(0, r7.w);
  r7.w = 100 * r7.w;
  r13.yz = -r4.zz * float2(10,5) + float2(6.85740995,7.08500004);
  r8.w = exp2(r13.y);
  r8.w = r8.w * r2.x;
  r8.w = 9.1368103 * r8.w;
  r9.w = r6.w * r4.z;
  r9.w = -r9.w * 2.0159049 + r13.z;
  r9.w = exp2(r9.w);
  r9.w = r9.w * r2.x;
  r9.w = 9.70808983 * r9.w;
  r8.w = max(r9.w, r8.w);
  r8.w = max(1.26815999, r8.w);
  if (probeDebug != 0) {
    r9.w = (uint)renderTargetSize.x;
    r9.w = (int)r9.w + 7;
    r9.w = (uint)r9.w >> 3;
    r9.w = mad((int)r0.z, (int)r9.w, (int)r0.y);
    bitmask.w = ((~(-1 << 27)) << 5) & 0xffffffff;  r9.w = (((uint)r9.w << 5) & bitmask.w) | ((uint)16 & ~bitmask.w);
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
    r13.yzw = float3(0,0,0);
    r10.w = 0;
    r27.z = 0;
    r28.z = 0;
    r26.xyzw = float4(0,0,0,0);
    while (true) {
      r27.w = cmp((uint)r26.w >= numRefProbes);
      if (r27.w != 0) break;
      r27.w = (uint)r26.w >> 5;
      r27.w = (int)r9.w + (int)r27.w;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r27.w, r27.w, l(0), t26.xxxx
    r27.w = samp0[]..swiz;
      r29.xyzw = r15.yxzw;
      r30.xyzw = r16.xyzw;
      r31.xyzw = r17.yzwx;
      r32.xyzw = r18.xyzw;
      r33.xyzw = r19.xyzw;
      r34.xyzw = r20.zwxy;
      r35.xyzw = r21.zwxy;
      r36.xyzw = r23.zwxy;
      r37.xyzw = r24.zwxy;
      r38.xyz = r13.yzw;
      r28.w = r10.w;
      r38.w = r27.z;
      r39.z = r28.z;
      r39.xyw = r26.yxz;
      r40.xyzw = r22.zwxy;
      r41.xyzw = r25.zwxy;
      r42.x = r27.w;
      while (true) {
        if (r42.x == 0) break;
        r42.y = firstbitlow((uint)r42.x);
        r42.z = 1 << (int)r42.y;
        r42.z = ~(int)r42.z;
        r42.x = (int)r42.z & (int)r42.x;
        r42.y = (int)r26.w + (int)r42.y;
        r42.y = (int)r42.y * 14;
        r43.xyz = -refProbeConstantsCB[r42.y].data[0].xyz + r11.xyz;
        r42.z = dot(r43.xyz, r43.xyz);
        r42.z = sqrt(r42.z);
        r42.z = cmp(probeDebugRadius >= r42.z);
        if (r42.z != 0) {
          r29.yzw = refProbeConstantsCB[r42.y].data[1].xyz;
          r29.x = refProbeConstantsCB[r42.y].data[0].w;
          r30.yzw = refProbeConstantsCB[r42.y].data[2].xyz;
          r30.x = refProbeConstantsCB[r42.y].data[1].w;
          r31.xyz = refProbeConstantsCB[r42.y].data[3].xyz;
          r31.w = refProbeConstantsCB[r42.y].data[4].z;
          r32.yz = refProbeConstantsCB[r42.y].data[4].xy;
          r32.x = refProbeConstantsCB[r42.y].data[3].w;
          r32.w = refProbeConstantsCB[r42.y].data[6].x;
          r33.yzw = refProbeConstantsCB[r42.y].data[5].xyz;
          r33.x = refProbeConstantsCB[r42.y].data[4].w;
          r34.yz = refProbeConstantsCB[r42.y].data[7].yw;
          r34.x = refProbeConstantsCB[r42.y].data[6].y;
          r34.w = refProbeConstantsCB[r42.y].data[8].x;
          r35.xyz = refProbeConstantsCB[r42.y].data[8].yzw;
          r35.w = refProbeConstantsCB[r42.y].data[9].x;
          r36.xyz = refProbeConstantsCB[r42.y].data[10].yzw;
          r36.w = refProbeConstantsCB[r42.y].data[11].x;
          r37.xyz = refProbeConstantsCB[r42.y].data[11].yzw;
          r37.w = refProbeConstantsCB[r42.y].data[12].x;
          r38.xyz = refProbeConstantsCB[r42.y].data[0].xyz;
          r42.zw = refProbeConstantsCB[r42.y].data[13].yz;
          r28.w = -1;
          r38.w = refProbeConstantsCB[r42.y].data[2].w;
          r39.z = refProbeConstantsCB[r42.y].data[5].w;
          r39.w = refProbeConstantsCB[r42.y].data[7].z;
          r40.xyz = refProbeConstantsCB[r42.y].data[9].yzw;
          r40.w = refProbeConstantsCB[r42.y].data[10].x;
          r41.xyz = refProbeConstantsCB[r42.y].data[12].yzw;
          r41.w = refProbeConstantsCB[r42.y].data[13].x;
          r39.xy = r42.zw;
          break;
        }
      }
      if (r28.w != 0) {
        r15.xyzw = r29.yxzw;
        r16.xyzw = r30.xyzw;
        r17.xyzw = r31.wxyz;
        r18.xyzw = r32.xyzw;
        r19.xyzw = r33.xyzw;
        r20.xyzw = r34.zwxy;
        r21.xyzw = r35.zwxy;
        r22.xyzw = r40.zwxy;
        r23.xyzw = r36.zwxy;
        r24.xyzw = r37.zwxy;
        r25.xyzw = r41.zwxy;
        r13.yzw = r38.xyz;
        r10.w = -1;
        r27.z = r38.w;
        r28.z = r39.z;
        r26.xyz = r39.yxw;
        break;
      }
      r26.w = (int)r26.w + 32;
      r15.xyzw = r29.yxzw;
      r16.xyzw = r30.xyzw;
      r17.xyzw = r31.wxyz;
      r18.xyzw = r32.xyzw;
      r19.xyzw = r33.xyzw;
      r20.xyzw = r34.zwxy;
      r21.xyzw = r35.zwxy;
      r23.xyzw = r36.zwxy;
      r24.xyzw = r37.zwxy;
      r13.yzw = r38.xyz;
      r10.w = r28.w;
      r27.z = r38.w;
      r28.z = r39.z;
      r26.xyz = r39.yxw;
      r22.xyzw = r40.zwxy;
      r25.xyzw = r41.zwxy;
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
    r25.z = r26.y;
  } else {
    r10.w = 0;
  }
  if (r10.w != 0) {
    if (r2.w != 0) {
      r30.yzw = eyeOffset.xyz + r13.yzw;
      r30.x = 16;
      GBufferDiffuseColor[viewID].880 = u2.xyzw;
    }
    r13.yzw = -r13.yzw + r11.xyz;
    r9.w = (int)r26.z & 0x0000ffff;
    if (6 == 0) r15.w = 0; else if (6+25 < 32) {     r15.w = (uint)r26.z << (32-(6 + 25)); r15.w = (uint)r15.w >> (32-6);    } else r15.w = (uint)r26.z >> 25;
    r16.w = (int)r9.w * 6;
    r17.w = dot(refProbeAttenuationConstantsCB[r16.w].data[0].xyz, r13.yzw);
    r17.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[0].w + r17.w);
    r19.z = dot(refProbeAttenuationConstantsCB[r16.w].data[1].xyz, r13.yzw);
    r19.z = saturate(refProbeAttenuationConstantsCB[r16.w].data[1].w + r19.z);
    r17.w = r19.z * r17.w;
    r19.z = dot(refProbeAttenuationConstantsCB[r16.w].data[2].xyz, r13.yzw);
    r19.z = saturate(refProbeAttenuationConstantsCB[r16.w].data[2].w + r19.z);
    r17.w = r19.z * r17.w;
    r19.z = dot(refProbeAttenuationConstantsCB[r16.w].data[3].xyz, r13.yzw);
    r19.z = saturate(refProbeAttenuationConstantsCB[r16.w].data[3].w + r19.z);
    r17.w = r19.z * r17.w;
    r19.z = dot(refProbeAttenuationConstantsCB[r16.w].data[4].xyz, r13.yzw);
    r19.z = saturate(refProbeAttenuationConstantsCB[r16.w].data[4].w + r19.z);
    r17.w = r19.z * r17.w;
    r19.z = dot(refProbeAttenuationConstantsCB[r16.w].data[5].xyz, r13.yzw);
    r16.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[5].w + r19.z);
    r30.x = r17.w * r16.w;
    r16.w = (int)r18.w & 1;
    r30.yz = float2(0,1);
    r19.zw = r16.ww ? r30.xy : r30.zx;
    r30.x = 1;
    r16.w = r18.w;
    r31.xy = r19.zw;
    r17.w = 1;
    while (true) {
      r20.w = cmp((int)r17.w >= (int)r15.w);
      if (r20.w != 0) break;
      r20.w = (int)r9.w + (int)r17.w;
      r20.w = (int)r20.w * 6;
      r26.y = dot(refProbeAttenuationConstantsCB[r20.w].data[0].xyz, r13.yzw);
      r26.y = saturate(refProbeAttenuationConstantsCB[r20.w].data[0].w + r26.y);
      r26.y = r31.x * r26.y;
      r26.w = dot(refProbeAttenuationConstantsCB[r20.w].data[1].xyz, r13.yzw);
      r26.w = saturate(refProbeAttenuationConstantsCB[r20.w].data[1].w + r26.w);
      r26.y = r26.y * r26.w;
      r26.w = dot(refProbeAttenuationConstantsCB[r20.w].data[2].xyz, r13.yzw);
      r26.w = saturate(refProbeAttenuationConstantsCB[r20.w].data[2].w + r26.w);
      r26.y = r26.y * r26.w;
      r26.w = dot(refProbeAttenuationConstantsCB[r20.w].data[3].xyz, r13.yzw);
      r26.w = saturate(refProbeAttenuationConstantsCB[r20.w].data[3].w + r26.w);
      r26.y = r26.y * r26.w;
      r26.w = dot(refProbeAttenuationConstantsCB[r20.w].data[4].xyz, r13.yzw);
      r26.w = saturate(refProbeAttenuationConstantsCB[r20.w].data[4].w + r26.w);
      r26.y = r26.y * r26.w;
      r26.w = dot(refProbeAttenuationConstantsCB[r20.w].data[5].xyz, r13.yzw);
      r20.w = saturate(refProbeAttenuationConstantsCB[r20.w].data[5].w + r26.w);
      r31.x = r26.y * r20.w;
      r26.w = (uint)r16.w >> 2;
      if (1 == 0) r27.w = 0; else if (1+2 < 32) {       r27.w = (uint)r16.w << (32-(1 + 2)); r27.w = (uint)r27.w >> (32-1);      } else r27.w = (uint)r16.w >> 2;
      r28.w = (int)r26.w & 2;
      r29.w = max(r31.y, r31.x);
      r20.w = -r26.y * r20.w + 1;
      r20.w = r31.y * r20.w;
      r30.y = r28.w ? r20.w : r29.w;
      r31.xy = r27.ww ? r31.xy : r30.xy;
      r17.w = (int)r17.w + 1;
      r16.w = r26.w;
    }
    r31.y = saturate(r31.y);
    r30.w = r31.y * r19.x;
    r9.w = cmp(0 < r30.w);
    if (r9.w != 0) {
      if (r2.w != 0) {
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r9.w, cb2[52].x, l(880), u2.xxxx
      r9.w = samp0[]..swiz;
        r9.w = (int)r9.w | 32;
        GBufferDiffuseColor[viewID].880 = u2.x;
        GBufferDiffuseColor[viewID].896 = u2.x;
      }
      r9.w = r30.w * r19.y;
      r15.w = dot(r14.xyz, r20.xyz);
      r16.w = dot(r13.yzw, r20.xyz);
      r16.w = r16.w + -r21.w;
      r17.w = cmp(r16.w >= 0);
      r16.w = max(abs(r16.w), r7.w);
      r16.w = r17.w ? r16.w : -r16.w;
      r15.w = max(1.00000001e-07, -r15.w);
      r15.w = r16.w / r15.w;
      r15.w = min(131072, abs(r15.w));
      r16.w = dot(r14.xyz, r21.xyz);
      r17.w = dot(r13.yzw, r21.xyz);
      r17.w = r17.w + -r22.w;
      r18.w = cmp(r17.w >= 0);
      r17.w = max(abs(r17.w), r7.w);
      r17.w = r18.w ? r17.w : -r17.w;
      r16.w = max(1.00000001e-07, -r16.w);
      r16.w = r17.w / r16.w;
      r15.w = min(abs(r16.w), r15.w);
      r16.w = dot(r14.xyz, r22.xyz);
      r17.w = dot(r13.yzw, r22.xyz);
      r17.w = r17.w + -r23.w;
      r18.w = cmp(r17.w >= 0);
      r17.w = max(abs(r17.w), r7.w);
      r17.w = r18.w ? r17.w : -r17.w;
      r16.w = max(1.00000001e-07, -r16.w);
      r16.w = r17.w / r16.w;
      r15.w = min(abs(r16.w), r15.w);
      r16.w = dot(r14.xyz, r23.xyz);
      r17.w = dot(r13.yzw, r23.xyz);
      r17.w = r17.w + -r24.w;
      r18.w = cmp(r17.w >= 0);
      r17.w = max(abs(r17.w), r7.w);
      r17.w = r18.w ? r17.w : -r17.w;
      r16.w = max(1.00000001e-07, -r16.w);
      r16.w = r17.w / r16.w;
      r15.w = min(abs(r16.w), r15.w);
      r16.w = dot(r14.xyz, r24.xyz);
      r17.w = dot(r13.yzw, r24.xyz);
      r17.w = r17.w + -r25.w;
      r18.w = cmp(r17.w >= 0);
      r17.w = max(abs(r17.w), r7.w);
      r17.w = r18.w ? r17.w : -r17.w;
      r16.w = max(1.00000001e-07, -r16.w);
      r16.w = r17.w / r16.w;
      r15.w = min(abs(r16.w), r15.w);
      r16.w = dot(r14.xyz, r25.xyz);
      r17.w = dot(r13.yzw, r25.xyz);
      r17.w = r17.w + -r26.x;
      r18.w = cmp(r17.w >= 0);
      r17.w = max(abs(r17.w), r7.w);
      r17.w = r18.w ? r17.w : -r17.w;
      r16.w = max(1.00000001e-07, -r16.w);
      r16.w = r17.w / r16.w;
      r15.w = min(abs(r16.w), r15.w);
      r18.xyz = r18.xyz + r13.yzw;
      r18.xyz = r14.xyz * r15.www + r18.xyz;
      r16.w = dot(r18.xyz, r18.xyz);
      r16.w = sqrt(r16.w);
      r15.w = r15.w / r16.w;
      r15.w = r15.w + r15.w;
      r15.w = sqrt(r15.w);
      r15.w = r4.z * 5 + r15.w;
      r15.w = -0.844799995 + r15.w;
      r19.x = dot(r18.xyz, r29.xyz);
      r19.y = dot(r18.xyz, r15.xyz);
      r19.z = dot(r18.xyz, r27.xyz);
      if (9 == 0) r16.w = 0; else if (9+16 < 32) {       r16.w = (uint)r26.z << (32-(9 + 16)); r16.w = (uint)r16.w >> (32-9);      } else r16.w = (uint)r26.z >> 16;
      r19.w = (uint)r16.w;
      r18.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r19.xyzw, r15.w).xyz;
      r20.xyz = (int3)r18.xyz & int3(-2147483648,-2147483648,-2147483648);
      r20.xyz = cmp((int3)r20.xyz == int3(2139095040,2139095040,2139095040));
      r15.w = (int)r20.y | (int)r20.x;
      r15.w = (int)r20.z | (int)r15.w;
      r18.xyz = r15.www ? float3(1,1,0) : r18.xyz;
      r20.x = dot(r13.yzw, r29.xyz);
      r20.y = dot(r13.yzw, r15.xyz);
      r20.z = dot(r13.yzw, r27.xyz);
      r13.yzw = saturate(r20.xyz * r16.xyz + float3(0.5,0.5,0.5));
      r13.yzw = r13.yzw * r17.xyz + r28.xyz;
      r19.x = dot(r12.xyz, r29.xyz);
      r19.y = dot(r12.xyz, r15.xyz);
      r19.z = dot(r12.xyz, r27.xyz);
      r15.xyz = cmp(float3(0,0,0) < r19.xyz);
      r16.z = r15.x ? 0 : 0.5;
      r16.xy = float2(0,0);
      r16.xyz = r16.xyz + r13.yzw;
      r16.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r16.xyz, 0).xyz;
      r17.xyz = r19.xyz * r19.xyz;
      r17.xyz = r17.xyz * r9.www;
      r20.z = r15.y ? 0 : 0.5;
      r20.xy = float2(0,0);
      r15.xyw = r20.xyz + r13.yzw;
      r15.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r15.xyw, 0).xyz;
      r15.xyw = r15.xyw * r17.yyy;
      r15.xyw = r16.xyz * r17.xxx + r15.xyw;
      r16.z = r15.z ? 0 : 0.5;
      r16.xy = float2(0,0);
      r13.yzw = r16.xyz + r13.yzw;
      r13.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r13.yzw, 0).xyz;
      r13.yzw = r13.yzw * r17.zzz + r15.xyw;
      r15.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r19.xyzw, 6).xyz;
      r16.xyz = (int3)r15.xyz & int3(-2147483648,-2147483648,-2147483648);
      r16.xyz = cmp((int3)r16.xyz == int3(2139095040,2139095040,2139095040));
      r15.w = (int)r16.y | (int)r16.x;
      r15.w = (int)r16.z | (int)r15.w;
      r15.xyz = r15.www ? float3(1,1,0) : r15.xyz;
      r13.yzw = r15.xyz * r13.yzw;
      r13.y = dot(r13.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r13.z = r13.y * r8.w;
      r15.xyz = r18.xyz * r9.www;
      r9.w = dot(r15.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r9.w = r8.w * r13.y + r9.w;
      r9.w = r13.z / r9.w;
      r30.xyz = r15.xyz * r9.www;
      r9.w = 257;
    } else {
      r30.xyzw = float4(0,0,0,0);
      r9.w = 1;
    }
    r13.y = -1;
  } else {
    r30.xyzw = float4(0,0,0,0);
    r9.w = 0;
  }
  r10.w = (int)r10.w & (int)r13.y;
  if (r10.w == 0) {
    r10.w = numRefProbes + -numOverrideProbes;
    r13.y = (uint)renderTargetSize.x;
    r13.y = (int)r13.y + 7;
    r13.y = (uint)r13.y >> 3;
    r13.y = mad((int)r0.z, (int)r13.y, (int)r0.y);
    bitmask.y = ((~(-1 << 27)) << 5) & 0xffffffff;  r13.y = (((uint)r13.y << 5) & bitmask.y) | ((uint)16 & ~bitmask.y);
    r13.z = (int)r10.w & -32;
    r13.w = (int)r10.w + (int)-r13.z;
    r15.x = numRefProbes & -32;
    r15.y = (int)-r15.x + numRefProbes;
    r16.x = 16;
    r17.yz = float2(0,1);
    r18.xy = float2(0,0);
    r19.xz = float2(1,1);
    r20.xy = float2(0,0);
    r21.xy = float2(0,0);
    r22.xyz = float3(0,0,0);
    r22.w = r30.x;
    r23.xyz = r30.yzw;
    r23.w = r9.w;
    r15.z = r13.z;
    while (true) {
      r15.w = cmp((uint)r15.z >= numRefProbes);
      if (r15.w != 0) break;
      r15.w = (uint)r15.z >> 5;
      r15.w = (int)r13.y + (int)r15.w;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.w, r15.w, l(0), t26.xxxx
    r15.w = samp0[]..swiz;
      r17.w = cmp((int)r13.z == (int)r15.z);
      bitmask.w = ((~(-1 << r13.w)) << 0) & 0xffffffff;  r18.w = (((uint)0 << 0) & bitmask.w) | ((uint)r15.w & ~bitmask.w);
      r15.w = r17.w ? r18.w : r15.w;
      r17.w = cmp((int)r15.x == (int)r15.z);
      if (r15.y == 0) r18.w = 0; else if (r15.y+0 < 32) {       r18.w = (uint)r15.w << (32-(r15.y + 0)); r18.w = (uint)r18.w >> (32-r15.y);      } else r18.w = (uint)r15.w >> 0;
      r15.w = r17.w ? r18.w : r15.w;
      r24.xyzw = r22.xyzw;
      r25.xyzw = r23.xyzw;
      r17.w = r15.w;
      while (true) {
        if (r17.w == 0) break;
        r18.w = firstbitlow((uint)r17.w);
        r20.w = 1 << (int)r18.w;
        r20.w = ~(int)r20.w;
        r17.w = (int)r17.w & (int)r20.w;
        r18.w = (int)r15.z + (int)r18.w;
        r18.w = (int)r18.w * 14;
        r20.w = (int)r25.w & 255;
        r21.w = cmp((uint)r20.w < 32);
        r21.w = r21.w ? r2.w : 0;
        if (r21.w != 0) {
          r20.w = mad((int)r20.w, 20, 880);
          r16.yzw = refProbeConstantsCB[r18.w].data[0].xyz + eyeOffset.xyz;
          GBufferDiffuseColor[viewID].r20.w = u2.xyzw;
        }
        r26.w = (int)r25.w + 1;
        r16.yzw = -refProbeConstantsCB[r18.w].data[0].xyz + r11.xyz;
        r20.w = 0x0000ffff & (int)refProbeConstantsCB[r18.w].data[7].z;
        if (6 == 0) r21.w = 0; else if (6+25 < 32) {         r21.w = (uint)refProbeConstantsCB[r18.w].data[7].z << (32-(6 + 25)); r21.w = (uint)r21.w >> (32-6);        } else r21.w = (uint)refProbeConstantsCB[r18.w].data[7].z >> 25;
        r27.x = (int)r20.w * 6;
        r27.y = dot(refProbeAttenuationConstantsCB[r27.x].data[0].xyz, r16.yzw);
        r27.y = saturate(refProbeAttenuationConstantsCB[r27.x].data[0].w + r27.y);
        r27.z = dot(refProbeAttenuationConstantsCB[r27.x].data[1].xyz, r16.yzw);
        r27.z = saturate(refProbeAttenuationConstantsCB[r27.x].data[1].w + r27.z);
        r27.y = r27.y * r27.z;
        r27.z = dot(refProbeAttenuationConstantsCB[r27.x].data[2].xyz, r16.yzw);
        r27.z = saturate(refProbeAttenuationConstantsCB[r27.x].data[2].w + r27.z);
        r27.y = r27.y * r27.z;
        r27.z = dot(refProbeAttenuationConstantsCB[r27.x].data[3].xyz, r16.yzw);
        r27.z = saturate(refProbeAttenuationConstantsCB[r27.x].data[3].w + r27.z);
        r27.y = r27.y * r27.z;
        r27.z = dot(refProbeAttenuationConstantsCB[r27.x].data[4].xyz, r16.yzw);
        r27.z = saturate(refProbeAttenuationConstantsCB[r27.x].data[4].w + r27.z);
        r27.y = r27.y * r27.z;
        r27.z = dot(refProbeAttenuationConstantsCB[r27.x].data[5].xyz, r16.yzw);
        r27.x = saturate(refProbeAttenuationConstantsCB[r27.x].data[5].w + r27.z);
        r17.x = r27.y * r27.x;
        r27.x = 1 & (int)refProbeConstantsCB[r18.w].data[6].x;
        r27.xy = r27.xx ? r17.xy : r17.zx;
        r17.x = refProbeConstantsCB[r18.w].data[6].x;
        r28.xy = r27.xy;
        r27.z = 1;
        while (true) {
          r27.w = cmp((int)r27.z >= (int)r21.w);
          if (r27.w != 0) break;
          r27.w = (int)r20.w + (int)r27.z;
          r27.w = (int)r27.w * 6;
          r28.z = dot(refProbeAttenuationConstantsCB[r27.w].data[0].xyz, r16.yzw);
          r28.z = saturate(refProbeAttenuationConstantsCB[r27.w].data[0].w + r28.z);
          r28.z = r28.x * r28.z;
          r28.w = dot(refProbeAttenuationConstantsCB[r27.w].data[1].xyz, r16.yzw);
          r28.w = saturate(refProbeAttenuationConstantsCB[r27.w].data[1].w + r28.w);
          r28.z = r28.z * r28.w;
          r28.w = dot(refProbeAttenuationConstantsCB[r27.w].data[2].xyz, r16.yzw);
          r28.w = saturate(refProbeAttenuationConstantsCB[r27.w].data[2].w + r28.w);
          r28.z = r28.z * r28.w;
          r28.w = dot(refProbeAttenuationConstantsCB[r27.w].data[3].xyz, r16.yzw);
          r28.w = saturate(refProbeAttenuationConstantsCB[r27.w].data[3].w + r28.w);
          r28.z = r28.z * r28.w;
          r28.w = dot(refProbeAttenuationConstantsCB[r27.w].data[4].xyz, r16.yzw);
          r28.w = saturate(refProbeAttenuationConstantsCB[r27.w].data[4].w + r28.w);
          r28.z = r28.z * r28.w;
          r28.w = dot(refProbeAttenuationConstantsCB[r27.w].data[5].xyz, r16.yzw);
          r27.w = saturate(refProbeAttenuationConstantsCB[r27.w].data[5].w + r28.w);
          r28.x = r28.z * r27.w;
          r28.w = (uint)r17.x >> 2;
          if (1 == 0) r29.x = 0; else if (1+2 < 32) {           r29.x = (uint)r17.x << (32-(1 + 2)); r29.x = (uint)r29.x >> (32-1);          } else r29.x = (uint)r17.x >> 2;
          r29.y = (int)r28.w & 2;
          r29.z = max(r28.y, r28.x);
          r27.w = -r28.z * r27.w + 1;
          r27.w = r28.y * r27.w;
          r19.y = r29.y ? r27.w : r29.z;
          r28.xy = r29.xx ? r28.xy : r19.xy;
          r27.z = (int)r27.z + 1;
          r17.x = r28.w;
        }
        r28.y = saturate(r28.y);
        r17.x = refProbeConstantsCB[r18.w].data[6].y * r28.y;
        r19.y = cmp(0 < r17.x);
        if (r19.y != 0) {
          r19.y = (int)r26.w & 255;
          r20.w = (int)r19.y + -1;
          r20.w = cmp((uint)r20.w < 32);
          r20.w = r20.w ? r2.w : 0;
          if (r20.w != 0) {
            r27.xy = mad((int2)r19.yy, int2(20,20), int2(860,876));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r19.y, cb2[52].x, r27.x, u2.xxxx
          r19.y = samp0[]..swiz;
            r19.y = (int)r19.y | 32;
            GBufferDiffuseColor[viewID].r27.x = u2.x;
            GBufferDiffuseColor[viewID].r27.y = u2.x;
          }
          r25.w = (int)r25.w + 257;
          r25.z = r28.y * refProbeConstantsCB[r18.w].data[6].y + r25.z;
          r17.x = refProbeConstantsCB[r18.w].data[7].y * r17.x;
          r27.x = refProbeConstantsCB[r18.w].data[7].w;
          r27.yz = refProbeConstantsCB[r18.w].data[8].xy;
          r19.y = dot(r14.xyz, r27.xyz);
          r20.w = dot(r16.yzw, r27.xyz);
          r20.w = -refProbeConstantsCB[r18.w].data[8].z + r20.w;
          r21.w = cmp(r20.w >= 0);
          r20.w = max(abs(r20.w), r7.w);
          r20.w = r21.w ? r20.w : -r20.w;
          r19.y = max(1.00000001e-07, -r19.y);
          r19.y = r20.w / r19.y;
          r19.y = min(131072, abs(r19.y));
          r27.x = refProbeConstantsCB[r18.w].data[8].w;
          r27.yz = refProbeConstantsCB[r18.w].data[9].xy;
          r20.w = dot(r14.xyz, r27.xyz);
          r21.w = dot(r16.yzw, r27.xyz);
          r21.w = -refProbeConstantsCB[r18.w].data[9].z + r21.w;
          r27.x = cmp(r21.w >= 0);
          r21.w = max(abs(r21.w), r7.w);
          r21.w = r27.x ? r21.w : -r21.w;
          r20.w = max(1.00000001e-07, -r20.w);
          r20.w = r21.w / r20.w;
          r19.y = min(abs(r20.w), r19.y);
          r27.x = refProbeConstantsCB[r18.w].data[9].w;
          r27.yz = refProbeConstantsCB[r18.w].data[10].xy;
          r20.w = dot(r14.xyz, r27.xyz);
          r21.w = dot(r16.yzw, r27.xyz);
          r21.w = -refProbeConstantsCB[r18.w].data[10].z + r21.w;
          r27.x = cmp(r21.w >= 0);
          r21.w = max(abs(r21.w), r7.w);
          r21.w = r27.x ? r21.w : -r21.w;
          r20.w = max(1.00000001e-07, -r20.w);
          r20.w = r21.w / r20.w;
          r19.y = min(abs(r20.w), r19.y);
          r27.x = refProbeConstantsCB[r18.w].data[10].w;
          r27.yz = refProbeConstantsCB[r18.w].data[11].xy;
          r20.w = dot(r14.xyz, r27.xyz);
          r21.w = dot(r16.yzw, r27.xyz);
          r21.w = -refProbeConstantsCB[r18.w].data[11].z + r21.w;
          r27.x = cmp(r21.w >= 0);
          r21.w = max(abs(r21.w), r7.w);
          r21.w = r27.x ? r21.w : -r21.w;
          r20.w = max(1.00000001e-07, -r20.w);
          r20.w = r21.w / r20.w;
          r19.y = min(abs(r20.w), r19.y);
          r27.x = refProbeConstantsCB[r18.w].data[11].w;
          r27.yz = refProbeConstantsCB[r18.w].data[12].xy;
          r20.w = dot(r14.xyz, r27.xyz);
          r21.w = dot(r16.yzw, r27.xyz);
          r21.w = -refProbeConstantsCB[r18.w].data[12].z + r21.w;
          r27.x = cmp(r21.w >= 0);
          r21.w = max(abs(r21.w), r7.w);
          r21.w = r27.x ? r21.w : -r21.w;
          r20.w = max(1.00000001e-07, -r20.w);
          r20.w = r21.w / r20.w;
          r19.y = min(abs(r20.w), r19.y);
          r27.x = refProbeConstantsCB[r18.w].data[12].w;
          r27.yz = refProbeConstantsCB[r18.w].data[13].xy;
          r20.w = dot(r14.xyz, r27.xyz);
          r21.w = dot(r16.yzw, r27.xyz);
          r21.w = -refProbeConstantsCB[r18.w].data[13].z + r21.w;
          r27.x = cmp(r21.w >= 0);
          r21.w = max(abs(r21.w), r7.w);
          r21.w = r27.x ? r21.w : -r21.w;
          r20.w = max(1.00000001e-07, -r20.w);
          r20.w = r21.w / r20.w;
          r19.y = min(abs(r20.w), r19.y);
          r27.x = refProbeConstantsCB[r18.w].data[3].w + r16.y;
          r27.yz = refProbeConstantsCB[r18.w].data[4].xy + r16.zw;
          r27.xyz = r14.xyz * r19.yyy + r27.xyz;
          r20.w = dot(r27.xyz, r27.xyz);
          r20.w = sqrt(r20.w);
          r19.y = r19.y / r20.w;
          r19.y = r19.y + r19.y;
          r19.y = sqrt(r19.y);
          r19.y = r4.z * 5 + r19.y;
          r19.y = -0.844799995 + r19.y;
          r29.x = refProbeConstantsCB[r18.w].data[0].w;
          r29.y = refProbeConstantsCB[r18.w].data[1].z;
          r29.z = refProbeConstantsCB[r18.w].data[2].y;
          r31.x = dot(r27.xyz, r29.xyz);
          r32.xy = refProbeConstantsCB[r18.w].data[1].xw;
          r32.z = refProbeConstantsCB[r18.w].data[2].z;
          r31.y = dot(r27.xyz, r32.xyz);
          r33.x = refProbeConstantsCB[r18.w].data[1].y;
          r33.yz = refProbeConstantsCB[r18.w].data[2].xw;
          r31.z = dot(r27.xyz, r33.xyz);
          if (9 == 0) r20.w = 0; else if (9+16 < 32) {           r20.w = (uint)refProbeConstantsCB[r18.w].data[7].z << (32-(9 + 16)); r20.w = (uint)r20.w >> (32-9);          } else r20.w = (uint)refProbeConstantsCB[r18.w].data[7].z >> 16;
          r31.w = (uint)r20.w;
          r27.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r31.xyzw, r19.y).xyz;
          r28.xzw = (int3)r27.xyz & int3(-2147483648,-2147483648,-2147483648);
          r28.xzw = cmp((int3)r28.xzw == int3(2139095040,2139095040,2139095040));
          r19.y = (int)r28.z | (int)r28.x;
          r19.y = (int)r28.w | (int)r19.y;
          r27.xyz = r19.yyy ? float3(1,1,0) : r27.xyz;
          r34.x = dot(r16.yzw, r29.xyz);
          r34.y = dot(r16.yzw, r32.xyz);
          r34.z = dot(r16.yzw, r33.xyz);
          r16.yzw = saturate(r34.xyz * refProbeConstantsCB[r18.w].data[3].xyz + float3(0.5,0.5,0.5));
          r34.xy = refProbeConstantsCB[r18.w].data[4].zw * r16.yz;
          r34.z = refProbeConstantsCB[r18.w].data[5].x * r16.w;
          r16.yzw = refProbeConstantsCB[r18.w].data[5].yzw + r34.xyz;
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
          r16.y = r18.z * r8.w;
          r27.xyz = r27.xyz * r17.xxx;
          r16.z = dot(r27.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r16.z = r8.w * r18.z + r16.z;
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
      r15.z = (int)r15.z + 32;
    }
    r15.x = 16;
    r16.yz = float2(0,1);
    r17.xy = float2(0,0);
    r18.xy = float2(0,0);
    r20.xy = float2(0,0);
    r21.xyz = r22.xyz;
    r24.x = r22.w;
    r24.yz = r23.xy;
    r25.xyz = r23.zwz;
    r16.w = 0;
    while (true) {
      r17.w = cmp((uint)r16.w >= (uint)r10.w);
      if (r17.w != 0) break;
      r17.w = (uint)r16.w >> 5;
      r17.w = (int)r13.y + (int)r17.w;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.w, l(0), t26.xxxx
    r17.w = samp0[]..swiz;
      r18.w = cmp((int)r13.z == (int)r16.w);
      if (r13.w == 0) r19.x = 0; else if (r13.w+0 < 32) {       r19.x = (uint)r17.w << (32-(r13.w + 0)); r19.x = (uint)r19.x >> (32-r13.w);      } else r19.x = (uint)r17.w >> 0;
      r17.w = r18.w ? r19.x : r17.w;
      r26.xyz = r21.xyz;
      r27.xyz = r24.xyz;
      r28.xyz = r25.xzy;
      r18.w = r17.w;
      while (true) {
        if (r18.w == 0) break;
        r19.x = firstbitlow((uint)r18.w);
        r19.y = 1 << (int)r19.x;
        r19.y = ~(int)r19.y;
        r18.w = (int)r18.w & (int)r19.y;
        r19.x = (int)r16.w + (int)r19.x;
        r19.x = (int)r19.x * 14;
        r19.y = (int)r28.z & 255;
        r20.w = cmp((uint)r19.y < 32);
        r20.w = r20.w ? r2.w : 0;
        if (r20.w != 0) {
          r19.y = mad((int)r19.y, 20, 880);
          r15.yzw = refProbeConstantsCB[r19.x].data[0].xyz + eyeOffset.xyz;
          GBufferDiffuseColor[viewID].r19.y = u2.xyzw;
        }
        r29.y = (int)r28.z + 1;
        r15.yzw = -refProbeConstantsCB[r19.x].data[0].xyz + r11.xyz;
        r19.y = 0x0000ffff & (int)refProbeConstantsCB[r19.x].data[7].z;
        if (6 == 0) r20.w = 0; else if (6+25 < 32) {         r20.w = (uint)refProbeConstantsCB[r19.x].data[7].z << (32-(6 + 25)); r20.w = (uint)r20.w >> (32-6);        } else r20.w = (uint)refProbeConstantsCB[r19.x].data[7].z >> 25;
        r21.w = (int)r19.y * 6;
        r24.w = dot(refProbeAttenuationConstantsCB[r21.w].data[0].xyz, r15.yzw);
        r24.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[0].w + r24.w);
        r25.w = dot(refProbeAttenuationConstantsCB[r21.w].data[1].xyz, r15.yzw);
        r25.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[1].w + r25.w);
        r24.w = r25.w * r24.w;
        r25.w = dot(refProbeAttenuationConstantsCB[r21.w].data[2].xyz, r15.yzw);
        r25.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[2].w + r25.w);
        r24.w = r25.w * r24.w;
        r25.w = dot(refProbeAttenuationConstantsCB[r21.w].data[3].xyz, r15.yzw);
        r25.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[3].w + r25.w);
        r24.w = r25.w * r24.w;
        r25.w = dot(refProbeAttenuationConstantsCB[r21.w].data[4].xyz, r15.yzw);
        r25.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[4].w + r25.w);
        r24.w = r25.w * r24.w;
        r25.w = dot(refProbeAttenuationConstantsCB[r21.w].data[5].xyz, r15.yzw);
        r21.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[5].w + r25.w);
        r16.x = r24.w * r21.w;
        r21.w = 1 & (int)refProbeConstantsCB[r19.x].data[6].x;
        r29.zw = r21.ww ? r16.xy : r16.zx;
        r16.x = refProbeConstantsCB[r19.x].data[6].x;
        r31.xy = r29.zw;
        r21.w = 1;
        while (true) {
          r24.w = cmp((int)r21.w >= (int)r20.w);
          if (r24.w != 0) break;
          r24.w = (int)r19.y + (int)r21.w;
          r24.w = (int)r24.w * 6;
          r25.w = dot(refProbeAttenuationConstantsCB[r24.w].data[0].xyz, r15.yzw);
          r25.w = saturate(refProbeAttenuationConstantsCB[r24.w].data[0].w + r25.w);
          r25.w = r31.x * r25.w;
          r26.w = dot(refProbeAttenuationConstantsCB[r24.w].data[1].xyz, r15.yzw);
          r26.w = saturate(refProbeAttenuationConstantsCB[r24.w].data[1].w + r26.w);
          r25.w = r26.w * r25.w;
          r26.w = dot(refProbeAttenuationConstantsCB[r24.w].data[2].xyz, r15.yzw);
          r26.w = saturate(refProbeAttenuationConstantsCB[r24.w].data[2].w + r26.w);
          r25.w = r26.w * r25.w;
          r26.w = dot(refProbeAttenuationConstantsCB[r24.w].data[3].xyz, r15.yzw);
          r26.w = saturate(refProbeAttenuationConstantsCB[r24.w].data[3].w + r26.w);
          r25.w = r26.w * r25.w;
          r26.w = dot(refProbeAttenuationConstantsCB[r24.w].data[4].xyz, r15.yzw);
          r26.w = saturate(refProbeAttenuationConstantsCB[r24.w].data[4].w + r26.w);
          r25.w = r26.w * r25.w;
          r26.w = dot(refProbeAttenuationConstantsCB[r24.w].data[5].xyz, r15.yzw);
          r24.w = saturate(refProbeAttenuationConstantsCB[r24.w].data[5].w + r26.w);
          r31.x = r25.w * r24.w;
          r26.w = (uint)r16.x >> 2;
          if (1 == 0) r27.w = 0; else if (1+2 < 32) {           r27.w = (uint)r16.x << (32-(1 + 2)); r27.w = (uint)r27.w >> (32-1);          } else r27.w = (uint)r16.x >> 2;
          r28.w = (int)r26.w & 2;
          r30.w = max(r31.y, r31.x);
          r24.w = -r25.w * r24.w + 1;
          r24.w = r31.y * r24.w;
          r19.w = r28.w ? r24.w : r30.w;
          r31.xy = r27.ww ? r31.xy : r19.zw;
          r21.w = (int)r21.w + 1;
          r16.x = r26.w;
        }
        r16.x = saturate(r31.y + -r28.y);
        r19.y = refProbeConstantsCB[r19.x].data[6].y * r16.x;
        r19.w = cmp(0 < r19.y);
        if (r19.w != 0) {
          r19.w = (int)r29.y & 255;
          r20.w = (int)r19.w + -1;
          r20.w = cmp((uint)r20.w < 32);
          r20.w = r20.w ? r2.w : 0;
          if (r20.w != 0) {
            r29.zw = mad((int2)r19.ww, int2(20,20), int2(860,876));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r19.w, cb2[52].x, r29.z, u2.xxxx
          r19.w = samp0[]..swiz;
            r19.w = (int)r19.w | 32;
            GBufferDiffuseColor[viewID].r29.z = u2.x;
            GBufferDiffuseColor[viewID].r29.w = u2.x;
          }
          r28.z = (int)r28.z + 257;
          r28.x = r16.x * refProbeConstantsCB[r19.x].data[6].y + r28.x;
          r16.x = refProbeConstantsCB[r19.x].data[7].y * r19.y;
          r32.x = refProbeConstantsCB[r19.x].data[7].w;
          r32.yz = refProbeConstantsCB[r19.x].data[8].xy;
          r19.y = dot(r14.xyz, r32.xyz);
          r19.w = dot(r15.yzw, r32.xyz);
          r19.w = -refProbeConstantsCB[r19.x].data[8].z + r19.w;
          r20.w = cmp(r19.w >= 0);
          r19.w = max(abs(r19.w), r7.w);
          r19.w = r20.w ? r19.w : -r19.w;
          r19.y = max(1.00000001e-07, -r19.y);
          r19.y = r19.w / r19.y;
          r19.y = min(131072, abs(r19.y));
          r32.x = refProbeConstantsCB[r19.x].data[8].w;
          r32.yz = refProbeConstantsCB[r19.x].data[9].xy;
          r19.w = dot(r14.xyz, r32.xyz);
          r20.w = dot(r15.yzw, r32.xyz);
          r20.w = -refProbeConstantsCB[r19.x].data[9].z + r20.w;
          r21.w = cmp(r20.w >= 0);
          r20.w = max(abs(r20.w), r7.w);
          r20.w = r21.w ? r20.w : -r20.w;
          r19.w = max(1.00000001e-07, -r19.w);
          r19.w = r20.w / r19.w;
          r19.y = min(r19.y, abs(r19.w));
          r32.x = refProbeConstantsCB[r19.x].data[9].w;
          r32.yz = refProbeConstantsCB[r19.x].data[10].xy;
          r19.w = dot(r14.xyz, r32.xyz);
          r20.w = dot(r15.yzw, r32.xyz);
          r20.w = -refProbeConstantsCB[r19.x].data[10].z + r20.w;
          r21.w = cmp(r20.w >= 0);
          r20.w = max(abs(r20.w), r7.w);
          r20.w = r21.w ? r20.w : -r20.w;
          r19.w = max(1.00000001e-07, -r19.w);
          r19.w = r20.w / r19.w;
          r19.y = min(r19.y, abs(r19.w));
          r32.x = refProbeConstantsCB[r19.x].data[10].w;
          r32.yz = refProbeConstantsCB[r19.x].data[11].xy;
          r19.w = dot(r14.xyz, r32.xyz);
          r20.w = dot(r15.yzw, r32.xyz);
          r20.w = -refProbeConstantsCB[r19.x].data[11].z + r20.w;
          r21.w = cmp(r20.w >= 0);
          r20.w = max(abs(r20.w), r7.w);
          r20.w = r21.w ? r20.w : -r20.w;
          r19.w = max(1.00000001e-07, -r19.w);
          r19.w = r20.w / r19.w;
          r19.y = min(r19.y, abs(r19.w));
          r32.x = refProbeConstantsCB[r19.x].data[11].w;
          r32.yz = refProbeConstantsCB[r19.x].data[12].xy;
          r19.w = dot(r14.xyz, r32.xyz);
          r20.w = dot(r15.yzw, r32.xyz);
          r20.w = -refProbeConstantsCB[r19.x].data[12].z + r20.w;
          r21.w = cmp(r20.w >= 0);
          r20.w = max(abs(r20.w), r7.w);
          r20.w = r21.w ? r20.w : -r20.w;
          r19.w = max(1.00000001e-07, -r19.w);
          r19.w = r20.w / r19.w;
          r19.y = min(r19.y, abs(r19.w));
          r32.x = refProbeConstantsCB[r19.x].data[12].w;
          r32.yz = refProbeConstantsCB[r19.x].data[13].xy;
          r19.w = dot(r14.xyz, r32.xyz);
          r20.w = dot(r15.yzw, r32.xyz);
          r20.w = -refProbeConstantsCB[r19.x].data[13].z + r20.w;
          r21.w = cmp(r20.w >= 0);
          r20.w = max(abs(r20.w), r7.w);
          r20.w = r21.w ? r20.w : -r20.w;
          r19.w = max(1.00000001e-07, -r19.w);
          r19.w = r20.w / r19.w;
          r19.y = min(r19.y, abs(r19.w));
          r32.x = refProbeConstantsCB[r19.x].data[3].w + r15.y;
          r32.yz = refProbeConstantsCB[r19.x].data[4].xy + r15.zw;
          r31.xzw = r14.xyz * r19.yyy + r32.xyz;
          r19.w = dot(r31.xzw, r31.xzw);
          r19.w = sqrt(r19.w);
          r19.y = r19.y / r19.w;
          r19.y = r19.y + r19.y;
          r19.y = sqrt(r19.y);
          r19.y = r4.z * 5 + r19.y;
          r19.y = -0.844799995 + r19.y;
          r32.x = refProbeConstantsCB[r19.x].data[0].w;
          r32.y = refProbeConstantsCB[r19.x].data[1].z;
          r32.z = refProbeConstantsCB[r19.x].data[2].y;
          r33.x = dot(r31.xzw, r32.xyz);
          r34.xy = refProbeConstantsCB[r19.x].data[1].xw;
          r34.z = refProbeConstantsCB[r19.x].data[2].z;
          r33.y = dot(r31.xzw, r34.xyz);
          r35.x = refProbeConstantsCB[r19.x].data[1].y;
          r35.yz = refProbeConstantsCB[r19.x].data[2].xw;
          r33.z = dot(r31.xzw, r35.xyz);
          if (9 == 0) r19.w = 0; else if (9+16 < 32) {           r19.w = (uint)refProbeConstantsCB[r19.x].data[7].z << (32-(9 + 16)); r19.w = (uint)r19.w >> (32-9);          } else r19.w = (uint)refProbeConstantsCB[r19.x].data[7].z >> 16;
          r33.w = (uint)r19.w;
          r31.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, r19.y).xyz;
          r36.xyz = (int3)r31.xzw & int3(-2147483648,-2147483648,-2147483648);
          r36.xyz = cmp((int3)r36.xyz == int3(2139095040,2139095040,2139095040));
          r19.y = (int)r36.y | (int)r36.x;
          r19.y = (int)r36.z | (int)r19.y;
          r31.xzw = r19.yyy ? float3(1,1,0) : r31.xzw;
          r36.x = dot(r15.yzw, r32.xyz);
          r36.y = dot(r15.yzw, r34.xyz);
          r36.z = dot(r15.yzw, r35.xyz);
          r15.yzw = saturate(r36.xyz * refProbeConstantsCB[r19.x].data[3].xyz + float3(0.5,0.5,0.5));
          r36.xy = refProbeConstantsCB[r19.x].data[4].zw * r15.yz;
          r36.z = refProbeConstantsCB[r19.x].data[5].x * r15.w;
          r15.yzw = refProbeConstantsCB[r19.x].data[5].yzw + r36.xyz;
          r33.x = dot(r12.xyz, r32.xyz);
          r33.y = dot(r12.xyz, r34.xyz);
          r33.z = dot(r12.xyz, r35.xyz);
          r19.xyw = cmp(float3(0,0,0) < r33.xyz);
          r17.z = r19.x ? 0 : 0.5;
          r32.xyz = r17.xyz + r15.yzw;
          r32.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r32.xyz, 0).xyz;
          r34.xyz = r33.xyz * r33.xyz;
          r34.xyz = r34.xyz * r16.xxx;
          r18.z = r19.y ? 0 : 0.5;
          r35.xyz = r18.xyz + r15.yzw;
          r35.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r35.xyz, 0).xyz;
          r35.xyz = r35.xyz * r34.yyy;
          r32.xyz = r32.xyz * r34.xxx + r35.xyz;
          r20.z = r19.w ? 0 : 0.5;
          r15.yzw = r20.xyz + r15.yzw;
          r15.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r15.yzw, 0).xyz;
          r15.yzw = r15.yzw * r34.zzz + r32.xyz;
          r19.xyw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, 6).xyz;
          r32.xyz = (int3)r19.xyw & int3(-2147483648,-2147483648,-2147483648);
          r32.xyz = cmp((int3)r32.xyz == int3(2139095040,2139095040,2139095040));
          r17.z = (int)r32.y | (int)r32.x;
          r17.z = (int)r32.z | (int)r17.z;
          r19.xyw = r17.zzz ? float3(1,1,0) : r19.xyw;
          r32.xyz = r19.xyw * r15.yzw;
          r17.z = dot(r32.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r26.xyz = r15.yzw * r19.xyw + r26.xyz;
          r15.y = r17.z * r8.w;
          r19.xyw = r31.xzw * r16.xxx;
          r15.z = dot(r19.xyw, float3(0.212599993,0.715200007,0.0722000003));
          r15.z = r8.w * r17.z + r15.z;
          r15.y = r15.y / r15.z;
          r27.xyz = r19.xyw * r15.yyy + r27.xyz;
        } else {
          r29.x = r28.x;
          r28.xz = r29.xy;
        }
      }
      r21.xyz = r26.xyz;
      r24.xyz = r27.xyz;
      r25.xy = r28.xz;
      r16.w = (int)r16.w + 32;
    }
    r4.z = cmp(r23.z >= 1);
    r7.w = (int)r23.w & 0x0000ff00;
    bitmask.w = ((~(-1 << 8)) << 0) & 0xffffffff;  r7.w = (((uint)r25.y << 0) & bitmask.w) | ((uint)r7.w & ~bitmask.w);
    r9.w = r4.z ? r7.w : r25.y;
    r4.z = max(1, r25.x);
    r4.z = rcp(r4.z);
    r25.x = saturate(r25.x);
    r13.yzw = r21.xyz * r4.zzz;
    r30.xyz = r24.xyz * r4.zzz;
    r7.w = cmp(r25.x < 0.99000001);
    if (r7.w != 0) {
      r9.w = (int)r9.w + 256;
      r7.w = 1 + -r25.x;
      r8.w = sunConstants.globalProbeExposure * r7.w;
      r15.xyz = -globalProbeConstants.data[0].xyz + r11.xyz;
      r16.x = globalProbeConstants.data[0].w * r15.x;
      r16.yz = globalProbeConstants.data[1].xy * r15.yz;
      r15.xyz = saturate(float3(0.5,0.5,0.5) + r16.xyz);
      r16.xy = globalProbeConstants.data[1].zw * r15.xy;
      r16.z = globalProbeConstants.data[2].x * r15.z;
      r15.xyz = globalProbeConstants.data[2].yzw + r16.xyz;
      r16.xyz = cmp(float3(0,0,0) < r12.xyz);
      r16.xyz = r16.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
      r16.w = 0;
      r17.xyz = r16.wwx + r15.xyz;
      r17.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r17.xyz, 0).xyz;
      r18.xyz = r12.xyz * r12.xyz;
      r18.xyz = r18.xyz * r8.www;
      r19.xyz = r16.wwy + r15.xyz;
      r19.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r19.xyz, 0).xyz;
      r19.xyz = r19.xyz * r18.yyy;
      r17.xyz = r17.xyz * r18.xxx + r19.xyz;
      r15.xyz = r16.wwz + r15.xyz;
      r15.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r15.xyz, 0).xyz;
      r15.xyz = r15.xyz * r18.zzz + r17.xyz;
      r12.w = 0;
      r16.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r12.xyzw, 6).xyz;
      r15.xyz = r16.xyz * r15.xyz;
      r8.w = dot(r15.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r13.yzw = r21.xyz * r4.zzz + r15.xyz;
      r14.w = 0;
      r15.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r14.xyzw, r6.w).xyz;
      r4.z = sunConstants.globalProbeExposure * r7.w + -r8.w;
      r4.z = r2.y * r4.z + r8.w;
      r30.xyz = r15.xyz * r4.zzz + r30.xyz;
    }
  } else {
    r13.yzw = float3(0,0,0);
  }
  r4.z = r2.x + r5.x;
  r4.z = log2(abs(r4.z));
  r4.z = r4.z * r2.z;
  r4.z = exp2(r4.z);
  r4.z = r4.z + r5.x;
  r4.z = saturate(-1 + r4.z);
  r15.xyz = r13.yzw * r5.xxx;
  r13.yz = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r13.yz = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r13.yz, 0).xy;
  r16.xyz = r30.xyz * r4.zzz;
  r17.xyz = r16.yzx * r13.yyy;
  r13.yzw = r16.xyz * r13.zzz;
  r2.y = sqrt(r2.z);
  r2.y = r2.y * 0.5 + 0.5;
  r2.y = r2.y * r2.y;
  r4.z = 0.5 * r2.y;
  r2.y = -r2.y * 0.5 + 1;
  r5.x = r2.x * r2.y + r4.z;
  r2.y = r5.x * r2.y;
  r4.z = r5.x * r4.z;
  if (r2.w != 0) {
    r16.x = 3;
    r16.yzw = eyeOffset.xyz;
    GBufferDiffuseColor[viewID].112 = u2.xyzw;
  }
  r5.x = cmp(0 < r4.y);
  if (r5.x != 0) {
    if (r2.w != 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r5.x, cb2[52].x, l(112), u2.xxxx
    r5.x = samp0[]..swiz;
      r5.x = (int)r5.x | 4;
      GBufferDiffuseColor[viewID].112 = u2.x;
      GBufferDiffuseColor[viewID].128 = u2.x;
    }
    r5.x = cmp(0 < r4.w);
    if (r5.x != 0) {
      r5.x = sunConstants.specScale * r1.w;
      r5.x = r5.x * r4.y;
      if (sunConstants.sunCookieIndex != 0) {
        r16.xyz = eyeOffset.xyz + r11.xyz;
        r16.w = 1;
        r6.w = dot(sunConstants.sunCookieTransform[0].xyzw, r16.xyzw);
        r7.w = dot(sunConstants.sunCookieTransform[1].xyzw, r16.xyzw);
        r16.x = frac(r6.w);
        r16.y = frac(r7.w);
        r6.w = -1 + (int14)sunConstants.sunCookieIndex;
        r16.z = (uint)r6.w;
        r16.xyz = gCookieArray.SampleLevel(samplerLinear_s, r16.xyz, 0).xyz;
        r16.xyz = float3(-1,-1,-1) + r16.xyz;
        r16.xyz = sunConstants.sunCookieIntensity * r16.xyz + float3(1,1,1);
        r16.xyz = sunConstants.color.xyz * r16.xyz;
      } else {
        r16.xyz = sunConstants.color.xyz;
      }
      r6.w = viewmodelSunShadowRaw >> 16;
      r7.w = cmp(0 < (uint)r6.w);
      r7.w = r7.w ? r1.z : 0;
      if (r7.w != 0) {
        r6.w = (int)r6.w + numLights;
        r6.w = mad((int)r6.w, 15, -15);
        r7.w = abs(r3.z) * -0.200000003 + 0.400000006;
        r18.xyz = r12.xyz * r7.www + r11.xyz;
        r19.xyz = lightConstantsCB[r6.w].data[4].yzw;
        r19.w = lightConstantsCB[r6.w].data[5].x;
        r18.w = 1;
        r19.x = dot(r19.xyzw, r18.xyzw);
        r20.xyz = lightConstantsCB[r6.w].data[5].yzw;
        r20.w = lightConstantsCB[r6.w].data[6].x;
        r19.y = dot(r20.xyzw, r18.xyzw);
        r19.xy = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r20.x = lightConstantsCB[r6.w].data[9].w + r19.x;
        r20.y = lightConstantsCB[r6.w].data[10].x + r19.y;
        r19.xy = lightConstantsCB[r6.w].data[9].yz * r20.xy;
        r19.zw = lightConstantsCB[r6.w].data[3].yy / lightConstantsCB[r6.w].data[8].yw;
        r20.xy = float2(1,1) + -r19.zw;
        r20.xy = cmp(r19.xy >= r20.xy);
        r19.zw = cmp(r19.zw >= r19.xy);
        r19.zw = (int2)r19.zw | (int2)r20.xy;
        r7.w = (int)r19.w | (int)r19.z;
        if (r7.w == 0) {
          r20.xyz = lightConstantsCB[r6.w].data[6].yzw;
          r20.w = lightConstantsCB[r6.w].data[7].x;
          r7.w = dot(r20.xyzw, r18.xyzw);
          r19.xy = saturate(r19.xy);
          r18.x = r19.x * lightConstantsCB[r6.w].data[8].y + lightConstantsCB[r6.w].data[8].z;
          r18.y = r19.y * lightConstantsCB[r6.w].data[8].w + lightConstantsCB[r6.w].data[9].x;
          r7.w = lightConstantsCB[r6.w].data[10].y + r7.w;
          r7.w = r7.w / lightConstantsCB[r6.w].data[10].z;
          r7.w = max(6.10351563e-05, r7.w);
          r8.w = 0x0000ffff & (int)lightConstantsCB[r6.w].data[1].w;
          if (enableDitheredShadow != 0) {
            r19.x = -r4.x;
            r20.z = (uint)r8.w;
            r19.y = r13.x;
            r19.z = r4.x;
            r10.w = 0;
            r12.w = 0;
            while (true) {
              r14.w = cmp((int)r12.w >= 8);
              if (r14.w != 0) break;
              r21.x = dot(icb[r12.w+0].yx, r19.xy);
              r21.y = dot(icb[r12.w+0].yx, r19.yz);
              r20.xy = r21.xy * lightConstantsCB[r6.w].data[3].yy + r18.xy;
              r14.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r7.w).x;
              r10.w = r14.w * 0.125 + r10.w;
              r12.w = (int)r12.w + 1;
            }
          } else {
            r18.z = (uint)r8.w;
            r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r7.w).x;
          }
          r6.w = r10.w * r10.w;
          r6.w = r6.w * r10.w;
        } else {
          r6.w = 1;
        }
        r4.w = r6.w * r4.w;
      } else {
        r6.w = viewmodelSunShadowRaw & 0x0000ffff;
        r7.w = cmp(0 < (uint)r6.w);
        r8.w = ~(int)r1.z;
        r7.w = r7.w ? r8.w : 0;
        if (r7.w != 0) {
          r6.w = (int)r6.w + numLights;
          r6.w = mad((int)r6.w, 15, -15);
          r7.w = abs(r3.z) * -0.200000003 + 0.400000006;
          r18.xyz = r12.xyz * r7.www + r11.xyz;
          r19.xyz = lightConstantsCB[r6.w].data[4].yzw;
          r19.w = lightConstantsCB[r6.w].data[5].x;
          r18.w = 1;
          r19.x = dot(r19.xyzw, r18.xyzw);
          r20.xyz = lightConstantsCB[r6.w].data[5].yzw;
          r20.w = lightConstantsCB[r6.w].data[6].x;
          r19.y = dot(r20.xyzw, r18.xyzw);
          r19.xy = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r20.x = lightConstantsCB[r6.w].data[9].w + r19.x;
          r20.y = lightConstantsCB[r6.w].data[10].x + r19.y;
          r19.xy = lightConstantsCB[r6.w].data[9].yz * r20.xy;
          r19.zw = lightConstantsCB[r6.w].data[3].yy / lightConstantsCB[r6.w].data[8].yw;
          r20.xy = float2(1,1) + -r19.zw;
          r20.xy = cmp(r19.xy >= r20.xy);
          r19.zw = cmp(r19.zw >= r19.xy);
          r19.zw = (int2)r19.zw | (int2)r20.xy;
          r7.w = (int)r19.w | (int)r19.z;
          if (r7.w == 0) {
            r20.xyz = lightConstantsCB[r6.w].data[6].yzw;
            r20.w = lightConstantsCB[r6.w].data[7].x;
            r7.w = dot(r20.xyzw, r18.xyzw);
            r19.xy = saturate(r19.xy);
            r18.x = r19.x * lightConstantsCB[r6.w].data[8].y + lightConstantsCB[r6.w].data[8].z;
            r18.y = r19.y * lightConstantsCB[r6.w].data[8].w + lightConstantsCB[r6.w].data[9].x;
            r7.w = lightConstantsCB[r6.w].data[10].y + r7.w;
            r7.w = r7.w / lightConstantsCB[r6.w].data[10].z;
            r7.w = max(6.10351563e-05, r7.w);
            r8.w = 0x0000ffff & (int)lightConstantsCB[r6.w].data[1].w;
            if (enableDitheredShadow != 0) {
              r19.x = -r4.x;
              r20.z = (uint)r8.w;
              r19.y = r13.x;
              r19.z = r4.x;
              r10.w = 0;
              r12.w = 0;
              while (true) {
                r14.w = cmp((int)r12.w >= 8);
                if (r14.w != 0) break;
                r21.x = dot(icb[r12.w+0].yx, r19.xy);
                r21.y = dot(icb[r12.w+0].yx, r19.yz);
                r20.xy = r21.xy * lightConstantsCB[r6.w].data[3].yy + r18.xy;
                r14.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r7.w).x;
                r10.w = r14.w * 0.125 + r10.w;
                r12.w = (int)r12.w + 1;
              }
            } else {
              r18.z = (uint)r8.w;
              r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r7.w).x;
            }
            r6.w = r10.w * r10.w;
            r6.w = r6.w * r10.w;
          } else {
            r6.w = 1;
          }
          r4.w = r6.w * r4.w;
        }
      }
      r6.w = -r2.x * 0.5 + 1;
      r6.w = -r4.y * r6.w + 1;
      r6.w = r6.w * r6.w;
      r6.w = -r6.w * 0.620000005 + 0.620000005;
      r6.w = r6.w + -r4.y;
      r6.w = r2.z * r6.w + r4.y;
      r6.w = r6.w * r4.w;
      r3.z = cmp(0 < r3.z);
      r18.xyz = r6.www * r16.xyz + r15.xyz;
      r19.xyz = -r11.xyz * r0.www + sunConstants.wldDir.xyz;
      r0.w = dot(r19.xyz, r19.xyz);
      r0.w = rsqrt(r0.w);
      r19.xyz = r19.xyz * r0.www;
      r0.w = dot(r19.xyz, r5.yzw);
      r6.w = dot(r12.xyz, r19.xyz);
      r7.w = abs(r6.w) * r1.w + -abs(r6.w);
      r6.w = abs(r6.w) * r7.w + 1;
      r4.y = r4.y * r2.y + r4.z;
      r6.w = r6.w * r6.w;
      r4.y = r6.w * r4.y;
      r4.y = rcp(r4.y);
      r4.y = r4.y * r5.x;
      r4.y = r4.w * r4.y;
      r4.y = 0.25 * r4.y;
      r19.xyz = r4.yyy * r16.xyz + r13.yzw;
      r0.w = saturate(1 + -r0.w);
      r5.x = r0.w * r0.w;
      r5.x = r5.x * r5.x;
      r0.w = r5.x * r0.w;
      r0.w = r4.y * r0.w;
      r16.xyz = r0.www * r16.yzx + r17.xyz;
      r18.w = r16.z;
      r15.w = r17.z;
      r15.xyzw = r3.zzzz ? r18.xyzw : r15.xyzw;
      r16.zw = r19.xy;
      r17.zw = r13.yz;
      r16.xyzw = r3.zzzz ? r16.xyzw : r17.xyzw;
      r13.w = r3.z ? r19.z : r13.w;
      if (r2.w != 0) {
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r0.w, cb2[52].x, l(112), u2.xxxx
      r0.w = samp0[]..swiz;
        r0.w = (int)r0.w | 8;
        GBufferDiffuseColor[viewID].112 = u2.x;
        GBufferDiffuseColor[viewID].132 = u2.x;
      }
      r17.z = r15.w;
      r17.xy = r16.xy;
      r13.yz = r16.zw;
      r0.w = 0x00010101;
    } else {
      r0.w = 257;
    }
  } else {
    r0.w = 1;
  }
  r0.x = (uint)r0.x >> 24;
  r0.x = (int)r0.x * 15;
  if (3 == 0) r3.z = 0; else if (3+24 < 32) {   r3.z = (uint)lightConstantsCB[r0.x].data[1].w << (32-(3 + 24)); r3.z = (uint)r3.z >> (32-3);  } else r3.z = (uint)lightConstantsCB[r0.x].data[1].w >> 24;
  switch (r3.z) {
    case 4 :    if (r2.w != 0) {
      r16.yzw = lightConstantsCB[r0.x].data[0].xyz + eyeOffset.xyz;
      r16.x = 2;
      GBufferDiffuseColor[viewID].136 = u2.xyzw;
    }
    r3.z = (int)r0.w + 1;
    r4.y = cmp(0 < lightConstantsCB[r0.x].data[6].y);
    r16.xy = lightConstantsCB[r0.x].data[5].zw;
    r16.z = lightConstantsCB[r0.x].data[6].x;
    r18.xyz = -r16.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r0.x].data[0].xyz;
    r19.xyz = r18.xyz + -r11.xyz;
    r4.w = dot(r16.xyz, r19.xyz);
    r5.x = saturate(-r4.w / lightConstantsCB[r0.x].data[6].y);
    r20.xyz = r5.xxx * r16.xyz + r18.xyz;
    r20.xyz = r4.yyy ? r20.xyz : lightConstantsCB[r0.x].data[0].xyz;
    r20.xyz = r20.xyz + -r11.xyz;
    r6.w = dot(r20.xyz, r20.xyz);
    r7.w = rsqrt(r6.w);
    r20.xyz = r20.xyz * r7.www;
    r7.w = dot(r12.xyz, r20.xyz);
    r8.w = saturate(r7.w);
    r10.w = cmp(0 < r8.w);
    if (r10.w != 0) {
      r10.w = sqrt(r6.w);
      r12.w = lightConstantsCB[r0.x].data[3].x * lightConstantsCB[r0.x].data[3].x;
      r6.w = r12.w / r6.w;
      r6.w = min(1, r6.w);
      r20.xy = saturate(r10.ww * lightConstantsCB[r0.x].data[2].xz + lightConstantsCB[r0.x].data[2].yw);
      r20.zw = r20.xy * r20.xy;
      r20.xy = r20.xy * float2(-2,-2) + float2(3,3);
      r20.xy = r20.zw * r20.xy;
      r6.w = r20.x * r6.w;
      r6.w = r6.w * r20.y;
      r10.w = cmp(0 < r6.w);
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
          r20.xy = (uint2)r1.yx;
          r10.w = dot(r20.xy, float2(0.0671105608,0.00583714992));
          r10.w = frac(r10.w);
          r10.w = 52.9829178 * r10.w;
          r10.w = frac(r10.w);
          r10.w = r10.w * 6.28318548 + gameTick.w;
          sincos(r10.w, r20.x, r21.x);
          r10.w = abs(r7.w) * -0.200000003 + 0.400000006;
          r20.yzw = r12.xyz * r10.www + r11.xyz;
          r20.yzw = -lightConstantsCB[r0.x].data[4].yzw + r20.yzw;
          r10.w = max(abs(r20.z), abs(r20.w));
          r10.w = max(abs(r20.y), r10.w);
          r10.w = lightConstantsCB[r0.x].data[5].x / r10.w;
          r10.w = lightConstantsCB[r0.x].data[5].y + r10.w;
          r14.w = dot(r20.yzw, r20.yzw);
          r14.w = rsqrt(r14.w);
          r10.w = max(6.10351563e-05, r10.w);
          r15.w = 0x0000ffff & (int)lightConstantsCB[r0.x].data[1].w;
          r22.x = -r4.x;
          r23.w = (uint)r15.w;
          r22.y = r13.x;
          r22.z = r4.x;
          r15.w = 0;
          r16.w = 0;
          while (true) {
            r17.w = cmp((int)r16.w >= 8);
            if (r17.w != 0) break;
            r21.y = dot(icb[r16.w+0].yx, r22.xy);
            r21.z = dot(icb[r16.w+0].yx, r22.yz);
            r24.yz = lightConstantsCB[r0.x].data[3].yy * r21.yz;
            r24.x = r24.y * r21.x;
            r24.w = r24.y * r20.x;
            r23.xyz = r20.yzw * r14.www + r24.xzw;
            r17.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyzw, r10.w).x;
            r15.w = r17.w * 0.125 + r15.w;
            r16.w = (int)r16.w + 1;
          }
        } else {
          r15.w = 1;
        }
        r6.w = r15.w * r6.w;
        r10.w = cmp(0 < r6.w);
        if (r10.w != 0) {
          r10.w = lightConstantsCB[r0.x].data[1].z * r1.w;
          r10.w = 0.25 * r10.w;
          r14.w = dot(r16.xyz, r14.xyz);
          r14.x = dot(r14.xyz, r19.xyz);
          r14.y = -r14.w * r14.w + lightConstantsCB[r0.x].data[6].y;
          r4.w = r14.w * r14.x + -r4.w;
          r4.w = saturate(r4.w / r14.y);
          r14.x = r14.y / lightConstantsCB[r0.x].data[6].y;
          r14.x = 10 * r14.x;
          r14.x = min(1, r14.x);
          r4.w = r4.w + -r5.x;
          r4.w = r14.x * r4.w + r5.x;
          r14.xyz = r4.www * r16.xyz + r18.xyz;
          r14.xyz = r4.yyy ? r14.xyz : lightConstantsCB[r0.x].data[0].xyz;
          r14.xyz = r14.xyz + -r11.xyz;
          r4.y = dot(r14.xyz, r14.xyz);
          r4.y = rsqrt(r4.y);
          r16.xyz = r14.xyz * r4.yyy;
          if (4 == 0) r4.w = 0; else if (4+16 < 32) {           r4.w = (uint)lightConstantsCB[r0.x].data[1].w << (32-(4 + 16)); r4.w = (uint)r4.w >> (32-4);          } else r4.w = (uint)lightConstantsCB[r0.x].data[1].w >> 16;
          r5.x = cmp(0 < (uint)r4.w);
          r5.x = r5.x ? r1.z : 0;
          if (r5.x != 0) {
            r4.w = (int)r4.w + numLights;
            r4.w = mad((int)r4.w, 15, -15);
            r5.x = abs(r7.w) * -0.200000003 + 0.400000006;
            r18.xyz = r12.xyz * r5.xxx + r11.xyz;
            r19.xyz = lightConstantsCB[r4.w].data[6].yzw;
            r19.w = lightConstantsCB[r4.w].data[7].x;
            r18.w = 1;
            r5.x = dot(r19.xyzw, r18.xyzw);
            r19.xyz = lightConstantsCB[r4.w].data[7].yzw;
            r19.w = lightConstantsCB[r4.w].data[8].x;
            r14.w = dot(r19.xyzw, r18.xyzw);
            r15.w = cmp(r14.w < r5.x);
            if (r15.w == 0) {
              r19.xyz = lightConstantsCB[r4.w].data[4].yzw;
              r19.w = lightConstantsCB[r4.w].data[5].x;
              r19.x = dot(r19.xyzw, r18.xyzw);
              r20.xyz = lightConstantsCB[r4.w].data[5].yzw;
              r20.w = lightConstantsCB[r4.w].data[6].x;
              r19.y = dot(r20.xyzw, r18.xyzw);
              r18.xy = r19.xy / r14.ww;
              r18.xy = r18.xy * float2(0.5,-0.5) + float2(0.5,0.5);
              r19.x = lightConstantsCB[r4.w].data[9].w + r18.x;
              r19.y = lightConstantsCB[r4.w].data[10].x + r18.y;
              r18.xy = lightConstantsCB[r4.w].data[9].yz * r19.xy;
              r18.zw = lightConstantsCB[r4.w].data[3].yy / lightConstantsCB[r4.w].data[8].yw;
              r19.xy = float2(1,1) + -r18.zw;
              r19.xy = cmp(r18.xy >= r19.xy);
              r18.zw = cmp(r18.zw >= r18.xy);
              r18.zw = (int2)r18.zw | (int2)r19.xy;
              r16.w = (int)r18.w | (int)r18.z;
              if (r16.w == 0) {
                r18.xy = saturate(r18.xy);
                r19.x = r18.x * lightConstantsCB[r4.w].data[8].y + lightConstantsCB[r4.w].data[8].z;
                r19.y = r18.y * lightConstantsCB[r4.w].data[8].w + lightConstantsCB[r4.w].data[9].x;
                r17.w = lightConstantsCB[r4.w].data[10].z * r14.w;
                r5.x = lightConstantsCB[r4.w].data[10].y * r14.w + r5.x;
                r5.x = r5.x / r17.w;
              }
            } else {
              r16.w = -1;
            }
            r14.w = (int)r15.w | (int)r16.w;
            if (r14.w == 0) {
              r5.x = max(6.10351563e-05, r5.x);
              r14.w = 0x0000ffff & (int)lightConstantsCB[r4.w].data[1].w;
              if (enableDitheredShadow != 0) {
                r18.x = -r4.x;
                r20.z = (uint)r14.w;
                r18.y = r13.x;
                r18.z = r4.x;
                r15.w = 0;
                r16.w = 0;
                while (true) {
                  r17.w = cmp((int)r16.w >= 8);
                  if (r17.w != 0) break;
                  r21.x = dot(icb[r16.w+0].yx, r18.xy);
                  r21.y = dot(icb[r16.w+0].yx, r18.yz);
                  r20.xy = r21.xy * lightConstantsCB[r4.w].data[3].yy + r19.xy;
                  r17.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r5.x).x;
                  r15.w = r17.w * 0.125 + r15.w;
                  r16.w = (int)r16.w + 1;
                }
              } else {
                r19.z = (uint)r14.w;
                r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r5.x).x;
              }
              r4.w = r15.w * r15.w;
              r4.w = r4.w * r15.w;
            } else {
              r4.w = 1;
            }
            r6.w = r6.w * r4.w;
          } else {
            if (4 == 0) r4.w = 0; else if (4+20 < 32) {             r4.w = (uint)lightConstantsCB[r0.x].data[1].w << (32-(4 + 20)); r4.w = (uint)r4.w >> (32-4);            } else r4.w = (uint)lightConstantsCB[r0.x].data[1].w >> 20;
            r5.x = cmp(0 < (uint)r4.w);
            r14.w = ~(int)r1.z;
            r5.x = r5.x ? r14.w : 0;
            if (r5.x != 0) {
              r4.w = (int)r4.w + numLights;
              r4.w = mad((int)r4.w, 15, -15);
              r5.x = abs(r7.w) * -0.200000003 + 0.400000006;
              r18.xyz = r12.xyz * r5.xxx + r11.xyz;
              r19.xyz = lightConstantsCB[r4.w].data[6].yzw;
              r19.w = lightConstantsCB[r4.w].data[7].x;
              r18.w = 1;
              r5.x = dot(r19.xyzw, r18.xyzw);
              r19.xyz = lightConstantsCB[r4.w].data[7].yzw;
              r19.w = lightConstantsCB[r4.w].data[8].x;
              r14.w = dot(r19.xyzw, r18.xyzw);
              r15.w = cmp(r14.w < r5.x);
              if (r15.w == 0) {
                r19.xyz = lightConstantsCB[r4.w].data[4].yzw;
                r19.w = lightConstantsCB[r4.w].data[5].x;
                r19.x = dot(r19.xyzw, r18.xyzw);
                r20.xyz = lightConstantsCB[r4.w].data[5].yzw;
                r20.w = lightConstantsCB[r4.w].data[6].x;
                r19.y = dot(r20.xyzw, r18.xyzw);
                r18.xy = r19.xy / r14.ww;
                r18.xy = r18.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r19.x = lightConstantsCB[r4.w].data[9].w + r18.x;
                r19.y = lightConstantsCB[r4.w].data[10].x + r18.y;
                r18.xy = lightConstantsCB[r4.w].data[9].yz * r19.xy;
                r18.zw = lightConstantsCB[r4.w].data[3].yy / lightConstantsCB[r4.w].data[8].yw;
                r19.xy = float2(1,1) + -r18.zw;
                r19.xy = cmp(r18.xy >= r19.xy);
                r18.zw = cmp(r18.zw >= r18.xy);
                r18.zw = (int2)r18.zw | (int2)r19.xy;
                r16.w = (int)r18.w | (int)r18.z;
                if (r16.w == 0) {
                  r18.xy = saturate(r18.xy);
                  r19.x = r18.x * lightConstantsCB[r4.w].data[8].y + lightConstantsCB[r4.w].data[8].z;
                  r19.y = r18.y * lightConstantsCB[r4.w].data[8].w + lightConstantsCB[r4.w].data[9].x;
                  r17.w = lightConstantsCB[r4.w].data[10].z * r14.w;
                  r5.x = lightConstantsCB[r4.w].data[10].y * r14.w + r5.x;
                  r5.x = r5.x / r17.w;
                }
              } else {
                r16.w = -1;
              }
              r14.w = (int)r15.w | (int)r16.w;
              if (r14.w == 0) {
                r5.x = max(6.10351563e-05, r5.x);
                r14.w = 0x0000ffff & (int)lightConstantsCB[r4.w].data[1].w;
                if (enableDitheredShadow != 0) {
                  r18.x = -r4.x;
                  r20.z = (uint)r14.w;
                  r18.y = r13.x;
                  r18.z = r4.x;
                  r15.w = 0;
                  r16.w = 0;
                  while (true) {
                    r17.w = cmp((int)r16.w >= 8);
                    if (r17.w != 0) break;
                    r21.x = dot(icb[r16.w+0].yx, r18.xy);
                    r21.y = dot(icb[r16.w+0].yx, r18.yz);
                    r20.xy = r21.xy * lightConstantsCB[r4.w].data[3].yy + r19.xy;
                    r17.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r5.x).x;
                    r15.w = r17.w * 0.125 + r15.w;
                    r16.w = (int)r16.w + 1;
                  }
                } else {
                  r19.z = (uint)r14.w;
                  r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r5.x).x;
                }
                r4.w = r15.w * r15.w;
                r4.w = r4.w * r15.w;
              } else {
                r4.w = 1;
              }
              r6.w = r6.w * r4.w;
            }
          }
          r4.w = -r2.x * 0.5 + 1;
          r4.w = -r8.w * r4.w + 1;
          r4.w = r4.w * r4.w;
          r4.w = -r4.w * 0.620000005 + 0.620000005;
          r4.w = r4.w + -r8.w;
          r4.w = r2.z * r4.w + r8.w;
          r4.w = r4.w * r6.w;
          r18.x = lightConstantsCB[r0.x].data[0].w;
          r18.yz = lightConstantsCB[r0.x].data[1].xy;
          r5.x = cmp(0 < r7.w);
          r19.xyz = r4.www * r18.xyz + r15.xyz;
          r4.w = saturate(dot(r12.xyz, r16.xyz));
          r14.xyz = r14.xyz * r4.yyy + r5.yzw;
          r4.y = dot(r14.xyz, r14.xyz);
          r4.y = rsqrt(r4.y);
          r14.xyz = r14.xyz * r4.yyy;
          r4.y = dot(r14.xyz, r5.yzw);
          r7.w = dot(r12.xyz, r14.xyz);
          r8.w = abs(r7.w) * r1.w + -abs(r7.w);
          r7.w = abs(r7.w) * r8.w + 1;
          r8.w = r4.w * r2.y + r4.z;
          r7.w = r7.w * r7.w;
          r7.w = r7.w * r8.w;
          r7.w = rcp(r7.w);
          r4.w = r4.w * r10.w;
          r4.w = r7.w * r4.w;
          r4.w = r4.w * r6.w;
          r14.xyz = r4.www * r18.xyz + r13.yzw;
          r4.y = saturate(1 + -r4.y);
          r7.w = r4.y * r4.y;
          r7.w = r7.w * r7.w;
          r4.y = r7.w * r4.y;
          r4.y = r4.w * r4.y;
          r16.xyz = r4.yyy * r18.xyz + r17.zxy;
          r15.xyz = r5.xxx ? r19.xyz : r15.xyz;
          r17.xyz = r5.xxx ? r16.yzx : r17.xyz;
          r13.yzw = r5.xxx ? r14.xyz : r13.yzw;
          if (r2.w != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r4.y, cb2[52].x, l(136), u2.xxxx
          r4.y = samp0[]..swiz;
            r4.y = (int)r4.y | 8;
            GBufferDiffuseColor[viewID].136 = u2.x;
            GBufferDiffuseColor[viewID].156 = u2.x;
          }
          r0.w = (int)r0.w + 0x00010101;
        } else {
          r0.w = r12.w;
        }
      } else {
        r0.w = r3.z;
      }
    } else {
      r0.w = r3.z;
    }
    break;
    case 2 :    if (r2.w != 0) {
      r14.yzw = lightConstantsCB[r0.x].data[0].xyz + eyeOffset.xyz;
      r14.x = 2;
      GBufferDiffuseColor[viewID].136 = u2.xyzw;
    }
    r3.z = (int)r0.w + 1;
    r14.xy = lightConstantsCB[r0.x].data[3].zw + -r11.xy;
    r14.z = lightConstantsCB[r0.x].data[4].x + -r11.z;
    r4.y = dot(r14.xyz, r14.xyz);
    r4.y = rsqrt(r4.y);
    r16.xyz = r14.xyz * r4.yyy;
    r4.w = dot(r12.xyz, r16.xyz);
    r5.x = saturate(r4.w);
    r6.w = cmp(0 < r5.x);
    if (r6.w != 0) {
      r16.xyz = lightConstantsCB[r0.x].data[7].yzw;
      r16.w = lightConstantsCB[r0.x].data[8].x;
      r11.w = 1;
      r6.w = dot(r16.xyzw, r11.xyzw);
      r7.w = cmp(r6.w < 1);
      if (r7.w != 0) {
        r18.xyz = float3(1,1,1);
        r7.w = 0;
      } else {
        r19.xyz = lightConstantsCB[r0.x].data[0].xyz + -r11.xyz;
        r8.w = lightConstantsCB[r0.x].data[3].x * lightConstantsCB[r0.x].data[3].x;
        r10.w = dot(r19.xyz, r19.xyz);
        r8.w = r8.w / r10.w;
        r8.w = min(1, r8.w);
        r19.xy = saturate(r6.ww * lightConstantsCB[r0.x].data[2].xz + lightConstantsCB[r0.x].data[2].yw);
        r19.zw = r19.xy * r19.xy;
        r19.xy = r19.xy * float2(-2,-2) + float2(3,3);
        r19.xy = r19.zw * r19.xy;
        r8.w = r19.x * r8.w;
        r8.w = r8.w * r19.y;
        r19.xyz = lightConstantsCB[r0.x].data[4].yzw;
        r19.w = lightConstantsCB[r0.x].data[5].x;
        r19.x = dot(r19.xyzw, r11.xyzw);
        r20.xyz = lightConstantsCB[r0.x].data[5].yzw;
        r20.w = lightConstantsCB[r0.x].data[6].x;
        r19.y = dot(r20.xyzw, r11.xyzw);
        r19.xy = r19.xy / r6.ww;
        r6.w = cmp(lightConstantsCB[r0.x].data[10].w < 0.00048828125);
        if (r6.w != 0) {
          r20.xy = saturate(abs(r19.xy) * lightConstantsCB[r0.x].data[12].xy + lightConstantsCB[r0.x].data[12].zw);
          r20.zw = r20.xy * r20.xy;
          r20.xy = r20.xy * float2(-2,-2) + float2(3,3);
          r20.xy = r20.zw * r20.xy;
          r6.w = r20.x * r20.y;
        } else {
          r20.xyzw = saturate(lightConstantsCB[r0.x].data[11].xyzw * abs(r19.yyxx));
          r20.xyzw = log2(r20.xyzw);
          r20.xyzw = lightConstantsCB[r0.x].data[12].zzzz * r20.xyzw;
          r20.xyzw = exp2(r20.xyzw);
          r20.xy = r20.xy + r20.zw;
          r20.xy = log2(r20.xy);
          r20.xy = lightConstantsCB[r0.x].data[12].ww * r20.xy;
          r20.xy = exp2(r20.xy);
          r10.w = lightConstantsCB[r0.x].data[12].x * r20.x;
          r11.w = lightConstantsCB[r0.x].data[12].y * r20.y + -1;
          r10.w = lightConstantsCB[r0.x].data[12].y * r20.y + -r10.w;
          r10.w = saturate(r11.w / r10.w);
          r11.w = r10.w * r10.w;
          r10.w = r10.w * -2 + 3;
          r6.w = r11.w * r10.w;
        }
        r7.w = r8.w * r6.w;
        r6.w = 255 & (int)lightConstantsCB[r0.x].data[14].w;
        if (r6.w != 0) {
          r19.z = 1;
          r8.w = dot(lightConstantsCB[r0.x].data[13].xyz, r19.xyz);
          r20.x = lightConstantsCB[r0.x].data[13].w;
          r20.yz = lightConstantsCB[r0.x].data[14].xy;
          r10.w = dot(r20.xyz, r19.xyz);
          r19.x = frac(r8.w);
          r19.y = frac(r10.w);
          r6.w = (int)r6.w + -1;
          r19.z = (uint)r6.w;
          r18.xyz = gCookieArray.SampleLevel(samplerLinear_s, r19.xyz, 0).xyz;
        } else {
          r18.xyz = float3(1,1,1);
        }
      }
      r19.x = lightConstantsCB[r0.x].data[0].w;
      r19.yz = lightConstantsCB[r0.x].data[1].xy;
      r18.xyz = r19.xyz * r18.xyz;
      r6.w = cmp(0 < r7.w);
      if (r6.w != 0) {
        if (3 == 0) r6.w = 0; else if (3+27 < 32) {         r6.w = (uint)lightConstantsCB[r0.x].data[1].w << (32-(3 + 27)); r6.w = (uint)r6.w >> (32-3);        } else r6.w = (uint)lightConstantsCB[r0.x].data[1].w >> 27;
        if (r2.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r8.w, cb2[52].x, l(136), u2.xxxx
        r8.w = samp0[]..swiz;
          r8.w = (int)r8.w | 4;
          GBufferDiffuseColor[viewID].136 = u2.x;
          GBufferDiffuseColor[viewID].152 = u2.x;
        }
        r8.w = (int)r0.w + 257;
        r6.w = cmp((int)r6.w != 1);
        if (r6.w != 0) {
          r6.w = abs(r4.w) * -0.200000003 + 0.400000006;
          r19.xyz = r12.xyz * r6.www + r11.xyz;
          r20.xyz = lightConstantsCB[r0.x].data[6].yzw;
          r20.w = lightConstantsCB[r0.x].data[7].x;
          r19.w = 1;
          r6.w = dot(r20.xyzw, r19.xyzw);
          r10.w = dot(r16.xyzw, r19.xyzw);
          r11.w = cmp(r10.w >= r6.w);
          if (r11.w != 0) {
            r16.xyz = lightConstantsCB[r0.x].data[4].yzw;
            r16.w = lightConstantsCB[r0.x].data[5].x;
            r16.x = dot(r16.xyzw, r19.xyzw);
            r20.xyz = lightConstantsCB[r0.x].data[5].yzw;
            r20.w = lightConstantsCB[r0.x].data[6].x;
            r16.y = dot(r20.xyzw, r19.xyzw);
            r16.xy = r16.xy / r10.ww;
            r16.xy = saturate(r16.xy * float2(0.5,-0.5) + float2(0.5,0.5));
            r19.x = r16.x * lightConstantsCB[r0.x].data[8].y + lightConstantsCB[r0.x].data[8].z;
            r19.y = r16.y * lightConstantsCB[r0.x].data[8].w + lightConstantsCB[r0.x].data[9].x;
            r6.w = r6.w / r10.w;
            r6.w = max(6.10351563e-05, r6.w);
            r10.w = 0x0000ffff & (int)lightConstantsCB[r0.x].data[1].w;
            if (enableDitheredShadow != 0) {
              r16.x = -r4.x;
              r20.z = (uint)r10.w;
              r16.y = r13.x;
              r16.z = r4.x;
              r11.w = 0;
              r12.w = 0;
              while (true) {
                r14.w = cmp((int)r12.w >= 8);
                if (r14.w != 0) break;
                r21.x = dot(icb[r12.w+0].yx, r16.xy);
                r21.y = dot(icb[r12.w+0].yx, r16.yz);
                r20.xy = r21.xy * lightConstantsCB[r0.x].data[3].yy + r19.xy;
                r14.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r6.w).x;
                r11.w = r14.w * 0.125 + r11.w;
                r12.w = (int)r12.w + 1;
              }
            } else {
              r19.z = (uint)r10.w;
              r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r6.w).x;
            }
            r6.w = r11.w * r11.w;
            r6.w = r6.w * r11.w;
          } else {
            r6.w = 1;
          }
        } else {
          r6.w = 1;
        }
        r6.w = r7.w * r6.w;
        r7.w = cmp(0 < r6.w);
        if (r7.w != 0) {
          r7.w = lightConstantsCB[r0.x].data[1].z * r1.w;
          r7.w = r7.w * r5.x;
          if (4 == 0) r10.w = 0; else if (4+16 < 32) {           r10.w = (uint)lightConstantsCB[r0.x].data[1].w << (32-(4 + 16)); r10.w = (uint)r10.w >> (32-4);          } else r10.w = (uint)lightConstantsCB[r0.x].data[1].w >> 16;
          r11.w = cmp(0 < (uint)r10.w);
          r11.w = r11.w ? r1.z : 0;
          if (r11.w != 0) {
            r10.w = (int)r10.w + numLights;
            r10.w = mad((int)r10.w, 15, -15);
            r11.w = abs(r4.w) * -0.200000003 + 0.400000006;
            r16.xyz = r12.xyz * r11.www + r11.xyz;
            r19.xyz = lightConstantsCB[r10.w].data[6].yzw;
            r19.w = lightConstantsCB[r10.w].data[7].x;
            r16.w = 1;
            r11.w = dot(r19.xyzw, r16.xyzw);
            r19.xyz = lightConstantsCB[r10.w].data[7].yzw;
            r19.w = lightConstantsCB[r10.w].data[8].x;
            r12.w = dot(r19.xyzw, r16.xyzw);
            r14.w = cmp(r12.w < r11.w);
            if (r14.w == 0) {
              r19.xyz = lightConstantsCB[r10.w].data[4].yzw;
              r19.w = lightConstantsCB[r10.w].data[5].x;
              r19.x = dot(r19.xyzw, r16.xyzw);
              r20.xyz = lightConstantsCB[r10.w].data[5].yzw;
              r20.w = lightConstantsCB[r10.w].data[6].x;
              r19.y = dot(r20.xyzw, r16.xyzw);
              r16.xy = r19.xy / r12.ww;
              r16.xy = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
              r19.x = lightConstantsCB[r10.w].data[9].w + r16.x;
              r19.y = lightConstantsCB[r10.w].data[10].x + r16.y;
              r16.xy = lightConstantsCB[r10.w].data[9].yz * r19.xy;
              r16.zw = lightConstantsCB[r10.w].data[3].yy / lightConstantsCB[r10.w].data[8].yw;
              r19.xy = float2(1,1) + -r16.zw;
              r19.xy = cmp(r16.xy >= r19.xy);
              r16.zw = cmp(r16.zw >= r16.xy);
              r16.zw = (int2)r16.zw | (int2)r19.xy;
              r15.w = (int)r16.w | (int)r16.z;
              if (r15.w == 0) {
                r16.xy = saturate(r16.xy);
                r19.x = r16.x * lightConstantsCB[r10.w].data[8].y + lightConstantsCB[r10.w].data[8].z;
                r19.y = r16.y * lightConstantsCB[r10.w].data[8].w + lightConstantsCB[r10.w].data[9].x;
                r16.x = lightConstantsCB[r10.w].data[10].z * r12.w;
                r11.w = lightConstantsCB[r10.w].data[10].y * r12.w + r11.w;
                r11.w = r11.w / r16.x;
              }
            } else {
              r15.w = -1;
            }
            r12.w = (int)r14.w | (int)r15.w;
            if (r12.w == 0) {
              r11.w = max(6.10351563e-05, r11.w);
              r12.w = 0x0000ffff & (int)lightConstantsCB[r10.w].data[1].w;
              if (enableDitheredShadow != 0) {
                r16.x = -r4.x;
                r20.z = (uint)r12.w;
                r16.y = r13.x;
                r16.z = r4.x;
                r14.w = 0;
                r15.w = 0;
                while (true) {
                  r16.w = cmp((int)r15.w >= 8);
                  if (r16.w != 0) break;
                  r21.x = dot(icb[r15.w+0].yx, r16.xy);
                  r21.y = dot(icb[r15.w+0].yx, r16.yz);
                  r20.xy = r21.xy * lightConstantsCB[r10.w].data[3].yy + r19.xy;
                  r16.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r11.w).x;
                  r14.w = r16.w * 0.125 + r14.w;
                  r15.w = (int)r15.w + 1;
                }
              } else {
                r19.z = (uint)r12.w;
                r14.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r11.w).x;
              }
              r10.w = r14.w * r14.w;
              r10.w = r10.w * r14.w;
            } else {
              r10.w = 1;
            }
            r6.w = r10.w * r6.w;
          } else {
            if (4 == 0) r0.x = 0; else if (4+20 < 32) {             r0.x = (uint)lightConstantsCB[r0.x].data[1].w << (32-(4 + 20)); r0.x = (uint)r0.x >> (32-4);            } else r0.x = (uint)lightConstantsCB[r0.x].data[1].w >> 20;
            r10.w = cmp(0 < (uint)r0.x);
            r1.z = ~(int)r1.z;
            r1.z = r10.w ? r1.z : 0;
            if (r1.z != 0) {
              r0.x = (int)r0.x + numLights;
              r0.x = mad((int)r0.x, 15, -15);
              r1.z = abs(r4.w) * -0.200000003 + 0.400000006;
              r16.xyz = r12.xyz * r1.zzz + r11.xyz;
              r19.xyz = lightConstantsCB[r0.x].data[6].yzw;
              r19.w = lightConstantsCB[r0.x].data[7].x;
              r16.w = 1;
              r1.z = dot(r19.xyzw, r16.xyzw);
              r19.xyz = lightConstantsCB[r0.x].data[7].yzw;
              r19.w = lightConstantsCB[r0.x].data[8].x;
              r10.w = dot(r19.xyzw, r16.xyzw);
              r11.w = cmp(r10.w < r1.z);
              if (r11.w == 0) {
                r19.xyz = lightConstantsCB[r0.x].data[4].yzw;
                r19.w = lightConstantsCB[r0.x].data[5].x;
                r19.x = dot(r19.xyzw, r16.xyzw);
                r20.xyz = lightConstantsCB[r0.x].data[5].yzw;
                r20.w = lightConstantsCB[r0.x].data[6].x;
                r19.y = dot(r20.xyzw, r16.xyzw);
                r16.xy = r19.xy / r10.ww;
                r16.xy = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r19.x = lightConstantsCB[r0.x].data[9].w + r16.x;
                r19.y = lightConstantsCB[r0.x].data[10].x + r16.y;
                r16.xy = lightConstantsCB[r0.x].data[9].yz * r19.xy;
                r16.zw = lightConstantsCB[r0.x].data[3].yy / lightConstantsCB[r0.x].data[8].yw;
                r19.xy = float2(1,1) + -r16.zw;
                r19.xy = cmp(r16.xy >= r19.xy);
                r16.zw = cmp(r16.zw >= r16.xy);
                r16.zw = (int2)r16.zw | (int2)r19.xy;
                r12.w = (int)r16.w | (int)r16.z;
                if (r12.w == 0) {
                  r16.xy = saturate(r16.xy);
                  r19.x = r16.x * lightConstantsCB[r0.x].data[8].y + lightConstantsCB[r0.x].data[8].z;
                  r19.y = r16.y * lightConstantsCB[r0.x].data[8].w + lightConstantsCB[r0.x].data[9].x;
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
                  r20.z = (uint)r10.w;
                  r16.y = r13.x;
                  r16.z = r4.x;
                  r4.x = 0;
                  r11.w = 0;
                  while (true) {
                    r12.w = cmp((int)r11.w >= 8);
                    if (r12.w != 0) break;
                    r21.x = dot(icb[r11.w+0].yx, r16.xy);
                    r21.y = dot(icb[r11.w+0].yx, r16.yz);
                    r20.xy = r21.xy * lightConstantsCB[r0.x].data[3].yy + r19.xy;
                    r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r1.z).x;
                    r4.x = r12.w * 0.125 + r4.x;
                    r11.w = (int)r11.w + 1;
                  }
                } else {
                  r19.z = (uint)r10.w;
                  r4.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r1.z).x;
                }
                r0.x = r4.x * r4.x;
                r0.x = r0.x * r4.x;
              } else {
                r0.x = 1;
              }
              r6.w = r6.w * r0.x;
            }
          }
          r0.x = -r2.x * 0.5 + 1;
          r0.x = -r5.x * r0.x + 1;
          r0.x = r0.x * r0.x;
          r0.x = -r0.x * 0.620000005 + 0.620000005;
          r0.x = r0.x + -r5.x;
          r0.x = r2.z * r0.x + r5.x;
          r0.x = r0.x * r6.w;
          r1.z = cmp(0 < r4.w);
          r16.xyz = r0.xxx * r18.xyz + r15.xyz;
          r4.xyw = r14.xyz * r4.yyy + r5.yzw;
          r0.x = dot(r4.xyw, r4.xyw);
          r0.x = rsqrt(r0.x);
          r4.xyw = r4.xyw * r0.xxx;
          r0.x = dot(r4.xyw, r5.yzw);
          r2.x = dot(r12.xyz, r4.xyw);
          r1.w = abs(r2.x) * r1.w + -abs(r2.x);
          r1.w = abs(r2.x) * r1.w + 1;
          r2.x = r5.x * r2.y + r4.z;
          r1.w = r1.w * r1.w;
          r1.w = r1.w * r2.x;
          r1.w = rcp(r1.w);
          r1.w = r1.w * r7.w;
          r1.w = r6.w * r1.w;
          r1.w = 0.25 * r1.w;
          r2.xyz = r1.www * r18.xyz + r13.yzw;
          r0.x = saturate(1 + -r0.x);
          r4.x = r0.x * r0.x;
          r4.x = r4.x * r4.x;
          r0.x = r4.x * r0.x;
          r0.x = r1.w * r0.x;
          r4.xyz = r0.xxx * r18.xyz + r17.zxy;
          r15.xyz = r1.zzz ? r16.xyz : r15.xyz;
          r17.xyz = r1.zzz ? r4.yzx : r17.xyz;
          r13.yzw = r1.zzz ? r2.xyz : r13.yzw;
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
          r0.w = r8.w;
        }
      } else {
        r0.w = r3.z;
      }
    } else {
      r0.w = r3.z;
    }
    break;
    default :
    break;
  }
  r3.xyz = r3.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r0.x = (uint)r3.y;
  r2.xyz = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.z = (uint)r2.x;
  r1.z = cmp((int)r0.x == (int)r1.z);
  r1.zw = r1.zz ? r2.yz : float2(-1,0);
  r2.xyz = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.x = (uint)r2.x;
  r2.x = cmp((int)r0.x == (int)r2.x);
  r2.xy = r2.xx ? r2.yz : float2(-1,0);
  r4.xyz = r9.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.z = (uint)r4.x;
  r2.z = cmp((int)r0.x == (int)r2.z);
  r4.xy = r2.zz ? r4.yz : float2(-1,0);
  r5.xyz = r10.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.z = (uint)r5.x;
  r0.x = cmp((int)r0.x == (int)r2.z);
  r4.zw = r0.xx ? r5.yz : float2(-1,0);
  r5.x = r1.z;
  r5.y = r2.x;
  r5.zw = r4.xz;
  r5.xyzw = r5.xyzw + -r3.xxxx;
  r5.xyzw = cmp(abs(r5.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r5.xyzw = r5.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r0.x = r5.x + r5.y;
  r0.x = r0.x + r5.z;
  r0.x = r0.x + r5.w;
  r1.z = r5.y * r2.y;
  r1.z = r5.x * r1.w + r1.z;
  r1.z = r5.z * r4.y + r1.z;
  r1.z = r5.w * r4.w + r1.z;
  r3.w = r1.z / r0.x;
  r0.x = cmp(0 >= r0.x);
  r3.yz = r0.xx ? float2(0,0) : r3.zw;
  r1.zw = (int2)r1.xy & int2(1,1);
  r0.x = cmp((int)r1.w == (int)r1.z);
  r2.xyz = r0.xxx ? r3.xyz : r3.xzy;
  r0.x = -r2.z * 0.5 + r2.x;
  r3.y = r2.z + r0.x;
  r3.z = -r2.y * 0.5 + r0.x;
  r3.x = r3.z + r2.y;
  r2.xyz = float3(1,1,1) + -r3.xyz;
  r2.xyz = r17.zxy * r2.xyz;
  r2.xyz = r13.yzw * r3.xyz + r2.xyz;
  r2.xyz = r15.xyz * r6.xyz + r2.xyz;
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
        case 4 :        r0.x = (int)r9.w & 255;
        break;
        case 5 :        if (8 == 0) r0.x = 0; else if (8+8 < 32) {         r0.x = (uint)r9.w << (32-(8 + 8)); r0.x = (uint)r0.x >> (32-8);        } else r0.x = (uint)r9.w >> 8;
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
    r0.x = (int)r9.w & 255;
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
    r1.y = (int)r9.w & 255;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(12), r1.y
    InterlockedAdd(dest, value, orig_value);
    if (8 == 0) r1.z = 0; else if (8+8 < 32) {     r1.z = (uint)r9.w << (32-(8 + 8)); r1.z = (uint)r1.z >> (32-8);    } else r1.z = (uint)r9.w >> 8;
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