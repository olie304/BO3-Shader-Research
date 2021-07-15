// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:23:53 2021

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.x = mad(permuteStride, 33, (int)vThreadGroupID.x);
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
  r0.w = cmp(r2.z >= 0.5);
  r3.x = GBufferDepth.Load(r1.xyw).x;
  r3.yzw = GBufferDiffuseColor.Load(r1.xyw).xyz;
  r4.xyzw = GBufferSpecularColorAndOcclusion.Load(r1.xyw).xyzw;
  r5.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r6.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r7.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r8.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyz, int3(0, 0, 0)).xyw;
  r1.zw = (uint2)r1.xy;
  r9.xy = float2(0.5,0.5) + r1.zw;
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
  r0.w = dot(r1.zw, float2(0.0671105608,0.00583714992));
  r0.w = frac(r0.w);
  r0.w = 52.9829178 * r0.w;
  r0.w = frac(r0.w);
  r0.w = r0.w * 6.28318548 + gameTick.w;
  sincos(r0.w, r3.x, r13.x);
  r2.x = saturate(dot(r11.xyz, r12.xyz));
  r0.w = dot(-r12.xyz, r11.xyz);
  r0.w = r0.w + r0.w;
  r14.xyz = r11.xyz * -r0.www + -r12.xyz;
  r0.w = 17 * r2.y;
  r0.w = exp2(r0.w);
  r0.w = 2 + r0.w;
  r0.w = 2 / r0.w;
  r1.z = sqrt(r0.w);
  r2.zw = renderTargetSize.zw * r9.xy;
  r1.w = gSSAOTexture.SampleLevel(samplerLinearClamp_s, r2.zw, 0).x;
  r2.z = r4.z * r1.w;
  r2.w = dot(r11.xyz, sunConstants.wldDir.xyz);
  r5.w = saturate(r2.w);
  r6.w = cmp(0 >= r5.w);
  if (r6.w != 0) {
    r7.w = 0;
  }
  if (r6.w == 0) {
    r9.xyw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * r10.yyy;
    r9.xyw = r10.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r9.xyw;
    r9.xyw = r10.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r9.xyw;
    r9.xyw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r9.xyw;
    r6.w = -sunConstants.splitDepthOffset + r9.w;
    r6.w = -r6.w * 6.10351563e-05 + 1;
    r8.w = saturate(r6.w);
    r8.w = cmp(r6.w == r8.w);
    if (r8.w != 0) {
      r8.w = 0;
      r10.w = 0;
      while (true) {
        r12.w = cmp(r8.w >= 3);
        if (r12.w != 0) break;
        r12.w = (uint)r8.w;
        r13.yz = -sunConstants.splitPinTransform[r12.w].xy + r9.xy;
        r13.y = max(abs(r13.y), abs(r13.z));
        r10.w = sunConstants.splitPinTransform[r12.w].z * r13.y;
        r12.w = cmp(r10.w < 1);
        if (r12.w != 0) {
          break;
        }
        r8.w = 1 + r8.w;
        r10.w = 0;
      }
    } else {
      r8.w = 3;
      r10.w = 0;
    }
    r12.w = cmp(r8.w >= 3);
    if (r12.w != 0) {
      r13.yzw = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r15.xz = rcp(r13.yy);
      r15.y = -r15.z;
      r13.yzw = r9.xyx * r15.xyz + r13.zwz;
      r15.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r13.yzw = max(float3(0,0,0), r13.yzw);
      r13.yzw = min(r13.yzw, r15.xyz);
      r15.xy = sunConstants.sstLightingConstants.coordScale * r13.wz;
      r15.xy = floor(r15.xy);
      r15.y = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r15.y;
      r15.x = r15.y * sunConstants.sstLightingConstants.coordScale + r15.x;
      r15.x = (uint)r15.x;
      r15.x = (int)r15.x + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.y, r15.x, l(0), t23.xxxx
    r15.y = samp0[]..swiz;
      r15.z = (int)r15.y & 0x40000000;
      r15.w = (uint)r15.y << 2;
      if (r15.z == 0) {
        r15.z = (int)r15.y & 0x01ffffff;
        r16.x = (int)r15.z + (int)r15.x;
        r15.x = (uint)r15.y >> 25;
        r15.x = (uint)r15.x;
        r13.yzw = r15.xxx * r13.yzw;
        r13.yzw = frac(r13.yzw);
        r13.yzw = float3(128,128,128) * r13.yzw;
        r13.yzw = (uint3)r13.yzw;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.x, l(0), t23.xxxx
      r16.z = samp0[]..swiz;
        r15.xy = (uint2)r13.wz >> int2(6,6);
        r15.z = (int)r16.z & 0xc0000000;
        r16.w = (int)r16.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.w, r16.w, l(0), t23.xxxx
      r16.w = samp0[]..swiz;
        r15.y = r15.y ? r16.z : r16.w;
        r16.w = (uint)r15.y >> 13;
        r15.x = r15.x ? r16.w : r15.y;
        r15.x = (int)r15.x & 8191;
        r17.x = (int)r15.x + (int)r16.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
      r17.z = samp0[]..swiz;
        r16.y = 0;
        r17.y = 1;
        r17.xyz = r15.zzz ? r16.xyz : r17.xyz;
        r18.yz = r15.zz ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r15.xy = (uint2)r13.wz >> (uint2)r18.yy;
        r15.xy = (int2)r15.xy & int2(1,1);
        r16.w = (int)r17.z & 0xc0000000;
        r17.w = (int)r17.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.w, l(0), t23.xxxx
      r17.w = samp0[]..swiz;
        r15.y = r15.y ? r17.z : r17.w;
        r17.w = (uint)r15.y >> 13;
        r15.x = r15.x ? r17.w : r15.y;
        r15.x = (int)r15.x & 8191;
        r18.x = (int)r15.x + (int)r17.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.x, l(0), t23.xxxx
      r18.w = samp0[]..swiz;
        r17.xyz = r16.www ? r17.xyz : r18.xzw;
        r15.xyz = r15.zzz ? r16.xyz : r17.xyz;
        r16.x = (int)r15.z & 0xc0000000;
        if (r16.x == 0) {
          r16.x = (int)-r15.y + 6;
          r16.xy = (uint2)r13.wz >> (uint2)r16.xx;
          r16.z = (int)r15.z | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r16.y = (((uint)r16.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r16.x = (((uint)r16.x << 0) & bitmask.x) | ((uint)r16.y & ~bitmask.x);
          r16.x = (int)r16.x * 10;
          r16.x = (uint)r16.z >> (uint)r16.x;
          r16.x = (int)r16.x & 1023;
          r16.x = (int)r15.x + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.w, r16.x, l(0), t23.xxxx
        r16.w = samp0[]..swiz;
          r16.yz = (int2)r15.yy + int2(1,2);
          r15.y = (int)-r16.y + 6;
          r17.xy = (uint2)r13.wz >> (uint2)r15.yy;
          r15.y = (int)r16.w & 0xc0000000;
          r17.z = (int)r16.w | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r17.y = (((uint)r17.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r17.x = (((uint)r17.x << 0) & bitmask.x) | ((uint)r17.y & ~bitmask.x);
          r17.x = (int)r17.x * 10;
          r17.x = (uint)r17.z >> (uint)r17.x;
          r17.x = (int)r17.x & 1023;
          r17.x = (int)r16.x + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
        r17.z = samp0[]..swiz;
          r17.y = r16.z;
          r17.xyz = r15.yyy ? r16.xyw : r17.xyz;
          r16.y = (int)-r17.y + 6;
          r16.yz = (uint2)r13.wz >> (uint2)r16.yy;
          r17.y = (int)r17.z & 0xc0000000;
          r17.w = (int)r17.z | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r16.z = (((uint)r16.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r16.y = (((uint)r16.y << 0) & bitmask.y) | ((uint)r16.z & ~bitmask.y);
          r16.y = (int)r16.y * 10;
          r16.y = (uint)r17.w >> (uint)r16.y;
          r16.y = (int)r16.y & 1023;
          r18.x = (int)r16.y + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.y, r18.x, l(0), t23.xxxx
        r18.y = samp0[]..swiz;
          r16.yz = r17.yy ? r17.xz : r18.xy;
          r15.xz = r15.yy ? r16.xw : r16.yz;
        }
        r15.y = (int)r15.z & 0xc0000000;
        if (r15.y == 0) {
          if (14 == 0) r16.x = 0; else if (14+15 < 32) {           r16.x = (uint)r15.z << (32-(14 + 15)); r16.x = (uint)r16.x >> (32-14);          } else r16.x = (uint)r15.z >> 15;
          r16.x = (uint)r16.x;
          r16.x = sunConstants.sstLightingConstants.constants.spanInInches * r16.x;
          r16.yz = (int2)r15.zz & int2(32767,536870912);
          r16.y = (uint)r16.y;
          r16.y = sunConstants.sstLightingConstants.constants.spanInInches * r16.y;
          r16.xy = float2(6.10388815e-05,3.05185094e-05) * r16.xy;
          r16.w = (int)r13.z & 3;
          r16.w = (int)r15.x + (int)r16.w;
          r16.w = (int)r16.w + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.w, r16.w, l(0), t23.xxxx
        r16.w = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r17.x = (((uint)r13.y << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r17.y = (((uint)r13.z << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r17.z = (((uint)r13.w << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r13.y = (uint)r16.w >> (uint)r17.x;
          r13.y = (int)r13.y & 255;
          r13.y = (uint)r13.y;
          r13.y = r13.y * r16.y;
          r13.y = r13.y * 0.00392156886 + r16.x;
          r13.z = (int)r17.y + 1;
          if (1 == 0) r13.w = 0; else if (1+1 < 32) {           r13.w = (uint)r13.w << (32-(1 + 1)); r13.w = (uint)r13.w >> (32-1);          } else r13.w = (uint)r13.w >> 1;
          r13.z = (int)r13.w + (int)r13.z;
          r13.z = (int)r13.z + (int)r15.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.z, r13.z, l(0), t23.xxxx
        r13.z = samp0[]..swiz;
          r13.z = (uint)r13.z >> (uint)r17.z;
          r13.z = (int)r13.z & 0x0000ffff;
          r13.z = (uint)r13.z;
          r13.z = r13.z * r16.y;
          r13.z = r13.z * 1.52590219e-05 + r16.x;
          r15.w = r16.z ? r13.y : r13.z;
        } else {
          r13.y = (int)r15.z & 0x80000000;
          r13.z = (int)r15.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.z, r13.z, l(0), t23.xxxx
        r13.z = samp0[]..swiz;
          r13.y = r13.y ? r13.z : 0;
          r13.z = (uint)r15.z << 2;
          r13.w = (uint)r13.y >> 16;
          r13.y = (int)r13.y & 0x0000ffff;
          r13.yw = f16tof32(r13.yw);
          r13.z = r9.x * r13.w + r13.z;
          r13.y = r9.y * r13.y + r13.z;
          r15.w = r15.y ? r13.y : r15.w;
        }
      }
      r9.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r9.w;
      r9.w = cmp(r15.w < r9.w);
      r7.w = r9.w ? 0 : 1;
    }
    if (r12.w == 0) {
      if (enableDitheredShadow == 0) {
        r9.w = (uint)r8.w;
        r13.yz = -sunConstants.splitPinTransform[r9.w].xy + r9.xy;
        r13.yz = sunConstants.splitPinTransform[r9.w].zz * r13.yz;
        r15.xy = r13.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r9.w = (int16)sunConstants.splitArrayOffset;
        r15.z = r9.w + r8.w;
        r9.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r6.w).x;
        r12.w = gTransShadowmapArray.SampleLevel(samp0_s, r15.xyz, 0).x;
        r9.w = r12.w + r9.w;
        r9.w = saturate(-1 + r9.w);
        r12.w = r9.w * r9.w;
        r7.w = r12.w * r9.w;
      }
      if (enableDitheredShadow != 0) {
        r15.x = -r3.x;
        r9.w = (uint)r8.w;
        r8.w = 1 + r8.w;
        r8.w = min(2, r8.w);
        r8.w = (uint)r8.w;
        r10.w = 1 + -r10.w;
        r10.w = 28 * r10.w;
        r10.w = (uint)r10.w;
        r13.yz = -sunConstants.splitPinTransform[r9.w].xy + r9.xy;
        r13.yz = sunConstants.splitPinTransform[r9.w].zz * r13.yz;
        r13.yz = r13.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r9.xy = -sunConstants.splitPinTransform[r8.w].xy + r9.xy;
        r9.xy = sunConstants.splitPinTransform[r8.w].zz * r9.xy;
        r9.xy = r9.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r15.y = r13.x;
        r15.z = r3.x;
        r12.w = 0;
        r13.w = 0;
        while (true) {
          r15.w = cmp((uint)r13.w >= 8);
          if (r15.w != 0) break;
          r15.w = cmp((uint)r10.w < (uint)r13.w);
          r16.xy = r15.ww ? r9.xy : r13.yz;
          r16.z = r15.w ? sunConstants.splitPinTransform[r8.w].w : sunConstants.splitPinTransform[r9.w].w;
          r15.w = r15.w ? r8.w : r9.w;
          r17.x = dot(icb[r13.w+0].yx, r15.xy);
          r17.y = dot(icb[r13.w+0].yx, r15.yz);
          r16.xy = r17.xy * r16.zz + r16.xy;
          r15.w = (int)r15.w + (int16)sunConstants.splitArrayOffset;
          r16.z = (uint)r15.w;
          r15.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r6.w).x;
          r16.x = gTransShadowmapArray.SampleLevel(samp0_s, r16.xyz, 0).x;
          r15.w = r16.x + r15.w;
          r15.w = saturate(-1 + r15.w);
          r12.w = r15.w * 0.125 + r12.w;
          r13.w = (int)r13.w + 1;
        }
        r6.w = r12.w * r12.w;
        r7.w = r6.w * r12.w;
      }
    }
  }
  r6.w = 1 + -r2.y;
  r8.w = 5 * r6.w;
  r9.x = r6.w * 5 + -2.5;
  r9.x = 0.400000006 * r9.x;
  r9.x = max(0, r9.x);
  r9.yw = -r6.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r9.y = exp2(r9.y);
  r9.y = r9.y * r2.x;
  r10.w = r8.w * r6.w;
  r9.w = -r10.w * 2.0159049 + r9.w;
  r9.w = exp2(r9.w);
  r9.w = r9.w * r2.x;
  r9.xyw = float3(100,9.1368103,9.70808983) * r9.xyw;
  r9.y = max(r9.y, r9.w);
  r9.y = max(1.26815999, r9.y);
  r9.w = numRefProbes + -numOverrideProbes;
  r10.w = (uint)renderTargetSize.x;
  r10.w = (int)r10.w + 7;
  r10.w = (uint)r10.w >> 3;
  r0.x = mad((int)r0.y, (int)r10.w, (int)r0.x);
  bitmask.x = ((~(-1 << 27)) << 5) & 0xffffffff;  r0.x = (((uint)r0.x << 5) & bitmask.x) | ((uint)16 & ~bitmask.x);
  r0.y = (int)r9.w & -32;
  r10.w = (int)-r0.y + (int)r9.w;
  r12.w = numRefProbes & -32;
  r13.y = (int)-r12.w + numRefProbes;
  r15.yz = float2(0,1);
  r16.xy = float2(0,0);
  r17.x = 1;
  r18.xy = float2(0,0);
  r19.xy = float2(0,0);
  r20.xyzw = float4(0,0,0,0);
  r21.yzw = float3(0,0,0);
  r13.z = r0.y;
  while (true) {
    r13.w = cmp((uint)r13.z >= numRefProbes);
    if (r13.w != 0) break;
    r13.w = (uint)r13.z >> 5;
    r13.w = (int)r0.x + (int)r13.w;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.w, r13.w, l(0), t26.xxxx
  r13.w = samp0[]..swiz;
    r15.w = cmp((int)r0.y == (int)r13.z);
    bitmask.w = ((~(-1 << r10.w)) << 0) & 0xffffffff;  r16.w = (((uint)0 << 0) & bitmask.w) | ((uint)r13.w & ~bitmask.w);
    r13.w = r15.w ? r16.w : r13.w;
    r15.w = cmp((int)r12.w == (int)r13.z);
    if (r13.y == 0) r16.w = 0; else if (r13.y+0 < 32) {     r16.w = (uint)r13.w << (32-(r13.y + 0)); r16.w = (uint)r16.w >> (32-r13.y);    } else r16.w = (uint)r13.w >> 0;
    r13.w = r15.w ? r16.w : r13.w;
    r22.xyzw = r20.xyzw;
    r23.xyz = r21.yzw;
    r15.w = r13.w;
    while (true) {
      if (r15.w == 0) break;
      r16.w = firstbitlow((uint)r15.w);
      r17.z = 1 << (int)r16.w;
      r17.z = ~(int)r17.z;
      r15.w = (int)r15.w & (int)r17.z;
      r16.w = (int)r13.z + (int)r16.w;
      r16.w = (int)r16.w * 14;
      r24.xyz = -refProbeConstantsCB[r16.w].data[0].xyz + r10.xyz;
      r17.z = 0x0000ffff & (int)refProbeConstantsCB[r16.w].data[7].z;
      if (6 == 0) r17.w = 0; else if (6+25 < 32) {       r17.w = (uint)refProbeConstantsCB[r16.w].data[7].z << (32-(6 + 25)); r17.w = (uint)r17.w >> (32-6);      } else r17.w = (uint)refProbeConstantsCB[r16.w].data[7].z >> 25;
      r18.w = (int)r17.z * 6;
      r19.w = dot(refProbeAttenuationConstantsCB[r18.w].data[0].xyz, r24.xyz);
      r19.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[0].w + r19.w);
      r24.w = dot(refProbeAttenuationConstantsCB[r18.w].data[1].xyz, r24.xyz);
      r24.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[1].w + r24.w);
      r19.w = r24.w * r19.w;
      r24.w = dot(refProbeAttenuationConstantsCB[r18.w].data[2].xyz, r24.xyz);
      r24.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[2].w + r24.w);
      r19.w = r24.w * r19.w;
      r24.w = dot(refProbeAttenuationConstantsCB[r18.w].data[3].xyz, r24.xyz);
      r24.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[3].w + r24.w);
      r19.w = r24.w * r19.w;
      r24.w = dot(refProbeAttenuationConstantsCB[r18.w].data[4].xyz, r24.xyz);
      r24.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[4].w + r24.w);
      r19.w = r24.w * r19.w;
      r24.w = dot(refProbeAttenuationConstantsCB[r18.w].data[5].xyz, r24.xyz);
      r18.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[5].w + r24.w);
      r15.x = r19.w * r18.w;
      r18.w = 1 & (int)refProbeConstantsCB[r16.w].data[6].x;
      r25.xy = r18.ww ? r15.xy : r15.zx;
      r15.x = refProbeConstantsCB[r16.w].data[6].x;
      r26.xy = r25.xy;
      r18.w = 1;
      while (true) {
        r19.w = cmp((int)r18.w >= (int)r17.w);
        if (r19.w != 0) break;
        r19.w = (int)r17.z + (int)r18.w;
        r19.w = (int)r19.w * 6;
        r24.w = dot(refProbeAttenuationConstantsCB[r19.w].data[0].xyz, r24.xyz);
        r24.w = saturate(refProbeAttenuationConstantsCB[r19.w].data[0].w + r24.w);
        r24.w = r26.x * r24.w;
        r25.z = dot(refProbeAttenuationConstantsCB[r19.w].data[1].xyz, r24.xyz);
        r25.z = saturate(refProbeAttenuationConstantsCB[r19.w].data[1].w + r25.z);
        r24.w = r25.z * r24.w;
        r25.z = dot(refProbeAttenuationConstantsCB[r19.w].data[2].xyz, r24.xyz);
        r25.z = saturate(refProbeAttenuationConstantsCB[r19.w].data[2].w + r25.z);
        r24.w = r25.z * r24.w;
        r25.z = dot(refProbeAttenuationConstantsCB[r19.w].data[3].xyz, r24.xyz);
        r25.z = saturate(refProbeAttenuationConstantsCB[r19.w].data[3].w + r25.z);
        r24.w = r25.z * r24.w;
        r25.z = dot(refProbeAttenuationConstantsCB[r19.w].data[4].xyz, r24.xyz);
        r25.z = saturate(refProbeAttenuationConstantsCB[r19.w].data[4].w + r25.z);
        r24.w = r25.z * r24.w;
        r25.z = dot(refProbeAttenuationConstantsCB[r19.w].data[5].xyz, r24.xyz);
        r19.w = saturate(refProbeAttenuationConstantsCB[r19.w].data[5].w + r25.z);
        r26.x = r24.w * r19.w;
        r25.z = (uint)r15.x >> 2;
        if (1 == 0) r25.w = 0; else if (1+2 < 32) {         r25.w = (uint)r15.x << (32-(1 + 2)); r25.w = (uint)r25.w >> (32-1);        } else r25.w = (uint)r15.x >> 2;
        r26.z = (int)r25.z & 2;
        r26.w = max(r26.y, r26.x);
        r19.w = -r24.w * r19.w + 1;
        r19.w = r26.y * r19.w;
        r17.y = r26.z ? r19.w : r26.w;
        r26.xy = r25.ww ? r26.xy : r17.xy;
        r18.w = (int)r18.w + 1;
        r15.x = r25.z;
      }
      r26.y = saturate(r26.y);
      r15.x = refProbeConstantsCB[r16.w].data[6].y * r26.y;
      r17.y = cmp(0 < r15.x);
      if (r17.y != 0) {
        r23.z = r26.y * refProbeConstantsCB[r16.w].data[6].y + r23.z;
        r15.x = refProbeConstantsCB[r16.w].data[7].y * r15.x;
        r25.x = refProbeConstantsCB[r16.w].data[7].w;
        r25.yz = refProbeConstantsCB[r16.w].data[8].xy;
        r17.y = dot(r14.xyz, r25.xyz);
        r17.z = dot(r24.xyz, r25.xyz);
        r17.z = -refProbeConstantsCB[r16.w].data[8].z + r17.z;
        r17.w = cmp(r17.z >= 0);
        r17.z = max(abs(r17.z), r9.x);
        r17.z = r17.w ? r17.z : -r17.z;
        r17.y = max(1.00000001e-07, -r17.y);
        r17.y = r17.z / r17.y;
        r17.y = min(131072, abs(r17.y));
        r25.x = refProbeConstantsCB[r16.w].data[8].w;
        r25.yz = refProbeConstantsCB[r16.w].data[9].xy;
        r17.z = dot(r14.xyz, r25.xyz);
        r17.w = dot(r24.xyz, r25.xyz);
        r17.w = -refProbeConstantsCB[r16.w].data[9].z + r17.w;
        r18.w = cmp(r17.w >= 0);
        r17.w = max(abs(r17.w), r9.x);
        r17.w = r18.w ? r17.w : -r17.w;
        r17.z = max(1.00000001e-07, -r17.z);
        r17.z = r17.w / r17.z;
        r17.y = min(r17.y, abs(r17.z));
        r25.x = refProbeConstantsCB[r16.w].data[9].w;
        r25.yz = refProbeConstantsCB[r16.w].data[10].xy;
        r17.z = dot(r14.xyz, r25.xyz);
        r17.w = dot(r24.xyz, r25.xyz);
        r17.w = -refProbeConstantsCB[r16.w].data[10].z + r17.w;
        r18.w = cmp(r17.w >= 0);
        r17.w = max(abs(r17.w), r9.x);
        r17.w = r18.w ? r17.w : -r17.w;
        r17.z = max(1.00000001e-07, -r17.z);
        r17.z = r17.w / r17.z;
        r17.y = min(r17.y, abs(r17.z));
        r25.x = refProbeConstantsCB[r16.w].data[10].w;
        r25.yz = refProbeConstantsCB[r16.w].data[11].xy;
        r17.z = dot(r14.xyz, r25.xyz);
        r17.w = dot(r24.xyz, r25.xyz);
        r17.w = -refProbeConstantsCB[r16.w].data[11].z + r17.w;
        r18.w = cmp(r17.w >= 0);
        r17.w = max(abs(r17.w), r9.x);
        r17.w = r18.w ? r17.w : -r17.w;
        r17.z = max(1.00000001e-07, -r17.z);
        r17.z = r17.w / r17.z;
        r17.y = min(r17.y, abs(r17.z));
        r25.x = refProbeConstantsCB[r16.w].data[11].w;
        r25.yz = refProbeConstantsCB[r16.w].data[12].xy;
        r17.z = dot(r14.xyz, r25.xyz);
        r17.w = dot(r24.xyz, r25.xyz);
        r17.w = -refProbeConstantsCB[r16.w].data[12].z + r17.w;
        r18.w = cmp(r17.w >= 0);
        r17.w = max(abs(r17.w), r9.x);
        r17.w = r18.w ? r17.w : -r17.w;
        r17.z = max(1.00000001e-07, -r17.z);
        r17.z = r17.w / r17.z;
        r17.y = min(r17.y, abs(r17.z));
        r25.x = refProbeConstantsCB[r16.w].data[12].w;
        r25.yz = refProbeConstantsCB[r16.w].data[13].xy;
        r17.z = dot(r14.xyz, r25.xyz);
        r17.w = dot(r24.xyz, r25.xyz);
        r17.w = -refProbeConstantsCB[r16.w].data[13].z + r17.w;
        r18.w = cmp(r17.w >= 0);
        r17.w = max(abs(r17.w), r9.x);
        r17.w = r18.w ? r17.w : -r17.w;
        r17.z = max(1.00000001e-07, -r17.z);
        r17.z = r17.w / r17.z;
        r17.y = min(r17.y, abs(r17.z));
        r25.x = refProbeConstantsCB[r16.w].data[3].w + r24.x;
        r25.yz = refProbeConstantsCB[r16.w].data[4].xy + r24.yz;
        r25.xyz = r14.xyz * r17.yyy + r25.xyz;
        r17.z = dot(r25.xyz, r25.xyz);
        r17.z = sqrt(r17.z);
        r17.y = r17.y / r17.z;
        r17.y = r17.y + r17.y;
        r17.y = sqrt(r17.y);
        r17.y = r6.w * 5 + r17.y;
        r17.y = -0.844799995 + r17.y;
        r27.x = refProbeConstantsCB[r16.w].data[0].w;
        r27.y = refProbeConstantsCB[r16.w].data[1].z;
        r27.z = refProbeConstantsCB[r16.w].data[2].y;
        r28.x = dot(r25.xyz, r27.xyz);
        r29.xy = refProbeConstantsCB[r16.w].data[1].xw;
        r29.z = refProbeConstantsCB[r16.w].data[2].z;
        r28.y = dot(r25.xyz, r29.xyz);
        r30.x = refProbeConstantsCB[r16.w].data[1].y;
        r30.yz = refProbeConstantsCB[r16.w].data[2].xw;
        r28.z = dot(r25.xyz, r30.xyz);
        if (9 == 0) r17.z = 0; else if (9+16 < 32) {         r17.z = (uint)refProbeConstantsCB[r16.w].data[7].z << (32-(9 + 16)); r17.z = (uint)r17.z >> (32-9);        } else r17.z = (uint)refProbeConstantsCB[r16.w].data[7].z >> 16;
        r28.w = (uint)r17.z;
        r17.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r28.xyzw, r17.y).xyz;
        r25.x = dot(r24.xyz, r27.xyz);
        r25.y = dot(r24.xyz, r29.xyz);
        r25.z = dot(r24.xyz, r30.xyz);
        r24.xyz = saturate(r25.xyz * refProbeConstantsCB[r16.w].data[3].xyz + float3(0.5,0.5,0.5));
        r25.xy = refProbeConstantsCB[r16.w].data[4].zw * r24.xy;
        r25.z = refProbeConstantsCB[r16.w].data[5].x * r24.z;
        r24.xyz = refProbeConstantsCB[r16.w].data[5].yzw + r25.xyz;
        r28.x = dot(r11.xyz, r27.xyz);
        r28.y = dot(r11.xyz, r29.xyz);
        r28.z = dot(r11.xyz, r30.xyz);
        r25.xyz = cmp(float3(0,0,0) < r28.xyz);
        r16.z = r25.x ? 0 : 0.5;
        r26.xzw = r24.xyz + r16.xyz;
        r26.xzw = gProbeXArray.SampleLevel(samplerLinearClamp_s, r26.xzw, 0).xyz;
        r27.xyz = r28.xyz * r28.xyz;
        r27.xyz = r27.xyz * r15.xxx;
        r18.z = r25.y ? 0 : 0.5;
        r25.xyw = r24.xyz + r18.xyz;
        r25.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r25.xyw, 0).xyz;
        r25.xyw = r25.xyw * r27.yyy;
        r25.xyw = r26.xzw * r27.xxx + r25.xyw;
        r19.z = r25.z ? 0 : 0.5;
        r24.xyz = r24.xyz + r19.xyz;
        r24.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r24.xyz, 0).xyz;
        r24.xyz = r24.xyz * r27.zzz + r25.xyw;
        r25.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r28.xyzw, 6).xyz;
        r26.xzw = r25.xyz * r24.xyz;
        r16.z = dot(r26.xzw, float3(0.212599993,0.715200007,0.0722000003));
        r22.xyz = r24.xyz * r25.xyz + r22.xyz;
        r16.w = r16.z * r9.y;
        r17.yzw = r17.yzw * r15.xxx;
        r15.x = dot(r17.yzw, float3(0.212599993,0.715200007,0.0722000003));
        r15.x = r9.y * r16.z + r15.x;
        r15.x = r16.w / r15.x;
        r24.x = r22.w;
        r24.yz = r23.xy;
        r23.xyw = r17.zwy * r15.xxx + r24.yzx;
        r22.w = r23.w;
      }
    }
    r20.xyzw = r22.xyzw;
    r21.yzw = r23.xyz;
    r13.z = (int)r13.z + 32;
  }
  r12.w = cmp(r21.w < 1);
  if (r12.w != 0) {
    r15.yz = float2(0,1);
    r16.xy = float2(0,0);
    r17.x = 1;
    r18.xy = float2(0,0);
    r19.xy = float2(0,0);
    r22.x = r20.w;
    r22.yzw = r21.yzw;
    r13.yzw = r20.xyz;
    r12.w = r21.w;
    r15.w = 0;
    while (true) {
      r16.w = cmp((uint)r15.w >= (uint)r9.w);
      if (r16.w != 0) break;
      r16.w = (uint)r15.w >> 5;
      r16.w = (int)r0.x + (int)r16.w;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.w, r16.w, l(0), t26.xxxx
    r16.w = samp0[]..swiz;
      r17.z = cmp((int)r0.y == (int)r15.w);
      if (r10.w == 0) r17.w = 0; else if (r10.w+0 < 32) {       r17.w = (uint)r16.w << (32-(r10.w + 0)); r17.w = (uint)r17.w >> (32-r10.w);      } else r17.w = (uint)r16.w >> 0;
      r16.w = r17.z ? r17.w : r16.w;
      r23.xyzw = r22.xyzw;
      r24.xyz = r13.yzw;
      r17.z = r12.w;
      r17.w = r16.w;
      while (true) {
        if (r17.w == 0) break;
        r18.w = firstbitlow((uint)r17.w);
        r19.w = 1 << (int)r18.w;
        r19.w = ~(int)r19.w;
        r17.w = (int)r17.w & (int)r19.w;
        r18.w = (int)r15.w + (int)r18.w;
        r18.w = (int)r18.w * 14;
        r25.xyz = -refProbeConstantsCB[r18.w].data[0].xyz + r10.xyz;
        r19.w = 0x0000ffff & (int)refProbeConstantsCB[r18.w].data[7].z;
        if (6 == 0) r24.w = 0; else if (6+25 < 32) {         r24.w = (uint)refProbeConstantsCB[r18.w].data[7].z << (32-(6 + 25)); r24.w = (uint)r24.w >> (32-6);        } else r24.w = (uint)refProbeConstantsCB[r18.w].data[7].z >> 25;
        r25.w = (int)r19.w * 6;
        r26.x = dot(refProbeAttenuationConstantsCB[r25.w].data[0].xyz, r25.xyz);
        r26.x = saturate(refProbeAttenuationConstantsCB[r25.w].data[0].w + r26.x);
        r26.y = dot(refProbeAttenuationConstantsCB[r25.w].data[1].xyz, r25.xyz);
        r26.y = saturate(refProbeAttenuationConstantsCB[r25.w].data[1].w + r26.y);
        r26.x = r26.x * r26.y;
        r26.y = dot(refProbeAttenuationConstantsCB[r25.w].data[2].xyz, r25.xyz);
        r26.y = saturate(refProbeAttenuationConstantsCB[r25.w].data[2].w + r26.y);
        r26.x = r26.x * r26.y;
        r26.y = dot(refProbeAttenuationConstantsCB[r25.w].data[3].xyz, r25.xyz);
        r26.y = saturate(refProbeAttenuationConstantsCB[r25.w].data[3].w + r26.y);
        r26.x = r26.x * r26.y;
        r26.y = dot(refProbeAttenuationConstantsCB[r25.w].data[4].xyz, r25.xyz);
        r26.y = saturate(refProbeAttenuationConstantsCB[r25.w].data[4].w + r26.y);
        r26.x = r26.x * r26.y;
        r26.y = dot(refProbeAttenuationConstantsCB[r25.w].data[5].xyz, r25.xyz);
        r25.w = saturate(refProbeAttenuationConstantsCB[r25.w].data[5].w + r26.y);
        r15.x = r26.x * r25.w;
        r25.w = 1 & (int)refProbeConstantsCB[r18.w].data[6].x;
        r26.xy = r25.ww ? r15.xy : r15.zx;
        r15.x = refProbeConstantsCB[r18.w].data[6].x;
        r27.xy = r26.xy;
        r25.w = 1;
        while (true) {
          r26.z = cmp((int)r25.w >= (int)r24.w);
          if (r26.z != 0) break;
          r26.z = (int)r19.w + (int)r25.w;
          r26.z = (int)r26.z * 6;
          r26.w = dot(refProbeAttenuationConstantsCB[r26.z].data[0].xyz, r25.xyz);
          r26.w = saturate(refProbeAttenuationConstantsCB[r26.z].data[0].w + r26.w);
          r26.w = r27.x * r26.w;
          r27.z = dot(refProbeAttenuationConstantsCB[r26.z].data[1].xyz, r25.xyz);
          r27.z = saturate(refProbeAttenuationConstantsCB[r26.z].data[1].w + r27.z);
          r26.w = r27.z * r26.w;
          r27.z = dot(refProbeAttenuationConstantsCB[r26.z].data[2].xyz, r25.xyz);
          r27.z = saturate(refProbeAttenuationConstantsCB[r26.z].data[2].w + r27.z);
          r26.w = r27.z * r26.w;
          r27.z = dot(refProbeAttenuationConstantsCB[r26.z].data[3].xyz, r25.xyz);
          r27.z = saturate(refProbeAttenuationConstantsCB[r26.z].data[3].w + r27.z);
          r26.w = r27.z * r26.w;
          r27.z = dot(refProbeAttenuationConstantsCB[r26.z].data[4].xyz, r25.xyz);
          r27.z = saturate(refProbeAttenuationConstantsCB[r26.z].data[4].w + r27.z);
          r26.w = r27.z * r26.w;
          r27.z = dot(refProbeAttenuationConstantsCB[r26.z].data[5].xyz, r25.xyz);
          r26.z = saturate(refProbeAttenuationConstantsCB[r26.z].data[5].w + r27.z);
          r27.x = r26.w * r26.z;
          r27.z = (uint)r15.x >> 2;
          if (1 == 0) r27.w = 0; else if (1+2 < 32) {           r27.w = (uint)r15.x << (32-(1 + 2)); r27.w = (uint)r27.w >> (32-1);          } else r27.w = (uint)r15.x >> 2;
          r28.x = (int)r27.z & 2;
          r28.y = max(r27.y, r27.x);
          r26.z = -r26.w * r26.z + 1;
          r26.z = r27.y * r26.z;
          r17.y = r28.x ? r26.z : r28.y;
          r27.xy = r27.ww ? r27.xy : r17.xy;
          r25.w = (int)r25.w + 1;
          r15.x = r27.z;
        }
        r15.x = saturate(r27.y + -r17.z);
        r17.y = refProbeConstantsCB[r18.w].data[6].y * r15.x;
        r19.w = cmp(0 < r17.y);
        if (r19.w != 0) {
          r23.w = r15.x * refProbeConstantsCB[r18.w].data[6].y + r23.w;
          r15.x = refProbeConstantsCB[r18.w].data[7].y * r17.y;
          r26.x = refProbeConstantsCB[r18.w].data[7].w;
          r26.yz = refProbeConstantsCB[r18.w].data[8].xy;
          r17.y = dot(r14.xyz, r26.xyz);
          r19.w = dot(r25.xyz, r26.xyz);
          r19.w = -refProbeConstantsCB[r18.w].data[8].z + r19.w;
          r24.w = cmp(r19.w >= 0);
          r19.w = max(abs(r19.w), r9.x);
          r19.w = r24.w ? r19.w : -r19.w;
          r17.y = max(1.00000001e-07, -r17.y);
          r17.y = r19.w / r17.y;
          r17.y = min(131072, abs(r17.y));
          r26.x = refProbeConstantsCB[r18.w].data[8].w;
          r26.yz = refProbeConstantsCB[r18.w].data[9].xy;
          r19.w = dot(r14.xyz, r26.xyz);
          r24.w = dot(r25.xyz, r26.xyz);
          r24.w = -refProbeConstantsCB[r18.w].data[9].z + r24.w;
          r25.w = cmp(r24.w >= 0);
          r24.w = max(abs(r24.w), r9.x);
          r24.w = r25.w ? r24.w : -r24.w;
          r19.w = max(1.00000001e-07, -r19.w);
          r19.w = r24.w / r19.w;
          r17.y = min(abs(r19.w), r17.y);
          r26.x = refProbeConstantsCB[r18.w].data[9].w;
          r26.yz = refProbeConstantsCB[r18.w].data[10].xy;
          r19.w = dot(r14.xyz, r26.xyz);
          r24.w = dot(r25.xyz, r26.xyz);
          r24.w = -refProbeConstantsCB[r18.w].data[10].z + r24.w;
          r25.w = cmp(r24.w >= 0);
          r24.w = max(abs(r24.w), r9.x);
          r24.w = r25.w ? r24.w : -r24.w;
          r19.w = max(1.00000001e-07, -r19.w);
          r19.w = r24.w / r19.w;
          r17.y = min(abs(r19.w), r17.y);
          r26.x = refProbeConstantsCB[r18.w].data[10].w;
          r26.yz = refProbeConstantsCB[r18.w].data[11].xy;
          r19.w = dot(r14.xyz, r26.xyz);
          r24.w = dot(r25.xyz, r26.xyz);
          r24.w = -refProbeConstantsCB[r18.w].data[11].z + r24.w;
          r25.w = cmp(r24.w >= 0);
          r24.w = max(abs(r24.w), r9.x);
          r24.w = r25.w ? r24.w : -r24.w;
          r19.w = max(1.00000001e-07, -r19.w);
          r19.w = r24.w / r19.w;
          r17.y = min(abs(r19.w), r17.y);
          r26.x = refProbeConstantsCB[r18.w].data[11].w;
          r26.yz = refProbeConstantsCB[r18.w].data[12].xy;
          r19.w = dot(r14.xyz, r26.xyz);
          r24.w = dot(r25.xyz, r26.xyz);
          r24.w = -refProbeConstantsCB[r18.w].data[12].z + r24.w;
          r25.w = cmp(r24.w >= 0);
          r24.w = max(abs(r24.w), r9.x);
          r24.w = r25.w ? r24.w : -r24.w;
          r19.w = max(1.00000001e-07, -r19.w);
          r19.w = r24.w / r19.w;
          r17.y = min(abs(r19.w), r17.y);
          r26.x = refProbeConstantsCB[r18.w].data[12].w;
          r26.yz = refProbeConstantsCB[r18.w].data[13].xy;
          r19.w = dot(r14.xyz, r26.xyz);
          r24.w = dot(r25.xyz, r26.xyz);
          r24.w = -refProbeConstantsCB[r18.w].data[13].z + r24.w;
          r25.w = cmp(r24.w >= 0);
          r24.w = max(abs(r24.w), r9.x);
          r24.w = r25.w ? r24.w : -r24.w;
          r19.w = max(1.00000001e-07, -r19.w);
          r19.w = r24.w / r19.w;
          r17.y = min(abs(r19.w), r17.y);
          r26.x = refProbeConstantsCB[r18.w].data[3].w + r25.x;
          r26.yz = refProbeConstantsCB[r18.w].data[4].xy + r25.yz;
          r26.xyz = r14.xyz * r17.yyy + r26.xyz;
          r19.w = dot(r26.xyz, r26.xyz);
          r19.w = sqrt(r19.w);
          r17.y = r17.y / r19.w;
          r17.y = r17.y + r17.y;
          r17.y = sqrt(r17.y);
          r17.y = r6.w * 5 + r17.y;
          r17.y = -0.844799995 + r17.y;
          r28.x = refProbeConstantsCB[r18.w].data[0].w;
          r28.y = refProbeConstantsCB[r18.w].data[1].z;
          r28.z = refProbeConstantsCB[r18.w].data[2].y;
          r29.x = dot(r26.xyz, r28.xyz);
          r30.xy = refProbeConstantsCB[r18.w].data[1].xw;
          r30.z = refProbeConstantsCB[r18.w].data[2].z;
          r29.y = dot(r26.xyz, r30.xyz);
          r31.x = refProbeConstantsCB[r18.w].data[1].y;
          r31.yz = refProbeConstantsCB[r18.w].data[2].xw;
          r29.z = dot(r26.xyz, r31.xyz);
          if (9 == 0) r19.w = 0; else if (9+16 < 32) {           r19.w = (uint)refProbeConstantsCB[r18.w].data[7].z << (32-(9 + 16)); r19.w = (uint)r19.w >> (32-9);          } else r19.w = (uint)refProbeConstantsCB[r18.w].data[7].z >> 16;
          r29.w = (uint)r19.w;
          r26.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r29.xyzw, r17.y).xyz;
          r32.x = dot(r25.xyz, r28.xyz);
          r32.y = dot(r25.xyz, r30.xyz);
          r32.z = dot(r25.xyz, r31.xyz);
          r25.xyz = saturate(r32.xyz * refProbeConstantsCB[r18.w].data[3].xyz + float3(0.5,0.5,0.5));
          r32.xy = refProbeConstantsCB[r18.w].data[4].zw * r25.xy;
          r32.z = refProbeConstantsCB[r18.w].data[5].x * r25.z;
          r25.xyz = refProbeConstantsCB[r18.w].data[5].yzw + r32.xyz;
          r29.x = dot(r11.xyz, r28.xyz);
          r29.y = dot(r11.xyz, r30.xyz);
          r29.z = dot(r11.xyz, r31.xyz);
          r27.xzw = cmp(float3(0,0,0) < r29.xyz);
          r16.z = r27.x ? 0 : 0.5;
          r28.xyz = r25.xyz + r16.xyz;
          r28.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r28.xyz, 0).xyz;
          r30.xyz = r29.xyz * r29.xyz;
          r30.xyz = r30.xyz * r15.xxx;
          r18.z = r27.z ? 0 : 0.5;
          r31.xyz = r25.xyz + r18.xyz;
          r31.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r31.xyz, 0).xyz;
          r31.xyz = r31.xyz * r30.yyy;
          r28.xyz = r28.xyz * r30.xxx + r31.xyz;
          r19.z = r27.w ? 0 : 0.5;
          r25.xyz = r25.xyz + r19.xyz;
          r25.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
          r25.xyz = r25.xyz * r30.zzz + r28.xyz;
          r27.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r29.xyzw, 6).xyz;
          r28.xyz = r27.xzw * r25.xyz;
          r16.z = dot(r28.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r24.xyz = r25.xyz * r27.xzw + r24.xyz;
          r17.y = r16.z * r9.y;
          r25.xyz = r26.xyz * r15.xxx;
          r15.x = dot(r25.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r15.x = r9.y * r16.z + r15.x;
          r15.x = r17.y / r15.x;
          r23.xyz = r25.xyz * r15.xxx + r23.xyz;
        }
      }
      r22.xyzw = r23.xyzw;
      r13.yzw = r24.xyz;
      r15.w = (int)r15.w + 32;
    }
    r21.xyzw = r22.zxyw;
    r20.xyz = r13.yzw;
    r21.xyzw = r21.yzxw;
  } else {
    r21.x = r20.w;
  }
  r0.x = max(1, r21.w);
  r0.x = rcp(r0.x);
  r21.w = saturate(r21.w);
  r9.xyw = r20.xyz * r0.xxx;
  r13.yzw = r21.xyz * r0.xxx;
  r0.y = cmp(r21.w < 0.99000001);
  if (r0.y != 0) {
    r0.y = 1 + -r21.w;
    r6.w = sunConstants.globalProbeExposure * r0.y;
    r15.xyz = -globalProbeConstants.data[0].xyz + r10.xyz;
    r16.x = globalProbeConstants.data[0].w * r15.x;
    r16.yz = globalProbeConstants.data[1].xy * r15.yz;
    r15.xyz = saturate(float3(0.5,0.5,0.5) + r16.xyz);
    r16.xy = globalProbeConstants.data[1].zw * r15.xy;
    r16.z = globalProbeConstants.data[2].x * r15.z;
    r15.xyz = globalProbeConstants.data[2].yzw + r16.xyz;
    r16.xyz = cmp(float3(0,0,0) < r11.xyz);
    r16.xyz = r16.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r16.w = 0;
    r17.xyz = r16.wwx + r15.xyz;
    r17.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r17.xyz, 0).xyz;
    r18.xyz = r11.xyz * r11.xyz;
    r18.xyz = r18.xyz * r6.www;
    r19.xyz = r16.wwy + r15.xyz;
    r19.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r19.xyz, 0).xyz;
    r19.xyz = r19.xyz * r18.yyy;
    r17.xyz = r17.xyz * r18.xxx + r19.xyz;
    r15.xyz = r16.wwz + r15.xyz;
    r15.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r15.xyz, 0).xyz;
    r15.xyz = r15.xyz * r18.zzz + r17.xyz;
    r11.w = 0;
    r16.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, 6).xyz;
    r15.xyz = r16.xyz * r15.xyz;
    r6.w = dot(r15.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r9.xyw = r20.xyz * r0.xxx + r15.xyz;
    r14.w = 0;
    r14.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r14.xyzw, r8.w).xyz;
    r0.x = sunConstants.globalProbeExposure * r0.y + -r6.w;
    r0.x = r2.y * r0.x + r6.w;
    r13.yzw = r14.xyz * r0.xxx + r13.yzw;
  }
  r0.x = r4.z * r1.w + r2.x;
  r0.x = log2(abs(r0.x));
  r0.x = r1.z * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r4.z * r1.w + r0.x;
  r0.x = saturate(-1 + r0.x);
  r9.xyw = r9.xyw * r2.zzz;
  r2.yz = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r2.yz = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r2.yz, 0).xy;
  r13.yzw = r13.yzw * r0.xxx;
  r14.xyz = r13.yzw * r2.yyy;
  r13.yzw = r13.yzw * r2.zzz;
  r0.x = cmp(0 < r5.w);
  if (r0.x != 0) {
    r0.x = cmp(0 < r7.w);
    if (r0.x != 0) {
      r0.x = sqrt(r1.z);
      r0.x = r0.x * 0.5 + 0.5;
      r0.x = r0.x * r0.x;
      r0.y = 0.5 * r0.x;
      r0.x = -r0.x * 0.5 + 1;
      r1.w = r2.x * r0.x + r0.y;
      r0.xy = r1.ww * r0.xy;
      r1.w = sunConstants.specScale * r0.w;
      r1.w = r1.w * r5.w;
      if (sunConstants.sunCookieIndex != 0) {
        r15.xyz = eyeOffset.xyz + r10.xyz;
        r15.w = 1;
        r2.y = dot(sunConstants.sunCookieTransform[0].xyzw, r15.xyzw);
        r2.z = dot(sunConstants.sunCookieTransform[1].xyzw, r15.xyzw);
        r15.xy = frac(r2.yz);
        r2.y = -1 + (int14)sunConstants.sunCookieIndex;
        r15.z = (uint)r2.y;
        r15.xyz = gCookieArray.SampleLevel(samplerLinear_s, r15.xyz, 0).xyz;
        r15.xyz = float3(-1,-1,-1) + r15.xyz;
        r15.xyz = sunConstants.sunCookieIntensity * r15.xyz + float3(1,1,1);
        r15.xyz = sunConstants.color.xyz * r15.xyz;
      } else {
        r15.xyz = sunConstants.color.xyz;
      }
      r2.y = viewmodelSunShadowRaw >> 16;
      r2.z = cmp(0 < (uint)r2.y);
      r2.z = r2.z ? r9.z : 0;
      if (r2.z != 0) {
        r2.y = (int)r2.y + numLights;
        r2.y = mad((int)r2.y, 15, -15);
        r2.z = abs(r2.w) * -0.200000003 + 0.400000006;
        r16.xyz = r11.xyz * r2.zzz + r10.xyz;
        r17.xyz = lightConstantsCB[r2.y].data[4].yzw;
        r17.w = lightConstantsCB[r2.y].data[5].x;
        r16.w = 1;
        r17.x = dot(r17.xyzw, r16.xyzw);
        r18.xyz = lightConstantsCB[r2.y].data[5].yzw;
        r18.w = lightConstantsCB[r2.y].data[6].x;
        r17.y = dot(r18.xyzw, r16.xyzw);
        r17.xy = r17.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r18.x = lightConstantsCB[r2.y].data[9].w + r17.x;
        r18.y = lightConstantsCB[r2.y].data[10].x + r17.y;
        r17.xy = lightConstantsCB[r2.y].data[9].yz * r18.xy;
        r17.zw = lightConstantsCB[r2.y].data[3].yy / lightConstantsCB[r2.y].data[8].yw;
        r18.xy = float2(1,1) + -r17.zw;
        r18.xy = cmp(r17.xy >= r18.xy);
        r17.zw = cmp(r17.zw >= r17.xy);
        r17.zw = (int2)r17.zw | (int2)r18.xy;
        r2.z = (int)r17.w | (int)r17.z;
        if (r2.z == 0) {
          r18.xyz = lightConstantsCB[r2.y].data[6].yzw;
          r18.w = lightConstantsCB[r2.y].data[7].x;
          r2.z = dot(r18.xyzw, r16.xyzw);
          r17.xy = saturate(r17.xy);
          r16.x = r17.x * lightConstantsCB[r2.y].data[8].y + lightConstantsCB[r2.y].data[8].z;
          r16.y = r17.y * lightConstantsCB[r2.y].data[8].w + lightConstantsCB[r2.y].data[9].x;
          r2.z = lightConstantsCB[r2.y].data[10].y + r2.z;
          r2.z = r2.z / lightConstantsCB[r2.y].data[10].z;
          r2.z = max(6.10351563e-05, r2.z);
          r4.z = 0x0000ffff & (int)lightConstantsCB[r2.y].data[1].w;
          if (enableDitheredShadow != 0) {
            r17.x = -r3.x;
            r18.z = (uint)r4.z;
            r17.y = r13.x;
            r17.z = r3.x;
            r6.w = 0;
            r8.w = 0;
            while (true) {
              r10.w = cmp((int)r8.w >= 8);
              if (r10.w != 0) break;
              r19.x = dot(icb[r8.w+0].yx, r17.xy);
              r19.y = dot(icb[r8.w+0].yx, r17.yz);
              r18.xy = r19.xy * lightConstantsCB[r2.y].data[3].yy + r16.xy;
              r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r2.z).x;
              r6.w = r10.w * 0.125 + r6.w;
              r8.w = (int)r8.w + 1;
            }
          } else {
            r16.z = (uint)r4.z;
            r6.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r2.z).x;
          }
          r2.y = r6.w * r6.w;
          r2.y = r2.y * r6.w;
        } else {
          r2.y = 1;
        }
        r7.w = r7.w * r2.y;
      } else {
        r2.y = viewmodelSunShadowRaw & 0x0000ffff;
        r2.z = cmp(0 < (uint)r2.y);
        r4.z = ~(int)r9.z;
        r2.z = r2.z ? r4.z : 0;
        if (r2.z != 0) {
          r2.y = (int)r2.y + numLights;
          r2.y = mad((int)r2.y, 15, -15);
          r2.z = abs(r2.w) * -0.200000003 + 0.400000006;
          r16.xyz = r11.xyz * r2.zzz + r10.xyz;
          r17.xyz = lightConstantsCB[r2.y].data[4].yzw;
          r17.w = lightConstantsCB[r2.y].data[5].x;
          r16.w = 1;
          r17.x = dot(r17.xyzw, r16.xyzw);
          r18.xyz = lightConstantsCB[r2.y].data[5].yzw;
          r18.w = lightConstantsCB[r2.y].data[6].x;
          r17.y = dot(r18.xyzw, r16.xyzw);
          r17.xy = r17.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r18.x = lightConstantsCB[r2.y].data[9].w + r17.x;
          r18.y = lightConstantsCB[r2.y].data[10].x + r17.y;
          r17.xy = lightConstantsCB[r2.y].data[9].yz * r18.xy;
          r17.zw = lightConstantsCB[r2.y].data[3].yy / lightConstantsCB[r2.y].data[8].yw;
          r18.xy = float2(1,1) + -r17.zw;
          r18.xy = cmp(r17.xy >= r18.xy);
          r17.zw = cmp(r17.zw >= r17.xy);
          r17.zw = (int2)r17.zw | (int2)r18.xy;
          r2.z = (int)r17.w | (int)r17.z;
          if (r2.z == 0) {
            r18.xyz = lightConstantsCB[r2.y].data[6].yzw;
            r18.w = lightConstantsCB[r2.y].data[7].x;
            r2.z = dot(r18.xyzw, r16.xyzw);
            r17.xy = saturate(r17.xy);
            r16.x = r17.x * lightConstantsCB[r2.y].data[8].y + lightConstantsCB[r2.y].data[8].z;
            r16.y = r17.y * lightConstantsCB[r2.y].data[8].w + lightConstantsCB[r2.y].data[9].x;
            r2.z = lightConstantsCB[r2.y].data[10].y + r2.z;
            r2.z = r2.z / lightConstantsCB[r2.y].data[10].z;
            r2.z = max(6.10351563e-05, r2.z);
            r4.z = 0x0000ffff & (int)lightConstantsCB[r2.y].data[1].w;
            if (enableDitheredShadow != 0) {
              r17.x = -r3.x;
              r18.z = (uint)r4.z;
              r17.y = r13.x;
              r17.z = r3.x;
              r3.x = 0;
              r6.w = 0;
              while (true) {
                r8.w = cmp((int)r6.w >= 8);
                if (r8.w != 0) break;
                r19.x = dot(icb[r6.w+0].yx, r17.xy);
                r19.y = dot(icb[r6.w+0].yx, r17.yz);
                r18.xy = r19.xy * lightConstantsCB[r2.y].data[3].yy + r16.xy;
                r8.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r2.z).x;
                r3.x = r8.w * 0.125 + r3.x;
                r6.w = (int)r6.w + 1;
              }
            } else {
              r16.z = (uint)r4.z;
              r3.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r2.z).x;
            }
            r2.y = r3.x * r3.x;
            r2.y = r2.y * r3.x;
          } else {
            r2.y = 1;
          }
          r7.w = r7.w * r2.y;
        }
      }
      r2.x = -r2.x * 0.5 + 1;
      r2.x = -r5.w * r2.x + 1;
      r2.x = r2.x * r2.x;
      r2.x = -r2.x * 0.620000005 + 0.620000005;
      r2.x = r2.x + -r5.w;
      r1.z = r1.z * r2.x + r5.w;
      r1.z = r1.z * r7.w;
      r2.x = cmp(0 < r2.w);
      r2.yzw = r1.zzz * r15.xyz + r9.xyw;
      r16.xyz = -r10.xyz * r0.zzz + sunConstants.wldDir.xyz;
      r0.z = dot(r16.xyz, r16.xyz);
      r0.z = rsqrt(r0.z);
      r16.xyz = r16.xyz * r0.zzz;
      r0.z = dot(r16.xyz, r12.xyz);
      r1.z = dot(r11.xyz, r16.xyz);
      r0.w = abs(r1.z) * r0.w + -abs(r1.z);
      r0.w = abs(r1.z) * r0.w + 1;
      r0.x = r5.w * r0.x + r0.y;
      r0.y = r0.w * r0.w;
      r0.x = r0.y * r0.x;
      r0.x = rcp(r0.x);
      r0.x = r0.x * r1.w;
      r0.x = r7.w * r0.x;
      r0.x = 0.25 * r0.x;
      r11.xyz = r0.xxx * r15.xyz + r13.yzw;
      r0.y = saturate(1 + -r0.z);
      r0.z = r0.y * r0.y;
      r0.z = r0.z * r0.z;
      r0.y = r0.y * r0.z;
      r0.x = r0.x * r0.y;
      r0.xyz = r0.xxx * r15.xyz + r14.xyz;
      r9.xyw = r2.xxx ? r2.yzw : r9.xyw;
      r14.xyz = r2.xxx ? r0.xyz : r14.xyz;
      r13.yzw = r2.xxx ? r11.xyz : r13.yzw;
    }
  }
  r0.xyz = r4.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r1.z = (uint)r0.y;
  r2.xyz = r5.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r2.x;
  r1.w = cmp((int)r1.z == (int)r1.w);
  r2.xy = r1.ww ? r2.yz : float2(-1,0);
  r4.xyz = r6.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r4.x;
  r1.w = cmp((int)r1.z == (int)r1.w);
  r2.zw = r1.ww ? r4.yz : float2(-1,0);
  r4.xyz = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r4.x;
  r1.w = cmp((int)r1.z == (int)r1.w);
  r4.xy = r1.ww ? r4.yz : float2(-1,0);
  r5.xyz = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r5.x;
  r1.z = cmp((int)r1.z == (int)r1.w);
  r1.zw = r1.zz ? r5.yz : float2(-1,0);
  r5.xy = r2.xz;
  r5.z = r4.x;
  r5.w = r1.z;
  r5.xyzw = r5.xyzw + -r0.xxxx;
  r5.xyzw = cmp(abs(r5.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r5.xyzw = r5.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r1.z = r5.x + r5.y;
  r1.z = r1.z + r5.z;
  r1.z = r1.z + r5.w;
  r2.x = r5.y * r2.w;
  r2.x = r5.x * r2.y + r2.x;
  r2.x = r5.z * r4.y + r2.x;
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
  r0.xyz = r14.xyz * r0.xyz;
  r0.xyz = r13.yzw * r2.xyz + r0.xyz;
  r0.xyz = r9.xyw * r3.yzw + r0.xyz;
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