// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:23:07 2021

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
// unknown dcl_: dcl_resource_structured t26, 4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
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
  r3.x = cmp(r2.z >= 0.5);
  r3.y = GBufferDepth.Load(r1.xyw).x;
  r4.xyz = GBufferDiffuseColor.Load(r1.xyw).xyz;
  r5.xyzw = GBufferSpecularColorAndOcclusion.Load(r1.xyw).xyzw;
  r6.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r7.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r8.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r9.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyz, int3(0, 0, 0)).xyw;
  r1.zw = (uint2)r1.yx;
  r3.zw = float2(0.5,0.5) + r1.wz;
  r10.x = cmp(r3.y >= 0.984375);
  r4.w = 1.01587307 * r3.y;
  r3.y = r3.y * 64 + -63;
  r3.y = r10.x ? r3.y : r4.w;
  r3.y = max(9.99999994e-09, r3.y);
  r10.y = rcp(r3.y);
  r10.xy = r10.xy ? r0.ww : 0;
  r10.zw = -subpixelOffset.xy + r3.zw;
  r10.zw = renderTargetSize.zw * r10.zw;
  r10.zw = r10.zw * float2(2,-2) + float2(-1,1);
  r11.x = inverseProjectionMatrix._m00 * r10.z;
  r11.y = inverseProjectionMatrix._m11 * r10.w;
  r11.z = 1;
  r11.xyz = r11.xyz * r10.yyy;
  r12.xyz = inverseViewMatrix._m10_m11_m12 * r11.yyy;
  r11.xyw = r11.xxx * inverseViewMatrix._m00_m01_m02 + r12.xyz;
  r11.xyz = r11.zzz * inverseViewMatrix._m20_m21_m22 + r11.xyw;
  r0.w = r2.w * 3 + 0.5;
  r0.w = (uint)r0.w;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r2.xy = float2(0.850000024,0.850000024) * r2.xy;
  r2.w = dot(r2.xy, r2.xy);
  r12.zw = float2(2,1) + -r2.ww;
  r2.w = sqrt(r12.z);
  r12.xy = r2.xy * r2.ww;
  r13.xyzw = (int4)r0.wwww & int4(2,1,2,1);
  r13.xyzw = r13.zwxy ? float4(-1,-1,1.40129846e-45,1.40129846e-45) : float4(1,1,0,0);
  r0.w = (int)r13.w ^ (int)r13.z;
  r13.z = r0.w ? -1 : 1;
  r2.xyw = float3(-1,0,1) * r13.xyz;
  r14.xyz = float3(1,-2,1) * r13.xyz;
  r12.xyz = float3(0.408248305,0.707106769,0.577350259) * r12.xyw;
  r2.xyw = r12.yyy * r2.xyw;
  r2.xyw = r14.xyz * r12.xxx + r2.xyw;
  r12.xyz = r13.xyz * r12.zzz + r2.xyw;
  r0.w = r3.x ? -0.5 : -0.00146627566;
  r0.w = r2.z + r0.w;
  r2.y = saturate(2.00982332 * r0.w);
  r0.w = dot(-r11.xyz, -r11.xyz);
  r0.w = rsqrt(r0.w);
  r13.xyz = -r11.xyz * r0.www;
  r2.z = dot(r1.wz, float2(0.0671105608,0.00583714992));
  r2.z = frac(r2.z);
  r2.z = 52.9829178 * r2.z;
  r2.z = frac(r2.z);
  r2.z = r2.z * 6.28318548 + gameTick.w;
  sincos(r2.z, r14.x, r15.x);
  r1.z = dot(r1.zw, float2(0.0671105608,0.00583714992));
  r1.z = frac(r1.z);
  r1.z = 52.9829178 * r1.z;
  r1.z = frac(r1.z);
  r1.z = r1.z * 6.28318548 + gameTick.w;
  sincos(r1.z, r16.x, r17.x);
  r2.x = saturate(dot(r12.xyz, r13.xyz));
  r1.z = dot(-r13.xyz, r12.xyz);
  r1.z = r1.z + r1.z;
  r18.xyz = r12.xyz * -r1.zzz + -r13.xyz;
  r1.z = 17 * r2.y;
  r1.z = exp2(r1.z);
  r1.z = 2 + r1.z;
  r1.z = 2 / r1.z;
  r1.w = sqrt(r1.z);
  r2.zw = renderTargetSize.zw * r3.zw;
  r19.xyzw = gSSAOTexture.Gather(samplerLinearClamp_s, r2.zw).xyzw;
  r20.xyzw = gSSAODepthTexture.Gather(samplerLinearClamp_s, r2.zw).xyzw;
  r2.zw = float2(0.5,0.5) * r3.zw;
  r2.zw = frac(r2.zw);
  r3.yz = float2(1,1) + -r2.wz;
  r21.y = r3.z * r3.y;
  r21.xz = r3.yz * r2.zw;
  r21.w = r2.z * r2.w;
  r2.z = dot(r19.xyzw, r21.xyzw);
  r20.xyzw = r20.xyzw + -r10.yyyy;
  r2.w = min(abs(r20.z), abs(r20.w));
  r2.w = min(abs(r20.y), r2.w);
  r2.w = min(abs(r20.x), r2.w);
  r3.y = max(abs(r20.z), abs(r20.w));
  r3.y = max(abs(r20.y), r3.y);
  r3.y = max(abs(r20.x), r3.y);
  r16.yzw = cmp(r2.www == abs(r20.yzw));
  r2.w = r16.y ? r19.y : r19.x;
  r2.w = r16.z ? r19.z : r2.w;
  r2.w = r16.w ? r19.w : r2.w;
  r3.z = 0.00999999978 * r10.y;
  r3.y = cmp(r3.z < r3.y);
  r2.z = r3.y ? r2.w : r2.z;
  r2.w = r5.z * r2.z;
  r3.y = dot(r12.xyz, sunConstants.wldDir.xyz);
  r3.z = saturate(r3.y);
  r3.w = r3.x ? abs(r3.y) : r3.z;
  r4.w = cmp(0 >= r3.w);
  if (r4.w != 0) {
    r6.w = 0;
  }
  if (r4.w == 0) {
    r10.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * r11.yyy;
    r10.yzw = r11.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r10.yzw;
    r10.yzw = r11.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r10.yzw;
    r10.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r10.yzw;
    r4.w = -sunConstants.splitDepthOffset + r10.w;
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
        r14.zw = -sunConstants.splitPinTransform[r9.w].xy + r10.yz;
        r13.w = max(abs(r14.z), abs(r14.w));
        r8.w = sunConstants.splitPinTransform[r9.w].z * r13.w;
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
      r16.yzw = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r19.xz = rcp(r16.yy);
      r19.y = -r19.z;
      r16.yzw = r10.yzy * r19.xyz + r16.zwz;
      r17.yzw = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r16.yzw = max(float3(0,0,0), r16.yzw);
      r16.yzw = min(r16.yzw, r17.yzw);
      r14.zw = sunConstants.sstLightingConstants.coordScale * r16.wz;
      r14.zw = floor(r14.zw);
      r13.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r14.w;
      r13.w = r13.w * sunConstants.sstLightingConstants.coordScale + r14.z;
      r13.w = (uint)r13.w;
      r13.w = (int)r13.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.z, r13.w, l(0), t23.xxxx
    r14.z = samp0[]..swiz;
      r14.w = (int)r14.z & 0x40000000;
      r15.w = (uint)r14.z << 2;
      if (r14.w == 0) {
        r14.w = (int)r14.z & 0x01ffffff;
        r19.x = (int)r13.w + (int)r14.w;
        r13.w = (uint)r14.z >> 25;
        r13.w = (uint)r13.w;
        r16.yzw = r16.yzw * r13.www;
        r16.yzw = frac(r16.yzw);
        r16.yzw = float3(128,128,128) * r16.yzw;
        r16.yzw = (uint3)r16.yzw;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
      r19.z = samp0[]..swiz;
        r14.zw = (uint2)r16.wz >> int2(6,6);
        r13.w = (int)r19.z & 0xc0000000;
        r17.y = (int)r19.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.y, r17.y, l(0), t23.xxxx
      r17.y = samp0[]..swiz;
        r14.w = r14.w ? r19.z : r17.y;
        r17.y = (uint)r14.w >> 13;
        r14.z = r14.z ? r17.y : r14.w;
        r14.z = (int)r14.z & 8191;
        r20.x = (int)r14.z + (int)r19.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.z, r20.x, l(0), t23.xxxx
      r20.z = samp0[]..swiz;
        r19.y = 0;
        r20.y = 1;
        r17.yzw = r13.www ? r19.xyz : r20.xyz;
        r20.yz = r13.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r14.zw = (uint2)r16.wz >> (uint2)r20.yy;
        r14.zw = (int2)r14.zw & int2(1,1);
        r19.w = (int)r17.w & 0xc0000000;
        r20.y = (int)r17.y + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.y, r20.y, l(0), t23.xxxx
      r20.y = samp0[]..swiz;
        r14.w = r14.w ? r17.w : r20.y;
        r20.y = (uint)r14.w >> 13;
        r14.z = r14.z ? r20.y : r14.w;
        r14.z = (int)r14.z & 8191;
        r20.x = (int)r14.z + (int)r17.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.w, r20.x, l(0), t23.xxxx
      r20.w = samp0[]..swiz;
        r17.yzw = r19.www ? r17.yzw : r20.xzw;
        r17.yzw = r13.www ? r19.xyz : r17.yzw;
        r13.w = (int)r17.w & 0xc0000000;
        if (r13.w == 0) {
          r13.w = (int)-r17.z + 6;
          r14.zw = (uint2)r16.wz >> (uint2)r13.ww;
          r13.w = (int)r17.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r14.w = (((uint)r14.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r14.z = (((uint)r14.z << 0) & bitmask.z) | ((uint)r14.w & ~bitmask.z);
          r14.z = (int)r14.z * 10;
          r13.w = (uint)r13.w >> (uint)r14.z;
          r13.w = (int)r13.w & 1023;
          r19.x = (int)r13.w + (int)r17.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.w, r19.x, l(0), t23.xxxx
        r19.w = samp0[]..swiz;
          r19.yz = (int2)r17.zz + int2(1,2);
          r13.w = (int)-r19.y + 6;
          r14.zw = (uint2)r16.wz >> (uint2)r13.ww;
          r13.w = (int)r19.w & 0xc0000000;
          r17.z = (int)r19.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r14.w = (((uint)r14.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r14.z = (((uint)r14.z << 0) & bitmask.z) | ((uint)r14.w & ~bitmask.z);
          r14.z = (int)r14.z * 10;
          r14.z = (uint)r17.z >> (uint)r14.z;
          r14.z = (int)r14.z & 1023;
          r20.x = (int)r14.z + (int)r19.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.z, r20.x, l(0), t23.xxxx
        r20.z = samp0[]..swiz;
          r20.y = r19.z;
          r20.xyz = r13.www ? r19.xyw : r20.xyz;
          r14.z = (int)-r20.y + 6;
          r14.zw = (uint2)r16.wz >> (uint2)r14.zz;
          r17.z = (int)r20.z & 0xc0000000;
          r19.y = (int)r20.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r14.w = (((uint)r14.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r14.z = (((uint)r14.z << 0) & bitmask.z) | ((uint)r14.w & ~bitmask.z);
          r14.z = (int)r14.z * 10;
          r14.z = (uint)r19.y >> (uint)r14.z;
          r14.z = (int)r14.z & 1023;
          r21.x = (int)r14.z + (int)r20.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r21.y, r21.x, l(0), t23.xxxx
        r21.y = samp0[]..swiz;
          r14.zw = r17.zz ? r20.xz : r21.xy;
          r17.yw = r13.ww ? r19.xw : r14.zw;
        }
        r13.w = (int)r17.w & 0xc0000000;
        if (r13.w == 0) {
          if (14 == 0) r14.z = 0; else if (14+15 < 32) {           r14.z = (uint)r17.w << (32-(14 + 15)); r14.z = (uint)r14.z >> (32-14);          } else r14.z = (uint)r17.w >> 15;
          r14.z = (uint)r14.z;
          r14.z = sunConstants.sstLightingConstants.constants.spanInInches * r14.z;
          r19.xy = (int2)r17.ww & int2(32767,536870912);
          r14.w = (uint)r19.x;
          r14.w = sunConstants.sstLightingConstants.constants.spanInInches * r14.w;
          r14.zw = float2(6.10388815e-05,3.05185094e-05) * r14.zw;
          r17.z = (int)r16.z & 3;
          r17.z = (int)r17.z + (int)r17.y;
          r17.z = (int)r17.z + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.z, l(0), t23.xxxx
        r17.z = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r19.x = (((uint)r16.y << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.z = ((~(-1 << 2)) << 1) & 0xffffffff;  r19.z = (((uint)r16.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.w = ((~(-1 << 1)) << 4) & 0xffffffff;  r19.w = (((uint)r16.w << 4) & bitmask.w) | ((uint)0 & ~bitmask.w);
          r16.y = (uint)r17.z >> (uint)r19.x;
          r16.y = (int)r16.y & 255;
          r16.y = (uint)r16.y;
          r16.y = r16.y * r14.w;
          r16.y = r16.y * 0.00392156886 + r14.z;
          r16.z = (int)r19.z + 1;
          if (1 == 0) r16.w = 0; else if (1+1 < 32) {           r16.w = (uint)r16.w << (32-(1 + 1)); r16.w = (uint)r16.w >> (32-1);          } else r16.w = (uint)r16.w >> 1;
          r16.z = (int)r16.w + (int)r16.z;
          r16.z = (int)r16.z + (int)r17.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.z, l(0), t23.xxxx
        r16.z = samp0[]..swiz;
          r16.z = (uint)r16.z >> (uint)r19.w;
          r16.z = (int)r16.z & 0x0000ffff;
          r16.z = (uint)r16.z;
          r14.w = r16.z * r14.w;
          r14.z = r14.w * 1.52590219e-05 + r14.z;
          r15.w = r19.y ? r16.y : r14.z;
        } else {
          r14.z = (int)r17.w & 0x80000000;
          r14.w = (int)r17.y + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.w, r14.w, l(0), t23.xxxx
        r14.w = samp0[]..swiz;
          r14.z = r14.z ? r14.w : 0;
          r14.w = (uint)r17.w << 2;
          r16.y = (uint)r14.z >> 16;
          r16.y = f16tof32(r16.y);
          r14.z = (int)r14.z & 0x0000ffff;
          r14.z = f16tof32(r14.z);
          r14.w = r10.y * r16.y + r14.w;
          r14.z = r10.z * r14.z + r14.w;
          r15.w = r13.w ? r14.z : r15.w;
        }
      }
      r10.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r10.w;
      r10.w = cmp(r15.w < r10.w);
      r6.w = r10.w ? 0 : 1;
    }
    if (r9.w == 0) {
      if (enableDitheredShadow == 0) {
        r9.w = (uint)r7.w;
        r14.zw = -sunConstants.splitPinTransform[r9.w].xy + r10.yz;
        r14.zw = sunConstants.splitPinTransform[r9.w].zz * r14.zw;
        r19.xy = r14.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r9.w = (int16)sunConstants.splitArrayOffset;
        r19.z = r9.w + r7.w;
        r9.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r4.w).x;
        r10.w = gTransShadowmapArray.SampleLevel(samp0_s, r19.xyz, 0).x;
        r9.w = r10.w + r9.w;
        r9.w = saturate(-1 + r9.w);
        r10.w = r9.w * r9.w;
        r6.w = r10.w * r9.w;
      }
      if (enableDitheredShadow != 0) {
        r19.x = -r14.x;
        r9.w = (uint)r7.w;
        r7.w = 1 + r7.w;
        r7.w = min(2, r7.w);
        r7.w = (uint)r7.w;
        r8.w = 1 + -r8.w;
        r8.w = 28 * r8.w;
        r8.w = (uint)r8.w;
        r14.zw = -sunConstants.splitPinTransform[r9.w].xy + r10.yz;
        r14.zw = sunConstants.splitPinTransform[r9.w].zz * r14.zw;
        r14.zw = r14.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.yz = -sunConstants.splitPinTransform[r7.w].xy + r10.yz;
        r10.yz = sunConstants.splitPinTransform[r7.w].zz * r10.yz;
        r10.yz = r10.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r19.y = r15.x;
        r19.z = r14.x;
        r10.w = 0;
        r13.w = 0;
        while (true) {
          r15.w = cmp((uint)r13.w >= 8);
          if (r15.w != 0) break;
          r15.w = cmp((uint)r8.w < (uint)r13.w);
          r16.yz = r15.ww ? r10.yz : r14.zw;
          r16.w = r15.w ? sunConstants.splitPinTransform[r7.w].w : sunConstants.splitPinTransform[r9.w].w;
          r15.w = r15.w ? r7.w : r9.w;
          r20.x = dot(icb[r13.w+0].yx, r19.xy);
          r20.y = dot(icb[r13.w+0].yx, r19.yz);
          r20.xy = r20.xy * r16.ww + r16.yz;
          r15.w = (int)r15.w + (int16)sunConstants.splitArrayOffset;
          r20.z = (uint)r15.w;
          r15.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r4.w).x;
          r16.y = gTransShadowmapArray.SampleLevel(samp0_s, r20.xyz, 0).x;
          r15.w = r16.y + r15.w;
          r15.w = saturate(-1 + r15.w);
          r10.w = r15.w * 0.125 + r10.w;
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
  r10.yz = -r4.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r9.w = exp2(r10.y);
  r9.w = r9.w * r2.x;
  r9.w = 9.1368103 * r9.w;
  r10.y = r7.w * r4.w;
  r10.y = -r10.y * 2.0159049 + r10.z;
  r10.y = exp2(r10.y);
  r10.y = r10.y * r2.x;
  r10.y = 9.70808983 * r10.y;
  r9.w = max(r10.y, r9.w);
  r9.w = max(1.26815999, r9.w);
  r10.y = numRefProbes + -numOverrideProbes;
  r10.z = (uint)renderTargetSize.x;
  r10.z = (int)r10.z + 7;
  r10.z = (uint)r10.z >> 3;
  r0.y = mad((int)r0.z, (int)r10.z, (int)r0.y);
  bitmask.y = ((~(-1 << 27)) << 5) & 0xffffffff;  r0.y = (((uint)r0.y << 5) & bitmask.y) | ((uint)16 & ~bitmask.y);
  r0.z = (int)r10.y & -32;
  r10.z = (int)-r0.z + (int)r10.y;
  r10.w = numRefProbes & -32;
  r13.w = (int)-r10.w + numRefProbes;
  r19.yz = float2(0,1);
  r20.xy = float2(0,0);
  r21.x = 1;
  r22.xy = float2(0,0);
  r23.xy = float2(0,0);
  r24.xyzw = float4(0,0,0,0);
  r25.yzw = float3(0,0,0);
  r14.z = r0.z;
  while (true) {
    r14.w = cmp((uint)r14.z >= numRefProbes);
    if (r14.w != 0) break;
    r14.w = (uint)r14.z >> 5;
    r14.w = (int)r0.y + (int)r14.w;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.w, r14.w, l(0), t26.xxxx
  r14.w = samp0[]..swiz;
    r15.w = cmp((int)r0.z == (int)r14.z);
    bitmask.y = ((~(-1 << r10.z)) << 0) & 0xffffffff;  r16.y = (((uint)0 << 0) & bitmask.y) | ((uint)r14.w & ~bitmask.y);
    r14.w = r15.w ? r16.y : r14.w;
    r15.w = cmp((int)r10.w == (int)r14.z);
    if (r13.w == 0) r16.y = 0; else if (r13.w+0 < 32) {     r16.y = (uint)r14.w << (32-(r13.w + 0)); r16.y = (uint)r16.y >> (32-r13.w);    } else r16.y = (uint)r14.w >> 0;
    r14.w = r15.w ? r16.y : r14.w;
    r26.xyzw = r24.xyzw;
    r27.xyz = r25.yzw;
    r15.w = r14.w;
    while (true) {
      if (r15.w == 0) break;
      r16.y = firstbitlow((uint)r15.w);
      r16.z = 1 << (int)r16.y;
      r16.z = ~(int)r16.z;
      r15.w = (int)r15.w & (int)r16.z;
      r16.y = (int)r14.z + (int)r16.y;
      r16.y = (int)r16.y * 14;
      r17.yzw = -refProbeConstantsCB[r16.y].data[0].xyz + r11.xyz;
      r16.z = 0x0000ffff & (int)refProbeConstantsCB[r16.y].data[7].z;
      if (6 == 0) r16.w = 0; else if (6+25 < 32) {       r16.w = (uint)refProbeConstantsCB[r16.y].data[7].z << (32-(6 + 25)); r16.w = (uint)r16.w >> (32-6);      } else r16.w = (uint)refProbeConstantsCB[r16.y].data[7].z >> 25;
      r19.w = (int)r16.z * 6;
      r20.w = dot(refProbeAttenuationConstantsCB[r19.w].data[0].xyz, r17.yzw);
      r20.w = saturate(refProbeAttenuationConstantsCB[r19.w].data[0].w + r20.w);
      r21.z = dot(refProbeAttenuationConstantsCB[r19.w].data[1].xyz, r17.yzw);
      r21.z = saturate(refProbeAttenuationConstantsCB[r19.w].data[1].w + r21.z);
      r20.w = r21.z * r20.w;
      r21.z = dot(refProbeAttenuationConstantsCB[r19.w].data[2].xyz, r17.yzw);
      r21.z = saturate(refProbeAttenuationConstantsCB[r19.w].data[2].w + r21.z);
      r20.w = r21.z * r20.w;
      r21.z = dot(refProbeAttenuationConstantsCB[r19.w].data[3].xyz, r17.yzw);
      r21.z = saturate(refProbeAttenuationConstantsCB[r19.w].data[3].w + r21.z);
      r20.w = r21.z * r20.w;
      r21.z = dot(refProbeAttenuationConstantsCB[r19.w].data[4].xyz, r17.yzw);
      r21.z = saturate(refProbeAttenuationConstantsCB[r19.w].data[4].w + r21.z);
      r20.w = r21.z * r20.w;
      r21.z = dot(refProbeAttenuationConstantsCB[r19.w].data[5].xyz, r17.yzw);
      r19.w = saturate(refProbeAttenuationConstantsCB[r19.w].data[5].w + r21.z);
      r19.x = r20.w * r19.w;
      r19.w = 1 & (int)refProbeConstantsCB[r16.y].data[6].x;
      r19.xw = r19.ww ? r19.xy : r19.zx;
      r20.w = refProbeConstantsCB[r16.y].data[6].x;
      r28.xy = r19.xw;
      r21.z = 1;
      while (true) {
        r21.w = cmp((int)r21.z >= (int)r16.w);
        if (r21.w != 0) break;
        r21.w = (int)r16.z + (int)r21.z;
        r21.w = (int)r21.w * 6;
        r22.w = dot(refProbeAttenuationConstantsCB[r21.w].data[0].xyz, r17.yzw);
        r22.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[0].w + r22.w);
        r22.w = r28.x * r22.w;
        r23.w = dot(refProbeAttenuationConstantsCB[r21.w].data[1].xyz, r17.yzw);
        r23.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[1].w + r23.w);
        r22.w = r23.w * r22.w;
        r23.w = dot(refProbeAttenuationConstantsCB[r21.w].data[2].xyz, r17.yzw);
        r23.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[2].w + r23.w);
        r22.w = r23.w * r22.w;
        r23.w = dot(refProbeAttenuationConstantsCB[r21.w].data[3].xyz, r17.yzw);
        r23.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[3].w + r23.w);
        r22.w = r23.w * r22.w;
        r23.w = dot(refProbeAttenuationConstantsCB[r21.w].data[4].xyz, r17.yzw);
        r23.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[4].w + r23.w);
        r22.w = r23.w * r22.w;
        r23.w = dot(refProbeAttenuationConstantsCB[r21.w].data[5].xyz, r17.yzw);
        r21.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[5].w + r23.w);
        r28.x = r22.w * r21.w;
        r23.w = (uint)r20.w >> 2;
        if (1 == 0) r28.z = 0; else if (1+2 < 32) {         r28.z = (uint)r20.w << (32-(1 + 2)); r28.z = (uint)r28.z >> (32-1);        } else r28.z = (uint)r20.w >> 2;
        r28.w = (int)r23.w & 2;
        r29.x = max(r28.y, r28.x);
        r21.w = -r22.w * r21.w + 1;
        r21.w = r28.y * r21.w;
        r21.y = r28.w ? r21.w : r29.x;
        r28.xy = r28.zz ? r28.xy : r21.xy;
        r21.z = (int)r21.z + 1;
        r20.w = r23.w;
      }
      r28.y = saturate(r28.y);
      r16.z = refProbeConstantsCB[r16.y].data[6].y * r28.y;
      r16.w = cmp(0 < r16.z);
      if (r16.w != 0) {
        r27.z = r28.y * refProbeConstantsCB[r16.y].data[6].y + r27.z;
        r16.z = refProbeConstantsCB[r16.y].data[7].y * r16.z;
        r29.x = refProbeConstantsCB[r16.y].data[7].w;
        r29.yz = refProbeConstantsCB[r16.y].data[8].xy;
        r16.w = dot(r18.xyz, r29.xyz);
        r19.x = dot(r17.yzw, r29.xyz);
        r19.x = -refProbeConstantsCB[r16.y].data[8].z + r19.x;
        r19.w = cmp(r19.x >= 0);
        r19.x = max(abs(r19.x), r8.w);
        r19.x = r19.w ? r19.x : -r19.x;
        r16.w = max(1.00000001e-07, -r16.w);
        r16.w = r19.x / r16.w;
        r16.w = min(131072, abs(r16.w));
        r29.x = refProbeConstantsCB[r16.y].data[8].w;
        r29.yz = refProbeConstantsCB[r16.y].data[9].xy;
        r19.x = dot(r18.xyz, r29.xyz);
        r19.w = dot(r17.yzw, r29.xyz);
        r19.w = -refProbeConstantsCB[r16.y].data[9].z + r19.w;
        r20.w = cmp(r19.w >= 0);
        r19.w = max(abs(r19.w), r8.w);
        r19.w = r20.w ? r19.w : -r19.w;
        r19.x = max(1.00000001e-07, -r19.x);
        r19.x = r19.w / r19.x;
        r16.w = min(abs(r19.x), r16.w);
        r29.x = refProbeConstantsCB[r16.y].data[9].w;
        r29.yz = refProbeConstantsCB[r16.y].data[10].xy;
        r19.x = dot(r18.xyz, r29.xyz);
        r19.w = dot(r17.yzw, r29.xyz);
        r19.w = -refProbeConstantsCB[r16.y].data[10].z + r19.w;
        r20.w = cmp(r19.w >= 0);
        r19.w = max(abs(r19.w), r8.w);
        r19.w = r20.w ? r19.w : -r19.w;
        r19.x = max(1.00000001e-07, -r19.x);
        r19.x = r19.w / r19.x;
        r16.w = min(abs(r19.x), r16.w);
        r29.x = refProbeConstantsCB[r16.y].data[10].w;
        r29.yz = refProbeConstantsCB[r16.y].data[11].xy;
        r19.x = dot(r18.xyz, r29.xyz);
        r19.w = dot(r17.yzw, r29.xyz);
        r19.w = -refProbeConstantsCB[r16.y].data[11].z + r19.w;
        r20.w = cmp(r19.w >= 0);
        r19.w = max(abs(r19.w), r8.w);
        r19.w = r20.w ? r19.w : -r19.w;
        r19.x = max(1.00000001e-07, -r19.x);
        r19.x = r19.w / r19.x;
        r16.w = min(abs(r19.x), r16.w);
        r29.x = refProbeConstantsCB[r16.y].data[11].w;
        r29.yz = refProbeConstantsCB[r16.y].data[12].xy;
        r19.x = dot(r18.xyz, r29.xyz);
        r19.w = dot(r17.yzw, r29.xyz);
        r19.w = -refProbeConstantsCB[r16.y].data[12].z + r19.w;
        r20.w = cmp(r19.w >= 0);
        r19.w = max(abs(r19.w), r8.w);
        r19.w = r20.w ? r19.w : -r19.w;
        r19.x = max(1.00000001e-07, -r19.x);
        r19.x = r19.w / r19.x;
        r16.w = min(abs(r19.x), r16.w);
        r29.x = refProbeConstantsCB[r16.y].data[12].w;
        r29.yz = refProbeConstantsCB[r16.y].data[13].xy;
        r19.x = dot(r18.xyz, r29.xyz);
        r19.w = dot(r17.yzw, r29.xyz);
        r19.w = -refProbeConstantsCB[r16.y].data[13].z + r19.w;
        r20.w = cmp(r19.w >= 0);
        r19.w = max(abs(r19.w), r8.w);
        r19.w = r20.w ? r19.w : -r19.w;
        r19.x = max(1.00000001e-07, -r19.x);
        r19.x = r19.w / r19.x;
        r16.w = min(abs(r19.x), r16.w);
        r29.x = refProbeConstantsCB[r16.y].data[3].w + r17.y;
        r29.yz = refProbeConstantsCB[r16.y].data[4].xy + r17.zw;
        r21.yzw = r18.xyz * r16.www + r29.xyz;
        r19.x = dot(r21.yzw, r21.yzw);
        r19.x = sqrt(r19.x);
        r16.w = r16.w / r19.x;
        r16.w = r16.w + r16.w;
        r16.w = sqrt(r16.w);
        r16.w = r4.w * 5 + r16.w;
        r16.w = -0.844799995 + r16.w;
        r29.x = refProbeConstantsCB[r16.y].data[0].w;
        r29.y = refProbeConstantsCB[r16.y].data[1].z;
        r29.z = refProbeConstantsCB[r16.y].data[2].y;
        r30.x = dot(r21.yzw, r29.xyz);
        r31.xy = refProbeConstantsCB[r16.y].data[1].xw;
        r31.z = refProbeConstantsCB[r16.y].data[2].z;
        r30.y = dot(r21.yzw, r31.xyz);
        r32.x = refProbeConstantsCB[r16.y].data[1].y;
        r32.yz = refProbeConstantsCB[r16.y].data[2].xw;
        r30.z = dot(r21.yzw, r32.xyz);
        if (9 == 0) r19.x = 0; else if (9+16 < 32) {         r19.x = (uint)refProbeConstantsCB[r16.y].data[7].z << (32-(9 + 16)); r19.x = (uint)r19.x >> (32-9);        } else r19.x = (uint)refProbeConstantsCB[r16.y].data[7].z >> 16;
        r30.w = (uint)r19.x;
        r21.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r30.xyzw, r16.w).xyz;
        r33.x = dot(r17.yzw, r29.xyz);
        r33.y = dot(r17.yzw, r31.xyz);
        r33.z = dot(r17.yzw, r32.xyz);
        r17.yzw = saturate(r33.xyz * refProbeConstantsCB[r16.y].data[3].xyz + float3(0.5,0.5,0.5));
        r33.xy = refProbeConstantsCB[r16.y].data[4].zw * r17.yz;
        r33.z = refProbeConstantsCB[r16.y].data[5].x * r17.w;
        r17.yzw = refProbeConstantsCB[r16.y].data[5].yzw + r33.xyz;
        r30.x = dot(r12.xyz, r29.xyz);
        r30.y = dot(r12.xyz, r31.xyz);
        r30.z = dot(r12.xyz, r32.xyz);
        r28.xzw = cmp(float3(0,0,0) < r30.xyz);
        r20.z = r28.x ? 0 : 0.5;
        r29.xyz = r20.xyz + r17.yzw;
        r29.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r29.xyz, 0).xyz;
        r31.xyz = r30.xyz * r30.xyz;
        r31.xyz = r31.xyz * r16.zzz;
        r22.z = r28.z ? 0 : 0.5;
        r32.xyz = r22.xyz + r17.yzw;
        r32.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r32.xyz, 0).xyz;
        r32.xyz = r32.xyz * r31.yyy;
        r29.xyz = r29.xyz * r31.xxx + r32.xyz;
        r23.z = r28.w ? 0 : 0.5;
        r17.yzw = r23.xyz + r17.yzw;
        r17.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r17.yzw, 0).xyz;
        r17.yzw = r17.yzw * r31.zzz + r29.xyz;
        r28.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r30.xyzw, 6).xyz;
        r29.xyz = r28.xzw * r17.yzw;
        r16.y = dot(r29.xyz, float3(0.212599993,0.715200007,0.0722000003));
        r26.xyz = r17.yzw * r28.xzw + r26.xyz;
        r16.w = r16.y * r9.w;
        r17.yzw = r21.yzw * r16.zzz;
        r16.z = dot(r17.yzw, float3(0.212599993,0.715200007,0.0722000003));
        r16.y = r9.w * r16.y + r16.z;
        r16.y = r16.w / r16.y;
        r29.x = r26.w;
        r29.yz = r27.xy;
        r27.xyw = r17.zwy * r16.yyy + r29.yzx;
        r26.w = r27.w;
      }
    }
    r24.xyzw = r26.xyzw;
    r25.yzw = r27.xyz;
    r14.z = (int)r14.z + 32;
  }
  r10.w = cmp(r25.w < 1);
  if (r10.w != 0) {
    r19.yz = float2(0,1);
    r20.xy = float2(0,0);
    r21.x = 1;
    r22.xy = float2(0,0);
    r23.xy = float2(0,0);
    r26.x = r24.w;
    r26.yzw = r25.yzw;
    r16.yzw = r24.xyz;
    r10.w = r25.w;
    r13.w = 0;
    while (true) {
      r14.z = cmp((uint)r13.w >= (uint)r10.y);
      if (r14.z != 0) break;
      r14.z = (uint)r13.w >> 5;
      r14.z = (int)r0.y + (int)r14.z;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.z, r14.z, l(0), t26.xxxx
    r14.z = samp0[]..swiz;
      r14.w = cmp((int)r0.z == (int)r13.w);
      if (r10.z == 0) r15.w = 0; else if (r10.z+0 < 32) {       r15.w = (uint)r14.z << (32-(r10.z + 0)); r15.w = (uint)r15.w >> (32-r10.z);      } else r15.w = (uint)r14.z >> 0;
      r14.z = r14.w ? r15.w : r14.z;
      r27.xyzw = r26.xyzw;
      r17.yzw = r16.yzw;
      r14.w = r10.w;
      r15.w = r14.z;
      while (true) {
        if (r15.w == 0) break;
        r19.w = firstbitlow((uint)r15.w);
        r20.w = 1 << (int)r19.w;
        r20.w = ~(int)r20.w;
        r15.w = (int)r15.w & (int)r20.w;
        r19.w = (int)r13.w + (int)r19.w;
        r19.w = (int)r19.w * 14;
        r28.xyz = -refProbeConstantsCB[r19.w].data[0].xyz + r11.xyz;
        r20.w = 0x0000ffff & (int)refProbeConstantsCB[r19.w].data[7].z;
        if (6 == 0) r21.z = 0; else if (6+25 < 32) {         r21.z = (uint)refProbeConstantsCB[r19.w].data[7].z << (32-(6 + 25)); r21.z = (uint)r21.z >> (32-6);        } else r21.z = (uint)refProbeConstantsCB[r19.w].data[7].z >> 25;
        r21.w = (int)r20.w * 6;
        r22.w = dot(refProbeAttenuationConstantsCB[r21.w].data[0].xyz, r28.xyz);
        r22.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[0].w + r22.w);
        r23.w = dot(refProbeAttenuationConstantsCB[r21.w].data[1].xyz, r28.xyz);
        r23.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[1].w + r23.w);
        r22.w = r23.w * r22.w;
        r23.w = dot(refProbeAttenuationConstantsCB[r21.w].data[2].xyz, r28.xyz);
        r23.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[2].w + r23.w);
        r22.w = r23.w * r22.w;
        r23.w = dot(refProbeAttenuationConstantsCB[r21.w].data[3].xyz, r28.xyz);
        r23.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[3].w + r23.w);
        r22.w = r23.w * r22.w;
        r23.w = dot(refProbeAttenuationConstantsCB[r21.w].data[4].xyz, r28.xyz);
        r23.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[4].w + r23.w);
        r22.w = r23.w * r22.w;
        r23.w = dot(refProbeAttenuationConstantsCB[r21.w].data[5].xyz, r28.xyz);
        r21.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[5].w + r23.w);
        r19.x = r22.w * r21.w;
        r21.w = 1 & (int)refProbeConstantsCB[r19.w].data[6].x;
        r29.xy = r21.ww ? r19.xy : r19.zx;
        r19.x = refProbeConstantsCB[r19.w].data[6].x;
        r30.xy = r29.xy;
        r21.w = 1;
        while (true) {
          r22.w = cmp((int)r21.w >= (int)r21.z);
          if (r22.w != 0) break;
          r22.w = (int)r20.w + (int)r21.w;
          r22.w = (int)r22.w * 6;
          r23.w = dot(refProbeAttenuationConstantsCB[r22.w].data[0].xyz, r28.xyz);
          r23.w = saturate(refProbeAttenuationConstantsCB[r22.w].data[0].w + r23.w);
          r23.w = r30.x * r23.w;
          r28.w = dot(refProbeAttenuationConstantsCB[r22.w].data[1].xyz, r28.xyz);
          r28.w = saturate(refProbeAttenuationConstantsCB[r22.w].data[1].w + r28.w);
          r23.w = r28.w * r23.w;
          r28.w = dot(refProbeAttenuationConstantsCB[r22.w].data[2].xyz, r28.xyz);
          r28.w = saturate(refProbeAttenuationConstantsCB[r22.w].data[2].w + r28.w);
          r23.w = r28.w * r23.w;
          r28.w = dot(refProbeAttenuationConstantsCB[r22.w].data[3].xyz, r28.xyz);
          r28.w = saturate(refProbeAttenuationConstantsCB[r22.w].data[3].w + r28.w);
          r23.w = r28.w * r23.w;
          r28.w = dot(refProbeAttenuationConstantsCB[r22.w].data[4].xyz, r28.xyz);
          r28.w = saturate(refProbeAttenuationConstantsCB[r22.w].data[4].w + r28.w);
          r23.w = r28.w * r23.w;
          r28.w = dot(refProbeAttenuationConstantsCB[r22.w].data[5].xyz, r28.xyz);
          r22.w = saturate(refProbeAttenuationConstantsCB[r22.w].data[5].w + r28.w);
          r30.x = r23.w * r22.w;
          r28.w = (uint)r19.x >> 2;
          if (1 == 0) r29.z = 0; else if (1+2 < 32) {           r29.z = (uint)r19.x << (32-(1 + 2)); r29.z = (uint)r29.z >> (32-1);          } else r29.z = (uint)r19.x >> 2;
          r29.w = (int)r28.w & 2;
          r30.z = max(r30.y, r30.x);
          r22.w = -r23.w * r22.w + 1;
          r22.w = r30.y * r22.w;
          r21.y = r29.w ? r22.w : r30.z;
          r30.xy = r29.zz ? r30.xy : r21.xy;
          r21.w = (int)r21.w + 1;
          r19.x = r28.w;
        }
        r19.x = saturate(r30.y + -r14.w);
        r20.w = refProbeConstantsCB[r19.w].data[6].y * r19.x;
        r21.y = cmp(0 < r20.w);
        if (r21.y != 0) {
          r27.w = r19.x * refProbeConstantsCB[r19.w].data[6].y + r27.w;
          r19.x = refProbeConstantsCB[r19.w].data[7].y * r20.w;
          r29.x = refProbeConstantsCB[r19.w].data[7].w;
          r29.yz = refProbeConstantsCB[r19.w].data[8].xy;
          r20.w = dot(r18.xyz, r29.xyz);
          r21.y = dot(r28.xyz, r29.xyz);
          r21.y = -refProbeConstantsCB[r19.w].data[8].z + r21.y;
          r21.z = cmp(r21.y >= 0);
          r21.y = max(abs(r21.y), r8.w);
          r21.y = r21.z ? r21.y : -r21.y;
          r20.w = max(1.00000001e-07, -r20.w);
          r20.w = r21.y / r20.w;
          r20.w = min(131072, abs(r20.w));
          r29.x = refProbeConstantsCB[r19.w].data[8].w;
          r29.yz = refProbeConstantsCB[r19.w].data[9].xy;
          r21.y = dot(r18.xyz, r29.xyz);
          r21.z = dot(r28.xyz, r29.xyz);
          r21.z = -refProbeConstantsCB[r19.w].data[9].z + r21.z;
          r21.w = cmp(r21.z >= 0);
          r21.z = max(abs(r21.z), r8.w);
          r21.z = r21.w ? r21.z : -r21.z;
          r21.y = max(1.00000001e-07, -r21.y);
          r21.y = r21.z / r21.y;
          r20.w = min(abs(r21.y), r20.w);
          r29.x = refProbeConstantsCB[r19.w].data[9].w;
          r29.yz = refProbeConstantsCB[r19.w].data[10].xy;
          r21.y = dot(r18.xyz, r29.xyz);
          r21.z = dot(r28.xyz, r29.xyz);
          r21.z = -refProbeConstantsCB[r19.w].data[10].z + r21.z;
          r21.w = cmp(r21.z >= 0);
          r21.z = max(abs(r21.z), r8.w);
          r21.z = r21.w ? r21.z : -r21.z;
          r21.y = max(1.00000001e-07, -r21.y);
          r21.y = r21.z / r21.y;
          r20.w = min(abs(r21.y), r20.w);
          r29.x = refProbeConstantsCB[r19.w].data[10].w;
          r29.yz = refProbeConstantsCB[r19.w].data[11].xy;
          r21.y = dot(r18.xyz, r29.xyz);
          r21.z = dot(r28.xyz, r29.xyz);
          r21.z = -refProbeConstantsCB[r19.w].data[11].z + r21.z;
          r21.w = cmp(r21.z >= 0);
          r21.z = max(abs(r21.z), r8.w);
          r21.z = r21.w ? r21.z : -r21.z;
          r21.y = max(1.00000001e-07, -r21.y);
          r21.y = r21.z / r21.y;
          r20.w = min(abs(r21.y), r20.w);
          r29.x = refProbeConstantsCB[r19.w].data[11].w;
          r29.yz = refProbeConstantsCB[r19.w].data[12].xy;
          r21.y = dot(r18.xyz, r29.xyz);
          r21.z = dot(r28.xyz, r29.xyz);
          r21.z = -refProbeConstantsCB[r19.w].data[12].z + r21.z;
          r21.w = cmp(r21.z >= 0);
          r21.z = max(abs(r21.z), r8.w);
          r21.z = r21.w ? r21.z : -r21.z;
          r21.y = max(1.00000001e-07, -r21.y);
          r21.y = r21.z / r21.y;
          r20.w = min(abs(r21.y), r20.w);
          r29.x = refProbeConstantsCB[r19.w].data[12].w;
          r29.yz = refProbeConstantsCB[r19.w].data[13].xy;
          r21.y = dot(r18.xyz, r29.xyz);
          r21.z = dot(r28.xyz, r29.xyz);
          r21.z = -refProbeConstantsCB[r19.w].data[13].z + r21.z;
          r21.w = cmp(r21.z >= 0);
          r21.z = max(abs(r21.z), r8.w);
          r21.z = r21.w ? r21.z : -r21.z;
          r21.y = max(1.00000001e-07, -r21.y);
          r21.y = r21.z / r21.y;
          r20.w = min(abs(r21.y), r20.w);
          r29.x = refProbeConstantsCB[r19.w].data[3].w + r28.x;
          r29.yz = refProbeConstantsCB[r19.w].data[4].xy + r28.yz;
          r21.yzw = r18.xyz * r20.www + r29.xyz;
          r22.w = dot(r21.yzw, r21.yzw);
          r22.w = sqrt(r22.w);
          r20.w = r20.w / r22.w;
          r20.w = r20.w + r20.w;
          r20.w = sqrt(r20.w);
          r20.w = r4.w * 5 + r20.w;
          r20.w = -0.844799995 + r20.w;
          r29.x = refProbeConstantsCB[r19.w].data[0].w;
          r29.y = refProbeConstantsCB[r19.w].data[1].z;
          r29.z = refProbeConstantsCB[r19.w].data[2].y;
          r31.x = dot(r21.yzw, r29.xyz);
          r32.xy = refProbeConstantsCB[r19.w].data[1].xw;
          r32.z = refProbeConstantsCB[r19.w].data[2].z;
          r31.y = dot(r21.yzw, r32.xyz);
          r33.x = refProbeConstantsCB[r19.w].data[1].y;
          r33.yz = refProbeConstantsCB[r19.w].data[2].xw;
          r31.z = dot(r21.yzw, r33.xyz);
          if (9 == 0) r21.y = 0; else if (9+16 < 32) {           r21.y = (uint)refProbeConstantsCB[r19.w].data[7].z << (32-(9 + 16)); r21.y = (uint)r21.y >> (32-9);          } else r21.y = (uint)refProbeConstantsCB[r19.w].data[7].z >> 16;
          r31.w = (uint)r21.y;
          r21.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r31.xyzw, r20.w).xyz;
          r34.x = dot(r28.xyz, r29.xyz);
          r34.y = dot(r28.xyz, r32.xyz);
          r34.z = dot(r28.xyz, r33.xyz);
          r28.xyz = saturate(r34.xyz * refProbeConstantsCB[r19.w].data[3].xyz + float3(0.5,0.5,0.5));
          r34.xy = refProbeConstantsCB[r19.w].data[4].zw * r28.xy;
          r34.z = refProbeConstantsCB[r19.w].data[5].x * r28.z;
          r28.xyz = refProbeConstantsCB[r19.w].data[5].yzw + r34.xyz;
          r31.x = dot(r12.xyz, r29.xyz);
          r31.y = dot(r12.xyz, r32.xyz);
          r31.z = dot(r12.xyz, r33.xyz);
          r29.xyz = cmp(float3(0,0,0) < r31.xyz);
          r20.z = r29.x ? 0 : 0.5;
          r30.xzw = r28.xyz + r20.xyz;
          r30.xzw = gProbeXArray.SampleLevel(samplerLinearClamp_s, r30.xzw, 0).xyz;
          r32.xyz = r31.xyz * r31.xyz;
          r32.xyz = r32.xyz * r19.xxx;
          r22.z = r29.y ? 0 : 0.5;
          r29.xyw = r28.xyz + r22.xyz;
          r29.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r29.xyw, 0).xyz;
          r29.xyw = r29.xyw * r32.yyy;
          r29.xyw = r30.xzw * r32.xxx + r29.xyw;
          r23.z = r29.z ? 0 : 0.5;
          r28.xyz = r28.xyz + r23.xyz;
          r28.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r28.xyz, 0).xyz;
          r28.xyz = r28.xyz * r32.zzz + r29.xyw;
          r29.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r31.xyzw, 6).xyz;
          r30.xzw = r29.xyz * r28.xyz;
          r19.w = dot(r30.xzw, float3(0.212599993,0.715200007,0.0722000003));
          r17.yzw = r28.xyz * r29.xyz + r17.yzw;
          r20.z = r19.w * r9.w;
          r21.yzw = r21.yzw * r19.xxx;
          r19.x = dot(r21.yzw, float3(0.212599993,0.715200007,0.0722000003));
          r19.x = r9.w * r19.w + r19.x;
          r19.x = r20.z / r19.x;
          r27.xyz = r21.yzw * r19.xxx + r27.xyz;
        }
      }
      r26.xyzw = r27.xyzw;
      r16.yzw = r17.yzw;
      r13.w = (int)r13.w + 32;
    }
    r25.xyzw = r26.zxyw;
    r24.xyz = r16.yzw;
    r25.xyzw = r25.yzxw;
  } else {
    r25.x = r24.w;
  }
  r0.y = max(1, r25.w);
  r0.y = rcp(r0.y);
  r25.w = saturate(r25.w);
  r10.yzw = r24.xyz * r0.yyy;
  r16.yzw = r25.xyz * r0.yyy;
  r0.z = cmp(r25.w < 0.99000001);
  if (r0.z != 0) {
    r0.z = 1 + -r25.w;
    r4.w = sunConstants.globalProbeExposure * r0.z;
    r17.yzw = -globalProbeConstants.data[0].xyz + r11.xyz;
    r19.x = globalProbeConstants.data[0].w * r17.y;
    r19.yz = globalProbeConstants.data[1].xy * r17.zw;
    r17.yzw = saturate(float3(0.5,0.5,0.5) + r19.xyz);
    r19.xy = globalProbeConstants.data[1].zw * r17.yz;
    r19.z = globalProbeConstants.data[2].x * r17.w;
    r17.yzw = globalProbeConstants.data[2].yzw + r19.xyz;
    r19.xyz = cmp(float3(0,0,0) < r12.xyz);
    r19.xyz = r19.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r19.w = 0;
    r20.xyz = r19.wwx + r17.yzw;
    r20.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r20.xyz, 0).xyz;
    r21.xyz = r12.xyz * r12.xyz;
    r21.xyz = r21.xyz * r4.www;
    r22.xyz = r19.wwy + r17.yzw;
    r22.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r22.xyz, 0).xyz;
    r22.xyz = r22.xyz * r21.yyy;
    r20.xyz = r20.xyz * r21.xxx + r22.xyz;
    r17.yzw = r19.wwz + r17.yzw;
    r17.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r17.yzw, 0).xyz;
    r17.yzw = r17.yzw * r21.zzz + r20.xyz;
    r12.w = 0;
    r19.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r12.xyzw, 6).xyz;
    r17.yzw = r19.xyz * r17.yzw;
    r4.w = dot(r17.yzw, float3(0.212599993,0.715200007,0.0722000003));
    r10.yzw = r24.xyz * r0.yyy + r17.yzw;
    r18.w = 0;
    r17.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r18.xyzw, r7.w).xyz;
    r0.y = sunConstants.globalProbeExposure * r0.z + -r4.w;
    r0.y = r2.y * r0.y + r4.w;
    r16.yzw = r17.yzw * r0.yyy + r16.yzw;
  }
  r0.y = r5.z * r2.z + r2.x;
  r0.y = log2(abs(r0.y));
  r0.y = r1.w * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r5.z * r2.z + r0.y;
  r0.y = saturate(-1 + r0.y);
  r19.xyz = r10.yzw * r2.www;
  r20.xyz = r3.xxx ? r19.yzx : 0;
  r2.yz = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r2.yz = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r2.yz, 0).xy;
  r16.yzw = r16.yzw * r0.yyy;
  r17.yzw = r16.yzw * r2.yyy;
  r21.xyz = r16.yzw * r2.zzz;
  r0.y = sqrt(r1.w);
  r0.y = r0.y * 0.5 + 0.5;
  r0.y = r0.y * r0.y;
  r0.z = 0.5 * r0.y;
  r0.y = -r0.y * 0.5 + 1;
  r2.y = r2.x * r0.y + r0.z;
  r0.yz = r2.yy * r0.yz;
  r2.y = cmp(0 < r3.w);
  if (r2.y != 0) {
    r2.y = cmp(0 < r6.w);
    if (r2.y != 0) {
      r2.y = sunConstants.specScale * r1.z;
      r2.y = r2.y * r3.z;
      if (sunConstants.sunCookieIndex != 0) {
        r22.xyz = eyeOffset.xyz + r11.xyz;
        r22.w = 1;
        r2.z = dot(sunConstants.sunCookieTransform[0].xyzw, r22.xyzw);
        r4.w = dot(sunConstants.sunCookieTransform[1].xyzw, r22.xyzw);
        r22.x = frac(r2.z);
        r22.y = frac(r4.w);
        r2.z = -1 + (int14)sunConstants.sunCookieIndex;
        r22.z = (uint)r2.z;
        r16.yzw = gCookieArray.SampleLevel(samplerLinear_s, r22.xyz, 0).xyz;
        r16.yzw = float3(-1,-1,-1) + r16.yzw;
        r16.yzw = sunConstants.sunCookieIntensity * r16.yzw + float3(1,1,1);
        r16.yzw = sunConstants.color.xyz * r16.yzw;
      } else {
        r16.yzw = sunConstants.color.xyz;
      }
      r2.z = viewmodelSunShadowRaw >> 16;
      r4.w = cmp(0 < (uint)r2.z);
      r4.w = r10.x ? r4.w : 0;
      if (r4.w != 0) {
        r2.z = (int)r2.z + numLights;
        r2.z = mad((int)r2.z, 15, -15);
        r4.w = abs(r3.y) * -0.200000003 + 0.400000006;
        r5.z = cmp(r3.y < 0);
        r5.z = r3.x ? r5.z : 0;
        r4.w = r5.z ? -r4.w : r4.w;
        r22.xyz = r12.xyz * r4.www + r11.xyz;
        r23.xyz = lightConstantsCB[r2.z].data[4].yzw;
        r23.w = lightConstantsCB[r2.z].data[5].x;
        r22.w = 1;
        r23.x = dot(r23.xyzw, r22.xyzw);
        r24.xyz = lightConstantsCB[r2.z].data[5].yzw;
        r24.w = lightConstantsCB[r2.z].data[6].x;
        r23.y = dot(r24.xyzw, r22.xyzw);
        r14.zw = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r23.x = lightConstantsCB[r2.z].data[9].w + r14.z;
        r23.y = lightConstantsCB[r2.z].data[10].x + r14.w;
        r14.zw = lightConstantsCB[r2.z].data[9].yz * r23.xy;
        r23.xy = lightConstantsCB[r2.z].data[3].yy / lightConstantsCB[r2.z].data[8].yw;
        r23.zw = float2(1,1) + -r23.xy;
        r23.zw = cmp(r14.zw >= r23.zw);
        r23.xy = cmp(r23.xy >= r14.zw);
        r23.xy = (int2)r23.xy | (int2)r23.zw;
        r4.w = (int)r23.y | (int)r23.x;
        if (r4.w == 0) {
          r23.xyz = lightConstantsCB[r2.z].data[6].yzw;
          r23.w = lightConstantsCB[r2.z].data[7].x;
          r4.w = dot(r23.xyzw, r22.xyzw);
          r14.zw = saturate(r14.zw);
          r22.x = r14.z * lightConstantsCB[r2.z].data[8].y + lightConstantsCB[r2.z].data[8].z;
          r22.y = r14.w * lightConstantsCB[r2.z].data[8].w + lightConstantsCB[r2.z].data[9].x;
          r4.w = lightConstantsCB[r2.z].data[10].y + r4.w;
          r4.w = r4.w / lightConstantsCB[r2.z].data[10].z;
          r4.w = max(6.10351563e-05, r4.w);
          r5.z = 0x0000ffff & (int)lightConstantsCB[r2.z].data[1].w;
          if (enableDitheredShadow != 0) {
            r23.x = -r14.x;
            r24.z = (uint)r5.z;
            r23.y = r15.x;
            r23.z = r14.x;
            r7.w = 0;
            r8.w = 0;
            while (true) {
              r9.w = cmp((int)r8.w >= 8);
              if (r9.w != 0) break;
              r25.x = dot(icb[r8.w+0].yx, r23.xy);
              r25.y = dot(icb[r8.w+0].yx, r23.yz);
              r24.xy = r25.xy * lightConstantsCB[r2.z].data[3].yy + r22.xy;
              r9.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r4.w).x;
              r7.w = r9.w * 0.125 + r7.w;
              r8.w = (int)r8.w + 1;
            }
          } else {
            r22.z = (uint)r5.z;
            r7.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r4.w).x;
          }
          r2.z = r7.w * r7.w;
          r2.z = r2.z * r7.w;
        } else {
          r2.z = 1;
        }
        r6.w = r6.w * r2.z;
      } else {
        r2.z = viewmodelSunShadowRaw & 0x0000ffff;
        r4.w = cmp(0 < (uint)r2.z);
        r5.z = ~(int)r10.x;
        r4.w = r4.w ? r5.z : 0;
        if (r4.w != 0) {
          r2.z = (int)r2.z + numLights;
          r2.z = mad((int)r2.z, 15, -15);
          r4.w = abs(r3.y) * -0.200000003 + 0.400000006;
          r5.z = cmp(r3.y < 0);
          r5.z = r3.x ? r5.z : 0;
          r4.w = r5.z ? -r4.w : r4.w;
          r22.xyz = r12.xyz * r4.www + r11.xyz;
          r23.xyz = lightConstantsCB[r2.z].data[4].yzw;
          r23.w = lightConstantsCB[r2.z].data[5].x;
          r22.w = 1;
          r23.x = dot(r23.xyzw, r22.xyzw);
          r24.xyz = lightConstantsCB[r2.z].data[5].yzw;
          r24.w = lightConstantsCB[r2.z].data[6].x;
          r23.y = dot(r24.xyzw, r22.xyzw);
          r14.zw = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r23.x = lightConstantsCB[r2.z].data[9].w + r14.z;
          r23.y = lightConstantsCB[r2.z].data[10].x + r14.w;
          r14.zw = lightConstantsCB[r2.z].data[9].yz * r23.xy;
          r23.xy = lightConstantsCB[r2.z].data[3].yy / lightConstantsCB[r2.z].data[8].yw;
          r23.zw = float2(1,1) + -r23.xy;
          r23.zw = cmp(r14.zw >= r23.zw);
          r23.xy = cmp(r23.xy >= r14.zw);
          r23.xy = (int2)r23.xy | (int2)r23.zw;
          r4.w = (int)r23.y | (int)r23.x;
          if (r4.w == 0) {
            r23.xyz = lightConstantsCB[r2.z].data[6].yzw;
            r23.w = lightConstantsCB[r2.z].data[7].x;
            r4.w = dot(r23.xyzw, r22.xyzw);
            r14.zw = saturate(r14.zw);
            r22.x = r14.z * lightConstantsCB[r2.z].data[8].y + lightConstantsCB[r2.z].data[8].z;
            r22.y = r14.w * lightConstantsCB[r2.z].data[8].w + lightConstantsCB[r2.z].data[9].x;
            r4.w = lightConstantsCB[r2.z].data[10].y + r4.w;
            r4.w = r4.w / lightConstantsCB[r2.z].data[10].z;
            r4.w = max(6.10351563e-05, r4.w);
            r5.z = 0x0000ffff & (int)lightConstantsCB[r2.z].data[1].w;
            if (enableDitheredShadow != 0) {
              r23.x = -r14.x;
              r24.z = (uint)r5.z;
              r23.y = r15.x;
              r23.z = r14.x;
              r7.w = 0;
              r8.w = 0;
              while (true) {
                r9.w = cmp((int)r8.w >= 8);
                if (r9.w != 0) break;
                r25.x = dot(icb[r8.w+0].yx, r23.xy);
                r25.y = dot(icb[r8.w+0].yx, r23.yz);
                r24.xy = r25.xy * lightConstantsCB[r2.z].data[3].yy + r22.xy;
                r9.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r4.w).x;
                r7.w = r9.w * 0.125 + r7.w;
                r8.w = (int)r8.w + 1;
              }
            } else {
              r22.z = (uint)r5.z;
              r7.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r4.w).x;
            }
            r2.z = r7.w * r7.w;
            r2.z = r2.z * r7.w;
          } else {
            r2.z = 1;
          }
          r6.w = r6.w * r2.z;
        }
      }
      r2.z = -r2.x * 0.5 + 1;
      r2.z = -r3.w * r2.z + 1;
      r2.z = r2.z * r2.z;
      r2.z = -r2.z * 0.620000005 + 0.620000005;
      r2.z = r2.z + -r3.w;
      r2.z = r1.w * r2.z + r3.w;
      r2.z = r2.z * r6.w;
      r22.xyz = r2.zzz * r16.yzw;
      r3.y = cmp(0 < r3.y);
      r22.xyz = r10.yzw * r2.www + r22.xyz;
      r10.yzw = -r11.xyz * r0.www + sunConstants.wldDir.xyz;
      r0.w = dot(r10.yzw, r10.yzw);
      r0.w = rsqrt(r0.w);
      r10.yzw = r10.yzw * r0.www;
      r0.w = dot(r10.yzw, r13.xyz);
      r2.w = dot(r12.xyz, r10.yzw);
      r3.w = abs(r2.w) * r1.z + -abs(r2.w);
      r2.w = abs(r2.w) * r3.w + 1;
      r3.z = r3.z * r0.y + r0.z;
      r2.w = r2.w * r2.w;
      r2.w = r2.w * r3.z;
      r2.w = rcp(r2.w);
      r2.y = r2.w * r2.y;
      r2.y = r6.w * r2.y;
      r2.y = 0.25 * r2.y;
      r23.yzw = r2.yyy * r16.yzw + r21.xyz;
      r0.w = saturate(1 + -r0.w);
      r2.w = r0.w * r0.w;
      r2.w = r2.w * r2.w;
      r0.w = r2.w * r0.w;
      r0.w = r2.y * r0.w;
      r10.yzw = r0.www * r16.yzw + r17.yzw;
      r2.yzw = r2.zzz * r16.yzw + r20.zxy;
      r24.xyz = r3.xxx ? r2.zwy : 0;
      r22.w = r20.z;
      r19.w = r24.z;
      r19.xyzw = r3.yyyy ? r22.xyzw : r19.xyzw;
      r20.zw = r10.yz;
      r24.zw = r17.yz;
      r22.xyzw = r3.yyyy ? r20.xyzw : r24.xyzw;
      r23.x = r10.w;
      r21.w = r17.w;
      r21.xyzw = r3.yyyy ? r23.yzwx : r21.xyzw;
      r20.z = r19.w;
      r20.xy = r22.xy;
      r17.yz = r22.zw;
      r17.w = r21.w;
    }
  }
  r0.w = (uint)r0.x >> 24;
  if (10 == 0) r0.x = 0; else if (10+12 < 32) {   r0.x = (uint)r0.x << (32-(10 + 12)); r0.x = (uint)r0.x >> (32-10);  } else r0.x = (uint)r0.x >> 12;
  r22.x = -r14.x;
  r2.y = ~(int)r10.x;
  r2.x = -r2.x * 0.5 + 1;
  r11.w = 1;
  r23.w = 1;
  r22.z = r14.x;
  r24.z = 1;
  r25.w = 1;
  r26.w = 1;
  r22.yw = r15.xx;
  r14.y = r22.w;
  r27.w = 1;
  r15.y = r22.x;
  r15.z = r14.x;
  r28.w = 1;
  r29.x = r15.x;
  r29.y = r22.x;
  r29.z = r14.x;
  r30.x = r15.x;
  r30.y = r22.x;
  r30.z = r14.x;
  r31.x = r15.x;
  r31.y = r22.x;
  r31.z = r14.x;
  r3.yzw = r19.xyz;
  r32.xyz = r20.zxy;
  r33.xyz = r17.yzw;
  r10.yzw = r21.xyz;
  r2.z = 0;
  while (true) {
    r2.w = cmp((int)r2.z == 2);
    if (r2.w != 0) break;
    r2.w = r2.z ? r0.x : r0.w;
    r2.w = (int)r2.w * 15;
    if (3 == 0) r4.w = 0; else if (3+24 < 32) {     r4.w = (uint)lightConstantsCB[r2.w].data[1].w << (32-(3 + 24)); r4.w = (uint)r4.w >> (32-3);    } else r4.w = (uint)lightConstantsCB[r2.w].data[1].w >> 24;
    switch (r4.w) {
      case 4 :      r4.w = cmp(0 < lightConstantsCB[r2.w].data[6].y);
      r34.xy = lightConstantsCB[r2.w].data[5].zw;
      r34.z = lightConstantsCB[r2.w].data[6].x;
      r16.yzw = -r34.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r2.w].data[0].xyz;
      r35.xyz = r16.yzw + -r11.xyz;
      r5.z = dot(r34.xyz, r35.xyz);
      r6.w = saturate(-r5.z / lightConstantsCB[r2.w].data[6].y);
      r36.xyz = r6.www * r34.xyz + r16.yzw;
      r36.xyz = r4.www ? r36.xyz : lightConstantsCB[r2.w].data[0].xyz;
      r36.xyz = r36.xyz + -r11.xyz;
      r7.w = dot(r36.xyz, r36.xyz);
      r8.w = rsqrt(r7.w);
      r36.xyz = r36.xyz * r8.www;
      r8.w = dot(r12.xyz, r36.xyz);
      r9.w = saturate(r8.w);
      r9.w = r3.x ? abs(r8.w) : r9.w;
      r12.w = cmp(0 < r9.w);
      if (r12.w != 0) {
        r12.w = sqrt(r7.w);
        r13.w = lightConstantsCB[r2.w].data[3].x * lightConstantsCB[r2.w].data[3].x;
        r7.w = r13.w / r7.w;
        r7.w = min(1, r7.w);
        r14.zw = saturate(r12.ww * lightConstantsCB[r2.w].data[2].xz + lightConstantsCB[r2.w].data[2].yw);
        r36.xy = r14.zw * r14.zw;
        r14.zw = r14.zw * float2(-2,-2) + float2(3,3);
        r14.zw = r36.xy * r14.zw;
        r7.w = r14.z * r7.w;
        r7.w = r7.w * r14.w;
        r12.w = cmp(0 < r7.w);
        if (r12.w != 0) {
          if (3 == 0) r12.w = 0; else if (3+27 < 32) {           r12.w = (uint)lightConstantsCB[r2.w].data[1].w << (32-(3 + 27)); r12.w = (uint)r12.w >> (32-3);          } else r12.w = (uint)lightConstantsCB[r2.w].data[1].w >> 27;
          r12.w = cmp((int)r12.w != 1);
          if (r12.w != 0) {
            r12.w = abs(r8.w) * -0.200000003 + 0.400000006;
            r13.w = cmp(r8.w < 0);
            r13.w = r3.x ? r13.w : 0;
            r12.w = r13.w ? -r12.w : r12.w;
            r36.xyz = r12.xyz * r12.www + r11.xyz;
            r36.xyz = -lightConstantsCB[r2.w].data[4].yzw + r36.xyz;
            r12.w = max(abs(r36.y), abs(r36.z));
            r12.w = max(abs(r36.x), r12.w);
            r12.w = lightConstantsCB[r2.w].data[5].x / r12.w;
            r12.w = lightConstantsCB[r2.w].data[5].y + r12.w;
            r13.w = dot(r36.xyz, r36.xyz);
            r13.w = rsqrt(r13.w);
            r12.w = max(6.10351563e-05, r12.w);
            r14.z = 0x0000ffff & (int)lightConstantsCB[r2.w].data[1].w;
            r37.w = (uint)r14.z;
            r14.zw = float2(0,0);
            while (true) {
              r15.w = cmp((int)r14.w >= 8);
              if (r15.w != 0) break;
              r38.y = dot(icb[r14.w+0].yx, r22.xy);
              r38.z = dot(icb[r14.w+0].yx, r22.yz);
              r38.yz = lightConstantsCB[r2.w].data[3].yy * r38.yz;
              r38.x = r38.y * r17.x;
              r38.w = r38.y * r16.x;
              r37.xyz = r36.xyz * r13.www + r38.xzw;
              r15.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r37.xyzw, r12.w).x;
              r14.z = r15.w * 0.125 + r14.z;
              r14.w = (int)r14.w + 1;
            }
          } else {
            r14.z = 1;
          }
          r7.w = r14.z * r7.w;
          r12.w = cmp(0 < r7.w);
          if (r12.w != 0) {
            r12.w = lightConstantsCB[r2.w].data[1].z * r1.z;
            r12.w = 0.25 * r12.w;
            r13.w = dot(r34.xyz, r18.xyz);
            r14.w = dot(r18.xyz, r35.xyz);
            r15.w = -r13.w * r13.w + lightConstantsCB[r2.w].data[6].y;
            r5.z = r13.w * r14.w + -r5.z;
            r5.z = saturate(r5.z / r15.w);
            r13.w = r15.w / lightConstantsCB[r2.w].data[6].y;
            r13.w = 10 * r13.w;
            r13.w = min(1, r13.w);
            r5.z = r5.z + -r6.w;
            r5.z = r13.w * r5.z + r6.w;
            r16.yzw = r5.zzz * r34.xyz + r16.yzw;
            r16.yzw = r4.www ? r16.yzw : lightConstantsCB[r2.w].data[0].xyz;
            r16.yzw = r16.yzw + -r11.xyz;
            r4.w = dot(r16.yzw, r16.yzw);
            r4.w = rsqrt(r4.w);
            r34.xyz = r16.yzw * r4.www;
            if (4 == 0) r5.z = 0; else if (4+16 < 32) {             r5.z = (uint)lightConstantsCB[r2.w].data[1].w << (32-(4 + 16)); r5.z = (uint)r5.z >> (32-4);            } else r5.z = (uint)lightConstantsCB[r2.w].data[1].w >> 16;
            r6.w = cmp(0 < (uint)r5.z);
            r6.w = r10.x ? r6.w : 0;
            if (r6.w != 0) {
              r5.z = (int)r5.z + numLights;
              r5.z = mad((int)r5.z, 15, -15);
              r6.w = abs(r8.w) * -0.200000003 + 0.400000006;
              r13.w = cmp(r8.w < 0);
              r13.w = r3.x ? r13.w : 0;
              r6.w = r13.w ? -r6.w : r6.w;
              r23.xyz = r12.xyz * r6.www + r11.xyz;
              r35.xyz = lightConstantsCB[r5.z].data[6].yzw;
              r35.w = lightConstantsCB[r5.z].data[7].x;
              r6.w = dot(r35.xyzw, r23.xyzw);
              r35.xyz = lightConstantsCB[r5.z].data[7].yzw;
              r35.w = lightConstantsCB[r5.z].data[8].x;
              r13.w = dot(r35.xyzw, r23.xyzw);
              r14.w = cmp(r13.w < r6.w);
              if (r14.w == 0) {
                r35.xyz = lightConstantsCB[r5.z].data[4].yzw;
                r35.w = lightConstantsCB[r5.z].data[5].x;
                r35.x = dot(r35.xyzw, r23.xyzw);
                r36.xyz = lightConstantsCB[r5.z].data[5].yzw;
                r36.w = lightConstantsCB[r5.z].data[6].x;
                r35.y = dot(r36.xyzw, r23.xyzw);
                r23.xy = r35.xy / r13.ww;
                r23.xy = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r35.x = lightConstantsCB[r5.z].data[9].w + r23.x;
                r35.y = lightConstantsCB[r5.z].data[10].x + r23.y;
                r23.xy = lightConstantsCB[r5.z].data[9].yz * r35.xy;
                r35.xy = lightConstantsCB[r5.z].data[3].yy / lightConstantsCB[r5.z].data[8].yw;
                r35.zw = float2(1,1) + -r35.xy;
                r35.zw = cmp(r23.xy >= r35.zw);
                r35.xy = cmp(r35.xy >= r23.xy);
                r35.xy = (int2)r35.xy | (int2)r35.zw;
                r15.w = (int)r35.y | (int)r35.x;
                if (r15.w == 0) {
                  r23.xy = saturate(r23.xy);
                  r35.x = r23.x * lightConstantsCB[r5.z].data[8].y + lightConstantsCB[r5.z].data[8].z;
                  r35.y = r23.y * lightConstantsCB[r5.z].data[8].w + lightConstantsCB[r5.z].data[9].x;
                  r18.w = lightConstantsCB[r5.z].data[10].z * r13.w;
                  r6.w = lightConstantsCB[r5.z].data[10].y * r13.w + r6.w;
                  r6.w = r6.w / r18.w;
                }
              } else {
                r15.w = -1;
              }
              r13.w = (int)r14.w | (int)r15.w;
              if (r13.w == 0) {
                r6.w = max(6.10351563e-05, r6.w);
                r13.w = 0x0000ffff & (int)lightConstantsCB[r5.z].data[1].w;
                if (enableDitheredShadow != 0) {
                  r23.z = (uint)r13.w;
                  r14.w = 0;
                  r15.w = 0;
                  while (true) {
                    r18.w = cmp((int)r15.w >= 8);
                    if (r18.w != 0) break;
                    r36.x = dot(icb[r15.w+0].yx, r22.xw);
                    r36.y = dot(icb[r15.w+0].xy, r14.xy);
                    r23.xy = r36.xy * lightConstantsCB[r5.z].data[3].yy + r35.xy;
                    r18.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r6.w).x;
                    r14.w = r18.w * 0.125 + r14.w;
                    r15.w = (int)r15.w + 1;
                  }
                } else {
                  r35.z = (uint)r13.w;
                  r14.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r35.xyz, r6.w).x;
                }
                r5.z = r14.w * r14.w;
                r5.z = r5.z * r14.w;
              } else {
                r5.z = 1;
              }
              r7.w = r7.w * r5.z;
            } else {
              if (4 == 0) r5.z = 0; else if (4+20 < 32) {               r5.z = (uint)lightConstantsCB[r2.w].data[1].w << (32-(4 + 20)); r5.z = (uint)r5.z >> (32-4);              } else r5.z = (uint)lightConstantsCB[r2.w].data[1].w >> 20;
              r6.w = cmp(0 < (uint)r5.z);
              r6.w = r6.w ? r2.y : 0;
              if (r6.w != 0) {
                r5.z = (int)r5.z + numLights;
                r5.z = mad((int)r5.z, 15, -15);
                r6.w = abs(r8.w) * -0.200000003 + 0.400000006;
                r13.w = cmp(r8.w < 0);
                r13.w = r3.x ? r13.w : 0;
                r6.w = r13.w ? -r6.w : r6.w;
                r25.xyz = r12.xyz * r6.www + r11.xyz;
                r35.xyz = lightConstantsCB[r5.z].data[6].yzw;
                r35.w = lightConstantsCB[r5.z].data[7].x;
                r6.w = dot(r35.xyzw, r25.xyzw);
                r35.xyz = lightConstantsCB[r5.z].data[7].yzw;
                r35.w = lightConstantsCB[r5.z].data[8].x;
                r13.w = dot(r35.xyzw, r25.xyzw);
                r15.w = cmp(r13.w < r6.w);
                if (r15.w == 0) {
                  r35.xyz = lightConstantsCB[r5.z].data[4].yzw;
                  r35.w = lightConstantsCB[r5.z].data[5].x;
                  r23.x = dot(r35.xyzw, r25.xyzw);
                  r35.xyz = lightConstantsCB[r5.z].data[5].yzw;
                  r35.w = lightConstantsCB[r5.z].data[6].x;
                  r23.y = dot(r35.xyzw, r25.xyzw);
                  r23.xy = r23.xy / r13.ww;
                  r23.xy = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                  r25.x = lightConstantsCB[r5.z].data[9].w + r23.x;
                  r25.y = lightConstantsCB[r5.z].data[10].x + r23.y;
                  r23.xy = lightConstantsCB[r5.z].data[9].yz * r25.xy;
                  r25.xy = lightConstantsCB[r5.z].data[3].yy / lightConstantsCB[r5.z].data[8].yw;
                  r35.xy = float2(1,1) + -r25.xy;
                  r35.xy = cmp(r23.xy >= r35.xy);
                  r25.xy = cmp(r25.xy >= r23.xy);
                  r25.xy = (int2)r25.xy | (int2)r35.xy;
                  r18.w = (int)r25.y | (int)r25.x;
                  if (r18.w == 0) {
                    r23.xy = saturate(r23.xy);
                    r25.x = r23.x * lightConstantsCB[r5.z].data[8].y + lightConstantsCB[r5.z].data[8].z;
                    r25.y = r23.y * lightConstantsCB[r5.z].data[8].w + lightConstantsCB[r5.z].data[9].x;
                    r19.w = lightConstantsCB[r5.z].data[10].z * r13.w;
                    r6.w = lightConstantsCB[r5.z].data[10].y * r13.w + r6.w;
                    r6.w = r6.w / r19.w;
                  }
                } else {
                  r18.w = -1;
                }
                r13.w = (int)r15.w | (int)r18.w;
                if (r13.w == 0) {
                  r6.w = max(6.10351563e-05, r6.w);
                  r13.w = 0x0000ffff & (int)lightConstantsCB[r5.z].data[1].w;
                  if (enableDitheredShadow != 0) {
                    r23.z = (uint)r13.w;
                    r15.w = 0;
                    r18.w = 0;
                    while (true) {
                      r19.w = cmp((int)r18.w >= 8);
                      if (r19.w != 0) break;
                      r35.x = dot(icb[r18.w+0].xy, r15.xy);
                      r35.y = dot(icb[r18.w+0].yx, r15.xz);
                      r23.xy = r35.xy * lightConstantsCB[r5.z].data[3].yy + r25.xy;
                      r19.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r6.w).x;
                      r15.w = r19.w * 0.125 + r15.w;
                      r18.w = (int)r18.w + 1;
                    }
                  } else {
                    r25.z = (uint)r13.w;
                    r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r6.w).x;
                  }
                  r5.z = r15.w * r15.w;
                  r5.z = r5.z * r15.w;
                } else {
                  r5.z = 1;
                }
                r7.w = r7.w * r5.z;
              }
            }
            r5.z = -r9.w * r2.x + 1;
            r5.z = r5.z * r5.z;
            r5.z = -r5.z * 0.620000005 + 0.620000005;
            r5.z = r5.z + -r9.w;
            r5.z = r1.w * r5.z + r9.w;
            r5.z = r5.z * r7.w;
            r23.x = lightConstantsCB[r2.w].data[0].w;
            r23.yz = lightConstantsCB[r2.w].data[1].xy;
            r6.w = cmp(0 < r8.w);
            r25.xyz = r5.zzz * r23.xyz + r3.yzw;
            r8.w = saturate(dot(r12.xyz, r34.xyz));
            r16.yzw = r16.yzw * r4.www + r13.xyz;
            r4.w = dot(r16.yzw, r16.yzw);
            r4.w = rsqrt(r4.w);
            r16.yzw = r16.yzw * r4.www;
            r4.w = dot(r16.yzw, r13.xyz);
            r9.w = dot(r12.xyz, r16.yzw);
            r13.w = abs(r9.w) * r1.z + -abs(r9.w);
            r9.w = abs(r9.w) * r13.w + 1;
            r13.w = r8.w * r0.y + r0.z;
            r9.w = r9.w * r9.w;
            r9.w = r9.w * r13.w;
            r9.w = rcp(r9.w);
            r8.w = r8.w * r12.w;
            r8.w = r9.w * r8.w;
            r7.w = r8.w * r7.w;
            r16.yzw = r7.www * r23.xyz + r10.yzw;
            r4.w = saturate(1 + -r4.w);
            r8.w = r4.w * r4.w;
            r8.w = r8.w * r8.w;
            r4.w = r8.w * r4.w;
            r4.w = r7.w * r4.w;
            r34.xyz = r4.www * r23.xyz + r33.xyz;
            r23.xyz = r5.zzz * r23.xyz + r32.xyz;
            r23.xyz = r3.xxx ? r23.xyz : r32.xyz;
            r3.yzw = r6.www ? r25.xyz : r3.yzw;
            r32.xyz = r6.www ? r32.xyz : r23.xyz;
            r33.xyz = r6.www ? r34.xyz : r33.xyz;
            r10.yzw = r6.www ? r16.yzw : r10.yzw;
          }
        }
      }
      break;
      case 2 :      r23.xy = lightConstantsCB[r2.w].data[3].zw + -r11.xy;
      r23.z = lightConstantsCB[r2.w].data[4].x + -r11.z;
      r4.w = dot(r23.xyz, r23.xyz);
      r4.w = rsqrt(r4.w);
      r16.yzw = r23.xyz * r4.www;
      r5.z = dot(r12.xyz, r16.yzw);
      r6.w = saturate(r5.z);
      r7.w = r3.x ? abs(r5.z) : r6.w;
      r8.w = cmp(0 < r7.w);
      if (r8.w != 0) {
        r34.xyz = lightConstantsCB[r2.w].data[7].yzw;
        r34.w = lightConstantsCB[r2.w].data[8].x;
        r8.w = dot(r34.xyzw, r11.xyzw);
        r9.w = cmp(r8.w < 1);
        if (r9.w != 0) {
          r16.yzw = float3(1,1,1);
          r9.w = 0;
        } else {
          r25.xyz = lightConstantsCB[r2.w].data[0].xyz + -r11.xyz;
          r12.w = lightConstantsCB[r2.w].data[3].x * lightConstantsCB[r2.w].data[3].x;
          r13.w = dot(r25.xyz, r25.xyz);
          r12.w = r12.w / r13.w;
          r12.w = min(1, r12.w);
          r25.xy = saturate(r8.ww * lightConstantsCB[r2.w].data[2].xz + lightConstantsCB[r2.w].data[2].yw);
          r35.xy = r25.xy * r25.xy;
          r25.xy = r25.xy * float2(-2,-2) + float2(3,3);
          r25.xy = r35.xy * r25.xy;
          r12.w = r25.x * r12.w;
          r12.w = r12.w * r25.y;
          r35.xyz = lightConstantsCB[r2.w].data[4].yzw;
          r35.w = lightConstantsCB[r2.w].data[5].x;
          r25.x = dot(r35.xyzw, r11.xyzw);
          r35.xyz = lightConstantsCB[r2.w].data[5].yzw;
          r35.w = lightConstantsCB[r2.w].data[6].x;
          r25.y = dot(r35.xyzw, r11.xyzw);
          r24.xy = r25.xy / r8.ww;
          r8.w = cmp(lightConstantsCB[r2.w].data[10].w < 0.00048828125);
          if (r8.w != 0) {
            r25.xy = saturate(abs(r24.xy) * lightConstantsCB[r2.w].data[12].xy + lightConstantsCB[r2.w].data[12].zw);
            r35.xy = r25.xy * r25.xy;
            r25.xy = r25.xy * float2(-2,-2) + float2(3,3);
            r25.xy = r35.xy * r25.xy;
            r8.w = r25.x * r25.y;
          } else {
            r35.xyzw = saturate(lightConstantsCB[r2.w].data[11].xyzw * abs(r24.yyxx));
            r35.xyzw = log2(r35.xyzw);
            r35.xyzw = lightConstantsCB[r2.w].data[12].zzzz * r35.xyzw;
            r35.xyzw = exp2(r35.xyzw);
            r25.xy = r35.xy + r35.zw;
            r25.xy = log2(r25.xy);
            r25.xy = lightConstantsCB[r2.w].data[12].ww * r25.xy;
            r25.xy = exp2(r25.xy);
            r13.w = lightConstantsCB[r2.w].data[12].x * r25.x;
            r18.w = lightConstantsCB[r2.w].data[12].y * r25.y + -1;
            r13.w = lightConstantsCB[r2.w].data[12].y * r25.y + -r13.w;
            r13.w = saturate(r18.w / r13.w);
            r18.w = r13.w * r13.w;
            r13.w = r13.w * -2 + 3;
            r8.w = r18.w * r13.w;
          }
          r9.w = r12.w * r8.w;
          r8.w = 255 & (int)lightConstantsCB[r2.w].data[14].w;
          if (r8.w != 0) {
            r12.w = dot(lightConstantsCB[r2.w].data[13].xyz, r24.xyz);
            r25.x = lightConstantsCB[r2.w].data[13].w;
            r25.yz = lightConstantsCB[r2.w].data[14].xy;
            r13.w = dot(r25.xyz, r24.xyz);
            r25.x = frac(r12.w);
            r25.y = frac(r13.w);
            r8.w = (int)r8.w + -1;
            r25.z = (uint)r8.w;
            r16.yzw = gCookieArray.SampleLevel(samplerLinear_s, r25.xyz, 0).xyz;
          } else {
            r16.yzw = float3(1,1,1);
          }
        }
        r25.x = lightConstantsCB[r2.w].data[0].w;
        r25.yz = lightConstantsCB[r2.w].data[1].xy;
        r16.yzw = r25.xyz * r16.yzw;
        r8.w = cmp(0 < r9.w);
        if (r8.w != 0) {
          if (3 == 0) r8.w = 0; else if (3+27 < 32) {           r8.w = (uint)lightConstantsCB[r2.w].data[1].w << (32-(3 + 27)); r8.w = (uint)r8.w >> (32-3);          } else r8.w = (uint)lightConstantsCB[r2.w].data[1].w >> 27;
          r8.w = cmp((int)r8.w != 1);
          if (r8.w != 0) {
            r8.w = abs(r5.z) * -0.200000003 + 0.400000006;
            r12.w = cmp(r5.z < 0);
            r12.w = r3.x ? r12.w : 0;
            r8.w = r12.w ? -r8.w : r8.w;
            r26.xyz = r12.xyz * r8.www + r11.xyz;
            r35.xyz = lightConstantsCB[r2.w].data[6].yzw;
            r35.w = lightConstantsCB[r2.w].data[7].x;
            r8.w = dot(r35.xyzw, r26.xyzw);
            r12.w = dot(r34.xyzw, r26.xyzw);
            r13.w = cmp(r12.w >= r8.w);
            if (r13.w != 0) {
              r34.xyz = lightConstantsCB[r2.w].data[4].yzw;
              r34.w = lightConstantsCB[r2.w].data[5].x;
              r24.x = dot(r34.xyzw, r26.xyzw);
              r34.xyz = lightConstantsCB[r2.w].data[5].yzw;
              r34.w = lightConstantsCB[r2.w].data[6].x;
              r24.y = dot(r34.xyzw, r26.xyzw);
              r24.xy = r24.xy / r12.ww;
              r24.xy = saturate(r24.xy * float2(0.5,-0.5) + float2(0.5,0.5));
              r25.x = r24.x * lightConstantsCB[r2.w].data[8].y + lightConstantsCB[r2.w].data[8].z;
              r25.y = r24.y * lightConstantsCB[r2.w].data[8].w + lightConstantsCB[r2.w].data[9].x;
              r8.w = r8.w / r12.w;
              r8.w = max(6.10351563e-05, r8.w);
              r12.w = 0x0000ffff & (int)lightConstantsCB[r2.w].data[1].w;
              if (enableDitheredShadow != 0) {
                r26.z = (uint)r12.w;
                r13.w = 0;
                r18.w = 0;
                while (true) {
                  r19.w = cmp((int)r18.w >= 8);
                  if (r19.w != 0) break;
                  r24.x = dot(icb[r18.w+0].xy, r29.xy);
                  r24.y = dot(icb[r18.w+0].yx, r29.xz);
                  r26.xy = r24.xy * lightConstantsCB[r2.w].data[3].yy + r25.xy;
                  r19.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r8.w).x;
                  r13.w = r19.w * 0.125 + r13.w;
                  r18.w = (int)r18.w + 1;
                }
              } else {
                r25.z = (uint)r12.w;
                r13.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r8.w).x;
              }
              r8.w = r13.w * r13.w;
              r8.w = r8.w * r13.w;
            } else {
              r8.w = 1;
            }
          } else {
            r8.w = 1;
          }
          r8.w = r9.w * r8.w;
          r9.w = cmp(0 < r8.w);
          if (r9.w != 0) {
            r9.w = lightConstantsCB[r2.w].data[1].z * r1.z;
            r9.w = r9.w * r6.w;
            if (4 == 0) r12.w = 0; else if (4+16 < 32) {             r12.w = (uint)lightConstantsCB[r2.w].data[1].w << (32-(4 + 16)); r12.w = (uint)r12.w >> (32-4);            } else r12.w = (uint)lightConstantsCB[r2.w].data[1].w >> 16;
            r18.w = cmp(0 < (uint)r12.w);
            r18.w = r10.x ? r18.w : 0;
            if (r18.w != 0) {
              r12.w = (int)r12.w + numLights;
              r12.w = mad((int)r12.w, 15, -15);
              r18.w = abs(r5.z) * -0.200000003 + 0.400000006;
              r19.w = cmp(r5.z < 0);
              r19.w = r3.x ? r19.w : 0;
              r18.w = r19.w ? -r18.w : r18.w;
              r27.xyz = r12.xyz * r18.www + r11.xyz;
              r34.xyz = lightConstantsCB[r12.w].data[6].yzw;
              r34.w = lightConstantsCB[r12.w].data[7].x;
              r18.w = dot(r34.xyzw, r27.xyzw);
              r34.xyz = lightConstantsCB[r12.w].data[7].yzw;
              r34.w = lightConstantsCB[r12.w].data[8].x;
              r19.w = dot(r34.xyzw, r27.xyzw);
              r20.w = cmp(r19.w < r18.w);
              if (r20.w == 0) {
                r34.xyz = lightConstantsCB[r12.w].data[4].yzw;
                r34.w = lightConstantsCB[r12.w].data[5].x;
                r24.x = dot(r34.xyzw, r27.xyzw);
                r34.xyz = lightConstantsCB[r12.w].data[5].yzw;
                r34.w = lightConstantsCB[r12.w].data[6].x;
                r24.y = dot(r34.xyzw, r27.xyzw);
                r24.xy = r24.xy / r19.ww;
                r24.xy = r24.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r25.x = lightConstantsCB[r12.w].data[9].w + r24.x;
                r25.y = lightConstantsCB[r12.w].data[10].x + r24.y;
                r24.xy = lightConstantsCB[r12.w].data[9].yz * r25.xy;
                r25.xy = lightConstantsCB[r12.w].data[3].yy / lightConstantsCB[r12.w].data[8].yw;
                r26.xy = float2(1,1) + -r25.xy;
                r26.xy = cmp(r24.xy >= r26.xy);
                r25.xy = cmp(r25.xy >= r24.xy);
                r25.xy = (int2)r25.xy | (int2)r26.xy;
                r21.w = (int)r25.y | (int)r25.x;
                if (r21.w == 0) {
                  r24.xy = saturate(r24.xy);
                  r25.x = r24.x * lightConstantsCB[r12.w].data[8].y + lightConstantsCB[r12.w].data[8].z;
                  r25.y = r24.y * lightConstantsCB[r12.w].data[8].w + lightConstantsCB[r12.w].data[9].x;
                  r24.x = lightConstantsCB[r12.w].data[10].z * r19.w;
                  r18.w = lightConstantsCB[r12.w].data[10].y * r19.w + r18.w;
                  r18.w = r18.w / r24.x;
                }
              } else {
                r21.w = -1;
              }
              r19.w = (int)r20.w | (int)r21.w;
              if (r19.w == 0) {
                r18.w = max(6.10351563e-05, r18.w);
                r19.w = 0x0000ffff & (int)lightConstantsCB[r12.w].data[1].w;
                if (enableDitheredShadow != 0) {
                  r26.z = (uint)r19.w;
                  r20.w = 0;
                  r21.w = 0;
                  while (true) {
                    r24.x = cmp((int)r21.w >= 8);
                    if (r24.x != 0) break;
                    r24.x = dot(icb[r21.w+0].xy, r30.xy);
                    r24.y = dot(icb[r21.w+0].yx, r30.xz);
                    r26.xy = r24.xy * lightConstantsCB[r12.w].data[3].yy + r25.xy;
                    r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r18.w).x;
                    r20.w = r24.x * 0.125 + r20.w;
                    r21.w = (int)r21.w + 1;
                  }
                } else {
                  r25.z = (uint)r19.w;
                  r20.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r18.w).x;
                }
                r12.w = r20.w * r20.w;
                r12.w = r12.w * r20.w;
              } else {
                r12.w = 1;
              }
              r8.w = r12.w * r8.w;
            } else {
              if (4 == 0) r2.w = 0; else if (4+20 < 32) {               r2.w = (uint)lightConstantsCB[r2.w].data[1].w << (32-(4 + 20)); r2.w = (uint)r2.w >> (32-4);              } else r2.w = (uint)lightConstantsCB[r2.w].data[1].w >> 20;
              r12.w = cmp(0 < (uint)r2.w);
              r12.w = r12.w ? r2.y : 0;
              if (r12.w != 0) {
                r2.w = (int)r2.w + numLights;
                r2.w = mad((int)r2.w, 15, -15);
                r12.w = abs(r5.z) * -0.200000003 + 0.400000006;
                r18.w = cmp(r5.z < 0);
                r18.w = r3.x ? r18.w : 0;
                r12.w = r18.w ? -r12.w : r12.w;
                r28.xyz = r12.xyz * r12.www + r11.xyz;
                r34.xyz = lightConstantsCB[r2.w].data[6].yzw;
                r34.w = lightConstantsCB[r2.w].data[7].x;
                r12.w = dot(r34.xyzw, r28.xyzw);
                r34.xyz = lightConstantsCB[r2.w].data[7].yzw;
                r34.w = lightConstantsCB[r2.w].data[8].x;
                r18.w = dot(r34.xyzw, r28.xyzw);
                r19.w = cmp(r18.w < r12.w);
                if (r19.w == 0) {
                  r34.xyz = lightConstantsCB[r2.w].data[4].yzw;
                  r34.w = lightConstantsCB[r2.w].data[5].x;
                  r24.x = dot(r34.xyzw, r28.xyzw);
                  r34.xyz = lightConstantsCB[r2.w].data[5].yzw;
                  r34.w = lightConstantsCB[r2.w].data[6].x;
                  r24.y = dot(r34.xyzw, r28.xyzw);
                  r24.xy = r24.xy / r18.ww;
                  r24.xy = r24.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                  r25.x = lightConstantsCB[r2.w].data[9].w + r24.x;
                  r25.y = lightConstantsCB[r2.w].data[10].x + r24.y;
                  r24.xy = lightConstantsCB[r2.w].data[9].yz * r25.xy;
                  r25.xy = lightConstantsCB[r2.w].data[3].yy / lightConstantsCB[r2.w].data[8].yw;
                  r26.xy = float2(1,1) + -r25.xy;
                  r26.xy = cmp(r24.xy >= r26.xy);
                  r25.xy = cmp(r25.xy >= r24.xy);
                  r25.xy = (int2)r25.xy | (int2)r26.xy;
                  r21.w = (int)r25.y | (int)r25.x;
                  if (r21.w == 0) {
                    r24.xy = saturate(r24.xy);
                    r25.x = r24.x * lightConstantsCB[r2.w].data[8].y + lightConstantsCB[r2.w].data[8].z;
                    r25.y = r24.y * lightConstantsCB[r2.w].data[8].w + lightConstantsCB[r2.w].data[9].x;
                    r24.x = lightConstantsCB[r2.w].data[10].z * r18.w;
                    r12.w = lightConstantsCB[r2.w].data[10].y * r18.w + r12.w;
                    r12.w = r12.w / r24.x;
                  }
                } else {
                  r21.w = -1;
                }
                r18.w = (int)r19.w | (int)r21.w;
                if (r18.w == 0) {
                  r12.w = max(6.10351563e-05, r12.w);
                  r18.w = 0x0000ffff & (int)lightConstantsCB[r2.w].data[1].w;
                  if (enableDitheredShadow != 0) {
                    r26.z = (uint)r18.w;
                    r19.w = 0;
                    r21.w = 0;
                    while (true) {
                      r24.x = cmp((int)r21.w >= 8);
                      if (r24.x != 0) break;
                      r24.x = dot(icb[r21.w+0].xy, r31.xy);
                      r24.y = dot(icb[r21.w+0].yx, r31.xz);
                      r26.xy = r24.xy * lightConstantsCB[r2.w].data[3].yy + r25.xy;
                      r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r12.w).x;
                      r19.w = r24.x * 0.125 + r19.w;
                      r21.w = (int)r21.w + 1;
                    }
                  } else {
                    r25.z = (uint)r18.w;
                    r19.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r12.w).x;
                  }
                  r2.w = r19.w * r19.w;
                  r2.w = r2.w * r19.w;
                } else {
                  r2.w = 1;
                }
                r8.w = r8.w * r2.w;
              }
            }
            r2.w = -r7.w * r2.x + 1;
            r2.w = r2.w * r2.w;
            r2.w = -r2.w * 0.620000005 + 0.620000005;
            r2.w = r2.w + -r7.w;
            r2.w = r1.w * r2.w + r7.w;
            r2.w = r2.w * r8.w;
            r5.z = cmp(0 < r5.z);
            r24.xyw = r2.www * r16.yzw + r3.yzw;
            r23.xyz = r23.xyz * r4.www + r13.xyz;
            r4.w = dot(r23.xyz, r23.xyz);
            r4.w = rsqrt(r4.w);
            r23.xyz = r23.xyz * r4.www;
            r4.w = dot(r23.xyz, r13.xyz);
            r7.w = dot(r12.xyz, r23.xyz);
            r12.w = abs(r7.w) * r1.z + -abs(r7.w);
            r7.w = abs(r7.w) * r12.w + 1;
            r6.w = r6.w * r0.y + r0.z;
            r7.w = r7.w * r7.w;
            r6.w = r7.w * r6.w;
            r6.w = rcp(r6.w);
            r6.w = r6.w * r9.w;
            r6.w = r8.w * r6.w;
            r6.w = 0.25 * r6.w;
            r23.xyz = r6.www * r16.yzw + r10.yzw;
            r4.w = saturate(1 + -r4.w);
            r7.w = r4.w * r4.w;
            r7.w = r7.w * r7.w;
            r4.w = r7.w * r4.w;
            r4.w = r6.w * r4.w;
            r25.xyz = r4.www * r16.yzw + r33.xyz;
            r16.yzw = r2.www * r16.yzw + r32.xyz;
            r16.yzw = r3.xxx ? r16.yzw : r32.xyz;
            r3.yzw = r5.zzz ? r24.xyw : r3.yzw;
            r32.xyz = r5.zzz ? r32.xyz : r16.yzw;
            r33.xyz = r5.zzz ? r25.xyz : r33.xyz;
            r10.yzw = r5.zzz ? r23.xyz : r10.yzw;
          }
        }
      }
      break;
      default :
      break;
    }
    r2.z = (int)r2.z + 1;
  }
  r0.xyz = r5.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r1.z = (uint)r0.y;
  r2.xyz = r6.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r2.x;
  r1.w = cmp((int)r1.z == (int)r1.w);
  r2.xy = r1.ww ? r2.yz : float2(-1,0);
  r5.xyz = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r5.x;
  r1.w = cmp((int)r1.z == (int)r1.w);
  r2.zw = r1.ww ? r5.yz : float2(-1,0);
  r5.xyz = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r5.x;
  r1.w = cmp((int)r1.z == (int)r1.w);
  r5.xy = r1.ww ? r5.yz : float2(-1,0);
  r6.xyz = r9.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r6.x;
  r1.z = cmp((int)r1.z == (int)r1.w);
  r1.zw = r1.zz ? r6.yz : float2(-1,0);
  r6.xy = r2.xz;
  r6.z = r5.x;
  r6.w = r1.z;
  r6.xyzw = r6.xyzw + -r0.xxxx;
  r6.xyzw = cmp(abs(r6.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r6.xyzw = r6.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r1.z = r6.x + r6.y;
  r1.z = r1.z + r6.z;
  r1.z = r1.z + r6.w;
  r2.x = r6.y * r2.w;
  r2.x = r6.x * r2.y + r2.x;
  r2.x = r6.z * r5.y + r2.x;
  r1.w = r6.w * r1.w + r2.x;
  r0.w = r1.w / r1.z;
  r1.z = cmp(0 >= r1.z);
  r0.yz = r1.zz ? float2(0,0) : r0.zw;
  r1.zw = (int2)r1.xy & int2(1,1);
  r0.w = cmp((int)r1.w == (int)r1.z);
  r0.xyz = r0.www ? r0.xyz : r0.xzy;
  r0.x = -r0.z * 0.5 + r0.x;
  r2.y = r0.z + r0.x;
  r2.z = -r0.y * 0.5 + r0.x;
  r2.x = r2.z + r0.y;
  r0.xyz = r3.yzw * r4.xyz;
  r0.xyz = r32.xyz * r2.xyz + r0.xyz;
  r5.xyz = float3(0.959999979,0.959999979,0.959999979) * r33.xyz;
  r5.xyz = r10.yzw * float3(0.0399999991,0.0399999991,0.0399999991) + r5.xyz;
  r0.xyz = r5.xyz + r0.xyz;
  r5.xyz = float3(1,1,1) + -r2.xyz;
  r5.xyz = r33.xyz * r5.xyz;
  r2.xyz = r10.yzw * r2.xyz + r5.xyz;
  r2.xyz = r3.yzw * r4.xyz + r2.xyz;
  r0.xyz = r3.xxx ? r0.xyz : r2.xyz;
  r0.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.w != 0) {
    r0.w = dot(r11.xyz, r11.xyz);
    r1.z = rsqrt(r0.w);
    r2.xyz = r11.xyz * r1.zzz;
    r0.w = sqrt(r0.w);
    r1.z = cmp(0 < fogConstants.blendAmount);
    if (r1.z != 0) {
      r1.zw = r0.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r1.zw = fogConstants.atmospherefogdensityatcamera.xy * r1.zw;
      r2.w = cmp(0.00999999978 < abs(r11.z));
      r3.xy = fogConstants.atmospherefogheightdensityscale.xy * r11.zz;
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
      r1.w = cmp(0.00999999978 < abs(r11.z));
      r2.w = fogConstants.atmospherefogheightdensityscale.x * r11.z;
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
    r0.w = fogConstants.heightFalloff * r11.z;
    r1.z = fogConstants.heightFalloff * r11.z + fogConstants.K0;
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
    r1.z = dot(r11.xyz, r11.xyz);
    r1.w = sqrt(r1.z);
    r0.w = r0.w * r1.w + fogConstants.expAdd;
    r0.w = exp2(r0.w);
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r1.z = rsqrt(r1.z);
    r3.xyz = r11.xyz * r1.zzz;
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