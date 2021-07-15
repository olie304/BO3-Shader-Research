// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:25:30 2021

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
  out float3 o2 : COLOR1,
  out float4 o3 : COLOR2,
  out float4 o4 : TEXCOORD0,
  out float4 o5 : TEXCOORD1,
  out float4 o6 : TEXCOORD2,
  out float4 o7 : TEXCOORD3,
  out float2 o8 : TEXCOORD4,
  out float2 p8 : TEXCOORD5,
  out uint4 o9 : TEXCOORD6,
  out float4 o10 : TEXCOORD7,
  out float3 o11 : TEXCOORD8)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_input_sgv v7.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = (int2)v7.xx & int2(3,2);
  r0.z = (uint)r0.y;
  bitmask.x = ((~(-1 << 2)) << 1) & 0xffffffff;  r1.x = (((uint)v7.x << 1) & bitmask.x) | ((uint)0 & ~bitmask.x);
  r0.x = (int)r0.x ^ (int)r1.x;
  r0.x = (int)r0.x & 2;
  r0.x = (uint)r0.x;
  r0.xy = float2(-1,-1) + r0.xz;
  r0.w = -r0.x;
  r0.zw = float2(0,1) + r0.zw;
  r0.zw = float2(0.5,0.5) * r0.zw;
  r1.xyz = v3.xyz * float3(2.00195694,2.00195694,2.00195694) + float3(-1.00195694,-1.00195694,-1.00195694);
  r2.xyz = v4.xyz * float3(2.00195694,2.00195694,2.00195694) + float3(-1.00195694,-1.00195694,-1.00195694);
  r3.xyz = (int3)v6.zzz & int3(4,1,2);
  r4.xyz = eyeOffset.yzx + -v0.yzx;
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = r4.xyz * r1.www;
  r5.xyz = inverseViewMatrix._m12_m10_m11 * r4.xyz;
  r5.xyz = inverseViewMatrix._m11_m12_m10 * r4.yzx + -r5.xyz;
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = rsqrt(r1.w);
  r5.xyz = r5.xyz * r1.www;
  r5.xyz = r3.yyy ? r5.xyz : inverseViewMatrix._m00_m01_m02;
  r4.xy = r3.yy ? r4.zx : -inverseViewMatrix._m20_m21;
  r4.zw = -r4.yy;
  r1.w = dot(r4.xz, r4.xw);
  r1.w = rsqrt(r1.w);
  r6.x = -r4.y * r1.w;
  r6.y = r4.x * r1.w;
  r6.z = 0;
  r4.xyz = r3.zzz ? float3(0,0,1) : inverseViewMatrix._m10_m11_m12;
  r3.yzw = r3.zzz ? r6.xyz : r5.xyz;
  r1.xyz = r3.xxx ? r1.xyz : r4.xyz;
  r2.xyz = r3.xxx ? r2.xyz : r3.yzw;
  r3.xyz = (uint3)v6.wxy;
  r3.xyz = float3(9.58738019e-05,0.00390625,0.0625) * r3.xyz;
  sincos(r3.x, r3.x, r4.x);
  r4.yzw = r3.xxx * r1.xyz;
  r4.yzw = r2.xyz * r4.xxx + r4.yzw;
  r1.xyz = r4.xxx * r1.xyz;
  r1.xyz = r2.xyz * r3.xxx + -r1.xyz;
  r2.xyz = r1.zxy * r4.zwy;
  r2.xyz = r1.yzx * r4.wyz + -r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  o7.xyz = r2.xyz * r1.www;
  r2.xyz = v5.zzz * r4.yzw;
  r1.xyz = v5.www * r1.xyz;
  r4.xyz = r2.xyz * v5.xxx + v0.xyz;
  r4.xyz = r1.xyz * v5.yyy + r4.xyz;
  r1.xyz = r1.xyz * r0.xxx;
  r1.xyz = r2.xyz * r0.yyy + -r1.xyz;
  r1.xyz = r4.xyz + r1.xyz;
  r0.xy = (int2)v2.xy & int2(255,65535);
  r2.xy = (uint2)v2.xy >> int2(28,16);
  if (8 == 0) r4.x = 0; else if (8+8 < 32) {   r4.x = (uint)v2.x << (32-(8 + 8)); r4.x = (uint)r4.x >> (32-8);  } else r4.x = (uint)v2.x >> 8;
  if (4 == 0) r4.y = 0; else if (4+24 < 32) {   r4.y = (uint)v2.x << (32-(4 + 24)); r4.y = (uint)r4.y >> (32-4);  } else r4.y = (uint)v2.x >> 24;
  if (8 == 0) r4.z = 0; else if (8+16 < 32) {   r4.z = (uint)v2.x << (32-(8 + 16)); r4.z = (uint)r4.z >> (32-8);  } else r4.z = (uint)v2.x >> 16;
  r1.w = (uint)r4.z;
  r1.w = 0.00390625 * r1.w;
  r4.w = r2.x;
  r2.zw = (uint2)r4.yw << int2(23,23);
  r2.zw = (int2)-r2.zw + int2(1065353216,1065353216);
  if (r4.y == 0) r3.x = 0; else if (r4.y+0 < 32) {   r3.x = (uint)r0.x << (32-(r4.y + 0)); r3.x = (uint)r3.x >> (32-r4.y);  } else r3.x = (uint)r0.x >> 0;
  if (r2.x == 0) r0.x = 0; else if (r2.x+r4.y < 32) {   r0.x = (uint)r0.x << (32-(r2.x + r4.y)); r0.x = (uint)r0.x >> (32-r2.x);  } else r0.x = (uint)r0.x >> r4.y;
  if (r4.y == 0) r3.w = 0; else if (r4.y+0 < 32) {   r3.w = (uint)r4.x << (32-(r4.y + 0)); r3.w = (uint)r3.w >> (32-r4.y);  } else r3.w = (uint)r4.x >> 0;
  if (r2.x == 0) r2.x = 0; else if (r2.x+r4.y < 32) {   r2.x = (uint)r4.x << (32-(r2.x + r4.y)); r2.x = (uint)r2.x >> (32-r2.x);  } else r2.x = (uint)r4.x >> r4.y;
  r4.y = (uint)r0.x;
  r4.xz = (uint2)r3.xw;
  r4.w = (uint)r2.x;
  r3.xw = r2.zw * r0.zw;
  r5.xy = r4.xy * r2.zw + r3.xw;
  r5.zw = r4.zw * r2.zw + r3.xw;
  o4.xyzw = v2.xxxx ? r5.xyzw : r0.zwzw;
  o6.x = v2.x ? r1.w : 0;
  r0.x = (uint)r0.y;
  r0.y = (uint)r2.y;
  r1.w = cmp(r0.x == 0.000000);
  r2.x = cmp(r0.y == 0.000000);
  r1.w = r1.w ? r2.x : 0;
  r0.xy = float2(0.0174532924,0.0174532924) * r0.xy;
  r0.xy = cos(r0.xy);
  r0.x = r0.x * r0.x;
  r0.y = -r0.y * r0.y + r0.x;
  r2.x = 1 / r0.y;
  r2.y = -r0.x * r2.x + 1;
  o8.xy = r1.ww ? float2(0,1) : r2.xy;
  o5.w = f16tof32(v2.z);
  o9.x = (uint)v2.z >> 16;
  r2.xyzw = -eyeOffset.yyyy * viewProjectionMatrix._m10_m11_m12_m13;
  r2.xyzw = -eyeOffset.xxxx * viewProjectionMatrix._m00_m01_m02_m03 + r2.xyzw;
  r2.xyzw = -eyeOffset.zzzz * viewProjectionMatrix._m20_m21_m22_m23 + r2.xyzw;
  r2.xyzw = viewProjectionMatrix._m30_m31_m32_m33 + r2.xyzw;
  r4.xyzw = viewProjectionMatrix._m10_m11_m12_m13 * r1.yyyy;
  r4.xyzw = r1.xxxx * viewProjectionMatrix._m00_m01_m02_m03 + r4.xyzw;
  r4.xyzw = r1.zzzz * viewProjectionMatrix._m20_m21_m22_m23 + r4.xyzw;
  r2.xyzw = r4.xyzw + r2.xyzw;
  r1.xyz = -eyeOffset.xyz + r1.xyz;
  r0.x = cmp(0 < fogConsts4.w);
  if (r0.x != 0) {
    r0.x = dot(r1.xyz, r1.xyz);
    r0.y = rsqrt(r0.x);
    r4.xyz = r1.xyz * r0.yyy;
    r0.x = sqrt(r0.x);
    r0.y = dot(sunFogDir.xyz, -r4.xyz);
    r1.w = -fogConsts3.w * fogConsts3.w + 1;
    r3.x = fogConsts3.w * -r0.y + 1;
    r3.x = r3.x * r3.x;
    r3.x = 12.566371 * r3.x;
    r1.w = r1.w / r3.x;
    r3.x = -fogConsts9.z + r0.x;
    r3.x = saturate(fogConsts9.w * r3.x);
    r1.w = r3.x * r1.w;
    r0.x = r0.x * fogConsts7.x + fogConsts6.w;
    r0.x = fogConsts7.z * r0.x;
    r3.x = cmp(0.00999999978 < abs(r1.z));
    r3.w = fogConsts7.y * r1.z;
    r4.x = -1.44269502 * r3.w;
    r4.x = exp2(r4.x);
    r4.x = 1 + -r4.x;
    r3.w = r4.x / r3.w;
    r3.w = r3.w * r0.x;
    r0.x = r3.x ? r3.w : r0.x;
    r4.xyz = fogConsts5.xyz * r0.xxx;
    r4.xyz = exp2(r4.xyz);
    r4.xyz = r4.xyz * fogConsts4.www + float3(1,1,1);
    r4.xyz = saturate(-fogConsts4.www + r4.xyz);
    r0.y = saturate(r0.y);
    r0.x = r0.y * r0.y + 1;
    r0.x = r0.x * 0.0596831031 + -1;
    r0.x = fogConsts7.w * r0.x + 1;
    r5.xyz = fogConsts4.xyz * r1.www;
    r5.xyz = r0.xxx * fogConsts3.xyz + r5.xyz;
    r5.xyz = fogConsts5.www * r5.xyz;
    r6.xyz = float3(1,1,1) + -r4.xyz;
    o11.xyz = r6.xyz * r5.xyz;
    o10.xyz = r4.xyz;
    o3.xyzw = float4(0,0,0,1);
  } else {
    r0.x = fogConsts.w * r1.z;
    r0.y = fogConsts.w * r1.z + fogConsts.x;
    r1.w = cmp(abs(r0.x) < 9.99999975e-05);
    r3.x = min(64, r0.y);
    r3.x = 1.44269502 * r3.x;
    r3.x = exp2(r3.x);
    r3.w = saturate(fogConsts2.x);
    r4.x = cmp(r0.y < 0);
    r0.y = 1 + r0.y;
    r0.y = r4.x ? r3.x : r0.y;
    r0.y = -fogConsts2.x + r0.y;
    r0.x = r1.w ? 1 : r0.x;
    r0.x = r0.y / r0.x;
    r0.x = r1.w ? r3.w : r0.x;
    r0.x = fogConsts.y * r0.x;
    r0.y = dot(r1.xyz, r1.xyz);
    r1.w = sqrt(r0.y);
    r0.x = r0.x * r1.w + fogConsts.z;
    r0.x = exp2(r0.x);
    r0.x = min(1, r0.x);
    r0.y = rsqrt(r0.y);
    r4.xyz = r1.xyz * r0.yyy;
    r0.y = dot(sunFogDir.xyz, r4.xyz);
    r0.y = saturate(sunFog.y * r0.y + sunFog.x);
    r4.xyzw = -sunFogColor.xyzw + fogColor.xyzw;
    r4.xyzw = r0.yyyy * r4.xyzw + sunFogColor.xyzw;
    r0.x = 1 + -r0.x;
    o3.w = -r0.x * r4.w + 1;
    o10.xyz = float3(1,1,1);
    o11.xyz = float3(0,0,0);
    o3.xyz = r4.xyz;
  }
  r0.x = max(0.100000001, r3.z);
  r0.x = 1 / r0.x;
  r0.y = cmp(1 >= r0.x);
  r0.x = saturate(r2.w * r0.x);
  r0.x = v1.w * r0.x;
  o1.w = r0.y ? r0.x : v1.w;
  o0.xyzw = r2.xyzw;
  o1.xyz = v1.xyz;
  o5.xyz = r1.xyz;
  o6.yz = r3.yz;
  o6.w = 0;
  p8.xy = r0.zw;
  o2.xyz = v1.xyz;
  return;
}