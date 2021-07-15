// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:10 2021

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
  float3 pulseColor : packoffset(c11);
  float viewOutlineWidth : packoffset(c11.w);
  float viewOutlineBold : packoffset(c12);
  float hdrScale : packoffset(c12.y);
  float hdrScale1 : packoffset(c12.z);
  float2 falloffParms : packoffset(c13);
  float2 uvOffsetRowsCols : packoffset(c13.z);
  float uvOffsetTime : packoffset(c14);
  float uvOffsetAmount : packoffset(c14.y);
  float2 uvOffsetTile : packoffset(c14.z);
  float2 uvOffDetailTile : packoffset(c15);
  float2 uvOffDetailScroll : packoffset(c15.z);
  float3 aberrationFactors : packoffset(c16);
  float aberrationAmount : packoffset(c16.w);
  float minBlack : packoffset(c17);
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

SamplerState bilinearClampler_s : register(s1);
SamplerState pointSampler_s : register(s2);
Texture2D<float4> codeTexture0 : register(t0);
Texture2D<float4> codeTexture1 : register(t6);
Texture2D<float4> codeTexture2 : register(t7);
Texture2D<float4> uvOffsetTexture : register(t9);
Texture2D<float4> uvOffsetDetailTexture : register(t10);
Texture2D<float4> colorDetailTexture : register(t11);


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

  r0.xyzw = codeTexture0.Sample(bilinearClampler_s, v1.xy).xyzw;
  r1.x = renderTargetSize.w * viewOutlineWidth;
  r1.yz = uvOffsetTile.xy * v1.xy;
  r1.w = uvOffsetRowsCols.x * uvOffsetRowsCols.y;
  r2.x = uvOffsetTime * r1.w;
  r2.y = gameTime.w * r2.x;
  r2.y = cmp(r2.y >= -r2.y);
  r2.y = r2.y ? r2.x : -r2.x;
  r2.z = 1 / r2.y;
  r2.z = gameTime.w * r2.z;
  r2.z = frac(r2.z);
  r2.y = r2.y * r2.z;
  r2.x = r2.y / r2.x;
  r1.w = r2.x * r1.w;
  r1.w = round(r1.w);
  r2.x = r1.w / uvOffsetRowsCols.y;
  r2.y = uvOffsetRowsCols.y * r1.w;
  r2.y = cmp(r2.y >= -r2.y);
  r2.y = r2.y ? uvOffsetRowsCols.y : -uvOffsetRowsCols.y;
  r2.z = 1 / r2.y;
  r1.w = r2.z * r1.w;
  r1.yzw = frac(r1.yzw);
  r1.w = r2.y * r1.w;
  r1.w = trunc(r1.w);
  r1.y = r1.y + r1.w;
  r3.x = r1.y / uvOffsetRowsCols.y;
  r1.y = trunc(r2.x);
  r1.y = r1.z + r1.y;
  r3.y = r1.y / uvOffsetRowsCols.x;
  r1.yz = uvOffsetTexture.Sample(pointSampler_s, r3.xy).xy;
  r1.yz = r1.yz * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.xy = renderTargetSize.zw * r1.yz;
  r2.xy = uvOffsetAmount * r2.xy;
  r1.y = max(abs(r1.y), abs(r1.z));
  r1.z = cmp(0 < r1.y);
  r2.zw = gameTime.ww * uvOffDetailScroll.xy;
  r2.zw = v1.xy * uvOffDetailTile.xy + r2.zw;
  r3.xy = uvOffsetDetailTexture.Sample(pointSampler_s, r2.zw).xy;
  r4.xyz = colorDetailTexture.Sample(pointSampler_s, r2.zw).xyz;
  if (r1.z != 0) {
    r1.zw = r3.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
    r1.zw = renderTargetSize.zw * r1.zw;
    r2.z = uvOffsetAmount * r1.y;
    r2.xy = r1.zw * r2.zz + r2.xy;
    r3.xyz = cmp(float3(0.0404499993,0.0404499993,0.0404499993) >= r4.xyz);
    r5.xyz = float3(0.0773993805,0.0773993805,0.0773993805) * r4.xyz;
    r4.xyz = float3(0.0549999997,0.0549999997,0.0549999997) + r4.xyz;
    r4.xyz = float3(0.947867334,0.947867334,0.947867334) * r4.xyz;
    r4.xyz = log2(r4.xyz);
    r4.xyz = float3(2.4000001,2.4000001,2.4000001) * r4.xyz;
    r4.xyz = exp2(r4.xyz);
    r3.xyz = r3.xyz ? r5.xyz : r4.xyz;
    r3.xyz = float3(-1,-1,-1) + r3.xyz;
    r1.yzw = r1.yyy * r3.xyz + float3(1,1,1);
  } else {
    r1.yzw = float3(1,1,1);
  }
  r2.xy = v1.xy + r2.xy;
  r2.z = codeTexture2.Sample(bilinearClampler_s, r2.xy).x;
  r2.w = cmp(0 < r2.z);
  r3.y = -r1.x;
  r3.x = 0;
  r3.xy = r3.xy + r2.xy;
  r1.x = codeTexture2.Sample(bilinearClampler_s, r3.xy).x;
  r3.xyz = aberrationAmount * aberrationFactors.xyz;
  r4.xyzw = r3.xxyy * renderTargetSize.zwzw + r2.xyxy;
  r3.x = codeTexture1.Sample(bilinearClampler_s, r4.xy).x;
  r3.y = codeTexture1.Sample(bilinearClampler_s, r4.zw).y;
  r4.xy = r3.zz * renderTargetSize.zw + r2.xy;
  r3.w = codeTexture1.Sample(bilinearClampler_s, r4.xy).z;
  if (r2.w != 0) {
    r2.w = cmp(r2.z >= 0.984375);
    r3.z = 1.01587307 * r2.z;
    r2.z = r2.z * 64 + -63;
    r2.z = r2.w ? r2.z : r3.z;
    r2.z = max(9.99999994e-09, r2.z);
    r2.z = rcp(r2.z);
    r2.w = cmp(r1.x >= 0.984375);
    r3.z = 1.01587307 * r1.x;
    r1.x = r1.x * 64 + -63;
    r1.x = r2.w ? r1.x : r3.z;
    r1.x = max(9.99999994e-09, r1.x);
    r1.x = rcp(r1.x);
    r1.x = r2.z + -r1.x;
    r1.x = cmp(abs(r1.x) >= viewOutlineBold);
    r1.x = r1.x ? 1.000000 : 0;
    r1.x = dot(r1.xxxx, float4(1,1,1,1));
    r2.xy = r2.xy * renderTargetSize.xy + float2(0.5,0.5);
    r2.xy = floor(r2.xy);
    r2.xy = (int2)r2.xy;
    r2.zw = float2(0,0);
    r2.z = codeTexture2.Load(r2.xyz).x;
    r2.w = cmp(r2.z >= 0.984375);
    r3.z = 1.01587307 * r2.z;
    r2.z = r2.z * 64 + -63;
    r2.z = r2.w ? r2.z : r3.z;
    r2.z = max(9.99999994e-09, r2.z);
    r2.z = rcp(r2.z);
    r4.xyzw = (int4)r2.xyxy + int4(-1,0,0,-1);
    r5.xy = r4.zw;
    r5.zw = float2(0,0);
    r2.w = codeTexture2.Load(r5.xyz).x;
    r3.z = cmp(r2.w >= 0.984375);
    r5.x = 1.01587307 * r2.w;
    r2.w = r2.w * 64 + -63;
    r2.w = r3.z ? r2.w : r5.x;
    r2.w = max(9.99999994e-09, r2.w);
    r5.w = rcp(r2.w);
    r4.zw = float2(0,0);
    r2.w = codeTexture2.Load(r4.xyz).x;
    r3.z = cmp(r2.w >= 0.984375);
    r4.x = 1.01587307 * r2.w;
    r2.w = r2.w * 64 + -63;
    r2.w = r3.z ? r2.w : r4.x;
    r2.w = max(9.99999994e-09, r2.w);
    r5.z = rcp(r2.w);
    r4.xyzw = (int4)r2.xyxy + int4(1,0,0,1);
    r6.xy = r4.zw;
    r6.zw = float2(0,0);
    r2.x = codeTexture2.Load(r6.xyz).x;
    r2.y = cmp(r2.x >= 0.984375);
    r2.w = 1.01587307 * r2.x;
    r2.x = r2.x * 64 + -63;
    r2.x = r2.y ? r2.x : r2.w;
    r2.x = max(9.99999994e-09, r2.x);
    r6.w = rcp(r2.x);
    r4.zw = float2(0,0);
    r2.x = codeTexture2.Load(r4.xyz).x;
    r2.y = cmp(r2.x >= 0.984375);
    r2.w = 1.01587307 * r2.x;
    r2.x = r2.x * 64 + -63;
    r2.x = r2.y ? r2.x : r2.w;
    r2.x = max(9.99999994e-09, r2.x);
    r6.z = rcp(r2.x);
    r2.xy = -r5.zw + r2.zz;
    r2.zw = -r6.zw + r2.zz;
    r4.xy = abs(r2.xy) + -abs(r2.zw);
    r4.xy = cmp(r4.xy >= float2(9.99999975e-05,9.99999975e-05));
    r4.xy = r4.xy ? float2(1,1) : 0;
    r2.xy = abs(r2.zw) + -abs(r2.xy);
    r2.xy = cmp(r2.xy >= float2(9.99999975e-05,9.99999975e-05));
    r4.zw = r2.xy ? float2(1,1) : 0;
    r2.x = dot(r4.xyzw, float4(1,1,1,1));
    r1.x = r2.x + r1.x;
    r1.x = hdrScale1 * r1.x;
    r2.xyz = r3.xyw * hdrScale + r1.xxx;
    r1.x = 1;
  } else {
    r2.xyz = float3(0,0,0);
    r1.x = 0;
  }
  r3.xyz = float3(3.05175781e-05,3.05175781e-05,3.05175781e-05) * r0.xyz;
  r2.xyz = pulseColor.xyz * r2.xyz;
  r1.yzw = r2.xyz * r1.yzw + minBlack;
  r0.xyz = -r0.xyz * float3(3.05175781e-05,3.05175781e-05,3.05175781e-05) + r1.yzw;
  r0.xyz = r1.xxx * r0.xyz + r3.xyz;
  o0.xyz = float3(32768,32768,32768) * r0.xyz;
  o0.w = r0.w;
  return;
}