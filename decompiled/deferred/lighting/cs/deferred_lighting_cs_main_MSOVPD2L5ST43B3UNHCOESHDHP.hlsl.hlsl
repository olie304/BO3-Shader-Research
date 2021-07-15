// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:23:41 2021

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.x = mad(permuteStride, 40, (int)vThreadGroupID.x);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=8)(mixed,mixed,mixed,mixed) r0.xy, r0.x, l(0), t25.xyxx
r0.x = samp0[]..swiz;
r0.y = samp0[]..swiz;
  r0.xz = (int2)r0.xy & int2(4095,4095);
  r1.xy = mad((int2)r0.xz, int2(8,8), (int2)vThreadIDInGroup.xy);
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
  sincos(r2.z, r3.x, r14.x);
  r1.z = dot(r1.zw, float2(0.0671105608,0.00583714992));
  r1.z = frac(r1.z);
  r1.z = 52.9829178 * r1.z;
  r1.z = frac(r1.z);
  r1.z = r1.z * 6.28318548 + gameTick.w;
  sincos(r1.z, r15.x, r16.x);
  r2.x = saturate(dot(r12.xyz, r13.xyz));
  r1.z = dot(-r13.xyz, r12.xyz);
  r1.z = r1.z + r1.z;
  r17.xyz = r12.xyz * -r1.zzz + -r13.xyz;
  r1.z = 17 * r2.y;
  r1.z = exp2(r1.z);
  r1.z = 2 + r1.z;
  r1.z = 2 / r1.z;
  r1.w = sqrt(r1.z);
  r2.zw = renderTargetSize.zw * r3.zw;
  r18.xyzw = gSSAOTexture.Gather(samplerLinearClamp_s, r2.zw).xyzw;
  r19.xyzw = gSSAODepthTexture.Gather(samplerLinearClamp_s, r2.zw).xyzw;
  r2.zw = float2(0.5,0.5) * r3.zw;
  r2.zw = frac(r2.zw);
  r3.zw = float2(1,1) + -r2.wz;
  r20.y = r3.w * r3.z;
  r20.xz = r3.zw * r2.zw;
  r20.w = r2.z * r2.w;
  r2.z = dot(r18.xyzw, r20.xyzw);
  r19.xyzw = r19.xyzw + -r10.yyyy;
  r2.w = min(abs(r19.z), abs(r19.w));
  r2.w = min(abs(r19.y), r2.w);
  r2.w = min(abs(r19.x), r2.w);
  r3.z = max(abs(r19.z), abs(r19.w));
  r3.z = max(abs(r19.y), r3.z);
  r3.z = max(abs(r19.x), r3.z);
  r15.yzw = cmp(r2.www == abs(r19.yzw));
  r2.w = r15.y ? r18.y : r18.x;
  r2.w = r15.z ? r18.z : r2.w;
  r2.w = r15.w ? r18.w : r2.w;
  r3.w = 0.00999999978 * r10.y;
  r3.z = cmp(r3.w < r3.z);
  r2.z = r3.z ? r2.w : r2.z;
  r2.w = r5.z * r2.z;
  r3.z = dot(r12.xyz, sunConstants.wldDir.xyz);
  r3.w = saturate(r3.z);
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
        r15.yz = -sunConstants.splitPinTransform[r9.w].xy + r10.yz;
        r13.w = max(abs(r15.y), abs(r15.z));
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
      r15.yzw = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r18.xz = rcp(r15.yy);
      r18.y = -r18.z;
      r15.yzw = r10.yzy * r18.xyz + r15.zwz;
      r16.yzw = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r15.yzw = max(float3(0,0,0), r15.yzw);
      r15.yzw = min(r15.yzw, r16.yzw);
      r16.yz = sunConstants.sstLightingConstants.coordScale * r15.wz;
      r16.yz = floor(r16.yz);
      r13.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r16.z;
      r13.w = r13.w * sunConstants.sstLightingConstants.coordScale + r16.y;
      r13.w = (uint)r13.w;
      r13.w = (int)r13.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.w, r13.w, l(0), t23.xxxx
    r14.w = samp0[]..swiz;
      r16.y = (int)r14.w & 0x40000000;
      r16.z = (uint)r14.w << 2;
      if (r16.y == 0) {
        r16.y = (int)r14.w & 0x01ffffff;
        r18.x = (int)r13.w + (int)r16.y;
        r13.w = (uint)r14.w >> 25;
        r13.w = (uint)r13.w;
        r15.yzw = r15.yzw * r13.www;
        r15.yzw = frac(r15.yzw);
        r15.yzw = float3(128,128,128) * r15.yzw;
        r15.yzw = (uint3)r15.yzw;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
      r18.z = samp0[]..swiz;
        r16.yw = (uint2)r15.wz >> int2(6,6);
        r13.w = (int)r18.z & 0xc0000000;
        r14.w = (int)r18.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.w, r14.w, l(0), t23.xxxx
      r14.w = samp0[]..swiz;
        r14.w = r16.w ? r18.z : r14.w;
        r16.w = (uint)r14.w >> 13;
        r14.w = r16.y ? r16.w : r14.w;
        r14.w = (int)r14.w & 8191;
        r19.x = (int)r14.w + (int)r18.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
      r19.z = samp0[]..swiz;
        r18.y = 0;
        r19.y = 1;
        r19.xyz = r13.www ? r18.xyz : r19.xyz;
        r20.yz = r13.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r16.yw = (uint2)r15.wz >> (uint2)r20.yy;
        r16.yw = (int2)r16.yw & int2(1,1);
        r14.w = (int)r19.z & 0xc0000000;
        r18.w = (int)r19.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.w, l(0), t23.xxxx
      r18.w = samp0[]..swiz;
        r16.w = r16.w ? r19.z : r18.w;
        r18.w = (uint)r16.w >> 13;
        r16.y = r16.y ? r18.w : r16.w;
        r16.y = (int)r16.y & 8191;
        r20.x = (int)r16.y + (int)r19.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.w, r20.x, l(0), t23.xxxx
      r20.w = samp0[]..swiz;
        r19.xyz = r14.www ? r19.xyz : r20.xzw;
        r18.xyz = r13.www ? r18.xyz : r19.xyz;
        r13.w = (int)r18.z & 0xc0000000;
        if (r13.w == 0) {
          r13.w = (int)-r18.y + 6;
          r16.yw = (uint2)r15.wz >> (uint2)r13.ww;
          r13.w = (int)r18.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r14.w = (((uint)r16.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r14.w = (((uint)r16.y << 0) & bitmask.w) | ((uint)r14.w & ~bitmask.w);
          r14.w = (int)r14.w * 10;
          r13.w = (uint)r13.w >> (uint)r14.w;
          r13.w = (int)r13.w & 1023;
          r19.x = (int)r13.w + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.w, r19.x, l(0), t23.xxxx
        r19.w = samp0[]..swiz;
          r19.yz = (int2)r18.yy + int2(1,2);
          r13.w = (int)-r19.y + 6;
          r16.yw = (uint2)r15.wz >> (uint2)r13.ww;
          r13.w = (int)r19.w & 0xc0000000;
          r14.w = (int)r19.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r16.w = (((uint)r16.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r16.y = (((uint)r16.y << 0) & bitmask.y) | ((uint)r16.w & ~bitmask.y);
          r16.y = (int)r16.y * 10;
          r14.w = (uint)r14.w >> (uint)r16.y;
          r14.w = (int)r14.w & 1023;
          r20.x = (int)r14.w + (int)r19.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.z, r20.x, l(0), t23.xxxx
        r20.z = samp0[]..swiz;
          r20.y = r19.z;
          r20.xyz = r13.www ? r19.xyw : r20.xyz;
          r14.w = (int)-r20.y + 6;
          r16.yw = (uint2)r15.wz >> (uint2)r14.ww;
          r14.w = (int)r20.z & 0xc0000000;
          r18.y = (int)r20.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r16.w = (((uint)r16.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r16.y = (((uint)r16.y << 0) & bitmask.y) | ((uint)r16.w & ~bitmask.y);
          r16.y = (int)r16.y * 10;
          r16.y = (uint)r18.y >> (uint)r16.y;
          r16.y = (int)r16.y & 1023;
          r21.x = (int)r16.y + (int)r20.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r21.y, r21.x, l(0), t23.xxxx
        r21.y = samp0[]..swiz;
          r16.yw = r14.ww ? r20.xz : r21.xy;
          r18.xz = r13.ww ? r19.xw : r16.yw;
        }
        r13.w = (int)r18.z & 0xc0000000;
        if (r13.w == 0) {
          if (14 == 0) r14.w = 0; else if (14+15 < 32) {           r14.w = (uint)r18.z << (32-(14 + 15)); r14.w = (uint)r14.w >> (32-14);          } else r14.w = (uint)r18.z >> 15;
          r14.w = (uint)r14.w;
          r14.w = sunConstants.sstLightingConstants.constants.spanInInches * r14.w;
          r14.w = 6.10388815e-05 * r14.w;
          r16.yw = (int2)r18.zz & int2(32767,536870912);
          r16.y = (uint)r16.y;
          r16.y = sunConstants.sstLightingConstants.constants.spanInInches * r16.y;
          r16.y = 3.05185094e-05 * r16.y;
          r18.y = (int)r15.z & 3;
          r18.y = (int)r18.y + (int)r18.x;
          r18.y = (int)r18.y + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.y, r18.y, l(0), t23.xxxx
        r18.y = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r19.x = (((uint)r15.y << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r19.y = (((uint)r15.z << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r19.z = (((uint)r15.w << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r15.y = (uint)r18.y >> (uint)r19.x;
          r15.y = (int)r15.y & 255;
          r15.y = (uint)r15.y;
          r15.y = r15.y * r16.y;
          r15.y = r15.y * 0.00392156886 + r14.w;
          r15.z = (int)r19.y + 1;
          if (1 == 0) r15.w = 0; else if (1+1 < 32) {           r15.w = (uint)r15.w << (32-(1 + 1)); r15.w = (uint)r15.w >> (32-1);          } else r15.w = (uint)r15.w >> 1;
          r15.z = (int)r15.w + (int)r15.z;
          r15.z = (int)r15.z + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.z, r15.z, l(0), t23.xxxx
        r15.z = samp0[]..swiz;
          r15.z = (uint)r15.z >> (uint)r19.z;
          r15.z = (int)r15.z & 0x0000ffff;
          r15.z = (uint)r15.z;
          r15.z = r15.z * r16.y;
          r14.w = r15.z * 1.52590219e-05 + r14.w;
          r16.z = r16.w ? r15.y : r14.w;
        } else {
          r14.w = (int)r18.z & 0x80000000;
          r15.y = (int)r18.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.y, r15.y, l(0), t23.xxxx
        r15.y = samp0[]..swiz;
          r14.w = r14.w ? r15.y : 0;
          r15.y = (uint)r18.z << 2;
          r15.z = (uint)r14.w >> 16;
          r15.z = f16tof32(r15.z);
          r14.w = (int)r14.w & 0x0000ffff;
          r14.w = f16tof32(r14.w);
          r15.y = r10.y * r15.z + r15.y;
          r14.w = r10.z * r14.w + r15.y;
          r16.z = r13.w ? r14.w : r16.z;
        }
      }
      r10.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r10.w;
      r10.w = cmp(r16.z < r10.w);
      r6.w = r10.w ? 0 : 1;
    }
    if (r9.w == 0) {
      if (enableDitheredShadow == 0) {
        r9.w = (uint)r7.w;
        r15.yz = -sunConstants.splitPinTransform[r9.w].xy + r10.yz;
        r15.yz = sunConstants.splitPinTransform[r9.w].zz * r15.yz;
        r18.xy = r15.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r9.w = (int16)sunConstants.splitArrayOffset;
        r18.z = r9.w + r7.w;
        r9.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r4.w).x;
        r10.w = gTransShadowmapArray.SampleLevel(samp0_s, r18.xyz, 0).x;
        r9.w = r10.w + r9.w;
        r9.w = saturate(-1 + r9.w);
        r10.w = r9.w * r9.w;
        r6.w = r10.w * r9.w;
      }
      if (enableDitheredShadow != 0) {
        r18.x = -r3.x;
        r9.w = (uint)r7.w;
        r7.w = 1 + r7.w;
        r7.w = min(2, r7.w);
        r7.w = (uint)r7.w;
        r8.w = 1 + -r8.w;
        r8.w = 28 * r8.w;
        r8.w = (uint)r8.w;
        r15.yz = -sunConstants.splitPinTransform[r9.w].xy + r10.yz;
        r15.yz = sunConstants.splitPinTransform[r9.w].zz * r15.yz;
        r15.yz = r15.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.yz = -sunConstants.splitPinTransform[r7.w].xy + r10.yz;
        r10.yz = sunConstants.splitPinTransform[r7.w].zz * r10.yz;
        r10.yz = r10.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r18.y = r14.x;
        r18.z = r3.x;
        r10.w = 0;
        r13.w = 0;
        while (true) {
          r14.w = cmp((uint)r13.w >= 8);
          if (r14.w != 0) break;
          r14.w = cmp((uint)r8.w < (uint)r13.w);
          r16.yz = r14.ww ? r10.yz : r15.yz;
          r15.w = r14.w ? sunConstants.splitPinTransform[r7.w].w : sunConstants.splitPinTransform[r9.w].w;
          r14.w = r14.w ? r7.w : r9.w;
          r19.x = dot(icb[r13.w+0].yx, r18.xy);
          r19.y = dot(icb[r13.w+0].yx, r18.yz);
          r19.xy = r19.xy * r15.ww + r16.yz;
          r14.w = (int)r14.w + (int16)sunConstants.splitArrayOffset;
          r19.z = (uint)r14.w;
          r14.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r4.w).x;
          r15.w = gTransShadowmapArray.SampleLevel(samp0_s, r19.xyz, 0).x;
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
  r0.y = (uint)r0.y >> 24;
  r10.z = cmp((uint)r0.y >= (uint)r10.y);
  r10.w = cmp((uint)r0.y < numRefProbes);
  r10.z = r10.w ? r10.z : 0;
  if (r10.z != 0) {
    r10.z = (int)r0.y * 14;
    r15.yzw = -refProbeConstantsCB[r10.z].data[0].xyz + r11.xyz;
    r10.w = 0x0000ffff & (int)refProbeConstantsCB[r10.z].data[7].z;
    if (6 == 0) r13.w = 0; else if (6+25 < 32) {     r13.w = (uint)refProbeConstantsCB[r10.z].data[7].z << (32-(6 + 25)); r13.w = (uint)r13.w >> (32-6);    } else r13.w = (uint)refProbeConstantsCB[r10.z].data[7].z >> 25;
    r14.w = (int)r10.w * 6;
    r16.y = dot(refProbeAttenuationConstantsCB[r14.w].data[0].xyz, r15.yzw);
    r16.y = saturate(refProbeAttenuationConstantsCB[r14.w].data[0].w + r16.y);
    r16.z = dot(refProbeAttenuationConstantsCB[r14.w].data[1].xyz, r15.yzw);
    r16.z = saturate(refProbeAttenuationConstantsCB[r14.w].data[1].w + r16.z);
    r16.y = r16.y * r16.z;
    r16.z = dot(refProbeAttenuationConstantsCB[r14.w].data[2].xyz, r15.yzw);
    r16.z = saturate(refProbeAttenuationConstantsCB[r14.w].data[2].w + r16.z);
    r16.y = r16.y * r16.z;
    r16.z = dot(refProbeAttenuationConstantsCB[r14.w].data[3].xyz, r15.yzw);
    r16.z = saturate(refProbeAttenuationConstantsCB[r14.w].data[3].w + r16.z);
    r16.y = r16.y * r16.z;
    r16.z = dot(refProbeAttenuationConstantsCB[r14.w].data[4].xyz, r15.yzw);
    r16.z = saturate(refProbeAttenuationConstantsCB[r14.w].data[4].w + r16.z);
    r16.y = r16.y * r16.z;
    r16.z = dot(refProbeAttenuationConstantsCB[r14.w].data[5].xyz, r15.yzw);
    r14.w = saturate(refProbeAttenuationConstantsCB[r14.w].data[5].w + r16.z);
    r18.x = r16.y * r14.w;
    r14.w = 1 & (int)refProbeConstantsCB[r10.z].data[6].x;
    r18.yz = float2(0,1);
    r16.yz = r14.ww ? r18.xy : r18.zx;
    r18.x = 1;
    r14.w = refProbeConstantsCB[r10.z].data[6].x;
    r19.xy = r16.yz;
    r16.w = 1;
    while (true) {
      r18.z = cmp((int)r16.w >= (int)r13.w);
      if (r18.z != 0) break;
      r18.z = (int)r10.w + (int)r16.w;
      r18.z = (int)r18.z * 6;
      r18.w = dot(refProbeAttenuationConstantsCB[r18.z].data[0].xyz, r15.yzw);
      r18.w = saturate(refProbeAttenuationConstantsCB[r18.z].data[0].w + r18.w);
      r18.w = r19.x * r18.w;
      r19.z = dot(refProbeAttenuationConstantsCB[r18.z].data[1].xyz, r15.yzw);
      r19.z = saturate(refProbeAttenuationConstantsCB[r18.z].data[1].w + r19.z);
      r18.w = r19.z * r18.w;
      r19.z = dot(refProbeAttenuationConstantsCB[r18.z].data[2].xyz, r15.yzw);
      r19.z = saturate(refProbeAttenuationConstantsCB[r18.z].data[2].w + r19.z);
      r18.w = r19.z * r18.w;
      r19.z = dot(refProbeAttenuationConstantsCB[r18.z].data[3].xyz, r15.yzw);
      r19.z = saturate(refProbeAttenuationConstantsCB[r18.z].data[3].w + r19.z);
      r18.w = r19.z * r18.w;
      r19.z = dot(refProbeAttenuationConstantsCB[r18.z].data[4].xyz, r15.yzw);
      r19.z = saturate(refProbeAttenuationConstantsCB[r18.z].data[4].w + r19.z);
      r18.w = r19.z * r18.w;
      r19.z = dot(refProbeAttenuationConstantsCB[r18.z].data[5].xyz, r15.yzw);
      r18.z = saturate(refProbeAttenuationConstantsCB[r18.z].data[5].w + r19.z);
      r19.x = r18.w * r18.z;
      r19.z = (uint)r14.w >> 2;
      if (1 == 0) r19.w = 0; else if (1+2 < 32) {       r19.w = (uint)r14.w << (32-(1 + 2)); r19.w = (uint)r19.w >> (32-1);      } else r19.w = (uint)r14.w >> 2;
      r20.x = (int)r19.z & 2;
      r20.y = max(r19.y, r19.x);
      r18.z = -r18.w * r18.z + 1;
      r18.z = r19.y * r18.z;
      r18.y = r20.x ? r18.z : r20.y;
      r19.xy = r19.ww ? r19.xy : r18.xy;
      r16.w = (int)r16.w + 1;
      r14.w = r19.z;
    }
    r19.y = saturate(r19.y);
    r10.w = refProbeConstantsCB[r10.z].data[6].y * r19.y;
    r13.w = cmp(0 < r10.w);
    if (r13.w != 0) {
      r13.w = refProbeConstantsCB[r10.z].data[7].y * r10.w;
      r18.x = refProbeConstantsCB[r10.z].data[7].w;
      r18.yz = refProbeConstantsCB[r10.z].data[8].xy;
      r14.w = dot(r17.xyz, r18.xyz);
      r16.y = dot(r15.yzw, r18.xyz);
      r16.y = -refProbeConstantsCB[r10.z].data[8].z + r16.y;
      r16.z = cmp(r16.y >= 0);
      r16.y = max(abs(r16.y), r8.w);
      r16.y = r16.z ? r16.y : -r16.y;
      r14.w = max(1.00000001e-07, -r14.w);
      r14.w = r16.y / r14.w;
      r14.w = min(131072, abs(r14.w));
      r18.x = refProbeConstantsCB[r10.z].data[8].w;
      r18.yz = refProbeConstantsCB[r10.z].data[9].xy;
      r16.y = dot(r17.xyz, r18.xyz);
      r16.z = dot(r15.yzw, r18.xyz);
      r16.z = -refProbeConstantsCB[r10.z].data[9].z + r16.z;
      r16.w = cmp(r16.z >= 0);
      r16.z = max(abs(r16.z), r8.w);
      r16.z = r16.w ? r16.z : -r16.z;
      r16.y = max(1.00000001e-07, -r16.y);
      r16.y = r16.z / r16.y;
      r14.w = min(abs(r16.y), r14.w);
      r18.x = refProbeConstantsCB[r10.z].data[9].w;
      r18.yz = refProbeConstantsCB[r10.z].data[10].xy;
      r16.y = dot(r17.xyz, r18.xyz);
      r16.z = dot(r15.yzw, r18.xyz);
      r16.z = -refProbeConstantsCB[r10.z].data[10].z + r16.z;
      r16.w = cmp(r16.z >= 0);
      r16.z = max(abs(r16.z), r8.w);
      r16.z = r16.w ? r16.z : -r16.z;
      r16.y = max(1.00000001e-07, -r16.y);
      r16.y = r16.z / r16.y;
      r14.w = min(abs(r16.y), r14.w);
      r18.x = refProbeConstantsCB[r10.z].data[10].w;
      r18.yz = refProbeConstantsCB[r10.z].data[11].xy;
      r16.y = dot(r17.xyz, r18.xyz);
      r16.z = dot(r15.yzw, r18.xyz);
      r16.z = -refProbeConstantsCB[r10.z].data[11].z + r16.z;
      r16.w = cmp(r16.z >= 0);
      r16.z = max(abs(r16.z), r8.w);
      r16.z = r16.w ? r16.z : -r16.z;
      r16.y = max(1.00000001e-07, -r16.y);
      r16.y = r16.z / r16.y;
      r14.w = min(abs(r16.y), r14.w);
      r18.x = refProbeConstantsCB[r10.z].data[11].w;
      r18.yz = refProbeConstantsCB[r10.z].data[12].xy;
      r16.y = dot(r17.xyz, r18.xyz);
      r16.z = dot(r15.yzw, r18.xyz);
      r16.z = -refProbeConstantsCB[r10.z].data[12].z + r16.z;
      r16.w = cmp(r16.z >= 0);
      r16.z = max(abs(r16.z), r8.w);
      r16.z = r16.w ? r16.z : -r16.z;
      r16.y = max(1.00000001e-07, -r16.y);
      r16.y = r16.z / r16.y;
      r14.w = min(abs(r16.y), r14.w);
      r18.x = refProbeConstantsCB[r10.z].data[12].w;
      r18.yz = refProbeConstantsCB[r10.z].data[13].xy;
      r16.y = dot(r17.xyz, r18.xyz);
      r16.z = dot(r15.yzw, r18.xyz);
      r16.z = -refProbeConstantsCB[r10.z].data[13].z + r16.z;
      r16.w = cmp(r16.z >= 0);
      r16.z = max(abs(r16.z), r8.w);
      r16.z = r16.w ? r16.z : -r16.z;
      r16.y = max(1.00000001e-07, -r16.y);
      r16.y = r16.z / r16.y;
      r14.w = min(abs(r16.y), r14.w);
      r18.x = refProbeConstantsCB[r10.z].data[3].w + r15.y;
      r18.yz = refProbeConstantsCB[r10.z].data[4].xy + r15.zw;
      r16.yzw = r17.xyz * r14.www + r18.xyz;
      r18.x = dot(r16.yzw, r16.yzw);
      r18.x = sqrt(r18.x);
      r14.w = r14.w / r18.x;
      r14.w = r14.w + r14.w;
      r14.w = sqrt(r14.w);
      r14.w = r4.w * 5 + r14.w;
      r14.w = -0.844799995 + r14.w;
      r18.x = refProbeConstantsCB[r10.z].data[0].w;
      r18.y = refProbeConstantsCB[r10.z].data[1].z;
      r18.z = refProbeConstantsCB[r10.z].data[2].y;
      r19.x = dot(r16.yzw, r18.xyz);
      r20.xy = refProbeConstantsCB[r10.z].data[1].xw;
      r20.z = refProbeConstantsCB[r10.z].data[2].z;
      r19.y = dot(r16.yzw, r20.xyz);
      r21.x = refProbeConstantsCB[r10.z].data[1].y;
      r21.yz = refProbeConstantsCB[r10.z].data[2].xw;
      r19.z = dot(r16.yzw, r21.xyz);
      if (9 == 0) r16.y = 0; else if (9+16 < 32) {       r16.y = (uint)refProbeConstantsCB[r10.z].data[7].z << (32-(9 + 16)); r16.y = (uint)r16.y >> (32-9);      } else r16.y = (uint)refProbeConstantsCB[r10.z].data[7].z >> 16;
      r19.w = (uint)r16.y;
      r16.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r19.xyzw, r14.w).xyz;
      r22.x = dot(r15.yzw, r18.xyz);
      r22.y = dot(r15.yzw, r20.xyz);
      r22.z = dot(r15.yzw, r21.xyz);
      r15.yzw = saturate(r22.xyz * refProbeConstantsCB[r10.z].data[3].xyz + float3(0.5,0.5,0.5));
      r22.xy = refProbeConstantsCB[r10.z].data[4].zw * r15.yz;
      r22.z = refProbeConstantsCB[r10.z].data[5].x * r15.w;
      r15.yzw = refProbeConstantsCB[r10.z].data[5].yzw + r22.xyz;
      r19.x = dot(r12.xyz, r18.xyz);
      r19.y = dot(r12.xyz, r20.xyz);
      r19.z = dot(r12.xyz, r21.xyz);
      r18.xyz = cmp(float3(0,0,0) < r19.xyz);
      r20.z = r18.x ? 0 : 0.5;
      r20.xy = float2(0,0);
      r20.xyz = r20.xyz + r15.yzw;
      r20.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r20.xyz, 0).xyz;
      r21.xyz = r19.xyz * r19.xyz;
      r21.xyz = r21.xyz * r13.www;
      r22.z = r18.y ? 0 : 0.5;
      r22.xy = float2(0,0);
      r18.xyw = r22.xyz + r15.yzw;
      r18.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r18.xyw, 0).xyz;
      r18.xyw = r18.xyw * r21.yyy;
      r18.xyw = r20.xyz * r21.xxx + r18.xyw;
      r20.z = r18.z ? 0 : 0.5;
      r20.xy = float2(0,0);
      r15.yzw = r20.xyz + r15.yzw;
      r15.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r15.yzw, 0).xyz;
      r15.yzw = r15.yzw * r21.zzz + r18.xyw;
      r18.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r19.xyzw, 6).xyz;
      r15.yzw = r18.xyz * r15.yzw;
      r10.z = dot(r15.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r14.w = r10.z * r9.w;
      r16.yzw = r16.yzw * r13.www;
      r13.w = dot(r16.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r10.z = r9.w * r10.z + r13.w;
      r10.z = r14.w / r10.z;
      r16.yzw = r16.yzw * r10.zzz;
    } else {
      r16.yzw = float3(0,0,0);
      r10.w = 0;
      r15.yzw = float3(0,0,0);
    }
  } else {
    r16.yzw = float3(0,0,0);
    r10.w = 0;
    r15.yzw = float3(0,0,0);
  }
  r10.z = cmp(r10.w < 1);
  if (r10.z != 0) {
    r10.y = cmp((uint)r0.y < (uint)r10.y);
    if (r10.y != 0) {
      r0.y = (int)r0.y * 14;
      r18.xyz = -refProbeConstantsCB[r0.y].data[0].xyz + r11.xyz;
      r10.y = 0x0000ffff & (int)refProbeConstantsCB[r0.y].data[7].z;
      if (6 == 0) r10.z = 0; else if (6+25 < 32) {       r10.z = (uint)refProbeConstantsCB[r0.y].data[7].z << (32-(6 + 25)); r10.z = (uint)r10.z >> (32-6);      } else r10.z = (uint)refProbeConstantsCB[r0.y].data[7].z >> 25;
      r13.w = (int)r10.y * 6;
      r14.w = dot(refProbeAttenuationConstantsCB[r13.w].data[0].xyz, r18.xyz);
      r14.w = saturate(refProbeAttenuationConstantsCB[r13.w].data[0].w + r14.w);
      r18.w = dot(refProbeAttenuationConstantsCB[r13.w].data[1].xyz, r18.xyz);
      r18.w = saturate(refProbeAttenuationConstantsCB[r13.w].data[1].w + r18.w);
      r14.w = r18.w * r14.w;
      r18.w = dot(refProbeAttenuationConstantsCB[r13.w].data[2].xyz, r18.xyz);
      r18.w = saturate(refProbeAttenuationConstantsCB[r13.w].data[2].w + r18.w);
      r14.w = r18.w * r14.w;
      r18.w = dot(refProbeAttenuationConstantsCB[r13.w].data[3].xyz, r18.xyz);
      r18.w = saturate(refProbeAttenuationConstantsCB[r13.w].data[3].w + r18.w);
      r14.w = r18.w * r14.w;
      r18.w = dot(refProbeAttenuationConstantsCB[r13.w].data[4].xyz, r18.xyz);
      r18.w = saturate(refProbeAttenuationConstantsCB[r13.w].data[4].w + r18.w);
      r14.w = r18.w * r14.w;
      r18.w = dot(refProbeAttenuationConstantsCB[r13.w].data[5].xyz, r18.xyz);
      r13.w = saturate(refProbeAttenuationConstantsCB[r13.w].data[5].w + r18.w);
      r19.x = r14.w * r13.w;
      r13.w = 1 & (int)refProbeConstantsCB[r0.y].data[6].x;
      r19.yz = float2(0,1);
      r19.xy = r13.ww ? r19.xy : r19.zx;
      r20.x = 1;
      r13.w = refProbeConstantsCB[r0.y].data[6].x;
      r21.xy = r19.xy;
      r14.w = 1;
      while (true) {
        r18.w = cmp((int)r14.w >= (int)r10.z);
        if (r18.w != 0) break;
        r18.w = (int)r10.y + (int)r14.w;
        r18.w = (int)r18.w * 6;
        r19.z = dot(refProbeAttenuationConstantsCB[r18.w].data[0].xyz, r18.xyz);
        r19.z = saturate(refProbeAttenuationConstantsCB[r18.w].data[0].w + r19.z);
        r19.z = r21.x * r19.z;
        r19.w = dot(refProbeAttenuationConstantsCB[r18.w].data[1].xyz, r18.xyz);
        r19.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[1].w + r19.w);
        r19.z = r19.z * r19.w;
        r19.w = dot(refProbeAttenuationConstantsCB[r18.w].data[2].xyz, r18.xyz);
        r19.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[2].w + r19.w);
        r19.z = r19.z * r19.w;
        r19.w = dot(refProbeAttenuationConstantsCB[r18.w].data[3].xyz, r18.xyz);
        r19.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[3].w + r19.w);
        r19.z = r19.z * r19.w;
        r19.w = dot(refProbeAttenuationConstantsCB[r18.w].data[4].xyz, r18.xyz);
        r19.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[4].w + r19.w);
        r19.z = r19.z * r19.w;
        r19.w = dot(refProbeAttenuationConstantsCB[r18.w].data[5].xyz, r18.xyz);
        r18.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[5].w + r19.w);
        r21.x = r19.z * r18.w;
        r19.w = (uint)r13.w >> 2;
        if (1 == 0) r20.z = 0; else if (1+2 < 32) {         r20.z = (uint)r13.w << (32-(1 + 2)); r20.z = (uint)r20.z >> (32-1);        } else r20.z = (uint)r13.w >> 2;
        r20.w = (int)r19.w & 2;
        r21.z = max(r21.y, r21.x);
        r18.w = -r19.z * r18.w + 1;
        r18.w = r21.y * r18.w;
        r20.y = r20.w ? r18.w : r21.z;
        r21.xy = r20.zz ? r21.xy : r20.xy;
        r14.w = (int)r14.w + 1;
        r13.w = r19.w;
      }
      r10.y = saturate(r21.y + -r10.w);
      r10.z = refProbeConstantsCB[r0.y].data[6].y * r10.y;
      r13.w = cmp(0 < r10.z);
      if (r13.w != 0) {
        r10.w = r10.y * refProbeConstantsCB[r0.y].data[6].y + r10.w;
        r10.y = refProbeConstantsCB[r0.y].data[7].y * r10.z;
        r19.x = refProbeConstantsCB[r0.y].data[7].w;
        r19.yz = refProbeConstantsCB[r0.y].data[8].xy;
        r10.z = dot(r17.xyz, r19.xyz);
        r13.w = dot(r18.xyz, r19.xyz);
        r13.w = -refProbeConstantsCB[r0.y].data[8].z + r13.w;
        r14.w = cmp(r13.w >= 0);
        r13.w = max(abs(r13.w), r8.w);
        r13.w = r14.w ? r13.w : -r13.w;
        r10.z = max(1.00000001e-07, -r10.z);
        r10.z = r13.w / r10.z;
        r10.z = min(131072, abs(r10.z));
        r19.x = refProbeConstantsCB[r0.y].data[8].w;
        r19.yz = refProbeConstantsCB[r0.y].data[9].xy;
        r13.w = dot(r17.xyz, r19.xyz);
        r14.w = dot(r18.xyz, r19.xyz);
        r14.w = -refProbeConstantsCB[r0.y].data[9].z + r14.w;
        r18.w = cmp(r14.w >= 0);
        r14.w = max(abs(r14.w), r8.w);
        r14.w = r18.w ? r14.w : -r14.w;
        r13.w = max(1.00000001e-07, -r13.w);
        r13.w = r14.w / r13.w;
        r10.z = min(abs(r13.w), r10.z);
        r19.x = refProbeConstantsCB[r0.y].data[9].w;
        r19.yz = refProbeConstantsCB[r0.y].data[10].xy;
        r13.w = dot(r17.xyz, r19.xyz);
        r14.w = dot(r18.xyz, r19.xyz);
        r14.w = -refProbeConstantsCB[r0.y].data[10].z + r14.w;
        r18.w = cmp(r14.w >= 0);
        r14.w = max(abs(r14.w), r8.w);
        r14.w = r18.w ? r14.w : -r14.w;
        r13.w = max(1.00000001e-07, -r13.w);
        r13.w = r14.w / r13.w;
        r10.z = min(abs(r13.w), r10.z);
        r19.x = refProbeConstantsCB[r0.y].data[10].w;
        r19.yz = refProbeConstantsCB[r0.y].data[11].xy;
        r13.w = dot(r17.xyz, r19.xyz);
        r14.w = dot(r18.xyz, r19.xyz);
        r14.w = -refProbeConstantsCB[r0.y].data[11].z + r14.w;
        r18.w = cmp(r14.w >= 0);
        r14.w = max(abs(r14.w), r8.w);
        r14.w = r18.w ? r14.w : -r14.w;
        r13.w = max(1.00000001e-07, -r13.w);
        r13.w = r14.w / r13.w;
        r10.z = min(abs(r13.w), r10.z);
        r19.x = refProbeConstantsCB[r0.y].data[11].w;
        r19.yz = refProbeConstantsCB[r0.y].data[12].xy;
        r13.w = dot(r17.xyz, r19.xyz);
        r14.w = dot(r18.xyz, r19.xyz);
        r14.w = -refProbeConstantsCB[r0.y].data[12].z + r14.w;
        r18.w = cmp(r14.w >= 0);
        r14.w = max(abs(r14.w), r8.w);
        r14.w = r18.w ? r14.w : -r14.w;
        r13.w = max(1.00000001e-07, -r13.w);
        r13.w = r14.w / r13.w;
        r10.z = min(abs(r13.w), r10.z);
        r19.x = refProbeConstantsCB[r0.y].data[12].w;
        r19.yz = refProbeConstantsCB[r0.y].data[13].xy;
        r13.w = dot(r17.xyz, r19.xyz);
        r14.w = dot(r18.xyz, r19.xyz);
        r14.w = -refProbeConstantsCB[r0.y].data[13].z + r14.w;
        r18.w = cmp(r14.w >= 0);
        r8.w = max(abs(r14.w), r8.w);
        r8.w = r18.w ? r8.w : -r8.w;
        r13.w = max(1.00000001e-07, -r13.w);
        r8.w = r8.w / r13.w;
        r8.w = min(r10.z, abs(r8.w));
        r19.x = refProbeConstantsCB[r0.y].data[3].w + r18.x;
        r19.yz = refProbeConstantsCB[r0.y].data[4].xy + r18.yz;
        r19.xyz = r17.xyz * r8.www + r19.xyz;
        r10.z = dot(r19.xyz, r19.xyz);
        r10.z = sqrt(r10.z);
        r8.w = r8.w / r10.z;
        r8.w = r8.w + r8.w;
        r8.w = sqrt(r8.w);
        r4.w = r4.w * 5 + r8.w;
        r4.w = -0.844799995 + r4.w;
        r20.x = refProbeConstantsCB[r0.y].data[0].w;
        r20.y = refProbeConstantsCB[r0.y].data[1].z;
        r20.z = refProbeConstantsCB[r0.y].data[2].y;
        r21.x = dot(r19.xyz, r20.xyz);
        r22.xy = refProbeConstantsCB[r0.y].data[1].xw;
        r22.z = refProbeConstantsCB[r0.y].data[2].z;
        r21.y = dot(r19.xyz, r22.xyz);
        r23.x = refProbeConstantsCB[r0.y].data[1].y;
        r23.yz = refProbeConstantsCB[r0.y].data[2].xw;
        r21.z = dot(r19.xyz, r23.xyz);
        if (9 == 0) r8.w = 0; else if (9+16 < 32) {         r8.w = (uint)refProbeConstantsCB[r0.y].data[7].z << (32-(9 + 16)); r8.w = (uint)r8.w >> (32-9);        } else r8.w = (uint)refProbeConstantsCB[r0.y].data[7].z >> 16;
        r21.w = (uint)r8.w;
        r19.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r21.xyzw, r4.w).xyz;
        r24.x = dot(r18.xyz, r20.xyz);
        r24.y = dot(r18.xyz, r22.xyz);
        r24.z = dot(r18.xyz, r23.xyz);
        r18.xyz = saturate(r24.xyz * refProbeConstantsCB[r0.y].data[3].xyz + float3(0.5,0.5,0.5));
        r24.xy = refProbeConstantsCB[r0.y].data[4].zw * r18.xy;
        r24.z = refProbeConstantsCB[r0.y].data[5].x * r18.z;
        r18.xyz = refProbeConstantsCB[r0.y].data[5].yzw + r24.xyz;
        r21.x = dot(r12.xyz, r20.xyz);
        r21.y = dot(r12.xyz, r22.xyz);
        r21.z = dot(r12.xyz, r23.xyz);
        r20.xyz = cmp(float3(0,0,0) < r21.xyz);
        r22.z = r20.x ? 0 : 0.5;
        r22.xy = float2(0,0);
        r22.xyz = r22.xyz + r18.xyz;
        r22.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r22.xyz, 0).xyz;
        r23.xyz = r21.xyz * r21.xyz;
        r23.xyz = r23.xyz * r10.yyy;
        r24.z = r20.y ? 0 : 0.5;
        r24.xy = float2(0,0);
        r20.xyw = r24.xyz + r18.xyz;
        r20.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r20.xyw, 0).xyz;
        r20.xyw = r20.xyw * r23.yyy;
        r20.xyw = r22.xyz * r23.xxx + r20.xyw;
        r22.z = r20.z ? 0 : 0.5;
        r22.xy = float2(0,0);
        r18.xyz = r22.xyz + r18.xyz;
        r18.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r18.xyz, 0).xyz;
        r18.xyz = r18.xyz * r23.zzz + r20.xyw;
        r20.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r21.xyzw, 6).xyz;
        r21.xyz = r20.xyz * r18.xyz;
        r0.y = dot(r21.xyz, float3(0.212599993,0.715200007,0.0722000003));
        r15.yzw = r18.xyz * r20.xyz + r15.yzw;
        r4.w = r9.w * r0.y;
        r18.xyz = r19.xyz * r10.yyy;
        r8.w = dot(r18.xyz, float3(0.212599993,0.715200007,0.0722000003));
        r0.y = r9.w * r0.y + r8.w;
        r0.y = r4.w / r0.y;
        r16.yzw = r18.xyz * r0.yyy + r16.yzw;
      }
    }
  }
  r0.y = max(1, r10.w);
  r0.y = rcp(r0.y);
  r10.w = saturate(r10.w);
  r18.xyz = r15.yzw * r0.yyy;
  r16.yzw = r16.yzw * r0.yyy;
  r4.w = cmp(r10.w < 0.99000001);
  if (r4.w != 0) {
    r4.w = 1 + -r10.w;
    r8.w = sunConstants.globalProbeExposure * r4.w;
    r10.yzw = -globalProbeConstants.data[0].xyz + r11.xyz;
    r19.x = globalProbeConstants.data[0].w * r10.y;
    r19.yz = globalProbeConstants.data[1].xy * r10.zw;
    r10.yzw = saturate(float3(0.5,0.5,0.5) + r19.xyz);
    r19.xy = globalProbeConstants.data[1].zw * r10.yz;
    r19.z = globalProbeConstants.data[2].x * r10.w;
    r10.yzw = globalProbeConstants.data[2].yzw + r19.xyz;
    r19.xyz = cmp(float3(0,0,0) < r12.xyz);
    r19.xyz = r19.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r19.w = 0;
    r20.xyz = r19.wwx + r10.yzw;
    r20.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r20.xyz, 0).xyz;
    r21.xyz = r12.xyz * r12.xyz;
    r21.xyz = r21.xyz * r8.www;
    r22.xyz = r19.wwy + r10.yzw;
    r22.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r22.xyz, 0).xyz;
    r22.xyz = r22.xyz * r21.yyy;
    r20.xyz = r20.xyz * r21.xxx + r22.xyz;
    r10.yzw = r19.wwz + r10.yzw;
    r10.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r10.yzw, 0).xyz;
    r10.yzw = r10.yzw * r21.zzz + r20.xyz;
    r12.w = 0;
    r19.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r12.xyzw, 6).xyz;
    r10.yzw = r19.xyz * r10.yzw;
    r8.w = dot(r10.yzw, float3(0.212599993,0.715200007,0.0722000003));
    r18.xyz = r15.yzw * r0.yyy + r10.yzw;
    r17.w = 0;
    r10.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r17.xyzw, r7.w).xyz;
    r0.y = sunConstants.globalProbeExposure * r4.w + -r8.w;
    r0.y = r2.y * r0.y + r8.w;
    r16.yzw = r10.yzw * r0.yyy + r16.yzw;
  }
  r0.y = r5.z * r2.z + r2.x;
  r0.y = log2(abs(r0.y));
  r0.y = r1.w * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r5.z * r2.z + r0.y;
  r0.y = saturate(-1 + r0.y);
  r18.xyz = r18.xyz * r2.www;
  r2.yz = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r2.yz = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r2.yz, 0).xy;
  r10.yzw = r16.yzw * r0.yyy;
  r19.xyz = r10.zwy * r2.yyy;
  r2.yzw = r10.yzw * r2.zzz;
  r0.y = sqrt(r1.w);
  r0.y = r0.y * 0.5 + 0.5;
  r0.y = r0.y * r0.y;
  r4.w = 0.5 * r0.y;
  r0.y = -r0.y * 0.5 + 1;
  r5.z = r2.x * r0.y + r4.w;
  r0.y = r5.z * r0.y;
  r4.w = r5.z * r4.w;
  r5.z = cmp(0 < r3.w);
  if (r5.z != 0) {
    r5.z = cmp(0 < r6.w);
    if (r5.z != 0) {
      r5.z = sunConstants.specScale * r1.z;
      r5.z = r5.z * r3.w;
      if (sunConstants.sunCookieIndex != 0) {
        r20.xyz = eyeOffset.xyz + r11.xyz;
        r20.w = 1;
        r7.w = dot(sunConstants.sunCookieTransform[0].xyzw, r20.xyzw);
        r8.w = dot(sunConstants.sunCookieTransform[1].xyzw, r20.xyzw);
        r20.x = frac(r7.w);
        r20.y = frac(r8.w);
        r7.w = -1 + (int14)sunConstants.sunCookieIndex;
        r20.z = (uint)r7.w;
        r10.yzw = gCookieArray.SampleLevel(samplerLinear_s, r20.xyz, 0).xyz;
        r10.yzw = float3(-1,-1,-1) + r10.yzw;
        r10.yzw = sunConstants.sunCookieIntensity * r10.yzw + float3(1,1,1);
        r10.yzw = sunConstants.color.xyz * r10.yzw;
      } else {
        r10.yzw = sunConstants.color.xyz;
      }
      r7.w = viewmodelSunShadowRaw >> 16;
      r8.w = cmp(0 < (uint)r7.w);
      r8.w = r10.x ? r8.w : 0;
      if (r8.w != 0) {
        r7.w = (int)r7.w + numLights;
        r7.w = mad((int)r7.w, 15, -15);
        r8.w = abs(r3.z) * -0.200000003 + 0.400000006;
        r20.xyz = r12.xyz * r8.www + r11.xyz;
        r21.xyz = lightConstantsCB[r7.w].data[4].yzw;
        r21.w = lightConstantsCB[r7.w].data[5].x;
        r20.w = 1;
        r21.x = dot(r21.xyzw, r20.xyzw);
        r22.xyz = lightConstantsCB[r7.w].data[5].yzw;
        r22.w = lightConstantsCB[r7.w].data[6].x;
        r21.y = dot(r22.xyzw, r20.xyzw);
        r15.yz = r21.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r21.x = lightConstantsCB[r7.w].data[9].w + r15.y;
        r21.y = lightConstantsCB[r7.w].data[10].x + r15.z;
        r15.yz = lightConstantsCB[r7.w].data[9].yz * r21.xy;
        r16.yz = lightConstantsCB[r7.w].data[3].yy / lightConstantsCB[r7.w].data[8].yw;
        r21.xy = float2(1,1) + -r16.yz;
        r21.xy = cmp(r15.yz >= r21.xy);
        r16.yz = cmp(r16.yz >= r15.yz);
        r16.yz = (int2)r16.yz | (int2)r21.xy;
        r8.w = (int)r16.z | (int)r16.y;
        if (r8.w == 0) {
          r21.xyz = lightConstantsCB[r7.w].data[6].yzw;
          r21.w = lightConstantsCB[r7.w].data[7].x;
          r8.w = dot(r21.xyzw, r20.xyzw);
          r15.yz = saturate(r15.yz);
          r20.x = r15.y * lightConstantsCB[r7.w].data[8].y + lightConstantsCB[r7.w].data[8].z;
          r20.y = r15.z * lightConstantsCB[r7.w].data[8].w + lightConstantsCB[r7.w].data[9].x;
          r8.w = lightConstantsCB[r7.w].data[10].y + r8.w;
          r8.w = r8.w / lightConstantsCB[r7.w].data[10].z;
          r8.w = max(6.10351563e-05, r8.w);
          r9.w = 0x0000ffff & (int)lightConstantsCB[r7.w].data[1].w;
          if (enableDitheredShadow != 0) {
            r21.x = -r3.x;
            r22.z = (uint)r9.w;
            r21.y = r14.x;
            r21.z = r3.x;
            r12.w = 0;
            r13.w = 0;
            while (true) {
              r14.w = cmp((int)r13.w >= 8);
              if (r14.w != 0) break;
              r23.x = dot(icb[r13.w+0].yx, r21.xy);
              r23.y = dot(icb[r13.w+0].yx, r21.yz);
              r22.xy = r23.xy * lightConstantsCB[r7.w].data[3].yy + r20.xy;
              r14.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r8.w).x;
              r12.w = r14.w * 0.125 + r12.w;
              r13.w = (int)r13.w + 1;
            }
          } else {
            r20.z = (uint)r9.w;
            r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r8.w).x;
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
        r9.w = ~(int)r10.x;
        r8.w = r8.w ? r9.w : 0;
        if (r8.w != 0) {
          r7.w = (int)r7.w + numLights;
          r7.w = mad((int)r7.w, 15, -15);
          r8.w = abs(r3.z) * -0.200000003 + 0.400000006;
          r20.xyz = r12.xyz * r8.www + r11.xyz;
          r21.xyz = lightConstantsCB[r7.w].data[4].yzw;
          r21.w = lightConstantsCB[r7.w].data[5].x;
          r20.w = 1;
          r21.x = dot(r21.xyzw, r20.xyzw);
          r22.xyz = lightConstantsCB[r7.w].data[5].yzw;
          r22.w = lightConstantsCB[r7.w].data[6].x;
          r21.y = dot(r22.xyzw, r20.xyzw);
          r15.yz = r21.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r21.x = lightConstantsCB[r7.w].data[9].w + r15.y;
          r21.y = lightConstantsCB[r7.w].data[10].x + r15.z;
          r15.yz = lightConstantsCB[r7.w].data[9].yz * r21.xy;
          r16.yz = lightConstantsCB[r7.w].data[3].yy / lightConstantsCB[r7.w].data[8].yw;
          r21.xy = float2(1,1) + -r16.yz;
          r21.xy = cmp(r15.yz >= r21.xy);
          r16.yz = cmp(r16.yz >= r15.yz);
          r16.yz = (int2)r16.yz | (int2)r21.xy;
          r8.w = (int)r16.z | (int)r16.y;
          if (r8.w == 0) {
            r21.xyz = lightConstantsCB[r7.w].data[6].yzw;
            r21.w = lightConstantsCB[r7.w].data[7].x;
            r8.w = dot(r21.xyzw, r20.xyzw);
            r15.yz = saturate(r15.yz);
            r20.x = r15.y * lightConstantsCB[r7.w].data[8].y + lightConstantsCB[r7.w].data[8].z;
            r20.y = r15.z * lightConstantsCB[r7.w].data[8].w + lightConstantsCB[r7.w].data[9].x;
            r8.w = lightConstantsCB[r7.w].data[10].y + r8.w;
            r8.w = r8.w / lightConstantsCB[r7.w].data[10].z;
            r8.w = max(6.10351563e-05, r8.w);
            r9.w = 0x0000ffff & (int)lightConstantsCB[r7.w].data[1].w;
            if (enableDitheredShadow != 0) {
              r21.x = -r3.x;
              r22.z = (uint)r9.w;
              r21.y = r14.x;
              r21.z = r3.x;
              r12.w = 0;
              r13.w = 0;
              while (true) {
                r14.w = cmp((int)r13.w >= 8);
                if (r14.w != 0) break;
                r23.x = dot(icb[r13.w+0].yx, r21.xy);
                r23.y = dot(icb[r13.w+0].yx, r21.yz);
                r22.xy = r23.xy * lightConstantsCB[r7.w].data[3].yy + r20.xy;
                r14.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r8.w).x;
                r12.w = r14.w * 0.125 + r12.w;
                r13.w = (int)r13.w + 1;
              }
            } else {
              r20.z = (uint)r9.w;
              r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r8.w).x;
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
      r7.w = -r3.w * r7.w + 1;
      r7.w = r7.w * r7.w;
      r7.w = -r7.w * 0.620000005 + 0.620000005;
      r7.w = r7.w + -r3.w;
      r7.w = r1.w * r7.w + r3.w;
      r7.w = r7.w * r6.w;
      r3.z = cmp(0 < r3.z);
      r20.xyz = r7.www * r10.yzw + r18.xyz;
      r15.yzw = -r11.xyz * r0.www + sunConstants.wldDir.xyz;
      r0.w = dot(r15.yzw, r15.yzw);
      r0.w = rsqrt(r0.w);
      r15.yzw = r15.yzw * r0.www;
      r0.w = dot(r15.yzw, r13.xyz);
      r7.w = dot(r12.xyz, r15.yzw);
      r8.w = abs(r7.w) * r1.z + -abs(r7.w);
      r7.w = abs(r7.w) * r8.w + 1;
      r3.w = r3.w * r0.y + r4.w;
      r7.w = r7.w * r7.w;
      r3.w = r7.w * r3.w;
      r3.w = rcp(r3.w);
      r3.w = r3.w * r5.z;
      r3.w = r6.w * r3.w;
      r3.w = 0.25 * r3.w;
      r15.yzw = r3.www * r10.yzw + r2.yzw;
      r0.w = saturate(1 + -r0.w);
      r5.z = r0.w * r0.w;
      r5.z = r5.z * r5.z;
      r0.w = r5.z * r0.w;
      r0.w = r3.w * r0.w;
      r21.xyz = r0.www * r10.zwy + r19.xyz;
      r20.w = r21.z;
      r18.w = r19.z;
      r18.xyzw = r3.zzzz ? r20.xyzw : r18.xyzw;
      r21.zw = r15.yz;
      r19.zw = r2.yz;
      r20.xyzw = r3.zzzz ? r21.xyzw : r19.xyzw;
      r2.w = r3.z ? r15.w : r2.w;
      r19.z = r18.w;
      r19.xy = r20.xy;
      r2.yz = r20.zw;
    }
  }
  r0.w = (uint)renderTargetSize.x;
  r0.w = (int)r0.w + 7;
  r0.w = (uint)r0.w >> 3;
  r0.x = mad((int)r0.z, (int)r0.w, (int)r0.x);
  r0.x = (uint)r0.x << 5;
  r0.z = ~(int)r10.x;
  r20.x = -r3.x;
  r0.w = -r2.x * 0.5 + 1;
  r11.w = 1;
  r21.z = 1;
  r22.w = 1;
  r23.w = 1;
  r24.w = 1;
  r20.z = r3.x;
  r25.w = 1;
  r20.yw = r14.xx;
  r3.y = r20.w;
  r14.y = r20.x;
  r14.z = r3.x;
  r26.x = r14.x;
  r26.y = r20.x;
  r26.z = r3.x;
  r27.w = 1;
  r28.x = r14.x;
  r28.y = r20.x;
  r28.z = r3.x;
  r29.x = r14.x;
  r29.y = r20.x;
  r29.z = r3.x;
  r10.yzw = r18.xyz;
  r30.xyz = r19.zxy;
  r31.xyz = r2.yzw;
  r2.x = enableDitheredShadow;
  r3.z = 0;
  while (true) {
    r3.w = cmp((uint)r3.z >= numLights);
    if (r3.w != 0) break;
    r3.w = (uint)r3.z >> 5;
    r3.w = (int)r0.x + (int)r3.w;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r3.w, r3.w, l(0), t26.xxxx
  r3.w = samp0[]..swiz;
    r15.yzw = r10.yzw;
    r16.yzw = r30.xyz;
    r32.xyz = r31.xyz;
    r5.z = r2.x;
    r6.w = r3.w;
    while (true) {
      if (r6.w == 0) break;
      r7.w = firstbitlow((uint)r6.w);
      r8.w = 1 << (int)r7.w;
      r8.w = ~(int)r8.w;
      r6.w = (int)r6.w & (int)r8.w;
      r7.w = (int)r3.z + (int)r7.w;
      r7.w = (int)r7.w * 15;
      if (3 == 0) r8.w = 0; else if (3+24 < 32) {       r8.w = (uint)lightConstantsCB[r7.w].data[1].w << (32-(3 + 24)); r8.w = (uint)r8.w >> (32-3);      } else r8.w = (uint)lightConstantsCB[r7.w].data[1].w >> 24;
      r9.w = cmp((int)r8.w == 2);
      if (r9.w != 0) {
        if (3 == 0) r9.w = 0; else if (3+27 < 32) {         r9.w = (uint)lightConstantsCB[r7.w].data[1].w << (32-(3 + 27)); r9.w = (uint)r9.w >> (32-3);        } else r9.w = (uint)lightConstantsCB[r7.w].data[1].w >> 27;
        r33.xy = lightConstantsCB[r7.w].data[3].zw + -r11.xy;
        r33.z = lightConstantsCB[r7.w].data[4].x + -r11.z;
        r12.w = dot(r33.xyz, r33.xyz);
        r12.w = rsqrt(r12.w);
        r34.xyz = r33.xyz * r12.www;
        r13.w = lightConstantsCB[r7.w].data[1].z * r1.z;
        r13.w = 0.25 * r13.w;
        r14.w = dot(r12.xyz, r34.xyz);
        r17.w = saturate(r14.w);
        r18.w = cmp(0 < r17.w);
        if (r18.w != 0) {
          r34.xyz = lightConstantsCB[r7.w].data[7].yzw;
          r34.w = lightConstantsCB[r7.w].data[8].x;
          r18.w = dot(r34.xyzw, r11.xyzw);
          r19.w = cmp(r18.w < 1);
          if (r19.w != 0) {
            r35.xyz = float3(1,1,1);
            r19.w = 0;
          } else {
            r36.xyz = lightConstantsCB[r7.w].data[0].xyz + -r11.xyz;
            r21.w = lightConstantsCB[r7.w].data[3].x * lightConstantsCB[r7.w].data[3].x;
            r26.w = dot(r36.xyz, r36.xyz);
            r21.w = r21.w / r26.w;
            r21.w = min(1, r21.w);
            r36.xy = saturate(r18.ww * lightConstantsCB[r7.w].data[2].xz + lightConstantsCB[r7.w].data[2].yw);
            r36.zw = r36.xy * r36.xy;
            r36.xy = r36.xy * float2(-2,-2) + float2(3,3);
            r36.xy = r36.zw * r36.xy;
            r21.w = r36.x * r21.w;
            r21.w = r21.w * r36.y;
            r36.xyz = lightConstantsCB[r7.w].data[4].yzw;
            r36.w = lightConstantsCB[r7.w].data[5].x;
            r36.x = dot(r36.xyzw, r11.xyzw);
            r37.xyz = lightConstantsCB[r7.w].data[5].yzw;
            r37.w = lightConstantsCB[r7.w].data[6].x;
            r36.y = dot(r37.xyzw, r11.xyzw);
            r21.xy = r36.xy / r18.ww;
            r18.w = cmp(lightConstantsCB[r7.w].data[10].w < 0.00048828125);
            if (r18.w != 0) {
              r36.xy = saturate(abs(r21.xy) * lightConstantsCB[r7.w].data[12].xy + lightConstantsCB[r7.w].data[12].zw);
              r36.zw = r36.xy * r36.xy;
              r36.xy = r36.xy * float2(-2,-2) + float2(3,3);
              r36.xy = r36.zw * r36.xy;
              r18.w = r36.x * r36.y;
            } else {
              r36.xyzw = saturate(lightConstantsCB[r7.w].data[11].xyzw * abs(r21.yyxx));
              r36.xyzw = log2(r36.xyzw);
              r36.xyzw = lightConstantsCB[r7.w].data[12].zzzz * r36.xyzw;
              r36.xyzw = exp2(r36.xyzw);
              r36.xy = r36.xy + r36.zw;
              r36.xy = log2(r36.xy);
              r36.xy = lightConstantsCB[r7.w].data[12].ww * r36.xy;
              r36.xy = exp2(r36.xy);
              r26.w = lightConstantsCB[r7.w].data[12].x * r36.x;
              r28.w = lightConstantsCB[r7.w].data[12].y * r36.y + -1;
              r26.w = lightConstantsCB[r7.w].data[12].y * r36.y + -r26.w;
              r26.w = saturate(r28.w / r26.w);
              r28.w = r26.w * r26.w;
              r26.w = r26.w * -2 + 3;
              r18.w = r28.w * r26.w;
            }
            r19.w = r21.w * r18.w;
            r18.w = 255 & (int)lightConstantsCB[r7.w].data[14].w;
            if (r18.w != 0) {
              r21.w = dot(lightConstantsCB[r7.w].data[13].xyz, r21.xyz);
              r36.x = lightConstantsCB[r7.w].data[13].w;
              r36.yz = lightConstantsCB[r7.w].data[14].xy;
              r21.x = dot(r36.xyz, r21.xyz);
              r36.xy = frac(r21.wx);
              r18.w = (int)r18.w + -1;
              r36.z = (uint)r18.w;
              r35.xyz = gCookieArray.SampleLevel(samplerLinear_s, r36.xyz, 0).xyz;
            } else {
              r35.xyz = float3(1,1,1);
            }
          }
          r36.x = lightConstantsCB[r7.w].data[0].w;
          r36.yz = lightConstantsCB[r7.w].data[1].xy;
          r21.xyw = r36.xyz * r35.xyz;
          r18.w = cmp(0 < r19.w);
          if (r18.w != 0) {
            r9.w = cmp((int)r9.w != 1);
            if (r9.w != 0) {
              r9.w = abs(r14.w) * -0.200000003 + 0.400000006;
              r22.xyz = r12.xyz * r9.www + r11.xyz;
              r35.xyz = lightConstantsCB[r7.w].data[6].yzw;
              r35.w = lightConstantsCB[r7.w].data[7].x;
              r9.w = dot(r35.xyzw, r22.xyzw);
              r18.w = dot(r34.xyzw, r22.xyzw);
              r26.w = cmp(r18.w >= r9.w);
              if (r26.w != 0) {
                r34.xyz = lightConstantsCB[r7.w].data[4].yzw;
                r34.w = lightConstantsCB[r7.w].data[5].x;
                r34.x = dot(r34.xyzw, r22.xyzw);
                r35.xyz = lightConstantsCB[r7.w].data[5].yzw;
                r35.w = lightConstantsCB[r7.w].data[6].x;
                r34.y = dot(r35.xyzw, r22.xyzw);
                r22.xy = r34.xy / r18.ww;
                r22.xy = saturate(r22.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                r34.x = r22.x * lightConstantsCB[r7.w].data[8].y + lightConstantsCB[r7.w].data[8].z;
                r34.y = r22.y * lightConstantsCB[r7.w].data[8].w + lightConstantsCB[r7.w].data[9].x;
                r9.w = r9.w / r18.w;
                r9.w = max(6.10351563e-05, r9.w);
                r18.w = 0x0000ffff & (int)lightConstantsCB[r7.w].data[1].w;
                if (r5.z != 0) {
                  r22.z = (uint)r18.w;
                  r26.w = 0;
                  r28.w = 0;
                  while (true) {
                    r29.w = cmp((int)r28.w >= 8);
                    if (r29.w != 0) break;
                    r35.x = dot(icb[r28.w+0].yx, r20.xy);
                    r35.y = dot(icb[r28.w+0].yx, r20.yz);
                    r22.xy = r35.xy * lightConstantsCB[r7.w].data[3].yy + r34.xy;
                    r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r9.w).x;
                    r26.w = r22.x * 0.125 + r26.w;
                    r28.w = (int)r28.w + 1;
                  }
                } else {
                  r34.z = (uint)r18.w;
                  r26.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r34.xyz, r9.w).x;
                }
                r9.w = r26.w * r26.w;
                r9.w = r9.w * r26.w;
              } else {
                r9.w = 1;
              }
            } else {
              r9.w = 1;
            }
            r9.w = r19.w * r9.w;
            r18.w = cmp(0 < r9.w);
            if (r18.w != 0) {
              if (4 == 0) r18.w = 0; else if (4+16 < 32) {               r18.w = (uint)lightConstantsCB[r7.w].data[1].w << (32-(4 + 16)); r18.w = (uint)r18.w >> (32-4);              } else r18.w = (uint)lightConstantsCB[r7.w].data[1].w >> 16;
              r19.w = cmp(0 < (uint)r18.w);
              r19.w = r10.x ? r19.w : 0;
              if (r19.w != 0) {
                r18.w = (int)r18.w + numLights;
                r18.w = mad((int)r18.w, 15, -15);
                r19.w = abs(r14.w) * -0.200000003 + 0.400000006;
                r23.xyz = r12.xyz * r19.www + r11.xyz;
                r34.xyz = lightConstantsCB[r18.w].data[6].yzw;
                r34.w = lightConstantsCB[r18.w].data[7].x;
                r19.w = dot(r34.xyzw, r23.xyzw);
                r34.xyz = lightConstantsCB[r18.w].data[7].yzw;
                r34.w = lightConstantsCB[r18.w].data[8].x;
                r22.x = dot(r34.xyzw, r23.xyzw);
                r22.y = cmp(r22.x < r19.w);
                if (r22.y == 0) {
                  r34.xyz = lightConstantsCB[r18.w].data[4].yzw;
                  r34.w = lightConstantsCB[r18.w].data[5].x;
                  r34.x = dot(r34.xyzw, r23.xyzw);
                  r35.xyz = lightConstantsCB[r18.w].data[5].yzw;
                  r35.w = lightConstantsCB[r18.w].data[6].x;
                  r34.y = dot(r35.xyzw, r23.xyzw);
                  r23.xy = r34.xy / r22.xx;
                  r23.xy = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                  r34.x = lightConstantsCB[r18.w].data[9].w + r23.x;
                  r34.y = lightConstantsCB[r18.w].data[10].x + r23.y;
                  r23.xy = lightConstantsCB[r18.w].data[9].yz * r34.xy;
                  r34.xy = lightConstantsCB[r18.w].data[3].yy / lightConstantsCB[r18.w].data[8].yw;
                  r34.zw = float2(1,1) + -r34.xy;
                  r34.zw = cmp(r23.xy >= r34.zw);
                  r34.xy = cmp(r34.xy >= r23.xy);
                  r34.xy = (int2)r34.xy | (int2)r34.zw;
                  r22.z = (int)r34.y | (int)r34.x;
                  if (r22.z == 0) {
                    r23.xy = saturate(r23.xy);
                    r34.x = r23.x * lightConstantsCB[r18.w].data[8].y + lightConstantsCB[r18.w].data[8].z;
                    r34.y = r23.y * lightConstantsCB[r18.w].data[8].w + lightConstantsCB[r18.w].data[9].x;
                    r23.x = lightConstantsCB[r18.w].data[10].z * r22.x;
                    r19.w = lightConstantsCB[r18.w].data[10].y * r22.x + r19.w;
                    r19.w = r19.w / r23.x;
                  }
                } else {
                  r22.z = -1;
                }
                r22.x = (int)r22.y | (int)r22.z;
                if (r22.x == 0) {
                  r19.w = max(6.10351563e-05, r19.w);
                  r22.x = 0x0000ffff & (int)lightConstantsCB[r18.w].data[1].w;
                  if (r5.z != 0) {
                    r23.z = (uint)r22.x;
                    r22.yz = float2(0,0);
                    while (true) {
                      r28.w = cmp((int)r22.z >= 8);
                      if (r28.w != 0) break;
                      r35.x = dot(icb[r22.z+0].yx, r20.xw);
                      r35.y = dot(icb[r22.z+0].xy, r3.xy);
                      r23.xy = r35.xy * lightConstantsCB[r18.w].data[3].yy + r34.xy;
                      r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r19.w).x;
                      r22.y = r23.x * 0.125 + r22.y;
                      r22.z = (int)r22.z + 1;
                    }
                  } else {
                    r34.z = (uint)r22.x;
                    r22.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r34.xyz, r19.w).x;
                  }
                  r18.w = r22.y * r22.y;
                  r18.w = r18.w * r22.y;
                } else {
                  r18.w = 1;
                }
                r9.w = r18.w * r9.w;
              } else {
                if (4 == 0) r18.w = 0; else if (4+20 < 32) {                 r18.w = (uint)lightConstantsCB[r7.w].data[1].w << (32-(4 + 20)); r18.w = (uint)r18.w >> (32-4);                } else r18.w = (uint)lightConstantsCB[r7.w].data[1].w >> 20;
                r19.w = cmp(0 < (uint)r18.w);
                r19.w = r19.w ? r0.z : 0;
                if (r19.w != 0) {
                  r18.w = (int)r18.w + numLights;
                  r18.w = mad((int)r18.w, 15, -15);
                  r19.w = abs(r14.w) * -0.200000003 + 0.400000006;
                  r24.xyz = r12.xyz * r19.www + r11.xyz;
                  r34.xyz = lightConstantsCB[r18.w].data[6].yzw;
                  r34.w = lightConstantsCB[r18.w].data[7].x;
                  r19.w = dot(r34.xyzw, r24.xyzw);
                  r34.xyz = lightConstantsCB[r18.w].data[7].yzw;
                  r34.w = lightConstantsCB[r18.w].data[8].x;
                  r22.x = dot(r34.xyzw, r24.xyzw);
                  r22.z = cmp(r22.x < r19.w);
                  if (r22.z == 0) {
                    r34.xyz = lightConstantsCB[r18.w].data[4].yzw;
                    r34.w = lightConstantsCB[r18.w].data[5].x;
                    r23.x = dot(r34.xyzw, r24.xyzw);
                    r34.xyz = lightConstantsCB[r18.w].data[5].yzw;
                    r34.w = lightConstantsCB[r18.w].data[6].x;
                    r23.y = dot(r34.xyzw, r24.xyzw);
                    r23.xy = r23.xy / r22.xx;
                    r23.xy = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r24.x = lightConstantsCB[r18.w].data[9].w + r23.x;
                    r24.y = lightConstantsCB[r18.w].data[10].x + r23.y;
                    r23.xy = lightConstantsCB[r18.w].data[9].yz * r24.xy;
                    r24.xy = lightConstantsCB[r18.w].data[3].yy / lightConstantsCB[r18.w].data[8].yw;
                    r34.xy = float2(1,1) + -r24.xy;
                    r34.xy = cmp(r23.xy >= r34.xy);
                    r24.xy = cmp(r24.xy >= r23.xy);
                    r24.xy = (int2)r24.xy | (int2)r34.xy;
                    r23.z = (int)r24.y | (int)r24.x;
                    if (r23.z == 0) {
                      r23.xy = saturate(r23.xy);
                      r24.x = r23.x * lightConstantsCB[r18.w].data[8].y + lightConstantsCB[r18.w].data[8].z;
                      r24.y = r23.y * lightConstantsCB[r18.w].data[8].w + lightConstantsCB[r18.w].data[9].x;
                      r23.x = lightConstantsCB[r18.w].data[10].z * r22.x;
                      r19.w = lightConstantsCB[r18.w].data[10].y * r22.x + r19.w;
                      r19.w = r19.w / r23.x;
                    }
                  } else {
                    r23.z = -1;
                  }
                  r22.x = (int)r22.z | (int)r23.z;
                  if (r22.x == 0) {
                    r19.w = max(6.10351563e-05, r19.w);
                    r22.x = 0x0000ffff & (int)lightConstantsCB[r18.w].data[1].w;
                    if (r5.z != 0) {
                      r23.z = (uint)r22.x;
                      r22.z = 0;
                      r28.w = 0;
                      while (true) {
                        r29.w = cmp((int)r28.w >= 8);
                        if (r29.w != 0) break;
                        r34.x = dot(icb[r28.w+0].xy, r26.xy);
                        r34.y = dot(icb[r28.w+0].yx, r26.xz);
                        r23.xy = r34.xy * lightConstantsCB[r18.w].data[3].yy + r24.xy;
                        r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r19.w).x;
                        r22.z = r23.x * 0.125 + r22.z;
                        r28.w = (int)r28.w + 1;
                      }
                    } else {
                      r24.z = (uint)r22.x;
                      r22.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r19.w).x;
                    }
                    r18.w = r22.z * r22.z;
                    r18.w = r18.w * r22.z;
                  } else {
                    r18.w = 1;
                  }
                  r9.w = r18.w * r9.w;
                }
              }
              r18.w = -r17.w * r0.w + 1;
              r18.w = r18.w * r18.w;
              r18.w = -r18.w * 0.620000005 + 0.620000005;
              r18.w = r18.w + -r17.w;
              r18.w = r1.w * r18.w + r17.w;
              r18.w = r18.w * r9.w;
              r14.w = cmp(0 < r14.w);
              r23.xyz = r18.www * r21.xyw + r15.yzw;
              r24.xyz = r33.xyz * r12.www + r13.xyz;
              r12.w = dot(r24.xyz, r24.xyz);
              r12.w = rsqrt(r12.w);
              r24.xyz = r24.xyz * r12.www;
              r12.w = dot(r24.xyz, r13.xyz);
              r18.w = dot(r12.xyz, r24.xyz);
              r19.w = abs(r18.w) * r1.z + -abs(r18.w);
              r18.w = abs(r18.w) * r19.w + 1;
              r19.w = r17.w * r0.y + r4.w;
              r18.w = r18.w * r18.w;
              r18.w = r18.w * r19.w;
              r18.w = rcp(r18.w);
              r13.w = r17.w * r13.w;
              r13.w = r18.w * r13.w;
              r9.w = r13.w * r9.w;
              r24.xyz = r9.www * r21.xyw + r32.xyz;
              r12.w = saturate(1 + -r12.w);
              r13.w = r12.w * r12.w;
              r13.w = r13.w * r13.w;
              r12.w = r13.w * r12.w;
              r9.w = r12.w * r9.w;
              r21.xyw = r9.www * r21.xyw + r16.yzw;
              r15.yzw = r14.www ? r23.xyz : r15.yzw;
              r16.yzw = r14.www ? r21.xyw : r16.yzw;
              r32.xyz = r14.www ? r24.xyz : r32.xyz;
            }
          }
        }
      } else {
        r8.w = cmp((int)r8.w == 4);
        if (r8.w != 0) {
          if (3 == 0) r8.w = 0; else if (3+27 < 32) {           r8.w = (uint)lightConstantsCB[r7.w].data[1].w << (32-(3 + 27)); r8.w = (uint)r8.w >> (32-3);          } else r8.w = (uint)lightConstantsCB[r7.w].data[1].w >> 27;
          r9.w = lightConstantsCB[r7.w].data[1].z * r1.z;
          r9.w = 0.25 * r9.w;
          r12.w = cmp(0 < lightConstantsCB[r7.w].data[6].y);
          r23.xy = lightConstantsCB[r7.w].data[5].zw;
          r23.z = lightConstantsCB[r7.w].data[6].x;
          r21.xyw = -r23.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r7.w].data[0].xyz;
          r24.xyz = r21.xyw + -r11.xyz;
          r13.w = dot(r23.xyz, r17.xyz);
          r14.w = dot(r23.xyz, r24.xyz);
          r17.w = dot(r17.xyz, r24.xyz);
          r18.w = -r13.w * r13.w + lightConstantsCB[r7.w].data[6].y;
          r13.w = r13.w * r17.w + -r14.w;
          r14.w = saturate(-r14.w / lightConstantsCB[r7.w].data[6].y);
          r13.w = saturate(r13.w / r18.w);
          r17.w = r18.w / lightConstantsCB[r7.w].data[6].y;
          r17.w = 10 * r17.w;
          r17.w = min(1, r17.w);
          r13.w = r13.w + -r14.w;
          r13.w = r17.w * r13.w + r14.w;
          r24.xyz = r13.www * r23.xyz + r21.xyw;
          r21.xyw = r14.www * r23.xyz + r21.xyw;
          r21.xyw = r12.www ? r21.xyw : lightConstantsCB[r7.w].data[0].xyz;
          r23.xyz = r12.www ? r24.xyz : lightConstantsCB[r7.w].data[0].xyz;
          r23.xyz = r23.xyz + -r11.xyz;
          r21.xyw = r21.xyw + -r11.xyz;
          r12.w = dot(r23.xyz, r23.xyz);
          r12.w = rsqrt(r12.w);
          r24.xyz = r23.xyz * r12.www;
          r13.w = dot(r21.xyw, r21.xyw);
          r14.w = rsqrt(r13.w);
          r21.xyw = r21.xyw * r14.www;
          r14.w = dot(r12.xyz, r21.xyw);
          r17.w = saturate(r14.w);
          r18.w = cmp(0 < r17.w);
          if (r18.w != 0) {
            r18.w = sqrt(r13.w);
            r19.w = lightConstantsCB[r7.w].data[3].x * lightConstantsCB[r7.w].data[3].x;
            r13.w = r19.w / r13.w;
            r13.w = min(1, r13.w);
            r21.xy = saturate(r18.ww * lightConstantsCB[r7.w].data[2].xz + lightConstantsCB[r7.w].data[2].yw);
            r33.xy = r21.xy * r21.xy;
            r21.xy = r21.xy * float2(-2,-2) + float2(3,3);
            r21.xy = r33.xy * r21.xy;
            r13.w = r21.x * r13.w;
            r13.w = r13.w * r21.y;
            r18.w = cmp(0 < r13.w);
            if (r18.w != 0) {
              r8.w = cmp((int)r8.w != 1);
              if (r8.w != 0) {
                r8.w = abs(r14.w) * -0.200000003 + 0.400000006;
                r21.xyw = r12.xyz * r8.www + r11.xyz;
                r21.xyw = -lightConstantsCB[r7.w].data[4].yzw + r21.xyw;
                r8.w = max(abs(r21.y), abs(r21.w));
                r8.w = max(abs(r21.x), r8.w);
                r8.w = lightConstantsCB[r7.w].data[5].x / r8.w;
                r8.w = lightConstantsCB[r7.w].data[5].y + r8.w;
                r18.w = dot(r21.xyw, r21.xyw);
                r18.w = rsqrt(r18.w);
                r8.w = max(6.10351563e-05, r8.w);
                r19.w = 0x0000ffff & (int)lightConstantsCB[r7.w].data[1].w;
                r33.w = (uint)r19.w;
                r19.w = 0;
                r22.x = 0;
                while (true) {
                  r28.w = cmp((int)r22.x >= 8);
                  if (r28.w != 0) break;
                  r34.y = dot(icb[r22.x+0].xy, r14.xy);
                  r34.z = dot(icb[r22.x+0].yx, r14.xz);
                  r34.yz = lightConstantsCB[r7.w].data[3].yy * r34.yz;
                  r34.x = r34.y * r16.x;
                  r34.w = r34.y * r15.x;
                  r33.xyz = r21.xyw * r18.www + r34.xzw;
                  r28.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r33.xyzw, r8.w).x;
                  r19.w = r28.w * 0.125 + r19.w;
                  r22.x = (int)r22.x + 1;
                }
              } else {
                r19.w = 1;
              }
              r8.w = r19.w * r13.w;
              r13.w = cmp(0 < r8.w);
              if (r13.w != 0) {
                if (4 == 0) r13.w = 0; else if (4+16 < 32) {                 r13.w = (uint)lightConstantsCB[r7.w].data[1].w << (32-(4 + 16)); r13.w = (uint)r13.w >> (32-4);                } else r13.w = (uint)lightConstantsCB[r7.w].data[1].w >> 16;
                r18.w = cmp(0 < (uint)r13.w);
                r18.w = r10.x ? r18.w : 0;
                if (r18.w != 0) {
                  r13.w = (int)r13.w + numLights;
                  r13.w = mad((int)r13.w, 15, -15);
                  r18.w = abs(r14.w) * -0.200000003 + 0.400000006;
                  r25.xyz = r12.xyz * r18.www + r11.xyz;
                  r33.xyz = lightConstantsCB[r13.w].data[6].yzw;
                  r33.w = lightConstantsCB[r13.w].data[7].x;
                  r18.w = dot(r33.xyzw, r25.xyzw);
                  r33.xyz = lightConstantsCB[r13.w].data[7].yzw;
                  r33.w = lightConstantsCB[r13.w].data[8].x;
                  r21.x = dot(r33.xyzw, r25.xyzw);
                  r21.y = cmp(r21.x < r18.w);
                  if (r21.y == 0) {
                    r33.xyz = lightConstantsCB[r13.w].data[4].yzw;
                    r33.w = lightConstantsCB[r13.w].data[5].x;
                    r33.x = dot(r33.xyzw, r25.xyzw);
                    r34.xyz = lightConstantsCB[r13.w].data[5].yzw;
                    r34.w = lightConstantsCB[r13.w].data[6].x;
                    r33.y = dot(r34.xyzw, r25.xyzw);
                    r25.xy = r33.xy / r21.xx;
                    r25.xy = r25.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r33.x = lightConstantsCB[r13.w].data[9].w + r25.x;
                    r33.y = lightConstantsCB[r13.w].data[10].x + r25.y;
                    r25.xy = lightConstantsCB[r13.w].data[9].yz * r33.xy;
                    r33.xy = lightConstantsCB[r13.w].data[3].yy / lightConstantsCB[r13.w].data[8].yw;
                    r33.zw = float2(1,1) + -r33.xy;
                    r33.zw = cmp(r25.xy >= r33.zw);
                    r33.xy = cmp(r33.xy >= r25.xy);
                    r33.xy = (int2)r33.xy | (int2)r33.zw;
                    r21.w = (int)r33.y | (int)r33.x;
                    if (r21.w == 0) {
                      r25.xy = saturate(r25.xy);
                      r33.x = r25.x * lightConstantsCB[r13.w].data[8].y + lightConstantsCB[r13.w].data[8].z;
                      r33.y = r25.y * lightConstantsCB[r13.w].data[8].w + lightConstantsCB[r13.w].data[9].x;
                      r22.x = lightConstantsCB[r13.w].data[10].z * r21.x;
                      r18.w = lightConstantsCB[r13.w].data[10].y * r21.x + r18.w;
                      r18.w = r18.w / r22.x;
                    }
                  } else {
                    r21.w = -1;
                  }
                  r21.x = (int)r21.y | (int)r21.w;
                  if (r21.x == 0) {
                    r18.w = max(6.10351563e-05, r18.w);
                    r21.x = 0x0000ffff & (int)lightConstantsCB[r13.w].data[1].w;
                    if (r5.z != 0) {
                      r25.z = (uint)r21.x;
                      r21.yw = float2(0,0);
                      while (true) {
                        r22.x = cmp((int)r21.w >= 8);
                        if (r22.x != 0) break;
                        r34.x = dot(icb[r21.w+0].xy, r28.xy);
                        r34.y = dot(icb[r21.w+0].yx, r28.xz);
                        r25.xy = r34.xy * lightConstantsCB[r13.w].data[3].yy + r33.xy;
                        r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r18.w).x;
                        r21.y = r22.x * 0.125 + r21.y;
                        r21.w = (int)r21.w + 1;
                      }
                    } else {
                      r33.z = (uint)r21.x;
                      r21.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r33.xyz, r18.w).x;
                    }
                    r13.w = r21.y * r21.y;
                    r13.w = r13.w * r21.y;
                  } else {
                    r13.w = 1;
                  }
                  r8.w = r13.w * r8.w;
                } else {
                  if (4 == 0) r13.w = 0; else if (4+20 < 32) {                   r13.w = (uint)lightConstantsCB[r7.w].data[1].w << (32-(4 + 20)); r13.w = (uint)r13.w >> (32-4);                  } else r13.w = (uint)lightConstantsCB[r7.w].data[1].w >> 20;
                  r18.w = cmp(0 < (uint)r13.w);
                  r18.w = r18.w ? r0.z : 0;
                  if (r18.w != 0) {
                    r13.w = (int)r13.w + numLights;
                    r13.w = mad((int)r13.w, 15, -15);
                    r18.w = abs(r14.w) * -0.200000003 + 0.400000006;
                    r27.xyz = r12.xyz * r18.www + r11.xyz;
                    r33.xyz = lightConstantsCB[r13.w].data[6].yzw;
                    r33.w = lightConstantsCB[r13.w].data[7].x;
                    r18.w = dot(r33.xyzw, r27.xyzw);
                    r33.xyz = lightConstantsCB[r13.w].data[7].yzw;
                    r33.w = lightConstantsCB[r13.w].data[8].x;
                    r21.x = dot(r33.xyzw, r27.xyzw);
                    r21.w = cmp(r21.x < r18.w);
                    if (r21.w == 0) {
                      r33.xyz = lightConstantsCB[r13.w].data[4].yzw;
                      r33.w = lightConstantsCB[r13.w].data[5].x;
                      r25.x = dot(r33.xyzw, r27.xyzw);
                      r33.xyz = lightConstantsCB[r13.w].data[5].yzw;
                      r33.w = lightConstantsCB[r13.w].data[6].x;
                      r25.y = dot(r33.xyzw, r27.xyzw);
                      r25.xy = r25.xy / r21.xx;
                      r25.xy = r25.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r27.x = lightConstantsCB[r13.w].data[9].w + r25.x;
                      r27.y = lightConstantsCB[r13.w].data[10].x + r25.y;
                      r25.xy = lightConstantsCB[r13.w].data[9].yz * r27.xy;
                      r27.xy = lightConstantsCB[r13.w].data[3].yy / lightConstantsCB[r13.w].data[8].yw;
                      r33.xy = float2(1,1) + -r27.xy;
                      r33.xy = cmp(r25.xy >= r33.xy);
                      r27.xy = cmp(r27.xy >= r25.xy);
                      r27.xy = (int2)r27.xy | (int2)r33.xy;
                      r22.x = (int)r27.y | (int)r27.x;
                      if (r22.x == 0) {
                        r25.xy = saturate(r25.xy);
                        r27.x = r25.x * lightConstantsCB[r13.w].data[8].y + lightConstantsCB[r13.w].data[8].z;
                        r27.y = r25.y * lightConstantsCB[r13.w].data[8].w + lightConstantsCB[r13.w].data[9].x;
                        r25.x = lightConstantsCB[r13.w].data[10].z * r21.x;
                        r18.w = lightConstantsCB[r13.w].data[10].y * r21.x + r18.w;
                        r18.w = r18.w / r25.x;
                      }
                    } else {
                      r22.x = -1;
                    }
                    r21.x = (int)r21.w | (int)r22.x;
                    if (r21.x == 0) {
                      r18.w = max(6.10351563e-05, r18.w);
                      r21.x = 0x0000ffff & (int)lightConstantsCB[r13.w].data[1].w;
                      if (r5.z != 0) {
                        r25.z = (uint)r21.x;
                        r21.w = 0;
                        r22.x = 0;
                        while (true) {
                          r28.w = cmp((int)r22.x >= 8);
                          if (r28.w != 0) break;
                          r33.x = dot(icb[r22.x+0].xy, r29.xy);
                          r33.y = dot(icb[r22.x+0].yx, r29.xz);
                          r25.xy = r33.xy * lightConstantsCB[r13.w].data[3].yy + r27.xy;
                          r25.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r18.w).x;
                          r21.w = r25.x * 0.125 + r21.w;
                          r22.x = (int)r22.x + 1;
                        }
                      } else {
                        r27.z = (uint)r21.x;
                        r21.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r27.xyz, r18.w).x;
                      }
                      r13.w = r21.w * r21.w;
                      r13.w = r13.w * r21.w;
                    } else {
                      r13.w = 1;
                    }
                    r8.w = r13.w * r8.w;
                  }
                }
                r13.w = -r17.w * r0.w + 1;
                r13.w = r13.w * r13.w;
                r13.w = -r13.w * 0.620000005 + 0.620000005;
                r13.w = r13.w + -r17.w;
                r13.w = r1.w * r13.w + r17.w;
                r13.w = r13.w * r8.w;
                r25.x = lightConstantsCB[r7.w].data[0].w;
                r25.yz = lightConstantsCB[r7.w].data[1].xy;
                r7.w = cmp(0 < r14.w);
                r27.xyz = r13.www * r25.xyz + r15.yzw;
                r13.w = saturate(dot(r12.xyz, r24.xyz));
                r23.xyz = r23.xyz * r12.www + r13.xyz;
                r12.w = dot(r23.xyz, r23.xyz);
                r12.w = rsqrt(r12.w);
                r23.xyz = r23.xyz * r12.www;
                r12.w = dot(r23.xyz, r13.xyz);
                r14.w = dot(r12.xyz, r23.xyz);
                r17.w = abs(r14.w) * r1.z + -abs(r14.w);
                r14.w = abs(r14.w) * r17.w + 1;
                r17.w = r13.w * r0.y + r4.w;
                r14.w = r14.w * r14.w;
                r14.w = r14.w * r17.w;
                r14.w = rcp(r14.w);
                r9.w = r13.w * r9.w;
                r9.w = r14.w * r9.w;
                r8.w = r9.w * r8.w;
                r23.xyz = r8.www * r25.xyz + r32.xyz;
                r9.w = saturate(1 + -r12.w);
                r12.w = r9.w * r9.w;
                r12.w = r12.w * r12.w;
                r9.w = r12.w * r9.w;
                r8.w = r9.w * r8.w;
                r24.xyz = r8.www * r25.xyz + r16.yzw;
                r15.yzw = r7.www ? r27.xyz : r15.yzw;
                r16.yzw = r7.www ? r24.xyz : r16.yzw;
                r32.xyz = r7.www ? r23.xyz : r32.xyz;
              }
            }
          }
        }
      }
    }
    r10.yzw = r15.yzw;
    r30.xyz = r16.yzw;
    r31.xyz = r32.xyz;
    r3.z = (int)r3.z + 32;
  }
  r0.xyz = r5.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r1.z = (uint)r0.y;
  r2.xyz = r6.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r2.x;
  r1.w = cmp((int)r1.z == (int)r1.w);
  r2.xy = r1.ww ? r2.yz : float2(-1,0);
  r3.xyz = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r3.x;
  r1.w = cmp((int)r1.z == (int)r1.w);
  r2.zw = r1.ww ? r3.yz : float2(-1,0);
  r3.xyz = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r3.x;
  r1.w = cmp((int)r1.z == (int)r1.w);
  r3.xy = r1.ww ? r3.yz : float2(-1,0);
  r5.xyz = r9.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r5.x;
  r1.z = cmp((int)r1.z == (int)r1.w);
  r1.zw = r1.zz ? r5.yz : float2(-1,0);
  r5.xy = r2.xz;
  r5.z = r3.x;
  r5.w = r1.z;
  r5.xyzw = r5.xyzw + -r0.xxxx;
  r5.xyzw = cmp(abs(r5.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r5.xyzw = r5.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r1.z = r5.x + r5.y;
  r1.z = r1.z + r5.z;
  r1.z = r1.z + r5.w;
  r2.x = r5.y * r2.w;
  r2.x = r5.x * r2.y + r2.x;
  r2.x = r5.z * r3.y + r2.x;
  r1.w = r5.w * r1.w + r2.x;
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
  r0.xyz = float3(1,1,1) + -r2.xyz;
  r0.xyz = r30.xyz * r0.xyz;
  r0.xyz = r31.xyz * r2.xyz + r0.xyz;
  r0.xyz = r10.yzw * r4.xyz + r0.xyz;
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