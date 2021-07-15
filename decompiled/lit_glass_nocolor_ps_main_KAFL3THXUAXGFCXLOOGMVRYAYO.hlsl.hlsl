// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:36:13 2021

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
  uint zFeatherComputeSprites : packoffset(c10.w);
  float tintAmount : packoffset(c11);
  float3 colorTint : packoffset(c11.y);
  float2 glossScale : packoffset(c12);
  float2 normalScale : packoffset(c12.z);
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
SamplerState specColorSampler_s : register(s1);
SamplerState samplerLinear_s : register(s2);
SamplerState normalSampler_s : register(s3);
SamplerState samplerLinearClamp_s : register(s4);
SamplerComparisonState ShadowSamplerComparisonState_s : register(s13);
Texture2D<float4> normalMap : register(t0);
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
Texture2D<float4> glossMap : register(t21);
StructuredBuffer<gSunShadowTree> gSunShadowTree : register(t23);
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

  r0.xyzw = glossScale.xyzw * w1.xyyz;
  r0.x = glossMap.Sample(specColorSampler_s, r0.xy).x;
  r0.y = glossRange.y + -glossRange.x;
  r0.x = r0.x * r0.y + glossRange.x;
  r0.x = saturate(0.0588235296 * r0.x);
  r0.yzw = normalMap.Sample(normalSampler_s, r0.zw).xyz;
  r0.yzw = float3(-0.5,-0.5,-0) + r0.yzw;
  r0.yzw = baseNormalHeight * r0.yzw + float3(0.5,0.5,0);
  r0.yz = r0.yz * float2(1.9921875,1.9921875) + float2(-1,-1);
  r1.x = dot(r0.yz, r0.yz);
  r1.x = 1 + -r1.x;
  r1.x = max(0, r1.x);
  r1.x = sqrt(r1.x);
  r0.w = r0.w * r0.w;
  r0.w = 0.333333343 * r0.w;
  r0.w = min(1, r0.w);
  r1.y = v7.x ? 1 : -1;
  r1.z = dot(v3.xyz, v3.xyz);
  r1.z = rsqrt(r1.z);
  r2.xyz = v3.xyz * r1.zzz;
  r2.xyz = r2.xyz * r1.yyy;
  r1.z = dot(v4.xyz, v4.xyz);
  r1.z = rsqrt(r1.z);
  r3.xyz = v4.xyz * r1.zzz;
  r3.xyz = r3.xyz * r1.yyy;
  r1.z = dot(v5.xyz, v5.xyz);
  r1.z = rsqrt(r1.z);
  r4.xyz = v5.xyz * r1.zzz;
  r4.xyz = r4.xyz * r1.yyy;
  r0.x = -17 * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.w + r0.x;
  r0.x = log2(r0.x);
  r0.x = -0.0588235296 * r0.x;
  r0.x = max(0, r0.x);
  r4.xyz = r4.xyz * r0.zzz;
  r0.yzw = r3.xyz * r0.yyy + r4.xyz;
  r0.yzw = r2.xyz * r1.xxx + r0.yzw;
  r1.x = dot(r0.yzw, r0.yzw);
  r1.x = rsqrt(r1.x);
  r0.yzw = r1.xxx * r0.yzw;
  r1.x = tintAmount * 0.920000017 + 0.0799999982;
  r1.z = cmp(v0.z >= 0.984375);
  r1.w = 1.01587307 * v0.z;
  r2.x = v0.z * 64 + -63;
  r1.z = r1.z ? r2.x : r1.w;
  r1.z = max(9.99999994e-09, r1.z);
  r1.z = rcp(r1.z);
  r2.xy = (uint2)v0.xy;
  r3.xyz = ddx_coarse(v6.xyz);
  r4.xyz = ddy_coarse(v6.xyz);
  r1.w = numRefProbes + numLights;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r2.z, v2.x, l(8), t4.xxxx
r2.z = samp0[]..swiz;
  r2.zw = (int2)r2.zz & int2(268435456,536870912);
  if (r2.z != 0) {
    r5.xyz = eyeOffset.xyz + v6.xyz;
    r2.z = 0.0078125 * r1.z;
    r2.z = min(15, r2.z);
    r2.z = (uint)r2.z;
    r6.xy = (uint2)r2.xy >> int2(6,6);
    r6.z = (uint)r2.z << 4;
    r2.z = numStaticDecals & -32;
    r3.w = (int)-r2.z + numStaticDecals;
    r7.xy = float2(0,0);
    r8.w = 0;
    r5.w = 1;
    r9.xyzw = float4(0,0,0,0);
    r10.xyz = float3(0,0,0);
    r11.yz = float2(0,0);
    r12.xy = float2(0,0);
    r4.w = 0;
    while (true) {
      r6.w = cmp((uint)r4.w >= numStaticDecals);
      if (r6.w != 0) break;
      r7.z = (uint)r4.w >> 5;
      r8.xyz = (int3)r6.xyz + (int3)r7.xyz;
      r6.w = visibleDecals.Load(r8.xyzw).x;
      r7.z = cmp((int)r2.z == (int)r4.w);
      if (r3.w == 0) r7.w = 0; else if (r3.w+0 < 32) {       r7.w = (uint)r6.w << (32-(r3.w + 0)); r7.w = (uint)r7.w >> (32-r3.w);      } else r7.w = (uint)r6.w >> 0;
      r6.w = r7.z ? r7.w : r6.w;
      r7.z = (int)r1.w + (int)r4.w;
      r13.xyzw = r9.xzwy;
      r8.xyz = r10.xyz;
      r14.yz = r11.yz;
      r15.xy = r12.xy;
      r7.w = r6.w;
      while (true) {
        if (r7.w == 0) break;
        r10.w = firstbitlow((uint)r7.w);
        r11.w = 1 << (int)r10.w;
        r12.w = (int)r7.w & (int)r11.w;
        if (r12.w != 0) {
          r7.w = (int)r7.w ^ (int)r11.w;
          r11.w = (int)r7.z + (int)r10.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r16.xyzw, r11.w, l(0), t11.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r17.xy, r11.w, l(16), t11.xyxx
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
          r16.xyz = -v6.xyz + r16.xyz;
          r17.z = r16.w;
          r16.xyz = cmp(abs(r16.xyz) < r17.zxy);
          r11.w = r16.y ? r16.x : 0;
          r11.w = r16.z ? r11.w : 0;
          if (r11.w != 0) {
            r10.w = (int)r4.w + (int)r10.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r16.xyz, r10.w, l(0), t36.xyzx
          r16.x = samp0[]..swiz;
          r16.y = samp0[]..swiz;
          r16.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r17.xyz, r10.w, l(16), t36.xyzx
          r17.x = samp0[]..swiz;
          r17.y = samp0[]..swiz;
          r17.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r18.xyz, r10.w, l(32), t36.xyzx
          r18.x = samp0[]..swiz;
          r18.y = samp0[]..swiz;
          r18.z = samp0[]..swiz;
            r19.x = r16.x;
            r19.y = r17.x;
            r19.z = r18.x;
            r11.w = dot(r19.xyz, r19.xyz);
            r11.w = rsqrt(r11.w);
            r20.xyz = r19.xyz * r11.www;
            r11.w = dot(r20.xyz, v3.xyz);
            r11.w = cmp(r11.w >= 0.5);
            if (r11.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r21.xyw, r10.w, l(48), t36.xyxz
            r21.x = samp0[]..swiz;
            r21.y = samp0[]..swiz;
            r21.w = samp0[]..swiz;
              r19.w = r21.x;
              r19.x = dot(r5.xyzw, r19.xyzw);
              r22.x = r16.y;
              r22.y = r17.y;
              r22.z = r18.y;
              r22.w = r21.y;
              r19.y = dot(r5.xyzw, r22.xyzw);
              r21.x = r16.z;
              r21.y = r17.z;
              r21.z = r18.z;
              r19.z = dot(r5.xyzw, r21.xyzw);
              r16.xyz = cmp(abs(r19.xyz) < float3(1,1,1));
              r11.w = r16.y ? r16.x : 0;
              r11.w = r16.z ? r11.w : 0;
              if (r11.w != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r16.xyzw, r10.w, l(64), t36.xyzw
              r16.x = samp0[]..swiz;
              r16.y = samp0[]..swiz;
              r16.z = samp0[]..swiz;
              r16.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r17.xyzw, r10.w, l(80), t36.xyzw
              r17.x = samp0[]..swiz;
              r17.y = samp0[]..swiz;
              r17.z = samp0[]..swiz;
              r17.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r18.xyzw, r10.w, l(96), t36.xyzw
              r18.x = samp0[]..swiz;
              r18.y = samp0[]..swiz;
              r18.z = samp0[]..swiz;
              r18.w = samp0[]..swiz;
                r23.x = dot(r3.xyz, r22.xyz);
                r23.y = dot(r3.xyz, r21.xyz);
                r24.x = dot(r4.xyz, r22.xyz);
                r24.y = dot(r4.xyz, r21.xyz);
                r19.xy = r19.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                r23.xyz = float3(0.5,-0.5,0.5) * r23.xyx;
                r24.xyz = float3(0.5,-0.5,0.5) * r24.xyx;
                r19.zw = (int2)r17.yz & int2(65535,65535);
                if (r19.z != 0) {
                  if (4 == 0) r11.w = 0; else if (4+24 < 32) {                   r11.w = (uint)r17.w << (32-(4 + 24)); r11.w = (uint)r11.w >> (32-4);                  } else r11.w = (uint)r17.w >> 24;
                  r11.w = 1 << (int)r11.w;
                  r12.w = (uint)r17.w >> 28;
                  r12.w = 1 << (int)r12.w;
                  r14.w = cmp((int)r19.z == 4);
                  if (r14.w != 0) {
                    r14.w = (int)r17.w & 4095;
                    if (12 == 0) r15.w = 0; else if (12+12 < 32) {                     r15.w = (uint)r17.w << (32-(12 + 12)); r15.w = (uint)r15.w >> (32-12);                    } else r15.w = (uint)r17.w >> 12;
                    r20.w = (int)r18.w & 1023;
                    r25.xz = (uint2)r11.ww;
                    r25.y = (uint)r12.w;
                    r26.xy = r19.xy * r25.zy + float2(0.5,0.5);
                    r26.zw = float2(-0.5,-0.5) + r25.zy;
                    r26.xy = min(r26.xy, r26.zw);
                    r27.x = (uint)r14.w;
                    r27.y = (uint)r15.w;
                    r26.xy = r27.xy + r26.xy;
                    r26.xy = invBcTexSizes.xy * r26.xy;
                    r26.z = (uint)r20.w;
                    r27.xyz = invBcTexSizes.xyx * r23.zyz;
                    r27.xyz = r27.xyz * r25.xyz;
                    r28.xyz = invBcTexSizes.xyx * r24.zyz;
                    r25.xyz = r28.xyz * r25.xyz;
                    r25.xyzw = materialTexBC7.SampleGrad(samplerLinearClamp_s, r26.xyz, r27.xyzx, r25.xyzx).xyzw;
                  } else {
                    r14.w = cmp((int)r19.z == 1);
                    if (r14.w != 0) {
                      r14.w = (int)r17.w & 4095;
                      if (12 == 0) r15.w = 0; else if (12+12 < 32) {                       r15.w = (uint)r17.w << (32-(12 + 12)); r15.w = (uint)r15.w >> (32-12);                      } else r15.w = (uint)r17.w >> 12;
                      r17.w = (int)r18.w & 1023;
                      r26.xz = (uint2)r11.ww;
                      r26.y = (uint)r12.w;
                      r27.xy = r19.xy * r26.zy + float2(0.5,0.5);
                      r27.zw = float2(-0.5,-0.5) + r26.zy;
                      r27.xy = min(r27.xy, r27.zw);
                      r28.x = (uint)r14.w;
                      r28.y = (uint)r15.w;
                      r27.xy = r28.xy + r27.xy;
                      r27.xy = invBcTexSizes.zw * r27.xy;
                      r27.z = (uint)r17.w;
                      r28.xyz = invBcTexSizes.zwz * r23.zyz;
                      r28.xyz = r28.xyz * r26.xyz;
                      r29.xyz = invBcTexSizes.zwz * r24.zyz;
                      r26.xyz = r29.xyz * r26.xyz;
                      r25.xyzw = materialTexBC3.SampleGrad(samplerLinearClamp_s, r27.xyz, r28.xyzx, r26.xyzx).xyzw;
                    } else {
                      r25.xyzw = float4(1,1,1,1);
                    }
                  }
                  r16.xyz = r25.xyz * r16.xyz;
                  r11.w = r25.w * r16.w;
                } else {
                  r16.xyz = float3(0,0,0);
                  r11.w = 0;
                }
                r12.w = cmp(r17.x != 1.000000);
                r14.w = r11.w + r16.w;
                r14.w = saturate(r14.w * r17.x + -r17.x);
                r11.w = r12.w ? r14.w : r11.w;
                if (r19.w != 0) {
                  if (4 == 0) r12.w = 0; else if (4+24 < 32) {                   r12.w = (uint)r18.y << (32-(4 + 24)); r12.w = (uint)r12.w >> (32-4);                  } else r12.w = (uint)r18.y >> 24;
                  r12.w = 1 << (int)r12.w;
                  r14.w = (uint)r18.y >> 28;
                  r14.w = 1 << (int)r14.w;
                  r15.w = cmp((int)r19.w == 2);
                  if (r15.w != 0) {
                    r15.w = (int)r18.y & 4095;
                    if (12 == 0) r17.x = 0; else if (12+12 < 32) {                     r17.x = (uint)r18.y << (32-(12 + 12)); r17.x = (uint)r17.x >> (32-12);                    } else r17.x = (uint)r18.y >> 12;
                    if (10 == 0) r17.w = 0; else if (10+20 < 32) {                     r17.w = (uint)r18.w << (32-(10 + 20)); r17.w = (uint)r17.w >> (32-10);                    } else r17.w = (uint)r18.w >> 20;
                    r25.xz = (uint2)r12.ww;
                    r25.y = (uint)r14.w;
                    r26.xy = r19.xy * r25.zy + float2(0.5,0.5);
                    r26.zw = float2(-0.5,-0.5) + r25.zy;
                    r26.xy = min(r26.xy, r26.zw);
                    r27.x = (uint)r15.w;
                    r27.y = (uint)r17.x;
                    r26.xy = r27.xy + r26.xy;
                    r26.xy = invMaskTexSizes.xy * r26.xy;
                    r26.z = (uint)r17.w;
                    r27.xyz = invMaskTexSizes.xyx * r23.zyz;
                    r27.xyz = r27.xyz * r25.xyz;
                    r28.xyz = invMaskTexSizes.xyx * r24.zyz;
                    r25.xyz = r28.xyz * r25.xyz;
                    r15.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r26.xyz, r27.x, r25.x).x;
                  } else {
                    r16.w = cmp((int)r19.w == 4);
                    if (r16.w != 0) {
                      r16.w = (int)r18.y & 4095;
                      if (12 == 0) r17.x = 0; else if (12+12 < 32) {                       r17.x = (uint)r18.y << (32-(12 + 12)); r17.x = (uint)r17.x >> (32-12);                      } else r17.x = (uint)r18.y >> 12;
                      if (10 == 0) r17.w = 0; else if (10+20 < 32) {                       r17.w = (uint)r18.w << (32-(10 + 20)); r17.w = (uint)r17.w >> (32-10);                      } else r17.w = (uint)r18.w >> 20;
                      r25.xz = (uint2)r12.ww;
                      r25.y = (uint)r14.w;
                      r19.zw = r19.xy * r25.zy + float2(0.5,0.5);
                      r26.xy = float2(-0.5,-0.5) + r25.zy;
                      r19.zw = min(r26.xy, r19.zw);
                      r26.x = (uint)r16.w;
                      r26.yz = (uint2)r17.xw;
                      r19.zw = r26.xy + r19.zw;
                      r26.xy = invBcTexSizes.xy * r19.zw;
                      r27.xyz = invBcTexSizes.xyx * r23.zyz;
                      r27.xyz = r27.xyz * r25.xyz;
                      r28.xyz = invBcTexSizes.xyx * r24.zyz;
                      r25.xyz = r28.xyz * r25.xyz;
                      r15.w = materialTexBC7.SampleGrad(samplerLinearClamp_s, r26.xyz, r27.x, r25.x).x;
                    } else {
                      r16.w = (int)r18.y & 4095;
                      if (12 == 0) r17.x = 0; else if (12+12 < 32) {                       r17.x = (uint)r18.y << (32-(12 + 12)); r17.x = (uint)r17.x >> (32-12);                      } else r17.x = (uint)r18.y >> 12;
                      if (10 == 0) r17.w = 0; else if (10+20 < 32) {                       r17.w = (uint)r18.w << (32-(10 + 20)); r17.w = (uint)r17.w >> (32-10);                      } else r17.w = (uint)r18.w >> 20;
                      r25.xz = (uint2)r12.ww;
                      r25.y = (uint)r14.w;
                      r19.zw = r19.xy * r25.zy + float2(0.5,0.5);
                      r26.xy = float2(-0.5,-0.5) + r25.zy;
                      r19.zw = min(r26.xy, r19.zw);
                      r26.x = (uint)r16.w;
                      r26.yz = (uint2)r17.xw;
                      r19.zw = r26.xy + r19.zw;
                      r26.xy = invBcTexSizes.zw * r19.zw;
                      r27.xyz = invBcTexSizes.zwz * r23.zyz;
                      r27.xyz = r27.xyz * r25.xyz;
                      r28.xyz = invBcTexSizes.zwz * r24.zyz;
                      r25.xyz = r28.xyz * r25.xyz;
                      r15.w = materialTexBC3.SampleGrad(samplerLinearClamp_s, r26.xyz, r27.x, r25.x).x;
                    }
                  }
                  r25.xyz = r15.www * float3(0.959999979,0.959999979,0.959999979) + float3(0.0399999991,0.0399999991,0.0399999991);
                  r12.w = saturate(1 + -r15.w);
                  r16.xyz = r16.xyz * r12.www;
                } else {
                  r25.xyz = float3(0.0399999991,0.0399999991,0.0399999991);
                }
                r17.xy = (uint2)r17.zy >> int2(16,16);
                if (r17.x != 0) {
                  r12.w = cmp((int)r17.x == 2);
                  if (r12.w != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r10.w, r10.w, l(112), t36.xxxx
                  r10.w = samp0[]..swiz;
                    if (4 == 0) r17.z = 0; else if (4+24 < 32) {                     r17.z = (uint)r18.z << (32-(4 + 24)); r17.z = (uint)r17.z >> (32-4);                    } else r17.z = (uint)r18.z >> 24;
                    if (12 == 0) r17.w = 0; else if (12+12 < 32) {                     r17.w = (uint)r18.z << (32-(12 + 12)); r17.w = (uint)r17.w >> (32-12);                    } else r17.w = (uint)r18.z >> 12;
                    r12.w = 1 << (int)r17.z;
                    r14.w = (uint)r18.z >> 28;
                    r14.w = 1 << (int)r14.w;
                    r15.w = (int)r18.z & 4095;
                    r10.w = (int)r10.w & 1023;
                    r26.xz = (uint2)r12.ww;
                    r26.y = (uint)r14.w;
                    r18.yz = r19.xy * r26.zy + float2(0.5,0.5);
                    r19.zw = float2(-0.5,-0.5) + r26.zy;
                    r18.yz = min(r19.zw, r18.yz);
                    r27.x = (uint)r15.w;
                    r27.y = (uint)r17.w;
                    r17.zw = r27.xy + r18.yz;
                    r27.xy = invMaskTexSizes.xy * r17.zw;
                    r27.z = (uint)r10.w;
                    r28.xyz = invMaskTexSizes.xyx * r23.zyz;
                    r28.xyz = r28.xyz * r26.xyz;
                    r29.xyz = invMaskTexSizes.xyx * r24.zyz;
                    r26.xyz = r29.xyz * r26.xyz;
                    r10.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r27.xyz, r28.x, r26.x).x;
                  } else {
                    r12.w = cmp((int)r17.x == 6);
                    r10.w = r12.w ? 0 : 1;
                  }
                } else {
                  r10.w = 1;
                }
                r10.w = saturate(0.764705896 * r10.w);
                if (r17.y != 0) {
                  r12.w = cmp((int)r17.y == 3);
                  if (r12.w != 0) {
                    if (4 == 0) r17.x = 0; else if (4+24 < 32) {                     r17.x = (uint)r18.x << (32-(4 + 24)); r17.x = (uint)r17.x >> (32-4);                    } else r17.x = (uint)r18.x >> 24;
                    if (12 == 0) r17.y = 0; else if (12+12 < 32) {                     r17.y = (uint)r18.x << (32-(12 + 12)); r17.y = (uint)r17.y >> (32-12);                    } else r17.y = (uint)r18.x >> 12;
                    if (10 == 0) r17.z = 0; else if (10+10 < 32) {                     r17.z = (uint)r18.w << (32-(10 + 10)); r17.z = (uint)r17.z >> (32-10);                    } else r17.z = (uint)r18.w >> 10;
                    r12.w = 1 << (int)r17.x;
                    r14.w = (uint)r18.x >> 28;
                    r14.w = 1 << (int)r14.w;
                    r15.w = (int)r18.x & 4095;
                    r18.xz = (uint2)r12.ww;
                    r18.y = (uint)r14.w;
                    r17.xw = r19.xy * r18.xy + float2(0.5,0.5);
                    r19.xy = float2(-0.5,-0.5) + r18.zy;
                    r17.xw = min(r19.xy, r17.xw);
                    r19.x = (uint)r15.w;
                    r19.yz = (uint2)r17.yz;
                    r17.xy = r19.xy + r17.xw;
                    r19.xy = invMaskTexSizes.zw * r17.xy;
                    r17.xyz = invMaskTexSizes.zwz * r23.xyz;
                    r17.xyz = r17.xyz * r18.xyz;
                    r23.xyz = invMaskTexSizes.zwz * r24.xyz;
                    r18.xyz = r23.xyz * r18.xyz;
                    r17.xyz = materialTexBC7linear.SampleGrad(samplerLinearClamp_s, r19.xyz, r17.xyz, r18.xyz).xyz;
                  } else {
                    r17.xyz = float3(0.5,0.5,1);
                  }
                  r17.xy = r17.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
                  r12.w = dot(r17.xy, r17.xy);
                  r12.w = 1 + -r12.w;
                  r12.w = max(0, r12.w);
                  r12.w = sqrt(r12.w);
                  r14.w = r17.z * r17.z;
                  r14.w = 0.333333343 * r14.w;
                  r14.w = min(1, r14.w);
                  r15.w = dot(r22.xyz, r22.xyz);
                  r15.w = rsqrt(r15.w);
                  r18.xyz = r22.xyz * r15.www;
                  r15.w = dot(-r21.xyz, -r21.xyz);
                  r15.w = rsqrt(r15.w);
                  r19.xyz = -r21.xyz * r15.www;
                  r20.xyz = r20.xyz * r1.yyy;
                  r18.xyz = r18.xyz * r1.yyy;
                  r19.xyz = r19.xyz * r1.yyy;
                  r15.w = -17 * r10.w;
                  r15.w = exp2(r15.w);
                  r14.w = r15.w + r14.w;
                  r14.w = log2(r14.w);
                  r14.w = -0.0588235296 * r14.w;
                  r10.w = max(0, r14.w);
                  r17.yzw = r19.xyz * r17.yyy;
                  r17.xyz = r18.xyz * r17.xxx + r17.yzw;
                  r17.xyz = r20.xyz * r12.www + r17.xyz;
                  r12.w = dot(r17.xyz, r17.xyz);
                  r12.w = rsqrt(r12.w);
                  r17.xyz = r17.xyz * r12.www;
                  r12.w = 1 + -r11.w;
                  r14.x = r13.x;
                  r18.xyz = r14.xyz * r12.www;
                  r14.xyz = r17.xyz * r11.www + r18.xyz;
                  r13.x = r14.x;
                }
                r12.w = 1 + -r11.w;
                r17.xyz = r12.www * r8.xyz;
                r8.xyz = r16.xyz * r11.www + r17.xyz;
                r15.z = r13.y;
                r16.xyz = r15.xyz * r12.www;
                r15.xyz = r25.xyz * r11.www + r16.xyz;
                r14.x = r13.w * r12.w;
                r13.z = r13.z * r12.w + r11.w;
                r13.w = r10.w * r11.w + r14.x;
                r13.y = r15.z;
              }
            }
          }
        }
      }
      r9.xyzw = r13.xwyz;
      r10.xyz = r8.xyz;
      r11.yz = r14.yz;
      r12.xy = r15.xy;
      r4.w = (int)r4.w + 32;
    }
    r11.x = r9.x;
    r12.z = r9.z;
    r9.xy = r9.wy;
  } else {
    r10.xyz = float3(0,0,0);
    r11.xyz = float3(0,0,0);
    r12.xyz = float3(0,0,0);
    r9.xy = float2(0,0);
  }
  if (r2.w != 0) {
    r5.xyz = eyeOffset.xyz + v6.xyz;
    r2.z = numDynamicDecals + numStaticDecals;
    r2.w = 0.0078125 * r1.z;
    r2.w = min(15, r2.w);
    r2.w = (uint)r2.w;
    r6.xy = (uint2)r2.xy >> int2(6,6);
    r6.z = (uint)r2.w << 4;
    r2.w = numStaticDecals & -32;
    r3.w = (int)-r2.w + numStaticDecals;
    r4.w = (int)r2.z & -32;
    r6.w = (int)r2.z + (int)-r4.w;
    r7.xy = float2(0,0);
    r8.w = 0;
    r5.w = 1;
    r13.xyz = r10.xyz;
    r14.xyz = r11.xyz;
    r15.xyz = r12.xyz;
    r16.xy = r9.xy;
    r7.w = r2.w;
    while (true) {
      r9.z = cmp((uint)r7.w >= (uint)r2.z);
      if (r9.z != 0) break;
      r7.z = (uint)r7.w >> 5;
      r8.xyz = (int3)r6.xyz + (int3)r7.xyz;
      r7.z = visibleDecals.Load(r8.xyzw).x;
      r8.x = cmp((int)r2.w == (int)r7.w);
      bitmask.y = ((~(-1 << r3.w)) << 0) & 0xffffffff;  r8.y = (((uint)0 << 0) & bitmask.y) | ((uint)r7.z & ~bitmask.y);
      r7.z = r8.x ? r8.y : r7.z;
      r8.x = cmp((int)r4.w == (int)r7.w);
      if (r6.w == 0) r8.y = 0; else if (r6.w+0 < 32) {       r8.y = (uint)r7.z << (32-(r6.w + 0)); r8.y = (uint)r8.y >> (32-r6.w);      } else r8.y = (uint)r7.z >> 0;
      r7.z = r8.x ? r8.y : r7.z;
      r8.x = (int)r1.w + (int)r7.w;
      r17.xyz = r13.xyz;
      r18.xyz = r14.xyz;
      r19.xyz = r15.xyz;
      r8.yz = r16.xy;
      r9.z = r7.z;
      while (true) {
        if (r9.z == 0) break;
        r9.w = firstbitlow((uint)r9.z);
        r10.w = 1 << (int)r9.w;
        r11.w = (int)r9.z & (int)r10.w;
        if (r11.w != 0) {
          r9.z = (int)r9.z ^ (int)r10.w;
          r10.w = (int)r8.x + (int)r9.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r20.xyzw, r10.w, l(0), t11.xyzw
        r20.x = samp0[]..swiz;
        r20.y = samp0[]..swiz;
        r20.z = samp0[]..swiz;
        r20.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r21.xy, r10.w, l(16), t11.xyxx
        r21.x = samp0[]..swiz;
        r21.y = samp0[]..swiz;
          r20.xyz = -v6.xyz + r20.xyz;
          r21.z = r20.w;
          r20.xyz = cmp(abs(r20.xyz) < r21.zxy);
          r10.w = r20.y ? r20.x : 0;
          r10.w = r20.z ? r10.w : 0;
          if (r10.w != 0) {
            r9.w = (int)r7.w + (int)r9.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r20.xyz, r9.w, l(0), t36.xyzx
          r20.x = samp0[]..swiz;
          r20.y = samp0[]..swiz;
          r20.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r21.xyz, r9.w, l(16), t36.xyzx
          r21.x = samp0[]..swiz;
          r21.y = samp0[]..swiz;
          r21.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r22.xyz, r9.w, l(32), t36.xyzx
          r22.x = samp0[]..swiz;
          r22.y = samp0[]..swiz;
          r22.z = samp0[]..swiz;
            r23.x = r20.x;
            r23.y = r21.x;
            r23.z = r22.x;
            r10.w = dot(r23.xyz, r23.xyz);
            r10.w = rsqrt(r10.w);
            r24.xyz = r23.xyz * r10.www;
            r10.w = dot(r24.xyz, v3.xyz);
            r10.w = cmp(r10.w >= 0.5);
            if (r10.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r25.xyw, r9.w, l(48), t36.xyxz
            r25.x = samp0[]..swiz;
            r25.y = samp0[]..swiz;
            r25.w = samp0[]..swiz;
              r23.w = r25.x;
              r23.x = dot(r5.xyzw, r23.xyzw);
              r26.x = r20.y;
              r26.y = r21.y;
              r26.z = r22.y;
              r26.w = r25.y;
              r23.y = dot(r5.xyzw, r26.xyzw);
              r25.x = r20.z;
              r25.y = r21.z;
              r25.z = r22.z;
              r23.z = dot(r5.xyzw, r25.xyzw);
              r20.xyz = cmp(abs(r23.xyz) < float3(1,1,1));
              r10.w = r20.y ? r20.x : 0;
              r10.w = r20.z ? r10.w : 0;
              if (r10.w != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r20.xyzw, r9.w, l(64), t36.xyzw
              r20.x = samp0[]..swiz;
              r20.y = samp0[]..swiz;
              r20.z = samp0[]..swiz;
              r20.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r21.xyzw, r9.w, l(80), t36.xyzw
              r21.x = samp0[]..swiz;
              r21.y = samp0[]..swiz;
              r21.z = samp0[]..swiz;
              r21.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r22.xyzw, r9.w, l(96), t36.xyzw
              r22.x = samp0[]..swiz;
              r22.y = samp0[]..swiz;
              r22.z = samp0[]..swiz;
              r22.w = samp0[]..swiz;
                r27.x = dot(r3.xyz, r26.xyz);
                r27.y = dot(r3.xyz, r25.xyz);
                r28.x = dot(r4.xyz, r26.xyz);
                r28.y = dot(r4.xyz, r25.xyz);
                r16.zw = r23.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                r23.xyz = float3(0.5,-0.5,0.5) * r27.xyx;
                r27.xyz = float3(0.5,-0.5,0.5) * r28.xyx;
                r28.xy = (int2)r21.yz & int2(65535,65535);
                if (r28.x != 0) {
                  if (4 == 0) r10.w = 0; else if (4+24 < 32) {                   r10.w = (uint)r21.w << (32-(4 + 24)); r10.w = (uint)r10.w >> (32-4);                  } else r10.w = (uint)r21.w >> 24;
                  r10.w = 1 << (int)r10.w;
                  r11.w = (uint)r21.w >> 28;
                  r11.w = 1 << (int)r11.w;
                  r12.w = cmp((int)r28.x == 4);
                  if (r12.w != 0) {
                    r12.w = (int)r21.w & 4095;
                    if (12 == 0) r13.w = 0; else if (12+12 < 32) {                     r13.w = (uint)r21.w << (32-(12 + 12)); r13.w = (uint)r13.w >> (32-12);                    } else r13.w = (uint)r21.w >> 12;
                    r14.w = (int)r22.w & 1023;
                    r29.xz = (uint2)r10.ww;
                    r29.y = (uint)r11.w;
                    r28.zw = r16.zw * r29.zy + float2(0.5,0.5);
                    r30.xy = float2(-0.5,-0.5) + r29.zy;
                    r28.zw = min(r30.xy, r28.zw);
                    r30.x = (uint)r12.w;
                    r30.y = (uint)r13.w;
                    r28.zw = r30.xy + r28.zw;
                    r30.xy = invBcTexSizes.xy * r28.zw;
                    r30.z = (uint)r14.w;
                    r31.xyz = invBcTexSizes.xyx * r23.zyz;
                    r31.xyz = r31.xyz * r29.xyz;
                    r32.xyz = invBcTexSizes.xyx * r27.zyz;
                    r29.xyz = r32.xyz * r29.xyz;
                    r29.xyzw = materialTexBC7.SampleGrad(samplerLinearClamp_s, r30.xyz, r31.xyzx, r29.xyzx).xyzw;
                  } else {
                    r12.w = cmp((int)r28.x == 1);
                    if (r12.w != 0) {
                      r12.w = (int)r21.w & 4095;
                      if (12 == 0) r13.w = 0; else if (12+12 < 32) {                       r13.w = (uint)r21.w << (32-(12 + 12)); r13.w = (uint)r13.w >> (32-12);                      } else r13.w = (uint)r21.w >> 12;
                      r14.w = (int)r22.w & 1023;
                      r30.xz = (uint2)r10.ww;
                      r30.y = (uint)r11.w;
                      r28.xz = r16.zw * r30.zy + float2(0.5,0.5);
                      r31.xy = float2(-0.5,-0.5) + r30.zy;
                      r28.xz = min(r31.xy, r28.xz);
                      r31.x = (uint)r12.w;
                      r31.y = (uint)r13.w;
                      r28.xz = r31.xy + r28.xz;
                      r31.xy = invBcTexSizes.zw * r28.xz;
                      r31.z = (uint)r14.w;
                      r28.xzw = invBcTexSizes.zwz * r23.zyz;
                      r28.xzw = r28.xzw * r30.xyz;
                      r32.xyz = invBcTexSizes.zwz * r27.zyz;
                      r30.xyz = r32.xyz * r30.xyz;
                      r29.xyzw = materialTexBC3.SampleGrad(samplerLinearClamp_s, r31.xyz, r28.xzwx, r30.xyzx).xyzw;
                    } else {
                      r29.xyzw = float4(1,1,1,1);
                    }
                  }
                  r20.xyz = r29.xyz * r20.xyz;
                  r10.w = r29.w * r20.w;
                } else {
                  r20.xyz = float3(0,0,0);
                  r10.w = 0;
                }
                r11.w = cmp(r21.x != 1.000000);
                r12.w = r10.w + r20.w;
                r12.w = saturate(r12.w * r21.x + -r21.x);
                r10.w = r11.w ? r12.w : r10.w;
                if (r28.y != 0) {
                  if (4 == 0) r11.w = 0; else if (4+24 < 32) {                   r11.w = (uint)r22.y << (32-(4 + 24)); r11.w = (uint)r11.w >> (32-4);                  } else r11.w = (uint)r22.y >> 24;
                  r11.w = 1 << (int)r11.w;
                  r12.w = (uint)r22.y >> 28;
                  r12.w = 1 << (int)r12.w;
                  r13.w = cmp((int)r28.y == 2);
                  if (r13.w != 0) {
                    r13.w = (int)r22.y & 4095;
                    if (12 == 0) r21.x = 0; else if (12+12 < 32) {                     r21.x = (uint)r22.y << (32-(12 + 12)); r21.x = (uint)r21.x >> (32-12);                    } else r21.x = (uint)r22.y >> 12;
                    if (10 == 0) r21.w = 0; else if (10+20 < 32) {                     r21.w = (uint)r22.w << (32-(10 + 20)); r21.w = (uint)r21.w >> (32-10);                    } else r21.w = (uint)r22.w >> 20;
                    r29.xz = (uint2)r11.ww;
                    r29.y = (uint)r12.w;
                    r28.xz = r16.zw * r29.zy + float2(0.5,0.5);
                    r30.xy = float2(-0.5,-0.5) + r29.zy;
                    r28.xz = min(r30.xy, r28.xz);
                    r30.x = (uint)r13.w;
                    r30.yz = (uint2)r21.xw;
                    r28.xz = r30.xy + r28.xz;
                    r30.xy = invMaskTexSizes.xy * r28.xz;
                    r28.xzw = invMaskTexSizes.xyx * r23.zyz;
                    r28.xzw = r28.xzw * r29.xyz;
                    r31.xyz = invMaskTexSizes.xyx * r27.zyz;
                    r29.xyz = r31.xyz * r29.xyz;
                    r13.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r30.xyz, r28.x, r29.x).x;
                  } else {
                    r14.w = cmp((int)r28.y == 4);
                    if (r14.w != 0) {
                      r14.w = (int)r22.y & 4095;
                      if (12 == 0) r21.x = 0; else if (12+12 < 32) {                       r21.x = (uint)r22.y << (32-(12 + 12)); r21.x = (uint)r21.x >> (32-12);                      } else r21.x = (uint)r22.y >> 12;
                      if (10 == 0) r21.w = 0; else if (10+20 < 32) {                       r21.w = (uint)r22.w << (32-(10 + 20)); r21.w = (uint)r21.w >> (32-10);                      } else r21.w = (uint)r22.w >> 20;
                      r28.xz = (uint2)r11.ww;
                      r28.y = (uint)r12.w;
                      r29.xy = r16.zw * r28.zy + float2(0.5,0.5);
                      r29.zw = float2(-0.5,-0.5) + r28.zy;
                      r29.xy = min(r29.xy, r29.zw);
                      r30.x = (uint)r14.w;
                      r30.y = (uint)r21.x;
                      r29.xy = r30.xy + r29.xy;
                      r29.xy = invBcTexSizes.xy * r29.xy;
                      r29.z = (uint)r21.w;
                      r30.xyz = invBcTexSizes.xyx * r23.zyz;
                      r30.xyz = r30.xyz * r28.xyz;
                      r31.xyz = invBcTexSizes.xyx * r27.zyz;
                      r28.xyz = r31.xyz * r28.xyz;
                      r13.w = materialTexBC7.SampleGrad(samplerLinearClamp_s, r29.xyz, r30.x, r28.x).x;
                    } else {
                      r14.w = (int)r22.y & 4095;
                      if (12 == 0) r21.x = 0; else if (12+12 < 32) {                       r21.x = (uint)r22.y << (32-(12 + 12)); r21.x = (uint)r21.x >> (32-12);                      } else r21.x = (uint)r22.y >> 12;
                      if (10 == 0) r21.w = 0; else if (10+20 < 32) {                       r21.w = (uint)r22.w << (32-(10 + 20)); r21.w = (uint)r21.w >> (32-10);                      } else r21.w = (uint)r22.w >> 20;
                      r28.xz = (uint2)r11.ww;
                      r28.y = (uint)r12.w;
                      r29.xy = r16.zw * r28.zy + float2(0.5,0.5);
                      r29.zw = float2(-0.5,-0.5) + r28.zy;
                      r29.xy = min(r29.xy, r29.zw);
                      r30.x = (uint)r14.w;
                      r30.y = (uint)r21.x;
                      r29.xy = r30.xy + r29.xy;
                      r29.xy = invBcTexSizes.zw * r29.xy;
                      r29.z = (uint)r21.w;
                      r30.xyz = invBcTexSizes.zwz * r23.zyz;
                      r30.xyz = r30.xyz * r28.xyz;
                      r31.xyz = invBcTexSizes.zwz * r27.zyz;
                      r28.xyz = r31.xyz * r28.xyz;
                      r13.w = materialTexBC3.SampleGrad(samplerLinearClamp_s, r29.xyz, r30.x, r28.x).x;
                    }
                  }
                  r28.xyz = r13.www * float3(0.959999979,0.959999979,0.959999979) + float3(0.0399999991,0.0399999991,0.0399999991);
                  r11.w = saturate(1 + -r13.w);
                  r20.xyz = r20.xyz * r11.www;
                } else {
                  r28.xyz = float3(0.0399999991,0.0399999991,0.0399999991);
                }
                r21.xy = (uint2)r21.zy >> int2(16,16);
                if (r21.x != 0) {
                  r11.w = cmp((int)r21.x == 2);
                  if (r11.w != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r9.w, r9.w, l(112), t36.xxxx
                  r9.w = samp0[]..swiz;
                    if (4 == 0) r21.z = 0; else if (4+24 < 32) {                     r21.z = (uint)r22.z << (32-(4 + 24)); r21.z = (uint)r21.z >> (32-4);                    } else r21.z = (uint)r22.z >> 24;
                    if (12 == 0) r21.w = 0; else if (12+12 < 32) {                     r21.w = (uint)r22.z << (32-(12 + 12)); r21.w = (uint)r21.w >> (32-12);                    } else r21.w = (uint)r22.z >> 12;
                    r11.w = 1 << (int)r21.z;
                    r12.w = (uint)r22.z >> 28;
                    r12.w = 1 << (int)r12.w;
                    r13.w = (int)r22.z & 4095;
                    r9.w = (int)r9.w & 1023;
                    r29.xz = (uint2)r11.ww;
                    r29.y = (uint)r12.w;
                    r22.yz = r16.zw * r29.zy + float2(0.5,0.5);
                    r30.xy = float2(-0.5,-0.5) + r29.zy;
                    r22.yz = min(r30.xy, r22.yz);
                    r30.x = (uint)r13.w;
                    r30.y = (uint)r21.w;
                    r21.zw = r30.xy + r22.yz;
                    r30.xy = invMaskTexSizes.xy * r21.zw;
                    r30.z = (uint)r9.w;
                    r31.xyz = invMaskTexSizes.xyx * r23.zyz;
                    r31.xyz = r31.xyz * r29.xyz;
                    r32.xyz = invMaskTexSizes.xyx * r27.zyz;
                    r29.xyz = r32.xyz * r29.xyz;
                    r9.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r30.xyz, r31.x, r29.x).x;
                  } else {
                    r11.w = cmp((int)r21.x == 6);
                    r9.w = r11.w ? 0 : 1;
                  }
                } else {
                  r9.w = 1;
                }
                r9.w = saturate(0.764705896 * r9.w);
                if (r21.y != 0) {
                  r11.w = cmp((int)r21.y == 3);
                  if (r11.w != 0) {
                    if (4 == 0) r21.x = 0; else if (4+24 < 32) {                     r21.x = (uint)r22.x << (32-(4 + 24)); r21.x = (uint)r21.x >> (32-4);                    } else r21.x = (uint)r22.x >> 24;
                    if (12 == 0) r21.y = 0; else if (12+12 < 32) {                     r21.y = (uint)r22.x << (32-(12 + 12)); r21.y = (uint)r21.y >> (32-12);                    } else r21.y = (uint)r22.x >> 12;
                    if (10 == 0) r21.z = 0; else if (10+10 < 32) {                     r21.z = (uint)r22.w << (32-(10 + 10)); r21.z = (uint)r21.z >> (32-10);                    } else r21.z = (uint)r22.w >> 10;
                    r11.w = 1 << (int)r21.x;
                    r12.w = (uint)r22.x >> 28;
                    r12.w = 1 << (int)r12.w;
                    r13.w = (int)r22.x & 4095;
                    r22.xz = (uint2)r11.ww;
                    r22.y = (uint)r12.w;
                    r16.zw = r16.zw * r22.xy + float2(0.5,0.5);
                    r21.xw = float2(-0.5,-0.5) + r22.zy;
                    r16.zw = min(r21.xw, r16.zw);
                    r29.x = (uint)r13.w;
                    r29.yz = (uint2)r21.yz;
                    r16.zw = r29.xy + r16.zw;
                    r29.xy = invMaskTexSizes.zw * r16.zw;
                    r21.xyz = invMaskTexSizes.zwz * r23.xyz;
                    r21.xyz = r21.xyz * r22.xyz;
                    r23.xyz = invMaskTexSizes.zwz * r27.xyz;
                    r22.xyz = r23.xyz * r22.xyz;
                    r21.xyz = materialTexBC7linear.SampleGrad(samplerLinearClamp_s, r29.xyz, r21.xyz, r22.xyz).xyz;
                  } else {
                    r21.xyz = float3(0.5,0.5,1);
                  }
                  r16.zw = r21.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
                  r11.w = dot(r16.zw, r16.zw);
                  r11.w = 1 + -r11.w;
                  r11.w = max(0, r11.w);
                  r11.w = sqrt(r11.w);
                  r12.w = r21.z * r21.z;
                  r12.w = 0.333333343 * r12.w;
                  r12.w = min(1, r12.w);
                  r13.w = dot(r26.xyz, r26.xyz);
                  r13.w = rsqrt(r13.w);
                  r21.xyz = r26.xyz * r13.www;
                  r13.w = dot(-r25.xyz, -r25.xyz);
                  r13.w = rsqrt(r13.w);
                  r22.xyz = -r25.xyz * r13.www;
                  r23.xyz = r24.xyz * r1.yyy;
                  r21.xyz = r21.xyz * r1.yyy;
                  r22.xyz = r22.xyz * r1.yyy;
                  r13.w = -17 * r9.w;
                  r13.w = exp2(r13.w);
                  r12.w = r13.w + r12.w;
                  r12.w = log2(r12.w);
                  r12.w = -0.0588235296 * r12.w;
                  r9.w = max(0, r12.w);
                  r22.xyz = r22.xyz * r16.www;
                  r21.xyz = r21.xyz * r16.zzz + r22.xyz;
                  r21.xyz = r23.xyz * r11.www + r21.xyz;
                  r11.w = dot(r21.xyz, r21.xyz);
                  r11.w = rsqrt(r11.w);
                  r21.xyz = r21.xyz * r11.www;
                  r11.w = 1 + -r10.w;
                  r22.xyz = r18.xyz * r11.www;
                  r18.xyz = r21.xyz * r10.www + r22.xyz;
                }
                r11.w = 1 + -r10.w;
                r21.xyz = r17.xyz * r11.www;
                r17.xyz = r20.xyz * r10.www + r21.xyz;
                r20.xyz = r19.xyz * r11.www;
                r19.xyz = r28.xyz * r10.www + r20.xyz;
                r12.w = r11.w * r8.z;
                r8.y = r8.y * r11.w + r10.w;
                r8.z = r9.w * r10.w + r12.w;
              }
            }
          }
        }
      }
      r13.xyz = r17.xyz;
      r14.xyz = r18.xyz;
      r15.xyz = r19.xyz;
      r16.xy = r8.yz;
      r7.w = (int)r7.w + 32;
    }
    r10.xyz = r13.xyz;
    r11.xyz = r14.xyz;
    r12.xyz = r15.xyz;
    r9.xy = r16.xy;
  }
  r9.x = saturate(r9.x);
  r1.y = 1 + -r9.x;
  r3.xyz = colorTint.xyz * r1.yyy + r10.xyz;
  r1.x = r1.x * r1.y + r9.x;
  r0.yzw = r0.yzw * r1.yyy + r11.xyz;
  r1.w = dot(r0.yzw, r0.yzw);
  r1.w = rsqrt(r1.w);
  r4.xyz = r1.www * r0.yzw;
  r0.y = r0.x * r1.y + r9.y;
  r5.xyz = r1.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r12.xyz;
  r0.z = dot(-v6.xyz, -v6.xyz);
  r0.z = rsqrt(r0.z);
  r6.xyz = -v6.xyz * r0.zzz;
  r0.w = cmp(isDepthHack != 0);
  r1.yw = (uint2)r2.yx;
  r2.z = dot(r1.wy, float2(0.0671105608,0.00583714992));
  r2.z = frac(r2.z);
  r2.z = 52.9829178 * r2.z;
  r2.z = frac(r2.z);
  r2.z = r2.z * 6.28318548 + gameTick.w;
  sincos(r2.z, r7.x, r8.x);
  r1.y = dot(r1.yw, float2(0.0671105608,0.00583714992));
  r1.y = frac(r1.y);
  r1.yz = float2(52.9829178,0.0078125) * r1.yz;
  r1.y = frac(r1.y);
  r1.y = r1.y * 6.28318548 + gameTick.w;
  sincos(r1.y, r9.x, r10.x);
  r0.x = saturate(dot(r4.xyz, r6.xyz));
  r1.y = dot(-r6.xyz, r4.xyz);
  r1.y = r1.y + r1.y;
  r11.xyz = r4.xyz * -r1.yyy + -r6.xyz;
  r1.y = 17 * r0.y;
  r1.y = exp2(r1.y);
  r1.y = 2 + r1.y;
  r1.y = 2 / r1.y;
  r1.w = sqrt(r1.y);
  r2.zw = float2(1,1) + -r0.yx;
  r3.w = 5 * r2.z;
  r5.w = r2.z * 5 + -2.5;
  r5.w = saturate(0.400000006 * r5.w);
  r5.w = 100 * r5.w;
  r7.zw = -r2.zz * float2(10,5) + float2(6.85740995,7.08500004);
  r6.w = exp2(r7.z);
  r6.w = r6.w * r0.x;
  r6.w = 9.1368103 * r6.w;
  r7.z = r3.w * r2.z;
  r7.z = -r7.z * 2.0159049 + r7.w;
  r7.z = exp2(r7.z);
  r7.z = r7.z * r0.x;
  r7.z = 9.70808983 * r7.z;
  r6.w = max(r7.z, r6.w);
  r6.w = max(1.26815999, r6.w);
  r7.z = numRefProbes + -numOverrideProbes;
  r1.z = min(15, r1.z);
  r1.z = (uint)r1.z;
  r12.xy = (uint2)r2.xy >> int2(6,6);
  r12.z = (uint)r1.z << 4;
  r1.z = (int)r7.z & -32;
  r2.x = (int)-r1.z + (int)r7.z;
  r2.y = numRefProbes & -32;
  r7.w = (int)-r2.y + numRefProbes;
  r13.xy = float2(0,0);
  r14.w = 0;
  r15.yz = float2(0,1);
  r16.xy = float2(0,0);
  r17.x = 1;
  r18.xy = float2(0,0);
  r19.xy = float2(0,0);
  r20.xyzw = float4(0,0,0,0);
  r21.yzw = float3(0,0,0);
  r8.w = r1.z;
  while (true) {
    r9.y = cmp((uint)r8.w >= numRefProbes);
    if (r9.y != 0) break;
    r13.z = (uint)r8.w >> 5;
    r14.xyz = (int3)r12.xyz + (int3)r13.xyz;
    r9.y = visibleProbes.Load(r14.xyzw).x;
    r9.z = cmp((int)r1.z == (int)r8.w);
    bitmask.w = ((~(-1 << r2.x)) << 0) & 0xffffffff;  r9.w = (((uint)0 << 0) & bitmask.w) | ((uint)r9.y & ~bitmask.w);
    r9.y = r9.z ? r9.w : r9.y;
    r9.z = cmp((int)r2.y == (int)r8.w);
    if (r7.w == 0) r9.w = 0; else if (r7.w+0 < 32) {     r9.w = (uint)r9.y << (32-(r7.w + 0)); r9.w = (uint)r9.w >> (32-r7.w);    } else r9.w = (uint)r9.y >> 0;
    r9.y = r9.z ? r9.w : r9.y;
    r9.z = (int)r8.w + numLights;
    r22.xyzw = r20.xyzw;
    r23.xyz = r21.yzw;
    r9.w = r9.y;
    while (true) {
      if (r9.w == 0) break;
      r10.y = firstbitlow((uint)r9.w);
      r10.z = 1 << (int)r10.y;
      r10.w = (int)r9.w & (int)r10.z;
      if (r10.w != 0) {
        r9.w = (int)r9.w ^ (int)r10.z;
        r10.z = (int)r9.z + (int)r10.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r24.xyzw, r10.z, l(0), t11.xyzw
      r24.x = samp0[]..swiz;
      r24.y = samp0[]..swiz;
      r24.z = samp0[]..swiz;
      r24.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r14.xy, r10.z, l(16), t11.xyxx
      r14.x = samp0[]..swiz;
      r14.y = samp0[]..swiz;
        r24.xyz = -v6.xyz + r24.xyz;
        r14.z = r24.w;
        r14.xyz = cmp(abs(r24.xyz) < r14.zxy);
        r10.z = r14.y ? r14.x : 0;
        r10.z = r14.z ? r10.z : 0;
        if (r10.z != 0) {
          r10.y = (int)r8.w + (int)r10.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r10.y, l(0), t15.wxyz
        r24.x = samp0[]..swiz;
        r24.y = samp0[]..swiz;
        r24.z = samp0[]..swiz;
        r24.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r10.zw, r10.y, l(96), t15.xxxy
        r10.z = samp0[]..swiz;
        r10.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r10.y, l(116), t15.zwxy
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        r25.z = samp0[]..swiz;
        r25.w = samp0[]..swiz;
          r14.xyz = v6.xyz + -r24.yzw;
          r12.w = (int)r25.w & 0x0000ffff;
          if (6 == 0) r13.z = 0; else if (6+25 < 32) {           r13.z = (uint)r25.w << (32-(6 + 25)); r13.z = (uint)r13.z >> (32-6);          } else r13.z = (uint)r25.w >> 25;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r12.w, l(0), t16.xyzw
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
        r26.z = samp0[]..swiz;
        r26.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r12.w, l(16), t16.xyzw
        r27.x = samp0[]..swiz;
        r27.y = samp0[]..swiz;
        r27.z = samp0[]..swiz;
        r27.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r12.w, l(32), t16.xyzw
        r28.x = samp0[]..swiz;
        r28.y = samp0[]..swiz;
        r28.z = samp0[]..swiz;
        r28.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r12.w, l(48), t16.xyzw
        r29.x = samp0[]..swiz;
        r29.y = samp0[]..swiz;
        r29.z = samp0[]..swiz;
        r29.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r12.w, l(64), t16.xyzw
        r30.x = samp0[]..swiz;
        r30.y = samp0[]..swiz;
        r30.z = samp0[]..swiz;
        r30.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r12.w, l(80), t16.xyzw
        r31.x = samp0[]..swiz;
        r31.y = samp0[]..swiz;
        r31.z = samp0[]..swiz;
        r31.w = samp0[]..swiz;
          r13.w = dot(r26.xyz, r14.xyz);
          r13.w = saturate(r13.w + r26.w);
          r15.w = dot(r27.xyz, r14.xyz);
          r15.w = saturate(r15.w + r27.w);
          r13.w = r15.w * r13.w;
          r15.w = dot(r28.xyz, r14.xyz);
          r15.w = saturate(r15.w + r28.w);
          r13.w = r15.w * r13.w;
          r15.w = dot(r29.xyz, r14.xyz);
          r15.w = saturate(r15.w + r29.w);
          r13.w = r15.w * r13.w;
          r15.w = dot(r30.xyz, r14.xyz);
          r15.w = saturate(r15.w + r30.w);
          r13.w = r15.w * r13.w;
          r15.w = dot(r31.xyz, r14.xyz);
          r15.w = saturate(r15.w + r31.w);
          r15.x = r15.w * r13.w;
          r13.w = (int)r10.z & 1;
          r15.xw = r13.ww ? r15.xy : r15.zx;
          r13.w = r10.z;
          r26.xy = r15.xw;
          r16.w = 1;
          while (true) {
            r17.z = cmp((int)r16.w >= (int)r13.z);
            if (r17.z != 0) break;
            r17.z = (int)r12.w + (int)r16.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r17.z, l(0), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r17.z, l(16), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r17.z, l(32), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r17.z, l(48), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r17.z, l(64), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r17.z, l(80), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
            r17.z = dot(r27.xyz, r14.xyz);
            r17.z = saturate(r17.z + r27.w);
            r17.z = r26.x * r17.z;
            r17.w = dot(r28.xyz, r14.xyz);
            r17.w = saturate(r17.w + r28.w);
            r17.z = r17.z * r17.w;
            r17.w = dot(r29.xyz, r14.xyz);
            r17.w = saturate(r17.w + r29.w);
            r17.z = r17.z * r17.w;
            r17.w = dot(r30.xyz, r14.xyz);
            r17.w = saturate(r17.w + r30.w);
            r17.z = r17.z * r17.w;
            r17.w = dot(r31.xyz, r14.xyz);
            r17.w = saturate(r17.w + r31.w);
            r17.z = r17.z * r17.w;
            r17.w = dot(r32.xyz, r14.xyz);
            r17.w = saturate(r17.w + r32.w);
            r26.x = r17.z * r17.w;
            r18.w = (uint)r13.w >> 2;
            if (1 == 0) r19.w = 0; else if (1+2 < 32) {             r19.w = (uint)r13.w << (32-(1 + 2)); r19.w = (uint)r19.w >> (32-1);            } else r19.w = (uint)r13.w >> 2;
            r24.w = (int)r18.w & 2;
            r26.z = max(r26.y, r26.x);
            r17.z = -r17.z * r17.w + 1;
            r17.z = r26.y * r17.z;
            r17.y = r24.w ? r17.z : r26.z;
            r26.xy = r19.ww ? r26.xy : r17.xy;
            r16.w = (int)r16.w + 1;
            r13.w = r18.w;
          }
          r26.y = saturate(r26.y);
          r10.z = r26.y * r10.w;
          r12.w = cmp(0 < r10.z);
          if (r12.w != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r10.y, l(16), t15.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r10.y, l(32), t15.yxwz
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r10.y, l(48), t15.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r10.y, l(64), t15.zwxy
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r10.y, l(80), t15.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r10.y, l(132), t15.zwxy
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r10.y, l(148), t15.zwxy
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r10.y, l(164), t15.zwxy
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r10.y, l(180), t15.zwxy
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r10.y, l(196), t15.xyzw
          r36.x = samp0[]..swiz;
          r36.y = samp0[]..swiz;
          r36.z = samp0[]..swiz;
          r36.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xy, r10.y, l(212), t15.xyxx
          r37.x = samp0[]..swiz;
          r37.y = samp0[]..swiz;
            r23.z = r26.y * r10.w + r23.z;
            r10.y = r10.z * r25.z;
            r25.z = r32.z;
            r10.z = dot(r11.xyz, r25.xyz);
            r10.w = dot(r14.xyz, r25.xyz);
            r10.w = r10.w + -r32.w;
            r12.w = cmp(r10.w >= 0);
            r10.w = max(abs(r10.w), r5.w);
            r10.w = r12.w ? r10.w : -r10.w;
            r10.z = max(1.00000001e-07, -r10.z);
            r10.z = r10.w / r10.z;
            r10.z = min(131072, abs(r10.z));
            r32.z = r33.z;
            r10.w = dot(r11.xyz, r32.xyz);
            r12.w = dot(r14.xyz, r32.xyz);
            r12.w = r12.w + -r33.w;
            r13.z = cmp(r12.w >= 0);
            r12.w = max(abs(r12.w), r5.w);
            r12.w = r13.z ? r12.w : -r12.w;
            r10.w = max(1.00000001e-07, -r10.w);
            r10.w = r12.w / r10.w;
            r10.z = min(r10.z, abs(r10.w));
            r33.z = r34.z;
            r10.w = dot(r11.xyz, r33.xyz);
            r12.w = dot(r14.xyz, r33.xyz);
            r12.w = r12.w + -r34.w;
            r13.z = cmp(r12.w >= 0);
            r12.w = max(abs(r12.w), r5.w);
            r12.w = r13.z ? r12.w : -r12.w;
            r10.w = max(1.00000001e-07, -r10.w);
            r10.w = r12.w / r10.w;
            r10.z = min(r10.z, abs(r10.w));
            r34.z = r35.z;
            r10.w = dot(r11.xyz, r34.xyz);
            r12.w = dot(r14.xyz, r34.xyz);
            r12.w = r12.w + -r35.w;
            r13.z = cmp(r12.w >= 0);
            r12.w = max(abs(r12.w), r5.w);
            r12.w = r13.z ? r12.w : -r12.w;
            r10.w = max(1.00000001e-07, -r10.w);
            r10.w = r12.w / r10.w;
            r10.z = min(r10.z, abs(r10.w));
            r35.z = r36.x;
            r10.w = dot(r11.xyz, r35.xyz);
            r12.w = dot(r14.xyz, r35.xyz);
            r12.w = r12.w + -r36.y;
            r13.z = cmp(r12.w >= 0);
            r12.w = max(abs(r12.w), r5.w);
            r12.w = r13.z ? r12.w : -r12.w;
            r10.w = max(1.00000001e-07, -r10.w);
            r10.w = r12.w / r10.w;
            r10.z = min(r10.z, abs(r10.w));
            r37.zw = r36.zw;
            r10.w = dot(r11.zxy, r37.xzw);
            r12.w = dot(r14.zxy, r37.xzw);
            r12.w = r12.w + -r37.y;
            r13.z = cmp(r12.w >= 0);
            r12.w = max(abs(r12.w), r5.w);
            r12.w = r13.z ? r12.w : -r12.w;
            r10.w = max(1.00000001e-07, -r10.w);
            r10.w = r12.w / r10.w;
            r10.z = min(r10.z, abs(r10.w));
            r25.x = r29.w;
            r25.yz = r30.zw;
            r17.yzw = r25.xyz + r14.xyz;
            r17.yzw = r11.xyz * r10.zzz + r17.yzw;
            r10.w = dot(r17.yzw, r17.yzw);
            r10.w = sqrt(r10.w);
            r10.z = r10.z / r10.w;
            r10.z = r10.z + r10.z;
            r10.z = sqrt(r10.z);
            r10.z = r2.z * 5 + r10.z;
            r10.z = -0.844799995 + r10.z;
            r24.y = r27.z;
            r24.z = r28.x;
            r32.x = dot(r17.yzw, r24.xyz);
            r25.xy = r27.xw;
            r25.z = r28.w;
            r32.y = dot(r17.yzw, r25.xyz);
            r28.x = r27.y;
            r32.z = dot(r17.yzw, r28.xyz);
            if (9 == 0) r10.w = 0; else if (9+16 < 32) {             r10.w = (uint)r25.w << (32-(9 + 16)); r10.w = (uint)r10.w >> (32-9);            } else r10.w = (uint)r25.w >> 16;
            r32.w = (uint)r10.w;
            r17.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r32.xyzw, r10.z).xyz;
            r27.x = dot(r14.xyz, r24.xyz);
            r27.y = dot(r14.xyz, r25.xyz);
            r27.z = dot(r14.xyz, r28.xyz);
            r14.xyz = saturate(r27.xyz * r29.xyz + float3(0.5,0.5,0.5));
            r30.z = r31.x;
            r14.xyz = r14.xyz * r30.xyz + r31.yzw;
            r32.x = dot(r4.xyz, r24.xyz);
            r32.y = dot(r4.xyz, r25.xyz);
            r32.z = dot(r4.xyz, r28.xyz);
            r24.xyz = cmp(float3(0,0,0) < r32.xyz);
            r16.z = r24.x ? 0 : 0.5;
            r25.xyz = r16.xyz + r14.xyz;
            r25.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
            r26.xzw = r32.xyz * r32.xyz;
            r26.xzw = r26.xzw * r10.yyy;
            r18.z = r24.y ? 0 : 0.5;
            r24.xyw = r18.xyz + r14.xyz;
            r24.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r24.xyw, 0).xyz;
            r24.xyw = r24.xyw * r26.zzz;
            r24.xyw = r25.xyz * r26.xxx + r24.xyw;
            r19.z = r24.z ? 0 : 0.5;
            r14.xyz = r19.xyz + r14.xyz;
            r14.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r14.xyz, 0).xyz;
            r14.xyz = r14.xyz * r26.www + r24.xyw;
            r24.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r32.xyzw, 6).xyz;
            r25.xyz = r24.xyz * r14.xyz;
            r10.z = dot(r25.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r22.xyz = r14.xyz * r24.xyz + r22.xyz;
            r10.w = r10.z * r6.w;
            r14.xyz = r17.yzw * r10.yyy;
            r10.y = dot(r14.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r10.y = r6.w * r10.z + r10.y;
            r10.y = r10.w / r10.y;
            r24.x = r22.w;
            r24.yz = r23.xy;
            r23.xyw = r14.yzx * r10.yyy + r24.yzx;
            r22.w = r23.w;
          }
        }
      }
    }
    r20.xyzw = r22.xyzw;
    r21.yzw = r23.xyz;
    r8.w = (int)r8.w + 32;
  }
  r2.y = cmp(r21.w < 1);
  if (r2.y != 0) {
    r13.xy = float2(0,0);
    r14.w = 0;
    r15.yz = float2(0,1);
    r16.xy = float2(0,0);
    r17.x = 1;
    r18.xy = float2(0,0);
    r19.xy = float2(0,0);
    r22.x = r20.w;
    r22.yzw = r21.yzw;
    r9.yzw = r20.xyz;
    r2.y = r21.w;
    r7.w = 0;
    while (true) {
      r8.w = cmp((uint)r7.w >= (uint)r7.z);
      if (r8.w != 0) break;
      r13.z = (uint)r7.w >> 5;
      r14.xyz = (int3)r12.xyz + (int3)r13.xyz;
      r8.w = visibleProbes.Load(r14.xyzw).x;
      r10.y = cmp((int)r1.z == (int)r7.w);
      if (r2.x == 0) r10.z = 0; else if (r2.x+0 < 32) {       r10.z = (uint)r8.w << (32-(r2.x + 0)); r10.z = (uint)r10.z >> (32-r2.x);      } else r10.z = (uint)r8.w >> 0;
      r8.w = r10.y ? r10.z : r8.w;
      r10.y = (int)r7.w + numLights;
      r23.xyzw = r22.xyzw;
      r14.xyz = r9.yzw;
      r10.z = r2.y;
      r10.w = r8.w;
      while (true) {
        if (r10.w == 0) break;
        r12.w = firstbitlow((uint)r10.w);
        r13.z = 1 << (int)r12.w;
        r13.w = (int)r10.w & (int)r13.z;
        if (r13.w != 0) {
          r10.w = (int)r10.w ^ (int)r13.z;
          r13.z = (int)r10.y + (int)r12.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r24.xyzw, r13.z, l(0), t11.xyzw
        r24.x = samp0[]..swiz;
        r24.y = samp0[]..swiz;
        r24.z = samp0[]..swiz;
        r24.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r25.xy, r13.z, l(16), t11.xyxx
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
          r24.xyz = -v6.xyz + r24.xyz;
          r25.z = r24.w;
          r24.xyz = cmp(abs(r24.xyz) < r25.zxy);
          r13.z = r24.y ? r24.x : 0;
          r13.z = r24.z ? r13.z : 0;
          if (r13.z != 0) {
            r12.w = (int)r7.w + (int)r12.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r12.w, l(0), t15.wxyz
          r24.x = samp0[]..swiz;
          r24.y = samp0[]..swiz;
          r24.z = samp0[]..swiz;
          r24.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r13.zw, r12.w, l(96), t15.xxxy
          r13.z = samp0[]..swiz;
          r13.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r12.w, l(116), t15.zwxy
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
            r26.xyz = v6.xyz + -r24.yzw;
            r15.w = (int)r25.w & 0x0000ffff;
            if (6 == 0) r16.w = 0; else if (6+25 < 32) {             r16.w = (uint)r25.w << (32-(6 + 25)); r16.w = (uint)r16.w >> (32-6);            } else r16.w = (uint)r25.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r15.w, l(0), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r15.w, l(16), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r15.w, l(32), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r15.w, l(48), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r15.w, l(64), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r15.w, l(80), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
            r17.z = dot(r27.xyz, r26.xyz);
            r17.z = saturate(r17.z + r27.w);
            r17.w = dot(r28.xyz, r26.xyz);
            r17.w = saturate(r17.w + r28.w);
            r17.z = r17.z * r17.w;
            r17.w = dot(r29.xyz, r26.xyz);
            r17.w = saturate(r17.w + r29.w);
            r17.z = r17.z * r17.w;
            r17.w = dot(r30.xyz, r26.xyz);
            r17.w = saturate(r17.w + r30.w);
            r17.z = r17.z * r17.w;
            r17.w = dot(r31.xyz, r26.xyz);
            r17.w = saturate(r17.w + r31.w);
            r17.z = r17.z * r17.w;
            r17.w = dot(r32.xyz, r26.xyz);
            r17.w = saturate(r17.w + r32.w);
            r15.x = r17.z * r17.w;
            r17.z = (int)r13.z & 1;
            r17.zw = r17.zz ? r15.xy : r15.zx;
            r15.x = r13.z;
            r27.xy = r17.zw;
            r18.w = 1;
            while (true) {
              r19.w = cmp((int)r18.w >= (int)r16.w);
              if (r19.w != 0) break;
              r19.w = (int)r15.w + (int)r18.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r19.w, l(0), t16.xyzw
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r19.w, l(16), t16.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r19.w, l(32), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r19.w, l(48), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r19.w, l(64), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r19.w, l(80), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
              r19.w = dot(r28.xyz, r26.xyz);
              r19.w = saturate(r19.w + r28.w);
              r19.w = r27.x * r19.w;
              r24.w = dot(r29.xyz, r26.xyz);
              r24.w = saturate(r24.w + r29.w);
              r19.w = r24.w * r19.w;
              r24.w = dot(r30.xyz, r26.xyz);
              r24.w = saturate(r24.w + r30.w);
              r19.w = r24.w * r19.w;
              r24.w = dot(r31.xyz, r26.xyz);
              r24.w = saturate(r24.w + r31.w);
              r19.w = r24.w * r19.w;
              r24.w = dot(r32.xyz, r26.xyz);
              r24.w = saturate(r24.w + r32.w);
              r19.w = r24.w * r19.w;
              r24.w = dot(r33.xyz, r26.xyz);
              r24.w = saturate(r24.w + r33.w);
              r27.x = r24.w * r19.w;
              r26.w = (uint)r15.x >> 2;
              if (1 == 0) r27.z = 0; else if (1+2 < 32) {               r27.z = (uint)r15.x << (32-(1 + 2)); r27.z = (uint)r27.z >> (32-1);              } else r27.z = (uint)r15.x >> 2;
              r27.w = (int)r26.w & 2;
              r28.x = max(r27.y, r27.x);
              r19.w = -r19.w * r24.w + 1;
              r19.w = r27.y * r19.w;
              r17.y = r27.w ? r19.w : r28.x;
              r27.xy = r27.zz ? r27.xy : r17.xy;
              r18.w = (int)r18.w + 1;
              r15.x = r26.w;
            }
            r13.z = saturate(r27.y + -r10.z);
            r15.x = r13.z * r13.w;
            r15.w = cmp(0 < r15.x);
            if (r15.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r12.w, l(16), t15.xyzw
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r12.w, l(32), t15.yxwz
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r12.w, l(48), t15.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r12.w, l(64), t15.zwxy
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r12.w, l(80), t15.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r12.w, l(132), t15.zwxy
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r12.w, l(148), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r12.w, l(164), t15.zwxy
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r12.w, l(180), t15.zwxy
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r12.w, l(196), t15.xyzw
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xy, r12.w, l(212), t15.xyxx
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
              r23.w = r13.z * r13.w + r23.w;
              r12.w = r15.x * r25.z;
              r25.z = r33.z;
              r13.z = dot(r11.xyz, r25.xyz);
              r13.w = dot(r26.xyz, r25.xyz);
              r13.w = r13.w + -r33.w;
              r15.x = cmp(r13.w >= 0);
              r13.w = max(abs(r13.w), r5.w);
              r13.w = r15.x ? r13.w : -r13.w;
              r13.z = max(1.00000001e-07, -r13.z);
              r13.z = r13.w / r13.z;
              r13.z = min(131072, abs(r13.z));
              r33.z = r34.z;
              r13.w = dot(r11.xyz, r33.xyz);
              r15.x = dot(r26.xyz, r33.xyz);
              r15.x = r15.x + -r34.w;
              r15.w = cmp(r15.x >= 0);
              r15.x = max(abs(r15.x), r5.w);
              r15.x = r15.w ? r15.x : -r15.x;
              r13.w = max(1.00000001e-07, -r13.w);
              r13.w = r15.x / r13.w;
              r13.z = min(r13.z, abs(r13.w));
              r34.z = r35.z;
              r13.w = dot(r11.xyz, r34.xyz);
              r15.x = dot(r26.xyz, r34.xyz);
              r15.x = r15.x + -r35.w;
              r15.w = cmp(r15.x >= 0);
              r15.x = max(abs(r15.x), r5.w);
              r15.x = r15.w ? r15.x : -r15.x;
              r13.w = max(1.00000001e-07, -r13.w);
              r13.w = r15.x / r13.w;
              r13.z = min(r13.z, abs(r13.w));
              r35.z = r36.z;
              r13.w = dot(r11.xyz, r35.xyz);
              r15.x = dot(r26.xyz, r35.xyz);
              r15.x = r15.x + -r36.w;
              r15.w = cmp(r15.x >= 0);
              r15.x = max(abs(r15.x), r5.w);
              r15.x = r15.w ? r15.x : -r15.x;
              r13.w = max(1.00000001e-07, -r13.w);
              r13.w = r15.x / r13.w;
              r13.z = min(r13.z, abs(r13.w));
              r36.z = r37.x;
              r13.w = dot(r11.xyz, r36.xyz);
              r15.x = dot(r26.xyz, r36.xyz);
              r15.x = r15.x + -r37.y;
              r15.w = cmp(r15.x >= 0);
              r15.x = max(abs(r15.x), r5.w);
              r15.x = r15.w ? r15.x : -r15.x;
              r13.w = max(1.00000001e-07, -r13.w);
              r13.w = r15.x / r13.w;
              r13.z = min(r13.z, abs(r13.w));
              r38.zw = r37.zw;
              r13.w = dot(r11.zxy, r38.xzw);
              r15.x = dot(r26.zxy, r38.xzw);
              r15.x = r15.x + -r38.y;
              r15.w = cmp(r15.x >= 0);
              r15.x = max(abs(r15.x), r5.w);
              r15.x = r15.w ? r15.x : -r15.x;
              r13.w = max(1.00000001e-07, -r13.w);
              r13.w = r15.x / r13.w;
              r13.z = min(r13.z, abs(r13.w));
              r25.x = r30.w;
              r25.yz = r31.zw;
              r17.yzw = r25.xyz + r26.xyz;
              r17.yzw = r11.xyz * r13.zzz + r17.yzw;
              r13.w = dot(r17.yzw, r17.yzw);
              r13.w = sqrt(r13.w);
              r13.z = r13.z / r13.w;
              r13.z = r13.z + r13.z;
              r13.z = sqrt(r13.z);
              r13.z = r2.z * 5 + r13.z;
              r13.z = -0.844799995 + r13.z;
              r24.y = r28.z;
              r24.z = r29.x;
              r33.x = dot(r17.yzw, r24.xyz);
              r25.xy = r28.xw;
              r25.z = r29.w;
              r33.y = dot(r17.yzw, r25.xyz);
              r29.x = r28.y;
              r33.z = dot(r17.yzw, r29.xyz);
              if (9 == 0) r13.w = 0; else if (9+16 < 32) {               r13.w = (uint)r25.w << (32-(9 + 16)); r13.w = (uint)r13.w >> (32-9);              } else r13.w = (uint)r25.w >> 16;
              r33.w = (uint)r13.w;
              r17.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, r13.z).xyz;
              r28.x = dot(r26.xyz, r24.xyz);
              r28.y = dot(r26.xyz, r25.xyz);
              r28.z = dot(r26.xyz, r29.xyz);
              r26.xyz = saturate(r28.xyz * r30.xyz + float3(0.5,0.5,0.5));
              r31.z = r32.x;
              r26.xyz = r26.xyz * r31.xyz + r32.yzw;
              r33.x = dot(r4.xyz, r24.xyz);
              r33.y = dot(r4.xyz, r25.xyz);
              r33.z = dot(r4.xyz, r29.xyz);
              r24.xyz = cmp(float3(0,0,0) < r33.xyz);
              r16.z = r24.x ? 0 : 0.5;
              r25.xyz = r26.xyz + r16.xyz;
              r25.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
              r27.xzw = r33.xyz * r33.xyz;
              r27.xzw = r27.xzw * r12.www;
              r18.z = r24.y ? 0 : 0.5;
              r24.xyw = r26.xyz + r18.xyz;
              r24.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r24.xyw, 0).xyz;
              r24.xyw = r24.xyw * r27.zzz;
              r24.xyw = r25.xyz * r27.xxx + r24.xyw;
              r19.z = r24.z ? 0 : 0.5;
              r25.xyz = r26.xyz + r19.xyz;
              r25.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
              r24.xyz = r25.xyz * r27.www + r24.xyw;
              r25.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, 6).xyz;
              r26.xyz = r25.xyz * r24.xyz;
              r13.z = dot(r26.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r14.xyz = r24.xyz * r25.xyz + r14.xyz;
              r13.w = r13.z * r6.w;
              r17.yzw = r17.yzw * r12.www;
              r12.w = dot(r17.yzw, float3(0.212599993,0.715200007,0.0722000003));
              r12.w = r6.w * r13.z + r12.w;
              r12.w = r13.w / r12.w;
              r23.xyz = r17.yzw * r12.www + r23.xyz;
            }
          }
        }
      }
      r22.xyzw = r23.xyzw;
      r9.yzw = r14.xyz;
      r7.w = (int)r7.w + 32;
    }
    r21.xyzw = r22.zxyw;
    r20.xyz = r9.yzw;
    r21.xyzw = r21.yzxw;
  } else {
    r21.x = r20.w;
  }
  r1.z = max(1, r21.w);
  r1.z = rcp(r1.z);
  r21.w = saturate(r21.w);
  r13.xyz = r20.xyz * r1.zzz;
  r2.xyz = r21.xyz * r1.zzz;
  r5.w = cmp(r21.w < 0.99000001);
  if (r5.w != 0) {
    r5.w = 1 + -r21.w;
    r6.w = sunConstants.globalProbeExposure * r5.w;
    r9.yzw = -globalProbeConstants.data[0].xyz + v6.xyz;
    r14.x = globalProbeConstants.data[0].w * r9.y;
    r14.yz = globalProbeConstants.data[1].xy * r9.zw;
    r9.yzw = saturate(float3(0.5,0.5,0.5) + r14.xyz);
    r14.xy = globalProbeConstants.data[1].zw * r9.yz;
    r14.z = globalProbeConstants.data[2].x * r9.w;
    r9.yzw = globalProbeConstants.data[2].yzw + r14.xyz;
    r10.yzw = cmp(float3(0,0,0) < r4.xyz);
    r14.xyz = r10.yzw ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r14.w = 0;
    r10.yzw = r14.wwx + r9.yzw;
    r10.yzw = gProbeXArray.SampleLevel(samplerLinearClamp_s, r10.yzw, 0).xyz;
    r15.xyz = r4.xyz * r4.xyz;
    r15.xyz = r15.xyz * r6.www;
    r16.xyz = r14.wwy + r9.yzw;
    r16.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r16.xyz, 0).xyz;
    r16.xyz = r16.xyz * r15.yyy;
    r10.yzw = r10.yzw * r15.xxx + r16.xyz;
    r9.yzw = r14.wwz + r9.yzw;
    r9.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r9.yzw, 0).xyz;
    r9.yzw = r9.yzw * r15.zzz + r10.yzw;
    r4.w = 0;
    r10.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r4.xyzw, 6).xyz;
    r9.yzw = r10.yzw * r9.yzw;
    r4.w = dot(r9.yzw, float3(0.212599993,0.715200007,0.0722000003));
    r13.xyz = r20.xyz * r1.zzz + r9.yzw;
    r11.w = 0;
    r9.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, r3.w).xyz;
    r1.z = sunConstants.globalProbeExposure * r5.w + -r4.w;
    r1.z = r0.y * r1.z + r4.w;
    r2.xyz = r9.yzw * r1.zzz + r2.xyz;
  }
  r7.zw = r0.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r7.zw = gEnvBRDFGlass.SampleLevel(samplerLinear_s, r7.zw, 0).xy;
  r14.xyz = r7.zzz * r2.yzx;
  r2.xyz = r7.www * r2.xyz;
  r0.y = sqrt(r1.w);
  r0.y = r0.y * 0.5 + 0.5;
  r0.y = r0.y * r0.y;
  r1.z = 0.5 * r0.y;
  r0.y = -r0.y * 0.5 + 1;
  r3.w = r0.x * r0.y + r1.z;
  r0.y = r3.w * r0.y;
  r1.z = r3.w * r1.z;
  r3.w = dot(r4.xyz, sunConstants.wldDir.xyz);
  r4.w = saturate(r3.w);
  r5.w = cmp(0 >= r4.w);
  if (r5.w != 0) {
    r6.w = 0;
  }
  if (r5.w == 0) {
    r9.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v6.yyy;
    r9.yzw = v6.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r9.yzw;
    r9.yzw = v6.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r9.yzw;
    r9.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r9.yzw;
    r5.w = -sunConstants.splitDepthOffset + r9.w;
    r5.w = -r5.w * 6.10351563e-05 + 1;
    r7.z = saturate(r5.w);
    r7.z = cmp(r5.w == r7.z);
    if (r7.z != 0) {
      r7.zw = float2(0,0);
      while (true) {
        r8.w = cmp(r7.z >= 3);
        if (r8.w != 0) break;
        r8.w = (uint)r7.z;
        r10.yz = -sunConstants.splitPinTransform[r8.w].xy + r9.yz;
        r10.y = max(abs(r10.y), abs(r10.z));
        r7.w = sunConstants.splitPinTransform[r8.w].z * r10.y;
        r8.w = cmp(r7.w < 1);
        if (r8.w != 0) {
          break;
        }
        r7.z = 1 + r7.z;
        r7.w = 0;
      }
    } else {
      r7.zw = float2(3,0);
    }
    r8.w = cmp(r7.z >= 3);
    if (r8.w != 0) {
      r10.yzw = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r15.xz = rcp(r10.yy);
      r15.y = -r15.z;
      r10.yzw = r9.yzy * r15.xyz + r10.zwz;
      r15.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r10.yzw = max(float3(0,0,0), r10.yzw);
      r10.yzw = min(r10.yzw, r15.xyz);
      r15.xy = sunConstants.sstLightingConstants.coordScale * r10.wz;
      r15.xy = floor(r15.xy);
      r11.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r15.y;
      r11.w = r11.w * sunConstants.sstLightingConstants.coordScale + r15.x;
      r11.w = (uint)r11.w;
      r11.w = (int)r11.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.w, r11.w, l(0), t23.xxxx
    r12.w = samp0[]..swiz;
      r15.x = (int)r12.w & 0x40000000;
      r15.y = (uint)r12.w << 2;
      if (r15.x == 0) {
        r15.x = (int)r12.w & 0x01ffffff;
        r16.x = (int)r11.w + (int)r15.x;
        r11.w = (uint)r12.w >> 25;
        r11.w = (uint)r11.w;
        r10.yzw = r11.www * r10.yzw;
        r10.yzw = frac(r10.yzw);
        r10.yzw = float3(128,128,128) * r10.yzw;
        r10.yzw = (uint3)r10.yzw;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.x, l(0), t23.xxxx
      r16.z = samp0[]..swiz;
        r15.xz = (uint2)r10.wz >> int2(6,6);
        r11.w = (int)r16.z & 0xc0000000;
        r12.w = (int)r16.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.w, r12.w, l(0), t23.xxxx
      r12.w = samp0[]..swiz;
        r12.w = r15.z ? r16.z : r12.w;
        r15.z = (uint)r12.w >> 13;
        r12.w = r15.x ? r15.z : r12.w;
        r12.w = (int)r12.w & 8191;
        r17.x = (int)r12.w + (int)r16.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
      r17.z = samp0[]..swiz;
        r16.y = 0;
        r17.y = 1;
        r15.xzw = r11.www ? r16.xyz : r17.xyz;
        r17.yz = r11.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r18.xy = (uint2)r10.wz >> (uint2)r17.yy;
        r18.xy = (int2)r18.xy & int2(1,1);
        r12.w = (int)r15.w & 0xc0000000;
        r16.w = (int)r15.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.w, r16.w, l(0), t23.xxxx
      r16.w = samp0[]..swiz;
        r16.w = r18.y ? r15.w : r16.w;
        r17.y = (uint)r16.w >> 13;
        r16.w = r18.x ? r17.y : r16.w;
        r16.w = (int)r16.w & 8191;
        r17.x = (int)r15.x + (int)r16.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.x, l(0), t23.xxxx
      r17.w = samp0[]..swiz;
        r15.xzw = r12.www ? r15.xzw : r17.xzw;
        r15.xzw = r11.www ? r16.xyz : r15.xzw;
        r11.w = (int)r15.w & 0xc0000000;
        if (r11.w == 0) {
          r11.w = (int)-r15.z + 6;
          r16.xy = (uint2)r10.wz >> (uint2)r11.ww;
          r11.w = (int)r15.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r12.w = (((uint)r16.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r12.w = (((uint)r16.x << 0) & bitmask.w) | ((uint)r12.w & ~bitmask.w);
          r12.w = (int)r12.w * 10;
          r11.w = (uint)r11.w >> (uint)r12.w;
          r11.w = (int)r11.w & 1023;
          r16.x = (int)r11.w + (int)r15.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.w, r16.x, l(0), t23.xxxx
        r16.w = samp0[]..swiz;
          r16.yz = (int2)r15.zz + int2(1,2);
          r11.w = (int)-r16.y + 6;
          r17.xy = (uint2)r10.wz >> (uint2)r11.ww;
          r11.w = (int)r16.w & 0xc0000000;
          r12.w = (int)r16.w | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r15.z = (((uint)r17.y << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r15.z = (((uint)r17.x << 0) & bitmask.z) | ((uint)r15.z & ~bitmask.z);
          r15.z = (int)r15.z * 10;
          r12.w = (uint)r12.w >> (uint)r15.z;
          r12.w = (int)r12.w & 1023;
          r17.x = (int)r12.w + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
        r17.z = samp0[]..swiz;
          r17.y = r16.z;
          r17.xyz = r11.www ? r16.xyw : r17.xyz;
          r12.w = (int)-r17.y + 6;
          r16.yz = (uint2)r10.wz >> (uint2)r12.ww;
          r12.w = (int)r17.z & 0xc0000000;
          r15.z = (int)r17.z | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r16.z = (((uint)r16.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r16.y = (((uint)r16.y << 0) & bitmask.y) | ((uint)r16.z & ~bitmask.y);
          r16.y = (int)r16.y * 10;
          r15.z = (uint)r15.z >> (uint)r16.y;
          r15.z = (int)r15.z & 1023;
          r18.x = (int)r15.z + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.y, r18.x, l(0), t23.xxxx
        r18.y = samp0[]..swiz;
          r16.yz = r12.ww ? r17.xz : r18.xy;
          r15.xw = r11.ww ? r16.xw : r16.yz;
        }
        r11.w = (int)r15.w & 0xc0000000;
        if (r11.w == 0) {
          if (14 == 0) r12.w = 0; else if (14+15 < 32) {           r12.w = (uint)r15.w << (32-(14 + 15)); r12.w = (uint)r12.w >> (32-14);          } else r12.w = (uint)r15.w >> 15;
          r12.w = (uint)r12.w;
          r12.w = sunConstants.sstLightingConstants.constants.spanInInches * r12.w;
          r12.w = 6.10388815e-05 * r12.w;
          r16.xy = (int2)r15.ww & int2(32767,536870912);
          r15.z = (uint)r16.x;
          r15.z = sunConstants.sstLightingConstants.constants.spanInInches * r15.z;
          r15.z = 3.05185094e-05 * r15.z;
          r16.x = (int)r10.z & 3;
          r16.x = (int)r15.x + (int)r16.x;
          r16.x = (int)r16.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.x, r16.x, l(0), t23.xxxx
        r16.x = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r17.x = (((uint)r10.y << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r17.y = (((uint)r10.z << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r17.z = (((uint)r10.w << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r10.y = (uint)r16.x >> (uint)r17.x;
          r10.y = (int)r10.y & 255;
          r10.y = (uint)r10.y;
          r10.y = r10.y * r15.z;
          r10.y = r10.y * 0.00392156886 + r12.w;
          r10.z = (int)r17.y + 1;
          if (1 == 0) r10.w = 0; else if (1+1 < 32) {           r10.w = (uint)r10.w << (32-(1 + 1)); r10.w = (uint)r10.w >> (32-1);          } else r10.w = (uint)r10.w >> 1;
          r10.z = (int)r10.w + (int)r10.z;
          r10.z = (int)r10.z + (int)r15.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.z, r10.z, l(0), t23.xxxx
        r10.z = samp0[]..swiz;
          r10.z = (uint)r10.z >> (uint)r17.z;
          r10.z = (int)r10.z & 0x0000ffff;
          r10.z = (uint)r10.z;
          r10.z = r10.z * r15.z;
          r10.z = r10.z * 1.52590219e-05 + r12.w;
          r15.y = r16.y ? r10.y : r10.z;
        } else {
          r10.y = (int)r15.w & 0x80000000;
          r10.z = (int)r15.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.z, r10.z, l(0), t23.xxxx
        r10.z = samp0[]..swiz;
          r10.y = r10.y ? r10.z : 0;
          r10.z = (uint)r15.w << 2;
          r10.w = (uint)r10.y >> 16;
          r10.y = (int)r10.y & 0x0000ffff;
          r10.yw = f16tof32(r10.yw);
          r10.z = r9.y * r10.w + r10.z;
          r10.y = r9.z * r10.y + r10.z;
          r15.y = r11.w ? r10.y : r15.y;
        }
      }
      r9.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r9.w;
      r9.w = cmp(r15.y < r9.w);
      r6.w = r9.w ? 0 : 1;
    }
    if (r8.w == 0) {
      if (enableDitheredShadow == 0) {
        r8.w = (uint)r7.z;
        r10.yz = -sunConstants.splitPinTransform[r8.w].xy + r9.yz;
        r10.yz = sunConstants.splitPinTransform[r8.w].zz * r10.yz;
        r15.xy = r10.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r8.w = (int16)sunConstants.splitArrayOffset;
        r15.z = r8.w + r7.z;
        r8.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r5.w).x;
        r9.w = gTransShadowmapArray.SampleLevel(samp0_s, r15.xyz, 0).x;
        r8.w = r9.w + r8.w;
        r8.w = saturate(-1 + r8.w);
        r9.w = r8.w * r8.w;
        r6.w = r9.w * r8.w;
      }
      if (enableDitheredShadow != 0) {
        r15.x = -r7.x;
        r8.w = (uint)r7.z;
        r7.z = 1 + r7.z;
        r7.z = min(2, r7.z);
        r7.w = 1 + -r7.w;
        r7.w = 28 * r7.w;
        r7.zw = (uint2)r7.zw;
        r10.yz = -sunConstants.splitPinTransform[r8.w].xy + r9.yz;
        r10.yz = sunConstants.splitPinTransform[r8.w].zz * r10.yz;
        r10.yz = r10.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r9.yz = -sunConstants.splitPinTransform[r7.z].xy + r9.yz;
        r9.yz = sunConstants.splitPinTransform[r7.z].zz * r9.yz;
        r9.yz = r9.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r15.y = r8.x;
        r15.z = r7.x;
        r9.w = 0;
        r10.w = 0;
        while (true) {
          r11.w = cmp((uint)r10.w >= 8);
          if (r11.w != 0) break;
          r11.w = cmp((uint)r7.w < (uint)r10.w);
          r16.xy = r11.ww ? r9.yz : r10.yz;
          r12.w = r11.w ? sunConstants.splitPinTransform[r7.z].w : sunConstants.splitPinTransform[r8.w].w;
          r11.w = r11.w ? r7.z : r8.w;
          r17.x = dot(icb[r10.w+0].yx, r15.xy);
          r17.y = dot(icb[r10.w+0].yx, r15.yz);
          r16.xy = r17.xy * r12.ww + r16.xy;
          r11.w = (int)r11.w + (int16)sunConstants.splitArrayOffset;
          r16.z = (uint)r11.w;
          r11.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r5.w).x;
          r12.w = gTransShadowmapArray.SampleLevel(samp0_s, r16.xyz, 0).x;
          r11.w = r12.w + r11.w;
          r11.w = saturate(-1 + r11.w);
          r9.w = r11.w * 0.125 + r9.w;
          r10.w = (int)r10.w + 1;
        }
        r5.w = r9.w * r9.w;
        r6.w = r5.w * r9.w;
      }
    }
  }
  r5.w = cmp(0 < r4.w);
  if (r5.w != 0) {
    r5.w = cmp(0 < r6.w);
    if (r5.w != 0) {
      r5.w = sunConstants.specScale * r1.y;
      r5.w = r5.w * r4.w;
      if (sunConstants.sunCookieIndex != 0) {
        r15.xyz = eyeOffset.xyz + v6.xyz;
        r15.w = 1;
        r7.z = dot(sunConstants.sunCookieTransform[0].xyzw, r15.xyzw);
        r7.w = dot(sunConstants.sunCookieTransform[1].xyzw, r15.xyzw);
        r15.xy = frac(r7.zw);
        r7.z = -1 + (int14)sunConstants.sunCookieIndex;
        r15.z = (uint)r7.z;
        r9.yzw = gCookieArray.SampleLevel(samplerLinear_s, r15.xyz, 0).xyz;
        r9.yzw = float3(-1,-1,-1) + r9.yzw;
        r9.yzw = sunConstants.sunCookieIntensity * r9.yzw + float3(1,1,1);
        r9.yzw = sunConstants.color.xyz * r9.yzw;
      } else {
        r9.yzw = sunConstants.color.xyz;
      }
      r7.z = viewmodelSunShadowRaw >> 16;
      r7.w = cmp(0 < (uint)r7.z);
      r7.w = r0.w ? r7.w : 0;
      if (r7.w != 0) {
        r7.z = (int)r7.z + numLights;
        r7.z = (int)r7.z + -1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r7.w, r7.z, l(52), t12.xxxx
      r7.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r7.z, l(68), t12.xyzw
      r15.x = samp0[]..swiz;
      r15.y = samp0[]..swiz;
      r15.z = samp0[]..swiz;
      r15.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r7.z, l(84), t12.xyzw
      r16.x = samp0[]..swiz;
      r16.y = samp0[]..swiz;
      r16.z = samp0[]..swiz;
      r16.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r7.z, l(132), t12.xyzw
      r17.x = samp0[]..swiz;
      r17.y = samp0[]..swiz;
      r17.z = samp0[]..swiz;
      r17.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r7.z, l(148), t12.xyzw
      r18.x = samp0[]..swiz;
      r18.y = samp0[]..swiz;
      r18.z = samp0[]..swiz;
      r18.w = samp0[]..swiz;
        r8.w = abs(r3.w) * -0.200000003 + 0.400000006;
        r19.xyz = r4.xyz * r8.www + v6.xyz;
        r19.w = 1;
        r15.x = dot(r15.xyzw, r19.xyzw);
        r15.y = dot(r16.xyzw, r19.xyzw);
        r10.yz = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.yz = r10.yz + r18.zw;
        r10.yz = r10.yz * r18.xy;
        r15.xy = r7.ww / r17.xz;
        r15.zw = float2(1,1) + -r15.xy;
        r15.zw = cmp(r10.yz >= r15.zw);
        r15.xy = cmp(r15.xy >= r10.yz);
        r15.xy = (int2)r15.xy | (int2)r15.zw;
        r8.w = (int)r15.y | (int)r15.x;
        if (r8.w == 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.w, r7.z, l(28), t12.xxxx
        r8.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r7.z, l(100), t12.xyzw
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xy, r7.z, l(164), t12.xyxx
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
          r7.z = dot(r15.xyzw, r19.xyzw);
          r10.yz = saturate(r10.yz);
          r15.xy = r10.yz * r17.xz + r17.yw;
          r7.z = r7.z + r16.x;
          r7.z = r7.z / r16.y;
          r7.z = max(6.10351563e-05, r7.z);
          r8.w = (int)r8.w & 0x0000ffff;
          if (enableDitheredShadow != 0) {
            r16.x = -r7.x;
            r17.z = (uint)r8.w;
            r16.y = r8.x;
            r16.z = r7.x;
            r10.yz = float2(0,0);
            while (true) {
              r10.w = cmp((int)r10.z >= 8);
              if (r10.w != 0) break;
              r18.x = dot(icb[r10.z+0].yx, r16.xy);
              r18.y = dot(icb[r10.z+0].yx, r16.yz);
              r17.xy = r18.xy * r7.ww + r15.xy;
              r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r7.z).x;
              r10.y = r10.w * 0.125 + r10.y;
              r10.z = (int)r10.z + 1;
            }
          } else {
            r15.z = (uint)r8.w;
            r10.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r7.z).x;
          }
          r7.z = r10.y * r10.y;
          r7.z = r7.z * r10.y;
        } else {
          r7.z = 1;
        }
        r6.w = r7.z * r6.w;
      } else {
        r7.z = viewmodelSunShadowRaw & 0x0000ffff;
        r7.w = cmp(0 < (uint)r7.z);
        r8.w = ~(int)r0.w;
        r7.w = r7.w ? r8.w : 0;
        if (r7.w != 0) {
          r7.z = (int)r7.z + numLights;
          r7.z = (int)r7.z + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r7.w, r7.z, l(52), t12.xxxx
        r7.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r7.z, l(68), t12.xyzw
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r7.z, l(84), t12.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r7.z, l(132), t12.xyzw
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r7.z, l(148), t12.xyzw
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
        r18.z = samp0[]..swiz;
        r18.w = samp0[]..swiz;
          r8.w = abs(r3.w) * -0.200000003 + 0.400000006;
          r19.xyz = r4.xyz * r8.www + v6.xyz;
          r19.w = 1;
          r15.x = dot(r15.xyzw, r19.xyzw);
          r15.y = dot(r16.xyzw, r19.xyzw);
          r10.yz = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r10.yz = r10.yz + r18.zw;
          r10.yz = r10.yz * r18.xy;
          r15.xy = r7.ww / r17.xz;
          r15.zw = float2(1,1) + -r15.xy;
          r15.zw = cmp(r10.yz >= r15.zw);
          r15.xy = cmp(r15.xy >= r10.yz);
          r15.xy = (int2)r15.xy | (int2)r15.zw;
          r8.w = (int)r15.y | (int)r15.x;
          if (r8.w == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.w, r7.z, l(28), t12.xxxx
          r8.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r7.z, l(100), t12.xyzw
          r15.x = samp0[]..swiz;
          r15.y = samp0[]..swiz;
          r15.z = samp0[]..swiz;
          r15.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xy, r7.z, l(164), t12.xyxx
          r16.x = samp0[]..swiz;
          r16.y = samp0[]..swiz;
            r7.z = dot(r15.xyzw, r19.xyzw);
            r10.yz = saturate(r10.yz);
            r15.xy = r10.yz * r17.xz + r17.yw;
            r7.z = r7.z + r16.x;
            r7.z = r7.z / r16.y;
            r7.z = max(6.10351563e-05, r7.z);
            r8.w = (int)r8.w & 0x0000ffff;
            if (enableDitheredShadow != 0) {
              r16.x = -r7.x;
              r17.z = (uint)r8.w;
              r16.y = r8.x;
              r16.z = r7.x;
              r10.yz = float2(0,0);
              while (true) {
                r10.w = cmp((int)r10.z >= 8);
                if (r10.w != 0) break;
                r18.x = dot(icb[r10.z+0].yx, r16.xy);
                r18.y = dot(icb[r10.z+0].yx, r16.yz);
                r17.xy = r18.xy * r7.ww + r15.xy;
                r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r7.z).x;
                r10.y = r10.w * 0.125 + r10.y;
                r10.z = (int)r10.z + 1;
              }
            } else {
              r15.z = (uint)r8.w;
              r10.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r7.z).x;
            }
            r7.z = r10.y * r10.y;
            r7.z = r7.z * r10.y;
          } else {
            r7.z = 1;
          }
          r6.w = r7.z * r6.w;
        }
      }
      r7.z = -r0.x * 0.5 + 1;
      r7.z = -r4.w * r7.z + 1;
      r7.z = r7.z * r7.z;
      r7.z = -r7.z * 0.620000005 + 0.620000005;
      r7.z = r7.z + -r4.w;
      r7.z = r1.w * r7.z + r4.w;
      r7.z = r7.z * r6.w;
      r3.w = cmp(0 < r3.w);
      r15.xyz = r7.zzz * r9.yzw + r13.xyz;
      r10.yzw = -v6.xyz * r0.zzz + sunConstants.wldDir.xyz;
      r0.z = dot(r10.yzw, r10.yzw);
      r0.z = rsqrt(r0.z);
      r10.yzw = r10.yzw * r0.zzz;
      r0.z = dot(r10.yzw, r6.xyz);
      r7.z = dot(r4.xyz, r10.yzw);
      r7.w = abs(r7.z) * r1.y + -abs(r7.z);
      r7.z = abs(r7.z) * r7.w + 1;
      r4.w = r4.w * r0.y + r1.z;
      r7.z = r7.z * r7.z;
      r4.w = r7.z * r4.w;
      r4.w = rcp(r4.w);
      r4.w = r4.w * r5.w;
      r4.w = r6.w * r4.w;
      r4.w = 0.25 * r4.w;
      r10.yzw = r4.www * r9.yzw + r2.xyz;
      r0.z = saturate(1 + -r0.z);
      r0.z = log2(r0.z);
      r0.z = 3.4000001 * r0.z;
      r0.z = exp2(r0.z);
      r0.z = r4.w * r0.z;
      r16.xyz = r0.zzz * r9.zwy + r14.xyz;
      r15.w = r16.z;
      r13.w = r14.z;
      r13.xyzw = r3.wwww ? r15.xyzw : r13.xyzw;
      r16.zw = r10.yz;
      r14.zw = r2.xy;
      r15.xyzw = r3.wwww ? r16.xyzw : r14.xyzw;
      r2.z = r3.w ? r10.w : r2.z;
      r14.z = r13.w;
      r14.xy = r15.xy;
      r2.xy = r15.zw;
    }
  }
  r15.x = -r7.x;
  r0.z = ~(int)r0.w;
  r0.x = -r0.x * 0.5 + 1;
  r16.xy = float2(0,0);
  r17.w = 0;
  r18.xyz = v6.xyz;
  r18.w = 1;
  r19.w = 1;
  r15.z = r7.x;
  r20.w = 1;
  r21.z = 1;
  r22.w = 1;
  r15.yw = r8.xx;
  r7.y = r15.w;
  r23.w = 1;
  r8.y = r15.x;
  r8.z = r7.x;
  r24.w = 1;
  r25.x = r8.x;
  r25.y = r15.x;
  r25.z = r7.x;
  r26.x = r8.x;
  r26.y = r15.x;
  r26.z = r7.x;
  r27.x = r8.x;
  r27.y = r15.x;
  r27.z = r7.x;
  r9.yzw = r13.xyz;
  r28.xyz = r14.zxy;
  r29.xyz = r2.xyz;
  r3.w = enableDitheredShadow;
  r4.w = 0;
  while (true) {
    r5.w = cmp((uint)r4.w >= numLights);
    if (r5.w != 0) break;
    r16.z = (uint)r4.w >> 5;
    r17.xyz = (int3)r12.xyz + (int3)r16.xyz;
    r5.w = visibleLights.Load(r17.xyzw).x;
    r10.yzw = r9.yzw;
    r17.xyz = r28.xyz;
    r30.xyz = r29.xyz;
    r6.w = r3.w;
    r7.z = r5.w;
    while (true) {
      if (r7.z == 0) break;
      r7.w = firstbitlow((uint)r7.z);
      r8.w = 1 << (int)r7.w;
      r11.w = (int)r7.z & (int)r8.w;
      if (r11.w != 0) {
        r7.z = (int)r7.z ^ (int)r8.w;
        r7.w = (int)r4.w + (int)r7.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r31.xyzw, r7.w, l(0), t11.xyzw
      r31.x = samp0[]..swiz;
      r31.y = samp0[]..swiz;
      r31.z = samp0[]..swiz;
      r31.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r32.xy, r7.w, l(16), t11.xyxx
      r32.x = samp0[]..swiz;
      r32.y = samp0[]..swiz;
        r31.xyz = -v6.xyz + r31.xyz;
        r32.z = r31.w;
        r31.xyz = cmp(abs(r31.xyz) < r32.zxy);
        r8.w = r31.y ? r31.x : 0;
        r8.w = r31.z ? r8.w : 0;
        if (r8.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r7.w, l(0), t12.wxyz
        r31.x = samp0[]..swiz;
        r31.y = samp0[]..swiz;
        r31.z = samp0[]..swiz;
        r31.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r7.w, l(16), t12.zxyw
        r32.x = samp0[]..swiz;
        r32.y = samp0[]..swiz;
        r32.z = samp0[]..swiz;
        r32.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r7.w, l(32), t12.xyzw
        r33.x = samp0[]..swiz;
        r33.y = samp0[]..swiz;
        r33.z = samp0[]..swiz;
        r33.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r7.w, l(48), t12.xyzw
        r34.x = samp0[]..swiz;
        r34.y = samp0[]..swiz;
        r34.z = samp0[]..swiz;
        r34.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r7.w, l(64), t12.yzwx
        r35.x = samp0[]..swiz;
        r35.y = samp0[]..swiz;
        r35.z = samp0[]..swiz;
        r35.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r7.w, l(80), t12.xyzw
        r36.x = samp0[]..swiz;
        r36.y = samp0[]..swiz;
        r36.z = samp0[]..swiz;
        r36.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r7.w, l(96), t12.yzwx
        r37.x = samp0[]..swiz;
        r37.y = samp0[]..swiz;
        r37.z = samp0[]..swiz;
        r37.w = samp0[]..swiz;
          if (3 == 0) r8.w = 0; else if (3+24 < 32) {           r8.w = (uint)r32.w << (32-(3 + 24)); r8.w = (uint)r8.w >> (32-3);          } else r8.w = (uint)r32.w >> 24;
          switch (r8.w) {
            case 4 :            r8.w = cmp(0 < r37.x);
            r38.xy = r36.zw;
            r38.z = r37.w;
            r39.xyz = -r38.xyz * float3(0.5,0.5,0.5) + r31.yzw;
            r40.xyz = -v6.xyz + r39.xyz;
            r11.w = dot(r38.xyz, r40.xyz);
            r12.w = saturate(-r11.w / r37.x);
            r41.xyz = r12.www * r38.xyz + r39.xyz;
            r41.xyz = r8.www ? r41.xyz : r31.yzw;
            r41.xyz = -v6.xyz + r41.xyz;
            r13.w = dot(r41.xyz, r41.xyz);
            r14.w = rsqrt(r13.w);
            r41.xyz = r41.xyz * r14.www;
            r14.w = dot(r4.xyz, r41.xyz);
            r16.z = saturate(r14.w);
            r16.w = cmp(0 < r16.z);
            if (r16.w != 0) {
              r16.w = sqrt(r13.w);
              r21.w = r34.x * r34.x;
              r13.w = r21.w / r13.w;
              r13.w = min(1, r13.w);
              r41.xy = saturate(r16.ww * r33.xz + r33.yw);
              r41.zw = r41.xy * r41.xy;
              r41.xy = r41.xy * float2(-2,-2) + float2(3,3);
              r41.xy = r41.zw * r41.xy;
              r13.w = r41.x * r13.w;
              r13.w = r13.w * r41.y;
              r16.w = cmp(0 < r13.w);
              if (r16.w != 0) {
                if (3 == 0) r16.w = 0; else if (3+27 < 32) {                 r16.w = (uint)r32.w << (32-(3 + 27)); r16.w = (uint)r16.w >> (32-3);                } else r16.w = (uint)r32.w >> 27;
                r16.w = cmp((int)r16.w != 1);
                if (r16.w != 0) {
                  r16.w = abs(r14.w) * -0.200000003 + 0.400000006;
                  r41.xyz = r4.xyz * r16.www + v6.xyz;
                  r41.xyz = r41.xyz + -r35.xyz;
                  r16.w = max(abs(r41.y), abs(r41.z));
                  r16.w = max(abs(r41.x), r16.w);
                  r16.w = r36.x / r16.w;
                  r16.w = r16.w + r36.y;
                  r21.w = dot(r41.xyz, r41.xyz);
                  r21.w = rsqrt(r21.w);
                  r16.w = max(6.10351563e-05, r16.w);
                  r25.w = (int)r32.w & 0x0000ffff;
                  r42.w = (uint)r25.w;
                  r25.w = 0;
                  r26.w = 0;
                  while (true) {
                    r27.w = cmp((int)r26.w >= 8);
                    if (r27.w != 0) break;
                    r43.y = dot(icb[r26.w+0].yx, r15.xy);
                    r43.z = dot(icb[r26.w+0].yx, r15.yz);
                    r43.yz = r43.yz * r34.yy;
                    r43.x = r43.y * r10.x;
                    r43.w = r43.y * r9.x;
                    r42.xyz = r41.xyz * r21.www + r43.xzw;
                    r27.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r42.xyzw, r16.w).x;
                    r25.w = r27.w * 0.125 + r25.w;
                    r26.w = (int)r26.w + 1;
                  }
                } else {
                  r25.w = 1;
                }
                r13.w = r25.w * r13.w;
                r16.w = cmp(0 < r13.w);
                if (r16.w != 0) {
                  r16.w = r32.x * r1.y;
                  r16.w = 0.25 * r16.w;
                  r21.w = dot(r38.xyz, r11.xyz);
                  r26.w = dot(r11.xyz, r40.xyz);
                  r27.w = -r21.w * r21.w + r37.x;
                  r11.w = r21.w * r26.w + -r11.w;
                  r11.w = saturate(r11.w / r27.w);
                  r21.w = r27.w / r37.x;
                  r21.w = 10 * r21.w;
                  r21.w = min(1, r21.w);
                  r11.w = r11.w + -r12.w;
                  r11.w = r21.w * r11.w + r12.w;
                  r38.xyz = r11.www * r38.xyz + r39.xyz;
                  r38.xyz = r8.www ? r38.xyz : r31.yzw;
                  r38.xyz = -v6.xyz + r38.xyz;
                  r8.w = dot(r38.xyz, r38.xyz);
                  r8.w = rsqrt(r8.w);
                  r39.xyz = r38.xyz * r8.www;
                  if (4 == 0) r11.w = 0; else if (4+16 < 32) {                   r11.w = (uint)r32.w << (32-(4 + 16)); r11.w = (uint)r11.w >> (32-4);                  } else r11.w = (uint)r32.w >> 16;
                  r12.w = cmp(0 < (uint)r11.w);
                  r12.w = r0.w ? r12.w : 0;
                  if (r12.w != 0) {
                    r11.w = (int)r11.w + numLights;
                    r11.w = (int)r11.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.w, r11.w, l(52), t12.xxxx
                  r12.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r11.w, l(100), t12.xyzw
                  r40.x = samp0[]..swiz;
                  r40.y = samp0[]..swiz;
                  r40.z = samp0[]..swiz;
                  r40.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r11.w, l(116), t12.xyzw
                  r41.x = samp0[]..swiz;
                  r41.y = samp0[]..swiz;
                  r41.z = samp0[]..swiz;
                  r41.w = samp0[]..swiz;
                    r21.w = abs(r14.w) * -0.200000003 + 0.400000006;
                    r19.xyz = r4.xyz * r21.www + v6.xyz;
                    r21.w = dot(r40.xyzw, r19.xyzw);
                    r26.w = dot(r41.xyzw, r19.xyzw);
                    r27.w = cmp(r26.w < r21.w);
                    if (r27.w == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r11.w, l(68), t12.xyzw
                    r40.x = samp0[]..swiz;
                    r40.y = samp0[]..swiz;
                    r40.z = samp0[]..swiz;
                    r40.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r11.w, l(84), t12.xyzw
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r11.w, l(132), t12.xyzw
                    r42.x = samp0[]..swiz;
                    r42.y = samp0[]..swiz;
                    r42.z = samp0[]..swiz;
                    r42.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r11.w, l(148), t12.xyzw
                    r43.x = samp0[]..swiz;
                    r43.y = samp0[]..swiz;
                    r43.z = samp0[]..swiz;
                    r43.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xy, r11.w, l(164), t12.xyxx
                    r44.x = samp0[]..swiz;
                    r44.y = samp0[]..swiz;
                      r40.x = dot(r40.xyzw, r19.xyzw);
                      r40.y = dot(r41.xyzw, r19.xyzw);
                      r19.xy = r40.xy / r26.ww;
                      r19.xy = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r19.xy = r19.xy + r43.zw;
                      r19.xy = r19.xy * r43.xy;
                      r40.xy = r12.ww / r42.xz;
                      r40.zw = float2(1,1) + -r40.xy;
                      r40.zw = cmp(r19.xy >= r40.zw);
                      r40.xy = cmp(r40.xy >= r19.xy);
                      r40.xy = (int2)r40.xy | (int2)r40.zw;
                      r19.z = (int)r40.y | (int)r40.x;
                      r19.xy = saturate(r19.xy);
                      r40.xy = r19.xy * r42.xz + r42.yw;
                      r19.x = r44.y * r26.w;
                      r19.y = r44.x * r26.w + r21.w;
                      r19.x = r19.y / r19.x;
                    } else {
                      r19.z = -1;
                    }
                    r19.y = (int)r27.w | (int)r19.z;
                    if (r19.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.w, r11.w, l(28), t12.xxxx
                    r11.w = samp0[]..swiz;
                      r19.x = max(6.10351563e-05, r19.x);
                      r11.w = (int)r11.w & 0x0000ffff;
                      if (r6.w != 0) {
                        r41.z = (uint)r11.w;
                        r19.yz = float2(0,0);
                        while (true) {
                          r21.w = cmp((int)r19.z >= 8);
                          if (r21.w != 0) break;
                          r42.x = dot(icb[r19.z+0].yx, r15.xw);
                          r42.y = dot(icb[r19.z+0].xy, r7.xy);
                          r41.xy = r42.xy * r12.ww + r40.xy;
                          r21.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r41.xyz, r19.x).x;
                          r19.y = r21.w * 0.125 + r19.y;
                          r19.z = (int)r19.z + 1;
                        }
                      } else {
                        r40.z = (uint)r11.w;
                        r19.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r40.xyz, r19.x).x;
                      }
                      r11.w = r19.y * r19.y;
                      r11.w = r11.w * r19.y;
                    } else {
                      r11.w = 1;
                    }
                    r13.w = r13.w * r11.w;
                  } else {
                    if (4 == 0) r11.w = 0; else if (4+20 < 32) {                     r11.w = (uint)r32.w << (32-(4 + 20)); r11.w = (uint)r11.w >> (32-4);                    } else r11.w = (uint)r32.w >> 20;
                    r12.w = cmp(0 < (uint)r11.w);
                    r12.w = r12.w ? r0.z : 0;
                    if (r12.w != 0) {
                      r11.w = (int)r11.w + numLights;
                      r11.w = (int)r11.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.w, r11.w, l(52), t12.xxxx
                    r12.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r11.w, l(100), t12.xyzw
                    r40.x = samp0[]..swiz;
                    r40.y = samp0[]..swiz;
                    r40.z = samp0[]..swiz;
                    r40.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r11.w, l(116), t12.xyzw
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                      r19.x = abs(r14.w) * -0.200000003 + 0.400000006;
                      r20.xyz = r4.xyz * r19.xxx + v6.xyz;
                      r19.x = dot(r40.xyzw, r20.xyzw);
                      r19.z = dot(r41.xyzw, r20.xyzw);
                      r21.w = cmp(r19.z < r19.x);
                      if (r21.w == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r11.w, l(68), t12.xyzw
                      r40.x = samp0[]..swiz;
                      r40.y = samp0[]..swiz;
                      r40.z = samp0[]..swiz;
                      r40.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r11.w, l(84), t12.xyzw
                      r41.x = samp0[]..swiz;
                      r41.y = samp0[]..swiz;
                      r41.z = samp0[]..swiz;
                      r41.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r11.w, l(132), t12.xyzw
                      r42.x = samp0[]..swiz;
                      r42.y = samp0[]..swiz;
                      r42.z = samp0[]..swiz;
                      r42.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r11.w, l(148), t12.xyzw
                      r43.x = samp0[]..swiz;
                      r43.y = samp0[]..swiz;
                      r43.z = samp0[]..swiz;
                      r43.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xy, r11.w, l(164), t12.xyxx
                      r44.x = samp0[]..swiz;
                      r44.y = samp0[]..swiz;
                        r40.x = dot(r40.xyzw, r20.xyzw);
                        r40.y = dot(r41.xyzw, r20.xyzw);
                        r20.xy = r40.xy / r19.zz;
                        r20.xy = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                        r20.xy = r20.xy + r43.zw;
                        r20.xy = r20.xy * r43.xy;
                        r40.xy = r12.ww / r42.xz;
                        r40.zw = float2(1,1) + -r40.xy;
                        r40.zw = cmp(r20.xy >= r40.zw);
                        r40.xy = cmp(r40.xy >= r20.xy);
                        r40.xy = (int2)r40.xy | (int2)r40.zw;
                        r20.z = (int)r40.y | (int)r40.x;
                        r20.xy = saturate(r20.xy);
                        r40.xy = r20.xy * r42.xz + r42.yw;
                        r20.x = r44.y * r19.z;
                        r19.x = r44.x * r19.z + r19.x;
                        r19.x = r19.x / r20.x;
                      } else {
                        r20.z = -1;
                      }
                      r19.z = (int)r21.w | (int)r20.z;
                      if (r19.z == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.w, r11.w, l(28), t12.xxxx
                      r11.w = samp0[]..swiz;
                        r19.x = max(6.10351563e-05, r19.x);
                        r11.w = (int)r11.w & 0x0000ffff;
                        if (r6.w != 0) {
                          r20.z = (uint)r11.w;
                          r19.z = 0;
                          r21.w = 0;
                          while (true) {
                            r26.w = cmp((int)r21.w >= 8);
                            if (r26.w != 0) break;
                            r41.x = dot(icb[r21.w+0].xy, r8.xy);
                            r41.y = dot(icb[r21.w+0].yx, r8.xz);
                            r20.xy = r41.xy * r12.ww + r40.xy;
                            r20.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r19.x).x;
                            r19.z = r20.x * 0.125 + r19.z;
                            r21.w = (int)r21.w + 1;
                          }
                        } else {
                          r40.z = (uint)r11.w;
                          r19.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r40.xyz, r19.x).x;
                        }
                        r11.w = r19.z * r19.z;
                        r11.w = r11.w * r19.z;
                      } else {
                        r11.w = 1;
                      }
                      r13.w = r13.w * r11.w;
                    }
                  }
                  r11.w = -r16.z * r0.x + 1;
                  r11.w = r11.w * r11.w;
                  r11.w = -r11.w * 0.620000005 + 0.620000005;
                  r11.w = r11.w + -r16.z;
                  r11.w = r1.w * r11.w + r16.z;
                  r11.w = r11.w * r13.w;
                  r32.x = r31.x;
                  r12.w = cmp(0 < r14.w);
                  r20.xyz = r11.www * r32.xyz + r10.yzw;
                  r11.w = saturate(dot(r4.xyz, r39.xyz));
                  r38.xyz = r38.xyz * r8.www + r6.xyz;
                  r8.w = dot(r38.xyz, r38.xyz);
                  r8.w = rsqrt(r8.w);
                  r38.xyz = r38.xyz * r8.www;
                  r8.w = dot(r38.xyz, r6.xyz);
                  r14.w = dot(r4.xyz, r38.xyz);
                  r16.z = abs(r14.w) * r1.y + -abs(r14.w);
                  r14.w = abs(r14.w) * r16.z + 1;
                  r16.z = r11.w * r0.y + r1.z;
                  r14.w = r14.w * r14.w;
                  r14.w = r14.w * r16.z;
                  r14.w = rcp(r14.w);
                  r11.w = r11.w * r16.w;
                  r11.w = r14.w * r11.w;
                  r11.w = r11.w * r13.w;
                  r38.xyz = r11.www * r32.xyz + r30.xyz;
                  r8.w = saturate(1 + -r8.w);
                  r8.w = log2(r8.w);
                  r8.w = 3.4000001 * r8.w;
                  r8.w = exp2(r8.w);
                  r8.w = r11.w * r8.w;
                  r39.xyz = r8.www * r32.xyz + r17.xyz;
                  r10.yzw = r12.www ? r20.xyz : r10.yzw;
                  r17.xyz = r12.www ? r39.xyz : r17.xyz;
                  r30.xyz = r12.www ? r38.xyz : r30.xyz;
                }
              }
            }
            break;
            case 2 :            r20.xy = r34.zw;
            r20.z = r35.w;
            r20.xyz = -v6.xyz + r20.xyz;
            r8.w = dot(r20.xyz, r20.xyz);
            r8.w = rsqrt(r8.w);
            r38.xyz = r20.xyz * r8.www;
            r11.w = dot(r4.xyz, r38.xyz);
            r12.w = saturate(r11.w);
            r13.w = cmp(0 < r12.w);
            if (r13.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r7.w, l(112), t12.yzwx
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r7.w, l(128), t12.zxyw
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
              r40.xyz = r38.xyz;
              r40.w = r39.y;
              r13.w = dot(r40.xyzw, r18.xyzw);
              r14.w = cmp(r13.w < 1);
              if (r14.w != 0) {
                r41.xyz = float3(1,1,1);
                r14.w = 0;
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r7.w, l(172), t12.yzwx
              r42.x = samp0[]..swiz;
              r42.y = samp0[]..swiz;
              r42.z = samp0[]..swiz;
              r42.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r7.w, l(188), t12.wxyz
              r43.x = samp0[]..swiz;
              r43.y = samp0[]..swiz;
              r43.z = samp0[]..swiz;
              r43.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r7.w, l(204), t12.xyzw
              r44.x = samp0[]..swiz;
              r44.y = samp0[]..swiz;
              r44.z = samp0[]..swiz;
              r44.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.z, r7.w, l(236), t12.xxxx
              r16.z = samp0[]..swiz;
                r45.xyz = -v6.xyz + r31.yzw;
                r16.w = r34.x * r34.x;
                r19.x = dot(r45.xyz, r45.xyz);
                r16.w = r16.w / r19.x;
                r16.w = min(1, r16.w);
                r33.xy = saturate(r13.ww * r33.xz + r33.yw);
                r33.zw = r33.xy * r33.xy;
                r33.xy = r33.xy * float2(-2,-2) + float2(3,3);
                r33.xy = r33.zw * r33.xy;
                r16.w = r33.x * r16.w;
                r16.w = r16.w * r33.y;
                r35.w = r36.x;
                r33.x = dot(r35.xyzw, r18.xyzw);
                r45.xyz = r36.yzw;
                r45.w = r37.w;
                r33.y = dot(r45.xyzw, r18.xyzw);
                r21.xy = r33.xy / r13.ww;
                r13.w = cmp(r42.w < 0.00048828125);
                if (r13.w != 0) {
                  r43.y = r44.x;
                  r33.xy = saturate(abs(r21.xy) * r43.zw + r43.xy);
                  r33.zw = r33.xy * r33.xy;
                  r33.xy = r33.xy * float2(-2,-2) + float2(3,3);
                  r33.xy = r33.zw * r33.xy;
                  r13.w = r33.x * r33.y;
                } else {
                  r42.w = r43.y;
                  r33.xyzw = saturate(r42.xyzw * abs(r21.yyxx));
                  r33.xyzw = log2(r33.xyzw);
                  r33.xyzw = r43.xxxx * r33.xyzw;
                  r33.xyzw = exp2(r33.xyzw);
                  r33.xy = r33.xy + r33.zw;
                  r33.xy = log2(r33.xy);
                  r33.xy = r44.xx * r33.xy;
                  r33.xy = exp2(r33.xy);
                  r19.x = r43.z * r33.x;
                  r21.w = r43.w * r33.y + -1;
                  r19.x = r43.w * r33.y + -r19.x;
                  r19.x = saturate(r21.w / r19.x);
                  r21.w = r19.x * r19.x;
                  r19.x = r19.x * -2 + 3;
                  r13.w = r21.w * r19.x;
                }
                r14.w = r16.w * r13.w;
                r13.w = (int)r16.z & 255;
                if (r13.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyz, r7.w, l(220), t12.xyzx
                r33.x = samp0[]..swiz;
                r33.y = samp0[]..swiz;
                r33.z = samp0[]..swiz;
                  r16.z = dot(r44.yzw, r21.xyz);
                  r16.w = dot(r33.xyz, r21.xyz);
                  r33.xy = frac(r16.zw);
                  r13.w = (int)r13.w + -1;
                  r33.z = (uint)r13.w;
                  r41.xyz = gCookieArray.SampleLevel(samplerLinear_s, r33.xyz, 0).xyz;
                } else {
                  r41.xyz = float3(1,1,1);
                }
              }
              r31.yz = r32.yz;
              r21.xyw = r31.xyz * r41.xyz;
              r13.w = cmp(0 < r14.w);
              if (r13.w != 0) {
                if (3 == 0) r13.w = 0; else if (3+27 < 32) {                 r13.w = (uint)r32.w << (32-(3 + 27)); r13.w = (uint)r13.w >> (32-3);                } else r13.w = (uint)r32.w >> 27;
                r13.w = cmp((int)r13.w != 1);
                if (r13.w != 0) {
                  r13.w = abs(r11.w) * -0.200000003 + 0.400000006;
                  r22.xyz = r4.xyz * r13.www + v6.xyz;
                  r38.xyz = r37.xyz;
                  r13.w = dot(r38.xyzw, r22.xyzw);
                  r16.z = dot(r40.xyzw, r22.xyzw);
                  r16.w = cmp(r16.z >= r13.w);
                  if (r16.w != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.y, r7.w, l(144), t12.xxxx
                  r39.y = samp0[]..swiz;
                    r35.w = r36.x;
                    r31.x = dot(r35.xyzw, r22.xyzw);
                    r37.xyz = r36.yzw;
                    r31.y = dot(r37.xyzw, r22.xyzw);
                    r22.xy = r31.xy / r16.zz;
                    r22.xy = saturate(r22.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                    r22.xy = r22.xy * r39.zw + r39.xy;
                    r7.w = r13.w / r16.z;
                    r7.w = max(6.10351563e-05, r7.w);
                    r13.w = (int)r32.w & 0x0000ffff;
                    if (r6.w != 0) {
                      r31.z = (uint)r13.w;
                      r16.zw = float2(0,0);
                      while (true) {
                        r19.x = cmp((int)r16.w >= 8);
                        if (r19.x != 0) break;
                        r33.x = dot(icb[r16.w+0].xy, r25.xy);
                        r33.y = dot(icb[r16.w+0].yx, r25.xz);
                        r31.xy = r33.xy * r34.yy + r22.xy;
                        r19.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r31.xyz, r7.w).x;
                        r16.z = r19.x * 0.125 + r16.z;
                        r16.w = (int)r16.w + 1;
                      }
                    } else {
                      r22.z = (uint)r13.w;
                      r16.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r7.w).x;
                    }
                    r7.w = r16.z * r16.z;
                    r7.w = r7.w * r16.z;
                  } else {
                    r7.w = 1;
                  }
                } else {
                  r7.w = 1;
                }
                r7.w = r14.w * r7.w;
                r13.w = cmp(0 < r7.w);
                if (r13.w != 0) {
                  r13.w = r32.x * r1.y;
                  r13.w = r13.w * r12.w;
                  if (4 == 0) r14.w = 0; else if (4+16 < 32) {                   r14.w = (uint)r32.w << (32-(4 + 16)); r14.w = (uint)r14.w >> (32-4);                  } else r14.w = (uint)r32.w >> 16;
                  r16.w = cmp(0 < (uint)r14.w);
                  r16.w = r0.w ? r16.w : 0;
                  if (r16.w != 0) {
                    r14.w = (int)r14.w + numLights;
                    r14.w = (int)r14.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.w, r14.w, l(52), t12.xxxx
                  r16.w = samp0[]..swiz;
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
                    r19.x = abs(r11.w) * -0.200000003 + 0.400000006;
                    r23.xyz = r4.xyz * r19.xxx + v6.xyz;
                    r22.x = dot(r31.xyzw, r23.xyzw);
                    r22.y = dot(r33.xyzw, r23.xyzw);
                    r19.x = dot(r34.xyzw, r23.xyzw);
                    r22.z = dot(r35.xyzw, r23.xyzw);
                    r23.x = cmp(r22.z < r19.x);
                    r22.xy = r22.xy / r22.zz;
                    r22.xy = r22.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r22.xy = r22.xy + r37.zw;
                    r22.xy = r22.xy * r37.xy;
                    r23.yz = r16.ww / r36.xz;
                    r31.xy = float2(1,1) + -r23.yz;
                    r31.xy = cmp(r22.xy >= r31.xy);
                    r23.yz = cmp(r23.yz >= r22.xy);
                    r23.yz = (int2)r23.yz | (int2)r31.xy;
                    r23.y = (int)r23.z | (int)r23.y;
                    r23.x = (int)r23.x | (int)r23.y;
                    if (r23.x == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.x, r14.w, l(28), t12.xxxx
                    r23.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.yz, r14.w, l(164), t12.xxyx
                    r23.y = samp0[]..swiz;
                    r23.z = samp0[]..swiz;
                      r22.xy = saturate(r22.xy);
                      r31.xy = r22.xy * r36.xz + r36.yw;
                      r14.w = r23.z * r22.z;
                      r19.x = r23.y * r22.z + r19.x;
                      r14.w = r19.x / r14.w;
                      r14.w = max(6.10351563e-05, r14.w);
                      r19.x = r23.x ? 0.000000 : 0;
                      if (r6.w != 0) {
                        r22.z = (uint)r19.x;
                        r23.xy = float2(0,0);
                        while (true) {
                          r23.z = cmp((int)r23.y >= 8);
                          if (r23.z != 0) break;
                          r32.x = dot(icb[r23.y+0].xy, r26.xy);
                          r32.y = dot(icb[r23.y+0].yx, r26.xz);
                          r22.xy = r32.xy * r16.ww + r31.xy;
                          r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r14.w).x;
                          r23.x = r22.x * 0.125 + r23.x;
                          r23.y = (int)r23.y + 1;
                        }
                      } else {
                        r31.z = (uint)r19.x;
                        r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r31.xyz, r14.w).x;
                      }
                      r14.w = r23.x * r23.x;
                      r14.w = r14.w * r23.x;
                    } else {
                      r14.w = 1;
                    }
                    r7.w = r14.w * r7.w;
                  } else {
                    if (4 == 0) r14.w = 0; else if (4+20 < 32) {                     r14.w = (uint)r32.w << (32-(4 + 20)); r14.w = (uint)r14.w >> (32-4);                    } else r14.w = (uint)r32.w >> 20;
                    r16.w = cmp(0 < (uint)r14.w);
                    r16.w = r16.w ? r0.z : 0;
                    if (r16.w != 0) {
                      r14.w = (int)r14.w + numLights;
                      r14.w = (int)r14.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.w, r14.w, l(52), t12.xxxx
                    r16.w = samp0[]..swiz;
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
                      r19.x = abs(r11.w) * -0.200000003 + 0.400000006;
                      r24.xyz = r4.xyz * r19.xxx + v6.xyz;
                      r22.x = dot(r31.xyzw, r24.xyzw);
                      r22.y = dot(r32.xyzw, r24.xyzw);
                      r19.x = dot(r33.xyzw, r24.xyzw);
                      r22.z = dot(r34.xyzw, r24.xyzw);
                      r23.y = cmp(r22.z < r19.x);
                      r22.xy = r22.xy / r22.zz;
                      r22.xy = r22.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r22.xy = r22.xy + r36.zw;
                      r22.xy = r22.xy * r36.xy;
                      r24.xy = r16.ww / r35.xz;
                      r31.xy = float2(1,1) + -r24.xy;
                      r31.xy = cmp(r22.xy >= r31.xy);
                      r24.xy = cmp(r24.xy >= r22.xy);
                      r24.xy = (int2)r24.xy | (int2)r31.xy;
                      r23.z = (int)r24.y | (int)r24.x;
                      r23.y = (int)r23.y | (int)r23.z;
                      if (r23.y == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.y, r14.w, l(28), t12.xxxx
                      r23.y = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.xy, r14.w, l(164), t12.xyxx
                      r24.x = samp0[]..swiz;
                      r24.y = samp0[]..swiz;
                        r22.xy = saturate(r22.xy);
                        r31.xy = r22.xy * r35.xz + r35.yw;
                        r14.w = r24.y * r22.z;
                        r19.x = r24.x * r22.z + r19.x;
                        r14.w = r19.x / r14.w;
                        r14.w = max(6.10351563e-05, r14.w);
                        r19.x = r23.y ? 0.000000 : 0;
                        if (r6.w != 0) {
                          r22.z = (uint)r19.x;
                          r23.yz = float2(0,0);
                          while (true) {
                            r24.x = cmp((int)r23.z >= 8);
                            if (r24.x != 0) break;
                            r24.x = dot(icb[r23.z+0].xy, r27.xy);
                            r24.y = dot(icb[r23.z+0].yx, r27.xz);
                            r22.xy = r24.xy * r16.ww + r31.xy;
                            r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r14.w).x;
                            r23.y = r22.x * 0.125 + r23.y;
                            r23.z = (int)r23.z + 1;
                          }
                        } else {
                          r31.z = (uint)r19.x;
                          r23.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r31.xyz, r14.w).x;
                        }
                        r14.w = r23.y * r23.y;
                        r14.w = r14.w * r23.y;
                      } else {
                        r14.w = 1;
                      }
                      r7.w = r14.w * r7.w;
                    }
                  }
                  r14.w = -r12.w * r0.x + 1;
                  r14.w = r14.w * r14.w;
                  r14.w = -r14.w * 0.620000005 + 0.620000005;
                  r14.w = r14.w + -r12.w;
                  r14.w = r1.w * r14.w + r12.w;
                  r14.w = r14.w * r7.w;
                  r11.w = cmp(0 < r11.w);
                  r22.xyz = r14.www * r21.xyw + r10.yzw;
                  r20.xyz = r20.xyz * r8.www + r6.xyz;
                  r8.w = dot(r20.xyz, r20.xyz);
                  r8.w = rsqrt(r8.w);
                  r20.xyz = r20.xyz * r8.www;
                  r8.w = dot(r20.xyz, r6.xyz);
                  r14.w = dot(r4.xyz, r20.xyz);
                  r16.w = abs(r14.w) * r1.y + -abs(r14.w);
                  r14.w = abs(r14.w) * r16.w + 1;
                  r12.w = r12.w * r0.y + r1.z;
                  r14.w = r14.w * r14.w;
                  r12.w = r14.w * r12.w;
                  r12.w = rcp(r12.w);
                  r12.w = r12.w * r13.w;
                  r7.w = r12.w * r7.w;
                  r7.w = 0.25 * r7.w;
                  r20.xyz = r7.www * r21.xyw + r30.xyz;
                  r8.w = saturate(1 + -r8.w);
                  r8.w = log2(r8.w);
                  r8.w = 3.4000001 * r8.w;
                  r8.w = exp2(r8.w);
                  r7.w = r8.w * r7.w;
                  r21.xyw = r7.www * r21.xyw + r17.xyz;
                  r10.yzw = r11.www ? r22.xyz : r10.yzw;
                  r17.xyz = r11.www ? r21.xyw : r17.xyz;
                  r30.xyz = r11.www ? r20.xyz : r30.xyz;
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
    r9.yzw = r10.yzw;
    r28.xyz = r17.xyz;
    r29.xyz = r30.xyz;
    r4.w = (int)r4.w + 32;
  }
  r0.xyz = float3(1,1,1) + -r5.xyz;
  r0.xyz = r28.xyz * r0.xyz;
  r0.xyz = r29.xyz * r5.xyz + r0.xyz;
  r0.xyz = r9.yzw * r3.xyz + r0.xyz;
  r0.w = log2(r2.w);
  r0.w = 3.4000001 * r0.w;
  r0.w = exp2(r0.w);
  r1.y = 1 + -r1.x;
  r1.w = r0.w * r1.y + r1.x;
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
    r2.xyz = r2.xyz * r1.www;
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
    r3.xyz = r3.xyz * r1.www + -r0.xyz;
    r2.xyz = r0.www * r3.xyz + r0.xyz;
  }
  r0.xyz = relHDRExposure.yyy * r2.xyz;
  r2.xyz = cmp(r0.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r0.xyz = r2.xyz ? r0.xyz : 0;
  r0.xyz = min(float3(65024,65024,64512), r0.xyz);
  r1.xyz = max(float3(0,0,0), r0.xyz);
  r2.x = (int)r1.w & 0x7f800000;
  r2.x = cmp((int)r2.x == 0x7f800000);
  r3.xyzw = cmp(r1.xyzw == float4(0,0,0,0));
  r2.yz = r3.zw ? r3.xy : 0;
  r2.y = r2.z ? r2.y : 0;
  r2.x = (int)r2.y | (int)r2.x;
  if (r2.x == 0) {
    r2.xy = (uint2)v0.xy;
    bitmask.x = ((~(-1 << 1)) << 16) & 0xffffffff;  r3.x = (((uint)zFeatherComputeSprites << 16) & bitmask.x) | ((uint)0 & ~bitmask.x);
    r3.x = (int)r3.x + 1;
    // Needs manual fix for instruction:
    imm_atomic_iadd r3.x, u6, r2.xyxx, r3.x
    InterlockedAdd(dest, imm_value, orig_value);
    r2.zw = (int2)r3.xx & int2(65535,65535);
    r3.x = cmp((uint)r2.w < oitMaxEntries);
    if (r3.x != 0) {
      r3.x = max(r1.y, r1.z);
      r3.x = max(r3.x, r1.x);
      r3.x = (int)r3.x & 0x7f800000;
      r3.x = (int)r3.x + 0x00800000;
      r1.xyz = r3.xxx + r1.xyz;
      if (8 == 0) r1.x = 0; else if (8+15 < 32) {       r1.x = (uint)r1.x << (32-(8 + 15)); r1.x = (uint)r1.x >> (32-8);      } else r1.x = (uint)r1.x >> 15;
      r1.yz = (uint2)r1.yz >> int2(15,15);
      bitmask.y = ((~(-1 << 8)) << 8) & 0xffffffff;  r1.y = (((uint)r1.y << 8) & bitmask.y) | ((uint)0 & ~bitmask.y);
      bitmask.z = ((~(-1 << 8)) << 16) & 0xffffffff;  r1.z = (((uint)r1.z << 16) & bitmask.z) | ((uint)0 & ~bitmask.z);
      r1.x = (int)r1.y + (int)r1.x;
      r1.x = (int)r1.z + (int)r1.x;
      r1.y = (uint)r3.x << 1;
      r3.xzw = (int3)r1.yyy + (int3)r1.xxx;
      r1.x = saturate(r1.w);
      r1.x = 2046 * r1.x;
      r1.x = (uint)r1.x;
      r1.y = (uint)v0.z << 2;
      r1.x = (int)r1.x & 2046;
      bitmask.x = ((~(-1 << 11)) << 0) & 0xffffffff;  r1.x = (((uint)r1.x << 0) & bitmask.x) | ((uint)r1.y & ~bitmask.x);
      bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r3.y = (((uint)zFeatherComputeSprites << 0) & bitmask.y) | ((uint)r1.x & ~bitmask.y);
    // No code for instruction (needs manual fix):
        store_uav_typed u7.xyzw, r2.xyzw, r3.xyzw
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