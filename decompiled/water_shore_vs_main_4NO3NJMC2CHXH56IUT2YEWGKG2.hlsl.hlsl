// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:44:15 2021

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
  float4 waveAmplitude : packoffset(c39);
  float4 waveSteepness : packoffset(c40);
  float4 waveFrequency : packoffset(c41);
  bool useFoam : packoffset(c42);
  bool useVertexWaves : packoffset(c42.y);
  bool scaleNormalsWithFlow : packoffset(c42.z);
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
  out float o1 : COLOR1,
  out float2 p1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float3 o4 : TEXCOORD3,
  out float3 o5 : OFFPOSITION0,
  out float2 o6 : TEXCOORD6,
  out float p6 : TEXCOORD9,
  out float4 o7 : TEXCOORD7,
  out float4 o8 : TEXCOORD8,
  out float4 o9 : TEXCOORD10,
  out float4 o10 : TEXCOORD11)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t4, 24
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t5, 64
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  o6.xy = v2.xy * shoreUVControl.xy + shoreUVControl.zw;
  r0.xyz = gameTime.www * normalUVScrollSpeed.xyz;
  r0.xw = normalUVLo.zw * r0.xx;
  o9.xy = v2.xy * normalUVLo.xy + r0.xw;
  r0.xy = normalUVHi0.zw * r0.yy;
  o10.xy = v2.xy * normalUVHi0.xy + r0.xy;
  r0.xy = normalUVHi1.zw * r0.zz;
  o10.zw = v2.xy * normalUVHi1.xy + r0.xy;
  r0.xyzw = gameTime.wwww * foamMaskScroll01.xyzw;
  o7.xyzw = v2.xyxy * foamMaskScale01.xyzw + r0.xyzw;
  r0.xyzw = gameTime.wwww * foamMaskScroll23.xyzw;
  o8.xyzw = v2.xyxy * foamMaskScale23.xyzw + r0.xyzw;
  if (useFoam != 0) {
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
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyz, r0.w, l(0), t5.xyzx
  r3.x = modelInstanceBuffer[]..swiz;
  r3.y = modelInstanceBuffer[]..swiz;
  r3.z = modelInstanceBuffer[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyz, r0.w, l(16), t5.xyzx
  r4.x = modelInstanceBuffer[]..swiz;
  r4.y = modelInstanceBuffer[]..swiz;
  r4.z = modelInstanceBuffer[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyz, r0.w, l(32), t5.xyzx
  r5.x = modelInstanceBuffer[]..swiz;
  r5.y = modelInstanceBuffer[]..swiz;
  r5.z = modelInstanceBuffer[]..swiz;
    r6.x = dot(r0.xyz, r3.xyz);
    r6.y = dot(r0.xyz, r4.xyz);
    r6.z = dot(r0.xyz, r5.xyz);
    r0.x = dot(r6.xyz, r6.xyz);
    r0.x = rsqrt(r0.x);
    r0.xyz = r6.xyz * r0.xxx;
    r6.x = dot(r1.xyz, r3.xyz);
    r6.y = dot(r1.xyz, r4.xyz);
    r6.z = dot(r1.xyz, r5.xyz);
    r0.w = dot(r6.xyz, r6.xyz);
    r0.w = rsqrt(r0.w);
    r1.xyz = r6.xyz * r0.www;
    r3.x = dot(r2.xyz, r3.xyz);
    r3.y = dot(r2.xyz, r4.xyz);
    r3.z = dot(r2.xyz, r5.xyz);
    r0.w = dot(r3.xyz, r3.xyz);
    r0.w = rsqrt(r0.w);
    r2.xyz = r3.xyz * r0.www;
    r3.xyz = waveAmplitude.xyz * v1.xxx;
    r4.x = dot(v2.xy, wave0K.xy);
    r4.y = dot(v2.xy, wave1K.xy);
    r4.z = dot(v2.xy, wave2K.xy);
    r4.xyz = -waveFrequency.xyz * gameTime.www + r4.xyz;
    r4.yzw = cos(r4.xyz);
    r0.w = sin(r4.x);
    r1.w = dot(r3.xyz, r4.yzw);
    r0.xyz = r0.xyz * r1.www + v0.xyz;
    r3.xw = -wave0K.zw * r3.xx;
    r3.xw = r3.xw * r0.ww;
    r4.xy = -wave1K.zw * r3.yy;
    r4.xy = r4.xy * r0.ww;
    r4.xy = waveSteepness.yy * r4.xy;
    r3.xy = waveSteepness.xx * r3.xw + r4.xy;
    r3.zw = -wave2K.zw * r3.zz;
    r3.zw = r3.zw * r0.ww;
    r3.xy = waveSteepness.zz * r3.zw + r3.xy;
    r2.xyz = r3.yyy * r2.xyz;
    r1.xyz = r3.xxx * r1.xyz + r2.xyz;
    r0.xyz = r1.xyz + r0.xyz;
    r1.x = foamWaveIncrease * -r1.w;
    p6.x = min(0, r1.x);
  } else {
    r0.xyz = v0.xyz;
    p6.x = 0;
  }
  r1.xyz = v3.xyz * float3(2.00195694,2.00195694,2.00195694) + float3(-1.00195694,-1.00195694,-1.00195694);
  r2.xyz = v4.xyz * float3(2.00195694,2.00195694,2.00195694) + float3(-1.00195694,-1.00195694,-1.00195694);
  r1.w = v4.w * 2 + -1;
  r3.xyz = r2.yzx * r1.zxy;
  r3.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r3.xyz = r3.xyz * r1.www;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r1.w, v5.x, l(12), t4.xxxx
r1.w = modelInstanceBuffer[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r1.w, l(0), t5.xyzw
r4.x = modelInstanceBuffer[]..swiz;
r4.y = modelInstanceBuffer[]..swiz;
r4.z = modelInstanceBuffer[]..swiz;
r4.w = modelInstanceBuffer[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r1.w, l(16), t5.xyzw
r5.x = modelInstanceBuffer[]..swiz;
r5.y = modelInstanceBuffer[]..swiz;
r5.z = modelInstanceBuffer[]..swiz;
r5.w = modelInstanceBuffer[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyzw, r1.w, l(32), t5.xyzw
r6.x = modelInstanceBuffer[]..swiz;
r6.y = modelInstanceBuffer[]..swiz;
r6.z = modelInstanceBuffer[]..swiz;
r6.w = modelInstanceBuffer[]..swiz;
  r7.x = r4.w;
  r7.y = r5.w;
  r7.z = r6.w;
  r7.xyw = -eyeOffset.xyz + r7.xyz;
  r0.w = 1;
  r4.w = r7.x;
  r8.x = dot(r0.xyzw, r4.xyzw);
  r5.w = r7.y;
  r8.y = dot(r0.xyzw, r5.xyzw);
  r7.xyz = r6.xyz;
  r8.z = dot(r0.xyzw, r7.xyzw);
  r0.x = dot(r1.xyz, r4.xyz);
  r0.y = dot(r1.xyz, r5.xyz);
  r0.z = dot(r1.xyz, r7.xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r0.xyz * r0.www;
  r0.x = dot(r2.xyz, r4.xyz);
  r0.y = dot(r2.xyz, r5.xyz);
  r0.z = dot(r2.xyz, r7.xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o3.xyz = r0.xyz * r0.www;
  r0.x = dot(r3.xyz, r4.xyz);
  r0.y = dot(r3.xyz, r5.xyz);
  r0.z = dot(r3.xyz, r7.xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o4.xyz = r0.xyz * r0.www;
  r0.xyzw = viewProjectionMatrix._m10_m11_m12_m13 * r8.yyyy;
  r0.xyzw = r8.xxxx * viewProjectionMatrix._m00_m01_m02_m03 + r0.xyzw;
  r0.xyzw = r8.zzzz * viewProjectionMatrix._m20_m21_m22_m23 + r0.xyzw;
  o0.xyzw = viewProjectionMatrix._m30_m31_m32_m33 + r0.xyzw;
  o1.x = v1.w;
  p1.xy = v2.xy;
  o5.xyz = r8.xyz;
  return;
}