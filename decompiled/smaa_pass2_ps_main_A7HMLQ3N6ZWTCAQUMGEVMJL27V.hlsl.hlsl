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
Texture2D<float4> edgesTex : register(t0);
Texture2D<float4> blendTex : register(t6);
Texture2D<float4> smaaTex : register(t7);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = (int2)v0.xy;
  r0.zw = float2(0,0);
  r0.xyzw = blendTex.Load(r0.xyz).xyzw;
  o0.xyz = float3(32768,32768,32768) * r0.xyz;
  r0.x = r0.w * 255 + 0.5;
  r0.x = (int)r0.x;
  r0.xyz = (int3)r0.xxx & int3(240,15,15);
  r1.xyz = cmp((int3)r0.xyz == int3(16,4,1));
  r2.xyz = renderTargetSize.wzw + v1.yxy;
  r1.xyz = r1.xyz ? r2.xyz : v1.yxy;
  r1.w = v1.x;
  r0.yw = edgesTex.SampleLevel(bilinearSampler_s, r1.wx, 0).xy;
  r2.xyzw = renderTargetSize.zwzw * float4(-1,0,1,0) + r1.wxwx;
  r2.x = edgesTex.SampleLevel(bilinearSampler_s, r2.xy, 0).y;
  r2.yz = edgesTex.SampleLevel(bilinearSampler_s, r2.zw, 0).xy;
  r2.z = min(r2.z, r0.w);
  r2.x = min(r2.x, r2.z);
  r0.w = cmp(0.5 < r0.w);
  r2.x = cmp(0.5 >= r2.x);
  r0.w = r0.w ? r2.x : 0;
  if (r0.w != 0) {
    r2.xz = r1.wx;
    r3.xy = float2(1,1);
    r4.y = -1;
    r0.w = 7;
    while (true) {
      r2.w = cmp(r4.y >= r0.w);
      if (r2.w != 0) break;
      r2.xz = renderTargetSize.zw * float2(1,-1) + r2.xz;
      r3.xy = edgesTex.SampleLevel(bilinearSampler_s, r2.xz, 0).xy;
      r2.w = min(r3.x, r3.y);
      r2.w = cmp(0.5 < r2.w);
      r0.w = r2.w ? r0.w : r4.y;
      r4.y = 1 + r4.y;
    }
    r0.w = min(r3.x, r3.y);
    r0.w = cmp(0.5 >= r0.w);
    r0.y = cmp(0.5 < r0.y);
    if (r0.y != 0) {
      r2.xz = r1.wx;
      r0.y = -1;
      r2.w = 7;
      r3.yz = float2(1,1);
      while (true) {
        r3.w = cmp(r0.y >= r2.w);
        if (r3.w != 0) break;
        r2.xz = renderTargetSize.zw * float2(-1,1) + r2.xz;
        r3.yz = edgesTex.SampleLevel(bilinearSampler_s, r2.xz, 0).xy;
        r3.w = min(r3.y, r3.z);
        r3.w = cmp(0.5 < r3.w);
        r2.w = r3.w ? r2.w : r0.y;
        r0.y = 1 + r0.y;
      }
      r2.x = cmp(0.5 < r3.z);
      r2.z = 1 + r0.y;
      r4.x = r2.x ? r2.z : r0.y;
      r0.y = min(r3.y, r3.z);
      r0.y = cmp(0.5 >= r0.y);
    } else {
      r4.x = 0;
      r2.x = -1;
      r0.y = -1;
    }
    r2.z = r4.x + r4.y;
    r2.z = cmp(0 < r2.z);
    if (r2.z != 0) {
      r5.xyzw = r4.yyyy * float4(1,-1,1,-1) + float4(1,-2,1,0);
      r5.xyzw = r5.xyzw * renderTargetSize.zwzw + r1.wxwx;
      r2.z = edgesTex.SampleLevel(bilinearSampler_s, r5.xy, 0).x;
      r3.z = edgesTex.SampleLevel(bilinearSampler_s, r5.zw, 0).y;
      if (r2.x == 0) {
        r2.xw = r4.xx * float2(-1,1) + float2(0,1);
        r2.xw = r2.xw * renderTargetSize.zw + r1.wx;
        r2.x = edgesTex.SampleLevel(bilinearSampler_s, r2.xw, 0).x;
        r3.y = 0;
      } else {
        r4.zw = r4.xx * float2(-1,1) + float2(-1,0);
        r4.zw = r4.zw * renderTargetSize.zw + r1.wx;
        r3.y = edgesTex.SampleLevel(bilinearSampler_s, r4.zw, 0).y;
        r2.x = 0;
      }
      r2.w = r2.z * r3.x;
      r2.xz = r3.yz * float2(2,2) + r2.xw;
      r3.xy = r0.yw ? r2.xz : 0;
      r0.yw = min(float2(19,19), r4.xy);
      r0.yw = r3.xy * float2(20,20) + r0.yw;
      r0.yw = r0.yw * float2(0.0125000002,0.00510204071) + float2(0.00625000009,0.59438777);
      r0.yw = smaaTex.SampleLevel(bilinearSampler_s, r0.yw, 0).xy;
    } else {
      r0.yw = float2(0,0);
    }
    r2.xz = r1.wx;
    r3.xy = float2(1,1);
    r4.x = -1;
    r2.w = 7;
    while (true) {
      r3.z = cmp(r4.x >= r2.w);
      if (r3.z != 0) break;
      r2.xz = -renderTargetSize.zw + r2.xz;
      r3.zw = renderTargetSize.zw * float2(0.25,0) + r2.xz;
      r3.zw = edgesTex.SampleLevel(bilinearSampler_s, r3.zw, 0).xy;
      r4.z = r3.z * 5 + -3.75;
      r3.z = abs(r4.z) * r3.z;
      r3.xy = round(r3.zw);
      r3.z = min(r3.x, r3.y);
      r3.z = cmp(0.5 < r3.z);
      r2.w = r3.z ? r2.w : r4.x;
      r4.x = 1 + r4.x;
    }
    r2.x = min(r3.x, r3.y);
    r2.x = cmp(0.5 >= r2.x);
    r2.y = cmp(0.5 < r2.y);
    if (r2.y != 0) {
      r2.yz = r1.wx;
      r2.w = -1;
      r3.yzw = float3(7,1,1);
      while (true) {
        r4.z = cmp(r2.w >= r3.y);
        if (r4.z != 0) break;
        r2.yz = renderTargetSize.zw + r2.yz;
        r4.zw = renderTargetSize.zw * float2(0.25,0) + r2.yz;
        r4.zw = edgesTex.SampleLevel(bilinearSampler_s, r4.zw, 0).xy;
        r5.x = r4.z * 5 + -3.75;
        r4.z = abs(r5.x) * r4.z;
        r3.zw = round(r4.zw);
        r4.z = min(r3.z, r3.w);
        r4.z = cmp(0.5 < r4.z);
        r3.y = r4.z ? r3.y : r2.w;
        r2.w = 1 + r2.w;
      }
      r2.y = cmp(0.5 < r3.w);
      r2.z = 1 + r2.w;
      r4.y = r2.y ? r2.z : r2.w;
      r2.z = min(r3.z, r3.w);
      r2.z = cmp(0.5 >= r2.z);
    } else {
      r4.y = 0;
      r2.yz = float2(-nan,-nan);
    }
    r2.w = r4.y + r4.x;
    r2.w = cmp(0 < r2.w);
    if (r2.w != 0) {
      r5.xyzw = float4(0,-2,-1,0) + -r4.xxxx;
      r5.xyzw = r5.xyzw * renderTargetSize.zwzw + r1.wxwx;
      r2.w = edgesTex.SampleLevel(bilinearSampler_s, r5.xy, 0).x;
      r3.z = edgesTex.SampleLevel(bilinearSampler_s, r5.zw, 0).y;
      if (r2.y == 0) {
        r2.y = 1 + r4.y;
        r4.zw = r2.yy * renderTargetSize.zw + r1.wx;
        r4.z = edgesTex.SampleLevel(bilinearSampler_s, r4.zw, 0).x;
        r3.y = 0;
      } else {
        r5.xy = float2(1,0) + r4.yy;
        r5.xy = r5.xy * renderTargetSize.zw + r1.wx;
        r3.y = edgesTex.SampleLevel(bilinearSampler_s, r5.xy, 0).y;
        r4.z = 0;
      }
      r4.w = r2.w * r3.x;
      r2.yw = r3.yz * float2(2,2) + r4.zw;
      r3.xy = r2.xz ? r2.wy : 0;
      r2.xy = min(float2(19,19), r4.xy);
      r2.xy = r3.xy * float2(20,20) + r2.xy;
      r2.xy = r2.xy * float2(0.0125000002,0.00510204071) + float2(0.00625000009,0.59438777);
      r2.xy = smaaTex.SampleLevel(bilinearSampler_s, r2.xy, 0).yx;
    } else {
      r2.xy = float2(0,0);
    }
    r1.w = r0.y + r0.w;
    r2.z = r2.x + r2.y;
    r1.w = cmp(r2.z < r1.w);
    r0.yw = r1.ww ? r0.yw : r2.xy;
    r0.x = cmp((int)r0.x == 32);
    r0.xy = r0.xx ? r0.yw : r0.wy;
    r0.y = max(r0.x, r0.y);
    r0.y = cmp(r0.y == 0.000000);
    o0.w = r0.x;
  } else {
    o0.w = 0;
    r0.y = -1;
  }
  r0.x = cmp(2 >= (int)r0.z);
  r0.w = ~(int)r0.x;
  r0.x = r0.x ? r0.y : 0;
  if (r0.x != 0) {
    r2.xy = renderTargetSize.zw * float2(-0.25,-0.125) + r1.yz;
    r2.zw = float2(0,1);
    r3.xy = r2.xy;
    r0.x = -3;
    r1.w = 61;
    while (true) {
      r3.z = cmp(r0.x >= r1.w);
      if (r3.z != 0) break;
      r2.zw = edgesTex.SampleLevel(bilinearSampler_s, r3.xy, 0).xy;
      r3.xy = renderTargetSize.zw * float2(-2,-0) + r3.xy;
      r3.z = -r2.z * 32 + r2.w;
      r3.z = cmp(0.828125 < r3.z);
      r1.w = r3.z ? r1.w : r0.x;
      r0.x = 2 + r0.x;
    }
    r2.xy = float2(32,32) * r2.zw;
    r2.xy = round(r2.xy);
    r2.xy = (int2)r2.xy;
    r2.zw = float2(0,0);
    r2.xy = smaaTex.Load(r2.xyz).xy;
    r1.w = 3 * r2.y;
    r0.x = r2.x * 2.00787401 + r0.x;
    r2.y = round(r0.x);
    r3.x = round(r1.w);
    r2.zw = renderTargetSize.zw * float2(1.75,-0.125) + r1.yz;
    r3.zw = float2(0,1);
    r4.xy = r2.zw;
    r0.x = -2;
    r1.w = 62;
    while (true) {
      r4.z = cmp(r0.x >= r1.w);
      if (r4.z != 0) break;
      r3.zw = edgesTex.SampleLevel(bilinearSampler_s, r4.xy, 0).xy;
      r4.xy = renderTargetSize.zw * float2(2,0) + r4.xy;
      r4.z = -r3.z * 32 + r3.w;
      r4.z = cmp(0.828125 < r4.z);
      r1.w = r4.z ? r1.w : r0.x;
      r0.x = 2 + r0.x;
    }
    r2.zw = r3.zw * float2(32,32) + float2(33,0);
    r2.zw = round(r2.zw);
    r4.xy = (int2)r2.zw;
    r4.zw = float2(0,0);
    r2.zw = smaaTex.Load(r4.xyz).xy;
    r1.w = 3 * r2.w;
    r0.x = r2.z * 2.00787401 + r0.x;
    r2.x = round(r0.x);
    r3.y = round(r1.w);
    r2.zw = abs(r2.yx);
    r2.zw = (uint2)r2.zw >> int2(1,1);
    r2.zw = (int2)r2.zw + int2(532487680,532487680);
    r2.zw = min(float2(19,19), r2.zw);
    r2.zw = r3.xy * float2(20,20) + r2.zw;
    r2.zw = r2.zw * float2(0.0125000002,0.00510204071) + float2(0.00625000009,0.18622449);
    r2.zw = smaaTex.SampleLevel(bilinearSampler_s, r2.zw, 0).xy;
    r0.x = max(r2.z, r2.w);
    r0.x = cmp(0 < r0.x);
    if (r0.x != 0) {
      r3.y = -renderTargetSize.z * r2.y + r1.y;
      r3.x = renderTargetSize.z * r2.x + r1.y;
      r4.xy = cmp(r2.xy >= r2.yx);
      r4.zw = r4.xy ? float2(1,1) : 0;
      r0.x = cmp(r4.w == r4.z);
      r4.xy = (int2)r0.xx | (int2)r4.xy;
      r4.xy = r4.xy ? float2(1,1) : 0;
      r3.z = r1.z;
      r4.zw = renderTargetSize.zw * float2(0.25,0) + r3.yz;
      r4.zw = renderTargetSize.zw * float2(-1,1) + r4.zw;
      r4.zw = edgesTex.SampleLevel(bilinearSampler_s, r4.zw, 0).xy;
      r0.x = r4.z * 5 + -3.75;
      r0.x = r4.z * abs(r0.x);
      r5.y = round(r0.x);
      r5.x = round(r4.w);
      r4.zw = r5.xy * r4.xx;
      r5.zw = renderTargetSize.zw + r3.xz;
      r5.zw = edgesTex.SampleLevel(bilinearSampler_s, r5.zw, 0).xy;
      r6.xy = r5.wz * r4.yy;
      r7.xyzw = renderTargetSize.zwzw * float4(0,-2,0,0.25) + r3.yzxz;
      r3.w = edgesTex.SampleLevel(bilinearSampler_s, r7.xy, 0).x;
      r3.yz = -renderTargetSize.zw + r3.yz;
      r3.x = edgesTex.SampleLevel(bilinearSampler_s, r3.yz, 0).y;
      r3.yz = r4.xx * r3.xw;
      r6.zw = renderTargetSize.zw * float2(1,-2) + r7.zw;
      r6.zw = edgesTex.SampleLevel(bilinearSampler_s, r6.zw, 0).xy;
      r0.x = r6.w * 5 + -3.75;
      r0.x = r6.w * abs(r0.x);
      r6.w = round(r6.z);
      r6.z = round(r0.x);
      r7.xy = r6.zw * r4.yy;
      r0.x = r2.y + r2.x;
      r0.x = cmp(0 < r0.x);
      r8.xy = saturate(r4.xx * r5.xy + r6.xy);
      r8.zw = saturate(r4.xx * r3.xw + r7.xy);
      r1.w = r4.w + r4.z;
      r1.w = r4.y * r5.z + r1.w;
      r1.w = saturate(r4.y * r5.w + r1.w);
      r2.x = r3.z + r3.y;
      r2.x = r4.y * r6.w + r2.x;
      r2.x = saturate(r4.y * r6.z + r2.x);
      r2.y = -r4.x * r5.y + 2;
      r2.y = saturate(-r4.y * r5.z + r2.y);
      r3.x = r2.y * r1.w;
      r1.w = -r4.x * r3.w + 2;
      r1.w = saturate(-r4.y * r6.w + r1.w);
      r3.y = r2.x * r1.w;
      r2.xy = r0.xx ? r8.xz : r3.xy;
      r3.zw = float2(1,1) + -r8.yw;
      r2.xy = r3.zw * r2.xy;
      r2.xy = r0.xx ? r2.xy : r3.xy;
      r2.zw = r2.zw * r2.xy;
    }
    r0.x = cmp((int)r0.z == 2);
    o0.w = r0.x ? r2.z : r2.w;
  }
  r0.x = (int)r0.w & (int)r0.y;
  if (r0.x != 0) {
    r0.xy = renderTargetSize.zw * float2(-0.125,-0.25) + r1.yz;
    r2.xy = float2(0,1);
    r2.zw = r0.xy;
    r0.w = -3;
    r1.w = 61;
    while (true) {
      r3.x = cmp(r0.w >= r1.w);
      if (r3.x != 0) break;
      r2.xy = edgesTex.SampleLevel(bilinearSampler_s, r2.zw, 0).yx;
      r2.zw = renderTargetSize.zw * float2(-0,-2) + r2.zw;
      r3.x = -r2.x * 32 + r2.y;
      r3.x = cmp(0.828125 < r3.x);
      r1.w = r3.x ? r1.w : r0.w;
      r0.w = 2 + r0.w;
    }
    r0.xy = float2(32,32) * r2.xy;
    r0.xy = round(r0.xy);
    r2.xy = (int2)r0.xy;
    r2.zw = float2(0,0);
    r0.xy = smaaTex.Load(r2.xyz).xy;
    r0.y = 3 * r0.y;
    r0.x = r0.x * 2.00787401 + r0.w;
    r2.y = round(r0.x);
    r0.x = round(r0.y);
    r2.zw = renderTargetSize.zw * float2(-0.125,1.75) + r1.yz;
    r3.xy = float2(0,1);
    r3.zw = r2.zw;
    r0.w = -2;
    r1.w = 62;
    while (true) {
      r4.x = cmp(r0.w >= r1.w);
      if (r4.x != 0) break;
      r3.xy = edgesTex.SampleLevel(bilinearSampler_s, r3.zw, 0).yx;
      r3.zw = renderTargetSize.zw * float2(0,2) + r3.zw;
      r4.x = -r3.x * 32 + r3.y;
      r4.x = cmp(0.828125 < r4.x);
      r1.w = r4.x ? r1.w : r0.w;
      r0.w = 2 + r0.w;
    }
    r2.zw = r3.xy * float2(32,32) + float2(33,0);
    r2.zw = round(r2.zw);
    r3.xy = (int2)r2.zw;
    r3.zw = float2(0,0);
    r2.zw = smaaTex.Load(r3.xyz).xy;
    r1.w = 3 * r2.w;
    r0.w = r2.z * 2.00787401 + r0.w;
    r2.x = round(r0.w);
    r0.y = round(r1.w);
    r2.zw = abs(r2.yx);
    r2.zw = (uint2)r2.zw >> int2(1,1);
    r2.zw = (int2)r2.zw + int2(532487680,532487680);
    r2.zw = min(float2(19,19), r2.zw);
    r0.xy = r0.xy * float2(20,20) + r2.zw;
    r0.xy = r0.xy * float2(0.0125000002,0.00510204071) + float2(0.00625000009,0.18622449);
    r0.xy = smaaTex.SampleLevel(bilinearSampler_s, r0.xy, 0).xy;
    r0.w = max(r0.x, r0.y);
    r0.w = cmp(0 < r0.w);
    if (r0.w != 0) {
      r1.x = -renderTargetSize.w * r2.y + r1.z;
      r1.z = renderTargetSize.w * r2.x + r1.z;
      r2.zw = cmp(r2.xy >= r2.yx);
      r3.xy = r2.zw ? float2(1,1) : 0;
      r0.w = cmp(r3.y == r3.x);
      r2.zw = (int2)r0.ww | (int2)r2.zw;
      r2.zw = r2.zw ? float2(1,1) : 0;
      r3.xy = renderTargetSize.zw * float2(0,0.25) + r1.yx;
      r3.xy = renderTargetSize.zw * float2(1,-1) + r3.xy;
      r3.xy = edgesTex.SampleLevel(bilinearSampler_s, r3.xy, 0).xy;
      r0.w = r3.y * 5 + -3.75;
      r0.w = r3.y * abs(r0.w);
      r4.y = round(r0.w);
      r4.x = round(r3.x);
      r3.xy = r4.xy * r2.zz;
      r3.zw = renderTargetSize.zw + r1.yz;
      r3.zw = edgesTex.SampleLevel(bilinearSampler_s, r3.zw, 0).xy;
      r4.zw = r3.zw * r2.ww;
      r5.xyzw = renderTargetSize.zwzw * float4(-2,0,0.25,0) + r1.yxyz;
      r1.w = edgesTex.SampleLevel(bilinearSampler_s, r5.xy, 0).y;
      r1.xy = -renderTargetSize.zw + r1.yx;
      r1.z = edgesTex.SampleLevel(bilinearSampler_s, r1.xy, 0).x;
      r1.xy = r2.zz * r1.zw;
      r5.xy = renderTargetSize.zw * float2(-2,1) + r5.zw;
      r5.xy = edgesTex.SampleLevel(bilinearSampler_s, r5.xy, 0).xy;
      r0.w = r5.x * 5 + -3.75;
      r0.w = r5.x * abs(r0.w);
      r5.w = round(r5.y);
      r5.z = round(r0.w);
      r5.xy = r5.zw * r2.ww;
      r0.w = r2.y + r2.x;
      r0.w = cmp(0 < r0.w);
      r6.xy = saturate(r2.zz * r4.xy + r4.zw);
      r6.zw = saturate(r2.zz * r1.zw + r5.xy);
      r1.z = r3.y + r3.x;
      r1.z = r2.w * r3.w + r1.z;
      r1.z = saturate(r2.w * r3.z + r1.z);
      r1.x = r1.y + r1.x;
      r1.x = r2.w * r5.w + r1.x;
      r1.x = saturate(r2.w * r5.z + r1.x);
      r1.y = -r2.z * r4.y + 2;
      r1.y = saturate(-r2.w * r3.w + r1.y);
      r2.x = r1.z * r1.y;
      r1.y = -r2.z * r1.w + 2;
      r1.y = saturate(-r2.w * r5.w + r1.y);
      r2.y = r1.x * r1.y;
      r1.xy = r0.ww ? r6.xz : r2.xy;
      r1.zw = float2(1,1) + -r6.yw;
      r1.xy = r1.xy * r1.zw;
      r1.xy = r0.ww ? r1.xy : r2.xy;
      r0.xy = r1.xy * r0.xy;
    }
    r0.z = cmp((int)r0.z == 8);
    o0.w = r0.z ? r0.x : r0.y;
  }
  return;
}