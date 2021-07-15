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
  uint3 v2 : TEXCOORD0,
  float3 v3 : NORMAL0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  uint4 v6 : TEXCOORD3,
  uint v7 : SV_VertexID0,
  uint v8 : TEXCOORD15,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0,
  out float4 o2 : TEXCOORD0,
  out float4 o3 : TEXCOORD2)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_input_sgv v7.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.z = 0;
  r1.xyz = eyeOffset.yzx + -v0.yzx;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = inverseViewMatrix._m12_m10_m11 * r1.xyz;
  r2.xyz = inverseViewMatrix._m11_m12_m10 * r1.yzx + -r2.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r3.xyz = (int3)v6.zzz & int3(4,1,2);
  r2.xyz = r3.yyy ? r2.xyz : inverseViewMatrix._m00_m01_m02;
  r1.xy = r3.yy ? r1.zx : -inverseViewMatrix._m20_m21;
  r1.zw = -r1.yy;
  r0.w = dot(r1.xz, r1.xw);
  r0.w = rsqrt(r0.w);
  r0.x = -r1.y * r0.w;
  r0.y = r1.x * r0.w;
  r0.xyz = r3.zzz ? r0.xyz : r2.xyz;
  r1.xyz = v4.xyz * float3(2.00195694,2.00195694,2.00195694) + float3(-1.00195694,-1.00195694,-1.00195694);
  r0.xyz = r3.xxx ? r1.xyz : r0.xyz;
  r0.w = (uint)v6.w;
  r0.w = 9.58738019e-05 * r0.w;
  sincos(r0.w, r1.x, r2.x);
  r1.yzw = r3.zzz ? float3(0,0,1) : inverseViewMatrix._m10_m11_m12;
  r2.yzw = v3.xyz * float3(2.00195694,2.00195694,2.00195694) + float3(-1.00195694,-1.00195694,-1.00195694);
  r1.yzw = r3.xxx ? r2.yzw : r1.yzw;
  r2.yzw = r1.yzw * r1.xxx;
  r1.yzw = r1.yzw * r2.xxx;
  r1.xyz = r0.xyz * r1.xxx + -r1.yzw;
  r0.xyz = r0.xyz * r2.xxx + r2.yzw;
  r2.xyz = v5.zzz * r0.xyz;
  r3.xyz = r2.xyz * v5.xxx + v0.xyz;
  r4.xyz = v5.www * r1.xyz;
  r3.xyz = r4.xyz * v5.yyy + r3.xyz;
  bitmask.w = ((~(-1 << 2)) << 1) & 0xffffffff;  r0.w = (((uint)v7.x << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
  r5.xy = (int2)v7.xx & int2(3,2);
  r0.w = (int)r0.w ^ (int)r5.x;
  r5.xz = (uint2)r5.yy;
  r0.w = (int)r0.w & 2;
  r0.w = (uint)r0.w;
  r0.w = -1 + r0.w;
  r4.xyz = r4.xyz * r0.www;
  r5.yw = -r0.ww;
  r6.xyzw = float4(0,1,0,1) + r5.xyzw;
  r0.w = -1 + r5.z;
  r2.xyz = r2.xyz * r0.www + -r4.xyz;
  r2.xyz = r3.xyz + r2.xyz;
  r2.xyz = -eyeOffset.xyz + r2.xyz;
  r3.xyzw = float4(0.5,0.5,0.5,0.5) * r6.xyzw;
  r4.xyzw = viewProjectionMatrix._m10_m11_m12_m13 * r2.yyyy;
  r4.xyzw = r2.xxxx * viewProjectionMatrix._m00_m01_m02_m03 + r4.xyzw;
  r2.xyzw = r2.zzzz * viewProjectionMatrix._m20_m21_m22_m23 + r4.xyzw;
  o0.xyzw = viewProjectionMatrix._m30_m31_m32_m33 + r2.xyzw;
  o1.xyzw = v1.zzzw;
  r2.z = (uint)v2.x >> 28;
  if (8 == 0) r2.x = 0; else if (8+8 < 32) {   r2.x = (uint)v2.x << (32-(8 + 8)); r2.x = (uint)r2.x >> (32-8);  } else r2.x = (uint)v2.x >> 8;
  if (4 == 0) r2.y = 0; else if (4+24 < 32) {   r2.y = (uint)v2.x << (32-(4 + 24)); r2.y = (uint)r2.y >> (32-4);  } else r2.y = (uint)v2.x >> 24;
  r4.xy = (uint2)r2.yz << int2(23,23);
  r4.xy = (int2)-r4.xy + int2(1065353216,1065353216);
  r4.zw = r4.xy * r3.zw;
  r0.w = (int)v2.x & 255;
  if (r2.y == 0) r1.w = 0; else if (r2.y+0 < 32) {   r1.w = (uint)r0.w << (32-(r2.y + 0)); r1.w = (uint)r1.w >> (32-r2.y);  } else r1.w = (uint)r0.w >> 0;
  if (r2.z == 0) r0.w = 0; else if (r2.z+r2.y < 32) {   r0.w = (uint)r0.w << (32-(r2.z + r2.y)); r0.w = (uint)r0.w >> (32-r2.z);  } else r0.w = (uint)r0.w >> r2.y;
  if (r2.z == 0) r2.z = 0; else if (r2.z+r2.y < 32) {   r2.z = (uint)r2.x << (32-(r2.z + r2.y)); r2.z = (uint)r2.z >> (32-r2.z);  } else r2.z = (uint)r2.x >> r2.y;
  if (r2.y == 0) r2.x = 0; else if (r2.y+0 < 32) {   r2.x = (uint)r2.x << (32-(r2.y + 0)); r2.x = (uint)r2.x >> (32-r2.y);  } else r2.x = (uint)r2.x >> 0;
  r5.zw = (uint2)r2.xz;
  r2.zw = r5.zw * r4.xy + r4.zw;
  r5.y = (uint)r0.w;
  r5.x = (uint)r1.w;
  r2.xy = r5.xy * r4.xy + r4.zw;
  o2.xyzw = v2.xxxx ? r2.xyzw : r3.xyzw;
  r0.yw = viewProjectionMatrix._m10_m11 * r0.yy;
  r0.xy = r0.xx * viewProjectionMatrix._m00_m01 + r0.yw;
  r0.xy = r0.zz * viewProjectionMatrix._m20_m21 + r0.xy;
  r2.xw = float2(1,-1);
  r2.yz = v1.xx;
  r0.xy = r2.xy * r0.xy;
  o3.xy = r0.xy * r2.zw;
  r0.xy = viewProjectionMatrix._m10_m11 * r1.yy;
  r0.xy = r1.xx * viewProjectionMatrix._m00_m01 + r0.xy;
  r0.xy = r1.zz * viewProjectionMatrix._m20_m21 + r0.xy;
  r0.z = v1.y;
  r0.w = 1;
  r0.xy = r0.zw * r0.xy;
  r0.z = -1;
  r0.w = v1.y;
  o3.zw = r0.xy * r0.zw;
  return;
}