// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:11 2021

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

SamplerState pointClamp_s : register(s1);
SamplerState linearClamp_s : register(s2);
Texture2D<float4> colorMapSampler : register(t0);
Texture2D<float4> sceneVelocitySampler : register(t6);
Texture2D<float4> sceneVelocityTile1Sampler : register(t7);


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

  r0.xyzw = colorMapSampler.Sample(pointClamp_s, v1.xy).xyzw;
  r1.xy = renderTargetSize.xy * v1.xy;
  r1.xy = (uint2)r1.xy;
  r1.xy = (int2)r1.xy & int2(1,1);
  r1.xy = (uint2)r1.xy;
  r1.x = r1.x * 0.5 + -0.25;
  r1.y = r1.y * 2 + -1;
  r1.x = r1.x * r1.y;
  r1.yz = renderTargetSize.zw * r1.xx;
  r1.yz = r1.yz * float2(20,20) + v1.xy;
  r1.yzw = sceneVelocityTile1Sampler.Sample(pointClamp_s, r1.yz).xyz;
  r2.x = cmp(r1.w < 0.00392156886);
  if (r2.x != 0) {
    o0.xyzw = r0.xyzw;
    return;
  }
  r2.x = sceneVelocityTile1Sampler.Sample(pointClamp_s, v1.xy).x;
  r3.xyzw = r1.yzyz * float4(127.5,127.5,127.5,127.5) + float4(-64,-64,-64,-64);
  r3.xyzw = round(r3.xyzw);
  r3.xyzw = renderTargetSize.zwzw * r3.xyzw;
  r1.y = cmp(0 != r2.x);
  if (r1.y != 0) {
    r1.y = 255 * r1.w;
    r1.y = 1.75 / r1.y;
    r2.xyz = sceneVelocitySampler.SampleLevel(pointClamp_s, v1.xy, 1).xyz;
    r1.zw = r2.xy * float2(127.5,127.5) + float2(-64,-64);
    r1.z = dot(r1.zw, r1.zw);
    r4.x = sqrt(r1.z);
    r1.z = r2.z * r2.z;
    r1.z = 8192 * r1.z;
    r2.xyzw = r3.zwzw * r1.xxxx;
    r2.xyzw = r2.xyzw * float4(0.571428597,0.571428597,0.571428597,0.571428597) + v1.xyxy;
    r5.xyzw = r3.zwzw * float4(0.285714298,0.285714298,-0.285714298,-0.285714298) + r2.zwzw;
    r6.xyz = sceneVelocitySampler.SampleLevel(pointClamp_s, r5.xy, 1).xyz;
    r7.xyz = sceneVelocitySampler.SampleLevel(pointClamp_s, r5.zw, 1).xyz;
    r6.xy = r6.xy * float2(127.5,127.5) + float2(-64,-64);
    r1.w = dot(r6.xy, r6.xy);
    r4.y = sqrt(r1.w);
    r6.xy = r7.xy * float2(127.5,127.5) + float2(-64,-64);
    r1.w = dot(r6.xy, r6.xy);
    r4.z = sqrt(r1.w);
    r1.w = r6.z * r6.z;
    r6.x = r7.z * r7.z;
    r1.w = r1.w * 8192 + -r1.z;
    r6.yw = saturate(r1.ww * float2(1,-1) + float2(0.5,0.5));
    r8.xyzw = saturate(r4.xyxz * r1.yyyy);
    r1.w = dot(r6.yw, r8.xy);
    r6.x = r6.x * 8192 + -r1.z;
    r6.xy = saturate(r6.xx * float2(1,-1) + float2(0.5,0.5));
    r6.x = dot(r6.xy, r8.zw);
    r6.y = cmp(r7.z < r6.z);
    r4.z = cmp(r4.y < r4.z);
    r6.z = r4.z ? r6.y : 0;
    r6.w = r6.z ? r6.x : r1.w;
    r4.z = (int)r4.z | (int)r6.y;
    r4.z = (int)r4.z | (int)r6.z;
    r1.w = r4.z ? r6.x : r1.w;
    r7.xyz = colorMapSampler.SampleLevel(pointClamp_s, r5.xy, 1).xyz;
    r7.w = 0.25;
    r5.xyz = colorMapSampler.SampleLevel(pointClamp_s, r5.zw, 1).xyz;
    r5.w = 0.25;
    r5.xyzw = r5.xyzw * r1.wwww;
    r5.xyzw = r6.wwww * r7.xyzw + r5.xyzw;
    r2.xyzw = r3.zwzw * float4(0.857142925,0.857142925,-0.857142925,-0.857142925) + r2.xyzw;
    r6.xyz = sceneVelocitySampler.SampleLevel(pointClamp_s, r2.xy, 1).xyz;
    r7.xyz = sceneVelocitySampler.SampleLevel(pointClamp_s, r2.zw, 1).xyz;
    r6.xy = r6.xy * float2(127.5,127.5) + float2(-64,-64);
    r1.w = dot(r6.xy, r6.xy);
    r4.w = sqrt(r1.w);
    r6.xy = r7.xy * float2(127.5,127.5) + float2(-64,-64);
    r1.w = dot(r6.xy, r6.xy);
    r4.y = sqrt(r1.w);
    r1.w = r6.z * r6.z;
    r4.z = r7.z * r7.z;
    r1.w = r1.w * 8192 + -r1.z;
    r6.xy = saturate(r1.ww * float2(1,-1) + float2(0.5,0.5));
    r7.xy = saturate(r1.yy * r4.xw + float2(-0.500000119,-0.500000119));
    r1.w = dot(r6.xy, r7.xy);
    r1.z = r4.z * 8192 + -r1.z;
    r6.xy = saturate(r1.zz * float2(1,-1) + float2(0.5,0.5));
    r1.yz = saturate(r1.yy * r4.xy + float2(-0.500000119,-0.500000119));
    r1.y = dot(r6.xy, r1.yz);
    r1.z = cmp(r7.z < r6.z);
    r4.x = cmp(r4.w < r4.y);
    r4.y = r1.z ? r4.x : 0;
    r4.z = r4.y ? r1.y : r1.w;
    r1.z = (int)r1.z | (int)r4.x;
    r1.z = (int)r1.z | (int)r4.y;
    r1.y = r1.z ? r1.y : r1.w;
    r6.xyz = colorMapSampler.SampleLevel(pointClamp_s, r2.xy, 1).xyz;
    r6.w = 0.25;
    r4.xyzw = r4.zzzz * r6.xyzw + r5.xyzw;
    r2.xyz = colorMapSampler.SampleLevel(pointClamp_s, r2.zw, 1).xyz;
    r2.w = 0.25;
    r2.xyzw = r1.yyyy * r2.xyzw + r4.xyzw;
    r1.y = 1 + -r2.w;
    r1.yzw = r1.yyy * r0.xyz;
    r0.xyz = r2.xyz * float3(0.25,0.25,0.25) + r1.yzw;
  } else {
    r1.xyzw = r3.zwzw * r1.xxxx;
    r1.xyzw = r1.xyzw * float4(0.571428597,0.571428597,0.571428597,0.571428597) + v1.xyxy;
    r2.xyzw = r3.zwzw * float4(-0.857142866,-0.857142866,-0.285714269,-0.285714269) + r1.zwzw;
    r4.xyz = colorMapSampler.SampleLevel(linearClamp_s, r2.xy, 1).xyz;
    r2.xyz = colorMapSampler.SampleLevel(linearClamp_s, r2.zw, 1).xyz;
    r2.xyz = float3(0.25,0.25,0.25) * r2.xyz;
    r2.xyz = r4.xyz * float3(0.25,0.25,0.25) + r2.xyz;
    r1.xyzw = r3.xyzw * float4(0.285714328,0.285714328,0.857142985,0.857142985) + r1.xyzw;
    r3.xyz = colorMapSampler.SampleLevel(linearClamp_s, r1.xy, 1).xyz;
    r2.xyz = r3.xyz * float3(0.25,0.25,0.25) + r2.xyz;
    r1.xyz = colorMapSampler.SampleLevel(linearClamp_s, r1.zw, 1).xyz;
    r0.xyz = r1.xyz * float3(0.25,0.25,0.25) + r2.xyz;
  }
  o0.xyzw = r0.xyzw;
  return;
}