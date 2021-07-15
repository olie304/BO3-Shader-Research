// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:34 2021

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
  float FPS : packoffset(c10);
  float MinResolution : packoffset(c10.y);
  float MaxResolution : packoffset(c10.z);
  float NoisePower : packoffset(c10.w);
  float ColorAmount : packoffset(c11);
  float4 Color : packoffset(c12);
  float DarkenAmount : packoffset(c13);
  float DarkenPower : packoffset(c13.y);
  float AngularVelocityScale : packoffset(c13.z);
  float MinVelocityFraction : packoffset(c13.w);
  float GradientMin : packoffset(c14);
  float GradientMax : packoffset(c14.y);
  float VelocityScale : packoffset(c14.z);
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

SamplerState BlockNoise_Sampler_s : register(s1);
SamplerState Lookup2_Sampler_s : register(s2);
SamplerState resolvedPostSun_C11_P0_sampler_s : register(s3);
Texture2D<float4> BlockNoise : register(t0);
Texture2D<float4> Lookup2 : register(t6);
Texture2D<float4> resolvedPostSun_C11_P0 : register(t7);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float w1 : TEXCOORD1,
  float w1 : TEXCOORD2,
  float v2 : TEXCOORD3,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v1.xy + w1.xz;
  r0.xy = v2.xx * r0.xy;
  r0.x = BlockNoise.Sample(BlockNoise_Sampler_s, r0.xy).x;
  r0.x = log2(r0.x);
  r0.y = max(0, NoisePower);
  r0.x = r0.y * r0.x;
  r0.y = exp2(r0.x);
  r0.y = min(1, r0.y);
  r0.z = dot(cameraVelocity.xyz, cameraVelocity.xyz);
  r0.z = sqrt(r0.z);
  r0.w = 1 + -cameraVelocity.w;
  r0.w = AngularVelocityScale * r0.w;
  r0.z = saturate(r0.z * VelocityScale + r0.w);
  r0.z = max(MinVelocityFraction, r0.z);
  r0.w = MinResolution + -MaxResolution;
  r0.w = r0.z * r0.w + MaxResolution;
  r1.x = MaxResolution + -r0.w;
  r0.y = r0.y * r1.x + r0.w;
  r0.w = MinResolution + -r0.y;
  r1.x = 0.25 * scriptVector0.y;
  r1.x = max(scriptVector0.x, r1.x);
  r1.xy = float2(4,0.100000001) * r1.xx;
  r1.x = min(1, r1.x);
  r0.y = r1.x * r0.w + r0.y;
  r0.yw = float2(2,-684) + r0.yy;
  r0.y = floor(r0.y);
  r0.w = saturate(0.027777778 * r0.w);
  r0.y = r0.y + r0.y;
  r1.xz = v1.xy * r0.yy;
  r1.xz = floor(r1.xz);
  r1.xz = r1.xz / r0.yy;
  r0.y = 1 / r0.y;
  r2.zw = r0.yy * float2(0.5,0.5) + r1.xz;
  r0.y = 0.5 + gameTime.w;
  r1.x = cmp(r0.y >= -r0.y);
  r0.y = frac(abs(r0.y));
  r2.x = r1.x ? r0.y : -r0.y;
  r0.y = Lookup2.Sample(Lookup2_Sampler_s, r2.xw).x;
  r0.y = r0.y * 2 + -1;
  r3.z = r0.y * r1.y + r2.z;
  r0.y = r0.y * r1.y;
  r3.xy = r0.yy * float2(0.5,-0.25) + r2.zz;
  r3.w = r2.w;
  r1.xzw = resolvedPostSun_C11_P0.Sample(resolvedPostSun_C11_P0_sampler_s, r3.zw).xyz;
  r0.y = max(r1.x, r1.z);
  r0.y = max(r0.y, r1.w);
  r1.z = min(r1.x, r1.z);
  r1.z = min(r1.z, r1.w);
  r0.y = r1.z + r0.y;
  r0.y = Color.x * r0.y;
  r1.x = -r0.y * 0.5 + r1.x;
  r0.y = 0.5 * r0.y;
  r4.x = ColorAmount * r1.x + r0.y;
  r1.xzw = resolvedPostSun_C11_P0.Sample(resolvedPostSun_C11_P0_sampler_s, r3.xw).xyz;
  r3.xyz = resolvedPostSun_C11_P0.Sample(resolvedPostSun_C11_P0_sampler_s, r3.yw).xyz;
  r0.y = max(r1.x, r1.z);
  r0.y = max(r0.y, r1.w);
  r1.x = min(r1.x, r1.z);
  r1.x = min(r1.x, r1.w);
  r0.y = r1.x + r0.y;
  r0.y = Color.y * r0.y;
  r1.x = -r0.y * 0.5 + r1.z;
  r0.y = 0.5 * r0.y;
  r4.y = ColorAmount * r1.x + r0.y;
  r0.y = max(r3.x, r3.y);
  r0.y = max(r0.y, r3.z);
  r1.x = min(r3.x, r3.y);
  r1.x = min(r1.x, r3.z);
  r0.y = r1.x + r0.y;
  r0.y = Color.z * r0.y;
  r1.x = -r0.y * 0.5 + r3.z;
  r0.y = 0.5 * r0.y;
  r4.z = ColorAmount * r1.x + r0.y;
  r2.y = v1.y;
  r0.y = Lookup2.Sample(Lookup2_Sampler_s, r2.xy).x;
  r0.y = r0.y * 2 + -1;
  r2.x = r0.y * r1.y + v1.x;
  r0.y = r0.y * r1.y;
  r1.xy = r0.yy * float2(0.5,-0.25) + v1.xx;
  r2.y = v1.y;
  r2.xyz = resolvedPostSun_C11_P0.Sample(resolvedPostSun_C11_P0_sampler_s, r2.xy).xyz;
  r0.y = max(r2.x, r2.y);
  r0.y = max(r0.y, r2.z);
  r1.w = min(r2.x, r2.y);
  r1.w = min(r1.w, r2.z);
  r0.y = r1.w + r0.y;
  r0.y = Color.x * r0.y;
  r1.w = -r0.y * 0.5 + r2.x;
  r0.y = 0.5 * r0.y;
  r2.x = ColorAmount * r1.w + r0.y;
  r1.z = v1.y;
  r3.xyz = resolvedPostSun_C11_P0.Sample(resolvedPostSun_C11_P0_sampler_s, r1.xz).xyz;
  r1.xyz = resolvedPostSun_C11_P0.Sample(resolvedPostSun_C11_P0_sampler_s, r1.yz).xyz;
  r0.y = max(r3.x, r3.y);
  r0.y = max(r0.y, r3.z);
  r1.w = min(r3.x, r3.y);
  r1.w = min(r1.w, r3.z);
  r0.y = r1.w + r0.y;
  r0.y = Color.y * r0.y;
  r1.w = -r0.y * 0.5 + r3.y;
  r0.y = 0.5 * r0.y;
  r2.y = ColorAmount * r1.w + r0.y;
  r0.y = max(r1.x, r1.y);
  r0.y = max(r0.y, r1.z);
  r1.x = min(r1.x, r1.y);
  r1.x = min(r1.x, r1.z);
  r0.y = r1.x + r0.y;
  r0.y = Color.z * r0.y;
  r1.x = -r0.y * 0.5 + r1.z;
  r0.y = 0.5 * r0.y;
  r2.z = ColorAmount * r1.x + r0.y;
  r1.xyz = r2.xyz + -r4.xyz;
  r1.xyz = r0.www * r1.xyz + r4.xyz;
  r0.y = max(0, DarkenPower);
  r0.x = r0.y * r0.x;
  r0.x = exp2(r0.x);
  r0.y = -1 + DarkenAmount;
  r0.yzw = r0.zzz * r0.yyy + float3(1,1,1);
  r2.xyz = float3(1,1,1) + -r0.www;
  r0.xyz = r0.xxx * r2.xyz + r0.yzw;
  r0.xyz = r0.xyz * r1.xyz;
  r0.w = cmp(v1.y >= -v1.y);
  r1.x = frac(abs(v1.y));
  r0.w = r0.w ? r1.x : -r1.x;
  r0.w = -0.5 + abs(r0.w);
  r0.w = -abs(r0.w) * 2 + 1;
  r1.x = GradientMax + -GradientMin;
  r0.w = saturate(r0.w * r1.x + GradientMin);
  o0.xyz = r0.xyz * r0.www;
  o0.w = 1;
  return;
}