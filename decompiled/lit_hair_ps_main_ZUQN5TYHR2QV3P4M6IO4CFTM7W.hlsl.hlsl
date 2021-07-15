// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:37:13 2021

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
  float baseNormalHeight : packoffset(c10);
  float2 glossRange : packoffset(c10.y);
  float anisotropy : packoffset(c10.w);
  float3 specColorTint : packoffset(c11);
  float3 transColorTint : packoffset(c12);
  float alphaRevealSoftEdge : packoffset(c12.w);
  float alphaRevealRamp : packoffset(c13);
  float scriptControl : packoffset(c13.y);
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
SamplerState revealSampler_s : register(s7);
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
Texture2D<float4> floatZSampler : register(t21);
Texture2D<float4> colorMap : register(t22);
StructuredBuffer<gSunShadowTree> gSunShadowTree : register(t23);
Texture2D<float4> normalMap : register(t24);
Texture2D<float4> glossMap : register(t25);
Texture2D<float4> aoMap : register(t26);
Texture2D<float4> revealMap : register(t29);
Texture2DArray<float> gTransShadowmapArray : register(t31);


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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45,r46,r47,r48,r49,r50,r51,r52,r53,r54,r55,r56,r57,r58,r59,r60,r61,r62,r63,r64,r65;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[4];
  float4 x1[4];
  float4 x2[4];
  r0.xyzw = colorMap.Sample(colorSampler_s, w1.xy).xyzw;
  r0.w = v1.x * r0.w;
  r1.x = glossMap.Sample(specColorSampler_s, w1.xy).x;
  r1.y = glossRange.y + -glossRange.x;
  r1.z = r1.x * r1.y;
  r1.x = r1.x * r1.y + glossRange.x;
  r1.y = r1.z * 0.5 + glossRange.x;
  r1.xy = saturate(float2(0.0588235296,0.0588235296) * r1.xy);
  r2.xyz = normalMap.Sample(normalSampler_s, w1.xy).xyz;
  r2.xyz = float3(-0.5,-0.5,-0) + r2.xyz;
  r2.xyz = baseNormalHeight * r2.xyz + float3(0.5,0.5,0);
  r1.zw = r2.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.x = dot(r1.zw, r1.zw);
  r2.x = 1 + -r2.x;
  r2.x = max(0, r2.x);
  r2.x = sqrt(r2.x);
  r2.y = r2.z * r2.z;
  r2.y = 0.333333343 * r2.y;
  r2.y = min(1, r2.y);
  r2.z = v7.x ? 1 : -1;
  r2.w = dot(v3.xyz, v3.xyz);
  r2.w = rsqrt(r2.w);
  r3.xyz = v3.xyz * r2.www;
  r3.xyz = r3.xyz * r2.zzz;
  r2.w = dot(v4.xyz, v4.xyz);
  r2.w = rsqrt(r2.w);
  r4.xyz = v4.xyz * r2.www;
  r4.xyz = r4.xyz * r2.zzz;
  r2.w = dot(v5.xyz, v5.xyz);
  r2.w = rsqrt(r2.w);
  r5.xyz = v5.xyz * r2.www;
  r5.xyz = r5.xyz * r2.zzz;
  r1.xy = float2(-17,-17) * r1.xy;
  r1.x = exp2(r1.x);
  r1.x = r2.y + r1.x;
  r1.x = log2(r1.x);
  r1.y = exp2(r1.y);
  r1.y = r2.y + r1.y;
  r1.y = log2(r1.y);
  r1.xy = float2(-0.0588235296,-0.0588235296) * r1.xy;
  r1.xy = max(float2(0,0), r1.xy);
  r2.yzw = r5.xyz * r1.www;
  r2.yzw = r4.xyz * r1.zzz + r2.yzw;
  r2.xyz = r3.xyz * r2.xxx + r2.yzw;
  r1.z = dot(r2.xyz, r2.xyz);
  r1.z = rsqrt(r1.z);
  r2.xyz = r2.xyz * r1.zzz;
  r1.zw = (uint2)v0.xy;
  r3.w = cmp(v0.z >= 0.984375);
  r4.w = 1.01587307 * v0.z;
  r5.w = v0.z * 64 + -63;
  r3.w = r3.w ? r5.w : r4.w;
  r3.w = max(9.99999994e-09, r3.w);
  r3.w = rcp(r3.w);
  r4.w = dot(-v6.xyz, -v6.xyz);
  r4.w = rsqrt(r4.w);
  r6.xyz = -v6.xyz * r4.www;
  r7.xy = (uint2)r1.wz;
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
  r5.w = saturate(dot(r2.xyz, r6.xyz));
  r6.w = dot(-r6.xyz, r2.xyz);
  r6.w = r6.w + r6.w;
  r11.xyz = r2.xyz * -r6.www + -r6.xyz;
  r7.yzw = -eyeOffset.yyy * viewProjectionMatrix._m10_m11_m13;
  r7.yzw = -eyeOffset.xxx * viewProjectionMatrix._m00_m01_m03 + r7.yzw;
  r7.yzw = -eyeOffset.zzz * viewProjectionMatrix._m20_m21_m23 + r7.yzw;
  r7.yzw = viewProjectionMatrix._m30_m31_m33 + r7.yzw;
  r12.xyz = eyeOffset.xyz + v6.xyz;
  r6.w = r5.w * 0.547037423 + 0.452962577;
  r8.zw = float2(0.547037423,0.452962577) * r6.ww;
  r6.w = min(1, abs(anisotropy));
  r1.y = r1.y + -r1.x;
  r1.x = r6.w * r1.y + r1.x;
  r1.y = cmp(anisotropy < 0);
  r1.x = 17 * r1.x;
  r13.y = exp2(r1.x);
  r13.xz = float2(1,1);
  r1.xy = r1.yy ? r13.xy : r13.yx;
  r1.xy = float2(2,2) + r1.xy;
  r1.xy = float2(2,2) / r1.xy;
  r6.w = dot(r2.xyz, sunConstants.wldDir.xyz);
  r9.w = cmp(0 >= abs(r6.w));
  if (r9.w != 0) {
    r13.y = 0;
  }
  if (r9.w == 0) {
    r10.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v6.yyy;
    r10.yzw = v6.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r10.yzw;
    r10.yzw = v6.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r10.yzw;
    r10.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r10.yzw;
    r9.w = -sunConstants.splitDepthOffset + r10.w;
    r9.w = -r9.w * 6.10351563e-05 + 1;
    r14.x = saturate(r9.w);
    r14.x = cmp(r9.w == r14.x);
    if (r14.x != 0) {
      r14.xy = float2(0,0);
      while (true) {
        r14.z = cmp(r14.x >= 3);
        if (r14.z != 0) break;
        r14.z = (uint)r14.x;
        r15.xy = -sunConstants.splitPinTransform[r14.z].xy + r10.yz;
        r14.w = max(abs(r15.x), abs(r15.y));
        r14.y = sunConstants.splitPinTransform[r14.z].z * r14.w;
        r14.z = cmp(r14.y < 1);
        if (r14.z != 0) {
          break;
        }
        r14.x = 1 + r14.x;
        r14.y = 0;
      }
    } else {
      r14.xy = float2(3,0);
    }
    r14.z = cmp(r14.x >= 3);
    if (r14.z != 0) {
      r15.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r16.xz = rcp(r15.xx);
      r16.y = -r16.z;
      r15.xyz = r10.yzy * r16.xyz + r15.yzy;
      r16.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r15.xyz = max(float3(0,0,0), r15.xyz);
      r15.xyz = min(r15.xyz, r16.xyz);
      r16.xy = sunConstants.sstLightingConstants.coordScale * r15.zy;
      r16.xy = floor(r16.xy);
      r14.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r16.y;
      r14.w = r14.w * sunConstants.sstLightingConstants.coordScale + r16.x;
      r14.w = (uint)r14.w;
      r14.w = (int)r14.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.w, r14.w, l(0), t23.xxxx
    r15.w = samp0[]..swiz;
      r16.x = (int)r15.w & 0x40000000;
      r16.y = (uint)r15.w << 2;
      if (r16.x == 0) {
        r16.x = (int)r15.w & 0x01ffffff;
        r17.x = (int)r14.w + (int)r16.x;
        r14.w = (uint)r15.w >> 25;
        r14.w = (uint)r14.w;
        r15.xyz = r15.xyz * r14.www;
        r15.xyz = frac(r15.xyz);
        r15.xyz = float3(128,128,128) * r15.xyz;
        r15.xyz = (uint3)r15.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
      r17.z = samp0[]..swiz;
        r16.xz = (uint2)r15.zy >> int2(6,6);
        r14.w = (int)r17.z & 0xc0000000;
        r15.w = (int)r17.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.w, r15.w, l(0), t23.xxxx
      r15.w = samp0[]..swiz;
        r15.w = r16.z ? r17.z : r15.w;
        r16.z = (uint)r15.w >> 13;
        r15.w = r16.x ? r16.z : r15.w;
        r15.w = (int)r15.w & 8191;
        r18.x = (int)r15.w + (int)r17.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
      r18.z = samp0[]..swiz;
        r17.y = 0;
        r18.y = 1;
        r16.xzw = r14.www ? r17.xyz : r18.xyz;
        r18.yz = r14.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r19.xy = (uint2)r15.zy >> (uint2)r18.yy;
        r19.xy = (int2)r19.xy & int2(1,1);
        r15.w = (int)r16.w & 0xc0000000;
        r17.w = (int)r16.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.w, l(0), t23.xxxx
      r17.w = samp0[]..swiz;
        r17.w = r19.y ? r16.w : r17.w;
        r18.y = (uint)r17.w >> 13;
        r17.w = r19.x ? r18.y : r17.w;
        r17.w = (int)r17.w & 8191;
        r18.x = (int)r16.x + (int)r17.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.x, l(0), t23.xxxx
      r18.w = samp0[]..swiz;
        r16.xzw = r15.www ? r16.xzw : r18.xzw;
        r16.xzw = r14.www ? r17.xyz : r16.xzw;
        r14.w = (int)r16.w & 0xc0000000;
        if (r14.w == 0) {
          r14.w = (int)-r16.z + 6;
          r17.xy = (uint2)r15.zy >> (uint2)r14.ww;
          r14.w = (int)r16.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r15.w = (((uint)r17.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r15.w = (((uint)r17.x << 0) & bitmask.w) | ((uint)r15.w & ~bitmask.w);
          r15.w = (int)r15.w * 10;
          r14.w = (uint)r14.w >> (uint)r15.w;
          r14.w = (int)r14.w & 1023;
          r17.x = (int)r14.w + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.x, l(0), t23.xxxx
        r17.w = samp0[]..swiz;
          r17.yz = (int2)r16.zz + int2(1,2);
          r14.w = (int)-r17.y + 6;
          r18.xy = (uint2)r15.zy >> (uint2)r14.ww;
          r14.w = (int)r17.w & 0xc0000000;
          r15.w = (int)r17.w | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r16.z = (((uint)r18.y << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r16.z = (((uint)r18.x << 0) & bitmask.z) | ((uint)r16.z & ~bitmask.z);
          r16.z = (int)r16.z * 10;
          r15.w = (uint)r15.w >> (uint)r16.z;
          r15.w = (int)r15.w & 1023;
          r18.x = (int)r15.w + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
        r18.z = samp0[]..swiz;
          r18.y = r17.z;
          r18.xyz = r14.www ? r17.xyw : r18.xyz;
          r15.w = (int)-r18.y + 6;
          r17.yz = (uint2)r15.zy >> (uint2)r15.ww;
          r15.w = (int)r18.z & 0xc0000000;
          r16.z = (int)r18.z | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r17.z = (((uint)r17.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r17.y = (((uint)r17.y << 0) & bitmask.y) | ((uint)r17.z & ~bitmask.y);
          r17.y = (int)r17.y * 10;
          r16.z = (uint)r16.z >> (uint)r17.y;
          r16.z = (int)r16.z & 1023;
          r19.x = (int)r16.z + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.y, r19.x, l(0), t23.xxxx
        r19.y = samp0[]..swiz;
          r17.yz = r15.ww ? r18.xz : r19.xy;
          r16.xw = r14.ww ? r17.xw : r17.yz;
        }
        r14.w = (int)r16.w & 0xc0000000;
        if (r14.w == 0) {
          if (14 == 0) r15.w = 0; else if (14+15 < 32) {           r15.w = (uint)r16.w << (32-(14 + 15)); r15.w = (uint)r15.w >> (32-14);          } else r15.w = (uint)r16.w >> 15;
          r15.w = (uint)r15.w;
          r15.w = sunConstants.sstLightingConstants.constants.spanInInches * r15.w;
          r15.w = 6.10388815e-05 * r15.w;
          r17.xy = (int2)r16.ww & int2(32767,536870912);
          r16.z = (uint)r17.x;
          r16.z = sunConstants.sstLightingConstants.constants.spanInInches * r16.z;
          r16.z = 3.05185094e-05 * r16.z;
          r17.x = (int)r15.y & 3;
          r17.x = (int)r16.x + (int)r17.x;
          r17.x = (int)r17.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.x, r17.x, l(0), t23.xxxx
        r17.x = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r18.x = (((uint)r15.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r18.y = (((uint)r15.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r18.z = (((uint)r15.z << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r15.x = (uint)r17.x >> (uint)r18.x;
          r15.x = (int)r15.x & 255;
          r15.x = (uint)r15.x;
          r15.x = r15.x * r16.z;
          r15.x = r15.x * 0.00392156886 + r15.w;
          r15.y = (int)r18.y + 1;
          if (1 == 0) r15.z = 0; else if (1+1 < 32) {           r15.z = (uint)r15.z << (32-(1 + 1)); r15.z = (uint)r15.z >> (32-1);          } else r15.z = (uint)r15.z >> 1;
          r15.y = (int)r15.z + (int)r15.y;
          r15.y = (int)r15.y + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.y, r15.y, l(0), t23.xxxx
        r15.y = samp0[]..swiz;
          r15.y = (uint)r15.y >> (uint)r18.z;
          r15.y = (int)r15.y & 0x0000ffff;
          r15.y = (uint)r15.y;
          r15.y = r15.y * r16.z;
          r15.y = r15.y * 1.52590219e-05 + r15.w;
          r16.y = r17.y ? r15.x : r15.y;
        } else {
          r15.x = (int)r16.w & 0x80000000;
          r15.y = (int)r16.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.y, r15.y, l(0), t23.xxxx
        r15.y = samp0[]..swiz;
          r15.x = r15.x ? r15.y : 0;
          r15.y = (uint)r16.w << 2;
          r15.z = (uint)r15.x >> 16;
          r15.x = (int)r15.x & 0x0000ffff;
          r15.xz = f16tof32(r15.xz);
          r15.y = r10.y * r15.z + r15.y;
          r15.x = r10.z * r15.x + r15.y;
          r16.y = r14.w ? r15.x : r16.y;
        }
      }
      r10.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r10.w;
      r10.w = cmp(r16.y < r10.w);
      r13.y = r10.w ? 0 : 1;
    }
    if (r14.z == 0) {
      if (enableDitheredShadow == 0) {
        r10.w = (uint)r14.x;
        r14.zw = -sunConstants.splitPinTransform[r10.w].xy + r10.yz;
        r14.zw = sunConstants.splitPinTransform[r10.w].zz * r14.zw;
        r15.xy = r14.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.w = (int16)sunConstants.splitArrayOffset;
        r15.z = r14.x + r10.w;
        r10.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r9.w).x;
        r14.z = gTransShadowmapArray.SampleLevel(samp0_s, r15.xyz, 0).x;
        r10.w = r14.z + r10.w;
        r10.w = saturate(-1 + r10.w);
        r14.z = r10.w * r10.w;
        r13.y = r14.z * r10.w;
      }
      if (enableDitheredShadow != 0) {
        r15.x = -r8.x;
        r10.w = (uint)r14.x;
        r14.x = 1 + r14.x;
        r14.x = min(2, r14.x);
        r14.y = 1 + -r14.y;
        r14.y = 28 * r14.y;
        r14.xy = (uint2)r14.xy;
        r14.zw = -sunConstants.splitPinTransform[r10.w].xy + r10.yz;
        r14.zw = sunConstants.splitPinTransform[r10.w].zz * r14.zw;
        r14.zw = r14.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.yz = -sunConstants.splitPinTransform[r14.x].xy + r10.yz;
        r10.yz = sunConstants.splitPinTransform[r14.x].zz * r10.yz;
        r10.yz = r10.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r15.y = r9.x;
        r15.z = r8.x;
        r15.w = 0;
        r16.x = 0;
        while (true) {
          r16.y = cmp((uint)r16.x >= 8);
          if (r16.y != 0) break;
          r16.y = cmp((uint)r14.y < (uint)r16.x);
          r16.zw = r16.yy ? r10.yz : r14.zw;
          r17.x = r16.y ? sunConstants.splitPinTransform[r14.x].w : sunConstants.splitPinTransform[r10.w].w;
          r16.y = r16.y ? r14.x : r10.w;
          r18.x = dot(icb[r16.x+0].yx, r15.xy);
          r18.y = dot(icb[r16.x+0].yx, r15.yz);
          r17.xy = r18.xy * r17.xx + r16.zw;
          r16.y = (int)r16.y + (int16)sunConstants.splitArrayOffset;
          r17.z = (uint)r16.y;
          r16.y = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r9.w).x;
          r16.z = gTransShadowmapArray.SampleLevel(samp0_s, r17.xyz, 0).x;
          r16.y = r16.y + r16.z;
          r16.y = saturate(-1 + r16.y);
          r15.w = r16.y * 0.125 + r15.w;
          r16.x = (int)r16.x + 1;
        }
        r9.w = r15.w * r15.w;
        r13.y = r9.w * r15.w;
      }
    }
  }
  r9.w = viewmodelSunShadowRaw & 0x0000ffff;
  if (r9.w != 0) {
    r9.w = (int)r9.w + numLights;
    r9.w = (int)r9.w + -1;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.y, r9.w, l(52), t12.xxxx
  r10.y = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r9.w, l(68), t12.xyzw
  r14.x = samp0[]..swiz;
  r14.y = samp0[]..swiz;
  r14.z = samp0[]..swiz;
  r14.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r9.w, l(84), t12.xyzw
  r15.x = samp0[]..swiz;
  r15.y = samp0[]..swiz;
  r15.z = samp0[]..swiz;
  r15.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r9.w, l(132), t12.xyzw
  r16.x = samp0[]..swiz;
  r16.y = samp0[]..swiz;
  r16.z = samp0[]..swiz;
  r16.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r9.w, l(148), t12.xyzw
  r17.x = samp0[]..swiz;
  r17.y = samp0[]..swiz;
  r17.z = samp0[]..swiz;
  r17.w = samp0[]..swiz;
    r10.z = abs(r6.w) * -0.200000003 + 0.400000006;
    r10.w = cmp(r6.w < 0);
    r10.z = r10.w ? -r10.z : r10.z;
    r18.xyz = r2.xyz * r10.zzz + v6.xyz;
    r18.w = 1;
    r14.x = dot(r14.xyzw, r18.xyzw);
    r14.y = dot(r15.xyzw, r18.xyzw);
    r10.zw = r14.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r10.zw = r10.zw + r17.zw;
    r10.zw = r10.zw * r17.xy;
    r14.xy = r10.yy / r16.xz;
    r14.zw = float2(1,1) + -r14.xy;
    r14.zw = cmp(r10.zw >= r14.zw);
    r14.xy = cmp(r14.xy >= r10.zw);
    r14.xy = (int2)r14.xy | (int2)r14.zw;
    r14.x = (int)r14.y | (int)r14.x;
    if (r14.x == 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.x, r9.w, l(28), t12.xxxx
    r14.x = samp0[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r9.w, l(100), t12.xyzw
    r15.x = samp0[]..swiz;
    r15.y = samp0[]..swiz;
    r15.z = samp0[]..swiz;
    r15.w = samp0[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.yz, r9.w, l(164), t12.xxyx
    r14.y = samp0[]..swiz;
    r14.z = samp0[]..swiz;
      r9.w = dot(r15.xyzw, r18.xyzw);
      r10.zw = saturate(r10.zw);
      r15.xy = r10.zw * r16.xz + r16.yw;
      r9.w = r9.w + r14.y;
      r9.w = r9.w / r14.z;
      r9.w = max(6.10351563e-05, r9.w);
      r10.z = r14.x ? 0.000000 : 0;
      if (enableDitheredShadow != 0) {
        r14.x = -r8.x;
        r16.z = (uint)r10.z;
        r14.y = r9.x;
        r14.z = r8.x;
        r10.w = 0;
        r14.w = 0;
        while (true) {
          r15.w = cmp((int)r14.w >= 8);
          if (r15.w != 0) break;
          r17.x = dot(icb[r14.w+0].yx, r14.xy);
          r17.y = dot(icb[r14.w+0].yx, r14.yz);
          r16.xy = r17.xy * r10.yy + r15.xy;
          r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r9.w).x;
          r10.w = r15.w * 0.125 + r10.w;
          r14.w = (int)r14.w + 1;
        }
      } else {
        r15.z = (uint)r10.z;
        r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r9.w).x;
      }
      r9.w = r10.w * r10.w;
      r9.w = r9.w * r10.w;
    } else {
      r9.w = 1;
    }
    r13.y = r13.y * r9.w;
  }
  r9.w = cmp(0 < abs(r6.w));
  if (r9.w != 0) {
    r9.w = cmp(0 < r13.y);
    if (r9.w != 0) {
      r9.w = sunConstants.specScale * 0.166666672;
      if (sunConstants.sunCookieIndex != 0) {
        r12.w = 1;
        r10.y = dot(sunConstants.sunCookieTransform[0].xyzw, r12.xyzw);
        r10.z = dot(sunConstants.sunCookieTransform[1].xyzw, r12.xyzw);
        r14.xy = frac(r10.yz);
        r10.y = -1 + (int14)sunConstants.sunCookieIndex;
        r14.z = (uint)r10.y;
        r10.yzw = gCookieArray.SampleLevel(samplerLinear_s, r14.xyz, 0).xyz;
        r10.yzw = float3(-1,-1,-1) + r10.yzw;
        r10.yzw = sunConstants.sunCookieIntensity * r10.yzw + float3(1,1,1);
        r10.yzw = sunConstants.color.xyz * r10.yzw;
      } else {
        r10.yzw = sunConstants.color.xyz;
      }
      r12.w = -r5.w * 0.5 + 1;
      r12.w = -abs(r6.w) * r12.w + 1;
      r12.w = r12.w * r12.w;
      r12.w = -r12.w * 0.620000005 + 0.620000005;
      r12.w = r12.w + -abs(r6.w);
      r12.w = r12.w * 0.816496611 + abs(r6.w);
      r14.x = cmp(0 < r6.w);
      r6.w = saturate(r6.w);
      r14.yzw = -v6.xyz * r4.www + sunConstants.wldDir.xyz;
      r4.w = dot(r14.yzw, r14.yzw);
      r4.w = rsqrt(r4.w);
      r14.yzw = r14.yzw * r4.www;
      r4.w = dot(r2.xyz, r14.yzw);
      r15.x = dot(r14.yzw, r6.xyz);
      r15.y = r1.x * r1.y;
      r15.y = sqrt(r15.y);
      r15.z = dot(r14.yzw, r4.xyz);
      r14.y = dot(r14.yzw, r5.xyz);
      r14.z = r15.z * r15.z;
      r14.y = r14.y * r14.y;
      r14.yz = r14.yz / r1.yx;
      r14.y = r14.z + r14.y;
      r4.w = abs(r4.w) * abs(r4.w) + r14.y;
      r14.y = r6.w * r8.z + r8.w;
      r4.w = r4.w * r4.w;
      r4.w = r4.w * r15.y;
      r4.w = r4.w * r14.y;
      r4.w = rcp(r4.w);
      r6.w = r6.w * r9.w;
      r4.w = r6.w * r4.w;
      r6.w = saturate(1 + -r15.x);
      r9.w = r6.w * r6.w;
      r9.w = r9.w * r9.w;
      r6.w = r9.w * r6.w;
      r6.w = r6.w * r4.w;
      r9.w = r14.x ? r12.w : 0;
      r14.yzw = r14.xxx ? float3(0,0,0) : r12.www;
      r15.xy = r14.xx ? r6.ww : 0;
      r16.xyz = r14.xxx ? r4.www : 0;
      r4.w = dot(r10.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r4.w = r13.y * r4.w;
      r13.x = 1;
      r6.w = sunConstants.wldDir.x;
      r15.zw = sunConstants.wldDir.yz;
      r17.xy = r9.ww;
      r12.w = r15.y;
    } else {
      r13.xy = float2(0,0);
      r4.w = 0;
      r10.yzw = float3(0,0,0);
      r6.w = 0;
      r17.xy = float2(0,0);
      r14.yzw = float3(0,0,0);
      r9.w = 0;
      r16.xyz = float3(0,0,0);
      r12.w = 0;
      r15.xyzw = float4(0,0,0,0);
    }
  } else {
    r13.xy = float2(0,0);
    r4.w = 0;
    r10.yzw = float3(0,0,0);
    r6.w = 0;
    r17.xy = float2(0,0);
    r14.yzw = float3(0,0,0);
    r9.w = 0;
    r16.xyz = float3(0,0,0);
    r12.w = 0;
    r15.xyzw = float4(0,0,0,0);
  }
  r3.w = 0.0078125 * r3.w;
  r3.w = min(15, r3.w);
  r3.w = (uint)r3.w;
  r18.xy = (uint2)r1.zw >> int2(6,6);
  r18.z = (uint)r3.w << 4;
  r19.x = -r8.x;
  r1.z = -r5.w * 0.5 + 1;
  r1.w = r1.x * r1.y;
  r1.w = sqrt(r1.w);
  r20.xy = float2(0,0);
  r21.w = 0;
  r22.xyz = v6.xyz;
  r22.w = 1;
  r23.w = 1;
  r19.z = r8.x;
  r24.z = 1;
  r25.w = 1;
  r19.yw = r9.xx;
  r8.y = r19.w;
  r26.w = 1;
  r9.y = r19.x;
  r9.z = r8.x;
  r27.x = r9.x;
  r27.y = r19.x;
  r27.z = r8.x;
  r28.xyz = float3(0,0,0);
  r29.xyz = float3(0,0,0);
  r30.xyz = float3(0,0,0);
  r31.xyz = float3(0,0,0);
  r32.xyz = r10.yzw;
  r33.x = r6.w;
  r33.yz = r15.zw;
  r34.xy = r17.xy;
  r34.z = r9.w;
  r35.xyz = r14.yzw;
  r36.xyz = r16.xyz;
  r37.x = r12.w;
  r37.yz = r15.xy;
  r38.x = enableDitheredShadow;
  r38.y = r4.w;
  r17.zw = r13.xy;
  r3.w = 0;
  while (true) {
    r14.x = cmp((uint)r3.w >= numLights);
    if (r14.x != 0) break;
    r20.z = (uint)r3.w >> 5;
    r21.xyz = (int3)r18.xyz + (int3)r20.xyz;
    r14.x = visibleLights.Load(r21.xyzw).x;
    r21.xyz = r28.xyz;
    r39.xyz = r29.xyz;
    r40.xyz = r30.xyz;
    r41.xyz = r31.xyz;
    r42.xyz = r32.xyz;
    r43.xyz = r33.xyz;
    r44.xyz = r34.xyz;
    r45.xyz = r36.xyz;
    r46.xyz = r37.xyz;
    r20.zw = r17.zw;
    r16.w = r38.x;
    r18.w = r38.y;
    r47.xyz = r35.xyz;
    r24.w = r14.x;
    while (true) {
      if (r24.w == 0) break;
      r27.w = firstbitlow((uint)r24.w);
      r28.w = 1 << (int)r27.w;
      r29.w = (int)r24.w & (int)r28.w;
      if (r29.w != 0) {
        r24.w = (int)r24.w ^ (int)r28.w;
        r27.w = (int)r3.w + (int)r27.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r48.xyzw, r27.w, l(0), t12.wxyz
      r48.x = samp0[]..swiz;
      r48.y = samp0[]..swiz;
      r48.z = samp0[]..swiz;
      r48.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r49.xyzw, r27.w, l(16), t12.zxyw
      r49.x = samp0[]..swiz;
      r49.y = samp0[]..swiz;
      r49.z = samp0[]..swiz;
      r49.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r50.xyzw, r27.w, l(32), t12.xyzw
      r50.x = samp0[]..swiz;
      r50.y = samp0[]..swiz;
      r50.z = samp0[]..swiz;
      r50.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r51.xyzw, r27.w, l(48), t12.xyzw
      r51.x = samp0[]..swiz;
      r51.y = samp0[]..swiz;
      r51.z = samp0[]..swiz;
      r51.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r52.xyzw, r27.w, l(64), t12.yzwx
      r52.x = samp0[]..swiz;
      r52.y = samp0[]..swiz;
      r52.z = samp0[]..swiz;
      r52.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r53.xyzw, r27.w, l(80), t12.xyzw
      r53.x = samp0[]..swiz;
      r53.y = samp0[]..swiz;
      r53.z = samp0[]..swiz;
      r53.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r54.xyzw, r27.w, l(96), t12.yzwx
      r54.x = samp0[]..swiz;
      r54.y = samp0[]..swiz;
      r54.z = samp0[]..swiz;
      r54.w = samp0[]..swiz;
        if (3 == 0) r28.w = 0; else if (3+24 < 32) {         r28.w = (uint)r49.w << (32-(3 + 24)); r28.w = (uint)r28.w >> (32-3);        } else r28.w = (uint)r49.w >> 24;
        switch (r28.w) {
          case 4 :          r28.w = cmp(0 < r54.x);
          r55.xy = r53.zw;
          r55.z = r54.w;
          r56.xyz = -r55.xyz * float3(0.5,0.5,0.5) + r48.yzw;
          r57.xyz = -v6.xyz + r56.xyz;
          r29.w = dot(r55.xyz, r57.xyz);
          r30.w = saturate(-r29.w / r54.x);
          r58.xyz = r30.www * r55.xyz + r56.xyz;
          r58.xyz = r28.www ? r58.xyz : r48.yzw;
          r58.xyz = -v6.xyz + r58.xyz;
          r31.w = dot(r58.xyz, r58.xyz);
          r32.w = rsqrt(r31.w);
          r58.xyz = r58.xyz * r32.www;
          r32.w = dot(r2.xyz, r58.xyz);
          r33.w = cmp(0 < abs(r32.w));
          if (r33.w != 0) {
            r33.w = sqrt(r31.w);
            r34.w = r51.x * r51.x;
            r31.w = r34.w / r31.w;
            r31.w = min(1, r31.w);
            r38.zw = saturate(r33.ww * r50.xz + r50.yw);
            r59.xy = r38.zw * r38.zw;
            r38.zw = r38.zw * float2(-2,-2) + float2(3,3);
            r38.zw = r59.xy * r38.zw;
            r31.w = r38.z * r31.w;
            r59.x = r31.w * r38.w;
            r31.w = cmp(0 < r59.x);
            if (r31.w != 0) {
              if (3 == 0) r38.z = 0; else if (3+27 < 32) {               r38.z = (uint)r49.w << (32-(3 + 27)); r38.z = (uint)r38.z >> (32-3);              } else r38.z = (uint)r49.w >> 27;
              if (4 == 0) r38.w = 0; else if (4+20 < 32) {               r38.w = (uint)r49.w << (32-(4 + 20)); r38.w = (uint)r38.w >> (32-4);              } else r38.w = (uint)r49.w >> 20;
              r31.w = cmp((int)r38.z != 1);
              if (r31.w != 0) {
                r31.w = abs(r32.w) * -0.200000003 + 0.400000006;
                r33.w = cmp(r32.w < 0);
                r31.w = r33.w ? -r31.w : r31.w;
                r60.xyz = r2.xyz * r31.www + v6.xyz;
                r60.xyz = r60.xyz + -r52.xyz;
                r31.w = max(abs(r60.y), abs(r60.z));
                r31.w = max(abs(r60.x), r31.w);
                r31.w = r53.x / r31.w;
                r31.w = r31.w + r53.y;
                r33.w = dot(r60.xyz, r60.xyz);
                r33.w = rsqrt(r33.w);
                r31.w = max(6.10351563e-05, r31.w);
                r34.w = (int)r49.w & 0x0000ffff;
                r61.w = (uint)r34.w;
                r59.y = 0;
                r34.w = 0;
                while (true) {
                  r35.w = cmp((int)r34.w >= 8);
                  if (r35.w != 0) break;
                  r62.y = dot(icb[r34.w+0].yx, r19.xy);
                  r62.z = dot(icb[r34.w+0].yx, r19.yz);
                  r62.yz = r62.yz * r51.yy;
                  r62.x = r62.y * r10.x;
                  r62.w = r62.y * r7.x;
                  r61.xyz = r60.xyz * r33.www + r62.xzw;
                  r35.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r61.xyzw, r31.w).x;
                  r59.y = r35.w * 0.125 + r59.y;
                  r34.w = (int)r34.w + 1;
                }
              } else {
                r59.y = 1;
              }
              if (r38.w != 0) {
                r31.w = (int)r38.w + numLights;
                r31.w = (int)r31.w + -1;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.w, r31.w, l(52), t12.xxxx
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r60.xyzw, r31.w, l(100), t12.xyzw
              r60.x = samp0[]..swiz;
              r60.y = samp0[]..swiz;
              r60.z = samp0[]..swiz;
              r60.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r61.xyzw, r31.w, l(116), t12.xyzw
              r61.x = samp0[]..swiz;
              r61.y = samp0[]..swiz;
              r61.z = samp0[]..swiz;
              r61.w = samp0[]..swiz;
                r34.w = abs(r32.w) * -0.200000003 + 0.400000006;
                r35.w = cmp(r32.w < 0);
                r34.w = r35.w ? -r34.w : r34.w;
                r23.xyz = r2.xyz * r34.www + v6.xyz;
                r34.w = dot(r60.xyzw, r23.xyzw);
                r35.w = dot(r61.xyzw, r23.xyzw);
                r36.w = cmp(r35.w < r34.w);
                if (r36.w == 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r60.xyzw, r31.w, l(68), t12.xyzw
                r60.x = samp0[]..swiz;
                r60.y = samp0[]..swiz;
                r60.z = samp0[]..swiz;
                r60.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r61.xyzw, r31.w, l(84), t12.xyzw
                r61.x = samp0[]..swiz;
                r61.y = samp0[]..swiz;
                r61.z = samp0[]..swiz;
                r61.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r62.xyzw, r31.w, l(132), t12.xyzw
                r62.x = samp0[]..swiz;
                r62.y = samp0[]..swiz;
                r62.z = samp0[]..swiz;
                r62.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r63.xyzw, r31.w, l(148), t12.xyzw
                r63.x = samp0[]..swiz;
                r63.y = samp0[]..swiz;
                r63.z = samp0[]..swiz;
                r63.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.zw, r31.w, l(164), t12.xxxy
                r38.z = samp0[]..swiz;
                r38.w = samp0[]..swiz;
                  r60.x = dot(r60.xyzw, r23.xyzw);
                  r60.y = dot(r61.xyzw, r23.xyzw);
                  r23.xy = r60.xy / r35.ww;
                  r23.xy = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                  r23.xy = r23.xy + r63.zw;
                  r23.xy = r23.xy * r63.xy;
                  r59.zw = r33.ww / r62.xz;
                  r60.xy = float2(1,1) + -r59.zw;
                  r60.xy = cmp(r23.xy >= r60.xy);
                  r59.zw = cmp(r59.zw >= r23.xy);
                  r59.zw = (int2)r59.zw | (int2)r60.xy;
                  r23.z = (int)r59.w | (int)r59.z;
                  r23.xy = saturate(r23.xy);
                  r60.xy = r23.xy * r62.xz + r62.yw;
                  r23.x = r38.w * r35.w;
                  r23.y = r38.z * r35.w + r34.w;
                  r23.x = r23.y / r23.x;
                } else {
                  r23.z = -1;
                }
                r23.y = (int)r36.w | (int)r23.z;
                if (r23.y == 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.y, r31.w, l(28), t12.xxxx
                r23.y = samp0[]..swiz;
                  r23.x = max(6.10351563e-05, r23.x);
                  r23.y = (int)r23.y & 0x0000ffff;
                  if (r16.w != 0) {
                    r61.z = (uint)r23.y;
                    r23.z = 0;
                    r31.w = 0;
                    while (true) {
                      r34.w = cmp((int)r31.w >= 8);
                      if (r34.w != 0) break;
                      r62.x = dot(icb[r31.w+0].yx, r19.xw);
                      r62.y = dot(icb[r31.w+0].xy, r8.xy);
                      r61.xy = r62.xy * r33.ww + r60.xy;
                      r34.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r61.xyz, r23.x).x;
                      r23.z = r34.w * 0.125 + r23.z;
                      r31.w = (int)r31.w + 1;
                    }
                  } else {
                    r60.z = (uint)r23.y;
                    r23.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r60.xyz, r23.x).x;
                  }
                  r23.x = r23.z * r23.z;
                  r23.x = r23.x * r23.z;
                } else {
                  r23.x = 1;
                }
                r59.y = r59.y * r23.x;
              }
              r23.x = r59.x * r59.y;
              r23.y = cmp(0 < r23.x);
              if (r23.y != 0) {
                r23.y = 0.166666672 * r49.x;
                r31.w = dot(r55.xyz, r11.xyz);
                r33.w = dot(r11.xyz, r57.xyz);
                r34.w = -r31.w * r31.w + r54.x;
                r29.w = r31.w * r33.w + -r29.w;
                r29.w = saturate(r29.w / r34.w);
                r31.w = r34.w / r54.x;
                r31.w = 10 * r31.w;
                r31.w = min(1, r31.w);
                r29.w = r29.w + -r30.w;
                r29.w = r31.w * r29.w + r30.w;
                r55.xyz = r29.www * r55.xyz + r56.xyz;
                r55.xyz = r28.www ? r55.xyz : r48.yzw;
                r55.xyz = -v6.xyz + r55.xyz;
                r28.w = dot(r55.xyz, r55.xyz);
                r28.w = rsqrt(r28.w);
                r56.xyz = r55.xyz * r28.www;
                r29.w = -abs(r32.w) * r1.z + 1;
                r29.w = r29.w * r29.w;
                r29.w = -r29.w * 0.620000005 + 0.620000005;
                r29.w = r29.w + -abs(r32.w);
                r29.w = r29.w * 0.816496611 + abs(r32.w);
                r30.w = cmp(0 < r32.w);
                r31.w = saturate(dot(r2.xyz, r56.xyz));
                r55.xyz = r55.xyz * r28.www + r6.xyz;
                r28.w = dot(r55.xyz, r55.xyz);
                r28.w = rsqrt(r28.w);
                r55.xyz = r55.xyz * r28.www;
                r28.w = dot(r2.xyz, r55.xyz);
                r32.w = dot(r55.xyz, r6.xyz);
                r33.w = dot(r55.xyz, r4.xyz);
                r34.w = dot(r55.xyz, r5.xyz);
                r33.w = r33.w * r33.w;
                r33.w = r33.w / r1.x;
                r34.w = r34.w * r34.w;
                r34.w = r34.w / r1.y;
                r33.w = r34.w + r33.w;
                r28.w = abs(r28.w) * abs(r28.w) + r33.w;
                r33.w = r31.w * r8.z + r8.w;
                r28.w = r28.w * r28.w;
                r28.w = r28.w * r1.w;
                r28.w = r28.w * r33.w;
                r28.w = rcp(r28.w);
                r23.y = r31.w * r23.y;
                r23.y = r28.w * r23.y;
                r28.w = saturate(1 + -r32.w);
                r31.w = r28.w * r28.w;
                r31.w = r31.w * r31.w;
                r28.w = r31.w * r28.w;
                r28.w = r28.w * r23.y;
                r55.xyz = r30.www ? r29.www : 0;
                r29.w = r30.w ? 0 : r29.w;
                r56.xyz = r30.www ? r28.www : 0;
                r23.y = r30.w ? r23.y : 0;
                r49.x = r48.x;
                r28.w = dot(r49.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r28.w = r28.w * r23.x;
                r30.w = cmp(r18.w < r28.w);
                if (r30.w != 0) {
                  r30.w = r20.z * r20.w;
                  r57.xyz = r30.www * r42.xyz;
                  r21.xyz = r57.xyz * r44.xyz + r21.xyz;
                  r39.xyz = r57.xyz * r47.xyz + r39.xyz;
                  r41.xyz = r57.xyz * r45.xyz + r41.xyz;
                  r40.xyz = r57.xyz * r46.xyz + r40.xyz;
                  r45.xyz = r23.yyy;
                  r18.w = r28.w;
                  r47.xyz = r29.www;
                  r42.xyz = r49.xyz;
                  r43.xyz = r58.xyz;
                  r44.xyz = r55.xyz;
                  r46.xyz = r56.xyz;
                  r20.zw = r59.xy;
                } else {
                  r55.xyw = r49.xyz * r23.xxx;
                  r21.xyz = r55.xyw * r55.zzz + r21.xyz;
                  r39.xyz = r55.xyw * r29.www + r39.xyz;
                  r41.xyz = r55.xyw * r23.yyy + r41.xyz;
                  r40.xyz = r55.xyw * r56.xyz + r40.xyz;
                }
              }
            }
          }
          break;
          case 2 :          r55.xy = r51.zw;
          r55.z = r52.w;
          r55.xyz = -v6.xyz + r55.xyz;
          r23.x = dot(r55.xyz, r55.xyz);
          r23.x = rsqrt(r23.x);
          r56.xyz = r55.xyz * r23.xxx;
          r23.y = dot(r2.xyz, r56.xyz);
          r28.w = cmp(0 < abs(r23.y));
          if (r28.w != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r57.xyzw, r27.w, l(112), t12.yzwx
          r57.x = samp0[]..swiz;
          r57.y = samp0[]..swiz;
          r57.z = samp0[]..swiz;
          r57.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r58.xyzw, r27.w, l(128), t12.zxyw
          r58.x = samp0[]..swiz;
          r58.y = samp0[]..swiz;
          r58.z = samp0[]..swiz;
          r58.w = samp0[]..swiz;
            r60.xyz = r57.xyz;
            r60.w = r58.y;
            r28.w = dot(r60.xyzw, r22.xyzw);
            r29.w = cmp(r28.w < 1);
            if (r29.w != 0) {
              r59.xzw = float3(1,1,1);
              r61.x = 0;
            } else {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r62.xyzw, r27.w, l(172), t12.yzwx
            r62.x = samp0[]..swiz;
            r62.y = samp0[]..swiz;
            r62.z = samp0[]..swiz;
            r62.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r63.xyzw, r27.w, l(188), t12.wxyz
            r63.x = samp0[]..swiz;
            r63.y = samp0[]..swiz;
            r63.z = samp0[]..swiz;
            r63.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r64.xyzw, r27.w, l(204), t12.xyzw
            r64.x = samp0[]..swiz;
            r64.y = samp0[]..swiz;
            r64.z = samp0[]..swiz;
            r64.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r29.w, r27.w, l(236), t12.xxxx
            r29.w = samp0[]..swiz;
              r65.xyz = -v6.xyz + r48.yzw;
              r30.w = r51.x * r51.x;
              r31.w = dot(r65.xyz, r65.xyz);
              r30.w = r30.w / r31.w;
              r30.w = min(1, r30.w);
              r38.zw = saturate(r28.ww * r50.xz + r50.yw);
              r50.xy = r38.zw * r38.zw;
              r38.zw = r38.zw * float2(-2,-2) + float2(3,3);
              r38.zw = r50.xy * r38.zw;
              r30.w = r38.z * r30.w;
              r30.w = r30.w * r38.w;
              r52.w = r53.x;
              r50.x = dot(r52.xyzw, r22.xyzw);
              r65.xyz = r53.yzw;
              r65.w = r54.w;
              r50.y = dot(r65.xyzw, r22.xyzw);
              r24.xy = r50.xy / r28.ww;
              r28.w = cmp(r62.w < 0.00048828125);
              if (r28.w != 0) {
                r63.y = r64.x;
                r38.zw = saturate(abs(r24.xy) * r63.zw + r63.xy);
                r50.xy = r38.zw * r38.zw;
                r38.zw = r38.zw * float2(-2,-2) + float2(3,3);
                r38.zw = r50.xy * r38.zw;
                r28.w = r38.z * r38.w;
              } else {
                r62.w = r63.y;
                r50.xyzw = saturate(r62.xyzw * abs(r24.yyxx));
                r50.xyzw = log2(r50.xyzw);
                r50.xyzw = r63.xxxx * r50.xyzw;
                r50.xyzw = exp2(r50.xyzw);
                r38.zw = r50.xy + r50.zw;
                r38.zw = log2(r38.zw);
                r38.zw = r64.xx * r38.zw;
                r38.zw = exp2(r38.zw);
                r31.w = r63.z * r38.z;
                r32.w = r63.w * r38.w + -1;
                r31.w = r63.w * r38.w + -r31.w;
                r31.w = saturate(r32.w / r31.w);
                r32.w = r31.w * r31.w;
                r31.w = r31.w * -2 + 3;
                r28.w = r32.w * r31.w;
              }
              r61.x = r30.w * r28.w;
              r28.w = r29.w ? 0.000000 : 0;
              if (r28.w != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r50.xyz, r27.w, l(220), t12.xyzx
              r50.x = samp0[]..swiz;
              r50.y = samp0[]..swiz;
              r50.z = samp0[]..swiz;
                r29.w = dot(r64.yzw, r24.xyz);
                r24.x = dot(r50.xyz, r24.xyz);
                r50.x = frac(r29.w);
                r50.y = frac(r24.x);
                r24.x = (int)r28.w + -1;
                r50.z = (uint)r24.x;
                r59.xzw = gCookieArray.SampleLevel(samplerLinear_s, r50.xyz, 0).xyz;
              } else {
                r59.xzw = float3(1,1,1);
              }
            }
            r48.yz = r49.yz;
            r48.xyz = r48.xyz * r59.xzw;
            r24.x = cmp(0 < r61.x);
            if (r24.x != 0) {
              if (3 == 0) r24.x = 0; else if (3+27 < 32) {               r24.x = (uint)r49.w << (32-(3 + 27)); r24.x = (uint)r24.x >> (32-3);              } else r24.x = (uint)r49.w >> 27;
              if (4 == 0) r24.y = 0; else if (4+20 < 32) {               r24.y = (uint)r49.w << (32-(4 + 20)); r24.y = (uint)r24.y >> (32-4);              } else r24.y = (uint)r49.w >> 20;
              r24.x = cmp((int)r24.x != 1);
              if (r24.x != 0) {
                r24.x = abs(r23.y) * -0.200000003 + 0.400000006;
                r28.w = cmp(r23.y < 0);
                r24.x = r28.w ? -r24.x : r24.x;
                r25.xyz = r2.xyz * r24.xxx + v6.xyz;
                r57.xyz = r54.xyz;
                r24.x = dot(r57.xyzw, r25.xyzw);
                r28.w = dot(r60.xyzw, r25.xyzw);
                r29.w = cmp(r28.w >= r24.x);
                if (r29.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r58.y, r27.w, l(144), t12.xxxx
                r58.y = samp0[]..swiz;
                  r52.w = r53.x;
                  r50.x = dot(r52.xyzw, r25.xyzw);
                  r54.xyz = r53.yzw;
                  r50.y = dot(r54.xyzw, r25.xyzw);
                  r25.xy = r50.xy / r28.ww;
                  r25.xy = saturate(r25.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                  r25.xy = r25.xy * r58.zw + r58.xy;
                  r24.x = r24.x / r28.w;
                  r24.x = max(6.10351563e-05, r24.x);
                  r27.w = (int)r49.w & 0x0000ffff;
                  if (r16.w != 0) {
                    r50.z = (uint)r27.w;
                    r28.w = 0;
                    r29.w = 0;
                    while (true) {
                      r30.w = cmp((int)r29.w >= 8);
                      if (r30.w != 0) break;
                      r52.x = dot(icb[r29.w+0].xy, r9.xy);
                      r52.y = dot(icb[r29.w+0].yx, r9.xz);
                      r50.xy = r52.xy * r51.yy + r25.xy;
                      r30.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r50.xyz, r24.x).x;
                      r28.w = r30.w * 0.125 + r28.w;
                      r29.w = (int)r29.w + 1;
                    }
                  } else {
                    r25.z = (uint)r27.w;
                    r28.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r24.x).x;
                  }
                  r24.x = r28.w * r28.w;
                  r61.y = r24.x * r28.w;
                } else {
                  r61.y = 1;
                }
              } else {
                r61.y = 1;
              }
              if (r24.y != 0) {
                r24.x = (int)r24.y + numLights;
                r24.x = (int)r24.x + -1;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.y, r24.x, l(52), t12.xxxx
              r24.y = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r50.xyzw, r24.x, l(68), t12.xyzw
              r50.x = samp0[]..swiz;
              r50.y = samp0[]..swiz;
              r50.z = samp0[]..swiz;
              r50.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r51.xyzw, r24.x, l(84), t12.xyzw
              r51.x = samp0[]..swiz;
              r51.y = samp0[]..swiz;
              r51.z = samp0[]..swiz;
              r51.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r52.xyzw, r24.x, l(100), t12.xyzw
              r52.x = samp0[]..swiz;
              r52.y = samp0[]..swiz;
              r52.z = samp0[]..swiz;
              r52.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r53.xyzw, r24.x, l(116), t12.xyzw
              r53.x = samp0[]..swiz;
              r53.y = samp0[]..swiz;
              r53.z = samp0[]..swiz;
              r53.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r54.xyzw, r24.x, l(132), t12.xyzw
              r54.x = samp0[]..swiz;
              r54.y = samp0[]..swiz;
              r54.z = samp0[]..swiz;
              r54.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r57.xyzw, r24.x, l(148), t12.xyzw
              r57.x = samp0[]..swiz;
              r57.y = samp0[]..swiz;
              r57.z = samp0[]..swiz;
              r57.w = samp0[]..swiz;
                r25.x = abs(r23.y) * -0.200000003 + 0.400000006;
                r25.y = cmp(r23.y < 0);
                r25.x = r25.y ? -r25.x : r25.x;
                r26.xyz = r2.xyz * r25.xxx + v6.xyz;
                r25.x = dot(r50.xyzw, r26.xyzw);
                r25.y = dot(r51.xyzw, r26.xyzw);
                r25.z = dot(r52.xyzw, r26.xyzw);
                r26.x = dot(r53.xyzw, r26.xyzw);
                r26.y = cmp(r26.x < r25.z);
                r25.xy = r25.xy / r26.xx;
                r25.xy = r25.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r25.xy = r25.xy + r57.zw;
                r25.xy = r25.xy * r57.xy;
                r38.zw = r24.yy / r54.xz;
                r49.yz = float2(1,1) + -r38.zw;
                r49.yz = cmp(r25.xy >= r49.yz);
                r38.zw = cmp(r38.zw >= r25.xy);
                r38.zw = (int2)r38.zw | (int2)r49.yz;
                r26.z = (int)r38.w | (int)r38.z;
                r26.y = (int)r26.y | (int)r26.z;
                if (r26.y == 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r26.y, r24.x, l(28), t12.xxxx
                r26.y = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.zw, r24.x, l(164), t12.xxxy
                r38.z = samp0[]..swiz;
                r38.w = samp0[]..swiz;
                  r25.xy = saturate(r25.xy);
                  r50.xy = r25.xy * r54.xz + r54.yw;
                  r24.x = r38.w * r26.x;
                  r25.x = r38.z * r26.x + r25.z;
                  r24.x = r25.x / r24.x;
                  r24.x = max(6.10351563e-05, r24.x);
                  r25.x = r26.y ? 0.000000 : 0;
                  if (r16.w != 0) {
                    r26.z = (uint)r25.x;
                    r25.yz = float2(0,0);
                    while (true) {
                      r27.w = cmp((int)r25.z >= 8);
                      if (r27.w != 0) break;
                      r51.x = dot(icb[r25.z+0].xy, r27.xy);
                      r51.y = dot(icb[r25.z+0].yx, r27.xz);
                      r26.xy = r51.xy * r24.yy + r50.xy;
                      r26.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r24.x).x;
                      r25.y = r26.x * 0.125 + r25.y;
                      r25.z = (int)r25.z + 1;
                    }
                  } else {
                    r50.z = (uint)r25.x;
                    r25.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r50.xyz, r24.x).x;
                  }
                  r24.x = r25.y * r25.y;
                  r24.x = r24.x * r25.y;
                } else {
                  r24.x = 1;
                }
                r61.y = r61.y * r24.x;
              }
              r24.x = r61.x * r61.y;
              r24.y = cmp(0 < r24.x);
              if (r24.y != 0) {
                r24.y = 0.166666672 * r49.x;
                r25.x = -abs(r23.y) * r1.z + 1;
                r25.x = r25.x * r25.x;
                r25.x = -r25.x * 0.620000005 + 0.620000005;
                r25.x = r25.x + -abs(r23.y);
                r25.x = r25.x * 0.816496611 + abs(r23.y);
                r25.z = cmp(0 < r23.y);
                r23.y = saturate(r23.y);
                r26.xyz = r55.xyz * r23.xxx + r6.xyz;
                r23.x = dot(r26.xyz, r26.xyz);
                r23.x = rsqrt(r23.x);
                r26.xyz = r26.xyz * r23.xxx;
                r23.x = dot(r2.xyz, r26.xyz);
                r27.w = dot(r26.xyz, r6.xyz);
                r29.w = dot(r26.xyz, r4.xyz);
                r26.x = dot(r26.xyz, r5.xyz);
                r26.y = r29.w * r29.w;
                r26.x = r26.x * r26.x;
                r26.xy = r26.xy / r1.yx;
                r26.x = r26.y + r26.x;
                r23.x = abs(r23.x) * abs(r23.x) + r26.x;
                r26.x = r23.y * r8.z + r8.w;
                r23.x = r23.x * r23.x;
                r23.x = r23.x * r1.w;
                r23.x = r23.x * r26.x;
                r23.x = rcp(r23.x);
                r23.y = r23.y * r24.y;
                r23.x = r23.x * r23.y;
                r23.y = saturate(1 + -r27.w);
                r24.y = r23.y * r23.y;
                r24.y = r24.y * r24.y;
                r23.y = r24.y * r23.y;
                r23.y = r23.x * r23.y;
                r26.xyz = r25.zzz ? r25.xxx : 0;
                r24.y = r25.z ? 0 : r25.x;
                r49.xyz = r25.zzz ? r23.yyy : 0;
                r23.x = r25.z ? r23.x : 0;
                r23.y = dot(r48.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r23.y = r24.x * r23.y;
                r25.x = cmp(r18.w < r23.y);
                if (r25.x != 0) {
                  r25.x = r20.z * r20.w;
                  r50.xyz = r25.xxx * r42.xyz;
                  r21.xyz = r50.xyz * r44.xyz + r21.xyz;
                  r39.xyz = r50.xyz * r47.xyz + r39.xyz;
                  r41.xyz = r50.xyz * r45.xyz + r41.xyz;
                  r40.xyz = r50.xyz * r46.xyz + r40.xyz;
                  r45.xyz = r23.xxx;
                  r18.w = r23.y;
                  r47.xyz = r24.yyy;
                  r42.xyz = r48.xyz;
                  r43.xyz = r56.xyz;
                  r44.xyz = r26.xyz;
                  r46.xyz = r49.xyz;
                  r20.zw = r61.xy;
                } else {
                  r48.xyz = r24.xxx * r48.xyz;
                  r21.xyz = r48.xyz * r26.zzz + r21.xyz;
                  r39.xyz = r48.xyz * r24.yyy + r39.xyz;
                  r41.xyz = r48.xyz * r23.xxx + r41.xyz;
                  r40.xyz = r48.xyz * r49.xyz + r40.xyz;
                }
              }
            }
          }
          break;
          default :
          break;
        }
      }
    }
    r28.xyz = r21.xyz;
    r29.xyz = r39.xyz;
    r30.xyz = r40.xyz;
    r31.xyz = r41.xyz;
    r32.xyz = r42.xyz;
    r33.xyz = r43.xyz;
    r34.xyz = r44.xyz;
    r36.xyz = r45.xyz;
    r37.xyz = r46.xyz;
    r17.zw = r20.zw;
    r38.y = r18.w;
    r35.xyz = r47.xyz;
    r3.w = (int)r3.w + 32;
  }
  r1.z = 0;
  r1.xy = float2(1,-1) * r33.yx;
  r4.xyz = r33.zxy * r1.yzx;
  r4.xyz = r33.yzx * r1.zxy + -r4.xyz;
  r5.xyz = viewProjectionMatrix._m10_m11_m13 * r12.yyy;
  r5.xyz = r12.xxx * viewProjectionMatrix._m00_m01_m03 + r5.xyz;
  r5.xyz = r12.zzz * viewProjectionMatrix._m20_m21_m23 + r5.xyz;
  r5.xyz = r5.xyz + r7.yzw;
  r8.z = rcp(r5.z);
  r5.xy = r8.zz * r5.xy;
  r8.xy = r5.xy * float2(0.5,-0.5) + float2(0.5,0.5);
  r9.xyz = r33.xyz * float3(2.4000001,2.4000001,2.4000001) + r12.xyz;
  r1.w = dot(v0.xy, float2(0.0671105608,0.00583714992));
  r1.w = frac(r1.w);
  r1.w = 52.9829178 * r1.w;
  r1.w = frac(r1.w);
  r3.w = 3.14159989 * r1.w;
  r3.w = gameTick.w * 0.5 + r3.w;
  sincos(r3.w, r5.x, r7.x);
  r10.xyz = r5.xxx * r4.xyz;
  r10.xyz = r7.xxx * r1.xyz + r10.xyz;
  r10.xyz = r10.xyz * float3(0.119999997,0.119999997,0.119999997) + r9.xyz;
  r12.xyz = viewProjectionMatrix._m10_m11_m13 * r10.yyy;
  r10.xyw = r10.xxx * viewProjectionMatrix._m00_m01_m03 + r12.xyz;
  r10.xyz = r10.zzz * viewProjectionMatrix._m20_m21_m23 + r10.xyw;
  r10.xyz = r10.xyz + r7.yzw;
  r5.xy = float2(0.5,-0.5) * r10.xy;
  r10.z = rcp(r10.z);
  r10.xy = r5.xy * r10.zz + float2(0.5,0.5);
  r12.xyz = -r8.xyz;
  r10.xyz = r12.xyz + r10.xyz;
  r3.w = 3.14159989 + r3.w;
  sincos(r3.w, r5.x, r7.x);
  r4.xyz = r5.xxx * r4.xyz;
  r1.xyz = r7.xxx * r1.xyz + r4.xyz;
  r1.xyz = r1.xyz * float3(0.119999997,0.119999997,0.119999997) + r9.xyz;
  r4.xyz = viewProjectionMatrix._m10_m11_m13 * r1.yyy;
  r4.xyz = r1.xxx * viewProjectionMatrix._m00_m01_m03 + r4.xyz;
  r1.xyz = r1.zzz * viewProjectionMatrix._m20_m21_m23 + r4.xyz;
  r1.xyz = r1.xyz + r7.yzw;
  r1.xy = float2(0.5,-0.5) * r1.xy;
  r4.z = rcp(r1.z);
  r4.xy = r1.xy * r4.zz + r12.xy;
  r12.xyw = float3(0,0,0.5);
  r1.xyz = r4.xyz + r12.wwz;
  r3.w = dot(renderTargetSize.zw, renderTargetSize.zw);
  r3.w = sqrt(r3.w);
  r4.x = dot(r10.xy, r10.xy);
  r4.x = sqrt(r4.x);
  r4.x = rcp(r4.x);
  r3.w = r4.x * r3.w;
  r4.xy = r1.ww * float2(0.5,0.5) + float2(0.333333343,1);
  r4.xy = float2(0.117647059,0.117647059) * r4.xy;
  r4.xy = r4.xy * r4.xy;
  x1[0].x = r4.x;
  r7.xyz = r10.xyz * r4.xxx + r8.xyz;
  r4.zw = cmp(r3.ww < r4.xy);
  r5.xy = renderTargetSize.xy * r7.xy;
  r9.xy = (int2)r5.xy;
  r9.zw = float2(0,0);
  r5.x = floatZSampler.Load(r9.xyz).x;
  r5.y = cmp(r5.x >= 0.984375);
  r6.w = 1.01587307 * r5.x;
  r5.x = r5.x * 64 + -63;
  r5.x = r5.y ? r5.x : r6.w;
  r5.x = max(9.99999994e-09, r5.x);
  r5.x = rcp(r5.x);
  x2[0].x = r5.x;
  r5.y = 0.0419999994 + r5.x;
  r5.y = r7.z * r5.y;
  r5.y = cmp(1 < r5.y);
  r5.y = r5.y ? 1.000000 : 0;
  r4.z = r4.z ? r5.y : 1;
  x0[0].x = r4.z;
  x1[1].x = r4.y;
  r7.xyz = r1.xyz * r4.yyy + r8.xyz;
  r7.xy = renderTargetSize.xy * r7.xy;
  r9.xy = (int2)r7.xy;
  r9.zw = float2(0,0);
  r5.y = floatZSampler.Load(r9.xyz).x;
  r6.w = cmp(r5.y >= 0.984375);
  r7.x = 1.01587307 * r5.y;
  r5.y = r5.y * 64 + -63;
  r5.y = r6.w ? r5.y : r7.x;
  r5.y = max(9.99999994e-09, r5.y);
  r5.y = rcp(r5.y);
  x2[1].x = r5.y;
  r6.w = 0.0419999994 + r5.y;
  r6.w = r7.z * r6.w;
  r6.w = cmp(1 < r6.w);
  r6.w = r6.w ? 1.000000 : 0;
  r4.w = r4.w ? r6.w : 1;
  x0[1].x = r4.w;
  r6.w = r4.z + r4.w;
  r6.w = cmp(r6.w != 0.000000);
  if (r6.w != 0) {
    r7.xy = r1.ww * float2(0.5,0.5) + float2(1.33333337,2);
    r7.xy = float2(0.117647059,0.117647059) * r7.xy;
    r7.xy = r7.xy * r7.xy + -r4.xy;
    r4.x = r4.z * r7.x + r4.x;
    x1[0].x = r4.x;
    r7.xzw = r10.xyz * r4.xxx + r8.xyz;
    r4.x = cmp(r3.w < r4.x);
    r7.xz = renderTargetSize.xy * r7.xz;
    r9.xy = (int2)r7.xz;
    r9.zw = float2(0,0);
    r6.w = floatZSampler.Load(r9.xyz).x;
    r7.x = cmp(r6.w >= 0.984375);
    r7.z = 1.01587307 * r6.w;
    r6.w = r6.w * 64 + -63;
    r6.w = r7.x ? r6.w : r7.z;
    r6.w = max(9.99999994e-09, r6.w);
    r6.w = rcp(r6.w);
    r5.x = r4.x ? r6.w : r5.x;
    x2[0].x = r5.x;
    r5.x = 0.0419999994 + r6.w;
    r5.x = r7.w * r5.x;
    r5.x = cmp(1 < r5.x);
    r5.x = r5.x ? 1.000000 : 0;
    r5.x = r5.x * r4.z;
    r4.x = r4.x ? r5.x : r4.z;
    x0[0].x = r4.x;
    r4.y = r4.w * r7.y + r4.y;
    x1[1].x = r4.y;
    r7.xyz = r1.xyz * r4.yyy + r8.xyz;
    r4.y = cmp(r3.w < r4.y);
    r7.xy = renderTargetSize.xy * r7.xy;
    r9.xy = (int2)r7.xy;
    r9.zw = float2(0,0);
    r4.z = floatZSampler.Load(r9.xyz).x;
    r5.x = cmp(r4.z >= 0.984375);
    r6.w = 1.01587307 * r4.z;
    r4.z = r4.z * 64 + -63;
    r4.z = r5.x ? r4.z : r6.w;
    r4.z = max(9.99999994e-09, r4.z);
    r4.z = rcp(r4.z);
    r5.x = r4.y ? r4.z : r5.y;
    x2[1].x = r5.x;
    r4.z = 0.0419999994 + r4.z;
    r4.z = r7.z * r4.z;
    r4.z = cmp(1 < r4.z);
    r4.z = r4.z ? 1.000000 : 0;
    r4.z = r4.w * r4.z;
    r4.y = r4.y ? r4.z : r4.w;
    x0[1].x = r4.y;
    r4.x = r4.x + r4.y;
    r4.x = cmp(r4.x == 0.000000);
  } else {
    r4.x = -1;
  }
  if (r4.x == 0) {
    r4.xy = r1.ww * float2(0.5,0.5) + float2(2.33333325,3);
    r4.xy = float2(0.117647059,0.117647059) * r4.xy;
    r4.z = x1[0].x;
    r4.w = x0[0].x;
    r4.x = r4.x * r4.x + -r4.z;
    r4.x = r4.w * r4.x + r4.z;
    x1[0].x = r4.x;
    r7.xyz = r10.xyz * r4.xxx + r8.xyz;
    r4.x = cmp(r3.w < r4.x);
    r5.xy = renderTargetSize.xy * r7.xy;
    r9.xy = (int2)r5.xy;
    r9.zw = float2(0,0);
    r4.z = floatZSampler.Load(r9.xyz).x;
    r5.x = cmp(r4.z >= 0.984375);
    r5.y = 1.01587307 * r4.z;
    r4.z = r4.z * 64 + -63;
    r4.z = r5.x ? r4.z : r5.y;
    r4.z = max(9.99999994e-09, r4.z);
    r4.z = rcp(r4.z);
    r5.x = x2[0].x;
    r5.x = r4.x ? r4.z : r5.x;
    x2[0].x = r5.x;
    r4.z = 0.0419999994 + r4.z;
    r4.z = r7.z * r4.z;
    r4.z = cmp(1 < r4.z);
    r4.z = r4.z ? 1.000000 : 0;
    r4.z = r4.w * r4.z;
    r4.x = r4.x ? r4.z : r4.w;
    x0[0].x = r4.x;
    r4.z = x1[1].x;
    r4.w = x0[1].x;
    r4.y = r4.y * r4.y + -r4.z;
    r4.y = r4.w * r4.y + r4.z;
    x1[1].x = r4.y;
    r7.xyz = r1.xyz * r4.yyy + r8.xyz;
    r4.y = cmp(r3.w < r4.y);
    r5.xy = renderTargetSize.xy * r7.xy;
    r9.xy = (int2)r5.xy;
    r9.zw = float2(0,0);
    r4.z = floatZSampler.Load(r9.xyz).x;
    r5.x = cmp(r4.z >= 0.984375);
    r5.y = 1.01587307 * r4.z;
    r4.z = r4.z * 64 + -63;
    r4.z = r5.x ? r4.z : r5.y;
    r4.z = max(9.99999994e-09, r4.z);
    r4.z = rcp(r4.z);
    r5.x = x2[1].x;
    r5.x = r4.y ? r4.z : r5.x;
    x2[1].x = r5.x;
    r4.z = 0.0419999994 + r4.z;
    r4.z = r7.z * r4.z;
    r4.z = cmp(1 < r4.z);
    r4.z = r4.z ? 1.000000 : 0;
    r4.z = r4.w * r4.z;
    r4.y = r4.y ? r4.z : r4.w;
    x0[1].x = r4.y;
    r4.x = r4.x + r4.y;
    r4.x = cmp(r4.x == 0.000000);
  } else {
    r4.x = -1;
  }
  if (r4.x == 0) {
    r4.xy = r1.ww * float2(0.5,0.5) + float2(3.33333325,4);
    r4.xy = float2(0.117647059,0.117647059) * r4.xy;
    r4.z = x1[0].x;
    r4.w = x0[0].x;
    r4.x = r4.x * r4.x + -r4.z;
    r4.x = r4.w * r4.x + r4.z;
    x1[0].x = r4.x;
    r7.xyz = r10.xyz * r4.xxx + r8.xyz;
    r4.x = cmp(r3.w < r4.x);
    r5.xy = renderTargetSize.xy * r7.xy;
    r9.xy = (int2)r5.xy;
    r9.zw = float2(0,0);
    r4.z = floatZSampler.Load(r9.xyz).x;
    r5.x = cmp(r4.z >= 0.984375);
    r5.y = 1.01587307 * r4.z;
    r4.z = r4.z * 64 + -63;
    r4.z = r5.x ? r4.z : r5.y;
    r4.z = max(9.99999994e-09, r4.z);
    r4.z = rcp(r4.z);
    r5.x = x2[0].x;
    r5.x = r4.x ? r4.z : r5.x;
    x2[0].x = r5.x;
    r4.z = 0.0419999994 + r4.z;
    r4.z = r7.z * r4.z;
    r4.z = cmp(1 < r4.z);
    r4.z = r4.z ? 1.000000 : 0;
    r4.z = r4.w * r4.z;
    r4.x = r4.x ? r4.z : r4.w;
    x0[0].x = r4.x;
    r4.z = x1[1].x;
    r4.w = x0[1].x;
    r4.y = r4.y * r4.y + -r4.z;
    r4.y = r4.w * r4.y + r4.z;
    x1[1].x = r4.y;
    r7.xyz = r1.xyz * r4.yyy + r8.xyz;
    r4.y = cmp(r3.w < r4.y);
    r5.xy = renderTargetSize.xy * r7.xy;
    r9.xy = (int2)r5.xy;
    r9.zw = float2(0,0);
    r4.z = floatZSampler.Load(r9.xyz).x;
    r5.x = cmp(r4.z >= 0.984375);
    r5.y = 1.01587307 * r4.z;
    r4.z = r4.z * 64 + -63;
    r4.z = r5.x ? r4.z : r5.y;
    r4.z = max(9.99999994e-09, r4.z);
    r4.z = rcp(r4.z);
    r5.x = x2[1].x;
    r5.x = r4.y ? r4.z : r5.x;
    x2[1].x = r5.x;
    r4.z = 0.0419999994 + r4.z;
    r4.z = r7.z * r4.z;
    r4.z = cmp(1 < r4.z);
    r4.z = r4.z ? 1.000000 : 0;
    r4.z = r4.w * r4.z;
    r4.y = r4.y ? r4.z : r4.w;
    x0[1].x = r4.y;
    r4.x = r4.x + r4.y;
    r4.x = cmp(r4.x == 0.000000);
  } else {
    r4.x = -1;
  }
  if (r4.x == 0) {
    r4.xy = r1.ww * float2(0.5,0.5) + float2(4.33333349,5);
    r4.xy = float2(0.117647059,0.117647059) * r4.xy;
    r4.z = x1[0].x;
    r4.w = x0[0].x;
    r4.x = r4.x * r4.x + -r4.z;
    r4.x = r4.w * r4.x + r4.z;
    x1[0].x = r4.x;
    r7.xyz = r10.xyz * r4.xxx + r8.xyz;
    r4.x = cmp(r3.w < r4.x);
    r5.xy = renderTargetSize.xy * r7.xy;
    r9.xy = (int2)r5.xy;
    r9.zw = float2(0,0);
    r4.z = floatZSampler.Load(r9.xyz).x;
    r5.x = cmp(r4.z >= 0.984375);
    r5.y = 1.01587307 * r4.z;
    r4.z = r4.z * 64 + -63;
    r4.z = r5.x ? r4.z : r5.y;
    r4.z = max(9.99999994e-09, r4.z);
    r4.z = rcp(r4.z);
    r5.x = x2[0].x;
    r5.x = r4.x ? r4.z : r5.x;
    x2[0].x = r5.x;
    r4.z = 0.0419999994 + r4.z;
    r4.z = r7.z * r4.z;
    r4.z = cmp(1 < r4.z);
    r4.z = r4.z ? 1.000000 : 0;
    r4.z = r4.w * r4.z;
    r4.x = r4.x ? r4.z : r4.w;
    x0[0].x = r4.x;
    r4.z = x1[1].x;
    r4.w = x0[1].x;
    r4.y = r4.y * r4.y + -r4.z;
    r4.y = r4.w * r4.y + r4.z;
    x1[1].x = r4.y;
    r7.xyz = r1.xyz * r4.yyy + r8.xyz;
    r4.y = cmp(r3.w < r4.y);
    r5.xy = renderTargetSize.xy * r7.xy;
    r9.xy = (int2)r5.xy;
    r9.zw = float2(0,0);
    r4.z = floatZSampler.Load(r9.xyz).x;
    r5.x = cmp(r4.z >= 0.984375);
    r5.y = 1.01587307 * r4.z;
    r4.z = r4.z * 64 + -63;
    r4.z = r5.x ? r4.z : r5.y;
    r4.z = max(9.99999994e-09, r4.z);
    r4.z = rcp(r4.z);
    r5.x = x2[1].x;
    r5.x = r4.y ? r4.z : r5.x;
    x2[1].x = r5.x;
    r4.z = 0.0419999994 + r4.z;
    r4.z = r7.z * r4.z;
    r4.z = cmp(1 < r4.z);
    r4.z = r4.z ? 1.000000 : 0;
    r4.z = r4.w * r4.z;
    r4.y = r4.y ? r4.z : r4.w;
    x0[1].x = r4.y;
    r4.x = r4.x + r4.y;
    r4.x = cmp(r4.x == 0.000000);
  } else {
    r4.x = -1;
  }
  if (r4.x == 0) {
    r4.xy = r1.ww * float2(0.5,0.5) + float2(5.33333349,6);
    r4.xy = float2(0.117647059,0.117647059) * r4.xy;
    r4.z = x1[0].x;
    r4.w = x0[0].x;
    r4.x = r4.x * r4.x + -r4.z;
    r4.x = r4.w * r4.x + r4.z;
    x1[0].x = r4.x;
    r7.xyz = r10.xyz * r4.xxx + r8.xyz;
    r4.x = cmp(r3.w < r4.x);
    r5.xy = renderTargetSize.xy * r7.xy;
    r9.xy = (int2)r5.xy;
    r9.zw = float2(0,0);
    r4.z = floatZSampler.Load(r9.xyz).x;
    r5.x = cmp(r4.z >= 0.984375);
    r5.y = 1.01587307 * r4.z;
    r4.z = r4.z * 64 + -63;
    r4.z = r5.x ? r4.z : r5.y;
    r4.z = max(9.99999994e-09, r4.z);
    r4.z = rcp(r4.z);
    r5.x = x2[0].x;
    r5.x = r4.x ? r4.z : r5.x;
    x2[0].x = r5.x;
    r4.z = 0.0419999994 + r4.z;
    r4.z = r7.z * r4.z;
    r4.z = cmp(1 < r4.z);
    r4.z = r4.z ? 1.000000 : 0;
    r4.z = r4.w * r4.z;
    r4.x = r4.x ? r4.z : r4.w;
    x0[0].x = r4.x;
    r4.z = x1[1].x;
    r4.w = x0[1].x;
    r4.y = r4.y * r4.y + -r4.z;
    r4.y = r4.w * r4.y + r4.z;
    x1[1].x = r4.y;
    r7.xyz = r1.xyz * r4.yyy + r8.xyz;
    r4.y = cmp(r3.w < r4.y);
    r5.xy = renderTargetSize.xy * r7.xy;
    r9.xy = (int2)r5.xy;
    r9.zw = float2(0,0);
    r4.z = floatZSampler.Load(r9.xyz).x;
    r5.x = cmp(r4.z >= 0.984375);
    r5.y = 1.01587307 * r4.z;
    r4.z = r4.z * 64 + -63;
    r4.z = r5.x ? r4.z : r5.y;
    r4.z = max(9.99999994e-09, r4.z);
    r4.z = rcp(r4.z);
    r5.x = x2[1].x;
    r5.x = r4.y ? r4.z : r5.x;
    x2[1].x = r5.x;
    r4.z = 0.0419999994 + r4.z;
    r4.z = r7.z * r4.z;
    r4.z = cmp(1 < r4.z);
    r4.z = r4.z ? 1.000000 : 0;
    r4.z = r4.w * r4.z;
    r4.y = r4.y ? r4.z : r4.w;
    x0[1].x = r4.y;
    r4.x = r4.x + r4.y;
    r4.x = cmp(r4.x == 0.000000);
  } else {
    r4.x = -1;
  }
  if (r4.x == 0) {
    r4.xy = r1.ww * float2(0.5,0.5) + float2(6.33333349,7);
    r4.xy = float2(0.117647059,0.117647059) * r4.xy;
    r4.z = x1[0].x;
    r4.w = x0[0].x;
    r4.x = r4.x * r4.x + -r4.z;
    r4.x = r4.w * r4.x + r4.z;
    x1[0].x = r4.x;
    r7.xyz = r10.xyz * r4.xxx + r8.xyz;
    r4.x = cmp(r3.w < r4.x);
    r5.xy = renderTargetSize.xy * r7.xy;
    r9.xy = (int2)r5.xy;
    r9.zw = float2(0,0);
    r4.z = floatZSampler.Load(r9.xyz).x;
    r5.x = cmp(r4.z >= 0.984375);
    r5.y = 1.01587307 * r4.z;
    r4.z = r4.z * 64 + -63;
    r4.z = r5.x ? r4.z : r5.y;
    r4.z = max(9.99999994e-09, r4.z);
    r4.z = rcp(r4.z);
    r5.x = x2[0].x;
    r5.x = r4.x ? r4.z : r5.x;
    x2[0].x = r5.x;
    r4.z = 0.0419999994 + r4.z;
    r4.z = r7.z * r4.z;
    r4.z = cmp(1 < r4.z);
    r4.z = r4.z ? 1.000000 : 0;
    r4.z = r4.w * r4.z;
    r4.x = r4.x ? r4.z : r4.w;
    x0[0].x = r4.x;
    r4.z = x1[1].x;
    r4.w = x0[1].x;
    r4.y = r4.y * r4.y + -r4.z;
    r4.y = r4.w * r4.y + r4.z;
    x1[1].x = r4.y;
    r7.xyz = r1.xyz * r4.yyy + r8.xyz;
    r4.y = cmp(r3.w < r4.y);
    r5.xy = renderTargetSize.xy * r7.xy;
    r9.xy = (int2)r5.xy;
    r9.zw = float2(0,0);
    r4.z = floatZSampler.Load(r9.xyz).x;
    r5.x = cmp(r4.z >= 0.984375);
    r5.y = 1.01587307 * r4.z;
    r4.z = r4.z * 64 + -63;
    r4.z = r5.x ? r4.z : r5.y;
    r4.z = max(9.99999994e-09, r4.z);
    r4.z = rcp(r4.z);
    r5.x = x2[1].x;
    r5.x = r4.y ? r4.z : r5.x;
    x2[1].x = r5.x;
    r4.z = 0.0419999994 + r4.z;
    r4.z = r7.z * r4.z;
    r4.z = cmp(1 < r4.z);
    r4.z = r4.z ? 1.000000 : 0;
    r4.z = r4.w * r4.z;
    r4.y = r4.y ? r4.z : r4.w;
    x0[1].x = r4.y;
    r4.x = r4.x + r4.y;
    r4.x = cmp(r4.x == 0.000000);
  } else {
    r4.x = -1;
  }
  if (r4.x == 0) {
    r4.xy = r1.ww * float2(0.5,0.5) + float2(7.33333349,8);
    r4.xy = float2(0.117647059,0.117647059) * r4.xy;
    r1.w = x1[0].x;
    r4.z = x0[0].x;
    r4.x = r4.x * r4.x + -r1.w;
    r1.w = r4.z * r4.x + r1.w;
    r7.xyz = r10.xyz * r1.www + r8.xyz;
    r1.w = cmp(r3.w < r1.w);
    r4.xw = renderTargetSize.xy * r7.xy;
    r9.xy = (int2)r4.xw;
    r9.zw = float2(0,0);
    r4.x = floatZSampler.Load(r9.xyz).x;
    r4.w = cmp(r4.x >= 0.984375);
    r5.x = 1.01587307 * r4.x;
    r4.x = r4.x * 64 + -63;
    r4.x = r4.w ? r4.x : r5.x;
    r4.x = max(9.99999994e-09, r4.x);
    r4.x = rcp(r4.x);
    r4.w = x2[0].x;
    r4.w = r1.w ? r4.x : r4.w;
    x2[0].x = r4.w;
    r4.x = 0.0419999994 + r4.x;
    r4.x = r7.z * r4.x;
    r4.x = cmp(1 < r4.x);
    r4.x = r4.x ? 1.000000 : 0;
    r4.x = r4.z * r4.x;
    r1.w = r1.w ? r4.x : r4.z;
    x0[0].x = r1.w;
    r1.w = x1[1].x;
    r4.x = x0[1].x;
    r4.y = r4.y * r4.y + -r1.w;
    r1.w = r4.x * r4.y + r1.w;
    r1.xyz = r1.xyz * r1.www + r8.xyz;
    r1.w = cmp(r3.w < r1.w);
    r1.xy = renderTargetSize.xy * r1.xy;
    r7.xy = (int2)r1.xy;
    r7.zw = float2(0,0);
    r1.x = floatZSampler.Load(r7.xyz).x;
    r1.y = cmp(r1.x >= 0.984375);
    r3.w = 1.01587307 * r1.x;
    r1.x = r1.x * 64 + -63;
    r1.x = r1.y ? r1.x : r3.w;
    r1.x = max(9.99999994e-09, r1.x);
    r1.x = rcp(r1.x);
    r1.y = x2[1].x;
    r1.y = r1.w ? r1.x : r1.y;
    x2[1].x = r1.y;
    r1.x = 0.0419999994 + r1.x;
    r1.x = r1.z * r1.x;
    r1.x = cmp(1 < r1.x);
    r1.x = r1.x ? 1.000000 : 0;
    r1.x = r4.x * r1.x;
    r1.x = r1.w ? r1.x : r4.x;
    x0[1].x = r1.x;
  }
  r1.x = x0[0].x;
  r1.y = numRefProbes + -numOverrideProbes;
  r1.z = (int)r1.y & -32;
  r1.w = (int)-r1.z + (int)r1.y;
  r3.w = numRefProbes & -32;
  r4.x = (int)-r3.w + numRefProbes;
  r7.xy = float2(0,0);
  r8.w = 0;
  r9.yz = float2(0,1);
  r10.xy = float2(0,0);
  r14.xy = float2(0,0);
  r15.xyzw = float4(0,0,0,0);
  r16.yzw = float3(0,0,0);
  r4.y = r1.z;
  while (true) {
    r4.z = cmp((uint)r4.y >= numRefProbes);
    if (r4.z != 0) break;
    r7.z = (uint)r4.y >> 5;
    r8.xyz = (int3)r7.xyz + (int3)r18.xyz;
    r4.z = visibleProbes.Load(r8.xyzw).x;
    r4.w = cmp((int)r1.z == (int)r4.y);
    bitmask.x = ((~(-1 << r1.w)) << 0) & 0xffffffff;  r5.x = (((uint)0 << 0) & bitmask.x) | ((uint)r4.z & ~bitmask.x);
    r4.z = r4.w ? r5.x : r4.z;
    r4.w = cmp((int)r3.w == (int)r4.y);
    if (r4.x == 0) r5.x = 0; else if (r4.x+0 < 32) {     r5.x = (uint)r4.z << (32-(r4.x + 0)); r5.x = (uint)r5.x >> (32-r4.x);    } else r5.x = (uint)r4.z >> 0;
    r4.z = r4.w ? r5.x : r4.z;
    r4.w = (int)r4.y + numLights;
    r19.xyzw = r15.xyzw;
    r20.xyz = r16.yzw;
    r5.x = r4.z;
    while (true) {
      if (r5.x == 0) break;
      r5.y = firstbitlow((uint)r5.x);
      r6.w = 1 << (int)r5.y;
      r7.z = (int)r5.x & (int)r6.w;
      if (r7.z != 0) {
        r5.x = (int)r5.x ^ (int)r6.w;
        r6.w = (int)r4.w + (int)r5.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r21.xyzw, r6.w, l(0), t11.xyzw
      r21.x = samp0[]..swiz;
      r21.y = samp0[]..swiz;
      r21.z = samp0[]..swiz;
      r21.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r8.xy, r6.w, l(16), t11.xyxx
      r8.x = samp0[]..swiz;
      r8.y = samp0[]..swiz;
        r21.xyz = -v6.xyz + r21.xyz;
        r8.z = r21.w;
        r8.xyz = cmp(abs(r21.xyz) < r8.zxy);
        r6.w = r8.y ? r8.x : 0;
        r6.w = r8.z ? r6.w : 0;
        if (r6.w != 0) {
          r5.y = (int)r4.y + (int)r5.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r21.xyzw, r5.y, l(0), t15.wxyz
        r21.x = samp0[]..swiz;
        r21.y = samp0[]..swiz;
        r21.z = samp0[]..swiz;
        r21.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r7.zw, r5.y, l(96), t15.xxxy
        r7.z = samp0[]..swiz;
        r7.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r5.y, l(116), t15.zwxy
        r22.x = samp0[]..swiz;
        r22.y = samp0[]..swiz;
        r22.z = samp0[]..swiz;
        r22.w = samp0[]..swiz;
          r8.xyz = v6.xyz + -r21.yzw;
          r6.w = (int)r22.w & 0x0000ffff;
          if (6 == 0) r9.w = 0; else if (6+25 < 32) {           r9.w = (uint)r22.w << (32-(6 + 25)); r9.w = (uint)r9.w >> (32-6);          } else r9.w = (uint)r22.w >> 25;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r23.xyzw, r6.w, l(0), t16.xyzw
        r23.x = samp0[]..swiz;
        r23.y = samp0[]..swiz;
        r23.z = samp0[]..swiz;
        r23.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r24.xyzw, r6.w, l(16), t16.xyzw
        r24.x = samp0[]..swiz;
        r24.y = samp0[]..swiz;
        r24.z = samp0[]..swiz;
        r24.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r25.xyzw, r6.w, l(32), t16.xyzw
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        r25.z = samp0[]..swiz;
        r25.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r6.w, l(48), t16.xyzw
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
        r26.z = samp0[]..swiz;
        r26.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r6.w, l(64), t16.xyzw
        r27.x = samp0[]..swiz;
        r27.y = samp0[]..swiz;
        r27.z = samp0[]..swiz;
        r27.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r6.w, l(80), t16.xyzw
        r33.x = samp0[]..swiz;
        r33.y = samp0[]..swiz;
        r33.z = samp0[]..swiz;
        r33.w = samp0[]..swiz;
          r10.w = dot(r23.xyz, r8.xyz);
          r10.w = saturate(r10.w + r23.w);
          r12.w = dot(r24.xyz, r8.xyz);
          r12.w = saturate(r12.w + r24.w);
          r10.w = r12.w * r10.w;
          r12.w = dot(r25.xyz, r8.xyz);
          r12.w = saturate(r12.w + r25.w);
          r10.w = r12.w * r10.w;
          r12.w = dot(r26.xyz, r8.xyz);
          r12.w = saturate(r12.w + r26.w);
          r10.w = r12.w * r10.w;
          r12.w = dot(r27.xyz, r8.xyz);
          r12.w = saturate(r12.w + r27.w);
          r10.w = r12.w * r10.w;
          r12.w = dot(r33.xyz, r8.xyz);
          r12.w = saturate(r12.w + r33.w);
          r9.x = r12.w * r10.w;
          r10.w = (int)r7.z & 1;
          r13.xy = r10.ww ? r9.xy : r9.zx;
          r9.x = r7.z;
          r17.xy = r13.xy;
          r10.w = 1;
          while (true) {
            r12.w = cmp((int)r10.w >= (int)r9.w);
            if (r12.w != 0) break;
            r12.w = (int)r6.w + (int)r10.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r23.xyzw, r12.w, l(0), t16.xyzw
          r23.x = samp0[]..swiz;
          r23.y = samp0[]..swiz;
          r23.z = samp0[]..swiz;
          r23.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r24.xyzw, r12.w, l(16), t16.xyzw
          r24.x = samp0[]..swiz;
          r24.y = samp0[]..swiz;
          r24.z = samp0[]..swiz;
          r24.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r25.xyzw, r12.w, l(32), t16.xyzw
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r12.w, l(48), t16.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r12.w, l(64), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r12.w, l(80), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
            r12.w = dot(r23.xyz, r8.xyz);
            r12.w = saturate(r12.w + r23.w);
            r12.w = r17.x * r12.w;
            r14.w = dot(r24.xyz, r8.xyz);
            r14.w = saturate(r14.w + r24.w);
            r12.w = r14.w * r12.w;
            r14.w = dot(r25.xyz, r8.xyz);
            r14.w = saturate(r14.w + r25.w);
            r12.w = r14.w * r12.w;
            r14.w = dot(r26.xyz, r8.xyz);
            r14.w = saturate(r14.w + r26.w);
            r12.w = r14.w * r12.w;
            r14.w = dot(r27.xyz, r8.xyz);
            r14.w = saturate(r14.w + r27.w);
            r12.w = r14.w * r12.w;
            r14.w = dot(r33.xyz, r8.xyz);
            r14.w = saturate(r14.w + r33.w);
            r17.x = r14.w * r12.w;
            r18.w = (uint)r9.x >> 2;
            if (1 == 0) r21.w = 0; else if (1+2 < 32) {             r21.w = (uint)r9.x << (32-(1 + 2)); r21.w = (uint)r21.w >> (32-1);            } else r21.w = (uint)r9.x >> 2;
            r23.x = (int)r18.w & 2;
            r23.y = max(r17.y, r17.x);
            r12.w = -r12.w * r14.w + 1;
            r12.w = r17.y * r12.w;
            r13.w = r23.x ? r12.w : r23.y;
            r17.xy = r21.ww ? r17.xy : r13.zw;
            r10.w = (int)r10.w + 1;
            r9.x = r18.w;
          }
          r17.y = saturate(r17.y);
          r6.w = r17.y * r7.w;
          r7.z = cmp(0 < r6.w);
          if (r7.z != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r5.y, l(16), t15.xyzw
          r23.x = samp0[]..swiz;
          r23.y = samp0[]..swiz;
          r23.z = samp0[]..swiz;
          r23.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r5.y, l(32), t15.yxwz
          r24.x = samp0[]..swiz;
          r24.y = samp0[]..swiz;
          r24.z = samp0[]..swiz;
          r24.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r5.y, l(48), t15.xyzw
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r5.y, l(64), t15.zwxy
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r5.y, l(80), t15.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r5.y, l(132), t15.zwxy
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r5.y, l(148), t15.zwxy
          r38.x = samp0[]..swiz;
          r38.y = samp0[]..swiz;
          r38.z = samp0[]..swiz;
          r38.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r5.y, l(164), t15.zwxy
          r39.x = samp0[]..swiz;
          r39.y = samp0[]..swiz;
          r39.z = samp0[]..swiz;
          r39.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xyzw, r5.y, l(180), t15.zwxy
          r40.x = samp0[]..swiz;
          r40.y = samp0[]..swiz;
          r40.z = samp0[]..swiz;
          r40.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r41.xyzw, r5.y, l(196), t15.xyzw
          r41.x = samp0[]..swiz;
          r41.y = samp0[]..swiz;
          r41.z = samp0[]..swiz;
          r41.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r42.xy, r5.y, l(212), t15.xyxx
          r42.x = samp0[]..swiz;
          r42.y = samp0[]..swiz;
            r20.z = r17.y * r7.w + r20.z;
            r5.y = r6.w * r22.z;
            r22.z = r33.z;
            r6.w = dot(r11.xyz, r22.xyz);
            r7.z = dot(r8.xyz, r22.xyz);
            r7.z = r7.z + -r33.w;
            r7.w = cmp(r7.z >= 0);
            r7.z = max(100, abs(r7.z));
            r7.z = r7.w ? r7.z : -r7.z;
            r6.w = max(1.00000001e-07, -r6.w);
            r6.w = r7.z / r6.w;
            r6.w = min(131072, abs(r6.w));
            r33.z = r38.z;
            r7.z = dot(r11.xyz, r33.xyz);
            r7.w = dot(r8.xyz, r33.xyz);
            r7.w = r7.w + -r38.w;
            r9.x = cmp(r7.w >= 0);
            r7.w = max(100, abs(r7.w));
            r7.w = r9.x ? r7.w : -r7.w;
            r7.z = max(1.00000001e-07, -r7.z);
            r7.z = r7.w / r7.z;
            r6.w = min(abs(r7.z), r6.w);
            r38.z = r39.z;
            r7.z = dot(r11.xyz, r38.xyz);
            r7.w = dot(r8.xyz, r38.xyz);
            r7.w = r7.w + -r39.w;
            r9.x = cmp(r7.w >= 0);
            r7.w = max(100, abs(r7.w));
            r7.w = r9.x ? r7.w : -r7.w;
            r7.z = max(1.00000001e-07, -r7.z);
            r7.z = r7.w / r7.z;
            r6.w = min(abs(r7.z), r6.w);
            r39.z = r40.z;
            r7.z = dot(r11.xyz, r39.xyz);
            r7.w = dot(r8.xyz, r39.xyz);
            r7.w = r7.w + -r40.w;
            r9.x = cmp(r7.w >= 0);
            r7.w = max(100, abs(r7.w));
            r7.w = r9.x ? r7.w : -r7.w;
            r7.z = max(1.00000001e-07, -r7.z);
            r7.z = r7.w / r7.z;
            r6.w = min(abs(r7.z), r6.w);
            r40.z = r41.x;
            r7.z = dot(r11.xyz, r40.xyz);
            r7.w = dot(r8.xyz, r40.xyz);
            r7.w = r7.w + -r41.y;
            r9.x = cmp(r7.w >= 0);
            r7.w = max(100, abs(r7.w));
            r7.w = r9.x ? r7.w : -r7.w;
            r7.z = max(1.00000001e-07, -r7.z);
            r7.z = r7.w / r7.z;
            r6.w = min(abs(r7.z), r6.w);
            r42.zw = r41.zw;
            r7.z = dot(r11.zxy, r42.xzw);
            r7.w = dot(r8.zxy, r42.xzw);
            r7.w = r7.w + -r42.y;
            r9.x = cmp(r7.w >= 0);
            r7.w = max(100, abs(r7.w));
            r7.w = r9.x ? r7.w : -r7.w;
            r7.z = max(1.00000001e-07, -r7.z);
            r7.z = r7.w / r7.z;
            r6.w = min(abs(r7.z), r6.w);
            r22.x = r25.w;
            r22.yz = r26.zw;
            r13.xyw = r22.xyz + r8.xyz;
            r13.xyw = r11.xyz * r6.www + r13.xyw;
            r7.z = dot(r13.xyw, r13.xyw);
            r7.z = sqrt(r7.z);
            r6.w = r6.w / r7.z;
            r6.w = r6.w + r6.w;
            r6.w = sqrt(r6.w);
            r6.w = 4.1552 + r6.w;
            r21.y = r23.z;
            r21.z = r24.x;
            r33.x = dot(r13.xyw, r21.xyz);
            r22.xy = r23.xw;
            r22.z = r24.w;
            r33.y = dot(r13.xyw, r22.xyz);
            r24.x = r23.y;
            r33.z = dot(r13.xyw, r24.xyz);
            if (9 == 0) r7.z = 0; else if (9+16 < 32) {             r7.z = (uint)r22.w << (32-(9 + 16)); r7.z = (uint)r7.z >> (32-9);            } else r7.z = (uint)r22.w >> 16;
            r33.w = (uint)r7.z;
            r13.xyw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, r6.w).xyz;
            r23.x = dot(r8.xyz, r21.xyz);
            r23.y = dot(r8.xyz, r22.xyz);
            r23.z = dot(r8.xyz, r24.xyz);
            r8.xyz = saturate(r23.xyz * r25.xyz + float3(0.5,0.5,0.5));
            r26.z = r27.x;
            r8.xyz = r8.xyz * r26.xyz + r27.yzw;
            r33.x = dot(r2.xyz, r21.xyz);
            r33.y = dot(r2.xyz, r22.xyz);
            r33.z = dot(r2.xyz, r24.xyz);
            r21.xyz = cmp(float3(0,0,0) < r33.xyz);
            r10.z = r21.x ? 0 : 0.5;
            r22.xyz = r10.xyz + r8.xyz;
            r22.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r22.xyz, 0).xyz;
            r23.xyz = r33.xyz * r33.xyz;
            r23.xyz = r23.xyz * r5.yyy;
            r12.z = r21.y ? 0 : 0.5;
            r21.xyw = r12.xyz + r8.xyz;
            r21.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r21.xyw, 0).xyz;
            r21.xyw = r21.xyw * r23.yyy;
            r21.xyw = r22.xyz * r23.xxx + r21.xyw;
            r14.z = r21.z ? 0 : 0.5;
            r8.xyz = r14.xyz + r8.xyz;
            r8.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r8.xyz, 0).xyz;
            r8.xyz = r8.xyz * r23.zzz + r21.xyw;
            r21.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, 6).xyz;
            r22.xyz = r21.xyz * r8.xyz;
            r6.w = dot(r22.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r19.xyz = r8.xyz * r21.xyz + r19.xyz;
            r7.z = 1.26815999 * r6.w;
            r8.xyz = r13.xyw * r5.yyy;
            r5.y = dot(r8.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r5.y = r6.w * 1.26815999 + r5.y;
            r5.y = r7.z / r5.y;
            r21.x = r19.w;
            r21.yz = r20.xy;
            r20.xyw = r8.yzx * r5.yyy + r21.yzx;
            r19.w = r20.w;
          }
        }
      }
    }
    r15.xyzw = r19.xyzw;
    r16.yzw = r20.xyz;
    r4.y = (int)r4.y + 32;
  }
  r3.w = cmp(r16.w < 1);
  if (r3.w != 0) {
    r4.xy = float2(0,0);
    r7.w = 0;
    r8.yz = float2(0,1);
    r9.xy = float2(0,0);
    r5.x = 1;
    r10.xy = float2(0,0);
    r12.xy = float2(0,0);
    r13.x = r15.w;
    r13.yzw = r16.yzw;
    r14.xyz = r15.xyz;
    r3.w = r16.w;
    r4.w = 0;
    while (true) {
      r6.w = cmp((uint)r4.w >= (uint)r1.y);
      if (r6.w != 0) break;
      r4.z = (uint)r4.w >> 5;
      r7.xyz = (int3)r4.xyz + (int3)r18.xyz;
      r4.z = visibleProbes.Load(r7.xyzw).x;
      r6.w = cmp((int)r1.z == (int)r4.w);
      if (r1.w == 0) r7.x = 0; else if (r1.w+0 < 32) {       r7.x = (uint)r4.z << (32-(r1.w + 0)); r7.x = (uint)r7.x >> (32-r1.w);      } else r7.x = (uint)r4.z >> 0;
      r4.z = r6.w ? r7.x : r4.z;
      r6.w = (int)r4.w + numLights;
      r19.xyzw = r13.xyzw;
      r7.xyz = r14.xyz;
      r8.w = r3.w;
      r9.w = r4.z;
      while (true) {
        if (r9.w == 0) break;
        r10.w = firstbitlow((uint)r9.w);
        r12.w = 1 << (int)r10.w;
        r14.w = (int)r9.w & (int)r12.w;
        if (r14.w != 0) {
          r9.w = (int)r9.w ^ (int)r12.w;
          r12.w = (int)r6.w + (int)r10.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r20.xyzw, r12.w, l(0), t11.xyzw
        r20.x = samp0[]..swiz;
        r20.y = samp0[]..swiz;
        r20.z = samp0[]..swiz;
        r20.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r21.xy, r12.w, l(16), t11.xyxx
        r21.x = samp0[]..swiz;
        r21.y = samp0[]..swiz;
          r20.xyz = -v6.xyz + r20.xyz;
          r21.z = r20.w;
          r20.xyz = cmp(abs(r20.xyz) < r21.zxy);
          r12.w = r20.y ? r20.x : 0;
          r12.w = r20.z ? r12.w : 0;
          if (r12.w != 0) {
            r10.w = (int)r4.w + (int)r10.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r20.xyzw, r10.w, l(0), t15.wxyz
          r20.x = samp0[]..swiz;
          r20.y = samp0[]..swiz;
          r20.z = samp0[]..swiz;
          r20.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r17.xy, r10.w, l(96), t15.xyxx
          r17.x = samp0[]..swiz;
          r17.y = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r21.xyzw, r10.w, l(116), t15.zwxy
          r21.x = samp0[]..swiz;
          r21.y = samp0[]..swiz;
          r21.z = samp0[]..swiz;
          r21.w = samp0[]..swiz;
            r22.xyz = v6.xyz + -r20.yzw;
            r12.w = (int)r21.w & 0x0000ffff;
            if (6 == 0) r14.w = 0; else if (6+25 < 32) {             r14.w = (uint)r21.w << (32-(6 + 25)); r14.w = (uint)r14.w >> (32-6);            } else r14.w = (uint)r21.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r23.xyzw, r12.w, l(0), t16.xyzw
          r23.x = samp0[]..swiz;
          r23.y = samp0[]..swiz;
          r23.z = samp0[]..swiz;
          r23.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r24.xyzw, r12.w, l(16), t16.xyzw
          r24.x = samp0[]..swiz;
          r24.y = samp0[]..swiz;
          r24.z = samp0[]..swiz;
          r24.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r25.xyzw, r12.w, l(32), t16.xyzw
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r12.w, l(48), t16.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r12.w, l(64), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r12.w, l(80), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
            r18.w = dot(r23.xyz, r22.xyz);
            r18.w = saturate(r18.w + r23.w);
            r20.w = dot(r24.xyz, r22.xyz);
            r20.w = saturate(r20.w + r24.w);
            r18.w = r20.w * r18.w;
            r20.w = dot(r25.xyz, r22.xyz);
            r20.w = saturate(r20.w + r25.w);
            r18.w = r20.w * r18.w;
            r20.w = dot(r26.xyz, r22.xyz);
            r20.w = saturate(r20.w + r26.w);
            r18.w = r20.w * r18.w;
            r20.w = dot(r27.xyz, r22.xyz);
            r20.w = saturate(r20.w + r27.w);
            r18.w = r20.w * r18.w;
            r20.w = dot(r33.xyz, r22.xyz);
            r20.w = saturate(r20.w + r33.w);
            r8.x = r20.w * r18.w;
            r18.w = (int)r17.x & 1;
            r23.xy = r18.ww ? r8.xy : r8.zx;
            r8.x = r17.x;
            r24.xy = r23.xy;
            r18.w = 1;
            while (true) {
              r20.w = cmp((int)r18.w >= (int)r14.w);
              if (r20.w != 0) break;
              r20.w = (int)r12.w + (int)r18.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r25.xyzw, r20.w, l(0), t16.xyzw
            r25.x = samp0[]..swiz;
            r25.y = samp0[]..swiz;
            r25.z = samp0[]..swiz;
            r25.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r20.w, l(16), t16.xyzw
            r26.x = samp0[]..swiz;
            r26.y = samp0[]..swiz;
            r26.z = samp0[]..swiz;
            r26.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r20.w, l(32), t16.xyzw
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r20.w, l(48), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r38.xyzw, r20.w, l(64), t16.xyzw
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r39.xyzw, r20.w, l(80), t16.xyzw
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
              r20.w = dot(r25.xyz, r22.xyz);
              r20.w = saturate(r20.w + r25.w);
              r20.w = r24.x * r20.w;
              r22.w = dot(r26.xyz, r22.xyz);
              r22.w = saturate(r22.w + r26.w);
              r20.w = r22.w * r20.w;
              r22.w = dot(r27.xyz, r22.xyz);
              r22.w = saturate(r22.w + r27.w);
              r20.w = r22.w * r20.w;
              r22.w = dot(r33.xyz, r22.xyz);
              r22.w = saturate(r22.w + r33.w);
              r20.w = r22.w * r20.w;
              r22.w = dot(r38.xyz, r22.xyz);
              r22.w = saturate(r22.w + r38.w);
              r20.w = r22.w * r20.w;
              r22.w = dot(r39.xyz, r22.xyz);
              r22.w = saturate(r22.w + r39.w);
              r24.x = r22.w * r20.w;
              r23.z = (uint)r8.x >> 2;
              if (1 == 0) r23.w = 0; else if (1+2 < 32) {               r23.w = (uint)r8.x << (32-(1 + 2)); r23.w = (uint)r23.w >> (32-1);              } else r23.w = (uint)r8.x >> 2;
              r24.z = (int)r23.z & 2;
              r24.w = max(r24.y, r24.x);
              r20.w = -r20.w * r22.w + 1;
              r20.w = r24.y * r20.w;
              r5.y = r24.z ? r20.w : r24.w;
              r24.xy = r23.ww ? r24.xy : r5.xy;
              r18.w = (int)r18.w + 1;
              r8.x = r23.z;
            }
            r5.y = saturate(r24.y + -r8.w);
            r8.x = r5.y * r17.y;
            r12.w = cmp(0 < r8.x);
            if (r12.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r10.w, l(16), t15.xyzw
            r23.x = samp0[]..swiz;
            r23.y = samp0[]..swiz;
            r23.z = samp0[]..swiz;
            r23.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r10.w, l(32), t15.yxwz
            r25.x = samp0[]..swiz;
            r25.y = samp0[]..swiz;
            r25.z = samp0[]..swiz;
            r25.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r10.w, l(48), t15.xyzw
            r26.x = samp0[]..swiz;
            r26.y = samp0[]..swiz;
            r26.z = samp0[]..swiz;
            r26.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r10.w, l(64), t15.zwxy
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r10.w, l(80), t15.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r10.w, l(132), t15.zwxy
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r10.w, l(148), t15.zwxy
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xyzw, r10.w, l(164), t15.zwxy
            r40.x = samp0[]..swiz;
            r40.y = samp0[]..swiz;
            r40.z = samp0[]..swiz;
            r40.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r41.xyzw, r10.w, l(180), t15.zwxy
            r41.x = samp0[]..swiz;
            r41.y = samp0[]..swiz;
            r41.z = samp0[]..swiz;
            r41.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r42.xyzw, r10.w, l(196), t15.xyzw
            r42.x = samp0[]..swiz;
            r42.y = samp0[]..swiz;
            r42.z = samp0[]..swiz;
            r42.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r43.xy, r10.w, l(212), t15.xyxx
            r43.x = samp0[]..swiz;
            r43.y = samp0[]..swiz;
              r19.w = r5.y * r17.y + r19.w;
              r5.y = r8.x * r21.z;
              r21.z = r38.z;
              r8.x = dot(r11.xyz, r21.xyz);
              r10.w = dot(r22.xyz, r21.xyz);
              r10.w = r10.w + -r38.w;
              r12.w = cmp(r10.w >= 0);
              r10.w = max(100, abs(r10.w));
              r10.w = r12.w ? r10.w : -r10.w;
              r8.x = max(1.00000001e-07, -r8.x);
              r8.x = r10.w / r8.x;
              r8.x = min(131072, abs(r8.x));
              r38.z = r39.z;
              r10.w = dot(r11.xyz, r38.xyz);
              r12.w = dot(r22.xyz, r38.xyz);
              r12.w = r12.w + -r39.w;
              r14.w = cmp(r12.w >= 0);
              r12.w = max(100, abs(r12.w));
              r12.w = r14.w ? r12.w : -r12.w;
              r10.w = max(1.00000001e-07, -r10.w);
              r10.w = r12.w / r10.w;
              r8.x = min(abs(r10.w), r8.x);
              r39.z = r40.z;
              r10.w = dot(r11.xyz, r39.xyz);
              r12.w = dot(r22.xyz, r39.xyz);
              r12.w = r12.w + -r40.w;
              r14.w = cmp(r12.w >= 0);
              r12.w = max(100, abs(r12.w));
              r12.w = r14.w ? r12.w : -r12.w;
              r10.w = max(1.00000001e-07, -r10.w);
              r10.w = r12.w / r10.w;
              r8.x = min(abs(r10.w), r8.x);
              r40.z = r41.z;
              r10.w = dot(r11.xyz, r40.xyz);
              r12.w = dot(r22.xyz, r40.xyz);
              r12.w = r12.w + -r41.w;
              r14.w = cmp(r12.w >= 0);
              r12.w = max(100, abs(r12.w));
              r12.w = r14.w ? r12.w : -r12.w;
              r10.w = max(1.00000001e-07, -r10.w);
              r10.w = r12.w / r10.w;
              r8.x = min(abs(r10.w), r8.x);
              r41.z = r42.x;
              r10.w = dot(r11.xyz, r41.xyz);
              r12.w = dot(r22.xyz, r41.xyz);
              r12.w = r12.w + -r42.y;
              r14.w = cmp(r12.w >= 0);
              r12.w = max(100, abs(r12.w));
              r12.w = r14.w ? r12.w : -r12.w;
              r10.w = max(1.00000001e-07, -r10.w);
              r10.w = r12.w / r10.w;
              r8.x = min(abs(r10.w), r8.x);
              r43.zw = r42.zw;
              r10.w = dot(r11.zxy, r43.xzw);
              r12.w = dot(r22.zxy, r43.xzw);
              r12.w = r12.w + -r43.y;
              r14.w = cmp(r12.w >= 0);
              r12.w = max(100, abs(r12.w));
              r12.w = r14.w ? r12.w : -r12.w;
              r10.w = max(1.00000001e-07, -r10.w);
              r10.w = r12.w / r10.w;
              r8.x = min(abs(r10.w), r8.x);
              r21.x = r26.w;
              r21.yz = r27.zw;
              r21.xyz = r21.xyz + r22.xyz;
              r21.xyz = r11.xyz * r8.xxx + r21.xyz;
              r10.w = dot(r21.xyz, r21.xyz);
              r10.w = sqrt(r10.w);
              r8.x = r8.x / r10.w;
              r8.x = r8.x + r8.x;
              r8.x = sqrt(r8.x);
              r8.x = 4.1552 + r8.x;
              r20.y = r23.z;
              r20.z = r25.x;
              r38.x = dot(r21.xyz, r20.xyz);
              r39.xy = r23.xw;
              r39.z = r25.w;
              r38.y = dot(r21.xyz, r39.xyz);
              r25.x = r23.y;
              r38.z = dot(r21.xyz, r25.xyz);
              if (9 == 0) r10.w = 0; else if (9+16 < 32) {               r10.w = (uint)r21.w << (32-(9 + 16)); r10.w = (uint)r10.w >> (32-9);              } else r10.w = (uint)r21.w >> 16;
              r38.w = (uint)r10.w;
              r21.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r38.xyzw, r8.x).xyz;
              r23.x = dot(r22.xyz, r20.xyz);
              r23.y = dot(r22.xyz, r39.xyz);
              r23.z = dot(r22.xyz, r25.xyz);
              r22.xyz = saturate(r23.xyz * r26.xyz + float3(0.5,0.5,0.5));
              r27.z = r33.x;
              r22.xyz = r22.xyz * r27.xyz + r33.yzw;
              r38.x = dot(r2.xyz, r20.xyz);
              r38.y = dot(r2.xyz, r39.xyz);
              r38.z = dot(r2.xyz, r25.xyz);
              r20.xyz = cmp(float3(0,0,0) < r38.xyz);
              r9.z = r20.x ? 0 : 0.5;
              r23.xyz = r22.xyz + r9.xyz;
              r23.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
              r24.xzw = r38.xyz * r38.xyz;
              r24.xzw = r24.xzw * r5.yyy;
              r10.z = r20.y ? 0 : 0.5;
              r20.xyw = r22.xyz + r10.xyz;
              r20.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r20.xyw, 0).xyz;
              r20.xyw = r20.xyw * r24.zzz;
              r20.xyw = r23.xyz * r24.xxx + r20.xyw;
              r12.z = r20.z ? 0 : 0.5;
              r22.xyz = r22.xyz + r12.xyz;
              r22.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r22.xyz, 0).xyz;
              r20.xyz = r22.xyz * r24.www + r20.xyw;
              r22.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r38.xyzw, 6).xyz;
              r23.xyz = r22.xyz * r20.xyz;
              r8.x = dot(r23.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r7.xyz = r20.xyz * r22.xyz + r7.xyz;
              r9.z = 1.26815999 * r8.x;
              r20.xyz = r21.xyz * r5.yyy;
              r5.y = dot(r20.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r5.y = r8.x * 1.26815999 + r5.y;
              r5.y = r9.z / r5.y;
              r19.xyz = r20.xyz * r5.yyy + r19.xyz;
            }
          }
        }
      }
      r13.xyzw = r19.xyzw;
      r14.xyz = r7.xyz;
      r4.w = (int)r4.w + 32;
    }
    r16.xyzw = r13.zxyw;
    r15.xyz = r14.xyz;
    r16.xyzw = r16.yzxw;
  } else {
    r16.x = r15.w;
  }
  r1.y = max(1, r16.w);
  r1.y = rcp(r1.y);
  r16.w = saturate(r16.w);
  r4.xyz = r15.xyz * r1.yyy;
  r7.xyz = r16.xyz * r1.yyy;
  r1.z = cmp(r16.w < 0.99000001);
  if (r1.z != 0) {
    r1.z = 1 + -r16.w;
    r1.z = sunConstants.globalProbeExposure * r1.z;
    r8.xyz = -globalProbeConstants.data[0].xyz + v6.xyz;
    r9.x = globalProbeConstants.data[0].w * r8.x;
    r9.yz = globalProbeConstants.data[1].xy * r8.yz;
    r8.xyz = saturate(float3(0.5,0.5,0.5) + r9.xyz);
    r9.xy = globalProbeConstants.data[1].zw * r8.xy;
    r9.z = globalProbeConstants.data[2].x * r8.z;
    r8.xyz = globalProbeConstants.data[2].yzw + r9.xyz;
    r9.xyz = cmp(float3(0,0,0) < r2.xyz);
    r9.xyz = r9.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r9.w = 0;
    r10.xyz = r9.wwx + r8.xyz;
    r10.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r10.xyz, 0).xyz;
    r12.xyz = r2.xyz * r2.xyz;
    r12.xyz = r12.xyz * r1.zzz;
    r13.xyz = r9.wwy + r8.xyz;
    r13.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r13.xyz, 0).xyz;
    r13.xyz = r13.xyz * r12.yyy;
    r10.xyz = r10.xyz * r12.xxx + r13.xyz;
    r8.xyz = r9.wwz + r8.xyz;
    r8.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r8.xyz, 0).xyz;
    r8.xyz = r8.xyz * r12.zzz + r10.xyz;
    r2.w = 0;
    r2.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r2.xyzw, 6).xyz;
    r2.xyz = r8.xyz * r2.xyz;
    r1.z = dot(r2.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r4.xyz = r15.xyz * r1.yyy + r2.xyz;
    r11.w = 0;
    r2.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, 5).xyz;
    r7.xyz = r2.xyz * r1.zzz + r7.xyz;
  }
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r1.y, v2.x, l(4), t4.xxxx
r1.y = samp0[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r1.y, r1.y, l(0), t0.xxxx
r1.y = samp0[]..swiz;
  r1.z = revealMap.Sample(revealSampler_s, w1.xy).x;
  r1.y = saturate(r1.y * 0.998000026 + 0.00100000005);
  r1.w = 1 + -r1.y;
  r2.x = saturate(alphaRevealRamp);
  r1.y = log2(r1.y);
  r1.y = r2.x * r1.y;
  r1.y = exp2(r1.y);
  r5.x = -r1.y;
  r1.y = log2(r1.w);
  r1.y = r2.x * r1.y;
  r5.y = exp2(r1.y);
  r1.yw = saturate(alphaRevealSoftEdge * r5.xy + r1.ww);
  r1.z = r1.z + -r1.y;
  r1.y = r1.w + -r1.y;
  r1.y = saturate(r1.z / r1.y);
  r0.w = r1.y * r0.w;
  r1.y = cmp(r0.w < 0.5);
  if (r1.y != 0) discard;
  r1.y = aoMap.Sample(aoSampler_s, w1.xy).x;
  r1.z = x2[0].x;
  r1.z = r1.z + -r5.z;
  r1.z = cmp(2.4000001 < abs(r1.z));
  r1.x = -r1.x * 0.5 + 1;
  r1.x = r1.z ? 0.5 : r1.x;
  r1.z = x2[1].x;
  r1.z = r1.z + -r5.z;
  r1.z = cmp(2.4000001 < abs(r1.z));
  r1.w = x0[1].x;
  r1.w = 0.5 * r1.w;
  r1.z = r1.z ? -0.5 : -r1.w;
  r1.x = r1.x + r1.z;
  r1.x = saturate(1 + -r1.x);
  r1.z = r1.x * -2 + 3;
  r1.x = r1.x * r1.x;
  r1.x = r1.z * r1.x;
  r1.x = min(r17.w, r1.x);
  r1.x = r17.z * r1.x;
  r1.xzw = r1.xxx * r32.xyz;
  r2.xyz = r1.xzw * r34.xyz + r28.xyz;
  r5.xyz = r1.xzw * r35.xyz + r29.xyz;
  r8.xyz = r1.xzw * r36.xyz + r31.xyz;
  r1.xzw = r1.xzw * r37.xyz + r30.xyz;
  r2.xyz = r4.xyz * r1.yyy + r2.xyz;
  r4.xyz = r4.xyz * r1.yyy + r5.xyz;
  r5.x = 0.984375 * r5.w;
  r5.y = 0;
  r5.xy = float2(0.0078125,0.0078125) + r5.xy;
  r5.xy = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r5.xy, 0).xy;
  r7.xyz = r7.xyz * r1.yyy;
  r1.xyz = r7.xyz * r5.xxx + r1.xzw;
  r5.xyz = r7.xyz * r5.yyy + r8.xyz;
  r1.w = dot(r3.xyz, r6.xyz);
  r1.w = 1 + -abs(r1.w);
  r1.w = r1.w * r1.w;
  r1.w = r1.w * 0.600000024 + 0.400000006;
  r1.w = min(1, r1.w);
  r3.xyz = transColorTint.xyz * r1.www;
  r6.xyz = saturate(r0.xyz * float3(0.0199999996,0.0199999996,0.0199999996) + float3(0.0399999991,0.0399999991,0.0399999991));
  r7.xyz = specColorTint.xyz * r6.xyz;
  r3.xyz = r3.xyz * r0.xyz;
  r3.xyz = r4.xyz * r3.xyz;
  r0.xyz = r2.xyz * r0.xyz + r3.xyz;
  r2.xyz = -r6.xyz * specColorTint.xyz + float3(1,1,1);
  r1.xyz = r2.xyz * r1.xyz;
  r1.xyz = r5.xyz * r7.xyz + r1.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.x = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r1.x != 0) {
    r1.x = dot(v6.xyz, v6.xyz);
    r1.y = rsqrt(r1.x);
    r1.yzw = v6.xyz * r1.yyy;
    r1.x = sqrt(r1.x);
    r2.x = cmp(0 < fogConstants.blendAmount);
    if (r2.x != 0) {
      r2.xy = r1.xx * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r2.xy = fogConstants.atmospherefogdensityatcamera.xy * r2.xy;
      r2.z = cmp(0.00999999978 < abs(v6.z));
      r3.xy = fogConstants.atmospherefogheightdensityscale.xy * v6.zz;
      r3.zw = float2(-1.44269502,-1.44269502) * r3.xy;
      r3.zw = exp2(r3.zw);
      r3.zw = float2(1,1) + -r3.zw;
      r3.xy = r3.zw / r3.xy;
      r3.xy = r3.xy * r2.xy;
      r2.xy = r2.zz ? r3.xy : r2.xy;
      r2.xzw = fogConstants.atmosphereTotalDensity.xyz * r2.xxx;
      r2.xzw = exp2(r2.xzw);
      r3.xyz = fogConstants.atmosphereTotalDensity.xyz * r2.yyy;
      r3.xyz = exp2(r3.xyz);
      r3.xyz = r3.xyz + -r2.xzw;
      r2.xyz = fogConstants.blendAmount * r3.xyz + r2.xzw;
    } else {
      r2.w = r1.x * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r2.w = fogConstants.atmospherefogdensityatcamera.x * r2.w;
      r3.x = cmp(0.00999999978 < abs(v6.z));
      r3.y = fogConstants.atmospherefogheightdensityscale.x * v6.z;
      r3.z = -1.44269502 * r3.y;
      r3.z = exp2(r3.z);
      r3.z = 1 + -r3.z;
      r3.y = r3.z / r3.y;
      r3.y = r3.y * r2.w;
      r2.w = r3.x ? r3.y : r2.w;
      r3.xyz = fogConstants.atmosphereTotalDensity.xyz * r2.www;
      r2.xyz = exp2(r3.xyz);
    }
    r2.xyz = r2.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r2.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r2.xyz);
    r1.y = dot(fogConstants.wldSunFogDir.xyz, -r1.yzw);
    r1.z = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r1.w = fogConstants.atmosphereMieSchlickK * -r1.y + 1;
    r1.w = r1.w * r1.w;
    r1.w = 12.566371 * r1.w;
    r1.z = r1.z / r1.w;
    r1.x = -fogConstants.atmospherehazebasedist + r1.x;
    r1.x = saturate(fogConstants.atmospherehazefadedist * r1.x);
    r1.x = r1.z * r1.x;
    r1.y = saturate(r1.y);
    r1.y = r1.y * r1.y + 1;
    r1.y = r1.y * 0.0596831031 + -1;
    r1.y = fogConstants.atmospheresunstrength * r1.y + 1;
    r1.xzw = fogConstants.atmosphereMieDensity.xyz * r1.xxx;
    r1.xyz = r1.yyy * fogConstants.atmosphereRayleighDensity.xyz + r1.xzw;
    r1.xyz = fogConstants.atmosphereInScatterIntensity * r1.xyz;
    r3.xyz = float3(1,1,1) + -r2.xyz;
    r1.xyz = r3.xyz * r1.xyz;
    r1.xyz = r0.xyz * r2.xyz + r1.xyz;
  } else {
    r1.w = fogConstants.heightFalloff * v6.z;
    r2.x = fogConstants.heightFalloff * v6.z + fogConstants.K0;
    r2.y = cmp(abs(r1.w) < 9.99999975e-05);
    r2.z = min(64, r2.x);
    r2.z = 1.44269502 * r2.z;
    r2.z = exp2(r2.z);
    r2.w = saturate(fogConstants.K0b);
    r3.x = cmp(r2.x < 0);
    r2.x = 1 + r2.x;
    r2.x = r3.x ? r2.z : r2.x;
    r2.x = -fogConstants.K0b + r2.x;
    r1.w = r2.y ? 1 : r1.w;
    r1.w = r2.x / r1.w;
    r1.w = r2.y ? r2.w : r1.w;
    r1.w = fogConstants.expMul * r1.w;
    r2.x = dot(v6.xyz, v6.xyz);
    r2.y = sqrt(r2.x);
    r1.w = r1.w * r2.y + fogConstants.expAdd;
    r1.w = exp2(r1.w);
    r1.w = min(1, r1.w);
    r1.w = 1 + -r1.w;
    r2.x = rsqrt(r2.x);
    r2.xyz = v6.xyz * r2.xxx;
    r2.x = dot(fogConstants.wldSunFogDir.xyz, r2.xyz);
    r2.x = saturate(fogConstants.sunFogAngles.y * r2.x + fogConstants.sunFogAngles.x);
    r3.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r2.xyzw = r2.xxxx * r3.xyzw + fogConstants.sunFogColor.xyzw;
    r1.w = r2.w * r1.w;
    r2.xyz = r2.xyz + -r0.xyz;
    r1.xyz = r1.www * r2.xyz + r0.xyz;
  }
  r0.xyz = relHDRExposure.yyy * r1.xyz;
  r1.xyz = cmp(r0.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r0.xyz = r1.xyz ? r0.xyz : 0;
  o0.xyz = min(float3(65024,65024,64512), r0.xyz);
  o0.w = r0.w;
  return;
}