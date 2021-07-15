// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:47 2021

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
// unknown dcl_: dcl_uav_structured u4, 12
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 64, 1, 1
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r0.xyz, vThreadID.x, l(0), u4.xyzx
r0.x = bilinearSampler[]..swiz;
r0.y = bilinearSampler[]..swiz;
r0.z = bilinearSampler[]..swiz;
  r1.xy = (uint2)r0.xx >> int2(24,12);
  r1.x = (uint)r1.x;
  r0.w = r1.y;
  r2.xyzw = (int4)r0.xwww & int4(4095,4095,4095,4095);
  r0.xw = (int2)r2.xw;
  r0.xw = float2(0.5,0.5) + r0.xw;
  r3.zw = renderTargetSize.zw * r0.xw;
  r1.x = r1.x * 1 + 0.5;
  r1.x = (int)r1.x;
  r1.x = (int)r1.x & 15;
  r1.yz = edgesTex.SampleLevel(bilinearSampler_s, r3.zw, 0).xy;
  r4.xyzw = renderTargetSize.zwzw * float4(-1,0,1,0) + r3.zwzw;
  r1.w = edgesTex.SampleLevel(bilinearSampler_s, r4.xy, 0).y;
  r4.xy = edgesTex.SampleLevel(bilinearSampler_s, r4.zw, 0).xy;
  r4.y = min(r4.y, r1.z);
  r1.w = min(r4.y, r1.w);
  r1.z = cmp(0.5 < r1.z);
  r1.w = cmp(0.5 >= r1.w);
  r5.x = r1.w ? r1.z : 0;
  if (r5.x != 0) {
    r1.zw = r3.zw;
    r6.y = -1;
    r4.yzw = float3(1,1,7);
    while (true) {
      r5.z = cmp(r6.y >= r4.w);
      if (r5.z != 0) break;
      r1.zw = renderTargetSize.zw * float2(1,-1) + r1.zw;
      r4.yz = edgesTex.SampleLevel(bilinearSampler_s, r1.zw, 0).xy;
      r5.z = min(r4.y, r4.z);
      r5.z = cmp(0.5 < r5.z);
      r4.w = r5.z ? r4.w : r6.y;
      r6.y = 1 + r6.y;
    }
    r1.z = min(r4.y, r4.z);
    r1.z = cmp(0.5 >= r1.z);
    r1.y = cmp(0.5 < r1.y);
    if (r1.y != 0) {
      r1.yw = r3.zw;
      r4.zw = float2(-1,7);
      r5.zw = float2(1,1);
      while (true) {
        r6.z = cmp(r4.z >= r4.w);
        if (r6.z != 0) break;
        r1.yw = renderTargetSize.zw * float2(-1,1) + r1.yw;
        r5.zw = edgesTex.SampleLevel(bilinearSampler_s, r1.yw, 0).xy;
        r6.z = min(r5.z, r5.w);
        r6.z = cmp(0.5 < r6.z);
        r4.w = r6.z ? r4.w : r4.z;
        r4.z = 1 + r4.z;
      }
      r1.y = cmp(0.5 < r5.w);
      r1.w = 1 + r4.z;
      r6.x = r1.y ? r1.w : r4.z;
      r1.w = min(r5.z, r5.w);
      r1.w = cmp(0.5 >= r1.w);
    } else {
      r6.x = 0;
      r1.yw = float2(-nan,-nan);
    }
    r4.z = r6.x + r6.y;
    r4.z = cmp(0 < r4.z);
    if (r4.z != 0) {
      r7.xyzw = r6.yyyy * float4(1,-1,1,-1) + float4(1,-2,1,0);
      r7.xyzw = r7.xyzw * renderTargetSize.zwzw + r3.zwzw;
      r4.z = edgesTex.SampleLevel(bilinearSampler_s, r7.xy, 0).x;
      r5.w = edgesTex.SampleLevel(bilinearSampler_s, r7.zw, 0).y;
      if (r1.y == 0) {
        r6.zw = r6.xx * float2(-1,1) + float2(0,1);
        r6.zw = r6.zw * renderTargetSize.zw + r3.zw;
        r6.z = edgesTex.SampleLevel(bilinearSampler_s, r6.zw, 0).x;
        r5.z = 0;
      } else {
        r7.xy = r6.xx * float2(-1,1) + float2(-1,0);
        r7.xy = r7.xy * renderTargetSize.zw + r3.zw;
        r5.z = edgesTex.SampleLevel(bilinearSampler_s, r7.xy, 0).y;
        r6.z = 0;
      }
      r6.w = r4.z * r4.y;
      r4.yz = r5.zw * float2(2,2) + r6.zw;
      r7.xy = r1.wz ? r4.yz : 0;
      r1.yz = min(float2(19,19), r6.xy);
      r1.yz = r7.xy * float2(20,20) + r1.yz;
      r1.yz = r1.yz * float2(0.0125000002,0.00510204071) + float2(0.00625000009,0.59438777);
      r1.yz = smaaTex.SampleLevel(bilinearSampler_s, r1.yz, 0).xy;
    } else {
      r1.yz = float2(0,0);
    }
    r4.yz = r3.zw;
    r5.zw = float2(1,1);
    r6.x = -1;
    r1.w = 7;
    while (true) {
      r4.w = cmp(r6.x >= r1.w);
      if (r4.w != 0) break;
      r4.yz = -renderTargetSize.zw + r4.yz;
      r6.zw = renderTargetSize.zw * float2(0.25,0) + r4.yz;
      r6.zw = edgesTex.SampleLevel(bilinearSampler_s, r6.zw, 0).xy;
      r4.w = r6.z * 5 + -3.75;
      r4.w = r6.z * abs(r4.w);
      r5.z = round(r4.w);
      r5.w = round(r6.w);
      r4.w = min(r5.z, r5.w);
      r4.w = cmp(0.5 < r4.w);
      r1.w = r4.w ? r1.w : r6.x;
      r6.x = 1 + r6.x;
    }
    r1.w = min(r5.z, r5.w);
    r1.w = cmp(0.5 >= r1.w);
    r4.x = cmp(0.5 < r4.x);
    if (r4.x != 0) {
      r4.xy = r3.zw;
      r4.zw = float2(-1,7);
      r5.w = 1;
      r6.z = 1;
      while (true) {
        r6.w = cmp(r4.z >= r4.w);
        if (r6.w != 0) break;
        r4.xy = renderTargetSize.zw + r4.xy;
        r7.xy = renderTargetSize.zw * float2(0.25,0) + r4.xy;
        r7.xy = edgesTex.SampleLevel(bilinearSampler_s, r7.xy, 0).xy;
        r6.w = r7.x * 5 + -3.75;
        r6.w = r7.x * abs(r6.w);
        r5.w = round(r6.w);
        r6.z = round(r7.y);
        r6.w = min(r6.z, r5.w);
        r6.w = cmp(0.5 < r6.w);
        r4.w = r6.w ? r4.w : r4.z;
        r4.z = 1 + r4.z;
      }
      r4.x = cmp(0.5 < r6.z);
      r4.y = 1 + r4.z;
      r6.y = r4.x ? r4.y : r4.z;
      r4.y = min(r6.z, r5.w);
      r4.y = cmp(0.5 >= r4.y);
    } else {
      r6.y = 0;
      r4.xy = float2(-1,-1);
    }
    r4.z = r6.y + r6.x;
    r4.z = cmp(0 < r4.z);
    if (r4.z != 0) {
      r7.xyzw = float4(0,-2,-1,0) + -r6.xxxx;
      r7.xyzw = r7.xyzw * renderTargetSize.zwzw + r3.zwzw;
      r4.z = edgesTex.SampleLevel(bilinearSampler_s, r7.xy, 0).x;
      r6.w = edgesTex.SampleLevel(bilinearSampler_s, r7.zw, 0).y;
      if (r4.x == 0) {
        r4.x = 1 + r6.y;
        r4.xw = r4.xx * renderTargetSize.zw + r3.zw;
        r4.x = edgesTex.SampleLevel(bilinearSampler_s, r4.xw, 0).x;
        r6.z = 0;
      } else {
        r7.xy = float2(1,0) + r6.yy;
        r7.xy = r7.xy * renderTargetSize.zw + r3.zw;
        r6.z = edgesTex.SampleLevel(bilinearSampler_s, r7.xy, 0).y;
        r4.x = 0;
      }
      r4.w = r4.z * r5.z;
      r4.xz = r6.zw * float2(2,2) + r4.xw;
      r4.y = (int)r4.x & (int)r4.y;
      r4.x = r1.w ? r4.z : 0;
      r4.zw = min(float2(19,19), r6.xy);
      r4.xy = r4.xy * float2(20,20) + r4.zw;
      r4.xy = r4.xy * float2(0.0125000002,0.00510204071) + float2(0.00625000009,0.59438777);
      r4.xy = smaaTex.SampleLevel(bilinearSampler_s, r4.xy, 0).yx;
    } else {
      r4.xy = float2(0,0);
    }
    r1.w = r1.y + r1.z;
    r4.z = r4.x + r4.y;
    r1.w = cmp(r4.z < r1.w);
    r1.yz = r1.ww ? r1.yz : r4.xy;
    r1.w = max(r1.y, r1.z);
    r1.w = cmp(r1.w == 0.000000);
  } else {
    r1.yzw = float3(0,0,-nan);
  }
  r1.x = cmp((int)r1.x == 2);
  r1.x = r1.x ? r1.w : 0;
  if (r1.x != 0) {
    r1.xw = float2(-0.25,-0.125) * renderTargetSize.zw;
    r1.xw = r0.xw * renderTargetSize.zw + r1.xw;
    r4.xy = float2(0,1);
    r4.zw = r1.xw;
    r5.zw = float2(-3,61);
    while (true) {
      r6.x = cmp(r5.z >= r5.w);
      if (r6.x != 0) break;
      r4.xy = edgesTex.SampleLevel(bilinearSampler_s, r4.zw, 0).xy;
      r4.zw = renderTargetSize.zw * float2(-2,-0) + r4.zw;
      r6.x = -r4.x * 32 + r4.y;
      r6.x = cmp(0.828125 < r6.x);
      r5.w = r6.x ? r5.w : r5.z;
      r5.z = 2 + r5.z;
    }
    r1.xw = float2(32,32) * r4.xy;
    r1.xw = round(r1.xw);
    r4.xy = (int2)r1.xw;
    r4.zw = float2(0,0);
    r1.xw = smaaTex.Load(r4.xyz).xy;
    r1.w = 3 * r1.w;
    r1.x = r1.x * 2.00787401 + r5.z;
    r4.y = round(r1.x);
    r6.x = round(r1.w);
    r1.xw = float2(1.75,-0.125) * renderTargetSize.zw;
    r0.xw = r0.xw * renderTargetSize.zw + r1.xw;
    r1.xw = float2(0,1);
    r4.zw = r0.xw;
    r5.zw = float2(-2,62);
    while (true) {
      r6.z = cmp(r5.z >= r5.w);
      if (r6.z != 0) break;
      r1.xw = edgesTex.SampleLevel(bilinearSampler_s, r4.zw, 0).xy;
      r4.zw = renderTargetSize.zw * float2(2,0) + r4.zw;
      r6.z = -r1.x * 32 + r1.w;
      r6.z = cmp(0.828125 < r6.z);
      r5.w = r6.z ? r5.w : r5.z;
      r5.z = 2 + r5.z;
    }
    r0.xw = r1.xw * float2(32,32) + float2(33,0);
    r0.xw = round(r0.xw);
    r7.xy = (int2)r0.xw;
    r7.zw = float2(0,0);
    r0.xw = smaaTex.Load(r7.xyz).xy;
    r0.w = 3 * r0.w;
    r0.x = r0.x * 2.00787401 + r5.z;
    r4.x = round(r0.x);
    r6.y = round(r0.w);
    r0.xw = abs(r4.yx);
    r0.xw = (uint2)r0.xw >> int2(1,1);
    r0.xw = (int2)r0.xw + int2(532487680,532487680);
    r0.xw = min(float2(19,19), r0.xw);
    r0.xw = r6.xy * float2(20,20) + r0.xw;
    r0.xw = r0.xw * float2(0.0125000002,0.00510204071) + float2(0.00625000009,0.18622449);
    r1.yz = smaaTex.SampleLevel(bilinearSampler_s, r0.xw, 0).xy;
    r0.x = max(r1.y, r1.z);
    r0.x = cmp(0 < r0.x);
    if (r0.x != 0) {
      r3.y = -renderTargetSize.z * r4.y + r3.z;
      r3.x = renderTargetSize.z * r4.x + r3.z;
      r0.xw = cmp(r4.xy >= r4.yx);
      r1.xw = r0.xw ? float2(1,1) : 0;
      r1.x = cmp(r1.w == r1.x);
      r0.xw = (int2)r0.xw | (int2)r1.xx;
      r0.xw = r0.xw ? float2(1,1) : 0;
      r1.xw = renderTargetSize.zw * float2(0.25,0) + r3.yw;
      r1.xw = renderTargetSize.zw * float2(-1,1) + r1.xw;
      r1.xw = edgesTex.SampleLevel(bilinearSampler_s, r1.xw, 0).xy;
      r3.z = r1.x * 5 + -3.75;
      r1.x = abs(r3.z) * r1.x;
      r6.xy = round(r1.wx);
      r1.xw = r6.xy * r0.xx;
      r4.zw = renderTargetSize.zw + r3.xw;
      r4.zw = edgesTex.SampleLevel(bilinearSampler_s, r4.zw, 0).xy;
      r5.zw = r4.wz * r0.ww;
      r7.xyzw = renderTargetSize.zwzw * float4(0,-2,0,0.25) + r3.ywxw;
      r3.z = edgesTex.SampleLevel(bilinearSampler_s, r7.xy, 0).x;
      r3.yw = -renderTargetSize.zw + r3.yw;
      r3.x = edgesTex.SampleLevel(bilinearSampler_s, r3.yw, 0).y;
      r3.yw = r3.xz * r0.xx;
      r6.zw = renderTargetSize.zw * float2(1,-2) + r7.zw;
      r6.zw = edgesTex.SampleLevel(bilinearSampler_s, r6.zw, 0).xy;
      r7.x = r6.w * 5 + -3.75;
      r6.w = abs(r7.x) * r6.w;
      r7.zw = round(r6.wz);
      r6.zw = r7.zw * r0.ww;
      r4.x = r4.y + r4.x;
      r4.x = cmp(0 < r4.x);
      r8.xy = saturate(r0.xx * r6.xy + r5.zw);
      r8.zw = saturate(r0.xx * r3.xz + r6.zw);
      r1.x = r1.w + r1.x;
      r1.x = r0.w * r4.z + r1.x;
      r1.x = saturate(r0.w * r4.w + r1.x);
      r1.w = r3.w + r3.y;
      r1.w = r0.w * r7.w + r1.w;
      r1.w = saturate(r0.w * r7.z + r1.w);
      r3.x = -r0.x * r6.y + 2;
      r3.x = saturate(-r0.w * r4.z + r3.x);
      r3.x = r3.x * r1.x;
      r0.x = -r0.x * r3.z + 2;
      r0.x = saturate(-r0.w * r7.w + r0.x);
      r3.y = r1.w * r0.x;
      r0.xw = r4.xx ? r8.xz : r3.xy;
      r1.xw = float2(1,1) + -r8.yw;
      r0.xw = r1.xw * r0.xw;
      r0.xw = r4.xx ? r0.xw : r3.xy;
      r1.yz = r1.yz * r0.xw;
    }
    r5.x = -1;
  }
  r0.x = max(r1.y, r1.z);
  r0.x = cmp(0 < r0.x);
  if (r0.x != 0) {
    bitmask.x = ((~(-1 << 11)) << 4) & 0xffffffff;  r0.x = (((uint)r0.y << 4) & bitmask.x) | ((uint)0 & ~bitmask.x);
    bitmask.w = ((~(-1 << 11)) << 4) & 0xffffffff;  r0.w = (((uint)r0.z << 4) & bitmask.w) | ((uint)0 & ~bitmask.w);
    r3.xyzw = (uint4)r0.yyzz >> int4(7,17,7,17);
    r3.xyzw = (int4)r3.xyzw & int4(32752,32736,32752,32736);
    r4.xw = f16tof32(r0.xx);
    r4.yz = f16tof32(r3.xy);
    r0.xw = f16tof32(r0.ww);
    r0.yz = f16tof32(r3.zw);
    r3.xyzw = r0.wyzw + -r4.wyzw;
    r3.xyzw = r1.yyyy * r3.xyzw + r4.wyzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u2.xyzw, r2.xwww, r3.xyzw
    r5.y = 0;
    r2.xyzw = (int4)r2.xyzw + (int4)r5.yxxx;
    r3.xyzw = r4.xyzw + -r0.wyzw;
    r0.xyzw = r1.zzzz * r3.xyzw + r0.xyzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u2.xyzw, r2.xyzw, r0.xyzw
  }
  return;
}