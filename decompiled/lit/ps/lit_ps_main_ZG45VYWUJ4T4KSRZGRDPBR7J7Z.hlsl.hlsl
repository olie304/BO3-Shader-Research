// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:38:30 2021

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
  float alphaRevealSoftEdge : packoffset(c10);
  float alphaRevealRamp : packoffset(c10.y);
  float2 revealScale : packoffset(c10.z);
  float3 colorTint : packoffset(c11);
  float baseNormalHeight : packoffset(c11.w);
  float2 glossRange : packoffset(c12);
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
SamplerState revealSampler_s : register(s1);
SamplerState samplerLinear_s : register(s2);
SamplerState colorSampler_s : register(s3);
SamplerState samplerLinearClamp_s : register(s4);
SamplerState normalSampler_s : register(s5);
SamplerComparisonState ShadowSamplerComparisonState_s : register(s13);
Texture2D<float4> revealMap : register(t0);
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
Texture2D<float4> tintMask : register(t22);
StructuredBuffer<gSunShadowTree> gSunShadowTree : register(t23);
Texture2D<float4> normalMap : register(t24);
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = colorMap.Sample(colorSampler_s, w1.xy).xyz;
  r0.w = tintMask.Sample(colorSampler_s, w1.xy).x;
  r1.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r1.xyz = r0.www * r1.xyz + float3(1,1,1);
  r0.xyz = r1.xyz * r0.xyz;
  r1.xy = revealScale.xy * w1.xy;
  r0.w = revealMap.Sample(revealSampler_s, r1.xy).x;
  r1.x = saturate(v1.x * 0.998000026 + 0.00100000005);
  r1.y = 1 + -r1.x;
  r1.z = saturate(alphaRevealRamp);
  r1.x = log2(r1.x);
  r1.x = r1.z * r1.x;
  r1.x = exp2(r1.x);
  r2.x = -r1.x;
  r1.x = log2(r1.y);
  r1.x = r1.z * r1.x;
  r2.y = exp2(r1.x);
  r1.xy = saturate(alphaRevealSoftEdge * r2.xy + r1.yy);
  r0.w = -r1.x + r0.w;
  r1.x = r1.y + -r1.x;
  o0.w = saturate(r0.w / r1.x);
  r0.w = saturate(0.0588235296 * glossRange.y);
  r1.xyz = normalMap.Sample(normalSampler_s, w1.xy).xyz;
  r1.xyz = float3(-0.5,-0.5,-0) + r1.xyz;
  r1.xyz = baseNormalHeight * r1.xyz + float3(0.5,0.5,0);
  r1.xy = r1.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r1.w = dot(r1.xy, r1.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r1.z = r1.z * r1.z;
  r1.z = 0.333333343 * r1.z;
  r1.z = min(1, r1.z);
  r2.x = v6.x ? 1 : -1;
  r2.y = dot(v2.xyz, v2.xyz);
  r2.y = rsqrt(r2.y);
  r2.yzw = v2.xyz * r2.yyy;
  r2.yzw = r2.yzw * r2.xxx;
  r3.x = dot(v3.xyz, v3.xyz);
  r3.x = rsqrt(r3.x);
  r3.xyz = v3.xyz * r3.xxx;
  r3.xyz = r3.xyz * r2.xxx;
  r3.w = dot(v4.xyz, v4.xyz);
  r3.w = rsqrt(r3.w);
  r4.xyz = v4.xyz * r3.www;
  r4.xyz = r4.xyz * r2.xxx;
  r0.w = -17 * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r1.z + r0.w;
  r0.w = log2(r0.w);
  r0.w = -0.0588235296 * r0.w;
  r5.y = max(0, r0.w);
  r4.xyz = r4.xyz * r1.yyy;
  r1.xyz = r3.xyz * r1.xxx + r4.xyz;
  r1.xyz = r2.yzw * r1.www + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xy = (uint2)v0.xy;
  r0.w = cmp(v0.z >= 0.984375);
  r2.z = 1.01587307 * v0.z;
  r2.w = v0.z * 64 + -63;
  r0.w = r0.w ? r2.w : r2.z;
  r0.w = max(9.99999994e-09, r0.w);
  r0.w = rcp(r0.w);
  r2.z = dot(-v5.xyz, -v5.xyz);
  r2.z = rsqrt(r2.z);
  r3.xyz = -v5.xyz * r2.zzz;
  r2.w = cmp(isDepthHack != 0);
  r4.xy = (uint2)r2.yx;
  r3.w = dot(r4.yx, float2(0.0671105608,0.00583714992));
  r3.w = frac(r3.w);
  r3.w = 52.9829178 * r3.w;
  r3.w = frac(r3.w);
  r3.w = r3.w * 6.28318548 + gameTick.w;
  sincos(r3.w, r6.x, r7.x);
  r3.w = dot(r4.xy, float2(0.0671105608,0.00583714992));
  r3.w = frac(r3.w);
  r3.w = 52.9829178 * r3.w;
  r3.w = frac(r3.w);
  r3.w = r3.w * 6.28318548 + gameTick.w;
  sincos(r3.w, r4.x, r8.x);
  r5.x = saturate(dot(r1.xyz, r3.xyz));
  r3.w = dot(-r3.xyz, r1.xyz);
  r3.w = r3.w + r3.w;
  r9.xyz = r1.xyz * -r3.www + -r3.xyz;
  r3.w = 17 * r5.y;
  r3.w = exp2(r3.w);
  r3.w = 2 + r3.w;
  r3.w = 2 / r3.w;
  r4.y = sqrt(r3.w);
  r4.z = 1 + -r5.y;
  r4.w = 5 * r4.z;
  r5.z = r4.z * 5 + -2.5;
  r5.z = 0.400000006 * r5.z;
  r5.z = max(0, r5.z);
  r6.zw = -r4.zz * float2(10,5) + float2(6.85740995,7.08500004);
  r5.w = exp2(r6.z);
  r5.w = r5.x * r5.w;
  r5.zw = float2(100,9.1368103) * r5.zw;
  r6.z = r4.w * r4.z;
  r6.z = -r6.z * 2.0159049 + r6.w;
  r6.z = exp2(r6.z);
  r6.z = r6.z * r5.x;
  r6.z = 9.70808983 * r6.z;
  r5.w = max(r6.z, r5.w);
  r5.w = max(1.26815999, r5.w);
  r6.z = numRefProbes + -numOverrideProbes;
  r0.w = 0.0078125 * r0.w;
  r0.w = min(15, r0.w);
  r0.w = (uint)r0.w;
  r10.xy = (uint2)r2.xy >> int2(6,6);
  r10.z = (uint)r0.w << 4;
  r0.w = (int)r6.z & -32;
  r2.x = (int)-r0.w + (int)r6.z;
  r2.y = numRefProbes & -32;
  r6.w = (int)-r2.y + numRefProbes;
  r11.xy = float2(0,0);
  r12.w = 0;
  r13.yz = float2(0,1);
  r14.xy = float2(0,0);
  r15.x = 1;
  r16.xy = float2(0,0);
  r17.xy = float2(0,0);
  r18.xyzw = float4(0,0,0,0);
  r19.yzw = float3(0,0,0);
  r7.w = r0.w;
  while (true) {
    r8.y = cmp((uint)r7.w >= numRefProbes);
    if (r8.y != 0) break;
    r11.z = (uint)r7.w >> 5;
    r12.xyz = (int3)r10.xyz + (int3)r11.xyz;
    r8.y = visibleProbes.Load(r12.xyzw).x;
    r8.z = cmp((int)r0.w == (int)r7.w);
    bitmask.w = ((~(-1 << r2.x)) << 0) & 0xffffffff;  r8.w = (((uint)0 << 0) & bitmask.w) | ((uint)r8.y & ~bitmask.w);
    r8.y = r8.z ? r8.w : r8.y;
    r8.z = cmp((int)r2.y == (int)r7.w);
    if (r6.w == 0) r8.w = 0; else if (r6.w+0 < 32) {     r8.w = (uint)r8.y << (32-(r6.w + 0)); r8.w = (uint)r8.w >> (32-r6.w);    } else r8.w = (uint)r8.y >> 0;
    r8.y = r8.z ? r8.w : r8.y;
    r8.z = (int)r7.w + numLights;
    r20.xyzw = r18.xyzw;
    r21.xyz = r19.yzw;
    r8.w = r8.y;
    while (true) {
      if (r8.w == 0) break;
      r10.w = firstbitlow((uint)r8.w);
      r11.z = 1 << (int)r10.w;
      r11.w = (int)r8.w & (int)r11.z;
      if (r11.w != 0) {
        r8.w = (int)r8.w ^ (int)r11.z;
        r11.z = (int)r8.z + (int)r10.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r22.xyzw, r11.z, l(0), t11.xyzw
      r22.x = samp0[]..swiz;
      r22.y = samp0[]..swiz;
      r22.z = samp0[]..swiz;
      r22.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r12.xy, r11.z, l(16), t11.xyxx
      r12.x = samp0[]..swiz;
      r12.y = samp0[]..swiz;
        r22.xyz = -v5.xyz + r22.xyz;
        r12.z = r22.w;
        r12.xyz = cmp(abs(r22.xyz) < r12.zxy);
        r11.z = r12.y ? r12.x : 0;
        r11.z = r12.z ? r11.z : 0;
        if (r11.z != 0) {
          r10.w = (int)r7.w + (int)r10.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r10.w, l(0), t15.wxyz
        r22.x = samp0[]..swiz;
        r22.y = samp0[]..swiz;
        r22.z = samp0[]..swiz;
        r22.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r11.zw, r10.w, l(96), t15.xxxy
        r11.z = samp0[]..swiz;
        r11.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r10.w, l(116), t15.zwxy
        r23.x = samp0[]..swiz;
        r23.y = samp0[]..swiz;
        r23.z = samp0[]..swiz;
        r23.w = samp0[]..swiz;
          r12.xyz = v5.xyz + -r22.yzw;
          r13.w = (int)r23.w & 0x0000ffff;
          if (6 == 0) r14.w = 0; else if (6+25 < 32) {           r14.w = (uint)r23.w << (32-(6 + 25)); r14.w = (uint)r14.w >> (32-6);          } else r14.w = (uint)r23.w >> 25;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r24.xyzw, r13.w, l(0), t16.xyzw
        r24.x = samp0[]..swiz;
        r24.y = samp0[]..swiz;
        r24.z = samp0[]..swiz;
        r24.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r25.xyzw, r13.w, l(16), t16.xyzw
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        r25.z = samp0[]..swiz;
        r25.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r13.w, l(32), t16.xyzw
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
        r26.z = samp0[]..swiz;
        r26.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r13.w, l(48), t16.xyzw
        r27.x = samp0[]..swiz;
        r27.y = samp0[]..swiz;
        r27.z = samp0[]..swiz;
        r27.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r13.w, l(64), t16.xyzw
        r28.x = samp0[]..swiz;
        r28.y = samp0[]..swiz;
        r28.z = samp0[]..swiz;
        r28.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r13.w, l(80), t16.xyzw
        r29.x = samp0[]..swiz;
        r29.y = samp0[]..swiz;
        r29.z = samp0[]..swiz;
        r29.w = samp0[]..swiz;
          r15.z = dot(r24.xyz, r12.xyz);
          r15.z = saturate(r15.z + r24.w);
          r15.w = dot(r25.xyz, r12.xyz);
          r15.w = saturate(r15.w + r25.w);
          r15.z = r15.z * r15.w;
          r15.w = dot(r26.xyz, r12.xyz);
          r15.w = saturate(r15.w + r26.w);
          r15.z = r15.z * r15.w;
          r15.w = dot(r27.xyz, r12.xyz);
          r15.w = saturate(r15.w + r27.w);
          r15.z = r15.z * r15.w;
          r15.w = dot(r28.xyz, r12.xyz);
          r15.w = saturate(r15.w + r28.w);
          r15.z = r15.z * r15.w;
          r15.w = dot(r29.xyz, r12.xyz);
          r15.w = saturate(r15.w + r29.w);
          r13.x = r15.z * r15.w;
          r15.z = (int)r11.z & 1;
          r15.zw = r15.zz ? r13.xy : r13.zx;
          r13.x = r11.z;
          r24.xy = r15.zw;
          r16.w = 1;
          while (true) {
            r17.w = cmp((int)r16.w >= (int)r14.w);
            if (r17.w != 0) break;
            r17.w = (int)r13.w + (int)r16.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r25.xyzw, r17.w, l(0), t16.xyzw
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r17.w, l(16), t16.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r17.w, l(32), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r17.w, l(48), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r17.w, l(64), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r17.w, l(80), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
            r17.w = dot(r25.xyz, r12.xyz);
            r17.w = saturate(r17.w + r25.w);
            r17.w = r24.x * r17.w;
            r22.w = dot(r26.xyz, r12.xyz);
            r22.w = saturate(r22.w + r26.w);
            r17.w = r22.w * r17.w;
            r22.w = dot(r27.xyz, r12.xyz);
            r22.w = saturate(r22.w + r27.w);
            r17.w = r22.w * r17.w;
            r22.w = dot(r28.xyz, r12.xyz);
            r22.w = saturate(r22.w + r28.w);
            r17.w = r22.w * r17.w;
            r22.w = dot(r29.xyz, r12.xyz);
            r22.w = saturate(r22.w + r29.w);
            r17.w = r22.w * r17.w;
            r22.w = dot(r30.xyz, r12.xyz);
            r22.w = saturate(r22.w + r30.w);
            r24.x = r22.w * r17.w;
            r24.z = (uint)r13.x >> 2;
            if (1 == 0) r24.w = 0; else if (1+2 < 32) {             r24.w = (uint)r13.x << (32-(1 + 2)); r24.w = (uint)r24.w >> (32-1);            } else r24.w = (uint)r13.x >> 2;
            r25.x = (int)r24.z & 2;
            r25.y = max(r24.y, r24.x);
            r17.w = -r17.w * r22.w + 1;
            r17.w = r24.y * r17.w;
            r15.y = r25.x ? r17.w : r25.y;
            r24.xy = r24.ww ? r24.xy : r15.xy;
            r16.w = (int)r16.w + 1;
            r13.x = r24.z;
          }
          r24.y = saturate(r24.y);
          r11.z = r24.y * r11.w;
          r13.x = cmp(0 < r11.z);
          if (r13.x != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r10.w, l(16), t15.xyzw
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r10.w, l(32), t15.yxwz
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r10.w, l(48), t15.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r10.w, l(64), t15.zwxy
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r10.w, l(80), t15.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r10.w, l(132), t15.zwxy
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r10.w, l(148), t15.zwxy
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r10.w, l(164), t15.zwxy
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r10.w, l(180), t15.zwxy
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r10.w, l(196), t15.xyzw
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xy, r10.w, l(212), t15.xyxx
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
            r21.z = r24.y * r11.w + r21.z;
            r10.w = r11.z * r23.z;
            r23.z = r30.z;
            r11.z = dot(r9.xyz, r23.xyz);
            r11.w = dot(r12.xyz, r23.xyz);
            r11.w = r11.w + -r30.w;
            r13.x = cmp(r11.w >= 0);
            r11.w = max(abs(r11.w), r5.z);
            r11.w = r13.x ? r11.w : -r11.w;
            r11.z = max(1.00000001e-07, -r11.z);
            r11.z = r11.w / r11.z;
            r11.z = min(131072, abs(r11.z));
            r30.z = r31.z;
            r11.w = dot(r9.xyz, r30.xyz);
            r13.x = dot(r12.xyz, r30.xyz);
            r13.x = r13.x + -r31.w;
            r13.w = cmp(r13.x >= 0);
            r13.x = max(abs(r13.x), r5.z);
            r13.x = r13.w ? r13.x : -r13.x;
            r11.w = max(1.00000001e-07, -r11.w);
            r11.w = r13.x / r11.w;
            r11.z = min(r11.z, abs(r11.w));
            r31.z = r32.z;
            r11.w = dot(r9.xyz, r31.xyz);
            r13.x = dot(r12.xyz, r31.xyz);
            r13.x = r13.x + -r32.w;
            r13.w = cmp(r13.x >= 0);
            r13.x = max(abs(r13.x), r5.z);
            r13.x = r13.w ? r13.x : -r13.x;
            r11.w = max(1.00000001e-07, -r11.w);
            r11.w = r13.x / r11.w;
            r11.z = min(r11.z, abs(r11.w));
            r32.z = r33.z;
            r11.w = dot(r9.xyz, r32.xyz);
            r13.x = dot(r12.xyz, r32.xyz);
            r13.x = r13.x + -r33.w;
            r13.w = cmp(r13.x >= 0);
            r13.x = max(abs(r13.x), r5.z);
            r13.x = r13.w ? r13.x : -r13.x;
            r11.w = max(1.00000001e-07, -r11.w);
            r11.w = r13.x / r11.w;
            r11.z = min(r11.z, abs(r11.w));
            r33.z = r34.x;
            r11.w = dot(r9.xyz, r33.xyz);
            r13.x = dot(r12.xyz, r33.xyz);
            r13.x = r13.x + -r34.y;
            r13.w = cmp(r13.x >= 0);
            r13.x = max(abs(r13.x), r5.z);
            r13.x = r13.w ? r13.x : -r13.x;
            r11.w = max(1.00000001e-07, -r11.w);
            r11.w = r13.x / r11.w;
            r11.z = min(r11.z, abs(r11.w));
            r35.zw = r34.zw;
            r11.w = dot(r9.zxy, r35.xzw);
            r13.x = dot(r12.zxy, r35.xzw);
            r13.x = r13.x + -r35.y;
            r13.w = cmp(r13.x >= 0);
            r13.x = max(abs(r13.x), r5.z);
            r13.x = r13.w ? r13.x : -r13.x;
            r11.w = max(1.00000001e-07, -r11.w);
            r11.w = r13.x / r11.w;
            r11.z = min(r11.z, abs(r11.w));
            r23.x = r27.w;
            r23.yz = r28.zw;
            r15.yzw = r23.xyz + r12.xyz;
            r15.yzw = r9.xyz * r11.zzz + r15.yzw;
            r11.w = dot(r15.yzw, r15.yzw);
            r11.w = sqrt(r11.w);
            r11.z = r11.z / r11.w;
            r11.z = r11.z + r11.z;
            r11.z = sqrt(r11.z);
            r11.z = r4.z * 5 + r11.z;
            r11.z = -0.844799995 + r11.z;
            r22.y = r25.z;
            r22.z = r26.x;
            r30.x = dot(r15.yzw, r22.xyz);
            r23.xy = r25.xw;
            r23.z = r26.w;
            r30.y = dot(r15.yzw, r23.xyz);
            r26.x = r25.y;
            r30.z = dot(r15.yzw, r26.xyz);
            if (9 == 0) r11.w = 0; else if (9+16 < 32) {             r11.w = (uint)r23.w << (32-(9 + 16)); r11.w = (uint)r11.w >> (32-9);            } else r11.w = (uint)r23.w >> 16;
            r30.w = (uint)r11.w;
            r15.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r30.xyzw, r11.z).xyz;
            r25.x = dot(r12.xyz, r22.xyz);
            r25.y = dot(r12.xyz, r23.xyz);
            r25.z = dot(r12.xyz, r26.xyz);
            r12.xyz = saturate(r25.xyz * r27.xyz + float3(0.5,0.5,0.5));
            r28.z = r29.x;
            r12.xyz = r12.xyz * r28.xyz + r29.yzw;
            r30.x = dot(r1.xyz, r22.xyz);
            r30.y = dot(r1.xyz, r23.xyz);
            r30.z = dot(r1.xyz, r26.xyz);
            r22.xyz = cmp(float3(0,0,0) < r30.xyz);
            r14.z = r22.x ? 0 : 0.5;
            r23.xyz = r14.xyz + r12.xyz;
            r23.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
            r24.xzw = r30.xyz * r30.xyz;
            r24.xzw = r24.xzw * r10.www;
            r16.z = r22.y ? 0 : 0.5;
            r22.xyw = r16.xyz + r12.xyz;
            r22.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r22.xyw, 0).xyz;
            r22.xyw = r22.xyw * r24.zzz;
            r22.xyw = r23.xyz * r24.xxx + r22.xyw;
            r17.z = r22.z ? 0 : 0.5;
            r12.xyz = r17.xyz + r12.xyz;
            r12.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r12.xyz, 0).xyz;
            r12.xyz = r12.xyz * r24.www + r22.xyw;
            r22.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r30.xyzw, 6).xyz;
            r23.xyz = r22.xyz * r12.xyz;
            r11.z = dot(r23.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r20.xyz = r12.xyz * r22.xyz + r20.xyz;
            r11.w = r11.z * r5.w;
            r12.xyz = r15.yzw * r10.www;
            r10.w = dot(r12.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r10.w = r5.w * r11.z + r10.w;
            r10.w = r11.w / r10.w;
            r22.x = r20.w;
            r22.yz = r21.xy;
            r21.xyw = r12.yzx * r10.www + r22.yzx;
            r20.w = r21.w;
          }
        }
      }
    }
    r18.xyzw = r20.xyzw;
    r19.yzw = r21.xyz;
    r7.w = (int)r7.w + 32;
  }
  r2.y = cmp(r19.w < 1);
  if (r2.y != 0) {
    r11.xy = float2(0,0);
    r12.w = 0;
    r13.yz = float2(0,1);
    r14.xy = float2(0,0);
    r15.x = 1;
    r16.xy = float2(0,0);
    r17.xy = float2(0,0);
    r20.x = r18.w;
    r20.yzw = r19.yzw;
    r8.yzw = r18.xyz;
    r2.y = r19.w;
    r6.w = 0;
    while (true) {
      r7.w = cmp((uint)r6.w >= (uint)r6.z);
      if (r7.w != 0) break;
      r11.z = (uint)r6.w >> 5;
      r12.xyz = (int3)r10.xyz + (int3)r11.xyz;
      r7.w = visibleProbes.Load(r12.xyzw).x;
      r10.w = cmp((int)r0.w == (int)r6.w);
      if (r2.x == 0) r11.z = 0; else if (r2.x+0 < 32) {       r11.z = (uint)r7.w << (32-(r2.x + 0)); r11.z = (uint)r11.z >> (32-r2.x);      } else r11.z = (uint)r7.w >> 0;
      r7.w = r10.w ? r11.z : r7.w;
      r10.w = (int)r6.w + numLights;
      r21.xyzw = r20.xyzw;
      r12.xyz = r8.yzw;
      r11.z = r2.y;
      r11.w = r7.w;
      while (true) {
        if (r11.w == 0) break;
        r13.w = firstbitlow((uint)r11.w);
        r14.w = 1 << (int)r13.w;
        r15.z = (int)r11.w & (int)r14.w;
        if (r15.z != 0) {
          r11.w = (int)r11.w ^ (int)r14.w;
          r14.w = (int)r10.w + (int)r13.w;
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
          r22.xyz = -v5.xyz + r22.xyz;
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
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r15.zw, r13.w, l(96), t15.xxxy
          r15.z = samp0[]..swiz;
          r15.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r13.w, l(116), t15.zwxy
          r23.x = samp0[]..swiz;
          r23.y = samp0[]..swiz;
          r23.z = samp0[]..swiz;
          r23.w = samp0[]..swiz;
            r24.xyz = v5.xyz + -r22.yzw;
            r14.w = (int)r23.w & 0x0000ffff;
            if (6 == 0) r16.w = 0; else if (6+25 < 32) {             r16.w = (uint)r23.w << (32-(6 + 25)); r16.w = (uint)r16.w >> (32-6);            } else r16.w = (uint)r23.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r25.xyzw, r14.w, l(0), t16.xyzw
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r14.w, l(16), t16.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r14.w, l(32), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r14.w, l(48), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r14.w, l(64), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r14.w, l(80), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
            r17.w = dot(r25.xyz, r24.xyz);
            r17.w = saturate(r17.w + r25.w);
            r22.w = dot(r26.xyz, r24.xyz);
            r22.w = saturate(r22.w + r26.w);
            r17.w = r22.w * r17.w;
            r22.w = dot(r27.xyz, r24.xyz);
            r22.w = saturate(r22.w + r27.w);
            r17.w = r22.w * r17.w;
            r22.w = dot(r28.xyz, r24.xyz);
            r22.w = saturate(r22.w + r28.w);
            r17.w = r22.w * r17.w;
            r22.w = dot(r29.xyz, r24.xyz);
            r22.w = saturate(r22.w + r29.w);
            r17.w = r22.w * r17.w;
            r22.w = dot(r30.xyz, r24.xyz);
            r22.w = saturate(r22.w + r30.w);
            r13.x = r22.w * r17.w;
            r17.w = (int)r15.z & 1;
            r25.xy = r17.ww ? r13.xy : r13.zx;
            r13.x = r15.z;
            r26.xy = r25.xy;
            r17.w = 1;
            while (true) {
              r22.w = cmp((int)r17.w >= (int)r16.w);
              if (r22.w != 0) break;
              r22.w = (int)r14.w + (int)r17.w;
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
              r22.w = dot(r27.xyz, r24.xyz);
              r22.w = saturate(r22.w + r27.w);
              r22.w = r26.x * r22.w;
              r24.w = dot(r28.xyz, r24.xyz);
              r24.w = saturate(r24.w + r28.w);
              r22.w = r24.w * r22.w;
              r24.w = dot(r29.xyz, r24.xyz);
              r24.w = saturate(r24.w + r29.w);
              r22.w = r24.w * r22.w;
              r24.w = dot(r30.xyz, r24.xyz);
              r24.w = saturate(r24.w + r30.w);
              r22.w = r24.w * r22.w;
              r24.w = dot(r31.xyz, r24.xyz);
              r24.w = saturate(r24.w + r31.w);
              r22.w = r24.w * r22.w;
              r24.w = dot(r32.xyz, r24.xyz);
              r24.w = saturate(r24.w + r32.w);
              r26.x = r24.w * r22.w;
              r25.z = (uint)r13.x >> 2;
              if (1 == 0) r25.w = 0; else if (1+2 < 32) {               r25.w = (uint)r13.x << (32-(1 + 2)); r25.w = (uint)r25.w >> (32-1);              } else r25.w = (uint)r13.x >> 2;
              r26.z = (int)r25.z & 2;
              r26.w = max(r26.y, r26.x);
              r22.w = -r22.w * r24.w + 1;
              r22.w = r26.y * r22.w;
              r15.y = r26.z ? r22.w : r26.w;
              r26.xy = r25.ww ? r26.xy : r15.xy;
              r17.w = (int)r17.w + 1;
              r13.x = r25.z;
            }
            r13.x = saturate(r26.y + -r11.z);
            r14.w = r13.x * r15.w;
            r15.y = cmp(0 < r14.w);
            if (r15.y != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r13.w, l(16), t15.xyzw
            r25.x = samp0[]..swiz;
            r25.y = samp0[]..swiz;
            r25.z = samp0[]..swiz;
            r25.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r13.w, l(32), t15.yxwz
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r13.w, l(48), t15.xyzw
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r13.w, l(64), t15.zwxy
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r13.w, l(80), t15.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r13.w, l(132), t15.zwxy
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r13.w, l(148), t15.zwxy
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r13.w, l(164), t15.zwxy
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r13.w, l(180), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r13.w, l(196), t15.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xy, r13.w, l(212), t15.xyxx
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
              r21.w = r13.x * r15.w + r21.w;
              r13.x = r14.w * r23.z;
              r23.z = r31.z;
              r13.w = dot(r9.xyz, r23.xyz);
              r14.w = dot(r24.xyz, r23.xyz);
              r14.w = r14.w + -r31.w;
              r15.y = cmp(r14.w >= 0);
              r14.w = max(abs(r14.w), r5.z);
              r14.w = r15.y ? r14.w : -r14.w;
              r13.w = max(1.00000001e-07, -r13.w);
              r13.w = r14.w / r13.w;
              r13.w = min(131072, abs(r13.w));
              r31.z = r32.z;
              r14.w = dot(r9.xyz, r31.xyz);
              r15.y = dot(r24.xyz, r31.xyz);
              r15.y = r15.y + -r32.w;
              r15.z = cmp(r15.y >= 0);
              r15.y = max(abs(r15.y), r5.z);
              r15.y = r15.z ? r15.y : -r15.y;
              r14.w = max(1.00000001e-07, -r14.w);
              r14.w = r15.y / r14.w;
              r13.w = min(abs(r14.w), r13.w);
              r32.z = r33.z;
              r14.w = dot(r9.xyz, r32.xyz);
              r15.y = dot(r24.xyz, r32.xyz);
              r15.y = r15.y + -r33.w;
              r15.z = cmp(r15.y >= 0);
              r15.y = max(abs(r15.y), r5.z);
              r15.y = r15.z ? r15.y : -r15.y;
              r14.w = max(1.00000001e-07, -r14.w);
              r14.w = r15.y / r14.w;
              r13.w = min(abs(r14.w), r13.w);
              r33.z = r34.z;
              r14.w = dot(r9.xyz, r33.xyz);
              r15.y = dot(r24.xyz, r33.xyz);
              r15.y = r15.y + -r34.w;
              r15.z = cmp(r15.y >= 0);
              r15.y = max(abs(r15.y), r5.z);
              r15.y = r15.z ? r15.y : -r15.y;
              r14.w = max(1.00000001e-07, -r14.w);
              r14.w = r15.y / r14.w;
              r13.w = min(abs(r14.w), r13.w);
              r34.z = r35.x;
              r14.w = dot(r9.xyz, r34.xyz);
              r15.y = dot(r24.xyz, r34.xyz);
              r15.y = r15.y + -r35.y;
              r15.z = cmp(r15.y >= 0);
              r15.y = max(abs(r15.y), r5.z);
              r15.y = r15.z ? r15.y : -r15.y;
              r14.w = max(1.00000001e-07, -r14.w);
              r14.w = r15.y / r14.w;
              r13.w = min(abs(r14.w), r13.w);
              r36.zw = r35.zw;
              r14.w = dot(r9.zxy, r36.xzw);
              r15.y = dot(r24.zxy, r36.xzw);
              r15.y = r15.y + -r36.y;
              r15.z = cmp(r15.y >= 0);
              r15.y = max(abs(r15.y), r5.z);
              r15.y = r15.z ? r15.y : -r15.y;
              r14.w = max(1.00000001e-07, -r14.w);
              r14.w = r15.y / r14.w;
              r13.w = min(abs(r14.w), r13.w);
              r23.x = r28.w;
              r23.yz = r29.zw;
              r15.yzw = r23.xyz + r24.xyz;
              r15.yzw = r9.xyz * r13.www + r15.yzw;
              r14.w = dot(r15.yzw, r15.yzw);
              r14.w = sqrt(r14.w);
              r13.w = r13.w / r14.w;
              r13.w = r13.w + r13.w;
              r13.w = sqrt(r13.w);
              r13.w = r4.z * 5 + r13.w;
              r13.w = -0.844799995 + r13.w;
              r22.y = r25.z;
              r22.z = r27.x;
              r31.x = dot(r15.yzw, r22.xyz);
              r23.xy = r25.xw;
              r23.z = r27.w;
              r31.y = dot(r15.yzw, r23.xyz);
              r27.x = r25.y;
              r31.z = dot(r15.yzw, r27.xyz);
              if (9 == 0) r14.w = 0; else if (9+16 < 32) {               r14.w = (uint)r23.w << (32-(9 + 16)); r14.w = (uint)r14.w >> (32-9);              } else r14.w = (uint)r23.w >> 16;
              r31.w = (uint)r14.w;
              r15.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r31.xyzw, r13.w).xyz;
              r25.x = dot(r24.xyz, r22.xyz);
              r25.y = dot(r24.xyz, r23.xyz);
              r25.z = dot(r24.xyz, r27.xyz);
              r24.xyz = saturate(r25.xyz * r28.xyz + float3(0.5,0.5,0.5));
              r29.z = r30.x;
              r24.xyz = r24.xyz * r29.xyz + r30.yzw;
              r31.x = dot(r1.xyz, r22.xyz);
              r31.y = dot(r1.xyz, r23.xyz);
              r31.z = dot(r1.xyz, r27.xyz);
              r22.xyz = cmp(float3(0,0,0) < r31.xyz);
              r14.z = r22.x ? 0 : 0.5;
              r23.xyz = r24.xyz + r14.xyz;
              r23.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
              r25.xyz = r31.xyz * r31.xyz;
              r25.xyz = r25.xyz * r13.xxx;
              r16.z = r22.y ? 0 : 0.5;
              r22.xyw = r24.xyz + r16.xyz;
              r22.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r22.xyw, 0).xyz;
              r22.xyw = r22.xyw * r25.yyy;
              r22.xyw = r23.xyz * r25.xxx + r22.xyw;
              r17.z = r22.z ? 0 : 0.5;
              r23.xyz = r24.xyz + r17.xyz;
              r23.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
              r22.xyz = r23.xyz * r25.zzz + r22.xyw;
              r23.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r31.xyzw, 6).xyz;
              r24.xyz = r23.xyz * r22.xyz;
              r13.w = dot(r24.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r12.xyz = r22.xyz * r23.xyz + r12.xyz;
              r14.z = r13.w * r5.w;
              r15.yzw = r15.yzw * r13.xxx;
              r13.x = dot(r15.yzw, float3(0.212599993,0.715200007,0.0722000003));
              r13.x = r5.w * r13.w + r13.x;
              r13.x = r14.z / r13.x;
              r21.xyz = r15.yzw * r13.xxx + r21.xyz;
            }
          }
        }
      }
      r20.xyzw = r21.xyzw;
      r8.yzw = r12.xyz;
      r6.w = (int)r6.w + 32;
    }
    r19.xyzw = r20.zxyw;
    r18.xyz = r8.yzw;
    r19.xyzw = r19.yzxw;
  } else {
    r19.x = r18.w;
  }
  r0.w = max(1, r19.w);
  r0.w = rcp(r0.w);
  r19.w = saturate(r19.w);
  r11.xyz = r18.xyz * r0.www;
  r8.yzw = r19.xyz * r0.www;
  r2.x = cmp(r19.w < 0.99000001);
  if (r2.x != 0) {
    r2.x = 1 + -r19.w;
    r2.y = sunConstants.globalProbeExposure * r2.x;
    r12.xyz = -globalProbeConstants.data[0].xyz + v5.xyz;
    r13.x = globalProbeConstants.data[0].w * r12.x;
    r13.yz = globalProbeConstants.data[1].xy * r12.yz;
    r12.xyz = saturate(float3(0.5,0.5,0.5) + r13.xyz);
    r13.xy = globalProbeConstants.data[1].zw * r12.xy;
    r13.z = globalProbeConstants.data[2].x * r12.z;
    r12.xyz = globalProbeConstants.data[2].yzw + r13.xyz;
    r13.xyz = cmp(float3(0,0,0) < r1.xyz);
    r13.xyz = r13.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r13.w = 0;
    r14.xyz = r13.wwx + r12.xyz;
    r14.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r14.xyz, 0).xyz;
    r15.xyz = r1.xyz * r1.xyz;
    r15.xyz = r15.xyz * r2.yyy;
    r16.xyz = r13.wwy + r12.xyz;
    r16.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r16.xyz, 0).xyz;
    r16.xyz = r16.xyz * r15.yyy;
    r14.xyz = r14.xyz * r15.xxx + r16.xyz;
    r12.xyz = r13.wwz + r12.xyz;
    r12.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r12.xyz, 0).xyz;
    r12.xyz = r12.xyz * r15.zzz + r14.xyz;
    r1.w = 0;
    r13.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r1.xyzw, 6).xyz;
    r12.xyz = r13.xyz * r12.xyz;
    r1.w = dot(r12.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r11.xyz = r18.xyz * r0.www + r12.xyz;
    r9.w = 0;
    r12.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r9.xyzw, r4.w).xyz;
    r0.w = sunConstants.globalProbeExposure * r2.x + -r1.w;
    r0.w = r5.y * r0.w + r1.w;
    r8.yzw = r12.xyz * r0.www + r8.yzw;
  }
  r2.xy = r5.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r2.xy = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r2.xy, 0).xy;
  r12.xyz = r8.zwy * r2.xxx;
  r5.yzw = r8.yzw * r2.yyy;
  r0.w = sqrt(r4.y);
  r0.w = r0.w * 0.5 + 0.5;
  r0.w = r0.w * r0.w;
  r1.w = 0.5 * r0.w;
  r0.w = -r0.w * 0.5 + 1;
  r2.x = r5.x * r0.w + r1.w;
  r0.w = r2.x * r0.w;
  r1.w = r2.x * r1.w;
  r2.x = dot(r1.xyz, sunConstants.wldDir.xyz);
  r2.y = saturate(r2.x);
  r4.z = cmp(0 >= r2.y);
  if (r4.z != 0) {
    r4.w = 0;
  }
  if (r4.z == 0) {
    r8.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v5.yyy;
    r8.yzw = v5.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r8.yzw;
    r8.yzw = v5.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r8.yzw;
    r8.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r8.yzw;
    r4.z = -sunConstants.splitDepthOffset + r8.w;
    r4.z = -r4.z * 6.10351563e-05 + 1;
    r6.z = saturate(r4.z);
    r6.z = cmp(r4.z == r6.z);
    if (r6.z != 0) {
      r6.zw = float2(0,0);
      while (true) {
        r7.w = cmp(r6.z >= 3);
        if (r7.w != 0) break;
        r7.w = (uint)r6.z;
        r13.xy = -sunConstants.splitPinTransform[r7.w].xy + r8.yz;
        r9.w = max(abs(r13.x), abs(r13.y));
        r6.w = sunConstants.splitPinTransform[r7.w].z * r9.w;
        r7.w = cmp(r6.w < 1);
        if (r7.w != 0) {
          break;
        }
        r6.z = 1 + r6.z;
        r6.w = 0;
      }
    } else {
      r6.zw = float2(3,0);
    }
    r7.w = cmp(r6.z >= 3);
    if (r7.w != 0) {
      r13.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r14.xz = rcp(r13.xx);
      r14.y = -r14.z;
      r13.xyz = r8.yzy * r14.xyz + r13.yzy;
      r14.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r13.xyz = max(float3(0,0,0), r13.xyz);
      r13.xyz = min(r13.xyz, r14.xyz);
      r14.xy = sunConstants.sstLightingConstants.coordScale * r13.zy;
      r14.xy = floor(r14.xy);
      r9.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r14.y;
      r9.w = r9.w * sunConstants.sstLightingConstants.coordScale + r14.x;
      r9.w = (uint)r9.w;
      r9.w = (int)r9.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.w, r9.w, l(0), t23.xxxx
    r10.w = samp0[]..swiz;
      r13.w = (int)r10.w & 0x40000000;
      r14.x = (uint)r10.w << 2;
      if (r13.w == 0) {
        r13.w = (int)r10.w & 0x01ffffff;
        r15.x = (int)r9.w + (int)r13.w;
        r9.w = (uint)r10.w >> 25;
        r9.w = (uint)r9.w;
        r13.xyz = r13.xyz * r9.www;
        r13.xyz = frac(r13.xyz);
        r13.xyz = float3(128,128,128) * r13.xyz;
        r13.xyz = (uint3)r13.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.z, r15.x, l(0), t23.xxxx
      r15.z = samp0[]..swiz;
        r14.yz = (uint2)r13.zy >> int2(6,6);
        r9.w = (int)r15.z & 0xc0000000;
        r10.w = (int)r15.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.w, r10.w, l(0), t23.xxxx
      r10.w = samp0[]..swiz;
        r10.w = r14.z ? r15.z : r10.w;
        r13.w = (uint)r10.w >> 13;
        r10.w = r14.y ? r13.w : r10.w;
        r10.w = (int)r10.w & 8191;
        r16.x = (int)r10.w + (int)r15.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.x, l(0), t23.xxxx
      r16.z = samp0[]..swiz;
        r15.y = 0;
        r16.y = 1;
        r14.yzw = r9.www ? r15.xyz : r16.xyz;
        r16.yz = r9.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r17.xy = (uint2)r13.zy >> (uint2)r16.yy;
        r17.xy = (int2)r17.xy & int2(1,1);
        r10.w = (int)r14.w & 0xc0000000;
        r13.w = (int)r14.y + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.w, r13.w, l(0), t23.xxxx
      r13.w = samp0[]..swiz;
        r13.w = r17.y ? r14.w : r13.w;
        r15.w = (uint)r13.w >> 13;
        r13.w = r17.x ? r15.w : r13.w;
        r13.w = (int)r13.w & 8191;
        r16.x = (int)r13.w + (int)r14.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.w, r16.x, l(0), t23.xxxx
      r16.w = samp0[]..swiz;
        r14.yzw = r10.www ? r14.yzw : r16.xzw;
        r14.yzw = r9.www ? r15.xyz : r14.yzw;
        r9.w = (int)r14.w & 0xc0000000;
        if (r9.w == 0) {
          r9.w = (int)-r14.z + 6;
          r15.xy = (uint2)r13.zy >> (uint2)r9.ww;
          r9.w = (int)r14.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r10.w = (((uint)r15.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r10.w = (((uint)r15.x << 0) & bitmask.w) | ((uint)r10.w & ~bitmask.w);
          r10.w = (int)r10.w * 10;
          r9.w = (uint)r9.w >> (uint)r10.w;
          r9.w = (int)r9.w & 1023;
          r15.x = (int)r9.w + (int)r14.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.w, r15.x, l(0), t23.xxxx
        r15.w = samp0[]..swiz;
          r15.yz = (int2)r14.zz + int2(1,2);
          r9.w = (int)-r15.y + 6;
          r16.xy = (uint2)r13.zy >> (uint2)r9.ww;
          r9.w = (int)r15.w & 0xc0000000;
          r10.w = (int)r15.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.w = (((uint)r16.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.w = (((uint)r16.x << 0) & bitmask.w) | ((uint)r13.w & ~bitmask.w);
          r13.w = (int)r13.w * 10;
          r10.w = (uint)r10.w >> (uint)r13.w;
          r10.w = (int)r10.w & 1023;
          r16.x = (int)r10.w + (int)r15.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.x, l(0), t23.xxxx
        r16.z = samp0[]..swiz;
          r16.y = r15.z;
          r16.xyz = r9.www ? r15.xyw : r16.xyz;
          r10.w = (int)-r16.y + 6;
          r15.yz = (uint2)r13.zy >> (uint2)r10.ww;
          r10.w = (int)r16.z & 0xc0000000;
          r13.w = (int)r16.z | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r14.z = (((uint)r15.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r14.z = (((uint)r15.y << 0) & bitmask.z) | ((uint)r14.z & ~bitmask.z);
          r14.z = (int)r14.z * 10;
          r13.w = (uint)r13.w >> (uint)r14.z;
          r13.w = (int)r13.w & 1023;
          r17.x = (int)r13.w + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.y, r17.x, l(0), t23.xxxx
        r17.y = samp0[]..swiz;
          r15.yz = r10.ww ? r16.xz : r17.xy;
          r14.yw = r9.ww ? r15.xw : r15.yz;
        }
        r9.w = (int)r14.w & 0xc0000000;
        if (r9.w == 0) {
          if (14 == 0) r10.w = 0; else if (14+15 < 32) {           r10.w = (uint)r14.w << (32-(14 + 15)); r10.w = (uint)r10.w >> (32-14);          } else r10.w = (uint)r14.w >> 15;
          r10.w = (uint)r10.w;
          r10.w = sunConstants.sstLightingConstants.constants.spanInInches * r10.w;
          r10.w = 6.10388815e-05 * r10.w;
          r15.xy = (int2)r14.ww & int2(32767,536870912);
          r13.w = (uint)r15.x;
          r13.w = sunConstants.sstLightingConstants.constants.spanInInches * r13.w;
          r13.w = 3.05185094e-05 * r13.w;
          r14.z = (int)r13.y & 3;
          r14.z = (int)r14.z + (int)r14.y;
          r14.z = (int)r14.z + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.z, r14.z, l(0), t23.xxxx
        r14.z = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r15.x = (((uint)r13.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.z = ((~(-1 << 2)) << 1) & 0xffffffff;  r15.z = (((uint)r13.y << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.w = ((~(-1 << 1)) << 4) & 0xffffffff;  r15.w = (((uint)r13.z << 4) & bitmask.w) | ((uint)0 & ~bitmask.w);
          r13.x = (uint)r14.z >> (uint)r15.x;
          r13.x = (int)r13.x & 255;
          r13.x = (uint)r13.x;
          r13.x = r13.x * r13.w;
          r13.x = r13.x * 0.00392156886 + r10.w;
          r13.y = (int)r15.z + 1;
          if (1 == 0) r13.z = 0; else if (1+1 < 32) {           r13.z = (uint)r13.z << (32-(1 + 1)); r13.z = (uint)r13.z >> (32-1);          } else r13.z = (uint)r13.z >> 1;
          r13.y = (int)r13.z + (int)r13.y;
          r13.y = (int)r13.y + (int)r14.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.y, r13.y, l(0), t23.xxxx
        r13.y = samp0[]..swiz;
          r13.y = (uint)r13.y >> (uint)r15.w;
          r13.y = (int)r13.y & 0x0000ffff;
          r13.y = (uint)r13.y;
          r13.y = r13.y * r13.w;
          r10.w = r13.y * 1.52590219e-05 + r10.w;
          r14.x = r15.y ? r13.x : r10.w;
        } else {
          r10.w = (int)r14.w & 0x80000000;
          r13.x = (int)r14.y + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.x, r13.x, l(0), t23.xxxx
        r13.x = samp0[]..swiz;
          r10.w = r10.w ? r13.x : 0;
          r13.x = (uint)r14.w << 2;
          r13.y = (uint)r10.w >> 16;
          r13.y = f16tof32(r13.y);
          r10.w = (int)r10.w & 0x0000ffff;
          r10.w = f16tof32(r10.w);
          r13.x = r8.y * r13.y + r13.x;
          r10.w = r8.z * r10.w + r13.x;
          r14.x = r9.w ? r10.w : r14.x;
        }
      }
      r8.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r8.w;
      r8.w = cmp(r14.x < r8.w);
      r4.w = r8.w ? 0 : 1;
    }
    if (r7.w == 0) {
      if (enableDitheredShadow == 0) {
        r7.w = (uint)r6.z;
        r13.xy = -sunConstants.splitPinTransform[r7.w].xy + r8.yz;
        r13.xy = sunConstants.splitPinTransform[r7.w].zz * r13.xy;
        r13.xy = r13.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r7.w = (int16)sunConstants.splitArrayOffset;
        r13.z = r7.w + r6.z;
        r7.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r13.xyz, r4.z).x;
        r8.w = gTransShadowmapArray.SampleLevel(samp0_s, r13.xyz, 0).x;
        r7.w = r8.w + r7.w;
        r7.w = saturate(-1 + r7.w);
        r8.w = r7.w * r7.w;
        r4.w = r8.w * r7.w;
      }
      if (enableDitheredShadow != 0) {
        r13.x = -r6.x;
        r7.w = (uint)r6.z;
        r6.z = 1 + r6.z;
        r6.z = min(2, r6.z);
        r6.w = 1 + -r6.w;
        r6.w = 28 * r6.w;
        r6.zw = (uint2)r6.zw;
        r14.xy = -sunConstants.splitPinTransform[r7.w].xy + r8.yz;
        r14.xy = sunConstants.splitPinTransform[r7.w].zz * r14.xy;
        r14.xy = r14.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r8.yz = -sunConstants.splitPinTransform[r6.z].xy + r8.yz;
        r8.yz = sunConstants.splitPinTransform[r6.z].zz * r8.yz;
        r8.yz = r8.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r13.y = r7.x;
        r13.z = r6.x;
        r8.w = 0;
        r9.w = 0;
        while (true) {
          r10.w = cmp((uint)r9.w >= 8);
          if (r10.w != 0) break;
          r10.w = cmp((uint)r6.w < (uint)r9.w);
          r14.zw = r10.ww ? r8.yz : r14.xy;
          r13.w = r10.w ? sunConstants.splitPinTransform[r6.z].w : sunConstants.splitPinTransform[r7.w].w;
          r10.w = r10.w ? r6.z : r7.w;
          r15.x = dot(icb[r9.w+0].yx, r13.xy);
          r15.y = dot(icb[r9.w+0].yx, r13.yz);
          r15.xy = r15.xy * r13.ww + r14.zw;
          r10.w = (int)r10.w + (int16)sunConstants.splitArrayOffset;
          r15.z = (uint)r10.w;
          r10.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r4.z).x;
          r13.w = gTransShadowmapArray.SampleLevel(samp0_s, r15.xyz, 0).x;
          r10.w = r13.w + r10.w;
          r10.w = saturate(-1 + r10.w);
          r8.w = r10.w * 0.125 + r8.w;
          r9.w = (int)r9.w + 1;
        }
        r4.z = r8.w * r8.w;
        r4.w = r4.z * r8.w;
      }
    }
  }
  r4.z = cmp(0 < r2.y);
  if (r4.z != 0) {
    r4.z = cmp(0 < r4.w);
    if (r4.z != 0) {
      r4.z = sunConstants.specScale * r3.w;
      r4.z = r4.z * r2.y;
      if (sunConstants.sunCookieIndex != 0) {
        r13.xyz = eyeOffset.xyz + v5.xyz;
        r13.w = 1;
        r6.z = dot(sunConstants.sunCookieTransform[0].xyzw, r13.xyzw);
        r6.w = dot(sunConstants.sunCookieTransform[1].xyzw, r13.xyzw);
        r13.xy = frac(r6.zw);
        r6.z = -1 + (int14)sunConstants.sunCookieIndex;
        r13.z = (uint)r6.z;
        r8.yzw = gCookieArray.SampleLevel(samplerLinear_s, r13.xyz, 0).xyz;
        r8.yzw = float3(-1,-1,-1) + r8.yzw;
        r8.yzw = sunConstants.sunCookieIntensity * r8.yzw + float3(1,1,1);
        r8.yzw = sunConstants.color.xyz * r8.yzw;
      } else {
        r8.yzw = sunConstants.color.xyz;
      }
      r6.z = viewmodelSunShadowRaw >> 16;
      r6.w = cmp(0 < (uint)r6.z);
      r6.w = r2.w ? r6.w : 0;
      if (r6.w != 0) {
        r6.z = (int)r6.z + numLights;
        r6.z = (int)r6.z + -1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r6.w, r6.z, l(52), t12.xxxx
      r6.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.xyzw, r6.z, l(68), t12.xyzw
      r13.x = samp0[]..swiz;
      r13.y = samp0[]..swiz;
      r13.z = samp0[]..swiz;
      r13.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r6.z, l(84), t12.xyzw
      r14.x = samp0[]..swiz;
      r14.y = samp0[]..swiz;
      r14.z = samp0[]..swiz;
      r14.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r6.z, l(132), t12.xyzw
      r15.x = samp0[]..swiz;
      r15.y = samp0[]..swiz;
      r15.z = samp0[]..swiz;
      r15.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r6.z, l(148), t12.xyzw
      r16.x = samp0[]..swiz;
      r16.y = samp0[]..swiz;
      r16.z = samp0[]..swiz;
      r16.w = samp0[]..swiz;
        r7.w = abs(r2.x) * -0.200000003 + 0.400000006;
        r17.xyz = r1.xyz * r7.www + v5.xyz;
        r17.w = 1;
        r13.x = dot(r13.xyzw, r17.xyzw);
        r13.y = dot(r14.xyzw, r17.xyzw);
        r13.xy = r13.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r13.xy = r13.xy + r16.zw;
        r13.xy = r13.xy * r16.xy;
        r13.zw = r6.ww / r15.xz;
        r14.xy = float2(1,1) + -r13.zw;
        r14.xy = cmp(r13.xy >= r14.xy);
        r13.zw = cmp(r13.zw >= r13.xy);
        r13.zw = (int2)r13.zw | (int2)r14.xy;
        r7.w = (int)r13.w | (int)r13.z;
        if (r7.w == 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r7.w, r6.z, l(28), t12.xxxx
        r7.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r6.z, l(100), t12.xyzw
        r14.x = samp0[]..swiz;
        r14.y = samp0[]..swiz;
        r14.z = samp0[]..swiz;
        r14.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.zw, r6.z, l(164), t12.xxxy
        r13.z = samp0[]..swiz;
        r13.w = samp0[]..swiz;
          r6.z = dot(r14.xyzw, r17.xyzw);
          r13.xy = saturate(r13.xy);
          r14.xy = r13.xy * r15.xz + r15.yw;
          r6.z = r6.z + r13.z;
          r6.z = r6.z / r13.w;
          r6.z = max(6.10351563e-05, r6.z);
          r7.w = (int)r7.w & 0x0000ffff;
          if (enableDitheredShadow != 0) {
            r13.x = -r6.x;
            r15.z = (uint)r7.w;
            r13.y = r7.x;
            r13.z = r6.x;
            r9.w = 0;
            r10.w = 0;
            while (true) {
              r13.w = cmp((int)r10.w >= 8);
              if (r13.w != 0) break;
              r16.x = dot(icb[r10.w+0].yx, r13.xy);
              r16.y = dot(icb[r10.w+0].yx, r13.yz);
              r15.xy = r16.xy * r6.ww + r14.xy;
              r13.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r6.z).x;
              r9.w = r13.w * 0.125 + r9.w;
              r10.w = (int)r10.w + 1;
            }
          } else {
            r14.z = (uint)r7.w;
            r9.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r14.xyz, r6.z).x;
          }
          r6.z = r9.w * r9.w;
          r6.z = r6.z * r9.w;
        } else {
          r6.z = 1;
        }
        r4.w = r6.z * r4.w;
      } else {
        r6.z = viewmodelSunShadowRaw & 0x0000ffff;
        r6.w = cmp(0 < (uint)r6.z);
        r7.w = ~(int)r2.w;
        r6.w = r6.w ? r7.w : 0;
        if (r6.w != 0) {
          r6.z = (int)r6.z + numLights;
          r6.z = (int)r6.z + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r6.w, r6.z, l(52), t12.xxxx
        r6.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.xyzw, r6.z, l(68), t12.xyzw
        r13.x = samp0[]..swiz;
        r13.y = samp0[]..swiz;
        r13.z = samp0[]..swiz;
        r13.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r6.z, l(84), t12.xyzw
        r14.x = samp0[]..swiz;
        r14.y = samp0[]..swiz;
        r14.z = samp0[]..swiz;
        r14.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r6.z, l(132), t12.xyzw
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r6.z, l(148), t12.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
          r7.w = abs(r2.x) * -0.200000003 + 0.400000006;
          r17.xyz = r1.xyz * r7.www + v5.xyz;
          r17.w = 1;
          r13.x = dot(r13.xyzw, r17.xyzw);
          r13.y = dot(r14.xyzw, r17.xyzw);
          r13.xy = r13.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r13.xy = r13.xy + r16.zw;
          r13.xy = r13.xy * r16.xy;
          r13.zw = r6.ww / r15.xz;
          r14.xy = float2(1,1) + -r13.zw;
          r14.xy = cmp(r13.xy >= r14.xy);
          r13.zw = cmp(r13.zw >= r13.xy);
          r13.zw = (int2)r13.zw | (int2)r14.xy;
          r7.w = (int)r13.w | (int)r13.z;
          if (r7.w == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r7.w, r6.z, l(28), t12.xxxx
          r7.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r6.z, l(100), t12.xyzw
          r14.x = samp0[]..swiz;
          r14.y = samp0[]..swiz;
          r14.z = samp0[]..swiz;
          r14.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.zw, r6.z, l(164), t12.xxxy
          r13.z = samp0[]..swiz;
          r13.w = samp0[]..swiz;
            r6.z = dot(r14.xyzw, r17.xyzw);
            r13.xy = saturate(r13.xy);
            r14.xy = r13.xy * r15.xz + r15.yw;
            r6.z = r6.z + r13.z;
            r6.z = r6.z / r13.w;
            r6.z = max(6.10351563e-05, r6.z);
            r7.w = (int)r7.w & 0x0000ffff;
            if (enableDitheredShadow != 0) {
              r13.x = -r6.x;
              r15.z = (uint)r7.w;
              r13.y = r7.x;
              r13.z = r6.x;
              r9.w = 0;
              r10.w = 0;
              while (true) {
                r13.w = cmp((int)r10.w >= 8);
                if (r13.w != 0) break;
                r16.x = dot(icb[r10.w+0].yx, r13.xy);
                r16.y = dot(icb[r10.w+0].yx, r13.yz);
                r15.xy = r16.xy * r6.ww + r14.xy;
                r13.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r6.z).x;
                r9.w = r13.w * 0.125 + r9.w;
                r10.w = (int)r10.w + 1;
              }
            } else {
              r14.z = (uint)r7.w;
              r9.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r14.xyz, r6.z).x;
            }
            r6.z = r9.w * r9.w;
            r6.z = r6.z * r9.w;
          } else {
            r6.z = 1;
          }
          r4.w = r6.z * r4.w;
        }
      }
      r6.z = -r5.x * 0.5 + 1;
      r6.z = -r2.y * r6.z + 1;
      r6.z = r6.z * r6.z;
      r6.z = -r6.z * 0.620000005 + 0.620000005;
      r6.z = r6.z + -r2.y;
      r6.z = r4.y * r6.z + r2.y;
      r6.z = r6.z * r4.w;
      r2.x = cmp(0 < r2.x);
      r13.xyz = r6.zzz * r8.yzw + r11.xyz;
      r14.xyz = -v5.xyz * r2.zzz + sunConstants.wldDir.xyz;
      r2.z = dot(r14.xyz, r14.xyz);
      r2.z = rsqrt(r2.z);
      r14.xyz = r14.xyz * r2.zzz;
      r2.z = dot(r14.xyz, r3.xyz);
      r6.z = dot(r1.xyz, r14.xyz);
      r6.w = abs(r6.z) * r3.w + -abs(r6.z);
      r6.z = abs(r6.z) * r6.w + 1;
      r2.y = r2.y * r0.w + r1.w;
      r6.z = r6.z * r6.z;
      r2.y = r6.z * r2.y;
      r2.y = rcp(r2.y);
      r2.y = r2.y * r4.z;
      r2.y = r4.w * r2.y;
      r2.y = 0.25 * r2.y;
      r14.xyz = r2.yyy * r8.yzw + r5.yzw;
      r2.z = saturate(1 + -r2.z);
      r4.z = r2.z * r2.z;
      r4.z = r4.z * r4.z;
      r2.z = r4.z * r2.z;
      r2.y = r2.y * r2.z;
      r15.xyz = r2.yyy * r8.zwy + r12.xyz;
      r13.w = r15.z;
      r11.w = r12.z;
      r11.xyzw = r2.xxxx ? r13.xyzw : r11.xyzw;
      r15.zw = r14.xy;
      r12.zw = r5.yz;
      r13.xyzw = r2.xxxx ? r15.xyzw : r12.xyzw;
      r5.w = r2.x ? r14.z : r5.w;
      r12.z = r11.w;
      r12.xy = r13.xy;
      r5.yz = r13.zw;
    }
  }
  r13.x = -r6.x;
  r2.x = ~(int)r2.w;
  r2.y = -r5.x * 0.5 + 1;
  r14.xy = float2(0,0);
  r15.w = 0;
  r16.xyz = v5.xyz;
  r16.w = 1;
  r17.w = 1;
  r13.z = r6.x;
  r18.w = 1;
  r19.z = 1;
  r20.w = 1;
  r13.yw = r7.xx;
  r6.y = r13.w;
  r21.w = 1;
  r7.y = r13.x;
  r7.z = r6.x;
  r22.w = 1;
  r23.x = r7.x;
  r23.y = r13.x;
  r23.z = r6.x;
  r24.x = r7.x;
  r24.y = r13.x;
  r24.z = r6.x;
  r25.x = r7.x;
  r25.y = r13.x;
  r25.z = r6.x;
  r8.yzw = r11.xyz;
  r26.xyz = r12.zxy;
  r27.xyz = r5.yzw;
  r2.z = enableDitheredShadow;
  r4.z = 0;
  while (true) {
    r4.w = cmp((uint)r4.z >= numLights);
    if (r4.w != 0) break;
    r14.z = (uint)r4.z >> 5;
    r15.xyz = (int3)r10.xyz + (int3)r14.xyz;
    r4.w = visibleLights.Load(r15.xyzw).x;
    r15.xyz = r8.yzw;
    r28.xyz = r26.xyz;
    r29.xyz = r27.xyz;
    r5.x = r2.z;
    r6.z = r4.w;
    while (true) {
      if (r6.z == 0) break;
      r6.w = firstbitlow((uint)r6.z);
      r7.w = 1 << (int)r6.w;
      r9.w = (int)r6.z & (int)r7.w;
      if (r9.w != 0) {
        r6.z = (int)r6.z ^ (int)r7.w;
        r6.w = (int)r4.z + (int)r6.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r30.xyzw, r6.w, l(0), t11.xyzw
      r30.x = samp0[]..swiz;
      r30.y = samp0[]..swiz;
      r30.z = samp0[]..swiz;
      r30.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r31.xy, r6.w, l(16), t11.xyxx
      r31.x = samp0[]..swiz;
      r31.y = samp0[]..swiz;
        r30.xyz = -v5.xyz + r30.xyz;
        r31.z = r30.w;
        r30.xyz = cmp(abs(r30.xyz) < r31.zxy);
        r7.w = r30.y ? r30.x : 0;
        r7.w = r30.z ? r7.w : 0;
        if (r7.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r30.xyzw, r6.w, l(0), t12.wxyz
        r30.x = samp0[]..swiz;
        r30.y = samp0[]..swiz;
        r30.z = samp0[]..swiz;
        r30.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r6.w, l(16), t12.zxyw
        r31.x = samp0[]..swiz;
        r31.y = samp0[]..swiz;
        r31.z = samp0[]..swiz;
        r31.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r6.w, l(32), t12.xyzw
        r32.x = samp0[]..swiz;
        r32.y = samp0[]..swiz;
        r32.z = samp0[]..swiz;
        r32.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r6.w, l(48), t12.xyzw
        r33.x = samp0[]..swiz;
        r33.y = samp0[]..swiz;
        r33.z = samp0[]..swiz;
        r33.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r6.w, l(64), t12.yzwx
        r34.x = samp0[]..swiz;
        r34.y = samp0[]..swiz;
        r34.z = samp0[]..swiz;
        r34.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r6.w, l(80), t12.xyzw
        r35.x = samp0[]..swiz;
        r35.y = samp0[]..swiz;
        r35.z = samp0[]..swiz;
        r35.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r6.w, l(96), t12.yzwx
        r36.x = samp0[]..swiz;
        r36.y = samp0[]..swiz;
        r36.z = samp0[]..swiz;
        r36.w = samp0[]..swiz;
          if (3 == 0) r7.w = 0; else if (3+24 < 32) {           r7.w = (uint)r31.w << (32-(3 + 24)); r7.w = (uint)r7.w >> (32-3);          } else r7.w = (uint)r31.w >> 24;
          switch (r7.w) {
            case 4 :            r7.w = cmp(0 < r36.x);
            r37.xy = r35.zw;
            r37.z = r36.w;
            r38.xyz = -r37.xyz * float3(0.5,0.5,0.5) + r30.yzw;
            r39.xyz = -v5.xyz + r38.xyz;
            r9.w = dot(r37.xyz, r39.xyz);
            r10.w = saturate(-r9.w / r36.x);
            r40.xyz = r10.www * r37.xyz + r38.xyz;
            r40.xyz = r7.www ? r40.xyz : r30.yzw;
            r40.xyz = -v5.xyz + r40.xyz;
            r11.w = dot(r40.xyz, r40.xyz);
            r12.w = rsqrt(r11.w);
            r40.xyz = r40.xyz * r12.www;
            r12.w = dot(r1.xyz, r40.xyz);
            r14.z = saturate(r12.w);
            r14.w = cmp(0 < r14.z);
            if (r14.w != 0) {
              r14.w = sqrt(r11.w);
              r19.w = r33.x * r33.x;
              r11.w = r19.w / r11.w;
              r11.w = min(1, r11.w);
              r40.xy = saturate(r14.ww * r32.xz + r32.yw);
              r40.zw = r40.xy * r40.xy;
              r40.xy = r40.xy * float2(-2,-2) + float2(3,3);
              r40.xy = r40.zw * r40.xy;
              r11.w = r40.x * r11.w;
              r11.w = r11.w * r40.y;
              r14.w = cmp(0 < r11.w);
              if (r14.w != 0) {
                if (3 == 0) r14.w = 0; else if (3+27 < 32) {                 r14.w = (uint)r31.w << (32-(3 + 27)); r14.w = (uint)r14.w >> (32-3);                } else r14.w = (uint)r31.w >> 27;
                r14.w = cmp((int)r14.w != 1);
                if (r14.w != 0) {
                  r14.w = abs(r12.w) * -0.200000003 + 0.400000006;
                  r40.xyz = r1.xyz * r14.www + v5.xyz;
                  r40.xyz = r40.xyz + -r34.xyz;
                  r14.w = max(abs(r40.y), abs(r40.z));
                  r14.w = max(abs(r40.x), r14.w);
                  r14.w = r35.x / r14.w;
                  r14.w = r14.w + r35.y;
                  r19.w = dot(r40.xyz, r40.xyz);
                  r19.w = rsqrt(r19.w);
                  r14.w = max(6.10351563e-05, r14.w);
                  r23.w = (int)r31.w & 0x0000ffff;
                  r41.w = (uint)r23.w;
                  r23.w = 0;
                  r24.w = 0;
                  while (true) {
                    r25.w = cmp((int)r24.w >= 8);
                    if (r25.w != 0) break;
                    r42.y = dot(icb[r24.w+0].yx, r13.xy);
                    r42.z = dot(icb[r24.w+0].yx, r13.yz);
                    r42.yz = r42.yz * r33.yy;
                    r42.x = r42.y * r8.x;
                    r42.w = r42.y * r4.x;
                    r41.xyz = r40.xyz * r19.www + r42.xzw;
                    r25.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r41.xyzw, r14.w).x;
                    r23.w = r25.w * 0.125 + r23.w;
                    r24.w = (int)r24.w + 1;
                  }
                } else {
                  r23.w = 1;
                }
                r11.w = r23.w * r11.w;
                r14.w = cmp(0 < r11.w);
                if (r14.w != 0) {
                  r14.w = r31.x * r3.w;
                  r14.w = 0.25 * r14.w;
                  r19.w = dot(r37.xyz, r9.xyz);
                  r24.w = dot(r9.xyz, r39.xyz);
                  r25.w = -r19.w * r19.w + r36.x;
                  r9.w = r19.w * r24.w + -r9.w;
                  r9.w = saturate(r9.w / r25.w);
                  r19.w = r25.w / r36.x;
                  r19.w = 10 * r19.w;
                  r19.w = min(1, r19.w);
                  r9.w = r9.w + -r10.w;
                  r9.w = r19.w * r9.w + r10.w;
                  r37.xyz = r9.www * r37.xyz + r38.xyz;
                  r37.xyz = r7.www ? r37.xyz : r30.yzw;
                  r37.xyz = -v5.xyz + r37.xyz;
                  r7.w = dot(r37.xyz, r37.xyz);
                  r7.w = rsqrt(r7.w);
                  r38.xyz = r37.xyz * r7.www;
                  if (4 == 0) r9.w = 0; else if (4+16 < 32) {                   r9.w = (uint)r31.w << (32-(4 + 16)); r9.w = (uint)r9.w >> (32-4);                  } else r9.w = (uint)r31.w >> 16;
                  r10.w = cmp(0 < (uint)r9.w);
                  r10.w = r2.w ? r10.w : 0;
                  if (r10.w != 0) {
                    r9.w = (int)r9.w + numLights;
                    r9.w = (int)r9.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.w, r9.w, l(52), t12.xxxx
                  r10.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r9.w, l(100), t12.xyzw
                  r39.x = samp0[]..swiz;
                  r39.y = samp0[]..swiz;
                  r39.z = samp0[]..swiz;
                  r39.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r9.w, l(116), t12.xyzw
                  r40.x = samp0[]..swiz;
                  r40.y = samp0[]..swiz;
                  r40.z = samp0[]..swiz;
                  r40.w = samp0[]..swiz;
                    r19.w = abs(r12.w) * -0.200000003 + 0.400000006;
                    r17.xyz = r1.xyz * r19.www + v5.xyz;
                    r19.w = dot(r39.xyzw, r17.xyzw);
                    r24.w = dot(r40.xyzw, r17.xyzw);
                    r25.w = cmp(r24.w < r19.w);
                    if (r25.w == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r9.w, l(68), t12.xyzw
                    r39.x = samp0[]..swiz;
                    r39.y = samp0[]..swiz;
                    r39.z = samp0[]..swiz;
                    r39.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r9.w, l(84), t12.xyzw
                    r40.x = samp0[]..swiz;
                    r40.y = samp0[]..swiz;
                    r40.z = samp0[]..swiz;
                    r40.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r9.w, l(132), t12.xyzw
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r9.w, l(148), t12.xyzw
                    r42.x = samp0[]..swiz;
                    r42.y = samp0[]..swiz;
                    r42.z = samp0[]..swiz;
                    r42.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xy, r9.w, l(164), t12.xyxx
                    r43.x = samp0[]..swiz;
                    r43.y = samp0[]..swiz;
                      r39.x = dot(r39.xyzw, r17.xyzw);
                      r39.y = dot(r40.xyzw, r17.xyzw);
                      r17.xy = r39.xy / r24.ww;
                      r17.xy = r17.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r17.xy = r17.xy + r42.zw;
                      r17.xy = r17.xy * r42.xy;
                      r39.xy = r10.ww / r41.xz;
                      r39.zw = float2(1,1) + -r39.xy;
                      r39.zw = cmp(r17.xy >= r39.zw);
                      r39.xy = cmp(r39.xy >= r17.xy);
                      r39.xy = (int2)r39.xy | (int2)r39.zw;
                      r17.z = (int)r39.y | (int)r39.x;
                      r17.xy = saturate(r17.xy);
                      r39.xy = r17.xy * r41.xz + r41.yw;
                      r17.x = r43.y * r24.w;
                      r17.y = r43.x * r24.w + r19.w;
                      r17.x = r17.y / r17.x;
                    } else {
                      r17.z = -1;
                    }
                    r17.y = (int)r25.w | (int)r17.z;
                    if (r17.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.w, r9.w, l(28), t12.xxxx
                    r9.w = samp0[]..swiz;
                      r17.x = max(6.10351563e-05, r17.x);
                      r9.w = (int)r9.w & 0x0000ffff;
                      if (r5.x != 0) {
                        r40.z = (uint)r9.w;
                        r17.yz = float2(0,0);
                        while (true) {
                          r19.w = cmp((int)r17.z >= 8);
                          if (r19.w != 0) break;
                          r41.x = dot(icb[r17.z+0].yx, r13.xw);
                          r41.y = dot(icb[r17.z+0].xy, r6.xy);
                          r40.xy = r41.xy * r10.ww + r39.xy;
                          r19.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r40.xyz, r17.x).x;
                          r17.y = r19.w * 0.125 + r17.y;
                          r17.z = (int)r17.z + 1;
                        }
                      } else {
                        r39.z = (uint)r9.w;
                        r17.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r39.xyz, r17.x).x;
                      }
                      r9.w = r17.y * r17.y;
                      r9.w = r9.w * r17.y;
                    } else {
                      r9.w = 1;
                    }
                    r11.w = r11.w * r9.w;
                  } else {
                    if (4 == 0) r9.w = 0; else if (4+20 < 32) {                     r9.w = (uint)r31.w << (32-(4 + 20)); r9.w = (uint)r9.w >> (32-4);                    } else r9.w = (uint)r31.w >> 20;
                    r10.w = cmp(0 < (uint)r9.w);
                    r10.w = r2.x ? r10.w : 0;
                    if (r10.w != 0) {
                      r9.w = (int)r9.w + numLights;
                      r9.w = (int)r9.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.w, r9.w, l(52), t12.xxxx
                    r10.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r9.w, l(100), t12.xyzw
                    r39.x = samp0[]..swiz;
                    r39.y = samp0[]..swiz;
                    r39.z = samp0[]..swiz;
                    r39.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r9.w, l(116), t12.xyzw
                    r40.x = samp0[]..swiz;
                    r40.y = samp0[]..swiz;
                    r40.z = samp0[]..swiz;
                    r40.w = samp0[]..swiz;
                      r17.x = abs(r12.w) * -0.200000003 + 0.400000006;
                      r18.xyz = r1.xyz * r17.xxx + v5.xyz;
                      r17.x = dot(r39.xyzw, r18.xyzw);
                      r17.z = dot(r40.xyzw, r18.xyzw);
                      r19.w = cmp(r17.z < r17.x);
                      if (r19.w == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r9.w, l(68), t12.xyzw
                      r39.x = samp0[]..swiz;
                      r39.y = samp0[]..swiz;
                      r39.z = samp0[]..swiz;
                      r39.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r9.w, l(84), t12.xyzw
                      r40.x = samp0[]..swiz;
                      r40.y = samp0[]..swiz;
                      r40.z = samp0[]..swiz;
                      r40.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r9.w, l(132), t12.xyzw
                      r41.x = samp0[]..swiz;
                      r41.y = samp0[]..swiz;
                      r41.z = samp0[]..swiz;
                      r41.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r9.w, l(148), t12.xyzw
                      r42.x = samp0[]..swiz;
                      r42.y = samp0[]..swiz;
                      r42.z = samp0[]..swiz;
                      r42.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xy, r9.w, l(164), t12.xyxx
                      r43.x = samp0[]..swiz;
                      r43.y = samp0[]..swiz;
                        r39.x = dot(r39.xyzw, r18.xyzw);
                        r39.y = dot(r40.xyzw, r18.xyzw);
                        r18.xy = r39.xy / r17.zz;
                        r18.xy = r18.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                        r18.xy = r18.xy + r42.zw;
                        r18.xy = r18.xy * r42.xy;
                        r39.xy = r10.ww / r41.xz;
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
                      r17.z = (int)r19.w | (int)r18.z;
                      if (r17.z == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.w, r9.w, l(28), t12.xxxx
                      r9.w = samp0[]..swiz;
                        r17.x = max(6.10351563e-05, r17.x);
                        r9.w = (int)r9.w & 0x0000ffff;
                        if (r5.x != 0) {
                          r18.z = (uint)r9.w;
                          r17.z = 0;
                          r19.w = 0;
                          while (true) {
                            r24.w = cmp((int)r19.w >= 8);
                            if (r24.w != 0) break;
                            r40.x = dot(icb[r19.w+0].xy, r7.xy);
                            r40.y = dot(icb[r19.w+0].yx, r7.xz);
                            r18.xy = r40.xy * r10.ww + r39.xy;
                            r18.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r17.x).x;
                            r17.z = r18.x * 0.125 + r17.z;
                            r19.w = (int)r19.w + 1;
                          }
                        } else {
                          r39.z = (uint)r9.w;
                          r17.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r39.xyz, r17.x).x;
                        }
                        r9.w = r17.z * r17.z;
                        r9.w = r9.w * r17.z;
                      } else {
                        r9.w = 1;
                      }
                      r11.w = r11.w * r9.w;
                    }
                  }
                  r9.w = -r14.z * r2.y + 1;
                  r9.w = r9.w * r9.w;
                  r9.w = -r9.w * 0.620000005 + 0.620000005;
                  r9.w = r9.w + -r14.z;
                  r9.w = r4.y * r9.w + r14.z;
                  r9.w = r9.w * r11.w;
                  r31.x = r30.x;
                  r10.w = cmp(0 < r12.w);
                  r18.xyz = r9.www * r31.xyz + r15.xyz;
                  r9.w = saturate(dot(r1.xyz, r38.xyz));
                  r37.xyz = r37.xyz * r7.www + r3.xyz;
                  r7.w = dot(r37.xyz, r37.xyz);
                  r7.w = rsqrt(r7.w);
                  r37.xyz = r37.xyz * r7.www;
                  r7.w = dot(r37.xyz, r3.xyz);
                  r12.w = dot(r1.xyz, r37.xyz);
                  r14.z = abs(r12.w) * r3.w + -abs(r12.w);
                  r12.w = abs(r12.w) * r14.z + 1;
                  r14.z = r9.w * r0.w + r1.w;
                  r12.w = r12.w * r12.w;
                  r12.w = r12.w * r14.z;
                  r12.w = rcp(r12.w);
                  r9.w = r9.w * r14.w;
                  r9.w = r12.w * r9.w;
                  r9.w = r9.w * r11.w;
                  r37.xyz = r9.www * r31.xyz + r29.xyz;
                  r7.w = saturate(1 + -r7.w);
                  r11.w = r7.w * r7.w;
                  r11.w = r11.w * r11.w;
                  r7.w = r11.w * r7.w;
                  r7.w = r9.w * r7.w;
                  r38.xyz = r7.www * r31.xyz + r28.xyz;
                  r15.xyz = r10.www ? r18.xyz : r15.xyz;
                  r28.xyz = r10.www ? r38.xyz : r28.xyz;
                  r29.xyz = r10.www ? r37.xyz : r29.xyz;
                }
              }
            }
            break;
            case 2 :            r18.xy = r33.zw;
            r18.z = r34.w;
            r18.xyz = -v5.xyz + r18.xyz;
            r7.w = dot(r18.xyz, r18.xyz);
            r7.w = rsqrt(r7.w);
            r37.xyz = r18.xyz * r7.www;
            r9.w = dot(r1.xyz, r37.xyz);
            r10.w = saturate(r9.w);
            r11.w = cmp(0 < r10.w);
            if (r11.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r6.w, l(112), t12.yzwx
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r6.w, l(128), t12.zxyw
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
              r39.xyz = r37.xyz;
              r39.w = r38.y;
              r11.w = dot(r39.xyzw, r16.xyzw);
              r12.w = cmp(r11.w < 1);
              if (r12.w != 0) {
                r40.xyz = float3(1,1,1);
                r12.w = 0;
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r6.w, l(172), t12.yzwx
              r41.x = samp0[]..swiz;
              r41.y = samp0[]..swiz;
              r41.z = samp0[]..swiz;
              r41.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r6.w, l(188), t12.wxyz
              r42.x = samp0[]..swiz;
              r42.y = samp0[]..swiz;
              r42.z = samp0[]..swiz;
              r42.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r6.w, l(204), t12.xyzw
              r43.x = samp0[]..swiz;
              r43.y = samp0[]..swiz;
              r43.z = samp0[]..swiz;
              r43.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.z, r6.w, l(236), t12.xxxx
              r14.z = samp0[]..swiz;
                r44.xyz = -v5.xyz + r30.yzw;
                r14.w = r33.x * r33.x;
                r17.x = dot(r44.xyz, r44.xyz);
                r14.w = r14.w / r17.x;
                r14.w = min(1, r14.w);
                r32.xy = saturate(r11.ww * r32.xz + r32.yw);
                r32.zw = r32.xy * r32.xy;
                r32.xy = r32.xy * float2(-2,-2) + float2(3,3);
                r32.xy = r32.zw * r32.xy;
                r14.w = r32.x * r14.w;
                r14.w = r14.w * r32.y;
                r34.w = r35.x;
                r32.x = dot(r34.xyzw, r16.xyzw);
                r44.xyz = r35.yzw;
                r44.w = r36.w;
                r32.y = dot(r44.xyzw, r16.xyzw);
                r19.xy = r32.xy / r11.ww;
                r11.w = cmp(r41.w < 0.00048828125);
                if (r11.w != 0) {
                  r42.y = r43.x;
                  r32.xy = saturate(abs(r19.xy) * r42.zw + r42.xy);
                  r32.zw = r32.xy * r32.xy;
                  r32.xy = r32.xy * float2(-2,-2) + float2(3,3);
                  r32.xy = r32.zw * r32.xy;
                  r11.w = r32.x * r32.y;
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
                  r17.x = r42.z * r32.x;
                  r19.w = r42.w * r32.y + -1;
                  r17.x = r42.w * r32.y + -r17.x;
                  r17.x = saturate(r19.w / r17.x);
                  r19.w = r17.x * r17.x;
                  r17.x = r17.x * -2 + 3;
                  r11.w = r19.w * r17.x;
                }
                r12.w = r14.w * r11.w;
                r11.w = (int)r14.z & 255;
                if (r11.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyz, r6.w, l(220), t12.xyzx
                r32.x = samp0[]..swiz;
                r32.y = samp0[]..swiz;
                r32.z = samp0[]..swiz;
                  r14.z = dot(r43.yzw, r19.xyz);
                  r14.w = dot(r32.xyz, r19.xyz);
                  r32.xy = frac(r14.zw);
                  r11.w = (int)r11.w + -1;
                  r32.z = (uint)r11.w;
                  r40.xyz = gCookieArray.SampleLevel(samplerLinear_s, r32.xyz, 0).xyz;
                } else {
                  r40.xyz = float3(1,1,1);
                }
              }
              r30.yz = r31.yz;
              r19.xyw = r30.xyz * r40.xyz;
              r11.w = cmp(0 < r12.w);
              if (r11.w != 0) {
                if (3 == 0) r11.w = 0; else if (3+27 < 32) {                 r11.w = (uint)r31.w << (32-(3 + 27)); r11.w = (uint)r11.w >> (32-3);                } else r11.w = (uint)r31.w >> 27;
                r11.w = cmp((int)r11.w != 1);
                if (r11.w != 0) {
                  r11.w = abs(r9.w) * -0.200000003 + 0.400000006;
                  r20.xyz = r1.xyz * r11.www + v5.xyz;
                  r37.xyz = r36.xyz;
                  r11.w = dot(r37.xyzw, r20.xyzw);
                  r14.z = dot(r39.xyzw, r20.xyzw);
                  r14.w = cmp(r14.z >= r11.w);
                  if (r14.w != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.y, r6.w, l(144), t12.xxxx
                  r38.y = samp0[]..swiz;
                    r34.w = r35.x;
                    r30.x = dot(r34.xyzw, r20.xyzw);
                    r36.xyz = r35.yzw;
                    r30.y = dot(r36.xyzw, r20.xyzw);
                    r20.xy = r30.xy / r14.zz;
                    r20.xy = saturate(r20.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                    r20.xy = r20.xy * r38.zw + r38.xy;
                    r6.w = r11.w / r14.z;
                    r6.w = max(6.10351563e-05, r6.w);
                    r11.w = (int)r31.w & 0x0000ffff;
                    if (r5.x != 0) {
                      r30.z = (uint)r11.w;
                      r14.zw = float2(0,0);
                      while (true) {
                        r17.x = cmp((int)r14.w >= 8);
                        if (r17.x != 0) break;
                        r32.x = dot(icb[r14.w+0].xy, r23.xy);
                        r32.y = dot(icb[r14.w+0].yx, r23.xz);
                        r30.xy = r32.xy * r33.yy + r20.xy;
                        r17.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r30.xyz, r6.w).x;
                        r14.z = r17.x * 0.125 + r14.z;
                        r14.w = (int)r14.w + 1;
                      }
                    } else {
                      r20.z = (uint)r11.w;
                      r14.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r6.w).x;
                    }
                    r6.w = r14.z * r14.z;
                    r6.w = r6.w * r14.z;
                  } else {
                    r6.w = 1;
                  }
                } else {
                  r6.w = 1;
                }
                r6.w = r12.w * r6.w;
                r11.w = cmp(0 < r6.w);
                if (r11.w != 0) {
                  r11.w = r31.x * r3.w;
                  r11.w = r11.w * r10.w;
                  if (4 == 0) r12.w = 0; else if (4+16 < 32) {                   r12.w = (uint)r31.w << (32-(4 + 16)); r12.w = (uint)r12.w >> (32-4);                  } else r12.w = (uint)r31.w >> 16;
                  r14.w = cmp(0 < (uint)r12.w);
                  r14.w = r2.w ? r14.w : 0;
                  if (r14.w != 0) {
                    r12.w = (int)r12.w + numLights;
                    r12.w = (int)r12.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.w, r12.w, l(52), t12.xxxx
                  r14.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r30.xyzw, r12.w, l(68), t12.xyzw
                  r30.x = samp0[]..swiz;
                  r30.y = samp0[]..swiz;
                  r30.z = samp0[]..swiz;
                  r30.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r12.w, l(84), t12.xyzw
                  r32.x = samp0[]..swiz;
                  r32.y = samp0[]..swiz;
                  r32.z = samp0[]..swiz;
                  r32.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r12.w, l(100), t12.xyzw
                  r33.x = samp0[]..swiz;
                  r33.y = samp0[]..swiz;
                  r33.z = samp0[]..swiz;
                  r33.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r12.w, l(116), t12.xyzw
                  r34.x = samp0[]..swiz;
                  r34.y = samp0[]..swiz;
                  r34.z = samp0[]..swiz;
                  r34.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r12.w, l(132), t12.xyzw
                  r35.x = samp0[]..swiz;
                  r35.y = samp0[]..swiz;
                  r35.z = samp0[]..swiz;
                  r35.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r12.w, l(148), t12.xyzw
                  r36.x = samp0[]..swiz;
                  r36.y = samp0[]..swiz;
                  r36.z = samp0[]..swiz;
                  r36.w = samp0[]..swiz;
                    r17.x = abs(r9.w) * -0.200000003 + 0.400000006;
                    r21.xyz = r1.xyz * r17.xxx + v5.xyz;
                    r20.x = dot(r30.xyzw, r21.xyzw);
                    r20.y = dot(r32.xyzw, r21.xyzw);
                    r17.x = dot(r33.xyzw, r21.xyzw);
                    r20.z = dot(r34.xyzw, r21.xyzw);
                    r21.x = cmp(r20.z < r17.x);
                    r20.xy = r20.xy / r20.zz;
                    r20.xy = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r20.xy = r20.xy + r36.zw;
                    r20.xy = r20.xy * r36.xy;
                    r21.yz = r14.ww / r35.xz;
                    r30.xy = float2(1,1) + -r21.yz;
                    r30.xy = cmp(r20.xy >= r30.xy);
                    r21.yz = cmp(r21.yz >= r20.xy);
                    r21.yz = (int2)r21.yz | (int2)r30.xy;
                    r21.y = (int)r21.z | (int)r21.y;
                    r21.x = (int)r21.x | (int)r21.y;
                    if (r21.x == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r21.x, r12.w, l(28), t12.xxxx
                    r21.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r21.yz, r12.w, l(164), t12.xxyx
                    r21.y = samp0[]..swiz;
                    r21.z = samp0[]..swiz;
                      r20.xy = saturate(r20.xy);
                      r30.xy = r20.xy * r35.xz + r35.yw;
                      r12.w = r21.z * r20.z;
                      r17.x = r21.y * r20.z + r17.x;
                      r12.w = r17.x / r12.w;
                      r12.w = max(6.10351563e-05, r12.w);
                      r17.x = r21.x ? 0.000000 : 0;
                      if (r5.x != 0) {
                        r20.z = (uint)r17.x;
                        r21.xy = float2(0,0);
                        while (true) {
                          r21.z = cmp((int)r21.y >= 8);
                          if (r21.z != 0) break;
                          r31.x = dot(icb[r21.y+0].xy, r24.xy);
                          r31.y = dot(icb[r21.y+0].yx, r24.xz);
                          r20.xy = r31.xy * r14.ww + r30.xy;
                          r20.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r12.w).x;
                          r21.x = r20.x * 0.125 + r21.x;
                          r21.y = (int)r21.y + 1;
                        }
                      } else {
                        r30.z = (uint)r17.x;
                        r21.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r30.xyz, r12.w).x;
                      }
                      r12.w = r21.x * r21.x;
                      r12.w = r12.w * r21.x;
                    } else {
                      r12.w = 1;
                    }
                    r6.w = r12.w * r6.w;
                  } else {
                    if (4 == 0) r12.w = 0; else if (4+20 < 32) {                     r12.w = (uint)r31.w << (32-(4 + 20)); r12.w = (uint)r12.w >> (32-4);                    } else r12.w = (uint)r31.w >> 20;
                    r14.w = cmp(0 < (uint)r12.w);
                    r14.w = r2.x ? r14.w : 0;
                    if (r14.w != 0) {
                      r12.w = (int)r12.w + numLights;
                      r12.w = (int)r12.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.w, r12.w, l(52), t12.xxxx
                    r14.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r30.xyzw, r12.w, l(68), t12.xyzw
                    r30.x = samp0[]..swiz;
                    r30.y = samp0[]..swiz;
                    r30.z = samp0[]..swiz;
                    r30.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r12.w, l(84), t12.xyzw
                    r31.x = samp0[]..swiz;
                    r31.y = samp0[]..swiz;
                    r31.z = samp0[]..swiz;
                    r31.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r12.w, l(100), t12.xyzw
                    r32.x = samp0[]..swiz;
                    r32.y = samp0[]..swiz;
                    r32.z = samp0[]..swiz;
                    r32.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r12.w, l(116), t12.xyzw
                    r33.x = samp0[]..swiz;
                    r33.y = samp0[]..swiz;
                    r33.z = samp0[]..swiz;
                    r33.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r12.w, l(132), t12.xyzw
                    r34.x = samp0[]..swiz;
                    r34.y = samp0[]..swiz;
                    r34.z = samp0[]..swiz;
                    r34.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r12.w, l(148), t12.xyzw
                    r35.x = samp0[]..swiz;
                    r35.y = samp0[]..swiz;
                    r35.z = samp0[]..swiz;
                    r35.w = samp0[]..swiz;
                      r17.x = abs(r9.w) * -0.200000003 + 0.400000006;
                      r22.xyz = r1.xyz * r17.xxx + v5.xyz;
                      r20.x = dot(r30.xyzw, r22.xyzw);
                      r20.y = dot(r31.xyzw, r22.xyzw);
                      r17.x = dot(r32.xyzw, r22.xyzw);
                      r20.z = dot(r33.xyzw, r22.xyzw);
                      r21.y = cmp(r20.z < r17.x);
                      r20.xy = r20.xy / r20.zz;
                      r20.xy = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r20.xy = r20.xy + r35.zw;
                      r20.xy = r20.xy * r35.xy;
                      r22.xy = r14.ww / r34.xz;
                      r30.xy = float2(1,1) + -r22.xy;
                      r30.xy = cmp(r20.xy >= r30.xy);
                      r22.xy = cmp(r22.xy >= r20.xy);
                      r22.xy = (int2)r22.xy | (int2)r30.xy;
                      r21.z = (int)r22.y | (int)r22.x;
                      r21.y = (int)r21.y | (int)r21.z;
                      if (r21.y == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r21.y, r12.w, l(28), t12.xxxx
                      r21.y = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.xy, r12.w, l(164), t12.xyxx
                      r22.x = samp0[]..swiz;
                      r22.y = samp0[]..swiz;
                        r20.xy = saturate(r20.xy);
                        r30.xy = r20.xy * r34.xz + r34.yw;
                        r12.w = r22.y * r20.z;
                        r17.x = r22.x * r20.z + r17.x;
                        r12.w = r17.x / r12.w;
                        r12.w = max(6.10351563e-05, r12.w);
                        r17.x = r21.y ? 0.000000 : 0;
                        if (r5.x != 0) {
                          r20.z = (uint)r17.x;
                          r21.yz = float2(0,0);
                          while (true) {
                            r22.x = cmp((int)r21.z >= 8);
                            if (r22.x != 0) break;
                            r22.x = dot(icb[r21.z+0].xy, r25.xy);
                            r22.y = dot(icb[r21.z+0].yx, r25.xz);
                            r20.xy = r22.xy * r14.ww + r30.xy;
                            r20.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r12.w).x;
                            r21.y = r20.x * 0.125 + r21.y;
                            r21.z = (int)r21.z + 1;
                          }
                        } else {
                          r30.z = (uint)r17.x;
                          r21.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r30.xyz, r12.w).x;
                        }
                        r12.w = r21.y * r21.y;
                        r12.w = r12.w * r21.y;
                      } else {
                        r12.w = 1;
                      }
                      r6.w = r12.w * r6.w;
                    }
                  }
                  r12.w = -r10.w * r2.y + 1;
                  r12.w = r12.w * r12.w;
                  r12.w = -r12.w * 0.620000005 + 0.620000005;
                  r12.w = r12.w + -r10.w;
                  r12.w = r4.y * r12.w + r10.w;
                  r12.w = r12.w * r6.w;
                  r9.w = cmp(0 < r9.w);
                  r20.xyz = r12.www * r19.xyw + r15.xyz;
                  r18.xyz = r18.xyz * r7.www + r3.xyz;
                  r7.w = dot(r18.xyz, r18.xyz);
                  r7.w = rsqrt(r7.w);
                  r18.xyz = r18.xyz * r7.www;
                  r7.w = dot(r18.xyz, r3.xyz);
                  r12.w = dot(r1.xyz, r18.xyz);
                  r14.w = abs(r12.w) * r3.w + -abs(r12.w);
                  r12.w = abs(r12.w) * r14.w + 1;
                  r10.w = r10.w * r0.w + r1.w;
                  r12.w = r12.w * r12.w;
                  r10.w = r12.w * r10.w;
                  r10.w = rcp(r10.w);
                  r10.w = r10.w * r11.w;
                  r6.w = r10.w * r6.w;
                  r6.w = 0.25 * r6.w;
                  r18.xyz = r6.www * r19.xyw + r29.xyz;
                  r7.w = saturate(1 + -r7.w);
                  r10.w = r7.w * r7.w;
                  r10.w = r10.w * r10.w;
                  r7.w = r10.w * r7.w;
                  r6.w = r7.w * r6.w;
                  r19.xyw = r6.www * r19.xyw + r28.xyz;
                  r15.xyz = r9.www ? r20.xyz : r15.xyz;
                  r28.xyz = r9.www ? r19.xyw : r28.xyz;
                  r29.xyz = r9.www ? r18.xyz : r29.xyz;
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
    r8.yzw = r15.xyz;
    r26.xyz = r28.xyz;
    r27.xyz = r29.xyz;
    r4.z = (int)r4.z + 32;
  }
  r1.xyz = float3(0.959999979,0.959999979,0.959999979) * r26.xyz;
  r1.xyz = r27.xyz * float3(0.0399999991,0.0399999991,0.0399999991) + r1.xyz;
  r0.xyz = r8.yzw * r0.xyz + r1.xyz;
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