// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:27:17 2021

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
  float3 colorTint : packoffset(c10);
  float baseNormalHeight : packoffset(c10.w);
  float2 glossRange : packoffset(c11);
  float detailScaleHeight : packoffset(c11.z);
  float3 crackReveal : packoffset(c12);
  float4 colorTint1 : packoffset(c13);
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

SamplerState colorSampler_s : register(s1);
SamplerState normalSampler_s : register(s2);
SamplerState crackSampler_s : register(s3);
StructuredBuffer<shaderConstantSetBuffer> shaderConstantSetBuffer : register(t0);
StructuredBuffer<modelInstanceBuffer> modelInstanceBuffer : register(t4);
Texture2D<float4> colorMap : register(t6);
Texture2D<float4> normalMap : register(t7);
Texture2D<float4> detailMap : register(t9);
Texture2D<float4> crackMap : register(t10);
Texture2D<float4> crackNormalMap : register(t11);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float3 v1 : COLOR0,
  float w1 : COLOR1,
  float4 v2 : TEXCOORD0,
  nointerpolation uint4 v3 : TEXCOORD4,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : TEXCOORD7,
  uint v8 : SV_IsFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2,
  out float2 o3 : SV_TARGET3)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t0, 384
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t4, 24
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.x, v3.x, l(4), t4.xxxx
r0.x = colorSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.y, r0.x, l(32), t0.xxxx
r0.y = colorSampler[]..swiz;
  r0.y = saturate(r0.y);
  r0.y = r0.y * -v1.y + 1;
  r0.z = saturate(alphaRevealParms.x + r0.y);
  r0.y = saturate(r0.y);
  r0.z = r0.z + -r0.y;
  r0.z = 1 / r0.z;
  r0.w = alphaRevealParms.y + alphaRevealParms.y;
  r1.xy = colorDetailScale.xy * v2.xy;
  r2.xyzw = crackMap.Sample(crackSampler_s, r1.xy).xyzw;
  r1.xyz = crackNormalMap.Sample(crackSampler_s, r1.xy).xyz;
  r1.w = saturate(r2.w * 0.998000026 + 0.00100000005);
  r1.w = log2(r1.w);
  r0.w = r1.w * r0.w;
  r0.w = exp2(r0.w);
  r0.y = r0.w + -r0.y;
  r0.y = saturate(r0.y * r0.z);
  r0.z = r0.y * -2 + 3;
  r0.y = r0.y * r0.y;
  r0.y = r0.z * r0.y;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.z, r0.x, l(16), t0.xxxx
r0.z = colorSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.x, r0.x, l(48), t0.xxxx
r0.x = colorSampler[]..swiz;
  r0.xz = saturate(r0.xz);
  r0.x = r0.x * -v1.z + 1;
  r0.z = r0.z * -v1.x + 1;
  r1.w = saturate(alphaRevealParms.x + r0.z);
  r0.z = saturate(r0.z);
  r1.w = r1.w + -r0.z;
  r0.z = r0.w + -r0.z;
  r1.w = 1 / r1.w;
  r0.z = saturate(r1.w * r0.z);
  r1.w = r0.z * -2 + 3;
  r0.z = r0.z * r0.z;
  r0.y = r1.w * r0.z + r0.y;
  r0.z = saturate(alphaRevealParms.x + r0.x);
  r0.x = saturate(r0.x);
  r0.z = r0.z + -r0.x;
  r0.x = r0.w + -r0.x;
  r0.z = 1 / r0.z;
  r0.x = saturate(r0.x * r0.z);
  r0.z = r0.x * -2 + 3;
  r0.x = r0.x * r0.x;
  r0.x = r0.z * r0.x + r0.y;
  r0.x = min(1, r0.x);
  r0.yzw = float3(-1,-1,-1) + colorTint.xyz;
  r3.xyzw = colorMap.Sample(colorSampler_s, v2.xy).xyzw;
  r0.yzw = r3.www * r0.yzw + float3(1,1,1);
  r0.yzw = r3.xyz * r0.yzw;
  r2.xyz = r2.xyz * colorTint1.xyz + -r0.yzw;
  o0.xyz = r0.xxx * r2.xyz + r0.yzw;
  o0.w = 1;
  r0.yzw = normalMap.Sample(normalSampler_s, v2.xy).xyz;
  r0.yzw = float3(-0.5,-0.5,-0) + r0.yzw;
  r0.yzw = baseNormalHeight * r0.yzw + float3(0.5,0.5,0);
  r0.yz = r0.yz * float2(1.9921875,1.9921875) + float2(-1,-1);
  r0.w = r0.w * r0.w;
  r0.w = 0.333333343 * r0.w;
  r0.w = min(1, r0.w);
  r1.w = dot(r0.yz, r0.yz);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r2.z = sqrt(r1.w);
  r3.xy = detailScale.xy * v2.xy;
  r3.xyz = detailMap.Sample(normalSampler_s, r3.xy).xyz;
  r3.xy = r3.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r1.w = r3.z * r3.z;
  r1.w = 0.333333343 * r1.w;
  r1.w = min(1, r1.w);
  r0.w = r1.w * detailScaleHeight + r0.w;
  r2.xy = r3.xy * detailScaleHeight + r0.yz;
  r0.y = dot(r2.xyz, r2.xyz);
  r0.y = rsqrt(r0.y);
  r2.xyz = r2.xyz * r0.yyy;
  r0.y = dot(v6.xyz, v6.xyz);
  r0.y = rsqrt(r0.y);
  r3.xyz = v6.xyz * r0.yyy;
  r0.y = v8.x ? 1 : -1;
  r3.xyz = r3.xyz * r0.yyy;
  r4.xyz = r3.xyz * r2.yyy;
  r0.z = dot(v5.xyz, v5.xyz);
  r0.z = rsqrt(r0.z);
  r5.xyz = v5.xyz * r0.zzz;
  r5.xyz = r5.xyz * r0.yyy;
  r2.xyw = r5.xyz * r2.xxx + r4.xyz;
  r0.z = dot(v4.xyz, v4.xyz);
  r0.z = rsqrt(r0.z);
  r4.xyz = v4.xyz * r0.zzz;
  r6.xyz = r4.xyz * r0.yyy;
  r2.xyz = r6.xyz * r2.zzz + r2.xyw;
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = rsqrt(r0.z);
  r2.xyz = r2.xyz * r0.zzz;
  r1.xy = r1.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r0.z = r1.z * r1.z;
  r0.z = 0.333333343 * r0.z;
  r0.z = min(1, r0.z);
  r3.xyz = r3.xyz * r1.yyy;
  r3.xyz = r5.xyz * r1.xxx + r3.xyz;
  r1.x = dot(r1.xy, r1.xy);
  r1.x = 1 + -r1.x;
  r1.x = max(0, r1.x);
  r1.x = sqrt(r1.x);
  r1.xyz = r6.xyz * r1.xxx + r3.xyz;
  r1.w = r6.x + r6.y;
  r1.w = r4.z * r0.y + r1.w;
  r1.w = 0.5 * r1.w;
  r2.w = dot(r1.xyz, r1.xyz);
  r2.w = rsqrt(r2.w);
  r1.xyz = r1.xyz * r2.www + -r2.xyz;
  r2.yzw = r0.xxx * r1.xyz + r2.xyz;
  r3.yzw = float3(1,-1,-1) * r2.yzw;
  r3.x = 1;
  r2.x = 0;
  r1.xyz = r4.xyz * r0.yyy + -r1.www;
  r0.y = max(r1.y, r1.z);
  r0.y = max(r1.x, r0.y);
  r0.y = max(r1.w, r0.y);
  r1.x = cmp(r0.y == r1.x);
  r2.xyzw = r1.xxxx ? r3.xyzw : r2.xyzw;
  r3.yzw = float3(-1,1,-1) * r2.yzw;
  r3.x = 2;
  r1.w = 2 + r0.y;
  r0.y = r1.x ? r1.w : r0.y;
  r1.x = cmp(r0.y == r1.y);
  r2.xyzw = r1.xxxx ? r3.xyzw : r2.xyzw;
  r3.yzw = float3(-1,-1,1) * r2.yzw;
  r1.y = 2 + r0.y;
  r0.y = r1.x ? r1.y : r0.y;
  r0.y = cmp(r0.y == r1.z);
  r3.x = 3;
  r1.xyzw = r0.yyyy ? r3.xyzw : r2.xyzw;
  r0.y = r1.y + r1.z;
  r2.z = r0.y + r1.w;
  r2.x = -r1.z * 3 + r2.z;
  r2.y = r1.w + -r1.y;
  r0.y = (uint)r1.x;
  o1.w = 0.333333343 * r0.y;
  r1.xyz = float3(0.408248305,0.707106769,0.577350259) * r2.xyz;
  r0.y = 1 + abs(r1.z);
  r0.y = rsqrt(r0.y);
  r1.xy = r1.xy * r0.yy;
  o1.xy = r1.xy * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  r0.y = saturate(0.0588235296 * glossRange.y);
  r0.y = -17 * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r0.w + r0.y;
  r0.y = log2(r0.y);
  r0.y = saturate(-0.0588235296 * r0.y);
  r0.w = -17 * r0.y;
  r0.w = exp2(r0.w);
  r0.z = r0.z + r0.w;
  r0.z = log2(r0.z);
  r0.z = -0.0588235296 * r0.z;
  r0.z = max(0, r0.z);
  r0.z = r0.z + -r0.y;
  r0.x = r0.x * r0.z + r0.y;
  o1.z = r0.x * 0.49755621 + 0.00146627566;
  o2.xyzw = float4(0.0399999991,0.5,1,0.333333343);
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
  o3.xy = r0.xy ? r0.zw : -r0.zw;
  return;
}