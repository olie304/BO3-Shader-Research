// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:23:10 2021

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.x = mad(permuteStride, 7, (int)vThreadGroupID.x);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=8)(mixed,mixed,mixed,mixed) r0.xy, r0.x, l(0), t25.xyxx
r0.x = samp0[]..swiz;
r0.y = samp0[]..swiz;
  r0.yz = (int2)r0.xy & int2(4095,4095);
  r1.xy = mad((int2)r0.yz, int2(8,8), (int2)vThreadIDInGroup.xy);
  r1.zw = float2(0,0);
  r2.xyzw = GBufferNormalAndGloss.Load(r1.xyw).xyzw;
  r0.yz = (uint2)renderTargetSize.xy;
  r0.yz = cmp((uint2)r1.xy < (uint2)r0.yz);
  r0.y = r0.z ? r0.y : 0;
  r0.z = cmp(0 < r2.z);
  r0.y = r0.z ? r0.y : 0;
  if (r0.y == 0) {
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
  r1.zw = (uint2)r1.yx;
  r9.xy = float2(0.5,0.5) + r1.wz;
  r10.x = cmp(r0.w >= 0.984375);
  r3.w = 1.01587307 * r0.w;
  r0.w = r0.w * 64 + -63;
  r0.w = r10.x ? r0.w : r3.w;
  r0.w = max(9.99999994e-09, r0.w);
  r10.y = rcp(r0.w);
  r0.yw = r0.yy ? r10.xy : 0;
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
  r0.w = r2.w * 3 + 0.5;
  r0.w = (uint)r0.w;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r2.xy = float2(0.850000024,0.850000024) * r2.xy;
  r2.w = dot(r2.xy, r2.xy);
  r11.zw = float2(2,1) + -r2.ww;
  r2.w = sqrt(r11.z);
  r11.xy = r2.xy * r2.ww;
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
  r0.w = r0.z ? -0.5 : -0.00146627566;
  r0.w = r2.z + r0.w;
  r2.y = saturate(2.00982332 * r0.w);
  r0.w = dot(-r10.xyz, -r10.xyz);
  r0.w = rsqrt(r0.w);
  r12.xyz = -r10.xyz * r0.www;
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
  r2.x = saturate(dot(r11.xyz, r12.xyz));
  r1.z = dot(-r12.xyz, r11.xyz);
  r1.z = r1.z + r1.z;
  r17.xyz = r11.xyz * -r1.zzz + -r12.xyz;
  r1.z = 17 * r2.y;
  r1.z = exp2(r1.z);
  r1.z = 2 + r1.z;
  r1.z = 2 / r1.z;
  r1.w = sqrt(r1.z);
  r2.zw = renderTargetSize.zw * r9.xy;
  r2.z = gSSAOTexture.SampleLevel(samplerLinearClamp_s, r2.zw, 0).x;
  r2.w = r4.z * r2.z;
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
      r12.w = 0;
      while (true) {
        r13.z = cmp(r9.w >= 3);
        if (r13.z != 0) break;
        r13.z = (uint)r9.w;
        r15.yz = -sunConstants.splitPinTransform[r13.z].xy + r9.xy;
        r13.w = max(abs(r15.y), abs(r15.z));
        r12.w = sunConstants.splitPinTransform[r13.z].z * r13.w;
        r13.z = cmp(r12.w < 1);
        if (r13.z != 0) {
          break;
        }
        r9.w = 1 + r9.w;
        r12.w = 0;
      }
    } else {
      r9.w = 3;
      r12.w = 0;
    }
    r13.z = cmp(r9.w >= 3);
    if (r13.z != 0) {
      r15.yzw = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r18.xz = rcp(r15.yy);
      r18.y = -r18.z;
      r15.yzw = r9.xyx * r18.xyz + r15.zwz;
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
          r15.y = r9.x * r15.z + r15.y;
          r14.w = r9.y * r14.w + r15.y;
          r16.z = r13.w ? r14.w : r16.z;
        }
      }
      r9.z = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r9.z;
      r9.z = cmp(r16.z < r9.z);
      r8.w = r9.z ? 0 : 1;
    }
    if (r13.z == 0) {
      if (enableDitheredShadow == 0) {
        r9.z = (uint)r9.w;
        r13.zw = -sunConstants.splitPinTransform[r9.z].xy + r9.xy;
        r13.zw = sunConstants.splitPinTransform[r9.z].zz * r13.zw;
        r18.xy = r13.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r9.z = (int16)sunConstants.splitArrayOffset;
        r18.z = r9.w + r9.z;
        r9.z = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r7.w).x;
        r13.z = gTransShadowmapArray.SampleLevel(samp0_s, r18.xyz, 0).x;
        r9.z = r13.z + r9.z;
        r9.z = saturate(-1 + r9.z);
        r13.z = r9.z * r9.z;
        r8.w = r13.z * r9.z;
      }
      if (enableDitheredShadow != 0) {
        r18.x = -r13.x;
        r9.z = (uint)r9.w;
        r9.w = 1 + r9.w;
        r9.w = min(2, r9.w);
        r9.w = (uint)r9.w;
        r12.w = 1 + -r12.w;
        r12.w = 28 * r12.w;
        r12.w = (uint)r12.w;
        r13.zw = -sunConstants.splitPinTransform[r9.z].xy + r9.xy;
        r13.zw = sunConstants.splitPinTransform[r9.z].zz * r13.zw;
        r13.zw = r13.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r9.xy = -sunConstants.splitPinTransform[r9.w].xy + r9.xy;
        r9.xy = sunConstants.splitPinTransform[r9.w].zz * r9.xy;
        r9.xy = r9.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r18.y = r14.x;
        r18.z = r13.x;
        r14.w = 0;
        r15.y = 0;
        while (true) {
          r15.z = cmp((uint)r15.y >= 8);
          if (r15.z != 0) break;
          r15.z = cmp((uint)r12.w < (uint)r15.y);
          r16.yz = r15.zz ? r9.xy : r13.zw;
          r15.w = r15.z ? sunConstants.splitPinTransform[r9.w].w : sunConstants.splitPinTransform[r9.z].w;
          r15.z = r15.z ? r9.w : r9.z;
          r19.x = dot(icb[r15.y+0].yx, r18.xy);
          r19.y = dot(icb[r15.y+0].yx, r18.yz);
          r19.xy = r19.xy * r15.ww + r16.yz;
          r15.z = (int)r15.z + (int16)sunConstants.splitArrayOffset;
          r19.z = (uint)r15.z;
          r15.z = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r7.w).x;
          r15.w = gTransShadowmapArray.SampleLevel(samp0_s, r19.xyz, 0).x;
          r15.z = r15.z + r15.w;
          r15.z = saturate(-1 + r15.z);
          r14.w = r15.z * 0.125 + r14.w;
          r15.y = (int)r15.y + 1;
        }
        r7.w = r14.w * r14.w;
        r8.w = r7.w * r14.w;
      }
    }
  }
  r7.w = 1 + -r2.y;
  r7.w = 5 * r7.w;
  r9.xyz = -globalProbeConstants.data[0].xyz + r10.xyz;
  r18.x = globalProbeConstants.data[0].w * r9.x;
  r18.yz = globalProbeConstants.data[1].xy * r9.yz;
  r9.xyz = saturate(float3(0.5,0.5,0.5) + r18.xyz);
  r18.xy = globalProbeConstants.data[1].zw * r9.xy;
  r18.z = globalProbeConstants.data[2].x * r9.z;
  r9.xyz = globalProbeConstants.data[2].yzw + r18.xyz;
  r15.yzw = cmp(float3(0,0,0) < r11.xyz);
  r18.xyz = r15.yzw ? float3(0,0,0) : float3(0.5,0.5,0.5);
  r18.w = 0;
  r15.yzw = r18.wwx + r9.xyz;
  r15.yzw = gProbeXArray.SampleLevel(samplerLinearClamp_s, r15.yzw, 0).xyz;
  r16.yzw = r11.xyz * r11.xyz;
  r16.yzw = sunConstants.globalProbeExposure * r16.yzw;
  r19.xyz = r18.wwy + r9.xyz;
  r19.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r19.xyz, 0).xyz;
  r19.xyz = r19.xyz * r16.zzz;
  r15.yzw = r15.yzw * r16.yyy + r19.xyz;
  r9.xyz = r18.wwz + r9.xyz;
  r9.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r9.xyz, 0).xyz;
  r9.xyz = r9.xyz * r16.www + r15.yzw;
  r11.w = 0;
  r15.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, 6).xyz;
  r9.xyz = r15.yzw * r9.xyz;
  r9.w = dot(r9.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r17.w = 0;
  r15.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r17.xyzw, r7.w).xyz;
  r7.w = sunConstants.globalProbeExposure + -r9.w;
  r7.w = r2.y * r7.w + r9.w;
  r15.yzw = r15.yzw * r7.www;
  r7.w = r4.z * r2.z + r2.x;
  r7.w = log2(abs(r7.w));
  r7.w = r7.w * r1.w;
  r7.w = exp2(r7.w);
  r2.z = r4.z * r2.z + r7.w;
  r2.z = saturate(-1 + r2.z);
  r18.xyz = r9.xyz * r2.www;
  r19.xyz = r0.zzz ? r18.yzx : 0;
  r13.zw = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r13.zw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r13.zw, 0).xy;
  r15.yzw = r15.yzw * r2.zzz;
  r16.yzw = r15.yzw * r13.zzz;
  r20.xyz = r15.yzw * r13.www;
  r2.y = sqrt(r1.w);
  r2.y = r2.y * 0.5 + 0.5;
  r2.y = r2.y * r2.y;
  r2.z = 0.5 * r2.y;
  r2.y = -r2.y * 0.5 + 1;
  r4.z = r2.x * r2.y + r2.z;
  r2.yz = r4.zz * r2.yz;
  r4.z = cmp(0 < r6.w);
  if (r4.z != 0) {
    r4.z = cmp(0 < r8.w);
    if (r4.z != 0) {
      r4.z = sunConstants.specScale * r1.z;
      r4.z = r4.z * r5.w;
      if (sunConstants.sunCookieIndex != 0) {
        r21.xyz = eyeOffset.xyz + r10.xyz;
        r21.w = 1;
        r7.w = dot(sunConstants.sunCookieTransform[0].xyzw, r21.xyzw);
        r9.w = dot(sunConstants.sunCookieTransform[1].xyzw, r21.xyzw);
        r21.x = frac(r7.w);
        r21.y = frac(r9.w);
        r7.w = -1 + (int14)sunConstants.sunCookieIndex;
        r21.z = (uint)r7.w;
        r15.yzw = gCookieArray.SampleLevel(samplerLinear_s, r21.xyz, 0).xyz;
        r15.yzw = float3(-1,-1,-1) + r15.yzw;
        r15.yzw = sunConstants.sunCookieIntensity * r15.yzw + float3(1,1,1);
        r15.yzw = sunConstants.color.xyz * r15.yzw;
      } else {
        r15.yzw = sunConstants.color.xyz;
      }
      r7.w = viewmodelSunShadowRaw >> 16;
      r9.w = cmp(0 < (uint)r7.w);
      r9.w = r0.y ? r9.w : 0;
      if (r9.w != 0) {
        r7.w = (int)r7.w + numLights;
        r7.w = mad((int)r7.w, 15, -15);
        r9.w = abs(r3.w) * -0.200000003 + 0.400000006;
        r11.w = cmp(r3.w < 0);
        r11.w = r0.z ? r11.w : 0;
        r9.w = r11.w ? -r9.w : r9.w;
        r21.xyz = r11.xyz * r9.www + r10.xyz;
        r22.xyz = lightConstantsCB[r7.w].data[4].yzw;
        r22.w = lightConstantsCB[r7.w].data[5].x;
        r21.w = 1;
        r22.x = dot(r22.xyzw, r21.xyzw);
        r23.xyz = lightConstantsCB[r7.w].data[5].yzw;
        r23.w = lightConstantsCB[r7.w].data[6].x;
        r22.y = dot(r23.xyzw, r21.xyzw);
        r13.zw = r22.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r22.x = lightConstantsCB[r7.w].data[9].w + r13.z;
        r22.y = lightConstantsCB[r7.w].data[10].x + r13.w;
        r13.zw = lightConstantsCB[r7.w].data[9].yz * r22.xy;
        r22.xy = lightConstantsCB[r7.w].data[3].yy / lightConstantsCB[r7.w].data[8].yw;
        r22.zw = float2(1,1) + -r22.xy;
        r22.zw = cmp(r13.zw >= r22.zw);
        r22.xy = cmp(r22.xy >= r13.zw);
        r22.xy = (int2)r22.xy | (int2)r22.zw;
        r9.w = (int)r22.y | (int)r22.x;
        if (r9.w == 0) {
          r22.xyz = lightConstantsCB[r7.w].data[6].yzw;
          r22.w = lightConstantsCB[r7.w].data[7].x;
          r9.w = dot(r22.xyzw, r21.xyzw);
          r13.zw = saturate(r13.zw);
          r21.x = r13.z * lightConstantsCB[r7.w].data[8].y + lightConstantsCB[r7.w].data[8].z;
          r21.y = r13.w * lightConstantsCB[r7.w].data[8].w + lightConstantsCB[r7.w].data[9].x;
          r9.w = lightConstantsCB[r7.w].data[10].y + r9.w;
          r9.w = r9.w / lightConstantsCB[r7.w].data[10].z;
          r9.w = max(6.10351563e-05, r9.w);
          r11.w = 0x0000ffff & (int)lightConstantsCB[r7.w].data[1].w;
          if (enableDitheredShadow != 0) {
            r22.x = -r13.x;
            r23.z = (uint)r11.w;
            r22.y = r14.x;
            r22.z = r13.x;
            r12.w = 0;
            r13.z = 0;
            while (true) {
              r13.w = cmp((int)r13.z >= 8);
              if (r13.w != 0) break;
              r24.x = dot(icb[r13.z+0].yx, r22.xy);
              r24.y = dot(icb[r13.z+0].yx, r22.yz);
              r23.xy = r24.xy * lightConstantsCB[r7.w].data[3].yy + r21.xy;
              r13.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r9.w).x;
              r12.w = r13.w * 0.125 + r12.w;
              r13.z = (int)r13.z + 1;
            }
          } else {
            r21.z = (uint)r11.w;
            r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r9.w).x;
          }
          r7.w = r12.w * r12.w;
          r7.w = r7.w * r12.w;
        } else {
          r7.w = 1;
        }
        r8.w = r8.w * r7.w;
      } else {
        r7.w = viewmodelSunShadowRaw & 0x0000ffff;
        r9.w = cmp(0 < (uint)r7.w);
        r11.w = ~(int)r0.y;
        r9.w = r9.w ? r11.w : 0;
        if (r9.w != 0) {
          r7.w = (int)r7.w + numLights;
          r7.w = mad((int)r7.w, 15, -15);
          r9.w = abs(r3.w) * -0.200000003 + 0.400000006;
          r11.w = cmp(r3.w < 0);
          r11.w = r0.z ? r11.w : 0;
          r9.w = r11.w ? -r9.w : r9.w;
          r21.xyz = r11.xyz * r9.www + r10.xyz;
          r22.xyz = lightConstantsCB[r7.w].data[4].yzw;
          r22.w = lightConstantsCB[r7.w].data[5].x;
          r21.w = 1;
          r22.x = dot(r22.xyzw, r21.xyzw);
          r23.xyz = lightConstantsCB[r7.w].data[5].yzw;
          r23.w = lightConstantsCB[r7.w].data[6].x;
          r22.y = dot(r23.xyzw, r21.xyzw);
          r13.zw = r22.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r22.x = lightConstantsCB[r7.w].data[9].w + r13.z;
          r22.y = lightConstantsCB[r7.w].data[10].x + r13.w;
          r13.zw = lightConstantsCB[r7.w].data[9].yz * r22.xy;
          r22.xy = lightConstantsCB[r7.w].data[3].yy / lightConstantsCB[r7.w].data[8].yw;
          r22.zw = float2(1,1) + -r22.xy;
          r22.zw = cmp(r13.zw >= r22.zw);
          r22.xy = cmp(r22.xy >= r13.zw);
          r22.xy = (int2)r22.xy | (int2)r22.zw;
          r9.w = (int)r22.y | (int)r22.x;
          if (r9.w == 0) {
            r22.xyz = lightConstantsCB[r7.w].data[6].yzw;
            r22.w = lightConstantsCB[r7.w].data[7].x;
            r9.w = dot(r22.xyzw, r21.xyzw);
            r13.zw = saturate(r13.zw);
            r21.x = r13.z * lightConstantsCB[r7.w].data[8].y + lightConstantsCB[r7.w].data[8].z;
            r21.y = r13.w * lightConstantsCB[r7.w].data[8].w + lightConstantsCB[r7.w].data[9].x;
            r9.w = lightConstantsCB[r7.w].data[10].y + r9.w;
            r9.w = r9.w / lightConstantsCB[r7.w].data[10].z;
            r9.w = max(6.10351563e-05, r9.w);
            r11.w = 0x0000ffff & (int)lightConstantsCB[r7.w].data[1].w;
            if (enableDitheredShadow != 0) {
              r22.x = -r13.x;
              r23.z = (uint)r11.w;
              r22.y = r14.x;
              r22.z = r13.x;
              r12.w = 0;
              r13.z = 0;
              while (true) {
                r13.w = cmp((int)r13.z >= 8);
                if (r13.w != 0) break;
                r24.x = dot(icb[r13.z+0].yx, r22.xy);
                r24.y = dot(icb[r13.z+0].yx, r22.yz);
                r23.xy = r24.xy * lightConstantsCB[r7.w].data[3].yy + r21.xy;
                r13.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r9.w).x;
                r12.w = r13.w * 0.125 + r12.w;
                r13.z = (int)r13.z + 1;
              }
            } else {
              r21.z = (uint)r11.w;
              r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r9.w).x;
            }
            r7.w = r12.w * r12.w;
            r7.w = r7.w * r12.w;
          } else {
            r7.w = 1;
          }
          r8.w = r8.w * r7.w;
        }
      }
      r7.w = -r2.x * 0.5 + 1;
      r7.w = -r6.w * r7.w + 1;
      r7.w = r7.w * r7.w;
      r7.w = -r7.w * 0.620000005 + 0.620000005;
      r7.w = r7.w + -r6.w;
      r6.w = r1.w * r7.w + r6.w;
      r6.w = r6.w * r8.w;
      r21.xyz = r6.www * r15.yzw;
      r3.w = cmp(0 < r3.w);
      r9.xyz = r9.xyz * r2.www + r21.xyz;
      r21.xyz = -r10.xyz * r0.www + sunConstants.wldDir.xyz;
      r0.w = dot(r21.xyz, r21.xyz);
      r0.w = rsqrt(r0.w);
      r21.xyz = r21.xyz * r0.www;
      r0.w = dot(r21.xyz, r12.xyz);
      r2.w = dot(r11.xyz, r21.xyz);
      r7.w = abs(r2.w) * r1.z + -abs(r2.w);
      r2.w = abs(r2.w) * r7.w + 1;
      r5.w = r5.w * r2.y + r2.z;
      r2.w = r2.w * r2.w;
      r2.w = r2.w * r5.w;
      r2.w = rcp(r2.w);
      r2.w = r2.w * r4.z;
      r2.w = r8.w * r2.w;
      r2.w = 0.25 * r2.w;
      r21.yzw = r2.www * r15.yzw + r20.xyz;
      r0.w = saturate(1 + -r0.w);
      r4.z = r0.w * r0.w;
      r4.z = r4.z * r4.z;
      r0.w = r4.z * r0.w;
      r0.w = r2.w * r0.w;
      r22.xyz = r0.www * r15.yzw + r16.yzw;
      r15.yzw = r6.www * r15.yzw + r19.zxy;
      r23.xyz = r0.zzz ? r15.zwy : 0;
      r9.w = r19.z;
      r18.w = r23.z;
      r18.xyzw = r3.wwww ? r9.xyzw : r18.xyzw;
      r19.zw = r22.xy;
      r23.zw = r16.yz;
      r9.xyzw = r3.wwww ? r19.xyzw : r23.xyzw;
      r21.x = r22.z;
      r20.w = r16.w;
      r20.xyzw = r3.wwww ? r21.yzwx : r20.xyzw;
      r19.z = r18.w;
      r19.xy = r9.xy;
      r16.yz = r9.zw;
      r16.w = r20.w;
    }
  }
  r0.w = (uint)r0.x >> 24;
  if (10 == 0) r0.x = 0; else if (10+12 < 32) {   r0.x = (uint)r0.x << (32-(10 + 12)); r0.x = (uint)r0.x >> (32-10);  } else r0.x = (uint)r0.x >> 12;
  r9.x = -r13.x;
  r2.w = ~(int)r0.y;
  r2.x = -r2.x * 0.5 + 1;
  r10.w = 1;
  r21.w = 1;
  r9.z = r13.x;
  r22.z = 1;
  r23.w = 1;
  r24.w = 1;
  r9.yw = r14.xx;
  r13.y = r9.w;
  r25.w = 1;
  r14.y = r9.x;
  r14.z = r13.x;
  r26.w = 1;
  r27.x = r14.x;
  r27.y = r9.x;
  r27.z = r13.x;
  r28.x = r14.x;
  r28.y = r9.x;
  r28.z = r13.x;
  r29.x = r14.x;
  r29.y = r9.x;
  r29.z = r13.x;
  r15.yzw = r18.xyz;
  r30.xyz = r19.zxy;
  r31.xyz = r16.yzw;
  r32.xyz = r20.xyz;
  r3.w = 0;
  while (true) {
    r4.z = cmp((int)r3.w == 2);
    if (r4.z != 0) break;
    r4.z = r3.w ? r0.x : r0.w;
    r4.z = (int)r4.z * 15;
    if (3 == 0) r5.w = 0; else if (3+24 < 32) {     r5.w = (uint)lightConstantsCB[r4.z].data[1].w << (32-(3 + 24)); r5.w = (uint)r5.w >> (32-3);    } else r5.w = (uint)lightConstantsCB[r4.z].data[1].w >> 24;
    switch (r5.w) {
      case 4 :      r5.w = cmp(0 < lightConstantsCB[r4.z].data[6].y);
      r33.xy = lightConstantsCB[r4.z].data[5].zw;
      r33.z = lightConstantsCB[r4.z].data[6].x;
      r34.xyz = -r33.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r4.z].data[0].xyz;
      r35.xyz = r34.xyz + -r10.xyz;
      r6.w = dot(r33.xyz, r35.xyz);
      r7.w = saturate(-r6.w / lightConstantsCB[r4.z].data[6].y);
      r36.xyz = r7.www * r33.xyz + r34.xyz;
      r36.xyz = r5.www ? r36.xyz : lightConstantsCB[r4.z].data[0].xyz;
      r36.xyz = r36.xyz + -r10.xyz;
      r8.w = dot(r36.xyz, r36.xyz);
      r11.w = rsqrt(r8.w);
      r36.xyz = r36.xyz * r11.www;
      r11.w = dot(r11.xyz, r36.xyz);
      r12.w = saturate(r11.w);
      r12.w = r0.z ? abs(r11.w) : r12.w;
      r13.z = cmp(0 < r12.w);
      if (r13.z != 0) {
        r13.z = sqrt(r8.w);
        r13.w = lightConstantsCB[r4.z].data[3].x * lightConstantsCB[r4.z].data[3].x;
        r8.w = r13.w / r8.w;
        r8.w = min(1, r8.w);
        r13.zw = saturate(r13.zz * lightConstantsCB[r4.z].data[2].xz + lightConstantsCB[r4.z].data[2].yw);
        r36.xy = r13.zw * r13.zw;
        r13.zw = r13.zw * float2(-2,-2) + float2(3,3);
        r13.zw = r36.xy * r13.zw;
        r8.w = r13.z * r8.w;
        r8.w = r8.w * r13.w;
        r13.z = cmp(0 < r8.w);
        if (r13.z != 0) {
          if (3 == 0) r13.z = 0; else if (3+27 < 32) {           r13.z = (uint)lightConstantsCB[r4.z].data[1].w << (32-(3 + 27)); r13.z = (uint)r13.z >> (32-3);          } else r13.z = (uint)lightConstantsCB[r4.z].data[1].w >> 27;
          r13.z = cmp((int)r13.z != 1);
          if (r13.z != 0) {
            r13.z = abs(r11.w) * -0.200000003 + 0.400000006;
            r13.w = cmp(r11.w < 0);
            r13.w = r0.z ? r13.w : 0;
            r13.z = r13.w ? -r13.z : r13.z;
            r36.xyz = r11.xyz * r13.zzz + r10.xyz;
            r36.xyz = -lightConstantsCB[r4.z].data[4].yzw + r36.xyz;
            r13.z = max(abs(r36.y), abs(r36.z));
            r13.z = max(abs(r36.x), r13.z);
            r13.z = lightConstantsCB[r4.z].data[5].x / r13.z;
            r13.z = lightConstantsCB[r4.z].data[5].y + r13.z;
            r13.w = dot(r36.xyz, r36.xyz);
            r13.w = rsqrt(r13.w);
            r13.z = max(6.10351563e-05, r13.z);
            r14.w = 0x0000ffff & (int)lightConstantsCB[r4.z].data[1].w;
            r37.w = (uint)r14.w;
            r14.w = 0;
            r17.w = 0;
            while (true) {
              r18.w = cmp((int)r17.w >= 8);
              if (r18.w != 0) break;
              r38.y = dot(icb[r17.w+0].yx, r9.xy);
              r38.z = dot(icb[r17.w+0].yx, r9.yz);
              r38.yz = lightConstantsCB[r4.z].data[3].yy * r38.yz;
              r38.x = r38.y * r16.x;
              r38.w = r38.y * r15.x;
              r37.xyz = r36.xyz * r13.www + r38.xzw;
              r18.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r37.xyzw, r13.z).x;
              r14.w = r18.w * 0.125 + r14.w;
              r17.w = (int)r17.w + 1;
            }
          } else {
            r14.w = 1;
          }
          r8.w = r14.w * r8.w;
          r13.z = cmp(0 < r8.w);
          if (r13.z != 0) {
            r13.z = lightConstantsCB[r4.z].data[1].z * r1.z;
            r13.w = dot(r33.xyz, r17.xyz);
            r17.w = dot(r17.xyz, r35.xyz);
            r18.w = -r13.w * r13.w + lightConstantsCB[r4.z].data[6].y;
            r6.w = r13.w * r17.w + -r6.w;
            r6.w = saturate(r6.w / r18.w);
            r13.w = r18.w / lightConstantsCB[r4.z].data[6].y;
            r13.zw = float2(0.25,10) * r13.zw;
            r13.w = min(1, r13.w);
            r6.w = r6.w + -r7.w;
            r6.w = r13.w * r6.w + r7.w;
            r33.xyz = r6.www * r33.xyz + r34.xyz;
            r33.xyz = r5.www ? r33.xyz : lightConstantsCB[r4.z].data[0].xyz;
            r33.xyz = r33.xyz + -r10.xyz;
            r5.w = dot(r33.xyz, r33.xyz);
            r5.w = rsqrt(r5.w);
            r34.xyz = r33.xyz * r5.www;
            if (4 == 0) r6.w = 0; else if (4+16 < 32) {             r6.w = (uint)lightConstantsCB[r4.z].data[1].w << (32-(4 + 16)); r6.w = (uint)r6.w >> (32-4);            } else r6.w = (uint)lightConstantsCB[r4.z].data[1].w >> 16;
            r7.w = cmp(0 < (uint)r6.w);
            r7.w = r0.y ? r7.w : 0;
            if (r7.w != 0) {
              r6.w = (int)r6.w + numLights;
              r6.w = mad((int)r6.w, 15, -15);
              r7.w = abs(r11.w) * -0.200000003 + 0.400000006;
              r13.w = cmp(r11.w < 0);
              r13.w = r0.z ? r13.w : 0;
              r7.w = r13.w ? -r7.w : r7.w;
              r21.xyz = r11.xyz * r7.www + r10.xyz;
              r35.xyz = lightConstantsCB[r6.w].data[6].yzw;
              r35.w = lightConstantsCB[r6.w].data[7].x;
              r7.w = dot(r35.xyzw, r21.xyzw);
              r35.xyz = lightConstantsCB[r6.w].data[7].yzw;
              r35.w = lightConstantsCB[r6.w].data[8].x;
              r13.w = dot(r35.xyzw, r21.xyzw);
              r17.w = cmp(r13.w < r7.w);
              if (r17.w == 0) {
                r35.xyz = lightConstantsCB[r6.w].data[4].yzw;
                r35.w = lightConstantsCB[r6.w].data[5].x;
                r35.x = dot(r35.xyzw, r21.xyzw);
                r36.xyz = lightConstantsCB[r6.w].data[5].yzw;
                r36.w = lightConstantsCB[r6.w].data[6].x;
                r35.y = dot(r36.xyzw, r21.xyzw);
                r21.xy = r35.xy / r13.ww;
                r21.xy = r21.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r35.x = lightConstantsCB[r6.w].data[9].w + r21.x;
                r35.y = lightConstantsCB[r6.w].data[10].x + r21.y;
                r21.xy = lightConstantsCB[r6.w].data[9].yz * r35.xy;
                r35.xy = lightConstantsCB[r6.w].data[3].yy / lightConstantsCB[r6.w].data[8].yw;
                r35.zw = float2(1,1) + -r35.xy;
                r35.zw = cmp(r21.xy >= r35.zw);
                r35.xy = cmp(r35.xy >= r21.xy);
                r35.xy = (int2)r35.xy | (int2)r35.zw;
                r18.w = (int)r35.y | (int)r35.x;
                if (r18.w == 0) {
                  r21.xy = saturate(r21.xy);
                  r35.x = r21.x * lightConstantsCB[r6.w].data[8].y + lightConstantsCB[r6.w].data[8].z;
                  r35.y = r21.y * lightConstantsCB[r6.w].data[8].w + lightConstantsCB[r6.w].data[9].x;
                  r19.w = lightConstantsCB[r6.w].data[10].z * r13.w;
                  r7.w = lightConstantsCB[r6.w].data[10].y * r13.w + r7.w;
                  r7.w = r7.w / r19.w;
                }
              } else {
                r18.w = -1;
              }
              r13.w = (int)r17.w | (int)r18.w;
              if (r13.w == 0) {
                r7.w = max(6.10351563e-05, r7.w);
                r13.w = 0x0000ffff & (int)lightConstantsCB[r6.w].data[1].w;
                if (enableDitheredShadow != 0) {
                  r21.z = (uint)r13.w;
                  r17.w = 0;
                  r18.w = 0;
                  while (true) {
                    r19.w = cmp((int)r18.w >= 8);
                    if (r19.w != 0) break;
                    r36.x = dot(icb[r18.w+0].yx, r9.xw);
                    r36.y = dot(icb[r18.w+0].xy, r13.xy);
                    r21.xy = r36.xy * lightConstantsCB[r6.w].data[3].yy + r35.xy;
                    r19.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r7.w).x;
                    r17.w = r19.w * 0.125 + r17.w;
                    r18.w = (int)r18.w + 1;
                  }
                } else {
                  r35.z = (uint)r13.w;
                  r17.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r35.xyz, r7.w).x;
                }
                r6.w = r17.w * r17.w;
                r6.w = r6.w * r17.w;
              } else {
                r6.w = 1;
              }
              r8.w = r8.w * r6.w;
            } else {
              if (4 == 0) r6.w = 0; else if (4+20 < 32) {               r6.w = (uint)lightConstantsCB[r4.z].data[1].w << (32-(4 + 20)); r6.w = (uint)r6.w >> (32-4);              } else r6.w = (uint)lightConstantsCB[r4.z].data[1].w >> 20;
              r7.w = cmp(0 < (uint)r6.w);
              r7.w = r7.w ? r2.w : 0;
              if (r7.w != 0) {
                r6.w = (int)r6.w + numLights;
                r6.w = mad((int)r6.w, 15, -15);
                r7.w = abs(r11.w) * -0.200000003 + 0.400000006;
                r13.w = cmp(r11.w < 0);
                r13.w = r0.z ? r13.w : 0;
                r7.w = r13.w ? -r7.w : r7.w;
                r23.xyz = r11.xyz * r7.www + r10.xyz;
                r35.xyz = lightConstantsCB[r6.w].data[6].yzw;
                r35.w = lightConstantsCB[r6.w].data[7].x;
                r7.w = dot(r35.xyzw, r23.xyzw);
                r35.xyz = lightConstantsCB[r6.w].data[7].yzw;
                r35.w = lightConstantsCB[r6.w].data[8].x;
                r13.w = dot(r35.xyzw, r23.xyzw);
                r18.w = cmp(r13.w < r7.w);
                if (r18.w == 0) {
                  r35.xyz = lightConstantsCB[r6.w].data[4].yzw;
                  r35.w = lightConstantsCB[r6.w].data[5].x;
                  r21.x = dot(r35.xyzw, r23.xyzw);
                  r35.xyz = lightConstantsCB[r6.w].data[5].yzw;
                  r35.w = lightConstantsCB[r6.w].data[6].x;
                  r21.y = dot(r35.xyzw, r23.xyzw);
                  r21.xy = r21.xy / r13.ww;
                  r21.xy = r21.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                  r23.x = lightConstantsCB[r6.w].data[9].w + r21.x;
                  r23.y = lightConstantsCB[r6.w].data[10].x + r21.y;
                  r21.xy = lightConstantsCB[r6.w].data[9].yz * r23.xy;
                  r23.xy = lightConstantsCB[r6.w].data[3].yy / lightConstantsCB[r6.w].data[8].yw;
                  r35.xy = float2(1,1) + -r23.xy;
                  r35.xy = cmp(r21.xy >= r35.xy);
                  r23.xy = cmp(r23.xy >= r21.xy);
                  r23.xy = (int2)r23.xy | (int2)r35.xy;
                  r19.w = (int)r23.y | (int)r23.x;
                  if (r19.w == 0) {
                    r21.xy = saturate(r21.xy);
                    r23.x = r21.x * lightConstantsCB[r6.w].data[8].y + lightConstantsCB[r6.w].data[8].z;
                    r23.y = r21.y * lightConstantsCB[r6.w].data[8].w + lightConstantsCB[r6.w].data[9].x;
                    r20.w = lightConstantsCB[r6.w].data[10].z * r13.w;
                    r7.w = lightConstantsCB[r6.w].data[10].y * r13.w + r7.w;
                    r7.w = r7.w / r20.w;
                  }
                } else {
                  r19.w = -1;
                }
                r13.w = (int)r18.w | (int)r19.w;
                if (r13.w == 0) {
                  r7.w = max(6.10351563e-05, r7.w);
                  r13.w = 0x0000ffff & (int)lightConstantsCB[r6.w].data[1].w;
                  if (enableDitheredShadow != 0) {
                    r21.z = (uint)r13.w;
                    r18.w = 0;
                    r19.w = 0;
                    while (true) {
                      r20.w = cmp((int)r19.w >= 8);
                      if (r20.w != 0) break;
                      r35.x = dot(icb[r19.w+0].xy, r14.xy);
                      r35.y = dot(icb[r19.w+0].yx, r14.xz);
                      r21.xy = r35.xy * lightConstantsCB[r6.w].data[3].yy + r23.xy;
                      r20.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r7.w).x;
                      r18.w = r20.w * 0.125 + r18.w;
                      r19.w = (int)r19.w + 1;
                    }
                  } else {
                    r23.z = (uint)r13.w;
                    r18.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r7.w).x;
                  }
                  r6.w = r18.w * r18.w;
                  r6.w = r6.w * r18.w;
                } else {
                  r6.w = 1;
                }
                r8.w = r8.w * r6.w;
              }
            }
            r6.w = -r12.w * r2.x + 1;
            r6.w = r6.w * r6.w;
            r6.w = -r6.w * 0.620000005 + 0.620000005;
            r6.w = r6.w + -r12.w;
            r6.w = r1.w * r6.w + r12.w;
            r6.w = r6.w * r8.w;
            r21.x = lightConstantsCB[r4.z].data[0].w;
            r21.yz = lightConstantsCB[r4.z].data[1].xy;
            r7.w = cmp(0 < r11.w);
            r23.xyz = r6.www * r21.xyz + r15.yzw;
            r11.w = saturate(dot(r11.xyz, r34.xyz));
            r33.xyz = r33.xyz * r5.www + r12.xyz;
            r5.w = dot(r33.xyz, r33.xyz);
            r5.w = rsqrt(r5.w);
            r33.xyz = r33.xyz * r5.www;
            r5.w = dot(r33.xyz, r12.xyz);
            r12.w = dot(r11.xyz, r33.xyz);
            r13.w = abs(r12.w) * r1.z + -abs(r12.w);
            r12.w = abs(r12.w) * r13.w + 1;
            r13.w = r11.w * r2.y + r2.z;
            r12.w = r12.w * r12.w;
            r12.w = r12.w * r13.w;
            r12.w = rcp(r12.w);
            r11.w = r11.w * r13.z;
            r11.w = r12.w * r11.w;
            r8.w = r11.w * r8.w;
            r33.xyz = r8.www * r21.xyz + r32.xyz;
            r5.w = saturate(1 + -r5.w);
            r11.w = r5.w * r5.w;
            r11.w = r11.w * r11.w;
            r5.w = r11.w * r5.w;
            r5.w = r8.w * r5.w;
            r34.xyz = r5.www * r21.xyz + r31.xyz;
            r21.xyz = r6.www * r21.xyz + r30.xyz;
            r21.xyz = r0.zzz ? r21.xyz : r30.xyz;
            r15.yzw = r7.www ? r23.xyz : r15.yzw;
            r30.xyz = r7.www ? r30.xyz : r21.xyz;
            r31.xyz = r7.www ? r34.xyz : r31.xyz;
            r32.xyz = r7.www ? r33.xyz : r32.xyz;
          }
        }
      }
      break;
      case 2 :      r21.xy = lightConstantsCB[r4.z].data[3].zw + -r10.xy;
      r21.z = lightConstantsCB[r4.z].data[4].x + -r10.z;
      r5.w = dot(r21.xyz, r21.xyz);
      r5.w = rsqrt(r5.w);
      r23.xyz = r21.xyz * r5.www;
      r6.w = dot(r11.xyz, r23.xyz);
      r7.w = saturate(r6.w);
      r8.w = r0.z ? abs(r6.w) : r7.w;
      r11.w = cmp(0 < r8.w);
      if (r11.w != 0) {
        r33.xyz = lightConstantsCB[r4.z].data[7].yzw;
        r33.w = lightConstantsCB[r4.z].data[8].x;
        r11.w = dot(r33.xyzw, r10.xyzw);
        r12.w = cmp(r11.w < 1);
        if (r12.w != 0) {
          r23.xyz = float3(1,1,1);
          r12.w = 0;
        } else {
          r34.xyz = lightConstantsCB[r4.z].data[0].xyz + -r10.xyz;
          r13.z = lightConstantsCB[r4.z].data[3].x * lightConstantsCB[r4.z].data[3].x;
          r13.w = dot(r34.xyz, r34.xyz);
          r13.z = r13.z / r13.w;
          r13.z = min(1, r13.z);
          r34.xy = saturate(r11.ww * lightConstantsCB[r4.z].data[2].xz + lightConstantsCB[r4.z].data[2].yw);
          r34.zw = r34.xy * r34.xy;
          r34.xy = r34.xy * float2(-2,-2) + float2(3,3);
          r34.xy = r34.zw * r34.xy;
          r13.z = r34.x * r13.z;
          r13.z = r13.z * r34.y;
          r34.xyz = lightConstantsCB[r4.z].data[4].yzw;
          r34.w = lightConstantsCB[r4.z].data[5].x;
          r34.x = dot(r34.xyzw, r10.xyzw);
          r35.xyz = lightConstantsCB[r4.z].data[5].yzw;
          r35.w = lightConstantsCB[r4.z].data[6].x;
          r34.y = dot(r35.xyzw, r10.xyzw);
          r22.xy = r34.xy / r11.ww;
          r11.w = cmp(lightConstantsCB[r4.z].data[10].w < 0.00048828125);
          if (r11.w != 0) {
            r34.xy = saturate(abs(r22.xy) * lightConstantsCB[r4.z].data[12].xy + lightConstantsCB[r4.z].data[12].zw);
            r34.zw = r34.xy * r34.xy;
            r34.xy = r34.xy * float2(-2,-2) + float2(3,3);
            r34.xy = r34.zw * r34.xy;
            r11.w = r34.x * r34.y;
          } else {
            r34.xyzw = saturate(lightConstantsCB[r4.z].data[11].xyzw * abs(r22.yyxx));
            r34.xyzw = log2(r34.xyzw);
            r34.xyzw = lightConstantsCB[r4.z].data[12].zzzz * r34.xyzw;
            r34.xyzw = exp2(r34.xyzw);
            r34.xy = r34.xy + r34.zw;
            r34.xy = log2(r34.xy);
            r34.xy = lightConstantsCB[r4.z].data[12].ww * r34.xy;
            r34.xy = exp2(r34.xy);
            r13.w = lightConstantsCB[r4.z].data[12].x * r34.x;
            r19.w = lightConstantsCB[r4.z].data[12].y * r34.y + -1;
            r13.w = lightConstantsCB[r4.z].data[12].y * r34.y + -r13.w;
            r13.w = saturate(r19.w / r13.w);
            r19.w = r13.w * r13.w;
            r13.w = r13.w * -2 + 3;
            r11.w = r19.w * r13.w;
          }
          r12.w = r13.z * r11.w;
          r11.w = 255 & (int)lightConstantsCB[r4.z].data[14].w;
          if (r11.w != 0) {
            r13.z = dot(lightConstantsCB[r4.z].data[13].xyz, r22.xyz);
            r34.x = lightConstantsCB[r4.z].data[13].w;
            r34.yz = lightConstantsCB[r4.z].data[14].xy;
            r13.w = dot(r34.xyz, r22.xyz);
            r34.xy = frac(r13.zw);
            r11.w = (int)r11.w + -1;
            r34.z = (uint)r11.w;
            r23.xyz = gCookieArray.SampleLevel(samplerLinear_s, r34.xyz, 0).xyz;
          } else {
            r23.xyz = float3(1,1,1);
          }
        }
        r34.x = lightConstantsCB[r4.z].data[0].w;
        r34.yz = lightConstantsCB[r4.z].data[1].xy;
        r22.xyw = r34.xyz * r23.xyz;
        r11.w = cmp(0 < r12.w);
        if (r11.w != 0) {
          if (3 == 0) r11.w = 0; else if (3+27 < 32) {           r11.w = (uint)lightConstantsCB[r4.z].data[1].w << (32-(3 + 27)); r11.w = (uint)r11.w >> (32-3);          } else r11.w = (uint)lightConstantsCB[r4.z].data[1].w >> 27;
          r11.w = cmp((int)r11.w != 1);
          if (r11.w != 0) {
            r11.w = abs(r6.w) * -0.200000003 + 0.400000006;
            r13.z = cmp(r6.w < 0);
            r13.z = r0.z ? r13.z : 0;
            r11.w = r13.z ? -r11.w : r11.w;
            r24.xyz = r11.xyz * r11.www + r10.xyz;
            r34.xyz = lightConstantsCB[r4.z].data[6].yzw;
            r34.w = lightConstantsCB[r4.z].data[7].x;
            r11.w = dot(r34.xyzw, r24.xyzw);
            r13.z = dot(r33.xyzw, r24.xyzw);
            r13.w = cmp(r13.z >= r11.w);
            if (r13.w != 0) {
              r33.xyz = lightConstantsCB[r4.z].data[4].yzw;
              r33.w = lightConstantsCB[r4.z].data[5].x;
              r23.x = dot(r33.xyzw, r24.xyzw);
              r33.xyz = lightConstantsCB[r4.z].data[5].yzw;
              r33.w = lightConstantsCB[r4.z].data[6].x;
              r23.y = dot(r33.xyzw, r24.xyzw);
              r23.xy = r23.xy / r13.zz;
              r23.xy = saturate(r23.xy * float2(0.5,-0.5) + float2(0.5,0.5));
              r24.x = r23.x * lightConstantsCB[r4.z].data[8].y + lightConstantsCB[r4.z].data[8].z;
              r24.y = r23.y * lightConstantsCB[r4.z].data[8].w + lightConstantsCB[r4.z].data[9].x;
              r11.w = r11.w / r13.z;
              r11.w = max(6.10351563e-05, r11.w);
              r13.z = 0x0000ffff & (int)lightConstantsCB[r4.z].data[1].w;
              if (enableDitheredShadow != 0) {
                r23.z = (uint)r13.z;
                r13.w = 0;
                r19.w = 0;
                while (true) {
                  r20.w = cmp((int)r19.w >= 8);
                  if (r20.w != 0) break;
                  r33.x = dot(icb[r19.w+0].xy, r27.xy);
                  r33.y = dot(icb[r19.w+0].yx, r27.xz);
                  r23.xy = r33.xy * lightConstantsCB[r4.z].data[3].yy + r24.xy;
                  r20.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r11.w).x;
                  r13.w = r20.w * 0.125 + r13.w;
                  r19.w = (int)r19.w + 1;
                }
              } else {
                r24.z = (uint)r13.z;
                r13.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r11.w).x;
              }
              r11.w = r13.w * r13.w;
              r11.w = r11.w * r13.w;
            } else {
              r11.w = 1;
            }
          } else {
            r11.w = 1;
          }
          r11.w = r12.w * r11.w;
          r12.w = cmp(0 < r11.w);
          if (r12.w != 0) {
            r12.w = lightConstantsCB[r4.z].data[1].z * r1.z;
            r12.w = r12.w * r7.w;
            if (4 == 0) r13.z = 0; else if (4+16 < 32) {             r13.z = (uint)lightConstantsCB[r4.z].data[1].w << (32-(4 + 16)); r13.z = (uint)r13.z >> (32-4);            } else r13.z = (uint)lightConstantsCB[r4.z].data[1].w >> 16;
            r19.w = cmp(0 < (uint)r13.z);
            r19.w = r0.y ? r19.w : 0;
            if (r19.w != 0) {
              r13.z = (int)r13.z + numLights;
              r13.z = mad((int)r13.z, 15, -15);
              r19.w = abs(r6.w) * -0.200000003 + 0.400000006;
              r20.w = cmp(r6.w < 0);
              r20.w = r0.z ? r20.w : 0;
              r19.w = r20.w ? -r19.w : r19.w;
              r25.xyz = r11.xyz * r19.www + r10.xyz;
              r33.xyz = lightConstantsCB[r13.z].data[6].yzw;
              r33.w = lightConstantsCB[r13.z].data[7].x;
              r19.w = dot(r33.xyzw, r25.xyzw);
              r33.xyz = lightConstantsCB[r13.z].data[7].yzw;
              r33.w = lightConstantsCB[r13.z].data[8].x;
              r20.w = dot(r33.xyzw, r25.xyzw);
              r23.x = cmp(r20.w < r19.w);
              if (r23.x == 0) {
                r33.xyz = lightConstantsCB[r13.z].data[4].yzw;
                r33.w = lightConstantsCB[r13.z].data[5].x;
                r24.x = dot(r33.xyzw, r25.xyzw);
                r33.xyz = lightConstantsCB[r13.z].data[5].yzw;
                r33.w = lightConstantsCB[r13.z].data[6].x;
                r24.y = dot(r33.xyzw, r25.xyzw);
                r23.yz = r24.xy / r20.ww;
                r23.yz = r23.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                r24.x = lightConstantsCB[r13.z].data[9].w + r23.y;
                r24.y = lightConstantsCB[r13.z].data[10].x + r23.z;
                r23.yz = lightConstantsCB[r13.z].data[9].yz * r24.xy;
                r24.xy = lightConstantsCB[r13.z].data[3].yy / lightConstantsCB[r13.z].data[8].yw;
                r25.xy = float2(1,1) + -r24.xy;
                r25.xy = cmp(r23.yz >= r25.xy);
                r24.xy = cmp(r24.xy >= r23.yz);
                r24.xy = (int2)r24.xy | (int2)r25.xy;
                r24.x = (int)r24.y | (int)r24.x;
                if (r24.x == 0) {
                  r23.yz = saturate(r23.yz);
                  r25.x = r23.y * lightConstantsCB[r13.z].data[8].y + lightConstantsCB[r13.z].data[8].z;
                  r25.y = r23.z * lightConstantsCB[r13.z].data[8].w + lightConstantsCB[r13.z].data[9].x;
                  r23.y = lightConstantsCB[r13.z].data[10].z * r20.w;
                  r19.w = lightConstantsCB[r13.z].data[10].y * r20.w + r19.w;
                  r19.w = r19.w / r23.y;
                }
              } else {
                r24.x = -1;
              }
              r20.w = (int)r23.x | (int)r24.x;
              if (r20.w == 0) {
                r19.w = max(6.10351563e-05, r19.w);
                r20.w = 0x0000ffff & (int)lightConstantsCB[r13.z].data[1].w;
                if (enableDitheredShadow != 0) {
                  r23.z = (uint)r20.w;
                  r24.xy = float2(0,0);
                  while (true) {
                    r24.z = cmp((int)r24.y >= 8);
                    if (r24.z != 0) break;
                    r33.x = dot(icb[r24.y+0].xy, r28.xy);
                    r33.y = dot(icb[r24.y+0].yx, r28.xz);
                    r23.xy = r33.xy * lightConstantsCB[r13.z].data[3].yy + r25.xy;
                    r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r19.w).x;
                    r24.x = r23.x * 0.125 + r24.x;
                    r24.y = (int)r24.y + 1;
                  }
                } else {
                  r25.z = (uint)r20.w;
                  r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r19.w).x;
                }
                r13.z = r24.x * r24.x;
                r13.z = r13.z * r24.x;
              } else {
                r13.z = 1;
              }
              r11.w = r13.z * r11.w;
            } else {
              if (4 == 0) r4.z = 0; else if (4+20 < 32) {               r4.z = (uint)lightConstantsCB[r4.z].data[1].w << (32-(4 + 20)); r4.z = (uint)r4.z >> (32-4);              } else r4.z = (uint)lightConstantsCB[r4.z].data[1].w >> 20;
              r13.z = cmp(0 < (uint)r4.z);
              r13.z = r13.z ? r2.w : 0;
              if (r13.z != 0) {
                r4.z = (int)r4.z + numLights;
                r4.z = mad((int)r4.z, 15, -15);
                r13.z = abs(r6.w) * -0.200000003 + 0.400000006;
                r19.w = cmp(r6.w < 0);
                r19.w = r0.z ? r19.w : 0;
                r13.z = r19.w ? -r13.z : r13.z;
                r26.xyz = r11.xyz * r13.zzz + r10.xyz;
                r33.xyz = lightConstantsCB[r4.z].data[6].yzw;
                r33.w = lightConstantsCB[r4.z].data[7].x;
                r13.z = dot(r33.xyzw, r26.xyzw);
                r33.xyz = lightConstantsCB[r4.z].data[7].yzw;
                r33.w = lightConstantsCB[r4.z].data[8].x;
                r19.w = dot(r33.xyzw, r26.xyzw);
                r20.w = cmp(r19.w < r13.z);
                if (r20.w == 0) {
                  r33.xyz = lightConstantsCB[r4.z].data[4].yzw;
                  r33.w = lightConstantsCB[r4.z].data[5].x;
                  r23.x = dot(r33.xyzw, r26.xyzw);
                  r33.xyz = lightConstantsCB[r4.z].data[5].yzw;
                  r33.w = lightConstantsCB[r4.z].data[6].x;
                  r23.y = dot(r33.xyzw, r26.xyzw);
                  r23.xy = r23.xy / r19.ww;
                  r23.xy = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                  r25.x = lightConstantsCB[r4.z].data[9].w + r23.x;
                  r25.y = lightConstantsCB[r4.z].data[10].x + r23.y;
                  r23.xy = lightConstantsCB[r4.z].data[9].yz * r25.xy;
                  r24.yz = lightConstantsCB[r4.z].data[3].yy / lightConstantsCB[r4.z].data[8].yw;
                  r25.xy = float2(1,1) + -r24.yz;
                  r25.xy = cmp(r23.xy >= r25.xy);
                  r24.yz = cmp(r24.yz >= r23.xy);
                  r24.yz = (int2)r24.yz | (int2)r25.xy;
                  r23.z = (int)r24.z | (int)r24.y;
                  if (r23.z == 0) {
                    r23.xy = saturate(r23.xy);
                    r25.x = r23.x * lightConstantsCB[r4.z].data[8].y + lightConstantsCB[r4.z].data[8].z;
                    r25.y = r23.y * lightConstantsCB[r4.z].data[8].w + lightConstantsCB[r4.z].data[9].x;
                    r23.x = lightConstantsCB[r4.z].data[10].z * r19.w;
                    r13.z = lightConstantsCB[r4.z].data[10].y * r19.w + r13.z;
                    r13.z = r13.z / r23.x;
                  }
                } else {
                  r23.z = -1;
                }
                r19.w = (int)r20.w | (int)r23.z;
                if (r19.w == 0) {
                  r13.z = max(6.10351563e-05, r13.z);
                  r19.w = 0x0000ffff & (int)lightConstantsCB[r4.z].data[1].w;
                  if (enableDitheredShadow != 0) {
                    r23.z = (uint)r19.w;
                    r20.w = 0;
                    r24.y = 0;
                    while (true) {
                      r24.z = cmp((int)r24.y >= 8);
                      if (r24.z != 0) break;
                      r26.x = dot(icb[r24.y+0].xy, r29.xy);
                      r26.y = dot(icb[r24.y+0].yx, r29.xz);
                      r23.xy = r26.xy * lightConstantsCB[r4.z].data[3].yy + r25.xy;
                      r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r13.z).x;
                      r20.w = r23.x * 0.125 + r20.w;
                      r24.y = (int)r24.y + 1;
                    }
                  } else {
                    r25.z = (uint)r19.w;
                    r20.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r13.z).x;
                  }
                  r4.z = r20.w * r20.w;
                  r4.z = r4.z * r20.w;
                } else {
                  r4.z = 1;
                }
                r11.w = r11.w * r4.z;
              }
            }
            r4.z = -r8.w * r2.x + 1;
            r4.z = r4.z * r4.z;
            r4.z = -r4.z * 0.620000005 + 0.620000005;
            r4.z = r4.z + -r8.w;
            r4.z = r1.w * r4.z + r8.w;
            r4.z = r4.z * r11.w;
            r6.w = cmp(0 < r6.w);
            r23.xyz = r4.zzz * r22.xyw + r15.yzw;
            r21.xyz = r21.xyz * r5.www + r12.xyz;
            r5.w = dot(r21.xyz, r21.xyz);
            r5.w = rsqrt(r5.w);
            r21.xyz = r21.xyz * r5.www;
            r5.w = dot(r21.xyz, r12.xyz);
            r8.w = dot(r11.xyz, r21.xyz);
            r13.z = abs(r8.w) * r1.z + -abs(r8.w);
            r8.w = abs(r8.w) * r13.z + 1;
            r7.w = r7.w * r2.y + r2.z;
            r8.w = r8.w * r8.w;
            r7.w = r8.w * r7.w;
            r7.w = rcp(r7.w);
            r7.w = r7.w * r12.w;
            r7.w = r11.w * r7.w;
            r7.w = 0.25 * r7.w;
            r21.xyz = r7.www * r22.xyw + r32.xyz;
            r5.w = saturate(1 + -r5.w);
            r8.w = r5.w * r5.w;
            r8.w = r8.w * r8.w;
            r5.w = r8.w * r5.w;
            r5.w = r7.w * r5.w;
            r25.xyz = r5.www * r22.xyw + r31.xyz;
            r22.xyw = r4.zzz * r22.xyw + r30.xyz;
            r22.xyw = r0.zzz ? r22.xyw : r30.xyz;
            r15.yzw = r6.www ? r23.xyz : r15.yzw;
            r30.xyz = r6.www ? r30.xyz : r22.xyw;
            r31.xyz = r6.www ? r25.xyz : r31.xyz;
            r32.xyz = r6.www ? r21.xyz : r32.xyz;
          }
        }
      }
      break;
      default :
      break;
    }
    r3.w = (int)r3.w + 1;
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
  r0.xyw = r15.yzw * r3.xyz;
  r0.xyw = r30.xyz * r2.xyz + r0.xyw;
  r4.xyz = float3(0.959999979,0.959999979,0.959999979) * r31.xyz;
  r4.xyz = r32.xyz * float3(0.0399999991,0.0399999991,0.0399999991) + r4.xyz;
  r0.xyw = r4.xyz + r0.xyw;
  r4.xyz = float3(1,1,1) + -r2.xyz;
  r4.xyz = r31.xyz * r4.xyz;
  r2.xyz = r32.xyz * r2.xyz + r4.xyz;
  r2.xyz = r15.yzw * r3.xyz + r2.xyz;
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