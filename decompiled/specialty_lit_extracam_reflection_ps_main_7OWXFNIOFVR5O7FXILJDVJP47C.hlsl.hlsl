// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:42:32 2021

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
  float detailScaleHeight : packoffset(c12.z);
  uint extracamSelect : packoffset(c12.w);
  float scriptControl : packoffset(c13);
  float extraCamWarpAmount : packoffset(c13.y);
  float2 wobbleNormalScroll1 : packoffset(c13.z);
  float2 wobbleNormalRotate1 : packoffset(c14);
  float2 wobbleNormalScroll2 : packoffset(c14.z);
  float2 wobbleNormalRotate2 : packoffset(c15);
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
SamplerState extracamSampler_s : register(s7);
SamplerComparisonState ShadowSamplerComparisonState_s : register(s13);
StructuredBuffer<shaderConstantSetBuffer> shaderConstantSetBuffer : register(t0);
StructuredBuffer<modelInstanceBuffer> modelInstanceBuffer : register(t4);
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
Texture2D<float4> colorMap : register(t21);
Texture2D<float4> specColorMap : register(t22);
StructuredBuffer<gSunShadowTree> gSunShadowTree : register(t23);
Texture2D<float4> normalMap : register(t24);
Texture2D<float4> glossMap : register(t25);
Texture2D<float4> aoMap : register(t26);
Texture2D<float4> detailMap : register(t29);
Texture2D<float4> extracamTexture1 : register(t30);
Texture2DArray<float> gTransShadowmapArray : register(t31);
Texture2D<float4> extracamTexture2 : register(t37);
Texture2D<float4> extracamTexture3 : register(t38);
Texture2D<float4> extracamTexture4 : register(t46);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float v1 : COLOR1,
  float2 w1 : TEXCOORD0,
  nointerpolation uint4 v2 : TEXCOORD4,
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
// unknown dcl_: dcl_resource_structured t0, 384
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t4, 24
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

// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.x, v2.x, l(4), t4.xxxx
r0.x = samp0[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.x, r0.x, l(64), t0.xxxx
r0.x = samp0[]..swiz;
  r1.xyzw = colorMap.Sample(colorSampler_s, w1.xy).xyzw;
  r0.yzw = float3(-1,-1,-1) + colorTint.xyz;
  r0.yzw = r1.www * r0.yzw + float3(1,1,1);
  r0.yzw = r1.xyz * r0.yzw;
  o0.w = v1.x * r1.w;
  r1.x = specColorMap.Sample(specColorSampler_s, w1.xy).x;
  r1.yzw = float3(-0.0399999991,-0.0399999991,-0.0399999991) + specColorTint.xyz;
  r1.yzw = r1.xxx * r1.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r1.x = saturate(1 + -r1.x);
  r0.yzw = r1.xxx * r0.yzw;
  r1.x = aoMap.Sample(aoSampler_s, w1.xy).x;
  r2.x = glossMap.Sample(specColorSampler_s, w1.xy).x;
  r2.y = glossRange.y + -glossRange.x;
  r2.x = r2.x * r2.y + glossRange.x;
  r2.x = saturate(0.0588235296 * r2.x);
  r2.yz = renderTargetSize.zw * extraCamWarpAmount;
  r3.xyz = normalMap.Sample(normalSampler_s, w1.xy).xyz;
  r3.xyz = float3(-0.5,-0.5,-0) + r3.xyz;
  r3.xyz = baseNormalHeight * r3.xyz + float3(0.5,0.5,0);
  r3.xy = r3.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.w = dot(r3.xy, r3.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r4.z = sqrt(r2.w);
  r2.w = r3.z * r3.z;
  r2.w = 0.333333343 * r2.w;
  r2.w = min(1, r2.w);
  r3.zw = float2(-0.5,-0.5) + w1.xy;
  r5.xy = gameTime.ww * wobbleNormalScroll2.xy;
  r4.w = wobbleNormalRotate1.y * gameTime.w + 1;
  r4.w = wobbleNormalRotate1.x * r4.w;
  r4.w = 0.0174532924 * r4.w;
  sincos(r4.w, r6.x, r7.x);
  r7.y = r7.x;
  r7.z = r6.x;
  r8.x = dot(r7.yz, r3.zw);
  r7.x = -r6.x;
  r8.y = dot(r7.xy, r3.zw);
  r5.zw = gameTime.ww * wobbleNormalScroll1.xy;
  r5.zw = r8.xy * detailScale.xy + r5.zw;
  r5.zw = float2(0.5,0.5) + r5.zw;
  r6.xyz = detailMap.Sample(normalSampler_s, r5.zw).xyz;
  r5.zw = r6.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r4.w = r6.z * r6.z;
  r4.w = 0.333333343 * r4.w;
  r4.w = min(1, r4.w);
  r0.x = detailScaleHeight * r0.x;
  r4.xy = r5.zw * r0.xx + r3.xy;
  r3.x = dot(r4.xyz, r4.xyz);
  r3.x = rsqrt(r3.x);
  r4.xyz = r4.xyz * r3.xxx;
  r2.w = r4.w * r0.x + r2.w;
  r3.xy = r6.xy * float2(2,2) + float2(-1,-1);
  r3.xy = r3.xy * r2.yz;
  r3.xy = r3.xy * r0.xx + w1.xy;
  r4.w = wobbleNormalRotate2.y * gameTime.w + 1;
  r4.w = wobbleNormalRotate2.x * r4.w;
  r4.w = 0.0174532924 * r4.w;
  sincos(r4.w, r6.x, r7.x);
  r7.y = r7.x;
  r7.z = r6.x;
  r8.x = dot(r7.yz, r3.zw);
  r7.x = -r6.x;
  r8.y = dot(r7.xy, r3.zw);
  r3.zw = r8.xy * detailScale.xy + r5.xy;
  r3.zw = float2(0.5,0.5) + r3.zw;
  r5.xyz = detailMap.Sample(normalSampler_s, r3.zw).xyz;
  r3.zw = r5.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r4.w = r5.z * r5.z;
  r4.w = 0.333333343 * r4.w;
  r4.w = min(1, r4.w);
  r4.xy = r3.zw * r0.xx + r4.xy;
  r3.z = dot(r4.xyz, r4.xyz);
  r3.z = rsqrt(r3.z);
  r4.xyz = r4.xyz * r3.zzz;
  r2.w = r4.w * r0.x + r2.w;
  r3.zw = r5.xy * float2(2,2) + float2(-1,-1);
  r2.yz = r3.zw * r2.yz;
  r2.yz = r2.yz * r0.xx + r3.xy;
  r0.x = v7.x ? 1 : -1;
  r3.x = dot(v3.xyz, v3.xyz);
  r3.x = rsqrt(r3.x);
  r3.xyz = v3.xyz * r3.xxx;
  r3.xyz = r3.xyz * r0.xxx;
  r3.w = dot(v4.xyz, v4.xyz);
  r3.w = rsqrt(r3.w);
  r5.xyz = v4.xyz * r3.www;
  r5.xyz = r5.xyz * r0.xxx;
  r3.w = dot(v5.xyz, v5.xyz);
  r3.w = rsqrt(r3.w);
  r6.xyz = v5.xyz * r3.www;
  r6.xyz = r6.xyz * r0.xxx;
  r0.x = -17 * r2.x;
  r0.x = exp2(r0.x);
  r0.x = r2.w + r0.x;
  r0.x = log2(r0.x);
  r7.y = saturate(-0.0588235296 * r0.x);
  r6.xyz = r6.xyz * r4.yyy;
  r4.xyw = r5.xyz * r4.xxx + r6.xyz;
  r3.xyz = r3.xyz * r4.zzz + r4.xyw;
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = rsqrt(r0.x);
  r3.xyz = r3.xyz * r0.xxx;
  r0.x = cmp(extracamSelect == 4);
  if (r0.x != 0) {
    r4.xyz = extracamTexture4.Sample(extracamSampler_s, r2.yz).xyz;
  } else {
    r0.x = cmp(extracamSelect == 3);
    if (r0.x != 0) {
      r4.xyz = extracamTexture3.Sample(extracamSampler_s, r2.yz).xyz;
    } else {
      r0.x = cmp(extracamSelect == 2);
      if (r0.x != 0) {
        r4.xyz = extracamTexture2.Sample(extracamSampler_s, r2.yz).xyz;
      } else {
        r4.xyz = extracamTexture1.Sample(extracamSampler_s, r2.yz).xyz;
      }
    }
  }
  r2.xyz = hdrControl0.www * r4.xyz;
  r4.xy = (uint2)v0.xy;
  r0.x = cmp(v0.z >= 0.984375);
  r2.w = 1.01587307 * v0.z;
  r4.z = v0.z * 64 + -63;
  r0.x = r0.x ? r4.z : r2.w;
  r0.x = max(9.99999994e-09, r0.x);
  r0.x = rcp(r0.x);
  r2.w = dot(-v6.xyz, -v6.xyz);
  r2.w = rsqrt(r2.w);
  r5.xyz = -v6.xyz * r2.www;
  r4.z = cmp(isDepthHack != 0);
  r6.xy = (uint2)r4.yx;
  r4.w = dot(r6.yx, float2(0.0671105608,0.00583714992));
  r4.w = frac(r4.w);
  r4.w = 52.9829178 * r4.w;
  r4.w = frac(r4.w);
  r4.w = r4.w * 6.28318548 + gameTick.w;
  sincos(r4.w, r8.x, r9.x);
  r4.w = dot(r6.xy, float2(0.0671105608,0.00583714992));
  r4.w = frac(r4.w);
  r4.w = 52.9829178 * r4.w;
  r4.w = frac(r4.w);
  r4.w = r4.w * 6.28318548 + gameTick.w;
  sincos(r4.w, r6.x, r10.x);
  r7.x = saturate(dot(r3.xyz, r5.xyz));
  r4.w = dot(-r5.xyz, r3.xyz);
  r4.w = r4.w + r4.w;
  r6.yzw = r3.xyz * -r4.www + -r5.xyz;
  r4.w = 17 * r7.y;
  r4.w = exp2(r4.w);
  r4.w = 2 + r4.w;
  r4.w = 2 / r4.w;
  r5.w = sqrt(r4.w);
  r7.z = numRefProbes + -numOverrideProbes;
  r0.x = 0.0078125 * r0.x;
  r0.x = min(15, r0.x);
  r0.x = (uint)r0.x;
  r11.xy = (uint2)r4.xy >> int2(6,6);
  r11.z = (uint)r0.x << 4;
  r0.x = (int)r7.z & -32;
  r4.x = (int)-r0.x + (int)r7.z;
  r4.y = numRefProbes & -32;
  r7.w = (int)-r4.y + numRefProbes;
  r12.xy = float2(0,0);
  r13.w = 0;
  r14.yz = float2(0,1);
  r15.xy = float2(0,0);
  r16.x = 1;
  r17.xy = float2(0,0);
  r18.xy = float2(0,0);
  r19.xyzw = float4(0,0,0,0);
  r8.z = r0.x;
  while (true) {
    r8.w = cmp((uint)r8.z >= numRefProbes);
    if (r8.w != 0) break;
    r12.z = (uint)r8.z >> 5;
    r13.xyz = (int3)r11.xyz + (int3)r12.xyz;
    r8.w = visibleProbes.Load(r13.xyzw).x;
    r9.w = cmp((int)r0.x == (int)r8.z);
    bitmask.y = ((~(-1 << r4.x)) << 0) & 0xffffffff;  r10.y = (((uint)0 << 0) & bitmask.y) | ((uint)r8.w & ~bitmask.y);
    r8.w = r9.w ? r10.y : r8.w;
    r9.w = cmp((int)r4.y == (int)r8.z);
    if (r7.w == 0) r10.y = 0; else if (r7.w+0 < 32) {     r10.y = (uint)r8.w << (32-(r7.w + 0)); r10.y = (uint)r10.y >> (32-r7.w);    } else r10.y = (uint)r8.w >> 0;
    r8.w = r9.w ? r10.y : r8.w;
    r9.w = (int)r8.z + numLights;
    r20.xyzw = r19.xyzw;
    r10.y = r8.w;
    while (true) {
      if (r10.y == 0) break;
      r10.z = firstbitlow((uint)r10.y);
      r10.w = 1 << (int)r10.z;
      r11.w = (int)r10.w & (int)r10.y;
      if (r11.w != 0) {
        r10.y = (int)r10.w ^ (int)r10.y;
        r10.w = (int)r9.w + (int)r10.z;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r21.xyzw, r10.w, l(0), t11.xyzw
      r21.x = samp0[]..swiz;
      r21.y = samp0[]..swiz;
      r21.z = samp0[]..swiz;
      r21.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r13.xy, r10.w, l(16), t11.xyxx
      r13.x = samp0[]..swiz;
      r13.y = samp0[]..swiz;
        r21.xyz = -v6.xyz + r21.xyz;
        r13.z = r21.w;
        r13.xyz = cmp(abs(r21.xyz) < r13.zxy);
        r10.w = r13.y ? r13.x : 0;
        r10.w = r13.z ? r10.w : 0;
        if (r10.w != 0) {
          r10.z = (int)r8.z + (int)r10.z;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r21.xyzw, r10.z, l(0), t15.wxyz
        r21.x = samp0[]..swiz;
        r21.y = samp0[]..swiz;
        r21.z = samp0[]..swiz;
        r21.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r10.z, l(88), t15.zxyw
        r22.x = samp0[]..swiz;
        r22.y = samp0[]..swiz;
        r22.z = samp0[]..swiz;
        r22.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r12.zw, r10.z, l(116), t15.xxxy
        r12.z = samp0[]..swiz;
        r12.w = samp0[]..swiz;
          r13.xyz = v6.xyz + -r21.yzw;
          r10.w = (int)r12.w & 0x0000ffff;
          if (6 == 0) r11.w = 0; else if (6+25 < 32) {           r11.w = (uint)r12.w << (32-(6 + 25)); r11.w = (uint)r11.w >> (32-6);          } else r11.w = (uint)r12.w >> 25;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r23.xyzw, r10.w, l(0), t16.xyzw
        r23.x = samp0[]..swiz;
        r23.y = samp0[]..swiz;
        r23.z = samp0[]..swiz;
        r23.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r24.xyzw, r10.w, l(16), t16.xyzw
        r24.x = samp0[]..swiz;
        r24.y = samp0[]..swiz;
        r24.z = samp0[]..swiz;
        r24.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r25.xyzw, r10.w, l(32), t16.xyzw
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        r25.z = samp0[]..swiz;
        r25.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r10.w, l(48), t16.xyzw
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
        r26.z = samp0[]..swiz;
        r26.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r10.w, l(64), t16.xyzw
        r27.x = samp0[]..swiz;
        r27.y = samp0[]..swiz;
        r27.z = samp0[]..swiz;
        r27.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r10.w, l(80), t16.xyzw
        r28.x = samp0[]..swiz;
        r28.y = samp0[]..swiz;
        r28.z = samp0[]..swiz;
        r28.w = samp0[]..swiz;
          r14.w = dot(r23.xyz, r13.xyz);
          r14.w = saturate(r14.w + r23.w);
          r15.w = dot(r24.xyz, r13.xyz);
          r15.w = saturate(r15.w + r24.w);
          r14.w = r15.w * r14.w;
          r15.w = dot(r25.xyz, r13.xyz);
          r15.w = saturate(r15.w + r25.w);
          r14.w = r15.w * r14.w;
          r15.w = dot(r26.xyz, r13.xyz);
          r15.w = saturate(r15.w + r26.w);
          r14.w = r15.w * r14.w;
          r15.w = dot(r27.xyz, r13.xyz);
          r15.w = saturate(r15.w + r27.w);
          r14.w = r15.w * r14.w;
          r15.w = dot(r28.xyz, r13.xyz);
          r15.w = saturate(r15.w + r28.w);
          r14.x = r15.w * r14.w;
          r14.w = (int)r22.x & 1;
          r14.xw = r14.ww ? r14.xy : r14.zx;
          r15.w = r22.x;
          r23.xy = r14.xw;
          r16.z = 1;
          while (true) {
            r16.w = cmp((int)r16.z >= (int)r11.w);
            if (r16.w != 0) break;
            r16.w = (int)r10.w + (int)r16.z;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r24.xyzw, r16.w, l(0), t16.xyzw
          r24.x = samp0[]..swiz;
          r24.y = samp0[]..swiz;
          r24.z = samp0[]..swiz;
          r24.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r25.xyzw, r16.w, l(16), t16.xyzw
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r16.w, l(32), t16.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r16.w, l(48), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r16.w, l(64), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r16.w, l(80), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
            r16.w = dot(r24.xyz, r13.xyz);
            r16.w = saturate(r16.w + r24.w);
            r16.w = r23.x * r16.w;
            r17.w = dot(r25.xyz, r13.xyz);
            r17.w = saturate(r17.w + r25.w);
            r16.w = r17.w * r16.w;
            r17.w = dot(r26.xyz, r13.xyz);
            r17.w = saturate(r17.w + r26.w);
            r16.w = r17.w * r16.w;
            r17.w = dot(r27.xyz, r13.xyz);
            r17.w = saturate(r17.w + r27.w);
            r16.w = r17.w * r16.w;
            r17.w = dot(r28.xyz, r13.xyz);
            r17.w = saturate(r17.w + r28.w);
            r16.w = r17.w * r16.w;
            r17.w = dot(r29.xyz, r13.xyz);
            r17.w = saturate(r17.w + r29.w);
            r23.x = r17.w * r16.w;
            r18.w = (uint)r15.w >> 2;
            if (1 == 0) r21.w = 0; else if (1+2 < 32) {             r21.w = (uint)r15.w << (32-(1 + 2)); r21.w = (uint)r21.w >> (32-1);            } else r21.w = (uint)r15.w >> 2;
            r23.z = (int)r18.w & 2;
            r23.w = max(r23.y, r23.x);
            r16.w = -r16.w * r17.w + 1;
            r16.w = r23.y * r16.w;
            r16.y = r23.z ? r16.w : r23.w;
            r23.xy = r21.ww ? r23.xy : r16.xy;
            r16.z = (int)r16.z + 1;
            r15.w = r18.w;
          }
          r23.y = saturate(r23.y);
          r10.w = r23.y * r22.w;
          r11.w = cmp(0 < r10.w);
          if (r11.w != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r10.z, l(16), t15.xyzw
          r24.x = samp0[]..swiz;
          r24.y = samp0[]..swiz;
          r24.z = samp0[]..swiz;
          r24.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r10.z, l(32), t15.yxwz
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r16.yzw, r10.z, l(48), t15.xxyz
          r16.y = samp0[]..swiz;
          r16.z = samp0[]..swiz;
          r16.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r10.z, l(72), t15.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
            r20.w = r23.y * r22.w + r20.w;
            r10.z = r10.w * r12.z;
            r21.y = r24.z;
            r21.z = r25.x;
            r27.x = dot(r13.xyz, r21.xyz);
            r28.xy = r24.xw;
            r28.z = r25.w;
            r27.y = dot(r13.xyz, r28.xyz);
            r25.x = r24.y;
            r27.z = dot(r13.xyz, r25.xyz);
            r13.xyz = saturate(r27.xyz * r16.yzw + float3(0.5,0.5,0.5));
            r22.x = r26.w;
            r13.xyz = r13.xyz * r26.xyz + r22.xyz;
            r21.x = dot(r3.xyz, r21.xyz);
            r21.y = dot(r3.xyz, r28.xyz);
            r21.z = dot(r3.xyz, r25.xyz);
            r16.yzw = cmp(float3(0,0,0) < r21.xyz);
            r15.z = r16.y ? 0 : 0.5;
            r22.xyz = r15.xyz + r13.xyz;
            r22.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r22.xyz, 0).xyz;
            r23.xzw = r21.xyz * r21.xyz;
            r23.xzw = r23.xzw * r10.zzz;
            r17.z = r16.z ? 0 : 0.5;
            r24.xyz = r17.xyz + r13.xyz;
            r24.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r24.xyz, 0).xyz;
            r24.xyz = r24.xyz * r23.zzz;
            r22.xyz = r22.xyz * r23.xxx + r24.xyz;
            r18.z = r16.w ? 0 : 0.5;
            r13.xyz = r18.xyz + r13.xyz;
            r13.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r13.xyz, 0).xyz;
            r13.xyz = r13.xyz * r23.www + r22.xyz;
            if (9 == 0) r10.z = 0; else if (9+16 < 32) {             r10.z = (uint)r12.w << (32-(9 + 16)); r10.z = (uint)r10.z >> (32-9);            } else r10.z = (uint)r12.w >> 16;
            r21.w = (uint)r10.z;
            r16.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r21.xyzw, 6).xyz;
            r20.xyz = r13.xyz * r16.yzw + r20.xyz;
          }
        }
      }
    }
    r19.xyzw = r20.xyzw;
    r8.z = (int)r8.z + 32;
  }
  r4.y = cmp(r19.w < 1);
  if (r4.y != 0) {
    r12.xy = float2(0,0);
    r13.w = 0;
    r14.yz = float2(0,1);
    r15.xy = float2(0,0);
    r16.x = 1;
    r17.xy = float2(0,0);
    r18.xy = float2(0,0);
    r20.xyzw = r19.xyzw;
    r4.y = r19.w;
    r7.w = 0;
    while (true) {
      r8.z = cmp((uint)r7.w >= (uint)r7.z);
      if (r8.z != 0) break;
      r12.z = (uint)r7.w >> 5;
      r13.xyz = (int3)r11.xyz + (int3)r12.xyz;
      r8.z = visibleProbes.Load(r13.xyzw).x;
      r8.w = cmp((int)r0.x == (int)r7.w);
      if (r4.x == 0) r9.w = 0; else if (r4.x+0 < 32) {       r9.w = (uint)r8.z << (32-(r4.x + 0)); r9.w = (uint)r9.w >> (32-r4.x);      } else r9.w = (uint)r8.z >> 0;
      r8.z = r8.w ? r9.w : r8.z;
      r8.w = (int)r7.w + numLights;
      r21.xyzw = r20.xyzw;
      r9.w = r4.y;
      r10.y = r8.z;
      while (true) {
        if (r10.y == 0) break;
        r10.z = firstbitlow((uint)r10.y);
        r10.w = 1 << (int)r10.z;
        r11.w = (int)r10.w & (int)r10.y;
        if (r11.w != 0) {
          r10.y = (int)r10.w ^ (int)r10.y;
          r10.w = (int)r8.w + (int)r10.z;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r22.xyzw, r10.w, l(0), t11.xyzw
        r22.x = samp0[]..swiz;
        r22.y = samp0[]..swiz;
        r22.z = samp0[]..swiz;
        r22.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r13.xy, r10.w, l(16), t11.xyxx
        r13.x = samp0[]..swiz;
        r13.y = samp0[]..swiz;
          r22.xyz = -v6.xyz + r22.xyz;
          r13.z = r22.w;
          r13.xyz = cmp(abs(r22.xyz) < r13.zxy);
          r10.w = r13.y ? r13.x : 0;
          r10.w = r13.z ? r10.w : 0;
          if (r10.w != 0) {
            r10.z = (int)r7.w + (int)r10.z;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r10.z, l(0), t15.wxyz
          r22.x = samp0[]..swiz;
          r22.y = samp0[]..swiz;
          r22.z = samp0[]..swiz;
          r22.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r10.z, l(88), t15.zxyw
          r23.x = samp0[]..swiz;
          r23.y = samp0[]..swiz;
          r23.z = samp0[]..swiz;
          r23.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r12.zw, r10.z, l(116), t15.xxxy
          r12.z = samp0[]..swiz;
          r12.w = samp0[]..swiz;
            r13.xyz = v6.xyz + -r22.yzw;
            r10.w = (int)r12.w & 0x0000ffff;
            if (6 == 0) r11.w = 0; else if (6+25 < 32) {             r11.w = (uint)r12.w << (32-(6 + 25)); r11.w = (uint)r11.w >> (32-6);            } else r11.w = (uint)r12.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r24.xyzw, r10.w, l(0), t16.xyzw
          r24.x = samp0[]..swiz;
          r24.y = samp0[]..swiz;
          r24.z = samp0[]..swiz;
          r24.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r25.xyzw, r10.w, l(16), t16.xyzw
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r10.w, l(32), t16.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r10.w, l(48), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r10.w, l(64), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r10.w, l(80), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
            r14.w = dot(r24.xyz, r13.xyz);
            r14.w = saturate(r14.w + r24.w);
            r15.w = dot(r25.xyz, r13.xyz);
            r15.w = saturate(r15.w + r25.w);
            r14.w = r15.w * r14.w;
            r15.w = dot(r26.xyz, r13.xyz);
            r15.w = saturate(r15.w + r26.w);
            r14.w = r15.w * r14.w;
            r15.w = dot(r27.xyz, r13.xyz);
            r15.w = saturate(r15.w + r27.w);
            r14.w = r15.w * r14.w;
            r15.w = dot(r28.xyz, r13.xyz);
            r15.w = saturate(r15.w + r28.w);
            r14.w = r15.w * r14.w;
            r15.w = dot(r29.xyz, r13.xyz);
            r15.w = saturate(r15.w + r29.w);
            r14.x = r15.w * r14.w;
            r14.w = (int)r23.x & 1;
            r14.xw = r14.ww ? r14.xy : r14.zx;
            r15.w = r23.x;
            r24.xy = r14.xw;
            r16.z = 1;
            while (true) {
              r16.w = cmp((int)r16.z >= (int)r11.w);
              if (r16.w != 0) break;
              r16.w = (int)r10.w + (int)r16.z;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r25.xyzw, r16.w, l(0), t16.xyzw
            r25.x = samp0[]..swiz;
            r25.y = samp0[]..swiz;
            r25.z = samp0[]..swiz;
            r25.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r16.w, l(16), t16.xyzw
            r26.x = samp0[]..swiz;
            r26.y = samp0[]..swiz;
            r26.z = samp0[]..swiz;
            r26.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r16.w, l(32), t16.xyzw
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r16.w, l(48), t16.xyzw
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r16.w, l(64), t16.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r16.w, l(80), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
              r16.w = dot(r25.xyz, r13.xyz);
              r16.w = saturate(r16.w + r25.w);
              r16.w = r24.x * r16.w;
              r17.w = dot(r26.xyz, r13.xyz);
              r17.w = saturate(r17.w + r26.w);
              r16.w = r17.w * r16.w;
              r17.w = dot(r27.xyz, r13.xyz);
              r17.w = saturate(r17.w + r27.w);
              r16.w = r17.w * r16.w;
              r17.w = dot(r28.xyz, r13.xyz);
              r17.w = saturate(r17.w + r28.w);
              r16.w = r17.w * r16.w;
              r17.w = dot(r29.xyz, r13.xyz);
              r17.w = saturate(r17.w + r29.w);
              r16.w = r17.w * r16.w;
              r17.w = dot(r30.xyz, r13.xyz);
              r17.w = saturate(r17.w + r30.w);
              r24.x = r17.w * r16.w;
              r18.w = (uint)r15.w >> 2;
              if (1 == 0) r22.w = 0; else if (1+2 < 32) {               r22.w = (uint)r15.w << (32-(1 + 2)); r22.w = (uint)r22.w >> (32-1);              } else r22.w = (uint)r15.w >> 2;
              r24.z = (int)r18.w & 2;
              r24.w = max(r24.y, r24.x);
              r16.w = -r16.w * r17.w + 1;
              r16.w = r24.y * r16.w;
              r16.y = r24.z ? r16.w : r24.w;
              r24.xy = r22.ww ? r24.xy : r16.xy;
              r16.z = (int)r16.z + 1;
              r15.w = r18.w;
            }
            r10.w = saturate(r24.y + -r9.w);
            r11.w = r10.w * r23.w;
            r14.x = cmp(0 < r11.w);
            if (r14.x != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r10.z, l(16), t15.xyzw
            r25.x = samp0[]..swiz;
            r25.y = samp0[]..swiz;
            r25.z = samp0[]..swiz;
            r25.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r10.z, l(32), t15.yxwz
            r26.x = samp0[]..swiz;
            r26.y = samp0[]..swiz;
            r26.z = samp0[]..swiz;
            r26.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r16.yzw, r10.z, l(48), t15.xxyz
            r16.y = samp0[]..swiz;
            r16.z = samp0[]..swiz;
            r16.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r10.z, l(72), t15.xyzw
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
              r21.w = r10.w * r23.w + r21.w;
              r10.z = r11.w * r12.z;
              r22.y = r25.z;
              r22.z = r26.x;
              r28.x = dot(r13.xyz, r22.xyz);
              r29.xy = r25.xw;
              r29.z = r26.w;
              r28.y = dot(r13.xyz, r29.xyz);
              r26.x = r25.y;
              r28.z = dot(r13.xyz, r26.xyz);
              r13.xyz = saturate(r28.xyz * r16.yzw + float3(0.5,0.5,0.5));
              r23.x = r27.w;
              r13.xyz = r13.xyz * r27.xyz + r23.xyz;
              r22.x = dot(r3.xyz, r22.xyz);
              r22.y = dot(r3.xyz, r29.xyz);
              r22.z = dot(r3.xyz, r26.xyz);
              r16.yzw = cmp(float3(0,0,0) < r22.xyz);
              r15.z = r16.y ? 0 : 0.5;
              r23.xyz = r15.xyz + r13.xyz;
              r23.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
              r24.xzw = r22.xyz * r22.xyz;
              r24.xzw = r24.xzw * r10.zzz;
              r17.z = r16.z ? 0 : 0.5;
              r25.xyz = r17.xyz + r13.xyz;
              r25.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
              r25.xyz = r25.xyz * r24.zzz;
              r23.xyz = r23.xyz * r24.xxx + r25.xyz;
              r18.z = r16.w ? 0 : 0.5;
              r13.xyz = r18.xyz + r13.xyz;
              r13.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r13.xyz, 0).xyz;
              r13.xyz = r13.xyz * r24.www + r23.xyz;
              if (9 == 0) r10.z = 0; else if (9+16 < 32) {               r10.z = (uint)r12.w << (32-(9 + 16)); r10.z = (uint)r10.z >> (32-9);              } else r10.z = (uint)r12.w >> 16;
              r22.w = (uint)r10.z;
              r16.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r22.xyzw, 6).xyz;
              r21.xyz = r13.xyz * r16.yzw + r21.xyz;
            }
          }
        }
      }
      r20.xyzw = r21.xyzw;
      r7.w = (int)r7.w + 32;
    }
    r19.xyzw = r20.xyzw;
  }
  r0.x = max(1, r19.w);
  r0.x = rcp(r0.x);
  r19.w = saturate(r19.w);
  r10.yzw = r19.xyz * r0.xxx;
  r0.x = cmp(r19.w < 0.99000001);
  if (r0.x != 0) {
    r0.x = 1 + -r19.w;
    r0.x = sunConstants.globalProbeExposure * r0.x;
    r12.xyz = -globalProbeConstants.data[0].xyz + v6.xyz;
    r13.x = globalProbeConstants.data[0].w * r12.x;
    r13.yz = globalProbeConstants.data[1].xy * r12.yz;
    r12.xyz = saturate(float3(0.5,0.5,0.5) + r13.xyz);
    r13.xy = globalProbeConstants.data[1].zw * r12.xy;
    r13.z = globalProbeConstants.data[2].x * r12.z;
    r12.xyz = globalProbeConstants.data[2].yzw + r13.xyz;
    r13.xyz = cmp(float3(0,0,0) < r3.xyz);
    r13.xyz = r13.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r13.w = 0;
    r14.xyz = r13.wwx + r12.xyz;
    r14.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r14.xyz, 0).xyz;
    r15.xyz = r3.xyz * r3.xyz;
    r15.xyz = r15.xyz * r0.xxx;
    r16.xyz = r13.wwy + r12.xyz;
    r16.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r16.xyz, 0).xyz;
    r16.xyz = r16.xyz * r15.yyy;
    r14.xyz = r14.xyz * r15.xxx + r16.xyz;
    r12.xyz = r13.wwz + r12.xyz;
    r12.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r12.xyz, 0).xyz;
    r12.xyz = r12.xyz * r15.zzz + r14.xyz;
    r3.w = 0;
    r13.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r3.xyzw, 6).xyz;
    r10.yzw = r12.xyz * r13.xyz + r10.yzw;
  }
  r0.x = r7.x + r1.x;
  r0.x = log2(abs(r0.x));
  r0.x = r5.w * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x + r1.x;
  r0.x = saturate(-1 + r0.x);
  r12.xyz = r10.yzw * r1.xxx;
  r4.xy = r7.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r4.xy = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r4.xy, 0).xy;
  r2.xyz = r2.xyz * r0.xxx;
  r13.xyz = r2.yzx * r4.xxx;
  r2.xyz = r2.xyz * r4.yyy;
  r0.x = sqrt(r5.w);
  r0.x = r0.x * 0.5 + 0.5;
  r0.x = r0.x * r0.x;
  r1.x = 0.5 * r0.x;
  r0.x = -r0.x * 0.5 + 1;
  r3.w = r7.x * r0.x + r1.x;
  r0.x = r3.w * r0.x;
  r1.x = r3.w * r1.x;
  r3.w = dot(r3.xyz, sunConstants.wldDir.xyz);
  r4.x = saturate(r3.w);
  r4.y = cmp(0 >= r4.x);
  if (r4.y != 0) {
    r7.y = 0;
  }
  if (r4.y == 0) {
    r10.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v6.yyy;
    r10.yzw = v6.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r10.yzw;
    r10.yzw = v6.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r10.yzw;
    r10.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r10.yzw;
    r4.y = -sunConstants.splitDepthOffset + r10.w;
    r4.y = -r4.y * 6.10351563e-05 + 1;
    r7.z = saturate(r4.y);
    r7.z = cmp(r4.y == r7.z);
    if (r7.z != 0) {
      r7.zw = float2(0,0);
      while (true) {
        r8.z = cmp(r7.z >= 3);
        if (r8.z != 0) break;
        r8.z = (uint)r7.z;
        r14.xy = -sunConstants.splitPinTransform[r8.z].xy + r10.yz;
        r8.w = max(abs(r14.x), abs(r14.y));
        r7.w = sunConstants.splitPinTransform[r8.z].z * r8.w;
        r8.z = cmp(r7.w < 1);
        if (r8.z != 0) {
          break;
        }
        r7.z = 1 + r7.z;
        r7.w = 0;
      }
    } else {
      r7.zw = float2(3,0);
    }
    r8.z = cmp(r7.z >= 3);
    if (r8.z != 0) {
      r14.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r15.xz = rcp(r14.xx);
      r15.y = -r15.z;
      r14.xyz = r10.yzy * r15.xyz + r14.yzy;
      r15.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r14.xyz = max(float3(0,0,0), r14.xyz);
      r14.xyz = min(r14.xyz, r15.xyz);
      r15.xy = sunConstants.sstLightingConstants.coordScale * r14.zy;
      r15.xy = floor(r15.xy);
      r8.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r15.y;
      r8.w = r8.w * sunConstants.sstLightingConstants.coordScale + r15.x;
      r8.w = (uint)r8.w;
      r8.w = (int)r8.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r9.w, r8.w, l(0), t23.xxxx
    r9.w = samp0[]..swiz;
      r11.w = (int)r9.w & 0x40000000;
      r14.w = (uint)r9.w << 2;
      if (r11.w == 0) {
        r11.w = (int)r9.w & 0x01ffffff;
        r15.x = (int)r8.w + (int)r11.w;
        r8.w = (uint)r9.w >> 25;
        r8.w = (uint)r8.w;
        r14.xyz = r14.xyz * r8.www;
        r14.xyz = frac(r14.xyz);
        r14.xyz = float3(128,128,128) * r14.xyz;
        r14.xyz = (uint3)r14.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.z, r15.x, l(0), t23.xxxx
      r15.z = samp0[]..swiz;
        r16.xy = (uint2)r14.zy >> int2(6,6);
        r8.w = (int)r15.z & 0xc0000000;
        r9.w = (int)r15.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r9.w, r9.w, l(0), t23.xxxx
      r9.w = samp0[]..swiz;
        r9.w = r16.y ? r15.z : r9.w;
        r11.w = (uint)r9.w >> 13;
        r9.w = r16.x ? r11.w : r9.w;
        r9.w = (int)r9.w & 8191;
        r16.x = (int)r9.w + (int)r15.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.x, l(0), t23.xxxx
      r16.z = samp0[]..swiz;
        r15.y = 0;
        r16.y = 1;
        r16.xyz = r8.www ? r15.xyz : r16.xyz;
        r17.yz = r8.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r18.xy = (uint2)r14.zy >> (uint2)r17.yy;
        r18.xy = (int2)r18.xy & int2(1,1);
        r9.w = (int)r16.z & 0xc0000000;
        r11.w = (int)r16.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.w, r11.w, l(0), t23.xxxx
      r11.w = samp0[]..swiz;
        r11.w = r18.y ? r16.z : r11.w;
        r15.w = (uint)r11.w >> 13;
        r11.w = r18.x ? r15.w : r11.w;
        r11.w = (int)r11.w & 8191;
        r17.x = (int)r11.w + (int)r16.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.x, l(0), t23.xxxx
      r17.w = samp0[]..swiz;
        r16.xyz = r9.www ? r16.xyz : r17.xzw;
        r15.xyz = r8.www ? r15.xyz : r16.xyz;
        r8.w = (int)r15.z & 0xc0000000;
        if (r8.w == 0) {
          r8.w = (int)-r15.y + 6;
          r16.xy = (uint2)r14.zy >> (uint2)r8.ww;
          r8.w = (int)r15.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r9.w = (((uint)r16.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r9.w = (((uint)r16.x << 0) & bitmask.w) | ((uint)r9.w & ~bitmask.w);
          r9.w = (int)r9.w * 10;
          r8.w = (uint)r8.w >> (uint)r9.w;
          r8.w = (int)r8.w & 1023;
          r16.x = (int)r8.w + (int)r15.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.w, r16.x, l(0), t23.xxxx
        r16.w = samp0[]..swiz;
          r16.yz = (int2)r15.yy + int2(1,2);
          r8.w = (int)-r16.y + 6;
          r15.yw = (uint2)r14.zy >> (uint2)r8.ww;
          r8.w = (int)r16.w & 0xc0000000;
          r9.w = (int)r16.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r11.w = (((uint)r15.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r11.w = (((uint)r15.y << 0) & bitmask.w) | ((uint)r11.w & ~bitmask.w);
          r11.w = (int)r11.w * 10;
          r9.w = (uint)r9.w >> (uint)r11.w;
          r9.w = (int)r9.w & 1023;
          r17.x = (int)r9.w + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
        r17.z = samp0[]..swiz;
          r17.y = r16.z;
          r17.xyz = r8.www ? r16.xyw : r17.xyz;
          r9.w = (int)-r17.y + 6;
          r15.yw = (uint2)r14.zy >> (uint2)r9.ww;
          r9.w = (int)r17.z & 0xc0000000;
          r11.w = (int)r17.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r15.w = (((uint)r15.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r15.y = (((uint)r15.y << 0) & bitmask.y) | ((uint)r15.w & ~bitmask.y);
          r15.y = (int)r15.y * 10;
          r11.w = (uint)r11.w >> (uint)r15.y;
          r11.w = (int)r11.w & 1023;
          r18.x = (int)r11.w + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.y, r18.x, l(0), t23.xxxx
        r18.y = samp0[]..swiz;
          r15.yw = r9.ww ? r17.xz : r18.xy;
          r15.xz = r8.ww ? r16.xw : r15.yw;
        }
        r8.w = (int)r15.z & 0xc0000000;
        if (r8.w == 0) {
          if (14 == 0) r9.w = 0; else if (14+15 < 32) {           r9.w = (uint)r15.z << (32-(14 + 15)); r9.w = (uint)r9.w >> (32-14);          } else r9.w = (uint)r15.z >> 15;
          r9.w = (uint)r9.w;
          r9.w = sunConstants.sstLightingConstants.constants.spanInInches * r9.w;
          r9.w = 6.10388815e-05 * r9.w;
          r15.yw = (int2)r15.zz & int2(32767,536870912);
          r11.w = (uint)r15.y;
          r11.w = sunConstants.sstLightingConstants.constants.spanInInches * r11.w;
          r11.w = 3.05185094e-05 * r11.w;
          r15.y = (int)r14.y & 3;
          r15.y = (int)r15.y + (int)r15.x;
          r15.y = (int)r15.y + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.y, r15.y, l(0), t23.xxxx
        r15.y = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r16.x = (((uint)r14.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r16.y = (((uint)r14.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r16.z = (((uint)r14.z << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r14.x = (uint)r15.y >> (uint)r16.x;
          r14.x = (int)r14.x & 255;
          r14.x = (uint)r14.x;
          r14.x = r14.x * r11.w;
          r14.x = r14.x * 0.00392156886 + r9.w;
          r14.y = (int)r16.y + 1;
          if (1 == 0) r14.z = 0; else if (1+1 < 32) {           r14.z = (uint)r14.z << (32-(1 + 1)); r14.z = (uint)r14.z >> (32-1);          } else r14.z = (uint)r14.z >> 1;
          r14.y = (int)r14.z + (int)r14.y;
          r14.y = (int)r14.y + (int)r15.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.y, r14.y, l(0), t23.xxxx
        r14.y = samp0[]..swiz;
          r14.y = (uint)r14.y >> (uint)r16.z;
          r14.y = (int)r14.y & 0x0000ffff;
          r14.y = (uint)r14.y;
          r11.w = r14.y * r11.w;
          r9.w = r11.w * 1.52590219e-05 + r9.w;
          r14.w = r15.w ? r14.x : r9.w;
        } else {
          r9.w = (int)r15.z & 0x80000000;
          r11.w = (int)r15.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.w, r11.w, l(0), t23.xxxx
        r11.w = samp0[]..swiz;
          r9.w = r9.w ? r11.w : 0;
          r11.w = (uint)r15.z << 2;
          r14.x = (uint)r9.w >> 16;
          r14.x = f16tof32(r14.x);
          r9.w = (int)r9.w & 0x0000ffff;
          r9.w = f16tof32(r9.w);
          r11.w = r10.y * r14.x + r11.w;
          r9.w = r10.z * r9.w + r11.w;
          r14.w = r8.w ? r9.w : r14.w;
        }
      }
      r8.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r10.w;
      r8.w = cmp(r14.w < r8.w);
      r7.y = r8.w ? 0 : 1;
    }
    if (r8.z == 0) {
      if (enableDitheredShadow == 0) {
        r8.z = (uint)r7.z;
        r14.xy = -sunConstants.splitPinTransform[r8.z].xy + r10.yz;
        r8.zw = sunConstants.splitPinTransform[r8.z].zz * r14.xy;
        r14.xy = r8.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r8.z = (int16)sunConstants.splitArrayOffset;
        r14.z = r8.z + r7.z;
        r8.z = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r14.xyz, r4.y).x;
        r8.w = gTransShadowmapArray.SampleLevel(samp0_s, r14.xyz, 0).x;
        r8.z = r8.z + r8.w;
        r8.z = saturate(-1 + r8.z);
        r8.w = r8.z * r8.z;
        r7.y = r8.w * r8.z;
      }
      if (enableDitheredShadow != 0) {
        r14.x = -r8.x;
        r8.z = (uint)r7.z;
        r7.z = 1 + r7.z;
        r7.z = min(2, r7.z);
        r7.w = 1 + -r7.w;
        r7.w = 28 * r7.w;
        r7.zw = (uint2)r7.zw;
        r15.xy = -sunConstants.splitPinTransform[r8.z].xy + r10.yz;
        r15.xy = sunConstants.splitPinTransform[r8.z].zz * r15.xy;
        r15.xy = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.yz = -sunConstants.splitPinTransform[r7.z].xy + r10.yz;
        r10.yz = sunConstants.splitPinTransform[r7.z].zz * r10.yz;
        r10.yz = r10.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r14.y = r9.x;
        r14.z = r8.x;
        r8.w = 0;
        r9.w = 0;
        while (true) {
          r10.w = cmp((uint)r9.w >= 8);
          if (r10.w != 0) break;
          r10.w = cmp((uint)r7.w < (uint)r9.w);
          r15.zw = r10.ww ? r10.yz : r15.xy;
          r11.w = r10.w ? sunConstants.splitPinTransform[r7.z].w : sunConstants.splitPinTransform[r8.z].w;
          r10.w = r10.w ? r7.z : r8.z;
          r16.x = dot(icb[r9.w+0].yx, r14.xy);
          r16.y = dot(icb[r9.w+0].yx, r14.yz);
          r16.xy = r16.xy * r11.ww + r15.zw;
          r10.w = (int)r10.w + (int16)sunConstants.splitArrayOffset;
          r16.z = (uint)r10.w;
          r10.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r4.y).x;
          r11.w = gTransShadowmapArray.SampleLevel(samp0_s, r16.xyz, 0).x;
          r10.w = r11.w + r10.w;
          r10.w = saturate(-1 + r10.w);
          r8.w = r10.w * 0.125 + r8.w;
          r9.w = (int)r9.w + 1;
        }
        r4.y = r8.w * r8.w;
        r7.y = r4.y * r8.w;
      }
    }
  }
  r4.y = cmp(0 < r4.x);
  if (r4.y != 0) {
    r4.y = cmp(0 < r7.y);
    if (r4.y != 0) {
      r4.y = sunConstants.specScale * r4.w;
      r4.y = r4.y * r4.x;
      if (sunConstants.sunCookieIndex != 0) {
        r14.xyz = eyeOffset.xyz + v6.xyz;
        r14.w = 1;
        r7.z = dot(sunConstants.sunCookieTransform[0].xyzw, r14.xyzw);
        r7.w = dot(sunConstants.sunCookieTransform[1].xyzw, r14.xyzw);
        r14.xy = frac(r7.zw);
        r7.z = -1 + (int14)sunConstants.sunCookieIndex;
        r14.z = (uint)r7.z;
        r10.yzw = gCookieArray.SampleLevel(samplerLinear_s, r14.xyz, 0).xyz;
        r10.yzw = float3(-1,-1,-1) + r10.yzw;
        r10.yzw = sunConstants.sunCookieIntensity * r10.yzw + float3(1,1,1);
        r10.yzw = sunConstants.color.xyz * r10.yzw;
      } else {
        r10.yzw = sunConstants.color.xyz;
      }
      r7.z = viewmodelSunShadowRaw >> 16;
      r7.w = cmp(0 < (uint)r7.z);
      r7.w = r4.z ? r7.w : 0;
      if (r7.w != 0) {
        r7.z = (int)r7.z + numLights;
        r7.z = (int)r7.z + -1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r7.w, r7.z, l(52), t12.xxxx
      r7.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r7.z, l(68), t12.xyzw
      r14.x = samp0[]..swiz;
      r14.y = samp0[]..swiz;
      r14.z = samp0[]..swiz;
      r14.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r7.z, l(84), t12.xyzw
      r15.x = samp0[]..swiz;
      r15.y = samp0[]..swiz;
      r15.z = samp0[]..swiz;
      r15.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r7.z, l(132), t12.xyzw
      r16.x = samp0[]..swiz;
      r16.y = samp0[]..swiz;
      r16.z = samp0[]..swiz;
      r16.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r7.z, l(148), t12.xyzw
      r17.x = samp0[]..swiz;
      r17.y = samp0[]..swiz;
      r17.z = samp0[]..swiz;
      r17.w = samp0[]..swiz;
        r8.z = abs(r3.w) * -0.200000003 + 0.400000006;
        r18.xyz = r3.xyz * r8.zzz + v6.xyz;
        r18.w = 1;
        r14.x = dot(r14.xyzw, r18.xyzw);
        r14.y = dot(r15.xyzw, r18.xyzw);
        r8.zw = r14.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r8.zw = r8.zw + r17.zw;
        r8.zw = r8.zw * r17.xy;
        r14.xy = r7.ww / r16.xz;
        r14.zw = float2(1,1) + -r14.xy;
        r14.zw = cmp(r8.zw >= r14.zw);
        r14.xy = cmp(r14.xy >= r8.zw);
        r14.xy = (int2)r14.xy | (int2)r14.zw;
        r9.w = (int)r14.y | (int)r14.x;
        if (r9.w == 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.w, r7.z, l(28), t12.xxxx
        r9.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r7.z, l(100), t12.xyzw
        r14.x = samp0[]..swiz;
        r14.y = samp0[]..swiz;
        r14.z = samp0[]..swiz;
        r14.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xy, r7.z, l(164), t12.xyxx
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
          r7.z = dot(r14.xyzw, r18.xyzw);
          r8.zw = saturate(r8.zw);
          r14.xy = r8.zw * r16.xz + r16.yw;
          r7.z = r7.z + r15.x;
          r7.z = r7.z / r15.y;
          r7.z = max(6.10351563e-05, r7.z);
          r8.z = (int)r9.w & 0x0000ffff;
          if (enableDitheredShadow != 0) {
            r15.x = -r8.x;
            r16.z = (uint)r8.z;
            r15.y = r9.x;
            r15.z = r8.x;
            r8.w = 0;
            r9.w = 0;
            while (true) {
              r11.w = cmp((int)r9.w >= 8);
              if (r11.w != 0) break;
              r17.x = dot(icb[r9.w+0].yx, r15.xy);
              r17.y = dot(icb[r9.w+0].yx, r15.yz);
              r16.xy = r17.xy * r7.ww + r14.xy;
              r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r7.z).x;
              r8.w = r11.w * 0.125 + r8.w;
              r9.w = (int)r9.w + 1;
            }
          } else {
            r14.z = (uint)r8.z;
            r8.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r14.xyz, r7.z).x;
          }
          r7.z = r8.w * r8.w;
          r7.z = r7.z * r8.w;
        } else {
          r7.z = 1;
        }
        r7.y = r7.y * r7.z;
      } else {
        r7.z = viewmodelSunShadowRaw & 0x0000ffff;
        r7.w = cmp(0 < (uint)r7.z);
        r8.z = ~(int)r4.z;
        r7.w = r7.w ? r8.z : 0;
        if (r7.w != 0) {
          r7.z = (int)r7.z + numLights;
          r7.z = (int)r7.z + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r7.w, r7.z, l(52), t12.xxxx
        r7.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r7.z, l(68), t12.xyzw
        r14.x = samp0[]..swiz;
        r14.y = samp0[]..swiz;
        r14.z = samp0[]..swiz;
        r14.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r7.z, l(84), t12.xyzw
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r7.z, l(132), t12.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r7.z, l(148), t12.xyzw
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
          r8.z = abs(r3.w) * -0.200000003 + 0.400000006;
          r18.xyz = r3.xyz * r8.zzz + v6.xyz;
          r18.w = 1;
          r14.x = dot(r14.xyzw, r18.xyzw);
          r14.y = dot(r15.xyzw, r18.xyzw);
          r8.zw = r14.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r8.zw = r8.zw + r17.zw;
          r8.zw = r8.zw * r17.xy;
          r14.xy = r7.ww / r16.xz;
          r14.zw = float2(1,1) + -r14.xy;
          r14.zw = cmp(r8.zw >= r14.zw);
          r14.xy = cmp(r14.xy >= r8.zw);
          r14.xy = (int2)r14.xy | (int2)r14.zw;
          r9.w = (int)r14.y | (int)r14.x;
          if (r9.w == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.w, r7.z, l(28), t12.xxxx
          r9.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r7.z, l(100), t12.xyzw
          r14.x = samp0[]..swiz;
          r14.y = samp0[]..swiz;
          r14.z = samp0[]..swiz;
          r14.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xy, r7.z, l(164), t12.xyxx
          r15.x = samp0[]..swiz;
          r15.y = samp0[]..swiz;
            r7.z = dot(r14.xyzw, r18.xyzw);
            r8.zw = saturate(r8.zw);
            r14.xy = r8.zw * r16.xz + r16.yw;
            r7.z = r7.z + r15.x;
            r7.z = r7.z / r15.y;
            r7.z = max(6.10351563e-05, r7.z);
            r8.z = (int)r9.w & 0x0000ffff;
            if (enableDitheredShadow != 0) {
              r15.x = -r8.x;
              r16.z = (uint)r8.z;
              r15.y = r9.x;
              r15.z = r8.x;
              r8.w = 0;
              r9.w = 0;
              while (true) {
                r11.w = cmp((int)r9.w >= 8);
                if (r11.w != 0) break;
                r17.x = dot(icb[r9.w+0].yx, r15.xy);
                r17.y = dot(icb[r9.w+0].yx, r15.yz);
                r16.xy = r17.xy * r7.ww + r14.xy;
                r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r7.z).x;
                r8.w = r11.w * 0.125 + r8.w;
                r9.w = (int)r9.w + 1;
              }
            } else {
              r14.z = (uint)r8.z;
              r8.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r14.xyz, r7.z).x;
            }
            r7.z = r8.w * r8.w;
            r7.z = r7.z * r8.w;
          } else {
            r7.z = 1;
          }
          r7.y = r7.y * r7.z;
        }
      }
      r7.z = -r7.x * 0.5 + 1;
      r7.z = -r4.x * r7.z + 1;
      r7.z = r7.z * r7.z;
      r7.z = -r7.z * 0.620000005 + 0.620000005;
      r7.z = r7.z + -r4.x;
      r7.z = r5.w * r7.z + r4.x;
      r7.z = r7.z * r7.y;
      r3.w = cmp(0 < r3.w);
      r14.xyz = r7.zzz * r10.yzw + r12.xyz;
      r15.xyz = -v6.xyz * r2.www + sunConstants.wldDir.xyz;
      r2.w = dot(r15.xyz, r15.xyz);
      r2.w = rsqrt(r2.w);
      r15.xyz = r15.xyz * r2.www;
      r2.w = dot(r15.xyz, r5.xyz);
      r7.z = dot(r3.xyz, r15.xyz);
      r7.w = abs(r7.z) * r4.w + -abs(r7.z);
      r7.z = abs(r7.z) * r7.w + 1;
      r4.x = r4.x * r0.x + r1.x;
      r7.z = r7.z * r7.z;
      r4.x = r7.z * r4.x;
      r4.x = rcp(r4.x);
      r4.x = r4.x * r4.y;
      r4.x = r7.y * r4.x;
      r4.x = 0.25 * r4.x;
      r7.yzw = r4.xxx * r10.yzw + r2.xyz;
      r2.w = saturate(1 + -r2.w);
      r4.y = r2.w * r2.w;
      r4.y = r4.y * r4.y;
      r2.w = r4.y * r2.w;
      r2.w = r4.x * r2.w;
      r15.xyz = r2.www * r10.zwy + r13.xyz;
      r14.w = r15.z;
      r12.w = r13.z;
      r12.xyzw = r3.wwww ? r14.xyzw : r12.xyzw;
      r15.zw = r7.yz;
      r13.zw = r2.xy;
      r14.xyzw = r3.wwww ? r15.xyzw : r13.xyzw;
      r2.z = r3.w ? r7.w : r2.z;
      r13.z = r12.w;
      r13.xy = r14.xy;
      r2.xy = r14.zw;
    }
  }
  r14.x = -r8.x;
  r2.w = ~(int)r4.z;
  r3.w = -r7.x * 0.5 + 1;
  r7.xy = float2(0,0);
  r15.w = 0;
  r16.xyz = v6.xyz;
  r16.w = 1;
  r17.w = 1;
  r14.z = r8.x;
  r18.w = 1;
  r19.z = 1;
  r20.w = 1;
  r14.yw = r9.xx;
  r8.y = r14.w;
  r21.w = 1;
  r9.y = r14.x;
  r9.z = r8.x;
  r22.w = 1;
  r23.x = r9.x;
  r23.y = r14.x;
  r23.z = r8.x;
  r24.x = r9.x;
  r24.y = r14.x;
  r24.z = r8.x;
  r25.x = r9.x;
  r25.y = r14.x;
  r25.z = r8.x;
  r10.yzw = r12.xyz;
  r26.xyz = r13.zxy;
  r27.xyz = r2.xyz;
  r4.x = enableDitheredShadow;
  r4.y = 0;
  while (true) {
    r7.w = cmp((uint)r4.y >= numLights);
    if (r7.w != 0) break;
    r7.z = (uint)r4.y >> 5;
    r15.xyz = (int3)r7.xyz + (int3)r11.xyz;
    r7.z = visibleLights.Load(r15.xyzw).x;
    r15.xyz = r10.yzw;
    r28.xyz = r26.xyz;
    r29.xyz = r27.xyz;
    r7.w = r4.x;
    r8.z = r7.z;
    while (true) {
      if (r8.z == 0) break;
      r8.w = firstbitlow((uint)r8.z);
      r9.w = 1 << (int)r8.w;
      r11.w = (int)r8.z & (int)r9.w;
      if (r11.w != 0) {
        r8.z = (int)r8.z ^ (int)r9.w;
        r8.w = (int)r4.y + (int)r8.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r30.xyzw, r8.w, l(0), t11.xyzw
      r30.x = samp0[]..swiz;
      r30.y = samp0[]..swiz;
      r30.z = samp0[]..swiz;
      r30.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r31.xy, r8.w, l(16), t11.xyxx
      r31.x = samp0[]..swiz;
      r31.y = samp0[]..swiz;
        r30.xyz = -v6.xyz + r30.xyz;
        r31.z = r30.w;
        r30.xyz = cmp(abs(r30.xyz) < r31.zxy);
        r9.w = r30.y ? r30.x : 0;
        r9.w = r30.z ? r9.w : 0;
        if (r9.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r30.xyzw, r8.w, l(0), t12.wxyz
        r30.x = samp0[]..swiz;
        r30.y = samp0[]..swiz;
        r30.z = samp0[]..swiz;
        r30.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r8.w, l(16), t12.zxyw
        r31.x = samp0[]..swiz;
        r31.y = samp0[]..swiz;
        r31.z = samp0[]..swiz;
        r31.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r8.w, l(32), t12.xyzw
        r32.x = samp0[]..swiz;
        r32.y = samp0[]..swiz;
        r32.z = samp0[]..swiz;
        r32.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r8.w, l(48), t12.xyzw
        r33.x = samp0[]..swiz;
        r33.y = samp0[]..swiz;
        r33.z = samp0[]..swiz;
        r33.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r8.w, l(64), t12.yzwx
        r34.x = samp0[]..swiz;
        r34.y = samp0[]..swiz;
        r34.z = samp0[]..swiz;
        r34.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r8.w, l(80), t12.xyzw
        r35.x = samp0[]..swiz;
        r35.y = samp0[]..swiz;
        r35.z = samp0[]..swiz;
        r35.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r8.w, l(96), t12.yzwx
        r36.x = samp0[]..swiz;
        r36.y = samp0[]..swiz;
        r36.z = samp0[]..swiz;
        r36.w = samp0[]..swiz;
          if (3 == 0) r9.w = 0; else if (3+24 < 32) {           r9.w = (uint)r31.w << (32-(3 + 24)); r9.w = (uint)r9.w >> (32-3);          } else r9.w = (uint)r31.w >> 24;
          switch (r9.w) {
            case 4 :            r9.w = cmp(0 < r36.x);
            r37.xy = r35.zw;
            r37.z = r36.w;
            r38.xyz = -r37.xyz * float3(0.5,0.5,0.5) + r30.yzw;
            r39.xyz = -v6.xyz + r38.xyz;
            r11.w = dot(r37.xyz, r39.xyz);
            r12.w = saturate(-r11.w / r36.x);
            r40.xyz = r12.www * r37.xyz + r38.xyz;
            r40.xyz = r9.www ? r40.xyz : r30.yzw;
            r40.xyz = -v6.xyz + r40.xyz;
            r13.w = dot(r40.xyz, r40.xyz);
            r19.w = rsqrt(r13.w);
            r40.xyz = r40.xyz * r19.www;
            r19.w = dot(r3.xyz, r40.xyz);
            r23.w = saturate(r19.w);
            r24.w = cmp(0 < r23.w);
            if (r24.w != 0) {
              r24.w = sqrt(r13.w);
              r25.w = r33.x * r33.x;
              r13.w = r25.w / r13.w;
              r13.w = min(1, r13.w);
              r40.xy = saturate(r24.ww * r32.xz + r32.yw);
              r40.zw = r40.xy * r40.xy;
              r40.xy = r40.xy * float2(-2,-2) + float2(3,3);
              r40.xy = r40.zw * r40.xy;
              r13.w = r40.x * r13.w;
              r13.w = r13.w * r40.y;
              r24.w = cmp(0 < r13.w);
              if (r24.w != 0) {
                if (3 == 0) r24.w = 0; else if (3+27 < 32) {                 r24.w = (uint)r31.w << (32-(3 + 27)); r24.w = (uint)r24.w >> (32-3);                } else r24.w = (uint)r31.w >> 27;
                r24.w = cmp((int)r24.w != 1);
                if (r24.w != 0) {
                  r24.w = abs(r19.w) * -0.200000003 + 0.400000006;
                  r40.xyz = r3.xyz * r24.www + v6.xyz;
                  r40.xyz = r40.xyz + -r34.xyz;
                  r24.w = max(abs(r40.y), abs(r40.z));
                  r24.w = max(abs(r40.x), r24.w);
                  r24.w = r35.x / r24.w;
                  r24.w = r24.w + r35.y;
                  r25.w = dot(r40.xyz, r40.xyz);
                  r25.w = rsqrt(r25.w);
                  r24.w = max(6.10351563e-05, r24.w);
                  r26.w = (int)r31.w & 0x0000ffff;
                  r41.w = (uint)r26.w;
                  r26.w = 0;
                  r27.w = 0;
                  while (true) {
                    r28.w = cmp((int)r27.w >= 8);
                    if (r28.w != 0) break;
                    r42.y = dot(icb[r27.w+0].yx, r14.xy);
                    r42.z = dot(icb[r27.w+0].yx, r14.yz);
                    r42.yz = r42.yz * r33.yy;
                    r42.x = r42.y * r10.x;
                    r42.w = r42.y * r6.x;
                    r41.xyz = r40.xyz * r25.www + r42.xzw;
                    r28.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r41.xyzw, r24.w).x;
                    r26.w = r28.w * 0.125 + r26.w;
                    r27.w = (int)r27.w + 1;
                  }
                } else {
                  r26.w = 1;
                }
                r13.w = r26.w * r13.w;
                r24.w = cmp(0 < r13.w);
                if (r24.w != 0) {
                  r24.w = r31.x * r4.w;
                  r24.w = 0.25 * r24.w;
                  r25.w = dot(r37.xyz, r6.yzw);
                  r27.w = dot(r6.yzw, r39.xyz);
                  r28.w = -r25.w * r25.w + r36.x;
                  r11.w = r25.w * r27.w + -r11.w;
                  r11.w = saturate(r11.w / r28.w);
                  r25.w = r28.w / r36.x;
                  r25.w = 10 * r25.w;
                  r25.w = min(1, r25.w);
                  r11.w = r11.w + -r12.w;
                  r11.w = r25.w * r11.w + r12.w;
                  r37.xyz = r11.www * r37.xyz + r38.xyz;
                  r37.xyz = r9.www ? r37.xyz : r30.yzw;
                  r37.xyz = -v6.xyz + r37.xyz;
                  r9.w = dot(r37.xyz, r37.xyz);
                  r9.w = rsqrt(r9.w);
                  r38.xyz = r37.xyz * r9.www;
                  if (4 == 0) r11.w = 0; else if (4+16 < 32) {                   r11.w = (uint)r31.w << (32-(4 + 16)); r11.w = (uint)r11.w >> (32-4);                  } else r11.w = (uint)r31.w >> 16;
                  r12.w = cmp(0 < (uint)r11.w);
                  r12.w = r4.z ? r12.w : 0;
                  if (r12.w != 0) {
                    r11.w = (int)r11.w + numLights;
                    r11.w = (int)r11.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.w, r11.w, l(52), t12.xxxx
                  r12.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r11.w, l(100), t12.xyzw
                  r39.x = samp0[]..swiz;
                  r39.y = samp0[]..swiz;
                  r39.z = samp0[]..swiz;
                  r39.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r11.w, l(116), t12.xyzw
                  r40.x = samp0[]..swiz;
                  r40.y = samp0[]..swiz;
                  r40.z = samp0[]..swiz;
                  r40.w = samp0[]..swiz;
                    r25.w = abs(r19.w) * -0.200000003 + 0.400000006;
                    r17.xyz = r3.xyz * r25.www + v6.xyz;
                    r25.w = dot(r39.xyzw, r17.xyzw);
                    r27.w = dot(r40.xyzw, r17.xyzw);
                    r28.w = cmp(r27.w < r25.w);
                    if (r28.w == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r11.w, l(68), t12.xyzw
                    r39.x = samp0[]..swiz;
                    r39.y = samp0[]..swiz;
                    r39.z = samp0[]..swiz;
                    r39.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r11.w, l(84), t12.xyzw
                    r40.x = samp0[]..swiz;
                    r40.y = samp0[]..swiz;
                    r40.z = samp0[]..swiz;
                    r40.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r11.w, l(132), t12.xyzw
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r11.w, l(148), t12.xyzw
                    r42.x = samp0[]..swiz;
                    r42.y = samp0[]..swiz;
                    r42.z = samp0[]..swiz;
                    r42.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xy, r11.w, l(164), t12.xyxx
                    r43.x = samp0[]..swiz;
                    r43.y = samp0[]..swiz;
                      r39.x = dot(r39.xyzw, r17.xyzw);
                      r39.y = dot(r40.xyzw, r17.xyzw);
                      r17.xy = r39.xy / r27.ww;
                      r17.xy = r17.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r17.xy = r17.xy + r42.zw;
                      r17.xy = r17.xy * r42.xy;
                      r39.xy = r12.ww / r41.xz;
                      r39.zw = float2(1,1) + -r39.xy;
                      r39.zw = cmp(r17.xy >= r39.zw);
                      r39.xy = cmp(r39.xy >= r17.xy);
                      r39.xy = (int2)r39.xy | (int2)r39.zw;
                      r17.z = (int)r39.y | (int)r39.x;
                      r17.xy = saturate(r17.xy);
                      r39.xy = r17.xy * r41.xz + r41.yw;
                      r17.x = r43.y * r27.w;
                      r17.y = r43.x * r27.w + r25.w;
                      r17.x = r17.y / r17.x;
                    } else {
                      r17.z = -1;
                    }
                    r17.y = (int)r28.w | (int)r17.z;
                    if (r17.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.w, r11.w, l(28), t12.xxxx
                    r11.w = samp0[]..swiz;
                      r17.x = max(6.10351563e-05, r17.x);
                      r11.w = (int)r11.w & 0x0000ffff;
                      if (r7.w != 0) {
                        r40.z = (uint)r11.w;
                        r17.yz = float2(0,0);
                        while (true) {
                          r25.w = cmp((int)r17.z >= 8);
                          if (r25.w != 0) break;
                          r41.x = dot(icb[r17.z+0].yx, r14.xw);
                          r41.y = dot(icb[r17.z+0].xy, r8.xy);
                          r40.xy = r41.xy * r12.ww + r39.xy;
                          r25.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r40.xyz, r17.x).x;
                          r17.y = r25.w * 0.125 + r17.y;
                          r17.z = (int)r17.z + 1;
                        }
                      } else {
                        r39.z = (uint)r11.w;
                        r17.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r39.xyz, r17.x).x;
                      }
                      r11.w = r17.y * r17.y;
                      r11.w = r11.w * r17.y;
                    } else {
                      r11.w = 1;
                    }
                    r13.w = r13.w * r11.w;
                  } else {
                    if (4 == 0) r11.w = 0; else if (4+20 < 32) {                     r11.w = (uint)r31.w << (32-(4 + 20)); r11.w = (uint)r11.w >> (32-4);                    } else r11.w = (uint)r31.w >> 20;
                    r12.w = cmp(0 < (uint)r11.w);
                    r12.w = r12.w ? r2.w : 0;
                    if (r12.w != 0) {
                      r11.w = (int)r11.w + numLights;
                      r11.w = (int)r11.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.w, r11.w, l(52), t12.xxxx
                    r12.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r11.w, l(100), t12.xyzw
                    r39.x = samp0[]..swiz;
                    r39.y = samp0[]..swiz;
                    r39.z = samp0[]..swiz;
                    r39.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r11.w, l(116), t12.xyzw
                    r40.x = samp0[]..swiz;
                    r40.y = samp0[]..swiz;
                    r40.z = samp0[]..swiz;
                    r40.w = samp0[]..swiz;
                      r17.x = abs(r19.w) * -0.200000003 + 0.400000006;
                      r18.xyz = r3.xyz * r17.xxx + v6.xyz;
                      r17.x = dot(r39.xyzw, r18.xyzw);
                      r17.z = dot(r40.xyzw, r18.xyzw);
                      r25.w = cmp(r17.z < r17.x);
                      if (r25.w == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r11.w, l(68), t12.xyzw
                      r39.x = samp0[]..swiz;
                      r39.y = samp0[]..swiz;
                      r39.z = samp0[]..swiz;
                      r39.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r11.w, l(84), t12.xyzw
                      r40.x = samp0[]..swiz;
                      r40.y = samp0[]..swiz;
                      r40.z = samp0[]..swiz;
                      r40.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r11.w, l(132), t12.xyzw
                      r41.x = samp0[]..swiz;
                      r41.y = samp0[]..swiz;
                      r41.z = samp0[]..swiz;
                      r41.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r11.w, l(148), t12.xyzw
                      r42.x = samp0[]..swiz;
                      r42.y = samp0[]..swiz;
                      r42.z = samp0[]..swiz;
                      r42.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xy, r11.w, l(164), t12.xyxx
                      r43.x = samp0[]..swiz;
                      r43.y = samp0[]..swiz;
                        r39.x = dot(r39.xyzw, r18.xyzw);
                        r39.y = dot(r40.xyzw, r18.xyzw);
                        r18.xy = r39.xy / r17.zz;
                        r18.xy = r18.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                        r18.xy = r18.xy + r42.zw;
                        r18.xy = r18.xy * r42.xy;
                        r39.xy = r12.ww / r41.xz;
                        r39.zw = float2(1,1) + -r39.xy;
                        r39.zw = cmp(r18.xy >= r39.zw);
                        r39.xy = cmp(r39.xy >= r18.xy);
                        r39.xy = (int2)r39.xy | (int2)r39.zw;
                        r18.z = (int)r39.y | (int)r39.x;
                        r18.xy = saturate(r18.xy);
                        r39.xy = r18.xy * r41.xz + r41.yw;
                        r18.x = r43.y * r17.z;
                        r17.x = r43.x * r17.z + r17.x;
                        r17.x = r17.x / r18.x;
                      } else {
                        r18.z = -1;
                      }
                      r17.z = (int)r25.w | (int)r18.z;
                      if (r17.z == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.w, r11.w, l(28), t12.xxxx
                      r11.w = samp0[]..swiz;
                        r17.x = max(6.10351563e-05, r17.x);
                        r11.w = (int)r11.w & 0x0000ffff;
                        if (r7.w != 0) {
                          r18.z = (uint)r11.w;
                          r17.z = 0;
                          r25.w = 0;
                          while (true) {
                            r27.w = cmp((int)r25.w >= 8);
                            if (r27.w != 0) break;
                            r40.x = dot(icb[r25.w+0].xy, r9.xy);
                            r40.y = dot(icb[r25.w+0].yx, r9.xz);
                            r18.xy = r40.xy * r12.ww + r39.xy;
                            r18.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r17.x).x;
                            r17.z = r18.x * 0.125 + r17.z;
                            r25.w = (int)r25.w + 1;
                          }
                        } else {
                          r39.z = (uint)r11.w;
                          r17.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r39.xyz, r17.x).x;
                        }
                        r11.w = r17.z * r17.z;
                        r11.w = r11.w * r17.z;
                      } else {
                        r11.w = 1;
                      }
                      r13.w = r13.w * r11.w;
                    }
                  }
                  r11.w = -r23.w * r3.w + 1;
                  r11.w = r11.w * r11.w;
                  r11.w = -r11.w * 0.620000005 + 0.620000005;
                  r11.w = r11.w + -r23.w;
                  r11.w = r5.w * r11.w + r23.w;
                  r11.w = r11.w * r13.w;
                  r31.x = r30.x;
                  r12.w = cmp(0 < r19.w);
                  r18.xyz = r11.www * r31.xyz + r15.xyz;
                  r11.w = saturate(dot(r3.xyz, r38.xyz));
                  r37.xyz = r37.xyz * r9.www + r5.xyz;
                  r9.w = dot(r37.xyz, r37.xyz);
                  r9.w = rsqrt(r9.w);
                  r37.xyz = r37.xyz * r9.www;
                  r9.w = dot(r37.xyz, r5.xyz);
                  r17.x = dot(r3.xyz, r37.xyz);
                  r19.w = abs(r17.x) * r4.w + -abs(r17.x);
                  r17.x = abs(r17.x) * r19.w + 1;
                  r19.w = r11.w * r0.x + r1.x;
                  r17.x = r17.x * r17.x;
                  r17.x = r17.x * r19.w;
                  r17.x = rcp(r17.x);
                  r11.w = r11.w * r24.w;
                  r11.w = r17.x * r11.w;
                  r11.w = r11.w * r13.w;
                  r37.xyz = r11.www * r31.xyz + r29.xyz;
                  r9.w = saturate(1 + -r9.w);
                  r13.w = r9.w * r9.w;
                  r13.w = r13.w * r13.w;
                  r9.w = r13.w * r9.w;
                  r9.w = r11.w * r9.w;
                  r38.xyz = r9.www * r31.xyz + r28.xyz;
                  r15.xyz = r12.www ? r18.xyz : r15.xyz;
                  r28.xyz = r12.www ? r38.xyz : r28.xyz;
                  r29.xyz = r12.www ? r37.xyz : r29.xyz;
                }
              }
            }
            break;
            case 2 :            r18.xy = r33.zw;
            r18.z = r34.w;
            r18.xyz = -v6.xyz + r18.xyz;
            r9.w = dot(r18.xyz, r18.xyz);
            r9.w = rsqrt(r9.w);
            r37.xyz = r18.xyz * r9.www;
            r11.w = dot(r3.xyz, r37.xyz);
            r12.w = saturate(r11.w);
            r13.w = cmp(0 < r12.w);
            if (r13.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r8.w, l(112), t12.yzwx
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r8.w, l(128), t12.zxyw
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
              r39.xyz = r37.xyz;
              r39.w = r38.y;
              r13.w = dot(r39.xyzw, r16.xyzw);
              r17.x = cmp(r13.w < 1);
              if (r17.x != 0) {
                r40.xyz = float3(1,1,1);
                r17.x = 0;
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r8.w, l(172), t12.yzwx
              r41.x = samp0[]..swiz;
              r41.y = samp0[]..swiz;
              r41.z = samp0[]..swiz;
              r41.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r8.w, l(188), t12.wxyz
              r42.x = samp0[]..swiz;
              r42.y = samp0[]..swiz;
              r42.z = samp0[]..swiz;
              r42.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r8.w, l(204), t12.xyzw
              r43.x = samp0[]..swiz;
              r43.y = samp0[]..swiz;
              r43.z = samp0[]..swiz;
              r43.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.w, r8.w, l(236), t12.xxxx
              r19.w = samp0[]..swiz;
                r44.xyz = -v6.xyz + r30.yzw;
                r23.w = r33.x * r33.x;
                r24.w = dot(r44.xyz, r44.xyz);
                r23.w = r23.w / r24.w;
                r23.w = min(1, r23.w);
                r32.xy = saturate(r13.ww * r32.xz + r32.yw);
                r32.zw = r32.xy * r32.xy;
                r32.xy = r32.xy * float2(-2,-2) + float2(3,3);
                r32.xy = r32.zw * r32.xy;
                r23.w = r32.x * r23.w;
                r23.w = r23.w * r32.y;
                r34.w = r35.x;
                r32.x = dot(r34.xyzw, r16.xyzw);
                r44.xyz = r35.yzw;
                r44.w = r36.w;
                r32.y = dot(r44.xyzw, r16.xyzw);
                r19.xy = r32.xy / r13.ww;
                r13.w = cmp(r41.w < 0.00048828125);
                if (r13.w != 0) {
                  r42.y = r43.x;
                  r32.xy = saturate(abs(r19.xy) * r42.zw + r42.xy);
                  r32.zw = r32.xy * r32.xy;
                  r32.xy = r32.xy * float2(-2,-2) + float2(3,3);
                  r32.xy = r32.zw * r32.xy;
                  r13.w = r32.x * r32.y;
                } else {
                  r41.w = r42.y;
                  r32.xyzw = saturate(r41.xyzw * abs(r19.yyxx));
                  r32.xyzw = log2(r32.xyzw);
                  r32.xyzw = r42.xxxx * r32.xyzw;
                  r32.xyzw = exp2(r32.xyzw);
                  r32.xy = r32.xy + r32.zw;
                  r32.xy = log2(r32.xy);
                  r32.xy = r43.xx * r32.xy;
                  r32.xy = exp2(r32.xy);
                  r24.w = r42.z * r32.x;
                  r25.w = r42.w * r32.y + -1;
                  r24.w = r42.w * r32.y + -r24.w;
                  r24.w = saturate(r25.w / r24.w);
                  r25.w = r24.w * r24.w;
                  r24.w = r24.w * -2 + 3;
                  r13.w = r25.w * r24.w;
                }
                r17.x = r23.w * r13.w;
                r13.w = (int)r19.w & 255;
                if (r13.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyz, r8.w, l(220), t12.xyzx
                r32.x = samp0[]..swiz;
                r32.y = samp0[]..swiz;
                r32.z = samp0[]..swiz;
                  r19.w = dot(r43.yzw, r19.xyz);
                  r19.x = dot(r32.xyz, r19.xyz);
                  r32.xy = frac(r19.wx);
                  r13.w = (int)r13.w + -1;
                  r32.z = (uint)r13.w;
                  r40.xyz = gCookieArray.SampleLevel(samplerLinear_s, r32.xyz, 0).xyz;
                } else {
                  r40.xyz = float3(1,1,1);
                }
              }
              r30.yz = r31.yz;
              r19.xyw = r30.xyz * r40.xyz;
              r13.w = cmp(0 < r17.x);
              if (r13.w != 0) {
                if (3 == 0) r13.w = 0; else if (3+27 < 32) {                 r13.w = (uint)r31.w << (32-(3 + 27)); r13.w = (uint)r13.w >> (32-3);                } else r13.w = (uint)r31.w >> 27;
                r13.w = cmp((int)r13.w != 1);
                if (r13.w != 0) {
                  r13.w = abs(r11.w) * -0.200000003 + 0.400000006;
                  r20.xyz = r3.xyz * r13.www + v6.xyz;
                  r37.xyz = r36.xyz;
                  r13.w = dot(r37.xyzw, r20.xyzw);
                  r23.w = dot(r39.xyzw, r20.xyzw);
                  r24.w = cmp(r23.w >= r13.w);
                  if (r24.w != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.y, r8.w, l(144), t12.xxxx
                  r38.y = samp0[]..swiz;
                    r34.w = r35.x;
                    r30.x = dot(r34.xyzw, r20.xyzw);
                    r36.xyz = r35.yzw;
                    r30.y = dot(r36.xyzw, r20.xyzw);
                    r20.xy = r30.xy / r23.ww;
                    r20.xy = saturate(r20.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                    r20.xy = r20.xy * r38.zw + r38.xy;
                    r8.w = r13.w / r23.w;
                    r8.w = max(6.10351563e-05, r8.w);
                    r13.w = (int)r31.w & 0x0000ffff;
                    if (r7.w != 0) {
                      r30.z = (uint)r13.w;
                      r23.w = 0;
                      r24.w = 0;
                      while (true) {
                        r25.w = cmp((int)r24.w >= 8);
                        if (r25.w != 0) break;
                        r32.x = dot(icb[r24.w+0].xy, r23.xy);
                        r32.y = dot(icb[r24.w+0].yx, r23.xz);
                        r30.xy = r32.xy * r33.yy + r20.xy;
                        r25.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r30.xyz, r8.w).x;
                        r23.w = r25.w * 0.125 + r23.w;
                        r24.w = (int)r24.w + 1;
                      }
                    } else {
                      r20.z = (uint)r13.w;
                      r23.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r8.w).x;
                    }
                    r8.w = r23.w * r23.w;
                    r8.w = r8.w * r23.w;
                  } else {
                    r8.w = 1;
                  }
                } else {
                  r8.w = 1;
                }
                r8.w = r17.x * r8.w;
                r13.w = cmp(0 < r8.w);
                if (r13.w != 0) {
                  r13.w = r31.x * r4.w;
                  r13.w = r13.w * r12.w;
                  if (4 == 0) r17.x = 0; else if (4+16 < 32) {                   r17.x = (uint)r31.w << (32-(4 + 16)); r17.x = (uint)r17.x >> (32-4);                  } else r17.x = (uint)r31.w >> 16;
                  r20.x = cmp(0 < (uint)r17.x);
                  r20.x = r4.z ? r20.x : 0;
                  if (r20.x != 0) {
                    r17.x = (int)r17.x + numLights;
                    r17.x = (int)r17.x + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.x, r17.x, l(52), t12.xxxx
                  r20.x = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r30.xyzw, r17.x, l(68), t12.xyzw
                  r30.x = samp0[]..swiz;
                  r30.y = samp0[]..swiz;
                  r30.z = samp0[]..swiz;
                  r30.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r17.x, l(84), t12.xyzw
                  r32.x = samp0[]..swiz;
                  r32.y = samp0[]..swiz;
                  r32.z = samp0[]..swiz;
                  r32.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r17.x, l(100), t12.xyzw
                  r33.x = samp0[]..swiz;
                  r33.y = samp0[]..swiz;
                  r33.z = samp0[]..swiz;
                  r33.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r17.x, l(116), t12.xyzw
                  r34.x = samp0[]..swiz;
                  r34.y = samp0[]..swiz;
                  r34.z = samp0[]..swiz;
                  r34.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r17.x, l(132), t12.xyzw
                  r35.x = samp0[]..swiz;
                  r35.y = samp0[]..swiz;
                  r35.z = samp0[]..swiz;
                  r35.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r17.x, l(148), t12.xyzw
                  r36.x = samp0[]..swiz;
                  r36.y = samp0[]..swiz;
                  r36.z = samp0[]..swiz;
                  r36.w = samp0[]..swiz;
                    r20.y = abs(r11.w) * -0.200000003 + 0.400000006;
                    r21.xyz = r3.xyz * r20.yyy + v6.xyz;
                    r30.x = dot(r30.xyzw, r21.xyzw);
                    r30.y = dot(r32.xyzw, r21.xyzw);
                    r20.y = dot(r33.xyzw, r21.xyzw);
                    r20.z = dot(r34.xyzw, r21.xyzw);
                    r21.x = cmp(r20.z < r20.y);
                    r21.yz = r30.xy / r20.zz;
                    r21.yz = r21.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                    r21.yz = r21.yz + r36.zw;
                    r21.yz = r21.yz * r36.xy;
                    r30.xy = r20.xx / r35.xz;
                    r30.zw = float2(1,1) + -r30.xy;
                    r30.zw = cmp(r21.yz >= r30.zw);
                    r30.xy = cmp(r30.xy >= r21.yz);
                    r30.xy = (int2)r30.xy | (int2)r30.zw;
                    r24.w = (int)r30.y | (int)r30.x;
                    r21.x = (int)r21.x | (int)r24.w;
                    if (r21.x == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r21.x, r17.x, l(28), t12.xxxx
                    r21.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r30.xy, r17.x, l(164), t12.xyxx
                    r30.x = samp0[]..swiz;
                    r30.y = samp0[]..swiz;
                      r21.yz = saturate(r21.yz);
                      r31.xy = r21.yz * r35.xz + r35.yw;
                      r17.x = r30.y * r20.z;
                      r20.y = r30.x * r20.z + r20.y;
                      r17.x = r20.y / r17.x;
                      r17.x = max(6.10351563e-05, r17.x);
                      r20.y = r21.x ? 0.000000 : 0;
                      if (r7.w != 0) {
                        r21.z = (uint)r20.y;
                        r20.z = 0;
                        r24.w = 0;
                        while (true) {
                          r25.w = cmp((int)r24.w >= 8);
                          if (r25.w != 0) break;
                          r30.x = dot(icb[r24.w+0].xy, r24.xy);
                          r30.y = dot(icb[r24.w+0].yx, r24.xz);
                          r21.xy = r30.xy * r20.xx + r31.xy;
                          r21.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r17.x).x;
                          r20.z = r21.x * 0.125 + r20.z;
                          r24.w = (int)r24.w + 1;
                        }
                      } else {
                        r31.z = (uint)r20.y;
                        r20.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r31.xyz, r17.x).x;
                      }
                      r17.x = r20.z * r20.z;
                      r17.x = r17.x * r20.z;
                    } else {
                      r17.x = 1;
                    }
                    r8.w = r17.x * r8.w;
                  } else {
                    if (4 == 0) r17.x = 0; else if (4+20 < 32) {                     r17.x = (uint)r31.w << (32-(4 + 20)); r17.x = (uint)r17.x >> (32-4);                    } else r17.x = (uint)r31.w >> 20;
                    r20.x = cmp(0 < (uint)r17.x);
                    r20.x = r20.x ? r2.w : 0;
                    if (r20.x != 0) {
                      r17.x = (int)r17.x + numLights;
                      r17.x = (int)r17.x + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.x, r17.x, l(52), t12.xxxx
                    r20.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r30.xyzw, r17.x, l(68), t12.xyzw
                    r30.x = samp0[]..swiz;
                    r30.y = samp0[]..swiz;
                    r30.z = samp0[]..swiz;
                    r30.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r17.x, l(84), t12.xyzw
                    r31.x = samp0[]..swiz;
                    r31.y = samp0[]..swiz;
                    r31.z = samp0[]..swiz;
                    r31.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r17.x, l(100), t12.xyzw
                    r32.x = samp0[]..swiz;
                    r32.y = samp0[]..swiz;
                    r32.z = samp0[]..swiz;
                    r32.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r17.x, l(116), t12.xyzw
                    r33.x = samp0[]..swiz;
                    r33.y = samp0[]..swiz;
                    r33.z = samp0[]..swiz;
                    r33.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r17.x, l(132), t12.xyzw
                    r34.x = samp0[]..swiz;
                    r34.y = samp0[]..swiz;
                    r34.z = samp0[]..swiz;
                    r34.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r17.x, l(148), t12.xyzw
                    r35.x = samp0[]..swiz;
                    r35.y = samp0[]..swiz;
                    r35.z = samp0[]..swiz;
                    r35.w = samp0[]..swiz;
                      r20.y = abs(r11.w) * -0.200000003 + 0.400000006;
                      r22.xyz = r3.xyz * r20.yyy + v6.xyz;
                      r21.x = dot(r30.xyzw, r22.xyzw);
                      r21.y = dot(r31.xyzw, r22.xyzw);
                      r20.y = dot(r32.xyzw, r22.xyzw);
                      r21.z = dot(r33.xyzw, r22.xyzw);
                      r22.x = cmp(r21.z < r20.y);
                      r21.xy = r21.xy / r21.zz;
                      r21.xy = r21.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r21.xy = r21.xy + r35.zw;
                      r21.xy = r21.xy * r35.xy;
                      r22.yz = r20.xx / r34.xz;
                      r30.xy = float2(1,1) + -r22.yz;
                      r30.xy = cmp(r21.xy >= r30.xy);
                      r22.yz = cmp(r22.yz >= r21.xy);
                      r22.yz = (int2)r22.yz | (int2)r30.xy;
                      r22.y = (int)r22.z | (int)r22.y;
                      r22.x = (int)r22.x | (int)r22.y;
                      if (r22.x == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.x, r17.x, l(28), t12.xxxx
                      r22.x = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.yz, r17.x, l(164), t12.xxyx
                      r22.y = samp0[]..swiz;
                      r22.z = samp0[]..swiz;
                        r21.xy = saturate(r21.xy);
                        r30.xy = r21.xy * r34.xz + r34.yw;
                        r17.x = r22.z * r21.z;
                        r20.y = r22.y * r21.z + r20.y;
                        r17.x = r20.y / r17.x;
                        r17.x = max(6.10351563e-05, r17.x);
                        r20.y = r22.x ? 0.000000 : 0;
                        if (r7.w != 0) {
                          r21.z = (uint)r20.y;
                          r22.xy = float2(0,0);
                          while (true) {
                            r22.z = cmp((int)r22.y >= 8);
                            if (r22.z != 0) break;
                            r31.x = dot(icb[r22.y+0].xy, r25.xy);
                            r31.y = dot(icb[r22.y+0].yx, r25.xz);
                            r21.xy = r31.xy * r20.xx + r30.xy;
                            r21.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r17.x).x;
                            r22.x = r21.x * 0.125 + r22.x;
                            r22.y = (int)r22.y + 1;
                          }
                        } else {
                          r30.z = (uint)r20.y;
                          r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r30.xyz, r17.x).x;
                        }
                        r17.x = r22.x * r22.x;
                        r17.x = r17.x * r22.x;
                      } else {
                        r17.x = 1;
                      }
                      r8.w = r17.x * r8.w;
                    }
                  }
                  r17.x = -r12.w * r3.w + 1;
                  r17.x = r17.x * r17.x;
                  r17.x = -r17.x * 0.620000005 + 0.620000005;
                  r17.x = r17.x + -r12.w;
                  r17.x = r5.w * r17.x + r12.w;
                  r17.x = r17.x * r8.w;
                  r11.w = cmp(0 < r11.w);
                  r21.xyz = r17.xxx * r19.xyw + r15.xyz;
                  r18.xyz = r18.xyz * r9.www + r5.xyz;
                  r9.w = dot(r18.xyz, r18.xyz);
                  r9.w = rsqrt(r9.w);
                  r18.xyz = r18.xyz * r9.www;
                  r9.w = dot(r18.xyz, r5.xyz);
                  r17.x = dot(r3.xyz, r18.xyz);
                  r18.x = abs(r17.x) * r4.w + -abs(r17.x);
                  r17.x = abs(r17.x) * r18.x + 1;
                  r12.w = r12.w * r0.x + r1.x;
                  r17.x = r17.x * r17.x;
                  r12.w = r17.x * r12.w;
                  r12.w = rcp(r12.w);
                  r12.w = r12.w * r13.w;
                  r8.w = r12.w * r8.w;
                  r8.w = 0.25 * r8.w;
                  r18.xyz = r8.www * r19.xyw + r29.xyz;
                  r9.w = saturate(1 + -r9.w);
                  r12.w = r9.w * r9.w;
                  r12.w = r12.w * r12.w;
                  r9.w = r12.w * r9.w;
                  r8.w = r9.w * r8.w;
                  r19.xyw = r8.www * r19.xyw + r28.xyz;
                  r15.xyz = r11.www ? r21.xyz : r15.xyz;
                  r28.xyz = r11.www ? r19.xyw : r28.xyz;
                  r29.xyz = r11.www ? r18.xyz : r29.xyz;
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
    r10.yzw = r15.xyz;
    r26.xyz = r28.xyz;
    r27.xyz = r29.xyz;
    r4.y = (int)r4.y + 32;
  }
  r2.xyz = float3(1,1,1) + -r1.yzw;
  r2.xyz = r26.xyz * r2.xyz;
  r1.xyz = r27.xyz * r1.yzw + r2.xyz;
  r0.xyz = r10.yzw * r0.yzw + r1.xyz;
  r0.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.w != 0) {
    r0.w = dot(v6.xyz, v6.xyz);
    r1.x = rsqrt(r0.w);
    r1.xyz = v6.xyz * r1.xxx;
    r0.w = sqrt(r0.w);
    r1.w = cmp(0 < fogConstants.blendAmount);
    if (r1.w != 0) {
      r2.xy = r0.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
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
      r1.w = r0.w * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
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
    r0.w = fogConstants.heightFalloff * v6.z;
    r1.w = fogConstants.heightFalloff * v6.z + fogConstants.K0;
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
    r1.w = dot(v6.xyz, v6.xyz);
    r2.x = sqrt(r1.w);
    r0.w = r0.w * r2.x + fogConstants.expAdd;
    r0.w = exp2(r0.w);
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r1.w = rsqrt(r1.w);
    r2.xyz = v6.xyz * r1.www;
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