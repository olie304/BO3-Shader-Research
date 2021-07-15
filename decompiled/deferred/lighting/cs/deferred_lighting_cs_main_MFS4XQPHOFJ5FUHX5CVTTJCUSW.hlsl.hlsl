// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:23:40 2021

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20;
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
  r0.x = mad(permuteStride, 37, (int)vThreadGroupID.x);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=8)(mixed,mixed,mixed,mixed) r0.xy, r0.x, l(0), t25.xyxx
r0.x = samp0[]..swiz;
r0.y = samp0[]..swiz;
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
  r0.w = GBufferDepth.Load(r1.xyw).x;
  r3.xyzw = GBufferSpecularColorAndOcclusion.Load(r1.xyw).xyzw;
  r4.xy = (uint2)r1.xy;
  r4.zw = float2(0.5,0.5) + r4.xy;
  r5.x = cmp(r0.w >= 0.984375);
  r5.z = 1.01587307 * r0.w;
  r0.w = r0.w * 64 + -63;
  r0.w = r5.x ? r0.w : r5.z;
  r0.w = max(9.99999994e-09, r0.w);
  r5.y = rcp(r0.w);
  r0.zw = r0.zz ? r5.xy : 0;
  r5.xy = renderTargetSize.zw * r4.zw;
  r6.xyzw = gSSAOTexture.Gather(samplerLinearClamp_s, r5.xy).xyzw;
  r5.xyzw = gSSAODepthTexture.Gather(samplerLinearClamp_s, r5.xy).xyzw;
  r7.xy = float2(0.5,0.5) * r4.zw;
  r7.xy = frac(r7.xy);
  r7.zw = float2(1,1) + -r7.yx;
  r8.xyzw = r7.xwyx * r7.zzwy;
  r7.x = dot(r6.xyzw, r8.xyzw);
  r5.xyzw = r5.xyzw + -r0.wwww;
  r7.y = min(abs(r5.z), abs(r5.w));
  r7.y = min(r7.y, abs(r5.y));
  r7.y = min(r7.y, abs(r5.x));
  r7.z = max(abs(r5.z), abs(r5.w));
  r7.z = max(r7.z, abs(r5.y));
  r5.x = max(r7.z, abs(r5.x));
  r5.yzw = cmp(abs(r5.yzw) == r7.yyy);
  r5.y = r5.y ? r6.y : r6.x;
  r5.y = r5.z ? r6.z : r5.y;
  r5.y = r5.w ? r6.w : r5.y;
  r5.z = 0.00999999978 * r0.w;
  r5.x = cmp(r5.z < r5.x);
  r5.x = r5.x ? r5.y : r7.x;
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
  r5.yzw = GBufferDiffuseColor.Load(r1.xyw).xyz;
  r6.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r7.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r8.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r9.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyz, int3(0, 0, 0)).xyw;
  r1.zw = -subpixelOffset.xy + r4.zw;
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
  r0.w = r3.z ? -0.5 : -0.00146627566;
  r0.w = r2.z + r0.w;
  r2.y = saturate(2.00982332 * r0.w);
  r0.w = dot(-r10.xyz, -r10.xyz);
  r0.w = rsqrt(r0.w);
  r12.xyz = -r10.xyz * r0.www;
  r1.z = dot(r4.xy, float2(0.0671105608,0.00583714992));
  r1.z = frac(r1.z);
  r1.z = 52.9829178 * r1.z;
  r1.z = frac(r1.z);
  r1.z = r1.z * 6.28318548 + gameTick.w;
  sincos(r1.z, r4.x, r13.x);
  r2.x = saturate(dot(r11.xyz, r12.xyz));
  r1.z = dot(-r12.xyz, r11.xyz);
  r1.z = r1.z + r1.z;
  r14.xyz = r11.xyz * -r1.zzz + -r12.xyz;
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
  r3.z = saturate(r2.w);
  r4.y = cmp(0 >= r3.z);
  if (r4.y != 0) {
    r4.z = 0;
  }
  if (r4.y == 0) {
    r13.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * r10.yyy;
    r13.yzw = r10.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r13.yzw;
    r13.yzw = r10.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r13.yzw;
    r13.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r13.yzw;
    r4.y = -sunConstants.splitDepthOffset + r13.w;
    r4.y = -r4.y * 6.10351563e-05 + 1;
    r4.w = saturate(r4.y);
    r4.w = cmp(r4.y == r4.w);
    if (r4.w != 0) {
      r4.w = 0;
      r6.w = 0;
      while (true) {
        r7.w = cmp(r4.w >= 3);
        if (r7.w != 0) break;
        r7.w = (uint)r4.w;
        r15.xy = -sunConstants.splitPinTransform[r7.w].xy + r13.yz;
        r8.w = max(abs(r15.x), abs(r15.y));
        r6.w = sunConstants.splitPinTransform[r7.w].z * r8.w;
        r7.w = cmp(r6.w < 1);
        if (r7.w != 0) {
          break;
        }
        r4.w = 1 + r4.w;
        r6.w = 0;
      }
    } else {
      r4.w = 3;
      r6.w = 0;
    }
    r7.w = cmp(r4.w >= 3);
    if (r7.w != 0) {
      r15.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r16.xz = rcp(r15.xx);
      r16.y = -r16.z;
      r15.xyz = r13.yzy * r16.xyz + r15.yzy;
      r16.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r15.xyz = max(float3(0,0,0), r15.xyz);
      r15.xyz = min(r15.xyz, r16.xyz);
      r16.xy = sunConstants.sstLightingConstants.coordScale * r15.zy;
      r16.xy = floor(r16.xy);
      r8.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r16.y;
      r8.w = r8.w * sunConstants.sstLightingConstants.coordScale + r16.x;
      r8.w = (uint)r8.w;
      r8.w = (int)r8.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r9.w, r8.w, l(0), t23.xxxx
    r9.w = samp0[]..swiz;
      r10.w = (int)r9.w & 0x40000000;
      r12.w = (uint)r9.w << 2;
      if (r10.w == 0) {
        r10.w = (int)r9.w & 0x01ffffff;
        r16.x = (int)r8.w + (int)r10.w;
        r8.w = (uint)r9.w >> 25;
        r8.w = (uint)r8.w;
        r15.xyz = r15.xyz * r8.www;
        r15.xyz = frac(r15.xyz);
        r15.xyz = float3(128,128,128) * r15.xyz;
        r15.xyz = (uint3)r15.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.x, l(0), t23.xxxx
      r16.z = samp0[]..swiz;
        r17.xy = (uint2)r15.zy >> int2(6,6);
        r8.w = (int)r16.z & 0xc0000000;
        r9.w = (int)r16.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r9.w, r9.w, l(0), t23.xxxx
      r9.w = samp0[]..swiz;
        r9.w = r17.y ? r16.z : r9.w;
        r10.w = (uint)r9.w >> 13;
        r9.w = r17.x ? r10.w : r9.w;
        r9.w = (int)r9.w & 8191;
        r17.x = (int)r9.w + (int)r16.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
      r17.z = samp0[]..swiz;
        r16.y = 0;
        r17.y = 1;
        r17.xyz = r8.www ? r16.xyz : r17.xyz;
        r18.yz = r8.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r19.xy = (uint2)r15.zy >> (uint2)r18.yy;
        r19.xy = (int2)r19.xy & int2(1,1);
        r9.w = (int)r17.z & 0xc0000000;
        r10.w = (int)r17.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.w, r10.w, l(0), t23.xxxx
      r10.w = samp0[]..swiz;
        r10.w = r19.y ? r17.z : r10.w;
        r15.w = (uint)r10.w >> 13;
        r10.w = r19.x ? r15.w : r10.w;
        r10.w = (int)r10.w & 8191;
        r18.x = (int)r10.w + (int)r17.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.x, l(0), t23.xxxx
      r18.w = samp0[]..swiz;
        r17.xyz = r9.www ? r17.xyz : r18.xzw;
        r16.xyz = r8.www ? r16.xyz : r17.xyz;
        r8.w = (int)r16.z & 0xc0000000;
        if (r8.w == 0) {
          r8.w = (int)-r16.y + 6;
          r17.xy = (uint2)r15.zy >> (uint2)r8.ww;
          r8.w = (int)r16.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r9.w = (((uint)r17.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r9.w = (((uint)r17.x << 0) & bitmask.w) | ((uint)r9.w & ~bitmask.w);
          r9.w = (int)r9.w * 10;
          r8.w = (uint)r8.w >> (uint)r9.w;
          r8.w = (int)r8.w & 1023;
          r17.x = (int)r8.w + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.x, l(0), t23.xxxx
        r17.w = samp0[]..swiz;
          r17.yz = (int2)r16.yy + int2(1,2);
          r8.w = (int)-r17.y + 6;
          r16.yw = (uint2)r15.zy >> (uint2)r8.ww;
          r8.w = (int)r17.w & 0xc0000000;
          r9.w = (int)r17.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r10.w = (((uint)r16.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r10.w = (((uint)r16.y << 0) & bitmask.w) | ((uint)r10.w & ~bitmask.w);
          r10.w = (int)r10.w * 10;
          r9.w = (uint)r9.w >> (uint)r10.w;
          r9.w = (int)r9.w & 1023;
          r18.x = (int)r9.w + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
        r18.z = samp0[]..swiz;
          r18.y = r17.z;
          r18.xyz = r8.www ? r17.xyw : r18.xyz;
          r9.w = (int)-r18.y + 6;
          r16.yw = (uint2)r15.zy >> (uint2)r9.ww;
          r9.w = (int)r18.z & 0xc0000000;
          r10.w = (int)r18.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r15.w = (((uint)r16.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r15.w = (((uint)r16.y << 0) & bitmask.w) | ((uint)r15.w & ~bitmask.w);
          r15.w = (int)r15.w * 10;
          r10.w = (uint)r10.w >> (uint)r15.w;
          r10.w = (int)r10.w & 1023;
          r19.x = (int)r10.w + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.y, r19.x, l(0), t23.xxxx
        r19.y = samp0[]..swiz;
          r16.yw = r9.ww ? r18.xz : r19.xy;
          r16.xz = r8.ww ? r17.xw : r16.yw;
        }
        r8.w = (int)r16.z & 0xc0000000;
        if (r8.w == 0) {
          if (14 == 0) r9.w = 0; else if (14+15 < 32) {           r9.w = (uint)r16.z << (32-(14 + 15)); r9.w = (uint)r9.w >> (32-14);          } else r9.w = (uint)r16.z >> 15;
          r9.w = (uint)r9.w;
          r9.w = sunConstants.sstLightingConstants.constants.spanInInches * r9.w;
          r9.w = 6.10388815e-05 * r9.w;
          r16.yw = (int2)r16.zz & int2(32767,536870912);
          r10.w = (uint)r16.y;
          r10.w = sunConstants.sstLightingConstants.constants.spanInInches * r10.w;
          r10.w = 3.05185094e-05 * r10.w;
          r15.w = (int)r15.y & 3;
          r15.w = (int)r15.w + (int)r16.x;
          r15.w = (int)r15.w + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.w, r15.w, l(0), t23.xxxx
        r15.w = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r17.x = (((uint)r15.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r17.y = (((uint)r15.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r17.z = (((uint)r15.z << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r15.x = (uint)r15.w >> (uint)r17.x;
          r15.x = (int)r15.x & 255;
          r15.x = (uint)r15.x;
          r15.x = r15.x * r10.w;
          r15.x = r15.x * 0.00392156886 + r9.w;
          r15.y = (int)r17.y + 1;
          if (1 == 0) r15.z = 0; else if (1+1 < 32) {           r15.z = (uint)r15.z << (32-(1 + 1)); r15.z = (uint)r15.z >> (32-1);          } else r15.z = (uint)r15.z >> 1;
          r15.y = (int)r15.z + (int)r15.y;
          r15.y = (int)r15.y + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.y, r15.y, l(0), t23.xxxx
        r15.y = samp0[]..swiz;
          r15.y = (uint)r15.y >> (uint)r17.z;
          r15.y = (int)r15.y & 0x0000ffff;
          r15.y = (uint)r15.y;
          r10.w = r15.y * r10.w;
          r9.w = r10.w * 1.52590219e-05 + r9.w;
          r12.w = r16.w ? r15.x : r9.w;
        } else {
          r9.w = (int)r16.z & 0x80000000;
          r10.w = (int)r16.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.w, r10.w, l(0), t23.xxxx
        r10.w = samp0[]..swiz;
          r9.w = r9.w ? r10.w : 0;
          r10.w = (uint)r16.z << 2;
          r15.x = (uint)r9.w >> 16;
          r15.x = f16tof32(r15.x);
          r9.w = (int)r9.w & 0x0000ffff;
          r9.w = f16tof32(r9.w);
          r10.w = r13.y * r15.x + r10.w;
          r9.w = r13.z * r9.w + r10.w;
          r12.w = r8.w ? r9.w : r12.w;
        }
      }
      r8.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r13.w;
      r8.w = cmp(r12.w < r8.w);
      r4.z = r8.w ? 0 : 1;
    }
    if (r7.w == 0) {
      if (enableDitheredShadow == 0) {
        r7.w = (uint)r4.w;
        r15.xy = -sunConstants.splitPinTransform[r7.w].xy + r13.yz;
        r15.xy = sunConstants.splitPinTransform[r7.w].zz * r15.xy;
        r15.xy = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r7.w = (int16)sunConstants.splitArrayOffset;
        r15.z = r7.w + r4.w;
        r7.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r4.y).x;
        r8.w = gTransShadowmapArray.SampleLevel(samp0_s, r15.xyz, 0).x;
        r7.w = r8.w + r7.w;
        r7.w = saturate(-1 + r7.w);
        r8.w = r7.w * r7.w;
        r4.z = r8.w * r7.w;
      }
      if (enableDitheredShadow != 0) {
        r15.x = -r4.x;
        r7.w = (uint)r4.w;
        r4.w = 1 + r4.w;
        r4.w = min(2, r4.w);
        r4.w = (uint)r4.w;
        r6.w = 1 + -r6.w;
        r6.w = 28 * r6.w;
        r6.w = (uint)r6.w;
        r16.xy = -sunConstants.splitPinTransform[r7.w].xy + r13.yz;
        r16.xy = sunConstants.splitPinTransform[r7.w].zz * r16.xy;
        r16.xy = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r13.yz = -sunConstants.splitPinTransform[r4.w].xy + r13.yz;
        r13.yz = sunConstants.splitPinTransform[r4.w].zz * r13.yz;
        r13.yz = r13.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r15.y = r13.x;
        r15.z = r4.x;
        r8.w = 0;
        r9.w = 0;
        while (true) {
          r10.w = cmp((uint)r9.w >= 8);
          if (r10.w != 0) break;
          r10.w = cmp((uint)r6.w < (uint)r9.w);
          r16.zw = r10.ww ? r13.yz : r16.xy;
          r12.w = r10.w ? sunConstants.splitPinTransform[r4.w].w : sunConstants.splitPinTransform[r7.w].w;
          r10.w = r10.w ? r4.w : r7.w;
          r17.x = dot(icb[r9.w+0].yx, r15.xy);
          r17.y = dot(icb[r9.w+0].yx, r15.yz);
          r17.xy = r17.xy * r12.ww + r16.zw;
          r10.w = (int)r10.w + (int16)sunConstants.splitArrayOffset;
          r17.z = (uint)r10.w;
          r10.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r4.y).x;
          r12.w = gTransShadowmapArray.SampleLevel(samp0_s, r17.xyz, 0).x;
          r10.w = r12.w + r10.w;
          r10.w = saturate(-1 + r10.w);
          r8.w = r10.w * 0.125 + r8.w;
          r9.w = (int)r9.w + 1;
        }
        r4.y = r8.w * r8.w;
        r4.z = r4.y * r8.w;
      }
    }
  }
  r4.y = 1 + -r2.y;
  r4.y = 5 * r4.y;
  r13.yzw = -globalProbeConstants.data[0].xyz + r10.xyz;
  r15.x = globalProbeConstants.data[0].w * r13.y;
  r15.yz = globalProbeConstants.data[1].xy * r13.zw;
  r13.yzw = saturate(float3(0.5,0.5,0.5) + r15.xyz);
  r15.xy = globalProbeConstants.data[1].zw * r13.yz;
  r15.z = globalProbeConstants.data[2].x * r13.w;
  r13.yzw = globalProbeConstants.data[2].yzw + r15.xyz;
  r15.xyz = cmp(float3(0,0,0) < r11.xyz);
  r15.xyz = r15.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
  r15.w = 0;
  r16.xyz = r15.wwx + r13.yzw;
  r16.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r16.xyz, 0).xyz;
  r17.xyz = r11.xyz * r11.xyz;
  r17.xyz = sunConstants.globalProbeExposure * r17.xyz;
  r18.xyz = r15.wwy + r13.yzw;
  r18.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r18.xyz, 0).xyz;
  r18.xyz = r18.xyz * r17.yyy;
  r16.xyz = r16.xyz * r17.xxx + r18.xyz;
  r13.yzw = r15.wwz + r13.yzw;
  r13.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r13.yzw, 0).xyz;
  r13.yzw = r13.yzw * r17.zzz + r16.xyz;
  r11.w = 0;
  r15.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, 6).xyz;
  r13.yzw = r15.xyz * r13.yzw;
  r4.w = dot(r13.yzw, float3(0.212599993,0.715200007,0.0722000003));
  r14.w = 0;
  r14.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r14.xyzw, r4.y).xyz;
  r4.y = sunConstants.globalProbeExposure + -r4.w;
  r4.y = r2.y * r4.y + r4.w;
  r14.xyz = r14.xyz * r4.yyy;
  r4.y = r2.x + r5.x;
  r4.y = log2(abs(r4.y));
  r4.y = r4.y * r1.w;
  r4.y = exp2(r4.y);
  r4.y = r4.y + r5.x;
  r4.y = saturate(-1 + r4.y);
  r13.yzw = r13.yzw * r5.xxx;
  r15.xy = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r15.xy = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r15.xy, 0).xy;
  r14.xyz = r14.xyz * r4.yyy;
  r15.xzw = r14.xyz * r15.xxx;
  r14.xyz = r14.xyz * r15.yyy;
  if (r2.z != 0) {
    r16.x = 3;
    r16.yzw = eyeOffset.xyz;
    GBufferDiffuseColor[viewID].112 = u2.xyzw;
  }
  r2.y = cmp(0 < r3.z);
  if (r2.y != 0) {
    if (r2.z != 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r2.y, cb2[52].x, l(112), u2.xxxx
    r2.y = samp0[]..swiz;
      r2.y = (int)r2.y | 4;
      GBufferDiffuseColor[viewID].112 = u2.x;
      GBufferDiffuseColor[viewID].128 = u2.x;
    }
    r2.y = cmp(0 < r4.z);
    if (r2.y != 0) {
      r2.y = sqrt(r1.w);
      r2.y = r2.y * 0.5 + 0.5;
      r2.y = r2.y * r2.y;
      r4.y = 0.5 * r2.y;
      r2.y = -r2.y * 0.5 + 1;
      r4.w = r2.x * r2.y + r4.y;
      r2.y = r4.w * r2.y;
      r4.y = r4.y * r4.w;
      r4.w = sunConstants.specScale * r1.z;
      r4.w = r4.w * r3.z;
      if (sunConstants.sunCookieIndex != 0) {
        r16.xyz = eyeOffset.xyz + r10.xyz;
        r16.w = 1;
        r5.x = dot(sunConstants.sunCookieTransform[0].xyzw, r16.xyzw);
        r6.w = dot(sunConstants.sunCookieTransform[1].xyzw, r16.xyzw);
        r16.x = frac(r5.x);
        r16.y = frac(r6.w);
        r5.x = -1 + (int14)sunConstants.sunCookieIndex;
        r16.z = (uint)r5.x;
        r16.xyz = gCookieArray.SampleLevel(samplerLinear_s, r16.xyz, 0).xyz;
        r16.xyz = float3(-1,-1,-1) + r16.xyz;
        r16.xyz = sunConstants.sunCookieIntensity * r16.xyz + float3(1,1,1);
        r16.xyz = sunConstants.color.xyz * r16.xyz;
      } else {
        r16.xyz = sunConstants.color.xyz;
      }
      r5.x = viewmodelSunShadowRaw >> 16;
      r6.w = cmp(0 < (uint)r5.x);
      r6.w = r0.z ? r6.w : 0;
      if (r6.w != 0) {
        r5.x = (int)r5.x + numLights;
        r5.x = mad((int)r5.x, 15, -15);
        r6.w = abs(r2.w) * -0.200000003 + 0.400000006;
        r17.xyz = r11.xyz * r6.www + r10.xyz;
        r18.xyz = lightConstantsCB[r5.x].data[4].yzw;
        r18.w = lightConstantsCB[r5.x].data[5].x;
        r17.w = 1;
        r18.x = dot(r18.xyzw, r17.xyzw);
        r19.xyz = lightConstantsCB[r5.x].data[5].yzw;
        r19.w = lightConstantsCB[r5.x].data[6].x;
        r18.y = dot(r19.xyzw, r17.xyzw);
        r18.xy = r18.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r19.x = lightConstantsCB[r5.x].data[9].w + r18.x;
        r19.y = lightConstantsCB[r5.x].data[10].x + r18.y;
        r18.xy = lightConstantsCB[r5.x].data[9].yz * r19.xy;
        r18.zw = lightConstantsCB[r5.x].data[3].yy / lightConstantsCB[r5.x].data[8].yw;
        r19.xy = float2(1,1) + -r18.zw;
        r19.xy = cmp(r18.xy >= r19.xy);
        r18.zw = cmp(r18.zw >= r18.xy);
        r18.zw = (int2)r18.zw | (int2)r19.xy;
        r6.w = (int)r18.w | (int)r18.z;
        if (r6.w == 0) {
          r19.xyz = lightConstantsCB[r5.x].data[6].yzw;
          r19.w = lightConstantsCB[r5.x].data[7].x;
          r6.w = dot(r19.xyzw, r17.xyzw);
          r18.xy = saturate(r18.xy);
          r17.x = r18.x * lightConstantsCB[r5.x].data[8].y + lightConstantsCB[r5.x].data[8].z;
          r17.y = r18.y * lightConstantsCB[r5.x].data[8].w + lightConstantsCB[r5.x].data[9].x;
          r6.w = lightConstantsCB[r5.x].data[10].y + r6.w;
          r6.w = r6.w / lightConstantsCB[r5.x].data[10].z;
          r6.w = max(6.10351563e-05, r6.w);
          r7.w = 0x0000ffff & (int)lightConstantsCB[r5.x].data[1].w;
          if (enableDitheredShadow != 0) {
            r18.x = -r4.x;
            r19.z = (uint)r7.w;
            r18.y = r13.x;
            r18.z = r4.x;
            r8.w = 0;
            r9.w = 0;
            while (true) {
              r10.w = cmp((int)r9.w >= 8);
              if (r10.w != 0) break;
              r20.x = dot(icb[r9.w+0].yx, r18.xy);
              r20.y = dot(icb[r9.w+0].yx, r18.yz);
              r19.xy = r20.xy * lightConstantsCB[r5.x].data[3].yy + r17.xy;
              r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r6.w).x;
              r8.w = r10.w * 0.125 + r8.w;
              r9.w = (int)r9.w + 1;
            }
          } else {
            r17.z = (uint)r7.w;
            r8.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r6.w).x;
          }
          r5.x = r8.w * r8.w;
          r5.x = r5.x * r8.w;
        } else {
          r5.x = 1;
        }
        r4.z = r5.x * r4.z;
      } else {
        r5.x = viewmodelSunShadowRaw & 0x0000ffff;
        r6.w = cmp(0 < (uint)r5.x);
        r0.z = ~(int)r0.z;
        r0.z = r0.z ? r6.w : 0;
        if (r0.z != 0) {
          r0.z = (int)r5.x + numLights;
          r0.z = mad((int)r0.z, 15, -15);
          r5.x = abs(r2.w) * -0.200000003 + 0.400000006;
          r17.xyz = r11.xyz * r5.xxx + r10.xyz;
          r18.xyz = lightConstantsCB[r0.z].data[4].yzw;
          r18.w = lightConstantsCB[r0.z].data[5].x;
          r17.w = 1;
          r18.x = dot(r18.xyzw, r17.xyzw);
          r19.xyz = lightConstantsCB[r0.z].data[5].yzw;
          r19.w = lightConstantsCB[r0.z].data[6].x;
          r18.y = dot(r19.xyzw, r17.xyzw);
          r18.xy = r18.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r19.x = lightConstantsCB[r0.z].data[9].w + r18.x;
          r19.y = lightConstantsCB[r0.z].data[10].x + r18.y;
          r18.xy = lightConstantsCB[r0.z].data[9].yz * r19.xy;
          r18.zw = lightConstantsCB[r0.z].data[3].yy / lightConstantsCB[r0.z].data[8].yw;
          r19.xy = float2(1,1) + -r18.zw;
          r19.xy = cmp(r18.xy >= r19.xy);
          r18.zw = cmp(r18.zw >= r18.xy);
          r18.zw = (int2)r18.zw | (int2)r19.xy;
          r5.x = (int)r18.w | (int)r18.z;
          if (r5.x == 0) {
            r19.xyz = lightConstantsCB[r0.z].data[6].yzw;
            r19.w = lightConstantsCB[r0.z].data[7].x;
            r5.x = dot(r19.xyzw, r17.xyzw);
            r18.xy = saturate(r18.xy);
            r17.x = r18.x * lightConstantsCB[r0.z].data[8].y + lightConstantsCB[r0.z].data[8].z;
            r17.y = r18.y * lightConstantsCB[r0.z].data[8].w + lightConstantsCB[r0.z].data[9].x;
            r5.x = lightConstantsCB[r0.z].data[10].y + r5.x;
            r5.x = r5.x / lightConstantsCB[r0.z].data[10].z;
            r5.x = max(6.10351563e-05, r5.x);
            r6.w = 0x0000ffff & (int)lightConstantsCB[r0.z].data[1].w;
            if (enableDitheredShadow != 0) {
              r18.x = -r4.x;
              r19.z = (uint)r6.w;
              r18.y = r13.x;
              r18.z = r4.x;
              r4.x = 0;
              r7.w = 0;
              while (true) {
                r8.w = cmp((int)r7.w >= 8);
                if (r8.w != 0) break;
                r20.x = dot(icb[r7.w+0].yx, r18.xy);
                r20.y = dot(icb[r7.w+0].yx, r18.yz);
                r19.xy = r20.xy * lightConstantsCB[r0.z].data[3].yy + r17.xy;
                r8.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r5.x).x;
                r4.x = r8.w * 0.125 + r4.x;
                r7.w = (int)r7.w + 1;
              }
            } else {
              r17.z = (uint)r6.w;
              r4.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r5.x).x;
            }
            r0.z = r4.x * r4.x;
            r0.z = r0.z * r4.x;
          } else {
            r0.z = 1;
          }
          r4.z = r4.z * r0.z;
        }
      }
      r0.z = -r2.x * 0.5 + 1;
      r0.z = -r3.z * r0.z + 1;
      r0.z = r0.z * r0.z;
      r0.z = -r0.z * 0.620000005 + 0.620000005;
      r0.z = r0.z + -r3.z;
      r0.z = r1.w * r0.z + r3.z;
      r0.z = r0.z * r4.z;
      r1.w = cmp(0 < r2.w);
      r17.xyz = r0.zzz * r16.xyz + r13.yzw;
      r18.xyz = -r10.xyz * r0.www + sunConstants.wldDir.xyz;
      r0.z = dot(r18.xyz, r18.xyz);
      r0.z = rsqrt(r0.z);
      r18.xyz = r18.xyz * r0.zzz;
      r0.z = dot(r18.xyz, r12.xyz);
      r0.w = dot(r11.xyz, r18.xyz);
      r1.z = abs(r0.w) * r1.z + -abs(r0.w);
      r0.w = abs(r0.w) * r1.z + 1;
      r1.z = r3.z * r2.y + r4.y;
      r0.w = r0.w * r0.w;
      r0.w = r0.w * r1.z;
      r0.w = rcp(r0.w);
      r0.w = r0.w * r4.w;
      r0.w = r4.z * r0.w;
      r0.w = 0.25 * r0.w;
      r2.xyw = r0.www * r16.xyz + r14.xyz;
      r0.z = saturate(1 + -r0.z);
      r1.z = r0.z * r0.z;
      r1.z = r1.z * r1.z;
      r0.z = r1.z * r0.z;
      r0.z = r0.w * r0.z;
      r4.xyw = r0.zzz * r16.xyz + r15.xzw;
      r13.yzw = r1.www ? r17.xyz : r13.yzw;
      r15.xzw = r1.www ? r4.xyw : r15.xzw;
      r14.xyz = r1.www ? r2.xyw : r14.xyz;
      if (r2.z != 0) {
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r0.z, cb2[52].x, l(112), u2.xxxx
      r0.z = samp0[]..swiz;
        r0.z = (int)r0.z | 8;
        GBufferDiffuseColor[viewID].112 = u2.x;
        GBufferDiffuseColor[viewID].132 = u2.x;
      }
      r0.z = 0x00010101;
    } else {
      r0.z = 257;
    }
  } else {
    r0.z = 1;
  }
  r3.xyz = r3.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r0.w = (uint)r3.y;
  r2.xyw = r6.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.z = (uint)r2.x;
  r1.z = cmp((int)r0.w == (int)r1.z);
  r1.zw = r1.zz ? r2.yw : float2(-1,0);
  r2.xyw = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.x = (uint)r2.x;
  r2.x = cmp((int)r0.w == (int)r2.x);
  r2.xy = r2.xx ? r2.yw : float2(-1,0);
  r4.xyz = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.w = (uint)r4.x;
  r2.w = cmp((int)r0.w == (int)r2.w);
  r4.xy = r2.ww ? r4.yz : float2(-1,0);
  r6.xyz = r9.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.w = (uint)r6.x;
  r0.w = cmp((int)r0.w == (int)r2.w);
  r4.zw = r0.ww ? r6.yz : float2(-1,0);
  r6.x = r1.z;
  r6.y = r2.x;
  r6.zw = r4.xz;
  r6.xyzw = r6.xyzw + -r3.xxxx;
  r6.xyzw = cmp(abs(r6.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r6.xyzw = r6.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r0.w = r6.x + r6.y;
  r0.w = r0.w + r6.z;
  r0.w = r0.w + r6.w;
  r1.z = r6.y * r2.y;
  r1.z = r6.x * r1.w + r1.z;
  r1.z = r6.z * r4.y + r1.z;
  r1.z = r6.w * r4.w + r1.z;
  r3.w = r1.z / r0.w;
  r0.w = cmp(0 >= r0.w);
  r3.yz = r0.ww ? float2(0,0) : r3.zw;
  r1.zw = (int2)r1.xy & int2(1,1);
  r0.w = cmp((int)r1.w == (int)r1.z);
  r2.xyw = r0.www ? r3.xyz : r3.xzy;
  r0.w = -r2.w * 0.5 + r2.x;
  r3.y = r2.w + r0.w;
  r3.z = -r2.y * 0.5 + r0.w;
  r3.x = r3.z + r2.y;
  r2.xyw = float3(1,1,1) + -r3.xyz;
  r2.xyw = r15.xzw * r2.xyw;
  r2.xyw = r14.xyz * r3.xyz + r2.xyw;
  r2.xyw = r13.yzw * r5.yzw + r2.xyw;
  r0.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.w != 0) {
    r0.w = dot(r10.xyz, r10.xyz);
    r1.z = rsqrt(r0.w);
    r3.xyz = r10.xyz * r1.zzz;
    r0.w = sqrt(r0.w);
    r1.z = cmp(0 < fogConstants.blendAmount);
    if (r1.z != 0) {
      r1.zw = r0.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r1.zw = fogConstants.atmospherefogdensityatcamera.xy * r1.zw;
      r3.w = cmp(0.00999999978 < abs(r10.z));
      r4.xy = fogConstants.atmospherefogheightdensityscale.xy * r10.zz;
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
      r1.z = r0.w * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r1.z = fogConstants.atmospherefogdensityatcamera.x * r1.z;
      r1.w = cmp(0.00999999978 < abs(r10.z));
      r3.w = fogConstants.atmospherefogheightdensityscale.x * r10.z;
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
    r0.w = -fogConstants.atmospherehazebasedist + r0.w;
    r0.w = saturate(fogConstants.atmospherehazefadedist * r0.w);
    r0.w = r1.w * r0.w;
    r1.z = saturate(r1.z);
    r1.z = r1.z * r1.z + 1;
    r1.z = r1.z * 0.0596831031 + -1;
    r1.z = fogConstants.atmospheresunstrength * r1.z + 1;
    r3.xyz = fogConstants.atmosphereMieDensity.xyz * r0.www;
    r3.xyz = r1.zzz * fogConstants.atmosphereRayleighDensity.xyz + r3.xyz;
    r3.xyz = fogConstants.atmosphereInScatterIntensity * r3.xyz;
    r5.xyz = float3(1,1,1) + -r4.xyz;
    r3.xyz = r5.xyz * r3.xyz;
    r3.xyz = r2.xyw * r4.xyz + r3.xyz;
  } else {
    r0.w = fogConstants.heightFalloff * r10.z;
    r1.z = fogConstants.heightFalloff * r10.z + fogConstants.K0;
    r1.w = cmp(abs(r0.w) < 9.99999975e-05);
    r3.w = min(64, r1.z);
    r3.w = 1.44269502 * r3.w;
    r3.w = exp2(r3.w);
    r4.x = saturate(fogConstants.K0b);
    r4.y = cmp(r1.z < 0);
    r1.z = 1 + r1.z;
    r1.z = r4.y ? r3.w : r1.z;
    r1.z = -fogConstants.K0b + r1.z;
    r0.w = r1.w ? 1 : r0.w;
    r0.w = r1.z / r0.w;
    r0.w = r1.w ? r4.x : r0.w;
    r0.w = fogConstants.expMul * r0.w;
    r1.z = dot(r10.xyz, r10.xyz);
    r1.w = sqrt(r1.z);
    r0.w = r0.w * r1.w + fogConstants.expAdd;
    r0.w = exp2(r0.w);
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r1.z = rsqrt(r1.z);
    r4.xyz = r10.xyz * r1.zzz;
    r1.z = dot(fogConstants.wldSunFogDir.xyz, r4.xyz);
    r1.z = saturate(fogConstants.sunFogAngles.y * r1.z + fogConstants.sunFogAngles.x);
    r4.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r4.xyzw = r1.zzzz * r4.xyzw + fogConstants.sunFogColor.xyzw;
    r0.w = r4.w * r0.w;
    r4.xyz = r4.xyz + -r2.xyw;
    r3.xyz = r0.www * r4.xyz + r2.xyw;
  }
  r2.xyw = relHDRExposure.yyy * r3.xyz;
  r3.xyz = cmp(r2.xyw >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r2.xyw = r3.xyz ? r2.xyw : 0;
  r2.xyw = min(float3(65024,65024,64512), r2.xyw);
  r0.w = cmp(0 < permuteHighlight);
  r3.xyzw = permuteHighlight & int4(32,3,64,12);
  r1.zw = cmp((int2)r3.xz != int2(0,0));
  r3.xy = cmp((int2)r3.yw == int2(1,4));
  r1.zw = r1.zw ? r3.xy : 0;
  r3.xy = r1.zw ? float2(0.200000003,0.200000003) : 0;
  r1.z = permuteHighlight & 16;
  r1.w = cmp((int)r1.z != 0);
  r1.z = cmp((int)r1.z == 0);
  r1.z = r1.z ? r1.w : 0;
  r3.z = r1.z ? 0.200000 : 0;
  r3.xyz = r3.xyz * relHDRExposure.xxx + -r2.xyw;
  r3.xyz = r3.xyz * float3(0.5,0.5,0.5) + r2.xyw;
  r2.xyw = r0.www ? r3.xyz : r2.xyw;
  if (enableCountDebug != 0) {
    if (debugDrawOverlayType != 0) {
      switch (cb2[53].y) {
        case 1 :        r0.w = 1;
        break;
        case 2 :        if (1 == 0) r0.w = 0; else if (1+8 < 32) {         r0.w = (uint)r0.z << (32-(1 + 8)); r0.w = (uint)r0.w >> (32-1);        } else r0.w = (uint)r0.z >> 8;
        break;
        case 3 :        r0.w = (uint)r0.z >> 16;
        break;
        case 4 :        r0.w = 0;
        break;
        case 5 :        r0.w = 1;
        break;
        default :
        r0.w = 0;
        break;
      }
      r0.w = (uint)r0.w;
      r0.w = drawNumLighstScale * r0.w;
      r3.xyz = r0.www * float3(0.5,0.5,0.5) + -r2.xyw;
      r2.xyw = drawNumLightsAlpha * r3.xyz + r2.xyw;
    }
  }
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xyyy, r2.xywx
  if (r2.z != 0) {
    r1.xyz = eyeOffset.xyz + r10.xyz;
    r1.w = 1;
    GBufferDiffuseColor[viewID].92 = u2.xyzw;
    GBufferDiffuseColor[viewID].108 = u2.x;
  }
  if (enableCountDebug != 0) {
    // Needs manual fix for instruction:
    atomic_iadd g1, l(0), l(1)
    InterlockedAdd(dest, value, orig_value);
    if (1 == 0) r0.w = 0; else if (1+8 < 32) {     r0.w = (uint)r0.z << (32-(1 + 8)); r0.w = (uint)r0.w >> (32-1);    } else r0.w = (uint)r0.z >> 8;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(4), r0.w
    InterlockedAdd(dest, value, orig_value);
    r0.z = (uint)r0.z >> 16;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(8), r0.z
    InterlockedAdd(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_iadd g1, l(12), l(0)
    InterlockedAdd(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_iadd g1, l(16), l(1)
    InterlockedAdd(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(0), l(1)
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(4), r0.w
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(8), r0.z
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
    r0.z = cmp((int)r1.x == 63);
    if (r0.z != 0) {
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
        ld_raw r0.z, l(16), g1.xxxx
      r1.xz = viewID;
      r1.yw = float2(7.8472714e-44,0);
      // Needs manual fix for instruction:
        atomic_iadd u2, r1.xyxx, r0.z
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
        ld_raw r0.z, l(16), g2.xxxx
      // Needs manual fix for instruction:
        atomic_umax u2, r1.zwzz, r0.z
      InterlockedMax(dest, value, orig_value);
      r0.xy = cmp((int2)r0.xy == centerGroupIDx);
      r0.x = r0.y ? r0.x : 0;
      if (r0.x != 0) {
        GBufferDiffuseColor[viewID].20 = u2.xyzw;
        GBufferDiffuseColor[viewID].36 = u2.x;
      }
    }
  }
  return;
}