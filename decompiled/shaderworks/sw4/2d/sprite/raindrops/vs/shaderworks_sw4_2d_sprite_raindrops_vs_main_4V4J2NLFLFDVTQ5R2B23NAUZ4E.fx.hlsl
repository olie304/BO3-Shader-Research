// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:40 2021

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
  float2 ScaleMin : packoffset(c10);
  float2 ScaleMax : packoffset(c10.z);
  float Seed : packoffset(c11);
  float3 ColorDispersion : packoffset(c11.y);
  float RaindropCount : packoffset(c12);
  float LifeMax : packoffset(c12.y);
  float LifeMin : packoffset(c12.z);
  float StretchMin : packoffset(c12.w);
  float StretchMax : packoffset(c13);
  float SlideMin : packoffset(c13.y);
  float SlideMax : packoffset(c13.z);
  float HeightMin : packoffset(c13.w);
  float HeightMax : packoffset(c14);
  float WarpMin : packoffset(c14.y);
  float WarpMax : packoffset(c14.z);
  float JitterMin : packoffset(c14.w);
  float JitterMax : packoffset(c15);
  float PauseMin : packoffset(c15.y);
  float PauseMax : packoffset(c15.z);
  float2 Source : packoffset(c16);
  float2 Sprites : packoffset(c16.z);
  float LensWarp : packoffset(c17);
  float FadeInMin : packoffset(c17.y);
  float FadeInMax : packoffset(c17.z);
  float FadeOutMin : packoffset(c17.w);
  float FadeOutMax : packoffset(c18);
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



// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : POSITION0,
  float4 v1 : TEXCOORD0,
  uint v2 : TEXCOORD15,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = floor(v0.x);
  r0.y = cmp(r0.x >= RaindropCount);
  r0.z = cmp(scriptVector0.x == 0.000000);
  r0.y = (int)r0.z | (int)r0.y;
  if (r0.y == 0) {
    r1.y = renderTargetSize.y / renderTargetSize.x;
    r0.y = 9.99999975e-05 * gameTime.w;
    r0.z = cmp(r0.y >= -r0.y);
    r0.y = frac(abs(r0.y));
    r0.y = r0.z ? r0.y : -r0.y;
    r0.y = 10000 * r0.y;
    r0.z = r0.x * 7.55950022 + Seed;
    r2.xyzw = float4(6.23400021,1.02499998,0.238999993,9.34500027) + r0.zzzz;
    r0.z = dot(r2.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
    r2.x = frac(r0.z);
    r0.z = dot(r2.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
    r2.y = frac(r0.z);
    r0.z = dot(r2.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
    r2.z = frac(r0.z);
    r0.z = dot(r2.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
    r2.w = frac(r0.z);
    r0.z = dot(r2.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
    r2.x = frac(r0.z);
    r0.z = dot(r2.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
    r0.z = frac(r0.z);
    r0.w = LifeMax + -LifeMin;
    r0.z = r0.z * r0.w + LifeMin;
    r0.y = r2.x * LifeMax + r0.y;
    r0.w = r0.y / r0.z;
    r0.w = floor(r0.w);
    r0.y = -r0.w * r0.z + r0.y;
    r0.w = r0.w * r0.z + Seed;
    r1.z = r0.x * 23.2474995 + r0.w;
    r2.xyzw = float4(33.1469994,74.3499985,1.54299998,87.3399963) + r1.zzzz;
    r1.z = dot(r2.xzyw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
    r2.x = frac(r1.z);
    r1.z = dot(r2.xzyw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
    r2.z = frac(r1.z);
    r1.z = dot(r2.xzyw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
    r2.y = frac(r1.z);
    r1.z = dot(r2.xzyw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
    r2.w = frac(r1.z);
    r1.z = dot(r2.xzyw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
    r2.x = frac(r1.z);
    r1.z = dot(r2.xzyw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
    r2.z = frac(r1.z);
    r1.z = dot(r2.xzyw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
    r2.y = frac(r1.z);
    r1.z = dot(r2.xzyw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
    r2.x = frac(r1.z);
    r3.xyzw = r0.xxxx * float4(13.0072002,13.0072002,13.0072002,13.0072002) + float4(0.344999999,9.35000038,1.34500003,12.04);
    r3.xyzw = r0.wwww * float4(3.34573007,3.34573007,3.34573007,3.34573007) + r3.xyzw;
    r1.z = dot(r3.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
    r3.x = frac(r1.z);
    r1.z = dot(r3.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
    r3.y = frac(r1.z);
    r1.z = dot(r3.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
    r3.z = frac(r1.z);
    r1.z = dot(r3.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
    r3.w = frac(r1.z);
    r1.z = dot(r3.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
    r3.x = frac(r1.z);
    r1.z = dot(r3.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
    r1.z = frac(r1.z);
    r3.xyzw = r0.xxxx * float4(33.1072006,33.1072006,33.1072006,33.1072006) + float4(22.3150997,2.30999994,7.34299994,44.0600014);
    r3.xyzw = r0.wwww * float4(1.24470997,1.24470997,1.24470997,1.24470997) + r3.xyzw;
    r0.x = dot(r3.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
    r3.x = frac(r0.x);
    r0.x = dot(r3.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
    r3.y = frac(r0.x);
    r0.x = dot(r3.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
    r3.z = frac(r0.x);
    r0.x = dot(r3.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
    r3.w = frac(r0.x);
    r0.x = dot(r3.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
    r3.x = frac(r0.x);
    r0.x = dot(r3.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
    r3.y = frac(r0.x);
    r0.x = dot(r3.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
    r3.z = frac(r0.x);
    r0.x = dot(r3.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
    r0.x = frac(r0.x);
    r2.zw = r2.xy * float2(2,2) + float2(-1,-1);
    r2.zw = float2(1.20000005,1) * r2.zw;
    r1.x = 1;
    r1.xy = r2.zw / r1.xy;
    r0.w = FadeInMax + -FadeInMin;
    r0.w = r2.y * r0.w + FadeInMin;
    r1.w = FadeOutMax + -FadeOutMin;
    r1.w = r2.x * r1.w + FadeOutMin;
    r1.z = Sprites.x * r1.z;
    r1.z = Sprites.y * r1.z;
    r1.z = floor(r1.z);
    r2.x = WarpMax + -WarpMin;
    o2.w = r3.x * r2.x + WarpMin;
    r2.x = HeightMax + -HeightMin;
    r2.x = r3.y * r2.x + HeightMin;
    r2.x = scriptVector0.x * r2.x;
    r2.x = 30 * r2.x;
    r2.y = PauseMax + -PauseMin;
    r2.y = r3.z * r2.y + PauseMin;
    r2.z = StretchMax + -StretchMin;
    r0.x = r0.x * r2.z + StretchMin;
    r1.xy = -Source.yx + r1.xy;
    r2.z = dot(r1.xy, r1.xy);
    r2.z = rsqrt(r2.z);
    r1.xy = r2.zz * r1.xy;
    r2.y = -r2.y + r0.y;
    r2.y = saturate(r2.y / r0.z);
    r0.x = -1 + r0.x;
    r0.x = r2.y * r0.x + 1;
    r0.x = r2.x / r0.x;
    r2.x = cmp(r0.w == 0.000000);
    r0.w = saturate(r0.y / r0.w);
    r2.y = r0.w * -2 + 3;
    r0.w = r0.w * r0.w;
    r0.w = r2.y * r0.w;
    r0.w = r2.x ? 1 : r0.w;
    r0.x = r0.x * r0.w;
    r0.w = cmp(r1.w == 0.000000);
    r0.y = r0.y + -r0.z;
    r0.y = r0.y + r1.w;
    r0.y = saturate(r0.y / r1.w);
    r0.z = r0.y * -2 + 3;
    r0.y = r0.y * r0.y;
    r0.y = -r0.z * r0.y + 1;
    r0.y = r0.w ? 1 : r0.y;
    o2.z = r0.x * r0.y;
    r0.x = min(abs(r1.x), abs(r1.y));
    r0.y = max(abs(r1.x), abs(r1.y));
    r0.y = 1 / r0.y;
    r0.x = r0.x * r0.y;
    r0.y = r0.x * r0.x;
    r0.z = r0.y * 0.0208350997 + -0.0851330012;
    r0.z = r0.y * r0.z + 0.180141002;
    r0.z = r0.y * r0.z + -0.330299497;
    r0.y = r0.y * r0.z + 0.999866009;
    r0.z = r0.x * r0.y;
    r0.w = cmp(abs(r1.y) < abs(r1.x));
    r0.z = r0.z * -2 + 1.57079637;
    r0.z = r0.w ? r0.z : 0;
    r0.x = r0.x * r0.y + r0.z;
    r0.y = cmp(r1.y < -r1.y);
    r0.y = r0.y ? -3.141593 : 0;
    r0.x = r0.x + r0.y;
    r0.y = min(r1.x, r1.y);
    r0.z = max(r1.x, r1.y);
    r0.y = cmp(r0.y < -r0.y);
    r0.z = cmp(r0.z >= -r0.z);
    r0.y = r0.z ? r0.y : 0;
    r0.x = r0.y ? -r0.x : r0.x;
    o2.x = sin(-r0.x);
    o2.y = cos(-r0.x);
    r0.xy = v1.xy / Sprites.xy;
    r0.z = r1.z / Sprites.x;
    r0.w = cmp(r0.z >= -r0.z);
    r1.x = frac(abs(r0.z));
    r0.w = r0.w ? r1.x : -r1.x;
    r1.x = Sprites.x * r0.w;
    r1.y = floor(r0.z);
    r0.zw = r1.xy / Sprites.xy;
    o1.xy = r0.xy + r0.zw;
  } else {
    o2.xyzw = float4(0,0,0,0);
    o1.xy = float2(0,0);
  }
  r0.xyz = -eyeOffset.xyz + v0.xyz;
  r1.xyzw = viewProjectionMatrix._m10_m11_m12_m13 * r0.yyyy;
  r1.xyzw = r0.xxxx * viewProjectionMatrix._m00_m01_m02_m03 + r1.xyzw;
  r0.xyzw = r0.zzzz * viewProjectionMatrix._m20_m21_m22_m23 + r1.xyzw;
  o0.xyzw = v0.wwww * viewProjectionMatrix._m30_m31_m32_m33 + r0.xyzw;
  return;
}