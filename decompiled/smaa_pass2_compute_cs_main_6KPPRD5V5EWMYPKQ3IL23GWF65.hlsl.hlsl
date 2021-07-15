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
Texture2D<float4> smaaTex : register(t0);
Texture2D<float4> edgesTex : register(t4);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main()
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u2
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_structured u5, 12
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 64, 1, 1
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r0.xyz, vThreadID.x, l(0), u5.xyzx
r0.x = bilinearSampler[]..swiz;
r0.y = bilinearSampler[]..swiz;
r0.z = bilinearSampler[]..swiz;
  r0.w = (uint)r0.x >> 12;
  r1.xyzw = (int4)r0.xwww & int4(4095,4095,4095,4095);
  r0.xw = (int2)r1.xw;
  r0.xw = float2(0.5,0.5) + r0.xw;
  r2.yz = renderTargetSize.zw * r0.xw;
  r3.xy = float2(-0.125,-0.25) * renderTargetSize.zw;
  r3.xy = r0.xw * renderTargetSize.zw + r3.xy;
  r3.zw = float2(0,1);
  r4.xy = r3.xy;
  r4.zw = float2(-3,61);
  while (true) {
    r5.x = cmp(r4.z >= r4.w);
    if (r5.x != 0) break;
    r3.zw = edgesTex.SampleLevel(bilinearSampler_s, r4.xy, 0).yx;
    r4.xy = renderTargetSize.zw * float2(-0,-2) + r4.xy;
    r5.x = -r3.z * 32 + r3.w;
    r5.x = cmp(0.828125 < r5.x);
    r4.w = r5.x ? r4.w : r4.z;
    r4.z = 2 + r4.z;
  }
  r3.xy = float2(32,32) * r3.zw;
  r3.xy = round(r3.xy);
  r3.xy = (int2)r3.xy;
  r3.zw = float2(0,0);
  r3.xy = smaaTex.Load(r3.xyz).xy;
  r3.y = 3 * r3.y;
  r3.x = r3.x * 2.00787401 + r4.z;
  r4.y = round(r3.x);
  r3.x = round(r3.y);
  r3.zw = float2(-0.125,1.75) * renderTargetSize.zw;
  r0.xw = r0.xw * renderTargetSize.zw + r3.zw;
  r3.zw = float2(0,1);
  r4.zw = r0.xw;
  r5.xy = float2(-2,62);
  while (true) {
    r5.z = cmp(r5.x >= r5.y);
    if (r5.z != 0) break;
    r3.zw = edgesTex.SampleLevel(bilinearSampler_s, r4.zw, 0).yx;
    r4.zw = renderTargetSize.zw * float2(0,2) + r4.zw;
    r5.z = -r3.z * 32 + r3.w;
    r5.z = cmp(0.828125 < r5.z);
    r5.y = r5.z ? r5.y : r5.x;
    r5.x = 2 + r5.x;
  }
  r0.xw = r3.zw * float2(32,32) + float2(33,0);
  r0.xw = round(r0.xw);
  r6.xy = (int2)r0.xw;
  r6.zw = float2(0,0);
  r0.xw = smaaTex.Load(r6.xyz).xy;
  r0.w = 3 * r0.w;
  r0.x = r0.x * 2.00787401 + r5.x;
  r4.x = round(r0.x);
  r3.y = round(r0.w);
  r0.xw = abs(r4.yx);
  r0.xw = (uint2)r0.xw >> int2(1,1);
  r0.xw = (int2)r0.xw + int2(532487680,532487680);
  r0.xw = min(float2(19,19), r0.xw);
  r0.xw = r3.xy * float2(20,20) + r0.xw;
  r0.xw = r0.xw * float2(0.0125000002,0.00510204071) + float2(0.00625000009,0.18622449);
  r0.xw = smaaTex.SampleLevel(bilinearSampler_s, r0.xw, 0).xy;
  r3.x = max(r0.x, r0.w);
  r3.x = cmp(0 < r3.x);
  if (r3.x != 0) {
    r2.x = -renderTargetSize.w * r4.y + r2.z;
    r2.w = renderTargetSize.w * r4.x + r2.z;
    r3.xy = cmp(r4.xy >= r4.yx);
    r3.zw = r3.xy ? float2(1,1) : 0;
    r2.z = cmp(r3.w == r3.z);
    r3.xy = (int2)r2.zz | (int2)r3.xy;
    r3.xy = r3.xy ? float2(1,1) : 0;
    r3.zw = renderTargetSize.zw * float2(0,0.25) + r2.yx;
    r3.zw = renderTargetSize.zw * float2(1,-1) + r3.zw;
    r3.zw = edgesTex.SampleLevel(bilinearSampler_s, r3.zw, 0).xy;
    r2.z = r3.w * 5 + -3.75;
    r2.z = r3.w * abs(r2.z);
    r5.y = round(r2.z);
    r5.x = round(r3.z);
    r3.zw = r5.xy * r3.xx;
    r4.zw = renderTargetSize.zw + r2.yw;
    r4.zw = edgesTex.SampleLevel(bilinearSampler_s, r4.zw, 0).xy;
    r5.zw = r4.zw * r3.yy;
    r6.xyzw = renderTargetSize.zwzw * float4(-2,0,0.25,0) + r2.yxyw;
    r2.w = edgesTex.SampleLevel(bilinearSampler_s, r6.xy, 0).y;
    r2.xy = -renderTargetSize.zw + r2.yx;
    r2.z = edgesTex.SampleLevel(bilinearSampler_s, r2.xy, 0).x;
    r2.xy = r3.xx * r2.zw;
    r6.xy = renderTargetSize.zw * float2(-2,1) + r6.zw;
    r6.xy = edgesTex.SampleLevel(bilinearSampler_s, r6.xy, 0).xy;
    r6.z = r6.x * 5 + -3.75;
    r6.x = r6.x * abs(r6.z);
    r6.zw = round(r6.xy);
    r6.xy = r6.zw * r3.yy;
    r4.x = r4.y + r4.x;
    r4.x = cmp(0 < r4.x);
    r7.xy = saturate(r3.xx * r5.xy + r5.zw);
    r7.zw = saturate(r3.xx * r2.zw + r6.xy);
    r2.z = r3.w + r3.z;
    r2.z = r3.y * r4.w + r2.z;
    r2.z = saturate(r3.y * r4.z + r2.z);
    r2.x = r2.y + r2.x;
    r2.x = r3.y * r6.w + r2.x;
    r2.x = saturate(r3.y * r6.z + r2.x);
    r2.y = -r3.x * r5.y + 2;
    r2.y = saturate(-r3.y * r4.w + r2.y);
    r5.x = r2.z * r2.y;
    r2.y = -r3.x * r2.w + 2;
    r2.y = saturate(-r3.y * r6.w + r2.y);
    r5.y = r2.x * r2.y;
    r2.xy = r4.xx ? r7.xz : r5.xy;
    r2.zw = float2(1,1) + -r7.yw;
    r2.xy = r2.xy * r2.zw;
    r2.xy = r4.xx ? r2.xy : r5.xy;
    r0.xw = r2.xy * r0.xw;
  }
  r2.x = max(r0.x, r0.w);
  r2.x = cmp(0 < r2.x);
  if (r2.x != 0) {
    bitmask.x = ((~(-1 << 11)) << 4) & 0xffffffff;  r2.x = (((uint)r0.y << 4) & bitmask.x) | ((uint)0 & ~bitmask.x);
    bitmask.y = ((~(-1 << 11)) << 4) & 0xffffffff;  r2.y = (((uint)r0.z << 4) & bitmask.y) | ((uint)0 & ~bitmask.y);
    r3.xyzw = (uint4)r0.yyzz >> int4(7,17,7,17);
    r3.xyzw = (int4)r3.xyzw & int4(32752,32736,32752,32736);
    r4.xw = f16tof32(r2.xx);
    r4.yz = f16tof32(r3.xy);
    r2.xw = f16tof32(r2.yy);
    r2.yz = f16tof32(r3.zw);
    r3.xyzw = r2.wyzw + -r4.wyzw;
    r3.xyzw = r0.xxxx * r3.xyzw + r4.wyzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u2.xyzw, r1.xwww, r3.xyzw
    r1.xyzw = (int4)r1.xyzw + int4(-1,0,0,0);
    r3.xyzw = r4.xyzw + -r2.wyzw;
    r0.xyzw = r0.wwww * r3.xyzw + r2.xyzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u2.xyzw, r1.xyzw, r0.xyzw
  }
  return;
}