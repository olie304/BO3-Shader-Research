// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:18 2021

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

StructuredBuffer<gCullConstants> gCullConstants : register(t11);
StructuredBuffer<gPermuteExtentsBuffer> gPermuteExtentsBuffer : register(t24);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main()
{
  const float4 icb[] = { { 1.000000, 0, 0, 0},
                              { 0, 1.000000, 0, 0},
                              { 0, 0, 1.000000, 0},
                              { 0, 0, 0, 1.000000} };
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t11, 80
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t24, 8
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_structured u5, 8
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_structured u6, 4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_structured u7, 4
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.xy = float2(7,7) + renderTargetSize.xy;
  r0.xy = (uint2)r0.xy;
  r0.xy = (uint2)r0.xy >> int2(3,3);
  r0.z = mad((int)vThreadGroupID.x, 64, (int)vThreadIDInGroup.x);
  r0.y = (int)r0.y * (int)r0.x;
  r0.y = cmp((uint)r0.z >= (uint)r0.y);
  if (r0.y != 0) {
    return;
  }
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=8)(mixed,mixed,mixed,mixed) r0.yw, r0.z, l(0), t24.xxxy
r0.y = gCullConstants[]..swiz;
r0.w = gCullConstants[]..swiz;
  r1.x = cmp(r0.y == 340282346638528859811704183484516925440.000000);
  if (r1.x != 0) {
    return;
  }
  r1.x = cmp(r0.w < 0);
  uiDest.x = (uint)r0.z / (uint)r0.x;
  r2.x = (uint)r0.z % (uint)r0.x;
  r0.x = uiDest.x;
  r2.y = r0.x;
  r1.yz = (uint2)r2.xy << int2(3,3);
  r0.z = (uint)vThreadIDInGroup.x << 5;
  r0.z = mad((int)vThreadGroupID.x, 2048, (int)r0.z);
  r3.xyw = (uint3)r1.yzz;
  r2.yz = float2(0.5,0.5) + r3.xy;
  r2.yz = -subpixelOffset.xy + r2.yz;
  r2.yz = renderTargetSize.zw * r2.yz;
  r2.yz = r2.yz * float2(2,-2) + float2(-1,1);
  r3.x = inverseProjectionMatrix._m00;
  r3.y = inverseProjectionMatrix._m11;
  r4.xy = r3.xy * r2.yz;
  r4.z = 1;
  r2.yzw = r4.xyz * abs(r0.yyy);
  r5.xyz = inverseViewMatrix._m10_m11_m12 * r2.zzz;
  r5.xyz = r2.yyy * inverseViewMatrix._m00_m01_m02 + r5.xyz;
  r2.yzw = r2.www * inverseViewMatrix._m20_m21_m22 + r5.xyz;
  r1.zw = (int2)r1.yz + int2(8,8);
  r3.z = (uint)r1.z;
  r3.zw = -subpixelOffset.xy + r3.zw;
  r3.zw = float2(0.5,0.5) + r3.zw;
  r3.zw = renderTargetSize.zw * r3.zw;
  r3.zw = r3.zw * float2(2,-2) + float2(-1,1);
  r5.xy = r3.zw * r3.xy;
  r5.z = 1;
  r6.xyz = r5.xyz * abs(r0.yyy);
  r7.xyz = inverseViewMatrix._m10_m11_m12 * r6.yyy;
  r6.xyw = r6.xxx * inverseViewMatrix._m00_m01_m02 + r7.xyz;
  r6.xyz = r6.zzz * inverseViewMatrix._m20_m21_m22 + r6.xyw;
  r7.xyzw = (uint4)r1.zwyw;
  r1.zw = -subpixelOffset.xy + r7.xy;
  r1.zw = float2(0.5,0.5) + r1.zw;
  r1.zw = renderTargetSize.zw * r1.zw;
  r1.zw = r1.zw * float2(2,-2) + float2(-1,1);
  r8.xy = r1.zw * r3.xy;
  r8.z = 1;
  r9.xyz = r8.xyz * abs(r0.yyy);
  r10.xyz = inverseViewMatrix._m11_m12_m10 * r9.yyy;
  r9.xyw = r9.xxx * inverseViewMatrix._m01_m02_m00 + r10.xyz;
  r9.xyz = r9.zzz * inverseViewMatrix._m21_m22_m20 + r9.xyw;
  r1.yz = -subpixelOffset.xy + r7.zw;
  r1.yz = float2(0.5,0.5) + r1.yz;
  r1.yz = renderTargetSize.zw * r1.yz;
  r1.yz = r1.yz * float2(2,-2) + float2(-1,1);
  r3.xy = r1.yz * r3.xy;
  r3.z = 1;
  r1.yzw = r3.xyz * abs(r0.yyy);
  r7.xyz = inverseViewMatrix._m10_m11_m12 * r1.zzz;
  r7.xyz = r1.yyy * inverseViewMatrix._m00_m01_m02 + r7.xyz;
  r1.yzw = r1.www * inverseViewMatrix._m20_m21_m22 + r7.xyz;
  r4.xyz = r4.xyz * abs(r0.www);
  r7.xyz = inverseViewMatrix._m11_m12_m10 * r4.yyy;
  r4.xyw = r4.xxx * inverseViewMatrix._m01_m02_m00 + r7.xyz;
  r4.xyz = r4.zzz * inverseViewMatrix._m21_m22_m20 + r4.xyw;
  r5.xyz = r5.xyz * abs(r0.www);
  r7.xyz = inverseViewMatrix._m12_m10_m11 * r5.yyy;
  r5.xyw = r5.xxx * inverseViewMatrix._m02_m00_m01 + r7.xyz;
  r5.xyz = r5.zzz * inverseViewMatrix._m22_m20_m21 + r5.xyw;
  r7.xyz = r8.xyz * abs(r0.www);
  r8.xyz = inverseViewMatrix._m10_m11_m12 * r7.yyy;
  r7.xyw = r7.xxx * inverseViewMatrix._m00_m01_m02 + r8.xyz;
  r7.xyz = r7.zzz * inverseViewMatrix._m20_m21_m22 + r7.xyw;
  r3.xyz = r3.xyz * abs(r0.www);
  r8.xyz = inverseViewMatrix._m12_m10_m11 * r3.yyy;
  r3.xyw = r3.xxx * inverseViewMatrix._m02_m00_m01 + r8.xyz;
  r3.xyz = r3.zzz * inverseViewMatrix._m22_m20_m21 + r3.xyw;
  r8.xyz = float3(0.125,0.125,0.125) * r6.xyz;
  r8.xyz = r2.yzw * float3(0.125,0.125,0.125) + r8.xyz;
  r8.xyz = r9.zxy * float3(0.125,0.125,0.125) + r8.xyz;
  r8.xyz = r1.yzw * float3(0.125,0.125,0.125) + r8.xyz;
  r8.xyz = r4.zxy * float3(0.125,0.125,0.125) + r8.xyz;
  r8.xyz = r5.yzx * float3(0.125,0.125,0.125) + r8.xyz;
  r8.xyz = r7.xyz * float3(0.125,0.125,0.125) + r8.xyz;
  r8.xyz = r3.yzx * float3(0.125,0.125,0.125) + r8.xyz;
  r10.xyz = -r8.xyz + r2.yzw;
  r11.xyz = -r8.xyz + r6.xyz;
  r10.xyz = max(abs(r11.xyz), abs(r10.xyz));
  r11.xyz = r9.zxy + -r8.xyz;
  r10.xyz = max(abs(r11.xyz), r10.xyz);
  r11.xyz = -r8.xyz + r1.yzw;
  r10.xyz = max(abs(r11.xyz), r10.xyz);
  r11.xyz = -r8.xyz + r4.zxy;
  r10.xyz = max(abs(r11.xyz), r10.xyz);
  r11.xyz = -r8.xyz + r5.yzx;
  r10.xyz = max(abs(r11.xyz), r10.xyz);
  r11.xyz = -r8.xyz + r7.xyz;
  r10.xyz = max(abs(r11.xyz), r10.xyz);
  r11.xyz = -r8.xyz + r3.yzx;
  r10.xyz = max(abs(r11.xyz), r10.xyz);
  if (numRefProbes != 0) {
    r0.y = r1.x ? 48 : 16;
    r0.w = numRefProbes + numLights;
    r11.xyz = r9.zxy + r2.yzw;
    r11.xyz = r11.xyz * float3(0.5,0.5,0.5) + -viewMatrix._m30_m31_m32;
    r12.xyz = r7.xyz + r4.zxy;
    r12.xyz = r12.xyz * float3(0.5,0.5,0.5) + -viewMatrix._m30_m31_m32;
    r13.xyz = r9.zxy + r6.xyz;
    r13.xyz = -r13.xyz * float3(0.5,0.5,0.5) + r11.xyz;
    r14.xyz = r6.xyz + r2.yzw;
    r14.xyz = -r14.xyz * float3(0.5,0.5,0.5) + r11.xyz;
    r15.xyz = r7.xyz + r5.yzx;
    r15.xyz = -r15.xyz * float3(0.5,0.5,0.5) + r12.xyz;
    r16.xyz = r5.yzx + r4.zxy;
    r16.xyz = -r16.xyz * float3(0.5,0.5,0.5) + r12.xyz;
    r3.w = (int)r0.z + 16;
    r17.xyz = -r15.yzx + r12.yzx;
    r18.xyz = r17.xyz + -r16.yzx;
    r19.xyz = -r13.yzx + r11.yzx;
    r20.xyz = r19.xyz + -r14.yzx;
    r18.xyz = -r20.xyz + r18.xyz;
    r20.xyz = r15.yzx + r12.yzx;
    r21.xyz = r20.xyz + r16.yzx;
    r22.xyz = r13.yzx + r11.yzx;
    r23.xyz = r22.xyz + r14.yzx;
    r21.xyz = -r23.xyz + r21.xyz;
    r23.xyz = viewMatrix._m02_m00_m01 * r18.xyz;
    r23.xyz = viewMatrix._m01_m02_m00 * r18.yzx + -r23.xyz;
    r24.xyz = viewMatrix._m02_m00_m01 * r21.xyz;
    r24.xyz = viewMatrix._m01_m02_m00 * r21.yzx + -r24.xyz;
    r25.xyz = viewMatrix._m12_m10_m11 * r18.xyz;
    r25.xyz = viewMatrix._m11_m12_m10 * r18.yzx + -r25.xyz;
    r26.xyz = viewMatrix._m12_m10_m11 * r21.xyz;
    r26.xyz = viewMatrix._m11_m12_m10 * r21.yzx + -r26.xyz;
    r4.w = dot(r11.xyz, viewMatrix._m20_m21_m22);
    r5.w = dot(r13.xyz, viewMatrix._m20_m21_m22);
    r6.w = dot(r14.xyz, viewMatrix._m20_m21_m22);
    r5.w = abs(r6.w) + abs(r5.w);
    r6.w = dot(r12.xyz, viewMatrix._m20_m21_m22);
    r7.w = dot(r15.xyz, viewMatrix._m20_m21_m22);
    r8.w = dot(r16.xyz, viewMatrix._m20_m21_m22);
    r7.w = abs(r8.w) + abs(r7.w);
    r8.w = -r5.w + r4.w;
    r9.w = -r7.w + r6.w;
    r8.w = min(r9.w, r8.w);
    r4.w = r5.w + r4.w;
    r5.w = r7.w + r6.w;
    r4.w = max(r5.w, r4.w);
    r5.w = dot(r11.xyz, r24.xyz);
    r6.w = dot(r11.xyz, r23.xyz);
    r7.w = dot(r13.xyz, r23.xyz);
    r9.w = dot(r14.xyz, r23.xyz);
    r7.w = abs(r9.w) + abs(r7.w);
    r9.w = dot(r12.xyz, r23.xyz);
    r10.w = dot(r15.xyz, r23.xyz);
    r11.w = dot(r16.xyz, r23.xyz);
    r10.w = abs(r11.w) + abs(r10.w);
    r11.w = -r7.w + r6.w;
    r12.w = -r10.w + r9.w;
    r11.w = min(r12.w, r11.w);
    r6.w = r7.w + r6.w;
    r7.w = r10.w + r9.w;
    r6.w = max(r7.w, r6.w);
    r7.w = dot(r13.xyz, r24.xyz);
    r9.w = dot(r14.xyz, r24.xyz);
    r7.w = abs(r9.w) + abs(r7.w);
    r9.w = dot(r12.xyz, r24.xyz);
    r10.w = dot(r15.xyz, r24.xyz);
    r12.w = dot(r16.xyz, r24.xyz);
    r10.w = abs(r12.w) + abs(r10.w);
    r12.w = -r7.w + r5.w;
    r13.w = -r10.w + r9.w;
    r12.w = min(r13.w, r12.w);
    r5.w = r7.w + r5.w;
    r7.w = r10.w + r9.w;
    r5.w = max(r7.w, r5.w);
    r7.w = dot(r11.xyz, r25.xyz);
    r9.w = dot(r13.xyz, r25.xyz);
    r10.w = dot(r14.xyz, r25.xyz);
    r9.w = abs(r10.w) + abs(r9.w);
    r10.w = dot(r12.xyz, r25.xyz);
    r13.w = dot(r15.xyz, r25.xyz);
    r14.w = dot(r16.xyz, r25.xyz);
    r13.w = abs(r14.w) + abs(r13.w);
    r14.w = -r9.w + r7.w;
    r15.w = -r13.w + r10.w;
    r14.w = min(r15.w, r14.w);
    r7.w = r9.w + r7.w;
    r9.w = r13.w + r10.w;
    r7.w = max(r9.w, r7.w);
    r9.w = dot(r11.xyz, r26.xyz);
    r10.w = dot(r13.xyz, r26.xyz);
    r13.w = dot(r14.xyz, r26.xyz);
    r10.w = abs(r13.w) + abs(r10.w);
    r13.w = dot(r12.xyz, r26.xyz);
    r15.w = dot(r15.xyz, r26.xyz);
    r16.w = dot(r16.xyz, r26.xyz);
    r15.w = abs(r16.w) + abs(r15.w);
    r16.w = -r10.w + r9.w;
    r17.w = -r15.w + r13.w;
    r16.w = min(r17.w, r16.w);
    r9.w = r10.w + r9.w;
    r10.w = r15.w + r13.w;
    r9.w = max(r10.w, r9.w);
    r20.xyz = r20.xyz + -r16.yzx;
    r22.xyz = r22.xyz + -r14.yzx;
    r20.xyz = -r22.xyz + r20.xyz;
    r17.xyz = r17.xyz + r16.yzx;
    r19.xyz = r19.xyz + r14.yzx;
    r17.xyz = -r19.xyz + r17.xyz;
    r19.y = 0;
    r10.w = r3.w;
    r22.xyzw = float4(0,0,0,0);
    r13.w = numLights;
    while (true) {
      r15.w = cmp((uint)r13.w >= (uint)r0.w);
      if (r15.w != 0) break;
      r15.w = (int)r13.w + -numLights;
      r17.w = (int)r15.w & 31;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r27.xyzw, r13.w, l(0), t11.xyzw
    r27.x = gCullConstants[]..swiz;
    r27.y = gCullConstants[]..swiz;
    r27.z = gCullConstants[]..swiz;
    r27.w = gCullConstants[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r28.xyzw, r13.w, l(16), t11.xyzw
    r28.x = gCullConstants[]..swiz;
    r28.y = gCullConstants[]..swiz;
    r28.z = gCullConstants[]..swiz;
    r28.w = gCullConstants[]..swiz;
      r29.xyz = r27.xyz + -r8.xyz;
      r30.x = r27.w;
      r30.yz = r28.xy;
      r30.xyz = r30.xyz + r10.xyz;
      r29.xyz = cmp(r30.xyz < abs(r29.xyz));
      r18.w = (int)r29.y | (int)r29.x;
      r18.w = (int)r29.z | (int)r18.w;
      if (r18.w == 0) {
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r29.xyzw, r13.w, l(32), t11.xyzw
      r29.x = gCullConstants[]..swiz;
      r29.y = gCullConstants[]..swiz;
      r29.z = gCullConstants[]..swiz;
      r29.w = gCullConstants[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r30.xyzw, r13.w, l(48), t11.xyzw
      r30.x = gCullConstants[]..swiz;
      r30.y = gCullConstants[]..swiz;
      r30.z = gCullConstants[]..swiz;
      r30.w = gCullConstants[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r31.xy, r13.w, l(64), t11.xyxx
      r31.x = gCullConstants[]..swiz;
      r31.y = gCullConstants[]..swiz;
        r28.xyz = r29.yzw * r28.zzz;
        r32.xyz = r30.xyz * r28.www;
        r31.z = r30.w;
        r33.xyz = r31.zxy * r29.xxx;
        r19.zw = float2(0,0);
        r18.w = 0;
        while (true) {
          r20.w = cmp((int)r19.w >= 3);
          r18.w = 0;
          if (r20.w != 0) break;
          r34.xyz = icb[r19.w+0].xxx * r29.yzw;
          r34.xyz = icb[r19.w+0].yyy * r30.xyz + r34.xyz;
          r34.xyz = icb[r19.w+0].zzz * r31.zxy + r34.xyz;
          r20.w = dot(r27.xyz, r34.xyz);
          r21.w = dot(r28.xyz, r34.xyz);
          r23.w = dot(r32.xyz, r34.xyz);
          r21.w = abs(r23.w) + abs(r21.w);
          r23.w = dot(r33.xyz, r34.xyz);
          r21.w = abs(r23.w) + r21.w;
          r23.w = -r21.w + r20.w;
          r20.w = r21.w + r20.w;
          r21.w = dot(r11.xyz, r34.xyz);
          r24.w = dot(r13.xyz, r34.xyz);
          r25.w = dot(r14.xyz, r34.xyz);
          r24.w = abs(r25.w) + abs(r24.w);
          r25.w = dot(r12.xyz, r34.xyz);
          r26.w = dot(r15.xyz, r34.xyz);
          r27.w = dot(r16.xyz, r34.xyz);
          r26.w = abs(r27.w) + abs(r26.w);
          r27.w = -r24.w + r21.w;
          r28.w = -r26.w + r25.w;
          r27.w = min(r28.w, r27.w);
          r21.w = r24.w + r21.w;
          r24.w = r26.w + r25.w;
          r21.w = max(r24.w, r21.w);
          r20.w = cmp(r20.w < r27.w);
          r21.w = cmp(r21.w < r23.w);
          r20.w = (int)r20.w | (int)r21.w;
          if (r20.w != 0) {
            r19.z = -1;
            r18.w = -1;
            break;
          }
          r19.x = (int)r19.w + 1;
          r19.zw = r19.yx;
          r18.w = r20.w;
        }
        if (r18.w == 0) {
          r19.x = dot(r27.xyz, viewMatrix._m20_m21_m22);
          r19.w = dot(r28.xyz, viewMatrix._m20_m21_m22);
          r20.w = dot(r32.xyz, viewMatrix._m20_m21_m22);
          r19.w = abs(r20.w) + abs(r19.w);
          r20.w = dot(r33.xyz, viewMatrix._m20_m21_m22);
          r19.w = abs(r20.w) + r19.w;
          r20.w = r19.x + -r19.w;
          r19.x = r19.x + r19.w;
          r19.x = cmp(r19.x < r8.w);
          r19.w = cmp(r4.w < r20.w);
          r19.x = (int)r19.w | (int)r19.x;
          r19.z = (int)r19.z | (int)r19.x;
          r19.w = ~(int)r19.x;
          if (r19.x == 0) {
            if (r19.x == 0) {
              r20.w = dot(r27.xyz, r23.xyz);
              r21.w = dot(r28.xyz, r23.xyz);
              r23.w = dot(r32.xyz, r23.xyz);
              r21.w = abs(r23.w) + abs(r21.w);
              r23.w = dot(r33.xyz, r23.xyz);
              r21.w = abs(r23.w) + r21.w;
              r23.w = -r21.w + r20.w;
              r20.w = r21.w + r20.w;
              r20.w = cmp(r20.w < r11.w);
              r21.w = cmp(r6.w < r23.w);
              r34.y = (int)r20.w | (int)r21.w;
              r19.z = (int)r19.z | (int)r34.y;
              r34.x = r34.y;
            } else {
              r34.xy = float2(-1,-1);
            }
            r34.xy = r19.ww ? r34.yx : 0;
            r19.xw = (int2)r19.xx | (int2)r34.yx;
          } else {
            r19.xw = float2(-1,-1);
          }
          r19.w = ~(int)r19.w;
          r20.w = ~(int)r19.x;
          r19.w = r20.w ? r19.w : 0;
          if (r19.w != 0) {
            r19.w = dot(r27.xyz, r24.xyz);
            r20.w = dot(r28.xyz, r24.xyz);
            r21.w = dot(r32.xyz, r24.xyz);
            r20.w = abs(r21.w) + abs(r20.w);
            r21.w = dot(r33.xyz, r24.xyz);
            r20.w = abs(r21.w) + r20.w;
            r21.w = -r20.w + r19.w;
            r19.w = r20.w + r19.w;
            r19.w = cmp(r19.w < r12.w);
            r20.w = cmp(r5.w < r21.w);
            r19.w = (int)r19.w | (int)r20.w;
            r19.z = (int)r19.z | (int)r19.w;
            r19.xz = r19.wz;
          } else {
            r19.w = -1;
          }
          r19.w = ~(int)r19.w;
          r20.w = ~(int)r19.x;
          r19.w = r20.w ? r19.w : 0;
          if (r19.w != 0) {
            r19.w = dot(r27.xyz, r25.xyz);
            r20.w = dot(r28.xyz, r25.xyz);
            r21.w = dot(r32.xyz, r25.xyz);
            r20.w = abs(r21.w) + abs(r20.w);
            r21.w = dot(r33.xyz, r25.xyz);
            r20.w = abs(r21.w) + r20.w;
            r21.w = -r20.w + r19.w;
            r19.w = r20.w + r19.w;
            r19.w = cmp(r19.w < r14.w);
            r20.w = cmp(r7.w < r21.w);
            r19.w = (int)r19.w | (int)r20.w;
            r19.z = (int)r19.z | (int)r19.w;
            r19.xz = r19.wz;
          } else {
            r19.w = -1;
          }
          r19.w = ~(int)r19.w;
          r20.w = ~(int)r19.x;
          r19.w = r20.w ? r19.w : 0;
          if (r19.w != 0) {
            r19.w = dot(r27.xyz, r26.xyz);
            r20.w = dot(r28.xyz, r26.xyz);
            r21.w = dot(r32.xyz, r26.xyz);
            r20.w = abs(r21.w) + abs(r20.w);
            r21.w = dot(r33.xyz, r26.xyz);
            r20.w = abs(r21.w) + r20.w;
            r21.w = -r20.w + r19.w;
            r19.w = r20.w + r19.w;
            r19.w = cmp(r19.w < r16.w);
            r20.w = cmp(r9.w < r21.w);
            r19.x = (int)r19.w | (int)r20.w;
            r19.z = (int)r19.z | (int)r19.x;
          }
          if (r19.x == 0) {
            r34.xyz = viewMatrix._m01_m02_m00 * r29.wyz;
            r34.xyz = r29.zwy * viewMatrix._m02_m00_m01 + -r34.xyz;
            r19.x = dot(r27.xyz, r34.xyz);
            r19.w = dot(r28.xyz, r34.xyz);
            r20.w = dot(r32.xyz, r34.xyz);
            r19.w = abs(r20.w) + abs(r19.w);
            r20.w = dot(r33.xyz, r34.xyz);
            r19.w = abs(r20.w) + r19.w;
            r20.w = r19.x + -r19.w;
            r19.x = r19.x + r19.w;
            r19.w = dot(r11.xyz, r34.xyz);
            r21.w = dot(r13.xyz, r34.xyz);
            r23.w = dot(r14.xyz, r34.xyz);
            r21.w = abs(r23.w) + abs(r21.w);
            r23.w = dot(r12.xyz, r34.xyz);
            r24.w = dot(r15.xyz, r34.xyz);
            r25.w = dot(r16.xyz, r34.xyz);
            r24.w = abs(r25.w) + abs(r24.w);
            r25.w = -r21.w + r19.w;
            r26.w = -r24.w + r23.w;
            r25.w = min(r26.w, r25.w);
            r19.w = r21.w + r19.w;
            r21.w = r24.w + r23.w;
            r19.w = max(r21.w, r19.w);
            r19.x = cmp(r19.x < r25.w);
            r19.w = cmp(r19.w < r20.w);
            r19.x = (int)r19.w | (int)r19.x;
            r19.w = (int)r19.z | (int)r19.x;
            r20.w = ~(int)r19.x;
            if (r19.x == 0) {
              if (r19.x == 0) {
                r34.xyz = viewMatrix._m01_m02_m00 * r30.zxy;
                r34.xyz = r30.yzx * viewMatrix._m02_m00_m01 + -r34.xyz;
                r21.w = dot(r27.xyz, r34.xyz);
                r23.w = dot(r28.xyz, r34.xyz);
                r24.w = dot(r32.xyz, r34.xyz);
                r23.w = abs(r24.w) + abs(r23.w);
                r24.w = dot(r33.xyz, r34.xyz);
                r23.w = abs(r24.w) + r23.w;
                r24.w = -r23.w + r21.w;
                r21.w = r23.w + r21.w;
                r23.w = dot(r11.xyz, r34.xyz);
                r25.w = dot(r13.xyz, r34.xyz);
                r26.w = dot(r14.xyz, r34.xyz);
                r25.w = abs(r26.w) + abs(r25.w);
                r26.w = dot(r12.xyz, r34.xyz);
                r27.w = dot(r15.xyz, r34.xyz);
                r28.w = dot(r16.xyz, r34.xyz);
                r27.w = abs(r28.w) + abs(r27.w);
                r28.w = -r25.w + r23.w;
                r29.x = -r27.w + r26.w;
                r28.w = min(r29.x, r28.w);
                r23.w = r25.w + r23.w;
                r25.w = r27.w + r26.w;
                r23.w = max(r25.w, r23.w);
                r21.w = cmp(r21.w < r28.w);
                r23.w = cmp(r23.w < r24.w);
                r34.y = (int)r21.w | (int)r23.w;
                r19.w = (int)r19.w | (int)r34.y;
                r34.x = r34.y;
              } else {
                r34.xy = float2(-1,-1);
              }
              r34.xy = (int2)r20.ww & (int2)r34.yx;
              r34.xy = (int2)r19.xx | (int2)r34.yx;
            } else {
              r34.xy = float2(-1,-1);
            }
            r19.x = ~(int)r34.y;
            r20.w = ~(int)r34.x;
            r19.x = r19.x ? r20.w : 0;
            if (r19.x != 0) {
              r34.yzw = viewMatrix._m01_m02_m00 * r31.yzx;
              r34.yzw = r31.xyz * viewMatrix._m02_m00_m01 + -r34.yzw;
              r19.x = dot(r27.xyz, r34.yzw);
              r20.w = dot(r28.xyz, r34.yzw);
              r21.w = dot(r32.xyz, r34.yzw);
              r20.w = abs(r21.w) + abs(r20.w);
              r21.w = dot(r33.xyz, r34.yzw);
              r20.w = abs(r21.w) + r20.w;
              r21.w = -r20.w + r19.x;
              r19.x = r20.w + r19.x;
              r20.w = dot(r11.xyz, r34.yzw);
              r23.w = dot(r13.xyz, r34.yzw);
              r24.w = dot(r14.xyz, r34.yzw);
              r23.w = abs(r24.w) + abs(r23.w);
              r24.w = dot(r12.xyz, r34.yzw);
              r25.w = dot(r15.xyz, r34.yzw);
              r26.w = dot(r16.xyz, r34.yzw);
              r25.w = abs(r26.w) + abs(r25.w);
              r26.w = -r23.w + r20.w;
              r27.w = -r25.w + r24.w;
              r26.w = min(r27.w, r26.w);
              r20.w = r23.w + r20.w;
              r23.w = r25.w + r24.w;
              r20.w = max(r23.w, r20.w);
              r19.x = cmp(r19.x < r26.w);
              r20.w = cmp(r20.w < r21.w);
              r34.x = (int)r19.x | (int)r20.w;
              r19.w = (int)r19.w | (int)r34.x;
            }
            r19.x = ~(int)r34.x;
            if (r34.x == 0) {
              if (r34.x == 0) {
                if (r34.x == 0) {
                  r34.xyz = viewMatrix._m11_m12_m10 * r29.wyz;
                  r34.xyz = r29.zwy * viewMatrix._m12_m10_m11 + -r34.xyz;
                  r20.w = dot(r27.xyz, r34.xyz);
                  r21.w = dot(r28.xyz, r34.xyz);
                  r23.w = dot(r32.xyz, r34.xyz);
                  r21.w = abs(r23.w) + abs(r21.w);
                  r23.w = dot(r33.xyz, r34.xyz);
                  r21.w = abs(r23.w) + r21.w;
                  r23.w = -r21.w + r20.w;
                  r20.w = r21.w + r20.w;
                  r21.w = dot(r11.xyz, r34.xyz);
                  r24.w = dot(r13.xyz, r34.xyz);
                  r25.w = dot(r14.xyz, r34.xyz);
                  r24.w = abs(r25.w) + abs(r24.w);
                  r25.w = dot(r12.xyz, r34.xyz);
                  r26.w = dot(r15.xyz, r34.xyz);
                  r27.w = dot(r16.xyz, r34.xyz);
                  r26.w = abs(r27.w) + abs(r26.w);
                  r27.w = -r24.w + r21.w;
                  r28.w = -r26.w + r25.w;
                  r27.w = min(r28.w, r27.w);
                  r21.w = r24.w + r21.w;
                  r24.w = r26.w + r25.w;
                  r21.w = max(r24.w, r21.w);
                  r20.w = cmp(r20.w < r27.w);
                  r21.w = cmp(r21.w < r23.w);
                  r20.w = (int)r20.w | (int)r21.w;
                  r19.w = (int)r19.w | (int)r20.w;
                  r34.x = r20.w;
                } else {
                  r34.x = -1;
                  r20.w = 0;
                }
              } else {
                r34.x = -1;
                r20.w = -1;
              }
              r20.w = ~(int)r20.w;
              r21.w = ~(int)r34.x;
              r20.w = r21.w ? r20.w : 0;
              if (r20.w != 0) {
                r35.xyz = viewMatrix._m11_m12_m10 * r30.zxy;
                r35.xyz = r30.yzx * viewMatrix._m12_m10_m11 + -r35.xyz;
                r20.w = dot(r27.xyz, r35.xyz);
                r21.w = dot(r28.xyz, r35.xyz);
                r23.w = dot(r32.xyz, r35.xyz);
                r21.w = abs(r23.w) + abs(r21.w);
                r23.w = dot(r33.xyz, r35.xyz);
                r21.w = abs(r23.w) + r21.w;
                r23.w = -r21.w + r20.w;
                r20.w = r21.w + r20.w;
                r21.w = dot(r11.xyz, r35.xyz);
                r24.w = dot(r13.xyz, r35.xyz);
                r25.w = dot(r14.xyz, r35.xyz);
                r24.w = abs(r25.w) + abs(r24.w);
                r25.w = dot(r12.xyz, r35.xyz);
                r26.w = dot(r15.xyz, r35.xyz);
                r27.w = dot(r16.xyz, r35.xyz);
                r26.w = abs(r27.w) + abs(r26.w);
                r27.w = -r24.w + r21.w;
                r28.w = -r26.w + r25.w;
                r27.w = min(r28.w, r27.w);
                r21.w = r24.w + r21.w;
                r24.w = r26.w + r25.w;
                r21.w = max(r24.w, r21.w);
                r20.w = cmp(r20.w < r27.w);
                r21.w = cmp(r21.w < r23.w);
                r20.w = (int)r20.w | (int)r21.w;
                r19.w = (int)r19.w | (int)r20.w;
                r34.x = r20.w;
              } else {
                r20.w = -1;
              }
              r20.w = ~(int)r20.w;
              r21.w = ~(int)r34.x;
              r20.w = r21.w ? r20.w : 0;
              if (r20.w != 0) {
                r35.xyz = viewMatrix._m11_m12_m10 * r31.yzx;
                r35.xyz = r31.xyz * viewMatrix._m12_m10_m11 + -r35.xyz;
                r20.w = dot(r27.xyz, r35.xyz);
                r21.w = dot(r28.xyz, r35.xyz);
                r23.w = dot(r32.xyz, r35.xyz);
                r21.w = abs(r23.w) + abs(r21.w);
                r23.w = dot(r33.xyz, r35.xyz);
                r21.w = abs(r23.w) + r21.w;
                r23.w = -r21.w + r20.w;
                r20.w = r21.w + r20.w;
                r21.w = dot(r11.xyz, r35.xyz);
                r24.w = dot(r13.xyz, r35.xyz);
                r25.w = dot(r14.xyz, r35.xyz);
                r24.w = abs(r25.w) + abs(r24.w);
                r25.w = dot(r12.xyz, r35.xyz);
                r26.w = dot(r15.xyz, r35.xyz);
                r27.w = dot(r16.xyz, r35.xyz);
                r26.w = abs(r27.w) + abs(r26.w);
                r27.w = -r24.w + r21.w;
                r28.w = -r26.w + r25.w;
                r27.w = min(r28.w, r27.w);
                r21.w = r24.w + r21.w;
                r24.w = r26.w + r25.w;
                r21.w = max(r24.w, r21.w);
                r20.w = cmp(r20.w < r27.w);
                r21.w = cmp(r21.w < r23.w);
                r34.x = (int)r20.w | (int)r21.w;
                r19.w = (int)r19.w | (int)r34.x;
              }
            } else {
              r34.x = -1;
            }
            r20.w = ~(int)r34.x;
            r19.x = r19.x ? r20.w : 0;
            if (r19.x != 0) {
              r35.xyz = r29.wyz * r18.xyz;
              r35.xyz = r29.zwy * r18.yzx + -r35.xyz;
              r20.w = dot(r27.xyz, r35.xyz);
              r21.w = dot(r28.xyz, r35.xyz);
              r23.w = dot(r32.xyz, r35.xyz);
              r21.w = abs(r23.w) + abs(r21.w);
              r23.w = dot(r33.xyz, r35.xyz);
              r21.w = abs(r23.w) + r21.w;
              r23.w = -r21.w + r20.w;
              r20.w = r21.w + r20.w;
              r21.w = dot(r11.xyz, r35.xyz);
              r24.w = dot(r13.xyz, r35.xyz);
              r25.w = dot(r14.xyz, r35.xyz);
              r24.w = abs(r25.w) + abs(r24.w);
              r25.w = dot(r12.xyz, r35.xyz);
              r26.w = dot(r15.xyz, r35.xyz);
              r27.w = dot(r16.xyz, r35.xyz);
              r26.w = abs(r27.w) + abs(r26.w);
              r27.w = -r24.w + r21.w;
              r28.w = -r26.w + r25.w;
              r27.w = min(r28.w, r27.w);
              r21.w = r24.w + r21.w;
              r24.w = r26.w + r25.w;
              r21.w = max(r24.w, r21.w);
              r20.w = cmp(r20.w < r27.w);
              r21.w = cmp(r21.w < r23.w);
              r20.w = (int)r20.w | (int)r21.w;
              r19.w = (int)r19.w | (int)r20.w;
              r21.w = ~(int)r20.w;
              if (r20.w == 0) {
                if (r20.w == 0) {
                  r35.xyz = r30.zxy * r18.xyz;
                  r35.xyz = r30.yzx * r18.yzx + -r35.xyz;
                  r23.w = dot(r27.xyz, r35.xyz);
                  r24.w = dot(r28.xyz, r35.xyz);
                  r25.w = dot(r32.xyz, r35.xyz);
                  r24.w = abs(r25.w) + abs(r24.w);
                  r25.w = dot(r33.xyz, r35.xyz);
                  r24.w = abs(r25.w) + r24.w;
                  r25.w = -r24.w + r23.w;
                  r23.w = r24.w + r23.w;
                  r24.w = dot(r11.xyz, r35.xyz);
                  r26.w = dot(r13.xyz, r35.xyz);
                  r27.w = dot(r14.xyz, r35.xyz);
                  r26.w = abs(r27.w) + abs(r26.w);
                  r27.w = dot(r12.xyz, r35.xyz);
                  r28.w = dot(r15.xyz, r35.xyz);
                  r29.x = dot(r16.xyz, r35.xyz);
                  r28.w = abs(r29.x) + abs(r28.w);
                  r29.x = -r26.w + r24.w;
                  r30.w = -r28.w + r27.w;
                  r29.x = min(r30.w, r29.x);
                  r24.w = r26.w + r24.w;
                  r26.w = r28.w + r27.w;
                  r24.w = max(r26.w, r24.w);
                  r23.w = cmp(r23.w < r29.x);
                  r24.w = cmp(r24.w < r25.w);
                  r35.y = (int)r23.w | (int)r24.w;
                  r19.w = (int)r19.w | (int)r35.y;
                  r35.x = r35.y;
                } else {
                  r35.xy = float2(-1,-1);
                }
                r34.zw = r21.ww ? r35.yx : 0;
                r34.xy = (int2)r20.ww | (int2)r34.wz;
              } else {
                r34.xy = float2(-1,-1);
              }
              r20.w = ~(int)r34.y;
              r21.w = ~(int)r34.x;
              r20.w = r20.w ? r21.w : 0;
              if (r20.w != 0) {
                r35.xyz = r31.yzx * r18.xyz;
                r35.xyz = r31.xyz * r18.yzx + -r35.xyz;
                r20.w = dot(r27.xyz, r35.xyz);
                r21.w = dot(r28.xyz, r35.xyz);
                r23.w = dot(r32.xyz, r35.xyz);
                r21.w = abs(r23.w) + abs(r21.w);
                r23.w = dot(r33.xyz, r35.xyz);
                r21.w = abs(r23.w) + r21.w;
                r23.w = -r21.w + r20.w;
                r20.w = r21.w + r20.w;
                r21.w = dot(r11.xyz, r35.xyz);
                r24.w = dot(r13.xyz, r35.xyz);
                r25.w = dot(r14.xyz, r35.xyz);
                r24.w = abs(r25.w) + abs(r24.w);
                r25.w = dot(r12.xyz, r35.xyz);
                r26.w = dot(r15.xyz, r35.xyz);
                r27.w = dot(r16.xyz, r35.xyz);
                r26.w = abs(r27.w) + abs(r26.w);
                r27.w = -r24.w + r21.w;
                r28.w = -r26.w + r25.w;
                r27.w = min(r28.w, r27.w);
                r21.w = r24.w + r21.w;
                r24.w = r26.w + r25.w;
                r21.w = max(r24.w, r21.w);
                r20.w = cmp(r20.w < r27.w);
                r21.w = cmp(r21.w < r23.w);
                r34.x = (int)r20.w | (int)r21.w;
                r19.w = (int)r19.w | (int)r34.x;
              }
            }
            r20.w = ~(int)r34.x;
            r19.x = r19.x ? r20.w : 0;
            if (r19.x != 0) {
              r35.xyz = r29.wyz * r20.xyz;
              r35.xyz = r29.zwy * r20.yzx + -r35.xyz;
              r20.w = dot(r27.xyz, r35.xyz);
              r21.w = dot(r28.xyz, r35.xyz);
              r23.w = dot(r32.xyz, r35.xyz);
              r21.w = abs(r23.w) + abs(r21.w);
              r23.w = dot(r33.xyz, r35.xyz);
              r21.w = abs(r23.w) + r21.w;
              r23.w = -r21.w + r20.w;
              r20.w = r21.w + r20.w;
              r21.w = dot(r11.xyz, r35.xyz);
              r24.w = dot(r13.xyz, r35.xyz);
              r25.w = dot(r14.xyz, r35.xyz);
              r24.w = abs(r25.w) + abs(r24.w);
              r25.w = dot(r12.xyz, r35.xyz);
              r26.w = dot(r15.xyz, r35.xyz);
              r27.w = dot(r16.xyz, r35.xyz);
              r26.w = abs(r27.w) + abs(r26.w);
              r27.w = -r24.w + r21.w;
              r28.w = -r26.w + r25.w;
              r27.w = min(r28.w, r27.w);
              r21.w = r24.w + r21.w;
              r24.w = r26.w + r25.w;
              r21.w = max(r24.w, r21.w);
              r20.w = cmp(r20.w < r27.w);
              r21.w = cmp(r21.w < r23.w);
              r20.w = (int)r20.w | (int)r21.w;
              r19.w = (int)r19.w | (int)r20.w;
              r21.w = ~(int)r20.w;
              if (r20.w == 0) {
                if (r20.w == 0) {
                  r35.xyz = r30.zxy * r20.xyz;
                  r35.xyz = r30.yzx * r20.yzx + -r35.xyz;
                  r23.w = dot(r27.xyz, r35.xyz);
                  r24.w = dot(r28.xyz, r35.xyz);
                  r25.w = dot(r32.xyz, r35.xyz);
                  r24.w = abs(r25.w) + abs(r24.w);
                  r25.w = dot(r33.xyz, r35.xyz);
                  r24.w = abs(r25.w) + r24.w;
                  r25.w = -r24.w + r23.w;
                  r23.w = r24.w + r23.w;
                  r24.w = dot(r11.xyz, r35.xyz);
                  r26.w = dot(r13.xyz, r35.xyz);
                  r27.w = dot(r14.xyz, r35.xyz);
                  r26.w = abs(r27.w) + abs(r26.w);
                  r27.w = dot(r12.xyz, r35.xyz);
                  r28.w = dot(r15.xyz, r35.xyz);
                  r29.x = dot(r16.xyz, r35.xyz);
                  r28.w = abs(r29.x) + abs(r28.w);
                  r29.x = -r26.w + r24.w;
                  r30.w = -r28.w + r27.w;
                  r29.x = min(r30.w, r29.x);
                  r24.w = r26.w + r24.w;
                  r26.w = r28.w + r27.w;
                  r24.w = max(r26.w, r24.w);
                  r23.w = cmp(r23.w < r29.x);
                  r24.w = cmp(r24.w < r25.w);
                  r35.y = (int)r23.w | (int)r24.w;
                  r19.w = (int)r19.w | (int)r35.y;
                  r35.x = r35.y;
                } else {
                  r35.xy = float2(-1,-1);
                }
                r34.zw = r21.ww ? r35.yx : 0;
                r34.xy = (int2)r20.ww | (int2)r34.wz;
              } else {
                r34.xy = float2(-1,-1);
              }
              r20.w = ~(int)r34.y;
              r21.w = ~(int)r34.x;
              r20.w = r20.w ? r21.w : 0;
              if (r20.w != 0) {
                r35.xyz = r31.yzx * r20.xyz;
                r35.xyz = r31.xyz * r20.yzx + -r35.xyz;
                r20.w = dot(r27.xyz, r35.xyz);
                r21.w = dot(r28.xyz, r35.xyz);
                r23.w = dot(r32.xyz, r35.xyz);
                r21.w = abs(r23.w) + abs(r21.w);
                r23.w = dot(r33.xyz, r35.xyz);
                r21.w = abs(r23.w) + r21.w;
                r23.w = -r21.w + r20.w;
                r20.w = r21.w + r20.w;
                r21.w = dot(r11.xyz, r35.xyz);
                r24.w = dot(r13.xyz, r35.xyz);
                r25.w = dot(r14.xyz, r35.xyz);
                r24.w = abs(r25.w) + abs(r24.w);
                r25.w = dot(r12.xyz, r35.xyz);
                r26.w = dot(r15.xyz, r35.xyz);
                r27.w = dot(r16.xyz, r35.xyz);
                r26.w = abs(r27.w) + abs(r26.w);
                r27.w = -r24.w + r21.w;
                r28.w = -r26.w + r25.w;
                r27.w = min(r28.w, r27.w);
                r21.w = r24.w + r21.w;
                r24.w = r26.w + r25.w;
                r21.w = max(r24.w, r21.w);
                r20.w = cmp(r20.w < r27.w);
                r21.w = cmp(r21.w < r23.w);
                r34.x = (int)r20.w | (int)r21.w;
                r19.w = (int)r19.w | (int)r34.x;
              }
            }
            r20.w = ~(int)r34.x;
            r19.x = r19.x ? r20.w : 0;
            if (r19.x != 0) {
              r35.xyz = r29.wyz * r17.xyz;
              r35.xyz = r29.zwy * r17.yzx + -r35.xyz;
              r20.w = dot(r27.xyz, r35.xyz);
              r21.w = dot(r28.xyz, r35.xyz);
              r23.w = dot(r32.xyz, r35.xyz);
              r21.w = abs(r23.w) + abs(r21.w);
              r23.w = dot(r33.xyz, r35.xyz);
              r21.w = abs(r23.w) + r21.w;
              r23.w = -r21.w + r20.w;
              r20.w = r21.w + r20.w;
              r21.w = dot(r11.xyz, r35.xyz);
              r24.w = dot(r13.xyz, r35.xyz);
              r25.w = dot(r14.xyz, r35.xyz);
              r24.w = abs(r25.w) + abs(r24.w);
              r25.w = dot(r12.xyz, r35.xyz);
              r26.w = dot(r15.xyz, r35.xyz);
              r27.w = dot(r16.xyz, r35.xyz);
              r26.w = abs(r27.w) + abs(r26.w);
              r27.w = -r24.w + r21.w;
              r28.w = -r26.w + r25.w;
              r27.w = min(r28.w, r27.w);
              r21.w = r24.w + r21.w;
              r24.w = r26.w + r25.w;
              r21.w = max(r24.w, r21.w);
              r20.w = cmp(r20.w < r27.w);
              r21.w = cmp(r21.w < r23.w);
              r20.w = (int)r20.w | (int)r21.w;
              r19.w = (int)r19.w | (int)r20.w;
              r21.w = ~(int)r20.w;
              if (r20.w == 0) {
                if (r20.w == 0) {
                  r35.xyz = r30.zxy * r17.xyz;
                  r35.xyz = r30.yzx * r17.yzx + -r35.xyz;
                  r23.w = dot(r27.xyz, r35.xyz);
                  r24.w = dot(r28.xyz, r35.xyz);
                  r25.w = dot(r32.xyz, r35.xyz);
                  r24.w = abs(r25.w) + abs(r24.w);
                  r25.w = dot(r33.xyz, r35.xyz);
                  r24.w = abs(r25.w) + r24.w;
                  r25.w = -r24.w + r23.w;
                  r23.w = r24.w + r23.w;
                  r24.w = dot(r11.xyz, r35.xyz);
                  r26.w = dot(r13.xyz, r35.xyz);
                  r27.w = dot(r14.xyz, r35.xyz);
                  r26.w = abs(r27.w) + abs(r26.w);
                  r27.w = dot(r12.xyz, r35.xyz);
                  r28.w = dot(r15.xyz, r35.xyz);
                  r29.x = dot(r16.xyz, r35.xyz);
                  r28.w = abs(r29.x) + abs(r28.w);
                  r29.x = -r26.w + r24.w;
                  r30.w = -r28.w + r27.w;
                  r29.x = min(r30.w, r29.x);
                  r24.w = r26.w + r24.w;
                  r26.w = r28.w + r27.w;
                  r24.w = max(r26.w, r24.w);
                  r23.w = cmp(r23.w < r29.x);
                  r24.w = cmp(r24.w < r25.w);
                  r35.y = (int)r23.w | (int)r24.w;
                  r19.w = (int)r19.w | (int)r35.y;
                  r35.x = r35.y;
                } else {
                  r35.xy = float2(-1,-1);
                }
                r34.zw = r21.ww ? r35.yx : 0;
                r34.xy = (int2)r20.ww | (int2)r34.wz;
              } else {
                r34.xy = float2(-1,-1);
              }
              r20.w = ~(int)r34.y;
              r21.w = ~(int)r34.x;
              r20.w = r20.w ? r21.w : 0;
              if (r20.w != 0) {
                r35.xyz = r31.yzx * r17.xyz;
                r35.xyz = r31.xyz * r17.yzx + -r35.xyz;
                r20.w = dot(r27.xyz, r35.xyz);
                r21.w = dot(r28.xyz, r35.xyz);
                r23.w = dot(r32.xyz, r35.xyz);
                r21.w = abs(r23.w) + abs(r21.w);
                r23.w = dot(r33.xyz, r35.xyz);
                r21.w = abs(r23.w) + r21.w;
                r23.w = -r21.w + r20.w;
                r20.w = r21.w + r20.w;
                r21.w = dot(r11.xyz, r35.xyz);
                r24.w = dot(r13.xyz, r35.xyz);
                r25.w = dot(r14.xyz, r35.xyz);
                r24.w = abs(r25.w) + abs(r24.w);
                r25.w = dot(r12.xyz, r35.xyz);
                r26.w = dot(r15.xyz, r35.xyz);
                r27.w = dot(r16.xyz, r35.xyz);
                r26.w = abs(r27.w) + abs(r26.w);
                r27.w = -r24.w + r21.w;
                r28.w = -r26.w + r25.w;
                r27.w = min(r28.w, r27.w);
                r21.w = r24.w + r21.w;
                r24.w = r26.w + r25.w;
                r21.w = max(r24.w, r21.w);
                r20.w = cmp(r20.w < r27.w);
                r21.w = cmp(r21.w < r23.w);
                r34.x = (int)r20.w | (int)r21.w;
                r19.w = (int)r19.w | (int)r34.x;
              }
            }
            r20.w = ~(int)r34.x;
            r19.x = r19.x ? r20.w : 0;
            if (r19.x != 0) {
              r35.xyz = r29.wyz * r21.xyz;
              r29.xyz = r29.zwy * r21.yzx + -r35.xyz;
              r19.x = dot(r27.xyz, r29.xyz);
              r20.w = dot(r28.xyz, r29.xyz);
              r21.w = dot(r32.xyz, r29.xyz);
              r20.w = abs(r21.w) + abs(r20.w);
              r21.w = dot(r33.xyz, r29.xyz);
              r20.w = abs(r21.w) + r20.w;
              r21.w = -r20.w + r19.x;
              r19.x = r20.w + r19.x;
              r20.w = dot(r11.xyz, r29.xyz);
              r23.w = dot(r13.xyz, r29.xyz);
              r24.w = dot(r14.xyz, r29.xyz);
              r23.w = abs(r24.w) + abs(r23.w);
              r24.w = dot(r12.xyz, r29.xyz);
              r25.w = dot(r15.xyz, r29.xyz);
              r26.w = dot(r16.xyz, r29.xyz);
              r25.w = abs(r26.w) + abs(r25.w);
              r26.w = -r23.w + r20.w;
              r27.w = -r25.w + r24.w;
              r26.w = min(r27.w, r26.w);
              r20.w = r23.w + r20.w;
              r23.w = r25.w + r24.w;
              r20.w = max(r23.w, r20.w);
              r19.x = cmp(r19.x < r26.w);
              r20.w = cmp(r20.w < r21.w);
              r19.x = (int)r19.x | (int)r20.w;
              r19.w = (int)r19.w | (int)r19.x;
              r20.w = ~(int)r19.x;
              if (r19.x == 0) {
                if (r19.x == 0) {
                  r29.xyz = r30.zxy * r21.xyz;
                  r29.xyz = r30.yzx * r21.yzx + -r29.xyz;
                  r21.w = dot(r27.xyz, r29.xyz);
                  r23.w = dot(r28.xyz, r29.xyz);
                  r24.w = dot(r32.xyz, r29.xyz);
                  r23.w = abs(r24.w) + abs(r23.w);
                  r24.w = dot(r33.xyz, r29.xyz);
                  r23.w = abs(r24.w) + r23.w;
                  r24.w = -r23.w + r21.w;
                  r21.w = r23.w + r21.w;
                  r23.w = dot(r11.xyz, r29.xyz);
                  r25.w = dot(r13.xyz, r29.xyz);
                  r26.w = dot(r14.xyz, r29.xyz);
                  r25.w = abs(r26.w) + abs(r25.w);
                  r26.w = dot(r12.xyz, r29.xyz);
                  r27.w = dot(r15.xyz, r29.xyz);
                  r28.w = dot(r16.xyz, r29.xyz);
                  r27.w = abs(r28.w) + abs(r27.w);
                  r28.w = -r25.w + r23.w;
                  r29.x = -r27.w + r26.w;
                  r28.w = min(r29.x, r28.w);
                  r23.w = r25.w + r23.w;
                  r25.w = r27.w + r26.w;
                  r23.w = max(r25.w, r23.w);
                  r21.w = cmp(r21.w < r28.w);
                  r23.w = cmp(r23.w < r24.w);
                  r29.y = (int)r21.w | (int)r23.w;
                  r19.w = (int)r19.w | (int)r29.y;
                  r29.x = r29.y;
                } else {
                  r29.xy = float2(-1,-1);
                }
                r29.xy = r20.ww ? r29.yx : 0;
                r34.xy = (int2)r19.xx | (int2)r29.yx;
              } else {
                r34.xy = float2(-1,-1);
              }
              r19.x = ~(int)r34.y;
              r20.w = ~(int)r34.x;
              r19.x = r19.x ? r20.w : 0;
              if (r19.x != 0) {
                r29.xyz = r31.yzx * r21.xyz;
                r29.xyz = r31.xyz * r21.yzx + -r29.xyz;
                r19.x = dot(r27.xyz, r29.xyz);
                r20.w = dot(r28.xyz, r29.xyz);
                r21.w = dot(r32.xyz, r29.xyz);
                r20.w = abs(r21.w) + abs(r20.w);
                r21.w = dot(r33.xyz, r29.xyz);
                r20.w = abs(r21.w) + r20.w;
                r21.w = -r20.w + r19.x;
                r19.x = r20.w + r19.x;
                r20.w = dot(r11.xyz, r29.xyz);
                r23.w = dot(r13.xyz, r29.xyz);
                r24.w = dot(r14.xyz, r29.xyz);
                r23.w = abs(r24.w) + abs(r23.w);
                r24.w = dot(r12.xyz, r29.xyz);
                r25.w = dot(r15.xyz, r29.xyz);
                r26.w = dot(r16.xyz, r29.xyz);
                r25.w = abs(r26.w) + abs(r25.w);
                r26.w = -r23.w + r20.w;
                r27.x = -r25.w + r24.w;
                r26.w = min(r27.x, r26.w);
                r20.w = r23.w + r20.w;
                r23.w = r25.w + r24.w;
                r20.w = max(r23.w, r20.w);
                r19.x = cmp(r19.x < r26.w);
                r20.w = cmp(r20.w < r21.w);
                r34.x = (int)r19.x | (int)r20.w;
                r19.w = (int)r19.w | (int)r34.x;
              }
            }
            r19.z = r19.w ? r34.x : 0;
          }
        }
        r27.x = r22.z ? r22.x : r15.w;
        r19.x = cmp((int)r22.z == 1);
        r27.y = r19.x ? r15.w : r22.y;
        r27.z = (int)r22.z + 1;
        bitmask.w = ((~(-1 << 1)) << r15.w) & 0xffffffff;  r27.w = (((uint)1 << r15.w) & bitmask.w) | ((uint)r22.w & ~bitmask.w);
        r22.xyzw = r19.zzzz ? r22.xyzw : r27.xyzw;
      }
      r15.w = cmp((int)r17.w == 31);
      if (r15.w != 0) {
        [r10.w].0 = u7.x;
        r10.w = (int)r10.w + 1;
        r22.w = 0;
      }
      r13.w = (int)r13.w + 1;
    }
    r0.w = (int)r0.z + 32;
    r0.w = cmp((uint)r10.w < (uint)r0.w);
    if (r0.w != 0) {
      [r10.w].0 = u7.x;
    }
    r0.w = cmp(2 >= (uint)r22.z);
    r3.w = (uint)r22.z << 2;
    r3.w = (int)r3.w + 4;
    r3.w = (int)r0.y + (int)r3.w;
    r0.y = r0.w ? r3.w : r0.y;
  } else {
    r0.y = r1.x ? 52 : 20;
    r22.xy = float2(0,0);
  }
  if (numLights != 0) {
    r11.xyz = r4.yzx + -r2.wyz;
    r12.xyz = r6.zxy + -r2.wyz;
    r13.xyz = r12.zxy * r11.xyz;
    r11.xyz = r11.zxy * r12.xyz + -r13.xyz;
    r0.w = dot(r11.xyz, r11.xyz);
    r0.w = rsqrt(r0.w);
    r11.xyz = r11.xyz * r0.www;
    r0.w = dot(r11.xyz, r2.yzw);
    r13.xyz = r5.xyz + -r6.zxy;
    r14.xyz = r9.xyz + -r6.yzx;
    r15.xyz = r14.xyz * r13.xyz;
    r13.xyz = r13.zxy * r14.yzx + -r15.xyz;
    r1.x = dot(r13.xyz, r13.xyz);
    r1.x = rsqrt(r1.x);
    r13.xyz = r13.xyz * r1.xxx;
    r1.x = dot(r13.xyz, r6.xyz);
    r6.xyz = r7.zxy + -r9.yzx;
    r14.xyz = r1.zwy + -r9.xyz;
    r15.xyz = r14.xyz * r6.xyz;
    r6.xyz = r6.zxy * r14.yzx + -r15.xyz;
    r3.w = dot(r6.xyz, r6.xyz);
    r3.w = rsqrt(r3.w);
    r6.xyz = r6.xyz * r3.www;
    r3.w = dot(r6.yzx, r9.xyz);
    r3.xyz = r3.xyz + -r1.wyz;
    r14.xyz = r2.zwy + -r1.zwy;
    r15.xyz = r14.xyz * r3.xyz;
    r3.xyz = r3.zxy * r14.yzx + -r15.xyz;
    r4.w = dot(r3.xyz, r3.xyz);
    r4.w = rsqrt(r4.w);
    r3.xyz = r4.www * r3.xyz;
    r1.y = dot(r3.xyz, r1.yzw);
    r9.xyz = r9.xyz + -r2.zwy;
    r14.xyz = r12.xyz * r9.xyz;
    r9.xyz = r12.zxy * r9.yzx + -r14.xyz;
    r1.z = dot(r9.xyz, r9.xyz);
    r1.z = rsqrt(r1.z);
    r9.xyz = r9.xyz * r1.zzz;
    r1.z = dot(r9.xyz, r2.yzw);
    r2.yzw = -r7.zxy + r5.xyz;
    r4.xyz = -r7.yzx + r4.xyz;
    r5.xyz = r4.xyz * r2.yzw;
    r2.yzw = r2.wyz * r4.yzx + -r5.xyz;
    r1.w = dot(r2.yzw, r2.yzw);
    r1.w = rsqrt(r1.w);
    r2.yzw = r2.yzw * r1.www;
    r1.w = dot(r2.yzw, r7.xyz);
    r4.x = dot(r10.xyz, r10.xyz);
    r4.x = sqrt(r4.x);
    r4.yzw = -r10.xyz + r8.xyz;
    r5.xyz = r10.xyz + r8.xyz;
    r5.w = r0.z;
    r7.xyzw = float4(0,0,0,0);
    r6.w = 0;
    while (true) {
      r8.w = cmp((uint)r6.w >= numLights);
      if (r8.w != 0) break;
      r8.w = (int)r6.w & 31;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r12.xyzw, r6.w, l(0), t11.xyzw
    r12.x = gCullConstants[]..swiz;
    r12.y = gCullConstants[]..swiz;
    r12.z = gCullConstants[]..swiz;
    r12.w = gCullConstants[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r14.xyzw, r6.w, l(16), t11.zwxy
    r14.x = gCullConstants[]..swiz;
    r14.y = gCullConstants[]..swiz;
    r14.z = gCullConstants[]..swiz;
    r14.w = gCullConstants[]..swiz;
      r15.xyz = r12.xyz + -r8.xyz;
      r16.x = r12.w;
      r16.yz = r14.zw;
      r17.xyz = r16.xyz + r10.xyz;
      r15.xyz = cmp(r17.xyz < abs(r15.xyz));
      r9.w = (int)r15.y | (int)r15.x;
      r9.w = (int)r15.z | (int)r9.w;
      if (r9.w == 0) {
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r15.xyzw, r6.w, l(32), t11.xyzw
      r15.x = gCullConstants[]..swiz;
      r15.y = gCullConstants[]..swiz;
      r15.z = gCullConstants[]..swiz;
      r15.w = gCullConstants[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r17.xy, r6.w, l(48), t11.xyxx
      r17.x = gCullConstants[]..swiz;
      r17.y = gCullConstants[]..swiz;
        r9.w = cmp(0 < r17.x);
        r14.z = r15.x;
        r14.xyz = -r14.xyz + r8.xyz;
        r10.w = dot(r14.xyz, r15.yzw);
        r11.w = cmp(r10.w >= r4.x);
        r14.xyz = -r15.yzw * r10.www + r14.xyz;
        r12.w = dot(r14.xyz, r14.xyz);
        r13.w = r17.x * r17.x;
        r10.w = r17.y * r10.w + -r4.x;
        r12.w = r13.w * r12.w;
        r10.w = r10.w * r10.w;
        r10.w = cmp(r12.w >= r10.w);
        r10.w = (int)r11.w | (int)r10.w;
        r14.xyz = max(r15.yzw, r4.yzw);
        r14.xyz = min(r14.xyz, r5.xyz);
        r14.xyz = r15.yzw + -r14.xyz;
        r11.w = dot(r14.xyz, r14.xyz);
        r11.w = cmp(r13.w < r11.w);
        r11.w = (int)r9.w | (int)r11.w;
        r9.w = r9.w ? r10.w : -1;
        r9.w = r11.w ? r9.w : 0;
      } else {
        r9.w = -1;
      }
      if (r9.w == 0) {
        r9.w = dot(r12.xyz, r11.xyz);
        r10.w = dot(r16.xyz, abs(r11.xyz));
        r9.w = r10.w + r9.w;
        r9.w = cmp(r9.w < r0.w);
        r10.w = ~(int)r9.w;
        r11.w = dot(r12.xyz, r13.xyz);
        r12.w = dot(r16.xyz, abs(r13.xyz));
        r11.w = r12.w + r11.w;
        r11.w = cmp(r11.w < r1.x);
        r11.w = (int)r9.w | (int)r11.w;
        r10.w = r11.w ? r10.w : 0;
        r9.w = (int)r9.w | (int)r10.w;
        r10.w = dot(r12.xyz, r6.xyz);
        r11.w = dot(r16.xyz, abs(r6.xyz));
        r10.w = r11.w + r10.w;
        r10.w = cmp(r10.w < r3.w);
        r9.w = (int)r9.w | (int)r10.w;
        r10.w = dot(r12.xyz, r3.xyz);
        r11.w = dot(r16.xyz, abs(r3.xyz));
        r10.w = r11.w + r10.w;
        r10.w = cmp(r10.w < r1.y);
        r9.w = (int)r9.w | (int)r10.w;
        r10.w = dot(r12.xyz, r9.xyz);
        r11.w = dot(r16.xyz, abs(r9.xyz));
        r10.w = r11.w + r10.w;
        r10.w = cmp(r10.w < r1.z);
        r9.w = (int)r9.w | (int)r10.w;
        r10.w = dot(r12.xyz, r2.yzw);
        r11.w = dot(r16.xyz, abs(r2.yzw));
        r10.w = r11.w + r10.w;
        r10.w = cmp(r10.w < r1.w);
        r9.w = (int)r9.w | (int)r10.w;
        r12.x = r7.z ? r7.x : r6.w;
        r10.w = cmp((int)r7.z == 1);
        r12.y = r10.w ? r6.w : r7.y;
        r12.z = (int)r7.z + 1;
        bitmask.w = ((~(-1 << 1)) << r6.w) & 0xffffffff;  r12.w = (((uint)1 << r6.w) & bitmask.w) | ((uint)r7.w & ~bitmask.w);
        r7.xyzw = r9.wwww ? r7.xyzw : r12.xyzw;
      }
      r8.w = cmp((int)r8.w == 31);
      if (r8.w != 0) {
        [r5.w].0 = u7.x;
        r5.w = (int)r5.w + 1;
        r7.w = 0;
      }
      r6.w = (int)r6.w + 1;
    }
    r0.z = (int)r0.z + 16;
    r0.z = cmp((uint)r5.w < (uint)r0.z);
    if (r0.z != 0) {
      [r5.w].0 = u7.x;
    }
    r0.z = cmp(2 >= (uint)r7.z);
    r0.w = (int)r7.z + 1;
    r0.w = (int)r0.y + (int)r0.w;
    r1.x = r0.z ? r0.w : r0.y;
  } else {
    r1.x = (int)r0.y | 17;
    r7.xy = float2(0,0);
  }
  r1.y = 0;
  // Needs manual fix for instruction:
imm_atomic_iadd r3.x, u6, r1.xyxx, l(1)
  InterlockedAdd(dest, imm_value, orig_value);
  r0.y = mad((int)r1.x, permuteStride, (int)r3.x);
  bitmask.z = ((~(-1 << 10)) << 12) & 0xffffffff;  r0.z = (((uint)r7.y << 12) & bitmask.z) | ((uint)0 & ~bitmask.z);
  bitmask.z = ((~(-1 << 8)) << 24) & 0xffffffff;  r0.z = (((uint)r7.x << 24) & bitmask.z) | ((uint)r0.z & ~bitmask.z);
  bitmask.x = ((~(-1 << 12)) << 0) & 0xffffffff;  r1.x = (((uint)r2.x << 0) & bitmask.x) | ((uint)r0.z & ~bitmask.x);
  bitmask.z = ((~(-1 << 10)) << 12) & 0xffffffff;  r0.z = (((uint)r22.y << 12) & bitmask.z) | ((uint)0 & ~bitmask.z);
  bitmask.z = ((~(-1 << 8)) << 24) & 0xffffffff;  r0.z = (((uint)r22.x << 24) & bitmask.z) | ((uint)r0.z & ~bitmask.z);
  bitmask.y = ((~(-1 << 12)) << 0) & 0xffffffff;  r1.y = (((uint)r0.x << 0) & bitmask.y) | ((uint)r0.z & ~bitmask.y);
  [r0.y].0 = u5.xy;
  return;
}