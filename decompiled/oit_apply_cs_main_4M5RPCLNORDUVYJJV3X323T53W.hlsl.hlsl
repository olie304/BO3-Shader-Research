// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:39:59 2021

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27;
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
    r0.w = cmp(oitMaxEntries < (uint)r0.x);
    if (r0.w != 0) {
    // No code for instruction (needs manual fix):
        store_uav_typed u5.xyzw, vThreadID.xyyy, l(0.750000,0.375000,0.375000,1.000000)
    }
  } else {
    r1.w = 1;
    r3.xyz = float3(0,0,1);
    r2.w = 0;
    r0.zw = float2(-1,0);
  }
  if (r0.w == 0) {
    r0.w = (int)computeSpriteControl.x + 1023;
    r0.w = (uint)r0.w >> 10;
    r0.w = min(2, (uint)r0.w);
    if (27 == 0) r4.x = 0; else if (27+2 < 32) {     r4.x = (uint)vThreadGroupID.x << (32-(27 + 2)); r4.x = (uint)r4.x >> (32-27);    } else r4.x = (uint)vThreadGroupID.x >> 2;
    if (27 == 0) r4.y = 0; else if (27+2 < 32) {     r4.y = (uint)vThreadGroupID.y << (32-(27 + 2)); r4.y = (uint)r4.y >> (32-27);    } else r4.y = (uint)vThreadGroupID.y >> 2;
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
        r6.xyzw = (uint4)vThreadID.xyxy;
        r4.w = 0;
        r7.xyw = r5.xyw;
        r8.w = 0.00392156886;
        r9.xw = float2(1,5.60519386e-45);
        r10.x = r2.w;
        r10.yzw = r2.xyz;
        r3.w = r1.w;
        r11.x = 0;
        r11.y = r1.z;
        r11.z = r1.x;
        while (true) {
          if (r11.z == 0) break;
          r4.z = firstbitlow((uint)r11.z);
          r11.w = 1 << (int)r4.z;
          r11.w = ~(int)r11.w;
          r11.z = (int)r11.w & (int)r11.z;
          r11.w = spriteCullRough.Load(r4.xyzw).x;
          r12.x = (uint)r4.z << 5;
          r13.xyzw = r10.xyzw;
          r12.y = r3.w;
          r12.zw = r11.xy;
          r14.x = r11.w;
          while (true) {
            if (r14.x == 0) break;
            r14.y = firstbitlow((uint)r14.x);
            r14.z = 1 << (int)r14.y;
            r14.z = ~(int)r14.z;
            r14.x = (int)r14.z & (int)r14.x;
            r14.y = (int)r12.x + (int)r14.y;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=32)(mixed,mixed,mixed,mixed) r15.xyz, r14.y, l(16), t1.xyzx
          r15.x = computeSpritesSampler[]..swiz;
          r15.y = computeSpritesSampler[]..swiz;
          r15.z = computeSpritesSampler[]..swiz;
            r16.xyz = r13.yzw;
            r14.z = r13.x;
            r14.w = r12.z;
            r15.w = r12.w;
            while (true) {
              r16.w = cmp((uint)r14.w < (uint)r0.y);
              r17.x = cmp(r15.w < r15.z);
              r16.w = r16.w ? r17.x : 0;
              if (r16.w == 0) break;
              r7.z = (int)r14.z & 7;
              r17.xy = oit_Nodes.Load(r7.xyzw).xy;
              r18.xyz = (uint3)r17.xxx >> int3(1,8,16);
              r16.w = (int)r18.x & 0x7f800000;
              bitmask.x = ((~(-1 << 8)) << 15) & 0xffffffff;  r17.x = (((uint)r17.x << 15) & bitmask.x) | ((uint)0 & ~bitmask.x);
              bitmask.x = ((~(-1 << 23)) << 0) & 0xffffffff;  r17.x = (((uint)r17.x << 0) & bitmask.x) | ((uint)r18.x & ~bitmask.x);
              r19.x = r17.x + -r16.w;
              bitmask.x = ((~(-1 << 8)) << 15) & 0xffffffff;  r17.x = (((uint)r18.y << 15) & bitmask.x) | ((uint)0 & ~bitmask.x);
              bitmask.z = ((~(-1 << 8)) << 15) & 0xffffffff;  r17.z = (((uint)r18.z << 15) & bitmask.z) | ((uint)0 & ~bitmask.z);
              bitmask.x = ((~(-1 << 23)) << 0) & 0xffffffff;  r17.x = (((uint)r17.x << 0) & bitmask.x) | ((uint)r18.x & ~bitmask.x);
              bitmask.z = ((~(-1 << 23)) << 0) & 0xffffffff;  r17.z = (((uint)r17.z << 0) & bitmask.z) | ((uint)r18.x & ~bitmask.z);
              r19.yz = r17.xz + -r16.ww;
              r16.w = (int)r17.y & 2046;
              r16.w = (uint)r16.w;
              r16.w = -r16.w * 0.000488758553 + 1;
              r16.xyz = r16.xyz * r16.www + r19.xyz;
              r14.w = (int)r14.w + 1;
              r16.w = (uint)r14.z >> 4;
              r17.x = cmp((uint)r14.w < (uint)r0.y);
              if (r17.x != 0) {
                if (3 == 0) r7.z = 0; else if (3+4 < 32) {                 r7.z = (uint)r14.z << (32-(3 + 4)); r7.z = (uint)r7.z >> (32-3);                } else r7.z = (uint)r14.z >> 4;
                r7.z = oit_Nodes.Load(r7.xyzw).y;
                r7.z = (uint)r7.z >> 2;
                r15.w = (int)r7.z & 0x3ffffe00;
              } else {
                r15.w = 2;
              }
              r14.z = r16.w;
            }
            r13.yzw = r16.xyz;
            r13.x = r14.z;
            r12.z = r14.w;
            r12.w = r15.w;
            r7.z = cmp(r0.x < r15.z);
            if (r7.z != 0) {
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
              r7.z = max(abs(r15.x), abs(r15.y));
              r7.z = cmp(r7.z < 1);
              if (r7.z != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r19.xyzw, r14.y, l(40), t2.xyzw
              r19.x = computeSpritesSampler[]..swiz;
              r19.y = computeSpritesSampler[]..swiz;
              r19.z = computeSpritesSampler[]..swiz;
              r19.w = computeSpritesSampler[]..swiz;
                r7.z = (uint)r19.x >> 24;
                r7.z = (uint)r7.z;
                r15.x = 0.00390625 * r7.z;
                if (4 == 0) r20.x = 0; else if (4+26 < 32) {                 r20.x = (uint)r19.z << (32-(4 + 26)); r20.x = (uint)r20.x >> (32-4);                } else r20.x = (uint)r19.z >> 26;
                if (4 == 0) r20.y = 0; else if (4+16 < 32) {                 r20.y = (uint)r19.w << (32-(4 + 16)); r20.y = (uint)r20.y >> (32-4);                } else r20.y = (uint)r19.w >> 16;
                if (1 == 0) r20.z = 0; else if (1+20 < 32) {                 r20.z = (uint)r19.w << (32-(1 + 20)); r20.z = (uint)r20.z >> (32-1);                } else r20.z = (uint)r19.w >> 20;
                r21.xyzw = int4(1,1,1,1) << (int4)r20.xyxy;
                if (r20.z != 0) {
                  if (12 == 0) r15.y = 0; else if (12+12 < 32) {                   r15.y = (uint)r19.x << (32-(12 + 12)); r15.y = (uint)r15.y >> (32-12);                  } else r15.y = (uint)r19.x >> 12;
                  r20.xy = (int2)r19.xz & int2(4095,1023);
                  r22.xyzw = (uint4)r21.zwzw;
                  r20.zw = r18.xy * r22.zw + float2(0.5,0.5);
                  r23.xy = float2(-0.5,-0.5) + r22.zw;
                  r20.zw = min(r23.xy, r20.zw);
                  r23.xz = (uint2)r20.xy;
                  r23.y = (uint)r15.y;
                  r23.xy = r23.xy + r20.zw;
                  r23.xy = invBcTexSizes.xy * r23.xy;
                  r22.xyzw = r22.xyzw * r17.xzyw;
                  r24.xyzw = materialTexBC7.SampleGrad(computeSpritesSampler_s, r23.xyz, r22.xyxx, r22.zwzz).xyzw;
                  r15.y = cmp(0 < r7.z);
                  if (r15.y != 0) {
                    r15.y = (int)r19.y & 4095;
                    if (12 == 0) r16.w = 0; else if (12+12 < 32) {                     r16.w = (uint)r19.y << (32-(12 + 12)); r16.w = (uint)r16.w >> (32-12);                    } else r16.w = (uint)r19.y >> 12;
                    r20.x = (uint)r15.y;
                    r20.y = (uint)r16.w;
                    r20.xy = r20.zw + r20.xy;
                    r23.xy = invBcTexSizes.xy * r20.xy;
                    r20.xyzw = materialTexBC7.SampleGrad(computeSpritesSampler_s, r23.xyz, r22.xyxx, r22.zwzz).xyzw;
                    r20.xyzw = r20.xyzw + -r24.xyzw;
                    r24.xyzw = r15.xxxx * r20.xyzw + r24.xyzw;
                  }
                } else {
                  if (12 == 0) r15.y = 0; else if (12+12 < 32) {                   r15.y = (uint)r19.x << (32-(12 + 12)); r15.y = (uint)r15.y >> (32-12);                  } else r15.y = (uint)r19.x >> 12;
                  r20.xy = (int2)r19.xz & int2(4095,1023);
                  r22.xyzw = (uint4)r21.zwzw;
                  r20.zw = r18.xy * r22.zw + float2(0.5,0.5);
                  r23.xy = float2(-0.5,-0.5) + r22.zw;
                  r20.zw = min(r23.xy, r20.zw);
                  r23.xz = (uint2)r20.xy;
                  r23.y = (uint)r15.y;
                  r20.xz = r23.xy + r20.zw;
                  r23.xy = invBcTexSizes.zw * r20.xz;
                  r20.xyzw = r22.xyzw * r17.xzyw;
                  r24.xyzw = materialTexBC3.SampleGrad(computeSpritesSampler_s, r23.xyz, r20.xyxx, r20.zwzz).xyzw;
                  r15.y = cmp(0 < r7.z);
                  if (r15.y != 0) {
                    if (12 == 0) r15.y = 0; else if (12+12 < 32) {                     r15.y = (uint)r19.y << (32-(12 + 12)); r15.y = (uint)r15.y >> (32-12);                    } else r15.y = (uint)r19.y >> 12;
                    r20.xy = (int2)r19.yz & int2(4095,1023);
                    r21.xyzw = (uint4)r21.xyzw;
                    r20.zw = r18.xy * r21.zw + float2(0.5,0.5);
                    r22.xy = float2(-0.5,-0.5) + r21.zw;
                    r20.zw = min(r22.xy, r20.zw);
                    r22.xz = (uint2)r20.xy;
                    r22.y = (uint)r15.y;
                    r20.xz = r22.xy + r20.zw;
                    r22.xy = invBcTexSizes.zw * r20.xz;
                    r20.xyzw = r21.xyzw * r17.xzyw;
                    r20.xyzw = materialTexBC3.SampleGrad(computeSpritesSampler_s, r22.xyz, r20.xyxx, r20.zwzz).xyzw;
                    r20.xyzw = r20.xyzw + -r24.xyzw;
                    r24.xyzw = r15.xxxx * r20.xyzw + r24.xyzw;
                  }
                }
                r20.xyzw = cmp(r24.xyzw != float4(0,0,0,0));
                r20.xy = (int2)r20.zw | (int2)r20.xy;
                r15.y = (int)r20.y | (int)r20.x;
                if (r15.y != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r20.xyzw, r14.y, l(0), t2.xyzw
                r20.x = computeSpritesSampler[]..swiz;
                r20.y = computeSpritesSampler[]..swiz;
                r20.z = computeSpritesSampler[]..swiz;
                r20.w = computeSpritesSampler[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r21.xyzw, r14.y, l(16), t2.zxyw
                r21.x = computeSpritesSampler[]..swiz;
                r21.y = computeSpritesSampler[]..swiz;
                r21.z = computeSpritesSampler[]..swiz;
                r21.w = computeSpritesSampler[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r15.y, r14.y, l(32), t2.xxxx
                r15.y = computeSpritesSampler[]..swiz;
                  if (8 == 0) r22.x = 0; else if (8+8 < 32) {                   r22.x = (uint)r19.w << (32-(8 + 8)); r22.x = (uint)r22.x >> (32-8);                  } else r22.x = (uint)r19.w >> 8;
                  if (8 == 0) r22.y = 0; else if (8+10 < 32) {                   r22.y = (uint)r19.z << (32-(8 + 10)); r22.y = (uint)r22.y >> (32-8);                  } else r22.y = (uint)r19.z >> 10;
                  if (8 == 0) r22.z = 0; else if (8+18 < 32) {                   r22.z = (uint)r19.z << (32-(8 + 18)); r22.z = (uint)r22.z >> (32-8);                  } else r22.z = (uint)r19.z >> 18;
                  r22.xyz = (uint3)r22.xyz;
                  r22.xw = float2(0.00392156886,0.00392156886) * r22.xz;
                  r16.w = dot(r24.xyz, float3(0.212599993,0.715200007,0.0722000003));
                  r23.xyz = r16.www + -r24.xyz;
                  r23.xyz = r22.xxx * r23.xyz + r24.xyz;
                  r16.w = (uint)r19.y >> 24;
                  r16.w = (uint)r16.w;
                  r18.w = 0.00392156886 * r16.w;
                  r19.x = (int)r19.w & 255;
                  r19.x = (uint)r19.x;
                  r19.y = cmp(r16.w == 0.000000);
                  r22.xz = cmp(r22.yz == float2(255,0));
                  r19.y = r19.y ? r22.x : 0;
                  r19.y = r22.z ? r19.y : 0;
                  r22.x = cmp(r19.x == 255.000000);
                  r19.y = r19.y ? r22.x : 0;
                  r22.x = max(9.99999975e-05, r24.w);
                  r25.xyz = saturate(r23.xyz / r22.xxx);
                  r25.xyz = -r16.www * float3(0.00392156886,0.00392156886,0.00392156886) + r25.xyz;
                  r25.xyz = max(float3(0,0,0), r25.xyz);
                  r16.w = r22.y * 0.00392156886 + -r18.w;
                  r16.w = max(9.99999975e-05, r16.w);
                  r25.xyz = r25.xyz / r16.www;
                  r25.xyz = min(float3(1,1,1), r25.xyz);
                  r16.w = r19.x * 0.00392156886 + -r22.w;
                  r22.yzw = r25.xyz * r16.www + r22.www;
                  r25.xyz = cmp(float3(0.0404499993,0.0404499993,0.0404499993) >= r22.yzw);
                  r26.xyz = float3(0.0773993805,0.0773993805,0.0773993805) * r22.yzw;
                  r22.yzw = float3(0.0549999997,0.0549999997,0.0549999997) + r22.yzw;
                  r22.yzw = float3(0.947867334,0.947867334,0.947867334) * abs(r22.yzw);
                  r22.yzw = log2(r22.yzw);
                  r22.yzw = float3(2.4000001,2.4000001,2.4000001) * r22.yzw;
                  r22.yzw = exp2(r22.yzw);
                  r22.yzw = r25.xyz ? r26.xyz : r22.yzw;
                  r22.yzw = r22.yzw * r24.www;
                  r24.xyz = r19.yyy ? r23.xyz : r22.yzw;
                  r18.z = (uint)r14.y;
                  r8.xyz = lmapTex.SampleLevel(computeSpritesSampler_s, r18.xyz, 0).xyz;
                  r16.w = r20.x ? 0.000000 : 0;
                  r16.w = (uint)r16.w;
                  r23.x = 0.00392156886 * r16.w;
                  if (8 == 0) r18.z = 0; else if (8+8 < 32) {                   r18.z = (uint)r20.x << (32-(8 + 8)); r18.z = (uint)r18.z >> (32-8);                  } else r18.z = (uint)r20.x >> 8;
                  if (8 == 0) r18.w = 0; else if (8+16 < 32) {                   r18.w = (uint)r20.x << (32-(8 + 16)); r18.w = (uint)r18.w >> (32-8);                  } else r18.w = (uint)r20.x >> 16;
                  r18.zw = (uint2)r18.zw;
                  r23.yz = float2(0.00392156886,0.00392156886) * r18.zw;
                  r16.w = (uint)r20.x >> 24;
                  r23.w = (uint)r16.w;
                  r25.xyzw = r23.xyzw * r8.xyzw;
                  r8.x = cmp(r15.z >= 0.984375);
                  r8.y = 1.01587307 * r15.z;
                  r8.z = r15.z * 64 + -63;
                  r8.x = r8.x ? r8.z : r8.y;
                  r8.x = max(9.99999994e-09, r8.x);
                  r8.x = rcp(r8.x);
                  r8.y = f16tof32(r21.x);
                  r8.z = f16tof32(r15.y);
                  r16.w = cmp(r8.z != 1.000000);
                  r22.xyz = r24.xyz / r22.xxx;
                  r18.z = r8.w * r23.w + r24.w;
                  r26.w = saturate(r18.z * r8.z + -r8.z);
                  r26.xyz = r26.www * r22.xyz;
                  r22.xyzw = r16.wwww ? r26.xyzw : r24.xyzw;
                  r9.y = r26.w;
                  r18.zw = r16.ww ? r9.xy : r25.ww;
                  r8.z = cmp(r8.x < r0.z);
                  r9.y = -r8.x + r0.z;
                  r9.y = saturate(r9.y * r8.y);
                  r8.z = r8.z ? r9.y : 1;
                  r19.xy = -r8.xx + r3.xy;
                  r8.xy = r19.xy * r8.yy;
                  r8.xy = min(float2(1,1), abs(r8.xy));
                  r8.x = r8.z * r8.x;
                  r8.x = r8.x * r8.y;
                  r22.xyzw = r22.xyzw * r8.xxxx;
                  r24.xyzw = r22.xyzw * r18.zzzz;
                  r26.xyzw = cmp(r24.xyzw != float4(0,0,0,0));
                  r8.yz = (int2)r26.zw | (int2)r26.xy;
                  r8.y = (int)r8.z | (int)r8.y;
                  if (r8.y != 0) {
                    if (1 == 0) r8.y = 0; else if (1+30 < 32) {                     r8.y = (uint)r19.z << (32-(1 + 30)); r8.y = (uint)r8.y >> (32-1);                    } else r8.y = (uint)r19.z >> 30;
                    if (r8.y != 0) {
                      r8.x = r18.w * r8.x;
                      r8.y = (uint)r19.z >> 31;
                      if (r8.y != 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r19.xyz, r14.y, l(24), t3.xyzx
                      r19.x = computeSpritesSampler[]..swiz;
                      r19.y = computeSpritesSampler[]..swiz;
                      r19.z = computeSpritesSampler[]..swiz;
                        r8.y = (uint)r19.x >> 28;
                        r8.y = 1 << (int)r8.y;
                        if (4 == 0) r22.x = 0; else if (4+24 < 32) {                         r22.x = (uint)r19.y << (32-(4 + 24)); r22.x = (uint)r22.x >> (32-4);                        } else r22.x = (uint)r19.y >> 24;
                        if (12 == 0) r22.y = 0; else if (12+16 < 32) {                         r22.y = (uint)r19.x << (32-(12 + 16)); r22.y = (uint)r22.y >> (32-12);                        } else r22.y = (uint)r19.x >> 16;
                        if (10 == 0) r22.z = 0; else if (10+12 < 32) {                         r22.z = (uint)r19.z << (32-(10 + 12)); r22.z = (uint)r22.z >> (32-10);                        } else r22.z = (uint)r19.z >> 12;
                        r8.z = 1 << (int)r22.x;
                        r9.y = (int)r19.y & 4095;
                        r26.xyzw = (uint4)r8.yzyz;
                        r8.yz = r18.xy * r26.zw + float2(0.5,0.5);
                        r18.xy = float2(-0.5,-0.5) + r26.zw;
                        r8.yz = min(r18.xy, r8.yz);
                        r18.x = (uint)r22.y;
                        r18.y = (uint)r9.y;
                        r18.xy = r18.xy + r8.yz;
                        r27.xy = invMaskTexSizes.xy * r18.xy;
                        r27.z = (uint)r22.z;
                        r17.xyzw = r26.xyzw * r17.xzyw;
                        r9.y = materialTexMask.SampleGrad(computeSpritesSampler_s, r27.xyz, r17.y, r17.w).x;
                        r7.z = cmp(0 < r7.z);
                        if (r7.z != 0) {
                          if (12 == 0) r7.z = 0; else if (12+12 < 32) {                           r7.z = (uint)r19.y << (32-(12 + 12)); r7.z = (uint)r7.z >> (32-12);                          } else r7.z = (uint)r19.y >> 12;
                          r14.y = (int)r19.z & 4095;
                          r18.x = (uint)r7.z;
                          r18.y = (uint)r14.y;
                          r8.yz = r18.xy + r8.yz;
                          r27.xy = invMaskTexSizes.xy * r8.yz;
                          r7.z = materialTexMask.SampleGrad(computeSpritesSampler_s, r27.xyz, r17.x, r17.z).x;
                          r7.z = r7.z + -r9.y;
                          r9.y = r15.x * r7.z + r9.y;
                        }
                      } else {
                        r9.y = 1;
                      }
                      r7.z = r9.y * r8.x;
                      r8.x = (uint)r15.y >> 16;
                      r8.x = f16tof32(r8.x);
                      if (1 == 0) r8.y = 0; else if (1+21 < 32) {                       r8.y = (uint)r19.w << (32-(1 + 21)); r8.y = (uint)r8.y >> (32-1);                      } else r8.y = (uint)r19.w >> 21;
                      r8.z = dot(r25.xyz, float3(0.298999995,0.587000012,0.114));
                      r8.z = max(9.99999975e-05, r8.z);
                      r8.z = max(relHDRExposure.x, r8.z);
                      r8.z = r8.z * r8.x;
                      r8.x = r8.y ? r8.x : r8.z;
                      r7.z = r8.x * r7.z;
                      r25.xyz = r23.xyz * r7.zzz + r25.xyz;
                    }
                    r7.z = -r22.w * r18.z + 1;
                    r12.y = r12.y * r7.z;
                    r8.x = cmp(r12.y < 0.800000012);
                    r8.y = cmp(0.200000003 < r24.w);
                    r8.x = (int)r8.y | (int)r8.x;
                    if (r8.x != 0) {
                      r8.x = cmp(r15.z >= 0.000492187508);
                      if (r8.x != 0) {
                        r8.x = 1 + -r15.z;
                        r8.yz = float2(5.60519386e-45,0);
                        while (true) {
                          r9.y = cmp((int)r8.z >= 4);
                          if (r9.y != 0) break;
                          r9.y = (uint)r8.z << 2;
                        // Known bad code for instruction (needs manual fix):
                                                ld_structured r9.y, vThreadIDInGroupFlattened.x, r9.y, g0.xxxx
                        r9.y = computeSpritesSampler[]..swiz;
                          r9.y = cmp(r9.y >= r8.x);
                          if (r9.y != 0) {
                            r8.y = r8.z;
                            break;
                          }
                          r9.z = (int)r8.z + 1;
                          r8.yz = r9.wz;
                        }
                        floatZSampler[vThreadIDInGroupFlattened.x].16 = g0.x;
                        floatZSampler[vThreadIDInGroupFlattened.x].16 = g1.x;
                        r8.z = (uint)r8.y << 2;
                        r9.y = (int)r8.z + -4;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured r9.y, vThreadIDInGroupFlattened.x, r9.y, g1.xxxx
                      r9.y = computeSpritesSampler[]..swiz;
                        r9.y = r8.y ? r9.y : 1;
                        r9.z = 3;
                        while (true) {
                          r14.y = cmp((int)r9.z < 0);
                          if (r14.y != 0) break;
                          r14.y = cmp((int)r9.z >= (int)r8.y);
                          if (r14.y != 0) {
                            r14.y = (uint)r9.z << 2;
                            r15.x = (int)r14.y + 4;
                          // Known bad code for instruction (needs manual fix):
                                                    ld_structured r15.y, vThreadIDInGroupFlattened.x, r14.y, g0.xxxx
                          r15.y = computeSpritesSampler[]..swiz;
                            floatZSampler[vThreadIDInGroupFlattened.x].r15.x = g0.x;
                          // Known bad code for instruction (needs manual fix):
                                                    ld_structured r14.y, vThreadIDInGroupFlattened.x, r14.y, g1.xxxx
                          r14.y = computeSpritesSampler[]..swiz;
                            r14.y = r14.y * r7.z;
                            floatZSampler[vThreadIDInGroupFlattened.x].r15.x = g1.x;
                          }
                          r9.z = (int)r9.z + -1;
                        }
                        floatZSampler[vThreadIDInGroupFlattened.x].r8.z = g0.x;
                        r8.x = r9.y * r7.z;
                        floatZSampler[vThreadIDInGroupFlattened.x].r8.z = g1.x;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured r8.x, vThreadIDInGroupFlattened.x, l(16), g0.xxxx
                      r8.x = computeSpritesSampler[]..swiz;
                        r8.x = cmp(r8.x != 1000000015047466219876688855040.000000);
                        if (r8.x != 0) {
                          r8.x = 2;
                          while (true) {
                            r8.z = cmp((int)r8.x >= 4);
                            if (r8.z != 0) break;
                            r8.z = (uint)r8.x << 2;
                          // Known bad code for instruction (needs manual fix):
                                                    ld_structured r9.y, vThreadIDInGroupFlattened.x, r8.z, g0.xxxx
                          r9.y = computeSpritesSampler[]..swiz;
                            r8.z = (int)r8.z + -4;
                          // Known bad code for instruction (needs manual fix):
                                                    ld_structured r9.z, vThreadIDInGroupFlattened.x, r8.z, g0.xxxx
                          r9.z = computeSpritesSampler[]..swiz;
                            r9.y = r9.y + -r9.z;
                          // Known bad code for instruction (needs manual fix):
                                                    ld_structured r15.xy, vThreadIDInGroupFlattened.x, r8.z, g1.xyxx
                          r15.x = computeSpritesSampler[]..swiz;
                          r15.y = computeSpritesSampler[]..swiz;
                            r8.z = r15.x + -r15.y;
                            r8.z = r9.y * r8.z;
                            x8[r8.x+0].x = r8.z;
                            r8.x = (int)r8.x + 1;
                          }
                          r8.x = x8[2].x;
                          r8.z = x8[3].x;
                          r8.x = cmp(r8.z < r8.x);
                          r8.xz = r8.xx ? float2(3,2) : float2(2,1);
                          r9.y = 2;
                          while (true) {
                            r9.z = cmp((int)r9.y >= 4);
                            if (r9.z != 0) break;
                            r9.z = cmp((int)r9.y >= (int)r8.x);
                            if (r9.z != 0) {
                              r9.z = (uint)r9.y << 2;
                              r14.y = (int)r9.z + 4;
                            // Known bad code for instruction (needs manual fix):
                                                        ld_structured r14.y, vThreadIDInGroupFlattened.x, r14.y, g0.xxxx
                            r14.y = computeSpritesSampler[]..swiz;
                              floatZSampler[vThreadIDInGroupFlattened.x].r9.z = g0.x;
                            }
                            r9.y = (int)r9.y + 1;
                          }
                          r8.x = 1;
                          while (true) {
                            r9.y = cmp((int)r8.x >= 4);
                            if (r9.y != 0) break;
                            r9.y = cmp((int)r8.x >= (int)r8.z);
                            if (r9.y != 0) {
                              r9.y = (uint)r8.x << 2;
                              r9.z = (int)r9.y + 4;
                            // Known bad code for instruction (needs manual fix):
                                                        ld_structured r9.z, vThreadIDInGroupFlattened.x, r9.z, g1.xxxx
                            r9.z = computeSpritesSampler[]..swiz;
                              floatZSampler[vThreadIDInGroupFlattened.x].r9.y = g1.x;
                            }
                            r8.x = (int)r8.x + 1;
                          }
                        }
                      }
                    }
                    r8.xz = (uint2)r21.xw >> int2(16,16);
                    r15.y = f16tof32(r21.w);
                    r15.xz = f16tof32(r8.xz);
                    r8.xz = (uint2)r20.yz >> int2(16,16);
                    r17.xy = f16tof32(r20.yz);
                    r17.zw = f16tof32(r8.xz);
                    r17.xyz = r17.xzy * r24.www;
                    r21.x = r20.w;
                    r18.xyz = r21.xyz * r24.www;
                    r19.xyz = r24.xyz * r25.xyz + -r17.xyz;
                    r17.xyz = r17.www * r19.xyz + r17.xyz;
                    r15.xyz = r17.xyz * r15.xyz + r18.xyz;
                    r15.xyz = relHDRExposure.yyy * r15.xyz;
                    r13.yzw = r13.yzw * r7.zzz + r15.xyz;
                  }
                }
              }
            }
          }
          r10.xyzw = r13.xyzw;
          r3.w = r12.y;
          r11.xy = r12.zw;
        }
        r2.xyzw = r10.yzwx;
        r1.w = r3.w;
        r0.w = cmp(1 < (uint)r0.w);
        if (r0.w != 0) {
          r4.w = 0;
          r7.xyw = r5.xyw;
          r8.w = 0.00392156886;
          r9.xw = float2(1,5.60519386e-45);
          r10.xyzw = r2.wxyz;
          r0.w = r1.w;
          r1.xz = r11.xy;
          r3.w = r1.y;
          while (true) {
            if (r3.w == 0) break;
            r11.z = firstbitlow((uint)r3.w);
            r11.w = 1 << (int)r11.z;
            r11.w = ~(int)r11.w;
            r3.w = (int)r3.w & (int)r11.w;
            r4.z = (int)r11.z + 32;
            r11.z = spriteCullRough.Load(r4.xyzw).x;
            r4.z = (uint)r4.z << 5;
            r12.xyzw = r10.xyzw;
            r11.w = r0.w;
            r13.xy = r1.xz;
            r13.z = r11.z;
            while (true) {
              if (r13.z == 0) break;
              r13.w = firstbitlow((uint)r13.z);
              r14.x = 1 << (int)r13.w;
              r14.x = ~(int)r14.x;
              r13.z = (int)r13.z & (int)r14.x;
              r13.w = (int)r4.z + (int)r13.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=32)(mixed,mixed,mixed,mixed) r14.xyz, r13.w, l(16), t1.xyzx
            r14.x = computeSpritesSampler[]..swiz;
            r14.y = computeSpritesSampler[]..swiz;
            r14.z = computeSpritesSampler[]..swiz;
              r15.xyz = r12.yzw;
              r14.w = r12.x;
              r15.w = r13.x;
              r16.x = r13.y;
              while (true) {
                r16.y = cmp((uint)r15.w < (uint)r0.y);
                r16.z = cmp(r16.x < r14.z);
                r16.y = r16.z ? r16.y : 0;
                if (r16.y == 0) break;
                r7.z = (int)r14.w & 7;
                r16.yz = oit_Nodes.Load(r7.xyzw).xy;
                r17.xyz = (uint3)r16.yyy >> int3(1,8,16);
                r16.w = (int)r17.x & 0x7f800000;
                bitmask.y = ((~(-1 << 8)) << 15) & 0xffffffff;  r16.y = (((uint)r16.y << 15) & bitmask.y) | ((uint)0 & ~bitmask.y);
                bitmask.y = ((~(-1 << 23)) << 0) & 0xffffffff;  r16.y = (((uint)r16.y << 0) & bitmask.y) | ((uint)r17.x & ~bitmask.y);
                r18.x = r16.y + -r16.w;
                bitmask.y = ((~(-1 << 8)) << 15) & 0xffffffff;  r17.y = (((uint)r17.y << 15) & bitmask.y) | ((uint)0 & ~bitmask.y);
                bitmask.z = ((~(-1 << 8)) << 15) & 0xffffffff;  r17.z = (((uint)r17.z << 15) & bitmask.z) | ((uint)0 & ~bitmask.z);
                bitmask.x = ((~(-1 << 23)) << 0) & 0xffffffff;  r17.x = (((uint)r17.y << 0) & bitmask.x) | ((uint)r17.x & ~bitmask.x);
                bitmask.y = ((~(-1 << 23)) << 0) & 0xffffffff;  r17.y = (((uint)r17.z << 0) & bitmask.y) | ((uint)r17.x & ~bitmask.y);
                r18.yz = r17.xy + -r16.ww;
                r16.y = (int)r16.z & 2046;
                r16.y = (uint)r16.y;
                r16.y = -r16.y * 0.000488758553 + 1;
                r15.xyz = r15.xyz * r16.yyy + r18.xyz;
                r15.w = (int)r15.w + 1;
                r16.y = (uint)r14.w >> 4;
                r16.z = cmp((uint)r15.w < (uint)r0.y);
                if (r16.z != 0) {
                  if (3 == 0) r7.z = 0; else if (3+4 < 32) {                   r7.z = (uint)r14.w << (32-(3 + 4)); r7.z = (uint)r7.z >> (32-3);                  } else r7.z = (uint)r14.w >> 4;
                  r7.z = oit_Nodes.Load(r7.xyzw).y;
                  r7.z = (uint)r7.z >> 2;
                  r16.x = (int)r7.z & 0x3ffffe00;
                } else {
                  r16.x = 2;
                }
                r14.w = r16.y;
              }
              r12.yzw = r15.xyz;
              r12.x = r14.w;
              r13.x = r15.w;
              r13.y = r16.x;
              r7.z = cmp(r0.x < r14.z);
              if (r7.z != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=32)(mixed,mixed,mixed,mixed) r17.xyzw, r13.w, l(0), t1.xyzw
              r17.x = computeSpritesSampler[]..swiz;
              r17.y = computeSpritesSampler[]..swiz;
              r17.z = computeSpritesSampler[]..swiz;
              r17.w = computeSpritesSampler[]..swiz;
                r18.xyzw = r17.xyzw * r6.xyzw;
                r16.yz = r18.xz + r18.yw;
                r18.xy = r16.yz + r14.xy;
                r14.xy = r18.xy * float2(2,2) + float2(-1,-1);
                r7.z = max(abs(r14.x), abs(r14.y));
                r7.z = cmp(r7.z < 1);
                if (r7.z != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r19.xyzw, r13.w, l(40), t2.xyzw
                r19.x = computeSpritesSampler[]..swiz;
                r19.y = computeSpritesSampler[]..swiz;
                r19.z = computeSpritesSampler[]..swiz;
                r19.w = computeSpritesSampler[]..swiz;
                  r7.z = (uint)r19.x >> 24;
                  r7.z = (uint)r7.z;
                  r14.x = 0.00390625 * r7.z;
                  if (4 == 0) r16.y = 0; else if (4+26 < 32) {                   r16.y = (uint)r19.z << (32-(4 + 26)); r16.y = (uint)r16.y >> (32-4);                  } else r16.y = (uint)r19.z >> 26;
                  if (4 == 0) r16.z = 0; else if (4+16 < 32) {                   r16.z = (uint)r19.w << (32-(4 + 16)); r16.z = (uint)r16.z >> (32-4);                  } else r16.z = (uint)r19.w >> 16;
                  if (1 == 0) r16.w = 0; else if (1+20 < 32) {                   r16.w = (uint)r19.w << (32-(1 + 20)); r16.w = (uint)r16.w >> (32-1);                  } else r16.w = (uint)r19.w >> 20;
                  r20.xyzw = int4(1,1,1,1) << (int4)r16.yzyz;
                  if (r16.w != 0) {
                    if (12 == 0) r14.y = 0; else if (12+12 < 32) {                     r14.y = (uint)r19.x << (32-(12 + 12)); r14.y = (uint)r14.y >> (32-12);                    } else r14.y = (uint)r19.x >> 12;
                    r16.yz = (int2)r19.xz & int2(4095,1023);
                    r21.xyzw = (uint4)r20.zwzw;
                    r22.xy = r18.xy * r21.zw + float2(0.5,0.5);
                    r22.zw = float2(-0.5,-0.5) + r21.zw;
                    r22.xy = min(r22.xy, r22.zw);
                    r23.xz = (uint2)r16.yz;
                    r23.y = (uint)r14.y;
                    r16.yw = r23.xy + r22.xy;
                    r23.xy = invBcTexSizes.xy * r16.yw;
                    r21.xyzw = r21.xyzw * r17.xzyw;
                    r24.xyzw = materialTexBC7.SampleGrad(computeSpritesSampler_s, r23.xyz, r21.xyxx, r21.zwzz).xyzw;
                    r14.y = cmp(0 < r7.z);
                    if (r14.y != 0) {
                      r14.y = (int)r19.y & 4095;
                      if (12 == 0) r16.y = 0; else if (12+12 < 32) {                       r16.y = (uint)r19.y << (32-(12 + 12)); r16.y = (uint)r16.y >> (32-12);                      } else r16.y = (uint)r19.y >> 12;
                      r25.x = (uint)r14.y;
                      r25.y = (uint)r16.y;
                      r16.yz = r25.xy + r22.xy;
                      r23.xy = invBcTexSizes.xy * r16.yz;
                      r21.xyzw = materialTexBC7.SampleGrad(computeSpritesSampler_s, r23.xyz, r21.xyxx, r21.zwzz).xyzw;
                      r21.xyzw = r21.xyzw + -r24.xyzw;
                      r24.xyzw = r14.xxxx * r21.xyzw + r24.xyzw;
                    }
                  } else {
                    if (12 == 0) r14.y = 0; else if (12+12 < 32) {                     r14.y = (uint)r19.x << (32-(12 + 12)); r14.y = (uint)r14.y >> (32-12);                    } else r14.y = (uint)r19.x >> 12;
                    r16.yz = (int2)r19.xz & int2(4095,1023);
                    r21.xyzw = (uint4)r20.zwzw;
                    r22.xy = r18.xy * r21.zw + float2(0.5,0.5);
                    r22.zw = float2(-0.5,-0.5) + r21.zw;
                    r22.xy = min(r22.xy, r22.zw);
                    r23.x = (uint)r16.y;
                    r23.y = (uint)r14.y;
                    r16.yw = r23.xy + r22.xy;
                    r22.xy = invBcTexSizes.zw * r16.yw;
                    r22.z = (uint)r16.z;
                    r21.xyzw = r21.xyzw * r17.xzyw;
                    r24.xyzw = materialTexBC3.SampleGrad(computeSpritesSampler_s, r22.xyz, r21.xyxx, r21.zwzz).xyzw;
                    r14.y = cmp(0 < r7.z);
                    if (r14.y != 0) {
                      if (12 == 0) r14.y = 0; else if (12+12 < 32) {                       r14.y = (uint)r19.y << (32-(12 + 12)); r14.y = (uint)r14.y >> (32-12);                      } else r14.y = (uint)r19.y >> 12;
                      r16.yz = (int2)r19.yz & int2(4095,1023);
                      r20.xyzw = (uint4)r20.xyzw;
                      r21.xy = r18.xy * r20.zw + float2(0.5,0.5);
                      r21.zw = float2(-0.5,-0.5) + r20.zw;
                      r21.xy = min(r21.xy, r21.zw);
                      r22.x = (uint)r16.y;
                      r22.y = (uint)r14.y;
                      r16.yw = r22.xy + r21.xy;
                      r21.xy = invBcTexSizes.zw * r16.yw;
                      r21.z = (uint)r16.z;
                      r20.xyzw = r20.xyzw * r17.xzyw;
                      r20.xyzw = materialTexBC3.SampleGrad(computeSpritesSampler_s, r21.xyz, r20.xyxx, r20.zwzz).xyzw;
                      r20.xyzw = r20.xyzw + -r24.xyzw;
                      r24.xyzw = r14.xxxx * r20.xyzw + r24.xyzw;
                    }
                  }
                  r20.xyzw = cmp(r24.xyzw != float4(0,0,0,0));
                  r16.yz = (int2)r20.zw | (int2)r20.xy;
                  r14.y = (int)r16.z | (int)r16.y;
                  if (r14.y != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r20.xyzw, r13.w, l(0), t2.xyzw
                  r20.x = computeSpritesSampler[]..swiz;
                  r20.y = computeSpritesSampler[]..swiz;
                  r20.z = computeSpritesSampler[]..swiz;
                  r20.w = computeSpritesSampler[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r21.xyzw, r13.w, l(16), t2.zxyw
                  r21.x = computeSpritesSampler[]..swiz;
                  r21.y = computeSpritesSampler[]..swiz;
                  r21.z = computeSpritesSampler[]..swiz;
                  r21.w = computeSpritesSampler[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r14.y, r13.w, l(32), t2.xxxx
                  r14.y = computeSpritesSampler[]..swiz;
                    if (8 == 0) r16.y = 0; else if (8+8 < 32) {                     r16.y = (uint)r19.w << (32-(8 + 8)); r16.y = (uint)r16.y >> (32-8);                    } else r16.y = (uint)r19.w >> 8;
                    if (8 == 0) r16.z = 0; else if (8+10 < 32) {                     r16.z = (uint)r19.z << (32-(8 + 10)); r16.z = (uint)r16.z >> (32-8);                    } else r16.z = (uint)r19.z >> 10;
                    if (8 == 0) r16.w = 0; else if (8+18 < 32) {                     r16.w = (uint)r19.z << (32-(8 + 18)); r16.w = (uint)r16.w >> (32-8);                    } else r16.w = (uint)r19.z >> 18;
                    r16.yzw = (uint3)r16.yzw;
                    r22.xy = float2(0.00392156886,0.00392156886) * r16.yw;
                    r16.y = dot(r24.xyz, float3(0.212599993,0.715200007,0.0722000003));
                    r23.xyz = r16.yyy + -r24.xyz;
                    r22.xzw = r22.xxx * r23.xyz + r24.xyz;
                    r16.y = (uint)r19.y >> 24;
                    r16.y = (uint)r16.y;
                    r18.w = 0.00392156886 * r16.y;
                    r19.x = (int)r19.w & 255;
                    r19.x = (uint)r19.x;
                    r19.y = cmp(r16.y == 0.000000);
                    r23.xy = cmp(r16.zw == float2(255,0));
                    r16.w = r19.y ? r23.x : 0;
                    r16.w = r23.y ? r16.w : 0;
                    r19.y = cmp(r19.x == 255.000000);
                    r16.w = r19.y ? r16.w : 0;
                    r19.y = max(9.99999975e-05, r24.w);
                    r23.xyz = saturate(r22.xzw / r19.yyy);
                    r23.xyz = -r16.yyy * float3(0.00392156886,0.00392156886,0.00392156886) + r23.xyz;
                    r23.xyz = max(float3(0,0,0), r23.xyz);
                    r16.y = r16.z * 0.00392156886 + -r18.w;
                    r16.y = max(9.99999975e-05, r16.y);
                    r23.xyz = r23.xyz / r16.yyy;
                    r23.xyz = min(float3(1,1,1), r23.xyz);
                    r16.y = r19.x * 0.00392156886 + -r22.y;
                    r23.xyz = r23.xyz * r16.yyy + r22.yyy;
                    r25.xyz = cmp(float3(0.0404499993,0.0404499993,0.0404499993) >= r23.xyz);
                    r26.xyz = float3(0.0773993805,0.0773993805,0.0773993805) * r23.xyz;
                    r23.xyz = float3(0.0549999997,0.0549999997,0.0549999997) + r23.xyz;
                    r23.xyz = float3(0.947867334,0.947867334,0.947867334) * abs(r23.xyz);
                    r23.xyz = log2(r23.xyz);
                    r23.xyz = float3(2.4000001,2.4000001,2.4000001) * r23.xyz;
                    r23.xyz = exp2(r23.xyz);
                    r23.xyz = r25.xyz ? r26.xyz : r23.xyz;
                    r23.xyz = r23.xyz * r24.www;
                    r24.xyz = r16.www ? r22.xzw : r23.xyz;
                    r18.z = (uint)r13.w;
                    r8.xyz = lmapTex.SampleLevel(computeSpritesSampler_s, r18.xyz, 0).xyz;
                    r16.y = r20.x ? 0.000000 : 0;
                    r16.y = (uint)r16.y;
                    r22.x = 0.00392156886 * r16.y;
                    if (8 == 0) r16.y = 0; else if (8+8 < 32) {                     r16.y = (uint)r20.x << (32-(8 + 8)); r16.y = (uint)r16.y >> (32-8);                    } else r16.y = (uint)r20.x >> 8;
                    if (8 == 0) r16.z = 0; else if (8+16 < 32) {                     r16.z = (uint)r20.x << (32-(8 + 16)); r16.z = (uint)r16.z >> (32-8);                    } else r16.z = (uint)r20.x >> 16;
                    r16.yz = (uint2)r16.yz;
                    r22.yz = float2(0.00392156886,0.00392156886) * r16.yz;
                    r16.y = (uint)r20.x >> 24;
                    r22.w = (uint)r16.y;
                    r23.xyzw = r22.xyzw * r8.xyzw;
                    r8.x = cmp(r14.z >= 0.984375);
                    r8.y = 1.01587307 * r14.z;
                    r8.z = r14.z * 64 + -63;
                    r8.x = r8.x ? r8.z : r8.y;
                    r8.x = max(9.99999994e-09, r8.x);
                    r8.x = rcp(r8.x);
                    r8.y = f16tof32(r21.x);
                    r8.z = f16tof32(r14.y);
                    r16.y = cmp(r8.z != 1.000000);
                    r25.xyz = r24.xyz / r19.yyy;
                    r16.z = r8.w * r22.w + r24.w;
                    r26.w = saturate(r16.z * r8.z + -r8.z);
                    r26.xyz = r26.www * r25.xyz;
                    r24.xyzw = r16.yyyy ? r26.xyzw : r24.xyzw;
                    r9.y = r26.w;
                    r16.yz = r16.yy ? r9.xy : r23.ww;
                    r8.z = cmp(r8.x < r0.z);
                    r9.y = -r8.x + r0.z;
                    r9.y = saturate(r9.y * r8.y);
                    r8.z = r8.z ? r9.y : 1;
                    r18.zw = -r8.xx + r3.xy;
                    r8.xy = r18.zw * r8.yy;
                    r8.xy = min(float2(1,1), abs(r8.xy));
                    r8.x = r8.z * r8.x;
                    r8.x = r8.x * r8.y;
                    r24.xyzw = r24.xyzw * r8.xxxx;
                    r25.xyzw = r24.xyzw * r16.yyyy;
                    r26.xyzw = cmp(r25.xyzw != float4(0,0,0,0));
                    r8.yz = (int2)r26.zw | (int2)r26.xy;
                    r8.y = (int)r8.z | (int)r8.y;
                    if (r8.y != 0) {
                      if (1 == 0) r8.y = 0; else if (1+30 < 32) {                       r8.y = (uint)r19.z << (32-(1 + 30)); r8.y = (uint)r8.y >> (32-1);                      } else r8.y = (uint)r19.z >> 30;
                      if (r8.y != 0) {
                        r8.x = r16.z * r8.x;
                        r8.y = (uint)r19.z >> 31;
                        if (r8.y != 0) {
                        // Known bad code for instruction (needs manual fix):
                                                ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r19.xyz, r13.w, l(24), t3.xyzx
                        r19.x = computeSpritesSampler[]..swiz;
                        r19.y = computeSpritesSampler[]..swiz;
                        r19.z = computeSpritesSampler[]..swiz;
                          r8.y = (uint)r19.x >> 28;
                          r8.y = 1 << (int)r8.y;
                          if (4 == 0) r24.x = 0; else if (4+24 < 32) {                           r24.x = (uint)r19.y << (32-(4 + 24)); r24.x = (uint)r24.x >> (32-4);                          } else r24.x = (uint)r19.y >> 24;
                          if (12 == 0) r24.y = 0; else if (12+16 < 32) {                           r24.y = (uint)r19.x << (32-(12 + 16)); r24.y = (uint)r24.y >> (32-12);                          } else r24.y = (uint)r19.x >> 16;
                          if (10 == 0) r24.z = 0; else if (10+12 < 32) {                           r24.z = (uint)r19.z << (32-(10 + 12)); r24.z = (uint)r24.z >> (32-10);                          } else r24.z = (uint)r19.z >> 12;
                          r8.z = 1 << (int)r24.x;
                          r9.y = (int)r19.y & 4095;
                          r26.xyzw = (uint4)r8.yzyz;
                          r8.yz = r18.xy * r26.zw + float2(0.5,0.5);
                          r16.zw = float2(-0.5,-0.5) + r26.zw;
                          r8.yz = min(r16.zw, r8.yz);
                          r18.xz = (uint2)r24.yz;
                          r18.y = (uint)r9.y;
                          r16.zw = r18.xy + r8.yz;
                          r18.xy = invMaskTexSizes.xy * r16.zw;
                          r17.xyzw = r26.xyzw * r17.xzyw;
                          r9.y = materialTexMask.SampleGrad(computeSpritesSampler_s, r18.xyz, r17.y, r17.w).x;
                          r7.z = cmp(0 < r7.z);
                          if (r7.z != 0) {
                            if (12 == 0) r7.z = 0; else if (12+12 < 32) {                             r7.z = (uint)r19.y << (32-(12 + 12)); r7.z = (uint)r7.z >> (32-12);                            } else r7.z = (uint)r19.y >> 12;
                            r13.w = (int)r19.z & 4095;
                            r19.x = (uint)r7.z;
                            r19.y = (uint)r13.w;
                            r8.yz = r19.xy + r8.yz;
                            r18.xy = invMaskTexSizes.xy * r8.yz;
                            r7.z = materialTexMask.SampleGrad(computeSpritesSampler_s, r18.xyz, r17.x, r17.z).x;
                            r7.z = r7.z + -r9.y;
                            r9.y = r14.x * r7.z + r9.y;
                          }
                        } else {
                          r9.y = 1;
                        }
                        r7.z = r9.y * r8.x;
                        r8.x = (uint)r14.y >> 16;
                        r8.x = f16tof32(r8.x);
                        if (1 == 0) r8.y = 0; else if (1+21 < 32) {                         r8.y = (uint)r19.w << (32-(1 + 21)); r8.y = (uint)r8.y >> (32-1);                        } else r8.y = (uint)r19.w >> 21;
                        r8.z = dot(r23.xyz, float3(0.298999995,0.587000012,0.114));
                        r8.z = max(9.99999975e-05, r8.z);
                        r8.z = max(relHDRExposure.x, r8.z);
                        r8.z = r8.z * r8.x;
                        r8.x = r8.y ? r8.x : r8.z;
                        r7.z = r8.x * r7.z;
                        r23.xyz = r22.xyz * r7.zzz + r23.xyz;
                      }
                      r7.z = -r24.w * r16.y + 1;
                      r11.w = r11.w * r7.z;
                      r8.x = cmp(r11.w < 0.800000012);
                      r8.y = cmp(0.200000003 < r25.w);
                      r8.x = (int)r8.y | (int)r8.x;
                      if (r8.x != 0) {
                        r8.x = cmp(r14.z >= 0.000492187508);
                        if (r8.x != 0) {
                          r8.x = 1 + -r14.z;
                          r8.yz = float2(5.60519386e-45,0);
                          while (true) {
                            r9.y = cmp((int)r8.z >= 4);
                            if (r9.y != 0) break;
                            r9.y = (uint)r8.z << 2;
                          // Known bad code for instruction (needs manual fix):
                                                    ld_structured r9.y, vThreadIDInGroupFlattened.x, r9.y, g0.xxxx
                          r9.y = computeSpritesSampler[]..swiz;
                            r9.y = cmp(r9.y >= r8.x);
                            if (r9.y != 0) {
                              r8.y = r8.z;
                              break;
                            }
                            r9.z = (int)r8.z + 1;
                            r8.yz = r9.wz;
                          }
                          floatZSampler[vThreadIDInGroupFlattened.x].16 = g0.x;
                          floatZSampler[vThreadIDInGroupFlattened.x].16 = g1.x;
                          r8.z = (uint)r8.y << 2;
                          r9.y = (int)r8.z + -4;
                        // Known bad code for instruction (needs manual fix):
                                                ld_structured r9.y, vThreadIDInGroupFlattened.x, r9.y, g1.xxxx
                        r9.y = computeSpritesSampler[]..swiz;
                          r9.y = r8.y ? r9.y : 1;
                          r9.z = 3;
                          while (true) {
                            r13.w = cmp((int)r9.z < 0);
                            if (r13.w != 0) break;
                            r13.w = cmp((int)r9.z >= (int)r8.y);
                            if (r13.w != 0) {
                              r13.w = (uint)r9.z << 2;
                              r14.x = (int)r13.w + 4;
                            // Known bad code for instruction (needs manual fix):
                                                        ld_structured r14.y, vThreadIDInGroupFlattened.x, r13.w, g0.xxxx
                            r14.y = computeSpritesSampler[]..swiz;
                              floatZSampler[vThreadIDInGroupFlattened.x].r14.x = g0.x;
                            // Known bad code for instruction (needs manual fix):
                                                        ld_structured r13.w, vThreadIDInGroupFlattened.x, r13.w, g1.xxxx
                            r13.w = computeSpritesSampler[]..swiz;
                              r13.w = r13.w * r7.z;
                              floatZSampler[vThreadIDInGroupFlattened.x].r14.x = g1.x;
                            }
                            r9.z = (int)r9.z + -1;
                          }
                          floatZSampler[vThreadIDInGroupFlattened.x].r8.z = g0.x;
                          r8.x = r9.y * r7.z;
                          floatZSampler[vThreadIDInGroupFlattened.x].r8.z = g1.x;
                        // Known bad code for instruction (needs manual fix):
                                                ld_structured r8.x, vThreadIDInGroupFlattened.x, l(16), g0.xxxx
                        r8.x = computeSpritesSampler[]..swiz;
                          r8.x = cmp(r8.x != 1000000015047466219876688855040.000000);
                          if (r8.x != 0) {
                            r8.x = 2;
                            while (true) {
                              r8.z = cmp((int)r8.x >= 4);
                              if (r8.z != 0) break;
                              r8.z = (uint)r8.x << 2;
                            // Known bad code for instruction (needs manual fix):
                                                        ld_structured r9.y, vThreadIDInGroupFlattened.x, r8.z, g0.xxxx
                            r9.y = computeSpritesSampler[]..swiz;
                              r8.z = (int)r8.z + -4;
                            // Known bad code for instruction (needs manual fix):
                                                        ld_structured r9.z, vThreadIDInGroupFlattened.x, r8.z, g0.xxxx
                            r9.z = computeSpritesSampler[]..swiz;
                              r9.y = r9.y + -r9.z;
                            // Known bad code for instruction (needs manual fix):
                                                        ld_structured r14.xy, vThreadIDInGroupFlattened.x, r8.z, g1.xyxx
                            r14.x = computeSpritesSampler[]..swiz;
                            r14.y = computeSpritesSampler[]..swiz;
                              r8.z = r14.x + -r14.y;
                              r8.z = r9.y * r8.z;
                              x9[r8.x+0].x = r8.z;
                              r8.x = (int)r8.x + 1;
                            }
                            r8.x = x9[2].x;
                            r8.z = x9[3].x;
                            r8.x = cmp(r8.z < r8.x);
                            r8.xz = r8.xx ? float2(3,2) : float2(2,1);
                            r9.y = 2;
                            while (true) {
                              r9.z = cmp((int)r9.y >= 4);
                              if (r9.z != 0) break;
                              r9.z = cmp((int)r9.y >= (int)r8.x);
                              if (r9.z != 0) {
                                r9.z = (uint)r9.y << 2;
                                r13.w = (int)r9.z + 4;
                              // Known bad code for instruction (needs manual fix):
                                                            ld_structured r13.w, vThreadIDInGroupFlattened.x, r13.w, g0.xxxx
                              r13.w = computeSpritesSampler[]..swiz;
                                floatZSampler[vThreadIDInGroupFlattened.x].r9.z = g0.x;
                              }
                              r9.y = (int)r9.y + 1;
                            }
                            r8.x = 1;
                            while (true) {
                              r9.y = cmp((int)r8.x >= 4);
                              if (r9.y != 0) break;
                              r9.y = cmp((int)r8.x >= (int)r8.z);
                              if (r9.y != 0) {
                                r9.y = (uint)r8.x << 2;
                                r9.z = (int)r9.y + 4;
                              // Known bad code for instruction (needs manual fix):
                                                            ld_structured r9.z, vThreadIDInGroupFlattened.x, r9.z, g1.xxxx
                              r9.z = computeSpritesSampler[]..swiz;
                                floatZSampler[vThreadIDInGroupFlattened.x].r9.y = g1.x;
                              }
                              r8.x = (int)r8.x + 1;
                            }
                          }
                        }
                      }
                      r8.xz = (uint2)r21.xw >> int2(16,16);
                      r14.y = f16tof32(r21.w);
                      r14.xz = f16tof32(r8.xz);
                      r8.xz = (uint2)r20.yz >> int2(16,16);
                      r17.xy = f16tof32(r20.yz);
                      r17.zw = f16tof32(r8.xz);
                      r16.yzw = r17.xzy * r25.www;
                      r21.x = r20.w;
                      r17.xyz = r21.xyz * r25.www;
                      r18.xyz = r25.xyz * r23.xyz + -r16.yzw;
                      r16.yzw = r17.www * r18.xyz + r16.yzw;
                      r14.xyz = r16.yzw * r14.xyz + r17.xyz;
                      r14.xyz = relHDRExposure.yyy * r14.xyz;
                      r12.yzw = r12.yzw * r7.zzz + r14.xyz;
                    }
                  }
                }
              }
            }
            r10.xyzw = r12.xyzw;
            r0.w = r11.w;
            r1.xz = r13.xy;
          }
          r2.xyzw = r10.yzwx;
          r1.w = r0.w;
          r11.x = r1.x;
        }
      } else {
        r11.x = 0;
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
      r1.xyz = r2.xyz;
      r0.x = r2.w;
      r0.z = r11.x;
      while (true) {
        r0.w = cmp((uint)r0.z >= (uint)r0.y);
        if (r0.w != 0) break;
        r5.z = (int)r0.x & 7;
        r3.xy = oit_Nodes.Load(r5.xyzw).xy;
        r4.xyz = (uint3)r3.xxx >> int3(1,8,16);
        r0.w = (int)r4.x & 0x7f800000;
        bitmask.x = ((~(-1 << 8)) << 15) & 0xffffffff;  r3.x = (((uint)r3.x << 15) & bitmask.x) | ((uint)0 & ~bitmask.x);
        bitmask.x = ((~(-1 << 23)) << 0) & 0xffffffff;  r3.x = (((uint)r3.x << 0) & bitmask.x) | ((uint)r4.x & ~bitmask.x);
        r6.x = r3.x + -r0.w;
        bitmask.x = ((~(-1 << 8)) << 15) & 0xffffffff;  r3.x = (((uint)r4.y << 15) & bitmask.x) | ((uint)0 & ~bitmask.x);
        bitmask.z = ((~(-1 << 8)) << 15) & 0xffffffff;  r3.z = (((uint)r4.z << 15) & bitmask.z) | ((uint)0 & ~bitmask.z);
        bitmask.x = ((~(-1 << 23)) << 0) & 0xffffffff;  r3.x = (((uint)r3.x << 0) & bitmask.x) | ((uint)r4.x & ~bitmask.x);
        bitmask.z = ((~(-1 << 23)) << 0) & 0xffffffff;  r3.z = (((uint)r3.z << 0) & bitmask.z) | ((uint)r4.x & ~bitmask.z);
        r6.yz = r3.xz + -r0.ww;
        r0.w = (int)r3.y & 2046;
        r0.w = (uint)r0.w;
        r0.w = -r0.w * 0.000488758553 + 1;
        r1.xyz = r1.xyz * r0.www + r6.xyz;
        r0.z = (int)r0.z + 1;
        r0.x = (uint)r0.x >> 4;
      }
      r1.w = 0;
    // No code for instruction (needs manual fix):
        store_uav_typed u5.xyzw, vThreadID.xyyy, r1.xyzw
    }
  }
  return;
}