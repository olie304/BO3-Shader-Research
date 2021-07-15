// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:32:01 2021

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


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main()
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t11, 80
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2darray (uint,uint,uint,uint) u6
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.x = (int)vThreadID.z & 15;
  r0.y = (int)r0.x + 1;
  r0.z = (uint)vThreadID.z >> 4;
  r1.xy = (uint2)vThreadID.xy << int2(6,6);
  r0.w = (uint)r0.x;
  r0.w = 128 * r0.w;
  r0.x = r0.x ? r0.w : 1;
  r0.w = cmp((uint)r0.y < 16);
  r1.z = (uint)r0.y;
  r1.z = 128 * r1.z;
  r0.w = r0.w ? r1.z : 131072;
  r2.x = rcp(projectionMatrix._m00);
  r2.y = rcp(projectionMatrix._m11);
  r3.xyw = (uint3)r1.xyy;
  r1.zw = float2(0.5,0.5) + r3.xy;
  r1.zw = -subpixelOffset.xy + r1.zw;
  r1.zw = renderTargetSize.zw * r1.zw;
  r1.zw = r1.zw * float2(2,-2) + float2(-1,1);
  r4.xy = r1.zw * r2.xy;
  r4.z = 1;
  r5.xyz = r4.xyz * r0.xxx;
  r6.xyz = inverseViewMatrix._m10_m11_m12 * r5.yyy;
  r5.xyw = r5.xxx * inverseViewMatrix._m00_m01_m02 + r6.xyz;
  r5.xyz = r5.zzz * inverseViewMatrix._m20_m21_m22 + r5.xyw;
  r1.yz = (int2)r1.xy + int2(64,64);
  r3.z = (uint)r1.y;
  r2.zw = -subpixelOffset.xy + r3.zw;
  r2.zw = float2(0.5,0.5) + r2.zw;
  r2.zw = renderTargetSize.zw * r2.zw;
  r2.zw = r2.zw * float2(2,-2) + float2(-1,1);
  r3.xy = r2.zw * r2.xy;
  r3.z = 1;
  r6.xyz = r3.xyz * r0.xxx;
  r7.xyz = inverseViewMatrix._m10_m11_m12 * r6.yyy;
  r6.xyw = r6.xxx * inverseViewMatrix._m00_m01_m02 + r7.xyz;
  r6.xyz = r6.zzz * inverseViewMatrix._m20_m21_m22 + r6.xyw;
  r7.xyzw = (uint4)r1.yzxz;
  r1.yz = -subpixelOffset.xy + r7.xy;
  r1.yz = float2(0.5,0.5) + r1.yz;
  r1.yz = renderTargetSize.zw * r1.yz;
  r1.yz = r1.yz * float2(2,-2) + float2(-1,1);
  r8.xy = r1.yz * r2.xy;
  r8.z = 1;
  r1.yzw = r8.xyz * r0.xxx;
  r9.xyz = inverseViewMatrix._m10_m11_m12 * r1.zzz;
  r9.xyz = r1.yyy * inverseViewMatrix._m00_m01_m02 + r9.xyz;
  r1.yzw = r1.www * inverseViewMatrix._m20_m21_m22 + r9.xyz;
  r2.zw = -subpixelOffset.xy + r7.zw;
  r2.zw = float2(0.5,0.5) + r2.zw;
  r2.zw = renderTargetSize.zw * r2.zw;
  r2.zw = r2.zw * float2(2,-2) + float2(-1,1);
  r2.xy = r2.zw * r2.xy;
  r2.z = 1;
  r7.xyz = r2.xyz * r0.xxx;
  r9.xyz = inverseViewMatrix._m10_m11_m12 * r7.yyy;
  r7.xyw = r7.xxx * inverseViewMatrix._m00_m01_m02 + r9.xyz;
  r7.xyz = r7.zzz * inverseViewMatrix._m20_m21_m22 + r7.xyw;
  r4.xyz = r4.xyz * r0.www;
  r9.xyz = inverseViewMatrix._m10_m11_m12 * r4.yyy;
  r4.xyw = r4.xxx * inverseViewMatrix._m00_m01_m02 + r9.xyz;
  r4.xyz = r4.zzz * inverseViewMatrix._m20_m21_m22 + r4.xyw;
  r3.xyz = r3.xyz * r0.www;
  r9.xyz = inverseViewMatrix._m10_m11_m12 * r3.yyy;
  r3.xyw = r3.xxx * inverseViewMatrix._m00_m01_m02 + r9.xyz;
  r3.xyz = r3.zzz * inverseViewMatrix._m20_m21_m22 + r3.xyw;
  r8.xyz = r8.xyz * r0.www;
  r9.xyz = inverseViewMatrix._m10_m11_m12 * r8.yyy;
  r8.xyw = r8.xxx * inverseViewMatrix._m00_m01_m02 + r9.xyz;
  r8.xyz = r8.zzz * inverseViewMatrix._m20_m21_m22 + r8.xyw;
  r2.xyz = r2.xyz * r0.www;
  r9.xyz = inverseViewMatrix._m10_m11_m12 * r2.yyy;
  r2.xyw = r2.xxx * inverseViewMatrix._m00_m01_m02 + r9.xyz;
  r2.xyz = r2.zzz * inverseViewMatrix._m20_m21_m22 + r2.xyw;
  r0.x = cmp((uint)r0.y >= 16);
  r0.y = (uint)r0.z << 5;
  r0.w = (int)-r0.y + numLights;
  r0.w = min(32, (uint)r0.w);
  if (r0.x != 0) {
    r9.xyz = r4.zxy + -r5.zxy;
    r10.xyz = r6.zxy + -r5.zxy;
    r11.xyz = r10.zxy * r9.xyz;
    r9.xyz = r9.zxy * r10.xyz + -r11.xyz;
    r0.x = dot(r9.xyz, r9.xyz);
    r0.x = rsqrt(r0.x);
    r9.xyz = r9.xyz * r0.xxx;
    r0.x = dot(r9.xyz, r5.xyz);
    r11.xyz = r3.zxy + -r6.zxy;
    r12.xyz = r1.zwy + -r6.yzx;
    r13.xyz = r12.xyz * r11.xyz;
    r11.xyz = r11.zxy * r12.yzx + -r13.xyz;
    r1.x = dot(r11.xyz, r11.xyz);
    r1.x = rsqrt(r1.x);
    r11.xyz = r11.xyz * r1.xxx;
    r1.x = dot(r11.xyz, r6.xyz);
    r12.xyz = r8.zxy + -r1.wyz;
    r13.xyz = r7.yzx + -r1.zwy;
    r14.xyz = r13.xyz * r12.xyz;
    r12.xyz = r12.zxy * r13.yzx + -r14.xyz;
    r2.w = dot(r12.xyz, r12.xyz);
    r2.w = rsqrt(r2.w);
    r12.xyz = r12.xyz * r2.www;
    r2.w = dot(r12.xyz, r1.yzw);
    r13.xyz = r2.zxy + -r7.zxy;
    r14.xyz = -r7.yzx + r5.yzx;
    r15.xyz = r14.xyz * r13.xyz;
    r13.xyz = r13.zxy * r14.yzx + -r15.xyz;
    r3.w = dot(r13.xyz, r13.xyz);
    r3.w = rsqrt(r3.w);
    r13.xyz = r13.xyz * r3.www;
    r3.w = dot(r13.xyz, r7.xyz);
    r14.xyz = r1.zwy + -r5.yzx;
    r15.xyz = r14.xyz * r10.xyz;
    r10.xyz = r10.zxy * r14.yzx + -r15.xyz;
    r4.w = dot(r10.xyz, r10.xyz);
    r4.w = rsqrt(r4.w);
    r10.xyz = r10.xyz * r4.www;
    r4.w = dot(r10.xyz, r5.xyz);
    r14.xyz = -r8.zxy + r3.zxy;
    r15.xyz = -r8.yzx + r4.yzx;
    r16.xyz = r15.xyz * r14.xyz;
    r14.xyz = r14.zxy * r15.yzx + -r16.xyz;
    r5.w = dot(r14.xyz, r14.xyz);
    r5.w = rsqrt(r5.w);
    r14.xyz = r14.xyz * r5.www;
    r5.w = dot(r14.xyz, r8.xyz);
    r15.x = r0.y;
    r15.yzw = float3(0,0,1.40129846e-45);
    while (true) {
      r6.w = cmp((uint)r15.y >= (uint)r0.w);
      if (r6.w != 0) break;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r16.xyzw, r15.x, l(0), t11.xyzw
    r16.x = gCullConstants[]..swiz;
    r16.y = gCullConstants[]..swiz;
    r16.z = gCullConstants[]..swiz;
    r16.w = gCullConstants[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r17.xy, r15.x, l(16), t11.xyxx
    r17.x = gCullConstants[]..swiz;
    r17.y = gCullConstants[]..swiz;
      r6.w = dot(r16.xyz, r9.xyz);
      r17.z = r16.w;
      r7.w = dot(r17.zxy, abs(r9.xyz));
      r6.w = r7.w + r6.w;
      r6.w = cmp(r6.w < r0.x);
      r7.w = ~(int)r6.w;
      r8.w = dot(r16.xyz, r11.xyz);
      r9.w = dot(r17.zxy, abs(r11.xyz));
      r8.w = r9.w + r8.w;
      r8.w = cmp(r8.w < r1.x);
      r8.w = (int)r6.w | (int)r8.w;
      r7.w = r8.w ? r7.w : 0;
      r6.w = (int)r6.w | (int)r7.w;
      r7.w = dot(r16.xyz, r12.xyz);
      r8.w = dot(r17.zxy, abs(r12.xyz));
      r7.w = r8.w + r7.w;
      r7.w = cmp(r7.w < r2.w);
      r6.w = (int)r6.w | (int)r7.w;
      r7.w = dot(r16.xyz, r13.xyz);
      r8.w = dot(r17.zxy, abs(r13.xyz));
      r7.w = r8.w + r7.w;
      r7.w = cmp(r7.w < r3.w);
      r6.w = (int)r6.w | (int)r7.w;
      r7.w = dot(r16.xyz, r10.xyz);
      r8.w = dot(r17.zxy, abs(r10.xyz));
      r7.w = r8.w + r7.w;
      r7.w = cmp(r7.w < r4.w);
      r6.w = (int)r6.w | (int)r7.w;
      r7.w = dot(r16.xyz, r14.xyz);
      r8.w = dot(r17.zxy, abs(r14.xyz));
      r7.w = r8.w + r7.w;
      r7.w = cmp(r7.w < r5.w);
      r6.w = (int)r6.w | (int)r7.w;
      r7.w = (int)r15.w | (int)r15.z;
      r15.z = r6.w ? r15.z : r7.w;
      r15.xy = (int2)r15.xy + int2(1,1);
      r15.w = (uint)r15.w << 1;
    }
  } else {
    r9.xyz = float3(0.125,0.125,0.125) * r6.xyz;
    r9.xyz = r5.xyz * float3(0.125,0.125,0.125) + r9.xyz;
    r9.xyz = r1.yzw * float3(0.125,0.125,0.125) + r9.xyz;
    r9.xyz = r7.xyz * float3(0.125,0.125,0.125) + r9.xyz;
    r9.xyz = r4.xyz * float3(0.125,0.125,0.125) + r9.xyz;
    r9.xyz = r3.xyz * float3(0.125,0.125,0.125) + r9.xyz;
    r9.xyz = r8.xyz * float3(0.125,0.125,0.125) + r9.xyz;
    r9.xyz = r2.xyz * float3(0.125,0.125,0.125) + r9.xyz;
    r5.xyz = -r9.xyz + r5.xyz;
    r6.xyz = -r9.xyz + r6.xyz;
    r5.xyz = max(abs(r6.xyz), abs(r5.xyz));
    r1.xyz = -r9.xyz + r1.yzw;
    r1.xyz = max(r5.xyz, abs(r1.xyz));
    r5.xyz = -r9.xyz + r7.xyz;
    r1.xyz = max(abs(r5.xyz), r1.xyz);
    r4.xyz = -r9.xyz + r4.xyz;
    r1.xyz = max(abs(r4.xyz), r1.xyz);
    r3.xyz = -r9.xyz + r3.xyz;
    r1.xyz = max(abs(r3.xyz), r1.xyz);
    r3.xyz = -r9.xyz + r8.xyz;
    r1.xyz = max(abs(r3.xyz), r1.xyz);
    r2.xyz = -r9.xyz + r2.xyz;
    r1.xyz = max(abs(r2.xyz), r1.xyz);
    r0.x = dot(r1.xyz, r1.xyz);
    r0.x = sqrt(r0.x);
    r2.xyz = r9.xyz + -r1.xyz;
    r3.xyz = r9.xyz + r1.xyz;
    r4.x = r0.y;
    r4.y = 0;
    r15.zw = float2(0,1.40129846e-45);
    while (true) {
      r1.w = cmp((uint)r4.y >= (uint)r0.w);
      if (r1.w != 0) break;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r5.xyzw, r4.x, l(0), t11.wxyz
    r5.x = gCullConstants[]..swiz;
    r5.y = gCullConstants[]..swiz;
    r5.z = gCullConstants[]..swiz;
    r5.w = gCullConstants[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r6.xyzw, r4.x, l(16), t11.zwxy
    r6.x = gCullConstants[]..swiz;
    r6.y = gCullConstants[]..swiz;
    r6.z = gCullConstants[]..swiz;
    r6.w = gCullConstants[]..swiz;
      r7.xyz = r5.yzw + -r9.xyz;
      r5.yz = r6.zw;
      r5.xyz = r5.xyz + r1.xyz;
      r5.xyz = cmp(r5.xyz < abs(r7.xyz));
      r1.w = (int)r5.y | (int)r5.x;
      r1.w = (int)r5.z | (int)r1.w;
      if (r1.w == 0) {
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r5.xyzw, r4.x, l(32), t11.xyzw
      r5.x = gCullConstants[]..swiz;
      r5.y = gCullConstants[]..swiz;
      r5.z = gCullConstants[]..swiz;
      r5.w = gCullConstants[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r4.zw, r4.x, l(48), t11.xxxy
      r4.z = gCullConstants[]..swiz;
      r4.w = gCullConstants[]..swiz;
        r1.w = cmp(0 < r4.z);
        r6.z = r5.x;
        r6.xyz = r9.xyz + -r6.xyz;
        r2.w = dot(r6.xyz, r5.yzw);
        r3.w = cmp(r2.w >= r0.x);
        r6.xyz = -r5.yzw * r2.www + r6.xyz;
        r5.x = dot(r6.xyz, r6.xyz);
        r4.z = r4.z * r4.z;
        r2.w = r4.w * r2.w + -r0.x;
        r4.w = r5.x * r4.z;
        r2.w = r2.w * r2.w;
        r2.w = cmp(r4.w >= r2.w);
        r2.w = (int)r3.w | (int)r2.w;
        r6.xyz = max(r5.yzw, r2.xyz);
        r6.xyz = min(r6.xyz, r3.xyz);
        r5.xyz = -r6.xyz + r5.yzw;
        r3.w = dot(r5.xyz, r5.xyz);
        r3.w = cmp(r4.z < r3.w);
        r3.w = (int)r1.w | (int)r3.w;
        r1.w = r1.w ? r2.w : -1;
        r1.w = r3.w ? r1.w : 0;
      } else {
        r1.w = -1;
      }
      r2.w = (int)r15.w | (int)r15.z;
      r15.z = r1.w ? r15.z : r2.w;
      r4.xy = (int2)r4.xy + int2(1,1);
      r15.w = (uint)r15.w << 1;
    }
  }
  bitmask.x = ((~(-1 << 4)) << 4) & 0xffffffff;  r0.x = (((uint)vThreadID.z << 4) & bitmask.x) | ((uint)0 & ~bitmask.x);
  r0.zw = (int2)r0.zz + (int2)r0.xx;
  r0.xy = vThreadID.xy;
// No code for instruction (needs manual fix):
store_uav_typed u6.xyzw, r0.xyzw, r15.zzzz
  return;
}