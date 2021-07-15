// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:23:18 2021

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
Texture2D<float> gSSAODepthTexture : register(t28);


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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.x = mad(permuteStride, 22, (int)vThreadGroupID.x);
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
  r1.zw = (uint2)r1.xy;
  r9.xy = float2(0.5,0.5) + r1.zw;
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
  r2.zw = renderTargetSize.zw * r9.xy;
  r16.xyzw = gSSAOTexture.Gather(samplerLinearClamp_s, r2.zw).xyzw;
  r17.xyzw = gSSAODepthTexture.Gather(samplerLinearClamp_s, r2.zw).xyzw;
  r2.zw = float2(0.5,0.5) * r9.xy;
  r2.zw = frac(r2.zw);
  r9.xy = float2(1,1) + -r2.wz;
  r18.y = r9.y * r9.x;
  r18.xz = r9.xy * r2.zw;
  r18.w = r2.z * r2.w;
  r2.z = dot(r16.xyzw, r18.xyzw);
  r9.xyzw = r17.xyzw + -r0.wwww;
  r2.w = min(abs(r9.z), abs(r9.w));
  r2.w = min(abs(r9.y), r2.w);
  r2.w = min(abs(r9.x), r2.w);
  r3.w = max(abs(r9.z), abs(r9.w));
  r3.w = max(abs(r9.y), r3.w);
  r3.w = max(abs(r9.x), r3.w);
  r9.xyz = cmp(r2.www == abs(r9.yzw));
  r2.w = r9.x ? r16.y : r16.x;
  r2.w = r9.y ? r16.z : r2.w;
  r2.w = r9.z ? r16.w : r2.w;
  r0.w = 0.00999999978 * r0.w;
  r0.w = cmp(r0.w < r3.w);
  r0.w = r0.w ? r2.w : r2.z;
  r2.z = r4.z * r0.w;
  r2.w = 1 + -r2.y;
  r2.w = 5 * r2.w;
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
  r3.w = dot(r9.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r15.w = 0;
  r13.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r15.xyzw, r2.w).xyz;
  r2.w = sunConstants.globalProbeExposure + -r3.w;
  r2.w = r2.y * r2.w + r3.w;
  r13.yzw = r13.yzw * r2.www;
  r2.w = r4.z * r0.w + r2.x;
  r2.w = log2(abs(r2.w));
  r2.w = r2.w * r1.w;
  r2.w = exp2(r2.w);
  r0.w = r4.z * r0.w + r2.w;
  r0.w = saturate(-1 + r0.w);
  r14.yzw = r9.xyz * r2.zzz;
  r16.xyz = r0.zzz ? r14.yzw : 0;
  r2.yw = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r2.yw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r2.yw, 0).xy;
  r13.yzw = r13.yzw * r0.www;
  r17.xyz = r13.yzw * r2.yyy;
  r13.yzw = r13.yzw * r2.www;
  r0.w = sqrt(r1.w);
  r0.w = r0.w * 0.5 + 0.5;
  r0.w = r0.w * r0.w;
  r2.y = 0.5 * r0.w;
  r0.w = -r0.w * 0.5 + 1;
  r2.w = r2.x * r0.w + r2.y;
  r0.w = r2.w * r0.w;
  r2.y = r2.y * r2.w;
  r0.x = (uint)r0.x >> 24;
  r0.x = (int)r0.x * 15;
  if (3 == 0) r2.w = 0; else if (3+24 < 32) {   r2.w = (uint)lightConstantsCB[r0.x].data[1].w << (32-(3 + 24)); r2.w = (uint)r2.w >> (32-3);  } else r2.w = (uint)lightConstantsCB[r0.x].data[1].w >> 24;
  switch (r2.w) {
    case 4 :    r2.w = cmp(0 < lightConstantsCB[r0.x].data[6].y);
    r18.xy = lightConstantsCB[r0.x].data[5].zw;
    r18.z = lightConstantsCB[r0.x].data[6].x;
    r19.xyz = -r18.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r0.x].data[0].xyz;
    r20.xyz = r19.xyz + -r10.xyz;
    r3.w = dot(r18.xyz, r20.xyz);
    r4.z = saturate(-r3.w / lightConstantsCB[r0.x].data[6].y);
    r21.xyz = r4.zzz * r18.xyz + r19.xyz;
    r21.xyz = r2.www ? r21.xyz : lightConstantsCB[r0.x].data[0].xyz;
    r21.xyz = r21.xyz + -r10.xyz;
    r5.w = dot(r21.xyz, r21.xyz);
    r6.w = rsqrt(r5.w);
    r21.xyz = r21.xyz * r6.www;
    r6.w = dot(r11.xyz, r21.xyz);
    r7.w = saturate(r6.w);
    r7.w = r0.z ? abs(r6.w) : r7.w;
    r8.w = cmp(0 < r7.w);
    if (r8.w != 0) {
      r8.w = sqrt(r5.w);
      r9.w = lightConstantsCB[r0.x].data[3].x * lightConstantsCB[r0.x].data[3].x;
      r5.w = r9.w / r5.w;
      r5.w = min(1, r5.w);
      r21.xy = saturate(r8.ww * lightConstantsCB[r0.x].data[2].xz + lightConstantsCB[r0.x].data[2].yw);
      r21.zw = r21.xy * r21.xy;
      r21.xy = r21.xy * float2(-2,-2) + float2(3,3);
      r21.xy = r21.zw * r21.xy;
      r5.w = r21.x * r5.w;
      r5.w = r5.w * r21.y;
      r8.w = cmp(0 < r5.w);
      if (r8.w != 0) {
        if (3 == 0) r8.w = 0; else if (3+27 < 32) {         r8.w = (uint)lightConstantsCB[r0.x].data[1].w << (32-(3 + 27)); r8.w = (uint)r8.w >> (32-3);        } else r8.w = (uint)lightConstantsCB[r0.x].data[1].w >> 27;
        r8.w = cmp((int)r8.w != 1);
        if (r8.w != 0) {
          r21.xy = (uint2)r1.yx;
          r8.w = dot(r21.xy, float2(0.0671105608,0.00583714992));
          r8.w = frac(r8.w);
          r8.w = 52.9829178 * r8.w;
          r8.w = frac(r8.w);
          r8.w = r8.w * 6.28318548 + gameTick.w;
          sincos(r8.w, r21.x, r22.x);
          r8.w = abs(r6.w) * -0.200000003 + 0.400000006;
          r9.w = cmp(r6.w < 0);
          r9.w = r0.z ? r9.w : 0;
          r8.w = r9.w ? -r8.w : r8.w;
          r21.yzw = r11.xyz * r8.www + r10.xyz;
          r21.yzw = -lightConstantsCB[r0.x].data[4].yzw + r21.yzw;
          r8.w = max(abs(r21.z), abs(r21.w));
          r8.w = max(abs(r21.y), r8.w);
          r8.w = lightConstantsCB[r0.x].data[5].x / r8.w;
          r8.w = lightConstantsCB[r0.x].data[5].y + r8.w;
          r9.w = dot(r21.yzw, r21.yzw);
          r9.w = rsqrt(r9.w);
          r8.w = max(6.10351563e-05, r8.w);
          r11.w = 0x0000ffff & (int)lightConstantsCB[r0.x].data[1].w;
          r23.x = -r13.x;
          r24.w = (uint)r11.w;
          r23.y = r14.x;
          r23.z = r13.x;
          r11.w = 0;
          r12.w = 0;
          while (true) {
            r15.w = cmp((int)r12.w >= 8);
            if (r15.w != 0) break;
            r22.y = dot(icb[r12.w+0].yx, r23.xy);
            r22.z = dot(icb[r12.w+0].yx, r23.yz);
            r25.yz = lightConstantsCB[r0.x].data[3].yy * r22.yz;
            r25.x = r25.y * r22.x;
            r25.w = r25.y * r21.x;
            r24.xyz = r21.yzw * r9.www + r25.xzw;
            r15.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyzw, r8.w).x;
            r11.w = r15.w * 0.125 + r11.w;
            r12.w = (int)r12.w + 1;
          }
        } else {
          r11.w = 1;
        }
        r5.w = r11.w * r5.w;
        r8.w = cmp(0 < r5.w);
        if (r8.w != 0) {
          r8.w = lightConstantsCB[r0.x].data[1].z * r1.z;
          r8.w = 0.25 * r8.w;
          r9.w = dot(r18.xyz, r15.xyz);
          r11.w = dot(r15.xyz, r20.xyz);
          r12.w = -r9.w * r9.w + lightConstantsCB[r0.x].data[6].y;
          r3.w = r9.w * r11.w + -r3.w;
          r3.w = saturate(r3.w / r12.w);
          r9.w = r12.w / lightConstantsCB[r0.x].data[6].y;
          r9.w = 10 * r9.w;
          r9.w = min(1, r9.w);
          r3.w = r3.w + -r4.z;
          r3.w = r9.w * r3.w + r4.z;
          r15.xyz = r3.www * r18.xyz + r19.xyz;
          r15.xyz = r2.www ? r15.xyz : lightConstantsCB[r0.x].data[0].xyz;
          r15.xyz = r15.xyz + -r10.xyz;
          r2.w = dot(r15.xyz, r15.xyz);
          r2.w = rsqrt(r2.w);
          r18.xyz = r15.xyz * r2.www;
          if (4 == 0) r3.w = 0; else if (4+16 < 32) {           r3.w = (uint)lightConstantsCB[r0.x].data[1].w << (32-(4 + 16)); r3.w = (uint)r3.w >> (32-4);          } else r3.w = (uint)lightConstantsCB[r0.x].data[1].w >> 16;
          r4.z = cmp(0 < (uint)r3.w);
          r4.z = r0.y ? r4.z : 0;
          if (r4.z != 0) {
            r3.w = (int)r3.w + numLights;
            r3.w = mad((int)r3.w, 15, -15);
            r4.z = abs(r6.w) * -0.200000003 + 0.400000006;
            r9.w = cmp(r6.w < 0);
            r9.w = r0.z ? r9.w : 0;
            r4.z = r9.w ? -r4.z : r4.z;
            r19.xyz = r11.xyz * r4.zzz + r10.xyz;
            r20.xyz = lightConstantsCB[r3.w].data[6].yzw;
            r20.w = lightConstantsCB[r3.w].data[7].x;
            r19.w = 1;
            r4.z = dot(r20.xyzw, r19.xyzw);
            r20.xyz = lightConstantsCB[r3.w].data[7].yzw;
            r20.w = lightConstantsCB[r3.w].data[8].x;
            r9.w = dot(r20.xyzw, r19.xyzw);
            r11.w = cmp(r9.w < r4.z);
            if (r11.w == 0) {
              r20.xyz = lightConstantsCB[r3.w].data[4].yzw;
              r20.w = lightConstantsCB[r3.w].data[5].x;
              r20.x = dot(r20.xyzw, r19.xyzw);
              r21.xyz = lightConstantsCB[r3.w].data[5].yzw;
              r21.w = lightConstantsCB[r3.w].data[6].x;
              r20.y = dot(r21.xyzw, r19.xyzw);
              r19.xy = r20.xy / r9.ww;
              r19.xy = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
              r20.x = lightConstantsCB[r3.w].data[9].w + r19.x;
              r20.y = lightConstantsCB[r3.w].data[10].x + r19.y;
              r19.xy = lightConstantsCB[r3.w].data[9].yz * r20.xy;
              r19.zw = lightConstantsCB[r3.w].data[3].yy / lightConstantsCB[r3.w].data[8].yw;
              r20.xy = float2(1,1) + -r19.zw;
              r20.xy = cmp(r19.xy >= r20.xy);
              r19.zw = cmp(r19.zw >= r19.xy);
              r19.zw = (int2)r19.zw | (int2)r20.xy;
              r12.w = (int)r19.w | (int)r19.z;
              if (r12.w == 0) {
                r19.xy = saturate(r19.xy);
                r20.x = r19.x * lightConstantsCB[r3.w].data[8].y + lightConstantsCB[r3.w].data[8].z;
                r20.y = r19.y * lightConstantsCB[r3.w].data[8].w + lightConstantsCB[r3.w].data[9].x;
                r15.w = lightConstantsCB[r3.w].data[10].z * r9.w;
                r4.z = lightConstantsCB[r3.w].data[10].y * r9.w + r4.z;
                r4.z = r4.z / r15.w;
              }
            } else {
              r12.w = -1;
            }
            r9.w = (int)r11.w | (int)r12.w;
            if (r9.w == 0) {
              r4.z = max(6.10351563e-05, r4.z);
              r9.w = 0x0000ffff & (int)lightConstantsCB[r3.w].data[1].w;
              if (enableDitheredShadow != 0) {
                r19.x = -r13.x;
                r21.z = (uint)r9.w;
                r19.y = r14.x;
                r19.z = r13.x;
                r11.w = 0;
                r12.w = 0;
                while (true) {
                  r15.w = cmp((int)r12.w >= 8);
                  if (r15.w != 0) break;
                  r22.x = dot(icb[r12.w+0].yx, r19.xy);
                  r22.y = dot(icb[r12.w+0].yx, r19.yz);
                  r21.xy = r22.xy * lightConstantsCB[r3.w].data[3].yy + r20.xy;
                  r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r4.z).x;
                  r11.w = r15.w * 0.125 + r11.w;
                  r12.w = (int)r12.w + 1;
                }
              } else {
                r20.z = (uint)r9.w;
                r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r4.z).x;
              }
              r3.w = r11.w * r11.w;
              r3.w = r3.w * r11.w;
            } else {
              r3.w = 1;
            }
            r5.w = r5.w * r3.w;
          } else {
            if (4 == 0) r3.w = 0; else if (4+20 < 32) {             r3.w = (uint)lightConstantsCB[r0.x].data[1].w << (32-(4 + 20)); r3.w = (uint)r3.w >> (32-4);            } else r3.w = (uint)lightConstantsCB[r0.x].data[1].w >> 20;
            r4.z = cmp(0 < (uint)r3.w);
            r9.w = ~(int)r0.y;
            r4.z = r4.z ? r9.w : 0;
            if (r4.z != 0) {
              r3.w = (int)r3.w + numLights;
              r3.w = mad((int)r3.w, 15, -15);
              r4.z = abs(r6.w) * -0.200000003 + 0.400000006;
              r9.w = cmp(r6.w < 0);
              r9.w = r0.z ? r9.w : 0;
              r4.z = r9.w ? -r4.z : r4.z;
              r19.xyz = r11.xyz * r4.zzz + r10.xyz;
              r20.xyz = lightConstantsCB[r3.w].data[6].yzw;
              r20.w = lightConstantsCB[r3.w].data[7].x;
              r19.w = 1;
              r4.z = dot(r20.xyzw, r19.xyzw);
              r20.xyz = lightConstantsCB[r3.w].data[7].yzw;
              r20.w = lightConstantsCB[r3.w].data[8].x;
              r9.w = dot(r20.xyzw, r19.xyzw);
              r11.w = cmp(r9.w < r4.z);
              if (r11.w == 0) {
                r20.xyz = lightConstantsCB[r3.w].data[4].yzw;
                r20.w = lightConstantsCB[r3.w].data[5].x;
                r20.x = dot(r20.xyzw, r19.xyzw);
                r21.xyz = lightConstantsCB[r3.w].data[5].yzw;
                r21.w = lightConstantsCB[r3.w].data[6].x;
                r20.y = dot(r21.xyzw, r19.xyzw);
                r19.xy = r20.xy / r9.ww;
                r19.xy = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r20.x = lightConstantsCB[r3.w].data[9].w + r19.x;
                r20.y = lightConstantsCB[r3.w].data[10].x + r19.y;
                r19.xy = lightConstantsCB[r3.w].data[9].yz * r20.xy;
                r19.zw = lightConstantsCB[r3.w].data[3].yy / lightConstantsCB[r3.w].data[8].yw;
                r20.xy = float2(1,1) + -r19.zw;
                r20.xy = cmp(r19.xy >= r20.xy);
                r19.zw = cmp(r19.zw >= r19.xy);
                r19.zw = (int2)r19.zw | (int2)r20.xy;
                r12.w = (int)r19.w | (int)r19.z;
                if (r12.w == 0) {
                  r19.xy = saturate(r19.xy);
                  r20.x = r19.x * lightConstantsCB[r3.w].data[8].y + lightConstantsCB[r3.w].data[8].z;
                  r20.y = r19.y * lightConstantsCB[r3.w].data[8].w + lightConstantsCB[r3.w].data[9].x;
                  r15.w = lightConstantsCB[r3.w].data[10].z * r9.w;
                  r4.z = lightConstantsCB[r3.w].data[10].y * r9.w + r4.z;
                  r4.z = r4.z / r15.w;
                }
              } else {
                r12.w = -1;
              }
              r9.w = (int)r11.w | (int)r12.w;
              if (r9.w == 0) {
                r4.z = max(6.10351563e-05, r4.z);
                r9.w = 0x0000ffff & (int)lightConstantsCB[r3.w].data[1].w;
                if (enableDitheredShadow != 0) {
                  r19.x = -r13.x;
                  r21.z = (uint)r9.w;
                  r19.y = r14.x;
                  r19.z = r13.x;
                  r11.w = 0;
                  r12.w = 0;
                  while (true) {
                    r15.w = cmp((int)r12.w >= 8);
                    if (r15.w != 0) break;
                    r22.x = dot(icb[r12.w+0].yx, r19.xy);
                    r22.y = dot(icb[r12.w+0].yx, r19.yz);
                    r21.xy = r22.xy * lightConstantsCB[r3.w].data[3].yy + r20.xy;
                    r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r4.z).x;
                    r11.w = r15.w * 0.125 + r11.w;
                    r12.w = (int)r12.w + 1;
                  }
                } else {
                  r20.z = (uint)r9.w;
                  r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r4.z).x;
                }
                r3.w = r11.w * r11.w;
                r3.w = r3.w * r11.w;
              } else {
                r3.w = 1;
              }
              r5.w = r5.w * r3.w;
            }
          }
          r3.w = -r2.x * 0.5 + 1;
          r3.w = -r7.w * r3.w + 1;
          r3.w = r3.w * r3.w;
          r3.w = -r3.w * 0.620000005 + 0.620000005;
          r3.w = r3.w + -r7.w;
          r3.w = r1.w * r3.w + r7.w;
          r3.w = r3.w * r5.w;
          r19.x = lightConstantsCB[r0.x].data[0].w;
          r19.yz = lightConstantsCB[r0.x].data[1].xy;
          r20.xyz = r19.xyz * r3.www;
          r4.z = cmp(0 < r6.w);
          r20.xyz = r9.xyz * r2.zzz + r20.xyz;
          r6.w = saturate(dot(r11.xyz, r18.xyz));
          r15.xyz = r15.xyz * r2.www + r12.xyz;
          r2.w = dot(r15.xyz, r15.xyz);
          r2.w = rsqrt(r2.w);
          r15.xyz = r15.xyz * r2.www;
          r2.w = dot(r15.xyz, r12.xyz);
          r7.w = dot(r11.xyz, r15.xyz);
          r9.w = abs(r7.w) * r1.z + -abs(r7.w);
          r7.w = abs(r7.w) * r9.w + 1;
          r9.w = r6.w * r0.w + r2.y;
          r7.w = r7.w * r7.w;
          r7.w = r7.w * r9.w;
          r7.w = rcp(r7.w);
          r6.w = r6.w * r8.w;
          r6.w = r7.w * r6.w;
          r5.w = r6.w * r5.w;
          r15.xyz = r5.www * r19.xyz + r13.yzw;
          r2.w = saturate(1 + -r2.w);
          r6.w = r2.w * r2.w;
          r6.w = r6.w * r6.w;
          r2.w = r6.w * r2.w;
          r2.w = r5.w * r2.w;
          r18.xyz = r2.www * r19.xyz + r17.xyz;
          r19.xyz = r3.www * r19.xyz + r16.xyz;
          r19.xyz = r0.zzz ? r19.xyz : 0;
          r14.yzw = r4.zzz ? r20.xyz : r14.yzw;
          r16.xyz = r4.zzz ? r16.xyz : r19.xyz;
          r17.xyz = r4.zzz ? r18.xyz : r17.xyz;
          r13.yzw = r4.zzz ? r15.xyz : r13.yzw;
        }
      }
    }
    break;
    case 2 :    r15.xy = lightConstantsCB[r0.x].data[3].zw + -r10.xy;
    r15.z = lightConstantsCB[r0.x].data[4].x + -r10.z;
    r2.w = dot(r15.xyz, r15.xyz);
    r2.w = rsqrt(r2.w);
    r18.xyz = r15.xyz * r2.www;
    r3.w = dot(r11.xyz, r18.xyz);
    r4.z = saturate(r3.w);
    r5.w = r0.z ? abs(r3.w) : r4.z;
    r6.w = cmp(0 < r5.w);
    if (r6.w != 0) {
      r18.xyz = lightConstantsCB[r0.x].data[7].yzw;
      r18.w = lightConstantsCB[r0.x].data[8].x;
      r10.w = 1;
      r6.w = dot(r18.xyzw, r10.xyzw);
      r7.w = cmp(r6.w < 1);
      if (r7.w != 0) {
        r19.xyz = float3(1,1,1);
        r7.w = 0;
      } else {
        r20.xyz = lightConstantsCB[r0.x].data[0].xyz + -r10.xyz;
        r8.w = lightConstantsCB[r0.x].data[3].x * lightConstantsCB[r0.x].data[3].x;
        r9.w = dot(r20.xyz, r20.xyz);
        r8.w = r8.w / r9.w;
        r8.w = min(1, r8.w);
        r20.xy = saturate(r6.ww * lightConstantsCB[r0.x].data[2].xz + lightConstantsCB[r0.x].data[2].yw);
        r20.zw = r20.xy * r20.xy;
        r20.xy = r20.xy * float2(-2,-2) + float2(3,3);
        r20.xy = r20.zw * r20.xy;
        r8.w = r20.x * r8.w;
        r8.w = r8.w * r20.y;
        r20.xyz = lightConstantsCB[r0.x].data[4].yzw;
        r20.w = lightConstantsCB[r0.x].data[5].x;
        r20.x = dot(r20.xyzw, r10.xyzw);
        r21.xyz = lightConstantsCB[r0.x].data[5].yzw;
        r21.w = lightConstantsCB[r0.x].data[6].x;
        r20.y = dot(r21.xyzw, r10.xyzw);
        r20.xy = r20.xy / r6.ww;
        r6.w = cmp(lightConstantsCB[r0.x].data[10].w < 0.00048828125);
        if (r6.w != 0) {
          r21.xy = saturate(abs(r20.xy) * lightConstantsCB[r0.x].data[12].xy + lightConstantsCB[r0.x].data[12].zw);
          r21.zw = r21.xy * r21.xy;
          r21.xy = r21.xy * float2(-2,-2) + float2(3,3);
          r21.xy = r21.zw * r21.xy;
          r6.w = r21.x * r21.y;
        } else {
          r21.xyzw = saturate(lightConstantsCB[r0.x].data[11].xyzw * abs(r20.yyxx));
          r21.xyzw = log2(r21.xyzw);
          r21.xyzw = lightConstantsCB[r0.x].data[12].zzzz * r21.xyzw;
          r21.xyzw = exp2(r21.xyzw);
          r21.xy = r21.xy + r21.zw;
          r21.xy = log2(r21.xy);
          r21.xy = lightConstantsCB[r0.x].data[12].ww * r21.xy;
          r21.xy = exp2(r21.xy);
          r9.w = lightConstantsCB[r0.x].data[12].x * r21.x;
          r10.w = lightConstantsCB[r0.x].data[12].y * r21.y + -1;
          r9.w = lightConstantsCB[r0.x].data[12].y * r21.y + -r9.w;
          r9.w = saturate(r10.w / r9.w);
          r10.w = r9.w * r9.w;
          r9.w = r9.w * -2 + 3;
          r6.w = r10.w * r9.w;
        }
        r7.w = r8.w * r6.w;
        r6.w = 255 & (int)lightConstantsCB[r0.x].data[14].w;
        if (r6.w != 0) {
          r20.z = 1;
          r8.w = dot(lightConstantsCB[r0.x].data[13].xyz, r20.xyz);
          r21.x = lightConstantsCB[r0.x].data[13].w;
          r21.yz = lightConstantsCB[r0.x].data[14].xy;
          r9.w = dot(r21.xyz, r20.xyz);
          r20.x = frac(r8.w);
          r20.y = frac(r9.w);
          r6.w = (int)r6.w + -1;
          r20.z = (uint)r6.w;
          r19.xyz = gCookieArray.SampleLevel(samplerLinear_s, r20.xyz, 0).xyz;
        } else {
          r19.xyz = float3(1,1,1);
        }
      }
      r20.x = lightConstantsCB[r0.x].data[0].w;
      r20.yz = lightConstantsCB[r0.x].data[1].xy;
      r19.xyz = r20.xyz * r19.xyz;
      r6.w = cmp(0 < r7.w);
      if (r6.w != 0) {
        if (3 == 0) r6.w = 0; else if (3+27 < 32) {         r6.w = (uint)lightConstantsCB[r0.x].data[1].w << (32-(3 + 27)); r6.w = (uint)r6.w >> (32-3);        } else r6.w = (uint)lightConstantsCB[r0.x].data[1].w >> 27;
        r6.w = cmp((int)r6.w != 1);
        if (r6.w != 0) {
          r6.w = abs(r3.w) * -0.200000003 + 0.400000006;
          r8.w = cmp(r3.w < 0);
          r8.w = r0.z ? r8.w : 0;
          r6.w = r8.w ? -r6.w : r6.w;
          r20.xyz = r11.xyz * r6.www + r10.xyz;
          r21.xyz = lightConstantsCB[r0.x].data[6].yzw;
          r21.w = lightConstantsCB[r0.x].data[7].x;
          r20.w = 1;
          r6.w = dot(r21.xyzw, r20.xyzw);
          r8.w = dot(r18.xyzw, r20.xyzw);
          r9.w = cmp(r8.w >= r6.w);
          if (r9.w != 0) {
            r18.xyz = lightConstantsCB[r0.x].data[4].yzw;
            r18.w = lightConstantsCB[r0.x].data[5].x;
            r18.x = dot(r18.xyzw, r20.xyzw);
            r21.xyz = lightConstantsCB[r0.x].data[5].yzw;
            r21.w = lightConstantsCB[r0.x].data[6].x;
            r18.y = dot(r21.xyzw, r20.xyzw);
            r18.xy = r18.xy / r8.ww;
            r18.xy = saturate(r18.xy * float2(0.5,-0.5) + float2(0.5,0.5));
            r20.x = r18.x * lightConstantsCB[r0.x].data[8].y + lightConstantsCB[r0.x].data[8].z;
            r20.y = r18.y * lightConstantsCB[r0.x].data[8].w + lightConstantsCB[r0.x].data[9].x;
            r6.w = r6.w / r8.w;
            r6.w = max(6.10351563e-05, r6.w);
            r8.w = 0x0000ffff & (int)lightConstantsCB[r0.x].data[1].w;
            if (enableDitheredShadow != 0) {
              r18.x = -r13.x;
              r21.z = (uint)r8.w;
              r18.y = r14.x;
              r18.z = r13.x;
              r9.w = 0;
              r10.w = 0;
              while (true) {
                r11.w = cmp((int)r10.w >= 8);
                if (r11.w != 0) break;
                r22.x = dot(icb[r10.w+0].yx, r18.xy);
                r22.y = dot(icb[r10.w+0].yx, r18.yz);
                r21.xy = r22.xy * lightConstantsCB[r0.x].data[3].yy + r20.xy;
                r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r6.w).x;
                r9.w = r11.w * 0.125 + r9.w;
                r10.w = (int)r10.w + 1;
              }
            } else {
              r20.z = (uint)r8.w;
              r9.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r6.w).x;
            }
            r6.w = r9.w * r9.w;
            r6.w = r6.w * r9.w;
          } else {
            r6.w = 1;
          }
        } else {
          r6.w = 1;
        }
        r6.w = r7.w * r6.w;
        r7.w = cmp(0 < r6.w);
        if (r7.w != 0) {
          r7.w = lightConstantsCB[r0.x].data[1].z * r1.z;
          r7.w = r7.w * r4.z;
          if (4 == 0) r8.w = 0; else if (4+16 < 32) {           r8.w = (uint)lightConstantsCB[r0.x].data[1].w << (32-(4 + 16)); r8.w = (uint)r8.w >> (32-4);          } else r8.w = (uint)lightConstantsCB[r0.x].data[1].w >> 16;
          r9.w = cmp(0 < (uint)r8.w);
          r9.w = r0.y ? r9.w : 0;
          if (r9.w != 0) {
            r8.w = (int)r8.w + numLights;
            r8.w = mad((int)r8.w, 15, -15);
            r9.w = abs(r3.w) * -0.200000003 + 0.400000006;
            r10.w = cmp(r3.w < 0);
            r10.w = r0.z ? r10.w : 0;
            r9.w = r10.w ? -r9.w : r9.w;
            r18.xyz = r11.xyz * r9.www + r10.xyz;
            r20.xyz = lightConstantsCB[r8.w].data[6].yzw;
            r20.w = lightConstantsCB[r8.w].data[7].x;
            r18.w = 1;
            r9.w = dot(r20.xyzw, r18.xyzw);
            r20.xyz = lightConstantsCB[r8.w].data[7].yzw;
            r20.w = lightConstantsCB[r8.w].data[8].x;
            r10.w = dot(r20.xyzw, r18.xyzw);
            r11.w = cmp(r10.w < r9.w);
            if (r11.w == 0) {
              r20.xyz = lightConstantsCB[r8.w].data[4].yzw;
              r20.w = lightConstantsCB[r8.w].data[5].x;
              r20.x = dot(r20.xyzw, r18.xyzw);
              r21.xyz = lightConstantsCB[r8.w].data[5].yzw;
              r21.w = lightConstantsCB[r8.w].data[6].x;
              r20.y = dot(r21.xyzw, r18.xyzw);
              r18.xy = r20.xy / r10.ww;
              r18.xy = r18.xy * float2(0.5,-0.5) + float2(0.5,0.5);
              r20.x = lightConstantsCB[r8.w].data[9].w + r18.x;
              r20.y = lightConstantsCB[r8.w].data[10].x + r18.y;
              r18.xy = lightConstantsCB[r8.w].data[9].yz * r20.xy;
              r18.zw = lightConstantsCB[r8.w].data[3].yy / lightConstantsCB[r8.w].data[8].yw;
              r20.xy = float2(1,1) + -r18.zw;
              r20.xy = cmp(r18.xy >= r20.xy);
              r18.zw = cmp(r18.zw >= r18.xy);
              r18.zw = (int2)r18.zw | (int2)r20.xy;
              r12.w = (int)r18.w | (int)r18.z;
              if (r12.w == 0) {
                r18.xy = saturate(r18.xy);
                r20.x = r18.x * lightConstantsCB[r8.w].data[8].y + lightConstantsCB[r8.w].data[8].z;
                r20.y = r18.y * lightConstantsCB[r8.w].data[8].w + lightConstantsCB[r8.w].data[9].x;
                r15.w = lightConstantsCB[r8.w].data[10].z * r10.w;
                r9.w = lightConstantsCB[r8.w].data[10].y * r10.w + r9.w;
                r9.w = r9.w / r15.w;
              }
            } else {
              r12.w = -1;
            }
            r10.w = (int)r11.w | (int)r12.w;
            if (r10.w == 0) {
              r9.w = max(6.10351563e-05, r9.w);
              r10.w = 0x0000ffff & (int)lightConstantsCB[r8.w].data[1].w;
              if (enableDitheredShadow != 0) {
                r18.x = -r13.x;
                r21.z = (uint)r10.w;
                r18.y = r14.x;
                r18.z = r13.x;
                r11.w = 0;
                r12.w = 0;
                while (true) {
                  r15.w = cmp((int)r12.w >= 8);
                  if (r15.w != 0) break;
                  r22.x = dot(icb[r12.w+0].yx, r18.xy);
                  r22.y = dot(icb[r12.w+0].yx, r18.yz);
                  r21.xy = r22.xy * lightConstantsCB[r8.w].data[3].yy + r20.xy;
                  r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r9.w).x;
                  r11.w = r15.w * 0.125 + r11.w;
                  r12.w = (int)r12.w + 1;
                }
              } else {
                r20.z = (uint)r10.w;
                r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r9.w).x;
              }
              r8.w = r11.w * r11.w;
              r8.w = r8.w * r11.w;
            } else {
              r8.w = 1;
            }
            r6.w = r8.w * r6.w;
          } else {
            if (4 == 0) r0.x = 0; else if (4+20 < 32) {             r0.x = (uint)lightConstantsCB[r0.x].data[1].w << (32-(4 + 20)); r0.x = (uint)r0.x >> (32-4);            } else r0.x = (uint)lightConstantsCB[r0.x].data[1].w >> 20;
            r8.w = cmp(0 < (uint)r0.x);
            r0.y = ~(int)r0.y;
            r0.y = r0.y ? r8.w : 0;
            if (r0.y != 0) {
              r0.x = (int)r0.x + numLights;
              r0.x = mad((int)r0.x, 15, -15);
              r0.y = abs(r3.w) * -0.200000003 + 0.400000006;
              r8.w = cmp(r3.w < 0);
              r8.w = r0.z ? r8.w : 0;
              r0.y = r8.w ? -r0.y : r0.y;
              r18.xyz = r11.xyz * r0.yyy + r10.xyz;
              r20.xyz = lightConstantsCB[r0.x].data[6].yzw;
              r20.w = lightConstantsCB[r0.x].data[7].x;
              r18.w = 1;
              r0.y = dot(r20.xyzw, r18.xyzw);
              r20.xyz = lightConstantsCB[r0.x].data[7].yzw;
              r20.w = lightConstantsCB[r0.x].data[8].x;
              r8.w = dot(r20.xyzw, r18.xyzw);
              r9.w = cmp(r8.w < r0.y);
              if (r9.w == 0) {
                r20.xyz = lightConstantsCB[r0.x].data[4].yzw;
                r20.w = lightConstantsCB[r0.x].data[5].x;
                r20.x = dot(r20.xyzw, r18.xyzw);
                r21.xyz = lightConstantsCB[r0.x].data[5].yzw;
                r21.w = lightConstantsCB[r0.x].data[6].x;
                r20.y = dot(r21.xyzw, r18.xyzw);
                r18.xy = r20.xy / r8.ww;
                r18.xy = r18.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r20.x = lightConstantsCB[r0.x].data[9].w + r18.x;
                r20.y = lightConstantsCB[r0.x].data[10].x + r18.y;
                r18.xy = lightConstantsCB[r0.x].data[9].yz * r20.xy;
                r18.zw = lightConstantsCB[r0.x].data[3].yy / lightConstantsCB[r0.x].data[8].yw;
                r20.xy = float2(1,1) + -r18.zw;
                r20.xy = cmp(r18.xy >= r20.xy);
                r18.zw = cmp(r18.zw >= r18.xy);
                r18.zw = (int2)r18.zw | (int2)r20.xy;
                r10.w = (int)r18.w | (int)r18.z;
                if (r10.w == 0) {
                  r18.xy = saturate(r18.xy);
                  r20.x = r18.x * lightConstantsCB[r0.x].data[8].y + lightConstantsCB[r0.x].data[8].z;
                  r20.y = r18.y * lightConstantsCB[r0.x].data[8].w + lightConstantsCB[r0.x].data[9].x;
                  r11.w = lightConstantsCB[r0.x].data[10].z * r8.w;
                  r0.y = lightConstantsCB[r0.x].data[10].y * r8.w + r0.y;
                  r0.y = r0.y / r11.w;
                }
              } else {
                r10.w = -1;
              }
              r8.w = (int)r9.w | (int)r10.w;
              if (r8.w == 0) {
                r0.y = max(6.10351563e-05, r0.y);
                r8.w = 0x0000ffff & (int)lightConstantsCB[r0.x].data[1].w;
                if (enableDitheredShadow != 0) {
                  r18.x = -r13.x;
                  r21.z = (uint)r8.w;
                  r18.y = r14.x;
                  r18.z = r13.x;
                  r9.w = 0;
                  r10.w = 0;
                  while (true) {
                    r11.w = cmp((int)r10.w >= 8);
                    if (r11.w != 0) break;
                    r22.x = dot(icb[r10.w+0].yx, r18.xy);
                    r22.y = dot(icb[r10.w+0].yx, r18.yz);
                    r21.xy = r22.xy * lightConstantsCB[r0.x].data[3].yy + r20.xy;
                    r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r0.y).x;
                    r9.w = r11.w * 0.125 + r9.w;
                    r10.w = (int)r10.w + 1;
                  }
                } else {
                  r20.z = (uint)r8.w;
                  r9.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r0.y).x;
                }
                r0.x = r9.w * r9.w;
                r0.x = r0.x * r9.w;
              } else {
                r0.x = 1;
              }
              r6.w = r6.w * r0.x;
            }
          }
          r0.x = -r2.x * 0.5 + 1;
          r0.x = -r5.w * r0.x + 1;
          r0.x = r0.x * r0.x;
          r0.x = -r0.x * 0.620000005 + 0.620000005;
          r0.x = r0.x + -r5.w;
          r0.x = r1.w * r0.x + r5.w;
          r0.x = r0.x * r6.w;
          r18.xyz = r0.xxx * r19.xyz;
          r0.y = cmp(0 < r3.w);
          r9.xyz = r9.xyz * r2.zzz + r18.xyz;
          r2.xzw = r15.xyz * r2.www + r12.xyz;
          r1.w = dot(r2.xzw, r2.xzw);
          r1.w = rsqrt(r1.w);
          r2.xzw = r2.xzw * r1.www;
          r1.w = dot(r2.xzw, r12.xyz);
          r2.x = dot(r11.xyz, r2.xzw);
          r1.z = abs(r2.x) * r1.z + -abs(r2.x);
          r1.z = abs(r2.x) * r1.z + 1;
          r0.w = r4.z * r0.w + r2.y;
          r1.z = r1.z * r1.z;
          r0.w = r1.z * r0.w;
          r0.w = rcp(r0.w);
          r0.w = r0.w * r7.w;
          r0.w = r6.w * r0.w;
          r0.w = 0.25 * r0.w;
          r2.xyz = r0.www * r19.xyz + r13.yzw;
          r1.z = saturate(1 + -r1.w);
          r1.w = r1.z * r1.z;
          r1.w = r1.w * r1.w;
          r1.z = r1.z * r1.w;
          r0.w = r1.z * r0.w;
          r11.xyz = r0.www * r19.xyz + r17.xyz;
          r12.xyz = r0.xxx * r19.xyz + r16.xyz;
          r12.xyz = r0.zzz ? r12.xyz : 0;
          r14.yzw = r0.yyy ? r9.xyz : r14.yzw;
          r16.xyz = r0.yyy ? r16.xyz : r12.xyz;
          r17.xyz = r0.yyy ? r11.xyz : r17.xyz;
          r13.yzw = r0.yyy ? r2.xyz : r13.yzw;
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
  r0.xyw = r16.xyz * r2.xyz + r0.xyw;
  r4.xyz = float3(0.959999979,0.959999979,0.959999979) * r17.xyz;
  r4.xyz = r13.yzw * float3(0.0399999991,0.0399999991,0.0399999991) + r4.xyz;
  r0.xyw = r4.xyz + r0.xyw;
  r4.xyz = float3(1,1,1) + -r2.xyz;
  r4.xyz = r17.xyz * r4.xyz;
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