// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:42:58 2021

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

Texture2D<float4> gpuSkinBase : register(t1);
Texture2D<float4> gpuSkinQuat : register(t2);
Texture2D<float4> gpuSkinPos : register(t3);
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
  float4 v5 : BLENDWEIGHT0,
  uint4 v6 : BLENDINDICES0,
  uint v7 : TEXCOORD15,
  out float4 o0 : SV_POSITION0,
  out float o1 : COLOR1,
  out float2 p1 : TEXCOORD0,
  out uint4 o2 : TEXCOORD4,
  out float4 o3 : TEXCOORD1,
  out float4 o4 : TEXCOORD2,
  out float3 o5 : TEXCOORD3,
  out float3 o6 : OFFPOSITION0)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t4, 24
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t5, 64
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v3.xyz * float3(2.00195694,2.00195694,2.00195694) + float3(-1.00195694,-1.00195694,-1.00195694);
  r1.xyz = v4.xyz * float3(2.00195694,2.00195694,2.00195694) + float3(-1.00195694,-1.00195694,-1.00195694);
  r0.w = v4.w * 2 + -1;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r2.xy, v7.x, l(12), t4.xyxx
r2.x = gpuSkinBase[]..swiz;
r2.y = gpuSkinBase[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r2.y, l(48), t5.xyzw
r3.x = gpuSkinBase[]..swiz;
r3.y = gpuSkinBase[]..swiz;
r3.z = gpuSkinBase[]..swiz;
r3.w = gpuSkinBase[]..swiz;
  r3.xyzw = r2.yyyy ? r3.xyzw : float4(0,0,0,0);
  r1.w = cmp(0 != r3.w);
  if (r1.w != 0) {
    r1.w = (uint)r3.w;
    if (r1.w != 0) {
      r2.y = (int)r1.w + (int)v6.x;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r2.y, l(0), t5.xyzw
    r4.x = gpuSkinBase[]..swiz;
    r4.y = gpuSkinBase[]..swiz;
    r4.z = gpuSkinBase[]..swiz;
    r4.w = gpuSkinBase[]..swiz;
      r2.z = dot(r4.xyz, v0.xyz);
      r2.z = r2.z + r4.w;
      r5.x = v5.x * r2.z;
      r2.z = dot(r4.xyz, r0.xyz);
      r6.x = v5.x * r2.z;
      r2.z = dot(r4.xyz, r1.xyz);
      r4.x = v5.x * r2.z;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r2.y, l(16), t5.xyzw
    r7.x = gpuSkinBase[]..swiz;
    r7.y = gpuSkinBase[]..swiz;
    r7.z = gpuSkinBase[]..swiz;
    r7.w = gpuSkinBase[]..swiz;
      r2.z = dot(r7.xyz, v0.xyz);
      r2.z = r2.z + r7.w;
      r5.y = v5.x * r2.z;
      r2.z = dot(r7.xyz, r0.xyz);
      r6.y = v5.x * r2.z;
      r2.z = dot(r7.xyz, r1.xyz);
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r2.y, l(32), t5.xyzw
    r7.x = gpuSkinBase[]..swiz;
    r7.y = gpuSkinBase[]..swiz;
    r7.z = gpuSkinBase[]..swiz;
    r7.w = gpuSkinBase[]..swiz;
      r2.y = dot(r7.xyz, v0.xyz);
      r2.y = r2.y + r7.w;
      r5.z = v5.x * r2.y;
      r2.y = dot(r7.xyz, r0.xyz);
      r6.z = v5.x * r2.y;
      r2.y = dot(r7.xyz, r1.xyz);
      r4.yz = v5.xx * r2.zy;
      r2.y = cmp(v5.y != 0.000000);
      if (r2.y != 0) {
        r2.y = (int)r1.w + (int)v6.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r2.y, l(0), t5.xyzw
      r7.x = gpuSkinBase[]..swiz;
      r7.y = gpuSkinBase[]..swiz;
      r7.z = gpuSkinBase[]..swiz;
      r7.w = gpuSkinBase[]..swiz;
        r2.z = dot(r7.xyz, v0.xyz);
        r2.z = r2.z + r7.w;
        r5.x = r2.z * v5.y + r5.x;
        r2.z = dot(r7.xyz, r0.xyz);
        r6.x = r2.z * v5.y + r6.x;
        r2.z = dot(r7.xyz, r1.xyz);
        r4.x = r2.z * v5.y + r4.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r2.y, l(16), t5.xyzw
      r7.x = gpuSkinBase[]..swiz;
      r7.y = gpuSkinBase[]..swiz;
      r7.z = gpuSkinBase[]..swiz;
      r7.w = gpuSkinBase[]..swiz;
        r2.z = dot(r7.xyz, v0.xyz);
        r2.z = r2.z + r7.w;
        r5.y = r2.z * v5.y + r5.y;
        r2.z = dot(r7.xyz, r0.xyz);
        r6.y = r2.z * v5.y + r6.y;
        r2.z = dot(r7.xyz, r1.xyz);
        r4.y = r2.z * v5.y + r4.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r2.y, l(32), t5.xyzw
      r7.x = gpuSkinBase[]..swiz;
      r7.y = gpuSkinBase[]..swiz;
      r7.z = gpuSkinBase[]..swiz;
      r7.w = gpuSkinBase[]..swiz;
        r2.y = dot(r7.xyz, v0.xyz);
        r2.y = r2.y + r7.w;
        r5.z = r2.y * v5.y + r5.z;
        r2.y = dot(r7.xyz, r0.xyz);
        r6.z = r2.y * v5.y + r6.z;
        r2.y = dot(r7.xyz, r1.xyz);
        r4.z = r2.y * v5.y + r4.z;
        r2.y = cmp(v5.z != 0.000000);
        if (r2.y != 0) {
          r2.y = (int)r1.w + (int)v6.z;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r2.y, l(0), t5.xyzw
        r7.x = gpuSkinBase[]..swiz;
        r7.y = gpuSkinBase[]..swiz;
        r7.z = gpuSkinBase[]..swiz;
        r7.w = gpuSkinBase[]..swiz;
          r2.z = dot(r7.xyz, v0.xyz);
          r2.z = r2.z + r7.w;
          r5.x = r2.z * v5.z + r5.x;
          r2.z = dot(r7.xyz, r0.xyz);
          r6.x = r2.z * v5.z + r6.x;
          r2.z = dot(r7.xyz, r1.xyz);
          r4.x = r2.z * v5.z + r4.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r2.y, l(16), t5.xyzw
        r7.x = gpuSkinBase[]..swiz;
        r7.y = gpuSkinBase[]..swiz;
        r7.z = gpuSkinBase[]..swiz;
        r7.w = gpuSkinBase[]..swiz;
          r2.z = dot(r7.xyz, v0.xyz);
          r2.z = r2.z + r7.w;
          r5.y = r2.z * v5.z + r5.y;
          r2.z = dot(r7.xyz, r0.xyz);
          r6.y = r2.z * v5.z + r6.y;
          r2.z = dot(r7.xyz, r1.xyz);
          r4.y = r2.z * v5.z + r4.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r2.y, l(32), t5.xyzw
        r7.x = gpuSkinBase[]..swiz;
        r7.y = gpuSkinBase[]..swiz;
        r7.z = gpuSkinBase[]..swiz;
        r7.w = gpuSkinBase[]..swiz;
          r2.y = dot(r7.xyz, v0.xyz);
          r2.y = r2.y + r7.w;
          r5.z = r2.y * v5.z + r5.z;
          r2.y = dot(r7.xyz, r0.xyz);
          r6.z = r2.y * v5.z + r6.z;
          r2.y = dot(r7.xyz, r1.xyz);
          r4.z = r2.y * v5.z + r4.z;
          r2.y = cmp(v5.w != 0.000000);
          if (r2.y != 0) {
            r1.w = (int)r1.w + (int)v6.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r1.w, l(0), t5.xyzw
          r7.x = gpuSkinBase[]..swiz;
          r7.y = gpuSkinBase[]..swiz;
          r7.z = gpuSkinBase[]..swiz;
          r7.w = gpuSkinBase[]..swiz;
            r2.y = dot(r7.xyz, v0.xyz);
            r2.y = r2.y + r7.w;
            r5.x = r2.y * v5.w + r5.x;
            r2.y = dot(r7.xyz, r0.xyz);
            r6.x = r2.y * v5.w + r6.x;
            r2.y = dot(r7.xyz, r1.xyz);
            r4.x = r2.y * v5.w + r4.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r1.w, l(16), t5.xyzw
          r7.x = gpuSkinBase[]..swiz;
          r7.y = gpuSkinBase[]..swiz;
          r7.z = gpuSkinBase[]..swiz;
          r7.w = gpuSkinBase[]..swiz;
            r2.y = dot(r7.xyz, v0.xyz);
            r2.y = r2.y + r7.w;
            r5.y = r2.y * v5.w + r5.y;
            r2.y = dot(r7.xyz, r0.xyz);
            r6.y = r2.y * v5.w + r6.y;
            r2.y = dot(r7.xyz, r1.xyz);
            r4.y = r2.y * v5.w + r4.y;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r1.w, l(32), t5.xyzw
          r7.x = gpuSkinBase[]..swiz;
          r7.y = gpuSkinBase[]..swiz;
          r7.z = gpuSkinBase[]..swiz;
          r7.w = gpuSkinBase[]..swiz;
            r1.w = dot(r7.xyz, v0.xyz);
            r1.w = r1.w + r7.w;
            r5.z = r1.w * v5.w + r5.z;
            r1.w = dot(r7.xyz, r0.xyz);
            r6.z = r1.w * v5.w + r6.z;
            r1.w = dot(r7.xyz, r1.xyz);
            r4.z = r1.w * v5.w + r4.z;
          }
        }
      }
      r1.w = dot(r6.xyz, r6.xyz);
      r1.w = rsqrt(r1.w);
      r0.xyz = r6.xyz * r1.www;
      r1.w = dot(r4.xyz, r4.xyz);
      r1.w = rsqrt(r1.w);
      r1.xyz = r4.xyz * r1.www;
    } else {
      r5.xyz = v0.xyz;
    }
  } else {
    r4.yw = (uint2)r3.xy;
    r4.x = v6.x;
    r4.z = 0;
    r6.xyzw = gpuSkinQuat.Load(r4.xyz).xyzw;
    r7.xyzw = gpuSkinQuat.Load(r4.xwz).xyzw;
    r2.yzw = gpuSkinPos.Load(r4.xyz).xyz;
    r3.xyw = gpuSkinPos.Load(r4.xwz).xyz;
    r8.xyz = gpuSkinBase.Load(r4.xzz).xyz;
    r7.xyzw = r7.xyzw + -r6.xyzw;
    r6.xyzw = r3.zzzz * r7.xyzw + r6.xyzw;
    r3.xyw = r3.xyw + -r2.yzw;
    r2.yzw = r3.zzz * r3.xyw + r2.yzw;
    r3.xyw = v0.xyz + -r8.xyz;
    r1.w = dot(r6.xyzw, r6.xyzw);
    r1.w = rsqrt(r1.w);
    r6.xyzw = r6.xyzw * r1.wwww;
    r7.xyz = r6.xyz + r6.xyz;
    r9.xyz = r7.xxx * r6.xzw;
    r1.w = r7.y * r6.w;
    r7.zw = r7.zz * r6.wz;
    r8.w = r6.y * r7.y + r7.w;
    r10.x = 1 + -r8.w;
    r11.x = r6.z * r7.x + -r1.w;
    r10.y = r6.y * r7.x + -r7.z;
    r12.xy = r6.yx * r7.xx + r7.zw;
    r12.z = r6.z * r7.y + -r9.z;
    r6.xyz = r6.zwy * r7.yyy + r9.zyx;
    r10.z = r6.y;
    r7.x = dot(r3.xyw, r10.xyz);
    r12.w = 1 + -r12.y;
    r7.y = dot(r3.xwy, r12.xzw);
    r11.yz = r6.xz * float2(1,-1) + float2(0,1);
    r7.z = dot(r3.xyw, r11.xyz);
    r6.x = dot(r0.xyz, r10.xyz);
    r6.y = dot(r0.xzy, r12.xzw);
    r6.z = dot(r0.xyz, r11.xyz);
    r9.x = dot(r1.xyz, r10.xyz);
    r9.y = dot(r1.xzy, r12.xzw);
    r9.z = dot(r1.xyz, r11.xyz);
    r3.xyw = r7.xyz + r8.xyz;
    r2.yzw = r3.xyw + r2.yzw;
    r5.xyz = v5.xxx * r2.yzw;
    r2.yzw = v5.xxx * r6.xyz;
    r3.xyw = v5.xxx * r9.xyz;
    r1.w = cmp(v5.y != 0.000000);
    if (r1.w != 0) {
      r4.x = v6.y;
      r6.xyzw = gpuSkinQuat.Load(r4.xyz).xyzw;
      r7.xyzw = gpuSkinQuat.Load(r4.xwz).xyzw;
      r8.xyz = gpuSkinPos.Load(r4.xyz).xyz;
      r9.xyz = gpuSkinPos.Load(r4.xwz).xyz;
      r10.xyz = gpuSkinBase.Load(r4.xzz).xyz;
      r7.xyzw = r7.xyzw + -r6.xyzw;
      r6.xyzw = r3.zzzz * r7.xyzw + r6.xyzw;
      r7.xyz = r9.xyz + -r8.xyz;
      r7.xyz = r3.zzz * r7.xyz + r8.xyz;
      r8.xyz = v0.xyz + -r10.xyz;
      r1.w = dot(r6.xyzw, r6.xyzw);
      r1.w = rsqrt(r1.w);
      r6.xyzw = r6.xyzw * r1.wwww;
      r9.xyz = r6.xyz + r6.xyz;
      r11.xyz = r9.xxx * r6.xzw;
      r1.w = r9.y * r6.w;
      r9.zw = r9.zz * r6.wz;
      r7.w = r6.y * r9.y + r9.w;
      r12.x = 1 + -r7.w;
      r13.x = r6.z * r9.x + -r1.w;
      r12.y = r6.y * r9.x + -r9.z;
      r14.xy = r6.yx * r9.xx + r9.zw;
      r14.z = r6.z * r9.y + -r11.z;
      r6.xyz = r6.zwy * r9.yyy + r11.zyx;
      r12.z = r6.y;
      r9.x = dot(r8.xyz, r12.xyz);
      r14.w = 1 + -r14.y;
      r9.y = dot(r8.xzy, r14.xzw);
      r13.yz = r6.xz * float2(1,-1) + float2(0,1);
      r9.z = dot(r8.xyz, r13.xyz);
      r6.x = dot(r0.xyz, r12.xyz);
      r6.y = dot(r0.xzy, r14.xzw);
      r6.z = dot(r0.xyz, r13.xyz);
      r8.x = dot(r1.xyz, r12.xyz);
      r8.y = dot(r1.xzy, r14.xzw);
      r8.z = dot(r1.xyz, r13.xyz);
      r9.xyz = r9.xyz + r10.xyz;
      r7.xyz = r9.xyz + r7.xyz;
      r5.xyz = r7.xyz * v5.yyy + r5.xyz;
      r2.yzw = r6.xyz * v5.yyy + r2.yzw;
      r3.xyw = r8.xyz * v5.yyy + r3.xyw;
      r1.w = cmp(v5.z != 0.000000);
      if (r1.w != 0) {
        r4.x = v6.z;
        r6.xyzw = gpuSkinQuat.Load(r4.xyz).xyzw;
        r7.xyzw = gpuSkinQuat.Load(r4.xwz).xyzw;
        r8.xyz = gpuSkinPos.Load(r4.xyz).xyz;
        r9.xyz = gpuSkinPos.Load(r4.xwz).xyz;
        r10.xyz = gpuSkinBase.Load(r4.xzz).xyz;
        r7.xyzw = r7.xyzw + -r6.xyzw;
        r6.xyzw = r3.zzzz * r7.xyzw + r6.xyzw;
        r7.xyz = r9.xyz + -r8.xyz;
        r7.xyz = r3.zzz * r7.xyz + r8.xyz;
        r8.xyz = v0.xyz + -r10.xyz;
        r1.w = dot(r6.xyzw, r6.xyzw);
        r1.w = rsqrt(r1.w);
        r6.xyzw = r6.xyzw * r1.wwww;
        r9.xyz = r6.xyz + r6.xyz;
        r11.xyz = r9.xxx * r6.xzw;
        r1.w = r9.y * r6.w;
        r9.zw = r9.zz * r6.wz;
        r7.w = r6.y * r9.y + r9.w;
        r12.x = 1 + -r7.w;
        r13.x = r6.z * r9.x + -r1.w;
        r12.y = r6.y * r9.x + -r9.z;
        r14.xy = r6.yx * r9.xx + r9.zw;
        r14.z = r6.z * r9.y + -r11.z;
        r6.xyz = r6.zwy * r9.yyy + r11.zyx;
        r12.z = r6.y;
        r9.x = dot(r8.xyz, r12.xyz);
        r14.w = 1 + -r14.y;
        r9.y = dot(r8.xzy, r14.xzw);
        r13.yz = r6.xz * float2(1,-1) + float2(0,1);
        r9.z = dot(r8.xyz, r13.xyz);
        r6.x = dot(r0.xyz, r12.xyz);
        r6.y = dot(r0.xzy, r14.xzw);
        r6.z = dot(r0.xyz, r13.xyz);
        r8.x = dot(r1.xyz, r12.xyz);
        r8.y = dot(r1.xzy, r14.xzw);
        r8.z = dot(r1.xyz, r13.xyz);
        r9.xyz = r9.xyz + r10.xyz;
        r7.xyz = r9.xyz + r7.xyz;
        r5.xyz = r7.xyz * v5.zzz + r5.xyz;
        r2.yzw = r6.xyz * v5.zzz + r2.yzw;
        r3.xyw = r8.xyz * v5.zzz + r3.xyw;
        r1.w = cmp(v5.w != 0.000000);
        if (r1.w != 0) {
          r4.x = v6.w;
          r6.xyzw = gpuSkinQuat.Load(r4.xyz).xyzw;
          r7.xyzw = gpuSkinQuat.Load(r4.xwz).xyzw;
          r8.xyz = gpuSkinPos.Load(r4.xyz).xyz;
          r9.xyz = gpuSkinPos.Load(r4.xwz).xyz;
          r4.xyz = gpuSkinBase.Load(r4.xzz).xyz;
          r7.xyzw = r7.xyzw + -r6.xyzw;
          r6.xyzw = r3.zzzz * r7.xyzw + r6.xyzw;
          r7.xyz = r9.xyz + -r8.xyz;
          r7.xyz = r3.zzz * r7.xyz + r8.xyz;
          r8.xyz = v0.xyz + -r4.xyz;
          r1.w = dot(r6.xyzw, r6.xyzw);
          r1.w = rsqrt(r1.w);
          r6.xyzw = r6.xyzw * r1.wwww;
          r9.xyz = r6.xyz + r6.xyz;
          r10.xyz = r9.xxx * r6.xzw;
          r1.w = r9.y * r6.w;
          r9.zw = r9.zz * r6.wz;
          r3.z = r6.y * r9.y + r9.w;
          r11.x = 1 + -r3.z;
          r12.x = r6.z * r9.x + -r1.w;
          r11.y = r6.y * r9.x + -r9.z;
          r13.xy = r6.yx * r9.xx + r9.zw;
          r13.z = r6.z * r9.y + -r10.z;
          r6.xyz = r6.zwy * r9.yyy + r10.zyx;
          r11.z = r6.y;
          r9.x = dot(r8.xyz, r11.xyz);
          r13.w = 1 + -r13.y;
          r9.y = dot(r8.xzy, r13.xzw);
          r12.yz = r6.xz * float2(1,-1) + float2(0,1);
          r9.z = dot(r8.xyz, r12.xyz);
          r6.x = dot(r0.xyz, r11.xyz);
          r6.y = dot(r0.xzy, r13.xzw);
          r6.z = dot(r0.xyz, r12.xyz);
          r8.x = dot(r1.xyz, r11.xyz);
          r8.y = dot(r1.xzy, r13.xzw);
          r8.z = dot(r1.xyz, r12.xyz);
          r4.xyz = r9.xyz + r4.xyz;
          r4.xyz = r4.xyz + r7.xyz;
          r5.xyz = r4.xyz * v5.www + r5.xyz;
          r2.yzw = r6.xyz * v5.www + r2.yzw;
          r3.xyw = r8.xyz * v5.www + r3.xyw;
        }
      }
    }
    r1.w = dot(r2.yzw, r2.yzw);
    r1.w = rsqrt(r1.w);
    r0.xyz = r2.yzw * r1.www;
    r1.w = dot(r3.xyw, r3.xyw);
    r1.w = rsqrt(r1.w);
    r1.xyz = r3.xyw * r1.www;
  }
  r2.yzw = r1.yzx * r0.zxy;
  r2.yzw = r0.yzx * r1.zxy + -r2.yzw;
  r2.yzw = r2.yzw * r0.www;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.w, v7.x, l(0), t4.xxxx
r0.w = gpuSkinBase[]..swiz;
  r0.w = (int)r0.w + (int)r2.x;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.w, l(0), t5.xyzw
r3.x = gpuSkinBase[]..swiz;
r3.y = gpuSkinBase[]..swiz;
r3.z = gpuSkinBase[]..swiz;
r3.w = gpuSkinBase[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.w, l(16), t5.xyzw
r4.x = gpuSkinBase[]..swiz;
r4.y = gpuSkinBase[]..swiz;
r4.z = gpuSkinBase[]..swiz;
r4.w = gpuSkinBase[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyzw, r0.w, l(32), t5.xyzw
r6.x = gpuSkinBase[]..swiz;
r6.y = gpuSkinBase[]..swiz;
r6.z = gpuSkinBase[]..swiz;
r6.w = gpuSkinBase[]..swiz;
  r7.x = r3.w;
  r7.y = r4.w;
  r7.z = r6.w;
  r7.xyw = -eyeOffset.xyz + r7.xyz;
  r5.w = 1;
  r3.w = r7.x;
  r8.x = dot(r5.xyzw, r3.xyzw);
  r4.w = r7.y;
  r8.y = dot(r5.xyzw, r4.xyzw);
  r7.xyz = r6.xyz;
  r8.z = dot(r5.xyzw, r7.xyzw);
  r5.x = dot(r0.xyz, r3.xyz);
  r5.y = dot(r0.xyz, r4.xyz);
  r5.z = dot(r0.xyz, r7.xyz);
  r0.x = dot(r5.xyz, r5.xyz);
  r0.x = rsqrt(r0.x);
  o3.xyz = r5.xyz * r0.xxx;
  r0.x = dot(r1.xyz, r3.xyz);
  r0.y = dot(r1.xyz, r4.xyz);
  r0.z = dot(r1.xyz, r7.xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o4.xyz = r0.xyz * r0.www;
  r0.x = dot(r2.yzw, r3.xyz);
  r0.y = dot(r2.yzw, r4.xyz);
  r0.z = dot(r2.yzw, r7.xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  r0.xyzw = viewProjectionMatrix._m10_m11_m12_m13 * r8.yyyy;
  r0.xyzw = r8.xxxx * viewProjectionMatrix._m00_m01_m02_m03 + r0.xyzw;
  r0.xyzw = r8.zzzz * viewProjectionMatrix._m20_m21_m22_m23 + r0.xyzw;
  o0.xyzw = viewProjectionMatrix._m30_m31_m32_m33 + r0.xyzw;
  o1.x = v1.w;
  p1.xy = v2.xy;
  o6.xyz = r8.xyz;
  o2.x = v7.x;
  return;
}