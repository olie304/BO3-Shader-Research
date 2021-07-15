// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:23:09 2021

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.x = mad(permuteStride, 43, (int)vThreadGroupID.x);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=8)(mixed,mixed,mixed,mixed) r0.xy, r0.x, l(0), t25.xyxx
r0.x = samp0[]..swiz;
r0.y = samp0[]..swiz;
  r0.zw = (int2)r0.xy & int2(4095,4095);
  r1.xy = mad((int2)r0.zw, int2(8,8), (int2)vThreadIDInGroup.xy);
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
  r0.w = dot(r1.wz, float2(0.0671105608,0.00583714992));
  r0.w = frac(r0.w);
  r0.w = 52.9829178 * r0.w;
  r0.w = frac(r0.w);
  r0.w = r0.w * 6.28318548 + gameTick.w;
  sincos(r0.w, r13.x, r14.x);
  r0.w = dot(r1.zw, float2(0.0671105608,0.00583714992));
  r0.w = frac(r0.w);
  r0.w = 52.9829178 * r0.w;
  r0.w = frac(r0.w);
  r0.w = r0.w * 6.28318548 + gameTick.w;
  sincos(r0.w, r3.x, r15.x);
  r2.x = saturate(dot(r11.xyz, r12.xyz));
  r0.w = dot(-r12.xyz, r11.xyz);
  r0.w = r0.w + r0.w;
  r16.xyz = r11.xyz * -r0.www + -r12.xyz;
  r0.w = 17 * r2.y;
  r0.w = exp2(r0.w);
  r0.w = 2 + r0.w;
  r0.w = 2 / r0.w;
  r1.z = sqrt(r0.w);
  r2.zw = renderTargetSize.zw * r9.xy;
  r17.xyzw = gSSAOTexture.Gather(samplerLinearClamp_s, r2.zw).xyzw;
  r18.xyzw = gSSAODepthTexture.Gather(samplerLinearClamp_s, r2.zw).xyzw;
  r2.zw = float2(0.5,0.5) * r9.xy;
  r2.zw = frac(r2.zw);
  r9.xy = float2(1,1) + -r2.wz;
  r19.y = r9.y * r9.x;
  r19.xz = r9.xy * r2.zw;
  r19.w = r2.z * r2.w;
  r1.w = dot(r17.xyzw, r19.xyzw);
  r18.xyzw = r18.xyzw + -r9.wwww;
  r2.z = min(abs(r18.z), abs(r18.w));
  r2.z = min(abs(r18.y), r2.z);
  r2.z = min(abs(r18.x), r2.z);
  r2.w = max(abs(r18.z), abs(r18.w));
  r2.w = max(abs(r18.y), r2.w);
  r2.w = max(abs(r18.x), r2.w);
  r15.yzw = cmp(r2.zzz == abs(r18.yzw));
  r2.z = r15.y ? r17.y : r17.x;
  r2.z = r15.z ? r17.z : r2.z;
  r2.z = r15.w ? r17.w : r2.z;
  r5.w = 0.00999999978 * r9.w;
  r2.w = cmp(r5.w < r2.w);
  r1.w = r2.w ? r2.z : r1.w;
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
      r12.w = 0;
      while (true) {
        r13.z = cmp(r8.w >= 3);
        if (r13.z != 0) break;
        r13.z = (uint)r8.w;
        r15.yz = -sunConstants.splitPinTransform[r13.z].xy + r9.xy;
        r13.w = max(abs(r15.y), abs(r15.z));
        r12.w = sunConstants.splitPinTransform[r13.z].z * r13.w;
        r13.z = cmp(r12.w < 1);
        if (r13.z != 0) {
          break;
        }
        r8.w = 1 + r8.w;
        r12.w = 0;
      }
    } else {
      r8.w = 3;
      r12.w = 0;
    }
    r13.z = cmp(r8.w >= 3);
    if (r13.z != 0) {
      r15.yzw = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r17.xz = rcp(r15.yy);
      r17.y = -r17.z;
      r15.yzw = r9.xyx * r17.xyz + r15.zwz;
      r17.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r15.yzw = max(float3(0,0,0), r15.yzw);
      r15.yzw = min(r15.yzw, r17.xyz);
      r17.xy = sunConstants.sstLightingConstants.coordScale * r15.wz;
      r17.xy = floor(r17.xy);
      r13.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r17.y;
      r13.w = r13.w * sunConstants.sstLightingConstants.coordScale + r17.x;
      r13.w = (uint)r13.w;
      r13.w = (int)r13.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.w, r13.w, l(0), t23.xxxx
    r14.w = samp0[]..swiz;
      r17.x = (int)r14.w & 0x40000000;
      r17.y = (uint)r14.w << 2;
      if (r17.x == 0) {
        r17.x = (int)r14.w & 0x01ffffff;
        r18.x = (int)r13.w + (int)r17.x;
        r13.w = (uint)r14.w >> 25;
        r13.w = (uint)r13.w;
        r15.yzw = r15.yzw * r13.www;
        r15.yzw = frac(r15.yzw);
        r15.yzw = float3(128,128,128) * r15.yzw;
        r15.yzw = (uint3)r15.yzw;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
      r18.z = samp0[]..swiz;
        r17.xz = (uint2)r15.wz >> int2(6,6);
        r13.w = (int)r18.z & 0xc0000000;
        r14.w = (int)r18.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.w, r14.w, l(0), t23.xxxx
      r14.w = samp0[]..swiz;
        r14.w = r17.z ? r18.z : r14.w;
        r17.z = (uint)r14.w >> 13;
        r14.w = r17.x ? r17.z : r14.w;
        r14.w = (int)r14.w & 8191;
        r19.x = (int)r14.w + (int)r18.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
      r19.z = samp0[]..swiz;
        r18.y = 0;
        r19.y = 1;
        r17.xzw = r13.www ? r18.xyz : r19.xyz;
        r19.yz = r13.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r20.xy = (uint2)r15.wz >> (uint2)r19.yy;
        r20.xy = (int2)r20.xy & int2(1,1);
        r14.w = (int)r17.w & 0xc0000000;
        r18.w = (int)r17.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.w, l(0), t23.xxxx
      r18.w = samp0[]..swiz;
        r18.w = r20.y ? r17.w : r18.w;
        r19.y = (uint)r18.w >> 13;
        r18.w = r20.x ? r19.y : r18.w;
        r18.w = (int)r18.w & 8191;
        r19.x = (int)r17.x + (int)r18.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.w, r19.x, l(0), t23.xxxx
      r19.w = samp0[]..swiz;
        r17.xzw = r14.www ? r17.xzw : r19.xzw;
        r17.xzw = r13.www ? r18.xyz : r17.xzw;
        r13.w = (int)r17.w & 0xc0000000;
        if (r13.w == 0) {
          r13.w = (int)-r17.z + 6;
          r18.xy = (uint2)r15.wz >> (uint2)r13.ww;
          r13.w = (int)r17.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r14.w = (((uint)r18.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r14.w = (((uint)r18.x << 0) & bitmask.w) | ((uint)r14.w & ~bitmask.w);
          r14.w = (int)r14.w * 10;
          r13.w = (uint)r13.w >> (uint)r14.w;
          r13.w = (int)r13.w & 1023;
          r18.x = (int)r13.w + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.x, l(0), t23.xxxx
        r18.w = samp0[]..swiz;
          r18.yz = (int2)r17.zz + int2(1,2);
          r13.w = (int)-r18.y + 6;
          r19.xy = (uint2)r15.wz >> (uint2)r13.ww;
          r13.w = (int)r18.w & 0xc0000000;
          r14.w = (int)r18.w | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r17.z = (((uint)r19.y << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r17.z = (((uint)r19.x << 0) & bitmask.z) | ((uint)r17.z & ~bitmask.z);
          r17.z = (int)r17.z * 10;
          r14.w = (uint)r14.w >> (uint)r17.z;
          r14.w = (int)r14.w & 1023;
          r19.x = (int)r14.w + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
        r19.z = samp0[]..swiz;
          r19.y = r18.z;
          r19.xyz = r13.www ? r18.xyw : r19.xyz;
          r14.w = (int)-r19.y + 6;
          r18.yz = (uint2)r15.wz >> (uint2)r14.ww;
          r14.w = (int)r19.z & 0xc0000000;
          r17.z = (int)r19.z | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r18.z = (((uint)r18.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r18.y = (((uint)r18.y << 0) & bitmask.y) | ((uint)r18.z & ~bitmask.y);
          r18.y = (int)r18.y * 10;
          r17.z = (uint)r17.z >> (uint)r18.y;
          r17.z = (int)r17.z & 1023;
          r20.x = (int)r17.z + (int)r19.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.y, r20.x, l(0), t23.xxxx
        r20.y = samp0[]..swiz;
          r18.yz = r14.ww ? r19.xz : r20.xy;
          r17.xw = r13.ww ? r18.xw : r18.yz;
        }
        r13.w = (int)r17.w & 0xc0000000;
        if (r13.w == 0) {
          if (14 == 0) r14.w = 0; else if (14+15 < 32) {           r14.w = (uint)r17.w << (32-(14 + 15)); r14.w = (uint)r14.w >> (32-14);          } else r14.w = (uint)r17.w >> 15;
          r14.w = (uint)r14.w;
          r14.w = sunConstants.sstLightingConstants.constants.spanInInches * r14.w;
          r14.w = 6.10388815e-05 * r14.w;
          r18.xy = (int2)r17.ww & int2(32767,536870912);
          r17.z = (uint)r18.x;
          r17.z = sunConstants.sstLightingConstants.constants.spanInInches * r17.z;
          r17.z = 3.05185094e-05 * r17.z;
          r18.x = (int)r15.z & 3;
          r18.x = (int)r17.x + (int)r18.x;
          r18.x = (int)r18.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.x, r18.x, l(0), t23.xxxx
        r18.x = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r19.x = (((uint)r15.y << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r19.y = (((uint)r15.z << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r19.z = (((uint)r15.w << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r15.y = (uint)r18.x >> (uint)r19.x;
          r15.y = (int)r15.y & 255;
          r15.y = (uint)r15.y;
          r15.y = r15.y * r17.z;
          r15.y = r15.y * 0.00392156886 + r14.w;
          r15.z = (int)r19.y + 1;
          if (1 == 0) r15.w = 0; else if (1+1 < 32) {           r15.w = (uint)r15.w << (32-(1 + 1)); r15.w = (uint)r15.w >> (32-1);          } else r15.w = (uint)r15.w >> 1;
          r15.z = (int)r15.w + (int)r15.z;
          r15.z = (int)r15.z + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.z, r15.z, l(0), t23.xxxx
        r15.z = samp0[]..swiz;
          r15.z = (uint)r15.z >> (uint)r19.z;
          r15.z = (int)r15.z & 0x0000ffff;
          r15.z = (uint)r15.z;
          r15.z = r15.z * r17.z;
          r14.w = r15.z * 1.52590219e-05 + r14.w;
          r17.y = r18.y ? r15.y : r14.w;
        } else {
          r14.w = (int)r17.w & 0x80000000;
          r15.y = (int)r17.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.y, r15.y, l(0), t23.xxxx
        r15.y = samp0[]..swiz;
          r14.w = r14.w ? r15.y : 0;
          r15.y = (uint)r17.w << 2;
          r15.z = (uint)r14.w >> 16;
          r15.z = f16tof32(r15.z);
          r14.w = (int)r14.w & 0x0000ffff;
          r14.w = f16tof32(r14.w);
          r15.y = r9.x * r15.z + r15.y;
          r14.w = r9.y * r14.w + r15.y;
          r17.y = r13.w ? r14.w : r17.y;
        }
      }
      r9.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r9.w;
      r9.w = cmp(r17.y < r9.w);
      r7.w = r9.w ? 0 : 1;
    }
    if (r13.z == 0) {
      if (enableDitheredShadow == 0) {
        r9.w = (uint)r8.w;
        r13.zw = -sunConstants.splitPinTransform[r9.w].xy + r9.xy;
        r13.zw = sunConstants.splitPinTransform[r9.w].zz * r13.zw;
        r17.xy = r13.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r9.w = (int16)sunConstants.splitArrayOffset;
        r17.z = r9.w + r8.w;
        r9.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r6.w).x;
        r13.z = gTransShadowmapArray.SampleLevel(samp0_s, r17.xyz, 0).x;
        r9.w = r13.z + r9.w;
        r9.w = saturate(-1 + r9.w);
        r13.z = r9.w * r9.w;
        r7.w = r13.z * r9.w;
      }
      if (enableDitheredShadow != 0) {
        r17.x = -r13.x;
        r9.w = (uint)r8.w;
        r8.w = 1 + r8.w;
        r8.w = min(2, r8.w);
        r8.w = (uint)r8.w;
        r12.w = 1 + -r12.w;
        r12.w = 28 * r12.w;
        r12.w = (uint)r12.w;
        r13.zw = -sunConstants.splitPinTransform[r9.w].xy + r9.xy;
        r13.zw = sunConstants.splitPinTransform[r9.w].zz * r13.zw;
        r13.zw = r13.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r9.xy = -sunConstants.splitPinTransform[r8.w].xy + r9.xy;
        r9.xy = sunConstants.splitPinTransform[r8.w].zz * r9.xy;
        r9.xy = r9.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r17.y = r14.x;
        r17.z = r13.x;
        r14.w = 0;
        r15.y = 0;
        while (true) {
          r15.z = cmp((uint)r15.y >= 8);
          if (r15.z != 0) break;
          r15.z = cmp((uint)r12.w < (uint)r15.y);
          r18.xy = r15.zz ? r9.xy : r13.zw;
          r15.w = r15.z ? sunConstants.splitPinTransform[r8.w].w : sunConstants.splitPinTransform[r9.w].w;
          r15.z = r15.z ? r8.w : r9.w;
          r19.x = dot(icb[r15.y+0].yx, r17.xy);
          r19.y = dot(icb[r15.y+0].yx, r17.yz);
          r18.xy = r19.xy * r15.ww + r18.xy;
          r15.z = (int)r15.z + (int16)sunConstants.splitArrayOffset;
          r18.z = (uint)r15.z;
          r15.z = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r6.w).x;
          r15.w = gTransShadowmapArray.SampleLevel(samp0_s, r18.xyz, 0).x;
          r15.z = r15.z + r15.w;
          r15.z = saturate(-1 + r15.z);
          r14.w = r15.z * 0.125 + r14.w;
          r15.y = (int)r15.y + 1;
        }
        r6.w = r14.w * r14.w;
        r7.w = r6.w * r14.w;
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
  r12.w = r8.w * r6.w;
  r9.w = -r12.w * 2.0159049 + r9.w;
  r9.w = exp2(r9.w);
  r9.w = r9.w * r2.x;
  r9.xyw = float3(100,9.1368103,9.70808983) * r9.xyw;
  r9.y = max(r9.y, r9.w);
  r9.y = max(1.26815999, r9.y);
  r9.w = numRefProbes + -numOverrideProbes;
  r13.zw = (uint2)r0.yx >> int2(24,24);
  r0.y = cmp((uint)r13.z >= (uint)r9.w);
  r12.w = cmp((uint)r13.z < numRefProbes);
  r0.y = r0.y ? r12.w : 0;
  if (r0.y != 0) {
    r0.y = (int)r13.z * 14;
    r15.yzw = -refProbeConstantsCB[r0.y].data[0].xyz + r10.xyz;
    r12.w = 0x0000ffff & (int)refProbeConstantsCB[r0.y].data[7].z;
    if (6 == 0) r14.w = 0; else if (6+25 < 32) {     r14.w = (uint)refProbeConstantsCB[r0.y].data[7].z << (32-(6 + 25)); r14.w = (uint)r14.w >> (32-6);    } else r14.w = (uint)refProbeConstantsCB[r0.y].data[7].z >> 25;
    r17.x = (int)r12.w * 6;
    r17.y = dot(refProbeAttenuationConstantsCB[r17.x].data[0].xyz, r15.yzw);
    r17.y = saturate(refProbeAttenuationConstantsCB[r17.x].data[0].w + r17.y);
    r17.z = dot(refProbeAttenuationConstantsCB[r17.x].data[1].xyz, r15.yzw);
    r17.z = saturate(refProbeAttenuationConstantsCB[r17.x].data[1].w + r17.z);
    r17.y = r17.y * r17.z;
    r17.z = dot(refProbeAttenuationConstantsCB[r17.x].data[2].xyz, r15.yzw);
    r17.z = saturate(refProbeAttenuationConstantsCB[r17.x].data[2].w + r17.z);
    r17.y = r17.y * r17.z;
    r17.z = dot(refProbeAttenuationConstantsCB[r17.x].data[3].xyz, r15.yzw);
    r17.z = saturate(refProbeAttenuationConstantsCB[r17.x].data[3].w + r17.z);
    r17.y = r17.y * r17.z;
    r17.z = dot(refProbeAttenuationConstantsCB[r17.x].data[4].xyz, r15.yzw);
    r17.z = saturate(refProbeAttenuationConstantsCB[r17.x].data[4].w + r17.z);
    r17.y = r17.y * r17.z;
    r17.z = dot(refProbeAttenuationConstantsCB[r17.x].data[5].xyz, r15.yzw);
    r17.x = saturate(refProbeAttenuationConstantsCB[r17.x].data[5].w + r17.z);
    r17.x = r17.y * r17.x;
    r17.w = 1 & (int)refProbeConstantsCB[r0.y].data[6].x;
    r17.yz = float2(0,1);
    r17.xy = r17.ww ? r17.xy : r17.zx;
    r18.x = 1;
    r17.z = refProbeConstantsCB[r0.y].data[6].x;
    r19.xy = r17.xy;
    r17.w = 1;
    while (true) {
      r18.z = cmp((int)r17.w >= (int)r14.w);
      if (r18.z != 0) break;
      r18.z = (int)r12.w + (int)r17.w;
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
      r19.z = (uint)r17.z >> 2;
      if (1 == 0) r19.w = 0; else if (1+2 < 32) {       r19.w = (uint)r17.z << (32-(1 + 2)); r19.w = (uint)r19.w >> (32-1);      } else r19.w = (uint)r17.z >> 2;
      r20.x = (int)r19.z & 2;
      r20.y = max(r19.y, r19.x);
      r18.z = -r18.w * r18.z + 1;
      r18.z = r19.y * r18.z;
      r18.y = r20.x ? r18.z : r20.y;
      r19.xy = r19.ww ? r19.xy : r18.xy;
      r17.w = (int)r17.w + 1;
      r17.z = r19.z;
    }
    r19.y = saturate(r19.y);
    r12.w = refProbeConstantsCB[r0.y].data[6].y * r19.y;
    r14.w = cmp(0 < r12.w);
    if (r14.w != 0) {
      r14.w = refProbeConstantsCB[r0.y].data[7].y * r12.w;
      r17.x = refProbeConstantsCB[r0.y].data[7].w;
      r17.yz = refProbeConstantsCB[r0.y].data[8].xy;
      r17.w = dot(r16.xyz, r17.xyz);
      r17.x = dot(r15.yzw, r17.xyz);
      r17.x = -refProbeConstantsCB[r0.y].data[8].z + r17.x;
      r17.y = cmp(r17.x >= 0);
      r17.x = max(abs(r17.x), r9.x);
      r17.x = r17.y ? r17.x : -r17.x;
      r17.y = max(1.00000001e-07, -r17.w);
      r17.x = r17.x / r17.y;
      r17.x = min(131072, abs(r17.x));
      r18.x = refProbeConstantsCB[r0.y].data[8].w;
      r18.yz = refProbeConstantsCB[r0.y].data[9].xy;
      r17.y = dot(r16.xyz, r18.xyz);
      r17.z = dot(r15.yzw, r18.xyz);
      r17.z = -refProbeConstantsCB[r0.y].data[9].z + r17.z;
      r17.w = cmp(r17.z >= 0);
      r17.z = max(abs(r17.z), r9.x);
      r17.z = r17.w ? r17.z : -r17.z;
      r17.y = max(1.00000001e-07, -r17.y);
      r17.y = r17.z / r17.y;
      r17.x = min(r17.x, abs(r17.y));
      r18.x = refProbeConstantsCB[r0.y].data[9].w;
      r18.yz = refProbeConstantsCB[r0.y].data[10].xy;
      r17.y = dot(r16.xyz, r18.xyz);
      r17.z = dot(r15.yzw, r18.xyz);
      r17.z = -refProbeConstantsCB[r0.y].data[10].z + r17.z;
      r17.w = cmp(r17.z >= 0);
      r17.z = max(abs(r17.z), r9.x);
      r17.z = r17.w ? r17.z : -r17.z;
      r17.y = max(1.00000001e-07, -r17.y);
      r17.y = r17.z / r17.y;
      r17.x = min(r17.x, abs(r17.y));
      r18.x = refProbeConstantsCB[r0.y].data[10].w;
      r18.yz = refProbeConstantsCB[r0.y].data[11].xy;
      r17.y = dot(r16.xyz, r18.xyz);
      r17.z = dot(r15.yzw, r18.xyz);
      r17.z = -refProbeConstantsCB[r0.y].data[11].z + r17.z;
      r17.w = cmp(r17.z >= 0);
      r17.z = max(abs(r17.z), r9.x);
      r17.z = r17.w ? r17.z : -r17.z;
      r17.y = max(1.00000001e-07, -r17.y);
      r17.y = r17.z / r17.y;
      r17.x = min(r17.x, abs(r17.y));
      r18.x = refProbeConstantsCB[r0.y].data[11].w;
      r18.yz = refProbeConstantsCB[r0.y].data[12].xy;
      r17.y = dot(r16.xyz, r18.xyz);
      r17.z = dot(r15.yzw, r18.xyz);
      r17.z = -refProbeConstantsCB[r0.y].data[12].z + r17.z;
      r17.w = cmp(r17.z >= 0);
      r17.z = max(abs(r17.z), r9.x);
      r17.z = r17.w ? r17.z : -r17.z;
      r17.y = max(1.00000001e-07, -r17.y);
      r17.y = r17.z / r17.y;
      r17.x = min(r17.x, abs(r17.y));
      r18.x = refProbeConstantsCB[r0.y].data[12].w;
      r18.yz = refProbeConstantsCB[r0.y].data[13].xy;
      r17.y = dot(r16.xyz, r18.xyz);
      r17.z = dot(r15.yzw, r18.xyz);
      r17.z = -refProbeConstantsCB[r0.y].data[13].z + r17.z;
      r17.w = cmp(r17.z >= 0);
      r17.z = max(abs(r17.z), r9.x);
      r17.z = r17.w ? r17.z : -r17.z;
      r17.y = max(1.00000001e-07, -r17.y);
      r17.y = r17.z / r17.y;
      r17.x = min(r17.x, abs(r17.y));
      r18.x = refProbeConstantsCB[r0.y].data[3].w + r15.y;
      r18.yz = refProbeConstantsCB[r0.y].data[4].xy + r15.zw;
      r17.yzw = r16.xyz * r17.xxx + r18.xyz;
      r18.x = dot(r17.yzw, r17.yzw);
      r18.x = sqrt(r18.x);
      r17.x = r17.x / r18.x;
      r17.x = r17.x + r17.x;
      r17.x = sqrt(r17.x);
      r17.x = r6.w * 5 + r17.x;
      r17.x = -0.844799995 + r17.x;
      r18.x = refProbeConstantsCB[r0.y].data[0].w;
      r18.y = refProbeConstantsCB[r0.y].data[1].z;
      r18.z = refProbeConstantsCB[r0.y].data[2].y;
      r19.x = dot(r17.yzw, r18.xyz);
      r20.xy = refProbeConstantsCB[r0.y].data[1].xw;
      r20.z = refProbeConstantsCB[r0.y].data[2].z;
      r19.y = dot(r17.yzw, r20.xyz);
      r21.x = refProbeConstantsCB[r0.y].data[1].y;
      r21.yz = refProbeConstantsCB[r0.y].data[2].xw;
      r19.z = dot(r17.yzw, r21.xyz);
      if (9 == 0) r17.y = 0; else if (9+16 < 32) {       r17.y = (uint)refProbeConstantsCB[r0.y].data[7].z << (32-(9 + 16)); r17.y = (uint)r17.y >> (32-9);      } else r17.y = (uint)refProbeConstantsCB[r0.y].data[7].z >> 16;
      r19.w = (uint)r17.y;
      r17.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r19.xyzw, r17.x).xyz;
      r22.x = dot(r15.yzw, r18.xyz);
      r22.y = dot(r15.yzw, r20.xyz);
      r22.z = dot(r15.yzw, r21.xyz);
      r15.yzw = saturate(r22.xyz * refProbeConstantsCB[r0.y].data[3].xyz + float3(0.5,0.5,0.5));
      r22.xy = refProbeConstantsCB[r0.y].data[4].zw * r15.yz;
      r22.z = refProbeConstantsCB[r0.y].data[5].x * r15.w;
      r15.yzw = refProbeConstantsCB[r0.y].data[5].yzw + r22.xyz;
      r19.x = dot(r11.xyz, r18.xyz);
      r19.y = dot(r11.xyz, r20.xyz);
      r19.z = dot(r11.xyz, r21.xyz);
      r18.xyz = cmp(float3(0,0,0) < r19.xyz);
      r20.z = r18.x ? 0 : 0.5;
      r20.xy = float2(0,0);
      r20.xyz = r20.xyz + r15.yzw;
      r20.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r20.xyz, 0).xyz;
      r21.xyz = r19.xyz * r19.xyz;
      r21.xyz = r21.xyz * r14.www;
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
      r0.y = dot(r15.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r17.w = r9.y * r0.y;
      r17.xyz = r17.xyz * r14.www;
      r14.w = dot(r17.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r0.y = r9.y * r0.y + r14.w;
      r0.y = r17.w / r0.y;
      r17.xyz = r17.xyz * r0.yyy;
    } else {
      r17.xyz = float3(0,0,0);
      r12.w = 0;
      r15.yzw = float3(0,0,0);
    }
  } else {
    r17.xyz = float3(0,0,0);
    r12.w = 0;
    r15.yzw = float3(0,0,0);
  }
  r0.y = cmp(r12.w < 1);
  if (r0.y != 0) {
    r0.y = cmp((uint)r13.z < (uint)r9.w);
    if (r0.y != 0) {
      r0.y = (int)r13.z * 14;
      r18.xyz = -refProbeConstantsCB[r0.y].data[0].xyz + r10.xyz;
      r9.w = 0x0000ffff & (int)refProbeConstantsCB[r0.y].data[7].z;
      if (6 == 0) r13.z = 0; else if (6+25 < 32) {       r13.z = (uint)refProbeConstantsCB[r0.y].data[7].z << (32-(6 + 25)); r13.z = (uint)r13.z >> (32-6);      } else r13.z = (uint)refProbeConstantsCB[r0.y].data[7].z >> 25;
      r14.w = (int)r9.w * 6;
      r17.w = dot(refProbeAttenuationConstantsCB[r14.w].data[0].xyz, r18.xyz);
      r17.w = saturate(refProbeAttenuationConstantsCB[r14.w].data[0].w + r17.w);
      r18.w = dot(refProbeAttenuationConstantsCB[r14.w].data[1].xyz, r18.xyz);
      r18.w = saturate(refProbeAttenuationConstantsCB[r14.w].data[1].w + r18.w);
      r17.w = r18.w * r17.w;
      r18.w = dot(refProbeAttenuationConstantsCB[r14.w].data[2].xyz, r18.xyz);
      r18.w = saturate(refProbeAttenuationConstantsCB[r14.w].data[2].w + r18.w);
      r17.w = r18.w * r17.w;
      r18.w = dot(refProbeAttenuationConstantsCB[r14.w].data[3].xyz, r18.xyz);
      r18.w = saturate(refProbeAttenuationConstantsCB[r14.w].data[3].w + r18.w);
      r17.w = r18.w * r17.w;
      r18.w = dot(refProbeAttenuationConstantsCB[r14.w].data[4].xyz, r18.xyz);
      r18.w = saturate(refProbeAttenuationConstantsCB[r14.w].data[4].w + r18.w);
      r17.w = r18.w * r17.w;
      r18.w = dot(refProbeAttenuationConstantsCB[r14.w].data[5].xyz, r18.xyz);
      r14.w = saturate(refProbeAttenuationConstantsCB[r14.w].data[5].w + r18.w);
      r19.x = r17.w * r14.w;
      r14.w = 1 & (int)refProbeConstantsCB[r0.y].data[6].x;
      r19.yz = float2(0,1);
      r19.xy = r14.ww ? r19.xy : r19.zx;
      r20.x = 1;
      r14.w = refProbeConstantsCB[r0.y].data[6].x;
      r21.xy = r19.xy;
      r17.w = 1;
      while (true) {
        r18.w = cmp((int)r17.w >= (int)r13.z);
        if (r18.w != 0) break;
        r18.w = (int)r9.w + (int)r17.w;
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
        r19.w = (uint)r14.w >> 2;
        if (1 == 0) r20.z = 0; else if (1+2 < 32) {         r20.z = (uint)r14.w << (32-(1 + 2)); r20.z = (uint)r20.z >> (32-1);        } else r20.z = (uint)r14.w >> 2;
        r20.w = (int)r19.w & 2;
        r21.z = max(r21.y, r21.x);
        r18.w = -r19.z * r18.w + 1;
        r18.w = r21.y * r18.w;
        r20.y = r20.w ? r18.w : r21.z;
        r21.xy = r20.zz ? r21.xy : r20.xy;
        r17.w = (int)r17.w + 1;
        r14.w = r19.w;
      }
      r9.w = saturate(r21.y + -r12.w);
      r13.z = refProbeConstantsCB[r0.y].data[6].y * r9.w;
      r14.w = cmp(0 < r13.z);
      if (r14.w != 0) {
        r12.w = r9.w * refProbeConstantsCB[r0.y].data[6].y + r12.w;
        r9.w = refProbeConstantsCB[r0.y].data[7].y * r13.z;
        r19.x = refProbeConstantsCB[r0.y].data[7].w;
        r19.yz = refProbeConstantsCB[r0.y].data[8].xy;
        r13.z = dot(r16.xyz, r19.xyz);
        r14.w = dot(r18.xyz, r19.xyz);
        r14.w = -refProbeConstantsCB[r0.y].data[8].z + r14.w;
        r17.w = cmp(r14.w >= 0);
        r14.w = max(abs(r14.w), r9.x);
        r14.w = r17.w ? r14.w : -r14.w;
        r13.z = max(1.00000001e-07, -r13.z);
        r13.z = r14.w / r13.z;
        r13.z = min(131072, abs(r13.z));
        r19.x = refProbeConstantsCB[r0.y].data[8].w;
        r19.yz = refProbeConstantsCB[r0.y].data[9].xy;
        r14.w = dot(r16.xyz, r19.xyz);
        r17.w = dot(r18.xyz, r19.xyz);
        r17.w = -refProbeConstantsCB[r0.y].data[9].z + r17.w;
        r18.w = cmp(r17.w >= 0);
        r17.w = max(abs(r17.w), r9.x);
        r17.w = r18.w ? r17.w : -r17.w;
        r14.w = max(1.00000001e-07, -r14.w);
        r14.w = r17.w / r14.w;
        r13.z = min(abs(r14.w), r13.z);
        r19.x = refProbeConstantsCB[r0.y].data[9].w;
        r19.yz = refProbeConstantsCB[r0.y].data[10].xy;
        r14.w = dot(r16.xyz, r19.xyz);
        r17.w = dot(r18.xyz, r19.xyz);
        r17.w = -refProbeConstantsCB[r0.y].data[10].z + r17.w;
        r18.w = cmp(r17.w >= 0);
        r17.w = max(abs(r17.w), r9.x);
        r17.w = r18.w ? r17.w : -r17.w;
        r14.w = max(1.00000001e-07, -r14.w);
        r14.w = r17.w / r14.w;
        r13.z = min(abs(r14.w), r13.z);
        r19.x = refProbeConstantsCB[r0.y].data[10].w;
        r19.yz = refProbeConstantsCB[r0.y].data[11].xy;
        r14.w = dot(r16.xyz, r19.xyz);
        r17.w = dot(r18.xyz, r19.xyz);
        r17.w = -refProbeConstantsCB[r0.y].data[11].z + r17.w;
        r18.w = cmp(r17.w >= 0);
        r17.w = max(abs(r17.w), r9.x);
        r17.w = r18.w ? r17.w : -r17.w;
        r14.w = max(1.00000001e-07, -r14.w);
        r14.w = r17.w / r14.w;
        r13.z = min(abs(r14.w), r13.z);
        r19.x = refProbeConstantsCB[r0.y].data[11].w;
        r19.yz = refProbeConstantsCB[r0.y].data[12].xy;
        r14.w = dot(r16.xyz, r19.xyz);
        r17.w = dot(r18.xyz, r19.xyz);
        r17.w = -refProbeConstantsCB[r0.y].data[12].z + r17.w;
        r18.w = cmp(r17.w >= 0);
        r17.w = max(abs(r17.w), r9.x);
        r17.w = r18.w ? r17.w : -r17.w;
        r14.w = max(1.00000001e-07, -r14.w);
        r14.w = r17.w / r14.w;
        r13.z = min(abs(r14.w), r13.z);
        r19.x = refProbeConstantsCB[r0.y].data[12].w;
        r19.yz = refProbeConstantsCB[r0.y].data[13].xy;
        r14.w = dot(r16.xyz, r19.xyz);
        r17.w = dot(r18.xyz, r19.xyz);
        r17.w = -refProbeConstantsCB[r0.y].data[13].z + r17.w;
        r18.w = cmp(r17.w >= 0);
        r9.x = max(abs(r17.w), r9.x);
        r9.x = r18.w ? r9.x : -r9.x;
        r14.w = max(1.00000001e-07, -r14.w);
        r9.x = r9.x / r14.w;
        r9.x = min(r13.z, abs(r9.x));
        r19.x = refProbeConstantsCB[r0.y].data[3].w + r18.x;
        r19.yz = refProbeConstantsCB[r0.y].data[4].xy + r18.yz;
        r19.xyz = r16.xyz * r9.xxx + r19.xyz;
        r13.z = dot(r19.xyz, r19.xyz);
        r13.z = sqrt(r13.z);
        r9.x = r9.x / r13.z;
        r9.x = r9.x + r9.x;
        r9.x = sqrt(r9.x);
        r6.w = r6.w * 5 + r9.x;
        r6.w = -0.844799995 + r6.w;
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
        if (9 == 0) r9.x = 0; else if (9+16 < 32) {         r9.x = (uint)refProbeConstantsCB[r0.y].data[7].z << (32-(9 + 16)); r9.x = (uint)r9.x >> (32-9);        } else r9.x = (uint)refProbeConstantsCB[r0.y].data[7].z >> 16;
        r21.w = (uint)r9.x;
        r19.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r21.xyzw, r6.w).xyz;
        r24.x = dot(r18.xyz, r20.xyz);
        r24.y = dot(r18.xyz, r22.xyz);
        r24.z = dot(r18.xyz, r23.xyz);
        r18.xyz = saturate(r24.xyz * refProbeConstantsCB[r0.y].data[3].xyz + float3(0.5,0.5,0.5));
        r24.xy = refProbeConstantsCB[r0.y].data[4].zw * r18.xy;
        r24.z = refProbeConstantsCB[r0.y].data[5].x * r18.z;
        r18.xyz = refProbeConstantsCB[r0.y].data[5].yzw + r24.xyz;
        r21.x = dot(r11.xyz, r20.xyz);
        r21.y = dot(r11.xyz, r22.xyz);
        r21.z = dot(r11.xyz, r23.xyz);
        r20.xyz = cmp(float3(0,0,0) < r21.xyz);
        r22.z = r20.x ? 0 : 0.5;
        r22.xy = float2(0,0);
        r22.xyz = r22.xyz + r18.xyz;
        r22.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r22.xyz, 0).xyz;
        r23.xyz = r21.xyz * r21.xyz;
        r23.xyz = r23.xyz * r9.www;
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
        r6.w = r9.y * r0.y;
        r18.xyz = r19.xyz * r9.www;
        r9.x = dot(r18.xyz, float3(0.212599993,0.715200007,0.0722000003));
        r0.y = r9.y * r0.y + r9.x;
        r0.y = r6.w / r0.y;
        r17.xyz = r18.xyz * r0.yyy + r17.xyz;
      }
    }
  }
  r0.y = max(1, r12.w);
  r0.y = rcp(r0.y);
  r12.w = saturate(r12.w);
  r9.xyw = r15.yzw * r0.yyy;
  r17.xyz = r17.xyz * r0.yyy;
  r6.w = cmp(r12.w < 0.99000001);
  if (r6.w != 0) {
    r6.w = 1 + -r12.w;
    r12.w = sunConstants.globalProbeExposure * r6.w;
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
    r21.xyz = r21.xyz * r12.www;
    r22.xyz = r19.wwy + r18.xyz;
    r22.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r22.xyz, 0).xyz;
    r22.xyz = r22.xyz * r21.yyy;
    r20.xyz = r20.xyz * r21.xxx + r22.xyz;
    r18.xyz = r19.wwz + r18.xyz;
    r18.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r18.xyz, 0).xyz;
    r18.xyz = r18.xyz * r21.zzz + r20.xyz;
    r11.w = 0;
    r19.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, 6).xyz;
    r18.xyz = r19.xyz * r18.xyz;
    r11.w = dot(r18.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r9.xyw = r15.yzw * r0.yyy + r18.xyz;
    r16.w = 0;
    r15.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r16.xyzw, r8.w).xyz;
    r0.y = sunConstants.globalProbeExposure * r6.w + -r11.w;
    r0.y = r2.y * r0.y + r11.w;
    r17.xyz = r15.yzw * r0.yyy + r17.xyz;
  }
  r0.y = r4.z * r1.w + r2.x;
  r0.y = log2(abs(r0.y));
  r0.y = r1.z * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r4.z * r1.w + r0.y;
  r0.y = saturate(-1 + r0.y);
  r18.xyz = r9.xyw * r2.zzz;
  r2.yz = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r2.yz = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r2.yz, 0).xy;
  r9.xyw = r17.xyz * r0.yyy;
  r17.xyz = r9.ywx * r2.yyy;
  r9.xyw = r9.xyw * r2.zzz;
  r0.y = sqrt(r1.z);
  r0.y = r0.y * 0.5 + 0.5;
  r0.y = r0.y * r0.y;
  r1.w = 0.5 * r0.y;
  r0.y = -r0.y * 0.5 + 1;
  r2.y = r2.x * r0.y + r1.w;
  r0.y = r2.y * r0.y;
  r1.w = r2.y * r1.w;
  r2.y = cmp(0 < r5.w);
  if (r2.y != 0) {
    r2.y = cmp(0 < r7.w);
    if (r2.y != 0) {
      r2.y = sunConstants.specScale * r0.w;
      r2.y = r2.y * r5.w;
      if (sunConstants.sunCookieIndex != 0) {
        r19.xyz = eyeOffset.xyz + r10.xyz;
        r19.w = 1;
        r2.z = dot(sunConstants.sunCookieTransform[0].xyzw, r19.xyzw);
        r4.z = dot(sunConstants.sunCookieTransform[1].xyzw, r19.xyzw);
        r19.x = frac(r2.z);
        r19.y = frac(r4.z);
        r2.z = -1 + (int14)sunConstants.sunCookieIndex;
        r19.z = (uint)r2.z;
        r15.yzw = gCookieArray.SampleLevel(samplerLinear_s, r19.xyz, 0).xyz;
        r15.yzw = float3(-1,-1,-1) + r15.yzw;
        r15.yzw = sunConstants.sunCookieIntensity * r15.yzw + float3(1,1,1);
        r15.yzw = sunConstants.color.xyz * r15.yzw;
      } else {
        r15.yzw = sunConstants.color.xyz;
      }
      r2.z = viewmodelSunShadowRaw >> 16;
      r4.z = cmp(0 < (uint)r2.z);
      r4.z = r4.z ? r9.z : 0;
      if (r4.z != 0) {
        r2.z = (int)r2.z + numLights;
        r2.z = mad((int)r2.z, 15, -15);
        r4.z = abs(r2.w) * -0.200000003 + 0.400000006;
        r19.xyz = r11.xyz * r4.zzz + r10.xyz;
        r20.xyz = lightConstantsCB[r2.z].data[4].yzw;
        r20.w = lightConstantsCB[r2.z].data[5].x;
        r19.w = 1;
        r20.x = dot(r20.xyzw, r19.xyzw);
        r21.xyz = lightConstantsCB[r2.z].data[5].yzw;
        r21.w = lightConstantsCB[r2.z].data[6].x;
        r20.y = dot(r21.xyzw, r19.xyzw);
        r20.xy = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r21.x = lightConstantsCB[r2.z].data[9].w + r20.x;
        r21.y = lightConstantsCB[r2.z].data[10].x + r20.y;
        r20.xy = lightConstantsCB[r2.z].data[9].yz * r21.xy;
        r20.zw = lightConstantsCB[r2.z].data[3].yy / lightConstantsCB[r2.z].data[8].yw;
        r21.xy = float2(1,1) + -r20.zw;
        r21.xy = cmp(r20.xy >= r21.xy);
        r20.zw = cmp(r20.zw >= r20.xy);
        r20.zw = (int2)r20.zw | (int2)r21.xy;
        r4.z = (int)r20.w | (int)r20.z;
        if (r4.z == 0) {
          r21.xyz = lightConstantsCB[r2.z].data[6].yzw;
          r21.w = lightConstantsCB[r2.z].data[7].x;
          r4.z = dot(r21.xyzw, r19.xyzw);
          r20.xy = saturate(r20.xy);
          r19.x = r20.x * lightConstantsCB[r2.z].data[8].y + lightConstantsCB[r2.z].data[8].z;
          r19.y = r20.y * lightConstantsCB[r2.z].data[8].w + lightConstantsCB[r2.z].data[9].x;
          r4.z = lightConstantsCB[r2.z].data[10].y + r4.z;
          r4.z = r4.z / lightConstantsCB[r2.z].data[10].z;
          r4.z = max(6.10351563e-05, r4.z);
          r6.w = 0x0000ffff & (int)lightConstantsCB[r2.z].data[1].w;
          if (enableDitheredShadow != 0) {
            r20.x = -r13.x;
            r21.z = (uint)r6.w;
            r20.y = r14.x;
            r20.z = r13.x;
            r8.w = 0;
            r11.w = 0;
            while (true) {
              r12.w = cmp((int)r11.w >= 8);
              if (r12.w != 0) break;
              r22.x = dot(icb[r11.w+0].yx, r20.xy);
              r22.y = dot(icb[r11.w+0].yx, r20.yz);
              r21.xy = r22.xy * lightConstantsCB[r2.z].data[3].yy + r19.xy;
              r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r4.z).x;
              r8.w = r12.w * 0.125 + r8.w;
              r11.w = (int)r11.w + 1;
            }
          } else {
            r19.z = (uint)r6.w;
            r8.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r4.z).x;
          }
          r2.z = r8.w * r8.w;
          r2.z = r2.z * r8.w;
        } else {
          r2.z = 1;
        }
        r7.w = r7.w * r2.z;
      } else {
        r2.z = viewmodelSunShadowRaw & 0x0000ffff;
        r4.z = cmp(0 < (uint)r2.z);
        r6.w = ~(int)r9.z;
        r4.z = r4.z ? r6.w : 0;
        if (r4.z != 0) {
          r2.z = (int)r2.z + numLights;
          r2.z = mad((int)r2.z, 15, -15);
          r4.z = abs(r2.w) * -0.200000003 + 0.400000006;
          r19.xyz = r11.xyz * r4.zzz + r10.xyz;
          r20.xyz = lightConstantsCB[r2.z].data[4].yzw;
          r20.w = lightConstantsCB[r2.z].data[5].x;
          r19.w = 1;
          r20.x = dot(r20.xyzw, r19.xyzw);
          r21.xyz = lightConstantsCB[r2.z].data[5].yzw;
          r21.w = lightConstantsCB[r2.z].data[6].x;
          r20.y = dot(r21.xyzw, r19.xyzw);
          r20.xy = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r21.x = lightConstantsCB[r2.z].data[9].w + r20.x;
          r21.y = lightConstantsCB[r2.z].data[10].x + r20.y;
          r20.xy = lightConstantsCB[r2.z].data[9].yz * r21.xy;
          r20.zw = lightConstantsCB[r2.z].data[3].yy / lightConstantsCB[r2.z].data[8].yw;
          r21.xy = float2(1,1) + -r20.zw;
          r21.xy = cmp(r20.xy >= r21.xy);
          r20.zw = cmp(r20.zw >= r20.xy);
          r20.zw = (int2)r20.zw | (int2)r21.xy;
          r4.z = (int)r20.w | (int)r20.z;
          if (r4.z == 0) {
            r21.xyz = lightConstantsCB[r2.z].data[6].yzw;
            r21.w = lightConstantsCB[r2.z].data[7].x;
            r4.z = dot(r21.xyzw, r19.xyzw);
            r20.xy = saturate(r20.xy);
            r19.x = r20.x * lightConstantsCB[r2.z].data[8].y + lightConstantsCB[r2.z].data[8].z;
            r19.y = r20.y * lightConstantsCB[r2.z].data[8].w + lightConstantsCB[r2.z].data[9].x;
            r4.z = lightConstantsCB[r2.z].data[10].y + r4.z;
            r4.z = r4.z / lightConstantsCB[r2.z].data[10].z;
            r4.z = max(6.10351563e-05, r4.z);
            r6.w = 0x0000ffff & (int)lightConstantsCB[r2.z].data[1].w;
            if (enableDitheredShadow != 0) {
              r20.x = -r13.x;
              r21.z = (uint)r6.w;
              r20.y = r14.x;
              r20.z = r13.x;
              r8.w = 0;
              r11.w = 0;
              while (true) {
                r12.w = cmp((int)r11.w >= 8);
                if (r12.w != 0) break;
                r22.x = dot(icb[r11.w+0].yx, r20.xy);
                r22.y = dot(icb[r11.w+0].yx, r20.yz);
                r21.xy = r22.xy * lightConstantsCB[r2.z].data[3].yy + r19.xy;
                r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r4.z).x;
                r8.w = r12.w * 0.125 + r8.w;
                r11.w = (int)r11.w + 1;
              }
            } else {
              r19.z = (uint)r6.w;
              r8.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r4.z).x;
            }
            r2.z = r8.w * r8.w;
            r2.z = r2.z * r8.w;
          } else {
            r2.z = 1;
          }
          r7.w = r7.w * r2.z;
        }
      }
      r2.z = -r2.x * 0.5 + 1;
      r2.z = -r5.w * r2.z + 1;
      r2.z = r2.z * r2.z;
      r2.z = -r2.z * 0.620000005 + 0.620000005;
      r2.z = r2.z + -r5.w;
      r2.z = r1.z * r2.z + r5.w;
      r2.z = r2.z * r7.w;
      r2.w = cmp(0 < r2.w);
      r19.xyz = r2.zzz * r15.yzw + r18.xyz;
      r20.xyz = -r10.xyz * r0.zzz + sunConstants.wldDir.xyz;
      r0.z = dot(r20.xyz, r20.xyz);
      r0.z = rsqrt(r0.z);
      r20.xyz = r20.xyz * r0.zzz;
      r0.z = dot(r20.xyz, r12.xyz);
      r2.z = dot(r11.xyz, r20.xyz);
      r4.z = abs(r2.z) * r0.w + -abs(r2.z);
      r2.z = abs(r2.z) * r4.z + 1;
      r4.z = r5.w * r0.y + r1.w;
      r2.z = r2.z * r2.z;
      r2.z = r2.z * r4.z;
      r2.z = rcp(r2.z);
      r2.y = r2.z * r2.y;
      r2.y = r7.w * r2.y;
      r2.y = 0.25 * r2.y;
      r20.xyz = r2.yyy * r15.yzw + r9.xyw;
      r0.z = saturate(1 + -r0.z);
      r2.z = r0.z * r0.z;
      r2.z = r2.z * r2.z;
      r0.z = r2.z * r0.z;
      r0.z = r2.y * r0.z;
      r21.xyz = r0.zzz * r15.zwy + r17.xyz;
      r19.w = r21.z;
      r18.w = r17.z;
      r18.xyzw = r2.wwww ? r19.xyzw : r18.xyzw;
      r21.zw = r20.xy;
      r17.zw = r9.xy;
      r19.xyzw = r2.wwww ? r21.xyzw : r17.xyzw;
      r9.w = r2.w ? r20.z : r9.w;
      r17.z = r18.w;
      r17.xy = r19.xy;
      r9.xy = r19.zw;
    }
  }
  if (10 == 0) r0.x = 0; else if (10+12 < 32) {   r0.x = (uint)r0.x << (32-(10 + 12)); r0.x = (uint)r0.x >> (32-10);  } else r0.x = (uint)r0.x >> 12;
  r19.x = -r13.x;
  r0.z = ~(int)r9.z;
  r2.x = -r2.x * 0.5 + 1;
  r10.w = 1;
  r20.w = 1;
  r19.z = r13.x;
  r21.z = 1;
  r22.w = 1;
  r23.w = 1;
  r19.yw = r14.xx;
  r13.y = r19.w;
  r24.w = 1;
  r14.y = r19.x;
  r14.z = r13.x;
  r25.w = 1;
  r26.x = r14.x;
  r26.y = r19.x;
  r26.z = r13.x;
  r27.x = r14.x;
  r27.y = r19.x;
  r27.z = r13.x;
  r28.x = r14.x;
  r28.y = r19.x;
  r28.z = r13.x;
  r2.yzw = r18.xyz;
  r29.xyz = r17.zxy;
  r30.xyz = r9.xyw;
  r4.z = 0;
  while (true) {
    r5.w = cmp((int)r4.z == 2);
    if (r5.w != 0) break;
    r5.w = r4.z ? r0.x : r13.w;
    r5.w = (int)r5.w * 15;
    if (3 == 0) r6.w = 0; else if (3+24 < 32) {     r6.w = (uint)lightConstantsCB[r5.w].data[1].w << (32-(3 + 24)); r6.w = (uint)r6.w >> (32-3);    } else r6.w = (uint)lightConstantsCB[r5.w].data[1].w >> 24;
    switch (r6.w) {
      case 4 :      r6.w = cmp(0 < lightConstantsCB[r5.w].data[6].y);
      r31.xy = lightConstantsCB[r5.w].data[5].zw;
      r31.z = lightConstantsCB[r5.w].data[6].x;
      r15.yzw = -r31.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r5.w].data[0].xyz;
      r32.xyz = r15.yzw + -r10.xyz;
      r7.w = dot(r31.xyz, r32.xyz);
      r8.w = saturate(-r7.w / lightConstantsCB[r5.w].data[6].y);
      r33.xyz = r8.www * r31.xyz + r15.yzw;
      r33.xyz = r6.www ? r33.xyz : lightConstantsCB[r5.w].data[0].xyz;
      r33.xyz = r33.xyz + -r10.xyz;
      r11.w = dot(r33.xyz, r33.xyz);
      r12.w = rsqrt(r11.w);
      r33.xyz = r33.xyz * r12.www;
      r12.w = dot(r11.xyz, r33.xyz);
      r13.z = saturate(r12.w);
      r14.w = cmp(0 < r13.z);
      if (r14.w != 0) {
        r14.w = sqrt(r11.w);
        r16.w = lightConstantsCB[r5.w].data[3].x * lightConstantsCB[r5.w].data[3].x;
        r11.w = r16.w / r11.w;
        r11.w = min(1, r11.w);
        r33.xy = saturate(r14.ww * lightConstantsCB[r5.w].data[2].xz + lightConstantsCB[r5.w].data[2].yw);
        r33.zw = r33.xy * r33.xy;
        r33.xy = r33.xy * float2(-2,-2) + float2(3,3);
        r33.xy = r33.zw * r33.xy;
        r11.w = r33.x * r11.w;
        r11.w = r11.w * r33.y;
        r14.w = cmp(0 < r11.w);
        if (r14.w != 0) {
          if (3 == 0) r14.w = 0; else if (3+27 < 32) {           r14.w = (uint)lightConstantsCB[r5.w].data[1].w << (32-(3 + 27)); r14.w = (uint)r14.w >> (32-3);          } else r14.w = (uint)lightConstantsCB[r5.w].data[1].w >> 27;
          r14.w = cmp((int)r14.w != 1);
          if (r14.w != 0) {
            r14.w = abs(r12.w) * -0.200000003 + 0.400000006;
            r33.xyz = r11.xyz * r14.www + r10.xyz;
            r33.xyz = -lightConstantsCB[r5.w].data[4].yzw + r33.xyz;
            r14.w = max(abs(r33.y), abs(r33.z));
            r14.w = max(abs(r33.x), r14.w);
            r14.w = lightConstantsCB[r5.w].data[5].x / r14.w;
            r14.w = lightConstantsCB[r5.w].data[5].y + r14.w;
            r16.w = dot(r33.xyz, r33.xyz);
            r16.w = rsqrt(r16.w);
            r14.w = max(6.10351563e-05, r14.w);
            r17.w = 0x0000ffff & (int)lightConstantsCB[r5.w].data[1].w;
            r34.w = (uint)r17.w;
            r17.w = 0;
            r18.w = 0;
            while (true) {
              r21.w = cmp((int)r18.w >= 8);
              if (r21.w != 0) break;
              r35.y = dot(icb[r18.w+0].yx, r19.xy);
              r35.z = dot(icb[r18.w+0].yx, r19.yz);
              r35.yz = lightConstantsCB[r5.w].data[3].yy * r35.yz;
              r35.x = r35.y * r15.x;
              r35.w = r35.y * r3.x;
              r34.xyz = r33.xyz * r16.www + r35.xzw;
              r21.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r34.xyzw, r14.w).x;
              r17.w = r21.w * 0.125 + r17.w;
              r18.w = (int)r18.w + 1;
            }
          } else {
            r17.w = 1;
          }
          r11.w = r17.w * r11.w;
          r14.w = cmp(0 < r11.w);
          if (r14.w != 0) {
            r14.w = lightConstantsCB[r5.w].data[1].z * r0.w;
            r14.w = 0.25 * r14.w;
            r16.w = dot(r31.xyz, r16.xyz);
            r18.w = dot(r16.xyz, r32.xyz);
            r21.w = -r16.w * r16.w + lightConstantsCB[r5.w].data[6].y;
            r7.w = r16.w * r18.w + -r7.w;
            r7.w = saturate(r7.w / r21.w);
            r16.w = r21.w / lightConstantsCB[r5.w].data[6].y;
            r16.w = 10 * r16.w;
            r16.w = min(1, r16.w);
            r7.w = r7.w + -r8.w;
            r7.w = r16.w * r7.w + r8.w;
            r15.yzw = r7.www * r31.xyz + r15.yzw;
            r15.yzw = r6.www ? r15.yzw : lightConstantsCB[r5.w].data[0].xyz;
            r15.yzw = r15.yzw + -r10.xyz;
            r6.w = dot(r15.yzw, r15.yzw);
            r6.w = rsqrt(r6.w);
            r31.xyz = r15.yzw * r6.www;
            if (4 == 0) r7.w = 0; else if (4+16 < 32) {             r7.w = (uint)lightConstantsCB[r5.w].data[1].w << (32-(4 + 16)); r7.w = (uint)r7.w >> (32-4);            } else r7.w = (uint)lightConstantsCB[r5.w].data[1].w >> 16;
            r8.w = cmp(0 < (uint)r7.w);
            r8.w = r8.w ? r9.z : 0;
            if (r8.w != 0) {
              r7.w = (int)r7.w + numLights;
              r7.w = mad((int)r7.w, 15, -15);
              r8.w = abs(r12.w) * -0.200000003 + 0.400000006;
              r20.xyz = r11.xyz * r8.www + r10.xyz;
              r32.xyz = lightConstantsCB[r7.w].data[6].yzw;
              r32.w = lightConstantsCB[r7.w].data[7].x;
              r8.w = dot(r32.xyzw, r20.xyzw);
              r32.xyz = lightConstantsCB[r7.w].data[7].yzw;
              r32.w = lightConstantsCB[r7.w].data[8].x;
              r16.w = dot(r32.xyzw, r20.xyzw);
              r18.w = cmp(r16.w < r8.w);
              if (r18.w == 0) {
                r32.xyz = lightConstantsCB[r7.w].data[4].yzw;
                r32.w = lightConstantsCB[r7.w].data[5].x;
                r32.x = dot(r32.xyzw, r20.xyzw);
                r33.xyz = lightConstantsCB[r7.w].data[5].yzw;
                r33.w = lightConstantsCB[r7.w].data[6].x;
                r32.y = dot(r33.xyzw, r20.xyzw);
                r20.xy = r32.xy / r16.ww;
                r20.xy = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r32.x = lightConstantsCB[r7.w].data[9].w + r20.x;
                r32.y = lightConstantsCB[r7.w].data[10].x + r20.y;
                r20.xy = lightConstantsCB[r7.w].data[9].yz * r32.xy;
                r32.xy = lightConstantsCB[r7.w].data[3].yy / lightConstantsCB[r7.w].data[8].yw;
                r32.zw = float2(1,1) + -r32.xy;
                r32.zw = cmp(r20.xy >= r32.zw);
                r32.xy = cmp(r32.xy >= r20.xy);
                r32.xy = (int2)r32.xy | (int2)r32.zw;
                r20.z = (int)r32.y | (int)r32.x;
                if (r20.z == 0) {
                  r20.xy = saturate(r20.xy);
                  r32.x = r20.x * lightConstantsCB[r7.w].data[8].y + lightConstantsCB[r7.w].data[8].z;
                  r32.y = r20.y * lightConstantsCB[r7.w].data[8].w + lightConstantsCB[r7.w].data[9].x;
                  r20.x = lightConstantsCB[r7.w].data[10].z * r16.w;
                  r8.w = lightConstantsCB[r7.w].data[10].y * r16.w + r8.w;
                  r8.w = r8.w / r20.x;
                }
              } else {
                r20.z = -1;
              }
              r16.w = (int)r18.w | (int)r20.z;
              if (r16.w == 0) {
                r8.w = max(6.10351563e-05, r8.w);
                r16.w = 0x0000ffff & (int)lightConstantsCB[r7.w].data[1].w;
                if (enableDitheredShadow != 0) {
                  r20.z = (uint)r16.w;
                  r18.w = 0;
                  r21.w = 0;
                  while (true) {
                    r26.w = cmp((int)r21.w >= 8);
                    if (r26.w != 0) break;
                    r33.x = dot(icb[r21.w+0].yx, r19.xw);
                    r33.y = dot(icb[r21.w+0].xy, r13.xy);
                    r20.xy = r33.xy * lightConstantsCB[r7.w].data[3].yy + r32.xy;
                    r20.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r8.w).x;
                    r18.w = r20.x * 0.125 + r18.w;
                    r21.w = (int)r21.w + 1;
                  }
                } else {
                  r32.z = (uint)r16.w;
                  r18.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r32.xyz, r8.w).x;
                }
                r7.w = r18.w * r18.w;
                r7.w = r7.w * r18.w;
              } else {
                r7.w = 1;
              }
              r11.w = r11.w * r7.w;
            } else {
              if (4 == 0) r7.w = 0; else if (4+20 < 32) {               r7.w = (uint)lightConstantsCB[r5.w].data[1].w << (32-(4 + 20)); r7.w = (uint)r7.w >> (32-4);              } else r7.w = (uint)lightConstantsCB[r5.w].data[1].w >> 20;
              r8.w = cmp(0 < (uint)r7.w);
              r8.w = r8.w ? r0.z : 0;
              if (r8.w != 0) {
                r7.w = (int)r7.w + numLights;
                r7.w = mad((int)r7.w, 15, -15);
                r8.w = abs(r12.w) * -0.200000003 + 0.400000006;
                r22.xyz = r11.xyz * r8.www + r10.xyz;
                r32.xyz = lightConstantsCB[r7.w].data[6].yzw;
                r32.w = lightConstantsCB[r7.w].data[7].x;
                r8.w = dot(r32.xyzw, r22.xyzw);
                r32.xyz = lightConstantsCB[r7.w].data[7].yzw;
                r32.w = lightConstantsCB[r7.w].data[8].x;
                r16.w = dot(r32.xyzw, r22.xyzw);
                r20.x = cmp(r16.w < r8.w);
                if (r20.x == 0) {
                  r32.xyz = lightConstantsCB[r7.w].data[4].yzw;
                  r32.w = lightConstantsCB[r7.w].data[5].x;
                  r32.x = dot(r32.xyzw, r22.xyzw);
                  r33.xyz = lightConstantsCB[r7.w].data[5].yzw;
                  r33.w = lightConstantsCB[r7.w].data[6].x;
                  r32.y = dot(r33.xyzw, r22.xyzw);
                  r20.yz = r32.xy / r16.ww;
                  r20.yz = r20.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                  r22.x = lightConstantsCB[r7.w].data[9].w + r20.y;
                  r22.y = lightConstantsCB[r7.w].data[10].x + r20.z;
                  r20.yz = lightConstantsCB[r7.w].data[9].yz * r22.xy;
                  r22.xy = lightConstantsCB[r7.w].data[3].yy / lightConstantsCB[r7.w].data[8].yw;
                  r32.xy = float2(1,1) + -r22.xy;
                  r32.xy = cmp(r20.yz >= r32.xy);
                  r22.xy = cmp(r22.xy >= r20.yz);
                  r22.xy = (int2)r22.xy | (int2)r32.xy;
                  r21.w = (int)r22.y | (int)r22.x;
                  if (r21.w == 0) {
                    r20.yz = saturate(r20.yz);
                    r22.x = r20.y * lightConstantsCB[r7.w].data[8].y + lightConstantsCB[r7.w].data[8].z;
                    r22.y = r20.z * lightConstantsCB[r7.w].data[8].w + lightConstantsCB[r7.w].data[9].x;
                    r20.y = lightConstantsCB[r7.w].data[10].z * r16.w;
                    r8.w = lightConstantsCB[r7.w].data[10].y * r16.w + r8.w;
                    r8.w = r8.w / r20.y;
                  }
                } else {
                  r21.w = -1;
                }
                r16.w = (int)r20.x | (int)r21.w;
                if (r16.w == 0) {
                  r8.w = max(6.10351563e-05, r8.w);
                  r16.w = 0x0000ffff & (int)lightConstantsCB[r7.w].data[1].w;
                  if (enableDitheredShadow != 0) {
                    r20.z = (uint)r16.w;
                    r21.w = 0;
                    r26.w = 0;
                    while (true) {
                      r27.w = cmp((int)r26.w >= 8);
                      if (r27.w != 0) break;
                      r32.x = dot(icb[r26.w+0].xy, r14.xy);
                      r32.y = dot(icb[r26.w+0].yx, r14.xz);
                      r20.xy = r32.xy * lightConstantsCB[r7.w].data[3].yy + r22.xy;
                      r20.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r8.w).x;
                      r21.w = r20.x * 0.125 + r21.w;
                      r26.w = (int)r26.w + 1;
                    }
                  } else {
                    r22.z = (uint)r16.w;
                    r21.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r8.w).x;
                  }
                  r7.w = r21.w * r21.w;
                  r7.w = r7.w * r21.w;
                } else {
                  r7.w = 1;
                }
                r11.w = r11.w * r7.w;
              }
            }
            r7.w = -r13.z * r2.x + 1;
            r7.w = r7.w * r7.w;
            r7.w = -r7.w * 0.620000005 + 0.620000005;
            r7.w = r7.w + -r13.z;
            r7.w = r1.z * r7.w + r13.z;
            r7.w = r7.w * r11.w;
            r20.x = lightConstantsCB[r5.w].data[0].w;
            r20.yz = lightConstantsCB[r5.w].data[1].xy;
            r8.w = cmp(0 < r12.w);
            r22.xyz = r7.www * r20.xyz + r2.yzw;
            r7.w = saturate(dot(r11.xyz, r31.xyz));
            r15.yzw = r15.yzw * r6.www + r12.xyz;
            r6.w = dot(r15.yzw, r15.yzw);
            r6.w = rsqrt(r6.w);
            r15.yzw = r15.yzw * r6.www;
            r6.w = dot(r15.yzw, r12.xyz);
            r12.w = dot(r11.xyz, r15.yzw);
            r13.z = abs(r12.w) * r0.w + -abs(r12.w);
            r12.w = abs(r12.w) * r13.z + 1;
            r13.z = r7.w * r0.y + r1.w;
            r12.w = r12.w * r12.w;
            r12.w = r12.w * r13.z;
            r12.w = rcp(r12.w);
            r7.w = r7.w * r14.w;
            r7.w = r12.w * r7.w;
            r7.w = r7.w * r11.w;
            r15.yzw = r7.www * r20.xyz + r30.xyz;
            r6.w = saturate(1 + -r6.w);
            r11.w = r6.w * r6.w;
            r11.w = r11.w * r11.w;
            r6.w = r11.w * r6.w;
            r6.w = r7.w * r6.w;
            r20.xyz = r6.www * r20.xyz + r29.xyz;
            r2.yzw = r8.www ? r22.xyz : r2.yzw;
            r29.xyz = r8.www ? r20.xyz : r29.xyz;
            r30.xyz = r8.www ? r15.yzw : r30.xyz;
          }
        }
      }
      break;
      case 2 :      r20.xy = lightConstantsCB[r5.w].data[3].zw + -r10.xy;
      r20.z = lightConstantsCB[r5.w].data[4].x + -r10.z;
      r6.w = dot(r20.xyz, r20.xyz);
      r6.w = rsqrt(r6.w);
      r15.yzw = r20.xyz * r6.www;
      r7.w = dot(r11.xyz, r15.yzw);
      r8.w = saturate(r7.w);
      r11.w = cmp(0 < r8.w);
      if (r11.w != 0) {
        r31.xyz = lightConstantsCB[r5.w].data[7].yzw;
        r31.w = lightConstantsCB[r5.w].data[8].x;
        r11.w = dot(r31.xyzw, r10.xyzw);
        r12.w = cmp(r11.w < 1);
        if (r12.w != 0) {
          r15.yzw = float3(1,1,1);
          r12.w = 0;
        } else {
          r22.xyz = lightConstantsCB[r5.w].data[0].xyz + -r10.xyz;
          r13.z = lightConstantsCB[r5.w].data[3].x * lightConstantsCB[r5.w].data[3].x;
          r14.w = dot(r22.xyz, r22.xyz);
          r13.z = r13.z / r14.w;
          r13.z = min(1, r13.z);
          r22.xy = saturate(r11.ww * lightConstantsCB[r5.w].data[2].xz + lightConstantsCB[r5.w].data[2].yw);
          r32.xy = r22.xy * r22.xy;
          r22.xy = r22.xy * float2(-2,-2) + float2(3,3);
          r22.xy = r32.xy * r22.xy;
          r13.z = r22.x * r13.z;
          r13.z = r13.z * r22.y;
          r32.xyz = lightConstantsCB[r5.w].data[4].yzw;
          r32.w = lightConstantsCB[r5.w].data[5].x;
          r22.x = dot(r32.xyzw, r10.xyzw);
          r32.xyz = lightConstantsCB[r5.w].data[5].yzw;
          r32.w = lightConstantsCB[r5.w].data[6].x;
          r22.y = dot(r32.xyzw, r10.xyzw);
          r21.xy = r22.xy / r11.ww;
          r11.w = cmp(lightConstantsCB[r5.w].data[10].w < 0.00048828125);
          if (r11.w != 0) {
            r22.xy = saturate(abs(r21.xy) * lightConstantsCB[r5.w].data[12].xy + lightConstantsCB[r5.w].data[12].zw);
            r32.xy = r22.xy * r22.xy;
            r22.xy = r22.xy * float2(-2,-2) + float2(3,3);
            r22.xy = r32.xy * r22.xy;
            r11.w = r22.x * r22.y;
          } else {
            r32.xyzw = saturate(lightConstantsCB[r5.w].data[11].xyzw * abs(r21.yyxx));
            r32.xyzw = log2(r32.xyzw);
            r32.xyzw = lightConstantsCB[r5.w].data[12].zzzz * r32.xyzw;
            r32.xyzw = exp2(r32.xyzw);
            r22.xy = r32.xy + r32.zw;
            r22.xy = log2(r22.xy);
            r22.xy = lightConstantsCB[r5.w].data[12].ww * r22.xy;
            r22.xy = exp2(r22.xy);
            r14.w = lightConstantsCB[r5.w].data[12].x * r22.x;
            r16.w = lightConstantsCB[r5.w].data[12].y * r22.y + -1;
            r14.w = lightConstantsCB[r5.w].data[12].y * r22.y + -r14.w;
            r14.w = saturate(r16.w / r14.w);
            r16.w = r14.w * r14.w;
            r14.w = r14.w * -2 + 3;
            r11.w = r16.w * r14.w;
          }
          r12.w = r13.z * r11.w;
          r11.w = 255 & (int)lightConstantsCB[r5.w].data[14].w;
          if (r11.w != 0) {
            r13.z = dot(lightConstantsCB[r5.w].data[13].xyz, r21.xyz);
            r22.x = lightConstantsCB[r5.w].data[13].w;
            r22.yz = lightConstantsCB[r5.w].data[14].xy;
            r14.w = dot(r22.xyz, r21.xyz);
            r22.x = frac(r13.z);
            r22.y = frac(r14.w);
            r11.w = (int)r11.w + -1;
            r22.z = (uint)r11.w;
            r15.yzw = gCookieArray.SampleLevel(samplerLinear_s, r22.xyz, 0).xyz;
          } else {
            r15.yzw = float3(1,1,1);
          }
        }
        r22.x = lightConstantsCB[r5.w].data[0].w;
        r22.yz = lightConstantsCB[r5.w].data[1].xy;
        r15.yzw = r22.xyz * r15.yzw;
        r11.w = cmp(0 < r12.w);
        if (r11.w != 0) {
          if (3 == 0) r11.w = 0; else if (3+27 < 32) {           r11.w = (uint)lightConstantsCB[r5.w].data[1].w << (32-(3 + 27)); r11.w = (uint)r11.w >> (32-3);          } else r11.w = (uint)lightConstantsCB[r5.w].data[1].w >> 27;
          r11.w = cmp((int)r11.w != 1);
          if (r11.w != 0) {
            r11.w = abs(r7.w) * -0.200000003 + 0.400000006;
            r23.xyz = r11.xyz * r11.www + r10.xyz;
            r32.xyz = lightConstantsCB[r5.w].data[6].yzw;
            r32.w = lightConstantsCB[r5.w].data[7].x;
            r11.w = dot(r32.xyzw, r23.xyzw);
            r13.z = dot(r31.xyzw, r23.xyzw);
            r14.w = cmp(r13.z >= r11.w);
            if (r14.w != 0) {
              r31.xyz = lightConstantsCB[r5.w].data[4].yzw;
              r31.w = lightConstantsCB[r5.w].data[5].x;
              r21.x = dot(r31.xyzw, r23.xyzw);
              r31.xyz = lightConstantsCB[r5.w].data[5].yzw;
              r31.w = lightConstantsCB[r5.w].data[6].x;
              r21.y = dot(r31.xyzw, r23.xyzw);
              r21.xy = r21.xy / r13.zz;
              r21.xy = saturate(r21.xy * float2(0.5,-0.5) + float2(0.5,0.5));
              r22.x = r21.x * lightConstantsCB[r5.w].data[8].y + lightConstantsCB[r5.w].data[8].z;
              r22.y = r21.y * lightConstantsCB[r5.w].data[8].w + lightConstantsCB[r5.w].data[9].x;
              r11.w = r11.w / r13.z;
              r11.w = max(6.10351563e-05, r11.w);
              r13.z = 0x0000ffff & (int)lightConstantsCB[r5.w].data[1].w;
              if (enableDitheredShadow != 0) {
                r23.z = (uint)r13.z;
                r14.w = 0;
                r16.w = 0;
                while (true) {
                  r21.x = cmp((int)r16.w >= 8);
                  if (r21.x != 0) break;
                  r21.x = dot(icb[r16.w+0].xy, r26.xy);
                  r21.y = dot(icb[r16.w+0].yx, r26.xz);
                  r23.xy = r21.xy * lightConstantsCB[r5.w].data[3].yy + r22.xy;
                  r21.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r11.w).x;
                  r14.w = r21.x * 0.125 + r14.w;
                  r16.w = (int)r16.w + 1;
                }
              } else {
                r22.z = (uint)r13.z;
                r14.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r11.w).x;
              }
              r11.w = r14.w * r14.w;
              r11.w = r11.w * r14.w;
            } else {
              r11.w = 1;
            }
          } else {
            r11.w = 1;
          }
          r11.w = r12.w * r11.w;
          r12.w = cmp(0 < r11.w);
          if (r12.w != 0) {
            r12.w = lightConstantsCB[r5.w].data[1].z * r0.w;
            r12.w = r12.w * r8.w;
            if (4 == 0) r13.z = 0; else if (4+16 < 32) {             r13.z = (uint)lightConstantsCB[r5.w].data[1].w << (32-(4 + 16)); r13.z = (uint)r13.z >> (32-4);            } else r13.z = (uint)lightConstantsCB[r5.w].data[1].w >> 16;
            r16.w = cmp(0 < (uint)r13.z);
            r16.w = r16.w ? r9.z : 0;
            if (r16.w != 0) {
              r13.z = (int)r13.z + numLights;
              r13.z = mad((int)r13.z, 15, -15);
              r16.w = abs(r7.w) * -0.200000003 + 0.400000006;
              r24.xyz = r11.xyz * r16.www + r10.xyz;
              r31.xyz = lightConstantsCB[r13.z].data[6].yzw;
              r31.w = lightConstantsCB[r13.z].data[7].x;
              r16.w = dot(r31.xyzw, r24.xyzw);
              r31.xyz = lightConstantsCB[r13.z].data[7].yzw;
              r31.w = lightConstantsCB[r13.z].data[8].x;
              r21.x = dot(r31.xyzw, r24.xyzw);
              r21.y = cmp(r21.x < r16.w);
              if (r21.y == 0) {
                r31.xyz = lightConstantsCB[r13.z].data[4].yzw;
                r31.w = lightConstantsCB[r13.z].data[5].x;
                r22.x = dot(r31.xyzw, r24.xyzw);
                r31.xyz = lightConstantsCB[r13.z].data[5].yzw;
                r31.w = lightConstantsCB[r13.z].data[6].x;
                r22.y = dot(r31.xyzw, r24.xyzw);
                r22.xy = r22.xy / r21.xx;
                r22.xy = r22.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r23.x = lightConstantsCB[r13.z].data[9].w + r22.x;
                r23.y = lightConstantsCB[r13.z].data[10].x + r22.y;
                r22.xy = lightConstantsCB[r13.z].data[9].yz * r23.xy;
                r23.xy = lightConstantsCB[r13.z].data[3].yy / lightConstantsCB[r13.z].data[8].yw;
                r24.xy = float2(1,1) + -r23.xy;
                r24.xy = cmp(r22.xy >= r24.xy);
                r23.xy = cmp(r23.xy >= r22.xy);
                r23.xy = (int2)r23.xy | (int2)r24.xy;
                r22.z = (int)r23.y | (int)r23.x;
                if (r22.z == 0) {
                  r22.xy = saturate(r22.xy);
                  r23.x = r22.x * lightConstantsCB[r13.z].data[8].y + lightConstantsCB[r13.z].data[8].z;
                  r23.y = r22.y * lightConstantsCB[r13.z].data[8].w + lightConstantsCB[r13.z].data[9].x;
                  r22.x = lightConstantsCB[r13.z].data[10].z * r21.x;
                  r16.w = lightConstantsCB[r13.z].data[10].y * r21.x + r16.w;
                  r16.w = r16.w / r22.x;
                }
              } else {
                r22.z = -1;
              }
              r21.x = (int)r21.y | (int)r22.z;
              if (r21.x == 0) {
                r16.w = max(6.10351563e-05, r16.w);
                r21.x = 0x0000ffff & (int)lightConstantsCB[r13.z].data[1].w;
                if (enableDitheredShadow != 0) {
                  r22.z = (uint)r21.x;
                  r21.y = 0;
                  r24.x = 0;
                  while (true) {
                    r24.y = cmp((int)r24.x >= 8);
                    if (r24.y != 0) break;
                    r31.x = dot(icb[r24.x+0].xy, r27.xy);
                    r31.y = dot(icb[r24.x+0].yx, r27.xz);
                    r22.xy = r31.xy * lightConstantsCB[r13.z].data[3].yy + r23.xy;
                    r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r16.w).x;
                    r21.y = r22.x * 0.125 + r21.y;
                    r24.x = (int)r24.x + 1;
                  }
                } else {
                  r23.z = (uint)r21.x;
                  r21.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r16.w).x;
                }
                r13.z = r21.y * r21.y;
                r13.z = r13.z * r21.y;
              } else {
                r13.z = 1;
              }
              r11.w = r13.z * r11.w;
            } else {
              if (4 == 0) r5.w = 0; else if (4+20 < 32) {               r5.w = (uint)lightConstantsCB[r5.w].data[1].w << (32-(4 + 20)); r5.w = (uint)r5.w >> (32-4);              } else r5.w = (uint)lightConstantsCB[r5.w].data[1].w >> 20;
              r13.z = cmp(0 < (uint)r5.w);
              r13.z = r13.z ? r0.z : 0;
              if (r13.z != 0) {
                r5.w = (int)r5.w + numLights;
                r5.w = mad((int)r5.w, 15, -15);
                r13.z = abs(r7.w) * -0.200000003 + 0.400000006;
                r25.xyz = r11.xyz * r13.zzz + r10.xyz;
                r31.xyz = lightConstantsCB[r5.w].data[6].yzw;
                r31.w = lightConstantsCB[r5.w].data[7].x;
                r13.z = dot(r31.xyzw, r25.xyzw);
                r31.xyz = lightConstantsCB[r5.w].data[7].yzw;
                r31.w = lightConstantsCB[r5.w].data[8].x;
                r16.w = dot(r31.xyzw, r25.xyzw);
                r21.x = cmp(r16.w < r13.z);
                if (r21.x == 0) {
                  r31.xyz = lightConstantsCB[r5.w].data[4].yzw;
                  r31.w = lightConstantsCB[r5.w].data[5].x;
                  r22.x = dot(r31.xyzw, r25.xyzw);
                  r31.xyz = lightConstantsCB[r5.w].data[5].yzw;
                  r31.w = lightConstantsCB[r5.w].data[6].x;
                  r22.y = dot(r31.xyzw, r25.xyzw);
                  r22.xy = r22.xy / r16.ww;
                  r22.xy = r22.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                  r23.x = lightConstantsCB[r5.w].data[9].w + r22.x;
                  r23.y = lightConstantsCB[r5.w].data[10].x + r22.y;
                  r22.xy = lightConstantsCB[r5.w].data[9].yz * r23.xy;
                  r23.xy = lightConstantsCB[r5.w].data[3].yy / lightConstantsCB[r5.w].data[8].yw;
                  r24.xy = float2(1,1) + -r23.xy;
                  r24.xy = cmp(r22.xy >= r24.xy);
                  r23.xy = cmp(r23.xy >= r22.xy);
                  r23.xy = (int2)r23.xy | (int2)r24.xy;
                  r22.z = (int)r23.y | (int)r23.x;
                  if (r22.z == 0) {
                    r22.xy = saturate(r22.xy);
                    r23.x = r22.x * lightConstantsCB[r5.w].data[8].y + lightConstantsCB[r5.w].data[8].z;
                    r23.y = r22.y * lightConstantsCB[r5.w].data[8].w + lightConstantsCB[r5.w].data[9].x;
                    r22.x = lightConstantsCB[r5.w].data[10].z * r16.w;
                    r13.z = lightConstantsCB[r5.w].data[10].y * r16.w + r13.z;
                    r13.z = r13.z / r22.x;
                  }
                } else {
                  r22.z = -1;
                }
                r16.w = (int)r21.x | (int)r22.z;
                if (r16.w == 0) {
                  r13.z = max(6.10351563e-05, r13.z);
                  r16.w = 0x0000ffff & (int)lightConstantsCB[r5.w].data[1].w;
                  if (enableDitheredShadow != 0) {
                    r22.z = (uint)r16.w;
                    r21.x = 0;
                    r24.x = 0;
                    while (true) {
                      r24.y = cmp((int)r24.x >= 8);
                      if (r24.y != 0) break;
                      r25.x = dot(icb[r24.x+0].xy, r28.xy);
                      r25.y = dot(icb[r24.x+0].yx, r28.xz);
                      r22.xy = r25.xy * lightConstantsCB[r5.w].data[3].yy + r23.xy;
                      r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r13.z).x;
                      r21.x = r22.x * 0.125 + r21.x;
                      r24.x = (int)r24.x + 1;
                    }
                  } else {
                    r23.z = (uint)r16.w;
                    r21.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r13.z).x;
                  }
                  r5.w = r21.x * r21.x;
                  r5.w = r5.w * r21.x;
                } else {
                  r5.w = 1;
                }
                r11.w = r11.w * r5.w;
              }
            }
            r5.w = -r8.w * r2.x + 1;
            r5.w = r5.w * r5.w;
            r5.w = -r5.w * 0.620000005 + 0.620000005;
            r5.w = r5.w + -r8.w;
            r5.w = r1.z * r5.w + r8.w;
            r5.w = r5.w * r11.w;
            r7.w = cmp(0 < r7.w);
            r22.xyz = r5.www * r15.yzw + r2.yzw;
            r20.xyz = r20.xyz * r6.www + r12.xyz;
            r5.w = dot(r20.xyz, r20.xyz);
            r5.w = rsqrt(r5.w);
            r20.xyz = r20.xyz * r5.www;
            r5.w = dot(r20.xyz, r12.xyz);
            r6.w = dot(r11.xyz, r20.xyz);
            r13.z = abs(r6.w) * r0.w + -abs(r6.w);
            r6.w = abs(r6.w) * r13.z + 1;
            r8.w = r8.w * r0.y + r1.w;
            r6.w = r6.w * r6.w;
            r6.w = r6.w * r8.w;
            r6.w = rcp(r6.w);
            r6.w = r6.w * r12.w;
            r6.w = r11.w * r6.w;
            r6.w = 0.25 * r6.w;
            r20.xyz = r6.www * r15.yzw + r30.xyz;
            r5.w = saturate(1 + -r5.w);
            r8.w = r5.w * r5.w;
            r8.w = r8.w * r8.w;
            r5.w = r8.w * r5.w;
            r5.w = r6.w * r5.w;
            r15.yzw = r5.www * r15.yzw + r29.xyz;
            r2.yzw = r7.www ? r22.xyz : r2.yzw;
            r29.xyz = r7.www ? r15.yzw : r29.xyz;
            r30.xyz = r7.www ? r20.xyz : r30.xyz;
          }
        }
      }
      break;
      default :
      break;
    }
    r4.z = (int)r4.z + 1;
  }
  r0.xyz = r4.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r1.z = (uint)r0.y;
  r4.xyz = r5.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r4.x;
  r1.w = cmp((int)r1.z == (int)r1.w);
  r4.xy = r1.ww ? r4.yz : float2(-1,0);
  r5.xyz = r6.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r5.x;
  r1.w = cmp((int)r1.z == (int)r1.w);
  r4.zw = r1.ww ? r5.yz : float2(-1,0);
  r5.xyz = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r5.x;
  r1.w = cmp((int)r1.z == (int)r1.w);
  r5.xy = r1.ww ? r5.yz : float2(-1,0);
  r6.xyz = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r6.x;
  r1.z = cmp((int)r1.z == (int)r1.w);
  r1.zw = r1.zz ? r6.yz : float2(-1,0);
  r6.xy = r4.xz;
  r6.z = r5.x;
  r6.w = r1.z;
  r6.xyzw = r6.xyzw + -r0.xxxx;
  r6.xyzw = cmp(abs(r6.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r6.xyzw = r6.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r1.z = r6.x + r6.y;
  r1.z = r1.z + r6.z;
  r1.z = r1.z + r6.w;
  r2.x = r6.y * r4.w;
  r2.x = r6.x * r4.y + r2.x;
  r2.x = r6.z * r5.y + r2.x;
  r1.w = r6.w * r1.w + r2.x;
  r0.w = r1.w / r1.z;
  r1.z = cmp(0 >= r1.z);
  r0.yz = r1.zz ? float2(0,0) : r0.zw;
  r1.zw = (int2)r1.xy & int2(1,1);
  r0.w = cmp((int)r1.w == (int)r1.z);
  r0.xyz = r0.www ? r0.xyz : r0.xzy;
  r0.x = -r0.z * 0.5 + r0.x;
  r4.y = r0.z + r0.x;
  r4.z = -r0.y * 0.5 + r0.x;
  r4.x = r4.z + r0.y;
  r0.xyz = float3(1,1,1) + -r4.xyz;
  r0.xyz = r29.xyz * r0.xyz;
  r0.xyz = r30.xyz * r4.xyz + r0.xyz;
  r0.xyz = r2.yzw * r3.yzw + r0.xyz;
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