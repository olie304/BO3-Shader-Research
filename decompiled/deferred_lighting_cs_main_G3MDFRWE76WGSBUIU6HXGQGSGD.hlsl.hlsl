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
Texture2D<float> gSSAOTexture : register(t27);
Texture2D<float> gSSAODepthTexture : register(t28);
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
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_structured u2, 1792
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24;
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
  r0.x = mad(permuteStride, 38, (int)vThreadGroupID.x);
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
  r3.x = GBufferDepth.Load(r1.xyw).x;
  r4.xyzw = GBufferSpecularColorAndOcclusion.Load(r1.xyw).xyzw;
  r3.yz = (uint2)r1.xy;
  r5.xy = float2(0.5,0.5) + r3.yz;
  r6.x = cmp(r3.x >= 0.984375);
  r3.w = 1.01587307 * r3.x;
  r3.x = r3.x * 64 + -63;
  r3.x = r6.x ? r3.x : r3.w;
  r3.x = max(9.99999994e-09, r3.x);
  r6.y = rcp(r3.x);
  r3.xw = r6.xy ? r0.ww : 0;
  r5.zw = renderTargetSize.zw * r5.xy;
  r6.xyzw = gSSAOTexture.Gather(samplerLinearClamp_s, r5.zw).xyzw;
  r7.xyzw = gSSAODepthTexture.Gather(samplerLinearClamp_s, r5.zw).xyzw;
  r5.zw = float2(0.5,0.5) * r5.xy;
  r5.zw = frac(r5.zw);
  r8.xy = float2(1,1) + -r5.wz;
  r9.y = r8.y * r8.x;
  r9.xz = r8.xy * r5.zw;
  r9.w = r5.z * r5.w;
  r0.w = dot(r6.xyzw, r9.xyzw);
  r7.xyzw = r7.xyzw + -r3.wwww;
  r5.z = min(abs(r7.z), abs(r7.w));
  r5.z = min(abs(r7.y), r5.z);
  r5.z = min(abs(r7.x), r5.z);
  r5.w = max(abs(r7.z), abs(r7.w));
  r5.w = max(abs(r7.y), r5.w);
  r5.w = max(abs(r7.x), r5.w);
  r7.xyz = cmp(r5.zzz == abs(r7.yzw));
  r5.z = r7.x ? r6.y : r6.x;
  r5.z = r7.y ? r6.z : r5.z;
  r5.z = r7.z ? r6.w : r5.z;
  r6.x = 0.00999999978 * r3.w;
  r5.w = cmp(r6.x < r5.w);
  r0.w = r5.w ? r5.z : r0.w;
  r0.w = r4.z * r0.w;
  if (showAO != 0) {
    r4.z = 0.75 * r0.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xyyy, r4.zzzz
    return;
  } else {
    r4.z = enableAO ? r0.w : 1;
  }
  r0.w = cmp(r2.z >= 0.5);
  r6.xyz = GBufferDiffuseColor.Load(r1.xyw).xyz;
  r7.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r8.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r9.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r10.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyz, int3(0, 0, 0)).xyw;
  r1.zw = -subpixelOffset.xy + r5.xy;
  r1.zw = renderTargetSize.zw * r1.zw;
  r1.zw = r1.zw * float2(2,-2) + float2(-1,1);
  r5.x = inverseProjectionMatrix._m00 * r1.z;
  r5.y = inverseProjectionMatrix._m11 * r1.w;
  r5.z = 1;
  r5.xyz = r5.xyz * r3.www;
  r11.xyz = inverseViewMatrix._m10_m11_m12 * r5.yyy;
  r5.xyw = r5.xxx * inverseViewMatrix._m00_m01_m02 + r11.xyz;
  r5.xyz = r5.zzz * inverseViewMatrix._m20_m21_m22 + r5.xyw;
  r1.z = r2.w * 3 + 0.5;
  r1.z = (uint)r1.z;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r2.xy = float2(0.850000024,0.850000024) * r2.xy;
  r1.w = dot(r2.xy, r2.xy);
  r11.zw = float2(2,1) + -r1.ww;
  r1.w = sqrt(r11.z);
  r11.xy = r2.xy * r1.ww;
  r12.xyzw = (int4)r1.zzzz & int4(2,1,2,1);
  r12.xyzw = r12.zwxy ? float4(-1,-1,1.40129846e-45,1.40129846e-45) : float4(1,1,0,0);
  r1.z = (int)r12.w ^ (int)r12.z;
  r12.z = r1.z ? -1 : 1;
  r2.xyw = float3(-1,0,1) * r12.xyz;
  r13.xyz = float3(1,-2,1) * r12.xyz;
  r11.xyz = float3(0.408248305,0.707106769,0.577350259) * r11.xyw;
  r2.xyw = r11.yyy * r2.xyw;
  r2.xyw = r13.xyz * r11.xxx + r2.xyw;
  r11.xyz = r12.xyz * r11.zzz + r2.xyw;
  r0.w = r0.w ? -0.5 : -0.00146627566;
  r0.w = r2.z + r0.w;
  r2.y = saturate(2.00982332 * r0.w);
  r0.w = dot(-r5.xyz, -r5.xyz);
  r0.w = rsqrt(r0.w);
  r12.xyz = -r5.xyz * r0.www;
  r1.z = dot(r3.yz, float2(0.0671105608,0.00583714992));
  r1.z = frac(r1.z);
  r1.z = 52.9829178 * r1.z;
  r1.z = frac(r1.z);
  r1.z = r1.z * 6.28318548 + gameTick.w;
  sincos(r1.z, r13.x, r14.x);
  r2.x = saturate(dot(r11.xyz, r12.xyz));
  r1.z = dot(-r12.xyz, r11.xyz);
  r1.z = r1.z + r1.z;
  r15.xyz = r11.xyz * -r1.zzz + -r12.xyz;
  r1.z = 17 * r2.y;
  r1.z = exp2(r1.z);
  r1.z = 2 + r1.z;
  r1.z = 2 / r1.z;
  r1.w = sqrt(r1.z);
  r2.zw = float2(0.5,0.5) * renderTargetSize.xy;
  r2.zw = (uint2)r2.zw;
  r2.zw = cmp((int2)r1.xy == (int2)r2.zw);
  r2.z = r2.w ? r2.z : 0;
  r2.w = dot(r11.xyz, sunConstants.wldDir.xyz);
  r3.y = saturate(r2.w);
  r3.z = cmp(0 >= r3.y);
  if (r3.z != 0) {
    r3.w = 0;
  }
  if (r3.z == 0) {
    r13.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * r5.yyy;
    r13.yzw = r5.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r13.yzw;
    r13.yzw = r5.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r13.yzw;
    r13.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r13.yzw;
    r3.z = -sunConstants.splitDepthOffset + r13.w;
    r3.z = -r3.z * 6.10351563e-05 + 1;
    r6.w = saturate(r3.z);
    r6.w = cmp(r3.z == r6.w);
    if (r6.w != 0) {
      r6.w = 0;
      r7.w = 0;
      while (true) {
        r8.w = cmp(r6.w >= 3);
        if (r8.w != 0) break;
        r8.w = (uint)r6.w;
        r14.yz = -sunConstants.splitPinTransform[r8.w].xy + r13.yz;
        r9.w = max(abs(r14.y), abs(r14.z));
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
      r14.yzw = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r16.xz = rcp(r14.yy);
      r16.y = -r16.z;
      r14.yzw = r13.yzy * r16.xyz + r14.zwz;
      r16.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r14.yzw = max(float3(0,0,0), r14.yzw);
      r14.yzw = min(r14.yzw, r16.xyz);
      r16.xy = sunConstants.sstLightingConstants.coordScale * r14.wz;
      r16.xy = floor(r16.xy);
      r9.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r16.y;
      r9.w = r9.w * sunConstants.sstLightingConstants.coordScale + r16.x;
      r9.w = (uint)r9.w;
      r9.w = (int)r9.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.w, r9.w, l(0), t23.xxxx
    r10.w = samp0[]..swiz;
      r12.w = (int)r10.w & 0x40000000;
      r16.x = (uint)r10.w << 2;
      if (r12.w == 0) {
        r12.w = (int)r10.w & 0x01ffffff;
        r17.x = (int)r9.w + (int)r12.w;
        r9.w = (uint)r10.w >> 25;
        r9.w = (uint)r9.w;
        r14.yzw = r14.yzw * r9.www;
        r14.yzw = frac(r14.yzw);
        r14.yzw = float3(128,128,128) * r14.yzw;
        r14.yzw = (uint3)r14.yzw;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
      r17.z = samp0[]..swiz;
        r16.yz = (uint2)r14.wz >> int2(6,6);
        r9.w = (int)r17.z & 0xc0000000;
        r10.w = (int)r17.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.w, r10.w, l(0), t23.xxxx
      r10.w = samp0[]..swiz;
        r10.w = r16.z ? r17.z : r10.w;
        r12.w = (uint)r10.w >> 13;
        r10.w = r16.y ? r12.w : r10.w;
        r10.w = (int)r10.w & 8191;
        r18.x = (int)r10.w + (int)r17.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
      r18.z = samp0[]..swiz;
        r17.y = 0;
        r18.y = 1;
        r16.yzw = r9.www ? r17.xyz : r18.xyz;
        r18.yz = r9.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r19.xy = (uint2)r14.wz >> (uint2)r18.yy;
        r19.xy = (int2)r19.xy & int2(1,1);
        r10.w = (int)r16.w & 0xc0000000;
        r12.w = (int)r16.y + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.w, r12.w, l(0), t23.xxxx
      r12.w = samp0[]..swiz;
        r12.w = r19.y ? r16.w : r12.w;
        r17.w = (uint)r12.w >> 13;
        r12.w = r19.x ? r17.w : r12.w;
        r12.w = (int)r12.w & 8191;
        r18.x = (int)r12.w + (int)r16.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.x, l(0), t23.xxxx
      r18.w = samp0[]..swiz;
        r16.yzw = r10.www ? r16.yzw : r18.xzw;
        r16.yzw = r9.www ? r17.xyz : r16.yzw;
        r9.w = (int)r16.w & 0xc0000000;
        if (r9.w == 0) {
          r9.w = (int)-r16.z + 6;
          r17.xy = (uint2)r14.wz >> (uint2)r9.ww;
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
          r18.xy = (uint2)r14.wz >> (uint2)r9.ww;
          r9.w = (int)r17.w & 0xc0000000;
          r10.w = (int)r17.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r12.w = (((uint)r18.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r12.w = (((uint)r18.x << 0) & bitmask.w) | ((uint)r12.w & ~bitmask.w);
          r12.w = (int)r12.w * 10;
          r10.w = (uint)r10.w >> (uint)r12.w;
          r10.w = (int)r10.w & 1023;
          r18.x = (int)r10.w + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
        r18.z = samp0[]..swiz;
          r18.y = r17.z;
          r18.xyz = r9.www ? r17.xyw : r18.xyz;
          r10.w = (int)-r18.y + 6;
          r17.yz = (uint2)r14.wz >> (uint2)r10.ww;
          r10.w = (int)r18.z & 0xc0000000;
          r12.w = (int)r18.z | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r16.z = (((uint)r17.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r16.z = (((uint)r17.y << 0) & bitmask.z) | ((uint)r16.z & ~bitmask.z);
          r16.z = (int)r16.z * 10;
          r12.w = (uint)r12.w >> (uint)r16.z;
          r12.w = (int)r12.w & 1023;
          r19.x = (int)r12.w + (int)r18.x;
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
          r12.w = (uint)r17.x;
          r12.w = sunConstants.sstLightingConstants.constants.spanInInches * r12.w;
          r12.w = 3.05185094e-05 * r12.w;
          r16.z = (int)r14.z & 3;
          r16.z = (int)r16.z + (int)r16.y;
          r16.z = (int)r16.z + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.z, l(0), t23.xxxx
        r16.z = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r17.x = (((uint)r14.y << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.z = ((~(-1 << 2)) << 1) & 0xffffffff;  r17.z = (((uint)r14.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.w = ((~(-1 << 1)) << 4) & 0xffffffff;  r17.w = (((uint)r14.w << 4) & bitmask.w) | ((uint)0 & ~bitmask.w);
          r14.y = (uint)r16.z >> (uint)r17.x;
          r14.y = (int)r14.y & 255;
          r14.y = (uint)r14.y;
          r14.y = r14.y * r12.w;
          r14.y = r14.y * 0.00392156886 + r10.w;
          r14.z = (int)r17.z + 1;
          if (1 == 0) r14.w = 0; else if (1+1 < 32) {           r14.w = (uint)r14.w << (32-(1 + 1)); r14.w = (uint)r14.w >> (32-1);          } else r14.w = (uint)r14.w >> 1;
          r14.z = (int)r14.w + (int)r14.z;
          r14.z = (int)r14.z + (int)r16.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.z, r14.z, l(0), t23.xxxx
        r14.z = samp0[]..swiz;
          r14.z = (uint)r14.z >> (uint)r17.w;
          r14.z = (int)r14.z & 0x0000ffff;
          r14.z = (uint)r14.z;
          r12.w = r14.z * r12.w;
          r10.w = r12.w * 1.52590219e-05 + r10.w;
          r16.x = r17.y ? r14.y : r10.w;
        } else {
          r10.w = (int)r16.w & 0x80000000;
          r12.w = (int)r16.y + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.w, r12.w, l(0), t23.xxxx
        r12.w = samp0[]..swiz;
          r10.w = r10.w ? r12.w : 0;
          r12.w = (uint)r16.w << 2;
          r14.y = (uint)r10.w >> 16;
          r14.y = f16tof32(r14.y);
          r10.w = (int)r10.w & 0x0000ffff;
          r10.w = f16tof32(r10.w);
          r12.w = r13.y * r14.y + r12.w;
          r10.w = r13.z * r10.w + r12.w;
          r16.x = r9.w ? r10.w : r16.x;
        }
      }
      r9.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r13.w;
      r9.w = cmp(r16.x < r9.w);
      r3.w = r9.w ? 0 : 1;
    }
    if (r8.w == 0) {
      if (enableDitheredShadow == 0) {
        r8.w = (uint)r6.w;
        r14.yz = -sunConstants.splitPinTransform[r8.w].xy + r13.yz;
        r14.yz = sunConstants.splitPinTransform[r8.w].zz * r14.yz;
        r16.xy = r14.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r8.w = (int16)sunConstants.splitArrayOffset;
        r16.z = r8.w + r6.w;
        r8.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r3.z).x;
        r9.w = gTransShadowmapArray.SampleLevel(samp0_s, r16.xyz, 0).x;
        r8.w = r9.w + r8.w;
        r8.w = saturate(-1 + r8.w);
        r9.w = r8.w * r8.w;
        r3.w = r9.w * r8.w;
      }
      if (enableDitheredShadow != 0) {
        r16.x = -r13.x;
        r8.w = (uint)r6.w;
        r6.w = 1 + r6.w;
        r6.w = min(2, r6.w);
        r6.w = (uint)r6.w;
        r7.w = 1 + -r7.w;
        r7.w = 28 * r7.w;
        r7.w = (uint)r7.w;
        r14.yz = -sunConstants.splitPinTransform[r8.w].xy + r13.yz;
        r14.yz = sunConstants.splitPinTransform[r8.w].zz * r14.yz;
        r14.yz = r14.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r13.yz = -sunConstants.splitPinTransform[r6.w].xy + r13.yz;
        r13.yz = sunConstants.splitPinTransform[r6.w].zz * r13.yz;
        r13.yz = r13.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r16.y = r14.x;
        r16.z = r13.x;
        r9.w = 0;
        r10.w = 0;
        while (true) {
          r12.w = cmp((uint)r10.w >= 8);
          if (r12.w != 0) break;
          r12.w = cmp((uint)r7.w < (uint)r10.w);
          r17.xy = r12.ww ? r13.yz : r14.yz;
          r13.w = r12.w ? sunConstants.splitPinTransform[r6.w].w : sunConstants.splitPinTransform[r8.w].w;
          r12.w = r12.w ? r6.w : r8.w;
          r18.x = dot(icb[r10.w+0].yx, r16.xy);
          r18.y = dot(icb[r10.w+0].yx, r16.yz);
          r17.xy = r18.xy * r13.ww + r17.xy;
          r12.w = (int)r12.w + (int16)sunConstants.splitArrayOffset;
          r17.z = (uint)r12.w;
          r12.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r3.z).x;
          r13.w = gTransShadowmapArray.SampleLevel(samp0_s, r17.xyz, 0).x;
          r12.w = r13.w + r12.w;
          r12.w = saturate(-1 + r12.w);
          r9.w = r12.w * 0.125 + r9.w;
          r10.w = (int)r10.w + 1;
        }
        r3.z = r9.w * r9.w;
        r3.w = r3.z * r9.w;
      }
    }
  }
  r3.z = 1 + -r2.y;
  r3.z = 5 * r3.z;
  r13.yzw = -globalProbeConstants.data[0].xyz + r5.xyz;
  r16.x = globalProbeConstants.data[0].w * r13.y;
  r16.yz = globalProbeConstants.data[1].xy * r13.zw;
  r13.yzw = saturate(float3(0.5,0.5,0.5) + r16.xyz);
  r16.xy = globalProbeConstants.data[1].zw * r13.yz;
  r16.z = globalProbeConstants.data[2].x * r13.w;
  r13.yzw = globalProbeConstants.data[2].yzw + r16.xyz;
  r14.yzw = cmp(float3(0,0,0) < r11.xyz);
  r16.xyz = r14.yzw ? float3(0,0,0) : float3(0.5,0.5,0.5);
  r16.w = 0;
  r14.yzw = r16.wwx + r13.yzw;
  r14.yzw = gProbeXArray.SampleLevel(samplerLinearClamp_s, r14.yzw, 0).xyz;
  r17.xyz = r11.xyz * r11.xyz;
  r17.xyz = sunConstants.globalProbeExposure * r17.xyz;
  r18.xyz = r16.wwy + r13.yzw;
  r18.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r18.xyz, 0).xyz;
  r18.xyz = r18.xyz * r17.yyy;
  r14.yzw = r14.yzw * r17.xxx + r18.xyz;
  r13.yzw = r16.wwz + r13.yzw;
  r13.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r13.yzw, 0).xyz;
  r13.yzw = r13.yzw * r17.zzz + r14.yzw;
  r11.w = 0;
  r14.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, 6).xyz;
  r13.yzw = r14.yzw * r13.yzw;
  r6.w = dot(r13.yzw, float3(0.212599993,0.715200007,0.0722000003));
  r15.w = 0;
  r14.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r15.xyzw, r3.z).xyz;
  r3.z = sunConstants.globalProbeExposure + -r6.w;
  r3.z = r2.y * r3.z + r6.w;
  r14.yzw = r14.yzw * r3.zzz;
  r3.z = r2.x + r4.z;
  r3.z = log2(abs(r3.z));
  r3.z = r3.z * r1.w;
  r3.z = exp2(r3.z);
  r3.z = r3.z + r4.z;
  r3.z = saturate(-1 + r3.z);
  r16.xyz = r13.yzw * r4.zzz;
  r13.yz = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r13.yz = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r13.yz, 0).xy;
  r14.yzw = r14.yzw * r3.zzz;
  r17.xyz = r14.zwy * r13.yyy;
  r13.yzw = r14.yzw * r13.zzz;
  r2.y = sqrt(r1.w);
  r2.y = r2.y * 0.5 + 0.5;
  r2.y = r2.y * r2.y;
  r3.z = 0.5 * r2.y;
  r2.y = -r2.y * 0.5 + 1;
  r4.z = r2.x * r2.y + r3.z;
  r2.y = r4.z * r2.y;
  r3.z = r4.z * r3.z;
  if (r2.z != 0) {
    r18.x = 3;
    r18.yzw = eyeOffset.xyz;
    GBufferDiffuseColor[viewID].112 = u2.xyzw;
  }
  r4.z = cmp(0 < r3.y);
  if (r4.z != 0) {
    if (r2.z != 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r4.z, cb2[52].x, l(112), u2.xxxx
    r4.z = samp0[]..swiz;
      r4.z = (int)r4.z | 4;
      GBufferDiffuseColor[viewID].112 = u2.x;
      GBufferDiffuseColor[viewID].128 = u2.x;
    }
    r4.z = cmp(0 < r3.w);
    if (r4.z != 0) {
      r4.z = sunConstants.specScale * r1.z;
      r4.z = r4.z * r3.y;
      if (sunConstants.sunCookieIndex != 0) {
        r18.xyz = eyeOffset.xyz + r5.xyz;
        r18.w = 1;
        r6.w = dot(sunConstants.sunCookieTransform[0].xyzw, r18.xyzw);
        r7.w = dot(sunConstants.sunCookieTransform[1].xyzw, r18.xyzw);
        r18.x = frac(r6.w);
        r18.y = frac(r7.w);
        r6.w = -1 + (int14)sunConstants.sunCookieIndex;
        r18.z = (uint)r6.w;
        r14.yzw = gCookieArray.SampleLevel(samplerLinear_s, r18.xyz, 0).xyz;
        r14.yzw = float3(-1,-1,-1) + r14.yzw;
        r14.yzw = sunConstants.sunCookieIntensity * r14.yzw + float3(1,1,1);
        r14.yzw = sunConstants.color.xyz * r14.yzw;
      } else {
        r14.yzw = sunConstants.color.xyz;
      }
      r6.w = viewmodelSunShadowRaw >> 16;
      r7.w = cmp(0 < (uint)r6.w);
      r7.w = r7.w ? r3.x : 0;
      if (r7.w != 0) {
        r6.w = (int)r6.w + numLights;
        r6.w = mad((int)r6.w, 15, -15);
        r7.w = abs(r2.w) * -0.200000003 + 0.400000006;
        r18.xyz = r11.xyz * r7.www + r5.xyz;
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
            r19.x = -r13.x;
            r20.z = (uint)r8.w;
            r19.y = r14.x;
            r19.z = r13.x;
            r9.w = 0;
            r10.w = 0;
            while (true) {
              r11.w = cmp((int)r10.w >= 8);
              if (r11.w != 0) break;
              r21.x = dot(icb[r10.w+0].yx, r19.xy);
              r21.y = dot(icb[r10.w+0].yx, r19.yz);
              r20.xy = r21.xy * lightConstantsCB[r6.w].data[3].yy + r18.xy;
              r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r7.w).x;
              r9.w = r11.w * 0.125 + r9.w;
              r10.w = (int)r10.w + 1;
            }
          } else {
            r18.z = (uint)r8.w;
            r9.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r7.w).x;
          }
          r6.w = r9.w * r9.w;
          r6.w = r6.w * r9.w;
        } else {
          r6.w = 1;
        }
        r3.w = r6.w * r3.w;
      } else {
        r6.w = viewmodelSunShadowRaw & 0x0000ffff;
        r7.w = cmp(0 < (uint)r6.w);
        r8.w = ~(int)r3.x;
        r7.w = r7.w ? r8.w : 0;
        if (r7.w != 0) {
          r6.w = (int)r6.w + numLights;
          r6.w = mad((int)r6.w, 15, -15);
          r7.w = abs(r2.w) * -0.200000003 + 0.400000006;
          r18.xyz = r11.xyz * r7.www + r5.xyz;
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
              r19.x = -r13.x;
              r20.z = (uint)r8.w;
              r19.y = r14.x;
              r19.z = r13.x;
              r9.w = 0;
              r10.w = 0;
              while (true) {
                r11.w = cmp((int)r10.w >= 8);
                if (r11.w != 0) break;
                r21.x = dot(icb[r10.w+0].yx, r19.xy);
                r21.y = dot(icb[r10.w+0].yx, r19.yz);
                r20.xy = r21.xy * lightConstantsCB[r6.w].data[3].yy + r18.xy;
                r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r7.w).x;
                r9.w = r11.w * 0.125 + r9.w;
                r10.w = (int)r10.w + 1;
              }
            } else {
              r18.z = (uint)r8.w;
              r9.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r7.w).x;
            }
            r6.w = r9.w * r9.w;
            r6.w = r6.w * r9.w;
          } else {
            r6.w = 1;
          }
          r3.w = r6.w * r3.w;
        }
      }
      r6.w = -r2.x * 0.5 + 1;
      r6.w = -r3.y * r6.w + 1;
      r6.w = r6.w * r6.w;
      r6.w = -r6.w * 0.620000005 + 0.620000005;
      r6.w = r6.w + -r3.y;
      r6.w = r1.w * r6.w + r3.y;
      r6.w = r6.w * r3.w;
      r2.w = cmp(0 < r2.w);
      r18.xyz = r6.www * r14.yzw + r16.xyz;
      r19.xyz = -r5.xyz * r0.www + sunConstants.wldDir.xyz;
      r0.w = dot(r19.xyz, r19.xyz);
      r0.w = rsqrt(r0.w);
      r19.xyz = r19.xyz * r0.www;
      r0.w = dot(r19.xyz, r12.xyz);
      r6.w = dot(r11.xyz, r19.xyz);
      r7.w = abs(r6.w) * r1.z + -abs(r6.w);
      r6.w = abs(r6.w) * r7.w + 1;
      r3.y = r3.y * r2.y + r3.z;
      r6.w = r6.w * r6.w;
      r3.y = r6.w * r3.y;
      r3.y = rcp(r3.y);
      r3.y = r3.y * r4.z;
      r3.y = r3.w * r3.y;
      r3.y = 0.25 * r3.y;
      r19.xyz = r3.yyy * r14.yzw + r13.yzw;
      r0.w = saturate(1 + -r0.w);
      r4.z = r0.w * r0.w;
      r4.z = r4.z * r4.z;
      r0.w = r4.z * r0.w;
      r0.w = r3.y * r0.w;
      r20.xyz = r0.www * r14.zwy + r17.xyz;
      r18.w = r20.z;
      r16.w = r17.z;
      r16.xyzw = r2.wwww ? r18.xyzw : r16.xyzw;
      r20.zw = r19.xy;
      r17.zw = r13.yz;
      r18.xyzw = r2.wwww ? r20.xyzw : r17.xyzw;
      r13.w = r2.w ? r19.z : r13.w;
      if (r2.z != 0) {
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r0.w, cb2[52].x, l(112), u2.xxxx
      r0.w = samp0[]..swiz;
        r0.w = (int)r0.w | 8;
        GBufferDiffuseColor[viewID].112 = u2.x;
        GBufferDiffuseColor[viewID].132 = u2.x;
      }
      r17.z = r16.w;
      r17.xy = r18.xy;
      r13.yz = r18.zw;
      r0.w = 0x00010101;
    } else {
      r0.w = 257;
    }
  } else {
    r0.w = 1;
  }
  r0.x = (uint)r0.x >> 24;
  r0.x = (int)r0.x * 15;
  if (3 == 0) r2.w = 0; else if (3+24 < 32) {   r2.w = (uint)lightConstantsCB[r0.x].data[1].w << (32-(3 + 24)); r2.w = (uint)r2.w >> (32-3);  } else r2.w = (uint)lightConstantsCB[r0.x].data[1].w >> 24;
  switch (r2.w) {
    case 4 :    if (r2.z != 0) {
      r18.yzw = lightConstantsCB[r0.x].data[0].xyz + eyeOffset.xyz;
      r18.x = 2;
      GBufferDiffuseColor[viewID].136 = u2.xyzw;
    }
    r2.w = (int)r0.w + 1;
    r3.y = cmp(0 < lightConstantsCB[r0.x].data[6].y);
    r18.xy = lightConstantsCB[r0.x].data[5].zw;
    r18.z = lightConstantsCB[r0.x].data[6].x;
    r14.yzw = -r18.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r0.x].data[0].xyz;
    r19.xyz = r14.yzw + -r5.xyz;
    r3.w = dot(r18.xyz, r19.xyz);
    r4.z = saturate(-r3.w / lightConstantsCB[r0.x].data[6].y);
    r20.xyz = r4.zzz * r18.xyz + r14.yzw;
    r20.xyz = r3.yyy ? r20.xyz : lightConstantsCB[r0.x].data[0].xyz;
    r20.xyz = r20.xyz + -r5.xyz;
    r6.w = dot(r20.xyz, r20.xyz);
    r7.w = rsqrt(r6.w);
    r20.xyz = r20.xyz * r7.www;
    r7.w = dot(r11.xyz, r20.xyz);
    r8.w = saturate(r7.w);
    r9.w = cmp(0 < r8.w);
    if (r9.w != 0) {
      r9.w = sqrt(r6.w);
      r10.w = lightConstantsCB[r0.x].data[3].x * lightConstantsCB[r0.x].data[3].x;
      r6.w = r10.w / r6.w;
      r6.w = min(1, r6.w);
      r20.xy = saturate(r9.ww * lightConstantsCB[r0.x].data[2].xz + lightConstantsCB[r0.x].data[2].yw);
      r20.zw = r20.xy * r20.xy;
      r20.xy = r20.xy * float2(-2,-2) + float2(3,3);
      r20.xy = r20.zw * r20.xy;
      r6.w = r20.x * r6.w;
      r6.w = r6.w * r20.y;
      r9.w = cmp(0 < r6.w);
      if (r9.w != 0) {
        if (3 == 0) r9.w = 0; else if (3+27 < 32) {         r9.w = (uint)lightConstantsCB[r0.x].data[1].w << (32-(3 + 27)); r9.w = (uint)r9.w >> (32-3);        } else r9.w = (uint)lightConstantsCB[r0.x].data[1].w >> 27;
        if (r2.z != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r10.w, cb2[52].x, l(136), u2.xxxx
        r10.w = samp0[]..swiz;
          r10.w = (int)r10.w | 4;
          GBufferDiffuseColor[viewID].136 = u2.x;
          GBufferDiffuseColor[viewID].152 = u2.x;
        }
        r10.w = (int)r0.w + 257;
        r9.w = cmp((int)r9.w != 1);
        if (r9.w != 0) {
          r20.xy = (uint2)r1.yx;
          r9.w = dot(r20.xy, float2(0.0671105608,0.00583714992));
          r9.w = frac(r9.w);
          r9.w = 52.9829178 * r9.w;
          r9.w = frac(r9.w);
          r9.w = r9.w * 6.28318548 + gameTick.w;
          sincos(r9.w, r20.x, r21.x);
          r9.w = abs(r7.w) * -0.200000003 + 0.400000006;
          r20.yzw = r11.xyz * r9.www + r5.xyz;
          r20.yzw = -lightConstantsCB[r0.x].data[4].yzw + r20.yzw;
          r9.w = max(abs(r20.z), abs(r20.w));
          r9.w = max(abs(r20.y), r9.w);
          r9.w = lightConstantsCB[r0.x].data[5].x / r9.w;
          r9.w = lightConstantsCB[r0.x].data[5].y + r9.w;
          r11.w = dot(r20.yzw, r20.yzw);
          r11.w = rsqrt(r11.w);
          r9.w = max(6.10351563e-05, r9.w);
          r12.w = 0x0000ffff & (int)lightConstantsCB[r0.x].data[1].w;
          r22.x = -r13.x;
          r23.w = (uint)r12.w;
          r22.y = r14.x;
          r22.z = r13.x;
          r12.w = 0;
          r15.w = 0;
          while (true) {
            r16.w = cmp((int)r15.w >= 8);
            if (r16.w != 0) break;
            r21.y = dot(icb[r15.w+0].yx, r22.xy);
            r21.z = dot(icb[r15.w+0].yx, r22.yz);
            r24.yz = lightConstantsCB[r0.x].data[3].yy * r21.yz;
            r24.x = r24.y * r21.x;
            r24.w = r24.y * r20.x;
            r23.xyz = r20.yzw * r11.www + r24.xzw;
            r16.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyzw, r9.w).x;
            r12.w = r16.w * 0.125 + r12.w;
            r15.w = (int)r15.w + 1;
          }
        } else {
          r12.w = 1;
        }
        r6.w = r12.w * r6.w;
        r9.w = cmp(0 < r6.w);
        if (r9.w != 0) {
          r9.w = lightConstantsCB[r0.x].data[1].z * r1.z;
          r9.w = 0.25 * r9.w;
          r11.w = dot(r18.xyz, r15.xyz);
          r12.w = dot(r15.xyz, r19.xyz);
          r15.x = -r11.w * r11.w + lightConstantsCB[r0.x].data[6].y;
          r3.w = r11.w * r12.w + -r3.w;
          r3.w = saturate(r3.w / r15.x);
          r11.w = r15.x / lightConstantsCB[r0.x].data[6].y;
          r11.w = 10 * r11.w;
          r11.w = min(1, r11.w);
          r3.w = r3.w + -r4.z;
          r3.w = r11.w * r3.w + r4.z;
          r14.yzw = r3.www * r18.xyz + r14.yzw;
          r14.yzw = r3.yyy ? r14.yzw : lightConstantsCB[r0.x].data[0].xyz;
          r14.yzw = r14.yzw + -r5.xyz;
          r3.y = dot(r14.yzw, r14.yzw);
          r3.y = rsqrt(r3.y);
          r15.xyz = r14.yzw * r3.yyy;
          if (4 == 0) r3.w = 0; else if (4+16 < 32) {           r3.w = (uint)lightConstantsCB[r0.x].data[1].w << (32-(4 + 16)); r3.w = (uint)r3.w >> (32-4);          } else r3.w = (uint)lightConstantsCB[r0.x].data[1].w >> 16;
          r4.z = cmp(0 < (uint)r3.w);
          r4.z = r4.z ? r3.x : 0;
          if (r4.z != 0) {
            r3.w = (int)r3.w + numLights;
            r3.w = mad((int)r3.w, 15, -15);
            r4.z = abs(r7.w) * -0.200000003 + 0.400000006;
            r18.xyz = r11.xyz * r4.zzz + r5.xyz;
            r19.xyz = lightConstantsCB[r3.w].data[6].yzw;
            r19.w = lightConstantsCB[r3.w].data[7].x;
            r18.w = 1;
            r4.z = dot(r19.xyzw, r18.xyzw);
            r19.xyz = lightConstantsCB[r3.w].data[7].yzw;
            r19.w = lightConstantsCB[r3.w].data[8].x;
            r11.w = dot(r19.xyzw, r18.xyzw);
            r12.w = cmp(r11.w < r4.z);
            if (r12.w == 0) {
              r19.xyz = lightConstantsCB[r3.w].data[4].yzw;
              r19.w = lightConstantsCB[r3.w].data[5].x;
              r19.x = dot(r19.xyzw, r18.xyzw);
              r20.xyz = lightConstantsCB[r3.w].data[5].yzw;
              r20.w = lightConstantsCB[r3.w].data[6].x;
              r19.y = dot(r20.xyzw, r18.xyzw);
              r18.xy = r19.xy / r11.ww;
              r18.xy = r18.xy * float2(0.5,-0.5) + float2(0.5,0.5);
              r19.x = lightConstantsCB[r3.w].data[9].w + r18.x;
              r19.y = lightConstantsCB[r3.w].data[10].x + r18.y;
              r18.xy = lightConstantsCB[r3.w].data[9].yz * r19.xy;
              r18.zw = lightConstantsCB[r3.w].data[3].yy / lightConstantsCB[r3.w].data[8].yw;
              r19.xy = float2(1,1) + -r18.zw;
              r19.xy = cmp(r18.xy >= r19.xy);
              r18.zw = cmp(r18.zw >= r18.xy);
              r18.zw = (int2)r18.zw | (int2)r19.xy;
              r15.w = (int)r18.w | (int)r18.z;
              if (r15.w == 0) {
                r18.xy = saturate(r18.xy);
                r19.x = r18.x * lightConstantsCB[r3.w].data[8].y + lightConstantsCB[r3.w].data[8].z;
                r19.y = r18.y * lightConstantsCB[r3.w].data[8].w + lightConstantsCB[r3.w].data[9].x;
                r16.w = lightConstantsCB[r3.w].data[10].z * r11.w;
                r4.z = lightConstantsCB[r3.w].data[10].y * r11.w + r4.z;
                r4.z = r4.z / r16.w;
              }
            } else {
              r15.w = -1;
            }
            r11.w = (int)r12.w | (int)r15.w;
            if (r11.w == 0) {
              r4.z = max(6.10351563e-05, r4.z);
              r11.w = 0x0000ffff & (int)lightConstantsCB[r3.w].data[1].w;
              if (enableDitheredShadow != 0) {
                r18.x = -r13.x;
                r20.z = (uint)r11.w;
                r18.y = r14.x;
                r18.z = r13.x;
                r12.w = 0;
                r15.w = 0;
                while (true) {
                  r16.w = cmp((int)r15.w >= 8);
                  if (r16.w != 0) break;
                  r21.x = dot(icb[r15.w+0].yx, r18.xy);
                  r21.y = dot(icb[r15.w+0].yx, r18.yz);
                  r20.xy = r21.xy * lightConstantsCB[r3.w].data[3].yy + r19.xy;
                  r16.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r4.z).x;
                  r12.w = r16.w * 0.125 + r12.w;
                  r15.w = (int)r15.w + 1;
                }
              } else {
                r19.z = (uint)r11.w;
                r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r4.z).x;
              }
              r3.w = r12.w * r12.w;
              r3.w = r3.w * r12.w;
            } else {
              r3.w = 1;
            }
            r6.w = r6.w * r3.w;
          } else {
            if (4 == 0) r3.w = 0; else if (4+20 < 32) {             r3.w = (uint)lightConstantsCB[r0.x].data[1].w << (32-(4 + 20)); r3.w = (uint)r3.w >> (32-4);            } else r3.w = (uint)lightConstantsCB[r0.x].data[1].w >> 20;
            r4.z = cmp(0 < (uint)r3.w);
            r11.w = ~(int)r3.x;
            r4.z = r4.z ? r11.w : 0;
            if (r4.z != 0) {
              r3.w = (int)r3.w + numLights;
              r3.w = mad((int)r3.w, 15, -15);
              r4.z = abs(r7.w) * -0.200000003 + 0.400000006;
              r18.xyz = r11.xyz * r4.zzz + r5.xyz;
              r19.xyz = lightConstantsCB[r3.w].data[6].yzw;
              r19.w = lightConstantsCB[r3.w].data[7].x;
              r18.w = 1;
              r4.z = dot(r19.xyzw, r18.xyzw);
              r19.xyz = lightConstantsCB[r3.w].data[7].yzw;
              r19.w = lightConstantsCB[r3.w].data[8].x;
              r11.w = dot(r19.xyzw, r18.xyzw);
              r12.w = cmp(r11.w < r4.z);
              if (r12.w == 0) {
                r19.xyz = lightConstantsCB[r3.w].data[4].yzw;
                r19.w = lightConstantsCB[r3.w].data[5].x;
                r19.x = dot(r19.xyzw, r18.xyzw);
                r20.xyz = lightConstantsCB[r3.w].data[5].yzw;
                r20.w = lightConstantsCB[r3.w].data[6].x;
                r19.y = dot(r20.xyzw, r18.xyzw);
                r18.xy = r19.xy / r11.ww;
                r18.xy = r18.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r19.x = lightConstantsCB[r3.w].data[9].w + r18.x;
                r19.y = lightConstantsCB[r3.w].data[10].x + r18.y;
                r18.xy = lightConstantsCB[r3.w].data[9].yz * r19.xy;
                r18.zw = lightConstantsCB[r3.w].data[3].yy / lightConstantsCB[r3.w].data[8].yw;
                r19.xy = float2(1,1) + -r18.zw;
                r19.xy = cmp(r18.xy >= r19.xy);
                r18.zw = cmp(r18.zw >= r18.xy);
                r18.zw = (int2)r18.zw | (int2)r19.xy;
                r15.w = (int)r18.w | (int)r18.z;
                if (r15.w == 0) {
                  r18.xy = saturate(r18.xy);
                  r19.x = r18.x * lightConstantsCB[r3.w].data[8].y + lightConstantsCB[r3.w].data[8].z;
                  r19.y = r18.y * lightConstantsCB[r3.w].data[8].w + lightConstantsCB[r3.w].data[9].x;
                  r16.w = lightConstantsCB[r3.w].data[10].z * r11.w;
                  r4.z = lightConstantsCB[r3.w].data[10].y * r11.w + r4.z;
                  r4.z = r4.z / r16.w;
                }
              } else {
                r15.w = -1;
              }
              r11.w = (int)r12.w | (int)r15.w;
              if (r11.w == 0) {
                r4.z = max(6.10351563e-05, r4.z);
                r11.w = 0x0000ffff & (int)lightConstantsCB[r3.w].data[1].w;
                if (enableDitheredShadow != 0) {
                  r18.x = -r13.x;
                  r20.z = (uint)r11.w;
                  r18.y = r14.x;
                  r18.z = r13.x;
                  r12.w = 0;
                  r15.w = 0;
                  while (true) {
                    r16.w = cmp((int)r15.w >= 8);
                    if (r16.w != 0) break;
                    r21.x = dot(icb[r15.w+0].yx, r18.xy);
                    r21.y = dot(icb[r15.w+0].yx, r18.yz);
                    r20.xy = r21.xy * lightConstantsCB[r3.w].data[3].yy + r19.xy;
                    r16.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r4.z).x;
                    r12.w = r16.w * 0.125 + r12.w;
                    r15.w = (int)r15.w + 1;
                  }
                } else {
                  r19.z = (uint)r11.w;
                  r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r4.z).x;
                }
                r3.w = r12.w * r12.w;
                r3.w = r3.w * r12.w;
              } else {
                r3.w = 1;
              }
              r6.w = r6.w * r3.w;
            }
          }
          r3.w = -r2.x * 0.5 + 1;
          r3.w = -r8.w * r3.w + 1;
          r3.w = r3.w * r3.w;
          r3.w = -r3.w * 0.620000005 + 0.620000005;
          r3.w = r3.w + -r8.w;
          r3.w = r1.w * r3.w + r8.w;
          r3.w = r3.w * r6.w;
          r18.x = lightConstantsCB[r0.x].data[0].w;
          r18.yz = lightConstantsCB[r0.x].data[1].xy;
          r4.z = cmp(0 < r7.w);
          r19.xyz = r3.www * r18.xyz + r16.xyz;
          r3.w = saturate(dot(r11.xyz, r15.xyz));
          r14.yzw = r14.yzw * r3.yyy + r12.xyz;
          r3.y = dot(r14.yzw, r14.yzw);
          r3.y = rsqrt(r3.y);
          r14.yzw = r14.yzw * r3.yyy;
          r3.y = dot(r14.yzw, r12.xyz);
          r7.w = dot(r11.xyz, r14.yzw);
          r8.w = abs(r7.w) * r1.z + -abs(r7.w);
          r7.w = abs(r7.w) * r8.w + 1;
          r8.w = r3.w * r2.y + r3.z;
          r7.w = r7.w * r7.w;
          r7.w = r7.w * r8.w;
          r7.w = rcp(r7.w);
          r3.w = r3.w * r9.w;
          r3.w = r7.w * r3.w;
          r3.w = r3.w * r6.w;
          r14.yzw = r3.www * r18.xyz + r13.yzw;
          r3.y = saturate(1 + -r3.y);
          r7.w = r3.y * r3.y;
          r7.w = r7.w * r7.w;
          r3.y = r7.w * r3.y;
          r3.y = r3.w * r3.y;
          r15.xyz = r3.yyy * r18.xyz + r17.zxy;
          r16.xyz = r4.zzz ? r19.xyz : r16.xyz;
          r17.xyz = r4.zzz ? r15.yzx : r17.xyz;
          r13.yzw = r4.zzz ? r14.yzw : r13.yzw;
          if (r2.z != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r3.y, cb2[52].x, l(136), u2.xxxx
          r3.y = samp0[]..swiz;
            r3.y = (int)r3.y | 8;
            GBufferDiffuseColor[viewID].136 = u2.x;
            GBufferDiffuseColor[viewID].156 = u2.x;
          }
          r0.w = (int)r0.w + 0x00010101;
        } else {
          r0.w = r10.w;
        }
      } else {
        r0.w = r2.w;
      }
    } else {
      r0.w = r2.w;
    }
    break;
    case 2 :    if (r2.z != 0) {
      r15.yzw = lightConstantsCB[r0.x].data[0].xyz + eyeOffset.xyz;
      r15.x = 2;
      GBufferDiffuseColor[viewID].136 = u2.xyzw;
    }
    r2.w = (int)r0.w + 1;
    r15.xy = lightConstantsCB[r0.x].data[3].zw + -r5.xy;
    r15.z = lightConstantsCB[r0.x].data[4].x + -r5.z;
    r3.y = dot(r15.xyz, r15.xyz);
    r3.y = rsqrt(r3.y);
    r14.yzw = r15.xyz * r3.yyy;
    r3.w = dot(r11.xyz, r14.yzw);
    r4.z = saturate(r3.w);
    r6.w = cmp(0 < r4.z);
    if (r6.w != 0) {
      r18.xyz = lightConstantsCB[r0.x].data[7].yzw;
      r18.w = lightConstantsCB[r0.x].data[8].x;
      r5.w = 1;
      r6.w = dot(r18.xyzw, r5.xyzw);
      r7.w = cmp(r6.w < 1);
      if (r7.w != 0) {
        r14.yzw = float3(1,1,1);
        r7.w = 0;
      } else {
        r19.xyz = lightConstantsCB[r0.x].data[0].xyz + -r5.xyz;
        r8.w = lightConstantsCB[r0.x].data[3].x * lightConstantsCB[r0.x].data[3].x;
        r9.w = dot(r19.xyz, r19.xyz);
        r8.w = r8.w / r9.w;
        r8.w = min(1, r8.w);
        r19.xy = saturate(r6.ww * lightConstantsCB[r0.x].data[2].xz + lightConstantsCB[r0.x].data[2].yw);
        r19.zw = r19.xy * r19.xy;
        r19.xy = r19.xy * float2(-2,-2) + float2(3,3);
        r19.xy = r19.zw * r19.xy;
        r8.w = r19.x * r8.w;
        r8.w = r8.w * r19.y;
        r19.xyz = lightConstantsCB[r0.x].data[4].yzw;
        r19.w = lightConstantsCB[r0.x].data[5].x;
        r19.x = dot(r19.xyzw, r5.xyzw);
        r20.xyz = lightConstantsCB[r0.x].data[5].yzw;
        r20.w = lightConstantsCB[r0.x].data[6].x;
        r19.y = dot(r20.xyzw, r5.xyzw);
        r19.xy = r19.xy / r6.ww;
        r5.w = cmp(lightConstantsCB[r0.x].data[10].w < 0.00048828125);
        if (r5.w != 0) {
          r20.xy = saturate(abs(r19.xy) * lightConstantsCB[r0.x].data[12].xy + lightConstantsCB[r0.x].data[12].zw);
          r20.zw = r20.xy * r20.xy;
          r20.xy = r20.xy * float2(-2,-2) + float2(3,3);
          r20.xy = r20.zw * r20.xy;
          r5.w = r20.x * r20.y;
        } else {
          r20.xyzw = saturate(lightConstantsCB[r0.x].data[11].xyzw * abs(r19.yyxx));
          r20.xyzw = log2(r20.xyzw);
          r20.xyzw = lightConstantsCB[r0.x].data[12].zzzz * r20.xyzw;
          r20.xyzw = exp2(r20.xyzw);
          r20.xy = r20.xy + r20.zw;
          r20.xy = log2(r20.xy);
          r20.xy = lightConstantsCB[r0.x].data[12].ww * r20.xy;
          r20.xy = exp2(r20.xy);
          r6.w = lightConstantsCB[r0.x].data[12].x * r20.x;
          r9.w = lightConstantsCB[r0.x].data[12].y * r20.y + -1;
          r6.w = lightConstantsCB[r0.x].data[12].y * r20.y + -r6.w;
          r6.w = saturate(r9.w / r6.w);
          r9.w = r6.w * r6.w;
          r6.w = r6.w * -2 + 3;
          r5.w = r9.w * r6.w;
        }
        r7.w = r8.w * r5.w;
        r5.w = 255 & (int)lightConstantsCB[r0.x].data[14].w;
        if (r5.w != 0) {
          r19.z = 1;
          r6.w = dot(lightConstantsCB[r0.x].data[13].xyz, r19.xyz);
          r20.x = lightConstantsCB[r0.x].data[13].w;
          r20.yz = lightConstantsCB[r0.x].data[14].xy;
          r8.w = dot(r20.xyz, r19.xyz);
          r19.x = frac(r6.w);
          r19.y = frac(r8.w);
          r5.w = (int)r5.w + -1;
          r19.z = (uint)r5.w;
          r14.yzw = gCookieArray.SampleLevel(samplerLinear_s, r19.xyz, 0).xyz;
        } else {
          r14.yzw = float3(1,1,1);
        }
      }
      r19.x = lightConstantsCB[r0.x].data[0].w;
      r19.yz = lightConstantsCB[r0.x].data[1].xy;
      r14.yzw = r19.xyz * r14.yzw;
      r5.w = cmp(0 < r7.w);
      if (r5.w != 0) {
        if (3 == 0) r5.w = 0; else if (3+27 < 32) {         r5.w = (uint)lightConstantsCB[r0.x].data[1].w << (32-(3 + 27)); r5.w = (uint)r5.w >> (32-3);        } else r5.w = (uint)lightConstantsCB[r0.x].data[1].w >> 27;
        if (r2.z != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r6.w, cb2[52].x, l(136), u2.xxxx
        r6.w = samp0[]..swiz;
          r6.w = (int)r6.w | 4;
          GBufferDiffuseColor[viewID].136 = u2.x;
          GBufferDiffuseColor[viewID].152 = u2.x;
        }
        r6.w = (int)r0.w + 257;
        r5.w = cmp((int)r5.w != 1);
        if (r5.w != 0) {
          r5.w = abs(r3.w) * -0.200000003 + 0.400000006;
          r19.xyz = r11.xyz * r5.www + r5.xyz;
          r20.xyz = lightConstantsCB[r0.x].data[6].yzw;
          r20.w = lightConstantsCB[r0.x].data[7].x;
          r19.w = 1;
          r5.w = dot(r20.xyzw, r19.xyzw);
          r8.w = dot(r18.xyzw, r19.xyzw);
          r9.w = cmp(r8.w >= r5.w);
          if (r9.w != 0) {
            r18.xyz = lightConstantsCB[r0.x].data[4].yzw;
            r18.w = lightConstantsCB[r0.x].data[5].x;
            r18.x = dot(r18.xyzw, r19.xyzw);
            r20.xyz = lightConstantsCB[r0.x].data[5].yzw;
            r20.w = lightConstantsCB[r0.x].data[6].x;
            r18.y = dot(r20.xyzw, r19.xyzw);
            r18.xy = r18.xy / r8.ww;
            r18.xy = saturate(r18.xy * float2(0.5,-0.5) + float2(0.5,0.5));
            r19.x = r18.x * lightConstantsCB[r0.x].data[8].y + lightConstantsCB[r0.x].data[8].z;
            r19.y = r18.y * lightConstantsCB[r0.x].data[8].w + lightConstantsCB[r0.x].data[9].x;
            r5.w = r5.w / r8.w;
            r5.w = max(6.10351563e-05, r5.w);
            r8.w = 0x0000ffff & (int)lightConstantsCB[r0.x].data[1].w;
            if (enableDitheredShadow != 0) {
              r18.x = -r13.x;
              r20.z = (uint)r8.w;
              r18.y = r14.x;
              r18.z = r13.x;
              r9.w = 0;
              r10.w = 0;
              while (true) {
                r11.w = cmp((int)r10.w >= 8);
                if (r11.w != 0) break;
                r21.x = dot(icb[r10.w+0].yx, r18.xy);
                r21.y = dot(icb[r10.w+0].yx, r18.yz);
                r20.xy = r21.xy * lightConstantsCB[r0.x].data[3].yy + r19.xy;
                r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r5.w).x;
                r9.w = r11.w * 0.125 + r9.w;
                r10.w = (int)r10.w + 1;
              }
            } else {
              r19.z = (uint)r8.w;
              r9.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r5.w).x;
            }
            r5.w = r9.w * r9.w;
            r5.w = r5.w * r9.w;
          } else {
            r5.w = 1;
          }
        } else {
          r5.w = 1;
        }
        r5.w = r7.w * r5.w;
        r7.w = cmp(0 < r5.w);
        if (r7.w != 0) {
          r7.w = lightConstantsCB[r0.x].data[1].z * r1.z;
          r7.w = r7.w * r4.z;
          if (4 == 0) r8.w = 0; else if (4+16 < 32) {           r8.w = (uint)lightConstantsCB[r0.x].data[1].w << (32-(4 + 16)); r8.w = (uint)r8.w >> (32-4);          } else r8.w = (uint)lightConstantsCB[r0.x].data[1].w >> 16;
          r9.w = cmp(0 < (uint)r8.w);
          r9.w = r9.w ? r3.x : 0;
          if (r9.w != 0) {
            r8.w = (int)r8.w + numLights;
            r8.w = mad((int)r8.w, 15, -15);
            r9.w = abs(r3.w) * -0.200000003 + 0.400000006;
            r18.xyz = r11.xyz * r9.www + r5.xyz;
            r19.xyz = lightConstantsCB[r8.w].data[6].yzw;
            r19.w = lightConstantsCB[r8.w].data[7].x;
            r18.w = 1;
            r9.w = dot(r19.xyzw, r18.xyzw);
            r19.xyz = lightConstantsCB[r8.w].data[7].yzw;
            r19.w = lightConstantsCB[r8.w].data[8].x;
            r10.w = dot(r19.xyzw, r18.xyzw);
            r11.w = cmp(r10.w < r9.w);
            if (r11.w == 0) {
              r19.xyz = lightConstantsCB[r8.w].data[4].yzw;
              r19.w = lightConstantsCB[r8.w].data[5].x;
              r19.x = dot(r19.xyzw, r18.xyzw);
              r20.xyz = lightConstantsCB[r8.w].data[5].yzw;
              r20.w = lightConstantsCB[r8.w].data[6].x;
              r19.y = dot(r20.xyzw, r18.xyzw);
              r18.xy = r19.xy / r10.ww;
              r18.xy = r18.xy * float2(0.5,-0.5) + float2(0.5,0.5);
              r19.x = lightConstantsCB[r8.w].data[9].w + r18.x;
              r19.y = lightConstantsCB[r8.w].data[10].x + r18.y;
              r18.xy = lightConstantsCB[r8.w].data[9].yz * r19.xy;
              r18.zw = lightConstantsCB[r8.w].data[3].yy / lightConstantsCB[r8.w].data[8].yw;
              r19.xy = float2(1,1) + -r18.zw;
              r19.xy = cmp(r18.xy >= r19.xy);
              r18.zw = cmp(r18.zw >= r18.xy);
              r18.zw = (int2)r18.zw | (int2)r19.xy;
              r12.w = (int)r18.w | (int)r18.z;
              if (r12.w == 0) {
                r18.xy = saturate(r18.xy);
                r19.x = r18.x * lightConstantsCB[r8.w].data[8].y + lightConstantsCB[r8.w].data[8].z;
                r19.y = r18.y * lightConstantsCB[r8.w].data[8].w + lightConstantsCB[r8.w].data[9].x;
                r15.w = lightConstantsCB[r8.w].data[10].z * r10.w;
                r9.w = lightConstantsCB[r8.w].data[10].y * r10.w + r9.w;
                r9.w = r9.w / r15.w;
              }
            } else {
              r12.w = -1;
            }
            r10.w = (int)r11.w | (int)r12.w;
            if (r10.w == 0) {
              r9.w = max(6.10351563e-05, r9.w);
              r10.w = 0x0000ffff & (int)lightConstantsCB[r8.w].data[1].w;
              if (enableDitheredShadow != 0) {
                r18.x = -r13.x;
                r20.z = (uint)r10.w;
                r18.y = r14.x;
                r18.z = r13.x;
                r11.w = 0;
                r12.w = 0;
                while (true) {
                  r15.w = cmp((int)r12.w >= 8);
                  if (r15.w != 0) break;
                  r21.x = dot(icb[r12.w+0].yx, r18.xy);
                  r21.y = dot(icb[r12.w+0].yx, r18.yz);
                  r20.xy = r21.xy * lightConstantsCB[r8.w].data[3].yy + r19.xy;
                  r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r9.w).x;
                  r11.w = r15.w * 0.125 + r11.w;
                  r12.w = (int)r12.w + 1;
                }
              } else {
                r19.z = (uint)r10.w;
                r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r9.w).x;
              }
              r8.w = r11.w * r11.w;
              r8.w = r8.w * r11.w;
            } else {
              r8.w = 1;
            }
            r5.w = r8.w * r5.w;
          } else {
            if (4 == 0) r0.x = 0; else if (4+20 < 32) {             r0.x = (uint)lightConstantsCB[r0.x].data[1].w << (32-(4 + 20)); r0.x = (uint)r0.x >> (32-4);            } else r0.x = (uint)lightConstantsCB[r0.x].data[1].w >> 20;
            r8.w = cmp(0 < (uint)r0.x);
            r3.x = ~(int)r3.x;
            r3.x = r8.w ? r3.x : 0;
            if (r3.x != 0) {
              r0.x = (int)r0.x + numLights;
              r0.x = mad((int)r0.x, 15, -15);
              r3.x = abs(r3.w) * -0.200000003 + 0.400000006;
              r18.xyz = r11.xyz * r3.xxx + r5.xyz;
              r19.xyz = lightConstantsCB[r0.x].data[6].yzw;
              r19.w = lightConstantsCB[r0.x].data[7].x;
              r18.w = 1;
              r3.x = dot(r19.xyzw, r18.xyzw);
              r19.xyz = lightConstantsCB[r0.x].data[7].yzw;
              r19.w = lightConstantsCB[r0.x].data[8].x;
              r8.w = dot(r19.xyzw, r18.xyzw);
              r9.w = cmp(r8.w < r3.x);
              if (r9.w == 0) {
                r19.xyz = lightConstantsCB[r0.x].data[4].yzw;
                r19.w = lightConstantsCB[r0.x].data[5].x;
                r19.x = dot(r19.xyzw, r18.xyzw);
                r20.xyz = lightConstantsCB[r0.x].data[5].yzw;
                r20.w = lightConstantsCB[r0.x].data[6].x;
                r19.y = dot(r20.xyzw, r18.xyzw);
                r18.xy = r19.xy / r8.ww;
                r18.xy = r18.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r19.x = lightConstantsCB[r0.x].data[9].w + r18.x;
                r19.y = lightConstantsCB[r0.x].data[10].x + r18.y;
                r18.xy = lightConstantsCB[r0.x].data[9].yz * r19.xy;
                r18.zw = lightConstantsCB[r0.x].data[3].yy / lightConstantsCB[r0.x].data[8].yw;
                r19.xy = float2(1,1) + -r18.zw;
                r19.xy = cmp(r18.xy >= r19.xy);
                r18.zw = cmp(r18.zw >= r18.xy);
                r18.zw = (int2)r18.zw | (int2)r19.xy;
                r10.w = (int)r18.w | (int)r18.z;
                if (r10.w == 0) {
                  r18.xy = saturate(r18.xy);
                  r19.x = r18.x * lightConstantsCB[r0.x].data[8].y + lightConstantsCB[r0.x].data[8].z;
                  r19.y = r18.y * lightConstantsCB[r0.x].data[8].w + lightConstantsCB[r0.x].data[9].x;
                  r11.w = lightConstantsCB[r0.x].data[10].z * r8.w;
                  r3.x = lightConstantsCB[r0.x].data[10].y * r8.w + r3.x;
                  r3.x = r3.x / r11.w;
                }
              } else {
                r10.w = -1;
              }
              r8.w = (int)r9.w | (int)r10.w;
              if (r8.w == 0) {
                r3.x = max(6.10351563e-05, r3.x);
                r8.w = 0x0000ffff & (int)lightConstantsCB[r0.x].data[1].w;
                if (enableDitheredShadow != 0) {
                  r18.x = -r13.x;
                  r20.z = (uint)r8.w;
                  r18.y = r14.x;
                  r18.z = r13.x;
                  r9.w = 0;
                  r10.w = 0;
                  while (true) {
                    r11.w = cmp((int)r10.w >= 8);
                    if (r11.w != 0) break;
                    r21.x = dot(icb[r10.w+0].yx, r18.xy);
                    r21.y = dot(icb[r10.w+0].yx, r18.yz);
                    r20.xy = r21.xy * lightConstantsCB[r0.x].data[3].yy + r19.xy;
                    r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r3.x).x;
                    r9.w = r11.w * 0.125 + r9.w;
                    r10.w = (int)r10.w + 1;
                  }
                } else {
                  r19.z = (uint)r8.w;
                  r9.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r3.x).x;
                }
                r0.x = r9.w * r9.w;
                r0.x = r0.x * r9.w;
              } else {
                r0.x = 1;
              }
              r5.w = r5.w * r0.x;
            }
          }
          r0.x = -r2.x * 0.5 + 1;
          r0.x = -r4.z * r0.x + 1;
          r0.x = r0.x * r0.x;
          r0.x = -r0.x * 0.620000005 + 0.620000005;
          r0.x = r0.x + -r4.z;
          r0.x = r1.w * r0.x + r4.z;
          r0.x = r0.x * r5.w;
          r1.w = cmp(0 < r3.w);
          r18.xyz = r0.xxx * r14.yzw + r16.xyz;
          r3.xyw = r15.xyz * r3.yyy + r12.xyz;
          r0.x = dot(r3.xyw, r3.xyw);
          r0.x = rsqrt(r0.x);
          r3.xyw = r3.xyw * r0.xxx;
          r0.x = dot(r3.xyw, r12.xyz);
          r2.x = dot(r11.xyz, r3.xyw);
          r1.z = abs(r2.x) * r1.z + -abs(r2.x);
          r1.z = abs(r2.x) * r1.z + 1;
          r2.x = r4.z * r2.y + r3.z;
          r1.z = r1.z * r1.z;
          r1.z = r1.z * r2.x;
          r1.z = rcp(r1.z);
          r1.z = r1.z * r7.w;
          r1.z = r5.w * r1.z;
          r1.z = 0.25 * r1.z;
          r3.xyz = r1.zzz * r14.yzw + r13.yzw;
          r0.x = saturate(1 + -r0.x);
          r2.x = r0.x * r0.x;
          r2.x = r2.x * r2.x;
          r0.x = r2.x * r0.x;
          r0.x = r1.z * r0.x;
          r11.xyz = r0.xxx * r14.yzw + r17.zxy;
          r16.xyz = r1.www ? r18.xyz : r16.xyz;
          r17.xyz = r1.www ? r11.yzx : r17.xyz;
          r13.yzw = r1.www ? r3.xyz : r13.yzw;
          if (r2.z != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r0.x, cb2[52].x, l(136), u2.xxxx
          r0.x = samp0[]..swiz;
            r0.x = (int)r0.x | 8;
            GBufferDiffuseColor[viewID].136 = u2.x;
            GBufferDiffuseColor[viewID].156 = u2.x;
          }
          r0.w = (int)r0.w + 0x00010101;
        } else {
          r0.w = r6.w;
        }
      } else {
        r0.w = r2.w;
      }
    } else {
      r0.w = r2.w;
    }
    break;
    default :
    break;
  }
  r3.xyz = r4.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r0.x = (uint)r3.y;
  r2.xyw = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.z = (uint)r2.x;
  r1.z = cmp((int)r0.x == (int)r1.z);
  r1.zw = r1.zz ? r2.yw : float2(-1,0);
  r2.xyw = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.x = (uint)r2.x;
  r2.x = cmp((int)r0.x == (int)r2.x);
  r2.xy = r2.xx ? r2.yw : float2(-1,0);
  r4.xyz = r9.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.w = (uint)r4.x;
  r2.w = cmp((int)r0.x == (int)r2.w);
  r4.xy = r2.ww ? r4.yz : float2(-1,0);
  r7.xyz = r10.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.w = (uint)r7.x;
  r0.x = cmp((int)r0.x == (int)r2.w);
  r4.zw = r0.xx ? r7.yz : float2(-1,0);
  r7.x = r1.z;
  r7.y = r2.x;
  r7.zw = r4.xz;
  r7.xyzw = r7.xyzw + -r3.xxxx;
  r7.xyzw = cmp(abs(r7.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r7.xyzw = r7.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r0.x = r7.x + r7.y;
  r0.x = r0.x + r7.z;
  r0.x = r0.x + r7.w;
  r1.z = r7.y * r2.y;
  r1.z = r7.x * r1.w + r1.z;
  r1.z = r7.z * r4.y + r1.z;
  r1.z = r7.w * r4.w + r1.z;
  r3.w = r1.z / r0.x;
  r0.x = cmp(0 >= r0.x);
  r3.yz = r0.xx ? float2(0,0) : r3.zw;
  r1.zw = (int2)r1.xy & int2(1,1);
  r0.x = cmp((int)r1.w == (int)r1.z);
  r2.xyw = r0.xxx ? r3.xyz : r3.xzy;
  r0.x = -r2.w * 0.5 + r2.x;
  r3.y = r2.w + r0.x;
  r3.z = -r2.y * 0.5 + r0.x;
  r3.x = r3.z + r2.y;
  r2.xyw = float3(1,1,1) + -r3.xyz;
  r2.xyw = r17.zxy * r2.xyw;
  r2.xyw = r13.yzw * r3.xyz + r2.xyw;
  r2.xyw = r16.xyz * r6.xyz + r2.xyw;
  r0.x = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.x != 0) {
    r0.x = dot(r5.xyz, r5.xyz);
    r1.z = rsqrt(r0.x);
    r3.xyz = r5.xyz * r1.zzz;
    r0.x = sqrt(r0.x);
    r1.z = cmp(0 < fogConstants.blendAmount);
    if (r1.z != 0) {
      r1.zw = r0.xx * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r1.zw = fogConstants.atmospherefogdensityatcamera.xy * r1.zw;
      r3.w = cmp(0.00999999978 < abs(r5.z));
      r4.xy = fogConstants.atmospherefogheightdensityscale.xy * r5.zz;
      r4.zw = float2(-1.44269502,-1.44269502) * r4.xy;
      r4.zw = exp2(r4.zw);
      r4.zw = float2(1,1) + -r4.zw;
      r4.xy = r4.zw / r4.xy;
      r4.xy = r4.xy * r1.zw;
      r1.zw = r3.ww ? r4.xy : r1.zw;
      r4.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.zzz;
      r4.xyz = exp2(r4.xyz);
      r6.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.www;
      r6.xyz = exp2(r6.xyz);
      r6.xyz = r6.xyz + -r4.xyz;
      r4.xyz = fogConstants.blendAmount * r6.xyz + r4.xyz;
    } else {
      r1.z = r0.x * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r1.z = fogConstants.atmospherefogdensityatcamera.x * r1.z;
      r1.w = cmp(0.00999999978 < abs(r5.z));
      r3.w = fogConstants.atmospherefogheightdensityscale.x * r5.z;
      r4.w = -1.44269502 * r3.w;
      r4.w = exp2(r4.w);
      r4.w = 1 + -r4.w;
      r3.w = r4.w / r3.w;
      r3.w = r3.w * r1.z;
      r1.z = r1.w ? r3.w : r1.z;
      r6.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.zzz;
      r4.xyz = exp2(r6.xyz);
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
    r6.xyz = float3(1,1,1) + -r4.xyz;
    r3.xyz = r6.xyz * r3.xyz;
    r3.xyz = r2.xyw * r4.xyz + r3.xyz;
  } else {
    r0.x = fogConstants.heightFalloff * r5.z;
    r1.z = fogConstants.heightFalloff * r5.z + fogConstants.K0;
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
    r1.z = dot(r5.xyz, r5.xyz);
    r1.w = sqrt(r1.z);
    r0.x = r0.x * r1.w + fogConstants.expAdd;
    r0.x = exp2(r0.x);
    r0.x = min(1, r0.x);
    r0.x = 1 + -r0.x;
    r1.z = rsqrt(r1.z);
    r4.xyz = r5.xyz * r1.zzz;
    r1.z = dot(fogConstants.wldSunFogDir.xyz, r4.xyz);
    r1.z = saturate(fogConstants.sunFogAngles.y * r1.z + fogConstants.sunFogAngles.x);
    r4.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r4.xyzw = r1.zzzz * r4.xyzw + fogConstants.sunFogColor.xyzw;
    r0.x = r4.w * r0.x;
    r4.xyz = r4.xyz + -r2.xyw;
    r3.xyz = r0.xxx * r4.xyz + r2.xyw;
  }
  r2.xyw = relHDRExposure.yyy * r3.xyz;
  r3.xyz = cmp(r2.xyw >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r2.xyw = r3.xyz ? r2.xyw : 0;
  r2.xyw = min(float3(65024,65024,64512), r2.xyw);
  r0.x = cmp(0 < permuteHighlight);
  r3.xyzw = permuteHighlight & int4(32,3,64,12);
  r1.zw = cmp((int2)r3.xz != int2(0,0));
  r3.xy = cmp((int2)r3.yw == int2(2,4));
  r1.zw = r1.zw ? r3.xy : 0;
  r3.xy = r1.zw ? float2(0.200000003,0.200000003) : 0;
  r1.z = permuteHighlight & 16;
  r1.w = cmp((int)r1.z != 0);
  r1.z = cmp((int)r1.z == 0);
  r1.z = r1.z ? r1.w : 0;
  r3.z = r1.z ? 0.200000 : 0;
  r3.xyz = r3.xyz * relHDRExposure.xxx + -r2.xyw;
  r3.xyz = r3.xyz * float3(0.5,0.5,0.5) + r2.xyw;
  r2.xyw = r0.xxx ? r3.xyz : r2.xyw;
  if (enableCountDebug != 0) {
    if (debugDrawOverlayType != 0) {
      switch (cb2[53].y) {
        case 1 :        r0.x = (int)r0.w & 3;
        break;
        case 2 :        if (2 == 0) r0.x = 0; else if (2+8 < 32) {         r0.x = (uint)r0.w << (32-(2 + 8)); r0.x = (uint)r0.x >> (32-2);        } else r0.x = (uint)r0.w >> 8;
        break;
        case 3 :        r0.x = (uint)r0.w >> 16;
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
      r3.xyz = r0.xxx * float3(0.5,0.5,0.5) + -r2.xyw;
      r2.xyw = drawNumLightsAlpha * r3.xyz + r2.xyw;
    }
  }
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xyyy, r2.xywx
  if (r2.z != 0) {
    r1.xyz = eyeOffset.xyz + r5.xyz;
    r1.w = (int)r0.w & 3;
    GBufferDiffuseColor[viewID].92 = u2.xyzw;
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
    atomic_umax g2, l(4), r1.x
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(8), r0.w
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