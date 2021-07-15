// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:19 2021

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

Texture2D<float4> gGBufferNormalAndGloss : register(t0);
Texture2D<float> gGBufferDepth : register(t1);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main()
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u1
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_structured u2, 8
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u3
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u5
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u6
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_structured g0, 8, 64
// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_raw g1, 4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = mad((int2)vThreadGroupID.xy, int2(8,8), (int2)vThreadIDInGroup.xy);
  r0.zw = float2(0,0);
  r1.xyzw = gGBufferNormalAndGloss.Load(r0.xyw).xyzw;
  r2.x = cmp(r1.z >= 0.5);
  r2.y = cmp(0 < r1.z);
  r2.y = r2.y ? 0.000000 : 0;
  r2.x = r2.x ? 2 : r2.y;
  if (vThreadIDInGroupFlattened.x == 0) {
  // No code for instruction (needs manual fix):
    store_raw g1.x, l(0), l(0)
  }
  GroupMemoryBarrierWithGroupSync();
  if (r2.x == 0) {
    // Needs manual fix for instruction:
    atomic_iadd g1, l(0), l(1)
    InterlockedAdd(dest, value, orig_value);
  }
  GroupMemoryBarrierWithGroupSync();
// No code for instruction (needs manual fix):
ld_raw r2.y, l(0), g1.xxxx
  r2.z = cmp(1 >= (uint)r2.x);
  if (vThreadIDInGroupFlattened.x == 0) {
  // No code for instruction (needs manual fix):
    store_raw g1.x, l(0), l(0)
  }
  GroupMemoryBarrierWithGroupSync();
  if (r2.z != 0) {
    // Needs manual fix for instruction:
    atomic_iadd g1, l(0), l(1)
    InterlockedAdd(dest, value, orig_value);
  }
  GroupMemoryBarrierWithGroupSync();
// No code for instruction (needs manual fix):
ld_raw r2.z, l(0), g1.xxxx
  if (r2.x != 0) {
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r0.xyyy, r1.xyzw
  }
  r0.z = gGBufferDepth.Load(r0.xyz).x;
  r0.w = cmp(0 < r0.z);
  r1.x = cmp(r0.z >= 0.984375);
  r1.y = 1.01587307 * r0.z;
  r0.z = r0.z * 64 + -63;
  r0.z = r1.x ? r0.z : r1.y;
  r0.z = max(9.99999994e-09, r0.z);
  r0.z = rcp(r0.z);
  r1.x = r0.w ? r0.z : 131072;
  r1.y = r0.w ? r0.z : 0;
  gGBufferNormalAndGloss[vThreadIDInGroupFlattened.x].0 = g0.xy;
  GroupMemoryBarrierWithGroupSync();
  r3.xyzw = (int4)vThreadIDInGroupFlattened.xxxx & int4(1,9,11,27);
  if (r3.x == 0) {
    r0.z = (int)vThreadIDInGroupFlattened.x | 1;
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.zw, r0.z, l(0), g0.xxxy
  r0.z = gGBufferNormalAndGloss[]..swiz;
  r0.w = gGBufferNormalAndGloss[]..swiz;
    r1.x = min(r1.x, r0.z);
    r1.y = max(r1.y, r0.w);
    gGBufferNormalAndGloss[vThreadIDInGroupFlattened.x].0 = g0.xy;
  }
  GroupMemoryBarrierWithGroupSync();
  if (r3.y == 0) {
    r0.z = (int)vThreadIDInGroupFlattened.x | 8;
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.zw, r0.z, l(0), g0.xxxy
  r0.z = gGBufferNormalAndGloss[]..swiz;
  r0.w = gGBufferNormalAndGloss[]..swiz;
    r1.x = min(r1.x, r0.z);
    r1.y = max(r1.y, r0.w);
    gGBufferNormalAndGloss[vThreadIDInGroupFlattened.x].0 = g0.xy;
  }
  GroupMemoryBarrierWithGroupSync();
  if (r3.y == 0) {
    r4.xyzw = (uint4)r0.xyyy >> int4(1,1,1,1);
    r0.z = min(65504, r1.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u3.xyzw, r4.xyzw, r0.zzzz
  }
  if (r3.z == 0) {
    r0.z = (int)vThreadIDInGroupFlattened.x | 2;
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.zw, r0.z, l(0), g0.xxxy
  r0.z = gGBufferNormalAndGloss[]..swiz;
  r0.w = gGBufferNormalAndGloss[]..swiz;
    r1.x = min(r1.x, r0.z);
    r1.y = max(r1.y, r0.w);
    gGBufferNormalAndGloss[vThreadIDInGroupFlattened.x].0 = g0.xy;
  }
  GroupMemoryBarrierWithGroupSync();
  if (r3.w == 0) {
    r0.z = (int)vThreadIDInGroupFlattened.x | 16;
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.zw, r0.z, l(0), g0.xxxy
  r0.z = gGBufferNormalAndGloss[]..swiz;
  r0.w = gGBufferNormalAndGloss[]..swiz;
    r1.x = min(r1.x, r0.z);
    r1.y = max(r1.y, r0.w);
    gGBufferNormalAndGloss[vThreadIDInGroupFlattened.x].0 = g0.xy;
  }
  GroupMemoryBarrierWithGroupSync();
  if (r3.w == 0) {
    r0.xyzw = (uint4)r0.xyyy >> int4(2,2,2,2);
    r1.z = min(65504, r1.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u4.xyzw, r0.xyzw, r1.zzzz
  }
  r0.x = (int)vThreadIDInGroupFlattened.x & 31;
  if (r0.x == 0) {
    r0.x = (int)vThreadIDInGroupFlattened.x | 4;
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.xy, r0.x, l(0), g0.xyxx
  r0.x = gGBufferNormalAndGloss[]..swiz;
  r0.y = gGBufferNormalAndGloss[]..swiz;
    r1.x = min(r1.x, r0.x);
    r1.y = max(r1.y, r0.y);
    gGBufferNormalAndGloss[vThreadIDInGroupFlattened.x].0 = g0.xy;
  }
  GroupMemoryBarrierWithGroupSync();
  if (vThreadIDInGroupFlattened.x == 0) {
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.xy, l(32), l(0), g0.xyxx
  r0.x = gGBufferNormalAndGloss[]..swiz;
  r0.y = gGBufferNormalAndGloss[]..swiz;
    r0.x = min(r1.x, r0.x);
    r0.y = max(r1.y, r0.y);
    if (29 == 0) r1.x = 0; else if (29+0 < 32) {     r1.x = (uint)vThreadGroupID.x << (32-(29 + 0)); r1.x = (uint)r1.x >> (32-29);    } else r1.x = (uint)vThreadGroupID.x >> 0;
    if (29 == 0) r1.y = 0; else if (29+0 < 32) {     r1.y = (uint)vThreadGroupID.y << (32-(29 + 0)); r1.y = (uint)r1.y >> (32-29);    } else r1.y = (uint)vThreadGroupID.y >> 0;
    if (29 == 0) r1.z = 0; else if (29+0 < 32) {     r1.z = (uint)vThreadGroupID.y << (32-(29 + 0)); r1.z = (uint)r1.z >> (32-29);    } else r1.z = (uint)vThreadGroupID.y >> 0;
    if (29 == 0) r1.w = 0; else if (29+0 < 32) {     r1.w = (uint)vThreadGroupID.y << (32-(29 + 0)); r1.w = (uint)r1.w >> (32-29);    } else r1.w = (uint)vThreadGroupID.y >> 0;
    r0.z = (uint)renderTargetSize.x;
    r0.z = (int)r0.z + 7;
    r0.z = (uint)r0.z >> 3;
    r0.z = mad((int)vThreadGroupID.y, (int)r0.z, (int)vThreadGroupID.x);
    r0.w = cmp((int)r2.y == 64);
    r2.x = cmp((int)r2.z == 64);
    r2.y = min(65504, r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u5.xyzw, r1.xwww, r2.yyyy
  // No code for instruction (needs manual fix):
    store_uav_typed u6.xyzw, r1.xyzw, r2.yyyy
    r1.x = 0.00100000005 + r0.x;
    r0.y = max(r1.x, r0.y);
    r1.x = r0.w ? 3.40282347e+38 : r0.x;
    r1.y = r2.x ? -r0.y : r0.y;
    gGBufferNormalAndGloss[r0.z].0 = u2.xy;
  }
  return;
}