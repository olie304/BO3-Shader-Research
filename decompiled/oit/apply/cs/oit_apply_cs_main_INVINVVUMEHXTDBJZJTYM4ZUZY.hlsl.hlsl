// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:00 2021

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

SamplerState computeSpritesSampler_s : register(s0);
SamplerState computeSpritesPointSampler_s : register(s1);
Texture2D<float4> floatZSampler : register(t0);
StructuredBuffer<spritePos> spritePos : register(t1);
StructuredBuffer<spriteData> spriteData : register(t2);
StructuredBuffer<spriteExtra> spriteExtra : register(t3);
Texture2D<float4> frameBuffer : register(t21);
Texture2D<float4> oitFallbackBuffer : register(t22);
Texture2DArray<uint2> oit_Nodes : register(t24);
Texture2DArray<uint> spriteCullRough : register(t25);
Texture2DArray<uint> spriteCullRoughRough : register(t26);
Texture2DArray<float4> lmapTex : register(t29);
Texture2DArray<float4> materialTexBC7 : register(t42);
Texture2DArray<float4> materialTexBC3 : register(t43);
Texture2DArray<float4> materialTexMask : register(t45);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main()
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t1, 32
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t2, 64
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t3, 48
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u2
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u3
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u5
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (uint,uint,uint,uint) u6
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u7
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[4];
  float4 x1[4];
  float4 x2[4];
  float4 x3[4];
  float4 x4[4];
  float4 x5[4];
  float4 x6[4];
  float4 x7[4];
  float4 x8[4];
  float4 x9[4];
// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_structured g0, 20, 64
// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_structured g1, 20, 64
// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = (uint2)renderTargetSize.xy;
  r0.xy = cmp((uint2)r0.xy < (uint2)vThreadID.xy);
  r0.x = (int)r0.y | (int)r0.x;
  if (r0.x != 0) {
    return;
  }
// No code for instruction (needs manual fix):
ld_uav_typed_indexable(texture2d)(uint,uint,uint,uint) r0.x, vThreadID.xyyy, u6.xyzw
  r0.y = cmp((int)r0.x == 0);
  r0.z = cmp((int)computeSpriteControl.x == 0);
  r0.y = r0.z ? r0.y : 0;
  if (r0.y != 0) {
  // No code for instruction (needs manual fix):
    store_uav_typed u4.xyzw, vThreadID.xyyy, l(1.000000,1.000000,1.000000,1.000000)
    r1.xy = vThreadID.xy;
    r1.zw = float2(0,0);
    r0.y = floatZSampler.Load(r1.xyz).x;
  // No code for instruction (needs manual fix):
    store_uav_typed u7.xyzw, vThreadID.xyyy, r0.yyyy
    return;
  }
  r0.y = r0.x ? 0.000000 : 0;
  r0.y = min(oitMaxEntries, (uint)r0.y);
  floatZSampler[vThreadIDInGroupFlattened.x].0 = g0.xyzw;
  floatZSampler[vThreadIDInGroupFlattened.x].0 = g1.xyzw;
  if (r0.y != 0) {
    r1.xyz = cmp(int3(1,2,3) < (uint3)r0.yyy);
    if (r0.y != 0) {
      r2.xy = vThreadID.xy;
      r2.zw = float2(0,0);
      r0.z = oit_Nodes.Load(r2.xyzw).y;
      r2.xyz = (int3)r0.zzz & int3(-2048,1,2046);
      r3.x = r2.y ? r0.z : 0;
      r0.w = (uint)r2.z;
      r1.w = -r0.w * 0.000488758553 + 1;
      r0.w = cmp(409.200012 < r0.w);
      if (r0.w != 0) {
        r0.w = (uint)r0.z >> 2;
        r0.w = (int)r0.w & 0x3ffffe00;
        r2.y = cmp(r0.w >= 0.000492187508);
        if (r2.y != 0) {
          r0.w = 1 + -r0.w;
          floatZSampler[vThreadIDInGroupFlattened.x].16 = g0.x;
          floatZSampler[vThreadIDInGroupFlattened.x].16 = g1.x;
          r2.y = 3;
          while (true) {
            r2.z = cmp((int)r2.y < 0);
            if (r2.z != 0) break;
            r2.z = cmp((int)r2.y >= 0);
            if (r2.z != 0) {
              r2.z = (uint)r2.y << 2;
              r2.w = (int)r2.z + 4;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r3.z, vThreadIDInGroupFlattened.x, r2.z, g0.xxxx
            r3.z = computeSpritesSampler[]..swiz;
              floatZSampler[vThreadIDInGroupFlattened.x].r2.w = g0.x;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r2.z, vThreadIDInGroupFlattened.x, r2.z, g1.xxxx
            r2.z = computeSpritesSampler[]..swiz;
              r2.z = r2.z * r1.w;
              floatZSampler[vThreadIDInGroupFlattened.x].r2.w = g1.x;
            }
            r2.y = (int)r2.y + -1;
          }
          floatZSampler[vThreadIDInGroupFlattened.x].0 = g0.x;
          floatZSampler[vThreadIDInGroupFlattened.x].0 = g1.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured r0.w, vThreadIDInGroupFlattened.x, l(16), g0.xxxx
        r0.w = computeSpritesSampler[]..swiz;
          r0.w = cmp(r0.w != 1000000015047466219876688855040.000000);
          if (r0.w != 0) {
            r0.w = 2;
            while (true) {
              r2.y = cmp((int)r0.w >= 4);
              if (r2.y != 0) break;
              r2.y = (uint)r0.w << 2;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r2.z, vThreadIDInGroupFlattened.x, r2.y, g0.xxxx
            r2.z = computeSpritesSampler[]..swiz;
              r2.y = (int)r2.y + -4;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r2.w, vThreadIDInGroupFlattened.x, r2.y, g0.xxxx
            r2.w = computeSpritesSampler[]..swiz;
              r2.z = r2.z + -r2.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r2.yw, vThreadIDInGroupFlattened.x, r2.y, g1.xxxy
            r2.y = computeSpritesSampler[]..swiz;
            r2.w = computeSpritesSampler[]..swiz;
              r2.y = r2.y + -r2.w;
              r2.y = r2.z * r2.y;
              x0[r0.w+0].x = r2.y;
              r0.w = (int)r0.w + 1;
            }
            r0.w = x0[2].x;
            r2.y = x0[3].x;
            r0.w = cmp(r2.y < r0.w);
            r2.yz = r0.ww ? float2(4.20389539e-45,2.80259693e-45) : float2(2.80259693e-45,1.40129846e-45);
            r0.w = 2;
            while (true) {
              r2.w = cmp((int)r0.w >= 4);
              if (r2.w != 0) break;
              r2.w = cmp((int)r0.w >= (int)r2.y);
              if (r2.w != 0) {
                r2.w = (uint)r0.w << 2;
                r3.z = (int)r2.w + 4;
              // Known bad code for instruction (needs manual fix):
                            ld_structured r3.z, vThreadIDInGroupFlattened.x, r3.z, g0.xxxx
              r3.z = computeSpritesSampler[]..swiz;
                floatZSampler[vThreadIDInGroupFlattened.x].r2.w = g0.x;
              }
              r0.w = (int)r0.w + 1;
            }
            r0.w = 1;
            while (true) {
              r2.y = cmp((int)r0.w >= 4);
              if (r2.y != 0) break;
              r2.y = cmp((int)r0.w >= (int)r2.z);
              if (r2.y != 0) {
                r2.y = (uint)r0.w << 2;
                r2.w = (int)r2.y + 4;
              // Known bad code for instruction (needs manual fix):
                            ld_structured r2.w, vThreadIDInGroupFlattened.x, r2.w, g1.xxxx
              r2.w = computeSpritesSampler[]..swiz;
                floatZSampler[vThreadIDInGroupFlattened.x].r2.y = g1.x;
              }
              r0.w = (int)r0.w + 1;
            }
          }
        }
      } else {
        r0.z = 0;
      }
    } else {
      r2.x = -2048;
      r1.w = 1;
      r3.x = 0;
      r0.z = 0;
    }
    if (r1.x != 0) {
      r4.xy = vThreadID.xy;
      r4.zw = float2(1.40129846e-45,0);
      r0.w = oit_Nodes.Load(r4.xyzw).y;
      r2.yz = (int2)r0.ww & int2(1,2046);
      r4.x = max((uint)r3.x, (uint)r0.w);
      r4.y = min((uint)r0.w, (uint)r3.x);
      r3.y = 0;
      r3.xy = r2.yy ? r4.xy : r3.xy;
      r1.x = (uint)r2.z;
      r2.y = -r1.x * 0.000488758553 + 1;
      r1.w = r2.y * r1.w;
      r1.x = cmp(409.200012 < r1.x);
      if (r1.x != 0) {
        r0.z = max((uint)r0.z, (uint)r0.w);
        r1.x = (uint)r0.w >> 2;
        r1.x = (int)r1.x & 0x3ffffe00;
        r2.z = cmp(r1.x >= 0.000492187508);
        if (r2.z != 0) {
          r1.x = 1 + -r1.x;
          r4.y = 4;
          r2.zw = float2(5.60519386e-45,0);
          while (true) {
            r3.z = cmp((int)r2.w >= 4);
            if (r3.z != 0) break;
            r3.z = (uint)r2.w << 2;
          // Known bad code for instruction (needs manual fix):
                    ld_structured r3.z, vThreadIDInGroupFlattened.x, r3.z, g0.xxxx
          r3.z = computeSpritesSampler[]..swiz;
            r3.z = cmp(r3.z >= r1.x);
            if (r3.z != 0) {
              r2.z = r2.w;
              break;
            }
            r4.x = (int)r2.w + 1;
            r2.zw = r4.yx;
          }
          floatZSampler[vThreadIDInGroupFlattened.x].16 = g0.x;
          floatZSampler[vThreadIDInGroupFlattened.x].16 = g1.x;
          r2.w = (uint)r2.z << 2;
          r3.z = (int)r2.w + -4;
        // Known bad code for instruction (needs manual fix):
                ld_structured r3.z, vThreadIDInGroupFlattened.x, r3.z, g1.xxxx
        r3.z = computeSpritesSampler[]..swiz;
          r3.z = r2.z ? r3.z : 1;
          r3.w = 3;
          while (true) {
            r4.x = cmp((int)r3.w < 0);
            if (r4.x != 0) break;
            r4.x = cmp((int)r3.w >= (int)r2.z);
            if (r4.x != 0) {
              r4.x = (uint)r3.w << 2;
              r4.y = (int)r4.x + 4;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r4.z, vThreadIDInGroupFlattened.x, r4.x, g0.xxxx
            r4.z = computeSpritesSampler[]..swiz;
              floatZSampler[vThreadIDInGroupFlattened.x].r4.y = g0.x;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r4.x, vThreadIDInGroupFlattened.x, r4.x, g1.xxxx
            r4.x = computeSpritesSampler[]..swiz;
              r4.x = r4.x * r2.y;
              floatZSampler[vThreadIDInGroupFlattened.x].r4.y = g1.x;
            }
            r3.w = (int)r3.w + -1;
          }
          floatZSampler[vThreadIDInGroupFlattened.x].r2.w = g0.x;
          r1.x = r3.z * r2.y;
          floatZSampler[vThreadIDInGroupFlattened.x].r2.w = g1.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured r1.x, vThreadIDInGroupFlattened.x, l(16), g0.xxxx
        r1.x = computeSpritesSampler[]..swiz;
          r1.x = cmp(r1.x != 1000000015047466219876688855040.000000);
          if (r1.x != 0) {
            r1.x = 2;
            while (true) {
              r2.y = cmp((int)r1.x >= 4);
              if (r2.y != 0) break;
              r2.y = (uint)r1.x << 2;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r2.z, vThreadIDInGroupFlattened.x, r2.y, g0.xxxx
            r2.z = computeSpritesSampler[]..swiz;
              r2.y = (int)r2.y + -4;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r2.w, vThreadIDInGroupFlattened.x, r2.y, g0.xxxx
            r2.w = computeSpritesSampler[]..swiz;
              r2.z = r2.z + -r2.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r2.yw, vThreadIDInGroupFlattened.x, r2.y, g1.xxxy
            r2.y = computeSpritesSampler[]..swiz;
            r2.w = computeSpritesSampler[]..swiz;
              r2.y = r2.y + -r2.w;
              r2.y = r2.z * r2.y;
              x1[r1.x+0].x = r2.y;
              r1.x = (int)r1.x + 1;
            }
            r1.x = x1[2].x;
            r2.y = x1[3].x;
            r1.x = cmp(r2.y < r1.x);
            r2.yz = r1.xx ? float2(4.20389539e-45,2.80259693e-45) : float2(2.80259693e-45,1.40129846e-45);
            r1.x = 2;
            while (true) {
              r2.w = cmp((int)r1.x >= 4);
              if (r2.w != 0) break;
              r2.w = cmp((int)r1.x >= (int)r2.y);
              if (r2.w != 0) {
                r2.w = (uint)r1.x << 2;
                r3.z = (int)r2.w + 4;
              // Known bad code for instruction (needs manual fix):
                            ld_structured r3.z, vThreadIDInGroupFlattened.x, r3.z, g0.xxxx
              r3.z = computeSpritesSampler[]..swiz;
                floatZSampler[vThreadIDInGroupFlattened.x].r2.w = g0.x;
              }
              r1.x = (int)r1.x + 1;
            }
            r1.x = 1;
            while (true) {
              r2.y = cmp((int)r1.x >= 4);
              if (r2.y != 0) break;
              r2.y = cmp((int)r1.x >= (int)r2.z);
              if (r2.y != 0) {
                r2.y = (uint)r1.x << 2;
                r2.w = (int)r2.y + 4;
              // Known bad code for instruction (needs manual fix):
                            ld_structured r2.w, vThreadIDInGroupFlattened.x, r2.w, g1.xxxx
              r2.w = computeSpritesSampler[]..swiz;
                floatZSampler[vThreadIDInGroupFlattened.x].r2.y = g1.x;
              }
              r1.x = (int)r1.x + 1;
            }
          }
        }
      }
      bitmask.w = ((~(-1 << 11)) << 0) & 0xffffffff;  r0.w = (((uint)1 << 0) & bitmask.w) | ((uint)r0.w & ~bitmask.w);
    } else {
      r0.w = -2047;
      r3.y = 0;
    }
    if (r1.y != 0) {
      r4.xy = vThreadID.xy;
      r4.zw = float2(2.80259693e-45,0);
      r1.x = oit_Nodes.Load(r4.xyzw).y;
      r2.yz = (int2)r1.xx & int2(1,2046);
      r1.y = max((uint)r3.y, (uint)r1.x);
      r4.x = max((uint)r3.x, (uint)r1.y);
      r4.y = min((uint)r1.y, (uint)r3.x);
      r3.xy = r2.yy ? r4.xy : r3.xy;
      r1.y = (uint)r2.z;
      r2.y = -r1.y * 0.000488758553 + 1;
      r1.w = r2.y * r1.w;
      r1.y = cmp(409.200012 < r1.y);
      if (r1.y != 0) {
        r0.z = max((uint)r1.x, (uint)r0.z);
        r1.y = (uint)r1.x >> 2;
        r1.y = (int)r1.y & 0x3ffffe00;
        r2.z = cmp(r1.y >= 0.000492187508);
        if (r2.z != 0) {
          r1.y = 1 + -r1.y;
          r4.y = 4;
          r2.zw = float2(5.60519386e-45,0);
          while (true) {
            r3.z = cmp((int)r2.w >= 4);
            if (r3.z != 0) break;
            r3.z = (uint)r2.w << 2;
          // Known bad code for instruction (needs manual fix):
                    ld_structured r3.z, vThreadIDInGroupFlattened.x, r3.z, g0.xxxx
          r3.z = computeSpritesSampler[]..swiz;
            r3.z = cmp(r3.z >= r1.y);
            if (r3.z != 0) {
              r2.z = r2.w;
              break;
            }
            r4.x = (int)r2.w + 1;
            r2.zw = r4.yx;
          }
          floatZSampler[vThreadIDInGroupFlattened.x].16 = g0.x;
          floatZSampler[vThreadIDInGroupFlattened.x].16 = g1.x;
          r2.w = (uint)r2.z << 2;
          r3.z = (int)r2.w + -4;
        // Known bad code for instruction (needs manual fix):
                ld_structured r3.z, vThreadIDInGroupFlattened.x, r3.z, g1.xxxx
        r3.z = computeSpritesSampler[]..swiz;
          r3.z = r2.z ? r3.z : 1;
          r3.w = 3;
          while (true) {
            r4.x = cmp((int)r3.w < 0);
            if (r4.x != 0) break;
            r4.x = cmp((int)r3.w >= (int)r2.z);
            if (r4.x != 0) {
              r4.x = (uint)r3.w << 2;
              r4.y = (int)r4.x + 4;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r4.z, vThreadIDInGroupFlattened.x, r4.x, g0.xxxx
            r4.z = computeSpritesSampler[]..swiz;
              floatZSampler[vThreadIDInGroupFlattened.x].r4.y = g0.x;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r4.x, vThreadIDInGroupFlattened.x, r4.x, g1.xxxx
            r4.x = computeSpritesSampler[]..swiz;
              r4.x = r4.x * r2.y;
              floatZSampler[vThreadIDInGroupFlattened.x].r4.y = g1.x;
            }
            r3.w = (int)r3.w + -1;
          }
          floatZSampler[vThreadIDInGroupFlattened.x].r2.w = g0.x;
          r1.y = r3.z * r2.y;
          floatZSampler[vThreadIDInGroupFlattened.x].r2.w = g1.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured r1.y, vThreadIDInGroupFlattened.x, l(16), g0.xxxx
        r1.y = computeSpritesSampler[]..swiz;
          r1.y = cmp(r1.y != 1000000015047466219876688855040.000000);
          if (r1.y != 0) {
            r1.y = 2;
            while (true) {
              r2.y = cmp((int)r1.y >= 4);
              if (r2.y != 0) break;
              r2.y = (uint)r1.y << 2;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r2.z, vThreadIDInGroupFlattened.x, r2.y, g0.xxxx
            r2.z = computeSpritesSampler[]..swiz;
              r2.y = (int)r2.y + -4;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r2.w, vThreadIDInGroupFlattened.x, r2.y, g0.xxxx
            r2.w = computeSpritesSampler[]..swiz;
              r2.z = r2.z + -r2.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r2.yw, vThreadIDInGroupFlattened.x, r2.y, g1.xxxy
            r2.y = computeSpritesSampler[]..swiz;
            r2.w = computeSpritesSampler[]..swiz;
              r2.y = r2.y + -r2.w;
              r2.y = r2.z * r2.y;
              x2[r1.y+0].x = r2.y;
              r1.y = (int)r1.y + 1;
            }
            r1.y = x2[2].x;
            r2.y = x2[3].x;
            r1.y = cmp(r2.y < r1.y);
            r2.yz = r1.yy ? float2(4.20389539e-45,2.80259693e-45) : float2(2.80259693e-45,1.40129846e-45);
            r1.y = 2;
            while (true) {
              r2.w = cmp((int)r1.y >= 4);
              if (r2.w != 0) break;
              r2.w = cmp((int)r1.y >= (int)r2.y);
              if (r2.w != 0) {
                r2.w = (uint)r1.y << 2;
                r3.z = (int)r2.w + 4;
              // Known bad code for instruction (needs manual fix):
                            ld_structured r3.z, vThreadIDInGroupFlattened.x, r3.z, g0.xxxx
              r3.z = computeSpritesSampler[]..swiz;
                floatZSampler[vThreadIDInGroupFlattened.x].r2.w = g0.x;
              }
              r1.y = (int)r1.y + 1;
            }
            r1.y = 1;
            while (true) {
              r2.y = cmp((int)r1.y >= 4);
              if (r2.y != 0) break;
              r2.y = cmp((int)r1.y >= (int)r2.z);
              if (r2.y != 0) {
                r2.y = (uint)r1.y << 2;
                r2.w = (int)r2.y + 4;
              // Known bad code for instruction (needs manual fix):
                            ld_structured r2.w, vThreadIDInGroupFlattened.x, r2.w, g1.xxxx
              r2.w = computeSpritesSampler[]..swiz;
                floatZSampler[vThreadIDInGroupFlattened.x].r2.y = g1.x;
              }
              r1.y = (int)r1.y + 1;
            }
          }
        }
      }
      bitmask.x = ((~(-1 << 11)) << 0) & 0xffffffff;  r1.x = (((uint)2 << 0) & bitmask.x) | ((uint)r1.x & ~bitmask.x);
    } else {
      r1.x = -2046;
    }
    if (r1.z != 0) {
      r4.xy = vThreadID.xy;
      r4.zw = float2(4.20389539e-45,0);
      r1.y = oit_Nodes.Load(r4.xyzw).y;
      r2.yz = (int2)r1.yy & int2(1,2046);
      r1.z = max((uint)r3.y, (uint)r1.y);
      r4.x = max((uint)r3.x, (uint)r1.z);
      r4.y = min((uint)r1.z, (uint)r3.x);
      r3.xy = r2.yy ? r4.xy : r3.xy;
      r1.z = (uint)r2.z;
      r2.y = -r1.z * 0.000488758553 + 1;
      r1.w = r2.y * r1.w;
      r1.z = cmp(409.200012 < r1.z);
      if (r1.z != 0) {
        r0.z = max((uint)r1.y, (uint)r0.z);
        r1.z = (uint)r1.y >> 2;
        r1.z = (int)r1.z & 0x3ffffe00;
        r2.z = cmp(r1.z >= 0.000492187508);
        if (r2.z != 0) {
          r1.z = 1 + -r1.z;
          r4.y = 4;
          r2.zw = float2(5.60519386e-45,0);
          while (true) {
            r3.z = cmp((int)r2.w >= 4);
            if (r3.z != 0) break;
            r3.z = (uint)r2.w << 2;
          // Known bad code for instruction (needs manual fix):
                    ld_structured r3.z, vThreadIDInGroupFlattened.x, r3.z, g0.xxxx
          r3.z = computeSpritesSampler[]..swiz;
            r3.z = cmp(r3.z >= r1.z);
            if (r3.z != 0) {
              r2.z = r2.w;
              break;
            }
            r4.x = (int)r2.w + 1;
            r2.zw = r4.yx;
          }
          floatZSampler[vThreadIDInGroupFlattened.x].16 = g0.x;
          floatZSampler[vThreadIDInGroupFlattened.x].16 = g1.x;
          r2.w = (uint)r2.z << 2;
          r3.z = (int)r2.w + -4;
        // Known bad code for instruction (needs manual fix):
                ld_structured r3.z, vThreadIDInGroupFlattened.x, r3.z, g1.xxxx
        r3.z = computeSpritesSampler[]..swiz;
          r3.z = r2.z ? r3.z : 1;
          r3.w = 3;
          while (true) {
            r4.x = cmp((int)r3.w < 0);
            if (r4.x != 0) break;
            r4.x = cmp((int)r3.w >= (int)r2.z);
            if (r4.x != 0) {
              r4.x = (uint)r3.w << 2;
              r4.y = (int)r4.x + 4;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r4.z, vThreadIDInGroupFlattened.x, r4.x, g0.xxxx
            r4.z = computeSpritesSampler[]..swiz;
              floatZSampler[vThreadIDInGroupFlattened.x].r4.y = g0.x;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r4.x, vThreadIDInGroupFlattened.x, r4.x, g1.xxxx
            r4.x = computeSpritesSampler[]..swiz;
              r4.x = r4.x * r2.y;
              floatZSampler[vThreadIDInGroupFlattened.x].r4.y = g1.x;
            }
            r3.w = (int)r3.w + -1;
          }
          floatZSampler[vThreadIDInGroupFlattened.x].r2.w = g0.x;
          r1.z = r3.z * r2.y;
          floatZSampler[vThreadIDInGroupFlattened.x].r2.w = g1.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured r1.z, vThreadIDInGroupFlattened.x, l(16), g0.xxxx
        r1.z = computeSpritesSampler[]..swiz;
          r1.z = cmp(r1.z != 1000000015047466219876688855040.000000);
          if (r1.z != 0) {
            r1.z = 2;
            while (true) {
              r2.y = cmp((int)r1.z >= 4);
              if (r2.y != 0) break;
              r2.y = (uint)r1.z << 2;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r2.z, vThreadIDInGroupFlattened.x, r2.y, g0.xxxx
            r2.z = computeSpritesSampler[]..swiz;
              r2.y = (int)r2.y + -4;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r2.w, vThreadIDInGroupFlattened.x, r2.y, g0.xxxx
            r2.w = computeSpritesSampler[]..swiz;
              r2.z = r2.z + -r2.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r2.yw, vThreadIDInGroupFlattened.x, r2.y, g1.xxxy
            r2.y = computeSpritesSampler[]..swiz;
            r2.w = computeSpritesSampler[]..swiz;
              r2.y = r2.y + -r2.w;
              r2.y = r2.z * r2.y;
              x3[r1.z+0].x = r2.y;
              r1.z = (int)r1.z + 1;
            }
            r1.z = x3[2].x;
            r2.y = x3[3].x;
            r1.z = cmp(r2.y < r1.z);
            r2.yz = r1.zz ? float2(4.20389539e-45,2.80259693e-45) : float2(2.80259693e-45,1.40129846e-45);
            r1.z = 2;
            while (true) {
              r2.w = cmp((int)r1.z >= 4);
              if (r2.w != 0) break;
              r2.w = cmp((int)r1.z >= (int)r2.y);
              if (r2.w != 0) {
                r2.w = (uint)r1.z << 2;
                r3.z = (int)r2.w + 4;
              // Known bad code for instruction (needs manual fix):
                            ld_structured r3.z, vThreadIDInGroupFlattened.x, r3.z, g0.xxxx
              r3.z = computeSpritesSampler[]..swiz;
                floatZSampler[vThreadIDInGroupFlattened.x].r2.w = g0.x;
              }
              r1.z = (int)r1.z + 1;
            }
            r1.z = 1;
            while (true) {
              r2.y = cmp((int)r1.z >= 4);
              if (r2.y != 0) break;
              r2.y = cmp((int)r1.z >= (int)r2.z);
              if (r2.y != 0) {
                r2.y = (uint)r1.z << 2;
                r2.w = (int)r2.y + 4;
              // Known bad code for instruction (needs manual fix):
                            ld_structured r2.w, vThreadIDInGroupFlattened.x, r2.w, g1.xxxx
              r2.w = computeSpritesSampler[]..swiz;
                floatZSampler[vThreadIDInGroupFlattened.x].r2.y = g1.x;
              }
              r1.z = (int)r1.z + 1;
            }
          }
        }
      }
      bitmask.y = ((~(-1 << 11)) << 0) & 0xffffffff;  r1.y = (((uint)3 << 0) & bitmask.y) | ((uint)r1.y & ~bitmask.y);
    } else {
      r1.y = -2045;
    }
    r4.xyzw = cmp(int4(4,5,6,7) < (uint4)r0.yyyy);
    if (r4.x != 0) {
      r5.xy = vThreadID.xy;
      r5.zw = float2(5.60519386e-45,0);
      r1.z = oit_Nodes.Load(r5.xyzw).y;
      r2.yz = (int2)r1.zz & int2(1,2046);
      r2.w = max((uint)r3.y, (uint)r1.z);
      r5.x = max((uint)r3.x, (uint)r2.w);
      r5.y = min((uint)r2.w, (uint)r3.x);
      r3.xy = r2.yy ? r5.xy : r3.xy;
      r2.y = (uint)r2.z;
      r2.z = -r2.y * 0.000488758553 + 1;
      r1.w = r2.z * r1.w;
      r2.y = cmp(409.200012 < r2.y);
      if (r2.y != 0) {
        r0.z = max((uint)r1.z, (uint)r0.z);
        r2.y = (uint)r1.z >> 2;
        r2.y = (int)r2.y & 0x3ffffe00;
        r2.w = cmp(r2.y >= 0.000492187508);
        if (r2.w != 0) {
          r2.y = 1 + -r2.y;
          r5.y = 4;
          r3.zw = float2(5.60519386e-45,0);
          while (true) {
            r2.w = cmp((int)r3.w >= 4);
            if (r2.w != 0) break;
            r2.w = (uint)r3.w << 2;
          // Known bad code for instruction (needs manual fix):
                    ld_structured r2.w, vThreadIDInGroupFlattened.x, r2.w, g0.xxxx
          r2.w = computeSpritesSampler[]..swiz;
            r2.w = cmp(r2.w >= r2.y);
            if (r2.w != 0) {
              r3.z = r3.w;
              break;
            }
            r5.x = (int)r3.w + 1;
            r3.zw = r5.yx;
          }
          floatZSampler[vThreadIDInGroupFlattened.x].16 = g0.x;
          floatZSampler[vThreadIDInGroupFlattened.x].16 = g1.x;
          r2.w = (uint)r3.z << 2;
          r3.w = (int)r2.w + -4;
        // Known bad code for instruction (needs manual fix):
                ld_structured r3.w, vThreadIDInGroupFlattened.x, r3.w, g1.xxxx
        r3.w = computeSpritesSampler[]..swiz;
          r3.w = r3.z ? r3.w : 1;
          r4.x = 3;
          while (true) {
            r5.x = cmp((int)r4.x < 0);
            if (r5.x != 0) break;
            r5.x = cmp((int)r4.x >= (int)r3.z);
            if (r5.x != 0) {
              r5.x = (uint)r4.x << 2;
              r5.y = (int)r5.x + 4;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r5.z, vThreadIDInGroupFlattened.x, r5.x, g0.xxxx
            r5.z = computeSpritesSampler[]..swiz;
              floatZSampler[vThreadIDInGroupFlattened.x].r5.y = g0.x;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r5.x, vThreadIDInGroupFlattened.x, r5.x, g1.xxxx
            r5.x = computeSpritesSampler[]..swiz;
              r5.x = r5.x * r2.z;
              floatZSampler[vThreadIDInGroupFlattened.x].r5.y = g1.x;
            }
            r4.x = (int)r4.x + -1;
          }
          floatZSampler[vThreadIDInGroupFlattened.x].r2.w = g0.x;
          r2.y = r3.w * r2.z;
          floatZSampler[vThreadIDInGroupFlattened.x].r2.w = g1.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured r2.y, vThreadIDInGroupFlattened.x, l(16), g0.xxxx
        r2.y = computeSpritesSampler[]..swiz;
          r2.y = cmp(r2.y != 1000000015047466219876688855040.000000);
          if (r2.y != 0) {
            r2.y = 2;
            while (true) {
              r2.z = cmp((int)r2.y >= 4);
              if (r2.z != 0) break;
              r2.z = (uint)r2.y << 2;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r2.w, vThreadIDInGroupFlattened.x, r2.z, g0.xxxx
            r2.w = computeSpritesSampler[]..swiz;
              r2.z = (int)r2.z + -4;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r3.z, vThreadIDInGroupFlattened.x, r2.z, g0.xxxx
            r3.z = computeSpritesSampler[]..swiz;
              r2.w = -r3.z + r2.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r3.zw, vThreadIDInGroupFlattened.x, r2.z, g1.xxxy
            r3.z = computeSpritesSampler[]..swiz;
            r3.w = computeSpritesSampler[]..swiz;
              r2.z = r3.z + -r3.w;
              r2.z = r2.w * r2.z;
              x4[r2.y+0].x = r2.z;
              r2.y = (int)r2.y + 1;
            }
            r2.y = x4[2].x;
            r2.z = x4[3].x;
            r2.y = cmp(r2.z < r2.y);
            r2.yz = r2.yy ? float2(4.20389539e-45,2.80259693e-45) : float2(2.80259693e-45,1.40129846e-45);
            r2.w = 2;
            while (true) {
              r3.z = cmp((int)r2.w >= 4);
              if (r3.z != 0) break;
              r3.z = cmp((int)r2.w >= (int)r2.y);
              if (r3.z != 0) {
                r3.z = (uint)r2.w << 2;
                r3.w = (int)r3.z + 4;
              // Known bad code for instruction (needs manual fix):
                            ld_structured r3.w, vThreadIDInGroupFlattened.x, r3.w, g0.xxxx
              r3.w = computeSpritesSampler[]..swiz;
                floatZSampler[vThreadIDInGroupFlattened.x].r3.z = g0.x;
              }
              r2.w = (int)r2.w + 1;
            }
            r2.y = 1;
            while (true) {
              r2.w = cmp((int)r2.y >= 4);
              if (r2.w != 0) break;
              r2.w = cmp((int)r2.y >= (int)r2.z);
              if (r2.w != 0) {
                r2.w = (uint)r2.y << 2;
                r3.z = (int)r2.w + 4;
              // Known bad code for instruction (needs manual fix):
                            ld_structured r3.z, vThreadIDInGroupFlattened.x, r3.z, g1.xxxx
              r3.z = computeSpritesSampler[]..swiz;
                floatZSampler[vThreadIDInGroupFlattened.x].r2.w = g1.x;
              }
              r2.y = (int)r2.y + 1;
            }
          }
        }
      }
      bitmask.z = ((~(-1 << 11)) << 0) & 0xffffffff;  r1.z = (((uint)4 << 0) & bitmask.z) | ((uint)r1.z & ~bitmask.z);
    } else {
      r1.z = -2044;
    }
    if (r4.y != 0) {
      r5.xy = vThreadID.xy;
      r5.zw = float2(7.00649232e-45,0);
      r2.y = oit_Nodes.Load(r5.xyzw).y;
      r2.zw = (int2)r2.yy & int2(1,2046);
      r3.z = max((uint)r3.y, (uint)r2.y);
      r4.x = max((uint)r3.x, (uint)r3.z);
      r4.y = min((uint)r3.z, (uint)r3.x);
      r3.xy = r2.zz ? r4.xy : r3.xy;
      r2.z = (uint)r2.w;
      r2.w = -r2.z * 0.000488758553 + 1;
      r1.w = r2.w * r1.w;
      r2.z = cmp(409.200012 < r2.z);
      if (r2.z != 0) {
        r0.z = max((uint)r2.y, (uint)r0.z);
        r2.z = (uint)r2.y >> 2;
        r2.z = (int)r2.z & 0x3ffffe00;
        r3.z = cmp(r2.z >= 0.000492187508);
        if (r3.z != 0) {
          r2.z = 1 + -r2.z;
          r4.y = 4;
          r3.zw = float2(5.60519386e-45,0);
          while (true) {
            r5.x = cmp((int)r3.w >= 4);
            if (r5.x != 0) break;
            r5.x = (uint)r3.w << 2;
          // Known bad code for instruction (needs manual fix):
                    ld_structured r5.x, vThreadIDInGroupFlattened.x, r5.x, g0.xxxx
          r5.x = computeSpritesSampler[]..swiz;
            r5.x = cmp(r5.x >= r2.z);
            if (r5.x != 0) {
              r3.z = r3.w;
              break;
            }
            r4.x = (int)r3.w + 1;
            r3.zw = r4.yx;
          }
          floatZSampler[vThreadIDInGroupFlattened.x].16 = g0.x;
          floatZSampler[vThreadIDInGroupFlattened.x].16 = g1.x;
          r3.w = (uint)r3.z << 2;
          r4.x = (int)r3.w + -4;
        // Known bad code for instruction (needs manual fix):
                ld_structured r4.x, vThreadIDInGroupFlattened.x, r4.x, g1.xxxx
        r4.x = computeSpritesSampler[]..swiz;
          r4.x = r3.z ? r4.x : 1;
          r4.y = 3;
          while (true) {
            r5.x = cmp((int)r4.y < 0);
            if (r5.x != 0) break;
            r5.x = cmp((int)r4.y >= (int)r3.z);
            if (r5.x != 0) {
              r5.x = (uint)r4.y << 2;
              r5.y = (int)r5.x + 4;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r5.z, vThreadIDInGroupFlattened.x, r5.x, g0.xxxx
            r5.z = computeSpritesSampler[]..swiz;
              floatZSampler[vThreadIDInGroupFlattened.x].r5.y = g0.x;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r5.x, vThreadIDInGroupFlattened.x, r5.x, g1.xxxx
            r5.x = computeSpritesSampler[]..swiz;
              r5.x = r5.x * r2.w;
              floatZSampler[vThreadIDInGroupFlattened.x].r5.y = g1.x;
            }
            r4.y = (int)r4.y + -1;
          }
          floatZSampler[vThreadIDInGroupFlattened.x].r3.w = g0.x;
          r2.z = r4.x * r2.w;
          floatZSampler[vThreadIDInGroupFlattened.x].r3.w = g1.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured r2.z, vThreadIDInGroupFlattened.x, l(16), g0.xxxx
        r2.z = computeSpritesSampler[]..swiz;
          r2.z = cmp(r2.z != 1000000015047466219876688855040.000000);
          if (r2.z != 0) {
            r2.z = 2;
            while (true) {
              r2.w = cmp((int)r2.z >= 4);
              if (r2.w != 0) break;
              r2.w = (uint)r2.z << 2;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r3.z, vThreadIDInGroupFlattened.x, r2.w, g0.xxxx
            r3.z = computeSpritesSampler[]..swiz;
              r2.w = (int)r2.w + -4;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r3.w, vThreadIDInGroupFlattened.x, r2.w, g0.xxxx
            r3.w = computeSpritesSampler[]..swiz;
              r3.z = r3.z + -r3.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r4.xy, vThreadIDInGroupFlattened.x, r2.w, g1.xyxx
            r4.x = computeSpritesSampler[]..swiz;
            r4.y = computeSpritesSampler[]..swiz;
              r2.w = r4.x + -r4.y;
              r2.w = r3.z * r2.w;
              x5[r2.z+0].x = r2.w;
              r2.z = (int)r2.z + 1;
            }
            r2.z = x5[2].x;
            r2.w = x5[3].x;
            r2.z = cmp(r2.w < r2.z);
            r2.zw = r2.zz ? float2(4.20389539e-45,2.80259693e-45) : float2(2.80259693e-45,1.40129846e-45);
            r3.z = 2;
            while (true) {
              r3.w = cmp((int)r3.z >= 4);
              if (r3.w != 0) break;
              r3.w = cmp((int)r3.z >= (int)r2.z);
              if (r3.w != 0) {
                r3.w = (uint)r3.z << 2;
                r4.x = (int)r3.w + 4;
              // Known bad code for instruction (needs manual fix):
                            ld_structured r4.x, vThreadIDInGroupFlattened.x, r4.x, g0.xxxx
              r4.x = computeSpritesSampler[]..swiz;
                floatZSampler[vThreadIDInGroupFlattened.x].r3.w = g0.x;
              }
              r3.z = (int)r3.z + 1;
            }
            r2.z = 1;
            while (true) {
              r3.z = cmp((int)r2.z >= 4);
              if (r3.z != 0) break;
              r3.z = cmp((int)r2.z >= (int)r2.w);
              if (r3.z != 0) {
                r3.z = (uint)r2.z << 2;
                r3.w = (int)r3.z + 4;
              // Known bad code for instruction (needs manual fix):
                            ld_structured r3.w, vThreadIDInGroupFlattened.x, r3.w, g1.xxxx
              r3.w = computeSpritesSampler[]..swiz;
                floatZSampler[vThreadIDInGroupFlattened.x].r3.z = g1.x;
              }
              r2.z = (int)r2.z + 1;
            }
          }
        }
      }
      bitmask.y = ((~(-1 << 11)) << 0) & 0xffffffff;  r2.y = (((uint)5 << 0) & bitmask.y) | ((uint)r2.y & ~bitmask.y);
    } else {
      r2.y = -2043;
    }
    if (r4.z != 0) {
      r5.xy = vThreadID.xy;
      r5.zw = float2(8.40779079e-45,0);
      r2.z = oit_Nodes.Load(r5.xyzw).y;
      r3.zw = (int2)r2.zz & int2(1,2046);
      r2.w = max((uint)r3.y, (uint)r2.z);
      r4.x = max((uint)r3.x, (uint)r2.w);
      r4.y = min((uint)r2.w, (uint)r3.x);
      r3.xy = r3.zz ? r4.xy : r3.xy;
      r2.w = (uint)r3.w;
      r3.z = -r2.w * 0.000488758553 + 1;
      r1.w = r3.z * r1.w;
      r2.w = cmp(409.200012 < r2.w);
      if (r2.w != 0) {
        r0.z = max((uint)r2.z, (uint)r0.z);
        r2.w = (uint)r2.z >> 2;
        r2.w = (int)r2.w & 0x3ffffe00;
        r3.w = cmp(r2.w >= 0.000492187508);
        if (r3.w != 0) {
          r2.w = 1 + -r2.w;
          r4.y = 4;
          r5.xy = float2(4,0);
          while (true) {
            r3.w = cmp((int)r5.y >= 4);
            if (r3.w != 0) break;
            r3.w = (uint)r5.y << 2;
          // Known bad code for instruction (needs manual fix):
                    ld_structured r3.w, vThreadIDInGroupFlattened.x, r3.w, g0.xxxx
          r3.w = computeSpritesSampler[]..swiz;
            r3.w = cmp(r3.w >= r2.w);
            if (r3.w != 0) {
              r5.x = r5.y;
              break;
            }
            r4.x = (int)r5.y + 1;
            r5.xy = r4.yx;
          }
          floatZSampler[vThreadIDInGroupFlattened.x].16 = g0.x;
          floatZSampler[vThreadIDInGroupFlattened.x].16 = g1.x;
          r3.w = (uint)r5.x << 2;
          r4.x = (int)r3.w + -4;
        // Known bad code for instruction (needs manual fix):
                ld_structured r4.x, vThreadIDInGroupFlattened.x, r4.x, g1.xxxx
        r4.x = computeSpritesSampler[]..swiz;
          r4.x = r5.x ? r4.x : 1;
          r4.y = 3;
          while (true) {
            r4.z = cmp((int)r4.y < 0);
            if (r4.z != 0) break;
            r4.z = cmp((int)r4.y >= (int)r5.x);
            if (r4.z != 0) {
              r4.z = (uint)r4.y << 2;
              r5.y = (int)r4.z + 4;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r5.z, vThreadIDInGroupFlattened.x, r4.z, g0.xxxx
            r5.z = computeSpritesSampler[]..swiz;
              floatZSampler[vThreadIDInGroupFlattened.x].r5.y = g0.x;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r4.z, vThreadIDInGroupFlattened.x, r4.z, g1.xxxx
            r4.z = computeSpritesSampler[]..swiz;
              r4.z = r4.z * r3.z;
              floatZSampler[vThreadIDInGroupFlattened.x].r5.y = g1.x;
            }
            r4.y = (int)r4.y + -1;
          }
          floatZSampler[vThreadIDInGroupFlattened.x].r3.w = g0.x;
          r2.w = r4.x * r3.z;
          floatZSampler[vThreadIDInGroupFlattened.x].r3.w = g1.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured r2.w, vThreadIDInGroupFlattened.x, l(16), g0.xxxx
        r2.w = computeSpritesSampler[]..swiz;
          r2.w = cmp(r2.w != 1000000015047466219876688855040.000000);
          if (r2.w != 0) {
            r2.w = 2;
            while (true) {
              r3.z = cmp((int)r2.w >= 4);
              if (r3.z != 0) break;
              r3.z = (uint)r2.w << 2;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r3.w, vThreadIDInGroupFlattened.x, r3.z, g0.xxxx
            r3.w = computeSpritesSampler[]..swiz;
              r3.z = (int)r3.z + -4;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r4.x, vThreadIDInGroupFlattened.x, r3.z, g0.xxxx
            r4.x = computeSpritesSampler[]..swiz;
              r3.w = -r4.x + r3.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r4.xy, vThreadIDInGroupFlattened.x, r3.z, g1.xyxx
            r4.x = computeSpritesSampler[]..swiz;
            r4.y = computeSpritesSampler[]..swiz;
              r3.z = r4.x + -r4.y;
              r3.z = r3.w * r3.z;
              x6[r2.w+0].x = r3.z;
              r2.w = (int)r2.w + 1;
            }
            r2.w = x6[2].x;
            r3.z = x6[3].x;
            r2.w = cmp(r3.z < r2.w);
            r3.zw = r2.ww ? float2(4.20389539e-45,2.80259693e-45) : float2(2.80259693e-45,1.40129846e-45);
            r2.w = 2;
            while (true) {
              r4.x = cmp((int)r2.w >= 4);
              if (r4.x != 0) break;
              r4.x = cmp((int)r2.w >= (int)r3.z);
              if (r4.x != 0) {
                r4.x = (uint)r2.w << 2;
                r4.y = (int)r4.x + 4;
              // Known bad code for instruction (needs manual fix):
                            ld_structured r4.y, vThreadIDInGroupFlattened.x, r4.y, g0.xxxx
              r4.y = computeSpritesSampler[]..swiz;
                floatZSampler[vThreadIDInGroupFlattened.x].r4.x = g0.x;
              }
              r2.w = (int)r2.w + 1;
            }
            r2.w = 1;
            while (true) {
              r3.z = cmp((int)r2.w >= 4);
              if (r3.z != 0) break;
              r3.z = cmp((int)r2.w >= (int)r3.w);
              if (r3.z != 0) {
                r3.z = (uint)r2.w << 2;
                r4.x = (int)r3.z + 4;
              // Known bad code for instruction (needs manual fix):
                            ld_structured r4.x, vThreadIDInGroupFlattened.x, r4.x, g1.xxxx
              r4.x = computeSpritesSampler[]..swiz;
                floatZSampler[vThreadIDInGroupFlattened.x].r3.z = g1.x;
              }
              r2.w = (int)r2.w + 1;
            }
          }
        }
      }
      bitmask.z = ((~(-1 << 11)) << 0) & 0xffffffff;  r2.z = (((uint)6 << 0) & bitmask.z) | ((uint)r2.z & ~bitmask.z);
    } else {
      r2.z = -2042;
    }
    if (r4.w != 0) {
      r4.xy = vThreadID.xy;
      r4.zw = float2(9.80908925e-45,0);
      r2.w = oit_Nodes.Load(r4.xyzw).y;
      r3.zw = (int2)r2.ww & int2(1,2046);
      r4.x = max((uint)r3.y, (uint)r2.w);
      r5.x = max((uint)r4.x, (uint)r3.x);
      r5.y = min((uint)r4.x, (uint)r3.x);
      r3.xy = r3.zz ? r5.xy : r3.xy;
      r3.z = (uint)r3.w;
      r3.w = -r3.z * 0.000488758553 + 1;
      r1.w = r3.w * r1.w;
      r3.z = cmp(409.200012 < r3.z);
      if (r3.z != 0) {
        r0.z = max((uint)r2.w, (uint)r0.z);
        r3.z = (uint)r2.w >> 2;
        r3.z = (int)r3.z & 0x3ffffe00;
        r4.x = cmp(r3.z >= 0.000492187508);
        if (r4.x != 0) {
          r3.z = 1 + -r3.z;
          r4.y = 4;
          r4.zw = float2(5.60519386e-45,0);
          while (true) {
            r5.x = cmp((int)r4.w >= 4);
            if (r5.x != 0) break;
            r5.x = (uint)r4.w << 2;
          // Known bad code for instruction (needs manual fix):
                    ld_structured r5.x, vThreadIDInGroupFlattened.x, r5.x, g0.xxxx
          r5.x = computeSpritesSampler[]..swiz;
            r5.x = cmp(r5.x >= r3.z);
            if (r5.x != 0) {
              r4.z = r4.w;
              break;
            }
            r4.x = (int)r4.w + 1;
            r4.zw = r4.yx;
          }
          floatZSampler[vThreadIDInGroupFlattened.x].16 = g0.x;
          floatZSampler[vThreadIDInGroupFlattened.x].16 = g1.x;
          r4.x = (uint)r4.z << 2;
          r4.y = (int)r4.x + -4;
        // Known bad code for instruction (needs manual fix):
                ld_structured r4.y, vThreadIDInGroupFlattened.x, r4.y, g1.xxxx
        r4.y = computeSpritesSampler[]..swiz;
          r4.y = r4.z ? r4.y : 1;
          r4.w = 3;
          while (true) {
            r5.x = cmp((int)r4.w < 0);
            if (r5.x != 0) break;
            r5.x = cmp((int)r4.w >= (int)r4.z);
            if (r5.x != 0) {
              r5.x = (uint)r4.w << 2;
              r5.y = (int)r5.x + 4;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r5.z, vThreadIDInGroupFlattened.x, r5.x, g0.xxxx
            r5.z = computeSpritesSampler[]..swiz;
              floatZSampler[vThreadIDInGroupFlattened.x].r5.y = g0.x;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r5.x, vThreadIDInGroupFlattened.x, r5.x, g1.xxxx
            r5.x = computeSpritesSampler[]..swiz;
              r5.x = r5.x * r3.w;
              floatZSampler[vThreadIDInGroupFlattened.x].r5.y = g1.x;
            }
            r4.w = (int)r4.w + -1;
          }
          floatZSampler[vThreadIDInGroupFlattened.x].r4.x = g0.x;
          r3.z = r4.y * r3.w;
          floatZSampler[vThreadIDInGroupFlattened.x].r4.x = g1.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured r3.z, vThreadIDInGroupFlattened.x, l(16), g0.xxxx
        r3.z = computeSpritesSampler[]..swiz;
          r3.z = cmp(r3.z != 1000000015047466219876688855040.000000);
          if (r3.z != 0) {
            r3.z = 2;
            while (true) {
              r3.w = cmp((int)r3.z >= 4);
              if (r3.w != 0) break;
              r3.w = (uint)r3.z << 2;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r4.x, vThreadIDInGroupFlattened.x, r3.w, g0.xxxx
            r4.x = computeSpritesSampler[]..swiz;
              r3.w = (int)r3.w + -4;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r4.y, vThreadIDInGroupFlattened.x, r3.w, g0.xxxx
            r4.y = computeSpritesSampler[]..swiz;
              r4.x = r4.x + -r4.y;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r4.yz, vThreadIDInGroupFlattened.x, r3.w, g1.xxyx
            r4.y = computeSpritesSampler[]..swiz;
            r4.z = computeSpritesSampler[]..swiz;
              r3.w = r4.y + -r4.z;
              r3.w = r4.x * r3.w;
              x7[r3.z+0].x = r3.w;
              r3.z = (int)r3.z + 1;
            }
            r3.z = x7[2].x;
            r3.w = x7[3].x;
            r3.z = cmp(r3.w < r3.z);
            r3.zw = r3.zz ? float2(4.20389539e-45,2.80259693e-45) : float2(2.80259693e-45,1.40129846e-45);
            r4.x = 2;
            while (true) {
              r4.y = cmp((int)r4.x >= 4);
              if (r4.y != 0) break;
              r4.y = cmp((int)r4.x >= (int)r3.z);
              if (r4.y != 0) {
                r4.y = (uint)r4.x << 2;
                r4.z = (int)r4.y + 4;
              // Known bad code for instruction (needs manual fix):
                            ld_structured r4.z, vThreadIDInGroupFlattened.x, r4.z, g0.xxxx
              r4.z = computeSpritesSampler[]..swiz;
                floatZSampler[vThreadIDInGroupFlattened.x].r4.y = g0.x;
              }
              r4.x = (int)r4.x + 1;
            }
            r3.z = 1;
            while (true) {
              r4.x = cmp((int)r3.z >= 4);
              if (r4.x != 0) break;
              r4.x = cmp((int)r3.z >= (int)r3.w);
              if (r4.x != 0) {
                r4.x = (uint)r3.z << 2;
                r4.y = (int)r4.x + 4;
              // Known bad code for instruction (needs manual fix):
                            ld_structured r4.y, vThreadIDInGroupFlattened.x, r4.y, g1.xxxx
              r4.y = computeSpritesSampler[]..swiz;
                floatZSampler[vThreadIDInGroupFlattened.x].r4.x = g1.x;
              }
              r3.z = (int)r3.z + 1;
            }
          }
        }
      }
      bitmask.w = ((~(-1 << 11)) << 0) & 0xffffffff;  r2.w = (((uint)7 << 0) & bitmask.w) | ((uint)r2.w & ~bitmask.w);
    } else {
      r2.w = -2041;
    }
    r0.z = (uint)r0.z >> 2;
    r0.z = (int)r0.z & 0x3ffffe00;
    r3.z = 0.800000012 + -r1.w;
    r3.z = max(0, r3.z);
    r3.z = -r3.z * 1.25 + 1;
    r3.w = min((uint)r2.x, (uint)r0.w);
    r0.w = max((uint)r2.x, (uint)r0.w);
    r2.x = min((uint)r1.x, (uint)r1.y);
    r1.x = max((uint)r1.x, (uint)r1.y);
    r1.y = min((uint)r2.y, (uint)r1.z);
    r1.z = max((uint)r2.y, (uint)r1.z);
    r2.y = min((uint)r2.z, (uint)r2.w);
    r2.z = max((uint)r2.z, (uint)r2.w);
    r2.w = min((uint)r3.w, (uint)r1.x);
    r1.x = max((uint)r3.w, (uint)r1.x);
    r3.w = min((uint)r2.z, (uint)r1.y);
    r1.y = max((uint)r2.z, (uint)r1.y);
    r2.z = min((uint)r2.x, (uint)r0.w);
    r0.w = max((uint)r2.x, (uint)r0.w);
    r2.x = min((uint)r2.y, (uint)r1.z);
    r1.z = max((uint)r2.y, (uint)r1.z);
    r2.y = min((uint)r2.w, (uint)r2.z);
    r2.z = max((uint)r2.w, (uint)r2.z);
    r2.w = min((uint)r0.w, (uint)r1.x);
    r0.w = max((uint)r0.w, (uint)r1.x);
    r1.x = min((uint)r3.w, (uint)r2.x);
    r2.x = max((uint)r3.w, (uint)r2.x);
    r3.w = min((uint)r1.z, (uint)r1.y);
    r1.y = max((uint)r1.z, (uint)r1.y);
    r1.z = min((uint)r2.y, (uint)r1.y);
    r1.y = max((uint)r2.y, (uint)r1.y);
    r2.y = min((uint)r3.w, (uint)r2.z);
    r2.z = max((uint)r3.w, (uint)r2.z);
    r3.w = min((uint)r2.w, (uint)r2.x);
    r2.x = max((uint)r2.w, (uint)r2.x);
    r2.w = min((uint)r1.x, (uint)r0.w);
    r0.w = max((uint)r1.x, (uint)r0.w);
    r1.x = min((uint)r3.w, (uint)r1.z);
    r1.z = max((uint)r3.w, (uint)r1.z);
    r3.w = min((uint)r2.y, (uint)r2.w);
    r2.y = max((uint)r2.y, (uint)r2.w);
    r2.w = min((uint)r0.w, (uint)r2.z);
    r0.w = max((uint)r0.w, (uint)r2.z);
    r2.z = min((uint)r2.x, (uint)r1.y);
    r1.y = max((uint)r2.x, (uint)r1.y);
    r2.x = min((uint)r3.w, (uint)r1.x);
    r1.x = max((uint)r3.w, (uint)r1.x);
    r3.w = min((uint)r2.y, (uint)r1.z);
    r1.z = max((uint)r2.y, (uint)r1.z);
    r2.y = min((uint)r2.w, (uint)r2.z);
    r2.z = max((uint)r2.w, (uint)r2.z);
    r2.w = min((uint)r1.y, (uint)r0.w);
    r0.w = max((uint)r1.y, (uint)r0.w);
    bitmask.x = ((~(-1 << 11)) << 4) & 0xffffffff;  r1.x = (((uint)r1.x << 4) & bitmask.x) | ((uint)0 & ~bitmask.x);
    bitmask.x = ((~(-1 << 4)) << 0) & 0xffffffff;  r1.x = (((uint)r2.x << 0) & bitmask.x) | ((uint)r1.x & ~bitmask.x);
    bitmask.y = ((~(-1 << 11)) << 8) & 0xffffffff;  r1.y = (((uint)r3.w << 8) & bitmask.y) | ((uint)0 & ~bitmask.y);
    r1.x = (int)r1.y + (int)r1.x;
    bitmask.y = ((~(-1 << 11)) << 12) & 0xffffffff;  r1.y = (((uint)r1.z << 12) & bitmask.y) | ((uint)0 & ~bitmask.y);
    r1.x = (int)r1.y + (int)r1.x;
    bitmask.y = ((~(-1 << 11)) << 16) & 0xffffffff;  r1.y = (((uint)r2.y << 16) & bitmask.y) | ((uint)0 & ~bitmask.y);
    r1.x = (int)r1.y + (int)r1.x;
    bitmask.y = ((~(-1 << 11)) << 20) & 0xffffffff;  r1.y = (((uint)r2.z << 20) & bitmask.y) | ((uint)0 & ~bitmask.y);
    r1.x = (int)r1.y + (int)r1.x;
    bitmask.x = ((~(-1 << 8)) << 24) & 0xffffffff;  r1.x = (((uint)r2.w << 24) & bitmask.x) | ((uint)r1.x & ~bitmask.x);
    bitmask.w = ((~(-1 << 4)) << 28) & 0xffffffff;  r2.w = (((uint)r0.w << 28) & bitmask.w) | ((uint)r1.x & ~bitmask.w);
  } else {
    r1.w = 1;
    r0.z = -1;
    r3.xyz = float3(0,0,1);
    r2.w = 0;
  }
  r0.w = (int)computeSpriteControl.x + 1023;
  r0.w = (uint)r0.w >> 10;
  r0.w = min(2, (uint)r0.w);
  if (27 == 0) r4.x = 0; else if (27+2 < 32) {   r4.x = (uint)vThreadGroupID.x << (32-(27 + 2)); r4.x = (uint)r4.x >> (32-27);  } else r4.x = (uint)vThreadGroupID.x >> 2;
  if (27 == 0) r4.y = 0; else if (27+2 < 32) {   r4.y = (uint)vThreadGroupID.y << (32-(27 + 2)); r4.y = (uint)r4.y >> (32-27);  } else r4.y = (uint)vThreadGroupID.y >> 2;
  r1.x = cmp((uint)r0.w >= 1);
  if (r1.x != 0) {
    r1.x = cmp((uint)r0.w >= 2);
    if (r1.x != 0) {
      r4.zw = float2(1.40129846e-45,0);
      r1.x = spriteCullRoughRough.Load(r4.xyww).x;
      r1.y = spriteCullRoughRough.Load(r4.xyzw).x;
    } else {
      r4.zw = float2(0,0);
      r1.x = spriteCullRoughRough.Load(r4.xyzw).x;
      r1.y = 0;
    }
  } else {
    r1.xy = float2(0,0);
  }
  r1.z = (int)r1.y | (int)r1.x;
  r1.z = (int)r0.y | (int)r1.z;
  if (r1.z == 0) {
  // No code for instruction (needs manual fix):
    store_uav_typed u4.xyzw, vThreadID.xyyy, l(1.000000,1.000000,1.000000,1.000000)
    r5.xy = vThreadID.xy;
    r5.zw = float2(0,0);
    r3.w = floatZSampler.Load(r5.xyz).x;
  // No code for instruction (needs manual fix):
    store_uav_typed u7.xyzw, vThreadID.xyyy, r3.wwww
  }
  if (r1.z != 0) {
    r1.z = r0.x ? -170141183460469231731687303715884105728.000000 : 0;
    r1.z = cmp((int)r1.z == 0);
    r0.x = cmp(oitMaxEntries < (uint)r0.x);
    if (r0.x != 0) {
      r5.xy = vThreadID.xy;
      r5.zw = float2(0,0);
      r6.xyz = frameBuffer.Load(r5.xyw).xyz;
      r5.xyzw = oitFallbackBuffer.Load(r5.xyz).xyzw;
      r2.xyz = r5.www * r6.xyz + r5.xyz;
    } else {
      r5.xy = vThreadID.xy;
      r5.zw = float2(0,0);
      r2.xyz = frameBuffer.Load(r5.xyz).xyz;
    }
    r5.xy = vThreadID.xy;
    r5.w = 0;
    r0.x = floatZSampler.Load(r5.xyw).x;
    r3.w = cmp(r1.w < 0.800000012);
    r1.z = r1.z ? r3.w : 0;
    if (r1.z != 0) {
      r0.z = max(r0.z, r0.x);
    } else {
      r0.z = r0.x;
    }
  // No code for instruction (needs manual fix):
    store_uav_typed u7.xyzw, vThreadID.xyyy, r0.zzzz
    if (r0.w != 0) {
      r6.xyzw = (uint4)r3.xxyy >> int4(2,2,2,2);
      r6.xyzw = (int4)r6.xyzw & int4(1073741312,1073741312,1073741312,1073741312);
      r3.xy = cmp(r6.yw >= float2(0.984375,0.984375));
      r6.yw = float2(1.01587307,1.01587307) * r6.yw;
      r6.xz = r6.xz * float2(64,64) + float2(-63,-63);
      r3.xy = r3.xy ? r6.xz : r6.yw;
      r3.xy = max(float2(9.99999994e-09,9.99999994e-09), r3.xy);
      r3.xy = rcp(r3.xy);
      r0.z = cmp(r0.x >= 0.984375);
      r1.z = 1.01587307 * r0.x;
      r3.w = r0.x * 64 + -63;
      r0.z = r0.z ? r3.w : r1.z;
      r0.z = max(9.99999994e-09, r0.z);
      r0.z = rcp(r0.z);
      r5.z = (int)r2.w & 7;
      r1.z = oit_Nodes.Load(r5.xyzw).y;
      r1.z = (uint)r1.z >> 2;
      r1.z = (int)r1.z & 0x3ffffe00;
      r6.xyz = (int3)computeSpriteControl.yyy & int3(4,1,8);
      r3.w = cmp((int)r6.y == 0);
      r6.x = cmp((int)r6.x != 0);
      r7.xyzw = (uint4)vThreadID.xyxy;
      r6.w = ~(int)vThreadID.y;
      r6.w = (int)r6.w ^ (int)vThreadID.x;
      r6.w = (int)r6.w & 1;
      r4.w = 0;
      r8.xyw = r5.xyw;
      r9.w = 0.00392156886;
      r10.xw = float2(1,5.60519386e-45);
      r11.x = r2.w;
      r11.yzw = r2.xyz;
      r13.w = 0;
      r12.y = 0;
      r12.z = r1.z;
      r12.xw = r1.wx;
      while (true) {
        if (r12.w == 0) break;
        r4.z = firstbitlow((uint)r12.w);
        r14.x = 1 << (int)r4.z;
        r14.x = ~(int)r14.x;
        r12.w = (int)r12.w & (int)r14.x;
        r14.x = spriteCullRough.Load(r4.xyzw).x;
        r14.y = (uint)r4.z << 5;
        r15.xyzw = r11.xyzw;
        r16.w = r13.w;
        r14.zw = r12.xy;
        r17.x = r12.z;
        r17.y = r14.x;
        while (true) {
          if (r17.y == 0) break;
          r17.z = firstbitlow((uint)r17.y);
          r17.w = 1 << (int)r17.z;
          r17.w = ~(int)r17.w;
          r17.y = (int)r17.w & (int)r17.y;
          r17.z = (int)r14.y + (int)r17.z;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=32)(mixed,mixed,mixed,mixed) r18.xyz, r17.z, l(16), t1.xyzx
        r18.x = computeSpritesSampler[]..swiz;
        r18.y = computeSpritesSampler[]..swiz;
        r18.z = computeSpritesSampler[]..swiz;
          r19.xyz = r15.yzw;
          r17.w = r15.x;
          r18.w = r14.w;
          r20.x = r17.x;
          while (true) {
            r20.y = cmp((uint)r18.w < (uint)r0.y);
            r20.z = cmp(r20.x < r18.z);
            r20.y = r20.z ? r20.y : 0;
            r20.y = r3.w ? r20.y : 0;
            if (r20.y == 0) break;
            r8.z = (int)r17.w & 7;
            r20.yz = oit_Nodes.Load(r8.xyzw).xy;
            r21.xyz = (uint3)r20.yyy >> int3(1,8,16);
            r20.w = (int)r21.x & 0x7f800000;
            bitmask.y = ((~(-1 << 8)) << 15) & 0xffffffff;  r20.y = (((uint)r20.y << 15) & bitmask.y) | ((uint)0 & ~bitmask.y);
            bitmask.y = ((~(-1 << 23)) << 0) & 0xffffffff;  r20.y = (((uint)r20.y << 0) & bitmask.y) | ((uint)r21.x & ~bitmask.y);
            r22.x = r20.y + -r20.w;
            bitmask.y = ((~(-1 << 8)) << 15) & 0xffffffff;  r21.y = (((uint)r21.y << 15) & bitmask.y) | ((uint)0 & ~bitmask.y);
            bitmask.z = ((~(-1 << 8)) << 15) & 0xffffffff;  r21.z = (((uint)r21.z << 15) & bitmask.z) | ((uint)0 & ~bitmask.z);
            bitmask.x = ((~(-1 << 23)) << 0) & 0xffffffff;  r21.x = (((uint)r21.y << 0) & bitmask.x) | ((uint)r21.x & ~bitmask.x);
            bitmask.y = ((~(-1 << 23)) << 0) & 0xffffffff;  r21.y = (((uint)r21.z << 0) & bitmask.y) | ((uint)r21.x & ~bitmask.y);
            r22.yz = r21.xy + -r20.ww;
            r20.y = (int)r20.z & 2046;
            r20.y = (uint)r20.y;
            r20.y = -r20.y * 0.000488758553 + 1;
            r19.xyz = r19.xyz * r20.yyy + r22.xyz;
            r18.w = (int)r18.w + 1;
            r20.y = (uint)r17.w >> 4;
            r20.z = cmp((uint)r18.w < (uint)r0.y);
            if (r20.z != 0) {
              if (3 == 0) r8.z = 0; else if (3+4 < 32) {               r8.z = (uint)r17.w << (32-(3 + 4)); r8.z = (uint)r8.z >> (32-3);              } else r8.z = (uint)r17.w >> 4;
              r8.z = oit_Nodes.Load(r8.xyzw).y;
              r8.z = (uint)r8.z >> 2;
              r20.x = (int)r8.z & 0x3ffffe00;
            } else {
              r20.x = 2;
            }
            r17.w = r20.y;
          }
          r15.x = r17.w;
          r14.w = r18.w;
          r17.x = r20.x;
          r8.z = cmp(r0.x < r18.z);
          r8.z = (int)r6.x | (int)r8.z;
          if (r8.z != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=32)(mixed,mixed,mixed,mixed) r21.xyzw, r17.z, l(0), t1.xyzw
          r21.x = computeSpritesSampler[]..swiz;
          r21.y = computeSpritesSampler[]..swiz;
          r21.z = computeSpritesSampler[]..swiz;
          r21.w = computeSpritesSampler[]..swiz;
            r22.xyzw = r21.xyzw * r7.xyzw;
            r20.yz = r22.xz + r22.yw;
            r22.xy = r20.yz + r18.xy;
            r18.xy = r22.xy * float2(2,2) + float2(-1,-1);
            r8.z = max(abs(r18.x), abs(r18.y));
            r8.z = cmp(r8.z < 1);
            if (r8.z != 0) {
              if (r6.y != 0) {
                r18.xy = cmp(float2(0.995000005,0.995000005) < r22.xy);
                r8.z = (int)r18.y | (int)r18.x;
                r18.xy = cmp(r22.xy < float2(0.00499999989,0.00499999989));
                r18.x = (int)r18.y | (int)r18.x;
                r8.z = (int)r8.z | (int)r18.x;
                if (r8.z != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r8.z, r17.z, l(52), t2.xxxx
                r8.z = computeSpritesSampler[]..swiz;
                  if (1 == 0) r8.z = 0; else if (1+22 < 32) {                   r8.z = (uint)r8.z << (32-(1 + 22)); r8.z = (uint)r8.z >> (32-1);                  } else r8.z = (uint)r8.z >> 22;
                  r15.yzw = r8.zzz ? float3(0.75,0.300000012,0) : float3(0.75,0.75,0.75);
                  r16.w = 1;
                } else {
                  r8.z = cmp(r16.w != 1.000000);
                  r18.x = cmp(r19.x == 0.000000);
                  r20.yz = cmp(r19.yx >= float2(1,1));
                  r19.w = 0.0500000007 + r19.x;
                  r23.xyz = float3(-0.0500000007,0,0.0500000007) + r19.yxy;
                  r23.yz = r20.yy ? r19.wy : r23.yz;
                  r24.xy = float2(0,-0.0500000007) + r19.xy;
                  r25.xy = float2(0.0500000007,0) + r19.xy;
                  r20.zw = r20.zz ? r24.xy : r25.xy;
                  r18.y = cmp(r19.y != 0.000000);
                  r24.z = r18.y ? r23.x : r19.y;
                  r20.yz = r20.yy ? r20.zw : r24.xz;
                  r16.xy = r18.xx ? r23.yz : r20.yz;
                  r16.z = r19.z;
                  r23.xyzw = r8.zzzz ? float4(0,0,0,1) : r16.xyzw;
                  r16.xyz = r19.xyz;
                  r16.xyzw = r6.wwww ? r23.xyzw : r16.xyzw;
                  r15.yzw = r16.xyz;
                }
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r23.xyzw, r17.z, l(0), t2.xyzw
              r23.x = computeSpritesSampler[]..swiz;
              r23.y = computeSpritesSampler[]..swiz;
              r23.z = computeSpritesSampler[]..swiz;
              r23.w = computeSpritesSampler[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r24.xyzw, r17.z, l(16), t2.zxyw
              r24.x = computeSpritesSampler[]..swiz;
              r24.y = computeSpritesSampler[]..swiz;
              r24.z = computeSpritesSampler[]..swiz;
              r24.w = computeSpritesSampler[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r8.z, r17.z, l(32), t2.xxxx
              r8.z = computeSpritesSampler[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r25.xyzw, r17.z, l(40), t2.xyzw
              r25.x = computeSpritesSampler[]..swiz;
              r25.y = computeSpritesSampler[]..swiz;
              r25.z = computeSpritesSampler[]..swiz;
              r25.w = computeSpritesSampler[]..swiz;
                r16.xy = (uint2)r25.xy >> int2(24,24);
                r16.xy = (uint2)r16.xy;
                r18.xy = float2(0.00390625,0.00392156886) * r16.xy;
                if (4 == 0) r26.x = 0; else if (4+26 < 32) {                 r26.x = (uint)r25.z << (32-(4 + 26)); r26.x = (uint)r26.x >> (32-4);                } else r26.x = (uint)r25.z >> 26;
                if (4 == 0) r26.y = 0; else if (4+16 < 32) {                 r26.y = (uint)r25.w << (32-(4 + 16)); r26.y = (uint)r26.y >> (32-4);                } else r26.y = (uint)r25.w >> 16;
                if (1 == 0) r26.z = 0; else if (1+20 < 32) {                 r26.z = (uint)r25.w << (32-(1 + 20)); r26.z = (uint)r26.z >> (32-1);                } else r26.z = (uint)r25.w >> 20;
                if (8 == 0) r26.w = 0; else if (8+8 < 32) {                 r26.w = (uint)r25.w << (32-(8 + 8)); r26.w = (uint)r26.w >> (32-8);                } else r26.w = (uint)r25.w >> 8;
                r27.xyzw = int4(1,1,1,1) << (int4)r26.xyxy;
                if (r26.z != 0) {
                  if (12 == 0) r16.z = 0; else if (12+12 < 32) {                   r16.z = (uint)r25.x << (32-(12 + 12)); r16.z = (uint)r16.z >> (32-12);                  } else r16.z = (uint)r25.x >> 12;
                  r20.yz = (int2)r25.xz & int2(4095,1023);
                  r28.xyzw = (uint4)r27.zwzw;
                  r26.xy = r22.xy * r28.zw + float2(0.5,0.5);
                  r29.xy = float2(-0.5,-0.5) + r28.zw;
                  r26.xy = min(r29.xy, r26.xy);
                  r29.xz = (uint2)r20.yz;
                  r29.y = (uint)r16.z;
                  r20.yw = r29.xy + r26.xy;
                  r29.xy = invBcTexSizes.xy * r20.yw;
                  r28.xyzw = r28.xyzw * r21.xzyw;
                  r30.xyzw = materialTexBC7.SampleGrad(computeSpritesSampler_s, r29.xyz, r28.xyxx, r28.zwzz).xyzw;
                  r16.z = cmp(0 < r16.x);
                  if (r16.z != 0) {
                    r16.z = (int)r25.y & 4095;
                    if (12 == 0) r19.w = 0; else if (12+12 < 32) {                     r19.w = (uint)r25.y << (32-(12 + 12)); r19.w = (uint)r19.w >> (32-12);                    } else r19.w = (uint)r25.y >> 12;
                    r31.x = (uint)r16.z;
                    r31.y = (uint)r19.w;
                    r20.yz = r31.xy + r26.xy;
                    r29.xy = invBcTexSizes.xy * r20.yz;
                    r28.xyzw = materialTexBC7.SampleGrad(computeSpritesSampler_s, r29.xyz, r28.xyxx, r28.zwzz).xyzw;
                    r28.xyzw = r28.xyzw + -r30.xyzw;
                    r30.xyzw = r18.xxxx * r28.xyzw + r30.xyzw;
                  }
                } else {
                  if (12 == 0) r16.z = 0; else if (12+12 < 32) {                   r16.z = (uint)r25.x << (32-(12 + 12)); r16.z = (uint)r16.z >> (32-12);                  } else r16.z = (uint)r25.x >> 12;
                  r20.yz = (int2)r25.xz & int2(4095,1023);
                  r28.xyzw = (uint4)r27.zwzw;
                  r26.xy = r22.xy * r28.zw + float2(0.5,0.5);
                  r29.xy = float2(-0.5,-0.5) + r28.zw;
                  r26.xy = min(r29.xy, r26.xy);
                  r29.x = (uint)r20.y;
                  r29.y = (uint)r16.z;
                  r20.yw = r29.xy + r26.xy;
                  r26.xy = invBcTexSizes.zw * r20.yw;
                  r26.z = (uint)r20.z;
                  r28.xyzw = r28.xyzw * r21.xzyw;
                  r30.xyzw = materialTexBC3.SampleGrad(computeSpritesSampler_s, r26.xyz, r28.xyxx, r28.zwzz).xyzw;
                  r16.z = cmp(0 < r16.x);
                  if (r16.z != 0) {
                    if (12 == 0) r16.z = 0; else if (12+12 < 32) {                     r16.z = (uint)r25.y << (32-(12 + 12)); r16.z = (uint)r16.z >> (32-12);                    } else r16.z = (uint)r25.y >> 12;
                    r20.yz = (int2)r25.yz & int2(4095,1023);
                    r27.xyzw = (uint4)r27.xyzw;
                    r25.xy = r22.xy * r27.zw + float2(0.5,0.5);
                    r26.xy = float2(-0.5,-0.5) + r27.zw;
                    r25.xy = min(r26.xy, r25.xy);
                    r26.xz = (uint2)r20.yz;
                    r26.y = (uint)r16.z;
                    r20.yw = r26.xy + r25.xy;
                    r26.xy = invBcTexSizes.zw * r20.yw;
                    r27.xyzw = r27.xyzw * r21.xzyw;
                    r27.xyzw = materialTexBC3.SampleGrad(computeSpritesSampler_s, r26.xyz, r27.xyxx, r27.zwzz).xyzw;
                    r27.xyzw = r27.xyzw + -r30.xyzw;
                    r30.xyzw = r18.xxxx * r27.xyzw + r30.xyzw;
                  }
                }
                r16.z = (uint)r26.w;
                r16.z = 0.00392156886 * r16.z;
                r19.w = dot(r30.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r20.yzw = r19.www + -r30.xyz;
                r20.yzw = r16.zzz * r20.yzw + r30.xyz;
                if (8 == 0) r26.x = 0; else if (8+10 < 32) {                 r26.x = (uint)r25.z << (32-(8 + 10)); r26.x = (uint)r26.x >> (32-8);                } else r26.x = (uint)r25.z >> 10;
                if (8 == 0) r26.y = 0; else if (8+18 < 32) {                 r26.y = (uint)r25.z << (32-(8 + 18)); r26.y = (uint)r26.y >> (32-8);                } else r26.y = (uint)r25.z >> 18;
                if (1 == 0) r26.z = 0; else if (1+30 < 32) {                 r26.z = (uint)r25.z << (32-(1 + 30)); r26.z = (uint)r26.z >> (32-1);                } else r26.z = (uint)r25.z >> 30;
                r25.xy = (uint2)r26.xy;
                r16.z = 0.00392156886 * r25.y;
                r19.w = (int)r25.w & 255;
                r19.w = (uint)r19.w;
                r22.w = cmp(r16.y == 0.000000);
                r26.xy = cmp(r25.xy == float2(255,0));
                r22.w = r22.w ? r26.x : 0;
                r22.w = r26.y ? r22.w : 0;
                r25.y = cmp(r19.w == 255.000000);
                r22.w = r22.w ? r25.y : 0;
                r25.y = max(9.99999975e-05, r30.w);
                r26.xyw = saturate(r20.yzw / r25.yyy);
                r26.xyw = -r16.yyy * float3(0.00392156886,0.00392156886,0.00392156886) + r26.xyw;
                r26.xyw = max(float3(0,0,0), r26.xyw);
                r16.y = r25.x * 0.00392156886 + -r18.y;
                r16.y = max(9.99999975e-05, r16.y);
                r26.xyw = r26.xyw / r16.yyy;
                r26.xyw = min(float3(1,1,1), r26.xyw);
                r16.y = r19.w * 0.00392156886 + -r16.z;
                r26.xyw = r26.xyw * r16.yyy + r16.zzz;
                r27.xyz = cmp(float3(0.0404499993,0.0404499993,0.0404499993) >= r26.xyw);
                r28.xyz = float3(0.0773993805,0.0773993805,0.0773993805) * r26.xyw;
                r26.xyw = float3(0.0549999997,0.0549999997,0.0549999997) + r26.xyw;
                r26.xyw = float3(0.947867334,0.947867334,0.947867334) * abs(r26.xyw);
                r26.xyw = log2(r26.xyw);
                r26.xyw = float3(2.4000001,2.4000001,2.4000001) * r26.xyw;
                r26.xyw = exp2(r26.xyw);
                r26.xyw = r27.xyz ? r28.xyz : r26.xyw;
                r26.xyw = r26.xyw * r30.www;
                r30.xyz = r22.www ? r20.yzw : r26.xyw;
                r22.z = (uint)r17.z;
                r9.xyz = lmapTex.SampleLevel(computeSpritesSampler_s, r22.xyz, 0).xyz;
                r16.y = (int)r23.x & 255;
                r16.y = (uint)r16.y;
                r27.x = 0.00392156886 * r16.y;
                if (8 == 0) r16.y = 0; else if (8+8 < 32) {                 r16.y = (uint)r23.x << (32-(8 + 8)); r16.y = (uint)r16.y >> (32-8);                } else r16.y = (uint)r23.x >> 8;
                if (8 == 0) r16.z = 0; else if (8+16 < 32) {                 r16.z = (uint)r23.x << (32-(8 + 16)); r16.z = (uint)r16.z >> (32-8);                } else r16.z = (uint)r23.x >> 16;
                r16.yz = (uint2)r16.yz;
                r27.yz = float2(0.00392156886,0.00392156886) * r16.yz;
                r16.y = (uint)r23.x >> 24;
                r27.w = (uint)r16.y;
                r28.xyzw = r27.xyzw * r9.xyzw;
                r9.x = cmp(r18.z >= 0.984375);
                r9.y = 1.01587307 * r18.z;
                r9.z = r18.z * 64 + -63;
                r9.x = r9.x ? r9.z : r9.y;
                r9.x = max(9.99999994e-09, r9.x);
                r9.x = rcp(r9.x);
                r9.y = f16tof32(r24.x);
                r9.z = f16tof32(r8.z);
                r16.y = cmp(r9.z != 1.000000);
                r20.yzw = r30.xyz / r25.yyy;
                r16.z = r9.w * r27.w + r30.w;
                r29.w = saturate(r16.z * r9.z + -r9.z);
                r29.xyz = r29.www * r20.yzw;
                r30.xyzw = r16.yyyy ? r29.xyzw : r30.xyzw;
                r10.y = r29.w;
                r16.yz = r16.yy ? r10.xy : r28.ww;
                r9.z = cmp(r9.x < r0.z);
                r10.y = -r9.x + r0.z;
                r10.y = saturate(r10.y * r9.y);
                r9.z = r9.z ? r10.y : 1;
                r20.yz = -r9.xx + r3.xy;
                r9.xy = r20.yz * r9.yy;
                r9.xy = min(float2(1,1), abs(r9.xy));
                r9.x = r9.z * r9.x;
                r9.x = r9.x * r9.y;
                r29.xyzw = r30.xyzw * r9.xxxx;
                r30.xyzw = r29.wxyz * r16.yyyy;
                if (r26.z != 0) {
                  r9.x = r16.z * r9.x;
                  r9.y = (uint)r25.z >> 31;
                  if (r9.y != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r20.yzw, r17.z, l(24), t3.xxyz
                  r20.y = computeSpritesSampler[]..swiz;
                  r20.z = computeSpritesSampler[]..swiz;
                  r20.w = computeSpritesSampler[]..swiz;
                    r9.y = (uint)r20.y >> 28;
                    r9.y = 1 << (int)r9.y;
                    if (4 == 0) r25.x = 0; else if (4+24 < 32) {                     r25.x = (uint)r20.z << (32-(4 + 24)); r25.x = (uint)r25.x >> (32-4);                    } else r25.x = (uint)r20.z >> 24;
                    if (12 == 0) r25.y = 0; else if (12+16 < 32) {                     r25.y = (uint)r20.y << (32-(12 + 16)); r25.y = (uint)r25.y >> (32-12);                    } else r25.y = (uint)r20.y >> 16;
                    if (10 == 0) r25.z = 0; else if (10+12 < 32) {                     r25.z = (uint)r20.w << (32-(10 + 12)); r25.z = (uint)r25.z >> (32-10);                    } else r25.z = (uint)r20.w >> 12;
                    r9.z = 1 << (int)r25.x;
                    r10.y = (int)r20.z & 4095;
                    r26.xyzw = (uint4)r9.yzyz;
                    r9.yz = r22.xy * r26.zw + float2(0.5,0.5);
                    r29.xy = float2(-0.5,-0.5) + r26.zw;
                    r9.yz = min(r29.xy, r9.yz);
                    r25.x = (uint)r25.y;
                    r25.y = (uint)r10.y;
                    r25.xy = r25.xy + r9.yz;
                    r29.xy = invMaskTexSizes.xy * r25.xy;
                    r29.z = (uint)r25.z;
                    r21.xyzw = r26.xyzw * r21.xzyw;
                    r10.y = materialTexMask.SampleGrad(computeSpritesSampler_s, r29.xyz, r21.y, r21.w).x;
                    r16.x = cmp(0 < r16.x);
                    if (r16.x != 0) {
                      if (12 == 0) r16.x = 0; else if (12+12 < 32) {                       r16.x = (uint)r20.z << (32-(12 + 12)); r16.x = (uint)r16.x >> (32-12);                      } else r16.x = (uint)r20.z >> 12;
                      r16.z = (int)r20.w & 4095;
                      r25.xy = (uint2)r16.xz;
                      r9.yz = r25.xy + r9.yz;
                      r29.xy = invMaskTexSizes.xy * r9.yz;
                      r9.y = materialTexMask.SampleGrad(computeSpritesSampler_s, r29.xyz, r21.y, r21.w).x;
                      r9.y = r9.y + -r10.y;
                      r10.y = r18.x * r9.y + r10.y;
                    }
                  } else {
                    r10.y = 1;
                  }
                  r9.x = r10.y * r9.x;
                  r8.z = (uint)r8.z >> 16;
                  r8.z = f16tof32(r8.z);
                  if (1 == 0) r9.y = 0; else if (1+21 < 32) {                   r9.y = (uint)r25.w << (32-(1 + 21)); r9.y = (uint)r9.y >> (32-1);                  } else r9.y = (uint)r25.w >> 21;
                  r9.z = dot(r28.xyz, float3(0.298999995,0.587000012,0.114));
                  r9.z = max(9.99999975e-05, r9.z);
                  r9.z = max(relHDRExposure.x, r9.z);
                  r9.z = r9.z * r8.z;
                  r8.z = r9.y ? r8.z : r9.z;
                  r8.z = r9.x * r8.z;
                  r28.xyz = r27.xyz * r8.zzz + r28.xyz;
                }
                r8.z = -r29.w * r16.y + 1;
                r14.z = r14.z * r8.z;
                r9.x = cmp(r14.z < 0.800000012);
                r9.y = cmp(0.200000003 < r30.x);
                r9.x = (int)r9.y | (int)r9.x;
                if (r9.x != 0) {
                  r9.x = cmp(r18.z >= 0.000492187508);
                  if (r9.x != 0) {
                    r9.x = 1 + -r18.z;
                    r9.yz = float2(5.60519386e-45,0);
                    while (true) {
                      r10.y = cmp((int)r9.z >= 4);
                      if (r10.y != 0) break;
                      r10.y = (uint)r9.z << 2;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured r10.y, vThreadIDInGroupFlattened.x, r10.y, g0.xxxx
                    r10.y = computeSpritesSampler[]..swiz;
                      r10.y = cmp(r10.y >= r9.x);
                      if (r10.y != 0) {
                        r9.y = r9.z;
                        break;
                      }
                      r10.z = (int)r9.z + 1;
                      r9.yz = r10.wz;
                    }
                    floatZSampler[vThreadIDInGroupFlattened.x].16 = g0.x;
                    floatZSampler[vThreadIDInGroupFlattened.x].16 = g1.x;
                    r9.z = (uint)r9.y << 2;
                    r10.y = (int)r9.z + -4;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured r10.y, vThreadIDInGroupFlattened.x, r10.y, g1.xxxx
                  r10.y = computeSpritesSampler[]..swiz;
                    r10.y = r9.y ? r10.y : 1;
                    r10.z = 3;
                    while (true) {
                      r16.x = cmp((int)r10.z < 0);
                      if (r16.x != 0) break;
                      r16.x = cmp((int)r10.z >= (int)r9.y);
                      if (r16.x != 0) {
                        r16.x = (uint)r10.z << 2;
                        r16.y = (int)r16.x + 4;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured r16.z, vThreadIDInGroupFlattened.x, r16.x, g0.xxxx
                      r16.z = computeSpritesSampler[]..swiz;
                        floatZSampler[vThreadIDInGroupFlattened.x].r16.y = g0.x;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured r16.x, vThreadIDInGroupFlattened.x, r16.x, g1.xxxx
                      r16.x = computeSpritesSampler[]..swiz;
                        r16.x = r16.x * r8.z;
                        floatZSampler[vThreadIDInGroupFlattened.x].r16.y = g1.x;
                      }
                      r10.z = (int)r10.z + -1;
                    }
                    floatZSampler[vThreadIDInGroupFlattened.x].r9.z = g0.x;
                    r8.z = r10.y * r8.z;
                    floatZSampler[vThreadIDInGroupFlattened.x].r9.z = g1.x;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured r8.z, vThreadIDInGroupFlattened.x, l(16), g0.xxxx
                  r8.z = computeSpritesSampler[]..swiz;
                    r8.z = cmp(r8.z != 1000000015047466219876688855040.000000);
                    if (r8.z != 0) {
                      r8.z = 2;
                      while (true) {
                        r9.x = cmp((int)r8.z >= 4);
                        if (r9.x != 0) break;
                        r9.x = (uint)r8.z << 2;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured r9.z, vThreadIDInGroupFlattened.x, r9.x, g0.xxxx
                      r9.z = computeSpritesSampler[]..swiz;
                        r9.x = (int)r9.x + -4;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured r10.y, vThreadIDInGroupFlattened.x, r9.x, g0.xxxx
                      r10.y = computeSpritesSampler[]..swiz;
                        r9.z = -r10.y + r9.z;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured r10.yz, vThreadIDInGroupFlattened.x, r9.x, g1.xxyx
                      r10.y = computeSpritesSampler[]..swiz;
                      r10.z = computeSpritesSampler[]..swiz;
                        r9.x = r10.y + -r10.z;
                        r9.x = r9.z * r9.x;
                        x8[r8.z+0].x = r9.x;
                        r8.z = (int)r8.z + 1;
                      }
                      r8.z = x8[2].x;
                      r9.x = x8[3].x;
                      r8.z = cmp(r9.x < r8.z);
                      r9.xz = r8.zz ? float2(3,2) : float2(2,1);
                      r8.z = 2;
                      while (true) {
                        r10.y = cmp((int)r8.z >= 4);
                        if (r10.y != 0) break;
                        r10.y = cmp((int)r8.z >= (int)r9.x);
                        if (r10.y != 0) {
                          r10.y = (uint)r8.z << 2;
                          r10.z = (int)r10.y + 4;
                        // Known bad code for instruction (needs manual fix):
                                                ld_structured r10.z, vThreadIDInGroupFlattened.x, r10.z, g0.xxxx
                        r10.z = computeSpritesSampler[]..swiz;
                          floatZSampler[vThreadIDInGroupFlattened.x].r10.y = g0.x;
                        }
                        r8.z = (int)r8.z + 1;
                      }
                      r8.z = 1;
                      while (true) {
                        r9.x = cmp((int)r8.z >= 4);
                        if (r9.x != 0) break;
                        r9.x = cmp((int)r8.z >= (int)r9.z);
                        if (r9.x != 0) {
                          r9.x = (uint)r8.z << 2;
                          r10.y = (int)r9.x + 4;
                        // Known bad code for instruction (needs manual fix):
                                                ld_structured r10.y, vThreadIDInGroupFlattened.x, r10.y, g1.xxxx
                        r10.y = computeSpritesSampler[]..swiz;
                          floatZSampler[vThreadIDInGroupFlattened.x].r9.x = g1.x;
                        }
                        r8.z = (int)r8.z + 1;
                      }
                    }
                  }
                }
                if (r6.z != 0) {
                  r16.xyz = lmapTex.SampleLevel(computeSpritesPointSampler_s, r22.xyz, 0).xyz;
                  r30.x = 1;
                } else {
                  r9.xz = (uint2)r24.xw >> int2(16,16);
                  r18.y = f16tof32(r24.w);
                  r18.xz = f16tof32(r9.xz);
                  r9.xz = (uint2)r23.yz >> int2(16,16);
                  r21.xy = f16tof32(r23.yz);
                  r21.zw = f16tof32(r9.xz);
                  r20.yzw = r21.xzy * r30.xxx;
                  r24.x = r23.w;
                  r21.xyz = r24.xyz * r30.xxx;
                  r22.xyz = r30.yzw * r28.xyz + -r20.yzw;
                  r20.yzw = r21.www * r22.xyz + r20.yzw;
                  r16.xyz = r20.yzw * r18.xyz + r21.xyz;
                }
                r16.xyz = relHDRExposure.yyy * r16.xyz;
                r8.z = 1 + -r30.x;
                r15.yzw = r19.xyz * r8.zzz + r16.xyz;
              }
            } else {
              r15.yzw = r19.xyz;
            }
          } else {
            r15.yzw = r19.xyz;
          }
        }
        r11.xyzw = r15.xyzw;
        r13.w = r16.w;
        r12.xy = r14.zw;
        r12.z = r17.x;
      }
      r2.xyzw = r11.yzwx;
      r1.w = r12.x;
      r0.w = cmp(1 < (uint)r0.w);
      if (r0.w != 0) {
        r4.w = 0;
        r8.xyw = r5.xyw;
        r9.w = 0.00392156886;
        r10.xw = float2(1,5.60519386e-45);
        r11.xyzw = r2.wxyz;
        r0.w = r1.w;
        r1.x = r13.w;
        r1.z = r12.y;
        r12.x = r12.z;
        r12.w = r1.y;
        while (true) {
          if (r12.w == 0) break;
          r14.x = firstbitlow((uint)r12.w);
          r14.y = 1 << (int)r14.x;
          r14.y = ~(int)r14.y;
          r12.w = (int)r12.w & (int)r14.y;
          r4.z = (int)r14.x + 32;
          r14.x = spriteCullRough.Load(r4.xyzw).x;
          r4.z = (uint)r4.z << 5;
          r15.xyzw = r11.xyzw;
          r14.y = r0.w;
          r16.w = r1.x;
          r14.z = r1.z;
          r14.w = r12.x;
          r17.x = r14.x;
          while (true) {
            if (r17.x == 0) break;
            r17.y = firstbitlow((uint)r17.x);
            r17.z = 1 << (int)r17.y;
            r17.z = ~(int)r17.z;
            r17.x = (int)r17.z & (int)r17.x;
            r17.y = (int)r4.z + (int)r17.y;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=32)(mixed,mixed,mixed,mixed) r18.xyz, r17.y, l(16), t1.xyzx
          r18.x = computeSpritesSampler[]..swiz;
          r18.y = computeSpritesSampler[]..swiz;
          r18.z = computeSpritesSampler[]..swiz;
            r19.xyz = r15.yzw;
            r17.z = r15.x;
            r17.w = r14.z;
            r18.w = r14.w;
            while (true) {
              r20.x = cmp((uint)r17.w < (uint)r0.y);
              r20.y = cmp(r18.w < r18.z);
              r20.x = r20.y ? r20.x : 0;
              r20.x = r3.w ? r20.x : 0;
              if (r20.x == 0) break;
              r8.z = (int)r17.z & 7;
              r20.xy = oit_Nodes.Load(r8.xyzw).xy;
              r21.xyz = (uint3)r20.xxx >> int3(1,8,16);
              r20.z = (int)r21.x & 0x7f800000;
              bitmask.x = ((~(-1 << 8)) << 15) & 0xffffffff;  r20.x = (((uint)r20.x << 15) & bitmask.x) | ((uint)0 & ~bitmask.x);
              bitmask.x = ((~(-1 << 23)) << 0) & 0xffffffff;  r20.x = (((uint)r20.x << 0) & bitmask.x) | ((uint)r21.x & ~bitmask.x);
              r22.x = r20.x + -r20.z;
              bitmask.x = ((~(-1 << 8)) << 15) & 0xffffffff;  r20.x = (((uint)r21.y << 15) & bitmask.x) | ((uint)0 & ~bitmask.x);
              bitmask.w = ((~(-1 << 8)) << 15) & 0xffffffff;  r20.w = (((uint)r21.z << 15) & bitmask.w) | ((uint)0 & ~bitmask.w);
              bitmask.x = ((~(-1 << 23)) << 0) & 0xffffffff;  r20.x = (((uint)r20.x << 0) & bitmask.x) | ((uint)r21.x & ~bitmask.x);
              bitmask.w = ((~(-1 << 23)) << 0) & 0xffffffff;  r20.w = (((uint)r20.w << 0) & bitmask.w) | ((uint)r21.x & ~bitmask.w);
              r22.yz = r20.xw + -r20.zz;
              r20.x = (int)r20.y & 2046;
              r20.x = (uint)r20.x;
              r20.x = -r20.x * 0.000488758553 + 1;
              r19.xyz = r19.xyz * r20.xxx + r22.xyz;
              r17.w = (int)r17.w + 1;
              r20.x = (uint)r17.z >> 4;
              r20.y = cmp((uint)r17.w < (uint)r0.y);
              if (r20.y != 0) {
                if (3 == 0) r8.z = 0; else if (3+4 < 32) {                 r8.z = (uint)r17.z << (32-(3 + 4)); r8.z = (uint)r8.z >> (32-3);                } else r8.z = (uint)r17.z >> 4;
                r8.z = oit_Nodes.Load(r8.xyzw).y;
                r8.z = (uint)r8.z >> 2;
                r18.w = (int)r8.z & 0x3ffffe00;
              } else {
                r18.w = 2;
              }
              r17.z = r20.x;
            }
            r15.x = r17.z;
            r14.z = r17.w;
            r14.w = r18.w;
            r8.z = cmp(r0.x < r18.z);
            r8.z = (int)r6.x | (int)r8.z;
            if (r8.z != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=32)(mixed,mixed,mixed,mixed) r20.xyzw, r17.y, l(0), t1.xyzw
            r20.x = computeSpritesSampler[]..swiz;
            r20.y = computeSpritesSampler[]..swiz;
            r20.z = computeSpritesSampler[]..swiz;
            r20.w = computeSpritesSampler[]..swiz;
              r21.xyzw = r20.xyzw * r7.xyzw;
              r21.xy = r21.xz + r21.yw;
              r21.xy = r21.xy + r18.xy;
              r18.xy = r21.xy * float2(2,2) + float2(-1,-1);
              r8.z = max(abs(r18.x), abs(r18.y));
              r8.z = cmp(r8.z < 1);
              if (r8.z != 0) {
                if (r6.y != 0) {
                  r18.xy = cmp(float2(0.995000005,0.995000005) < r21.xy);
                  r8.z = (int)r18.y | (int)r18.x;
                  r18.xy = cmp(r21.xy < float2(0.00499999989,0.00499999989));
                  r18.x = (int)r18.y | (int)r18.x;
                  r8.z = (int)r8.z | (int)r18.x;
                  if (r8.z != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r8.z, r17.y, l(52), t2.xxxx
                  r8.z = computeSpritesSampler[]..swiz;
                    if (1 == 0) r8.z = 0; else if (1+22 < 32) {                     r8.z = (uint)r8.z << (32-(1 + 22)); r8.z = (uint)r8.z >> (32-1);                    } else r8.z = (uint)r8.z >> 22;
                    r15.yzw = r8.zzz ? float3(0.75,0.300000012,0) : float3(0.75,0.75,0.75);
                    r16.w = 1;
                  } else {
                    r8.z = cmp(r16.w != 1.000000);
                    r18.x = cmp(r19.x == 0.000000);
                    r22.xy = cmp(r19.yx >= float2(1,1));
                    r19.w = 0.0500000007 + r19.x;
                    r23.xyz = float3(-0.0500000007,0,0.0500000007) + r19.yxy;
                    r22.zw = r22.xx ? r19.wy : r23.yz;
                    r24.xy = float2(0,-0.0500000007) + r19.xy;
                    r23.yz = float2(0.0500000007,0) + r19.xy;
                    r23.yz = r22.yy ? r24.xy : r23.yz;
                    r18.y = cmp(r19.y != 0.000000);
                    r24.z = r18.y ? r23.x : r19.y;
                    r22.xy = r22.xx ? r23.yz : r24.xz;
                    r16.xy = r18.xx ? r22.zw : r22.xy;
                    r16.z = r19.z;
                    r22.xyzw = r8.zzzz ? float4(0,0,0,1) : r16.xyzw;
                    r16.xyz = r19.xyz;
                    r16.xyzw = r6.wwww ? r22.xyzw : r16.xyzw;
                    r15.yzw = r16.xyz;
                  }
                } else {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r22.xyzw, r17.y, l(0), t2.xyzw
                r22.x = computeSpritesSampler[]..swiz;
                r22.y = computeSpritesSampler[]..swiz;
                r22.z = computeSpritesSampler[]..swiz;
                r22.w = computeSpritesSampler[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r23.xyzw, r17.y, l(16), t2.zxyw
                r23.x = computeSpritesSampler[]..swiz;
                r23.y = computeSpritesSampler[]..swiz;
                r23.z = computeSpritesSampler[]..swiz;
                r23.w = computeSpritesSampler[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r8.z, r17.y, l(32), t2.xxxx
                r8.z = computeSpritesSampler[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r24.xyzw, r17.y, l(40), t2.xyzw
                r24.x = computeSpritesSampler[]..swiz;
                r24.y = computeSpritesSampler[]..swiz;
                r24.z = computeSpritesSampler[]..swiz;
                r24.w = computeSpritesSampler[]..swiz;
                  r16.xy = (uint2)r24.xy >> int2(24,24);
                  r16.xy = (uint2)r16.xy;
                  r18.xy = float2(0.00390625,0.00392156886) * r16.xy;
                  if (4 == 0) r25.x = 0; else if (4+26 < 32) {                   r25.x = (uint)r24.z << (32-(4 + 26)); r25.x = (uint)r25.x >> (32-4);                  } else r25.x = (uint)r24.z >> 26;
                  if (4 == 0) r25.y = 0; else if (4+16 < 32) {                   r25.y = (uint)r24.w << (32-(4 + 16)); r25.y = (uint)r25.y >> (32-4);                  } else r25.y = (uint)r24.w >> 16;
                  if (1 == 0) r25.z = 0; else if (1+20 < 32) {                   r25.z = (uint)r24.w << (32-(1 + 20)); r25.z = (uint)r25.z >> (32-1);                  } else r25.z = (uint)r24.w >> 20;
                  if (8 == 0) r25.w = 0; else if (8+8 < 32) {                   r25.w = (uint)r24.w << (32-(8 + 8)); r25.w = (uint)r25.w >> (32-8);                  } else r25.w = (uint)r24.w >> 8;
                  r26.xyzw = int4(1,1,1,1) << (int4)r25.xyxy;
                  if (r25.z != 0) {
                    if (12 == 0) r16.z = 0; else if (12+12 < 32) {                     r16.z = (uint)r24.x << (32-(12 + 12)); r16.z = (uint)r16.z >> (32-12);                    } else r16.z = (uint)r24.x >> 12;
                    r25.xy = (int2)r24.xz & int2(4095,1023);
                    r27.xyzw = (uint4)r26.zwzw;
                    r28.xy = r21.xy * r27.zw + float2(0.5,0.5);
                    r28.zw = float2(-0.5,-0.5) + r27.zw;
                    r28.xy = min(r28.xy, r28.zw);
                    r29.xz = (uint2)r25.xy;
                    r29.y = (uint)r16.z;
                    r25.xz = r29.xy + r28.xy;
                    r29.xy = invBcTexSizes.xy * r25.xz;
                    r27.xyzw = r27.xyzw * r20.xzyw;
                    r30.xyzw = materialTexBC7.SampleGrad(computeSpritesSampler_s, r29.xyz, r27.xyxx, r27.zwzz).xyzw;
                    r16.z = cmp(0 < r16.x);
                    if (r16.z != 0) {
                      r16.z = (int)r24.y & 4095;
                      if (12 == 0) r19.w = 0; else if (12+12 < 32) {                       r19.w = (uint)r24.y << (32-(12 + 12)); r19.w = (uint)r19.w >> (32-12);                      } else r19.w = (uint)r24.y >> 12;
                      r25.x = (uint)r16.z;
                      r25.y = (uint)r19.w;
                      r25.xy = r28.xy + r25.xy;
                      r29.xy = invBcTexSizes.xy * r25.xy;
                      r27.xyzw = materialTexBC7.SampleGrad(computeSpritesSampler_s, r29.xyz, r27.xyxx, r27.zwzz).xyzw;
                      r27.xyzw = r27.xyzw + -r30.xyzw;
                      r30.xyzw = r18.xxxx * r27.xyzw + r30.xyzw;
                    }
                  } else {
                    if (12 == 0) r16.z = 0; else if (12+12 < 32) {                     r16.z = (uint)r24.x << (32-(12 + 12)); r16.z = (uint)r16.z >> (32-12);                    } else r16.z = (uint)r24.x >> 12;
                    r25.xy = (int2)r24.xz & int2(4095,1023);
                    r27.xyzw = (uint4)r26.zwzw;
                    r28.xy = r21.xy * r27.zw + float2(0.5,0.5);
                    r28.zw = float2(-0.5,-0.5) + r27.zw;
                    r28.xy = min(r28.xy, r28.zw);
                    r29.x = (uint)r25.x;
                    r29.y = (uint)r16.z;
                    r25.xz = r29.xy + r28.xy;
                    r28.xy = invBcTexSizes.zw * r25.xz;
                    r28.z = (uint)r25.y;
                    r27.xyzw = r27.xyzw * r20.xzyw;
                    r30.xyzw = materialTexBC3.SampleGrad(computeSpritesSampler_s, r28.xyz, r27.xyxx, r27.zwzz).xyzw;
                    r16.z = cmp(0 < r16.x);
                    if (r16.z != 0) {
                      if (12 == 0) r16.z = 0; else if (12+12 < 32) {                       r16.z = (uint)r24.y << (32-(12 + 12)); r16.z = (uint)r16.z >> (32-12);                      } else r16.z = (uint)r24.y >> 12;
                      r24.xy = (int2)r24.yz & int2(4095,1023);
                      r26.xyzw = (uint4)r26.xyzw;
                      r25.xy = r21.xy * r26.zw + float2(0.5,0.5);
                      r27.xy = float2(-0.5,-0.5) + r26.zw;
                      r25.xy = min(r27.xy, r25.xy);
                      r27.x = (uint)r24.x;
                      r27.y = (uint)r16.z;
                      r25.xy = r27.xy + r25.xy;
                      r25.xy = invBcTexSizes.zw * r25.xy;
                      r25.z = (uint)r24.y;
                      r26.xyzw = r26.xyzw * r20.xzyw;
                      r26.xyzw = materialTexBC3.SampleGrad(computeSpritesSampler_s, r25.xyz, r26.xyxx, r26.zwzz).xyzw;
                      r26.xyzw = r26.xyzw + -r30.xyzw;
                      r30.xyzw = r18.xxxx * r26.xyzw + r30.xyzw;
                    }
                  }
                  r16.z = (uint)r25.w;
                  r16.z = 0.00392156886 * r16.z;
                  r19.w = dot(r30.xyz, float3(0.212599993,0.715200007,0.0722000003));
                  r25.xyz = r19.www + -r30.xyz;
                  r25.xyz = r16.zzz * r25.xyz + r30.xyz;
                  if (8 == 0) r26.x = 0; else if (8+10 < 32) {                   r26.x = (uint)r24.z << (32-(8 + 10)); r26.x = (uint)r26.x >> (32-8);                  } else r26.x = (uint)r24.z >> 10;
                  if (8 == 0) r26.y = 0; else if (8+18 < 32) {                   r26.y = (uint)r24.z << (32-(8 + 18)); r26.y = (uint)r26.y >> (32-8);                  } else r26.y = (uint)r24.z >> 18;
                  if (1 == 0) r26.z = 0; else if (1+30 < 32) {                   r26.z = (uint)r24.z << (32-(1 + 30)); r26.z = (uint)r26.z >> (32-1);                  } else r26.z = (uint)r24.z >> 30;
                  r24.xy = (uint2)r26.xy;
                  r16.z = 0.00392156886 * r24.y;
                  r19.w = (int)r24.w & 255;
                  r19.w = (uint)r19.w;
                  r21.w = cmp(r16.y == 0.000000);
                  r26.xy = cmp(r24.xy == float2(255,0));
                  r21.w = r21.w ? r26.x : 0;
                  r21.w = r26.y ? r21.w : 0;
                  r24.y = cmp(r19.w == 255.000000);
                  r21.w = r21.w ? r24.y : 0;
                  r24.y = max(9.99999975e-05, r30.w);
                  r26.xyw = saturate(r25.xyz / r24.yyy);
                  r26.xyw = -r16.yyy * float3(0.00392156886,0.00392156886,0.00392156886) + r26.xyw;
                  r26.xyw = max(float3(0,0,0), r26.xyw);
                  r16.y = r24.x * 0.00392156886 + -r18.y;
                  r16.y = max(9.99999975e-05, r16.y);
                  r26.xyw = r26.xyw / r16.yyy;
                  r26.xyw = min(float3(1,1,1), r26.xyw);
                  r16.y = r19.w * 0.00392156886 + -r16.z;
                  r26.xyw = r26.xyw * r16.yyy + r16.zzz;
                  r27.xyz = cmp(float3(0.0404499993,0.0404499993,0.0404499993) >= r26.xyw);
                  r28.xyz = float3(0.0773993805,0.0773993805,0.0773993805) * r26.xyw;
                  r26.xyw = float3(0.0549999997,0.0549999997,0.0549999997) + r26.xyw;
                  r26.xyw = float3(0.947867334,0.947867334,0.947867334) * abs(r26.xyw);
                  r26.xyw = log2(r26.xyw);
                  r26.xyw = float3(2.4000001,2.4000001,2.4000001) * r26.xyw;
                  r26.xyw = exp2(r26.xyw);
                  r26.xyw = r27.xyz ? r28.xyz : r26.xyw;
                  r26.xyw = r26.xyw * r30.www;
                  r30.xyz = r21.www ? r25.xyz : r26.xyw;
                  r21.z = (uint)r17.y;
                  r9.xyz = lmapTex.SampleLevel(computeSpritesSampler_s, r21.xyz, 0).xyz;
                  r16.y = (int)r22.x & 255;
                  r16.y = (uint)r16.y;
                  r25.x = 0.00392156886 * r16.y;
                  if (8 == 0) r16.y = 0; else if (8+8 < 32) {                   r16.y = (uint)r22.x << (32-(8 + 8)); r16.y = (uint)r16.y >> (32-8);                  } else r16.y = (uint)r22.x >> 8;
                  if (8 == 0) r16.z = 0; else if (8+16 < 32) {                   r16.z = (uint)r22.x << (32-(8 + 16)); r16.z = (uint)r16.z >> (32-8);                  } else r16.z = (uint)r22.x >> 16;
                  r16.yz = (uint2)r16.yz;
                  r25.yz = float2(0.00392156886,0.00392156886) * r16.yz;
                  r16.y = (uint)r22.x >> 24;
                  r25.w = (uint)r16.y;
                  r27.xyzw = r25.xyzw * r9.xyzw;
                  r9.x = cmp(r18.z >= 0.984375);
                  r9.y = 1.01587307 * r18.z;
                  r9.z = r18.z * 64 + -63;
                  r9.x = r9.x ? r9.z : r9.y;
                  r9.x = max(9.99999994e-09, r9.x);
                  r9.x = rcp(r9.x);
                  r9.y = f16tof32(r23.x);
                  r9.z = f16tof32(r8.z);
                  r16.y = cmp(r9.z != 1.000000);
                  r26.xyw = r30.xyz / r24.yyy;
                  r16.z = r9.w * r25.w + r30.w;
                  r28.w = saturate(r16.z * r9.z + -r9.z);
                  r28.xyz = r28.www * r26.xyw;
                  r29.xyzw = r16.yyyy ? r28.xyzw : r30.xyzw;
                  r10.y = r28.w;
                  r16.yz = r16.yy ? r10.xy : r27.ww;
                  r9.z = cmp(r9.x < r0.z);
                  r10.y = -r9.x + r0.z;
                  r10.y = saturate(r10.y * r9.y);
                  r9.z = r9.z ? r10.y : 1;
                  r24.xy = -r9.xx + r3.xy;
                  r9.xy = r24.xy * r9.yy;
                  r9.xy = min(float2(1,1), abs(r9.xy));
                  r9.x = r9.z * r9.x;
                  r9.x = r9.x * r9.y;
                  r28.xyzw = r29.xyzw * r9.xxxx;
                  r29.xyzw = r28.wxyz * r16.yyyy;
                  if (r26.z != 0) {
                    r9.x = r16.z * r9.x;
                    r9.y = (uint)r24.z >> 31;
                    if (r9.y != 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r24.xyz, r17.y, l(24), t3.xyzx
                    r24.x = computeSpritesSampler[]..swiz;
                    r24.y = computeSpritesSampler[]..swiz;
                    r24.z = computeSpritesSampler[]..swiz;
                      r9.y = (uint)r24.x >> 28;
                      r9.y = 1 << (int)r9.y;
                      if (4 == 0) r26.x = 0; else if (4+24 < 32) {                       r26.x = (uint)r24.y << (32-(4 + 24)); r26.x = (uint)r26.x >> (32-4);                      } else r26.x = (uint)r24.y >> 24;
                      if (12 == 0) r26.y = 0; else if (12+16 < 32) {                       r26.y = (uint)r24.x << (32-(12 + 16)); r26.y = (uint)r26.y >> (32-12);                      } else r26.y = (uint)r24.x >> 16;
                      if (10 == 0) r26.z = 0; else if (10+12 < 32) {                       r26.z = (uint)r24.z << (32-(10 + 12)); r26.z = (uint)r26.z >> (32-10);                      } else r26.z = (uint)r24.z >> 12;
                      r9.z = 1 << (int)r26.x;
                      r10.y = (int)r24.y & 4095;
                      r30.xyzw = (uint4)r9.yzyz;
                      r9.yz = r21.xy * r30.zw + float2(0.5,0.5);
                      r26.xw = float2(-0.5,-0.5) + r30.zw;
                      r9.yz = min(r26.xw, r9.yz);
                      r26.x = (uint)r26.y;
                      r26.y = (uint)r10.y;
                      r26.xy = r26.xy + r9.yz;
                      r28.xy = invMaskTexSizes.xy * r26.xy;
                      r28.z = (uint)r26.z;
                      r20.xyzw = r30.xyzw * r20.xzyw;
                      r10.y = materialTexMask.SampleGrad(computeSpritesSampler_s, r28.xyz, r20.y, r20.w).x;
                      r16.x = cmp(0 < r16.x);
                      if (r16.x != 0) {
                        if (12 == 0) r16.x = 0; else if (12+12 < 32) {                         r16.x = (uint)r24.y << (32-(12 + 12)); r16.x = (uint)r16.x >> (32-12);                        } else r16.x = (uint)r24.y >> 12;
                        r16.z = (int)r24.z & 4095;
                        r24.xy = (uint2)r16.xz;
                        r9.yz = r24.xy + r9.yz;
                        r28.xy = invMaskTexSizes.xy * r9.yz;
                        r9.y = materialTexMask.SampleGrad(computeSpritesSampler_s, r28.xyz, r20.y, r20.w).x;
                        r9.y = r9.y + -r10.y;
                        r10.y = r18.x * r9.y + r10.y;
                      }
                    } else {
                      r10.y = 1;
                    }
                    r9.x = r10.y * r9.x;
                    r8.z = (uint)r8.z >> 16;
                    r8.z = f16tof32(r8.z);
                    if (1 == 0) r9.y = 0; else if (1+21 < 32) {                     r9.y = (uint)r24.w << (32-(1 + 21)); r9.y = (uint)r9.y >> (32-1);                    } else r9.y = (uint)r24.w >> 21;
                    r9.z = dot(r27.xyz, float3(0.298999995,0.587000012,0.114));
                    r9.z = max(9.99999975e-05, r9.z);
                    r9.z = max(relHDRExposure.x, r9.z);
                    r9.z = r9.z * r8.z;
                    r8.z = r9.y ? r8.z : r9.z;
                    r8.z = r9.x * r8.z;
                    r27.xyz = r25.xyz * r8.zzz + r27.xyz;
                  }
                  r8.z = -r28.w * r16.y + 1;
                  r14.y = r14.y * r8.z;
                  r9.x = cmp(r14.y < 0.800000012);
                  r9.y = cmp(0.200000003 < r29.x);
                  r9.x = (int)r9.y | (int)r9.x;
                  if (r9.x != 0) {
                    r9.x = cmp(r18.z >= 0.000492187508);
                    if (r9.x != 0) {
                      r9.x = 1 + -r18.z;
                      r9.yz = float2(5.60519386e-45,0);
                      while (true) {
                        r10.y = cmp((int)r9.z >= 4);
                        if (r10.y != 0) break;
                        r10.y = (uint)r9.z << 2;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured r10.y, vThreadIDInGroupFlattened.x, r10.y, g0.xxxx
                      r10.y = computeSpritesSampler[]..swiz;
                        r10.y = cmp(r10.y >= r9.x);
                        if (r10.y != 0) {
                          r9.y = r9.z;
                          break;
                        }
                        r10.z = (int)r9.z + 1;
                        r9.yz = r10.wz;
                      }
                      floatZSampler[vThreadIDInGroupFlattened.x].16 = g0.x;
                      floatZSampler[vThreadIDInGroupFlattened.x].16 = g1.x;
                      r9.z = (uint)r9.y << 2;
                      r10.y = (int)r9.z + -4;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured r10.y, vThreadIDInGroupFlattened.x, r10.y, g1.xxxx
                    r10.y = computeSpritesSampler[]..swiz;
                      r10.y = r9.y ? r10.y : 1;
                      r10.z = 3;
                      while (true) {
                        r16.x = cmp((int)r10.z < 0);
                        if (r16.x != 0) break;
                        r16.x = cmp((int)r10.z >= (int)r9.y);
                        if (r16.x != 0) {
                          r16.x = (uint)r10.z << 2;
                          r16.y = (int)r16.x + 4;
                        // Known bad code for instruction (needs manual fix):
                                                ld_structured r16.z, vThreadIDInGroupFlattened.x, r16.x, g0.xxxx
                        r16.z = computeSpritesSampler[]..swiz;
                          floatZSampler[vThreadIDInGroupFlattened.x].r16.y = g0.x;
                        // Known bad code for instruction (needs manual fix):
                                                ld_structured r16.x, vThreadIDInGroupFlattened.x, r16.x, g1.xxxx
                        r16.x = computeSpritesSampler[]..swiz;
                          r16.x = r16.x * r8.z;
                          floatZSampler[vThreadIDInGroupFlattened.x].r16.y = g1.x;
                        }
                        r10.z = (int)r10.z + -1;
                      }
                      floatZSampler[vThreadIDInGroupFlattened.x].r9.z = g0.x;
                      r8.z = r10.y * r8.z;
                      floatZSampler[vThreadIDInGroupFlattened.x].r9.z = g1.x;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured r8.z, vThreadIDInGroupFlattened.x, l(16), g0.xxxx
                    r8.z = computeSpritesSampler[]..swiz;
                      r8.z = cmp(r8.z != 1000000015047466219876688855040.000000);
                      if (r8.z != 0) {
                        r8.z = 2;
                        while (true) {
                          r9.x = cmp((int)r8.z >= 4);
                          if (r9.x != 0) break;
                          r9.x = (uint)r8.z << 2;
                        // Known bad code for instruction (needs manual fix):
                                                ld_structured r9.z, vThreadIDInGroupFlattened.x, r9.x, g0.xxxx
                        r9.z = computeSpritesSampler[]..swiz;
                          r9.x = (int)r9.x + -4;
                        // Known bad code for instruction (needs manual fix):
                                                ld_structured r10.y, vThreadIDInGroupFlattened.x, r9.x, g0.xxxx
                        r10.y = computeSpritesSampler[]..swiz;
                          r9.z = -r10.y + r9.z;
                        // Known bad code for instruction (needs manual fix):
                                                ld_structured r10.yz, vThreadIDInGroupFlattened.x, r9.x, g1.xxyx
                        r10.y = computeSpritesSampler[]..swiz;
                        r10.z = computeSpritesSampler[]..swiz;
                          r9.x = r10.y + -r10.z;
                          r9.x = r9.z * r9.x;
                          x9[r8.z+0].x = r9.x;
                          r8.z = (int)r8.z + 1;
                        }
                        r8.z = x9[2].x;
                        r9.x = x9[3].x;
                        r8.z = cmp(r9.x < r8.z);
                        r9.xz = r8.zz ? float2(3,2) : float2(2,1);
                        r8.z = 2;
                        while (true) {
                          r10.y = cmp((int)r8.z >= 4);
                          if (r10.y != 0) break;
                          r10.y = cmp((int)r8.z >= (int)r9.x);
                          if (r10.y != 0) {
                            r10.y = (uint)r8.z << 2;
                            r10.z = (int)r10.y + 4;
                          // Known bad code for instruction (needs manual fix):
                                                    ld_structured r10.z, vThreadIDInGroupFlattened.x, r10.z, g0.xxxx
                          r10.z = computeSpritesSampler[]..swiz;
                            floatZSampler[vThreadIDInGroupFlattened.x].r10.y = g0.x;
                          }
                          r8.z = (int)r8.z + 1;
                        }
                        r8.z = 1;
                        while (true) {
                          r9.x = cmp((int)r8.z >= 4);
                          if (r9.x != 0) break;
                          r9.x = cmp((int)r8.z >= (int)r9.z);
                          if (r9.x != 0) {
                            r9.x = (uint)r8.z << 2;
                            r10.y = (int)r9.x + 4;
                          // Known bad code for instruction (needs manual fix):
                                                    ld_structured r10.y, vThreadIDInGroupFlattened.x, r10.y, g1.xxxx
                          r10.y = computeSpritesSampler[]..swiz;
                            floatZSampler[vThreadIDInGroupFlattened.x].r9.x = g1.x;
                          }
                          r8.z = (int)r8.z + 1;
                        }
                      }
                    }
                  }
                  if (r6.z != 0) {
                    r16.xyz = lmapTex.SampleLevel(computeSpritesPointSampler_s, r21.xyz, 0).xyz;
                    r29.x = 1;
                  } else {
                    r9.xz = (uint2)r23.xw >> int2(16,16);
                    r18.y = f16tof32(r23.w);
                    r18.xz = f16tof32(r9.xz);
                    r9.xz = (uint2)r22.yz >> int2(16,16);
                    r20.xy = f16tof32(r22.yz);
                    r20.zw = f16tof32(r9.xz);
                    r20.xyz = r20.xzy * r29.xxx;
                    r23.x = r22.w;
                    r21.xyz = r23.xyz * r29.xxx;
                    r22.xyz = r29.yzw * r27.xyz + -r20.xyz;
                    r20.xyz = r20.www * r22.xyz + r20.xyz;
                    r16.xyz = r20.xyz * r18.xyz + r21.xyz;
                  }
                  r16.xyz = relHDRExposure.yyy * r16.xyz;
                  r8.z = 1 + -r29.x;
                  r15.yzw = r19.xyz * r8.zzz + r16.xyz;
                }
              } else {
                r15.yzw = r19.xyz;
              }
            } else {
              r15.yzw = r19.xyz;
            }
          }
          r11.xyzw = r15.xyzw;
          r0.w = r14.y;
          r1.x = r16.w;
          r1.z = r14.z;
          r12.x = r14.w;
        }
        r2.xyzw = r11.yzwx;
        r1.w = r0.w;
        r13.w = r1.x;
        r12.y = r1.z;
      }
    } else {
      r13.w = 0;
      r12.y = 0;
    }
    r0.x = saturate(0.800000012 + -r1.w);
    r0.x = -r0.x * 1.25 + 1;
    r0.x = r0.x * r3.z;
  // No code for instruction (needs manual fix):
    store_uav_typed u4.xyzw, vThreadID.xyyy, r0.xxxx
    r0.x = cmp(0.899999976 >= r0.x);
    if (r0.x != 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured r1.xyzw, vThreadIDInGroupFlattened.x, l(0), g0.xyzw
    r1.x = computeSpritesSampler[]..swiz;
    r1.y = computeSpritesSampler[]..swiz;
    r1.z = computeSpritesSampler[]..swiz;
    r1.w = computeSpritesSampler[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured r3.xyzw, vThreadIDInGroupFlattened.x, l(0), g1.xyzw
    r3.x = computeSpritesSampler[]..swiz;
    r3.y = computeSpritesSampler[]..swiz;
    r3.z = computeSpritesSampler[]..swiz;
    r3.w = computeSpritesSampler[]..swiz;
      r1.xyzw = float4(1,1,1,1) + -r1.xyzw;
      r4.xyzw = cmp(r1.xyzw >= float4(0.984375,0.984375,0.984375,0.984375));
      r0.xz = float2(1.01587307,1.01587307) * r1.xy;
      r1.xy = r1.xy * float2(64,64) + float2(-63,-63);
      r0.xz = r4.xy ? r1.xy : r0.xz;
      r0.xz = max(float2(9.99999994e-09,9.99999994e-09), r0.xz);
      r6.xy = rcp(r0.xz);
      r0.xz = float2(1.01587307,1.01587307) * r1.zw;
      r1.xy = r1.zw * float2(64,64) + float2(-63,-63);
      r0.xz = r4.zw ? r1.xy : r0.xz;
      r0.xz = max(float2(9.99999994e-09,9.99999994e-09), r0.xz);
      r6.zw = rcp(r0.xz);
      r1.xyzw = float4(0.000500000024,0.000500000024,0.000500000024,0.000500000024) * r6.xyzw;
      r1.xyzw = min(float4(1,1,1,1), r1.xyzw);
    // No code for instruction (needs manual fix):
        store_uav_typed u2.xyzw, vThreadID.xyyy, r1.xyzw
    // No code for instruction (needs manual fix):
        store_uav_typed u3.xyzw, vThreadID.xyyy, r3.xyzw
    }
    r0.x = (int)computeSpriteControl.y & 6;
    r0.x = cmp((int)r0.x == 0);
    r13.xyz = r2.xyz;
    r0.z = r2.w;
    r0.w = r12.y;
    while (true) {
      r1.x = cmp((uint)r0.w < (uint)r0.y);
      r1.x = r0.x ? r1.x : 0;
      if (r1.x == 0) break;
      r5.z = (int)r0.z & 7;
      r1.xy = oit_Nodes.Load(r5.xyzw).xy;
      r3.xyz = (uint3)r1.xxx >> int3(1,8,16);
      r1.z = (int)r3.x & 0x7f800000;
      bitmask.x = ((~(-1 << 8)) << 15) & 0xffffffff;  r1.x = (((uint)r1.x << 15) & bitmask.x) | ((uint)0 & ~bitmask.x);
      bitmask.x = ((~(-1 << 23)) << 0) & 0xffffffff;  r1.x = (((uint)r1.x << 0) & bitmask.x) | ((uint)r3.x & ~bitmask.x);
      r4.x = r1.x + -r1.z;
      bitmask.x = ((~(-1 << 8)) << 15) & 0xffffffff;  r1.x = (((uint)r3.y << 15) & bitmask.x) | ((uint)0 & ~bitmask.x);
      bitmask.w = ((~(-1 << 8)) << 15) & 0xffffffff;  r1.w = (((uint)r3.z << 15) & bitmask.w) | ((uint)0 & ~bitmask.w);
      bitmask.x = ((~(-1 << 23)) << 0) & 0xffffffff;  r1.x = (((uint)r1.x << 0) & bitmask.x) | ((uint)r3.x & ~bitmask.x);
      bitmask.w = ((~(-1 << 23)) << 0) & 0xffffffff;  r1.w = (((uint)r1.w << 0) & bitmask.w) | ((uint)r3.x & ~bitmask.w);
      r4.yz = r1.xw + -r1.zz;
      r1.x = (int)r1.y & 2046;
      r1.x = (uint)r1.x;
      r1.x = -r1.x * 0.000488758553 + 1;
      r13.xyz = r13.xyz * r1.xxx + r4.xyz;
      r0.w = (int)r0.w + 1;
      r0.z = (uint)r0.z >> 4;
    }
  // No code for instruction (needs manual fix):
    store_uav_typed u5.xyzw, vThreadID.xyyy, r13.xyzw
  }
  return;
}