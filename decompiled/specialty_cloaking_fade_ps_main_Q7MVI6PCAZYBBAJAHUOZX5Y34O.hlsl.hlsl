// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:49 2021

cbuffer _Globals : register(b0)
{
  float4 flagParams : packoffset(c0);
  float4 colorObjMin : packoffset(c1);
  float4 colorObjMax : packoffset(c2);
  float colorObjMinBaseBlend : packoffset(c3);
  float colorObjMaxBaseBlend : packoffset(c3.y);
  float2 uvScroll : packoffset(c3.z);
  float4 detailScale : packoffset(c4);
  float4 detailScale1 : packoffset(c5);
  float4 detailScale2 : packoffset(c6);
  float4 detailScale3 : packoffset(c7);
  float4 alphaRevealParms : packoffset(c8);
  float4 colorDetailScale : packoffset(c9);
  float3 specColorTint : packoffset(c10);
  float baseNormalHeight : packoffset(c10.w);
  float2 glossRange : packoffset(c11);
  float scriptFaker : packoffset(c11.z);
  float EdgeAmount : packoffset(c11.w);
  float EdgeHarshness : packoffset(c12);
  float PulseWidth : packoffset(c12.y);
  float3 SceneTint : packoffset(c13);
  float DistortionOdd : packoffset(c13.w);
  float DistortionEven : packoffset(c14);
}

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

SamplerState trilinearSampler_s : register(s1);
SamplerState mirrorSampler_s : register(s3);
StructuredBuffer<shaderConstantSetBuffer> shaderConstantSetBuffer : register(t0);
StructuredBuffer<modelInstanceBuffer> modelInstanceBuffer : register(t4);
Texture2D<float4> colorMap : register(t21);
Texture2D<float4> resolvedPostSun : register(t22);
Texture2D<float4> revealTexture : register(t24);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  nointerpolation uint v3 : TEXCOORD3,
  float4 v4 : SV_POSITION0,
  out float4 o0 : SV_TARGET0)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t0, 384
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t4, 24
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.x, v3.x, l(4), t4.xxxx
r0.x = trilinearSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.x, r0.x, l(0), t0.xxxx
r0.x = trilinearSampler[]..swiz;
  r0.y = saturate(r0.x + r0.x);
  r0.x = -0.5 + r0.x;
  r0.x = saturate(r0.x + r0.x);
  r1.xyz = ddx_coarse(v0.zxy);
  r2.xyz = ddy_coarse(v0.yzx);
  r3.xyz = r2.xyz * r1.xyz;
  r1.xyz = r1.zxy * r2.yzx + -r3.xyz;
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = rsqrt(r0.z);
  r1.xyz = r1.xyz * r0.zzz;
  r0.z = max(abs(r1.x), abs(r1.y));
  r0.z = max(r0.z, abs(r1.z));
  r0.zw = cmp(abs(r1.yz) == r0.zz);
  r1.xy = r0.zz ? v0.xz : v0.yz;
  r0.zw = r0.ww ? v0.xy : r1.xy;
  r1.xyz = colorMap.Sample(trilinearSampler_s, r0.zw).xyz;
  r1.w = r0.y + r0.x;
  r1.w = 1 + r1.w;
  r2.x = 1 + -r1.w;
  r3.xyz = float3(0.212599993,0.715200007,0.0722000003) * r2.xxx;
  r2.xyz = r2.xxx * float3(0.212599993,0.715200007,0.0722000003) + r1.www;
  r3.w = r2.x;
  r4.x = saturate(dot(r1.yzx, r3.yzw));
  r5.xz = r3.xz;
  r5.y = r2.y;
  r4.y = saturate(dot(r1.xyz, r5.xyz));
  r2.xy = r3.xy;
  r4.z = saturate(dot(r1.xyz, r2.xyz));
  r1.x = cmp(r0.x == 0.000000);
  if (r1.x != 0) {
    r0.z = revealTexture.Sample(trilinearSampler_s, r0.zw).x;
    r0.z = r0.z + -r0.y;
    r0.z = saturate(17 * r0.z);
    r1.xy = (int2)v4.xy;
    r1.zw = float2(0,0);
    r1.xyz = resolvedPostSun.Load(r1.xyz).xyz;
    r0.w = dot(r1.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r2.xyz = r0.www + -r1.xyz;
    r1.xyz = r0.yyy * r2.xyz + r1.xyz;
    r1.xyz = r1.xyz + -r4.xyz;
    r0.yzw = r0.zzz * r1.xyz + r4.xyz;
  } else {
    r1.x = dot(v1.xyz, v1.xyz);
    r1.x = rsqrt(r1.x);
    r1.xyz = v1.xyz * r1.xxx;
    r1.w = dot(v2.xyz, v2.xyz);
    r1.w = rsqrt(r1.w);
    r2.xyz = v2.xyz * r1.www;
    r3.xy = (int2)v4.xy;
    r1.w = dot(r2.xyz, r1.xyz);
    r1.w = r1.w + r1.w;
    r5.xyz = r1.xyz * -r1.www + r2.xyz;
    r3.xy = (int2)r3.xy & int2(1,1);
    r1.w = cmp((int)r3.y == (int)r3.x);
    r2.w = r1.w ? DistortionOdd : DistortionEven;
    r3.xy = r1.ww ? float2(1.75,-13.5) : float2(-2.5,8.25);
    r5.xyz = r5.xyz * r2.www + v2.xyz;
    r6.xyz = viewProjectionMatrix._m10_m11_m13 * r5.yyy;
    r5.xyw = r5.xxx * viewProjectionMatrix._m00_m01_m03 + r6.xyz;
    r5.xyz = r5.zzz * viewProjectionMatrix._m20_m21_m23 + r5.xyw;
    r5.xyz = viewProjectionMatrix._m30_m31_m33 + r5.xyz;
    r1.w = rcp(r5.z);
    r3.zw = r5.xy * r1.ww;
    r5.x = 0.5 * r3.z;
    r5.yw = r3.zw * float2(0.5,-0.5) + float2(0.5,0.5);
    r3.xy = renderTargetSize.ww * r3.xy;
    r5.z = r3.w * -0.5 + 0.5;
    r3.z = 0.5;
    r3.xyzw = r5.xzxz + r3.zxzy;
    r6.x = resolvedPostSun.SampleLevel(mirrorSampler_s, r3.xy, 0).x;
    r6.y = resolvedPostSun.SampleLevel(mirrorSampler_s, r5.yw, 0).y;
    r6.z = resolvedPostSun.SampleLevel(mirrorSampler_s, r3.zw, 0).z;
    r1.x = saturate(dot(r1.xyz, -r2.xyz));
    r1.x = 1 + -r1.x;
    r1.x = log2(r1.x);
    r1.x = EdgeHarshness * r1.x;
    r1.x = exp2(r1.x);
    r1.y = v4.w + v4.w;
    r1.y = gameTime.w * -1.20000005 + r1.y;
    r1.y = sin(r1.y);
    r1.y = max(0, r1.y);
    r1.z = cmp(PulseWidth == 0.000000);
    r1.w = 0.5 * PulseWidth;
    r1.w = 1 / r1.w;
    r2.x = saturate(r1.y * r1.w);
    r2.y = r2.x * -2 + 3;
    r2.x = r2.x * r2.x;
    r2.x = r2.y * r2.x;
    r1.y = -PulseWidth * 0.5 + r1.y;
    r1.y = saturate(r1.y * r1.w);
    r1.w = r1.y * -2 + 3;
    r1.y = r1.y * r1.y;
    r1.y = -r1.w * r1.y + 1;
    r1.y = r2.x * r1.y;
    r1.y = r1.z ? 0 : r1.y;
    r1.x = saturate(r1.x + r1.y);
    r1.yzw = SceneTint.xyz * EdgeAmount + float3(-1,-1,-1);
    r1.xyz = r1.xxx * r1.yzw + float3(1,1,1);
    r1.xyz = r6.xyz * r1.xyz + -r4.xyz;
    r0.yzw = r0.xxx * r1.xyz + r4.xyz;
  }
  o0.xyz = r0.yzw;
  o0.w = 1;
  return;
}