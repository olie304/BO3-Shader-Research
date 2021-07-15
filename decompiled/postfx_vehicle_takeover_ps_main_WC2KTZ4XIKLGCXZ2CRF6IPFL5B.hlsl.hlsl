// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:25 2021

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
  float alphaRevealSoftEdge : packoffset(c10);
  float alphaRevealRamp : packoffset(c10.y);
  float blurRadius : packoffset(c10.z);
  float2 noiseRowsCols : packoffset(c11);
  float noiseFrameTime : packoffset(c11.z);
  float noiseScale : packoffset(c11.w);
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

SamplerState bilinearSampler_s : register(s1);
Texture2D<float4> frameBuffer : register(t0);
Texture2D<float4> noiseTexture : register(t6);
Texture2D<float4> maskTexture : register(t7);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v1.xy * float2(2,2) + float2(-1,-1);
  r0.z = maskTexture.Sample(bilinearSampler_s, v1.xy).x;
  r0.w = scriptVector0.x * r0.z;
  r1.x = noiseRowsCols.x * noiseRowsCols.y;
  r1.y = noiseFrameTime * r1.x;
  r1.z = gameTime.w * r1.y;
  r1.z = cmp(r1.z >= -r1.z);
  r1.z = r1.z ? r1.y : -r1.y;
  r1.w = 1 / r1.z;
  r1.w = gameTime.w * r1.w;
  r1.w = frac(r1.w);
  r1.z = r1.z * r1.w;
  r1.y = r1.z / r1.y;
  r1.x = r1.y * r1.x;
  r1.x = round(r1.x);
  r1.y = r1.x / noiseRowsCols.y;
  r1.z = noiseRowsCols.y * r1.x;
  r1.z = cmp(r1.z >= -r1.z);
  r1.z = r1.z ? noiseRowsCols.y : -noiseRowsCols.y;
  r1.w = 1 / r1.z;
  r1.x = r1.x * r1.w;
  r1.x = frac(r1.x);
  r1.x = r1.z * r1.x;
  r1.x = trunc(r1.x);
  r1.x = v1.x + r1.x;
  r2.x = r1.x / noiseRowsCols.y;
  r1.x = trunc(r1.y);
  r1.x = v1.y + r1.x;
  r2.y = r1.x / noiseRowsCols.x;
  r1.xy = noiseScale * r2.xy;
  r0.z = -r0.z * scriptVector0.x + 1;
  r0.z = scriptVector0.x * r0.z;
  r0.z = r0.z * 0.200000048 + 1;
  r1.xy = r1.xy * float2(2,2) + float2(-1,-1);
  r1.xy = r1.xy * r0.zz;
  r1.xy = r1.xy * float2(0.5,0.5) + float2(0.5,0.5);
  r1.xyz = noiseTexture.Sample(bilinearSampler_s, r1.xy).xyz;
  r0.z = noiseTexture.Sample(bilinearSampler_s, v1.xy).w;
  r1.w = saturate(scriptVector0.x * 0.998000026 + 0.00100000005);
  r2.x = 1 + -r1.w;
  r2.y = saturate(alphaRevealRamp);
  r1.w = log2(r1.w);
  r1.w = r2.y * r1.w;
  r1.w = exp2(r1.w);
  r3.x = -r1.w;
  r1.w = log2(r2.x);
  r1.w = r2.y * r1.w;
  r3.y = exp2(r1.w);
  r2.xy = saturate(alphaRevealSoftEdge * r3.xy + r2.xx);
  r0.z = -r2.x + r0.z;
  r1.w = r2.y + -r2.x;
  r0.z = saturate(r0.z / r1.w);
  r0.z = scriptVector0.w * r0.z;
  r2.xy = scriptVector0.zz * r0.xy;
  r2.xy = saturate(r2.xy * float2(0.5,0.5) + float2(0.5,0.5));
  r3.xyzw = frameBuffer.Sample(bilinearSampler_s, r2.xy).xyzw;
  r1.w = cmp(0 < r0.w);
  if (r1.w != 0) {
    r1.w = dot(r0.xy, r0.xy);
    r1.w = rsqrt(r1.w);
    r4.xy = r1.ww * r0.xy;
    r0.x = blurRadius * r0.w;
    r0.x = 0.25 * r0.x;
    r0.xy = renderTargetSize.zw * r0.xx;
    r4.zw = float2(1,0.0400000028);
    r0.xy = r0.xy * r4.zy;
    r2.xy = r4.xw * r0.xy + r2.xy;
    r5.xyzw = frameBuffer.SampleLevel(bilinearSampler_s, r2.xy, 0).xyzw;
    r5.xyzw = r5.xyzw + r3.xyzw;
    r4.y = 0.200000003;
    r2.xy = r4.xy * r0.xy + r2.xy;
    r6.xyzw = frameBuffer.SampleLevel(bilinearSampler_s, r2.xy, 0).xyzw;
    r5.xyzw = r6.xyzw + r5.xyzw;
    r0.xy = r4.xy * r0.xy + r2.xy;
    r2.xyzw = frameBuffer.SampleLevel(bilinearSampler_s, r0.xy, 0).xyzw;
    r2.xyzw = r5.xyzw + r2.xyzw;
    r3.xyzw = float4(0.25,0.25,0.25,0.25) * r2.xyzw;
    o0.w = r3.w;
  } else {
    o0.w = r3.w;
  }
  r0.xyw = float3(-0.5,-0.5,-0.5) + r1.xyz;
  r0.xyz = r0.zzz * r0.xyw + float3(0.5,0.5,0.5);
  r1.xyz = cmp(r0.xyz < float3(0.5,0.5,0.5));
  r2.xyzw = float4(3.05175781e-05,3.05175781e-05,3.05175781e-05,6.10351563e-05) * r3.xyzx;
  r4.xyz = r2.xyz * r2.xyz;
  r5.xyz = -r0.xyz * float3(2,2,2) + float3(1,1,1);
  r4.xyz = r5.xyz * r4.xyz;
  r0.w = r2.w * r0.x + r4.x;
  r2.xyz = sqrt(r2.xyz);
  r5.xyz = r0.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r2.xyz = r5.xyz * r2.xyz;
  r5.xyz = float3(1,1,1) + -r0.xyz;
  r0.x = r2.w * r5.x + r2.x;
  r6.x = r1.x ? r0.w : r0.x;
  r0.xw = float2(6.10351563e-05,6.10351563e-05) * r3.yz;
  r0.yz = r0.xw * r0.yz + r4.yz;
  r0.xw = r0.xw * r5.yz + r2.yz;
  r6.yz = r1.yz ? r0.yz : r0.xw;
  r0.x = cmp(0 < scriptVector0.y);
  r0.y = dot(float3(0.25,0.649999976,0.100000001), r6.xyz);
  r0.z = -0.449999988 + r0.y;
  r0.z = saturate(0.5 * r0.z);
  r1.xyz = r0.yyy * r6.xyz;
  r2.xyz = r1.xyz + r1.xyz;
  r0.y = 1 + -r0.y;
  r0.y = r0.y + r0.y;
  r3.xyz = float3(1,1,1) + -r6.xyz;
  r3.xyz = -r0.yyy * r3.xyz + float3(1,1,1);
  r1.xyz = -r1.xyz * float3(2,2,2) + r3.xyz;
  r0.yzw = r0.zzz * r1.xyz + r2.xyz;
  r1.x = saturate(scriptVector0.y);
  r1.y = log2(r1.x);
  r1.y = 0.800000012 * r1.y;
  r1.y = exp2(r1.y);
  r0.yzw = r0.yzw + -r6.xyz;
  r0.yzw = r1.yyy * r0.yzw + r6.xyz;
  r0.yzw = r1.xxx * r1.xxx + r0.yzw;
  r0.xyz = r0.xxx ? r0.yzw : r6.xyz;
  o0.xyz = float3(32768,32768,32768) * r0.xyz;
  return;
}