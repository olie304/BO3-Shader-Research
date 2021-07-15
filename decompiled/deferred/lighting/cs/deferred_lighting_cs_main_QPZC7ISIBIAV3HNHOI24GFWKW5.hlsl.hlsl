// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:23:51 2021

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
Texture3D<float3> gProbeXArray : register(t17);
Texture3D<float3> gProbeYArray : register(t18);
Texture3D<float3> gProbeZArray : register(t19);
Texture2DArray<float4> gCookieArray : register(t20);
StructuredBuffer<gPermutedTilingBuffer> gPermutedTilingBuffer : register(t25);
Texture2D<float> gSSAOTexture : register(t27);


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
// unknown dcl_: dcl_resource_structured t25, 8
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.x = mad(permuteStride, 23, (int)vThreadGroupID.x);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=8)(mixed,mixed,mixed,mixed) r0.xy, r0.x, l(0), t25.xyxx
r0.x = samplerLinear[]..swiz;
r0.y = samplerLinear[]..swiz;
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
  sincos(r0.w, r15.x, r16.x);
  r2.x = saturate(dot(r11.xyz, r12.xyz));
  r0.w = dot(-r12.xyz, r11.xyz);
  r0.w = r0.w + r0.w;
  r17.xyz = r11.xyz * -r0.www + -r12.xyz;
  r0.w = 17 * r2.y;
  r0.w = exp2(r0.w);
  r0.w = 2 + r0.w;
  r0.w = 2 / r0.w;
  r1.z = sqrt(r0.w);
  r2.zw = renderTargetSize.zw * r9.xy;
  r1.w = gSSAOTexture.SampleLevel(samplerLinearClamp_s, r2.zw, 0).x;
  r2.z = r4.z * r1.w;
  r2.w = 1 + -r2.y;
  r2.w = 5 * r2.w;
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
  r3.w = dot(r9.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r17.w = 0;
  r15.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r17.xyzw, r2.w).xyz;
  r2.w = sunConstants.globalProbeExposure + -r3.w;
  r2.w = r2.y * r2.w + r3.w;
  r15.yzw = r15.yzw * r2.www;
  r2.w = r4.z * r1.w + r2.x;
  r2.w = log2(abs(r2.w));
  r2.w = r2.w * r1.z;
  r2.w = exp2(r2.w);
  r1.w = r4.z * r1.w + r2.w;
  r1.w = saturate(-1 + r1.w);
  r9.xyz = r9.xyz * r2.zzz;
  r16.yzw = r0.zzz ? r9.xyz : 0;
  r2.yz = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r2.yz = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r2.yz, 0).xy;
  r15.yzw = r15.yzw * r1.www;
  r18.xyz = r15.yzw * r2.yyy;
  r2.yzw = r15.yzw * r2.zzz;
  r1.w = sqrt(r1.z);
  r1.w = r1.w * 0.5 + 0.5;
  r1.w = r1.w * r1.w;
  r3.w = 0.5 * r1.w;
  r1.w = -r1.w * 0.5 + 1;
  r4.z = r2.x * r1.w + r3.w;
  r1.w = r4.z * r1.w;
  r3.w = r4.z * r3.w;
  r4.z = (uint)r0.x >> 24;
  if (10 == 0) r0.x = 0; else if (10+12 < 32) {   r0.x = (uint)r0.x << (32-(10 + 12)); r0.x = (uint)r0.x >> (32-10);  } else r0.x = (uint)r0.x >> 12;
  r19.x = -r13.x;
  r5.w = ~(int)r0.y;
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
  r15.yzw = r9.xyz;
  r29.xyz = r16.yzw;
  r30.xyz = r18.xyz;
  r31.xyz = r2.yzw;
  r6.w = 0;
  while (true) {
    r7.w = cmp((int)r6.w == 2);
    if (r7.w != 0) break;
    r7.w = r6.w ? r0.x : r4.z;
    r7.w = (int)r7.w * 15;
    if (3 == 0) r8.w = 0; else if (3+24 < 32) {     r8.w = (uint)lightConstantsCB[r7.w].data[1].w << (32-(3 + 24)); r8.w = (uint)r8.w >> (32-3);    } else r8.w = (uint)lightConstantsCB[r7.w].data[1].w >> 24;
    switch (r8.w) {
      case 4 :      r8.w = cmp(0 < lightConstantsCB[r7.w].data[6].y);
      r32.xy = lightConstantsCB[r7.w].data[5].zw;
      r32.z = lightConstantsCB[r7.w].data[6].x;
      r33.xyz = -r32.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r7.w].data[0].xyz;
      r34.xyz = r33.xyz + -r10.xyz;
      r9.w = dot(r32.xyz, r34.xyz);
      r11.w = saturate(-r9.w / lightConstantsCB[r7.w].data[6].y);
      r35.xyz = r11.www * r32.xyz + r33.xyz;
      r35.xyz = r8.www ? r35.xyz : lightConstantsCB[r7.w].data[0].xyz;
      r35.xyz = r35.xyz + -r10.xyz;
      r12.w = dot(r35.xyz, r35.xyz);
      r13.z = rsqrt(r12.w);
      r35.xyz = r35.xyz * r13.zzz;
      r13.z = dot(r11.xyz, r35.xyz);
      r13.w = saturate(r13.z);
      r13.w = r0.z ? abs(r13.z) : r13.w;
      r14.w = cmp(0 < r13.w);
      if (r14.w != 0) {
        r14.w = sqrt(r12.w);
        r17.w = lightConstantsCB[r7.w].data[3].x * lightConstantsCB[r7.w].data[3].x;
        r12.w = r17.w / r12.w;
        r12.w = min(1, r12.w);
        r35.xy = saturate(r14.ww * lightConstantsCB[r7.w].data[2].xz + lightConstantsCB[r7.w].data[2].yw);
        r35.zw = r35.xy * r35.xy;
        r35.xy = r35.xy * float2(-2,-2) + float2(3,3);
        r35.xy = r35.zw * r35.xy;
        r12.w = r35.x * r12.w;
        r12.w = r12.w * r35.y;
        r14.w = cmp(0 < r12.w);
        if (r14.w != 0) {
          if (3 == 0) r14.w = 0; else if (3+27 < 32) {           r14.w = (uint)lightConstantsCB[r7.w].data[1].w << (32-(3 + 27)); r14.w = (uint)r14.w >> (32-3);          } else r14.w = (uint)lightConstantsCB[r7.w].data[1].w >> 27;
          r14.w = cmp((int)r14.w != 1);
          if (r14.w != 0) {
            r14.w = abs(r13.z) * -0.200000003 + 0.400000006;
            r17.w = cmp(r13.z < 0);
            r17.w = r0.z ? r17.w : 0;
            r14.w = r17.w ? -r14.w : r14.w;
            r35.xyz = r11.xyz * r14.www + r10.xyz;
            r35.xyz = -lightConstantsCB[r7.w].data[4].yzw + r35.xyz;
            r14.w = max(abs(r35.y), abs(r35.z));
            r14.w = max(abs(r35.x), r14.w);
            r14.w = lightConstantsCB[r7.w].data[5].x / r14.w;
            r14.w = lightConstantsCB[r7.w].data[5].y + r14.w;
            r17.w = dot(r35.xyz, r35.xyz);
            r17.w = rsqrt(r17.w);
            r14.w = max(6.10351563e-05, r14.w);
            r18.w = 0x0000ffff & (int)lightConstantsCB[r7.w].data[1].w;
            r36.w = (uint)r18.w;
            r18.w = 0;
            r21.w = 0;
            while (true) {
              r26.w = cmp((int)r21.w >= 8);
              if (r26.w != 0) break;
              r37.y = dot(icb[r21.w+0].yx, r19.xy);
              r37.z = dot(icb[r21.w+0].yx, r19.yz);
              r37.yz = lightConstantsCB[r7.w].data[3].yy * r37.yz;
              r37.x = r37.y * r16.x;
              r37.w = r37.y * r15.x;
              r36.xyz = r35.xyz * r17.www + r37.xzw;
              r26.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r36.xyzw, r14.w).x;
              r18.w = r26.w * 0.125 + r18.w;
              r21.w = (int)r21.w + 1;
            }
          } else {
            r18.w = 1;
          }
          r12.w = r18.w * r12.w;
          r14.w = cmp(0 < r12.w);
          if (r14.w != 0) {
            r14.w = lightConstantsCB[r7.w].data[1].z * r0.w;
            r14.w = 0.25 * r14.w;
            r17.w = dot(r32.xyz, r17.xyz);
            r21.w = dot(r17.xyz, r34.xyz);
            r26.w = -r17.w * r17.w + lightConstantsCB[r7.w].data[6].y;
            r9.w = r17.w * r21.w + -r9.w;
            r9.w = saturate(r9.w / r26.w);
            r17.w = r26.w / lightConstantsCB[r7.w].data[6].y;
            r17.w = 10 * r17.w;
            r17.w = min(1, r17.w);
            r9.w = r9.w + -r11.w;
            r9.w = r17.w * r9.w + r11.w;
            r32.xyz = r9.www * r32.xyz + r33.xyz;
            r32.xyz = r8.www ? r32.xyz : lightConstantsCB[r7.w].data[0].xyz;
            r32.xyz = r32.xyz + -r10.xyz;
            r8.w = dot(r32.xyz, r32.xyz);
            r8.w = rsqrt(r8.w);
            r33.xyz = r32.xyz * r8.www;
            if (4 == 0) r9.w = 0; else if (4+16 < 32) {             r9.w = (uint)lightConstantsCB[r7.w].data[1].w << (32-(4 + 16)); r9.w = (uint)r9.w >> (32-4);            } else r9.w = (uint)lightConstantsCB[r7.w].data[1].w >> 16;
            r11.w = cmp(0 < (uint)r9.w);
            r11.w = r0.y ? r11.w : 0;
            if (r11.w != 0) {
              r9.w = (int)r9.w + numLights;
              r9.w = mad((int)r9.w, 15, -15);
              r11.w = abs(r13.z) * -0.200000003 + 0.400000006;
              r17.w = cmp(r13.z < 0);
              r17.w = r0.z ? r17.w : 0;
              r11.w = r17.w ? -r11.w : r11.w;
              r20.xyz = r11.xyz * r11.www + r10.xyz;
              r34.xyz = lightConstantsCB[r9.w].data[6].yzw;
              r34.w = lightConstantsCB[r9.w].data[7].x;
              r11.w = dot(r34.xyzw, r20.xyzw);
              r34.xyz = lightConstantsCB[r9.w].data[7].yzw;
              r34.w = lightConstantsCB[r9.w].data[8].x;
              r17.w = dot(r34.xyzw, r20.xyzw);
              r21.w = cmp(r17.w < r11.w);
              if (r21.w == 0) {
                r34.xyz = lightConstantsCB[r9.w].data[4].yzw;
                r34.w = lightConstantsCB[r9.w].data[5].x;
                r34.x = dot(r34.xyzw, r20.xyzw);
                r35.xyz = lightConstantsCB[r9.w].data[5].yzw;
                r35.w = lightConstantsCB[r9.w].data[6].x;
                r34.y = dot(r35.xyzw, r20.xyzw);
                r20.xy = r34.xy / r17.ww;
                r20.xy = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r34.x = lightConstantsCB[r9.w].data[9].w + r20.x;
                r34.y = lightConstantsCB[r9.w].data[10].x + r20.y;
                r20.xy = lightConstantsCB[r9.w].data[9].yz * r34.xy;
                r34.xy = lightConstantsCB[r9.w].data[3].yy / lightConstantsCB[r9.w].data[8].yw;
                r34.zw = float2(1,1) + -r34.xy;
                r34.zw = cmp(r20.xy >= r34.zw);
                r34.xy = cmp(r34.xy >= r20.xy);
                r34.xy = (int2)r34.xy | (int2)r34.zw;
                r20.z = (int)r34.y | (int)r34.x;
                if (r20.z == 0) {
                  r20.xy = saturate(r20.xy);
                  r34.x = r20.x * lightConstantsCB[r9.w].data[8].y + lightConstantsCB[r9.w].data[8].z;
                  r34.y = r20.y * lightConstantsCB[r9.w].data[8].w + lightConstantsCB[r9.w].data[9].x;
                  r20.x = lightConstantsCB[r9.w].data[10].z * r17.w;
                  r11.w = lightConstantsCB[r9.w].data[10].y * r17.w + r11.w;
                  r11.w = r11.w / r20.x;
                }
              } else {
                r20.z = -1;
              }
              r17.w = (int)r21.w | (int)r20.z;
              if (r17.w == 0) {
                r11.w = max(6.10351563e-05, r11.w);
                r17.w = 0x0000ffff & (int)lightConstantsCB[r9.w].data[1].w;
                if (enableDitheredShadow != 0) {
                  r20.z = (uint)r17.w;
                  r21.w = 0;
                  r26.w = 0;
                  while (true) {
                    r27.w = cmp((int)r26.w >= 8);
                    if (r27.w != 0) break;
                    r35.x = dot(icb[r26.w+0].yx, r19.xw);
                    r35.y = dot(icb[r26.w+0].xy, r13.xy);
                    r20.xy = r35.xy * lightConstantsCB[r9.w].data[3].yy + r34.xy;
                    r20.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r11.w).x;
                    r21.w = r20.x * 0.125 + r21.w;
                    r26.w = (int)r26.w + 1;
                  }
                } else {
                  r34.z = (uint)r17.w;
                  r21.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r34.xyz, r11.w).x;
                }
                r9.w = r21.w * r21.w;
                r9.w = r9.w * r21.w;
              } else {
                r9.w = 1;
              }
              r12.w = r12.w * r9.w;
            } else {
              if (4 == 0) r9.w = 0; else if (4+20 < 32) {               r9.w = (uint)lightConstantsCB[r7.w].data[1].w << (32-(4 + 20)); r9.w = (uint)r9.w >> (32-4);              } else r9.w = (uint)lightConstantsCB[r7.w].data[1].w >> 20;
              r11.w = cmp(0 < (uint)r9.w);
              r11.w = r11.w ? r5.w : 0;
              if (r11.w != 0) {
                r9.w = (int)r9.w + numLights;
                r9.w = mad((int)r9.w, 15, -15);
                r11.w = abs(r13.z) * -0.200000003 + 0.400000006;
                r17.w = cmp(r13.z < 0);
                r17.w = r0.z ? r17.w : 0;
                r11.w = r17.w ? -r11.w : r11.w;
                r22.xyz = r11.xyz * r11.www + r10.xyz;
                r34.xyz = lightConstantsCB[r9.w].data[6].yzw;
                r34.w = lightConstantsCB[r9.w].data[7].x;
                r11.w = dot(r34.xyzw, r22.xyzw);
                r34.xyz = lightConstantsCB[r9.w].data[7].yzw;
                r34.w = lightConstantsCB[r9.w].data[8].x;
                r17.w = dot(r34.xyzw, r22.xyzw);
                r20.x = cmp(r17.w < r11.w);
                if (r20.x == 0) {
                  r34.xyz = lightConstantsCB[r9.w].data[4].yzw;
                  r34.w = lightConstantsCB[r9.w].data[5].x;
                  r34.x = dot(r34.xyzw, r22.xyzw);
                  r35.xyz = lightConstantsCB[r9.w].data[5].yzw;
                  r35.w = lightConstantsCB[r9.w].data[6].x;
                  r34.y = dot(r35.xyzw, r22.xyzw);
                  r20.yz = r34.xy / r17.ww;
                  r20.yz = r20.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                  r22.x = lightConstantsCB[r9.w].data[9].w + r20.y;
                  r22.y = lightConstantsCB[r9.w].data[10].x + r20.z;
                  r20.yz = lightConstantsCB[r9.w].data[9].yz * r22.xy;
                  r22.xy = lightConstantsCB[r9.w].data[3].yy / lightConstantsCB[r9.w].data[8].yw;
                  r34.xy = float2(1,1) + -r22.xy;
                  r34.xy = cmp(r20.yz >= r34.xy);
                  r22.xy = cmp(r22.xy >= r20.yz);
                  r22.xy = (int2)r22.xy | (int2)r34.xy;
                  r22.x = (int)r22.y | (int)r22.x;
                  if (r22.x == 0) {
                    r20.yz = saturate(r20.yz);
                    r34.x = r20.y * lightConstantsCB[r9.w].data[8].y + lightConstantsCB[r9.w].data[8].z;
                    r34.y = r20.z * lightConstantsCB[r9.w].data[8].w + lightConstantsCB[r9.w].data[9].x;
                    r20.y = lightConstantsCB[r9.w].data[10].z * r17.w;
                    r11.w = lightConstantsCB[r9.w].data[10].y * r17.w + r11.w;
                    r11.w = r11.w / r20.y;
                  }
                } else {
                  r22.x = -1;
                }
                r17.w = (int)r20.x | (int)r22.x;
                if (r17.w == 0) {
                  r11.w = max(6.10351563e-05, r11.w);
                  r17.w = 0x0000ffff & (int)lightConstantsCB[r9.w].data[1].w;
                  if (enableDitheredShadow != 0) {
                    r20.z = (uint)r17.w;
                    r22.xy = float2(0,0);
                    while (true) {
                      r22.z = cmp((int)r22.y >= 8);
                      if (r22.z != 0) break;
                      r35.x = dot(icb[r22.y+0].xy, r14.xy);
                      r35.y = dot(icb[r22.y+0].yx, r14.xz);
                      r20.xy = r35.xy * lightConstantsCB[r9.w].data[3].yy + r34.xy;
                      r20.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r11.w).x;
                      r22.x = r20.x * 0.125 + r22.x;
                      r22.y = (int)r22.y + 1;
                    }
                  } else {
                    r34.z = (uint)r17.w;
                    r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r34.xyz, r11.w).x;
                  }
                  r9.w = r22.x * r22.x;
                  r9.w = r9.w * r22.x;
                } else {
                  r9.w = 1;
                }
                r12.w = r12.w * r9.w;
              }
            }
            r9.w = -r13.w * r2.x + 1;
            r9.w = r9.w * r9.w;
            r9.w = -r9.w * 0.620000005 + 0.620000005;
            r9.w = r9.w + -r13.w;
            r9.w = r1.z * r9.w + r13.w;
            r9.w = r9.w * r12.w;
            r20.x = lightConstantsCB[r7.w].data[0].w;
            r20.yz = lightConstantsCB[r7.w].data[1].xy;
            r11.w = cmp(0 < r13.z);
            r34.xyz = r9.www * r20.xyz + r15.yzw;
            r13.z = saturate(dot(r11.xyz, r33.xyz));
            r32.xyz = r32.xyz * r8.www + r12.xyz;
            r8.w = dot(r32.xyz, r32.xyz);
            r8.w = rsqrt(r8.w);
            r32.xyz = r32.xyz * r8.www;
            r8.w = dot(r32.xyz, r12.xyz);
            r13.w = dot(r11.xyz, r32.xyz);
            r17.w = abs(r13.w) * r0.w + -abs(r13.w);
            r13.w = abs(r13.w) * r17.w + 1;
            r17.w = r13.z * r1.w + r3.w;
            r13.w = r13.w * r13.w;
            r13.w = r13.w * r17.w;
            r13.w = rcp(r13.w);
            r13.z = r13.z * r14.w;
            r13.z = r13.w * r13.z;
            r12.w = r13.z * r12.w;
            r32.xyz = r12.www * r20.xyz + r31.xyz;
            r8.w = saturate(1 + -r8.w);
            r13.z = r8.w * r8.w;
            r13.z = r13.z * r13.z;
            r8.w = r13.z * r8.w;
            r8.w = r12.w * r8.w;
            r33.xyz = r8.www * r20.xyz + r30.xyz;
            r20.xyz = r9.www * r20.xyz + r29.xyz;
            r20.xyz = r0.zzz ? r20.xyz : r29.xyz;
            r15.yzw = r11.www ? r34.xyz : r15.yzw;
            r29.xyz = r11.www ? r29.xyz : r20.xyz;
            r30.xyz = r11.www ? r33.xyz : r30.xyz;
            r31.xyz = r11.www ? r32.xyz : r31.xyz;
          }
        }
      }
      break;
      case 2 :      r20.xy = lightConstantsCB[r7.w].data[3].zw + -r10.xy;
      r20.z = lightConstantsCB[r7.w].data[4].x + -r10.z;
      r8.w = dot(r20.xyz, r20.xyz);
      r8.w = rsqrt(r8.w);
      r32.xyz = r20.xyz * r8.www;
      r9.w = dot(r11.xyz, r32.xyz);
      r11.w = saturate(r9.w);
      r12.w = r0.z ? abs(r9.w) : r11.w;
      r13.z = cmp(0 < r12.w);
      if (r13.z != 0) {
        r32.xyz = lightConstantsCB[r7.w].data[7].yzw;
        r32.w = lightConstantsCB[r7.w].data[8].x;
        r13.z = dot(r32.xyzw, r10.xyzw);
        r13.w = cmp(r13.z < 1);
        if (r13.w != 0) {
          r33.xyz = float3(1,1,1);
          r13.w = 0;
        } else {
          r34.xyz = lightConstantsCB[r7.w].data[0].xyz + -r10.xyz;
          r14.w = lightConstantsCB[r7.w].data[3].x * lightConstantsCB[r7.w].data[3].x;
          r17.w = dot(r34.xyz, r34.xyz);
          r14.w = r14.w / r17.w;
          r14.w = min(1, r14.w);
          r22.yz = saturate(r13.zz * lightConstantsCB[r7.w].data[2].xz + lightConstantsCB[r7.w].data[2].yw);
          r34.xy = r22.yz * r22.yz;
          r22.yz = r22.yz * float2(-2,-2) + float2(3,3);
          r22.yz = r34.xy * r22.yz;
          r14.w = r22.y * r14.w;
          r14.w = r14.w * r22.z;
          r34.xyz = lightConstantsCB[r7.w].data[4].yzw;
          r34.w = lightConstantsCB[r7.w].data[5].x;
          r34.x = dot(r34.xyzw, r10.xyzw);
          r35.xyz = lightConstantsCB[r7.w].data[5].yzw;
          r35.w = lightConstantsCB[r7.w].data[6].x;
          r34.y = dot(r35.xyzw, r10.xyzw);
          r21.xy = r34.xy / r13.zz;
          r13.z = cmp(lightConstantsCB[r7.w].data[10].w < 0.00048828125);
          if (r13.z != 0) {
            r22.yz = saturate(abs(r21.xy) * lightConstantsCB[r7.w].data[12].xy + lightConstantsCB[r7.w].data[12].zw);
            r34.xy = r22.yz * r22.yz;
            r22.yz = r22.yz * float2(-2,-2) + float2(3,3);
            r22.yz = r34.xy * r22.yz;
            r13.z = r22.y * r22.z;
          } else {
            r34.xyzw = saturate(lightConstantsCB[r7.w].data[11].xyzw * abs(r21.yyxx));
            r34.xyzw = log2(r34.xyzw);
            r34.xyzw = lightConstantsCB[r7.w].data[12].zzzz * r34.xyzw;
            r34.xyzw = exp2(r34.xyzw);
            r22.yz = r34.xy + r34.zw;
            r22.yz = log2(r22.yz);
            r22.yz = lightConstantsCB[r7.w].data[12].ww * r22.yz;
            r22.yz = exp2(r22.yz);
            r17.w = lightConstantsCB[r7.w].data[12].x * r22.y;
            r22.y = lightConstantsCB[r7.w].data[12].y * r22.z + -1;
            r17.w = lightConstantsCB[r7.w].data[12].y * r22.z + -r17.w;
            r17.w = saturate(r22.y / r17.w);
            r22.y = r17.w * r17.w;
            r17.w = r17.w * -2 + 3;
            r13.z = r22.y * r17.w;
          }
          r13.w = r14.w * r13.z;
          r13.z = 255 & (int)lightConstantsCB[r7.w].data[14].w;
          if (r13.z != 0) {
            r14.w = dot(lightConstantsCB[r7.w].data[13].xyz, r21.xyz);
            r34.x = lightConstantsCB[r7.w].data[13].w;
            r34.yz = lightConstantsCB[r7.w].data[14].xy;
            r17.w = dot(r34.xyz, r21.xyz);
            r34.x = frac(r14.w);
            r34.y = frac(r17.w);
            r13.z = (int)r13.z + -1;
            r34.z = (uint)r13.z;
            r33.xyz = gCookieArray.SampleLevel(samplerLinear_s, r34.xyz, 0).xyz;
          } else {
            r33.xyz = float3(1,1,1);
          }
        }
        r34.x = lightConstantsCB[r7.w].data[0].w;
        r34.yz = lightConstantsCB[r7.w].data[1].xy;
        r33.xyz = r34.xyz * r33.xyz;
        r13.z = cmp(0 < r13.w);
        if (r13.z != 0) {
          if (3 == 0) r13.z = 0; else if (3+27 < 32) {           r13.z = (uint)lightConstantsCB[r7.w].data[1].w << (32-(3 + 27)); r13.z = (uint)r13.z >> (32-3);          } else r13.z = (uint)lightConstantsCB[r7.w].data[1].w >> 27;
          r13.z = cmp((int)r13.z != 1);
          if (r13.z != 0) {
            r13.z = abs(r9.w) * -0.200000003 + 0.400000006;
            r14.w = cmp(r9.w < 0);
            r14.w = r0.z ? r14.w : 0;
            r13.z = r14.w ? -r13.z : r13.z;
            r23.xyz = r11.xyz * r13.zzz + r10.xyz;
            r34.xyz = lightConstantsCB[r7.w].data[6].yzw;
            r34.w = lightConstantsCB[r7.w].data[7].x;
            r13.z = dot(r34.xyzw, r23.xyzw);
            r14.w = dot(r32.xyzw, r23.xyzw);
            r17.w = cmp(r14.w >= r13.z);
            if (r17.w != 0) {
              r32.xyz = lightConstantsCB[r7.w].data[4].yzw;
              r32.w = lightConstantsCB[r7.w].data[5].x;
              r21.x = dot(r32.xyzw, r23.xyzw);
              r32.xyz = lightConstantsCB[r7.w].data[5].yzw;
              r32.w = lightConstantsCB[r7.w].data[6].x;
              r21.y = dot(r32.xyzw, r23.xyzw);
              r21.xy = r21.xy / r14.ww;
              r21.xy = saturate(r21.xy * float2(0.5,-0.5) + float2(0.5,0.5));
              r23.x = r21.x * lightConstantsCB[r7.w].data[8].y + lightConstantsCB[r7.w].data[8].z;
              r23.y = r21.y * lightConstantsCB[r7.w].data[8].w + lightConstantsCB[r7.w].data[9].x;
              r13.z = r13.z / r14.w;
              r13.z = max(6.10351563e-05, r13.z);
              r14.w = 0x0000ffff & (int)lightConstantsCB[r7.w].data[1].w;
              if (enableDitheredShadow != 0) {
                r32.z = (uint)r14.w;
                r17.w = 0;
                r21.x = 0;
                while (true) {
                  r21.y = cmp((int)r21.x >= 8);
                  if (r21.y != 0) break;
                  r34.x = dot(icb[r21.x+0].xy, r26.xy);
                  r34.y = dot(icb[r21.x+0].yx, r26.xz);
                  r32.xy = r34.xy * lightConstantsCB[r7.w].data[3].yy + r23.xy;
                  r21.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r32.xyz, r13.z).x;
                  r17.w = r21.y * 0.125 + r17.w;
                  r21.x = (int)r21.x + 1;
                }
              } else {
                r23.z = (uint)r14.w;
                r17.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r13.z).x;
              }
              r13.z = r17.w * r17.w;
              r13.z = r13.z * r17.w;
            } else {
              r13.z = 1;
            }
          } else {
            r13.z = 1;
          }
          r13.z = r13.w * r13.z;
          r13.w = cmp(0 < r13.z);
          if (r13.w != 0) {
            r13.w = lightConstantsCB[r7.w].data[1].z * r0.w;
            r13.w = r13.w * r11.w;
            if (4 == 0) r14.w = 0; else if (4+16 < 32) {             r14.w = (uint)lightConstantsCB[r7.w].data[1].w << (32-(4 + 16)); r14.w = (uint)r14.w >> (32-4);            } else r14.w = (uint)lightConstantsCB[r7.w].data[1].w >> 16;
            r21.x = cmp(0 < (uint)r14.w);
            r21.x = r0.y ? r21.x : 0;
            if (r21.x != 0) {
              r14.w = (int)r14.w + numLights;
              r14.w = mad((int)r14.w, 15, -15);
              r21.x = abs(r9.w) * -0.200000003 + 0.400000006;
              r21.y = cmp(r9.w < 0);
              r21.y = r0.z ? r21.y : 0;
              r21.x = r21.y ? -r21.x : r21.x;
              r24.xyz = r11.xyz * r21.xxx + r10.xyz;
              r32.xyz = lightConstantsCB[r14.w].data[6].yzw;
              r32.w = lightConstantsCB[r14.w].data[7].x;
              r21.x = dot(r32.xyzw, r24.xyzw);
              r32.xyz = lightConstantsCB[r14.w].data[7].yzw;
              r32.w = lightConstantsCB[r14.w].data[8].x;
              r21.y = dot(r32.xyzw, r24.xyzw);
              r22.y = cmp(r21.y < r21.x);
              if (r22.y == 0) {
                r32.xyz = lightConstantsCB[r14.w].data[4].yzw;
                r32.w = lightConstantsCB[r14.w].data[5].x;
                r23.x = dot(r32.xyzw, r24.xyzw);
                r32.xyz = lightConstantsCB[r14.w].data[5].yzw;
                r32.w = lightConstantsCB[r14.w].data[6].x;
                r23.y = dot(r32.xyzw, r24.xyzw);
                r23.xy = r23.xy / r21.yy;
                r23.xy = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r24.x = lightConstantsCB[r14.w].data[9].w + r23.x;
                r24.y = lightConstantsCB[r14.w].data[10].x + r23.y;
                r23.xy = lightConstantsCB[r14.w].data[9].yz * r24.xy;
                r24.xy = lightConstantsCB[r14.w].data[3].yy / lightConstantsCB[r14.w].data[8].yw;
                r32.xy = float2(1,1) + -r24.xy;
                r32.xy = cmp(r23.xy >= r32.xy);
                r24.xy = cmp(r24.xy >= r23.xy);
                r24.xy = (int2)r24.xy | (int2)r32.xy;
                r22.z = (int)r24.y | (int)r24.x;
                if (r22.z == 0) {
                  r23.xy = saturate(r23.xy);
                  r24.x = r23.x * lightConstantsCB[r14.w].data[8].y + lightConstantsCB[r14.w].data[8].z;
                  r24.y = r23.y * lightConstantsCB[r14.w].data[8].w + lightConstantsCB[r14.w].data[9].x;
                  r23.x = lightConstantsCB[r14.w].data[10].z * r21.y;
                  r21.x = lightConstantsCB[r14.w].data[10].y * r21.y + r21.x;
                  r21.x = r21.x / r23.x;
                }
              } else {
                r22.z = -1;
              }
              r21.y = (int)r22.y | (int)r22.z;
              if (r21.y == 0) {
                r21.x = max(6.10351563e-05, r21.x);
                r21.y = 0x0000ffff & (int)lightConstantsCB[r14.w].data[1].w;
                if (enableDitheredShadow != 0) {
                  r23.z = (uint)r21.y;
                  r22.yz = float2(0,0);
                  while (true) {
                    r26.w = cmp((int)r22.z >= 8);
                    if (r26.w != 0) break;
                    r32.x = dot(icb[r22.z+0].xy, r27.xy);
                    r32.y = dot(icb[r22.z+0].yx, r27.xz);
                    r23.xy = r32.xy * lightConstantsCB[r14.w].data[3].yy + r24.xy;
                    r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r21.x).x;
                    r22.y = r23.x * 0.125 + r22.y;
                    r22.z = (int)r22.z + 1;
                  }
                } else {
                  r24.z = (uint)r21.y;
                  r22.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r21.x).x;
                }
                r14.w = r22.y * r22.y;
                r14.w = r14.w * r22.y;
              } else {
                r14.w = 1;
              }
              r13.z = r14.w * r13.z;
            } else {
              if (4 == 0) r7.w = 0; else if (4+20 < 32) {               r7.w = (uint)lightConstantsCB[r7.w].data[1].w << (32-(4 + 20)); r7.w = (uint)r7.w >> (32-4);              } else r7.w = (uint)lightConstantsCB[r7.w].data[1].w >> 20;
              r14.w = cmp(0 < (uint)r7.w);
              r14.w = r14.w ? r5.w : 0;
              if (r14.w != 0) {
                r7.w = (int)r7.w + numLights;
                r7.w = mad((int)r7.w, 15, -15);
                r14.w = abs(r9.w) * -0.200000003 + 0.400000006;
                r21.x = cmp(r9.w < 0);
                r21.x = r0.z ? r21.x : 0;
                r14.w = r21.x ? -r14.w : r14.w;
                r25.xyz = r11.xyz * r14.www + r10.xyz;
                r32.xyz = lightConstantsCB[r7.w].data[6].yzw;
                r32.w = lightConstantsCB[r7.w].data[7].x;
                r14.w = dot(r32.xyzw, r25.xyzw);
                r32.xyz = lightConstantsCB[r7.w].data[7].yzw;
                r32.w = lightConstantsCB[r7.w].data[8].x;
                r21.x = dot(r32.xyzw, r25.xyzw);
                r21.y = cmp(r21.x < r14.w);
                if (r21.y == 0) {
                  r32.xyz = lightConstantsCB[r7.w].data[4].yzw;
                  r32.w = lightConstantsCB[r7.w].data[5].x;
                  r23.x = dot(r32.xyzw, r25.xyzw);
                  r32.xyz = lightConstantsCB[r7.w].data[5].yzw;
                  r32.w = lightConstantsCB[r7.w].data[6].x;
                  r23.y = dot(r32.xyzw, r25.xyzw);
                  r23.xy = r23.xy / r21.xx;
                  r23.xy = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                  r24.x = lightConstantsCB[r7.w].data[9].w + r23.x;
                  r24.y = lightConstantsCB[r7.w].data[10].x + r23.y;
                  r23.xy = lightConstantsCB[r7.w].data[9].yz * r24.xy;
                  r24.xy = lightConstantsCB[r7.w].data[3].yy / lightConstantsCB[r7.w].data[8].yw;
                  r25.xy = float2(1,1) + -r24.xy;
                  r25.xy = cmp(r23.xy >= r25.xy);
                  r24.xy = cmp(r24.xy >= r23.xy);
                  r24.xy = (int2)r24.xy | (int2)r25.xy;
                  r22.z = (int)r24.y | (int)r24.x;
                  if (r22.z == 0) {
                    r23.xy = saturate(r23.xy);
                    r24.x = r23.x * lightConstantsCB[r7.w].data[8].y + lightConstantsCB[r7.w].data[8].z;
                    r24.y = r23.y * lightConstantsCB[r7.w].data[8].w + lightConstantsCB[r7.w].data[9].x;
                    r23.x = lightConstantsCB[r7.w].data[10].z * r21.x;
                    r14.w = lightConstantsCB[r7.w].data[10].y * r21.x + r14.w;
                    r14.w = r14.w / r23.x;
                  }
                } else {
                  r22.z = -1;
                }
                r21.x = (int)r21.y | (int)r22.z;
                if (r21.x == 0) {
                  r14.w = max(6.10351563e-05, r14.w);
                  r21.x = 0x0000ffff & (int)lightConstantsCB[r7.w].data[1].w;
                  if (enableDitheredShadow != 0) {
                    r23.z = (uint)r21.x;
                    r21.y = 0;
                    r22.z = 0;
                    while (true) {
                      r25.x = cmp((int)r22.z >= 8);
                      if (r25.x != 0) break;
                      r25.x = dot(icb[r22.z+0].xy, r28.xy);
                      r25.y = dot(icb[r22.z+0].yx, r28.xz);
                      r23.xy = r25.xy * lightConstantsCB[r7.w].data[3].yy + r24.xy;
                      r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r14.w).x;
                      r21.y = r23.x * 0.125 + r21.y;
                      r22.z = (int)r22.z + 1;
                    }
                  } else {
                    r24.z = (uint)r21.x;
                    r21.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r14.w).x;
                  }
                  r7.w = r21.y * r21.y;
                  r7.w = r7.w * r21.y;
                } else {
                  r7.w = 1;
                }
                r13.z = r13.z * r7.w;
              }
            }
            r7.w = -r12.w * r2.x + 1;
            r7.w = r7.w * r7.w;
            r7.w = -r7.w * 0.620000005 + 0.620000005;
            r7.w = r7.w + -r12.w;
            r7.w = r1.z * r7.w + r12.w;
            r7.w = r7.w * r13.z;
            r9.w = cmp(0 < r9.w);
            r23.xyz = r7.www * r33.xyz + r15.yzw;
            r20.xyz = r20.xyz * r8.www + r12.xyz;
            r8.w = dot(r20.xyz, r20.xyz);
            r8.w = rsqrt(r8.w);
            r20.xyz = r20.xyz * r8.www;
            r8.w = dot(r20.xyz, r12.xyz);
            r12.w = dot(r11.xyz, r20.xyz);
            r14.w = abs(r12.w) * r0.w + -abs(r12.w);
            r12.w = abs(r12.w) * r14.w + 1;
            r11.w = r11.w * r1.w + r3.w;
            r12.w = r12.w * r12.w;
            r11.w = r12.w * r11.w;
            r11.w = rcp(r11.w);
            r11.w = r11.w * r13.w;
            r11.w = r13.z * r11.w;
            r11.w = 0.25 * r11.w;
            r20.xyz = r11.www * r33.xyz + r31.xyz;
            r8.w = saturate(1 + -r8.w);
            r12.w = r8.w * r8.w;
            r12.w = r12.w * r12.w;
            r8.w = r12.w * r8.w;
            r8.w = r11.w * r8.w;
            r24.xyz = r8.www * r33.xyz + r30.xyz;
            r25.xyz = r7.www * r33.xyz + r29.xyz;
            r25.xyz = r0.zzz ? r25.xyz : r29.xyz;
            r15.yzw = r9.www ? r23.xyz : r15.yzw;
            r29.xyz = r9.www ? r29.xyz : r25.xyz;
            r30.xyz = r9.www ? r24.xyz : r30.xyz;
            r31.xyz = r9.www ? r20.xyz : r31.xyz;
          }
        }
      }
      break;
      default :
      break;
    }
    r6.w = (int)r6.w + 1;
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
  r0.xyw = r29.xyz * r2.xyz + r0.xyw;
  r4.xyz = float3(0.959999979,0.959999979,0.959999979) * r30.xyz;
  r4.xyz = r31.xyz * float3(0.0399999991,0.0399999991,0.0399999991) + r4.xyz;
  r0.xyw = r4.xyz + r0.xyw;
  r4.xyz = float3(1,1,1) + -r2.xyz;
  r4.xyz = r30.xyz * r4.xyz;
  r2.xyz = r31.xyz * r2.xyz + r4.xyz;
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