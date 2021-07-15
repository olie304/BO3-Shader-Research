// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:41:15 2021

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
  float3 specColorTint : packoffset(c10);
  float baseNormalHeight : packoffset(c10.w);
  float2 glossRange : packoffset(c11);
  float2 rotateUVs : packoffset(c11.z);
  float2 scrollUVs : packoffset(c12);
  float2 scaleUVs : packoffset(c12.z);
  float2 offsetUVs : packoffset(c13);
  float2 zoomUVs : packoffset(c13.z);
  float zoomRate : packoffset(c14);
  float layerDepth : packoffset(c14.y);
  bool clampU : packoffset(c14.z);
  bool clampV : packoffset(c14.w);
  float treadDepth : packoffset(c15);
  float reverseTread : packoffset(c15.y);
  float2 mixScale : packoffset(c15.z);
  float detailScaleHeight1 : packoffset(c16);
  float detailScaleHeight2 : packoffset(c16.y);
  float4 colorTint : packoffset(c17);
  float4 colorTint1 : packoffset(c18);
  float2 glossRange2 : packoffset(c19);
  float rotateUVs1 : packoffset(c19.z);
  float rotateUVs2 : packoffset(c19.w);
  bool useUVOffsets1 : packoffset(c20);
  bool useUVOffsets2 : packoffset(c20.y);
  float detailScaleHeight3 : packoffset(c20.z);
  float4 colorTint2 : packoffset(c21);
  float2 glossRange3 : packoffset(c22);
  float rotateUVs3 : packoffset(c22.z);
  bool useUVOffsets3 : packoffset(c22.w);
  float4 specColorTint1 : packoffset(c23);
  float4 specColorTint2 : packoffset(c24);
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

StructuredBuffer<shaderConstantSetBuffer> shaderConstantSetBuffer : register(t0);
StructuredBuffer<modelInstanceBuffer> modelInstanceBuffer : register(t4);
StructuredBuffer<boneMatrixBuffer> boneMatrixBuffer : register(t5);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float3 v0 : POSITION0,
  float4 v1 : COLOR0,
  float2 v2 : TEXCOORD0,
  float3 v3 : NORMAL0,
  float4 v4 : TANGENT0,
  uint v5 : TEXCOORD15,
  out float4 o0 : SV_POSITION0,
  out float3 o1 : COLOR0,
  out float p1 : COLOR1,
  out float2 o2 : TEXCOORD0,
  out float3 o3 : UVOFFSETS0,
  out float4 o4 : TEXCOORD1,
  out float4 o5 : TEXCOORD2,
  out float3 o6 : TEXCOORD3)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t0, 384
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t4, 24
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t5, 64
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v0.xyz;
  r0.w = 1;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r1.x, v5.x, l(12), t4.xxxx
r1.x = shaderConstantSetBuffer[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r1.x, l(0), t5.xyzw
r2.x = shaderConstantSetBuffer[]..swiz;
r2.y = shaderConstantSetBuffer[]..swiz;
r2.z = shaderConstantSetBuffer[]..swiz;
r2.w = shaderConstantSetBuffer[]..swiz;
  r3.x = r2.w;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r1.x, l(16), t5.xyzw
r4.x = shaderConstantSetBuffer[]..swiz;
r4.y = shaderConstantSetBuffer[]..swiz;
r4.z = shaderConstantSetBuffer[]..swiz;
r4.w = shaderConstantSetBuffer[]..swiz;
  r3.y = r4.w;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r1.x, l(32), t5.xyzw
r5.x = shaderConstantSetBuffer[]..swiz;
r5.y = shaderConstantSetBuffer[]..swiz;
r5.z = shaderConstantSetBuffer[]..swiz;
r5.w = shaderConstantSetBuffer[]..swiz;
  r3.z = r5.w;
  r1.yzw = -eyeOffset.xyz + r3.xyz;
  r4.w = r1.z;
  r1.z = dot(r0.xyzw, r4.xyzw);
  r3.xyzw = viewProjectionMatrix._m10_m11_m12_m13 * r1.zzzz;
  r2.w = r1.y;
  r5.w = r1.w;
  r1.y = dot(r0.xyzw, r2.xyzw);
  r3.xyzw = r1.yyyy * viewProjectionMatrix._m00_m01_m02_m03 + r3.xyzw;
  r0.x = dot(r0.xyzw, r5.xyzw);
  r0.xyzw = r0.xxxx * viewProjectionMatrix._m20_m21_m22_m23 + r3.xyzw;
  o0.xyzw = viewProjectionMatrix._m30_m31_m32_m33 + r0.xyzw;
  r0.xyz = log2(abs(v1.xyz));
  r0.xyz = float3(2.20000005,2.20000005,2.20000005) * r0.xyz;
  o1.xyz = exp2(r0.xyz);
  p1.x = v1.w;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.x, v5.x, l(4), t4.xxxx
r0.x = shaderConstantSetBuffer[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.xy, r0.x, l(16), t0.xyxx
r0.x = shaderConstantSetBuffer[]..swiz;
r0.y = shaderConstantSetBuffer[]..swiz;
  r0.z = cmp(reverseTread != 0.000000);
  r0.x = r0.z ? r0.y : r0.x;
  o2.xy = r0.xx * scrollUVs.xy + v2.xy;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.x, r1.x, l(12), t5.xxxx
r0.x = shaderConstantSetBuffer[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.y, r1.x, l(28), t5.xxxx
r0.y = shaderConstantSetBuffer[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.z, r1.x, l(44), t5.xxxx
r0.z = shaderConstantSetBuffer[]..swiz;
  r0.xyz = float3(0.100000001,0.100000001,0.100000001) * r0.xyz;
  o3.xyz = frac(r0.xyz);
  r0.xyz = v3.xyz * float3(2.00195694,2.00195694,2.00195694) + float3(-1.00195694,-1.00195694,-1.00195694);
  r1.x = dot(r0.xyz, r2.xyz);
  r1.y = dot(r0.xyz, r4.xyz);
  r1.z = dot(r0.xyz, r5.xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  o4.xyz = r1.xyz * r0.www;
  r1.xyz = v4.xyz * float3(2.00195694,2.00195694,2.00195694) + float3(-1.00195694,-1.00195694,-1.00195694);
  r3.x = dot(r1.xyz, r2.xyz);
  r3.y = dot(r1.xyz, r4.xyz);
  r3.z = dot(r1.xyz, r5.xyz);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r3.xyz * r0.www;
  r3.xyz = r1.yzx * r0.zxy;
  r0.xyz = r0.yzx * r1.zxy + -r3.xyz;
  r0.w = v4.w * 2 + -1;
  r0.xyz = r0.xyz * r0.www;
  r1.x = dot(r0.xyz, r2.xyz);
  r1.y = dot(r0.xyz, r4.xyz);
  r1.z = dot(r0.xyz, r5.xyz);
  r0.x = dot(r1.xyz, r1.xyz);
  r0.x = rsqrt(r0.x);
  o6.xyz = r1.xyz * r0.xxx;
  return;
}