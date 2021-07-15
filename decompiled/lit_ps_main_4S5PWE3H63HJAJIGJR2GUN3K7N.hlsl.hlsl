// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:37:37 2021

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
  float3 colorTint : packoffset(c10);
  float baseNormalHeight : packoffset(c10.w);
  float2 glossRange : packoffset(c11);
  bool useUVOffsets : packoffset(c11.z);
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
SamplerState colorSampler_s : register(s1);
SamplerState samplerLinear_s : register(s2);
SamplerState normalSampler_s : register(s3);
SamplerState samplerLinearClamp_s : register(s4);
SamplerComparisonState ShadowSamplerComparisonState_s : register(s13);
Texture2D<float4> colorMap : register(t0);
Texture2D<float2> gEnvBRDFGeneric : register(t5);
TextureCubeArray<float3> gReflectionProbeArray : register(t8);
Texture2DArray<float> gSpotShadowmapArray : register(t9);
StructuredBuffer<lightConstants> lightConstants : register(t12);
Texture2DArray<float> gSunShadowmapArray : register(t13);
Texture3D<float3> gProbeXArray : register(t17);
Texture3D<float3> gProbeYArray : register(t18);
Texture3D<float3> gProbeZArray : register(t19);
Texture2DArray<float4> gCookieArray : register(t20);
Texture2D<float4> tintMask : register(t21);
Texture2D<float4> normalMap : register(t22);
StructuredBuffer<gSunShadowTree> gSunShadowTree : register(t23);
Texture2DArray<float> gTransShadowmapArray : register(t31);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float v1 : COLOR1,
  float2 w1 : TEXCOORD0,
  float3 v2 : UVOFFSETS0,
  float4 v3 : TEXCOORD1,
  float4 v4 : TEXCOORD2,
  float3 v5 : TEXCOORD3,
  float3 v6 : OFFPOSITION0,
  uint v7 : SV_IsFrontFace0,
  out float4 o0 : SV_TARGET0)
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
// unknown dcl_: dcl_resource_structured t12, 240
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t23, 4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (uint,uint,uint,uint) u6
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2darray (uint,uint,uint,uint) u7
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = colorMap.Sample(colorSampler_s, w1.xy).xyzw;
  r1.w = v1.x * r0.w;
  r0.w = cmp(r1.w == 0.000000);
  if (r0.w != 0) {
    o0.xyzw = float4(0,0,0,0);
    return;
  }
  r0.w = tintMask.Sample(colorSampler_s, w1.xy).x;
  r2.xyz = normalMap.Sample(normalSampler_s, w1.xy).xyz;
  r3.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r3.xyz = r0.www * r3.xyz + float3(1,1,1);
  r0.xyz = r3.xyz * r0.xyz;
  r0.w = saturate(0.0588235296 * glossRange.y);
  r2.xyz = float3(-0.5,-0.5,-0) + r2.xyz;
  r2.xyz = baseNormalHeight * r2.xyz + float3(0.5,0.5,0);
  r2.xy = r2.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.w = dot(r2.xy, r2.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r2.z = r2.z * r2.z;
  r2.z = 0.333333343 * r2.z;
  r2.z = min(1, r2.z);
  r3.x = v7.x ? 1 : -1;
  r3.y = dot(v3.xyz, v3.xyz);
  r3.y = rsqrt(r3.y);
  r3.yzw = v3.xyz * r3.yyy;
  r3.yzw = r3.yzw * r3.xxx;
  r4.x = dot(v4.xyz, v4.xyz);
  r4.x = rsqrt(r4.x);
  r4.xyz = v4.xyz * r4.xxx;
  r4.xyz = r4.xyz * r3.xxx;
  r4.w = dot(v5.xyz, v5.xyz);
  r4.w = rsqrt(r4.w);
  r5.xyz = v5.xyz * r4.www;
  r5.xyz = r5.xyz * r3.xxx;
  r0.w = -17 * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r2.z + r0.w;
  r0.w = log2(r0.w);
  r0.w = -0.0588235296 * r0.w;
  r6.y = max(0, r0.w);
  r5.xyz = r5.xyz * r2.yyy;
  r2.xyz = r4.xyz * r2.xxx + r5.xyz;
  r2.xyz = r3.yzw * r2.www + r2.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r3.xy = (uint2)v0.xy;
  r0.w = dot(-v6.xyz, -v6.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = -v6.xyz * r0.www;
  r3.xy = (uint2)r3.xy;
  r3.x = dot(r3.xy, float2(0.0671105608,0.00583714992));
  r3.x = frac(r3.x);
  r3.x = 52.9829178 * r3.x;
  r3.x = frac(r3.x);
  r3.x = r3.x * 6.28318548 + gameTick.w;
  sincos(r3.x, r3.x, r5.x);
  r6.x = saturate(dot(r2.xyz, r4.xyz));
  r3.y = dot(-r4.xyz, r2.xyz);
  r3.y = r3.y + r3.y;
  r7.xyz = r2.xyz * -r3.yyy + -r4.xyz;
  r3.y = 1 + -r6.y;
  r3.y = 5 * r3.y;
  r5.yzw = -globalProbeConstants.data[0].xyz + v6.xyz;
  r8.x = globalProbeConstants.data[0].w * r5.y;
  r8.yz = globalProbeConstants.data[1].xy * r5.zw;
  r5.yzw = saturate(float3(0.5,0.5,0.5) + r8.xyz);
  r8.xy = globalProbeConstants.data[1].zw * r5.yz;
  r8.z = globalProbeConstants.data[2].x * r5.w;
  r5.yzw = globalProbeConstants.data[2].yzw + r8.xyz;
  r8.xyz = cmp(float3(0,0,0) < r2.xyz);
  r8.xyz = r8.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
  r8.w = 0;
  r9.xyz = r8.wwx + r5.yzw;
  r9.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r9.xyz, 0).xyz;
  r10.xyz = r2.xyz * r2.xyz;
  r10.xyz = sunConstants.globalProbeExposure * r10.xyz;
  r11.xyz = r8.wwy + r5.yzw;
  r11.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r11.xyz, 0).xyz;
  r11.xyz = r11.xyz * r10.yyy;
  r9.xyz = r9.xyz * r10.xxx + r11.xyz;
  r5.yzw = r8.wwz + r5.yzw;
  r5.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r5.yzw, 0).xyz;
  r5.yzw = r5.yzw * r10.zzz + r9.xyz;
  r2.w = 0;
  r8.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r2.xyzw, 6).xyz;
  r5.yzw = r8.xyz * r5.yzw;
  r2.w = dot(r5.yzw, float3(0.212599993,0.715200007,0.0722000003));
  r7.w = 0;
  r3.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r7.xyzw, r3.y).xyz;
  r4.w = sunConstants.globalProbeExposure + -r2.w;
  r2.w = r6.y * r4.w + r2.w;
  r3.yzw = r3.yzw * r2.www;
  r6.zw = r6.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r6.zw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r6.zw, 0).xy;
  r7.xyz = r6.zzz * r3.yzw;
  r3.yzw = r6.www * r3.yzw;
  r2.w = dot(r2.xyz, sunConstants.wldDir.xyz);
  r4.w = saturate(r2.w);
  r6.z = cmp(0 >= r4.w);
  if (r6.z != 0) {
    r6.w = 0;
  }
  if (r6.z == 0) {
    r8.xyz = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v6.yyy;
    r8.xyz = v6.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r8.xyz;
    r8.xyz = v6.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r8.xyz;
    r8.xyz = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r8.xyz;
    r6.z = -sunConstants.splitDepthOffset + r8.z;
    r6.z = -r6.z * 6.10351563e-05 + 1;
    r7.w = saturate(r6.z);
    r7.w = cmp(r6.z == r7.w);
    if (r7.w != 0) {
      r7.w = 0;
      r8.w = 0;
      while (true) {
        r9.x = cmp(r7.w >= 3);
        if (r9.x != 0) break;
        r9.x = (uint)r7.w;
        r9.yz = -sunConstants.splitPinTransform[r9.x].xy + r8.xy;
        r9.y = max(abs(r9.y), abs(r9.z));
        r8.w = sunConstants.splitPinTransform[r9.x].z * r9.y;
        r9.x = cmp(r8.w < 1);
        if (r9.x != 0) {
          break;
        }
        r7.w = 1 + r7.w;
        r8.w = 0;
      }
    } else {
      r7.w = 3;
      r8.w = 0;
    }
    r9.x = cmp(r7.w >= 3);
    if (r9.x != 0) {
      r9.yzw = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r10.xz = rcp(r9.yy);
      r10.y = -r10.z;
      r9.yzw = r8.xyx * r10.xyz + r9.zwz;
      r10.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r9.yzw = max(float3(0,0,0), r9.yzw);
      r9.yzw = min(r9.yzw, r10.xyz);
      r10.xy = sunConstants.sstLightingConstants.coordScale * r9.wz;
      r10.xy = floor(r10.xy);
      r10.y = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r10.y;
      r10.x = r10.y * sunConstants.sstLightingConstants.coordScale + r10.x;
      r10.x = (uint)r10.x;
      r10.x = (int)r10.x + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.y, r10.x, l(0), t23.xxxx
    r10.y = samp0[]..swiz;
      r10.z = (int)r10.y & 0x40000000;
      r10.w = (uint)r10.y << 2;
      if (r10.z == 0) {
        r10.z = (int)r10.y & 0x01ffffff;
        r11.x = (int)r10.z + (int)r10.x;
        r10.x = (uint)r10.y >> 25;
        r10.x = (uint)r10.x;
        r9.yzw = r10.xxx * r9.yzw;
        r9.yzw = frac(r9.yzw);
        r9.yzw = float3(128,128,128) * r9.yzw;
        r9.yzw = (uint3)r9.yzw;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.z, r11.x, l(0), t23.xxxx
      r11.z = samp0[]..swiz;
        r10.xy = (uint2)r9.wz >> int2(6,6);
        r10.z = (int)r11.z & 0xc0000000;
        r11.w = (int)r11.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.w, r11.w, l(0), t23.xxxx
      r11.w = samp0[]..swiz;
        r10.y = r10.y ? r11.z : r11.w;
        r11.w = (uint)r10.y >> 13;
        r10.x = r10.x ? r11.w : r10.y;
        r10.x = (int)r10.x & 8191;
        r12.x = (int)r10.x + (int)r11.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.z, r12.x, l(0), t23.xxxx
      r12.z = samp0[]..swiz;
        r11.y = 0;
        r12.y = 1;
        r12.xyz = r10.zzz ? r11.xyz : r12.xyz;
        r13.yz = r10.zz ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r10.xy = (uint2)r9.wz >> (uint2)r13.yy;
        r10.xy = (int2)r10.xy & int2(1,1);
        r11.w = (int)r12.z & 0xc0000000;
        r12.w = (int)r12.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.w, r12.w, l(0), t23.xxxx
      r12.w = samp0[]..swiz;
        r10.y = r10.y ? r12.z : r12.w;
        r12.w = (uint)r10.y >> 13;
        r10.x = r10.x ? r12.w : r10.y;
        r10.x = (int)r10.x & 8191;
        r13.x = (int)r10.x + (int)r12.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.w, r13.x, l(0), t23.xxxx
      r13.w = samp0[]..swiz;
        r12.xyz = r11.www ? r12.xyz : r13.xzw;
        r10.xyz = r10.zzz ? r11.xyz : r12.xyz;
        r11.x = (int)r10.z & 0xc0000000;
        if (r11.x == 0) {
          r11.x = (int)-r10.y + 6;
          r11.xy = (uint2)r9.wz >> (uint2)r11.xx;
          r11.z = (int)r10.z | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r11.y = (((uint)r11.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r11.x = (((uint)r11.x << 0) & bitmask.x) | ((uint)r11.y & ~bitmask.x);
          r11.x = (int)r11.x * 10;
          r11.x = (uint)r11.z >> (uint)r11.x;
          r11.x = (int)r11.x & 1023;
          r11.x = (int)r10.x + (int)r11.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.w, r11.x, l(0), t23.xxxx
        r11.w = samp0[]..swiz;
          r11.yz = (int2)r10.yy + int2(1,2);
          r10.y = (int)-r11.y + 6;
          r12.xy = (uint2)r9.wz >> (uint2)r10.yy;
          r10.y = (int)r11.w & 0xc0000000;
          r12.z = (int)r11.w | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r12.y = (((uint)r12.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r12.x = (((uint)r12.x << 0) & bitmask.x) | ((uint)r12.y & ~bitmask.x);
          r12.x = (int)r12.x * 10;
          r12.x = (uint)r12.z >> (uint)r12.x;
          r12.x = (int)r12.x & 1023;
          r12.x = (int)r11.x + (int)r12.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.z, r12.x, l(0), t23.xxxx
        r12.z = samp0[]..swiz;
          r12.y = r11.z;
          r12.xyz = r10.yyy ? r11.xyw : r12.xyz;
          r11.y = (int)-r12.y + 6;
          r11.yz = (uint2)r9.wz >> (uint2)r11.yy;
          r12.y = (int)r12.z & 0xc0000000;
          r12.w = (int)r12.z | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r11.z = (((uint)r11.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r11.y = (((uint)r11.y << 0) & bitmask.y) | ((uint)r11.z & ~bitmask.y);
          r11.y = (int)r11.y * 10;
          r11.y = (uint)r12.w >> (uint)r11.y;
          r11.y = (int)r11.y & 1023;
          r13.x = (int)r11.y + (int)r12.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.y, r13.x, l(0), t23.xxxx
        r13.y = samp0[]..swiz;
          r11.yz = r12.yy ? r12.xz : r13.xy;
          r10.xz = r10.yy ? r11.xw : r11.yz;
        }
        r10.y = (int)r10.z & 0xc0000000;
        if (r10.y == 0) {
          if (14 == 0) r11.x = 0; else if (14+15 < 32) {           r11.x = (uint)r10.z << (32-(14 + 15)); r11.x = (uint)r11.x >> (32-14);          } else r11.x = (uint)r10.z >> 15;
          r11.x = (uint)r11.x;
          r11.x = sunConstants.sstLightingConstants.constants.spanInInches * r11.x;
          r11.yz = (int2)r10.zz & int2(32767,536870912);
          r11.y = (uint)r11.y;
          r11.y = sunConstants.sstLightingConstants.constants.spanInInches * r11.y;
          r11.xy = float2(6.10388815e-05,3.05185094e-05) * r11.xy;
          r11.w = (int)r9.z & 3;
          r11.w = (int)r10.x + (int)r11.w;
          r11.w = (int)r11.w + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.w, r11.w, l(0), t23.xxxx
        r11.w = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r12.x = (((uint)r9.y << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r12.y = (((uint)r9.z << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r12.z = (((uint)r9.w << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r9.y = (uint)r11.w >> (uint)r12.x;
          r9.y = (int)r9.y & 255;
          r9.y = (uint)r9.y;
          r9.y = r9.y * r11.y;
          r9.y = r9.y * 0.00392156886 + r11.x;
          r9.z = (int)r12.y + 1;
          if (1 == 0) r9.w = 0; else if (1+1 < 32) {           r9.w = (uint)r9.w << (32-(1 + 1)); r9.w = (uint)r9.w >> (32-1);          } else r9.w = (uint)r9.w >> 1;
          r9.z = (int)r9.w + (int)r9.z;
          r9.z = (int)r9.z + (int)r10.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r9.z, r9.z, l(0), t23.xxxx
        r9.z = samp0[]..swiz;
          r9.z = (uint)r9.z >> (uint)r12.z;
          r9.z = (int)r9.z & 0x0000ffff;
          r9.z = (uint)r9.z;
          r9.z = r9.z * r11.y;
          r9.z = r9.z * 1.52590219e-05 + r11.x;
          r10.w = r11.z ? r9.y : r9.z;
        } else {
          r9.y = (int)r10.z & 0x80000000;
          r9.z = (int)r10.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r9.z, r9.z, l(0), t23.xxxx
        r9.z = samp0[]..swiz;
          r9.y = r9.y ? r9.z : 0;
          r9.z = (uint)r10.z << 2;
          r9.w = (uint)r9.y >> 16;
          r9.y = (int)r9.y & 0x0000ffff;
          r9.yw = f16tof32(r9.yw);
          r9.z = r8.x * r9.w + r9.z;
          r9.y = r8.y * r9.y + r9.z;
          r10.w = r10.y ? r9.y : r10.w;
        }
      }
      r8.z = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r8.z;
      r8.z = cmp(r10.w < r8.z);
      r6.w = r8.z ? 0 : 1;
    }
    if (r9.x == 0) {
      if (enableDitheredShadow == 0) {
        r8.z = (uint)r7.w;
        r9.xy = -sunConstants.splitPinTransform[r8.z].xy + r8.xy;
        r9.xy = sunConstants.splitPinTransform[r8.z].zz * r9.xy;
        r9.xy = r9.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r8.z = (int16)sunConstants.splitArrayOffset;
        r9.z = r8.z + r7.w;
        r8.z = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r9.xyz, r6.z).x;
        r9.x = gTransShadowmapArray.SampleLevel(samp0_s, r9.xyz, 0).x;
        r8.z = r9.x + r8.z;
        r8.z = saturate(-1 + r8.z);
        r9.x = r8.z * r8.z;
        r6.w = r9.x * r8.z;
      }
      if (enableDitheredShadow != 0) {
        r9.x = -r3.x;
        r8.z = (uint)r7.w;
        r7.w = 1 + r7.w;
        r7.w = min(2, r7.w);
        r7.w = (uint)r7.w;
        r8.w = 1 + -r8.w;
        r8.w = 28 * r8.w;
        r8.w = (uint)r8.w;
        r10.xy = -sunConstants.splitPinTransform[r8.z].xy + r8.xy;
        r10.xy = sunConstants.splitPinTransform[r8.z].zz * r10.xy;
        r10.xy = r10.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r8.xy = -sunConstants.splitPinTransform[r7.w].xy + r8.xy;
        r8.xy = sunConstants.splitPinTransform[r7.w].zz * r8.xy;
        r8.xy = r8.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r9.y = r5.x;
        r9.z = r3.x;
        r9.w = 0;
        r10.z = 0;
        while (true) {
          r10.w = cmp((uint)r10.z >= 8);
          if (r10.w != 0) break;
          r10.w = cmp((uint)r8.w < (uint)r10.z);
          r11.xy = r10.ww ? r8.xy : r10.xy;
          r11.z = r10.w ? sunConstants.splitPinTransform[r7.w].w : sunConstants.splitPinTransform[r8.z].w;
          r10.w = r10.w ? r7.w : r8.z;
          r12.x = dot(icb[r10.z+0].yx, r9.xy);
          r12.y = dot(icb[r10.z+0].yx, r9.yz);
          r11.xy = r12.xy * r11.zz + r11.xy;
          r10.w = (int)r10.w + (int16)sunConstants.splitArrayOffset;
          r11.z = (uint)r10.w;
          r10.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r11.xyz, r6.z).x;
          r11.x = gTransShadowmapArray.SampleLevel(samp0_s, r11.xyz, 0).x;
          r10.w = r11.x + r10.w;
          r10.w = saturate(-1 + r10.w);
          r9.w = r10.w * 0.125 + r9.w;
          r10.z = (int)r10.z + 1;
        }
        r6.z = r9.w * r9.w;
        r6.w = r6.z * r9.w;
      }
    }
  }
  r6.z = cmp(0 < r4.w);
  if (r6.z != 0) {
    r6.z = cmp(0 < r6.w);
    if (r6.z != 0) {
      r6.z = cmp(isDepthHack != 0);
      r6.y = 17 * r6.y;
      r6.y = exp2(r6.y);
      r6.y = 2 + r6.y;
      r6.y = 2 / r6.y;
      r7.w = sqrt(r6.y);
      r8.x = sqrt(r7.w);
      r8.x = r8.x * 0.5 + 0.5;
      r8.x = r8.x * r8.x;
      r8.y = 0.5 * r8.x;
      r8.x = -r8.x * 0.5 + 1;
      r8.z = r6.x * r8.x + r8.y;
      r8.xy = r8.xy * r8.zz;
      r8.z = sunConstants.specScale * r6.y;
      r8.z = r8.z * r4.w;
      if (sunConstants.sunCookieIndex != 0) {
        r9.xyz = eyeOffset.xyz + v6.xyz;
        r9.w = 1;
        r8.w = dot(sunConstants.sunCookieTransform[0].xyzw, r9.xyzw);
        r9.x = dot(sunConstants.sunCookieTransform[1].xyzw, r9.xyzw);
        r10.x = frac(r8.w);
        r10.y = frac(r9.x);
        r8.w = -1 + (int14)sunConstants.sunCookieIndex;
        r10.z = (uint)r8.w;
        r9.xyz = gCookieArray.SampleLevel(samplerLinear_s, r10.xyz, 0).xyz;
        r9.xyz = float3(-1,-1,-1) + r9.xyz;
        r9.xyz = sunConstants.sunCookieIntensity * r9.xyz + float3(1,1,1);
        r9.xyz = sunConstants.color.xyz * r9.xyz;
      } else {
        r9.xyz = sunConstants.color.xyz;
      }
      r8.w = viewmodelSunShadowRaw >> 16;
      r9.w = cmp(0 < (uint)r8.w);
      r9.w = r6.z ? r9.w : 0;
      if (r9.w != 0) {
        r8.w = (int)r8.w + numLights;
        r8.w = (int)r8.w + -1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.w, r8.w, l(52), t12.xxxx
      r9.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.xyzw, r8.w, l(68), t12.xyzw
      r10.x = samp0[]..swiz;
      r10.y = samp0[]..swiz;
      r10.z = samp0[]..swiz;
      r10.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.xyzw, r8.w, l(84), t12.xyzw
      r11.x = samp0[]..swiz;
      r11.y = samp0[]..swiz;
      r11.z = samp0[]..swiz;
      r11.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.xyzw, r8.w, l(132), t12.xyzw
      r12.x = samp0[]..swiz;
      r12.y = samp0[]..swiz;
      r12.z = samp0[]..swiz;
      r12.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.xyzw, r8.w, l(148), t12.xyzw
      r13.x = samp0[]..swiz;
      r13.y = samp0[]..swiz;
      r13.z = samp0[]..swiz;
      r13.w = samp0[]..swiz;
        r14.x = abs(r2.w) * -0.200000003 + 0.400000006;
        r14.xyz = r2.xyz * r14.xxx + v6.xyz;
        r14.w = 1;
        r10.x = dot(r10.xyzw, r14.xyzw);
        r10.y = dot(r11.xyzw, r14.xyzw);
        r10.xy = r10.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.xy = r10.xy + r13.zw;
        r10.xy = r10.xy * r13.xy;
        r10.zw = r9.ww / r12.xz;
        r11.xy = float2(1,1) + -r10.zw;
        r11.xy = cmp(r10.xy >= r11.xy);
        r10.zw = cmp(r10.zw >= r10.xy);
        r10.zw = (int2)r10.zw | (int2)r11.xy;
        r10.z = (int)r10.w | (int)r10.z;
        if (r10.z == 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.z, r8.w, l(28), t12.xxxx
        r10.z = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.xyzw, r8.w, l(100), t12.xyzw
        r11.x = samp0[]..swiz;
        r11.y = samp0[]..swiz;
        r11.z = samp0[]..swiz;
        r11.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.xy, r8.w, l(164), t12.xyxx
        r13.x = samp0[]..swiz;
        r13.y = samp0[]..swiz;
          r8.w = dot(r11.xyzw, r14.xyzw);
          r10.xy = saturate(r10.xy);
          r11.xy = r10.xy * r12.xz + r12.yw;
          r8.w = r8.w + r13.x;
          r8.w = r8.w / r13.y;
          r8.w = max(6.10351563e-05, r8.w);
          r10.x = r10.z ? 0.000000 : 0;
          if (enableDitheredShadow != 0) {
            r12.x = -r3.x;
            r13.z = (uint)r10.x;
            r12.y = r5.x;
            r12.z = r3.x;
            r10.yz = float2(0,0);
            while (true) {
              r10.w = cmp((int)r10.z >= 8);
              if (r10.w != 0) break;
              r14.x = dot(icb[r10.z+0].yx, r12.xy);
              r14.y = dot(icb[r10.z+0].yx, r12.yz);
              r13.xy = r14.xy * r9.ww + r11.xy;
              r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r13.xyz, r8.w).x;
              r10.y = r10.w * 0.125 + r10.y;
              r10.z = (int)r10.z + 1;
            }
          } else {
            r11.z = (uint)r10.x;
            r10.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r11.xyz, r8.w).x;
          }
          r8.w = r10.y * r10.y;
          r8.w = r8.w * r10.y;
        } else {
          r8.w = 1;
        }
        r6.w = r8.w * r6.w;
      } else {
        r8.w = viewmodelSunShadowRaw & 0x0000ffff;
        r9.w = cmp(0 < (uint)r8.w);
        r6.z = ~(int)r6.z;
        r6.z = r6.z ? r9.w : 0;
        if (r6.z != 0) {
          r6.z = (int)r8.w + numLights;
          r6.z = (int)r6.z + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.w, r6.z, l(52), t12.xxxx
        r8.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.xyzw, r6.z, l(68), t12.xyzw
        r10.x = samp0[]..swiz;
        r10.y = samp0[]..swiz;
        r10.z = samp0[]..swiz;
        r10.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.xyzw, r6.z, l(84), t12.xyzw
        r11.x = samp0[]..swiz;
        r11.y = samp0[]..swiz;
        r11.z = samp0[]..swiz;
        r11.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.xyzw, r6.z, l(132), t12.xyzw
        r12.x = samp0[]..swiz;
        r12.y = samp0[]..swiz;
        r12.z = samp0[]..swiz;
        r12.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.xyzw, r6.z, l(148), t12.xyzw
        r13.x = samp0[]..swiz;
        r13.y = samp0[]..swiz;
        r13.z = samp0[]..swiz;
        r13.w = samp0[]..swiz;
          r9.w = abs(r2.w) * -0.200000003 + 0.400000006;
          r14.xyz = r2.xyz * r9.www + v6.xyz;
          r14.w = 1;
          r10.x = dot(r10.xyzw, r14.xyzw);
          r10.y = dot(r11.xyzw, r14.xyzw);
          r10.xy = r10.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r10.xy = r10.xy + r13.zw;
          r10.xy = r10.xy * r13.xy;
          r10.zw = r8.ww / r12.xz;
          r11.xy = float2(1,1) + -r10.zw;
          r11.xy = cmp(r10.xy >= r11.xy);
          r10.zw = cmp(r10.zw >= r10.xy);
          r10.zw = (int2)r10.zw | (int2)r11.xy;
          r9.w = (int)r10.w | (int)r10.z;
          if (r9.w == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.w, r6.z, l(28), t12.xxxx
          r9.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.xyzw, r6.z, l(100), t12.xyzw
          r11.x = samp0[]..swiz;
          r11.y = samp0[]..swiz;
          r11.z = samp0[]..swiz;
          r11.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.zw, r6.z, l(164), t12.xxxy
          r10.z = samp0[]..swiz;
          r10.w = samp0[]..swiz;
            r6.z = dot(r11.xyzw, r14.xyzw);
            r10.xy = saturate(r10.xy);
            r11.xy = r10.xy * r12.xz + r12.yw;
            r6.z = r6.z + r10.z;
            r6.z = r6.z / r10.w;
            r6.z = max(6.10351563e-05, r6.z);
            r9.w = (int)r9.w & 0x0000ffff;
            if (enableDitheredShadow != 0) {
              r10.x = -r3.x;
              r12.z = (uint)r9.w;
              r10.y = r5.x;
              r10.z = r3.x;
              r3.x = 0;
              r5.x = 0;
              while (true) {
                r10.w = cmp((int)r5.x >= 8);
                if (r10.w != 0) break;
                r13.x = dot(icb[r5.x+0].yx, r10.xy);
                r13.y = dot(icb[r5.x+0].yx, r10.yz);
                r12.xy = r13.xy * r8.ww + r11.xy;
                r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r12.xyz, r6.z).x;
                r3.x = r10.w * 0.125 + r3.x;
                r5.x = (int)r5.x + 1;
              }
            } else {
              r11.z = (uint)r9.w;
              r3.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r11.xyz, r6.z).x;
            }
            r5.x = r3.x * r3.x;
            r3.x = r5.x * r3.x;
          } else {
            r3.x = 1;
          }
          r6.w = r6.w * r3.x;
        }
      }
      r3.x = -r6.x * 0.5 + 1;
      r3.x = -r4.w * r3.x + 1;
      r3.x = r3.x * r3.x;
      r3.x = -r3.x * 0.620000005 + 0.620000005;
      r3.x = r3.x + -r4.w;
      r3.x = r7.w * r3.x + r4.w;
      r3.x = r3.x * r6.w;
      r2.w = cmp(0 < r2.w);
      r10.xyz = r3.xxx * r9.xyz + r5.yzw;
      r11.xyz = -v6.xyz * r0.www + sunConstants.wldDir.xyz;
      r0.w = dot(r11.xyz, r11.xyz);
      r0.w = rsqrt(r0.w);
      r11.xyz = r11.xyz * r0.www;
      r0.w = dot(r11.xyz, r4.xyz);
      r2.x = dot(r2.xyz, r11.xyz);
      r2.y = abs(r2.x) * r6.y + -abs(r2.x);
      r2.x = abs(r2.x) * r2.y + 1;
      r2.y = r4.w * r8.x + r8.y;
      r2.x = r2.x * r2.x;
      r2.x = r2.x * r2.y;
      r2.x = rcp(r2.x);
      r2.x = r2.x * r8.z;
      r2.x = r6.w * r2.x;
      r2.x = 0.25 * r2.x;
      r4.xyz = r2.xxx * r9.xyz + r3.yzw;
      r0.w = saturate(1 + -r0.w);
      r2.y = r0.w * r0.w;
      r2.y = r2.y * r2.y;
      r0.w = r2.y * r0.w;
      r0.w = r2.x * r0.w;
      r2.xyz = r0.www * r9.xyz + r7.xyz;
      r5.yzw = r2.www ? r10.xyz : r5.yzw;
      r7.xyz = r2.www ? r2.xyz : r7.xyz;
      r3.yzw = r2.www ? r4.xyz : r3.yzw;
    }
  }
  r2.xyz = float3(0.959999979,0.959999979,0.959999979) * r7.xyz;
  r2.xyz = r3.yzw * float3(0.0399999991,0.0399999991,0.0399999991) + r2.xyz;
  r0.xyz = r5.yzw * r0.xyz + r2.xyz;
  r0.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.w != 0) {
    r0.w = dot(v6.xyz, v6.xyz);
    r2.x = rsqrt(r0.w);
    r2.xyz = v6.xyz * r2.xxx;
    r0.w = sqrt(r0.w);
    r2.w = cmp(0 < fogConstants.blendAmount);
    if (r2.w != 0) {
      r3.xy = r0.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r3.xy = fogConstants.atmospherefogdensityatcamera.xy * r3.xy;
      r2.w = cmp(0.00999999978 < abs(v6.z));
      r3.zw = fogConstants.atmospherefogheightdensityscale.xy * v6.zz;
      r4.xy = float2(-1.44269502,-1.44269502) * r3.zw;
      r4.xy = exp2(r4.xy);
      r4.xy = float2(1,1) + -r4.xy;
      r3.zw = r4.xy / r3.zw;
      r3.zw = r3.xy * r3.zw;
      r3.xy = r2.ww ? r3.zw : r3.xy;
      r3.xzw = fogConstants.atmosphereTotalDensity.xyz * r3.xxx;
      r3.xzw = exp2(r3.xzw);
      r4.xyz = fogConstants.atmosphereTotalDensity.xyz * r3.yyy;
      r4.xyz = exp2(r4.xyz);
      r4.xyz = r4.xyz + -r3.xzw;
      r3.xyz = fogConstants.blendAmount * r4.xyz + r3.xzw;
    } else {
      r2.w = r0.w * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r2.w = fogConstants.atmospherefogdensityatcamera.x * r2.w;
      r3.w = cmp(0.00999999978 < abs(v6.z));
      r4.x = fogConstants.atmospherefogheightdensityscale.x * v6.z;
      r4.y = -1.44269502 * r4.x;
      r4.y = exp2(r4.y);
      r4.y = 1 + -r4.y;
      r4.x = r4.y / r4.x;
      r4.x = r4.x * r2.w;
      r2.w = r3.w ? r4.x : r2.w;
      r4.xyz = fogConstants.atmosphereTotalDensity.xyz * r2.www;
      r3.xyz = exp2(r4.xyz);
    }
    r3.xyz = r3.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r3.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r3.xyz);
    r2.x = dot(fogConstants.wldSunFogDir.xyz, -r2.xyz);
    r2.y = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r2.z = fogConstants.atmosphereMieSchlickK * -r2.x + 1;
    r2.z = r2.z * r2.z;
    r2.z = 12.566371 * r2.z;
    r2.y = r2.y / r2.z;
    r0.w = -fogConstants.atmospherehazebasedist + r0.w;
    r0.w = saturate(fogConstants.atmospherehazefadedist * r0.w);
    r0.w = r2.y * r0.w;
    r2.x = saturate(r2.x);
    r2.x = r2.x * r2.x + 1;
    r2.x = r2.x * 0.0596831031 + -1;
    r2.x = fogConstants.atmospheresunstrength * r2.x + 1;
    r2.yzw = fogConstants.atmosphereMieDensity.xyz * r0.www;
    r2.xyz = r2.xxx * fogConstants.atmosphereRayleighDensity.xyz + r2.yzw;
    r2.xyz = fogConstants.atmosphereInScatterIntensity * r2.xyz;
    r4.xyz = float3(1,1,1) + -r3.xyz;
    r2.xyz = r4.xyz * r2.xyz;
    r2.xyz = r0.xyz * r3.xyz + r2.xyz;
  } else {
    r0.w = fogConstants.heightFalloff * v6.z;
    r2.w = fogConstants.heightFalloff * v6.z + fogConstants.K0;
    r3.x = cmp(abs(r0.w) < 9.99999975e-05);
    r3.y = min(64, r2.w);
    r3.y = 1.44269502 * r3.y;
    r3.y = exp2(r3.y);
    r3.z = saturate(fogConstants.K0b);
    r3.w = cmp(r2.w < 0);
    r2.w = 1 + r2.w;
    r2.w = r3.w ? r3.y : r2.w;
    r2.w = -fogConstants.K0b + r2.w;
    r0.w = r3.x ? 1 : r0.w;
    r0.w = r2.w / r0.w;
    r0.w = r3.x ? r3.z : r0.w;
    r0.w = fogConstants.expMul * r0.w;
    r2.w = dot(v6.xyz, v6.xyz);
    r3.x = sqrt(r2.w);
    r0.w = r0.w * r3.x + fogConstants.expAdd;
    r0.w = exp2(r0.w);
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r2.w = rsqrt(r2.w);
    r3.xyz = v6.xyz * r2.www;
    r2.w = dot(fogConstants.wldSunFogDir.xyz, r3.xyz);
    r2.w = saturate(fogConstants.sunFogAngles.y * r2.w + fogConstants.sunFogAngles.x);
    r3.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r3.xyzw = r2.wwww * r3.xyzw + fogConstants.sunFogColor.xyzw;
    r0.w = r3.w * r0.w;
    r3.xyz = r3.xyz + -r0.xyz;
    r2.xyz = r0.www * r3.xyz + r0.xyz;
  }
  r0.xyz = relHDRExposure.yyy * r2.xyz;
  r2.xyz = cmp(r0.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r0.xyz = r2.xyz ? r0.xyz : 0;
  r0.xyz = min(float3(65024,65024,64512), r0.xyz);
  r2.xyz = max(float3(0,0,0), r0.xyz);
  r1.xyz = r2.xyz * r1.www;
  r0.w = (int)r1.w & 0x7f800000;
  r0.w = cmp((int)r0.w == 0x7f800000);
  r3.xyzw = cmp(r1.xyzw == float4(0,0,0,0));
  r3.xy = r3.zw ? r3.xy : 0;
  r2.w = r3.y ? r3.x : 0;
  r0.w = (int)r0.w | (int)r2.w;
  if (r0.w == 0) {
    r3.xy = (uint2)v0.xy;
    // Needs manual fix for instruction:
    imm_atomic_iadd r3.z, u6, r3.xyxx, l(1)
    InterlockedAdd(dest, imm_value, orig_value);
    r0.w = cmp((uint)r3.z < oitMaxEntries);
    if (r0.w != 0) {
      r0.w = max(r1.y, r1.z);
      r0.w = max(r1.x, r0.w);
      r0.w = abs(r0.w);
      r0.w = (int)r0.w & 0x7f800000;
      r0.w = (int)r0.w + 0x00800000;
      r2.xyz = r2.xyz * r1.www + r0.www;
      if (8 == 0) r2.x = 0; else if (8+15 < 32) {       r2.x = (uint)r2.x << (32-(8 + 15)); r2.x = (uint)r2.x >> (32-8);      } else r2.x = (uint)r2.x >> 15;
      r2.yz = (uint2)r2.yz >> int2(15,15);
      bitmask.y = ((~(-1 << 8)) << 8) & 0xffffffff;  r2.y = (((uint)r2.y << 8) & bitmask.y) | ((uint)0 & ~bitmask.y);
      bitmask.z = ((~(-1 << 8)) << 16) & 0xffffffff;  r2.z = (((uint)r2.z << 16) & bitmask.z) | ((uint)0 & ~bitmask.z);
      r2.x = (int)r2.y + (int)r2.x;
      r2.x = (int)r2.z + (int)r2.x;
      r0.w = (uint)r0.w << 1;
      r2.xzw = (int3)r0.www + (int3)r2.xxx;
      r0.w = saturate(r1.w);
      r0.w = 2046 * r0.w;
      r0.w = (uint)r0.w;
      r3.w = (uint)v0.z << 2;
      r0.w = (int)r0.w & 2046;
      bitmask.y = ((~(-1 << 11)) << 0) & 0xffffffff;  r2.y = (((uint)r0.w << 0) & bitmask.y) | ((uint)r3.w & ~bitmask.y);
    // No code for instruction (needs manual fix):
        store_uav_typed u7.xyzw, r3.xyzz, r2.xyzw
      r0.w = -1;
    } else {
      r0.w = 0;
    }
  } else {
    r0.w = -1;
  }
  r1.xyz = r0.xyz * r1.www;
  o0.xyzw = r0.wwww ? float4(0,0,0,0) : r1.xyzw;
  return;
}