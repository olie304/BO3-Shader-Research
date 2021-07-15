// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:32:01 2021

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
  float3 specColorTint : packoffset(c11);
  float baseNormalHeight : packoffset(c11.w);
  float2 glossRange : packoffset(c12);
  float anisotropy : packoffset(c12.z);
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
SamplerState specColorSampler_s : register(s3);
SamplerState samplerLinearClamp_s : register(s4);
SamplerState normalSampler_s : register(s5);
SamplerState aoSampler_s : register(s6);
SamplerComparisonState ShadowSamplerComparisonState_s : register(s13);
Texture2D<float4> colorMap : register(t0);
Texture2D<float2> gEnvBRDFGeneric : register(t5);
Texture2DArray<uint> visibleLights : register(t6);
Texture2DArray<uint> visibleProbes : register(t7);
TextureCubeArray<float3> gReflectionProbeArray : register(t8);
Texture2DArray<float> gSpotShadowmapArray : register(t9);
TextureCubeArray<float> gOmniShadowmapArray : register(t10);
StructuredBuffer<gCullConstants> gCullConstants : register(t11);
StructuredBuffer<lightConstants> lightConstants : register(t12);
Texture2DArray<float> gSunShadowmapArray : register(t13);
StructuredBuffer<refProbeConstants> refProbeConstants : register(t15);
StructuredBuffer<refProbeAttenuationConstants> refProbeAttenuationConstants : register(t16);
Texture3D<float3> gProbeXArray : register(t17);
Texture3D<float3> gProbeYArray : register(t18);
Texture3D<float3> gProbeZArray : register(t19);
Texture2DArray<float4> gCookieArray : register(t20);
Texture2D<float4> specColorMap : register(t21);
Texture2D<float4> normalMap : register(t22);
StructuredBuffer<gSunShadowTree> gSunShadowTree : register(t23);
Texture2D<float4> glossMap : register(t24);
Texture2D<float4> aoMap : register(t25);
Texture2DArray<float> gTransShadowmapArray : register(t31);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float v1 : COLOR1,
  float2 w1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float3 v4 : TEXCOORD3,
  float3 v5 : OFFPOSITION0,
  uint v6 : SV_IsFrontFace0,
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
// unknown dcl_: dcl_resource_structured t11, 80
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t12, 240
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t15, 224
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t16, 96
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t23, 4
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = colorMap.Sample(colorSampler_s, w1.xy).xyzw;
  r1.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r1.xyz = r0.www * r1.xyz + float3(1,1,1);
  r0.xyz = r1.xyz * r0.xyz;
  o0.w = v1.x * r0.w;
  r0.w = specColorMap.Sample(specColorSampler_s, w1.xy).x;
  r1.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + specColorTint.xyz;
  r1.xyz = r0.www * r1.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = saturate(1 + -r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = aoMap.Sample(aoSampler_s, w1.xy).x;
  r1.w = glossMap.Sample(specColorSampler_s, w1.xy).x;
  r2.x = glossRange.y + -glossRange.x;
  r2.y = r2.x * r1.w;
  r1.w = r1.w * r2.x + glossRange.x;
  r1.w = saturate(0.0588235296 * r1.w);
  r2.x = r2.y * 0.5 + glossRange.x;
  r2.x = saturate(0.0588235296 * r2.x);
  r2.yzw = normalMap.Sample(normalSampler_s, w1.xy).xyz;
  r2.yzw = float3(-0.5,-0.5,-0) + r2.yzw;
  r2.yzw = baseNormalHeight * r2.yzw + float3(0.5,0.5,0);
  r2.yz = r2.yz * float2(1.9921875,1.9921875) + float2(-1,-1);
  r3.x = dot(r2.yz, r2.yz);
  r3.x = 1 + -r3.x;
  r3.x = max(0, r3.x);
  r3.x = sqrt(r3.x);
  r2.w = r2.w * r2.w;
  r2.w = 0.333333343 * r2.w;
  r2.w = min(1, r2.w);
  r3.y = v6.x ? 1 : -1;
  r3.z = dot(v2.xyz, v2.xyz);
  r3.z = rsqrt(r3.z);
  r4.xyz = v2.xyz * r3.zzz;
  r4.xyz = r4.xyz * r3.yyy;
  r3.z = dot(v3.xyz, v3.xyz);
  r3.z = rsqrt(r3.z);
  r5.xyz = v3.xyz * r3.zzz;
  r5.xyz = r5.xyz * r3.yyy;
  r3.z = dot(v4.xyz, v4.xyz);
  r3.z = rsqrt(r3.z);
  r6.xyz = v4.xyz * r3.zzz;
  r3.yzw = r6.xyz * r3.yyy;
  r1.w = -17 * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r2.w + r1.w;
  r1.w = log2(r1.w);
  r1.w = -0.0588235296 * r1.w;
  r1.w = max(0, r1.w);
  r2.x = -17 * r2.x;
  r2.x = exp2(r2.x);
  r2.x = r2.w + r2.x;
  r2.x = log2(r2.x);
  r2.x = -0.0588235296 * r2.x;
  r6.xyz = r3.yzw * r2.zzz;
  r2.yzw = r5.xyz * r2.yyy + r6.xyz;
  r2.yzw = r4.xyz * r3.xxx + r2.yzw;
  r3.x = dot(r2.yzw, r2.yzw);
  r3.x = rsqrt(r3.x);
  r4.xyz = r3.xxx * r2.yzw;
  r2.yz = (uint2)v0.xy;
  r2.w = cmp(v0.z >= 0.984375);
  r3.x = 1.01587307 * v0.z;
  r5.w = v0.z * 64 + -63;
  r2.w = r2.w ? r5.w : r3.x;
  r2.xw = max(float2(0,9.99999994e-09), r2.xw);
  r2.w = rcp(r2.w);
  r3.x = dot(-v5.xyz, -v5.xyz);
  r3.x = rsqrt(r3.x);
  r6.xyz = -v5.xyz * r3.xxx;
  r7.xy = (uint2)r2.zy;
  r5.w = dot(r7.yx, float2(0.0671105608,0.00583714992));
  r5.w = frac(r5.w);
  r5.w = 52.9829178 * r5.w;
  r5.w = frac(r5.w);
  r5.w = r5.w * 6.28318548 + gameTick.w;
  sincos(r5.w, r8.x, r9.x);
  r5.w = dot(r7.xy, float2(0.0671105608,0.00583714992));
  r5.w = frac(r5.w);
  r5.w = 52.9829178 * r5.w;
  r5.w = frac(r5.w);
  r5.w = r5.w * 6.28318548 + gameTick.w;
  sincos(r5.w, r7.x, r10.x);
  r5.w = saturate(dot(r4.xyz, r6.xyz));
  r6.w = dot(-r6.xyz, r4.xyz);
  r6.w = r6.w + r6.w;
  r11.xyz = r4.xyz * -r6.www + -r6.xyz;
  r7.z = 0.984375 * r5.w;
  r6.w = r5.w * 0.547037423 + 0.452962577;
  r8.zw = float2(0.547037423,0.452962577) * r6.ww;
  r6.w = min(1, abs(anisotropy));
  r2.x = r2.x + -r1.w;
  r1.w = r6.w * r2.x + r1.w;
  r2.x = cmp(anisotropy < 0);
  r1.w = 17 * r1.w;
  r12.y = exp2(r1.w);
  r12.xz = float2(1,1);
  r9.yz = r2.xx ? r12.xy : r12.yx;
  r9.yz = float2(2,2) + r9.yz;
  r9.yz = float2(2,2) / r9.yz;
  r1.w = dot(r4.xyz, sunConstants.wldDir.xyz);
  r2.x = saturate(r1.w);
  r6.w = cmp(0 >= r2.x);
  if (r6.w != 0) {
    r7.y = 0;
  }
  if (r6.w == 0) {
    r10.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v5.yyy;
    r10.yzw = v5.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r10.yzw;
    r10.yzw = v5.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r10.yzw;
    r10.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r10.yzw;
    r6.w = -sunConstants.splitDepthOffset + r10.w;
    r6.w = -r6.w * 6.10351563e-05 + 1;
    r9.w = saturate(r6.w);
    r9.w = cmp(r6.w == r9.w);
    if (r9.w != 0) {
      r9.w = 0;
      r12.x = 0;
      while (true) {
        r12.y = cmp(r9.w >= 3);
        if (r12.y != 0) break;
        r12.y = (uint)r9.w;
        r13.xy = -sunConstants.splitPinTransform[r12.y].xy + r10.yz;
        r13.x = max(abs(r13.x), abs(r13.y));
        r12.x = sunConstants.splitPinTransform[r12.y].z * r13.x;
        r12.y = cmp(r12.x < 1);
        if (r12.y != 0) {
          break;
        }
        r9.w = 1 + r9.w;
        r12.x = 0;
      }
    } else {
      r9.w = 3;
      r12.x = 0;
    }
    r12.y = cmp(r9.w >= 3);
    if (r12.y != 0) {
      r13.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r14.xz = rcp(r13.xx);
      r14.y = -r14.z;
      r13.xyz = r10.yzy * r14.xyz + r13.yzy;
      r14.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r13.xyz = max(float3(0,0,0), r13.xyz);
      r13.xyz = min(r13.xyz, r14.xyz);
      r14.xy = sunConstants.sstLightingConstants.coordScale * r13.zy;
      r14.xy = floor(r14.xy);
      r13.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r14.y;
      r13.w = r13.w * sunConstants.sstLightingConstants.coordScale + r14.x;
      r13.w = (uint)r13.w;
      r13.w = (int)r13.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.x, r13.w, l(0), t23.xxxx
    r14.x = samp0[]..swiz;
      r14.y = (int)r14.x & 0x40000000;
      r14.z = (uint)r14.x << 2;
      if (r14.y == 0) {
        r14.y = (int)r14.x & 0x01ffffff;
        r15.x = (int)r13.w + (int)r14.y;
        r13.w = (uint)r14.x >> 25;
        r13.w = (uint)r13.w;
        r13.xyz = r13.xyz * r13.www;
        r13.xyz = frac(r13.xyz);
        r13.xyz = float3(128,128,128) * r13.xyz;
        r13.xyz = (uint3)r13.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.z, r15.x, l(0), t23.xxxx
      r15.z = samp0[]..swiz;
        r14.xy = (uint2)r13.zy >> int2(6,6);
        r13.w = (int)r15.z & 0xc0000000;
        r14.w = (int)r15.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.w, r14.w, l(0), t23.xxxx
      r14.w = samp0[]..swiz;
        r14.y = r14.y ? r15.z : r14.w;
        r14.w = (uint)r14.y >> 13;
        r14.x = r14.x ? r14.w : r14.y;
        r14.x = (int)r14.x & 8191;
        r16.x = (int)r14.x + (int)r15.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.x, l(0), t23.xxxx
      r16.z = samp0[]..swiz;
        r15.y = 0;
        r16.y = 1;
        r14.xyw = r13.www ? r15.xyz : r16.xyz;
        r16.yz = r13.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r17.xy = (uint2)r13.zy >> (uint2)r16.yy;
        r17.xy = (int2)r17.xy & int2(1,1);
        r15.w = (int)r14.w & 0xc0000000;
        r16.y = (int)r14.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.y, r16.y, l(0), t23.xxxx
      r16.y = samp0[]..swiz;
        r16.y = r17.y ? r14.w : r16.y;
        r17.y = (uint)r16.y >> 13;
        r16.y = r17.x ? r17.y : r16.y;
        r16.y = (int)r16.y & 8191;
        r16.x = (int)r14.x + (int)r16.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.w, r16.x, l(0), t23.xxxx
      r16.w = samp0[]..swiz;
        r14.xyw = r15.www ? r14.xyw : r16.xzw;
        r14.xyw = r13.www ? r15.xyz : r14.xyw;
        r13.w = (int)r14.w & 0xc0000000;
        if (r13.w == 0) {
          r13.w = (int)-r14.y + 6;
          r15.xy = (uint2)r13.zy >> (uint2)r13.ww;
          r13.w = (int)r14.w | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r15.y = (((uint)r15.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r15.x = (((uint)r15.x << 0) & bitmask.x) | ((uint)r15.y & ~bitmask.x);
          r15.x = (int)r15.x * 10;
          r13.w = (uint)r13.w >> (uint)r15.x;
          r13.w = (int)r13.w & 1023;
          r15.x = (int)r13.w + (int)r14.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.w, r15.x, l(0), t23.xxxx
        r15.w = samp0[]..swiz;
          r15.yz = (int2)r14.yy + int2(1,2);
          r13.w = (int)-r15.y + 6;
          r16.xy = (uint2)r13.zy >> (uint2)r13.ww;
          r13.w = (int)r15.w & 0xc0000000;
          r14.y = (int)r15.w | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r16.y = (((uint)r16.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r16.x = (((uint)r16.x << 0) & bitmask.x) | ((uint)r16.y & ~bitmask.x);
          r16.x = (int)r16.x * 10;
          r14.y = (uint)r14.y >> (uint)r16.x;
          r14.y = (int)r14.y & 1023;
          r16.x = (int)r14.y + (int)r15.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.x, l(0), t23.xxxx
        r16.z = samp0[]..swiz;
          r16.y = r15.z;
          r16.xyz = r13.www ? r15.xyw : r16.xyz;
          r14.y = (int)-r16.y + 6;
          r15.yz = (uint2)r13.zy >> (uint2)r14.yy;
          r14.y = (int)r16.z & 0xc0000000;
          r16.y = (int)r16.z | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r15.z = (((uint)r15.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r15.y = (((uint)r15.y << 0) & bitmask.y) | ((uint)r15.z & ~bitmask.y);
          r15.y = (int)r15.y * 10;
          r15.y = (uint)r16.y >> (uint)r15.y;
          r15.y = (int)r15.y & 1023;
          r17.x = (int)r15.y + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.y, r17.x, l(0), t23.xxxx
        r17.y = samp0[]..swiz;
          r15.yz = r14.yy ? r16.xz : r17.xy;
          r14.xw = r13.ww ? r15.xw : r15.yz;
        }
        r13.w = (int)r14.w & 0xc0000000;
        if (r13.w == 0) {
          if (14 == 0) r14.y = 0; else if (14+15 < 32) {           r14.y = (uint)r14.w << (32-(14 + 15)); r14.y = (uint)r14.y >> (32-14);          } else r14.y = (uint)r14.w >> 15;
          r14.y = (uint)r14.y;
          r14.y = sunConstants.sstLightingConstants.constants.spanInInches * r14.y;
          r14.y = 6.10388815e-05 * r14.y;
          r15.xy = (int2)r14.ww & int2(32767,536870912);
          r15.x = (uint)r15.x;
          r15.x = sunConstants.sstLightingConstants.constants.spanInInches * r15.x;
          r15.x = 3.05185094e-05 * r15.x;
          r15.z = (int)r13.y & 3;
          r15.z = (int)r14.x + (int)r15.z;
          r15.z = (int)r15.z + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.z, r15.z, l(0), t23.xxxx
        r15.z = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r16.x = (((uint)r13.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r16.y = (((uint)r13.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r16.z = (((uint)r13.z << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r13.x = (uint)r15.z >> (uint)r16.x;
          r13.x = (int)r13.x & 255;
          r13.x = (uint)r13.x;
          r13.x = r13.x * r15.x;
          r13.x = r13.x * 0.00392156886 + r14.y;
          r13.y = (int)r16.y + 1;
          if (1 == 0) r13.z = 0; else if (1+1 < 32) {           r13.z = (uint)r13.z << (32-(1 + 1)); r13.z = (uint)r13.z >> (32-1);          } else r13.z = (uint)r13.z >> 1;
          r13.y = (int)r13.z + (int)r13.y;
          r13.y = (int)r13.y + (int)r14.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.y, r13.y, l(0), t23.xxxx
        r13.y = samp0[]..swiz;
          r13.y = (uint)r13.y >> (uint)r16.z;
          r13.y = (int)r13.y & 0x0000ffff;
          r13.y = (uint)r13.y;
          r13.y = r13.y * r15.x;
          r13.y = r13.y * 1.52590219e-05 + r14.y;
          r14.z = r15.y ? r13.x : r13.y;
        } else {
          r13.x = (int)r14.w & 0x80000000;
          r13.y = (int)r14.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.y, r13.y, l(0), t23.xxxx
        r13.y = samp0[]..swiz;
          r13.x = r13.x ? r13.y : 0;
          r13.y = (uint)r14.w << 2;
          r13.z = (uint)r13.x >> 16;
          r13.x = (int)r13.x & 0x0000ffff;
          r13.xz = f16tof32(r13.xz);
          r13.y = r10.y * r13.z + r13.y;
          r13.x = r10.z * r13.x + r13.y;
          r14.z = r13.w ? r13.x : r14.z;
        }
      }
      r10.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r10.w;
      r10.w = cmp(r14.z < r10.w);
      r7.y = r10.w ? 0 : 1;
    }
    if (r12.y == 0) {
      if (enableDitheredShadow == 0) {
        r10.w = (uint)r9.w;
        r13.xy = -sunConstants.splitPinTransform[r10.w].xy + r10.yz;
        r13.xy = sunConstants.splitPinTransform[r10.w].zz * r13.xy;
        r13.xy = r13.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.w = (int16)sunConstants.splitArrayOffset;
        r13.z = r10.w + r9.w;
        r10.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r13.xyz, r6.w).x;
        r12.y = gTransShadowmapArray.SampleLevel(samp0_s, r13.xyz, 0).x;
        r10.w = r12.y + r10.w;
        r10.w = saturate(-1 + r10.w);
        r12.y = r10.w * r10.w;
        r7.y = r12.y * r10.w;
      }
      if (enableDitheredShadow != 0) {
        r13.x = -r8.x;
        r10.w = (uint)r9.w;
        r9.w = 1 + r9.w;
        r9.w = min(2, r9.w);
        r9.w = (uint)r9.w;
        r12.x = 1 + -r12.x;
        r12.x = 28 * r12.x;
        r12.x = (uint)r12.x;
        r14.xy = -sunConstants.splitPinTransform[r10.w].xy + r10.yz;
        r14.xy = sunConstants.splitPinTransform[r10.w].zz * r14.xy;
        r14.xy = r14.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.yz = -sunConstants.splitPinTransform[r9.w].xy + r10.yz;
        r10.yz = sunConstants.splitPinTransform[r9.w].zz * r10.yz;
        r10.yz = r10.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r13.y = r9.x;
        r13.z = r8.x;
        r12.y = 0;
        r13.w = 0;
        while (true) {
          r14.z = cmp((uint)r13.w >= 8);
          if (r14.z != 0) break;
          r14.z = cmp((uint)r12.x < (uint)r13.w);
          r15.xy = r14.zz ? r10.yz : r14.xy;
          r14.w = r14.z ? sunConstants.splitPinTransform[r9.w].w : sunConstants.splitPinTransform[r10.w].w;
          r14.z = r14.z ? r9.w : r10.w;
          r16.x = dot(icb[r13.w+0].yx, r13.xy);
          r16.y = dot(icb[r13.w+0].yx, r13.yz);
          r15.xy = r16.xy * r14.ww + r15.xy;
          r14.z = (int)r14.z + (int16)sunConstants.splitArrayOffset;
          r15.z = (uint)r14.z;
          r14.z = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r6.w).x;
          r14.w = gTransShadowmapArray.SampleLevel(samp0_s, r15.xyz, 0).x;
          r14.z = r14.z + r14.w;
          r14.z = saturate(-1 + r14.z);
          r12.y = r14.z * 0.125 + r12.y;
          r13.w = (int)r13.w + 1;
        }
        r6.w = r12.y * r12.y;
        r7.y = r6.w * r12.y;
      }
    }
  }
  r6.w = cmp(0 < r2.x);
  if (r6.w != 0) {
    r6.w = cmp(0 < r7.y);
    if (r6.w != 0) {
      r6.w = sunConstants.specScale * r2.x;
      if (sunConstants.sunCookieIndex != 0) {
        r13.xyz = eyeOffset.xyz + v5.xyz;
        r13.w = 1;
        r9.w = dot(sunConstants.sunCookieTransform[0].xyzw, r13.xyzw);
        r10.y = dot(sunConstants.sunCookieTransform[1].xyzw, r13.xyzw);
        r13.x = frac(r9.w);
        r13.y = frac(r10.y);
        r9.w = -1 + (int14)sunConstants.sunCookieIndex;
        r13.z = (uint)r9.w;
        r10.yzw = gCookieArray.SampleLevel(samplerLinear_s, r13.xyz, 0).xyz;
        r10.yzw = float3(-1,-1,-1) + r10.yzw;
        r10.yzw = sunConstants.sunCookieIntensity * r10.yzw + float3(1,1,1);
        r10.yzw = sunConstants.color.xyz * r10.yzw;
      } else {
        r10.yzw = sunConstants.color.xyz;
      }
      r10.yzw = r10.yzw * r7.yyy;
      r7.y = -r5.w * 0.5 + 1;
      r7.y = -r2.x * r7.y + 1;
      r7.y = r7.y * r7.y;
      r7.y = -r7.y * 0.620000005 + 0.620000005;
      r7.y = r7.y + -r2.x;
      r7.y = r7.y * 0.816496611 + r2.x;
      r13.xyz = r7.yyy * r10.yzw;
      r1.w = cmp(0 < r1.w);
      r14.xyz = -v5.xyz * r3.xxx + sunConstants.wldDir.xyz;
      r3.x = dot(r14.xyz, r14.xyz);
      r3.x = rsqrt(r3.x);
      r14.xyz = r14.xyz * r3.xxx;
      r3.x = dot(r4.xyz, r14.xyz);
      r7.y = dot(r14.xyz, r6.xyz);
      r9.w = r9.y * r9.z;
      r9.w = sqrt(r9.w);
      r12.x = dot(r14.xyz, r5.xyz);
      r12.y = dot(r14.xyz, r3.yzw);
      r12.xy = r12.xy * r12.xy;
      r12.xy = r12.xy / r9.yz;
      r12.x = r12.x + r12.y;
      r3.x = abs(r3.x) * abs(r3.x) + r12.x;
      r2.x = r2.x * r8.z + r8.w;
      r3.x = r3.x * r3.x;
      r3.x = r3.x * r9.w;
      r2.x = r3.x * r2.x;
      r2.x = rcp(r2.x);
      r2.x = r2.x * r6.w;
      r2.x = 0.166666672 * r2.x;
      r10.yzw = r2.xxx * r10.yzw;
      r2.x = saturate(1 + -r7.y);
      r3.x = r2.x * r2.x;
      r3.x = r3.x * r3.x;
      r2.x = r3.x * r2.x;
      r14.xyz = r10.zwy * r2.xxx;
      r13.w = r14.z;
      r13.xyzw = r1.wwww ? r13.xyzw : 0;
      r14.zw = r10.yz;
      r14.xyzw = r1.wwww ? r14.xyzw : 0;
      r1.w = r1.w ? r10.w : 0;
    } else {
      r13.xyzw = float4(0,0,0,0);
      r14.xyzw = float4(0,0,0,0);
      r1.w = 0;
    }
  } else {
    r13.xyzw = float4(0,0,0,0);
    r14.xyzw = float4(0,0,0,0);
    r1.w = 0;
  }
  r2.x = 0.0078125 * r2.w;
  r2.x = min(15, r2.x);
  r2.x = (uint)r2.x;
  r15.xy = (uint2)r2.yz >> int2(6,6);
  r15.z = (uint)r2.x << 4;
  r2.x = -r8.x;
  r3.x = -r5.w * 0.5 + 1;
  r5.w = r9.y * r9.z;
  r5.w = sqrt(r5.w);
  r16.xy = float2(0,0);
  r17.w = 0;
  r18.xyz = v5.xyz;
  r18.w = 1;
  r2.z = r8.x;
  r19.z = 1;
  r20.w = 1;
  r2.yw = r9.xx;
  r8.y = r2.w;
  r10.yzw = r13.xyz;
  r21.x = r13.w;
  r21.yz = r14.xy;
  r22.xy = r14.zw;
  r22.z = r1.w;
  r6.w = enableDitheredShadow;
  r7.y = 0;
  while (true) {
    r9.x = cmp((uint)r7.y >= numLights);
    if (r9.x != 0) break;
    r16.z = (uint)r7.y >> 5;
    r17.xyz = (int3)r15.xyz + (int3)r16.xyz;
    r9.x = visibleLights.Load(r17.xyzw).x;
    r17.xyz = r10.yzw;
    r23.xyz = r21.xyz;
    r24.xyz = r22.xyz;
    r9.w = r6.w;
    r12.x = r9.x;
    while (true) {
      if (r12.x == 0) break;
      r12.y = firstbitlow((uint)r12.x);
      r15.w = 1 << (int)r12.y;
      r16.z = (int)r12.x & (int)r15.w;
      if (r16.z != 0) {
        r12.x = (int)r12.x ^ (int)r15.w;
        r12.y = (int)r7.y + (int)r12.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r25.xyzw, r12.y, l(0), t11.xyzw
      r25.x = samp0[]..swiz;
      r25.y = samp0[]..swiz;
      r25.z = samp0[]..swiz;
      r25.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r26.xy, r12.y, l(16), t11.xyxx
      r26.x = samp0[]..swiz;
      r26.y = samp0[]..swiz;
        r25.xyz = -v5.xyz + r25.xyz;
        r26.z = r25.w;
        r25.xyz = cmp(abs(r25.xyz) < r26.zxy);
        r15.w = r25.y ? r25.x : 0;
        r15.w = r25.z ? r15.w : 0;
        if (r15.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r25.xyzw, r12.y, l(0), t12.wxyz
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        r25.z = samp0[]..swiz;
        r25.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r26.xyzw, r12.y, l(16), t12.zxyw
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
        r26.z = samp0[]..swiz;
        r26.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r27.xyzw, r12.y, l(32), t12.xyzw
        r27.x = samp0[]..swiz;
        r27.y = samp0[]..swiz;
        r27.z = samp0[]..swiz;
        r27.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r28.xyzw, r12.y, l(48), t12.xyzw
        r28.x = samp0[]..swiz;
        r28.y = samp0[]..swiz;
        r28.z = samp0[]..swiz;
        r28.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r29.xyzw, r12.y, l(64), t12.yzwx
        r29.x = samp0[]..swiz;
        r29.y = samp0[]..swiz;
        r29.z = samp0[]..swiz;
        r29.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r30.xyzw, r12.y, l(80), t12.xyzw
        r30.x = samp0[]..swiz;
        r30.y = samp0[]..swiz;
        r30.z = samp0[]..swiz;
        r30.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r12.y, l(96), t12.yzwx
        r31.x = samp0[]..swiz;
        r31.y = samp0[]..swiz;
        r31.z = samp0[]..swiz;
        r31.w = samp0[]..swiz;
          if (3 == 0) r15.w = 0; else if (3+24 < 32) {           r15.w = (uint)r26.w << (32-(3 + 24)); r15.w = (uint)r15.w >> (32-3);          } else r15.w = (uint)r26.w >> 24;
          switch (r15.w) {
            case 4 :            r15.w = cmp(0 < r31.x);
            r32.xy = r30.zw;
            r32.z = r31.w;
            r33.xyz = -r32.xyz * float3(0.5,0.5,0.5) + r25.yzw;
            r34.xyz = -v5.xyz + r33.xyz;
            r16.z = dot(r32.xyz, r34.xyz);
            r16.w = saturate(-r16.z / r31.x);
            r35.xyz = r16.www * r32.xyz + r33.xyz;
            r35.xyz = r15.www ? r35.xyz : r25.yzw;
            r35.xyz = -v5.xyz + r35.xyz;
            r19.w = dot(r35.xyz, r35.xyz);
            r21.w = rsqrt(r19.w);
            r35.xyz = r35.xyz * r21.www;
            r21.w = dot(r4.xyz, r35.xyz);
            r22.w = saturate(r21.w);
            r23.w = cmp(0 < r22.w);
            if (r23.w != 0) {
              r23.w = sqrt(r19.w);
              r24.w = r28.x * r28.x;
              r19.w = r24.w / r19.w;
              r19.w = min(1, r19.w);
              r35.xy = saturate(r23.ww * r27.xz + r27.yw);
              r35.zw = r35.xy * r35.xy;
              r35.xy = r35.xy * float2(-2,-2) + float2(3,3);
              r35.xy = r35.zw * r35.xy;
              r19.w = r35.x * r19.w;
              r19.w = r19.w * r35.y;
              r23.w = cmp(0 < r19.w);
              if (r23.w != 0) {
                if (3 == 0) r23.w = 0; else if (3+27 < 32) {                 r23.w = (uint)r26.w << (32-(3 + 27)); r23.w = (uint)r23.w >> (32-3);                } else r23.w = (uint)r26.w >> 27;
                r23.w = cmp((int)r23.w != 1);
                if (r23.w != 0) {
                  r23.w = abs(r21.w) * -0.200000003 + 0.400000006;
                  r35.xyz = r4.xyz * r23.www + v5.xyz;
                  r35.xyz = r35.xyz + -r29.xyz;
                  r23.w = max(abs(r35.y), abs(r35.z));
                  r23.w = max(abs(r35.x), r23.w);
                  r23.w = r30.x / r23.w;
                  r23.w = r23.w + r30.y;
                  r24.w = dot(r35.xyz, r35.xyz);
                  r24.w = rsqrt(r24.w);
                  r23.w = max(6.10351563e-05, r23.w);
                  r32.w = (int)r26.w & 0x0000ffff;
                  r36.w = (uint)r32.w;
                  r32.w = 0;
                  r33.w = 0;
                  while (true) {
                    r34.w = cmp((int)r33.w >= 8);
                    if (r34.w != 0) break;
                    r37.y = dot(icb[r33.w+0].yx, r2.xy);
                    r37.z = dot(icb[r33.w+0].yx, r2.yz);
                    r37.yz = r37.yz * r28.yy;
                    r37.x = r37.y * r10.x;
                    r37.w = r37.y * r7.x;
                    r36.xyz = r35.xyz * r24.www + r37.xzw;
                    r34.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r36.xyzw, r23.w).x;
                    r32.w = r34.w * 0.125 + r32.w;
                    r33.w = (int)r33.w + 1;
                  }
                } else {
                  r32.w = 1;
                }
                r19.w = r32.w * r19.w;
                r23.w = cmp(0 < r19.w);
                if (r23.w != 0) {
                  r23.w = 0.166666672 * r26.x;
                  r24.w = dot(r32.xyz, r11.xyz);
                  r33.w = dot(r11.xyz, r34.xyz);
                  r34.x = -r24.w * r24.w + r31.x;
                  r16.z = r24.w * r33.w + -r16.z;
                  r16.z = saturate(r16.z / r34.x);
                  r24.w = r34.x / r31.x;
                  r24.w = 10 * r24.w;
                  r24.w = min(1, r24.w);
                  r16.z = r16.z + -r16.w;
                  r16.z = r24.w * r16.z + r16.w;
                  r32.xyz = r16.zzz * r32.xyz + r33.xyz;
                  r32.xyz = r15.www ? r32.xyz : r25.yzw;
                  r32.xyz = -v5.xyz + r32.xyz;
                  r15.w = dot(r32.xyz, r32.xyz);
                  r15.w = rsqrt(r15.w);
                  r33.xyz = r32.xyz * r15.www;
                  r26.x = r25.x;
                  r34.xyz = r26.xyz * r19.www;
                  r16.z = -r22.w * r3.x + 1;
                  r16.z = r16.z * r16.z;
                  r16.z = -r16.z * 0.620000005 + 0.620000005;
                  r16.z = r16.z + -r22.w;
                  r16.z = r16.z * 0.816496611 + r22.w;
                  r16.w = cmp(0 < r21.w);
                  r35.xyz = r16.zzz * r34.xyz + r17.xyz;
                  r16.z = saturate(dot(r4.xyz, r33.xyz));
                  r32.xyz = r32.xyz * r15.www + r6.xyz;
                  r15.w = dot(r32.xyz, r32.xyz);
                  r15.w = rsqrt(r15.w);
                  r32.xyz = r32.xyz * r15.www;
                  r15.w = dot(r4.xyz, r32.xyz);
                  r19.w = dot(r32.xyz, r6.xyz);
                  r21.w = dot(r32.xyz, r5.xyz);
                  r22.w = dot(r32.xyz, r3.yzw);
                  r21.w = r21.w * r21.w;
                  r21.w = r21.w / r9.y;
                  r22.w = r22.w * r22.w;
                  r22.w = r22.w / r9.z;
                  r21.w = r22.w + r21.w;
                  r15.w = abs(r15.w) * abs(r15.w) + r21.w;
                  r21.w = r16.z * r8.z + r8.w;
                  r15.w = r15.w * r15.w;
                  r15.w = r15.w * r5.w;
                  r15.w = r15.w * r21.w;
                  r15.w = rcp(r15.w);
                  r16.z = r16.z * r23.w;
                  r15.w = r16.z * r15.w;
                  r32.xyz = r15.www * r34.xyz;
                  r33.xyz = r15.www * r34.xyz + r24.xyz;
                  r15.w = saturate(1 + -r19.w);
                  r16.z = r15.w * r15.w;
                  r16.z = r16.z * r16.z;
                  r15.w = r16.z * r15.w;
                  r32.xyz = r32.xyz * r15.www + r23.xyz;
                  r17.xyz = r16.www ? r35.xyz : r17.xyz;
                  r23.xyz = r16.www ? r32.xyz : r23.xyz;
                  r24.xyz = r16.www ? r33.xyz : r24.xyz;
                }
              }
            }
            break;
            case 2 :            r32.xy = r28.zw;
            r32.z = r29.w;
            r32.xyz = -v5.xyz + r32.xyz;
            r15.w = dot(r32.xyz, r32.xyz);
            r15.w = rsqrt(r15.w);
            r33.xyz = r32.xyz * r15.www;
            r16.z = dot(r4.xyz, r33.xyz);
            r16.w = saturate(r16.z);
            r19.w = cmp(0 < r16.w);
            if (r19.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r12.y, l(112), t12.yzwx
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r12.y, l(128), t12.zxyw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
              r35.xyz = r33.xyz;
              r35.w = r34.y;
              r19.w = dot(r35.xyzw, r18.xyzw);
              r21.w = cmp(r19.w < 1);
              if (r21.w != 0) {
                r36.xyz = float3(1,1,1);
                r21.w = 0;
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r12.y, l(172), t12.yzwx
              r37.x = samp0[]..swiz;
              r37.y = samp0[]..swiz;
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r12.y, l(188), t12.wxyz
              r38.x = samp0[]..swiz;
              r38.y = samp0[]..swiz;
              r38.z = samp0[]..swiz;
              r38.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r12.y, l(204), t12.xyzw
              r39.x = samp0[]..swiz;
              r39.y = samp0[]..swiz;
              r39.z = samp0[]..swiz;
              r39.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.w, r12.y, l(236), t12.xxxx
              r22.w = samp0[]..swiz;
                r40.xyz = -v5.xyz + r25.yzw;
                r23.w = r28.x * r28.x;
                r24.w = dot(r40.xyz, r40.xyz);
                r23.w = r23.w / r24.w;
                r23.w = min(1, r23.w);
                r27.xy = saturate(r19.ww * r27.xz + r27.yw);
                r27.zw = r27.xy * r27.xy;
                r27.xy = r27.xy * float2(-2,-2) + float2(3,3);
                r27.xy = r27.zw * r27.xy;
                r23.w = r27.x * r23.w;
                r23.w = r23.w * r27.y;
                r29.w = r30.x;
                r27.x = dot(r29.xyzw, r18.xyzw);
                r40.xyz = r30.yzw;
                r40.w = r31.w;
                r27.y = dot(r40.xyzw, r18.xyzw);
                r19.xy = r27.xy / r19.ww;
                r19.w = cmp(r37.w < 0.00048828125);
                if (r19.w != 0) {
                  r38.y = r39.x;
                  r27.xy = saturate(abs(r19.xy) * r38.zw + r38.xy);
                  r27.zw = r27.xy * r27.xy;
                  r27.xy = r27.xy * float2(-2,-2) + float2(3,3);
                  r27.xy = r27.zw * r27.xy;
                  r19.w = r27.x * r27.y;
                } else {
                  r37.w = r38.y;
                  r27.xyzw = saturate(r37.xyzw * abs(r19.yyxx));
                  r27.xyzw = log2(r27.xyzw);
                  r27.xyzw = r38.xxxx * r27.xyzw;
                  r27.xyzw = exp2(r27.xyzw);
                  r27.xy = r27.xy + r27.zw;
                  r27.xy = log2(r27.xy);
                  r27.xy = r39.xx * r27.xy;
                  r27.xy = exp2(r27.xy);
                  r24.w = r38.z * r27.x;
                  r25.w = r38.w * r27.y + -1;
                  r24.w = r38.w * r27.y + -r24.w;
                  r24.w = saturate(r25.w / r24.w);
                  r25.w = r24.w * r24.w;
                  r24.w = r24.w * -2 + 3;
                  r19.w = r25.w * r24.w;
                }
                r21.w = r23.w * r19.w;
                r19.w = (int)r22.w & 255;
                if (r19.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r27.xyz, r12.y, l(220), t12.xyzx
                r27.x = samp0[]..swiz;
                r27.y = samp0[]..swiz;
                r27.z = samp0[]..swiz;
                  r22.w = dot(r39.yzw, r19.xyz);
                  r19.x = dot(r27.xyz, r19.xyz);
                  r27.x = frac(r22.w);
                  r27.y = frac(r19.x);
                  r19.x = (int)r19.w + -1;
                  r27.z = (uint)r19.x;
                  r36.xyz = gCookieArray.SampleLevel(samplerLinear_s, r27.xyz, 0).xyz;
                } else {
                  r36.xyz = float3(1,1,1);
                }
              }
              r25.yz = r26.yz;
              r19.xyw = r25.xyz * r36.xyz;
              r22.w = cmp(0 < r21.w);
              if (r22.w != 0) {
                if (3 == 0) r22.w = 0; else if (3+27 < 32) {                 r22.w = (uint)r26.w << (32-(3 + 27)); r22.w = (uint)r22.w >> (32-3);                } else r22.w = (uint)r26.w >> 27;
                r22.w = cmp((int)r22.w != 1);
                if (r22.w != 0) {
                  r22.w = abs(r16.z) * -0.200000003 + 0.400000006;
                  r20.xyz = r4.xyz * r22.www + v5.xyz;
                  r33.xyz = r31.xyz;
                  r22.w = dot(r33.xyzw, r20.xyzw);
                  r23.w = dot(r35.xyzw, r20.xyzw);
                  r24.w = cmp(r23.w >= r22.w);
                  if (r24.w != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.y, r12.y, l(144), t12.xxxx
                  r34.y = samp0[]..swiz;
                    r29.w = r30.x;
                    r25.x = dot(r29.xyzw, r20.xyzw);
                    r31.xyz = r30.yzw;
                    r25.y = dot(r31.xyzw, r20.xyzw);
                    r20.xy = r25.xy / r23.ww;
                    r20.xy = saturate(r20.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                    r20.xy = r20.xy * r34.zw + r34.xy;
                    r12.y = r22.w / r23.w;
                    r12.y = max(6.10351563e-05, r12.y);
                    r22.w = (int)r26.w & 0x0000ffff;
                    if (r9.w != 0) {
                      r25.z = (uint)r22.w;
                      r23.w = 0;
                      r24.w = 0;
                      while (true) {
                        r25.w = cmp((int)r24.w >= 8);
                        if (r25.w != 0) break;
                        r27.x = dot(icb[r24.w+0].yx, r2.xw);
                        r27.y = dot(icb[r24.w+0].xy, r8.xy);
                        r25.xy = r27.xy * r28.yy + r20.xy;
                        r25.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r12.y).x;
                        r23.w = r25.x * 0.125 + r23.w;
                        r24.w = (int)r24.w + 1;
                      }
                    } else {
                      r20.z = (uint)r22.w;
                      r23.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r12.y).x;
                    }
                    r12.y = r23.w * r23.w;
                    r12.y = r12.y * r23.w;
                  } else {
                    r12.y = 1;
                  }
                } else {
                  r12.y = 1;
                }
                r12.y = r21.w * r12.y;
                r20.x = cmp(0 < r12.y);
                if (r20.x != 0) {
                  r20.x = 0.166666672 * r26.x;
                  r19.xyw = r12.yyy * r19.xyw;
                  r12.y = -r16.w * r3.x + 1;
                  r12.y = r12.y * r12.y;
                  r12.y = -r12.y * 0.620000005 + 0.620000005;
                  r12.y = r12.y + -r16.w;
                  r12.y = r12.y * 0.816496611 + r16.w;
                  r16.z = cmp(0 < r16.z);
                  r25.xyz = r12.yyy * r19.xyw + r17.xyz;
                  r26.xyz = r32.xyz * r15.www + r6.xyz;
                  r12.y = dot(r26.xyz, r26.xyz);
                  r12.y = rsqrt(r12.y);
                  r26.xyz = r26.xyz * r12.yyy;
                  r12.y = dot(r4.xyz, r26.xyz);
                  r15.w = dot(r26.xyz, r6.xyz);
                  r20.y = dot(r26.xyz, r5.xyz);
                  r20.z = dot(r26.xyz, r3.yzw);
                  r20.yz = r20.yz * r20.yz;
                  r20.yz = r20.yz / r9.yz;
                  r20.y = r20.y + r20.z;
                  r12.y = abs(r12.y) * abs(r12.y) + r20.y;
                  r20.y = r16.w * r8.z + r8.w;
                  r12.y = r12.y * r12.y;
                  r12.y = r12.y * r5.w;
                  r12.y = r12.y * r20.y;
                  r12.y = rcp(r12.y);
                  r16.w = r20.x * r16.w;
                  r12.y = r16.w * r12.y;
                  r20.xyz = r12.yyy * r19.xyw;
                  r19.xyw = r12.yyy * r19.xyw + r24.xyz;
                  r12.y = saturate(1 + -r15.w);
                  r15.w = r12.y * r12.y;
                  r15.w = r15.w * r15.w;
                  r12.y = r15.w * r12.y;
                  r20.xyz = r20.xyz * r12.yyy + r23.xyz;
                  r17.xyz = r16.zzz ? r25.xyz : r17.xyz;
                  r23.xyz = r16.zzz ? r20.xyz : r23.xyz;
                  r24.xyz = r16.zzz ? r19.xyw : r24.xyz;
                }
              }
            }
            break;
            default :
            break;
          }
        }
      }
    }
    r10.yzw = r17.xyz;
    r21.xyz = r23.xyz;
    r22.xyz = r24.xyz;
    r7.y = (int)r7.y + 32;
  }
  r1.w = numRefProbes + -numOverrideProbes;
  r2.x = (int)r1.w & -32;
  r2.y = (int)r1.w + (int)-r2.x;
  r2.z = numRefProbes & -32;
  r2.w = (int)-r2.z + numRefProbes;
  r3.xy = float2(0,0);
  r5.w = 0;
  r6.yz = float2(0,1);
  r8.xy = float2(0,0);
  r9.xy = float2(0,0);
  r13.xy = float2(0,0);
  r14.xyzw = float4(0,0,0,0);
  r16.yzw = float3(0,0,0);
  r3.w = r2.x;
  while (true) {
    r6.w = cmp((uint)r3.w >= numRefProbes);
    if (r6.w != 0) break;
    r3.z = (uint)r3.w >> 5;
    r5.xyz = (int3)r3.xyz + (int3)r15.xyz;
    r3.z = visibleProbes.Load(r5.xyzw).x;
    r5.x = cmp((int)r2.x == (int)r3.w);
    bitmask.y = ((~(-1 << r2.y)) << 0) & 0xffffffff;  r5.y = (((uint)0 << 0) & bitmask.y) | ((uint)r3.z & ~bitmask.y);
    r3.z = r5.x ? r5.y : r3.z;
    r5.x = cmp((int)r2.z == (int)r3.w);
    if (r2.w == 0) r5.y = 0; else if (r2.w+0 < 32) {     r5.y = (uint)r3.z << (32-(r2.w + 0)); r5.y = (uint)r5.y >> (32-r2.w);    } else r5.y = (uint)r3.z >> 0;
    r3.z = r5.x ? r5.y : r3.z;
    r5.x = (int)r3.w + numLights;
    r17.xyzw = r14.xyzw;
    r18.xyz = r16.yzw;
    r5.y = r3.z;
    while (true) {
      if (r5.y == 0) break;
      r5.z = firstbitlow((uint)r5.y);
      r6.w = 1 << (int)r5.z;
      r7.x = (int)r5.y & (int)r6.w;
      if (r7.x != 0) {
        r5.y = (int)r5.y ^ (int)r6.w;
        r6.w = (int)r5.z + (int)r5.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r19.xyzw, r6.w, l(0), t11.xyzw
      r19.x = samp0[]..swiz;
      r19.y = samp0[]..swiz;
      r19.z = samp0[]..swiz;
      r19.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r20.xy, r6.w, l(16), t11.xyxx
      r20.x = samp0[]..swiz;
      r20.y = samp0[]..swiz;
        r19.xyz = -v5.xyz + r19.xyz;
        r20.z = r19.w;
        r19.xyz = cmp(abs(r19.xyz) < r20.zxy);
        r6.w = r19.y ? r19.x : 0;
        r6.w = r19.z ? r6.w : 0;
        if (r6.w != 0) {
          r5.z = (int)r3.w + (int)r5.z;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r19.xyzw, r5.z, l(0), t15.wxyz
        r19.x = samp0[]..swiz;
        r19.y = samp0[]..swiz;
        r19.z = samp0[]..swiz;
        r19.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r7.xy, r5.z, l(96), t15.xyxx
        r7.x = samp0[]..swiz;
        r7.y = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r20.xyzw, r5.z, l(116), t15.zwxy
        r20.x = samp0[]..swiz;
        r20.y = samp0[]..swiz;
        r20.z = samp0[]..swiz;
        r20.w = samp0[]..swiz;
          r23.xyz = v5.xyz + -r19.yzw;
          r6.w = (int)r20.w & 0x0000ffff;
          if (6 == 0) r8.w = 0; else if (6+25 < 32) {           r8.w = (uint)r20.w << (32-(6 + 25)); r8.w = (uint)r8.w >> (32-6);          } else r8.w = (uint)r20.w >> 25;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r24.xyzw, r6.w, l(0), t16.xyzw
        r24.x = samp0[]..swiz;
        r24.y = samp0[]..swiz;
        r24.z = samp0[]..swiz;
        r24.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r25.xyzw, r6.w, l(16), t16.xyzw
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        r25.z = samp0[]..swiz;
        r25.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r6.w, l(32), t16.xyzw
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
        r26.z = samp0[]..swiz;
        r26.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r6.w, l(48), t16.xyzw
        r27.x = samp0[]..swiz;
        r27.y = samp0[]..swiz;
        r27.z = samp0[]..swiz;
        r27.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r6.w, l(64), t16.xyzw
        r28.x = samp0[]..swiz;
        r28.y = samp0[]..swiz;
        r28.z = samp0[]..swiz;
        r28.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r6.w, l(80), t16.xyzw
        r29.x = samp0[]..swiz;
        r29.y = samp0[]..swiz;
        r29.z = samp0[]..swiz;
        r29.w = samp0[]..swiz;
          r9.w = dot(r24.xyz, r23.xyz);
          r9.w = saturate(r9.w + r24.w);
          r10.x = dot(r25.xyz, r23.xyz);
          r10.x = saturate(r10.x + r25.w);
          r9.w = r10.x * r9.w;
          r10.x = dot(r26.xyz, r23.xyz);
          r10.x = saturate(r10.x + r26.w);
          r9.w = r10.x * r9.w;
          r10.x = dot(r27.xyz, r23.xyz);
          r10.x = saturate(r10.x + r27.w);
          r9.w = r10.x * r9.w;
          r10.x = dot(r28.xyz, r23.xyz);
          r10.x = saturate(r10.x + r28.w);
          r9.w = r10.x * r9.w;
          r10.x = dot(r29.xyz, r23.xyz);
          r10.x = saturate(r10.x + r29.w);
          r6.x = r10.x * r9.w;
          r9.w = (int)r7.x & 1;
          r12.xy = r9.ww ? r6.xy : r6.zx;
          r6.x = r7.x;
          r24.xy = r12.xy;
          r9.w = 1;
          while (true) {
            r10.x = cmp((int)r9.w >= (int)r8.w);
            if (r10.x != 0) break;
            r10.x = (int)r6.w + (int)r9.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r25.xyzw, r10.x, l(0), t16.xyzw
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r10.x, l(16), t16.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r10.x, l(32), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r10.x, l(48), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r10.x, l(64), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r10.x, l(80), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
            r10.x = dot(r25.xyz, r23.xyz);
            r10.x = saturate(r10.x + r25.w);
            r10.x = r24.x * r10.x;
            r13.w = dot(r26.xyz, r23.xyz);
            r13.w = saturate(r13.w + r26.w);
            r10.x = r13.w * r10.x;
            r13.w = dot(r27.xyz, r23.xyz);
            r13.w = saturate(r13.w + r27.w);
            r10.x = r13.w * r10.x;
            r13.w = dot(r28.xyz, r23.xyz);
            r13.w = saturate(r13.w + r28.w);
            r10.x = r13.w * r10.x;
            r13.w = dot(r29.xyz, r23.xyz);
            r13.w = saturate(r13.w + r29.w);
            r10.x = r13.w * r10.x;
            r13.w = dot(r30.xyz, r23.xyz);
            r13.w = saturate(r13.w + r30.w);
            r24.x = r13.w * r10.x;
            r15.w = (uint)r6.x >> 2;
            if (1 == 0) r19.w = 0; else if (1+2 < 32) {             r19.w = (uint)r6.x << (32-(1 + 2)); r19.w = (uint)r19.w >> (32-1);            } else r19.w = (uint)r6.x >> 2;
            r21.w = (int)r15.w & 2;
            r22.w = max(r24.y, r24.x);
            r10.x = -r10.x * r13.w + 1;
            r10.x = r24.y * r10.x;
            r12.w = r21.w ? r10.x : r22.w;
            r24.xy = r19.ww ? r24.xy : r12.zw;
            r9.w = (int)r9.w + 1;
            r6.x = r15.w;
          }
          r24.y = saturate(r24.y);
          r6.x = r24.y * r7.y;
          r6.w = cmp(0 < r6.x);
          if (r6.w != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r5.z, l(16), t15.xyzw
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r5.z, l(32), t15.yxwz
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r5.z, l(48), t15.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r5.z, l(64), t15.zwxy
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r5.z, l(80), t15.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r5.z, l(132), t15.zwxy
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r5.z, l(148), t15.zwxy
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r5.z, l(164), t15.zwxy
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r5.z, l(180), t15.zwxy
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r5.z, l(196), t15.xyzw
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xy, r5.z, l(212), t15.xyxx
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
            r18.z = r24.y * r7.y + r18.z;
            r5.z = r6.x * r20.z;
            r20.z = r30.z;
            r6.x = dot(r11.xyz, r20.xyz);
            r6.w = dot(r23.xyz, r20.xyz);
            r6.w = r6.w + -r30.w;
            r7.x = cmp(r6.w >= 0);
            r6.w = max(100, abs(r6.w));
            r6.w = r7.x ? r6.w : -r6.w;
            r6.x = max(1.00000001e-07, -r6.x);
            r6.x = r6.w / r6.x;
            r6.x = min(131072, abs(r6.x));
            r30.z = r31.z;
            r6.w = dot(r11.xyz, r30.xyz);
            r7.x = dot(r23.xyz, r30.xyz);
            r7.x = r7.x + -r31.w;
            r7.y = cmp(r7.x >= 0);
            r7.x = max(100, abs(r7.x));
            r7.x = r7.y ? r7.x : -r7.x;
            r6.w = max(1.00000001e-07, -r6.w);
            r6.w = r7.x / r6.w;
            r6.x = min(r6.x, abs(r6.w));
            r31.z = r32.z;
            r6.w = dot(r11.xyz, r31.xyz);
            r7.x = dot(r23.xyz, r31.xyz);
            r7.x = r7.x + -r32.w;
            r7.y = cmp(r7.x >= 0);
            r7.x = max(100, abs(r7.x));
            r7.x = r7.y ? r7.x : -r7.x;
            r6.w = max(1.00000001e-07, -r6.w);
            r6.w = r7.x / r6.w;
            r6.x = min(r6.x, abs(r6.w));
            r32.z = r33.z;
            r6.w = dot(r11.xyz, r32.xyz);
            r7.x = dot(r23.xyz, r32.xyz);
            r7.x = r7.x + -r33.w;
            r7.y = cmp(r7.x >= 0);
            r7.x = max(100, abs(r7.x));
            r7.x = r7.y ? r7.x : -r7.x;
            r6.w = max(1.00000001e-07, -r6.w);
            r6.w = r7.x / r6.w;
            r6.x = min(r6.x, abs(r6.w));
            r33.z = r34.x;
            r6.w = dot(r11.xyz, r33.xyz);
            r7.x = dot(r23.xyz, r33.xyz);
            r7.x = r7.x + -r34.y;
            r7.y = cmp(r7.x >= 0);
            r7.x = max(100, abs(r7.x));
            r7.x = r7.y ? r7.x : -r7.x;
            r6.w = max(1.00000001e-07, -r6.w);
            r6.w = r7.x / r6.w;
            r6.x = min(r6.x, abs(r6.w));
            r35.zw = r34.zw;
            r6.w = dot(r11.zxy, r35.xzw);
            r7.x = dot(r23.zxy, r35.xzw);
            r7.x = r7.x + -r35.y;
            r7.y = cmp(r7.x >= 0);
            r7.x = max(100, abs(r7.x));
            r7.x = r7.y ? r7.x : -r7.x;
            r6.w = max(1.00000001e-07, -r6.w);
            r6.w = r7.x / r6.w;
            r6.x = min(r6.x, abs(r6.w));
            r20.x = r27.w;
            r20.yz = r28.zw;
            r12.xyw = r20.xyz + r23.xyz;
            r12.xyw = r11.xyz * r6.xxx + r12.xyw;
            r6.w = dot(r12.xyw, r12.xyw);
            r6.w = sqrt(r6.w);
            r6.x = r6.x / r6.w;
            r6.x = r6.x + r6.x;
            r6.x = sqrt(r6.x);
            r6.x = 4.1552 + r6.x;
            r19.y = r25.z;
            r19.z = r26.x;
            r30.x = dot(r12.xyw, r19.xyz);
            r20.xy = r25.xw;
            r20.z = r26.w;
            r30.y = dot(r12.xyw, r20.xyz);
            r26.x = r25.y;
            r30.z = dot(r12.xyw, r26.xyz);
            if (9 == 0) r6.w = 0; else if (9+16 < 32) {             r6.w = (uint)r20.w << (32-(9 + 16)); r6.w = (uint)r6.w >> (32-9);            } else r6.w = (uint)r20.w >> 16;
            r30.w = (uint)r6.w;
            r12.xyw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r30.xyzw, r6.x).xyz;
            r25.x = dot(r23.xyz, r19.xyz);
            r25.y = dot(r23.xyz, r20.xyz);
            r25.z = dot(r23.xyz, r26.xyz);
            r23.xyz = saturate(r25.xyz * r27.xyz + float3(0.5,0.5,0.5));
            r28.z = r29.x;
            r23.xyz = r23.xyz * r28.xyz + r29.yzw;
            r30.x = dot(r4.xyz, r19.xyz);
            r30.y = dot(r4.xyz, r20.xyz);
            r30.z = dot(r4.xyz, r26.xyz);
            r19.xyz = cmp(float3(0,0,0) < r30.xyz);
            r8.z = r19.x ? 0 : 0.5;
            r20.xyz = r23.xyz + r8.xyz;
            r20.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r20.xyz, 0).xyz;
            r24.xzw = r30.xyz * r30.xyz;
            r24.xzw = r24.xzw * r5.zzz;
            r9.z = r19.y ? 0 : 0.5;
            r19.xyw = r23.xyz + r9.xyz;
            r19.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r19.xyw, 0).xyz;
            r19.xyw = r19.xyw * r24.zzz;
            r19.xyw = r20.xyz * r24.xxx + r19.xyw;
            r13.z = r19.z ? 0 : 0.5;
            r20.xyz = r23.xyz + r13.xyz;
            r20.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r20.xyz, 0).xyz;
            r19.xyz = r20.xyz * r24.www + r19.xyw;
            r20.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r30.xyzw, 6).xyz;
            r23.xyz = r20.xyz * r19.xyz;
            r6.x = dot(r23.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r17.xyz = r19.xyz * r20.xyz + r17.xyz;
            r6.w = 1.26815999 * r6.x;
            r12.xyw = r12.xyw * r5.zzz;
            r5.z = dot(r12.xyw, float3(0.212599993,0.715200007,0.0722000003));
            r5.z = r6.x * 1.26815999 + r5.z;
            r5.z = r6.w / r5.z;
            r19.x = r17.w;
            r19.yz = r18.xy;
            r18.xyw = r12.ywx * r5.zzz + r19.yzx;
            r17.w = r18.w;
          }
        }
      }
    }
    r14.xyzw = r17.xyzw;
    r16.yzw = r18.xyz;
    r3.w = (int)r3.w + 32;
  }
  r2.z = cmp(r16.w < 1);
  if (r2.z != 0) {
    r3.xy = float2(0,0);
    r5.w = 0;
    r6.yz = float2(0,1);
    r8.xy = float2(0,0);
    r7.x = 1;
    r9.xy = float2(0,0);
    r12.xy = float2(0,0);
    r13.x = r14.w;
    r13.yzw = r16.yzw;
    r17.xyz = r14.xyz;
    r2.z = r16.w;
    r2.w = 0;
    while (true) {
      r3.w = cmp((uint)r2.w >= (uint)r1.w);
      if (r3.w != 0) break;
      r3.z = (uint)r2.w >> 5;
      r5.xyz = (int3)r3.xyz + (int3)r15.xyz;
      r3.z = visibleProbes.Load(r5.xyzw).x;
      r3.w = cmp((int)r2.x == (int)r2.w);
      if (r2.y == 0) r5.x = 0; else if (r2.y+0 < 32) {       r5.x = (uint)r3.z << (32-(r2.y + 0)); r5.x = (uint)r5.x >> (32-r2.y);      } else r5.x = (uint)r3.z >> 0;
      r3.z = r3.w ? r5.x : r3.z;
      r3.w = (int)r2.w + numLights;
      r18.xyzw = r13.xyzw;
      r5.xyz = r17.xyz;
      r6.w = r2.z;
      r8.w = r3.z;
      while (true) {
        if (r8.w == 0) break;
        r9.w = firstbitlow((uint)r8.w);
        r10.x = 1 << (int)r9.w;
        r12.w = (int)r8.w & (int)r10.x;
        if (r12.w != 0) {
          r8.w = (int)r8.w ^ (int)r10.x;
          r10.x = (int)r3.w + (int)r9.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r19.xyzw, r10.x, l(0), t11.xyzw
        r19.x = samp0[]..swiz;
        r19.y = samp0[]..swiz;
        r19.z = samp0[]..swiz;
        r19.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r20.xy, r10.x, l(16), t11.xyxx
        r20.x = samp0[]..swiz;
        r20.y = samp0[]..swiz;
          r19.xyz = -v5.xyz + r19.xyz;
          r20.z = r19.w;
          r19.xyz = cmp(abs(r19.xyz) < r20.zxy);
          r10.x = r19.y ? r19.x : 0;
          r10.x = r19.z ? r10.x : 0;
          if (r10.x != 0) {
            r9.w = (int)r2.w + (int)r9.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r19.xyzw, r9.w, l(0), t15.wxyz
          r19.x = samp0[]..swiz;
          r19.y = samp0[]..swiz;
          r19.z = samp0[]..swiz;
          r19.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r20.xy, r9.w, l(96), t15.xyxx
          r20.x = samp0[]..swiz;
          r20.y = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r9.w, l(116), t15.zwxy
          r23.x = samp0[]..swiz;
          r23.y = samp0[]..swiz;
          r23.z = samp0[]..swiz;
          r23.w = samp0[]..swiz;
            r24.xyz = v5.xyz + -r19.yzw;
            r10.x = (int)r23.w & 0x0000ffff;
            if (6 == 0) r12.w = 0; else if (6+25 < 32) {             r12.w = (uint)r23.w << (32-(6 + 25)); r12.w = (uint)r12.w >> (32-6);            } else r12.w = (uint)r23.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r25.xyzw, r10.x, l(0), t16.xyzw
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r10.x, l(16), t16.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r10.x, l(32), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r10.x, l(48), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r10.x, l(64), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r10.x, l(80), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
            r15.w = dot(r25.xyz, r24.xyz);
            r15.w = saturate(r15.w + r25.w);
            r17.w = dot(r26.xyz, r24.xyz);
            r17.w = saturate(r17.w + r26.w);
            r15.w = r17.w * r15.w;
            r17.w = dot(r27.xyz, r24.xyz);
            r17.w = saturate(r17.w + r27.w);
            r15.w = r17.w * r15.w;
            r17.w = dot(r28.xyz, r24.xyz);
            r17.w = saturate(r17.w + r28.w);
            r15.w = r17.w * r15.w;
            r17.w = dot(r29.xyz, r24.xyz);
            r17.w = saturate(r17.w + r29.w);
            r15.w = r17.w * r15.w;
            r17.w = dot(r30.xyz, r24.xyz);
            r17.w = saturate(r17.w + r30.w);
            r6.x = r17.w * r15.w;
            r15.w = (int)r20.x & 1;
            r20.zw = r15.ww ? r6.xy : r6.zx;
            r6.x = r20.x;
            r25.xy = r20.zw;
            r15.w = 1;
            while (true) {
              r17.w = cmp((int)r15.w >= (int)r12.w);
              if (r17.w != 0) break;
              r17.w = (int)r10.x + (int)r15.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r17.w, l(0), t16.xyzw
            r26.x = samp0[]..swiz;
            r26.y = samp0[]..swiz;
            r26.z = samp0[]..swiz;
            r26.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r17.w, l(16), t16.xyzw
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r17.w, l(32), t16.xyzw
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r17.w, l(48), t16.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r17.w, l(64), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r17.w, l(80), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
              r17.w = dot(r26.xyz, r24.xyz);
              r17.w = saturate(r17.w + r26.w);
              r17.w = r25.x * r17.w;
              r19.w = dot(r27.xyz, r24.xyz);
              r19.w = saturate(r19.w + r27.w);
              r17.w = r19.w * r17.w;
              r19.w = dot(r28.xyz, r24.xyz);
              r19.w = saturate(r19.w + r28.w);
              r17.w = r19.w * r17.w;
              r19.w = dot(r29.xyz, r24.xyz);
              r19.w = saturate(r19.w + r29.w);
              r17.w = r19.w * r17.w;
              r19.w = dot(r30.xyz, r24.xyz);
              r19.w = saturate(r19.w + r30.w);
              r17.w = r19.w * r17.w;
              r19.w = dot(r31.xyz, r24.xyz);
              r19.w = saturate(r19.w + r31.w);
              r25.x = r19.w * r17.w;
              r21.w = (uint)r6.x >> 2;
              if (1 == 0) r22.w = 0; else if (1+2 < 32) {               r22.w = (uint)r6.x << (32-(1 + 2)); r22.w = (uint)r22.w >> (32-1);              } else r22.w = (uint)r6.x >> 2;
              r24.w = (int)r21.w & 2;
              r25.z = max(r25.y, r25.x);
              r17.w = -r17.w * r19.w + 1;
              r17.w = r25.y * r17.w;
              r7.y = r24.w ? r17.w : r25.z;
              r25.xy = r22.ww ? r25.xy : r7.xy;
              r15.w = (int)r15.w + 1;
              r6.x = r21.w;
            }
            r6.x = saturate(r25.y + -r6.w);
            r7.y = r6.x * r20.y;
            r10.x = cmp(0 < r7.y);
            if (r10.x != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r9.w, l(16), t15.xyzw
            r26.x = samp0[]..swiz;
            r26.y = samp0[]..swiz;
            r26.z = samp0[]..swiz;
            r26.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r9.w, l(32), t15.yxwz
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r9.w, l(48), t15.xyzw
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r9.w, l(64), t15.zwxy
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r9.w, l(80), t15.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r9.w, l(132), t15.zwxy
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r9.w, l(148), t15.zwxy
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r9.w, l(164), t15.zwxy
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r9.w, l(180), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r9.w, l(196), t15.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xy, r9.w, l(212), t15.xyxx
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
              r18.w = r6.x * r20.y + r18.w;
              r6.x = r7.y * r23.z;
              r23.z = r31.z;
              r7.y = dot(r11.xyz, r23.xyz);
              r9.w = dot(r24.xyz, r23.xyz);
              r9.w = r9.w + -r31.w;
              r10.x = cmp(r9.w >= 0);
              r9.w = max(100, abs(r9.w));
              r9.w = r10.x ? r9.w : -r9.w;
              r7.y = max(1.00000001e-07, -r7.y);
              r7.y = r9.w / r7.y;
              r7.y = min(131072, abs(r7.y));
              r31.z = r32.z;
              r9.w = dot(r11.xyz, r31.xyz);
              r10.x = dot(r24.xyz, r31.xyz);
              r10.x = r10.x + -r32.w;
              r12.w = cmp(r10.x >= 0);
              r10.x = max(100, abs(r10.x));
              r10.x = r12.w ? r10.x : -r10.x;
              r9.w = max(1.00000001e-07, -r9.w);
              r9.w = r10.x / r9.w;
              r7.y = min(abs(r9.w), r7.y);
              r32.z = r33.z;
              r9.w = dot(r11.xyz, r32.xyz);
              r10.x = dot(r24.xyz, r32.xyz);
              r10.x = r10.x + -r33.w;
              r12.w = cmp(r10.x >= 0);
              r10.x = max(100, abs(r10.x));
              r10.x = r12.w ? r10.x : -r10.x;
              r9.w = max(1.00000001e-07, -r9.w);
              r9.w = r10.x / r9.w;
              r7.y = min(abs(r9.w), r7.y);
              r33.z = r34.z;
              r9.w = dot(r11.xyz, r33.xyz);
              r10.x = dot(r24.xyz, r33.xyz);
              r10.x = r10.x + -r34.w;
              r12.w = cmp(r10.x >= 0);
              r10.x = max(100, abs(r10.x));
              r10.x = r12.w ? r10.x : -r10.x;
              r9.w = max(1.00000001e-07, -r9.w);
              r9.w = r10.x / r9.w;
              r7.y = min(abs(r9.w), r7.y);
              r34.z = r35.x;
              r9.w = dot(r11.xyz, r34.xyz);
              r10.x = dot(r24.xyz, r34.xyz);
              r10.x = r10.x + -r35.y;
              r12.w = cmp(r10.x >= 0);
              r10.x = max(100, abs(r10.x));
              r10.x = r12.w ? r10.x : -r10.x;
              r9.w = max(1.00000001e-07, -r9.w);
              r9.w = r10.x / r9.w;
              r7.y = min(abs(r9.w), r7.y);
              r36.zw = r35.zw;
              r9.w = dot(r11.zxy, r36.xzw);
              r10.x = dot(r24.zxy, r36.xzw);
              r10.x = r10.x + -r36.y;
              r12.w = cmp(r10.x >= 0);
              r10.x = max(100, abs(r10.x));
              r10.x = r12.w ? r10.x : -r10.x;
              r9.w = max(1.00000001e-07, -r9.w);
              r9.w = r10.x / r9.w;
              r7.y = min(abs(r9.w), r7.y);
              r20.x = r28.w;
              r20.yz = r29.zw;
              r20.xyz = r20.xyz + r24.xyz;
              r20.xyz = r11.xyz * r7.yyy + r20.xyz;
              r9.w = dot(r20.xyz, r20.xyz);
              r9.w = sqrt(r9.w);
              r7.y = r7.y / r9.w;
              r7.y = r7.y + r7.y;
              r7.y = sqrt(r7.y);
              r7.y = 4.1552 + r7.y;
              r19.y = r26.z;
              r19.z = r27.x;
              r31.x = dot(r20.xyz, r19.xyz);
              r23.xy = r26.xw;
              r23.z = r27.w;
              r31.y = dot(r20.xyz, r23.xyz);
              r27.x = r26.y;
              r31.z = dot(r20.xyz, r27.xyz);
              if (9 == 0) r9.w = 0; else if (9+16 < 32) {               r9.w = (uint)r23.w << (32-(9 + 16)); r9.w = (uint)r9.w >> (32-9);              } else r9.w = (uint)r23.w >> 16;
              r31.w = (uint)r9.w;
              r20.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r31.xyzw, r7.y).xyz;
              r26.x = dot(r24.xyz, r19.xyz);
              r26.y = dot(r24.xyz, r23.xyz);
              r26.z = dot(r24.xyz, r27.xyz);
              r24.xyz = saturate(r26.xyz * r28.xyz + float3(0.5,0.5,0.5));
              r29.z = r30.x;
              r24.xyz = r24.xyz * r29.xyz + r30.yzw;
              r31.x = dot(r4.xyz, r19.xyz);
              r31.y = dot(r4.xyz, r23.xyz);
              r31.z = dot(r4.xyz, r27.xyz);
              r19.xyz = cmp(float3(0,0,0) < r31.xyz);
              r8.z = r19.x ? 0 : 0.5;
              r23.xyz = r24.xyz + r8.xyz;
              r23.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
              r25.xzw = r31.xyz * r31.xyz;
              r25.xzw = r25.xzw * r6.xxx;
              r9.z = r19.y ? 0 : 0.5;
              r19.xyw = r24.xyz + r9.xyz;
              r19.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r19.xyw, 0).xyz;
              r19.xyw = r19.xyw * r25.zzz;
              r19.xyw = r23.xyz * r25.xxx + r19.xyw;
              r12.z = r19.z ? 0 : 0.5;
              r23.xyz = r24.xyz + r12.xyz;
              r23.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
              r19.xyz = r23.xyz * r25.www + r19.xyw;
              r23.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r31.xyzw, 6).xyz;
              r24.xyz = r23.xyz * r19.xyz;
              r7.y = dot(r24.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r5.xyz = r19.xyz * r23.xyz + r5.xyz;
              r8.z = 1.26815999 * r7.y;
              r19.xyz = r20.xyz * r6.xxx;
              r6.x = dot(r19.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r6.x = r7.y * 1.26815999 + r6.x;
              r6.x = r8.z / r6.x;
              r18.xyz = r19.xyz * r6.xxx + r18.xyz;
            }
          }
        }
      }
      r13.xyzw = r18.xyzw;
      r17.xyz = r5.xyz;
      r2.w = (int)r2.w + 32;
    }
    r16.xyzw = r13.zxyw;
    r14.xyz = r17.xyz;
    r16.xyzw = r16.yzxw;
  } else {
    r16.x = r14.w;
  }
  r1.w = max(1, r16.w);
  r1.w = rcp(r1.w);
  r16.w = saturate(r16.w);
  r2.xyz = r14.xyz * r1.www;
  r3.xyz = r16.xyz * r1.www;
  r2.w = cmp(r16.w < 0.99000001);
  if (r2.w != 0) {
    r2.w = 1 + -r16.w;
    r2.w = sunConstants.globalProbeExposure * r2.w;
    r5.xyz = -globalProbeConstants.data[0].xyz + v5.xyz;
    r6.x = globalProbeConstants.data[0].w * r5.x;
    r6.yz = globalProbeConstants.data[1].xy * r5.yz;
    r5.xyz = saturate(float3(0.5,0.5,0.5) + r6.xyz);
    r6.xy = globalProbeConstants.data[1].zw * r5.xy;
    r6.z = globalProbeConstants.data[2].x * r5.z;
    r5.xyz = globalProbeConstants.data[2].yzw + r6.xyz;
    r6.xyz = cmp(float3(0,0,0) < r4.xyz);
    r6.xyz = r6.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r6.w = 0;
    r8.xyz = r6.wwx + r5.xyz;
    r8.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r8.xyz, 0).xyz;
    r9.xyz = r4.xyz * r4.xyz;
    r9.xyz = r9.xyz * r2.www;
    r12.xyz = r6.wwy + r5.xyz;
    r12.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r12.xyz, 0).xyz;
    r12.xyz = r12.xyz * r9.yyy;
    r8.xyz = r8.xyz * r9.xxx + r12.xyz;
    r5.xyz = r6.wwz + r5.xyz;
    r5.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r5.xyz, 0).xyz;
    r5.xyz = r5.xyz * r9.zzz + r8.xyz;
    r4.w = 0;
    r4.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r4.xyzw, 6).xyz;
    r4.xyz = r5.xyz * r4.xyz;
    r2.w = dot(r4.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r2.xyz = r14.xyz * r1.www + r4.xyz;
    r11.w = 0;
    r4.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, 5).xyz;
    r3.xyz = r4.xyz * r2.www + r3.xyz;
  }
  r2.xyz = r2.xyz * r0.www + r10.yzw;
  r7.w = 0;
  r4.xy = float2(0.0078125,0.0078125) + r7.zw;
  r4.xy = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r4.xy, 0).xy;
  r3.xyz = r3.xyz * r0.www;
  r4.xzw = r3.xyz * r4.xxx + r21.xyz;
  r3.xyz = r3.xyz * r4.yyy + r22.xyz;
  r5.xyz = float3(1,1,1) + -r1.xyz;
  r4.xyz = r5.xyz * r4.xzw;
  r1.xyz = r3.xyz * r1.xyz + r4.xyz;
  r0.xyz = r2.xyz * r0.xyz + r1.xyz;
  r0.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.w != 0) {
    r0.w = dot(v5.xyz, v5.xyz);
    r1.x = rsqrt(r0.w);
    r1.xyz = v5.xyz * r1.xxx;
    r0.w = sqrt(r0.w);
    r1.w = cmp(0 < fogConstants.blendAmount);
    if (r1.w != 0) {
      r2.xy = r0.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r2.xy = fogConstants.atmospherefogdensityatcamera.xy * r2.xy;
      r1.w = cmp(0.00999999978 < abs(v5.z));
      r2.zw = fogConstants.atmospherefogheightdensityscale.xy * v5.zz;
      r3.xy = float2(-1.44269502,-1.44269502) * r2.zw;
      r3.xy = exp2(r3.xy);
      r3.xy = float2(1,1) + -r3.xy;
      r2.zw = r3.xy / r2.zw;
      r2.zw = r2.xy * r2.zw;
      r2.xy = r1.ww ? r2.zw : r2.xy;
      r2.xzw = fogConstants.atmosphereTotalDensity.xyz * r2.xxx;
      r2.xzw = exp2(r2.xzw);
      r3.xyz = fogConstants.atmosphereTotalDensity.xyz * r2.yyy;
      r3.xyz = exp2(r3.xyz);
      r3.xyz = r3.xyz + -r2.xzw;
      r2.xyz = fogConstants.blendAmount * r3.xyz + r2.xzw;
    } else {
      r1.w = r0.w * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r1.w = fogConstants.atmospherefogdensityatcamera.x * r1.w;
      r2.w = cmp(0.00999999978 < abs(v5.z));
      r3.x = fogConstants.atmospherefogheightdensityscale.x * v5.z;
      r3.y = -1.44269502 * r3.x;
      r3.y = exp2(r3.y);
      r3.y = 1 + -r3.y;
      r3.x = r3.y / r3.x;
      r3.x = r3.x * r1.w;
      r1.w = r2.w ? r3.x : r1.w;
      r3.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.www;
      r2.xyz = exp2(r3.xyz);
    }
    r2.xyz = r2.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r2.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r2.xyz);
    r1.x = dot(fogConstants.wldSunFogDir.xyz, -r1.xyz);
    r1.y = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r1.z = fogConstants.atmosphereMieSchlickK * -r1.x + 1;
    r1.z = r1.z * r1.z;
    r1.z = 12.566371 * r1.z;
    r1.y = r1.y / r1.z;
    r0.w = -fogConstants.atmospherehazebasedist + r0.w;
    r0.w = saturate(fogConstants.atmospherehazefadedist * r0.w);
    r0.w = r1.y * r0.w;
    r1.x = saturate(r1.x);
    r1.x = r1.x * r1.x + 1;
    r1.x = r1.x * 0.0596831031 + -1;
    r1.x = fogConstants.atmospheresunstrength * r1.x + 1;
    r1.yzw = fogConstants.atmosphereMieDensity.xyz * r0.www;
    r1.xyz = r1.xxx * fogConstants.atmosphereRayleighDensity.xyz + r1.yzw;
    r1.xyz = fogConstants.atmosphereInScatterIntensity * r1.xyz;
    r3.xyz = float3(1,1,1) + -r2.xyz;
    r1.xyz = r3.xyz * r1.xyz;
    r1.xyz = r0.xyz * r2.xyz + r1.xyz;
  } else {
    r0.w = fogConstants.heightFalloff * v5.z;
    r1.w = fogConstants.heightFalloff * v5.z + fogConstants.K0;
    r2.x = cmp(abs(r0.w) < 9.99999975e-05);
    r2.y = min(64, r1.w);
    r2.y = 1.44269502 * r2.y;
    r2.y = exp2(r2.y);
    r2.z = saturate(fogConstants.K0b);
    r2.w = cmp(r1.w < 0);
    r1.w = 1 + r1.w;
    r1.w = r2.w ? r2.y : r1.w;
    r1.w = -fogConstants.K0b + r1.w;
    r0.w = r2.x ? 1 : r0.w;
    r0.w = r1.w / r0.w;
    r0.w = r2.x ? r2.z : r0.w;
    r0.w = fogConstants.expMul * r0.w;
    r1.w = dot(v5.xyz, v5.xyz);
    r2.x = sqrt(r1.w);
    r0.w = r0.w * r2.x + fogConstants.expAdd;
    r0.w = exp2(r0.w);
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r1.w = rsqrt(r1.w);
    r2.xyz = v5.xyz * r1.www;
    r1.w = dot(fogConstants.wldSunFogDir.xyz, r2.xyz);
    r1.w = saturate(fogConstants.sunFogAngles.y * r1.w + fogConstants.sunFogAngles.x);
    r2.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r2.xyzw = r1.wwww * r2.xyzw + fogConstants.sunFogColor.xyzw;
    r0.w = r2.w * r0.w;
    r2.xyz = r2.xyz + -r0.xyz;
    r1.xyz = r0.www * r2.xyz + r0.xyz;
  }
  r0.xyz = relHDRExposure.yyy * r1.xyz;
  r1.xyz = cmp(r0.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r0.xyz = r1.xyz ? r0.xyz : 0;
  o0.xyz = min(float3(65024,65024,64512), r0.xyz);
  return;
}