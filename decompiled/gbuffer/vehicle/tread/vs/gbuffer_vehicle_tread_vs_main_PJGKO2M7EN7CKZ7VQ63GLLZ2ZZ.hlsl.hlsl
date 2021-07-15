// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:31:50 2021

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

cbuffer MotionVectorParams : register(b7)
{

  struct
  {
    row_major float4x4 prevFrameOffToClpMatrixFull;
    row_major float4x4 prevFrameOffToClpMatrixPartial;
    row_major float4x4 curFrameCamToOffMatrix;
    float3 prevFrameEyeOffset;
    float motionStrength;
    float3 eyeOffsetFrameDelta;
    float _padding_23;
    float2 curFrameHalfNearPlaneSize;
    float2 _padding_26;
  } motionVectorConstants : packoffset(c0);

}

SamplerState colorSampler_s : register(s1);
StructuredBuffer<shaderConstantSetBuffer> shaderConstantSetBuffer : register(t0);
StructuredBuffer<modelInstanceBuffer> modelInstanceBuffer : register(t4);
StructuredBuffer<boneMatrixBuffer> boneMatrixBuffer : register(t5);
Texture2D<float4> treadHeightMap : register(t6);


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
  out float4 o2 : TEXCOORD0,
  out float4 o3 : TEXCOORD1,
  out float4 o4 : TEXCOORD2,
  out float4 o5 : TEXCOORD3,
  out float4 o6 : TEXCOORD7)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t0, 384
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t4, 24
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t5, 64
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.x, v5.x, l(4), t4.xxxx
r0.x = colorSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.xy, r0.x, l(16), t0.xyxx
r0.x = colorSampler[]..swiz;
r0.y = colorSampler[]..swiz;
  r0.z = cmp(reverseTread != 0.000000);
  r0.x = r0.z ? r0.y : r0.x;
  r0.xy = r0.xx * scrollUVs.xy + v2.xy;
  r0.z = treadHeightMap.SampleLevel(colorSampler_s, r0.xy, 0).x;
  r0.z = treadDepth * r0.z;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.w, v5.x, l(12), t4.xxxx
r0.w = colorSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, r0.w, l(0), t5.xyzw
r1.x = colorSampler[]..swiz;
r1.y = colorSampler[]..swiz;
r1.z = colorSampler[]..swiz;
r1.w = colorSampler[]..swiz;
  r2.x = r1.w;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.w, l(16), t5.xyzw
r3.x = colorSampler[]..swiz;
r3.y = colorSampler[]..swiz;
r3.z = colorSampler[]..swiz;
r3.w = colorSampler[]..swiz;
  r2.y = r3.w;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.w, l(32), t5.xyzw
r4.x = colorSampler[]..swiz;
r4.y = colorSampler[]..swiz;
r4.z = colorSampler[]..swiz;
r4.w = colorSampler[]..swiz;
  r2.z = r4.w;
  r2.xyz = -eyeOffset.xyz + r2.xyz;
  r1.w = r2.x;
  r5.xyz = v0.xyz;
  r5.w = 1;
  r6.x = dot(r5.xyzw, r1.xyzw);
  r3.w = r2.y;
  r4.w = r2.z;
  r6.y = dot(r5.xyzw, r3.xyzw);
  r6.z = dot(r5.xyzw, r4.xyzw);
  r2.xyz = v3.xyz * float3(2.00195694,2.00195694,2.00195694) + float3(-1.00195694,-1.00195694,-1.00195694);
  r1.x = dot(r2.xyz, r1.xyz);
  r1.y = dot(r2.xyz, r3.xyz);
  r1.z = dot(r2.xyz, r4.xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  r1.xyz = r1.xyz * r0.zzz + r6.xyz;
  r3.xyzw = viewProjectionMatrix._m10_m11_m12_m13 * r1.yyyy;
  r3.xyzw = r1.xxxx * viewProjectionMatrix._m00_m01_m02_m03 + r3.xyzw;
  r3.xyzw = r1.zzzz * viewProjectionMatrix._m20_m21_m22_m23 + r3.xyzw;
  o0.xyzw = viewProjectionMatrix._m30_m31_m32_m33 + r3.xyzw;
  r3.xyz = log2(abs(v1.xyz));
  r3.xyz = float3(2.20000005,2.20000005,2.20000005) * r3.xyz;
  o1.xyz = exp2(r3.xyz);
  p1.x = v1.w;
  o2.xy = r0.xy;
  treadHeightMap.GetDimensions(0, uiDest.x, uiDest.y, uiDest.z);
  r3.xy = uiDest.xy;
  r3.xy = (uint2)r3.xy;
  r3.xy = float2(1,1) / r3.xy;
  r4.xyzw = r3.xyxy * float4(0,-1,0,1) + r0.xyxy;
  r0.z = treadHeightMap.SampleLevel(colorSampler_s, r4.zw, 0).x;
  r1.w = treadHeightMap.SampleLevel(colorSampler_s, r4.xy, 0).x;
  r4.xyzw = r3.xyxy * float4(-1,0,-1,1) + r0.xyxy;
  r2.w = treadHeightMap.SampleLevel(colorSampler_s, r4.zw, 0).x;
  r3.z = treadHeightMap.SampleLevel(colorSampler_s, r4.xy, 0).x;
  r0.z = abs(r0.z) * 2 + abs(r2.w);
  r4.xy = r3.xy + r0.xy;
  r3.w = treadHeightMap.SampleLevel(colorSampler_s, r4.xy, 0).x;
  r0.z = abs(r3.w) + r0.z;
  r4.xy = -r3.xy + r0.xy;
  r5.xyzw = r3.xyxy * float4(1,-1,1,0) + r0.xyxy;
  r0.x = treadHeightMap.SampleLevel(colorSampler_s, r4.xy, 0).x;
  r0.y = r0.z + -abs(r0.x);
  r0.y = -abs(r1.w) * 2 + r0.y;
  r0.z = treadHeightMap.SampleLevel(colorSampler_s, r5.xy, 0).x;
  r1.w = treadHeightMap.SampleLevel(colorSampler_s, r5.zw, 0).x;
  r1.w = abs(r1.w) * 2 + abs(r0.z);
  r0.y = r0.y + -abs(r0.z);
  r4.y = -r0.y;
  r0.y = r1.w + abs(r3.w);
  r0.x = r0.y + -abs(r0.x);
  r0.x = -abs(r3.z) * 2 + r0.x;
  r0.x = r0.x + -abs(r2.w);
  r4.x = -r0.x;
  r0.x = max(9.99999975e-05, treadDepth);
  r4.z = 1 / r0.x;
  r0.x = dot(r4.xyz, r4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = r4.xyz * r0.xxx;
  r3.xyz = v4.xyz * float3(2.00195694,2.00195694,2.00195694) + float3(-1.00195694,-1.00195694,-1.00195694);
  r4.xyz = r3.yzx * r2.zxy;
  r4.xyz = r2.yzx * r3.zxy + -r4.xyz;
  r1.w = v4.w * 2 + -1;
  r4.xyz = r4.xyz * r1.www;
  r4.xyz = r4.xyz * r0.yyy;
  r3.xyz = r0.xxx * r3.xyz + r4.xyz;
  r0.xyz = r0.zzz * r2.xyz + r3.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyz, r0.w, l(0), t5.xyzx
r2.x = colorSampler[]..swiz;
r2.y = colorSampler[]..swiz;
r2.z = colorSampler[]..swiz;
  r3.x = dot(r0.xyz, r2.xyz);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyz, r0.w, l(16), t5.xyzx
r4.x = colorSampler[]..swiz;
r4.y = colorSampler[]..swiz;
r4.z = colorSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyz, r0.w, l(32), t5.xyzx
r5.x = colorSampler[]..swiz;
r5.y = colorSampler[]..swiz;
r5.z = colorSampler[]..swiz;
  r3.y = dot(r0.xyz, r4.xyz);
  r3.z = dot(r0.xyz, r5.xyz);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  o3.xyz = r3.xyz * r0.www;
  r0.w = cmp(0.800000012 < r0.x);
  r1.w = cmp(r0.x < -0.800000012);
  r0.w = (int)r0.w | (int)r1.w;
  r3.xyz = r0.www ? float3(1,0,0) : float3(0,0,1);
  r6.xyz = r3.xyz * r0.zxy;
  r3.xyz = r0.yzx * r3.yzx + -r6.xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r6.x = dot(r3.xyz, r2.xyz);
  r6.y = dot(r3.xyz, r4.xyz);
  r6.z = dot(r3.xyz, r5.xyz);
  r0.w = dot(r6.xyz, r6.xyz);
  r0.w = rsqrt(r0.w);
  o4.xyz = r6.xyz * r0.www;
  r6.xyz = r3.yzx * r0.zxy;
  r0.xyz = r0.yzx * r3.zxy + -r6.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r2.x = dot(r0.xyz, r2.xyz);
  r2.y = dot(r0.xyz, r4.xyz);
  r2.z = dot(r0.xyz, r5.xyz);
  r0.x = dot(r2.xyz, r2.xyz);
  r0.x = rsqrt(r0.x);
  o5.xyz = r2.xyz * r0.xxx;
  r0.xyz = -motionVectorConstants.prevFrameEyeOffset.xyz + eyeOffset.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyzw = motionVectorConstants.prevFrameOffToClpMatrixFull._m10_m11_m12_m13 * r0.yyyy;
  r1.xyzw = r0.xxxx * motionVectorConstants.prevFrameOffToClpMatrixFull._m00_m01_m02_m03 + r1.xyzw;
  r0.xyzw = r0.zzzz * motionVectorConstants.prevFrameOffToClpMatrixFull._m20_m21_m22_m23 + r1.xyzw;
  o6.xyzw = motionVectorConstants.prevFrameOffToClpMatrixFull._m30_m31_m32_m33 + r0.xyzw;
  return;
}