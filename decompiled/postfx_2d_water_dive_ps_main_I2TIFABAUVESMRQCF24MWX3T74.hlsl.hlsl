// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:05 2021

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
  float warp : packoffset(c10);
  float wash : packoffset(c10.y);
  float washSpin : packoffset(c10.z);
  float washTile : packoffset(c10.w);
  float washOpacity : packoffset(c11);
  float scubaSpeed : packoffset(c11.y);
  float scubaTile : packoffset(c11.z);
  float2 washReveal : packoffset(c12);
  float2 warpScroll : packoffset(c12.z);
  float2 scubaOffset : packoffset(c13);
}

cbuffer GenericsCBuffer : register(b3)
{
  float4 scriptVector0 : packoffset(c0);
  float4 scriptVector1 : packoffset(c1);
  float4 scriptVector2 : packoffset(c2);
  float4 scriptVector3 : packoffset(c3);
  float4 scriptVector4 : packoffset(c4);
  float4 scriptVector5 : packoffset(c5);
  float4 scriptVector6 : packoffset(c6);
  float4 scriptVector7 : packoffset(c7);
  float4 weaponParam0 : packoffset(c8);
  float4 weaponParam1 : packoffset(c9);
  float4 weaponParam2 : packoffset(c10);
  float4 weaponParam3 : packoffset(c11);
  float4 weaponParam4 : packoffset(c12);
  float4 weaponParam5 : packoffset(c13);
  float4 weaponParam6 : packoffset(c14);
  float4 weaponParam7 : packoffset(c15);
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
Texture2D<float4> frameBuffer : register(t0);
Texture2D<float4> revealTexture : register(t6);
Texture2D<float4> warpTexture : register(t7);
Texture2D<float4> lookupTexture : register(t9);
Texture2D<float4> washTexture : register(t10);
Texture2D<float4> scubaTexture : register(t11);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = float2(-0.5,-0.5) + v1.xy;
  r0.zw = gameTime.ww * warpScroll.xy + v1.xy;
  r0.z = warpTexture.Sample(trilinearSampler_s, r0.zw).x;
  r0.z = r0.z * 2 + -1;
  r0.w = 0.699999988 * gameTime.w;
  r1.xy = r0.ww * warpScroll.xy + v1.xy;
  r0.w = warpTexture.Sample(trilinearSampler_s, r1.xy).x;
  r0.w = r0.w * 2 + -1;
  r1.xy = renderTargetSize.zw * warp;
  r1.zw = r1.xy * r0.ww;
  r0.zw = r1.xy * r0.zz + r1.zw;
  r1.z = cmp(0 != scriptVector1.x);
  r1.w = 1 + -v1.y;
  r2.y = r1.z ? r1.w : v1.y;
  r2.x = v1.x;
  r1.z = revealTexture.Sample(trilinearSampler_s, r2.xy).x;
  r2.x = saturate(scriptVector0.x + wash);
  r1.z = saturate(r1.z * 0.998000026 + 0.00100000005);
  r2.y = 1 + -r1.z;
  r2.z = saturate(washReveal.y);
  r1.z = log2(r1.z);
  r1.z = r2.z * r1.z;
  r1.z = exp2(r1.z);
  r3.x = -r1.z;
  r1.z = log2(r2.y);
  r1.z = r2.z * r1.z;
  r3.y = exp2(r1.z);
  r2.yz = saturate(washReveal.xx * r3.xy + r2.yy);
  r1.z = r2.x + -r2.y;
  r2.x = r2.z + -r2.y;
  r1.z = saturate(r1.z / r2.x);
  r1.z = washOpacity * r1.z;
  r2.x = cmp(0 < r1.z);
  r0.xy = r0.xy * washTile + float2(0.5,0.5);
  r2.yz = r0.xy * washTile + float2(0.5,0.5);
  r2.w = gameTime.w * washSpin;
  r3.x = washSpin * gameTime.w + 1;
  r3.x = 0.226892799 * r3.x;
  sincos(r3.x, r3.x, r4.x);
  r4.y = r4.x;
  r4.z = r3.x;
  r5.x = dot(r4.yz, r0.xy);
  r4.x = -r3.x;
  r5.y = dot(r4.xy, r0.xy);
  r0.x = -r2.w * 0.970000029 + 1;
  r0.x = 0.506145477 * r0.x;
  sincos(r0.x, r0.x, r3.x);
  r3.y = r3.x;
  r3.z = r0.x;
  r4.x = dot(r3.yz, r2.yz);
  r3.x = -r0.x;
  r4.y = dot(r3.xy, r2.yz);
  r0.xy = r5.xy + r0.zw;
  r2.yzw = washTexture.Sample(trilinearSampler_s, r0.xy).xyz;
  r0.xy = r4.xy + r0.zw;
  r3.xyz = washTexture.Sample(trilinearSampler_s, r0.xy).xyz;
  if (r2.x != 0) {
    r2.xyz = r3.xyz * r2.yzw;
    r2.xyz = scriptVector1.yzw * r2.xyz;
  } else {
    r2.xyz = float3(0,0,0);
  }
  r0.x = cmp(0 < scriptVector0.y);
  if (r0.x != 0) {
    r0.x = 0.200000003;
    r0.y = 0.300000012 * gameTime.w;
    r0.x = lookupTexture.Sample(trilinearSampler_s, r0.xy).x;
    r0.y = scubaTile * v1.x;
    r2.w = 7 * r1.w;
    r2.w = sin(r2.w);
    r0.x = r2.w * r0.x;
    r3.xyzw = r0.xxxx * float4(0.0700000003,0.0500000007,0.0299999993,0.0700000003) + float4(1,1,1,1);
    r3.xyzw = r0.yyyy * r3.xyzw + scubaOffset.xyxy;
    r4.xy = saturate(r1.ww * scriptVector0.zz + r3.xz);
    r0.x = gameTime.w * scubaSpeed;
    r0.xy = float2(0.289999992,0.230000004) * r0.xx;
    r0.xy = frac(r0.xy);
    r4.zw = v1.yy + r0.xy;
    r0.xy = scubaTexture.Sample(trilinearSampler_s, r4.xz).xy;
    r0.xy = r0.xy * float2(2,2) + float2(-1,-1);
    r3.xy = saturate(-r1.ww * scriptVector0.zz + r3.yw);
    r3.zw = r4.wz;
    r3.xz = scubaTexture.Sample(trilinearSampler_s, r3.xz).xy;
    r0.xy = r3.xz * float2(2,2) + r0.xy;
    r0.xy = float2(-1,-1) + r0.xy;
    r3.xz = scubaTexture.Sample(trilinearSampler_s, r4.yw).xy;
    r3.xz = r3.xz * float2(2,2) + float2(-1,-1);
    r3.yw = scubaTexture.Sample(trilinearSampler_s, r3.yw).xy;
    r3.xy = r3.yw * float2(2,2) + r3.xz;
    r0.xy = r3.xy + r0.xy;
    r0.xy = float2(-1,-1) + r0.xy;
    r2.w = cmp(0 < scriptVector0.w);
    r1.w = r2.w ? v1.y : r1.w;
    r3.xy = float2(1.39999998,1) + -scriptVector0.yy;
    r3.x = saturate(r3.x);
    r2.w = r3.x + -r3.y;
    r1.w = -r3.y + r1.w;
    r2.w = 1 / r2.w;
    r1.w = saturate(r2.w * r1.w);
    r2.w = r1.w * -2 + 3;
    r1.w = r1.w * r1.w;
    r1.w = r2.w * r1.w;
    r1.xy = r0.xy * r1.xy;
    r0.zw = r1.xy * r1.ww + r0.zw;
    r0.x = dot(r0.xy, r0.xy);
    r0.x = rsqrt(r0.x);
    r0.x = r0.y * r0.x;
    r0.y = abs(r0.x);
    r1.x = cmp(r0.x < -0);
    r0.xy = cmp(float2(-0,0.99000001) < r0.xy);
    r0.x = (int)-r1.x + (int)r0.x;
    r0.x = (int)r0.x;
    r0.x = r0.y ? r0.x : 0;
    r3.xyz = scriptVector1.yzw;
  } else {
    r3.xyz = float3(10000,0,0);
    r1.w = 0;
    r0.x = 0;
  }
  r0.yz = v1.xy + r0.zw;
  r4.xyzw = frameBuffer.Sample(trilinearSampler_s, r0.yz).xyzw;
  r0.yzw = r2.xyz * float3(10000,10000,10000) + -r4.xyz;
  r0.yzw = r1.zzz * r0.yzw + r4.xyz;
  r1.x = cmp(0 < r0.x);
  r2.xyz = r0.yzw * r1.www;
  r2.xyz = r2.xyz * float3(0.400000006,0.400000006,0.400000006) + r0.yzw;
  r0.x = cmp(r0.x < 0);
  r1.y = 0.400000006 * r1.w;
  r3.xyz = float3(-1,-1,-1) + r3.xyz;
  r1.yzw = r1.yyy * r3.xyz + float3(1,1,1);
  r1.yzw = r1.yzw * r0.yzw;
  r0.xyz = r0.xxx ? r1.yzw : r0.yzw;
  o0.xyz = r1.xxx ? r2.xyz : r0.xyz;
  o0.w = r4.w;
  return;
}