// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:28:50 2021

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
  float3 colorTint1 : packoffset(c11);
  float baseNormalHeight : packoffset(c11.w);
  float2 glossRange : packoffset(c12);
  float detailScaleHeight : packoffset(c12.z);
  float4 flagScrollParms : packoffset(c13);
  float flagRippleScale : packoffset(c14);
  float flagRippleHeight : packoffset(c14.y);
  float2 wind1Parms : packoffset(c14.z);
  float2 wind2Parms : packoffset(c15);
  float2 wind3Parms : packoffset(c15.z);
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

Texture2D<float4> gpuSkinBase : register(t1);
Texture2D<float4> gpuSkinQuat : register(t2);
Texture2D<float4> gpuSkinPos : register(t3);
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = float4(1,1,1,1) + -v2.xyxy;
  r1.xy = wind1Parms.xy * r0.zw;
  r0.xyzw = wind2Parms.xyzw * r0.xyzw;
  r1.xy = float2(3.63189912,3.63189912) * r1.xy;
  r1.x = r1.x + r1.y;
  r1.y = gameTime.w + flagParams.y;
  r1.y = flagParams.x * r1.y;
  r1.x = r1.y * 5.6548667 + r1.x;
  r0.xyzw = float4(8.37758064,8.37758064,20.2683392,20.2683392) * r0.xyzw;
  r0.xy = r0.xz + r0.yw;
  r0.xy = r1.yy * float2(9.42477798,7.53982306) + r0.xy;
  sincos(r1.x, r1.x, r2.x);
  sincos(r0.xy, r0.xy, r3.xy);
  r0.x = 3 * r0.x;
  r0.x = r1.x * 7.5 + r0.x;
  r0.x = r0.y * 1.70000005 + r0.x;
  r0.x = v1.y * r0.x;
  r0.yzw = v3.xyz * float3(2.00195694,2.00195694,2.00195694) + float3(-1.00195694,-1.00195694,-1.00195694);
  r1.xyz = r0.xxx * r0.yzw + v0.xyz;
  r2.yzw = v4.xyz * float3(2.00195694,2.00195694,2.00195694) + float3(-1.00195694,-1.00195694,-1.00195694);
  r0.x = v4.w * 2 + -1;
  r4.xyz = r2.zwy * r0.wyz;
  r4.xyz = r0.zwy * r2.wyz + -r4.xyz;
  r4.xyz = r4.xyz * r0.xxx;
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = r4.xyz * r1.www;
  r1.w = 27.2392426 * wind1Parms.x;
  r3.z = wind1Parms.y * r2.x;
  r5.xy = float2(25.1327419,34.4561768) * wind2Parms.xz;
  r5.zw = wind2Parms.yw * r3.xy;
  r3.x = r5.x * r3.x;
  r3.w = 25.1327419 * r5.z;
  r1.w = r1.w * r2.x + r3.x;
  r1.w = r5.y * r3.y + r1.w;
  r1.w = v1.y * r1.w;
  r1.w = 0.0250000004 * r1.w;
  r2.x = r3.z * 27.2392426 + r3.w;
  r2.x = r5.w * 34.4561768 + r2.x;
  r2.x = v1.y * r2.x;
  r2.x = 0.0250000004 * r2.x;
  r3.xyz = r2.xxx * r4.xyz;
  r3.xyz = r1.www * r2.yzw + r3.xyz;
  r0.yzw = r3.xyz + r0.yzw;
  r1.w = dot(r0.yzw, r0.yzw);
  r1.w = rsqrt(r1.w);
  r0.yzw = r1.www * r0.yzw;
  r0.yzw = r0.yzw * float3(511,511,511) + float3(512,512,512);
  r0.yzw = r0.yzw * float3(0.00195694715,0.00195694715,0.00195694715) + float3(-1.00195694,-1.00195694,-1.00195694);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r3.xyz, v7.x, l(8), t4.xyzx
r3.x = gpuSkinBase[]..swiz;
r3.y = gpuSkinBase[]..swiz;
r3.z = gpuSkinBase[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r3.z, l(48), t5.xyzw
r4.x = gpuSkinBase[]..swiz;
r4.y = gpuSkinBase[]..swiz;
r4.z = gpuSkinBase[]..swiz;
r4.w = gpuSkinBase[]..swiz;
  r4.xyzw = r3.zzzz ? r4.xyzw : float4(0,0,0,0);
  r1.w = cmp(0 != r4.w);
  if (r1.w != 0) {
    r1.w = (uint)r4.w;
    if (r1.w != 0) {
      r2.x = (int)r1.w + (int)v6.x;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r2.x, l(0), t5.xyzw
    r5.x = gpuSkinBase[]..swiz;
    r5.y = gpuSkinBase[]..swiz;
    r5.z = gpuSkinBase[]..swiz;
    r5.w = gpuSkinBase[]..swiz;
      r3.z = dot(r5.xyz, r1.xyz);
      r3.z = r3.z + r5.w;
      r6.x = v5.x * r3.z;
      r3.z = dot(r5.xyz, r0.yzw);
      r7.x = v5.x * r3.z;
      r3.z = dot(r5.xyz, r2.yzw);
      r5.x = v5.x * r3.z;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r8.xyzw, r2.x, l(16), t5.xyzw
    r8.x = gpuSkinBase[]..swiz;
    r8.y = gpuSkinBase[]..swiz;
    r8.z = gpuSkinBase[]..swiz;
    r8.w = gpuSkinBase[]..swiz;
      r3.z = dot(r8.xyz, r1.xyz);
      r3.z = r3.z + r8.w;
      r6.y = v5.x * r3.z;
      r3.z = dot(r8.xyz, r0.yzw);
      r7.y = v5.x * r3.z;
      r3.z = dot(r8.xyz, r2.yzw);
      r5.y = v5.x * r3.z;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r8.xyzw, r2.x, l(32), t5.xyzw
    r8.x = gpuSkinBase[]..swiz;
    r8.y = gpuSkinBase[]..swiz;
    r8.z = gpuSkinBase[]..swiz;
    r8.w = gpuSkinBase[]..swiz;
      r2.x = dot(r8.xyz, r1.xyz);
      r2.x = r2.x + r8.w;
      r6.z = v5.x * r2.x;
      r2.x = dot(r8.xyz, r0.yzw);
      r7.z = v5.x * r2.x;
      r2.x = dot(r8.xyz, r2.yzw);
      r5.z = v5.x * r2.x;
      r2.x = cmp(v5.y != 0.000000);
      if (r2.x != 0) {
        r2.x = (int)r1.w + (int)v6.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r8.xyzw, r2.x, l(0), t5.xyzw
      r8.x = gpuSkinBase[]..swiz;
      r8.y = gpuSkinBase[]..swiz;
      r8.z = gpuSkinBase[]..swiz;
      r8.w = gpuSkinBase[]..swiz;
        r3.z = dot(r8.xyz, r1.xyz);
        r3.z = r3.z + r8.w;
        r6.x = r3.z * v5.y + r6.x;
        r3.z = dot(r8.xyz, r0.yzw);
        r7.x = r3.z * v5.y + r7.x;
        r3.z = dot(r8.xyz, r2.yzw);
        r5.x = r3.z * v5.y + r5.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r8.xyzw, r2.x, l(16), t5.xyzw
      r8.x = gpuSkinBase[]..swiz;
      r8.y = gpuSkinBase[]..swiz;
      r8.z = gpuSkinBase[]..swiz;
      r8.w = gpuSkinBase[]..swiz;
        r3.z = dot(r8.xyz, r1.xyz);
        r3.z = r3.z + r8.w;
        r6.y = r3.z * v5.y + r6.y;
        r3.z = dot(r8.xyz, r0.yzw);
        r7.y = r3.z * v5.y + r7.y;
        r3.z = dot(r8.xyz, r2.yzw);
        r5.y = r3.z * v5.y + r5.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r8.xyzw, r2.x, l(32), t5.xyzw
      r8.x = gpuSkinBase[]..swiz;
      r8.y = gpuSkinBase[]..swiz;
      r8.z = gpuSkinBase[]..swiz;
      r8.w = gpuSkinBase[]..swiz;
        r2.x = dot(r8.xyz, r1.xyz);
        r2.x = r2.x + r8.w;
        r6.z = r2.x * v5.y + r6.z;
        r2.x = dot(r8.xyz, r0.yzw);
        r7.z = r2.x * v5.y + r7.z;
        r2.x = dot(r8.xyz, r2.yzw);
        r5.z = r2.x * v5.y + r5.z;
        r2.x = cmp(v5.z != 0.000000);
        if (r2.x != 0) {
          r2.x = (int)r1.w + (int)v6.z;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r8.xyzw, r2.x, l(0), t5.xyzw
        r8.x = gpuSkinBase[]..swiz;
        r8.y = gpuSkinBase[]..swiz;
        r8.z = gpuSkinBase[]..swiz;
        r8.w = gpuSkinBase[]..swiz;
          r3.z = dot(r8.xyz, r1.xyz);
          r3.z = r3.z + r8.w;
          r6.x = r3.z * v5.z + r6.x;
          r3.z = dot(r8.xyz, r0.yzw);
          r7.x = r3.z * v5.z + r7.x;
          r3.z = dot(r8.xyz, r2.yzw);
          r5.x = r3.z * v5.z + r5.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r8.xyzw, r2.x, l(16), t5.xyzw
        r8.x = gpuSkinBase[]..swiz;
        r8.y = gpuSkinBase[]..swiz;
        r8.z = gpuSkinBase[]..swiz;
        r8.w = gpuSkinBase[]..swiz;
          r3.z = dot(r8.xyz, r1.xyz);
          r3.z = r3.z + r8.w;
          r6.y = r3.z * v5.z + r6.y;
          r3.z = dot(r8.xyz, r0.yzw);
          r7.y = r3.z * v5.z + r7.y;
          r3.z = dot(r8.xyz, r2.yzw);
          r5.y = r3.z * v5.z + r5.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r8.xyzw, r2.x, l(32), t5.xyzw
        r8.x = gpuSkinBase[]..swiz;
        r8.y = gpuSkinBase[]..swiz;
        r8.z = gpuSkinBase[]..swiz;
        r8.w = gpuSkinBase[]..swiz;
          r2.x = dot(r8.xyz, r1.xyz);
          r2.x = r2.x + r8.w;
          r6.z = r2.x * v5.z + r6.z;
          r2.x = dot(r8.xyz, r0.yzw);
          r7.z = r2.x * v5.z + r7.z;
          r2.x = dot(r8.xyz, r2.yzw);
          r5.z = r2.x * v5.z + r5.z;
          r2.x = cmp(v5.w != 0.000000);
          if (r2.x != 0) {
            r1.w = (int)r1.w + (int)v6.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r8.xyzw, r1.w, l(0), t5.xyzw
          r8.x = gpuSkinBase[]..swiz;
          r8.y = gpuSkinBase[]..swiz;
          r8.z = gpuSkinBase[]..swiz;
          r8.w = gpuSkinBase[]..swiz;
            r2.x = dot(r8.xyz, r1.xyz);
            r2.x = r2.x + r8.w;
            r6.x = r2.x * v5.w + r6.x;
            r2.x = dot(r8.xyz, r0.yzw);
            r7.x = r2.x * v5.w + r7.x;
            r2.x = dot(r8.xyz, r2.yzw);
            r5.x = r2.x * v5.w + r5.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r8.xyzw, r1.w, l(16), t5.xyzw
          r8.x = gpuSkinBase[]..swiz;
          r8.y = gpuSkinBase[]..swiz;
          r8.z = gpuSkinBase[]..swiz;
          r8.w = gpuSkinBase[]..swiz;
            r2.x = dot(r8.xyz, r1.xyz);
            r2.x = r2.x + r8.w;
            r6.y = r2.x * v5.w + r6.y;
            r2.x = dot(r8.xyz, r0.yzw);
            r7.y = r2.x * v5.w + r7.y;
            r2.x = dot(r8.xyz, r2.yzw);
            r5.y = r2.x * v5.w + r5.y;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r8.xyzw, r1.w, l(32), t5.xyzw
          r8.x = gpuSkinBase[]..swiz;
          r8.y = gpuSkinBase[]..swiz;
          r8.z = gpuSkinBase[]..swiz;
          r8.w = gpuSkinBase[]..swiz;
            r1.w = dot(r8.xyz, r1.xyz);
            r1.w = r1.w + r8.w;
            r6.z = r1.w * v5.w + r6.z;
            r1.w = dot(r8.xyz, r0.yzw);
            r7.z = r1.w * v5.w + r7.z;
            r1.w = dot(r8.xyz, r2.yzw);
            r5.z = r1.w * v5.w + r5.z;
          }
        }
      }
      r1.w = dot(r7.xyz, r7.xyz);
      r1.w = rsqrt(r1.w);
      r0.yzw = r7.xyz * r1.www;
      r1.w = dot(r5.xyz, r5.xyz);
      r1.w = rsqrt(r1.w);
      r2.yzw = r5.xyz * r1.www;
    } else {
      r6.xyz = r1.xyz;
    }
  } else {
    r5.yw = (uint2)r4.xy;
    r5.x = v6.x;
    r5.z = 0;
    r7.xyzw = gpuSkinQuat.Load(r5.xyz).xyzw;
    r8.xyzw = gpuSkinQuat.Load(r5.xwz).xyzw;
    r4.xyw = gpuSkinPos.Load(r5.xyz).xyz;
    r9.xyz = gpuSkinPos.Load(r5.xwz).xyz;
    r10.xyz = gpuSkinBase.Load(r5.xzz).xyz;
    r8.xyzw = r8.xyzw + -r7.xyzw;
    r7.xyzw = r4.zzzz * r8.xyzw + r7.xyzw;
    r8.xyz = r9.xyz + -r4.xyw;
    r4.xyw = r4.zzz * r8.xyz + r4.xyw;
    r8.xyz = -r10.xyz + r1.xyz;
    r1.w = dot(r7.xyzw, r7.xyzw);
    r1.w = rsqrt(r1.w);
    r7.xyzw = r7.xyzw * r1.wwww;
    r9.xyz = r7.xyz + r7.xyz;
    r11.xyz = r9.xxx * r7.xzw;
    r1.w = r9.y * r7.w;
    r3.zw = r9.zz * r7.wz;
    r2.x = r7.y * r9.y + r3.w;
    r12.x = 1 + -r2.x;
    r13.x = r7.z * r9.x + -r1.w;
    r12.y = r7.y * r9.x + -r3.z;
    r14.xy = r7.yx * r9.xx + r3.zw;
    r14.z = r7.z * r9.y + -r11.z;
    r7.xyz = r7.zwy * r9.yyy + r11.zyx;
    r12.z = r7.y;
    r9.x = dot(r8.xyz, r12.xyz);
    r14.w = 1 + -r14.y;
    r9.y = dot(r8.xzy, r14.xzw);
    r13.yz = r7.xz * float2(1,-1) + float2(0,1);
    r9.z = dot(r8.xyz, r13.xyz);
    r7.x = dot(r0.yzw, r12.xyz);
    r7.y = dot(r0.ywz, r14.xzw);
    r7.z = dot(r0.yzw, r13.xyz);
    r8.x = dot(r2.yzw, r12.xyz);
    r8.y = dot(r2.ywz, r14.xzw);
    r8.z = dot(r2.yzw, r13.xyz);
    r9.xyz = r9.xyz + r10.xyz;
    r4.xyw = r9.xyz + r4.xyw;
    r6.xyz = v5.xxx * r4.xyw;
    r4.xyw = v5.xxx * r7.xyz;
    r7.xyz = v5.xxx * r8.xyz;
    r1.w = cmp(v5.y != 0.000000);
    if (r1.w != 0) {
      r5.x = v6.y;
      r8.xyzw = gpuSkinQuat.Load(r5.xyz).xyzw;
      r9.xyzw = gpuSkinQuat.Load(r5.xwz).xyzw;
      r10.xyz = gpuSkinPos.Load(r5.xyz).xyz;
      r11.xyz = gpuSkinPos.Load(r5.xwz).xyz;
      r12.xyz = gpuSkinBase.Load(r5.xzz).xyz;
      r9.xyzw = r9.xyzw + -r8.xyzw;
      r8.xyzw = r4.zzzz * r9.xyzw + r8.xyzw;
      r9.xyz = r11.xyz + -r10.xyz;
      r9.xyz = r4.zzz * r9.xyz + r10.xyz;
      r10.xyz = -r12.xyz + r1.xyz;
      r1.w = dot(r8.xyzw, r8.xyzw);
      r1.w = rsqrt(r1.w);
      r8.xyzw = r8.xyzw * r1.wwww;
      r11.xyz = r8.xyz + r8.xyz;
      r13.xyz = r11.xxx * r8.xzw;
      r1.w = r11.y * r8.w;
      r3.zw = r11.zz * r8.wz;
      r2.x = r8.y * r11.y + r3.w;
      r14.x = 1 + -r2.x;
      r15.x = r8.z * r11.x + -r1.w;
      r14.y = r8.y * r11.x + -r3.z;
      r16.xy = r8.yx * r11.xx + r3.zw;
      r16.z = r8.z * r11.y + -r13.z;
      r8.xyz = r8.zwy * r11.yyy + r13.zyx;
      r14.z = r8.y;
      r11.x = dot(r10.xyz, r14.xyz);
      r16.w = 1 + -r16.y;
      r11.y = dot(r10.xzy, r16.xzw);
      r15.yz = r8.xz * float2(1,-1) + float2(0,1);
      r11.z = dot(r10.xyz, r15.xyz);
      r8.x = dot(r0.yzw, r14.xyz);
      r8.y = dot(r0.ywz, r16.xzw);
      r8.z = dot(r0.yzw, r15.xyz);
      r10.x = dot(r2.yzw, r14.xyz);
      r10.y = dot(r2.ywz, r16.xzw);
      r10.z = dot(r2.yzw, r15.xyz);
      r11.xyz = r11.xyz + r12.xyz;
      r9.xyz = r11.xyz + r9.xyz;
      r6.xyz = r9.xyz * v5.yyy + r6.xyz;
      r4.xyw = r8.xyz * v5.yyy + r4.xyw;
      r7.xyz = r10.xyz * v5.yyy + r7.xyz;
      r1.w = cmp(v5.z != 0.000000);
      if (r1.w != 0) {
        r5.x = v6.z;
        r8.xyzw = gpuSkinQuat.Load(r5.xyz).xyzw;
        r9.xyzw = gpuSkinQuat.Load(r5.xwz).xyzw;
        r10.xyz = gpuSkinPos.Load(r5.xyz).xyz;
        r11.xyz = gpuSkinPos.Load(r5.xwz).xyz;
        r12.xyz = gpuSkinBase.Load(r5.xzz).xyz;
        r9.xyzw = r9.xyzw + -r8.xyzw;
        r8.xyzw = r4.zzzz * r9.xyzw + r8.xyzw;
        r9.xyz = r11.xyz + -r10.xyz;
        r9.xyz = r4.zzz * r9.xyz + r10.xyz;
        r10.xyz = -r12.xyz + r1.xyz;
        r1.w = dot(r8.xyzw, r8.xyzw);
        r1.w = rsqrt(r1.w);
        r8.xyzw = r8.xyzw * r1.wwww;
        r11.xyz = r8.xyz + r8.xyz;
        r13.xyz = r11.xxx * r8.xzw;
        r1.w = r11.y * r8.w;
        r3.zw = r11.zz * r8.wz;
        r2.x = r8.y * r11.y + r3.w;
        r14.x = 1 + -r2.x;
        r15.x = r8.z * r11.x + -r1.w;
        r14.y = r8.y * r11.x + -r3.z;
        r16.xy = r8.yx * r11.xx + r3.zw;
        r16.z = r8.z * r11.y + -r13.z;
        r8.xyz = r8.zwy * r11.yyy + r13.zyx;
        r14.z = r8.y;
        r11.x = dot(r10.xyz, r14.xyz);
        r16.w = 1 + -r16.y;
        r11.y = dot(r10.xzy, r16.xzw);
        r15.yz = r8.xz * float2(1,-1) + float2(0,1);
        r11.z = dot(r10.xyz, r15.xyz);
        r8.x = dot(r0.yzw, r14.xyz);
        r8.y = dot(r0.ywz, r16.xzw);
        r8.z = dot(r0.yzw, r15.xyz);
        r10.x = dot(r2.yzw, r14.xyz);
        r10.y = dot(r2.ywz, r16.xzw);
        r10.z = dot(r2.yzw, r15.xyz);
        r11.xyz = r11.xyz + r12.xyz;
        r9.xyz = r11.xyz + r9.xyz;
        r6.xyz = r9.xyz * v5.zzz + r6.xyz;
        r4.xyw = r8.xyz * v5.zzz + r4.xyw;
        r7.xyz = r10.xyz * v5.zzz + r7.xyz;
        r1.w = cmp(v5.w != 0.000000);
        if (r1.w != 0) {
          r5.x = v6.w;
          r8.xyzw = gpuSkinQuat.Load(r5.xyz).xyzw;
          r9.xyzw = gpuSkinQuat.Load(r5.xwz).xyzw;
          r10.xyz = gpuSkinPos.Load(r5.xyz).xyz;
          r11.xyz = gpuSkinPos.Load(r5.xwz).xyz;
          r5.xyz = gpuSkinBase.Load(r5.xzz).xyz;
          r9.xyzw = r9.xyzw + -r8.xyzw;
          r8.xyzw = r4.zzzz * r9.xyzw + r8.xyzw;
          r9.xyz = r11.xyz + -r10.xyz;
          r9.xyz = r4.zzz * r9.xyz + r10.xyz;
          r10.xyz = -r5.xyz + r1.xyz;
          r1.w = dot(r8.xyzw, r8.xyzw);
          r1.w = rsqrt(r1.w);
          r8.xyzw = r8.xyzw * r1.wwww;
          r11.xyz = r8.xyz + r8.xyz;
          r12.xyz = r11.xxx * r8.xzw;
          r1.w = r11.y * r8.w;
          r3.zw = r11.zz * r8.wz;
          r2.x = r8.y * r11.y + r3.w;
          r13.x = 1 + -r2.x;
          r14.x = r8.z * r11.x + -r1.w;
          r13.y = r8.y * r11.x + -r3.z;
          r15.xy = r8.yx * r11.xx + r3.zw;
          r15.z = r8.z * r11.y + -r12.z;
          r8.xyz = r8.zwy * r11.yyy + r12.zyx;
          r13.z = r8.y;
          r11.x = dot(r10.xyz, r13.xyz);
          r15.w = 1 + -r15.y;
          r11.y = dot(r10.xzy, r15.xzw);
          r14.yz = r8.xz * float2(1,-1) + float2(0,1);
          r11.z = dot(r10.xyz, r14.xyz);
          r8.x = dot(r0.yzw, r13.xyz);
          r8.y = dot(r0.ywz, r15.xzw);
          r8.z = dot(r0.yzw, r14.xyz);
          r10.x = dot(r2.yzw, r13.xyz);
          r10.y = dot(r2.ywz, r15.xzw);
          r10.z = dot(r2.yzw, r14.xyz);
          r5.xyz = r11.xyz + r5.xyz;
          r5.xyz = r5.xyz + r9.xyz;
          r6.xyz = r5.xyz * v5.www + r6.xyz;
          r4.xyw = r8.xyz * v5.www + r4.xyw;
          r7.xyz = r10.xyz * v5.www + r7.xyz;
        }
      }
    }
    r1.w = dot(r4.xyw, r4.xyw);
    r1.w = rsqrt(r1.w);
    r0.yzw = r4.xyw * r1.www;
    r1.w = dot(r7.xyz, r7.xyz);
    r1.w = rsqrt(r1.w);
    r2.yzw = r7.xyz * r1.www;
  }
  r4.xyz = r2.zwy * r0.wyz;
  r4.xyz = r0.zwy * r2.wyz + -r4.xyz;
  r4.xyz = r4.xyz * r0.xxx;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.x, v7.x, l(0), t4.xxxx
r0.x = gpuSkinBase[]..swiz;
  r1.w = (int)r0.x + (int)r3.y;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r1.w, l(0), t5.xyzw
r5.x = gpuSkinBase[]..swiz;
r5.y = gpuSkinBase[]..swiz;
r5.z = gpuSkinBase[]..swiz;
r5.w = gpuSkinBase[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r1.w, l(16), t5.xyzw
r7.x = gpuSkinBase[]..swiz;
r7.y = gpuSkinBase[]..swiz;
r7.z = gpuSkinBase[]..swiz;
r7.w = gpuSkinBase[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r8.xyzw, r1.w, l(32), t5.xyzw
r8.x = gpuSkinBase[]..swiz;
r8.y = gpuSkinBase[]..swiz;
r8.z = gpuSkinBase[]..swiz;
r8.w = gpuSkinBase[]..swiz;
  r9.x = r5.w;
  r9.y = r7.w;
  r9.z = r8.w;
  r9.xyw = -eyeOffset.xyz + r9.xyz;
  r6.w = 1;
  r5.w = r9.x;
  r1.w = dot(r6.xyzw, r5.xyzw);
  r7.w = r9.y;
  r2.x = dot(r6.xyzw, r7.xyzw);
  r9.xyz = r8.xyz;
  r3.y = dot(r6.xyzw, r9.xyzw);
  r6.x = dot(r0.yzw, r5.xyz);
  r6.y = dot(r0.yzw, r7.xyz);
  r6.z = dot(r0.yzw, r9.xyz);
  r0.y = dot(r6.xyz, r6.xyz);
  r0.y = rsqrt(r0.y);
  o3.xyz = r6.xyz * r0.yyy;
  r6.x = dot(r2.yzw, r5.xyz);
  r6.y = dot(r2.yzw, r7.xyz);
  r6.z = dot(r2.yzw, r9.xyz);
  r0.y = dot(r6.xyz, r6.xyz);
  r0.y = rsqrt(r0.y);
  o4.xyz = r6.xyz * r0.yyy;
  r5.x = dot(r4.xyz, r5.xyz);
  r5.y = dot(r4.xyz, r7.xyz);
  r5.z = dot(r4.xyz, r9.xyz);
  r0.y = dot(r5.xyz, r5.xyz);
  r0.y = rsqrt(r0.y);
  o5.xyz = r5.xyz * r0.yyy;
  r2.xyzw = viewProjectionMatrix._m10_m11_m12_m13 * r2.xxxx;
  r2.xyzw = r1.wwww * viewProjectionMatrix._m00_m01_m02_m03 + r2.xyzw;
  r2.xyzw = r3.yyyy * viewProjectionMatrix._m20_m21_m22_m23 + r2.xyzw;
  o0.xyzw = viewProjectionMatrix._m30_m31_m32_m33 + r2.xyzw;
  r0.yzw = log2(abs(v1.xyz));
  r0.yzw = float3(2.20000005,2.20000005,2.20000005) * r0.yzw;
  o1.xyz = exp2(r0.yzw);
  r0.y = (int)r3.x & 0x0fffffff;
  if (r0.y != 0) {
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.yz, v7.x, l(16), t4.xxyx
  r0.y = gpuSkinBase[]..swiz;
  r0.z = gpuSkinBase[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r0.y, l(48), t5.xyzw
  r2.x = gpuSkinBase[]..swiz;
  r2.y = gpuSkinBase[]..swiz;
  r2.z = gpuSkinBase[]..swiz;
  r2.w = gpuSkinBase[]..swiz;
    r2.xyzw = r0.yyyy ? r2.xyzw : float4(0,0,0,0);
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.z, l(48), t8.xyzw
  r3.x = gpuSkinBase[]..swiz;
  r3.y = gpuSkinBase[]..swiz;
  r3.z = gpuSkinBase[]..swiz;
  r3.w = gpuSkinBase[]..swiz;
    r2.xyzw = r0.zzzz ? r3.xyzw : r2.xyzw;
    r0.y = cmp(0 != r2.w);
    if (r0.y != 0) {
      r0.y = (uint)r2.w;
      if (r0.y != 0) {
        r0.z = (int)r0.y + (int)v6.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.z, l(0), t8.xyzw
      r3.x = gpuSkinBase[]..swiz;
      r3.y = gpuSkinBase[]..swiz;
      r3.z = gpuSkinBase[]..swiz;
      r3.w = gpuSkinBase[]..swiz;
        r0.w = dot(r3.xyz, r1.xyz);
        r0.w = r0.w + r3.w;
        r3.x = v5.x * r0.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.z, l(16), t8.xyzw
      r4.x = gpuSkinBase[]..swiz;
      r4.y = gpuSkinBase[]..swiz;
      r4.z = gpuSkinBase[]..swiz;
      r4.w = gpuSkinBase[]..swiz;
        r0.w = dot(r4.xyz, r1.xyz);
        r0.w = r0.w + r4.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.z, l(32), t8.xyzw
      r4.x = gpuSkinBase[]..swiz;
      r4.y = gpuSkinBase[]..swiz;
      r4.z = gpuSkinBase[]..swiz;
      r4.w = gpuSkinBase[]..swiz;
        r0.z = dot(r4.xyz, r1.xyz);
        r0.z = r0.z + r4.w;
        r3.yz = v5.xx * r0.wz;
        r0.z = cmp(v5.y != 0.000000);
        if (r0.z != 0) {
          r0.z = (int)r0.y + (int)v6.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.z, l(0), t8.xyzw
        r4.x = gpuSkinBase[]..swiz;
        r4.y = gpuSkinBase[]..swiz;
        r4.z = gpuSkinBase[]..swiz;
        r4.w = gpuSkinBase[]..swiz;
          r0.w = dot(r4.xyz, r1.xyz);
          r0.w = r0.w + r4.w;
          r3.x = r0.w * v5.y + r3.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.z, l(16), t8.xyzw
        r4.x = gpuSkinBase[]..swiz;
        r4.y = gpuSkinBase[]..swiz;
        r4.z = gpuSkinBase[]..swiz;
        r4.w = gpuSkinBase[]..swiz;
          r0.w = dot(r4.xyz, r1.xyz);
          r0.w = r0.w + r4.w;
          r3.y = r0.w * v5.y + r3.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.z, l(32), t8.xyzw
        r4.x = gpuSkinBase[]..swiz;
        r4.y = gpuSkinBase[]..swiz;
        r4.z = gpuSkinBase[]..swiz;
        r4.w = gpuSkinBase[]..swiz;
          r0.z = dot(r4.xyz, r1.xyz);
          r0.z = r0.z + r4.w;
          r3.z = r0.z * v5.y + r3.z;
          r0.z = cmp(v5.z != 0.000000);
          if (r0.z != 0) {
            r0.z = (int)r0.y + (int)v6.z;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.z, l(0), t8.xyzw
          r4.x = gpuSkinBase[]..swiz;
          r4.y = gpuSkinBase[]..swiz;
          r4.z = gpuSkinBase[]..swiz;
          r4.w = gpuSkinBase[]..swiz;
            r0.w = dot(r4.xyz, r1.xyz);
            r0.w = r0.w + r4.w;
            r3.x = r0.w * v5.z + r3.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.z, l(16), t8.xyzw
          r4.x = gpuSkinBase[]..swiz;
          r4.y = gpuSkinBase[]..swiz;
          r4.z = gpuSkinBase[]..swiz;
          r4.w = gpuSkinBase[]..swiz;
            r0.w = dot(r4.xyz, r1.xyz);
            r0.w = r0.w + r4.w;
            r3.y = r0.w * v5.z + r3.y;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.z, l(32), t8.xyzw
          r4.x = gpuSkinBase[]..swiz;
          r4.y = gpuSkinBase[]..swiz;
          r4.z = gpuSkinBase[]..swiz;
          r4.w = gpuSkinBase[]..swiz;
            r0.z = dot(r4.xyz, r1.xyz);
            r0.z = r0.z + r4.w;
            r3.z = r0.z * v5.z + r3.z;
            r0.z = cmp(v5.w != 0.000000);
            if (r0.z != 0) {
              r0.y = (int)r0.y + (int)v6.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.y, l(0), t8.xyzw
            r4.x = gpuSkinBase[]..swiz;
            r4.y = gpuSkinBase[]..swiz;
            r4.z = gpuSkinBase[]..swiz;
            r4.w = gpuSkinBase[]..swiz;
              r0.z = dot(r4.xyz, r1.xyz);
              r0.z = r0.z + r4.w;
              r3.x = r0.z * v5.w + r3.x;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.y, l(16), t8.xyzw
            r4.x = gpuSkinBase[]..swiz;
            r4.y = gpuSkinBase[]..swiz;
            r4.z = gpuSkinBase[]..swiz;
            r4.w = gpuSkinBase[]..swiz;
              r0.z = dot(r4.xyz, r1.xyz);
              r0.z = r0.z + r4.w;
              r3.y = r0.z * v5.w + r3.y;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.y, l(32), t8.xyzw
            r4.x = gpuSkinBase[]..swiz;
            r4.y = gpuSkinBase[]..swiz;
            r4.z = gpuSkinBase[]..swiz;
            r4.w = gpuSkinBase[]..swiz;
              r0.y = dot(r4.xyz, r1.xyz);
              r0.y = r0.y + r4.w;
              r3.z = r0.y * v5.w + r3.z;
            }
          }
        }
      } else {
        r3.xyz = r1.xyz;
      }
    } else {
      r4.yw = (uint2)r2.xy;
      r4.x = v6.x;
      r4.z = 0;
      r5.xyzw = gpuSkinQuat.Load(r4.xyz).xyzw;
      r6.xyzw = gpuSkinQuat.Load(r4.xwz).xyzw;
      r0.yzw = gpuSkinPos.Load(r4.xyz).xyz;
      r2.xyw = gpuSkinPos.Load(r4.xwz).xyz;
      r7.xyz = gpuSkinBase.Load(r4.xzz).xyz;
      r6.xyzw = r6.xyzw + -r5.xyzw;
      r5.xyzw = r2.zzzz * r6.xyzw + r5.xyzw;
      r2.xyw = r2.xyw + -r0.yzw;
      r0.yzw = r2.zzz * r2.xyw + r0.yzw;
      r2.xyw = -r7.xyz + r1.xyz;
      r1.w = dot(r5.xyzw, r5.xyzw);
      r1.w = rsqrt(r1.w);
      r5.xyzw = r5.xyzw * r1.wwww;
      r6.xyz = r5.xyz + r5.xyz;
      r8.xyz = r6.xxx * r5.xzw;
      r1.w = r6.y * r5.w;
      r6.zw = r6.zz * r5.wz;
      r7.w = r5.y * r6.y + r6.w;
      r9.x = 1 + -r7.w;
      r10.x = r5.z * r6.x + -r1.w;
      r9.y = r5.y * r6.x + -r6.z;
      r11.xy = r5.yx * r6.xx + r6.zw;
      r11.z = r5.z * r6.y + -r8.z;
      r5.xyz = r5.zwy * r6.yyy + r8.zyx;
      r9.z = r5.y;
      r6.x = dot(r2.xyw, r9.xyz);
      r11.w = 1 + -r11.y;
      r6.y = dot(r2.xwy, r11.xzw);
      r10.yz = r5.xz * float2(1,-1) + float2(0,1);
      r6.z = dot(r2.xyw, r10.xyz);
      r2.xyw = r6.xyz + r7.xyz;
      r0.yzw = r2.xyw + r0.yzw;
      r3.xyz = v5.xxx * r0.yzw;
      r0.y = cmp(v5.y != 0.000000);
      if (r0.y != 0) {
        r4.x = v6.y;
        r5.xyzw = gpuSkinQuat.Load(r4.xyz).xyzw;
        r6.xyzw = gpuSkinQuat.Load(r4.xwz).xyzw;
        r0.yzw = gpuSkinPos.Load(r4.xyz).xyz;
        r2.xyw = gpuSkinPos.Load(r4.xwz).xyz;
        r7.xyz = gpuSkinBase.Load(r4.xzz).xyz;
        r6.xyzw = r6.xyzw + -r5.xyzw;
        r5.xyzw = r2.zzzz * r6.xyzw + r5.xyzw;
        r2.xyw = r2.xyw + -r0.yzw;
        r0.yzw = r2.zzz * r2.xyw + r0.yzw;
        r2.xyw = -r7.xyz + r1.xyz;
        r1.w = dot(r5.xyzw, r5.xyzw);
        r1.w = rsqrt(r1.w);
        r5.xyzw = r5.xyzw * r1.wwww;
        r6.xyz = r5.xyz + r5.xyz;
        r8.xyz = r6.xxx * r5.xzw;
        r1.w = r6.y * r5.w;
        r6.zw = r6.zz * r5.wz;
        r7.w = r5.y * r6.y + r6.w;
        r9.x = 1 + -r7.w;
        r10.x = r5.z * r6.x + -r1.w;
        r9.y = r5.y * r6.x + -r6.z;
        r11.xy = r5.yx * r6.xx + r6.zw;
        r11.z = r5.z * r6.y + -r8.z;
        r5.xyz = r5.zwy * r6.yyy + r8.zyx;
        r9.z = r5.y;
        r6.x = dot(r2.xyw, r9.xyz);
        r11.w = 1 + -r11.y;
        r6.y = dot(r2.xwy, r11.xzw);
        r10.yz = r5.xz * float2(1,-1) + float2(0,1);
        r6.z = dot(r2.xyw, r10.xyz);
        r2.xyw = r6.xyz + r7.xyz;
        r0.yzw = r2.xyw + r0.yzw;
        r3.xyz = r0.yzw * v5.yyy + r3.xyz;
        r0.y = cmp(v5.z != 0.000000);
        if (r0.y != 0) {
          r4.x = v6.z;
          r5.xyzw = gpuSkinQuat.Load(r4.xyz).xyzw;
          r6.xyzw = gpuSkinQuat.Load(r4.xwz).xyzw;
          r0.yzw = gpuSkinPos.Load(r4.xyz).xyz;
          r2.xyw = gpuSkinPos.Load(r4.xwz).xyz;
          r7.xyz = gpuSkinBase.Load(r4.xzz).xyz;
          r6.xyzw = r6.xyzw + -r5.xyzw;
          r5.xyzw = r2.zzzz * r6.xyzw + r5.xyzw;
          r2.xyw = r2.xyw + -r0.yzw;
          r0.yzw = r2.zzz * r2.xyw + r0.yzw;
          r2.xyw = -r7.xyz + r1.xyz;
          r1.w = dot(r5.xyzw, r5.xyzw);
          r1.w = rsqrt(r1.w);
          r5.xyzw = r5.xyzw * r1.wwww;
          r6.xyz = r5.xyz + r5.xyz;
          r8.xyz = r6.xxx * r5.xzw;
          r1.w = r6.y * r5.w;
          r6.zw = r6.zz * r5.wz;
          r7.w = r5.y * r6.y + r6.w;
          r9.x = 1 + -r7.w;
          r10.x = r5.z * r6.x + -r1.w;
          r9.y = r5.y * r6.x + -r6.z;
          r11.xy = r5.yx * r6.xx + r6.zw;
          r11.z = r5.z * r6.y + -r8.z;
          r5.xyz = r5.zwy * r6.yyy + r8.zyx;
          r9.z = r5.y;
          r6.x = dot(r2.xyw, r9.xyz);
          r11.w = 1 + -r11.y;
          r6.y = dot(r2.xwy, r11.xzw);
          r10.yz = r5.xz * float2(1,-1) + float2(0,1);
          r6.z = dot(r2.xyw, r10.xyz);
          r2.xyw = r6.xyz + r7.xyz;
          r0.yzw = r2.xyw + r0.yzw;
          r3.xyz = r0.yzw * v5.zzz + r3.xyz;
          r0.y = cmp(v5.w != 0.000000);
          if (r0.y != 0) {
            r4.x = v6.w;
            r5.xyzw = gpuSkinQuat.Load(r4.xyz).xyzw;
            r6.xyzw = gpuSkinQuat.Load(r4.xwz).xyzw;
            r0.yzw = gpuSkinPos.Load(r4.xyz).xyz;
            r2.xyw = gpuSkinPos.Load(r4.xwz).xyz;
            r4.xyz = gpuSkinBase.Load(r4.xzz).xyz;
            r6.xyzw = r6.xyzw + -r5.xyzw;
            r5.xyzw = r2.zzzz * r6.xyzw + r5.xyzw;
            r2.xyw = r2.xyw + -r0.yzw;
            r0.yzw = r2.zzz * r2.xyw + r0.yzw;
            r2.xyz = -r4.xyz + r1.xyz;
            r1.w = dot(r5.xyzw, r5.xyzw);
            r1.w = rsqrt(r1.w);
            r5.xyzw = r5.xyzw * r1.wwww;
            r6.xyz = r5.xyz + r5.xyz;
            r7.xyz = r6.xxx * r5.xzw;
            r1.w = r6.y * r5.w;
            r6.zw = r6.zz * r5.wz;
            r2.w = r5.y * r6.y + r6.w;
            r8.x = 1 + -r2.w;
            r9.x = r5.z * r6.x + -r1.w;
            r8.y = r5.y * r6.x + -r6.z;
            r10.xy = r5.yx * r6.xx + r6.zw;
            r10.z = r5.z * r6.y + -r7.z;
            r5.xyz = r5.zwy * r6.yyy + r7.zyx;
            r8.z = r5.y;
            r6.x = dot(r2.xyz, r8.xyz);
            r10.w = 1 + -r10.y;
            r6.y = dot(r2.xzy, r10.xzw);
            r9.yz = r5.xz * float2(1,-1) + float2(0,1);
            r6.z = dot(r2.xyz, r9.xyz);
            r2.xyz = r6.xyz + r4.xyz;
            r0.yzw = r2.xyz + r0.yzw;
            r3.xyz = r0.yzw * v5.www + r3.xyz;
          }
        }
      }
    }
  } else {
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.y, v7.x, l(16), t4.xxxx
  r0.y = gpuSkinBase[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r0.y, l(48), t5.xyzw
  r2.x = gpuSkinBase[]..swiz;
  r2.y = gpuSkinBase[]..swiz;
  r2.z = gpuSkinBase[]..swiz;
  r2.w = gpuSkinBase[]..swiz;
    r2.xyzw = r0.yyyy ? r2.xyzw : float4(0,0,0,0);
    r0.y = cmp(0 != r2.w);
    if (r0.y != 0) {
      r0.y = (uint)r2.w;
      if (r0.y != 0) {
        r0.z = (int)r0.y + (int)v6.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.z, l(0), t5.xyzw
      r4.x = gpuSkinBase[]..swiz;
      r4.y = gpuSkinBase[]..swiz;
      r4.z = gpuSkinBase[]..swiz;
      r4.w = gpuSkinBase[]..swiz;
        r0.w = dot(r4.xyz, r1.xyz);
        r0.w = r0.w + r4.w;
        r3.x = v5.x * r0.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.z, l(16), t5.xyzw
      r4.x = gpuSkinBase[]..swiz;
      r4.y = gpuSkinBase[]..swiz;
      r4.z = gpuSkinBase[]..swiz;
      r4.w = gpuSkinBase[]..swiz;
        r0.w = dot(r4.xyz, r1.xyz);
        r0.w = r0.w + r4.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.z, l(32), t5.xyzw
      r4.x = gpuSkinBase[]..swiz;
      r4.y = gpuSkinBase[]..swiz;
      r4.z = gpuSkinBase[]..swiz;
      r4.w = gpuSkinBase[]..swiz;
        r0.z = dot(r4.xyz, r1.xyz);
        r0.z = r0.z + r4.w;
        r3.yz = v5.xx * r0.wz;
        r0.z = cmp(v5.y != 0.000000);
        if (r0.z != 0) {
          r0.z = (int)r0.y + (int)v6.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.z, l(0), t5.xyzw
        r4.x = gpuSkinBase[]..swiz;
        r4.y = gpuSkinBase[]..swiz;
        r4.z = gpuSkinBase[]..swiz;
        r4.w = gpuSkinBase[]..swiz;
          r0.w = dot(r4.xyz, r1.xyz);
          r0.w = r0.w + r4.w;
          r3.x = r0.w * v5.y + r3.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.z, l(16), t5.xyzw
        r4.x = gpuSkinBase[]..swiz;
        r4.y = gpuSkinBase[]..swiz;
        r4.z = gpuSkinBase[]..swiz;
        r4.w = gpuSkinBase[]..swiz;
          r0.w = dot(r4.xyz, r1.xyz);
          r0.w = r0.w + r4.w;
          r3.y = r0.w * v5.y + r3.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.z, l(32), t5.xyzw
        r4.x = gpuSkinBase[]..swiz;
        r4.y = gpuSkinBase[]..swiz;
        r4.z = gpuSkinBase[]..swiz;
        r4.w = gpuSkinBase[]..swiz;
          r0.z = dot(r4.xyz, r1.xyz);
          r0.z = r0.z + r4.w;
          r3.z = r0.z * v5.y + r3.z;
          r0.z = cmp(v5.z != 0.000000);
          if (r0.z != 0) {
            r0.z = (int)r0.y + (int)v6.z;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.z, l(0), t5.xyzw
          r4.x = gpuSkinBase[]..swiz;
          r4.y = gpuSkinBase[]..swiz;
          r4.z = gpuSkinBase[]..swiz;
          r4.w = gpuSkinBase[]..swiz;
            r0.w = dot(r4.xyz, r1.xyz);
            r0.w = r0.w + r4.w;
            r3.x = r0.w * v5.z + r3.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.z, l(16), t5.xyzw
          r4.x = gpuSkinBase[]..swiz;
          r4.y = gpuSkinBase[]..swiz;
          r4.z = gpuSkinBase[]..swiz;
          r4.w = gpuSkinBase[]..swiz;
            r0.w = dot(r4.xyz, r1.xyz);
            r0.w = r0.w + r4.w;
            r3.y = r0.w * v5.z + r3.y;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.z, l(32), t5.xyzw
          r4.x = gpuSkinBase[]..swiz;
          r4.y = gpuSkinBase[]..swiz;
          r4.z = gpuSkinBase[]..swiz;
          r4.w = gpuSkinBase[]..swiz;
            r0.z = dot(r4.xyz, r1.xyz);
            r0.z = r0.z + r4.w;
            r3.z = r0.z * v5.z + r3.z;
            r0.z = cmp(v5.w != 0.000000);
            if (r0.z != 0) {
              r0.y = (int)r0.y + (int)v6.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.y, l(0), t5.xyzw
            r4.x = gpuSkinBase[]..swiz;
            r4.y = gpuSkinBase[]..swiz;
            r4.z = gpuSkinBase[]..swiz;
            r4.w = gpuSkinBase[]..swiz;
              r0.z = dot(r4.xyz, r1.xyz);
              r0.z = r0.z + r4.w;
              r3.x = r0.z * v5.w + r3.x;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.y, l(16), t5.xyzw
            r4.x = gpuSkinBase[]..swiz;
            r4.y = gpuSkinBase[]..swiz;
            r4.z = gpuSkinBase[]..swiz;
            r4.w = gpuSkinBase[]..swiz;
              r0.z = dot(r4.xyz, r1.xyz);
              r0.z = r0.z + r4.w;
              r3.y = r0.z * v5.w + r3.y;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.y, l(32), t5.xyzw
            r4.x = gpuSkinBase[]..swiz;
            r4.y = gpuSkinBase[]..swiz;
            r4.z = gpuSkinBase[]..swiz;
            r4.w = gpuSkinBase[]..swiz;
              r0.y = dot(r4.xyz, r1.xyz);
              r0.y = r0.y + r4.w;
              r3.z = r0.y * v5.w + r3.z;
            }
          }
        }
      } else {
        r3.xyz = r1.xyz;
      }
    } else {
      r4.yw = (uint2)r2.xy;
      r4.x = v6.x;
      r4.z = 0;
      r5.xyzw = gpuSkinQuat.Load(r4.xyz).xyzw;
      r6.xyzw = gpuSkinQuat.Load(r4.xwz).xyzw;
      r0.yzw = gpuSkinPos.Load(r4.xyz).xyz;
      r2.xyw = gpuSkinPos.Load(r4.xwz).xyz;
      r7.xyz = gpuSkinBase.Load(r4.xzz).xyz;
      r6.xyzw = r6.xyzw + -r5.xyzw;
      r5.xyzw = r2.zzzz * r6.xyzw + r5.xyzw;
      r2.xyw = r2.xyw + -r0.yzw;
      r0.yzw = r2.zzz * r2.xyw + r0.yzw;
      r2.xyw = -r7.xyz + r1.xyz;
      r1.w = dot(r5.xyzw, r5.xyzw);
      r1.w = rsqrt(r1.w);
      r5.xyzw = r5.xyzw * r1.wwww;
      r6.xyz = r5.xyz + r5.xyz;
      r8.xyz = r6.xxx * r5.xzw;
      r1.w = r6.y * r5.w;
      r6.zw = r6.zz * r5.wz;
      r7.w = r5.y * r6.y + r6.w;
      r9.x = 1 + -r7.w;
      r10.x = r5.z * r6.x + -r1.w;
      r9.y = r5.y * r6.x + -r6.z;
      r11.xy = r5.yx * r6.xx + r6.zw;
      r11.z = r5.z * r6.y + -r8.z;
      r5.xyz = r5.zwy * r6.yyy + r8.zyx;
      r9.z = r5.y;
      r6.x = dot(r2.xyw, r9.xyz);
      r11.w = 1 + -r11.y;
      r6.y = dot(r2.xwy, r11.xzw);
      r10.yz = r5.xz * float2(1,-1) + float2(0,1);
      r6.z = dot(r2.xyw, r10.xyz);
      r2.xyw = r6.xyz + r7.xyz;
      r0.yzw = r2.xyw + r0.yzw;
      r3.xyz = v5.xxx * r0.yzw;
      r0.y = cmp(v5.y != 0.000000);
      if (r0.y != 0) {
        r4.x = v6.y;
        r5.xyzw = gpuSkinQuat.Load(r4.xyz).xyzw;
        r6.xyzw = gpuSkinQuat.Load(r4.xwz).xyzw;
        r0.yzw = gpuSkinPos.Load(r4.xyz).xyz;
        r2.xyw = gpuSkinPos.Load(r4.xwz).xyz;
        r7.xyz = gpuSkinBase.Load(r4.xzz).xyz;
        r6.xyzw = r6.xyzw + -r5.xyzw;
        r5.xyzw = r2.zzzz * r6.xyzw + r5.xyzw;
        r2.xyw = r2.xyw + -r0.yzw;
        r0.yzw = r2.zzz * r2.xyw + r0.yzw;
        r2.xyw = -r7.xyz + r1.xyz;
        r1.w = dot(r5.xyzw, r5.xyzw);
        r1.w = rsqrt(r1.w);
        r5.xyzw = r5.xyzw * r1.wwww;
        r6.xyz = r5.xyz + r5.xyz;
        r8.xyz = r6.xxx * r5.xzw;
        r1.w = r6.y * r5.w;
        r6.zw = r6.zz * r5.wz;
        r7.w = r5.y * r6.y + r6.w;
        r9.x = 1 + -r7.w;
        r10.x = r5.z * r6.x + -r1.w;
        r9.y = r5.y * r6.x + -r6.z;
        r11.xy = r5.yx * r6.xx + r6.zw;
        r11.z = r5.z * r6.y + -r8.z;
        r5.xyz = r5.zwy * r6.yyy + r8.zyx;
        r9.z = r5.y;
        r6.x = dot(r2.xyw, r9.xyz);
        r11.w = 1 + -r11.y;
        r6.y = dot(r2.xwy, r11.xzw);
        r10.yz = r5.xz * float2(1,-1) + float2(0,1);
        r6.z = dot(r2.xyw, r10.xyz);
        r2.xyw = r6.xyz + r7.xyz;
        r0.yzw = r2.xyw + r0.yzw;
        r3.xyz = r0.yzw * v5.yyy + r3.xyz;
        r0.y = cmp(v5.z != 0.000000);
        if (r0.y != 0) {
          r4.x = v6.z;
          r5.xyzw = gpuSkinQuat.Load(r4.xyz).xyzw;
          r6.xyzw = gpuSkinQuat.Load(r4.xwz).xyzw;
          r0.yzw = gpuSkinPos.Load(r4.xyz).xyz;
          r2.xyw = gpuSkinPos.Load(r4.xwz).xyz;
          r7.xyz = gpuSkinBase.Load(r4.xzz).xyz;
          r6.xyzw = r6.xyzw + -r5.xyzw;
          r5.xyzw = r2.zzzz * r6.xyzw + r5.xyzw;
          r2.xyw = r2.xyw + -r0.yzw;
          r0.yzw = r2.zzz * r2.xyw + r0.yzw;
          r2.xyw = -r7.xyz + r1.xyz;
          r1.w = dot(r5.xyzw, r5.xyzw);
          r1.w = rsqrt(r1.w);
          r5.xyzw = r5.xyzw * r1.wwww;
          r6.xyz = r5.xyz + r5.xyz;
          r8.xyz = r6.xxx * r5.xzw;
          r1.w = r6.y * r5.w;
          r6.zw = r6.zz * r5.wz;
          r7.w = r5.y * r6.y + r6.w;
          r9.x = 1 + -r7.w;
          r10.x = r5.z * r6.x + -r1.w;
          r9.y = r5.y * r6.x + -r6.z;
          r11.xy = r5.yx * r6.xx + r6.zw;
          r11.z = r5.z * r6.y + -r8.z;
          r5.xyz = r5.zwy * r6.yyy + r8.zyx;
          r9.z = r5.y;
          r6.x = dot(r2.xyw, r9.xyz);
          r11.w = 1 + -r11.y;
          r6.y = dot(r2.xwy, r11.xzw);
          r10.yz = r5.xz * float2(1,-1) + float2(0,1);
          r6.z = dot(r2.xyw, r10.xyz);
          r2.xyw = r6.xyz + r7.xyz;
          r0.yzw = r2.xyw + r0.yzw;
          r3.xyz = r0.yzw * v5.zzz + r3.xyz;
          r0.y = cmp(v5.w != 0.000000);
          if (r0.y != 0) {
            r4.x = v6.w;
            r5.xyzw = gpuSkinQuat.Load(r4.xyz).xyzw;
            r6.xyzw = gpuSkinQuat.Load(r4.xwz).xyzw;
            r0.yzw = gpuSkinPos.Load(r4.xyz).xyz;
            r2.xyw = gpuSkinPos.Load(r4.xwz).xyz;
            r4.xyz = gpuSkinBase.Load(r4.xzz).xyz;
            r6.xyzw = r6.xyzw + -r5.xyzw;
            r5.xyzw = r2.zzzz * r6.xyzw + r5.xyzw;
            r2.xyw = r2.xyw + -r0.yzw;
            r0.yzw = r2.zzz * r2.xyw + r0.yzw;
            r1.xyz = -r4.xyz + r1.xyz;
            r1.w = dot(r5.xyzw, r5.xyzw);
            r1.w = rsqrt(r1.w);
            r2.xyzw = r5.xyzw * r1.wwww;
            r5.xyz = r2.xyz + r2.xyz;
            r6.xyz = r5.xxx * r2.xzw;
            r1.w = r5.y * r2.w;
            r5.zw = r5.zz * r2.wz;
            r4.w = r2.y * r5.y + r5.w;
            r7.x = 1 + -r4.w;
            r8.x = r2.z * r5.x + -r1.w;
            r7.y = r2.y * r5.x + -r5.z;
            r9.xy = r2.yx * r5.xx + r5.zw;
            r9.z = r2.z * r5.y + -r6.z;
            r2.xyz = r2.zwy * r5.yyy + r6.zyx;
            r7.z = r2.y;
            r5.x = dot(r1.xyz, r7.xyz);
            r9.w = 1 + -r9.y;
            r5.y = dot(r1.xzy, r9.xzw);
            r8.yz = r2.xz * float2(1,-1) + float2(0,1);
            r5.z = dot(r1.xyz, r8.xyz);
            r1.xyz = r5.xyz + r4.xyz;
            r0.yzw = r1.xyz + r0.yzw;
            r3.xyz = r0.yzw * v5.www + r3.xyz;
          }
        }
      }
    }
  }
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.yz, v7.x, l(8), t4.xxyx
r0.y = gpuSkinBase[]..swiz;
r0.z = gpuSkinBase[]..swiz;
  r0.y = (int)r0.y & 0x0fffffff;
  r0.w = cmp((int)r0.z != 0);
  r0.x = cmp((int)r0.x == 0);
  r0.x = r0.x ? r0.w : 0;
  r0.w = cmp((int)r0.y != 0);
  r0.x = r0.w ? r0.x : 0;
  r0.x = r0.x ? r0.y : r0.z;
  r0.x = (int)r0.y + (int)r0.x;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, r0.x, l(0), t8.xyzw
r1.x = gpuSkinBase[]..swiz;
r1.y = gpuSkinBase[]..swiz;
r1.z = gpuSkinBase[]..swiz;
r1.w = gpuSkinBase[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r0.x, l(16), t8.xyzw
r2.x = gpuSkinBase[]..swiz;
r2.y = gpuSkinBase[]..swiz;
r2.z = gpuSkinBase[]..swiz;
r2.w = gpuSkinBase[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.xyzw, r0.x, l(32), t8.xyzw
r0.x = gpuSkinBase[]..swiz;
r0.y = gpuSkinBase[]..swiz;
r0.z = gpuSkinBase[]..swiz;
r0.w = gpuSkinBase[]..swiz;
  r4.x = r1.w;
  r4.y = r2.w;
  r4.z = r0.w;
  r4.xyw = -motionVectorConstants.prevFrameEyeOffset.xyz + r4.xyz;
  r3.w = 1;
  r1.w = r4.x;
  r0.w = dot(r3.xyzw, r1.xyzw);
  r2.w = r4.y;
  r1.x = dot(r3.xyzw, r2.xyzw);
  r4.xyz = r0.xyz;
  r0.x = dot(r3.xyzw, r4.xyzw);
  r1.xyzw = motionVectorConstants.prevFrameOffToClpMatrixFull._m10_m11_m12_m13 * r1.xxxx;
  r1.xyzw = r0.wwww * motionVectorConstants.prevFrameOffToClpMatrixFull._m00_m01_m02_m03 + r1.xyzw;
  r0.xyzw = r0.xxxx * motionVectorConstants.prevFrameOffToClpMatrixFull._m20_m21_m22_m23 + r1.xyzw;
  o6.xyzw = motionVectorConstants.prevFrameOffToClpMatrixFull._m30_m31_m32_m33 + r0.xyzw;
  p1.x = 1;
  o2.xy = v2.xy;
  return;
}