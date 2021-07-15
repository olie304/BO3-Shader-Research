// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:23:24 2021

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.x = permuteStride << 3;
  r0.x = (int)r0.x + (int)vThreadGroupID.x;
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
  r11.zw = float2(1,1);
  r10.yzw = r11.xyz * r10.yyy;
  r11.xyz = inverseViewMatrix._m10_m11_m12 * r10.zzz;
  r11.xyz = r10.yyy * inverseViewMatrix._m00_m01_m02 + r11.xyz;
  r11.xyz = r10.www * inverseViewMatrix._m20_m21_m22 + r11.xyz;
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
  r10.yzw = float3(1,-2,1) * r13.xyz;
  r12.xyz = float3(0.408248305,0.707106769,0.577350259) * r12.xyw;
  r2.xyw = r12.yyy * r2.xyw;
  r2.xyw = r10.yzw * r12.xxx + r2.xyw;
  r12.xyz = r13.xyz * r12.zzz + r2.xyw;
  r0.w = r3.x ? -0.5 : -0.00146627566;
  r0.w = r2.z + r0.w;
  r2.y = saturate(2.00982332 * r0.w);
  r0.w = dot(-r11.xyz, -r11.xyz);
  r0.w = rsqrt(r0.w);
  r10.yzw = -r11.xyz * r0.www;
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
  sincos(r1.z, r15.x, r16.x);
  r2.x = saturate(dot(r12.xyz, r10.yzw));
  r1.z = dot(-r10.yzw, r12.xyz);
  r1.z = r1.z + r1.z;
  r17.xyz = r12.xyz * -r1.zzz + -r10.yzw;
  r1.z = 17 * r2.y;
  r1.z = exp2(r1.z);
  r1.z = 2 + r1.z;
  r1.z = 2 / r1.z;
  r1.w = sqrt(r1.z);
  r2.zw = renderTargetSize.zw * r3.zw;
  r2.z = gSSAOTexture.SampleLevel(samplerLinearClamp_s, r2.zw, 0).x;
  r2.w = r5.z * r2.z;
  r3.y = dot(r12.xyz, sunConstants.wldDir.xyz);
  r3.z = saturate(r3.y);
  r3.w = r3.x ? abs(r3.y) : r3.z;
  r4.w = cmp(0 >= r3.w);
  if (r4.w != 0) {
    r6.w = 0;
  }
  if (r4.w == 0) {
    r15.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * r11.yyy;
    r15.yzw = r11.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r15.yzw;
    r15.yzw = r11.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r15.yzw;
    r15.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r15.yzw;
    r4.w = -sunConstants.splitDepthOffset + r15.w;
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
        r13.zw = -sunConstants.splitPinTransform[r9.w].xy + r15.yz;
        r13.z = max(abs(r13.z), abs(r13.w));
        r8.w = sunConstants.splitPinTransform[r9.w].z * r13.z;
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
      r18.xz = rcp(r16.yy);
      r18.y = -r18.z;
      r16.yzw = r15.yzy * r18.xyz + r16.zwz;
      r18.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r16.yzw = max(float3(0,0,0), r16.yzw);
      r16.yzw = min(r16.yzw, r18.xyz);
      r13.zw = sunConstants.sstLightingConstants.coordScale * r16.wz;
      r13.zw = floor(r13.zw);
      r13.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r13.w;
      r13.z = r13.w * sunConstants.sstLightingConstants.coordScale + r13.z;
      r13.z = (uint)r13.z;
      r13.z = (int)r13.z + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.w, r13.z, l(0), t23.xxxx
    r13.w = samp0[]..swiz;
      r14.w = (int)r13.w & 0x40000000;
      r18.x = (uint)r13.w << 2;
      if (r14.w == 0) {
        r14.w = (int)r13.w & 0x01ffffff;
        r19.x = (int)r13.z + (int)r14.w;
        r13.z = (uint)r13.w >> 25;
        r13.z = (uint)r13.z;
        r16.yzw = r16.yzw * r13.zzz;
        r16.yzw = frac(r16.yzw);
        r16.yzw = float3(128,128,128) * r16.yzw;
        r16.yzw = (uint3)r16.yzw;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
      r19.z = samp0[]..swiz;
        r13.zw = (uint2)r16.wz >> int2(6,6);
        r14.w = (int)r19.z & 0xc0000000;
        r18.y = (int)r19.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.y, r18.y, l(0), t23.xxxx
      r18.y = samp0[]..swiz;
        r13.w = r13.w ? r19.z : r18.y;
        r18.y = (uint)r13.w >> 13;
        r13.z = r13.z ? r18.y : r13.w;
        r13.z = (int)r13.z & 8191;
        r20.x = (int)r13.z + (int)r19.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.z, r20.x, l(0), t23.xxxx
      r20.z = samp0[]..swiz;
        r19.y = 0;
        r20.y = 1;
        r18.yzw = r14.www ? r19.xyz : r20.xyz;
        r20.yz = r14.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r13.zw = (uint2)r16.wz >> (uint2)r20.yy;
        r13.zw = (int2)r13.zw & int2(1,1);
        r19.w = (int)r18.w & 0xc0000000;
        r20.y = (int)r18.y + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.y, r20.y, l(0), t23.xxxx
      r20.y = samp0[]..swiz;
        r13.w = r13.w ? r18.w : r20.y;
        r20.y = (uint)r13.w >> 13;
        r13.z = r13.z ? r20.y : r13.w;
        r13.z = (int)r13.z & 8191;
        r20.x = (int)r13.z + (int)r18.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.w, r20.x, l(0), t23.xxxx
      r20.w = samp0[]..swiz;
        r18.yzw = r19.www ? r18.yzw : r20.xzw;
        r18.yzw = r14.www ? r19.xyz : r18.yzw;
        r13.z = (int)r18.w & 0xc0000000;
        if (r13.z == 0) {
          r13.z = (int)-r18.z + 6;
          r13.zw = (uint2)r16.wz >> (uint2)r13.zz;
          r14.w = (int)r18.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.w = (((uint)r13.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.z = (((uint)r13.z << 0) & bitmask.z) | ((uint)r13.w & ~bitmask.z);
          r13.z = (int)r13.z * 10;
          r13.z = (uint)r14.w >> (uint)r13.z;
          r13.z = (int)r13.z & 1023;
          r19.x = (int)r13.z + (int)r18.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.w, r19.x, l(0), t23.xxxx
        r19.w = samp0[]..swiz;
          r19.yz = (int2)r18.zz + int2(1,2);
          r13.z = (int)-r19.y + 6;
          r13.zw = (uint2)r16.wz >> (uint2)r13.zz;
          r14.w = (int)r19.w & 0xc0000000;
          r18.z = (int)r19.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.w = (((uint)r13.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.z = (((uint)r13.z << 0) & bitmask.z) | ((uint)r13.w & ~bitmask.z);
          r13.z = (int)r13.z * 10;
          r13.z = (uint)r18.z >> (uint)r13.z;
          r13.z = (int)r13.z & 1023;
          r20.x = (int)r13.z + (int)r19.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.z, r20.x, l(0), t23.xxxx
        r20.z = samp0[]..swiz;
          r20.y = r19.z;
          r20.xyz = r14.www ? r19.xyw : r20.xyz;
          r13.z = (int)-r20.y + 6;
          r13.zw = (uint2)r16.wz >> (uint2)r13.zz;
          r18.z = (int)r20.z & 0xc0000000;
          r19.y = (int)r20.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.w = (((uint)r13.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.z = (((uint)r13.z << 0) & bitmask.z) | ((uint)r13.w & ~bitmask.z);
          r13.z = (int)r13.z * 10;
          r13.z = (uint)r19.y >> (uint)r13.z;
          r13.z = (int)r13.z & 1023;
          r21.x = (int)r13.z + (int)r20.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r21.y, r21.x, l(0), t23.xxxx
        r21.y = samp0[]..swiz;
          r13.zw = r18.zz ? r20.xz : r21.xy;
          r18.yw = r14.ww ? r19.xw : r13.zw;
        }
        r13.z = (int)r18.w & 0xc0000000;
        if (r13.z == 0) {
          if (14 == 0) r13.w = 0; else if (14+15 < 32) {           r13.w = (uint)r18.w << (32-(14 + 15)); r13.w = (uint)r13.w >> (32-14);          } else r13.w = (uint)r18.w >> 15;
          r13.w = (uint)r13.w;
          r13.w = sunConstants.sstLightingConstants.constants.spanInInches * r13.w;
          r13.w = 6.10388815e-05 * r13.w;
          r19.xy = (int2)r18.ww & int2(32767,536870912);
          r14.w = (uint)r19.x;
          r14.w = sunConstants.sstLightingConstants.constants.spanInInches * r14.w;
          r14.w = 3.05185094e-05 * r14.w;
          r18.z = (int)r16.z & 3;
          r18.z = (int)r18.z + (int)r18.y;
          r18.z = (int)r18.z + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.z, l(0), t23.xxxx
        r18.z = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r19.x = (((uint)r16.y << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.z = ((~(-1 << 2)) << 1) & 0xffffffff;  r19.z = (((uint)r16.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.w = ((~(-1 << 1)) << 4) & 0xffffffff;  r19.w = (((uint)r16.w << 4) & bitmask.w) | ((uint)0 & ~bitmask.w);
          r16.y = (uint)r18.z >> (uint)r19.x;
          r16.y = (int)r16.y & 255;
          r16.y = (uint)r16.y;
          r16.y = r16.y * r14.w;
          r16.y = r16.y * 0.00392156886 + r13.w;
          r16.z = (int)r19.z + 1;
          if (1 == 0) r16.w = 0; else if (1+1 < 32) {           r16.w = (uint)r16.w << (32-(1 + 1)); r16.w = (uint)r16.w >> (32-1);          } else r16.w = (uint)r16.w >> 1;
          r16.z = (int)r16.w + (int)r16.z;
          r16.z = (int)r16.z + (int)r18.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.z, l(0), t23.xxxx
        r16.z = samp0[]..swiz;
          r16.z = (uint)r16.z >> (uint)r19.w;
          r16.z = (int)r16.z & 0x0000ffff;
          r16.z = (uint)r16.z;
          r14.w = r16.z * r14.w;
          r13.w = r14.w * 1.52590219e-05 + r13.w;
          r18.x = r19.y ? r16.y : r13.w;
        } else {
          r13.w = (int)r18.w & 0x80000000;
          r14.w = (int)r18.y + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.w, r14.w, l(0), t23.xxxx
        r14.w = samp0[]..swiz;
          r13.w = r13.w ? r14.w : 0;
          r14.w = (uint)r18.w << 2;
          r16.y = (uint)r13.w >> 16;
          r16.y = f16tof32(r16.y);
          r13.w = (int)r13.w & 0x0000ffff;
          r13.w = f16tof32(r13.w);
          r14.w = r15.y * r16.y + r14.w;
          r13.w = r15.z * r13.w + r14.w;
          r18.x = r13.z ? r13.w : r18.x;
        }
      }
      r13.z = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r15.w;
      r13.z = cmp(r18.x < r13.z);
      r6.w = r13.z ? 0 : 1;
    }
    if (r9.w == 0) {
      if (enableDitheredShadow == 0) {
        r9.w = (uint)r7.w;
        r13.zw = -sunConstants.splitPinTransform[r9.w].xy + r15.yz;
        r13.zw = sunConstants.splitPinTransform[r9.w].zz * r13.zw;
        r18.xy = r13.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r9.w = (int16)sunConstants.splitArrayOffset;
        r18.z = r9.w + r7.w;
        r9.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r4.w).x;
        r13.z = gTransShadowmapArray.SampleLevel(samp0_s, r18.xyz, 0).x;
        r9.w = r13.z + r9.w;
        r9.w = saturate(-1 + r9.w);
        r13.z = r9.w * r9.w;
        r6.w = r13.z * r9.w;
      }
      if (enableDitheredShadow != 0) {
        r18.x = -r13.x;
        r9.w = (uint)r7.w;
        r7.w = 1 + r7.w;
        r7.w = min(2, r7.w);
        r7.w = (uint)r7.w;
        r8.w = 1 + -r8.w;
        r8.w = 28 * r8.w;
        r8.w = (uint)r8.w;
        r13.zw = -sunConstants.splitPinTransform[r9.w].xy + r15.yz;
        r13.zw = sunConstants.splitPinTransform[r9.w].zz * r13.zw;
        r13.zw = r13.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r15.yz = -sunConstants.splitPinTransform[r7.w].xy + r15.yz;
        r15.yz = sunConstants.splitPinTransform[r7.w].zz * r15.yz;
        r15.yz = r15.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r18.y = r14.x;
        r18.z = r13.x;
        r14.w = 0;
        r15.w = 0;
        while (true) {
          r16.y = cmp((uint)r15.w >= 8);
          if (r16.y != 0) break;
          r16.y = cmp((uint)r8.w < (uint)r15.w);
          r16.zw = r16.yy ? r15.yz : r13.zw;
          r18.w = r16.y ? sunConstants.splitPinTransform[r7.w].w : sunConstants.splitPinTransform[r9.w].w;
          r16.y = r16.y ? r7.w : r9.w;
          r19.x = dot(icb[r15.w+0].yx, r18.xy);
          r19.y = dot(icb[r15.w+0].yx, r18.yz);
          r19.xy = r19.xy * r18.ww + r16.zw;
          r16.y = (int)r16.y + (int16)sunConstants.splitArrayOffset;
          r19.z = (uint)r16.y;
          r16.y = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r4.w).x;
          r16.z = gTransShadowmapArray.SampleLevel(samp0_s, r19.xyz, 0).x;
          r16.y = r16.y + r16.z;
          r16.y = saturate(-1 + r16.y);
          r14.w = r16.y * 0.125 + r14.w;
          r15.w = (int)r15.w + 1;
        }
        r4.w = r14.w * r14.w;
        r6.w = r4.w * r14.w;
      }
    }
  }
  r4.w = 1 + -r2.y;
  r7.w = 5 * r4.w;
  r8.w = r4.w * 5 + -2.5;
  r8.w = 0.400000006 * r8.w;
  r8.w = max(0, r8.w);
  r8.w = 100 * r8.w;
  r13.zw = -r4.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r9.w = exp2(r13.z);
  r9.w = r9.w * r2.x;
  r9.w = 9.1368103 * r9.w;
  r13.z = r7.w * r4.w;
  r13.z = -r13.z * 2.0159049 + r13.w;
  r13.z = exp2(r13.z);
  r13.z = r13.z * r2.x;
  r13.z = 9.70808983 * r13.z;
  r9.w = max(r13.z, r9.w);
  r9.w = max(1.26815999, r9.w);
  r13.z = numRefProbes + -numOverrideProbes;
  r0.y = (uint)r0.y >> 24;
  r13.w = cmp((uint)r0.y >= (uint)r13.z);
  r14.w = cmp((uint)r0.y < numRefProbes);
  r13.w = r13.w ? r14.w : 0;
  if (r13.w != 0) {
    r13.w = (int)r0.y * 14;
    r15.yzw = -refProbeConstantsCB[r13.w].data[0].xyz + r11.xyz;
    r14.w = 0x0000ffff & (int)refProbeConstantsCB[r13.w].data[7].z;
    if (6 == 0) r16.y = 0; else if (6+25 < 32) {     r16.y = (uint)refProbeConstantsCB[r13.w].data[7].z << (32-(6 + 25)); r16.y = (uint)r16.y >> (32-6);    } else r16.y = (uint)refProbeConstantsCB[r13.w].data[7].z >> 25;
    r16.z = (int)r14.w * 6;
    r16.w = dot(refProbeAttenuationConstantsCB[r16.z].data[0].xyz, r15.yzw);
    r16.w = saturate(refProbeAttenuationConstantsCB[r16.z].data[0].w + r16.w);
    r18.x = dot(refProbeAttenuationConstantsCB[r16.z].data[1].xyz, r15.yzw);
    r18.x = saturate(refProbeAttenuationConstantsCB[r16.z].data[1].w + r18.x);
    r16.w = r18.x * r16.w;
    r18.x = dot(refProbeAttenuationConstantsCB[r16.z].data[2].xyz, r15.yzw);
    r18.x = saturate(refProbeAttenuationConstantsCB[r16.z].data[2].w + r18.x);
    r16.w = r18.x * r16.w;
    r18.x = dot(refProbeAttenuationConstantsCB[r16.z].data[3].xyz, r15.yzw);
    r18.x = saturate(refProbeAttenuationConstantsCB[r16.z].data[3].w + r18.x);
    r16.w = r18.x * r16.w;
    r18.x = dot(refProbeAttenuationConstantsCB[r16.z].data[4].xyz, r15.yzw);
    r18.x = saturate(refProbeAttenuationConstantsCB[r16.z].data[4].w + r18.x);
    r16.w = r18.x * r16.w;
    r18.x = dot(refProbeAttenuationConstantsCB[r16.z].data[5].xyz, r15.yzw);
    r16.z = saturate(refProbeAttenuationConstantsCB[r16.z].data[5].w + r18.x);
    r18.x = r16.w * r16.z;
    r16.z = 1 & (int)refProbeConstantsCB[r13.w].data[6].x;
    r18.yz = float2(0,1);
    r16.zw = r16.zz ? r18.xy : r18.zx;
    r18.x = 1;
    r18.z = refProbeConstantsCB[r13.w].data[6].x;
    r19.xy = r16.zw;
    r18.w = 1;
    while (true) {
      r19.z = cmp((int)r18.w >= (int)r16.y);
      if (r19.z != 0) break;
      r19.z = (int)r14.w + (int)r18.w;
      r19.z = (int)r19.z * 6;
      r19.w = dot(refProbeAttenuationConstantsCB[r19.z].data[0].xyz, r15.yzw);
      r19.w = saturate(refProbeAttenuationConstantsCB[r19.z].data[0].w + r19.w);
      r19.w = r19.x * r19.w;
      r20.x = dot(refProbeAttenuationConstantsCB[r19.z].data[1].xyz, r15.yzw);
      r20.x = saturate(refProbeAttenuationConstantsCB[r19.z].data[1].w + r20.x);
      r19.w = r20.x * r19.w;
      r20.x = dot(refProbeAttenuationConstantsCB[r19.z].data[2].xyz, r15.yzw);
      r20.x = saturate(refProbeAttenuationConstantsCB[r19.z].data[2].w + r20.x);
      r19.w = r20.x * r19.w;
      r20.x = dot(refProbeAttenuationConstantsCB[r19.z].data[3].xyz, r15.yzw);
      r20.x = saturate(refProbeAttenuationConstantsCB[r19.z].data[3].w + r20.x);
      r19.w = r20.x * r19.w;
      r20.x = dot(refProbeAttenuationConstantsCB[r19.z].data[4].xyz, r15.yzw);
      r20.x = saturate(refProbeAttenuationConstantsCB[r19.z].data[4].w + r20.x);
      r19.w = r20.x * r19.w;
      r20.x = dot(refProbeAttenuationConstantsCB[r19.z].data[5].xyz, r15.yzw);
      r19.z = saturate(refProbeAttenuationConstantsCB[r19.z].data[5].w + r20.x);
      r19.x = r19.w * r19.z;
      r20.x = (uint)r18.z >> 2;
      if (1 == 0) r20.y = 0; else if (1+2 < 32) {       r20.y = (uint)r18.z << (32-(1 + 2)); r20.y = (uint)r20.y >> (32-1);      } else r20.y = (uint)r18.z >> 2;
      r20.z = (int)r20.x & 2;
      r20.w = max(r19.y, r19.x);
      r19.z = -r19.w * r19.z + 1;
      r19.z = r19.y * r19.z;
      r18.y = r20.z ? r19.z : r20.w;
      r19.xy = r20.yy ? r19.xy : r18.xy;
      r18.w = (int)r18.w + 1;
      r18.z = r20.x;
    }
    r19.y = saturate(r19.y);
    r14.w = refProbeConstantsCB[r13.w].data[6].y * r19.y;
    r16.y = cmp(0 < r14.w);
    if (r16.y != 0) {
      r16.y = refProbeConstantsCB[r13.w].data[7].y * r14.w;
      r18.x = refProbeConstantsCB[r13.w].data[7].w;
      r18.yz = refProbeConstantsCB[r13.w].data[8].xy;
      r16.z = dot(r17.xyz, r18.xyz);
      r16.w = dot(r15.yzw, r18.xyz);
      r16.w = -refProbeConstantsCB[r13.w].data[8].z + r16.w;
      r18.x = cmp(r16.w >= 0);
      r16.w = max(abs(r16.w), r8.w);
      r16.w = r18.x ? r16.w : -r16.w;
      r16.z = max(1.00000001e-07, -r16.z);
      r16.z = r16.w / r16.z;
      r16.z = min(131072, abs(r16.z));
      r18.x = refProbeConstantsCB[r13.w].data[8].w;
      r18.yz = refProbeConstantsCB[r13.w].data[9].xy;
      r16.w = dot(r17.xyz, r18.xyz);
      r18.x = dot(r15.yzw, r18.xyz);
      r18.x = -refProbeConstantsCB[r13.w].data[9].z + r18.x;
      r18.y = cmp(r18.x >= 0);
      r18.x = max(abs(r18.x), r8.w);
      r18.x = r18.y ? r18.x : -r18.x;
      r16.w = max(1.00000001e-07, -r16.w);
      r16.w = r18.x / r16.w;
      r16.z = min(r16.z, abs(r16.w));
      r18.x = refProbeConstantsCB[r13.w].data[9].w;
      r18.yz = refProbeConstantsCB[r13.w].data[10].xy;
      r16.w = dot(r17.xyz, r18.xyz);
      r18.x = dot(r15.yzw, r18.xyz);
      r18.x = -refProbeConstantsCB[r13.w].data[10].z + r18.x;
      r18.y = cmp(r18.x >= 0);
      r18.x = max(abs(r18.x), r8.w);
      r18.x = r18.y ? r18.x : -r18.x;
      r16.w = max(1.00000001e-07, -r16.w);
      r16.w = r18.x / r16.w;
      r16.z = min(r16.z, abs(r16.w));
      r18.x = refProbeConstantsCB[r13.w].data[10].w;
      r18.yz = refProbeConstantsCB[r13.w].data[11].xy;
      r16.w = dot(r17.xyz, r18.xyz);
      r18.x = dot(r15.yzw, r18.xyz);
      r18.x = -refProbeConstantsCB[r13.w].data[11].z + r18.x;
      r18.y = cmp(r18.x >= 0);
      r18.x = max(abs(r18.x), r8.w);
      r18.x = r18.y ? r18.x : -r18.x;
      r16.w = max(1.00000001e-07, -r16.w);
      r16.w = r18.x / r16.w;
      r16.z = min(r16.z, abs(r16.w));
      r18.x = refProbeConstantsCB[r13.w].data[11].w;
      r18.yz = refProbeConstantsCB[r13.w].data[12].xy;
      r16.w = dot(r17.xyz, r18.xyz);
      r18.x = dot(r15.yzw, r18.xyz);
      r18.x = -refProbeConstantsCB[r13.w].data[12].z + r18.x;
      r18.y = cmp(r18.x >= 0);
      r18.x = max(abs(r18.x), r8.w);
      r18.x = r18.y ? r18.x : -r18.x;
      r16.w = max(1.00000001e-07, -r16.w);
      r16.w = r18.x / r16.w;
      r16.z = min(r16.z, abs(r16.w));
      r18.x = refProbeConstantsCB[r13.w].data[12].w;
      r18.yz = refProbeConstantsCB[r13.w].data[13].xy;
      r16.w = dot(r17.xyz, r18.xyz);
      r18.x = dot(r15.yzw, r18.xyz);
      r18.x = -refProbeConstantsCB[r13.w].data[13].z + r18.x;
      r18.y = cmp(r18.x >= 0);
      r18.x = max(abs(r18.x), r8.w);
      r18.x = r18.y ? r18.x : -r18.x;
      r16.w = max(1.00000001e-07, -r16.w);
      r16.w = r18.x / r16.w;
      r16.z = min(r16.z, abs(r16.w));
      r18.x = refProbeConstantsCB[r13.w].data[3].w + r15.y;
      r18.yz = refProbeConstantsCB[r13.w].data[4].xy + r15.zw;
      r18.xyz = r17.xyz * r16.zzz + r18.xyz;
      r16.w = dot(r18.xyz, r18.xyz);
      r16.w = sqrt(r16.w);
      r16.z = r16.z / r16.w;
      r16.z = r16.z + r16.z;
      r16.z = sqrt(r16.z);
      r16.z = r4.w * 5 + r16.z;
      r16.z = -0.844799995 + r16.z;
      r19.x = refProbeConstantsCB[r13.w].data[0].w;
      r19.y = refProbeConstantsCB[r13.w].data[1].z;
      r19.z = refProbeConstantsCB[r13.w].data[2].y;
      r20.x = dot(r18.xyz, r19.xyz);
      r21.xy = refProbeConstantsCB[r13.w].data[1].xw;
      r21.z = refProbeConstantsCB[r13.w].data[2].z;
      r20.y = dot(r18.xyz, r21.xyz);
      r22.x = refProbeConstantsCB[r13.w].data[1].y;
      r22.yz = refProbeConstantsCB[r13.w].data[2].xw;
      r20.z = dot(r18.xyz, r22.xyz);
      if (9 == 0) r16.w = 0; else if (9+16 < 32) {       r16.w = (uint)refProbeConstantsCB[r13.w].data[7].z << (32-(9 + 16)); r16.w = (uint)r16.w >> (32-9);      } else r16.w = (uint)refProbeConstantsCB[r13.w].data[7].z >> 16;
      r20.w = (uint)r16.w;
      r18.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r20.xyzw, r16.z).xyz;
      r23.x = dot(r15.yzw, r19.xyz);
      r23.y = dot(r15.yzw, r21.xyz);
      r23.z = dot(r15.yzw, r22.xyz);
      r15.yzw = saturate(r23.xyz * refProbeConstantsCB[r13.w].data[3].xyz + float3(0.5,0.5,0.5));
      r23.xy = refProbeConstantsCB[r13.w].data[4].zw * r15.yz;
      r23.z = refProbeConstantsCB[r13.w].data[5].x * r15.w;
      r15.yzw = refProbeConstantsCB[r13.w].data[5].yzw + r23.xyz;
      r20.x = dot(r12.xyz, r19.xyz);
      r20.y = dot(r12.xyz, r21.xyz);
      r20.z = dot(r12.xyz, r22.xyz);
      r19.xyz = cmp(float3(0,0,0) < r20.xyz);
      r21.z = r19.x ? 0 : 0.5;
      r21.xy = float2(0,0);
      r21.xyz = r21.xyz + r15.yzw;
      r21.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r21.xyz, 0).xyz;
      r22.xyz = r20.xyz * r20.xyz;
      r22.xyz = r22.xyz * r16.yyy;
      r23.z = r19.y ? 0 : 0.5;
      r23.xy = float2(0,0);
      r19.xyw = r23.xyz + r15.yzw;
      r19.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r19.xyw, 0).xyz;
      r19.xyw = r19.xyw * r22.yyy;
      r19.xyw = r21.xyz * r22.xxx + r19.xyw;
      r21.z = r19.z ? 0 : 0.5;
      r21.xy = float2(0,0);
      r15.yzw = r21.xyz + r15.yzw;
      r15.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r15.yzw, 0).xyz;
      r15.yzw = r15.yzw * r22.zzz + r19.xyw;
      r19.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r20.xyzw, 6).xyz;
      r15.yzw = r19.xyz * r15.yzw;
      r13.w = dot(r15.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r16.z = r13.w * r9.w;
      r18.xyz = r18.xyz * r16.yyy;
      r16.y = dot(r18.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r13.w = r9.w * r13.w + r16.y;
      r13.w = r16.z / r13.w;
      r16.yzw = r18.xyz * r13.www;
    } else {
      r16.yzw = float3(0,0,0);
      r14.w = 0;
      r15.yzw = float3(0,0,0);
    }
  } else {
    r16.yzw = float3(0,0,0);
    r14.w = 0;
    r15.yzw = float3(0,0,0);
  }
  r13.w = cmp(r14.w < 1);
  if (r13.w != 0) {
    r13.z = cmp((uint)r0.y < (uint)r13.z);
    if (r13.z != 0) {
      r0.y = (int)r0.y * 14;
      r18.xyz = -refProbeConstantsCB[r0.y].data[0].xyz + r11.xyz;
      r13.z = 0x0000ffff & (int)refProbeConstantsCB[r0.y].data[7].z;
      if (6 == 0) r13.w = 0; else if (6+25 < 32) {       r13.w = (uint)refProbeConstantsCB[r0.y].data[7].z << (32-(6 + 25)); r13.w = (uint)r13.w >> (32-6);      } else r13.w = (uint)refProbeConstantsCB[r0.y].data[7].z >> 25;
      r18.w = (int)r13.z * 6;
      r19.x = dot(refProbeAttenuationConstantsCB[r18.w].data[0].xyz, r18.xyz);
      r19.x = saturate(refProbeAttenuationConstantsCB[r18.w].data[0].w + r19.x);
      r19.y = dot(refProbeAttenuationConstantsCB[r18.w].data[1].xyz, r18.xyz);
      r19.y = saturate(refProbeAttenuationConstantsCB[r18.w].data[1].w + r19.y);
      r19.x = r19.x * r19.y;
      r19.y = dot(refProbeAttenuationConstantsCB[r18.w].data[2].xyz, r18.xyz);
      r19.y = saturate(refProbeAttenuationConstantsCB[r18.w].data[2].w + r19.y);
      r19.x = r19.x * r19.y;
      r19.y = dot(refProbeAttenuationConstantsCB[r18.w].data[3].xyz, r18.xyz);
      r19.y = saturate(refProbeAttenuationConstantsCB[r18.w].data[3].w + r19.y);
      r19.x = r19.x * r19.y;
      r19.y = dot(refProbeAttenuationConstantsCB[r18.w].data[4].xyz, r18.xyz);
      r19.y = saturate(refProbeAttenuationConstantsCB[r18.w].data[4].w + r19.y);
      r19.x = r19.x * r19.y;
      r19.y = dot(refProbeAttenuationConstantsCB[r18.w].data[5].xyz, r18.xyz);
      r18.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[5].w + r19.y);
      r19.x = r19.x * r18.w;
      r18.w = 1 & (int)refProbeConstantsCB[r0.y].data[6].x;
      r19.yz = float2(0,1);
      r19.xy = r18.ww ? r19.xy : r19.zx;
      r20.x = 1;
      r18.w = refProbeConstantsCB[r0.y].data[6].x;
      r21.xy = r19.xy;
      r19.z = 1;
      while (true) {
        r19.w = cmp((int)r19.z >= (int)r13.w);
        if (r19.w != 0) break;
        r19.w = (int)r13.z + (int)r19.z;
        r19.w = (int)r19.w * 6;
        r20.z = dot(refProbeAttenuationConstantsCB[r19.w].data[0].xyz, r18.xyz);
        r20.z = saturate(refProbeAttenuationConstantsCB[r19.w].data[0].w + r20.z);
        r20.z = r21.x * r20.z;
        r20.w = dot(refProbeAttenuationConstantsCB[r19.w].data[1].xyz, r18.xyz);
        r20.w = saturate(refProbeAttenuationConstantsCB[r19.w].data[1].w + r20.w);
        r20.z = r20.z * r20.w;
        r20.w = dot(refProbeAttenuationConstantsCB[r19.w].data[2].xyz, r18.xyz);
        r20.w = saturate(refProbeAttenuationConstantsCB[r19.w].data[2].w + r20.w);
        r20.z = r20.z * r20.w;
        r20.w = dot(refProbeAttenuationConstantsCB[r19.w].data[3].xyz, r18.xyz);
        r20.w = saturate(refProbeAttenuationConstantsCB[r19.w].data[3].w + r20.w);
        r20.z = r20.z * r20.w;
        r20.w = dot(refProbeAttenuationConstantsCB[r19.w].data[4].xyz, r18.xyz);
        r20.w = saturate(refProbeAttenuationConstantsCB[r19.w].data[4].w + r20.w);
        r20.z = r20.z * r20.w;
        r20.w = dot(refProbeAttenuationConstantsCB[r19.w].data[5].xyz, r18.xyz);
        r19.w = saturate(refProbeAttenuationConstantsCB[r19.w].data[5].w + r20.w);
        r21.x = r20.z * r19.w;
        r20.w = (uint)r18.w >> 2;
        if (1 == 0) r21.z = 0; else if (1+2 < 32) {         r21.z = (uint)r18.w << (32-(1 + 2)); r21.z = (uint)r21.z >> (32-1);        } else r21.z = (uint)r18.w >> 2;
        r21.w = (int)r20.w & 2;
        r22.x = max(r21.y, r21.x);
        r19.w = -r20.z * r19.w + 1;
        r19.w = r21.y * r19.w;
        r20.y = r21.w ? r19.w : r22.x;
        r21.xy = r21.zz ? r21.xy : r20.xy;
        r19.z = (int)r19.z + 1;
        r18.w = r20.w;
      }
      r13.z = saturate(r21.y + -r14.w);
      r13.w = refProbeConstantsCB[r0.y].data[6].y * r13.z;
      r18.w = cmp(0 < r13.w);
      if (r18.w != 0) {
        r14.w = r13.z * refProbeConstantsCB[r0.y].data[6].y + r14.w;
        r13.z = refProbeConstantsCB[r0.y].data[7].y * r13.w;
        r19.x = refProbeConstantsCB[r0.y].data[7].w;
        r19.yz = refProbeConstantsCB[r0.y].data[8].xy;
        r13.w = dot(r17.xyz, r19.xyz);
        r18.w = dot(r18.xyz, r19.xyz);
        r18.w = -refProbeConstantsCB[r0.y].data[8].z + r18.w;
        r19.x = cmp(r18.w >= 0);
        r18.w = max(abs(r18.w), r8.w);
        r18.w = r19.x ? r18.w : -r18.w;
        r13.w = max(1.00000001e-07, -r13.w);
        r13.w = r18.w / r13.w;
        r13.w = min(131072, abs(r13.w));
        r19.x = refProbeConstantsCB[r0.y].data[8].w;
        r19.yz = refProbeConstantsCB[r0.y].data[9].xy;
        r18.w = dot(r17.xyz, r19.xyz);
        r19.x = dot(r18.xyz, r19.xyz);
        r19.x = -refProbeConstantsCB[r0.y].data[9].z + r19.x;
        r19.y = cmp(r19.x >= 0);
        r19.x = max(abs(r19.x), r8.w);
        r19.x = r19.y ? r19.x : -r19.x;
        r18.w = max(1.00000001e-07, -r18.w);
        r18.w = r19.x / r18.w;
        r13.w = min(abs(r18.w), r13.w);
        r19.x = refProbeConstantsCB[r0.y].data[9].w;
        r19.yz = refProbeConstantsCB[r0.y].data[10].xy;
        r18.w = dot(r17.xyz, r19.xyz);
        r19.x = dot(r18.xyz, r19.xyz);
        r19.x = -refProbeConstantsCB[r0.y].data[10].z + r19.x;
        r19.y = cmp(r19.x >= 0);
        r19.x = max(abs(r19.x), r8.w);
        r19.x = r19.y ? r19.x : -r19.x;
        r18.w = max(1.00000001e-07, -r18.w);
        r18.w = r19.x / r18.w;
        r13.w = min(abs(r18.w), r13.w);
        r19.x = refProbeConstantsCB[r0.y].data[10].w;
        r19.yz = refProbeConstantsCB[r0.y].data[11].xy;
        r18.w = dot(r17.xyz, r19.xyz);
        r19.x = dot(r18.xyz, r19.xyz);
        r19.x = -refProbeConstantsCB[r0.y].data[11].z + r19.x;
        r19.y = cmp(r19.x >= 0);
        r19.x = max(abs(r19.x), r8.w);
        r19.x = r19.y ? r19.x : -r19.x;
        r18.w = max(1.00000001e-07, -r18.w);
        r18.w = r19.x / r18.w;
        r13.w = min(abs(r18.w), r13.w);
        r19.x = refProbeConstantsCB[r0.y].data[11].w;
        r19.yz = refProbeConstantsCB[r0.y].data[12].xy;
        r18.w = dot(r17.xyz, r19.xyz);
        r19.x = dot(r18.xyz, r19.xyz);
        r19.x = -refProbeConstantsCB[r0.y].data[12].z + r19.x;
        r19.y = cmp(r19.x >= 0);
        r19.x = max(abs(r19.x), r8.w);
        r19.x = r19.y ? r19.x : -r19.x;
        r18.w = max(1.00000001e-07, -r18.w);
        r18.w = r19.x / r18.w;
        r13.w = min(abs(r18.w), r13.w);
        r19.x = refProbeConstantsCB[r0.y].data[12].w;
        r19.yz = refProbeConstantsCB[r0.y].data[13].xy;
        r18.w = dot(r17.xyz, r19.xyz);
        r19.x = dot(r18.xyz, r19.xyz);
        r19.x = -refProbeConstantsCB[r0.y].data[13].z + r19.x;
        r19.y = cmp(r19.x >= 0);
        r8.w = max(abs(r19.x), r8.w);
        r8.w = r19.y ? r8.w : -r8.w;
        r18.w = max(1.00000001e-07, -r18.w);
        r8.w = r8.w / r18.w;
        r8.w = min(r13.w, abs(r8.w));
        r19.x = refProbeConstantsCB[r0.y].data[3].w + r18.x;
        r19.yz = refProbeConstantsCB[r0.y].data[4].xy + r18.yz;
        r19.xyz = r17.xyz * r8.www + r19.xyz;
        r13.w = dot(r19.xyz, r19.xyz);
        r13.w = sqrt(r13.w);
        r8.w = r8.w / r13.w;
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
        r23.xyz = r23.xyz * r13.zzz;
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
        r18.xyz = r19.xyz * r13.zzz;
        r8.w = dot(r18.xyz, float3(0.212599993,0.715200007,0.0722000003));
        r0.y = r9.w * r0.y + r8.w;
        r0.y = r4.w / r0.y;
        r16.yzw = r18.xyz * r0.yyy + r16.yzw;
      }
    }
  }
  r0.y = max(1, r14.w);
  r0.y = rcp(r0.y);
  r14.w = saturate(r14.w);
  r18.xyz = r15.yzw * r0.yyy;
  r16.yzw = r16.yzw * r0.yyy;
  r4.w = cmp(r14.w < 0.99000001);
  if (r4.w != 0) {
    r4.w = 1 + -r14.w;
    r8.w = sunConstants.globalProbeExposure * r4.w;
    r19.xyz = -globalProbeConstants.data[0].xyz + r11.xyz;
    r20.x = globalProbeConstants.data[0].w * r19.x;
    r20.yz = globalProbeConstants.data[1].xy * r19.yz;
    r19.xyz = saturate(float3(0.5,0.5,0.5) + r20.xyz);
    r20.xy = globalProbeConstants.data[1].zw * r19.xy;
    r20.z = globalProbeConstants.data[2].x * r19.z;
    r19.xyz = globalProbeConstants.data[2].yzw + r20.xyz;
    r20.xyz = cmp(float3(0,0,0) < r12.xyz);
    r20.xyz = r20.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r20.w = 0;
    r21.xyz = r20.wwx + r19.xyz;
    r21.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r21.xyz, 0).xyz;
    r22.xyz = r12.xyz * r12.xyz;
    r22.xyz = r22.xyz * r8.www;
    r23.xyz = r20.wwy + r19.xyz;
    r23.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
    r23.xyz = r23.xyz * r22.yyy;
    r21.xyz = r21.xyz * r22.xxx + r23.xyz;
    r19.xyz = r20.wwz + r19.xyz;
    r19.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r19.xyz, 0).xyz;
    r19.xyz = r19.xyz * r22.zzz + r21.xyz;
    r12.w = 0;
    r20.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r12.xyzw, 6).xyz;
    r19.xyz = r20.xyz * r19.xyz;
    r8.w = dot(r19.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r18.xyz = r15.yzw * r0.yyy + r19.xyz;
    r17.w = 0;
    r15.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r17.xyzw, r7.w).xyz;
    r0.y = sunConstants.globalProbeExposure * r4.w + -r8.w;
    r0.y = r2.y * r0.y + r8.w;
    r16.yzw = r15.yzw * r0.yyy + r16.yzw;
  }
  r0.y = r5.z * r2.z + r2.x;
  r0.y = log2(abs(r0.y));
  r0.y = r1.w * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r5.z * r2.z + r0.y;
  r0.y = saturate(-1 + r0.y);
  r19.xyz = r18.xyz * r2.www;
  r20.xyz = r3.xxx ? r19.yzx : 0;
  r2.yz = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r2.yz = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r2.yz, 0).xy;
  r15.yzw = r16.yzw * r0.yyy;
  r16.yzw = r15.yzw * r2.yyy;
  r21.xyz = r15.yzw * r2.zzz;
  r0.y = sqrt(r1.w);
  r0.y = r0.y * 0.5 + 0.5;
  r0.y = r0.y * r0.y;
  r2.y = 0.5 * r0.y;
  r0.y = -r0.y * 0.5 + 1;
  r2.z = r2.x * r0.y + r2.y;
  r0.y = r2.z * r0.y;
  r2.y = r2.y * r2.z;
  r2.z = cmp(0 < r3.w);
  if (r2.z != 0) {
    r2.z = cmp(0 < r6.w);
    if (r2.z != 0) {
      r2.z = sunConstants.specScale * r1.z;
      r2.z = r2.z * r3.z;
      if (sunConstants.sunCookieIndex != 0) {
        r22.xyz = eyeOffset.xyz + r11.xyz;
        r22.w = 1;
        r4.w = dot(sunConstants.sunCookieTransform[0].xyzw, r22.xyzw);
        r5.z = dot(sunConstants.sunCookieTransform[1].xyzw, r22.xyzw);
        r22.x = frac(r4.w);
        r22.y = frac(r5.z);
        r4.w = -1 + (int14)sunConstants.sunCookieIndex;
        r22.z = (uint)r4.w;
        r15.yzw = gCookieArray.SampleLevel(samplerLinear_s, r22.xyz, 0).xyz;
        r15.yzw = float3(-1,-1,-1) + r15.yzw;
        r15.yzw = sunConstants.sunCookieIntensity * r15.yzw + float3(1,1,1);
        r15.yzw = sunConstants.color.xyz * r15.yzw;
      } else {
        r15.yzw = sunConstants.color.xyz;
      }
      r4.w = viewmodelSunShadowRaw >> 16;
      r5.z = cmp(0 < (uint)r4.w);
      r5.z = r10.x ? r5.z : 0;
      if (r5.z != 0) {
        r4.w = (int)r4.w + numLights;
        r4.w = mad((int)r4.w, 15, -15);
        r5.z = abs(r3.y) * -0.200000003 + 0.400000006;
        r7.w = cmp(r3.y < 0);
        r7.w = r3.x ? r7.w : 0;
        r5.z = r7.w ? -r5.z : r5.z;
        r22.xyz = r12.xyz * r5.zzz + r11.xyz;
        r23.xyz = lightConstantsCB[r4.w].data[4].yzw;
        r23.w = lightConstantsCB[r4.w].data[5].x;
        r22.w = 1;
        r23.x = dot(r23.xyzw, r22.xyzw);
        r24.xyz = lightConstantsCB[r4.w].data[5].yzw;
        r24.w = lightConstantsCB[r4.w].data[6].x;
        r23.y = dot(r24.xyzw, r22.xyzw);
        r13.zw = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r23.x = lightConstantsCB[r4.w].data[9].w + r13.z;
        r23.y = lightConstantsCB[r4.w].data[10].x + r13.w;
        r13.zw = lightConstantsCB[r4.w].data[9].yz * r23.xy;
        r23.xy = lightConstantsCB[r4.w].data[3].yy / lightConstantsCB[r4.w].data[8].yw;
        r23.zw = float2(1,1) + -r23.xy;
        r23.zw = cmp(r13.zw >= r23.zw);
        r23.xy = cmp(r23.xy >= r13.zw);
        r23.xy = (int2)r23.xy | (int2)r23.zw;
        r5.z = (int)r23.y | (int)r23.x;
        if (r5.z == 0) {
          r23.xyz = lightConstantsCB[r4.w].data[6].yzw;
          r23.w = lightConstantsCB[r4.w].data[7].x;
          r5.z = dot(r23.xyzw, r22.xyzw);
          r13.zw = saturate(r13.zw);
          r22.x = r13.z * lightConstantsCB[r4.w].data[8].y + lightConstantsCB[r4.w].data[8].z;
          r22.y = r13.w * lightConstantsCB[r4.w].data[8].w + lightConstantsCB[r4.w].data[9].x;
          r5.z = lightConstantsCB[r4.w].data[10].y + r5.z;
          r5.z = r5.z / lightConstantsCB[r4.w].data[10].z;
          r5.z = max(6.10351563e-05, r5.z);
          r7.w = 0x0000ffff & (int)lightConstantsCB[r4.w].data[1].w;
          if (enableDitheredShadow != 0) {
            r23.x = -r13.x;
            r24.z = (uint)r7.w;
            r23.y = r14.x;
            r23.z = r13.x;
            r8.w = 0;
            r9.w = 0;
            while (true) {
              r12.w = cmp((int)r9.w >= 8);
              if (r12.w != 0) break;
              r25.x = dot(icb[r9.w+0].yx, r23.xy);
              r25.y = dot(icb[r9.w+0].yx, r23.yz);
              r24.xy = r25.xy * lightConstantsCB[r4.w].data[3].yy + r22.xy;
              r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r5.z).x;
              r8.w = r12.w * 0.125 + r8.w;
              r9.w = (int)r9.w + 1;
            }
          } else {
            r22.z = (uint)r7.w;
            r8.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r5.z).x;
          }
          r4.w = r8.w * r8.w;
          r4.w = r4.w * r8.w;
        } else {
          r4.w = 1;
        }
        r6.w = r6.w * r4.w;
      } else {
        r4.w = viewmodelSunShadowRaw & 0x0000ffff;
        r5.z = cmp(0 < (uint)r4.w);
        r7.w = ~(int)r10.x;
        r5.z = r5.z ? r7.w : 0;
        if (r5.z != 0) {
          r4.w = (int)r4.w + numLights;
          r4.w = mad((int)r4.w, 15, -15);
          r5.z = abs(r3.y) * -0.200000003 + 0.400000006;
          r7.w = cmp(r3.y < 0);
          r7.w = r3.x ? r7.w : 0;
          r5.z = r7.w ? -r5.z : r5.z;
          r22.xyz = r12.xyz * r5.zzz + r11.xyz;
          r23.xyz = lightConstantsCB[r4.w].data[4].yzw;
          r23.w = lightConstantsCB[r4.w].data[5].x;
          r22.w = 1;
          r23.x = dot(r23.xyzw, r22.xyzw);
          r24.xyz = lightConstantsCB[r4.w].data[5].yzw;
          r24.w = lightConstantsCB[r4.w].data[6].x;
          r23.y = dot(r24.xyzw, r22.xyzw);
          r13.zw = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r23.x = lightConstantsCB[r4.w].data[9].w + r13.z;
          r23.y = lightConstantsCB[r4.w].data[10].x + r13.w;
          r13.zw = lightConstantsCB[r4.w].data[9].yz * r23.xy;
          r23.xy = lightConstantsCB[r4.w].data[3].yy / lightConstantsCB[r4.w].data[8].yw;
          r23.zw = float2(1,1) + -r23.xy;
          r23.zw = cmp(r13.zw >= r23.zw);
          r23.xy = cmp(r23.xy >= r13.zw);
          r23.xy = (int2)r23.xy | (int2)r23.zw;
          r5.z = (int)r23.y | (int)r23.x;
          if (r5.z == 0) {
            r23.xyz = lightConstantsCB[r4.w].data[6].yzw;
            r23.w = lightConstantsCB[r4.w].data[7].x;
            r5.z = dot(r23.xyzw, r22.xyzw);
            r13.zw = saturate(r13.zw);
            r22.x = r13.z * lightConstantsCB[r4.w].data[8].y + lightConstantsCB[r4.w].data[8].z;
            r22.y = r13.w * lightConstantsCB[r4.w].data[8].w + lightConstantsCB[r4.w].data[9].x;
            r5.z = lightConstantsCB[r4.w].data[10].y + r5.z;
            r5.z = r5.z / lightConstantsCB[r4.w].data[10].z;
            r5.z = max(6.10351563e-05, r5.z);
            r7.w = 0x0000ffff & (int)lightConstantsCB[r4.w].data[1].w;
            if (enableDitheredShadow != 0) {
              r23.x = -r13.x;
              r24.z = (uint)r7.w;
              r23.y = r14.x;
              r23.z = r13.x;
              r8.w = 0;
              r9.w = 0;
              while (true) {
                r12.w = cmp((int)r9.w >= 8);
                if (r12.w != 0) break;
                r25.x = dot(icb[r9.w+0].yx, r23.xy);
                r25.y = dot(icb[r9.w+0].yx, r23.yz);
                r24.xy = r25.xy * lightConstantsCB[r4.w].data[3].yy + r22.xy;
                r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r5.z).x;
                r8.w = r12.w * 0.125 + r8.w;
                r9.w = (int)r9.w + 1;
              }
            } else {
              r22.z = (uint)r7.w;
              r8.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r5.z).x;
            }
            r4.w = r8.w * r8.w;
            r4.w = r4.w * r8.w;
          } else {
            r4.w = 1;
          }
          r6.w = r6.w * r4.w;
        }
      }
      r4.w = -r2.x * 0.5 + 1;
      r4.w = -r3.w * r4.w + 1;
      r4.w = r4.w * r4.w;
      r4.w = -r4.w * 0.620000005 + 0.620000005;
      r4.w = r4.w + -r3.w;
      r3.w = r1.w * r4.w + r3.w;
      r3.w = r3.w * r6.w;
      r22.xyz = r3.www * r15.yzw;
      r3.y = cmp(0 < r3.y);
      r18.xyz = r18.xyz * r2.www + r22.xyz;
      r22.xyz = -r11.xyz * r0.www + sunConstants.wldDir.xyz;
      r0.w = dot(r22.xyz, r22.xyz);
      r0.w = rsqrt(r0.w);
      r22.xyz = r22.xyz * r0.www;
      r0.w = dot(r22.xyz, r10.yzw);
      r2.w = dot(r12.xyz, r22.xyz);
      r4.w = abs(r2.w) * r1.z + -abs(r2.w);
      r2.w = abs(r2.w) * r4.w + 1;
      r3.z = r3.z * r0.y + r2.y;
      r2.w = r2.w * r2.w;
      r2.w = r2.w * r3.z;
      r2.w = rcp(r2.w);
      r2.z = r2.w * r2.z;
      r2.z = r6.w * r2.z;
      r2.z = 0.25 * r2.z;
      r22.yzw = r2.zzz * r15.yzw + r21.xyz;
      r0.w = saturate(1 + -r0.w);
      r2.w = r0.w * r0.w;
      r2.w = r2.w * r2.w;
      r0.w = r2.w * r0.w;
      r0.w = r2.z * r0.w;
      r23.xyz = r0.www * r15.yzw + r16.yzw;
      r15.yzw = r3.www * r15.yzw + r20.zxy;
      r24.xyz = r3.xxx ? r15.zwy : 0;
      r18.w = r20.z;
      r19.w = r24.z;
      r19.xyzw = r3.yyyy ? r18.xyzw : r19.xyzw;
      r20.zw = r23.xy;
      r24.zw = r16.yz;
      r18.xyzw = r3.yyyy ? r20.xyzw : r24.xyzw;
      r22.x = r23.z;
      r21.w = r16.w;
      r21.xyzw = r3.yyyy ? r22.yzwx : r21.xyzw;
      r20.z = r19.w;
      r20.xy = r18.xy;
      r16.yz = r18.zw;
      r16.w = r21.w;
    }
  }
  r0.w = (uint)renderTargetSize.x;
  r0.w = (int)r0.w + 7;
  r0.w = (uint)r0.w >> 3;
  r0.x = mad((int)r0.z, (int)r0.w, (int)r0.x);
  r0.x = (uint)r0.x << 5;
  r0.z = ~(int)r10.x;
  r18.x = -r13.x;
  r0.w = -r2.x * 0.5 + 1;
  r22.z = 1;
  r23.w = 1;
  r24.w = 1;
  r25.w = 1;
  r18.z = r13.x;
  r26.w = 1;
  r18.yw = r14.xx;
  r13.y = r18.w;
  r14.y = r18.x;
  r14.z = r13.x;
  r27.x = r14.x;
  r27.y = r18.x;
  r27.z = r13.x;
  r28.w = 1;
  r29.x = r14.x;
  r29.y = r18.x;
  r29.z = r13.x;
  r30.x = r14.x;
  r30.y = r18.x;
  r30.z = r13.x;
  r2.xzw = r19.xyz;
  r31.xyz = r20.zxy;
  r32.xyz = r16.yzw;
  r3.yzw = r21.xyz;
  r4.w = enableDitheredShadow;
  r5.z = 0;
  while (true) {
    r6.w = cmp((uint)r5.z >= numLights);
    if (r6.w != 0) break;
    r6.w = (uint)r5.z >> 5;
    r6.w = (int)r0.x + (int)r6.w;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r6.w, r6.w, l(0), t26.xxxx
  r6.w = samp0[]..swiz;
    r15.yzw = r2.xzw;
    r33.xyz = r31.xyz;
    r34.xyz = r32.xyz;
    r35.xyz = r3.yzw;
    r7.w = r4.w;
    r8.w = r6.w;
    while (true) {
      if (r8.w == 0) break;
      r9.w = firstbitlow((uint)r8.w);
      r12.w = 1 << (int)r9.w;
      r12.w = ~(int)r12.w;
      r8.w = (int)r8.w & (int)r12.w;
      r9.w = (int)r5.z + (int)r9.w;
      r9.w = (int)r9.w * 15;
      if (3 == 0) r12.w = 0; else if (3+24 < 32) {       r12.w = (uint)lightConstantsCB[r9.w].data[1].w << (32-(3 + 24)); r12.w = (uint)r12.w >> (32-3);      } else r12.w = (uint)lightConstantsCB[r9.w].data[1].w >> 24;
      r13.z = cmp((int)r12.w == 2);
      if (r13.z != 0) {
        if (3 == 0) r13.z = 0; else if (3+27 < 32) {         r13.z = (uint)lightConstantsCB[r9.w].data[1].w << (32-(3 + 27)); r13.z = (uint)r13.z >> (32-3);        } else r13.z = (uint)lightConstantsCB[r9.w].data[1].w >> 27;
        r36.xy = lightConstantsCB[r9.w].data[3].zw + -r11.xy;
        r36.z = lightConstantsCB[r9.w].data[4].x + -r11.z;
        r13.w = dot(r36.xyz, r36.xyz);
        r13.w = rsqrt(r13.w);
        r37.xyz = r36.xyz * r13.www;
        r14.w = lightConstantsCB[r9.w].data[1].z * r1.z;
        r14.w = 0.25 * r14.w;
        r17.w = dot(r12.xyz, r37.xyz);
        r19.w = saturate(r17.w);
        r20.w = r3.x ? abs(r17.w) : r19.w;
        r21.w = cmp(0 < r20.w);
        if (r21.w != 0) {
          r37.xyz = lightConstantsCB[r9.w].data[7].yzw;
          r37.w = lightConstantsCB[r9.w].data[8].x;
          r21.w = dot(r37.xyzw, r11.xyzw);
          r22.w = cmp(r21.w < 1);
          if (r22.w != 0) {
            r38.xyz = float3(1,1,1);
            r22.w = 0;
          } else {
            r39.xyz = lightConstantsCB[r9.w].data[0].xyz + -r11.xyz;
            r27.w = lightConstantsCB[r9.w].data[3].x * lightConstantsCB[r9.w].data[3].x;
            r29.w = dot(r39.xyz, r39.xyz);
            r27.w = r27.w / r29.w;
            r27.w = min(1, r27.w);
            r39.xy = saturate(r21.ww * lightConstantsCB[r9.w].data[2].xz + lightConstantsCB[r9.w].data[2].yw);
            r39.zw = r39.xy * r39.xy;
            r39.xy = r39.xy * float2(-2,-2) + float2(3,3);
            r39.xy = r39.zw * r39.xy;
            r27.w = r39.x * r27.w;
            r27.w = r27.w * r39.y;
            r39.xyz = lightConstantsCB[r9.w].data[4].yzw;
            r39.w = lightConstantsCB[r9.w].data[5].x;
            r39.x = dot(r39.xyzw, r11.xyzw);
            r40.xyz = lightConstantsCB[r9.w].data[5].yzw;
            r40.w = lightConstantsCB[r9.w].data[6].x;
            r39.y = dot(r40.xyzw, r11.xyzw);
            r22.xy = r39.xy / r21.ww;
            r21.w = cmp(lightConstantsCB[r9.w].data[10].w < 0.00048828125);
            if (r21.w != 0) {
              r39.xy = saturate(abs(r22.xy) * lightConstantsCB[r9.w].data[12].xy + lightConstantsCB[r9.w].data[12].zw);
              r39.zw = r39.xy * r39.xy;
              r39.xy = r39.xy * float2(-2,-2) + float2(3,3);
              r39.xy = r39.zw * r39.xy;
              r21.w = r39.x * r39.y;
            } else {
              r39.xyzw = saturate(lightConstantsCB[r9.w].data[11].xyzw * abs(r22.yyxx));
              r39.xyzw = log2(r39.xyzw);
              r39.xyzw = lightConstantsCB[r9.w].data[12].zzzz * r39.xyzw;
              r39.xyzw = exp2(r39.xyzw);
              r39.xy = r39.xy + r39.zw;
              r39.xy = log2(r39.xy);
              r39.xy = lightConstantsCB[r9.w].data[12].ww * r39.xy;
              r39.xy = exp2(r39.xy);
              r29.w = lightConstantsCB[r9.w].data[12].x * r39.x;
              r30.w = lightConstantsCB[r9.w].data[12].y * r39.y + -1;
              r29.w = lightConstantsCB[r9.w].data[12].y * r39.y + -r29.w;
              r29.w = saturate(r30.w / r29.w);
              r30.w = r29.w * r29.w;
              r29.w = r29.w * -2 + 3;
              r21.w = r30.w * r29.w;
            }
            r22.w = r27.w * r21.w;
            r21.w = 255 & (int)lightConstantsCB[r9.w].data[14].w;
            if (r21.w != 0) {
              r27.w = dot(lightConstantsCB[r9.w].data[13].xyz, r22.xyz);
              r39.x = lightConstantsCB[r9.w].data[13].w;
              r39.yz = lightConstantsCB[r9.w].data[14].xy;
              r22.x = dot(r39.xyz, r22.xyz);
              r39.x = frac(r27.w);
              r39.y = frac(r22.x);
              r21.w = (int)r21.w + -1;
              r39.z = (uint)r21.w;
              r38.xyz = gCookieArray.SampleLevel(samplerLinear_s, r39.xyz, 0).xyz;
            } else {
              r38.xyz = float3(1,1,1);
            }
          }
          r39.x = lightConstantsCB[r9.w].data[0].w;
          r39.yz = lightConstantsCB[r9.w].data[1].xy;
          r38.xyz = r39.xyz * r38.xyz;
          r21.w = cmp(0 < r22.w);
          if (r21.w != 0) {
            r13.z = cmp((int)r13.z != 1);
            if (r13.z != 0) {
              r13.z = abs(r17.w) * -0.200000003 + 0.400000006;
              r21.w = cmp(r17.w < 0);
              r21.w = r3.x ? r21.w : 0;
              r13.z = r21.w ? -r13.z : r13.z;
              r23.xyz = r12.xyz * r13.zzz + r11.xyz;
              r39.xyz = lightConstantsCB[r9.w].data[6].yzw;
              r39.w = lightConstantsCB[r9.w].data[7].x;
              r13.z = dot(r39.xyzw, r23.xyzw);
              r21.w = dot(r37.xyzw, r23.xyzw);
              r22.x = cmp(r21.w >= r13.z);
              if (r22.x != 0) {
                r37.xyz = lightConstantsCB[r9.w].data[4].yzw;
                r37.w = lightConstantsCB[r9.w].data[5].x;
                r22.x = dot(r37.xyzw, r23.xyzw);
                r37.xyz = lightConstantsCB[r9.w].data[5].yzw;
                r37.w = lightConstantsCB[r9.w].data[6].x;
                r22.y = dot(r37.xyzw, r23.xyzw);
                r22.xy = r22.xy / r21.ww;
                r22.xy = saturate(r22.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                r23.x = r22.x * lightConstantsCB[r9.w].data[8].y + lightConstantsCB[r9.w].data[8].z;
                r23.y = r22.y * lightConstantsCB[r9.w].data[8].w + lightConstantsCB[r9.w].data[9].x;
                r13.z = r13.z / r21.w;
                r13.z = max(6.10351563e-05, r13.z);
                r21.w = 0x0000ffff & (int)lightConstantsCB[r9.w].data[1].w;
                if (r7.w != 0) {
                  r37.z = (uint)r21.w;
                  r22.xy = float2(0,0);
                  while (true) {
                    r27.w = cmp((int)r22.y >= 8);
                    if (r27.w != 0) break;
                    r39.x = dot(icb[r22.y+0].yx, r18.xy);
                    r39.y = dot(icb[r22.y+0].yx, r18.yz);
                    r37.xy = r39.xy * lightConstantsCB[r9.w].data[3].yy + r23.xy;
                    r27.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r37.xyz, r13.z).x;
                    r22.x = r27.w * 0.125 + r22.x;
                    r22.y = (int)r22.y + 1;
                  }
                } else {
                  r23.z = (uint)r21.w;
                  r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r13.z).x;
                }
                r13.z = r22.x * r22.x;
                r13.z = r13.z * r22.x;
              } else {
                r13.z = 1;
              }
            } else {
              r13.z = 1;
            }
            r13.z = r22.w * r13.z;
            r21.w = cmp(0 < r13.z);
            if (r21.w != 0) {
              if (4 == 0) r21.w = 0; else if (4+16 < 32) {               r21.w = (uint)lightConstantsCB[r9.w].data[1].w << (32-(4 + 16)); r21.w = (uint)r21.w >> (32-4);              } else r21.w = (uint)lightConstantsCB[r9.w].data[1].w >> 16;
              r22.y = cmp(0 < (uint)r21.w);
              r22.y = r10.x ? r22.y : 0;
              if (r22.y != 0) {
                r21.w = (int)r21.w + numLights;
                r21.w = mad((int)r21.w, 15, -15);
                r22.y = abs(r17.w) * -0.200000003 + 0.400000006;
                r22.w = cmp(r17.w < 0);
                r22.w = r3.x ? r22.w : 0;
                r22.y = r22.w ? -r22.y : r22.y;
                r24.xyz = r12.xyz * r22.yyy + r11.xyz;
                r37.xyz = lightConstantsCB[r21.w].data[6].yzw;
                r37.w = lightConstantsCB[r21.w].data[7].x;
                r22.y = dot(r37.xyzw, r24.xyzw);
                r37.xyz = lightConstantsCB[r21.w].data[7].yzw;
                r37.w = lightConstantsCB[r21.w].data[8].x;
                r22.w = dot(r37.xyzw, r24.xyzw);
                r23.x = cmp(r22.w < r22.y);
                if (r23.x == 0) {
                  r37.xyz = lightConstantsCB[r21.w].data[4].yzw;
                  r37.w = lightConstantsCB[r21.w].data[5].x;
                  r37.x = dot(r37.xyzw, r24.xyzw);
                  r39.xyz = lightConstantsCB[r21.w].data[5].yzw;
                  r39.w = lightConstantsCB[r21.w].data[6].x;
                  r37.y = dot(r39.xyzw, r24.xyzw);
                  r23.yz = r37.xy / r22.ww;
                  r23.yz = r23.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                  r24.x = lightConstantsCB[r21.w].data[9].w + r23.y;
                  r24.y = lightConstantsCB[r21.w].data[10].x + r23.z;
                  r23.yz = lightConstantsCB[r21.w].data[9].yz * r24.xy;
                  r24.xy = lightConstantsCB[r21.w].data[3].yy / lightConstantsCB[r21.w].data[8].yw;
                  r37.xy = float2(1,1) + -r24.xy;
                  r37.xy = cmp(r23.yz >= r37.xy);
                  r24.xy = cmp(r24.xy >= r23.yz);
                  r24.xy = (int2)r24.xy | (int2)r37.xy;
                  r24.x = (int)r24.y | (int)r24.x;
                  if (r24.x == 0) {
                    r23.yz = saturate(r23.yz);
                    r37.x = r23.y * lightConstantsCB[r21.w].data[8].y + lightConstantsCB[r21.w].data[8].z;
                    r37.y = r23.z * lightConstantsCB[r21.w].data[8].w + lightConstantsCB[r21.w].data[9].x;
                    r23.y = lightConstantsCB[r21.w].data[10].z * r22.w;
                    r22.y = lightConstantsCB[r21.w].data[10].y * r22.w + r22.y;
                    r22.y = r22.y / r23.y;
                  }
                } else {
                  r24.x = -1;
                }
                r22.w = (int)r23.x | (int)r24.x;
                if (r22.w == 0) {
                  r22.y = max(6.10351563e-05, r22.y);
                  r22.w = 0x0000ffff & (int)lightConstantsCB[r21.w].data[1].w;
                  if (r7.w != 0) {
                    r23.z = (uint)r22.w;
                    r24.xy = float2(0,0);
                    while (true) {
                      r24.z = cmp((int)r24.y >= 8);
                      if (r24.z != 0) break;
                      r39.x = dot(icb[r24.y+0].yx, r18.xw);
                      r39.y = dot(icb[r24.y+0].xy, r13.xy);
                      r23.xy = r39.xy * lightConstantsCB[r21.w].data[3].yy + r37.xy;
                      r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r22.y).x;
                      r24.x = r23.x * 0.125 + r24.x;
                      r24.y = (int)r24.y + 1;
                    }
                  } else {
                    r37.z = (uint)r22.w;
                    r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r37.xyz, r22.y).x;
                  }
                  r21.w = r24.x * r24.x;
                  r21.w = r21.w * r24.x;
                } else {
                  r21.w = 1;
                }
                r13.z = r21.w * r13.z;
              } else {
                if (4 == 0) r21.w = 0; else if (4+20 < 32) {                 r21.w = (uint)lightConstantsCB[r9.w].data[1].w << (32-(4 + 20)); r21.w = (uint)r21.w >> (32-4);                } else r21.w = (uint)lightConstantsCB[r9.w].data[1].w >> 20;
                r22.y = cmp(0 < (uint)r21.w);
                r22.y = r22.y ? r0.z : 0;
                if (r22.y != 0) {
                  r21.w = (int)r21.w + numLights;
                  r21.w = mad((int)r21.w, 15, -15);
                  r22.y = abs(r17.w) * -0.200000003 + 0.400000006;
                  r22.w = cmp(r17.w < 0);
                  r22.w = r3.x ? r22.w : 0;
                  r22.y = r22.w ? -r22.y : r22.y;
                  r25.xyz = r12.xyz * r22.yyy + r11.xyz;
                  r37.xyz = lightConstantsCB[r21.w].data[6].yzw;
                  r37.w = lightConstantsCB[r21.w].data[7].x;
                  r22.y = dot(r37.xyzw, r25.xyzw);
                  r37.xyz = lightConstantsCB[r21.w].data[7].yzw;
                  r37.w = lightConstantsCB[r21.w].data[8].x;
                  r22.w = dot(r37.xyzw, r25.xyzw);
                  r23.x = cmp(r22.w < r22.y);
                  if (r23.x == 0) {
                    r37.xyz = lightConstantsCB[r21.w].data[4].yzw;
                    r37.w = lightConstantsCB[r21.w].data[5].x;
                    r37.x = dot(r37.xyzw, r25.xyzw);
                    r39.xyz = lightConstantsCB[r21.w].data[5].yzw;
                    r39.w = lightConstantsCB[r21.w].data[6].x;
                    r37.y = dot(r39.xyzw, r25.xyzw);
                    r23.yz = r37.xy / r22.ww;
                    r23.yz = r23.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                    r25.x = lightConstantsCB[r21.w].data[9].w + r23.y;
                    r25.y = lightConstantsCB[r21.w].data[10].x + r23.z;
                    r23.yz = lightConstantsCB[r21.w].data[9].yz * r25.xy;
                    r24.yz = lightConstantsCB[r21.w].data[3].yy / lightConstantsCB[r21.w].data[8].yw;
                    r25.xy = float2(1,1) + -r24.yz;
                    r25.xy = cmp(r23.yz >= r25.xy);
                    r24.yz = cmp(r24.yz >= r23.yz);
                    r24.yz = (int2)r24.yz | (int2)r25.xy;
                    r24.y = (int)r24.z | (int)r24.y;
                    if (r24.y == 0) {
                      r23.yz = saturate(r23.yz);
                      r25.x = r23.y * lightConstantsCB[r21.w].data[8].y + lightConstantsCB[r21.w].data[8].z;
                      r25.y = r23.z * lightConstantsCB[r21.w].data[8].w + lightConstantsCB[r21.w].data[9].x;
                      r23.y = lightConstantsCB[r21.w].data[10].z * r22.w;
                      r22.y = lightConstantsCB[r21.w].data[10].y * r22.w + r22.y;
                      r22.y = r22.y / r23.y;
                    }
                  } else {
                    r24.y = -1;
                  }
                  r22.w = (int)r23.x | (int)r24.y;
                  if (r22.w == 0) {
                    r22.y = max(6.10351563e-05, r22.y);
                    r22.w = 0x0000ffff & (int)lightConstantsCB[r21.w].data[1].w;
                    if (r7.w != 0) {
                      r23.z = (uint)r22.w;
                      r24.yz = float2(0,0);
                      while (true) {
                        r27.w = cmp((int)r24.z >= 8);
                        if (r27.w != 0) break;
                        r37.x = dot(icb[r24.z+0].xy, r27.xy);
                        r37.y = dot(icb[r24.z+0].yx, r27.xz);
                        r23.xy = r37.xy * lightConstantsCB[r21.w].data[3].yy + r25.xy;
                        r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r22.y).x;
                        r24.y = r23.x * 0.125 + r24.y;
                        r24.z = (int)r24.z + 1;
                      }
                    } else {
                      r25.z = (uint)r22.w;
                      r24.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r22.y).x;
                    }
                    r21.w = r24.y * r24.y;
                    r21.w = r21.w * r24.y;
                  } else {
                    r21.w = 1;
                  }
                  r13.z = r21.w * r13.z;
                }
              }
              r21.w = -r20.w * r0.w + 1;
              r21.w = r21.w * r21.w;
              r21.w = -r21.w * 0.620000005 + 0.620000005;
              r21.w = r21.w + -r20.w;
              r20.w = r1.w * r21.w + r20.w;
              r20.w = r20.w * r13.z;
              r17.w = cmp(0 < r17.w);
              r23.xyz = r20.www * r38.xyz + r15.yzw;
              r25.xyz = r36.xyz * r13.www + r10.yzw;
              r13.w = dot(r25.xyz, r25.xyz);
              r13.w = rsqrt(r13.w);
              r25.xyz = r25.xyz * r13.www;
              r13.w = dot(r25.xyz, r10.yzw);
              r21.w = dot(r12.xyz, r25.xyz);
              r22.y = abs(r21.w) * r1.z + -abs(r21.w);
              r21.w = abs(r21.w) * r22.y + 1;
              r22.y = r19.w * r0.y + r2.y;
              r21.w = r21.w * r21.w;
              r21.w = r21.w * r22.y;
              r21.w = rcp(r21.w);
              r14.w = r19.w * r14.w;
              r14.w = r21.w * r14.w;
              r13.z = r14.w * r13.z;
              r25.xyz = r13.zzz * r38.xyz + r35.xyz;
              r13.w = saturate(1 + -r13.w);
              r14.w = r13.w * r13.w;
              r14.w = r14.w * r14.w;
              r13.w = r14.w * r13.w;
              r13.z = r13.z * r13.w;
              r36.xyz = r13.zzz * r38.xyz + r34.xyz;
              r37.xyz = r20.www * r38.xyz + r33.xyz;
              r37.xyz = r3.xxx ? r37.xyz : r33.xyz;
              r15.yzw = r17.www ? r23.xyz : r15.yzw;
              r33.xyz = r17.www ? r33.xyz : r37.xyz;
              r34.xyz = r17.www ? r36.xyz : r34.xyz;
              r35.xyz = r17.www ? r25.xyz : r35.xyz;
            }
          }
        }
      } else {
        r12.w = cmp((int)r12.w == 4);
        if (r12.w != 0) {
          if (3 == 0) r12.w = 0; else if (3+27 < 32) {           r12.w = (uint)lightConstantsCB[r9.w].data[1].w << (32-(3 + 27)); r12.w = (uint)r12.w >> (32-3);          } else r12.w = (uint)lightConstantsCB[r9.w].data[1].w >> 27;
          r13.z = lightConstantsCB[r9.w].data[1].z * r1.z;
          r13.z = 0.25 * r13.z;
          r13.w = cmp(0 < lightConstantsCB[r9.w].data[6].y);
          r23.xy = lightConstantsCB[r9.w].data[5].zw;
          r23.z = lightConstantsCB[r9.w].data[6].x;
          r25.xyz = -r23.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r9.w].data[0].xyz;
          r36.xyz = r25.xyz + -r11.xyz;
          r14.w = dot(r23.xyz, r17.xyz);
          r17.w = dot(r23.xyz, r36.xyz);
          r19.w = dot(r17.xyz, r36.xyz);
          r20.w = -r14.w * r14.w + lightConstantsCB[r9.w].data[6].y;
          r14.w = r14.w * r19.w + -r17.w;
          r17.w = saturate(-r17.w / lightConstantsCB[r9.w].data[6].y);
          r14.w = saturate(r14.w / r20.w);
          r19.w = r20.w / lightConstantsCB[r9.w].data[6].y;
          r19.w = 10 * r19.w;
          r19.w = min(1, r19.w);
          r14.w = r14.w + -r17.w;
          r14.w = r19.w * r14.w + r17.w;
          r36.xyz = r14.www * r23.xyz + r25.xyz;
          r23.xyz = r17.www * r23.xyz + r25.xyz;
          r23.xyz = r13.www ? r23.xyz : lightConstantsCB[r9.w].data[0].xyz;
          r25.xyz = r13.www ? r36.xyz : lightConstantsCB[r9.w].data[0].xyz;
          r25.xyz = r25.xyz + -r11.xyz;
          r23.xyz = r23.xyz + -r11.xyz;
          r13.w = dot(r25.xyz, r25.xyz);
          r13.w = rsqrt(r13.w);
          r36.xyz = r25.xyz * r13.www;
          r14.w = dot(r23.xyz, r23.xyz);
          r17.w = rsqrt(r14.w);
          r23.xyz = r23.xyz * r17.www;
          r17.w = dot(r12.xyz, r23.xyz);
          r19.w = saturate(r17.w);
          r19.w = r3.x ? abs(r17.w) : r19.w;
          r20.w = cmp(0 < r19.w);
          if (r20.w != 0) {
            r20.w = sqrt(r14.w);
            r21.w = lightConstantsCB[r9.w].data[3].x * lightConstantsCB[r9.w].data[3].x;
            r14.w = r21.w / r14.w;
            r14.w = min(1, r14.w);
            r22.yw = saturate(r20.ww * lightConstantsCB[r9.w].data[2].xz + lightConstantsCB[r9.w].data[2].yw);
            r23.xy = r22.yw * r22.yw;
            r22.yw = r22.yw * float2(-2,-2) + float2(3,3);
            r22.yw = r23.xy * r22.yw;
            r14.w = r22.y * r14.w;
            r14.w = r14.w * r22.w;
            r20.w = cmp(0 < r14.w);
            if (r20.w != 0) {
              r12.w = cmp((int)r12.w != 1);
              if (r12.w != 0) {
                r12.w = abs(r17.w) * -0.200000003 + 0.400000006;
                r20.w = cmp(r17.w < 0);
                r20.w = r3.x ? r20.w : 0;
                r12.w = r20.w ? -r12.w : r12.w;
                r23.xyz = r12.xyz * r12.www + r11.xyz;
                r23.xyz = -lightConstantsCB[r9.w].data[4].yzw + r23.xyz;
                r12.w = max(abs(r23.y), abs(r23.z));
                r12.w = max(abs(r23.x), r12.w);
                r12.w = lightConstantsCB[r9.w].data[5].x / r12.w;
                r12.w = lightConstantsCB[r9.w].data[5].y + r12.w;
                r20.w = dot(r23.xyz, r23.xyz);
                r20.w = rsqrt(r20.w);
                r12.w = max(6.10351563e-05, r12.w);
                r21.w = 0x0000ffff & (int)lightConstantsCB[r9.w].data[1].w;
                r37.w = (uint)r21.w;
                r21.w = 0;
                r22.y = 0;
                while (true) {
                  r22.w = cmp((int)r22.y >= 8);
                  if (r22.w != 0) break;
                  r38.y = dot(icb[r22.y+0].xy, r14.xy);
                  r38.z = dot(icb[r22.y+0].yx, r14.xz);
                  r38.yz = lightConstantsCB[r9.w].data[3].yy * r38.yz;
                  r38.x = r38.y * r16.x;
                  r38.w = r38.y * r15.x;
                  r37.xyz = r23.xyz * r20.www + r38.xzw;
                  r22.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r37.xyzw, r12.w).x;
                  r21.w = r22.w * 0.125 + r21.w;
                  r22.y = (int)r22.y + 1;
                }
              } else {
                r21.w = 1;
              }
              r12.w = r21.w * r14.w;
              r14.w = cmp(0 < r12.w);
              if (r14.w != 0) {
                if (4 == 0) r14.w = 0; else if (4+16 < 32) {                 r14.w = (uint)lightConstantsCB[r9.w].data[1].w << (32-(4 + 16)); r14.w = (uint)r14.w >> (32-4);                } else r14.w = (uint)lightConstantsCB[r9.w].data[1].w >> 16;
                r20.w = cmp(0 < (uint)r14.w);
                r20.w = r10.x ? r20.w : 0;
                if (r20.w != 0) {
                  r14.w = (int)r14.w + numLights;
                  r14.w = mad((int)r14.w, 15, -15);
                  r20.w = abs(r17.w) * -0.200000003 + 0.400000006;
                  r22.y = cmp(r17.w < 0);
                  r22.y = r3.x ? r22.y : 0;
                  r20.w = r22.y ? -r20.w : r20.w;
                  r26.xyz = r12.xyz * r20.www + r11.xyz;
                  r37.xyz = lightConstantsCB[r14.w].data[6].yzw;
                  r37.w = lightConstantsCB[r14.w].data[7].x;
                  r20.w = dot(r37.xyzw, r26.xyzw);
                  r37.xyz = lightConstantsCB[r14.w].data[7].yzw;
                  r37.w = lightConstantsCB[r14.w].data[8].x;
                  r22.y = dot(r37.xyzw, r26.xyzw);
                  r22.w = cmp(r22.y < r20.w);
                  if (r22.w == 0) {
                    r37.xyz = lightConstantsCB[r14.w].data[4].yzw;
                    r37.w = lightConstantsCB[r14.w].data[5].x;
                    r23.x = dot(r37.xyzw, r26.xyzw);
                    r37.xyz = lightConstantsCB[r14.w].data[5].yzw;
                    r37.w = lightConstantsCB[r14.w].data[6].x;
                    r23.y = dot(r37.xyzw, r26.xyzw);
                    r23.xy = r23.xy / r22.yy;
                    r23.xy = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r26.x = lightConstantsCB[r14.w].data[9].w + r23.x;
                    r26.y = lightConstantsCB[r14.w].data[10].x + r23.y;
                    r23.xy = lightConstantsCB[r14.w].data[9].yz * r26.xy;
                    r26.xy = lightConstantsCB[r14.w].data[3].yy / lightConstantsCB[r14.w].data[8].yw;
                    r37.xy = float2(1,1) + -r26.xy;
                    r37.xy = cmp(r23.xy >= r37.xy);
                    r26.xy = cmp(r26.xy >= r23.xy);
                    r26.xy = (int2)r26.xy | (int2)r37.xy;
                    r23.z = (int)r26.y | (int)r26.x;
                    if (r23.z == 0) {
                      r23.xy = saturate(r23.xy);
                      r26.x = r23.x * lightConstantsCB[r14.w].data[8].y + lightConstantsCB[r14.w].data[8].z;
                      r26.y = r23.y * lightConstantsCB[r14.w].data[8].w + lightConstantsCB[r14.w].data[9].x;
                      r23.x = lightConstantsCB[r14.w].data[10].z * r22.y;
                      r20.w = lightConstantsCB[r14.w].data[10].y * r22.y + r20.w;
                      r20.w = r20.w / r23.x;
                    }
                  } else {
                    r23.z = -1;
                  }
                  r22.y = (int)r22.w | (int)r23.z;
                  if (r22.y == 0) {
                    r20.w = max(6.10351563e-05, r20.w);
                    r22.y = 0x0000ffff & (int)lightConstantsCB[r14.w].data[1].w;
                    if (r7.w != 0) {
                      r23.z = (uint)r22.y;
                      r22.w = 0;
                      r24.z = 0;
                      while (true) {
                        r27.w = cmp((int)r24.z >= 8);
                        if (r27.w != 0) break;
                        r37.x = dot(icb[r24.z+0].xy, r29.xy);
                        r37.y = dot(icb[r24.z+0].yx, r29.xz);
                        r23.xy = r37.xy * lightConstantsCB[r14.w].data[3].yy + r26.xy;
                        r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r20.w).x;
                        r22.w = r23.x * 0.125 + r22.w;
                        r24.z = (int)r24.z + 1;
                      }
                    } else {
                      r26.z = (uint)r22.y;
                      r22.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r20.w).x;
                    }
                    r14.w = r22.w * r22.w;
                    r14.w = r14.w * r22.w;
                  } else {
                    r14.w = 1;
                  }
                  r12.w = r14.w * r12.w;
                } else {
                  if (4 == 0) r14.w = 0; else if (4+20 < 32) {                   r14.w = (uint)lightConstantsCB[r9.w].data[1].w << (32-(4 + 20)); r14.w = (uint)r14.w >> (32-4);                  } else r14.w = (uint)lightConstantsCB[r9.w].data[1].w >> 20;
                  r20.w = cmp(0 < (uint)r14.w);
                  r20.w = r20.w ? r0.z : 0;
                  if (r20.w != 0) {
                    r14.w = (int)r14.w + numLights;
                    r14.w = mad((int)r14.w, 15, -15);
                    r20.w = abs(r17.w) * -0.200000003 + 0.400000006;
                    r22.y = cmp(r17.w < 0);
                    r22.y = r3.x ? r22.y : 0;
                    r20.w = r22.y ? -r20.w : r20.w;
                    r28.xyz = r12.xyz * r20.www + r11.xyz;
                    r37.xyz = lightConstantsCB[r14.w].data[6].yzw;
                    r37.w = lightConstantsCB[r14.w].data[7].x;
                    r20.w = dot(r37.xyzw, r28.xyzw);
                    r37.xyz = lightConstantsCB[r14.w].data[7].yzw;
                    r37.w = lightConstantsCB[r14.w].data[8].x;
                    r22.y = dot(r37.xyzw, r28.xyzw);
                    r23.x = cmp(r22.y < r20.w);
                    if (r23.x == 0) {
                      r37.xyz = lightConstantsCB[r14.w].data[4].yzw;
                      r37.w = lightConstantsCB[r14.w].data[5].x;
                      r26.x = dot(r37.xyzw, r28.xyzw);
                      r37.xyz = lightConstantsCB[r14.w].data[5].yzw;
                      r37.w = lightConstantsCB[r14.w].data[6].x;
                      r26.y = dot(r37.xyzw, r28.xyzw);
                      r23.yz = r26.xy / r22.yy;
                      r23.yz = r23.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                      r26.x = lightConstantsCB[r14.w].data[9].w + r23.y;
                      r26.y = lightConstantsCB[r14.w].data[10].x + r23.z;
                      r23.yz = lightConstantsCB[r14.w].data[9].yz * r26.xy;
                      r26.xy = lightConstantsCB[r14.w].data[3].yy / lightConstantsCB[r14.w].data[8].yw;
                      r28.xy = float2(1,1) + -r26.xy;
                      r28.xy = cmp(r23.yz >= r28.xy);
                      r26.xy = cmp(r26.xy >= r23.yz);
                      r26.xy = (int2)r26.xy | (int2)r28.xy;
                      r24.z = (int)r26.y | (int)r26.x;
                      if (r24.z == 0) {
                        r23.yz = saturate(r23.yz);
                        r26.x = r23.y * lightConstantsCB[r14.w].data[8].y + lightConstantsCB[r14.w].data[8].z;
                        r26.y = r23.z * lightConstantsCB[r14.w].data[8].w + lightConstantsCB[r14.w].data[9].x;
                        r23.y = lightConstantsCB[r14.w].data[10].z * r22.y;
                        r20.w = lightConstantsCB[r14.w].data[10].y * r22.y + r20.w;
                        r20.w = r20.w / r23.y;
                      }
                    } else {
                      r24.z = -1;
                    }
                    r22.y = (int)r23.x | (int)r24.z;
                    if (r22.y == 0) {
                      r20.w = max(6.10351563e-05, r20.w);
                      r22.y = 0x0000ffff & (int)lightConstantsCB[r14.w].data[1].w;
                      if (r7.w != 0) {
                        r23.z = (uint)r22.y;
                        r24.z = 0;
                        r27.w = 0;
                        while (true) {
                          r28.x = cmp((int)r27.w >= 8);
                          if (r28.x != 0) break;
                          r28.x = dot(icb[r27.w+0].xy, r30.xy);
                          r28.y = dot(icb[r27.w+0].yx, r30.xz);
                          r23.xy = r28.xy * lightConstantsCB[r14.w].data[3].yy + r26.xy;
                          r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r20.w).x;
                          r24.z = r23.x * 0.125 + r24.z;
                          r27.w = (int)r27.w + 1;
                        }
                      } else {
                        r26.z = (uint)r22.y;
                        r24.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r20.w).x;
                      }
                      r14.w = r24.z * r24.z;
                      r14.w = r14.w * r24.z;
                    } else {
                      r14.w = 1;
                    }
                    r12.w = r14.w * r12.w;
                  }
                }
                r14.w = -r19.w * r0.w + 1;
                r14.w = r14.w * r14.w;
                r14.w = -r14.w * 0.620000005 + 0.620000005;
                r14.w = r14.w + -r19.w;
                r14.w = r1.w * r14.w + r19.w;
                r14.w = r14.w * r12.w;
                r23.x = lightConstantsCB[r9.w].data[0].w;
                r23.yz = lightConstantsCB[r9.w].data[1].xy;
                r9.w = cmp(0 < r17.w);
                r26.xyz = r14.www * r23.xyz + r15.yzw;
                r17.w = saturate(dot(r12.xyz, r36.xyz));
                r25.xyz = r25.xyz * r13.www + r10.yzw;
                r13.w = dot(r25.xyz, r25.xyz);
                r13.w = rsqrt(r13.w);
                r25.xyz = r25.xyz * r13.www;
                r13.w = dot(r25.xyz, r10.yzw);
                r19.w = dot(r12.xyz, r25.xyz);
                r20.w = abs(r19.w) * r1.z + -abs(r19.w);
                r19.w = abs(r19.w) * r20.w + 1;
                r20.w = r17.w * r0.y + r2.y;
                r19.w = r19.w * r19.w;
                r19.w = r19.w * r20.w;
                r19.w = rcp(r19.w);
                r13.z = r17.w * r13.z;
                r13.z = r19.w * r13.z;
                r12.w = r13.z * r12.w;
                r25.xyz = r12.www * r23.xyz + r35.xyz;
                r13.z = saturate(1 + -r13.w);
                r13.w = r13.z * r13.z;
                r13.w = r13.w * r13.w;
                r13.z = r13.z * r13.w;
                r12.w = r13.z * r12.w;
                r28.xyz = r12.www * r23.xyz + r34.xyz;
                r23.xyz = r14.www * r23.xyz + r33.xyz;
                r23.xyz = r3.xxx ? r23.xyz : r33.xyz;
                r15.yzw = r9.www ? r26.xyz : r15.yzw;
                r33.xyz = r9.www ? r33.xyz : r23.xyz;
                r34.xyz = r9.www ? r28.xyz : r34.xyz;
                r35.xyz = r9.www ? r25.xyz : r35.xyz;
              }
            }
          }
        }
      }
    }
    r2.xzw = r15.yzw;
    r31.xyz = r33.xyz;
    r32.xyz = r34.xyz;
    r3.yzw = r35.xyz;
    r5.z = (int)r5.z + 32;
  }
  r0.xyz = r5.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r1.z = (uint)r0.y;
  r5.xyz = r6.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r5.x;
  r1.w = cmp((int)r1.z == (int)r1.w);
  r5.xy = r1.ww ? r5.yz : float2(-1,0);
  r6.xyz = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r6.x;
  r1.w = cmp((int)r1.z == (int)r1.w);
  r5.zw = r1.ww ? r6.yz : float2(-1,0);
  r6.xyz = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r6.x;
  r1.w = cmp((int)r1.z == (int)r1.w);
  r6.xy = r1.ww ? r6.yz : float2(-1,0);
  r7.xyz = r9.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r7.x;
  r1.z = cmp((int)r1.z == (int)r1.w);
  r1.zw = r1.zz ? r7.yz : float2(-1,0);
  r7.xy = r5.xz;
  r7.z = r6.x;
  r7.w = r1.z;
  r7.xyzw = r7.xyzw + -r0.xxxx;
  r7.xyzw = cmp(abs(r7.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r7.xyzw = r7.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r1.z = r7.x + r7.y;
  r1.z = r1.z + r7.z;
  r1.z = r1.z + r7.w;
  r2.y = r7.y * r5.w;
  r2.y = r7.x * r5.y + r2.y;
  r2.y = r7.z * r6.y + r2.y;
  r1.w = r7.w * r1.w + r2.y;
  r0.w = r1.w / r1.z;
  r1.z = cmp(0 >= r1.z);
  r0.yz = r1.zz ? float2(0,0) : r0.zw;
  r1.zw = (int2)r1.xy & int2(1,1);
  r0.w = cmp((int)r1.w == (int)r1.z);
  r0.xyz = r0.www ? r0.xyz : r0.xzy;
  r0.x = -r0.z * 0.5 + r0.x;
  r5.y = r0.z + r0.x;
  r5.z = -r0.y * 0.5 + r0.x;
  r5.x = r5.z + r0.y;
  r0.xyz = r2.xzw * r4.xyz;
  r0.xyz = r31.xyz * r5.xyz + r0.xyz;
  r6.xyz = float3(0.959999979,0.959999979,0.959999979) * r32.xyz;
  r6.xyz = r3.yzw * float3(0.0399999991,0.0399999991,0.0399999991) + r6.xyz;
  r0.xyz = r6.xyz + r0.xyz;
  r6.xyz = float3(1,1,1) + -r5.xyz;
  r6.xyz = r32.xyz * r6.xyz;
  r3.yzw = r3.yzw * r5.xyz + r6.xyz;
  r2.xyz = r2.xzw * r4.xyz + r3.yzw;
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