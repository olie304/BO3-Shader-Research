// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:29:50 2021

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
  float vertPush : packoffset(c11.z);
  float scriptPush : packoffset(c11.w);
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

StructuredBuffer<shaderConstantSetBuffer> shaderConstantSetBuffer : register(t0);
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
  float4 v5 : BLENDWEIGHT0,
  uint4 v6 : BLENDINDICES0,
  uint v7 : TEXCOORD15,
  out float4 o0 : SV_POSITION0,
  out float o1 : COLOR1,
  out float2 p1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD7)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t0, 384
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t4, 24
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t5, 64
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t8, 64
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.xyzw, v7.x, l(0), t4.xyzw
r0.x = shaderConstantSetBuffer[]..swiz;
r0.y = shaderConstantSetBuffer[]..swiz;
r0.z = shaderConstantSetBuffer[]..swiz;
r0.w = shaderConstantSetBuffer[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.y, r0.y, l(48), t0.xxxx
r0.y = shaderConstantSetBuffer[]..swiz;
  r1.xyz = v3.xyz * float3(2.00195694,2.00195694,2.00195694) + float3(-1.00195694,-1.00195694,-1.00195694);
  r2.xyz = vertPush * r1.xyz;
  r2.xyz = r2.xyz * r0.yyy;
  r2.xyz = r2.xyz * v1.www + v0.xyz;
  r3.xyz = v4.xyz * float3(2.00195694,2.00195694,2.00195694) + float3(-1.00195694,-1.00195694,-1.00195694);
  r0.y = v4.w * 2 + -1;
  if (r0.x != 0) {
    r1.w = cmp(v5.x != 0.000000);
    if (r1.w != 0) {
      r1.w = (int)r0.x + (int)v6.x;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r1.w, l(0), t5.xyzw
    r4.x = shaderConstantSetBuffer[]..swiz;
    r4.y = shaderConstantSetBuffer[]..swiz;
    r4.z = shaderConstantSetBuffer[]..swiz;
    r4.w = shaderConstantSetBuffer[]..swiz;
      r3.w = dot(r4.xyz, r2.xyz);
      r3.w = r3.w + r4.w;
      r5.x = v5.x * r3.w;
      r3.w = dot(r4.xyz, r1.xyz);
      r6.x = v5.x * r3.w;
      r3.w = dot(r4.xyz, r3.xyz);
      r4.x = v5.x * r3.w;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r1.w, l(16), t5.xyzw
    r7.x = shaderConstantSetBuffer[]..swiz;
    r7.y = shaderConstantSetBuffer[]..swiz;
    r7.z = shaderConstantSetBuffer[]..swiz;
    r7.w = shaderConstantSetBuffer[]..swiz;
      r3.w = dot(r7.xyz, r2.xyz);
      r3.w = r3.w + r7.w;
      r5.y = v5.x * r3.w;
      r3.w = dot(r7.xyz, r1.xyz);
      r6.y = v5.x * r3.w;
      r3.w = dot(r7.xyz, r3.xyz);
      r4.y = v5.x * r3.w;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r1.w, l(32), t5.xyzw
    r7.x = shaderConstantSetBuffer[]..swiz;
    r7.y = shaderConstantSetBuffer[]..swiz;
    r7.z = shaderConstantSetBuffer[]..swiz;
    r7.w = shaderConstantSetBuffer[]..swiz;
      r1.w = dot(r7.xyz, r2.xyz);
      r1.w = r1.w + r7.w;
      r5.z = v5.x * r1.w;
      r1.w = dot(r7.xyz, r1.xyz);
      r6.z = v5.x * r1.w;
      r1.w = dot(r7.xyz, r3.xyz);
      r4.z = v5.x * r1.w;
      r1.w = cmp(v5.y != 0.000000);
      if (r1.w != 0) {
        r1.w = (int)r0.x + (int)v6.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r1.w, l(0), t5.xyzw
      r7.x = shaderConstantSetBuffer[]..swiz;
      r7.y = shaderConstantSetBuffer[]..swiz;
      r7.z = shaderConstantSetBuffer[]..swiz;
      r7.w = shaderConstantSetBuffer[]..swiz;
        r3.w = dot(r7.xyz, r2.xyz);
        r3.w = r3.w + r7.w;
        r5.x = r3.w * v5.y + r5.x;
        r3.w = dot(r7.xyz, r1.xyz);
        r6.x = r3.w * v5.y + r6.x;
        r3.w = dot(r7.xyz, r3.xyz);
        r4.x = r3.w * v5.y + r4.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r1.w, l(16), t5.xyzw
      r7.x = shaderConstantSetBuffer[]..swiz;
      r7.y = shaderConstantSetBuffer[]..swiz;
      r7.z = shaderConstantSetBuffer[]..swiz;
      r7.w = shaderConstantSetBuffer[]..swiz;
        r3.w = dot(r7.xyz, r2.xyz);
        r3.w = r3.w + r7.w;
        r5.y = r3.w * v5.y + r5.y;
        r3.w = dot(r7.xyz, r1.xyz);
        r6.y = r3.w * v5.y + r6.y;
        r3.w = dot(r7.xyz, r3.xyz);
        r4.y = r3.w * v5.y + r4.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r1.w, l(32), t5.xyzw
      r7.x = shaderConstantSetBuffer[]..swiz;
      r7.y = shaderConstantSetBuffer[]..swiz;
      r7.z = shaderConstantSetBuffer[]..swiz;
      r7.w = shaderConstantSetBuffer[]..swiz;
        r1.w = dot(r7.xyz, r2.xyz);
        r1.w = r1.w + r7.w;
        r5.z = r1.w * v5.y + r5.z;
        r1.w = dot(r7.xyz, r1.xyz);
        r6.z = r1.w * v5.y + r6.z;
        r1.w = dot(r7.xyz, r3.xyz);
        r4.z = r1.w * v5.y + r4.z;
        r1.w = cmp(v5.z != 0.000000);
        if (r1.w != 0) {
          r1.w = (int)r0.x + (int)v6.z;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r1.w, l(0), t5.xyzw
        r7.x = shaderConstantSetBuffer[]..swiz;
        r7.y = shaderConstantSetBuffer[]..swiz;
        r7.z = shaderConstantSetBuffer[]..swiz;
        r7.w = shaderConstantSetBuffer[]..swiz;
          r3.w = dot(r7.xyz, r2.xyz);
          r3.w = r3.w + r7.w;
          r5.x = r3.w * v5.z + r5.x;
          r3.w = dot(r7.xyz, r1.xyz);
          r6.x = r3.w * v5.z + r6.x;
          r3.w = dot(r7.xyz, r3.xyz);
          r4.x = r3.w * v5.z + r4.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r1.w, l(16), t5.xyzw
        r7.x = shaderConstantSetBuffer[]..swiz;
        r7.y = shaderConstantSetBuffer[]..swiz;
        r7.z = shaderConstantSetBuffer[]..swiz;
        r7.w = shaderConstantSetBuffer[]..swiz;
          r3.w = dot(r7.xyz, r2.xyz);
          r3.w = r3.w + r7.w;
          r5.y = r3.w * v5.z + r5.y;
          r3.w = dot(r7.xyz, r1.xyz);
          r6.y = r3.w * v5.z + r6.y;
          r3.w = dot(r7.xyz, r3.xyz);
          r4.y = r3.w * v5.z + r4.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r1.w, l(32), t5.xyzw
        r7.x = shaderConstantSetBuffer[]..swiz;
        r7.y = shaderConstantSetBuffer[]..swiz;
        r7.z = shaderConstantSetBuffer[]..swiz;
        r7.w = shaderConstantSetBuffer[]..swiz;
          r1.w = dot(r7.xyz, r2.xyz);
          r1.w = r1.w + r7.w;
          r5.z = r1.w * v5.z + r5.z;
          r1.w = dot(r7.xyz, r1.xyz);
          r6.z = r1.w * v5.z + r6.z;
          r1.w = dot(r7.xyz, r3.xyz);
          r4.z = r1.w * v5.z + r4.z;
          r1.w = cmp(v5.w != 0.000000);
          if (r1.w != 0) {
            r0.x = (int)r0.x + (int)v6.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r0.x, l(0), t5.xyzw
          r7.x = shaderConstantSetBuffer[]..swiz;
          r7.y = shaderConstantSetBuffer[]..swiz;
          r7.z = shaderConstantSetBuffer[]..swiz;
          r7.w = shaderConstantSetBuffer[]..swiz;
            r1.w = dot(r7.xyz, r2.xyz);
            r1.w = r1.w + r7.w;
            r5.x = r1.w * v5.w + r5.x;
            r1.w = dot(r7.xyz, r1.xyz);
            r6.x = r1.w * v5.w + r6.x;
            r1.w = dot(r7.xyz, r3.xyz);
            r4.x = r1.w * v5.w + r4.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r0.x, l(16), t5.xyzw
          r7.x = shaderConstantSetBuffer[]..swiz;
          r7.y = shaderConstantSetBuffer[]..swiz;
          r7.z = shaderConstantSetBuffer[]..swiz;
          r7.w = shaderConstantSetBuffer[]..swiz;
            r1.w = dot(r7.xyz, r2.xyz);
            r1.w = r1.w + r7.w;
            r5.y = r1.w * v5.w + r5.y;
            r1.w = dot(r7.xyz, r1.xyz);
            r6.y = r1.w * v5.w + r6.y;
            r1.w = dot(r7.xyz, r3.xyz);
            r4.y = r1.w * v5.w + r4.y;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r0.x, l(32), t5.xyzw
          r7.x = shaderConstantSetBuffer[]..swiz;
          r7.y = shaderConstantSetBuffer[]..swiz;
          r7.z = shaderConstantSetBuffer[]..swiz;
          r7.w = shaderConstantSetBuffer[]..swiz;
            r0.x = dot(r7.xyz, r2.xyz);
            r0.x = r0.x + r7.w;
            r5.z = r0.x * v5.w + r5.z;
            r0.x = dot(r7.xyz, r1.xyz);
            r6.z = r0.x * v5.w + r6.z;
            r0.x = dot(r7.xyz, r3.xyz);
            r4.z = r0.x * v5.w + r4.z;
          }
        }
      }
    } else {
      r5.xyz = float3(0,0,0);
      r6.xyz = float3(0,0,0);
      r4.xyz = float3(0,0,0);
    }
    r0.x = dot(r6.xyz, r6.xyz);
    r0.x = rsqrt(r0.x);
    r1.xyz = r6.xyz * r0.xxx;
    r0.x = dot(r4.xyz, r4.xyz);
    r0.x = rsqrt(r0.x);
    r3.xyz = r4.xyz * r0.xxx;
  } else {
    r5.xyz = r2.xyz;
  }
  r4.xyz = r3.yzx * r1.zxy;
  r4.xyz = r1.yzx * r3.zxy + -r4.xyz;
  r4.xyz = r4.xyz * r0.yyy;
  if (r0.w != 0) {
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyzw, r0.w, l(0), t5.xyzw
  r6.x = shaderConstantSetBuffer[]..swiz;
  r6.y = shaderConstantSetBuffer[]..swiz;
  r6.z = shaderConstantSetBuffer[]..swiz;
  r6.w = shaderConstantSetBuffer[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r0.w, l(16), t5.xyzw
  r7.x = shaderConstantSetBuffer[]..swiz;
  r7.y = shaderConstantSetBuffer[]..swiz;
  r7.z = shaderConstantSetBuffer[]..swiz;
  r7.w = shaderConstantSetBuffer[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r8.xyzw, r0.w, l(32), t5.xywz
  r8.x = shaderConstantSetBuffer[]..swiz;
  r8.y = shaderConstantSetBuffer[]..swiz;
  r8.z = shaderConstantSetBuffer[]..swiz;
  r8.w = shaderConstantSetBuffer[]..swiz;
    r9.xyz = r8.xyw;
    r8.x = r6.w;
    r8.y = r7.w;
  } else {
    r6.xyz = float3(1,0,0);
    r7.xyz = float3(0,1,0);
    r9.xyz = float3(0,0,1);
    r8.xyz = float3(0,0,0);
  }
  r0.xyw = -eyeOffset.xyz + r8.xyz;
  r5.w = 1;
  r6.w = r0.x;
  r0.x = dot(r5.xyzw, r6.xyzw);
  r7.w = r0.y;
  r0.y = dot(r5.xyzw, r7.xyzw);
  r9.w = r0.w;
  r0.w = dot(r5.xyzw, r9.xyzw);
  r5.x = dot(r1.xyz, r6.xyz);
  r5.y = dot(r1.xyz, r7.xyz);
  r5.z = dot(r1.xyz, r9.xyz);
  r1.x = dot(r5.xyz, r5.xyz);
  r1.x = rsqrt(r1.x);
  o2.xyz = r5.xyz * r1.xxx;
  r1.x = dot(r3.xyz, r6.xyz);
  r1.y = dot(r3.xyz, r7.xyz);
  r1.z = dot(r3.xyz, r9.xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o3.xyz = r1.xyz * r1.www;
  r1.x = dot(r4.xyz, r6.xyz);
  r1.y = dot(r4.xyz, r7.xyz);
  r1.z = dot(r4.xyz, r9.xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o4.xyz = r1.xyz * r1.www;
  r1.xyzw = viewProjectionMatrix._m10_m11_m12_m13 * r0.yyyy;
  r1.xyzw = r0.xxxx * viewProjectionMatrix._m00_m01_m02_m03 + r1.xyzw;
  r1.xyzw = r0.wwww * viewProjectionMatrix._m20_m21_m22_m23 + r1.xyzw;
  o0.xyzw = viewProjectionMatrix._m30_m31_m32_m33 + r1.xyzw;
  r0.x = (int)r0.z & 0x0fffffff;
  if (r0.x != 0) {
    if (r0.x != 0) {
      r0.y = cmp(v5.x != 0.000000);
      if (r0.y != 0) {
        r0.y = (int)r0.x + (int)v6.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, r0.y, l(0), t8.xyzw
      r1.x = shaderConstantSetBuffer[]..swiz;
      r1.y = shaderConstantSetBuffer[]..swiz;
      r1.z = shaderConstantSetBuffer[]..swiz;
      r1.w = shaderConstantSetBuffer[]..swiz;
        r0.z = dot(r1.xyz, r2.xyz);
        r0.z = r0.z + r1.w;
        r1.x = v5.x * r0.z;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.y, l(16), t8.xyzw
      r3.x = shaderConstantSetBuffer[]..swiz;
      r3.y = shaderConstantSetBuffer[]..swiz;
      r3.z = shaderConstantSetBuffer[]..swiz;
      r3.w = shaderConstantSetBuffer[]..swiz;
        r0.z = dot(r3.xyz, r2.xyz);
        r0.z = r0.z + r3.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.y, l(32), t8.xyzw
      r3.x = shaderConstantSetBuffer[]..swiz;
      r3.y = shaderConstantSetBuffer[]..swiz;
      r3.z = shaderConstantSetBuffer[]..swiz;
      r3.w = shaderConstantSetBuffer[]..swiz;
        r0.y = dot(r3.xyz, r2.xyz);
        r0.y = r0.y + r3.w;
        r1.yz = v5.xx * r0.zy;
        r0.y = cmp(v5.y != 0.000000);
        if (r0.y != 0) {
          r0.y = (int)r0.x + (int)v6.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.y, l(0), t8.xyzw
        r3.x = shaderConstantSetBuffer[]..swiz;
        r3.y = shaderConstantSetBuffer[]..swiz;
        r3.z = shaderConstantSetBuffer[]..swiz;
        r3.w = shaderConstantSetBuffer[]..swiz;
          r0.z = dot(r3.xyz, r2.xyz);
          r0.z = r0.z + r3.w;
          r3.x = r0.z * v5.y + r1.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.y, l(16), t8.xyzw
        r4.x = shaderConstantSetBuffer[]..swiz;
        r4.y = shaderConstantSetBuffer[]..swiz;
        r4.z = shaderConstantSetBuffer[]..swiz;
        r4.w = shaderConstantSetBuffer[]..swiz;
          r0.z = dot(r4.xyz, r2.xyz);
          r0.z = r0.z + r4.w;
          r3.y = r0.z * v5.y + r1.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.y, l(32), t8.xyzw
        r4.x = shaderConstantSetBuffer[]..swiz;
        r4.y = shaderConstantSetBuffer[]..swiz;
        r4.z = shaderConstantSetBuffer[]..swiz;
        r4.w = shaderConstantSetBuffer[]..swiz;
          r0.y = dot(r4.xyz, r2.xyz);
          r0.y = r0.y + r4.w;
          r3.z = r0.y * v5.y + r1.z;
          r0.y = cmp(v5.z != 0.000000);
          if (r0.y != 0) {
            r0.y = (int)r0.x + (int)v6.z;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.y, l(0), t8.xyzw
          r4.x = shaderConstantSetBuffer[]..swiz;
          r4.y = shaderConstantSetBuffer[]..swiz;
          r4.z = shaderConstantSetBuffer[]..swiz;
          r4.w = shaderConstantSetBuffer[]..swiz;
            r0.z = dot(r4.xyz, r2.xyz);
            r0.z = r0.z + r4.w;
            r4.x = r0.z * v5.z + r3.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r0.y, l(16), t8.xyzw
          r5.x = shaderConstantSetBuffer[]..swiz;
          r5.y = shaderConstantSetBuffer[]..swiz;
          r5.z = shaderConstantSetBuffer[]..swiz;
          r5.w = shaderConstantSetBuffer[]..swiz;
            r0.z = dot(r5.xyz, r2.xyz);
            r0.z = r0.z + r5.w;
            r4.y = r0.z * v5.z + r3.y;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r0.y, l(32), t8.xyzw
          r5.x = shaderConstantSetBuffer[]..swiz;
          r5.y = shaderConstantSetBuffer[]..swiz;
          r5.z = shaderConstantSetBuffer[]..swiz;
          r5.w = shaderConstantSetBuffer[]..swiz;
            r0.y = dot(r5.xyz, r2.xyz);
            r0.y = r0.y + r5.w;
            r4.z = r0.y * v5.z + r3.z;
            r0.y = cmp(v5.w != 0.000000);
            if (r0.y != 0) {
              r0.x = (int)r0.x + (int)v6.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r0.x, l(0), t8.xyzw
            r5.x = shaderConstantSetBuffer[]..swiz;
            r5.y = shaderConstantSetBuffer[]..swiz;
            r5.z = shaderConstantSetBuffer[]..swiz;
            r5.w = shaderConstantSetBuffer[]..swiz;
              r0.y = dot(r5.xyz, r2.xyz);
              r0.y = r0.y + r5.w;
              r5.x = r0.y * v5.w + r4.x;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyzw, r0.x, l(16), t8.xyzw
            r6.x = shaderConstantSetBuffer[]..swiz;
            r6.y = shaderConstantSetBuffer[]..swiz;
            r6.z = shaderConstantSetBuffer[]..swiz;
            r6.w = shaderConstantSetBuffer[]..swiz;
              r0.y = dot(r6.xyz, r2.xyz);
              r0.y = r0.y + r6.w;
              r5.y = r0.y * v5.w + r4.y;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.xyzw, r0.x, l(32), t8.xyzw
            r0.x = shaderConstantSetBuffer[]..swiz;
            r0.y = shaderConstantSetBuffer[]..swiz;
            r0.z = shaderConstantSetBuffer[]..swiz;
            r0.w = shaderConstantSetBuffer[]..swiz;
              r0.x = dot(r0.xyz, r2.xyz);
              r0.x = r0.x + r0.w;
              r5.z = r0.x * v5.w + r4.z;
              r2.xyz = r5.xyz;
            } else {
              r2.xyz = r4.xyz;
            }
          } else {
            r2.xyz = r3.xyz;
          }
        } else {
          r2.xyz = r1.xyz;
        }
      } else {
        r2.xyz = float3(0,0,0);
      }
    }
  } else {
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.x, v7.x, l(0), t4.xxxx
  r0.x = shaderConstantSetBuffer[]..swiz;
    if (r0.x != 0) {
      r0.y = cmp(v5.x != 0.000000);
      if (r0.y != 0) {
        r0.y = (int)r0.x + (int)v6.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, r0.y, l(0), t5.xyzw
      r1.x = shaderConstantSetBuffer[]..swiz;
      r1.y = shaderConstantSetBuffer[]..swiz;
      r1.z = shaderConstantSetBuffer[]..swiz;
      r1.w = shaderConstantSetBuffer[]..swiz;
        r0.z = dot(r1.xyz, r2.xyz);
        r0.z = r0.z + r1.w;
        r1.x = v5.x * r0.z;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.y, l(16), t5.xyzw
      r3.x = shaderConstantSetBuffer[]..swiz;
      r3.y = shaderConstantSetBuffer[]..swiz;
      r3.z = shaderConstantSetBuffer[]..swiz;
      r3.w = shaderConstantSetBuffer[]..swiz;
        r0.z = dot(r3.xyz, r2.xyz);
        r0.z = r0.z + r3.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.y, l(32), t5.xyzw
      r3.x = shaderConstantSetBuffer[]..swiz;
      r3.y = shaderConstantSetBuffer[]..swiz;
      r3.z = shaderConstantSetBuffer[]..swiz;
      r3.w = shaderConstantSetBuffer[]..swiz;
        r0.y = dot(r3.xyz, r2.xyz);
        r0.y = r0.y + r3.w;
        r1.yz = v5.xx * r0.zy;
        r0.y = cmp(v5.y != 0.000000);
        if (r0.y != 0) {
          r0.y = (int)r0.x + (int)v6.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.y, l(0), t5.xyzw
        r3.x = shaderConstantSetBuffer[]..swiz;
        r3.y = shaderConstantSetBuffer[]..swiz;
        r3.z = shaderConstantSetBuffer[]..swiz;
        r3.w = shaderConstantSetBuffer[]..swiz;
          r0.z = dot(r3.xyz, r2.xyz);
          r0.z = r0.z + r3.w;
          r3.x = r0.z * v5.y + r1.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.y, l(16), t5.xyzw
        r4.x = shaderConstantSetBuffer[]..swiz;
        r4.y = shaderConstantSetBuffer[]..swiz;
        r4.z = shaderConstantSetBuffer[]..swiz;
        r4.w = shaderConstantSetBuffer[]..swiz;
          r0.z = dot(r4.xyz, r2.xyz);
          r0.z = r0.z + r4.w;
          r3.y = r0.z * v5.y + r1.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.y, l(32), t5.xyzw
        r4.x = shaderConstantSetBuffer[]..swiz;
        r4.y = shaderConstantSetBuffer[]..swiz;
        r4.z = shaderConstantSetBuffer[]..swiz;
        r4.w = shaderConstantSetBuffer[]..swiz;
          r0.y = dot(r4.xyz, r2.xyz);
          r0.y = r0.y + r4.w;
          r3.z = r0.y * v5.y + r1.z;
          r0.y = cmp(v5.z != 0.000000);
          if (r0.y != 0) {
            r0.y = (int)r0.x + (int)v6.z;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.y, l(0), t5.xyzw
          r4.x = shaderConstantSetBuffer[]..swiz;
          r4.y = shaderConstantSetBuffer[]..swiz;
          r4.z = shaderConstantSetBuffer[]..swiz;
          r4.w = shaderConstantSetBuffer[]..swiz;
            r0.z = dot(r4.xyz, r2.xyz);
            r0.z = r0.z + r4.w;
            r4.x = r0.z * v5.z + r3.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r0.y, l(16), t5.xyzw
          r5.x = shaderConstantSetBuffer[]..swiz;
          r5.y = shaderConstantSetBuffer[]..swiz;
          r5.z = shaderConstantSetBuffer[]..swiz;
          r5.w = shaderConstantSetBuffer[]..swiz;
            r0.z = dot(r5.xyz, r2.xyz);
            r0.z = r0.z + r5.w;
            r4.y = r0.z * v5.z + r3.y;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r0.y, l(32), t5.xyzw
          r5.x = shaderConstantSetBuffer[]..swiz;
          r5.y = shaderConstantSetBuffer[]..swiz;
          r5.z = shaderConstantSetBuffer[]..swiz;
          r5.w = shaderConstantSetBuffer[]..swiz;
            r0.y = dot(r5.xyz, r2.xyz);
            r0.y = r0.y + r5.w;
            r4.z = r0.y * v5.z + r3.z;
            r0.y = cmp(v5.w != 0.000000);
            if (r0.y != 0) {
              r0.x = (int)r0.x + (int)v6.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r0.x, l(0), t5.xyzw
            r5.x = shaderConstantSetBuffer[]..swiz;
            r5.y = shaderConstantSetBuffer[]..swiz;
            r5.z = shaderConstantSetBuffer[]..swiz;
            r5.w = shaderConstantSetBuffer[]..swiz;
              r0.y = dot(r5.xyz, r2.xyz);
              r0.y = r0.y + r5.w;
              r5.x = r0.y * v5.w + r4.x;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyzw, r0.x, l(16), t5.xyzw
            r6.x = shaderConstantSetBuffer[]..swiz;
            r6.y = shaderConstantSetBuffer[]..swiz;
            r6.z = shaderConstantSetBuffer[]..swiz;
            r6.w = shaderConstantSetBuffer[]..swiz;
              r0.y = dot(r6.xyz, r2.xyz);
              r0.y = r0.y + r6.w;
              r5.y = r0.y * v5.w + r4.y;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.xyzw, r0.x, l(32), t5.xyzw
            r0.x = shaderConstantSetBuffer[]..swiz;
            r0.y = shaderConstantSetBuffer[]..swiz;
            r0.z = shaderConstantSetBuffer[]..swiz;
            r0.w = shaderConstantSetBuffer[]..swiz;
              r0.x = dot(r0.xyz, r2.xyz);
              r0.x = r0.x + r0.w;
              r5.z = r0.x * v5.w + r4.z;
              r2.xyz = r5.xyz;
            } else {
              r2.xyz = r4.xyz;
            }
          } else {
            r2.xyz = r3.xyz;
          }
        } else {
          r2.xyz = r1.xyz;
        }
      } else {
        r2.xyz = float3(0,0,0);
      }
    }
  }
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.x, v7.x, l(0), t4.xxxx
r0.x = shaderConstantSetBuffer[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.yz, v7.x, l(8), t4.xxyx
r0.y = shaderConstantSetBuffer[]..swiz;
r0.z = shaderConstantSetBuffer[]..swiz;
  r0.y = (int)r0.y & 0x0fffffff;
  r0.w = cmp((int)r0.z != 0);
  r0.x = cmp((int)r0.x == 0);
  r0.x = r0.x ? r0.w : 0;
  r0.w = cmp((int)r0.y != 0);
  r0.x = r0.w ? r0.x : 0;
  r0.x = r0.x ? r0.y : r0.z;
  if (r0.x != 0) {
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, r0.x, l(0), t8.xyzw
  r1.x = shaderConstantSetBuffer[]..swiz;
  r1.y = shaderConstantSetBuffer[]..swiz;
  r1.z = shaderConstantSetBuffer[]..swiz;
  r1.w = shaderConstantSetBuffer[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.x, l(16), t8.xyzw
  r3.x = shaderConstantSetBuffer[]..swiz;
  r3.y = shaderConstantSetBuffer[]..swiz;
  r3.z = shaderConstantSetBuffer[]..swiz;
  r3.w = shaderConstantSetBuffer[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.xyzw, r0.x, l(32), t8.xywz
  r0.x = shaderConstantSetBuffer[]..swiz;
  r0.y = shaderConstantSetBuffer[]..swiz;
  r0.z = shaderConstantSetBuffer[]..swiz;
  r0.w = shaderConstantSetBuffer[]..swiz;
    r4.xyz = r0.xyw;
    r0.x = r1.w;
    r0.y = r3.w;
  } else {
    r1.xyz = float3(1,0,0);
    r3.xyz = float3(0,1,0);
    r4.xyz = float3(0,0,1);
    r0.xyz = float3(0,0,0);
  }
  r0.xyz = -motionVectorConstants.prevFrameEyeOffset.xyz + r0.xyz;
  r2.w = 1;
  r1.w = r0.x;
  r0.x = dot(r2.xyzw, r1.xyzw);
  r3.w = r0.y;
  r0.y = dot(r2.xyzw, r3.xyzw);
  r4.w = r0.z;
  r0.z = dot(r2.xyzw, r4.xyzw);
  r1.xyzw = motionVectorConstants.prevFrameOffToClpMatrixFull._m10_m11_m12_m13 * r0.yyyy;
  r1.xyzw = r0.xxxx * motionVectorConstants.prevFrameOffToClpMatrixFull._m00_m01_m02_m03 + r1.xyzw;
  r0.xyzw = r0.zzzz * motionVectorConstants.prevFrameOffToClpMatrixFull._m20_m21_m22_m23 + r1.xyzw;
  o5.xyzw = motionVectorConstants.prevFrameOffToClpMatrixFull._m30_m31_m32_m33 + r0.xyzw;
  o1.x = v1.w;
  p1.xy = v2.xy;
  return;
}