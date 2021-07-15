// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:23:19 2021

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.x = mad(permuteStride, 10, (int)vThreadGroupID.x);
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
  r1.z = dot(r1.zw, float2(0.0671105608,0.00583714992));
  r1.z = frac(r1.z);
  r1.z = 52.9829178 * r1.z;
  r1.z = frac(r1.z);
  r1.z = r1.z * 6.28318548 + gameTick.w;
  sincos(r1.z, r3.x, r13.x);
  r2.x = saturate(dot(r11.xyz, r12.xyz));
  r1.z = dot(-r12.xyz, r11.xyz);
  r1.z = r1.z + r1.z;
  r14.xyz = r11.xyz * -r1.zzz + -r12.xyz;
  r1.z = 17 * r2.y;
  r1.z = exp2(r1.z);
  r1.z = 2 + r1.z;
  r1.z = 2 / r1.z;
  r1.w = sqrt(r1.z);
  r2.zw = renderTargetSize.zw * r9.xy;
  r15.xyzw = gSSAOTexture.Gather(samplerLinearClamp_s, r2.zw).xyzw;
  r16.xyzw = gSSAODepthTexture.Gather(samplerLinearClamp_s, r2.zw).xyzw;
  r2.zw = float2(0.5,0.5) * r9.xy;
  r2.zw = frac(r2.zw);
  r9.xy = float2(1,1) + -r2.wz;
  r17.y = r9.y * r9.x;
  r17.xz = r9.xy * r2.zw;
  r17.w = r2.z * r2.w;
  r2.z = dot(r15.xyzw, r17.xyzw);
  r16.xyzw = r16.xyzw + -r9.wwww;
  r2.w = min(abs(r16.z), abs(r16.w));
  r2.w = min(abs(r16.y), r2.w);
  r2.w = min(abs(r16.x), r2.w);
  r5.w = max(abs(r16.z), abs(r16.w));
  r5.w = max(abs(r16.y), r5.w);
  r5.w = max(abs(r16.x), r5.w);
  r13.yzw = cmp(r2.www == abs(r16.yzw));
  r2.w = r13.y ? r15.y : r15.x;
  r2.w = r13.z ? r15.z : r2.w;
  r2.w = r13.w ? r15.w : r2.w;
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
    r13.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * r10.yyy;
    r13.yzw = r10.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r13.yzw;
    r13.yzw = r10.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r13.yzw;
    r13.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r13.yzw;
    r8.w = -sunConstants.splitDepthOffset + r13.w;
    r8.w = -r8.w * 6.10351563e-05 + 1;
    r9.y = saturate(r8.w);
    r9.y = cmp(r8.w == r9.y);
    if (r9.y != 0) {
      r9.yw = float2(0,0);
      while (true) {
        r12.w = cmp(r9.y >= 3);
        if (r12.w != 0) break;
        r12.w = (uint)r9.y;
        r15.xy = -sunConstants.splitPinTransform[r12.w].xy + r13.yz;
        r15.x = max(abs(r15.x), abs(r15.y));
        r9.w = sunConstants.splitPinTransform[r12.w].z * r15.x;
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
      r15.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r16.xz = rcp(r15.xx);
      r16.y = -r16.z;
      r15.xyz = r13.yzy * r16.xyz + r15.yzy;
      r16.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r15.xyz = max(float3(0,0,0), r15.xyz);
      r15.xyz = min(r15.xyz, r16.xyz);
      r16.xy = sunConstants.sstLightingConstants.coordScale * r15.zy;
      r16.xy = floor(r16.xy);
      r15.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r16.y;
      r15.w = r15.w * sunConstants.sstLightingConstants.coordScale + r16.x;
      r15.w = (uint)r15.w;
      r15.w = (int)r15.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.x, r15.w, l(0), t23.xxxx
    r16.x = samp0[]..swiz;
      r16.y = (int)r16.x & 0x40000000;
      r16.z = (uint)r16.x << 2;
      if (r16.y == 0) {
        r16.y = (int)r16.x & 0x01ffffff;
        r17.x = (int)r15.w + (int)r16.y;
        r15.w = (uint)r16.x >> 25;
        r15.w = (uint)r15.w;
        r15.xyz = r15.xyz * r15.www;
        r15.xyz = frac(r15.xyz);
        r15.xyz = float3(128,128,128) * r15.xyz;
        r15.xyz = (uint3)r15.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
      r17.z = samp0[]..swiz;
        r16.xy = (uint2)r15.zy >> int2(6,6);
        r15.w = (int)r17.z & 0xc0000000;
        r16.w = (int)r17.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.w, r16.w, l(0), t23.xxxx
      r16.w = samp0[]..swiz;
        r16.y = r16.y ? r17.z : r16.w;
        r16.w = (uint)r16.y >> 13;
        r16.x = r16.x ? r16.w : r16.y;
        r16.x = (int)r16.x & 8191;
        r18.x = (int)r16.x + (int)r17.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
      r18.z = samp0[]..swiz;
        r17.y = 0;
        r18.y = 1;
        r16.xyw = r15.www ? r17.xyz : r18.xyz;
        r18.yz = r15.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r19.xy = (uint2)r15.zy >> (uint2)r18.yy;
        r19.xy = (int2)r19.xy & int2(1,1);
        r17.w = (int)r16.w & 0xc0000000;
        r18.y = (int)r16.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.y, r18.y, l(0), t23.xxxx
      r18.y = samp0[]..swiz;
        r18.y = r19.y ? r16.w : r18.y;
        r19.y = (uint)r18.y >> 13;
        r18.y = r19.x ? r19.y : r18.y;
        r18.y = (int)r18.y & 8191;
        r18.x = (int)r16.x + (int)r18.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.x, l(0), t23.xxxx
      r18.w = samp0[]..swiz;
        r16.xyw = r17.www ? r16.xyw : r18.xzw;
        r16.xyw = r15.www ? r17.xyz : r16.xyw;
        r15.w = (int)r16.w & 0xc0000000;
        if (r15.w == 0) {
          r15.w = (int)-r16.y + 6;
          r17.xy = (uint2)r15.zy >> (uint2)r15.ww;
          r15.w = (int)r16.w | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r17.y = (((uint)r17.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r17.x = (((uint)r17.x << 0) & bitmask.x) | ((uint)r17.y & ~bitmask.x);
          r17.x = (int)r17.x * 10;
          r15.w = (uint)r15.w >> (uint)r17.x;
          r15.w = (int)r15.w & 1023;
          r17.x = (int)r15.w + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.x, l(0), t23.xxxx
        r17.w = samp0[]..swiz;
          r17.yz = (int2)r16.yy + int2(1,2);
          r15.w = (int)-r17.y + 6;
          r18.xy = (uint2)r15.zy >> (uint2)r15.ww;
          r15.w = (int)r17.w & 0xc0000000;
          r16.y = (int)r17.w | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r18.y = (((uint)r18.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r18.x = (((uint)r18.x << 0) & bitmask.x) | ((uint)r18.y & ~bitmask.x);
          r18.x = (int)r18.x * 10;
          r16.y = (uint)r16.y >> (uint)r18.x;
          r16.y = (int)r16.y & 1023;
          r18.x = (int)r16.y + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
        r18.z = samp0[]..swiz;
          r18.y = r17.z;
          r18.xyz = r15.www ? r17.xyw : r18.xyz;
          r16.y = (int)-r18.y + 6;
          r17.yz = (uint2)r15.zy >> (uint2)r16.yy;
          r16.y = (int)r18.z & 0xc0000000;
          r18.y = (int)r18.z | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r17.z = (((uint)r17.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r17.y = (((uint)r17.y << 0) & bitmask.y) | ((uint)r17.z & ~bitmask.y);
          r17.y = (int)r17.y * 10;
          r17.y = (uint)r18.y >> (uint)r17.y;
          r17.y = (int)r17.y & 1023;
          r19.x = (int)r17.y + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.y, r19.x, l(0), t23.xxxx
        r19.y = samp0[]..swiz;
          r17.yz = r16.yy ? r18.xz : r19.xy;
          r16.xw = r15.ww ? r17.xw : r17.yz;
        }
        r15.w = (int)r16.w & 0xc0000000;
        if (r15.w == 0) {
          if (14 == 0) r16.y = 0; else if (14+15 < 32) {           r16.y = (uint)r16.w << (32-(14 + 15)); r16.y = (uint)r16.y >> (32-14);          } else r16.y = (uint)r16.w >> 15;
          r16.y = (uint)r16.y;
          r16.y = sunConstants.sstLightingConstants.constants.spanInInches * r16.y;
          r16.y = 6.10388815e-05 * r16.y;
          r17.xy = (int2)r16.ww & int2(32767,536870912);
          r17.x = (uint)r17.x;
          r17.x = sunConstants.sstLightingConstants.constants.spanInInches * r17.x;
          r17.x = 3.05185094e-05 * r17.x;
          r17.z = (int)r15.y & 3;
          r17.z = (int)r16.x + (int)r17.z;
          r17.z = (int)r17.z + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.z, l(0), t23.xxxx
        r17.z = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r18.x = (((uint)r15.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r18.y = (((uint)r15.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r18.z = (((uint)r15.z << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r15.x = (uint)r17.z >> (uint)r18.x;
          r15.x = (int)r15.x & 255;
          r15.x = (uint)r15.x;
          r15.x = r15.x * r17.x;
          r15.x = r15.x * 0.00392156886 + r16.y;
          r15.y = (int)r18.y + 1;
          if (1 == 0) r15.z = 0; else if (1+1 < 32) {           r15.z = (uint)r15.z << (32-(1 + 1)); r15.z = (uint)r15.z >> (32-1);          } else r15.z = (uint)r15.z >> 1;
          r15.y = (int)r15.z + (int)r15.y;
          r15.y = (int)r15.y + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.y, r15.y, l(0), t23.xxxx
        r15.y = samp0[]..swiz;
          r15.y = (uint)r15.y >> (uint)r18.z;
          r15.y = (int)r15.y & 0x0000ffff;
          r15.y = (uint)r15.y;
          r15.y = r15.y * r17.x;
          r15.y = r15.y * 1.52590219e-05 + r16.y;
          r16.z = r17.y ? r15.x : r15.y;
        } else {
          r15.x = (int)r16.w & 0x80000000;
          r15.y = (int)r16.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.y, r15.y, l(0), t23.xxxx
        r15.y = samp0[]..swiz;
          r15.x = r15.x ? r15.y : 0;
          r15.y = (uint)r16.w << 2;
          r15.z = (uint)r15.x >> 16;
          r15.x = (int)r15.x & 0x0000ffff;
          r15.xz = f16tof32(r15.xz);
          r15.y = r13.y * r15.z + r15.y;
          r15.x = r13.z * r15.x + r15.y;
          r16.z = r15.w ? r15.x : r16.z;
        }
      }
      r13.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r13.w;
      r13.w = cmp(r16.z < r13.w);
      r9.x = r13.w ? 0 : 1;
    }
    if (r12.w == 0) {
      if (enableDitheredShadow == 0) {
        r12.w = (uint)r9.y;
        r15.xy = -sunConstants.splitPinTransform[r12.w].xy + r13.yz;
        r15.xy = sunConstants.splitPinTransform[r12.w].zz * r15.xy;
        r15.xy = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r12.w = (int16)sunConstants.splitArrayOffset;
        r15.z = r12.w + r9.y;
        r12.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r8.w).x;
        r13.w = gTransShadowmapArray.SampleLevel(samp0_s, r15.xyz, 0).x;
        r12.w = r13.w + r12.w;
        r12.w = saturate(-1 + r12.w);
        r13.w = r12.w * r12.w;
        r9.x = r13.w * r12.w;
      }
      if (enableDitheredShadow != 0) {
        r15.x = -r3.x;
        r12.w = (uint)r9.y;
        r9.y = 1 + r9.y;
        r9.y = min(2, r9.y);
        r9.w = 1 + -r9.w;
        r9.w = 28 * r9.w;
        r9.yw = (uint2)r9.yw;
        r16.xy = -sunConstants.splitPinTransform[r12.w].xy + r13.yz;
        r16.xy = sunConstants.splitPinTransform[r12.w].zz * r16.xy;
        r16.xy = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r13.yz = -sunConstants.splitPinTransform[r9.y].xy + r13.yz;
        r13.yz = sunConstants.splitPinTransform[r9.y].zz * r13.yz;
        r13.yz = r13.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r15.y = r13.x;
        r15.z = r3.x;
        r13.w = 0;
        r15.w = 0;
        while (true) {
          r16.z = cmp((uint)r15.w >= 8);
          if (r16.z != 0) break;
          r16.z = cmp((uint)r9.w < (uint)r15.w);
          r17.xy = r16.zz ? r13.yz : r16.xy;
          r16.w = r16.z ? sunConstants.splitPinTransform[r9.y].w : sunConstants.splitPinTransform[r12.w].w;
          r16.z = r16.z ? r9.y : r12.w;
          r18.x = dot(icb[r15.w+0].yx, r15.xy);
          r18.y = dot(icb[r15.w+0].yx, r15.yz);
          r17.xy = r18.xy * r16.ww + r17.xy;
          r16.z = (int)r16.z + (int16)sunConstants.splitArrayOffset;
          r17.z = (uint)r16.z;
          r16.z = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r8.w).x;
          r16.w = gTransShadowmapArray.SampleLevel(samp0_s, r17.xyz, 0).x;
          r16.z = r16.z + r16.w;
          r16.z = saturate(-1 + r16.z);
          r13.w = r16.z * 0.125 + r13.w;
          r15.w = (int)r15.w + 1;
        }
        r8.w = r13.w * r13.w;
        r9.x = r8.w * r13.w;
      }
    }
  }
  r8.w = 1 + -r2.y;
  r9.y = 5 * r8.w;
  r9.w = r8.w * 5 + -2.5;
  r9.w = 0.400000006 * r9.w;
  r9.w = max(0, r9.w);
  r9.w = 100 * r9.w;
  r13.yz = -r8.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r12.w = exp2(r13.y);
  r12.w = r12.w * r2.x;
  r12.w = 9.1368103 * r12.w;
  r13.y = r9.y * r8.w;
  r13.y = -r13.y * 2.0159049 + r13.z;
  r13.y = exp2(r13.y);
  r13.y = r13.y * r2.x;
  r13.y = 9.70808983 * r13.y;
  r12.w = max(r13.y, r12.w);
  r12.w = max(1.26815999, r12.w);
  r13.y = numRefProbes + -numOverrideProbes;
  r0.xy = (uint2)r0.yx >> int2(24,24);
  r13.z = cmp((uint)r0.x >= (uint)r13.y);
  r13.w = cmp((uint)r0.x < numRefProbes);
  r13.z = r13.w ? r13.z : 0;
  if (r13.z != 0) {
    r13.z = (int)r0.x * 14;
    r15.xyz = -refProbeConstantsCB[r13.z].data[0].xyz + r10.xyz;
    r13.w = 0x0000ffff & (int)refProbeConstantsCB[r13.z].data[7].z;
    if (6 == 0) r15.w = 0; else if (6+25 < 32) {     r15.w = (uint)refProbeConstantsCB[r13.z].data[7].z << (32-(6 + 25)); r15.w = (uint)r15.w >> (32-6);    } else r15.w = (uint)refProbeConstantsCB[r13.z].data[7].z >> 25;
    r16.x = (int)r13.w * 6;
    r16.y = dot(refProbeAttenuationConstantsCB[r16.x].data[0].xyz, r15.xyz);
    r16.y = saturate(refProbeAttenuationConstantsCB[r16.x].data[0].w + r16.y);
    r16.z = dot(refProbeAttenuationConstantsCB[r16.x].data[1].xyz, r15.xyz);
    r16.z = saturate(refProbeAttenuationConstantsCB[r16.x].data[1].w + r16.z);
    r16.y = r16.y * r16.z;
    r16.z = dot(refProbeAttenuationConstantsCB[r16.x].data[2].xyz, r15.xyz);
    r16.z = saturate(refProbeAttenuationConstantsCB[r16.x].data[2].w + r16.z);
    r16.y = r16.y * r16.z;
    r16.z = dot(refProbeAttenuationConstantsCB[r16.x].data[3].xyz, r15.xyz);
    r16.z = saturate(refProbeAttenuationConstantsCB[r16.x].data[3].w + r16.z);
    r16.y = r16.y * r16.z;
    r16.z = dot(refProbeAttenuationConstantsCB[r16.x].data[4].xyz, r15.xyz);
    r16.z = saturate(refProbeAttenuationConstantsCB[r16.x].data[4].w + r16.z);
    r16.y = r16.y * r16.z;
    r16.z = dot(refProbeAttenuationConstantsCB[r16.x].data[5].xyz, r15.xyz);
    r16.x = saturate(refProbeAttenuationConstantsCB[r16.x].data[5].w + r16.z);
    r16.x = r16.y * r16.x;
    r16.w = 1 & (int)refProbeConstantsCB[r13.z].data[6].x;
    r16.yz = float2(0,1);
    r16.xy = r16.ww ? r16.xy : r16.zx;
    r17.x = 1;
    r16.z = refProbeConstantsCB[r13.z].data[6].x;
    r18.xy = r16.xy;
    r16.w = 1;
    while (true) {
      r17.z = cmp((int)r16.w >= (int)r15.w);
      if (r17.z != 0) break;
      r17.z = (int)r13.w + (int)r16.w;
      r17.z = (int)r17.z * 6;
      r17.w = dot(refProbeAttenuationConstantsCB[r17.z].data[0].xyz, r15.xyz);
      r17.w = saturate(refProbeAttenuationConstantsCB[r17.z].data[0].w + r17.w);
      r17.w = r18.x * r17.w;
      r18.z = dot(refProbeAttenuationConstantsCB[r17.z].data[1].xyz, r15.xyz);
      r18.z = saturate(refProbeAttenuationConstantsCB[r17.z].data[1].w + r18.z);
      r17.w = r18.z * r17.w;
      r18.z = dot(refProbeAttenuationConstantsCB[r17.z].data[2].xyz, r15.xyz);
      r18.z = saturate(refProbeAttenuationConstantsCB[r17.z].data[2].w + r18.z);
      r17.w = r18.z * r17.w;
      r18.z = dot(refProbeAttenuationConstantsCB[r17.z].data[3].xyz, r15.xyz);
      r18.z = saturate(refProbeAttenuationConstantsCB[r17.z].data[3].w + r18.z);
      r17.w = r18.z * r17.w;
      r18.z = dot(refProbeAttenuationConstantsCB[r17.z].data[4].xyz, r15.xyz);
      r18.z = saturate(refProbeAttenuationConstantsCB[r17.z].data[4].w + r18.z);
      r17.w = r18.z * r17.w;
      r18.z = dot(refProbeAttenuationConstantsCB[r17.z].data[5].xyz, r15.xyz);
      r17.z = saturate(refProbeAttenuationConstantsCB[r17.z].data[5].w + r18.z);
      r18.x = r17.w * r17.z;
      r18.z = (uint)r16.z >> 2;
      if (1 == 0) r18.w = 0; else if (1+2 < 32) {       r18.w = (uint)r16.z << (32-(1 + 2)); r18.w = (uint)r18.w >> (32-1);      } else r18.w = (uint)r16.z >> 2;
      r19.x = (int)r18.z & 2;
      r19.y = max(r18.y, r18.x);
      r17.z = -r17.w * r17.z + 1;
      r17.z = r18.y * r17.z;
      r17.y = r19.x ? r17.z : r19.y;
      r18.xy = r18.ww ? r18.xy : r17.xy;
      r16.w = (int)r16.w + 1;
      r16.z = r18.z;
    }
    r18.y = saturate(r18.y);
    r13.w = refProbeConstantsCB[r13.z].data[6].y * r18.y;
    r15.w = cmp(0 < r13.w);
    if (r15.w != 0) {
      r15.w = refProbeConstantsCB[r13.z].data[7].y * r13.w;
      r16.x = refProbeConstantsCB[r13.z].data[7].w;
      r16.yz = refProbeConstantsCB[r13.z].data[8].xy;
      r16.w = dot(r14.xyz, r16.xyz);
      r16.x = dot(r15.xyz, r16.xyz);
      r16.x = -refProbeConstantsCB[r13.z].data[8].z + r16.x;
      r16.y = cmp(r16.x >= 0);
      r16.x = max(abs(r16.x), r9.w);
      r16.x = r16.y ? r16.x : -r16.x;
      r16.y = max(1.00000001e-07, -r16.w);
      r16.x = r16.x / r16.y;
      r16.x = min(131072, abs(r16.x));
      r17.x = refProbeConstantsCB[r13.z].data[8].w;
      r17.yz = refProbeConstantsCB[r13.z].data[9].xy;
      r16.y = dot(r14.xyz, r17.xyz);
      r16.z = dot(r15.xyz, r17.xyz);
      r16.z = -refProbeConstantsCB[r13.z].data[9].z + r16.z;
      r16.w = cmp(r16.z >= 0);
      r16.z = max(abs(r16.z), r9.w);
      r16.z = r16.w ? r16.z : -r16.z;
      r16.y = max(1.00000001e-07, -r16.y);
      r16.y = r16.z / r16.y;
      r16.x = min(r16.x, abs(r16.y));
      r17.x = refProbeConstantsCB[r13.z].data[9].w;
      r17.yz = refProbeConstantsCB[r13.z].data[10].xy;
      r16.y = dot(r14.xyz, r17.xyz);
      r16.z = dot(r15.xyz, r17.xyz);
      r16.z = -refProbeConstantsCB[r13.z].data[10].z + r16.z;
      r16.w = cmp(r16.z >= 0);
      r16.z = max(abs(r16.z), r9.w);
      r16.z = r16.w ? r16.z : -r16.z;
      r16.y = max(1.00000001e-07, -r16.y);
      r16.y = r16.z / r16.y;
      r16.x = min(r16.x, abs(r16.y));
      r17.x = refProbeConstantsCB[r13.z].data[10].w;
      r17.yz = refProbeConstantsCB[r13.z].data[11].xy;
      r16.y = dot(r14.xyz, r17.xyz);
      r16.z = dot(r15.xyz, r17.xyz);
      r16.z = -refProbeConstantsCB[r13.z].data[11].z + r16.z;
      r16.w = cmp(r16.z >= 0);
      r16.z = max(abs(r16.z), r9.w);
      r16.z = r16.w ? r16.z : -r16.z;
      r16.y = max(1.00000001e-07, -r16.y);
      r16.y = r16.z / r16.y;
      r16.x = min(r16.x, abs(r16.y));
      r17.x = refProbeConstantsCB[r13.z].data[11].w;
      r17.yz = refProbeConstantsCB[r13.z].data[12].xy;
      r16.y = dot(r14.xyz, r17.xyz);
      r16.z = dot(r15.xyz, r17.xyz);
      r16.z = -refProbeConstantsCB[r13.z].data[12].z + r16.z;
      r16.w = cmp(r16.z >= 0);
      r16.z = max(abs(r16.z), r9.w);
      r16.z = r16.w ? r16.z : -r16.z;
      r16.y = max(1.00000001e-07, -r16.y);
      r16.y = r16.z / r16.y;
      r16.x = min(r16.x, abs(r16.y));
      r17.x = refProbeConstantsCB[r13.z].data[12].w;
      r17.yz = refProbeConstantsCB[r13.z].data[13].xy;
      r16.y = dot(r14.xyz, r17.xyz);
      r16.z = dot(r15.xyz, r17.xyz);
      r16.z = -refProbeConstantsCB[r13.z].data[13].z + r16.z;
      r16.w = cmp(r16.z >= 0);
      r16.z = max(abs(r16.z), r9.w);
      r16.z = r16.w ? r16.z : -r16.z;
      r16.y = max(1.00000001e-07, -r16.y);
      r16.y = r16.z / r16.y;
      r16.x = min(r16.x, abs(r16.y));
      r17.x = refProbeConstantsCB[r13.z].data[3].w + r15.x;
      r17.yz = refProbeConstantsCB[r13.z].data[4].xy + r15.yz;
      r16.yzw = r14.xyz * r16.xxx + r17.xyz;
      r17.x = dot(r16.yzw, r16.yzw);
      r17.x = sqrt(r17.x);
      r16.x = r16.x / r17.x;
      r16.x = r16.x + r16.x;
      r16.x = sqrt(r16.x);
      r16.x = r8.w * 5 + r16.x;
      r16.x = -0.844799995 + r16.x;
      r17.x = refProbeConstantsCB[r13.z].data[0].w;
      r17.y = refProbeConstantsCB[r13.z].data[1].z;
      r17.z = refProbeConstantsCB[r13.z].data[2].y;
      r18.x = dot(r16.yzw, r17.xyz);
      r19.xy = refProbeConstantsCB[r13.z].data[1].xw;
      r19.z = refProbeConstantsCB[r13.z].data[2].z;
      r18.y = dot(r16.yzw, r19.xyz);
      r20.x = refProbeConstantsCB[r13.z].data[1].y;
      r20.yz = refProbeConstantsCB[r13.z].data[2].xw;
      r18.z = dot(r16.yzw, r20.xyz);
      if (9 == 0) r16.y = 0; else if (9+16 < 32) {       r16.y = (uint)refProbeConstantsCB[r13.z].data[7].z << (32-(9 + 16)); r16.y = (uint)r16.y >> (32-9);      } else r16.y = (uint)refProbeConstantsCB[r13.z].data[7].z >> 16;
      r18.w = (uint)r16.y;
      r16.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r18.xyzw, r16.x).xyz;
      r21.x = dot(r15.xyz, r17.xyz);
      r21.y = dot(r15.xyz, r19.xyz);
      r21.z = dot(r15.xyz, r20.xyz);
      r15.xyz = saturate(r21.xyz * refProbeConstantsCB[r13.z].data[3].xyz + float3(0.5,0.5,0.5));
      r21.xy = refProbeConstantsCB[r13.z].data[4].zw * r15.xy;
      r21.z = refProbeConstantsCB[r13.z].data[5].x * r15.z;
      r15.xyz = refProbeConstantsCB[r13.z].data[5].yzw + r21.xyz;
      r18.x = dot(r11.xyz, r17.xyz);
      r18.y = dot(r11.xyz, r19.xyz);
      r18.z = dot(r11.xyz, r20.xyz);
      r17.xyz = cmp(float3(0,0,0) < r18.xyz);
      r19.z = r17.x ? 0 : 0.5;
      r19.xy = float2(0,0);
      r19.xyz = r19.xyz + r15.xyz;
      r19.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r19.xyz, 0).xyz;
      r20.xyz = r18.xyz * r18.xyz;
      r20.xyz = r20.xyz * r15.www;
      r21.z = r17.y ? 0 : 0.5;
      r21.xy = float2(0,0);
      r17.xyw = r21.xyz + r15.xyz;
      r17.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r17.xyw, 0).xyz;
      r17.xyw = r17.xyw * r20.yyy;
      r17.xyw = r19.xyz * r20.xxx + r17.xyw;
      r19.z = r17.z ? 0 : 0.5;
      r19.xy = float2(0,0);
      r15.xyz = r19.xyz + r15.xyz;
      r15.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r15.xyz, 0).xyz;
      r15.xyz = r15.xyz * r20.zzz + r17.xyw;
      r17.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r18.xyzw, 6).xyz;
      r15.xyz = r17.xyz * r15.xyz;
      r13.z = dot(r15.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r16.w = r13.z * r12.w;
      r16.xyz = r16.xyz * r15.www;
      r15.w = dot(r16.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r13.z = r12.w * r13.z + r15.w;
      r13.z = r16.w / r13.z;
      r16.xyz = r16.xyz * r13.zzz;
    } else {
      r16.xyz = float3(0,0,0);
      r13.w = 0;
      r15.xyz = float3(0,0,0);
    }
  } else {
    r16.xyz = float3(0,0,0);
    r13.w = 0;
    r15.xyz = float3(0,0,0);
  }
  r13.z = cmp(r13.w < 1);
  if (r13.z != 0) {
    r13.y = cmp((uint)r0.x < (uint)r13.y);
    if (r13.y != 0) {
      r0.x = (int)r0.x * 14;
      r17.xyz = -refProbeConstantsCB[r0.x].data[0].xyz + r10.xyz;
      r13.y = 0x0000ffff & (int)refProbeConstantsCB[r0.x].data[7].z;
      if (6 == 0) r13.z = 0; else if (6+25 < 32) {       r13.z = (uint)refProbeConstantsCB[r0.x].data[7].z << (32-(6 + 25)); r13.z = (uint)r13.z >> (32-6);      } else r13.z = (uint)refProbeConstantsCB[r0.x].data[7].z >> 25;
      r15.w = (int)r13.y * 6;
      r16.w = dot(refProbeAttenuationConstantsCB[r15.w].data[0].xyz, r17.xyz);
      r16.w = saturate(refProbeAttenuationConstantsCB[r15.w].data[0].w + r16.w);
      r17.w = dot(refProbeAttenuationConstantsCB[r15.w].data[1].xyz, r17.xyz);
      r17.w = saturate(refProbeAttenuationConstantsCB[r15.w].data[1].w + r17.w);
      r16.w = r17.w * r16.w;
      r17.w = dot(refProbeAttenuationConstantsCB[r15.w].data[2].xyz, r17.xyz);
      r17.w = saturate(refProbeAttenuationConstantsCB[r15.w].data[2].w + r17.w);
      r16.w = r17.w * r16.w;
      r17.w = dot(refProbeAttenuationConstantsCB[r15.w].data[3].xyz, r17.xyz);
      r17.w = saturate(refProbeAttenuationConstantsCB[r15.w].data[3].w + r17.w);
      r16.w = r17.w * r16.w;
      r17.w = dot(refProbeAttenuationConstantsCB[r15.w].data[4].xyz, r17.xyz);
      r17.w = saturate(refProbeAttenuationConstantsCB[r15.w].data[4].w + r17.w);
      r16.w = r17.w * r16.w;
      r17.w = dot(refProbeAttenuationConstantsCB[r15.w].data[5].xyz, r17.xyz);
      r15.w = saturate(refProbeAttenuationConstantsCB[r15.w].data[5].w + r17.w);
      r18.x = r16.w * r15.w;
      r15.w = 1 & (int)refProbeConstantsCB[r0.x].data[6].x;
      r18.yz = float2(0,1);
      r18.xy = r15.ww ? r18.xy : r18.zx;
      r19.x = 1;
      r15.w = refProbeConstantsCB[r0.x].data[6].x;
      r20.xy = r18.xy;
      r16.w = 1;
      while (true) {
        r17.w = cmp((int)r16.w >= (int)r13.z);
        if (r17.w != 0) break;
        r17.w = (int)r13.y + (int)r16.w;
        r17.w = (int)r17.w * 6;
        r18.z = dot(refProbeAttenuationConstantsCB[r17.w].data[0].xyz, r17.xyz);
        r18.z = saturate(refProbeAttenuationConstantsCB[r17.w].data[0].w + r18.z);
        r18.z = r20.x * r18.z;
        r18.w = dot(refProbeAttenuationConstantsCB[r17.w].data[1].xyz, r17.xyz);
        r18.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[1].w + r18.w);
        r18.z = r18.z * r18.w;
        r18.w = dot(refProbeAttenuationConstantsCB[r17.w].data[2].xyz, r17.xyz);
        r18.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[2].w + r18.w);
        r18.z = r18.z * r18.w;
        r18.w = dot(refProbeAttenuationConstantsCB[r17.w].data[3].xyz, r17.xyz);
        r18.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[3].w + r18.w);
        r18.z = r18.z * r18.w;
        r18.w = dot(refProbeAttenuationConstantsCB[r17.w].data[4].xyz, r17.xyz);
        r18.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[4].w + r18.w);
        r18.z = r18.z * r18.w;
        r18.w = dot(refProbeAttenuationConstantsCB[r17.w].data[5].xyz, r17.xyz);
        r17.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[5].w + r18.w);
        r20.x = r18.z * r17.w;
        r18.w = (uint)r15.w >> 2;
        if (1 == 0) r19.z = 0; else if (1+2 < 32) {         r19.z = (uint)r15.w << (32-(1 + 2)); r19.z = (uint)r19.z >> (32-1);        } else r19.z = (uint)r15.w >> 2;
        r19.w = (int)r18.w & 2;
        r20.z = max(r20.y, r20.x);
        r17.w = -r18.z * r17.w + 1;
        r17.w = r20.y * r17.w;
        r19.y = r19.w ? r17.w : r20.z;
        r20.xy = r19.zz ? r20.xy : r19.xy;
        r16.w = (int)r16.w + 1;
        r15.w = r18.w;
      }
      r13.y = saturate(r20.y + -r13.w);
      r13.z = refProbeConstantsCB[r0.x].data[6].y * r13.y;
      r15.w = cmp(0 < r13.z);
      if (r15.w != 0) {
        r13.w = r13.y * refProbeConstantsCB[r0.x].data[6].y + r13.w;
        r13.y = refProbeConstantsCB[r0.x].data[7].y * r13.z;
        r18.x = refProbeConstantsCB[r0.x].data[7].w;
        r18.yz = refProbeConstantsCB[r0.x].data[8].xy;
        r13.z = dot(r14.xyz, r18.xyz);
        r15.w = dot(r17.xyz, r18.xyz);
        r15.w = -refProbeConstantsCB[r0.x].data[8].z + r15.w;
        r16.w = cmp(r15.w >= 0);
        r15.w = max(abs(r15.w), r9.w);
        r15.w = r16.w ? r15.w : -r15.w;
        r13.z = max(1.00000001e-07, -r13.z);
        r13.z = r15.w / r13.z;
        r13.z = min(131072, abs(r13.z));
        r18.x = refProbeConstantsCB[r0.x].data[8].w;
        r18.yz = refProbeConstantsCB[r0.x].data[9].xy;
        r15.w = dot(r14.xyz, r18.xyz);
        r16.w = dot(r17.xyz, r18.xyz);
        r16.w = -refProbeConstantsCB[r0.x].data[9].z + r16.w;
        r17.w = cmp(r16.w >= 0);
        r16.w = max(abs(r16.w), r9.w);
        r16.w = r17.w ? r16.w : -r16.w;
        r15.w = max(1.00000001e-07, -r15.w);
        r15.w = r16.w / r15.w;
        r13.z = min(abs(r15.w), r13.z);
        r18.x = refProbeConstantsCB[r0.x].data[9].w;
        r18.yz = refProbeConstantsCB[r0.x].data[10].xy;
        r15.w = dot(r14.xyz, r18.xyz);
        r16.w = dot(r17.xyz, r18.xyz);
        r16.w = -refProbeConstantsCB[r0.x].data[10].z + r16.w;
        r17.w = cmp(r16.w >= 0);
        r16.w = max(abs(r16.w), r9.w);
        r16.w = r17.w ? r16.w : -r16.w;
        r15.w = max(1.00000001e-07, -r15.w);
        r15.w = r16.w / r15.w;
        r13.z = min(abs(r15.w), r13.z);
        r18.x = refProbeConstantsCB[r0.x].data[10].w;
        r18.yz = refProbeConstantsCB[r0.x].data[11].xy;
        r15.w = dot(r14.xyz, r18.xyz);
        r16.w = dot(r17.xyz, r18.xyz);
        r16.w = -refProbeConstantsCB[r0.x].data[11].z + r16.w;
        r17.w = cmp(r16.w >= 0);
        r16.w = max(abs(r16.w), r9.w);
        r16.w = r17.w ? r16.w : -r16.w;
        r15.w = max(1.00000001e-07, -r15.w);
        r15.w = r16.w / r15.w;
        r13.z = min(abs(r15.w), r13.z);
        r18.x = refProbeConstantsCB[r0.x].data[11].w;
        r18.yz = refProbeConstantsCB[r0.x].data[12].xy;
        r15.w = dot(r14.xyz, r18.xyz);
        r16.w = dot(r17.xyz, r18.xyz);
        r16.w = -refProbeConstantsCB[r0.x].data[12].z + r16.w;
        r17.w = cmp(r16.w >= 0);
        r16.w = max(abs(r16.w), r9.w);
        r16.w = r17.w ? r16.w : -r16.w;
        r15.w = max(1.00000001e-07, -r15.w);
        r15.w = r16.w / r15.w;
        r13.z = min(abs(r15.w), r13.z);
        r18.x = refProbeConstantsCB[r0.x].data[12].w;
        r18.yz = refProbeConstantsCB[r0.x].data[13].xy;
        r15.w = dot(r14.xyz, r18.xyz);
        r16.w = dot(r17.xyz, r18.xyz);
        r16.w = -refProbeConstantsCB[r0.x].data[13].z + r16.w;
        r17.w = cmp(r16.w >= 0);
        r9.w = max(abs(r16.w), r9.w);
        r9.w = r17.w ? r9.w : -r9.w;
        r15.w = max(1.00000001e-07, -r15.w);
        r9.w = r9.w / r15.w;
        r9.w = min(r13.z, abs(r9.w));
        r18.x = refProbeConstantsCB[r0.x].data[3].w + r17.x;
        r18.yz = refProbeConstantsCB[r0.x].data[4].xy + r17.yz;
        r18.xyz = r14.xyz * r9.www + r18.xyz;
        r13.z = dot(r18.xyz, r18.xyz);
        r13.z = sqrt(r13.z);
        r9.w = r9.w / r13.z;
        r9.w = r9.w + r9.w;
        r9.w = sqrt(r9.w);
        r8.w = r8.w * 5 + r9.w;
        r8.w = -0.844799995 + r8.w;
        r19.x = refProbeConstantsCB[r0.x].data[0].w;
        r19.y = refProbeConstantsCB[r0.x].data[1].z;
        r19.z = refProbeConstantsCB[r0.x].data[2].y;
        r20.x = dot(r18.xyz, r19.xyz);
        r21.xy = refProbeConstantsCB[r0.x].data[1].xw;
        r21.z = refProbeConstantsCB[r0.x].data[2].z;
        r20.y = dot(r18.xyz, r21.xyz);
        r22.x = refProbeConstantsCB[r0.x].data[1].y;
        r22.yz = refProbeConstantsCB[r0.x].data[2].xw;
        r20.z = dot(r18.xyz, r22.xyz);
        if (9 == 0) r9.w = 0; else if (9+16 < 32) {         r9.w = (uint)refProbeConstantsCB[r0.x].data[7].z << (32-(9 + 16)); r9.w = (uint)r9.w >> (32-9);        } else r9.w = (uint)refProbeConstantsCB[r0.x].data[7].z >> 16;
        r20.w = (uint)r9.w;
        r18.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r20.xyzw, r8.w).xyz;
        r23.x = dot(r17.xyz, r19.xyz);
        r23.y = dot(r17.xyz, r21.xyz);
        r23.z = dot(r17.xyz, r22.xyz);
        r17.xyz = saturate(r23.xyz * refProbeConstantsCB[r0.x].data[3].xyz + float3(0.5,0.5,0.5));
        r23.xy = refProbeConstantsCB[r0.x].data[4].zw * r17.xy;
        r23.z = refProbeConstantsCB[r0.x].data[5].x * r17.z;
        r17.xyz = refProbeConstantsCB[r0.x].data[5].yzw + r23.xyz;
        r20.x = dot(r11.xyz, r19.xyz);
        r20.y = dot(r11.xyz, r21.xyz);
        r20.z = dot(r11.xyz, r22.xyz);
        r19.xyz = cmp(float3(0,0,0) < r20.xyz);
        r21.z = r19.x ? 0 : 0.5;
        r21.xy = float2(0,0);
        r21.xyz = r21.xyz + r17.xyz;
        r21.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r21.xyz, 0).xyz;
        r22.xyz = r20.xyz * r20.xyz;
        r22.xyz = r22.xyz * r13.yyy;
        r23.z = r19.y ? 0 : 0.5;
        r23.xy = float2(0,0);
        r19.xyw = r23.xyz + r17.xyz;
        r19.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r19.xyw, 0).xyz;
        r19.xyw = r19.xyw * r22.yyy;
        r19.xyw = r21.xyz * r22.xxx + r19.xyw;
        r21.z = r19.z ? 0 : 0.5;
        r21.xy = float2(0,0);
        r17.xyz = r21.xyz + r17.xyz;
        r17.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r17.xyz, 0).xyz;
        r17.xyz = r17.xyz * r22.zzz + r19.xyw;
        r19.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r20.xyzw, 6).xyz;
        r20.xyz = r19.xyz * r17.xyz;
        r0.x = dot(r20.xyz, float3(0.212599993,0.715200007,0.0722000003));
        r15.xyz = r17.xyz * r19.xyz + r15.xyz;
        r8.w = r12.w * r0.x;
        r17.xyz = r18.xyz * r13.yyy;
        r9.w = dot(r17.xyz, float3(0.212599993,0.715200007,0.0722000003));
        r0.x = r12.w * r0.x + r9.w;
        r0.x = r8.w / r0.x;
        r16.xyz = r17.xyz * r0.xxx + r16.xyz;
      }
    }
  }
  r0.x = max(1, r13.w);
  r0.x = rcp(r0.x);
  r13.w = saturate(r13.w);
  r17.xyz = r15.xyz * r0.xxx;
  r16.xyz = r16.xyz * r0.xxx;
  r8.w = cmp(r13.w < 0.99000001);
  if (r8.w != 0) {
    r8.w = 1 + -r13.w;
    r9.w = sunConstants.globalProbeExposure * r8.w;
    r13.yzw = -globalProbeConstants.data[0].xyz + r10.xyz;
    r18.x = globalProbeConstants.data[0].w * r13.y;
    r18.yz = globalProbeConstants.data[1].xy * r13.zw;
    r13.yzw = saturate(float3(0.5,0.5,0.5) + r18.xyz);
    r18.xy = globalProbeConstants.data[1].zw * r13.yz;
    r18.z = globalProbeConstants.data[2].x * r13.w;
    r13.yzw = globalProbeConstants.data[2].yzw + r18.xyz;
    r18.xyz = cmp(float3(0,0,0) < r11.xyz);
    r18.xyz = r18.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r18.w = 0;
    r19.xyz = r18.wwx + r13.yzw;
    r19.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r19.xyz, 0).xyz;
    r20.xyz = r11.xyz * r11.xyz;
    r20.xyz = r20.xyz * r9.www;
    r21.xyz = r18.wwy + r13.yzw;
    r21.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r21.xyz, 0).xyz;
    r21.xyz = r21.xyz * r20.yyy;
    r19.xyz = r19.xyz * r20.xxx + r21.xyz;
    r13.yzw = r18.wwz + r13.yzw;
    r13.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r13.yzw, 0).xyz;
    r13.yzw = r13.yzw * r20.zzz + r19.xyz;
    r11.w = 0;
    r18.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, 6).xyz;
    r13.yzw = r18.xyz * r13.yzw;
    r9.w = dot(r13.yzw, float3(0.212599993,0.715200007,0.0722000003));
    r17.xyz = r15.xyz * r0.xxx + r13.yzw;
    r14.w = 0;
    r13.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r14.xyzw, r9.y).xyz;
    r0.x = sunConstants.globalProbeExposure * r8.w + -r9.w;
    r0.x = r2.y * r0.x + r9.w;
    r16.xyz = r13.yzw * r0.xxx + r16.xyz;
  }
  r0.x = r4.z * r2.z + r2.x;
  r0.x = log2(abs(r0.x));
  r0.x = r1.w * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r4.z * r2.z + r0.x;
  r0.x = saturate(-1 + r0.x);
  r15.xyz = r17.xyz * r2.www;
  r18.xyz = r0.www ? r15.yzx : 0;
  r2.yz = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r2.yz = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r2.yz, 0).xy;
  r13.yzw = r16.xyz * r0.xxx;
  r16.xyz = r13.yzw * r2.yyy;
  r19.xyz = r13.yzw * r2.zzz;
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
        r20.xyz = eyeOffset.xyz + r10.xyz;
        r20.w = 1;
        r4.z = dot(sunConstants.sunCookieTransform[0].xyzw, r20.xyzw);
        r8.w = dot(sunConstants.sunCookieTransform[1].xyzw, r20.xyzw);
        r20.x = frac(r4.z);
        r20.y = frac(r8.w);
        r4.z = -1 + (int14)sunConstants.sunCookieIndex;
        r20.z = (uint)r4.z;
        r13.yzw = gCookieArray.SampleLevel(samplerLinear_s, r20.xyz, 0).xyz;
        r13.yzw = float3(-1,-1,-1) + r13.yzw;
        r13.yzw = sunConstants.sunCookieIntensity * r13.yzw + float3(1,1,1);
        r13.yzw = sunConstants.color.xyz * r13.yzw;
      } else {
        r13.yzw = sunConstants.color.xyz;
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
        r20.xyz = r11.xyz * r8.www + r10.xyz;
        r21.xyz = lightConstantsCB[r4.z].data[4].yzw;
        r21.w = lightConstantsCB[r4.z].data[5].x;
        r20.w = 1;
        r21.x = dot(r21.xyzw, r20.xyzw);
        r22.xyz = lightConstantsCB[r4.z].data[5].yzw;
        r22.w = lightConstantsCB[r4.z].data[6].x;
        r21.y = dot(r22.xyzw, r20.xyzw);
        r9.yw = r21.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r21.x = lightConstantsCB[r4.z].data[9].w + r9.y;
        r21.y = lightConstantsCB[r4.z].data[10].x + r9.w;
        r9.yw = lightConstantsCB[r4.z].data[9].yz * r21.xy;
        r21.xy = lightConstantsCB[r4.z].data[3].yy / lightConstantsCB[r4.z].data[8].yw;
        r21.zw = float2(1,1) + -r21.xy;
        r21.zw = cmp(r9.yw >= r21.zw);
        r21.xy = cmp(r21.xy >= r9.yw);
        r21.xy = (int2)r21.xy | (int2)r21.zw;
        r8.w = (int)r21.y | (int)r21.x;
        if (r8.w == 0) {
          r21.xyz = lightConstantsCB[r4.z].data[6].yzw;
          r21.w = lightConstantsCB[r4.z].data[7].x;
          r8.w = dot(r21.xyzw, r20.xyzw);
          r9.yw = saturate(r9.yw);
          r20.x = r9.y * lightConstantsCB[r4.z].data[8].y + lightConstantsCB[r4.z].data[8].z;
          r20.y = r9.w * lightConstantsCB[r4.z].data[8].w + lightConstantsCB[r4.z].data[9].x;
          r8.w = lightConstantsCB[r4.z].data[10].y + r8.w;
          r8.w = r8.w / lightConstantsCB[r4.z].data[10].z;
          r8.w = max(6.10351563e-05, r8.w);
          r9.y = 0x0000ffff & (int)lightConstantsCB[r4.z].data[1].w;
          if (enableDitheredShadow != 0) {
            r21.x = -r3.x;
            r22.z = (uint)r9.y;
            r21.y = r13.x;
            r21.z = r3.x;
            r9.w = 0;
            r11.w = 0;
            while (true) {
              r12.w = cmp((int)r11.w >= 8);
              if (r12.w != 0) break;
              r23.x = dot(icb[r11.w+0].yx, r21.xy);
              r23.y = dot(icb[r11.w+0].yx, r21.yz);
              r22.xy = r23.xy * lightConstantsCB[r4.z].data[3].yy + r20.xy;
              r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r8.w).x;
              r9.w = r12.w * 0.125 + r9.w;
              r11.w = (int)r11.w + 1;
            }
          } else {
            r20.z = (uint)r9.y;
            r9.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r8.w).x;
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
          r20.xyz = r11.xyz * r8.www + r10.xyz;
          r21.xyz = lightConstantsCB[r4.z].data[4].yzw;
          r21.w = lightConstantsCB[r4.z].data[5].x;
          r20.w = 1;
          r21.x = dot(r21.xyzw, r20.xyzw);
          r22.xyz = lightConstantsCB[r4.z].data[5].yzw;
          r22.w = lightConstantsCB[r4.z].data[6].x;
          r21.y = dot(r22.xyzw, r20.xyzw);
          r9.yw = r21.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r21.x = lightConstantsCB[r4.z].data[9].w + r9.y;
          r21.y = lightConstantsCB[r4.z].data[10].x + r9.w;
          r9.yw = lightConstantsCB[r4.z].data[9].yz * r21.xy;
          r21.xy = lightConstantsCB[r4.z].data[3].yy / lightConstantsCB[r4.z].data[8].yw;
          r21.zw = float2(1,1) + -r21.xy;
          r21.zw = cmp(r9.yw >= r21.zw);
          r21.xy = cmp(r21.xy >= r9.yw);
          r21.xy = (int2)r21.xy | (int2)r21.zw;
          r8.w = (int)r21.y | (int)r21.x;
          if (r8.w == 0) {
            r21.xyz = lightConstantsCB[r4.z].data[6].yzw;
            r21.w = lightConstantsCB[r4.z].data[7].x;
            r8.w = dot(r21.xyzw, r20.xyzw);
            r9.yw = saturate(r9.yw);
            r20.x = r9.y * lightConstantsCB[r4.z].data[8].y + lightConstantsCB[r4.z].data[8].z;
            r20.y = r9.w * lightConstantsCB[r4.z].data[8].w + lightConstantsCB[r4.z].data[9].x;
            r8.w = lightConstantsCB[r4.z].data[10].y + r8.w;
            r8.w = r8.w / lightConstantsCB[r4.z].data[10].z;
            r8.w = max(6.10351563e-05, r8.w);
            r9.y = 0x0000ffff & (int)lightConstantsCB[r4.z].data[1].w;
            if (enableDitheredShadow != 0) {
              r21.x = -r3.x;
              r22.z = (uint)r9.y;
              r21.y = r13.x;
              r21.z = r3.x;
              r9.w = 0;
              r11.w = 0;
              while (true) {
                r12.w = cmp((int)r11.w >= 8);
                if (r12.w != 0) break;
                r23.x = dot(icb[r11.w+0].yx, r21.xy);
                r23.y = dot(icb[r11.w+0].yx, r21.yz);
                r22.xy = r23.xy * lightConstantsCB[r4.z].data[3].yy + r20.xy;
                r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r8.w).x;
                r9.w = r12.w * 0.125 + r9.w;
                r11.w = (int)r11.w + 1;
              }
            } else {
              r20.z = (uint)r9.y;
              r9.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r8.w).x;
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
      r20.xyz = r4.zzz * r13.yzw;
      r5.w = cmp(0 < r5.w);
      r17.xyz = r17.xyz * r2.www + r20.xyz;
      r20.xyz = -r10.xyz * r0.zzz + sunConstants.wldDir.xyz;
      r0.z = dot(r20.xyz, r20.xyz);
      r0.z = rsqrt(r0.z);
      r20.xyz = r20.xyz * r0.zzz;
      r0.z = dot(r20.xyz, r12.xyz);
      r2.w = dot(r11.xyz, r20.xyz);
      r7.w = abs(r2.w) * r1.z + -abs(r2.w);
      r2.w = abs(r2.w) * r7.w + 1;
      r6.w = r6.w * r0.x + r2.y;
      r2.w = r2.w * r2.w;
      r2.w = r2.w * r6.w;
      r2.w = rcp(r2.w);
      r2.z = r2.w * r2.z;
      r2.z = r9.x * r2.z;
      r2.z = 0.25 * r2.z;
      r20.yzw = r2.zzz * r13.yzw + r19.xyz;
      r0.z = saturate(1 + -r0.z);
      r2.w = r0.z * r0.z;
      r2.w = r2.w * r2.w;
      r0.z = r2.w * r0.z;
      r0.z = r2.z * r0.z;
      r9.xyw = r0.zzz * r13.yzw + r16.xyz;
      r13.yzw = r4.zzz * r13.yzw + r18.zxy;
      r21.xyz = r0.www ? r13.zwy : 0;
      r17.w = r18.z;
      r15.w = r21.z;
      r15.xyzw = r5.wwww ? r17.xyzw : r15.xyzw;
      r18.zw = r9.xy;
      r21.zw = r16.xy;
      r17.xyzw = r5.wwww ? r18.xyzw : r21.xyzw;
      r20.x = r9.w;
      r19.w = r16.z;
      r19.xyzw = r5.wwww ? r20.yzwx : r19.xyzw;
      r18.z = r15.w;
      r18.xy = r17.xy;
      r16.xy = r17.zw;
      r16.z = r19.w;
    }
  }
  r0.y = (int)r0.y * 15;
  if (3 == 0) r0.z = 0; else if (3+24 < 32) {   r0.z = (uint)lightConstantsCB[r0.y].data[1].w << (32-(3 + 24)); r0.z = (uint)r0.z >> (32-3);  } else r0.z = (uint)lightConstantsCB[r0.y].data[1].w >> 24;
  switch (r0.z) {
    case 4 :    r0.z = cmp(0 < lightConstantsCB[r0.y].data[6].y);
    r17.xy = lightConstantsCB[r0.y].data[5].zw;
    r17.z = lightConstantsCB[r0.y].data[6].x;
    r9.xyw = -r17.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r0.y].data[0].xyz;
    r13.yzw = r9.xyw + -r10.xyz;
    r2.z = dot(r17.xyz, r13.yzw);
    r2.w = saturate(-r2.z / lightConstantsCB[r0.y].data[6].y);
    r20.xyz = r2.www * r17.xyz + r9.xyw;
    r20.xyz = r0.zzz ? r20.xyz : lightConstantsCB[r0.y].data[0].xyz;
    r20.xyz = r20.xyz + -r10.xyz;
    r4.z = dot(r20.xyz, r20.xyz);
    r5.w = rsqrt(r4.z);
    r20.xyz = r20.xyz * r5.www;
    r5.w = dot(r11.xyz, r20.xyz);
    r6.w = saturate(r5.w);
    r6.w = r0.w ? abs(r5.w) : r6.w;
    r7.w = cmp(0 < r6.w);
    if (r7.w != 0) {
      r7.w = sqrt(r4.z);
      r8.w = lightConstantsCB[r0.y].data[3].x * lightConstantsCB[r0.y].data[3].x;
      r4.z = r8.w / r4.z;
      r4.z = min(1, r4.z);
      r20.xy = saturate(r7.ww * lightConstantsCB[r0.y].data[2].xz + lightConstantsCB[r0.y].data[2].yw);
      r20.zw = r20.xy * r20.xy;
      r20.xy = r20.xy * float2(-2,-2) + float2(3,3);
      r20.xy = r20.zw * r20.xy;
      r4.z = r20.x * r4.z;
      r4.z = r4.z * r20.y;
      r7.w = cmp(0 < r4.z);
      if (r7.w != 0) {
        if (3 == 0) r7.w = 0; else if (3+27 < 32) {         r7.w = (uint)lightConstantsCB[r0.y].data[1].w << (32-(3 + 27)); r7.w = (uint)r7.w >> (32-3);        } else r7.w = (uint)lightConstantsCB[r0.y].data[1].w >> 27;
        r7.w = cmp((int)r7.w != 1);
        if (r7.w != 0) {
          r20.xy = (uint2)r1.yx;
          r7.w = dot(r20.xy, float2(0.0671105608,0.00583714992));
          r7.w = frac(r7.w);
          r7.w = 52.9829178 * r7.w;
          r7.w = frac(r7.w);
          r7.w = r7.w * 6.28318548 + gameTick.w;
          sincos(r7.w, r20.x, r21.x);
          r7.w = abs(r5.w) * -0.200000003 + 0.400000006;
          r8.w = cmp(r5.w < 0);
          r8.w = r0.w ? r8.w : 0;
          r7.w = r8.w ? -r7.w : r7.w;
          r20.yzw = r11.xyz * r7.www + r10.xyz;
          r20.yzw = -lightConstantsCB[r0.y].data[4].yzw + r20.yzw;
          r7.w = max(abs(r20.z), abs(r20.w));
          r7.w = max(abs(r20.y), r7.w);
          r7.w = lightConstantsCB[r0.y].data[5].x / r7.w;
          r7.w = lightConstantsCB[r0.y].data[5].y + r7.w;
          r8.w = dot(r20.yzw, r20.yzw);
          r8.w = rsqrt(r8.w);
          r7.w = max(6.10351563e-05, r7.w);
          r11.w = 0x0000ffff & (int)lightConstantsCB[r0.y].data[1].w;
          r22.x = -r3.x;
          r23.w = (uint)r11.w;
          r22.y = r13.x;
          r22.z = r3.x;
          r11.w = 0;
          r12.w = 0;
          while (true) {
            r14.w = cmp((int)r12.w >= 8);
            if (r14.w != 0) break;
            r21.y = dot(icb[r12.w+0].yx, r22.xy);
            r21.z = dot(icb[r12.w+0].yx, r22.yz);
            r24.yz = lightConstantsCB[r0.y].data[3].yy * r21.yz;
            r24.x = r24.y * r21.x;
            r24.w = r24.y * r20.x;
            r23.xyz = r20.yzw * r8.www + r24.xzw;
            r14.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyzw, r7.w).x;
            r11.w = r14.w * 0.125 + r11.w;
            r12.w = (int)r12.w + 1;
          }
        } else {
          r11.w = 1;
        }
        r4.z = r11.w * r4.z;
        r7.w = cmp(0 < r4.z);
        if (r7.w != 0) {
          r7.w = lightConstantsCB[r0.y].data[1].z * r1.z;
          r7.w = 0.25 * r7.w;
          r8.w = dot(r17.xyz, r14.xyz);
          r11.w = dot(r14.xyz, r13.yzw);
          r12.w = -r8.w * r8.w + lightConstantsCB[r0.y].data[6].y;
          r2.z = r8.w * r11.w + -r2.z;
          r2.z = saturate(r2.z / r12.w);
          r8.w = r12.w / lightConstantsCB[r0.y].data[6].y;
          r8.w = 10 * r8.w;
          r8.w = min(1, r8.w);
          r2.z = r2.z + -r2.w;
          r2.z = r8.w * r2.z + r2.w;
          r9.xyw = r2.zzz * r17.xyz + r9.xyw;
          r9.xyw = r0.zzz ? r9.xyw : lightConstantsCB[r0.y].data[0].xyz;
          r9.xyw = r9.xyw + -r10.xyz;
          r0.z = dot(r9.xyw, r9.xyw);
          r0.z = rsqrt(r0.z);
          r13.yzw = r9.xyw * r0.zzz;
          if (4 == 0) r2.z = 0; else if (4+16 < 32) {           r2.z = (uint)lightConstantsCB[r0.y].data[1].w << (32-(4 + 16)); r2.z = (uint)r2.z >> (32-4);          } else r2.z = (uint)lightConstantsCB[r0.y].data[1].w >> 16;
          r2.w = cmp(0 < (uint)r2.z);
          r2.w = r2.w ? r9.z : 0;
          if (r2.w != 0) {
            r2.z = (int)r2.z + numLights;
            r2.z = mad((int)r2.z, 15, -15);
            r2.w = abs(r5.w) * -0.200000003 + 0.400000006;
            r8.w = cmp(r5.w < 0);
            r8.w = r0.w ? r8.w : 0;
            r2.w = r8.w ? -r2.w : r2.w;
            r14.xyz = r11.xyz * r2.www + r10.xyz;
            r17.xyz = lightConstantsCB[r2.z].data[6].yzw;
            r17.w = lightConstantsCB[r2.z].data[7].x;
            r14.w = 1;
            r2.w = dot(r17.xyzw, r14.xyzw);
            r17.xyz = lightConstantsCB[r2.z].data[7].yzw;
            r17.w = lightConstantsCB[r2.z].data[8].x;
            r8.w = dot(r17.xyzw, r14.xyzw);
            r11.w = cmp(r8.w < r2.w);
            if (r11.w == 0) {
              r17.xyz = lightConstantsCB[r2.z].data[4].yzw;
              r17.w = lightConstantsCB[r2.z].data[5].x;
              r17.x = dot(r17.xyzw, r14.xyzw);
              r20.xyz = lightConstantsCB[r2.z].data[5].yzw;
              r20.w = lightConstantsCB[r2.z].data[6].x;
              r17.y = dot(r20.xyzw, r14.xyzw);
              r14.xy = r17.xy / r8.ww;
              r14.xy = r14.xy * float2(0.5,-0.5) + float2(0.5,0.5);
              r17.x = lightConstantsCB[r2.z].data[9].w + r14.x;
              r17.y = lightConstantsCB[r2.z].data[10].x + r14.y;
              r14.xy = lightConstantsCB[r2.z].data[9].yz * r17.xy;
              r14.zw = lightConstantsCB[r2.z].data[3].yy / lightConstantsCB[r2.z].data[8].yw;
              r17.xy = float2(1,1) + -r14.zw;
              r17.xy = cmp(r14.xy >= r17.xy);
              r14.zw = cmp(r14.zw >= r14.xy);
              r14.zw = (int2)r14.zw | (int2)r17.xy;
              r12.w = (int)r14.w | (int)r14.z;
              if (r12.w == 0) {
                r14.xy = saturate(r14.xy);
                r17.x = r14.x * lightConstantsCB[r2.z].data[8].y + lightConstantsCB[r2.z].data[8].z;
                r17.y = r14.y * lightConstantsCB[r2.z].data[8].w + lightConstantsCB[r2.z].data[9].x;
                r14.x = lightConstantsCB[r2.z].data[10].z * r8.w;
                r2.w = lightConstantsCB[r2.z].data[10].y * r8.w + r2.w;
                r2.w = r2.w / r14.x;
              }
            } else {
              r12.w = -1;
            }
            r8.w = (int)r11.w | (int)r12.w;
            if (r8.w == 0) {
              r2.w = max(6.10351563e-05, r2.w);
              r8.w = 0x0000ffff & (int)lightConstantsCB[r2.z].data[1].w;
              if (enableDitheredShadow != 0) {
                r14.x = -r3.x;
                r20.z = (uint)r8.w;
                r14.y = r13.x;
                r14.z = r3.x;
                r11.w = 0;
                r12.w = 0;
                while (true) {
                  r14.w = cmp((int)r12.w >= 8);
                  if (r14.w != 0) break;
                  r21.x = dot(icb[r12.w+0].yx, r14.xy);
                  r21.y = dot(icb[r12.w+0].yx, r14.yz);
                  r20.xy = r21.xy * lightConstantsCB[r2.z].data[3].yy + r17.xy;
                  r14.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r2.w).x;
                  r11.w = r14.w * 0.125 + r11.w;
                  r12.w = (int)r12.w + 1;
                }
              } else {
                r17.z = (uint)r8.w;
                r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r2.w).x;
              }
              r2.z = r11.w * r11.w;
              r2.z = r2.z * r11.w;
            } else {
              r2.z = 1;
            }
            r4.z = r4.z * r2.z;
          } else {
            if (4 == 0) r2.z = 0; else if (4+20 < 32) {             r2.z = (uint)lightConstantsCB[r0.y].data[1].w << (32-(4 + 20)); r2.z = (uint)r2.z >> (32-4);            } else r2.z = (uint)lightConstantsCB[r0.y].data[1].w >> 20;
            r2.w = cmp(0 < (uint)r2.z);
            r8.w = ~(int)r9.z;
            r2.w = r2.w ? r8.w : 0;
            if (r2.w != 0) {
              r2.z = (int)r2.z + numLights;
              r2.z = mad((int)r2.z, 15, -15);
              r2.w = abs(r5.w) * -0.200000003 + 0.400000006;
              r8.w = cmp(r5.w < 0);
              r8.w = r0.w ? r8.w : 0;
              r2.w = r8.w ? -r2.w : r2.w;
              r14.xyz = r11.xyz * r2.www + r10.xyz;
              r17.xyz = lightConstantsCB[r2.z].data[6].yzw;
              r17.w = lightConstantsCB[r2.z].data[7].x;
              r14.w = 1;
              r2.w = dot(r17.xyzw, r14.xyzw);
              r17.xyz = lightConstantsCB[r2.z].data[7].yzw;
              r17.w = lightConstantsCB[r2.z].data[8].x;
              r8.w = dot(r17.xyzw, r14.xyzw);
              r11.w = cmp(r8.w < r2.w);
              if (r11.w == 0) {
                r17.xyz = lightConstantsCB[r2.z].data[4].yzw;
                r17.w = lightConstantsCB[r2.z].data[5].x;
                r17.x = dot(r17.xyzw, r14.xyzw);
                r20.xyz = lightConstantsCB[r2.z].data[5].yzw;
                r20.w = lightConstantsCB[r2.z].data[6].x;
                r17.y = dot(r20.xyzw, r14.xyzw);
                r14.xy = r17.xy / r8.ww;
                r14.xy = r14.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r17.x = lightConstantsCB[r2.z].data[9].w + r14.x;
                r17.y = lightConstantsCB[r2.z].data[10].x + r14.y;
                r14.xy = lightConstantsCB[r2.z].data[9].yz * r17.xy;
                r14.zw = lightConstantsCB[r2.z].data[3].yy / lightConstantsCB[r2.z].data[8].yw;
                r17.xy = float2(1,1) + -r14.zw;
                r17.xy = cmp(r14.xy >= r17.xy);
                r14.zw = cmp(r14.zw >= r14.xy);
                r14.zw = (int2)r14.zw | (int2)r17.xy;
                r12.w = (int)r14.w | (int)r14.z;
                if (r12.w == 0) {
                  r14.xy = saturate(r14.xy);
                  r17.x = r14.x * lightConstantsCB[r2.z].data[8].y + lightConstantsCB[r2.z].data[8].z;
                  r17.y = r14.y * lightConstantsCB[r2.z].data[8].w + lightConstantsCB[r2.z].data[9].x;
                  r14.x = lightConstantsCB[r2.z].data[10].z * r8.w;
                  r2.w = lightConstantsCB[r2.z].data[10].y * r8.w + r2.w;
                  r2.w = r2.w / r14.x;
                }
              } else {
                r12.w = -1;
              }
              r8.w = (int)r11.w | (int)r12.w;
              if (r8.w == 0) {
                r2.w = max(6.10351563e-05, r2.w);
                r8.w = 0x0000ffff & (int)lightConstantsCB[r2.z].data[1].w;
                if (enableDitheredShadow != 0) {
                  r14.x = -r3.x;
                  r20.z = (uint)r8.w;
                  r14.y = r13.x;
                  r14.z = r3.x;
                  r11.w = 0;
                  r12.w = 0;
                  while (true) {
                    r14.w = cmp((int)r12.w >= 8);
                    if (r14.w != 0) break;
                    r21.x = dot(icb[r12.w+0].yx, r14.xy);
                    r21.y = dot(icb[r12.w+0].yx, r14.yz);
                    r20.xy = r21.xy * lightConstantsCB[r2.z].data[3].yy + r17.xy;
                    r14.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r2.w).x;
                    r11.w = r14.w * 0.125 + r11.w;
                    r12.w = (int)r12.w + 1;
                  }
                } else {
                  r17.z = (uint)r8.w;
                  r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r2.w).x;
                }
                r2.z = r11.w * r11.w;
                r2.z = r2.z * r11.w;
              } else {
                r2.z = 1;
              }
              r4.z = r4.z * r2.z;
            }
          }
          r2.z = -r2.x * 0.5 + 1;
          r2.z = -r6.w * r2.z + 1;
          r2.z = r2.z * r2.z;
          r2.z = -r2.z * 0.620000005 + 0.620000005;
          r2.z = r2.z + -r6.w;
          r2.z = r1.w * r2.z + r6.w;
          r2.z = r2.z * r4.z;
          r14.x = lightConstantsCB[r0.y].data[0].w;
          r14.yz = lightConstantsCB[r0.y].data[1].xy;
          r2.w = cmp(0 < r5.w);
          r17.xyz = r2.zzz * r14.xyz + r15.xyz;
          r5.w = saturate(dot(r11.xyz, r13.yzw));
          r9.xyw = r9.xyw * r0.zzz + r12.xyz;
          r0.z = dot(r9.xyw, r9.xyw);
          r0.z = rsqrt(r0.z);
          r9.xyw = r9.xyw * r0.zzz;
          r0.z = dot(r9.xyw, r12.xyz);
          r6.w = dot(r11.xyz, r9.xyw);
          r8.w = abs(r6.w) * r1.z + -abs(r6.w);
          r6.w = abs(r6.w) * r8.w + 1;
          r8.w = r5.w * r0.x + r2.y;
          r6.w = r6.w * r6.w;
          r6.w = r6.w * r8.w;
          r6.w = rcp(r6.w);
          r5.w = r5.w * r7.w;
          r5.w = r6.w * r5.w;
          r4.z = r5.w * r4.z;
          r9.xyw = r4.zzz * r14.xyz + r19.xyz;
          r0.z = saturate(1 + -r0.z);
          r5.w = r0.z * r0.z;
          r5.w = r5.w * r5.w;
          r0.z = r5.w * r0.z;
          r0.z = r4.z * r0.z;
          r13.yzw = r0.zzz * r14.xyz + r16.xyz;
          r14.xyz = r2.zzz * r14.xyz + r18.zxy;
          r14.xyz = r0.www ? r14.xyz : r18.zxy;
          r15.xyz = r2.www ? r17.xyz : r15.xyz;
          r18.xyz = r2.www ? r18.xyz : r14.yzx;
          r16.xyz = r2.www ? r13.yzw : r16.xyz;
          r19.xyz = r2.www ? r9.xyw : r19.xyz;
        }
      }
    }
    break;
    case 2 :    r14.xy = lightConstantsCB[r0.y].data[3].zw + -r10.xy;
    r14.z = lightConstantsCB[r0.y].data[4].x + -r10.z;
    r0.z = dot(r14.xyz, r14.xyz);
    r0.z = rsqrt(r0.z);
    r9.xyw = r14.xyz * r0.zzz;
    r2.z = dot(r11.xyz, r9.xyw);
    r2.w = saturate(r2.z);
    r4.z = r0.w ? abs(r2.z) : r2.w;
    r5.w = cmp(0 < r4.z);
    if (r5.w != 0) {
      r17.xyz = lightConstantsCB[r0.y].data[7].yzw;
      r17.w = lightConstantsCB[r0.y].data[8].x;
      r10.w = 1;
      r5.w = dot(r17.xyzw, r10.xyzw);
      r6.w = cmp(r5.w < 1);
      if (r6.w != 0) {
        r9.xyw = float3(1,1,1);
        r6.w = 0;
      } else {
        r13.yzw = lightConstantsCB[r0.y].data[0].xyz + -r10.xyz;
        r7.w = lightConstantsCB[r0.y].data[3].x * lightConstantsCB[r0.y].data[3].x;
        r8.w = dot(r13.yzw, r13.yzw);
        r7.w = r7.w / r8.w;
        r7.w = min(1, r7.w);
        r13.yz = saturate(r5.ww * lightConstantsCB[r0.y].data[2].xz + lightConstantsCB[r0.y].data[2].yw);
        r20.xy = r13.yz * r13.yz;
        r13.yz = r13.yz * float2(-2,-2) + float2(3,3);
        r13.yz = r20.xy * r13.yz;
        r7.w = r13.y * r7.w;
        r7.w = r7.w * r13.z;
        r20.xyz = lightConstantsCB[r0.y].data[4].yzw;
        r20.w = lightConstantsCB[r0.y].data[5].x;
        r20.x = dot(r20.xyzw, r10.xyzw);
        r21.xyz = lightConstantsCB[r0.y].data[5].yzw;
        r21.w = lightConstantsCB[r0.y].data[6].x;
        r20.y = dot(r21.xyzw, r10.xyzw);
        r20.xy = r20.xy / r5.ww;
        r5.w = cmp(lightConstantsCB[r0.y].data[10].w < 0.00048828125);
        if (r5.w != 0) {
          r13.yz = saturate(abs(r20.xy) * lightConstantsCB[r0.y].data[12].xy + lightConstantsCB[r0.y].data[12].zw);
          r21.xy = r13.yz * r13.yz;
          r13.yz = r13.yz * float2(-2,-2) + float2(3,3);
          r13.yz = r21.xy * r13.yz;
          r5.w = r13.y * r13.z;
        } else {
          r21.xyzw = saturate(lightConstantsCB[r0.y].data[11].xyzw * abs(r20.yyxx));
          r21.xyzw = log2(r21.xyzw);
          r21.xyzw = lightConstantsCB[r0.y].data[12].zzzz * r21.xyzw;
          r21.xyzw = exp2(r21.xyzw);
          r13.yz = r21.xy + r21.zw;
          r13.yz = log2(r13.yz);
          r13.yz = lightConstantsCB[r0.y].data[12].ww * r13.yz;
          r13.yz = exp2(r13.yz);
          r8.w = lightConstantsCB[r0.y].data[12].x * r13.y;
          r10.w = lightConstantsCB[r0.y].data[12].y * r13.z + -1;
          r8.w = lightConstantsCB[r0.y].data[12].y * r13.z + -r8.w;
          r8.w = saturate(r10.w / r8.w);
          r10.w = r8.w * r8.w;
          r8.w = r8.w * -2 + 3;
          r5.w = r10.w * r8.w;
        }
        r6.w = r7.w * r5.w;
        r5.w = 255 & (int)lightConstantsCB[r0.y].data[14].w;
        if (r5.w != 0) {
          r20.z = 1;
          r7.w = dot(lightConstantsCB[r0.y].data[13].xyz, r20.xyz);
          r21.x = lightConstantsCB[r0.y].data[13].w;
          r21.yz = lightConstantsCB[r0.y].data[14].xy;
          r8.w = dot(r21.xyz, r20.xyz);
          r20.x = frac(r7.w);
          r20.y = frac(r8.w);
          r5.w = (int)r5.w + -1;
          r20.z = (uint)r5.w;
          r9.xyw = gCookieArray.SampleLevel(samplerLinear_s, r20.xyz, 0).xyz;
        } else {
          r9.xyw = float3(1,1,1);
        }
      }
      r20.x = lightConstantsCB[r0.y].data[0].w;
      r20.yz = lightConstantsCB[r0.y].data[1].xy;
      r9.xyw = r20.xyz * r9.xyw;
      r5.w = cmp(0 < r6.w);
      if (r5.w != 0) {
        if (3 == 0) r5.w = 0; else if (3+27 < 32) {         r5.w = (uint)lightConstantsCB[r0.y].data[1].w << (32-(3 + 27)); r5.w = (uint)r5.w >> (32-3);        } else r5.w = (uint)lightConstantsCB[r0.y].data[1].w >> 27;
        r5.w = cmp((int)r5.w != 1);
        if (r5.w != 0) {
          r5.w = abs(r2.z) * -0.200000003 + 0.400000006;
          r7.w = cmp(r2.z < 0);
          r7.w = r0.w ? r7.w : 0;
          r5.w = r7.w ? -r5.w : r5.w;
          r20.xyz = r11.xyz * r5.www + r10.xyz;
          r21.xyz = lightConstantsCB[r0.y].data[6].yzw;
          r21.w = lightConstantsCB[r0.y].data[7].x;
          r20.w = 1;
          r5.w = dot(r21.xyzw, r20.xyzw);
          r7.w = dot(r17.xyzw, r20.xyzw);
          r8.w = cmp(r7.w >= r5.w);
          if (r8.w != 0) {
            r17.xyz = lightConstantsCB[r0.y].data[4].yzw;
            r17.w = lightConstantsCB[r0.y].data[5].x;
            r17.x = dot(r17.xyzw, r20.xyzw);
            r21.xyz = lightConstantsCB[r0.y].data[5].yzw;
            r21.w = lightConstantsCB[r0.y].data[6].x;
            r17.y = dot(r21.xyzw, r20.xyzw);
            r13.yz = r17.xy / r7.ww;
            r13.yz = saturate(r13.yz * float2(0.5,-0.5) + float2(0.5,0.5));
            r17.x = r13.y * lightConstantsCB[r0.y].data[8].y + lightConstantsCB[r0.y].data[8].z;
            r17.y = r13.z * lightConstantsCB[r0.y].data[8].w + lightConstantsCB[r0.y].data[9].x;
            r5.w = r5.w / r7.w;
            r5.w = max(6.10351563e-05, r5.w);
            r7.w = 0x0000ffff & (int)lightConstantsCB[r0.y].data[1].w;
            if (enableDitheredShadow != 0) {
              r20.x = -r3.x;
              r21.z = (uint)r7.w;
              r20.y = r13.x;
              r20.z = r3.x;
              r8.w = 0;
              r10.w = 0;
              while (true) {
                r11.w = cmp((int)r10.w >= 8);
                if (r11.w != 0) break;
                r22.x = dot(icb[r10.w+0].yx, r20.xy);
                r22.y = dot(icb[r10.w+0].yx, r20.yz);
                r21.xy = r22.xy * lightConstantsCB[r0.y].data[3].yy + r17.xy;
                r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r5.w).x;
                r8.w = r11.w * 0.125 + r8.w;
                r10.w = (int)r10.w + 1;
              }
            } else {
              r17.z = (uint)r7.w;
              r8.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r5.w).x;
            }
            r5.w = r8.w * r8.w;
            r5.w = r5.w * r8.w;
          } else {
            r5.w = 1;
          }
        } else {
          r5.w = 1;
        }
        r5.w = r6.w * r5.w;
        r6.w = cmp(0 < r5.w);
        if (r6.w != 0) {
          r6.w = lightConstantsCB[r0.y].data[1].z * r1.z;
          r6.w = r6.w * r2.w;
          if (4 == 0) r7.w = 0; else if (4+16 < 32) {           r7.w = (uint)lightConstantsCB[r0.y].data[1].w << (32-(4 + 16)); r7.w = (uint)r7.w >> (32-4);          } else r7.w = (uint)lightConstantsCB[r0.y].data[1].w >> 16;
          r8.w = cmp(0 < (uint)r7.w);
          r8.w = r8.w ? r9.z : 0;
          if (r8.w != 0) {
            r7.w = (int)r7.w + numLights;
            r7.w = mad((int)r7.w, 15, -15);
            r8.w = abs(r2.z) * -0.200000003 + 0.400000006;
            r10.w = cmp(r2.z < 0);
            r10.w = r0.w ? r10.w : 0;
            r8.w = r10.w ? -r8.w : r8.w;
            r17.xyz = r11.xyz * r8.www + r10.xyz;
            r20.xyz = lightConstantsCB[r7.w].data[6].yzw;
            r20.w = lightConstantsCB[r7.w].data[7].x;
            r17.w = 1;
            r8.w = dot(r20.xyzw, r17.xyzw);
            r20.xyz = lightConstantsCB[r7.w].data[7].yzw;
            r20.w = lightConstantsCB[r7.w].data[8].x;
            r10.w = dot(r20.xyzw, r17.xyzw);
            r11.w = cmp(r10.w < r8.w);
            if (r11.w == 0) {
              r20.xyz = lightConstantsCB[r7.w].data[4].yzw;
              r20.w = lightConstantsCB[r7.w].data[5].x;
              r20.x = dot(r20.xyzw, r17.xyzw);
              r21.xyz = lightConstantsCB[r7.w].data[5].yzw;
              r21.w = lightConstantsCB[r7.w].data[6].x;
              r20.y = dot(r21.xyzw, r17.xyzw);
              r13.yz = r20.xy / r10.ww;
              r13.yz = r13.yz * float2(0.5,-0.5) + float2(0.5,0.5);
              r17.x = lightConstantsCB[r7.w].data[9].w + r13.y;
              r17.y = lightConstantsCB[r7.w].data[10].x + r13.z;
              r13.yz = lightConstantsCB[r7.w].data[9].yz * r17.xy;
              r17.xy = lightConstantsCB[r7.w].data[3].yy / lightConstantsCB[r7.w].data[8].yw;
              r17.zw = float2(1,1) + -r17.xy;
              r17.zw = cmp(r13.yz >= r17.zw);
              r17.xy = cmp(r17.xy >= r13.yz);
              r17.xy = (int2)r17.xy | (int2)r17.zw;
              r12.w = (int)r17.y | (int)r17.x;
              if (r12.w == 0) {
                r13.yz = saturate(r13.yz);
                r17.x = r13.y * lightConstantsCB[r7.w].data[8].y + lightConstantsCB[r7.w].data[8].z;
                r17.y = r13.z * lightConstantsCB[r7.w].data[8].w + lightConstantsCB[r7.w].data[9].x;
                r13.y = lightConstantsCB[r7.w].data[10].z * r10.w;
                r8.w = lightConstantsCB[r7.w].data[10].y * r10.w + r8.w;
                r8.w = r8.w / r13.y;
              }
            } else {
              r12.w = -1;
            }
            r10.w = (int)r11.w | (int)r12.w;
            if (r10.w == 0) {
              r8.w = max(6.10351563e-05, r8.w);
              r10.w = 0x0000ffff & (int)lightConstantsCB[r7.w].data[1].w;
              if (enableDitheredShadow != 0) {
                r20.x = -r3.x;
                r21.z = (uint)r10.w;
                r20.y = r13.x;
                r20.z = r3.x;
                r11.w = 0;
                r12.w = 0;
                while (true) {
                  r13.y = cmp((int)r12.w >= 8);
                  if (r13.y != 0) break;
                  r22.x = dot(icb[r12.w+0].yx, r20.xy);
                  r22.y = dot(icb[r12.w+0].yx, r20.yz);
                  r21.xy = r22.xy * lightConstantsCB[r7.w].data[3].yy + r17.xy;
                  r13.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r8.w).x;
                  r11.w = r13.y * 0.125 + r11.w;
                  r12.w = (int)r12.w + 1;
                }
              } else {
                r17.z = (uint)r10.w;
                r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r8.w).x;
              }
              r7.w = r11.w * r11.w;
              r7.w = r7.w * r11.w;
            } else {
              r7.w = 1;
            }
            r5.w = r7.w * r5.w;
          } else {
            if (4 == 0) r0.y = 0; else if (4+20 < 32) {             r0.y = (uint)lightConstantsCB[r0.y].data[1].w << (32-(4 + 20)); r0.y = (uint)r0.y >> (32-4);            } else r0.y = (uint)lightConstantsCB[r0.y].data[1].w >> 20;
            r7.w = cmp(0 < (uint)r0.y);
            r8.w = ~(int)r9.z;
            r7.w = r7.w ? r8.w : 0;
            if (r7.w != 0) {
              r0.y = (int)r0.y + numLights;
              r0.y = mad((int)r0.y, 15, -15);
              r7.w = abs(r2.z) * -0.200000003 + 0.400000006;
              r8.w = cmp(r2.z < 0);
              r8.w = r0.w ? r8.w : 0;
              r7.w = r8.w ? -r7.w : r7.w;
              r17.xyz = r11.xyz * r7.www + r10.xyz;
              r20.xyz = lightConstantsCB[r0.y].data[6].yzw;
              r20.w = lightConstantsCB[r0.y].data[7].x;
              r17.w = 1;
              r7.w = dot(r20.xyzw, r17.xyzw);
              r20.xyz = lightConstantsCB[r0.y].data[7].yzw;
              r20.w = lightConstantsCB[r0.y].data[8].x;
              r8.w = dot(r20.xyzw, r17.xyzw);
              r9.z = cmp(r8.w < r7.w);
              if (r9.z == 0) {
                r20.xyz = lightConstantsCB[r0.y].data[4].yzw;
                r20.w = lightConstantsCB[r0.y].data[5].x;
                r20.x = dot(r20.xyzw, r17.xyzw);
                r21.xyz = lightConstantsCB[r0.y].data[5].yzw;
                r21.w = lightConstantsCB[r0.y].data[6].x;
                r20.y = dot(r21.xyzw, r17.xyzw);
                r13.yz = r20.xy / r8.ww;
                r13.yz = r13.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                r17.x = lightConstantsCB[r0.y].data[9].w + r13.y;
                r17.y = lightConstantsCB[r0.y].data[10].x + r13.z;
                r13.yz = lightConstantsCB[r0.y].data[9].yz * r17.xy;
                r17.xy = lightConstantsCB[r0.y].data[3].yy / lightConstantsCB[r0.y].data[8].yw;
                r17.zw = float2(1,1) + -r17.xy;
                r17.zw = cmp(r13.yz >= r17.zw);
                r17.xy = cmp(r17.xy >= r13.yz);
                r17.xy = (int2)r17.xy | (int2)r17.zw;
                r10.w = (int)r17.y | (int)r17.x;
                if (r10.w == 0) {
                  r13.yz = saturate(r13.yz);
                  r17.x = r13.y * lightConstantsCB[r0.y].data[8].y + lightConstantsCB[r0.y].data[8].z;
                  r17.y = r13.z * lightConstantsCB[r0.y].data[8].w + lightConstantsCB[r0.y].data[9].x;
                  r11.w = lightConstantsCB[r0.y].data[10].z * r8.w;
                  r7.w = lightConstantsCB[r0.y].data[10].y * r8.w + r7.w;
                  r7.w = r7.w / r11.w;
                }
              } else {
                r10.w = -1;
              }
              r8.w = (int)r9.z | (int)r10.w;
              if (r8.w == 0) {
                r7.w = max(6.10351563e-05, r7.w);
                r8.w = 0x0000ffff & (int)lightConstantsCB[r0.y].data[1].w;
                if (enableDitheredShadow != 0) {
                  r20.x = -r3.x;
                  r21.z = (uint)r8.w;
                  r20.y = r13.x;
                  r20.z = r3.x;
                  r3.x = 0;
                  r9.z = 0;
                  while (true) {
                    r10.w = cmp((int)r9.z >= 8);
                    if (r10.w != 0) break;
                    r13.x = dot(icb[r9.z+0].yx, r20.xy);
                    r13.y = dot(icb[r9.z+0].yx, r20.yz);
                    r21.xy = r13.xy * lightConstantsCB[r0.y].data[3].yy + r17.xy;
                    r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r7.w).x;
                    r3.x = r10.w * 0.125 + r3.x;
                    r9.z = (int)r9.z + 1;
                  }
                } else {
                  r17.z = (uint)r8.w;
                  r3.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r7.w).x;
                }
                r0.y = r3.x * r3.x;
                r0.y = r0.y * r3.x;
              } else {
                r0.y = 1;
              }
              r5.w = r5.w * r0.y;
            }
          }
          r0.y = -r2.x * 0.5 + 1;
          r0.y = -r4.z * r0.y + 1;
          r0.y = r0.y * r0.y;
          r0.y = -r0.y * 0.620000005 + 0.620000005;
          r0.y = r0.y + -r4.z;
          r0.y = r1.w * r0.y + r4.z;
          r0.y = r0.y * r5.w;
          r1.w = cmp(0 < r2.z);
          r13.xyz = r0.yyy * r9.xyw + r15.xyz;
          r14.xyz = r14.xyz * r0.zzz + r12.xyz;
          r0.z = dot(r14.xyz, r14.xyz);
          r0.z = rsqrt(r0.z);
          r14.xyz = r14.xyz * r0.zzz;
          r0.z = dot(r14.xyz, r12.xyz);
          r2.x = dot(r11.xyz, r14.xyz);
          r1.z = abs(r2.x) * r1.z + -abs(r2.x);
          r1.z = abs(r2.x) * r1.z + 1;
          r0.x = r2.w * r0.x + r2.y;
          r1.z = r1.z * r1.z;
          r0.x = r1.z * r0.x;
          r0.x = rcp(r0.x);
          r0.x = r0.x * r6.w;
          r0.x = r5.w * r0.x;
          r0.x = 0.25 * r0.x;
          r2.xyz = r0.xxx * r9.xyw + r19.xyz;
          r0.z = saturate(1 + -r0.z);
          r1.z = r0.z * r0.z;
          r1.z = r1.z * r1.z;
          r0.z = r1.z * r0.z;
          r0.x = r0.x * r0.z;
          r11.xyz = r0.xxx * r9.xyw + r16.xyz;
          r0.xyz = r0.yyy * r9.xyw + r18.zxy;
          r0.xyz = r0.www ? r0.xyz : r18.zxy;
          r15.xyz = r1.www ? r13.xyz : r15.xyz;
          r18.xyz = r1.www ? r18.xyz : r0.yzx;
          r16.xyz = r1.www ? r11.xyz : r16.xyz;
          r19.xyz = r1.www ? r2.xyz : r19.xyz;
        }
      }
    }
    break;
    default :
    break;
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
  r0.xyz = r15.xyz * r3.yzw;
  r0.xyz = r18.zxy * r2.xyz + r0.xyz;
  r4.xyz = float3(0.959999979,0.959999979,0.959999979) * r16.xyz;
  r4.xyz = r19.xyz * float3(0.0399999991,0.0399999991,0.0399999991) + r4.xyz;
  r0.xyz = r4.xyz + r0.xyz;
  r4.xyz = float3(1,1,1) + -r2.xyz;
  r4.xyz = r16.xyz * r4.xyz;
  r2.xyz = r19.xyz * r2.xyz + r4.xyz;
  r2.xyz = r15.xyz * r3.yzw + r2.xyz;
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