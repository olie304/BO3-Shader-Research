// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:36:38 2021

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
  uint zFeatherComputeSprites : packoffset(c11.z);
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
SamplerComparisonState ShadowSamplerComparisonState_s : register(s13);
StructuredBuffer<shaderConstantSetBuffer> shaderConstantSetBuffer : register(t0);
StructuredBuffer<modelInstanceBuffer> modelInstanceBuffer : register(t4);
Texture2D<float2> gEnvBRDFGlass : register(t5);
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
Texture2D<float4> glossMap : register(t25);
Texture2DArray<float> gTransShadowmapArray : register(t31);
Texture2DArray<uint> visibleDecals : register(t35);
StructuredBuffer<forwardDecalConstants> forwardDecalConstants : register(t36);
Texture2DArray<float4> materialTexBC7 : register(t42);
Texture2DArray<float4> materialTexBC3 : register(t43);
Texture2DArray<float4> materialTexBC7linear : register(t44);
Texture2DArray<float4> materialTexMask : register(t45);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float3 v1 : COLOR0,
  float w1 : COLOR1,
  float4 v2 : TEXCOORD0,
  nointerpolation uint4 v3 : TEXCOORD4,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float3 v6 : TEXCOORD3,
  float3 v7 : OFFPOSITION0,
  uint v8 : SV_IsFrontFace0,
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
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t36, 128
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (uint,uint,uint,uint) u6
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2darray (uint,uint,uint,uint) u7
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = colorMap.Sample(colorSampler_s, v2.xy).xyzw;
  r1.x = tintMask.Sample(colorSampler_s, v2.xy).x;
  r1.yzw = float3(-1,-1,-1) + colorTint.xyz;
  r1.xyz = r1.xxx * r1.yzw + float3(1,1,1);
  r0.xyz = r1.xyz * r0.xyz;
  r0.xyzw = v1.xyzw * r0.xyzw;
  r1.x = glossMap.Sample(specColorSampler_s, v2.xy).x;
  r1.y = glossRange.y + -glossRange.x;
  r1.x = r1.x * r1.y + glossRange.x;
  r1.x = saturate(0.0588235296 * r1.x);
  r1.yzw = normalMap.Sample(normalSampler_s, v2.xy).xyz;
  r1.yzw = float3(-0.5,-0.5,-0) + r1.yzw;
  r1.yzw = baseNormalHeight * r1.yzw + float3(0.5,0.5,0);
  r1.yz = r1.yz * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.x = dot(r1.yz, r1.yz);
  r2.x = 1 + -r2.x;
  r2.x = max(0, r2.x);
  r2.x = sqrt(r2.x);
  r1.w = r1.w * r1.w;
  r1.w = 0.333333343 * r1.w;
  r1.w = min(1, r1.w);
  r2.y = v8.x ? 1 : -1;
  r2.z = dot(v4.xyz, v4.xyz);
  r2.z = rsqrt(r2.z);
  r3.xyz = v4.xyz * r2.zzz;
  r3.xyz = r3.xyz * r2.yyy;
  r2.z = dot(v5.xyz, v5.xyz);
  r2.z = rsqrt(r2.z);
  r4.xyz = v5.xyz * r2.zzz;
  r4.xyz = r4.xyz * r2.yyy;
  r2.z = dot(v6.xyz, v6.xyz);
  r2.z = rsqrt(r2.z);
  r5.xyz = v6.xyz * r2.zzz;
  r5.xyz = r5.xyz * r2.yyy;
  r1.x = -17 * r1.x;
  r1.x = exp2(r1.x);
  r1.x = r1.w + r1.x;
  r1.x = log2(r1.x);
  r1.x = -0.0588235296 * r1.x;
  r1.x = max(0, r1.x);
  r5.xyz = r5.xyz * r1.zzz;
  r1.yzw = r4.xyz * r1.yyy + r5.xyz;
  r1.yzw = r3.xyz * r2.xxx + r1.yzw;
  r2.x = dot(r1.yzw, r1.yzw);
  r2.x = rsqrt(r2.x);
  r1.yzw = r2.xxx * r1.yzw;
  r2.x = cmp(v0.z >= 0.984375);
  r2.z = 1.01587307 * v0.z;
  r2.w = v0.z * 64 + -63;
  r2.x = r2.x ? r2.w : r2.z;
  r2.x = max(9.99999994e-09, r2.x);
  r2.x = rcp(r2.x);
  r2.zw = (uint2)v0.yx;
  r3.xyz = ddx_coarse(v7.xyz);
  r4.xyz = ddy_coarse(v7.xyz);
  r3.w = numRefProbes + numLights;
  r5.xyz = eyeOffset.xyz + v7.xyz;
  r2.x = 0.0078125 * r2.x;
  r2.x = min(15, r2.x);
  r2.x = (uint)r2.x;
  r6.xy = (uint2)r2.wz >> int2(6,6);
  r6.z = (uint)r2.x << 4;
  r2.x = numStaticDecals & -32;
  r4.w = (int)-r2.x + numStaticDecals;
  r7.xy = float2(0,0);
  r8.w = 0;
  r5.w = 1;
  r10.xyz = float3(0,0,0);
  r11.xyz = float3(0,0,0);
  r6.w = 0;
  r7.w = 0;
  r9.xyzw = float4(0,0,0,0);
  while (true) {
    r10.w = cmp((uint)r9.w >= numStaticDecals);
    if (r10.w != 0) break;
    r7.z = (uint)r9.w >> 5;
    r8.xyz = (int3)r6.xyz + (int3)r7.xyz;
    r7.z = visibleDecals.Load(r8.xyzw).x;
    r8.x = cmp((int)r2.x == (int)r9.w);
    if (r4.w == 0) r8.y = 0; else if (r4.w+0 < 32) {     r8.y = (uint)r7.z << (32-(r4.w + 0)); r8.y = (uint)r8.y >> (32-r4.w);    } else r8.y = (uint)r7.z >> 0;
    r7.z = r8.x ? r8.y : r7.z;
    r8.x = (int)r3.w + (int)r9.w;
    r12.xyz = r9.xyz;
    r13.xyz = r10.xyz;
    r14.xyz = r11.xyz;
    r8.y = r6.w;
    r8.z = r7.w;
    r10.w = r7.z;
    while (true) {
      if (r10.w == 0) break;
      r11.w = firstbitlow((uint)r10.w);
      r12.w = 1 << (int)r11.w;
      r13.w = (int)r10.w & (int)r12.w;
      if (r13.w != 0) {
        r10.w = (int)r10.w ^ (int)r12.w;
        r12.w = (int)r8.x + (int)r11.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r15.xyzw, r12.w, l(0), t11.xyzw
      r15.x = samp0[]..swiz;
      r15.y = samp0[]..swiz;
      r15.z = samp0[]..swiz;
      r15.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r16.xy, r12.w, l(16), t11.xyxx
      r16.x = samp0[]..swiz;
      r16.y = samp0[]..swiz;
        r15.xyz = -v7.xyz + r15.xyz;
        r16.z = r15.w;
        r15.xyz = cmp(abs(r15.xyz) < r16.zxy);
        r12.w = r15.y ? r15.x : 0;
        r12.w = r15.z ? r12.w : 0;
        if (r12.w != 0) {
          r11.w = (int)r9.w + (int)r11.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r15.xyz, r11.w, l(0), t36.xyzx
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        r15.z = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r16.xyz, r11.w, l(16), t36.xyzx
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r17.xyz, r11.w, l(32), t36.xyzx
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
          r18.x = r15.x;
          r18.y = r16.x;
          r18.z = r17.x;
          r12.w = dot(r18.xyz, r18.xyz);
          r12.w = rsqrt(r12.w);
          r19.xyz = r18.xyz * r12.www;
          r12.w = dot(r19.xyz, v4.xyz);
          r12.w = cmp(r12.w >= 0.5);
          if (r12.w != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r20.xyw, r11.w, l(48), t36.xyxz
          r20.x = samp0[]..swiz;
          r20.y = samp0[]..swiz;
          r20.w = samp0[]..swiz;
            r18.w = r20.x;
            r18.x = dot(r5.xyzw, r18.xyzw);
            r21.x = r15.y;
            r21.y = r16.y;
            r21.z = r17.y;
            r21.w = r20.y;
            r18.y = dot(r5.xyzw, r21.xyzw);
            r20.x = r15.z;
            r20.y = r16.z;
            r20.z = r17.z;
            r18.z = dot(r5.xyzw, r20.xyzw);
            r15.xyz = cmp(abs(r18.xyz) < float3(1,1,1));
            r12.w = r15.y ? r15.x : 0;
            r12.w = r15.z ? r12.w : 0;
            if (r12.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r15.xyzw, r11.w, l(64), t36.xyzw
            r15.x = samp0[]..swiz;
            r15.y = samp0[]..swiz;
            r15.z = samp0[]..swiz;
            r15.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r16.xyzw, r11.w, l(80), t36.xyzw
            r16.x = samp0[]..swiz;
            r16.y = samp0[]..swiz;
            r16.z = samp0[]..swiz;
            r16.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r17.xyzw, r11.w, l(96), t36.xyzw
            r17.x = samp0[]..swiz;
            r17.y = samp0[]..swiz;
            r17.z = samp0[]..swiz;
            r17.w = samp0[]..swiz;
              r22.x = dot(r3.xyz, r21.xyz);
              r22.y = dot(r3.xyz, r20.xyz);
              r23.x = dot(r4.xyz, r21.xyz);
              r23.y = dot(r4.xyz, r20.xyz);
              r18.xy = r18.yz * float2(0.5,-0.5) + float2(0.5,0.5);
              r22.xyz = float3(0.5,-0.5,0.5) * r22.xyx;
              r23.xyz = float3(0.5,-0.5,0.5) * r23.xyx;
              r18.zw = (int2)r16.yz & int2(65535,65535);
              if (r18.z != 0) {
                if (4 == 0) r12.w = 0; else if (4+24 < 32) {                 r12.w = (uint)r16.w << (32-(4 + 24)); r12.w = (uint)r12.w >> (32-4);                } else r12.w = (uint)r16.w >> 24;
                r12.w = 1 << (int)r12.w;
                r13.w = (uint)r16.w >> 28;
                r13.w = 1 << (int)r13.w;
                r14.w = cmp((int)r18.z == 4);
                if (r14.w != 0) {
                  r14.w = (int)r16.w & 4095;
                  if (12 == 0) r19.w = 0; else if (12+12 < 32) {                   r19.w = (uint)r16.w << (32-(12 + 12)); r19.w = (uint)r19.w >> (32-12);                  } else r19.w = (uint)r16.w >> 12;
                  r20.w = (int)r17.w & 1023;
                  r24.xz = (uint2)r12.ww;
                  r24.y = (uint)r13.w;
                  r25.xy = r18.xy * r24.zy + float2(0.5,0.5);
                  r25.zw = float2(-0.5,-0.5) + r24.zy;
                  r25.xy = min(r25.xy, r25.zw);
                  r26.x = (uint)r14.w;
                  r26.y = (uint)r19.w;
                  r25.xy = r26.xy + r25.xy;
                  r25.xy = invBcTexSizes.xy * r25.xy;
                  r25.z = (uint)r20.w;
                  r26.xyz = invBcTexSizes.xyx * r22.zyz;
                  r26.xyz = r26.xyz * r24.xyz;
                  r27.xyz = invBcTexSizes.xyx * r23.zyz;
                  r24.xyz = r27.xyz * r24.xyz;
                  r24.xyzw = materialTexBC7.SampleGrad(samplerLinearClamp_s, r25.xyz, r26.xyzx, r24.xyzx).xyzw;
                } else {
                  r14.w = cmp((int)r18.z == 1);
                  if (r14.w != 0) {
                    r14.w = (int)r16.w & 4095;
                    if (12 == 0) r16.w = 0; else if (12+12 < 32) {                     r16.w = (uint)r16.w << (32-(12 + 12)); r16.w = (uint)r16.w >> (32-12);                    } else r16.w = (uint)r16.w >> 12;
                    r18.z = (int)r17.w & 1023;
                    r25.xz = (uint2)r12.ww;
                    r25.y = (uint)r13.w;
                    r26.xy = r18.xy * r25.zy + float2(0.5,0.5);
                    r26.zw = float2(-0.5,-0.5) + r25.zy;
                    r26.xy = min(r26.xy, r26.zw);
                    r27.x = (uint)r14.w;
                    r27.y = (uint)r16.w;
                    r26.xy = r27.xy + r26.xy;
                    r26.xy = invBcTexSizes.zw * r26.xy;
                    r26.z = (uint)r18.z;
                    r27.xyz = invBcTexSizes.zwz * r22.zyz;
                    r27.xyz = r27.xyz * r25.xyz;
                    r28.xyz = invBcTexSizes.zwz * r23.zyz;
                    r25.xyz = r28.xyz * r25.xyz;
                    r24.xyzw = materialTexBC3.SampleGrad(samplerLinearClamp_s, r26.xyz, r27.xyzx, r25.xyzx).xyzw;
                  } else {
                    r24.xyzw = float4(1,1,1,1);
                  }
                }
                r15.xyz = r24.xyz * r15.xyz;
                r12.w = r24.w * r15.w;
              } else {
                r15.xyz = float3(0,0,0);
                r12.w = 0;
              }
              r13.w = cmp(r16.x != 1.000000);
              r14.w = r12.w + r15.w;
              r14.w = saturate(r14.w * r16.x + -r16.x);
              r12.w = r13.w ? r14.w : r12.w;
              if (r18.w != 0) {
                if (4 == 0) r13.w = 0; else if (4+24 < 32) {                 r13.w = (uint)r17.y << (32-(4 + 24)); r13.w = (uint)r13.w >> (32-4);                } else r13.w = (uint)r17.y >> 24;
                r13.w = 1 << (int)r13.w;
                r14.w = (uint)r17.y >> 28;
                r14.w = 1 << (int)r14.w;
                r15.w = cmp((int)r18.w == 2);
                if (r15.w != 0) {
                  r15.w = (int)r17.y & 4095;
                  if (12 == 0) r16.x = 0; else if (12+12 < 32) {                   r16.x = (uint)r17.y << (32-(12 + 12)); r16.x = (uint)r16.x >> (32-12);                  } else r16.x = (uint)r17.y >> 12;
                  if (10 == 0) r16.w = 0; else if (10+20 < 32) {                   r16.w = (uint)r17.w << (32-(10 + 20)); r16.w = (uint)r16.w >> (32-10);                  } else r16.w = (uint)r17.w >> 20;
                  r24.xz = (uint2)r13.ww;
                  r24.y = (uint)r14.w;
                  r25.xy = r18.xy * r24.zy + float2(0.5,0.5);
                  r25.zw = float2(-0.5,-0.5) + r24.zy;
                  r25.xy = min(r25.xy, r25.zw);
                  r26.x = (uint)r15.w;
                  r26.y = (uint)r16.x;
                  r25.xy = r26.xy + r25.xy;
                  r25.xy = invMaskTexSizes.xy * r25.xy;
                  r25.z = (uint)r16.w;
                  r26.xyz = invMaskTexSizes.xyx * r22.zyz;
                  r26.xyz = r26.xyz * r24.xyz;
                  r27.xyz = invMaskTexSizes.xyx * r23.zyz;
                  r24.xyz = r27.xyz * r24.xyz;
                  r15.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r25.xyz, r26.x, r24.x).x;
                } else {
                  r16.x = cmp((int)r18.w == 4);
                  if (r16.x != 0) {
                    r16.x = (int)r17.y & 4095;
                    if (12 == 0) r18.z = 0; else if (12+12 < 32) {                     r18.z = (uint)r17.y << (32-(12 + 12)); r18.z = (uint)r18.z >> (32-12);                    } else r18.z = (uint)r17.y >> 12;
                    if (10 == 0) r18.w = 0; else if (10+20 < 32) {                     r18.w = (uint)r17.w << (32-(10 + 20)); r18.w = (uint)r18.w >> (32-10);                    } else r18.w = (uint)r17.w >> 20;
                    r24.xz = (uint2)r13.ww;
                    r24.y = (uint)r14.w;
                    r25.xy = r18.xy * r24.zy + float2(0.5,0.5);
                    r25.zw = float2(-0.5,-0.5) + r24.zy;
                    r25.xy = min(r25.xy, r25.zw);
                    r26.x = (uint)r16.x;
                    r26.y = (uint)r18.z;
                    r16.xw = r26.xy + r25.xy;
                    r25.xy = invBcTexSizes.xy * r16.xw;
                    r25.z = (uint)r18.w;
                    r26.xyz = invBcTexSizes.xyx * r22.zyz;
                    r26.xyz = r26.xyz * r24.xyz;
                    r27.xyz = invBcTexSizes.xyx * r23.zyz;
                    r24.xyz = r27.xyz * r24.xyz;
                    r15.w = materialTexBC7.SampleGrad(samplerLinearClamp_s, r25.xyz, r26.x, r24.x).x;
                  } else {
                    r16.x = (int)r17.y & 4095;
                    if (12 == 0) r18.z = 0; else if (12+12 < 32) {                     r18.z = (uint)r17.y << (32-(12 + 12)); r18.z = (uint)r18.z >> (32-12);                    } else r18.z = (uint)r17.y >> 12;
                    if (10 == 0) r18.w = 0; else if (10+20 < 32) {                     r18.w = (uint)r17.w << (32-(10 + 20)); r18.w = (uint)r18.w >> (32-10);                    } else r18.w = (uint)r17.w >> 20;
                    r24.xz = (uint2)r13.ww;
                    r24.y = (uint)r14.w;
                    r25.xy = r18.xy * r24.zy + float2(0.5,0.5);
                    r25.zw = float2(-0.5,-0.5) + r24.zy;
                    r25.xy = min(r25.xy, r25.zw);
                    r26.x = (uint)r16.x;
                    r26.y = (uint)r18.z;
                    r16.xw = r26.xy + r25.xy;
                    r25.xy = invBcTexSizes.zw * r16.xw;
                    r25.z = (uint)r18.w;
                    r26.xyz = invBcTexSizes.zwz * r22.zyz;
                    r26.xyz = r26.xyz * r24.xyz;
                    r27.xyz = invBcTexSizes.zwz * r23.zyz;
                    r24.xyz = r27.xyz * r24.xyz;
                    r15.w = materialTexBC3.SampleGrad(samplerLinearClamp_s, r25.xyz, r26.x, r24.x).x;
                  }
                }
                r24.xyz = r15.www * float3(0.959999979,0.959999979,0.959999979) + float3(0.0399999991,0.0399999991,0.0399999991);
                r13.w = saturate(1 + -r15.w);
                r15.xyz = r15.xyz * r13.www;
              } else {
                r24.xyz = float3(0.0399999991,0.0399999991,0.0399999991);
              }
              r16.xy = (uint2)r16.zy >> int2(16,16);
              if (r16.x != 0) {
                r13.w = cmp((int)r16.x == 2);
                if (r13.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r11.w, r11.w, l(112), t36.xxxx
                r11.w = samp0[]..swiz;
                  if (4 == 0) r16.z = 0; else if (4+24 < 32) {                   r16.z = (uint)r17.z << (32-(4 + 24)); r16.z = (uint)r16.z >> (32-4);                  } else r16.z = (uint)r17.z >> 24;
                  if (12 == 0) r16.w = 0; else if (12+12 < 32) {                   r16.w = (uint)r17.z << (32-(12 + 12)); r16.w = (uint)r16.w >> (32-12);                  } else r16.w = (uint)r17.z >> 12;
                  r13.w = 1 << (int)r16.z;
                  r14.w = (uint)r17.z >> 28;
                  r14.w = 1 << (int)r14.w;
                  r15.w = (int)r17.z & 4095;
                  r11.w = (int)r11.w & 1023;
                  r25.xz = (uint2)r13.ww;
                  r25.y = (uint)r14.w;
                  r17.yz = r18.xy * r25.zy + float2(0.5,0.5);
                  r18.zw = float2(-0.5,-0.5) + r25.zy;
                  r17.yz = min(r18.zw, r17.yz);
                  r26.x = (uint)r15.w;
                  r26.y = (uint)r16.w;
                  r16.zw = r26.xy + r17.yz;
                  r26.xy = invMaskTexSizes.xy * r16.zw;
                  r26.z = (uint)r11.w;
                  r27.xyz = invMaskTexSizes.xyx * r22.zyz;
                  r27.xyz = r27.xyz * r25.xyz;
                  r28.xyz = invMaskTexSizes.xyx * r23.zyz;
                  r25.xyz = r28.xyz * r25.xyz;
                  r11.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r26.xyz, r27.x, r25.x).x;
                } else {
                  r13.w = cmp((int)r16.x == 6);
                  r11.w = r13.w ? 0 : 1;
                }
              } else {
                r11.w = 1;
              }
              r11.w = saturate(0.764705896 * r11.w);
              if (r16.y != 0) {
                r13.w = cmp((int)r16.y == 3);
                if (r13.w != 0) {
                  if (4 == 0) r16.x = 0; else if (4+24 < 32) {                   r16.x = (uint)r17.x << (32-(4 + 24)); r16.x = (uint)r16.x >> (32-4);                  } else r16.x = (uint)r17.x >> 24;
                  if (12 == 0) r16.y = 0; else if (12+12 < 32) {                   r16.y = (uint)r17.x << (32-(12 + 12)); r16.y = (uint)r16.y >> (32-12);                  } else r16.y = (uint)r17.x >> 12;
                  if (10 == 0) r16.z = 0; else if (10+10 < 32) {                   r16.z = (uint)r17.w << (32-(10 + 10)); r16.z = (uint)r16.z >> (32-10);                  } else r16.z = (uint)r17.w >> 10;
                  r13.w = 1 << (int)r16.x;
                  r14.w = (uint)r17.x >> 28;
                  r14.w = 1 << (int)r14.w;
                  r15.w = (int)r17.x & 4095;
                  r17.xz = (uint2)r13.ww;
                  r17.y = (uint)r14.w;
                  r16.xw = r18.xy * r17.xy + float2(0.5,0.5);
                  r18.xy = float2(-0.5,-0.5) + r17.zy;
                  r16.xw = min(r18.xy, r16.xw);
                  r18.x = (uint)r15.w;
                  r18.yz = (uint2)r16.yz;
                  r16.xy = r18.xy + r16.xw;
                  r18.xy = invMaskTexSizes.zw * r16.xy;
                  r16.xyz = invMaskTexSizes.zwz * r22.xyz;
                  r16.xyz = r16.xyz * r17.xyz;
                  r22.xyz = invMaskTexSizes.zwz * r23.xyz;
                  r17.xyz = r22.xyz * r17.xyz;
                  r16.xyz = materialTexBC7linear.SampleGrad(samplerLinearClamp_s, r18.xyz, r16.xyz, r17.xyz).xyz;
                } else {
                  r16.xyz = float3(0.5,0.5,1);
                }
                r16.xy = r16.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
                r13.w = dot(r16.xy, r16.xy);
                r13.w = 1 + -r13.w;
                r13.w = max(0, r13.w);
                r13.w = sqrt(r13.w);
                r14.w = r16.z * r16.z;
                r14.w = 0.333333343 * r14.w;
                r14.w = min(1, r14.w);
                r15.w = dot(r21.xyz, r21.xyz);
                r15.w = rsqrt(r15.w);
                r17.xyz = r21.xyz * r15.www;
                r15.w = dot(-r20.xyz, -r20.xyz);
                r15.w = rsqrt(r15.w);
                r18.xyz = -r20.xyz * r15.www;
                r19.xyz = r19.xyz * r2.yyy;
                r17.xyz = r17.xyz * r2.yyy;
                r18.xyz = r18.xyz * r2.yyy;
                r15.w = -17 * r11.w;
                r15.w = exp2(r15.w);
                r14.w = r15.w + r14.w;
                r14.w = log2(r14.w);
                r14.w = -0.0588235296 * r14.w;
                r11.w = max(0, r14.w);
                r16.yzw = r18.xyz * r16.yyy;
                r16.xyz = r17.xyz * r16.xxx + r16.yzw;
                r16.xyz = r19.xyz * r13.www + r16.xyz;
                r13.w = dot(r16.xyz, r16.xyz);
                r13.w = rsqrt(r13.w);
                r16.xyz = r16.xyz * r13.www;
                r13.w = 1 + -r12.w;
                r17.xyz = r13.xyz * r13.www;
                r13.xyz = r16.xyz * r12.www + r17.xyz;
              }
              r13.w = 1 + -r12.w;
              r16.xyz = r13.www * r12.xyz;
              r12.xyz = r15.xyz * r12.www + r16.xyz;
              r15.xyz = r14.xyz * r13.www;
              r14.xyz = r24.xyz * r12.www + r15.xyz;
              r8.y = r8.y * r13.w + r12.w;
              r13.w = r13.w * r8.z;
              r8.z = r11.w * r12.w + r13.w;
            }
          }
        }
      }
    }
    r9.xyz = r12.xyz;
    r10.xyz = r13.xyz;
    r11.xyz = r14.xyz;
    r6.w = r8.y;
    r7.w = r8.z;
    r9.w = (int)r9.w + 32;
  }
  r6.w = saturate(r6.w);
  r2.x = 1 + -r6.w;
  r0.xyz = r0.xyz * r2.xxx + r9.xyz;
  r0.w = r0.w * r2.x + r6.w;
  r1.yzw = r1.yzw * r2.xxx + r10.xyz;
  r2.y = dot(r1.yzw, r1.yzw);
  r2.y = rsqrt(r2.y);
  r3.xyz = r2.yyy * r1.yzw;
  r1.y = r1.x * r2.x + r7.w;
  r4.xyz = r2.xxx * float3(0.0799999982,0.0799999982,0.0799999982) + r11.xyz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r1.z, v3.x, l(4), t4.xxxx
r1.z = samp0[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r1.z, r1.z, l(0), t0.xxxx
r1.z = samp0[]..swiz;
  r0.w = saturate(r1.z + r0.w);
  r1.z = dot(-v7.xyz, -v7.xyz);
  r1.z = rsqrt(r1.z);
  r7.xyz = -v7.xyz * r1.zzz;
  r1.w = cmp(isDepthHack != 0);
  r2.xy = (uint2)r2.zw;
  r2.z = dot(r2.yx, float2(0.0671105608,0.00583714992));
  r2.z = frac(r2.z);
  r2.z = 52.9829178 * r2.z;
  r2.z = frac(r2.z);
  r2.z = r2.z * 6.28318548 + gameTick.w;
  sincos(r2.z, r8.x, r9.x);
  r2.x = dot(r2.xy, float2(0.0671105608,0.00583714992));
  r2.x = frac(r2.x);
  r2.x = 52.9829178 * r2.x;
  r2.x = frac(r2.x);
  r2.x = r2.x * 6.28318548 + gameTick.w;
  sincos(r2.x, r2.x, r10.x);
  r1.x = saturate(dot(r3.xyz, r7.xyz));
  r2.y = dot(-r7.xyz, r3.xyz);
  r2.y = r2.y + r2.y;
  r11.xyz = r3.xyz * -r2.yyy + -r7.xyz;
  r2.y = 17 * r1.y;
  r2.y = exp2(r2.y);
  r2.y = 2 + r2.y;
  r2.y = 2 / r2.y;
  r2.z = sqrt(r2.y);
  r8.zw = float2(1,1) + -r1.yx;
  r2.w = 5 * r8.z;
  r4.w = r8.z * 5 + -2.5;
  r4.w = saturate(0.400000006 * r4.w);
  r4.w = 100 * r4.w;
  r10.yz = -r8.zz * float2(10,5) + float2(6.85740995,7.08500004);
  r6.w = exp2(r10.y);
  r6.w = r6.w * r1.x;
  r6.w = 9.1368103 * r6.w;
  r7.w = r2.w * r8.z;
  r7.w = -r7.w * 2.0159049 + r10.z;
  r7.w = exp2(r7.w);
  r7.w = r7.w * r1.x;
  r7.w = 9.70808983 * r7.w;
  r6.w = max(r7.w, r6.w);
  r6.w = max(1.26815999, r6.w);
  r7.w = numRefProbes + -numOverrideProbes;
  r9.w = (int)r7.w & -32;
  r10.y = (int)r7.w + (int)-r9.w;
  r10.z = numRefProbes & -32;
  r10.w = (int)-r10.z + numRefProbes;
  r12.xy = float2(0,0);
  r13.w = 0;
  r14.yz = float2(0,1);
  r15.xy = float2(0,0);
  r16.x = 1;
  r17.xy = float2(0,0);
  r18.xy = float2(0,0);
  r19.xyzw = float4(0,0,0,0);
  r20.yzw = float3(0,0,0);
  r12.w = r9.w;
  while (true) {
    r14.w = cmp((uint)r12.w >= numRefProbes);
    if (r14.w != 0) break;
    r12.z = (uint)r12.w >> 5;
    r13.xyz = (int3)r6.xyz + (int3)r12.xyz;
    r12.z = visibleProbes.Load(r13.xyzw).x;
    r13.x = cmp((int)r9.w == (int)r12.w);
    bitmask.y = ((~(-1 << r10.y)) << 0) & 0xffffffff;  r13.y = (((uint)0 << 0) & bitmask.y) | ((uint)r12.z & ~bitmask.y);
    r12.z = r13.x ? r13.y : r12.z;
    r13.x = cmp((int)r10.z == (int)r12.w);
    if (r10.w == 0) r13.y = 0; else if (r10.w+0 < 32) {     r13.y = (uint)r12.z << (32-(r10.w + 0)); r13.y = (uint)r13.y >> (32-r10.w);    } else r13.y = (uint)r12.z >> 0;
    r12.z = r13.x ? r13.y : r12.z;
    r13.x = (int)r12.w + numLights;
    r21.xyzw = r19.xyzw;
    r22.xyz = r20.yzw;
    r13.y = r12.z;
    while (true) {
      if (r13.y == 0) break;
      r13.z = firstbitlow((uint)r13.y);
      r14.w = 1 << (int)r13.z;
      r15.w = (int)r13.y & (int)r14.w;
      if (r15.w != 0) {
        r13.y = (int)r13.y ^ (int)r14.w;
        r14.w = (int)r13.z + (int)r13.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r23.xyzw, r14.w, l(0), t11.xyzw
      r23.x = samp0[]..swiz;
      r23.y = samp0[]..swiz;
      r23.z = samp0[]..swiz;
      r23.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r24.xy, r14.w, l(16), t11.xyxx
      r24.x = samp0[]..swiz;
      r24.y = samp0[]..swiz;
        r23.xyz = -v7.xyz + r23.xyz;
        r24.z = r23.w;
        r23.xyz = cmp(abs(r23.xyz) < r24.zxy);
        r14.w = r23.y ? r23.x : 0;
        r14.w = r23.z ? r14.w : 0;
        if (r14.w != 0) {
          r13.z = (int)r12.w + (int)r13.z;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r13.z, l(0), t15.wxyz
        r23.x = samp0[]..swiz;
        r23.y = samp0[]..swiz;
        r23.z = samp0[]..swiz;
        r23.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r16.zw, r13.z, l(96), t15.xxxy
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r13.z, l(116), t15.zwxy
        r24.x = samp0[]..swiz;
        r24.y = samp0[]..swiz;
        r24.z = samp0[]..swiz;
        r24.w = samp0[]..swiz;
          r25.xyz = v7.xyz + -r23.yzw;
          r14.w = (int)r24.w & 0x0000ffff;
          if (6 == 0) r15.w = 0; else if (6+25 < 32) {           r15.w = (uint)r24.w << (32-(6 + 25)); r15.w = (uint)r15.w >> (32-6);          } else r15.w = (uint)r24.w >> 25;
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
          r17.w = dot(r26.xyz, r25.xyz);
          r17.w = saturate(r17.w + r26.w);
          r18.w = dot(r27.xyz, r25.xyz);
          r18.w = saturate(r18.w + r27.w);
          r17.w = r18.w * r17.w;
          r18.w = dot(r28.xyz, r25.xyz);
          r18.w = saturate(r18.w + r28.w);
          r17.w = r18.w * r17.w;
          r18.w = dot(r29.xyz, r25.xyz);
          r18.w = saturate(r18.w + r29.w);
          r17.w = r18.w * r17.w;
          r18.w = dot(r30.xyz, r25.xyz);
          r18.w = saturate(r18.w + r30.w);
          r17.w = r18.w * r17.w;
          r18.w = dot(r31.xyz, r25.xyz);
          r18.w = saturate(r18.w + r31.w);
          r14.x = r18.w * r17.w;
          r17.w = (int)r16.z & 1;
          r26.xy = r17.ww ? r14.xy : r14.zx;
          r14.x = r16.z;
          r27.xy = r26.xy;
          r17.w = 1;
          while (true) {
            r18.w = cmp((int)r17.w >= (int)r15.w);
            if (r18.w != 0) break;
            r18.w = (int)r14.w + (int)r17.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r18.w, l(0), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r18.w, l(16), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r18.w, l(32), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r18.w, l(48), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r18.w, l(64), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r18.w, l(80), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
            r18.w = dot(r28.xyz, r25.xyz);
            r18.w = saturate(r18.w + r28.w);
            r18.w = r27.x * r18.w;
            r23.w = dot(r29.xyz, r25.xyz);
            r23.w = saturate(r23.w + r29.w);
            r18.w = r23.w * r18.w;
            r23.w = dot(r30.xyz, r25.xyz);
            r23.w = saturate(r23.w + r30.w);
            r18.w = r23.w * r18.w;
            r23.w = dot(r31.xyz, r25.xyz);
            r23.w = saturate(r23.w + r31.w);
            r18.w = r23.w * r18.w;
            r23.w = dot(r32.xyz, r25.xyz);
            r23.w = saturate(r23.w + r32.w);
            r18.w = r23.w * r18.w;
            r23.w = dot(r33.xyz, r25.xyz);
            r23.w = saturate(r23.w + r33.w);
            r27.x = r23.w * r18.w;
            r25.w = (uint)r14.x >> 2;
            if (1 == 0) r26.z = 0; else if (1+2 < 32) {             r26.z = (uint)r14.x << (32-(1 + 2)); r26.z = (uint)r26.z >> (32-1);            } else r26.z = (uint)r14.x >> 2;
            r26.w = (int)r25.w & 2;
            r27.z = max(r27.y, r27.x);
            r18.w = -r18.w * r23.w + 1;
            r18.w = r27.y * r18.w;
            r16.y = r26.w ? r18.w : r27.z;
            r27.xy = r26.zz ? r27.xy : r16.xy;
            r17.w = (int)r17.w + 1;
            r14.x = r25.w;
          }
          r27.y = saturate(r27.y);
          r14.x = r27.y * r16.w;
          r14.w = cmp(0 < r14.x);
          if (r14.w != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r13.z, l(16), t15.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r13.z, l(32), t15.yxwz
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r13.z, l(48), t15.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r13.z, l(64), t15.zwxy
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r13.z, l(80), t15.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r13.z, l(132), t15.zwxy
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r13.z, l(148), t15.zwxy
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r13.z, l(164), t15.zwxy
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r13.z, l(180), t15.zwxy
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r13.z, l(196), t15.xyzw
          r36.x = samp0[]..swiz;
          r36.y = samp0[]..swiz;
          r36.z = samp0[]..swiz;
          r36.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xy, r13.z, l(212), t15.xyxx
          r37.x = samp0[]..swiz;
          r37.y = samp0[]..swiz;
            r22.z = r27.y * r16.w + r22.z;
            r13.z = r14.x * r24.z;
            r24.z = r32.z;
            r14.x = dot(r11.xyz, r24.xyz);
            r14.w = dot(r25.xyz, r24.xyz);
            r14.w = r14.w + -r32.w;
            r15.w = cmp(r14.w >= 0);
            r14.w = max(abs(r14.w), r4.w);
            r14.w = r15.w ? r14.w : -r14.w;
            r14.x = max(1.00000001e-07, -r14.x);
            r14.x = r14.w / r14.x;
            r14.x = min(131072, abs(r14.x));
            r32.z = r33.z;
            r14.w = dot(r11.xyz, r32.xyz);
            r15.w = dot(r25.xyz, r32.xyz);
            r15.w = r15.w + -r33.w;
            r16.y = cmp(r15.w >= 0);
            r15.w = max(abs(r15.w), r4.w);
            r15.w = r16.y ? r15.w : -r15.w;
            r14.w = max(1.00000001e-07, -r14.w);
            r14.w = r15.w / r14.w;
            r14.x = min(r14.x, abs(r14.w));
            r33.z = r34.z;
            r14.w = dot(r11.xyz, r33.xyz);
            r15.w = dot(r25.xyz, r33.xyz);
            r15.w = r15.w + -r34.w;
            r16.y = cmp(r15.w >= 0);
            r15.w = max(abs(r15.w), r4.w);
            r15.w = r16.y ? r15.w : -r15.w;
            r14.w = max(1.00000001e-07, -r14.w);
            r14.w = r15.w / r14.w;
            r14.x = min(r14.x, abs(r14.w));
            r34.z = r35.z;
            r14.w = dot(r11.xyz, r34.xyz);
            r15.w = dot(r25.xyz, r34.xyz);
            r15.w = r15.w + -r35.w;
            r16.y = cmp(r15.w >= 0);
            r15.w = max(abs(r15.w), r4.w);
            r15.w = r16.y ? r15.w : -r15.w;
            r14.w = max(1.00000001e-07, -r14.w);
            r14.w = r15.w / r14.w;
            r14.x = min(r14.x, abs(r14.w));
            r35.z = r36.x;
            r14.w = dot(r11.xyz, r35.xyz);
            r15.w = dot(r25.xyz, r35.xyz);
            r15.w = r15.w + -r36.y;
            r16.y = cmp(r15.w >= 0);
            r15.w = max(abs(r15.w), r4.w);
            r15.w = r16.y ? r15.w : -r15.w;
            r14.w = max(1.00000001e-07, -r14.w);
            r14.w = r15.w / r14.w;
            r14.x = min(r14.x, abs(r14.w));
            r37.zw = r36.zw;
            r14.w = dot(r11.zxy, r37.xzw);
            r15.w = dot(r25.zxy, r37.xzw);
            r15.w = r15.w + -r37.y;
            r16.y = cmp(r15.w >= 0);
            r15.w = max(abs(r15.w), r4.w);
            r15.w = r16.y ? r15.w : -r15.w;
            r14.w = max(1.00000001e-07, -r14.w);
            r14.w = r15.w / r14.w;
            r14.x = min(r14.x, abs(r14.w));
            r24.x = r29.w;
            r24.yz = r30.zw;
            r16.yzw = r24.xyz + r25.xyz;
            r16.yzw = r11.xyz * r14.xxx + r16.yzw;
            r14.w = dot(r16.yzw, r16.yzw);
            r14.w = sqrt(r14.w);
            r14.x = r14.x / r14.w;
            r14.x = r14.x + r14.x;
            r14.x = sqrt(r14.x);
            r14.x = r8.z * 5 + r14.x;
            r14.x = -0.844799995 + r14.x;
            r23.y = r26.z;
            r23.z = r28.x;
            r32.x = dot(r16.yzw, r23.xyz);
            r24.xy = r26.xw;
            r24.z = r28.w;
            r32.y = dot(r16.yzw, r24.xyz);
            r28.x = r26.y;
            r32.z = dot(r16.yzw, r28.xyz);
            if (9 == 0) r14.w = 0; else if (9+16 < 32) {             r14.w = (uint)r24.w << (32-(9 + 16)); r14.w = (uint)r14.w >> (32-9);            } else r14.w = (uint)r24.w >> 16;
            r32.w = (uint)r14.w;
            r16.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r32.xyzw, r14.x).xyz;
            r26.x = dot(r25.xyz, r23.xyz);
            r26.y = dot(r25.xyz, r24.xyz);
            r26.z = dot(r25.xyz, r28.xyz);
            r25.xyz = saturate(r26.xyz * r29.xyz + float3(0.5,0.5,0.5));
            r30.z = r31.x;
            r25.xyz = r25.xyz * r30.xyz + r31.yzw;
            r32.x = dot(r3.xyz, r23.xyz);
            r32.y = dot(r3.xyz, r24.xyz);
            r32.z = dot(r3.xyz, r28.xyz);
            r23.xyz = cmp(float3(0,0,0) < r32.xyz);
            r15.z = r23.x ? 0 : 0.5;
            r24.xyz = r25.xyz + r15.xyz;
            r24.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r24.xyz, 0).xyz;
            r26.xyz = r32.xyz * r32.xyz;
            r26.xyz = r26.xyz * r13.zzz;
            r17.z = r23.y ? 0 : 0.5;
            r23.xyw = r25.xyz + r17.xyz;
            r23.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r23.xyw, 0).xyz;
            r23.xyw = r23.xyw * r26.yyy;
            r23.xyw = r24.xyz * r26.xxx + r23.xyw;
            r18.z = r23.z ? 0 : 0.5;
            r24.xyz = r25.xyz + r18.xyz;
            r24.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r24.xyz, 0).xyz;
            r23.xyz = r24.xyz * r26.zzz + r23.xyw;
            r24.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r32.xyzw, 6).xyz;
            r25.xyz = r24.xyz * r23.xyz;
            r14.x = dot(r25.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r21.xyz = r23.xyz * r24.xyz + r21.xyz;
            r14.w = r14.x * r6.w;
            r16.yzw = r16.yzw * r13.zzz;
            r13.z = dot(r16.yzw, float3(0.212599993,0.715200007,0.0722000003));
            r13.z = r6.w * r14.x + r13.z;
            r13.z = r14.w / r13.z;
            r23.x = r21.w;
            r23.yz = r22.xy;
            r22.xyw = r16.zwy * r13.zzz + r23.yzx;
            r21.w = r22.w;
          }
        }
      }
    }
    r19.xyzw = r21.xyzw;
    r20.yzw = r22.xyz;
    r12.w = (int)r12.w + 32;
  }
  r10.z = cmp(r20.w < 1);
  if (r10.z != 0) {
    r12.xy = float2(0,0);
    r13.w = 0;
    r14.yz = float2(0,1);
    r15.xy = float2(0,0);
    r16.x = 1;
    r17.xy = float2(0,0);
    r18.xy = float2(0,0);
    r21.x = r19.w;
    r21.yzw = r20.yzw;
    r22.xyz = r19.xyz;
    r10.z = r20.w;
    r10.w = 0;
    while (true) {
      r12.w = cmp((uint)r10.w >= (uint)r7.w);
      if (r12.w != 0) break;
      r12.z = (uint)r10.w >> 5;
      r13.xyz = (int3)r6.xyz + (int3)r12.xyz;
      r12.z = visibleProbes.Load(r13.xyzw).x;
      r12.w = cmp((int)r9.w == (int)r10.w);
      if (r10.y == 0) r13.x = 0; else if (r10.y+0 < 32) {       r13.x = (uint)r12.z << (32-(r10.y + 0)); r13.x = (uint)r13.x >> (32-r10.y);      } else r13.x = (uint)r12.z >> 0;
      r12.z = r12.w ? r13.x : r12.z;
      r12.w = (int)r10.w + numLights;
      r23.xyzw = r21.xyzw;
      r13.xyz = r22.xyz;
      r14.w = r10.z;
      r15.w = r12.z;
      while (true) {
        if (r15.w == 0) break;
        r16.z = firstbitlow((uint)r15.w);
        r16.w = 1 << (int)r16.z;
        r17.w = (int)r15.w & (int)r16.w;
        if (r17.w != 0) {
          r15.w = (int)r15.w ^ (int)r16.w;
          r16.w = (int)r12.w + (int)r16.z;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r24.xyzw, r16.w, l(0), t11.xyzw
        r24.x = samp0[]..swiz;
        r24.y = samp0[]..swiz;
        r24.z = samp0[]..swiz;
        r24.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r25.xy, r16.w, l(16), t11.xyxx
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
          r24.xyz = -v7.xyz + r24.xyz;
          r25.z = r24.w;
          r24.xyz = cmp(abs(r24.xyz) < r25.zxy);
          r16.w = r24.y ? r24.x : 0;
          r16.w = r24.z ? r16.w : 0;
          if (r16.w != 0) {
            r16.z = (int)r10.w + (int)r16.z;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r16.z, l(0), t15.wxyz
          r24.x = samp0[]..swiz;
          r24.y = samp0[]..swiz;
          r24.z = samp0[]..swiz;
          r24.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xy, r16.z, l(96), t15.xyxx
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r16.z, l(116), t15.zwxy
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
            r27.xyz = v7.xyz + -r24.yzw;
            r16.w = (int)r26.w & 0x0000ffff;
            if (6 == 0) r17.w = 0; else if (6+25 < 32) {             r17.w = (uint)r26.w << (32-(6 + 25)); r17.w = (uint)r17.w >> (32-6);            } else r17.w = (uint)r26.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r16.w, l(0), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r16.w, l(16), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r16.w, l(32), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r16.w, l(48), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r16.w, l(64), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r16.w, l(80), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
            r18.w = dot(r28.xyz, r27.xyz);
            r18.w = saturate(r18.w + r28.w);
            r22.w = dot(r29.xyz, r27.xyz);
            r22.w = saturate(r22.w + r29.w);
            r18.w = r22.w * r18.w;
            r22.w = dot(r30.xyz, r27.xyz);
            r22.w = saturate(r22.w + r30.w);
            r18.w = r22.w * r18.w;
            r22.w = dot(r31.xyz, r27.xyz);
            r22.w = saturate(r22.w + r31.w);
            r18.w = r22.w * r18.w;
            r22.w = dot(r32.xyz, r27.xyz);
            r22.w = saturate(r22.w + r32.w);
            r18.w = r22.w * r18.w;
            r22.w = dot(r33.xyz, r27.xyz);
            r22.w = saturate(r22.w + r33.w);
            r14.x = r22.w * r18.w;
            r18.w = (int)r25.x & 1;
            r25.zw = r18.ww ? r14.xy : r14.zx;
            r14.x = r25.x;
            r28.xy = r25.zw;
            r18.w = 1;
            while (true) {
              r22.w = cmp((int)r18.w >= (int)r17.w);
              if (r22.w != 0) break;
              r22.w = (int)r16.w + (int)r18.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r22.w, l(0), t16.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r22.w, l(16), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r22.w, l(32), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r22.w, l(48), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r22.w, l(64), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r22.w, l(80), t16.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
              r22.w = dot(r29.xyz, r27.xyz);
              r22.w = saturate(r22.w + r29.w);
              r22.w = r28.x * r22.w;
              r24.w = dot(r30.xyz, r27.xyz);
              r24.w = saturate(r24.w + r30.w);
              r22.w = r24.w * r22.w;
              r24.w = dot(r31.xyz, r27.xyz);
              r24.w = saturate(r24.w + r31.w);
              r22.w = r24.w * r22.w;
              r24.w = dot(r32.xyz, r27.xyz);
              r24.w = saturate(r24.w + r32.w);
              r22.w = r24.w * r22.w;
              r24.w = dot(r33.xyz, r27.xyz);
              r24.w = saturate(r24.w + r33.w);
              r22.w = r24.w * r22.w;
              r24.w = dot(r34.xyz, r27.xyz);
              r24.w = saturate(r24.w + r34.w);
              r28.x = r24.w * r22.w;
              r27.w = (uint)r14.x >> 2;
              if (1 == 0) r28.z = 0; else if (1+2 < 32) {               r28.z = (uint)r14.x << (32-(1 + 2)); r28.z = (uint)r28.z >> (32-1);              } else r28.z = (uint)r14.x >> 2;
              r28.w = (int)r27.w & 2;
              r29.x = max(r28.y, r28.x);
              r22.w = -r22.w * r24.w + 1;
              r22.w = r28.y * r22.w;
              r16.y = r28.w ? r22.w : r29.x;
              r28.xy = r28.zz ? r28.xy : r16.xy;
              r18.w = (int)r18.w + 1;
              r14.x = r27.w;
            }
            r14.x = saturate(r28.y + -r14.w);
            r16.y = r14.x * r25.y;
            r16.w = cmp(0 < r16.y);
            if (r16.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r16.z, l(16), t15.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r16.z, l(32), t15.yxwz
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r16.z, l(48), t15.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r16.z, l(64), t15.zwxy
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r16.z, l(80), t15.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r16.z, l(132), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r16.z, l(148), t15.zwxy
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r16.z, l(164), t15.zwxy
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r16.z, l(180), t15.zwxy
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r16.z, l(196), t15.xyzw
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xy, r16.z, l(212), t15.xyxx
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
              r23.w = r14.x * r25.y + r23.w;
              r14.x = r16.y * r26.z;
              r26.z = r34.z;
              r16.y = dot(r11.xyz, r26.xyz);
              r16.z = dot(r27.xyz, r26.xyz);
              r16.z = r16.z + -r34.w;
              r16.w = cmp(r16.z >= 0);
              r16.z = max(abs(r16.z), r4.w);
              r16.z = r16.w ? r16.z : -r16.z;
              r16.y = max(1.00000001e-07, -r16.y);
              r16.y = r16.z / r16.y;
              r16.y = min(131072, abs(r16.y));
              r34.z = r35.z;
              r16.z = dot(r11.xyz, r34.xyz);
              r16.w = dot(r27.xyz, r34.xyz);
              r16.w = r16.w + -r35.w;
              r17.w = cmp(r16.w >= 0);
              r16.w = max(abs(r16.w), r4.w);
              r16.w = r17.w ? r16.w : -r16.w;
              r16.z = max(1.00000001e-07, -r16.z);
              r16.z = r16.w / r16.z;
              r16.y = min(r16.y, abs(r16.z));
              r35.z = r36.z;
              r16.z = dot(r11.xyz, r35.xyz);
              r16.w = dot(r27.xyz, r35.xyz);
              r16.w = r16.w + -r36.w;
              r17.w = cmp(r16.w >= 0);
              r16.w = max(abs(r16.w), r4.w);
              r16.w = r17.w ? r16.w : -r16.w;
              r16.z = max(1.00000001e-07, -r16.z);
              r16.z = r16.w / r16.z;
              r16.y = min(r16.y, abs(r16.z));
              r36.z = r37.z;
              r16.z = dot(r11.xyz, r36.xyz);
              r16.w = dot(r27.xyz, r36.xyz);
              r16.w = r16.w + -r37.w;
              r17.w = cmp(r16.w >= 0);
              r16.w = max(abs(r16.w), r4.w);
              r16.w = r17.w ? r16.w : -r16.w;
              r16.z = max(1.00000001e-07, -r16.z);
              r16.z = r16.w / r16.z;
              r16.y = min(r16.y, abs(r16.z));
              r37.z = r38.x;
              r16.z = dot(r11.xyz, r37.xyz);
              r16.w = dot(r27.xyz, r37.xyz);
              r16.w = r16.w + -r38.y;
              r17.w = cmp(r16.w >= 0);
              r16.w = max(abs(r16.w), r4.w);
              r16.w = r17.w ? r16.w : -r16.w;
              r16.z = max(1.00000001e-07, -r16.z);
              r16.z = r16.w / r16.z;
              r16.y = min(r16.y, abs(r16.z));
              r39.zw = r38.zw;
              r16.z = dot(r11.zxy, r39.xzw);
              r16.w = dot(r27.zxy, r39.xzw);
              r16.w = r16.w + -r39.y;
              r17.w = cmp(r16.w >= 0);
              r16.w = max(abs(r16.w), r4.w);
              r16.w = r17.w ? r16.w : -r16.w;
              r16.z = max(1.00000001e-07, -r16.z);
              r16.z = r16.w / r16.z;
              r16.y = min(r16.y, abs(r16.z));
              r25.x = r31.w;
              r25.yz = r32.zw;
              r25.xyz = r25.xyz + r27.xyz;
              r25.xyz = r11.xyz * r16.yyy + r25.xyz;
              r16.z = dot(r25.xyz, r25.xyz);
              r16.z = sqrt(r16.z);
              r16.y = r16.y / r16.z;
              r16.y = r16.y + r16.y;
              r16.y = sqrt(r16.y);
              r16.y = r8.z * 5 + r16.y;
              r16.y = -0.844799995 + r16.y;
              r24.y = r29.z;
              r24.z = r30.x;
              r34.x = dot(r25.xyz, r24.xyz);
              r26.xy = r29.xw;
              r26.z = r30.w;
              r34.y = dot(r25.xyz, r26.xyz);
              r30.x = r29.y;
              r34.z = dot(r25.xyz, r30.xyz);
              if (9 == 0) r16.z = 0; else if (9+16 < 32) {               r16.z = (uint)r26.w << (32-(9 + 16)); r16.z = (uint)r16.z >> (32-9);              } else r16.z = (uint)r26.w >> 16;
              r34.w = (uint)r16.z;
              r16.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, r16.y).xyz;
              r25.x = dot(r27.xyz, r24.xyz);
              r25.y = dot(r27.xyz, r26.xyz);
              r25.z = dot(r27.xyz, r30.xyz);
              r25.xyz = saturate(r25.xyz * r31.xyz + float3(0.5,0.5,0.5));
              r32.z = r33.x;
              r25.xyz = r25.xyz * r32.xyz + r33.yzw;
              r34.x = dot(r3.xyz, r24.xyz);
              r34.y = dot(r3.xyz, r26.xyz);
              r34.z = dot(r3.xyz, r30.xyz);
              r24.xyz = cmp(float3(0,0,0) < r34.xyz);
              r15.z = r24.x ? 0 : 0.5;
              r26.xyz = r25.xyz + r15.xyz;
              r26.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
              r27.xyz = r34.xyz * r34.xyz;
              r27.xyz = r27.xyz * r14.xxx;
              r17.z = r24.y ? 0 : 0.5;
              r24.xyw = r25.xyz + r17.xyz;
              r24.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r24.xyw, 0).xyz;
              r24.xyw = r24.xyw * r27.yyy;
              r24.xyw = r26.xyz * r27.xxx + r24.xyw;
              r18.z = r24.z ? 0 : 0.5;
              r25.xyz = r25.xyz + r18.xyz;
              r25.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
              r24.xyz = r25.xyz * r27.zzz + r24.xyw;
              r25.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, 6).xyz;
              r26.xyz = r25.xyz * r24.xyz;
              r15.z = dot(r26.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r13.xyz = r24.xyz * r25.xyz + r13.xyz;
              r17.z = r15.z * r6.w;
              r16.yzw = r16.yzw * r14.xxx;
              r14.x = dot(r16.yzw, float3(0.212599993,0.715200007,0.0722000003));
              r14.x = r6.w * r15.z + r14.x;
              r14.x = r17.z / r14.x;
              r23.xyz = r16.yzw * r14.xxx + r23.xyz;
            }
          }
        }
      }
      r21.xyzw = r23.xyzw;
      r22.xyz = r13.xyz;
      r10.w = (int)r10.w + 32;
    }
    r20.xyzw = r21.zxyw;
    r19.xyz = r22.xyz;
    r20.xyzw = r20.yzxw;
  } else {
    r20.x = r19.w;
  }
  r4.w = max(1, r20.w);
  r4.w = rcp(r4.w);
  r20.w = saturate(r20.w);
  r12.xyz = r19.xyz * r4.www;
  r10.yzw = r20.xyz * r4.www;
  r6.w = cmp(r20.w < 0.99000001);
  if (r6.w != 0) {
    r6.w = 1 + -r20.w;
    r7.w = sunConstants.globalProbeExposure * r6.w;
    r13.xyz = -globalProbeConstants.data[0].xyz + v7.xyz;
    r14.x = globalProbeConstants.data[0].w * r13.x;
    r14.yz = globalProbeConstants.data[1].xy * r13.yz;
    r13.xyz = saturate(float3(0.5,0.5,0.5) + r14.xyz);
    r14.xy = globalProbeConstants.data[1].zw * r13.xy;
    r14.z = globalProbeConstants.data[2].x * r13.z;
    r13.xyz = globalProbeConstants.data[2].yzw + r14.xyz;
    r14.xyz = cmp(float3(0,0,0) < r3.xyz);
    r14.xyz = r14.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r14.w = 0;
    r15.xyz = r14.wwx + r13.xyz;
    r15.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r15.xyz, 0).xyz;
    r16.xyz = r3.xyz * r3.xyz;
    r16.xyz = r16.xyz * r7.www;
    r17.xyz = r14.wwy + r13.xyz;
    r17.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r17.xyz, 0).xyz;
    r17.xyz = r17.xyz * r16.yyy;
    r15.xyz = r15.xyz * r16.xxx + r17.xyz;
    r13.xyz = r14.wwz + r13.xyz;
    r13.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r13.xyz, 0).xyz;
    r13.xyz = r13.xyz * r16.zzz + r15.xyz;
    r3.w = 0;
    r14.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r3.xyzw, 6).xyz;
    r13.xyz = r14.xyz * r13.xyz;
    r3.w = dot(r13.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r12.xyz = r19.xyz * r4.www + r13.xyz;
    r11.w = 0;
    r13.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, r2.w).xyz;
    r2.w = sunConstants.globalProbeExposure * r6.w + -r3.w;
    r2.w = r1.y * r2.w + r3.w;
    r10.yzw = r13.xyz * r2.www + r10.yzw;
  }
  r13.xy = r1.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r13.xy = gEnvBRDFGlass.SampleLevel(samplerLinear_s, r13.xy, 0).xy;
  r14.xyz = r13.xxx * r10.zwy;
  r10.yzw = r13.yyy * r10.yzw;
  r1.y = sqrt(r2.z);
  r1.y = r1.y * 0.5 + 0.5;
  r1.y = r1.y * r1.y;
  r2.w = 0.5 * r1.y;
  r1.y = -r1.y * 0.5 + 1;
  r3.w = r1.x * r1.y + r2.w;
  r1.y = r3.w * r1.y;
  r2.w = r3.w * r2.w;
  r3.w = dot(r3.xyz, sunConstants.wldDir.xyz);
  r4.w = saturate(r3.w);
  r6.w = cmp(0 >= r4.w);
  if (r6.w != 0) {
    r7.w = 0;
  }
  if (r6.w == 0) {
    r13.xyz = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v7.yyy;
    r13.xyz = v7.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r13.xyz;
    r13.xyz = v7.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r13.xyz;
    r13.xyz = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r13.xyz;
    r6.w = -sunConstants.splitDepthOffset + r13.z;
    r6.w = -r6.w * 6.10351563e-05 + 1;
    r8.z = saturate(r6.w);
    r8.z = cmp(r6.w == r8.z);
    if (r8.z != 0) {
      r8.z = 0;
      r9.w = 0;
      while (true) {
        r11.w = cmp(r8.z >= 3);
        if (r11.w != 0) break;
        r11.w = (uint)r8.z;
        r15.xy = -sunConstants.splitPinTransform[r11.w].xy + r13.xy;
        r13.w = max(abs(r15.x), abs(r15.y));
        r9.w = sunConstants.splitPinTransform[r11.w].z * r13.w;
        r11.w = cmp(r9.w < 1);
        if (r11.w != 0) {
          break;
        }
        r8.z = 1 + r8.z;
        r9.w = 0;
      }
    } else {
      r8.z = 3;
      r9.w = 0;
    }
    r11.w = cmp(r8.z >= 3);
    if (r11.w != 0) {
      r15.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r16.xz = rcp(r15.xx);
      r16.y = -r16.z;
      r15.xyz = r13.xyx * r16.xyz + r15.yzy;
      r16.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r15.xyz = max(float3(0,0,0), r15.xyz);
      r15.xyz = min(r15.xyz, r16.xyz);
      r16.xy = sunConstants.sstLightingConstants.coordScale * r15.zy;
      r16.xy = floor(r16.xy);
      r13.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r16.y;
      r13.w = r13.w * sunConstants.sstLightingConstants.coordScale + r16.x;
      r13.w = (uint)r13.w;
      r13.w = (int)r13.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.w, r13.w, l(0), t23.xxxx
    r15.w = samp0[]..swiz;
      r16.x = (int)r15.w & 0x40000000;
      r16.y = (uint)r15.w << 2;
      if (r16.x == 0) {
        r16.x = (int)r15.w & 0x01ffffff;
        r17.x = (int)r13.w + (int)r16.x;
        r13.w = (uint)r15.w >> 25;
        r13.w = (uint)r13.w;
        r15.xyz = r15.xyz * r13.www;
        r15.xyz = frac(r15.xyz);
        r15.xyz = float3(128,128,128) * r15.xyz;
        r15.xyz = (uint3)r15.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
      r17.z = samp0[]..swiz;
        r16.xz = (uint2)r15.zy >> int2(6,6);
        r13.w = (int)r17.z & 0xc0000000;
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
        r16.xzw = r13.www ? r17.xyz : r18.xyz;
        r18.yz = r13.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
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
        r16.xzw = r13.www ? r17.xyz : r16.xzw;
        r13.w = (int)r16.w & 0xc0000000;
        if (r13.w == 0) {
          r13.w = (int)-r16.z + 6;
          r17.xy = (uint2)r15.zy >> (uint2)r13.ww;
          r13.w = (int)r16.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r15.w = (((uint)r17.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r15.w = (((uint)r17.x << 0) & bitmask.w) | ((uint)r15.w & ~bitmask.w);
          r15.w = (int)r15.w * 10;
          r13.w = (uint)r13.w >> (uint)r15.w;
          r13.w = (int)r13.w & 1023;
          r17.x = (int)r13.w + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.x, l(0), t23.xxxx
        r17.w = samp0[]..swiz;
          r17.yz = (int2)r16.zz + int2(1,2);
          r13.w = (int)-r17.y + 6;
          r18.xy = (uint2)r15.zy >> (uint2)r13.ww;
          r13.w = (int)r17.w & 0xc0000000;
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
          r18.xyz = r13.www ? r17.xyw : r18.xyz;
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
          r16.xw = r13.ww ? r17.xw : r17.yz;
        }
        r13.w = (int)r16.w & 0xc0000000;
        if (r13.w == 0) {
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
          r15.y = r13.x * r15.z + r15.y;
          r15.x = r13.y * r15.x + r15.y;
          r16.y = r13.w ? r15.x : r16.y;
        }
      }
      r13.z = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r13.z;
      r13.z = cmp(r16.y < r13.z);
      r7.w = r13.z ? 0 : 1;
    }
    if (r11.w == 0) {
      if (enableDitheredShadow == 0) {
        r11.w = (uint)r8.z;
        r13.zw = -sunConstants.splitPinTransform[r11.w].xy + r13.xy;
        r13.zw = sunConstants.splitPinTransform[r11.w].zz * r13.zw;
        r15.xy = r13.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r11.w = (int16)sunConstants.splitArrayOffset;
        r15.z = r11.w + r8.z;
        r11.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r6.w).x;
        r13.z = gTransShadowmapArray.SampleLevel(samp0_s, r15.xyz, 0).x;
        r11.w = r13.z + r11.w;
        r11.w = saturate(-1 + r11.w);
        r13.z = r11.w * r11.w;
        r7.w = r13.z * r11.w;
      }
      if (enableDitheredShadow != 0) {
        r15.x = -r8.x;
        r11.w = (uint)r8.z;
        r8.z = 1 + r8.z;
        r8.z = min(2, r8.z);
        r8.z = (uint)r8.z;
        r9.w = 1 + -r9.w;
        r9.w = 28 * r9.w;
        r9.w = (uint)r9.w;
        r13.zw = -sunConstants.splitPinTransform[r11.w].xy + r13.xy;
        r13.zw = sunConstants.splitPinTransform[r11.w].zz * r13.zw;
        r13.zw = r13.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r13.xy = -sunConstants.splitPinTransform[r8.z].xy + r13.xy;
        r13.xy = sunConstants.splitPinTransform[r8.z].zz * r13.xy;
        r13.xy = r13.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r15.y = r9.x;
        r15.z = r8.x;
        r15.w = 0;
        r16.x = 0;
        while (true) {
          r16.y = cmp((uint)r16.x >= 8);
          if (r16.y != 0) break;
          r16.y = cmp((uint)r9.w < (uint)r16.x);
          r16.zw = r16.yy ? r13.xy : r13.zw;
          r17.x = r16.y ? sunConstants.splitPinTransform[r8.z].w : sunConstants.splitPinTransform[r11.w].w;
          r16.y = r16.y ? r8.z : r11.w;
          r18.x = dot(icb[r16.x+0].yx, r15.xy);
          r18.y = dot(icb[r16.x+0].yx, r15.yz);
          r17.xy = r18.xy * r17.xx + r16.zw;
          r16.y = (int)r16.y + (int16)sunConstants.splitArrayOffset;
          r17.z = (uint)r16.y;
          r16.y = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r6.w).x;
          r16.z = gTransShadowmapArray.SampleLevel(samp0_s, r17.xyz, 0).x;
          r16.y = r16.y + r16.z;
          r16.y = saturate(-1 + r16.y);
          r15.w = r16.y * 0.125 + r15.w;
          r16.x = (int)r16.x + 1;
        }
        r6.w = r15.w * r15.w;
        r7.w = r6.w * r15.w;
      }
    }
  }
  r6.w = cmp(0 < r4.w);
  if (r6.w != 0) {
    r6.w = cmp(0 < r7.w);
    if (r6.w != 0) {
      r6.w = sunConstants.specScale * r2.y;
      r6.w = r6.w * r4.w;
      if (sunConstants.sunCookieIndex != 0) {
        r5.w = 1;
        r8.z = dot(sunConstants.sunCookieTransform[0].xyzw, r5.xyzw);
        r5.x = dot(sunConstants.sunCookieTransform[1].xyzw, r5.xyzw);
        r13.x = frac(r8.z);
        r13.y = frac(r5.x);
        r5.x = -1 + (int14)sunConstants.sunCookieIndex;
        r13.z = (uint)r5.x;
        r5.xyz = gCookieArray.SampleLevel(samplerLinear_s, r13.xyz, 0).xyz;
        r5.xyz = float3(-1,-1,-1) + r5.xyz;
        r5.xyz = sunConstants.sunCookieIntensity * r5.xyz + float3(1,1,1);
        r5.xyz = sunConstants.color.xyz * r5.xyz;
      } else {
        r5.xyz = sunConstants.color.xyz;
      }
      r5.w = viewmodelSunShadowRaw >> 16;
      r8.z = cmp(0 < (uint)r5.w);
      r8.z = r1.w ? r8.z : 0;
      if (r8.z != 0) {
        r5.w = (int)r5.w + numLights;
        r5.w = (int)r5.w + -1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.z, r5.w, l(52), t12.xxxx
      r8.z = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.xyzw, r5.w, l(68), t12.xyzw
      r13.x = samp0[]..swiz;
      r13.y = samp0[]..swiz;
      r13.z = samp0[]..swiz;
      r13.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r5.w, l(84), t12.xyzw
      r15.x = samp0[]..swiz;
      r15.y = samp0[]..swiz;
      r15.z = samp0[]..swiz;
      r15.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r5.w, l(132), t12.xyzw
      r16.x = samp0[]..swiz;
      r16.y = samp0[]..swiz;
      r16.z = samp0[]..swiz;
      r16.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r5.w, l(148), t12.xyzw
      r17.x = samp0[]..swiz;
      r17.y = samp0[]..swiz;
      r17.z = samp0[]..swiz;
      r17.w = samp0[]..swiz;
        r9.w = abs(r3.w) * -0.200000003 + 0.400000006;
        r18.xyz = r3.xyz * r9.www + v7.xyz;
        r18.w = 1;
        r13.x = dot(r13.xyzw, r18.xyzw);
        r13.y = dot(r15.xyzw, r18.xyzw);
        r13.xy = r13.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r13.xy = r13.xy + r17.zw;
        r13.xy = r13.xy * r17.xy;
        r13.zw = r8.zz / r16.xz;
        r15.xy = float2(1,1) + -r13.zw;
        r15.xy = cmp(r13.xy >= r15.xy);
        r13.zw = cmp(r13.zw >= r13.xy);
        r13.zw = (int2)r13.zw | (int2)r15.xy;
        r9.w = (int)r13.w | (int)r13.z;
        if (r9.w == 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.w, r5.w, l(28), t12.xxxx
        r9.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r5.w, l(100), t12.xyzw
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.zw, r5.w, l(164), t12.xxxy
        r13.z = samp0[]..swiz;
        r13.w = samp0[]..swiz;
          r5.w = dot(r15.xyzw, r18.xyzw);
          r13.xy = saturate(r13.xy);
          r15.xy = r13.xy * r16.xz + r16.yw;
          r5.w = r5.w + r13.z;
          r5.w = r5.w / r13.w;
          r5.w = max(6.10351563e-05, r5.w);
          r9.w = (int)r9.w & 0x0000ffff;
          if (enableDitheredShadow != 0) {
            r13.x = -r8.x;
            r16.z = (uint)r9.w;
            r13.y = r9.x;
            r13.z = r8.x;
            r11.w = 0;
            r13.w = 0;
            while (true) {
              r15.w = cmp((int)r13.w >= 8);
              if (r15.w != 0) break;
              r17.x = dot(icb[r13.w+0].yx, r13.xy);
              r17.y = dot(icb[r13.w+0].yx, r13.yz);
              r16.xy = r17.xy * r8.zz + r15.xy;
              r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r5.w).x;
              r11.w = r15.w * 0.125 + r11.w;
              r13.w = (int)r13.w + 1;
            }
          } else {
            r15.z = (uint)r9.w;
            r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r5.w).x;
          }
          r5.w = r11.w * r11.w;
          r5.w = r5.w * r11.w;
        } else {
          r5.w = 1;
        }
        r7.w = r7.w * r5.w;
      } else {
        r5.w = viewmodelSunShadowRaw & 0x0000ffff;
        r8.z = cmp(0 < (uint)r5.w);
        r9.w = ~(int)r1.w;
        r8.z = r8.z ? r9.w : 0;
        if (r8.z != 0) {
          r5.w = (int)r5.w + numLights;
          r5.w = (int)r5.w + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.z, r5.w, l(52), t12.xxxx
        r8.z = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.xyzw, r5.w, l(68), t12.xyzw
        r13.x = samp0[]..swiz;
        r13.y = samp0[]..swiz;
        r13.z = samp0[]..swiz;
        r13.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r5.w, l(84), t12.xyzw
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r5.w, l(132), t12.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r5.w, l(148), t12.xyzw
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
          r9.w = abs(r3.w) * -0.200000003 + 0.400000006;
          r18.xyz = r3.xyz * r9.www + v7.xyz;
          r18.w = 1;
          r13.x = dot(r13.xyzw, r18.xyzw);
          r13.y = dot(r15.xyzw, r18.xyzw);
          r13.xy = r13.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r13.xy = r13.xy + r17.zw;
          r13.xy = r13.xy * r17.xy;
          r13.zw = r8.zz / r16.xz;
          r15.xy = float2(1,1) + -r13.zw;
          r15.xy = cmp(r13.xy >= r15.xy);
          r13.zw = cmp(r13.zw >= r13.xy);
          r13.zw = (int2)r13.zw | (int2)r15.xy;
          r9.w = (int)r13.w | (int)r13.z;
          if (r9.w == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.w, r5.w, l(28), t12.xxxx
          r9.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r5.w, l(100), t12.xyzw
          r15.x = samp0[]..swiz;
          r15.y = samp0[]..swiz;
          r15.z = samp0[]..swiz;
          r15.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.zw, r5.w, l(164), t12.xxxy
          r13.z = samp0[]..swiz;
          r13.w = samp0[]..swiz;
            r5.w = dot(r15.xyzw, r18.xyzw);
            r13.xy = saturate(r13.xy);
            r15.xy = r13.xy * r16.xz + r16.yw;
            r5.w = r5.w + r13.z;
            r5.w = r5.w / r13.w;
            r5.w = max(6.10351563e-05, r5.w);
            r9.w = (int)r9.w & 0x0000ffff;
            if (enableDitheredShadow != 0) {
              r13.x = -r8.x;
              r16.z = (uint)r9.w;
              r13.y = r9.x;
              r13.z = r8.x;
              r11.w = 0;
              r13.w = 0;
              while (true) {
                r15.w = cmp((int)r13.w >= 8);
                if (r15.w != 0) break;
                r17.x = dot(icb[r13.w+0].yx, r13.xy);
                r17.y = dot(icb[r13.w+0].yx, r13.yz);
                r16.xy = r17.xy * r8.zz + r15.xy;
                r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r5.w).x;
                r11.w = r15.w * 0.125 + r11.w;
                r13.w = (int)r13.w + 1;
              }
            } else {
              r15.z = (uint)r9.w;
              r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r5.w).x;
            }
            r5.w = r11.w * r11.w;
            r5.w = r5.w * r11.w;
          } else {
            r5.w = 1;
          }
          r7.w = r7.w * r5.w;
        }
      }
      r5.w = -r1.x * 0.5 + 1;
      r5.w = -r4.w * r5.w + 1;
      r5.w = r5.w * r5.w;
      r5.w = -r5.w * 0.620000005 + 0.620000005;
      r5.w = r5.w + -r4.w;
      r5.w = r2.z * r5.w + r4.w;
      r5.w = r5.w * r7.w;
      r3.w = cmp(0 < r3.w);
      r13.xyz = r5.www * r5.xyz + r12.xyz;
      r15.xyz = -v7.xyz * r1.zzz + sunConstants.wldDir.xyz;
      r1.z = dot(r15.xyz, r15.xyz);
      r1.z = rsqrt(r1.z);
      r15.xyz = r15.xyz * r1.zzz;
      r1.z = dot(r15.xyz, r7.xyz);
      r5.w = dot(r3.xyz, r15.xyz);
      r8.z = abs(r5.w) * r2.y + -abs(r5.w);
      r5.w = abs(r5.w) * r8.z + 1;
      r4.w = r4.w * r1.y + r2.w;
      r5.w = r5.w * r5.w;
      r4.w = r5.w * r4.w;
      r4.w = rcp(r4.w);
      r4.w = r4.w * r6.w;
      r4.w = r7.w * r4.w;
      r4.w = 0.25 * r4.w;
      r15.xyz = r4.www * r5.xyz + r10.yzw;
      r1.z = saturate(1 + -r1.z);
      r1.z = log2(r1.z);
      r1.z = 3.4000001 * r1.z;
      r1.z = exp2(r1.z);
      r1.z = r4.w * r1.z;
      r5.xyz = r1.zzz * r5.yzx + r14.xyz;
      r13.w = r5.z;
      r12.w = r14.z;
      r12.xyzw = r3.wwww ? r13.xyzw : r12.xyzw;
      r5.zw = r15.xy;
      r14.zw = r10.yz;
      r5.xyzw = r3.wwww ? r5.xyzw : r14.xyzw;
      r10.w = r3.w ? r15.z : r10.w;
      r14.z = r12.w;
      r14.xy = r5.xy;
      r10.yz = r5.zw;
    }
  }
  r5.x = -r8.x;
  r1.z = ~(int)r1.w;
  r1.x = -r1.x * 0.5 + 1;
  r13.xy = float2(0,0);
  r15.w = 0;
  r16.xyz = v7.xyz;
  r16.w = 1;
  r17.w = 1;
  r5.z = r8.x;
  r18.w = 1;
  r19.z = 1;
  r20.w = 1;
  r5.yw = r9.xx;
  r8.y = r5.w;
  r21.w = 1;
  r9.y = r5.x;
  r9.z = r8.x;
  r22.w = 1;
  r23.x = r9.x;
  r23.y = r5.x;
  r23.z = r8.x;
  r24.x = r9.x;
  r24.y = r5.x;
  r24.z = r8.x;
  r25.x = r9.x;
  r25.y = r5.x;
  r25.z = r8.x;
  r26.xyz = r12.xyz;
  r27.xyz = r14.zxy;
  r28.xyz = r10.yzw;
  r3.w = enableDitheredShadow;
  r4.w = 0;
  while (true) {
    r6.w = cmp((uint)r4.w >= numLights);
    if (r6.w != 0) break;
    r13.z = (uint)r4.w >> 5;
    r15.xyz = (int3)r6.xyz + (int3)r13.xyz;
    r6.w = visibleLights.Load(r15.xyzw).x;
    r15.xyz = r26.xyz;
    r29.xyz = r27.xyz;
    r30.xyz = r28.xyz;
    r7.w = r3.w;
    r8.z = r6.w;
    while (true) {
      if (r8.z == 0) break;
      r9.w = firstbitlow((uint)r8.z);
      r11.w = 1 << (int)r9.w;
      r12.w = (int)r8.z & (int)r11.w;
      if (r12.w != 0) {
        r8.z = (int)r8.z ^ (int)r11.w;
        r9.w = (int)r4.w + (int)r9.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r31.xyzw, r9.w, l(0), t11.xyzw
      r31.x = samp0[]..swiz;
      r31.y = samp0[]..swiz;
      r31.z = samp0[]..swiz;
      r31.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r32.xy, r9.w, l(16), t11.xyxx
      r32.x = samp0[]..swiz;
      r32.y = samp0[]..swiz;
        r31.xyz = -v7.xyz + r31.xyz;
        r32.z = r31.w;
        r31.xyz = cmp(abs(r31.xyz) < r32.zxy);
        r11.w = r31.y ? r31.x : 0;
        r11.w = r31.z ? r11.w : 0;
        if (r11.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r9.w, l(0), t12.wxyz
        r31.x = samp0[]..swiz;
        r31.y = samp0[]..swiz;
        r31.z = samp0[]..swiz;
        r31.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r9.w, l(16), t12.zxyw
        r32.x = samp0[]..swiz;
        r32.y = samp0[]..swiz;
        r32.z = samp0[]..swiz;
        r32.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r9.w, l(32), t12.xyzw
        r33.x = samp0[]..swiz;
        r33.y = samp0[]..swiz;
        r33.z = samp0[]..swiz;
        r33.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r9.w, l(48), t12.xyzw
        r34.x = samp0[]..swiz;
        r34.y = samp0[]..swiz;
        r34.z = samp0[]..swiz;
        r34.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r9.w, l(64), t12.yzwx
        r35.x = samp0[]..swiz;
        r35.y = samp0[]..swiz;
        r35.z = samp0[]..swiz;
        r35.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r9.w, l(80), t12.xyzw
        r36.x = samp0[]..swiz;
        r36.y = samp0[]..swiz;
        r36.z = samp0[]..swiz;
        r36.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r9.w, l(96), t12.yzwx
        r37.x = samp0[]..swiz;
        r37.y = samp0[]..swiz;
        r37.z = samp0[]..swiz;
        r37.w = samp0[]..swiz;
          if (3 == 0) r11.w = 0; else if (3+24 < 32) {           r11.w = (uint)r32.w << (32-(3 + 24)); r11.w = (uint)r11.w >> (32-3);          } else r11.w = (uint)r32.w >> 24;
          switch (r11.w) {
            case 4 :            r11.w = cmp(0 < r37.x);
            r38.xy = r36.zw;
            r38.z = r37.w;
            r39.xyz = -r38.xyz * float3(0.5,0.5,0.5) + r31.yzw;
            r40.xyz = -v7.xyz + r39.xyz;
            r12.w = dot(r38.xyz, r40.xyz);
            r13.z = saturate(-r12.w / r37.x);
            r41.xyz = r13.zzz * r38.xyz + r39.xyz;
            r41.xyz = r11.www ? r41.xyz : r31.yzw;
            r41.xyz = -v7.xyz + r41.xyz;
            r13.w = dot(r41.xyz, r41.xyz);
            r14.w = rsqrt(r13.w);
            r41.xyz = r41.xyz * r14.www;
            r14.w = dot(r3.xyz, r41.xyz);
            r19.w = saturate(r14.w);
            r23.w = cmp(0 < r19.w);
            if (r23.w != 0) {
              r23.w = sqrt(r13.w);
              r24.w = r34.x * r34.x;
              r13.w = r24.w / r13.w;
              r13.w = min(1, r13.w);
              r41.xy = saturate(r23.ww * r33.xz + r33.yw);
              r41.zw = r41.xy * r41.xy;
              r41.xy = r41.xy * float2(-2,-2) + float2(3,3);
              r41.xy = r41.zw * r41.xy;
              r13.w = r41.x * r13.w;
              r13.w = r13.w * r41.y;
              r23.w = cmp(0 < r13.w);
              if (r23.w != 0) {
                if (3 == 0) r23.w = 0; else if (3+27 < 32) {                 r23.w = (uint)r32.w << (32-(3 + 27)); r23.w = (uint)r23.w >> (32-3);                } else r23.w = (uint)r32.w >> 27;
                r23.w = cmp((int)r23.w != 1);
                if (r23.w != 0) {
                  r23.w = abs(r14.w) * -0.200000003 + 0.400000006;
                  r41.xyz = r3.xyz * r23.www + v7.xyz;
                  r41.xyz = r41.xyz + -r35.xyz;
                  r23.w = max(abs(r41.y), abs(r41.z));
                  r23.w = max(abs(r41.x), r23.w);
                  r23.w = r36.x / r23.w;
                  r23.w = r23.w + r36.y;
                  r24.w = dot(r41.xyz, r41.xyz);
                  r24.w = rsqrt(r24.w);
                  r23.w = max(6.10351563e-05, r23.w);
                  r25.w = (int)r32.w & 0x0000ffff;
                  r42.w = (uint)r25.w;
                  r25.w = 0;
                  r26.w = 0;
                  while (true) {
                    r27.w = cmp((int)r26.w >= 8);
                    if (r27.w != 0) break;
                    r43.y = dot(icb[r26.w+0].yx, r5.xy);
                    r43.z = dot(icb[r26.w+0].yx, r5.yz);
                    r43.yz = r43.yz * r34.yy;
                    r43.x = r43.y * r10.x;
                    r43.w = r43.y * r2.x;
                    r42.xyz = r41.xyz * r24.www + r43.xzw;
                    r27.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r42.xyzw, r23.w).x;
                    r25.w = r27.w * 0.125 + r25.w;
                    r26.w = (int)r26.w + 1;
                  }
                } else {
                  r25.w = 1;
                }
                r13.w = r25.w * r13.w;
                r23.w = cmp(0 < r13.w);
                if (r23.w != 0) {
                  r23.w = r32.x * r2.y;
                  r23.w = 0.25 * r23.w;
                  r24.w = dot(r38.xyz, r11.xyz);
                  r26.w = dot(r11.xyz, r40.xyz);
                  r27.w = -r24.w * r24.w + r37.x;
                  r12.w = r24.w * r26.w + -r12.w;
                  r12.w = saturate(r12.w / r27.w);
                  r24.w = r27.w / r37.x;
                  r24.w = 10 * r24.w;
                  r24.w = min(1, r24.w);
                  r12.w = r12.w + -r13.z;
                  r12.w = r24.w * r12.w + r13.z;
                  r38.xyz = r12.www * r38.xyz + r39.xyz;
                  r38.xyz = r11.www ? r38.xyz : r31.yzw;
                  r38.xyz = -v7.xyz + r38.xyz;
                  r11.w = dot(r38.xyz, r38.xyz);
                  r11.w = rsqrt(r11.w);
                  r39.xyz = r38.xyz * r11.www;
                  if (4 == 0) r12.w = 0; else if (4+16 < 32) {                   r12.w = (uint)r32.w << (32-(4 + 16)); r12.w = (uint)r12.w >> (32-4);                  } else r12.w = (uint)r32.w >> 16;
                  r13.z = cmp(0 < (uint)r12.w);
                  r13.z = r1.w ? r13.z : 0;
                  if (r13.z != 0) {
                    r12.w = (int)r12.w + numLights;
                    r12.w = (int)r12.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.z, r12.w, l(52), t12.xxxx
                  r13.z = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r12.w, l(100), t12.xyzw
                  r40.x = samp0[]..swiz;
                  r40.y = samp0[]..swiz;
                  r40.z = samp0[]..swiz;
                  r40.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r12.w, l(116), t12.xyzw
                  r41.x = samp0[]..swiz;
                  r41.y = samp0[]..swiz;
                  r41.z = samp0[]..swiz;
                  r41.w = samp0[]..swiz;
                    r24.w = abs(r14.w) * -0.200000003 + 0.400000006;
                    r17.xyz = r3.xyz * r24.www + v7.xyz;
                    r24.w = dot(r40.xyzw, r17.xyzw);
                    r26.w = dot(r41.xyzw, r17.xyzw);
                    r27.w = cmp(r26.w < r24.w);
                    if (r27.w == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r12.w, l(68), t12.xyzw
                    r40.x = samp0[]..swiz;
                    r40.y = samp0[]..swiz;
                    r40.z = samp0[]..swiz;
                    r40.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r12.w, l(84), t12.xyzw
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r12.w, l(132), t12.xyzw
                    r42.x = samp0[]..swiz;
                    r42.y = samp0[]..swiz;
                    r42.z = samp0[]..swiz;
                    r42.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r12.w, l(148), t12.xyzw
                    r43.x = samp0[]..swiz;
                    r43.y = samp0[]..swiz;
                    r43.z = samp0[]..swiz;
                    r43.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xy, r12.w, l(164), t12.xyxx
                    r44.x = samp0[]..swiz;
                    r44.y = samp0[]..swiz;
                      r40.x = dot(r40.xyzw, r17.xyzw);
                      r40.y = dot(r41.xyzw, r17.xyzw);
                      r17.xy = r40.xy / r26.ww;
                      r17.xy = r17.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r17.xy = r17.xy + r43.zw;
                      r17.xy = r17.xy * r43.xy;
                      r40.xy = r13.zz / r42.xz;
                      r40.zw = float2(1,1) + -r40.xy;
                      r40.zw = cmp(r17.xy >= r40.zw);
                      r40.xy = cmp(r40.xy >= r17.xy);
                      r40.xy = (int2)r40.xy | (int2)r40.zw;
                      r17.z = (int)r40.y | (int)r40.x;
                      r17.xy = saturate(r17.xy);
                      r40.xy = r17.xy * r42.xz + r42.yw;
                      r17.x = r44.y * r26.w;
                      r17.y = r44.x * r26.w + r24.w;
                      r17.x = r17.y / r17.x;
                    } else {
                      r17.z = -1;
                    }
                    r17.y = (int)r27.w | (int)r17.z;
                    if (r17.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.w, r12.w, l(28), t12.xxxx
                    r12.w = samp0[]..swiz;
                      r17.x = max(6.10351563e-05, r17.x);
                      r12.w = (int)r12.w & 0x0000ffff;
                      if (r7.w != 0) {
                        r41.z = (uint)r12.w;
                        r17.yz = float2(0,0);
                        while (true) {
                          r24.w = cmp((int)r17.z >= 8);
                          if (r24.w != 0) break;
                          r42.x = dot(icb[r17.z+0].yx, r5.xw);
                          r42.y = dot(icb[r17.z+0].xy, r8.xy);
                          r41.xy = r42.xy * r13.zz + r40.xy;
                          r24.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r41.xyz, r17.x).x;
                          r17.y = r24.w * 0.125 + r17.y;
                          r17.z = (int)r17.z + 1;
                        }
                      } else {
                        r40.z = (uint)r12.w;
                        r17.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r40.xyz, r17.x).x;
                      }
                      r12.w = r17.y * r17.y;
                      r12.w = r12.w * r17.y;
                    } else {
                      r12.w = 1;
                    }
                    r13.w = r13.w * r12.w;
                  } else {
                    if (4 == 0) r12.w = 0; else if (4+20 < 32) {                     r12.w = (uint)r32.w << (32-(4 + 20)); r12.w = (uint)r12.w >> (32-4);                    } else r12.w = (uint)r32.w >> 20;
                    r13.z = cmp(0 < (uint)r12.w);
                    r13.z = r13.z ? r1.z : 0;
                    if (r13.z != 0) {
                      r12.w = (int)r12.w + numLights;
                      r12.w = (int)r12.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.z, r12.w, l(52), t12.xxxx
                    r13.z = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r12.w, l(100), t12.xyzw
                    r40.x = samp0[]..swiz;
                    r40.y = samp0[]..swiz;
                    r40.z = samp0[]..swiz;
                    r40.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r12.w, l(116), t12.xyzw
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                      r17.x = abs(r14.w) * -0.200000003 + 0.400000006;
                      r18.xyz = r3.xyz * r17.xxx + v7.xyz;
                      r17.x = dot(r40.xyzw, r18.xyzw);
                      r17.z = dot(r41.xyzw, r18.xyzw);
                      r24.w = cmp(r17.z < r17.x);
                      if (r24.w == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r12.w, l(68), t12.xyzw
                      r40.x = samp0[]..swiz;
                      r40.y = samp0[]..swiz;
                      r40.z = samp0[]..swiz;
                      r40.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r12.w, l(84), t12.xyzw
                      r41.x = samp0[]..swiz;
                      r41.y = samp0[]..swiz;
                      r41.z = samp0[]..swiz;
                      r41.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r12.w, l(132), t12.xyzw
                      r42.x = samp0[]..swiz;
                      r42.y = samp0[]..swiz;
                      r42.z = samp0[]..swiz;
                      r42.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r12.w, l(148), t12.xyzw
                      r43.x = samp0[]..swiz;
                      r43.y = samp0[]..swiz;
                      r43.z = samp0[]..swiz;
                      r43.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xy, r12.w, l(164), t12.xyxx
                      r44.x = samp0[]..swiz;
                      r44.y = samp0[]..swiz;
                        r40.x = dot(r40.xyzw, r18.xyzw);
                        r40.y = dot(r41.xyzw, r18.xyzw);
                        r18.xy = r40.xy / r17.zz;
                        r18.xy = r18.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                        r18.xy = r18.xy + r43.zw;
                        r18.xy = r18.xy * r43.xy;
                        r40.xy = r13.zz / r42.xz;
                        r40.zw = float2(1,1) + -r40.xy;
                        r40.zw = cmp(r18.xy >= r40.zw);
                        r40.xy = cmp(r40.xy >= r18.xy);
                        r40.xy = (int2)r40.xy | (int2)r40.zw;
                        r18.z = (int)r40.y | (int)r40.x;
                        r18.xy = saturate(r18.xy);
                        r40.xy = r18.xy * r42.xz + r42.yw;
                        r18.x = r44.y * r17.z;
                        r17.x = r44.x * r17.z + r17.x;
                        r17.x = r17.x / r18.x;
                      } else {
                        r18.z = -1;
                      }
                      r17.z = (int)r24.w | (int)r18.z;
                      if (r17.z == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.w, r12.w, l(28), t12.xxxx
                      r12.w = samp0[]..swiz;
                        r17.x = max(6.10351563e-05, r17.x);
                        r12.w = (int)r12.w & 0x0000ffff;
                        if (r7.w != 0) {
                          r18.z = (uint)r12.w;
                          r17.z = 0;
                          r24.w = 0;
                          while (true) {
                            r26.w = cmp((int)r24.w >= 8);
                            if (r26.w != 0) break;
                            r41.x = dot(icb[r24.w+0].xy, r9.xy);
                            r41.y = dot(icb[r24.w+0].yx, r9.xz);
                            r18.xy = r41.xy * r13.zz + r40.xy;
                            r18.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r17.x).x;
                            r17.z = r18.x * 0.125 + r17.z;
                            r24.w = (int)r24.w + 1;
                          }
                        } else {
                          r40.z = (uint)r12.w;
                          r17.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r40.xyz, r17.x).x;
                        }
                        r12.w = r17.z * r17.z;
                        r12.w = r12.w * r17.z;
                      } else {
                        r12.w = 1;
                      }
                      r13.w = r13.w * r12.w;
                    }
                  }
                  r12.w = -r19.w * r1.x + 1;
                  r12.w = r12.w * r12.w;
                  r12.w = -r12.w * 0.620000005 + 0.620000005;
                  r12.w = r12.w + -r19.w;
                  r12.w = r2.z * r12.w + r19.w;
                  r12.w = r12.w * r13.w;
                  r32.x = r31.x;
                  r13.z = cmp(0 < r14.w);
                  r18.xyz = r12.www * r32.xyz + r15.xyz;
                  r12.w = saturate(dot(r3.xyz, r39.xyz));
                  r38.xyz = r38.xyz * r11.www + r7.xyz;
                  r11.w = dot(r38.xyz, r38.xyz);
                  r11.w = rsqrt(r11.w);
                  r38.xyz = r38.xyz * r11.www;
                  r11.w = dot(r38.xyz, r7.xyz);
                  r14.w = dot(r3.xyz, r38.xyz);
                  r17.x = abs(r14.w) * r2.y + -abs(r14.w);
                  r14.w = abs(r14.w) * r17.x + 1;
                  r17.x = r12.w * r1.y + r2.w;
                  r14.w = r14.w * r14.w;
                  r14.w = r14.w * r17.x;
                  r14.w = rcp(r14.w);
                  r12.w = r12.w * r23.w;
                  r12.w = r14.w * r12.w;
                  r12.w = r12.w * r13.w;
                  r38.xyz = r12.www * r32.xyz + r30.xyz;
                  r11.w = saturate(1 + -r11.w);
                  r11.w = log2(r11.w);
                  r11.w = 3.4000001 * r11.w;
                  r11.w = exp2(r11.w);
                  r11.w = r12.w * r11.w;
                  r39.xyz = r11.www * r32.xyz + r29.xyz;
                  r15.xyz = r13.zzz ? r18.xyz : r15.xyz;
                  r29.xyz = r13.zzz ? r39.xyz : r29.xyz;
                  r30.xyz = r13.zzz ? r38.xyz : r30.xyz;
                }
              }
            }
            break;
            case 2 :            r18.xy = r34.zw;
            r18.z = r35.w;
            r18.xyz = -v7.xyz + r18.xyz;
            r11.w = dot(r18.xyz, r18.xyz);
            r11.w = rsqrt(r11.w);
            r38.xyz = r18.xyz * r11.www;
            r12.w = dot(r3.xyz, r38.xyz);
            r13.z = saturate(r12.w);
            r13.w = cmp(0 < r13.z);
            if (r13.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r9.w, l(112), t12.yzwx
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r9.w, l(128), t12.zxyw
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
              r40.xyz = r38.xyz;
              r40.w = r39.y;
              r13.w = dot(r40.xyzw, r16.xyzw);
              r14.w = cmp(r13.w < 1);
              if (r14.w != 0) {
                r41.xyz = float3(1,1,1);
                r14.w = 0;
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r9.w, l(172), t12.yzwx
              r42.x = samp0[]..swiz;
              r42.y = samp0[]..swiz;
              r42.z = samp0[]..swiz;
              r42.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r9.w, l(188), t12.wxyz
              r43.x = samp0[]..swiz;
              r43.y = samp0[]..swiz;
              r43.z = samp0[]..swiz;
              r43.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r9.w, l(204), t12.xyzw
              r44.x = samp0[]..swiz;
              r44.y = samp0[]..swiz;
              r44.z = samp0[]..swiz;
              r44.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.x, r9.w, l(236), t12.xxxx
              r17.x = samp0[]..swiz;
                r45.xyz = -v7.xyz + r31.yzw;
                r19.w = r34.x * r34.x;
                r23.w = dot(r45.xyz, r45.xyz);
                r19.w = r19.w / r23.w;
                r19.w = min(1, r19.w);
                r33.xy = saturate(r13.ww * r33.xz + r33.yw);
                r33.zw = r33.xy * r33.xy;
                r33.xy = r33.xy * float2(-2,-2) + float2(3,3);
                r33.xy = r33.zw * r33.xy;
                r19.w = r33.x * r19.w;
                r19.w = r19.w * r33.y;
                r35.w = r36.x;
                r33.x = dot(r35.xyzw, r16.xyzw);
                r45.xyz = r36.yzw;
                r45.w = r37.w;
                r33.y = dot(r45.xyzw, r16.xyzw);
                r19.xy = r33.xy / r13.ww;
                r13.w = cmp(r42.w < 0.00048828125);
                if (r13.w != 0) {
                  r43.y = r44.x;
                  r33.xy = saturate(abs(r19.xy) * r43.zw + r43.xy);
                  r33.zw = r33.xy * r33.xy;
                  r33.xy = r33.xy * float2(-2,-2) + float2(3,3);
                  r33.xy = r33.zw * r33.xy;
                  r13.w = r33.x * r33.y;
                } else {
                  r42.w = r43.y;
                  r33.xyzw = saturate(r42.xyzw * abs(r19.yyxx));
                  r33.xyzw = log2(r33.xyzw);
                  r33.xyzw = r43.xxxx * r33.xyzw;
                  r33.xyzw = exp2(r33.xyzw);
                  r33.xy = r33.xy + r33.zw;
                  r33.xy = log2(r33.xy);
                  r33.xy = r44.xx * r33.xy;
                  r33.xy = exp2(r33.xy);
                  r23.w = r43.z * r33.x;
                  r24.w = r43.w * r33.y + -1;
                  r23.w = r43.w * r33.y + -r23.w;
                  r23.w = saturate(r24.w / r23.w);
                  r24.w = r23.w * r23.w;
                  r23.w = r23.w * -2 + 3;
                  r13.w = r24.w * r23.w;
                }
                r14.w = r19.w * r13.w;
                r13.w = (int)r17.x & 255;
                if (r13.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyz, r9.w, l(220), t12.xyzx
                r33.x = samp0[]..swiz;
                r33.y = samp0[]..swiz;
                r33.z = samp0[]..swiz;
                  r17.x = dot(r44.yzw, r19.xyz);
                  r19.x = dot(r33.xyz, r19.xyz);
                  r33.x = frac(r17.x);
                  r33.y = frac(r19.x);
                  r13.w = (int)r13.w + -1;
                  r33.z = (uint)r13.w;
                  r41.xyz = gCookieArray.SampleLevel(samplerLinear_s, r33.xyz, 0).xyz;
                } else {
                  r41.xyz = float3(1,1,1);
                }
              }
              r31.yz = r32.yz;
              r19.xyw = r31.xyz * r41.xyz;
              r13.w = cmp(0 < r14.w);
              if (r13.w != 0) {
                if (3 == 0) r13.w = 0; else if (3+27 < 32) {                 r13.w = (uint)r32.w << (32-(3 + 27)); r13.w = (uint)r13.w >> (32-3);                } else r13.w = (uint)r32.w >> 27;
                r13.w = cmp((int)r13.w != 1);
                if (r13.w != 0) {
                  r13.w = abs(r12.w) * -0.200000003 + 0.400000006;
                  r20.xyz = r3.xyz * r13.www + v7.xyz;
                  r38.xyz = r37.xyz;
                  r13.w = dot(r38.xyzw, r20.xyzw);
                  r17.x = dot(r40.xyzw, r20.xyzw);
                  r23.w = cmp(r17.x >= r13.w);
                  if (r23.w != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.y, r9.w, l(144), t12.xxxx
                  r39.y = samp0[]..swiz;
                    r35.w = r36.x;
                    r31.x = dot(r35.xyzw, r20.xyzw);
                    r37.xyz = r36.yzw;
                    r31.y = dot(r37.xyzw, r20.xyzw);
                    r20.xy = r31.xy / r17.xx;
                    r20.xy = saturate(r20.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                    r20.xy = r20.xy * r39.zw + r39.xy;
                    r9.w = r13.w / r17.x;
                    r9.w = max(6.10351563e-05, r9.w);
                    r13.w = (int)r32.w & 0x0000ffff;
                    if (r7.w != 0) {
                      r31.z = (uint)r13.w;
                      r17.x = 0;
                      r23.w = 0;
                      while (true) {
                        r24.w = cmp((int)r23.w >= 8);
                        if (r24.w != 0) break;
                        r33.x = dot(icb[r23.w+0].xy, r23.xy);
                        r33.y = dot(icb[r23.w+0].yx, r23.xz);
                        r31.xy = r33.xy * r34.yy + r20.xy;
                        r24.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r31.xyz, r9.w).x;
                        r17.x = r24.w * 0.125 + r17.x;
                        r23.w = (int)r23.w + 1;
                      }
                    } else {
                      r20.z = (uint)r13.w;
                      r17.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r9.w).x;
                    }
                    r9.w = r17.x * r17.x;
                    r9.w = r9.w * r17.x;
                  } else {
                    r9.w = 1;
                  }
                } else {
                  r9.w = 1;
                }
                r9.w = r14.w * r9.w;
                r13.w = cmp(0 < r9.w);
                if (r13.w != 0) {
                  r13.w = r32.x * r2.y;
                  r13.w = r13.w * r13.z;
                  if (4 == 0) r14.w = 0; else if (4+16 < 32) {                   r14.w = (uint)r32.w << (32-(4 + 16)); r14.w = (uint)r14.w >> (32-4);                  } else r14.w = (uint)r32.w >> 16;
                  r20.x = cmp(0 < (uint)r14.w);
                  r20.x = r1.w ? r20.x : 0;
                  if (r20.x != 0) {
                    r14.w = (int)r14.w + numLights;
                    r14.w = (int)r14.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.x, r14.w, l(52), t12.xxxx
                  r20.x = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r14.w, l(68), t12.xyzw
                  r31.x = samp0[]..swiz;
                  r31.y = samp0[]..swiz;
                  r31.z = samp0[]..swiz;
                  r31.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r14.w, l(84), t12.xyzw
                  r33.x = samp0[]..swiz;
                  r33.y = samp0[]..swiz;
                  r33.z = samp0[]..swiz;
                  r33.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r14.w, l(100), t12.xyzw
                  r34.x = samp0[]..swiz;
                  r34.y = samp0[]..swiz;
                  r34.z = samp0[]..swiz;
                  r34.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r14.w, l(116), t12.xyzw
                  r35.x = samp0[]..swiz;
                  r35.y = samp0[]..swiz;
                  r35.z = samp0[]..swiz;
                  r35.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r14.w, l(132), t12.xyzw
                  r36.x = samp0[]..swiz;
                  r36.y = samp0[]..swiz;
                  r36.z = samp0[]..swiz;
                  r36.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r14.w, l(148), t12.xyzw
                  r37.x = samp0[]..swiz;
                  r37.y = samp0[]..swiz;
                  r37.z = samp0[]..swiz;
                  r37.w = samp0[]..swiz;
                    r20.y = abs(r12.w) * -0.200000003 + 0.400000006;
                    r21.xyz = r3.xyz * r20.yyy + v7.xyz;
                    r31.x = dot(r31.xyzw, r21.xyzw);
                    r31.y = dot(r33.xyzw, r21.xyzw);
                    r20.y = dot(r34.xyzw, r21.xyzw);
                    r20.z = dot(r35.xyzw, r21.xyzw);
                    r21.x = cmp(r20.z < r20.y);
                    r21.yz = r31.xy / r20.zz;
                    r21.yz = r21.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                    r21.yz = r21.yz + r37.zw;
                    r21.yz = r21.yz * r37.xy;
                    r31.xy = r20.xx / r36.xz;
                    r31.zw = float2(1,1) + -r31.xy;
                    r31.zw = cmp(r21.yz >= r31.zw);
                    r31.xy = cmp(r31.xy >= r21.yz);
                    r31.xy = (int2)r31.xy | (int2)r31.zw;
                    r23.w = (int)r31.y | (int)r31.x;
                    r21.x = (int)r21.x | (int)r23.w;
                    if (r21.x == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r21.x, r14.w, l(28), t12.xxxx
                    r21.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xy, r14.w, l(164), t12.xyxx
                    r31.x = samp0[]..swiz;
                    r31.y = samp0[]..swiz;
                      r21.yz = saturate(r21.yz);
                      r32.xy = r21.yz * r36.xz + r36.yw;
                      r14.w = r31.y * r20.z;
                      r20.y = r31.x * r20.z + r20.y;
                      r14.w = r20.y / r14.w;
                      r14.w = max(6.10351563e-05, r14.w);
                      r20.y = r21.x ? 0.000000 : 0;
                      if (r7.w != 0) {
                        r21.z = (uint)r20.y;
                        r20.z = 0;
                        r23.w = 0;
                        while (true) {
                          r24.w = cmp((int)r23.w >= 8);
                          if (r24.w != 0) break;
                          r31.x = dot(icb[r23.w+0].xy, r24.xy);
                          r31.y = dot(icb[r23.w+0].yx, r24.xz);
                          r21.xy = r31.xy * r20.xx + r32.xy;
                          r21.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r14.w).x;
                          r20.z = r21.x * 0.125 + r20.z;
                          r23.w = (int)r23.w + 1;
                        }
                      } else {
                        r32.z = (uint)r20.y;
                        r20.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r32.xyz, r14.w).x;
                      }
                      r14.w = r20.z * r20.z;
                      r14.w = r14.w * r20.z;
                    } else {
                      r14.w = 1;
                    }
                    r9.w = r14.w * r9.w;
                  } else {
                    if (4 == 0) r14.w = 0; else if (4+20 < 32) {                     r14.w = (uint)r32.w << (32-(4 + 20)); r14.w = (uint)r14.w >> (32-4);                    } else r14.w = (uint)r32.w >> 20;
                    r20.x = cmp(0 < (uint)r14.w);
                    r20.x = r20.x ? r1.z : 0;
                    if (r20.x != 0) {
                      r14.w = (int)r14.w + numLights;
                      r14.w = (int)r14.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.x, r14.w, l(52), t12.xxxx
                    r20.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r14.w, l(68), t12.xyzw
                    r31.x = samp0[]..swiz;
                    r31.y = samp0[]..swiz;
                    r31.z = samp0[]..swiz;
                    r31.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r14.w, l(84), t12.xyzw
                    r32.x = samp0[]..swiz;
                    r32.y = samp0[]..swiz;
                    r32.z = samp0[]..swiz;
                    r32.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r14.w, l(100), t12.xyzw
                    r33.x = samp0[]..swiz;
                    r33.y = samp0[]..swiz;
                    r33.z = samp0[]..swiz;
                    r33.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r14.w, l(116), t12.xyzw
                    r34.x = samp0[]..swiz;
                    r34.y = samp0[]..swiz;
                    r34.z = samp0[]..swiz;
                    r34.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r14.w, l(132), t12.xyzw
                    r35.x = samp0[]..swiz;
                    r35.y = samp0[]..swiz;
                    r35.z = samp0[]..swiz;
                    r35.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r14.w, l(148), t12.xyzw
                    r36.x = samp0[]..swiz;
                    r36.y = samp0[]..swiz;
                    r36.z = samp0[]..swiz;
                    r36.w = samp0[]..swiz;
                      r20.y = abs(r12.w) * -0.200000003 + 0.400000006;
                      r22.xyz = r3.xyz * r20.yyy + v7.xyz;
                      r21.x = dot(r31.xyzw, r22.xyzw);
                      r21.y = dot(r32.xyzw, r22.xyzw);
                      r20.y = dot(r33.xyzw, r22.xyzw);
                      r21.z = dot(r34.xyzw, r22.xyzw);
                      r22.x = cmp(r21.z < r20.y);
                      r21.xy = r21.xy / r21.zz;
                      r21.xy = r21.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r21.xy = r21.xy + r36.zw;
                      r21.xy = r21.xy * r36.xy;
                      r22.yz = r20.xx / r35.xz;
                      r31.xy = float2(1,1) + -r22.yz;
                      r31.xy = cmp(r21.xy >= r31.xy);
                      r22.yz = cmp(r22.yz >= r21.xy);
                      r22.yz = (int2)r22.yz | (int2)r31.xy;
                      r22.y = (int)r22.z | (int)r22.y;
                      r22.x = (int)r22.x | (int)r22.y;
                      if (r22.x == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.x, r14.w, l(28), t12.xxxx
                      r22.x = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.yz, r14.w, l(164), t12.xxyx
                      r22.y = samp0[]..swiz;
                      r22.z = samp0[]..swiz;
                        r21.xy = saturate(r21.xy);
                        r31.xy = r21.xy * r35.xz + r35.yw;
                        r14.w = r22.z * r21.z;
                        r20.y = r22.y * r21.z + r20.y;
                        r14.w = r20.y / r14.w;
                        r14.w = max(6.10351563e-05, r14.w);
                        r20.y = r22.x ? 0.000000 : 0;
                        if (r7.w != 0) {
                          r21.z = (uint)r20.y;
                          r22.xy = float2(0,0);
                          while (true) {
                            r22.z = cmp((int)r22.y >= 8);
                            if (r22.z != 0) break;
                            r32.x = dot(icb[r22.y+0].xy, r25.xy);
                            r32.y = dot(icb[r22.y+0].yx, r25.xz);
                            r21.xy = r32.xy * r20.xx + r31.xy;
                            r21.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r14.w).x;
                            r22.x = r21.x * 0.125 + r22.x;
                            r22.y = (int)r22.y + 1;
                          }
                        } else {
                          r31.z = (uint)r20.y;
                          r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r31.xyz, r14.w).x;
                        }
                        r14.w = r22.x * r22.x;
                        r14.w = r14.w * r22.x;
                      } else {
                        r14.w = 1;
                      }
                      r9.w = r14.w * r9.w;
                    }
                  }
                  r14.w = -r13.z * r1.x + 1;
                  r14.w = r14.w * r14.w;
                  r14.w = -r14.w * 0.620000005 + 0.620000005;
                  r14.w = r14.w + -r13.z;
                  r14.w = r2.z * r14.w + r13.z;
                  r14.w = r14.w * r9.w;
                  r12.w = cmp(0 < r12.w);
                  r21.xyz = r14.www * r19.xyw + r15.xyz;
                  r18.xyz = r18.xyz * r11.www + r7.xyz;
                  r11.w = dot(r18.xyz, r18.xyz);
                  r11.w = rsqrt(r11.w);
                  r18.xyz = r18.xyz * r11.www;
                  r11.w = dot(r18.xyz, r7.xyz);
                  r14.w = dot(r3.xyz, r18.xyz);
                  r18.x = abs(r14.w) * r2.y + -abs(r14.w);
                  r14.w = abs(r14.w) * r18.x + 1;
                  r13.z = r13.z * r1.y + r2.w;
                  r14.w = r14.w * r14.w;
                  r13.z = r14.w * r13.z;
                  r13.z = rcp(r13.z);
                  r13.z = r13.z * r13.w;
                  r9.w = r13.z * r9.w;
                  r9.w = 0.25 * r9.w;
                  r18.xyz = r9.www * r19.xyw + r30.xyz;
                  r11.w = saturate(1 + -r11.w);
                  r11.w = log2(r11.w);
                  r11.w = 3.4000001 * r11.w;
                  r11.w = exp2(r11.w);
                  r9.w = r11.w * r9.w;
                  r19.xyw = r9.www * r19.xyw + r29.xyz;
                  r15.xyz = r12.www ? r21.xyz : r15.xyz;
                  r29.xyz = r12.www ? r19.xyw : r29.xyz;
                  r30.xyz = r12.www ? r18.xyz : r30.xyz;
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
    r26.xyz = r15.xyz;
    r27.xyz = r29.xyz;
    r28.xyz = r30.xyz;
    r4.w = (int)r4.w + 32;
  }
  r1.x = log2(r8.w);
  r1.x = 3.4000001 * r1.x;
  r1.x = exp2(r1.x);
  r1.y = 1 + -r0.w;
  r1.w = r1.x * r1.y + r0.w;
  r0.xyz = r1.www * r0.xyz;
  r2.xyz = float3(1,1,1) + -r4.xyz;
  r2.xyz = r27.xyz * r2.xyz;
  r2.xyz = r28.xyz * r4.xyz + r2.xyz;
  r0.xyz = r26.xyz * r0.xyz + r2.xyz;
  r0.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.w != 0) {
    r0.w = dot(v7.xyz, v7.xyz);
    r2.x = rsqrt(r0.w);
    r2.xyz = v7.xyz * r2.xxx;
    r0.w = sqrt(r0.w);
    r2.w = cmp(0 < fogConstants.blendAmount);
    if (r2.w != 0) {
      r3.xy = r0.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r3.xy = fogConstants.atmospherefogdensityatcamera.xy * r3.xy;
      r2.w = cmp(0.00999999978 < abs(v7.z));
      r3.zw = fogConstants.atmospherefogheightdensityscale.xy * v7.zz;
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
      r3.w = cmp(0.00999999978 < abs(v7.z));
      r4.x = fogConstants.atmospherefogheightdensityscale.x * v7.z;
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
    r2.xyz = r2.xyz * r1.www;
    r2.xyz = r0.xyz * r3.xyz + r2.xyz;
  } else {
    r0.w = fogConstants.heightFalloff * v7.z;
    r2.w = fogConstants.heightFalloff * v7.z + fogConstants.K0;
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
    r2.w = dot(v7.xyz, v7.xyz);
    r3.x = sqrt(r2.w);
    r0.w = r0.w * r3.x + fogConstants.expAdd;
    r0.w = exp2(r0.w);
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r2.w = rsqrt(r2.w);
    r3.xyz = v7.xyz * r2.www;
    r2.w = dot(fogConstants.wldSunFogDir.xyz, r3.xyz);
    r2.w = saturate(fogConstants.sunFogAngles.y * r2.w + fogConstants.sunFogAngles.x);
    r3.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r3.xyzw = r2.wwww * r3.xyzw + fogConstants.sunFogColor.xyzw;
    r0.w = r3.w * r0.w;
    r3.xyz = r3.xyz * r1.www + -r0.xyz;
    r2.xyz = r0.www * r3.xyz + r0.xyz;
  }
  r0.xyz = relHDRExposure.yyy * r2.xyz;
  r2.xyz = cmp(r0.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r0.xyz = r2.xyz ? r0.xyz : 0;
  r0.xyz = min(float3(65024,65024,64512), r0.xyz);
  r1.xyz = max(float3(0,0,0), r0.xyz);
  r2.xyzw = cmp(r1.xyzw == float4(0,0,0,0));
  r2.xy = r2.zw ? r2.xy : 0;
  r2.x = r2.y ? r2.x : 0;
  if (r2.x == 0) {
    r2.xy = (uint2)v0.xy;
    // Needs manual fix for instruction:
    imm_atomic_iadd r2.z, u6, r2.xyxx, l(1)
    InterlockedAdd(dest, imm_value, orig_value);
    r2.w = cmp((uint)r2.z < oitMaxEntries);
    if (r2.w != 0) {
      r2.w = max(r1.y, r1.z);
      r2.w = max(r2.w, r1.x);
      r2.w = (int)r2.w & 0x7f800000;
      r2.w = (int)r2.w + 0x00800000;
      r1.xyz = r2.www + r1.xyz;
      if (8 == 0) r1.x = 0; else if (8+15 < 32) {       r1.x = (uint)r1.x << (32-(8 + 15)); r1.x = (uint)r1.x >> (32-8);      } else r1.x = (uint)r1.x >> 15;
      r1.yz = (uint2)r1.yz >> int2(15,15);
      bitmask.y = ((~(-1 << 8)) << 8) & 0xffffffff;  r1.y = (((uint)r1.y << 8) & bitmask.y) | ((uint)0 & ~bitmask.y);
      bitmask.z = ((~(-1 << 8)) << 16) & 0xffffffff;  r1.z = (((uint)r1.z << 16) & bitmask.z) | ((uint)0 & ~bitmask.z);
      r1.x = (int)r1.y + (int)r1.x;
      r1.x = (int)r1.z + (int)r1.x;
      r1.y = (uint)r2.w << 1;
      r3.xzw = (int3)r1.yyy + (int3)r1.xxx;
      r1.x = min(1, r1.w);
      r1.x = 2046 * r1.x;
      r1.x = (uint)r1.x;
      r1.y = (uint)v0.z << 2;
      r1.x = (int)r1.x & 2046;
      bitmask.x = ((~(-1 << 11)) << 0) & 0xffffffff;  r1.x = (((uint)r1.x << 0) & bitmask.x) | ((uint)r1.y & ~bitmask.x);
      bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r3.y = (((uint)zFeatherComputeSprites << 0) & bitmask.y) | ((uint)r1.x & ~bitmask.y);
    // No code for instruction (needs manual fix):
        store_uav_typed u7.xyzw, r2.xyzz, r3.xyzw
      r1.x = -1;
    } else {
      r1.x = 0;
    }
  } else {
    r1.x = -1;
  }
  r0.w = r1.w;
  o0.xyzw = r1.xxxx ? float4(0,0,0,0) : r0.xyzw;
  return;
}