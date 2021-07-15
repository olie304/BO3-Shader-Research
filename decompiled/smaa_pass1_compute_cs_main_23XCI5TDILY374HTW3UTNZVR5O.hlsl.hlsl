// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:46 2021

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

SamplerState bilinearSampler_s : register(s0);
Texture2D<float4> lumaTex : register(t1);
Texture2D<float4> colorTex : register(t2);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main()
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u1
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_structured_opc u4, 12
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_structured_opc u5, 12
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_structured g0, 48, 12
// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xyz = (uint3)vThreadIDInGroup.xyy << int3(1,1,2);
  r0.w = max((uint)r0.x, (uint)r0.y);
  r0.w = cmp((uint)r0.w < 12);
  if (r0.w != 0) {
    r1.xy = (int2)vThreadIDInGroup.xy + (int2)vThreadID.xy;
    r1.xy = (int2)r1.xy + int2(-1,-1);
    r1.xy = (uint2)r1.xy;
    r1.xy = renderTargetSize.zw * r1.xy;
    r1.xyzw = lumaTex.Gather(bilinearSampler_s, r1.xy).xyzw;
    r0.y = (uint)r0.y << 2;
    [r0.x].r0.y = g0.x;
    r0.w = mad((int)vThreadIDInGroup.x, 2, 1);
    [r0.w].r0.y = g0.x;
    r1.z = (int)r0.y + 4;
    [r0.x].r1.z = g0.x;
    [r0.w].r1.z = g0.x;
  }
  GroupMemoryBarrierWithGroupSync();
// No code for instruction (needs manual fix):
store_uav_typed u1.xyzw, vThreadID.xyyy, l(0,0,0,0)
  r0.xyw = (int3)vThreadIDInGroup.xyx + int3(2,2,1);
  r1.x = (int)r0.z + 8;
// Known bad code for instruction (needs manual fix):
ld_structured r1.y, r0.x, r1.x, g0.xxxx
r1.y = bilinearSampler[]..swiz;
  r0.y = (uint)r0.y << 2;
  r1.z = (int)r0.y + -4;
// Known bad code for instruction (needs manual fix):
ld_structured r1.w, r0.x, r1.z, g0.xxxx
r1.w = bilinearSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured r2.x, r0.w, r1.x, g0.xxxx
r2.x = bilinearSampler[]..swiz;
  r2.y = -r2.x + r1.y;
  r3.xzw = abs(r2.yyy);
  r2.y = r1.y + -r1.w;
  r3.y = abs(r2.y);
  r4.xyzw = cmp(r3.wyww >= float4(0.100000001,0.100000001,0.100000001,0.100000001));
  r4.xyzw = r4.xyzw ? float4(1,1,1,1) : 0;
  r2.y = max(r4.w, r4.y);
  r2.y = cmp(0 != r2.y);
  if (r2.y != 0) {
    r5.xyzw = (int4)vThreadID.xyxx;
    r5.xyzw = float4(0.5,0.5,0.5,0.5) + r5.xyzw;
    r5.xyzw = renderTargetSize.zwzz * r5.xyzw;
    r0.yz = (int2)r0.yz + int2(-8,12);
  // Known bad code for instruction (needs manual fix):
    ld_structured r2.y, r0.x, r0.z, g0.xxxx
  r2.y = bilinearSampler[]..swiz;
    r2.z = (int)vThreadIDInGroup.x + 3;
  // Known bad code for instruction (needs manual fix):
    ld_structured r6.xy, r2.z, r1.x, g0.xyxx
  r6.x = bilinearSampler[]..swiz;
  r6.y = bilinearSampler[]..swiz;
    r2.w = -r6.x + r1.y;
    r7.y = abs(r2.w);
    r2.w = -r2.y + r1.y;
    r7.xzw = abs(r2.www);
  // Known bad code for instruction (needs manual fix):
    ld_structured r2.w, r0.w, r1.z, g0.xxxx
  r2.w = bilinearSampler[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.z, r0.w, r0.z, g0.xxxx
  r0.z = bilinearSampler[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r6.z, r2.z, r1.z, g0.xxxx
  r6.z = bilinearSampler[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.x, r0.x, r0.y, g0.xxxx
  r0.x = bilinearSampler[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r8.xy, vThreadIDInGroup.x, r1.x, g0.xyxx
  r8.x = bilinearSampler[]..swiz;
  r8.y = bilinearSampler[]..swiz;
    r1.x = -r8.x + r2.x;
    r9.xzw = abs(r1.xxx);
    r1.x = r1.w + -r0.x;
    r9.y = abs(r1.x);
    r9.xyzw = max(r9.xyzw, r7.ywyy);
    r10.xyzw = float4(1.5,1.5,1.5,1.5) * r3.wyww;
    r9.xyzw = cmp(r10.xyzw >= r9.xyzw);
    r9.xyzw = r9.xyzw ? float4(1,1,1,1) : 0;
    r4.xyzw = r9.xyzw * r4.xyzw;
    r7.xyzw = max(r7.xyzw, r3.ywyy);
    r1.x = r2.x + -r2.w;
    r9.xzw = abs(r1.xxx);
    r1.x = r2.x + -r0.z;
    r10.xzw = abs(r1.xxx);
    r1.x = -r2.w + r1.w;
    r9.y = abs(r1.x);
    r1.x = -r6.z + r1.w;
    r10.y = abs(r1.x);
    r9.xyzw = max(r10.xyzw, r9.xyzw);
    r7.xyzw = max(r9.xyzw, r7.xyzw);
    r3.xyzw = r3.xyzw + r3.xyzw;
    r3.xyzw = cmp(r3.xyzw >= r7.xyzw);
    r3.xyzw = r3.xyzw ? float4(1,1,1,1) : 0;
    r3.xyzw = r4.xyzw * r3.xyzw;
    r4.xyzw = cmp(r5.xyzw >= renderTargetSize.zwzz);
    r4.xyzw = r4.xyzw ? float4(1,1,1,1) : 0;
    r3.xyzw = r4.xyzw * r3.xyzw;
    r1.x = r1.w * 2 + r2.w;
    r1.x = r1.x + r6.z;
    r1.x = r1.y * 4 + -r1.x;
    r2.w = r2.x * 2 + r2.w;
    r2.w = r2.w + r0.z;
    r2.w = r1.y * 4 + -r2.w;
    r0.z = r2.y * 2 + r0.z;
    r0.z = r0.z + r6.y;
    r0.z = r1.y * 4 + -r0.z;
    r2.y = r6.x * 2 + r6.z;
    r2.y = r2.y + r6.y;
    r1.y = r1.y * 4 + -r2.y;
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.w, r0.w, r0.y, g0.xxxx
  r0.w = bilinearSampler[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.y, r2.z, r0.y, g0.xxxx
  r0.y = bilinearSampler[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.z, vThreadIDInGroup.x, r1.z, g0.xxxx
  r1.z = bilinearSampler[]..swiz;
    r0.x = r0.x * 2 + r0.w;
    r0.x = r0.x + r0.y;
    r0.x = r1.w * 4 + -r0.x;
    r0.y = abs(r0.x);
    r0.w = r8.x * 2 + r1.z;
    r0.w = r0.w + r8.y;
    r0.w = r2.x * 4 + -r0.w;
    r0.x = abs(r0.w);
    r0.z = max(abs(r1.x), abs(r0.z));
    r0.w = max(abs(r2.w), abs(r1.y));
    r0.w = max(r0.z, r0.w);
    r0.xw = max(r0.ww, r0.xy);
    r0.y = max(r0.z, r0.y);
    r0.yz = cmp(abs(r1.xx) == r0.yw);
    r0.yz = r0.yz ? float2(0,0) : 0;
    r0.x = cmp(abs(r2.w) == r0.x);
    r0.x = r0.x ? 8 : r0.z;
    r0.y = (int)r0.y + (int)r0.x;
    r0.y = (int)r0.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, vThreadID.xyyy, r3.xyzw
    r1.xy = vThreadID.xy;
    r1.zw = float2(0,0);
    r1.xyz = colorTex.Load(r1.xyz).xyz;
    r2.xyz = (int3)r1.xyz & int3(2139095040,2139095040,2139095040);
    r2.xyz = cmp((int3)r2.xyz != int3(2139095040,2139095040,2139095040));
    r0.z = (uint)r0.y;
    r0.z = (uint)r0.z << 24;
    r0.w = (uint)vThreadID.y << 12;
    r0.z = (int)r0.w | (int)r0.z;
    r3.x = (int)r0.z | (int)vThreadID.x;
    r1.xyz = f32tof16(r1.xyz);
    r1.xyz = r2.xyz ? r1.xyz : float3(31743,31743,31743);
    if (11 == 0) r0.z = 0; else if (11+4 < 32) {     r0.z = (uint)r1.x << (32-(11 + 4)); r0.z = (uint)r0.z >> (32-11);    } else r0.z = (uint)r1.x >> 4;
    r1.xy = (uint2)r1.yz << int2(7,17);
    r0.w = (int)r1.x & 0x003ff800;
    r0.z = (int)r0.w + (int)r0.z;
    bitmask.y = ((~(-1 << 22)) << 0) & 0xffffffff;  r3.y = (((uint)r0.z << 0) & bitmask.y) | ((uint)r1.y & ~bitmask.y);
    r0.y = 0.5 + r0.y;
    r0.y = (int)r0.y;
    r0.yz = (int2)r0.yy & int2(8,34);
    if (r0.y != 0) {
      if (1 == 0) r0.y = 0; else if (1+1 < 32) {       r0.y = (uint)r0.x << (32-(1 + 1)); r0.y = (uint)r0.y >> (32-1);      } else r0.y = (uint)r0.x >> 1;
      r0.x = (uint)r0.x >> 3;
      r1.xy = -(int2)r0.xy;
      r1.xy = (int2)r1.xy + (int2)vThreadID.xy;
      r1.zw = float2(0,0);
      r0.xyw = colorTex.Load(r1.xyz).xyz;
      r1.xyz = (int3)r0.xyw & int3(2139095040,2139095040,2139095040);
      r1.xyz = cmp((int3)r1.xyz != int3(2139095040,2139095040,2139095040));
      r0.xyw = f32tof16(r0.xyw);
      r0.xyw = r1.xyz ? r0.xyw : float3(31743,31743,31743);
      if (11 == 0) r0.x = 0; else if (11+4 < 32) {       r0.x = (uint)r0.x << (32-(11 + 4)); r0.x = (uint)r0.x >> (32-11);      } else r0.x = (uint)r0.x >> 4;
      r0.yw = (uint2)r0.yw << int2(7,17);
      r0.y = (int)r0.y & 0x003ff800;
      r0.x = (int)r0.y + (int)r0.x;
      bitmask.z = ((~(-1 << 22)) << 0) & 0xffffffff;  r3.z = (((uint)r0.x << 0) & bitmask.z) | ((uint)r0.w & ~bitmask.z);
      // Needs manual fix for instruction:
        imm_atomic_alloc r1.x, u5
      InterlockedExchange ?(dest, value, orig_value);
      [r1.x].0 = u5.xyz;
    }
    if (r0.z != 0) {
      r0.xy = (int2)vThreadID.xy + int2(0,-1);
      r0.zw = float2(0,0);
      r0.xyz = colorTex.Load(r0.xyz).xyz;
      r1.xyz = (int3)r0.xyz & int3(2139095040,2139095040,2139095040);
      r1.xyz = cmp((int3)r1.xyz != int3(2139095040,2139095040,2139095040));
      r0.xyz = f32tof16(r0.xyz);
      r0.xyz = r1.xyz ? r0.xyz : float3(31743,31743,31743);
      if (11 == 0) r0.x = 0; else if (11+4 < 32) {       r0.x = (uint)r0.x << (32-(11 + 4)); r0.x = (uint)r0.x >> (32-11);      } else r0.x = (uint)r0.x >> 4;
      r0.yz = (uint2)r0.yz << int2(7,17);
      r0.y = (int)r0.y & 0x003ff800;
      r0.x = (int)r0.y + (int)r0.x;
      bitmask.w = ((~(-1 << 22)) << 0) & 0xffffffff;  r3.w = (((uint)r0.x << 0) & bitmask.w) | ((uint)r0.z & ~bitmask.w);
      // Needs manual fix for instruction:
        imm_atomic_alloc r0.x, u4
      InterlockedExchange ?(dest, value, orig_value);
      [r0.x].0 = u4.xyz;
    }
  }
  return;
}