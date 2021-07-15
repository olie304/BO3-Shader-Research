// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:37:02 2021

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
  float3 v1 : COLOR0,
  float w1 : COLOR1,
  float4 v2 : TEXCOORD0,
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
// unknown dcl_: dcl_resource_structured t11, 80
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t12, 240
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t15, 224
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t16, 96
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t23, 4
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45,r46,r47,r48,r49,r50,r51,r52,r53,r54,r55,r56,r57,r58,r59,r60,r61,r62,r63,r64,r65,r66;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[4];
  float4 x1[4];
  float4 x2[4];
  r0.xyzw = colorMap.Sample(colorSampler_s, v2.xy).xyzw;
  r0.xyz = v1.xyz * r0.xyz;
  o0.w = w1.x * r0.w;
  r0.w = aoMap.Sample(aoSampler_s, v2.xy).x;
  r1.x = glossMap.Sample(specColorSampler_s, v2.xy).x;
  r1.y = glossRange.y + -glossRange.x;
  r1.z = r1.x * r1.y;
  r1.x = r1.x * r1.y + glossRange.x;
  r1.y = r1.z * 0.5 + glossRange.x;
  r1.xy = saturate(float2(0.0588235296,0.0588235296) * r1.xy);
  r2.xyz = normalMap.Sample(normalSampler_s, v2.xy).xyz;
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
  r8.z = 0.984375 * r5.w;
  r6.w = r5.w * 0.547037423 + 0.452962577;
  r10.yz = float2(0.547037423,0.452962577) * r6.ww;
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
    r14.xyz = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v6.yyy;
    r14.xyz = v6.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r14.xyz;
    r14.xyz = v6.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r14.xyz;
    r14.xyz = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r14.xyz;
    r9.w = -sunConstants.splitDepthOffset + r14.z;
    r9.w = -r9.w * 6.10351563e-05 + 1;
    r10.w = saturate(r9.w);
    r10.w = cmp(r9.w == r10.w);
    if (r10.w != 0) {
      r10.w = 0;
      r14.w = 0;
      while (true) {
        r15.x = cmp(r10.w >= 3);
        if (r15.x != 0) break;
        r15.x = (uint)r10.w;
        r15.yz = -sunConstants.splitPinTransform[r15.x].xy + r14.xy;
        r15.y = max(abs(r15.y), abs(r15.z));
        r14.w = sunConstants.splitPinTransform[r15.x].z * r15.y;
        r15.x = cmp(r14.w < 1);
        if (r15.x != 0) {
          break;
        }
        r10.w = 1 + r10.w;
        r14.w = 0;
      }
    } else {
      r10.w = 3;
      r14.w = 0;
    }
    r15.x = cmp(r10.w >= 3);
    if (r15.x != 0) {
      r15.yzw = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r16.xz = rcp(r15.yy);
      r16.y = -r16.z;
      r15.yzw = r14.xyx * r16.xyz + r15.zwz;
      r16.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r15.yzw = max(float3(0,0,0), r15.yzw);
      r15.yzw = min(r15.yzw, r16.xyz);
      r16.xy = sunConstants.sstLightingConstants.coordScale * r15.wz;
      r16.xy = floor(r16.xy);
      r16.y = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r16.y;
      r16.x = r16.y * sunConstants.sstLightingConstants.coordScale + r16.x;
      r16.x = (uint)r16.x;
      r16.x = (int)r16.x + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.y, r16.x, l(0), t23.xxxx
    r16.y = samp0[]..swiz;
      r16.z = (int)r16.y & 0x40000000;
      r16.w = (uint)r16.y << 2;
      if (r16.z == 0) {
        r16.z = (int)r16.y & 0x01ffffff;
        r17.x = (int)r16.z + (int)r16.x;
        r16.x = (uint)r16.y >> 25;
        r16.x = (uint)r16.x;
        r15.yzw = r16.xxx * r15.yzw;
        r15.yzw = frac(r15.yzw);
        r15.yzw = float3(128,128,128) * r15.yzw;
        r15.yzw = (uint3)r15.yzw;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
      r17.z = samp0[]..swiz;
        r16.xy = (uint2)r15.wz >> int2(6,6);
        r16.z = (int)r17.z & 0xc0000000;
        r17.w = (int)r17.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.w, l(0), t23.xxxx
      r17.w = samp0[]..swiz;
        r16.y = r16.y ? r17.z : r17.w;
        r17.w = (uint)r16.y >> 13;
        r16.x = r16.x ? r17.w : r16.y;
        r16.x = (int)r16.x & 8191;
        r18.x = (int)r16.x + (int)r17.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
      r18.z = samp0[]..swiz;
        r17.y = 0;
        r18.y = 1;
        r18.xyz = r16.zzz ? r17.xyz : r18.xyz;
        r19.yz = r16.zz ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r16.xy = (uint2)r15.wz >> (uint2)r19.yy;
        r16.xy = (int2)r16.xy & int2(1,1);
        r17.w = (int)r18.z & 0xc0000000;
        r18.w = (int)r18.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.w, l(0), t23.xxxx
      r18.w = samp0[]..swiz;
        r16.y = r16.y ? r18.z : r18.w;
        r18.w = (uint)r16.y >> 13;
        r16.x = r16.x ? r18.w : r16.y;
        r16.x = (int)r16.x & 8191;
        r19.x = (int)r16.x + (int)r18.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.w, r19.x, l(0), t23.xxxx
      r19.w = samp0[]..swiz;
        r18.xyz = r17.www ? r18.xyz : r19.xzw;
        r16.xyz = r16.zzz ? r17.xyz : r18.xyz;
        r17.x = (int)r16.z & 0xc0000000;
        if (r17.x == 0) {
          r17.x = (int)-r16.y + 6;
          r17.xy = (uint2)r15.wz >> (uint2)r17.xx;
          r17.z = (int)r16.z | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r17.y = (((uint)r17.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r17.x = (((uint)r17.x << 0) & bitmask.x) | ((uint)r17.y & ~bitmask.x);
          r17.x = (int)r17.x * 10;
          r17.x = (uint)r17.z >> (uint)r17.x;
          r17.x = (int)r17.x & 1023;
          r17.x = (int)r16.x + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.x, l(0), t23.xxxx
        r17.w = samp0[]..swiz;
          r17.yz = (int2)r16.yy + int2(1,2);
          r16.y = (int)-r17.y + 6;
          r18.xy = (uint2)r15.wz >> (uint2)r16.yy;
          r16.y = (int)r17.w & 0xc0000000;
          r18.z = (int)r17.w | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r18.y = (((uint)r18.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r18.x = (((uint)r18.x << 0) & bitmask.x) | ((uint)r18.y & ~bitmask.x);
          r18.x = (int)r18.x * 10;
          r18.x = (uint)r18.z >> (uint)r18.x;
          r18.x = (int)r18.x & 1023;
          r18.x = (int)r17.x + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
        r18.z = samp0[]..swiz;
          r18.y = r17.z;
          r18.xyz = r16.yyy ? r17.xyw : r18.xyz;
          r17.y = (int)-r18.y + 6;
          r17.yz = (uint2)r15.wz >> (uint2)r17.yy;
          r18.y = (int)r18.z & 0xc0000000;
          r18.w = (int)r18.z | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r17.z = (((uint)r17.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r17.y = (((uint)r17.y << 0) & bitmask.y) | ((uint)r17.z & ~bitmask.y);
          r17.y = (int)r17.y * 10;
          r17.y = (uint)r18.w >> (uint)r17.y;
          r17.y = (int)r17.y & 1023;
          r19.x = (int)r17.y + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.y, r19.x, l(0), t23.xxxx
        r19.y = samp0[]..swiz;
          r17.yz = r18.yy ? r18.xz : r19.xy;
          r16.xz = r16.yy ? r17.xw : r17.yz;
        }
        r16.y = (int)r16.z & 0xc0000000;
        if (r16.y == 0) {
          if (14 == 0) r17.x = 0; else if (14+15 < 32) {           r17.x = (uint)r16.z << (32-(14 + 15)); r17.x = (uint)r17.x >> (32-14);          } else r17.x = (uint)r16.z >> 15;
          r17.x = (uint)r17.x;
          r17.x = sunConstants.sstLightingConstants.constants.spanInInches * r17.x;
          r17.yz = (int2)r16.zz & int2(32767,536870912);
          r17.y = (uint)r17.y;
          r17.y = sunConstants.sstLightingConstants.constants.spanInInches * r17.y;
          r17.xy = float2(6.10388815e-05,3.05185094e-05) * r17.xy;
          r17.w = (int)r15.z & 3;
          r17.w = (int)r16.x + (int)r17.w;
          r17.w = (int)r17.w + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.w, l(0), t23.xxxx
        r17.w = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r18.x = (((uint)r15.y << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r18.y = (((uint)r15.z << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r18.z = (((uint)r15.w << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r15.y = (uint)r17.w >> (uint)r18.x;
          r15.y = (int)r15.y & 255;
          r15.y = (uint)r15.y;
          r15.y = r15.y * r17.y;
          r15.y = r15.y * 0.00392156886 + r17.x;
          r15.z = (int)r18.y + 1;
          if (1 == 0) r15.w = 0; else if (1+1 < 32) {           r15.w = (uint)r15.w << (32-(1 + 1)); r15.w = (uint)r15.w >> (32-1);          } else r15.w = (uint)r15.w >> 1;
          r15.z = (int)r15.w + (int)r15.z;
          r15.z = (int)r15.z + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.z, r15.z, l(0), t23.xxxx
        r15.z = samp0[]..swiz;
          r15.z = (uint)r15.z >> (uint)r18.z;
          r15.z = (int)r15.z & 0x0000ffff;
          r15.z = (uint)r15.z;
          r15.z = r15.z * r17.y;
          r15.z = r15.z * 1.52590219e-05 + r17.x;
          r16.w = r17.z ? r15.y : r15.z;
        } else {
          r15.y = (int)r16.z & 0x80000000;
          r15.z = (int)r16.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.z, r15.z, l(0), t23.xxxx
        r15.z = samp0[]..swiz;
          r15.y = r15.y ? r15.z : 0;
          r15.z = (uint)r16.z << 2;
          r15.w = (uint)r15.y >> 16;
          r15.y = (int)r15.y & 0x0000ffff;
          r15.yw = f16tof32(r15.yw);
          r15.z = r14.x * r15.w + r15.z;
          r15.y = r14.y * r15.y + r15.z;
          r16.w = r16.y ? r15.y : r16.w;
        }
      }
      r14.z = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r14.z;
      r14.z = cmp(r16.w < r14.z);
      r13.y = r14.z ? 0 : 1;
    }
    if (r15.x == 0) {
      if (enableDitheredShadow == 0) {
        r14.z = (uint)r10.w;
        r15.xy = -sunConstants.splitPinTransform[r14.z].xy + r14.xy;
        r15.xy = sunConstants.splitPinTransform[r14.z].zz * r15.xy;
        r15.xy = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r14.z = (int16)sunConstants.splitArrayOffset;
        r15.z = r14.z + r10.w;
        r14.z = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r9.w).x;
        r15.x = gTransShadowmapArray.SampleLevel(samp0_s, r15.xyz, 0).x;
        r14.z = r15.x + r14.z;
        r14.z = saturate(-1 + r14.z);
        r15.x = r14.z * r14.z;
        r13.y = r15.x * r14.z;
      }
      if (enableDitheredShadow != 0) {
        r15.x = -r8.x;
        r14.z = (uint)r10.w;
        r10.w = 1 + r10.w;
        r10.w = min(2, r10.w);
        r10.w = (uint)r10.w;
        r14.w = 1 + -r14.w;
        r14.w = 28 * r14.w;
        r14.w = (uint)r14.w;
        r16.xy = -sunConstants.splitPinTransform[r14.z].xy + r14.xy;
        r16.xy = sunConstants.splitPinTransform[r14.z].zz * r16.xy;
        r16.xy = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r14.xy = -sunConstants.splitPinTransform[r10.w].xy + r14.xy;
        r14.xy = sunConstants.splitPinTransform[r10.w].zz * r14.xy;
        r14.xy = r14.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r15.y = r9.x;
        r15.z = r8.x;
        r15.w = 0;
        r16.z = 0;
        while (true) {
          r16.w = cmp((uint)r16.z >= 8);
          if (r16.w != 0) break;
          r16.w = cmp((uint)r14.w < (uint)r16.z);
          r17.xy = r16.ww ? r14.xy : r16.xy;
          r17.z = r16.w ? sunConstants.splitPinTransform[r10.w].w : sunConstants.splitPinTransform[r14.z].w;
          r16.w = r16.w ? r10.w : r14.z;
          r18.x = dot(icb[r16.z+0].yx, r15.xy);
          r18.y = dot(icb[r16.z+0].yx, r15.yz);
          r17.xy = r18.xy * r17.zz + r17.xy;
          r16.w = (int)r16.w + (int16)sunConstants.splitArrayOffset;
          r17.z = (uint)r16.w;
          r16.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r9.w).x;
          r17.x = gTransShadowmapArray.SampleLevel(samp0_s, r17.xyz, 0).x;
          r16.w = r17.x + r16.w;
          r16.w = saturate(-1 + r16.w);
          r15.w = r16.w * 0.125 + r15.w;
          r16.z = (int)r16.z + 1;
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
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.w, r9.w, l(52), t12.xxxx
  r10.w = samp0[]..swiz;
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
    r18.x = abs(r6.w) * -0.200000003 + 0.400000006;
    r18.y = cmp(r6.w < 0);
    r18.x = r18.y ? -r18.x : r18.x;
    r18.xyz = r2.xyz * r18.xxx + v6.xyz;
    r18.w = 1;
    r14.x = dot(r14.xyzw, r18.xyzw);
    r14.y = dot(r15.xyzw, r18.xyzw);
    r14.xy = r14.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r14.xy = r14.xy + r17.zw;
    r14.xy = r14.xy * r17.xy;
    r14.zw = r10.ww / r16.xz;
    r15.xy = float2(1,1) + -r14.zw;
    r15.xy = cmp(r14.xy >= r15.xy);
    r14.zw = cmp(r14.zw >= r14.xy);
    r14.zw = (int2)r14.zw | (int2)r15.xy;
    r14.z = (int)r14.w | (int)r14.z;
    if (r14.z == 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.z, r9.w, l(28), t12.xxxx
    r14.z = samp0[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r9.w, l(100), t12.xyzw
    r15.x = samp0[]..swiz;
    r15.y = samp0[]..swiz;
    r15.z = samp0[]..swiz;
    r15.w = samp0[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xy, r9.w, l(164), t12.xyxx
    r17.x = samp0[]..swiz;
    r17.y = samp0[]..swiz;
      r9.w = dot(r15.xyzw, r18.xyzw);
      r14.xy = saturate(r14.xy);
      r15.xy = r14.xy * r16.xz + r16.yw;
      r9.w = r9.w + r17.x;
      r9.w = r9.w / r17.y;
      r9.w = max(6.10351563e-05, r9.w);
      r14.x = r14.z ? 0.000000 : 0;
      if (enableDitheredShadow != 0) {
        r16.x = -r8.x;
        r17.z = (uint)r14.x;
        r16.y = r9.x;
        r16.z = r8.x;
        r14.yz = float2(0,0);
        while (true) {
          r14.w = cmp((int)r14.z >= 8);
          if (r14.w != 0) break;
          r18.x = dot(icb[r14.z+0].yx, r16.xy);
          r18.y = dot(icb[r14.z+0].yx, r16.yz);
          r17.xy = r18.xy * r10.ww + r15.xy;
          r14.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r9.w).x;
          r14.y = r14.w * 0.125 + r14.y;
          r14.z = (int)r14.z + 1;
        }
      } else {
        r15.z = (uint)r14.x;
        r14.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r9.w).x;
      }
      r9.w = r14.y * r14.y;
      r9.w = r9.w * r14.y;
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
        r10.w = dot(sunConstants.sunCookieTransform[0].xyzw, r12.xyzw);
        r12.w = dot(sunConstants.sunCookieTransform[1].xyzw, r12.xyzw);
        r14.x = frac(r10.w);
        r14.y = frac(r12.w);
        r10.w = -1 + (int14)sunConstants.sunCookieIndex;
        r14.z = (uint)r10.w;
        r14.xyz = gCookieArray.SampleLevel(samplerLinear_s, r14.xyz, 0).xyz;
        r14.xyz = float3(-1,-1,-1) + r14.xyz;
        r14.xyz = sunConstants.sunCookieIntensity * r14.xyz + float3(1,1,1);
        r14.xyz = sunConstants.color.xyz * r14.xyz;
      } else {
        r14.xyz = sunConstants.color.xyz;
      }
      r10.w = -r5.w * 0.5 + 1;
      r10.w = -abs(r6.w) * r10.w + 1;
      r10.w = r10.w * r10.w;
      r10.w = -r10.w * 0.620000005 + 0.620000005;
      r10.w = r10.w + -abs(r6.w);
      r10.w = r10.w * 0.816496611 + abs(r6.w);
      r12.w = cmp(0 < r6.w);
      r6.w = saturate(r6.w);
      r15.xyz = -v6.xyz * r4.www + sunConstants.wldDir.xyz;
      r4.w = dot(r15.xyz, r15.xyz);
      r4.w = rsqrt(r4.w);
      r15.xyz = r15.xyz * r4.www;
      r4.w = dot(r2.xyz, r15.xyz);
      r14.w = dot(r15.xyz, r6.xyz);
      r15.w = r1.x * r1.y;
      r15.w = sqrt(r15.w);
      r16.x = dot(r15.xyz, r4.xyz);
      r15.x = dot(r15.xyz, r5.xyz);
      r15.y = r16.x * r16.x;
      r15.x = r15.x * r15.x;
      r15.xy = r15.xy / r1.yx;
      r15.x = r15.y + r15.x;
      r4.w = abs(r4.w) * abs(r4.w) + r15.x;
      r15.x = r6.w * r10.y + r10.z;
      r4.w = r4.w * r4.w;
      r4.w = r4.w * r15.w;
      r4.w = r4.w * r15.x;
      r4.w = rcp(r4.w);
      r6.w = r6.w * r9.w;
      r4.w = r6.w * r4.w;
      r6.w = saturate(1 + -r14.w);
      r9.w = r6.w * r6.w;
      r9.w = r9.w * r9.w;
      r6.w = r9.w * r6.w;
      r6.w = r6.w * r4.w;
      r9.w = r12.w ? r10.w : 0;
      r15.xyz = r12.www ? float3(0,0,0) : r10.www;
      r16.xy = r12.ww ? r6.ww : 0;
      r17.xyz = r12.www ? r4.www : 0;
      r4.w = dot(r14.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r4.w = r13.y * r4.w;
      r13.x = 1;
      r6.w = sunConstants.wldDir.x;
      r16.zw = sunConstants.wldDir.yz;
      r18.xy = r9.ww;
      r10.w = r16.y;
    } else {
      r13.xy = float2(0,0);
      r4.w = 0;
      r14.xyz = float3(0,0,0);
      r6.w = 0;
      r18.xy = float2(0,0);
      r15.xyz = float3(0,0,0);
      r9.w = 0;
      r17.xyz = float3(0,0,0);
      r10.w = 0;
      r16.xyzw = float4(0,0,0,0);
    }
  } else {
    r13.xy = float2(0,0);
    r4.w = 0;
    r14.xyz = float3(0,0,0);
    r6.w = 0;
    r18.xy = float2(0,0);
    r15.xyz = float3(0,0,0);
    r9.w = 0;
    r17.xyz = float3(0,0,0);
    r10.w = 0;
    r16.xyzw = float4(0,0,0,0);
  }
  r3.w = 0.0078125 * r3.w;
  r3.w = min(15, r3.w);
  r3.w = (uint)r3.w;
  r19.xy = (uint2)r1.zw >> int2(6,6);
  r19.z = (uint)r3.w << 4;
  r20.x = -r8.x;
  r1.z = -r5.w * 0.5 + 1;
  r1.w = r1.x * r1.y;
  r1.w = sqrt(r1.w);
  r21.xy = float2(0,0);
  r22.w = 0;
  r23.xyz = v6.xyz;
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
  r33.xyz = r14.xyz;
  r34.x = r6.w;
  r34.yz = r16.zw;
  r35.xy = r18.xy;
  r35.z = r9.w;
  r36.xyz = r15.xyz;
  r37.xyz = r17.xyz;
  r38.x = r10.w;
  r38.yz = r16.xy;
  r39.x = enableDitheredShadow;
  r39.y = r4.w;
  r18.zw = r13.xy;
  r3.w = 0;
  while (true) {
    r5.w = cmp((uint)r3.w >= numLights);
    if (r5.w != 0) break;
    r21.z = (uint)r3.w >> 5;
    r22.xyz = (int3)r19.xyz + (int3)r21.xyz;
    r5.w = visibleLights.Load(r22.xyzw).x;
    r22.xyz = r29.xyz;
    r40.xyz = r30.xyz;
    r41.xyz = r31.xyz;
    r42.xyz = r32.xyz;
    r43.xyz = r33.xyz;
    r44.xyz = r34.xyz;
    r45.xyz = r35.xyz;
    r46.xyz = r37.xyz;
    r47.xyz = r38.xyz;
    r21.zw = r18.zw;
    r12.w = r39.x;
    r14.w = r39.y;
    r48.xyz = r36.xyz;
    r15.w = r5.w;
    while (true) {
      if (r15.w == 0) break;
      r17.w = firstbitlow((uint)r15.w);
      r19.w = 1 << (int)r17.w;
      r25.w = (int)r15.w & (int)r19.w;
      if (r25.w != 0) {
        r15.w = (int)r15.w ^ (int)r19.w;
        r17.w = (int)r3.w + (int)r17.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r49.xyzw, r17.w, l(0), t12.wxyz
      r49.x = samp0[]..swiz;
      r49.y = samp0[]..swiz;
      r49.z = samp0[]..swiz;
      r49.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r50.xyzw, r17.w, l(16), t12.zxyw
      r50.x = samp0[]..swiz;
      r50.y = samp0[]..swiz;
      r50.z = samp0[]..swiz;
      r50.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r51.xyzw, r17.w, l(32), t12.xyzw
      r51.x = samp0[]..swiz;
      r51.y = samp0[]..swiz;
      r51.z = samp0[]..swiz;
      r51.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r52.xyzw, r17.w, l(48), t12.xyzw
      r52.x = samp0[]..swiz;
      r52.y = samp0[]..swiz;
      r52.z = samp0[]..swiz;
      r52.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r53.xyzw, r17.w, l(64), t12.yzwx
      r53.x = samp0[]..swiz;
      r53.y = samp0[]..swiz;
      r53.z = samp0[]..swiz;
      r53.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r54.xyzw, r17.w, l(80), t12.xyzw
      r54.x = samp0[]..swiz;
      r54.y = samp0[]..swiz;
      r54.z = samp0[]..swiz;
      r54.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r55.xyzw, r17.w, l(96), t12.yzwx
      r55.x = samp0[]..swiz;
      r55.y = samp0[]..swiz;
      r55.z = samp0[]..swiz;
      r55.w = samp0[]..swiz;
        if (3 == 0) r19.w = 0; else if (3+24 < 32) {         r19.w = (uint)r50.w << (32-(3 + 24)); r19.w = (uint)r19.w >> (32-3);        } else r19.w = (uint)r50.w >> 24;
        switch (r19.w) {
          case 4 :          r19.w = cmp(0 < r55.x);
          r56.xy = r54.zw;
          r56.z = r55.w;
          r57.xyz = -r56.xyz * float3(0.5,0.5,0.5) + r49.yzw;
          r58.xyz = -v6.xyz + r57.xyz;
          r25.w = dot(r56.xyz, r58.xyz);
          r28.w = saturate(-r25.w / r55.x);
          r59.xyz = r28.www * r56.xyz + r57.xyz;
          r59.xyz = r19.www ? r59.xyz : r49.yzw;
          r59.xyz = -v6.xyz + r59.xyz;
          r29.w = dot(r59.xyz, r59.xyz);
          r30.w = rsqrt(r29.w);
          r59.xyz = r59.xyz * r30.www;
          r30.w = dot(r2.xyz, r59.xyz);
          r31.w = cmp(0 < abs(r30.w));
          if (r31.w != 0) {
            r31.w = sqrt(r29.w);
            r32.w = r52.x * r52.x;
            r29.w = r32.w / r29.w;
            r29.w = min(1, r29.w);
            r39.zw = saturate(r31.ww * r51.xz + r51.yw);
            r60.xy = r39.zw * r39.zw;
            r39.zw = r39.zw * float2(-2,-2) + float2(3,3);
            r39.zw = r60.xy * r39.zw;
            r29.w = r39.z * r29.w;
            r60.x = r29.w * r39.w;
            r29.w = cmp(0 < r60.x);
            if (r29.w != 0) {
              if (3 == 0) r39.z = 0; else if (3+27 < 32) {               r39.z = (uint)r50.w << (32-(3 + 27)); r39.z = (uint)r39.z >> (32-3);              } else r39.z = (uint)r50.w >> 27;
              if (4 == 0) r39.w = 0; else if (4+20 < 32) {               r39.w = (uint)r50.w << (32-(4 + 20)); r39.w = (uint)r39.w >> (32-4);              } else r39.w = (uint)r50.w >> 20;
              r29.w = cmp((int)r39.z != 1);
              if (r29.w != 0) {
                r29.w = abs(r30.w) * -0.200000003 + 0.400000006;
                r31.w = cmp(r30.w < 0);
                r29.w = r31.w ? -r29.w : r29.w;
                r61.xyz = r2.xyz * r29.www + v6.xyz;
                r61.xyz = r61.xyz + -r53.xyz;
                r29.w = max(abs(r61.y), abs(r61.z));
                r29.w = max(abs(r61.x), r29.w);
                r29.w = r54.x / r29.w;
                r29.w = r29.w + r54.y;
                r31.w = dot(r61.xyz, r61.xyz);
                r31.w = rsqrt(r31.w);
                r29.w = max(6.10351563e-05, r29.w);
                r32.w = (int)r50.w & 0x0000ffff;
                r62.w = (uint)r32.w;
                r60.y = 0;
                r32.w = 0;
                while (true) {
                  r33.w = cmp((int)r32.w >= 8);
                  if (r33.w != 0) break;
                  r63.y = dot(icb[r32.w+0].yx, r20.xy);
                  r63.z = dot(icb[r32.w+0].yx, r20.yz);
                  r63.yz = r63.yz * r52.yy;
                  r63.x = r63.y * r10.x;
                  r63.w = r63.y * r7.x;
                  r62.xyz = r61.xyz * r31.www + r63.xzw;
                  r33.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r62.xyzw, r29.w).x;
                  r60.y = r33.w * 0.125 + r60.y;
                  r32.w = (int)r32.w + 1;
                }
              } else {
                r60.y = 1;
              }
              if (r39.w != 0) {
                r29.w = (int)r39.w + numLights;
                r29.w = (int)r29.w + -1;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.w, r29.w, l(52), t12.xxxx
              r31.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r61.xyzw, r29.w, l(100), t12.xyzw
              r61.x = samp0[]..swiz;
              r61.y = samp0[]..swiz;
              r61.z = samp0[]..swiz;
              r61.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r62.xyzw, r29.w, l(116), t12.xyzw
              r62.x = samp0[]..swiz;
              r62.y = samp0[]..swiz;
              r62.z = samp0[]..swiz;
              r62.w = samp0[]..swiz;
                r32.w = abs(r30.w) * -0.200000003 + 0.400000006;
                r33.w = cmp(r30.w < 0);
                r32.w = r33.w ? -r32.w : r32.w;
                r24.xyz = r2.xyz * r32.www + v6.xyz;
                r32.w = dot(r61.xyzw, r24.xyzw);
                r33.w = dot(r62.xyzw, r24.xyzw);
                r34.w = cmp(r33.w < r32.w);
                if (r34.w == 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r61.xyzw, r29.w, l(68), t12.xyzw
                r61.x = samp0[]..swiz;
                r61.y = samp0[]..swiz;
                r61.z = samp0[]..swiz;
                r61.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r62.xyzw, r29.w, l(84), t12.xyzw
                r62.x = samp0[]..swiz;
                r62.y = samp0[]..swiz;
                r62.z = samp0[]..swiz;
                r62.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r63.xyzw, r29.w, l(132), t12.xyzw
                r63.x = samp0[]..swiz;
                r63.y = samp0[]..swiz;
                r63.z = samp0[]..swiz;
                r63.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r64.xyzw, r29.w, l(148), t12.xyzw
                r64.x = samp0[]..swiz;
                r64.y = samp0[]..swiz;
                r64.z = samp0[]..swiz;
                r64.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.zw, r29.w, l(164), t12.xxxy
                r39.z = samp0[]..swiz;
                r39.w = samp0[]..swiz;
                  r61.x = dot(r61.xyzw, r24.xyzw);
                  r61.y = dot(r62.xyzw, r24.xyzw);
                  r24.xy = r61.xy / r33.ww;
                  r24.xy = r24.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                  r24.xy = r24.xy + r64.zw;
                  r24.xy = r24.xy * r64.xy;
                  r60.zw = r31.ww / r63.xz;
                  r61.xy = float2(1,1) + -r60.zw;
                  r61.xy = cmp(r24.xy >= r61.xy);
                  r60.zw = cmp(r60.zw >= r24.xy);
                  r60.zw = (int2)r60.zw | (int2)r61.xy;
                  r24.z = (int)r60.w | (int)r60.z;
                  r24.xy = saturate(r24.xy);
                  r61.xy = r24.xy * r63.xz + r63.yw;
                  r24.x = r39.w * r33.w;
                  r24.y = r39.z * r33.w + r32.w;
                  r24.x = r24.y / r24.x;
                } else {
                  r24.z = -1;
                }
                r24.y = (int)r34.w | (int)r24.z;
                if (r24.y == 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.y, r29.w, l(28), t12.xxxx
                r24.y = samp0[]..swiz;
                  r24.x = max(6.10351563e-05, r24.x);
                  r24.y = (int)r24.y & 0x0000ffff;
                  if (r12.w != 0) {
                    r62.z = (uint)r24.y;
                    r24.z = 0;
                    r29.w = 0;
                    while (true) {
                      r32.w = cmp((int)r29.w >= 8);
                      if (r32.w != 0) break;
                      r63.x = dot(icb[r29.w+0].yx, r20.xw);
                      r63.y = dot(icb[r29.w+0].xy, r8.xy);
                      r62.xy = r63.xy * r31.ww + r61.xy;
                      r32.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r62.xyz, r24.x).x;
                      r24.z = r32.w * 0.125 + r24.z;
                      r29.w = (int)r29.w + 1;
                    }
                  } else {
                    r61.z = (uint)r24.y;
                    r24.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r61.xyz, r24.x).x;
                  }
                  r24.x = r24.z * r24.z;
                  r24.x = r24.x * r24.z;
                } else {
                  r24.x = 1;
                }
                r60.y = r60.y * r24.x;
              }
              r24.x = r60.x * r60.y;
              r24.y = cmp(0 < r24.x);
              if (r24.y != 0) {
                r24.y = 0.166666672 * r50.x;
                r29.w = dot(r56.xyz, r11.xyz);
                r31.w = dot(r11.xyz, r58.xyz);
                r32.w = -r29.w * r29.w + r55.x;
                r25.w = r29.w * r31.w + -r25.w;
                r25.w = saturate(r25.w / r32.w);
                r29.w = r32.w / r55.x;
                r29.w = 10 * r29.w;
                r29.w = min(1, r29.w);
                r25.w = r25.w + -r28.w;
                r25.w = r29.w * r25.w + r28.w;
                r56.xyz = r25.www * r56.xyz + r57.xyz;
                r56.xyz = r19.www ? r56.xyz : r49.yzw;
                r56.xyz = -v6.xyz + r56.xyz;
                r19.w = dot(r56.xyz, r56.xyz);
                r19.w = rsqrt(r19.w);
                r57.xyz = r56.xyz * r19.www;
                r25.w = -abs(r30.w) * r1.z + 1;
                r25.w = r25.w * r25.w;
                r25.w = -r25.w * 0.620000005 + 0.620000005;
                r25.w = r25.w + -abs(r30.w);
                r25.w = r25.w * 0.816496611 + abs(r30.w);
                r28.w = cmp(0 < r30.w);
                r29.w = saturate(dot(r2.xyz, r57.xyz));
                r56.xyz = r56.xyz * r19.www + r6.xyz;
                r19.w = dot(r56.xyz, r56.xyz);
                r19.w = rsqrt(r19.w);
                r56.xyz = r56.xyz * r19.www;
                r19.w = dot(r2.xyz, r56.xyz);
                r30.w = dot(r56.xyz, r6.xyz);
                r31.w = dot(r56.xyz, r4.xyz);
                r32.w = dot(r56.xyz, r5.xyz);
                r31.w = r31.w * r31.w;
                r31.w = r31.w / r1.x;
                r32.w = r32.w * r32.w;
                r32.w = r32.w / r1.y;
                r31.w = r32.w + r31.w;
                r19.w = abs(r19.w) * abs(r19.w) + r31.w;
                r31.w = r29.w * r10.y + r10.z;
                r19.w = r19.w * r19.w;
                r19.w = r19.w * r1.w;
                r19.w = r19.w * r31.w;
                r19.w = rcp(r19.w);
                r24.y = r29.w * r24.y;
                r19.w = r24.y * r19.w;
                r24.y = saturate(1 + -r30.w);
                r29.w = r24.y * r24.y;
                r29.w = r29.w * r29.w;
                r24.y = r29.w * r24.y;
                r24.y = r24.y * r19.w;
                r56.xyz = r28.www ? r25.www : 0;
                r25.w = r28.w ? 0 : r25.w;
                r57.xyz = r28.www ? r24.yyy : 0;
                r19.w = r28.w ? r19.w : 0;
                r50.x = r49.x;
                r24.y = dot(r50.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r24.y = r24.x * r24.y;
                r28.w = cmp(r14.w < r24.y);
                if (r28.w != 0) {
                  r28.w = r21.z * r21.w;
                  r58.xyz = r28.www * r43.xyz;
                  r22.xyz = r58.xyz * r45.xyz + r22.xyz;
                  r40.xyz = r58.xyz * r48.xyz + r40.xyz;
                  r42.xyz = r58.xyz * r46.xyz + r42.xyz;
                  r41.xyz = r58.xyz * r47.xyz + r41.xyz;
                  r46.xyz = r19.www;
                  r14.w = r24.y;
                  r48.xyz = r25.www;
                  r43.xyz = r50.xyz;
                  r44.xyz = r59.xyz;
                  r45.xyz = r56.xyz;
                  r47.xyz = r57.xyz;
                  r21.zw = r60.xy;
                } else {
                  r56.xyw = r50.xyz * r24.xxx;
                  r22.xyz = r56.xyw * r56.zzz + r22.xyz;
                  r40.xyz = r56.xyw * r25.www + r40.xyz;
                  r42.xyz = r56.xyw * r19.www + r42.xyz;
                  r41.xyz = r56.xyw * r57.xyz + r41.xyz;
                }
              }
            }
          }
          break;
          case 2 :          r56.xy = r52.zw;
          r56.z = r53.w;
          r56.xyz = -v6.xyz + r56.xyz;
          r19.w = dot(r56.xyz, r56.xyz);
          r19.w = rsqrt(r19.w);
          r57.xyz = r56.xyz * r19.www;
          r24.x = dot(r2.xyz, r57.xyz);
          r24.y = cmp(0 < abs(r24.x));
          if (r24.y != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r58.xyzw, r17.w, l(112), t12.yzwx
          r58.x = samp0[]..swiz;
          r58.y = samp0[]..swiz;
          r58.z = samp0[]..swiz;
          r58.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r59.xyzw, r17.w, l(128), t12.zxyw
          r59.x = samp0[]..swiz;
          r59.y = samp0[]..swiz;
          r59.z = samp0[]..swiz;
          r59.w = samp0[]..swiz;
            r61.xyz = r58.xyz;
            r61.w = r59.y;
            r24.y = dot(r61.xyzw, r23.xyzw);
            r25.w = cmp(r24.y < 1);
            if (r25.w != 0) {
              r60.xzw = float3(1,1,1);
              r62.x = 0;
            } else {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r63.xyzw, r17.w, l(172), t12.yzwx
            r63.x = samp0[]..swiz;
            r63.y = samp0[]..swiz;
            r63.z = samp0[]..swiz;
            r63.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r64.xyzw, r17.w, l(188), t12.wxyz
            r64.x = samp0[]..swiz;
            r64.y = samp0[]..swiz;
            r64.z = samp0[]..swiz;
            r64.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r65.xyzw, r17.w, l(204), t12.xyzw
            r65.x = samp0[]..swiz;
            r65.y = samp0[]..swiz;
            r65.z = samp0[]..swiz;
            r65.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r25.w, r17.w, l(236), t12.xxxx
            r25.w = samp0[]..swiz;
              r66.xyz = -v6.xyz + r49.yzw;
              r28.w = r52.x * r52.x;
              r29.w = dot(r66.xyz, r66.xyz);
              r28.w = r28.w / r29.w;
              r28.w = min(1, r28.w);
              r39.zw = saturate(r24.yy * r51.xz + r51.yw);
              r51.xy = r39.zw * r39.zw;
              r39.zw = r39.zw * float2(-2,-2) + float2(3,3);
              r39.zw = r51.xy * r39.zw;
              r28.w = r39.z * r28.w;
              r28.w = r28.w * r39.w;
              r53.w = r54.x;
              r51.x = dot(r53.xyzw, r23.xyzw);
              r66.xyz = r54.yzw;
              r66.w = r55.w;
              r51.y = dot(r66.xyzw, r23.xyzw);
              r25.xy = r51.xy / r24.yy;
              r24.y = cmp(r63.w < 0.00048828125);
              if (r24.y != 0) {
                r64.y = r65.x;
                r39.zw = saturate(abs(r25.xy) * r64.zw + r64.xy);
                r51.xy = r39.zw * r39.zw;
                r39.zw = r39.zw * float2(-2,-2) + float2(3,3);
                r39.zw = r51.xy * r39.zw;
                r24.y = r39.z * r39.w;
              } else {
                r63.w = r64.y;
                r51.xyzw = saturate(r63.xyzw * abs(r25.yyxx));
                r51.xyzw = log2(r51.xyzw);
                r51.xyzw = r64.xxxx * r51.xyzw;
                r51.xyzw = exp2(r51.xyzw);
                r39.zw = r51.xy + r51.zw;
                r39.zw = log2(r39.zw);
                r39.zw = r65.xx * r39.zw;
                r39.zw = exp2(r39.zw);
                r29.w = r64.z * r39.z;
                r30.w = r64.w * r39.w + -1;
                r29.w = r64.w * r39.w + -r29.w;
                r29.w = saturate(r30.w / r29.w);
                r30.w = r29.w * r29.w;
                r29.w = r29.w * -2 + 3;
                r24.y = r30.w * r29.w;
              }
              r62.x = r28.w * r24.y;
              r24.y = r25.w ? 0.000000 : 0;
              if (r24.y != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r51.xyz, r17.w, l(220), t12.xyzx
              r51.x = samp0[]..swiz;
              r51.y = samp0[]..swiz;
              r51.z = samp0[]..swiz;
                r25.w = dot(r65.yzw, r25.xyz);
                r25.x = dot(r51.xyz, r25.xyz);
                r51.xy = frac(r25.wx);
                r24.y = (int)r24.y + -1;
                r51.z = (uint)r24.y;
                r60.xzw = gCookieArray.SampleLevel(samplerLinear_s, r51.xyz, 0).xyz;
              } else {
                r60.xzw = float3(1,1,1);
              }
            }
            r49.yz = r50.yz;
            r25.xyw = r49.xyz * r60.xzw;
            r24.y = cmp(0 < r62.x);
            if (r24.y != 0) {
              if (3 == 0) r39.z = 0; else if (3+27 < 32) {               r39.z = (uint)r50.w << (32-(3 + 27)); r39.z = (uint)r39.z >> (32-3);              } else r39.z = (uint)r50.w >> 27;
              if (4 == 0) r39.w = 0; else if (4+20 < 32) {               r39.w = (uint)r50.w << (32-(4 + 20)); r39.w = (uint)r39.w >> (32-4);              } else r39.w = (uint)r50.w >> 20;
              r24.y = cmp((int)r39.z != 1);
              if (r24.y != 0) {
                r24.y = abs(r24.x) * -0.200000003 + 0.400000006;
                r28.w = cmp(r24.x < 0);
                r24.y = r28.w ? -r24.y : r24.y;
                r26.xyz = r2.xyz * r24.yyy + v6.xyz;
                r58.xyz = r55.xyz;
                r24.y = dot(r58.xyzw, r26.xyzw);
                r28.w = dot(r61.xyzw, r26.xyzw);
                r29.w = cmp(r28.w >= r24.y);
                if (r29.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r59.y, r17.w, l(144), t12.xxxx
                r59.y = samp0[]..swiz;
                  r53.w = r54.x;
                  r49.x = dot(r53.xyzw, r26.xyzw);
                  r55.xyz = r54.yzw;
                  r49.y = dot(r55.xyzw, r26.xyzw);
                  r26.xy = r49.xy / r28.ww;
                  r26.xy = saturate(r26.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                  r26.xy = r26.xy * r59.zw + r59.xy;
                  r17.w = r24.y / r28.w;
                  r17.w = max(6.10351563e-05, r17.w);
                  r24.y = (int)r50.w & 0x0000ffff;
                  if (r12.w != 0) {
                    r49.z = (uint)r24.y;
                    r28.w = 0;
                    r29.w = 0;
                    while (true) {
                      r30.w = cmp((int)r29.w >= 8);
                      if (r30.w != 0) break;
                      r51.x = dot(icb[r29.w+0].xy, r9.xy);
                      r51.y = dot(icb[r29.w+0].yx, r9.xz);
                      r49.xy = r51.xy * r52.yy + r26.xy;
                      r30.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r49.xyz, r17.w).x;
                      r28.w = r30.w * 0.125 + r28.w;
                      r29.w = (int)r29.w + 1;
                    }
                  } else {
                    r26.z = (uint)r24.y;
                    r28.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r17.w).x;
                  }
                  r17.w = r28.w * r28.w;
                  r62.y = r17.w * r28.w;
                } else {
                  r62.y = 1;
                }
              } else {
                r62.y = 1;
              }
              if (r39.w != 0) {
                r17.w = (int)r39.w + numLights;
                r17.w = (int)r17.w + -1;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.y, r17.w, l(52), t12.xxxx
              r24.y = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r49.xyzw, r17.w, l(68), t12.xyzw
              r49.x = samp0[]..swiz;
              r49.y = samp0[]..swiz;
              r49.z = samp0[]..swiz;
              r49.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r51.xyzw, r17.w, l(84), t12.xyzw
              r51.x = samp0[]..swiz;
              r51.y = samp0[]..swiz;
              r51.z = samp0[]..swiz;
              r51.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r52.xyzw, r17.w, l(100), t12.xyzw
              r52.x = samp0[]..swiz;
              r52.y = samp0[]..swiz;
              r52.z = samp0[]..swiz;
              r52.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r53.xyzw, r17.w, l(116), t12.xyzw
              r53.x = samp0[]..swiz;
              r53.y = samp0[]..swiz;
              r53.z = samp0[]..swiz;
              r53.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r54.xyzw, r17.w, l(132), t12.xyzw
              r54.x = samp0[]..swiz;
              r54.y = samp0[]..swiz;
              r54.z = samp0[]..swiz;
              r54.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r55.xyzw, r17.w, l(148), t12.xyzw
              r55.x = samp0[]..swiz;
              r55.y = samp0[]..swiz;
              r55.z = samp0[]..swiz;
              r55.w = samp0[]..swiz;
                r26.x = abs(r24.x) * -0.200000003 + 0.400000006;
                r26.y = cmp(r24.x < 0);
                r26.x = r26.y ? -r26.x : r26.x;
                r27.xyz = r2.xyz * r26.xxx + v6.xyz;
                r26.x = dot(r49.xyzw, r27.xyzw);
                r26.y = dot(r51.xyzw, r27.xyzw);
                r26.z = dot(r52.xyzw, r27.xyzw);
                r27.x = dot(r53.xyzw, r27.xyzw);
                r27.y = cmp(r27.x < r26.z);
                r26.xy = r26.xy / r27.xx;
                r26.xy = r26.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r26.xy = r26.xy + r55.zw;
                r26.xy = r26.xy * r55.xy;
                r39.zw = r24.yy / r54.xz;
                r49.xy = float2(1,1) + -r39.zw;
                r49.xy = cmp(r26.xy >= r49.xy);
                r39.zw = cmp(r39.zw >= r26.xy);
                r39.zw = (int2)r39.zw | (int2)r49.xy;
                r27.z = (int)r39.w | (int)r39.z;
                r27.y = (int)r27.y | (int)r27.z;
                if (r27.y == 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r27.y, r17.w, l(28), t12.xxxx
                r27.y = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.zw, r17.w, l(164), t12.xxxy
                r39.z = samp0[]..swiz;
                r39.w = samp0[]..swiz;
                  r26.xy = saturate(r26.xy);
                  r49.xy = r26.xy * r54.xz + r54.yw;
                  r17.w = r39.w * r27.x;
                  r26.x = r39.z * r27.x + r26.z;
                  r17.w = r26.x / r17.w;
                  r17.w = max(6.10351563e-05, r17.w);
                  r26.x = r27.y ? 0.000000 : 0;
                  if (r12.w != 0) {
                    r27.z = (uint)r26.x;
                    r26.yz = float2(0,0);
                    while (true) {
                      r29.w = cmp((int)r26.z >= 8);
                      if (r29.w != 0) break;
                      r51.x = dot(icb[r26.z+0].xy, r28.xy);
                      r51.y = dot(icb[r26.z+0].yx, r28.xz);
                      r27.xy = r51.xy * r24.yy + r49.xy;
                      r27.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r27.xyz, r17.w).x;
                      r26.y = r27.x * 0.125 + r26.y;
                      r26.z = (int)r26.z + 1;
                    }
                  } else {
                    r49.z = (uint)r26.x;
                    r26.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r49.xyz, r17.w).x;
                  }
                  r17.w = r26.y * r26.y;
                  r17.w = r17.w * r26.y;
                } else {
                  r17.w = 1;
                }
                r62.y = r62.y * r17.w;
              }
              r17.w = r62.x * r62.y;
              r24.y = cmp(0 < r17.w);
              if (r24.y != 0) {
                r24.y = 0.166666672 * r50.x;
                r26.x = -abs(r24.x) * r1.z + 1;
                r26.x = r26.x * r26.x;
                r26.x = -r26.x * 0.620000005 + 0.620000005;
                r26.x = r26.x + -abs(r24.x);
                r26.x = r26.x * 0.816496611 + abs(r24.x);
                r26.z = cmp(0 < r24.x);
                r24.x = saturate(r24.x);
                r27.xyz = r56.xyz * r19.www + r6.xyz;
                r19.w = dot(r27.xyz, r27.xyz);
                r19.w = rsqrt(r19.w);
                r27.xyz = r27.xyz * r19.www;
                r19.w = dot(r2.xyz, r27.xyz);
                r29.w = dot(r27.xyz, r6.xyz);
                r30.w = dot(r27.xyz, r4.xyz);
                r27.x = dot(r27.xyz, r5.xyz);
                r27.y = r30.w * r30.w;
                r27.x = r27.x * r27.x;
                r27.xy = r27.xy / r1.yx;
                r27.x = r27.y + r27.x;
                r19.w = abs(r19.w) * abs(r19.w) + r27.x;
                r27.x = r24.x * r10.y + r10.z;
                r19.w = r19.w * r19.w;
                r19.w = r19.w * r1.w;
                r19.w = r19.w * r27.x;
                r19.w = rcp(r19.w);
                r24.x = r24.x * r24.y;
                r19.w = r24.x * r19.w;
                r24.x = saturate(1 + -r29.w);
                r24.y = r24.x * r24.x;
                r24.y = r24.y * r24.y;
                r24.x = r24.x * r24.y;
                r24.x = r24.x * r19.w;
                r27.xyz = r26.zzz ? r26.xxx : 0;
                r24.y = r26.z ? 0 : r26.x;
                r49.xyz = r26.zzz ? r24.xxx : 0;
                r19.w = r26.z ? r19.w : 0;
                r24.x = dot(r25.xyw, float3(0.212599993,0.715200007,0.0722000003));
                r24.x = r24.x * r17.w;
                r26.x = cmp(r14.w < r24.x);
                if (r26.x != 0) {
                  r26.x = r21.z * r21.w;
                  r50.xyz = r26.xxx * r43.xyz;
                  r22.xyz = r50.xyz * r45.xyz + r22.xyz;
                  r40.xyz = r50.xyz * r48.xyz + r40.xyz;
                  r42.xyz = r50.xyz * r46.xyz + r42.xyz;
                  r41.xyz = r50.xyz * r47.xyz + r41.xyz;
                  r46.xyz = r19.www;
                  r14.w = r24.x;
                  r48.xyz = r24.yyy;
                  r43.xyz = r25.xyw;
                  r44.xyz = r57.xyz;
                  r45.xyz = r27.xyz;
                  r47.xyz = r49.xyz;
                  r21.zw = r62.xy;
                } else {
                  r25.xyw = r17.www * r25.xyw;
                  r22.xyz = r25.xyw * r27.zzz + r22.xyz;
                  r40.xyz = r25.xyw * r24.yyy + r40.xyz;
                  r42.xyz = r25.xyw * r19.www + r42.xyz;
                  r41.xyz = r25.xyw * r49.xyz + r41.xyz;
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
    r30.xyz = r40.xyz;
    r31.xyz = r41.xyz;
    r32.xyz = r42.xyz;
    r33.xyz = r43.xyz;
    r34.xyz = r44.xyz;
    r35.xyz = r45.xyz;
    r37.xyz = r46.xyz;
    r38.xyz = r47.xyz;
    r18.zw = r21.zw;
    r39.y = r14.w;
    r36.xyz = r48.xyz;
    r3.w = (int)r3.w + 32;
  }
  r1.z = 0;
  r1.xy = float2(1,-1) * r34.yx;
  r4.xyz = r34.zxy * r1.yzx;
  r4.xyz = r34.yzx * r1.zxy + -r4.xyz;
  r5.xyz = viewProjectionMatrix._m10_m11_m13 * r12.yyy;
  r5.xyz = r12.xxx * viewProjectionMatrix._m00_m01_m03 + r5.xyz;
  r5.xyz = r12.zzz * viewProjectionMatrix._m20_m21_m23 + r5.xyz;
  r5.xyz = r5.xyz + r7.yzw;
  r9.z = rcp(r5.z);
  r5.xy = r9.zz * r5.xy;
  r9.xy = r5.xy * float2(0.5,-0.5) + float2(0.5,0.5);
  r5.xyw = r34.xyz * float3(2.4000001,2.4000001,2.4000001) + r12.xyz;
  r1.w = dot(v0.xy, float2(0.0671105608,0.00583714992));
  r1.w = frac(r1.w);
  r1.w = 52.9829178 * r1.w;
  r1.w = frac(r1.w);
  r3.w = 3.14159989 * r1.w;
  r3.w = gameTick.w * 0.5 + r3.w;
  sincos(r3.w, r7.x, r8.x);
  r10.xyz = r7.xxx * r4.xyz;
  r10.xyz = r8.xxx * r1.xyz + r10.xyz;
  r10.xyz = r10.xyz * float3(0.119999997,0.119999997,0.119999997) + r5.xyw;
  r12.xyz = viewProjectionMatrix._m10_m11_m13 * r10.yyy;
  r10.xyw = r10.xxx * viewProjectionMatrix._m00_m01_m03 + r12.xyz;
  r10.xyz = r10.zzz * viewProjectionMatrix._m20_m21_m23 + r10.xyw;
  r10.xyz = r10.xyz + r7.yzw;
  r8.xy = float2(0.5,-0.5) * r10.xy;
  r10.z = rcp(r10.z);
  r10.xy = r8.xy * r10.zz + float2(0.5,0.5);
  r12.xyz = -r9.xyz;
  r10.xyz = r12.xyz + r10.xyz;
  r3.w = 3.14159989 + r3.w;
  sincos(r3.w, r7.x, r8.x);
  r4.xyz = r7.xxx * r4.xyz;
  r1.xyz = r8.xxx * r1.xyz + r4.xyz;
  r1.xyz = r1.xyz * float3(0.119999997,0.119999997,0.119999997) + r5.xyw;
  r4.xyz = viewProjectionMatrix._m10_m11_m13 * r1.yyy;
  r4.xyz = r1.xxx * viewProjectionMatrix._m00_m01_m03 + r4.xyz;
  r1.xyz = r1.zzz * viewProjectionMatrix._m20_m21_m23 + r4.xyz;
  r1.xyz = r1.xyz + r7.yzw;
  r1.xy = float2(0.5,-0.5) * r1.xy;
  r4.z = rcp(r1.z);
  r4.xy = r1.xy * r4.zz + r12.xy;
  r12.w = 0.5;
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
  r5.xyw = r10.xyz * r4.xxx + r9.xyz;
  r4.zw = cmp(r3.ww < r4.xy);
  r5.xy = renderTargetSize.xy * r5.xy;
  r7.xy = (int2)r5.xy;
  r7.zw = float2(0,0);
  r5.x = floatZSampler.Load(r7.xyz).x;
  r5.y = cmp(r5.x >= 0.984375);
  r6.w = 1.01587307 * r5.x;
  r5.x = r5.x * 64 + -63;
  r5.x = r5.y ? r5.x : r6.w;
  r5.x = max(9.99999994e-09, r5.x);
  r5.x = rcp(r5.x);
  x2[0].x = r5.x;
  r5.y = 0.0419999994 + r5.x;
  r5.y = r5.w * r5.y;
  r5.y = cmp(1 < r5.y);
  r5.y = r5.y ? 1.000000 : 0;
  r4.z = r4.z ? r5.y : 1;
  x0[0].x = r4.z;
  x1[1].x = r4.y;
  r7.xyz = r1.xyz * r4.yyy + r9.xyz;
  r5.yw = renderTargetSize.xy * r7.xy;
  r12.xy = (int2)r5.yw;
  r12.zw = float2(0,0);
  r5.y = floatZSampler.Load(r12.xyz).x;
  r5.w = cmp(r5.y >= 0.984375);
  r6.w = 1.01587307 * r5.y;
  r5.y = r5.y * 64 + -63;
  r5.y = r5.w ? r5.y : r6.w;
  r5.y = max(9.99999994e-09, r5.y);
  r5.y = rcp(r5.y);
  x2[1].x = r5.y;
  r5.w = 0.0419999994 + r5.y;
  r5.w = r7.z * r5.w;
  r5.w = cmp(1 < r5.w);
  r5.w = r5.w ? 1.000000 : 0;
  r4.w = r4.w ? r5.w : 1;
  x0[1].x = r4.w;
  r5.w = r4.z + r4.w;
  r5.w = cmp(r5.w != 0.000000);
  if (r5.w != 0) {
    r7.xy = r1.ww * float2(0.5,0.5) + float2(1.33333337,2);
    r7.xy = float2(0.117647059,0.117647059) * r7.xy;
    r7.xy = r7.xy * r7.xy + -r4.xy;
    r4.x = r4.z * r7.x + r4.x;
    x1[0].x = r4.x;
    r7.xzw = r10.xyz * r4.xxx + r9.xyz;
    r4.x = cmp(r3.w < r4.x);
    r7.xz = renderTargetSize.xy * r7.xz;
    r12.xy = (int2)r7.xz;
    r12.zw = float2(0,0);
    r5.w = floatZSampler.Load(r12.xyz).x;
    r6.w = cmp(r5.w >= 0.984375);
    r7.x = 1.01587307 * r5.w;
    r5.w = r5.w * 64 + -63;
    r5.w = r6.w ? r5.w : r7.x;
    r5.w = max(9.99999994e-09, r5.w);
    r5.w = rcp(r5.w);
    r5.x = r4.x ? r5.w : r5.x;
    x2[0].x = r5.x;
    r5.x = 0.0419999994 + r5.w;
    r5.x = r7.w * r5.x;
    r5.x = cmp(1 < r5.x);
    r5.x = r5.x ? 1.000000 : 0;
    r5.x = r5.x * r4.z;
    r4.x = r4.x ? r5.x : r4.z;
    x0[0].x = r4.x;
    r4.y = r4.w * r7.y + r4.y;
    x1[1].x = r4.y;
    r7.xyz = r1.xyz * r4.yyy + r9.xyz;
    r4.y = cmp(r3.w < r4.y);
    r5.xw = renderTargetSize.xy * r7.xy;
    r12.xy = (int2)r5.xw;
    r12.zw = float2(0,0);
    r4.z = floatZSampler.Load(r12.xyz).x;
    r5.x = cmp(r4.z >= 0.984375);
    r5.w = 1.01587307 * r4.z;
    r4.z = r4.z * 64 + -63;
    r4.z = r5.x ? r4.z : r5.w;
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
    r5.xyw = r10.xyz * r4.xxx + r9.xyz;
    r4.x = cmp(r3.w < r4.x);
    r5.xy = renderTargetSize.xy * r5.xy;
    r7.xy = (int2)r5.xy;
    r7.zw = float2(0,0);
    r4.z = floatZSampler.Load(r7.xyz).x;
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
    r4.z = r5.w * r4.z;
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
    r5.xyw = r1.xyz * r4.yyy + r9.xyz;
    r4.y = cmp(r3.w < r4.y);
    r5.xy = renderTargetSize.xy * r5.xy;
    r7.xy = (int2)r5.xy;
    r7.zw = float2(0,0);
    r4.z = floatZSampler.Load(r7.xyz).x;
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
    r4.z = r5.w * r4.z;
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
    r5.xyw = r10.xyz * r4.xxx + r9.xyz;
    r4.x = cmp(r3.w < r4.x);
    r5.xy = renderTargetSize.xy * r5.xy;
    r7.xy = (int2)r5.xy;
    r7.zw = float2(0,0);
    r4.z = floatZSampler.Load(r7.xyz).x;
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
    r4.z = r5.w * r4.z;
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
    r5.xyw = r1.xyz * r4.yyy + r9.xyz;
    r4.y = cmp(r3.w < r4.y);
    r5.xy = renderTargetSize.xy * r5.xy;
    r7.xy = (int2)r5.xy;
    r7.zw = float2(0,0);
    r4.z = floatZSampler.Load(r7.xyz).x;
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
    r4.z = r5.w * r4.z;
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
    r5.xyw = r10.xyz * r4.xxx + r9.xyz;
    r4.x = cmp(r3.w < r4.x);
    r5.xy = renderTargetSize.xy * r5.xy;
    r7.xy = (int2)r5.xy;
    r7.zw = float2(0,0);
    r4.z = floatZSampler.Load(r7.xyz).x;
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
    r4.z = r5.w * r4.z;
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
    r5.xyw = r1.xyz * r4.yyy + r9.xyz;
    r4.y = cmp(r3.w < r4.y);
    r5.xy = renderTargetSize.xy * r5.xy;
    r7.xy = (int2)r5.xy;
    r7.zw = float2(0,0);
    r4.z = floatZSampler.Load(r7.xyz).x;
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
    r4.z = r5.w * r4.z;
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
    r5.xyw = r10.xyz * r4.xxx + r9.xyz;
    r4.x = cmp(r3.w < r4.x);
    r5.xy = renderTargetSize.xy * r5.xy;
    r7.xy = (int2)r5.xy;
    r7.zw = float2(0,0);
    r4.z = floatZSampler.Load(r7.xyz).x;
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
    r4.z = r5.w * r4.z;
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
    r5.xyw = r1.xyz * r4.yyy + r9.xyz;
    r4.y = cmp(r3.w < r4.y);
    r5.xy = renderTargetSize.xy * r5.xy;
    r7.xy = (int2)r5.xy;
    r7.zw = float2(0,0);
    r4.z = floatZSampler.Load(r7.xyz).x;
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
    r4.z = r5.w * r4.z;
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
    r5.xyw = r10.xyz * r4.xxx + r9.xyz;
    r4.x = cmp(r3.w < r4.x);
    r5.xy = renderTargetSize.xy * r5.xy;
    r7.xy = (int2)r5.xy;
    r7.zw = float2(0,0);
    r4.z = floatZSampler.Load(r7.xyz).x;
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
    r4.z = r5.w * r4.z;
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
    r5.xyw = r1.xyz * r4.yyy + r9.xyz;
    r4.y = cmp(r3.w < r4.y);
    r5.xy = renderTargetSize.xy * r5.xy;
    r7.xy = (int2)r5.xy;
    r7.zw = float2(0,0);
    r4.z = floatZSampler.Load(r7.xyz).x;
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
    r4.z = r5.w * r4.z;
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
    r5.xyw = r10.xyz * r1.www + r9.xyz;
    r1.w = cmp(r3.w < r1.w);
    r4.xw = renderTargetSize.xy * r5.xy;
    r7.xy = (int2)r4.xw;
    r7.zw = float2(0,0);
    r4.x = floatZSampler.Load(r7.xyz).x;
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
    r4.x = r5.w * r4.x;
    r4.x = cmp(1 < r4.x);
    r4.x = r4.x ? 1.000000 : 0;
    r4.x = r4.z * r4.x;
    r1.w = r1.w ? r4.x : r4.z;
    x0[0].x = r1.w;
    r1.w = x1[1].x;
    r4.x = x0[1].x;
    r4.y = r4.y * r4.y + -r1.w;
    r1.w = r4.x * r4.y + r1.w;
    r1.xyz = r1.xyz * r1.www + r9.xyz;
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
  r1.x = x2[0].x;
  r1.x = r1.x + -r5.z;
  r1.x = cmp(2.4000001 < abs(r1.x));
  r1.y = x0[0].x;
  r1.y = -r1.y * 0.5 + 1;
  r1.x = r1.x ? 0.5 : r1.y;
  r1.y = x2[1].x;
  r1.y = r1.y + -r5.z;
  r1.y = cmp(2.4000001 < abs(r1.y));
  r1.z = x0[1].x;
  r1.z = 0.5 * r1.z;
  r1.y = r1.y ? -0.5 : -r1.z;
  r1.x = r1.x + r1.y;
  r1.x = saturate(1 + -r1.x);
  r1.y = r1.x * -2 + 3;
  r1.x = r1.x * r1.x;
  r1.x = r1.y * r1.x;
  r1.x = min(r18.w, r1.x);
  r1.x = r18.z * r1.x;
  r1.xyz = r1.xxx * r33.xyz;
  r4.xyz = r1.xyz * r35.xyz + r29.xyz;
  r5.xyz = r1.xyz * r36.xyz + r30.xyz;
  r7.xyz = r1.xyz * r37.xyz + r32.xyz;
  r1.xyz = r1.xyz * r38.xyz + r31.xyz;
  r1.w = numRefProbes + -numOverrideProbes;
  r3.w = (int)r1.w & -32;
  r4.w = (int)r1.w + (int)-r3.w;
  r5.w = numRefProbes & -32;
  r6.w = (int)-r5.w + numRefProbes;
  r9.xy = float2(0,0);
  r10.w = 0;
  r12.yz = float2(0,1);
  r14.xy = float2(0,0);
  r15.xy = float2(0,0);
  r16.xy = float2(0,0);
  r17.xyzw = float4(0,0,0,0);
  r18.yzw = float3(0,0,0);
  r7.w = r3.w;
  while (true) {
    r8.x = cmp((uint)r7.w >= numRefProbes);
    if (r8.x != 0) break;
    r9.z = (uint)r7.w >> 5;
    r10.xyz = (int3)r9.xyz + (int3)r19.xyz;
    r8.x = visibleProbes.Load(r10.xyzw).x;
    r8.y = cmp((int)r3.w == (int)r7.w);
    bitmask.z = ((~(-1 << r4.w)) << 0) & 0xffffffff;  r9.z = (((uint)0 << 0) & bitmask.z) | ((uint)r8.x & ~bitmask.z);
    r8.x = r8.y ? r9.z : r8.x;
    r8.y = cmp((int)r5.w == (int)r7.w);
    if (r6.w == 0) r9.z = 0; else if (r6.w+0 < 32) {     r9.z = (uint)r8.x << (32-(r6.w + 0)); r9.z = (uint)r9.z >> (32-r6.w);    } else r9.z = (uint)r8.x >> 0;
    r8.x = r8.y ? r9.z : r8.x;
    r8.y = (int)r7.w + numLights;
    r20.xyzw = r17.xyzw;
    r21.xyz = r18.yzw;
    r9.z = r8.x;
    while (true) {
      if (r9.z == 0) break;
      r9.w = firstbitlow((uint)r9.z);
      r10.x = 1 << (int)r9.w;
      r10.y = (int)r9.z & (int)r10.x;
      if (r10.y != 0) {
        r9.z = (int)r9.z ^ (int)r10.x;
        r10.x = (int)r8.y + (int)r9.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r22.xyzw, r10.x, l(0), t11.xyzw
      r22.x = samp0[]..swiz;
      r22.y = samp0[]..swiz;
      r22.z = samp0[]..swiz;
      r22.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r10.xy, r10.x, l(16), t11.xyxx
      r10.x = samp0[]..swiz;
      r10.y = samp0[]..swiz;
        r22.xyz = -v6.xyz + r22.xyz;
        r10.z = r22.w;
        r10.xyz = cmp(abs(r22.xyz) < r10.zxy);
        r10.x = r10.y ? r10.x : 0;
        r10.x = r10.z ? r10.x : 0;
        if (r10.x != 0) {
          r9.w = (int)r7.w + (int)r9.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r9.w, l(0), t15.wxyz
        r22.x = samp0[]..swiz;
        r22.y = samp0[]..swiz;
        r22.z = samp0[]..swiz;
        r22.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r10.xy, r9.w, l(96), t15.xyxx
        r10.x = samp0[]..swiz;
        r10.y = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r9.w, l(116), t15.zwxy
        r23.x = samp0[]..swiz;
        r23.y = samp0[]..swiz;
        r23.z = samp0[]..swiz;
        r23.w = samp0[]..swiz;
          r24.xyz = v6.xyz + -r22.yzw;
          r10.z = (int)r23.w & 0x0000ffff;
          if (6 == 0) r12.w = 0; else if (6+25 < 32) {           r12.w = (uint)r23.w << (32-(6 + 25)); r12.w = (uint)r12.w >> (32-6);          } else r12.w = (uint)r23.w >> 25;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r25.xyzw, r10.z, l(0), t16.xyzw
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        r25.z = samp0[]..swiz;
        r25.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r10.z, l(16), t16.xyzw
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
        r26.z = samp0[]..swiz;
        r26.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r10.z, l(32), t16.xyzw
        r27.x = samp0[]..swiz;
        r27.y = samp0[]..swiz;
        r27.z = samp0[]..swiz;
        r27.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r10.z, l(48), t16.xyzw
        r28.x = samp0[]..swiz;
        r28.y = samp0[]..swiz;
        r28.z = samp0[]..swiz;
        r28.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r10.z, l(64), t16.xyzw
        r29.x = samp0[]..swiz;
        r29.y = samp0[]..swiz;
        r29.z = samp0[]..swiz;
        r29.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r10.z, l(80), t16.xyzw
        r30.x = samp0[]..swiz;
        r30.y = samp0[]..swiz;
        r30.z = samp0[]..swiz;
        r30.w = samp0[]..swiz;
          r13.x = dot(r25.xyz, r24.xyz);
          r13.x = saturate(r13.x + r25.w);
          r13.y = dot(r26.xyz, r24.xyz);
          r13.y = saturate(r13.y + r26.w);
          r13.x = r13.x * r13.y;
          r13.y = dot(r27.xyz, r24.xyz);
          r13.y = saturate(r13.y + r27.w);
          r13.x = r13.x * r13.y;
          r13.y = dot(r28.xyz, r24.xyz);
          r13.y = saturate(r13.y + r28.w);
          r13.x = r13.x * r13.y;
          r13.y = dot(r29.xyz, r24.xyz);
          r13.y = saturate(r13.y + r29.w);
          r13.x = r13.x * r13.y;
          r13.y = dot(r30.xyz, r24.xyz);
          r13.y = saturate(r13.y + r30.w);
          r12.x = r13.x * r13.y;
          r13.x = r10.x ? 0.000000 : 0;
          r13.xy = r13.xx ? r12.xy : r12.zx;
          r12.x = r10.x;
          r25.xy = r13.xy;
          r14.w = 1;
          while (true) {
            r15.w = cmp((int)r14.w >= (int)r12.w);
            if (r15.w != 0) break;
            r15.w = (int)r10.z + (int)r14.w;
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
            r15.w = dot(r26.xyz, r24.xyz);
            r15.w = saturate(r15.w + r26.w);
            r15.w = r25.x * r15.w;
            r16.w = dot(r27.xyz, r24.xyz);
            r16.w = saturate(r16.w + r27.w);
            r15.w = r16.w * r15.w;
            r16.w = dot(r28.xyz, r24.xyz);
            r16.w = saturate(r16.w + r28.w);
            r15.w = r16.w * r15.w;
            r16.w = dot(r29.xyz, r24.xyz);
            r16.w = saturate(r16.w + r29.w);
            r15.w = r16.w * r15.w;
            r16.w = dot(r30.xyz, r24.xyz);
            r16.w = saturate(r16.w + r30.w);
            r15.w = r16.w * r15.w;
            r16.w = dot(r31.xyz, r24.xyz);
            r16.w = saturate(r16.w + r31.w);
            r25.x = r16.w * r15.w;
            r19.w = (uint)r12.x >> 2;
            if (1 == 0) r22.w = 0; else if (1+2 < 32) {             r22.w = (uint)r12.x << (32-(1 + 2)); r22.w = (uint)r22.w >> (32-1);            } else r22.w = (uint)r12.x >> 2;
            r24.w = (int)r19.w & 2;
            r25.z = max(r25.y, r25.x);
            r15.w = -r15.w * r16.w + 1;
            r15.w = r25.y * r15.w;
            r13.w = r24.w ? r15.w : r25.z;
            r25.xy = r22.ww ? r25.xy : r13.zw;
            r14.w = (int)r14.w + 1;
            r12.x = r19.w;
          }
          r25.y = saturate(r25.y);
          r10.x = r25.y * r10.y;
          r10.z = cmp(0 < r10.x);
          if (r10.z != 0) {
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
            r21.z = r25.y * r10.y + r21.z;
            r9.w = r10.x * r23.z;
            r23.z = r31.z;
            r10.x = dot(r11.xyz, r23.xyz);
            r10.y = dot(r24.xyz, r23.xyz);
            r10.y = r10.y + -r31.w;
            r10.z = cmp(r10.y >= 0);
            r10.y = max(100, abs(r10.y));
            r10.y = r10.z ? r10.y : -r10.y;
            r10.x = max(1.00000001e-07, -r10.x);
            r10.x = r10.y / r10.x;
            r10.x = min(131072, abs(r10.x));
            r31.z = r32.z;
            r10.y = dot(r11.xyz, r31.xyz);
            r10.z = dot(r24.xyz, r31.xyz);
            r10.z = r10.z + -r32.w;
            r12.x = cmp(r10.z >= 0);
            r10.z = max(100, abs(r10.z));
            r10.z = r12.x ? r10.z : -r10.z;
            r10.y = max(1.00000001e-07, -r10.y);
            r10.y = r10.z / r10.y;
            r10.x = min(r10.x, abs(r10.y));
            r32.z = r33.z;
            r10.y = dot(r11.xyz, r32.xyz);
            r10.z = dot(r24.xyz, r32.xyz);
            r10.z = r10.z + -r33.w;
            r12.x = cmp(r10.z >= 0);
            r10.z = max(100, abs(r10.z));
            r10.z = r12.x ? r10.z : -r10.z;
            r10.y = max(1.00000001e-07, -r10.y);
            r10.y = r10.z / r10.y;
            r10.x = min(r10.x, abs(r10.y));
            r33.z = r34.z;
            r10.y = dot(r11.xyz, r33.xyz);
            r10.z = dot(r24.xyz, r33.xyz);
            r10.z = r10.z + -r34.w;
            r12.x = cmp(r10.z >= 0);
            r10.z = max(100, abs(r10.z));
            r10.z = r12.x ? r10.z : -r10.z;
            r10.y = max(1.00000001e-07, -r10.y);
            r10.y = r10.z / r10.y;
            r10.x = min(r10.x, abs(r10.y));
            r34.z = r35.x;
            r10.y = dot(r11.xyz, r34.xyz);
            r10.z = dot(r24.xyz, r34.xyz);
            r10.z = r10.z + -r35.y;
            r12.x = cmp(r10.z >= 0);
            r10.z = max(100, abs(r10.z));
            r10.z = r12.x ? r10.z : -r10.z;
            r10.y = max(1.00000001e-07, -r10.y);
            r10.y = r10.z / r10.y;
            r10.x = min(r10.x, abs(r10.y));
            r36.zw = r35.zw;
            r10.y = dot(r11.zxy, r36.xzw);
            r10.z = dot(r24.zxy, r36.xzw);
            r10.z = r10.z + -r36.y;
            r12.x = cmp(r10.z >= 0);
            r10.z = max(100, abs(r10.z));
            r10.z = r12.x ? r10.z : -r10.z;
            r10.y = max(1.00000001e-07, -r10.y);
            r10.y = r10.z / r10.y;
            r10.x = min(r10.x, abs(r10.y));
            r23.x = r28.w;
            r23.yz = r29.zw;
            r13.xyw = r23.xyz + r24.xyz;
            r13.xyw = r11.xyz * r10.xxx + r13.xyw;
            r10.y = dot(r13.xyw, r13.xyw);
            r10.y = sqrt(r10.y);
            r10.x = r10.x / r10.y;
            r10.x = r10.x + r10.x;
            r10.x = sqrt(r10.x);
            r10.x = 4.1552 + r10.x;
            r22.y = r26.z;
            r22.z = r27.x;
            r31.x = dot(r13.xyw, r22.xyz);
            r23.xy = r26.xw;
            r23.z = r27.w;
            r31.y = dot(r13.xyw, r23.xyz);
            r27.x = r26.y;
            r31.z = dot(r13.xyw, r27.xyz);
            if (9 == 0) r10.y = 0; else if (9+16 < 32) {             r10.y = (uint)r23.w << (32-(9 + 16)); r10.y = (uint)r10.y >> (32-9);            } else r10.y = (uint)r23.w >> 16;
            r31.w = (uint)r10.y;
            r10.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r31.xyzw, r10.x).xyz;
            r26.x = dot(r24.xyz, r22.xyz);
            r26.y = dot(r24.xyz, r23.xyz);
            r26.z = dot(r24.xyz, r27.xyz);
            r13.xyw = saturate(r26.xyz * r28.xyz + float3(0.5,0.5,0.5));
            r29.z = r30.x;
            r13.xyw = r13.xyw * r29.xyz + r30.yzw;
            r31.x = dot(r2.xyz, r22.xyz);
            r31.y = dot(r2.xyz, r23.xyz);
            r31.z = dot(r2.xyz, r27.xyz);
            r22.xyz = cmp(float3(0,0,0) < r31.xyz);
            r14.z = r22.x ? 0 : 0.5;
            r23.xyz = r14.xyz + r13.xyw;
            r23.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
            r24.xyz = r31.xyz * r31.xyz;
            r24.xyz = r24.xyz * r9.www;
            r15.z = r22.y ? 0 : 0.5;
            r22.xyw = r15.xyz + r13.xyw;
            r22.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r22.xyw, 0).xyz;
            r22.xyw = r22.xyw * r24.yyy;
            r22.xyw = r23.xyz * r24.xxx + r22.xyw;
            r16.z = r22.z ? 0 : 0.5;
            r13.xyw = r16.xyz + r13.xyw;
            r13.xyw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r13.xyw, 0).xyz;
            r13.xyw = r13.xyw * r24.zzz + r22.xyw;
            r22.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r31.xyzw, 6).xyz;
            r23.xyz = r22.xyz * r13.xyw;
            r12.x = dot(r23.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r20.xyz = r13.xyw * r22.xyz + r20.xyz;
            r12.w = 1.26815999 * r12.x;
            r10.xyz = r10.xyz * r9.www;
            r9.w = dot(r10.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r9.w = r12.x * 1.26815999 + r9.w;
            r9.w = r12.w / r9.w;
            r22.x = r20.w;
            r22.yz = r21.xy;
            r21.xyw = r10.yzx * r9.www + r22.yzx;
            r20.w = r21.w;
          }
        }
      }
    }
    r17.xyzw = r20.xyzw;
    r18.yzw = r21.xyz;
    r7.w = (int)r7.w + 32;
  }
  r5.w = cmp(r18.w < 1);
  if (r5.w != 0) {
    r9.xy = float2(0,0);
    r10.w = 0;
    r12.yz = float2(0,1);
    r13.xy = float2(0,0);
    r8.x = 1;
    r14.xy = float2(0,0);
    r15.xy = float2(0,0);
    r16.x = r17.w;
    r16.yzw = r18.yzw;
    r20.xyz = r17.xyz;
    r5.w = r18.w;
    r6.w = 0;
    while (true) {
      r7.w = cmp((uint)r6.w >= (uint)r1.w);
      if (r7.w != 0) break;
      r9.z = (uint)r6.w >> 5;
      r10.xyz = (int3)r9.xyz + (int3)r19.xyz;
      r7.w = visibleProbes.Load(r10.xyzw).x;
      r9.z = cmp((int)r3.w == (int)r6.w);
      if (r4.w == 0) r9.w = 0; else if (r4.w+0 < 32) {       r9.w = (uint)r7.w << (32-(r4.w + 0)); r9.w = (uint)r9.w >> (32-r4.w);      } else r9.w = (uint)r7.w >> 0;
      r7.w = r9.z ? r9.w : r7.w;
      r9.z = (int)r6.w + numLights;
      r21.xyzw = r16.xyzw;
      r10.xyz = r20.xyz;
      r9.w = r5.w;
      r12.w = r7.w;
      while (true) {
        if (r12.w == 0) break;
        r13.w = firstbitlow((uint)r12.w);
        r14.w = 1 << (int)r13.w;
        r15.w = (int)r12.w & (int)r14.w;
        if (r15.w != 0) {
          r12.w = (int)r12.w ^ (int)r14.w;
          r14.w = (int)r9.z + (int)r13.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r22.xyzw, r14.w, l(0), t11.xyzw
        r22.x = samp0[]..swiz;
        r22.y = samp0[]..swiz;
        r22.z = samp0[]..swiz;
        r22.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r23.xy, r14.w, l(16), t11.xyxx
        r23.x = samp0[]..swiz;
        r23.y = samp0[]..swiz;
          r22.xyz = -v6.xyz + r22.xyz;
          r23.z = r22.w;
          r22.xyz = cmp(abs(r22.xyz) < r23.zxy);
          r14.w = r22.y ? r22.x : 0;
          r14.w = r22.z ? r14.w : 0;
          if (r14.w != 0) {
            r13.w = (int)r6.w + (int)r13.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r13.w, l(0), t15.wxyz
          r22.x = samp0[]..swiz;
          r22.y = samp0[]..swiz;
          r22.z = samp0[]..swiz;
          r22.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xy, r13.w, l(96), t15.xyxx
          r23.x = samp0[]..swiz;
          r23.y = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r13.w, l(116), t15.zwxy
          r24.x = samp0[]..swiz;
          r24.y = samp0[]..swiz;
          r24.z = samp0[]..swiz;
          r24.w = samp0[]..swiz;
            r25.xyz = v6.xyz + -r22.yzw;
            r14.w = (int)r24.w & 0x0000ffff;
            if (6 == 0) r15.w = 0; else if (6+25 < 32) {             r15.w = (uint)r24.w << (32-(6 + 25)); r15.w = (uint)r15.w >> (32-6);            } else r15.w = (uint)r24.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r14.w, l(0), t16.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r14.w, l(16), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r14.w, l(32), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r14.w, l(48), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r14.w, l(64), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r14.w, l(80), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
            r19.w = dot(r26.xyz, r25.xyz);
            r19.w = saturate(r19.w + r26.w);
            r20.w = dot(r27.xyz, r25.xyz);
            r20.w = saturate(r20.w + r27.w);
            r19.w = r20.w * r19.w;
            r20.w = dot(r28.xyz, r25.xyz);
            r20.w = saturate(r20.w + r28.w);
            r19.w = r20.w * r19.w;
            r20.w = dot(r29.xyz, r25.xyz);
            r20.w = saturate(r20.w + r29.w);
            r19.w = r20.w * r19.w;
            r20.w = dot(r30.xyz, r25.xyz);
            r20.w = saturate(r20.w + r30.w);
            r19.w = r20.w * r19.w;
            r20.w = dot(r31.xyz, r25.xyz);
            r20.w = saturate(r20.w + r31.w);
            r12.x = r20.w * r19.w;
            r19.w = (int)r23.x & 1;
            r23.zw = r19.ww ? r12.xy : r12.zx;
            r12.x = r23.x;
            r26.xy = r23.zw;
            r19.w = 1;
            while (true) {
              r20.w = cmp((int)r19.w >= (int)r15.w);
              if (r20.w != 0) break;
              r20.w = (int)r14.w + (int)r19.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r20.w, l(0), t16.xyzw
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r20.w, l(16), t16.xyzw
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r20.w, l(32), t16.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r20.w, l(48), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r20.w, l(64), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r20.w, l(80), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
              r20.w = dot(r27.xyz, r25.xyz);
              r20.w = saturate(r20.w + r27.w);
              r20.w = r26.x * r20.w;
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
              r20.w = r22.w * r20.w;
              r22.w = dot(r32.xyz, r25.xyz);
              r22.w = saturate(r22.w + r32.w);
              r26.x = r22.w * r20.w;
              r25.w = (uint)r12.x >> 2;
              if (1 == 0) r26.z = 0; else if (1+2 < 32) {               r26.z = (uint)r12.x << (32-(1 + 2)); r26.z = (uint)r26.z >> (32-1);              } else r26.z = (uint)r12.x >> 2;
              r26.w = (int)r25.w & 2;
              r27.x = max(r26.y, r26.x);
              r20.w = -r20.w * r22.w + 1;
              r20.w = r26.y * r20.w;
              r8.y = r26.w ? r20.w : r27.x;
              r26.xy = r26.zz ? r26.xy : r8.xy;
              r19.w = (int)r19.w + 1;
              r12.x = r25.w;
            }
            r8.y = saturate(r26.y + -r9.w);
            r12.x = r8.y * r23.y;
            r14.w = cmp(0 < r12.x);
            if (r14.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r13.w, l(16), t15.xyzw
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r13.w, l(32), t15.yxwz
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r13.w, l(48), t15.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r13.w, l(64), t15.zwxy
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r13.w, l(80), t15.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r13.w, l(132), t15.zwxy
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r13.w, l(148), t15.zwxy
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r13.w, l(164), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r13.w, l(180), t15.zwxy
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r13.w, l(196), t15.xyzw
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xy, r13.w, l(212), t15.xyxx
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
              r21.w = r8.y * r23.y + r21.w;
              r8.y = r12.x * r24.z;
              r24.z = r32.z;
              r12.x = dot(r11.xyz, r24.xyz);
              r13.w = dot(r25.xyz, r24.xyz);
              r13.w = r13.w + -r32.w;
              r14.w = cmp(r13.w >= 0);
              r13.w = max(100, abs(r13.w));
              r13.w = r14.w ? r13.w : -r13.w;
              r12.x = max(1.00000001e-07, -r12.x);
              r12.x = r13.w / r12.x;
              r12.x = min(131072, abs(r12.x));
              r32.z = r33.z;
              r13.w = dot(r11.xyz, r32.xyz);
              r14.w = dot(r25.xyz, r32.xyz);
              r14.w = r14.w + -r33.w;
              r15.w = cmp(r14.w >= 0);
              r14.w = max(100, abs(r14.w));
              r14.w = r15.w ? r14.w : -r14.w;
              r13.w = max(1.00000001e-07, -r13.w);
              r13.w = r14.w / r13.w;
              r12.x = min(abs(r13.w), r12.x);
              r33.z = r34.z;
              r13.w = dot(r11.xyz, r33.xyz);
              r14.w = dot(r25.xyz, r33.xyz);
              r14.w = r14.w + -r34.w;
              r15.w = cmp(r14.w >= 0);
              r14.w = max(100, abs(r14.w));
              r14.w = r15.w ? r14.w : -r14.w;
              r13.w = max(1.00000001e-07, -r13.w);
              r13.w = r14.w / r13.w;
              r12.x = min(abs(r13.w), r12.x);
              r34.z = r35.z;
              r13.w = dot(r11.xyz, r34.xyz);
              r14.w = dot(r25.xyz, r34.xyz);
              r14.w = r14.w + -r35.w;
              r15.w = cmp(r14.w >= 0);
              r14.w = max(100, abs(r14.w));
              r14.w = r15.w ? r14.w : -r14.w;
              r13.w = max(1.00000001e-07, -r13.w);
              r13.w = r14.w / r13.w;
              r12.x = min(abs(r13.w), r12.x);
              r35.z = r36.x;
              r13.w = dot(r11.xyz, r35.xyz);
              r14.w = dot(r25.xyz, r35.xyz);
              r14.w = r14.w + -r36.y;
              r15.w = cmp(r14.w >= 0);
              r14.w = max(100, abs(r14.w));
              r14.w = r15.w ? r14.w : -r14.w;
              r13.w = max(1.00000001e-07, -r13.w);
              r13.w = r14.w / r13.w;
              r12.x = min(abs(r13.w), r12.x);
              r37.zw = r36.zw;
              r13.w = dot(r11.zxy, r37.xzw);
              r14.w = dot(r25.zxy, r37.xzw);
              r14.w = r14.w + -r37.y;
              r15.w = cmp(r14.w >= 0);
              r14.w = max(100, abs(r14.w));
              r14.w = r15.w ? r14.w : -r14.w;
              r13.w = max(1.00000001e-07, -r13.w);
              r13.w = r14.w / r13.w;
              r12.x = min(abs(r13.w), r12.x);
              r23.x = r29.w;
              r23.yz = r30.zw;
              r23.xyz = r23.xyz + r25.xyz;
              r23.xyz = r11.xyz * r12.xxx + r23.xyz;
              r13.w = dot(r23.xyz, r23.xyz);
              r13.w = sqrt(r13.w);
              r12.x = r12.x / r13.w;
              r12.x = r12.x + r12.x;
              r12.x = sqrt(r12.x);
              r12.x = 4.1552 + r12.x;
              r22.y = r27.z;
              r22.z = r28.x;
              r32.x = dot(r23.xyz, r22.xyz);
              r24.xy = r27.xw;
              r24.z = r28.w;
              r32.y = dot(r23.xyz, r24.xyz);
              r28.x = r27.y;
              r32.z = dot(r23.xyz, r28.xyz);
              if (9 == 0) r13.w = 0; else if (9+16 < 32) {               r13.w = (uint)r24.w << (32-(9 + 16)); r13.w = (uint)r13.w >> (32-9);              } else r13.w = (uint)r24.w >> 16;
              r32.w = (uint)r13.w;
              r23.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r32.xyzw, r12.x).xyz;
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
              r26.xzw = r26.xzw * r8.yyy;
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
              r12.x = dot(r25.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r10.xyz = r22.xyz * r24.xyz + r10.xyz;
              r13.z = 1.26815999 * r12.x;
              r22.xyz = r23.xyz * r8.yyy;
              r8.y = dot(r22.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r8.y = r12.x * 1.26815999 + r8.y;
              r8.y = r13.z / r8.y;
              r21.xyz = r22.xyz * r8.yyy + r21.xyz;
            }
          }
        }
      }
      r16.xyzw = r21.xyzw;
      r20.xyz = r10.xyz;
      r6.w = (int)r6.w + 32;
    }
    r18.xyzw = r16.zxyw;
    r17.xyz = r20.xyz;
    r18.xyzw = r18.yzxw;
  } else {
    r18.x = r17.w;
  }
  r1.w = max(1, r18.w);
  r1.w = rcp(r1.w);
  r18.w = saturate(r18.w);
  r9.xyz = r17.xyz * r1.www;
  r10.xyz = r18.xyz * r1.www;
  r3.w = cmp(r18.w < 0.99000001);
  if (r3.w != 0) {
    r3.w = 1 + -r18.w;
    r3.w = sunConstants.globalProbeExposure * r3.w;
    r12.xyz = -globalProbeConstants.data[0].xyz + v6.xyz;
    r13.x = globalProbeConstants.data[0].w * r12.x;
    r13.yz = globalProbeConstants.data[1].xy * r12.yz;
    r12.xyz = saturate(float3(0.5,0.5,0.5) + r13.xyz);
    r13.xy = globalProbeConstants.data[1].zw * r12.xy;
    r13.z = globalProbeConstants.data[2].x * r12.z;
    r12.xyz = globalProbeConstants.data[2].yzw + r13.xyz;
    r13.xyz = cmp(float3(0,0,0) < r2.xyz);
    r13.xyz = r13.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r13.w = 0;
    r14.xyz = r13.wwx + r12.xyz;
    r14.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r14.xyz, 0).xyz;
    r15.xyz = r2.xyz * r2.xyz;
    r15.xyz = r15.xyz * r3.www;
    r16.xyz = r13.wwy + r12.xyz;
    r16.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r16.xyz, 0).xyz;
    r16.xyz = r16.xyz * r15.yyy;
    r14.xyz = r14.xyz * r15.xxx + r16.xyz;
    r12.xyz = r13.wwz + r12.xyz;
    r12.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r12.xyz, 0).xyz;
    r12.xyz = r12.xyz * r15.zzz + r14.xyz;
    r2.w = 0;
    r2.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r2.xyzw, 6).xyz;
    r2.xyz = r12.xyz * r2.xyz;
    r2.w = dot(r2.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r9.xyz = r17.xyz * r1.www + r2.xyz;
    r11.w = 0;
    r2.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, 5).xyz;
    r10.xyz = r2.xyz * r2.www + r10.xyz;
  }
  r2.xyz = r9.xyz * r0.www + r4.xyz;
  r4.xyz = r9.xyz * r0.www + r5.xyz;
  r8.w = 0;
  r5.xy = float2(0.0078125,0.0078125) + r8.zw;
  r5.xy = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r5.xy, 0).xy;
  r8.xyz = r10.xyz * r0.www;
  r1.xyz = r8.xyz * r5.xxx + r1.xyz;
  r5.xyz = r8.xyz * r5.yyy + r7.xyz;
  r0.w = dot(r3.xyz, r6.xyz);
  r0.w = 1 + -abs(r0.w);
  r0.w = r0.w * r0.w;
  r0.w = r0.w * 0.600000024 + 0.400000006;
  r0.w = min(1, r0.w);
  r3.xyz = transColorTint.xyz * r0.www;
  r6.xyz = saturate(r0.xyz * float3(0.0199999996,0.0199999996,0.0199999996) + float3(0.0399999991,0.0399999991,0.0399999991));
  r7.xyz = specColorTint.xyz * r6.xyz;
  r3.xyz = r3.xyz * r0.xyz;
  r3.xyz = r4.xyz * r3.xyz;
  r0.xyz = r2.xyz * r0.xyz + r3.xyz;
  r2.xyz = -r6.xyz * specColorTint.xyz + float3(1,1,1);
  r1.xyz = r2.xyz * r1.xyz;
  r1.xyz = r5.xyz * r7.xyz + r1.xyz;
  r0.xyz = r1.xyz + r0.xyz;
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