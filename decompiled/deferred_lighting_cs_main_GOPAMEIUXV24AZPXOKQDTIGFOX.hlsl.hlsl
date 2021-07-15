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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.x = mad(permuteStride, 37, (int)vThreadGroupID.x);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=8)(mixed,mixed,mixed,mixed) r0.xy, r0.x, l(0), t25.xyxx
r0.x = samp0[]..swiz;
r0.y = samp0[]..swiz;
  r0.xy = (int2)r0.xy & int2(4095,4095);
  r0.xy = mad((int2)r0.xy, int2(8,8), (int2)vThreadIDInGroup.xy);
  r0.zw = float2(0,0);
  r1.xyzw = GBufferNormalAndGloss.Load(r0.xyw).xyzw;
  r2.xy = (uint2)renderTargetSize.xy;
  r2.xy = cmp((uint2)r0.xy < (uint2)r2.xy);
  r2.x = r2.y ? r2.x : 0;
  r2.y = cmp(0 < r1.z);
  r2.x = r2.y ? r2.x : 0;
  if (r2.x == 0) {
    return;
  }
  r2.y = cmp(r1.z >= 0.5);
  r2.z = GBufferDepth.Load(r0.xyw).x;
  r3.xyz = GBufferDiffuseColor.Load(r0.xyw).xyz;
  r4.xyzw = GBufferSpecularColorAndOcclusion.Load(r0.xyw).xyzw;
  r5.xyz = GBufferSpecularColorAndOcclusion.Load(r0.xyw, int3(0, 0, 0)).xyw;
  r6.xyz = GBufferSpecularColorAndOcclusion.Load(r0.xyw, int3(0, 0, 0)).xyw;
  r7.xyz = GBufferSpecularColorAndOcclusion.Load(r0.xyw, int3(0, 0, 0)).xyw;
  r8.xyz = GBufferSpecularColorAndOcclusion.Load(r0.xyz, int3(0, 0, 0)).xyw;
  r0.zw = (uint2)r0.xy;
  r9.xy = float2(0.5,0.5) + r0.zw;
  r10.x = cmp(r2.z >= 0.984375);
  r2.w = 1.01587307 * r2.z;
  r2.z = r2.z * 64 + -63;
  r2.z = r10.x ? r2.z : r2.w;
  r2.z = max(9.99999994e-09, r2.z);
  r10.y = rcp(r2.z);
  r2.xz = r2.xx ? r10.xy : 0;
  r9.zw = -subpixelOffset.xy + r9.xy;
  r9.zw = renderTargetSize.zw * r9.zw;
  r9.zw = r9.zw * float2(2,-2) + float2(-1,1);
  r10.x = inverseProjectionMatrix._m00 * r9.z;
  r10.y = inverseProjectionMatrix._m11 * r9.w;
  r10.z = 1;
  r10.xyz = r10.xyz * r2.zzz;
  r11.xyz = inverseViewMatrix._m10_m11_m12 * r10.yyy;
  r10.xyw = r10.xxx * inverseViewMatrix._m00_m01_m02 + r11.xyz;
  r10.xyz = r10.zzz * inverseViewMatrix._m20_m21_m22 + r10.xyw;
  r1.w = r1.w * 3 + 0.5;
  r1.w = (uint)r1.w;
  r1.xy = r1.xy * float2(2,2) + float2(-1,-1);
  r1.xy = float2(0.850000024,0.850000024) * r1.xy;
  r2.w = dot(r1.xy, r1.xy);
  r11.zw = float2(2,1) + -r2.ww;
  r2.w = sqrt(r11.z);
  r11.xy = r2.ww * r1.xy;
  r12.xyzw = (int4)r1.wwww & int4(2,1,2,1);
  r12.xyzw = r12.zwxy ? float4(-1,-1,1.40129846e-45,1.40129846e-45) : float4(1,1,0,0);
  r1.x = (int)r12.w ^ (int)r12.z;
  r12.z = r1.x ? -1 : 1;
  r1.xyw = float3(-1,0,1) * r12.xyz;
  r13.xyz = float3(1,-2,1) * r12.xyz;
  r11.xyz = float3(0.408248305,0.707106769,0.577350259) * r11.xyw;
  r1.xyw = r11.yyy * r1.xyw;
  r1.xyw = r13.xyz * r11.xxx + r1.xyw;
  r11.xyz = r12.xyz * r11.zzz + r1.xyw;
  r1.x = r2.y ? -0.5 : -0.00146627566;
  r1.x = r1.z + r1.x;
  r1.y = saturate(2.00982332 * r1.x);
  r1.z = dot(-r10.xyz, -r10.xyz);
  r1.z = rsqrt(r1.z);
  r12.xyz = -r10.xyz * r1.zzz;
  r0.z = dot(r0.zw, float2(0.0671105608,0.00583714992));
  r0.z = frac(r0.z);
  r0.z = 52.9829178 * r0.z;
  r0.z = frac(r0.z);
  r0.z = r0.z * 6.28318548 + gameTick.w;
  sincos(r0.z, r13.x, r14.x);
  r1.x = saturate(dot(r11.xyz, r12.xyz));
  r0.z = dot(-r12.xyz, r11.xyz);
  r0.z = r0.z + r0.z;
  r15.xyz = r11.xyz * -r0.zzz + -r12.xyz;
  r0.z = 17 * r1.y;
  r0.z = exp2(r0.z);
  r0.z = 2 + r0.z;
  r0.z = 2 / r0.z;
  r0.w = sqrt(r0.z);
  r2.yw = renderTargetSize.zw * r9.xy;
  r16.xyzw = gSSAOTexture.Gather(samplerLinearClamp_s, r2.yw).xyzw;
  r17.xyzw = gSSAODepthTexture.Gather(samplerLinearClamp_s, r2.yw).xyzw;
  r2.yw = float2(0.5,0.5) * r9.xy;
  r2.yw = frac(r2.yw);
  r9.xy = float2(1,1) + -r2.wy;
  r18.y = r9.y * r9.x;
  r18.xz = r9.xy * r2.yw;
  r18.w = r2.y * r2.w;
  r1.w = dot(r16.xyzw, r18.xyzw);
  r9.xyzw = r17.xyzw + -r2.zzzz;
  r2.y = min(abs(r9.z), abs(r9.w));
  r2.y = min(abs(r9.y), r2.y);
  r2.y = min(abs(r9.x), r2.y);
  r2.w = max(abs(r9.z), abs(r9.w));
  r2.w = max(abs(r9.y), r2.w);
  r2.w = max(abs(r9.x), r2.w);
  r9.xyz = cmp(r2.yyy == abs(r9.yzw));
  r2.y = r9.x ? r16.y : r16.x;
  r2.y = r9.y ? r16.z : r2.y;
  r2.y = r9.z ? r16.w : r2.y;
  r2.z = 0.00999999978 * r2.z;
  r2.z = cmp(r2.z < r2.w);
  r1.w = r2.z ? r2.y : r1.w;
  r2.y = r4.z * r1.w;
  r2.z = dot(r11.xyz, sunConstants.wldDir.xyz);
  r2.w = saturate(r2.z);
  r3.w = cmp(0 >= r2.w);
  if (r3.w != 0) {
    r5.w = 0;
  }
  if (r3.w == 0) {
    r9.xyz = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * r10.yyy;
    r9.xyz = r10.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r9.xyz;
    r9.xyz = r10.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r9.xyz;
    r9.xyz = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r9.xyz;
    r3.w = -sunConstants.splitDepthOffset + r9.z;
    r3.w = -r3.w * 6.10351563e-05 + 1;
    r6.w = saturate(r3.w);
    r6.w = cmp(r3.w == r6.w);
    if (r6.w != 0) {
      r6.w = 0;
      r7.w = 0;
      while (true) {
        r8.w = cmp(r6.w >= 3);
        if (r8.w != 0) break;
        r8.w = (uint)r6.w;
        r13.yz = -sunConstants.splitPinTransform[r8.w].xy + r9.xy;
        r9.w = max(abs(r13.y), abs(r13.z));
        r7.w = sunConstants.splitPinTransform[r8.w].z * r9.w;
        r8.w = cmp(r7.w < 1);
        if (r8.w != 0) {
          break;
        }
        r6.w = 1 + r6.w;
        r7.w = 0;
      }
    } else {
      r6.w = 3;
      r7.w = 0;
    }
    r8.w = cmp(r6.w >= 3);
    if (r8.w != 0) {
      r13.yzw = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r16.xz = rcp(r13.yy);
      r16.y = -r16.z;
      r13.yzw = r9.xyx * r16.xyz + r13.zwz;
      r14.yzw = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r13.yzw = max(float3(0,0,0), r13.yzw);
      r13.yzw = min(r13.yzw, r14.yzw);
      r14.yz = sunConstants.sstLightingConstants.coordScale * r13.wz;
      r14.yz = floor(r14.yz);
      r9.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r14.z;
      r9.w = r9.w * sunConstants.sstLightingConstants.coordScale + r14.y;
      r9.w = (uint)r9.w;
      r9.w = (int)r9.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.w, r9.w, l(0), t23.xxxx
    r10.w = samp0[]..swiz;
      r12.w = (int)r10.w & 0x40000000;
      r14.y = (uint)r10.w << 2;
      if (r12.w == 0) {
        r12.w = (int)r10.w & 0x01ffffff;
        r16.x = (int)r9.w + (int)r12.w;
        r9.w = (uint)r10.w >> 25;
        r9.w = (uint)r9.w;
        r13.yzw = r13.yzw * r9.www;
        r13.yzw = frac(r13.yzw);
        r13.yzw = float3(128,128,128) * r13.yzw;
        r13.yzw = (uint3)r13.yzw;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.x, l(0), t23.xxxx
      r16.z = samp0[]..swiz;
        r14.zw = (uint2)r13.wz >> int2(6,6);
        r9.w = (int)r16.z & 0xc0000000;
        r10.w = (int)r16.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.w, r10.w, l(0), t23.xxxx
      r10.w = samp0[]..swiz;
        r10.w = r14.w ? r16.z : r10.w;
        r12.w = (uint)r10.w >> 13;
        r10.w = r14.z ? r12.w : r10.w;
        r10.w = (int)r10.w & 8191;
        r17.x = (int)r10.w + (int)r16.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
      r17.z = samp0[]..swiz;
        r16.y = 0;
        r17.y = 1;
        r17.xyz = r9.www ? r16.xyz : r17.xyz;
        r18.yz = r9.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r14.zw = (uint2)r13.wz >> (uint2)r18.yy;
        r14.zw = (int2)r14.zw & int2(1,1);
        r10.w = (int)r17.z & 0xc0000000;
        r12.w = (int)r17.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.w, r12.w, l(0), t23.xxxx
      r12.w = samp0[]..swiz;
        r12.w = r14.w ? r17.z : r12.w;
        r14.w = (uint)r12.w >> 13;
        r12.w = r14.z ? r14.w : r12.w;
        r12.w = (int)r12.w & 8191;
        r18.x = (int)r12.w + (int)r17.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.x, l(0), t23.xxxx
      r18.w = samp0[]..swiz;
        r17.xyz = r10.www ? r17.xyz : r18.xzw;
        r16.xyz = r9.www ? r16.xyz : r17.xyz;
        r9.w = (int)r16.z & 0xc0000000;
        if (r9.w == 0) {
          r9.w = (int)-r16.y + 6;
          r14.zw = (uint2)r13.wz >> (uint2)r9.ww;
          r9.w = (int)r16.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r10.w = (((uint)r14.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r10.w = (((uint)r14.z << 0) & bitmask.w) | ((uint)r10.w & ~bitmask.w);
          r10.w = (int)r10.w * 10;
          r9.w = (uint)r9.w >> (uint)r10.w;
          r9.w = (int)r9.w & 1023;
          r17.x = (int)r9.w + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.x, l(0), t23.xxxx
        r17.w = samp0[]..swiz;
          r17.yz = (int2)r16.yy + int2(1,2);
          r9.w = (int)-r17.y + 6;
          r14.zw = (uint2)r13.wz >> (uint2)r9.ww;
          r9.w = (int)r17.w & 0xc0000000;
          r10.w = (int)r17.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r12.w = (((uint)r14.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r12.w = (((uint)r14.z << 0) & bitmask.w) | ((uint)r12.w & ~bitmask.w);
          r12.w = (int)r12.w * 10;
          r10.w = (uint)r10.w >> (uint)r12.w;
          r10.w = (int)r10.w & 1023;
          r18.x = (int)r10.w + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
        r18.z = samp0[]..swiz;
          r18.y = r17.z;
          r18.xyz = r9.www ? r17.xyw : r18.xyz;
          r10.w = (int)-r18.y + 6;
          r14.zw = (uint2)r13.wz >> (uint2)r10.ww;
          r10.w = (int)r18.z & 0xc0000000;
          r12.w = (int)r18.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r14.w = (((uint)r14.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r14.z = (((uint)r14.z << 0) & bitmask.z) | ((uint)r14.w & ~bitmask.z);
          r14.z = (int)r14.z * 10;
          r12.w = (uint)r12.w >> (uint)r14.z;
          r12.w = (int)r12.w & 1023;
          r19.x = (int)r12.w + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.y, r19.x, l(0), t23.xxxx
        r19.y = samp0[]..swiz;
          r14.zw = r10.ww ? r18.xz : r19.xy;
          r16.xz = r9.ww ? r17.xw : r14.zw;
        }
        r9.w = (int)r16.z & 0xc0000000;
        if (r9.w == 0) {
          if (14 == 0) r10.w = 0; else if (14+15 < 32) {           r10.w = (uint)r16.z << (32-(14 + 15)); r10.w = (uint)r10.w >> (32-14);          } else r10.w = (uint)r16.z >> 15;
          r10.w = (uint)r10.w;
          r10.w = sunConstants.sstLightingConstants.constants.spanInInches * r10.w;
          r10.w = 6.10388815e-05 * r10.w;
          r14.zw = (int2)r16.zz & int2(32767,536870912);
          r12.w = (uint)r14.z;
          r12.w = sunConstants.sstLightingConstants.constants.spanInInches * r12.w;
          r12.w = 3.05185094e-05 * r12.w;
          r14.z = (int)r13.z & 3;
          r14.z = (int)r14.z + (int)r16.x;
          r14.z = (int)r14.z + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.z, r14.z, l(0), t23.xxxx
        r14.z = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r17.x = (((uint)r13.y << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r17.y = (((uint)r13.z << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r17.z = (((uint)r13.w << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r13.y = (uint)r14.z >> (uint)r17.x;
          r13.y = (int)r13.y & 255;
          r13.y = (uint)r13.y;
          r13.y = r13.y * r12.w;
          r13.y = r13.y * 0.00392156886 + r10.w;
          r13.z = (int)r17.y + 1;
          if (1 == 0) r13.w = 0; else if (1+1 < 32) {           r13.w = (uint)r13.w << (32-(1 + 1)); r13.w = (uint)r13.w >> (32-1);          } else r13.w = (uint)r13.w >> 1;
          r13.z = (int)r13.w + (int)r13.z;
          r13.z = (int)r13.z + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.z, r13.z, l(0), t23.xxxx
        r13.z = samp0[]..swiz;
          r13.z = (uint)r13.z >> (uint)r17.z;
          r13.z = (int)r13.z & 0x0000ffff;
          r13.z = (uint)r13.z;
          r12.w = r13.z * r12.w;
          r10.w = r12.w * 1.52590219e-05 + r10.w;
          r14.y = r14.w ? r13.y : r10.w;
        } else {
          r10.w = (int)r16.z & 0x80000000;
          r12.w = (int)r16.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.w, r12.w, l(0), t23.xxxx
        r12.w = samp0[]..swiz;
          r10.w = r10.w ? r12.w : 0;
          r12.w = (uint)r16.z << 2;
          r13.y = (uint)r10.w >> 16;
          r13.y = f16tof32(r13.y);
          r10.w = (int)r10.w & 0x0000ffff;
          r10.w = f16tof32(r10.w);
          r12.w = r9.x * r13.y + r12.w;
          r10.w = r9.y * r10.w + r12.w;
          r14.y = r9.w ? r10.w : r14.y;
        }
      }
      r9.z = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r9.z;
      r9.z = cmp(r14.y < r9.z);
      r5.w = r9.z ? 0 : 1;
    }
    if (r8.w == 0) {
      if (enableDitheredShadow == 0) {
        r8.w = (uint)r6.w;
        r9.zw = -sunConstants.splitPinTransform[r8.w].xy + r9.xy;
        r9.zw = sunConstants.splitPinTransform[r8.w].zz * r9.zw;
        r16.xy = r9.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r8.w = (int16)sunConstants.splitArrayOffset;
        r16.z = r8.w + r6.w;
        r8.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r3.w).x;
        r9.z = gTransShadowmapArray.SampleLevel(samp0_s, r16.xyz, 0).x;
        r8.w = r9.z + r8.w;
        r8.w = saturate(-1 + r8.w);
        r9.z = r8.w * r8.w;
        r5.w = r9.z * r8.w;
      }
      if (enableDitheredShadow != 0) {
        r16.x = -r13.x;
        r8.w = (uint)r6.w;
        r6.w = 1 + r6.w;
        r6.w = min(2, r6.w);
        r6.w = (uint)r6.w;
        r7.w = 1 + -r7.w;
        r7.w = 28 * r7.w;
        r7.w = (uint)r7.w;
        r9.zw = -sunConstants.splitPinTransform[r8.w].xy + r9.xy;
        r9.zw = sunConstants.splitPinTransform[r8.w].zz * r9.zw;
        r9.zw = r9.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r9.xy = -sunConstants.splitPinTransform[r6.w].xy + r9.xy;
        r9.xy = sunConstants.splitPinTransform[r6.w].zz * r9.xy;
        r9.xy = r9.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r16.y = r14.x;
        r16.z = r13.x;
        r10.w = 0;
        r12.w = 0;
        while (true) {
          r13.y = cmp((uint)r12.w >= 8);
          if (r13.y != 0) break;
          r13.y = cmp((uint)r7.w < (uint)r12.w);
          r13.zw = r13.yy ? r9.xy : r9.zw;
          r14.y = r13.y ? sunConstants.splitPinTransform[r6.w].w : sunConstants.splitPinTransform[r8.w].w;
          r13.y = r13.y ? r6.w : r8.w;
          r17.x = dot(icb[r12.w+0].yx, r16.xy);
          r17.y = dot(icb[r12.w+0].yx, r16.yz);
          r17.xy = r17.xy * r14.yy + r13.zw;
          r13.y = (int)r13.y + (int16)sunConstants.splitArrayOffset;
          r17.z = (uint)r13.y;
          r13.y = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r3.w).x;
          r13.z = gTransShadowmapArray.SampleLevel(samp0_s, r17.xyz, 0).x;
          r13.y = r13.y + r13.z;
          r13.y = saturate(-1 + r13.y);
          r10.w = r13.y * 0.125 + r10.w;
          r12.w = (int)r12.w + 1;
        }
        r3.w = r10.w * r10.w;
        r5.w = r3.w * r10.w;
      }
    }
  }
  r3.w = 1 + -r1.y;
  r3.w = 5 * r3.w;
  r9.xyz = -globalProbeConstants.data[0].xyz + r10.xyz;
  r16.x = globalProbeConstants.data[0].w * r9.x;
  r16.yz = globalProbeConstants.data[1].xy * r9.yz;
  r9.xyz = saturate(float3(0.5,0.5,0.5) + r16.xyz);
  r16.xy = globalProbeConstants.data[1].zw * r9.xy;
  r16.z = globalProbeConstants.data[2].x * r9.z;
  r9.xyz = globalProbeConstants.data[2].yzw + r16.xyz;
  r13.yzw = cmp(float3(0,0,0) < r11.xyz);
  r16.xyz = r13.yzw ? float3(0,0,0) : float3(0.5,0.5,0.5);
  r16.w = 0;
  r13.yzw = r16.wwx + r9.xyz;
  r13.yzw = gProbeXArray.SampleLevel(samplerLinearClamp_s, r13.yzw, 0).xyz;
  r14.yzw = r11.xyz * r11.xyz;
  r14.yzw = sunConstants.globalProbeExposure * r14.yzw;
  r17.xyz = r16.wwy + r9.xyz;
  r17.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r17.xyz, 0).xyz;
  r17.xyz = r17.xyz * r14.zzz;
  r13.yzw = r13.yzw * r14.yyy + r17.xyz;
  r9.xyz = r16.wwz + r9.xyz;
  r9.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r9.xyz, 0).xyz;
  r9.xyz = r9.xyz * r14.www + r13.yzw;
  r11.w = 0;
  r13.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, 6).xyz;
  r9.xyz = r13.yzw * r9.xyz;
  r6.w = dot(r9.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r15.w = 0;
  r13.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r15.xyzw, r3.w).xyz;
  r3.w = sunConstants.globalProbeExposure + -r6.w;
  r3.w = r1.y * r3.w + r6.w;
  r13.yzw = r13.yzw * r3.www;
  r3.w = r4.z * r1.w + r1.x;
  r3.w = log2(abs(r3.w));
  r3.w = r3.w * r0.w;
  r3.w = exp2(r3.w);
  r1.w = r4.z * r1.w + r3.w;
  r1.w = saturate(-1 + r1.w);
  r9.xyz = r9.xyz * r2.yyy;
  r14.yz = r1.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r14.yz = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r14.yz, 0).xy;
  r13.yzw = r13.yzw * r1.www;
  r15.xyz = r13.yzw * r14.yyy;
  r13.yzw = r13.yzw * r14.zzz;
  r1.y = cmp(0 < r2.w);
  if (r1.y != 0) {
    r1.y = cmp(0 < r5.w);
    if (r1.y != 0) {
      r1.y = sqrt(r0.w);
      r1.y = r1.y * 0.5 + 0.5;
      r1.y = r1.y * r1.y;
      r1.w = 0.5 * r1.y;
      r1.y = -r1.y * 0.5 + 1;
      r2.y = r1.x * r1.y + r1.w;
      r1.yw = r2.yy * r1.yw;
      r2.y = sunConstants.specScale * r0.z;
      r2.y = r2.y * r2.w;
      if (sunConstants.sunCookieIndex != 0) {
        r16.xyz = eyeOffset.xyz + r10.xyz;
        r16.w = 1;
        r3.w = dot(sunConstants.sunCookieTransform[0].xyzw, r16.xyzw);
        r4.z = dot(sunConstants.sunCookieTransform[1].xyzw, r16.xyzw);
        r16.x = frac(r3.w);
        r16.y = frac(r4.z);
        r3.w = -1 + (int14)sunConstants.sunCookieIndex;
        r16.z = (uint)r3.w;
        r14.yzw = gCookieArray.SampleLevel(samplerLinear_s, r16.xyz, 0).xyz;
        r14.yzw = float3(-1,-1,-1) + r14.yzw;
        r14.yzw = sunConstants.sunCookieIntensity * r14.yzw + float3(1,1,1);
        r14.yzw = sunConstants.color.xyz * r14.yzw;
      } else {
        r14.yzw = sunConstants.color.xyz;
      }
      r3.w = viewmodelSunShadowRaw >> 16;
      r4.z = cmp(0 < (uint)r3.w);
      r4.z = r2.x ? r4.z : 0;
      if (r4.z != 0) {
        r3.w = (int)r3.w + numLights;
        r3.w = mad((int)r3.w, 15, -15);
        r4.z = abs(r2.z) * -0.200000003 + 0.400000006;
        r16.xyz = r11.xyz * r4.zzz + r10.xyz;
        r17.xyz = lightConstantsCB[r3.w].data[4].yzw;
        r17.w = lightConstantsCB[r3.w].data[5].x;
        r16.w = 1;
        r17.x = dot(r17.xyzw, r16.xyzw);
        r18.xyz = lightConstantsCB[r3.w].data[5].yzw;
        r18.w = lightConstantsCB[r3.w].data[6].x;
        r17.y = dot(r18.xyzw, r16.xyzw);
        r17.xy = r17.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r18.x = lightConstantsCB[r3.w].data[9].w + r17.x;
        r18.y = lightConstantsCB[r3.w].data[10].x + r17.y;
        r17.xy = lightConstantsCB[r3.w].data[9].yz * r18.xy;
        r17.zw = lightConstantsCB[r3.w].data[3].yy / lightConstantsCB[r3.w].data[8].yw;
        r18.xy = float2(1,1) + -r17.zw;
        r18.xy = cmp(r17.xy >= r18.xy);
        r17.zw = cmp(r17.zw >= r17.xy);
        r17.zw = (int2)r17.zw | (int2)r18.xy;
        r4.z = (int)r17.w | (int)r17.z;
        if (r4.z == 0) {
          r18.xyz = lightConstantsCB[r3.w].data[6].yzw;
          r18.w = lightConstantsCB[r3.w].data[7].x;
          r4.z = dot(r18.xyzw, r16.xyzw);
          r17.xy = saturate(r17.xy);
          r16.x = r17.x * lightConstantsCB[r3.w].data[8].y + lightConstantsCB[r3.w].data[8].z;
          r16.y = r17.y * lightConstantsCB[r3.w].data[8].w + lightConstantsCB[r3.w].data[9].x;
          r4.z = lightConstantsCB[r3.w].data[10].y + r4.z;
          r4.z = r4.z / lightConstantsCB[r3.w].data[10].z;
          r4.z = max(6.10351563e-05, r4.z);
          r6.w = 0x0000ffff & (int)lightConstantsCB[r3.w].data[1].w;
          if (enableDitheredShadow != 0) {
            r17.x = -r13.x;
            r18.z = (uint)r6.w;
            r17.y = r14.x;
            r17.z = r13.x;
            r7.w = 0;
            r8.w = 0;
            while (true) {
              r9.w = cmp((int)r8.w >= 8);
              if (r9.w != 0) break;
              r19.x = dot(icb[r8.w+0].yx, r17.xy);
              r19.y = dot(icb[r8.w+0].yx, r17.yz);
              r18.xy = r19.xy * lightConstantsCB[r3.w].data[3].yy + r16.xy;
              r9.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r4.z).x;
              r7.w = r9.w * 0.125 + r7.w;
              r8.w = (int)r8.w + 1;
            }
          } else {
            r16.z = (uint)r6.w;
            r7.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r4.z).x;
          }
          r3.w = r7.w * r7.w;
          r3.w = r3.w * r7.w;
        } else {
          r3.w = 1;
        }
        r5.w = r5.w * r3.w;
      } else {
        r3.w = viewmodelSunShadowRaw & 0x0000ffff;
        r4.z = cmp(0 < (uint)r3.w);
        r2.x = ~(int)r2.x;
        r2.x = r2.x ? r4.z : 0;
        if (r2.x != 0) {
          r2.x = (int)r3.w + numLights;
          r2.x = mad((int)r2.x, 15, -15);
          r3.w = abs(r2.z) * -0.200000003 + 0.400000006;
          r16.xyz = r11.xyz * r3.www + r10.xyz;
          r17.xyz = lightConstantsCB[r2.x].data[4].yzw;
          r17.w = lightConstantsCB[r2.x].data[5].x;
          r16.w = 1;
          r17.x = dot(r17.xyzw, r16.xyzw);
          r18.xyz = lightConstantsCB[r2.x].data[5].yzw;
          r18.w = lightConstantsCB[r2.x].data[6].x;
          r17.y = dot(r18.xyzw, r16.xyzw);
          r17.xy = r17.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r18.x = lightConstantsCB[r2.x].data[9].w + r17.x;
          r18.y = lightConstantsCB[r2.x].data[10].x + r17.y;
          r17.xy = lightConstantsCB[r2.x].data[9].yz * r18.xy;
          r17.zw = lightConstantsCB[r2.x].data[3].yy / lightConstantsCB[r2.x].data[8].yw;
          r18.xy = float2(1,1) + -r17.zw;
          r18.xy = cmp(r17.xy >= r18.xy);
          r17.zw = cmp(r17.zw >= r17.xy);
          r17.zw = (int2)r17.zw | (int2)r18.xy;
          r3.w = (int)r17.w | (int)r17.z;
          if (r3.w == 0) {
            r18.xyz = lightConstantsCB[r2.x].data[6].yzw;
            r18.w = lightConstantsCB[r2.x].data[7].x;
            r3.w = dot(r18.xyzw, r16.xyzw);
            r17.xy = saturate(r17.xy);
            r16.x = r17.x * lightConstantsCB[r2.x].data[8].y + lightConstantsCB[r2.x].data[8].z;
            r16.y = r17.y * lightConstantsCB[r2.x].data[8].w + lightConstantsCB[r2.x].data[9].x;
            r3.w = lightConstantsCB[r2.x].data[10].y + r3.w;
            r3.w = r3.w / lightConstantsCB[r2.x].data[10].z;
            r3.w = max(6.10351563e-05, r3.w);
            r4.z = 0x0000ffff & (int)lightConstantsCB[r2.x].data[1].w;
            if (enableDitheredShadow != 0) {
              r17.x = -r13.x;
              r18.z = (uint)r4.z;
              r17.y = r14.x;
              r17.z = r13.x;
              r6.w = 0;
              r7.w = 0;
              while (true) {
                r8.w = cmp((int)r7.w >= 8);
                if (r8.w != 0) break;
                r19.x = dot(icb[r7.w+0].yx, r17.xy);
                r19.y = dot(icb[r7.w+0].yx, r17.yz);
                r18.xy = r19.xy * lightConstantsCB[r2.x].data[3].yy + r16.xy;
                r8.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r3.w).x;
                r6.w = r8.w * 0.125 + r6.w;
                r7.w = (int)r7.w + 1;
              }
            } else {
              r16.z = (uint)r4.z;
              r6.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r3.w).x;
            }
            r2.x = r6.w * r6.w;
            r2.x = r2.x * r6.w;
          } else {
            r2.x = 1;
          }
          r5.w = r5.w * r2.x;
        }
      }
      r1.x = -r1.x * 0.5 + 1;
      r1.x = -r2.w * r1.x + 1;
      r1.x = r1.x * r1.x;
      r1.x = -r1.x * 0.620000005 + 0.620000005;
      r1.x = r1.x + -r2.w;
      r0.w = r0.w * r1.x + r2.w;
      r0.w = r0.w * r5.w;
      r1.x = cmp(0 < r2.z);
      r16.xyz = r0.www * r14.yzw + r9.xyz;
      r17.xyz = -r10.xyz * r1.zzz + sunConstants.wldDir.xyz;
      r0.w = dot(r17.xyz, r17.xyz);
      r0.w = rsqrt(r0.w);
      r17.xyz = r17.xyz * r0.www;
      r0.w = dot(r17.xyz, r12.xyz);
      r1.z = dot(r11.xyz, r17.xyz);
      r0.z = abs(r1.z) * r0.z + -abs(r1.z);
      r0.z = abs(r1.z) * r0.z + 1;
      r1.y = r2.w * r1.y + r1.w;
      r0.z = r0.z * r0.z;
      r0.z = r0.z * r1.y;
      r0.z = rcp(r0.z);
      r0.z = r0.z * r2.y;
      r0.z = r5.w * r0.z;
      r0.z = 0.25 * r0.z;
      r1.yzw = r0.zzz * r14.yzw + r13.yzw;
      r0.w = saturate(1 + -r0.w);
      r2.x = r0.w * r0.w;
      r2.x = r2.x * r2.x;
      r0.w = r2.x * r0.w;
      r0.z = r0.z * r0.w;
      r2.xyz = r0.zzz * r14.yzw + r15.xyz;
      r9.xyz = r1.xxx ? r16.xyz : r9.xyz;
      r15.xyz = r1.xxx ? r2.xyz : r15.xyz;
      r13.yzw = r1.xxx ? r1.yzw : r13.yzw;
    }
  }
  r1.xyz = r4.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r0.z = (uint)r1.y;
  r2.xyz = r5.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r2.x;
  r0.w = cmp((int)r0.z == (int)r0.w);
  r2.xy = r0.ww ? r2.yz : float2(-1,0);
  r4.xyz = r6.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r4.x;
  r0.w = cmp((int)r0.z == (int)r0.w);
  r2.zw = r0.ww ? r4.yz : float2(-1,0);
  r4.xyz = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r4.x;
  r0.w = cmp((int)r0.z == (int)r0.w);
  r4.xy = r0.ww ? r4.yz : float2(-1,0);
  r5.xyz = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r5.x;
  r0.z = cmp((int)r0.z == (int)r0.w);
  r0.zw = r0.zz ? r5.yz : float2(-1,0);
  r5.xy = r2.xz;
  r5.z = r4.x;
  r5.w = r0.z;
  r5.xyzw = r5.xyzw + -r1.xxxx;
  r5.xyzw = cmp(abs(r5.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r5.xyzw = r5.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r0.z = r5.x + r5.y;
  r0.z = r0.z + r5.z;
  r0.z = r0.z + r5.w;
  r2.x = r5.y * r2.w;
  r2.x = r5.x * r2.y + r2.x;
  r2.x = r5.z * r4.y + r2.x;
  r0.w = r5.w * r0.w + r2.x;
  r1.w = r0.w / r0.z;
  r0.z = cmp(0 >= r0.z);
  r1.yz = r0.zz ? float2(0,0) : r1.zw;
  r0.zw = (int2)r0.xy & int2(1,1);
  r0.z = cmp((int)r0.w == (int)r0.z);
  r1.xyz = r0.zzz ? r1.xyz : r1.xzy;
  r0.z = -r1.z * 0.5 + r1.x;
  r2.y = r1.z + r0.z;
  r2.z = -r1.y * 0.5 + r0.z;
  r2.x = r2.z + r1.y;
  r1.xyz = float3(1,1,1) + -r2.xyz;
  r1.xyz = r15.xyz * r1.xyz;
  r1.xyz = r13.yzw * r2.xyz + r1.xyz;
  r1.xyz = r9.xyz * r3.xyz + r1.xyz;
  r0.z = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.z != 0) {
    r0.z = dot(r10.xyz, r10.xyz);
    r0.w = rsqrt(r0.z);
    r2.xyz = r10.xyz * r0.www;
    r0.z = sqrt(r0.z);
    r0.w = cmp(0 < fogConstants.blendAmount);
    if (r0.w != 0) {
      r3.xy = r0.zz * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r3.xy = fogConstants.atmospherefogdensityatcamera.xy * r3.xy;
      r0.w = cmp(0.00999999978 < abs(r10.z));
      r3.zw = fogConstants.atmospherefogheightdensityscale.xy * r10.zz;
      r4.xy = float2(-1.44269502,-1.44269502) * r3.zw;
      r4.xy = exp2(r4.xy);
      r4.xy = float2(1,1) + -r4.xy;
      r3.zw = r4.xy / r3.zw;
      r3.zw = r3.xy * r3.zw;
      r3.xy = r0.ww ? r3.zw : r3.xy;
      r3.xzw = fogConstants.atmosphereTotalDensity.xyz * r3.xxx;
      r3.xzw = exp2(r3.xzw);
      r4.xyz = fogConstants.atmosphereTotalDensity.xyz * r3.yyy;
      r4.xyz = exp2(r4.xyz);
      r4.xyz = r4.xyz + -r3.xzw;
      r3.xyz = fogConstants.blendAmount * r4.xyz + r3.xzw;
    } else {
      r0.w = r0.z * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r0.w = fogConstants.atmospherefogdensityatcamera.x * r0.w;
      r1.w = cmp(0.00999999978 < abs(r10.z));
      r2.w = fogConstants.atmospherefogheightdensityscale.x * r10.z;
      r3.w = -1.44269502 * r2.w;
      r3.w = exp2(r3.w);
      r3.w = 1 + -r3.w;
      r2.w = r3.w / r2.w;
      r2.w = r2.w * r0.w;
      r0.w = r1.w ? r2.w : r0.w;
      r4.xyz = fogConstants.atmosphereTotalDensity.xyz * r0.www;
      r3.xyz = exp2(r4.xyz);
    }
    r3.xyz = r3.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r3.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r3.xyz);
    r0.w = dot(fogConstants.wldSunFogDir.xyz, -r2.xyz);
    r1.w = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r2.x = fogConstants.atmosphereMieSchlickK * -r0.w + 1;
    r2.x = r2.x * r2.x;
    r2.x = 12.566371 * r2.x;
    r1.w = r1.w / r2.x;
    r0.z = -fogConstants.atmospherehazebasedist + r0.z;
    r0.z = saturate(fogConstants.atmospherehazefadedist * r0.z);
    r0.z = r1.w * r0.z;
    r0.w = saturate(r0.w);
    r0.w = r0.w * r0.w + 1;
    r0.w = r0.w * 0.0596831031 + -1;
    r0.w = fogConstants.atmospheresunstrength * r0.w + 1;
    r2.xyz = fogConstants.atmosphereMieDensity.xyz * r0.zzz;
    r2.xyz = r0.www * fogConstants.atmosphereRayleighDensity.xyz + r2.xyz;
    r2.xyz = fogConstants.atmosphereInScatterIntensity * r2.xyz;
    r4.xyz = float3(1,1,1) + -r3.xyz;
    r2.xyz = r4.xyz * r2.xyz;
    r2.xyz = r1.xyz * r3.xyz + r2.xyz;
  } else {
    r0.z = fogConstants.heightFalloff * r10.z;
    r0.w = fogConstants.heightFalloff * r10.z + fogConstants.K0;
    r1.w = cmp(abs(r0.z) < 9.99999975e-05);
    r2.w = min(64, r0.w);
    r2.w = 1.44269502 * r2.w;
    r2.w = exp2(r2.w);
    r3.x = saturate(fogConstants.K0b);
    r3.y = cmp(r0.w < 0);
    r0.w = 1 + r0.w;
    r0.w = r3.y ? r2.w : r0.w;
    r0.w = -fogConstants.K0b + r0.w;
    r0.z = r1.w ? 1 : r0.z;
    r0.z = r0.w / r0.z;
    r0.z = r1.w ? r3.x : r0.z;
    r0.z = fogConstants.expMul * r0.z;
    r0.w = dot(r10.xyz, r10.xyz);
    r1.w = sqrt(r0.w);
    r0.z = r0.z * r1.w + fogConstants.expAdd;
    r0.z = exp2(r0.z);
    r0.z = min(1, r0.z);
    r0.z = 1 + -r0.z;
    r0.w = rsqrt(r0.w);
    r3.xyz = r10.xyz * r0.www;
    r0.w = dot(fogConstants.wldSunFogDir.xyz, r3.xyz);
    r0.w = saturate(fogConstants.sunFogAngles.y * r0.w + fogConstants.sunFogAngles.x);
    r3.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r3.xyzw = r0.wwww * r3.xyzw + fogConstants.sunFogColor.xyzw;
    r0.z = r3.w * r0.z;
    r3.xyz = r3.xyz + -r1.xyz;
    r2.xyz = r0.zzz * r3.xyz + r1.xyz;
  }
  r1.xyzw = relHDRExposure.yyyy * r2.xyzx;
  r2.xyzw = cmp(r1.wyzw >= float4(6.10351563e-05,6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r1.xyzw = r2.xyzw ? r1.xyzw : 0;
  r1.xyzw = min(float4(65024,65024,64512,65024), r1.xyzw);
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xyyy, r1.xyzw
  return;
}