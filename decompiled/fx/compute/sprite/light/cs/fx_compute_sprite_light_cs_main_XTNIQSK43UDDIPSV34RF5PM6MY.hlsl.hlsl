// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:26:03 2021

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

SamplerState samplerLinear_s : register(s2);
SamplerState samplerLinearClamp_s : register(s4);
StructuredBuffer<spriteData> spriteData : register(t2);
StructuredBuffer<spriteExtra> spriteExtra : register(t3);
Texture2DArray<uint> visibleLights : register(t6);
Texture2DArray<uint> visibleProbes : register(t7);
Texture3D<float3> gProbeXArray : register(t17);
Texture3D<float3> gProbeYArray : register(t18);
Texture3D<float3> gProbeZArray : register(t19);
Texture2DArray<float4> gCookieArray : register(t20);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main()
{
  const float4 icb[] = { { 4, 4, 0, 0},
                              { 3, 4, 0, 0},
                              { 4, 3, 0, 0},
                              { 4, 5, 0, 0},
                              { 5, 4, 0, 0},
                              { 3, 3, 0, 0},
                              { 3, 5, 0, 0},
                              { 5, 3, 0, 0},
                              { 5, 5, 0, 0},
                              { 2, 4, 0, 0},
                              { 4, 2, 0, 0},
                              { 4, 6, 0, 0},
                              { 6, 4, 0, 0},
                              { 2, 3, 0, 0},
                              { 2, 5, 0, 0},
                              { 3, 2, 0, 0},
                              { 3, 6, 0, 0},
                              { 5, 2, 0, 0},
                              { 5, 6, 0, 0},
                              { 6, 3, 0, 0},
                              { 6, 5, 0, 0},
                              { 2, 2, 0, 0},
                              { 2, 6, 0, 0},
                              { 6, 2, 0, 0},
                              { 6, 6, 0, 0},
                              { 1, 4, 0, 0},
                              { 4, 1, 0, 0},
                              { 4, 7, 0, 0},
                              { 7, 4, 0, 0},
                              { 1, 3, 0, 0},
                              { 1, 5, 0, 0},
                              { 3, 1, 0, 0},
                              { 3, 7, 0, 0},
                              { 5, 1, 0, 0},
                              { 5, 7, 0, 0},
                              { 7, 3, 0, 0},
                              { 7, 5, 0, 0},
                              { 1, 2, 0, 0},
                              { 1, 6, 0, 0},
                              { 2, 1, 0, 0},
                              { 2, 7, 0, 0},
                              { 6, 1, 0, 0},
                              { 6, 7, 0, 0},
                              { 7, 2, 0, 0},
                              { 7, 6, 0, 0},
                              { 0, 4, 0, 0},
                              { 4, 0, 0, 0},
                              { 0, 3, 0, 0},
                              { 0, 5, 0, 0},
                              { 3, 0, 0, 0},
                              { 5, 0, 0, 0},
                              { 1, 1, 0, 0},
                              { 1, 7, 0, 0},
                              { 7, 1, 0, 0},
                              { 7, 7, 0, 0},
                              { 0, 2, 0, 0},
                              { 0, 6, 0, 0},
                              { 2, 0, 0, 0},
                              { 6, 0, 0, 0},
                              { 0, 1, 0, 0},
                              { 0, 7, 0, 0},
                              { 1, 0, 0, 0},
                              { 7, 0, 0, 0},
                              { 0, 0, 0, 0} };
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t2, 64
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t3, 48
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2darray (float,float,float,float) u3
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_structured u4, 64
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_raw g0, 4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_raw g1, 4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_raw g2, 12
// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.x = cmp((uint)vThreadGroupID.z >= (uint)computeSpriteControl.x);
  if (r0.x != 0) {
    return;
  }
  r0.x = mad((int)vThreadIDInGroup.y, 8, (int)vThreadIDInGroup.x);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r1.xyzw, vThreadGroupID.z, l(0), t3.xyzw
r1.x = samplerLinear[]..swiz;
r1.y = samplerLinear[]..swiz;
r1.z = samplerLinear[]..swiz;
r1.w = samplerLinear[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r0.yz, vThreadGroupID.z, l(16), t3.xxyx
r0.y = samplerLinear[]..swiz;
r0.z = samplerLinear[]..swiz;
  r2.x = f16tof32(r1.w);
  r0.w = (uint)r1.w >> 16;
  r3.xy = (uint2)r0.yz >> int2(16,16);
  r2.yzw = f16tof32(r0.wyz);
  r3.xz = f16tof32(r3.xy);
  r0.yzw = -eyeOffset.yyy * viewMatrix._m10_m11_m12;
  r0.yzw = -eyeOffset.xxx * viewMatrix._m00_m01_m02 + r0.yzw;
  r0.yzw = -eyeOffset.zzz * viewMatrix._m20_m21_m22 + r0.yzw;
  r0.yzw = viewMatrix._m30_m31_m32 + r0.yzw;
  r4.xyz = viewMatrix._m10_m11_m12 * r1.yyy;
  r4.xyz = r1.xxx * viewMatrix._m00_m01_m02 + r4.xyz;
  r4.xyz = r1.zzz * viewMatrix._m20_m21_m22 + r4.xyz;
  r0.yzw = r4.xyz + r0.yzw;
  r4.xy = (uint2)icb[r0.x+0].xy;
  r4.xy = r4.xy * float2(0.142857149,0.142857149) + float2(-0.5,-0.5);
  r3.y = r2.w;
  r3.xyz = r4.yyy * r3.xyz;
  r2.xyz = r2.xyz * r4.xxx + r3.xyz;
  r2.xyz = r2.xyz + r0.yzw;
  r3.xyz = inverseViewMatrix._m10_m11_m12 * r2.yyy;
  r2.xyw = r2.xxx * inverseViewMatrix._m00_m01_m02 + r3.xyz;
  r2.xyz = r2.zzz * inverseViewMatrix._m20_m21_m22 + r2.xyw;
  r3.xyz = viewProjectionMatrix._m10_m11_m13 * r2.yyy;
  r3.xyz = r2.xxx * viewProjectionMatrix._m00_m01_m03 + r3.xyz;
  r3.xyz = r2.zzz * viewProjectionMatrix._m20_m21_m23 + r3.xyz;
  r3.xyz = viewProjectionMatrix._m30_m31_m33 + r3.xyz;
  r0.y = rcp(r3.z);
  r0.yz = r3.xy * r0.yy;
  r0.yz = r0.yz * float2(0.5,-0.5) + float2(0.5,0.5);
  r0.yz = renderTargetSize.xy * r0.yz;
  r3.xy = float2(-1,-1) + renderTargetSize.xy;
  r0.yz = max(float2(0,0), r0.yz);
  r0.yz = min(r0.yz, r3.xy);
  r0.w = 0.0078125 * r0.w;
  r0.w = max(0, r0.w);
  r0.w = min(15, r0.w);
  r0.yzw = (uint3)r0.yzw;
  r3.xy = (uint2)r0.yz >> int2(6,6);
  r3.z = (uint)r0.w << 4;
  r4.xy = float2(0,0);
  r5.w = 0;
  r2.w = 1;
  r6.z = 1;
  r0.yzw = float3(0,0,0);
  r1.w = 0;
  while (true) {
    r3.w = cmp((uint)r1.w >= numLights);
    if (r3.w != 0) break;
    r4.z = (uint)r1.w >> 5;
    r5.xyz = (int3)r3.xyz + (int3)r4.xyz;
    r3.w = visibleLights.Load(r5.xyzw).x;
    r7.xyz = r0.yzw;
    r7.w = r3.w;
    while (true) {
      if (r7.w == 0) break;
      r4.z = firstbitlow((uint)r7.w);
      r4.w = 1 << (int)r4.z;
      r5.x = (int)r4.w & (int)r7.w;
      if (r5.x != 0) {
        r7.w = (int)r4.w ^ (int)r7.w;
        r4.z = (int)r1.w + (int)r4.z;
        r4.z = (int)r4.z * 15;
        if (3 == 0) r4.w = 0; else if (3+24 < 32) {         r4.w = (uint)lightConstantsCB[r4.z].data[1].w << (32-(3 + 24)); r4.w = (uint)r4.w >> (32-3);        } else r4.w = (uint)lightConstantsCB[r4.z].data[1].w >> 24;
        switch (r4.w) {
          case 2 :          r8.xyz = lightConstantsCB[r4.z].data[7].yzw;
          r8.w = lightConstantsCB[r4.z].data[8].x;
          r4.w = dot(r8.xyzw, r2.xyzw);
          r6.w = cmp(r4.w < 1);
          if (r6.w != 0) {
            r5.xyz = r7.xyz;
            break;
          }
          r8.xyz = lightConstantsCB[r4.z].data[0].xyz + -r2.xyz;
          r6.w = lightConstantsCB[r4.z].data[3].x * lightConstantsCB[r4.z].data[3].x;
          r8.x = dot(r8.xyz, r8.xyz);
          r6.w = r6.w / r8.x;
          r6.w = min(1, r6.w);
          r8.xy = saturate(r4.ww * lightConstantsCB[r4.z].data[2].xz + lightConstantsCB[r4.z].data[2].yw);
          r8.zw = r8.xy * r8.xy;
          r8.xy = r8.xy * float2(-2,-2) + float2(3,3);
          r8.xy = r8.zw * r8.xy;
          r6.w = r8.x * r6.w;
          r6.w = r6.w * r8.y;
          r8.xyz = lightConstantsCB[r4.z].data[4].yzw;
          r8.w = lightConstantsCB[r4.z].data[5].x;
          r8.x = dot(r8.xyzw, r2.xyzw);
          r9.xyz = lightConstantsCB[r4.z].data[5].yzw;
          r9.w = lightConstantsCB[r4.z].data[6].x;
          r8.y = dot(r9.xyzw, r2.xyzw);
          r6.xy = r8.xy / r4.ww;
          r4.w = cmp(lightConstantsCB[r4.z].data[10].w < 0.00048828125);
          if (r4.w != 0) {
            r8.xy = saturate(abs(r6.xy) * lightConstantsCB[r4.z].data[12].xy + lightConstantsCB[r4.z].data[12].zw);
            r8.zw = r8.xy * r8.xy;
            r8.xy = r8.xy * float2(-2,-2) + float2(3,3);
            r8.xy = r8.zw * r8.xy;
            r4.w = r8.x * r8.y;
            r4.w = r6.w * r4.w;
          } else {
            r8.xyzw = saturate(lightConstantsCB[r4.z].data[11].xyzw * abs(r6.yyxx));
            r8.xyzw = log2(r8.xyzw);
            r8.xyzw = lightConstantsCB[r4.z].data[12].zzzz * r8.xyzw;
            r8.xyzw = exp2(r8.xyzw);
            r8.xy = r8.xy + r8.zw;
            r8.xy = log2(r8.xy);
            r8.xy = lightConstantsCB[r4.z].data[12].ww * r8.xy;
            r8.xy = exp2(r8.xy);
            r8.x = lightConstantsCB[r4.z].data[12].x * r8.x;
            r8.z = lightConstantsCB[r4.z].data[12].y * r8.y + -1;
            r8.x = lightConstantsCB[r4.z].data[12].y * r8.y + -r8.x;
            r8.x = saturate(r8.z / r8.x);
            r8.y = r8.x * r8.x;
            r8.x = r8.x * -2 + 3;
            r8.x = r8.y * r8.x;
            r4.w = r8.x * r6.w;
          }
          r6.w = cmp(0 >= r4.w);
          if (r6.w != 0) {
            r5.xyz = r7.xyz;
            break;
          }
          r6.w = 255 & (int)lightConstantsCB[r4.z].data[14].w;
          if (r6.w != 0) {
            r8.x = dot(lightConstantsCB[r4.z].data[13].xyz, r6.xyz);
            r9.x = lightConstantsCB[r4.z].data[13].w;
            r9.yz = lightConstantsCB[r4.z].data[14].xy;
            r6.x = dot(r9.xyz, r6.xyz);
            r8.x = frac(r8.x);
            r8.y = frac(r6.x);
            r6.x = (int)r6.w + -1;
            r8.z = (uint)r6.x;
            r6.xyw = gCookieArray.SampleLevel(samplerLinear_s, r8.xyz, 0).xyz;
            r8.x = lightConstantsCB[r4.z].data[0].w;
            r8.yz = lightConstantsCB[r4.z].data[1].xy;
            r6.xyw = r8.xyz * r6.xyw;
          } else {
            r6.yw = lightConstantsCB[r4.z].data[1].xy;
            r6.x = lightConstantsCB[r4.z].data[0].w;
          }
          r4.w = 0.25 * r4.w;
          r6.xyw = r4.www * r6.xyw;
          r4.w = dot(r6.xyw, float3(0.298999995,0.587000012,0.114));
          r4.w = max(9.99999997e-07, r4.w);
          r8.x = min(relHDRExposure.x, r4.w);
          r4.w = r8.x / r4.w;
          r5.xyz = r6.xyw * r4.www + r7.xyz;
          break;
          case 4 :          r6.xyw = lightConstantsCB[r4.z].data[0].xyz + -r2.xyz;
          r4.w = dot(r6.xyw, r6.xyw);
          r6.x = sqrt(r4.w);
          r6.y = lightConstantsCB[r4.z].data[3].x * lightConstantsCB[r4.z].data[3].x;
          r4.w = r6.y / r4.w;
          r4.w = min(1, r4.w);
          r6.xy = saturate(r6.xx * lightConstantsCB[r4.z].data[2].xz + lightConstantsCB[r4.z].data[2].yw);
          r8.xy = r6.xy * r6.xy;
          r6.xy = r6.xy * float2(-2,-2) + float2(3,3);
          r6.xy = r8.xy * r6.xy;
          r4.w = r6.x * r4.w;
          r4.w = r4.w * r6.y;
          r6.x = cmp(0 >= r4.w);
          if (r6.x != 0) {
            r5.xyz = r7.xyz;
            break;
          }
          r4.w = 0.25 * r4.w;
          r8.x = lightConstantsCB[r4.z].data[0].w;
          r8.yz = lightConstantsCB[r4.z].data[1].xy;
          r6.xyw = r8.xyz * r4.www;
          r4.z = dot(r6.xyw, float3(0.298999995,0.587000012,0.114));
          r4.z = max(9.99999997e-07, r4.z);
          r4.w = min(relHDRExposure.x, r4.z);
          r4.z = r4.w / r4.z;
          r5.xyz = r6.xyw * r4.zzz + r7.xyz;
          break;
          default :
          r5.xyz = r7.xyz;
          break;
        }
        r7.xyz = r5.xyz;
      }
    }
    r0.yzw = r7.xyz;
    r1.w = (int)r1.w + 32;
  }
  r1.w = numRefProbes + -numOverrideProbes;
  r2.w = (int)r1.w & -32;
  r4.xy = float2(0,0);
  r5.w = 0;
  r6.yz = float2(0,1);
  r7.x = 1;
  r8.xyz = float3(0,0,0);
  r9.x = 0;
  r3.w = r2.w;
  while (true) {
    r4.w = cmp((uint)r3.w >= numRefProbes);
    if (r4.w != 0) break;
    r4.z = (uint)r3.w >> 5;
    r5.xyz = (int3)r3.xyz + (int3)r4.xyz;
    r4.z = visibleProbes.Load(r5.xyzw).x;
    r5.xyz = r8.xyz;
    r4.w = r9.x;
    r6.w = r4.z;
    while (true) {
      if (r6.w == 0) break;
      r7.z = firstbitlow((uint)r6.w);
      r7.w = 1 << (int)r7.z;
      r8.w = (int)r6.w & (int)r7.w;
      if (r8.w != 0) {
        r7.w = (int)r6.w ^ (int)r7.w;
        r7.z = (int)r3.w + (int)r7.z;
        r8.w = cmp((uint)r7.z >= numRefProbes);
        if (r8.w != 0) {
          break;
        }
        r8.w = cmp((uint)r7.z < (uint)r1.w);
        if (r8.w != 0) {
          r6.w = r7.w;
          continue;
        }
        r7.z = (int)r7.z * 14;
        r10.xyz = -refProbeConstantsCB[r7.z].data[0].xyz + r2.xyz;
        r8.w = 0x0000ffff & (int)refProbeConstantsCB[r7.z].data[7].z;
        if (6 == 0) r10.w = 0; else if (6+25 < 32) {         r10.w = (uint)refProbeConstantsCB[r7.z].data[7].z << (32-(6 + 25)); r10.w = (uint)r10.w >> (32-6);        } else r10.w = (uint)refProbeConstantsCB[r7.z].data[7].z >> 25;
        r11.x = (int)r8.w * 6;
        r11.y = dot(refProbeAttenuationConstantsCB[r11.x].data[0].xyz, r10.xyz);
        r11.y = saturate(refProbeAttenuationConstantsCB[r11.x].data[0].w + r11.y);
        r11.z = dot(refProbeAttenuationConstantsCB[r11.x].data[1].xyz, r10.xyz);
        r11.z = saturate(refProbeAttenuationConstantsCB[r11.x].data[1].w + r11.z);
        r11.y = r11.y * r11.z;
        r11.z = dot(refProbeAttenuationConstantsCB[r11.x].data[2].xyz, r10.xyz);
        r11.z = saturate(refProbeAttenuationConstantsCB[r11.x].data[2].w + r11.z);
        r11.y = r11.y * r11.z;
        r11.z = dot(refProbeAttenuationConstantsCB[r11.x].data[3].xyz, r10.xyz);
        r11.z = saturate(refProbeAttenuationConstantsCB[r11.x].data[3].w + r11.z);
        r11.y = r11.y * r11.z;
        r11.z = dot(refProbeAttenuationConstantsCB[r11.x].data[4].xyz, r10.xyz);
        r11.z = saturate(refProbeAttenuationConstantsCB[r11.x].data[4].w + r11.z);
        r11.y = r11.y * r11.z;
        r11.z = dot(refProbeAttenuationConstantsCB[r11.x].data[5].xyz, r10.xyz);
        r11.x = saturate(refProbeAttenuationConstantsCB[r11.x].data[5].w + r11.z);
        r6.x = r11.y * r11.x;
        r11.x = 1 & (int)refProbeConstantsCB[r7.z].data[6].x;
        r11.xy = r11.xx ? r6.xy : r6.zx;
        r6.x = refProbeConstantsCB[r7.z].data[6].x;
        r12.xy = r11.xy;
        r11.z = 1;
        while (true) {
          r11.w = cmp((int)r11.z >= (int)r10.w);
          if (r11.w != 0) break;
          r11.w = (int)r8.w + (int)r11.z;
          r11.w = (int)r11.w * 6;
          r12.z = dot(refProbeAttenuationConstantsCB[r11.w].data[0].xyz, r10.xyz);
          r12.z = saturate(refProbeAttenuationConstantsCB[r11.w].data[0].w + r12.z);
          r12.z = r12.x * r12.z;
          r12.w = dot(refProbeAttenuationConstantsCB[r11.w].data[1].xyz, r10.xyz);
          r12.w = saturate(refProbeAttenuationConstantsCB[r11.w].data[1].w + r12.w);
          r12.z = r12.z * r12.w;
          r12.w = dot(refProbeAttenuationConstantsCB[r11.w].data[2].xyz, r10.xyz);
          r12.w = saturate(refProbeAttenuationConstantsCB[r11.w].data[2].w + r12.w);
          r12.z = r12.z * r12.w;
          r12.w = dot(refProbeAttenuationConstantsCB[r11.w].data[3].xyz, r10.xyz);
          r12.w = saturate(refProbeAttenuationConstantsCB[r11.w].data[3].w + r12.w);
          r12.z = r12.z * r12.w;
          r12.w = dot(refProbeAttenuationConstantsCB[r11.w].data[4].xyz, r10.xyz);
          r12.w = saturate(refProbeAttenuationConstantsCB[r11.w].data[4].w + r12.w);
          r12.z = r12.z * r12.w;
          r12.w = dot(refProbeAttenuationConstantsCB[r11.w].data[5].xyz, r10.xyz);
          r11.w = saturate(refProbeAttenuationConstantsCB[r11.w].data[5].w + r12.w);
          r12.x = r12.z * r11.w;
          r12.w = (uint)r6.x >> 2;
          if (1 == 0) r13.x = 0; else if (1+2 < 32) {           r13.x = (uint)r6.x << (32-(1 + 2)); r13.x = (uint)r13.x >> (32-1);          } else r13.x = (uint)r6.x >> 2;
          r13.y = (int)r12.w & 2;
          r13.z = max(r12.y, r12.x);
          r11.w = -r12.z * r11.w + 1;
          r11.w = r12.y * r11.w;
          r7.y = r13.y ? r11.w : r13.z;
          r12.xy = r13.xx ? r12.xy : r7.xy;
          r11.z = (int)r11.z + 1;
          r6.x = r12.w;
        }
        r12.y = saturate(r12.y);
        r6.x = refProbeConstantsCB[r7.z].data[6].y * r12.y;
        r7.y = cmp(0 < r6.x);
        if (r7.y != 0) {
          r11.x = refProbeConstantsCB[r7.z].data[0].w;
          r11.y = refProbeConstantsCB[r7.z].data[1].z;
          r11.z = refProbeConstantsCB[r7.z].data[2].y;
          r11.x = dot(r10.xyz, r11.xyz);
          r13.xy = refProbeConstantsCB[r7.z].data[1].xw;
          r13.z = refProbeConstantsCB[r7.z].data[2].z;
          r11.y = dot(r10.xyz, r13.xyz);
          r13.x = refProbeConstantsCB[r7.z].data[1].y;
          r13.yz = refProbeConstantsCB[r7.z].data[2].xw;
          r11.z = dot(r10.xyz, r13.xyz);
          r10.xyz = saturate(r11.xyz * refProbeConstantsCB[r7.z].data[3].xyz + float3(0.5,0.5,0.5));
          r11.xy = refProbeConstantsCB[r7.z].data[4].zw * r10.xy;
          r11.z = refProbeConstantsCB[r7.z].data[5].x * r10.z;
          r10.xyz = refProbeConstantsCB[r7.z].data[5].yzw + r11.xyz;
          r11.xyz = float3(0,0,0.5) + r10.xyz;
          r12.xzw = gProbeXArray.SampleLevel(samplerLinearClamp_s, r10.xyz, 0).xyz;
          r13.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r10.xyz, 0).xyz;
          r12.xzw = r13.xyz + r12.xzw;
          r10.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r10.xyz, 0).xyz;
          r10.xyz = r12.xzw + r10.xyz;
          r12.xzw = gProbeXArray.SampleLevel(samplerLinearClamp_s, r11.xyz, 0).xyz;
          r10.xyz = r12.xzw + r10.xyz;
          r12.xzw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r11.xyz, 0).xyz;
          r10.xyz = r12.xzw + r10.xyz;
          r11.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r11.xyz, 0).xyz;
          r10.xyz = r11.xyz + r10.xyz;
          r6.x = refProbeConstantsCB[r7.z].data[7].y * r6.x;
          r6.x = 0.166666672 * r6.x;
          r10.xyz = r10.xyz * r6.xxx;
          r11.xy = refProbeConstantsCB[r7.z].data[6].zw * r10.xy;
          r11.z = refProbeConstantsCB[r7.z].data[7].x * r10.z;
          r5.xyz = r11.xyz + r5.xyz;
          r4.w = r12.y * refProbeConstantsCB[r7.z].data[6].y + r4.w;
        }
        r6.w = r7.w;
      }
    }
    r8.xyz = r5.xyz;
    r9.x = r4.w;
    r3.w = (int)r3.w + 32;
  }
  r2.w = cmp(r9.x < 1);
  if (r2.w != 0) {
    r4.xy = float2(0,0);
    r5.w = 0;
    r6.yz = float2(0,1);
    r7.x = 1;
    r10.xyz = r8.xyz;
    r2.w = r9.x;
    r3.w = 0;
    while (true) {
      r4.w = cmp((uint)r3.w >= (uint)r1.w);
      if (r4.w != 0) break;
      r4.z = (uint)r3.w >> 5;
      r5.xyz = (int3)r3.xyz + (int3)r4.xyz;
      r4.z = visibleProbes.Load(r5.xyzw).x;
      r5.xyz = r10.xyz;
      r4.w = r2.w;
      r6.w = r4.z;
      while (true) {
        if (r6.w == 0) break;
        r7.z = firstbitlow((uint)r6.w);
        r7.w = 1 << (int)r7.z;
        r8.w = (int)r6.w & (int)r7.w;
        if (r8.w != 0) {
          r6.w = (int)r6.w ^ (int)r7.w;
          r7.z = (int)r3.w + (int)r7.z;
          r7.w = cmp((uint)r7.z >= (uint)r1.w);
          if (r7.w != 0) {
            break;
          }
          r7.z = (int)r7.z * 14;
          r11.xyz = -refProbeConstantsCB[r7.z].data[0].xyz + r2.xyz;
          r7.w = 0x0000ffff & (int)refProbeConstantsCB[r7.z].data[7].z;
          if (6 == 0) r8.w = 0; else if (6+25 < 32) {           r8.w = (uint)refProbeConstantsCB[r7.z].data[7].z << (32-(6 + 25)); r8.w = (uint)r8.w >> (32-6);          } else r8.w = (uint)refProbeConstantsCB[r7.z].data[7].z >> 25;
          r10.w = (int)r7.w * 6;
          r11.w = dot(refProbeAttenuationConstantsCB[r10.w].data[0].xyz, r11.xyz);
          r11.w = saturate(refProbeAttenuationConstantsCB[r10.w].data[0].w + r11.w);
          r12.x = dot(refProbeAttenuationConstantsCB[r10.w].data[1].xyz, r11.xyz);
          r12.x = saturate(refProbeAttenuationConstantsCB[r10.w].data[1].w + r12.x);
          r11.w = r12.x * r11.w;
          r12.x = dot(refProbeAttenuationConstantsCB[r10.w].data[2].xyz, r11.xyz);
          r12.x = saturate(refProbeAttenuationConstantsCB[r10.w].data[2].w + r12.x);
          r11.w = r12.x * r11.w;
          r12.x = dot(refProbeAttenuationConstantsCB[r10.w].data[3].xyz, r11.xyz);
          r12.x = saturate(refProbeAttenuationConstantsCB[r10.w].data[3].w + r12.x);
          r11.w = r12.x * r11.w;
          r12.x = dot(refProbeAttenuationConstantsCB[r10.w].data[4].xyz, r11.xyz);
          r12.x = saturate(refProbeAttenuationConstantsCB[r10.w].data[4].w + r12.x);
          r11.w = r12.x * r11.w;
          r12.x = dot(refProbeAttenuationConstantsCB[r10.w].data[5].xyz, r11.xyz);
          r10.w = saturate(refProbeAttenuationConstantsCB[r10.w].data[5].w + r12.x);
          r6.x = r11.w * r10.w;
          r10.w = 1 & (int)refProbeConstantsCB[r7.z].data[6].x;
          r12.xy = r10.ww ? r6.xy : r6.zx;
          r6.x = refProbeConstantsCB[r7.z].data[6].x;
          r13.xy = r12.xy;
          r10.w = 1;
          while (true) {
            r11.w = cmp((int)r10.w >= (int)r8.w);
            if (r11.w != 0) break;
            r11.w = (int)r7.w + (int)r10.w;
            r11.w = (int)r11.w * 6;
            r12.z = dot(refProbeAttenuationConstantsCB[r11.w].data[0].xyz, r11.xyz);
            r12.z = saturate(refProbeAttenuationConstantsCB[r11.w].data[0].w + r12.z);
            r12.z = r13.x * r12.z;
            r12.w = dot(refProbeAttenuationConstantsCB[r11.w].data[1].xyz, r11.xyz);
            r12.w = saturate(refProbeAttenuationConstantsCB[r11.w].data[1].w + r12.w);
            r12.z = r12.z * r12.w;
            r12.w = dot(refProbeAttenuationConstantsCB[r11.w].data[2].xyz, r11.xyz);
            r12.w = saturate(refProbeAttenuationConstantsCB[r11.w].data[2].w + r12.w);
            r12.z = r12.z * r12.w;
            r12.w = dot(refProbeAttenuationConstantsCB[r11.w].data[3].xyz, r11.xyz);
            r12.w = saturate(refProbeAttenuationConstantsCB[r11.w].data[3].w + r12.w);
            r12.z = r12.z * r12.w;
            r12.w = dot(refProbeAttenuationConstantsCB[r11.w].data[4].xyz, r11.xyz);
            r12.w = saturate(refProbeAttenuationConstantsCB[r11.w].data[4].w + r12.w);
            r12.z = r12.z * r12.w;
            r12.w = dot(refProbeAttenuationConstantsCB[r11.w].data[5].xyz, r11.xyz);
            r11.w = saturate(refProbeAttenuationConstantsCB[r11.w].data[5].w + r12.w);
            r13.x = r12.z * r11.w;
            r12.w = (uint)r6.x >> 2;
            if (1 == 0) r13.z = 0; else if (1+2 < 32) {             r13.z = (uint)r6.x << (32-(1 + 2)); r13.z = (uint)r13.z >> (32-1);            } else r13.z = (uint)r6.x >> 2;
            r13.w = (int)r12.w & 2;
            r14.x = max(r13.y, r13.x);
            r11.w = -r12.z * r11.w + 1;
            r11.w = r13.y * r11.w;
            r7.y = r13.w ? r11.w : r14.x;
            r13.xy = r13.zz ? r13.xy : r7.xy;
            r10.w = (int)r10.w + 1;
            r6.x = r12.w;
          }
          r6.x = saturate(r13.y + -r9.x);
          r7.y = refProbeConstantsCB[r7.z].data[6].y * r6.x;
          r7.w = cmp(0 < r7.y);
          if (r7.w != 0) {
            r12.x = refProbeConstantsCB[r7.z].data[0].w;
            r12.y = refProbeConstantsCB[r7.z].data[1].z;
            r12.z = refProbeConstantsCB[r7.z].data[2].y;
            r12.x = dot(r11.xyz, r12.xyz);
            r14.xy = refProbeConstantsCB[r7.z].data[1].xw;
            r14.z = refProbeConstantsCB[r7.z].data[2].z;
            r12.y = dot(r11.xyz, r14.xyz);
            r14.x = refProbeConstantsCB[r7.z].data[1].y;
            r14.yz = refProbeConstantsCB[r7.z].data[2].xw;
            r12.z = dot(r11.xyz, r14.xyz);
            r11.xyz = saturate(r12.xyz * refProbeConstantsCB[r7.z].data[3].xyz + float3(0.5,0.5,0.5));
            r12.xy = refProbeConstantsCB[r7.z].data[4].zw * r11.xy;
            r12.z = refProbeConstantsCB[r7.z].data[5].x * r11.z;
            r11.xyz = refProbeConstantsCB[r7.z].data[5].yzw + r12.xyz;
            r12.xyz = float3(0,0,0.5) + r11.xyz;
            r13.xzw = gProbeXArray.SampleLevel(samplerLinearClamp_s, r11.xyz, 0).xyz;
            r14.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r11.xyz, 0).xyz;
            r13.xzw = r14.xyz + r13.xzw;
            r11.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r11.xyz, 0).xyz;
            r11.xyz = r13.xzw + r11.xyz;
            r13.xzw = gProbeXArray.SampleLevel(samplerLinearClamp_s, r12.xyz, 0).xyz;
            r11.xyz = r13.xzw + r11.xyz;
            r13.xzw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r12.xyz, 0).xyz;
            r11.xyz = r13.xzw + r11.xyz;
            r12.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r12.xyz, 0).xyz;
            r11.xyz = r12.xyz + r11.xyz;
            r7.y = refProbeConstantsCB[r7.z].data[7].y * r7.y;
            r7.y = 0.166666672 * r7.y;
            r11.xyz = r11.xyz * r7.yyy;
            r12.xy = refProbeConstantsCB[r7.z].data[6].zw * r11.xy;
            r12.z = refProbeConstantsCB[r7.z].data[7].x * r11.z;
            r5.xyz = r12.xyz + r5.xyz;
            r4.w = r6.x * refProbeConstantsCB[r7.z].data[6].y + r4.w;
          }
        }
      }
      r10.xyz = r5.xyz;
      r2.w = r4.w;
      r3.w = (int)r3.w + 32;
    }
    r8.xyz = r10.xyz;
    r9.x = r2.w;
  }
  r1.w = max(9.99999975e-05, r9.x);
  r1.w = rcp(r1.w);
  r9.x = saturate(r9.x);
  r9.yzw = r8.xyz * r1.www;
  if (r0.x == 0) {
  // No code for instruction (needs manual fix):
    store_raw g0.x, l(0), l(64)
  }
  GroupMemoryBarrierWithGroupSync();
  r1.w = cmp(r9.x != 0.000000);
  if (r1.w != 0) {
    // Needs manual fix for instruction:
    atomic_umin g0, l(0), r0.x
    InterlockedMin(dest, value, orig_value);
  }
  GroupMemoryBarrierWithGroupSync();
// No code for instruction (needs manual fix):
ld_raw r1.w, l(0), g0.xxxx
  r2.x = cmp((int)r0.x == (int)r1.w);
  if (r2.x != 0) {
  // No code for instruction (needs manual fix):
    store_raw g1.x, l(0), r9.x
  // No code for instruction (needs manual fix):
    store_raw g2.xyz, l(0), r9.yzwy
  }
  GroupMemoryBarrierWithGroupSync();
  r1.w = cmp((int)r1.w != 64);
  r2.x = cmp(r9.x == 0.000000);
  r1.w = r1.w ? r2.x : 0;
// No code for instruction (needs manual fix):
ld_raw r2.x, l(0), g1.xxxx
// No code for instruction (needs manual fix):
ld_raw r2.yzw, l(0), g2.xxyz
  r2.xyzw = r1.wwww ? r2.xyzw : r9.xyzw;
  r1.w = cmp(0 != r2.x);
  r3.xyz = r2.yzw + r0.yzw;
  r2.xyz = sunConstants.avgGlobalProbeColor.xyz * sunConstants.globalProbeExposure + r2.yzw;
  r0.yzw = r2.xyz + r0.yzw;
  r2.xyz = r1.www ? r3.xyz : r0.yzw;
  r3.xy = icb[r0.x+0].xy;
  r3.zw = vThreadGroupID.zz;
  r2.w = 0;
// No code for instruction (needs manual fix):
store_uav_typed u3.xyzw, r3.xyzw, r2.xyzw
  r0.xy = cmp(int2(0,0) == (int2)icb[r0.x+0].xy);
  r0.x = r0.y ? r0.x : 0;
  if (r0.x != 0) {
    r0.xyz = -eyeOffset.xyz + r1.xyz;
    r0.w = cmp(0 < fogConsts4.w);
    if (r0.w != 0) {
      r0.w = dot(r0.xyz, r0.xyz);
      r1.x = rsqrt(r0.w);
      r1.xyz = r1.xxx * r0.xyz;
      r0.w = sqrt(r0.w);
      r1.x = dot(sunFogDir.xyz, -r1.xyz);
      r1.y = -fogConsts3.w * fogConsts3.w + 1;
      r1.z = fogConsts3.w * -r1.x + 1;
      r1.z = r1.z * r1.z;
      r1.z = 12.566371 * r1.z;
      r1.y = r1.y / r1.z;
      r1.z = -fogConsts9.z + r0.w;
      r1.z = saturate(fogConsts9.w * r1.z);
      r1.y = r1.y * r1.z;
      r0.w = r0.w * fogConsts7.x + fogConsts6.w;
      r0.w = fogConsts7.z * r0.w;
      r1.z = cmp(0.00999999978 < abs(r0.z));
      r1.w = fogConsts7.y * r0.z;
      r2.x = -1.44269502 * r1.w;
      r2.x = exp2(r2.x);
      r2.x = 1 + -r2.x;
      r1.w = r2.x / r1.w;
      r1.w = r1.w * r0.w;
      r0.w = r1.z ? r1.w : r0.w;
      r2.xyz = fogConsts5.xyz * r0.www;
      r2.xyz = exp2(r2.xyz);
      r2.xyz = r2.xyz * fogConsts4.www + float3(1,1,1);
      r2.xyz = saturate(-fogConsts4.www + r2.xyz);
      r1.x = saturate(r1.x);
      r0.w = r1.x * r1.x + 1;
      r0.w = r0.w * 0.0596831031 + -1;
      r0.w = fogConsts7.w * r0.w + 1;
      r1.xyz = fogConsts4.xyz * r1.yyy;
      r1.xyz = r0.www * fogConsts3.xyz + r1.xyz;
      r1.xyz = fogConsts5.www * r1.xyz;
      r3.xyz = float3(1,1,1) + -r2.xyz;
      r1.xyw = r3.yzx * r1.yzx;
      r3.xy = r1.xy;
      r4.xyz = float3(0,0,0);
      r0.w = 1;
    } else {
      r2.w = fogConsts.w * r0.z;
      r5.x = fogConsts.w * r0.z + fogConsts.x;
      r5.y = cmp(abs(r2.w) < 9.99999975e-05);
      r5.z = min(64, r5.x);
      r5.z = 1.44269502 * r5.z;
      r5.z = exp2(r5.z);
      r5.w = saturate(fogConsts2.x);
      r6.x = cmp(r5.x < 0);
      r5.x = 1 + r5.x;
      r5.x = r6.x ? r5.z : r5.x;
      r5.x = -fogConsts2.x + r5.x;
      r2.w = r5.y ? 1 : r2.w;
      r2.w = r5.x / r2.w;
      r2.w = r5.y ? r5.w : r2.w;
      r2.w = fogConsts.y * r2.w;
      r5.x = dot(r0.xyz, r0.xyz);
      r5.y = sqrt(r5.x);
      r2.w = r2.w * r5.y + fogConsts.z;
      r2.w = exp2(r2.w);
      r2.w = min(1, r2.w);
      r5.x = rsqrt(r5.x);
      r0.xyz = r5.xxx * r0.xyz;
      r0.x = dot(sunFogDir.xyz, r0.xyz);
      r0.x = saturate(sunFog.y * r0.x + sunFog.x);
      r5.xyzw = -sunFogColor.xyzw + fogColor.xyzw;
      r4.xyzw = r0.xxxx * r5.xyzw + sunFogColor.xyzw;
      r0.x = 1 + -r2.w;
      r0.w = -r0.x * r4.w + 1;
      r2.xyz = float3(1,1,1);
      r3.xy = float2(0,0);
      r1.w = 0;
    }
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.x, vThreadGroupID.z, l(0), t2.xxxx
  r1.x = samplerLinear[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.x, vThreadGroupID.z, l(24), t2.xxxx
  r0.x = samplerLinear[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, vThreadGroupID.z, l(32), t2.xyzw
  r5.x = samplerLinear[]..swiz;
  r5.y = samplerLinear[]..swiz;
  r5.z = samplerLinear[]..swiz;
  r5.w = samplerLinear[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyzw, vThreadGroupID.z, l(48), t2.xyzw
  r6.x = samplerLinear[]..swiz;
  r6.y = samplerLinear[]..swiz;
  r6.z = samplerLinear[]..swiz;
  r6.w = samplerLinear[]..swiz;
    r4.xyz = f32tof16(r4.xyz);
    r1.y = mad((int)r4.y, 0x00010000, (int)r4.x);
    r0.y = f32tof16(r0.w);
    r1.z = mad((int)r0.y, 0x00010000, (int)r4.z);
    r0.yzw = f32tof16(r2.xyz);
    bitmask.z = ((~(-1 << 16)) << 16) & 0xffffffff;  r3.z = (((uint)r0.y << 16) & bitmask.z) | ((uint)r0.x & ~bitmask.z);
    r3.w = mad((int)r0.w, 0x00010000, (int)r0.z);
    [vThreadGroupID.z].0 = u4.xyzw;
    [vThreadGroupID.z].16 = u4.xyzw;
    [vThreadGroupID.z].32 = u4.xyzw;
    [vThreadGroupID.z].48 = u4.xyzw;
  }
  return;
}