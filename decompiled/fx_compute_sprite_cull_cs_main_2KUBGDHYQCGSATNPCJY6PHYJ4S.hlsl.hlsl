// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:26:01 2021

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

Texture2D<float> zBufferRough : register(t0);
StructuredBuffer<spritePos> spritePos : register(t10);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main()
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t10, 32
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2darray (uint,uint,uint,uint) u0
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2darray (uint,uint,uint,uint) u2
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = mad((int2)vThreadGroupID.xy, int2(8,8), (int2)vThreadIDInGroup.xy);
// Unknown use of GetDimensions for resinfo_ from missing reflection info, need manual fix.
// resinfo_indexable(texture2darray)(uint,uint,uint,uint)_uint r1.xy, l(0), u0.xyzw
// Example for texture2d type, uint return:
tx.GetDimensions(0, uiDest.x, uiDest.y, uiDest.z);
rx = uiDest;
 state=1, constZero.eType=4, returnType=2, texture.eType=30, afImmediates[0]=0.000000
  r1.xy = cmp((uint2)r0.xy >= (uint2)r1.xy);
  r1.x = (int)r1.y | (int)r1.x;
  if (r1.x != 0) {
    return;
  }
  r1.xy = (uint2)vThreadIDInGroup.xy << int2(5,5);
  r1.xy = mad((int2)vThreadGroupID.xy, int2(256,256), (int2)r1.xy);
  r1.zw = (int2)r1.xy + int2(31,31);
  r2.xyzw = (uint4)r1.xyxw;
  r3.xyzw = (uint4)r1.zyzw;
  r1.x = (uint)vThreadGroupID.z << 5;
  r0.z = 0;
  r1.y = zBufferRough.Load(r0.xyz).x;
  r4.y = r1.x;
  r4.xz = float2(0,0);
  while (true) {
    r1.z = cmp((uint)r4.z < 32);
    r1.w = cmp((uint)r4.y < (uint)computeSpriteControl.x);
    r1.z = r1.w ? r1.z : 0;
    if (r1.z == 0) break;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=32)(mixed,mixed,mixed,mixed) r5.xyz, r4.y, l(16), t10.xyzx
  r5.x = zBufferRough[]..swiz;
  r5.y = zBufferRough[]..swiz;
  r5.z = zBufferRough[]..swiz;
    r1.z = cmp(r1.y < r5.z);
    if (r1.z != 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=32)(mixed,mixed,mixed,mixed) r6.xyzw, r4.y, l(0), t10.xyzw
    r6.x = zBufferRough[]..swiz;
    r6.y = zBufferRough[]..swiz;
    r6.z = zBufferRough[]..swiz;
    r6.w = zBufferRough[]..swiz;
      r1.z = dot(r6.xy, r2.xy);
      r1.w = dot(r6.zw, r2.xy);
      r1.zw = r1.zw + r5.xy;
      r4.w = dot(r6.xy, r2.zw);
      r4.w = r4.w + r5.x;
      r5.z = dot(r6.zw, r2.zw);
      r5.w = dot(r6.xy, r3.xy);
      r5.zw = r5.zw + r5.yx;
      r7.x = dot(r6.zw, r3.xy);
      r7.x = r7.x + r5.y;
      r6.x = dot(r6.xy, r3.zw);
      r5.x = r6.x + r5.x;
      r6.x = dot(r6.zw, r3.zw);
      r5.y = r6.x + r5.y;
      r6.x = min(r4.w, r1.z);
      r6.y = min(r5.w, r5.x);
      r6.x = min(r6.x, r6.y);
      r6.y = min(r5.z, r1.w);
      r6.z = min(r7.x, r5.y);
      r6.y = min(r6.y, r6.z);
      r1.z = max(r4.w, r1.z);
      r4.w = max(r5.w, r5.x);
      r1.z = max(r4.w, r1.z);
      r1.w = max(r5.z, r1.w);
      r4.w = max(r7.x, r5.y);
      r1.w = max(r4.w, r1.w);
      r4.w = cmp(r6.x < 1);
      r1.zw = cmp(float2(0,0) < r1.zw);
      r1.z = r1.z ? r4.w : 0;
      r4.w = cmp(r6.y < 1);
      r1.w = r1.w ? r4.w : 0;
      r1.z = r1.w ? r1.z : 0;
      bitmask.w = ((~(-1 << 1)) << r4.z) & 0xffffffff;  r1.w = (((uint)1 << r4.z) & bitmask.w) | ((uint)r4.x & ~bitmask.w);
      r4.x = r1.z ? r1.w : r4.x;
    }
    r4.yz = (int2)r4.yz + int2(1,1);
  }
  r0.w = vThreadGroupID.z;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xyww, r4.xxxx
  if (r4.x != 0) {
    r0.z = (uint)vThreadGroupID.z >> 5;
    r0.w = 1 << (int)vThreadGroupID.z;
    // Needs manual fix for instruction:
    atomic_or u2, r0.xyzx, r0.w
    InterlockedOr(dest, value, orig_value);
  }
  return;
}