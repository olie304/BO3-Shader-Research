// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:07 2021

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=8)(mixed,mixed,mixed,mixed) r0.xy, vThreadGroupID.x, l(0), t25.xyxx
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
  r2.z = dot(r1.wz, float2(0.0671105608,0.00583714992));
  r2.z = frac(r2.z);
  r2.z = 52.9829178 * r2.z;
  r2.z = frac(r2.z);
  r2.z = r2.z * 6.28318548 + gameTick.w;
  sincos(r2.z, r13.x, r14.x);
  r1.z = dot(r1.zw, float2(0.0671105608,0.00583714992));
  r1.z = frac(r1.z);
  r1.z = 52.9829178 * r1.z;
  r1.z = frac(r1.z);
  r1.z = r1.z * 6.28318548 + gameTick.w;
  sincos(r1.z, r3.x, r15.x);
  r2.x = saturate(dot(r11.xyz, r12.xyz));
  r1.z = dot(-r12.xyz, r11.xyz);
  r1.z = r1.z + r1.z;
  r16.xyz = r11.xyz * -r1.zzz + -r12.xyz;
  r1.z = 17 * r2.y;
  r1.z = exp2(r1.z);
  r1.z = 2 + r1.z;
  r1.z = 2 / r1.z;
  r1.w = sqrt(r1.z);
  r2.zw = renderTargetSize.zw * r9.xy;
  r17.xyzw = gSSAOTexture.Gather(samplerLinearClamp_s, r2.zw).xyzw;
  r18.xyzw = gSSAODepthTexture.Gather(samplerLinearClamp_s, r2.zw).xyzw;
  r2.zw = float2(0.5,0.5) * r9.xy;
  r2.zw = frac(r2.zw);
  r9.xy = float2(1,1) + -r2.wz;
  r19.y = r9.y * r9.x;
  r19.xz = r9.xy * r2.zw;
  r19.w = r2.z * r2.w;
  r2.z = dot(r17.xyzw, r19.xyzw);
  r18.xyzw = r18.xyzw + -r9.wwww;
  r2.w = min(abs(r18.z), abs(r18.w));
  r2.w = min(abs(r18.y), r2.w);
  r2.w = min(abs(r18.x), r2.w);
  r5.w = max(abs(r18.z), abs(r18.w));
  r5.w = max(abs(r18.y), r5.w);
  r5.w = max(abs(r18.x), r5.w);
  r15.yzw = cmp(r2.www == abs(r18.yzw));
  r2.w = r15.y ? r17.y : r17.x;
  r2.w = r15.z ? r17.z : r2.w;
  r2.w = r15.w ? r17.w : r2.w;
  r6.w = 0.00999999978 * r9.w;
  r5.w = cmp(r6.w < r5.w);
  r2.z = r5.w ? r2.w : r2.z;
  r2.w = r4.z * r2.z;
  r5.w = dot(r11.xyz, sunConstants.wldDir.xyz);
  r6.w = saturate(r5.w);
  r7.w = r0.w ? abs(r5.w) : r6.w;
  r8.w = cmp(0 >= r7.w);
  if (r8.w != 0) {
    r9.x = 0;
  }
  if (r8.w == 0) {
    r15.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * r10.yyy;
    r15.yzw = r10.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r15.yzw;
    r15.yzw = r10.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r15.yzw;
    r15.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r15.yzw;
    r8.w = -sunConstants.splitDepthOffset + r15.w;
    r8.w = -r8.w * 6.10351563e-05 + 1;
    r9.y = saturate(r8.w);
    r9.y = cmp(r8.w == r9.y);
    if (r9.y != 0) {
      r9.yw = float2(0,0);
      while (true) {
        r12.w = cmp(r9.y >= 3);
        if (r12.w != 0) break;
        r12.w = (uint)r9.y;
        r13.zw = -sunConstants.splitPinTransform[r12.w].xy + r15.yz;
        r13.z = max(abs(r13.z), abs(r13.w));
        r9.w = sunConstants.splitPinTransform[r12.w].z * r13.z;
        r12.w = cmp(r9.w < 1);
        if (r12.w != 0) {
          break;
        }
        r9.y = 1 + r9.y;
        r9.w = 0;
      }
    } else {
      r9.yw = float2(3,0);
    }
    r12.w = cmp(r9.y >= 3);
    if (r12.w != 0) {
      r17.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r18.xz = rcp(r17.xx);
      r18.y = -r18.z;
      r17.xyz = r15.yzy * r18.xyz + r17.yzy;
      r18.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r17.xyz = max(float3(0,0,0), r17.xyz);
      r17.xyz = min(r17.xyz, r18.xyz);
      r13.zw = sunConstants.sstLightingConstants.coordScale * r17.zy;
      r13.zw = floor(r13.zw);
      r13.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r13.w;
      r13.z = r13.w * sunConstants.sstLightingConstants.coordScale + r13.z;
      r13.z = (uint)r13.z;
      r13.z = (int)r13.z + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.w, r13.z, l(0), t23.xxxx
    r13.w = samp0[]..swiz;
      r14.w = (int)r13.w & 0x40000000;
      r17.w = (uint)r13.w << 2;
      if (r14.w == 0) {
        r14.w = (int)r13.w & 0x01ffffff;
        r18.x = (int)r13.z + (int)r14.w;
        r13.z = (uint)r13.w >> 25;
        r13.z = (uint)r13.z;
        r17.xyz = r17.xyz * r13.zzz;
        r17.xyz = frac(r17.xyz);
        r17.xyz = float3(128,128,128) * r17.xyz;
        r17.xyz = (uint3)r17.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
      r18.z = samp0[]..swiz;
        r13.zw = (uint2)r17.zy >> int2(6,6);
        r14.w = (int)r18.z & 0xc0000000;
        r18.w = (int)r18.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.w, l(0), t23.xxxx
      r18.w = samp0[]..swiz;
        r13.w = r13.w ? r18.z : r18.w;
        r18.w = (uint)r13.w >> 13;
        r13.z = r13.z ? r18.w : r13.w;
        r13.z = (int)r13.z & 8191;
        r19.x = (int)r13.z + (int)r18.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
      r19.z = samp0[]..swiz;
        r18.y = 0;
        r19.y = 1;
        r19.xyz = r14.www ? r18.xyz : r19.xyz;
        r20.yz = r14.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r13.zw = (uint2)r17.zy >> (uint2)r20.yy;
        r13.zw = (int2)r13.zw & int2(1,1);
        r18.w = (int)r19.z & 0xc0000000;
        r19.w = (int)r19.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.w, r19.w, l(0), t23.xxxx
      r19.w = samp0[]..swiz;
        r13.w = r13.w ? r19.z : r19.w;
        r19.w = (uint)r13.w >> 13;
        r13.z = r13.z ? r19.w : r13.w;
        r13.z = (int)r13.z & 8191;
        r20.x = (int)r13.z + (int)r19.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.w, r20.x, l(0), t23.xxxx
      r20.w = samp0[]..swiz;
        r19.xyz = r18.www ? r19.xyz : r20.xzw;
        r18.xyz = r14.www ? r18.xyz : r19.xyz;
        r13.z = (int)r18.z & 0xc0000000;
        if (r13.z == 0) {
          r13.z = (int)-r18.y + 6;
          r13.zw = (uint2)r17.zy >> (uint2)r13.zz;
          r14.w = (int)r18.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.w = (((uint)r13.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.z = (((uint)r13.z << 0) & bitmask.z) | ((uint)r13.w & ~bitmask.z);
          r13.z = (int)r13.z * 10;
          r13.z = (uint)r14.w >> (uint)r13.z;
          r13.z = (int)r13.z & 1023;
          r19.x = (int)r13.z + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.w, r19.x, l(0), t23.xxxx
        r19.w = samp0[]..swiz;
          r19.yz = (int2)r18.yy + int2(1,2);
          r13.z = (int)-r19.y + 6;
          r13.zw = (uint2)r17.zy >> (uint2)r13.zz;
          r14.w = (int)r19.w & 0xc0000000;
          r18.y = (int)r19.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.w = (((uint)r13.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.z = (((uint)r13.z << 0) & bitmask.z) | ((uint)r13.w & ~bitmask.z);
          r13.z = (int)r13.z * 10;
          r13.z = (uint)r18.y >> (uint)r13.z;
          r13.z = (int)r13.z & 1023;
          r20.x = (int)r13.z + (int)r19.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.z, r20.x, l(0), t23.xxxx
        r20.z = samp0[]..swiz;
          r20.y = r19.z;
          r20.xyz = r14.www ? r19.xyw : r20.xyz;
          r13.z = (int)-r20.y + 6;
          r13.zw = (uint2)r17.zy >> (uint2)r13.zz;
          r18.y = (int)r20.z & 0xc0000000;
          r18.w = (int)r20.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.w = (((uint)r13.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.z = (((uint)r13.z << 0) & bitmask.z) | ((uint)r13.w & ~bitmask.z);
          r13.z = (int)r13.z * 10;
          r13.z = (uint)r18.w >> (uint)r13.z;
          r13.z = (int)r13.z & 1023;
          r21.x = (int)r13.z + (int)r20.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r21.y, r21.x, l(0), t23.xxxx
        r21.y = samp0[]..swiz;
          r13.zw = r18.yy ? r20.xz : r21.xy;
          r18.xz = r14.ww ? r19.xw : r13.zw;
        }
        r13.z = (int)r18.z & 0xc0000000;
        if (r13.z == 0) {
          if (14 == 0) r13.w = 0; else if (14+15 < 32) {           r13.w = (uint)r18.z << (32-(14 + 15)); r13.w = (uint)r13.w >> (32-14);          } else r13.w = (uint)r18.z >> 15;
          r13.w = (uint)r13.w;
          r13.w = sunConstants.sstLightingConstants.constants.spanInInches * r13.w;
          r13.w = 6.10388815e-05 * r13.w;
          r18.yw = (int2)r18.zz & int2(32767,536870912);
          r14.w = (uint)r18.y;
          r14.w = sunConstants.sstLightingConstants.constants.spanInInches * r14.w;
          r14.w = 3.05185094e-05 * r14.w;
          r18.y = (int)r17.y & 3;
          r18.y = (int)r18.y + (int)r18.x;
          r18.y = (int)r18.y + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.y, r18.y, l(0), t23.xxxx
        r18.y = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r19.x = (((uint)r17.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r19.y = (((uint)r17.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r19.z = (((uint)r17.z << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r17.x = (uint)r18.y >> (uint)r19.x;
          r17.x = (int)r17.x & 255;
          r17.x = (uint)r17.x;
          r17.x = r17.x * r14.w;
          r17.x = r17.x * 0.00392156886 + r13.w;
          r17.y = (int)r19.y + 1;
          if (1 == 0) r17.z = 0; else if (1+1 < 32) {           r17.z = (uint)r17.z << (32-(1 + 1)); r17.z = (uint)r17.z >> (32-1);          } else r17.z = (uint)r17.z >> 1;
          r17.y = (int)r17.z + (int)r17.y;
          r17.y = (int)r17.y + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.y, r17.y, l(0), t23.xxxx
        r17.y = samp0[]..swiz;
          r17.y = (uint)r17.y >> (uint)r19.z;
          r17.y = (int)r17.y & 0x0000ffff;
          r17.y = (uint)r17.y;
          r14.w = r17.y * r14.w;
          r13.w = r14.w * 1.52590219e-05 + r13.w;
          r17.w = r18.w ? r17.x : r13.w;
        } else {
          r13.w = (int)r18.z & 0x80000000;
          r14.w = (int)r18.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.w, r14.w, l(0), t23.xxxx
        r14.w = samp0[]..swiz;
          r13.w = r13.w ? r14.w : 0;
          r14.w = (uint)r18.z << 2;
          r17.x = (uint)r13.w >> 16;
          r17.x = f16tof32(r17.x);
          r13.w = (int)r13.w & 0x0000ffff;
          r13.w = f16tof32(r13.w);
          r14.w = r15.y * r17.x + r14.w;
          r13.w = r15.z * r13.w + r14.w;
          r17.w = r13.z ? r13.w : r17.w;
        }
      }
      r13.z = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r15.w;
      r13.z = cmp(r17.w < r13.z);
      r9.x = r13.z ? 0 : 1;
    }
    if (r12.w == 0) {
      if (enableDitheredShadow == 0) {
        r12.w = (uint)r9.y;
        r13.zw = -sunConstants.splitPinTransform[r12.w].xy + r15.yz;
        r13.zw = sunConstants.splitPinTransform[r12.w].zz * r13.zw;
        r17.xy = r13.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r12.w = (int16)sunConstants.splitArrayOffset;
        r17.z = r12.w + r9.y;
        r12.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r8.w).x;
        r13.z = gTransShadowmapArray.SampleLevel(samp0_s, r17.xyz, 0).x;
        r12.w = r13.z + r12.w;
        r12.w = saturate(-1 + r12.w);
        r13.z = r12.w * r12.w;
        r9.x = r13.z * r12.w;
      }
      if (enableDitheredShadow != 0) {
        r17.x = -r13.x;
        r12.w = (uint)r9.y;
        r9.y = 1 + r9.y;
        r9.y = min(2, r9.y);
        r9.w = 1 + -r9.w;
        r9.w = 28 * r9.w;
        r9.yw = (uint2)r9.yw;
        r13.zw = -sunConstants.splitPinTransform[r12.w].xy + r15.yz;
        r13.zw = sunConstants.splitPinTransform[r12.w].zz * r13.zw;
        r13.zw = r13.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r15.yz = -sunConstants.splitPinTransform[r9.y].xy + r15.yz;
        r15.yz = sunConstants.splitPinTransform[r9.y].zz * r15.yz;
        r15.yz = r15.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r17.y = r14.x;
        r17.z = r13.x;
        r14.w = 0;
        r15.w = 0;
        while (true) {
          r17.w = cmp((uint)r15.w >= 8);
          if (r17.w != 0) break;
          r17.w = cmp((uint)r9.w < (uint)r15.w);
          r18.xy = r17.ww ? r15.yz : r13.zw;
          r18.z = r17.w ? sunConstants.splitPinTransform[r9.y].w : sunConstants.splitPinTransform[r12.w].w;
          r17.w = r17.w ? r9.y : r12.w;
          r19.x = dot(icb[r15.w+0].yx, r17.xy);
          r19.y = dot(icb[r15.w+0].yx, r17.yz);
          r18.xy = r19.xy * r18.zz + r18.xy;
          r17.w = (int)r17.w + (int16)sunConstants.splitArrayOffset;
          r18.z = (uint)r17.w;
          r17.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r8.w).x;
          r18.x = gTransShadowmapArray.SampleLevel(samp0_s, r18.xyz, 0).x;
          r17.w = r18.x + r17.w;
          r17.w = saturate(-1 + r17.w);
          r14.w = r17.w * 0.125 + r14.w;
          r15.w = (int)r15.w + 1;
        }
        r8.w = r14.w * r14.w;
        r9.x = r8.w * r14.w;
      }
    }
  }
  r8.w = 1 + -r2.y;
  r9.y = 5 * r8.w;
  r9.w = r8.w * 5 + -2.5;
  r9.w = 0.400000006 * r9.w;
  r9.w = max(0, r9.w);
  r9.w = 100 * r9.w;
  r13.zw = -r8.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r12.w = exp2(r13.z);
  r12.w = r12.w * r2.x;
  r12.w = 9.1368103 * r12.w;
  r13.z = r9.y * r8.w;
  r13.z = -r13.z * 2.0159049 + r13.w;
  r13.z = exp2(r13.z);
  r13.z = r13.z * r2.x;
  r13.z = 9.70808983 * r13.z;
  r12.w = max(r13.z, r12.w);
  r12.w = max(1.26815999, r12.w);
  r13.z = numRefProbes + -numOverrideProbes;
  r13.w = (uint)renderTargetSize.x;
  r13.w = (int)r13.w + 7;
  r13.w = (uint)r13.w >> 3;
  r0.x = mad((int)r0.y, (int)r13.w, (int)r0.x);
  r0.y = (uint)r0.x << 5;
  bitmask.x = ((~(-1 << 27)) << 5) & 0xffffffff;  r0.x = (((uint)r0.x << 5) & bitmask.x) | ((uint)16 & ~bitmask.x);
  r13.w = (int)r13.z & -32;
  r14.w = (int)-r13.w + (int)r13.z;
  r15.y = numRefProbes & -32;
  r15.z = (int)-r15.y + numRefProbes;
  r17.yz = float2(0,1);
  r18.xy = float2(0,0);
  r19.x = 1;
  r20.xy = float2(0,0);
  r21.xy = float2(0,0);
  r22.xyzw = float4(0,0,0,0);
  r23.yzw = float3(0,0,0);
  r15.w = r13.w;
  while (true) {
    r17.w = cmp((uint)r15.w >= numRefProbes);
    if (r17.w != 0) break;
    r17.w = (uint)r15.w >> 5;
    r17.w = (int)r0.x + (int)r17.w;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.w, l(0), t26.xxxx
  r17.w = samp0[]..swiz;
    r18.w = cmp((int)r13.w == (int)r15.w);
    bitmask.z = ((~(-1 << r14.w)) << 0) & 0xffffffff;  r19.z = (((uint)0 << 0) & bitmask.z) | ((uint)r17.w & ~bitmask.z);
    r17.w = r18.w ? r19.z : r17.w;
    r18.w = cmp((int)r15.y == (int)r15.w);
    if (r15.z == 0) r19.z = 0; else if (r15.z+0 < 32) {     r19.z = (uint)r17.w << (32-(r15.z + 0)); r19.z = (uint)r19.z >> (32-r15.z);    } else r19.z = (uint)r17.w >> 0;
    r17.w = r18.w ? r19.z : r17.w;
    r24.xyzw = r22.xyzw;
    r25.xyz = r23.yzw;
    r18.w = r17.w;
    while (true) {
      if (r18.w == 0) break;
      r19.z = firstbitlow((uint)r18.w);
      r19.w = 1 << (int)r19.z;
      r19.w = ~(int)r19.w;
      r18.w = (int)r18.w & (int)r19.w;
      r19.z = (int)r15.w + (int)r19.z;
      r19.z = (int)r19.z * 14;
      r26.xyz = -refProbeConstantsCB[r19.z].data[0].xyz + r10.xyz;
      r19.w = 0x0000ffff & (int)refProbeConstantsCB[r19.z].data[7].z;
      if (6 == 0) r20.w = 0; else if (6+25 < 32) {       r20.w = (uint)refProbeConstantsCB[r19.z].data[7].z << (32-(6 + 25)); r20.w = (uint)r20.w >> (32-6);      } else r20.w = (uint)refProbeConstantsCB[r19.z].data[7].z >> 25;
      r21.w = (int)r19.w * 6;
      r26.w = dot(refProbeAttenuationConstantsCB[r21.w].data[0].xyz, r26.xyz);
      r26.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[0].w + r26.w);
      r27.x = dot(refProbeAttenuationConstantsCB[r21.w].data[1].xyz, r26.xyz);
      r27.x = saturate(refProbeAttenuationConstantsCB[r21.w].data[1].w + r27.x);
      r26.w = r27.x * r26.w;
      r27.x = dot(refProbeAttenuationConstantsCB[r21.w].data[2].xyz, r26.xyz);
      r27.x = saturate(refProbeAttenuationConstantsCB[r21.w].data[2].w + r27.x);
      r26.w = r27.x * r26.w;
      r27.x = dot(refProbeAttenuationConstantsCB[r21.w].data[3].xyz, r26.xyz);
      r27.x = saturate(refProbeAttenuationConstantsCB[r21.w].data[3].w + r27.x);
      r26.w = r27.x * r26.w;
      r27.x = dot(refProbeAttenuationConstantsCB[r21.w].data[4].xyz, r26.xyz);
      r27.x = saturate(refProbeAttenuationConstantsCB[r21.w].data[4].w + r27.x);
      r26.w = r27.x * r26.w;
      r27.x = dot(refProbeAttenuationConstantsCB[r21.w].data[5].xyz, r26.xyz);
      r21.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[5].w + r27.x);
      r17.x = r26.w * r21.w;
      r21.w = 1 & (int)refProbeConstantsCB[r19.z].data[6].x;
      r27.xy = r21.ww ? r17.xy : r17.zx;
      r17.x = refProbeConstantsCB[r19.z].data[6].x;
      r28.xy = r27.xy;
      r21.w = 1;
      while (true) {
        r26.w = cmp((int)r21.w >= (int)r20.w);
        if (r26.w != 0) break;
        r26.w = (int)r19.w + (int)r21.w;
        r26.w = (int)r26.w * 6;
        r27.z = dot(refProbeAttenuationConstantsCB[r26.w].data[0].xyz, r26.xyz);
        r27.z = saturate(refProbeAttenuationConstantsCB[r26.w].data[0].w + r27.z);
        r27.z = r28.x * r27.z;
        r27.w = dot(refProbeAttenuationConstantsCB[r26.w].data[1].xyz, r26.xyz);
        r27.w = saturate(refProbeAttenuationConstantsCB[r26.w].data[1].w + r27.w);
        r27.z = r27.z * r27.w;
        r27.w = dot(refProbeAttenuationConstantsCB[r26.w].data[2].xyz, r26.xyz);
        r27.w = saturate(refProbeAttenuationConstantsCB[r26.w].data[2].w + r27.w);
        r27.z = r27.z * r27.w;
        r27.w = dot(refProbeAttenuationConstantsCB[r26.w].data[3].xyz, r26.xyz);
        r27.w = saturate(refProbeAttenuationConstantsCB[r26.w].data[3].w + r27.w);
        r27.z = r27.z * r27.w;
        r27.w = dot(refProbeAttenuationConstantsCB[r26.w].data[4].xyz, r26.xyz);
        r27.w = saturate(refProbeAttenuationConstantsCB[r26.w].data[4].w + r27.w);
        r27.z = r27.z * r27.w;
        r27.w = dot(refProbeAttenuationConstantsCB[r26.w].data[5].xyz, r26.xyz);
        r26.w = saturate(refProbeAttenuationConstantsCB[r26.w].data[5].w + r27.w);
        r28.x = r27.z * r26.w;
        r27.w = (uint)r17.x >> 2;
        if (1 == 0) r28.z = 0; else if (1+2 < 32) {         r28.z = (uint)r17.x << (32-(1 + 2)); r28.z = (uint)r28.z >> (32-1);        } else r28.z = (uint)r17.x >> 2;
        r28.w = (int)r27.w & 2;
        r29.x = max(r28.y, r28.x);
        r26.w = -r27.z * r26.w + 1;
        r26.w = r28.y * r26.w;
        r19.y = r28.w ? r26.w : r29.x;
        r28.xy = r28.zz ? r28.xy : r19.xy;
        r21.w = (int)r21.w + 1;
        r17.x = r27.w;
      }
      r28.y = saturate(r28.y);
      r17.x = refProbeConstantsCB[r19.z].data[6].y * r28.y;
      r19.y = cmp(0 < r17.x);
      if (r19.y != 0) {
        r25.z = r28.y * refProbeConstantsCB[r19.z].data[6].y + r25.z;
        r17.x = refProbeConstantsCB[r19.z].data[7].y * r17.x;
        r27.x = refProbeConstantsCB[r19.z].data[7].w;
        r27.yz = refProbeConstantsCB[r19.z].data[8].xy;
        r19.y = dot(r16.xyz, r27.xyz);
        r19.w = dot(r26.xyz, r27.xyz);
        r19.w = -refProbeConstantsCB[r19.z].data[8].z + r19.w;
        r20.w = cmp(r19.w >= 0);
        r19.w = max(abs(r19.w), r9.w);
        r19.w = r20.w ? r19.w : -r19.w;
        r19.y = max(1.00000001e-07, -r19.y);
        r19.y = r19.w / r19.y;
        r19.y = min(131072, abs(r19.y));
        r27.x = refProbeConstantsCB[r19.z].data[8].w;
        r27.yz = refProbeConstantsCB[r19.z].data[9].xy;
        r19.w = dot(r16.xyz, r27.xyz);
        r20.w = dot(r26.xyz, r27.xyz);
        r20.w = -refProbeConstantsCB[r19.z].data[9].z + r20.w;
        r21.w = cmp(r20.w >= 0);
        r20.w = max(abs(r20.w), r9.w);
        r20.w = r21.w ? r20.w : -r20.w;
        r19.w = max(1.00000001e-07, -r19.w);
        r19.w = r20.w / r19.w;
        r19.y = min(r19.y, abs(r19.w));
        r27.x = refProbeConstantsCB[r19.z].data[9].w;
        r27.yz = refProbeConstantsCB[r19.z].data[10].xy;
        r19.w = dot(r16.xyz, r27.xyz);
        r20.w = dot(r26.xyz, r27.xyz);
        r20.w = -refProbeConstantsCB[r19.z].data[10].z + r20.w;
        r21.w = cmp(r20.w >= 0);
        r20.w = max(abs(r20.w), r9.w);
        r20.w = r21.w ? r20.w : -r20.w;
        r19.w = max(1.00000001e-07, -r19.w);
        r19.w = r20.w / r19.w;
        r19.y = min(r19.y, abs(r19.w));
        r27.x = refProbeConstantsCB[r19.z].data[10].w;
        r27.yz = refProbeConstantsCB[r19.z].data[11].xy;
        r19.w = dot(r16.xyz, r27.xyz);
        r20.w = dot(r26.xyz, r27.xyz);
        r20.w = -refProbeConstantsCB[r19.z].data[11].z + r20.w;
        r21.w = cmp(r20.w >= 0);
        r20.w = max(abs(r20.w), r9.w);
        r20.w = r21.w ? r20.w : -r20.w;
        r19.w = max(1.00000001e-07, -r19.w);
        r19.w = r20.w / r19.w;
        r19.y = min(r19.y, abs(r19.w));
        r27.x = refProbeConstantsCB[r19.z].data[11].w;
        r27.yz = refProbeConstantsCB[r19.z].data[12].xy;
        r19.w = dot(r16.xyz, r27.xyz);
        r20.w = dot(r26.xyz, r27.xyz);
        r20.w = -refProbeConstantsCB[r19.z].data[12].z + r20.w;
        r21.w = cmp(r20.w >= 0);
        r20.w = max(abs(r20.w), r9.w);
        r20.w = r21.w ? r20.w : -r20.w;
        r19.w = max(1.00000001e-07, -r19.w);
        r19.w = r20.w / r19.w;
        r19.y = min(r19.y, abs(r19.w));
        r27.x = refProbeConstantsCB[r19.z].data[12].w;
        r27.yz = refProbeConstantsCB[r19.z].data[13].xy;
        r19.w = dot(r16.xyz, r27.xyz);
        r20.w = dot(r26.xyz, r27.xyz);
        r20.w = -refProbeConstantsCB[r19.z].data[13].z + r20.w;
        r21.w = cmp(r20.w >= 0);
        r20.w = max(abs(r20.w), r9.w);
        r20.w = r21.w ? r20.w : -r20.w;
        r19.w = max(1.00000001e-07, -r19.w);
        r19.w = r20.w / r19.w;
        r19.y = min(r19.y, abs(r19.w));
        r27.x = refProbeConstantsCB[r19.z].data[3].w + r26.x;
        r27.yz = refProbeConstantsCB[r19.z].data[4].xy + r26.yz;
        r27.xyz = r16.xyz * r19.yyy + r27.xyz;
        r19.w = dot(r27.xyz, r27.xyz);
        r19.w = sqrt(r19.w);
        r19.y = r19.y / r19.w;
        r19.y = r19.y + r19.y;
        r19.y = sqrt(r19.y);
        r19.y = r8.w * 5 + r19.y;
        r19.y = -0.844799995 + r19.y;
        r29.x = refProbeConstantsCB[r19.z].data[0].w;
        r29.y = refProbeConstantsCB[r19.z].data[1].z;
        r29.z = refProbeConstantsCB[r19.z].data[2].y;
        r30.x = dot(r27.xyz, r29.xyz);
        r31.xy = refProbeConstantsCB[r19.z].data[1].xw;
        r31.z = refProbeConstantsCB[r19.z].data[2].z;
        r30.y = dot(r27.xyz, r31.xyz);
        r32.x = refProbeConstantsCB[r19.z].data[1].y;
        r32.yz = refProbeConstantsCB[r19.z].data[2].xw;
        r30.z = dot(r27.xyz, r32.xyz);
        if (9 == 0) r19.w = 0; else if (9+16 < 32) {         r19.w = (uint)refProbeConstantsCB[r19.z].data[7].z << (32-(9 + 16)); r19.w = (uint)r19.w >> (32-9);        } else r19.w = (uint)refProbeConstantsCB[r19.z].data[7].z >> 16;
        r30.w = (uint)r19.w;
        r27.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r30.xyzw, r19.y).xyz;
        r33.x = dot(r26.xyz, r29.xyz);
        r33.y = dot(r26.xyz, r31.xyz);
        r33.z = dot(r26.xyz, r32.xyz);
        r26.xyz = saturate(r33.xyz * refProbeConstantsCB[r19.z].data[3].xyz + float3(0.5,0.5,0.5));
        r33.xy = refProbeConstantsCB[r19.z].data[4].zw * r26.xy;
        r33.z = refProbeConstantsCB[r19.z].data[5].x * r26.z;
        r19.yzw = refProbeConstantsCB[r19.z].data[5].yzw + r33.xyz;
        r30.x = dot(r11.xyz, r29.xyz);
        r30.y = dot(r11.xyz, r31.xyz);
        r30.z = dot(r11.xyz, r32.xyz);
        r26.xyz = cmp(float3(0,0,0) < r30.xyz);
        r18.z = r26.x ? 0 : 0.5;
        r28.xzw = r19.yzw + r18.xyz;
        r28.xzw = gProbeXArray.SampleLevel(samplerLinearClamp_s, r28.xzw, 0).xyz;
        r29.xyz = r30.xyz * r30.xyz;
        r29.xyz = r29.xyz * r17.xxx;
        r20.z = r26.y ? 0 : 0.5;
        r26.xyw = r20.xyz + r19.yzw;
        r26.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r26.xyw, 0).xyz;
        r26.xyw = r26.xyw * r29.yyy;
        r26.xyw = r28.xzw * r29.xxx + r26.xyw;
        r21.z = r26.z ? 0 : 0.5;
        r19.yzw = r21.xyz + r19.yzw;
        r19.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r19.yzw, 0).xyz;
        r19.yzw = r19.yzw * r29.zzz + r26.xyw;
        r26.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r30.xyzw, 6).xyz;
        r28.xzw = r26.xyz * r19.yzw;
        r18.z = dot(r28.xzw, float3(0.212599993,0.715200007,0.0722000003));
        r24.xyz = r19.yzw * r26.xyz + r24.xyz;
        r19.y = r18.z * r12.w;
        r26.xyz = r27.xyz * r17.xxx;
        r17.x = dot(r26.xyz, float3(0.212599993,0.715200007,0.0722000003));
        r17.x = r12.w * r18.z + r17.x;
        r17.x = r19.y / r17.x;
        r27.x = r24.w;
        r27.yz = r25.xy;
        r25.xyw = r26.yzx * r17.xxx + r27.yzx;
        r24.w = r25.w;
      }
    }
    r22.xyzw = r24.xyzw;
    r23.yzw = r25.xyz;
    r15.w = (int)r15.w + 32;
  }
  r15.y = cmp(r23.w < 1);
  if (r15.y != 0) {
    r17.yz = float2(0,1);
    r18.xy = float2(0,0);
    r19.x = 1;
    r20.xy = float2(0,0);
    r21.xy = float2(0,0);
    r24.x = r22.w;
    r24.yzw = r23.yzw;
    r15.yzw = r22.xyz;
    r17.w = r23.w;
    r18.w = 0;
    while (true) {
      r19.z = cmp((uint)r18.w >= (uint)r13.z);
      if (r19.z != 0) break;
      r19.z = (uint)r18.w >> 5;
      r19.z = (int)r0.x + (int)r19.z;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.z, l(0), t26.xxxx
    r19.z = samp0[]..swiz;
      r19.w = cmp((int)r13.w == (int)r18.w);
      if (r14.w == 0) r20.w = 0; else if (r14.w+0 < 32) {       r20.w = (uint)r19.z << (32-(r14.w + 0)); r20.w = (uint)r20.w >> (32-r14.w);      } else r20.w = (uint)r19.z >> 0;
      r19.z = r19.w ? r20.w : r19.z;
      r25.xyzw = r24.xyzw;
      r26.xyz = r15.yzw;
      r19.w = r17.w;
      r20.w = r19.z;
      while (true) {
        if (r20.w == 0) break;
        r21.w = firstbitlow((uint)r20.w);
        r26.w = 1 << (int)r21.w;
        r26.w = ~(int)r26.w;
        r20.w = (int)r20.w & (int)r26.w;
        r21.w = (int)r18.w + (int)r21.w;
        r21.w = (int)r21.w * 14;
        r27.xyz = -refProbeConstantsCB[r21.w].data[0].xyz + r10.xyz;
        r26.w = 0x0000ffff & (int)refProbeConstantsCB[r21.w].data[7].z;
        if (6 == 0) r27.w = 0; else if (6+25 < 32) {         r27.w = (uint)refProbeConstantsCB[r21.w].data[7].z << (32-(6 + 25)); r27.w = (uint)r27.w >> (32-6);        } else r27.w = (uint)refProbeConstantsCB[r21.w].data[7].z >> 25;
        r28.x = (int)r26.w * 6;
        r28.y = dot(refProbeAttenuationConstantsCB[r28.x].data[0].xyz, r27.xyz);
        r28.y = saturate(refProbeAttenuationConstantsCB[r28.x].data[0].w + r28.y);
        r28.z = dot(refProbeAttenuationConstantsCB[r28.x].data[1].xyz, r27.xyz);
        r28.z = saturate(refProbeAttenuationConstantsCB[r28.x].data[1].w + r28.z);
        r28.y = r28.y * r28.z;
        r28.z = dot(refProbeAttenuationConstantsCB[r28.x].data[2].xyz, r27.xyz);
        r28.z = saturate(refProbeAttenuationConstantsCB[r28.x].data[2].w + r28.z);
        r28.y = r28.y * r28.z;
        r28.z = dot(refProbeAttenuationConstantsCB[r28.x].data[3].xyz, r27.xyz);
        r28.z = saturate(refProbeAttenuationConstantsCB[r28.x].data[3].w + r28.z);
        r28.y = r28.y * r28.z;
        r28.z = dot(refProbeAttenuationConstantsCB[r28.x].data[4].xyz, r27.xyz);
        r28.z = saturate(refProbeAttenuationConstantsCB[r28.x].data[4].w + r28.z);
        r28.y = r28.y * r28.z;
        r28.z = dot(refProbeAttenuationConstantsCB[r28.x].data[5].xyz, r27.xyz);
        r28.x = saturate(refProbeAttenuationConstantsCB[r28.x].data[5].w + r28.z);
        r17.x = r28.y * r28.x;
        r28.x = 1 & (int)refProbeConstantsCB[r21.w].data[6].x;
        r28.xy = r28.xx ? r17.xy : r17.zx;
        r17.x = refProbeConstantsCB[r21.w].data[6].x;
        r29.xy = r28.xy;
        r28.z = 1;
        while (true) {
          r28.w = cmp((int)r28.z >= (int)r27.w);
          if (r28.w != 0) break;
          r28.w = (int)r26.w + (int)r28.z;
          r28.w = (int)r28.w * 6;
          r29.z = dot(refProbeAttenuationConstantsCB[r28.w].data[0].xyz, r27.xyz);
          r29.z = saturate(refProbeAttenuationConstantsCB[r28.w].data[0].w + r29.z);
          r29.z = r29.x * r29.z;
          r29.w = dot(refProbeAttenuationConstantsCB[r28.w].data[1].xyz, r27.xyz);
          r29.w = saturate(refProbeAttenuationConstantsCB[r28.w].data[1].w + r29.w);
          r29.z = r29.z * r29.w;
          r29.w = dot(refProbeAttenuationConstantsCB[r28.w].data[2].xyz, r27.xyz);
          r29.w = saturate(refProbeAttenuationConstantsCB[r28.w].data[2].w + r29.w);
          r29.z = r29.z * r29.w;
          r29.w = dot(refProbeAttenuationConstantsCB[r28.w].data[3].xyz, r27.xyz);
          r29.w = saturate(refProbeAttenuationConstantsCB[r28.w].data[3].w + r29.w);
          r29.z = r29.z * r29.w;
          r29.w = dot(refProbeAttenuationConstantsCB[r28.w].data[4].xyz, r27.xyz);
          r29.w = saturate(refProbeAttenuationConstantsCB[r28.w].data[4].w + r29.w);
          r29.z = r29.z * r29.w;
          r29.w = dot(refProbeAttenuationConstantsCB[r28.w].data[5].xyz, r27.xyz);
          r28.w = saturate(refProbeAttenuationConstantsCB[r28.w].data[5].w + r29.w);
          r29.x = r29.z * r28.w;
          r29.w = (uint)r17.x >> 2;
          if (1 == 0) r30.x = 0; else if (1+2 < 32) {           r30.x = (uint)r17.x << (32-(1 + 2)); r30.x = (uint)r30.x >> (32-1);          } else r30.x = (uint)r17.x >> 2;
          r30.y = (int)r29.w & 2;
          r30.z = max(r29.y, r29.x);
          r28.w = -r29.z * r28.w + 1;
          r28.w = r29.y * r28.w;
          r19.y = r30.y ? r28.w : r30.z;
          r29.xy = r30.xx ? r29.xy : r19.xy;
          r28.z = (int)r28.z + 1;
          r17.x = r29.w;
        }
        r17.x = saturate(r29.y + -r19.w);
        r19.y = refProbeConstantsCB[r21.w].data[6].y * r17.x;
        r26.w = cmp(0 < r19.y);
        if (r26.w != 0) {
          r25.w = r17.x * refProbeConstantsCB[r21.w].data[6].y + r25.w;
          r17.x = refProbeConstantsCB[r21.w].data[7].y * r19.y;
          r28.x = refProbeConstantsCB[r21.w].data[7].w;
          r28.yz = refProbeConstantsCB[r21.w].data[8].xy;
          r19.y = dot(r16.xyz, r28.xyz);
          r26.w = dot(r27.xyz, r28.xyz);
          r26.w = -refProbeConstantsCB[r21.w].data[8].z + r26.w;
          r27.w = cmp(r26.w >= 0);
          r26.w = max(abs(r26.w), r9.w);
          r26.w = r27.w ? r26.w : -r26.w;
          r19.y = max(1.00000001e-07, -r19.y);
          r19.y = r26.w / r19.y;
          r19.y = min(131072, abs(r19.y));
          r28.x = refProbeConstantsCB[r21.w].data[8].w;
          r28.yz = refProbeConstantsCB[r21.w].data[9].xy;
          r26.w = dot(r16.xyz, r28.xyz);
          r27.w = dot(r27.xyz, r28.xyz);
          r27.w = -refProbeConstantsCB[r21.w].data[9].z + r27.w;
          r28.x = cmp(r27.w >= 0);
          r27.w = max(abs(r27.w), r9.w);
          r27.w = r28.x ? r27.w : -r27.w;
          r26.w = max(1.00000001e-07, -r26.w);
          r26.w = r27.w / r26.w;
          r19.y = min(abs(r26.w), r19.y);
          r28.x = refProbeConstantsCB[r21.w].data[9].w;
          r28.yz = refProbeConstantsCB[r21.w].data[10].xy;
          r26.w = dot(r16.xyz, r28.xyz);
          r27.w = dot(r27.xyz, r28.xyz);
          r27.w = -refProbeConstantsCB[r21.w].data[10].z + r27.w;
          r28.x = cmp(r27.w >= 0);
          r27.w = max(abs(r27.w), r9.w);
          r27.w = r28.x ? r27.w : -r27.w;
          r26.w = max(1.00000001e-07, -r26.w);
          r26.w = r27.w / r26.w;
          r19.y = min(abs(r26.w), r19.y);
          r28.x = refProbeConstantsCB[r21.w].data[10].w;
          r28.yz = refProbeConstantsCB[r21.w].data[11].xy;
          r26.w = dot(r16.xyz, r28.xyz);
          r27.w = dot(r27.xyz, r28.xyz);
          r27.w = -refProbeConstantsCB[r21.w].data[11].z + r27.w;
          r28.x = cmp(r27.w >= 0);
          r27.w = max(abs(r27.w), r9.w);
          r27.w = r28.x ? r27.w : -r27.w;
          r26.w = max(1.00000001e-07, -r26.w);
          r26.w = r27.w / r26.w;
          r19.y = min(abs(r26.w), r19.y);
          r28.x = refProbeConstantsCB[r21.w].data[11].w;
          r28.yz = refProbeConstantsCB[r21.w].data[12].xy;
          r26.w = dot(r16.xyz, r28.xyz);
          r27.w = dot(r27.xyz, r28.xyz);
          r27.w = -refProbeConstantsCB[r21.w].data[12].z + r27.w;
          r28.x = cmp(r27.w >= 0);
          r27.w = max(abs(r27.w), r9.w);
          r27.w = r28.x ? r27.w : -r27.w;
          r26.w = max(1.00000001e-07, -r26.w);
          r26.w = r27.w / r26.w;
          r19.y = min(abs(r26.w), r19.y);
          r28.x = refProbeConstantsCB[r21.w].data[12].w;
          r28.yz = refProbeConstantsCB[r21.w].data[13].xy;
          r26.w = dot(r16.xyz, r28.xyz);
          r27.w = dot(r27.xyz, r28.xyz);
          r27.w = -refProbeConstantsCB[r21.w].data[13].z + r27.w;
          r28.x = cmp(r27.w >= 0);
          r27.w = max(abs(r27.w), r9.w);
          r27.w = r28.x ? r27.w : -r27.w;
          r26.w = max(1.00000001e-07, -r26.w);
          r26.w = r27.w / r26.w;
          r19.y = min(abs(r26.w), r19.y);
          r28.x = refProbeConstantsCB[r21.w].data[3].w + r27.x;
          r28.yz = refProbeConstantsCB[r21.w].data[4].xy + r27.yz;
          r28.xyz = r16.xyz * r19.yyy + r28.xyz;
          r26.w = dot(r28.xyz, r28.xyz);
          r26.w = sqrt(r26.w);
          r19.y = r19.y / r26.w;
          r19.y = r19.y + r19.y;
          r19.y = sqrt(r19.y);
          r19.y = r8.w * 5 + r19.y;
          r19.y = -0.844799995 + r19.y;
          r30.x = refProbeConstantsCB[r21.w].data[0].w;
          r30.y = refProbeConstantsCB[r21.w].data[1].z;
          r30.z = refProbeConstantsCB[r21.w].data[2].y;
          r31.x = dot(r28.xyz, r30.xyz);
          r32.xy = refProbeConstantsCB[r21.w].data[1].xw;
          r32.z = refProbeConstantsCB[r21.w].data[2].z;
          r31.y = dot(r28.xyz, r32.xyz);
          r33.x = refProbeConstantsCB[r21.w].data[1].y;
          r33.yz = refProbeConstantsCB[r21.w].data[2].xw;
          r31.z = dot(r28.xyz, r33.xyz);
          if (9 == 0) r26.w = 0; else if (9+16 < 32) {           r26.w = (uint)refProbeConstantsCB[r21.w].data[7].z << (32-(9 + 16)); r26.w = (uint)r26.w >> (32-9);          } else r26.w = (uint)refProbeConstantsCB[r21.w].data[7].z >> 16;
          r31.w = (uint)r26.w;
          r28.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r31.xyzw, r19.y).xyz;
          r34.x = dot(r27.xyz, r30.xyz);
          r34.y = dot(r27.xyz, r32.xyz);
          r34.z = dot(r27.xyz, r33.xyz);
          r27.xyz = saturate(r34.xyz * refProbeConstantsCB[r21.w].data[3].xyz + float3(0.5,0.5,0.5));
          r34.xy = refProbeConstantsCB[r21.w].data[4].zw * r27.xy;
          r34.z = refProbeConstantsCB[r21.w].data[5].x * r27.z;
          r27.xyz = refProbeConstantsCB[r21.w].data[5].yzw + r34.xyz;
          r31.x = dot(r11.xyz, r30.xyz);
          r31.y = dot(r11.xyz, r32.xyz);
          r31.z = dot(r11.xyz, r33.xyz);
          r29.xzw = cmp(float3(0,0,0) < r31.xyz);
          r18.z = r29.x ? 0 : 0.5;
          r30.xyz = r27.xyz + r18.xyz;
          r30.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r30.xyz, 0).xyz;
          r32.xyz = r31.xyz * r31.xyz;
          r32.xyz = r32.xyz * r17.xxx;
          r20.z = r29.z ? 0 : 0.5;
          r33.xyz = r27.xyz + r20.xyz;
          r33.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r33.xyz, 0).xyz;
          r33.xyz = r33.xyz * r32.yyy;
          r30.xyz = r30.xyz * r32.xxx + r33.xyz;
          r21.z = r29.w ? 0 : 0.5;
          r27.xyz = r27.xyz + r21.xyz;
          r27.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r27.xyz, 0).xyz;
          r27.xyz = r27.xyz * r32.zzz + r30.xyz;
          r29.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r31.xyzw, 6).xyz;
          r30.xyz = r29.xzw * r27.xyz;
          r18.z = dot(r30.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r26.xyz = r27.xyz * r29.xzw + r26.xyz;
          r19.y = r18.z * r12.w;
          r27.xyz = r28.xyz * r17.xxx;
          r17.x = dot(r27.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r17.x = r12.w * r18.z + r17.x;
          r17.x = r19.y / r17.x;
          r25.xyz = r27.xyz * r17.xxx + r25.xyz;
        }
      }
      r24.xyzw = r25.xyzw;
      r15.yzw = r26.xyz;
      r18.w = (int)r18.w + 32;
    }
    r23.xyzw = r24.zxyw;
    r22.xyz = r15.yzw;
    r23.xyzw = r23.yzxw;
  } else {
    r23.x = r22.w;
  }
  r0.x = max(1, r23.w);
  r0.x = rcp(r0.x);
  r23.w = saturate(r23.w);
  r15.yzw = r22.xyz * r0.xxx;
  r17.xyz = r23.xyz * r0.xxx;
  r8.w = cmp(r23.w < 0.99000001);
  if (r8.w != 0) {
    r8.w = 1 + -r23.w;
    r9.w = sunConstants.globalProbeExposure * r8.w;
    r18.xyz = -globalProbeConstants.data[0].xyz + r10.xyz;
    r19.x = globalProbeConstants.data[0].w * r18.x;
    r19.yz = globalProbeConstants.data[1].xy * r18.yz;
    r18.xyz = saturate(float3(0.5,0.5,0.5) + r19.xyz);
    r19.xy = globalProbeConstants.data[1].zw * r18.xy;
    r19.z = globalProbeConstants.data[2].x * r18.z;
    r18.xyz = globalProbeConstants.data[2].yzw + r19.xyz;
    r19.xyz = cmp(float3(0,0,0) < r11.xyz);
    r19.xyz = r19.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r19.w = 0;
    r20.xyz = r19.wwx + r18.xyz;
    r20.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r20.xyz, 0).xyz;
    r21.xyz = r11.xyz * r11.xyz;
    r21.xyz = r21.xyz * r9.www;
    r23.xyz = r19.wwy + r18.xyz;
    r23.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
    r23.xyz = r23.xyz * r21.yyy;
    r20.xyz = r20.xyz * r21.xxx + r23.xyz;
    r18.xyz = r19.wwz + r18.xyz;
    r18.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r18.xyz, 0).xyz;
    r18.xyz = r18.xyz * r21.zzz + r20.xyz;
    r11.w = 0;
    r19.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, 6).xyz;
    r18.xyz = r19.xyz * r18.xyz;
    r9.w = dot(r18.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r15.yzw = r22.xyz * r0.xxx + r18.xyz;
    r16.w = 0;
    r18.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r16.xyzw, r9.y).xyz;
    r0.x = sunConstants.globalProbeExposure * r8.w + -r9.w;
    r0.x = r2.y * r0.x + r9.w;
    r17.xyz = r18.xyz * r0.xxx + r17.xyz;
  }
  r0.x = r4.z * r2.z + r2.x;
  r0.x = log2(abs(r0.x));
  r0.x = r1.w * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r4.z * r2.z + r0.x;
  r0.x = saturate(-1 + r0.x);
  r18.xyz = r15.yzw * r2.www;
  r19.xyz = r0.www ? r18.yzx : 0;
  r2.yz = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r2.yz = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r2.yz, 0).xy;
  r17.xyz = r17.xyz * r0.xxx;
  r20.xyz = r17.xyz * r2.yyy;
  r17.xyz = r17.xyz * r2.zzz;
  r0.x = sqrt(r1.w);
  r0.x = r0.x * 0.5 + 0.5;
  r0.x = r0.x * r0.x;
  r2.y = 0.5 * r0.x;
  r0.x = -r0.x * 0.5 + 1;
  r2.z = r2.x * r0.x + r2.y;
  r0.x = r2.z * r0.x;
  r2.y = r2.y * r2.z;
  r2.z = cmp(0 < r7.w);
  if (r2.z != 0) {
    r2.z = cmp(0 < r9.x);
    if (r2.z != 0) {
      r2.z = sunConstants.specScale * r1.z;
      r2.z = r2.z * r6.w;
      if (sunConstants.sunCookieIndex != 0) {
        r21.xyz = eyeOffset.xyz + r10.xyz;
        r21.w = 1;
        r4.z = dot(sunConstants.sunCookieTransform[0].xyzw, r21.xyzw);
        r8.w = dot(sunConstants.sunCookieTransform[1].xyzw, r21.xyzw);
        r21.x = frac(r4.z);
        r21.y = frac(r8.w);
        r4.z = -1 + (int14)sunConstants.sunCookieIndex;
        r21.z = (uint)r4.z;
        r21.xyz = gCookieArray.SampleLevel(samplerLinear_s, r21.xyz, 0).xyz;
        r21.xyz = float3(-1,-1,-1) + r21.xyz;
        r21.xyz = sunConstants.sunCookieIntensity * r21.xyz + float3(1,1,1);
        r21.xyz = sunConstants.color.xyz * r21.xyz;
      } else {
        r21.xyz = sunConstants.color.xyz;
      }
      r4.z = viewmodelSunShadowRaw >> 16;
      r8.w = cmp(0 < (uint)r4.z);
      r8.w = r8.w ? r9.z : 0;
      if (r8.w != 0) {
        r4.z = (int)r4.z + numLights;
        r4.z = mad((int)r4.z, 15, -15);
        r8.w = abs(r5.w) * -0.200000003 + 0.400000006;
        r9.y = cmp(r5.w < 0);
        r9.y = r0.w ? r9.y : 0;
        r8.w = r9.y ? -r8.w : r8.w;
        r22.xyz = r11.xyz * r8.www + r10.xyz;
        r23.xyz = lightConstantsCB[r4.z].data[4].yzw;
        r23.w = lightConstantsCB[r4.z].data[5].x;
        r22.w = 1;
        r23.x = dot(r23.xyzw, r22.xyzw);
        r24.xyz = lightConstantsCB[r4.z].data[5].yzw;
        r24.w = lightConstantsCB[r4.z].data[6].x;
        r23.y = dot(r24.xyzw, r22.xyzw);
        r9.yw = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r23.x = lightConstantsCB[r4.z].data[9].w + r9.y;
        r23.y = lightConstantsCB[r4.z].data[10].x + r9.w;
        r9.yw = lightConstantsCB[r4.z].data[9].yz * r23.xy;
        r13.zw = lightConstantsCB[r4.z].data[3].yy / lightConstantsCB[r4.z].data[8].yw;
        r23.xy = float2(1,1) + -r13.zw;
        r23.xy = cmp(r9.yw >= r23.xy);
        r13.zw = cmp(r13.zw >= r9.yw);
        r13.zw = (int2)r13.zw | (int2)r23.xy;
        r8.w = (int)r13.w | (int)r13.z;
        if (r8.w == 0) {
          r23.xyz = lightConstantsCB[r4.z].data[6].yzw;
          r23.w = lightConstantsCB[r4.z].data[7].x;
          r8.w = dot(r23.xyzw, r22.xyzw);
          r9.yw = saturate(r9.yw);
          r22.x = r9.y * lightConstantsCB[r4.z].data[8].y + lightConstantsCB[r4.z].data[8].z;
          r22.y = r9.w * lightConstantsCB[r4.z].data[8].w + lightConstantsCB[r4.z].data[9].x;
          r8.w = lightConstantsCB[r4.z].data[10].y + r8.w;
          r8.w = r8.w / lightConstantsCB[r4.z].data[10].z;
          r8.w = max(6.10351563e-05, r8.w);
          r9.y = 0x0000ffff & (int)lightConstantsCB[r4.z].data[1].w;
          if (enableDitheredShadow != 0) {
            r23.x = -r13.x;
            r24.z = (uint)r9.y;
            r23.y = r14.x;
            r23.z = r13.x;
            r9.w = 0;
            r11.w = 0;
            while (true) {
              r12.w = cmp((int)r11.w >= 8);
              if (r12.w != 0) break;
              r25.x = dot(icb[r11.w+0].yx, r23.xy);
              r25.y = dot(icb[r11.w+0].yx, r23.yz);
              r24.xy = r25.xy * lightConstantsCB[r4.z].data[3].yy + r22.xy;
              r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r8.w).x;
              r9.w = r12.w * 0.125 + r9.w;
              r11.w = (int)r11.w + 1;
            }
          } else {
            r22.z = (uint)r9.y;
            r9.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r8.w).x;
          }
          r4.z = r9.w * r9.w;
          r4.z = r4.z * r9.w;
        } else {
          r4.z = 1;
        }
        r9.x = r9.x * r4.z;
      } else {
        r4.z = viewmodelSunShadowRaw & 0x0000ffff;
        r8.w = cmp(0 < (uint)r4.z);
        r9.y = ~(int)r9.z;
        r8.w = r8.w ? r9.y : 0;
        if (r8.w != 0) {
          r4.z = (int)r4.z + numLights;
          r4.z = mad((int)r4.z, 15, -15);
          r8.w = abs(r5.w) * -0.200000003 + 0.400000006;
          r9.y = cmp(r5.w < 0);
          r9.y = r0.w ? r9.y : 0;
          r8.w = r9.y ? -r8.w : r8.w;
          r22.xyz = r11.xyz * r8.www + r10.xyz;
          r23.xyz = lightConstantsCB[r4.z].data[4].yzw;
          r23.w = lightConstantsCB[r4.z].data[5].x;
          r22.w = 1;
          r23.x = dot(r23.xyzw, r22.xyzw);
          r24.xyz = lightConstantsCB[r4.z].data[5].yzw;
          r24.w = lightConstantsCB[r4.z].data[6].x;
          r23.y = dot(r24.xyzw, r22.xyzw);
          r9.yw = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r23.x = lightConstantsCB[r4.z].data[9].w + r9.y;
          r23.y = lightConstantsCB[r4.z].data[10].x + r9.w;
          r9.yw = lightConstantsCB[r4.z].data[9].yz * r23.xy;
          r13.zw = lightConstantsCB[r4.z].data[3].yy / lightConstantsCB[r4.z].data[8].yw;
          r23.xy = float2(1,1) + -r13.zw;
          r23.xy = cmp(r9.yw >= r23.xy);
          r13.zw = cmp(r13.zw >= r9.yw);
          r13.zw = (int2)r13.zw | (int2)r23.xy;
          r8.w = (int)r13.w | (int)r13.z;
          if (r8.w == 0) {
            r23.xyz = lightConstantsCB[r4.z].data[6].yzw;
            r23.w = lightConstantsCB[r4.z].data[7].x;
            r8.w = dot(r23.xyzw, r22.xyzw);
            r9.yw = saturate(r9.yw);
            r22.x = r9.y * lightConstantsCB[r4.z].data[8].y + lightConstantsCB[r4.z].data[8].z;
            r22.y = r9.w * lightConstantsCB[r4.z].data[8].w + lightConstantsCB[r4.z].data[9].x;
            r8.w = lightConstantsCB[r4.z].data[10].y + r8.w;
            r8.w = r8.w / lightConstantsCB[r4.z].data[10].z;
            r8.w = max(6.10351563e-05, r8.w);
            r9.y = 0x0000ffff & (int)lightConstantsCB[r4.z].data[1].w;
            if (enableDitheredShadow != 0) {
              r23.x = -r13.x;
              r24.z = (uint)r9.y;
              r23.y = r14.x;
              r23.z = r13.x;
              r9.w = 0;
              r11.w = 0;
              while (true) {
                r12.w = cmp((int)r11.w >= 8);
                if (r12.w != 0) break;
                r25.x = dot(icb[r11.w+0].yx, r23.xy);
                r25.y = dot(icb[r11.w+0].yx, r23.yz);
                r24.xy = r25.xy * lightConstantsCB[r4.z].data[3].yy + r22.xy;
                r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r8.w).x;
                r9.w = r12.w * 0.125 + r9.w;
                r11.w = (int)r11.w + 1;
              }
            } else {
              r22.z = (uint)r9.y;
              r9.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r8.w).x;
            }
            r4.z = r9.w * r9.w;
            r4.z = r4.z * r9.w;
          } else {
            r4.z = 1;
          }
          r9.x = r9.x * r4.z;
        }
      }
      r4.z = -r2.x * 0.5 + 1;
      r4.z = -r7.w * r4.z + 1;
      r4.z = r4.z * r4.z;
      r4.z = -r4.z * 0.620000005 + 0.620000005;
      r4.z = r4.z + -r7.w;
      r4.z = r1.w * r4.z + r7.w;
      r4.z = r4.z * r9.x;
      r22.xyz = r4.zzz * r21.xyz;
      r5.w = cmp(0 < r5.w);
      r22.xyz = r15.yzw * r2.www + r22.xyz;
      r15.yzw = -r10.xyz * r0.zzz + sunConstants.wldDir.xyz;
      r0.z = dot(r15.yzw, r15.yzw);
      r0.z = rsqrt(r0.z);
      r15.yzw = r15.yzw * r0.zzz;
      r0.z = dot(r15.yzw, r12.xyz);
      r2.w = dot(r11.xyz, r15.yzw);
      r7.w = abs(r2.w) * r1.z + -abs(r2.w);
      r2.w = abs(r2.w) * r7.w + 1;
      r6.w = r6.w * r0.x + r2.y;
      r2.w = r2.w * r2.w;
      r2.w = r2.w * r6.w;
      r2.w = rcp(r2.w);
      r2.z = r2.w * r2.z;
      r2.z = r9.x * r2.z;
      r2.z = 0.25 * r2.z;
      r23.yzw = r2.zzz * r21.xyz + r17.xyz;
      r0.z = saturate(1 + -r0.z);
      r2.w = r0.z * r0.z;
      r2.w = r2.w * r2.w;
      r0.z = r2.w * r0.z;
      r0.z = r2.z * r0.z;
      r9.xyw = r0.zzz * r21.xyz + r20.xyz;
      r15.yzw = r4.zzz * r21.xyz + r19.zxy;
      r21.xyz = r0.www ? r15.zwy : 0;
      r22.w = r19.z;
      r18.w = r21.z;
      r18.xyzw = r5.wwww ? r22.xyzw : r18.xyzw;
      r19.zw = r9.xy;
      r21.zw = r20.xy;
      r21.xyzw = r5.wwww ? r19.xyzw : r21.xyzw;
      r23.x = r9.w;
      r17.w = r20.z;
      r17.xyzw = r5.wwww ? r23.yzwx : r17.xyzw;
      r19.z = r18.w;
      r19.xy = r21.xy;
      r20.xy = r21.zw;
      r20.z = r17.w;
    }
  }
  r0.z = ~(int)r9.z;
  r21.x = -r13.x;
  r2.x = -r2.x * 0.5 + 1;
  r10.w = 1;
  r22.z = 1;
  r23.w = 1;
  r24.w = 1;
  r25.w = 1;
  r21.z = r13.x;
  r26.w = 1;
  r21.yw = r14.xx;
  r13.y = r21.w;
  r14.y = r21.x;
  r14.z = r13.x;
  r27.x = r14.x;
  r27.y = r21.x;
  r27.z = r13.x;
  r28.w = 1;
  r29.x = r14.x;
  r29.y = r21.x;
  r29.z = r13.x;
  r30.x = r14.x;
  r30.y = r21.x;
  r30.z = r13.x;
  r9.xyw = r18.xyz;
  r31.xyz = r19.zxy;
  r32.xyz = r20.xyz;
  r15.yzw = r17.xyz;
  r2.z = enableDitheredShadow;
  r2.w = 0;
  while (true) {
    r4.z = cmp((uint)r2.w >= numLights);
    if (r4.z != 0) break;
    r4.z = (uint)r2.w >> 5;
    r4.z = (int)r0.y + (int)r4.z;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r4.z, r4.z, l(0), t26.xxxx
  r4.z = samp0[]..swiz;
    r33.xyz = r9.xyw;
    r34.xyz = r31.xyz;
    r35.xyz = r32.xyz;
    r36.xyz = r15.yzw;
    r5.w = r2.z;
    r6.w = r4.z;
    while (true) {
      if (r6.w == 0) break;
      r7.w = firstbitlow((uint)r6.w);
      r8.w = 1 << (int)r7.w;
      r8.w = ~(int)r8.w;
      r6.w = (int)r6.w & (int)r8.w;
      r7.w = (int)r2.w + (int)r7.w;
      r7.w = (int)r7.w * 15;
      if (3 == 0) r8.w = 0; else if (3+24 < 32) {       r8.w = (uint)lightConstantsCB[r7.w].data[1].w << (32-(3 + 24)); r8.w = (uint)r8.w >> (32-3);      } else r8.w = (uint)lightConstantsCB[r7.w].data[1].w >> 24;
      r11.w = cmp((int)r8.w == 2);
      if (r11.w != 0) {
        if (3 == 0) r11.w = 0; else if (3+27 < 32) {         r11.w = (uint)lightConstantsCB[r7.w].data[1].w << (32-(3 + 27)); r11.w = (uint)r11.w >> (32-3);        } else r11.w = (uint)lightConstantsCB[r7.w].data[1].w >> 27;
        r37.xy = lightConstantsCB[r7.w].data[3].zw + -r10.xy;
        r37.z = lightConstantsCB[r7.w].data[4].x + -r10.z;
        r12.w = dot(r37.xyz, r37.xyz);
        r12.w = rsqrt(r12.w);
        r38.xyz = r37.xyz * r12.www;
        r13.z = lightConstantsCB[r7.w].data[1].z * r1.z;
        r13.z = 0.25 * r13.z;
        r13.w = dot(r11.xyz, r38.xyz);
        r14.w = saturate(r13.w);
        r16.w = r0.w ? abs(r13.w) : r14.w;
        r17.w = cmp(0 < r16.w);
        if (r17.w != 0) {
          r38.xyz = lightConstantsCB[r7.w].data[7].yzw;
          r38.w = lightConstantsCB[r7.w].data[8].x;
          r17.w = dot(r38.xyzw, r10.xyzw);
          r18.w = cmp(r17.w < 1);
          if (r18.w != 0) {
            r39.xyz = float3(1,1,1);
            r18.w = 0;
          } else {
            r40.xyz = lightConstantsCB[r7.w].data[0].xyz + -r10.xyz;
            r19.w = lightConstantsCB[r7.w].data[3].x * lightConstantsCB[r7.w].data[3].x;
            r20.w = dot(r40.xyz, r40.xyz);
            r19.w = r19.w / r20.w;
            r19.w = min(1, r19.w);
            r40.xy = saturate(r17.ww * lightConstantsCB[r7.w].data[2].xz + lightConstantsCB[r7.w].data[2].yw);
            r40.zw = r40.xy * r40.xy;
            r40.xy = r40.xy * float2(-2,-2) + float2(3,3);
            r40.xy = r40.zw * r40.xy;
            r19.w = r40.x * r19.w;
            r19.w = r19.w * r40.y;
            r40.xyz = lightConstantsCB[r7.w].data[4].yzw;
            r40.w = lightConstantsCB[r7.w].data[5].x;
            r40.x = dot(r40.xyzw, r10.xyzw);
            r41.xyz = lightConstantsCB[r7.w].data[5].yzw;
            r41.w = lightConstantsCB[r7.w].data[6].x;
            r40.y = dot(r41.xyzw, r10.xyzw);
            r22.xy = r40.xy / r17.ww;
            r17.w = cmp(lightConstantsCB[r7.w].data[10].w < 0.00048828125);
            if (r17.w != 0) {
              r40.xy = saturate(abs(r22.xy) * lightConstantsCB[r7.w].data[12].xy + lightConstantsCB[r7.w].data[12].zw);
              r40.zw = r40.xy * r40.xy;
              r40.xy = r40.xy * float2(-2,-2) + float2(3,3);
              r40.xy = r40.zw * r40.xy;
              r17.w = r40.x * r40.y;
            } else {
              r40.xyzw = saturate(lightConstantsCB[r7.w].data[11].xyzw * abs(r22.yyxx));
              r40.xyzw = log2(r40.xyzw);
              r40.xyzw = lightConstantsCB[r7.w].data[12].zzzz * r40.xyzw;
              r40.xyzw = exp2(r40.xyzw);
              r40.xy = r40.xy + r40.zw;
              r40.xy = log2(r40.xy);
              r40.xy = lightConstantsCB[r7.w].data[12].ww * r40.xy;
              r40.xy = exp2(r40.xy);
              r20.w = lightConstantsCB[r7.w].data[12].x * r40.x;
              r22.w = lightConstantsCB[r7.w].data[12].y * r40.y + -1;
              r20.w = lightConstantsCB[r7.w].data[12].y * r40.y + -r20.w;
              r20.w = saturate(r22.w / r20.w);
              r22.w = r20.w * r20.w;
              r20.w = r20.w * -2 + 3;
              r17.w = r22.w * r20.w;
            }
            r18.w = r19.w * r17.w;
            r17.w = 255 & (int)lightConstantsCB[r7.w].data[14].w;
            if (r17.w != 0) {
              r19.w = dot(lightConstantsCB[r7.w].data[13].xyz, r22.xyz);
              r40.x = lightConstantsCB[r7.w].data[13].w;
              r40.yz = lightConstantsCB[r7.w].data[14].xy;
              r20.w = dot(r40.xyz, r22.xyz);
              r40.x = frac(r19.w);
              r40.y = frac(r20.w);
              r17.w = (int)r17.w + -1;
              r40.z = (uint)r17.w;
              r39.xyz = gCookieArray.SampleLevel(samplerLinear_s, r40.xyz, 0).xyz;
            } else {
              r39.xyz = float3(1,1,1);
            }
          }
          r40.x = lightConstantsCB[r7.w].data[0].w;
          r40.yz = lightConstantsCB[r7.w].data[1].xy;
          r22.xyw = r40.xyz * r39.xyz;
          r17.w = cmp(0 < r18.w);
          if (r17.w != 0) {
            r11.w = cmp((int)r11.w != 1);
            if (r11.w != 0) {
              r11.w = abs(r13.w) * -0.200000003 + 0.400000006;
              r17.w = cmp(r13.w < 0);
              r17.w = r0.w ? r17.w : 0;
              r11.w = r17.w ? -r11.w : r11.w;
              r23.xyz = r11.xyz * r11.www + r10.xyz;
              r39.xyz = lightConstantsCB[r7.w].data[6].yzw;
              r39.w = lightConstantsCB[r7.w].data[7].x;
              r11.w = dot(r39.xyzw, r23.xyzw);
              r17.w = dot(r38.xyzw, r23.xyzw);
              r19.w = cmp(r17.w >= r11.w);
              if (r19.w != 0) {
                r38.xyz = lightConstantsCB[r7.w].data[4].yzw;
                r38.w = lightConstantsCB[r7.w].data[5].x;
                r38.x = dot(r38.xyzw, r23.xyzw);
                r39.xyz = lightConstantsCB[r7.w].data[5].yzw;
                r39.w = lightConstantsCB[r7.w].data[6].x;
                r38.y = dot(r39.xyzw, r23.xyzw);
                r23.xy = r38.xy / r17.ww;
                r23.xy = saturate(r23.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                r38.x = r23.x * lightConstantsCB[r7.w].data[8].y + lightConstantsCB[r7.w].data[8].z;
                r38.y = r23.y * lightConstantsCB[r7.w].data[8].w + lightConstantsCB[r7.w].data[9].x;
                r11.w = r11.w / r17.w;
                r11.w = max(6.10351563e-05, r11.w);
                r17.w = 0x0000ffff & (int)lightConstantsCB[r7.w].data[1].w;
                if (r5.w != 0) {
                  r23.z = (uint)r17.w;
                  r19.w = 0;
                  r20.w = 0;
                  while (true) {
                    r27.w = cmp((int)r20.w >= 8);
                    if (r27.w != 0) break;
                    r39.x = dot(icb[r20.w+0].yx, r21.xy);
                    r39.y = dot(icb[r20.w+0].yx, r21.yz);
                    r23.xy = r39.xy * lightConstantsCB[r7.w].data[3].yy + r38.xy;
                    r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r11.w).x;
                    r19.w = r23.x * 0.125 + r19.w;
                    r20.w = (int)r20.w + 1;
                  }
                } else {
                  r38.z = (uint)r17.w;
                  r19.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r38.xyz, r11.w).x;
                }
                r11.w = r19.w * r19.w;
                r11.w = r11.w * r19.w;
              } else {
                r11.w = 1;
              }
            } else {
              r11.w = 1;
            }
            r11.w = r18.w * r11.w;
            r17.w = cmp(0 < r11.w);
            if (r17.w != 0) {
              if (4 == 0) r17.w = 0; else if (4+16 < 32) {               r17.w = (uint)lightConstantsCB[r7.w].data[1].w << (32-(4 + 16)); r17.w = (uint)r17.w >> (32-4);              } else r17.w = (uint)lightConstantsCB[r7.w].data[1].w >> 16;
              r18.w = cmp(0 < (uint)r17.w);
              r18.w = r18.w ? r9.z : 0;
              if (r18.w != 0) {
                r17.w = (int)r17.w + numLights;
                r17.w = mad((int)r17.w, 15, -15);
                r18.w = abs(r13.w) * -0.200000003 + 0.400000006;
                r20.w = cmp(r13.w < 0);
                r20.w = r0.w ? r20.w : 0;
                r18.w = r20.w ? -r18.w : r18.w;
                r24.xyz = r11.xyz * r18.www + r10.xyz;
                r38.xyz = lightConstantsCB[r17.w].data[6].yzw;
                r38.w = lightConstantsCB[r17.w].data[7].x;
                r18.w = dot(r38.xyzw, r24.xyzw);
                r38.xyz = lightConstantsCB[r17.w].data[7].yzw;
                r38.w = lightConstantsCB[r17.w].data[8].x;
                r20.w = dot(r38.xyzw, r24.xyzw);
                r23.x = cmp(r20.w < r18.w);
                if (r23.x == 0) {
                  r38.xyz = lightConstantsCB[r17.w].data[4].yzw;
                  r38.w = lightConstantsCB[r17.w].data[5].x;
                  r38.x = dot(r38.xyzw, r24.xyzw);
                  r39.xyz = lightConstantsCB[r17.w].data[5].yzw;
                  r39.w = lightConstantsCB[r17.w].data[6].x;
                  r38.y = dot(r39.xyzw, r24.xyzw);
                  r23.yz = r38.xy / r20.ww;
                  r23.yz = r23.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                  r24.x = lightConstantsCB[r17.w].data[9].w + r23.y;
                  r24.y = lightConstantsCB[r17.w].data[10].x + r23.z;
                  r23.yz = lightConstantsCB[r17.w].data[9].yz * r24.xy;
                  r24.xy = lightConstantsCB[r17.w].data[3].yy / lightConstantsCB[r17.w].data[8].yw;
                  r38.xy = float2(1,1) + -r24.xy;
                  r38.xy = cmp(r23.yz >= r38.xy);
                  r24.xy = cmp(r24.xy >= r23.yz);
                  r24.xy = (int2)r24.xy | (int2)r38.xy;
                  r24.x = (int)r24.y | (int)r24.x;
                  if (r24.x == 0) {
                    r23.yz = saturate(r23.yz);
                    r38.x = r23.y * lightConstantsCB[r17.w].data[8].y + lightConstantsCB[r17.w].data[8].z;
                    r38.y = r23.z * lightConstantsCB[r17.w].data[8].w + lightConstantsCB[r17.w].data[9].x;
                    r23.y = lightConstantsCB[r17.w].data[10].z * r20.w;
                    r18.w = lightConstantsCB[r17.w].data[10].y * r20.w + r18.w;
                    r18.w = r18.w / r23.y;
                  }
                } else {
                  r24.x = -1;
                }
                r20.w = (int)r23.x | (int)r24.x;
                if (r20.w == 0) {
                  r18.w = max(6.10351563e-05, r18.w);
                  r20.w = 0x0000ffff & (int)lightConstantsCB[r17.w].data[1].w;
                  if (r5.w != 0) {
                    r23.z = (uint)r20.w;
                    r24.xy = float2(0,0);
                    while (true) {
                      r24.z = cmp((int)r24.y >= 8);
                      if (r24.z != 0) break;
                      r39.x = dot(icb[r24.y+0].yx, r21.xw);
                      r39.y = dot(icb[r24.y+0].xy, r13.xy);
                      r23.xy = r39.xy * lightConstantsCB[r17.w].data[3].yy + r38.xy;
                      r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r18.w).x;
                      r24.x = r23.x * 0.125 + r24.x;
                      r24.y = (int)r24.y + 1;
                    }
                  } else {
                    r38.z = (uint)r20.w;
                    r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r38.xyz, r18.w).x;
                  }
                  r17.w = r24.x * r24.x;
                  r17.w = r17.w * r24.x;
                } else {
                  r17.w = 1;
                }
                r11.w = r17.w * r11.w;
              } else {
                if (4 == 0) r17.w = 0; else if (4+20 < 32) {                 r17.w = (uint)lightConstantsCB[r7.w].data[1].w << (32-(4 + 20)); r17.w = (uint)r17.w >> (32-4);                } else r17.w = (uint)lightConstantsCB[r7.w].data[1].w >> 20;
                r18.w = cmp(0 < (uint)r17.w);
                r18.w = r18.w ? r0.z : 0;
                if (r18.w != 0) {
                  r17.w = (int)r17.w + numLights;
                  r17.w = mad((int)r17.w, 15, -15);
                  r18.w = abs(r13.w) * -0.200000003 + 0.400000006;
                  r20.w = cmp(r13.w < 0);
                  r20.w = r0.w ? r20.w : 0;
                  r18.w = r20.w ? -r18.w : r18.w;
                  r25.xyz = r11.xyz * r18.www + r10.xyz;
                  r38.xyz = lightConstantsCB[r17.w].data[6].yzw;
                  r38.w = lightConstantsCB[r17.w].data[7].x;
                  r18.w = dot(r38.xyzw, r25.xyzw);
                  r38.xyz = lightConstantsCB[r17.w].data[7].yzw;
                  r38.w = lightConstantsCB[r17.w].data[8].x;
                  r20.w = dot(r38.xyzw, r25.xyzw);
                  r23.x = cmp(r20.w < r18.w);
                  if (r23.x == 0) {
                    r38.xyz = lightConstantsCB[r17.w].data[4].yzw;
                    r38.w = lightConstantsCB[r17.w].data[5].x;
                    r38.x = dot(r38.xyzw, r25.xyzw);
                    r39.xyz = lightConstantsCB[r17.w].data[5].yzw;
                    r39.w = lightConstantsCB[r17.w].data[6].x;
                    r38.y = dot(r39.xyzw, r25.xyzw);
                    r23.yz = r38.xy / r20.ww;
                    r23.yz = r23.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                    r25.x = lightConstantsCB[r17.w].data[9].w + r23.y;
                    r25.y = lightConstantsCB[r17.w].data[10].x + r23.z;
                    r23.yz = lightConstantsCB[r17.w].data[9].yz * r25.xy;
                    r24.yz = lightConstantsCB[r17.w].data[3].yy / lightConstantsCB[r17.w].data[8].yw;
                    r25.xy = float2(1,1) + -r24.yz;
                    r25.xy = cmp(r23.yz >= r25.xy);
                    r24.yz = cmp(r24.yz >= r23.yz);
                    r24.yz = (int2)r24.yz | (int2)r25.xy;
                    r24.y = (int)r24.z | (int)r24.y;
                    if (r24.y == 0) {
                      r23.yz = saturate(r23.yz);
                      r25.x = r23.y * lightConstantsCB[r17.w].data[8].y + lightConstantsCB[r17.w].data[8].z;
                      r25.y = r23.z * lightConstantsCB[r17.w].data[8].w + lightConstantsCB[r17.w].data[9].x;
                      r23.y = lightConstantsCB[r17.w].data[10].z * r20.w;
                      r18.w = lightConstantsCB[r17.w].data[10].y * r20.w + r18.w;
                      r18.w = r18.w / r23.y;
                    }
                  } else {
                    r24.y = -1;
                  }
                  r20.w = (int)r23.x | (int)r24.y;
                  if (r20.w == 0) {
                    r18.w = max(6.10351563e-05, r18.w);
                    r20.w = 0x0000ffff & (int)lightConstantsCB[r17.w].data[1].w;
                    if (r5.w != 0) {
                      r23.z = (uint)r20.w;
                      r24.yz = float2(0,0);
                      while (true) {
                        r27.w = cmp((int)r24.z >= 8);
                        if (r27.w != 0) break;
                        r38.x = dot(icb[r24.z+0].xy, r27.xy);
                        r38.y = dot(icb[r24.z+0].yx, r27.xz);
                        r23.xy = r38.xy * lightConstantsCB[r17.w].data[3].yy + r25.xy;
                        r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r18.w).x;
                        r24.y = r23.x * 0.125 + r24.y;
                        r24.z = (int)r24.z + 1;
                      }
                    } else {
                      r25.z = (uint)r20.w;
                      r24.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r18.w).x;
                    }
                    r17.w = r24.y * r24.y;
                    r17.w = r17.w * r24.y;
                  } else {
                    r17.w = 1;
                  }
                  r11.w = r17.w * r11.w;
                }
              }
              r17.w = -r16.w * r2.x + 1;
              r17.w = r17.w * r17.w;
              r17.w = -r17.w * 0.620000005 + 0.620000005;
              r17.w = r17.w + -r16.w;
              r16.w = r1.w * r17.w + r16.w;
              r16.w = r16.w * r11.w;
              r13.w = cmp(0 < r13.w);
              r23.xyz = r16.www * r22.xyw + r33.xyz;
              r25.xyz = r37.xyz * r12.www + r12.xyz;
              r12.w = dot(r25.xyz, r25.xyz);
              r12.w = rsqrt(r12.w);
              r25.xyz = r25.xyz * r12.www;
              r12.w = dot(r25.xyz, r12.xyz);
              r17.w = dot(r11.xyz, r25.xyz);
              r18.w = abs(r17.w) * r1.z + -abs(r17.w);
              r17.w = abs(r17.w) * r18.w + 1;
              r18.w = r14.w * r0.x + r2.y;
              r17.w = r17.w * r17.w;
              r17.w = r17.w * r18.w;
              r17.w = rcp(r17.w);
              r13.z = r14.w * r13.z;
              r13.z = r17.w * r13.z;
              r11.w = r13.z * r11.w;
              r25.xyz = r11.www * r22.xyw + r36.xyz;
              r12.w = saturate(1 + -r12.w);
              r13.z = r12.w * r12.w;
              r13.z = r13.z * r13.z;
              r12.w = r13.z * r12.w;
              r11.w = r12.w * r11.w;
              r37.xyz = r11.www * r22.xyw + r35.xyz;
              r22.xyw = r16.www * r22.xyw + r34.xyz;
              r22.xyw = r0.www ? r22.xyw : r34.xyz;
              r33.xyz = r13.www ? r23.xyz : r33.xyz;
              r34.xyz = r13.www ? r34.xyz : r22.xyw;
              r35.xyz = r13.www ? r37.xyz : r35.xyz;
              r36.xyz = r13.www ? r25.xyz : r36.xyz;
            }
          }
        }
      } else {
        r8.w = cmp((int)r8.w == 4);
        if (r8.w != 0) {
          if (3 == 0) r8.w = 0; else if (3+27 < 32) {           r8.w = (uint)lightConstantsCB[r7.w].data[1].w << (32-(3 + 27)); r8.w = (uint)r8.w >> (32-3);          } else r8.w = (uint)lightConstantsCB[r7.w].data[1].w >> 27;
          r11.w = lightConstantsCB[r7.w].data[1].z * r1.z;
          r11.w = 0.25 * r11.w;
          r12.w = cmp(0 < lightConstantsCB[r7.w].data[6].y);
          r23.xy = lightConstantsCB[r7.w].data[5].zw;
          r23.z = lightConstantsCB[r7.w].data[6].x;
          r22.xyw = -r23.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r7.w].data[0].xyz;
          r25.xyz = r22.xyw + -r10.xyz;
          r13.z = dot(r23.xyz, r16.xyz);
          r13.w = dot(r23.xyz, r25.xyz);
          r14.w = dot(r16.xyz, r25.xyz);
          r16.w = -r13.z * r13.z + lightConstantsCB[r7.w].data[6].y;
          r13.z = r13.z * r14.w + -r13.w;
          r13.w = saturate(-r13.w / lightConstantsCB[r7.w].data[6].y);
          r13.z = saturate(r13.z / r16.w);
          r14.w = r16.w / lightConstantsCB[r7.w].data[6].y;
          r14.w = 10 * r14.w;
          r14.w = min(1, r14.w);
          r13.z = r13.z + -r13.w;
          r13.z = r14.w * r13.z + r13.w;
          r25.xyz = r13.zzz * r23.xyz + r22.xyw;
          r22.xyw = r13.www * r23.xyz + r22.xyw;
          r22.xyw = r12.www ? r22.xyw : lightConstantsCB[r7.w].data[0].xyz;
          r23.xyz = r12.www ? r25.xyz : lightConstantsCB[r7.w].data[0].xyz;
          r23.xyz = r23.xyz + -r10.xyz;
          r22.xyw = r22.xyw + -r10.xyz;
          r12.w = dot(r23.xyz, r23.xyz);
          r12.w = rsqrt(r12.w);
          r25.xyz = r23.xyz * r12.www;
          r13.z = dot(r22.xyw, r22.xyw);
          r13.w = rsqrt(r13.z);
          r22.xyw = r22.xyw * r13.www;
          r13.w = dot(r11.xyz, r22.xyw);
          r14.w = saturate(r13.w);
          r14.w = r0.w ? abs(r13.w) : r14.w;
          r16.w = cmp(0 < r14.w);
          if (r16.w != 0) {
            r16.w = sqrt(r13.z);
            r17.w = lightConstantsCB[r7.w].data[3].x * lightConstantsCB[r7.w].data[3].x;
            r13.z = r17.w / r13.z;
            r13.z = min(1, r13.z);
            r22.xy = saturate(r16.ww * lightConstantsCB[r7.w].data[2].xz + lightConstantsCB[r7.w].data[2].yw);
            r37.xy = r22.xy * r22.xy;
            r22.xy = r22.xy * float2(-2,-2) + float2(3,3);
            r22.xy = r37.xy * r22.xy;
            r13.z = r22.x * r13.z;
            r13.z = r13.z * r22.y;
            r16.w = cmp(0 < r13.z);
            if (r16.w != 0) {
              r8.w = cmp((int)r8.w != 1);
              if (r8.w != 0) {
                r8.w = abs(r13.w) * -0.200000003 + 0.400000006;
                r16.w = cmp(r13.w < 0);
                r16.w = r0.w ? r16.w : 0;
                r8.w = r16.w ? -r8.w : r8.w;
                r22.xyw = r11.xyz * r8.www + r10.xyz;
                r22.xyw = -lightConstantsCB[r7.w].data[4].yzw + r22.xyw;
                r8.w = max(abs(r22.y), abs(r22.w));
                r8.w = max(abs(r22.x), r8.w);
                r8.w = lightConstantsCB[r7.w].data[5].x / r8.w;
                r8.w = lightConstantsCB[r7.w].data[5].y + r8.w;
                r16.w = dot(r22.xyw, r22.xyw);
                r16.w = rsqrt(r16.w);
                r8.w = max(6.10351563e-05, r8.w);
                r17.w = 0x0000ffff & (int)lightConstantsCB[r7.w].data[1].w;
                r37.w = (uint)r17.w;
                r17.w = 0;
                r18.w = 0;
                while (true) {
                  r20.w = cmp((int)r18.w >= 8);
                  if (r20.w != 0) break;
                  r38.y = dot(icb[r18.w+0].xy, r14.xy);
                  r38.z = dot(icb[r18.w+0].yx, r14.xz);
                  r38.yz = lightConstantsCB[r7.w].data[3].yy * r38.yz;
                  r38.x = r38.y * r15.x;
                  r38.w = r38.y * r3.x;
                  r37.xyz = r22.xyw * r16.www + r38.xzw;
                  r20.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r37.xyzw, r8.w).x;
                  r17.w = r20.w * 0.125 + r17.w;
                  r18.w = (int)r18.w + 1;
                }
              } else {
                r17.w = 1;
              }
              r8.w = r17.w * r13.z;
              r13.z = cmp(0 < r8.w);
              if (r13.z != 0) {
                if (4 == 0) r13.z = 0; else if (4+16 < 32) {                 r13.z = (uint)lightConstantsCB[r7.w].data[1].w << (32-(4 + 16)); r13.z = (uint)r13.z >> (32-4);                } else r13.z = (uint)lightConstantsCB[r7.w].data[1].w >> 16;
                r16.w = cmp(0 < (uint)r13.z);
                r16.w = r16.w ? r9.z : 0;
                if (r16.w != 0) {
                  r13.z = (int)r13.z + numLights;
                  r13.z = mad((int)r13.z, 15, -15);
                  r16.w = abs(r13.w) * -0.200000003 + 0.400000006;
                  r18.w = cmp(r13.w < 0);
                  r18.w = r0.w ? r18.w : 0;
                  r16.w = r18.w ? -r16.w : r16.w;
                  r26.xyz = r11.xyz * r16.www + r10.xyz;
                  r37.xyz = lightConstantsCB[r13.z].data[6].yzw;
                  r37.w = lightConstantsCB[r13.z].data[7].x;
                  r16.w = dot(r37.xyzw, r26.xyzw);
                  r37.xyz = lightConstantsCB[r13.z].data[7].yzw;
                  r37.w = lightConstantsCB[r13.z].data[8].x;
                  r18.w = dot(r37.xyzw, r26.xyzw);
                  r20.w = cmp(r18.w < r16.w);
                  if (r20.w == 0) {
                    r37.xyz = lightConstantsCB[r13.z].data[4].yzw;
                    r37.w = lightConstantsCB[r13.z].data[5].x;
                    r22.x = dot(r37.xyzw, r26.xyzw);
                    r37.xyz = lightConstantsCB[r13.z].data[5].yzw;
                    r37.w = lightConstantsCB[r13.z].data[6].x;
                    r22.y = dot(r37.xyzw, r26.xyzw);
                    r22.xy = r22.xy / r18.ww;
                    r22.xy = r22.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r26.x = lightConstantsCB[r13.z].data[9].w + r22.x;
                    r26.y = lightConstantsCB[r13.z].data[10].x + r22.y;
                    r22.xy = lightConstantsCB[r13.z].data[9].yz * r26.xy;
                    r26.xy = lightConstantsCB[r13.z].data[3].yy / lightConstantsCB[r13.z].data[8].yw;
                    r37.xy = float2(1,1) + -r26.xy;
                    r37.xy = cmp(r22.xy >= r37.xy);
                    r26.xy = cmp(r26.xy >= r22.xy);
                    r26.xy = (int2)r26.xy | (int2)r37.xy;
                    r22.w = (int)r26.y | (int)r26.x;
                    if (r22.w == 0) {
                      r22.xy = saturate(r22.xy);
                      r26.x = r22.x * lightConstantsCB[r13.z].data[8].y + lightConstantsCB[r13.z].data[8].z;
                      r26.y = r22.y * lightConstantsCB[r13.z].data[8].w + lightConstantsCB[r13.z].data[9].x;
                      r22.x = lightConstantsCB[r13.z].data[10].z * r18.w;
                      r16.w = lightConstantsCB[r13.z].data[10].y * r18.w + r16.w;
                      r16.w = r16.w / r22.x;
                    }
                  } else {
                    r22.w = -1;
                  }
                  r18.w = (int)r20.w | (int)r22.w;
                  if (r18.w == 0) {
                    r16.w = max(6.10351563e-05, r16.w);
                    r18.w = 0x0000ffff & (int)lightConstantsCB[r13.z].data[1].w;
                    if (r5.w != 0) {
                      r37.z = (uint)r18.w;
                      r20.w = 0;
                      r22.x = 0;
                      while (true) {
                        r22.y = cmp((int)r22.x >= 8);
                        if (r22.y != 0) break;
                        r38.x = dot(icb[r22.x+0].xy, r29.xy);
                        r38.y = dot(icb[r22.x+0].yx, r29.xz);
                        r37.xy = r38.xy * lightConstantsCB[r13.z].data[3].yy + r26.xy;
                        r22.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r37.xyz, r16.w).x;
                        r20.w = r22.y * 0.125 + r20.w;
                        r22.x = (int)r22.x + 1;
                      }
                    } else {
                      r26.z = (uint)r18.w;
                      r20.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r16.w).x;
                    }
                    r13.z = r20.w * r20.w;
                    r13.z = r13.z * r20.w;
                  } else {
                    r13.z = 1;
                  }
                  r8.w = r13.z * r8.w;
                } else {
                  if (4 == 0) r13.z = 0; else if (4+20 < 32) {                   r13.z = (uint)lightConstantsCB[r7.w].data[1].w << (32-(4 + 20)); r13.z = (uint)r13.z >> (32-4);                  } else r13.z = (uint)lightConstantsCB[r7.w].data[1].w >> 20;
                  r16.w = cmp(0 < (uint)r13.z);
                  r16.w = r16.w ? r0.z : 0;
                  if (r16.w != 0) {
                    r13.z = (int)r13.z + numLights;
                    r13.z = mad((int)r13.z, 15, -15);
                    r16.w = abs(r13.w) * -0.200000003 + 0.400000006;
                    r18.w = cmp(r13.w < 0);
                    r18.w = r0.w ? r18.w : 0;
                    r16.w = r18.w ? -r16.w : r16.w;
                    r28.xyz = r11.xyz * r16.www + r10.xyz;
                    r37.xyz = lightConstantsCB[r13.z].data[6].yzw;
                    r37.w = lightConstantsCB[r13.z].data[7].x;
                    r16.w = dot(r37.xyzw, r28.xyzw);
                    r37.xyz = lightConstantsCB[r13.z].data[7].yzw;
                    r37.w = lightConstantsCB[r13.z].data[8].x;
                    r18.w = dot(r37.xyzw, r28.xyzw);
                    r22.x = cmp(r18.w < r16.w);
                    if (r22.x == 0) {
                      r37.xyz = lightConstantsCB[r13.z].data[4].yzw;
                      r37.w = lightConstantsCB[r13.z].data[5].x;
                      r26.x = dot(r37.xyzw, r28.xyzw);
                      r37.xyz = lightConstantsCB[r13.z].data[5].yzw;
                      r37.w = lightConstantsCB[r13.z].data[6].x;
                      r26.y = dot(r37.xyzw, r28.xyzw);
                      r22.yw = r26.xy / r18.ww;
                      r22.yw = r22.yw * float2(0.5,-0.5) + float2(0.5,0.5);
                      r26.x = lightConstantsCB[r13.z].data[9].w + r22.y;
                      r26.y = lightConstantsCB[r13.z].data[10].x + r22.w;
                      r22.yw = lightConstantsCB[r13.z].data[9].yz * r26.xy;
                      r26.xy = lightConstantsCB[r13.z].data[3].yy / lightConstantsCB[r13.z].data[8].yw;
                      r28.xy = float2(1,1) + -r26.xy;
                      r28.xy = cmp(r22.yw >= r28.xy);
                      r26.xy = cmp(r26.xy >= r22.yw);
                      r26.xy = (int2)r26.xy | (int2)r28.xy;
                      r24.z = (int)r26.y | (int)r26.x;
                      if (r24.z == 0) {
                        r22.yw = saturate(r22.yw);
                        r26.x = r22.y * lightConstantsCB[r13.z].data[8].y + lightConstantsCB[r13.z].data[8].z;
                        r26.y = r22.w * lightConstantsCB[r13.z].data[8].w + lightConstantsCB[r13.z].data[9].x;
                        r22.y = lightConstantsCB[r13.z].data[10].z * r18.w;
                        r16.w = lightConstantsCB[r13.z].data[10].y * r18.w + r16.w;
                        r16.w = r16.w / r22.y;
                      }
                    } else {
                      r24.z = -1;
                    }
                    r18.w = (int)r22.x | (int)r24.z;
                    if (r18.w == 0) {
                      r16.w = max(6.10351563e-05, r16.w);
                      r18.w = 0x0000ffff & (int)lightConstantsCB[r13.z].data[1].w;
                      if (r5.w != 0) {
                        r28.z = (uint)r18.w;
                        r22.xy = float2(0,0);
                        while (true) {
                          r22.w = cmp((int)r22.y >= 8);
                          if (r22.w != 0) break;
                          r37.x = dot(icb[r22.y+0].xy, r30.xy);
                          r37.y = dot(icb[r22.y+0].yx, r30.xz);
                          r28.xy = r37.xy * lightConstantsCB[r13.z].data[3].yy + r26.xy;
                          r22.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r28.xyz, r16.w).x;
                          r22.x = r22.w * 0.125 + r22.x;
                          r22.y = (int)r22.y + 1;
                        }
                      } else {
                        r26.z = (uint)r18.w;
                        r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r16.w).x;
                      }
                      r13.z = r22.x * r22.x;
                      r13.z = r13.z * r22.x;
                    } else {
                      r13.z = 1;
                    }
                    r8.w = r13.z * r8.w;
                  }
                }
                r13.z = -r14.w * r2.x + 1;
                r13.z = r13.z * r13.z;
                r13.z = -r13.z * 0.620000005 + 0.620000005;
                r13.z = r13.z + -r14.w;
                r13.z = r1.w * r13.z + r14.w;
                r13.z = r13.z * r8.w;
                r26.x = lightConstantsCB[r7.w].data[0].w;
                r26.yz = lightConstantsCB[r7.w].data[1].xy;
                r7.w = cmp(0 < r13.w);
                r28.xyz = r13.zzz * r26.xyz + r33.xyz;
                r13.w = saturate(dot(r11.xyz, r25.xyz));
                r23.xyz = r23.xyz * r12.www + r12.xyz;
                r12.w = dot(r23.xyz, r23.xyz);
                r12.w = rsqrt(r12.w);
                r23.xyz = r23.xyz * r12.www;
                r12.w = dot(r23.xyz, r12.xyz);
                r14.w = dot(r11.xyz, r23.xyz);
                r16.w = abs(r14.w) * r1.z + -abs(r14.w);
                r14.w = abs(r14.w) * r16.w + 1;
                r16.w = r13.w * r0.x + r2.y;
                r14.w = r14.w * r14.w;
                r14.w = r14.w * r16.w;
                r14.w = rcp(r14.w);
                r11.w = r13.w * r11.w;
                r11.w = r14.w * r11.w;
                r8.w = r11.w * r8.w;
                r23.xyz = r8.www * r26.xyz + r36.xyz;
                r11.w = saturate(1 + -r12.w);
                r12.w = r11.w * r11.w;
                r12.w = r12.w * r12.w;
                r11.w = r12.w * r11.w;
                r8.w = r11.w * r8.w;
                r25.xyz = r8.www * r26.xyz + r35.xyz;
                r26.xyz = r13.zzz * r26.xyz + r34.xyz;
                r26.xyz = r0.www ? r26.xyz : r34.xyz;
                r33.xyz = r7.www ? r28.xyz : r33.xyz;
                r34.xyz = r7.www ? r34.xyz : r26.xyz;
                r35.xyz = r7.www ? r25.xyz : r35.xyz;
                r36.xyz = r7.www ? r23.xyz : r36.xyz;
              }
            }
          }
        }
      }
    }
    r9.xyw = r33.xyz;
    r31.xyz = r34.xyz;
    r32.xyz = r35.xyz;
    r15.yzw = r36.xyz;
    r2.w = (int)r2.w + 32;
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
  r0.xyz = r9.xyw * r3.yzw;
  r0.xyz = r31.xyz * r2.xyz + r0.xyz;
  r4.xyz = float3(0.959999979,0.959999979,0.959999979) * r32.xyz;
  r4.xyz = r15.yzw * float3(0.0399999991,0.0399999991,0.0399999991) + r4.xyz;
  r0.xyz = r4.xyz + r0.xyz;
  r4.xyz = float3(1,1,1) + -r2.xyz;
  r4.xyz = r32.xyz * r4.xyz;
  r2.xyz = r15.yzw * r2.xyz + r4.xyz;
  r2.xyz = r9.xyw * r3.yzw + r2.xyz;
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