// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:36:57 2021

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
Texture2D<float4> floatZSampler : register(t0);
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45,r46,r47,r48,r49,r50,r51,r52,r53,r54,r55,r56,r57,r58,r59,r60,r61,r62,r63,r64,r65;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[4];
  float4 x1[4];
  float4 x2[4];
  r0.xyzw = colorMap.Sample(colorSampler_s, w1.xy).xyzw;
  r1.x = cmp(r0.w < 0.5);
  if (r1.x != 0) discard;
  r1.x = aoMap.Sample(aoSampler_s, w1.xy).x;
  r1.y = glossMap.Sample(specColorSampler_s, w1.xy).x;
  r1.z = glossRange.y + -glossRange.x;
  r1.w = r1.y * r1.z;
  r1.y = r1.y * r1.z + glossRange.x;
  r1.z = r1.w * 0.5 + glossRange.x;
  r1.yz = saturate(float2(0.0588235296,0.0588235296) * r1.yz);
  r2.xyz = normalMap.Sample(normalSampler_s, w1.xy).xyz;
  r2.xyz = float3(-0.5,-0.5,-0) + r2.xyz;
  r2.xyz = baseNormalHeight * r2.xyz + float3(0.5,0.5,0);
  r2.xy = r2.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r1.w = dot(r2.xy, r2.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r2.z = r2.z * r2.z;
  r2.z = 0.333333343 * r2.z;
  r2.z = min(1, r2.z);
  r2.w = v6.x ? 1 : -1;
  r3.x = dot(v2.xyz, v2.xyz);
  r3.x = rsqrt(r3.x);
  r3.xyz = v2.xyz * r3.xxx;
  r3.xyz = r3.xyz * r2.www;
  r3.w = dot(v3.xyz, v3.xyz);
  r3.w = rsqrt(r3.w);
  r4.xyz = v3.xyz * r3.www;
  r4.xyz = r4.xyz * r2.www;
  r3.w = dot(v4.xyz, v4.xyz);
  r3.w = rsqrt(r3.w);
  r5.xyz = v4.xyz * r3.www;
  r5.xyz = r5.xyz * r2.www;
  r1.yz = float2(-17,-17) * r1.yz;
  r1.y = exp2(r1.y);
  r1.y = r2.z + r1.y;
  r1.y = log2(r1.y);
  r1.z = exp2(r1.z);
  r1.z = r2.z + r1.z;
  r1.z = log2(r1.z);
  r1.yz = float2(-0.0588235296,-0.0588235296) * r1.yz;
  r2.yzw = r5.xyz * r2.yyy;
  r2.xyz = r4.xyz * r2.xxx + r2.yzw;
  r2.xyz = r3.xyz * r1.www + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  r6.xy = (uint2)v0.xy;
  r1.w = cmp(v0.z >= 0.984375);
  r3.w = 1.01587307 * v0.z;
  r4.w = v0.z * 64 + -63;
  r1.w = r1.w ? r4.w : r3.w;
  r1.yzw = max(float3(0,0,9.99999994e-09), r1.yzw);
  r1.w = rcp(r1.w);
  r3.w = dot(-v5.xyz, -v5.xyz);
  r3.w = rsqrt(r3.w);
  r7.xyz = -v5.xyz * r3.www;
  r6.zw = (uint2)r6.yx;
  r4.w = dot(r6.wz, float2(0.0671105608,0.00583714992));
  r4.w = frac(r4.w);
  r4.w = 52.9829178 * r4.w;
  r4.w = frac(r4.w);
  r4.w = r4.w * 6.28318548 + gameTick.w;
  sincos(r4.w, r8.x, r9.x);
  r4.w = dot(r6.zw, float2(0.0671105608,0.00583714992));
  r4.w = frac(r4.w);
  r4.w = 52.9829178 * r4.w;
  r4.w = frac(r4.w);
  r4.w = r4.w * 6.28318548 + gameTick.w;
  sincos(r4.w, r10.x, r11.x);
  r4.w = saturate(dot(r2.xyz, r7.xyz));
  r5.w = dot(-r7.xyz, r2.xyz);
  r5.w = r5.w + r5.w;
  r12.xyz = r2.xyz * -r5.www + -r7.xyz;
  r10.yzw = -eyeOffset.yyy * viewProjectionMatrix._m10_m11_m13;
  r10.yzw = -eyeOffset.xxx * viewProjectionMatrix._m00_m01_m03 + r10.yzw;
  r10.yzw = -eyeOffset.zzz * viewProjectionMatrix._m20_m21_m23 + r10.yzw;
  r10.yzw = viewProjectionMatrix._m30_m31_m33 + r10.yzw;
  r13.xyz = eyeOffset.xyz + v5.xyz;
  r6.z = 0.984375 * r4.w;
  r5.w = r4.w * 0.547037423 + 0.452962577;
  r8.zw = float2(0.547037423,0.452962577) * r5.ww;
  r5.w = min(1, abs(anisotropy));
  r1.z = r1.z + -r1.y;
  r1.y = r5.w * r1.z + r1.y;
  r1.z = cmp(anisotropy < 0);
  r1.yw = float2(17,0.0078125) * r1.yw;
  r14.y = exp2(r1.y);
  r14.xz = float2(1,1);
  r1.yz = r1.zz ? r14.xy : r14.yx;
  r1.yz = float2(2,2) + r1.yz;
  r1.yz = float2(2,2) / r1.yz;
  r5.w = dot(r2.xyz, sunConstants.wldDir.xyz);
  r7.w = cmp(0 >= abs(r5.w));
  if (r7.w != 0) {
    r14.y = 0;
  }
  if (r7.w == 0) {
    r11.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v5.yyy;
    r11.yzw = v5.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r11.yzw;
    r11.yzw = v5.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r11.yzw;
    r11.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r11.yzw;
    r7.w = -sunConstants.splitDepthOffset + r11.w;
    r7.w = -r7.w * 6.10351563e-05 + 1;
    r9.w = saturate(r7.w);
    r9.w = cmp(r7.w == r9.w);
    if (r9.w != 0) {
      r9.w = 0;
      r15.x = 0;
      while (true) {
        r15.y = cmp(r9.w >= 3);
        if (r15.y != 0) break;
        r15.y = (uint)r9.w;
        r15.zw = -sunConstants.splitPinTransform[r15.y].xy + r11.yz;
        r15.z = max(abs(r15.z), abs(r15.w));
        r15.x = sunConstants.splitPinTransform[r15.y].z * r15.z;
        r15.y = cmp(r15.x < 1);
        if (r15.y != 0) {
          break;
        }
        r9.w = 1 + r9.w;
        r15.x = 0;
      }
    } else {
      r9.w = 3;
      r15.x = 0;
    }
    r15.y = cmp(r9.w >= 3);
    if (r15.y != 0) {
      r16.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r17.xz = rcp(r16.xx);
      r17.y = -r17.z;
      r16.xyz = r11.yzy * r17.xyz + r16.yzy;
      r17.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r16.xyz = max(float3(0,0,0), r16.xyz);
      r16.xyz = min(r16.xyz, r17.xyz);
      r15.zw = sunConstants.sstLightingConstants.coordScale * r16.zy;
      r15.zw = floor(r15.zw);
      r15.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r15.w;
      r15.z = r15.w * sunConstants.sstLightingConstants.coordScale + r15.z;
      r15.z = (uint)r15.z;
      r15.z = (int)r15.z + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.w, r15.z, l(0), t23.xxxx
    r15.w = samp0[]..swiz;
      r16.w = (int)r15.w & 0x40000000;
      r17.x = (uint)r15.w << 2;
      if (r16.w == 0) {
        r16.w = (int)r15.w & 0x01ffffff;
        r18.x = (int)r15.z + (int)r16.w;
        r15.z = (uint)r15.w >> 25;
        r15.z = (uint)r15.z;
        r16.xyz = r16.xyz * r15.zzz;
        r16.xyz = frac(r16.xyz);
        r16.xyz = float3(128,128,128) * r16.xyz;
        r16.xyz = (uint3)r16.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
      r18.z = samp0[]..swiz;
        r15.zw = (uint2)r16.zy >> int2(6,6);
        r16.w = (int)r18.z & 0xc0000000;
        r17.y = (int)r18.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.y, r17.y, l(0), t23.xxxx
      r17.y = samp0[]..swiz;
        r15.w = r15.w ? r18.z : r17.y;
        r17.y = (uint)r15.w >> 13;
        r15.z = r15.z ? r17.y : r15.w;
        r15.z = (int)r15.z & 8191;
        r19.x = (int)r15.z + (int)r18.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
      r19.z = samp0[]..swiz;
        r18.y = 0;
        r19.y = 1;
        r17.yzw = r16.www ? r18.xyz : r19.xyz;
        r19.yz = r16.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r15.zw = (uint2)r16.zy >> (uint2)r19.yy;
        r15.zw = (int2)r15.zw & int2(1,1);
        r18.w = (int)r17.w & 0xc0000000;
        r19.y = (int)r17.y + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.y, r19.y, l(0), t23.xxxx
      r19.y = samp0[]..swiz;
        r15.w = r15.w ? r17.w : r19.y;
        r19.y = (uint)r15.w >> 13;
        r15.z = r15.z ? r19.y : r15.w;
        r15.z = (int)r15.z & 8191;
        r19.x = (int)r15.z + (int)r17.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.w, r19.x, l(0), t23.xxxx
      r19.w = samp0[]..swiz;
        r17.yzw = r18.www ? r17.yzw : r19.xzw;
        r17.yzw = r16.www ? r18.xyz : r17.yzw;
        r15.z = (int)r17.w & 0xc0000000;
        if (r15.z == 0) {
          r15.z = (int)-r17.z + 6;
          r15.zw = (uint2)r16.zy >> (uint2)r15.zz;
          r16.w = (int)r17.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r15.w = (((uint)r15.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r15.z = (((uint)r15.z << 0) & bitmask.z) | ((uint)r15.w & ~bitmask.z);
          r15.z = (int)r15.z * 10;
          r15.z = (uint)r16.w >> (uint)r15.z;
          r15.z = (int)r15.z & 1023;
          r18.x = (int)r15.z + (int)r17.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.x, l(0), t23.xxxx
        r18.w = samp0[]..swiz;
          r18.yz = (int2)r17.zz + int2(1,2);
          r15.z = (int)-r18.y + 6;
          r15.zw = (uint2)r16.zy >> (uint2)r15.zz;
          r16.w = (int)r18.w & 0xc0000000;
          r17.z = (int)r18.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r15.w = (((uint)r15.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r15.z = (((uint)r15.z << 0) & bitmask.z) | ((uint)r15.w & ~bitmask.z);
          r15.z = (int)r15.z * 10;
          r15.z = (uint)r17.z >> (uint)r15.z;
          r15.z = (int)r15.z & 1023;
          r19.x = (int)r15.z + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
        r19.z = samp0[]..swiz;
          r19.y = r18.z;
          r19.xyz = r16.www ? r18.xyw : r19.xyz;
          r15.z = (int)-r19.y + 6;
          r15.zw = (uint2)r16.zy >> (uint2)r15.zz;
          r17.z = (int)r19.z & 0xc0000000;
          r18.y = (int)r19.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r15.w = (((uint)r15.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r15.z = (((uint)r15.z << 0) & bitmask.z) | ((uint)r15.w & ~bitmask.z);
          r15.z = (int)r15.z * 10;
          r15.z = (uint)r18.y >> (uint)r15.z;
          r15.z = (int)r15.z & 1023;
          r20.x = (int)r15.z + (int)r19.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.y, r20.x, l(0), t23.xxxx
        r20.y = samp0[]..swiz;
          r15.zw = r17.zz ? r19.xz : r20.xy;
          r17.yw = r16.ww ? r18.xw : r15.zw;
        }
        r15.z = (int)r17.w & 0xc0000000;
        if (r15.z == 0) {
          if (14 == 0) r15.w = 0; else if (14+15 < 32) {           r15.w = (uint)r17.w << (32-(14 + 15)); r15.w = (uint)r15.w >> (32-14);          } else r15.w = (uint)r17.w >> 15;
          r15.w = (uint)r15.w;
          r15.w = sunConstants.sstLightingConstants.constants.spanInInches * r15.w;
          r15.w = 6.10388815e-05 * r15.w;
          r18.xy = (int2)r17.ww & int2(32767,536870912);
          r16.w = (uint)r18.x;
          r16.w = sunConstants.sstLightingConstants.constants.spanInInches * r16.w;
          r16.w = 3.05185094e-05 * r16.w;
          r17.z = (int)r16.y & 3;
          r17.z = (int)r17.z + (int)r17.y;
          r17.z = (int)r17.z + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.z, l(0), t23.xxxx
        r17.z = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r18.x = (((uint)r16.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.z = ((~(-1 << 2)) << 1) & 0xffffffff;  r18.z = (((uint)r16.y << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.w = ((~(-1 << 1)) << 4) & 0xffffffff;  r18.w = (((uint)r16.z << 4) & bitmask.w) | ((uint)0 & ~bitmask.w);
          r16.x = (uint)r17.z >> (uint)r18.x;
          r16.x = (int)r16.x & 255;
          r16.x = (uint)r16.x;
          r16.x = r16.x * r16.w;
          r16.x = r16.x * 0.00392156886 + r15.w;
          r16.y = (int)r18.z + 1;
          if (1 == 0) r16.z = 0; else if (1+1 < 32) {           r16.z = (uint)r16.z << (32-(1 + 1)); r16.z = (uint)r16.z >> (32-1);          } else r16.z = (uint)r16.z >> 1;
          r16.y = (int)r16.z + (int)r16.y;
          r16.y = (int)r16.y + (int)r17.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.y, r16.y, l(0), t23.xxxx
        r16.y = samp0[]..swiz;
          r16.y = (uint)r16.y >> (uint)r18.w;
          r16.y = (int)r16.y & 0x0000ffff;
          r16.y = (uint)r16.y;
          r16.y = r16.y * r16.w;
          r15.w = r16.y * 1.52590219e-05 + r15.w;
          r17.x = r18.y ? r16.x : r15.w;
        } else {
          r15.w = (int)r17.w & 0x80000000;
          r16.x = (int)r17.y + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.x, r16.x, l(0), t23.xxxx
        r16.x = samp0[]..swiz;
          r15.w = r15.w ? r16.x : 0;
          r16.x = (uint)r17.w << 2;
          r16.y = (uint)r15.w >> 16;
          r16.y = f16tof32(r16.y);
          r15.w = (int)r15.w & 0x0000ffff;
          r15.w = f16tof32(r15.w);
          r16.x = r11.y * r16.y + r16.x;
          r15.w = r11.z * r15.w + r16.x;
          r17.x = r15.z ? r15.w : r17.x;
        }
      }
      r11.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r11.w;
      r11.w = cmp(r17.x < r11.w);
      r14.y = r11.w ? 0 : 1;
    }
    if (r15.y == 0) {
      if (enableDitheredShadow == 0) {
        r11.w = (uint)r9.w;
        r15.yz = -sunConstants.splitPinTransform[r11.w].xy + r11.yz;
        r15.yz = sunConstants.splitPinTransform[r11.w].zz * r15.yz;
        r16.xy = r15.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r11.w = (int16)sunConstants.splitArrayOffset;
        r16.z = r11.w + r9.w;
        r11.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r7.w).x;
        r15.y = gTransShadowmapArray.SampleLevel(samp0_s, r16.xyz, 0).x;
        r11.w = r15.y + r11.w;
        r11.w = saturate(-1 + r11.w);
        r15.y = r11.w * r11.w;
        r14.y = r15.y * r11.w;
      }
      if (enableDitheredShadow != 0) {
        r16.x = -r8.x;
        r11.w = (uint)r9.w;
        r9.w = 1 + r9.w;
        r9.w = min(2, r9.w);
        r9.w = (uint)r9.w;
        r15.x = 1 + -r15.x;
        r15.x = 28 * r15.x;
        r15.x = (uint)r15.x;
        r15.yz = -sunConstants.splitPinTransform[r11.w].xy + r11.yz;
        r15.yz = sunConstants.splitPinTransform[r11.w].zz * r15.yz;
        r15.yz = r15.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r11.yz = -sunConstants.splitPinTransform[r9.w].xy + r11.yz;
        r11.yz = sunConstants.splitPinTransform[r9.w].zz * r11.yz;
        r11.yz = r11.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r16.y = r9.x;
        r16.z = r8.x;
        r15.w = 0;
        r16.w = 0;
        while (true) {
          r17.x = cmp((uint)r16.w >= 8);
          if (r17.x != 0) break;
          r17.x = cmp((uint)r15.x < (uint)r16.w);
          r17.yz = r17.xx ? r11.yz : r15.yz;
          r17.w = r17.x ? sunConstants.splitPinTransform[r9.w].w : sunConstants.splitPinTransform[r11.w].w;
          r17.x = r17.x ? r9.w : r11.w;
          r18.x = dot(icb[r16.w+0].yx, r16.xy);
          r18.y = dot(icb[r16.w+0].yx, r16.yz);
          r18.xy = r18.xy * r17.ww + r17.yz;
          r17.x = (int)r17.x + (int16)sunConstants.splitArrayOffset;
          r18.z = (uint)r17.x;
          r17.x = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r7.w).x;
          r17.y = gTransShadowmapArray.SampleLevel(samp0_s, r18.xyz, 0).x;
          r17.x = r17.x + r17.y;
          r17.x = saturate(-1 + r17.x);
          r15.w = r17.x * 0.125 + r15.w;
          r16.w = (int)r16.w + 1;
        }
        r7.w = r15.w * r15.w;
        r14.y = r7.w * r15.w;
      }
    }
  }
  r7.w = viewmodelSunShadowRaw & 0x0000ffff;
  if (r7.w != 0) {
    r7.w = (int)r7.w + numLights;
    r7.w = (int)r7.w + -1;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.w, r7.w, l(52), t12.xxxx
  r9.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r7.w, l(68), t12.xyzw
  r15.x = samp0[]..swiz;
  r15.y = samp0[]..swiz;
  r15.z = samp0[]..swiz;
  r15.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r7.w, l(84), t12.xyzw
  r16.x = samp0[]..swiz;
  r16.y = samp0[]..swiz;
  r16.z = samp0[]..swiz;
  r16.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r7.w, l(132), t12.xyzw
  r17.x = samp0[]..swiz;
  r17.y = samp0[]..swiz;
  r17.z = samp0[]..swiz;
  r17.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r7.w, l(148), t12.xyzw
  r18.x = samp0[]..swiz;
  r18.y = samp0[]..swiz;
  r18.z = samp0[]..swiz;
  r18.w = samp0[]..swiz;
    r11.y = abs(r5.w) * -0.200000003 + 0.400000006;
    r11.z = cmp(r5.w < 0);
    r11.y = r11.z ? -r11.y : r11.y;
    r19.xyz = r2.xyz * r11.yyy + v5.xyz;
    r19.w = 1;
    r15.x = dot(r15.xyzw, r19.xyzw);
    r15.y = dot(r16.xyzw, r19.xyzw);
    r11.yz = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r11.yz = r11.yz + r18.zw;
    r11.yz = r11.yz * r18.xy;
    r15.xy = r9.ww / r17.xz;
    r15.zw = float2(1,1) + -r15.xy;
    r15.zw = cmp(r11.yz >= r15.zw);
    r15.xy = cmp(r15.xy >= r11.yz);
    r15.xy = (int2)r15.xy | (int2)r15.zw;
    r11.w = (int)r15.y | (int)r15.x;
    if (r11.w == 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.w, r7.w, l(28), t12.xxxx
    r11.w = samp0[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r7.w, l(100), t12.xyzw
    r15.x = samp0[]..swiz;
    r15.y = samp0[]..swiz;
    r15.z = samp0[]..swiz;
    r15.w = samp0[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xy, r7.w, l(164), t12.xyxx
    r16.x = samp0[]..swiz;
    r16.y = samp0[]..swiz;
      r7.w = dot(r15.xyzw, r19.xyzw);
      r11.yz = saturate(r11.yz);
      r15.xy = r11.yz * r17.xz + r17.yw;
      r7.w = r7.w + r16.x;
      r7.w = r7.w / r16.y;
      r7.w = max(6.10351563e-05, r7.w);
      r11.y = (int)r11.w & 0x0000ffff;
      if (enableDitheredShadow != 0) {
        r16.x = -r8.x;
        r17.z = (uint)r11.y;
        r16.y = r9.x;
        r16.z = r8.x;
        r11.zw = float2(0,0);
        while (true) {
          r15.w = cmp((int)r11.w >= 8);
          if (r15.w != 0) break;
          r18.x = dot(icb[r11.w+0].yx, r16.xy);
          r18.y = dot(icb[r11.w+0].yx, r16.yz);
          r17.xy = r18.xy * r9.ww + r15.xy;
          r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r7.w).x;
          r11.z = r15.w * 0.125 + r11.z;
          r11.w = (int)r11.w + 1;
        }
      } else {
        r15.z = (uint)r11.y;
        r11.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r7.w).x;
      }
      r7.w = r11.z * r11.z;
      r7.w = r7.w * r11.z;
    } else {
      r7.w = 1;
    }
    r14.y = r14.y * r7.w;
  }
  r7.w = cmp(0 < abs(r5.w));
  if (r7.w != 0) {
    r7.w = cmp(0 < r14.y);
    if (r7.w != 0) {
      r7.w = sunConstants.specScale * 0.166666672;
      if (sunConstants.sunCookieIndex != 0) {
        r13.w = 1;
        r9.w = dot(sunConstants.sunCookieTransform[0].xyzw, r13.xyzw);
        r11.y = dot(sunConstants.sunCookieTransform[1].xyzw, r13.xyzw);
        r15.x = frac(r9.w);
        r15.y = frac(r11.y);
        r9.w = -1 + (int14)sunConstants.sunCookieIndex;
        r15.z = (uint)r9.w;
        r11.yzw = gCookieArray.SampleLevel(samplerLinear_s, r15.xyz, 0).xyz;
        r11.yzw = float3(-1,-1,-1) + r11.yzw;
        r11.yzw = sunConstants.sunCookieIntensity * r11.yzw + float3(1,1,1);
        r11.yzw = sunConstants.color.xyz * r11.yzw;
      } else {
        r11.yzw = sunConstants.color.xyz;
      }
      r9.w = -r4.w * 0.5 + 1;
      r9.w = -abs(r5.w) * r9.w + 1;
      r9.w = r9.w * r9.w;
      r9.w = -r9.w * 0.620000005 + 0.620000005;
      r9.w = r9.w + -abs(r5.w);
      r9.w = r9.w * 0.816496611 + abs(r5.w);
      r13.w = cmp(0 < r5.w);
      r5.w = saturate(r5.w);
      r15.xyz = -v5.xyz * r3.www + sunConstants.wldDir.xyz;
      r3.w = dot(r15.xyz, r15.xyz);
      r3.w = rsqrt(r3.w);
      r15.xyz = r15.xyz * r3.www;
      r3.w = dot(r2.xyz, r15.xyz);
      r15.w = dot(r15.xyz, r7.xyz);
      r16.x = r1.y * r1.z;
      r16.x = sqrt(r16.x);
      r16.y = dot(r15.xyz, r4.xyz);
      r15.x = dot(r15.xyz, r5.xyz);
      r15.y = r16.y * r16.y;
      r15.x = r15.x * r15.x;
      r15.xy = r15.xy / r1.zy;
      r15.x = r15.y + r15.x;
      r3.w = abs(r3.w) * abs(r3.w) + r15.x;
      r15.x = r5.w * r8.z + r8.w;
      r3.w = r3.w * r3.w;
      r3.w = r3.w * r16.x;
      r3.w = r3.w * r15.x;
      r3.w = rcp(r3.w);
      r5.w = r5.w * r7.w;
      r3.w = r5.w * r3.w;
      r5.w = saturate(1 + -r15.w);
      r7.w = r5.w * r5.w;
      r7.w = r7.w * r7.w;
      r5.w = r7.w * r5.w;
      r5.w = r5.w * r3.w;
      r7.w = r13.w ? r9.w : 0;
      r15.xyz = r13.www ? float3(0,0,0) : r9.www;
      r16.xy = r13.ww ? r5.ww : 0;
      r17.xyz = r13.www ? r3.www : 0;
      r3.w = dot(r11.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r3.w = r14.y * r3.w;
      r14.x = 1;
      r5.w = sunConstants.wldDir.x;
      r16.zw = sunConstants.wldDir.yz;
      r18.xy = r7.ww;
      r9.w = r16.y;
    } else {
      r14.xy = float2(0,0);
      r3.w = 0;
      r11.yzw = float3(0,0,0);
      r5.w = 0;
      r18.xy = float2(0,0);
      r15.xyz = float3(0,0,0);
      r7.w = 0;
      r17.xyz = float3(0,0,0);
      r9.w = 0;
      r16.xyzw = float4(0,0,0,0);
    }
  } else {
    r14.xy = float2(0,0);
    r3.w = 0;
    r11.yzw = float3(0,0,0);
    r5.w = 0;
    r18.xy = float2(0,0);
    r15.xyz = float3(0,0,0);
    r7.w = 0;
    r17.xyz = float3(0,0,0);
    r9.w = 0;
    r16.xyzw = float4(0,0,0,0);
  }
  r1.w = min(15, r1.w);
  r1.w = (uint)r1.w;
  r19.xy = (uint2)r6.xy >> int2(6,6);
  r19.z = (uint)r1.w << 4;
  r20.x = -r8.x;
  r1.w = -r4.w * 0.5 + 1;
  r4.w = r1.y * r1.z;
  r4.w = sqrt(r4.w);
  r21.xy = float2(0,0);
  r22.w = 0;
  r23.xyz = v5.xyz;
  r23.w = 1;
  r24.w = 1;
  r20.z = r8.x;
  r25.z = 1;
  r26.w = 1;
  r20.yw = r9.xx;
  r8.y = r20.w;
  r27.w = 1;
  r9.y = r20.x;
  r9.z = r8.x;
  r28.x = r9.x;
  r28.y = r20.x;
  r28.z = r8.x;
  r29.xyz = float3(0,0,0);
  r30.xyz = float3(0,0,0);
  r31.xyz = float3(0,0,0);
  r32.xyz = float3(0,0,0);
  r33.xyz = r11.yzw;
  r34.x = r5.w;
  r34.yz = r16.zw;
  r35.xy = r18.xy;
  r35.z = r7.w;
  r36.xyz = r15.xyz;
  r37.xyz = r17.xyz;
  r38.x = r9.w;
  r38.yz = r16.xy;
  r6.x = enableDitheredShadow;
  r6.y = r3.w;
  r18.zw = r14.xy;
  r13.w = 0;
  while (true) {
    r15.w = cmp((uint)r13.w >= numLights);
    if (r15.w != 0) break;
    r21.z = (uint)r13.w >> 5;
    r22.xyz = (int3)r19.xyz + (int3)r21.xyz;
    r15.w = visibleLights.Load(r22.xyzw).x;
    r22.xyz = r29.xyz;
    r39.xyz = r30.xyz;
    r40.xyz = r31.xyz;
    r41.xyz = r32.xyz;
    r42.xyz = r33.xyz;
    r43.xyz = r34.xyz;
    r44.xyz = r35.xyz;
    r45.xyz = r37.xyz;
    r46.xyz = r38.xyz;
    r21.zw = r18.zw;
    r17.w = r6.x;
    r19.w = r6.y;
    r47.xyz = r36.xyz;
    r25.w = r15.w;
    while (true) {
      if (r25.w == 0) break;
      r28.w = firstbitlow((uint)r25.w);
      r29.w = 1 << (int)r28.w;
      r30.w = (int)r25.w & (int)r29.w;
      if (r30.w != 0) {
        r25.w = (int)r25.w ^ (int)r29.w;
        r28.w = (int)r13.w + (int)r28.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r48.xyzw, r28.w, l(0), t12.wxyz
      r48.x = samp0[]..swiz;
      r48.y = samp0[]..swiz;
      r48.z = samp0[]..swiz;
      r48.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r49.xyzw, r28.w, l(16), t12.zxyw
      r49.x = samp0[]..swiz;
      r49.y = samp0[]..swiz;
      r49.z = samp0[]..swiz;
      r49.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r50.xyzw, r28.w, l(32), t12.xyzw
      r50.x = samp0[]..swiz;
      r50.y = samp0[]..swiz;
      r50.z = samp0[]..swiz;
      r50.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r51.xyzw, r28.w, l(48), t12.xyzw
      r51.x = samp0[]..swiz;
      r51.y = samp0[]..swiz;
      r51.z = samp0[]..swiz;
      r51.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r52.xyzw, r28.w, l(64), t12.yzwx
      r52.x = samp0[]..swiz;
      r52.y = samp0[]..swiz;
      r52.z = samp0[]..swiz;
      r52.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r53.xyzw, r28.w, l(80), t12.xyzw
      r53.x = samp0[]..swiz;
      r53.y = samp0[]..swiz;
      r53.z = samp0[]..swiz;
      r53.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r54.xyzw, r28.w, l(96), t12.yzwx
      r54.x = samp0[]..swiz;
      r54.y = samp0[]..swiz;
      r54.z = samp0[]..swiz;
      r54.w = samp0[]..swiz;
        if (3 == 0) r29.w = 0; else if (3+24 < 32) {         r29.w = (uint)r49.w << (32-(3 + 24)); r29.w = (uint)r29.w >> (32-3);        } else r29.w = (uint)r49.w >> 24;
        switch (r29.w) {
          case 4 :          r29.w = cmp(0 < r54.x);
          r55.xy = r53.zw;
          r55.z = r54.w;
          r56.xyz = -r55.xyz * float3(0.5,0.5,0.5) + r48.yzw;
          r57.xyz = -v5.xyz + r56.xyz;
          r30.w = dot(r55.xyz, r57.xyz);
          r31.w = saturate(-r30.w / r54.x);
          r58.xyz = r31.www * r55.xyz + r56.xyz;
          r58.xyz = r29.www ? r58.xyz : r48.yzw;
          r58.xyz = -v5.xyz + r58.xyz;
          r32.w = dot(r58.xyz, r58.xyz);
          r33.w = rsqrt(r32.w);
          r58.xyz = r58.xyz * r33.www;
          r33.w = dot(r2.xyz, r58.xyz);
          r34.w = cmp(0 < abs(r33.w));
          if (r34.w != 0) {
            r34.w = sqrt(r32.w);
            r35.w = r51.x * r51.x;
            r32.w = r35.w / r32.w;
            r32.w = min(1, r32.w);
            r59.xy = saturate(r34.ww * r50.xz + r50.yw);
            r59.zw = r59.xy * r59.xy;
            r59.xy = r59.xy * float2(-2,-2) + float2(3,3);
            r59.xy = r59.zw * r59.xy;
            r32.w = r59.x * r32.w;
            r59.x = r32.w * r59.y;
            r32.w = cmp(0 < r59.x);
            if (r32.w != 0) {
              if (3 == 0) r59.z = 0; else if (3+27 < 32) {               r59.z = (uint)r49.w << (32-(3 + 27)); r59.z = (uint)r59.z >> (32-3);              } else r59.z = (uint)r49.w >> 27;
              if (4 == 0) r59.w = 0; else if (4+20 < 32) {               r59.w = (uint)r49.w << (32-(4 + 20)); r59.w = (uint)r59.w >> (32-4);              } else r59.w = (uint)r49.w >> 20;
              r32.w = cmp((int)r59.z != 1);
              if (r32.w != 0) {
                r32.w = abs(r33.w) * -0.200000003 + 0.400000006;
                r34.w = cmp(r33.w < 0);
                r32.w = r34.w ? -r32.w : r32.w;
                r60.xyz = r2.xyz * r32.www + v5.xyz;
                r60.xyz = r60.xyz + -r52.xyz;
                r32.w = max(abs(r60.y), abs(r60.z));
                r32.w = max(abs(r60.x), r32.w);
                r32.w = r53.x / r32.w;
                r32.w = r32.w + r53.y;
                r34.w = dot(r60.xyz, r60.xyz);
                r34.w = rsqrt(r34.w);
                r32.w = max(6.10351563e-05, r32.w);
                r35.w = (int)r49.w & 0x0000ffff;
                r61.w = (uint)r35.w;
                r59.y = 0;
                r35.w = 0;
                while (true) {
                  r36.w = cmp((int)r35.w >= 8);
                  if (r36.w != 0) break;
                  r62.y = dot(icb[r35.w+0].yx, r20.xy);
                  r62.z = dot(icb[r35.w+0].yx, r20.yz);
                  r62.yz = r62.yz * r51.yy;
                  r62.x = r62.y * r11.x;
                  r62.w = r62.y * r10.x;
                  r61.xyz = r60.xyz * r34.www + r62.xzw;
                  r36.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r61.xyzw, r32.w).x;
                  r59.y = r36.w * 0.125 + r59.y;
                  r35.w = (int)r35.w + 1;
                }
              } else {
                r59.y = 1;
              }
              if (r59.w != 0) {
                r32.w = (int)r59.w + numLights;
                r32.w = (int)r32.w + -1;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.w, r32.w, l(52), t12.xxxx
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r60.xyzw, r32.w, l(100), t12.xyzw
              r60.x = samp0[]..swiz;
              r60.y = samp0[]..swiz;
              r60.z = samp0[]..swiz;
              r60.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r61.xyzw, r32.w, l(116), t12.xyzw
              r61.x = samp0[]..swiz;
              r61.y = samp0[]..swiz;
              r61.z = samp0[]..swiz;
              r61.w = samp0[]..swiz;
                r35.w = abs(r33.w) * -0.200000003 + 0.400000006;
                r36.w = cmp(r33.w < 0);
                r35.w = r36.w ? -r35.w : r35.w;
                r24.xyz = r2.xyz * r35.www + v5.xyz;
                r35.w = dot(r60.xyzw, r24.xyzw);
                r36.w = dot(r61.xyzw, r24.xyzw);
                r37.w = cmp(r36.w < r35.w);
                if (r37.w == 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r60.xyzw, r32.w, l(68), t12.xyzw
                r60.x = samp0[]..swiz;
                r60.y = samp0[]..swiz;
                r60.z = samp0[]..swiz;
                r60.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r61.xyzw, r32.w, l(84), t12.xyzw
                r61.x = samp0[]..swiz;
                r61.y = samp0[]..swiz;
                r61.z = samp0[]..swiz;
                r61.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r62.xyzw, r32.w, l(132), t12.xyzw
                r62.x = samp0[]..swiz;
                r62.y = samp0[]..swiz;
                r62.z = samp0[]..swiz;
                r62.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r63.xyzw, r32.w, l(148), t12.xyzw
                r63.x = samp0[]..swiz;
                r63.y = samp0[]..swiz;
                r63.z = samp0[]..swiz;
                r63.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r59.zw, r32.w, l(164), t12.xxxy
                r59.z = samp0[]..swiz;
                r59.w = samp0[]..swiz;
                  r60.x = dot(r60.xyzw, r24.xyzw);
                  r60.y = dot(r61.xyzw, r24.xyzw);
                  r24.xy = r60.xy / r36.ww;
                  r24.xy = r24.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                  r24.xy = r24.xy + r63.zw;
                  r24.xy = r24.xy * r63.xy;
                  r60.xy = r34.ww / r62.xz;
                  r60.zw = float2(1,1) + -r60.xy;
                  r60.zw = cmp(r24.xy >= r60.zw);
                  r60.xy = cmp(r60.xy >= r24.xy);
                  r60.xy = (int2)r60.xy | (int2)r60.zw;
                  r24.z = (int)r60.y | (int)r60.x;
                  r24.xy = saturate(r24.xy);
                  r60.xy = r24.xy * r62.xz + r62.yw;
                  r24.x = r59.w * r36.w;
                  r24.y = r59.z * r36.w + r35.w;
                  r24.x = r24.y / r24.x;
                } else {
                  r24.z = -1;
                }
                r24.y = (int)r37.w | (int)r24.z;
                if (r24.y == 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.y, r32.w, l(28), t12.xxxx
                r24.y = samp0[]..swiz;
                  r24.x = max(6.10351563e-05, r24.x);
                  r24.y = (int)r24.y & 0x0000ffff;
                  if (r17.w != 0) {
                    r61.z = (uint)r24.y;
                    r24.z = 0;
                    r32.w = 0;
                    while (true) {
                      r35.w = cmp((int)r32.w >= 8);
                      if (r35.w != 0) break;
                      r62.x = dot(icb[r32.w+0].yx, r20.xw);
                      r62.y = dot(icb[r32.w+0].xy, r8.xy);
                      r61.xy = r62.xy * r34.ww + r60.xy;
                      r35.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r61.xyz, r24.x).x;
                      r24.z = r35.w * 0.125 + r24.z;
                      r32.w = (int)r32.w + 1;
                    }
                  } else {
                    r60.z = (uint)r24.y;
                    r24.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r60.xyz, r24.x).x;
                  }
                  r24.x = r24.z * r24.z;
                  r24.x = r24.x * r24.z;
                } else {
                  r24.x = 1;
                }
                r59.y = r59.y * r24.x;
              }
              r24.x = r59.x * r59.y;
              r24.y = cmp(0 < r24.x);
              if (r24.y != 0) {
                r24.y = 0.166666672 * r49.x;
                r32.w = dot(r55.xyz, r12.xyz);
                r34.w = dot(r12.xyz, r57.xyz);
                r35.w = -r32.w * r32.w + r54.x;
                r30.w = r32.w * r34.w + -r30.w;
                r30.w = saturate(r30.w / r35.w);
                r32.w = r35.w / r54.x;
                r32.w = 10 * r32.w;
                r32.w = min(1, r32.w);
                r30.w = r30.w + -r31.w;
                r30.w = r32.w * r30.w + r31.w;
                r55.xyz = r30.www * r55.xyz + r56.xyz;
                r55.xyz = r29.www ? r55.xyz : r48.yzw;
                r55.xyz = -v5.xyz + r55.xyz;
                r29.w = dot(r55.xyz, r55.xyz);
                r29.w = rsqrt(r29.w);
                r56.xyz = r55.xyz * r29.www;
                r30.w = -abs(r33.w) * r1.w + 1;
                r30.w = r30.w * r30.w;
                r30.w = -r30.w * 0.620000005 + 0.620000005;
                r30.w = r30.w + -abs(r33.w);
                r30.w = r30.w * 0.816496611 + abs(r33.w);
                r31.w = cmp(0 < r33.w);
                r32.w = saturate(dot(r2.xyz, r56.xyz));
                r55.xyz = r55.xyz * r29.www + r7.xyz;
                r29.w = dot(r55.xyz, r55.xyz);
                r29.w = rsqrt(r29.w);
                r55.xyz = r55.xyz * r29.www;
                r29.w = dot(r2.xyz, r55.xyz);
                r33.w = dot(r55.xyz, r7.xyz);
                r34.w = dot(r55.xyz, r4.xyz);
                r35.w = dot(r55.xyz, r5.xyz);
                r34.w = r34.w * r34.w;
                r34.w = r34.w / r1.y;
                r35.w = r35.w * r35.w;
                r35.w = r35.w / r1.z;
                r34.w = r35.w + r34.w;
                r29.w = abs(r29.w) * abs(r29.w) + r34.w;
                r34.w = r32.w * r8.z + r8.w;
                r29.w = r29.w * r29.w;
                r29.w = r29.w * r4.w;
                r29.w = r29.w * r34.w;
                r29.w = rcp(r29.w);
                r24.y = r32.w * r24.y;
                r24.y = r29.w * r24.y;
                r29.w = saturate(1 + -r33.w);
                r32.w = r29.w * r29.w;
                r32.w = r32.w * r32.w;
                r29.w = r32.w * r29.w;
                r29.w = r29.w * r24.y;
                r55.xyz = r31.www ? r30.www : 0;
                r30.w = r31.w ? 0 : r30.w;
                r56.xyz = r31.www ? r29.www : 0;
                r24.y = r31.w ? r24.y : 0;
                r49.x = r48.x;
                r29.w = dot(r49.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r29.w = r29.w * r24.x;
                r31.w = cmp(r19.w < r29.w);
                if (r31.w != 0) {
                  r31.w = r21.z * r21.w;
                  r57.xyz = r31.www * r42.xyz;
                  r22.xyz = r57.xyz * r44.xyz + r22.xyz;
                  r39.xyz = r57.xyz * r47.xyz + r39.xyz;
                  r41.xyz = r57.xyz * r45.xyz + r41.xyz;
                  r40.xyz = r57.xyz * r46.xyz + r40.xyz;
                  r45.xyz = r24.yyy;
                  r19.w = r29.w;
                  r47.xyz = r30.www;
                  r42.xyz = r49.xyz;
                  r43.xyz = r58.xyz;
                  r44.xyz = r55.xyz;
                  r46.xyz = r56.xyz;
                  r21.zw = r59.xy;
                } else {
                  r55.xyw = r49.xyz * r24.xxx;
                  r22.xyz = r55.xyw * r55.zzz + r22.xyz;
                  r39.xyz = r55.xyw * r30.www + r39.xyz;
                  r41.xyz = r55.xyw * r24.yyy + r41.xyz;
                  r40.xyz = r55.xyw * r56.xyz + r40.xyz;
                }
              }
            }
          }
          break;
          case 2 :          r55.xy = r51.zw;
          r55.z = r52.w;
          r55.xyz = -v5.xyz + r55.xyz;
          r24.x = dot(r55.xyz, r55.xyz);
          r24.x = rsqrt(r24.x);
          r56.xyz = r55.xyz * r24.xxx;
          r24.y = dot(r2.xyz, r56.xyz);
          r29.w = cmp(0 < abs(r24.y));
          if (r29.w != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r57.xyzw, r28.w, l(112), t12.yzwx
          r57.x = samp0[]..swiz;
          r57.y = samp0[]..swiz;
          r57.z = samp0[]..swiz;
          r57.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r58.xyzw, r28.w, l(128), t12.zxyw
          r58.x = samp0[]..swiz;
          r58.y = samp0[]..swiz;
          r58.z = samp0[]..swiz;
          r58.w = samp0[]..swiz;
            r60.xyz = r57.xyz;
            r60.w = r58.y;
            r29.w = dot(r60.xyzw, r23.xyzw);
            r30.w = cmp(r29.w < 1);
            if (r30.w != 0) {
              r59.xzw = float3(1,1,1);
              r61.x = 0;
            } else {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r62.xyzw, r28.w, l(172), t12.yzwx
            r62.x = samp0[]..swiz;
            r62.y = samp0[]..swiz;
            r62.z = samp0[]..swiz;
            r62.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r63.xyzw, r28.w, l(188), t12.wxyz
            r63.x = samp0[]..swiz;
            r63.y = samp0[]..swiz;
            r63.z = samp0[]..swiz;
            r63.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r64.xyzw, r28.w, l(204), t12.xyzw
            r64.x = samp0[]..swiz;
            r64.y = samp0[]..swiz;
            r64.z = samp0[]..swiz;
            r64.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r30.w, r28.w, l(236), t12.xxxx
            r30.w = samp0[]..swiz;
              r65.xyz = -v5.xyz + r48.yzw;
              r31.w = r51.x * r51.x;
              r32.w = dot(r65.xyz, r65.xyz);
              r31.w = r31.w / r32.w;
              r31.w = min(1, r31.w);
              r50.xy = saturate(r29.ww * r50.xz + r50.yw);
              r50.zw = r50.xy * r50.xy;
              r50.xy = r50.xy * float2(-2,-2) + float2(3,3);
              r50.xy = r50.zw * r50.xy;
              r31.w = r50.x * r31.w;
              r31.w = r31.w * r50.y;
              r52.w = r53.x;
              r50.x = dot(r52.xyzw, r23.xyzw);
              r65.xyz = r53.yzw;
              r65.w = r54.w;
              r50.y = dot(r65.xyzw, r23.xyzw);
              r25.xy = r50.xy / r29.ww;
              r29.w = cmp(r62.w < 0.00048828125);
              if (r29.w != 0) {
                r63.y = r64.x;
                r50.xy = saturate(abs(r25.xy) * r63.zw + r63.xy);
                r50.zw = r50.xy * r50.xy;
                r50.xy = r50.xy * float2(-2,-2) + float2(3,3);
                r50.xy = r50.zw * r50.xy;
                r29.w = r50.x * r50.y;
              } else {
                r62.w = r63.y;
                r50.xyzw = saturate(r62.xyzw * abs(r25.yyxx));
                r50.xyzw = log2(r50.xyzw);
                r50.xyzw = r63.xxxx * r50.xyzw;
                r50.xyzw = exp2(r50.xyzw);
                r50.xy = r50.xy + r50.zw;
                r50.xy = log2(r50.xy);
                r50.xy = r64.xx * r50.xy;
                r50.xy = exp2(r50.xy);
                r32.w = r63.z * r50.x;
                r33.w = r63.w * r50.y + -1;
                r32.w = r63.w * r50.y + -r32.w;
                r32.w = saturate(r33.w / r32.w);
                r33.w = r32.w * r32.w;
                r32.w = r32.w * -2 + 3;
                r29.w = r33.w * r32.w;
              }
              r61.x = r31.w * r29.w;
              r29.w = r30.w ? 0.000000 : 0;
              if (r29.w != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r50.xyz, r28.w, l(220), t12.xyzx
              r50.x = samp0[]..swiz;
              r50.y = samp0[]..swiz;
              r50.z = samp0[]..swiz;
                r30.w = dot(r64.yzw, r25.xyz);
                r25.x = dot(r50.xyz, r25.xyz);
                r50.x = frac(r30.w);
                r50.y = frac(r25.x);
                r25.x = (int)r29.w + -1;
                r50.z = (uint)r25.x;
                r59.xzw = gCookieArray.SampleLevel(samplerLinear_s, r50.xyz, 0).xyz;
              } else {
                r59.xzw = float3(1,1,1);
              }
            }
            r48.yz = r49.yz;
            r48.xyz = r48.xyz * r59.xzw;
            r25.x = cmp(0 < r61.x);
            if (r25.x != 0) {
              if (3 == 0) r25.x = 0; else if (3+27 < 32) {               r25.x = (uint)r49.w << (32-(3 + 27)); r25.x = (uint)r25.x >> (32-3);              } else r25.x = (uint)r49.w >> 27;
              if (4 == 0) r25.y = 0; else if (4+20 < 32) {               r25.y = (uint)r49.w << (32-(4 + 20)); r25.y = (uint)r25.y >> (32-4);              } else r25.y = (uint)r49.w >> 20;
              r25.x = cmp((int)r25.x != 1);
              if (r25.x != 0) {
                r25.x = abs(r24.y) * -0.200000003 + 0.400000006;
                r29.w = cmp(r24.y < 0);
                r25.x = r29.w ? -r25.x : r25.x;
                r26.xyz = r2.xyz * r25.xxx + v5.xyz;
                r57.xyz = r54.xyz;
                r25.x = dot(r57.xyzw, r26.xyzw);
                r29.w = dot(r60.xyzw, r26.xyzw);
                r30.w = cmp(r29.w >= r25.x);
                if (r30.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r58.y, r28.w, l(144), t12.xxxx
                r58.y = samp0[]..swiz;
                  r52.w = r53.x;
                  r50.x = dot(r52.xyzw, r26.xyzw);
                  r54.xyz = r53.yzw;
                  r50.y = dot(r54.xyzw, r26.xyzw);
                  r26.xy = r50.xy / r29.ww;
                  r26.xy = saturate(r26.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                  r26.xy = r26.xy * r58.zw + r58.xy;
                  r25.x = r25.x / r29.w;
                  r25.x = max(6.10351563e-05, r25.x);
                  r28.w = (int)r49.w & 0x0000ffff;
                  if (r17.w != 0) {
                    r50.z = (uint)r28.w;
                    r29.w = 0;
                    r30.w = 0;
                    while (true) {
                      r31.w = cmp((int)r30.w >= 8);
                      if (r31.w != 0) break;
                      r52.x = dot(icb[r30.w+0].xy, r9.xy);
                      r52.y = dot(icb[r30.w+0].yx, r9.xz);
                      r50.xy = r52.xy * r51.yy + r26.xy;
                      r31.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r50.xyz, r25.x).x;
                      r29.w = r31.w * 0.125 + r29.w;
                      r30.w = (int)r30.w + 1;
                    }
                  } else {
                    r26.z = (uint)r28.w;
                    r29.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r25.x).x;
                  }
                  r25.x = r29.w * r29.w;
                  r61.y = r25.x * r29.w;
                } else {
                  r61.y = 1;
                }
              } else {
                r61.y = 1;
              }
              if (r25.y != 0) {
                r25.x = (int)r25.y + numLights;
                r25.x = (int)r25.x + -1;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r25.y, r25.x, l(52), t12.xxxx
              r25.y = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r50.xyzw, r25.x, l(68), t12.xyzw
              r50.x = samp0[]..swiz;
              r50.y = samp0[]..swiz;
              r50.z = samp0[]..swiz;
              r50.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r51.xyzw, r25.x, l(84), t12.xyzw
              r51.x = samp0[]..swiz;
              r51.y = samp0[]..swiz;
              r51.z = samp0[]..swiz;
              r51.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r52.xyzw, r25.x, l(100), t12.xyzw
              r52.x = samp0[]..swiz;
              r52.y = samp0[]..swiz;
              r52.z = samp0[]..swiz;
              r52.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r53.xyzw, r25.x, l(116), t12.xyzw
              r53.x = samp0[]..swiz;
              r53.y = samp0[]..swiz;
              r53.z = samp0[]..swiz;
              r53.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r54.xyzw, r25.x, l(132), t12.xyzw
              r54.x = samp0[]..swiz;
              r54.y = samp0[]..swiz;
              r54.z = samp0[]..swiz;
              r54.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r57.xyzw, r25.x, l(148), t12.xyzw
              r57.x = samp0[]..swiz;
              r57.y = samp0[]..swiz;
              r57.z = samp0[]..swiz;
              r57.w = samp0[]..swiz;
                r26.x = abs(r24.y) * -0.200000003 + 0.400000006;
                r26.y = cmp(r24.y < 0);
                r26.x = r26.y ? -r26.x : r26.x;
                r27.xyz = r2.xyz * r26.xxx + v5.xyz;
                r26.x = dot(r50.xyzw, r27.xyzw);
                r26.y = dot(r51.xyzw, r27.xyzw);
                r26.z = dot(r52.xyzw, r27.xyzw);
                r27.x = dot(r53.xyzw, r27.xyzw);
                r27.y = cmp(r27.x < r26.z);
                r26.xy = r26.xy / r27.xx;
                r26.xy = r26.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r26.xy = r26.xy + r57.zw;
                r26.xy = r26.xy * r57.xy;
                r49.yz = r25.yy / r54.xz;
                r50.xy = float2(1,1) + -r49.yz;
                r50.xy = cmp(r26.xy >= r50.xy);
                r49.yz = cmp(r49.yz >= r26.xy);
                r49.yz = (int2)r49.yz | (int2)r50.xy;
                r27.z = (int)r49.z | (int)r49.y;
                r27.y = (int)r27.y | (int)r27.z;
                if (r27.y == 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r27.y, r25.x, l(28), t12.xxxx
                r27.y = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r49.yz, r25.x, l(164), t12.xxyx
                r49.y = samp0[]..swiz;
                r49.z = samp0[]..swiz;
                  r26.xy = saturate(r26.xy);
                  r50.xy = r26.xy * r54.xz + r54.yw;
                  r25.x = r49.z * r27.x;
                  r26.x = r49.y * r27.x + r26.z;
                  r25.x = r26.x / r25.x;
                  r25.x = max(6.10351563e-05, r25.x);
                  r26.x = r27.y ? 0.000000 : 0;
                  if (r17.w != 0) {
                    r27.z = (uint)r26.x;
                    r26.yz = float2(0,0);
                    while (true) {
                      r28.w = cmp((int)r26.z >= 8);
                      if (r28.w != 0) break;
                      r51.x = dot(icb[r26.z+0].xy, r28.xy);
                      r51.y = dot(icb[r26.z+0].yx, r28.xz);
                      r27.xy = r51.xy * r25.yy + r50.xy;
                      r27.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r27.xyz, r25.x).x;
                      r26.y = r27.x * 0.125 + r26.y;
                      r26.z = (int)r26.z + 1;
                    }
                  } else {
                    r50.z = (uint)r26.x;
                    r26.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r50.xyz, r25.x).x;
                  }
                  r25.x = r26.y * r26.y;
                  r25.x = r25.x * r26.y;
                } else {
                  r25.x = 1;
                }
                r61.y = r61.y * r25.x;
              }
              r25.x = r61.x * r61.y;
              r25.y = cmp(0 < r25.x);
              if (r25.y != 0) {
                r25.y = 0.166666672 * r49.x;
                r26.x = -abs(r24.y) * r1.w + 1;
                r26.x = r26.x * r26.x;
                r26.x = -r26.x * 0.620000005 + 0.620000005;
                r26.x = r26.x + -abs(r24.y);
                r26.x = r26.x * 0.816496611 + abs(r24.y);
                r26.z = cmp(0 < r24.y);
                r24.y = saturate(r24.y);
                r27.xyz = r55.xyz * r24.xxx + r7.xyz;
                r24.x = dot(r27.xyz, r27.xyz);
                r24.x = rsqrt(r24.x);
                r27.xyz = r27.xyz * r24.xxx;
                r24.x = dot(r2.xyz, r27.xyz);
                r28.w = dot(r27.xyz, r7.xyz);
                r30.w = dot(r27.xyz, r4.xyz);
                r27.x = dot(r27.xyz, r5.xyz);
                r27.y = r30.w * r30.w;
                r27.x = r27.x * r27.x;
                r27.xy = r27.xy / r1.zy;
                r27.x = r27.y + r27.x;
                r24.x = abs(r24.x) * abs(r24.x) + r27.x;
                r27.x = r24.y * r8.z + r8.w;
                r24.x = r24.x * r24.x;
                r24.x = r24.x * r4.w;
                r24.x = r24.x * r27.x;
                r24.x = rcp(r24.x);
                r24.y = r24.y * r25.y;
                r24.x = r24.x * r24.y;
                r24.y = saturate(1 + -r28.w);
                r25.y = r24.y * r24.y;
                r25.y = r25.y * r25.y;
                r24.y = r25.y * r24.y;
                r24.y = r24.x * r24.y;
                r27.xyz = r26.zzz ? r26.xxx : 0;
                r25.y = r26.z ? 0 : r26.x;
                r49.xyz = r26.zzz ? r24.yyy : 0;
                r24.x = r26.z ? r24.x : 0;
                r24.y = dot(r48.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r24.y = r25.x * r24.y;
                r26.x = cmp(r19.w < r24.y);
                if (r26.x != 0) {
                  r26.x = r21.z * r21.w;
                  r50.xyz = r26.xxx * r42.xyz;
                  r22.xyz = r50.xyz * r44.xyz + r22.xyz;
                  r39.xyz = r50.xyz * r47.xyz + r39.xyz;
                  r41.xyz = r50.xyz * r45.xyz + r41.xyz;
                  r40.xyz = r50.xyz * r46.xyz + r40.xyz;
                  r45.xyz = r24.xxx;
                  r19.w = r24.y;
                  r47.xyz = r25.yyy;
                  r42.xyz = r48.xyz;
                  r43.xyz = r56.xyz;
                  r44.xyz = r27.xyz;
                  r46.xyz = r49.xyz;
                  r21.zw = r61.xy;
                } else {
                  r48.xyz = r25.xxx * r48.xyz;
                  r22.xyz = r48.xyz * r27.zzz + r22.xyz;
                  r39.xyz = r48.xyz * r25.yyy + r39.xyz;
                  r41.xyz = r48.xyz * r24.xxx + r41.xyz;
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
    r29.xyz = r22.xyz;
    r30.xyz = r39.xyz;
    r31.xyz = r40.xyz;
    r32.xyz = r41.xyz;
    r33.xyz = r42.xyz;
    r34.xyz = r43.xyz;
    r35.xyz = r44.xyz;
    r37.xyz = r45.xyz;
    r38.xyz = r46.xyz;
    r18.zw = r21.zw;
    r6.y = r19.w;
    r36.xyz = r47.xyz;
    r13.w = (int)r13.w + 32;
  }
  r4.z = 0;
  r4.xy = float2(1,-1) * r34.yx;
  r1.yzw = r34.zxy * r4.yzx;
  r1.yzw = r34.yzx * r4.zxy + -r1.yzw;
  r5.xyz = viewProjectionMatrix._m10_m11_m13 * r13.yyy;
  r5.xyz = r13.xxx * viewProjectionMatrix._m00_m01_m03 + r5.xyz;
  r5.xyz = r13.zzz * viewProjectionMatrix._m20_m21_m23 + r5.xyz;
  r5.xyz = r5.xyz + r10.yzw;
  r8.z = rcp(r5.z);
  r5.xy = r8.zz * r5.xy;
  r8.xy = r5.xy * float2(0.5,-0.5) + float2(0.5,0.5);
  r5.xyw = r34.xyz * float3(2.4000001,2.4000001,2.4000001) + r13.xyz;
  r3.w = dot(v0.xy, float2(0.0671105608,0.00583714992));
  r3.w = frac(r3.w);
  r3.w = 52.9829178 * r3.w;
  r3.w = frac(r3.w);
  r4.w = 3.14159989 * r3.w;
  r4.w = gameTick.w * 0.5 + r4.w;
  sincos(r4.w, r6.x, r9.x);
  r9.yzw = r6.xxx * r1.yzw;
  r9.xyz = r9.xxx * r4.xyz + r9.yzw;
  r9.xyz = r9.xyz * float3(0.119999997,0.119999997,0.119999997) + r5.xyw;
  r11.xyz = viewProjectionMatrix._m10_m11_m13 * r9.yyy;
  r9.xyw = r9.xxx * viewProjectionMatrix._m00_m01_m03 + r11.xyz;
  r9.xyz = r9.zzz * viewProjectionMatrix._m20_m21_m23 + r9.xyw;
  r9.xyz = r9.xyz + r10.yzw;
  r6.xy = float2(0.5,-0.5) * r9.xy;
  r9.z = rcp(r9.z);
  r9.xy = r6.xy * r9.zz + float2(0.5,0.5);
  r11.xyz = -r8.xyz;
  r9.xyz = r11.xyz + r9.xyz;
  r4.w = 3.14159989 + r4.w;
  sincos(r4.w, r6.x, r10.x);
  r1.yzw = r6.xxx * r1.yzw;
  r1.yzw = r10.xxx * r4.xyz + r1.yzw;
  r1.yzw = r1.yzw * float3(0.119999997,0.119999997,0.119999997) + r5.xyw;
  r4.xyz = viewProjectionMatrix._m10_m11_m13 * r1.zzz;
  r4.xyz = r1.yyy * viewProjectionMatrix._m00_m01_m03 + r4.xyz;
  r1.yzw = r1.www * viewProjectionMatrix._m20_m21_m23 + r4.xyz;
  r1.yzw = r1.yzw + r10.yzw;
  r1.yz = float2(0.5,-0.5) * r1.yz;
  r4.z = rcp(r1.w);
  r4.xy = r1.yz * r4.zz + r11.xy;
  r11.w = 0.5;
  r1.yzw = r4.xyz + r11.wwz;
  r4.x = dot(renderTargetSize.zw, renderTargetSize.zw);
  r4.y = dot(r9.xy, r9.xy);
  r4.xy = sqrt(r4.xy);
  r4.y = rcp(r4.y);
  r4.x = r4.x * r4.y;
  r4.yz = r3.ww * float2(0.5,0.5) + float2(0.333333343,1);
  r4.yz = float2(0.117647059,0.117647059) * r4.yz;
  r4.yz = r4.yz * r4.yz;
  x1[0].x = r4.y;
  r5.xyw = r9.xyz * r4.yyy + r8.xyz;
  r6.xy = cmp(r4.xx < r4.yz);
  r5.xy = renderTargetSize.xy * r5.xy;
  r10.xy = (int2)r5.xy;
  r10.zw = float2(0,0);
  r4.w = floatZSampler.Load(r10.xyz).x;
  r5.x = cmp(r4.w >= 0.984375);
  r5.y = 1.01587307 * r4.w;
  r4.w = r4.w * 64 + -63;
  r4.w = r5.x ? r4.w : r5.y;
  r4.w = max(9.99999994e-09, r4.w);
  r4.w = rcp(r4.w);
  x2[0].x = r4.w;
  r5.x = 0.0419999994 + r4.w;
  r5.x = r5.w * r5.x;
  r5.x = cmp(1 < r5.x);
  r5.x = r5.x ? 1.000000 : 0;
  r5.x = r6.x ? r5.x : 1;
  x0[0].x = r5.x;
  x1[1].x = r4.z;
  r10.xyz = r1.yzw * r4.zzz + r8.xyz;
  r5.yw = renderTargetSize.xy * r10.xy;
  r11.xy = (int2)r5.yw;
  r11.zw = float2(0,0);
  r5.y = floatZSampler.Load(r11.xyz).x;
  r5.w = cmp(r5.y >= 0.984375);
  r6.x = 1.01587307 * r5.y;
  r5.y = r5.y * 64 + -63;
  r5.y = r5.w ? r5.y : r6.x;
  r5.y = max(9.99999994e-09, r5.y);
  r5.y = rcp(r5.y);
  x2[1].x = r5.y;
  r5.w = 0.0419999994 + r5.y;
  r5.w = r10.z * r5.w;
  r5.w = cmp(1 < r5.w);
  r5.w = r5.w ? 1.000000 : 0;
  r5.w = r6.y ? r5.w : 1;
  x0[1].x = r5.w;
  r6.x = r5.x + r5.w;
  r6.x = cmp(r6.x != 0.000000);
  if (r6.x != 0) {
    r6.xy = r3.ww * float2(0.5,0.5) + float2(1.33333337,2);
    r6.xy = float2(0.117647059,0.117647059) * r6.xy;
    r6.xy = r6.xy * r6.xy + -r4.yz;
    r4.y = r5.x * r6.x + r4.y;
    x1[0].x = r4.y;
    r10.xyz = r9.xyz * r4.yyy + r8.xyz;
    r4.y = cmp(r4.x < r4.y);
    r10.xy = renderTargetSize.xy * r10.xy;
    r11.xy = (int2)r10.xy;
    r11.zw = float2(0,0);
    r6.x = floatZSampler.Load(r11.xyz).x;
    r7.w = cmp(r6.x >= 0.984375);
    r8.w = 1.01587307 * r6.x;
    r6.x = r6.x * 64 + -63;
    r6.x = r7.w ? r6.x : r8.w;
    r6.x = max(9.99999994e-09, r6.x);
    r6.x = rcp(r6.x);
    r4.w = r4.y ? r6.x : r4.w;
    x2[0].x = r4.w;
    r4.w = 0.0419999994 + r6.x;
    r4.w = r10.z * r4.w;
    r4.w = cmp(1 < r4.w);
    r4.w = r4.w ? 1.000000 : 0;
    r4.w = r5.x * r4.w;
    r4.y = r4.y ? r4.w : r5.x;
    x0[0].x = r4.y;
    r4.z = r5.w * r6.y + r4.z;
    x1[1].x = r4.z;
    r10.xyz = r1.yzw * r4.zzz + r8.xyz;
    r4.z = cmp(r4.x < r4.z);
    r6.xy = renderTargetSize.xy * r10.xy;
    r11.xy = (int2)r6.xy;
    r11.zw = float2(0,0);
    r4.w = floatZSampler.Load(r11.xyz).x;
    r5.x = cmp(r4.w >= 0.984375);
    r6.x = 1.01587307 * r4.w;
    r4.w = r4.w * 64 + -63;
    r4.w = r5.x ? r4.w : r6.x;
    r4.w = max(9.99999994e-09, r4.w);
    r4.w = rcp(r4.w);
    r5.x = r4.z ? r4.w : r5.y;
    x2[1].x = r5.x;
    r4.w = 0.0419999994 + r4.w;
    r4.w = r10.z * r4.w;
    r4.w = cmp(1 < r4.w);
    r4.w = r4.w ? 1.000000 : 0;
    r4.w = r5.w * r4.w;
    r4.z = r4.z ? r4.w : r5.w;
    x0[1].x = r4.z;
    r4.y = r4.y + r4.z;
    r4.y = cmp(r4.y == 0.000000);
  } else {
    r4.y = -1;
  }
  if (r4.y == 0) {
    r4.yz = r3.ww * float2(0.5,0.5) + float2(2.33333325,3);
    r4.yz = float2(0.117647059,0.117647059) * r4.yz;
    r4.w = x1[0].x;
    r5.x = x0[0].x;
    r4.y = r4.y * r4.y + -r4.w;
    r4.y = r5.x * r4.y + r4.w;
    x1[0].x = r4.y;
    r10.xyz = r9.xyz * r4.yyy + r8.xyz;
    r4.y = cmp(r4.x < r4.y);
    r5.yw = renderTargetSize.xy * r10.xy;
    r11.xy = (int2)r5.yw;
    r11.zw = float2(0,0);
    r4.w = floatZSampler.Load(r11.xyz).x;
    r5.y = cmp(r4.w >= 0.984375);
    r5.w = 1.01587307 * r4.w;
    r4.w = r4.w * 64 + -63;
    r4.w = r5.y ? r4.w : r5.w;
    r4.w = max(9.99999994e-09, r4.w);
    r4.w = rcp(r4.w);
    r5.y = x2[0].x;
    r5.y = r4.y ? r4.w : r5.y;
    x2[0].x = r5.y;
    r4.w = 0.0419999994 + r4.w;
    r4.w = r10.z * r4.w;
    r4.w = cmp(1 < r4.w);
    r4.w = r4.w ? 1.000000 : 0;
    r4.w = r5.x * r4.w;
    r4.y = r4.y ? r4.w : r5.x;
    x0[0].x = r4.y;
    r4.w = x1[1].x;
    r5.x = x0[1].x;
    r4.z = r4.z * r4.z + -r4.w;
    r4.z = r5.x * r4.z + r4.w;
    x1[1].x = r4.z;
    r10.xyz = r1.yzw * r4.zzz + r8.xyz;
    r4.z = cmp(r4.x < r4.z);
    r5.yw = renderTargetSize.xy * r10.xy;
    r11.xy = (int2)r5.yw;
    r11.zw = float2(0,0);
    r4.w = floatZSampler.Load(r11.xyz).x;
    r5.y = cmp(r4.w >= 0.984375);
    r5.w = 1.01587307 * r4.w;
    r4.w = r4.w * 64 + -63;
    r4.w = r5.y ? r4.w : r5.w;
    r4.w = max(9.99999994e-09, r4.w);
    r4.w = rcp(r4.w);
    r5.y = x2[1].x;
    r5.y = r4.z ? r4.w : r5.y;
    x2[1].x = r5.y;
    r4.w = 0.0419999994 + r4.w;
    r4.w = r10.z * r4.w;
    r4.w = cmp(1 < r4.w);
    r4.w = r4.w ? 1.000000 : 0;
    r4.w = r5.x * r4.w;
    r4.z = r4.z ? r4.w : r5.x;
    x0[1].x = r4.z;
    r4.y = r4.y + r4.z;
    r4.y = cmp(r4.y == 0.000000);
  } else {
    r4.y = -1;
  }
  if (r4.y == 0) {
    r4.yz = r3.ww * float2(0.5,0.5) + float2(3.33333325,4);
    r4.yz = float2(0.117647059,0.117647059) * r4.yz;
    r4.w = x1[0].x;
    r5.x = x0[0].x;
    r4.y = r4.y * r4.y + -r4.w;
    r4.y = r5.x * r4.y + r4.w;
    x1[0].x = r4.y;
    r10.xyz = r9.xyz * r4.yyy + r8.xyz;
    r4.y = cmp(r4.x < r4.y);
    r5.yw = renderTargetSize.xy * r10.xy;
    r11.xy = (int2)r5.yw;
    r11.zw = float2(0,0);
    r4.w = floatZSampler.Load(r11.xyz).x;
    r5.y = cmp(r4.w >= 0.984375);
    r5.w = 1.01587307 * r4.w;
    r4.w = r4.w * 64 + -63;
    r4.w = r5.y ? r4.w : r5.w;
    r4.w = max(9.99999994e-09, r4.w);
    r4.w = rcp(r4.w);
    r5.y = x2[0].x;
    r5.y = r4.y ? r4.w : r5.y;
    x2[0].x = r5.y;
    r4.w = 0.0419999994 + r4.w;
    r4.w = r10.z * r4.w;
    r4.w = cmp(1 < r4.w);
    r4.w = r4.w ? 1.000000 : 0;
    r4.w = r5.x * r4.w;
    r4.y = r4.y ? r4.w : r5.x;
    x0[0].x = r4.y;
    r4.w = x1[1].x;
    r5.x = x0[1].x;
    r4.z = r4.z * r4.z + -r4.w;
    r4.z = r5.x * r4.z + r4.w;
    x1[1].x = r4.z;
    r10.xyz = r1.yzw * r4.zzz + r8.xyz;
    r4.z = cmp(r4.x < r4.z);
    r5.yw = renderTargetSize.xy * r10.xy;
    r11.xy = (int2)r5.yw;
    r11.zw = float2(0,0);
    r4.w = floatZSampler.Load(r11.xyz).x;
    r5.y = cmp(r4.w >= 0.984375);
    r5.w = 1.01587307 * r4.w;
    r4.w = r4.w * 64 + -63;
    r4.w = r5.y ? r4.w : r5.w;
    r4.w = max(9.99999994e-09, r4.w);
    r4.w = rcp(r4.w);
    r5.y = x2[1].x;
    r5.y = r4.z ? r4.w : r5.y;
    x2[1].x = r5.y;
    r4.w = 0.0419999994 + r4.w;
    r4.w = r10.z * r4.w;
    r4.w = cmp(1 < r4.w);
    r4.w = r4.w ? 1.000000 : 0;
    r4.w = r5.x * r4.w;
    r4.z = r4.z ? r4.w : r5.x;
    x0[1].x = r4.z;
    r4.y = r4.y + r4.z;
    r4.y = cmp(r4.y == 0.000000);
  } else {
    r4.y = -1;
  }
  if (r4.y == 0) {
    r4.yz = r3.ww * float2(0.5,0.5) + float2(4.33333349,5);
    r4.yz = float2(0.117647059,0.117647059) * r4.yz;
    r4.w = x1[0].x;
    r5.x = x0[0].x;
    r4.y = r4.y * r4.y + -r4.w;
    r4.y = r5.x * r4.y + r4.w;
    x1[0].x = r4.y;
    r10.xyz = r9.xyz * r4.yyy + r8.xyz;
    r4.y = cmp(r4.x < r4.y);
    r5.yw = renderTargetSize.xy * r10.xy;
    r11.xy = (int2)r5.yw;
    r11.zw = float2(0,0);
    r4.w = floatZSampler.Load(r11.xyz).x;
    r5.y = cmp(r4.w >= 0.984375);
    r5.w = 1.01587307 * r4.w;
    r4.w = r4.w * 64 + -63;
    r4.w = r5.y ? r4.w : r5.w;
    r4.w = max(9.99999994e-09, r4.w);
    r4.w = rcp(r4.w);
    r5.y = x2[0].x;
    r5.y = r4.y ? r4.w : r5.y;
    x2[0].x = r5.y;
    r4.w = 0.0419999994 + r4.w;
    r4.w = r10.z * r4.w;
    r4.w = cmp(1 < r4.w);
    r4.w = r4.w ? 1.000000 : 0;
    r4.w = r5.x * r4.w;
    r4.y = r4.y ? r4.w : r5.x;
    x0[0].x = r4.y;
    r4.w = x1[1].x;
    r5.x = x0[1].x;
    r4.z = r4.z * r4.z + -r4.w;
    r4.z = r5.x * r4.z + r4.w;
    x1[1].x = r4.z;
    r10.xyz = r1.yzw * r4.zzz + r8.xyz;
    r4.z = cmp(r4.x < r4.z);
    r5.yw = renderTargetSize.xy * r10.xy;
    r11.xy = (int2)r5.yw;
    r11.zw = float2(0,0);
    r4.w = floatZSampler.Load(r11.xyz).x;
    r5.y = cmp(r4.w >= 0.984375);
    r5.w = 1.01587307 * r4.w;
    r4.w = r4.w * 64 + -63;
    r4.w = r5.y ? r4.w : r5.w;
    r4.w = max(9.99999994e-09, r4.w);
    r4.w = rcp(r4.w);
    r5.y = x2[1].x;
    r5.y = r4.z ? r4.w : r5.y;
    x2[1].x = r5.y;
    r4.w = 0.0419999994 + r4.w;
    r4.w = r10.z * r4.w;
    r4.w = cmp(1 < r4.w);
    r4.w = r4.w ? 1.000000 : 0;
    r4.w = r5.x * r4.w;
    r4.z = r4.z ? r4.w : r5.x;
    x0[1].x = r4.z;
    r4.y = r4.y + r4.z;
    r4.y = cmp(r4.y == 0.000000);
  } else {
    r4.y = -1;
  }
  if (r4.y == 0) {
    r4.yz = r3.ww * float2(0.5,0.5) + float2(5.33333349,6);
    r4.yz = float2(0.117647059,0.117647059) * r4.yz;
    r4.w = x1[0].x;
    r5.x = x0[0].x;
    r4.y = r4.y * r4.y + -r4.w;
    r4.y = r5.x * r4.y + r4.w;
    x1[0].x = r4.y;
    r10.xyz = r9.xyz * r4.yyy + r8.xyz;
    r4.y = cmp(r4.x < r4.y);
    r5.yw = renderTargetSize.xy * r10.xy;
    r11.xy = (int2)r5.yw;
    r11.zw = float2(0,0);
    r4.w = floatZSampler.Load(r11.xyz).x;
    r5.y = cmp(r4.w >= 0.984375);
    r5.w = 1.01587307 * r4.w;
    r4.w = r4.w * 64 + -63;
    r4.w = r5.y ? r4.w : r5.w;
    r4.w = max(9.99999994e-09, r4.w);
    r4.w = rcp(r4.w);
    r5.y = x2[0].x;
    r5.y = r4.y ? r4.w : r5.y;
    x2[0].x = r5.y;
    r4.w = 0.0419999994 + r4.w;
    r4.w = r10.z * r4.w;
    r4.w = cmp(1 < r4.w);
    r4.w = r4.w ? 1.000000 : 0;
    r4.w = r5.x * r4.w;
    r4.y = r4.y ? r4.w : r5.x;
    x0[0].x = r4.y;
    r4.w = x1[1].x;
    r5.x = x0[1].x;
    r4.z = r4.z * r4.z + -r4.w;
    r4.z = r5.x * r4.z + r4.w;
    x1[1].x = r4.z;
    r10.xyz = r1.yzw * r4.zzz + r8.xyz;
    r4.z = cmp(r4.x < r4.z);
    r5.yw = renderTargetSize.xy * r10.xy;
    r11.xy = (int2)r5.yw;
    r11.zw = float2(0,0);
    r4.w = floatZSampler.Load(r11.xyz).x;
    r5.y = cmp(r4.w >= 0.984375);
    r5.w = 1.01587307 * r4.w;
    r4.w = r4.w * 64 + -63;
    r4.w = r5.y ? r4.w : r5.w;
    r4.w = max(9.99999994e-09, r4.w);
    r4.w = rcp(r4.w);
    r5.y = x2[1].x;
    r5.y = r4.z ? r4.w : r5.y;
    x2[1].x = r5.y;
    r4.w = 0.0419999994 + r4.w;
    r4.w = r10.z * r4.w;
    r4.w = cmp(1 < r4.w);
    r4.w = r4.w ? 1.000000 : 0;
    r4.w = r5.x * r4.w;
    r4.z = r4.z ? r4.w : r5.x;
    x0[1].x = r4.z;
    r4.y = r4.y + r4.z;
    r4.y = cmp(r4.y == 0.000000);
  } else {
    r4.y = -1;
  }
  if (r4.y == 0) {
    r4.yz = r3.ww * float2(0.5,0.5) + float2(6.33333349,7);
    r4.yz = float2(0.117647059,0.117647059) * r4.yz;
    r4.w = x1[0].x;
    r5.x = x0[0].x;
    r4.y = r4.y * r4.y + -r4.w;
    r4.y = r5.x * r4.y + r4.w;
    x1[0].x = r4.y;
    r10.xyz = r9.xyz * r4.yyy + r8.xyz;
    r4.y = cmp(r4.x < r4.y);
    r5.yw = renderTargetSize.xy * r10.xy;
    r11.xy = (int2)r5.yw;
    r11.zw = float2(0,0);
    r4.w = floatZSampler.Load(r11.xyz).x;
    r5.y = cmp(r4.w >= 0.984375);
    r5.w = 1.01587307 * r4.w;
    r4.w = r4.w * 64 + -63;
    r4.w = r5.y ? r4.w : r5.w;
    r4.w = max(9.99999994e-09, r4.w);
    r4.w = rcp(r4.w);
    r5.y = x2[0].x;
    r5.y = r4.y ? r4.w : r5.y;
    x2[0].x = r5.y;
    r4.w = 0.0419999994 + r4.w;
    r4.w = r10.z * r4.w;
    r4.w = cmp(1 < r4.w);
    r4.w = r4.w ? 1.000000 : 0;
    r4.w = r5.x * r4.w;
    r4.y = r4.y ? r4.w : r5.x;
    x0[0].x = r4.y;
    r4.w = x1[1].x;
    r5.x = x0[1].x;
    r4.z = r4.z * r4.z + -r4.w;
    r4.z = r5.x * r4.z + r4.w;
    x1[1].x = r4.z;
    r10.xyz = r1.yzw * r4.zzz + r8.xyz;
    r4.z = cmp(r4.x < r4.z);
    r5.yw = renderTargetSize.xy * r10.xy;
    r11.xy = (int2)r5.yw;
    r11.zw = float2(0,0);
    r4.w = floatZSampler.Load(r11.xyz).x;
    r5.y = cmp(r4.w >= 0.984375);
    r5.w = 1.01587307 * r4.w;
    r4.w = r4.w * 64 + -63;
    r4.w = r5.y ? r4.w : r5.w;
    r4.w = max(9.99999994e-09, r4.w);
    r4.w = rcp(r4.w);
    r5.y = x2[1].x;
    r5.y = r4.z ? r4.w : r5.y;
    x2[1].x = r5.y;
    r4.w = 0.0419999994 + r4.w;
    r4.w = r10.z * r4.w;
    r4.w = cmp(1 < r4.w);
    r4.w = r4.w ? 1.000000 : 0;
    r4.w = r5.x * r4.w;
    r4.z = r4.z ? r4.w : r5.x;
    x0[1].x = r4.z;
    r4.y = r4.y + r4.z;
    r4.y = cmp(r4.y == 0.000000);
  } else {
    r4.y = -1;
  }
  if (r4.y == 0) {
    r4.yz = r3.ww * float2(0.5,0.5) + float2(7.33333349,8);
    r4.yz = float2(0.117647059,0.117647059) * r4.yz;
    r3.w = x1[0].x;
    r4.w = x0[0].x;
    r4.y = r4.y * r4.y + -r3.w;
    r3.w = r4.w * r4.y + r3.w;
    r5.xyw = r9.xyz * r3.www + r8.xyz;
    r3.w = cmp(r4.x < r3.w);
    r5.xy = renderTargetSize.xy * r5.xy;
    r9.xy = (int2)r5.xy;
    r9.zw = float2(0,0);
    r4.y = floatZSampler.Load(r9.xyz).x;
    r5.x = cmp(r4.y >= 0.984375);
    r5.y = 1.01587307 * r4.y;
    r4.y = r4.y * 64 + -63;
    r4.y = r5.x ? r4.y : r5.y;
    r4.y = max(9.99999994e-09, r4.y);
    r4.y = rcp(r4.y);
    r5.x = x2[0].x;
    r5.x = r3.w ? r4.y : r5.x;
    x2[0].x = r5.x;
    r4.y = 0.0419999994 + r4.y;
    r4.y = r5.w * r4.y;
    r4.y = cmp(1 < r4.y);
    r4.y = r4.y ? 1.000000 : 0;
    r4.y = r4.w * r4.y;
    r3.w = r3.w ? r4.y : r4.w;
    x0[0].x = r3.w;
    r3.w = x1[1].x;
    r4.y = x0[1].x;
    r4.z = r4.z * r4.z + -r3.w;
    r3.w = r4.y * r4.z + r3.w;
    r1.yzw = r1.yzw * r3.www + r8.xyz;
    r3.w = cmp(r4.x < r3.w);
    r1.yz = renderTargetSize.xy * r1.yz;
    r8.xy = (int2)r1.yz;
    r8.zw = float2(0,0);
    r1.y = floatZSampler.Load(r8.xyz).x;
    r1.z = cmp(r1.y >= 0.984375);
    r4.x = 1.01587307 * r1.y;
    r1.y = r1.y * 64 + -63;
    r1.y = r1.z ? r1.y : r4.x;
    r1.y = max(9.99999994e-09, r1.y);
    r1.y = rcp(r1.y);
    r1.z = x2[1].x;
    r1.z = r3.w ? r1.y : r1.z;
    x2[1].x = r1.z;
    r1.y = 0.0419999994 + r1.y;
    r1.y = r1.w * r1.y;
    r1.y = cmp(1 < r1.y);
    r1.y = r1.y ? 1.000000 : 0;
    r1.y = r4.y * r1.y;
    r1.y = r3.w ? r1.y : r4.y;
    x0[1].x = r1.y;
  }
  r1.y = x2[0].x;
  r1.y = r1.y + -r5.z;
  r1.y = cmp(2.4000001 < abs(r1.y));
  r1.z = x0[0].x;
  r1.z = -r1.z * 0.5 + 1;
  r1.y = r1.y ? 0.5 : r1.z;
  r1.z = x2[1].x;
  r1.z = r1.z + -r5.z;
  r1.z = cmp(2.4000001 < abs(r1.z));
  r1.w = x0[1].x;
  r1.w = 0.5 * r1.w;
  r1.z = r1.z ? -0.5 : -r1.w;
  r1.y = r1.y + r1.z;
  r1.y = saturate(1 + -r1.y);
  r1.z = r1.y * -2 + 3;
  r1.y = r1.y * r1.y;
  r1.y = r1.z * r1.y;
  r1.y = min(r18.w, r1.y);
  r1.y = r18.z * r1.y;
  r1.yzw = r1.yyy * r33.xyz;
  r4.xyz = r1.yzw * r35.xyz + r29.xyz;
  r5.xyz = r1.yzw * r36.xyz + r30.xyz;
  r8.xyz = r1.yzw * r37.xyz + r32.xyz;
  r1.yzw = r1.yzw * r38.xyz + r31.xyz;
  r3.w = numRefProbes + -numOverrideProbes;
  r4.w = (int)r3.w & -32;
  r5.w = (int)r3.w + (int)-r4.w;
  r6.x = numRefProbes & -32;
  r6.y = (int)-r6.x + numRefProbes;
  r9.xy = float2(0,0);
  r10.w = 0;
  r11.yz = float2(0,1);
  r13.xy = float2(0,0);
  r15.xy = float2(0,0);
  r16.xy = float2(0,0);
  r17.xyzw = float4(0,0,0,0);
  r18.yzw = float3(0,0,0);
  r7.w = r4.w;
  while (true) {
    r8.w = cmp((uint)r7.w >= numRefProbes);
    if (r8.w != 0) break;
    r9.z = (uint)r7.w >> 5;
    r10.xyz = (int3)r9.xyz + (int3)r19.xyz;
    r8.w = visibleProbes.Load(r10.xyzw).x;
    r9.z = cmp((int)r4.w == (int)r7.w);
    bitmask.w = ((~(-1 << r5.w)) << 0) & 0xffffffff;  r9.w = (((uint)0 << 0) & bitmask.w) | ((uint)r8.w & ~bitmask.w);
    r8.w = r9.z ? r9.w : r8.w;
    r9.z = cmp((int)r6.x == (int)r7.w);
    if (r6.y == 0) r9.w = 0; else if (r6.y+0 < 32) {     r9.w = (uint)r8.w << (32-(r6.y + 0)); r9.w = (uint)r9.w >> (32-r6.y);    } else r9.w = (uint)r8.w >> 0;
    r8.w = r9.z ? r9.w : r8.w;
    r9.z = (int)r7.w + numLights;
    r20.xyzw = r17.xyzw;
    r21.xyz = r18.yzw;
    r9.w = r8.w;
    while (true) {
      if (r9.w == 0) break;
      r10.x = firstbitlow((uint)r9.w);
      r10.y = 1 << (int)r10.x;
      r10.z = (int)r9.w & (int)r10.y;
      if (r10.z != 0) {
        r9.w = (int)r9.w ^ (int)r10.y;
        r10.y = (int)r9.z + (int)r10.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r22.xyzw, r10.y, l(0), t11.xyzw
      r22.x = samp0[]..swiz;
      r22.y = samp0[]..swiz;
      r22.z = samp0[]..swiz;
      r22.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r23.xy, r10.y, l(16), t11.xyxx
      r23.x = samp0[]..swiz;
      r23.y = samp0[]..swiz;
        r22.xyz = -v5.xyz + r22.xyz;
        r23.z = r22.w;
        r22.xyz = cmp(abs(r22.xyz) < r23.zxy);
        r10.y = r22.y ? r22.x : 0;
        r10.y = r22.z ? r10.y : 0;
        if (r10.y != 0) {
          r10.x = (int)r7.w + (int)r10.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r10.x, l(0), t15.wxyz
        r22.x = samp0[]..swiz;
        r22.y = samp0[]..swiz;
        r22.z = samp0[]..swiz;
        r22.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r10.yz, r10.x, l(96), t15.xxyx
        r10.y = samp0[]..swiz;
        r10.z = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r10.x, l(116), t15.zwxy
        r23.x = samp0[]..swiz;
        r23.y = samp0[]..swiz;
        r23.z = samp0[]..swiz;
        r23.w = samp0[]..swiz;
          r24.xyz = v5.xyz + -r22.yzw;
          r11.w = (int)r23.w & 0x0000ffff;
          if (6 == 0) r13.w = 0; else if (6+25 < 32) {           r13.w = (uint)r23.w << (32-(6 + 25)); r13.w = (uint)r13.w >> (32-6);          } else r13.w = (uint)r23.w >> 25;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r25.xyzw, r11.w, l(0), t16.xyzw
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        r25.z = samp0[]..swiz;
        r25.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r11.w, l(16), t16.xyzw
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
        r26.z = samp0[]..swiz;
        r26.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r11.w, l(32), t16.xyzw
        r27.x = samp0[]..swiz;
        r27.y = samp0[]..swiz;
        r27.z = samp0[]..swiz;
        r27.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r11.w, l(48), t16.xyzw
        r28.x = samp0[]..swiz;
        r28.y = samp0[]..swiz;
        r28.z = samp0[]..swiz;
        r28.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r11.w, l(64), t16.xyzw
        r29.x = samp0[]..swiz;
        r29.y = samp0[]..swiz;
        r29.z = samp0[]..swiz;
        r29.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r11.w, l(80), t16.xyzw
        r30.x = samp0[]..swiz;
        r30.y = samp0[]..swiz;
        r30.z = samp0[]..swiz;
        r30.w = samp0[]..swiz;
          r14.x = dot(r25.xyz, r24.xyz);
          r14.x = saturate(r14.x + r25.w);
          r14.y = dot(r26.xyz, r24.xyz);
          r14.y = saturate(r14.y + r26.w);
          r14.x = r14.x * r14.y;
          r14.y = dot(r27.xyz, r24.xyz);
          r14.y = saturate(r14.y + r27.w);
          r14.x = r14.x * r14.y;
          r14.y = dot(r28.xyz, r24.xyz);
          r14.y = saturate(r14.y + r28.w);
          r14.x = r14.x * r14.y;
          r14.y = dot(r29.xyz, r24.xyz);
          r14.y = saturate(r14.y + r29.w);
          r14.x = r14.x * r14.y;
          r14.y = dot(r30.xyz, r24.xyz);
          r14.y = saturate(r14.y + r30.w);
          r11.x = r14.x * r14.y;
          r14.x = (int)r10.y & 1;
          r14.xy = r14.xx ? r11.xy : r11.zx;
          r11.x = r10.y;
          r25.xy = r14.xy;
          r15.w = 1;
          while (true) {
            r16.w = cmp((int)r15.w >= (int)r13.w);
            if (r16.w != 0) break;
            r16.w = (int)r11.w + (int)r15.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r16.w, l(0), t16.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r16.w, l(16), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r16.w, l(32), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r16.w, l(48), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r16.w, l(64), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r16.w, l(80), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
            r16.w = dot(r26.xyz, r24.xyz);
            r16.w = saturate(r16.w + r26.w);
            r16.w = r25.x * r16.w;
            r19.w = dot(r27.xyz, r24.xyz);
            r19.w = saturate(r19.w + r27.w);
            r16.w = r19.w * r16.w;
            r19.w = dot(r28.xyz, r24.xyz);
            r19.w = saturate(r19.w + r28.w);
            r16.w = r19.w * r16.w;
            r19.w = dot(r29.xyz, r24.xyz);
            r19.w = saturate(r19.w + r29.w);
            r16.w = r19.w * r16.w;
            r19.w = dot(r30.xyz, r24.xyz);
            r19.w = saturate(r19.w + r30.w);
            r16.w = r19.w * r16.w;
            r19.w = dot(r31.xyz, r24.xyz);
            r19.w = saturate(r19.w + r31.w);
            r25.x = r19.w * r16.w;
            r22.w = (uint)r11.x >> 2;
            if (1 == 0) r24.w = 0; else if (1+2 < 32) {             r24.w = (uint)r11.x << (32-(1 + 2)); r24.w = (uint)r24.w >> (32-1);            } else r24.w = (uint)r11.x >> 2;
            r25.z = (int)r22.w & 2;
            r25.w = max(r25.y, r25.x);
            r16.w = -r16.w * r19.w + 1;
            r16.w = r25.y * r16.w;
            r14.w = r25.z ? r16.w : r25.w;
            r25.xy = r24.ww ? r25.xy : r14.zw;
            r15.w = (int)r15.w + 1;
            r11.x = r22.w;
          }
          r25.y = saturate(r25.y);
          r10.y = r25.y * r10.z;
          r11.x = cmp(0 < r10.y);
          if (r11.x != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r10.x, l(16), t15.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r10.x, l(32), t15.yxwz
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r10.x, l(48), t15.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r10.x, l(64), t15.zwxy
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r10.x, l(80), t15.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r10.x, l(132), t15.zwxy
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r10.x, l(148), t15.zwxy
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r10.x, l(164), t15.zwxy
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r10.x, l(180), t15.zwxy
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r10.x, l(196), t15.xyzw
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xy, r10.x, l(212), t15.xyxx
          r36.x = samp0[]..swiz;
          r36.y = samp0[]..swiz;
            r21.z = r25.y * r10.z + r21.z;
            r10.x = r10.y * r23.z;
            r23.z = r31.z;
            r10.y = dot(r12.xyz, r23.xyz);
            r10.z = dot(r24.xyz, r23.xyz);
            r10.z = r10.z + -r31.w;
            r11.x = cmp(r10.z >= 0);
            r10.z = max(100, abs(r10.z));
            r10.z = r11.x ? r10.z : -r10.z;
            r10.y = max(1.00000001e-07, -r10.y);
            r10.y = r10.z / r10.y;
            r10.y = min(131072, abs(r10.y));
            r31.z = r32.z;
            r10.z = dot(r12.xyz, r31.xyz);
            r11.x = dot(r24.xyz, r31.xyz);
            r11.x = r11.x + -r32.w;
            r11.w = cmp(r11.x >= 0);
            r11.x = max(100, abs(r11.x));
            r11.x = r11.w ? r11.x : -r11.x;
            r10.z = max(1.00000001e-07, -r10.z);
            r10.z = r11.x / r10.z;
            r10.y = min(r10.y, abs(r10.z));
            r32.z = r33.z;
            r10.z = dot(r12.xyz, r32.xyz);
            r11.x = dot(r24.xyz, r32.xyz);
            r11.x = r11.x + -r33.w;
            r11.w = cmp(r11.x >= 0);
            r11.x = max(100, abs(r11.x));
            r11.x = r11.w ? r11.x : -r11.x;
            r10.z = max(1.00000001e-07, -r10.z);
            r10.z = r11.x / r10.z;
            r10.y = min(r10.y, abs(r10.z));
            r33.z = r34.z;
            r10.z = dot(r12.xyz, r33.xyz);
            r11.x = dot(r24.xyz, r33.xyz);
            r11.x = r11.x + -r34.w;
            r11.w = cmp(r11.x >= 0);
            r11.x = max(100, abs(r11.x));
            r11.x = r11.w ? r11.x : -r11.x;
            r10.z = max(1.00000001e-07, -r10.z);
            r10.z = r11.x / r10.z;
            r10.y = min(r10.y, abs(r10.z));
            r34.z = r35.x;
            r10.z = dot(r12.xyz, r34.xyz);
            r11.x = dot(r24.xyz, r34.xyz);
            r11.x = r11.x + -r35.y;
            r11.w = cmp(r11.x >= 0);
            r11.x = max(100, abs(r11.x));
            r11.x = r11.w ? r11.x : -r11.x;
            r10.z = max(1.00000001e-07, -r10.z);
            r10.z = r11.x / r10.z;
            r10.y = min(r10.y, abs(r10.z));
            r36.zw = r35.zw;
            r10.z = dot(r12.zxy, r36.xzw);
            r11.x = dot(r24.zxy, r36.xzw);
            r11.x = r11.x + -r36.y;
            r11.w = cmp(r11.x >= 0);
            r11.x = max(100, abs(r11.x));
            r11.x = r11.w ? r11.x : -r11.x;
            r10.z = max(1.00000001e-07, -r10.z);
            r10.z = r11.x / r10.z;
            r10.y = min(r10.y, abs(r10.z));
            r23.x = r28.w;
            r23.yz = r29.zw;
            r14.xyw = r23.xyz + r24.xyz;
            r14.xyw = r12.xyz * r10.yyy + r14.xyw;
            r10.z = dot(r14.xyw, r14.xyw);
            r10.z = sqrt(r10.z);
            r10.y = r10.y / r10.z;
            r10.y = r10.y + r10.y;
            r10.y = sqrt(r10.y);
            r10.y = 4.1552 + r10.y;
            r22.y = r26.z;
            r22.z = r27.x;
            r31.x = dot(r14.xyw, r22.xyz);
            r23.xy = r26.xw;
            r23.z = r27.w;
            r31.y = dot(r14.xyw, r23.xyz);
            r27.x = r26.y;
            r31.z = dot(r14.xyw, r27.xyz);
            if (9 == 0) r10.z = 0; else if (9+16 < 32) {             r10.z = (uint)r23.w << (32-(9 + 16)); r10.z = (uint)r10.z >> (32-9);            } else r10.z = (uint)r23.w >> 16;
            r31.w = (uint)r10.z;
            r14.xyw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r31.xyzw, r10.y).xyz;
            r26.x = dot(r24.xyz, r22.xyz);
            r26.y = dot(r24.xyz, r23.xyz);
            r26.z = dot(r24.xyz, r27.xyz);
            r24.xyz = saturate(r26.xyz * r28.xyz + float3(0.5,0.5,0.5));
            r29.z = r30.x;
            r24.xyz = r24.xyz * r29.xyz + r30.yzw;
            r31.x = dot(r2.xyz, r22.xyz);
            r31.y = dot(r2.xyz, r23.xyz);
            r31.z = dot(r2.xyz, r27.xyz);
            r22.xyz = cmp(float3(0,0,0) < r31.xyz);
            r13.z = r22.x ? 0 : 0.5;
            r23.xyz = r24.xyz + r13.xyz;
            r23.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
            r25.xzw = r31.xyz * r31.xyz;
            r25.xzw = r25.xzw * r10.xxx;
            r15.z = r22.y ? 0 : 0.5;
            r22.xyw = r24.xyz + r15.xyz;
            r22.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r22.xyw, 0).xyz;
            r22.xyw = r22.xyw * r25.zzz;
            r22.xyw = r23.xyz * r25.xxx + r22.xyw;
            r16.z = r22.z ? 0 : 0.5;
            r23.xyz = r24.xyz + r16.xyz;
            r23.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
            r22.xyz = r23.xyz * r25.www + r22.xyw;
            r23.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r31.xyzw, 6).xyz;
            r24.xyz = r23.xyz * r22.xyz;
            r10.y = dot(r24.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r20.xyz = r22.xyz * r23.xyz + r20.xyz;
            r10.z = 1.26815999 * r10.y;
            r14.xyw = r14.xyw * r10.xxx;
            r10.x = dot(r14.xyw, float3(0.212599993,0.715200007,0.0722000003));
            r10.x = r10.y * 1.26815999 + r10.x;
            r10.x = r10.z / r10.x;
            r22.x = r20.w;
            r22.yz = r21.xy;
            r21.xyw = r14.ywx * r10.xxx + r22.yzx;
            r20.w = r21.w;
          }
        }
      }
    }
    r17.xyzw = r20.xyzw;
    r18.yzw = r21.xyz;
    r7.w = (int)r7.w + 32;
  }
  r6.x = cmp(r18.w < 1);
  if (r6.x != 0) {
    r9.xy = float2(0,0);
    r10.w = 0;
    r11.yz = float2(0,1);
    r13.xy = float2(0,0);
    r6.x = 1;
    r14.xy = float2(0,0);
    r15.xy = float2(0,0);
    r16.x = r17.w;
    r16.yzw = r18.yzw;
    r20.xyz = r17.xyz;
    r7.w = r18.w;
    r8.w = 0;
    while (true) {
      r9.w = cmp((uint)r8.w >= (uint)r3.w);
      if (r9.w != 0) break;
      r9.z = (uint)r8.w >> 5;
      r10.xyz = (int3)r9.xyz + (int3)r19.xyz;
      r9.z = visibleProbes.Load(r10.xyzw).x;
      r9.w = cmp((int)r4.w == (int)r8.w);
      if (r5.w == 0) r10.x = 0; else if (r5.w+0 < 32) {       r10.x = (uint)r9.z << (32-(r5.w + 0)); r10.x = (uint)r10.x >> (32-r5.w);      } else r10.x = (uint)r9.z >> 0;
      r9.z = r9.w ? r10.x : r9.z;
      r9.w = (int)r8.w + numLights;
      r21.xyzw = r16.xyzw;
      r10.xyz = r20.xyz;
      r11.w = r7.w;
      r13.w = r9.z;
      while (true) {
        if (r13.w == 0) break;
        r14.w = firstbitlow((uint)r13.w);
        r15.w = 1 << (int)r14.w;
        r19.w = (int)r13.w & (int)r15.w;
        if (r19.w != 0) {
          r13.w = (int)r13.w ^ (int)r15.w;
          r15.w = (int)r9.w + (int)r14.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r22.xyzw, r15.w, l(0), t11.xyzw
        r22.x = samp0[]..swiz;
        r22.y = samp0[]..swiz;
        r22.z = samp0[]..swiz;
        r22.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r23.xy, r15.w, l(16), t11.xyxx
        r23.x = samp0[]..swiz;
        r23.y = samp0[]..swiz;
          r22.xyz = -v5.xyz + r22.xyz;
          r23.z = r22.w;
          r22.xyz = cmp(abs(r22.xyz) < r23.zxy);
          r15.w = r22.y ? r22.x : 0;
          r15.w = r22.z ? r15.w : 0;
          if (r15.w != 0) {
            r14.w = (int)r8.w + (int)r14.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r14.w, l(0), t15.wxyz
          r22.x = samp0[]..swiz;
          r22.y = samp0[]..swiz;
          r22.z = samp0[]..swiz;
          r22.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xy, r14.w, l(96), t15.xyxx
          r23.x = samp0[]..swiz;
          r23.y = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r14.w, l(116), t15.zwxy
          r24.x = samp0[]..swiz;
          r24.y = samp0[]..swiz;
          r24.z = samp0[]..swiz;
          r24.w = samp0[]..swiz;
            r25.xyz = v5.xyz + -r22.yzw;
            r15.w = (int)r24.w & 0x0000ffff;
            if (6 == 0) r19.w = 0; else if (6+25 < 32) {             r19.w = (uint)r24.w << (32-(6 + 25)); r19.w = (uint)r19.w >> (32-6);            } else r19.w = (uint)r24.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r15.w, l(0), t16.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r15.w, l(16), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r15.w, l(32), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r15.w, l(48), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r15.w, l(64), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r15.w, l(80), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
            r20.w = dot(r26.xyz, r25.xyz);
            r20.w = saturate(r20.w + r26.w);
            r22.w = dot(r27.xyz, r25.xyz);
            r22.w = saturate(r22.w + r27.w);
            r20.w = r22.w * r20.w;
            r22.w = dot(r28.xyz, r25.xyz);
            r22.w = saturate(r22.w + r28.w);
            r20.w = r22.w * r20.w;
            r22.w = dot(r29.xyz, r25.xyz);
            r22.w = saturate(r22.w + r29.w);
            r20.w = r22.w * r20.w;
            r22.w = dot(r30.xyz, r25.xyz);
            r22.w = saturate(r22.w + r30.w);
            r20.w = r22.w * r20.w;
            r22.w = dot(r31.xyz, r25.xyz);
            r22.w = saturate(r22.w + r31.w);
            r11.x = r22.w * r20.w;
            r20.w = (int)r23.x & 1;
            r23.zw = r20.ww ? r11.xy : r11.zx;
            r11.x = r23.x;
            r26.xy = r23.zw;
            r20.w = 1;
            while (true) {
              r22.w = cmp((int)r20.w >= (int)r19.w);
              if (r22.w != 0) break;
              r22.w = (int)r15.w + (int)r20.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r22.w, l(0), t16.xyzw
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r22.w, l(16), t16.xyzw
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r22.w, l(32), t16.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r22.w, l(48), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r22.w, l(64), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r22.w, l(80), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
              r22.w = dot(r27.xyz, r25.xyz);
              r22.w = saturate(r22.w + r27.w);
              r22.w = r26.x * r22.w;
              r25.w = dot(r28.xyz, r25.xyz);
              r25.w = saturate(r25.w + r28.w);
              r22.w = r25.w * r22.w;
              r25.w = dot(r29.xyz, r25.xyz);
              r25.w = saturate(r25.w + r29.w);
              r22.w = r25.w * r22.w;
              r25.w = dot(r30.xyz, r25.xyz);
              r25.w = saturate(r25.w + r30.w);
              r22.w = r25.w * r22.w;
              r25.w = dot(r31.xyz, r25.xyz);
              r25.w = saturate(r25.w + r31.w);
              r22.w = r25.w * r22.w;
              r25.w = dot(r32.xyz, r25.xyz);
              r25.w = saturate(r25.w + r32.w);
              r26.x = r25.w * r22.w;
              r26.z = (uint)r11.x >> 2;
              if (1 == 0) r26.w = 0; else if (1+2 < 32) {               r26.w = (uint)r11.x << (32-(1 + 2)); r26.w = (uint)r26.w >> (32-1);              } else r26.w = (uint)r11.x >> 2;
              r27.x = (int)r26.z & 2;
              r27.y = max(r26.y, r26.x);
              r22.w = -r22.w * r25.w + 1;
              r22.w = r26.y * r22.w;
              r6.y = r27.x ? r22.w : r27.y;
              r26.xy = r26.ww ? r26.xy : r6.xy;
              r20.w = (int)r20.w + 1;
              r11.x = r26.z;
            }
            r6.y = saturate(r26.y + -r11.w);
            r11.x = r6.y * r23.y;
            r15.w = cmp(0 < r11.x);
            if (r15.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r14.w, l(16), t15.xyzw
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r14.w, l(32), t15.yxwz
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r14.w, l(48), t15.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r14.w, l(64), t15.zwxy
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r14.w, l(80), t15.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r14.w, l(132), t15.zwxy
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r14.w, l(148), t15.zwxy
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r14.w, l(164), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r14.w, l(180), t15.zwxy
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r14.w, l(196), t15.xyzw
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xy, r14.w, l(212), t15.xyxx
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
              r21.w = r6.y * r23.y + r21.w;
              r6.y = r11.x * r24.z;
              r24.z = r32.z;
              r11.x = dot(r12.xyz, r24.xyz);
              r14.w = dot(r25.xyz, r24.xyz);
              r14.w = r14.w + -r32.w;
              r15.w = cmp(r14.w >= 0);
              r14.w = max(100, abs(r14.w));
              r14.w = r15.w ? r14.w : -r14.w;
              r11.x = max(1.00000001e-07, -r11.x);
              r11.x = r14.w / r11.x;
              r11.x = min(131072, abs(r11.x));
              r32.z = r33.z;
              r14.w = dot(r12.xyz, r32.xyz);
              r15.w = dot(r25.xyz, r32.xyz);
              r15.w = r15.w + -r33.w;
              r19.w = cmp(r15.w >= 0);
              r15.w = max(100, abs(r15.w));
              r15.w = r19.w ? r15.w : -r15.w;
              r14.w = max(1.00000001e-07, -r14.w);
              r14.w = r15.w / r14.w;
              r11.x = min(abs(r14.w), r11.x);
              r33.z = r34.z;
              r14.w = dot(r12.xyz, r33.xyz);
              r15.w = dot(r25.xyz, r33.xyz);
              r15.w = r15.w + -r34.w;
              r19.w = cmp(r15.w >= 0);
              r15.w = max(100, abs(r15.w));
              r15.w = r19.w ? r15.w : -r15.w;
              r14.w = max(1.00000001e-07, -r14.w);
              r14.w = r15.w / r14.w;
              r11.x = min(abs(r14.w), r11.x);
              r34.z = r35.z;
              r14.w = dot(r12.xyz, r34.xyz);
              r15.w = dot(r25.xyz, r34.xyz);
              r15.w = r15.w + -r35.w;
              r19.w = cmp(r15.w >= 0);
              r15.w = max(100, abs(r15.w));
              r15.w = r19.w ? r15.w : -r15.w;
              r14.w = max(1.00000001e-07, -r14.w);
              r14.w = r15.w / r14.w;
              r11.x = min(abs(r14.w), r11.x);
              r35.z = r36.x;
              r14.w = dot(r12.xyz, r35.xyz);
              r15.w = dot(r25.xyz, r35.xyz);
              r15.w = r15.w + -r36.y;
              r19.w = cmp(r15.w >= 0);
              r15.w = max(100, abs(r15.w));
              r15.w = r19.w ? r15.w : -r15.w;
              r14.w = max(1.00000001e-07, -r14.w);
              r14.w = r15.w / r14.w;
              r11.x = min(abs(r14.w), r11.x);
              r37.zw = r36.zw;
              r14.w = dot(r12.zxy, r37.xzw);
              r15.w = dot(r25.zxy, r37.xzw);
              r15.w = r15.w + -r37.y;
              r19.w = cmp(r15.w >= 0);
              r15.w = max(100, abs(r15.w));
              r15.w = r19.w ? r15.w : -r15.w;
              r14.w = max(1.00000001e-07, -r14.w);
              r14.w = r15.w / r14.w;
              r11.x = min(abs(r14.w), r11.x);
              r23.x = r29.w;
              r23.yz = r30.zw;
              r23.xyz = r23.xyz + r25.xyz;
              r23.xyz = r12.xyz * r11.xxx + r23.xyz;
              r14.w = dot(r23.xyz, r23.xyz);
              r14.w = sqrt(r14.w);
              r11.x = r11.x / r14.w;
              r11.x = r11.x + r11.x;
              r11.x = sqrt(r11.x);
              r11.x = 4.1552 + r11.x;
              r22.y = r27.z;
              r22.z = r28.x;
              r32.x = dot(r23.xyz, r22.xyz);
              r24.xy = r27.xw;
              r24.z = r28.w;
              r32.y = dot(r23.xyz, r24.xyz);
              r28.x = r27.y;
              r32.z = dot(r23.xyz, r28.xyz);
              if (9 == 0) r14.w = 0; else if (9+16 < 32) {               r14.w = (uint)r24.w << (32-(9 + 16)); r14.w = (uint)r14.w >> (32-9);              } else r14.w = (uint)r24.w >> 16;
              r32.w = (uint)r14.w;
              r23.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r32.xyzw, r11.x).xyz;
              r27.x = dot(r25.xyz, r22.xyz);
              r27.y = dot(r25.xyz, r24.xyz);
              r27.z = dot(r25.xyz, r28.xyz);
              r25.xyz = saturate(r27.xyz * r29.xyz + float3(0.5,0.5,0.5));
              r30.z = r31.x;
              r25.xyz = r25.xyz * r30.xyz + r31.yzw;
              r32.x = dot(r2.xyz, r22.xyz);
              r32.y = dot(r2.xyz, r24.xyz);
              r32.z = dot(r2.xyz, r28.xyz);
              r22.xyz = cmp(float3(0,0,0) < r32.xyz);
              r13.z = r22.x ? 0 : 0.5;
              r24.xyz = r25.xyz + r13.xyz;
              r24.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r24.xyz, 0).xyz;
              r26.xzw = r32.xyz * r32.xyz;
              r26.xzw = r26.xzw * r6.yyy;
              r14.z = r22.y ? 0 : 0.5;
              r22.xyw = r25.xyz + r14.xyz;
              r22.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r22.xyw, 0).xyz;
              r22.xyw = r22.xyw * r26.zzz;
              r22.xyw = r24.xyz * r26.xxx + r22.xyw;
              r15.z = r22.z ? 0 : 0.5;
              r24.xyz = r25.xyz + r15.xyz;
              r24.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r24.xyz, 0).xyz;
              r22.xyz = r24.xyz * r26.www + r22.xyw;
              r24.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r32.xyzw, 6).xyz;
              r25.xyz = r24.xyz * r22.xyz;
              r11.x = dot(r25.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r10.xyz = r22.xyz * r24.xyz + r10.xyz;
              r13.z = 1.26815999 * r11.x;
              r22.xyz = r23.xyz * r6.yyy;
              r6.y = dot(r22.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r6.y = r11.x * 1.26815999 + r6.y;
              r6.y = r13.z / r6.y;
              r21.xyz = r22.xyz * r6.yyy + r21.xyz;
            }
          }
        }
      }
      r16.xyzw = r21.xyzw;
      r20.xyz = r10.xyz;
      r8.w = (int)r8.w + 32;
    }
    r18.xyzw = r16.zxyw;
    r17.xyz = r20.xyz;
    r18.xyzw = r18.yzxw;
  } else {
    r18.x = r17.w;
  }
  r3.w = max(1, r18.w);
  r3.w = rcp(r3.w);
  r18.w = saturate(r18.w);
  r9.xyz = r17.xyz * r3.www;
  r10.xyz = r18.xyz * r3.www;
  r4.w = cmp(r18.w < 0.99000001);
  if (r4.w != 0) {
    r4.w = 1 + -r18.w;
    r4.w = sunConstants.globalProbeExposure * r4.w;
    r11.xyz = -globalProbeConstants.data[0].xyz + v5.xyz;
    r13.x = globalProbeConstants.data[0].w * r11.x;
    r13.yz = globalProbeConstants.data[1].xy * r11.yz;
    r11.xyz = saturate(float3(0.5,0.5,0.5) + r13.xyz);
    r13.xy = globalProbeConstants.data[1].zw * r11.xy;
    r13.z = globalProbeConstants.data[2].x * r11.z;
    r11.xyz = globalProbeConstants.data[2].yzw + r13.xyz;
    r13.xyz = cmp(float3(0,0,0) < r2.xyz);
    r13.xyz = r13.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r13.w = 0;
    r14.xyz = r13.wwx + r11.xyz;
    r14.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r14.xyz, 0).xyz;
    r15.xyz = r2.xyz * r2.xyz;
    r15.xyz = r15.xyz * r4.www;
    r16.xyz = r13.wwy + r11.xyz;
    r16.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r16.xyz, 0).xyz;
    r16.xyz = r16.xyz * r15.yyy;
    r14.xyz = r14.xyz * r15.xxx + r16.xyz;
    r11.xyz = r13.wwz + r11.xyz;
    r11.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r11.xyz, 0).xyz;
    r11.xyz = r11.xyz * r15.zzz + r14.xyz;
    r2.w = 0;
    r2.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r2.xyzw, 6).xyz;
    r2.xyz = r11.xyz * r2.xyz;
    r2.w = dot(r2.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r9.xyz = r17.xyz * r3.www + r2.xyz;
    r12.w = 0;
    r2.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r12.xyzw, 5).xyz;
    r10.xyz = r2.xyz * r2.www + r10.xyz;
  }
  r2.xyz = r9.xyz * r1.xxx + r4.xyz;
  r4.xyz = r9.xyz * r1.xxx + r5.xyz;
  r6.w = 0;
  r5.xy = float2(0.0078125,0.0078125) + r6.zw;
  r5.xy = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r5.xy, 0).xy;
  r6.xyz = r10.xyz * r1.xxx;
  r1.xyz = r6.xyz * r5.xxx + r1.yzw;
  r5.xyz = r6.xyz * r5.yyy + r8.xyz;
  r1.w = dot(r3.xyz, r7.xyz);
  r1.w = 1 + -abs(r1.w);
  r1.w = r1.w * r1.w;
  r1.w = r1.w * 0.600000024 + 0.400000006;
  r1.w = min(1, r1.w);
  r3.xyz = saturate(r0.xyz * float3(0.0199999996,0.0199999996,0.0199999996) + float3(0.0399999991,0.0399999991,0.0399999991));
  r6.xyz = specColorTint.xyz * r3.xyz;
  r7.xyz = r1.www * r0.xyz;
  r4.xyz = r7.xyz * r4.xyz;
  r0.xyz = r2.xyz * r0.xyz + r4.xyz;
  r2.xyz = -r3.xyz * specColorTint.xyz + float3(1,1,1);
  r1.xyz = r2.xyz * r1.xyz;
  r1.xyz = r5.xyz * r6.xyz + r1.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.x = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r1.x != 0) {
    r1.x = dot(v5.xyz, v5.xyz);
    r1.y = rsqrt(r1.x);
    r1.yzw = v5.xyz * r1.yyy;
    r1.x = sqrt(r1.x);
    r2.x = cmp(0 < fogConstants.blendAmount);
    if (r2.x != 0) {
      r2.xy = r1.xx * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r2.xy = fogConstants.atmospherefogdensityatcamera.xy * r2.xy;
      r2.z = cmp(0.00999999978 < abs(v5.z));
      r3.xy = fogConstants.atmospherefogheightdensityscale.xy * v5.zz;
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
      r3.x = cmp(0.00999999978 < abs(v5.z));
      r3.y = fogConstants.atmospherefogheightdensityscale.x * v5.z;
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
    r1.w = fogConstants.heightFalloff * v5.z;
    r2.x = fogConstants.heightFalloff * v5.z + fogConstants.K0;
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
    r2.x = dot(v5.xyz, v5.xyz);
    r2.y = sqrt(r2.x);
    r1.w = r1.w * r2.y + fogConstants.expAdd;
    r1.w = exp2(r1.w);
    r1.w = min(1, r1.w);
    r1.w = 1 + -r1.w;
    r2.x = rsqrt(r2.x);
    r2.xyz = v5.xyz * r2.xxx;
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