// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:26 2021

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
  float2 revealScroll : packoffset(c10.z);
  float2 revealTiling : packoffset(c11);
  float3 defaultColor : packoffset(c12);
  float uvOffsetAmount : packoffset(c12.w);
  float2 uvRevealRowsCols : packoffset(c13);
  float uvRevealFrameTime : packoffset(c13.z);
  float2 offsetScroll : packoffset(c14);
  float2 offsetTiling : packoffset(c14.z);
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
Texture2D<float4> floatzTexture : register(t6);
Texture2D<float4> revealTexture : register(t7);
Texture2D<float4> uvOffsetTexture : register(t9);
Texture2D<float4> uvRevealTexture : register(t10);


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

  r0.xyz = frameBuffer.Sample(trilinearSampler_s, v1.xy).xyz;
  r0.w = floatzTexture.Sample(trilinearSampler_s, v1.xy).x;
  r1.x = cmp(r0.w < 0.984375);
  r1.y = uvRevealRowsCols.x * uvRevealRowsCols.y;
  r1.z = uvRevealFrameTime * r1.y;
  r1.w = gameTime.w * r1.z;
  r1.w = cmp(r1.w >= -r1.w);
  r1.w = r1.w ? r1.z : -r1.z;
  r2.x = 1 / r1.w;
  r2.x = gameTime.w * r2.x;
  r2.x = frac(r2.x);
  r1.w = r2.x * r1.w;
  r1.z = r1.w / r1.z;
  r1.y = r1.z * r1.y;
  r1.y = round(r1.y);
  r1.z = r1.y / uvRevealRowsCols.y;
  r1.w = uvRevealRowsCols.y * r1.y;
  r1.w = cmp(r1.w >= -r1.w);
  r1.w = r1.w ? uvRevealRowsCols.y : -uvRevealRowsCols.y;
  r2.x = 1 / r1.w;
  r1.y = r2.x * r1.y;
  r1.y = frac(r1.y);
  r1.y = r1.w * r1.y;
  r1.y = trunc(r1.y);
  r1.y = v1.x + r1.y;
  r2.x = r1.y / uvRevealRowsCols.y;
  r1.y = trunc(r1.z);
  r1.y = v1.y + r1.y;
  r2.y = r1.y / uvRevealRowsCols.x;
  r1.y = uvRevealTexture.Sample(trilinearSampler_s, r2.xy).x;
  r1.z = saturate(scriptVector0.w * 0.998000026 + 0.00100000005);
  r1.w = 1 + -r1.z;
  r2.x = saturate(alphaRevealRamp);
  r1.z = log2(r1.z);
  r1.z = r2.x * r1.z;
  r1.z = exp2(r1.z);
  r3.x = -r1.z;
  r1.z = log2(r1.w);
  r1.z = r2.x * r1.z;
  r3.y = exp2(r1.z);
  r1.zw = saturate(alphaRevealSoftEdge * r3.xy + r1.ww);
  r1.y = r1.y + -r1.z;
  r1.z = r1.w + -r1.z;
  r1.y = saturate(r1.y / r1.z);
  r1.z = uvOffsetAmount * r1.y;
  r1.zw = renderTargetSize.zw * r1.zz;
  r2.xy = gameTime.ww * offsetScroll.xy;
  r2.xy = v1.xy * offsetTiling.xy + r2.xy;
  r2.xy = uvOffsetTexture.Sample(trilinearSampler_s, r2.xy).xy;
  r2.xy = r2.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.xy = r1.zw * r2.xy + v1.xy;
  r3.xyz = frameBuffer.Sample(trilinearSampler_s, r2.xy).xyz;
  r2.zw = gameTime.ww * revealScroll.xy;
  r2.zw = v1.xy * revealTiling.xy + r2.zw;
  r2.z = revealTexture.Sample(trilinearSampler_s, r2.zw).x;
  if (r1.x != 0) {
    r1.x = dot(r1.zw, r1.zw);
    r1.x = sqrt(r1.x);
    r1.x = cmp(0 < r1.x);
    if (r1.x != 0) {
      r1.xzw = r3.xyz + -r0.xyz;
      r0.xyz = r1.yyy * r1.xzw + r0.xyz;
    } else {
      r2.xy = v1.xy;
    }
    r0.w = 1.01587307 * r0.w;
    r0.w = max(9.99999994e-09, r0.w);
    r0.w = rcp(r0.w);
    r1.x = saturate(0.800000012 * scriptVector0.y);
    r1.y = scriptVector0.y + -r1.x;
    r1.x = -r1.x + r0.w;
    r1.y = 1 / r1.y;
    r1.x = saturate(r1.x * r1.y);
    r1.y = r1.x * -2 + 3;
    r1.x = r1.x * r1.x;
    r1.x = -r1.y * r1.x + 1;
    r0.w = cmp(r0.w >= scriptVector0.y);
    r0.w = r0.w ? 0 : r1.x;
    r1.xy = r2.xy * renderTargetSize.xy + float2(0.5,0.5);
    r1.xy = floor(r1.xy);
    r1.xy = (int2)r1.xy;
    r1.zw = float2(0,0);
    r1.z = floatzTexture.Load(r1.xyz).x;
    r1.w = cmp(r1.z >= 0.984375);
    r2.x = 1.01587307 * r1.z;
    r1.z = r1.z * 64 + -63;
    r1.z = r1.w ? r1.z : r2.x;
    r1.z = max(9.99999994e-09, r1.z);
    r1.z = rcp(r1.z);
    r3.xyzw = (int4)r1.xyxy + int4(-1,0,0,-1);
    r4.xy = r3.zw;
    r4.zw = float2(0,0);
    r1.w = floatzTexture.Load(r4.xyz).x;
    r2.x = cmp(r1.w >= 0.984375);
    r2.y = 1.01587307 * r1.w;
    r1.w = r1.w * 64 + -63;
    r1.w = r2.x ? r1.w : r2.y;
    r1.w = max(9.99999994e-09, r1.w);
    r4.w = rcp(r1.w);
    r3.zw = float2(0,0);
    r1.w = floatzTexture.Load(r3.xyz).x;
    r2.x = cmp(r1.w >= 0.984375);
    r2.y = 1.01587307 * r1.w;
    r1.w = r1.w * 64 + -63;
    r1.w = r2.x ? r1.w : r2.y;
    r1.w = max(9.99999994e-09, r1.w);
    r4.z = rcp(r1.w);
    r3.xyzw = (int4)r1.xyxy + int4(1,0,0,1);
    r5.xy = r3.zw;
    r5.zw = float2(0,0);
    r1.x = floatzTexture.Load(r5.xyz).x;
    r1.y = cmp(r1.x >= 0.984375);
    r1.w = 1.01587307 * r1.x;
    r1.x = r1.x * 64 + -63;
    r1.x = r1.y ? r1.x : r1.w;
    r1.x = max(9.99999994e-09, r1.x);
    r5.w = rcp(r1.x);
    r3.zw = float2(0,0);
    r1.x = floatzTexture.Load(r3.xyz).x;
    r1.y = cmp(r1.x >= 0.984375);
    r1.w = 1.01587307 * r1.x;
    r1.x = r1.x * 64 + -63;
    r1.x = r1.y ? r1.x : r1.w;
    r1.x = max(9.99999994e-09, r1.x);
    r5.z = rcp(r1.x);
    r1.xy = -r4.zw + r1.zz;
    r1.zw = -r5.zw + r1.zz;
    r2.xy = abs(r1.xy) + -abs(r1.zw);
    r2.xy = cmp(r2.xy >= float2(0.00999999978,0.00999999978));
    r3.xy = r2.xy ? float2(1,1) : 0;
    r1.xy = abs(r1.zw) + -abs(r1.xy);
    r1.xy = cmp(r1.xy >= float2(0.00999999978,0.00999999978));
    r3.zw = r1.xy ? float2(1,1) : 0;
    r1.x = dot(r3.xyzw, float4(1,1,1,1));
    r1.y = -0.5 + r0.w;
    r1.y = saturate(2.50000024 * r1.y);
    r1.z = r1.y * -2 + 3;
    r1.y = r1.y * r1.y;
    r1.y = r1.z * r1.y;
    r1.z = 1 + -r2.z;
    r1.y = r1.y * r1.z + r2.z;
    r0.w = r1.y * r0.w;
  } else {
    r0.w = 1;
    r1.x = 0;
  }
  r0.xyz = r0.xyz * float3(3.05175781e-05,3.05175781e-05,3.05175781e-05) + -defaultColor.xyz;
  r0.xyz = r0.www * r0.xyz + defaultColor.xyz;
  r0.w = scriptVector0.z * r1.x;
  r0.xyz = r0.www * defaultColor.xyz + r0.xyz;
  o0.xyz = float3(32768,32768,32768) * r0.xyz;
  o0.w = 1;
  return;
}