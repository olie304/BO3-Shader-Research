// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:14 2021

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.x = mad(permuteStride, 13, (int)vThreadGroupID.x);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=8)(mixed,mixed,mixed,mixed) r0.xy, r0.x, l(0), t25.xyxx
r0.x = samp0[]..swiz;
r0.y = samp0[]..swiz;
  r0.xz = (int2)r0.xy & int2(4095,4095);
  r1.xy = mad((int2)r0.xz, int2(8,8), (int2)vThreadIDInGroup.xy);
  r1.zw = float2(0,0);
  r2.xyzw = GBufferNormalAndGloss.Load(r1.xyw).xyzw;
  r0.xz = (uint2)renderTargetSize.xy;
  r0.xz = cmp((uint2)r1.xy < (uint2)r0.xz);
  r0.x = r0.z ? r0.x : 0;
  r0.z = cmp(0 < r2.z);
  r0.x = r0.z ? r0.x : 0;
  if (r0.x == 0) {
    return;
  }
  r0.z = cmp(r2.z >= 0.5);
  r0.w = GBufferDepth.Load(r1.xyw).x;
  r3.xyz = GBufferDiffuseColor.Load(r1.xyw).xyz;
  r4.xyzw = GBufferSpecularColorAndOcclusion.Load(r1.xyw).xyzw;
  r5.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r6.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r7.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r8.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyz, int3(0, 0, 0)).xyw;
  r1.zw = (uint2)r1.xy;
  r9.xy = float2(0.5,0.5) + r1.zw;
  r10.x = cmp(r0.w >= 0.984375);
  r3.w = 1.01587307 * r0.w;
  r0.w = r0.w * 64 + -63;
  r0.w = r10.x ? r0.w : r3.w;
  r0.w = max(9.99999994e-09, r0.w);
  r10.y = rcp(r0.w);
  r0.xw = r0.xx ? r10.xy : 0;
  r9.zw = -subpixelOffset.xy + r9.xy;
  r9.zw = renderTargetSize.zw * r9.zw;
  r9.zw = r9.zw * float2(2,-2) + float2(-1,1);
  r10.x = inverseProjectionMatrix._m00 * r9.z;
  r10.y = inverseProjectionMatrix._m11 * r9.w;
  r10.z = 1;
  r10.xyz = r10.xyz * r0.www;
  r11.xyz = inverseViewMatrix._m10_m11_m12 * r10.yyy;
  r10.xyw = r10.xxx * inverseViewMatrix._m00_m01_m02 + r11.xyz;
  r10.xyz = r10.zzz * inverseViewMatrix._m20_m21_m22 + r10.xyw;
  r2.w = r2.w * 3 + 0.5;
  r2.w = (uint)r2.w;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r2.xy = float2(0.850000024,0.850000024) * r2.xy;
  r3.w = dot(r2.xy, r2.xy);
  r11.zw = float2(2,1) + -r3.ww;
  r3.w = sqrt(r11.z);
  r11.xy = r3.ww * r2.xy;
  r12.xyzw = (int4)r2.wwww & int4(2,1,2,1);
  r12.xyzw = r12.zwxy ? float4(-1,-1,1.40129846e-45,1.40129846e-45) : float4(1,1,0,0);
  r2.x = (int)r12.w ^ (int)r12.z;
  r12.z = r2.x ? -1 : 1;
  r2.xyw = float3(-1,0,1) * r12.xyz;
  r13.xyz = float3(1,-2,1) * r12.xyz;
  r11.xyz = float3(0.408248305,0.707106769,0.577350259) * r11.xyw;
  r2.xyw = r11.yyy * r2.xyw;
  r2.xyw = r13.xyz * r11.xxx + r2.xyw;
  r11.xyz = r12.xyz * r11.zzz + r2.xyw;
  r2.x = r0.z ? -0.5 : -0.00146627566;
  r2.x = r2.z + r2.x;
  r2.y = saturate(2.00982332 * r2.x);
  r2.z = dot(-r10.xyz, -r10.xyz);
  r2.z = rsqrt(r2.z);
  r12.xyz = -r10.xyz * r2.zzz;
  r1.z = dot(r1.zw, float2(0.0671105608,0.00583714992));
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
  r9.zw = renderTargetSize.zw * r9.xy;
  r16.xyzw = gSSAOTexture.Gather(samplerLinearClamp_s, r9.zw).xyzw;
  r17.xyzw = gSSAODepthTexture.Gather(samplerLinearClamp_s, r9.zw).xyzw;
  r9.xy = float2(0.5,0.5) * r9.xy;
  r9.xy = frac(r9.xy);
  r9.zw = float2(1,1) + -r9.yx;
  r18.xyzw = r9.xwyx * r9.zzwy;
  r2.w = dot(r16.xyzw, r18.xyzw);
  r9.xyzw = r17.xyzw + -r0.wwww;
  r3.w = min(abs(r9.z), abs(r9.w));
  r3.w = min(abs(r9.y), r3.w);
  r3.w = min(abs(r9.x), r3.w);
  r5.w = max(abs(r9.z), abs(r9.w));
  r5.w = max(abs(r9.y), r5.w);
  r5.w = max(abs(r9.x), r5.w);
  r9.xyz = cmp(r3.www == abs(r9.yzw));
  r3.w = r9.x ? r16.y : r16.x;
  r3.w = r9.y ? r16.z : r3.w;
  r3.w = r9.z ? r16.w : r3.w;
  r0.w = 0.00999999978 * r0.w;
  r0.w = cmp(r0.w < r5.w);
  r0.w = r0.w ? r3.w : r2.w;
  r2.w = r4.z * r0.w;
  r3.w = dot(r11.xyz, sunConstants.wldDir.xyz);
  r5.w = saturate(r3.w);
  r6.w = r0.z ? abs(r3.w) : r5.w;
  r7.w = cmp(0 >= r6.w);
  if (r7.w != 0) {
    r8.w = 0;
  }
  if (r7.w == 0) {
    r9.xyz = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * r10.yyy;
    r9.xyz = r10.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r9.xyz;
    r9.xyz = r10.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r9.xyz;
    r9.xyz = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r9.xyz;
    r7.w = -sunConstants.splitDepthOffset + r9.z;
    r7.w = -r7.w * 6.10351563e-05 + 1;
    r9.w = saturate(r7.w);
    r9.w = cmp(r7.w == r9.w);
    if (r9.w != 0) {
      r9.w = 0;
      r10.w = 0;
      while (true) {
        r12.w = cmp(r9.w >= 3);
        if (r12.w != 0) break;
        r12.w = (uint)r9.w;
        r13.yz = -sunConstants.splitPinTransform[r12.w].xy + r9.xy;
        r13.y = max(abs(r13.y), abs(r13.z));
        r10.w = sunConstants.splitPinTransform[r12.w].z * r13.y;
        r12.w = cmp(r10.w < 1);
        if (r12.w != 0) {
          break;
        }
        r9.w = 1 + r9.w;
        r10.w = 0;
      }
    } else {
      r9.w = 3;
      r10.w = 0;
    }
    r12.w = cmp(r9.w >= 3);
    if (r12.w != 0) {
      r13.yzw = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r16.xz = rcp(r13.yy);
      r16.y = -r16.z;
      r13.yzw = r9.xyx * r16.xyz + r13.zwz;
      r14.yzw = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r13.yzw = max(float3(0,0,0), r13.yzw);
      r13.yzw = min(r13.yzw, r14.yzw);
      r14.yz = sunConstants.sstLightingConstants.coordScale * r13.wz;
      r14.yz = floor(r14.yz);
      r14.z = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r14.z;
      r14.y = r14.z * sunConstants.sstLightingConstants.coordScale + r14.y;
      r14.y = (uint)r14.y;
      r14.y = (int)r14.y + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.z, r14.y, l(0), t23.xxxx
    r14.z = samp0[]..swiz;
      r14.w = (int)r14.z & 0x40000000;
      r16.x = (uint)r14.z << 2;
      if (r14.w == 0) {
        r14.w = (int)r14.z & 0x01ffffff;
        r17.x = (int)r14.w + (int)r14.y;
        r14.y = (uint)r14.z >> 25;
        r14.y = (uint)r14.y;
        r13.yzw = r14.yyy * r13.yzw;
        r13.yzw = frac(r13.yzw);
        r13.yzw = float3(128,128,128) * r13.yzw;
        r13.yzw = (uint3)r13.yzw;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
      r17.z = samp0[]..swiz;
        r14.yz = (uint2)r13.wz >> int2(6,6);
        r14.w = (int)r17.z & 0xc0000000;
        r16.y = (int)r17.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.y, r16.y, l(0), t23.xxxx
      r16.y = samp0[]..swiz;
        r14.z = r14.z ? r17.z : r16.y;
        r16.y = (uint)r14.z >> 13;
        r14.y = r14.y ? r16.y : r14.z;
        r14.y = (int)r14.y & 8191;
        r18.x = (int)r14.y + (int)r17.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
      r18.z = samp0[]..swiz;
        r17.y = 0;
        r18.y = 1;
        r16.yzw = r14.www ? r17.xyz : r18.xyz;
        r18.yz = r14.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r14.yz = (uint2)r13.wz >> (uint2)r18.yy;
        r14.yz = (int2)r14.yz & int2(1,1);
        r17.w = (int)r16.w & 0xc0000000;
        r18.y = (int)r16.y + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.y, r18.y, l(0), t23.xxxx
      r18.y = samp0[]..swiz;
        r14.z = r14.z ? r16.w : r18.y;
        r18.y = (uint)r14.z >> 13;
        r14.y = r14.y ? r18.y : r14.z;
        r14.y = (int)r14.y & 8191;
        r18.x = (int)r14.y + (int)r16.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.x, l(0), t23.xxxx
      r18.w = samp0[]..swiz;
        r16.yzw = r17.www ? r16.yzw : r18.xzw;
        r14.yzw = r14.www ? r17.xyz : r16.yzw;
        r16.y = (int)r14.w & 0xc0000000;
        if (r16.y == 0) {
          r16.y = (int)-r14.z + 6;
          r16.yz = (uint2)r13.wz >> (uint2)r16.yy;
          r16.w = (int)r14.w | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r16.z = (((uint)r16.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r16.y = (((uint)r16.y << 0) & bitmask.y) | ((uint)r16.z & ~bitmask.y);
          r16.y = (int)r16.y * 10;
          r16.y = (uint)r16.w >> (uint)r16.y;
          r16.y = (int)r16.y & 1023;
          r17.x = (int)r14.y + (int)r16.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.x, l(0), t23.xxxx
        r17.w = samp0[]..swiz;
          r17.yz = (int2)r14.zz + int2(1,2);
          r14.z = (int)-r17.y + 6;
          r16.yz = (uint2)r13.wz >> (uint2)r14.zz;
          r14.z = (int)r17.w & 0xc0000000;
          r16.w = (int)r17.w | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r16.z = (((uint)r16.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r16.y = (((uint)r16.y << 0) & bitmask.y) | ((uint)r16.z & ~bitmask.y);
          r16.y = (int)r16.y * 10;
          r16.y = (uint)r16.w >> (uint)r16.y;
          r16.y = (int)r16.y & 1023;
          r18.x = (int)r16.y + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
        r18.z = samp0[]..swiz;
          r18.y = r17.z;
          r16.yzw = r14.zzz ? r17.xyw : r18.xyz;
          r16.z = (int)-r16.z + 6;
          r17.yz = (uint2)r13.wz >> (uint2)r16.zz;
          r16.z = (int)r16.w & 0xc0000000;
          r18.x = (int)r16.w | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r17.z = (((uint)r17.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r17.y = (((uint)r17.y << 0) & bitmask.y) | ((uint)r17.z & ~bitmask.y);
          r17.y = (int)r17.y * 10;
          r17.y = (uint)r18.x >> (uint)r17.y;
          r17.y = (int)r17.y & 1023;
          r18.x = (int)r16.y + (int)r17.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.y, r18.x, l(0), t23.xxxx
        r18.y = samp0[]..swiz;
          r16.yz = r16.zz ? r16.yw : r18.xy;
          r14.yw = r14.zz ? r17.xw : r16.yz;
        }
        r14.z = (int)r14.w & 0xc0000000;
        if (r14.z == 0) {
          if (14 == 0) r16.y = 0; else if (14+15 < 32) {           r16.y = (uint)r14.w << (32-(14 + 15)); r16.y = (uint)r16.y >> (32-14);          } else r16.y = (uint)r14.w >> 15;
          r16.y = (uint)r16.y;
          r16.y = sunConstants.sstLightingConstants.constants.spanInInches * r16.y;
          r16.zw = (int2)r14.ww & int2(32767,536870912);
          r16.z = (uint)r16.z;
          r16.z = sunConstants.sstLightingConstants.constants.spanInInches * r16.z;
          r16.yz = float2(6.10388815e-05,3.05185094e-05) * r16.yz;
          r17.x = (int)r13.z & 3;
          r17.x = (int)r14.y + (int)r17.x;
          r17.x = (int)r17.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.x, r17.x, l(0), t23.xxxx
        r17.x = samp0[]..swiz;
          bitmask.y = ((~(-1 << 2)) << 3) & 0xffffffff;  r17.y = (((uint)r13.y << 3) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 2)) << 1) & 0xffffffff;  r17.z = (((uint)r13.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.w = ((~(-1 << 1)) << 4) & 0xffffffff;  r17.w = (((uint)r13.w << 4) & bitmask.w) | ((uint)0 & ~bitmask.w);
          r13.y = (uint)r17.x >> (uint)r17.y;
          r13.y = (int)r13.y & 255;
          r13.y = (uint)r13.y;
          r13.y = r13.y * r16.z;
          r13.y = r13.y * 0.00392156886 + r16.y;
          r13.z = (int)r17.z + 1;
          if (1 == 0) r13.w = 0; else if (1+1 < 32) {           r13.w = (uint)r13.w << (32-(1 + 1)); r13.w = (uint)r13.w >> (32-1);          } else r13.w = (uint)r13.w >> 1;
          r13.z = (int)r13.w + (int)r13.z;
          r13.z = (int)r13.z + (int)r14.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.z, r13.z, l(0), t23.xxxx
        r13.z = samp0[]..swiz;
          r13.z = (uint)r13.z >> (uint)r17.w;
          r13.z = (int)r13.z & 0x0000ffff;
          r13.z = (uint)r13.z;
          r13.z = r13.z * r16.z;
          r13.z = r13.z * 1.52590219e-05 + r16.y;
          r16.x = r16.w ? r13.y : r13.z;
        } else {
          r13.y = (int)r14.w & 0x80000000;
          r13.z = (int)r14.y + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.z, r13.z, l(0), t23.xxxx
        r13.z = samp0[]..swiz;
          r13.y = r13.y ? r13.z : 0;
          r13.z = (uint)r14.w << 2;
          r13.w = (uint)r13.y >> 16;
          r13.y = (int)r13.y & 0x0000ffff;
          r13.yw = f16tof32(r13.yw);
          r13.z = r9.x * r13.w + r13.z;
          r13.y = r9.y * r13.y + r13.z;
          r16.x = r14.z ? r13.y : r16.x;
        }
      }
      r9.z = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r9.z;
      r9.z = cmp(r16.x < r9.z);
      r8.w = r9.z ? 0 : 1;
    }
    if (r12.w == 0) {
      if (enableDitheredShadow == 0) {
        r9.z = (uint)r9.w;
        r13.yz = -sunConstants.splitPinTransform[r9.z].xy + r9.xy;
        r13.yz = sunConstants.splitPinTransform[r9.z].zz * r13.yz;
        r16.xy = r13.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r9.z = (int16)sunConstants.splitArrayOffset;
        r16.z = r9.w + r9.z;
        r9.z = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r7.w).x;
        r12.w = gTransShadowmapArray.SampleLevel(samp0_s, r16.xyz, 0).x;
        r9.z = r12.w + r9.z;
        r9.z = saturate(-1 + r9.z);
        r12.w = r9.z * r9.z;
        r8.w = r12.w * r9.z;
      }
      if (enableDitheredShadow != 0) {
        r16.x = -r13.x;
        r9.z = (uint)r9.w;
        r9.w = 1 + r9.w;
        r9.w = min(2, r9.w);
        r9.w = (uint)r9.w;
        r10.w = 1 + -r10.w;
        r10.w = 28 * r10.w;
        r10.w = (uint)r10.w;
        r13.yz = -sunConstants.splitPinTransform[r9.z].xy + r9.xy;
        r13.yz = sunConstants.splitPinTransform[r9.z].zz * r13.yz;
        r13.yz = r13.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r9.xy = -sunConstants.splitPinTransform[r9.w].xy + r9.xy;
        r9.xy = sunConstants.splitPinTransform[r9.w].zz * r9.xy;
        r9.xy = r9.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r16.y = r14.x;
        r16.z = r13.x;
        r12.w = 0;
        r13.w = 0;
        while (true) {
          r14.y = cmp((uint)r13.w >= 8);
          if (r14.y != 0) break;
          r14.y = cmp((uint)r10.w < (uint)r13.w);
          r14.zw = r14.yy ? r9.xy : r13.yz;
          r16.w = r14.y ? sunConstants.splitPinTransform[r9.w].w : sunConstants.splitPinTransform[r9.z].w;
          r14.y = r14.y ? r9.w : r9.z;
          r17.x = dot(icb[r13.w+0].yx, r16.xy);
          r17.y = dot(icb[r13.w+0].yx, r16.yz);
          r17.xy = r17.xy * r16.ww + r14.zw;
          r14.y = (int)r14.y + (int16)sunConstants.splitArrayOffset;
          r17.z = (uint)r14.y;
          r14.y = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r7.w).x;
          r14.z = gTransShadowmapArray.SampleLevel(samp0_s, r17.xyz, 0).x;
          r14.y = r14.y + r14.z;
          r14.y = saturate(-1 + r14.y);
          r12.w = r14.y * 0.125 + r12.w;
          r13.w = (int)r13.w + 1;
        }
        r7.w = r12.w * r12.w;
        r8.w = r7.w * r12.w;
      }
    }
  }
  r7.w = 1 + -r2.y;
  r9.x = 5 * r7.w;
  r9.y = r7.w * 5 + -2.5;
  r9.y = 0.400000006 * r9.y;
  r9.y = max(0, r9.y);
  r9.zw = -r7.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r9.z = exp2(r9.z);
  r9.z = r9.z * r2.x;
  r10.w = r9.x * r7.w;
  r9.w = -r10.w * 2.0159049 + r9.w;
  r9.w = exp2(r9.w);
  r9.w = r9.w * r2.x;
  r9.yzw = float3(100,9.1368103,9.70808983) * r9.yzw;
  r9.z = max(r9.z, r9.w);
  r9.z = max(1.26815999, r9.z);
  r9.w = numRefProbes + -numOverrideProbes;
  r10.w = (uint)r0.y >> 24;
  if (10 == 0) r0.y = 0; else if (10+12 < 32) {   r0.y = (uint)r0.y << (32-(10 + 12)); r0.y = (uint)r0.y >> (32-10);  } else r0.y = (uint)r0.y >> 12;
  r16.yz = float2(0,1);
  r17.xy = float2(0,0);
  r18.x = 1;
  r19.xy = float2(0,0);
  r20.xy = float2(0,0);
  r21.xyzw = float4(0,0,0,0);
  r22.yzw = float3(0,0,0);
  r12.w = 0;
  while (true) {
    r13.y = cmp((int)r12.w == 2);
    if (r13.y != 0) break;
    r13.y = r12.w ? r0.y : r10.w;
    r13.z = cmp((uint)r13.y >= (uint)r9.w);
    r13.w = cmp((uint)r13.y < numRefProbes);
    r13.z = r13.w ? r13.z : 0;
    if (r13.z != 0) {
      r13.y = (int)r13.y * 14;
      r14.yzw = -refProbeConstantsCB[r13.y].data[0].xyz + r10.xyz;
      r13.z = 0x0000ffff & (int)refProbeConstantsCB[r13.y].data[7].z;
      if (6 == 0) r13.w = 0; else if (6+25 < 32) {       r13.w = (uint)refProbeConstantsCB[r13.y].data[7].z << (32-(6 + 25)); r13.w = (uint)r13.w >> (32-6);      } else r13.w = (uint)refProbeConstantsCB[r13.y].data[7].z >> 25;
      r16.w = (int)r13.z * 6;
      r17.w = dot(refProbeAttenuationConstantsCB[r16.w].data[0].xyz, r14.yzw);
      r17.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[0].w + r17.w);
      r18.z = dot(refProbeAttenuationConstantsCB[r16.w].data[1].xyz, r14.yzw);
      r18.z = saturate(refProbeAttenuationConstantsCB[r16.w].data[1].w + r18.z);
      r17.w = r18.z * r17.w;
      r18.z = dot(refProbeAttenuationConstantsCB[r16.w].data[2].xyz, r14.yzw);
      r18.z = saturate(refProbeAttenuationConstantsCB[r16.w].data[2].w + r18.z);
      r17.w = r18.z * r17.w;
      r18.z = dot(refProbeAttenuationConstantsCB[r16.w].data[3].xyz, r14.yzw);
      r18.z = saturate(refProbeAttenuationConstantsCB[r16.w].data[3].w + r18.z);
      r17.w = r18.z * r17.w;
      r18.z = dot(refProbeAttenuationConstantsCB[r16.w].data[4].xyz, r14.yzw);
      r18.z = saturate(refProbeAttenuationConstantsCB[r16.w].data[4].w + r18.z);
      r17.w = r18.z * r17.w;
      r18.z = dot(refProbeAttenuationConstantsCB[r16.w].data[5].xyz, r14.yzw);
      r16.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[5].w + r18.z);
      r16.x = r17.w * r16.w;
      r16.w = 1 & (int)refProbeConstantsCB[r13.y].data[6].x;
      r16.xw = r16.ww ? r16.xy : r16.zx;
      r17.w = refProbeConstantsCB[r13.y].data[6].x;
      r23.xy = r16.xw;
      r18.z = 1;
      while (true) {
        r18.w = cmp((int)r18.z >= (int)r13.w);
        if (r18.w != 0) break;
        r18.w = (int)r13.z + (int)r18.z;
        r18.w = (int)r18.w * 6;
        r19.w = dot(refProbeAttenuationConstantsCB[r18.w].data[0].xyz, r14.yzw);
        r19.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[0].w + r19.w);
        r19.w = r23.x * r19.w;
        r20.w = dot(refProbeAttenuationConstantsCB[r18.w].data[1].xyz, r14.yzw);
        r20.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[1].w + r20.w);
        r19.w = r20.w * r19.w;
        r20.w = dot(refProbeAttenuationConstantsCB[r18.w].data[2].xyz, r14.yzw);
        r20.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[2].w + r20.w);
        r19.w = r20.w * r19.w;
        r20.w = dot(refProbeAttenuationConstantsCB[r18.w].data[3].xyz, r14.yzw);
        r20.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[3].w + r20.w);
        r19.w = r20.w * r19.w;
        r20.w = dot(refProbeAttenuationConstantsCB[r18.w].data[4].xyz, r14.yzw);
        r20.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[4].w + r20.w);
        r19.w = r20.w * r19.w;
        r20.w = dot(refProbeAttenuationConstantsCB[r18.w].data[5].xyz, r14.yzw);
        r18.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[5].w + r20.w);
        r23.x = r19.w * r18.w;
        r20.w = (uint)r17.w >> 2;
        if (1 == 0) r23.z = 0; else if (1+2 < 32) {         r23.z = (uint)r17.w << (32-(1 + 2)); r23.z = (uint)r23.z >> (32-1);        } else r23.z = (uint)r17.w >> 2;
        r23.w = (int)r20.w & 2;
        r24.x = max(r23.y, r23.x);
        r18.w = -r19.w * r18.w + 1;
        r18.w = r23.y * r18.w;
        r18.y = r23.w ? r18.w : r24.x;
        r23.xy = r23.zz ? r23.xy : r18.xy;
        r18.z = (int)r18.z + 1;
        r17.w = r20.w;
      }
      r23.y = saturate(r23.y);
      r13.z = refProbeConstantsCB[r13.y].data[6].y * r23.y;
      r13.w = cmp(0 < r13.z);
      if (r13.w != 0) {
        r22.w = r23.y * refProbeConstantsCB[r13.y].data[6].y + r22.w;
        r13.z = refProbeConstantsCB[r13.y].data[7].y * r13.z;
        r24.x = refProbeConstantsCB[r13.y].data[7].w;
        r24.yz = refProbeConstantsCB[r13.y].data[8].xy;
        r13.w = dot(r15.xyz, r24.xyz);
        r16.x = dot(r14.yzw, r24.xyz);
        r16.x = -refProbeConstantsCB[r13.y].data[8].z + r16.x;
        r16.w = cmp(r16.x >= 0);
        r16.x = max(abs(r16.x), r9.y);
        r16.x = r16.w ? r16.x : -r16.x;
        r13.w = max(1.00000001e-07, -r13.w);
        r13.w = r16.x / r13.w;
        r13.w = min(131072, abs(r13.w));
        r24.x = refProbeConstantsCB[r13.y].data[8].w;
        r24.yz = refProbeConstantsCB[r13.y].data[9].xy;
        r16.x = dot(r15.xyz, r24.xyz);
        r16.w = dot(r14.yzw, r24.xyz);
        r16.w = -refProbeConstantsCB[r13.y].data[9].z + r16.w;
        r17.w = cmp(r16.w >= 0);
        r16.w = max(abs(r16.w), r9.y);
        r16.w = r17.w ? r16.w : -r16.w;
        r16.x = max(1.00000001e-07, -r16.x);
        r16.x = r16.w / r16.x;
        r13.w = min(abs(r16.x), r13.w);
        r24.x = refProbeConstantsCB[r13.y].data[9].w;
        r24.yz = refProbeConstantsCB[r13.y].data[10].xy;
        r16.x = dot(r15.xyz, r24.xyz);
        r16.w = dot(r14.yzw, r24.xyz);
        r16.w = -refProbeConstantsCB[r13.y].data[10].z + r16.w;
        r17.w = cmp(r16.w >= 0);
        r16.w = max(abs(r16.w), r9.y);
        r16.w = r17.w ? r16.w : -r16.w;
        r16.x = max(1.00000001e-07, -r16.x);
        r16.x = r16.w / r16.x;
        r13.w = min(abs(r16.x), r13.w);
        r24.x = refProbeConstantsCB[r13.y].data[10].w;
        r24.yz = refProbeConstantsCB[r13.y].data[11].xy;
        r16.x = dot(r15.xyz, r24.xyz);
        r16.w = dot(r14.yzw, r24.xyz);
        r16.w = -refProbeConstantsCB[r13.y].data[11].z + r16.w;
        r17.w = cmp(r16.w >= 0);
        r16.w = max(abs(r16.w), r9.y);
        r16.w = r17.w ? r16.w : -r16.w;
        r16.x = max(1.00000001e-07, -r16.x);
        r16.x = r16.w / r16.x;
        r13.w = min(abs(r16.x), r13.w);
        r24.x = refProbeConstantsCB[r13.y].data[11].w;
        r24.yz = refProbeConstantsCB[r13.y].data[12].xy;
        r16.x = dot(r15.xyz, r24.xyz);
        r16.w = dot(r14.yzw, r24.xyz);
        r16.w = -refProbeConstantsCB[r13.y].data[12].z + r16.w;
        r17.w = cmp(r16.w >= 0);
        r16.w = max(abs(r16.w), r9.y);
        r16.w = r17.w ? r16.w : -r16.w;
        r16.x = max(1.00000001e-07, -r16.x);
        r16.x = r16.w / r16.x;
        r13.w = min(abs(r16.x), r13.w);
        r24.x = refProbeConstantsCB[r13.y].data[12].w;
        r24.yz = refProbeConstantsCB[r13.y].data[13].xy;
        r16.x = dot(r15.xyz, r24.xyz);
        r16.w = dot(r14.yzw, r24.xyz);
        r16.w = -refProbeConstantsCB[r13.y].data[13].z + r16.w;
        r17.w = cmp(r16.w >= 0);
        r16.w = max(abs(r16.w), r9.y);
        r16.w = r17.w ? r16.w : -r16.w;
        r16.x = max(1.00000001e-07, -r16.x);
        r16.x = r16.w / r16.x;
        r13.w = min(abs(r16.x), r13.w);
        r24.x = refProbeConstantsCB[r13.y].data[3].w + r14.y;
        r24.yz = refProbeConstantsCB[r13.y].data[4].xy + r14.zw;
        r18.yzw = r15.xyz * r13.www + r24.xyz;
        r16.x = dot(r18.yzw, r18.yzw);
        r16.x = sqrt(r16.x);
        r13.w = r13.w / r16.x;
        r13.w = r13.w + r13.w;
        r13.w = sqrt(r13.w);
        r13.w = r7.w * 5 + r13.w;
        r13.w = -0.844799995 + r13.w;
        r24.x = refProbeConstantsCB[r13.y].data[0].w;
        r24.y = refProbeConstantsCB[r13.y].data[1].z;
        r24.z = refProbeConstantsCB[r13.y].data[2].y;
        r25.x = dot(r18.yzw, r24.xyz);
        r26.xy = refProbeConstantsCB[r13.y].data[1].xw;
        r26.z = refProbeConstantsCB[r13.y].data[2].z;
        r25.y = dot(r18.yzw, r26.xyz);
        r27.x = refProbeConstantsCB[r13.y].data[1].y;
        r27.yz = refProbeConstantsCB[r13.y].data[2].xw;
        r25.z = dot(r18.yzw, r27.xyz);
        if (9 == 0) r16.x = 0; else if (9+16 < 32) {         r16.x = (uint)refProbeConstantsCB[r13.y].data[7].z << (32-(9 + 16)); r16.x = (uint)r16.x >> (32-9);        } else r16.x = (uint)refProbeConstantsCB[r13.y].data[7].z >> 16;
        r25.w = (uint)r16.x;
        r18.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r25.xyzw, r13.w).xyz;
        r28.x = dot(r14.yzw, r24.xyz);
        r28.y = dot(r14.yzw, r26.xyz);
        r28.z = dot(r14.yzw, r27.xyz);
        r14.yzw = saturate(r28.xyz * refProbeConstantsCB[r13.y].data[3].xyz + float3(0.5,0.5,0.5));
        r28.xy = refProbeConstantsCB[r13.y].data[4].zw * r14.yz;
        r28.z = refProbeConstantsCB[r13.y].data[5].x * r14.w;
        r14.yzw = refProbeConstantsCB[r13.y].data[5].yzw + r28.xyz;
        r25.x = dot(r11.xyz, r24.xyz);
        r25.y = dot(r11.xyz, r26.xyz);
        r25.z = dot(r11.xyz, r27.xyz);
        r23.xzw = cmp(float3(0,0,0) < r25.xyz);
        r17.z = r23.x ? 0 : 0.5;
        r24.xyz = r17.xyz + r14.yzw;
        r24.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r24.xyz, 0).xyz;
        r26.xyz = r25.xyz * r25.xyz;
        r26.xyz = r26.xyz * r13.zzz;
        r19.z = r23.z ? 0 : 0.5;
        r27.xyz = r19.xyz + r14.yzw;
        r27.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r27.xyz, 0).xyz;
        r27.xyz = r27.xyz * r26.yyy;
        r24.xyz = r24.xyz * r26.xxx + r27.xyz;
        r20.z = r23.w ? 0 : 0.5;
        r14.yzw = r20.xyz + r14.yzw;
        r14.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r14.yzw, 0).xyz;
        r14.yzw = r14.yzw * r26.zzz + r24.xyz;
        r23.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r25.xyzw, 6).xyz;
        r24.xyz = r23.xzw * r14.yzw;
        r13.y = dot(r24.xyz, float3(0.212599993,0.715200007,0.0722000003));
        r21.xyz = r14.yzw * r23.xzw + r21.xyz;
        r13.w = r13.y * r9.z;
        r14.yzw = r18.yzw * r13.zzz;
        r13.z = dot(r14.yzw, float3(0.212599993,0.715200007,0.0722000003));
        r13.y = r9.z * r13.y + r13.z;
        r13.y = r13.w / r13.y;
        r24.x = r21.w;
        r24.yz = r22.yz;
        r22.xyz = r14.yzw * r13.yyy + r24.xyz;
        r21.w = r22.x;
      }
    }
    r12.w = (int)r12.w + 1;
  }
  r12.w = cmp(r22.w < 1);
  if (r12.w != 0) {
    r16.yz = float2(0,1);
    r17.xy = float2(0,0);
    r18.x = 1;
    r19.xy = float2(0,0);
    r20.xy = float2(0,0);
    r23.x = r21.w;
    r23.yzw = r22.yzw;
    r13.yzw = r21.xyz;
    r12.w = 0;
    while (true) {
      r14.y = cmp((int)r12.w == 2);
      if (r14.y != 0) break;
      r14.y = r12.w ? r0.y : r10.w;
      r14.z = cmp((uint)r14.y < (uint)r9.w);
      if (r14.z != 0) {
        r14.y = (int)r14.y * 14;
        r24.xyz = -refProbeConstantsCB[r14.y].data[0].xyz + r10.xyz;
        r14.z = 0x0000ffff & (int)refProbeConstantsCB[r14.y].data[7].z;
        if (6 == 0) r14.w = 0; else if (6+25 < 32) {         r14.w = (uint)refProbeConstantsCB[r14.y].data[7].z << (32-(6 + 25)); r14.w = (uint)r14.w >> (32-6);        } else r14.w = (uint)refProbeConstantsCB[r14.y].data[7].z >> 25;
        r16.w = (int)r14.z * 6;
        r17.w = dot(refProbeAttenuationConstantsCB[r16.w].data[0].xyz, r24.xyz);
        r17.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[0].w + r17.w);
        r18.z = dot(refProbeAttenuationConstantsCB[r16.w].data[1].xyz, r24.xyz);
        r18.z = saturate(refProbeAttenuationConstantsCB[r16.w].data[1].w + r18.z);
        r17.w = r18.z * r17.w;
        r18.z = dot(refProbeAttenuationConstantsCB[r16.w].data[2].xyz, r24.xyz);
        r18.z = saturate(refProbeAttenuationConstantsCB[r16.w].data[2].w + r18.z);
        r17.w = r18.z * r17.w;
        r18.z = dot(refProbeAttenuationConstantsCB[r16.w].data[3].xyz, r24.xyz);
        r18.z = saturate(refProbeAttenuationConstantsCB[r16.w].data[3].w + r18.z);
        r17.w = r18.z * r17.w;
        r18.z = dot(refProbeAttenuationConstantsCB[r16.w].data[4].xyz, r24.xyz);
        r18.z = saturate(refProbeAttenuationConstantsCB[r16.w].data[4].w + r18.z);
        r17.w = r18.z * r17.w;
        r18.z = dot(refProbeAttenuationConstantsCB[r16.w].data[5].xyz, r24.xyz);
        r16.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[5].w + r18.z);
        r16.x = r17.w * r16.w;
        r16.w = 1 & (int)refProbeConstantsCB[r14.y].data[6].x;
        r16.xw = r16.ww ? r16.xy : r16.zx;
        r17.w = refProbeConstantsCB[r14.y].data[6].x;
        r25.xy = r16.xw;
        r18.z = 1;
        while (true) {
          r18.w = cmp((int)r18.z >= (int)r14.w);
          if (r18.w != 0) break;
          r18.w = (int)r14.z + (int)r18.z;
          r18.w = (int)r18.w * 6;
          r19.w = dot(refProbeAttenuationConstantsCB[r18.w].data[0].xyz, r24.xyz);
          r19.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[0].w + r19.w);
          r19.w = r25.x * r19.w;
          r20.w = dot(refProbeAttenuationConstantsCB[r18.w].data[1].xyz, r24.xyz);
          r20.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[1].w + r20.w);
          r19.w = r20.w * r19.w;
          r20.w = dot(refProbeAttenuationConstantsCB[r18.w].data[2].xyz, r24.xyz);
          r20.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[2].w + r20.w);
          r19.w = r20.w * r19.w;
          r20.w = dot(refProbeAttenuationConstantsCB[r18.w].data[3].xyz, r24.xyz);
          r20.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[3].w + r20.w);
          r19.w = r20.w * r19.w;
          r20.w = dot(refProbeAttenuationConstantsCB[r18.w].data[4].xyz, r24.xyz);
          r20.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[4].w + r20.w);
          r19.w = r20.w * r19.w;
          r20.w = dot(refProbeAttenuationConstantsCB[r18.w].data[5].xyz, r24.xyz);
          r18.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[5].w + r20.w);
          r25.x = r19.w * r18.w;
          r20.w = (uint)r17.w >> 2;
          if (1 == 0) r24.w = 0; else if (1+2 < 32) {           r24.w = (uint)r17.w << (32-(1 + 2)); r24.w = (uint)r24.w >> (32-1);          } else r24.w = (uint)r17.w >> 2;
          r25.z = (int)r20.w & 2;
          r25.w = max(r25.y, r25.x);
          r18.w = -r19.w * r18.w + 1;
          r18.w = r25.y * r18.w;
          r18.y = r25.z ? r18.w : r25.w;
          r25.xy = r24.ww ? r25.xy : r18.xy;
          r18.z = (int)r18.z + 1;
          r17.w = r20.w;
        }
        r14.z = saturate(r25.y + -r22.w);
        r14.w = refProbeConstantsCB[r14.y].data[6].y * r14.z;
        r16.x = cmp(0 < r14.w);
        if (r16.x != 0) {
          r23.w = r14.z * refProbeConstantsCB[r14.y].data[6].y + r23.w;
          r14.z = refProbeConstantsCB[r14.y].data[7].y * r14.w;
          r26.x = refProbeConstantsCB[r14.y].data[7].w;
          r26.yz = refProbeConstantsCB[r14.y].data[8].xy;
          r14.w = dot(r15.xyz, r26.xyz);
          r16.x = dot(r24.xyz, r26.xyz);
          r16.x = -refProbeConstantsCB[r14.y].data[8].z + r16.x;
          r16.w = cmp(r16.x >= 0);
          r16.x = max(abs(r16.x), r9.y);
          r16.x = r16.w ? r16.x : -r16.x;
          r14.w = max(1.00000001e-07, -r14.w);
          r14.w = r16.x / r14.w;
          r14.w = min(131072, abs(r14.w));
          r26.x = refProbeConstantsCB[r14.y].data[8].w;
          r26.yz = refProbeConstantsCB[r14.y].data[9].xy;
          r16.x = dot(r15.xyz, r26.xyz);
          r16.w = dot(r24.xyz, r26.xyz);
          r16.w = -refProbeConstantsCB[r14.y].data[9].z + r16.w;
          r17.w = cmp(r16.w >= 0);
          r16.w = max(abs(r16.w), r9.y);
          r16.w = r17.w ? r16.w : -r16.w;
          r16.x = max(1.00000001e-07, -r16.x);
          r16.x = r16.w / r16.x;
          r14.w = min(abs(r16.x), r14.w);
          r26.x = refProbeConstantsCB[r14.y].data[9].w;
          r26.yz = refProbeConstantsCB[r14.y].data[10].xy;
          r16.x = dot(r15.xyz, r26.xyz);
          r16.w = dot(r24.xyz, r26.xyz);
          r16.w = -refProbeConstantsCB[r14.y].data[10].z + r16.w;
          r17.w = cmp(r16.w >= 0);
          r16.w = max(abs(r16.w), r9.y);
          r16.w = r17.w ? r16.w : -r16.w;
          r16.x = max(1.00000001e-07, -r16.x);
          r16.x = r16.w / r16.x;
          r14.w = min(abs(r16.x), r14.w);
          r26.x = refProbeConstantsCB[r14.y].data[10].w;
          r26.yz = refProbeConstantsCB[r14.y].data[11].xy;
          r16.x = dot(r15.xyz, r26.xyz);
          r16.w = dot(r24.xyz, r26.xyz);
          r16.w = -refProbeConstantsCB[r14.y].data[11].z + r16.w;
          r17.w = cmp(r16.w >= 0);
          r16.w = max(abs(r16.w), r9.y);
          r16.w = r17.w ? r16.w : -r16.w;
          r16.x = max(1.00000001e-07, -r16.x);
          r16.x = r16.w / r16.x;
          r14.w = min(abs(r16.x), r14.w);
          r26.x = refProbeConstantsCB[r14.y].data[11].w;
          r26.yz = refProbeConstantsCB[r14.y].data[12].xy;
          r16.x = dot(r15.xyz, r26.xyz);
          r16.w = dot(r24.xyz, r26.xyz);
          r16.w = -refProbeConstantsCB[r14.y].data[12].z + r16.w;
          r17.w = cmp(r16.w >= 0);
          r16.w = max(abs(r16.w), r9.y);
          r16.w = r17.w ? r16.w : -r16.w;
          r16.x = max(1.00000001e-07, -r16.x);
          r16.x = r16.w / r16.x;
          r14.w = min(abs(r16.x), r14.w);
          r26.x = refProbeConstantsCB[r14.y].data[12].w;
          r26.yz = refProbeConstantsCB[r14.y].data[13].xy;
          r16.x = dot(r15.xyz, r26.xyz);
          r16.w = dot(r24.xyz, r26.xyz);
          r16.w = -refProbeConstantsCB[r14.y].data[13].z + r16.w;
          r17.w = cmp(r16.w >= 0);
          r16.w = max(abs(r16.w), r9.y);
          r16.w = r17.w ? r16.w : -r16.w;
          r16.x = max(1.00000001e-07, -r16.x);
          r16.x = r16.w / r16.x;
          r14.w = min(abs(r16.x), r14.w);
          r26.x = refProbeConstantsCB[r14.y].data[3].w + r24.x;
          r26.yz = refProbeConstantsCB[r14.y].data[4].xy + r24.yz;
          r18.yzw = r15.xyz * r14.www + r26.xyz;
          r16.x = dot(r18.yzw, r18.yzw);
          r16.x = sqrt(r16.x);
          r14.w = r14.w / r16.x;
          r14.w = r14.w + r14.w;
          r14.w = sqrt(r14.w);
          r14.w = r7.w * 5 + r14.w;
          r14.w = -0.844799995 + r14.w;
          r26.x = refProbeConstantsCB[r14.y].data[0].w;
          r26.y = refProbeConstantsCB[r14.y].data[1].z;
          r26.z = refProbeConstantsCB[r14.y].data[2].y;
          r27.x = dot(r18.yzw, r26.xyz);
          r28.xy = refProbeConstantsCB[r14.y].data[1].xw;
          r28.z = refProbeConstantsCB[r14.y].data[2].z;
          r27.y = dot(r18.yzw, r28.xyz);
          r29.x = refProbeConstantsCB[r14.y].data[1].y;
          r29.yz = refProbeConstantsCB[r14.y].data[2].xw;
          r27.z = dot(r18.yzw, r29.xyz);
          if (9 == 0) r16.x = 0; else if (9+16 < 32) {           r16.x = (uint)refProbeConstantsCB[r14.y].data[7].z << (32-(9 + 16)); r16.x = (uint)r16.x >> (32-9);          } else r16.x = (uint)refProbeConstantsCB[r14.y].data[7].z >> 16;
          r27.w = (uint)r16.x;
          r18.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r27.xyzw, r14.w).xyz;
          r30.x = dot(r24.xyz, r26.xyz);
          r30.y = dot(r24.xyz, r28.xyz);
          r30.z = dot(r24.xyz, r29.xyz);
          r24.xyz = saturate(r30.xyz * refProbeConstantsCB[r14.y].data[3].xyz + float3(0.5,0.5,0.5));
          r30.xy = refProbeConstantsCB[r14.y].data[4].zw * r24.xy;
          r30.z = refProbeConstantsCB[r14.y].data[5].x * r24.z;
          r24.xyz = refProbeConstantsCB[r14.y].data[5].yzw + r30.xyz;
          r27.x = dot(r11.xyz, r26.xyz);
          r27.y = dot(r11.xyz, r28.xyz);
          r27.z = dot(r11.xyz, r29.xyz);
          r25.xzw = cmp(float3(0,0,0) < r27.xyz);
          r17.z = r25.x ? 0 : 0.5;
          r26.xyz = r24.xyz + r17.xyz;
          r26.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
          r28.xyz = r27.xyz * r27.xyz;
          r28.xyz = r28.xyz * r14.zzz;
          r19.z = r25.z ? 0 : 0.5;
          r29.xyz = r24.xyz + r19.xyz;
          r29.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r29.xyz, 0).xyz;
          r29.xyz = r29.xyz * r28.yyy;
          r26.xyz = r26.xyz * r28.xxx + r29.xyz;
          r20.z = r25.w ? 0 : 0.5;
          r24.xyz = r24.xyz + r20.xyz;
          r24.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r24.xyz, 0).xyz;
          r24.xyz = r24.xyz * r28.zzz + r26.xyz;
          r25.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r27.xyzw, 6).xyz;
          r26.xyz = r25.xzw * r24.xyz;
          r14.y = dot(r26.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r13.yzw = r24.xyz * r25.xzw + r13.yzw;
          r14.w = r14.y * r9.z;
          r18.yzw = r18.yzw * r14.zzz;
          r14.z = dot(r18.yzw, float3(0.212599993,0.715200007,0.0722000003));
          r14.y = r9.z * r14.y + r14.z;
          r14.y = r14.w / r14.y;
          r23.xyz = r18.yzw * r14.yyy + r23.xyz;
        }
      }
      r12.w = (int)r12.w + 1;
    }
    r22.xyzw = r23.zxyw;
    r21.xyz = r13.yzw;
    r22.xyzw = r22.yzxw;
  } else {
    r22.x = r21.w;
  }
  r0.y = max(1, r22.w);
  r0.y = rcp(r0.y);
  r22.w = saturate(r22.w);
  r9.yzw = r21.xyz * r0.yyy;
  r13.yzw = r22.xyz * r0.yyy;
  r7.w = cmp(r22.w < 0.99000001);
  if (r7.w != 0) {
    r7.w = 1 + -r22.w;
    r10.w = sunConstants.globalProbeExposure * r7.w;
    r14.yzw = -globalProbeConstants.data[0].xyz + r10.xyz;
    r16.x = globalProbeConstants.data[0].w * r14.y;
    r16.yz = globalProbeConstants.data[1].xy * r14.zw;
    r14.yzw = saturate(float3(0.5,0.5,0.5) + r16.xyz);
    r16.xy = globalProbeConstants.data[1].zw * r14.yz;
    r16.z = globalProbeConstants.data[2].x * r14.w;
    r14.yzw = globalProbeConstants.data[2].yzw + r16.xyz;
    r16.xyz = cmp(float3(0,0,0) < r11.xyz);
    r16.xyz = r16.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r16.w = 0;
    r17.xyz = r16.wwx + r14.yzw;
    r17.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r17.xyz, 0).xyz;
    r18.xyz = r11.xyz * r11.xyz;
    r18.xyz = r18.xyz * r10.www;
    r19.xyz = r16.wwy + r14.yzw;
    r19.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r19.xyz, 0).xyz;
    r19.xyz = r19.xyz * r18.yyy;
    r17.xyz = r17.xyz * r18.xxx + r19.xyz;
    r14.yzw = r16.wwz + r14.yzw;
    r14.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r14.yzw, 0).xyz;
    r14.yzw = r14.yzw * r18.zzz + r17.xyz;
    r11.w = 0;
    r16.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, 6).xyz;
    r14.yzw = r16.xyz * r14.yzw;
    r10.w = dot(r14.yzw, float3(0.212599993,0.715200007,0.0722000003));
    r9.yzw = r21.xyz * r0.yyy + r14.yzw;
    r15.w = 0;
    r14.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r15.xyzw, r9.x).xyz;
    r0.y = sunConstants.globalProbeExposure * r7.w + -r10.w;
    r0.y = r2.y * r0.y + r10.w;
    r13.yzw = r14.yzw * r0.yyy + r13.yzw;
  }
  r0.y = r4.z * r0.w + r2.x;
  r0.y = log2(abs(r0.y));
  r0.y = r1.w * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r4.z * r0.w + r0.y;
  r0.y = saturate(-1 + r0.y);
  r14.yzw = r9.yzw * r2.www;
  r15.xyz = r0.zzz ? r14.yzw : 0;
  r16.xy = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r16.xy = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r16.xy, 0).xy;
  r13.yzw = r13.yzw * r0.yyy;
  r16.xzw = r13.yzw * r16.xxx;
  r13.yzw = r13.yzw * r16.yyy;
  r0.y = cmp(0 < r6.w);
  if (r0.y != 0) {
    r0.y = cmp(0 < r8.w);
    if (r0.y != 0) {
      r0.y = sqrt(r1.w);
      r0.y = r0.y * 0.5 + 0.5;
      r0.y = r0.y * r0.y;
      r0.w = 0.5 * r0.y;
      r0.y = -r0.y * 0.5 + 1;
      r2.y = r2.x * r0.y + r0.w;
      r0.yw = r2.yy * r0.yw;
      r2.y = sunConstants.specScale * r1.z;
      r2.y = r2.y * r5.w;
      if (sunConstants.sunCookieIndex != 0) {
        r17.xyz = eyeOffset.xyz + r10.xyz;
        r17.w = 1;
        r4.z = dot(sunConstants.sunCookieTransform[0].xyzw, r17.xyzw);
        r7.w = dot(sunConstants.sunCookieTransform[1].xyzw, r17.xyzw);
        r17.x = frac(r4.z);
        r17.y = frac(r7.w);
        r4.z = -1 + (int14)sunConstants.sunCookieIndex;
        r17.z = (uint)r4.z;
        r17.xyz = gCookieArray.SampleLevel(samplerLinear_s, r17.xyz, 0).xyz;
        r17.xyz = float3(-1,-1,-1) + r17.xyz;
        r17.xyz = sunConstants.sunCookieIntensity * r17.xyz + float3(1,1,1);
        r17.xyz = sunConstants.color.xyz * r17.xyz;
      } else {
        r17.xyz = sunConstants.color.xyz;
      }
      r4.z = viewmodelSunShadowRaw >> 16;
      r7.w = cmp(0 < (uint)r4.z);
      r7.w = r0.x ? r7.w : 0;
      if (r7.w != 0) {
        r4.z = (int)r4.z + numLights;
        r4.z = mad((int)r4.z, 15, -15);
        r7.w = abs(r3.w) * -0.200000003 + 0.400000006;
        r9.x = cmp(r3.w < 0);
        r9.x = r0.z ? r9.x : 0;
        r7.w = r9.x ? -r7.w : r7.w;
        r18.xyz = r11.xyz * r7.www + r10.xyz;
        r19.xyz = lightConstantsCB[r4.z].data[4].yzw;
        r19.w = lightConstantsCB[r4.z].data[5].x;
        r18.w = 1;
        r19.x = dot(r19.xyzw, r18.xyzw);
        r20.xyz = lightConstantsCB[r4.z].data[5].yzw;
        r20.w = lightConstantsCB[r4.z].data[6].x;
        r19.y = dot(r20.xyzw, r18.xyzw);
        r19.xy = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r20.x = lightConstantsCB[r4.z].data[9].w + r19.x;
        r20.y = lightConstantsCB[r4.z].data[10].x + r19.y;
        r19.xy = lightConstantsCB[r4.z].data[9].yz * r20.xy;
        r19.zw = lightConstantsCB[r4.z].data[3].yy / lightConstantsCB[r4.z].data[8].yw;
        r20.xy = float2(1,1) + -r19.zw;
        r20.xy = cmp(r19.xy >= r20.xy);
        r19.zw = cmp(r19.zw >= r19.xy);
        r19.zw = (int2)r19.zw | (int2)r20.xy;
        r7.w = (int)r19.w | (int)r19.z;
        if (r7.w == 0) {
          r20.xyz = lightConstantsCB[r4.z].data[6].yzw;
          r20.w = lightConstantsCB[r4.z].data[7].x;
          r7.w = dot(r20.xyzw, r18.xyzw);
          r19.xy = saturate(r19.xy);
          r18.x = r19.x * lightConstantsCB[r4.z].data[8].y + lightConstantsCB[r4.z].data[8].z;
          r18.y = r19.y * lightConstantsCB[r4.z].data[8].w + lightConstantsCB[r4.z].data[9].x;
          r7.w = lightConstantsCB[r4.z].data[10].y + r7.w;
          r7.w = r7.w / lightConstantsCB[r4.z].data[10].z;
          r7.w = max(6.10351563e-05, r7.w);
          r9.x = 0x0000ffff & (int)lightConstantsCB[r4.z].data[1].w;
          if (enableDitheredShadow != 0) {
            r19.x = -r13.x;
            r20.z = (uint)r9.x;
            r19.y = r14.x;
            r19.z = r13.x;
            r10.w = 0;
            r11.w = 0;
            while (true) {
              r12.w = cmp((int)r11.w >= 8);
              if (r12.w != 0) break;
              r21.x = dot(icb[r11.w+0].yx, r19.xy);
              r21.y = dot(icb[r11.w+0].yx, r19.yz);
              r20.xy = r21.xy * lightConstantsCB[r4.z].data[3].yy + r18.xy;
              r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r7.w).x;
              r10.w = r12.w * 0.125 + r10.w;
              r11.w = (int)r11.w + 1;
            }
          } else {
            r18.z = (uint)r9.x;
            r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r7.w).x;
          }
          r4.z = r10.w * r10.w;
          r4.z = r4.z * r10.w;
        } else {
          r4.z = 1;
        }
        r8.w = r8.w * r4.z;
      } else {
        r4.z = viewmodelSunShadowRaw & 0x0000ffff;
        r7.w = cmp(0 < (uint)r4.z);
        r0.x = ~(int)r0.x;
        r0.x = r0.x ? r7.w : 0;
        if (r0.x != 0) {
          r0.x = (int)r4.z + numLights;
          r0.x = mad((int)r0.x, 15, -15);
          r4.z = abs(r3.w) * -0.200000003 + 0.400000006;
          r7.w = cmp(r3.w < 0);
          r7.w = r0.z ? r7.w : 0;
          r4.z = r7.w ? -r4.z : r4.z;
          r18.xyz = r11.xyz * r4.zzz + r10.xyz;
          r19.xyz = lightConstantsCB[r0.x].data[4].yzw;
          r19.w = lightConstantsCB[r0.x].data[5].x;
          r18.w = 1;
          r19.x = dot(r19.xyzw, r18.xyzw);
          r20.xyz = lightConstantsCB[r0.x].data[5].yzw;
          r20.w = lightConstantsCB[r0.x].data[6].x;
          r19.y = dot(r20.xyzw, r18.xyzw);
          r19.xy = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r20.x = lightConstantsCB[r0.x].data[9].w + r19.x;
          r20.y = lightConstantsCB[r0.x].data[10].x + r19.y;
          r19.xy = lightConstantsCB[r0.x].data[9].yz * r20.xy;
          r19.zw = lightConstantsCB[r0.x].data[3].yy / lightConstantsCB[r0.x].data[8].yw;
          r20.xy = float2(1,1) + -r19.zw;
          r20.xy = cmp(r19.xy >= r20.xy);
          r19.zw = cmp(r19.zw >= r19.xy);
          r19.zw = (int2)r19.zw | (int2)r20.xy;
          r4.z = (int)r19.w | (int)r19.z;
          if (r4.z == 0) {
            r20.xyz = lightConstantsCB[r0.x].data[6].yzw;
            r20.w = lightConstantsCB[r0.x].data[7].x;
            r4.z = dot(r20.xyzw, r18.xyzw);
            r19.xy = saturate(r19.xy);
            r18.x = r19.x * lightConstantsCB[r0.x].data[8].y + lightConstantsCB[r0.x].data[8].z;
            r18.y = r19.y * lightConstantsCB[r0.x].data[8].w + lightConstantsCB[r0.x].data[9].x;
            r4.z = lightConstantsCB[r0.x].data[10].y + r4.z;
            r4.z = r4.z / lightConstantsCB[r0.x].data[10].z;
            r4.z = max(6.10351563e-05, r4.z);
            r7.w = 0x0000ffff & (int)lightConstantsCB[r0.x].data[1].w;
            if (enableDitheredShadow != 0) {
              r19.x = -r13.x;
              r20.z = (uint)r7.w;
              r19.y = r14.x;
              r19.z = r13.x;
              r9.x = 0;
              r10.w = 0;
              while (true) {
                r11.w = cmp((int)r10.w >= 8);
                if (r11.w != 0) break;
                r21.x = dot(icb[r10.w+0].yx, r19.xy);
                r21.y = dot(icb[r10.w+0].yx, r19.yz);
                r20.xy = r21.xy * lightConstantsCB[r0.x].data[3].yy + r18.xy;
                r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r4.z).x;
                r9.x = r11.w * 0.125 + r9.x;
                r10.w = (int)r10.w + 1;
              }
            } else {
              r18.z = (uint)r7.w;
              r9.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r4.z).x;
            }
            r0.x = r9.x * r9.x;
            r0.x = r0.x * r9.x;
          } else {
            r0.x = 1;
          }
          r8.w = r8.w * r0.x;
        }
      }
      r0.x = -r2.x * 0.5 + 1;
      r0.x = -r6.w * r0.x + 1;
      r0.x = r0.x * r0.x;
      r0.x = -r0.x * 0.620000005 + 0.620000005;
      r0.x = r0.x + -r6.w;
      r0.x = r1.w * r0.x + r6.w;
      r0.x = r0.x * r8.w;
      r18.xyz = r0.xxx * r17.xyz;
      r1.w = cmp(0 < r3.w);
      r9.xyz = r9.yzw * r2.www + r18.xyz;
      r2.xzw = -r10.xyz * r2.zzz + sunConstants.wldDir.xyz;
      r3.w = dot(r2.xzw, r2.xzw);
      r3.w = rsqrt(r3.w);
      r2.xzw = r3.www * r2.xzw;
      r3.w = dot(r2.xzw, r12.xyz);
      r2.x = dot(r11.xyz, r2.xzw);
      r1.z = abs(r2.x) * r1.z + -abs(r2.x);
      r1.z = abs(r2.x) * r1.z + 1;
      r0.y = r5.w * r0.y + r0.w;
      r0.w = r1.z * r1.z;
      r0.y = r0.w * r0.y;
      r0.y = rcp(r0.y);
      r0.y = r0.y * r2.y;
      r0.y = r8.w * r0.y;
      r0.y = 0.25 * r0.y;
      r2.xyz = r0.yyy * r17.xyz + r13.yzw;
      r0.w = saturate(1 + -r3.w);
      r1.z = r0.w * r0.w;
      r1.z = r1.z * r1.z;
      r0.w = r1.z * r0.w;
      r0.y = r0.y * r0.w;
      r11.xyz = r0.yyy * r17.xyz + r16.xzw;
      r0.xyw = r0.xxx * r17.xyz + r15.xyz;
      r0.xyw = r0.zzz ? r0.xyw : 0;
      r14.yzw = r1.www ? r9.xyz : r14.yzw;
      r15.xyz = r1.www ? r15.xyz : r0.xyw;
      r16.xzw = r1.www ? r11.xyz : r16.xzw;
      r13.yzw = r1.www ? r2.xyz : r13.yzw;
    }
  }
  r2.xyz = r4.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r0.x = (uint)r2.y;
  r4.xyz = r5.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.y = (uint)r4.x;
  r0.y = cmp((int)r0.x == (int)r0.y);
  r0.yw = r0.yy ? r4.yz : float2(-1,0);
  r4.xyz = r6.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.z = (uint)r4.x;
  r1.z = cmp((int)r0.x == (int)r1.z);
  r1.zw = r1.zz ? r4.yz : float2(-1,0);
  r4.xyz = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r3.w = (uint)r4.x;
  r3.w = cmp((int)r0.x == (int)r3.w);
  r4.xy = r3.ww ? r4.yz : float2(-1,0);
  r5.xyz = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r3.w = (uint)r5.x;
  r0.x = cmp((int)r0.x == (int)r3.w);
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
  r0.y = r5.x * r0.w + r0.y;
  r0.y = r5.z * r4.y + r0.y;
  r0.y = r5.w * r4.w + r0.y;
  r2.w = r0.y / r0.x;
  r0.x = cmp(0 >= r0.x);
  r2.yz = r0.xx ? float2(0,0) : r2.zw;
  r0.xy = (int2)r1.xy & int2(1,1);
  r0.x = cmp((int)r0.y == (int)r0.x);
  r0.xyw = r0.xxx ? r2.xyz : r2.xzy;
  r0.x = -r0.w * 0.5 + r0.x;
  r2.y = r0.w + r0.x;
  r2.z = -r0.y * 0.5 + r0.x;
  r2.x = r2.z + r0.y;
  r0.xyw = r14.yzw * r3.xyz;
  r0.xyw = r15.xyz * r2.xyz + r0.xyw;
  r4.xyz = float3(0.959999979,0.959999979,0.959999979) * r16.xzw;
  r4.xyz = r13.yzw * float3(0.0399999991,0.0399999991,0.0399999991) + r4.xyz;
  r0.xyw = r4.xyz + r0.xyw;
  r4.xyz = float3(1,1,1) + -r2.xyz;
  r4.xyz = r16.xzw * r4.xyz;
  r2.xyz = r13.yzw * r2.xyz + r4.xyz;
  r2.xyz = r14.yzw * r3.xyz + r2.xyz;
  r0.xyz = r0.zzz ? r0.xyw : r2.xyz;
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