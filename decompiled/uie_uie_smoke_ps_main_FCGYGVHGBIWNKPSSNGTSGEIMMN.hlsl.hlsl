// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:44 2021

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



// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  float2 v2 : TEXCOORD0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(0 < scriptVector0.x);
  if (r0.x != 0) {
    sincos(gameTime.w, r0.x, r1.x);
    r0.w = r1.x * r0.x;
    r2.w = -r1.x * 0.100000001 + 0.899999976;
    r3.y = -r0.x * 0.100000001 + 0.899999976;
    r1.yz = -r0.xx * float2(0.0500000007,0.0199999996) + float2(0.800000012,0.300000012);
    r4.xyzw = r1.xxxx * float4(0.0199999996,0.0500000007,0.0500000007,0.200000003) + float4(0.949999988,0.200000003,0.230000004,0.25);
    r5.xyz = float3(0.25,0.0900000036,0.150000006) * r0.www;
    r6.xy = r5.zx;
    r6.z = r4.w;
    r7.x = 0.600000024 + -r6.x;
    r7.y = r0.x * 0.119999997 + 0.100000001;
    r8.y = r0.w * 0.0700000003 + 0.600000024;
    r9.x = -r1.x * 0.0299999993 + 0.400000006;
    r9.yw = r0.xx * float2(0.0500000007,0.100000001) + float2(0.5,0.899999976);
    r9.xyzw = v2.xyxy + -r9.yyxw;
    r0.w = dot(r9.xy, r9.xy);
    r0.yzw = float3(0.100000001,0.0199999996,2.5) * r0.xxw;
    r0.w = min(1, r0.w);
    r1.x = r0.w * -2 + 3;
    r0.w = r0.w * r0.w;
    r0.w = -r1.x * r0.w + 1;
    r10.xyzw = r0.wwww * float4(0,0,0,0.719999969) + float4(0.100000001,0.100000001,0.100000001,0.100000001);
    r5.xzw = r0.yzy * float3(-1,-1,1) + float3(0.100000001,0.800000012,0.100000001);
    r11.xyzw = v2.xyxy + -r5.xyzw;
    r0.y = dot(r11.xy, r11.xy);
    r0.y = -0.0299999993 + r0.y;
    r0.y = saturate(3.70370364 * r0.y);
    r0.z = r0.y * -2 + 3;
    r0.y = r0.y * r0.y;
    r12.xyz = -r0.zzz * r0.yyy + float3(1,1,1);
    r0.y = 1 + -r10.w;
    r12.w = r0.y * r12.z;
    r10.xyzw = r12.xyzw * float4(0,0,0,0.850000024) + r10.xyzw;
    r0.y = dot(r11.zw, r11.zw);
    r0.y = -0.0299999993 + r0.y;
    r0.y = saturate(2.12765956 * r0.y);
    r0.z = r0.y * -2 + 3;
    r0.y = r0.y * r0.y;
    r11.xyz = -r0.zzz * r0.yyy + float3(1,1,1);
    r0.y = 1 + -r10.w;
    r11.w = r0.y * r11.z;
    r10.xyzw = r11.xyzw * float4(0.0899999961,0.0899999961,0.0899999961,0.850000024) + r10.xyzw;
    r2.xyz = -r0.xxx * float3(0.100000001,0.0399999991,0.0199999996) + float3(0.140000001,1,0.800000012);
    r0.xyzw = v2.xyxy + -r2.xyzw;
    r0.x = dot(r0.xy, r0.xy);
    r0.x = -0.0199999996 + r0.x;
    r0.x = saturate(2.63157892 * r0.x);
    r0.y = r0.x * -2 + 3;
    r0.x = r0.x * r0.x;
    r0.x = -r0.y * r0.x + 1;
    r2.xyzw = float4(1,1,1,1) + -r10.zzzw;
    r2.xyzw = r2.xyzw * r0.xxxx;
    r2.xyzw = r2.xyzw * float4(0.0500000007,0.0500000007,0.0500000007,0.850000024) + r10.xyzw;
    r0.x = dot(r0.zw, r0.zw);
    r0.x = -0.0299999993 + r0.x;
    r0.x = saturate(2.12765956 * r0.x);
    r0.y = r0.x * -2 + 3;
    r0.x = r0.x * r0.x;
    r0.x = -r0.y * r0.x + 1;
    r10.xyzw = float4(1,1,1,1) + -r2.zzzw;
    r0.xyzw = r10.xyzw * r0.xxxx;
    r0.xyzw = r0.xyzw * float4(0.100000001,0.100000001,0.100000001,0.899999976) + r2.xyzw;
    r3.xzw = r4.xyz;
    r2.xyzw = v2.xyxy + -r3.xyzw;
    r1.x = dot(r2.xy, r2.xy);
    r1.x = -0.0299999993 + r1.x;
    r1.x = saturate(2.12765956 * r1.x);
    r1.w = r1.x * -2 + 3;
    r1.x = r1.x * r1.x;
    r1.x = -r1.w * r1.x + 1;
    r3.xyzw = float4(1,1,1,1) + -r0.zzzw;
    r3.xyzw = r3.xyzw * r1.xxxx;
    r0.xyzw = r3.xyzw * float4(0.300000012,0.300000012,0.300000012,0.600000024) + r0.xyzw;
    r1.xy = v2.xy + -r1.yz;
    r1.x = dot(r1.xy, r1.xy);
    r1.x = -0.0199999996 + r1.x;
    r1.x = saturate(2.63157892 * r1.x);
    r1.y = r1.x * -2 + 3;
    r1.x = r1.x * r1.x;
    r1.x = -r1.y * r1.x + 1;
    r3.xyzw = float4(1,1,1,1) + -r0.zzzw;
    r1.xyzw = r3.xyzw * r1.xxxx;
    r0.xyzw = r1.xyzw * float4(0.300000012,0.300000012,0.300000012,0.649999976) + r0.xyzw;
    r1.x = dot(r2.zw, r2.zw);
    r1.x = -0.100000001 + r1.x;
    r1.x = saturate(r1.x + r1.x);
    r1.y = r1.x * -2 + 3;
    r1.x = r1.x * r1.x;
    r1.x = -r1.y * r1.x + 1;
    r2.xyzw = float4(1,1,1,1) + -r0.zzzw;
    r1.xyzw = r2.xyzw * r1.xxxx;
    r0.xyzw = r1.xyzw * float4(0.200000003,0.200000003,0.200000003,0.349999994) + r0.xyzw;
    r1.xy = v2.xy + -r6.yz;
    r1.x = dot(r1.xy, r1.xy);
    r1.x = -0.100000001 + r1.x;
    r1.x = saturate(3.33333325 * r1.x);
    r1.y = r1.x * -2 + 3;
    r1.x = r1.x * r1.x;
    r1.x = -r1.y * r1.x + 1;
    r2.xyzw = float4(1,1,1,1) + -r0.zzzw;
    r1.xyzw = r2.xyzw * r1.xxxx;
    r0.xyzw = r1.xyzw * float4(0.300000012,0.300000012,0.300000012,0.5) + r0.xyzw;
    r1.xy = v2.xy + -r7.xy;
    r1.x = dot(r1.xy, r1.xy);
    r1.x = -0.0500000007 + r1.x;
    r1.x = saturate(4 * r1.x);
    r1.y = r1.x * -2 + 3;
    r1.x = r1.x * r1.x;
    r1.x = -r1.y * r1.x + 1;
    r2.xyzw = float4(1,1,1,1) + -r0.zzzw;
    r1.xyzw = r2.xyzw * r1.xxxx;
    r0.xyzw = r1.xyzw * float4(0.200000003,0.200000003,0.200000003,0.400000006) + r0.xyzw;
    r8.x = r5.x;
    r1.xy = v2.xy + -r8.xy;
    r1.x = dot(r1.xy, r1.xy);
    r1.x = -0.0500000007 + r1.x;
    r1.x = saturate(2.22222233 * r1.x);
    r1.y = r1.x * -2 + 3;
    r1.x = r1.x * r1.x;
    r1.x = -r1.y * r1.x + 1;
    r2.xyzw = float4(1,1,1,1) + -r0.zzzw;
    r1.xyzw = r2.xyzw * r1.xxxx;
    r0.xyzw = r1.xyzw * float4(0.200000003,0.200000003,0.200000003,0.800000012) + r0.xyzw;
    r1.x = dot(r9.zw, r9.zw);
    r1.x = 2.5 * r1.x;
    r1.x = min(1, r1.x);
    r1.y = r1.x * -2 + 3;
    r1.x = r1.x * r1.x;
    r1.x = -r1.y * r1.x + 1;
    r2.xyzw = float4(1,1,1,1) + -r0.zzzw;
    r1.xyzw = r2.xyzw * r1.xxxx;
    r0.xyzw = r1.xyzw * float4(0.400000006,0.400000006,0.400000006,0.5) + r0.xyzw;
    r0.xyzw = v1.xyzw * r0.xyzw;
    o0.w = scriptVector0.x * r0.w;
    o0.xyz = r0.xyz;
  } else {
    o0.xyzw = float4(0,0,0,0);
  }
  return;
}