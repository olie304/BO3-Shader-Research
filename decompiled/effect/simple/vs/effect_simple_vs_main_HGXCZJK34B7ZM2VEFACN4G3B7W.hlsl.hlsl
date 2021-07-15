// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:25:31 2021

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
  out float4 o3 : TEXCOORD1,
  out float4 o4 : TEXCOORD2,
  out float4 o5 : TEXCOORD3,
  out float2 o6 : TEXCOORD4,
  out float2 p6 : TEXCOORD5,
  out uint o7 : TEXCOORD6)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_input_sgv v7.x, vertex_id
  float4 r0,r1,r2,r3,r4;
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
  r1.xyz = r3.zzz ? float3(0,0,1) : inverseViewMatrix._m10_m11_m12;
  r2.xyz = v3.xyz * float3(2.00195694,2.00195694,2.00195694) + float3(-1.00195694,-1.00195694,-1.00195694);
  r1.xyz = r3.xxx ? r2.xyz : r1.xyz;
  r2.xyz = (uint3)v6.wxy;
  r2.xyz = float3(9.58738019e-05,0.00390625,0.0625) * r2.xyz;
  sincos(r2.x, r2.x, r3.x);
  r3.yzw = r2.xxx * r1.xyz;
  r1.xyz = r3.xxx * r1.xyz;
  r1.xyz = r0.xyz * r2.xxx + -r1.xyz;
  r0.xyz = r0.xyz * r3.xxx + r3.yzw;
  r0.xyz = v5.zzz * r0.xyz;
  r1.xyz = v5.www * r1.xyz;
  r3.xyz = r0.xyz * v5.xxx + v0.xyz;
  r3.xyz = r1.xyz * v5.yyy + r3.xyz;
  bitmask.w = ((~(-1 << 2)) << 1) & 0xffffffff;  r0.w = (((uint)v7.x << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
  r2.xw = (int2)v7.xx & int2(3,2);
  r0.w = (int)r0.w ^ (int)r2.x;
  r4.z = (uint)r2.w;
  r0.w = (int)r0.w & 2;
  r0.w = (uint)r0.w;
  r0.w = -1 + r0.w;
  r1.xyz = r1.xyz * r0.www;
  r4.w = -r0.w;
  r2.xw = float2(0,1) + r4.zw;
  r0.w = -1 + r4.z;
  r0.xyz = r0.xyz * r0.www + -r1.xyz;
  r0.xyz = r3.xyz + r0.xyz;
  r1.xy = float2(0.5,0.5) * r2.xw;
  r3.xyzw = viewProjectionMatrix._m10_m11_m12_m13 * r0.yyyy;
  r3.xyzw = r0.xxxx * viewProjectionMatrix._m00_m01_m02_m03 + r3.xyzw;
  r3.xyzw = r0.zzzz * viewProjectionMatrix._m20_m21_m22_m23 + r3.xyzw;
  o3.xyz = -eyeOffset.xyz + r0.xyz;
  r0.xyzw = -eyeOffset.yyyy * viewProjectionMatrix._m10_m11_m12_m13;
  r0.xyzw = -eyeOffset.xxxx * viewProjectionMatrix._m00_m01_m02_m03 + r0.xyzw;
  r0.xyzw = -eyeOffset.zzzz * viewProjectionMatrix._m20_m21_m22_m23 + r0.xyzw;
  r0.xyzw = viewProjectionMatrix._m30_m31_m32_m33 + r0.xyzw;
  r0.xyzw = r3.xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r0.x = max(0.100000001, r2.z);
  o4.yz = r2.yz;
  r0.x = 1 / r0.x;
  r0.y = saturate(r0.w * r0.x);
  r0.x = cmp(1 >= r0.x);
  r0.y = v1.w * r0.y;
  o1.w = r0.x ? r0.y : v1.w;
  o1.xyz = v1.xyz;
  r0.xy = (uint2)v2.xy >> int2(28,16);
  r2.w = r0.x;
  if (8 == 0) r2.x = 0; else if (8+8 < 32) {   r2.x = (uint)v2.x << (32-(8 + 8)); r2.x = (uint)r2.x >> (32-8);  } else r2.x = (uint)v2.x >> 8;
  if (4 == 0) r2.y = 0; else if (4+24 < 32) {   r2.y = (uint)v2.x << (32-(4 + 24)); r2.y = (uint)r2.y >> (32-4);  } else r2.y = (uint)v2.x >> 24;
  if (8 == 0) r2.z = 0; else if (8+16 < 32) {   r2.z = (uint)v2.x << (32-(8 + 16)); r2.z = (uint)r2.z >> (32-8);  } else r2.z = (uint)v2.x >> 16;
  r0.zw = (uint2)r2.yw << int2(23,23);
  r0.zw = (int2)-r0.zw + int2(1065353216,1065353216);
  r1.zw = r0.zw * r1.xy;
  if (r2.y == 0) r2.w = 0; else if (r2.y+0 < 32) {   r2.w = (uint)r2.x << (32-(r2.y + 0)); r2.w = (uint)r2.w >> (32-r2.y);  } else r2.w = (uint)r2.x >> 0;
  if (r0.x == 0) r2.x = 0; else if (r0.x+r2.y < 32) {   r2.x = (uint)r2.x << (32-(r0.x + r2.y)); r2.x = (uint)r2.x >> (32-r0.x);  } else r2.x = (uint)r2.x >> r2.y;
  r3.zw = (uint2)r2.wx;
  r3.zw = r3.zw * r0.zw + r1.zw;
  r2.xw = (int2)v2.xy & int2(255,65535);
  if (r0.x == 0) r0.x = 0; else if (r0.x+r2.y < 32) {   r0.x = (uint)r2.x << (32-(r0.x + r2.y)); r0.x = (uint)r0.x >> (32-r0.x);  } else r0.x = (uint)r2.x >> r2.y;
  r0.y = (uint)r0.y;
  r4.y = (uint)r0.x;
  if (r2.y == 0) r0.x = 0; else if (r2.y+0 < 32) {   r0.x = (uint)r2.x << (32-(r2.y + 0)); r0.x = (uint)r0.x >> (32-r2.y);  } else r0.x = (uint)r2.x >> 0;
  r2.xy = (uint2)r2.wz;
  r2.y = 0.00390625 * r2.y;
  o4.x = v2.x ? r2.y : 0;
  r4.x = (uint)r0.x;
  r3.xy = r4.xy * r0.zw + r1.zw;
  o2.xyzw = v2.xxxx ? r3.xyzw : r1.xyxy;
  p6.xy = r1.xy;
  o3.w = f16tof32(v2.z);
  o4.w = 0;
  o5.xyz = float3(0,0,0);
  r0.x = cmp(r2.x == 0.000000);
  r0.z = 0.0174532924 * r2.x;
  r0.z = cos(r0.z);
  r0.z = r0.z * r0.z;
  r0.w = cmp(r0.y == 0.000000);
  r0.y = 0.0174532924 * r0.y;
  r0.y = cos(r0.y);
  r0.y = -r0.y * r0.y + r0.z;
  r1.x = 1 / r0.y;
  r0.x = r0.w ? r0.x : 0;
  r1.y = -r0.z * r1.x + 1;
  o6.xy = r0.xx ? float2(0,1) : r1.xy;
  o7.x = 0;
  return;
}