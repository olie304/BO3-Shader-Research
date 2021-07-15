// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:00 2021

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

SamplerState linearSampler_s : register(s0);
Texture2D<float4> depthTex0 : register(t0);
Texture2D<float4> aoTex : register(t5);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = renderTargetSize.zw * float2(0.5,0.5) + v1.xy;
  r1.xyzw = depthTex0.Gather(linearSampler_s, r0.xy).xyzw;
  r0.z = cmp(r1.w < 65504);
  if (r0.z != 0) {
    r0.z = 0.00999999978 * r1.w;
    r0.z = rcp(r0.z);
    r2.xyzw = renderTargetSize.zwzw * float4(-1.5,0.5,0.5,-1.5) + v1.xyxy;
    r3.xyzw = depthTex0.Gather(linearSampler_s, r2.xy).xyzw;
    r0.w = r0.z * r1.w;
    r3.xyzw = r0.zzzz * r3.xyzw + -r0.wwww;
    r1.xyzw = r0.zzzz * r1.xyzw + -r0.wwww;
    r4.xyzw = depthTex0.Gather(linearSampler_s, r2.zw).xyzw;
    r4.xyzw = r0.zzzz * r4.xyzw + -r0.wwww;
    r5.xy = renderTargetSize.zw * float2(-1.5,-1.5) + v1.xy;
    r6.xyzw = depthTex0.Gather(linearSampler_s, r5.xy).xyzw;
    r6.xyzw = r0.zzzz * r6.xyzw + -r0.wwww;
    r7.xyzw = aoTex.Gather(linearSampler_s, r2.xy).zxwy;
    r0.z = 0.707106769 * r1.y;
    r0.z = r3.x * 0.44721359 + r0.z;
    r8.xyz = float3(0.353553385,0.44721359,0.44721359) * r6.wzx;
    r9.xyz = r3.wyx * float3(0.5,0.707106769,0.44721359) + r8.zyx;
    r0.w = min(abs(r9.z), abs(r0.z));
    r0.w = min(abs(r3.x), r0.w);
    r0.w = 1 + -r0.w;
    r0.w = max(0, r0.w);
    r10.xz = r7.yw;
    r10.yw = float2(1,1);
    r2.xy = r3.yw * float2(0.707106769,0.5) + r1.xz;
    r5.zw = min(abs(r2.xy), abs(r9.yx));
    r3.xy = min(r5.zw, abs(r3.yw));
    r3.xy = float2(1,1) + -r3.xy;
    r3.xy = max(float2(0,0), r3.xy);
    r3.xw = r3.xx * r10.zw;
    r3.xw = r0.ww * r10.xy + r3.xw;
    r0.w = r1.w * inf + r3.z;
    r5.z = r6.y * 0.707106769 + r3.z;
    r5.w = min(abs(r5.z), abs(r0.w));
    r3.z = min(r5.w, abs(r3.z));
    r3.z = 1 + -r3.z;
    r3.z = max(0, r3.z);
    r7.yw = float2(1,1);
    r3.xz = r3.zz * r7.xy + r3.xw;
    r3.xy = r3.yy * r7.zw + r3.xz;
    r7.xyzw = aoTex.Gather(linearSampler_s, r0.xy).zxwy;
    r0.x = 0.44721359 * r4.z;
    r3.zw = r4.yw * float2(0.707106769,0.5) + r1.zx;
    r2.xy = min(abs(r3.wz), abs(r2.xy));
    r1.xz = min(r2.xy, abs(r1.xz));
    r1.xz = float2(1,1) + -r1.xz;
    r1.xz = max(float2(0,0), r1.xz);
    r10.xz = r7.yw;
    r10.yw = float2(1,1);
    r2.xy = r1.xx * r10.xy + r3.xy;
    r0.x = r1.y * 0.707106769 + r0.x;
    r0.y = min(abs(r0.z), abs(r0.x));
    r0.y = min(abs(r1.y), r0.y);
    r0.y = 1 + -r0.y;
    r0.y = max(0, r0.y);
    r0.yz = r0.yy * r10.zw + r2.xy;
    r7.yw = float2(1,1);
    r0.yz = r1.zz * r7.xy + r0.yz;
    r1.x = r1.w * inf + r4.x;
    r0.w = min(abs(r1.x), abs(r0.w));
    r0.w = min(abs(r1.w), r0.w);
    r0.w = 1 + -r0.w;
    r0.w = max(0, r0.w);
    r0.yz = r0.ww * r7.zw + r0.yz;
    r2.xyzw = aoTex.Gather(linearSampler_s, r2.zw).zxwy;
    r0.w = r6.y * 0.707106769 + r4.x;
    r1.x = min(abs(r0.w), abs(r1.x));
    r1.x = min(abs(r4.x), r1.x);
    r1.x = 1 + -r1.x;
    r1.x = max(0, r1.x);
    r7.xz = r2.yw;
    r7.yw = float2(1,1);
    r0.yz = r1.xx * r7.xy + r0.yz;
    r1.xyz = r4.ywz * float3(0.707106769,0.5,0.44721359) + r8.zyx;
    r3.xy = min(abs(r1.xy), abs(r3.zw));
    r3.xy = min(abs(r4.yw), r3.xy);
    r3.xy = float2(1,1) + -r3.xy;
    r3.xy = max(float2(0,0), r3.xy);
    r0.yz = r3.xx * r7.zw + r0.yz;
    r0.x = min(abs(r1.z), abs(r0.x));
    r0.x = min(abs(r4.z), r0.x);
    r0.x = 1 + -r0.x;
    r0.x = max(0, r0.x);
    r2.yw = float2(1,1);
    r0.xy = r0.xx * r2.xy + r0.yz;
    r0.xy = r3.yy * r2.zw + r0.xy;
    r2.xyzw = aoTex.Gather(linearSampler_s, r5.xy).zxwy;
    r1.xyz = min(abs(r1.xyz), abs(r9.xyz));
    r1.xyz = min(abs(r6.xzw), r1.xyz);
    r1.xyz = float3(1,1,1) + -r1.xyz;
    r1.xyz = max(float3(0,0,0), r1.xyz);
    r3.xz = r2.yw;
    r3.yw = float2(1,1);
    r0.xy = r1.xx * r3.xy + r0.xy;
    r0.z = min(abs(r0.w), abs(r5.z));
    r0.z = min(abs(r6.y), r0.z);
    r0.z = 1 + -r0.z;
    r0.z = max(0, r0.z);
    r0.xy = r0.zz * r3.zw + r0.xy;
    r2.yw = float2(1,1);
    r0.xy = r1.yy * r2.xy + r0.xy;
    r0.xy = r1.zz * r2.zw + r0.xy;
    o0.x = r0.x / r0.y;
  } else {
    o0.x = 1;
  }
  return;
}