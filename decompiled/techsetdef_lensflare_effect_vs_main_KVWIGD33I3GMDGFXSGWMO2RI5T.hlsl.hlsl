// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:13 2021

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

StructuredBuffer<gArtefactsStatic> gArtefactsStatic : register(t6);
StructuredBuffer<gArtefactsDynamic> gArtefactsDynamic : register(t7);
StructuredBuffer<gEmitterStatic> gEmitterStatic : register(t9);
StructuredBuffer<lensFlareTotalAlpha> lensFlareTotalAlpha : register(t10);
StructuredBuffer<lensFlarePixelCount> lensFlarePixelCount : register(t11);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : POSITION0,
  float4 v1 : COLOR0,
  float2 v2 : TEXCOORD0,
  uint v3 : SV_VertexID0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float p1 : TEXCOORD2,
  out float4 o2 : COLOR0,
  out float2 o3 : TEXCOORD1)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t6, 64
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t7, 64
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t9, 208
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t10, 4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t11, 4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_input_sgv v3.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (uint)v3.x >> 2;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, r0.x, l(32), t6.xyzw
r1.x = gArtefactsStatic[]..swiz;
r1.y = gArtefactsStatic[]..swiz;
r1.z = gArtefactsStatic[]..swiz;
r1.w = gArtefactsStatic[]..swiz;
  r0.y = (uint)r1.z;
  r0.y = v1.w * 255 + r0.y;
  r0.y = (uint)r0.y;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r0.y, l(48), t7.xyzw
r2.x = gArtefactsStatic[]..swiz;
r2.y = gArtefactsStatic[]..swiz;
r2.z = gArtefactsStatic[]..swiz;
r2.w = gArtefactsStatic[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r0.z, r2.x, l(0), t11.xxxx
r0.z = gArtefactsStatic[]..swiz;
  r0.z = (uint)r0.z;
  r0.w = (int)r2.w & 4;
  r2.yz = (uint2)r2.zy;
  r2.z = r2.z + r0.z;
  r0.w = r0.w ? r2.y : r2.z;
  r2.z = cmp(0 >= r0.w);
  r3.x = cmp(0 >= r2.y);
  r2.z = (int)r2.z | (int)r3.x;
  if (r2.z != 0) {
    o0.xyzw = float4(0,0,0,0);
    o2.xyzw = float4(0,0,0,0);
    o1.xyz = float3(0,0,0);
    o3.xy = float2(0,0);
    return;
  }
  r2.z = (int)r2.w & 8;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r2.x, r2.x, l(0), t10.xxxx
r2.x = gArtefactsStatic[]..swiz;
  r2.x = (uint)r2.x;
  r2.x = 0.00206185575 * r2.x;
  r2.x = r2.z ? r0.z : r2.x;
  r2.x = r2.x / r0.z;
  r0.z = cmp(0 >= r0.z);
  r3.w = r0.z ? 1 : r2.x;
  r0.z = cmp(0 >= r3.w);
  if (r0.z != 0) {
    o0.xyzw = float4(0,0,0,0);
    o2.xyzw = float4(0,0,0,0);
    o1.xyz = float3(0,0,0);
    o3.xy = float2(0,0);
    return;
  }
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.x, l(0), t6.zwxy
r4.x = gArtefactsStatic[]..swiz;
r4.y = gArtefactsStatic[]..swiz;
r4.z = gArtefactsStatic[]..swiz;
r4.w = gArtefactsStatic[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r0.x, l(16), t6.zwxy
r5.x = gArtefactsStatic[]..swiz;
r5.y = gArtefactsStatic[]..swiz;
r5.z = gArtefactsStatic[]..swiz;
r5.w = gArtefactsStatic[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.y, r0.x, l(48), t6.xxxx
r6.y = gArtefactsStatic[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r0.y, l(0), t7.xyzw
r7.x = gArtefactsStatic[]..swiz;
r7.y = gArtefactsStatic[]..swiz;
r7.z = gArtefactsStatic[]..swiz;
r7.w = gArtefactsStatic[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r8.xyzw, r0.y, l(16), t7.wxyz
r8.x = gArtefactsStatic[]..swiz;
r8.y = gArtefactsStatic[]..swiz;
r8.z = gArtefactsStatic[]..swiz;
r8.w = gArtefactsStatic[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r9.xyzw, r0.y, l(32), t7.yzxw
r9.x = gArtefactsStatic[]..swiz;
r9.y = gArtefactsStatic[]..swiz;
r9.z = gArtefactsStatic[]..swiz;
r9.w = gArtefactsStatic[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r10.xyzw, r1.z, l(0), t9.xyzw
r10.x = gArtefactsStatic[]..swiz;
r10.y = gArtefactsStatic[]..swiz;
r10.z = gArtefactsStatic[]..swiz;
r10.w = gArtefactsStatic[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r11.xyzw, r1.z, l(16), t9.xyzw
r11.x = gArtefactsStatic[]..swiz;
r11.y = gArtefactsStatic[]..swiz;
r11.z = gArtefactsStatic[]..swiz;
r11.w = gArtefactsStatic[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r12.xyzw, r1.z, l(32), t9.xyzw
r12.x = gArtefactsStatic[]..swiz;
r12.y = gArtefactsStatic[]..swiz;
r12.z = gArtefactsStatic[]..swiz;
r12.w = gArtefactsStatic[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r13.xyzw, r1.z, l(48), t9.xyzw
r13.x = gArtefactsStatic[]..swiz;
r13.y = gArtefactsStatic[]..swiz;
r13.z = gArtefactsStatic[]..swiz;
r13.w = gArtefactsStatic[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r14.xyzw, r1.z, l(64), t9.xyzw
r14.x = gArtefactsStatic[]..swiz;
r14.y = gArtefactsStatic[]..swiz;
r14.z = gArtefactsStatic[]..swiz;
r14.w = gArtefactsStatic[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r15.xyzw, r1.z, l(80), t9.xyzw
r15.x = gArtefactsStatic[]..swiz;
r15.y = gArtefactsStatic[]..swiz;
r15.z = gArtefactsStatic[]..swiz;
r15.w = gArtefactsStatic[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r16.xyzw, r1.z, l(96), t9.xyzw
r16.x = gArtefactsStatic[]..swiz;
r16.y = gArtefactsStatic[]..swiz;
r16.z = gArtefactsStatic[]..swiz;
r16.w = gArtefactsStatic[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r0.xy, r1.z, l(112), t9.xyxx
r0.x = gArtefactsStatic[]..swiz;
r0.y = gArtefactsStatic[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r17.xyzw, r1.z, l(164), t9.xyzw
r17.x = gArtefactsStatic[]..swiz;
r17.y = gArtefactsStatic[]..swiz;
r17.z = gArtefactsStatic[]..swiz;
r17.w = gArtefactsStatic[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r18.xyzw, r1.z, l(180), t9.xyzw
r18.x = gArtefactsStatic[]..swiz;
r18.y = gArtefactsStatic[]..swiz;
r18.z = gArtefactsStatic[]..swiz;
r18.w = gArtefactsStatic[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r2.xzw, r1.z, l(196), t9.xxyz
r2.x = gArtefactsStatic[]..swiz;
r2.z = gArtefactsStatic[]..swiz;
r2.w = gArtefactsStatic[]..swiz;
  r0.z = r0.w / r2.y;
  r0.z = r8.y * r0.z;
  r19.xyzw = r7.xyzw * r4.zzww;
  r4.zw = r19.xy + r19.zw;
  r19.xy = r4.zw + r8.zw;
  r0.w = (int)r12.x & 7;
  if (r0.w != 0) {
    r20.xyzw = cmp((int4)r0.wwww == int4(1,2,3,4));
    r21.xy = r19.xy + -r9.xy;
    r22.xyz = cmp((int3)r0.www == int3(5,6,7));
    r23.xy = r9.xy;
    r23.zw = float2(1,0);
    r24.xyzw = r22.zzzz ? r23.xywz : 0;
    r24.xyzw = r22.yyyy ? r23.xyzw : r24.xyzw;
    r22.xyzw = r22.xxxx ? r23.xyzz : r24.xyzw;
    r21.zw = float2(1,1);
    r21.xyzw = r20.wwww ? r21.xyzw : r22.xyzw;
    r19.zw = float2(1,0);
    r21.xyzw = r20.zzzz ? r19.xywz : r21.xyzw;
    r21.xyzw = r20.yyyy ? r19.xyzw : r21.xyzw;
    r20.xyzw = r20.xxxx ? r19.xyzz : r21.xyzw;
    r20.xyzw = r0.wwww ? r20.xyzw : float4(0,0,0,0);
    r4.zw = r20.xy * r20.zw;
    r1.z = dot(r4.zw, r4.zw);
    r1.z = sqrt(r1.z);
    r1.z = r1.z + -r12.y;
    r2.y = r12.w + -r12.y;
    r1.z = saturate(r1.z / r2.y);
    r2.y = r13.w + -r13.y;
    r1.z = r1.z * r2.y + r13.y;
    r2.y = cmp(0 < r1.z);
    r4.z = cmp(r1.z < 0);
    r2.y = (int)-r2.y + (int)r4.z;
    r2.y = (int)r2.y;
    r1.z = log2(abs(r1.z));
    r1.z = r14.y * r1.z;
    r1.z = exp2(r1.z);
    r1.z = r2.y * r1.z;
  } else {
    r1.z = 1;
  }
  r0.w = r0.w ? r1.z : 1;
  if (3 == 0) r4.z = 0; else if (3+3 < 32) {   r4.z = (uint)r12.x << (32-(3 + 3)); r4.z = (uint)r4.z >> (32-3);  } else r4.z = (uint)r12.x >> 3;
  if (2 == 0) r4.w = 0; else if (2+6 < 32) {   r4.w = (uint)r12.x << (32-(2 + 6)); r4.w = (uint)r4.w >> (32-2);  } else r4.w = (uint)r12.x >> 6;
  if (r4.z != 0) {
    r20.xyzw = cmp((int4)r4.zzzz == int4(1,2,3,4));
    r21.xy = r19.xy + -r9.xy;
    r12.xyw = cmp((int3)r4.zzz == int3(5,6,7));
    r22.xy = r9.xy;
    r22.zw = float2(1,0);
    r23.xyzw = r12.wwww ? r22.xywz : 0;
    r23.xyzw = r12.yyyy ? r22.xyzw : r23.xyzw;
    r22.xyzw = r12.xxxx ? r22.xyzz : r23.xyzw;
    r21.zw = float2(1,1);
    r21.xyzw = r20.wwww ? r21.xyzw : r22.xyzw;
    r19.zw = float2(1,0);
    r21.xyzw = r20.zzzz ? r19.xywz : r21.xyzw;
    r21.xyzw = r20.yyyy ? r19.xyzw : r21.xyzw;
    r20.xyzw = r20.xxxx ? r19.xyzz : r21.xyzw;
    r20.xyzw = r4.zzzz ? r20.xyzw : float4(0,0,0,0);
    r6.zw = r20.xy * r20.zw;
    r1.z = dot(r6.zw, r6.zw);
    r1.z = sqrt(r1.z);
    r1.z = r1.z + -r12.z;
    r2.y = r13.x + -r12.z;
    r1.z = saturate(r1.z / r2.y);
    r2.y = r14.x + -r13.z;
    r1.z = r1.z * r2.y + r13.z;
    r2.y = cmp(0 < r1.z);
    r6.z = cmp(r1.z < 0);
    r2.y = (int)-r2.y + (int)r6.z;
    r2.y = (int)r2.y;
    r1.z = log2(abs(r1.z));
    r1.z = r14.z * r1.z;
    r1.z = exp2(r1.z);
    r1.z = r2.y * r1.z;
  } else {
    r1.z = 1;
  }
  r1.z = r4.z ? r1.z : 0;
  r2.y = r1.z + r0.w;
  r4.z = r1.z * r0.w;
  r6.z = min(r1.z, r0.w);
  r12.xyz = cmp((int3)r4.www == int3(1,2,3));
  r1.z = max(r1.z, r0.w);
  r0.w = r12.z ? r1.z : r0.w;
  r0.w = r12.y ? r6.z : r0.w;
  r0.w = r4.w ? r0.w : r4.z;
  r0.w = r12.x ? r2.y : r0.w;
  r4.xy = r4.xy * r0.ww + r19.xy;
  r12.xy = r5.zw * r0.ww + r4.xy;
  r0.w = (int)r10.x & 2;
  r8.y = r9.z;
  r4.xy = r8.xy + -r4.xy;
  r4.xy = r4.xy * r11.xy + r11.zw;
  r1.z = dot(r4.xy, r4.xy);
  r1.z = cmp(r1.z != 0.000000);
  r4.xy = r1.zz ? r4.xy : -r7.xw;
  r4.z = r4.y / upscaledTargetSize.z;
  r1.z = dot(r4.xz, r4.xz);
  r1.z = rsqrt(r1.z);
  r4.xy = r4.xz * r1.zz;
  r5.zw = r1.xy;
  r7.x = dot(r4.xy, r5.xz);
  r7.y = dot(r4.xy, r5.yw);
  r4.zw = -r4.yy;
  r7.z = dot(r4.zx, r5.xz);
  r7.w = dot(r4.wx, r5.yw);
  r4.xyzw = r0.wwww ? r7.xyzw : r5.xyzw;
  r1.xyz = v1.xyz * r0.zzz;
  r3.xyz = r1.xyz * r3.www;
  r6.x = r1.w;
  r0.zw = r9.ww * r6.xy;
  r1.x = (int)r14.w & 7;
  if (r1.x != 0) {
    r5.xyzw = cmp((int4)r1.xxxx == int4(1,2,3,4));
    r6.xy = r12.xy + -r9.xy;
    r1.yzw = cmp((int3)r1.xxx == int3(5,6,7));
    r9.zw = float2(1,0);
    r7.xyzw = r1.wwww ? r9.xywz : 0;
    r7.xyzw = r1.zzzz ? r9.xyzw : r7.xyzw;
    r7.xyzw = r1.yyyy ? r9.xyzz : r7.xyzw;
    r6.zw = float2(1,1);
    r6.xyzw = r5.wwww ? r6.xyzw : r7.xyzw;
    r12.zw = float2(1,0);
    r6.xyzw = r5.zzzz ? r12.xywz : r6.xyzw;
    r6.xyzw = r5.yyyy ? r12.xyzw : r6.xyzw;
    r5.xyzw = r5.xxxx ? r12.xyzz : r6.xyzw;
    r5.xyzw = r1.xxxx ? r5.xyzw : float4(0,0,0,0);
    r1.yz = r5.xy * r5.zw;
    r1.y = dot(r1.yz, r1.yz);
    r1.y = sqrt(r1.y);
    r1.y = r1.y + -r15.x;
    r1.z = r15.z + -r15.x;
    r1.y = saturate(r1.y / r1.z);
    r1.z = r16.z + -r16.x;
    r1.y = r1.y * r1.z + r16.x;
    r1.z = cmp(0 < r1.y);
    r1.w = cmp(r1.y < 0);
    r1.z = (int)-r1.z + (int)r1.w;
    r1.z = (int)r1.z;
    r1.y = log2(abs(r1.y));
    r0.x = r1.y * r0.x;
    r0.x = exp2(r0.x);
    r0.x = r1.z * r0.x;
  } else {
    r0.x = 1;
  }
  r0.x = r1.x ? r0.x : 1;
  if (3 == 0) r1.x = 0; else if (3+3 < 32) {   r1.x = (uint)r14.w << (32-(3 + 3)); r1.x = (uint)r1.x >> (32-3);  } else r1.x = (uint)r14.w >> 3;
  if (2 == 0) r1.y = 0; else if (2+6 < 32) {   r1.y = (uint)r14.w << (32-(2 + 6)); r1.y = (uint)r1.y >> (32-2);  } else r1.y = (uint)r14.w >> 6;
  if (r1.x != 0) {
    r5.xyzw = cmp((int4)r1.xxxx == int4(1,2,3,4));
    r6.xy = r12.xy + -r9.xy;
    r7.xyz = cmp((int3)r1.xxx == int3(5,6,7));
    r9.zw = float2(1,0);
    r8.xyzw = r7.zzzz ? r9.xywz : 0;
    r8.xyzw = r7.yyyy ? r9.xyzw : r8.xyzw;
    r7.xyzw = r7.xxxx ? r9.xyzz : r8.xyzw;
    r6.zw = float2(1,1);
    r6.xyzw = r5.wwww ? r6.xyzw : r7.xyzw;
    r12.zw = float2(1,0);
    r6.xyzw = r5.zzzz ? r12.xywz : r6.xyzw;
    r6.xyzw = r5.yyyy ? r12.xyzw : r6.xyzw;
    r5.xyzw = r5.xxxx ? r12.xyzz : r6.xyzw;
    r5.xyzw = r1.xxxx ? r5.xyzw : float4(0,0,0,0);
    r1.zw = r5.xy * r5.zw;
    r1.z = dot(r1.zw, r1.zw);
    r1.z = sqrt(r1.z);
    r1.z = r1.z + -r15.y;
    r1.w = r15.w + -r15.y;
    r1.z = saturate(r1.z / r1.w);
    r1.w = r16.w + -r16.y;
    r1.z = r1.z * r1.w + r16.y;
    r1.w = cmp(0 < r1.z);
    r2.y = cmp(r1.z < 0);
    r1.w = (int)-r1.w + (int)r2.y;
    r1.w = (int)r1.w;
    r1.z = log2(abs(r1.z));
    r0.y = r1.z * r0.y;
    r0.y = exp2(r0.y);
    r0.y = r1.w * r0.y;
  } else {
    r0.y = 1;
  }
  r0.y = r1.x ? r0.y : 0;
  r1.x = r0.x + r0.y;
  r1.z = r0.x * r0.y;
  r1.w = min(r0.x, r0.y);
  r5.xyz = cmp((int3)r1.yyy == int3(1,2,3));
  r0.y = max(r0.x, r0.y);
  r0.x = r5.z ? r0.y : r0.x;
  r0.x = r5.y ? r1.w : r0.x;
  r0.x = r1.y ? r0.x : r1.z;
  r0.x = r5.x ? r1.x : r0.x;
  r0.xy = r0.zw * r0.xx;
  r0.xy = v0.xy * r0.xy;
  r1.x = dot(r0.xy, r4.xz);
  r0.x = dot(r0.xy, r4.yw);
  r1.y = upscaledTargetSize.z * r0.x;
  r0.x = (int)r17.x & 7;
  if (r0.x != 0) {
    r4.xyzw = cmp((int4)r0.xxxx == int4(1,2,3,4));
    r5.xy = r12.xy + -r9.xy;
    r0.yzw = cmp((int3)r0.xxx == int3(5,6,7));
    r9.zw = float2(1,0);
    r6.xyzw = r0.wwww ? r9.xywz : 0;
    r6.xyzw = r0.zzzz ? r9.xyzw : r6.xyzw;
    r6.xyzw = r0.yyyy ? r9.xyzz : r6.xyzw;
    r5.zw = float2(1,1);
    r5.xyzw = r4.wwww ? r5.xyzw : r6.xyzw;
    r12.zw = float2(1,0);
    r5.xyzw = r4.zzzz ? r12.xywz : r5.xyzw;
    r5.xyzw = r4.yyyy ? r12.xyzw : r5.xyzw;
    r4.xyzw = r4.xxxx ? r12.xyzz : r5.xyzw;
    r4.xyzw = r0.xxxx ? r4.xyzw : float4(0,0,0,0);
    r0.yz = r4.xy * r4.zw;
    r0.y = dot(r0.yz, r0.yz);
    r0.y = sqrt(r0.y);
    r0.y = r0.y + -r17.y;
    r0.z = r17.w + -r17.y;
    r0.y = saturate(r0.y / r0.z);
    r0.z = r18.w + -r18.y;
    r0.y = r0.y * r0.z + r18.y;
    r0.z = cmp(0 < r0.y);
    r0.w = cmp(r0.y < 0);
    r0.z = (int)-r0.z + (int)r0.w;
    r0.z = (int)r0.z;
    r0.y = log2(abs(r0.y));
    r0.y = r2.z * r0.y;
    r0.y = exp2(r0.y);
    r0.y = r0.z * r0.y;
  } else {
    r0.y = 0;
  }
  r0.x = r0.x ? r0.y : 0;
  if (3 == 0) r0.y = 0; else if (3+3 < 32) {   r0.y = (uint)r17.x << (32-(3 + 3)); r0.y = (uint)r0.y >> (32-3);  } else r0.y = (uint)r17.x >> 3;
  if (2 == 0) r0.z = 0; else if (2+6 < 32) {   r0.z = (uint)r17.x << (32-(2 + 6)); r0.z = (uint)r0.z >> (32-2);  } else r0.z = (uint)r17.x >> 6;
  if (r0.y != 0) {
    r4.xyzw = cmp((int4)r0.yyyy == int4(1,2,3,4));
    r5.xy = r12.xy + -r9.xy;
    r6.xyz = cmp((int3)r0.yyy == int3(5,6,7));
    r9.zw = float2(1,0);
    r7.xyzw = r6.zzzz ? r9.xywz : 0;
    r7.xyzw = r6.yyyy ? r9.xyzw : r7.xyzw;
    r6.xyzw = r6.xxxx ? r9.xyzz : r7.xyzw;
    r5.zw = float2(1,1);
    r5.xyzw = r4.wwww ? r5.xyzw : r6.xyzw;
    r12.zw = float2(1,0);
    r5.xyzw = r4.zzzz ? r12.xywz : r5.xyzw;
    r5.xyzw = r4.yyyy ? r12.xyzw : r5.xyzw;
    r4.xyzw = r4.xxxx ? r12.xyzz : r5.xyzw;
    r4.xyzw = r0.yyyy ? r4.xyzw : float4(0,0,0,0);
    r1.zw = r4.xy * r4.zw;
    r0.w = dot(r1.zw, r1.zw);
    r0.w = sqrt(r0.w);
    r0.w = r0.w + -r17.z;
    r1.z = r18.x + -r17.z;
    r0.w = saturate(r0.w / r1.z);
    r1.z = r2.x + -r18.z;
    r0.w = r0.w * r1.z + r18.z;
    r1.z = cmp(0 < r0.w);
    r1.w = cmp(r0.w < 0);
    r1.z = (int)-r1.z + (int)r1.w;
    r1.z = (int)r1.z;
    r0.w = log2(abs(r0.w));
    r0.w = r2.w * r0.w;
    r0.w = exp2(r0.w);
    r0.w = r1.z * r0.w;
  } else {
    r0.w = 0;
  }
  r0.y = r0.y ? r0.w : 0;
  r0.w = r0.x + r0.y;
  r1.z = r0.x * r0.y;
  r1.w = min(r0.x, r0.y);
  r2.xyz = cmp((int3)r0.zzz == int3(1,2,3));
  r0.y = max(r0.x, r0.y);
  r0.x = r2.z ? r0.y : r0.x;
  r0.x = r2.y ? r1.w : r0.x;
  r0.x = r0.z ? r0.x : r1.z;
  r0.x = r2.x ? r0.w : r0.x;
  r0.y = -r12.y * r10.w;
  r0.y = r0.y * r0.x;
  r0.z = r12.x * r10.w;
  r0.x = r0.z * r0.x;
  sincos(r0.y, r2.x, r4.x);
  sincos(r0.x, r0.x, r5.x);
  r5.y = r2.x * r0.x;
  r0.y = r5.x * -r2.x;
  r2.x = dot(r1.xy, r5.xy);
  r2.y = r4.x * r1.y;
  r0.x = dot(r1.xy, r0.xy);
  r0.y = 1;
  r0.x = dot(r0.xy, float2(1,1));
  r0.yz = r2.xy / r0.xx;
  o0.xy = r0.yz + r12.xy;
  o1.xy = v2.xy / r0.xx;
  p1.x = 1 / r0.x;
  o2.xyzw = float4(32768,32768,32768,1) * r3.xyzw;
  o0.zw = float2(0,1);
  o3.xy = r10.zy;
  return;
}