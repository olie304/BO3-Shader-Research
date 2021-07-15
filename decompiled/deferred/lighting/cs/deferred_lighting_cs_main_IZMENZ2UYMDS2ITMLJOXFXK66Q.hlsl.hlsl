// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:23:32 2021

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
  r0.x = mad(permuteStride, 46, (int)vThreadGroupID.x);
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
      r12.w = 0;
      while (true) {
        r13.y = cmp(r8.w >= 3);
        if (r13.y != 0) break;
        r13.y = (uint)r8.w;
        r13.zw = -sunConstants.splitPinTransform[r13.y].xy + r9.xy;
        r13.z = max(abs(r13.z), abs(r13.w));
        r12.w = sunConstants.splitPinTransform[r13.y].z * r13.z;
        r13.y = cmp(r12.w < 1);
        if (r13.y != 0) {
          break;
        }
        r8.w = 1 + r8.w;
        r12.w = 0;
      }
    } else {
      r8.w = 3;
      r12.w = 0;
    }
    r13.y = cmp(r8.w >= 3);
    if (r13.y != 0) {
      r15.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r16.xz = rcp(r15.xx);
      r16.y = -r16.z;
      r15.xyz = r9.xyx * r16.xyz + r15.yzy;
      r16.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r15.xyz = max(float3(0,0,0), r15.xyz);
      r15.xyz = min(r15.xyz, r16.xyz);
      r13.zw = sunConstants.sstLightingConstants.coordScale * r15.zy;
      r13.zw = floor(r13.zw);
      r13.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r13.w;
      r13.z = r13.w * sunConstants.sstLightingConstants.coordScale + r13.z;
      r13.z = (uint)r13.z;
      r13.z = (int)r13.z + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.w, r13.z, l(0), t23.xxxx
    r13.w = samp0[]..swiz;
      r15.w = (int)r13.w & 0x40000000;
      r16.x = (uint)r13.w << 2;
      if (r15.w == 0) {
        r15.w = (int)r13.w & 0x01ffffff;
        r17.x = (int)r13.z + (int)r15.w;
        r13.z = (uint)r13.w >> 25;
        r13.z = (uint)r13.z;
        r15.xyz = r15.xyz * r13.zzz;
        r15.xyz = frac(r15.xyz);
        r15.xyz = float3(128,128,128) * r15.xyz;
        r15.xyz = (uint3)r15.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
      r17.z = samp0[]..swiz;
        r13.zw = (uint2)r15.zy >> int2(6,6);
        r15.w = (int)r17.z & 0xc0000000;
        r16.y = (int)r17.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.y, r16.y, l(0), t23.xxxx
      r16.y = samp0[]..swiz;
        r13.w = r13.w ? r17.z : r16.y;
        r16.y = (uint)r13.w >> 13;
        r13.z = r13.z ? r16.y : r13.w;
        r13.z = (int)r13.z & 8191;
        r18.x = (int)r13.z + (int)r17.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
      r18.z = samp0[]..swiz;
        r17.y = 0;
        r18.y = 1;
        r16.yzw = r15.www ? r17.xyz : r18.xyz;
        r18.yz = r15.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r13.zw = (uint2)r15.zy >> (uint2)r18.yy;
        r13.zw = (int2)r13.zw & int2(1,1);
        r17.w = (int)r16.w & 0xc0000000;
        r18.y = (int)r16.y + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.y, r18.y, l(0), t23.xxxx
      r18.y = samp0[]..swiz;
        r13.w = r13.w ? r16.w : r18.y;
        r18.y = (uint)r13.w >> 13;
        r13.z = r13.z ? r18.y : r13.w;
        r13.z = (int)r13.z & 8191;
        r18.x = (int)r13.z + (int)r16.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.x, l(0), t23.xxxx
      r18.w = samp0[]..swiz;
        r16.yzw = r17.www ? r16.yzw : r18.xzw;
        r16.yzw = r15.www ? r17.xyz : r16.yzw;
        r13.z = (int)r16.w & 0xc0000000;
        if (r13.z == 0) {
          r13.z = (int)-r16.z + 6;
          r13.zw = (uint2)r15.zy >> (uint2)r13.zz;
          r15.w = (int)r16.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.w = (((uint)r13.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.z = (((uint)r13.z << 0) & bitmask.z) | ((uint)r13.w & ~bitmask.z);
          r13.z = (int)r13.z * 10;
          r13.z = (uint)r15.w >> (uint)r13.z;
          r13.z = (int)r13.z & 1023;
          r17.x = (int)r13.z + (int)r16.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.x, l(0), t23.xxxx
        r17.w = samp0[]..swiz;
          r17.yz = (int2)r16.zz + int2(1,2);
          r13.z = (int)-r17.y + 6;
          r13.zw = (uint2)r15.zy >> (uint2)r13.zz;
          r15.w = (int)r17.w & 0xc0000000;
          r16.z = (int)r17.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.w = (((uint)r13.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.z = (((uint)r13.z << 0) & bitmask.z) | ((uint)r13.w & ~bitmask.z);
          r13.z = (int)r13.z * 10;
          r13.z = (uint)r16.z >> (uint)r13.z;
          r13.z = (int)r13.z & 1023;
          r18.x = (int)r13.z + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
        r18.z = samp0[]..swiz;
          r18.y = r17.z;
          r18.xyz = r15.www ? r17.xyw : r18.xyz;
          r13.z = (int)-r18.y + 6;
          r13.zw = (uint2)r15.zy >> (uint2)r13.zz;
          r16.z = (int)r18.z & 0xc0000000;
          r17.y = (int)r18.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.w = (((uint)r13.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.z = (((uint)r13.z << 0) & bitmask.z) | ((uint)r13.w & ~bitmask.z);
          r13.z = (int)r13.z * 10;
          r13.z = (uint)r17.y >> (uint)r13.z;
          r13.z = (int)r13.z & 1023;
          r19.x = (int)r13.z + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.y, r19.x, l(0), t23.xxxx
        r19.y = samp0[]..swiz;
          r13.zw = r16.zz ? r18.xz : r19.xy;
          r16.yw = r15.ww ? r17.xw : r13.zw;
        }
        r13.z = (int)r16.w & 0xc0000000;
        if (r13.z == 0) {
          if (14 == 0) r13.w = 0; else if (14+15 < 32) {           r13.w = (uint)r16.w << (32-(14 + 15)); r13.w = (uint)r13.w >> (32-14);          } else r13.w = (uint)r16.w >> 15;
          r13.w = (uint)r13.w;
          r13.w = sunConstants.sstLightingConstants.constants.spanInInches * r13.w;
          r13.w = 6.10388815e-05 * r13.w;
          r17.xy = (int2)r16.ww & int2(32767,536870912);
          r15.w = (uint)r17.x;
          r15.w = sunConstants.sstLightingConstants.constants.spanInInches * r15.w;
          r15.w = 3.05185094e-05 * r15.w;
          r16.z = (int)r15.y & 3;
          r16.z = (int)r16.z + (int)r16.y;
          r16.z = (int)r16.z + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.z, l(0), t23.xxxx
        r16.z = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r17.x = (((uint)r15.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.z = ((~(-1 << 2)) << 1) & 0xffffffff;  r17.z = (((uint)r15.y << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.w = ((~(-1 << 1)) << 4) & 0xffffffff;  r17.w = (((uint)r15.z << 4) & bitmask.w) | ((uint)0 & ~bitmask.w);
          r15.x = (uint)r16.z >> (uint)r17.x;
          r15.x = (int)r15.x & 255;
          r15.x = (uint)r15.x;
          r15.x = r15.x * r15.w;
          r15.x = r15.x * 0.00392156886 + r13.w;
          r15.y = (int)r17.z + 1;
          if (1 == 0) r15.z = 0; else if (1+1 < 32) {           r15.z = (uint)r15.z << (32-(1 + 1)); r15.z = (uint)r15.z >> (32-1);          } else r15.z = (uint)r15.z >> 1;
          r15.y = (int)r15.z + (int)r15.y;
          r15.y = (int)r15.y + (int)r16.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.y, r15.y, l(0), t23.xxxx
        r15.y = samp0[]..swiz;
          r15.y = (uint)r15.y >> (uint)r17.w;
          r15.y = (int)r15.y & 0x0000ffff;
          r15.y = (uint)r15.y;
          r15.y = r15.y * r15.w;
          r13.w = r15.y * 1.52590219e-05 + r13.w;
          r16.x = r17.y ? r15.x : r13.w;
        } else {
          r13.w = (int)r16.w & 0x80000000;
          r15.x = (int)r16.y + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.x, r15.x, l(0), t23.xxxx
        r15.x = samp0[]..swiz;
          r13.w = r13.w ? r15.x : 0;
          r15.x = (uint)r16.w << 2;
          r15.y = (uint)r13.w >> 16;
          r15.y = f16tof32(r15.y);
          r13.w = (int)r13.w & 0x0000ffff;
          r13.w = f16tof32(r13.w);
          r15.x = r9.x * r15.y + r15.x;
          r13.w = r9.y * r13.w + r15.x;
          r16.x = r13.z ? r13.w : r16.x;
        }
      }
      r9.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r9.w;
      r9.w = cmp(r16.x < r9.w);
      r7.w = r9.w ? 0 : 1;
    }
    if (r13.y == 0) {
      if (enableDitheredShadow == 0) {
        r9.w = (uint)r8.w;
        r13.yz = -sunConstants.splitPinTransform[r9.w].xy + r9.xy;
        r13.yz = sunConstants.splitPinTransform[r9.w].zz * r13.yz;
        r15.xy = r13.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r9.w = (int16)sunConstants.splitArrayOffset;
        r15.z = r9.w + r8.w;
        r9.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r6.w).x;
        r13.y = gTransShadowmapArray.SampleLevel(samp0_s, r15.xyz, 0).x;
        r9.w = r13.y + r9.w;
        r9.w = saturate(-1 + r9.w);
        r13.y = r9.w * r9.w;
        r7.w = r13.y * r9.w;
      }
      if (enableDitheredShadow != 0) {
        r15.x = -r3.x;
        r9.w = (uint)r8.w;
        r8.w = 1 + r8.w;
        r8.w = min(2, r8.w);
        r8.w = (uint)r8.w;
        r12.w = 1 + -r12.w;
        r12.w = 28 * r12.w;
        r12.w = (uint)r12.w;
        r13.yz = -sunConstants.splitPinTransform[r9.w].xy + r9.xy;
        r13.yz = sunConstants.splitPinTransform[r9.w].zz * r13.yz;
        r13.yz = r13.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r9.xy = -sunConstants.splitPinTransform[r8.w].xy + r9.xy;
        r9.xy = sunConstants.splitPinTransform[r8.w].zz * r9.xy;
        r9.xy = r9.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r15.y = r13.x;
        r15.z = r3.x;
        r13.w = 0;
        r15.w = 0;
        while (true) {
          r16.x = cmp((uint)r15.w >= 8);
          if (r16.x != 0) break;
          r16.x = cmp((uint)r12.w < (uint)r15.w);
          r16.yz = r16.xx ? r9.xy : r13.yz;
          r16.w = r16.x ? sunConstants.splitPinTransform[r8.w].w : sunConstants.splitPinTransform[r9.w].w;
          r16.x = r16.x ? r8.w : r9.w;
          r17.x = dot(icb[r15.w+0].yx, r15.xy);
          r17.y = dot(icb[r15.w+0].yx, r15.yz);
          r17.xy = r17.xy * r16.ww + r16.yz;
          r16.x = (int)r16.x + (int16)sunConstants.splitArrayOffset;
          r17.z = (uint)r16.x;
          r16.x = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r6.w).x;
          r16.y = gTransShadowmapArray.SampleLevel(samp0_s, r17.xyz, 0).x;
          r16.x = r16.x + r16.y;
          r16.x = saturate(-1 + r16.x);
          r13.w = r16.x * 0.125 + r13.w;
          r15.w = (int)r15.w + 1;
        }
        r6.w = r13.w * r13.w;
        r7.w = r6.w * r13.w;
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
  r13.yz = (uint2)r0.yx >> int2(24,24);
  if (10 == 0) r0.x = 0; else if (10+12 < 32) {   r0.x = (uint)r0.y << (32-(10 + 12)); r0.x = (uint)r0.x >> (32-10);  } else r0.x = (uint)r0.y >> 12;
  r15.yz = float2(0,1);
  r16.xy = float2(0,0);
  r17.x = 1;
  r18.xy = float2(0,0);
  r19.xy = float2(0,0);
  r20.xyzw = float4(0,0,0,0);
  r21.yzw = float3(0,0,0);
  r0.y = 0;
  while (true) {
    r12.w = cmp((int)r0.y == 2);
    if (r12.w != 0) break;
    r12.w = r0.y ? r0.x : r13.y;
    r13.w = cmp((uint)r12.w >= (uint)r9.w);
    r15.w = cmp((uint)r12.w < numRefProbes);
    r13.w = r13.w ? r15.w : 0;
    if (r13.w != 0) {
      r12.w = (int)r12.w * 14;
      r22.xyz = -refProbeConstantsCB[r12.w].data[0].xyz + r10.xyz;
      r13.w = 0x0000ffff & (int)refProbeConstantsCB[r12.w].data[7].z;
      if (6 == 0) r15.w = 0; else if (6+25 < 32) {       r15.w = (uint)refProbeConstantsCB[r12.w].data[7].z << (32-(6 + 25)); r15.w = (uint)r15.w >> (32-6);      } else r15.w = (uint)refProbeConstantsCB[r12.w].data[7].z >> 25;
      r16.w = (int)r13.w * 6;
      r17.z = dot(refProbeAttenuationConstantsCB[r16.w].data[0].xyz, r22.xyz);
      r17.z = saturate(refProbeAttenuationConstantsCB[r16.w].data[0].w + r17.z);
      r17.w = dot(refProbeAttenuationConstantsCB[r16.w].data[1].xyz, r22.xyz);
      r17.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[1].w + r17.w);
      r17.z = r17.z * r17.w;
      r17.w = dot(refProbeAttenuationConstantsCB[r16.w].data[2].xyz, r22.xyz);
      r17.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[2].w + r17.w);
      r17.z = r17.z * r17.w;
      r17.w = dot(refProbeAttenuationConstantsCB[r16.w].data[3].xyz, r22.xyz);
      r17.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[3].w + r17.w);
      r17.z = r17.z * r17.w;
      r17.w = dot(refProbeAttenuationConstantsCB[r16.w].data[4].xyz, r22.xyz);
      r17.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[4].w + r17.w);
      r17.z = r17.z * r17.w;
      r17.w = dot(refProbeAttenuationConstantsCB[r16.w].data[5].xyz, r22.xyz);
      r16.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[5].w + r17.w);
      r15.x = r17.z * r16.w;
      r16.w = 1 & (int)refProbeConstantsCB[r12.w].data[6].x;
      r17.zw = r16.ww ? r15.xy : r15.zx;
      r15.x = refProbeConstantsCB[r12.w].data[6].x;
      r23.xy = r17.zw;
      r16.w = 1;
      while (true) {
        r18.w = cmp((int)r16.w >= (int)r15.w);
        if (r18.w != 0) break;
        r18.w = (int)r13.w + (int)r16.w;
        r18.w = (int)r18.w * 6;
        r19.w = dot(refProbeAttenuationConstantsCB[r18.w].data[0].xyz, r22.xyz);
        r19.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[0].w + r19.w);
        r19.w = r23.x * r19.w;
        r22.w = dot(refProbeAttenuationConstantsCB[r18.w].data[1].xyz, r22.xyz);
        r22.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[1].w + r22.w);
        r19.w = r22.w * r19.w;
        r22.w = dot(refProbeAttenuationConstantsCB[r18.w].data[2].xyz, r22.xyz);
        r22.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[2].w + r22.w);
        r19.w = r22.w * r19.w;
        r22.w = dot(refProbeAttenuationConstantsCB[r18.w].data[3].xyz, r22.xyz);
        r22.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[3].w + r22.w);
        r19.w = r22.w * r19.w;
        r22.w = dot(refProbeAttenuationConstantsCB[r18.w].data[4].xyz, r22.xyz);
        r22.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[4].w + r22.w);
        r19.w = r22.w * r19.w;
        r22.w = dot(refProbeAttenuationConstantsCB[r18.w].data[5].xyz, r22.xyz);
        r18.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[5].w + r22.w);
        r23.x = r19.w * r18.w;
        r22.w = (uint)r15.x >> 2;
        if (1 == 0) r23.z = 0; else if (1+2 < 32) {         r23.z = (uint)r15.x << (32-(1 + 2)); r23.z = (uint)r23.z >> (32-1);        } else r23.z = (uint)r15.x >> 2;
        r23.w = (int)r22.w & 2;
        r24.x = max(r23.y, r23.x);
        r18.w = -r19.w * r18.w + 1;
        r18.w = r23.y * r18.w;
        r17.y = r23.w ? r18.w : r24.x;
        r23.xy = r23.zz ? r23.xy : r17.xy;
        r16.w = (int)r16.w + 1;
        r15.x = r22.w;
      }
      r23.y = saturate(r23.y);
      r13.w = refProbeConstantsCB[r12.w].data[6].y * r23.y;
      r15.x = cmp(0 < r13.w);
      if (r15.x != 0) {
        r21.w = r23.y * refProbeConstantsCB[r12.w].data[6].y + r21.w;
        r13.w = refProbeConstantsCB[r12.w].data[7].y * r13.w;
        r24.x = refProbeConstantsCB[r12.w].data[7].w;
        r24.yz = refProbeConstantsCB[r12.w].data[8].xy;
        r15.x = dot(r14.xyz, r24.xyz);
        r15.w = dot(r22.xyz, r24.xyz);
        r15.w = -refProbeConstantsCB[r12.w].data[8].z + r15.w;
        r16.w = cmp(r15.w >= 0);
        r15.w = max(abs(r15.w), r9.x);
        r15.w = r16.w ? r15.w : -r15.w;
        r15.x = max(1.00000001e-07, -r15.x);
        r15.x = r15.w / r15.x;
        r15.x = min(131072, abs(r15.x));
        r24.x = refProbeConstantsCB[r12.w].data[8].w;
        r24.yz = refProbeConstantsCB[r12.w].data[9].xy;
        r15.w = dot(r14.xyz, r24.xyz);
        r16.w = dot(r22.xyz, r24.xyz);
        r16.w = -refProbeConstantsCB[r12.w].data[9].z + r16.w;
        r17.y = cmp(r16.w >= 0);
        r16.w = max(abs(r16.w), r9.x);
        r16.w = r17.y ? r16.w : -r16.w;
        r15.w = max(1.00000001e-07, -r15.w);
        r15.w = r16.w / r15.w;
        r15.x = min(r15.x, abs(r15.w));
        r24.x = refProbeConstantsCB[r12.w].data[9].w;
        r24.yz = refProbeConstantsCB[r12.w].data[10].xy;
        r15.w = dot(r14.xyz, r24.xyz);
        r16.w = dot(r22.xyz, r24.xyz);
        r16.w = -refProbeConstantsCB[r12.w].data[10].z + r16.w;
        r17.y = cmp(r16.w >= 0);
        r16.w = max(abs(r16.w), r9.x);
        r16.w = r17.y ? r16.w : -r16.w;
        r15.w = max(1.00000001e-07, -r15.w);
        r15.w = r16.w / r15.w;
        r15.x = min(r15.x, abs(r15.w));
        r24.x = refProbeConstantsCB[r12.w].data[10].w;
        r24.yz = refProbeConstantsCB[r12.w].data[11].xy;
        r15.w = dot(r14.xyz, r24.xyz);
        r16.w = dot(r22.xyz, r24.xyz);
        r16.w = -refProbeConstantsCB[r12.w].data[11].z + r16.w;
        r17.y = cmp(r16.w >= 0);
        r16.w = max(abs(r16.w), r9.x);
        r16.w = r17.y ? r16.w : -r16.w;
        r15.w = max(1.00000001e-07, -r15.w);
        r15.w = r16.w / r15.w;
        r15.x = min(r15.x, abs(r15.w));
        r24.x = refProbeConstantsCB[r12.w].data[11].w;
        r24.yz = refProbeConstantsCB[r12.w].data[12].xy;
        r15.w = dot(r14.xyz, r24.xyz);
        r16.w = dot(r22.xyz, r24.xyz);
        r16.w = -refProbeConstantsCB[r12.w].data[12].z + r16.w;
        r17.y = cmp(r16.w >= 0);
        r16.w = max(abs(r16.w), r9.x);
        r16.w = r17.y ? r16.w : -r16.w;
        r15.w = max(1.00000001e-07, -r15.w);
        r15.w = r16.w / r15.w;
        r15.x = min(r15.x, abs(r15.w));
        r24.x = refProbeConstantsCB[r12.w].data[12].w;
        r24.yz = refProbeConstantsCB[r12.w].data[13].xy;
        r15.w = dot(r14.xyz, r24.xyz);
        r16.w = dot(r22.xyz, r24.xyz);
        r16.w = -refProbeConstantsCB[r12.w].data[13].z + r16.w;
        r17.y = cmp(r16.w >= 0);
        r16.w = max(abs(r16.w), r9.x);
        r16.w = r17.y ? r16.w : -r16.w;
        r15.w = max(1.00000001e-07, -r15.w);
        r15.w = r16.w / r15.w;
        r15.x = min(r15.x, abs(r15.w));
        r24.x = refProbeConstantsCB[r12.w].data[3].w + r22.x;
        r24.yz = refProbeConstantsCB[r12.w].data[4].xy + r22.yz;
        r17.yzw = r14.xyz * r15.xxx + r24.xyz;
        r15.w = dot(r17.yzw, r17.yzw);
        r15.w = sqrt(r15.w);
        r15.x = r15.x / r15.w;
        r15.x = r15.x + r15.x;
        r15.x = sqrt(r15.x);
        r15.x = r6.w * 5 + r15.x;
        r15.x = -0.844799995 + r15.x;
        r24.x = refProbeConstantsCB[r12.w].data[0].w;
        r24.y = refProbeConstantsCB[r12.w].data[1].z;
        r24.z = refProbeConstantsCB[r12.w].data[2].y;
        r25.x = dot(r17.yzw, r24.xyz);
        r26.xy = refProbeConstantsCB[r12.w].data[1].xw;
        r26.z = refProbeConstantsCB[r12.w].data[2].z;
        r25.y = dot(r17.yzw, r26.xyz);
        r27.x = refProbeConstantsCB[r12.w].data[1].y;
        r27.yz = refProbeConstantsCB[r12.w].data[2].xw;
        r25.z = dot(r17.yzw, r27.xyz);
        if (9 == 0) r15.w = 0; else if (9+16 < 32) {         r15.w = (uint)refProbeConstantsCB[r12.w].data[7].z << (32-(9 + 16)); r15.w = (uint)r15.w >> (32-9);        } else r15.w = (uint)refProbeConstantsCB[r12.w].data[7].z >> 16;
        r25.w = (uint)r15.w;
        r17.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r25.xyzw, r15.x).xyz;
        r28.x = dot(r22.xyz, r24.xyz);
        r28.y = dot(r22.xyz, r26.xyz);
        r28.z = dot(r22.xyz, r27.xyz);
        r22.xyz = saturate(r28.xyz * refProbeConstantsCB[r12.w].data[3].xyz + float3(0.5,0.5,0.5));
        r28.xy = refProbeConstantsCB[r12.w].data[4].zw * r22.xy;
        r28.z = refProbeConstantsCB[r12.w].data[5].x * r22.z;
        r22.xyz = refProbeConstantsCB[r12.w].data[5].yzw + r28.xyz;
        r25.x = dot(r11.xyz, r24.xyz);
        r25.y = dot(r11.xyz, r26.xyz);
        r25.z = dot(r11.xyz, r27.xyz);
        r23.xzw = cmp(float3(0,0,0) < r25.xyz);
        r16.z = r23.x ? 0 : 0.5;
        r24.xyz = r22.xyz + r16.xyz;
        r24.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r24.xyz, 0).xyz;
        r26.xyz = r25.xyz * r25.xyz;
        r26.xyz = r26.xyz * r13.www;
        r18.z = r23.z ? 0 : 0.5;
        r27.xyz = r22.xyz + r18.xyz;
        r27.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r27.xyz, 0).xyz;
        r27.xyz = r27.xyz * r26.yyy;
        r24.xyz = r24.xyz * r26.xxx + r27.xyz;
        r19.z = r23.w ? 0 : 0.5;
        r22.xyz = r22.xyz + r19.xyz;
        r22.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r22.xyz, 0).xyz;
        r22.xyz = r22.xyz * r26.zzz + r24.xyz;
        r23.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r25.xyzw, 6).xyz;
        r24.xyz = r23.xzw * r22.xyz;
        r12.w = dot(r24.xyz, float3(0.212599993,0.715200007,0.0722000003));
        r20.xyz = r22.xyz * r23.xzw + r20.xyz;
        r15.x = r12.w * r9.y;
        r17.yzw = r17.yzw * r13.www;
        r13.w = dot(r17.yzw, float3(0.212599993,0.715200007,0.0722000003));
        r12.w = r9.y * r12.w + r13.w;
        r12.w = r15.x / r12.w;
        r22.x = r20.w;
        r22.yz = r21.yz;
        r21.xyz = r17.yzw * r12.www + r22.xyz;
        r20.w = r21.x;
      }
    }
    r0.y = (int)r0.y + 1;
  }
  r0.y = cmp(r21.w < 1);
  if (r0.y != 0) {
    r15.yz = float2(0,1);
    r16.xy = float2(0,0);
    r17.x = 1;
    r18.xy = float2(0,0);
    r19.xy = float2(0,0);
    r22.x = r20.w;
    r22.yzw = r21.yzw;
    r23.xyz = r20.xyz;
    r0.y = 0;
    while (true) {
      r12.w = cmp((int)r0.y == 2);
      if (r12.w != 0) break;
      r12.w = r0.y ? r0.x : r13.y;
      r13.w = cmp((uint)r12.w < (uint)r9.w);
      if (r13.w != 0) {
        r12.w = (int)r12.w * 14;
        r24.xyz = -refProbeConstantsCB[r12.w].data[0].xyz + r10.xyz;
        r13.w = 0x0000ffff & (int)refProbeConstantsCB[r12.w].data[7].z;
        if (6 == 0) r15.w = 0; else if (6+25 < 32) {         r15.w = (uint)refProbeConstantsCB[r12.w].data[7].z << (32-(6 + 25)); r15.w = (uint)r15.w >> (32-6);        } else r15.w = (uint)refProbeConstantsCB[r12.w].data[7].z >> 25;
        r16.w = (int)r13.w * 6;
        r17.z = dot(refProbeAttenuationConstantsCB[r16.w].data[0].xyz, r24.xyz);
        r17.z = saturate(refProbeAttenuationConstantsCB[r16.w].data[0].w + r17.z);
        r17.w = dot(refProbeAttenuationConstantsCB[r16.w].data[1].xyz, r24.xyz);
        r17.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[1].w + r17.w);
        r17.z = r17.z * r17.w;
        r17.w = dot(refProbeAttenuationConstantsCB[r16.w].data[2].xyz, r24.xyz);
        r17.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[2].w + r17.w);
        r17.z = r17.z * r17.w;
        r17.w = dot(refProbeAttenuationConstantsCB[r16.w].data[3].xyz, r24.xyz);
        r17.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[3].w + r17.w);
        r17.z = r17.z * r17.w;
        r17.w = dot(refProbeAttenuationConstantsCB[r16.w].data[4].xyz, r24.xyz);
        r17.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[4].w + r17.w);
        r17.z = r17.z * r17.w;
        r17.w = dot(refProbeAttenuationConstantsCB[r16.w].data[5].xyz, r24.xyz);
        r16.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[5].w + r17.w);
        r15.x = r17.z * r16.w;
        r16.w = 1 & (int)refProbeConstantsCB[r12.w].data[6].x;
        r17.zw = r16.ww ? r15.xy : r15.zx;
        r15.x = refProbeConstantsCB[r12.w].data[6].x;
        r25.xy = r17.zw;
        r16.w = 1;
        while (true) {
          r18.w = cmp((int)r16.w >= (int)r15.w);
          if (r18.w != 0) break;
          r18.w = (int)r13.w + (int)r16.w;
          r18.w = (int)r18.w * 6;
          r19.w = dot(refProbeAttenuationConstantsCB[r18.w].data[0].xyz, r24.xyz);
          r19.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[0].w + r19.w);
          r19.w = r25.x * r19.w;
          r23.w = dot(refProbeAttenuationConstantsCB[r18.w].data[1].xyz, r24.xyz);
          r23.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[1].w + r23.w);
          r19.w = r23.w * r19.w;
          r23.w = dot(refProbeAttenuationConstantsCB[r18.w].data[2].xyz, r24.xyz);
          r23.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[2].w + r23.w);
          r19.w = r23.w * r19.w;
          r23.w = dot(refProbeAttenuationConstantsCB[r18.w].data[3].xyz, r24.xyz);
          r23.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[3].w + r23.w);
          r19.w = r23.w * r19.w;
          r23.w = dot(refProbeAttenuationConstantsCB[r18.w].data[4].xyz, r24.xyz);
          r23.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[4].w + r23.w);
          r19.w = r23.w * r19.w;
          r23.w = dot(refProbeAttenuationConstantsCB[r18.w].data[5].xyz, r24.xyz);
          r18.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[5].w + r23.w);
          r25.x = r19.w * r18.w;
          r23.w = (uint)r15.x >> 2;
          if (1 == 0) r24.w = 0; else if (1+2 < 32) {           r24.w = (uint)r15.x << (32-(1 + 2)); r24.w = (uint)r24.w >> (32-1);          } else r24.w = (uint)r15.x >> 2;
          r25.z = (int)r23.w & 2;
          r25.w = max(r25.y, r25.x);
          r18.w = -r19.w * r18.w + 1;
          r18.w = r25.y * r18.w;
          r17.y = r25.z ? r18.w : r25.w;
          r25.xy = r24.ww ? r25.xy : r17.xy;
          r16.w = (int)r16.w + 1;
          r15.x = r23.w;
        }
        r13.w = saturate(r25.y + -r21.w);
        r15.x = refProbeConstantsCB[r12.w].data[6].y * r13.w;
        r15.w = cmp(0 < r15.x);
        if (r15.w != 0) {
          r22.w = r13.w * refProbeConstantsCB[r12.w].data[6].y + r22.w;
          r13.w = refProbeConstantsCB[r12.w].data[7].y * r15.x;
          r26.x = refProbeConstantsCB[r12.w].data[7].w;
          r26.yz = refProbeConstantsCB[r12.w].data[8].xy;
          r15.x = dot(r14.xyz, r26.xyz);
          r15.w = dot(r24.xyz, r26.xyz);
          r15.w = -refProbeConstantsCB[r12.w].data[8].z + r15.w;
          r16.w = cmp(r15.w >= 0);
          r15.w = max(abs(r15.w), r9.x);
          r15.w = r16.w ? r15.w : -r15.w;
          r15.x = max(1.00000001e-07, -r15.x);
          r15.x = r15.w / r15.x;
          r15.x = min(131072, abs(r15.x));
          r26.x = refProbeConstantsCB[r12.w].data[8].w;
          r26.yz = refProbeConstantsCB[r12.w].data[9].xy;
          r15.w = dot(r14.xyz, r26.xyz);
          r16.w = dot(r24.xyz, r26.xyz);
          r16.w = -refProbeConstantsCB[r12.w].data[9].z + r16.w;
          r17.y = cmp(r16.w >= 0);
          r16.w = max(abs(r16.w), r9.x);
          r16.w = r17.y ? r16.w : -r16.w;
          r15.w = max(1.00000001e-07, -r15.w);
          r15.w = r16.w / r15.w;
          r15.x = min(r15.x, abs(r15.w));
          r26.x = refProbeConstantsCB[r12.w].data[9].w;
          r26.yz = refProbeConstantsCB[r12.w].data[10].xy;
          r15.w = dot(r14.xyz, r26.xyz);
          r16.w = dot(r24.xyz, r26.xyz);
          r16.w = -refProbeConstantsCB[r12.w].data[10].z + r16.w;
          r17.y = cmp(r16.w >= 0);
          r16.w = max(abs(r16.w), r9.x);
          r16.w = r17.y ? r16.w : -r16.w;
          r15.w = max(1.00000001e-07, -r15.w);
          r15.w = r16.w / r15.w;
          r15.x = min(r15.x, abs(r15.w));
          r26.x = refProbeConstantsCB[r12.w].data[10].w;
          r26.yz = refProbeConstantsCB[r12.w].data[11].xy;
          r15.w = dot(r14.xyz, r26.xyz);
          r16.w = dot(r24.xyz, r26.xyz);
          r16.w = -refProbeConstantsCB[r12.w].data[11].z + r16.w;
          r17.y = cmp(r16.w >= 0);
          r16.w = max(abs(r16.w), r9.x);
          r16.w = r17.y ? r16.w : -r16.w;
          r15.w = max(1.00000001e-07, -r15.w);
          r15.w = r16.w / r15.w;
          r15.x = min(r15.x, abs(r15.w));
          r26.x = refProbeConstantsCB[r12.w].data[11].w;
          r26.yz = refProbeConstantsCB[r12.w].data[12].xy;
          r15.w = dot(r14.xyz, r26.xyz);
          r16.w = dot(r24.xyz, r26.xyz);
          r16.w = -refProbeConstantsCB[r12.w].data[12].z + r16.w;
          r17.y = cmp(r16.w >= 0);
          r16.w = max(abs(r16.w), r9.x);
          r16.w = r17.y ? r16.w : -r16.w;
          r15.w = max(1.00000001e-07, -r15.w);
          r15.w = r16.w / r15.w;
          r15.x = min(r15.x, abs(r15.w));
          r26.x = refProbeConstantsCB[r12.w].data[12].w;
          r26.yz = refProbeConstantsCB[r12.w].data[13].xy;
          r15.w = dot(r14.xyz, r26.xyz);
          r16.w = dot(r24.xyz, r26.xyz);
          r16.w = -refProbeConstantsCB[r12.w].data[13].z + r16.w;
          r17.y = cmp(r16.w >= 0);
          r16.w = max(abs(r16.w), r9.x);
          r16.w = r17.y ? r16.w : -r16.w;
          r15.w = max(1.00000001e-07, -r15.w);
          r15.w = r16.w / r15.w;
          r15.x = min(r15.x, abs(r15.w));
          r26.x = refProbeConstantsCB[r12.w].data[3].w + r24.x;
          r26.yz = refProbeConstantsCB[r12.w].data[4].xy + r24.yz;
          r17.yzw = r14.xyz * r15.xxx + r26.xyz;
          r15.w = dot(r17.yzw, r17.yzw);
          r15.w = sqrt(r15.w);
          r15.x = r15.x / r15.w;
          r15.x = r15.x + r15.x;
          r15.x = sqrt(r15.x);
          r15.x = r6.w * 5 + r15.x;
          r15.x = -0.844799995 + r15.x;
          r26.x = refProbeConstantsCB[r12.w].data[0].w;
          r26.y = refProbeConstantsCB[r12.w].data[1].z;
          r26.z = refProbeConstantsCB[r12.w].data[2].y;
          r27.x = dot(r17.yzw, r26.xyz);
          r28.xy = refProbeConstantsCB[r12.w].data[1].xw;
          r28.z = refProbeConstantsCB[r12.w].data[2].z;
          r27.y = dot(r17.yzw, r28.xyz);
          r29.x = refProbeConstantsCB[r12.w].data[1].y;
          r29.yz = refProbeConstantsCB[r12.w].data[2].xw;
          r27.z = dot(r17.yzw, r29.xyz);
          if (9 == 0) r15.w = 0; else if (9+16 < 32) {           r15.w = (uint)refProbeConstantsCB[r12.w].data[7].z << (32-(9 + 16)); r15.w = (uint)r15.w >> (32-9);          } else r15.w = (uint)refProbeConstantsCB[r12.w].data[7].z >> 16;
          r27.w = (uint)r15.w;
          r17.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r27.xyzw, r15.x).xyz;
          r30.x = dot(r24.xyz, r26.xyz);
          r30.y = dot(r24.xyz, r28.xyz);
          r30.z = dot(r24.xyz, r29.xyz);
          r24.xyz = saturate(r30.xyz * refProbeConstantsCB[r12.w].data[3].xyz + float3(0.5,0.5,0.5));
          r30.xy = refProbeConstantsCB[r12.w].data[4].zw * r24.xy;
          r30.z = refProbeConstantsCB[r12.w].data[5].x * r24.z;
          r24.xyz = refProbeConstantsCB[r12.w].data[5].yzw + r30.xyz;
          r27.x = dot(r11.xyz, r26.xyz);
          r27.y = dot(r11.xyz, r28.xyz);
          r27.z = dot(r11.xyz, r29.xyz);
          r25.xzw = cmp(float3(0,0,0) < r27.xyz);
          r16.z = r25.x ? 0 : 0.5;
          r26.xyz = r24.xyz + r16.xyz;
          r26.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
          r28.xyz = r27.xyz * r27.xyz;
          r28.xyz = r28.xyz * r13.www;
          r18.z = r25.z ? 0 : 0.5;
          r29.xyz = r24.xyz + r18.xyz;
          r29.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r29.xyz, 0).xyz;
          r29.xyz = r29.xyz * r28.yyy;
          r26.xyz = r26.xyz * r28.xxx + r29.xyz;
          r19.z = r25.w ? 0 : 0.5;
          r24.xyz = r24.xyz + r19.xyz;
          r24.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r24.xyz, 0).xyz;
          r24.xyz = r24.xyz * r28.zzz + r26.xyz;
          r25.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r27.xyzw, 6).xyz;
          r26.xyz = r25.xzw * r24.xyz;
          r12.w = dot(r26.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r23.xyz = r24.xyz * r25.xzw + r23.xyz;
          r15.x = r12.w * r9.y;
          r17.yzw = r17.yzw * r13.www;
          r13.w = dot(r17.yzw, float3(0.212599993,0.715200007,0.0722000003));
          r12.w = r9.y * r12.w + r13.w;
          r12.w = r15.x / r12.w;
          r22.xyz = r17.yzw * r12.www + r22.xyz;
        }
      }
      r0.y = (int)r0.y + 1;
    }
    r21.xyzw = r22.zxyw;
    r20.xyz = r23.xyz;
    r21.xyzw = r21.yzxw;
  } else {
    r21.x = r20.w;
  }
  r0.x = max(1, r21.w);
  r0.x = rcp(r0.x);
  r21.w = saturate(r21.w);
  r9.xyw = r20.xyz * r0.xxx;
  r15.xyz = r21.xyz * r0.xxx;
  r0.y = cmp(r21.w < 0.99000001);
  if (r0.y != 0) {
    r0.y = 1 + -r21.w;
    r6.w = sunConstants.globalProbeExposure * r0.y;
    r16.xyz = -globalProbeConstants.data[0].xyz + r10.xyz;
    r17.x = globalProbeConstants.data[0].w * r16.x;
    r17.yz = globalProbeConstants.data[1].xy * r16.yz;
    r16.xyz = saturate(float3(0.5,0.5,0.5) + r17.xyz);
    r17.xy = globalProbeConstants.data[1].zw * r16.xy;
    r17.z = globalProbeConstants.data[2].x * r16.z;
    r16.xyz = globalProbeConstants.data[2].yzw + r17.xyz;
    r17.xyz = cmp(float3(0,0,0) < r11.xyz);
    r17.xyz = r17.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r17.w = 0;
    r18.xyz = r17.wwx + r16.xyz;
    r18.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r18.xyz, 0).xyz;
    r19.xyz = r11.xyz * r11.xyz;
    r19.xyz = r19.xyz * r6.www;
    r21.xyz = r17.wwy + r16.xyz;
    r21.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r21.xyz, 0).xyz;
    r21.xyz = r21.xyz * r19.yyy;
    r18.xyz = r18.xyz * r19.xxx + r21.xyz;
    r16.xyz = r17.wwz + r16.xyz;
    r16.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r16.xyz, 0).xyz;
    r16.xyz = r16.xyz * r19.zzz + r18.xyz;
    r11.w = 0;
    r17.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, 6).xyz;
    r16.xyz = r17.xyz * r16.xyz;
    r6.w = dot(r16.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r9.xyw = r20.xyz * r0.xxx + r16.xyz;
    r14.w = 0;
    r16.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r14.xyzw, r8.w).xyz;
    r0.x = sunConstants.globalProbeExposure * r0.y + -r6.w;
    r0.x = r2.y * r0.x + r6.w;
    r15.xyz = r16.xyz * r0.xxx + r15.xyz;
  }
  r0.x = r4.z * r1.w + r2.x;
  r0.x = log2(abs(r0.x));
  r0.x = r1.z * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r4.z * r1.w + r0.x;
  r0.x = saturate(-1 + r0.x);
  r16.xyz = r9.xyw * r2.zzz;
  r2.yz = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r2.yz = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r2.yz, 0).xy;
  r9.xyw = r15.xyz * r0.xxx;
  r15.xyz = r9.ywx * r2.yyy;
  r9.xyw = r9.xyw * r2.zzz;
  r0.x = sqrt(r1.z);
  r0.x = r0.x * 0.5 + 0.5;
  r0.x = r0.x * r0.x;
  r0.y = 0.5 * r0.x;
  r0.x = -r0.x * 0.5 + 1;
  r1.w = r2.x * r0.x + r0.y;
  r0.xy = r1.ww * r0.xy;
  r1.w = cmp(0 < r5.w);
  if (r1.w != 0) {
    r1.w = cmp(0 < r7.w);
    if (r1.w != 0) {
      r1.w = sunConstants.specScale * r0.w;
      r1.w = r1.w * r5.w;
      if (sunConstants.sunCookieIndex != 0) {
        r17.xyz = eyeOffset.xyz + r10.xyz;
        r17.w = 1;
        r2.y = dot(sunConstants.sunCookieTransform[0].xyzw, r17.xyzw);
        r2.z = dot(sunConstants.sunCookieTransform[1].xyzw, r17.xyzw);
        r17.xy = frac(r2.yz);
        r2.y = -1 + (int14)sunConstants.sunCookieIndex;
        r17.z = (uint)r2.y;
        r17.xyz = gCookieArray.SampleLevel(samplerLinear_s, r17.xyz, 0).xyz;
        r17.xyz = float3(-1,-1,-1) + r17.xyz;
        r17.xyz = sunConstants.sunCookieIntensity * r17.xyz + float3(1,1,1);
        r17.xyz = sunConstants.color.xyz * r17.xyz;
      } else {
        r17.xyz = sunConstants.color.xyz;
      }
      r2.y = viewmodelSunShadowRaw >> 16;
      r2.z = cmp(0 < (uint)r2.y);
      r2.z = r2.z ? r9.z : 0;
      if (r2.z != 0) {
        r2.y = (int)r2.y + numLights;
        r2.y = mad((int)r2.y, 15, -15);
        r2.z = abs(r2.w) * -0.200000003 + 0.400000006;
        r18.xyz = r11.xyz * r2.zzz + r10.xyz;
        r19.xyz = lightConstantsCB[r2.y].data[4].yzw;
        r19.w = lightConstantsCB[r2.y].data[5].x;
        r18.w = 1;
        r19.x = dot(r19.xyzw, r18.xyzw);
        r20.xyz = lightConstantsCB[r2.y].data[5].yzw;
        r20.w = lightConstantsCB[r2.y].data[6].x;
        r19.y = dot(r20.xyzw, r18.xyzw);
        r13.yw = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r19.x = lightConstantsCB[r2.y].data[9].w + r13.y;
        r19.y = lightConstantsCB[r2.y].data[10].x + r13.w;
        r13.yw = lightConstantsCB[r2.y].data[9].yz * r19.xy;
        r19.xy = lightConstantsCB[r2.y].data[3].yy / lightConstantsCB[r2.y].data[8].yw;
        r19.zw = float2(1,1) + -r19.xy;
        r19.zw = cmp(r13.yw >= r19.zw);
        r19.xy = cmp(r19.xy >= r13.yw);
        r19.xy = (int2)r19.xy | (int2)r19.zw;
        r2.z = (int)r19.y | (int)r19.x;
        if (r2.z == 0) {
          r19.xyz = lightConstantsCB[r2.y].data[6].yzw;
          r19.w = lightConstantsCB[r2.y].data[7].x;
          r2.z = dot(r19.xyzw, r18.xyzw);
          r13.yw = saturate(r13.yw);
          r18.x = r13.y * lightConstantsCB[r2.y].data[8].y + lightConstantsCB[r2.y].data[8].z;
          r18.y = r13.w * lightConstantsCB[r2.y].data[8].w + lightConstantsCB[r2.y].data[9].x;
          r2.z = lightConstantsCB[r2.y].data[10].y + r2.z;
          r2.z = r2.z / lightConstantsCB[r2.y].data[10].z;
          r2.z = max(6.10351563e-05, r2.z);
          r4.z = 0x0000ffff & (int)lightConstantsCB[r2.y].data[1].w;
          if (enableDitheredShadow != 0) {
            r19.x = -r3.x;
            r20.z = (uint)r4.z;
            r19.y = r13.x;
            r19.z = r3.x;
            r6.w = 0;
            r8.w = 0;
            while (true) {
              r11.w = cmp((int)r8.w >= 8);
              if (r11.w != 0) break;
              r21.x = dot(icb[r8.w+0].yx, r19.xy);
              r21.y = dot(icb[r8.w+0].yx, r19.yz);
              r20.xy = r21.xy * lightConstantsCB[r2.y].data[3].yy + r18.xy;
              r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r2.z).x;
              r6.w = r11.w * 0.125 + r6.w;
              r8.w = (int)r8.w + 1;
            }
          } else {
            r18.z = (uint)r4.z;
            r6.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r2.z).x;
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
          r18.xyz = r11.xyz * r2.zzz + r10.xyz;
          r19.xyz = lightConstantsCB[r2.y].data[4].yzw;
          r19.w = lightConstantsCB[r2.y].data[5].x;
          r18.w = 1;
          r19.x = dot(r19.xyzw, r18.xyzw);
          r20.xyz = lightConstantsCB[r2.y].data[5].yzw;
          r20.w = lightConstantsCB[r2.y].data[6].x;
          r19.y = dot(r20.xyzw, r18.xyzw);
          r13.yw = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r19.x = lightConstantsCB[r2.y].data[9].w + r13.y;
          r19.y = lightConstantsCB[r2.y].data[10].x + r13.w;
          r13.yw = lightConstantsCB[r2.y].data[9].yz * r19.xy;
          r19.xy = lightConstantsCB[r2.y].data[3].yy / lightConstantsCB[r2.y].data[8].yw;
          r19.zw = float2(1,1) + -r19.xy;
          r19.zw = cmp(r13.yw >= r19.zw);
          r19.xy = cmp(r19.xy >= r13.yw);
          r19.xy = (int2)r19.xy | (int2)r19.zw;
          r2.z = (int)r19.y | (int)r19.x;
          if (r2.z == 0) {
            r19.xyz = lightConstantsCB[r2.y].data[6].yzw;
            r19.w = lightConstantsCB[r2.y].data[7].x;
            r2.z = dot(r19.xyzw, r18.xyzw);
            r13.yw = saturate(r13.yw);
            r18.x = r13.y * lightConstantsCB[r2.y].data[8].y + lightConstantsCB[r2.y].data[8].z;
            r18.y = r13.w * lightConstantsCB[r2.y].data[8].w + lightConstantsCB[r2.y].data[9].x;
            r2.z = lightConstantsCB[r2.y].data[10].y + r2.z;
            r2.z = r2.z / lightConstantsCB[r2.y].data[10].z;
            r2.z = max(6.10351563e-05, r2.z);
            r4.z = 0x0000ffff & (int)lightConstantsCB[r2.y].data[1].w;
            if (enableDitheredShadow != 0) {
              r19.x = -r3.x;
              r20.z = (uint)r4.z;
              r19.y = r13.x;
              r19.z = r3.x;
              r6.w = 0;
              r8.w = 0;
              while (true) {
                r11.w = cmp((int)r8.w >= 8);
                if (r11.w != 0) break;
                r21.x = dot(icb[r8.w+0].yx, r19.xy);
                r21.y = dot(icb[r8.w+0].yx, r19.yz);
                r20.xy = r21.xy * lightConstantsCB[r2.y].data[3].yy + r18.xy;
                r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r2.z).x;
                r6.w = r11.w * 0.125 + r6.w;
                r8.w = (int)r8.w + 1;
              }
            } else {
              r18.z = (uint)r4.z;
              r6.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r2.z).x;
            }
            r2.y = r6.w * r6.w;
            r2.y = r2.y * r6.w;
          } else {
            r2.y = 1;
          }
          r7.w = r7.w * r2.y;
        }
      }
      r2.y = -r2.x * 0.5 + 1;
      r2.y = -r5.w * r2.y + 1;
      r2.y = r2.y * r2.y;
      r2.y = -r2.y * 0.620000005 + 0.620000005;
      r2.y = r2.y + -r5.w;
      r2.y = r1.z * r2.y + r5.w;
      r2.y = r2.y * r7.w;
      r2.z = cmp(0 < r2.w);
      r18.xyz = r2.yyy * r17.xyz + r16.xyz;
      r19.xyz = -r10.xyz * r0.zzz + sunConstants.wldDir.xyz;
      r0.z = dot(r19.xyz, r19.xyz);
      r0.z = rsqrt(r0.z);
      r19.xyz = r19.xyz * r0.zzz;
      r0.z = dot(r19.xyz, r12.xyz);
      r2.y = dot(r11.xyz, r19.xyz);
      r2.w = abs(r2.y) * r0.w + -abs(r2.y);
      r2.y = abs(r2.y) * r2.w + 1;
      r2.w = r5.w * r0.x + r0.y;
      r2.y = r2.y * r2.y;
      r2.y = r2.y * r2.w;
      r2.y = rcp(r2.y);
      r1.w = r2.y * r1.w;
      r1.w = r7.w * r1.w;
      r1.w = 0.25 * r1.w;
      r19.xyz = r1.www * r17.xyz + r9.xyw;
      r0.z = saturate(1 + -r0.z);
      r2.y = r0.z * r0.z;
      r2.y = r2.y * r2.y;
      r0.z = r2.y * r0.z;
      r0.z = r1.w * r0.z;
      r17.xyz = r0.zzz * r17.yzx + r15.xyz;
      r18.w = r17.z;
      r16.w = r15.z;
      r16.xyzw = r2.zzzz ? r18.xyzw : r16.xyzw;
      r17.zw = r19.xy;
      r15.zw = r9.xy;
      r17.xyzw = r2.zzzz ? r17.xyzw : r15.xyzw;
      r9.w = r2.z ? r19.z : r9.w;
      r15.z = r16.w;
      r15.xy = r17.xy;
      r9.xy = r17.zw;
    }
  }
  r0.z = (int)r13.z * 15;
  if (3 == 0) r1.w = 0; else if (3+24 < 32) {   r1.w = (uint)lightConstantsCB[r0.z].data[1].w << (32-(3 + 24)); r1.w = (uint)r1.w >> (32-3);  } else r1.w = (uint)lightConstantsCB[r0.z].data[1].w >> 24;
  switch (r1.w) {
    case 4 :    r1.w = cmp(0 < lightConstantsCB[r0.z].data[6].y);
    r17.xy = lightConstantsCB[r0.z].data[5].zw;
    r17.z = lightConstantsCB[r0.z].data[6].x;
    r2.yzw = -r17.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r0.z].data[0].xyz;
    r13.yzw = r2.yzw + -r10.xyz;
    r4.z = dot(r17.xyz, r13.yzw);
    r5.w = saturate(-r4.z / lightConstantsCB[r0.z].data[6].y);
    r18.xyz = r5.www * r17.xyz + r2.yzw;
    r18.xyz = r1.www ? r18.xyz : lightConstantsCB[r0.z].data[0].xyz;
    r18.xyz = r18.xyz + -r10.xyz;
    r6.w = dot(r18.xyz, r18.xyz);
    r7.w = rsqrt(r6.w);
    r18.xyz = r18.xyz * r7.www;
    r7.w = dot(r11.xyz, r18.xyz);
    r8.w = saturate(r7.w);
    r11.w = cmp(0 < r8.w);
    if (r11.w != 0) {
      r11.w = sqrt(r6.w);
      r12.w = lightConstantsCB[r0.z].data[3].x * lightConstantsCB[r0.z].data[3].x;
      r6.w = r12.w / r6.w;
      r6.w = min(1, r6.w);
      r18.xy = saturate(r11.ww * lightConstantsCB[r0.z].data[2].xz + lightConstantsCB[r0.z].data[2].yw);
      r18.zw = r18.xy * r18.xy;
      r18.xy = r18.xy * float2(-2,-2) + float2(3,3);
      r18.xy = r18.zw * r18.xy;
      r6.w = r18.x * r6.w;
      r6.w = r6.w * r18.y;
      r11.w = cmp(0 < r6.w);
      if (r11.w != 0) {
        if (3 == 0) r11.w = 0; else if (3+27 < 32) {         r11.w = (uint)lightConstantsCB[r0.z].data[1].w << (32-(3 + 27)); r11.w = (uint)r11.w >> (32-3);        } else r11.w = (uint)lightConstantsCB[r0.z].data[1].w >> 27;
        r11.w = cmp((int)r11.w != 1);
        if (r11.w != 0) {
          r18.xy = (uint2)r1.yx;
          r11.w = dot(r18.xy, float2(0.0671105608,0.00583714992));
          r11.w = frac(r11.w);
          r11.w = 52.9829178 * r11.w;
          r11.w = frac(r11.w);
          r11.w = r11.w * 6.28318548 + gameTick.w;
          sincos(r11.w, r18.x, r19.x);
          r11.w = abs(r7.w) * -0.200000003 + 0.400000006;
          r18.yzw = r11.xyz * r11.www + r10.xyz;
          r18.yzw = -lightConstantsCB[r0.z].data[4].yzw + r18.yzw;
          r11.w = max(abs(r18.z), abs(r18.w));
          r11.w = max(abs(r18.y), r11.w);
          r11.w = lightConstantsCB[r0.z].data[5].x / r11.w;
          r11.w = lightConstantsCB[r0.z].data[5].y + r11.w;
          r12.w = dot(r18.yzw, r18.yzw);
          r12.w = rsqrt(r12.w);
          r11.w = max(6.10351563e-05, r11.w);
          r14.w = 0x0000ffff & (int)lightConstantsCB[r0.z].data[1].w;
          r20.x = -r3.x;
          r21.w = (uint)r14.w;
          r20.y = r13.x;
          r20.z = r3.x;
          r14.w = 0;
          r15.w = 0;
          while (true) {
            r16.w = cmp((int)r15.w >= 8);
            if (r16.w != 0) break;
            r19.y = dot(icb[r15.w+0].yx, r20.xy);
            r19.z = dot(icb[r15.w+0].yx, r20.yz);
            r22.yz = lightConstantsCB[r0.z].data[3].yy * r19.yz;
            r22.x = r22.y * r19.x;
            r22.w = r22.y * r18.x;
            r21.xyz = r18.yzw * r12.www + r22.xzw;
            r16.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyzw, r11.w).x;
            r14.w = r16.w * 0.125 + r14.w;
            r15.w = (int)r15.w + 1;
          }
        } else {
          r14.w = 1;
        }
        r6.w = r14.w * r6.w;
        r11.w = cmp(0 < r6.w);
        if (r11.w != 0) {
          r11.w = lightConstantsCB[r0.z].data[1].z * r0.w;
          r11.w = 0.25 * r11.w;
          r12.w = dot(r17.xyz, r14.xyz);
          r13.y = dot(r14.xyz, r13.yzw);
          r13.z = -r12.w * r12.w + lightConstantsCB[r0.z].data[6].y;
          r4.z = r12.w * r13.y + -r4.z;
          r4.z = saturate(r4.z / r13.z);
          r12.w = r13.z / lightConstantsCB[r0.z].data[6].y;
          r12.w = 10 * r12.w;
          r12.w = min(1, r12.w);
          r4.z = r4.z + -r5.w;
          r4.z = r12.w * r4.z + r5.w;
          r2.yzw = r4.zzz * r17.xyz + r2.yzw;
          r2.yzw = r1.www ? r2.yzw : lightConstantsCB[r0.z].data[0].xyz;
          r2.yzw = r2.yzw + -r10.xyz;
          r1.w = dot(r2.yzw, r2.yzw);
          r1.w = rsqrt(r1.w);
          r13.yzw = r2.yzw * r1.www;
          if (4 == 0) r4.z = 0; else if (4+16 < 32) {           r4.z = (uint)lightConstantsCB[r0.z].data[1].w << (32-(4 + 16)); r4.z = (uint)r4.z >> (32-4);          } else r4.z = (uint)lightConstantsCB[r0.z].data[1].w >> 16;
          r5.w = cmp(0 < (uint)r4.z);
          r5.w = r5.w ? r9.z : 0;
          if (r5.w != 0) {
            r4.z = (int)r4.z + numLights;
            r4.z = mad((int)r4.z, 15, -15);
            r5.w = abs(r7.w) * -0.200000003 + 0.400000006;
            r14.xyz = r11.xyz * r5.www + r10.xyz;
            r17.xyz = lightConstantsCB[r4.z].data[6].yzw;
            r17.w = lightConstantsCB[r4.z].data[7].x;
            r14.w = 1;
            r5.w = dot(r17.xyzw, r14.xyzw);
            r17.xyz = lightConstantsCB[r4.z].data[7].yzw;
            r17.w = lightConstantsCB[r4.z].data[8].x;
            r12.w = dot(r17.xyzw, r14.xyzw);
            r15.w = cmp(r12.w < r5.w);
            if (r15.w == 0) {
              r17.xyz = lightConstantsCB[r4.z].data[4].yzw;
              r17.w = lightConstantsCB[r4.z].data[5].x;
              r17.x = dot(r17.xyzw, r14.xyzw);
              r18.xyz = lightConstantsCB[r4.z].data[5].yzw;
              r18.w = lightConstantsCB[r4.z].data[6].x;
              r17.y = dot(r18.xyzw, r14.xyzw);
              r14.xy = r17.xy / r12.ww;
              r14.xy = r14.xy * float2(0.5,-0.5) + float2(0.5,0.5);
              r17.x = lightConstantsCB[r4.z].data[9].w + r14.x;
              r17.y = lightConstantsCB[r4.z].data[10].x + r14.y;
              r14.xy = lightConstantsCB[r4.z].data[9].yz * r17.xy;
              r14.zw = lightConstantsCB[r4.z].data[3].yy / lightConstantsCB[r4.z].data[8].yw;
              r17.xy = float2(1,1) + -r14.zw;
              r17.xy = cmp(r14.xy >= r17.xy);
              r14.zw = cmp(r14.zw >= r14.xy);
              r14.zw = (int2)r14.zw | (int2)r17.xy;
              r14.z = (int)r14.w | (int)r14.z;
              if (r14.z == 0) {
                r14.xy = saturate(r14.xy);
                r17.x = r14.x * lightConstantsCB[r4.z].data[8].y + lightConstantsCB[r4.z].data[8].z;
                r17.y = r14.y * lightConstantsCB[r4.z].data[8].w + lightConstantsCB[r4.z].data[9].x;
                r14.x = lightConstantsCB[r4.z].data[10].z * r12.w;
                r5.w = lightConstantsCB[r4.z].data[10].y * r12.w + r5.w;
                r5.w = r5.w / r14.x;
              }
            } else {
              r14.z = -1;
            }
            r12.w = (int)r15.w | (int)r14.z;
            if (r12.w == 0) {
              r5.w = max(6.10351563e-05, r5.w);
              r12.w = 0x0000ffff & (int)lightConstantsCB[r4.z].data[1].w;
              if (enableDitheredShadow != 0) {
                r14.x = -r3.x;
                r18.z = (uint)r12.w;
                r14.y = r13.x;
                r14.z = r3.x;
                r14.w = 0;
                r15.w = 0;
                while (true) {
                  r16.w = cmp((int)r15.w >= 8);
                  if (r16.w != 0) break;
                  r19.x = dot(icb[r15.w+0].yx, r14.xy);
                  r19.y = dot(icb[r15.w+0].yx, r14.yz);
                  r18.xy = r19.xy * lightConstantsCB[r4.z].data[3].yy + r17.xy;
                  r16.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r5.w).x;
                  r14.w = r16.w * 0.125 + r14.w;
                  r15.w = (int)r15.w + 1;
                }
              } else {
                r17.z = (uint)r12.w;
                r14.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r5.w).x;
              }
              r4.z = r14.w * r14.w;
              r4.z = r4.z * r14.w;
            } else {
              r4.z = 1;
            }
            r6.w = r6.w * r4.z;
          } else {
            if (4 == 0) r4.z = 0; else if (4+20 < 32) {             r4.z = (uint)lightConstantsCB[r0.z].data[1].w << (32-(4 + 20)); r4.z = (uint)r4.z >> (32-4);            } else r4.z = (uint)lightConstantsCB[r0.z].data[1].w >> 20;
            r5.w = cmp(0 < (uint)r4.z);
            r12.w = ~(int)r9.z;
            r5.w = r5.w ? r12.w : 0;
            if (r5.w != 0) {
              r4.z = (int)r4.z + numLights;
              r4.z = mad((int)r4.z, 15, -15);
              r5.w = abs(r7.w) * -0.200000003 + 0.400000006;
              r14.xyz = r11.xyz * r5.www + r10.xyz;
              r17.xyz = lightConstantsCB[r4.z].data[6].yzw;
              r17.w = lightConstantsCB[r4.z].data[7].x;
              r14.w = 1;
              r5.w = dot(r17.xyzw, r14.xyzw);
              r17.xyz = lightConstantsCB[r4.z].data[7].yzw;
              r17.w = lightConstantsCB[r4.z].data[8].x;
              r12.w = dot(r17.xyzw, r14.xyzw);
              r15.w = cmp(r12.w < r5.w);
              if (r15.w == 0) {
                r17.xyz = lightConstantsCB[r4.z].data[4].yzw;
                r17.w = lightConstantsCB[r4.z].data[5].x;
                r17.x = dot(r17.xyzw, r14.xyzw);
                r18.xyz = lightConstantsCB[r4.z].data[5].yzw;
                r18.w = lightConstantsCB[r4.z].data[6].x;
                r17.y = dot(r18.xyzw, r14.xyzw);
                r14.xy = r17.xy / r12.ww;
                r14.xy = r14.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r17.x = lightConstantsCB[r4.z].data[9].w + r14.x;
                r17.y = lightConstantsCB[r4.z].data[10].x + r14.y;
                r14.xy = lightConstantsCB[r4.z].data[9].yz * r17.xy;
                r14.zw = lightConstantsCB[r4.z].data[3].yy / lightConstantsCB[r4.z].data[8].yw;
                r17.xy = float2(1,1) + -r14.zw;
                r17.xy = cmp(r14.xy >= r17.xy);
                r14.zw = cmp(r14.zw >= r14.xy);
                r14.zw = (int2)r14.zw | (int2)r17.xy;
                r14.z = (int)r14.w | (int)r14.z;
                if (r14.z == 0) {
                  r14.xy = saturate(r14.xy);
                  r17.x = r14.x * lightConstantsCB[r4.z].data[8].y + lightConstantsCB[r4.z].data[8].z;
                  r17.y = r14.y * lightConstantsCB[r4.z].data[8].w + lightConstantsCB[r4.z].data[9].x;
                  r14.x = lightConstantsCB[r4.z].data[10].z * r12.w;
                  r5.w = lightConstantsCB[r4.z].data[10].y * r12.w + r5.w;
                  r5.w = r5.w / r14.x;
                }
              } else {
                r14.z = -1;
              }
              r12.w = (int)r15.w | (int)r14.z;
              if (r12.w == 0) {
                r5.w = max(6.10351563e-05, r5.w);
                r12.w = 0x0000ffff & (int)lightConstantsCB[r4.z].data[1].w;
                if (enableDitheredShadow != 0) {
                  r14.x = -r3.x;
                  r18.z = (uint)r12.w;
                  r14.y = r13.x;
                  r14.z = r3.x;
                  r14.w = 0;
                  r15.w = 0;
                  while (true) {
                    r16.w = cmp((int)r15.w >= 8);
                    if (r16.w != 0) break;
                    r19.x = dot(icb[r15.w+0].yx, r14.xy);
                    r19.y = dot(icb[r15.w+0].yx, r14.yz);
                    r18.xy = r19.xy * lightConstantsCB[r4.z].data[3].yy + r17.xy;
                    r16.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r5.w).x;
                    r14.w = r16.w * 0.125 + r14.w;
                    r15.w = (int)r15.w + 1;
                  }
                } else {
                  r17.z = (uint)r12.w;
                  r14.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r5.w).x;
                }
                r4.z = r14.w * r14.w;
                r4.z = r4.z * r14.w;
              } else {
                r4.z = 1;
              }
              r6.w = r6.w * r4.z;
            }
          }
          r4.z = -r2.x * 0.5 + 1;
          r4.z = -r8.w * r4.z + 1;
          r4.z = r4.z * r4.z;
          r4.z = -r4.z * 0.620000005 + 0.620000005;
          r4.z = r4.z + -r8.w;
          r4.z = r1.z * r4.z + r8.w;
          r4.z = r4.z * r6.w;
          r14.x = lightConstantsCB[r0.z].data[0].w;
          r14.yz = lightConstantsCB[r0.z].data[1].xy;
          r5.w = cmp(0 < r7.w);
          r17.xyz = r4.zzz * r14.xyz + r16.xyz;
          r4.z = saturate(dot(r11.xyz, r13.yzw));
          r2.yzw = r2.yzw * r1.www + r12.xyz;
          r1.w = dot(r2.yzw, r2.yzw);
          r1.w = rsqrt(r1.w);
          r2.yzw = r2.yzw * r1.www;
          r1.w = dot(r2.yzw, r12.xyz);
          r2.y = dot(r11.xyz, r2.yzw);
          r2.z = abs(r2.y) * r0.w + -abs(r2.y);
          r2.y = abs(r2.y) * r2.z + 1;
          r2.z = r4.z * r0.x + r0.y;
          r2.y = r2.y * r2.y;
          r2.y = r2.y * r2.z;
          r2.y = rcp(r2.y);
          r2.z = r4.z * r11.w;
          r2.y = r2.y * r2.z;
          r2.y = r2.y * r6.w;
          r13.yzw = r2.yyy * r14.xyz + r9.xyw;
          r1.w = saturate(1 + -r1.w);
          r2.z = r1.w * r1.w;
          r2.z = r2.z * r2.z;
          r1.w = r2.z * r1.w;
          r1.w = r2.y * r1.w;
          r2.yzw = r1.www * r14.xyz + r15.zxy;
          r16.xyz = r5.www ? r17.xyz : r16.xyz;
          r15.xyz = r5.www ? r2.zwy : r15.xyz;
          r9.xyw = r5.www ? r13.yzw : r9.xyw;
        }
      }
    }
    break;
    case 2 :    r14.xy = lightConstantsCB[r0.z].data[3].zw + -r10.xy;
    r14.z = lightConstantsCB[r0.z].data[4].x + -r10.z;
    r1.w = dot(r14.xyz, r14.xyz);
    r1.w = rsqrt(r1.w);
    r2.yzw = r14.xyz * r1.www;
    r2.y = dot(r11.xyz, r2.yzw);
    r2.z = saturate(r2.y);
    r2.w = cmp(0 < r2.z);
    if (r2.w != 0) {
      r17.xyz = lightConstantsCB[r0.z].data[7].yzw;
      r17.w = lightConstantsCB[r0.z].data[8].x;
      r10.w = 1;
      r2.w = dot(r17.xyzw, r10.xyzw);
      r4.z = cmp(r2.w < 1);
      if (r4.z != 0) {
        r13.yzw = float3(1,1,1);
        r4.z = 0;
      } else {
        r18.xyz = lightConstantsCB[r0.z].data[0].xyz + -r10.xyz;
        r5.w = lightConstantsCB[r0.z].data[3].x * lightConstantsCB[r0.z].data[3].x;
        r6.w = dot(r18.xyz, r18.xyz);
        r5.w = r5.w / r6.w;
        r5.w = min(1, r5.w);
        r18.xy = saturate(r2.ww * lightConstantsCB[r0.z].data[2].xz + lightConstantsCB[r0.z].data[2].yw);
        r18.zw = r18.xy * r18.xy;
        r18.xy = r18.xy * float2(-2,-2) + float2(3,3);
        r18.xy = r18.zw * r18.xy;
        r5.w = r18.x * r5.w;
        r5.w = r5.w * r18.y;
        r18.xyz = lightConstantsCB[r0.z].data[4].yzw;
        r18.w = lightConstantsCB[r0.z].data[5].x;
        r18.x = dot(r18.xyzw, r10.xyzw);
        r19.xyz = lightConstantsCB[r0.z].data[5].yzw;
        r19.w = lightConstantsCB[r0.z].data[6].x;
        r18.y = dot(r19.xyzw, r10.xyzw);
        r18.xy = r18.xy / r2.ww;
        r2.w = cmp(lightConstantsCB[r0.z].data[10].w < 0.00048828125);
        if (r2.w != 0) {
          r19.xy = saturate(abs(r18.xy) * lightConstantsCB[r0.z].data[12].xy + lightConstantsCB[r0.z].data[12].zw);
          r19.zw = r19.xy * r19.xy;
          r19.xy = r19.xy * float2(-2,-2) + float2(3,3);
          r19.xy = r19.zw * r19.xy;
          r2.w = r19.x * r19.y;
        } else {
          r19.xyzw = saturate(lightConstantsCB[r0.z].data[11].xyzw * abs(r18.yyxx));
          r19.xyzw = log2(r19.xyzw);
          r19.xyzw = lightConstantsCB[r0.z].data[12].zzzz * r19.xyzw;
          r19.xyzw = exp2(r19.xyzw);
          r19.xy = r19.xy + r19.zw;
          r19.xy = log2(r19.xy);
          r19.xy = lightConstantsCB[r0.z].data[12].ww * r19.xy;
          r19.xy = exp2(r19.xy);
          r6.w = lightConstantsCB[r0.z].data[12].x * r19.x;
          r7.w = lightConstantsCB[r0.z].data[12].y * r19.y + -1;
          r6.w = lightConstantsCB[r0.z].data[12].y * r19.y + -r6.w;
          r6.w = saturate(r7.w / r6.w);
          r7.w = r6.w * r6.w;
          r6.w = r6.w * -2 + 3;
          r2.w = r7.w * r6.w;
        }
        r4.z = r5.w * r2.w;
        r2.w = 255 & (int)lightConstantsCB[r0.z].data[14].w;
        if (r2.w != 0) {
          r18.z = 1;
          r5.w = dot(lightConstantsCB[r0.z].data[13].xyz, r18.xyz);
          r19.x = lightConstantsCB[r0.z].data[13].w;
          r19.yz = lightConstantsCB[r0.z].data[14].xy;
          r6.w = dot(r19.xyz, r18.xyz);
          r18.x = frac(r5.w);
          r18.y = frac(r6.w);
          r2.w = (int)r2.w + -1;
          r18.z = (uint)r2.w;
          r13.yzw = gCookieArray.SampleLevel(samplerLinear_s, r18.xyz, 0).xyz;
        } else {
          r13.yzw = float3(1,1,1);
        }
      }
      r18.x = lightConstantsCB[r0.z].data[0].w;
      r18.yz = lightConstantsCB[r0.z].data[1].xy;
      r13.yzw = r18.xyz * r13.yzw;
      r2.w = cmp(0 < r4.z);
      if (r2.w != 0) {
        if (3 == 0) r2.w = 0; else if (3+27 < 32) {         r2.w = (uint)lightConstantsCB[r0.z].data[1].w << (32-(3 + 27)); r2.w = (uint)r2.w >> (32-3);        } else r2.w = (uint)lightConstantsCB[r0.z].data[1].w >> 27;
        r2.w = cmp((int)r2.w != 1);
        if (r2.w != 0) {
          r2.w = abs(r2.y) * -0.200000003 + 0.400000006;
          r18.xyz = r11.xyz * r2.www + r10.xyz;
          r19.xyz = lightConstantsCB[r0.z].data[6].yzw;
          r19.w = lightConstantsCB[r0.z].data[7].x;
          r18.w = 1;
          r2.w = dot(r19.xyzw, r18.xyzw);
          r5.w = dot(r17.xyzw, r18.xyzw);
          r6.w = cmp(r5.w >= r2.w);
          if (r6.w != 0) {
            r17.xyz = lightConstantsCB[r0.z].data[4].yzw;
            r17.w = lightConstantsCB[r0.z].data[5].x;
            r17.x = dot(r17.xyzw, r18.xyzw);
            r19.xyz = lightConstantsCB[r0.z].data[5].yzw;
            r19.w = lightConstantsCB[r0.z].data[6].x;
            r17.y = dot(r19.xyzw, r18.xyzw);
            r17.xy = r17.xy / r5.ww;
            r17.xy = saturate(r17.xy * float2(0.5,-0.5) + float2(0.5,0.5));
            r18.x = r17.x * lightConstantsCB[r0.z].data[8].y + lightConstantsCB[r0.z].data[8].z;
            r18.y = r17.y * lightConstantsCB[r0.z].data[8].w + lightConstantsCB[r0.z].data[9].x;
            r2.w = r2.w / r5.w;
            r2.w = max(6.10351563e-05, r2.w);
            r5.w = 0x0000ffff & (int)lightConstantsCB[r0.z].data[1].w;
            if (enableDitheredShadow != 0) {
              r17.x = -r3.x;
              r19.z = (uint)r5.w;
              r17.y = r13.x;
              r17.z = r3.x;
              r6.w = 0;
              r7.w = 0;
              while (true) {
                r8.w = cmp((int)r7.w >= 8);
                if (r8.w != 0) break;
                r20.x = dot(icb[r7.w+0].yx, r17.xy);
                r20.y = dot(icb[r7.w+0].yx, r17.yz);
                r19.xy = r20.xy * lightConstantsCB[r0.z].data[3].yy + r18.xy;
                r8.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r2.w).x;
                r6.w = r8.w * 0.125 + r6.w;
                r7.w = (int)r7.w + 1;
              }
            } else {
              r18.z = (uint)r5.w;
              r6.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r2.w).x;
            }
            r2.w = r6.w * r6.w;
            r2.w = r2.w * r6.w;
          } else {
            r2.w = 1;
          }
        } else {
          r2.w = 1;
        }
        r2.w = r4.z * r2.w;
        r4.z = cmp(0 < r2.w);
        if (r4.z != 0) {
          r4.z = lightConstantsCB[r0.z].data[1].z * r0.w;
          r4.z = r4.z * r2.z;
          if (4 == 0) r5.w = 0; else if (4+16 < 32) {           r5.w = (uint)lightConstantsCB[r0.z].data[1].w << (32-(4 + 16)); r5.w = (uint)r5.w >> (32-4);          } else r5.w = (uint)lightConstantsCB[r0.z].data[1].w >> 16;
          r6.w = cmp(0 < (uint)r5.w);
          r6.w = r6.w ? r9.z : 0;
          if (r6.w != 0) {
            r5.w = (int)r5.w + numLights;
            r5.w = mad((int)r5.w, 15, -15);
            r6.w = abs(r2.y) * -0.200000003 + 0.400000006;
            r17.xyz = r11.xyz * r6.www + r10.xyz;
            r18.xyz = lightConstantsCB[r5.w].data[6].yzw;
            r18.w = lightConstantsCB[r5.w].data[7].x;
            r17.w = 1;
            r6.w = dot(r18.xyzw, r17.xyzw);
            r18.xyz = lightConstantsCB[r5.w].data[7].yzw;
            r18.w = lightConstantsCB[r5.w].data[8].x;
            r7.w = dot(r18.xyzw, r17.xyzw);
            r8.w = cmp(r7.w < r6.w);
            if (r8.w == 0) {
              r18.xyz = lightConstantsCB[r5.w].data[4].yzw;
              r18.w = lightConstantsCB[r5.w].data[5].x;
              r18.x = dot(r18.xyzw, r17.xyzw);
              r19.xyz = lightConstantsCB[r5.w].data[5].yzw;
              r19.w = lightConstantsCB[r5.w].data[6].x;
              r18.y = dot(r19.xyzw, r17.xyzw);
              r17.xy = r18.xy / r7.ww;
              r17.xy = r17.xy * float2(0.5,-0.5) + float2(0.5,0.5);
              r18.x = lightConstantsCB[r5.w].data[9].w + r17.x;
              r18.y = lightConstantsCB[r5.w].data[10].x + r17.y;
              r17.xy = lightConstantsCB[r5.w].data[9].yz * r18.xy;
              r17.zw = lightConstantsCB[r5.w].data[3].yy / lightConstantsCB[r5.w].data[8].yw;
              r18.xy = float2(1,1) + -r17.zw;
              r18.xy = cmp(r17.xy >= r18.xy);
              r17.zw = cmp(r17.zw >= r17.xy);
              r17.zw = (int2)r17.zw | (int2)r18.xy;
              r10.w = (int)r17.w | (int)r17.z;
              if (r10.w == 0) {
                r17.xy = saturate(r17.xy);
                r18.x = r17.x * lightConstantsCB[r5.w].data[8].y + lightConstantsCB[r5.w].data[8].z;
                r18.y = r17.y * lightConstantsCB[r5.w].data[8].w + lightConstantsCB[r5.w].data[9].x;
                r11.w = lightConstantsCB[r5.w].data[10].z * r7.w;
                r6.w = lightConstantsCB[r5.w].data[10].y * r7.w + r6.w;
                r6.w = r6.w / r11.w;
              }
            } else {
              r10.w = -1;
            }
            r7.w = (int)r8.w | (int)r10.w;
            if (r7.w == 0) {
              r6.w = max(6.10351563e-05, r6.w);
              r7.w = 0x0000ffff & (int)lightConstantsCB[r5.w].data[1].w;
              if (enableDitheredShadow != 0) {
                r17.x = -r3.x;
                r19.z = (uint)r7.w;
                r17.y = r13.x;
                r17.z = r3.x;
                r8.w = 0;
                r10.w = 0;
                while (true) {
                  r11.w = cmp((int)r10.w >= 8);
                  if (r11.w != 0) break;
                  r20.x = dot(icb[r10.w+0].yx, r17.xy);
                  r20.y = dot(icb[r10.w+0].yx, r17.yz);
                  r19.xy = r20.xy * lightConstantsCB[r5.w].data[3].yy + r18.xy;
                  r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r6.w).x;
                  r8.w = r11.w * 0.125 + r8.w;
                  r10.w = (int)r10.w + 1;
                }
              } else {
                r18.z = (uint)r7.w;
                r8.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r6.w).x;
              }
              r5.w = r8.w * r8.w;
              r5.w = r5.w * r8.w;
            } else {
              r5.w = 1;
            }
            r2.w = r5.w * r2.w;
          } else {
            if (4 == 0) r0.z = 0; else if (4+20 < 32) {             r0.z = (uint)lightConstantsCB[r0.z].data[1].w << (32-(4 + 20)); r0.z = (uint)r0.z >> (32-4);            } else r0.z = (uint)lightConstantsCB[r0.z].data[1].w >> 20;
            r5.w = cmp(0 < (uint)r0.z);
            r6.w = ~(int)r9.z;
            r5.w = r5.w ? r6.w : 0;
            if (r5.w != 0) {
              r0.z = (int)r0.z + numLights;
              r0.z = mad((int)r0.z, 15, -15);
              r5.w = abs(r2.y) * -0.200000003 + 0.400000006;
              r17.xyz = r11.xyz * r5.www + r10.xyz;
              r18.xyz = lightConstantsCB[r0.z].data[6].yzw;
              r18.w = lightConstantsCB[r0.z].data[7].x;
              r17.w = 1;
              r5.w = dot(r18.xyzw, r17.xyzw);
              r18.xyz = lightConstantsCB[r0.z].data[7].yzw;
              r18.w = lightConstantsCB[r0.z].data[8].x;
              r6.w = dot(r18.xyzw, r17.xyzw);
              r7.w = cmp(r6.w < r5.w);
              if (r7.w == 0) {
                r18.xyz = lightConstantsCB[r0.z].data[4].yzw;
                r18.w = lightConstantsCB[r0.z].data[5].x;
                r18.x = dot(r18.xyzw, r17.xyzw);
                r19.xyz = lightConstantsCB[r0.z].data[5].yzw;
                r19.w = lightConstantsCB[r0.z].data[6].x;
                r18.y = dot(r19.xyzw, r17.xyzw);
                r17.xy = r18.xy / r6.ww;
                r17.xy = r17.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r18.x = lightConstantsCB[r0.z].data[9].w + r17.x;
                r18.y = lightConstantsCB[r0.z].data[10].x + r17.y;
                r17.xy = lightConstantsCB[r0.z].data[9].yz * r18.xy;
                r17.zw = lightConstantsCB[r0.z].data[3].yy / lightConstantsCB[r0.z].data[8].yw;
                r18.xy = float2(1,1) + -r17.zw;
                r18.xy = cmp(r17.xy >= r18.xy);
                r17.zw = cmp(r17.zw >= r17.xy);
                r17.zw = (int2)r17.zw | (int2)r18.xy;
                r8.w = (int)r17.w | (int)r17.z;
                if (r8.w == 0) {
                  r17.xy = saturate(r17.xy);
                  r18.x = r17.x * lightConstantsCB[r0.z].data[8].y + lightConstantsCB[r0.z].data[8].z;
                  r18.y = r17.y * lightConstantsCB[r0.z].data[8].w + lightConstantsCB[r0.z].data[9].x;
                  r9.z = lightConstantsCB[r0.z].data[10].z * r6.w;
                  r5.w = lightConstantsCB[r0.z].data[10].y * r6.w + r5.w;
                  r5.w = r5.w / r9.z;
                }
              } else {
                r8.w = -1;
              }
              r6.w = (int)r7.w | (int)r8.w;
              if (r6.w == 0) {
                r5.w = max(6.10351563e-05, r5.w);
                r6.w = 0x0000ffff & (int)lightConstantsCB[r0.z].data[1].w;
                if (enableDitheredShadow != 0) {
                  r17.x = -r3.x;
                  r19.z = (uint)r6.w;
                  r17.y = r13.x;
                  r17.z = r3.x;
                  r3.x = 0;
                  r7.w = 0;
                  while (true) {
                    r8.w = cmp((int)r7.w >= 8);
                    if (r8.w != 0) break;
                    r20.x = dot(icb[r7.w+0].yx, r17.xy);
                    r20.y = dot(icb[r7.w+0].yx, r17.yz);
                    r19.xy = r20.xy * lightConstantsCB[r0.z].data[3].yy + r18.xy;
                    r8.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r5.w).x;
                    r3.x = r8.w * 0.125 + r3.x;
                    r7.w = (int)r7.w + 1;
                  }
                } else {
                  r18.z = (uint)r6.w;
                  r3.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r5.w).x;
                }
                r0.z = r3.x * r3.x;
                r0.z = r0.z * r3.x;
              } else {
                r0.z = 1;
              }
              r2.w = r2.w * r0.z;
            }
          }
          r0.z = -r2.x * 0.5 + 1;
          r0.z = -r2.z * r0.z + 1;
          r0.z = r0.z * r0.z;
          r0.z = -r0.z * 0.620000005 + 0.620000005;
          r0.z = r0.z + -r2.z;
          r0.z = r1.z * r0.z + r2.z;
          r0.z = r0.z * r2.w;
          r1.z = cmp(0 < r2.y);
          r17.xyz = r0.zzz * r13.yzw + r16.xyz;
          r14.xyz = r14.xyz * r1.www + r12.xyz;
          r0.z = dot(r14.xyz, r14.xyz);
          r0.z = rsqrt(r0.z);
          r14.xyz = r14.xyz * r0.zzz;
          r0.z = dot(r14.xyz, r12.xyz);
          r1.w = dot(r11.xyz, r14.xyz);
          r0.w = abs(r1.w) * r0.w + -abs(r1.w);
          r0.w = abs(r1.w) * r0.w + 1;
          r0.x = r2.z * r0.x + r0.y;
          r0.y = r0.w * r0.w;
          r0.x = r0.y * r0.x;
          r0.x = rcp(r0.x);
          r0.x = r0.x * r4.z;
          r0.x = r2.w * r0.x;
          r0.x = 0.25 * r0.x;
          r2.xyz = r0.xxx * r13.yzw + r9.xyw;
          r0.y = saturate(1 + -r0.z);
          r0.z = r0.y * r0.y;
          r0.z = r0.z * r0.z;
          r0.y = r0.y * r0.z;
          r0.x = r0.x * r0.y;
          r0.xyz = r0.xxx * r13.yzw + r15.zxy;
          r16.xyz = r1.zzz ? r17.xyz : r16.xyz;
          r15.xyz = r1.zzz ? r0.yzx : r15.xyz;
          r9.xyw = r1.zzz ? r2.xyz : r9.xyw;
        }
      }
    }
    break;
    default :
    break;
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
  r0.xyz = r15.zxy * r0.xyz;
  r0.xyz = r9.xyw * r2.xyz + r0.xyz;
  r0.xyz = r16.xyz * r3.yzw + r0.xyz;
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