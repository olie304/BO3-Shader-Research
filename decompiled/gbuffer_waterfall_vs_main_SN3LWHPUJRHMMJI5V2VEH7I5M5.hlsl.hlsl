// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:31:56 2021

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
  float2 wind1Parms : packoffset(c15);
  float2 wind2Parms : packoffset(c15.z);
  float2 wind3Parms : packoffset(c16);
  float3 backlightScatterColor : packoffset(c17);
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

StructuredBuffer<modelInstanceBuffer> modelInstanceBuffer : register(t4);
StructuredBuffer<boneMatrixBuffer> boneMatrixBuffer : register(t5);
StructuredBuffer<boneMatrixBufferPrevFrame> boneMatrixBufferPrevFrame : register(t8);


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
// unknown dcl_: dcl_resource_structured t4, 24
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t5, 64
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t8, 64
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = float2(1,1) + -v2.xy;
  r1.xyzw = wind1Parms.xyzw * r0.xyxy;
  r0.xy = wind3Parms.xy * r0.xy;
  r0.xy = float2(20.2683392,20.2683392) * r0.xy;
  r0.x = r0.x + r0.y;
  r1.xyzw = float4(3.63189912,3.63189912,8.37758064,8.37758064) * r1.xyzw;
  r0.yz = r1.xz + r1.yw;
  r0.w = gameTime.w + flagParams.y;
  r0.w = flagParams.x * r0.w;
  r0.yz = r0.ww * float2(5.6548667,9.42477798) + r0.yz;
  r0.x = r0.w * 7.53982306 + r0.x;
  sincos(r0.x, r0.x, r1.x);
  sincos(r0.yz, r2.xy, r3.xy);
  r0.yz = float2(7.5,3) * r2.xy;
  r0.y = r0.y + r0.z;
  r0.x = r0.x * 1.70000005 + r0.y;
  r0.x = v1.y * r0.x;
  r0.yzw = v3.xyz * float3(2.00195694,2.00195694,2.00195694) + float3(-1.00195694,-1.00195694,-1.00195694);
  r2.xyz = r0.xxx * r0.yzw + v0.xyz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r1.yz, v5.x, l(8), t4.xxyx
r1.y = modelInstanceBuffer[]..swiz;
r1.z = modelInstanceBuffer[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r1.z, l(0), t5.xyzw
r4.x = modelInstanceBuffer[]..swiz;
r4.y = modelInstanceBuffer[]..swiz;
r4.z = modelInstanceBuffer[]..swiz;
r4.w = modelInstanceBuffer[]..swiz;
  r5.x = r4.w;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyzw, r1.z, l(16), t5.xyzw
r6.x = modelInstanceBuffer[]..swiz;
r6.y = modelInstanceBuffer[]..swiz;
r6.z = modelInstanceBuffer[]..swiz;
r6.w = modelInstanceBuffer[]..swiz;
  r5.y = r6.w;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r1.z, l(32), t5.xyzw
r7.x = modelInstanceBuffer[]..swiz;
r7.y = modelInstanceBuffer[]..swiz;
r7.z = modelInstanceBuffer[]..swiz;
r7.w = modelInstanceBuffer[]..swiz;
  r0.x = (int)r1.y & 0x0fffffff;
  r5.z = r7.w;
  r1.yzw = -eyeOffset.xyz + r5.xyz;
  r6.w = r1.z;
  r2.w = 1;
  r5.y = dot(r2.xyzw, r6.xyzw);
  r8.xyzw = viewProjectionMatrix._m10_m11_m12_m13 * r5.yyyy;
  r4.w = r1.y;
  r7.w = r1.w;
  r5.x = dot(r2.xyzw, r4.xyzw);
  r8.xyzw = r5.xxxx * viewProjectionMatrix._m00_m01_m02_m03 + r8.xyzw;
  r5.z = dot(r2.xyzw, r7.xyzw);
  r8.xyzw = r5.zzzz * viewProjectionMatrix._m20_m21_m22_m23 + r8.xyzw;
  o0.xyzw = viewProjectionMatrix._m30_m31_m32_m33 + r8.xyzw;
  o1.xyzw = v1.xyzw;
  r1.yz = float2(27.2392426,25.1327419) * wind1Parms.xz;
  r1.yz = r1.yz * r3.xy;
  r3.xy = wind1Parms.yw * r3.xy;
  r3.xy = float2(27.2392426,25.1327419) * r3.xy;
  r1.w = r3.x + r3.y;
  r1.y = r1.y + r1.z;
  r1.z = 34.4561768 * wind3Parms.x;
  r1.y = r1.z * r1.x + r1.y;
  r1.x = wind3Parms.y * r1.x;
  r1.x = r1.x * 34.4561768 + r1.w;
  r1.xy = v1.yy * r1.xy;
  r1.xy = float2(0.0250000004,0.0250000004) * r1.xy;
  r1.z = v4.w * 2 + -1;
  r3.xyz = v4.xyz * float3(2.00195694,2.00195694,2.00195694) + float3(-1.00195694,-1.00195694,-1.00195694);
  r8.xyz = r3.yzx * r0.wyz;
  r8.xyz = r0.zwy * r3.zxy + -r8.xyz;
  r8.xyz = r8.xyz * r1.zzz;
  r1.w = dot(r8.xyz, r8.xyz);
  r1.w = rsqrt(r1.w);
  r8.xyz = r8.xyz * r1.www;
  r8.xyz = r8.xyz * r1.xxx;
  r1.xyw = r1.yyy * r3.xyz + r8.xyz;
  r0.yzw = r1.xyw + r0.yzw;
  r1.x = dot(r0.yzw, r0.yzw);
  r1.x = rsqrt(r1.x);
  r0.yzw = r1.xxx * r0.yzw;
  r0.yzw = r0.yzw * float3(511,511,511) + float3(512,512,512);
  r0.yzw = r0.yzw * float3(0.00195694715,0.00195694715,0.00195694715) + float3(-1.00195694,-1.00195694,-1.00195694);
  r1.xyw = r0.wyz * r3.yzx;
  r1.xyw = r0.zwy * r3.zxy + -r1.xyw;
  r1.xyz = r1.xyw * r1.zzz;
  r8.x = dot(r1.xyz, r4.xyz);
  r8.y = dot(r1.xyz, r6.xyz);
  r8.z = dot(r1.xyz, r7.xyz);
  r1.x = dot(r8.xyz, r8.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = r8.xyz * r1.xxx;
  r1.w = dot(-r5.xyz, -r5.xyz);
  r1.w = rsqrt(r1.w);
  r5.xyz = -r5.xyz * r1.www;
  r8.y = dot(r5.xyz, r1.xyz);
  o5.xyz = r1.xyz;
  r1.x = dot(r0.yzw, r4.xyz);
  r4.x = dot(r3.xyz, r4.xyz);
  r1.y = dot(r0.yzw, r6.xyz);
  r4.y = dot(r3.xyz, r6.xyz);
  r4.z = dot(r3.xyz, r7.xyz);
  r1.z = dot(r0.yzw, r7.xyz);
  r0.y = dot(r1.xyz, r1.xyz);
  r0.y = rsqrt(r0.y);
  r0.yzw = r1.xyz * r0.yyy;
  r1.x = dot(r5.xyz, r0.yzw);
  o3.xyz = r0.yzw;
  r0.y = dot(r4.xyz, r4.xyz);
  r0.y = rsqrt(r0.y);
  r0.yzw = r4.xyz * r0.yyy;
  r8.x = dot(r5.xyz, r0.yzw);
  o4.xyz = r0.yzw;
  r0.yz = -r8.xy / r1.xx;
  r0.w = cmp(0 < r1.x);
  r0.yz = r0.ww ? r0.yz : 0;
  r0.w = 9.99999975e-06 + layerDepth;
  r0.yz = r0.yz * r0.ww;
  r0.yz = scaleUVs.xy * r0.yz;
  r1.xy = float2(-0.5,-0.5) + v2.xy;
  r0.yz = r1.xy * scaleUVs.xy + r0.yz;
  r0.yz = offsetUVs.xy * scaleUVs.xy + r0.yz;
  r0.w = rotateUVs.y * gameTime.w + 1;
  r0.w = rotateUVs.x * r0.w;
  r0.w = 0.0174532924 * r0.w;
  sincos(r0.w, r1.x, r3.x);
  r4.z = r1.x;
  r4.y = r3.x;
  r4.x = -r1.x;
  r1.y = dot(r4.xy, r0.yz);
  r1.x = dot(r4.yz, r0.yz);
  r0.yz = gameTime.ww * scrollUVs.xy;
  r0.yz = r0.yz * scaleUVs.xy + r1.xy;
  r0.w = gameTime.w * zoomRate;
  r0.w = cos(r0.w);
  r0.w = r0.w * 0.5 + 0.5;
  r0.w = 1 + -r0.w;
  r1.x = zoomUVs.y + -zoomUVs.x;
  r0.w = r0.w * r1.x + zoomUVs.x;
  r0.yz = r0.yz / r0.ww;
  r0.yz = float2(0.5,0.5) + r0.yz;
  r1.xy = saturate(r0.yz);
  o2.xy = clampU ? r1.xy : r0.yz;
  r0.y = cmp((int)r0.x != 0);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.z, v5.x, l(0), t4.xxxx
r0.z = modelInstanceBuffer[]..swiz;
  r0.z = cmp((int)r0.z == 0);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.w, v5.x, l(12), t4.xxxx
r0.w = modelInstanceBuffer[]..swiz;
  r1.x = cmp((int)r0.w != 0);
  r0.z = r0.z ? r1.x : 0;
  r0.y = r0.y ? r0.z : 0;
  r0.x = r0.y ? r0.x : r0.w;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, r0.x, l(16), t8.xwyz
r1.x = modelInstanceBuffer[]..swiz;
r1.y = modelInstanceBuffer[]..swiz;
r1.z = modelInstanceBuffer[]..swiz;
r1.w = modelInstanceBuffer[]..swiz;
  r3.xyz = r1.xzw;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.x, l(0), t8.xyzw
r4.x = modelInstanceBuffer[]..swiz;
r4.y = modelInstanceBuffer[]..swiz;
r4.z = modelInstanceBuffer[]..swiz;
r4.w = modelInstanceBuffer[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.xyzw, r0.x, l(32), t8.xyzw
r0.x = modelInstanceBuffer[]..swiz;
r0.y = modelInstanceBuffer[]..swiz;
r0.z = modelInstanceBuffer[]..swiz;
r0.w = modelInstanceBuffer[]..swiz;
  r1.x = r4.w;
  r1.z = r0.w;
  r1.xyz = -motionVectorConstants.prevFrameEyeOffset.xyz + r1.xyz;
  r3.w = r1.y;
  r1.y = dot(r2.xyzw, r3.xyzw);
  r3.xyzw = motionVectorConstants.prevFrameOffToClpMatrixFull._m10_m11_m12_m13 * r1.yyyy;
  r4.w = r1.x;
  r0.w = r1.z;
  r0.x = dot(r2.xyzw, r0.xyzw);
  r0.y = dot(r2.xyzw, r4.xyzw);
  r1.xyzw = r0.yyyy * motionVectorConstants.prevFrameOffToClpMatrixFull._m00_m01_m02_m03 + r3.xyzw;
  r0.xyzw = r0.xxxx * motionVectorConstants.prevFrameOffToClpMatrixFull._m20_m21_m22_m23 + r1.xyzw;
  o6.xyzw = motionVectorConstants.prevFrameOffToClpMatrixFull._m30_m31_m32_m33 + r0.xyzw;
  return;
}