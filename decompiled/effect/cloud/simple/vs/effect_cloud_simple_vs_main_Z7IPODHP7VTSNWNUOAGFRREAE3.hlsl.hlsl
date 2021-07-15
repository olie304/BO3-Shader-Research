// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:41 2021

cbuffer _Globals : register(b0)
{
  float4 flagParams : packoffset(c0);
  float4 colorObjMin : packoffset(c1);
  float4 colorObjMax : packoffset(c2);
  float colorObjMinBaseBlend : packoffset(c3);
  float colorObjMaxBaseBlend : packoffset(c3.y);
  float2 uvScroll : packoffset(c3.z);
  float4 detailScale : packoffset(c4);
  float4 detailScale1 : packoffset(c5);
  float4 detailScale2 : packoffset(c6);
  float4 detailScale3 : packoffset(c7);
  float4 alphaRevealParms : packoffset(c8);
  float4 colorDetailScale : packoffset(c9);
  float3 specColorTint : packoffset(c10);
  float baseNormalHeight : packoffset(c10.w);
  float2 glossRange : packoffset(c11);
  float2 featherParms : packoffset(c11.z);
  float1 alphaDissolve : packoffset(c12);
  bool useOldHDRScale : packoffset(c12.y);
}

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

SamplerState samp0_s : register(s0);
SamplerState samplerLinear_s : register(s2);
SamplerState samplerLinearClamp_s : register(s4);
SamplerComparisonState ShadowSamplerComparisonState_s : register(s13);
StructuredBuffer<fxExclusionVolumes> fxExclusionVolumes : register(t0);
Texture2DArray<uint> visibleLights : register(t6);
Texture2DArray<uint> visibleProbes : register(t7);
StructuredBuffer<lightConstants> lightConstants : register(t12);
Texture2DArray<float> gSunShadowmapArray : register(t13);
StructuredBuffer<refProbeConstants> refProbeConstants : register(t15);
StructuredBuffer<refProbeAttenuationConstants> refProbeAttenuationConstants : register(t16);
Texture3D<float3> gProbeXArray : register(t17);
Texture3D<float3> gProbeYArray : register(t18);
Texture3D<float3> gProbeZArray : register(t19);
Texture2DArray<float4> gCookieArray : register(t20);
StructuredBuffer<particleCloudInstanceBuffer> particleCloudInstanceBuffer : register(t21);
Buffer<float4> particleCloudVertexBuffer : register(t22);
StructuredBuffer<gSunShadowTree> gSunShadowTree : register(t23);
StructuredBuffer<outdoorOcclusionTree> outdoorOcclusionTree : register(t24);
StructuredBuffer<fx_randomTable> fx_randomTable : register(t25);
Texture2DArray<float> gTransShadowmapArray : register(t31);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  uint v0 : SV_VertexID0,
  uint v1 : TEXCOORD15,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0,
  out float2 o2 : TEXCOORD0)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t0, 64
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t12, 240
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t15, 224
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t16, 96
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t21, 64
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t23, 4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t24, 4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_raw t25
// Needs manual fix for instruction: 
// unknown dcl_: dcl_input_sgv v0.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (uint)v1.x >> 12;
  r0.y = (int)v1.x & 4095;
  if (1 == 0) r0.z = 0; else if (1+1 < 32) {   r0.z = (uint)v0.x << (32-(1 + 1)); r0.z = (uint)r0.z >> (32-1);  } else r0.z = (uint)v0.x >> 1;
  r1.x = (uint)r0.z;
  r0.z = (int)v0.x & 1;
  r1.y = (uint)r0.z;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r0.x, l(0), t21.xyzw
r2.x = samp0[]..swiz;
r2.y = samp0[]..swiz;
r2.z = samp0[]..swiz;
r2.w = samp0[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.x, l(16), t21.xyzw
r3.x = samp0[]..swiz;
r3.y = samp0[]..swiz;
r3.z = samp0[]..swiz;
r3.w = samp0[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.x, l(32), t21.xyzw
r4.x = samp0[]..swiz;
r4.y = samp0[]..swiz;
r4.z = samp0[]..swiz;
r4.w = samp0[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.zw, r0.x, l(48), t21.xxxy
r0.z = samp0[]..swiz;
r0.w = samp0[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.x, r0.x, l(60), t21.xxxx
r0.x = samp0[]..swiz;
  r1.z = (int)r4.y & 255;
  r1.z = (uint)r1.z;
  if (8 == 0) r5.x = 0; else if (8+8 < 32) {   r5.x = (uint)r4.y << (32-(8 + 8)); r5.x = (uint)r5.x >> (32-8);  } else r5.x = (uint)r4.y >> 8;
  if (8 == 0) r5.y = 0; else if (8+16 < 32) {   r5.y = (uint)r4.y << (32-(8 + 16)); r5.y = (uint)r5.y >> (32-8);  } else r5.y = (uint)r4.y >> 16;
  r5.xy = (uint2)r5.xy;
  r5.xy = float2(0.00392156886,0.00392156886) * r5.xy;
  r1.w = (uint)r4.y >> 24;
  r1.w = (uint)r1.w;
  r1.zw = float2(0.00392156886,0.00392156886) * r1.zw;
  r6.xyz = particleCloudVertexBuffer.Load(r0.y).xyz;
  r7.xyzw = (uint4)r3.xyzw >> int4(16,16,16,16);
  r3.xyzw = f16tof32(r3.xwzy);
  r7.xyzw = f16tof32(r7.wxyz);
  r8.xz = r3.xw;
  r8.yw = r7.yz;
  r9.xyzw = r8.xyzw * r8.xxxx;
  r10.xyz = r9.xzw + r9.xzw;
  r11.xyz = r8.zwy * r7.yyy;
  r4.y = r11.y + r11.y;
  r5.zw = r8.wz * r3.ww;
  r5.zw = r5.zw + r5.zw;
  r6.w = r11.z * 2 + r5.w;
  r8.x = 1 + -r6.w;
  r8.yz = r9.yx * float2(2,2) + r5.zw;
  r8.w = r9.z * 2 + -r4.y;
  r8.xyw = r8.xyw * r2.www;
  r9.x = r9.y * 2 + -r5.z;
  r9.y = 1 + -r8.z;
  r10.xyw = r11.xyz * float3(2,2,2) + r10.zyx;
  r9.z = r10.x;
  r9.xyz = r9.xyz * r2.www;
  r11.y = r11.x * 2 + -r10.z;
  r11.xz = r10.yw * float2(1,-1) + float2(0,1);
  r10.xyz = r11.xyz * r2.www;
  r2.xyz = -eyeOffset.xyz + r2.xyz;
  r9.xyz = r9.xyz * r6.yyy;
  r6.xyw = r6.xxx * r8.xyw + r9.xyz;
  r6.xyz = r6.zzz * r10.xyz + r6.xyw;
  r2.xyz = r6.xyz + r2.xyz;
  if (1 == 0) r6.x = 0; else if (1+19 < 32) {   r6.x = (uint)r0.x << (32-(1 + 19)); r6.x = (uint)r6.x >> (32-1);  } else r6.x = (uint)r0.x >> 19;
  if (1 == 0) r6.y = 0; else if (1+21 < 32) {   r6.y = (uint)r0.x << (32-(1 + 21)); r6.y = (uint)r6.y >> (32-1);  } else r6.y = (uint)r0.x >> 21;
  if (1 == 0) r6.z = 0; else if (1+20 < 32) {   r6.z = (uint)r0.x << (32-(1 + 20)); r6.z = (uint)r6.z >> (32-1);  } else r6.z = (uint)r0.x >> 20;
  r0.x = dot(-r2.xy, -r2.xy);
  r0.x = rsqrt(r0.x);
  r8.xz = -r2.yx * r0.xx;
  r8.y = 0;
  r3.x = r7.w;
  r9.xyz = r3.yzx * r8.xyz;
  r8.xyz = r3.xyz * r8.yzx + -r9.xyz;
  r0.x = dot(r8.xyz, r8.xyz);
  r0.x = rsqrt(r0.x);
  r8.xyz = r8.xyz * r0.xxx;
  r7.y = f16tof32(r4.x);
  r4.xy = float2(-0.5,-0.5) + r1.xy;
  r5.zw = r4.xy * r7.xy;
  r7.yzw = r8.xyz * r5.zzz + r2.xyz;
  r7.yzw = r3.zxy * r5.www + r7.yzw;
  r3.w = r7.x;
  r3.xyzw = r4.xxyy * r3.zxyw;
  r3.xy = r3.xy + r3.zw;
  r3.yzw = inverseViewMatrix._m10_m11_m12 * r3.yyy;
  r3.xyz = r3.xxx * inverseViewMatrix._m00_m01_m02 + r3.yzw;
  r2.xyz = r3.xyz + r2.xyz;
  r2.xyz = r6.xxx ? r7.yzw : r2.xyz;
  r3.xyzw = viewProjectionMatrix._m10_m11_m12_m13 * r2.yyyy;
  r3.xyzw = r2.xxxx * viewProjectionMatrix._m00_m01_m02_m03 + r3.xyzw;
  r3.xyzw = r2.zzzz * viewProjectionMatrix._m20_m21_m22_m23 + r3.xyzw;
  r3.xyzw = viewProjectionMatrix._m30_m31_m32_m33 + r3.xyzw;
  if (r0.z != 0) {
    if (r0.z != 0) {
      if (14 == 0) r7.x = 0; else if (14+16 < 32) {       r7.x = (uint)r0.w << (32-(14 + 16)); r7.x = (uint)r7.x >> (32-14);      } else r7.x = (uint)r0.w >> 16;
      if (8 == 0) r7.y = 0; else if (8+8 < 32) {       r7.y = (uint)r0.z << (32-(8 + 8)); r7.y = (uint)r7.y >> (32-8);      } else r7.y = (uint)r0.z >> 8;
      if (8 == 0) r7.z = 0; else if (8+16 < 32) {       r7.z = (uint)r0.z << (32-(8 + 16)); r7.z = (uint)r7.z >> (32-8);      } else r7.z = (uint)r0.z >> 16;
      if (8 == 0) r7.w = 0; else if (8+8 < 32) {       r7.w = (uint)r0.w << (32-(8 + 8)); r7.w = (uint)r7.w >> (32-8);      } else r7.w = (uint)r0.w >> 8;
      r0.x = mad((int)r0.y, 500, (int)r7.x);
      r0.x = (uint)r0.x % 809;
      r4.x = (uint)r0.z >> 24;
      r8.xyzw = (int4)r0.wwzz & int4(65535,15,3,4);
      if (4 == 0) r9.z = 0; else if (4+4 < 32) {       r9.z = (uint)r8.x << (32-(4 + 4)); r9.z = (uint)r9.z >> (32-4);      } else r9.z = (uint)r8.x >> 4;
      r0.w = (int)r8.y + (int)r9.z;
      r4.y = 1 << (int)r0.w;
      r0.x = (uint)r0.x << 2;
      r0.x = (int)r0.x + 88;
    // No code for instruction (needs manual fix):
        ld_raw_indexable(raw_buffer)(mixed,mixed,mixed,mixed) r0.x, r0.x, t25.xxxx
      r0.x = (int)r0.x & 0x0000ffff;
      r0.x = (int)r4.y * (int)r0.x;
      r0.x = (uint)r0.x >> 16;
      r10.xyz = cmp((int3)r8.zzz == int3(1,0,3));
      r4.y = (int)r4.y + -1;
      if (r0.w == 0) r0.y = 0; else if (r0.w+0 < 32) {       r0.y = (uint)r0.y << (32-(r0.w + 0)); r0.y = (uint)r0.y >> (32-r0.w);      } else r0.y = (uint)r0.y >> 0;
      r0.x = r10.x ? r0.x : r0.y;
      r0.y = (int)r10.z | (int)r10.y;
      r0.x = r0.y ? r7.y : r0.x;
      r0.x = (uint)r0.x;
      r0.y = (int)r7.w + 1;
      r5.z = (uint)r0.y;
      r4.z = r4.z * r5.z + r0.x;
      r5.w = (uint)r7.z;
      r4.w = r5.w * r4.w;
      r0.x = r4.w * 0.00100000005 + r0.x;
      r0.x = r8.w ? r4.z : r0.x;
      r4.z = floor(r0.x);
      r10.x = (uint)r4.z;
      r0.x = ceil(r0.x);
      r10.y = (uint)r0.x;
      r8.xzw = (int3)r0.zzz & int3(8,16,32);
      r0.x = (int)r4.x * (int)r0.y;
      r0.xy = cmp((uint2)r10.xy >= (uint2)r0.xx);
      r0.xy = r0.xy ? r7.ww : r10.xy;
      r0.xy = r8.xx ? r0.xy : r10.xy;
      r0.z = rcp(r5.z);
      r4.xz = (uint2)r0.xy;
      r4.xz = r4.xz * r0.zz;
      r4.xz = frac(r4.xz);
      r4.xz = r5.zz * r4.xz;
      r4.xz = (uint2)r4.xz;
      r4.xz = (int2)r4.xz + (int2)r7.yy;
      r0.xy = r10.zz ? r4.xz : r0.xy;
      r0.y = r8.z ? r0.y : r0.x;
      if (r0.w == 0) r0.x = 0; else if (r0.w+0 < 32) {       r0.x = (uint)r0.x << (32-(r0.w + 0)); r0.x = (uint)r0.x >> (32-r0.w);      } else r0.x = (uint)r0.x >> 0;
      if (r0.w == 0) r0.y = 0; else if (r0.w+0 < 32) {       r0.y = (uint)r0.y << (32-(r0.w + 0)); r0.y = (uint)r0.y >> (32-r0.w);      } else r0.y = (uint)r0.y >> 0;
      r0.y = (int)-r0.y + (int)r4.y;
      r9.x = r8.w ? r0.y : r0.x;
      r9.y = r8.y;
    } else {
      r9.xyz = float3(0,0,0);
    }
    r0.xy = (uint2)r9.yz << int2(23,23);
    r0.xy = (int2)-r0.xy + int2(1065353216,1065353216);
    if (r9.y == 0) r0.z = 0; else if (r9.y+0 < 32) {     r0.z = (uint)r9.x << (32-(r9.y + 0)); r0.z = (uint)r0.z >> (32-r9.y);    } else r0.z = (uint)r9.x >> 0;
    if (r9.z == 0) r0.w = 0; else if (r9.z+r9.y < 32) {     r0.w = (uint)r9.x << (32-(r9.z + r9.y)); r0.w = (uint)r0.w >> (32-r9.z);    } else r0.w = (uint)r9.x >> r9.y;
    r4.xy = (uint2)r0.zw;
    r0.zw = r4.xy + r1.xy;
    o2.xy = r0.zw * r0.xy;
  } else {
    o2.xy = r1.xy;
  }
  r0.x = log2(r1.z);
  r0.yz = log2(r5.xy);
  r0.xyz = float3(2.20000005,2.20000005,2.20000005) * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r1.x = cmp(1 >= featherParms.x);
  r1.y = saturate(featherParms.x * r3.w);
  r1.y = r1.w * r1.y;
  r1.x = r1.x ? r1.y : r1.w;
  if (r6.y != 0) {
    r1.yzw = eyeOffset.xyz + r2.xyz;
    r4.xy = outdoorSSTConstants.offToPinTransform._m10_m11 * r1.zz;
    r1.yz = r1.yy * outdoorSSTConstants.offToPinTransform._m00_m01 + r4.xy;
    r1.yz = r1.ww * outdoorSSTConstants.offToPinTransform._m20_m21 + r1.yz;
    r4.xy = outdoorSSTConstants.offToPinTransform._m30_m31 + r1.yz;
    r5.xyz = float3(128,0.5,0.5) * outdoorSSTConstants.constants.inchesPerTexel;
    r7.xz = rcp(r5.xx);
    r7.y = -r7.z;
    r5.xyz = r4.xyx * r7.xyz + r5.yzy;
    r6.xyw = float3(-0.0078125,-0.0078125,-0.0078125) + outdoorSSTConstants.constants.dimensionInTiles.xyx;
    r5.xyz = max(float3(0,0,0), r5.xyz);
    r5.xyz = min(r5.xyz, r6.xyw);
    r1.yz = floor(r5.zy);
    r1.y = r1.z * outdoorSSTConstants.constants.dimensionInTiles.x + r1.y;
    r1.y = (uint)r1.y;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r1.z, r1.y, l(0), t24.xxxx
  r1.z = samp0[]..swiz;
    r4.w = (int)r1.z & 0x40000000;
    r4.z = (uint)r1.z << 2;
    if (r4.w == 0) {
      r4.w = (int)r1.z & 0x01ffffff;
      r7.x = (int)r1.y + (int)r4.w;
      r1.y = (uint)r1.z >> 25;
      r1.y = (uint)r1.y;
      r5.xyz = r5.xyz * r1.yyy;
      r5.xyz = frac(r5.xyz);
      r5.xyz = float3(128,128,128) * r5.xyz;
      r5.xyz = (uint3)r5.xyz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r7.z, r7.x, l(0), t24.xxxx
    r7.z = samp0[]..swiz;
      r1.yz = (uint2)r5.zy >> int2(6,6);
      r4.w = (int)r7.z & 0xc0000000;
      r5.w = (int)r7.x + 1;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r5.w, r5.w, l(0), t24.xxxx
    r5.w = samp0[]..swiz;
      r1.z = r1.z ? r7.z : r5.w;
      r5.w = (uint)r1.z >> 13;
      r1.y = r1.y ? r5.w : r1.z;
      r1.y = (int)r1.y & 8191;
      r8.x = (int)r1.y + (int)r7.x;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r8.z, r8.x, l(0), t24.xxxx
    r8.z = samp0[]..swiz;
      r7.y = 0;
      r8.y = 1;
      r6.xyw = r4.www ? r7.xyz : r8.xyz;
      r8.yz = r4.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
      r1.yz = (uint2)r5.zy >> (uint2)r8.yy;
      r1.yz = (int2)r1.yz & int2(1,1);
      r5.w = (int)r6.w & 0xc0000000;
      r7.w = (int)r6.x + 1;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r7.w, r7.w, l(0), t24.xxxx
    r7.w = samp0[]..swiz;
      r1.z = r1.z ? r6.w : r7.w;
      r7.w = (uint)r1.z >> 13;
      r1.y = r1.y ? r7.w : r1.z;
      r1.y = (int)r1.y & 8191;
      r8.x = (int)r1.y + (int)r6.x;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r8.w, r8.x, l(0), t24.xxxx
    r8.w = samp0[]..swiz;
      r6.xyw = r5.www ? r6.xyw : r8.xzw;
      r6.xyw = r4.www ? r7.xyz : r6.xyw;
      r1.y = (int)r6.w & 0xc0000000;
      if (r1.y == 0) {
        r1.y = (int)-r6.y + 6;
        r1.yz = (uint2)r5.zy >> (uint2)r1.yy;
        r4.w = (int)r6.w | 0x40000000;
        bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r1.z = (((uint)r1.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
        bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r1.y = (((uint)r1.y << 0) & bitmask.y) | ((uint)r1.z & ~bitmask.y);
        r1.y = (int)r1.y * 10;
        r1.y = (uint)r4.w >> (uint)r1.y;
        r1.y = (int)r1.y & 1023;
        r7.x = (int)r1.y + (int)r6.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r7.w, r7.x, l(0), t24.xxxx
      r7.w = samp0[]..swiz;
        r7.yz = (int2)r6.yy + int2(1,2);
        r1.y = (int)-r7.y + 6;
        r1.yz = (uint2)r5.zy >> (uint2)r1.yy;
        r4.w = (int)r7.w & 0xc0000000;
        r5.w = (int)r7.w | 0x40000000;
        bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r1.z = (((uint)r1.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
        bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r1.y = (((uint)r1.y << 0) & bitmask.y) | ((uint)r1.z & ~bitmask.y);
        r1.y = (int)r1.y * 10;
        r1.y = (uint)r5.w >> (uint)r1.y;
        r1.y = (int)r1.y & 1023;
        r8.x = (int)r1.y + (int)r7.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r8.z, r8.x, l(0), t24.xxxx
      r8.z = samp0[]..swiz;
        r8.y = r7.z;
        r8.xyz = r4.www ? r7.xyw : r8.xyz;
        r1.y = (int)-r8.y + 6;
        r1.yz = (uint2)r5.zy >> (uint2)r1.yy;
        r5.w = (int)r8.z & 0xc0000000;
        r6.y = (int)r8.z | 0x40000000;
        bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r1.z = (((uint)r1.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
        bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r1.y = (((uint)r1.y << 0) & bitmask.y) | ((uint)r1.z & ~bitmask.y);
        r1.y = (int)r1.y * 10;
        r1.y = (uint)r6.y >> (uint)r1.y;
        r1.y = (int)r1.y & 1023;
        r9.x = (int)r1.y + (int)r8.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r9.y, r9.x, l(0), t24.xxxx
      r9.y = samp0[]..swiz;
        r1.yz = r5.ww ? r8.xz : r9.xy;
        r6.xw = r4.ww ? r7.xw : r1.yz;
      }
      r1.y = (int)r6.w & 0xc0000000;
      if (r1.y == 0) {
        if (14 == 0) r1.z = 0; else if (14+15 < 32) {         r1.z = (uint)r6.w << (32-(14 + 15)); r1.z = (uint)r1.z >> (32-14);        } else r1.z = (uint)r6.w >> 15;
        r1.z = (uint)r1.z;
        r1.z = outdoorSSTConstants.constants.spanInInches * r1.z;
        r1.z = 6.10388815e-05 * r1.z;
        r7.xy = (int2)r6.ww & int2(32767,536870912);
        r4.w = (uint)r7.x;
        r4.w = outdoorSSTConstants.constants.spanInInches * r4.w;
        r4.w = 3.05185094e-05 * r4.w;
        r5.w = (int)r5.y & 3;
        r5.w = (int)r5.w + (int)r6.x;
        r5.w = (int)r5.w + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r5.w, r5.w, l(0), t24.xxxx
      r5.w = samp0[]..swiz;
        bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r7.x = (((uint)r5.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
        bitmask.z = ((~(-1 << 2)) << 1) & 0xffffffff;  r7.z = (((uint)r5.y << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
        bitmask.w = ((~(-1 << 1)) << 4) & 0xffffffff;  r7.w = (((uint)r5.z << 4) & bitmask.w) | ((uint)0 & ~bitmask.w);
        r5.x = (uint)r5.w >> (uint)r7.x;
        r5.x = (int)r5.x & 255;
        r5.x = (uint)r5.x;
        r5.x = r5.x * r4.w;
        r5.x = r5.x * 0.00392156886 + r1.z;
        r5.y = (int)r7.z + 1;
        if (1 == 0) r5.z = 0; else if (1+1 < 32) {         r5.z = (uint)r5.z << (32-(1 + 1)); r5.z = (uint)r5.z >> (32-1);        } else r5.z = (uint)r5.z >> 1;
        r5.y = (int)r5.z + (int)r5.y;
        r5.y = (int)r5.y + (int)r6.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r5.y, r5.y, l(0), t24.xxxx
      r5.y = samp0[]..swiz;
        r5.y = (uint)r5.y >> (uint)r7.w;
        r5.y = (int)r5.y & 0x0000ffff;
        r5.y = (uint)r5.y;
        r4.w = r5.y * r4.w;
        r1.z = r4.w * 1.52590219e-05 + r1.z;
        r4.z = r7.y ? r5.x : r1.z;
      } else {
        r1.z = (int)r6.w & 0x80000000;
        r4.w = (int)r6.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r4.w, r4.w, l(0), t24.xxxx
      r4.w = samp0[]..swiz;
        r1.z = r1.z ? r4.w : 0;
        r4.w = (uint)r6.w << 2;
        r5.x = (uint)r1.z >> 16;
        r5.x = f16tof32(r5.x);
        r1.z = (int)r1.z & 0x0000ffff;
        r1.z = f16tof32(r1.z);
        r4.w = r4.x * r5.x + r4.w;
        r1.z = r4.y * r1.z + r4.w;
        r4.z = r1.y ? r1.z : r4.z;
      }
    }
    r1.y = dot(r4.xyz, pinToWorldZ.xyz);
    r1.y = pinToWorldZ.w + r1.y;
    r1.y = saturate(r1.w + -r1.y);
    r1.x = r1.x * r1.y;
  }
  r1.y = cmp((int)r6.z != 0);
  r4.xyz = eyeOffset.xyz + r2.xyz;
  r5.y = 0;
  r1.zw = float2(0,0);
  r4.w = 0;
  while (true) {
    r5.z = cmp((int)r1.w >= 5);
    r4.w = 0;
    if (r5.z != 0) break;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.z, r1.w, l(0), t0.xxxx
  r5.z = samp0[]..swiz;
    if (r5.z != 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyzw, r1.w, l(4), t0.xyzw
    r6.x = samp0[]..swiz;
    r6.y = samp0[]..swiz;
    r6.z = samp0[]..swiz;
    r6.w = samp0[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r1.w, l(20), t0.xyzw
    r7.x = samp0[]..swiz;
    r7.y = samp0[]..swiz;
    r7.z = samp0[]..swiz;
    r7.w = samp0[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r8.xyzw, r1.w, l(36), t0.xyzw
    r8.x = samp0[]..swiz;
    r8.y = samp0[]..swiz;
    r8.z = samp0[]..swiz;
    r8.w = samp0[]..swiz;
      r9.xy = r6.xw;
      r9.z = r7.z;
      r9.x = dot(r4.xyz, r9.xyz);
      r10.x = r6.y;
      r10.yz = r7.xw;
      r9.y = dot(r4.xyz, r10.xyz);
      r7.x = r6.z;
      r7.z = r8.x;
      r9.z = dot(r4.xyz, r7.xyz);
      r6.xyz = r9.xyz + r8.yzw;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyz, r1.w, l(52), t0.xyzx
    r7.x = samp0[]..swiz;
    r7.y = samp0[]..swiz;
    r7.z = samp0[]..swiz;
      r6.xyz = cmp(abs(r6.xyz) < r7.xyz);
      r5.z = r6.y ? r6.x : 0;
      r5.z = r6.z ? r5.z : 0;
      if (r5.z != 0) {
        r1.z = -1;
        r4.w = -1;
        break;
      }
      r4.w = r5.z;
    } else {
      r4.w = 0;
    }
    r5.x = (int)r1.w + 1;
    r1.zw = r5.yx;
  }
  r1.z = (int)r1.z & (int)r4.w;
  r1.y = r1.y ? r1.z : 0;
  r0.w = r1.y ? 0 : r1.x;
  r1.x = cmp(0 < r0.w);
  if (r1.x != 0) {
    r1.x = viewMatrix._m12 * r2.y;
    r1.x = r2.x * viewMatrix._m02 + r1.x;
    r1.x = r2.z * viewMatrix._m22 + r1.x;
    r1.yzw = viewProjectionMatrix._m10_m11_m13 * r2.yyy;
    r1.yzw = r2.xxx * viewProjectionMatrix._m00_m01_m03 + r1.yzw;
    r1.yzw = r2.zzz * viewProjectionMatrix._m20_m21_m23 + r1.yzw;
    r1.yzw = viewProjectionMatrix._m30_m31_m33 + r1.yzw;
    r1.w = rcp(r1.w);
    r1.yz = r1.yz * r1.ww;
    r1.yz = r1.yz * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.yz = renderTargetSize.xy * r1.yz;
    r4.xy = float2(-1,-1) + renderTargetSize.xy;
    r1.yz = max(float2(0,0), r1.yz);
    r1.yz = min(r1.yz, r4.xy);
    r4.xyz = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * r2.yyy;
    r4.xyz = r2.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r4.xyz;
    r4.xyz = r2.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r4.xyz;
    r4.xyz = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r4.xyz;
    r5.xy = -sunConstants.splitPinTransform[2].xy + r4.xy;
    r5.xy = sunConstants.splitPinTransform[2].zz * r5.xy;
    r1.w = max(abs(r5.x), abs(r5.y));
    r1.w = cmp(1 < r1.w);
    if (r1.w != 0) {
      r6.xyz = float3(128,0.5,0.5) * sunConstants.sstLightingConstants.constants.inchesPerTexel;
      r7.xz = rcp(r6.xx);
      r7.y = -r7.z;
      r6.xyz = r4.xyx * r7.xyz + r6.yzy;
      r7.xyz = float3(-0.0078125,-0.0078125,-0.0078125) + sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx;
      r6.xyz = max(float3(0,0,0), r6.xyz);
      r6.xyz = min(r6.xyz, r7.xyz);
      r5.zw = sunConstants.sstLightingConstants.coordScale * r6.zy;
      r5.zw = floor(r5.zw);
      r1.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r5.w;
      r1.w = r1.w * sunConstants.sstLightingConstants.coordScale + r5.z;
      r1.w = (uint)r1.w;
      r1.w = (int)r1.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r4.w, r1.w, l(0), t23.xxxx
    r4.w = samp0[]..swiz;
      r5.z = (int)r4.w & 0x40000000;
      r5.w = (uint)r4.w << 2;
      if (r5.z == 0) {
        r5.z = (int)r4.w & 0x01ffffff;
        r7.x = (int)r1.w + (int)r5.z;
        r1.w = (uint)r4.w >> 25;
        r1.w = (uint)r1.w;
        r6.xyz = r6.xyz * r1.www;
        r6.xyz = frac(r6.xyz);
        r6.xyz = float3(128,128,128) * r6.xyz;
        r6.xyz = (uint3)r6.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r7.z, r7.x, l(0), t23.xxxx
      r7.z = samp0[]..swiz;
        r8.xy = (uint2)r6.zy >> int2(6,6);
        r1.w = (int)r7.z & 0xc0000000;
        r4.w = (int)r7.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r4.w, r4.w, l(0), t23.xxxx
      r4.w = samp0[]..swiz;
        r4.w = r8.y ? r7.z : r4.w;
        r5.z = (uint)r4.w >> 13;
        r4.w = r8.x ? r5.z : r4.w;
        r4.w = (int)r4.w & 8191;
        r8.x = (int)r4.w + (int)r7.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r8.z, r8.x, l(0), t23.xxxx
      r8.z = samp0[]..swiz;
        r7.y = 0;
        r8.y = 1;
        r8.xyz = r1.www ? r7.xyz : r8.xyz;
        r9.yz = r1.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r10.xy = (uint2)r6.zy >> (uint2)r9.yy;
        r10.xy = (int2)r10.xy & int2(1,1);
        r4.w = (int)r8.z & 0xc0000000;
        r5.z = (int)r8.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r5.z, r5.z, l(0), t23.xxxx
      r5.z = samp0[]..swiz;
        r5.z = r10.y ? r8.z : r5.z;
        r6.w = (uint)r5.z >> 13;
        r5.z = r10.x ? r6.w : r5.z;
        r5.z = (int)r5.z & 8191;
        r9.x = (int)r5.z + (int)r8.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r9.w, r9.x, l(0), t23.xxxx
      r9.w = samp0[]..swiz;
        r8.xyz = r4.www ? r8.xyz : r9.xzw;
        r7.xyz = r1.www ? r7.xyz : r8.xyz;
        r1.w = (int)r7.z & 0xc0000000;
        if (r1.w == 0) {
          r1.w = (int)-r7.y + 6;
          r8.xy = (uint2)r6.zy >> (uint2)r1.ww;
          r1.w = (int)r7.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r4.w = (((uint)r8.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r4.w = (((uint)r8.x << 0) & bitmask.w) | ((uint)r4.w & ~bitmask.w);
          r4.w = (int)r4.w * 10;
          r1.w = (uint)r1.w >> (uint)r4.w;
          r1.w = (int)r1.w & 1023;
          r8.x = (int)r1.w + (int)r7.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r8.w, r8.x, l(0), t23.xxxx
        r8.w = samp0[]..swiz;
          r8.yz = (int2)r7.yy + int2(1,2);
          r1.w = (int)-r8.y + 6;
          r7.yw = (uint2)r6.zy >> (uint2)r1.ww;
          r1.w = (int)r8.w & 0xc0000000;
          r4.w = (int)r8.w | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r5.z = (((uint)r7.w << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r5.z = (((uint)r7.y << 0) & bitmask.z) | ((uint)r5.z & ~bitmask.z);
          r5.z = (int)r5.z * 10;
          r4.w = (uint)r4.w >> (uint)r5.z;
          r4.w = (int)r4.w & 1023;
          r9.x = (int)r4.w + (int)r8.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r9.z, r9.x, l(0), t23.xxxx
        r9.z = samp0[]..swiz;
          r9.y = r8.z;
          r9.xyz = r1.www ? r8.xyw : r9.xyz;
          r4.w = (int)-r9.y + 6;
          r7.yw = (uint2)r6.zy >> (uint2)r4.ww;
          r4.w = (int)r9.z & 0xc0000000;
          r5.z = (int)r9.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r6.w = (((uint)r7.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r6.w = (((uint)r7.y << 0) & bitmask.w) | ((uint)r6.w & ~bitmask.w);
          r6.w = (int)r6.w * 10;
          r5.z = (uint)r5.z >> (uint)r6.w;
          r5.z = (int)r5.z & 1023;
          r10.x = (int)r5.z + (int)r9.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.y, r10.x, l(0), t23.xxxx
        r10.y = samp0[]..swiz;
          r7.yw = r4.ww ? r9.xz : r10.xy;
          r7.xz = r1.ww ? r8.xw : r7.yw;
        }
        r1.w = (int)r7.z & 0xc0000000;
        if (r1.w == 0) {
          if (14 == 0) r4.w = 0; else if (14+15 < 32) {           r4.w = (uint)r7.z << (32-(14 + 15)); r4.w = (uint)r4.w >> (32-14);          } else r4.w = (uint)r7.z >> 15;
          r4.w = (uint)r4.w;
          r4.w = sunConstants.sstLightingConstants.constants.spanInInches * r4.w;
          r4.w = 6.10388815e-05 * r4.w;
          r7.yw = (int2)r7.zz & int2(32767,536870912);
          r5.z = (uint)r7.y;
          r5.z = sunConstants.sstLightingConstants.constants.spanInInches * r5.z;
          r5.z = 3.05185094e-05 * r5.z;
          r6.w = (int)r6.y & 3;
          r6.w = (int)r6.w + (int)r7.x;
          r6.w = (int)r6.w + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r6.w, r6.w, l(0), t23.xxxx
        r6.w = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r8.x = (((uint)r6.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r8.y = (((uint)r6.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r8.z = (((uint)r6.z << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r6.x = (uint)r6.w >> (uint)r8.x;
          r6.x = (int)r6.x & 255;
          r6.x = (uint)r6.x;
          r6.x = r6.x * r5.z;
          r6.x = r6.x * 0.00392156886 + r4.w;
          r6.y = (int)r8.y + 1;
          if (1 == 0) r6.z = 0; else if (1+1 < 32) {           r6.z = (uint)r6.z << (32-(1 + 1)); r6.z = (uint)r6.z >> (32-1);          } else r6.z = (uint)r6.z >> 1;
          r6.y = (int)r6.z + (int)r6.y;
          r6.y = (int)r6.y + (int)r7.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r6.y, r6.y, l(0), t23.xxxx
        r6.y = samp0[]..swiz;
          r6.y = (uint)r6.y >> (uint)r8.z;
          r6.y = (int)r6.y & 0x0000ffff;
          r6.y = (uint)r6.y;
          r5.z = r6.y * r5.z;
          r4.w = r5.z * 1.52590219e-05 + r4.w;
          r5.w = r7.w ? r6.x : r4.w;
        } else {
          r4.w = (int)r7.z & 0x80000000;
          r5.z = (int)r7.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r5.z, r5.z, l(0), t23.xxxx
        r5.z = samp0[]..swiz;
          r4.w = r4.w ? r5.z : 0;
          r5.z = (uint)r7.z << 2;
          r6.x = (uint)r4.w >> 16;
          r6.x = f16tof32(r6.x);
          r4.w = (int)r4.w & 0x0000ffff;
          r4.w = f16tof32(r4.w);
          r4.x = r4.x * r6.x + r5.z;
          r4.x = r4.y * r4.w + r4.x;
          r5.w = r1.w ? r4.x : r5.w;
        }
      }
      r1.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r4.z;
      r1.w = cmp(r5.w < r1.w);
      r1.w = r1.w ? 0 : 1;
    } else {
      r5.xy = r5.xy * float2(0.5,-0.5) + float2(0.5,0.5);
      r4.x = -sunConstants.splitDepthOffset + r4.z;
      r4.x = -r4.x * 6.10351563e-05 + 1;
      r4.y = (int16)sunConstants.splitArrayOffset + 2;
      r5.z = (uint)r4.y;
      r4.y = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r5.xyz, r4.x, int2(1, 1)).x;
      r4.z = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r5.xyz, r4.x, int2(1, -1)).x;
      r4.y = r4.y + r4.z;
      r4.z = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r5.xyz, r4.x, int2(-1, 1)).x;
      r4.y = r4.y + r4.z;
      r4.x = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r5.xyz, r4.x, int2(-1, -1)).x;
      r4.x = r4.y + r4.x;
      r4.y = gTransShadowmapArray.SampleLevel(samp0_s, r5.xyz, 0).x;
      r4.x = r4.x * 0.25 + r4.y;
      r1.w = saturate(-1 + r4.x);
    }
    r4.xyz = sunConstants.color.xyz * r1.www;
    r4.xyz = float3(0.25,0.25,0.25) * r4.xyz;
    r1.x = 0.0078125 * r1.x;
    r1.x = max(0, r1.x);
    r1.x = min(15, r1.x);
    r1.xyz = (uint3)r1.xyz;
    r5.xy = (uint2)r1.yz >> int2(6,6);
    r5.z = (uint)r1.x << 4;
    r1.xy = float2(0,0);
    r6.w = 0;
    r2.w = 1;
    r7.z = 1;
    r8.xyz = r4.xyz;
    r1.w = 0;
    while (true) {
      r4.w = cmp((uint)r1.w >= numLights);
      if (r4.w != 0) break;
      r1.z = (uint)r1.w >> 5;
      r6.xyz = (int3)r1.xyz + (int3)r5.xyz;
      r1.z = visibleLights.Load(r6.xyzw).x;
      r9.xyz = r8.xyz;
      r9.w = r1.z;
      while (true) {
        if (r9.w == 0) break;
        r4.w = firstbitlow((uint)r9.w);
        r5.w = 1 << (int)r4.w;
        r6.x = (int)r5.w & (int)r9.w;
        if (r6.x != 0) {
          r9.w = (int)r5.w ^ (int)r9.w;
          r4.w = (int)r1.w + (int)r4.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.xyzw, r4.w, l(0), t12.xyzw
        r10.x = samp0[]..swiz;
        r10.y = samp0[]..swiz;
        r10.z = samp0[]..swiz;
        r10.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.yz, r4.w, l(16), t12.xxyx
        r11.y = samp0[]..swiz;
        r11.z = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.xyzw, r4.w, l(28), t12.xyzw
        r12.x = samp0[]..swiz;
        r12.y = samp0[]..swiz;
        r12.z = samp0[]..swiz;
        r12.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r6.xy, r4.w, l(44), t12.xyxx
        r6.x = samp0[]..swiz;
        r6.y = samp0[]..swiz;
          if (3 == 0) r5.w = 0; else if (3+24 < 32) {           r5.w = (uint)r12.x << (32-(3 + 24)); r5.w = (uint)r5.w >> (32-3);          } else r5.w = (uint)r12.x >> 24;
          switch (r5.w) {
            case 2 :          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r4.w, l(116), t12.xyzw
          r14.x = samp0[]..swiz;
          r14.y = samp0[]..swiz;
          r14.z = samp0[]..swiz;
          r14.w = samp0[]..swiz;
            r5.w = dot(r14.xyzw, r2.xyzw);
            r6.z = cmp(r5.w < 1);
            if (r6.z != 0) {
              r13.xyz = r9.xyz;
              break;
            }
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r4.w, l(68), t12.xyzw
          r14.x = samp0[]..swiz;
          r14.y = samp0[]..swiz;
          r14.z = samp0[]..swiz;
          r14.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r4.w, l(84), t12.xyzw
          r15.x = samp0[]..swiz;
          r15.y = samp0[]..swiz;
          r15.z = samp0[]..swiz;
          r15.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r4.w, l(172), t12.yzwx
          r16.x = samp0[]..swiz;
          r16.y = samp0[]..swiz;
          r16.z = samp0[]..swiz;
          r16.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r4.w, l(188), t12.wxyz
          r17.x = samp0[]..swiz;
          r17.y = samp0[]..swiz;
          r17.z = samp0[]..swiz;
          r17.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r4.w, l(204), t12.xyzw
          r18.x = samp0[]..swiz;
          r18.y = samp0[]..swiz;
          r18.z = samp0[]..swiz;
          r18.w = samp0[]..swiz;
            r19.xyz = r10.xyz + -r2.xyz;
            r6.z = r6.y * r6.y;
            r7.w = dot(r19.xyz, r19.xyz);
            r6.z = r6.z / r7.w;
            r6.z = min(1, r6.z);
            r7.w = saturate(r5.w * r12.y + r12.z);
            r8.w = saturate(r5.w * r12.w + r6.x);
            r12.x = r7.w * r7.w;
            r7.w = r7.w * -2 + 3;
            r7.w = r12.x * r7.w;
            r6.z = r7.w * r6.z;
            r7.w = r8.w * r8.w;
            r8.w = r8.w * -2 + 3;
            r7.w = r8.w * r7.w;
            r6.z = r7.w * r6.z;
            r14.x = dot(r14.xyzw, r2.xyzw);
            r14.y = dot(r15.xyzw, r2.xyzw);
            r7.xy = r14.xy / r5.ww;
            r5.w = cmp(r16.w < 0.00048828125);
            if (r5.w != 0) {
              r17.y = r18.x;
              r14.xy = saturate(abs(r7.xy) * r17.zw + r17.xy);
              r14.zw = r14.xy * r14.xy;
              r14.xy = r14.xy * float2(-2,-2) + float2(3,3);
              r14.xy = r14.zw * r14.xy;
              r5.w = r14.x * r14.y;
              r5.w = r6.z * r5.w;
            } else {
              r16.w = r17.y;
              r14.xyzw = saturate(r16.xyzw * abs(r7.yyxx));
              r14.xyzw = log2(r14.xyzw);
              r14.xyzw = r17.xxxx * r14.xyzw;
              r14.xyzw = exp2(r14.xyzw);
              r14.xy = r14.xy + r14.zw;
              r14.xy = log2(r14.xy);
              r14.xy = r18.xx * r14.xy;
              r14.xy = exp2(r14.xy);
              r7.w = r17.z * r14.x;
              r8.w = r17.w * r14.y + -1;
              r7.w = r17.w * r14.y + -r7.w;
              r7.w = saturate(r8.w / r7.w);
              r8.w = r7.w * r7.w;
              r7.w = r7.w * -2 + 3;
              r7.w = r8.w * r7.w;
              r5.w = r7.w * r6.z;
            }
            r6.z = cmp(0 >= r5.w);
            if (r6.z != 0) {
              r13.xyz = r9.xyz;
              break;
            }
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r6.z, r4.w, l(236), t12.xxxx
          r6.z = samp0[]..swiz;
            r6.z = r6.z ? 0.000000 : 0;
            if (r6.z != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyz, r4.w, l(220), t12.xyzx
            r14.x = samp0[]..swiz;
            r14.y = samp0[]..swiz;
            r14.z = samp0[]..swiz;
              r4.w = dot(r18.yzw, r7.xyz);
              r7.x = dot(r14.xyz, r7.xyz);
              r14.x = frac(r4.w);
              r14.y = frac(r7.x);
              r4.w = (int)r6.z + -1;
              r14.z = (uint)r4.w;
              r7.xyw = gCookieArray.SampleLevel(samplerLinear_s, r14.xyz, 0).xyz;
              r11.w = r10.w;
              r11.xyz = r11.wyz * r7.xyw;
            } else {
              r11.x = r10.w;
            }
            r4.w = 0.25 * r5.w;
            r7.xyw = r4.www * r11.xyz;
            r4.w = dot(r7.xyw, float3(0.298999995,0.587000012,0.114));
            r4.w = max(9.99999997e-07, r4.w);
            r5.w = min(relHDRExposure.x, r4.w);
            r4.w = r5.w / r4.w;
            r13.xyz = r7.xyw * r4.www + r9.xyz;
            break;
            case 4 :            r7.xyw = r10.xyz + -r2.xyz;
            r4.w = dot(r7.xyw, r7.xyw);
            r5.w = sqrt(r4.w);
            r6.y = r6.y * r6.y;
            r4.w = r6.y / r4.w;
            r4.w = min(1, r4.w);
            r6.y = saturate(r5.w * r12.y + r12.z);
            r5.w = saturate(r5.w * r12.w + r6.x);
            r6.x = r6.y * r6.y;
            r6.y = r6.y * -2 + 3;
            r6.x = r6.x * r6.y;
            r4.w = r6.x * r4.w;
            r6.x = r5.w * r5.w;
            r5.w = r5.w * -2 + 3;
            r5.w = r6.x * r5.w;
            r4.w = r5.w * r4.w;
            r5.w = cmp(0 >= r4.w);
            if (r5.w != 0) {
              r13.xyz = r9.xyz;
              break;
            }
            r4.w = 0.25 * r4.w;
            r11.w = r10.w;
            r6.xyz = r11.wyz * r4.www;
            r4.w = dot(r6.xyz, float3(0.298999995,0.587000012,0.114));
            r4.w = max(9.99999997e-07, r4.w);
            r5.w = min(relHDRExposure.x, r4.w);
            r4.w = r5.w / r4.w;
            r13.xyz = r6.xyz * r4.www + r9.xyz;
            break;
            default :
            r13.xyz = r9.xyz;
            break;
          }
          r9.xyz = r13.xyz;
        }
      }
      r8.xyz = r9.xyz;
      r1.w = (int)r1.w + 32;
    }
    r1.x = numRefProbes + -numOverrideProbes;
    r1.y = (int)r1.x & -32;
    r4.xy = float2(0,0);
    r6.w = 0;
    r7.yz = float2(0,1);
    r9.x = 1;
    r10.xyz = float3(0,0,0);
    r1.z = 0;
    r1.w = r1.y;
    while (true) {
      r2.w = cmp((uint)r1.w >= numRefProbes);
      if (r2.w != 0) break;
      r4.z = (uint)r1.w >> 5;
      r6.xyz = (int3)r4.xyz + (int3)r5.xyz;
      r2.w = visibleProbes.Load(r6.xyzw).x;
      r6.xyz = r10.xyz;
      r4.z = r1.z;
      r4.w = r2.w;
      while (true) {
        if (r4.w == 0) break;
        r5.w = firstbitlow((uint)r4.w);
        r7.w = 1 << (int)r5.w;
        r8.w = (int)r4.w & (int)r7.w;
        if (r8.w != 0) {
          r7.w = (int)r4.w ^ (int)r7.w;
          r5.w = (int)r1.w + (int)r5.w;
          r8.w = cmp((uint)r5.w >= numRefProbes);
          if (r8.w != 0) {
            break;
          }
          r8.w = cmp((uint)r5.w < (uint)r1.x);
          if (r8.w != 0) {
            r4.w = r7.w;
            continue;
          }
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r11.xyzw, r5.w, l(0), t15.wxyz
        r11.x = samp0[]..swiz;
        r11.y = samp0[]..swiz;
        r11.z = samp0[]..swiz;
        r11.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r12.xyzw, r5.w, l(88), t15.zxyw
        r12.x = samp0[]..swiz;
        r12.y = samp0[]..swiz;
        r12.z = samp0[]..swiz;
        r12.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r8.w, r5.w, l(120), t15.xxxx
        r8.w = samp0[]..swiz;
          r13.xyz = -r11.yzw + r2.xyz;
          r9.z = r8.w ? 0.000000 : 0;
          if (6 == 0) r8.w = 0; else if (6+25 < 32) {           r8.w = (uint)r8.w << (32-(6 + 25)); r8.w = (uint)r8.w >> (32-6);          } else r8.w = (uint)r8.w >> 25;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r14.xyzw, r9.z, l(0), t16.xyzw
        r14.x = samp0[]..swiz;
        r14.y = samp0[]..swiz;
        r14.z = samp0[]..swiz;
        r14.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r15.xyzw, r9.z, l(16), t16.xyzw
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r16.xyzw, r9.z, l(32), t16.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r17.xyzw, r9.z, l(48), t16.xyzw
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r18.xyzw, r9.z, l(64), t16.xyzw
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
        r18.z = samp0[]..swiz;
        r18.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r19.xyzw, r9.z, l(80), t16.xyzw
        r19.x = samp0[]..swiz;
        r19.y = samp0[]..swiz;
        r19.z = samp0[]..swiz;
        r19.w = samp0[]..swiz;
          r9.w = dot(r14.xyz, r13.xyz);
          r9.w = saturate(r9.w + r14.w);
          r10.w = dot(r15.xyz, r13.xyz);
          r10.w = saturate(r10.w + r15.w);
          r9.w = r10.w * r9.w;
          r10.w = dot(r16.xyz, r13.xyz);
          r10.w = saturate(r10.w + r16.w);
          r9.w = r10.w * r9.w;
          r10.w = dot(r17.xyz, r13.xyz);
          r10.w = saturate(r10.w + r17.w);
          r9.w = r10.w * r9.w;
          r10.w = dot(r18.xyz, r13.xyz);
          r10.w = saturate(r10.w + r18.w);
          r9.w = r10.w * r9.w;
          r10.w = dot(r19.xyz, r13.xyz);
          r10.w = saturate(r10.w + r19.w);
          r7.x = r10.w * r9.w;
          r9.w = (int)r12.x & 1;
          r14.xy = r9.ww ? r7.xy : r7.zx;
          r7.x = r12.x;
          r15.xy = r14.xy;
          r9.w = 1;
          while (true) {
            r10.w = cmp((int)r9.w >= (int)r8.w);
            if (r10.w != 0) break;
            r10.w = (int)r9.w + (int)r9.z;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r16.xyzw, r10.w, l(0), t16.xyzw
          r16.x = samp0[]..swiz;
          r16.y = samp0[]..swiz;
          r16.z = samp0[]..swiz;
          r16.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r17.xyzw, r10.w, l(16), t16.xyzw
          r17.x = samp0[]..swiz;
          r17.y = samp0[]..swiz;
          r17.z = samp0[]..swiz;
          r17.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r18.xyzw, r10.w, l(32), t16.xyzw
          r18.x = samp0[]..swiz;
          r18.y = samp0[]..swiz;
          r18.z = samp0[]..swiz;
          r18.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r19.xyzw, r10.w, l(48), t16.xyzw
          r19.x = samp0[]..swiz;
          r19.y = samp0[]..swiz;
          r19.z = samp0[]..swiz;
          r19.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r20.xyzw, r10.w, l(64), t16.xyzw
          r20.x = samp0[]..swiz;
          r20.y = samp0[]..swiz;
          r20.z = samp0[]..swiz;
          r20.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r21.xyzw, r10.w, l(80), t16.xyzw
          r21.x = samp0[]..swiz;
          r21.y = samp0[]..swiz;
          r21.z = samp0[]..swiz;
          r21.w = samp0[]..swiz;
            r10.w = dot(r16.xyz, r13.xyz);
            r10.w = saturate(r10.w + r16.w);
            r10.w = r15.x * r10.w;
            r11.w = dot(r17.xyz, r13.xyz);
            r11.w = saturate(r11.w + r17.w);
            r10.w = r11.w * r10.w;
            r11.w = dot(r18.xyz, r13.xyz);
            r11.w = saturate(r11.w + r18.w);
            r10.w = r11.w * r10.w;
            r11.w = dot(r19.xyz, r13.xyz);
            r11.w = saturate(r11.w + r19.w);
            r10.w = r11.w * r10.w;
            r11.w = dot(r20.xyz, r13.xyz);
            r11.w = saturate(r11.w + r20.w);
            r10.w = r11.w * r10.w;
            r11.w = dot(r21.xyz, r13.xyz);
            r11.w = saturate(r11.w + r21.w);
            r15.x = r11.w * r10.w;
            r13.w = (uint)r7.x >> 2;
            if (1 == 0) r14.z = 0; else if (1+2 < 32) {             r14.z = (uint)r7.x << (32-(1 + 2)); r14.z = (uint)r14.z >> (32-1);            } else r14.z = (uint)r7.x >> 2;
            r14.w = (int)r13.w & 2;
            r15.z = max(r15.y, r15.x);
            r10.w = -r10.w * r11.w + 1;
            r10.w = r15.y * r10.w;
            r9.y = r14.w ? r10.w : r15.z;
            r15.xy = r14.zz ? r15.xy : r9.xy;
            r9.w = (int)r9.w + 1;
            r7.x = r13.w;
          }
          r15.y = saturate(r15.y);
          r7.x = r15.y * r12.w;
          r8.w = cmp(0 < r7.x);
          if (r8.w != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r14.xyzw, r5.w, l(16), t15.xyzw
          r14.x = samp0[]..swiz;
          r14.y = samp0[]..swiz;
          r14.z = samp0[]..swiz;
          r14.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r16.xyzw, r5.w, l(32), t15.yxwz
          r16.x = samp0[]..swiz;
          r16.y = samp0[]..swiz;
          r16.z = samp0[]..swiz;
          r16.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r9.yzw, r5.w, l(48), t15.xxyz
          r9.y = samp0[]..swiz;
          r9.z = samp0[]..swiz;
          r9.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r17.xyzw, r5.w, l(72), t15.xyzw
          r17.x = samp0[]..swiz;
          r17.y = samp0[]..swiz;
          r17.z = samp0[]..swiz;
          r17.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r18.xyzw, r5.w, l(104), t15.xyzw
          r18.x = samp0[]..swiz;
          r18.y = samp0[]..swiz;
          r18.z = samp0[]..swiz;
          r18.w = samp0[]..swiz;
            r11.y = r14.z;
            r11.z = r16.x;
            r11.x = dot(r13.xyz, r11.xyz);
            r19.xy = r14.xw;
            r19.z = r16.w;
            r11.y = dot(r13.xyz, r19.xyz);
            r16.x = r14.y;
            r11.z = dot(r13.xyz, r16.xyz);
            r9.yzw = saturate(r11.xyz * r9.yzw + float3(0.5,0.5,0.5));
            r12.x = r17.w;
            r9.yzw = r9.yzw * r17.xyz + r12.xyz;
            r11.xyz = float3(0,0,0.5) + r9.yzw;
            r12.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r9.yzw, 0).xyz;
            r13.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r9.yzw, 0).xyz;
            r12.xyz = r13.xyz + r12.xyz;
            r9.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r9.yzw, 0).xyz;
            r9.yzw = r12.xyz + r9.yzw;
            r12.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r11.xyz, 0).xyz;
            r9.yzw = r12.xyz + r9.yzw;
            r12.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r11.xyz, 0).xyz;
            r9.yzw = r12.xyz + r9.yzw;
            r11.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r11.xyz, 0).xyz;
            r9.yzw = r11.xyz + r9.yzw;
            r5.w = r18.w * r7.x;
            r5.w = 0.166666672 * r5.w;
            r9.yzw = r9.yzw * r5.www;
            r6.xyz = r9.yzw * r18.xyz + r6.xyz;
            r4.z = r15.y * r12.w + r4.z;
          }
          r4.w = r7.w;
        }
      }
      r10.xyz = r6.xyz;
      r1.z = r4.z;
      r1.w = (int)r1.w + 32;
    }
    r1.y = cmp(r1.z < 1);
    if (r1.y != 0) {
      r4.xy = float2(0,0);
      r6.w = 0;
      r7.yz = float2(0,1);
      r9.x = 1;
      r11.xyz = r10.xyz;
      r1.y = r1.z;
      r1.w = 0;
      while (true) {
        r2.w = cmp((uint)r1.w >= (uint)r1.x);
        if (r2.w != 0) break;
        r4.z = (uint)r1.w >> 5;
        r6.xyz = (int3)r4.xyz + (int3)r5.xyz;
        r2.w = visibleProbes.Load(r6.xyzw).x;
        r6.xyz = r11.xyz;
        r4.z = r1.y;
        r4.w = r2.w;
        while (true) {
          if (r4.w == 0) break;
          r5.w = firstbitlow((uint)r4.w);
          r7.w = 1 << (int)r5.w;
          r8.w = (int)r4.w & (int)r7.w;
          if (r8.w != 0) {
            r4.w = (int)r4.w ^ (int)r7.w;
            r5.w = (int)r1.w + (int)r5.w;
            r7.w = cmp((uint)r5.w >= (uint)r1.x);
            if (r7.w != 0) {
              break;
            }
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r12.xyzw, r5.w, l(0), t15.wxyz
          r12.x = samp0[]..swiz;
          r12.y = samp0[]..swiz;
          r12.z = samp0[]..swiz;
          r12.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r13.xyzw, r5.w, l(88), t15.zxyw
          r13.x = samp0[]..swiz;
          r13.y = samp0[]..swiz;
          r13.z = samp0[]..swiz;
          r13.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r7.w, r5.w, l(120), t15.xxxx
          r7.w = samp0[]..swiz;
            r14.xyz = -r12.yzw + r2.xyz;
            r8.w = r7.w ? 0.000000 : 0;
            if (6 == 0) r7.w = 0; else if (6+25 < 32) {             r7.w = (uint)r7.w << (32-(6 + 25)); r7.w = (uint)r7.w >> (32-6);            } else r7.w = (uint)r7.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r15.xyzw, r8.w, l(0), t16.xyzw
          r15.x = samp0[]..swiz;
          r15.y = samp0[]..swiz;
          r15.z = samp0[]..swiz;
          r15.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r16.xyzw, r8.w, l(16), t16.xyzw
          r16.x = samp0[]..swiz;
          r16.y = samp0[]..swiz;
          r16.z = samp0[]..swiz;
          r16.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r17.xyzw, r8.w, l(32), t16.xyzw
          r17.x = samp0[]..swiz;
          r17.y = samp0[]..swiz;
          r17.z = samp0[]..swiz;
          r17.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r18.xyzw, r8.w, l(48), t16.xyzw
          r18.x = samp0[]..swiz;
          r18.y = samp0[]..swiz;
          r18.z = samp0[]..swiz;
          r18.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r19.xyzw, r8.w, l(64), t16.xyzw
          r19.x = samp0[]..swiz;
          r19.y = samp0[]..swiz;
          r19.z = samp0[]..swiz;
          r19.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r20.xyzw, r8.w, l(80), t16.xyzw
          r20.x = samp0[]..swiz;
          r20.y = samp0[]..swiz;
          r20.z = samp0[]..swiz;
          r20.w = samp0[]..swiz;
            r9.z = dot(r15.xyz, r14.xyz);
            r9.z = saturate(r9.z + r15.w);
            r9.w = dot(r16.xyz, r14.xyz);
            r9.w = saturate(r9.w + r16.w);
            r9.z = r9.z * r9.w;
            r9.w = dot(r17.xyz, r14.xyz);
            r9.w = saturate(r9.w + r17.w);
            r9.z = r9.z * r9.w;
            r9.w = dot(r18.xyz, r14.xyz);
            r9.w = saturate(r9.w + r18.w);
            r9.z = r9.z * r9.w;
            r9.w = dot(r19.xyz, r14.xyz);
            r9.w = saturate(r9.w + r19.w);
            r9.z = r9.z * r9.w;
            r9.w = dot(r20.xyz, r14.xyz);
            r9.w = saturate(r9.w + r20.w);
            r7.x = r9.z * r9.w;
            r9.z = (int)r13.x & 1;
            r9.zw = r9.zz ? r7.xy : r7.zx;
            r7.x = r13.x;
            r15.xy = r9.zw;
            r10.w = 1;
            while (true) {
              r11.w = cmp((int)r10.w >= (int)r7.w);
              if (r11.w != 0) break;
              r11.w = (int)r8.w + (int)r10.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r16.xyzw, r11.w, l(0), t16.xyzw
            r16.x = samp0[]..swiz;
            r16.y = samp0[]..swiz;
            r16.z = samp0[]..swiz;
            r16.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r17.xyzw, r11.w, l(16), t16.xyzw
            r17.x = samp0[]..swiz;
            r17.y = samp0[]..swiz;
            r17.z = samp0[]..swiz;
            r17.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r18.xyzw, r11.w, l(32), t16.xyzw
            r18.x = samp0[]..swiz;
            r18.y = samp0[]..swiz;
            r18.z = samp0[]..swiz;
            r18.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r19.xyzw, r11.w, l(48), t16.xyzw
            r19.x = samp0[]..swiz;
            r19.y = samp0[]..swiz;
            r19.z = samp0[]..swiz;
            r19.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r20.xyzw, r11.w, l(64), t16.xyzw
            r20.x = samp0[]..swiz;
            r20.y = samp0[]..swiz;
            r20.z = samp0[]..swiz;
            r20.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r21.xyzw, r11.w, l(80), t16.xyzw
            r21.x = samp0[]..swiz;
            r21.y = samp0[]..swiz;
            r21.z = samp0[]..swiz;
            r21.w = samp0[]..swiz;
              r11.w = dot(r16.xyz, r14.xyz);
              r11.w = saturate(r11.w + r16.w);
              r11.w = r15.x * r11.w;
              r12.w = dot(r17.xyz, r14.xyz);
              r12.w = saturate(r12.w + r17.w);
              r11.w = r12.w * r11.w;
              r12.w = dot(r18.xyz, r14.xyz);
              r12.w = saturate(r12.w + r18.w);
              r11.w = r12.w * r11.w;
              r12.w = dot(r19.xyz, r14.xyz);
              r12.w = saturate(r12.w + r19.w);
              r11.w = r12.w * r11.w;
              r12.w = dot(r20.xyz, r14.xyz);
              r12.w = saturate(r12.w + r20.w);
              r11.w = r12.w * r11.w;
              r12.w = dot(r21.xyz, r14.xyz);
              r12.w = saturate(r12.w + r21.w);
              r15.x = r12.w * r11.w;
              r14.w = (uint)r7.x >> 2;
              if (1 == 0) r15.z = 0; else if (1+2 < 32) {               r15.z = (uint)r7.x << (32-(1 + 2)); r15.z = (uint)r15.z >> (32-1);              } else r15.z = (uint)r7.x >> 2;
              r15.w = (int)r14.w & 2;
              r16.x = max(r15.y, r15.x);
              r11.w = -r11.w * r12.w + 1;
              r11.w = r15.y * r11.w;
              r9.y = r15.w ? r11.w : r16.x;
              r15.xy = r15.zz ? r15.xy : r9.xy;
              r10.w = (int)r10.w + 1;
              r7.x = r14.w;
            }
            r7.x = saturate(r15.y + -r1.z);
            r7.w = r7.x * r13.w;
            r8.w = cmp(0 < r7.w);
            if (r8.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r16.xyzw, r5.w, l(16), t15.xyzw
            r16.x = samp0[]..swiz;
            r16.y = samp0[]..swiz;
            r16.z = samp0[]..swiz;
            r16.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r17.xyzw, r5.w, l(32), t15.yxwz
            r17.x = samp0[]..swiz;
            r17.y = samp0[]..swiz;
            r17.z = samp0[]..swiz;
            r17.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r9.yzw, r5.w, l(48), t15.xxyz
            r9.y = samp0[]..swiz;
            r9.z = samp0[]..swiz;
            r9.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r18.xyzw, r5.w, l(72), t15.xyzw
            r18.x = samp0[]..swiz;
            r18.y = samp0[]..swiz;
            r18.z = samp0[]..swiz;
            r18.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r19.xyzw, r5.w, l(104), t15.xyzw
            r19.x = samp0[]..swiz;
            r19.y = samp0[]..swiz;
            r19.z = samp0[]..swiz;
            r19.w = samp0[]..swiz;
              r12.y = r16.z;
              r12.z = r17.x;
              r12.x = dot(r14.xyz, r12.xyz);
              r20.xy = r16.xw;
              r20.z = r17.w;
              r12.y = dot(r14.xyz, r20.xyz);
              r17.x = r16.y;
              r12.z = dot(r14.xyz, r17.xyz);
              r9.yzw = saturate(r12.xyz * r9.yzw + float3(0.5,0.5,0.5));
              r13.x = r18.w;
              r9.yzw = r9.yzw * r18.xyz + r13.xyz;
              r12.xyz = float3(0,0,0.5) + r9.yzw;
              r13.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r9.yzw, 0).xyz;
              r14.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r9.yzw, 0).xyz;
              r13.xyz = r14.xyz + r13.xyz;
              r9.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r9.yzw, 0).xyz;
              r9.yzw = r13.xyz + r9.yzw;
              r13.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r12.xyz, 0).xyz;
              r9.yzw = r13.xyz + r9.yzw;
              r13.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r12.xyz, 0).xyz;
              r9.yzw = r13.xyz + r9.yzw;
              r12.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r12.xyz, 0).xyz;
              r9.yzw = r12.xyz + r9.yzw;
              r5.w = r19.w * r7.w;
              r5.w = 0.166666672 * r5.w;
              r9.yzw = r9.yzw * r5.www;
              r6.xyz = r9.yzw * r19.xyz + r6.xyz;
              r4.z = r7.x * r13.w + r4.z;
            }
          }
        }
        r11.xyz = r6.xyz;
        r1.y = r4.z;
        r1.w = (int)r1.w + 32;
      }
      r10.xyz = r11.xyz;
      r1.z = r1.y;
    }
    r1.x = max(9.99999975e-05, r1.z);
    r1.x = rcp(r1.x);
    r1.z = saturate(r1.z);
    r2.xyz = r10.xyz * r1.xxx;
    r1.y = cmp(0 != r1.z);
    r4.xyz = r10.xyz * r1.xxx + r8.xyz;
    r1.x = -r1.z * 1.01010096 + 1;
    r5.xyz = sunConstants.avgGlobalProbeColor.xyz * sunConstants.globalProbeExposure;
    r1.xzw = r5.xyz * r1.xxx + r2.xyz;
    r1.xzw = r8.xyz + r1.xzw;
    r1.xyz = r1.yyy ? r4.xyz : r1.xzw;
    r0.xyz = r1.xyz * r0.xyz;
  }
  o0.xyzw = r3.xyzw;
  o1.xyzw = r0.xyzw;
  return;
}