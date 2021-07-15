// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:44 2021

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
  out float4 o2 : TEXCOORD0,
  out float4 o3 : TEXCOORD2,
  out float2 o4 : TEXCOORD3)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = -eyeOffset.xyz + v0.xyz;
  r1.xyzw = viewProjectionMatrix._m10_m11_m12_m13 * r0.yyyy;
  r1.xyzw = r0.xxxx * viewProjectionMatrix._m00_m01_m02_m03 + r1.xyzw;
  r0.xyzw = r0.zzzz * viewProjectionMatrix._m20_m21_m22_m23 + r1.xyzw;
  o0.xyzw = viewProjectionMatrix._m30_m31_m32_m33 + r0.xyzw;
  o1.xyzw = v1.zzzw;
  r0.xyzw = float4(1023,1023,1023,3) * v4.xyzw;
  r0.xyzw = (uint4)r0.xyzw;
  r0.yzw = (uint3)r0.yzw << int3(10,20,30);
  r0.x = (int)r0.y | (int)r0.x;
  r0.x = (int)r0.z | (int)r0.x;
  r0.w = (int)r0.w | (int)r0.x;
  r1.xyzw = v3.zxxy * float4(2.00195694,2.00195694,2.00195694,2.00195694) + float4(-1.00195694,-1.00195694,-1.00195694,-1.00195694);
  r2.xy = float2(0,1) * r1.zw;
  r2.xy = r1.xy * float2(1,0) + -r2.xy;
  r1.y = dot(r2.xy, r2.xy);
  r3.x = rsqrt(r1.y);
  r3.yz = r3.xx * r2.xy;
  r0.xyz = float3(-0,-1,-1) * r3.xyz;
  r2.xyz = v4.yzx * float3(2.00195694,2.00195694,2.00195694) + float3(-1.00195694,-1.00195694,-1.00195694);
  r3.xyz = r2.xyz * r1.xzw;
  r1.xyz = r1.wxz * r2.yzx + -r3.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  r1.w = v4.w * 2 + -1;
  r1.xyz = r1.xyz * r1.www;
  r1.w = 1;
  r2.w = cmp(v3.w == 0.000000);
  r0.xyzw = r2.wwww ? r1.xyzw : r0.xyzw;
  o2.xy = v2.xy * r0.ww;
  o2.z = r0.w;
  o2.w = 1;
  r0.w = r2.w ? r2.z : 1;
  r1.xy = r2.ww ? r2.xy : 0;
  r1.xz = viewProjectionMatrix._m10_m11 * r1.xx;
  r1.xz = r0.ww * viewProjectionMatrix._m00_m01 + r1.xz;
  r1.xy = r1.yy * viewProjectionMatrix._m20_m21 + r1.xz;
  r2.xw = float2(1,-1);
  r2.yz = v1.xx;
  r1.xy = r2.xy * r1.xy;
  o3.xy = r1.xy * r2.zw;
  r0.yw = viewProjectionMatrix._m10_m11 * r0.yy;
  r0.xy = r0.xx * viewProjectionMatrix._m00_m01 + r0.yw;
  r0.xy = r0.zz * viewProjectionMatrix._m20_m21 + r0.xy;
  r0.z = v1.y;
  r0.w = 1;
  r0.xy = r0.zw * r0.xy;
  r0.z = -1;
  r0.w = v1.y;
  o3.zw = r0.xy * r0.zw;
  o4.xy = v2.xy;
  return;
}