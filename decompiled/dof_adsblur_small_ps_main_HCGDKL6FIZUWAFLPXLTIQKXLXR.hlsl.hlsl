// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:21 2021

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

SamplerState bilinearClamp_s : register(s0);
Texture2D<float4> codeTexture0 : register(t0);
Texture2D<float4> codeTexture1 : register(t1);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = codeTexture1.Sample(bilinearClamp_s, v0.xy, int2(0, 0)).xyzw;
  r1.x = dot(r0.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r1.x = 1 + r1.x;
  r1.w = (int)-r1.x + 0x7ef311c2;
  r1.xyz = r1.www * r0.xyz;
  r1.xyzw = float4(0.125,0.125,0.125,0.125) * r1.xyzw;
  r2.xyzw = codeTexture1.Sample(bilinearClamp_s, v0.xy, int2(0, 0)).xyzw;
  r0.x = dot(r2.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r0.x = 1 + r0.x;
  r3.w = (int)-r0.x + 0x7ef311c2;
  r3.xyz = r3.www * r2.xyz;
  r1.xyzw = r3.xyzw * float4(0.0625,0.0625,0.0625,0.0625) + r1.xyzw;
  r3.xyzw = codeTexture1.Sample(bilinearClamp_s, v0.xy, int2(0, 0)).xyzw;
  r0.x = dot(r3.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r0.x = 1 + r0.x;
  r4.w = (int)-r0.x + 0x7ef311c2;
  r4.xyz = r4.www * r3.xyz;
  r1.xyzw = r4.xyzw * float4(0.0625,0.0625,0.0625,0.0625) + r1.xyzw;
  r4.xyzw = codeTexture1.Sample(bilinearClamp_s, v0.xy, int2(0, 0)).xyzw;
  r0.x = dot(r4.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r0.x = 1 + r0.x;
  r5.w = (int)-r0.x + 0x7ef311c2;
  r5.xyz = r5.www * r4.xyz;
  r1.xyzw = r5.xyzw * float4(0.125,0.125,0.125,0.125) + r1.xyzw;
  r5.xyzw = codeTexture1.Sample(bilinearClamp_s, v0.xy, int2(0, 0)).xyzw;
  r0.x = dot(r5.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r0.x = 1 + r0.x;
  r6.w = (int)-r0.x + 0x7ef311c2;
  r6.xyz = r6.www * r5.xyz;
  r1.xyzw = r6.xyzw * float4(0.25,0.25,0.25,0.25) + r1.xyzw;
  r6.xyzw = codeTexture1.Sample(bilinearClamp_s, v0.xy, int2(0, 0)).xyzw;
  r0.x = dot(r6.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r0.x = 1 + r0.x;
  r7.w = (int)-r0.x + 0x7ef311c2;
  r7.xyz = r7.www * r6.xyz;
  r1.xyzw = r7.xyzw * float4(0.125,0.125,0.125,0.125) + r1.xyzw;
  r7.xyzw = codeTexture1.Sample(bilinearClamp_s, v0.xy, int2(0, 0)).xyzw;
  r0.x = dot(r7.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r0.x = 1 + r0.x;
  r8.w = (int)-r0.x + 0x7ef311c2;
  r8.xyz = r8.www * r7.xyz;
  r1.xyzw = r8.xyzw * float4(0.0625,0.0625,0.0625,0.0625) + r1.xyzw;
  r8.xyzw = codeTexture1.Sample(bilinearClamp_s, v0.xy, int2(0, 0)).xyzw;
  r0.x = dot(r8.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r0.x = 1 + r0.x;
  r9.w = (int)-r0.x + 0x7ef311c2;
  r9.xyz = r9.www * r8.xyz;
  r1.xyzw = r9.xyzw * float4(0.125,0.125,0.125,0.125) + r1.xyzw;
  r9.xyzw = codeTexture1.Sample(bilinearClamp_s, v0.xy, int2(0, 0)).xyzw;
  r0.x = dot(r9.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r0.x = 1 + r0.x;
  r10.w = (int)-r0.x + 0x7ef311c2;
  r10.xyz = r10.www * r9.xyz;
  r1.xyzw = r10.xyzw * float4(0.0625,0.0625,0.0625,0.0625) + r1.xyzw;
  r0.x = rcp(r1.w);
  r2.xyz = r1.xyz * r0.xxx;
  r10.xyzw = codeTexture0.Sample(bilinearClamp_s, v0.xy, int2(0, 0)).xyzw;
  r0.xyz = -r1.xyz * r0.xxx + r10.xyz;
  r1.x = max(r10.w, r5.w);
  r1.x = r1.x * 2 + -r5.w;
  r1.y = codeTexture0.Sample(bilinearClamp_s, v0.xy, int2(0, 0)).w;
  r1.y = max(r1.y, r3.w);
  r1.y = r1.y * 2 + -r3.w;
  r1.zw = -renderTargetSize.zw * float2(0.5,0.5) + v0.xy;
  r3.xyz = codeTexture0.Gather(bilinearClamp_s, r1.zw).xzw;
  r1.z = max(r3.y, r0.w);
  r0.w = r1.z * 2 + -r0.w;
  r0.w = 0.125 * r0.w;
  r1.z = max(r3.z, r2.w);
  r1.w = max(r3.x, r4.w);
  r1.w = r1.w * 2 + -r4.w;
  r1.z = r1.z * 2 + -r2.w;
  r0.w = r1.z * 0.0625 + r0.w;
  r0.w = r1.y * 0.0625 + r0.w;
  r0.w = r1.w * 0.125 + r0.w;
  r0.w = r1.x * 0.25 + r0.w;
  r1.xy = renderTargetSize.zw * float2(0.5,0.5) + v0.xy;
  r1.xyz = codeTexture0.Gather(bilinearClamp_s, r1.xy).xyz;
  r1.z = max(r1.z, r6.w);
  r1.z = r1.z * 2 + -r6.w;
  r0.w = r1.z * 0.125 + r0.w;
  r1.z = codeTexture0.Sample(bilinearClamp_s, v0.xy, int2(0, 0)).w;
  r1.z = max(r1.z, r7.w);
  r1.z = r1.z * 2 + -r7.w;
  r0.w = r1.z * 0.0625 + r0.w;
  r1.x = max(r1.x, r8.w);
  r1.y = max(r1.y, r9.w);
  r1.y = r1.y * 2 + -r9.w;
  r1.x = r1.x * 2 + -r8.w;
  r0.w = r1.x * 0.125 + r0.w;
  r0.w = r1.y * 0.0625 + r0.w;
  r1.x = saturate(r0.w * 1.60000002 + -0.600000024);
  o0.w = r0.w;
  o0.xyz = r1.xxx * r0.xyz + r2.xyz;
  return;
}