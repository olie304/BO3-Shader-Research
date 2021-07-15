// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:44:20 2021

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
  float2 normalMapScale : packoffset(c11.z);
  float4 specularLobeRoughnessControl : packoffset(c12);
  float2 lobeWeighting : packoffset(c13);
  float4 controlVar0 : packoffset(c14);
  float4 controlVar1 : packoffset(c15);
  float4 shoreUVControl : packoffset(c16);
  float reflectionGloss : packoffset(c17);
  float probeReflectionLevel : packoffset(c17.y);
  float2 horizonControl : packoffset(c17.z);
  float SSRLevel : packoffset(c18);
  float4 normalScaleLoHi : packoffset(c19);
  float3 normalUVScrollSpeed : packoffset(c20);
  float4 normalUVLo : packoffset(c21);
  float4 normalUVHi0 : packoffset(c22);
  float4 normalUVHi1 : packoffset(c23);
  float3 foamColor : packoffset(c24);
  float3 waterColorShallow : packoffset(c25);
  float3 waterColorDeep : packoffset(c26);
  float3 waterColorShallowScatter : packoffset(c27);
  float3 waterColorDeepScatter : packoffset(c28);
  float3 horizonColor : packoffset(c29);
  float4 foamMaskScroll01 : packoffset(c30);
  float4 foamMaskScroll23 : packoffset(c31);
  float4 foamMaskScale01 : packoffset(c32);
  float4 foamMaskScale23 : packoffset(c33);
  float foamScale : packoffset(c34);
  float3 foamSpacing : packoffset(c34.y);
  float foamColorScale : packoffset(c35);
  float foamWaveIncrease : packoffset(c35.y);
  float4 wave0K : packoffset(c36);
  float4 wave1K : packoffset(c37);
  float4 wave2K : packoffset(c38);
  float4 wave3K : packoffset(c39);
  float4 waveAmplitude : packoffset(c40);
  float4 waveSteepness : packoffset(c41);
  float4 waveFrequency : packoffset(c42);
  bool useFoam : packoffset(c43);
  bool useVertexWaves : packoffset(c43.y);
  bool scaleNormalsWithFlow : packoffset(c43.z);
  bool useSSR : packoffset(c43.w);
  float maxRayDepth : packoffset(c44);
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
  out float4 o0 : SV_POSITION0)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t4, 24
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t5, 64
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  if (useFoam != 0) {
    r0.xyzw = waveAmplitude.xyzw * v1.xxxx;
    r1.x = dot(v0.xy, wave0K.xy);
    r1.y = dot(v0.xy, wave1K.xy);
    r1.z = dot(v0.xy, wave2K.xy);
    r1.w = dot(v0.xy, wave3K.xy);
    r1.xyzw = -waveFrequency.xyzw * gameTime.wwww + r1.xyzw;
    r2.xyzw = cos(r1.xyzw);
    r1.x = sin(r1.x);
    r1.y = dot(r0.xyzw, r2.xyzw);
    r2.z = v0.z + r1.y;
    r1.yz = -wave0K.zw * r0.xx;
    r1.yz = r1.yz * r1.xx;
    r1.yz = waveSteepness.xx * r1.yz + v0.xy;
    r0.xy = -wave1K.zw * r0.yy;
    r0.xy = r0.xy * r1.xx;
    r0.xy = waveSteepness.yy * r0.xy + r1.yz;
    r1.yz = -wave2K.zw * r0.zz;
    r1.yz = r1.yz * r1.xx;
    r0.xy = waveSteepness.zz * r1.yz + r0.xy;
    r0.zw = -wave3K.zw * r0.ww;
    r0.zw = r0.zw * r1.xx;
    r2.xy = waveSteepness.ww * r0.zw + r0.xy;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.x, v5.x, l(12), t4.xxxx
  r0.x = modelInstanceBuffer[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, r0.x, l(0), t5.xyzw
  r1.x = modelInstanceBuffer[]..swiz;
  r1.y = modelInstanceBuffer[]..swiz;
  r1.z = modelInstanceBuffer[]..swiz;
  r1.w = modelInstanceBuffer[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.x, l(16), t5.xyzw
  r3.x = modelInstanceBuffer[]..swiz;
  r3.y = modelInstanceBuffer[]..swiz;
  r3.z = modelInstanceBuffer[]..swiz;
  r3.w = modelInstanceBuffer[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.xyzw, r0.x, l(32), t5.xyzw
  r0.x = modelInstanceBuffer[]..swiz;
  r0.y = modelInstanceBuffer[]..swiz;
  r0.z = modelInstanceBuffer[]..swiz;
  r0.w = modelInstanceBuffer[]..swiz;
    r4.x = r1.w;
    r4.y = r3.w;
    r4.z = r0.w;
    r4.xyw = -eyeOffset.xyz + r4.xyz;
    r2.w = 1;
    r1.w = r4.x;
    r0.w = dot(r2.xyzw, r1.xyzw);
    r3.w = r4.y;
    r1.x = dot(r2.xyzw, r3.xyzw);
    r4.xyz = r0.xyz;
    r0.x = dot(r2.xyzw, r4.xyzw);
    r1.xyzw = viewProjectionMatrix._m10_m11_m12_m13 * r1.xxxx;
    r1.xyzw = r0.wwww * viewProjectionMatrix._m00_m01_m02_m03 + r1.xyzw;
    r0.xyzw = r0.xxxx * viewProjectionMatrix._m20_m21_m22_m23 + r1.xyzw;
    o0.xyzw = viewProjectionMatrix._m30_m31_m32_m33 + r0.xyzw;
  } else {
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.x, v5.x, l(12), t4.xxxx
  r0.x = modelInstanceBuffer[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, r0.x, l(0), t5.xyzw
  r1.x = modelInstanceBuffer[]..swiz;
  r1.y = modelInstanceBuffer[]..swiz;
  r1.z = modelInstanceBuffer[]..swiz;
  r1.w = modelInstanceBuffer[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r0.x, l(16), t5.xyzw
  r2.x = modelInstanceBuffer[]..swiz;
  r2.y = modelInstanceBuffer[]..swiz;
  r2.z = modelInstanceBuffer[]..swiz;
  r2.w = modelInstanceBuffer[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.xyzw, r0.x, l(32), t5.xyzw
  r0.x = modelInstanceBuffer[]..swiz;
  r0.y = modelInstanceBuffer[]..swiz;
  r0.z = modelInstanceBuffer[]..swiz;
  r0.w = modelInstanceBuffer[]..swiz;
    r3.x = r1.w;
    r3.y = r2.w;
    r3.z = r0.w;
    r3.xyw = -eyeOffset.xyz + r3.xyz;
    r4.xyz = v0.xyz;
    r4.w = 1;
    r1.w = r3.x;
    r0.w = dot(r4.xyzw, r1.xyzw);
    r2.w = r3.y;
    r1.x = dot(r4.xyzw, r2.xyzw);
    r3.xyz = r0.xyz;
    r0.x = dot(r4.xyzw, r3.xyzw);
    r1.xyzw = viewProjectionMatrix._m10_m11_m12_m13 * r1.xxxx;
    r1.xyzw = r0.wwww * viewProjectionMatrix._m00_m01_m02_m03 + r1.xyzw;
    r0.xyzw = r0.xxxx * viewProjectionMatrix._m20_m21_m22_m23 + r1.xyzw;
    o0.xyzw = viewProjectionMatrix._m30_m31_m32_m33 + r0.xyzw;
  }
  return;
}