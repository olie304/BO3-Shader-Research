// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:46 2021

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

Texture2D<float4> lumaTex : register(t0);
Texture2D<float4> colorTex : register(t6);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float2 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = (int2)v0.xy;
  r0.zw = float2(0,0);
  r1.x = lumaTex.Load(r0.xyw).x;
  r1.y = lumaTex.Load(r0.xyw, int3(0, 0, 0)).x;
  r1.z = lumaTex.Load(r0.xyw, int3(0, 0, 0)).x;
  r1.w = lumaTex.Load(r0.xyw, int3(0, 0, 0)).x;
  r2.x = lumaTex.Load(r0.xyw, int3(0, 0, 0)).x;
  r2.y = r1.x + -r1.z;
  r3.x = abs(r2.y);
  r2.y = r1.x + -r1.y;
  r3.y = abs(r2.y);
  r2.y = -r2.x + r1.x;
  r4.y = abs(r2.y);
  r2.y = r1.x + -r1.w;
  r4.x = abs(r2.y);
  r2.yz = cmp(r3.xy >= float2(0.100000001,0.100000001));
  r2.yz = r2.yz ? float2(1,1) : 0;
  r3.zw = cmp(r4.yx >= float2(0.100000001,0.100000001));
  r3.zw = r3.zw ? float2(1,1) : 0;
  r2.w = max(r3.z, r3.w);
  r2.w = max(r2.z, r2.w);
  r2.w = max(r2.y, r2.w);
  r2.w = cmp(0 != r2.w);
  if (r2.w == 0) discard;
  r2.w = lumaTex.Load(r0.xyw, int3(0, 0, 0)).x;
  r3.z = lumaTex.Load(r0.xyw, int3(0, 0, 0)).x;
  r3.w = lumaTex.Load(r0.xyw, int3(0, 0, 0)).x;
  r4.z = lumaTex.Load(r0.xyw, int3(0, 0, 0)).x;
  r4.w = lumaTex.Load(r0.xyw, int3(0, 0, 0)).x;
  r0.z = lumaTex.Load(r0.xyz, int3(0, 0, 0)).x;
  r0.z = r1.z + -r0.z;
  r5.x = abs(r0.z);
  r0.z = -r4.w + r1.y;
  r5.y = abs(r0.z);
  r0.zw = max(r5.xy, r4.yx);
  r5.xy = float2(1.5,1.5) * r3.xy;
  r0.zw = cmp(r5.xy >= r0.zw);
  r0.zw = r0.zw ? float2(1,1) : 0;
  r0.zw = r2.yz * r0.zw;
  r2.yz = max(r4.xy, r3.yx);
  r4.x = -r2.w + r1.z;
  r4.w = -r3.z + r1.z;
  r5.x = abs(r4.w);
  r4.w = -r2.w + r1.y;
  r4.xy = abs(r4.xw);
  r4.w = -r4.z + r1.y;
  r5.y = abs(r4.w);
  r4.xy = max(r5.xy, r4.xy);
  r2.yz = max(r4.xy, r2.yz);
  r3.xy = r3.xy + r3.xy;
  r2.yz = cmp(r3.xy >= r2.yz);
  r2.yz = r2.yz ? float2(1,1) : 0;
  r0.zw = r2.yz * r0.zw;
  r2.yz = cmp(v1.xy >= renderTargetSize.zw);
  r2.yz = r2.yz ? float2(1,1) : 0;
  o0.xy = r2.yz * r0.zw;
  r0.z = r1.y * 2 + r2.w;
  r0.z = r0.z + r4.z;
  r0.z = r1.x * 4 + -r0.z;
  r0.w = r1.z * 2 + r2.w;
  r0.w = r0.w + r3.z;
  r0.w = r1.x * 4 + -r0.w;
  r1.y = r1.w * 2 + r3.z;
  r1.y = r1.y + r3.w;
  r1.y = r1.x * 4 + -r1.y;
  r1.z = r2.x * 2 + r4.z;
  r1.z = r1.z + r3.w;
  r1.x = r1.x * 4 + -r1.z;
  r1.zw = max(abs(r1.yx), abs(r0.zw));
  r1.w = max(r1.z, r1.w);
  r2.x = cmp(abs(r0.z) == r1.w);
  r2.x = r2.x ? 0.000000 : 0;
  r2.y = cmp(abs(r1.y) == r1.w);
  r2.x = r2.y ? 1 : r2.x;
  r0.zw = cmp(abs(r0.zw) == r1.zw);
  r0.w = r0.w ? 8 : r2.x;
  r1.x = cmp(abs(r1.x) == r1.w);
  r0.w = r1.x ? 4 : r0.w;
  if (1 == 0) r1.x = 0; else if (1+1 < 32) {   r1.x = (uint)r0.w << (32-(1 + 1)); r1.x = (uint)r1.x >> (32-1);  } else r1.x = (uint)r0.w >> 1;
  if (1 == 0) r1.w = 0; else if (1+2 < 32) {   r1.w = (uint)r0.w << (32-(1 + 2)); r1.w = (uint)r1.w >> (32-1);  } else r1.w = (uint)r0.w >> 2;
  r2.x = (uint)r0.w >> 3;
  r2.y = (int)r0.w & 1;
  r3.y = (int)-r1.x + (int)r2.y;
  r3.x = (int)r1.w + (int)-r2.x;
  r0.z = r0.z ? 0.000000 : 0;
  r1.x = cmp(abs(r1.y) == r1.z);
  r0.z = r1.x ? 16 : r0.z;
  r0.z = (int)r0.z + (int)r0.w;
  r0.z = (int)r0.z;
  o1.w = 0.00392156886 * r0.z;
  r0.xy = (int2)r0.xy + (int2)r3.xy;
  r0.zw = float2(0,0);
  r0.xyz = colorTex.Load(r0.xyz).xyz;
  o1.xyz = float3(3.05175781e-05,3.05175781e-05,3.05175781e-05) * r0.xyz;
  return;
}