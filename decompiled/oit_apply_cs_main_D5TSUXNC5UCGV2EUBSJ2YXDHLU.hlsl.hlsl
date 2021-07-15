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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29;
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
    bitmask.z = ((~(-1 << 11)) << 4) & 0xffffffff;  r1.z = (((uint)r1.y << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
    bitmask.z = ((~(-1 << 4)) << 0) & 0xffffffff;  r1.z = (((uint)r4.w << 0) & bitmask.z) | ((uint)r1.z & ~bitmask.z);
    bitmask.x = ((~(-1 << 11)) << 8) & 0xffffffff;  r6.x = (((uint)r4.x << 8) & bitmask.x) | ((uint)0 & ~bitmask.x);
    r1.z = (int)r1.z + (int)r6.x;
    bitmask.x = ((~(-1 << 11)) << 12) & 0xffffffff;  r6.x = (((uint)r2.z << 12) & bitmask.x) | ((uint)0 & ~bitmask.x);
    r1.z = (int)r1.z + (int)r6.x;
    bitmask.x = ((~(-1 << 11)) << 16) & 0xffffffff;  r6.x = (((uint)r5.y << 16) & bitmask.x) | ((uint)0 & ~bitmask.x);
    r1.z = (int)r1.z + (int)r6.x;
    bitmask.x = ((~(-1 << 11)) << 20) & 0xffffffff;  r6.x = (((uint)r2.w << 20) & bitmask.x) | ((uint)0 & ~bitmask.x);
    r1.z = (int)r1.z + (int)r6.x;
    bitmask.z = ((~(-1 << 8)) << 24) & 0xffffffff;  r1.z = (((uint)r5.w << 24) & bitmask.z) | ((uint)r1.z & ~bitmask.z);
    bitmask.z = ((~(-1 << 4)) << 28) & 0xffffffff;  r6.z = (((uint)r2.x << 28) & bitmask.z) | ((uint)r1.z & ~bitmask.z);
    bitmask.z = ((~(-1 << 11)) << 4) & 0xffffffff;  r1.z = (((uint)r2.y << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
    bitmask.z = ((~(-1 << 4)) << 0) & 0xffffffff;  r1.z = (((uint)r3.z << 0) & bitmask.z) | ((uint)r1.z & ~bitmask.z);
    bitmask.x = ((~(-1 << 11)) << 8) & 0xffffffff;  r7.x = (((uint)r4.z << 8) & bitmask.x) | ((uint)0 & ~bitmask.x);
    r1.z = (int)r1.z + (int)r7.x;
    bitmask.x = ((~(-1 << 11)) << 12) & 0xffffffff;  r7.x = (((uint)r3.w << 12) & bitmask.x) | ((uint)0 & ~bitmask.x);
    r1.z = (int)r1.z + (int)r7.x;
    bitmask.x = ((~(-1 << 11)) << 16) & 0xffffffff;  r7.x = (((uint)r4.y << 16) & bitmask.x) | ((uint)0 & ~bitmask.x);
    r1.z = (int)r1.z + (int)r7.x;
    bitmask.x = ((~(-1 << 11)) << 20) & 0xffffffff;  r7.x = (((uint)r1.x << 20) & bitmask.x) | ((uint)0 & ~bitmask.x);
    r1.z = (int)r1.z + (int)r7.x;
    bitmask.z = ((~(-1 << 8)) << 24) & 0xffffffff;  r1.z = (((uint)r5.x << 24) & bitmask.z) | ((uint)r1.z & ~bitmask.z);
    bitmask.w = ((~(-1 << 4)) << 28) & 0xffffffff;  r6.w = (((uint)r0.w << 28) & bitmask.w) | ((uint)r1.z & ~bitmask.w);
    r1.z = cmp(oitMaxEntries < (uint)r0.x);
    if (r1.z != 0) {
    // No code for instruction (needs manual fix):
        store_uav_typed u5.xyzw, vThreadID.xyyy, l(1.000000,0.500000,0.500000,1.000000)
    }
    if (r1.z == 0) {
      r1.z = (int)r0.y + -1;
      if (r1.z != 0) {
        r4.w = (int)r4.w & -2048;
        r7.x = (int)r1.y & -2048;
        r4.w = cmp((int)r4.w == (int)r7.x);
        if (r4.w != 0) {
        // No code for instruction (needs manual fix):
                store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.500000,0.500000,1.000000,1.000000)
        }
        r7.x = ~(int)r4.w;
        if (r4.w == 0) {
          r8.xy = vThreadID.xy;
          r8.zw = float2(0,0);
          r7.y = oit_Nodes.Load(r8.xyzw).x;
          r8.xyz = (uint3)r7.yyy >> int3(1,8,16);
          r7.z = (int)r8.x & 0x7f800000;
          bitmask.y = ((~(-1 << 8)) << 15) & 0xffffffff;  r7.y = (((uint)r7.y << 15) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.y = ((~(-1 << 23)) << 0) & 0xffffffff;  r7.y = (((uint)r7.y << 0) & bitmask.y) | ((uint)r8.x & ~bitmask.y);
          r9.x = r7.y + -r7.z;
          bitmask.y = ((~(-1 << 8)) << 15) & 0xffffffff;  r7.y = (((uint)r8.y << 15) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.w = ((~(-1 << 8)) << 15) & 0xffffffff;  r7.w = (((uint)r8.z << 15) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.y = ((~(-1 << 23)) << 0) & 0xffffffff;  r7.y = (((uint)r7.y << 0) & bitmask.y) | ((uint)r8.x & ~bitmask.y);
          bitmask.w = ((~(-1 << 23)) << 0) & 0xffffffff;  r7.w = (((uint)r7.w << 0) & bitmask.w) | ((uint)r8.x & ~bitmask.w);
          r9.yz = r7.yw + -r7.zz;
          r7.yzw = (int3)r9.xyz & int3(2139095040,2139095040,2139095040);
          r8.xyz = cmp((int3)r7.yzw != int3(2139095040,2139095040,2139095040));
          r8.w = -1;
          r7.yz = r8.zw ? r8.xy : 0;
          r7.y = (int)r7.z & (int)r7.y;
          r8.y = ~(int)r7.y;
          if (r7.y == 0) {
          // No code for instruction (needs manual fix):
                    store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.500000,1.000000,0.500000,1.000000)
          }
          r8.x = r8.y;
        } else {
          r8.xy = float2(-1,-1);
        }
        r7.xy = (int2)r7.xx & (int2)r8.yx;
        r7.xy = (int2)r4.ww | (int2)r7.yx;
      } else {
        r7.xy = float2(0,0);
      }
      r7.yz = ~(int2)r7.yx;
      r4.w = (int)r7.y & (int)r7.z;
      if (r4.w != 0) {
        r7.y = cmp(1 < (uint)r1.z);
        if (r7.y != 0) {
          r1.y = (int)r1.y & -2048;
          r7.y = (int)r4.x & -2048;
          r1.y = cmp((int)r1.y == (int)r7.y);
          if (r1.y != 0) {
          // No code for instruction (needs manual fix):
                    store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.500000,0.500000,1.000000,1.000000)
          }
          r7.y = ~(int)r1.y;
          if (r1.y == 0) {
            r8.xy = vThreadID.xy;
            r8.zw = float2(1.40129846e-45,0);
            r7.z = oit_Nodes.Load(r8.xyzw).x;
            r8.xyz = (uint3)r7.zzz >> int3(1,8,16);
            r7.w = (int)r8.x & 0x7f800000;
            bitmask.z = ((~(-1 << 8)) << 15) & 0xffffffff;  r7.z = (((uint)r7.z << 15) & bitmask.z) | ((uint)0 & ~bitmask.z);
            bitmask.z = ((~(-1 << 23)) << 0) & 0xffffffff;  r7.z = (((uint)r7.z << 0) & bitmask.z) | ((uint)r8.x & ~bitmask.z);
            r9.x = r7.z + -r7.w;
            bitmask.y = ((~(-1 << 8)) << 15) & 0xffffffff;  r8.y = (((uint)r8.y << 15) & bitmask.y) | ((uint)0 & ~bitmask.y);
            bitmask.z = ((~(-1 << 8)) << 15) & 0xffffffff;  r8.z = (((uint)r8.z << 15) & bitmask.z) | ((uint)0 & ~bitmask.z);
            bitmask.x = ((~(-1 << 23)) << 0) & 0xffffffff;  r8.x = (((uint)r8.y << 0) & bitmask.x) | ((uint)r8.x & ~bitmask.x);
            bitmask.y = ((~(-1 << 23)) << 0) & 0xffffffff;  r8.y = (((uint)r8.z << 0) & bitmask.y) | ((uint)r8.x & ~bitmask.y);
            r9.yz = r8.xy + -r7.ww;
            r8.xyz = (int3)r9.xyz & int3(2139095040,2139095040,2139095040);
            r8.xyz = cmp((int3)r8.xyz != int3(2139095040,2139095040,2139095040));
            r8.w = -1;
            r7.zw = r8.zw ? r8.xy : 0;
            r7.z = (int)r7.w & (int)r7.z;
            r8.y = ~(int)r7.z;
            if (r7.z == 0) {
            // No code for instruction (needs manual fix):
                        store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.500000,1.000000,0.500000,1.000000)
            }
            r8.x = r8.y;
          } else {
            r8.xy = float2(-1,-1);
          }
          r7.yz = r7.yy ? r8.yx : 0;
          r7.yz = (int2)r1.yy | (int2)r7.zy;
        } else {
          r7.yz = float2(0,0);
        }
        r7.zw = ~(int2)r7.zy;
        r1.y = (int)r7.z & (int)r7.w;
        if (r1.y != 0) {
          r7.z = cmp(2 < (uint)r1.z);
          if (r7.z != 0) {
            r4.x = (int)r4.x & -2048;
            r7.z = (int)r2.z & -2048;
            r4.x = cmp((int)r4.x == (int)r7.z);
            if (r4.x != 0) {
            // No code for instruction (needs manual fix):
                        store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.500000,0.500000,1.000000,1.000000)
            }
            r7.z = ~(int)r4.x;
            if (r4.x == 0) {
              r8.xy = vThreadID.xy;
              r8.zw = float2(2.80259693e-45,0);
              r7.w = oit_Nodes.Load(r8.xyzw).x;
              r8.xyz = (uint3)r7.www >> int3(1,8,16);
              r8.w = (int)r8.x & 0x7f800000;
              bitmask.w = ((~(-1 << 8)) << 15) & 0xffffffff;  r7.w = (((uint)r7.w << 15) & bitmask.w) | ((uint)0 & ~bitmask.w);
              bitmask.w = ((~(-1 << 23)) << 0) & 0xffffffff;  r7.w = (((uint)r7.w << 0) & bitmask.w) | ((uint)r8.x & ~bitmask.w);
              r9.x = r7.w + -r8.w;
              bitmask.y = ((~(-1 << 8)) << 15) & 0xffffffff;  r8.y = (((uint)r8.y << 15) & bitmask.y) | ((uint)0 & ~bitmask.y);
              bitmask.z = ((~(-1 << 8)) << 15) & 0xffffffff;  r8.z = (((uint)r8.z << 15) & bitmask.z) | ((uint)0 & ~bitmask.z);
              bitmask.x = ((~(-1 << 23)) << 0) & 0xffffffff;  r8.x = (((uint)r8.y << 0) & bitmask.x) | ((uint)r8.x & ~bitmask.x);
              bitmask.y = ((~(-1 << 23)) << 0) & 0xffffffff;  r8.y = (((uint)r8.z << 0) & bitmask.y) | ((uint)r8.x & ~bitmask.y);
              r9.yz = r8.xy + -r8.ww;
              r8.xyz = (int3)r9.xyz & int3(2139095040,2139095040,2139095040);
              r8.xyz = cmp((int3)r8.xyz != int3(2139095040,2139095040,2139095040));
              r8.w = -1;
              r8.xy = r8.zw ? r8.xy : 0;
              r7.w = r8.y ? r8.x : 0;
              r8.y = ~(int)r7.w;
              if (r7.w == 0) {
              // No code for instruction (needs manual fix):
                            store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.500000,1.000000,0.500000,1.000000)
              }
              r8.x = r8.y;
            } else {
              r8.xy = float2(-1,-1);
            }
            r7.zw = r7.zz ? r8.yx : 0;
            r7.zw = (int2)r4.xx | (int2)r7.wz;
          } else {
            r7.zw = float2(0,0);
          }
          r8.xy = ~(int2)r7.wz;
          r4.x = (int)r8.x & (int)r8.y;
          if (r4.x != 0) {
            r7.w = cmp(3 < (uint)r1.z);
            if (r7.w != 0) {
              r2.z = (int)r2.z & -2048;
              r7.w = (int)r5.y & -2048;
              r2.z = cmp((int)r2.z == (int)r7.w);
              if (r2.z != 0) {
              // No code for instruction (needs manual fix):
                            store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.500000,0.500000,1.000000,1.000000)
              }
              r7.w = ~(int)r2.z;
              if (r2.z == 0) {
                r8.xy = vThreadID.xy;
                r8.zw = float2(4.20389539e-45,0);
                r8.x = oit_Nodes.Load(r8.xyzw).x;
                r8.yzw = (uint3)r8.xxx >> int3(1,8,16);
                r9.x = (int)r8.y & 0x7f800000;
                bitmask.x = ((~(-1 << 8)) << 15) & 0xffffffff;  r8.x = (((uint)r8.x << 15) & bitmask.x) | ((uint)0 & ~bitmask.x);
                bitmask.x = ((~(-1 << 23)) << 0) & 0xffffffff;  r8.x = (((uint)r8.x << 0) & bitmask.x) | ((uint)r8.y & ~bitmask.x);
                r10.x = r8.x + -r9.x;
                bitmask.x = ((~(-1 << 8)) << 15) & 0xffffffff;  r8.x = (((uint)r8.z << 15) & bitmask.x) | ((uint)0 & ~bitmask.x);
                bitmask.z = ((~(-1 << 8)) << 15) & 0xffffffff;  r8.z = (((uint)r8.w << 15) & bitmask.z) | ((uint)0 & ~bitmask.z);
                bitmask.x = ((~(-1 << 23)) << 0) & 0xffffffff;  r8.x = (((uint)r8.x << 0) & bitmask.x) | ((uint)r8.y & ~bitmask.x);
                bitmask.y = ((~(-1 << 23)) << 0) & 0xffffffff;  r8.y = (((uint)r8.z << 0) & bitmask.y) | ((uint)r8.y & ~bitmask.y);
                r10.yz = r8.xy + -r9.xx;
                r8.xyz = (int3)r10.xyz & int3(2139095040,2139095040,2139095040);
                r8.xyz = cmp((int3)r8.xyz != int3(2139095040,2139095040,2139095040));
                r8.w = -1;
                r8.xy = r8.zw ? r8.xy : 0;
                r8.x = r8.y ? r8.x : 0;
                r9.y = ~(int)r8.x;
                if (r8.x == 0) {
                // No code for instruction (needs manual fix):
                                store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.500000,1.000000,0.500000,1.000000)
                }
                r9.x = r9.y;
              } else {
                r9.xy = float2(-1,-1);
              }
              r8.xy = r7.ww ? r9.yx : 0;
              r8.xy = (int2)r2.zz | (int2)r8.yx;
            } else {
              r8.xy = float2(0,0);
            }
            r8.yz = ~(int2)r8.yx;
            r2.z = r8.z ? r8.y : 0;
            if (r2.z != 0) {
              r7.w = cmp(4 < (uint)r1.z);
              if (r7.w != 0) {
                r5.y = (int)r5.y & -2048;
                r7.w = (int)r2.w & -2048;
                r5.y = cmp((int)r5.y == (int)r7.w);
                if (r5.y != 0) {
                // No code for instruction (needs manual fix):
                                store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.500000,0.500000,1.000000,1.000000)
                }
                r7.w = ~(int)r5.y;
                if (r5.y == 0) {
                  r9.xy = vThreadID.xy;
                  r9.zw = float2(5.60519386e-45,0);
                  r8.y = oit_Nodes.Load(r9.xyzw).x;
                  r9.xyz = (uint3)r8.yyy >> int3(1,8,16);
                  r8.z = (int)r9.x & 0x7f800000;
                  bitmask.y = ((~(-1 << 8)) << 15) & 0xffffffff;  r8.y = (((uint)r8.y << 15) & bitmask.y) | ((uint)0 & ~bitmask.y);
                  bitmask.y = ((~(-1 << 23)) << 0) & 0xffffffff;  r8.y = (((uint)r8.y << 0) & bitmask.y) | ((uint)r9.x & ~bitmask.y);
                  r10.x = r8.y + -r8.z;
                  bitmask.y = ((~(-1 << 8)) << 15) & 0xffffffff;  r8.y = (((uint)r9.y << 15) & bitmask.y) | ((uint)0 & ~bitmask.y);
                  bitmask.w = ((~(-1 << 8)) << 15) & 0xffffffff;  r8.w = (((uint)r9.z << 15) & bitmask.w) | ((uint)0 & ~bitmask.w);
                  bitmask.y = ((~(-1 << 23)) << 0) & 0xffffffff;  r8.y = (((uint)r8.y << 0) & bitmask.y) | ((uint)r9.x & ~bitmask.y);
                  bitmask.w = ((~(-1 << 23)) << 0) & 0xffffffff;  r8.w = (((uint)r8.w << 0) & bitmask.w) | ((uint)r9.x & ~bitmask.w);
                  r10.yz = r8.yw + -r8.zz;
                  r8.yzw = (int3)r10.xyz & int3(2139095040,2139095040,2139095040);
                  r9.xyz = cmp((int3)r8.yzw != int3(2139095040,2139095040,2139095040));
                  r9.w = -1;
                  r8.yz = r9.zw ? r9.xy : 0;
                  r8.y = r8.z ? r8.y : 0;
                  r9.y = ~(int)r8.y;
                  if (r8.y == 0) {
                  // No code for instruction (needs manual fix):
                                    store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.500000,1.000000,0.500000,1.000000)
                  }
                  r9.x = r9.y;
                } else {
                  r9.xy = float2(-1,-1);
                }
                r8.yz = r7.ww ? r9.yx : 0;
                r8.yz = (int2)r5.yy | (int2)r8.zy;
              } else {
                r8.yz = float2(0,0);
              }
              r8.zw = ~(int2)r8.zy;
              r5.y = (int)r8.z & (int)r8.w;
              if (r5.y != 0) {
                r7.w = cmp(5 < (uint)r1.z);
                if (r7.w != 0) {
                  r2.w = (int)r2.w & -2048;
                  r7.w = (int)r5.w & -2048;
                  r2.w = cmp((int)r2.w == (int)r7.w);
                  if (r2.w != 0) {
                  // No code for instruction (needs manual fix):
                                    store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.500000,0.500000,1.000000,1.000000)
                  }
                  r7.w = ~(int)r2.w;
                  if (r2.w == 0) {
                    r9.xy = vThreadID.xy;
                    r9.zw = float2(7.00649232e-45,0);
                    r8.z = oit_Nodes.Load(r9.xyzw).x;
                    r9.xyz = (uint3)r8.zzz >> int3(1,8,16);
                    r8.w = (int)r9.x & 0x7f800000;
                    bitmask.z = ((~(-1 << 8)) << 15) & 0xffffffff;  r8.z = (((uint)r8.z << 15) & bitmask.z) | ((uint)0 & ~bitmask.z);
                    bitmask.z = ((~(-1 << 23)) << 0) & 0xffffffff;  r8.z = (((uint)r8.z << 0) & bitmask.z) | ((uint)r9.x & ~bitmask.z);
                    r10.x = r8.z + -r8.w;
                    bitmask.y = ((~(-1 << 8)) << 15) & 0xffffffff;  r9.y = (((uint)r9.y << 15) & bitmask.y) | ((uint)0 & ~bitmask.y);
                    bitmask.z = ((~(-1 << 8)) << 15) & 0xffffffff;  r9.z = (((uint)r9.z << 15) & bitmask.z) | ((uint)0 & ~bitmask.z);
                    bitmask.x = ((~(-1 << 23)) << 0) & 0xffffffff;  r9.x = (((uint)r9.y << 0) & bitmask.x) | ((uint)r9.x & ~bitmask.x);
                    bitmask.y = ((~(-1 << 23)) << 0) & 0xffffffff;  r9.y = (((uint)r9.z << 0) & bitmask.y) | ((uint)r9.x & ~bitmask.y);
                    r10.yz = r9.xy + -r8.ww;
                    r9.xyz = (int3)r10.xyz & int3(2139095040,2139095040,2139095040);
                    r9.xyz = cmp((int3)r9.xyz != int3(2139095040,2139095040,2139095040));
                    r9.w = -1;
                    r8.zw = r9.zw ? r9.xy : 0;
                    r8.z = (int)r8.w & (int)r8.z;
                    r9.y = ~(int)r8.z;
                    if (r8.z == 0) {
                    // No code for instruction (needs manual fix):
                                        store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.500000,1.000000,0.500000,1.000000)
                    }
                    r9.x = r9.y;
                  } else {
                    r9.xy = float2(-1,-1);
                  }
                  r8.zw = r7.ww ? r9.yx : 0;
                  r8.zw = (int2)r2.ww | (int2)r8.wz;
                } else {
                  r8.zw = float2(0,0);
                }
                r9.xy = ~(int2)r8.wz;
                r2.w = (int)r9.x & (int)r9.y;
                if (r2.w != 0) {
                  r7.w = cmp(6 < (uint)r1.z);
                  if (r7.w != 0) {
                    r5.w = (int)r5.w & -2048;
                    r7.w = (int)r2.x & -2048;
                    r5.w = cmp((int)r5.w == (int)r7.w);
                    if (r5.w != 0) {
                    // No code for instruction (needs manual fix):
                                        store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.500000,0.500000,1.000000,1.000000)
                    }
                    r7.w = ~(int)r5.w;
                    if (r5.w == 0) {
                      r9.xy = vThreadID.xy;
                      r9.zw = float2(8.40779079e-45,0);
                      r8.w = oit_Nodes.Load(r9.xyzw).x;
                      r9.xyz = (uint3)r8.www >> int3(1,8,16);
                      r9.w = (int)r9.x & 0x7f800000;
                      bitmask.w = ((~(-1 << 8)) << 15) & 0xffffffff;  r8.w = (((uint)r8.w << 15) & bitmask.w) | ((uint)0 & ~bitmask.w);
                      bitmask.w = ((~(-1 << 23)) << 0) & 0xffffffff;  r8.w = (((uint)r8.w << 0) & bitmask.w) | ((uint)r9.x & ~bitmask.w);
                      r10.x = r8.w + -r9.w;
                      bitmask.y = ((~(-1 << 8)) << 15) & 0xffffffff;  r9.y = (((uint)r9.y << 15) & bitmask.y) | ((uint)0 & ~bitmask.y);
                      bitmask.z = ((~(-1 << 8)) << 15) & 0xffffffff;  r9.z = (((uint)r9.z << 15) & bitmask.z) | ((uint)0 & ~bitmask.z);
                      bitmask.x = ((~(-1 << 23)) << 0) & 0xffffffff;  r9.x = (((uint)r9.y << 0) & bitmask.x) | ((uint)r9.x & ~bitmask.x);
                      bitmask.y = ((~(-1 << 23)) << 0) & 0xffffffff;  r9.y = (((uint)r9.z << 0) & bitmask.y) | ((uint)r9.x & ~bitmask.y);
                      r10.yz = r9.xy + -r9.ww;
                      r9.xyz = (int3)r10.xyz & int3(2139095040,2139095040,2139095040);
                      r9.xyz = cmp((int3)r9.xyz != int3(2139095040,2139095040,2139095040));
                      r9.w = -1;
                      r9.xy = r9.zw ? r9.xy : 0;
                      r8.w = r9.y ? r9.x : 0;
                      r9.y = ~(int)r8.w;
                      if (r8.w == 0) {
                      // No code for instruction (needs manual fix):
                                            store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.500000,1.000000,0.500000,1.000000)
                      }
                      r9.x = r9.y;
                    } else {
                      r9.xy = float2(-1,-1);
                    }
                    r9.xy = r7.ww ? r9.yx : 0;
                    r9.xy = (int2)r5.ww | (int2)r9.yx;
                  } else {
                    r9.xy = float2(0,0);
                  }
                  r9.yz = ~(int2)r9.yx;
                  r5.w = r9.z ? r9.y : 0;
                  if (r5.w != 0) {
                    r7.w = cmp(7 < (uint)r1.z);
                    if (r7.w != 0) {
                      r2.x = (int)r2.x & -2048;
                      r7.w = (int)r3.z & -2048;
                      r2.x = cmp((int)r2.x == (int)r7.w);
                      if (r2.x != 0) {
                      // No code for instruction (needs manual fix):
                                            store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.500000,0.500000,1.000000,1.000000)
                      }
                      r7.w = ~(int)r2.x;
                      if (r2.x == 0) {
                        r10.xy = vThreadID.xy;
                        r10.zw = float2(9.80908925e-45,0);
                        r8.w = oit_Nodes.Load(r10.xyzw).x;
                        r9.yzw = (uint3)r8.www >> int3(1,8,16);
                        r10.x = (int)r9.y & 0x7f800000;
                        bitmask.w = ((~(-1 << 8)) << 15) & 0xffffffff;  r8.w = (((uint)r8.w << 15) & bitmask.w) | ((uint)0 & ~bitmask.w);
                        bitmask.w = ((~(-1 << 23)) << 0) & 0xffffffff;  r8.w = (((uint)r8.w << 0) & bitmask.w) | ((uint)r9.y & ~bitmask.w);
                        r11.x = r8.w + -r10.x;
                        bitmask.z = ((~(-1 << 8)) << 15) & 0xffffffff;  r9.z = (((uint)r9.z << 15) & bitmask.z) | ((uint)0 & ~bitmask.z);
                        bitmask.w = ((~(-1 << 8)) << 15) & 0xffffffff;  r9.w = (((uint)r9.w << 15) & bitmask.w) | ((uint)0 & ~bitmask.w);
                        bitmask.y = ((~(-1 << 23)) << 0) & 0xffffffff;  r9.y = (((uint)r9.z << 0) & bitmask.y) | ((uint)r9.y & ~bitmask.y);
                        bitmask.z = ((~(-1 << 23)) << 0) & 0xffffffff;  r9.z = (((uint)r9.w << 0) & bitmask.z) | ((uint)r9.y & ~bitmask.z);
                        r11.yz = r9.yz + -r10.xx;
                        r9.yzw = (int3)r11.xyz & int3(2139095040,2139095040,2139095040);
                        r10.xyz = cmp((int3)r9.yzw != int3(2139095040,2139095040,2139095040));
                        r10.w = -1;
                        r9.yz = r10.zw ? r10.xy : 0;
                        r8.w = (int)r9.z & (int)r9.y;
                        r10.y = ~(int)r8.w;
                        if (r8.w == 0) {
                        // No code for instruction (needs manual fix):
                                                store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.500000,1.000000,0.500000,1.000000)
                        }
                        r10.x = r10.y;
                      } else {
                        r10.xy = float2(-1,-1);
                      }
                      r9.yz = r7.ww ? r10.yx : 0;
                      r9.yz = (int2)r2.xx | (int2)r9.zy;
                    } else {
                      r9.yz = float2(0,0);
                    }
                    r9.zw = ~(int2)r9.zy;
                    r2.x = (int)r9.z & (int)r9.w;
                    if (r2.x != 0) {
                      r7.w = cmp(8 < (uint)r1.z);
                      if (r7.w != 0) {
                        r3.z = (int)r3.z & -2048;
                        r7.w = (int)r2.y & -2048;
                        r3.z = cmp((int)r3.z == (int)r7.w);
                        if (r3.z != 0) {
                        // No code for instruction (needs manual fix):
                                                store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.500000,0.500000,1.000000,1.000000)
                        }
                        r7.w = ~(int)r3.z;
                        if (r3.z == 0) {
                          r10.xy = vThreadID.xy;
                          r10.zw = float2(1.12103877e-44,0);
                          r8.w = oit_Nodes.Load(r10.xyzw).x;
                          r10.xyz = (uint3)r8.www >> int3(1,8,16);
                          r9.z = (int)r10.x & 0x7f800000;
                          bitmask.w = ((~(-1 << 8)) << 15) & 0xffffffff;  r8.w = (((uint)r8.w << 15) & bitmask.w) | ((uint)0 & ~bitmask.w);
                          bitmask.w = ((~(-1 << 23)) << 0) & 0xffffffff;  r8.w = (((uint)r8.w << 0) & bitmask.w) | ((uint)r10.x & ~bitmask.w);
                          r11.x = r8.w + -r9.z;
                          bitmask.y = ((~(-1 << 8)) << 15) & 0xffffffff;  r10.y = (((uint)r10.y << 15) & bitmask.y) | ((uint)0 & ~bitmask.y);
                          bitmask.z = ((~(-1 << 8)) << 15) & 0xffffffff;  r10.z = (((uint)r10.z << 15) & bitmask.z) | ((uint)0 & ~bitmask.z);
                          bitmask.x = ((~(-1 << 23)) << 0) & 0xffffffff;  r10.x = (((uint)r10.y << 0) & bitmask.x) | ((uint)r10.x & ~bitmask.x);
                          bitmask.y = ((~(-1 << 23)) << 0) & 0xffffffff;  r10.y = (((uint)r10.z << 0) & bitmask.y) | ((uint)r10.x & ~bitmask.y);
                          r11.yz = r10.xy + -r9.zz;
                          r10.xyz = (int3)r11.xyz & int3(2139095040,2139095040,2139095040);
                          r10.xyz = cmp((int3)r10.xyz != int3(2139095040,2139095040,2139095040));
                          r10.w = -1;
                          r9.zw = r10.zw ? r10.xy : 0;
                          r8.w = (int)r9.w & (int)r9.z;
                          r10.y = ~(int)r8.w;
                          if (r8.w == 0) {
                          // No code for instruction (needs manual fix):
                                                    store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.500000,1.000000,0.500000,1.000000)
                          }
                          r10.x = r10.y;
                        } else {
                          r10.xy = float2(-1,-1);
                        }
                        r9.zw = r7.ww ? r10.yx : 0;
                        r9.zw = (int2)r3.zz | (int2)r9.wz;
                      } else {
                        r9.zw = float2(0,0);
                      }
                      r10.xy = ~(int2)r9.wz;
                      r3.z = (int)r10.x & (int)r10.y;
                      if (r3.z != 0) {
                        r7.w = cmp(9 < (uint)r1.z);
                        if (r7.w != 0) {
                          r2.y = (int)r2.y & -2048;
                          r7.w = (int)r4.z & -2048;
                          r2.y = cmp((int)r2.y == (int)r7.w);
                          if (r2.y != 0) {
                          // No code for instruction (needs manual fix):
                                                    store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.500000,0.500000,1.000000,1.000000)
                          }
                          r7.w = ~(int)r2.y;
                          if (r2.y == 0) {
                            r10.xy = vThreadID.xy;
                            r10.zw = float2(1.26116862e-44,0);
                            r8.w = oit_Nodes.Load(r10.xyzw).x;
                            r10.xyz = (uint3)r8.www >> int3(1,8,16);
                            r9.w = (int)r10.x & 0x7f800000;
                            bitmask.w = ((~(-1 << 8)) << 15) & 0xffffffff;  r8.w = (((uint)r8.w << 15) & bitmask.w) | ((uint)0 & ~bitmask.w);
                            bitmask.w = ((~(-1 << 23)) << 0) & 0xffffffff;  r8.w = (((uint)r8.w << 0) & bitmask.w) | ((uint)r10.x & ~bitmask.w);
                            r11.x = r8.w + -r9.w;
                            bitmask.y = ((~(-1 << 8)) << 15) & 0xffffffff;  r10.y = (((uint)r10.y << 15) & bitmask.y) | ((uint)0 & ~bitmask.y);
                            bitmask.z = ((~(-1 << 8)) << 15) & 0xffffffff;  r10.z = (((uint)r10.z << 15) & bitmask.z) | ((uint)0 & ~bitmask.z);
                            bitmask.x = ((~(-1 << 23)) << 0) & 0xffffffff;  r10.x = (((uint)r10.y << 0) & bitmask.x) | ((uint)r10.x & ~bitmask.x);
                            bitmask.y = ((~(-1 << 23)) << 0) & 0xffffffff;  r10.y = (((uint)r10.z << 0) & bitmask.y) | ((uint)r10.x & ~bitmask.y);
                            r11.yz = r10.xy + -r9.ww;
                            r10.xyz = (int3)r11.xyz & int3(2139095040,2139095040,2139095040);
                            r10.xyz = cmp((int3)r10.xyz != int3(2139095040,2139095040,2139095040));
                            r10.w = -1;
                            r10.xy = r10.zw ? r10.xy : 0;
                            r8.w = r10.y ? r10.x : 0;
                            r10.y = ~(int)r8.w;
                            if (r8.w == 0) {
                            // No code for instruction (needs manual fix):
                                                        store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.500000,1.000000,0.500000,1.000000)
                            }
                            r10.x = r10.y;
                          } else {
                            r10.xy = float2(-1,-1);
                          }
                          r10.xy = r7.ww ? r10.yx : 0;
                          r10.xy = (int2)r2.yy | (int2)r10.yx;
                        } else {
                          r10.xy = float2(0,0);
                        }
                        r10.yz = ~(int2)r10.yx;
                        r2.y = r10.z ? r10.y : 0;
                        if (r2.y != 0) {
                          r7.w = cmp(10 < (uint)r1.z);
                          if (r7.w != 0) {
                            r4.z = (int)r4.z & -2048;
                            r7.w = (int)r3.w & -2048;
                            r4.z = cmp((int)r4.z == (int)r7.w);
                            if (r4.z != 0) {
                            // No code for instruction (needs manual fix):
                                                        store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.500000,0.500000,1.000000,1.000000)
                            }
                            r7.w = ~(int)r4.z;
                            if (r4.z == 0) {
                              r11.xy = vThreadID.xy;
                              r11.zw = float2(1.40129846e-44,0);
                              r8.w = oit_Nodes.Load(r11.xyzw).x;
                              r10.yzw = (uint3)r8.www >> int3(1,8,16);
                              r9.w = (int)r10.y & 0x7f800000;
                              bitmask.w = ((~(-1 << 8)) << 15) & 0xffffffff;  r8.w = (((uint)r8.w << 15) & bitmask.w) | ((uint)0 & ~bitmask.w);
                              bitmask.w = ((~(-1 << 23)) << 0) & 0xffffffff;  r8.w = (((uint)r8.w << 0) & bitmask.w) | ((uint)r10.y & ~bitmask.w);
                              r11.x = r8.w + -r9.w;
                              bitmask.z = ((~(-1 << 8)) << 15) & 0xffffffff;  r10.z = (((uint)r10.z << 15) & bitmask.z) | ((uint)0 & ~bitmask.z);
                              bitmask.w = ((~(-1 << 8)) << 15) & 0xffffffff;  r10.w = (((uint)r10.w << 15) & bitmask.w) | ((uint)0 & ~bitmask.w);
                              bitmask.y = ((~(-1 << 23)) << 0) & 0xffffffff;  r10.y = (((uint)r10.z << 0) & bitmask.y) | ((uint)r10.y & ~bitmask.y);
                              bitmask.z = ((~(-1 << 23)) << 0) & 0xffffffff;  r10.z = (((uint)r10.w << 0) & bitmask.z) | ((uint)r10.y & ~bitmask.z);
                              r11.yz = r10.yz + -r9.ww;
                              r10.yzw = (int3)r11.xyz & int3(2139095040,2139095040,2139095040);
                              r11.xyz = cmp((int3)r10.yzw != int3(2139095040,2139095040,2139095040));
                              r11.w = -1;
                              r10.yz = r11.zw ? r11.xy : 0;
                              r8.w = (int)r10.z & (int)r10.y;
                              r11.y = ~(int)r8.w;
                              if (r8.w == 0) {
                              // No code for instruction (needs manual fix):
                                                            store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.500000,1.000000,0.500000,1.000000)
                              }
                              r11.x = r11.y;
                            } else {
                              r11.xy = float2(-1,-1);
                            }
                            r10.yz = r7.ww ? r11.yx : 0;
                            r10.yz = (int2)r4.zz | (int2)r10.zy;
                          } else {
                            r10.yz = float2(0,0);
                          }
                          r10.zw = ~(int2)r10.zy;
                          r4.z = (int)r10.z & (int)r10.w;
                          if (r4.z != 0) {
                            r7.w = cmp(11 < (uint)r1.z);
                            if (r7.w != 0) {
                              r3.w = (int)r3.w & -2048;
                              r7.w = (int)r4.y & -2048;
                              r3.w = cmp((int)r3.w == (int)r7.w);
                              if (r3.w != 0) {
                              // No code for instruction (needs manual fix):
                                                            store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.500000,0.500000,1.000000,1.000000)
                              }
                              r7.w = ~(int)r3.w;
                              if (r3.w == 0) {
                                r11.xy = vThreadID.xy;
                                r11.zw = float2(1.54142831e-44,0);
                                r8.w = oit_Nodes.Load(r11.xyzw).x;
                                r11.xyz = (uint3)r8.www >> int3(1,8,16);
                                r9.w = (int)r11.x & 0x7f800000;
                                bitmask.w = ((~(-1 << 8)) << 15) & 0xffffffff;  r8.w = (((uint)r8.w << 15) & bitmask.w) | ((uint)0 & ~bitmask.w);
                                bitmask.w = ((~(-1 << 23)) << 0) & 0xffffffff;  r8.w = (((uint)r8.w << 0) & bitmask.w) | ((uint)r11.x & ~bitmask.w);
                                r12.x = r8.w + -r9.w;
                                bitmask.z = ((~(-1 << 8)) << 15) & 0xffffffff;  r10.z = (((uint)r11.y << 15) & bitmask.z) | ((uint)0 & ~bitmask.z);
                                bitmask.w = ((~(-1 << 8)) << 15) & 0xffffffff;  r10.w = (((uint)r11.z << 15) & bitmask.w) | ((uint)0 & ~bitmask.w);
                                bitmask.z = ((~(-1 << 23)) << 0) & 0xffffffff;  r10.z = (((uint)r10.z << 0) & bitmask.z) | ((uint)r11.x & ~bitmask.z);
                                bitmask.w = ((~(-1 << 23)) << 0) & 0xffffffff;  r10.w = (((uint)r10.w << 0) & bitmask.w) | ((uint)r11.x & ~bitmask.w);
                                r12.yz = r10.zw + -r9.ww;
                                r11.xyz = (int3)r12.xyz & int3(2139095040,2139095040,2139095040);
                                r11.xyz = cmp((int3)r11.xyz != int3(2139095040,2139095040,2139095040));
                                r11.w = -1;
                                r10.zw = r11.zw ? r11.xy : 0;
                                r8.w = (int)r10.w & (int)r10.z;
                                r11.y = ~(int)r8.w;
                                if (r8.w == 0) {
                                // No code for instruction (needs manual fix):
                                                                store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.500000,1.000000,0.500000,1.000000)
                                }
                                r11.x = r11.y;
                              } else {
                                r11.xy = float2(-1,-1);
                              }
                              r10.zw = r7.ww ? r11.yx : 0;
                              r10.zw = (int2)r3.ww | (int2)r10.wz;
                            } else {
                              r10.zw = float2(0,0);
                            }
                            r11.xy = ~(int2)r10.wz;
                            r3.w = (int)r11.x & (int)r11.y;
                            if (r3.w != 0) {
                              r7.w = cmp(12 < (uint)r1.z);
                              if (r7.w != 0) {
                                r4.y = (int)r4.y & -2048;
                                r7.w = (int)r1.x & -2048;
                                r4.y = cmp((int)r4.y == (int)r7.w);
                                if (r4.y != 0) {
                                // No code for instruction (needs manual fix):
                                                                store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.500000,0.500000,1.000000,1.000000)
                                }
                                r7.w = ~(int)r4.y;
                                if (r4.y == 0) {
                                  r11.xy = vThreadID.xy;
                                  r11.zw = float2(1.68155816e-44,0);
                                  r8.w = oit_Nodes.Load(r11.xyzw).x;
                                  r11.xyz = (uint3)r8.www >> int3(1,8,16);
                                  r9.w = (int)r11.x & 0x7f800000;
                                  bitmask.w = ((~(-1 << 8)) << 15) & 0xffffffff;  r8.w = (((uint)r8.w << 15) & bitmask.w) | ((uint)0 & ~bitmask.w);
                                  bitmask.w = ((~(-1 << 23)) << 0) & 0xffffffff;  r8.w = (((uint)r8.w << 0) & bitmask.w) | ((uint)r11.x & ~bitmask.w);
                                  r12.x = r8.w + -r9.w;
                                  bitmask.y = ((~(-1 << 8)) << 15) & 0xffffffff;  r11.y = (((uint)r11.y << 15) & bitmask.y) | ((uint)0 & ~bitmask.y);
                                  bitmask.z = ((~(-1 << 8)) << 15) & 0xffffffff;  r11.z = (((uint)r11.z << 15) & bitmask.z) | ((uint)0 & ~bitmask.z);
                                  bitmask.x = ((~(-1 << 23)) << 0) & 0xffffffff;  r11.x = (((uint)r11.y << 0) & bitmask.x) | ((uint)r11.x & ~bitmask.x);
                                  bitmask.y = ((~(-1 << 23)) << 0) & 0xffffffff;  r11.y = (((uint)r11.z << 0) & bitmask.y) | ((uint)r11.x & ~bitmask.y);
                                  r12.yz = r11.xy + -r9.ww;
                                  r11.xyz = (int3)r12.xyz & int3(2139095040,2139095040,2139095040);
                                  r11.xyz = cmp((int3)r11.xyz != int3(2139095040,2139095040,2139095040));
                                  r11.w = -1;
                                  r11.xy = r11.zw ? r11.xy : 0;
                                  r8.w = r11.y ? r11.x : 0;
                                  r11.y = ~(int)r8.w;
                                  if (r8.w == 0) {
                                  // No code for instruction (needs manual fix):
                                                                    store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.500000,1.000000,0.500000,1.000000)
                                  }
                                  r11.x = r11.y;
                                } else {
                                  r11.xy = float2(-1,-1);
                                }
                                r11.xy = r7.ww ? r11.yx : 0;
                                r11.xy = (int2)r4.yy | (int2)r11.yx;
                              } else {
                                r11.xy = float2(0,0);
                              }
                              r11.yz = ~(int2)r11.yx;
                              r4.y = r11.z ? r11.y : 0;
                              if (r4.y != 0) {
                                r7.w = cmp(13 < (uint)r1.z);
                                if (r7.w != 0) {
                                  r1.x = (int)r1.x & -2048;
                                  r7.w = (int)r5.x & -2048;
                                  r1.x = cmp((int)r1.x == (int)r7.w);
                                  if (r1.x != 0) {
                                  // No code for instruction (needs manual fix):
                                                                    store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.500000,0.500000,1.000000,1.000000)
                                  }
                                  r7.w = ~(int)r1.x;
                                  if (r1.x == 0) {
                                    r12.xy = vThreadID.xy;
                                    r12.zw = float2(1.821688e-44,0);
                                    r8.w = oit_Nodes.Load(r12.xyzw).x;
                                    r11.yzw = (uint3)r8.www >> int3(1,8,16);
                                    r9.w = (int)r11.y & 0x7f800000;
                                    bitmask.w = ((~(-1 << 8)) << 15) & 0xffffffff;  r8.w = (((uint)r8.w << 15) & bitmask.w) | ((uint)0 & ~bitmask.w);
                                    bitmask.w = ((~(-1 << 23)) << 0) & 0xffffffff;  r8.w = (((uint)r8.w << 0) & bitmask.w) | ((uint)r11.y & ~bitmask.w);
                                    r12.x = r8.w + -r9.w;
                                    bitmask.z = ((~(-1 << 8)) << 15) & 0xffffffff;  r11.z = (((uint)r11.z << 15) & bitmask.z) | ((uint)0 & ~bitmask.z);
                                    bitmask.w = ((~(-1 << 8)) << 15) & 0xffffffff;  r11.w = (((uint)r11.w << 15) & bitmask.w) | ((uint)0 & ~bitmask.w);
                                    bitmask.y = ((~(-1 << 23)) << 0) & 0xffffffff;  r11.y = (((uint)r11.z << 0) & bitmask.y) | ((uint)r11.y & ~bitmask.y);
                                    bitmask.z = ((~(-1 << 23)) << 0) & 0xffffffff;  r11.z = (((uint)r11.w << 0) & bitmask.z) | ((uint)r11.y & ~bitmask.z);
                                    r12.yz = r11.yz + -r9.ww;
                                    r11.yzw = (int3)r12.xyz & int3(2139095040,2139095040,2139095040);
                                    r12.xyz = cmp((int3)r11.yzw != int3(2139095040,2139095040,2139095040));
                                    r12.w = -1;
                                    r11.yz = r12.zw ? r12.xy : 0;
                                    r8.w = (int)r11.z & (int)r11.y;
                                    r12.y = ~(int)r8.w;
                                    if (r8.w == 0) {
                                    // No code for instruction (needs manual fix):
                                                                        store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.500000,1.000000,0.500000,1.000000)
                                    }
                                    r12.x = r12.y;
                                  } else {
                                    r12.xy = float2(-1,-1);
                                  }
                                  r11.yz = r7.ww ? r12.yx : 0;
                                  r11.yz = (int2)r1.xx | (int2)r11.zy;
                                } else {
                                  r11.yz = float2(0,0);
                                }
                                r11.zw = ~(int2)r11.zy;
                                r1.x = (int)r11.z & (int)r11.w;
                                if (r1.x != 0) {
                                  r1.z = cmp(14 < (uint)r1.z);
                                  if (r1.z != 0) {
                                    r1.z = (int)r5.x & -2048;
                                    r0.w = (int)r0.w & -2048;
                                    r0.w = cmp((int)r0.w == (int)r1.z);
                                    if (r0.w != 0) {
                                    // No code for instruction (needs manual fix):
                                                                        store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.500000,0.500000,1.000000,1.000000)
                                    }
                                    r1.z = ~(int)r0.w;
                                    if (r0.w == 0) {
                                      r12.xy = vThreadID.xy;
                                      r12.zw = float2(1.96181785e-44,0);
                                      r5.x = oit_Nodes.Load(r12.xyzw).x;
                                      r12.xyz = (uint3)r5.xxx >> int3(1,8,16);
                                      r7.w = (int)r12.x & 0x7f800000;
                                      bitmask.x = ((~(-1 << 8)) << 15) & 0xffffffff;  r5.x = (((uint)r5.x << 15) & bitmask.x) | ((uint)0 & ~bitmask.x);
                                      bitmask.x = ((~(-1 << 23)) << 0) & 0xffffffff;  r5.x = (((uint)r5.x << 0) & bitmask.x) | ((uint)r12.x & ~bitmask.x);
                                      r13.x = r5.x + -r7.w;
                                      bitmask.z = ((~(-1 << 8)) << 15) & 0xffffffff;  r11.z = (((uint)r12.y << 15) & bitmask.z) | ((uint)0 & ~bitmask.z);
                                      bitmask.w = ((~(-1 << 8)) << 15) & 0xffffffff;  r11.w = (((uint)r12.z << 15) & bitmask.w) | ((uint)0 & ~bitmask.w);
                                      bitmask.z = ((~(-1 << 23)) << 0) & 0xffffffff;  r11.z = (((uint)r11.z << 0) & bitmask.z) | ((uint)r12.x & ~bitmask.z);
                                      bitmask.w = ((~(-1 << 23)) << 0) & 0xffffffff;  r11.w = (((uint)r11.w << 0) & bitmask.w) | ((uint)r12.x & ~bitmask.w);
                                      r13.yz = r11.zw + -r7.ww;
                                      r12.xyz = (int3)r13.xyz & int3(2139095040,2139095040,2139095040);
                                      r12.xyz = cmp((int3)r12.xyz != int3(2139095040,2139095040,2139095040));
                                      r12.w = -1;
                                      r11.zw = r12.zw ? r12.xy : 0;
                                      r5.x = (int)r11.w & (int)r11.z;
                                      r7.w = ~(int)r5.x;
                                      if (r5.x == 0) {
                                      // No code for instruction (needs manual fix):
                                                                            store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.500000,1.000000,0.500000,1.000000)
                                      }
                                    } else {
                                      r7.w = -1;
                                    }
                                    r1.z = r1.z ? r7.w : 0;
                                    r0.w = (int)r0.w | (int)r1.z;
                                  } else {
                                    r0.w = 0;
                                  }
                                } else {
                                  r0.w = -1;
                                }
                                r0.w = r1.x ? r0.w : 0;
                                r0.w = (int)r11.y | (int)r0.w;
                              } else {
                                r0.w = -1;
                              }
                              r0.w = r4.y ? r0.w : 0;
                              r0.w = (int)r11.x | (int)r0.w;
                            } else {
                              r0.w = -1;
                            }
                            r0.w = r3.w ? r0.w : 0;
                            r0.w = (int)r10.z | (int)r0.w;
                          } else {
                            r0.w = -1;
                          }
                          r0.w = r4.z ? r0.w : 0;
                          r0.w = (int)r10.y | (int)r0.w;
                        } else {
                          r0.w = -1;
                        }
                        r0.w = r2.y ? r0.w : 0;
                        r0.w = (int)r10.x | (int)r0.w;
                      } else {
                        r0.w = -1;
                      }
                      r0.w = r3.z ? r0.w : 0;
                      r0.w = (int)r9.z | (int)r0.w;
                    } else {
                      r0.w = -1;
                    }
                    r0.w = r2.x ? r0.w : 0;
                    r0.w = (int)r9.y | (int)r0.w;
                  } else {
                    r0.w = -1;
                  }
                  r0.w = r5.w ? r0.w : 0;
                  r0.w = (int)r9.x | (int)r0.w;
                } else {
                  r0.w = -1;
                }
                r0.w = r2.w ? r0.w : 0;
                r0.w = (int)r8.z | (int)r0.w;
              } else {
                r0.w = -1;
              }
              r0.w = r5.y ? r0.w : 0;
              r0.w = (int)r8.y | (int)r0.w;
            } else {
              r0.w = -1;
            }
            r0.w = r2.z ? r0.w : 0;
            r0.w = (int)r8.x | (int)r0.w;
          } else {
            r0.w = -1;
          }
          r0.w = r4.x ? r0.w : 0;
          r0.w = (int)r7.z | (int)r0.w;
        } else {
          r0.w = -1;
        }
        r0.w = r1.y ? r0.w : 0;
        r0.w = (int)r7.y | (int)r0.w;
      } else {
        r0.w = -1;
      }
      r0.w = r4.w ? r0.w : 0;
      r0.w = (int)r7.x | (int)r0.w;
      if (r0.w == 0) {
        r0.w = (uint)r0.y;
        r2.xyz = float3(0.0625,0.0625,0.0625) * r0.www;
        r2.w = 1;
      // No code for instruction (needs manual fix):
            store_uav_typed u5.xyzw, vThreadID.xyyy, r2.xyzw
      }
    }
  } else {
    r3.xy = float2(0,0);
    r1.w = 1;
    r0.z = -1;
    r5.z = 1;
    r6.zw = float2(0,0);
  }
  if (r0.y == 0) {
    r0.y = (int)computeSpriteControl.x + 1023;
    r0.y = (uint)r0.y >> 10;
    r0.y = min(2, (uint)r0.y);
    if (27 == 0) r2.x = 0; else if (27+2 < 32) {     r2.x = (uint)vThreadGroupID.x << (32-(27 + 2)); r2.x = (uint)r2.x >> (32-27);    } else r2.x = (uint)vThreadGroupID.x >> 2;
    if (27 == 0) r2.y = 0; else if (27+2 < 32) {     r2.y = (uint)vThreadGroupID.y << (32-(27 + 2)); r2.y = (uint)r2.y >> (32-27);    } else r2.y = (uint)vThreadGroupID.y >> 2;
    r0.w = cmp((uint)r0.y >= 1);
    if (r0.w != 0) {
      r0.w = cmp((uint)r0.y >= 2);
      if (r0.w != 0) {
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
    r0.w = (int)r1.y | (int)r1.x;
    if (r0.w == 0) {
    // No code for instruction (needs manual fix):
        store_uav_typed u4.xyzw, vThreadID.xyyy, l(1.000000,1.000000,1.000000,1.000000)
      r4.xy = vThreadID.xy;
      r4.zw = float2(0,0);
      r1.z = floatZSampler.Load(r4.xyz).x;
    // No code for instruction (needs manual fix):
        store_uav_typed u7.xyzw, vThreadID.xyyy, r1.zzzz
    }
    if (r0.w != 0) {
      r0.w = r0.x ? -170141183460469231731687303715884105728.000000 : 0;
      r0.w = cmp((int)r0.w == 0);
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
      r1.z = cmp(r1.w < 0.800000012);
      r0.w = r0.w ? r1.z : 0;
      if (r0.w != 0) {
        r0.z = max(r0.z, r0.x);
      } else {
        r0.z = r0.x;
      }
    // No code for instruction (needs manual fix):
        store_uav_typed u7.xyzw, vThreadID.xyyy, r0.zzzz
      if (r0.y != 0) {
        r3.xyzw = (uint4)r3.xxyy >> int4(2,2,2,2);
        r3.xyzw = (int4)r3.xyzw & int4(1073741312,1073741312,1073741312,1073741312);
        r0.zw = cmp(r3.yw >= float2(0.984375,0.984375));
        r3.yw = float2(1.01587307,1.01587307) * r3.yw;
        r3.xz = r3.xz * float2(64,64) + float2(-63,-63);
        r0.zw = r0.zw ? r3.xz : r3.yw;
        r0.zw = max(float2(9.99999994e-09,9.99999994e-09), r0.zw);
        r0.zw = rcp(r0.zw);
        r1.z = cmp(r0.x >= 0.984375);
        r3.x = 1.01587307 * r0.x;
        r3.y = r0.x * 64 + -63;
        r1.z = r1.z ? r3.y : r3.x;
        r1.z = max(9.99999994e-09, r1.z);
        r1.z = rcp(r1.z);
        r3.xyz = (int3)computeSpriteControl.yyy & int3(4,1,8);
        r3.x = cmp((int)r3.x != 0);
        r8.xyzw = (uint4)vThreadID.xyxy;
        r3.w = ~(int)vThreadID.y;
        r3.w = (int)r3.w ^ (int)vThreadID.x;
        r3.w = (int)r3.w & 1;
        r2.w = 0;
        r9.w = 0.00392156886;
        r10.xw = float2(1,5.60519386e-45);
        r11.xy = r6.zw;
        r11.zw = r6.xy;
        r4.y = r4.x;
        r4.z = r1.w;
        r12.w = 0;
        r4.w = r1.x;
        while (true) {
          if (r4.w == 0) break;
          r2.z = firstbitlow((uint)r4.w);
          r5.x = 1 << (int)r2.z;
          r5.x = ~(int)r5.x;
          r4.w = (int)r4.w & (int)r5.x;
          r5.x = spriteCullRough.Load(r2.xyzw).x;
          r5.y = (uint)r2.z << 5;
          r13.xyzw = r11.xyzw;
          r14.z = r4.y;
          r5.w = r4.z;
          r14.w = r12.w;
          r15.x = r5.x;
          while (true) {
            if (r15.x == 0) break;
            r15.y = firstbitlow((uint)r15.x);
            r15.z = 1 << (int)r15.y;
            r15.z = ~(int)r15.z;
            r15.x = (int)r15.z & (int)r15.x;
            r15.y = (int)r5.y + (int)r15.y;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=32)(mixed,mixed,mixed,mixed) r16.xyz, r15.y, l(16), t1.xyzx
          r16.x = computeSpritesSampler[]..swiz;
          r16.y = computeSpritesSampler[]..swiz;
          r16.z = computeSpritesSampler[]..swiz;
            r17.xy = r13.zw;
            r15.zw = r13.xy;
            r17.z = r14.z;
            while (true) {
              break;
            }
            r13.xy = r15.zw;
            r14.z = r17.z;
            r16.w = cmp(r0.x < r16.z);
            r16.w = (int)r3.x | (int)r16.w;
            if (r16.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=32)(mixed,mixed,mixed,mixed) r18.xyzw, r15.y, l(0), t1.xyzw
            r18.x = computeSpritesSampler[]..swiz;
            r18.y = computeSpritesSampler[]..swiz;
            r18.z = computeSpritesSampler[]..swiz;
            r18.w = computeSpritesSampler[]..swiz;
              r19.xyzw = r18.xyzw * r8.xyzw;
              r19.xy = r19.xz + r19.yw;
              r19.xy = r19.xy + r16.xy;
              r16.xy = r19.xy * float2(2,2) + float2(-1,-1);
              r16.x = max(abs(r16.x), abs(r16.y));
              r16.x = cmp(r16.x < 1);
              if (r16.x != 0) {
                if (r3.y != 0) {
                  r16.xy = cmp(float2(0.995000005,0.995000005) < r19.xy);
                  r16.x = (int)r16.y | (int)r16.x;
                  r16.yw = cmp(r19.xy < float2(0.00499999989,0.00499999989));
                  r16.y = (int)r16.w | (int)r16.y;
                  r16.x = (int)r16.y | (int)r16.x;
                  if (r16.x != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r16.x, r15.y, l(52), t2.xxxx
                  r16.x = computeSpritesSampler[]..swiz;
                    if (1 == 0) r16.x = 0; else if (1+22 < 32) {                     r16.x = (uint)r16.x << (32-(1 + 22)); r16.x = (uint)r16.x >> (32-1);                    } else r16.x = (uint)r16.x >> 22;
                    r14.xyz = r16.xxx ? float3(0.75,0.300000012,0) : float3(0.75,0.75,0.75);
                    r13.zw = r14.xy;
                    r14.w = 1;
                  } else {
                    r16.x = cmp(r14.w != 1.000000);
                    r16.y = cmp(r17.x == 0.000000);
                    r20.xy = cmp(r17.yx >= float2(1,1));
                    r17.zw = float2(0.0500000007,0.0500000007) + r17.xy;
                    r20.zw = r20.xx ? r17.zy : r17.xw;
                    r21.xyz = float3(-0.0500000007,0,-0.0500000007) + r17.yxy;
                    r22.xy = float2(0.0500000007,0) + r17.xy;
                    r22.xy = r20.yy ? r21.yz : r22.xy;
                    r16.w = cmp(r17.y != 0.000000);
                    r21.w = r16.w ? r21.x : r17.y;
                    r20.xy = r20.xx ? r22.xy : r21.yw;
                    r14.xy = r16.yy ? r20.zw : r20.xy;
                    r20.xyzw = r16.xxxx ? float4(0,0,0,1) : r14.xyzw;
                    r14.xy = r17.xy;
                    r14.xyzw = r3.wwww ? r20.xyzw : r14.xyzw;
                    r13.zw = r14.xy;
                  }
                } else {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r20.xyzw, r15.y, l(0), t2.xyzw
                r20.x = computeSpritesSampler[]..swiz;
                r20.y = computeSpritesSampler[]..swiz;
                r20.z = computeSpritesSampler[]..swiz;
                r20.w = computeSpritesSampler[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r21.xyzw, r15.y, l(16), t2.zxyw
                r21.x = computeSpritesSampler[]..swiz;
                r21.y = computeSpritesSampler[]..swiz;
                r21.z = computeSpritesSampler[]..swiz;
                r21.w = computeSpritesSampler[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r16.x, r15.y, l(32), t2.xxxx
                r16.x = computeSpritesSampler[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r22.xyzw, r15.y, l(40), t2.xyzw
                r22.x = computeSpritesSampler[]..swiz;
                r22.y = computeSpritesSampler[]..swiz;
                r22.z = computeSpritesSampler[]..swiz;
                r22.w = computeSpritesSampler[]..swiz;
                  r16.yw = (uint2)r22.xy >> int2(24,24);
                  r16.yw = (uint2)r16.yw;
                  r23.xy = float2(0.00390625,0.00392156886) * r16.yw;
                  if (4 == 0) r24.x = 0; else if (4+26 < 32) {                   r24.x = (uint)r22.z << (32-(4 + 26)); r24.x = (uint)r24.x >> (32-4);                  } else r24.x = (uint)r22.z >> 26;
                  if (4 == 0) r24.y = 0; else if (4+16 < 32) {                   r24.y = (uint)r22.w << (32-(4 + 16)); r24.y = (uint)r24.y >> (32-4);                  } else r24.y = (uint)r22.w >> 16;
                  if (1 == 0) r24.z = 0; else if (1+20 < 32) {                   r24.z = (uint)r22.w << (32-(1 + 20)); r24.z = (uint)r24.z >> (32-1);                  } else r24.z = (uint)r22.w >> 20;
                  if (8 == 0) r24.w = 0; else if (8+8 < 32) {                   r24.w = (uint)r22.w << (32-(8 + 8)); r24.w = (uint)r24.w >> (32-8);                  } else r24.w = (uint)r22.w >> 8;
                  r25.xyzw = int4(1,1,1,1) << (int4)r24.xyxy;
                  if (r24.z != 0) {
                    if (12 == 0) r17.w = 0; else if (12+12 < 32) {                     r17.w = (uint)r22.x << (32-(12 + 12)); r17.w = (uint)r17.w >> (32-12);                    } else r17.w = (uint)r22.x >> 12;
                    r23.zw = (int2)r22.xz & int2(4095,1023);
                    r26.xyzw = (uint4)r25.zwzw;
                    r24.xy = r19.xy * r26.zw + float2(0.5,0.5);
                    r27.xy = float2(-0.5,-0.5) + r26.zw;
                    r24.xy = min(r27.xy, r24.xy);
                    r27.xz = (uint2)r23.zw;
                    r27.y = (uint)r17.w;
                    r27.xy = r27.xy + r24.xy;
                    r27.xy = invBcTexSizes.xy * r27.xy;
                    r26.xyzw = r26.xyzw * r18.xzyw;
                    r28.xyzw = materialTexBC7.SampleGrad(computeSpritesSampler_s, r27.xyz, r26.xyxx, r26.zwzz).xyzw;
                    r17.w = cmp(0 < r16.y);
                    if (r17.w != 0) {
                      r17.w = (int)r22.y & 4095;
                      if (12 == 0) r19.w = 0; else if (12+12 < 32) {                       r19.w = (uint)r22.y << (32-(12 + 12)); r19.w = (uint)r19.w >> (32-12);                      } else r19.w = (uint)r22.y >> 12;
                      r29.x = (uint)r17.w;
                      r29.y = (uint)r19.w;
                      r23.zw = r29.xy + r24.xy;
                      r27.xy = invBcTexSizes.xy * r23.zw;
                      r26.xyzw = materialTexBC7.SampleGrad(computeSpritesSampler_s, r27.xyz, r26.xyxx, r26.zwzz).xyzw;
                      r26.xyzw = r26.xyzw + -r28.xyzw;
                      r28.xyzw = r23.xxxx * r26.xyzw + r28.xyzw;
                    }
                  } else {
                    if (12 == 0) r17.w = 0; else if (12+12 < 32) {                     r17.w = (uint)r22.x << (32-(12 + 12)); r17.w = (uint)r17.w >> (32-12);                    } else r17.w = (uint)r22.x >> 12;
                    r23.zw = (int2)r22.xz & int2(4095,1023);
                    r26.xyzw = (uint4)r25.zwzw;
                    r24.xy = r19.xy * r26.zw + float2(0.5,0.5);
                    r27.xy = float2(-0.5,-0.5) + r26.zw;
                    r24.xy = min(r27.xy, r24.xy);
                    r27.x = (uint)r23.z;
                    r27.y = (uint)r17.w;
                    r24.xy = r27.xy + r24.xy;
                    r24.xy = invBcTexSizes.zw * r24.xy;
                    r24.z = (uint)r23.w;
                    r26.xyzw = r26.xyzw * r18.xzyw;
                    r28.xyzw = materialTexBC3.SampleGrad(computeSpritesSampler_s, r24.xyz, r26.xyxx, r26.zwzz).xyzw;
                    r17.w = cmp(0 < r16.y);
                    if (r17.w != 0) {
                      if (12 == 0) r17.w = 0; else if (12+12 < 32) {                       r17.w = (uint)r22.y << (32-(12 + 12)); r17.w = (uint)r17.w >> (32-12);                      } else r17.w = (uint)r22.y >> 12;
                      r22.xy = (int2)r22.yz & int2(4095,1023);
                      r25.xyzw = (uint4)r25.xyzw;
                      r23.zw = r19.xy * r25.zw + float2(0.5,0.5);
                      r24.xy = float2(-0.5,-0.5) + r25.zw;
                      r23.zw = min(r24.xy, r23.zw);
                      r24.xz = (uint2)r22.xy;
                      r24.y = (uint)r17.w;
                      r23.zw = r24.xy + r23.zw;
                      r24.xy = invBcTexSizes.zw * r23.zw;
                      r25.xyzw = r25.xyzw * r18.xzyw;
                      r25.xyzw = materialTexBC3.SampleGrad(computeSpritesSampler_s, r24.xyz, r25.xyxx, r25.zwzz).xyzw;
                      r25.xyzw = r25.xyzw + -r28.xyzw;
                      r28.xyzw = r23.xxxx * r25.xyzw + r28.xyzw;
                    }
                  }
                  r17.w = (uint)r24.w;
                  r17.w = 0.00392156886 * r17.w;
                  r19.w = dot(r28.xyz, float3(0.212599993,0.715200007,0.0722000003));
                  r24.xyz = r19.www + -r28.xyz;
                  r24.xyz = r17.www * r24.xyz + r28.xyz;
                  if (8 == 0) r25.x = 0; else if (8+10 < 32) {                   r25.x = (uint)r22.z << (32-(8 + 10)); r25.x = (uint)r25.x >> (32-8);                  } else r25.x = (uint)r22.z >> 10;
                  if (8 == 0) r25.y = 0; else if (8+18 < 32) {                   r25.y = (uint)r22.z << (32-(8 + 18)); r25.y = (uint)r25.y >> (32-8);                  } else r25.y = (uint)r22.z >> 18;
                  if (1 == 0) r25.z = 0; else if (1+30 < 32) {                   r25.z = (uint)r22.z << (32-(1 + 30)); r25.z = (uint)r25.z >> (32-1);                  } else r25.z = (uint)r22.z >> 30;
                  r22.xy = (uint2)r25.xy;
                  r17.w = 0.00392156886 * r22.y;
                  r19.w = (int)r22.w & 255;
                  r19.w = (uint)r19.w;
                  r23.z = cmp(r16.w == 0.000000);
                  r25.xy = cmp(r22.xy == float2(255,0));
                  r22.y = r23.z ? r25.x : 0;
                  r22.y = r25.y ? r22.y : 0;
                  r23.z = cmp(r19.w == 255.000000);
                  r22.y = r23.z ? r22.y : 0;
                  r23.z = max(9.99999975e-05, r28.w);
                  r25.xyw = saturate(r24.xyz / r23.zzz);
                  r25.xyw = -r16.www * float3(0.00392156886,0.00392156886,0.00392156886) + r25.xyw;
                  r25.xyw = max(float3(0,0,0), r25.xyw);
                  r16.w = r22.x * 0.00392156886 + -r23.y;
                  r16.w = max(9.99999975e-05, r16.w);
                  r25.xyw = r25.xyw / r16.www;
                  r25.xyw = min(float3(1,1,1), r25.xyw);
                  r16.w = r19.w * 0.00392156886 + -r17.w;
                  r25.xyw = r25.xyw * r16.www + r17.www;
                  r26.xyz = cmp(float3(0.0404499993,0.0404499993,0.0404499993) >= r25.xyw);
                  r27.xyz = float3(0.0773993805,0.0773993805,0.0773993805) * r25.xyw;
                  r25.xyw = float3(0.0549999997,0.0549999997,0.0549999997) + r25.xyw;
                  r25.xyw = float3(0.947867334,0.947867334,0.947867334) * abs(r25.xyw);
                  r25.xyw = log2(r25.xyw);
                  r25.xyw = float3(2.4000001,2.4000001,2.4000001) * r25.xyw;
                  r25.xyw = exp2(r25.xyw);
                  r25.xyw = r26.xyz ? r27.xyz : r25.xyw;
                  r25.xyw = r25.xyw * r28.www;
                  r28.xyz = r22.yyy ? r24.xyz : r25.xyw;
                  r19.z = (uint)r15.y;
                  r9.xyz = lmapTex.SampleLevel(computeSpritesSampler_s, r19.xyz, 0).xyz;
                  r16.w = (int)r20.x & 255;
                  r16.w = (uint)r16.w;
                  r24.x = 0.00392156886 * r16.w;
                  if (8 == 0) r22.x = 0; else if (8+8 < 32) {                   r22.x = (uint)r20.x << (32-(8 + 8)); r22.x = (uint)r22.x >> (32-8);                  } else r22.x = (uint)r20.x >> 8;
                  if (8 == 0) r22.y = 0; else if (8+16 < 32) {                   r22.y = (uint)r20.x << (32-(8 + 16)); r22.y = (uint)r22.y >> (32-8);                  } else r22.y = (uint)r20.x >> 16;
                  r22.xy = (uint2)r22.xy;
                  r24.yz = float2(0.00392156886,0.00392156886) * r22.xy;
                  r16.w = (uint)r20.x >> 24;
                  r24.w = (uint)r16.w;
                  r26.xyzw = r24.xyzw * r9.xyzw;
                  r9.x = cmp(r16.z >= 0.984375);
                  r9.y = 1.01587307 * r16.z;
                  r9.z = r16.z * 64 + -63;
                  r9.x = r9.x ? r9.z : r9.y;
                  r9.x = max(9.99999994e-09, r9.x);
                  r9.x = rcp(r9.x);
                  r9.y = f16tof32(r21.x);
                  r9.z = f16tof32(r16.x);
                  r16.w = cmp(r9.z != 1.000000);
                  r23.yzw = r28.xyz / r23.zzz;
                  r17.w = r9.w * r24.w + r28.w;
                  r27.w = saturate(r17.w * r9.z + -r9.z);
                  r27.xyz = r27.www * r23.yzw;
                  r28.xyzw = r16.wwww ? r27.xyzw : r28.xyzw;
                  r10.y = r27.w;
                  r22.xy = r16.ww ? r10.xy : r26.ww;
                  r9.z = cmp(r9.x < r1.z);
                  r10.y = -r9.x + r1.z;
                  r10.y = saturate(r10.y * r9.y);
                  r9.z = r9.z ? r10.y : 1;
                  r23.yz = -r9.xx + r0.zw;
                  r9.xy = r23.yz * r9.yy;
                  r9.xy = min(float2(1,1), abs(r9.xy));
                  r9.x = r9.z * r9.x;
                  r9.x = r9.x * r9.y;
                  r27.xyzw = r28.xyzw * r9.xxxx;
                  r28.xyzw = r27.wxyz * r22.xxxx;
                  if (r25.z != 0) {
                    r9.x = r22.y * r9.x;
                    r9.y = (uint)r22.z >> 31;
                    if (r9.y != 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r23.yzw, r15.y, l(24), t3.xxyz
                    r23.y = computeSpritesSampler[]..swiz;
                    r23.z = computeSpritesSampler[]..swiz;
                    r23.w = computeSpritesSampler[]..swiz;
                      r9.y = (uint)r23.y >> 28;
                      r9.y = 1 << (int)r9.y;
                      if (4 == 0) r25.x = 0; else if (4+24 < 32) {                       r25.x = (uint)r23.z << (32-(4 + 24)); r25.x = (uint)r25.x >> (32-4);                      } else r25.x = (uint)r23.z >> 24;
                      if (12 == 0) r25.y = 0; else if (12+16 < 32) {                       r25.y = (uint)r23.y << (32-(12 + 16)); r25.y = (uint)r25.y >> (32-12);                      } else r25.y = (uint)r23.y >> 16;
                      if (10 == 0) r25.z = 0; else if (10+12 < 32) {                       r25.z = (uint)r23.w << (32-(10 + 12)); r25.z = (uint)r25.z >> (32-10);                      } else r25.z = (uint)r23.w >> 12;
                      r9.z = 1 << (int)r25.x;
                      r10.y = (int)r23.z & 4095;
                      r29.xyzw = (uint4)r9.yzyz;
                      r9.yz = r19.xy * r29.zw + float2(0.5,0.5);
                      r22.yz = float2(-0.5,-0.5) + r29.zw;
                      r9.yz = min(r22.yz, r9.yz);
                      r25.x = (uint)r25.y;
                      r25.y = (uint)r10.y;
                      r22.yz = r25.xy + r9.yz;
                      r27.xy = invMaskTexSizes.xy * r22.yz;
                      r27.z = (uint)r25.z;
                      r18.xyzw = r29.xyzw * r18.xzyw;
                      r10.y = materialTexMask.SampleGrad(computeSpritesSampler_s, r27.xyz, r18.y, r18.w).x;
                      r15.y = cmp(0 < r16.y);
                      if (r15.y != 0) {
                        if (12 == 0) r15.y = 0; else if (12+12 < 32) {                         r15.y = (uint)r23.z << (32-(12 + 12)); r15.y = (uint)r15.y >> (32-12);                        } else r15.y = (uint)r23.z >> 12;
                        r16.y = (int)r23.w & 4095;
                        r25.x = (uint)r15.y;
                        r25.y = (uint)r16.y;
                        r9.yz = r25.xy + r9.yz;
                        r27.xy = invMaskTexSizes.xy * r9.yz;
                        r9.y = materialTexMask.SampleGrad(computeSpritesSampler_s, r27.xyz, r18.y, r18.w).x;
                        r9.y = r9.y + -r10.y;
                        r10.y = r23.x * r9.y + r10.y;
                      }
                    } else {
                      r10.y = 1;
                    }
                    r9.x = r10.y * r9.x;
                    r9.y = (uint)r16.x >> 16;
                    r9.y = f16tof32(r9.y);
                    if (1 == 0) r9.z = 0; else if (1+21 < 32) {                     r9.z = (uint)r22.w << (32-(1 + 21)); r9.z = (uint)r9.z >> (32-1);                    } else r9.z = (uint)r22.w >> 21;
                    r10.y = dot(r26.xyz, float3(0.298999995,0.587000012,0.114));
                    r10.y = max(9.99999975e-05, r10.y);
                    r10.y = max(relHDRExposure.x, r10.y);
                    r10.y = r10.y * r9.y;
                    r9.y = r9.z ? r9.y : r10.y;
                    r9.x = r9.x * r9.y;
                    r26.xyz = r24.xyz * r9.xxx + r26.xyz;
                  }
                  r9.x = -r27.w * r22.x + 1;
                  r5.w = r9.x * r5.w;
                  r9.y = cmp(r5.w < 0.800000012);
                  r9.z = cmp(0.200000003 < r28.x);
                  r9.y = (int)r9.z | (int)r9.y;
                  if (r9.y != 0) {
                    r9.y = cmp(r16.z >= 0.000492187508);
                    if (r9.y != 0) {
                      r9.y = 1 + -r16.z;
                      r16.xy = float2(4,0);
                      while (true) {
                        r9.z = cmp((int)r16.y >= 4);
                        if (r9.z != 0) break;
                        r9.z = (uint)r16.y << 2;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured r9.z, vThreadIDInGroupFlattened.x, r9.z, g0.xxxx
                      r9.z = computeSpritesSampler[]..swiz;
                        r9.z = cmp(r9.z >= r9.y);
                        if (r9.z != 0) {
                          r16.x = r16.y;
                          break;
                        }
                        r10.z = (int)r16.y + 1;
                        r16.xy = r10.wz;
                      }
                      floatZSampler[vThreadIDInGroupFlattened.x].16 = g0.x;
                      floatZSampler[vThreadIDInGroupFlattened.x].16 = g1.x;
                      r9.z = (uint)r16.x << 2;
                      r10.y = (int)r9.z + -4;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured r10.y, vThreadIDInGroupFlattened.x, r10.y, g1.xxxx
                    r10.y = computeSpritesSampler[]..swiz;
                      r10.y = r16.x ? r10.y : 1;
                      r10.z = 3;
                      while (true) {
                        r15.y = cmp((int)r10.z < 0);
                        if (r15.y != 0) break;
                        r15.y = cmp((int)r10.z >= (int)r16.x);
                        if (r15.y != 0) {
                          r15.y = (uint)r10.z << 2;
                          r16.y = (int)r15.y + 4;
                        // Known bad code for instruction (needs manual fix):
                                                ld_structured r16.z, vThreadIDInGroupFlattened.x, r15.y, g0.xxxx
                        r16.z = computeSpritesSampler[]..swiz;
                          floatZSampler[vThreadIDInGroupFlattened.x].r16.y = g0.x;
                        // Known bad code for instruction (needs manual fix):
                                                ld_structured r15.y, vThreadIDInGroupFlattened.x, r15.y, g1.xxxx
                        r15.y = computeSpritesSampler[]..swiz;
                          r15.y = r15.y * r9.x;
                          floatZSampler[vThreadIDInGroupFlattened.x].r16.y = g1.x;
                        }
                        r10.z = (int)r10.z + -1;
                      }
                      floatZSampler[vThreadIDInGroupFlattened.x].r9.z = g0.x;
                      r9.x = r10.y * r9.x;
                      floatZSampler[vThreadIDInGroupFlattened.x].r9.z = g1.x;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured r9.x, vThreadIDInGroupFlattened.x, l(16), g0.xxxx
                    r9.x = computeSpritesSampler[]..swiz;
                      r9.x = cmp(r9.x != 1000000015047466219876688855040.000000);
                      if (r9.x != 0) {
                        r9.x = 2;
                        while (true) {
                          r9.y = cmp((int)r9.x >= 4);
                          if (r9.y != 0) break;
                          r9.y = (uint)r9.x << 2;
                        // Known bad code for instruction (needs manual fix):
                                                ld_structured r9.z, vThreadIDInGroupFlattened.x, r9.y, g0.xxxx
                        r9.z = computeSpritesSampler[]..swiz;
                          r9.y = (int)r9.y + -4;
                        // Known bad code for instruction (needs manual fix):
                                                ld_structured r10.y, vThreadIDInGroupFlattened.x, r9.y, g0.xxxx
                        r10.y = computeSpritesSampler[]..swiz;
                          r9.z = -r10.y + r9.z;
                        // Known bad code for instruction (needs manual fix):
                                                ld_structured r10.yz, vThreadIDInGroupFlattened.x, r9.y, g1.xxyx
                        r10.y = computeSpritesSampler[]..swiz;
                        r10.z = computeSpritesSampler[]..swiz;
                          r9.y = r10.y + -r10.z;
                          r9.y = r9.z * r9.y;
                          x16[r9.x+0].x = r9.y;
                          r9.x = (int)r9.x + 1;
                        }
                        r9.x = x16[2].x;
                        r9.y = x16[3].x;
                        r9.x = cmp(r9.y < r9.x);
                        r9.xy = r9.xx ? float2(3,2) : float2(2,1);
                        r9.z = 2;
                        while (true) {
                          r10.y = cmp((int)r9.z >= 4);
                          if (r10.y != 0) break;
                          r10.y = cmp((int)r9.z >= (int)r9.x);
                          if (r10.y != 0) {
                            r10.y = (uint)r9.z << 2;
                            r10.z = (int)r10.y + 4;
                          // Known bad code for instruction (needs manual fix):
                                                    ld_structured r10.z, vThreadIDInGroupFlattened.x, r10.z, g0.xxxx
                          r10.z = computeSpritesSampler[]..swiz;
                            floatZSampler[vThreadIDInGroupFlattened.x].r10.y = g0.x;
                          }
                          r9.z = (int)r9.z + 1;
                        }
                        r9.x = 1;
                        while (true) {
                          r9.z = cmp((int)r9.x >= 4);
                          if (r9.z != 0) break;
                          r9.z = cmp((int)r9.x >= (int)r9.y);
                          if (r9.z != 0) {
                            r9.z = (uint)r9.x << 2;
                            r10.y = (int)r9.z + 4;
                          // Known bad code for instruction (needs manual fix):
                                                    ld_structured r10.y, vThreadIDInGroupFlattened.x, r10.y, g1.xxxx
                          r10.y = computeSpritesSampler[]..swiz;
                            floatZSampler[vThreadIDInGroupFlattened.x].r9.z = g1.x;
                          }
                          r9.x = (int)r9.x + 1;
                        }
                      }
                    }
                  }
                  if (r3.z != 0) {
                    r9.xyz = lmapTex.SampleLevel(computeSpritesPointSampler_s, r19.xyz, 0).xyz;
                    r28.x = 1;
                  } else {
                    r10.yz = (uint2)r21.xw >> int2(16,16);
                    r18.y = f16tof32(r21.w);
                    r18.xz = f16tof32(r10.yz);
                    r10.yz = (uint2)r20.yz >> int2(16,16);
                    r19.xy = f16tof32(r20.yz);
                    r19.zw = f16tof32(r10.yz);
                    r16.yzw = r19.xzy * r28.xxx;
                    r21.x = r20.w;
                    r19.xyz = r21.xyz * r28.xxx;
                    r20.xyz = r28.yzw * r26.xyz + -r16.yzw;
                    r16.yzw = r19.www * r20.xyz + r16.yzw;
                    r9.xyz = r16.yzw * r18.xyz + r19.xyz;
                  }
                  r9.xyz = relHDRExposure.yyy * r9.xyz;
                  r10.y = 1 + -r28.x;
                  r14.xy = r17.xy;
                  r14.xyz = r14.xyz * r10.yyy + r9.xyz;
                  r13.zw = r14.xy;
                }
              } else {
                r13.zw = r17.xy;
              }
            } else {
              r13.zw = r17.xy;
            }
          }
          r11.xyzw = r13.xyzw;
          r4.y = r14.z;
          r4.z = r5.w;
          r12.w = r14.w;
        }
        r6.xyzw = r11.zwxy;
        r4.x = r4.y;
        r1.w = r4.z;
        r0.y = cmp(1 < (uint)r0.y);
        if (r0.y != 0) {
          r2.w = 0;
          r9.w = 0.00392156886;
          r10.xw = float2(1,5.60519386e-45);
          r11.xyzw = r6.zwxy;
          r0.y = r4.x;
          r1.x = r1.w;
          r4.y = r12.w;
          r4.z = r1.y;
          while (true) {
            if (r4.z == 0) break;
            r4.w = firstbitlow((uint)r4.z);
            r5.x = 1 << (int)r4.w;
            r5.x = ~(int)r5.x;
            r4.z = (int)r4.z & (int)r5.x;
            r2.z = (int)r4.w + 32;
            r4.w = spriteCullRough.Load(r2.xyzw).x;
            r2.z = (uint)r2.z << 5;
            r13.xyzw = r11.xyzw;
            r14.z = r0.y;
            r5.x = r1.x;
            r14.w = r4.y;
            r5.y = r4.w;
            while (true) {
              if (r5.y == 0) break;
              r5.w = firstbitlow((uint)r5.y);
              r15.x = 1 << (int)r5.w;
              r15.x = ~(int)r15.x;
              r5.y = (int)r5.y & (int)r15.x;
              r5.w = (int)r2.z + (int)r5.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=32)(mixed,mixed,mixed,mixed) r15.xyz, r5.w, l(16), t1.xyzx
            r15.x = computeSpritesSampler[]..swiz;
            r15.y = computeSpritesSampler[]..swiz;
            r15.z = computeSpritesSampler[]..swiz;
              r16.xy = r13.zw;
              r15.w = r13.x;
              r17.x = r13.y;
              r16.z = r14.z;
              while (true) {
                break;
              }
              r13.x = r15.w;
              r13.y = r17.x;
              r14.z = r16.z;
              r17.y = cmp(r0.x < r15.z);
              r17.y = (int)r3.x | (int)r17.y;
              if (r17.y != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=32)(mixed,mixed,mixed,mixed) r18.xyzw, r5.w, l(0), t1.xyzw
              r18.x = computeSpritesSampler[]..swiz;
              r18.y = computeSpritesSampler[]..swiz;
              r18.z = computeSpritesSampler[]..swiz;
              r18.w = computeSpritesSampler[]..swiz;
                r19.xyzw = r18.xyzw * r8.xyzw;
                r17.yz = r19.xz + r19.yw;
                r19.xy = r17.yz + r15.xy;
                r15.xy = r19.xy * float2(2,2) + float2(-1,-1);
                r15.x = max(abs(r15.x), abs(r15.y));
                r15.x = cmp(r15.x < 1);
                if (r15.x != 0) {
                  if (r3.y != 0) {
                    r15.xy = cmp(float2(0.995000005,0.995000005) < r19.xy);
                    r15.x = (int)r15.y | (int)r15.x;
                    r17.yz = cmp(r19.xy < float2(0.00499999989,0.00499999989));
                    r15.y = (int)r17.z | (int)r17.y;
                    r15.x = (int)r15.y | (int)r15.x;
                    if (r15.x != 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r15.x, r5.w, l(52), t2.xxxx
                    r15.x = computeSpritesSampler[]..swiz;
                      if (1 == 0) r15.x = 0; else if (1+22 < 32) {                       r15.x = (uint)r15.x << (32-(1 + 22)); r15.x = (uint)r15.x >> (32-1);                      } else r15.x = (uint)r15.x >> 22;
                      r14.xyz = r15.xxx ? float3(0.75,0.300000012,0) : float3(0.75,0.75,0.75);
                      r13.zw = r14.xy;
                      r14.w = 1;
                    } else {
                      r15.x = cmp(r14.w != 1.000000);
                      r15.y = cmp(r16.x == 0.000000);
                      r17.yz = cmp(r16.yx >= float2(1,1));
                      r16.zw = float2(0.0500000007,0.0500000007) + r16.xy;
                      r20.xy = r17.yy ? r16.zy : r16.xw;
                      r21.xyz = float3(-0.0500000007,0,-0.0500000007) + r16.yxy;
                      r20.zw = float2(0.0500000007,0) + r16.xy;
                      r17.zw = r17.zz ? r21.yz : r20.zw;
                      r16.w = cmp(r16.y != 0.000000);
                      r21.w = r16.w ? r21.x : r16.y;
                      r17.yz = r17.yy ? r17.zw : r21.yw;
                      r14.xy = r15.yy ? r20.xy : r17.yz;
                      r20.xyzw = r15.xxxx ? float4(0,0,0,1) : r14.xyzw;
                      r14.xy = r16.xy;
                      r14.xyzw = r3.wwww ? r20.xyzw : r14.xyzw;
                      r13.zw = r14.xy;
                    }
                  } else {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r20.xyzw, r5.w, l(0), t2.xyzw
                  r20.x = computeSpritesSampler[]..swiz;
                  r20.y = computeSpritesSampler[]..swiz;
                  r20.z = computeSpritesSampler[]..swiz;
                  r20.w = computeSpritesSampler[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r21.xyzw, r5.w, l(16), t2.zxyw
                  r21.x = computeSpritesSampler[]..swiz;
                  r21.y = computeSpritesSampler[]..swiz;
                  r21.z = computeSpritesSampler[]..swiz;
                  r21.w = computeSpritesSampler[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r15.x, r5.w, l(32), t2.xxxx
                  r15.x = computeSpritesSampler[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r22.xyzw, r5.w, l(40), t2.xyzw
                  r22.x = computeSpritesSampler[]..swiz;
                  r22.y = computeSpritesSampler[]..swiz;
                  r22.z = computeSpritesSampler[]..swiz;
                  r22.w = computeSpritesSampler[]..swiz;
                    r17.yz = (uint2)r22.xy >> int2(24,24);
                    r17.yz = (uint2)r17.yz;
                    r23.xy = float2(0.00390625,0.00392156886) * r17.yz;
                    if (4 == 0) r24.x = 0; else if (4+26 < 32) {                     r24.x = (uint)r22.z << (32-(4 + 26)); r24.x = (uint)r24.x >> (32-4);                    } else r24.x = (uint)r22.z >> 26;
                    if (4 == 0) r24.y = 0; else if (4+16 < 32) {                     r24.y = (uint)r22.w << (32-(4 + 16)); r24.y = (uint)r24.y >> (32-4);                    } else r24.y = (uint)r22.w >> 16;
                    if (1 == 0) r24.z = 0; else if (1+20 < 32) {                     r24.z = (uint)r22.w << (32-(1 + 20)); r24.z = (uint)r24.z >> (32-1);                    } else r24.z = (uint)r22.w >> 20;
                    if (8 == 0) r24.w = 0; else if (8+8 < 32) {                     r24.w = (uint)r22.w << (32-(8 + 8)); r24.w = (uint)r24.w >> (32-8);                    } else r24.w = (uint)r22.w >> 8;
                    r25.xyzw = int4(1,1,1,1) << (int4)r24.xyxy;
                    if (r24.z != 0) {
                      if (12 == 0) r15.y = 0; else if (12+12 < 32) {                       r15.y = (uint)r22.x << (32-(12 + 12)); r15.y = (uint)r15.y >> (32-12);                      } else r15.y = (uint)r22.x >> 12;
                      r23.zw = (int2)r22.xz & int2(4095,1023);
                      r26.xyzw = (uint4)r25.zwzw;
                      r24.xy = r19.xy * r26.zw + float2(0.5,0.5);
                      r27.xy = float2(-0.5,-0.5) + r26.zw;
                      r24.xy = min(r27.xy, r24.xy);
                      r27.xz = (uint2)r23.zw;
                      r27.y = (uint)r15.y;
                      r27.xy = r27.xy + r24.xy;
                      r27.xy = invBcTexSizes.xy * r27.xy;
                      r26.xyzw = r26.xyzw * r18.xzyw;
                      r28.xyzw = materialTexBC7.SampleGrad(computeSpritesSampler_s, r27.xyz, r26.xyxx, r26.zwzz).xyzw;
                      r15.y = cmp(0 < r17.y);
                      if (r15.y != 0) {
                        r15.y = (int)r22.y & 4095;
                        if (12 == 0) r16.w = 0; else if (12+12 < 32) {                         r16.w = (uint)r22.y << (32-(12 + 12)); r16.w = (uint)r16.w >> (32-12);                        } else r16.w = (uint)r22.y >> 12;
                        r29.x = (uint)r15.y;
                        r29.y = (uint)r16.w;
                        r23.zw = r29.xy + r24.xy;
                        r27.xy = invBcTexSizes.xy * r23.zw;
                        r26.xyzw = materialTexBC7.SampleGrad(computeSpritesSampler_s, r27.xyz, r26.xyxx, r26.zwzz).xyzw;
                        r26.xyzw = r26.xyzw + -r28.xyzw;
                        r28.xyzw = r23.xxxx * r26.xyzw + r28.xyzw;
                      }
                    } else {
                      if (12 == 0) r15.y = 0; else if (12+12 < 32) {                       r15.y = (uint)r22.x << (32-(12 + 12)); r15.y = (uint)r15.y >> (32-12);                      } else r15.y = (uint)r22.x >> 12;
                      r23.zw = (int2)r22.xz & int2(4095,1023);
                      r26.xyzw = (uint4)r25.zwzw;
                      r24.xy = r19.xy * r26.zw + float2(0.5,0.5);
                      r27.xy = float2(-0.5,-0.5) + r26.zw;
                      r24.xy = min(r27.xy, r24.xy);
                      r27.x = (uint)r23.z;
                      r27.y = (uint)r15.y;
                      r24.xy = r27.xy + r24.xy;
                      r24.xy = invBcTexSizes.zw * r24.xy;
                      r24.z = (uint)r23.w;
                      r26.xyzw = r26.xyzw * r18.xzyw;
                      r28.xyzw = materialTexBC3.SampleGrad(computeSpritesSampler_s, r24.xyz, r26.xyxx, r26.zwzz).xyzw;
                      r15.y = cmp(0 < r17.y);
                      if (r15.y != 0) {
                        if (12 == 0) r15.y = 0; else if (12+12 < 32) {                         r15.y = (uint)r22.y << (32-(12 + 12)); r15.y = (uint)r15.y >> (32-12);                        } else r15.y = (uint)r22.y >> 12;
                        r22.xy = (int2)r22.yz & int2(4095,1023);
                        r25.xyzw = (uint4)r25.xyzw;
                        r23.zw = r19.xy * r25.zw + float2(0.5,0.5);
                        r24.xy = float2(-0.5,-0.5) + r25.zw;
                        r23.zw = min(r24.xy, r23.zw);
                        r24.xz = (uint2)r22.xy;
                        r24.y = (uint)r15.y;
                        r23.zw = r24.xy + r23.zw;
                        r24.xy = invBcTexSizes.zw * r23.zw;
                        r25.xyzw = r25.xyzw * r18.xzyw;
                        r25.xyzw = materialTexBC3.SampleGrad(computeSpritesSampler_s, r24.xyz, r25.xyxx, r25.zwzz).xyzw;
                        r25.xyzw = r25.xyzw + -r28.xyzw;
                        r28.xyzw = r23.xxxx * r25.xyzw + r28.xyzw;
                      }
                    }
                    r15.y = (uint)r24.w;
                    r15.y = 0.00392156886 * r15.y;
                    r16.w = dot(r28.xyz, float3(0.212599993,0.715200007,0.0722000003));
                    r24.xyz = r16.www + -r28.xyz;
                    r24.xyz = r15.yyy * r24.xyz + r28.xyz;
                    if (8 == 0) r25.x = 0; else if (8+10 < 32) {                     r25.x = (uint)r22.z << (32-(8 + 10)); r25.x = (uint)r25.x >> (32-8);                    } else r25.x = (uint)r22.z >> 10;
                    if (8 == 0) r25.y = 0; else if (8+18 < 32) {                     r25.y = (uint)r22.z << (32-(8 + 18)); r25.y = (uint)r25.y >> (32-8);                    } else r25.y = (uint)r22.z >> 18;
                    if (1 == 0) r25.z = 0; else if (1+30 < 32) {                     r25.z = (uint)r22.z << (32-(1 + 30)); r25.z = (uint)r25.z >> (32-1);                    } else r25.z = (uint)r22.z >> 30;
                    r22.xy = (uint2)r25.xy;
                    r15.y = 0.00392156886 * r22.y;
                    r16.w = (int)r22.w & 255;
                    r16.w = (uint)r16.w;
                    r17.w = cmp(r17.z == 0.000000);
                    r23.zw = cmp(r22.xy == float2(255,0));
                    r17.w = r17.w ? r23.z : 0;
                    r17.w = r23.w ? r17.w : 0;
                    r19.w = cmp(r16.w == 255.000000);
                    r17.w = r17.w ? r19.w : 0;
                    r19.w = max(9.99999975e-05, r28.w);
                    r25.xyw = saturate(r24.xyz / r19.www);
                    r25.xyw = -r17.zzz * float3(0.00392156886,0.00392156886,0.00392156886) + r25.xyw;
                    r25.xyw = max(float3(0,0,0), r25.xyw);
                    r17.z = r22.x * 0.00392156886 + -r23.y;
                    r17.z = max(9.99999975e-05, r17.z);
                    r23.yzw = r25.xyw / r17.zzz;
                    r23.yzw = min(float3(1,1,1), r23.yzw);
                    r16.w = r16.w * 0.00392156886 + -r15.y;
                    r23.yzw = r23.yzw * r16.www + r15.yyy;
                    r25.xyw = cmp(float3(0.0404499993,0.0404499993,0.0404499993) >= r23.yzw);
                    r26.xyz = float3(0.0773993805,0.0773993805,0.0773993805) * r23.yzw;
                    r23.yzw = float3(0.0549999997,0.0549999997,0.0549999997) + r23.yzw;
                    r23.yzw = float3(0.947867334,0.947867334,0.947867334) * abs(r23.yzw);
                    r23.yzw = log2(r23.yzw);
                    r23.yzw = float3(2.4000001,2.4000001,2.4000001) * r23.yzw;
                    r23.yzw = exp2(r23.yzw);
                    r23.yzw = r25.xyw ? r26.xyz : r23.yzw;
                    r23.yzw = r23.yzw * r28.www;
                    r28.xyz = r17.www ? r24.xyz : r23.yzw;
                    r19.z = (uint)r5.w;
                    r9.xyz = lmapTex.SampleLevel(computeSpritesSampler_s, r19.xyz, 0).xyz;
                    r15.y = (int)r20.x & 255;
                    r15.y = (uint)r15.y;
                    r24.x = 0.00392156886 * r15.y;
                    if (8 == 0) r17.z = 0; else if (8+8 < 32) {                     r17.z = (uint)r20.x << (32-(8 + 8)); r17.z = (uint)r17.z >> (32-8);                    } else r17.z = (uint)r20.x >> 8;
                    if (8 == 0) r17.w = 0; else if (8+16 < 32) {                     r17.w = (uint)r20.x << (32-(8 + 16)); r17.w = (uint)r17.w >> (32-8);                    } else r17.w = (uint)r20.x >> 16;
                    r17.zw = (uint2)r17.zw;
                    r24.yz = float2(0.00392156886,0.00392156886) * r17.zw;
                    r15.y = (uint)r20.x >> 24;
                    r24.w = (uint)r15.y;
                    r26.xyzw = r24.xyzw * r9.xyzw;
                    r9.x = cmp(r15.z >= 0.984375);
                    r9.y = 1.01587307 * r15.z;
                    r9.z = r15.z * 64 + -63;
                    r9.x = r9.x ? r9.z : r9.y;
                    r9.x = max(9.99999994e-09, r9.x);
                    r9.x = rcp(r9.x);
                    r9.y = f16tof32(r21.x);
                    r9.z = f16tof32(r15.x);
                    r15.y = cmp(r9.z != 1.000000);
                    r23.yzw = r28.xyz / r19.www;
                    r16.w = r9.w * r24.w + r28.w;
                    r27.w = saturate(r16.w * r9.z + -r9.z);
                    r27.xyz = r27.www * r23.yzw;
                    r28.xyzw = r15.yyyy ? r27.xyzw : r28.xyzw;
                    r10.y = r27.w;
                    r17.zw = r15.yy ? r10.xy : r26.ww;
                    r9.z = cmp(r9.x < r1.z);
                    r10.y = -r9.x + r1.z;
                    r10.y = saturate(r10.y * r9.y);
                    r9.z = r9.z ? r10.y : 1;
                    r22.xy = -r9.xx + r0.zw;
                    r9.xy = r22.xy * r9.yy;
                    r9.xy = min(float2(1,1), abs(r9.xy));
                    r9.x = r9.z * r9.x;
                    r9.x = r9.x * r9.y;
                    r27.xyzw = r28.xyzw * r9.xxxx;
                    r28.xyzw = r27.wxyz * r17.zzzz;
                    if (r25.z != 0) {
                      r9.x = r17.w * r9.x;
                      r9.y = (uint)r22.z >> 31;
                      if (r9.y != 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r22.xyz, r5.w, l(24), t3.xyzx
                      r22.x = computeSpritesSampler[]..swiz;
                      r22.y = computeSpritesSampler[]..swiz;
                      r22.z = computeSpritesSampler[]..swiz;
                        r5.w = (uint)r22.x >> 28;
                        r5.w = 1 << (int)r5.w;
                        if (4 == 0) r23.y = 0; else if (4+24 < 32) {                         r23.y = (uint)r22.y << (32-(4 + 24)); r23.y = (uint)r23.y >> (32-4);                        } else r23.y = (uint)r22.y >> 24;
                        if (12 == 0) r23.z = 0; else if (12+16 < 32) {                         r23.z = (uint)r22.x << (32-(12 + 16)); r23.z = (uint)r23.z >> (32-12);                        } else r23.z = (uint)r22.x >> 16;
                        if (10 == 0) r23.w = 0; else if (10+12 < 32) {                         r23.w = (uint)r22.z << (32-(10 + 12)); r23.w = (uint)r23.w >> (32-10);                        } else r23.w = (uint)r22.z >> 12;
                        r9.y = 1 << (int)r23.y;
                        r9.z = (int)r22.y & 4095;
                        r25.xz = (uint2)r5.ww;
                        r25.yw = (uint2)r9.yy;
                        r27.xy = r19.xy * r25.zw + float2(0.5,0.5);
                        r29.xy = float2(-0.5,-0.5) + r25.zw;
                        r27.xy = min(r29.xy, r27.xy);
                        r29.xz = (uint2)r23.zw;
                        r29.y = (uint)r9.z;
                        r9.yz = r29.xy + r27.xy;
                        r29.xy = invMaskTexSizes.xy * r9.yz;
                        r18.xyzw = r25.xyzw * r18.xzyw;
                        r5.w = materialTexMask.SampleGrad(computeSpritesSampler_s, r29.xyz, r18.x, r18.z).x;
                        r9.y = cmp(0 < r17.y);
                        if (r9.y != 0) {
                          if (12 == 0) r9.y = 0; else if (12+12 < 32) {                           r9.y = (uint)r22.y << (32-(12 + 12)); r9.y = (uint)r9.y >> (32-12);                          } else r9.y = (uint)r22.y >> 12;
                          r9.z = (int)r22.z & 4095;
                          r22.xy = (uint2)r9.yz;
                          r9.yz = r27.xy + r22.xy;
                          r29.xy = invMaskTexSizes.xy * r9.yz;
                          r9.y = materialTexMask.SampleGrad(computeSpritesSampler_s, r29.xyz, r18.y, r18.w).x;
                          r9.y = r9.y + -r5.w;
                          r5.w = r23.x * r9.y + r5.w;
                        }
                      } else {
                        r5.w = 1;
                      }
                      r5.w = r5.w * r9.x;
                      r9.x = (uint)r15.x >> 16;
                      r9.x = f16tof32(r9.x);
                      if (1 == 0) r9.y = 0; else if (1+21 < 32) {                       r9.y = (uint)r22.w << (32-(1 + 21)); r9.y = (uint)r9.y >> (32-1);                      } else r9.y = (uint)r22.w >> 21;
                      r9.z = dot(r26.xyz, float3(0.298999995,0.587000012,0.114));
                      r9.z = max(9.99999975e-05, r9.z);
                      r9.z = max(relHDRExposure.x, r9.z);
                      r9.z = r9.z * r9.x;
                      r9.x = r9.y ? r9.x : r9.z;
                      r5.w = r9.x * r5.w;
                      r26.xyz = r24.xyz * r5.www + r26.xyz;
                    }
                    r5.w = -r27.w * r17.z + 1;
                    r5.x = r5.x * r5.w;
                    r9.x = cmp(r5.x < 0.800000012);
                    r9.y = cmp(0.200000003 < r28.x);
                    r9.x = (int)r9.y | (int)r9.x;
                    if (r9.x != 0) {
                      r9.x = cmp(r15.z >= 0.000492187508);
                      if (r9.x != 0) {
                        r9.x = 1 + -r15.z;
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
                          r15.x = cmp((int)r10.z < 0);
                          if (r15.x != 0) break;
                          r15.x = cmp((int)r10.z >= (int)r9.y);
                          if (r15.x != 0) {
                            r15.x = (uint)r10.z << 2;
                            r15.y = (int)r15.x + 4;
                          // Known bad code for instruction (needs manual fix):
                                                    ld_structured r15.z, vThreadIDInGroupFlattened.x, r15.x, g0.xxxx
                          r15.z = computeSpritesSampler[]..swiz;
                            floatZSampler[vThreadIDInGroupFlattened.x].r15.y = g0.x;
                          // Known bad code for instruction (needs manual fix):
                                                    ld_structured r15.x, vThreadIDInGroupFlattened.x, r15.x, g1.xxxx
                          r15.x = computeSpritesSampler[]..swiz;
                            r15.x = r15.x * r5.w;
                            floatZSampler[vThreadIDInGroupFlattened.x].r15.y = g1.x;
                          }
                          r10.z = (int)r10.z + -1;
                        }
                        floatZSampler[vThreadIDInGroupFlattened.x].r9.z = g0.x;
                        r5.w = r10.y * r5.w;
                        floatZSampler[vThreadIDInGroupFlattened.x].r9.z = g1.x;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured r5.w, vThreadIDInGroupFlattened.x, l(16), g0.xxxx
                      r5.w = computeSpritesSampler[]..swiz;
                        r5.w = cmp(r5.w != 1000000015047466219876688855040.000000);
                        if (r5.w != 0) {
                          r5.w = 2;
                          while (true) {
                            r9.x = cmp((int)r5.w >= 4);
                            if (r9.x != 0) break;
                            r9.x = (uint)r5.w << 2;
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
                            x17[r5.w+0].x = r9.x;
                            r5.w = (int)r5.w + 1;
                          }
                          r5.w = x17[2].x;
                          r9.x = x17[3].x;
                          r5.w = cmp(r9.x < r5.w);
                          r9.xz = r5.ww ? float2(3,2) : float2(2,1);
                          r5.w = 2;
                          while (true) {
                            r10.y = cmp((int)r5.w >= 4);
                            if (r10.y != 0) break;
                            r10.y = cmp((int)r5.w >= (int)r9.x);
                            if (r10.y != 0) {
                              r10.y = (uint)r5.w << 2;
                              r10.z = (int)r10.y + 4;
                            // Known bad code for instruction (needs manual fix):
                                                        ld_structured r10.z, vThreadIDInGroupFlattened.x, r10.z, g0.xxxx
                            r10.z = computeSpritesSampler[]..swiz;
                              floatZSampler[vThreadIDInGroupFlattened.x].r10.y = g0.x;
                            }
                            r5.w = (int)r5.w + 1;
                          }
                          r5.w = 1;
                          while (true) {
                            r9.x = cmp((int)r5.w >= 4);
                            if (r9.x != 0) break;
                            r9.x = cmp((int)r5.w >= (int)r9.z);
                            if (r9.x != 0) {
                              r9.x = (uint)r5.w << 2;
                              r10.y = (int)r9.x + 4;
                            // Known bad code for instruction (needs manual fix):
                                                        ld_structured r10.y, vThreadIDInGroupFlattened.x, r10.y, g1.xxxx
                            r10.y = computeSpritesSampler[]..swiz;
                              floatZSampler[vThreadIDInGroupFlattened.x].r9.x = g1.x;
                            }
                            r5.w = (int)r5.w + 1;
                          }
                        }
                      }
                    }
                    if (r3.z != 0) {
                      r15.xyz = lmapTex.SampleLevel(computeSpritesPointSampler_s, r19.xyz, 0).xyz;
                      r28.x = 1;
                    } else {
                      r9.xz = (uint2)r21.xw >> int2(16,16);
                      r18.y = f16tof32(r21.w);
                      r18.xz = f16tof32(r9.xz);
                      r9.xz = (uint2)r20.yz >> int2(16,16);
                      r19.xy = f16tof32(r20.yz);
                      r19.zw = f16tof32(r9.xz);
                      r17.yzw = r19.xzy * r28.xxx;
                      r21.x = r20.w;
                      r19.xyz = r21.xyz * r28.xxx;
                      r20.xyz = r28.yzw * r26.xyz + -r17.yzw;
                      r17.yzw = r19.www * r20.xyz + r17.yzw;
                      r15.xyz = r17.yzw * r18.xyz + r19.xyz;
                    }
                    r15.xyz = relHDRExposure.yyy * r15.xyz;
                    r5.w = 1 + -r28.x;
                    r14.xy = r16.xy;
                    r14.xyz = r14.xyz * r5.www + r15.xyz;
                    r13.zw = r14.xy;
                  }
                } else {
                  r13.zw = r16.xy;
                }
              } else {
                r13.zw = r16.xy;
              }
            }
            r11.xyzw = r13.xyzw;
            r0.y = r14.z;
            r1.x = r5.x;
            r4.y = r14.w;
          }
          r6.xyzw = r11.zwxy;
          r4.x = r0.y;
          r1.w = r1.x;
          r12.w = r4.y;
        }
      } else {
        r12.w = 0;
      }
      r0.x = saturate(0.800000012 + -r1.w);
      r0.x = -r0.x * 1.25 + 1;
      r0.x = r0.x * r5.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u4.xyzw, vThreadID.xyyy, r0.xxxx
      r0.x = cmp(0.899999976 >= r0.x);
      if (r0.x != 0) {
      // Known bad code for instruction (needs manual fix):
            ld_structured r0.xyzw, vThreadIDInGroupFlattened.x, l(0), g0.xyzw
      r0.x = computeSpritesSampler[]..swiz;
      r0.y = computeSpritesSampler[]..swiz;
      r0.z = computeSpritesSampler[]..swiz;
      r0.w = computeSpritesSampler[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured r1.xyzw, vThreadIDInGroupFlattened.x, l(0), g1.xyzw
      r1.x = computeSpritesSampler[]..swiz;
      r1.y = computeSpritesSampler[]..swiz;
      r1.z = computeSpritesSampler[]..swiz;
      r1.w = computeSpritesSampler[]..swiz;
        r0.xyzw = float4(1,1,1,1) + -r0.xyzw;
        r2.xyzw = cmp(r0.xyzw >= float4(0.984375,0.984375,0.984375,0.984375));
        r3.xy = float2(1.01587307,1.01587307) * r0.xy;
        r0.xy = r0.xy * float2(64,64) + float2(-63,-63);
        r0.xy = r2.xy ? r0.xy : r3.xy;
        r0.xy = max(float2(9.99999994e-09,9.99999994e-09), r0.xy);
        r3.xy = rcp(r0.xy);
        r0.xy = float2(1.01587307,1.01587307) * r0.zw;
        r0.zw = r0.zw * float2(64,64) + float2(-63,-63);
        r0.xy = r2.zw ? r0.zw : r0.xy;
        r0.xy = max(float2(9.99999994e-09,9.99999994e-09), r0.xy);
        r3.zw = rcp(r0.xy);
        r0.xyzw = float4(0.000500000024,0.000500000024,0.000500000024,0.000500000024) * r3.xyzw;
        r0.xyzw = min(float4(1,1,1,1), r0.xyzw);
      // No code for instruction (needs manual fix):
            store_uav_typed u2.xyzw, vThreadID.xyyy, r0.xyzw
      // No code for instruction (needs manual fix):
            store_uav_typed u3.xyzw, vThreadID.xyyy, r1.xyzw
      }
      r12.xy = r6.xy;
      r12.z = r4.x;
      r0.xy = r6.zw;
      while (true) {
        break;
      }
    // No code for instruction (needs manual fix):
        store_uav_typed u5.xyzw, vThreadID.xyyy, r12.xyzw
    }
  }
  return;
}