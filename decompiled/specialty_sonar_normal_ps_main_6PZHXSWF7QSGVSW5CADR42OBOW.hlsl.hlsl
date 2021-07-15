// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:42:54 2021

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
  float3 diffuseAlbedo : packoffset(c12);
  float4 scanlineConsts : packoffset(c13);
  float4 scanlineConsts1 : packoffset(c14);
  float2 falloffParms : packoffset(c15);
  float2 noiseScroll : packoffset(c15.z);
  float2 noiseScale : packoffset(c16);
  float hdrScale : packoffset(c16.z);
  float minScanlineEffect : packoffset(c16.w);
  float2 edgeFalloffParms : packoffset(c17);
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
SamplerState bilinearSampler_s : register(s1);
SamplerState samplerLinear_s : register(s2);
SamplerState samplerLinearClamp_s : register(s4);
SamplerComparisonState ShadowSamplerComparisonState_s : register(s13);
Texture2D<float4> noiseTexture : register(t0);
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
  uint4 v2 : TEXCOORD4,
  float4 v3 : TEXCOORD1,
  float4 v4 : TEXCOORD2,
  float3 v5 : TEXCOORD3,
  float3 v6 : OFFPOSITION0,
  float4 v7 : TEXCOORD9,
  float3 v8 : TEXCOORD10,
  uint v9 : SV_IsFrontFace0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = gameTime.w * scanlineConsts.z;
  r0.x = v8.z * scanlineConsts.w + r0.x;
  r0.x = sin(r0.x);
  r0.x = r0.x * 0.5 + 0.5;
  r0.x = log2(r0.x);
  r0.x = scanlineConsts.x * r0.x;
  r0.x = exp2(r0.x);
  r0.y = saturate(1 + -scanlineConsts.y);
  r0.x = r0.x + r0.y;
  r0.y = gameTime.w * scanlineConsts1.z;
  r0.yz = v8.yx * scanlineConsts1.ww + r0.yy;
  r0.yz = sin(r0.yz);
  r0.yz = r0.yz * float2(0.5,0.5) + float2(0.5,0.5);
  r0.yz = log2(r0.yz);
  r0.yz = scanlineConsts1.xx * r0.yz;
  r0.yz = exp2(r0.yz);
  r0.w = saturate(1 + -scanlineConsts1.y);
  r0.yz = r0.yz + r0.ww;
  r0.xyz = min(float3(1,1,1), r0.xyz);
  r0.x = r0.x * r0.y;
  r0.yw = gameTime.ww * noiseScroll.xy;
  r0.yw = v7.xy * noiseScale.xy + r0.yw;
  r0.y = noiseTexture.Sample(bilinearSampler_s, r0.yw).x;
  r0.x = saturate(r0.x * r0.z + r0.y);
  r0.yzw = v9.xxx ? v3.xyz : -v3.xyz;
  r1.x = dot(r0.yzw, r0.yzw);
  r1.x = rsqrt(r1.x);
  r1.xyz = r1.xxx * r0.yzw;
  r0.y = falloffParms.y * abs(r1.z);
  r0.y = log2(r0.y);
  r0.y = falloffParms.x * r0.y;
  r0.y = exp2(r0.y);
  r0.y = min(1, r0.y);
  r0.z = 1 + -minScanlineEffect;
  r0.z = r0.y * r0.z + minScanlineEffect;
  r0.x = r0.x * r0.z;
  r0.x = hdrScale * r0.x;
  r0.zw = (uint2)v0.xy;
  r2.x = cmp(v0.z >= 0.984375);
  r2.y = 1.01587307 * v0.z;
  r2.z = v0.z * 64 + -63;
  r2.x = r2.x ? r2.z : r2.y;
  r2.x = max(9.99999994e-09, r2.x);
  r2.x = rcp(r2.x);
  r2.y = dot(-v6.xyz, -v6.xyz);
  r2.y = rsqrt(r2.y);
  r3.xyz = -v6.xyz * r2.yyy;
  r2.z = cmp(isDepthHack != 0);
  r4.xy = (uint2)r0.wz;
  r2.w = dot(r4.yx, float2(0.0671105608,0.00583714992));
  r2.w = frac(r2.w);
  r2.xw = float2(0.0078125,52.9829178) * r2.xw;
  r2.w = frac(r2.w);
  r2.w = r2.w * 6.28318548 + gameTick.w;
  sincos(r2.w, r5.x, r6.x);
  r2.w = dot(r4.xy, float2(0.0671105608,0.00583714992));
  r2.w = frac(r2.w);
  r2.w = 52.9829178 * r2.w;
  r2.w = frac(r2.w);
  r2.w = r2.w * 6.28318548 + gameTick.w;
  sincos(r2.w, r4.x, r7.x);
  r2.w = saturate(dot(r1.xyz, r3.xyz));
  r3.w = dot(-r3.xyz, r1.xyz);
  r3.w = r3.w + r3.w;
  r8.xyz = r1.xyz * -r3.www + -r3.xyz;
  r4.yz = float2(264.86264,498.346863) * r2.ww;
  r3.w = r2.w * 0.845250726 + 0.154749259;
  r5.zw = float2(0.845250726,0.154749259) * r3.ww;
  r3.w = dot(r1.xyz, sunConstants.wldDir.xyz);
  r4.w = saturate(r3.w);
  r6.w = cmp(0 >= r4.w);
  if (r6.w != 0) {
    r7.y = 0;
  }
  if (r6.w == 0) {
    r9.xyz = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v6.yyy;
    r9.xyz = v6.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r9.xyz;
    r9.xyz = v6.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r9.xyz;
    r9.xyz = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r9.xyz;
    r6.w = -sunConstants.splitDepthOffset + r9.z;
    r6.w = -r6.w * 6.10351563e-05 + 1;
    r7.z = saturate(r6.w);
    r7.z = cmp(r6.w == r7.z);
    if (r7.z != 0) {
      r7.zw = float2(0,0);
      while (true) {
        r9.w = cmp(r7.z >= 3);
        if (r9.w != 0) break;
        r9.w = (uint)r7.z;
        r10.xy = -sunConstants.splitPinTransform[r9.w].xy + r9.xy;
        r10.x = max(abs(r10.x), abs(r10.y));
        r7.w = sunConstants.splitPinTransform[r9.w].z * r10.x;
        r9.w = cmp(r7.w < 1);
        if (r9.w != 0) {
          break;
        }
        r7.z = 1 + r7.z;
        r7.w = 0;
      }
    } else {
      r7.zw = float2(3,0);
    }
    r9.w = cmp(r7.z >= 3);
    if (r9.w != 0) {
      r10.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r11.xz = rcp(r10.xx);
      r11.y = -r11.z;
      r10.xyz = r9.xyx * r11.xyz + r10.yzy;
      r11.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r10.xyz = max(float3(0,0,0), r10.xyz);
      r10.xyz = min(r10.xyz, r11.xyz);
      r11.xy = sunConstants.sstLightingConstants.coordScale * r10.zy;
      r11.xy = floor(r11.xy);
      r10.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r11.y;
      r10.w = r10.w * sunConstants.sstLightingConstants.coordScale + r11.x;
      r10.w = (uint)r10.w;
      r10.w = (int)r10.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.x, r10.w, l(0), t23.xxxx
    r11.x = samp0[]..swiz;
      r11.y = (int)r11.x & 0x40000000;
      r11.z = (uint)r11.x << 2;
      if (r11.y == 0) {
        r11.y = (int)r11.x & 0x01ffffff;
        r12.x = (int)r10.w + (int)r11.y;
        r10.w = (uint)r11.x >> 25;
        r10.w = (uint)r10.w;
        r10.xyz = r10.xyz * r10.www;
        r10.xyz = frac(r10.xyz);
        r10.xyz = float3(128,128,128) * r10.xyz;
        r10.xyz = (uint3)r10.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.z, r12.x, l(0), t23.xxxx
      r12.z = samp0[]..swiz;
        r11.xy = (uint2)r10.zy >> int2(6,6);
        r10.w = (int)r12.z & 0xc0000000;
        r11.w = (int)r12.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.w, r11.w, l(0), t23.xxxx
      r11.w = samp0[]..swiz;
        r11.y = r11.y ? r12.z : r11.w;
        r11.w = (uint)r11.y >> 13;
        r11.x = r11.x ? r11.w : r11.y;
        r11.x = (int)r11.x & 8191;
        r13.x = (int)r11.x + (int)r12.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.z, r13.x, l(0), t23.xxxx
      r13.z = samp0[]..swiz;
        r12.y = 0;
        r13.y = 1;
        r11.xyw = r10.www ? r12.xyz : r13.xyz;
        r13.yz = r10.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r14.xy = (uint2)r10.zy >> (uint2)r13.yy;
        r14.xy = (int2)r14.xy & int2(1,1);
        r12.w = (int)r11.w & 0xc0000000;
        r13.y = (int)r11.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.y, r13.y, l(0), t23.xxxx
      r13.y = samp0[]..swiz;
        r13.y = r14.y ? r11.w : r13.y;
        r14.y = (uint)r13.y >> 13;
        r13.y = r14.x ? r14.y : r13.y;
        r13.y = (int)r13.y & 8191;
        r13.x = (int)r11.x + (int)r13.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.w, r13.x, l(0), t23.xxxx
      r13.w = samp0[]..swiz;
        r11.xyw = r12.www ? r11.xyw : r13.xzw;
        r11.xyw = r10.www ? r12.xyz : r11.xyw;
        r10.w = (int)r11.w & 0xc0000000;
        if (r10.w == 0) {
          r10.w = (int)-r11.y + 6;
          r12.xy = (uint2)r10.zy >> (uint2)r10.ww;
          r10.w = (int)r11.w | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r12.y = (((uint)r12.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r12.x = (((uint)r12.x << 0) & bitmask.x) | ((uint)r12.y & ~bitmask.x);
          r12.x = (int)r12.x * 10;
          r10.w = (uint)r10.w >> (uint)r12.x;
          r10.w = (int)r10.w & 1023;
          r12.x = (int)r10.w + (int)r11.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.w, r12.x, l(0), t23.xxxx
        r12.w = samp0[]..swiz;
          r12.yz = (int2)r11.yy + int2(1,2);
          r10.w = (int)-r12.y + 6;
          r13.xy = (uint2)r10.zy >> (uint2)r10.ww;
          r10.w = (int)r12.w & 0xc0000000;
          r11.y = (int)r12.w | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.y = (((uint)r13.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.x = (((uint)r13.x << 0) & bitmask.x) | ((uint)r13.y & ~bitmask.x);
          r13.x = (int)r13.x * 10;
          r11.y = (uint)r11.y >> (uint)r13.x;
          r11.y = (int)r11.y & 1023;
          r13.x = (int)r11.y + (int)r12.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.z, r13.x, l(0), t23.xxxx
        r13.z = samp0[]..swiz;
          r13.y = r12.z;
          r13.xyz = r10.www ? r12.xyw : r13.xyz;
          r11.y = (int)-r13.y + 6;
          r12.yz = (uint2)r10.zy >> (uint2)r11.yy;
          r11.y = (int)r13.z & 0xc0000000;
          r13.y = (int)r13.z | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r12.z = (((uint)r12.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r12.y = (((uint)r12.y << 0) & bitmask.y) | ((uint)r12.z & ~bitmask.y);
          r12.y = (int)r12.y * 10;
          r12.y = (uint)r13.y >> (uint)r12.y;
          r12.y = (int)r12.y & 1023;
          r14.x = (int)r12.y + (int)r13.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.y, r14.x, l(0), t23.xxxx
        r14.y = samp0[]..swiz;
          r12.yz = r11.yy ? r13.xz : r14.xy;
          r11.xw = r10.ww ? r12.xw : r12.yz;
        }
        r10.w = (int)r11.w & 0xc0000000;
        if (r10.w == 0) {
          if (14 == 0) r11.y = 0; else if (14+15 < 32) {           r11.y = (uint)r11.w << (32-(14 + 15)); r11.y = (uint)r11.y >> (32-14);          } else r11.y = (uint)r11.w >> 15;
          r11.y = (uint)r11.y;
          r11.y = sunConstants.sstLightingConstants.constants.spanInInches * r11.y;
          r11.y = 6.10388815e-05 * r11.y;
          r12.xy = (int2)r11.ww & int2(32767,536870912);
          r12.x = (uint)r12.x;
          r12.x = sunConstants.sstLightingConstants.constants.spanInInches * r12.x;
          r12.x = 3.05185094e-05 * r12.x;
          r12.z = (int)r10.y & 3;
          r12.z = (int)r11.x + (int)r12.z;
          r12.z = (int)r12.z + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.z, r12.z, l(0), t23.xxxx
        r12.z = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r13.x = (((uint)r10.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r13.y = (((uint)r10.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r13.z = (((uint)r10.z << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r10.x = (uint)r12.z >> (uint)r13.x;
          r10.x = (int)r10.x & 255;
          r10.x = (uint)r10.x;
          r10.x = r10.x * r12.x;
          r10.x = r10.x * 0.00392156886 + r11.y;
          r10.y = (int)r13.y + 1;
          if (1 == 0) r10.z = 0; else if (1+1 < 32) {           r10.z = (uint)r10.z << (32-(1 + 1)); r10.z = (uint)r10.z >> (32-1);          } else r10.z = (uint)r10.z >> 1;
          r10.y = (int)r10.z + (int)r10.y;
          r10.y = (int)r10.y + (int)r11.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.y, r10.y, l(0), t23.xxxx
        r10.y = samp0[]..swiz;
          r10.y = (uint)r10.y >> (uint)r13.z;
          r10.y = (int)r10.y & 0x0000ffff;
          r10.y = (uint)r10.y;
          r10.y = r10.y * r12.x;
          r10.y = r10.y * 1.52590219e-05 + r11.y;
          r11.z = r12.y ? r10.x : r10.y;
        } else {
          r10.x = (int)r11.w & 0x80000000;
          r10.y = (int)r11.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.y, r10.y, l(0), t23.xxxx
        r10.y = samp0[]..swiz;
          r10.x = r10.x ? r10.y : 0;
          r10.y = (uint)r11.w << 2;
          r10.z = (uint)r10.x >> 16;
          r10.x = (int)r10.x & 0x0000ffff;
          r10.xz = f16tof32(r10.xz);
          r10.y = r9.x * r10.z + r10.y;
          r10.x = r9.y * r10.x + r10.y;
          r11.z = r10.w ? r10.x : r11.z;
        }
      }
      r9.z = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r9.z;
      r9.z = cmp(r11.z < r9.z);
      r7.y = r9.z ? 0 : 1;
    }
    if (r9.w == 0) {
      if (enableDitheredShadow == 0) {
        r9.z = (uint)r7.z;
        r10.xy = -sunConstants.splitPinTransform[r9.z].xy + r9.xy;
        r9.zw = sunConstants.splitPinTransform[r9.z].zz * r10.xy;
        r10.xy = r9.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r9.z = (int16)sunConstants.splitArrayOffset;
        r10.z = r9.z + r7.z;
        r9.z = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r10.xyz, r6.w).x;
        r9.w = gTransShadowmapArray.SampleLevel(samp0_s, r10.xyz, 0).x;
        r9.z = r9.z + r9.w;
        r9.z = saturate(-1 + r9.z);
        r9.w = r9.z * r9.z;
        r7.y = r9.w * r9.z;
      }
      if (enableDitheredShadow != 0) {
        r10.x = -r5.x;
        r9.z = (uint)r7.z;
        r7.z = 1 + r7.z;
        r7.z = min(2, r7.z);
        r7.w = 1 + -r7.w;
        r7.w = 28 * r7.w;
        r7.zw = (uint2)r7.zw;
        r11.xy = -sunConstants.splitPinTransform[r9.z].xy + r9.xy;
        r11.xy = sunConstants.splitPinTransform[r9.z].zz * r11.xy;
        r11.xy = r11.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r9.xy = -sunConstants.splitPinTransform[r7.z].xy + r9.xy;
        r9.xy = sunConstants.splitPinTransform[r7.z].zz * r9.xy;
        r9.xy = r9.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.y = r6.x;
        r10.z = r5.x;
        r9.w = 0;
        r10.w = 0;
        while (true) {
          r11.z = cmp((uint)r10.w >= 8);
          if (r11.z != 0) break;
          r11.z = cmp((uint)r7.w < (uint)r10.w);
          r12.xy = r11.zz ? r9.xy : r11.xy;
          r11.w = r11.z ? sunConstants.splitPinTransform[r7.z].w : sunConstants.splitPinTransform[r9.z].w;
          r11.z = r11.z ? r7.z : r9.z;
          r13.x = dot(icb[r10.w+0].yx, r10.xy);
          r13.y = dot(icb[r10.w+0].yx, r10.yz);
          r12.xy = r13.xy * r11.ww + r12.xy;
          r11.z = (int)r11.z + (int16)sunConstants.splitArrayOffset;
          r12.z = (uint)r11.z;
          r11.z = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r12.xyz, r6.w).x;
          r11.w = gTransShadowmapArray.SampleLevel(samp0_s, r12.xyz, 0).x;
          r11.z = r11.z + r11.w;
          r11.z = saturate(-1 + r11.z);
          r9.w = r11.z * 0.125 + r9.w;
          r10.w = (int)r10.w + 1;
        }
        r6.w = r9.w * r9.w;
        r7.y = r6.w * r9.w;
      }
    }
  }
  r6.w = cmp(0 < r4.w);
  if (r6.w != 0) {
    r6.w = cmp(0 < r7.y);
    if (r6.w != 0) {
      r6.w = sunConstants.specScale * r4.w;
      if (sunConstants.sunCookieIndex != 0) {
        r9.xyz = eyeOffset.xyz + v6.xyz;
        r9.w = 1;
        r7.z = dot(sunConstants.sunCookieTransform[0].xyzw, r9.xyzw);
        r7.w = dot(sunConstants.sunCookieTransform[1].xyzw, r9.xyzw);
        r9.xy = frac(r7.zw);
        r7.z = -1 + (int14)sunConstants.sunCookieIndex;
        r9.z = (uint)r7.z;
        r9.xyz = gCookieArray.SampleLevel(samplerLinear_s, r9.xyz, 0).xyz;
        r9.xyz = float3(-1,-1,-1) + r9.xyz;
        r9.xyz = sunConstants.sunCookieIntensity * r9.xyz + float3(1,1,1);
        r9.xyz = sunConstants.color.xyz * r9.xyz;
      } else {
        r9.xyz = sunConstants.color.xyz;
      }
      r7.z = viewmodelSunShadowRaw >> 16;
      r7.w = cmp(0 < (uint)r7.z);
      r7.w = r2.z ? r7.w : 0;
      if (r7.w != 0) {
        r7.z = (int)r7.z + numLights;
        r7.z = (int)r7.z + -1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r7.w, r7.z, l(52), t12.xxxx
      r7.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.xyzw, r7.z, l(68), t12.xyzw
      r10.x = samp0[]..swiz;
      r10.y = samp0[]..swiz;
      r10.z = samp0[]..swiz;
      r10.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.xyzw, r7.z, l(84), t12.xyzw
      r11.x = samp0[]..swiz;
      r11.y = samp0[]..swiz;
      r11.z = samp0[]..swiz;
      r11.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.xyzw, r7.z, l(132), t12.xyzw
      r12.x = samp0[]..swiz;
      r12.y = samp0[]..swiz;
      r12.z = samp0[]..swiz;
      r12.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.xyzw, r7.z, l(148), t12.xyzw
      r13.x = samp0[]..swiz;
      r13.y = samp0[]..swiz;
      r13.z = samp0[]..swiz;
      r13.w = samp0[]..swiz;
        r9.w = abs(r3.w) * -0.200000003 + 0.400000006;
        r14.xyz = r1.xyz * r9.www + v6.xyz;
        r14.w = 1;
        r10.x = dot(r10.xyzw, r14.xyzw);
        r10.y = dot(r11.xyzw, r14.xyzw);
        r10.xy = r10.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.xy = r10.xy + r13.zw;
        r10.xy = r10.xy * r13.xy;
        r10.zw = r7.ww / r12.xz;
        r11.xy = float2(1,1) + -r10.zw;
        r11.xy = cmp(r10.xy >= r11.xy);
        r10.zw = cmp(r10.zw >= r10.xy);
        r10.zw = (int2)r10.zw | (int2)r11.xy;
        r9.w = (int)r10.w | (int)r10.z;
        if (r9.w == 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.w, r7.z, l(28), t12.xxxx
        r9.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.xyzw, r7.z, l(100), t12.xyzw
        r11.x = samp0[]..swiz;
        r11.y = samp0[]..swiz;
        r11.z = samp0[]..swiz;
        r11.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.zw, r7.z, l(164), t12.xxxy
        r10.z = samp0[]..swiz;
        r10.w = samp0[]..swiz;
          r7.z = dot(r11.xyzw, r14.xyzw);
          r10.xy = saturate(r10.xy);
          r11.xy = r10.xy * r12.xz + r12.yw;
          r7.z = r7.z + r10.z;
          r7.z = r7.z / r10.w;
          r7.z = max(6.10351563e-05, r7.z);
          r9.w = (int)r9.w & 0x0000ffff;
          if (enableDitheredShadow != 0) {
            r10.x = -r5.x;
            r12.z = (uint)r9.w;
            r10.y = r6.x;
            r10.z = r5.x;
            r10.w = 0;
            r11.w = 0;
            while (true) {
              r12.w = cmp((int)r11.w >= 8);
              if (r12.w != 0) break;
              r13.x = dot(icb[r11.w+0].yx, r10.xy);
              r13.y = dot(icb[r11.w+0].yx, r10.yz);
              r12.xy = r13.xy * r7.ww + r11.xy;
              r12.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r12.xyz, r7.z).x;
              r10.w = r12.x * 0.125 + r10.w;
              r11.w = (int)r11.w + 1;
            }
          } else {
            r11.z = (uint)r9.w;
            r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r11.xyz, r7.z).x;
          }
          r7.z = r10.w * r10.w;
          r7.z = r7.z * r10.w;
        } else {
          r7.z = 1;
        }
        r7.y = r7.y * r7.z;
      } else {
        r7.z = viewmodelSunShadowRaw & 0x0000ffff;
        r7.w = cmp(0 < (uint)r7.z);
        r9.w = ~(int)r2.z;
        r7.w = r7.w ? r9.w : 0;
        if (r7.w != 0) {
          r7.z = (int)r7.z + numLights;
          r7.z = (int)r7.z + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r7.w, r7.z, l(52), t12.xxxx
        r7.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.xyzw, r7.z, l(68), t12.xyzw
        r10.x = samp0[]..swiz;
        r10.y = samp0[]..swiz;
        r10.z = samp0[]..swiz;
        r10.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.xyzw, r7.z, l(84), t12.xyzw
        r11.x = samp0[]..swiz;
        r11.y = samp0[]..swiz;
        r11.z = samp0[]..swiz;
        r11.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.xyzw, r7.z, l(132), t12.xyzw
        r12.x = samp0[]..swiz;
        r12.y = samp0[]..swiz;
        r12.z = samp0[]..swiz;
        r12.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.xyzw, r7.z, l(148), t12.xyzw
        r13.x = samp0[]..swiz;
        r13.y = samp0[]..swiz;
        r13.z = samp0[]..swiz;
        r13.w = samp0[]..swiz;
          r9.w = abs(r3.w) * -0.200000003 + 0.400000006;
          r14.xyz = r1.xyz * r9.www + v6.xyz;
          r14.w = 1;
          r10.x = dot(r10.xyzw, r14.xyzw);
          r10.y = dot(r11.xyzw, r14.xyzw);
          r10.xy = r10.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r10.xy = r10.xy + r13.zw;
          r10.xy = r10.xy * r13.xy;
          r10.zw = r7.ww / r12.xz;
          r11.xy = float2(1,1) + -r10.zw;
          r11.xy = cmp(r10.xy >= r11.xy);
          r10.zw = cmp(r10.zw >= r10.xy);
          r10.zw = (int2)r10.zw | (int2)r11.xy;
          r9.w = (int)r10.w | (int)r10.z;
          if (r9.w == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.w, r7.z, l(28), t12.xxxx
          r9.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.xyzw, r7.z, l(100), t12.xyzw
          r11.x = samp0[]..swiz;
          r11.y = samp0[]..swiz;
          r11.z = samp0[]..swiz;
          r11.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.zw, r7.z, l(164), t12.xxxy
          r10.z = samp0[]..swiz;
          r10.w = samp0[]..swiz;
            r7.z = dot(r11.xyzw, r14.xyzw);
            r10.xy = saturate(r10.xy);
            r11.xy = r10.xy * r12.xz + r12.yw;
            r7.z = r7.z + r10.z;
            r7.z = r7.z / r10.w;
            r7.z = max(6.10351563e-05, r7.z);
            r9.w = (int)r9.w & 0x0000ffff;
            if (enableDitheredShadow != 0) {
              r10.x = -r5.x;
              r12.z = (uint)r9.w;
              r10.y = r6.x;
              r10.z = r5.x;
              r10.w = 0;
              r11.w = 0;
              while (true) {
                r12.w = cmp((int)r11.w >= 8);
                if (r12.w != 0) break;
                r13.x = dot(icb[r11.w+0].yx, r10.xy);
                r13.y = dot(icb[r11.w+0].yx, r10.yz);
                r12.xy = r13.xy * r7.ww + r11.xy;
                r12.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r12.xyz, r7.z).x;
                r10.w = r12.x * 0.125 + r10.w;
                r11.w = (int)r11.w + 1;
              }
            } else {
              r11.z = (uint)r9.w;
              r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r11.xyz, r7.z).x;
            }
            r7.z = r10.w * r10.w;
            r7.z = r7.z * r10.w;
          } else {
            r7.z = 1;
          }
          r7.y = r7.y * r7.z;
        }
      }
      r7.z = -r2.w * 0.5 + 1;
      r7.z = -r4.w * r7.z + 1;
      r7.z = r7.z * r7.z;
      r7.z = -r7.z * 0.620000005 + 0.620000005;
      r7.z = r7.z + -r4.w;
      r7.z = r7.z * 0.0126904203 + r4.w;
      r7.z = r7.z * r7.y;
      r10.xyz = r7.zzz * r9.xyz;
      r3.w = cmp(0 < r3.w);
      r11.xyz = -v6.xyz * r2.yyy + sunConstants.wldDir.xyz;
      r2.y = dot(r11.xyz, r11.xyz);
      r2.y = rsqrt(r2.y);
      r11.xyz = r11.xyz * r2.yyy;
      r2.y = dot(r11.xyz, r3.xyz);
      r7.z = dot(r1.xyz, r11.xyz);
      r7.z = abs(r7.z) * abs(r7.z);
      r7.z = r7.z * -0.999838948 + 1;
      r4.w = r4.w * r5.z + r5.w;
      r7.z = r7.z * r7.z;
      r4.w = r7.z * r4.w;
      r4.w = rcp(r4.w);
      r4.w = r4.w * r6.w;
      r4.w = r7.y * r4.w;
      r4.w = 4.02616934e-05 * r4.w;
      r7.yzw = r4.www * r9.xyz;
      r2.y = saturate(1 + -r2.y);
      r6.w = r2.y * r2.y;
      r6.w = r6.w * r6.w;
      r2.y = r6.w * r2.y;
      r2.y = r4.w * r2.y;
      r9.xyz = r2.yyy * r9.yzx;
      r10.w = r9.z;
      r10.xyzw = r3.wwww ? r10.xyzw : 0;
      r9.zw = r7.yz;
      r9.xyzw = r3.wwww ? r9.xyzw : 0;
      r2.y = r3.w ? r7.w : 0;
    } else {
      r10.xyzw = float4(0,0,0,0);
      r9.xyzw = float4(0,0,0,0);
      r2.y = 0;
    }
  } else {
    r10.xyzw = float4(0,0,0,0);
    r9.xyzw = float4(0,0,0,0);
    r2.y = 0;
  }
  r2.x = min(15, r2.x);
  r2.x = (uint)r2.x;
  r11.xy = (uint2)r0.zw >> int2(6,6);
  r11.z = (uint)r2.x << 4;
  r12.x = -r5.x;
  r0.z = ~(int)r2.z;
  r0.w = -r2.w * 0.5 + 1;
  r13.xy = float2(0,0);
  r14.w = 0;
  r15.xyz = v6.xyz;
  r15.w = 1;
  r16.w = 1;
  r12.z = r5.x;
  r17.w = 1;
  r18.z = 1;
  r19.w = 1;
  r12.yw = r6.xx;
  r5.y = r12.w;
  r20.w = 1;
  r6.y = r12.x;
  r6.z = r5.x;
  r21.w = 1;
  r22.x = r6.x;
  r22.y = r12.x;
  r22.z = r5.x;
  r23.x = r6.x;
  r23.y = r12.x;
  r23.z = r5.x;
  r24.x = r6.x;
  r24.y = r12.x;
  r24.z = r5.x;
  r7.yzw = r10.xyz;
  r25.x = r10.w;
  r25.yz = r9.xy;
  r26.xy = r9.zw;
  r26.z = r2.y;
  r2.x = enableDitheredShadow;
  r3.w = 0;
  while (true) {
    r4.w = cmp((uint)r3.w >= numLights);
    if (r4.w != 0) break;
    r13.z = (uint)r3.w >> 5;
    r14.xyz = (int3)r11.xyz + (int3)r13.xyz;
    r4.w = visibleLights.Load(r14.xyzw).x;
    r14.xyz = r7.yzw;
    r27.xyz = r25.xyz;
    r28.xyz = r26.xyz;
    r6.w = r2.x;
    r11.w = r4.w;
    while (true) {
      if (r11.w == 0) break;
      r13.z = firstbitlow((uint)r11.w);
      r13.w = 1 << (int)r13.z;
      r18.w = (int)r11.w & (int)r13.w;
      if (r18.w != 0) {
        r11.w = (int)r11.w ^ (int)r13.w;
        r13.z = (int)r3.w + (int)r13.z;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r29.xyzw, r13.z, l(0), t11.xyzw
      r29.x = samp0[]..swiz;
      r29.y = samp0[]..swiz;
      r29.z = samp0[]..swiz;
      r29.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r30.xy, r13.z, l(16), t11.xyxx
      r30.x = samp0[]..swiz;
      r30.y = samp0[]..swiz;
        r29.xyz = -v6.xyz + r29.xyz;
        r30.z = r29.w;
        r29.xyz = cmp(abs(r29.xyz) < r30.zxy);
        r13.w = r29.y ? r29.x : 0;
        r13.w = r29.z ? r13.w : 0;
        if (r13.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r29.xyzw, r13.z, l(0), t12.wxyz
        r29.x = samp0[]..swiz;
        r29.y = samp0[]..swiz;
        r29.z = samp0[]..swiz;
        r29.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r30.xyzw, r13.z, l(16), t12.zxyw
        r30.x = samp0[]..swiz;
        r30.y = samp0[]..swiz;
        r30.z = samp0[]..swiz;
        r30.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r13.z, l(32), t12.xyzw
        r31.x = samp0[]..swiz;
        r31.y = samp0[]..swiz;
        r31.z = samp0[]..swiz;
        r31.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r13.z, l(48), t12.xyzw
        r32.x = samp0[]..swiz;
        r32.y = samp0[]..swiz;
        r32.z = samp0[]..swiz;
        r32.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r13.z, l(64), t12.yzwx
        r33.x = samp0[]..swiz;
        r33.y = samp0[]..swiz;
        r33.z = samp0[]..swiz;
        r33.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r13.z, l(80), t12.xyzw
        r34.x = samp0[]..swiz;
        r34.y = samp0[]..swiz;
        r34.z = samp0[]..swiz;
        r34.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r13.z, l(96), t12.yzwx
        r35.x = samp0[]..swiz;
        r35.y = samp0[]..swiz;
        r35.z = samp0[]..swiz;
        r35.w = samp0[]..swiz;
          if (3 == 0) r13.w = 0; else if (3+24 < 32) {           r13.w = (uint)r30.w << (32-(3 + 24)); r13.w = (uint)r13.w >> (32-3);          } else r13.w = (uint)r30.w >> 24;
          switch (r13.w) {
            case 4 :            r13.w = cmp(0 < r35.x);
            r36.xy = r34.zw;
            r36.z = r35.w;
            r37.xyz = -r36.xyz * float3(0.5,0.5,0.5) + r29.yzw;
            r38.xyz = -v6.xyz + r37.xyz;
            r18.w = dot(r36.xyz, r38.xyz);
            r22.w = saturate(-r18.w / r35.x);
            r39.xyz = r22.www * r36.xyz + r37.xyz;
            r39.xyz = r13.www ? r39.xyz : r29.yzw;
            r39.xyz = -v6.xyz + r39.xyz;
            r23.w = dot(r39.xyz, r39.xyz);
            r24.w = rsqrt(r23.w);
            r39.xyz = r39.xyz * r24.www;
            r24.w = dot(r1.xyz, r39.xyz);
            r25.w = saturate(r24.w);
            r26.w = cmp(0 < r25.w);
            if (r26.w != 0) {
              r26.w = sqrt(r23.w);
              r27.w = r32.x * r32.x;
              r23.w = r27.w / r23.w;
              r23.w = min(1, r23.w);
              r39.xy = saturate(r26.ww * r31.xz + r31.yw);
              r39.zw = r39.xy * r39.xy;
              r39.xy = r39.xy * float2(-2,-2) + float2(3,3);
              r39.xy = r39.zw * r39.xy;
              r23.w = r39.x * r23.w;
              r23.w = r23.w * r39.y;
              r26.w = cmp(0 < r23.w);
              if (r26.w != 0) {
                if (3 == 0) r26.w = 0; else if (3+27 < 32) {                 r26.w = (uint)r30.w << (32-(3 + 27)); r26.w = (uint)r26.w >> (32-3);                } else r26.w = (uint)r30.w >> 27;
                r26.w = cmp((int)r26.w != 1);
                if (r26.w != 0) {
                  r26.w = abs(r24.w) * -0.200000003 + 0.400000006;
                  r39.xyz = r1.xyz * r26.www + v6.xyz;
                  r39.xyz = r39.xyz + -r33.xyz;
                  r26.w = max(abs(r39.y), abs(r39.z));
                  r26.w = max(abs(r39.x), r26.w);
                  r26.w = r34.x / r26.w;
                  r26.w = r26.w + r34.y;
                  r27.w = dot(r39.xyz, r39.xyz);
                  r27.w = rsqrt(r27.w);
                  r26.w = max(6.10351563e-05, r26.w);
                  r28.w = (int)r30.w & 0x0000ffff;
                  r40.w = (uint)r28.w;
                  r28.w = 0;
                  r36.w = 0;
                  while (true) {
                    r37.w = cmp((int)r36.w >= 8);
                    if (r37.w != 0) break;
                    r41.y = dot(icb[r36.w+0].yx, r12.xy);
                    r41.z = dot(icb[r36.w+0].yx, r12.yz);
                    r41.yz = r41.yz * r32.yy;
                    r41.x = r41.y * r7.x;
                    r41.w = r41.y * r4.x;
                    r40.xyz = r39.xyz * r27.www + r41.xzw;
                    r37.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r40.xyzw, r26.w).x;
                    r28.w = r37.w * 0.125 + r28.w;
                    r36.w = (int)r36.w + 1;
                  }
                } else {
                  r28.w = 1;
                }
                r23.w = r28.w * r23.w;
                r26.w = cmp(0 < r23.w);
                if (r26.w != 0) {
                  r26.w = 4.02616934e-05 * r30.x;
                  r27.w = dot(r36.xyz, r8.xyz);
                  r36.w = dot(r8.xyz, r38.xyz);
                  r37.w = -r27.w * r27.w + r35.x;
                  r18.w = r27.w * r36.w + -r18.w;
                  r18.w = saturate(r18.w / r37.w);
                  r27.w = r37.w / r35.x;
                  r27.w = 10 * r27.w;
                  r27.w = min(1, r27.w);
                  r18.w = r18.w + -r22.w;
                  r18.w = r27.w * r18.w + r22.w;
                  r36.xyz = r18.www * r36.xyz + r37.xyz;
                  r36.xyz = r13.www ? r36.xyz : r29.yzw;
                  r36.xyz = -v6.xyz + r36.xyz;
                  r13.w = dot(r36.xyz, r36.xyz);
                  r13.w = rsqrt(r13.w);
                  r37.xyz = r36.xyz * r13.www;
                  if (4 == 0) r18.w = 0; else if (4+16 < 32) {                   r18.w = (uint)r30.w << (32-(4 + 16)); r18.w = (uint)r18.w >> (32-4);                  } else r18.w = (uint)r30.w >> 16;
                  r22.w = cmp(0 < (uint)r18.w);
                  r22.w = r2.z ? r22.w : 0;
                  if (r22.w != 0) {
                    r18.w = (int)r18.w + numLights;
                    r18.w = (int)r18.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.w, r18.w, l(52), t12.xxxx
                  r22.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r18.w, l(100), t12.xyzw
                  r38.x = samp0[]..swiz;
                  r38.y = samp0[]..swiz;
                  r38.z = samp0[]..swiz;
                  r38.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r18.w, l(116), t12.xyzw
                  r39.x = samp0[]..swiz;
                  r39.y = samp0[]..swiz;
                  r39.z = samp0[]..swiz;
                  r39.w = samp0[]..swiz;
                    r27.w = abs(r24.w) * -0.200000003 + 0.400000006;
                    r16.xyz = r1.xyz * r27.www + v6.xyz;
                    r27.w = dot(r38.xyzw, r16.xyzw);
                    r36.w = dot(r39.xyzw, r16.xyzw);
                    r37.w = cmp(r36.w < r27.w);
                    if (r37.w == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r18.w, l(68), t12.xyzw
                    r38.x = samp0[]..swiz;
                    r38.y = samp0[]..swiz;
                    r38.z = samp0[]..swiz;
                    r38.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r18.w, l(84), t12.xyzw
                    r39.x = samp0[]..swiz;
                    r39.y = samp0[]..swiz;
                    r39.z = samp0[]..swiz;
                    r39.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r18.w, l(132), t12.xyzw
                    r40.x = samp0[]..swiz;
                    r40.y = samp0[]..swiz;
                    r40.z = samp0[]..swiz;
                    r40.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r18.w, l(148), t12.xyzw
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xy, r18.w, l(164), t12.xyxx
                    r42.x = samp0[]..swiz;
                    r42.y = samp0[]..swiz;
                      r38.x = dot(r38.xyzw, r16.xyzw);
                      r38.y = dot(r39.xyzw, r16.xyzw);
                      r16.xy = r38.xy / r36.ww;
                      r16.xy = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r16.xy = r16.xy + r41.zw;
                      r16.xy = r16.xy * r41.xy;
                      r38.xy = r22.ww / r40.xz;
                      r38.zw = float2(1,1) + -r38.xy;
                      r38.zw = cmp(r16.xy >= r38.zw);
                      r38.xy = cmp(r38.xy >= r16.xy);
                      r38.xy = (int2)r38.xy | (int2)r38.zw;
                      r16.z = (int)r38.y | (int)r38.x;
                      r16.xy = saturate(r16.xy);
                      r38.xy = r16.xy * r40.xz + r40.yw;
                      r16.x = r42.y * r36.w;
                      r16.y = r42.x * r36.w + r27.w;
                      r16.x = r16.y / r16.x;
                    } else {
                      r16.z = -1;
                    }
                    r16.y = (int)r37.w | (int)r16.z;
                    if (r16.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.y, r18.w, l(28), t12.xxxx
                    r16.y = samp0[]..swiz;
                      r16.x = max(6.10351563e-05, r16.x);
                      r16.y = (int)r16.y & 0x0000ffff;
                      if (r6.w != 0) {
                        r39.z = (uint)r16.y;
                        r16.z = 0;
                        r18.w = 0;
                        while (true) {
                          r27.w = cmp((int)r18.w >= 8);
                          if (r27.w != 0) break;
                          r40.x = dot(icb[r18.w+0].yx, r12.xw);
                          r40.y = dot(icb[r18.w+0].xy, r5.xy);
                          r39.xy = r40.xy * r22.ww + r38.xy;
                          r27.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r39.xyz, r16.x).x;
                          r16.z = r27.w * 0.125 + r16.z;
                          r18.w = (int)r18.w + 1;
                        }
                      } else {
                        r38.z = (uint)r16.y;
                        r16.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r38.xyz, r16.x).x;
                      }
                      r16.x = r16.z * r16.z;
                      r16.x = r16.x * r16.z;
                    } else {
                      r16.x = 1;
                    }
                    r23.w = r23.w * r16.x;
                  } else {
                    if (4 == 0) r16.x = 0; else if (4+20 < 32) {                     r16.x = (uint)r30.w << (32-(4 + 20)); r16.x = (uint)r16.x >> (32-4);                    } else r16.x = (uint)r30.w >> 20;
                    r16.y = cmp(0 < (uint)r16.x);
                    r16.y = r16.y ? r0.z : 0;
                    if (r16.y != 0) {
                      r16.x = (int)r16.x + numLights;
                      r16.x = (int)r16.x + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.y, r16.x, l(52), t12.xxxx
                    r16.y = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r16.x, l(100), t12.xyzw
                    r38.x = samp0[]..swiz;
                    r38.y = samp0[]..swiz;
                    r38.z = samp0[]..swiz;
                    r38.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r16.x, l(116), t12.xyzw
                    r39.x = samp0[]..swiz;
                    r39.y = samp0[]..swiz;
                    r39.z = samp0[]..swiz;
                    r39.w = samp0[]..swiz;
                      r18.w = abs(r24.w) * -0.200000003 + 0.400000006;
                      r17.xyz = r1.xyz * r18.www + v6.xyz;
                      r18.w = dot(r38.xyzw, r17.xyzw);
                      r22.w = dot(r39.xyzw, r17.xyzw);
                      r27.w = cmp(r22.w < r18.w);
                      if (r27.w == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r16.x, l(68), t12.xyzw
                      r38.x = samp0[]..swiz;
                      r38.y = samp0[]..swiz;
                      r38.z = samp0[]..swiz;
                      r38.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r16.x, l(84), t12.xyzw
                      r39.x = samp0[]..swiz;
                      r39.y = samp0[]..swiz;
                      r39.z = samp0[]..swiz;
                      r39.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r16.x, l(132), t12.xyzw
                      r40.x = samp0[]..swiz;
                      r40.y = samp0[]..swiz;
                      r40.z = samp0[]..swiz;
                      r40.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r16.x, l(148), t12.xyzw
                      r41.x = samp0[]..swiz;
                      r41.y = samp0[]..swiz;
                      r41.z = samp0[]..swiz;
                      r41.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xy, r16.x, l(164), t12.xyxx
                      r42.x = samp0[]..swiz;
                      r42.y = samp0[]..swiz;
                        r38.x = dot(r38.xyzw, r17.xyzw);
                        r38.y = dot(r39.xyzw, r17.xyzw);
                        r17.xy = r38.xy / r22.ww;
                        r17.xy = r17.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                        r17.xy = r17.xy + r41.zw;
                        r17.xy = r17.xy * r41.xy;
                        r38.xy = r16.yy / r40.xz;
                        r38.zw = float2(1,1) + -r38.xy;
                        r38.zw = cmp(r17.xy >= r38.zw);
                        r38.xy = cmp(r38.xy >= r17.xy);
                        r38.xy = (int2)r38.xy | (int2)r38.zw;
                        r17.z = (int)r38.y | (int)r38.x;
                        r17.xy = saturate(r17.xy);
                        r38.xy = r17.xy * r40.xz + r40.yw;
                        r17.x = r42.y * r22.w;
                        r17.y = r42.x * r22.w + r18.w;
                        r17.x = r17.y / r17.x;
                      } else {
                        r17.z = -1;
                      }
                      r17.y = (int)r27.w | (int)r17.z;
                      if (r17.y == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.x, r16.x, l(28), t12.xxxx
                      r16.x = samp0[]..swiz;
                        r17.x = max(6.10351563e-05, r17.x);
                        r16.x = (int)r16.x & 0x0000ffff;
                        if (r6.w != 0) {
                          r39.z = (uint)r16.x;
                          r17.yz = float2(0,0);
                          while (true) {
                            r18.w = cmp((int)r17.z >= 8);
                            if (r18.w != 0) break;
                            r40.x = dot(icb[r17.z+0].xy, r6.xy);
                            r40.y = dot(icb[r17.z+0].yx, r6.xz);
                            r39.xy = r40.xy * r16.yy + r38.xy;
                            r18.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r39.xyz, r17.x).x;
                            r17.y = r18.w * 0.125 + r17.y;
                            r17.z = (int)r17.z + 1;
                          }
                        } else {
                          r38.z = (uint)r16.x;
                          r17.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r38.xyz, r17.x).x;
                        }
                        r16.x = r17.y * r17.y;
                        r16.x = r16.x * r17.y;
                      } else {
                        r16.x = 1;
                      }
                      r23.w = r23.w * r16.x;
                    }
                  }
                  r16.x = -r25.w * r0.w + 1;
                  r16.x = r16.x * r16.x;
                  r16.x = -r16.x * 0.620000005 + 0.620000005;
                  r16.x = r16.x + -r25.w;
                  r16.x = r16.x * 0.0126904203 + r25.w;
                  r16.x = r16.x * r23.w;
                  r30.x = r29.x;
                  r16.y = cmp(0 < r24.w);
                  r38.xyz = r16.xxx * r30.xyz + r14.xyz;
                  r16.x = saturate(dot(r1.xyz, r37.xyz));
                  r36.xyz = r36.xyz * r13.www + r3.xyz;
                  r13.w = dot(r36.xyz, r36.xyz);
                  r13.w = rsqrt(r13.w);
                  r36.xyz = r36.xyz * r13.www;
                  r13.w = dot(r36.xyz, r3.xyz);
                  r17.x = dot(r1.xyz, r36.xyz);
                  r17.x = abs(r17.x) * abs(r17.x);
                  r17.x = r17.x * -0.999838948 + 1;
                  r17.z = r16.x * r5.z + r5.w;
                  r17.x = r17.x * r17.x;
                  r17.x = r17.x * r17.z;
                  r17.x = rcp(r17.x);
                  r16.x = r16.x * r26.w;
                  r16.x = r17.x * r16.x;
                  r16.x = r16.x * r23.w;
                  r36.xyz = r16.xxx * r30.xyz + r28.xyz;
                  r13.w = saturate(1 + -r13.w);
                  r17.x = r13.w * r13.w;
                  r17.x = r17.x * r17.x;
                  r13.w = r17.x * r13.w;
                  r13.w = r16.x * r13.w;
                  r37.xyz = r13.www * r30.xyz + r27.xyz;
                  r14.xyz = r16.yyy ? r38.xyz : r14.xyz;
                  r27.xyz = r16.yyy ? r37.xyz : r27.xyz;
                  r28.xyz = r16.yyy ? r36.xyz : r28.xyz;
                }
              }
            }
            break;
            case 2 :            r36.xy = r32.zw;
            r36.z = r33.w;
            r36.xyz = -v6.xyz + r36.xyz;
            r13.w = dot(r36.xyz, r36.xyz);
            r13.w = rsqrt(r13.w);
            r37.xyz = r36.xyz * r13.www;
            r16.x = dot(r1.xyz, r37.xyz);
            r16.y = saturate(r16.x);
            r17.x = cmp(0 < r16.y);
            if (r17.x != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r13.z, l(112), t12.yzwx
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r13.z, l(128), t12.zxyw
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
              r39.xyz = r37.xyz;
              r39.w = r38.y;
              r17.x = dot(r39.xyzw, r15.xyzw);
              r17.z = cmp(r17.x < 1);
              if (r17.z != 0) {
                r40.xyz = float3(1,1,1);
                r17.z = 0;
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r13.z, l(172), t12.yzwx
              r41.x = samp0[]..swiz;
              r41.y = samp0[]..swiz;
              r41.z = samp0[]..swiz;
              r41.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r13.z, l(188), t12.wxyz
              r42.x = samp0[]..swiz;
              r42.y = samp0[]..swiz;
              r42.z = samp0[]..swiz;
              r42.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r13.z, l(204), t12.xyzw
              r43.x = samp0[]..swiz;
              r43.y = samp0[]..swiz;
              r43.z = samp0[]..swiz;
              r43.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.w, r13.z, l(236), t12.xxxx
              r18.w = samp0[]..swiz;
                r44.xyz = -v6.xyz + r29.yzw;
                r22.w = r32.x * r32.x;
                r23.w = dot(r44.xyz, r44.xyz);
                r22.w = r22.w / r23.w;
                r22.w = min(1, r22.w);
                r31.xy = saturate(r17.xx * r31.xz + r31.yw);
                r31.zw = r31.xy * r31.xy;
                r31.xy = r31.xy * float2(-2,-2) + float2(3,3);
                r31.xy = r31.zw * r31.xy;
                r22.w = r31.x * r22.w;
                r22.w = r22.w * r31.y;
                r33.w = r34.x;
                r31.x = dot(r33.xyzw, r15.xyzw);
                r44.xyz = r34.yzw;
                r44.w = r35.w;
                r31.y = dot(r44.xyzw, r15.xyzw);
                r18.xy = r31.xy / r17.xx;
                r17.x = cmp(r41.w < 0.00048828125);
                if (r17.x != 0) {
                  r42.y = r43.x;
                  r31.xy = saturate(abs(r18.xy) * r42.zw + r42.xy);
                  r31.zw = r31.xy * r31.xy;
                  r31.xy = r31.xy * float2(-2,-2) + float2(3,3);
                  r31.xy = r31.zw * r31.xy;
                  r17.x = r31.x * r31.y;
                } else {
                  r41.w = r42.y;
                  r31.xyzw = saturate(r41.xyzw * abs(r18.yyxx));
                  r31.xyzw = log2(r31.xyzw);
                  r31.xyzw = r42.xxxx * r31.xyzw;
                  r31.xyzw = exp2(r31.xyzw);
                  r31.xy = r31.xy + r31.zw;
                  r31.xy = log2(r31.xy);
                  r31.xy = r43.xx * r31.xy;
                  r31.xy = exp2(r31.xy);
                  r23.w = r42.z * r31.x;
                  r24.w = r42.w * r31.y + -1;
                  r23.w = r42.w * r31.y + -r23.w;
                  r23.w = saturate(r24.w / r23.w);
                  r24.w = r23.w * r23.w;
                  r23.w = r23.w * -2 + 3;
                  r17.x = r24.w * r23.w;
                }
                r17.z = r22.w * r17.x;
                r17.x = (int)r18.w & 255;
                if (r17.x != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyz, r13.z, l(220), t12.xyzx
                r31.x = samp0[]..swiz;
                r31.y = samp0[]..swiz;
                r31.z = samp0[]..swiz;
                  r18.w = dot(r43.yzw, r18.xyz);
                  r18.x = dot(r31.xyz, r18.xyz);
                  r31.xy = frac(r18.wx);
                  r17.x = (int)r17.x + -1;
                  r31.z = (uint)r17.x;
                  r40.xyz = gCookieArray.SampleLevel(samplerLinear_s, r31.xyz, 0).xyz;
                } else {
                  r40.xyz = float3(1,1,1);
                }
              }
              r29.yz = r30.yz;
              r18.xyw = r29.xyz * r40.xyz;
              r17.x = cmp(0 < r17.z);
              if (r17.x != 0) {
                if (3 == 0) r17.x = 0; else if (3+27 < 32) {                 r17.x = (uint)r30.w << (32-(3 + 27)); r17.x = (uint)r17.x >> (32-3);                } else r17.x = (uint)r30.w >> 27;
                r17.x = cmp((int)r17.x != 1);
                if (r17.x != 0) {
                  r17.x = abs(r16.x) * -0.200000003 + 0.400000006;
                  r19.xyz = r1.xyz * r17.xxx + v6.xyz;
                  r37.xyz = r35.xyz;
                  r17.x = dot(r37.xyzw, r19.xyzw);
                  r22.w = dot(r39.xyzw, r19.xyzw);
                  r23.w = cmp(r22.w >= r17.x);
                  if (r23.w != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.y, r13.z, l(144), t12.xxxx
                  r38.y = samp0[]..swiz;
                    r33.w = r34.x;
                    r29.x = dot(r33.xyzw, r19.xyzw);
                    r35.xyz = r34.yzw;
                    r29.y = dot(r35.xyzw, r19.xyzw);
                    r19.xy = r29.xy / r22.ww;
                    r19.xy = saturate(r19.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                    r19.xy = r19.xy * r38.zw + r38.xy;
                    r13.z = r17.x / r22.w;
                    r13.z = max(6.10351563e-05, r13.z);
                    r17.x = (int)r30.w & 0x0000ffff;
                    if (r6.w != 0) {
                      r29.z = (uint)r17.x;
                      r22.w = 0;
                      r23.w = 0;
                      while (true) {
                        r24.w = cmp((int)r23.w >= 8);
                        if (r24.w != 0) break;
                        r31.x = dot(icb[r23.w+0].xy, r22.xy);
                        r31.y = dot(icb[r23.w+0].yx, r22.xz);
                        r29.xy = r31.xy * r32.yy + r19.xy;
                        r24.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r29.xyz, r13.z).x;
                        r22.w = r24.w * 0.125 + r22.w;
                        r23.w = (int)r23.w + 1;
                      }
                    } else {
                      r19.z = (uint)r17.x;
                      r22.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r13.z).x;
                    }
                    r13.z = r22.w * r22.w;
                    r13.z = r13.z * r22.w;
                  } else {
                    r13.z = 1;
                  }
                } else {
                  r13.z = 1;
                }
                r13.z = r17.z * r13.z;
                r17.x = cmp(0 < r13.z);
                if (r17.x != 0) {
                  r17.x = 4.02616934e-05 * r30.x;
                  if (4 == 0) r17.z = 0; else if (4+16 < 32) {                   r17.z = (uint)r30.w << (32-(4 + 16)); r17.z = (uint)r17.z >> (32-4);                  } else r17.z = (uint)r30.w >> 16;
                  r19.x = cmp(0 < (uint)r17.z);
                  r19.x = r2.z ? r19.x : 0;
                  if (r19.x != 0) {
                    r17.z = (int)r17.z + numLights;
                    r17.z = (int)r17.z + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.x, r17.z, l(52), t12.xxxx
                  r19.x = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r29.xyzw, r17.z, l(68), t12.xyzw
                  r29.x = samp0[]..swiz;
                  r29.y = samp0[]..swiz;
                  r29.z = samp0[]..swiz;
                  r29.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r17.z, l(84), t12.xyzw
                  r31.x = samp0[]..swiz;
                  r31.y = samp0[]..swiz;
                  r31.z = samp0[]..swiz;
                  r31.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r17.z, l(100), t12.xyzw
                  r32.x = samp0[]..swiz;
                  r32.y = samp0[]..swiz;
                  r32.z = samp0[]..swiz;
                  r32.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r17.z, l(116), t12.xyzw
                  r33.x = samp0[]..swiz;
                  r33.y = samp0[]..swiz;
                  r33.z = samp0[]..swiz;
                  r33.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r17.z, l(132), t12.xyzw
                  r34.x = samp0[]..swiz;
                  r34.y = samp0[]..swiz;
                  r34.z = samp0[]..swiz;
                  r34.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r17.z, l(148), t12.xyzw
                  r35.x = samp0[]..swiz;
                  r35.y = samp0[]..swiz;
                  r35.z = samp0[]..swiz;
                  r35.w = samp0[]..swiz;
                    r19.y = abs(r16.x) * -0.200000003 + 0.400000006;
                    r20.xyz = r1.xyz * r19.yyy + v6.xyz;
                    r29.x = dot(r29.xyzw, r20.xyzw);
                    r29.y = dot(r31.xyzw, r20.xyzw);
                    r19.y = dot(r32.xyzw, r20.xyzw);
                    r19.z = dot(r33.xyzw, r20.xyzw);
                    r20.x = cmp(r19.z < r19.y);
                    r20.yz = r29.xy / r19.zz;
                    r20.yz = r20.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                    r20.yz = r20.yz + r35.zw;
                    r20.yz = r20.yz * r35.xy;
                    r29.xy = r19.xx / r34.xz;
                    r29.zw = float2(1,1) + -r29.xy;
                    r29.zw = cmp(r20.yz >= r29.zw);
                    r29.xy = cmp(r29.xy >= r20.yz);
                    r29.xy = (int2)r29.xy | (int2)r29.zw;
                    r23.w = (int)r29.y | (int)r29.x;
                    r20.x = (int)r20.x | (int)r23.w;
                    if (r20.x == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.x, r17.z, l(28), t12.xxxx
                    r20.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r29.xy, r17.z, l(164), t12.xyxx
                    r29.x = samp0[]..swiz;
                    r29.y = samp0[]..swiz;
                      r20.yz = saturate(r20.yz);
                      r30.xy = r20.yz * r34.xz + r34.yw;
                      r17.z = r29.y * r19.z;
                      r19.y = r29.x * r19.z + r19.y;
                      r17.z = r19.y / r17.z;
                      r17.z = max(6.10351563e-05, r17.z);
                      r19.y = r20.x ? 0.000000 : 0;
                      if (r6.w != 0) {
                        r20.z = (uint)r19.y;
                        r19.z = 0;
                        r23.w = 0;
                        while (true) {
                          r24.w = cmp((int)r23.w >= 8);
                          if (r24.w != 0) break;
                          r29.x = dot(icb[r23.w+0].xy, r23.xy);
                          r29.y = dot(icb[r23.w+0].yx, r23.xz);
                          r20.xy = r29.xy * r19.xx + r30.xy;
                          r20.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r17.z).x;
                          r19.z = r20.x * 0.125 + r19.z;
                          r23.w = (int)r23.w + 1;
                        }
                      } else {
                        r30.z = (uint)r19.y;
                        r19.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r30.xyz, r17.z).x;
                      }
                      r17.z = r19.z * r19.z;
                      r17.z = r17.z * r19.z;
                    } else {
                      r17.z = 1;
                    }
                    r13.z = r17.z * r13.z;
                  } else {
                    if (4 == 0) r17.z = 0; else if (4+20 < 32) {                     r17.z = (uint)r30.w << (32-(4 + 20)); r17.z = (uint)r17.z >> (32-4);                    } else r17.z = (uint)r30.w >> 20;
                    r19.x = cmp(0 < (uint)r17.z);
                    r19.x = r19.x ? r0.z : 0;
                    if (r19.x != 0) {
                      r17.z = (int)r17.z + numLights;
                      r17.z = (int)r17.z + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.x, r17.z, l(52), t12.xxxx
                    r19.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r29.xyzw, r17.z, l(68), t12.xyzw
                    r29.x = samp0[]..swiz;
                    r29.y = samp0[]..swiz;
                    r29.z = samp0[]..swiz;
                    r29.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r30.xyzw, r17.z, l(84), t12.xyzw
                    r30.x = samp0[]..swiz;
                    r30.y = samp0[]..swiz;
                    r30.z = samp0[]..swiz;
                    r30.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r17.z, l(100), t12.xyzw
                    r31.x = samp0[]..swiz;
                    r31.y = samp0[]..swiz;
                    r31.z = samp0[]..swiz;
                    r31.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r17.z, l(116), t12.xyzw
                    r32.x = samp0[]..swiz;
                    r32.y = samp0[]..swiz;
                    r32.z = samp0[]..swiz;
                    r32.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r17.z, l(132), t12.xyzw
                    r33.x = samp0[]..swiz;
                    r33.y = samp0[]..swiz;
                    r33.z = samp0[]..swiz;
                    r33.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r17.z, l(148), t12.xyzw
                    r34.x = samp0[]..swiz;
                    r34.y = samp0[]..swiz;
                    r34.z = samp0[]..swiz;
                    r34.w = samp0[]..swiz;
                      r19.y = abs(r16.x) * -0.200000003 + 0.400000006;
                      r21.xyz = r1.xyz * r19.yyy + v6.xyz;
                      r20.x = dot(r29.xyzw, r21.xyzw);
                      r20.y = dot(r30.xyzw, r21.xyzw);
                      r19.y = dot(r31.xyzw, r21.xyzw);
                      r20.z = dot(r32.xyzw, r21.xyzw);
                      r21.x = cmp(r20.z < r19.y);
                      r20.xy = r20.xy / r20.zz;
                      r20.xy = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r20.xy = r20.xy + r34.zw;
                      r20.xy = r20.xy * r34.xy;
                      r21.yz = r19.xx / r33.xz;
                      r29.xy = float2(1,1) + -r21.yz;
                      r29.xy = cmp(r20.xy >= r29.xy);
                      r21.yz = cmp(r21.yz >= r20.xy);
                      r21.yz = (int2)r21.yz | (int2)r29.xy;
                      r21.y = (int)r21.z | (int)r21.y;
                      r21.x = (int)r21.x | (int)r21.y;
                      if (r21.x == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r21.x, r17.z, l(28), t12.xxxx
                      r21.x = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r21.yz, r17.z, l(164), t12.xxyx
                      r21.y = samp0[]..swiz;
                      r21.z = samp0[]..swiz;
                        r20.xy = saturate(r20.xy);
                        r29.xy = r20.xy * r33.xz + r33.yw;
                        r17.z = r21.z * r20.z;
                        r19.y = r21.y * r20.z + r19.y;
                        r17.z = r19.y / r17.z;
                        r17.z = max(6.10351563e-05, r17.z);
                        r19.y = r21.x ? 0.000000 : 0;
                        if (r6.w != 0) {
                          r20.z = (uint)r19.y;
                          r21.xy = float2(0,0);
                          while (true) {
                            r21.z = cmp((int)r21.y >= 8);
                            if (r21.z != 0) break;
                            r30.x = dot(icb[r21.y+0].xy, r24.xy);
                            r30.y = dot(icb[r21.y+0].yx, r24.xz);
                            r20.xy = r30.xy * r19.xx + r29.xy;
                            r20.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r17.z).x;
                            r21.x = r20.x * 0.125 + r21.x;
                            r21.y = (int)r21.y + 1;
                          }
                        } else {
                          r29.z = (uint)r19.y;
                          r21.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r29.xyz, r17.z).x;
                        }
                        r17.z = r21.x * r21.x;
                        r17.z = r17.z * r21.x;
                      } else {
                        r17.z = 1;
                      }
                      r13.z = r17.z * r13.z;
                    }
                  }
                  r17.z = -r16.y * r0.w + 1;
                  r17.z = r17.z * r17.z;
                  r17.z = -r17.z * 0.620000005 + 0.620000005;
                  r17.z = r17.z + -r16.y;
                  r17.z = r17.z * 0.0126904203 + r16.y;
                  r17.z = r17.z * r13.z;
                  r16.x = cmp(0 < r16.x);
                  r20.xyz = r17.zzz * r18.xyw + r14.xyz;
                  r29.xyz = r36.xyz * r13.www + r3.xyz;
                  r13.w = dot(r29.xyz, r29.xyz);
                  r13.w = rsqrt(r13.w);
                  r29.xyz = r29.xyz * r13.www;
                  r13.w = dot(r29.xyz, r3.xyz);
                  r17.z = dot(r1.xyz, r29.xyz);
                  r17.z = abs(r17.z) * abs(r17.z);
                  r17.z = r17.z * -0.999838948 + 1;
                  r19.x = r16.y * r5.z + r5.w;
                  r17.z = r17.z * r17.z;
                  r17.z = r17.z * r19.x;
                  r17.z = rcp(r17.z);
                  r16.y = r17.x * r16.y;
                  r16.y = r17.z * r16.y;
                  r13.z = r16.y * r13.z;
                  r29.xyz = r13.zzz * r18.xyw + r28.xyz;
                  r13.w = saturate(1 + -r13.w);
                  r16.y = r13.w * r13.w;
                  r16.y = r16.y * r16.y;
                  r13.w = r16.y * r13.w;
                  r13.z = r13.z * r13.w;
                  r18.xyw = r13.zzz * r18.xyw + r27.xyz;
                  r14.xyz = r16.xxx ? r20.xyz : r14.xyz;
                  r27.xyz = r16.xxx ? r18.xyw : r27.xyz;
                  r28.xyz = r16.xxx ? r29.xyz : r28.xyz;
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
    r7.yzw = r14.xyz;
    r25.xyz = r27.xyz;
    r26.xyz = r28.xyz;
    r3.w = (int)r3.w + 32;
  }
  r0.z = max(r4.y, r4.z);
  r0.z = max(1.26815999, r0.z);
  r2.xy = float2(0,0);
  r3.w = 0;
  r4.yz = float2(0,1);
  r5.xy = float2(0,0);
  r6.xy = float2(0,0);
  r9.xy = float2(0,0);
  r10.xw = float2(1,0.787500024);
  r12.xyzw = float4(0,0,0,0);
  r13.yzw = float3(0,0,0);
  r0.w = 0;
  r4.w = 0;
  while (true) {
    r5.w = cmp((uint)r4.w >= numRefProbes);
    if (r5.w != 0) break;
    r2.z = (uint)r4.w >> 5;
    r3.xyz = (int3)r2.xyz + (int3)r11.xyz;
    r2.z = visibleProbes.Load(r3.xyzw).x;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r14.xyzw, r4.w, l(0), t15.wxyz
  r14.x = samp0[]..swiz;
  r14.y = samp0[]..swiz;
  r14.z = samp0[]..swiz;
  r14.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r15.xyzw, r4.w, l(16), t15.xyzw
  r15.x = samp0[]..swiz;
  r15.y = samp0[]..swiz;
  r15.z = samp0[]..swiz;
  r15.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r16.xyzw, r4.w, l(32), t15.yxwz
  r16.x = samp0[]..swiz;
  r16.y = samp0[]..swiz;
  r16.z = samp0[]..swiz;
  r16.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r17.xyzw, r4.w, l(48), t15.xyzw
  r17.x = samp0[]..swiz;
  r17.y = samp0[]..swiz;
  r17.z = samp0[]..swiz;
  r17.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r18.xyzw, r4.w, l(64), t15.zwxy
  r18.x = samp0[]..swiz;
  r18.y = samp0[]..swiz;
  r18.z = samp0[]..swiz;
  r18.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r19.xyzw, r4.w, l(80), t15.xyzw
  r19.x = samp0[]..swiz;
  r19.y = samp0[]..swiz;
  r19.z = samp0[]..swiz;
  r19.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r3.xy, r4.w, l(96), t15.xyxx
  r3.x = samp0[]..swiz;
  r3.y = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r20.xyzw, r4.w, l(116), t15.xyzw
  r20.x = samp0[]..swiz;
  r20.y = samp0[]..swiz;
  r20.z = samp0[]..swiz;
  r20.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r21.xyzw, r4.w, l(132), t15.zwxy
  r21.x = samp0[]..swiz;
  r21.y = samp0[]..swiz;
  r21.z = samp0[]..swiz;
  r21.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r4.w, l(148), t15.zwxy
  r22.x = samp0[]..swiz;
  r22.y = samp0[]..swiz;
  r22.z = samp0[]..swiz;
  r22.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r4.w, l(164), t15.zwxy
  r23.x = samp0[]..swiz;
  r23.y = samp0[]..swiz;
  r23.z = samp0[]..swiz;
  r23.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r4.w, l(180), t15.zwxy
  r24.x = samp0[]..swiz;
  r24.y = samp0[]..swiz;
  r24.z = samp0[]..swiz;
  r24.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r4.w, l(196), t15.xyzw
  r27.x = samp0[]..swiz;
  r27.y = samp0[]..swiz;
  r27.z = samp0[]..swiz;
  r27.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xy, r4.w, l(212), t15.xyxx
  r28.x = samp0[]..swiz;
  r28.y = samp0[]..swiz;
    r29.xyz = v6.xyz + -r14.yzw;
    r3.z = dot(r29.xyz, r29.xyz);
    r3.z = sqrt(r3.z);
    r3.z = cmp(probeDebugRadius >= r3.z);
    r5.w = (int)r20.y & 0x0000ffff;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r5.w, l(0), t16.xyzw
  r30.x = samp0[]..swiz;
  r30.y = samp0[]..swiz;
  r30.z = samp0[]..swiz;
  r30.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r5.w, l(16), t16.xyzw
  r31.x = samp0[]..swiz;
  r31.y = samp0[]..swiz;
  r31.z = samp0[]..swiz;
  r31.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r5.w, l(32), t16.xyzw
  r32.x = samp0[]..swiz;
  r32.y = samp0[]..swiz;
  r32.z = samp0[]..swiz;
  r32.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r5.w, l(48), t16.xyzw
  r33.x = samp0[]..swiz;
  r33.y = samp0[]..swiz;
  r33.z = samp0[]..swiz;
  r33.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r5.w, l(64), t16.xyzw
  r34.x = samp0[]..swiz;
  r34.y = samp0[]..swiz;
  r34.z = samp0[]..swiz;
  r34.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r5.w, l(80), t16.xyzw
  r35.x = samp0[]..swiz;
  r35.y = samp0[]..swiz;
  r35.z = samp0[]..swiz;
  r35.w = samp0[]..swiz;
    r6.w = dot(r30.xyz, r29.xyz);
    r6.w = saturate(r6.w + r30.w);
    r7.x = dot(r31.xyz, r29.xyz);
    r7.x = saturate(r7.x + r31.w);
    r6.w = r7.x * r6.w;
    r7.x = dot(r32.xyz, r29.xyz);
    r7.x = saturate(r7.x + r32.w);
    r6.w = r7.x * r6.w;
    r7.x = dot(r33.xyz, r29.xyz);
    r7.x = saturate(r7.x + r33.w);
    r6.w = r7.x * r6.w;
    r7.x = dot(r34.xyz, r29.xyz);
    r7.x = saturate(r7.x + r34.w);
    r6.w = r7.x * r6.w;
    r7.x = dot(r35.xyz, r29.xyz);
    r7.x = saturate(r7.x + r35.w);
    r4.x = r7.x * r6.w;
    r6.w = (int)r3.x & 1;
    r30.xy = r6.ww ? r4.xy : r4.zx;
    r31.xy = r20.zw;
    r31.z = r21.z;
    r4.x = dot(r8.xyz, r31.xyz);
    r6.w = dot(r29.xyz, r31.xyz);
    r6.w = r6.w + -r21.w;
    r7.x = cmp(r6.w >= 0);
    r6.w = r7.x ? abs(r6.w) : -abs(r6.w);
    r4.x = max(1.00000001e-07, -r4.x);
    r4.x = r6.w / r4.x;
    r4.x = min(131072, abs(r4.x));
    r21.z = r22.z;
    r6.w = dot(r8.xyz, r21.xyz);
    r7.x = dot(r29.xyz, r21.xyz);
    r7.x = r7.x + -r22.w;
    r9.w = cmp(r7.x >= 0);
    r7.x = r9.w ? abs(r7.x) : -abs(r7.x);
    r6.w = max(1.00000001e-07, -r6.w);
    r6.w = r7.x / r6.w;
    r4.x = min(abs(r6.w), r4.x);
    r22.z = r23.z;
    r6.w = dot(r8.xyz, r22.xyz);
    r7.x = dot(r29.xyz, r22.xyz);
    r7.x = r7.x + -r23.w;
    r9.w = cmp(r7.x >= 0);
    r7.x = r9.w ? abs(r7.x) : -abs(r7.x);
    r6.w = max(1.00000001e-07, -r6.w);
    r6.w = r7.x / r6.w;
    r4.x = min(abs(r6.w), r4.x);
    r23.z = r24.z;
    r6.w = dot(r8.xyz, r23.xyz);
    r7.x = dot(r29.xyz, r23.xyz);
    r7.x = r7.x + -r24.w;
    r9.w = cmp(r7.x >= 0);
    r7.x = r9.w ? abs(r7.x) : -abs(r7.x);
    r6.w = max(1.00000001e-07, -r6.w);
    r6.w = r7.x / r6.w;
    r4.x = min(abs(r6.w), r4.x);
    r24.z = r27.x;
    r6.w = dot(r8.xyz, r24.xyz);
    r7.x = dot(r29.xyz, r24.xyz);
    r7.x = r7.x + -r27.y;
    r9.w = cmp(r7.x >= 0);
    r7.x = r9.w ? abs(r7.x) : -abs(r7.x);
    r6.w = max(1.00000001e-07, -r6.w);
    r6.w = r7.x / r6.w;
    r4.x = min(abs(r6.w), r4.x);
    r28.zw = r27.zw;
    r6.w = dot(r8.zxy, r28.xzw);
    r7.x = dot(r29.zxy, r28.xzw);
    r7.x = r7.x + -r28.y;
    r9.w = cmp(r7.x >= 0);
    r7.x = r9.w ? abs(r7.x) : -abs(r7.x);
    r6.w = max(1.00000001e-07, -r6.w);
    r6.w = r7.x / r6.w;
    r4.x = min(abs(r6.w), r4.x);
    r21.x = r17.w;
    r21.yz = r18.zw;
    r21.xyz = r21.xyz + r29.xyz;
    r21.xyz = r8.xyz * r4.xxx + r21.xyz;
    r6.w = dot(r21.xyz, r21.xyz);
    r6.w = sqrt(r6.w);
    r4.x = r4.x / r6.w;
    r4.x = r4.x + r4.x;
    r4.x = sqrt(r4.x);
    r4.x = 0.155199945 + r4.x;
    r14.y = r15.z;
    r14.z = r16.x;
    r22.x = dot(r21.xyz, r14.xyz);
    r23.xy = r15.xw;
    r23.z = r16.w;
    r22.y = dot(r21.xyz, r23.xyz);
    r16.x = r15.y;
    r22.z = dot(r21.xyz, r16.xyz);
    if (6 == 0) r15.x = 0; else if (6+25 < 32) {     r15.x = (uint)r20.y << (32-(6 + 25)); r15.x = (uint)r15.x >> (32-6);    } else r15.x = (uint)r20.y >> 25;
    if (9 == 0) r15.y = 0; else if (9+16 < 32) {     r15.y = (uint)r20.y << (32-(9 + 16)); r15.y = (uint)r15.y >> (32-9);    } else r15.y = (uint)r20.y >> 16;
    r22.w = (uint)r15.y;
    r15.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r22.xyzw, r4.x).xyz;
    r20.yzw = (int3)r15.yzw & int3(-2147483648,-2147483648,-2147483648);
    r20.yzw = cmp((int3)r20.yzw == int3(2139095040,2139095040,2139095040));
    r4.x = (int)r20.z | (int)r20.y;
    r4.x = (int)r20.w | (int)r4.x;
    r15.yzw = r4.xxx ? float3(1,1,0) : r15.yzw;
    r21.x = dot(r29.xyz, r14.xyz);
    r21.y = dot(r29.xyz, r23.xyz);
    r21.z = dot(r29.xyz, r16.xyz);
    r17.xyz = saturate(r21.xyz * r17.xyz + float3(0.5,0.5,0.5));
    r18.z = r19.x;
    r17.xyz = r17.xyz * r18.xyz + r19.yzw;
    r22.x = dot(r1.xyz, r14.xyz);
    r22.y = dot(r1.xyz, r23.xyz);
    r22.z = dot(r1.xyz, r16.xyz);
    r14.xyz = cmp(float3(0,0,0) < r22.xyz);
    r5.z = r14.x ? 0 : 0.5;
    r16.xyz = r17.xyz + r5.xyz;
    r16.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r16.xyz, 0).xyz;
    r6.z = r14.y ? 0 : 0.5;
    r14.xyw = r17.xyz + r6.xyz;
    r14.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r14.xyw, 0).xyz;
    r9.z = r14.z ? 0 : 0.5;
    r17.xyz = r17.xyz + r9.xyz;
    r17.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r17.xyz, 0).xyz;
    r18.xyz = r22.xyz * r22.xyz;
    r19.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r22.xyzw, 6).xyz;
    r20.yzw = (int3)r19.xyz & int3(-2147483648,-2147483648,-2147483648);
    r20.yzw = cmp((int3)r20.yzw == int3(2139095040,2139095040,2139095040));
    r4.x = (int)r20.z | (int)r20.y;
    r4.x = (int)r20.w | (int)r4.x;
    r19.xyz = r4.xxx ? float3(1,1,0) : r19.xyz;
    r21.xyzw = r12.xyzw;
    r20.yzw = r13.yzw;
    r4.x = r0.w;
    r5.z = r2.z;
    while (true) {
      if (r5.z == 0) break;
      r6.z = firstbitlow((uint)r5.z);
      r6.z = 1 << (int)r6.z;
      r6.w = (int)r5.z & (int)r6.z;
      if (r6.w != 0) {
        r6.z = ~(int)r6.z;
        r5.z = (int)r5.z & (int)r6.z;
        if (r3.z != 0) {
          r6.z = r3.x;
          r22.xy = r30.xy;
          r6.w = 1;
          while (true) {
            r7.x = cmp((int)r6.w >= (int)r15.x);
            if (r7.x != 0) break;
            r7.x = (int)r5.w + (int)r6.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r23.xyzw, r7.x, l(0), t16.xyzw
          r23.x = samp0[]..swiz;
          r23.y = samp0[]..swiz;
          r23.z = samp0[]..swiz;
          r23.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r24.xyzw, r7.x, l(16), t16.xyzw
          r24.x = samp0[]..swiz;
          r24.y = samp0[]..swiz;
          r24.z = samp0[]..swiz;
          r24.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r7.x, l(32), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r7.x, l(48), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r7.x, l(64), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r7.x, l(80), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
            r7.x = dot(r23.xyz, r29.xyz);
            r7.x = saturate(r7.x + r23.w);
            r7.x = r22.x * r7.x;
            r9.z = dot(r24.xyz, r29.xyz);
            r9.z = saturate(r9.z + r24.w);
            r7.x = r9.z * r7.x;
            r9.z = dot(r27.xyz, r29.xyz);
            r9.z = saturate(r9.z + r27.w);
            r7.x = r9.z * r7.x;
            r9.z = dot(r28.xyz, r29.xyz);
            r9.z = saturate(r9.z + r28.w);
            r7.x = r9.z * r7.x;
            r9.z = dot(r31.xyz, r29.xyz);
            r9.z = saturate(r9.z + r31.w);
            r7.x = r9.z * r7.x;
            r9.z = dot(r32.xyz, r29.xyz);
            r9.z = saturate(r9.z + r32.w);
            r22.x = r9.z * r7.x;
            r9.w = (uint)r6.z >> 2;
            if (1 == 0) r11.w = 0; else if (1+2 < 32) {             r11.w = (uint)r6.z << (32-(1 + 2)); r11.w = (uint)r11.w >> (32-1);            } else r11.w = (uint)r6.z >> 2;
            r14.z = (int)r9.w & 2;
            r16.w = max(r22.y, r22.x);
            r7.x = -r7.x * r9.z + 1;
            r7.x = r22.y * r7.x;
            r10.y = r14.z ? r7.x : r16.w;
            r22.xy = r11.ww ? r22.xy : r10.xy;
            r6.w = (int)r6.w + 1;
            r6.z = r9.w;
          }
          r22.y = saturate(r22.y);
          r6.z = r22.y * r3.y;
          r6.w = cmp(0 < r6.z);
          if (r6.w != 0) {
            r23.z = r22.y * r3.y + r20.w;
            r6.z = r6.z * r20.x;
            r22.xzw = r18.xyz * r6.zzz;
            r24.xyz = r22.zzz * r14.xyw;
            r24.xyz = r16.xyz * r22.xxx + r24.xyz;
            r22.xzw = r17.xyz * r22.www + r24.xyz;
            r24.xyz = r22.xzw * r19.xyz;
            r6.w = dot(r24.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r24.xyz = r22.xzw * r19.xyz + r21.xyz;
            r7.x = r6.w * r0.z;
            r22.xzw = r15.yzw * r6.zzz;
            r6.z = dot(r22.xzw, float3(0.212599993,0.715200007,0.0722000003));
            r6.z = r0.z * r6.w + r6.z;
            r6.z = r7.x / r6.z;
            r27.x = r21.w;
            r27.yz = r20.yz;
            r23.xyw = r22.zwx * r6.zzz + r27.yzx;
            r24.w = r23.w;
          } else {
            r24.xyzw = r21.xyzw;
            r23.xyz = r20.yzw;
          }
          r4.x = -1;
          r21.xyzw = r24.xyzw;
          r20.yzw = r23.xyz;
          break;
        }
      }
    }
    if (r4.x != 0) {
      r12.xyzw = r21.xyzw;
      r13.yzw = r20.yzw;
      r0.w = -1;
      break;
    }
    r4.w = (int)r4.w + 32;
    r12.xyzw = r21.xyzw;
    r13.yzw = r20.yzw;
    r0.w = r4.x;
  }
  if (r0.w == 0) {
    r0.w = numRefProbes + -numOverrideProbes;
    r2.x = (int)r0.w & -32;
    r2.y = (int)r0.w + (int)-r2.x;
    r2.z = numRefProbes & -32;
    r3.x = (int)-r2.z + numRefProbes;
    r4.xy = float2(0,0);
    r5.w = 0;
    r6.yz = float2(0,1);
    r9.xy = float2(0,0);
    r10.x = 1;
    r14.xy = float2(0,0);
    r15.xy = float2(0,0);
    r16.xyzw = r12.xyzw;
    r17.yzw = r13.yzw;
    r3.y = r2.x;
    while (true) {
      r3.z = cmp((uint)r3.y >= numRefProbes);
      if (r3.z != 0) break;
      r4.z = (uint)r3.y >> 5;
      r5.xyz = (int3)r4.xyz + (int3)r11.xyz;
      r3.z = visibleProbes.Load(r5.xyzw).x;
      r3.w = cmp((int)r2.x == (int)r3.y);
      bitmask.z = ((~(-1 << r2.y)) << 0) & 0xffffffff;  r4.z = (((uint)0 << 0) & bitmask.z) | ((uint)r3.z & ~bitmask.z);
      r3.z = r3.w ? r4.z : r3.z;
      r3.w = cmp((int)r2.z == (int)r3.y);
      if (r3.x == 0) r4.z = 0; else if (r3.x+0 < 32) {       r4.z = (uint)r3.z << (32-(r3.x + 0)); r4.z = (uint)r4.z >> (32-r3.x);      } else r4.z = (uint)r3.z >> 0;
      r3.z = r3.w ? r4.z : r3.z;
      r3.w = (int)r3.y + numLights;
      r18.xyzw = r16.xyzw;
      r19.xyz = r17.yzw;
      r4.z = r3.z;
      while (true) {
        if (r4.z == 0) break;
        r4.w = firstbitlow((uint)r4.z);
        r5.x = 1 << (int)r4.w;
        r5.y = (int)r4.z & (int)r5.x;
        if (r5.y != 0) {
          r4.z = (int)r4.z ^ (int)r5.x;
          r5.x = (int)r3.w + (int)r4.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r20.xyzw, r5.x, l(0), t11.xyzw
        r20.x = samp0[]..swiz;
        r20.y = samp0[]..swiz;
        r20.z = samp0[]..swiz;
        r20.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r5.xy, r5.x, l(16), t11.xyxx
        r5.x = samp0[]..swiz;
        r5.y = samp0[]..swiz;
          r20.xyz = -v6.xyz + r20.xyz;
          r5.z = r20.w;
          r5.xyz = cmp(abs(r20.xyz) < r5.zxy);
          r5.x = r5.y ? r5.x : 0;
          r5.x = r5.z ? r5.x : 0;
          if (r5.x != 0) {
            r4.w = (int)r3.y + (int)r4.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r20.xyzw, r4.w, l(0), t15.wxyz
          r20.x = samp0[]..swiz;
          r20.y = samp0[]..swiz;
          r20.z = samp0[]..swiz;
          r20.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r5.xy, r4.w, l(96), t15.xyxx
          r5.x = samp0[]..swiz;
          r5.y = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r21.xyzw, r4.w, l(116), t15.zwxy
          r21.x = samp0[]..swiz;
          r21.y = samp0[]..swiz;
          r21.z = samp0[]..swiz;
          r21.w = samp0[]..swiz;
            r22.xyz = v6.xyz + -r20.yzw;
            r5.z = (int)r21.w & 0x0000ffff;
            if (6 == 0) r6.w = 0; else if (6+25 < 32) {             r6.w = (uint)r21.w << (32-(6 + 25)); r6.w = (uint)r6.w >> (32-6);            } else r6.w = (uint)r21.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r23.xyzw, r5.z, l(0), t16.xyzw
          r23.x = samp0[]..swiz;
          r23.y = samp0[]..swiz;
          r23.z = samp0[]..swiz;
          r23.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r24.xyzw, r5.z, l(16), t16.xyzw
          r24.x = samp0[]..swiz;
          r24.y = samp0[]..swiz;
          r24.z = samp0[]..swiz;
          r24.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r5.z, l(32), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r5.z, l(48), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r5.z, l(64), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r5.z, l(80), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
            r7.x = dot(r23.xyz, r22.xyz);
            r7.x = saturate(r7.x + r23.w);
            r9.w = dot(r24.xyz, r22.xyz);
            r9.w = saturate(r9.w + r24.w);
            r7.x = r9.w * r7.x;
            r9.w = dot(r27.xyz, r22.xyz);
            r9.w = saturate(r9.w + r27.w);
            r7.x = r9.w * r7.x;
            r9.w = dot(r28.xyz, r22.xyz);
            r9.w = saturate(r9.w + r28.w);
            r7.x = r9.w * r7.x;
            r9.w = dot(r29.xyz, r22.xyz);
            r9.w = saturate(r9.w + r29.w);
            r7.x = r9.w * r7.x;
            r9.w = dot(r30.xyz, r22.xyz);
            r9.w = saturate(r9.w + r30.w);
            r6.x = r9.w * r7.x;
            r7.x = r5.x ? 0.000000 : 0;
            r23.xy = r7.xx ? r6.xy : r6.zx;
            r6.x = r5.x;
            r24.xy = r23.xy;
            r7.x = 1;
            while (true) {
              r9.w = cmp((int)r7.x >= (int)r6.w);
              if (r9.w != 0) break;
              r9.w = (int)r5.z + (int)r7.x;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r9.w, l(0), t16.xyzw
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r9.w, l(16), t16.xyzw
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r9.w, l(32), t16.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r9.w, l(48), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r9.w, l(64), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r9.w, l(80), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
              r9.w = dot(r27.xyz, r22.xyz);
              r9.w = saturate(r9.w + r27.w);
              r9.w = r24.x * r9.w;
              r11.w = dot(r28.xyz, r22.xyz);
              r11.w = saturate(r11.w + r28.w);
              r9.w = r11.w * r9.w;
              r11.w = dot(r29.xyz, r22.xyz);
              r11.w = saturate(r11.w + r29.w);
              r9.w = r11.w * r9.w;
              r11.w = dot(r30.xyz, r22.xyz);
              r11.w = saturate(r11.w + r30.w);
              r9.w = r11.w * r9.w;
              r11.w = dot(r31.xyz, r22.xyz);
              r11.w = saturate(r11.w + r31.w);
              r9.w = r11.w * r9.w;
              r11.w = dot(r32.xyz, r22.xyz);
              r11.w = saturate(r11.w + r32.w);
              r24.x = r11.w * r9.w;
              r14.w = (uint)r6.x >> 2;
              if (1 == 0) r15.w = 0; else if (1+2 < 32) {               r15.w = (uint)r6.x << (32-(1 + 2)); r15.w = (uint)r15.w >> (32-1);              } else r15.w = (uint)r6.x >> 2;
              r20.w = (int)r14.w & 2;
              r22.w = max(r24.y, r24.x);
              r9.w = -r9.w * r11.w + 1;
              r9.w = r24.y * r9.w;
              r10.y = r20.w ? r9.w : r22.w;
              r24.xy = r15.ww ? r24.xy : r10.xy;
              r7.x = (int)r7.x + 1;
              r6.x = r14.w;
            }
            r24.y = saturate(r24.y);
            r5.x = r24.y * r5.y;
            r5.z = cmp(0 < r5.x);
            if (r5.z != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r4.w, l(16), t15.xyzw
            r23.x = samp0[]..swiz;
            r23.y = samp0[]..swiz;
            r23.z = samp0[]..swiz;
            r23.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r4.w, l(32), t15.yxwz
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r4.w, l(48), t15.xyzw
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r4.w, l(64), t15.zwxy
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r4.w, l(80), t15.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r4.w, l(132), t15.zwxy
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r4.w, l(148), t15.zwxy
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r4.w, l(164), t15.zwxy
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r4.w, l(180), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r4.w, l(196), t15.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xy, r4.w, l(212), t15.xyxx
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
              r19.z = r24.y * r5.y + r19.z;
              r4.w = r5.x * r21.z;
              r21.z = r31.z;
              r5.x = dot(r8.xyz, r21.xyz);
              r5.y = dot(r22.xyz, r21.xyz);
              r5.y = r5.y + -r31.w;
              r5.z = cmp(r5.y >= 0);
              r5.y = r5.z ? abs(r5.y) : -abs(r5.y);
              r5.x = max(1.00000001e-07, -r5.x);
              r5.x = r5.y / r5.x;
              r5.x = min(131072, abs(r5.x));
              r31.z = r32.z;
              r5.y = dot(r8.xyz, r31.xyz);
              r5.z = dot(r22.xyz, r31.xyz);
              r5.z = r5.z + -r32.w;
              r6.x = cmp(r5.z >= 0);
              r5.z = r6.x ? abs(r5.z) : -abs(r5.z);
              r5.y = max(1.00000001e-07, -r5.y);
              r5.y = r5.z / r5.y;
              r5.x = min(r5.x, abs(r5.y));
              r32.z = r33.z;
              r5.y = dot(r8.xyz, r32.xyz);
              r5.z = dot(r22.xyz, r32.xyz);
              r5.z = r5.z + -r33.w;
              r6.x = cmp(r5.z >= 0);
              r5.z = r6.x ? abs(r5.z) : -abs(r5.z);
              r5.y = max(1.00000001e-07, -r5.y);
              r5.y = r5.z / r5.y;
              r5.x = min(r5.x, abs(r5.y));
              r33.z = r34.z;
              r5.y = dot(r8.xyz, r33.xyz);
              r5.z = dot(r22.xyz, r33.xyz);
              r5.z = r5.z + -r34.w;
              r6.x = cmp(r5.z >= 0);
              r5.z = r6.x ? abs(r5.z) : -abs(r5.z);
              r5.y = max(1.00000001e-07, -r5.y);
              r5.y = r5.z / r5.y;
              r5.x = min(r5.x, abs(r5.y));
              r34.z = r35.x;
              r5.y = dot(r8.xyz, r34.xyz);
              r5.z = dot(r22.xyz, r34.xyz);
              r5.z = r5.z + -r35.y;
              r6.x = cmp(r5.z >= 0);
              r5.z = r6.x ? abs(r5.z) : -abs(r5.z);
              r5.y = max(1.00000001e-07, -r5.y);
              r5.y = r5.z / r5.y;
              r5.x = min(r5.x, abs(r5.y));
              r36.zw = r35.zw;
              r5.y = dot(r8.zxy, r36.xzw);
              r5.z = dot(r22.zxy, r36.xzw);
              r5.z = r5.z + -r36.y;
              r6.x = cmp(r5.z >= 0);
              r5.z = r6.x ? abs(r5.z) : -abs(r5.z);
              r5.y = max(1.00000001e-07, -r5.y);
              r5.y = r5.z / r5.y;
              r5.x = min(r5.x, abs(r5.y));
              r21.x = r28.w;
              r21.yz = r29.zw;
              r21.xyz = r21.xyz + r22.xyz;
              r21.xyz = r8.xyz * r5.xxx + r21.xyz;
              r5.y = dot(r21.xyz, r21.xyz);
              r5.y = sqrt(r5.y);
              r5.x = r5.x / r5.y;
              r5.x = r5.x + r5.x;
              r5.x = sqrt(r5.x);
              r5.x = 0.155199945 + r5.x;
              r20.y = r23.z;
              r20.z = r27.x;
              r31.x = dot(r21.xyz, r20.xyz);
              r32.xy = r23.xw;
              r32.z = r27.w;
              r31.y = dot(r21.xyz, r32.xyz);
              r27.x = r23.y;
              r31.z = dot(r21.xyz, r27.xyz);
              if (9 == 0) r5.y = 0; else if (9+16 < 32) {               r5.y = (uint)r21.w << (32-(9 + 16)); r5.y = (uint)r5.y >> (32-9);              } else r5.y = (uint)r21.w >> 16;
              r31.w = (uint)r5.y;
              r5.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r31.xyzw, r5.x).xyz;
              r21.xyz = (int3)r5.xyz & int3(-2147483648,-2147483648,-2147483648);
              r21.xyz = cmp((int3)r21.xyz == int3(2139095040,2139095040,2139095040));
              r6.x = (int)r21.y | (int)r21.x;
              r6.x = (int)r21.z | (int)r6.x;
              r5.xyz = r6.xxx ? float3(1,1,0) : r5.xyz;
              r21.x = dot(r22.xyz, r20.xyz);
              r21.y = dot(r22.xyz, r32.xyz);
              r21.z = dot(r22.xyz, r27.xyz);
              r21.xyz = saturate(r21.xyz * r28.xyz + float3(0.5,0.5,0.5));
              r29.z = r30.x;
              r21.xyz = r21.xyz * r29.xyz + r30.yzw;
              r31.x = dot(r1.xyz, r20.xyz);
              r31.y = dot(r1.xyz, r32.xyz);
              r31.z = dot(r1.xyz, r27.xyz);
              r20.xyz = cmp(float3(0,0,0) < r31.xyz);
              r9.z = r20.x ? 0 : 0.5;
              r22.xyz = r21.xyz + r9.xyz;
              r22.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r22.xyz, 0).xyz;
              r23.xyz = r31.xyz * r31.xyz;
              r23.xyz = r23.xyz * r4.www;
              r14.z = r20.y ? 0 : 0.5;
              r20.xyw = r21.xyz + r14.xyz;
              r20.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r20.xyw, 0).xyz;
              r20.xyw = r20.xyw * r23.yyy;
              r20.xyw = r22.xyz * r23.xxx + r20.xyw;
              r15.z = r20.z ? 0 : 0.5;
              r21.xyz = r21.xyz + r15.xyz;
              r21.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r21.xyz, 0).xyz;
              r20.xyz = r21.xyz * r23.zzz + r20.xyw;
              r21.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r31.xyzw, 6).xyz;
              r22.xyz = (int3)r21.xyz & int3(-2147483648,-2147483648,-2147483648);
              r22.xyz = cmp((int3)r22.xyz == int3(2139095040,2139095040,2139095040));
              r6.x = (int)r22.y | (int)r22.x;
              r6.x = (int)r22.z | (int)r6.x;
              r21.xyz = r6.xxx ? float3(1,1,0) : r21.xyz;
              r22.xyz = r21.xyz * r20.xyz;
              r6.x = dot(r22.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r18.xyz = r20.xyz * r21.xyz + r18.xyz;
              r6.w = r6.x * r0.z;
              r5.xyz = r5.xyz * r4.www;
              r4.w = dot(r5.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r4.w = r0.z * r6.x + r4.w;
              r4.w = r6.w / r4.w;
              r20.x = r18.w;
              r20.yz = r19.xy;
              r19.xyw = r5.yzx * r4.www + r20.yzx;
              r18.w = r19.w;
            }
          }
        }
      }
      r16.xyzw = r18.xyzw;
      r17.yzw = r19.xyz;
      r3.y = (int)r3.y + 32;
    }
    r2.z = cmp(r17.w < 1);
    if (r2.z != 0) {
      r3.xy = float2(0,0);
      r4.w = 0;
      r5.yz = float2(0,1);
      r6.xy = float2(0,0);
      r9.x = 1;
      r14.xy = float2(0,0);
      r15.xy = float2(0,0);
      r18.x = r16.w;
      r18.yzw = r17.yzw;
      r19.xyz = r16.xyz;
      r2.z = r17.w;
      r3.w = 0;
      while (true) {
        r5.w = cmp((uint)r3.w >= (uint)r0.w);
        if (r5.w != 0) break;
        r3.z = (uint)r3.w >> 5;
        r4.xyz = (int3)r3.xyz + (int3)r11.xyz;
        r3.z = visibleProbes.Load(r4.xyzw).x;
        r4.x = cmp((int)r2.x == (int)r3.w);
        if (r2.y == 0) r4.y = 0; else if (r2.y+0 < 32) {         r4.y = (uint)r3.z << (32-(r2.y + 0)); r4.y = (uint)r4.y >> (32-r2.y);        } else r4.y = (uint)r3.z >> 0;
        r3.z = r4.x ? r4.y : r3.z;
        r4.x = (int)r3.w + numLights;
        r20.xyzw = r18.xyzw;
        r21.xyz = r19.xyz;
        r4.y = r2.z;
        r4.z = r3.z;
        while (true) {
          if (r4.z == 0) break;
          r5.w = firstbitlow((uint)r4.z);
          r6.w = 1 << (int)r5.w;
          r7.x = (int)r4.z & (int)r6.w;
          if (r7.x != 0) {
            r4.z = (int)r4.z ^ (int)r6.w;
            r6.w = (int)r4.x + (int)r5.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r22.xyzw, r6.w, l(0), t11.xyzw
          r22.x = samp0[]..swiz;
          r22.y = samp0[]..swiz;
          r22.z = samp0[]..swiz;
          r22.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r23.xy, r6.w, l(16), t11.xyxx
          r23.x = samp0[]..swiz;
          r23.y = samp0[]..swiz;
            r22.xyz = -v6.xyz + r22.xyz;
            r23.z = r22.w;
            r22.xyz = cmp(abs(r22.xyz) < r23.zxy);
            r6.w = r22.y ? r22.x : 0;
            r6.w = r22.z ? r6.w : 0;
            if (r6.w != 0) {
              r5.w = (int)r3.w + (int)r5.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r5.w, l(0), t15.wxyz
            r22.x = samp0[]..swiz;
            r22.y = samp0[]..swiz;
            r22.z = samp0[]..swiz;
            r22.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r9.zw, r5.w, l(96), t15.xxxy
            r9.z = samp0[]..swiz;
            r9.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r5.w, l(116), t15.zwxy
            r23.x = samp0[]..swiz;
            r23.y = samp0[]..swiz;
            r23.z = samp0[]..swiz;
            r23.w = samp0[]..swiz;
              r24.xyz = v6.xyz + -r22.yzw;
              r6.w = (int)r23.w & 0x0000ffff;
              if (6 == 0) r7.x = 0; else if (6+25 < 32) {               r7.x = (uint)r23.w << (32-(6 + 25)); r7.x = (uint)r7.x >> (32-6);              } else r7.x = (uint)r23.w >> 25;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r6.w, l(0), t16.xyzw
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r6.w, l(16), t16.xyzw
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r6.w, l(32), t16.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r6.w, l(48), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r6.w, l(64), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r6.w, l(80), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
              r10.x = dot(r27.xyz, r24.xyz);
              r10.x = saturate(r10.x + r27.w);
              r10.y = dot(r28.xyz, r24.xyz);
              r10.y = saturate(r10.y + r28.w);
              r10.x = r10.x * r10.y;
              r10.y = dot(r29.xyz, r24.xyz);
              r10.y = saturate(r10.y + r29.w);
              r10.x = r10.x * r10.y;
              r10.y = dot(r30.xyz, r24.xyz);
              r10.y = saturate(r10.y + r30.w);
              r10.x = r10.x * r10.y;
              r10.y = dot(r31.xyz, r24.xyz);
              r10.y = saturate(r10.y + r31.w);
              r10.x = r10.x * r10.y;
              r10.y = dot(r32.xyz, r24.xyz);
              r10.y = saturate(r10.y + r32.w);
              r5.x = r10.x * r10.y;
              r10.x = (int)r9.z & 1;
              r10.xy = r10.xx ? r5.xy : r5.zx;
              r5.x = r9.z;
              r27.xy = r10.xy;
              r11.w = 1;
              while (true) {
                r13.w = cmp((int)r11.w >= (int)r7.x);
                if (r13.w != 0) break;
                r13.w = (int)r6.w + (int)r11.w;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r13.w, l(0), t16.xyzw
              r28.x = samp0[]..swiz;
              r28.y = samp0[]..swiz;
              r28.z = samp0[]..swiz;
              r28.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r13.w, l(16), t16.xyzw
              r29.x = samp0[]..swiz;
              r29.y = samp0[]..swiz;
              r29.z = samp0[]..swiz;
              r29.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r13.w, l(32), t16.xyzw
              r30.x = samp0[]..swiz;
              r30.y = samp0[]..swiz;
              r30.z = samp0[]..swiz;
              r30.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r13.w, l(48), t16.xyzw
              r31.x = samp0[]..swiz;
              r31.y = samp0[]..swiz;
              r31.z = samp0[]..swiz;
              r31.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r13.w, l(64), t16.xyzw
              r32.x = samp0[]..swiz;
              r32.y = samp0[]..swiz;
              r32.z = samp0[]..swiz;
              r32.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r13.w, l(80), t16.xyzw
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
                r13.w = dot(r28.xyz, r24.xyz);
                r13.w = saturate(r13.w + r28.w);
                r13.w = r27.x * r13.w;
                r14.w = dot(r29.xyz, r24.xyz);
                r14.w = saturate(r14.w + r29.w);
                r13.w = r14.w * r13.w;
                r14.w = dot(r30.xyz, r24.xyz);
                r14.w = saturate(r14.w + r30.w);
                r13.w = r14.w * r13.w;
                r14.w = dot(r31.xyz, r24.xyz);
                r14.w = saturate(r14.w + r31.w);
                r13.w = r14.w * r13.w;
                r14.w = dot(r32.xyz, r24.xyz);
                r14.w = saturate(r14.w + r32.w);
                r13.w = r14.w * r13.w;
                r14.w = dot(r33.xyz, r24.xyz);
                r14.w = saturate(r14.w + r33.w);
                r27.x = r14.w * r13.w;
                r15.w = (uint)r5.x >> 2;
                if (1 == 0) r19.w = 0; else if (1+2 < 32) {                 r19.w = (uint)r5.x << (32-(1 + 2)); r19.w = (uint)r19.w >> (32-1);                } else r19.w = (uint)r5.x >> 2;
                r21.w = (int)r15.w & 2;
                r22.w = max(r27.y, r27.x);
                r13.w = -r13.w * r14.w + 1;
                r13.w = r27.y * r13.w;
                r9.y = r21.w ? r13.w : r22.w;
                r27.xy = r19.ww ? r27.xy : r9.xy;
                r11.w = (int)r11.w + 1;
                r5.x = r15.w;
              }
              r5.x = saturate(r27.y + -r4.y);
              r6.w = r5.x * r9.w;
              r7.x = cmp(0 < r6.w);
              if (r7.x != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r5.w, l(16), t15.xyzw
              r28.x = samp0[]..swiz;
              r28.y = samp0[]..swiz;
              r28.z = samp0[]..swiz;
              r28.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r5.w, l(32), t15.yxwz
              r29.x = samp0[]..swiz;
              r29.y = samp0[]..swiz;
              r29.z = samp0[]..swiz;
              r29.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r5.w, l(48), t15.xyzw
              r30.x = samp0[]..swiz;
              r30.y = samp0[]..swiz;
              r30.z = samp0[]..swiz;
              r30.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r5.w, l(64), t15.zwxy
              r31.x = samp0[]..swiz;
              r31.y = samp0[]..swiz;
              r31.z = samp0[]..swiz;
              r31.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r5.w, l(80), t15.xyzw
              r32.x = samp0[]..swiz;
              r32.y = samp0[]..swiz;
              r32.z = samp0[]..swiz;
              r32.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r5.w, l(132), t15.zwxy
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r5.w, l(148), t15.zwxy
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r5.w, l(164), t15.zwxy
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r5.w, l(180), t15.zwxy
              r36.x = samp0[]..swiz;
              r36.y = samp0[]..swiz;
              r36.z = samp0[]..swiz;
              r36.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r5.w, l(196), t15.xyzw
              r37.x = samp0[]..swiz;
              r37.y = samp0[]..swiz;
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xy, r5.w, l(212), t15.xyxx
              r38.x = samp0[]..swiz;
              r38.y = samp0[]..swiz;
                r20.w = r5.x * r9.w + r20.w;
                r5.x = r6.w * r23.z;
                r23.z = r33.z;
                r5.w = dot(r8.xyz, r23.xyz);
                r6.w = dot(r24.xyz, r23.xyz);
                r6.w = r6.w + -r33.w;
                r7.x = cmp(r6.w >= 0);
                r6.w = r7.x ? abs(r6.w) : -abs(r6.w);
                r5.w = max(1.00000001e-07, -r5.w);
                r5.w = r6.w / r5.w;
                r5.w = min(131072, abs(r5.w));
                r33.z = r34.z;
                r6.w = dot(r8.xyz, r33.xyz);
                r7.x = dot(r24.xyz, r33.xyz);
                r7.x = r7.x + -r34.w;
                r9.y = cmp(r7.x >= 0);
                r7.x = r9.y ? abs(r7.x) : -abs(r7.x);
                r6.w = max(1.00000001e-07, -r6.w);
                r6.w = r7.x / r6.w;
                r5.w = min(abs(r6.w), r5.w);
                r34.z = r35.z;
                r6.w = dot(r8.xyz, r34.xyz);
                r7.x = dot(r24.xyz, r34.xyz);
                r7.x = r7.x + -r35.w;
                r9.y = cmp(r7.x >= 0);
                r7.x = r9.y ? abs(r7.x) : -abs(r7.x);
                r6.w = max(1.00000001e-07, -r6.w);
                r6.w = r7.x / r6.w;
                r5.w = min(abs(r6.w), r5.w);
                r35.z = r36.z;
                r6.w = dot(r8.xyz, r35.xyz);
                r7.x = dot(r24.xyz, r35.xyz);
                r7.x = r7.x + -r36.w;
                r9.y = cmp(r7.x >= 0);
                r7.x = r9.y ? abs(r7.x) : -abs(r7.x);
                r6.w = max(1.00000001e-07, -r6.w);
                r6.w = r7.x / r6.w;
                r5.w = min(abs(r6.w), r5.w);
                r36.z = r37.x;
                r6.w = dot(r8.xyz, r36.xyz);
                r7.x = dot(r24.xyz, r36.xyz);
                r7.x = r7.x + -r37.y;
                r9.y = cmp(r7.x >= 0);
                r7.x = r9.y ? abs(r7.x) : -abs(r7.x);
                r6.w = max(1.00000001e-07, -r6.w);
                r6.w = r7.x / r6.w;
                r5.w = min(abs(r6.w), r5.w);
                r38.zw = r37.zw;
                r6.w = dot(r8.zxy, r38.xzw);
                r7.x = dot(r24.zxy, r38.xzw);
                r7.x = r7.x + -r38.y;
                r9.y = cmp(r7.x >= 0);
                r7.x = r9.y ? abs(r7.x) : -abs(r7.x);
                r6.w = max(1.00000001e-07, -r6.w);
                r6.w = r7.x / r6.w;
                r5.w = min(abs(r6.w), r5.w);
                r23.x = r30.w;
                r23.yz = r31.zw;
                r9.yzw = r23.xyz + r24.xyz;
                r9.yzw = r8.xyz * r5.www + r9.yzw;
                r6.w = dot(r9.yzw, r9.yzw);
                r6.w = sqrt(r6.w);
                r5.w = r5.w / r6.w;
                r5.w = r5.w + r5.w;
                r5.w = sqrt(r5.w);
                r5.w = 0.155199945 + r5.w;
                r22.y = r28.z;
                r22.z = r29.x;
                r33.x = dot(r9.yzw, r22.xyz);
                r23.xy = r28.xw;
                r23.z = r29.w;
                r33.y = dot(r9.yzw, r23.xyz);
                r29.x = r28.y;
                r33.z = dot(r9.yzw, r29.xyz);
                if (9 == 0) r6.w = 0; else if (9+16 < 32) {                 r6.w = (uint)r23.w << (32-(9 + 16)); r6.w = (uint)r6.w >> (32-9);                } else r6.w = (uint)r23.w >> 16;
                r33.w = (uint)r6.w;
                r9.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, r5.w).xyz;
                r27.xzw = (int3)r9.yzw & int3(-2147483648,-2147483648,-2147483648);
                r27.xzw = cmp((int3)r27.xzw == int3(2139095040,2139095040,2139095040));
                r5.w = (int)r27.z | (int)r27.x;
                r5.w = (int)r27.w | (int)r5.w;
                r9.yzw = r5.www ? float3(1,1,0) : r9.yzw;
                r28.x = dot(r24.xyz, r22.xyz);
                r28.y = dot(r24.xyz, r23.xyz);
                r28.z = dot(r24.xyz, r29.xyz);
                r24.xyz = saturate(r28.xyz * r30.xyz + float3(0.5,0.5,0.5));
                r31.z = r32.x;
                r24.xyz = r24.xyz * r31.xyz + r32.yzw;
                r33.x = dot(r1.xyz, r22.xyz);
                r33.y = dot(r1.xyz, r23.xyz);
                r33.z = dot(r1.xyz, r29.xyz);
                r22.xyz = cmp(float3(0,0,0) < r33.xyz);
                r6.z = r22.x ? 0 : 0.5;
                r23.xyz = r24.xyz + r6.xyz;
                r23.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
                r27.xzw = r33.xyz * r33.xyz;
                r27.xzw = r27.xzw * r5.xxx;
                r14.z = r22.y ? 0 : 0.5;
                r22.xyw = r24.xyz + r14.xyz;
                r22.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r22.xyw, 0).xyz;
                r22.xyw = r22.xyw * r27.zzz;
                r22.xyw = r23.xyz * r27.xxx + r22.xyw;
                r15.z = r22.z ? 0 : 0.5;
                r23.xyz = r24.xyz + r15.xyz;
                r23.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
                r22.xyz = r23.xyz * r27.www + r22.xyw;
                r23.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, 6).xyz;
                r24.xyz = (int3)r23.xyz & int3(-2147483648,-2147483648,-2147483648);
                r24.xyz = cmp((int3)r24.xyz == int3(2139095040,2139095040,2139095040));
                r5.w = (int)r24.y | (int)r24.x;
                r5.w = (int)r24.z | (int)r5.w;
                r23.xyz = r5.www ? float3(1,1,0) : r23.xyz;
                r24.xyz = r23.xyz * r22.xyz;
                r5.w = dot(r24.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r21.xyz = r22.xyz * r23.xyz + r21.xyz;
                r6.z = r5.w * r0.z;
                r9.yzw = r9.yzw * r5.xxx;
                r5.x = dot(r9.yzw, float3(0.212599993,0.715200007,0.0722000003));
                r5.x = r0.z * r5.w + r5.x;
                r5.x = r6.z / r5.x;
                r20.xyz = r9.yzw * r5.xxx + r20.xyz;
              }
            }
          }
        }
        r18.xyzw = r20.xyzw;
        r19.xyz = r21.xyz;
        r3.w = (int)r3.w + 32;
      }
      r17.xyzw = r18.zxyw;
      r16.xyz = r19.xyz;
      r17.xyzw = r17.yzxw;
    } else {
      r17.x = r16.w;
    }
    r0.z = max(1, r17.w);
    r0.z = rcp(r0.z);
    r17.w = saturate(r17.w);
    r12.xyz = r16.xyz * r0.zzz;
    r13.xyz = r17.xyz * r0.zzz;
    r0.w = cmp(r17.w < 0.99000001);
    if (r0.w != 0) {
      r0.w = 1 + -r17.w;
      r2.x = sunConstants.globalProbeExposure * r0.w;
      r3.xyz = -globalProbeConstants.data[0].xyz + v6.xyz;
      r4.x = globalProbeConstants.data[0].w * r3.x;
      r4.yz = globalProbeConstants.data[1].xy * r3.yz;
      r3.xyz = saturate(float3(0.5,0.5,0.5) + r4.xyz);
      r4.xy = globalProbeConstants.data[1].zw * r3.xy;
      r4.z = globalProbeConstants.data[2].x * r3.z;
      r3.xyz = globalProbeConstants.data[2].yzw + r4.xyz;
      r4.xyz = cmp(float3(0,0,0) < r1.xyz);
      r4.xyz = r4.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
      r4.w = 0;
      r5.xyz = r4.wwx + r3.xyz;
      r5.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r5.xyz, 0).xyz;
      r6.xyz = r1.xyz * r1.xyz;
      r2.xyz = r6.xyz * r2.xxx;
      r6.xyz = r4.wwy + r3.xyz;
      r6.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r6.xyz, 0).xyz;
      r6.xyz = r6.xyz * r2.yyy;
      r5.xyz = r5.xyz * r2.xxx + r6.xyz;
      r3.xyz = r4.wwz + r3.xyz;
      r3.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r3.xyz, 0).xyz;
      r2.xyz = r3.xyz * r2.zzz + r5.xyz;
      r1.w = 0;
      r1.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r1.xyzw, 6).xyz;
      r1.xyz = r2.xyz * r1.xyz;
      r1.w = dot(r1.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r12.xyz = r16.xyz * r0.zzz + r1.xyz;
      r8.w = 0;
      r1.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r8.xyzw, 0.99999994).xyz;
      r0.z = sunConstants.globalProbeExposure * r0.w + -r1.w;
      r0.z = r0.z * 0.800000012 + r1.w;
      r13.xyz = r1.xyz * r0.zzz + r13.xyz;
    }
  } else {
    r13.x = r12.w;
  }
  r1.xyz = r12.xyz + r7.yzw;
  r10.z = 0.984375 * r2.w;
  r0.zw = float2(0.0078125,0.0078125) + r10.zw;
  r0.zw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r0.zw, 0).xy;
  r2.xyz = r13.xyz * r0.zzz + r25.xyz;
  r3.xyz = r13.xyz * r0.www + r26.xyz;
  r2.xyz = float3(0.959999979,0.959999979,0.959999979) * r2.xyz;
  r2.xyz = r3.xyz * float3(0.0399999991,0.0399999991,0.0399999991) + r2.xyz;
  r1.xyz = r1.xyz * diffuseAlbedo.xyz + r2.xyz;
  r0.z = dot(r1.xyz, float3(0.298999995,0.587000012,0.114));
  r0.z = max(9.99999975e-05, r0.z);
  r0.z = max(relHDRExposure.x, r0.z);
  r0.xzw = r0.xxx * r0.zzz + r1.xyz;
  o0.w = 1 + -r0.y;
  r0.y = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.y != 0) {
    r0.y = dot(v6.xyz, v6.xyz);
    r1.x = rsqrt(r0.y);
    r1.xyz = v6.xyz * r1.xxx;
    r0.y = sqrt(r0.y);
    r1.w = cmp(0 < fogConstants.blendAmount);
    if (r1.w != 0) {
      r2.xy = r0.yy * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r2.xy = fogConstants.atmospherefogdensityatcamera.xy * r2.xy;
      r1.w = cmp(0.00999999978 < abs(v6.z));
      r2.zw = fogConstants.atmospherefogheightdensityscale.xy * v6.zz;
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
      r1.w = r0.y * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r1.w = fogConstants.atmospherefogdensityatcamera.x * r1.w;
      r2.w = cmp(0.00999999978 < abs(v6.z));
      r3.x = fogConstants.atmospherefogheightdensityscale.x * v6.z;
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
    r0.y = -fogConstants.atmospherehazebasedist + r0.y;
    r0.y = saturate(fogConstants.atmospherehazefadedist * r0.y);
    r0.y = r1.y * r0.y;
    r1.x = saturate(r1.x);
    r1.x = r1.x * r1.x + 1;
    r1.x = r1.x * 0.0596831031 + -1;
    r1.x = fogConstants.atmospheresunstrength * r1.x + 1;
    r1.yzw = fogConstants.atmosphereMieDensity.xyz * r0.yyy;
    r1.xyz = r1.xxx * fogConstants.atmosphereRayleighDensity.xyz + r1.yzw;
    r1.xyz = fogConstants.atmosphereInScatterIntensity * r1.xyz;
    r3.xyz = float3(1,1,1) + -r2.xyz;
    r1.xyz = r3.xyz * r1.xyz;
    r1.xyz = r0.xzw * r2.xyz + r1.xyz;
  } else {
    r0.y = fogConstants.heightFalloff * v6.z;
    r1.w = fogConstants.heightFalloff * v6.z + fogConstants.K0;
    r2.x = cmp(abs(r0.y) < 9.99999975e-05);
    r2.y = min(64, r1.w);
    r2.y = 1.44269502 * r2.y;
    r2.y = exp2(r2.y);
    r2.z = saturate(fogConstants.K0b);
    r2.w = cmp(r1.w < 0);
    r1.w = 1 + r1.w;
    r1.w = r2.w ? r2.y : r1.w;
    r1.w = -fogConstants.K0b + r1.w;
    r0.y = r2.x ? 1 : r0.y;
    r0.y = r1.w / r0.y;
    r0.y = r2.x ? r2.z : r0.y;
    r0.y = fogConstants.expMul * r0.y;
    r1.w = dot(v6.xyz, v6.xyz);
    r2.x = sqrt(r1.w);
    r0.y = r0.y * r2.x + fogConstants.expAdd;
    r0.y = exp2(r0.y);
    r0.y = min(1, r0.y);
    r0.y = 1 + -r0.y;
    r1.w = rsqrt(r1.w);
    r2.xyz = v6.xyz * r1.www;
    r1.w = dot(fogConstants.wldSunFogDir.xyz, r2.xyz);
    r1.w = saturate(fogConstants.sunFogAngles.y * r1.w + fogConstants.sunFogAngles.x);
    r2.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r2.xyzw = r1.wwww * r2.xyzw + fogConstants.sunFogColor.xyzw;
    r0.y = r2.w * r0.y;
    r2.xyz = r2.xyz + -r0.xzw;
    r1.xyz = r0.yyy * r2.xyz + r0.xzw;
  }
  r0.xyz = relHDRExposure.yyy * r1.xyz;
  r1.xyz = cmp(r0.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r0.xyz = r1.xyz ? r0.xyz : 0;
  o0.xyz = min(float3(65024,65024,64512), r0.xyz);
  return;
}