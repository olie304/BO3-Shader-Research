// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:25:19 2021

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
  float2 falloffParms : packoffset(c11.z);
  uint zFeatherComputeSprites : packoffset(c12);
  float desaturationAmount : packoffset(c12.y);
  float4 levelsControls : packoffset(c13);
  bool useOldHDRScale : packoffset(c14);
  float zClipPlane : packoffset(c14.y);
  float zClipPlaneDir : packoffset(c14.z);
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



// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : POSITION0,
  float4 v1 : COLOR0,
  float2 v2 : TEXCOORD0,
  float4 v3 : NORMAL0,
  float4 v4 : TANGENT0,
  uint v5 : SV_VertexID0,
  uint v6 : TEXCOORD15,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0,
  out float4 o2 : COLOR2,
  out float4 o3 : TEXCOORD0,
  out float4 o4 : TEXCOORD1,
  out float4 o5 : TEXCOORD2,
  out float4 o6 : TEXCOORD3,
  out float2 o7 : TEXCOORD4,
  out float2 p7 : TEXCOORD5,
  out uint4 o8 : TEXCOORD6,
  out float4 o9 : TEXCOORD7,
  out float3 o10 : TEXCOORD8)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cmp(falloffParms.xy == float2(0,0));
  r0.x = r0.y ? r0.x : 0;
  r0.yz = float2(0.0174532924,0.0174532924) * falloffParms.xy;
  r0.yz = cos(r0.yz);
  r0.zw = r0.yz * r0.yz;
  r0.y = r0.y * r0.y + -r0.w;
  r1.x = 1 / r0.y;
  r1.y = -r0.z * r1.x + 1;
  o7.xy = r0.xx ? float2(0,1) : r1.xy;
  r0.x = (uint)v0.w >> 16;
  o4.w = f16tof32(r0.x);
  r0.x = cmp(v3.w == 0.000000);
  r0.y = (int)v0.w & 0x0000ffff;
  r0.y = (uint)r0.y;
  r1.x = 0.00390625 * r0.y;
  r2.xyzw = float4(1023,1023,1023,3) * v4.xyzw;
  r2.xyzw = (uint4)r2.xyzw;
  r0.yzw = (uint3)r2.yzw << int3(10,20,30);
  r0.y = (int)r0.y | (int)r2.x;
  r0.y = (int)r0.z | (int)r0.y;
  r1.z = (int)r0.w | (int)r0.y;
  r1.y = 1;
  r0.xy = r0.xx ? r1.xy : r1.xz;
  o3.xy = v2.xy * r0.yy;
  r1.xyzw = -eyeOffset.yyyy * viewProjectionMatrix._m10_m11_m12_m13;
  r1.xyzw = -eyeOffset.xxxx * viewProjectionMatrix._m00_m01_m02_m03 + r1.xyzw;
  r1.xyzw = -eyeOffset.zzzz * viewProjectionMatrix._m20_m21_m22_m23 + r1.xyzw;
  r1.xyzw = viewProjectionMatrix._m30_m31_m32_m33 + r1.xyzw;
  r2.xyzw = viewProjectionMatrix._m10_m11_m12_m13 * v0.yyyy;
  r2.xyzw = v0.xxxx * viewProjectionMatrix._m00_m01_m02_m03 + r2.xyzw;
  r2.xyzw = v0.zzzz * viewProjectionMatrix._m20_m21_m22_m23 + r2.xyzw;
  o0.xyzw = r2.xyzw + r1.xyzw;
  r1.xyz = -eyeOffset.xyz + v0.xyz;
  r0.w = cmp(0 < fogConsts4.w);
  if (r0.w != 0) {
    r0.w = dot(r1.xyz, r1.xyz);
    r1.w = rsqrt(r0.w);
    r2.xyz = r1.xyz * r1.www;
    r0.w = sqrt(r0.w);
    r1.w = dot(sunFogDir.xyz, -r2.xyz);
    r2.x = -fogConsts3.w * fogConsts3.w + 1;
    r2.y = fogConsts3.w * -r1.w + 1;
    r2.y = r2.y * r2.y;
    r2.y = 12.566371 * r2.y;
    r2.x = r2.x / r2.y;
    r2.y = -fogConsts9.z + r0.w;
    r2.y = saturate(fogConsts9.w * r2.y);
    r2.x = r2.x * r2.y;
    r0.w = r0.w * fogConsts7.x + fogConsts6.w;
    r0.w = fogConsts7.z * r0.w;
    r2.y = cmp(0.00999999978 < abs(r1.z));
    r2.z = fogConsts7.y * r1.z;
    r2.w = -1.44269502 * r2.z;
    r2.w = exp2(r2.w);
    r2.w = 1 + -r2.w;
    r2.z = r2.w / r2.z;
    r2.z = r2.z * r0.w;
    r0.w = r2.y ? r2.z : r0.w;
    r2.yzw = fogConsts5.xyz * r0.www;
    r2.yzw = exp2(r2.yzw);
    r2.yzw = r2.yzw * fogConsts4.www + float3(1,1,1);
    r2.yzw = saturate(-fogConsts4.www + r2.yzw);
    r1.w = saturate(r1.w);
    r0.w = r1.w * r1.w + 1;
    r0.w = r0.w * 0.0596831031 + -1;
    r0.w = fogConsts7.w * r0.w + 1;
    r3.xyz = fogConsts4.xyz * r2.xxx;
    r3.xyz = r0.www * fogConsts3.xyz + r3.xyz;
    r3.xyz = fogConsts5.www * r3.xyz;
    r4.xyz = float3(1,1,1) + -r2.yzw;
    o10.xyz = r4.xyz * r3.xyz;
    o9.xyz = r2.yzw;
    o2.xyzw = float4(0,0,0,1);
  } else {
    r0.w = fogConsts.w * r1.z;
    r1.w = fogConsts.w * r1.z + fogConsts.x;
    r2.x = cmp(abs(r0.w) < 9.99999975e-05);
    r2.y = min(64, r1.w);
    r2.y = 1.44269502 * r2.y;
    r2.y = exp2(r2.y);
    r2.z = saturate(fogConsts2.x);
    r2.w = cmp(r1.w < 0);
    r1.w = 1 + r1.w;
    r1.w = r2.w ? r2.y : r1.w;
    r1.w = -fogConsts2.x + r1.w;
    r0.w = r2.x ? 1 : r0.w;
    r0.w = r1.w / r0.w;
    r0.w = r2.x ? r2.z : r0.w;
    r0.w = fogConsts.y * r0.w;
    r1.w = dot(r1.xyz, r1.xyz);
    r2.x = sqrt(r1.w);
    r0.w = r0.w * r2.x + fogConsts.z;
    r0.w = exp2(r0.w);
    r0.w = min(1, r0.w);
    r1.w = rsqrt(r1.w);
    r2.xyz = r1.xyz * r1.www;
    r1.w = dot(sunFogDir.xyz, r2.xyz);
    r1.w = saturate(sunFog.y * r1.w + sunFog.x);
    r2.xyzw = -sunFogColor.xyzw + fogColor.xyzw;
    r2.xyzw = r1.wwww * r2.xyzw + sunFogColor.xyzw;
    r0.w = 1 + -r0.w;
    o2.w = -r0.w * r2.w + 1;
    o9.xyz = float3(1,1,1);
    o10.xyz = float3(0,0,0);
    o2.xyz = r2.xyz;
  }
  o1.xyzw = v1.xyzw;
  o4.xyz = r1.xyz;
  r0.z = 0;
  o5.xyzw = r0.zxzz;
  p7.xy = v2.xy;
  o3.z = r0.y;
  o6.xyz = float3(0,0,0);
  o8.x = 0;
  return;
}