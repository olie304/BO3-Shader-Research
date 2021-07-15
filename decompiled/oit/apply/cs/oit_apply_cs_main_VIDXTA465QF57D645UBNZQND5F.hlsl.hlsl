// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:01 2021

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28;
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
    bitmask.y = ((~(-1 << 11)) << 4) & 0xffffffff;  r1.y = (((uint)r1.x << 4) & bitmask.y) | ((uint)0 & ~bitmask.y);
    bitmask.y = ((~(-1 << 4)) << 0) & 0xffffffff;  r1.y = (((uint)r2.x << 0) & bitmask.y) | ((uint)r1.y & ~bitmask.y);
    bitmask.x = ((~(-1 << 11)) << 8) & 0xffffffff;  r4.x = (((uint)r3.w << 8) & bitmask.x) | ((uint)0 & ~bitmask.x);
    r1.y = (int)r1.y + (int)r4.x;
    bitmask.x = ((~(-1 << 11)) << 12) & 0xffffffff;  r4.x = (((uint)r1.z << 12) & bitmask.x) | ((uint)0 & ~bitmask.x);
    r1.y = (int)r1.y + (int)r4.x;
    bitmask.x = ((~(-1 << 11)) << 16) & 0xffffffff;  r4.x = (((uint)r2.y << 16) & bitmask.x) | ((uint)0 & ~bitmask.x);
    r1.y = (int)r1.y + (int)r4.x;
    bitmask.x = ((~(-1 << 11)) << 20) & 0xffffffff;  r4.x = (((uint)r2.z << 20) & bitmask.x) | ((uint)0 & ~bitmask.x);
    r1.y = (int)r1.y + (int)r4.x;
    bitmask.y = ((~(-1 << 8)) << 24) & 0xffffffff;  r1.y = (((uint)r2.w << 24) & bitmask.y) | ((uint)r1.y & ~bitmask.y);
    bitmask.w = ((~(-1 << 4)) << 28) & 0xffffffff;  r4.w = (((uint)r0.w << 28) & bitmask.w) | ((uint)r1.y & ~bitmask.w);
    r1.y = cmp(oitMaxEntries < (uint)r0.x);
    if (r1.y != 0) {
    // No code for instruction (needs manual fix):
        store_uav_typed u5.xyzw, vThreadID.xyyy, l(1.000000,0.500000,0.500000,1.000000)
    }
    if (r1.y == 0) {
      r1.y = (int)r0.y + -1;
      if (r1.y != 0) {
        r2.x = (int)r2.x & -2048;
        r5.x = (int)r1.x & -2048;
        r2.x = cmp((int)r2.x == (int)r5.x);
        if (r2.x != 0) {
        // No code for instruction (needs manual fix):
                store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.500000,0.500000,1.000000,1.000000)
        }
        r5.x = ~(int)r2.x;
        if (r2.x == 0) {
          r6.xy = vThreadID.xy;
          r6.zw = float2(0,0);
          r5.y = oit_Nodes.Load(r6.xyzw).x;
          r6.xyz = (uint3)r5.yyy >> int3(1,8,16);
          r5.z = (int)r6.x & 0x7f800000;
          bitmask.y = ((~(-1 << 8)) << 15) & 0xffffffff;  r5.y = (((uint)r5.y << 15) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.y = ((~(-1 << 23)) << 0) & 0xffffffff;  r5.y = (((uint)r5.y << 0) & bitmask.y) | ((uint)r6.x & ~bitmask.y);
          r7.x = r5.y + -r5.z;
          bitmask.y = ((~(-1 << 8)) << 15) & 0xffffffff;  r5.y = (((uint)r6.y << 15) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.w = ((~(-1 << 8)) << 15) & 0xffffffff;  r5.w = (((uint)r6.z << 15) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.y = ((~(-1 << 23)) << 0) & 0xffffffff;  r5.y = (((uint)r5.y << 0) & bitmask.y) | ((uint)r6.x & ~bitmask.y);
          bitmask.w = ((~(-1 << 23)) << 0) & 0xffffffff;  r5.w = (((uint)r5.w << 0) & bitmask.w) | ((uint)r6.x & ~bitmask.w);
          r7.yz = r5.yw + -r5.zz;
          r5.yzw = (int3)r7.xyz & int3(2139095040,2139095040,2139095040);
          r6.xyz = cmp((int3)r5.yzw != int3(2139095040,2139095040,2139095040));
          r6.w = -1;
          r5.yz = r6.zw ? r6.xy : 0;
          r5.y = (int)r5.z & (int)r5.y;
          r6.y = ~(int)r5.y;
          if (r5.y == 0) {
          // No code for instruction (needs manual fix):
                    store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.500000,1.000000,0.500000,1.000000)
          }
          r6.x = r6.y;
        } else {
          r6.xy = float2(-1,-1);
        }
        r5.xy = (int2)r5.xx & (int2)r6.yx;
        r5.xy = (int2)r2.xx | (int2)r5.yx;
      } else {
        r5.xy = float2(0,0);
      }
      r5.yz = ~(int2)r5.yx;
      r2.x = (int)r5.y & (int)r5.z;
      if (r2.x != 0) {
        r5.y = cmp(1 < (uint)r1.y);
        if (r5.y != 0) {
          r1.x = (int)r1.x & -2048;
          r5.y = (int)r3.w & -2048;
          r1.x = cmp((int)r1.x == (int)r5.y);
          if (r1.x != 0) {
          // No code for instruction (needs manual fix):
                    store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.500000,0.500000,1.000000,1.000000)
          }
          r5.y = ~(int)r1.x;
          if (r1.x == 0) {
            r6.xy = vThreadID.xy;
            r6.zw = float2(1.40129846e-45,0);
            r5.z = oit_Nodes.Load(r6.xyzw).x;
            r6.xyz = (uint3)r5.zzz >> int3(1,8,16);
            r5.w = (int)r6.x & 0x7f800000;
            bitmask.z = ((~(-1 << 8)) << 15) & 0xffffffff;  r5.z = (((uint)r5.z << 15) & bitmask.z) | ((uint)0 & ~bitmask.z);
            bitmask.z = ((~(-1 << 23)) << 0) & 0xffffffff;  r5.z = (((uint)r5.z << 0) & bitmask.z) | ((uint)r6.x & ~bitmask.z);
            r7.x = r5.z + -r5.w;
            bitmask.y = ((~(-1 << 8)) << 15) & 0xffffffff;  r6.y = (((uint)r6.y << 15) & bitmask.y) | ((uint)0 & ~bitmask.y);
            bitmask.z = ((~(-1 << 8)) << 15) & 0xffffffff;  r6.z = (((uint)r6.z << 15) & bitmask.z) | ((uint)0 & ~bitmask.z);
            bitmask.x = ((~(-1 << 23)) << 0) & 0xffffffff;  r6.x = (((uint)r6.y << 0) & bitmask.x) | ((uint)r6.x & ~bitmask.x);
            bitmask.y = ((~(-1 << 23)) << 0) & 0xffffffff;  r6.y = (((uint)r6.z << 0) & bitmask.y) | ((uint)r6.x & ~bitmask.y);
            r7.yz = r6.xy + -r5.ww;
            r6.xyz = (int3)r7.xyz & int3(2139095040,2139095040,2139095040);
            r6.xyz = cmp((int3)r6.xyz != int3(2139095040,2139095040,2139095040));
            r6.w = -1;
            r5.zw = r6.zw ? r6.xy : 0;
            r5.z = (int)r5.w & (int)r5.z;
            r6.y = ~(int)r5.z;
            if (r5.z == 0) {
            // No code for instruction (needs manual fix):
                        store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.500000,1.000000,0.500000,1.000000)
            }
            r6.x = r6.y;
          } else {
            r6.xy = float2(-1,-1);
          }
          r5.yz = r5.yy ? r6.yx : 0;
          r5.yz = (int2)r1.xx | (int2)r5.zy;
        } else {
          r5.yz = float2(0,0);
        }
        r5.zw = ~(int2)r5.zy;
        r1.x = (int)r5.z & (int)r5.w;
        if (r1.x != 0) {
          r5.z = cmp(2 < (uint)r1.y);
          if (r5.z != 0) {
            r3.w = (int)r3.w & -2048;
            r5.z = (int)r1.z & -2048;
            r3.w = cmp((int)r3.w == (int)r5.z);
            if (r3.w != 0) {
            // No code for instruction (needs manual fix):
                        store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.500000,0.500000,1.000000,1.000000)
            }
            r5.z = ~(int)r3.w;
            if (r3.w == 0) {
              r6.xy = vThreadID.xy;
              r6.zw = float2(2.80259693e-45,0);
              r5.w = oit_Nodes.Load(r6.xyzw).x;
              r6.xyz = (uint3)r5.www >> int3(1,8,16);
              r6.w = (int)r6.x & 0x7f800000;
              bitmask.w = ((~(-1 << 8)) << 15) & 0xffffffff;  r5.w = (((uint)r5.w << 15) & bitmask.w) | ((uint)0 & ~bitmask.w);
              bitmask.w = ((~(-1 << 23)) << 0) & 0xffffffff;  r5.w = (((uint)r5.w << 0) & bitmask.w) | ((uint)r6.x & ~bitmask.w);
              r7.x = r5.w + -r6.w;
              bitmask.y = ((~(-1 << 8)) << 15) & 0xffffffff;  r6.y = (((uint)r6.y << 15) & bitmask.y) | ((uint)0 & ~bitmask.y);
              bitmask.z = ((~(-1 << 8)) << 15) & 0xffffffff;  r6.z = (((uint)r6.z << 15) & bitmask.z) | ((uint)0 & ~bitmask.z);
              bitmask.x = ((~(-1 << 23)) << 0) & 0xffffffff;  r6.x = (((uint)r6.y << 0) & bitmask.x) | ((uint)r6.x & ~bitmask.x);
              bitmask.y = ((~(-1 << 23)) << 0) & 0xffffffff;  r6.y = (((uint)r6.z << 0) & bitmask.y) | ((uint)r6.x & ~bitmask.y);
              r7.yz = r6.xy + -r6.ww;
              r6.xyz = (int3)r7.xyz & int3(2139095040,2139095040,2139095040);
              r6.xyz = cmp((int3)r6.xyz != int3(2139095040,2139095040,2139095040));
              r6.w = -1;
              r6.xy = r6.zw ? r6.xy : 0;
              r5.w = r6.y ? r6.x : 0;
              r6.y = ~(int)r5.w;
              if (r5.w == 0) {
              // No code for instruction (needs manual fix):
                            store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.500000,1.000000,0.500000,1.000000)
              }
              r6.x = r6.y;
            } else {
              r6.xy = float2(-1,-1);
            }
            r5.zw = r5.zz ? r6.yx : 0;
            r5.zw = (int2)r3.ww | (int2)r5.wz;
          } else {
            r5.zw = float2(0,0);
          }
          r6.xy = ~(int2)r5.wz;
          r3.w = (int)r6.x & (int)r6.y;
          if (r3.w != 0) {
            r5.w = cmp(3 < (uint)r1.y);
            if (r5.w != 0) {
              r1.z = (int)r1.z & -2048;
              r5.w = (int)r2.y & -2048;
              r1.z = cmp((int)r1.z == (int)r5.w);
              if (r1.z != 0) {
              // No code for instruction (needs manual fix):
                            store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.500000,0.500000,1.000000,1.000000)
              }
              r5.w = ~(int)r1.z;
              if (r1.z == 0) {
                r6.xy = vThreadID.xy;
                r6.zw = float2(4.20389539e-45,0);
                r6.x = oit_Nodes.Load(r6.xyzw).x;
                r6.yzw = (uint3)r6.xxx >> int3(1,8,16);
                r7.x = (int)r6.y & 0x7f800000;
                bitmask.x = ((~(-1 << 8)) << 15) & 0xffffffff;  r6.x = (((uint)r6.x << 15) & bitmask.x) | ((uint)0 & ~bitmask.x);
                bitmask.x = ((~(-1 << 23)) << 0) & 0xffffffff;  r6.x = (((uint)r6.x << 0) & bitmask.x) | ((uint)r6.y & ~bitmask.x);
                r8.x = r6.x + -r7.x;
                bitmask.x = ((~(-1 << 8)) << 15) & 0xffffffff;  r6.x = (((uint)r6.z << 15) & bitmask.x) | ((uint)0 & ~bitmask.x);
                bitmask.z = ((~(-1 << 8)) << 15) & 0xffffffff;  r6.z = (((uint)r6.w << 15) & bitmask.z) | ((uint)0 & ~bitmask.z);
                bitmask.x = ((~(-1 << 23)) << 0) & 0xffffffff;  r6.x = (((uint)r6.x << 0) & bitmask.x) | ((uint)r6.y & ~bitmask.x);
                bitmask.y = ((~(-1 << 23)) << 0) & 0xffffffff;  r6.y = (((uint)r6.z << 0) & bitmask.y) | ((uint)r6.y & ~bitmask.y);
                r8.yz = r6.xy + -r7.xx;
                r6.xyz = (int3)r8.xyz & int3(2139095040,2139095040,2139095040);
                r6.xyz = cmp((int3)r6.xyz != int3(2139095040,2139095040,2139095040));
                r6.w = -1;
                r6.xy = r6.zw ? r6.xy : 0;
                r6.x = r6.y ? r6.x : 0;
                r7.y = ~(int)r6.x;
                if (r6.x == 0) {
                // No code for instruction (needs manual fix):
                                store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.500000,1.000000,0.500000,1.000000)
                }
                r7.x = r7.y;
              } else {
                r7.xy = float2(-1,-1);
              }
              r6.xy = r5.ww ? r7.yx : 0;
              r6.xy = (int2)r1.zz | (int2)r6.yx;
            } else {
              r6.xy = float2(0,0);
            }
            r6.yz = ~(int2)r6.yx;
            r1.z = r6.z ? r6.y : 0;
            if (r1.z != 0) {
              r5.w = cmp(4 < (uint)r1.y);
              if (r5.w != 0) {
                r2.y = (int)r2.y & -2048;
                r5.w = (int)r2.z & -2048;
                r2.y = cmp((int)r2.y == (int)r5.w);
                if (r2.y != 0) {
                // No code for instruction (needs manual fix):
                                store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.500000,0.500000,1.000000,1.000000)
                }
                r5.w = ~(int)r2.y;
                if (r2.y == 0) {
                  r7.xy = vThreadID.xy;
                  r7.zw = float2(5.60519386e-45,0);
                  r6.y = oit_Nodes.Load(r7.xyzw).x;
                  r7.xyz = (uint3)r6.yyy >> int3(1,8,16);
                  r6.z = (int)r7.x & 0x7f800000;
                  bitmask.y = ((~(-1 << 8)) << 15) & 0xffffffff;  r6.y = (((uint)r6.y << 15) & bitmask.y) | ((uint)0 & ~bitmask.y);
                  bitmask.y = ((~(-1 << 23)) << 0) & 0xffffffff;  r6.y = (((uint)r6.y << 0) & bitmask.y) | ((uint)r7.x & ~bitmask.y);
                  r8.x = r6.y + -r6.z;
                  bitmask.y = ((~(-1 << 8)) << 15) & 0xffffffff;  r6.y = (((uint)r7.y << 15) & bitmask.y) | ((uint)0 & ~bitmask.y);
                  bitmask.w = ((~(-1 << 8)) << 15) & 0xffffffff;  r6.w = (((uint)r7.z << 15) & bitmask.w) | ((uint)0 & ~bitmask.w);
                  bitmask.y = ((~(-1 << 23)) << 0) & 0xffffffff;  r6.y = (((uint)r6.y << 0) & bitmask.y) | ((uint)r7.x & ~bitmask.y);
                  bitmask.w = ((~(-1 << 23)) << 0) & 0xffffffff;  r6.w = (((uint)r6.w << 0) & bitmask.w) | ((uint)r7.x & ~bitmask.w);
                  r8.yz = r6.yw + -r6.zz;
                  r6.yzw = (int3)r8.xyz & int3(2139095040,2139095040,2139095040);
                  r7.xyz = cmp((int3)r6.yzw != int3(2139095040,2139095040,2139095040));
                  r7.w = -1;
                  r6.yz = r7.zw ? r7.xy : 0;
                  r6.y = r6.z ? r6.y : 0;
                  r7.y = ~(int)r6.y;
                  if (r6.y == 0) {
                  // No code for instruction (needs manual fix):
                                    store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.500000,1.000000,0.500000,1.000000)
                  }
                  r7.x = r7.y;
                } else {
                  r7.xy = float2(-1,-1);
                }
                r6.yz = r5.ww ? r7.yx : 0;
                r6.yz = (int2)r2.yy | (int2)r6.zy;
              } else {
                r6.yz = float2(0,0);
              }
              r6.zw = ~(int2)r6.zy;
              r2.y = (int)r6.z & (int)r6.w;
              if (r2.y != 0) {
                r5.w = cmp(5 < (uint)r1.y);
                if (r5.w != 0) {
                  r2.z = (int)r2.z & -2048;
                  r5.w = (int)r2.w & -2048;
                  r2.z = cmp((int)r2.z == (int)r5.w);
                  if (r2.z != 0) {
                  // No code for instruction (needs manual fix):
                                    store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.500000,0.500000,1.000000,1.000000)
                  }
                  r5.w = ~(int)r2.z;
                  if (r2.z == 0) {
                    r7.xy = vThreadID.xy;
                    r7.zw = float2(7.00649232e-45,0);
                    r6.z = oit_Nodes.Load(r7.xyzw).x;
                    r7.xyz = (uint3)r6.zzz >> int3(1,8,16);
                    r6.w = (int)r7.x & 0x7f800000;
                    bitmask.z = ((~(-1 << 8)) << 15) & 0xffffffff;  r6.z = (((uint)r6.z << 15) & bitmask.z) | ((uint)0 & ~bitmask.z);
                    bitmask.z = ((~(-1 << 23)) << 0) & 0xffffffff;  r6.z = (((uint)r6.z << 0) & bitmask.z) | ((uint)r7.x & ~bitmask.z);
                    r8.x = r6.z + -r6.w;
                    bitmask.y = ((~(-1 << 8)) << 15) & 0xffffffff;  r7.y = (((uint)r7.y << 15) & bitmask.y) | ((uint)0 & ~bitmask.y);
                    bitmask.z = ((~(-1 << 8)) << 15) & 0xffffffff;  r7.z = (((uint)r7.z << 15) & bitmask.z) | ((uint)0 & ~bitmask.z);
                    bitmask.x = ((~(-1 << 23)) << 0) & 0xffffffff;  r7.x = (((uint)r7.y << 0) & bitmask.x) | ((uint)r7.x & ~bitmask.x);
                    bitmask.y = ((~(-1 << 23)) << 0) & 0xffffffff;  r7.y = (((uint)r7.z << 0) & bitmask.y) | ((uint)r7.x & ~bitmask.y);
                    r8.yz = r7.xy + -r6.ww;
                    r7.xyz = (int3)r8.xyz & int3(2139095040,2139095040,2139095040);
                    r7.xyz = cmp((int3)r7.xyz != int3(2139095040,2139095040,2139095040));
                    r7.w = -1;
                    r6.zw = r7.zw ? r7.xy : 0;
                    r6.z = (int)r6.w & (int)r6.z;
                    r7.y = ~(int)r6.z;
                    if (r6.z == 0) {
                    // No code for instruction (needs manual fix):
                                        store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.500000,1.000000,0.500000,1.000000)
                    }
                    r7.x = r7.y;
                  } else {
                    r7.xy = float2(-1,-1);
                  }
                  r6.zw = r5.ww ? r7.yx : 0;
                  r6.zw = (int2)r2.zz | (int2)r6.wz;
                } else {
                  r6.zw = float2(0,0);
                }
                r7.xy = ~(int2)r6.wz;
                r2.z = (int)r7.x & (int)r7.y;
                if (r2.z != 0) {
                  r1.y = cmp(6 < (uint)r1.y);
                  if (r1.y != 0) {
                    r1.y = (int)r2.w & -2048;
                    r0.w = (int)r0.w & -2048;
                    r0.w = cmp((int)r0.w == (int)r1.y);
                    if (r0.w != 0) {
                    // No code for instruction (needs manual fix):
                                        store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.500000,0.500000,1.000000,1.000000)
                    }
                    r1.y = ~(int)r0.w;
                    if (r0.w == 0) {
                      r7.xy = vThreadID.xy;
                      r7.zw = float2(8.40779079e-45,0);
                      r2.w = oit_Nodes.Load(r7.xyzw).x;
                      r7.xyz = (uint3)r2.www >> int3(1,8,16);
                      r5.w = (int)r7.x & 0x7f800000;
                      bitmask.w = ((~(-1 << 8)) << 15) & 0xffffffff;  r2.w = (((uint)r2.w << 15) & bitmask.w) | ((uint)0 & ~bitmask.w);
                      bitmask.w = ((~(-1 << 23)) << 0) & 0xffffffff;  r2.w = (((uint)r2.w << 0) & bitmask.w) | ((uint)r7.x & ~bitmask.w);
                      r8.x = r2.w + -r5.w;
                      bitmask.y = ((~(-1 << 8)) << 15) & 0xffffffff;  r7.y = (((uint)r7.y << 15) & bitmask.y) | ((uint)0 & ~bitmask.y);
                      bitmask.z = ((~(-1 << 8)) << 15) & 0xffffffff;  r7.z = (((uint)r7.z << 15) & bitmask.z) | ((uint)0 & ~bitmask.z);
                      bitmask.x = ((~(-1 << 23)) << 0) & 0xffffffff;  r7.x = (((uint)r7.y << 0) & bitmask.x) | ((uint)r7.x & ~bitmask.x);
                      bitmask.y = ((~(-1 << 23)) << 0) & 0xffffffff;  r7.y = (((uint)r7.z << 0) & bitmask.y) | ((uint)r7.x & ~bitmask.y);
                      r8.yz = r7.xy + -r5.ww;
                      r7.xyz = (int3)r8.xyz & int3(2139095040,2139095040,2139095040);
                      r7.xyz = cmp((int3)r7.xyz != int3(2139095040,2139095040,2139095040));
                      r7.w = -1;
                      r7.xy = r7.zw ? r7.xy : 0;
                      r2.w = r7.y ? r7.x : 0;
                      r5.w = ~(int)r2.w;
                      if (r2.w == 0) {
                      // No code for instruction (needs manual fix):
                                            store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.500000,1.000000,0.500000,1.000000)
                      }
                    } else {
                      r5.w = -1;
                    }
                    r1.y = r1.y ? r5.w : 0;
                    r0.w = (int)r0.w | (int)r1.y;
                  } else {
                    r0.w = 0;
                  }
                } else {
                  r0.w = -1;
                }
                r0.w = r2.z ? r0.w : 0;
                r0.w = (int)r6.z | (int)r0.w;
              } else {
                r0.w = -1;
              }
              r0.w = r2.y ? r0.w : 0;
              r0.w = (int)r6.y | (int)r0.w;
            } else {
              r0.w = -1;
            }
            r0.w = r1.z ? r0.w : 0;
            r0.w = (int)r6.x | (int)r0.w;
          } else {
            r0.w = -1;
          }
          r0.w = r3.w ? r0.w : 0;
          r0.w = (int)r5.z | (int)r0.w;
        } else {
          r0.w = -1;
        }
        r0.w = r1.x ? r0.w : 0;
        r0.w = (int)r5.y | (int)r0.w;
      } else {
        r0.w = -1;
      }
      r0.w = r2.x ? r0.w : 0;
      r0.w = (int)r5.x | (int)r0.w;
      if (r0.w == 0) {
        r0.w = (uint)r0.y;
        r2.xyz = float3(0.125,0.125,0.125) * r0.www;
        r2.w = 1;
      // No code for instruction (needs manual fix):
            store_uav_typed u5.xyzw, vThreadID.xyyy, r2.xyzw
      }
    }
  } else {
    r1.w = 1;
    r0.z = -1;
    r3.xyz = float3(0,0,1);
    r4.w = 0;
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
      r5.xy = vThreadID.xy;
      r5.zw = float2(0,0);
      r1.z = floatZSampler.Load(r5.xyz).x;
    // No code for instruction (needs manual fix):
        store_uav_typed u7.xyzw, vThreadID.xyyy, r1.zzzz
    }
    if (r0.w != 0) {
      r0.w = r0.x ? -170141183460469231731687303715884105728.000000 : 0;
      r0.w = cmp((int)r0.w == 0);
      r0.x = cmp(oitMaxEntries < (uint)r0.x);
      if (r0.x != 0) {
        r5.xy = vThreadID.xy;
        r5.zw = float2(0,0);
        r6.xyz = frameBuffer.Load(r5.xyw).xyz;
        r5.xyzw = oitFallbackBuffer.Load(r5.xyz).xyzw;
        r4.xyz = r5.www * r6.xyz + r5.xyz;
      } else {
        r5.xy = vThreadID.xy;
        r5.zw = float2(0,0);
        r4.xyz = frameBuffer.Load(r5.xyz).xyz;
      }
      r5.xy = vThreadID.xy;
      r5.w = 0;
      r0.x = floatZSampler.Load(r5.xyw).x;
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
        r6.xyzw = (uint4)r3.xxyy >> int4(2,2,2,2);
        r6.xyzw = (int4)r6.xyzw & int4(1073741312,1073741312,1073741312,1073741312);
        r0.zw = cmp(r6.yw >= float2(0.984375,0.984375));
        r3.xy = float2(1.01587307,1.01587307) * r6.yw;
        r6.xy = r6.xz * float2(64,64) + float2(-63,-63);
        r0.zw = r0.zw ? r6.xy : r3.xy;
        r0.zw = max(float2(9.99999994e-09,9.99999994e-09), r0.zw);
        r0.zw = rcp(r0.zw);
        r1.z = cmp(r0.x >= 0.984375);
        r3.x = 1.01587307 * r0.x;
        r3.y = r0.x * 64 + -63;
        r1.z = r1.z ? r3.y : r3.x;
        r1.z = max(9.99999994e-09, r1.z);
        r1.z = rcp(r1.z);
        r3.xyw = (int3)computeSpriteControl.yyy & int3(4,1,8);
        r3.x = cmp((int)r3.x != 0);
        r6.xyzw = (uint4)vThreadID.xyxy;
        r7.x = ~(int)vThreadID.y;
        r7.x = (int)r7.x ^ (int)vThreadID.x;
        r7.x = r7.x ? 0.000000 : 0;
        r2.w = 0;
        r8.w = 0.00392156886;
        r9.xw = float2(1,5.60519386e-45);
        r10.x = r4.w;
        r10.yzw = r4.xyz;
        r7.y = r1.w;
        r11.w = 0;
        r7.z = r1.x;
        while (true) {
          if (r7.z == 0) break;
          r2.z = firstbitlow((uint)r7.z);
          r7.w = 1 << (int)r2.z;
          r7.w = ~(int)r7.w;
          r7.z = (int)r7.w & (int)r7.z;
          r7.w = spriteCullRough.Load(r2.xyzw).x;
          r12.x = (uint)r2.z << 5;
          r13.xyzw = r10.xyzw;
          r12.y = r7.y;
          r14.w = r11.w;
          r12.z = r7.w;
          while (true) {
            if (r12.z == 0) break;
            r12.w = firstbitlow((uint)r12.z);
            r15.x = 1 << (int)r12.w;
            r15.x = ~(int)r15.x;
            r12.z = (int)r12.z & (int)r15.x;
            r12.w = (int)r12.x + (int)r12.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=32)(mixed,mixed,mixed,mixed) r15.xyz, r12.w, l(16), t1.xyzx
          r15.x = computeSpritesSampler[]..swiz;
          r15.y = computeSpritesSampler[]..swiz;
          r15.z = computeSpritesSampler[]..swiz;
            r16.xyz = r13.yzw;
            r15.w = r13.x;
            while (true) {
              break;
            }
            r13.x = r15.w;
            r17.x = cmp(r0.x < r15.z);
            r17.x = (int)r3.x | (int)r17.x;
            if (r17.x != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=32)(mixed,mixed,mixed,mixed) r17.xyzw, r12.w, l(0), t1.xyzw
            r17.x = computeSpritesSampler[]..swiz;
            r17.y = computeSpritesSampler[]..swiz;
            r17.z = computeSpritesSampler[]..swiz;
            r17.w = computeSpritesSampler[]..swiz;
              r18.xyzw = r17.xyzw * r6.xyzw;
              r18.xy = r18.xz + r18.yw;
              r18.xy = r18.xy + r15.xy;
              r15.xy = r18.xy * float2(2,2) + float2(-1,-1);
              r15.x = max(abs(r15.x), abs(r15.y));
              r15.x = cmp(r15.x < 1);
              if (r15.x != 0) {
                if (r3.y != 0) {
                  r15.xy = cmp(float2(0.995000005,0.995000005) < r18.xy);
                  r15.x = (int)r15.y | (int)r15.x;
                  r19.xy = cmp(r18.xy < float2(0.00499999989,0.00499999989));
                  r15.y = (int)r19.y | (int)r19.x;
                  r15.x = (int)r15.y | (int)r15.x;
                  if (r15.x != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r15.x, r12.w, l(52), t2.xxxx
                  r15.x = computeSpritesSampler[]..swiz;
                    if (1 == 0) r15.x = 0; else if (1+22 < 32) {                     r15.x = (uint)r15.x << (32-(1 + 22)); r15.x = (uint)r15.x >> (32-1);                    } else r15.x = (uint)r15.x >> 22;
                    r13.yzw = r15.xxx ? float3(0.75,0.300000012,0) : float3(0.75,0.75,0.75);
                    r14.w = 1;
                  } else {
                    r15.x = cmp(r14.w != 1.000000);
                    r15.y = cmp(r16.x == 0.000000);
                    r19.xy = cmp(r16.yx >= float2(1,1));
                    r16.w = 0.0500000007 + r16.x;
                    r20.xyz = float3(-0.0500000007,0,0.0500000007) + r16.yxy;
                    r19.zw = r19.xx ? r16.wy : r20.yz;
                    r21.xy = float2(0,-0.0500000007) + r16.xy;
                    r20.yz = float2(0.0500000007,0) + r16.xy;
                    r20.yz = r19.yy ? r21.xy : r20.yz;
                    r16.w = cmp(r16.y != 0.000000);
                    r21.z = r16.w ? r20.x : r16.y;
                    r19.xy = r19.xx ? r20.yz : r21.xz;
                    r14.xy = r15.yy ? r19.zw : r19.xy;
                    r14.z = r16.z;
                    r19.xyzw = r15.xxxx ? float4(0,0,0,1) : r14.xyzw;
                    r14.xyz = r16.xyz;
                    r14.xyzw = r7.xxxx ? r19.xyzw : r14.xyzw;
                    r13.yzw = r14.xyz;
                  }
                } else {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r19.xyzw, r12.w, l(0), t2.xyzw
                r19.x = computeSpritesSampler[]..swiz;
                r19.y = computeSpritesSampler[]..swiz;
                r19.z = computeSpritesSampler[]..swiz;
                r19.w = computeSpritesSampler[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r20.xyzw, r12.w, l(16), t2.zxyw
                r20.x = computeSpritesSampler[]..swiz;
                r20.y = computeSpritesSampler[]..swiz;
                r20.z = computeSpritesSampler[]..swiz;
                r20.w = computeSpritesSampler[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r14.x, r12.w, l(32), t2.xxxx
                r14.x = computeSpritesSampler[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r21.xyzw, r12.w, l(40), t2.xyzw
                r21.x = computeSpritesSampler[]..swiz;
                r21.y = computeSpritesSampler[]..swiz;
                r21.z = computeSpritesSampler[]..swiz;
                r21.w = computeSpritesSampler[]..swiz;
                  r14.yz = (uint2)r21.xy >> int2(24,24);
                  r14.yz = (uint2)r14.yz;
                  r15.xy = float2(0.00390625,0.00392156886) * r14.yz;
                  if (4 == 0) r22.x = 0; else if (4+26 < 32) {                   r22.x = (uint)r21.z << (32-(4 + 26)); r22.x = (uint)r22.x >> (32-4);                  } else r22.x = (uint)r21.z >> 26;
                  if (4 == 0) r22.y = 0; else if (4+16 < 32) {                   r22.y = (uint)r21.w << (32-(4 + 16)); r22.y = (uint)r22.y >> (32-4);                  } else r22.y = (uint)r21.w >> 16;
                  if (1 == 0) r22.z = 0; else if (1+20 < 32) {                   r22.z = (uint)r21.w << (32-(1 + 20)); r22.z = (uint)r22.z >> (32-1);                  } else r22.z = (uint)r21.w >> 20;
                  if (8 == 0) r22.w = 0; else if (8+8 < 32) {                   r22.w = (uint)r21.w << (32-(8 + 8)); r22.w = (uint)r22.w >> (32-8);                  } else r22.w = (uint)r21.w >> 8;
                  r23.xyzw = int4(1,1,1,1) << (int4)r22.xyxy;
                  if (r22.z != 0) {
                    if (12 == 0) r16.w = 0; else if (12+12 < 32) {                     r16.w = (uint)r21.x << (32-(12 + 12)); r16.w = (uint)r16.w >> (32-12);                    } else r16.w = (uint)r21.x >> 12;
                    r22.xy = (int2)r21.xz & int2(4095,1023);
                    r24.xyzw = (uint4)r23.zwzw;
                    r25.xy = r18.xy * r24.zw + float2(0.5,0.5);
                    r25.zw = float2(-0.5,-0.5) + r24.zw;
                    r25.xy = min(r25.xy, r25.zw);
                    r26.xz = (uint2)r22.xy;
                    r26.y = (uint)r16.w;
                    r22.xz = r26.xy + r25.xy;
                    r26.xy = invBcTexSizes.xy * r22.xz;
                    r24.xyzw = r24.xyzw * r17.xzyw;
                    r27.xyzw = materialTexBC7.SampleGrad(computeSpritesSampler_s, r26.xyz, r24.xyxx, r24.zwzz).xyzw;
                    r16.w = cmp(0 < r14.y);
                    if (r16.w != 0) {
                      r16.w = (int)r21.y & 4095;
                      if (12 == 0) r18.w = 0; else if (12+12 < 32) {                       r18.w = (uint)r21.y << (32-(12 + 12)); r18.w = (uint)r18.w >> (32-12);                      } else r18.w = (uint)r21.y >> 12;
                      r22.x = (uint)r16.w;
                      r22.y = (uint)r18.w;
                      r22.xy = r25.xy + r22.xy;
                      r26.xy = invBcTexSizes.xy * r22.xy;
                      r24.xyzw = materialTexBC7.SampleGrad(computeSpritesSampler_s, r26.xyz, r24.xyxx, r24.zwzz).xyzw;
                      r24.xyzw = r24.xyzw + -r27.xyzw;
                      r27.xyzw = r15.xxxx * r24.xyzw + r27.xyzw;
                    }
                  } else {
                    if (12 == 0) r16.w = 0; else if (12+12 < 32) {                     r16.w = (uint)r21.x << (32-(12 + 12)); r16.w = (uint)r16.w >> (32-12);                    } else r16.w = (uint)r21.x >> 12;
                    r22.xy = (int2)r21.xz & int2(4095,1023);
                    r24.xyzw = (uint4)r23.zwzw;
                    r25.xy = r18.xy * r24.zw + float2(0.5,0.5);
                    r25.zw = float2(-0.5,-0.5) + r24.zw;
                    r25.xy = min(r25.xy, r25.zw);
                    r26.x = (uint)r22.x;
                    r26.y = (uint)r16.w;
                    r22.xz = r26.xy + r25.xy;
                    r25.xy = invBcTexSizes.zw * r22.xz;
                    r25.z = (uint)r22.y;
                    r24.xyzw = r24.xyzw * r17.xzyw;
                    r27.xyzw = materialTexBC3.SampleGrad(computeSpritesSampler_s, r25.xyz, r24.xyxx, r24.zwzz).xyzw;
                    r16.w = cmp(0 < r14.y);
                    if (r16.w != 0) {
                      if (12 == 0) r16.w = 0; else if (12+12 < 32) {                       r16.w = (uint)r21.y << (32-(12 + 12)); r16.w = (uint)r16.w >> (32-12);                      } else r16.w = (uint)r21.y >> 12;
                      r21.xy = (int2)r21.yz & int2(4095,1023);
                      r23.xyzw = (uint4)r23.xyzw;
                      r22.xy = r18.xy * r23.zw + float2(0.5,0.5);
                      r24.xy = float2(-0.5,-0.5) + r23.zw;
                      r22.xy = min(r24.xy, r22.xy);
                      r24.x = (uint)r21.x;
                      r24.y = (uint)r16.w;
                      r22.xy = r24.xy + r22.xy;
                      r22.xy = invBcTexSizes.zw * r22.xy;
                      r22.z = (uint)r21.y;
                      r23.xyzw = r23.xyzw * r17.xzyw;
                      r23.xyzw = materialTexBC3.SampleGrad(computeSpritesSampler_s, r22.xyz, r23.xyxx, r23.zwzz).xyzw;
                      r23.xyzw = r23.xyzw + -r27.xyzw;
                      r27.xyzw = r15.xxxx * r23.xyzw + r27.xyzw;
                    }
                  }
                  r16.w = (uint)r22.w;
                  r16.w = 0.00392156886 * r16.w;
                  r18.w = dot(r27.xyz, float3(0.212599993,0.715200007,0.0722000003));
                  r22.xyz = r18.www + -r27.xyz;
                  r22.xyz = r16.www * r22.xyz + r27.xyz;
                  if (8 == 0) r23.x = 0; else if (8+10 < 32) {                   r23.x = (uint)r21.z << (32-(8 + 10)); r23.x = (uint)r23.x >> (32-8);                  } else r23.x = (uint)r21.z >> 10;
                  if (8 == 0) r23.y = 0; else if (8+18 < 32) {                   r23.y = (uint)r21.z << (32-(8 + 18)); r23.y = (uint)r23.y >> (32-8);                  } else r23.y = (uint)r21.z >> 18;
                  if (1 == 0) r23.z = 0; else if (1+30 < 32) {                   r23.z = (uint)r21.z << (32-(1 + 30)); r23.z = (uint)r23.z >> (32-1);                  } else r23.z = (uint)r21.z >> 30;
                  r21.xy = (uint2)r23.xy;
                  r16.w = 0.00392156886 * r21.y;
                  r18.w = (int)r21.w & 255;
                  r18.w = (uint)r18.w;
                  r22.w = cmp(r14.z == 0.000000);
                  r23.xy = cmp(r21.xy == float2(255,0));
                  r21.y = r22.w ? r23.x : 0;
                  r21.y = r23.y ? r21.y : 0;
                  r22.w = cmp(r18.w == 255.000000);
                  r21.y = r22.w ? r21.y : 0;
                  r22.w = max(9.99999975e-05, r27.w);
                  r23.xyw = saturate(r22.xyz / r22.www);
                  r23.xyw = -r14.zzz * float3(0.00392156886,0.00392156886,0.00392156886) + r23.xyw;
                  r23.xyw = max(float3(0,0,0), r23.xyw);
                  r14.z = r21.x * 0.00392156886 + -r15.y;
                  r14.z = max(9.99999975e-05, r14.z);
                  r23.xyw = r23.xyw / r14.zzz;
                  r23.xyw = min(float3(1,1,1), r23.xyw);
                  r14.z = r18.w * 0.00392156886 + -r16.w;
                  r23.xyw = r23.xyw * r14.zzz + r16.www;
                  r24.xyz = cmp(float3(0.0404499993,0.0404499993,0.0404499993) >= r23.xyw);
                  r25.xyz = float3(0.0773993805,0.0773993805,0.0773993805) * r23.xyw;
                  r23.xyw = float3(0.0549999997,0.0549999997,0.0549999997) + r23.xyw;
                  r23.xyw = float3(0.947867334,0.947867334,0.947867334) * abs(r23.xyw);
                  r23.xyw = log2(r23.xyw);
                  r23.xyw = float3(2.4000001,2.4000001,2.4000001) * r23.xyw;
                  r23.xyw = exp2(r23.xyw);
                  r23.xyw = r24.xyz ? r25.xyz : r23.xyw;
                  r23.xyw = r23.xyw * r27.www;
                  r27.xyz = r21.yyy ? r22.xyz : r23.xyw;
                  r18.z = (uint)r12.w;
                  r8.xyz = lmapTex.SampleLevel(computeSpritesSampler_s, r18.xyz, 0).xyz;
                  r14.z = (int)r19.x & 255;
                  r14.z = (uint)r14.z;
                  r24.x = 0.00392156886 * r14.z;
                  if (8 == 0) r21.x = 0; else if (8+8 < 32) {                   r21.x = (uint)r19.x << (32-(8 + 8)); r21.x = (uint)r21.x >> (32-8);                  } else r21.x = (uint)r19.x >> 8;
                  if (8 == 0) r21.y = 0; else if (8+16 < 32) {                   r21.y = (uint)r19.x << (32-(8 + 16)); r21.y = (uint)r21.y >> (32-8);                  } else r21.y = (uint)r19.x >> 16;
                  r21.xy = (uint2)r21.xy;
                  r24.yz = float2(0.00392156886,0.00392156886) * r21.xy;
                  r14.z = (uint)r19.x >> 24;
                  r24.w = (uint)r14.z;
                  r25.xyzw = r24.xyzw * r8.xyzw;
                  r8.x = cmp(r15.z >= 0.984375);
                  r8.y = 1.01587307 * r15.z;
                  r8.z = r15.z * 64 + -63;
                  r8.x = r8.x ? r8.z : r8.y;
                  r8.x = max(9.99999994e-09, r8.x);
                  r8.x = rcp(r8.x);
                  r8.y = f16tof32(r20.x);
                  r8.z = f16tof32(r14.x);
                  r14.z = cmp(r8.z != 1.000000);
                  r22.xyz = r27.xyz / r22.www;
                  r15.y = r8.w * r24.w + r27.w;
                  r26.w = saturate(r15.y * r8.z + -r8.z);
                  r26.xyz = r26.www * r22.xyz;
                  r22.xyzw = r14.zzzz ? r26.xyzw : r27.xyzw;
                  r9.y = r26.w;
                  r21.xy = r14.zz ? r9.xy : r25.ww;
                  r8.z = cmp(r8.x < r1.z);
                  r9.y = -r8.x + r1.z;
                  r9.y = saturate(r9.y * r8.y);
                  r8.z = r8.z ? r9.y : 1;
                  r23.xy = -r8.xx + r0.zw;
                  r8.xy = r23.xy * r8.yy;
                  r8.xy = min(float2(1,1), abs(r8.xy));
                  r8.x = r8.z * r8.x;
                  r8.x = r8.x * r8.y;
                  r22.xyzw = r22.xyzw * r8.xxxx;
                  r26.xyzw = r22.wxyz * r21.xxxx;
                  if (r23.z != 0) {
                    r8.x = r21.y * r8.x;
                    r8.y = (uint)r21.z >> 31;
                    if (r8.y != 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r22.xyz, r12.w, l(24), t3.xyzx
                    r22.x = computeSpritesSampler[]..swiz;
                    r22.y = computeSpritesSampler[]..swiz;
                    r22.z = computeSpritesSampler[]..swiz;
                      r8.y = (uint)r22.x >> 28;
                      r8.y = 1 << (int)r8.y;
                      if (4 == 0) r23.x = 0; else if (4+24 < 32) {                       r23.x = (uint)r22.y << (32-(4 + 24)); r23.x = (uint)r23.x >> (32-4);                      } else r23.x = (uint)r22.y >> 24;
                      if (12 == 0) r23.y = 0; else if (12+16 < 32) {                       r23.y = (uint)r22.x << (32-(12 + 16)); r23.y = (uint)r23.y >> (32-12);                      } else r23.y = (uint)r22.x >> 16;
                      if (10 == 0) r23.z = 0; else if (10+12 < 32) {                       r23.z = (uint)r22.z << (32-(10 + 12)); r23.z = (uint)r23.z >> (32-10);                      } else r23.z = (uint)r22.z >> 12;
                      r8.z = 1 << (int)r23.x;
                      r9.y = (int)r22.y & 4095;
                      r27.xyzw = (uint4)r8.yzyz;
                      r8.yz = r18.xy * r27.zw + float2(0.5,0.5);
                      r21.yz = float2(-0.5,-0.5) + r27.zw;
                      r8.yz = min(r21.yz, r8.yz);
                      r23.x = (uint)r23.y;
                      r23.y = (uint)r9.y;
                      r21.yz = r23.xy + r8.yz;
                      r28.xy = invMaskTexSizes.xy * r21.yz;
                      r28.z = (uint)r23.z;
                      r17.xyzw = r27.xyzw * r17.xzyw;
                      r9.y = materialTexMask.SampleGrad(computeSpritesSampler_s, r28.xyz, r17.y, r17.w).x;
                      r12.w = cmp(0 < r14.y);
                      if (r12.w != 0) {
                        if (12 == 0) r12.w = 0; else if (12+12 < 32) {                         r12.w = (uint)r22.y << (32-(12 + 12)); r12.w = (uint)r12.w >> (32-12);                        } else r12.w = (uint)r22.y >> 12;
                        r14.y = (int)r22.z & 4095;
                        r22.x = (uint)r12.w;
                        r22.y = (uint)r14.y;
                        r8.yz = r22.xy + r8.yz;
                        r28.xy = invMaskTexSizes.xy * r8.yz;
                        r8.y = materialTexMask.SampleGrad(computeSpritesSampler_s, r28.xyz, r17.y, r17.w).x;
                        r8.y = r8.y + -r9.y;
                        r9.y = r15.x * r8.y + r9.y;
                      }
                    } else {
                      r9.y = 1;
                    }
                    r8.x = r9.y * r8.x;
                    r8.y = (uint)r14.x >> 16;
                    r8.y = f16tof32(r8.y);
                    if (1 == 0) r8.z = 0; else if (1+21 < 32) {                     r8.z = (uint)r21.w << (32-(1 + 21)); r8.z = (uint)r8.z >> (32-1);                    } else r8.z = (uint)r21.w >> 21;
                    r9.y = dot(r25.xyz, float3(0.298999995,0.587000012,0.114));
                    r9.y = max(9.99999975e-05, r9.y);
                    r9.y = max(relHDRExposure.x, r9.y);
                    r9.y = r9.y * r8.y;
                    r8.y = r8.z ? r8.y : r9.y;
                    r8.x = r8.x * r8.y;
                    r25.xyz = r24.xyz * r8.xxx + r25.xyz;
                  }
                  r8.x = -r22.w * r21.x + 1;
                  r12.y = r12.y * r8.x;
                  r8.y = cmp(r12.y < 0.800000012);
                  r8.z = cmp(0.200000003 < r26.x);
                  r8.y = (int)r8.z | (int)r8.y;
                  if (r8.y != 0) {
                    r8.y = cmp(r15.z >= 0.000492187508);
                    if (r8.y != 0) {
                      r8.y = 1 + -r15.z;
                      r14.xy = float2(4,0);
                      while (true) {
                        r8.z = cmp((int)r14.y >= 4);
                        if (r8.z != 0) break;
                        r8.z = (uint)r14.y << 2;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured r8.z, vThreadIDInGroupFlattened.x, r8.z, g0.xxxx
                      r8.z = computeSpritesSampler[]..swiz;
                        r8.z = cmp(r8.z >= r8.y);
                        if (r8.z != 0) {
                          r14.x = r14.y;
                          break;
                        }
                        r9.z = (int)r14.y + 1;
                        r14.xy = r9.wz;
                      }
                      floatZSampler[vThreadIDInGroupFlattened.x].16 = g0.x;
                      floatZSampler[vThreadIDInGroupFlattened.x].16 = g1.x;
                      r8.z = (uint)r14.x << 2;
                      r9.y = (int)r8.z + -4;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured r9.y, vThreadIDInGroupFlattened.x, r9.y, g1.xxxx
                    r9.y = computeSpritesSampler[]..swiz;
                      r9.y = r14.x ? r9.y : 1;
                      r9.z = 3;
                      while (true) {
                        r12.w = cmp((int)r9.z < 0);
                        if (r12.w != 0) break;
                        r12.w = cmp((int)r9.z >= (int)r14.x);
                        if (r12.w != 0) {
                          r12.w = (uint)r9.z << 2;
                          r14.y = (int)r12.w + 4;
                        // Known bad code for instruction (needs manual fix):
                                                ld_structured r14.z, vThreadIDInGroupFlattened.x, r12.w, g0.xxxx
                        r14.z = computeSpritesSampler[]..swiz;
                          floatZSampler[vThreadIDInGroupFlattened.x].r14.y = g0.x;
                        // Known bad code for instruction (needs manual fix):
                                                ld_structured r12.w, vThreadIDInGroupFlattened.x, r12.w, g1.xxxx
                        r12.w = computeSpritesSampler[]..swiz;
                          r12.w = r12.w * r8.x;
                          floatZSampler[vThreadIDInGroupFlattened.x].r14.y = g1.x;
                        }
                        r9.z = (int)r9.z + -1;
                      }
                      floatZSampler[vThreadIDInGroupFlattened.x].r8.z = g0.x;
                      r8.x = r9.y * r8.x;
                      floatZSampler[vThreadIDInGroupFlattened.x].r8.z = g1.x;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured r8.x, vThreadIDInGroupFlattened.x, l(16), g0.xxxx
                    r8.x = computeSpritesSampler[]..swiz;
                      r8.x = cmp(r8.x != 1000000015047466219876688855040.000000);
                      if (r8.x != 0) {
                        r8.x = 2;
                        while (true) {
                          r8.y = cmp((int)r8.x >= 4);
                          if (r8.y != 0) break;
                          r8.y = (uint)r8.x << 2;
                        // Known bad code for instruction (needs manual fix):
                                                ld_structured r8.z, vThreadIDInGroupFlattened.x, r8.y, g0.xxxx
                        r8.z = computeSpritesSampler[]..swiz;
                          r8.y = (int)r8.y + -4;
                        // Known bad code for instruction (needs manual fix):
                                                ld_structured r9.y, vThreadIDInGroupFlattened.x, r8.y, g0.xxxx
                        r9.y = computeSpritesSampler[]..swiz;
                          r8.z = -r9.y + r8.z;
                        // Known bad code for instruction (needs manual fix):
                                                ld_structured r9.yz, vThreadIDInGroupFlattened.x, r8.y, g1.xxyx
                        r9.y = computeSpritesSampler[]..swiz;
                        r9.z = computeSpritesSampler[]..swiz;
                          r8.y = r9.y + -r9.z;
                          r8.y = r8.z * r8.y;
                          x8[r8.x+0].x = r8.y;
                          r8.x = (int)r8.x + 1;
                        }
                        r8.x = x8[2].x;
                        r8.y = x8[3].x;
                        r8.x = cmp(r8.y < r8.x);
                        r8.xy = r8.xx ? float2(3,2) : float2(2,1);
                        r8.z = 2;
                        while (true) {
                          r9.y = cmp((int)r8.z >= 4);
                          if (r9.y != 0) break;
                          r9.y = cmp((int)r8.z >= (int)r8.x);
                          if (r9.y != 0) {
                            r9.y = (uint)r8.z << 2;
                            r9.z = (int)r9.y + 4;
                          // Known bad code for instruction (needs manual fix):
                                                    ld_structured r9.z, vThreadIDInGroupFlattened.x, r9.z, g0.xxxx
                          r9.z = computeSpritesSampler[]..swiz;
                            floatZSampler[vThreadIDInGroupFlattened.x].r9.y = g0.x;
                          }
                          r8.z = (int)r8.z + 1;
                        }
                        r8.x = 1;
                        while (true) {
                          r8.z = cmp((int)r8.x >= 4);
                          if (r8.z != 0) break;
                          r8.z = cmp((int)r8.x >= (int)r8.y);
                          if (r8.z != 0) {
                            r8.z = (uint)r8.x << 2;
                            r9.y = (int)r8.z + 4;
                          // Known bad code for instruction (needs manual fix):
                                                    ld_structured r9.y, vThreadIDInGroupFlattened.x, r9.y, g1.xxxx
                          r9.y = computeSpritesSampler[]..swiz;
                            floatZSampler[vThreadIDInGroupFlattened.x].r8.z = g1.x;
                          }
                          r8.x = (int)r8.x + 1;
                        }
                      }
                    }
                  }
                  if (r3.w != 0) {
                    r8.xyz = lmapTex.SampleLevel(computeSpritesPointSampler_s, r18.xyz, 0).xyz;
                    r26.x = 1;
                  } else {
                    r9.yz = (uint2)r20.xw >> int2(16,16);
                    r15.y = f16tof32(r20.w);
                    r15.xz = f16tof32(r9.yz);
                    r9.yz = (uint2)r19.yz >> int2(16,16);
                    r17.xy = f16tof32(r19.yz);
                    r17.zw = f16tof32(r9.yz);
                    r17.xyz = r17.xzy * r26.xxx;
                    r20.x = r19.w;
                    r18.xyz = r20.xyz * r26.xxx;
                    r19.xyz = r26.yzw * r25.xyz + -r17.xyz;
                    r17.xyz = r17.www * r19.xyz + r17.xyz;
                    r8.xyz = r17.xyz * r15.xyz + r18.xyz;
                  }
                  r8.xyz = relHDRExposure.yyy * r8.xyz;
                  r9.y = 1 + -r26.x;
                  r13.yzw = r16.xyz * r9.yyy + r8.xyz;
                }
              } else {
                r13.yzw = r16.xyz;
              }
            } else {
              r13.yzw = r16.xyz;
            }
          }
          r10.xyzw = r13.xyzw;
          r7.y = r12.y;
          r11.w = r14.w;
        }
        r4.xyzw = r10.yzwx;
        r1.w = r7.y;
        r0.y = cmp(1 < (uint)r0.y);
        if (r0.y != 0) {
          r2.w = 0;
          r8.w = 0.00392156886;
          r9.xw = float2(1,5.60519386e-45);
          r10.xyzw = r4.wxyz;
          r0.y = r1.w;
          r1.x = r11.w;
          r7.y = r1.y;
          while (true) {
            if (r7.y == 0) break;
            r7.z = firstbitlow((uint)r7.y);
            r7.w = 1 << (int)r7.z;
            r7.w = ~(int)r7.w;
            r7.y = (int)r7.w & (int)r7.y;
            r2.z = (int)r7.z + 32;
            r7.z = spriteCullRough.Load(r2.xyzw).x;
            r2.z = (uint)r2.z << 5;
            r12.xyzw = r10.xyzw;
            r7.w = r0.y;
            r13.w = r1.x;
            r14.x = r7.z;
            while (true) {
              if (r14.x == 0) break;
              r14.y = firstbitlow((uint)r14.x);
              r14.z = 1 << (int)r14.y;
              r14.z = ~(int)r14.z;
              r14.x = (int)r14.z & (int)r14.x;
              r14.y = (int)r2.z + (int)r14.y;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=32)(mixed,mixed,mixed,mixed) r15.xyz, r14.y, l(16), t1.xyzx
            r15.x = computeSpritesSampler[]..swiz;
            r15.y = computeSpritesSampler[]..swiz;
            r15.z = computeSpritesSampler[]..swiz;
              r16.xyz = r12.yzw;
              r14.z = r12.x;
              while (true) {
                break;
              }
              r12.x = r14.z;
              r14.w = cmp(r0.x < r15.z);
              r14.w = (int)r3.x | (int)r14.w;
              if (r14.w != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=32)(mixed,mixed,mixed,mixed) r17.xyzw, r14.y, l(0), t1.xyzw
              r17.x = computeSpritesSampler[]..swiz;
              r17.y = computeSpritesSampler[]..swiz;
              r17.z = computeSpritesSampler[]..swiz;
              r17.w = computeSpritesSampler[]..swiz;
                r18.xyzw = r17.xyzw * r6.xyzw;
                r18.xy = r18.xz + r18.yw;
                r18.xy = r18.xy + r15.xy;
                r15.xy = r18.xy * float2(2,2) + float2(-1,-1);
                r14.w = max(abs(r15.x), abs(r15.y));
                r14.w = cmp(r14.w < 1);
                if (r14.w != 0) {
                  if (r3.y != 0) {
                    r15.xy = cmp(float2(0.995000005,0.995000005) < r18.xy);
                    r14.w = (int)r15.y | (int)r15.x;
                    r15.xy = cmp(r18.xy < float2(0.00499999989,0.00499999989));
                    r15.x = (int)r15.y | (int)r15.x;
                    r14.w = (int)r14.w | (int)r15.x;
                    if (r14.w != 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r14.w, r14.y, l(52), t2.xxxx
                    r14.w = computeSpritesSampler[]..swiz;
                      if (1 == 0) r14.w = 0; else if (1+22 < 32) {                       r14.w = (uint)r14.w << (32-(1 + 22)); r14.w = (uint)r14.w >> (32-1);                      } else r14.w = (uint)r14.w >> 22;
                      r12.yzw = r14.www ? float3(0.75,0.300000012,0) : float3(0.75,0.75,0.75);
                      r13.w = 1;
                    } else {
                      r14.w = cmp(r13.w != 1.000000);
                      r15.x = cmp(r16.x == 0.000000);
                      r15.yw = cmp(r16.yx >= float2(1,1));
                      r16.w = 0.0500000007 + r16.x;
                      r19.xyz = float3(-0.0500000007,0,0.0500000007) + r16.yxy;
                      r19.yz = r15.yy ? r16.wy : r19.yz;
                      r20.xy = float2(0,-0.0500000007) + r16.xy;
                      r21.xy = float2(0.0500000007,0) + r16.xy;
                      r20.yw = r15.ww ? r20.xy : r21.xy;
                      r15.w = cmp(r16.y != 0.000000);
                      r20.z = r15.w ? r19.x : r16.y;
                      r15.yw = r15.yy ? r20.yw : r20.xz;
                      r13.xy = r15.xx ? r19.yz : r15.yw;
                      r13.z = r16.z;
                      r19.xyzw = r14.wwww ? float4(0,0,0,1) : r13.xyzw;
                      r13.xyz = r16.xyz;
                      r13.xyzw = r7.xxxx ? r19.xyzw : r13.xyzw;
                      r12.yzw = r13.xyz;
                    }
                  } else {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r19.xyzw, r14.y, l(0), t2.xyzw
                  r19.x = computeSpritesSampler[]..swiz;
                  r19.y = computeSpritesSampler[]..swiz;
                  r19.z = computeSpritesSampler[]..swiz;
                  r19.w = computeSpritesSampler[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r20.xyzw, r14.y, l(16), t2.zxyw
                  r20.x = computeSpritesSampler[]..swiz;
                  r20.y = computeSpritesSampler[]..swiz;
                  r20.z = computeSpritesSampler[]..swiz;
                  r20.w = computeSpritesSampler[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r13.x, r14.y, l(32), t2.xxxx
                  r13.x = computeSpritesSampler[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r21.xyzw, r14.y, l(40), t2.xyzw
                  r21.x = computeSpritesSampler[]..swiz;
                  r21.y = computeSpritesSampler[]..swiz;
                  r21.z = computeSpritesSampler[]..swiz;
                  r21.w = computeSpritesSampler[]..swiz;
                    r13.yz = (uint2)r21.xy >> int2(24,24);
                    r13.yz = (uint2)r13.yz;
                    r15.xy = float2(0.00390625,0.00392156886) * r13.yz;
                    if (4 == 0) r22.x = 0; else if (4+26 < 32) {                     r22.x = (uint)r21.z << (32-(4 + 26)); r22.x = (uint)r22.x >> (32-4);                    } else r22.x = (uint)r21.z >> 26;
                    if (4 == 0) r22.y = 0; else if (4+16 < 32) {                     r22.y = (uint)r21.w << (32-(4 + 16)); r22.y = (uint)r22.y >> (32-4);                    } else r22.y = (uint)r21.w >> 16;
                    if (1 == 0) r22.z = 0; else if (1+20 < 32) {                     r22.z = (uint)r21.w << (32-(1 + 20)); r22.z = (uint)r22.z >> (32-1);                    } else r22.z = (uint)r21.w >> 20;
                    if (8 == 0) r22.w = 0; else if (8+8 < 32) {                     r22.w = (uint)r21.w << (32-(8 + 8)); r22.w = (uint)r22.w >> (32-8);                    } else r22.w = (uint)r21.w >> 8;
                    r23.xyzw = int4(1,1,1,1) << (int4)r22.xyxy;
                    if (r22.z != 0) {
                      if (12 == 0) r14.w = 0; else if (12+12 < 32) {                       r14.w = (uint)r21.x << (32-(12 + 12)); r14.w = (uint)r14.w >> (32-12);                      } else r14.w = (uint)r21.x >> 12;
                      r22.xy = (int2)r21.xz & int2(4095,1023);
                      r24.xyzw = (uint4)r23.zwzw;
                      r25.xy = r18.xy * r24.zw + float2(0.5,0.5);
                      r25.zw = float2(-0.5,-0.5) + r24.zw;
                      r25.xy = min(r25.xy, r25.zw);
                      r26.xz = (uint2)r22.xy;
                      r26.y = (uint)r14.w;
                      r22.xz = r26.xy + r25.xy;
                      r26.xy = invBcTexSizes.xy * r22.xz;
                      r24.xyzw = r24.xyzw * r17.xzyw;
                      r27.xyzw = materialTexBC7.SampleGrad(computeSpritesSampler_s, r26.xyz, r24.xyxx, r24.zwzz).xyzw;
                      r14.w = cmp(0 < r13.y);
                      if (r14.w != 0) {
                        r14.w = (int)r21.y & 4095;
                        if (12 == 0) r15.w = 0; else if (12+12 < 32) {                         r15.w = (uint)r21.y << (32-(12 + 12)); r15.w = (uint)r15.w >> (32-12);                        } else r15.w = (uint)r21.y >> 12;
                        r22.x = (uint)r14.w;
                        r22.y = (uint)r15.w;
                        r22.xy = r25.xy + r22.xy;
                        r26.xy = invBcTexSizes.xy * r22.xy;
                        r24.xyzw = materialTexBC7.SampleGrad(computeSpritesSampler_s, r26.xyz, r24.xyxx, r24.zwzz).xyzw;
                        r24.xyzw = r24.xyzw + -r27.xyzw;
                        r27.xyzw = r15.xxxx * r24.xyzw + r27.xyzw;
                      }
                    } else {
                      if (12 == 0) r14.w = 0; else if (12+12 < 32) {                       r14.w = (uint)r21.x << (32-(12 + 12)); r14.w = (uint)r14.w >> (32-12);                      } else r14.w = (uint)r21.x >> 12;
                      r22.xy = (int2)r21.xz & int2(4095,1023);
                      r24.xyzw = (uint4)r23.zwzw;
                      r25.xy = r18.xy * r24.zw + float2(0.5,0.5);
                      r25.zw = float2(-0.5,-0.5) + r24.zw;
                      r25.xy = min(r25.xy, r25.zw);
                      r26.x = (uint)r22.x;
                      r26.y = (uint)r14.w;
                      r22.xz = r26.xy + r25.xy;
                      r25.xy = invBcTexSizes.zw * r22.xz;
                      r25.z = (uint)r22.y;
                      r24.xyzw = r24.xyzw * r17.xzyw;
                      r27.xyzw = materialTexBC3.SampleGrad(computeSpritesSampler_s, r25.xyz, r24.xyxx, r24.zwzz).xyzw;
                      r14.w = cmp(0 < r13.y);
                      if (r14.w != 0) {
                        if (12 == 0) r14.w = 0; else if (12+12 < 32) {                         r14.w = (uint)r21.y << (32-(12 + 12)); r14.w = (uint)r14.w >> (32-12);                        } else r14.w = (uint)r21.y >> 12;
                        r21.xy = (int2)r21.yz & int2(4095,1023);
                        r23.xyzw = (uint4)r23.xyzw;
                        r22.xy = r18.xy * r23.zw + float2(0.5,0.5);
                        r24.xy = float2(-0.5,-0.5) + r23.zw;
                        r22.xy = min(r24.xy, r22.xy);
                        r24.x = (uint)r21.x;
                        r24.y = (uint)r14.w;
                        r22.xy = r24.xy + r22.xy;
                        r22.xy = invBcTexSizes.zw * r22.xy;
                        r22.z = (uint)r21.y;
                        r23.xyzw = r23.xyzw * r17.xzyw;
                        r23.xyzw = materialTexBC3.SampleGrad(computeSpritesSampler_s, r22.xyz, r23.xyxx, r23.zwzz).xyzw;
                        r23.xyzw = r23.xyzw + -r27.xyzw;
                        r27.xyzw = r15.xxxx * r23.xyzw + r27.xyzw;
                      }
                    }
                    r14.w = (uint)r22.w;
                    r14.w = 0.00392156886 * r14.w;
                    r15.w = dot(r27.xyz, float3(0.212599993,0.715200007,0.0722000003));
                    r22.xyz = r15.www + -r27.xyz;
                    r22.xyz = r14.www * r22.xyz + r27.xyz;
                    if (8 == 0) r23.x = 0; else if (8+10 < 32) {                     r23.x = (uint)r21.z << (32-(8 + 10)); r23.x = (uint)r23.x >> (32-8);                    } else r23.x = (uint)r21.z >> 10;
                    if (8 == 0) r23.y = 0; else if (8+18 < 32) {                     r23.y = (uint)r21.z << (32-(8 + 18)); r23.y = (uint)r23.y >> (32-8);                    } else r23.y = (uint)r21.z >> 18;
                    if (1 == 0) r23.z = 0; else if (1+30 < 32) {                     r23.z = (uint)r21.z << (32-(1 + 30)); r23.z = (uint)r23.z >> (32-1);                    } else r23.z = (uint)r21.z >> 30;
                    r21.xy = (uint2)r23.xy;
                    r14.w = 0.00392156886 * r21.y;
                    r15.w = (int)r21.w & 255;
                    r15.w = (uint)r15.w;
                    r16.w = cmp(r13.z == 0.000000);
                    r23.xy = cmp(r21.xy == float2(255,0));
                    r16.w = r16.w ? r23.x : 0;
                    r16.w = r23.y ? r16.w : 0;
                    r18.w = cmp(r15.w == 255.000000);
                    r16.w = r16.w ? r18.w : 0;
                    r18.w = max(9.99999975e-05, r27.w);
                    r23.xyw = saturate(r22.xyz / r18.www);
                    r23.xyw = -r13.zzz * float3(0.00392156886,0.00392156886,0.00392156886) + r23.xyw;
                    r23.xyw = max(float3(0,0,0), r23.xyw);
                    r13.z = r21.x * 0.00392156886 + -r15.y;
                    r13.z = max(9.99999975e-05, r13.z);
                    r23.xyw = r23.xyw / r13.zzz;
                    r23.xyw = min(float3(1,1,1), r23.xyw);
                    r13.z = r15.w * 0.00392156886 + -r14.w;
                    r23.xyw = r23.xyw * r13.zzz + r14.www;
                    r24.xyz = cmp(float3(0.0404499993,0.0404499993,0.0404499993) >= r23.xyw);
                    r25.xyz = float3(0.0773993805,0.0773993805,0.0773993805) * r23.xyw;
                    r23.xyw = float3(0.0549999997,0.0549999997,0.0549999997) + r23.xyw;
                    r23.xyw = float3(0.947867334,0.947867334,0.947867334) * abs(r23.xyw);
                    r23.xyw = log2(r23.xyw);
                    r23.xyw = float3(2.4000001,2.4000001,2.4000001) * r23.xyw;
                    r23.xyw = exp2(r23.xyw);
                    r23.xyw = r24.xyz ? r25.xyz : r23.xyw;
                    r23.xyw = r23.xyw * r27.www;
                    r27.xyz = r16.www ? r22.xyz : r23.xyw;
                    r18.z = (uint)r14.y;
                    r8.xyz = lmapTex.SampleLevel(computeSpritesSampler_s, r18.xyz, 0).xyz;
                    r13.z = (int)r19.x & 255;
                    r13.z = (uint)r13.z;
                    r22.x = 0.00392156886 * r13.z;
                    if (8 == 0) r15.y = 0; else if (8+8 < 32) {                     r15.y = (uint)r19.x << (32-(8 + 8)); r15.y = (uint)r15.y >> (32-8);                    } else r15.y = (uint)r19.x >> 8;
                    if (8 == 0) r15.w = 0; else if (8+16 < 32) {                     r15.w = (uint)r19.x << (32-(8 + 16)); r15.w = (uint)r15.w >> (32-8);                    } else r15.w = (uint)r19.x >> 16;
                    r15.yw = (uint2)r15.yw;
                    r22.yz = float2(0.00392156886,0.00392156886) * r15.yw;
                    r13.z = (uint)r19.x >> 24;
                    r22.w = (uint)r13.z;
                    r24.xyzw = r22.xyzw * r8.xyzw;
                    r8.x = cmp(r15.z >= 0.984375);
                    r8.y = 1.01587307 * r15.z;
                    r8.z = r15.z * 64 + -63;
                    r8.x = r8.x ? r8.z : r8.y;
                    r8.x = max(9.99999994e-09, r8.x);
                    r8.x = rcp(r8.x);
                    r8.y = f16tof32(r20.x);
                    r8.z = f16tof32(r13.x);
                    r13.z = cmp(r8.z != 1.000000);
                    r23.xyw = r27.xyz / r18.www;
                    r14.w = r8.w * r22.w + r27.w;
                    r25.w = saturate(r14.w * r8.z + -r8.z);
                    r25.xyz = r25.www * r23.xyw;
                    r26.xyzw = r13.zzzz ? r25.xyzw : r27.xyzw;
                    r9.y = r25.w;
                    r15.yw = r13.zz ? r9.xy : r24.ww;
                    r8.z = cmp(r8.x < r1.z);
                    r9.y = -r8.x + r1.z;
                    r9.y = saturate(r9.y * r8.y);
                    r8.z = r8.z ? r9.y : 1;
                    r21.xy = -r8.xx + r0.zw;
                    r8.xy = r21.xy * r8.yy;
                    r8.xy = min(float2(1,1), abs(r8.xy));
                    r8.x = r8.z * r8.x;
                    r8.x = r8.x * r8.y;
                    r25.xyzw = r26.xyzw * r8.xxxx;
                    r26.xyzw = r25.wxyz * r15.yyyy;
                    if (r23.z != 0) {
                      r8.x = r15.w * r8.x;
                      r8.y = (uint)r21.z >> 31;
                      if (r8.y != 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r21.xyz, r14.y, l(24), t3.xyzx
                      r21.x = computeSpritesSampler[]..swiz;
                      r21.y = computeSpritesSampler[]..swiz;
                      r21.z = computeSpritesSampler[]..swiz;
                        r8.y = (uint)r21.x >> 28;
                        r8.y = 1 << (int)r8.y;
                        if (4 == 0) r23.x = 0; else if (4+24 < 32) {                         r23.x = (uint)r21.y << (32-(4 + 24)); r23.x = (uint)r23.x >> (32-4);                        } else r23.x = (uint)r21.y >> 24;
                        if (12 == 0) r23.y = 0; else if (12+16 < 32) {                         r23.y = (uint)r21.x << (32-(12 + 16)); r23.y = (uint)r23.y >> (32-12);                        } else r23.y = (uint)r21.x >> 16;
                        if (10 == 0) r23.z = 0; else if (10+12 < 32) {                         r23.z = (uint)r21.z << (32-(10 + 12)); r23.z = (uint)r23.z >> (32-10);                        } else r23.z = (uint)r21.z >> 12;
                        r8.z = 1 << (int)r23.x;
                        r9.y = (int)r21.y & 4095;
                        r27.xyzw = (uint4)r8.yzyz;
                        r8.yz = r18.xy * r27.zw + float2(0.5,0.5);
                        r14.yw = float2(-0.5,-0.5) + r27.zw;
                        r8.yz = min(r14.yw, r8.yz);
                        r23.x = (uint)r23.y;
                        r23.y = (uint)r9.y;
                        r14.yw = r23.xy + r8.yz;
                        r25.xy = invMaskTexSizes.xy * r14.yw;
                        r25.z = (uint)r23.z;
                        r17.xyzw = r27.xyzw * r17.xzyw;
                        r9.y = materialTexMask.SampleGrad(computeSpritesSampler_s, r25.xyz, r17.y, r17.w).x;
                        r13.y = cmp(0 < r13.y);
                        if (r13.y != 0) {
                          if (12 == 0) r13.y = 0; else if (12+12 < 32) {                           r13.y = (uint)r21.y << (32-(12 + 12)); r13.y = (uint)r13.y >> (32-12);                          } else r13.y = (uint)r21.y >> 12;
                          r13.z = (int)r21.z & 4095;
                          r21.xy = (uint2)r13.yz;
                          r8.yz = r21.xy + r8.yz;
                          r25.xy = invMaskTexSizes.xy * r8.yz;
                          r8.y = materialTexMask.SampleGrad(computeSpritesSampler_s, r25.xyz, r17.y, r17.w).x;
                          r8.y = r8.y + -r9.y;
                          r9.y = r15.x * r8.y + r9.y;
                        }
                      } else {
                        r9.y = 1;
                      }
                      r8.x = r9.y * r8.x;
                      r8.y = (uint)r13.x >> 16;
                      r8.y = f16tof32(r8.y);
                      if (1 == 0) r8.z = 0; else if (1+21 < 32) {                       r8.z = (uint)r21.w << (32-(1 + 21)); r8.z = (uint)r8.z >> (32-1);                      } else r8.z = (uint)r21.w >> 21;
                      r9.y = dot(r24.xyz, float3(0.298999995,0.587000012,0.114));
                      r9.y = max(9.99999975e-05, r9.y);
                      r9.y = max(relHDRExposure.x, r9.y);
                      r9.y = r9.y * r8.y;
                      r8.y = r8.z ? r8.y : r9.y;
                      r8.x = r8.x * r8.y;
                      r24.xyz = r22.xyz * r8.xxx + r24.xyz;
                    }
                    r8.x = -r25.w * r15.y + 1;
                    r7.w = r8.x * r7.w;
                    r8.y = cmp(r7.w < 0.800000012);
                    r8.z = cmp(0.200000003 < r26.x);
                    r8.y = (int)r8.z | (int)r8.y;
                    if (r8.y != 0) {
                      r8.y = cmp(r15.z >= 0.000492187508);
                      if (r8.y != 0) {
                        r8.y = 1 + -r15.z;
                        r13.xy = float2(4,0);
                        while (true) {
                          r8.z = cmp((int)r13.y >= 4);
                          if (r8.z != 0) break;
                          r8.z = (uint)r13.y << 2;
                        // Known bad code for instruction (needs manual fix):
                                                ld_structured r8.z, vThreadIDInGroupFlattened.x, r8.z, g0.xxxx
                        r8.z = computeSpritesSampler[]..swiz;
                          r8.z = cmp(r8.z >= r8.y);
                          if (r8.z != 0) {
                            r13.x = r13.y;
                            break;
                          }
                          r9.z = (int)r13.y + 1;
                          r13.xy = r9.wz;
                        }
                        floatZSampler[vThreadIDInGroupFlattened.x].16 = g0.x;
                        floatZSampler[vThreadIDInGroupFlattened.x].16 = g1.x;
                        r8.z = (uint)r13.x << 2;
                        r9.y = (int)r8.z + -4;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured r9.y, vThreadIDInGroupFlattened.x, r9.y, g1.xxxx
                      r9.y = computeSpritesSampler[]..swiz;
                        r9.y = r13.x ? r9.y : 1;
                        r9.z = 3;
                        while (true) {
                          r13.y = cmp((int)r9.z < 0);
                          if (r13.y != 0) break;
                          r13.y = cmp((int)r9.z >= (int)r13.x);
                          if (r13.y != 0) {
                            r13.y = (uint)r9.z << 2;
                            r13.z = (int)r13.y + 4;
                          // Known bad code for instruction (needs manual fix):
                                                    ld_structured r14.y, vThreadIDInGroupFlattened.x, r13.y, g0.xxxx
                          r14.y = computeSpritesSampler[]..swiz;
                            floatZSampler[vThreadIDInGroupFlattened.x].r13.z = g0.x;
                          // Known bad code for instruction (needs manual fix):
                                                    ld_structured r13.y, vThreadIDInGroupFlattened.x, r13.y, g1.xxxx
                          r13.y = computeSpritesSampler[]..swiz;
                            r13.y = r13.y * r8.x;
                            floatZSampler[vThreadIDInGroupFlattened.x].r13.z = g1.x;
                          }
                          r9.z = (int)r9.z + -1;
                        }
                        floatZSampler[vThreadIDInGroupFlattened.x].r8.z = g0.x;
                        r8.x = r9.y * r8.x;
                        floatZSampler[vThreadIDInGroupFlattened.x].r8.z = g1.x;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured r8.x, vThreadIDInGroupFlattened.x, l(16), g0.xxxx
                      r8.x = computeSpritesSampler[]..swiz;
                        r8.x = cmp(r8.x != 1000000015047466219876688855040.000000);
                        if (r8.x != 0) {
                          r8.x = 2;
                          while (true) {
                            r8.y = cmp((int)r8.x >= 4);
                            if (r8.y != 0) break;
                            r8.y = (uint)r8.x << 2;
                          // Known bad code for instruction (needs manual fix):
                                                    ld_structured r8.z, vThreadIDInGroupFlattened.x, r8.y, g0.xxxx
                          r8.z = computeSpritesSampler[]..swiz;
                            r8.y = (int)r8.y + -4;
                          // Known bad code for instruction (needs manual fix):
                                                    ld_structured r9.y, vThreadIDInGroupFlattened.x, r8.y, g0.xxxx
                          r9.y = computeSpritesSampler[]..swiz;
                            r8.z = -r9.y + r8.z;
                          // Known bad code for instruction (needs manual fix):
                                                    ld_structured r9.yz, vThreadIDInGroupFlattened.x, r8.y, g1.xxyx
                          r9.y = computeSpritesSampler[]..swiz;
                          r9.z = computeSpritesSampler[]..swiz;
                            r8.y = r9.y + -r9.z;
                            r8.y = r8.z * r8.y;
                            x9[r8.x+0].x = r8.y;
                            r8.x = (int)r8.x + 1;
                          }
                          r8.x = x9[2].x;
                          r8.y = x9[3].x;
                          r8.x = cmp(r8.y < r8.x);
                          r8.xy = r8.xx ? float2(3,2) : float2(2,1);
                          r8.z = 2;
                          while (true) {
                            r9.y = cmp((int)r8.z >= 4);
                            if (r9.y != 0) break;
                            r9.y = cmp((int)r8.z >= (int)r8.x);
                            if (r9.y != 0) {
                              r9.y = (uint)r8.z << 2;
                              r9.z = (int)r9.y + 4;
                            // Known bad code for instruction (needs manual fix):
                                                        ld_structured r9.z, vThreadIDInGroupFlattened.x, r9.z, g0.xxxx
                            r9.z = computeSpritesSampler[]..swiz;
                              floatZSampler[vThreadIDInGroupFlattened.x].r9.y = g0.x;
                            }
                            r8.z = (int)r8.z + 1;
                          }
                          r8.x = 1;
                          while (true) {
                            r8.z = cmp((int)r8.x >= 4);
                            if (r8.z != 0) break;
                            r8.z = cmp((int)r8.x >= (int)r8.y);
                            if (r8.z != 0) {
                              r8.z = (uint)r8.x << 2;
                              r9.y = (int)r8.z + 4;
                            // Known bad code for instruction (needs manual fix):
                                                        ld_structured r9.y, vThreadIDInGroupFlattened.x, r9.y, g1.xxxx
                            r9.y = computeSpritesSampler[]..swiz;
                              floatZSampler[vThreadIDInGroupFlattened.x].r8.z = g1.x;
                            }
                            r8.x = (int)r8.x + 1;
                          }
                        }
                      }
                    }
                    if (r3.w != 0) {
                      r8.xyz = lmapTex.SampleLevel(computeSpritesPointSampler_s, r18.xyz, 0).xyz;
                      r26.x = 1;
                    } else {
                      r9.yz = (uint2)r20.xw >> int2(16,16);
                      r15.y = f16tof32(r20.w);
                      r15.xz = f16tof32(r9.yz);
                      r9.yz = (uint2)r19.yz >> int2(16,16);
                      r17.xy = f16tof32(r19.yz);
                      r17.zw = f16tof32(r9.yz);
                      r17.xyz = r17.xzy * r26.xxx;
                      r20.x = r19.w;
                      r18.xyz = r20.xyz * r26.xxx;
                      r19.xyz = r26.yzw * r24.xyz + -r17.xyz;
                      r17.xyz = r17.www * r19.xyz + r17.xyz;
                      r8.xyz = r17.xyz * r15.xyz + r18.xyz;
                    }
                    r8.xyz = relHDRExposure.yyy * r8.xyz;
                    r9.y = 1 + -r26.x;
                    r12.yzw = r16.xyz * r9.yyy + r8.xyz;
                  }
                } else {
                  r12.yzw = r16.xyz;
                }
              } else {
                r12.yzw = r16.xyz;
              }
            }
            r10.xyzw = r12.xyzw;
            r0.y = r7.w;
            r1.x = r13.w;
          }
          r4.xyzw = r10.yzwx;
          r1.w = r0.y;
          r11.w = r1.x;
        }
      } else {
        r11.w = 0;
      }
      r0.x = saturate(0.800000012 + -r1.w);
      r0.x = -r0.x * 1.25 + 1;
      r0.x = r0.x * r3.z;
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
      r11.xyz = r4.xyz;
      r0.x = r4.w;
      while (true) {
        break;
      }
    // No code for instruction (needs manual fix):
        store_uav_typed u5.xyzw, vThreadID.xyyy, r11.xyzw
    }
  }
  return;
}