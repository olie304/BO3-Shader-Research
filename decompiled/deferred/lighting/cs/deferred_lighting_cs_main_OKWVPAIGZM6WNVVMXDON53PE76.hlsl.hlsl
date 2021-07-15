// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:23:46 2021

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

SamplerState samplerLinear_s : register(s2);
SamplerState samplerLinearClamp_s : register(s4);
Texture2D<float4> GBufferDiffuseColor : register(t0);
Texture2D<float4> GBufferNormalAndGloss : register(t1);
Texture2D<float4> GBufferSpecularColorAndOcclusion : register(t2);
Texture2D<float> GBufferDepth : register(t4);
Texture2D<float2> gEnvBRDFGeneric : register(t5);
TextureCubeArray<float3> gReflectionProbeArray : register(t8);
Texture3D<float3> gProbeXArray : register(t17);
Texture3D<float3> gProbeYArray : register(t18);
Texture3D<float3> gProbeZArray : register(t19);
StructuredBuffer<gPermutedTilingBuffer> gPermutedTilingBuffer : register(t25);
Texture2D<float> gSSAOTexture : register(t27);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main()
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t25, 8
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.x = mad(permuteStride, 21, (int)vThreadGroupID.x);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=8)(mixed,mixed,mixed,mixed) r0.xy, r0.x, l(0), t25.xyxx
r0.x = samplerLinear[]..swiz;
r0.y = samplerLinear[]..swiz;
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
  r0.zw = float2(0.5,0.5) + r0.zw;
  r2.w = cmp(r2.z >= 0.984375);
  r3.w = 1.01587307 * r2.z;
  r2.z = r2.z * 64 + -63;
  r2.z = r2.w ? r2.z : r3.w;
  r2.z = max(9.99999994e-09, r2.z);
  r2.z = rcp(r2.z);
  r2.x = r2.x ? r2.z : 0;
  r2.zw = -subpixelOffset.xy + r0.zw;
  r2.zw = renderTargetSize.zw * r2.zw;
  r2.zw = r2.zw * float2(2,-2) + float2(-1,1);
  r9.x = inverseProjectionMatrix._m00 * r2.z;
  r9.y = inverseProjectionMatrix._m11 * r2.w;
  r9.z = 1;
  r2.xzw = r9.xyz * r2.xxx;
  r9.xyz = inverseViewMatrix._m10_m11_m12 * r2.zzz;
  r9.xyz = r2.xxx * inverseViewMatrix._m00_m01_m02 + r9.xyz;
  r2.xzw = r2.www * inverseViewMatrix._m20_m21_m22 + r9.xyz;
  r1.w = r1.w * 3 + 0.5;
  r1.w = (uint)r1.w;
  r1.xy = r1.xy * float2(2,2) + float2(-1,-1);
  r1.xy = float2(0.850000024,0.850000024) * r1.xy;
  r3.w = dot(r1.xy, r1.xy);
  r9.zw = float2(2,1) + -r3.ww;
  r3.w = sqrt(r9.z);
  r9.xy = r3.ww * r1.xy;
  r10.xyzw = (int4)r1.wwww & int4(2,1,2,1);
  r10.xyzw = r10.zwxy ? float4(-1,-1,1.40129846e-45,1.40129846e-45) : float4(1,1,0,0);
  r1.x = (int)r10.w ^ (int)r10.z;
  r10.z = r1.x ? -1 : 1;
  r1.xyw = float3(-1,0,1) * r10.xyz;
  r11.xyz = float3(1,-2,1) * r10.xyz;
  r9.xyz = float3(0.408248305,0.707106769,0.577350259) * r9.xyw;
  r1.xyw = r9.yyy * r1.xyw;
  r1.xyw = r11.xyz * r9.xxx + r1.xyw;
  r9.xyz = r10.xyz * r9.zzz + r1.xyw;
  r1.x = r2.y ? -0.5 : -0.00146627566;
  r1.x = r1.z + r1.x;
  r1.y = saturate(2.00982332 * r1.x);
  r1.z = dot(-r2.xzw, -r2.xzw);
  r1.z = rsqrt(r1.z);
  r10.xyz = -r2.xzw * r1.zzz;
  r1.x = saturate(dot(r9.xyz, r10.xyz));
  r1.z = dot(-r10.xyz, r9.xyz);
  r1.z = r1.z + r1.z;
  r10.xyz = r9.xyz * -r1.zzz + -r10.xyz;
  r1.z = 17 * r1.y;
  r1.z = exp2(r1.z);
  r1.z = 2 + r1.z;
  r1.z = 2 / r1.z;
  r1.z = sqrt(r1.z);
  r0.zw = renderTargetSize.zw * r0.zw;
  r0.z = gSSAOTexture.SampleLevel(samplerLinearClamp_s, r0.zw, 0).x;
  r0.w = r4.z * r0.z;
  r1.w = 1 + -r1.y;
  r1.w = 5 * r1.w;
  r11.xyz = -globalProbeConstants.data[0].xyz + r2.xzw;
  r12.x = globalProbeConstants.data[0].w * r11.x;
  r12.yz = globalProbeConstants.data[1].xy * r11.yz;
  r11.xyz = saturate(float3(0.5,0.5,0.5) + r12.xyz);
  r12.xy = globalProbeConstants.data[1].zw * r11.xy;
  r12.z = globalProbeConstants.data[2].x * r11.z;
  r11.xyz = globalProbeConstants.data[2].yzw + r12.xyz;
  r12.xyz = cmp(float3(0,0,0) < r9.xyz);
  r12.xyz = r12.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
  r12.w = 0;
  r13.xyz = r12.wwx + r11.xyz;
  r13.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r13.xyz, 0).xyz;
  r14.xyz = r9.xyz * r9.xyz;
  r14.xyz = sunConstants.globalProbeExposure * r14.xyz;
  r15.xyz = r12.wwy + r11.xyz;
  r15.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r15.xyz, 0).xyz;
  r15.xyz = r15.xyz * r14.yyy;
  r13.xyz = r13.xyz * r14.xxx + r15.xyz;
  r11.xyz = r12.wwz + r11.xyz;
  r11.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r11.xyz, 0).xyz;
  r11.xyz = r11.xyz * r14.zzz + r13.xyz;
  r9.w = 0;
  r9.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r9.xyzw, 6).xyz;
  r9.xyz = r11.xyz * r9.xyz;
  r3.w = dot(r9.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r10.w = 0;
  r10.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r10.xyzw, r1.w).xyz;
  r1.w = sunConstants.globalProbeExposure + -r3.w;
  r1.w = r1.y * r1.w + r3.w;
  r10.xyz = r10.xyz * r1.www;
  r1.w = r4.z * r0.z + r1.x;
  r1.w = log2(abs(r1.w));
  r1.z = r1.z * r1.w;
  r1.z = exp2(r1.z);
  r0.z = r4.z * r0.z + r1.z;
  r0.z = saturate(-1 + r0.z);
  r9.xyz = r9.xyz * r0.www;
  r11.xyz = r2.yyy ? r9.xyz : 0;
  r1.xy = r1.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r1.xy = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r1.xy, 0).xy;
  r10.xyz = r10.xyz * r0.zzz;
  r1.xzw = r10.xyz * r1.xxx;
  r10.xyz = r10.xyz * r1.yyy;
  r4.xyz = r4.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r0.z = (uint)r4.y;
  r5.xyz = r5.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r5.x;
  r0.w = cmp((int)r0.z == (int)r0.w);
  r5.xy = r0.ww ? r5.yz : float2(-1,0);
  r6.xyz = r6.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r6.x;
  r0.w = cmp((int)r0.z == (int)r0.w);
  r5.zw = r0.ww ? r6.yz : float2(-1,0);
  r6.xyz = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r6.x;
  r0.w = cmp((int)r0.z == (int)r0.w);
  r6.xy = r0.ww ? r6.yz : float2(-1,0);
  r7.xyz = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r7.x;
  r0.z = cmp((int)r0.z == (int)r0.w);
  r0.zw = r0.zz ? r7.yz : float2(-1,0);
  r7.xy = r5.xz;
  r7.z = r6.x;
  r7.w = r0.z;
  r7.xyzw = r7.xyzw + -r4.xxxx;
  r7.xyzw = cmp(abs(r7.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r7.xyzw = r7.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r0.z = r7.x + r7.y;
  r0.z = r0.z + r7.z;
  r0.z = r0.z + r7.w;
  r1.y = r7.y * r5.w;
  r1.y = r7.x * r5.y + r1.y;
  r1.y = r7.z * r6.y + r1.y;
  r0.w = r7.w * r0.w + r1.y;
  r4.w = r0.w / r0.z;
  r0.z = cmp(0 >= r0.z);
  r4.yz = r0.zz ? float2(0,0) : r4.zw;
  r0.zw = (int2)r0.xy & int2(1,1);
  r0.z = cmp((int)r0.w == (int)r0.z);
  r4.xyz = r0.zzz ? r4.xyz : r4.xzy;
  r0.z = -r4.z * 0.5 + r4.x;
  r5.y = r4.z + r0.z;
  r5.z = -r4.y * 0.5 + r0.z;
  r5.x = r5.z + r4.y;
  r4.xyz = r9.xyz * r3.xyz;
  r4.xyz = r11.xyz * r5.xyz + r4.xyz;
  r6.xyz = float3(0.959999979,0.959999979,0.959999979) * r1.xzw;
  r6.xyz = r10.xyz * float3(0.0399999991,0.0399999991,0.0399999991) + r6.xyz;
  r4.xyz = r6.xyz + r4.xyz;
  r6.xyz = float3(1,1,1) + -r5.xyz;
  r1.xyz = r6.xyz * r1.xzw;
  r1.xyz = r10.xyz * r5.xyz + r1.xyz;
  r1.xyz = r9.xyz * r3.xyz + r1.xyz;
  r1.xyz = r2.yyy ? r4.xyz : r1.xyz;
  r0.z = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.z != 0) {
    r0.z = dot(r2.xzw, r2.xzw);
    r0.w = rsqrt(r0.z);
    r3.xyz = r2.xzw * r0.www;
    r0.z = sqrt(r0.z);
    r0.w = cmp(0 < fogConstants.blendAmount);
    if (r0.w != 0) {
      r4.xy = r0.zz * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r4.xy = fogConstants.atmospherefogdensityatcamera.xy * r4.xy;
      r0.w = cmp(0.00999999978 < abs(r2.w));
      r4.zw = fogConstants.atmospherefogheightdensityscale.xy * r2.ww;
      r5.xy = float2(-1.44269502,-1.44269502) * r4.zw;
      r5.xy = exp2(r5.xy);
      r5.xy = float2(1,1) + -r5.xy;
      r4.zw = r5.xy / r4.zw;
      r4.zw = r4.xy * r4.zw;
      r4.xy = r0.ww ? r4.zw : r4.xy;
      r4.xzw = fogConstants.atmosphereTotalDensity.xyz * r4.xxx;
      r4.xzw = exp2(r4.xzw);
      r5.xyz = fogConstants.atmosphereTotalDensity.xyz * r4.yyy;
      r5.xyz = exp2(r5.xyz);
      r5.xyz = r5.xyz + -r4.xzw;
      r4.xyz = fogConstants.blendAmount * r5.xyz + r4.xzw;
    } else {
      r0.w = r0.z * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r0.w = fogConstants.atmospherefogdensityatcamera.x * r0.w;
      r1.w = cmp(0.00999999978 < abs(r2.w));
      r2.y = fogConstants.atmospherefogheightdensityscale.x * r2.w;
      r3.w = -1.44269502 * r2.y;
      r3.w = exp2(r3.w);
      r3.w = 1 + -r3.w;
      r2.y = r3.w / r2.y;
      r2.y = r2.y * r0.w;
      r0.w = r1.w ? r2.y : r0.w;
      r5.xyz = fogConstants.atmosphereTotalDensity.xyz * r0.www;
      r4.xyz = exp2(r5.xyz);
    }
    r4.xyz = r4.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r4.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r4.xyz);
    r0.w = dot(fogConstants.wldSunFogDir.xyz, -r3.xyz);
    r1.w = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r2.y = fogConstants.atmosphereMieSchlickK * -r0.w + 1;
    r2.y = r2.y * r2.y;
    r2.y = 12.566371 * r2.y;
    r1.w = r1.w / r2.y;
    r0.z = -fogConstants.atmospherehazebasedist + r0.z;
    r0.z = saturate(fogConstants.atmospherehazefadedist * r0.z);
    r0.z = r1.w * r0.z;
    r0.w = saturate(r0.w);
    r0.w = r0.w * r0.w + 1;
    r0.w = r0.w * 0.0596831031 + -1;
    r0.w = fogConstants.atmospheresunstrength * r0.w + 1;
    r3.xyz = fogConstants.atmosphereMieDensity.xyz * r0.zzz;
    r3.xyz = r0.www * fogConstants.atmosphereRayleighDensity.xyz + r3.xyz;
    r3.xyz = fogConstants.atmosphereInScatterIntensity * r3.xyz;
    r5.xyz = float3(1,1,1) + -r4.xyz;
    r3.xyz = r5.xyz * r3.xyz;
    r3.xyz = r1.xyz * r4.xyz + r3.xyz;
  } else {
    r0.z = fogConstants.heightFalloff * r2.w;
    r0.w = fogConstants.heightFalloff * r2.w + fogConstants.K0;
    r1.w = cmp(abs(r0.z) < 9.99999975e-05);
    r2.y = min(64, r0.w);
    r2.y = 1.44269502 * r2.y;
    r2.y = exp2(r2.y);
    r3.w = saturate(fogConstants.K0b);
    r4.x = cmp(r0.w < 0);
    r0.w = 1 + r0.w;
    r0.w = r4.x ? r2.y : r0.w;
    r0.w = -fogConstants.K0b + r0.w;
    r0.z = r1.w ? 1 : r0.z;
    r0.z = r0.w / r0.z;
    r0.z = r1.w ? r3.w : r0.z;
    r0.z = fogConstants.expMul * r0.z;
    r0.w = dot(r2.xzw, r2.xzw);
    r1.w = sqrt(r0.w);
    r0.z = r0.z * r1.w + fogConstants.expAdd;
    r0.z = exp2(r0.z);
    r0.z = min(1, r0.z);
    r0.z = 1 + -r0.z;
    r0.w = rsqrt(r0.w);
    r2.xyz = r2.xzw * r0.www;
    r0.w = dot(fogConstants.wldSunFogDir.xyz, r2.xyz);
    r0.w = saturate(fogConstants.sunFogAngles.y * r0.w + fogConstants.sunFogAngles.x);
    r2.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r2.xyzw = r0.wwww * r2.xyzw + fogConstants.sunFogColor.xyzw;
    r0.z = r2.w * r0.z;
    r2.xyz = r2.xyz + -r1.xyz;
    r3.xyz = r0.zzz * r2.xyz + r1.xyz;
  }
  r1.xyzw = relHDRExposure.yyyy * r3.xyzx;
  r2.xyzw = cmp(r1.wyzw >= float4(6.10351563e-05,6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r1.xyzw = r2.xyzw ? r1.xyzw : 0;
  r1.xyzw = min(float4(65024,65024,64512,65024), r1.xyzw);
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xyyy, r1.xyzw
  return;
}