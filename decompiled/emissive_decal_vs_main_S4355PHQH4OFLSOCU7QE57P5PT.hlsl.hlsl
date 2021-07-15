// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:26:00 2021

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
  float3 specColorTint : packoffset(c11);
  float baseNormalHeight : packoffset(c11.w);
  float2 glossRange : packoffset(c12);
  float rowCount : packoffset(c12.z);
  float columnCount : packoffset(c12.w);
  float imageTime : packoffset(c13);
  float2 rotateUVs : packoffset(c13.y);
  float2 scrollUVs : packoffset(c14);
  float2 scaleUVs : packoffset(c14.z);
  float2 offsetUVs : packoffset(c15);
  float2 zoomUVs : packoffset(c15.z);
  float zoomRate : packoffset(c16);
  float layerDepth : packoffset(c16.y);
  bool clampU : packoffset(c16.z);
  bool clampV : packoffset(c16.w);
  float2 flickerSeed : packoffset(c17);
  float flickerSpeed : packoffset(c17.z);
  float2 flickerRange : packoffset(c18);
  float flickerPower : packoffset(c18.z);
  float hdrScale : packoffset(c18.w);
  float emissiveFalloffPower : packoffset(c19);
  float3 emissiveTint1 : packoffset(c19.y);
  bool relativeHDR : packoffset(c20);
  float uvMotionToggle : packoffset(c20.y);
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
  out float3 o6 : TEXCOORD3,
  out float3 o7 : OFFPOSITION0)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t4, 24
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t5, 64
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v3.xyz * float3(2.00195694,2.00195694,2.00195694) + float3(-1.00195694,-1.00195694,-1.00195694);
  r1.xyz = v4.xyz * float3(2.00195694,2.00195694,2.00195694) + float3(-1.00195694,-1.00195694,-1.00195694);
  r0.w = v4.w * 2 + -1;
  r2.xyz = r1.yzx * r0.zxy;
  r2.xyz = r0.yzx * r1.zxy + -r2.xyz;
  r2.xyz = r2.xyz * r0.www;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.w, v5.x, l(12), t4.xxxx
r0.w = modelInstanceBuffer[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.w, l(0), t5.xyzw
r3.x = modelInstanceBuffer[]..swiz;
r3.y = modelInstanceBuffer[]..swiz;
r3.z = modelInstanceBuffer[]..swiz;
r3.w = modelInstanceBuffer[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.w, l(16), t5.xyzw
r4.x = modelInstanceBuffer[]..swiz;
r4.y = modelInstanceBuffer[]..swiz;
r4.z = modelInstanceBuffer[]..swiz;
r4.w = modelInstanceBuffer[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r0.w, l(32), t5.xyzw
r5.x = modelInstanceBuffer[]..swiz;
r5.y = modelInstanceBuffer[]..swiz;
r5.z = modelInstanceBuffer[]..swiz;
r5.w = modelInstanceBuffer[]..swiz;
  r6.x = r3.w;
  r6.y = r4.w;
  r6.z = r5.w;
  r6.xyw = -eyeOffset.xyz + r6.xyz;
  r7.xyz = v0.xyz;
  r7.w = 1;
  r3.w = r6.x;
  r8.x = dot(r7.xyzw, r3.xyzw);
  r4.w = r6.y;
  r8.y = dot(r7.xyzw, r4.xyzw);
  r6.xyz = r5.xyz;
  r8.z = dot(r7.xyzw, r6.xyzw);
  r5.x = dot(r0.xyz, r3.xyz);
  r5.y = dot(r0.xyz, r4.xyz);
  r5.z = dot(r0.xyz, r6.xyz);
  r0.x = dot(r5.xyz, r5.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = r5.xyz * r0.xxx;
  r5.x = dot(r1.xyz, r3.xyz);
  r5.y = dot(r1.xyz, r4.xyz);
  r5.z = dot(r1.xyz, r6.xyz);
  r1.x = dot(r5.xyz, r5.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = r5.xyz * r1.xxx;
  r3.x = dot(r2.xyz, r3.xyz);
  r3.y = dot(r2.xyz, r4.xyz);
  r3.z = dot(r2.xyz, r6.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r3.xyzw = viewProjectionMatrix._m10_m11_m12_m13 * r8.yyyy;
  r3.xyzw = r8.xxxx * viewProjectionMatrix._m00_m01_m02_m03 + r3.xyzw;
  r3.xyzw = r8.zzzz * viewProjectionMatrix._m20_m21_m22_m23 + r3.xyzw;
  o0.xyzw = viewProjectionMatrix._m30_m31_m32_m33 + r3.xyzw;
  r3.xyz = log2(abs(v1.xyz));
  r3.xyz = float3(2.20000005,2.20000005,2.20000005) * r3.xyz;
  o1.xyz = exp2(r3.xyz);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.x, r0.w, l(12), t5.xxxx
r3.x = modelInstanceBuffer[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.y, r0.w, l(28), t5.xxxx
r3.y = modelInstanceBuffer[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.z, r0.w, l(44), t5.xxxx
r3.z = modelInstanceBuffer[]..swiz;
  r3.xyz = float3(0.100000001,0.100000001,0.100000001) * r3.xyz;
  o3.xyz = frac(r3.xyz);
  r0.w = cmp(0.5 < relativeHDR);
  if (r0.w != 0) {
    r0.w = rowCount * columnCount;
    r1.w = imageTime * r0.w;
    r2.w = gameTime.w * r1.w;
    r2.w = cmp(r2.w >= -r2.w);
    r2.w = r2.w ? r1.w : -r1.w;
    r3.x = 1 / r2.w;
    r3.x = gameTime.w * r3.x;
    r3.x = frac(r3.x);
    r2.w = r3.x * r2.w;
    r1.w = r2.w / r1.w;
    r0.w = r1.w * r0.w;
    r0.w = round(r0.w);
    r1.w = r0.w / columnCount;
    r2.w = columnCount * r0.w;
    r2.w = cmp(r2.w >= -r2.w);
    r2.w = r2.w ? columnCount : -columnCount;
    r3.x = 1 / r2.w;
    r0.w = r3.x * r0.w;
    r0.w = frac(r0.w);
    r0.w = r2.w * r0.w;
    r0.w = trunc(r0.w);
    r0.w = v2.x + r0.w;
    o2.x = r0.w / columnCount;
    r0.w = trunc(r1.w);
    r0.w = v2.y + r0.w;
    o2.y = r0.w / rowCount;
  } else {
    r0.w = dot(-r8.xyz, -r8.xyz);
    r0.w = rsqrt(r0.w);
    r3.xyz = -r8.xyz * r0.www;
    r4.x = dot(r3.xyz, r1.xyz);
    r4.y = dot(r3.xyz, r2.xyz);
    r0.w = dot(r3.xyz, r0.xyz);
    r1.w = cmp(0 < r0.w);
    r3.xy = -r4.xy / r0.ww;
    r3.xy = r1.ww ? r3.xy : 0;
    r3.zw = float2(-0.5,-0.5) + v2.xy;
    r0.w = 9.99999975e-06 + layerDepth;
    r3.xy = r3.xy * r0.ww;
    r3.xy = scaleUVs.xy * r3.xy;
    r3.xy = r3.zw * scaleUVs.xy + r3.xy;
    r3.xy = offsetUVs.xy * scaleUVs.xy + r3.xy;
    r0.w = rotateUVs.y * gameTime.w + 1;
    r0.w = rotateUVs.x * r0.w;
    r0.w = 0.0174532924 * r0.w;
    sincos(r0.w, r4.x, r5.x);
    r5.y = r5.x;
    r5.z = r4.x;
    r6.x = dot(r5.yz, r3.xy);
    r5.x = -r4.x;
    r6.y = dot(r5.xy, r3.xy);
    r3.xy = gameTime.ww * scrollUVs.xy;
    r3.xy = r3.xy * scaleUVs.xy + r6.xy;
    r0.w = gameTime.w * zoomRate;
    r0.w = cos(r0.w);
    r0.w = r0.w * 0.5 + 0.5;
    r0.w = 1 + -r0.w;
    r1.w = zoomUVs.y + -zoomUVs.x;
    r0.w = r0.w * r1.w + zoomUVs.x;
    r3.xy = r3.xy / r0.ww;
    r3.xy = float2(0.5,0.5) + r3.xy;
    r3.zw = saturate(r3.xy);
    o2.xy = clampU ? r3.zw : r3.xy;
  }
  p1.x = v1.w;
  o4.xyz = r0.xyz;
  o5.xyz = r1.xyz;
  o6.xyz = r2.xyz;
  o7.xyz = r8.xyz;
  return;
}