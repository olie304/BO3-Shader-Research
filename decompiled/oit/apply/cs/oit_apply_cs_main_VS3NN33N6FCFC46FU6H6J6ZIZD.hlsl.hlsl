// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:02 2021

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32;
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
  float4 x10[4];
  float4 x11[4];
  float4 x12[4];
  float4 x13[4];
  float4 x14[4];
  float4 x15[4];
  float4 x16[4];
  float4 x17[4];
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
    r4.xyzw = cmp(int4(8,9,10,11) < (uint4)r0.yyyy);
    if (r4.x != 0) {
      r5.xy = vThreadID.xy;
      r5.zw = float2(1.12103877e-44,0);
      r3.z = oit_Nodes.Load(r5.xyzw).y;
      r5.xy = (int2)r3.zz & int2(1,2046);
      r3.w = max((uint)r3.y, (uint)r3.z);
      r6.x = max((uint)r3.x, (uint)r3.w);
      r6.y = min((uint)r3.w, (uint)r3.x);
      r3.xy = r5.xx ? r6.xy : r3.xy;
      r3.w = (uint)r5.y;
      r4.x = -r3.w * 0.000488758553 + 1;
      r1.w = r4.x * r1.w;
      r3.w = cmp(409.200012 < r3.w);
      if (r3.w != 0) {
        r0.z = max((uint)r3.z, (uint)r0.z);
        r3.w = (uint)r3.z >> 2;
        r3.w = (int)r3.w & 0x3ffffe00;
        r5.x = cmp(r3.w >= 0.000492187508);
        if (r5.x != 0) {
          r3.w = 1 + -r3.w;
          r5.y = 4;
          r5.zw = float2(5.60519386e-45,0);
          while (true) {
            r6.x = cmp((int)r5.w >= 4);
            if (r6.x != 0) break;
            r6.x = (uint)r5.w << 2;
          // Known bad code for instruction (needs manual fix):
                    ld_structured r6.x, vThreadIDInGroupFlattened.x, r6.x, g0.xxxx
          r6.x = computeSpritesSampler[]..swiz;
            r6.x = cmp(r6.x >= r3.w);
            if (r6.x != 0) {
              r5.z = r5.w;
              break;
            }
            r5.x = (int)r5.w + 1;
            r5.zw = r5.yx;
          }
          floatZSampler[vThreadIDInGroupFlattened.x].16 = g0.x;
          floatZSampler[vThreadIDInGroupFlattened.x].16 = g1.x;
          r5.x = (uint)r5.z << 2;
          r5.y = (int)r5.x + -4;
        // Known bad code for instruction (needs manual fix):
                ld_structured r5.y, vThreadIDInGroupFlattened.x, r5.y, g1.xxxx
        r5.y = computeSpritesSampler[]..swiz;
          r5.y = r5.z ? r5.y : 1;
          r5.w = 3;
          while (true) {
            r6.x = cmp((int)r5.w < 0);
            if (r6.x != 0) break;
            r6.x = cmp((int)r5.w >= (int)r5.z);
            if (r6.x != 0) {
              r6.x = (uint)r5.w << 2;
              r6.y = (int)r6.x + 4;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r6.z, vThreadIDInGroupFlattened.x, r6.x, g0.xxxx
            r6.z = computeSpritesSampler[]..swiz;
              floatZSampler[vThreadIDInGroupFlattened.x].r6.y = g0.x;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r6.x, vThreadIDInGroupFlattened.x, r6.x, g1.xxxx
            r6.x = computeSpritesSampler[]..swiz;
              r6.x = r6.x * r4.x;
              floatZSampler[vThreadIDInGroupFlattened.x].r6.y = g1.x;
            }
            r5.w = (int)r5.w + -1;
          }
          floatZSampler[vThreadIDInGroupFlattened.x].r5.x = g0.x;
          r3.w = r5.y * r4.x;
          floatZSampler[vThreadIDInGroupFlattened.x].r5.x = g1.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured r3.w, vThreadIDInGroupFlattened.x, l(16), g0.xxxx
        r3.w = computeSpritesSampler[]..swiz;
          r3.w = cmp(r3.w != 1000000015047466219876688855040.000000);
          if (r3.w != 0) {
            r3.w = 2;
            while (true) {
              r4.x = cmp((int)r3.w >= 4);
              if (r4.x != 0) break;
              r4.x = (uint)r3.w << 2;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r5.x, vThreadIDInGroupFlattened.x, r4.x, g0.xxxx
            r5.x = computeSpritesSampler[]..swiz;
              r4.x = (int)r4.x + -4;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r5.y, vThreadIDInGroupFlattened.x, r4.x, g0.xxxx
            r5.y = computeSpritesSampler[]..swiz;
              r5.x = r5.x + -r5.y;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r5.yz, vThreadIDInGroupFlattened.x, r4.x, g1.xxyx
            r5.y = computeSpritesSampler[]..swiz;
            r5.z = computeSpritesSampler[]..swiz;
              r4.x = r5.y + -r5.z;
              r4.x = r5.x * r4.x;
              x8[r3.w+0].x = r4.x;
              r3.w = (int)r3.w + 1;
            }
            r3.w = x8[2].x;
            r4.x = x8[3].x;
            r3.w = cmp(r4.x < r3.w);
            r5.xy = r3.ww ? float2(3,2) : float2(2,1);
            r3.w = 2;
            while (true) {
              r4.x = cmp((int)r3.w >= 4);
              if (r4.x != 0) break;
              r4.x = cmp((int)r3.w >= (int)r5.x);
              if (r4.x != 0) {
                r4.x = (uint)r3.w << 2;
                r5.z = (int)r4.x + 4;
              // Known bad code for instruction (needs manual fix):
                            ld_structured r5.z, vThreadIDInGroupFlattened.x, r5.z, g0.xxxx
              r5.z = computeSpritesSampler[]..swiz;
                floatZSampler[vThreadIDInGroupFlattened.x].r4.x = g0.x;
              }
              r3.w = (int)r3.w + 1;
            }
            r3.w = 1;
            while (true) {
              r4.x = cmp((int)r3.w >= 4);
              if (r4.x != 0) break;
              r4.x = cmp((int)r3.w >= (int)r5.y);
              if (r4.x != 0) {
                r4.x = (uint)r3.w << 2;
                r5.x = (int)r4.x + 4;
              // Known bad code for instruction (needs manual fix):
                            ld_structured r5.x, vThreadIDInGroupFlattened.x, r5.x, g1.xxxx
              r5.x = computeSpritesSampler[]..swiz;
                floatZSampler[vThreadIDInGroupFlattened.x].r4.x = g1.x;
              }
              r3.w = (int)r3.w + 1;
            }
          }
        }
      }
      bitmask.z = ((~(-1 << 11)) << 0) & 0xffffffff;  r3.z = (((uint)8 << 0) & bitmask.z) | ((uint)r3.z & ~bitmask.z);
    } else {
      r3.z = -2040;
    }
    if (r4.y != 0) {
      r5.xy = vThreadID.xy;
      r5.zw = float2(1.26116862e-44,0);
      r3.w = oit_Nodes.Load(r5.xyzw).y;
      r4.xy = (int2)r3.ww & int2(1,2046);
      r5.x = max((uint)r3.y, (uint)r3.w);
      r6.x = max((uint)r5.x, (uint)r3.x);
      r6.y = min((uint)r5.x, (uint)r3.x);
      r3.xy = r4.xx ? r6.xy : r3.xy;
      r4.x = (uint)r4.y;
      r4.y = -r4.x * 0.000488758553 + 1;
      r1.w = r4.y * r1.w;
      r4.x = cmp(409.200012 < r4.x);
      if (r4.x != 0) {
        r0.z = max((uint)r3.w, (uint)r0.z);
        r4.x = (uint)r3.w >> 2;
        r4.x = (int)r4.x & 0x3ffffe00;
        r5.x = cmp(r4.x >= 0.000492187508);
        if (r5.x != 0) {
          r4.x = 1 + -r4.x;
          r5.y = 4;
          r5.zw = float2(5.60519386e-45,0);
          while (true) {
            r6.x = cmp((int)r5.w >= 4);
            if (r6.x != 0) break;
            r6.x = (uint)r5.w << 2;
          // Known bad code for instruction (needs manual fix):
                    ld_structured r6.x, vThreadIDInGroupFlattened.x, r6.x, g0.xxxx
          r6.x = computeSpritesSampler[]..swiz;
            r6.x = cmp(r6.x >= r4.x);
            if (r6.x != 0) {
              r5.z = r5.w;
              break;
            }
            r5.x = (int)r5.w + 1;
            r5.zw = r5.yx;
          }
          floatZSampler[vThreadIDInGroupFlattened.x].16 = g0.x;
          floatZSampler[vThreadIDInGroupFlattened.x].16 = g1.x;
          r5.x = (uint)r5.z << 2;
          r5.y = (int)r5.x + -4;
        // Known bad code for instruction (needs manual fix):
                ld_structured r5.y, vThreadIDInGroupFlattened.x, r5.y, g1.xxxx
        r5.y = computeSpritesSampler[]..swiz;
          r5.y = r5.z ? r5.y : 1;
          r5.w = 3;
          while (true) {
            r6.x = cmp((int)r5.w < 0);
            if (r6.x != 0) break;
            r6.x = cmp((int)r5.w >= (int)r5.z);
            if (r6.x != 0) {
              r6.x = (uint)r5.w << 2;
              r6.y = (int)r6.x + 4;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r6.z, vThreadIDInGroupFlattened.x, r6.x, g0.xxxx
            r6.z = computeSpritesSampler[]..swiz;
              floatZSampler[vThreadIDInGroupFlattened.x].r6.y = g0.x;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r6.x, vThreadIDInGroupFlattened.x, r6.x, g1.xxxx
            r6.x = computeSpritesSampler[]..swiz;
              r6.x = r6.x * r4.y;
              floatZSampler[vThreadIDInGroupFlattened.x].r6.y = g1.x;
            }
            r5.w = (int)r5.w + -1;
          }
          floatZSampler[vThreadIDInGroupFlattened.x].r5.x = g0.x;
          r4.x = r5.y * r4.y;
          floatZSampler[vThreadIDInGroupFlattened.x].r5.x = g1.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured r4.x, vThreadIDInGroupFlattened.x, l(16), g0.xxxx
        r4.x = computeSpritesSampler[]..swiz;
          r4.x = cmp(r4.x != 1000000015047466219876688855040.000000);
          if (r4.x != 0) {
            r4.x = 2;
            while (true) {
              r4.y = cmp((int)r4.x >= 4);
              if (r4.y != 0) break;
              r4.y = (uint)r4.x << 2;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r5.x, vThreadIDInGroupFlattened.x, r4.y, g0.xxxx
            r5.x = computeSpritesSampler[]..swiz;
              r4.y = (int)r4.y + -4;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r5.y, vThreadIDInGroupFlattened.x, r4.y, g0.xxxx
            r5.y = computeSpritesSampler[]..swiz;
              r5.x = r5.x + -r5.y;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r5.yz, vThreadIDInGroupFlattened.x, r4.y, g1.xxyx
            r5.y = computeSpritesSampler[]..swiz;
            r5.z = computeSpritesSampler[]..swiz;
              r4.y = r5.y + -r5.z;
              r4.y = r5.x * r4.y;
              x9[r4.x+0].x = r4.y;
              r4.x = (int)r4.x + 1;
            }
            r4.x = x9[2].x;
            r4.y = x9[3].x;
            r4.x = cmp(r4.y < r4.x);
            r4.xy = r4.xx ? float2(3,2) : float2(2,1);
            r5.x = 2;
            while (true) {
              r5.y = cmp((int)r5.x >= 4);
              if (r5.y != 0) break;
              r5.y = cmp((int)r5.x >= (int)r4.x);
              if (r5.y != 0) {
                r5.y = (uint)r5.x << 2;
                r5.z = (int)r5.y + 4;
              // Known bad code for instruction (needs manual fix):
                            ld_structured r5.z, vThreadIDInGroupFlattened.x, r5.z, g0.xxxx
              r5.z = computeSpritesSampler[]..swiz;
                floatZSampler[vThreadIDInGroupFlattened.x].r5.y = g0.x;
              }
              r5.x = (int)r5.x + 1;
            }
            r4.x = 1;
            while (true) {
              r5.x = cmp((int)r4.x >= 4);
              if (r5.x != 0) break;
              r5.x = cmp((int)r4.x >= (int)r4.y);
              if (r5.x != 0) {
                r5.x = (uint)r4.x << 2;
                r5.y = (int)r5.x + 4;
              // Known bad code for instruction (needs manual fix):
                            ld_structured r5.y, vThreadIDInGroupFlattened.x, r5.y, g1.xxxx
              r5.y = computeSpritesSampler[]..swiz;
                floatZSampler[vThreadIDInGroupFlattened.x].r5.x = g1.x;
              }
              r4.x = (int)r4.x + 1;
            }
          }
        }
      }
      bitmask.w = ((~(-1 << 11)) << 0) & 0xffffffff;  r3.w = (((uint)9 << 0) & bitmask.w) | ((uint)r3.w & ~bitmask.w);
    } else {
      r3.w = -2039;
    }
    if (r4.z != 0) {
      r5.xy = vThreadID.xy;
      r5.zw = float2(1.40129846e-44,0);
      r4.x = oit_Nodes.Load(r5.xyzw).y;
      r4.yz = (int2)r4.xx & int2(1,2046);
      r5.x = max((uint)r4.x, (uint)r3.y);
      r6.x = max((uint)r5.x, (uint)r3.x);
      r6.y = min((uint)r5.x, (uint)r3.x);
      r3.xy = r4.yy ? r6.xy : r3.xy;
      r4.y = (uint)r4.z;
      r4.z = -r4.y * 0.000488758553 + 1;
      r1.w = r4.z * r1.w;
      r4.y = cmp(409.200012 < r4.y);
      if (r4.y != 0) {
        r0.z = max((uint)r4.x, (uint)r0.z);
        r4.y = (uint)r4.x >> 2;
        r4.y = (int)r4.y & 0x3ffffe00;
        r5.x = cmp(r4.y >= 0.000492187508);
        if (r5.x != 0) {
          r4.y = 1 + -r4.y;
          r5.y = 4;
          r5.zw = float2(5.60519386e-45,0);
          while (true) {
            r6.x = cmp((int)r5.w >= 4);
            if (r6.x != 0) break;
            r6.x = (uint)r5.w << 2;
          // Known bad code for instruction (needs manual fix):
                    ld_structured r6.x, vThreadIDInGroupFlattened.x, r6.x, g0.xxxx
          r6.x = computeSpritesSampler[]..swiz;
            r6.x = cmp(r6.x >= r4.y);
            if (r6.x != 0) {
              r5.z = r5.w;
              break;
            }
            r5.x = (int)r5.w + 1;
            r5.zw = r5.yx;
          }
          floatZSampler[vThreadIDInGroupFlattened.x].16 = g0.x;
          floatZSampler[vThreadIDInGroupFlattened.x].16 = g1.x;
          r5.x = (uint)r5.z << 2;
          r5.y = (int)r5.x + -4;
        // Known bad code for instruction (needs manual fix):
                ld_structured r5.y, vThreadIDInGroupFlattened.x, r5.y, g1.xxxx
        r5.y = computeSpritesSampler[]..swiz;
          r5.y = r5.z ? r5.y : 1;
          r5.w = 3;
          while (true) {
            r6.x = cmp((int)r5.w < 0);
            if (r6.x != 0) break;
            r6.x = cmp((int)r5.w >= (int)r5.z);
            if (r6.x != 0) {
              r6.x = (uint)r5.w << 2;
              r6.y = (int)r6.x + 4;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r6.z, vThreadIDInGroupFlattened.x, r6.x, g0.xxxx
            r6.z = computeSpritesSampler[]..swiz;
              floatZSampler[vThreadIDInGroupFlattened.x].r6.y = g0.x;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r6.x, vThreadIDInGroupFlattened.x, r6.x, g1.xxxx
            r6.x = computeSpritesSampler[]..swiz;
              r6.x = r6.x * r4.z;
              floatZSampler[vThreadIDInGroupFlattened.x].r6.y = g1.x;
            }
            r5.w = (int)r5.w + -1;
          }
          floatZSampler[vThreadIDInGroupFlattened.x].r5.x = g0.x;
          r4.y = r5.y * r4.z;
          floatZSampler[vThreadIDInGroupFlattened.x].r5.x = g1.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured r4.y, vThreadIDInGroupFlattened.x, l(16), g0.xxxx
        r4.y = computeSpritesSampler[]..swiz;
          r4.y = cmp(r4.y != 1000000015047466219876688855040.000000);
          if (r4.y != 0) {
            r4.y = 2;
            while (true) {
              r4.z = cmp((int)r4.y >= 4);
              if (r4.z != 0) break;
              r4.z = (uint)r4.y << 2;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r5.x, vThreadIDInGroupFlattened.x, r4.z, g0.xxxx
            r5.x = computeSpritesSampler[]..swiz;
              r4.z = (int)r4.z + -4;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r5.y, vThreadIDInGroupFlattened.x, r4.z, g0.xxxx
            r5.y = computeSpritesSampler[]..swiz;
              r5.x = r5.x + -r5.y;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r5.yz, vThreadIDInGroupFlattened.x, r4.z, g1.xxyx
            r5.y = computeSpritesSampler[]..swiz;
            r5.z = computeSpritesSampler[]..swiz;
              r4.z = r5.y + -r5.z;
              r4.z = r5.x * r4.z;
              x10[r4.y+0].x = r4.z;
              r4.y = (int)r4.y + 1;
            }
            r4.y = x10[2].x;
            r4.z = x10[3].x;
            r4.y = cmp(r4.z < r4.y);
            r4.yz = r4.yy ? float2(4.20389539e-45,2.80259693e-45) : float2(2.80259693e-45,1.40129846e-45);
            r5.x = 2;
            while (true) {
              r5.y = cmp((int)r5.x >= 4);
              if (r5.y != 0) break;
              r5.y = cmp((int)r5.x >= (int)r4.y);
              if (r5.y != 0) {
                r5.y = (uint)r5.x << 2;
                r5.z = (int)r5.y + 4;
              // Known bad code for instruction (needs manual fix):
                            ld_structured r5.z, vThreadIDInGroupFlattened.x, r5.z, g0.xxxx
              r5.z = computeSpritesSampler[]..swiz;
                floatZSampler[vThreadIDInGroupFlattened.x].r5.y = g0.x;
              }
              r5.x = (int)r5.x + 1;
            }
            r4.y = 1;
            while (true) {
              r5.x = cmp((int)r4.y >= 4);
              if (r5.x != 0) break;
              r5.x = cmp((int)r4.y >= (int)r4.z);
              if (r5.x != 0) {
                r5.x = (uint)r4.y << 2;
                r5.y = (int)r5.x + 4;
              // Known bad code for instruction (needs manual fix):
                            ld_structured r5.y, vThreadIDInGroupFlattened.x, r5.y, g1.xxxx
              r5.y = computeSpritesSampler[]..swiz;
                floatZSampler[vThreadIDInGroupFlattened.x].r5.x = g1.x;
              }
              r4.y = (int)r4.y + 1;
            }
          }
        }
      }
      bitmask.x = ((~(-1 << 11)) << 0) & 0xffffffff;  r4.x = (((uint)10 << 0) & bitmask.x) | ((uint)r4.x & ~bitmask.x);
    } else {
      r4.x = -2038;
    }
    if (r4.w != 0) {
      r5.xy = vThreadID.xy;
      r5.zw = float2(1.54142831e-44,0);
      r4.y = oit_Nodes.Load(r5.xyzw).y;
      r4.zw = (int2)r4.yy & int2(1,2046);
      r5.x = max((uint)r4.y, (uint)r3.y);
      r6.x = max((uint)r5.x, (uint)r3.x);
      r6.y = min((uint)r5.x, (uint)r3.x);
      r3.xy = r4.zz ? r6.xy : r3.xy;
      r4.z = (uint)r4.w;
      r4.w = -r4.z * 0.000488758553 + 1;
      r1.w = r4.w * r1.w;
      r4.z = cmp(409.200012 < r4.z);
      if (r4.z != 0) {
        r0.z = max((uint)r4.y, (uint)r0.z);
        r4.z = (uint)r4.y >> 2;
        r4.z = (int)r4.z & 0x3ffffe00;
        r5.x = cmp(r4.z >= 0.000492187508);
        if (r5.x != 0) {
          r4.z = 1 + -r4.z;
          r5.y = 4;
          r5.zw = float2(5.60519386e-45,0);
          while (true) {
            r6.x = cmp((int)r5.w >= 4);
            if (r6.x != 0) break;
            r6.x = (uint)r5.w << 2;
          // Known bad code for instruction (needs manual fix):
                    ld_structured r6.x, vThreadIDInGroupFlattened.x, r6.x, g0.xxxx
          r6.x = computeSpritesSampler[]..swiz;
            r6.x = cmp(r6.x >= r4.z);
            if (r6.x != 0) {
              r5.z = r5.w;
              break;
            }
            r5.x = (int)r5.w + 1;
            r5.zw = r5.yx;
          }
          floatZSampler[vThreadIDInGroupFlattened.x].16 = g0.x;
          floatZSampler[vThreadIDInGroupFlattened.x].16 = g1.x;
          r5.x = (uint)r5.z << 2;
          r5.y = (int)r5.x + -4;
        // Known bad code for instruction (needs manual fix):
                ld_structured r5.y, vThreadIDInGroupFlattened.x, r5.y, g1.xxxx
        r5.y = computeSpritesSampler[]..swiz;
          r5.y = r5.z ? r5.y : 1;
          r5.w = 3;
          while (true) {
            r6.x = cmp((int)r5.w < 0);
            if (r6.x != 0) break;
            r6.x = cmp((int)r5.w >= (int)r5.z);
            if (r6.x != 0) {
              r6.x = (uint)r5.w << 2;
              r6.y = (int)r6.x + 4;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r6.z, vThreadIDInGroupFlattened.x, r6.x, g0.xxxx
            r6.z = computeSpritesSampler[]..swiz;
              floatZSampler[vThreadIDInGroupFlattened.x].r6.y = g0.x;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r6.x, vThreadIDInGroupFlattened.x, r6.x, g1.xxxx
            r6.x = computeSpritesSampler[]..swiz;
              r6.x = r6.x * r4.w;
              floatZSampler[vThreadIDInGroupFlattened.x].r6.y = g1.x;
            }
            r5.w = (int)r5.w + -1;
          }
          floatZSampler[vThreadIDInGroupFlattened.x].r5.x = g0.x;
          r4.z = r5.y * r4.w;
          floatZSampler[vThreadIDInGroupFlattened.x].r5.x = g1.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured r4.z, vThreadIDInGroupFlattened.x, l(16), g0.xxxx
        r4.z = computeSpritesSampler[]..swiz;
          r4.z = cmp(r4.z != 1000000015047466219876688855040.000000);
          if (r4.z != 0) {
            r4.z = 2;
            while (true) {
              r4.w = cmp((int)r4.z >= 4);
              if (r4.w != 0) break;
              r4.w = (uint)r4.z << 2;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r5.x, vThreadIDInGroupFlattened.x, r4.w, g0.xxxx
            r5.x = computeSpritesSampler[]..swiz;
              r4.w = (int)r4.w + -4;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r5.y, vThreadIDInGroupFlattened.x, r4.w, g0.xxxx
            r5.y = computeSpritesSampler[]..swiz;
              r5.x = r5.x + -r5.y;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r5.yz, vThreadIDInGroupFlattened.x, r4.w, g1.xxyx
            r5.y = computeSpritesSampler[]..swiz;
            r5.z = computeSpritesSampler[]..swiz;
              r4.w = r5.y + -r5.z;
              r4.w = r5.x * r4.w;
              x11[r4.z+0].x = r4.w;
              r4.z = (int)r4.z + 1;
            }
            r4.z = x11[2].x;
            r4.w = x11[3].x;
            r4.z = cmp(r4.w < r4.z);
            r4.zw = r4.zz ? float2(4.20389539e-45,2.80259693e-45) : float2(2.80259693e-45,1.40129846e-45);
            r5.x = 2;
            while (true) {
              r5.y = cmp((int)r5.x >= 4);
              if (r5.y != 0) break;
              r5.y = cmp((int)r5.x >= (int)r4.z);
              if (r5.y != 0) {
                r5.y = (uint)r5.x << 2;
                r5.z = (int)r5.y + 4;
              // Known bad code for instruction (needs manual fix):
                            ld_structured r5.z, vThreadIDInGroupFlattened.x, r5.z, g0.xxxx
              r5.z = computeSpritesSampler[]..swiz;
                floatZSampler[vThreadIDInGroupFlattened.x].r5.y = g0.x;
              }
              r5.x = (int)r5.x + 1;
            }
            r4.z = 1;
            while (true) {
              r5.x = cmp((int)r4.z >= 4);
              if (r5.x != 0) break;
              r5.x = cmp((int)r4.z >= (int)r4.w);
              if (r5.x != 0) {
                r5.x = (uint)r4.z << 2;
                r5.y = (int)r5.x + 4;
              // Known bad code for instruction (needs manual fix):
                            ld_structured r5.y, vThreadIDInGroupFlattened.x, r5.y, g1.xxxx
              r5.y = computeSpritesSampler[]..swiz;
                floatZSampler[vThreadIDInGroupFlattened.x].r5.x = g1.x;
              }
              r4.z = (int)r4.z + 1;
            }
          }
        }
      }
      bitmask.y = ((~(-1 << 11)) << 0) & 0xffffffff;  r4.y = (((uint)11 << 0) & bitmask.y) | ((uint)r4.y & ~bitmask.y);
    } else {
      r4.y = -2037;
    }
    r5.xyzw = cmp(int4(12,13,14,15) < (uint4)r0.yyyy);
    if (r5.x != 0) {
      r6.xy = vThreadID.xy;
      r6.zw = float2(1.68155816e-44,0);
      r4.z = oit_Nodes.Load(r6.xyzw).y;
      r6.xy = (int2)r4.zz & int2(1,2046);
      r4.w = max((uint)r4.z, (uint)r3.y);
      r7.x = max((uint)r4.w, (uint)r3.x);
      r7.y = min((uint)r4.w, (uint)r3.x);
      r3.xy = r6.xx ? r7.xy : r3.xy;
      r4.w = (uint)r6.y;
      r5.x = -r4.w * 0.000488758553 + 1;
      r1.w = r5.x * r1.w;
      r4.w = cmp(409.200012 < r4.w);
      if (r4.w != 0) {
        r0.z = max((uint)r4.z, (uint)r0.z);
        r4.w = (uint)r4.z >> 2;
        r4.w = (int)r4.w & 0x3ffffe00;
        r6.x = cmp(r4.w >= 0.000492187508);
        if (r6.x != 0) {
          r4.w = 1 + -r4.w;
          r6.y = 4;
          r6.zw = float2(5.60519386e-45,0);
          while (true) {
            r7.x = cmp((int)r6.w >= 4);
            if (r7.x != 0) break;
            r7.x = (uint)r6.w << 2;
          // Known bad code for instruction (needs manual fix):
                    ld_structured r7.x, vThreadIDInGroupFlattened.x, r7.x, g0.xxxx
          r7.x = computeSpritesSampler[]..swiz;
            r7.x = cmp(r7.x >= r4.w);
            if (r7.x != 0) {
              r6.z = r6.w;
              break;
            }
            r6.x = (int)r6.w + 1;
            r6.zw = r6.yx;
          }
          floatZSampler[vThreadIDInGroupFlattened.x].16 = g0.x;
          floatZSampler[vThreadIDInGroupFlattened.x].16 = g1.x;
          r6.x = (uint)r6.z << 2;
          r6.y = (int)r6.x + -4;
        // Known bad code for instruction (needs manual fix):
                ld_structured r6.y, vThreadIDInGroupFlattened.x, r6.y, g1.xxxx
        r6.y = computeSpritesSampler[]..swiz;
          r6.y = r6.z ? r6.y : 1;
          r6.w = 3;
          while (true) {
            r7.x = cmp((int)r6.w < 0);
            if (r7.x != 0) break;
            r7.x = cmp((int)r6.w >= (int)r6.z);
            if (r7.x != 0) {
              r7.x = (uint)r6.w << 2;
              r7.y = (int)r7.x + 4;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r7.z, vThreadIDInGroupFlattened.x, r7.x, g0.xxxx
            r7.z = computeSpritesSampler[]..swiz;
              floatZSampler[vThreadIDInGroupFlattened.x].r7.y = g0.x;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r7.x, vThreadIDInGroupFlattened.x, r7.x, g1.xxxx
            r7.x = computeSpritesSampler[]..swiz;
              r7.x = r7.x * r5.x;
              floatZSampler[vThreadIDInGroupFlattened.x].r7.y = g1.x;
            }
            r6.w = (int)r6.w + -1;
          }
          floatZSampler[vThreadIDInGroupFlattened.x].r6.x = g0.x;
          r4.w = r6.y * r5.x;
          floatZSampler[vThreadIDInGroupFlattened.x].r6.x = g1.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured r4.w, vThreadIDInGroupFlattened.x, l(16), g0.xxxx
        r4.w = computeSpritesSampler[]..swiz;
          r4.w = cmp(r4.w != 1000000015047466219876688855040.000000);
          if (r4.w != 0) {
            r4.w = 2;
            while (true) {
              r5.x = cmp((int)r4.w >= 4);
              if (r5.x != 0) break;
              r5.x = (uint)r4.w << 2;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r6.x, vThreadIDInGroupFlattened.x, r5.x, g0.xxxx
            r6.x = computeSpritesSampler[]..swiz;
              r5.x = (int)r5.x + -4;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r6.y, vThreadIDInGroupFlattened.x, r5.x, g0.xxxx
            r6.y = computeSpritesSampler[]..swiz;
              r6.x = r6.x + -r6.y;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r6.yz, vThreadIDInGroupFlattened.x, r5.x, g1.xxyx
            r6.y = computeSpritesSampler[]..swiz;
            r6.z = computeSpritesSampler[]..swiz;
              r5.x = r6.y + -r6.z;
              r5.x = r6.x * r5.x;
              x12[r4.w+0].x = r5.x;
              r4.w = (int)r4.w + 1;
            }
            r4.w = x12[2].x;
            r5.x = x12[3].x;
            r4.w = cmp(r5.x < r4.w);
            r6.xy = r4.ww ? float2(3,2) : float2(2,1);
            r4.w = 2;
            while (true) {
              r5.x = cmp((int)r4.w >= 4);
              if (r5.x != 0) break;
              r5.x = cmp((int)r4.w >= (int)r6.x);
              if (r5.x != 0) {
                r5.x = (uint)r4.w << 2;
                r6.z = (int)r5.x + 4;
              // Known bad code for instruction (needs manual fix):
                            ld_structured r6.z, vThreadIDInGroupFlattened.x, r6.z, g0.xxxx
              r6.z = computeSpritesSampler[]..swiz;
                floatZSampler[vThreadIDInGroupFlattened.x].r5.x = g0.x;
              }
              r4.w = (int)r4.w + 1;
            }
            r4.w = 1;
            while (true) {
              r5.x = cmp((int)r4.w >= 4);
              if (r5.x != 0) break;
              r5.x = cmp((int)r4.w >= (int)r6.y);
              if (r5.x != 0) {
                r5.x = (uint)r4.w << 2;
                r6.x = (int)r5.x + 4;
              // Known bad code for instruction (needs manual fix):
                            ld_structured r6.x, vThreadIDInGroupFlattened.x, r6.x, g1.xxxx
              r6.x = computeSpritesSampler[]..swiz;
                floatZSampler[vThreadIDInGroupFlattened.x].r5.x = g1.x;
              }
              r4.w = (int)r4.w + 1;
            }
          }
        }
      }
      bitmask.z = ((~(-1 << 11)) << 0) & 0xffffffff;  r4.z = (((uint)12 << 0) & bitmask.z) | ((uint)r4.z & ~bitmask.z);
    } else {
      r4.z = -2036;
    }
    if (r5.y != 0) {
      r6.xy = vThreadID.xy;
      r6.zw = float2(1.821688e-44,0);
      r4.w = oit_Nodes.Load(r6.xyzw).y;
      r5.xy = (int2)r4.ww & int2(1,2046);
      r6.x = max((uint)r4.w, (uint)r3.y);
      r7.x = max((uint)r6.x, (uint)r3.x);
      r7.y = min((uint)r6.x, (uint)r3.x);
      r3.xy = r5.xx ? r7.xy : r3.xy;
      r5.x = (uint)r5.y;
      r5.y = -r5.x * 0.000488758553 + 1;
      r1.w = r5.y * r1.w;
      r5.x = cmp(409.200012 < r5.x);
      if (r5.x != 0) {
        r0.z = max((uint)r4.w, (uint)r0.z);
        r5.x = (uint)r4.w >> 2;
        r5.x = (int)r5.x & 0x3ffffe00;
        r6.x = cmp(r5.x >= 0.000492187508);
        if (r6.x != 0) {
          r5.x = 1 + -r5.x;
          r6.y = 4;
          r6.zw = float2(5.60519386e-45,0);
          while (true) {
            r7.x = cmp((int)r6.w >= 4);
            if (r7.x != 0) break;
            r7.x = (uint)r6.w << 2;
          // Known bad code for instruction (needs manual fix):
                    ld_structured r7.x, vThreadIDInGroupFlattened.x, r7.x, g0.xxxx
          r7.x = computeSpritesSampler[]..swiz;
            r7.x = cmp(r7.x >= r5.x);
            if (r7.x != 0) {
              r6.z = r6.w;
              break;
            }
            r6.x = (int)r6.w + 1;
            r6.zw = r6.yx;
          }
          floatZSampler[vThreadIDInGroupFlattened.x].16 = g0.x;
          floatZSampler[vThreadIDInGroupFlattened.x].16 = g1.x;
          r6.x = (uint)r6.z << 2;
          r6.y = (int)r6.x + -4;
        // Known bad code for instruction (needs manual fix):
                ld_structured r6.y, vThreadIDInGroupFlattened.x, r6.y, g1.xxxx
        r6.y = computeSpritesSampler[]..swiz;
          r6.y = r6.z ? r6.y : 1;
          r6.w = 3;
          while (true) {
            r7.x = cmp((int)r6.w < 0);
            if (r7.x != 0) break;
            r7.x = cmp((int)r6.w >= (int)r6.z);
            if (r7.x != 0) {
              r7.x = (uint)r6.w << 2;
              r7.y = (int)r7.x + 4;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r7.z, vThreadIDInGroupFlattened.x, r7.x, g0.xxxx
            r7.z = computeSpritesSampler[]..swiz;
              floatZSampler[vThreadIDInGroupFlattened.x].r7.y = g0.x;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r7.x, vThreadIDInGroupFlattened.x, r7.x, g1.xxxx
            r7.x = computeSpritesSampler[]..swiz;
              r7.x = r7.x * r5.y;
              floatZSampler[vThreadIDInGroupFlattened.x].r7.y = g1.x;
            }
            r6.w = (int)r6.w + -1;
          }
          floatZSampler[vThreadIDInGroupFlattened.x].r6.x = g0.x;
          r5.x = r6.y * r5.y;
          floatZSampler[vThreadIDInGroupFlattened.x].r6.x = g1.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured r5.x, vThreadIDInGroupFlattened.x, l(16), g0.xxxx
        r5.x = computeSpritesSampler[]..swiz;
          r5.x = cmp(r5.x != 1000000015047466219876688855040.000000);
          if (r5.x != 0) {
            r5.x = 2;
            while (true) {
              r5.y = cmp((int)r5.x >= 4);
              if (r5.y != 0) break;
              r5.y = (uint)r5.x << 2;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r6.x, vThreadIDInGroupFlattened.x, r5.y, g0.xxxx
            r6.x = computeSpritesSampler[]..swiz;
              r5.y = (int)r5.y + -4;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r6.y, vThreadIDInGroupFlattened.x, r5.y, g0.xxxx
            r6.y = computeSpritesSampler[]..swiz;
              r6.x = r6.x + -r6.y;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r6.yz, vThreadIDInGroupFlattened.x, r5.y, g1.xxyx
            r6.y = computeSpritesSampler[]..swiz;
            r6.z = computeSpritesSampler[]..swiz;
              r5.y = r6.y + -r6.z;
              r5.y = r6.x * r5.y;
              x13[r5.x+0].x = r5.y;
              r5.x = (int)r5.x + 1;
            }
            r5.x = x13[2].x;
            r5.y = x13[3].x;
            r5.x = cmp(r5.y < r5.x);
            r5.xy = r5.xx ? float2(3,2) : float2(2,1);
            r6.x = 2;
            while (true) {
              r6.y = cmp((int)r6.x >= 4);
              if (r6.y != 0) break;
              r6.y = cmp((int)r6.x >= (int)r5.x);
              if (r6.y != 0) {
                r6.y = (uint)r6.x << 2;
                r6.z = (int)r6.y + 4;
              // Known bad code for instruction (needs manual fix):
                            ld_structured r6.z, vThreadIDInGroupFlattened.x, r6.z, g0.xxxx
              r6.z = computeSpritesSampler[]..swiz;
                floatZSampler[vThreadIDInGroupFlattened.x].r6.y = g0.x;
              }
              r6.x = (int)r6.x + 1;
            }
            r5.x = 1;
            while (true) {
              r6.x = cmp((int)r5.x >= 4);
              if (r6.x != 0) break;
              r6.x = cmp((int)r5.x >= (int)r5.y);
              if (r6.x != 0) {
                r6.x = (uint)r5.x << 2;
                r6.y = (int)r6.x + 4;
              // Known bad code for instruction (needs manual fix):
                            ld_structured r6.y, vThreadIDInGroupFlattened.x, r6.y, g1.xxxx
              r6.y = computeSpritesSampler[]..swiz;
                floatZSampler[vThreadIDInGroupFlattened.x].r6.x = g1.x;
              }
              r5.x = (int)r5.x + 1;
            }
          }
        }
      }
      bitmask.w = ((~(-1 << 11)) << 0) & 0xffffffff;  r4.w = (((uint)13 << 0) & bitmask.w) | ((uint)r4.w & ~bitmask.w);
    } else {
      r4.w = -2035;
    }
    if (r5.z != 0) {
      r6.xy = vThreadID.xy;
      r6.zw = float2(1.96181785e-44,0);
      r5.x = oit_Nodes.Load(r6.xyzw).y;
      r5.yz = (int2)r5.xx & int2(1,2046);
      r6.x = max((uint)r5.x, (uint)r3.y);
      r7.x = max((uint)r6.x, (uint)r3.x);
      r7.y = min((uint)r6.x, (uint)r3.x);
      r3.xy = r5.yy ? r7.xy : r3.xy;
      r5.y = (uint)r5.z;
      r5.z = -r5.y * 0.000488758553 + 1;
      r1.w = r5.z * r1.w;
      r5.y = cmp(409.200012 < r5.y);
      if (r5.y != 0) {
        r0.z = max((uint)r5.x, (uint)r0.z);
        r5.y = (uint)r5.x >> 2;
        r5.y = (int)r5.y & 0x3ffffe00;
        r6.x = cmp(r5.y >= 0.000492187508);
        if (r6.x != 0) {
          r5.y = 1 + -r5.y;
          r6.y = 4;
          r6.zw = float2(5.60519386e-45,0);
          while (true) {
            r7.x = cmp((int)r6.w >= 4);
            if (r7.x != 0) break;
            r7.x = (uint)r6.w << 2;
          // Known bad code for instruction (needs manual fix):
                    ld_structured r7.x, vThreadIDInGroupFlattened.x, r7.x, g0.xxxx
          r7.x = computeSpritesSampler[]..swiz;
            r7.x = cmp(r7.x >= r5.y);
            if (r7.x != 0) {
              r6.z = r6.w;
              break;
            }
            r6.x = (int)r6.w + 1;
            r6.zw = r6.yx;
          }
          floatZSampler[vThreadIDInGroupFlattened.x].16 = g0.x;
          floatZSampler[vThreadIDInGroupFlattened.x].16 = g1.x;
          r6.x = (uint)r6.z << 2;
          r6.y = (int)r6.x + -4;
        // Known bad code for instruction (needs manual fix):
                ld_structured r6.y, vThreadIDInGroupFlattened.x, r6.y, g1.xxxx
        r6.y = computeSpritesSampler[]..swiz;
          r6.y = r6.z ? r6.y : 1;
          r6.w = 3;
          while (true) {
            r7.x = cmp((int)r6.w < 0);
            if (r7.x != 0) break;
            r7.x = cmp((int)r6.w >= (int)r6.z);
            if (r7.x != 0) {
              r7.x = (uint)r6.w << 2;
              r7.y = (int)r7.x + 4;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r7.z, vThreadIDInGroupFlattened.x, r7.x, g0.xxxx
            r7.z = computeSpritesSampler[]..swiz;
              floatZSampler[vThreadIDInGroupFlattened.x].r7.y = g0.x;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r7.x, vThreadIDInGroupFlattened.x, r7.x, g1.xxxx
            r7.x = computeSpritesSampler[]..swiz;
              r7.x = r7.x * r5.z;
              floatZSampler[vThreadIDInGroupFlattened.x].r7.y = g1.x;
            }
            r6.w = (int)r6.w + -1;
          }
          floatZSampler[vThreadIDInGroupFlattened.x].r6.x = g0.x;
          r5.y = r6.y * r5.z;
          floatZSampler[vThreadIDInGroupFlattened.x].r6.x = g1.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured r5.y, vThreadIDInGroupFlattened.x, l(16), g0.xxxx
        r5.y = computeSpritesSampler[]..swiz;
          r5.y = cmp(r5.y != 1000000015047466219876688855040.000000);
          if (r5.y != 0) {
            r5.y = 2;
            while (true) {
              r5.z = cmp((int)r5.y >= 4);
              if (r5.z != 0) break;
              r5.z = (uint)r5.y << 2;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r6.x, vThreadIDInGroupFlattened.x, r5.z, g0.xxxx
            r6.x = computeSpritesSampler[]..swiz;
              r5.z = (int)r5.z + -4;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r6.y, vThreadIDInGroupFlattened.x, r5.z, g0.xxxx
            r6.y = computeSpritesSampler[]..swiz;
              r6.x = r6.x + -r6.y;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r6.yz, vThreadIDInGroupFlattened.x, r5.z, g1.xxyx
            r6.y = computeSpritesSampler[]..swiz;
            r6.z = computeSpritesSampler[]..swiz;
              r5.z = r6.y + -r6.z;
              r5.z = r6.x * r5.z;
              x14[r5.y+0].x = r5.z;
              r5.y = (int)r5.y + 1;
            }
            r5.y = x14[2].x;
            r5.z = x14[3].x;
            r5.y = cmp(r5.z < r5.y);
            r5.yz = r5.yy ? float2(4.20389539e-45,2.80259693e-45) : float2(2.80259693e-45,1.40129846e-45);
            r6.x = 2;
            while (true) {
              r6.y = cmp((int)r6.x >= 4);
              if (r6.y != 0) break;
              r6.y = cmp((int)r6.x >= (int)r5.y);
              if (r6.y != 0) {
                r6.y = (uint)r6.x << 2;
                r6.z = (int)r6.y + 4;
              // Known bad code for instruction (needs manual fix):
                            ld_structured r6.z, vThreadIDInGroupFlattened.x, r6.z, g0.xxxx
              r6.z = computeSpritesSampler[]..swiz;
                floatZSampler[vThreadIDInGroupFlattened.x].r6.y = g0.x;
              }
              r6.x = (int)r6.x + 1;
            }
            r5.y = 1;
            while (true) {
              r6.x = cmp((int)r5.y >= 4);
              if (r6.x != 0) break;
              r6.x = cmp((int)r5.y >= (int)r5.z);
              if (r6.x != 0) {
                r6.x = (uint)r5.y << 2;
                r6.y = (int)r6.x + 4;
              // Known bad code for instruction (needs manual fix):
                            ld_structured r6.y, vThreadIDInGroupFlattened.x, r6.y, g1.xxxx
              r6.y = computeSpritesSampler[]..swiz;
                floatZSampler[vThreadIDInGroupFlattened.x].r6.x = g1.x;
              }
              r5.y = (int)r5.y + 1;
            }
          }
        }
      }
      bitmask.x = ((~(-1 << 11)) << 0) & 0xffffffff;  r5.x = (((uint)14 << 0) & bitmask.x) | ((uint)r5.x & ~bitmask.x);
    } else {
      r5.x = -2034;
    }
    if (r5.w != 0) {
      r6.xy = vThreadID.xy;
      r6.zw = float2(2.1019477e-44,0);
      r5.y = oit_Nodes.Load(r6.xyzw).y;
      r5.zw = (int2)r5.yy & int2(1,2046);
      r6.x = max((uint)r5.y, (uint)r3.y);
      r7.x = max((uint)r6.x, (uint)r3.x);
      r7.y = min((uint)r6.x, (uint)r3.x);
      r3.xy = r5.zz ? r7.xy : r3.xy;
      r5.z = (uint)r5.w;
      r5.w = -r5.z * 0.000488758553 + 1;
      r1.w = r5.w * r1.w;
      r5.z = cmp(409.200012 < r5.z);
      if (r5.z != 0) {
        r0.z = max((uint)r5.y, (uint)r0.z);
        r5.z = (uint)r5.y >> 2;
        r5.z = (int)r5.z & 0x3ffffe00;
        r6.x = cmp(r5.z >= 0.000492187508);
        if (r6.x != 0) {
          r5.z = 1 + -r5.z;
          r6.y = 4;
          r6.zw = float2(5.60519386e-45,0);
          while (true) {
            r7.x = cmp((int)r6.w >= 4);
            if (r7.x != 0) break;
            r7.x = (uint)r6.w << 2;
          // Known bad code for instruction (needs manual fix):
                    ld_structured r7.x, vThreadIDInGroupFlattened.x, r7.x, g0.xxxx
          r7.x = computeSpritesSampler[]..swiz;
            r7.x = cmp(r7.x >= r5.z);
            if (r7.x != 0) {
              r6.z = r6.w;
              break;
            }
            r6.x = (int)r6.w + 1;
            r6.zw = r6.yx;
          }
          floatZSampler[vThreadIDInGroupFlattened.x].16 = g0.x;
          floatZSampler[vThreadIDInGroupFlattened.x].16 = g1.x;
          r6.x = (uint)r6.z << 2;
          r6.y = (int)r6.x + -4;
        // Known bad code for instruction (needs manual fix):
                ld_structured r6.y, vThreadIDInGroupFlattened.x, r6.y, g1.xxxx
        r6.y = computeSpritesSampler[]..swiz;
          r6.y = r6.z ? r6.y : 1;
          r6.w = 3;
          while (true) {
            r7.x = cmp((int)r6.w < 0);
            if (r7.x != 0) break;
            r7.x = cmp((int)r6.w >= (int)r6.z);
            if (r7.x != 0) {
              r7.x = (uint)r6.w << 2;
              r7.y = (int)r7.x + 4;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r7.z, vThreadIDInGroupFlattened.x, r7.x, g0.xxxx
            r7.z = computeSpritesSampler[]..swiz;
              floatZSampler[vThreadIDInGroupFlattened.x].r7.y = g0.x;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r7.x, vThreadIDInGroupFlattened.x, r7.x, g1.xxxx
            r7.x = computeSpritesSampler[]..swiz;
              r7.x = r7.x * r5.w;
              floatZSampler[vThreadIDInGroupFlattened.x].r7.y = g1.x;
            }
            r6.w = (int)r6.w + -1;
          }
          floatZSampler[vThreadIDInGroupFlattened.x].r6.x = g0.x;
          r5.z = r6.y * r5.w;
          floatZSampler[vThreadIDInGroupFlattened.x].r6.x = g1.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured r5.z, vThreadIDInGroupFlattened.x, l(16), g0.xxxx
        r5.z = computeSpritesSampler[]..swiz;
          r5.z = cmp(r5.z != 1000000015047466219876688855040.000000);
          if (r5.z != 0) {
            r5.z = 2;
            while (true) {
              r5.w = cmp((int)r5.z >= 4);
              if (r5.w != 0) break;
              r5.w = (uint)r5.z << 2;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r6.x, vThreadIDInGroupFlattened.x, r5.w, g0.xxxx
            r6.x = computeSpritesSampler[]..swiz;
              r5.w = (int)r5.w + -4;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r6.y, vThreadIDInGroupFlattened.x, r5.w, g0.xxxx
            r6.y = computeSpritesSampler[]..swiz;
              r6.x = r6.x + -r6.y;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r6.yz, vThreadIDInGroupFlattened.x, r5.w, g1.xxyx
            r6.y = computeSpritesSampler[]..swiz;
            r6.z = computeSpritesSampler[]..swiz;
              r5.w = r6.y + -r6.z;
              r5.w = r6.x * r5.w;
              x15[r5.z+0].x = r5.w;
              r5.z = (int)r5.z + 1;
            }
            r5.z = x15[2].x;
            r5.w = x15[3].x;
            r5.z = cmp(r5.w < r5.z);
            r5.zw = r5.zz ? float2(4.20389539e-45,2.80259693e-45) : float2(2.80259693e-45,1.40129846e-45);
            r6.x = 2;
            while (true) {
              r6.y = cmp((int)r6.x >= 4);
              if (r6.y != 0) break;
              r6.y = cmp((int)r6.x >= (int)r5.z);
              if (r6.y != 0) {
                r6.y = (uint)r6.x << 2;
                r6.z = (int)r6.y + 4;
              // Known bad code for instruction (needs manual fix):
                            ld_structured r6.z, vThreadIDInGroupFlattened.x, r6.z, g0.xxxx
              r6.z = computeSpritesSampler[]..swiz;
                floatZSampler[vThreadIDInGroupFlattened.x].r6.y = g0.x;
              }
              r6.x = (int)r6.x + 1;
            }
            r5.z = 1;
            while (true) {
              r6.x = cmp((int)r5.z >= 4);
              if (r6.x != 0) break;
              r6.x = cmp((int)r5.z >= (int)r5.w);
              if (r6.x != 0) {
                r6.x = (uint)r5.z << 2;
                r6.y = (int)r6.x + 4;
              // Known bad code for instruction (needs manual fix):
                            ld_structured r6.y, vThreadIDInGroupFlattened.x, r6.y, g1.xxxx
              r6.y = computeSpritesSampler[]..swiz;
                floatZSampler[vThreadIDInGroupFlattened.x].r6.x = g1.x;
              }
              r5.z = (int)r5.z + 1;
            }
          }
        }
      }
      bitmask.y = ((~(-1 << 11)) << 0) & 0xffffffff;  r5.y = (((uint)15 << 0) & bitmask.y) | ((uint)r5.y & ~bitmask.y);
    } else {
      r5.y = -2033;
    }
    r0.z = (uint)r0.z >> 2;
    r0.z = (int)r0.z & 0x3ffffe00;
    r5.z = 0.800000012 + -r1.w;
    r5.z = max(0, r5.z);
    r5.z = -r5.z * 1.25 + 1;
    r5.w = min((uint)r2.x, (uint)r0.w);
    r0.w = max((uint)r2.x, (uint)r0.w);
    r2.x = min((uint)r1.x, (uint)r1.y);
    r1.x = max((uint)r1.x, (uint)r1.y);
    r1.y = min((uint)r2.y, (uint)r1.z);
    r1.z = max((uint)r2.y, (uint)r1.z);
    r2.y = min((uint)r2.z, (uint)r2.w);
    r2.z = max((uint)r2.z, (uint)r2.w);
    r2.w = min((uint)r3.z, (uint)r3.w);
    r3.z = max((uint)r3.z, (uint)r3.w);
    r3.w = min((uint)r4.x, (uint)r4.y);
    r4.x = max((uint)r4.x, (uint)r4.y);
    r4.y = min((uint)r4.z, (uint)r4.w);
    r4.z = max((uint)r4.z, (uint)r4.w);
    r4.w = min((uint)r5.x, (uint)r5.y);
    r5.x = max((uint)r5.x, (uint)r5.y);
    r5.y = min((uint)r5.w, (uint)r1.x);
    r1.x = max((uint)r5.w, (uint)r1.x);
    r5.w = min((uint)r2.z, (uint)r1.y);
    r1.y = max((uint)r2.z, (uint)r1.y);
    r2.z = min((uint)r4.x, (uint)r2.w);
    r2.w = max((uint)r4.x, (uint)r2.w);
    r4.x = min((uint)r5.x, (uint)r4.y);
    r4.y = max((uint)r5.x, (uint)r4.y);
    r5.x = min((uint)r2.x, (uint)r0.w);
    r0.w = max((uint)r2.x, (uint)r0.w);
    r2.x = min((uint)r2.y, (uint)r1.z);
    r1.z = max((uint)r2.y, (uint)r1.z);
    r2.y = min((uint)r3.z, (uint)r3.w);
    r3.z = max((uint)r3.z, (uint)r3.w);
    r3.w = min((uint)r4.z, (uint)r4.w);
    r4.z = max((uint)r4.z, (uint)r4.w);
    r4.w = min((uint)r5.y, (uint)r5.x);
    r5.x = max((uint)r5.y, (uint)r5.x);
    r5.y = min((uint)r0.w, (uint)r1.x);
    r0.w = max((uint)r0.w, (uint)r1.x);
    r1.x = min((uint)r5.w, (uint)r2.x);
    r2.x = max((uint)r5.w, (uint)r2.x);
    r5.w = min((uint)r1.z, (uint)r1.y);
    r1.y = max((uint)r1.z, (uint)r1.y);
    r1.z = min((uint)r2.z, (uint)r2.y);
    r2.y = max((uint)r2.z, (uint)r2.y);
    r2.z = min((uint)r3.z, (uint)r2.w);
    r2.w = max((uint)r3.z, (uint)r2.w);
    r3.z = min((uint)r4.x, (uint)r3.w);
    r3.w = max((uint)r4.x, (uint)r3.w);
    r4.x = min((uint)r4.z, (uint)r4.y);
    r4.y = max((uint)r4.z, (uint)r4.y);
    r4.z = min((uint)r4.w, (uint)r1.y);
    r1.y = max((uint)r4.w, (uint)r1.y);
    r4.w = min((uint)r4.y, (uint)r1.z);
    r1.z = max((uint)r4.y, (uint)r1.z);
    r4.y = min((uint)r5.x, (uint)r5.w);
    r5.x = max((uint)r5.x, (uint)r5.w);
    r5.w = min((uint)r4.x, (uint)r2.y);
    r2.y = max((uint)r4.x, (uint)r2.y);
    r4.x = min((uint)r5.y, (uint)r2.x);
    r2.x = max((uint)r5.y, (uint)r2.x);
    r5.y = min((uint)r3.w, (uint)r2.z);
    r2.z = max((uint)r3.w, (uint)r2.z);
    r3.w = min((uint)r1.x, (uint)r0.w);
    r0.w = max((uint)r1.x, (uint)r0.w);
    r1.x = min((uint)r4.z, (uint)r4.x);
    r4.x = max((uint)r4.z, (uint)r4.x);
    r4.z = min((uint)r3.z, (uint)r2.w);
    r2.w = max((uint)r3.z, (uint)r2.w);
    r3.z = min((uint)r5.y, (uint)r4.w);
    r4.w = max((uint)r5.y, (uint)r4.w);
    r5.y = min((uint)r4.y, (uint)r3.w);
    r3.w = max((uint)r4.y, (uint)r3.w);
    r4.y = min((uint)r0.w, (uint)r5.x);
    r0.w = max((uint)r0.w, (uint)r5.x);
    r5.x = min((uint)r5.w, (uint)r4.z);
    r4.z = max((uint)r5.w, (uint)r4.z);
    r5.w = min((uint)r2.w, (uint)r2.y);
    r2.y = max((uint)r2.w, (uint)r2.y);
    r2.w = min((uint)r2.x, (uint)r1.y);
    r1.y = max((uint)r2.x, (uint)r1.y);
    r2.x = min((uint)r5.y, (uint)r1.x);
    r1.x = max((uint)r5.y, (uint)r1.x);
    r5.y = min((uint)r4.x, (uint)r3.w);
    r3.w = max((uint)r4.x, (uint)r3.w);
    r4.x = min((uint)r2.z, (uint)r1.z);
    r1.z = max((uint)r2.z, (uint)r1.z);
    r2.z = min((uint)r5.x, (uint)r3.z);
    r3.z = max((uint)r5.x, (uint)r3.z);
    r5.x = min((uint)r4.w, (uint)r4.z);
    r4.z = max((uint)r4.w, (uint)r4.z);
    r4.w = min((uint)r4.y, (uint)r2.w);
    r2.w = max((uint)r4.y, (uint)r2.w);
    r4.y = min((uint)r1.y, (uint)r0.w);
    r0.w = max((uint)r1.y, (uint)r0.w);
    r1.y = min((uint)r5.w, (uint)r4.x);
    r4.x = max((uint)r5.w, (uint)r4.x);
    r5.w = min((uint)r2.y, (uint)r1.z);
    r1.z = max((uint)r2.y, (uint)r1.z);
    r2.y = min((uint)r2.x, (uint)r1.z);
    r1.z = max((uint)r2.x, (uint)r1.z);
    r2.x = min((uint)r5.w, (uint)r1.x);
    r1.x = max((uint)r5.w, (uint)r1.x);
    r5.w = min((uint)r5.y, (uint)r4.x);
    r4.x = max((uint)r5.y, (uint)r4.x);
    r5.y = min((uint)r3.w, (uint)r1.y);
    r1.y = max((uint)r3.w, (uint)r1.y);
    r3.w = min((uint)r4.w, (uint)r4.z);
    r4.z = max((uint)r4.w, (uint)r4.z);
    r4.w = min((uint)r2.w, (uint)r5.x);
    r2.w = max((uint)r2.w, (uint)r5.x);
    r5.x = min((uint)r3.w, (uint)r2.y);
    r2.y = max((uint)r3.w, (uint)r2.y);
    r3.w = min((uint)r4.y, (uint)r3.z);
    r3.z = max((uint)r4.y, (uint)r3.z);
    r4.y = min((uint)r4.w, (uint)r2.x);
    r2.x = max((uint)r4.w, (uint)r2.x);
    r4.w = min((uint)r0.w, (uint)r2.z);
    r0.w = max((uint)r0.w, (uint)r2.z);
    r2.z = min((uint)r5.w, (uint)r3.w);
    r3.w = max((uint)r5.w, (uint)r3.w);
    r5.w = min((uint)r5.y, (uint)r4.w);
    r4.w = max((uint)r5.y, (uint)r4.w);
    r5.y = min((uint)r0.w, (uint)r1.y);
    r0.w = max((uint)r0.w, (uint)r1.y);
    r1.y = min((uint)r5.x, (uint)r2.z);
    r2.z = max((uint)r5.x, (uint)r2.z);
    r5.x = min((uint)r3.z, (uint)r4.x);
    r3.z = max((uint)r3.z, (uint)r4.x);
    r4.x = min((uint)r5.w, (uint)r4.y);
    r4.y = max((uint)r5.w, (uint)r4.y);
    r5.w = min((uint)r3.w, (uint)r2.y);
    r2.y = max((uint)r3.w, (uint)r2.y);
    r3.w = min((uint)r2.w, (uint)r1.x);
    r1.x = max((uint)r2.w, (uint)r1.x);
    r2.w = min((uint)r4.w, (uint)r2.x);
    r2.x = max((uint)r4.w, (uint)r2.x);
    r4.w = min((uint)r4.x, (uint)r1.y);
    r1.y = max((uint)r4.x, (uint)r1.y);
    r4.x = min((uint)r4.y, (uint)r2.z);
    r2.z = max((uint)r4.y, (uint)r2.z);
    r4.y = min((uint)r4.z, (uint)r1.z);
    r1.z = max((uint)r4.z, (uint)r1.z);
    r4.z = min((uint)r5.y, (uint)r3.w);
    r3.w = max((uint)r5.y, (uint)r3.w);
    r5.y = min((uint)r5.w, (uint)r2.w);
    r2.w = max((uint)r5.w, (uint)r2.w);
    r5.w = min((uint)r2.y, (uint)r2.x);
    r2.x = max((uint)r2.y, (uint)r2.x);
    r2.y = min((uint)r5.x, (uint)r4.y);
    r4.y = max((uint)r5.x, (uint)r4.y);
    r5.x = min((uint)r1.x, (uint)r0.w);
    r0.w = max((uint)r1.x, (uint)r0.w);
    r1.x = min((uint)r3.z, (uint)r1.z);
    r1.z = max((uint)r3.z, (uint)r1.z);
    r3.z = min((uint)r4.z, (uint)r2.y);
    r2.y = max((uint)r4.z, (uint)r2.y);
    r4.z = min((uint)r4.y, (uint)r3.w);
    r3.w = max((uint)r4.y, (uint)r3.w);
    r4.y = min((uint)r5.x, (uint)r1.x);
    r1.x = max((uint)r5.x, (uint)r1.x);
    r5.x = min((uint)r1.z, (uint)r0.w);
    r0.w = max((uint)r1.z, (uint)r0.w);
    bitmask.x = ((~(-1 << 11)) << 20) & 0xffffffff;  r1.x = (((uint)r1.x << 20) & bitmask.x) | ((uint)0 & ~bitmask.x);
    bitmask.y = ((~(-1 << 11)) << 4) & 0xffffffff;  r1.y = (((uint)r1.y << 4) & bitmask.y) | ((uint)0 & ~bitmask.y);
    bitmask.y = ((~(-1 << 4)) << 0) & 0xffffffff;  r1.y = (((uint)r4.w << 0) & bitmask.y) | ((uint)r1.y & ~bitmask.y);
    bitmask.z = ((~(-1 << 11)) << 8) & 0xffffffff;  r1.z = (((uint)r4.x << 8) & bitmask.z) | ((uint)0 & ~bitmask.z);
    r1.y = (int)r1.z + (int)r1.y;
    bitmask.z = ((~(-1 << 11)) << 12) & 0xffffffff;  r1.z = (((uint)r2.z << 12) & bitmask.z) | ((uint)0 & ~bitmask.z);
    r1.y = (int)r1.z + (int)r1.y;
    bitmask.z = ((~(-1 << 11)) << 16) & 0xffffffff;  r1.z = (((uint)r5.y << 16) & bitmask.z) | ((uint)0 & ~bitmask.z);
    r1.y = (int)r1.z + (int)r1.y;
    bitmask.z = ((~(-1 << 11)) << 20) & 0xffffffff;  r1.z = (((uint)r2.w << 20) & bitmask.z) | ((uint)0 & ~bitmask.z);
    r1.y = (int)r1.z + (int)r1.y;
    bitmask.y = ((~(-1 << 8)) << 24) & 0xffffffff;  r1.y = (((uint)r5.w << 24) & bitmask.y) | ((uint)r1.y & ~bitmask.y);
    bitmask.z = ((~(-1 << 4)) << 28) & 0xffffffff;  r6.z = (((uint)r2.x << 28) & bitmask.z) | ((uint)r1.y & ~bitmask.z);
    bitmask.y = ((~(-1 << 11)) << 4) & 0xffffffff;  r1.y = (((uint)r2.y << 4) & bitmask.y) | ((uint)0 & ~bitmask.y);
    bitmask.y = ((~(-1 << 4)) << 0) & 0xffffffff;  r1.y = (((uint)r3.z << 0) & bitmask.y) | ((uint)r1.y & ~bitmask.y);
    bitmask.z = ((~(-1 << 11)) << 8) & 0xffffffff;  r1.z = (((uint)r4.z << 8) & bitmask.z) | ((uint)0 & ~bitmask.z);
    r1.y = (int)r1.z + (int)r1.y;
    bitmask.z = ((~(-1 << 11)) << 12) & 0xffffffff;  r1.z = (((uint)r3.w << 12) & bitmask.z) | ((uint)0 & ~bitmask.z);
    r1.y = (int)r1.z + (int)r1.y;
    bitmask.z = ((~(-1 << 11)) << 16) & 0xffffffff;  r1.z = (((uint)r4.y << 16) & bitmask.z) | ((uint)0 & ~bitmask.z);
    r1.y = (int)r1.z + (int)r1.y;
    r1.x = (int)r1.x + (int)r1.y;
    bitmask.x = ((~(-1 << 8)) << 24) & 0xffffffff;  r1.x = (((uint)r5.x << 24) & bitmask.x) | ((uint)r1.x & ~bitmask.x);
    bitmask.w = ((~(-1 << 4)) << 28) & 0xffffffff;  r6.w = (((uint)r0.w << 28) & bitmask.w) | ((uint)r1.x & ~bitmask.w);
    r0.w = cmp(oitMaxEntries < (uint)r0.x);
    if (r0.w != 0) {
    // No code for instruction (needs manual fix):
        store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.750000,0.375000,0.375000,1.000000)
    }
  } else {
    r3.xy = float2(0,0);
    r1.w = 1;
    r5.z = 1;
    r6.zw = float2(0,0);
    r0.zw = float2(-1,0);
  }
  if (r0.w == 0) {
    r0.w = (int)computeSpriteControl.x + 1023;
    r0.w = (uint)r0.w >> 10;
    r0.w = min(2, (uint)r0.w);
    if (27 == 0) r2.x = 0; else if (27+2 < 32) {     r2.x = (uint)vThreadGroupID.x << (32-(27 + 2)); r2.x = (uint)r2.x >> (32-27);    } else r2.x = (uint)vThreadGroupID.x >> 2;
    if (27 == 0) r2.y = 0; else if (27+2 < 32) {     r2.y = (uint)vThreadGroupID.y << (32-(27 + 2)); r2.y = (uint)r2.y >> (32-27);    } else r2.y = (uint)vThreadGroupID.y >> 2;
    r1.x = cmp((uint)r0.w >= 1);
    if (r1.x != 0) {
      r1.x = cmp((uint)r0.w >= 2);
      if (r1.x != 0) {
        r2.zw = float2(1.40129846e-45,0);
        r1.x = spriteCullRoughRough.Load(r2.xyww).x;
        r1.y = spriteCullRoughRough.Load(r2.xyzw).x;
      } else {
        r2.zw = float2(0,0);
        r1.x = spriteCullRoughRough.Load(r2.xyzw).x;
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
      r4.xy = vThreadID.xy;
      r4.zw = float2(0,0);
      r3.z = floatZSampler.Load(r4.xyz).x;
    // No code for instruction (needs manual fix):
        store_uav_typed u7.xyzw, vThreadID.xyyy, r3.zzzz
    }
    if (r1.z != 0) {
      r1.z = r0.x ? -170141183460469231731687303715884105728.000000 : 0;
      r1.z = cmp((int)r1.z == 0);
      r0.x = cmp(oitMaxEntries < (uint)r0.x);
      if (r0.x != 0) {
        r4.xy = vThreadID.xy;
        r4.zw = float2(0,0);
        r5.xyw = frameBuffer.Load(r4.xyw).xyz;
        r4.xyzw = oitFallbackBuffer.Load(r4.xyz).xyzw;
        r4.xyz = r4.www * r5.wxy + r4.zxy;
        r6.xy = r4.yz;
      } else {
        r7.xy = vThreadID.xy;
        r7.zw = float2(0,0);
        r4.xyz = frameBuffer.Load(r7.xyz).zxy;
        r6.xy = r4.yz;
      }
      r7.xy = vThreadID.xy;
      r7.w = 0;
      r0.x = floatZSampler.Load(r7.xyw).x;
      r3.z = cmp(r1.w < 0.800000012);
      r1.z = r1.z ? r3.z : 0;
      if (r1.z != 0) {
        r0.z = max(r0.z, r0.x);
      } else {
        r0.z = r0.x;
      }
    // No code for instruction (needs manual fix):
        store_uav_typed u7.xyzw, vThreadID.xyyy, r0.zzzz
      if (r0.w != 0) {
        r3.xyzw = (uint4)r3.xxyy >> int4(2,2,2,2);
        r3.xyzw = (int4)r3.xyzw & int4(1073741312,1073741312,1073741312,1073741312);
        r4.zw = cmp(r3.yw >= float2(0.984375,0.984375));
        r3.yw = float2(1.01587307,1.01587307) * r3.yw;
        r3.xz = r3.xz * float2(64,64) + float2(-63,-63);
        r3.xy = r4.zw ? r3.xz : r3.yw;
        r3.xy = max(float2(9.99999994e-09,9.99999994e-09), r3.xy);
        r3.xy = rcp(r3.xy);
        r0.z = cmp(r0.x >= 0.984375);
        r1.z = 1.01587307 * r0.x;
        r3.z = r0.x * 64 + -63;
        r0.z = r0.z ? r3.z : r1.z;
        r0.z = max(9.99999994e-09, r0.z);
        r0.z = rcp(r0.z);
        r7.z = (int)r6.z & 15;
        r1.z = oit_Nodes.Load(r7.xyzw).y;
        r1.z = (uint)r1.z >> 2;
        r1.z = (int)r1.z & 0x3ffffe00;
        r5.xyw = (int3)computeSpriteControl.yyy & int3(4,1,8);
        r3.z = cmp((int)r5.y == 0);
        r3.w = cmp((int)r5.x != 0);
        r8.xyzw = (uint4)vThreadID.xyxy;
        r4.z = ~(int)vThreadID.y;
        r4.z = (int)r4.z ^ (int)vThreadID.x;
        r4.z = r4.z ? 0.000000 : 0;
        r2.w = 0;
        r9.xyw = r7.xyw;
        r10.w = 0.00392156886;
        r11.xw = float2(1,5.60519386e-45);
        r12.xy = r6.zw;
        r12.zw = r6.xy;
        r13.x = r4.x;
        r13.y = 0;
        r4.w = r1.w;
        r14.w = 0;
        r5.x = r1.z;
        r13.z = r1.x;
        while (true) {
          if (r13.z == 0) break;
          r2.z = firstbitlow((uint)r13.z);
          r13.w = 1 << (int)r2.z;
          r13.w = ~(int)r13.w;
          r13.z = (int)r13.w & (int)r13.z;
          r13.w = spriteCullRough.Load(r2.xyzw).x;
          r15.x = (uint)r2.z << 5;
          r16.xyzw = r12.xyzw;
          r15.yz = r13.xy;
          r15.w = r4.w;
          r17.w = r14.w;
          r18.x = r5.x;
          r18.y = r13.w;
          while (true) {
            if (r18.y == 0) break;
            r18.z = firstbitlow((uint)r18.y);
            r18.w = 1 << (int)r18.z;
            r18.w = ~(int)r18.w;
            r18.y = (int)r18.w & (int)r18.y;
            r18.z = (int)r15.x + (int)r18.z;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=32)(mixed,mixed,mixed,mixed) r19.xyz, r18.z, l(16), t1.xyzx
          r19.x = computeSpritesSampler[]..swiz;
          r19.y = computeSpritesSampler[]..swiz;
          r19.z = computeSpritesSampler[]..swiz;
            r20.xy = r16.zw;
            r18.w = r16.x;
            r19.w = r16.y;
            r17.z = r15.y;
            r21.x = r15.z;
            r21.y = r18.x;
            while (true) {
              r21.z = cmp((uint)r21.x < (uint)r0.y);
              r21.w = cmp(r21.y < r19.z);
              r21.z = r21.w ? r21.z : 0;
              r21.z = r3.z ? r21.z : 0;
              if (r21.z == 0) break;
              r9.z = (int)r18.w & 15;
              r21.zw = oit_Nodes.Load(r9.xyzw).xy;
              r22.xyz = (uint3)r21.zzz >> int3(1,8,16);
              r22.w = (int)r22.x & 0x7f800000;
              bitmask.z = ((~(-1 << 8)) << 15) & 0xffffffff;  r21.z = (((uint)r21.z << 15) & bitmask.z) | ((uint)0 & ~bitmask.z);
              bitmask.z = ((~(-1 << 23)) << 0) & 0xffffffff;  r21.z = (((uint)r21.z << 0) & bitmask.z) | ((uint)r22.x & ~bitmask.z);
              r23.x = r21.z + -r22.w;
              bitmask.y = ((~(-1 << 8)) << 15) & 0xffffffff;  r22.y = (((uint)r22.y << 15) & bitmask.y) | ((uint)0 & ~bitmask.y);
              bitmask.z = ((~(-1 << 8)) << 15) & 0xffffffff;  r22.z = (((uint)r22.z << 15) & bitmask.z) | ((uint)0 & ~bitmask.z);
              bitmask.x = ((~(-1 << 23)) << 0) & 0xffffffff;  r22.x = (((uint)r22.y << 0) & bitmask.x) | ((uint)r22.x & ~bitmask.x);
              bitmask.y = ((~(-1 << 23)) << 0) & 0xffffffff;  r22.y = (((uint)r22.z << 0) & bitmask.y) | ((uint)r22.x & ~bitmask.y);
              r23.yz = r22.xy + -r22.ww;
              r21.z = (int)r21.w & 2046;
              r21.z = (uint)r21.z;
              r21.z = -r21.z * 0.000488758553 + 1;
              r17.xy = r20.xy;
              r17.xyz = r17.xyz * r21.zzz + r23.xyz;
              r21.x = (int)r21.x + 1;
              r21.z = (uint)r18.w >> 4;
              bitmask.w = ((~(-1 << 4)) << 28) & 0xffffffff;  r18.w = (((uint)r19.w << 28) & bitmask.w) | ((uint)r21.z & ~bitmask.w);
              r19.w = (uint)r19.w >> 4;
              r21.z = cmp((uint)r21.x < (uint)r0.y);
              if (r21.z != 0) {
                r9.z = (int)r18.w & 15;
                r9.z = oit_Nodes.Load(r9.xyzw).y;
                r9.z = (uint)r9.z >> 2;
                r21.y = (int)r9.z & 0x3ffffe00;
              } else {
                r21.y = 2;
              }
              r20.xy = r17.xy;
            }
            r16.x = r18.w;
            r16.y = r19.w;
            r15.z = r21.x;
            r18.x = r21.y;
            r9.z = cmp(r0.x < r19.z);
            r9.z = (int)r3.w | (int)r9.z;
            if (r9.z != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=32)(mixed,mixed,mixed,mixed) r22.xyzw, r18.z, l(0), t1.xyzw
            r22.x = computeSpritesSampler[]..swiz;
            r22.y = computeSpritesSampler[]..swiz;
            r22.z = computeSpritesSampler[]..swiz;
            r22.w = computeSpritesSampler[]..swiz;
              r23.xyzw = r22.xyzw * r8.xyzw;
              r21.zw = r23.xz + r23.yw;
              r23.xy = r21.zw + r19.xy;
              r19.xy = r23.xy * float2(2,2) + float2(-1,-1);
              r9.z = max(abs(r19.x), abs(r19.y));
              r9.z = cmp(r9.z < 1);
              if (r9.z != 0) {
                if (r5.y != 0) {
                  r19.xy = cmp(float2(0.995000005,0.995000005) < r23.xy);
                  r9.z = (int)r19.y | (int)r19.x;
                  r19.xy = cmp(r23.xy < float2(0.00499999989,0.00499999989));
                  r19.x = (int)r19.y | (int)r19.x;
                  r9.z = (int)r9.z | (int)r19.x;
                  if (r9.z != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r9.z, r18.z, l(52), t2.xxxx
                  r9.z = computeSpritesSampler[]..swiz;
                    if (1 == 0) r9.z = 0; else if (1+22 < 32) {                     r9.z = (uint)r9.z << (32-(1 + 22)); r9.z = (uint)r9.z >> (32-1);                    } else r9.z = (uint)r9.z >> 22;
                    r24.xyz = r9.zzz ? float3(0.75,0.300000012,0) : float3(0.75,0.75,0.75);
                    r16.zw = r24.xy;
                    r15.y = r24.z;
                    r17.w = 1;
                  } else {
                    r9.z = cmp(r17.w != 1.000000);
                    r19.x = cmp(r20.x == 0.000000);
                    r21.zw = cmp(r20.yx >= float2(1,1));
                    r20.zw = float2(0.0500000007,0.0500000007) + r20.xy;
                    r20.zw = r21.zz ? r20.zy : r20.xw;
                    r24.xyz = float3(-0.0500000007,0,-0.0500000007) + r20.yxy;
                    r25.xy = float2(0.0500000007,0) + r20.xy;
                    r25.xy = r21.ww ? r24.yz : r25.xy;
                    r19.y = cmp(r20.y != 0.000000);
                    r24.w = r19.y ? r24.x : r20.y;
                    r21.zw = r21.zz ? r25.xy : r24.yw;
                    r17.xy = r19.xx ? r20.zw : r21.zw;
                    r24.xyzw = r9.zzzz ? float4(0,0,0,1) : r17.xyzw;
                    r17.xy = r20.xy;
                    r17.xyzw = r4.zzzz ? r24.xyzw : r17.xyzw;
                    r16.zw = r17.xy;
                    r15.y = r17.z;
                  }
                } else {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r24.xyzw, r18.z, l(0), t2.xyzw
                r24.x = computeSpritesSampler[]..swiz;
                r24.y = computeSpritesSampler[]..swiz;
                r24.z = computeSpritesSampler[]..swiz;
                r24.w = computeSpritesSampler[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r25.xyzw, r18.z, l(16), t2.zxyw
                r25.x = computeSpritesSampler[]..swiz;
                r25.y = computeSpritesSampler[]..swiz;
                r25.z = computeSpritesSampler[]..swiz;
                r25.w = computeSpritesSampler[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r9.z, r18.z, l(32), t2.xxxx
                r9.z = computeSpritesSampler[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r26.xyzw, r18.z, l(40), t2.xyzw
                r26.x = computeSpritesSampler[]..swiz;
                r26.y = computeSpritesSampler[]..swiz;
                r26.z = computeSpritesSampler[]..swiz;
                r26.w = computeSpritesSampler[]..swiz;
                  r19.xy = (uint2)r26.xy >> int2(24,24);
                  r19.xy = (uint2)r19.xy;
                  r20.zw = float2(0.00390625,0.00392156886) * r19.xy;
                  if (4 == 0) r27.x = 0; else if (4+26 < 32) {                   r27.x = (uint)r26.z << (32-(4 + 26)); r27.x = (uint)r27.x >> (32-4);                  } else r27.x = (uint)r26.z >> 26;
                  if (4 == 0) r27.y = 0; else if (4+16 < 32) {                   r27.y = (uint)r26.w << (32-(4 + 16)); r27.y = (uint)r27.y >> (32-4);                  } else r27.y = (uint)r26.w >> 16;
                  if (1 == 0) r27.z = 0; else if (1+20 < 32) {                   r27.z = (uint)r26.w << (32-(1 + 20)); r27.z = (uint)r27.z >> (32-1);                  } else r27.z = (uint)r26.w >> 20;
                  if (8 == 0) r27.w = 0; else if (8+8 < 32) {                   r27.w = (uint)r26.w << (32-(8 + 8)); r27.w = (uint)r27.w >> (32-8);                  } else r27.w = (uint)r26.w >> 8;
                  r28.xyzw = int4(1,1,1,1) << (int4)r27.xyxy;
                  if (r27.z != 0) {
                    if (12 == 0) r21.z = 0; else if (12+12 < 32) {                     r21.z = (uint)r26.x << (32-(12 + 12)); r21.z = (uint)r21.z >> (32-12);                    } else r21.z = (uint)r26.x >> 12;
                    r27.xy = (int2)r26.xz & int2(4095,1023);
                    r29.xyzw = (uint4)r28.zwzw;
                    r30.xy = r23.xy * r29.zw + float2(0.5,0.5);
                    r30.zw = float2(-0.5,-0.5) + r29.zw;
                    r30.xy = min(r30.xy, r30.zw);
                    r31.xz = (uint2)r27.xy;
                    r31.y = (uint)r21.z;
                    r21.zw = r31.xy + r30.xy;
                    r31.xy = invBcTexSizes.xy * r21.zw;
                    r29.xyzw = r29.xyzw * r22.xzyw;
                    r32.xyzw = materialTexBC7.SampleGrad(computeSpritesSampler_s, r31.xyz, r29.xyxx, r29.zwzz).xyzw;
                    r21.z = cmp(0 < r19.x);
                    if (r21.z != 0) {
                      r21.z = (int)r26.y & 4095;
                      if (12 == 0) r21.w = 0; else if (12+12 < 32) {                       r21.w = (uint)r26.y << (32-(12 + 12)); r21.w = (uint)r21.w >> (32-12);                      } else r21.w = (uint)r26.y >> 12;
                      r27.xy = (uint2)r21.zw;
                      r21.zw = r30.xy + r27.xy;
                      r31.xy = invBcTexSizes.xy * r21.zw;
                      r29.xyzw = materialTexBC7.SampleGrad(computeSpritesSampler_s, r31.xyz, r29.xyxx, r29.zwzz).xyzw;
                      r29.xyzw = r29.xyzw + -r32.xyzw;
                      r32.xyzw = r20.zzzz * r29.xyzw + r32.xyzw;
                    }
                  } else {
                    if (12 == 0) r21.z = 0; else if (12+12 < 32) {                     r21.z = (uint)r26.x << (32-(12 + 12)); r21.z = (uint)r21.z >> (32-12);                    } else r21.z = (uint)r26.x >> 12;
                    r27.xy = (int2)r26.xz & int2(4095,1023);
                    r29.xyzw = (uint4)r28.zwzw;
                    r30.xy = r23.xy * r29.zw + float2(0.5,0.5);
                    r30.zw = float2(-0.5,-0.5) + r29.zw;
                    r30.xy = min(r30.xy, r30.zw);
                    r31.x = (uint)r27.x;
                    r31.y = (uint)r21.z;
                    r21.zw = r31.xy + r30.xy;
                    r30.xy = invBcTexSizes.zw * r21.zw;
                    r30.z = (uint)r27.y;
                    r29.xyzw = r29.xyzw * r22.xzyw;
                    r32.xyzw = materialTexBC3.SampleGrad(computeSpritesSampler_s, r30.xyz, r29.xyxx, r29.zwzz).xyzw;
                    r21.z = cmp(0 < r19.x);
                    if (r21.z != 0) {
                      if (12 == 0) r21.z = 0; else if (12+12 < 32) {                       r21.z = (uint)r26.y << (32-(12 + 12)); r21.z = (uint)r21.z >> (32-12);                      } else r21.z = (uint)r26.y >> 12;
                      r26.xy = (int2)r26.yz & int2(4095,1023);
                      r28.xyzw = (uint4)r28.xyzw;
                      r27.xy = r23.xy * r28.zw + float2(0.5,0.5);
                      r29.xy = float2(-0.5,-0.5) + r28.zw;
                      r27.xy = min(r29.xy, r27.xy);
                      r29.x = (uint)r26.x;
                      r29.y = (uint)r21.z;
                      r21.zw = r29.xy + r27.xy;
                      r27.xy = invBcTexSizes.zw * r21.zw;
                      r27.z = (uint)r26.y;
                      r28.xyzw = r28.xyzw * r22.xzyw;
                      r28.xyzw = materialTexBC3.SampleGrad(computeSpritesSampler_s, r27.xyz, r28.xyxx, r28.zwzz).xyzw;
                      r28.xyzw = r28.xyzw + -r32.xyzw;
                      r32.xyzw = r20.zzzz * r28.xyzw + r32.xyzw;
                    }
                  }
                  r21.z = (uint)r27.w;
                  r21.z = 0.00392156886 * r21.z;
                  r21.w = dot(r32.xyz, float3(0.212599993,0.715200007,0.0722000003));
                  r27.xyz = r21.www + -r32.xyz;
                  r27.xyz = r21.zzz * r27.xyz + r32.xyz;
                  if (8 == 0) r28.x = 0; else if (8+10 < 32) {                   r28.x = (uint)r26.z << (32-(8 + 10)); r28.x = (uint)r28.x >> (32-8);                  } else r28.x = (uint)r26.z >> 10;
                  if (8 == 0) r28.y = 0; else if (8+18 < 32) {                   r28.y = (uint)r26.z << (32-(8 + 18)); r28.y = (uint)r28.y >> (32-8);                  } else r28.y = (uint)r26.z >> 18;
                  if (1 == 0) r28.z = 0; else if (1+30 < 32) {                   r28.z = (uint)r26.z << (32-(1 + 30)); r28.z = (uint)r28.z >> (32-1);                  } else r28.z = (uint)r26.z >> 30;
                  r21.zw = (uint2)r28.xy;
                  r23.w = 0.00392156886 * r21.w;
                  r26.x = (int)r26.w & 255;
                  r26.x = (uint)r26.x;
                  r26.y = cmp(r19.y == 0.000000);
                  r28.xy = cmp(r21.zw == float2(255,0));
                  r21.w = r26.y ? r28.x : 0;
                  r21.w = r28.y ? r21.w : 0;
                  r26.y = cmp(r26.x == 255.000000);
                  r21.w = r26.y ? r21.w : 0;
                  r26.y = max(9.99999975e-05, r32.w);
                  r28.xyw = saturate(r27.xyz / r26.yyy);
                  r28.xyw = -r19.yyy * float3(0.00392156886,0.00392156886,0.00392156886) + r28.xyw;
                  r28.xyw = max(float3(0,0,0), r28.xyw);
                  r19.y = r21.z * 0.00392156886 + -r20.w;
                  r19.y = max(9.99999975e-05, r19.y);
                  r28.xyw = r28.xyw / r19.yyy;
                  r28.xyw = min(float3(1,1,1), r28.xyw);
                  r19.y = r26.x * 0.00392156886 + -r23.w;
                  r28.xyw = r28.xyw * r19.yyy + r23.www;
                  r29.xyz = cmp(float3(0.0404499993,0.0404499993,0.0404499993) >= r28.xyw);
                  r30.xyz = float3(0.0773993805,0.0773993805,0.0773993805) * r28.xyw;
                  r28.xyw = float3(0.0549999997,0.0549999997,0.0549999997) + r28.xyw;
                  r28.xyw = float3(0.947867334,0.947867334,0.947867334) * abs(r28.xyw);
                  r28.xyw = log2(r28.xyw);
                  r28.xyw = float3(2.4000001,2.4000001,2.4000001) * r28.xyw;
                  r28.xyw = exp2(r28.xyw);
                  r28.xyw = r29.xyz ? r30.xyz : r28.xyw;
                  r28.xyw = r28.xyw * r32.www;
                  r32.xyz = r21.www ? r27.xyz : r28.xyw;
                  r23.z = (uint)r18.z;
                  r10.xyz = lmapTex.SampleLevel(computeSpritesSampler_s, r23.xyz, 0).xyz;
                  r19.y = (int)r24.x & 255;
                  r19.y = (uint)r19.y;
                  r27.x = 0.00392156886 * r19.y;
                  if (8 == 0) r21.z = 0; else if (8+8 < 32) {                   r21.z = (uint)r24.x << (32-(8 + 8)); r21.z = (uint)r21.z >> (32-8);                  } else r21.z = (uint)r24.x >> 8;
                  if (8 == 0) r21.w = 0; else if (8+16 < 32) {                   r21.w = (uint)r24.x << (32-(8 + 16)); r21.w = (uint)r21.w >> (32-8);                  } else r21.w = (uint)r24.x >> 16;
                  r21.zw = (uint2)r21.zw;
                  r27.yz = float2(0.00392156886,0.00392156886) * r21.zw;
                  r19.y = (uint)r24.x >> 24;
                  r27.w = (uint)r19.y;
                  r29.xyzw = r27.xyzw * r10.xyzw;
                  r10.x = cmp(r19.z >= 0.984375);
                  r10.y = 1.01587307 * r19.z;
                  r10.z = r19.z * 64 + -63;
                  r10.x = r10.x ? r10.z : r10.y;
                  r10.x = max(9.99999994e-09, r10.x);
                  r10.x = rcp(r10.x);
                  r10.y = f16tof32(r25.x);
                  r10.z = f16tof32(r9.z);
                  r19.y = cmp(r10.z != 1.000000);
                  r28.xyw = r32.xyz / r26.yyy;
                  r20.w = r10.w * r27.w + r32.w;
                  r30.w = saturate(r20.w * r10.z + -r10.z);
                  r30.xyz = r30.www * r28.xyw;
                  r31.xyzw = r19.yyyy ? r30.xyzw : r32.xyzw;
                  r11.y = r30.w;
                  r21.zw = r19.yy ? r11.xy : r29.ww;
                  r10.z = cmp(r10.x < r0.z);
                  r11.y = -r10.x + r0.z;
                  r11.y = saturate(r11.y * r10.y);
                  r10.z = r10.z ? r11.y : 1;
                  r26.xy = -r10.xx + r3.xy;
                  r10.xy = r26.xy * r10.yy;
                  r10.xy = min(float2(1,1), abs(r10.xy));
                  r10.x = r10.z * r10.x;
                  r10.x = r10.x * r10.y;
                  r30.xyzw = r31.xyzw * r10.xxxx;
                  r31.xyzw = r30.wxyz * r21.zzzz;
                  if (r28.z != 0) {
                    r10.x = r21.w * r10.x;
                    r10.y = (uint)r26.z >> 31;
                    if (r10.y != 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r26.xyz, r18.z, l(24), t3.xyzx
                    r26.x = computeSpritesSampler[]..swiz;
                    r26.y = computeSpritesSampler[]..swiz;
                    r26.z = computeSpritesSampler[]..swiz;
                      r10.y = (uint)r26.x >> 28;
                      r10.y = 1 << (int)r10.y;
                      if (4 == 0) r28.x = 0; else if (4+24 < 32) {                       r28.x = (uint)r26.y << (32-(4 + 24)); r28.x = (uint)r28.x >> (32-4);                      } else r28.x = (uint)r26.y >> 24;
                      if (12 == 0) r28.y = 0; else if (12+16 < 32) {                       r28.y = (uint)r26.x << (32-(12 + 16)); r28.y = (uint)r28.y >> (32-12);                      } else r28.y = (uint)r26.x >> 16;
                      if (10 == 0) r28.z = 0; else if (10+12 < 32) {                       r28.z = (uint)r26.z << (32-(10 + 12)); r28.z = (uint)r28.z >> (32-10);                      } else r28.z = (uint)r26.z >> 12;
                      r10.z = 1 << (int)r28.x;
                      r11.y = (int)r26.y & 4095;
                      r32.xyzw = (uint4)r10.yzyz;
                      r10.yz = r23.xy * r32.zw + float2(0.5,0.5);
                      r28.xw = float2(-0.5,-0.5) + r32.zw;
                      r10.yz = min(r28.xw, r10.yz);
                      r28.x = (uint)r28.y;
                      r28.y = (uint)r11.y;
                      r28.xy = r28.xy + r10.yz;
                      r30.xy = invMaskTexSizes.xy * r28.xy;
                      r30.z = (uint)r28.z;
                      r22.xyzw = r32.xyzw * r22.xzyw;
                      r11.y = materialTexMask.SampleGrad(computeSpritesSampler_s, r30.xyz, r22.y, r22.w).x;
                      r18.z = cmp(0 < r19.x);
                      if (r18.z != 0) {
                        if (12 == 0) r18.z = 0; else if (12+12 < 32) {                         r18.z = (uint)r26.y << (32-(12 + 12)); r18.z = (uint)r18.z >> (32-12);                        } else r18.z = (uint)r26.y >> 12;
                        r19.x = (int)r26.z & 4095;
                        r26.x = (uint)r18.z;
                        r26.y = (uint)r19.x;
                        r10.yz = r26.xy + r10.yz;
                        r30.xy = invMaskTexSizes.xy * r10.yz;
                        r10.y = materialTexMask.SampleGrad(computeSpritesSampler_s, r30.xyz, r22.y, r22.w).x;
                        r10.y = r10.y + -r11.y;
                        r11.y = r20.z * r10.y + r11.y;
                      }
                    } else {
                      r11.y = 1;
                    }
                    r10.x = r11.y * r10.x;
                    r9.z = (uint)r9.z >> 16;
                    r9.z = f16tof32(r9.z);
                    if (1 == 0) r10.y = 0; else if (1+21 < 32) {                     r10.y = (uint)r26.w << (32-(1 + 21)); r10.y = (uint)r10.y >> (32-1);                    } else r10.y = (uint)r26.w >> 21;
                    r10.z = dot(r29.xyz, float3(0.298999995,0.587000012,0.114));
                    r10.z = max(9.99999975e-05, r10.z);
                    r10.z = max(relHDRExposure.x, r10.z);
                    r10.z = r10.z * r9.z;
                    r9.z = r10.y ? r9.z : r10.z;
                    r9.z = r10.x * r9.z;
                    r29.xyz = r27.xyz * r9.zzz + r29.xyz;
                  }
                  r9.z = -r30.w * r21.z + 1;
                  r15.w = r15.w * r9.z;
                  r10.x = cmp(r15.w < 0.800000012);
                  r10.y = cmp(0.200000003 < r31.x);
                  r10.x = (int)r10.y | (int)r10.x;
                  if (r10.x != 0) {
                    r10.x = cmp(r19.z >= 0.000492187508);
                    if (r10.x != 0) {
                      r10.x = 1 + -r19.z;
                      r10.yz = float2(5.60519386e-45,0);
                      while (true) {
                        r11.y = cmp((int)r10.z >= 4);
                        if (r11.y != 0) break;
                        r11.y = (uint)r10.z << 2;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured r11.y, vThreadIDInGroupFlattened.x, r11.y, g0.xxxx
                      r11.y = computeSpritesSampler[]..swiz;
                        r11.y = cmp(r11.y >= r10.x);
                        if (r11.y != 0) {
                          r10.y = r10.z;
                          break;
                        }
                        r11.z = (int)r10.z + 1;
                        r10.yz = r11.wz;
                      }
                      floatZSampler[vThreadIDInGroupFlattened.x].16 = g0.x;
                      floatZSampler[vThreadIDInGroupFlattened.x].16 = g1.x;
                      r10.z = (uint)r10.y << 2;
                      r11.y = (int)r10.z + -4;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured r11.y, vThreadIDInGroupFlattened.x, r11.y, g1.xxxx
                    r11.y = computeSpritesSampler[]..swiz;
                      r11.y = r10.y ? r11.y : 1;
                      r11.z = 3;
                      while (true) {
                        r18.z = cmp((int)r11.z < 0);
                        if (r18.z != 0) break;
                        r18.z = cmp((int)r11.z >= (int)r10.y);
                        if (r18.z != 0) {
                          r18.z = (uint)r11.z << 2;
                          r19.x = (int)r18.z + 4;
                        // Known bad code for instruction (needs manual fix):
                                                ld_structured r19.y, vThreadIDInGroupFlattened.x, r18.z, g0.xxxx
                        r19.y = computeSpritesSampler[]..swiz;
                          floatZSampler[vThreadIDInGroupFlattened.x].r19.x = g0.x;
                        // Known bad code for instruction (needs manual fix):
                                                ld_structured r18.z, vThreadIDInGroupFlattened.x, r18.z, g1.xxxx
                        r18.z = computeSpritesSampler[]..swiz;
                          r18.z = r18.z * r9.z;
                          floatZSampler[vThreadIDInGroupFlattened.x].r19.x = g1.x;
                        }
                        r11.z = (int)r11.z + -1;
                      }
                      floatZSampler[vThreadIDInGroupFlattened.x].r10.z = g0.x;
                      r9.z = r11.y * r9.z;
                      floatZSampler[vThreadIDInGroupFlattened.x].r10.z = g1.x;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured r9.z, vThreadIDInGroupFlattened.x, l(16), g0.xxxx
                    r9.z = computeSpritesSampler[]..swiz;
                      r9.z = cmp(r9.z != 1000000015047466219876688855040.000000);
                      if (r9.z != 0) {
                        r9.z = 2;
                        while (true) {
                          r10.x = cmp((int)r9.z >= 4);
                          if (r10.x != 0) break;
                          r10.x = (uint)r9.z << 2;
                        // Known bad code for instruction (needs manual fix):
                                                ld_structured r10.z, vThreadIDInGroupFlattened.x, r10.x, g0.xxxx
                        r10.z = computeSpritesSampler[]..swiz;
                          r10.x = (int)r10.x + -4;
                        // Known bad code for instruction (needs manual fix):
                                                ld_structured r11.y, vThreadIDInGroupFlattened.x, r10.x, g0.xxxx
                        r11.y = computeSpritesSampler[]..swiz;
                          r10.z = -r11.y + r10.z;
                        // Known bad code for instruction (needs manual fix):
                                                ld_structured r11.yz, vThreadIDInGroupFlattened.x, r10.x, g1.xxyx
                        r11.y = computeSpritesSampler[]..swiz;
                        r11.z = computeSpritesSampler[]..swiz;
                          r10.x = r11.y + -r11.z;
                          r10.x = r10.z * r10.x;
                          x16[r9.z+0].x = r10.x;
                          r9.z = (int)r9.z + 1;
                        }
                        r9.z = x16[2].x;
                        r10.x = x16[3].x;
                        r9.z = cmp(r10.x < r9.z);
                        r10.xz = r9.zz ? float2(3,2) : float2(2,1);
                        r9.z = 2;
                        while (true) {
                          r11.y = cmp((int)r9.z >= 4);
                          if (r11.y != 0) break;
                          r11.y = cmp((int)r9.z >= (int)r10.x);
                          if (r11.y != 0) {
                            r11.y = (uint)r9.z << 2;
                            r11.z = (int)r11.y + 4;
                          // Known bad code for instruction (needs manual fix):
                                                    ld_structured r11.z, vThreadIDInGroupFlattened.x, r11.z, g0.xxxx
                          r11.z = computeSpritesSampler[]..swiz;
                            floatZSampler[vThreadIDInGroupFlattened.x].r11.y = g0.x;
                          }
                          r9.z = (int)r9.z + 1;
                        }
                        r9.z = 1;
                        while (true) {
                          r10.x = cmp((int)r9.z >= 4);
                          if (r10.x != 0) break;
                          r10.x = cmp((int)r9.z >= (int)r10.z);
                          if (r10.x != 0) {
                            r10.x = (uint)r9.z << 2;
                            r11.y = (int)r10.x + 4;
                          // Known bad code for instruction (needs manual fix):
                                                    ld_structured r11.y, vThreadIDInGroupFlattened.x, r11.y, g1.xxxx
                          r11.y = computeSpritesSampler[]..swiz;
                            floatZSampler[vThreadIDInGroupFlattened.x].r10.x = g1.x;
                          }
                          r9.z = (int)r9.z + 1;
                        }
                      }
                    }
                  }
                  if (r5.w != 0) {
                    r19.xyz = lmapTex.SampleLevel(computeSpritesPointSampler_s, r23.xyz, 0).xyz;
                    r31.x = 1;
                  } else {
                    r10.xz = (uint2)r25.xw >> int2(16,16);
                    r22.y = f16tof32(r25.w);
                    r22.xz = f16tof32(r10.xz);
                    r10.xz = (uint2)r24.yz >> int2(16,16);
                    r23.xy = f16tof32(r24.yz);
                    r23.zw = f16tof32(r10.xz);
                    r23.xyz = r23.xzy * r31.xxx;
                    r25.x = r24.w;
                    r24.xyz = r25.xyz * r31.xxx;
                    r25.xyz = r31.yzw * r29.xyz + -r23.xyz;
                    r23.xyz = r23.www * r25.xyz + r23.xyz;
                    r19.xyz = r23.xyz * r22.xyz + r24.xyz;
                  }
                  r19.xyz = relHDRExposure.yyy * r19.xyz;
                  r9.z = 1 + -r31.x;
                  r17.xy = r20.xy;
                  r19.xyz = r17.xyz * r9.zzz + r19.xyz;
                  r16.zw = r19.xy;
                  r15.y = r19.z;
                }
              } else {
                r16.zw = r20.xy;
                r15.y = r17.z;
              }
            } else {
              r16.zw = r20.xy;
              r15.y = r17.z;
            }
          }
          r12.xyzw = r16.xyzw;
          r13.xy = r15.yz;
          r4.w = r15.w;
          r14.w = r17.w;
          r5.x = r18.x;
        }
        r6.xyzw = r12.zwxy;
        r4.xy = r13.xy;
        r1.w = r4.w;
        r0.w = cmp(1 < (uint)r0.w);
        if (r0.w != 0) {
          r2.w = 0;
          r9.xyw = r7.xyw;
          r10.w = 0.00392156886;
          r11.xw = float2(1,5.60519386e-45);
          r12.xyzw = r6.zwxy;
          r1.xz = r4.xy;
          r0.w = r1.w;
          r4.w = r14.w;
          r13.x = r5.x;
          r13.y = r1.y;
          while (true) {
            if (r13.y == 0) break;
            r13.z = firstbitlow((uint)r13.y);
            r13.w = 1 << (int)r13.z;
            r13.w = ~(int)r13.w;
            r13.y = (int)r13.w & (int)r13.y;
            r2.z = (int)r13.z + 32;
            r13.z = spriteCullRough.Load(r2.xyzw).x;
            r2.z = (uint)r2.z << 5;
            r15.xyzw = r12.xyzw;
            r16.xy = r1.xz;
            r13.w = r0.w;
            r17.w = r4.w;
            r16.z = r13.x;
            r16.w = r13.z;
            while (true) {
              if (r16.w == 0) break;
              r18.x = firstbitlow((uint)r16.w);
              r18.y = 1 << (int)r18.x;
              r18.y = ~(int)r18.y;
              r16.w = (int)r16.w & (int)r18.y;
              r18.x = (int)r2.z + (int)r18.x;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=32)(mixed,mixed,mixed,mixed) r18.yzw, r18.x, l(16), t1.xxyz
            r18.y = computeSpritesSampler[]..swiz;
            r18.z = computeSpritesSampler[]..swiz;
            r18.w = computeSpritesSampler[]..swiz;
              r19.xy = r15.zw;
              r20.xy = r15.xy;
              r17.z = r16.x;
              r20.zw = r16.yz;
              while (true) {
                r21.x = cmp((uint)r20.z < (uint)r0.y);
                r21.y = cmp(r20.w < r18.w);
                r21.x = r21.y ? r21.x : 0;
                r21.x = r3.z ? r21.x : 0;
                if (r21.x == 0) break;
                r9.z = (int)r20.x & 15;
                r21.xy = oit_Nodes.Load(r9.xyzw).xy;
                r22.xyz = (uint3)r21.xxx >> int3(1,8,16);
                r21.z = (int)r22.x & 0x7f800000;
                bitmask.x = ((~(-1 << 8)) << 15) & 0xffffffff;  r21.x = (((uint)r21.x << 15) & bitmask.x) | ((uint)0 & ~bitmask.x);
                bitmask.x = ((~(-1 << 23)) << 0) & 0xffffffff;  r21.x = (((uint)r21.x << 0) & bitmask.x) | ((uint)r22.x & ~bitmask.x);
                r23.x = r21.x + -r21.z;
                bitmask.x = ((~(-1 << 8)) << 15) & 0xffffffff;  r21.x = (((uint)r22.y << 15) & bitmask.x) | ((uint)0 & ~bitmask.x);
                bitmask.w = ((~(-1 << 8)) << 15) & 0xffffffff;  r21.w = (((uint)r22.z << 15) & bitmask.w) | ((uint)0 & ~bitmask.w);
                bitmask.x = ((~(-1 << 23)) << 0) & 0xffffffff;  r21.x = (((uint)r21.x << 0) & bitmask.x) | ((uint)r22.x & ~bitmask.x);
                bitmask.w = ((~(-1 << 23)) << 0) & 0xffffffff;  r21.w = (((uint)r21.w << 0) & bitmask.w) | ((uint)r22.x & ~bitmask.w);
                r23.yz = r21.xw + -r21.zz;
                r21.x = (int)r21.y & 2046;
                r21.x = (uint)r21.x;
                r21.x = -r21.x * 0.000488758553 + 1;
                r17.xy = r19.xy;
                r17.xyz = r17.xyz * r21.xxx + r23.xyz;
                r20.z = (int)r20.z + 1;
                r21.x = (uint)r20.x >> 4;
                bitmask.x = ((~(-1 << 4)) << 28) & 0xffffffff;  r20.x = (((uint)r20.y << 28) & bitmask.x) | ((uint)r21.x & ~bitmask.x);
                r20.y = (uint)r20.y >> 4;
                r21.x = cmp((uint)r20.z < (uint)r0.y);
                if (r21.x != 0) {
                  r9.z = (int)r20.x & 15;
                  r9.z = oit_Nodes.Load(r9.xyzw).y;
                  r9.z = (uint)r9.z >> 2;
                  r20.w = (int)r9.z & 0x3ffffe00;
                } else {
                  r20.w = 2;
                }
                r19.xy = r17.xy;
              }
              r15.xy = r20.xy;
              r16.yz = r20.zw;
              r9.z = cmp(r0.x < r18.w);
              r9.z = (int)r3.w | (int)r9.z;
              if (r9.z != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=32)(mixed,mixed,mixed,mixed) r21.xyzw, r18.x, l(0), t1.xyzw
              r21.x = computeSpritesSampler[]..swiz;
              r21.y = computeSpritesSampler[]..swiz;
              r21.z = computeSpritesSampler[]..swiz;
              r21.w = computeSpritesSampler[]..swiz;
                r22.xyzw = r21.xyzw * r8.xyzw;
                r22.xy = r22.xz + r22.yw;
                r22.xy = r22.xy + r18.yz;
                r18.yz = r22.xy * float2(2,2) + float2(-1,-1);
                r9.z = max(abs(r18.y), abs(r18.z));
                r9.z = cmp(r9.z < 1);
                if (r9.z != 0) {
                  if (r5.y != 0) {
                    r18.yz = cmp(float2(0.995000005,0.995000005) < r22.xy);
                    r9.z = (int)r18.z | (int)r18.y;
                    r18.yz = cmp(r22.xy < float2(0.00499999989,0.00499999989));
                    r18.y = (int)r18.z | (int)r18.y;
                    r9.z = (int)r9.z | (int)r18.y;
                    if (r9.z != 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r9.z, r18.x, l(52), t2.xxxx
                    r9.z = computeSpritesSampler[]..swiz;
                      if (1 == 0) r9.z = 0; else if (1+22 < 32) {                       r9.z = (uint)r9.z << (32-(1 + 22)); r9.z = (uint)r9.z >> (32-1);                      } else r9.z = (uint)r9.z >> 22;
                      r23.xyz = r9.zzz ? float3(0.75,0.300000012,0) : float3(0.75,0.75,0.75);
                      r15.zw = r23.xy;
                      r16.x = r23.z;
                      r17.w = 1;
                    } else {
                      r9.z = cmp(r17.w != 1.000000);
                      r18.y = cmp(r19.x == 0.000000);
                      r23.xy = cmp(r19.yx >= float2(1,1));
                      r19.zw = float2(0.0500000007,0.0500000007) + r19.xy;
                      r19.zw = r23.xx ? r19.zy : r19.xw;
                      r24.xyz = float3(-0.0500000007,0,-0.0500000007) + r19.yxy;
                      r23.zw = float2(0.0500000007,0) + r19.xy;
                      r23.yz = r23.yy ? r24.yz : r23.zw;
                      r18.z = cmp(r19.y != 0.000000);
                      r24.w = r18.z ? r24.x : r19.y;
                      r23.xy = r23.xx ? r23.yz : r24.yw;
                      r17.xy = r18.yy ? r19.zw : r23.xy;
                      r23.xyzw = r9.zzzz ? float4(0,0,0,1) : r17.xyzw;
                      r17.xy = r19.xy;
                      r17.xyzw = r4.zzzz ? r23.xyzw : r17.xyzw;
                      r15.zw = r17.xy;
                      r16.x = r17.z;
                    }
                  } else {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r23.xyzw, r18.x, l(0), t2.xyzw
                  r23.x = computeSpritesSampler[]..swiz;
                  r23.y = computeSpritesSampler[]..swiz;
                  r23.z = computeSpritesSampler[]..swiz;
                  r23.w = computeSpritesSampler[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r24.xyzw, r18.x, l(16), t2.zxyw
                  r24.x = computeSpritesSampler[]..swiz;
                  r24.y = computeSpritesSampler[]..swiz;
                  r24.z = computeSpritesSampler[]..swiz;
                  r24.w = computeSpritesSampler[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r9.z, r18.x, l(32), t2.xxxx
                  r9.z = computeSpritesSampler[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r25.xyzw, r18.x, l(40), t2.xyzw
                  r25.x = computeSpritesSampler[]..swiz;
                  r25.y = computeSpritesSampler[]..swiz;
                  r25.z = computeSpritesSampler[]..swiz;
                  r25.w = computeSpritesSampler[]..swiz;
                    r18.yz = (uint2)r25.xy >> int2(24,24);
                    r18.yz = (uint2)r18.yz;
                    r19.zw = float2(0.00390625,0.00392156886) * r18.yz;
                    if (4 == 0) r26.x = 0; else if (4+26 < 32) {                     r26.x = (uint)r25.z << (32-(4 + 26)); r26.x = (uint)r26.x >> (32-4);                    } else r26.x = (uint)r25.z >> 26;
                    if (4 == 0) r26.y = 0; else if (4+16 < 32) {                     r26.y = (uint)r25.w << (32-(4 + 16)); r26.y = (uint)r26.y >> (32-4);                    } else r26.y = (uint)r25.w >> 16;
                    if (1 == 0) r26.z = 0; else if (1+20 < 32) {                     r26.z = (uint)r25.w << (32-(1 + 20)); r26.z = (uint)r26.z >> (32-1);                    } else r26.z = (uint)r25.w >> 20;
                    if (8 == 0) r26.w = 0; else if (8+8 < 32) {                     r26.w = (uint)r25.w << (32-(8 + 8)); r26.w = (uint)r26.w >> (32-8);                    } else r26.w = (uint)r25.w >> 8;
                    r27.xyzw = int4(1,1,1,1) << (int4)r26.xyxy;
                    if (r26.z != 0) {
                      if (12 == 0) r22.w = 0; else if (12+12 < 32) {                       r22.w = (uint)r25.x << (32-(12 + 12)); r22.w = (uint)r22.w >> (32-12);                      } else r22.w = (uint)r25.x >> 12;
                      r26.xy = (int2)r25.xz & int2(4095,1023);
                      r28.xyzw = (uint4)r27.zwzw;
                      r29.xy = r22.xy * r28.zw + float2(0.5,0.5);
                      r29.zw = float2(-0.5,-0.5) + r28.zw;
                      r29.xy = min(r29.xy, r29.zw);
                      r30.xz = (uint2)r26.xy;
                      r30.y = (uint)r22.w;
                      r26.xz = r30.xy + r29.xy;
                      r30.xy = invBcTexSizes.xy * r26.xz;
                      r28.xyzw = r28.xyzw * r21.xzyw;
                      r31.xyzw = materialTexBC7.SampleGrad(computeSpritesSampler_s, r30.xyz, r28.xyxx, r28.zwzz).xyzw;
                      r22.w = cmp(0 < r18.y);
                      if (r22.w != 0) {
                        r22.w = (int)r25.y & 4095;
                        if (12 == 0) r26.x = 0; else if (12+12 < 32) {                         r26.x = (uint)r25.y << (32-(12 + 12)); r26.x = (uint)r26.x >> (32-12);                        } else r26.x = (uint)r25.y >> 12;
                        r32.x = (uint)r22.w;
                        r32.y = (uint)r26.x;
                        r26.xy = r32.xy + r29.xy;
                        r30.xy = invBcTexSizes.xy * r26.xy;
                        r28.xyzw = materialTexBC7.SampleGrad(computeSpritesSampler_s, r30.xyz, r28.xyxx, r28.zwzz).xyzw;
                        r28.xyzw = r28.xyzw + -r31.xyzw;
                        r31.xyzw = r19.zzzz * r28.xyzw + r31.xyzw;
                      }
                    } else {
                      if (12 == 0) r22.w = 0; else if (12+12 < 32) {                       r22.w = (uint)r25.x << (32-(12 + 12)); r22.w = (uint)r22.w >> (32-12);                      } else r22.w = (uint)r25.x >> 12;
                      r26.xy = (int2)r25.xz & int2(4095,1023);
                      r28.xyzw = (uint4)r27.zwzw;
                      r29.xy = r22.xy * r28.zw + float2(0.5,0.5);
                      r29.zw = float2(-0.5,-0.5) + r28.zw;
                      r29.xy = min(r29.xy, r29.zw);
                      r30.x = (uint)r26.x;
                      r30.y = (uint)r22.w;
                      r26.xz = r30.xy + r29.xy;
                      r29.xy = invBcTexSizes.zw * r26.xz;
                      r29.z = (uint)r26.y;
                      r28.xyzw = r28.xyzw * r21.xzyw;
                      r31.xyzw = materialTexBC3.SampleGrad(computeSpritesSampler_s, r29.xyz, r28.xyxx, r28.zwzz).xyzw;
                      r22.w = cmp(0 < r18.y);
                      if (r22.w != 0) {
                        if (12 == 0) r22.w = 0; else if (12+12 < 32) {                         r22.w = (uint)r25.y << (32-(12 + 12)); r22.w = (uint)r22.w >> (32-12);                        } else r22.w = (uint)r25.y >> 12;
                        r25.xy = (int2)r25.yz & int2(4095,1023);
                        r27.xyzw = (uint4)r27.xyzw;
                        r26.xy = r22.xy * r27.zw + float2(0.5,0.5);
                        r28.xy = float2(-0.5,-0.5) + r27.zw;
                        r26.xy = min(r28.xy, r26.xy);
                        r28.x = (uint)r25.x;
                        r28.y = (uint)r22.w;
                        r26.xy = r28.xy + r26.xy;
                        r26.xy = invBcTexSizes.zw * r26.xy;
                        r26.z = (uint)r25.y;
                        r27.xyzw = r27.xyzw * r21.xzyw;
                        r27.xyzw = materialTexBC3.SampleGrad(computeSpritesSampler_s, r26.xyz, r27.xyxx, r27.zwzz).xyzw;
                        r27.xyzw = r27.xyzw + -r31.xyzw;
                        r31.xyzw = r19.zzzz * r27.xyzw + r31.xyzw;
                      }
                    }
                    r22.w = (uint)r26.w;
                    r22.w = 0.00392156886 * r22.w;
                    r25.x = dot(r31.xyz, float3(0.212599993,0.715200007,0.0722000003));
                    r26.xyz = r25.xxx + -r31.xyz;
                    r26.xyz = r22.www * r26.xyz + r31.xyz;
                    if (8 == 0) r27.x = 0; else if (8+10 < 32) {                     r27.x = (uint)r25.z << (32-(8 + 10)); r27.x = (uint)r27.x >> (32-8);                    } else r27.x = (uint)r25.z >> 10;
                    if (8 == 0) r27.y = 0; else if (8+18 < 32) {                     r27.y = (uint)r25.z << (32-(8 + 18)); r27.y = (uint)r27.y >> (32-8);                    } else r27.y = (uint)r25.z >> 18;
                    if (1 == 0) r27.z = 0; else if (1+30 < 32) {                     r27.z = (uint)r25.z << (32-(1 + 30)); r27.z = (uint)r27.z >> (32-1);                    } else r27.z = (uint)r25.z >> 30;
                    r25.xy = (uint2)r27.xy;
                    r22.w = 0.00392156886 * r25.y;
                    r26.w = (int)r25.w & 255;
                    r26.w = (uint)r26.w;
                    r27.x = cmp(r18.z == 0.000000);
                    r27.yw = cmp(r25.xy == float2(255,0));
                    r25.y = r27.y ? r27.x : 0;
                    r25.y = r27.w ? r25.y : 0;
                    r27.x = cmp(r26.w == 255.000000);
                    r25.y = r27.x ? r25.y : 0;
                    r27.x = max(9.99999975e-05, r31.w);
                    r28.xyz = saturate(r26.xyz / r27.xxx);
                    r28.xyz = -r18.zzz * float3(0.00392156886,0.00392156886,0.00392156886) + r28.xyz;
                    r28.xyz = max(float3(0,0,0), r28.xyz);
                    r18.z = r25.x * 0.00392156886 + -r19.w;
                    r18.z = max(9.99999975e-05, r18.z);
                    r28.xyz = r28.xyz / r18.zzz;
                    r28.xyz = min(float3(1,1,1), r28.xyz);
                    r18.z = r26.w * 0.00392156886 + -r22.w;
                    r28.xyz = r28.xyz * r18.zzz + r22.www;
                    r29.xyz = cmp(float3(0.0404499993,0.0404499993,0.0404499993) >= r28.xyz);
                    r30.xyz = float3(0.0773993805,0.0773993805,0.0773993805) * r28.xyz;
                    r28.xyz = float3(0.0549999997,0.0549999997,0.0549999997) + r28.xyz;
                    r28.xyz = float3(0.947867334,0.947867334,0.947867334) * abs(r28.xyz);
                    r28.xyz = log2(r28.xyz);
                    r28.xyz = float3(2.4000001,2.4000001,2.4000001) * r28.xyz;
                    r28.xyz = exp2(r28.xyz);
                    r28.xyz = r29.xyz ? r30.xyz : r28.xyz;
                    r28.xyz = r28.xyz * r31.www;
                    r31.xyz = r25.yyy ? r26.xyz : r28.xyz;
                    r22.z = (uint)r18.x;
                    r10.xyz = lmapTex.SampleLevel(computeSpritesSampler_s, r22.xyz, 0).xyz;
                    r18.z = (int)r23.x & 255;
                    r18.z = (uint)r18.z;
                    r26.x = 0.00392156886 * r18.z;
                    if (8 == 0) r25.x = 0; else if (8+8 < 32) {                     r25.x = (uint)r23.x << (32-(8 + 8)); r25.x = (uint)r25.x >> (32-8);                    } else r25.x = (uint)r23.x >> 8;
                    if (8 == 0) r25.y = 0; else if (8+16 < 32) {                     r25.y = (uint)r23.x << (32-(8 + 16)); r25.y = (uint)r25.y >> (32-8);                    } else r25.y = (uint)r23.x >> 16;
                    r25.xy = (uint2)r25.xy;
                    r26.yz = float2(0.00392156886,0.00392156886) * r25.xy;
                    r18.z = (uint)r23.x >> 24;
                    r26.w = (uint)r18.z;
                    r28.xyzw = r26.xyzw * r10.xyzw;
                    r10.x = cmp(r18.w >= 0.984375);
                    r10.y = 1.01587307 * r18.w;
                    r10.z = r18.w * 64 + -63;
                    r10.x = r10.x ? r10.z : r10.y;
                    r10.x = max(9.99999994e-09, r10.x);
                    r10.x = rcp(r10.x);
                    r10.y = f16tof32(r24.x);
                    r10.z = f16tof32(r9.z);
                    r18.z = cmp(r10.z != 1.000000);
                    r27.xyw = r31.xyz / r27.xxx;
                    r19.w = r10.w * r26.w + r31.w;
                    r29.w = saturate(r19.w * r10.z + -r10.z);
                    r29.xyz = r29.www * r27.xyw;
                    r30.xyzw = r18.zzzz ? r29.xyzw : r31.xyzw;
                    r11.y = r29.w;
                    r25.xy = r18.zz ? r11.xy : r28.ww;
                    r10.z = cmp(r10.x < r0.z);
                    r11.y = -r10.x + r0.z;
                    r11.y = saturate(r11.y * r10.y);
                    r10.z = r10.z ? r11.y : 1;
                    r27.xy = -r10.xx + r3.xy;
                    r10.xy = r27.xy * r10.yy;
                    r10.xy = min(float2(1,1), abs(r10.xy));
                    r10.x = r10.z * r10.x;
                    r10.x = r10.x * r10.y;
                    r29.xyzw = r30.xyzw * r10.xxxx;
                    r30.xyzw = r29.wxyz * r25.xxxx;
                    if (r27.z != 0) {
                      r10.x = r25.y * r10.x;
                      r10.y = (uint)r25.z >> 31;
                      if (r10.y != 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r27.xyz, r18.x, l(24), t3.xyzx
                      r27.x = computeSpritesSampler[]..swiz;
                      r27.y = computeSpritesSampler[]..swiz;
                      r27.z = computeSpritesSampler[]..swiz;
                        r10.y = (uint)r27.x >> 28;
                        r10.y = 1 << (int)r10.y;
                        if (4 == 0) r29.x = 0; else if (4+24 < 32) {                         r29.x = (uint)r27.y << (32-(4 + 24)); r29.x = (uint)r29.x >> (32-4);                        } else r29.x = (uint)r27.y >> 24;
                        if (12 == 0) r29.y = 0; else if (12+16 < 32) {                         r29.y = (uint)r27.x << (32-(12 + 16)); r29.y = (uint)r29.y >> (32-12);                        } else r29.y = (uint)r27.x >> 16;
                        if (10 == 0) r29.z = 0; else if (10+12 < 32) {                         r29.z = (uint)r27.z << (32-(10 + 12)); r29.z = (uint)r29.z >> (32-10);                        } else r29.z = (uint)r27.z >> 12;
                        r10.z = 1 << (int)r29.x;
                        r11.y = (int)r27.y & 4095;
                        r31.xyzw = (uint4)r10.yzyz;
                        r10.yz = r22.xy * r31.zw + float2(0.5,0.5);
                        r18.xz = float2(-0.5,-0.5) + r31.zw;
                        r10.yz = min(r18.xz, r10.yz);
                        r29.x = (uint)r29.y;
                        r29.y = (uint)r11.y;
                        r18.xz = r29.xy + r10.yz;
                        r32.xy = invMaskTexSizes.xy * r18.xz;
                        r32.z = (uint)r29.z;
                        r21.xyzw = r31.xyzw * r21.xzyw;
                        r11.y = materialTexMask.SampleGrad(computeSpritesSampler_s, r32.xyz, r21.y, r21.w).x;
                        r18.x = cmp(0 < r18.y);
                        if (r18.x != 0) {
                          if (12 == 0) r18.x = 0; else if (12+12 < 32) {                           r18.x = (uint)r27.y << (32-(12 + 12)); r18.x = (uint)r18.x >> (32-12);                          } else r18.x = (uint)r27.y >> 12;
                          r18.y = (int)r27.z & 4095;
                          r27.xy = (uint2)r18.xy;
                          r10.yz = r27.xy + r10.yz;
                          r32.xy = invMaskTexSizes.xy * r10.yz;
                          r10.y = materialTexMask.SampleGrad(computeSpritesSampler_s, r32.xyz, r21.y, r21.w).x;
                          r10.y = r10.y + -r11.y;
                          r11.y = r19.z * r10.y + r11.y;
                        }
                      } else {
                        r11.y = 1;
                      }
                      r10.x = r11.y * r10.x;
                      r9.z = (uint)r9.z >> 16;
                      r9.z = f16tof32(r9.z);
                      if (1 == 0) r10.y = 0; else if (1+21 < 32) {                       r10.y = (uint)r25.w << (32-(1 + 21)); r10.y = (uint)r10.y >> (32-1);                      } else r10.y = (uint)r25.w >> 21;
                      r10.z = dot(r28.xyz, float3(0.298999995,0.587000012,0.114));
                      r10.z = max(9.99999975e-05, r10.z);
                      r10.z = max(relHDRExposure.x, r10.z);
                      r10.z = r10.z * r9.z;
                      r9.z = r10.y ? r9.z : r10.z;
                      r9.z = r10.x * r9.z;
                      r28.xyz = r26.xyz * r9.zzz + r28.xyz;
                    }
                    r9.z = -r29.w * r25.x + 1;
                    r13.w = r13.w * r9.z;
                    r10.x = cmp(r13.w < 0.800000012);
                    r10.y = cmp(0.200000003 < r30.x);
                    r10.x = (int)r10.y | (int)r10.x;
                    if (r10.x != 0) {
                      r10.x = cmp(r18.w >= 0.000492187508);
                      if (r10.x != 0) {
                        r10.x = 1 + -r18.w;
                        r10.yz = float2(5.60519386e-45,0);
                        while (true) {
                          r11.y = cmp((int)r10.z >= 4);
                          if (r11.y != 0) break;
                          r11.y = (uint)r10.z << 2;
                        // Known bad code for instruction (needs manual fix):
                                                ld_structured r11.y, vThreadIDInGroupFlattened.x, r11.y, g0.xxxx
                        r11.y = computeSpritesSampler[]..swiz;
                          r11.y = cmp(r11.y >= r10.x);
                          if (r11.y != 0) {
                            r10.y = r10.z;
                            break;
                          }
                          r11.z = (int)r10.z + 1;
                          r10.yz = r11.wz;
                        }
                        floatZSampler[vThreadIDInGroupFlattened.x].16 = g0.x;
                        floatZSampler[vThreadIDInGroupFlattened.x].16 = g1.x;
                        r10.z = (uint)r10.y << 2;
                        r11.y = (int)r10.z + -4;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured r11.y, vThreadIDInGroupFlattened.x, r11.y, g1.xxxx
                      r11.y = computeSpritesSampler[]..swiz;
                        r11.y = r10.y ? r11.y : 1;
                        r11.z = 3;
                        while (true) {
                          r18.x = cmp((int)r11.z < 0);
                          if (r18.x != 0) break;
                          r18.x = cmp((int)r11.z >= (int)r10.y);
                          if (r18.x != 0) {
                            r18.x = (uint)r11.z << 2;
                            r18.y = (int)r18.x + 4;
                          // Known bad code for instruction (needs manual fix):
                                                    ld_structured r18.z, vThreadIDInGroupFlattened.x, r18.x, g0.xxxx
                          r18.z = computeSpritesSampler[]..swiz;
                            floatZSampler[vThreadIDInGroupFlattened.x].r18.y = g0.x;
                          // Known bad code for instruction (needs manual fix):
                                                    ld_structured r18.x, vThreadIDInGroupFlattened.x, r18.x, g1.xxxx
                          r18.x = computeSpritesSampler[]..swiz;
                            r18.x = r18.x * r9.z;
                            floatZSampler[vThreadIDInGroupFlattened.x].r18.y = g1.x;
                          }
                          r11.z = (int)r11.z + -1;
                        }
                        floatZSampler[vThreadIDInGroupFlattened.x].r10.z = g0.x;
                        r9.z = r11.y * r9.z;
                        floatZSampler[vThreadIDInGroupFlattened.x].r10.z = g1.x;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured r9.z, vThreadIDInGroupFlattened.x, l(16), g0.xxxx
                      r9.z = computeSpritesSampler[]..swiz;
                        r9.z = cmp(r9.z != 1000000015047466219876688855040.000000);
                        if (r9.z != 0) {
                          r9.z = 2;
                          while (true) {
                            r10.x = cmp((int)r9.z >= 4);
                            if (r10.x != 0) break;
                            r10.x = (uint)r9.z << 2;
                          // Known bad code for instruction (needs manual fix):
                                                    ld_structured r10.z, vThreadIDInGroupFlattened.x, r10.x, g0.xxxx
                          r10.z = computeSpritesSampler[]..swiz;
                            r10.x = (int)r10.x + -4;
                          // Known bad code for instruction (needs manual fix):
                                                    ld_structured r11.y, vThreadIDInGroupFlattened.x, r10.x, g0.xxxx
                          r11.y = computeSpritesSampler[]..swiz;
                            r10.z = -r11.y + r10.z;
                          // Known bad code for instruction (needs manual fix):
                                                    ld_structured r11.yz, vThreadIDInGroupFlattened.x, r10.x, g1.xxyx
                          r11.y = computeSpritesSampler[]..swiz;
                          r11.z = computeSpritesSampler[]..swiz;
                            r10.x = r11.y + -r11.z;
                            r10.x = r10.z * r10.x;
                            x17[r9.z+0].x = r10.x;
                            r9.z = (int)r9.z + 1;
                          }
                          r9.z = x17[2].x;
                          r10.x = x17[3].x;
                          r9.z = cmp(r10.x < r9.z);
                          r10.xz = r9.zz ? float2(3,2) : float2(2,1);
                          r9.z = 2;
                          while (true) {
                            r11.y = cmp((int)r9.z >= 4);
                            if (r11.y != 0) break;
                            r11.y = cmp((int)r9.z >= (int)r10.x);
                            if (r11.y != 0) {
                              r11.y = (uint)r9.z << 2;
                              r11.z = (int)r11.y + 4;
                            // Known bad code for instruction (needs manual fix):
                                                        ld_structured r11.z, vThreadIDInGroupFlattened.x, r11.z, g0.xxxx
                            r11.z = computeSpritesSampler[]..swiz;
                              floatZSampler[vThreadIDInGroupFlattened.x].r11.y = g0.x;
                            }
                            r9.z = (int)r9.z + 1;
                          }
                          r9.z = 1;
                          while (true) {
                            r10.x = cmp((int)r9.z >= 4);
                            if (r10.x != 0) break;
                            r10.x = cmp((int)r9.z >= (int)r10.z);
                            if (r10.x != 0) {
                              r10.x = (uint)r9.z << 2;
                              r11.y = (int)r10.x + 4;
                            // Known bad code for instruction (needs manual fix):
                                                        ld_structured r11.y, vThreadIDInGroupFlattened.x, r11.y, g1.xxxx
                            r11.y = computeSpritesSampler[]..swiz;
                              floatZSampler[vThreadIDInGroupFlattened.x].r10.x = g1.x;
                            }
                            r9.z = (int)r9.z + 1;
                          }
                        }
                      }
                    }
                    if (r5.w != 0) {
                      r18.xyz = lmapTex.SampleLevel(computeSpritesPointSampler_s, r22.xyz, 0).xyz;
                      r30.x = 1;
                    } else {
                      r10.xz = (uint2)r24.xw >> int2(16,16);
                      r21.y = f16tof32(r24.w);
                      r21.xz = f16tof32(r10.xz);
                      r10.xz = (uint2)r23.yz >> int2(16,16);
                      r22.xy = f16tof32(r23.yz);
                      r22.zw = f16tof32(r10.xz);
                      r22.xyz = r22.xzy * r30.xxx;
                      r24.x = r23.w;
                      r23.xyz = r24.xyz * r30.xxx;
                      r24.xyz = r30.yzw * r28.xyz + -r22.xyz;
                      r22.xyz = r22.www * r24.xyz + r22.xyz;
                      r18.xyz = r22.xyz * r21.xyz + r23.xyz;
                    }
                    r18.xyz = relHDRExposure.yyy * r18.xyz;
                    r9.z = 1 + -r30.x;
                    r17.xy = r19.xy;
                    r18.xyz = r17.xyz * r9.zzz + r18.xyz;
                    r15.zw = r18.xy;
                    r16.x = r18.z;
                  }
                } else {
                  r15.zw = r19.xy;
                  r16.x = r17.z;
                }
              } else {
                r15.zw = r19.xy;
                r16.x = r17.z;
              }
            }
            r12.xyzw = r15.xyzw;
            r1.xz = r16.xy;
            r0.w = r13.w;
            r4.w = r17.w;
            r13.x = r16.z;
          }
          r6.xyzw = r12.zwxy;
          r4.xy = r1.xz;
          r1.w = r0.w;
          r14.w = r4.w;
        }
      } else {
        r4.y = 0;
        r14.w = 0;
      }
      r0.x = saturate(0.800000012 + -r1.w);
      r0.x = -r0.x * 1.25 + 1;
      r0.x = r0.x * r5.z;
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
            ld_structured r2.xyzw, vThreadIDInGroupFlattened.x, l(0), g1.xyzw
      r2.x = computeSpritesSampler[]..swiz;
      r2.y = computeSpritesSampler[]..swiz;
      r2.z = computeSpritesSampler[]..swiz;
      r2.w = computeSpritesSampler[]..swiz;
        r1.xyzw = float4(1,1,1,1) + -r1.xyzw;
        r3.xyzw = cmp(r1.xyzw >= float4(0.984375,0.984375,0.984375,0.984375));
        r0.xz = float2(1.01587307,1.01587307) * r1.xy;
        r1.xy = r1.xy * float2(64,64) + float2(-63,-63);
        r0.xz = r3.xy ? r1.xy : r0.xz;
        r0.xz = max(float2(9.99999994e-09,9.99999994e-09), r0.xz);
        r5.xy = rcp(r0.xz);
        r0.xz = float2(1.01587307,1.01587307) * r1.zw;
        r1.xy = r1.zw * float2(64,64) + float2(-63,-63);
        r0.xz = r3.zw ? r1.xy : r0.xz;
        r0.xz = max(float2(9.99999994e-09,9.99999994e-09), r0.xz);
        r5.zw = rcp(r0.xz);
        r1.xyzw = float4(0.000500000024,0.000500000024,0.000500000024,0.000500000024) * r5.xyzw;
        r1.xyzw = min(float4(1,1,1,1), r1.xyzw);
      // No code for instruction (needs manual fix):
            store_uav_typed u2.xyzw, vThreadID.xyyy, r1.xyzw
      // No code for instruction (needs manual fix):
            store_uav_typed u3.xyzw, vThreadID.xyyy, r2.xyzw
      }
      r0.x = (int)computeSpriteControl.y & 6;
      r0.x = cmp((int)r0.x == 0);
      r14.xy = r6.xy;
      r14.z = r4.x;
      r0.zw = r6.zw;
      r1.x = r4.y;
      while (true) {
        r1.y = cmp((uint)r1.x < (uint)r0.y);
        r1.y = r0.x ? r1.y : 0;
        if (r1.y == 0) break;
        r7.z = (int)r0.z & 15;
        r1.yz = oit_Nodes.Load(r7.xyzw).xy;
        r2.xyz = (uint3)r1.yyy >> int3(1,8,16);
        r1.w = (int)r2.x & 0x7f800000;
        bitmask.y = ((~(-1 << 8)) << 15) & 0xffffffff;  r1.y = (((uint)r1.y << 15) & bitmask.y) | ((uint)0 & ~bitmask.y);
        bitmask.y = ((~(-1 << 23)) << 0) & 0xffffffff;  r1.y = (((uint)r1.y << 0) & bitmask.y) | ((uint)r2.x & ~bitmask.y);
        r3.x = r1.y + -r1.w;
        bitmask.y = ((~(-1 << 8)) << 15) & 0xffffffff;  r2.y = (((uint)r2.y << 15) & bitmask.y) | ((uint)0 & ~bitmask.y);
        bitmask.z = ((~(-1 << 8)) << 15) & 0xffffffff;  r2.z = (((uint)r2.z << 15) & bitmask.z) | ((uint)0 & ~bitmask.z);
        bitmask.x = ((~(-1 << 23)) << 0) & 0xffffffff;  r2.x = (((uint)r2.y << 0) & bitmask.x) | ((uint)r2.x & ~bitmask.x);
        bitmask.y = ((~(-1 << 23)) << 0) & 0xffffffff;  r2.y = (((uint)r2.z << 0) & bitmask.y) | ((uint)r2.x & ~bitmask.y);
        r3.yz = r2.xy + -r1.ww;
        r1.y = (int)r1.z & 2046;
        r1.y = (uint)r1.y;
        r1.y = -r1.y * 0.000488758553 + 1;
        r14.xyz = r14.xyz * r1.yyy + r3.xyz;
        r1.x = (int)r1.x + 1;
        r1.y = (uint)r0.z >> 4;
        bitmask.z = ((~(-1 << 4)) << 28) & 0xffffffff;  r0.z = (((uint)r0.w << 28) & bitmask.z) | ((uint)r1.y & ~bitmask.z);
        r0.w = (uint)r0.w >> 4;
      }
    // No code for instruction (needs manual fix):
        store_uav_typed u5.xyzw, vThreadID.xyyy, r14.xyzw
    }
  }
  return;
}