// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:38:33 2021

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
  float v1 : COLOR1,
  float2 w1 : TEXCOORD0,
  uint4 v2 : TEXCOORD4,
  float4 v3 : TEXCOORD1,
  float4 v4 : TEXCOORD2,
  float3 v5 : TEXCOORD3,
  float3 v6 : OFFPOSITION0,
  float4 v7 : TEXCOORD9,
  out float4 o0 : SV_TARGET0,
  out float2 o1 : SV_TARGET1)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 1;
  r1.x = 0;
  r2.x = dot(v3.xyz, v3.xyz);
  r2.x = rsqrt(r2.x);
  r1.yzw = v3.xyz * r2.xxx;
  r2.y = r1.y + r1.z;
  r2.y = v3.z * r2.x + r2.y;
  r2.y = 0.5 * r2.y;
  r2.xzw = v3.xyz * r2.xxx + -r2.yyy;
  r3.x = max(r2.z, r2.w);
  r3.x = max(r3.x, r2.x);
  r2.y = max(r3.x, r2.y);
  r2.x = cmp(r2.y == r2.x);
  r0.yzw = float3(1,-1,-1) * r1.yzw;
  r0.xyzw = r2.xxxx ? r0.xyzw : r1.xyzw;
  r1.yzw = float3(-1,1,-1) * r0.yzw;
  r1.x = 2;
  r3.x = 2 + r2.y;
  r2.x = r2.x ? r3.x : r2.y;
  r2.y = cmp(r2.x == r2.z);
  r0.xyzw = r2.yyyy ? r1.xyzw : r0.xyzw;
  r1.yzw = float3(-1,-1,1) * r0.yzw;
  r2.z = 2 + r2.x;
  r2.x = r2.y ? r2.z : r2.x;
  r2.x = cmp(r2.x == r2.w);
  r1.x = 3;
  r0.xyzw = r2.xxxx ? r1.xyzw : r0.xyzw;
  r1.x = r0.y + r0.z;
  r1.z = r1.x + r0.w;
  r1.x = -r0.z * 3 + r1.z;
  r1.y = r0.w + -r0.y;
  r0.x = (uint)r0.x;
  o0.w = 0.333333343 * r0.x;
  r0.xyz = float3(0.408248305,0.707106769,0.577350259) * r1.xyz;
  r0.z = 1 + abs(r0.z);
  r0.z = rsqrt(r0.z);
  r0.xy = r0.xy * r0.zz;
  o0.xy = r0.xy * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  o0.z = 0;
  r0.xy = v7.xy / v7.ww;
  r0.zw = float2(0.5,0.5) * renderTargetSize.xy;
  r1.x = r0.x * r0.z;
  r1.y = r0.y * -r0.w;
  r0.xy = renderTargetSize.xy * float2(0.5,0.5) + r1.xy;
  r0.xy = v0.xy + -r0.xy;
  r0.zw = float2(0.100000001,0.100000001) * abs(r0.xy);
  r0.zw = min(float2(1,1), r0.zw);
  r1.xy = float2(-10,-10) + abs(r0.xy);
  r0.xy = cmp(r0.xy >= float2(0,0));
  r1.xy = saturate(float2(0.0333333351,0.0333333351) * r1.xy);
  r0.zw = -r1.xy + r0.zw;
  r0.zw = r0.zw * float2(0.5,0.5) + r1.xy;
  o1.xy = r0.xy ? r0.zw : -r0.zw;
  return;
}