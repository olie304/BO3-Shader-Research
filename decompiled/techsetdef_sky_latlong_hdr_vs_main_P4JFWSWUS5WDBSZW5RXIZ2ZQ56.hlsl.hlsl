// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:27 2021

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
  float3 skyOrigin : packoffset(c10);
  float skyHorizonOffset : packoffset(c10.w);
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
  float4 v1 : BLENDWEIGHT0,
  uint4 v2 : BLENDINDICES0,
  uint v3 : TEXCOORD15,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float3 o3 : TEXCOORD2)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t4, 24
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t5, 64
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.x, v3.x, l(16), t4.xxxx
r0.x = gpuSkinBase[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, r0.x, l(48), t5.xyzw
r1.x = gpuSkinBase[]..swiz;
r1.y = gpuSkinBase[]..swiz;
r1.z = gpuSkinBase[]..swiz;
r1.w = gpuSkinBase[]..swiz;
  r0.xyzw = r0.xxxx ? r1.xyzw : float4(0,0,0,0);
  r1.x = cmp(0 != r0.w);
  if (r1.x != 0) {
    r0.w = (uint)r0.w;
    if (r0.w != 0) {
      r1.x = (int)r0.w + (int)v2.x;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r1.x, l(0), t5.xyzw
    r2.x = gpuSkinBase[]..swiz;
    r2.y = gpuSkinBase[]..swiz;
    r2.z = gpuSkinBase[]..swiz;
    r2.w = gpuSkinBase[]..swiz;
      r1.y = dot(r2.xyz, v0.xyz);
      r1.y = r1.y + r2.w;
      r2.x = v1.x * r1.y;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r1.x, l(16), t5.xyzw
    r3.x = gpuSkinBase[]..swiz;
    r3.y = gpuSkinBase[]..swiz;
    r3.z = gpuSkinBase[]..swiz;
    r3.w = gpuSkinBase[]..swiz;
      r1.y = dot(r3.xyz, v0.xyz);
      r1.y = r1.y + r3.w;
      r2.y = v1.x * r1.y;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, r1.x, l(32), t5.xyzw
    r1.x = gpuSkinBase[]..swiz;
    r1.y = gpuSkinBase[]..swiz;
    r1.z = gpuSkinBase[]..swiz;
    r1.w = gpuSkinBase[]..swiz;
      r1.x = dot(r1.xyz, v0.xyz);
      r1.x = r1.x + r1.w;
      r2.z = v1.x * r1.x;
      r1.x = cmp(v1.y != 0.000000);
      if (r1.x != 0) {
        r1.x = (int)r0.w + (int)v2.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r1.x, l(0), t5.xyzw
      r3.x = gpuSkinBase[]..swiz;
      r3.y = gpuSkinBase[]..swiz;
      r3.z = gpuSkinBase[]..swiz;
      r3.w = gpuSkinBase[]..swiz;
        r1.y = dot(r3.xyz, v0.xyz);
        r1.y = r1.y + r3.w;
        r2.x = r1.y * v1.y + r2.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r1.x, l(16), t5.xyzw
      r3.x = gpuSkinBase[]..swiz;
      r3.y = gpuSkinBase[]..swiz;
      r3.z = gpuSkinBase[]..swiz;
      r3.w = gpuSkinBase[]..swiz;
        r1.y = dot(r3.xyz, v0.xyz);
        r1.y = r1.y + r3.w;
        r2.y = r1.y * v1.y + r2.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, r1.x, l(32), t5.xyzw
      r1.x = gpuSkinBase[]..swiz;
      r1.y = gpuSkinBase[]..swiz;
      r1.z = gpuSkinBase[]..swiz;
      r1.w = gpuSkinBase[]..swiz;
        r1.x = dot(r1.xyz, v0.xyz);
        r1.x = r1.x + r1.w;
        r2.z = r1.x * v1.y + r2.z;
        r1.x = cmp(v1.z != 0.000000);
        if (r1.x != 0) {
          r1.x = (int)r0.w + (int)v2.z;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r1.x, l(0), t5.xyzw
        r3.x = gpuSkinBase[]..swiz;
        r3.y = gpuSkinBase[]..swiz;
        r3.z = gpuSkinBase[]..swiz;
        r3.w = gpuSkinBase[]..swiz;
          r1.y = dot(r3.xyz, v0.xyz);
          r1.y = r1.y + r3.w;
          r2.x = r1.y * v1.z + r2.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r1.x, l(16), t5.xyzw
        r3.x = gpuSkinBase[]..swiz;
        r3.y = gpuSkinBase[]..swiz;
        r3.z = gpuSkinBase[]..swiz;
        r3.w = gpuSkinBase[]..swiz;
          r1.y = dot(r3.xyz, v0.xyz);
          r1.y = r1.y + r3.w;
          r2.y = r1.y * v1.z + r2.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, r1.x, l(32), t5.xyzw
        r1.x = gpuSkinBase[]..swiz;
        r1.y = gpuSkinBase[]..swiz;
        r1.z = gpuSkinBase[]..swiz;
        r1.w = gpuSkinBase[]..swiz;
          r1.x = dot(r1.xyz, v0.xyz);
          r1.x = r1.x + r1.w;
          r2.z = r1.x * v1.z + r2.z;
          r1.x = cmp(v1.w != 0.000000);
          if (r1.x != 0) {
            r0.w = (int)r0.w + (int)v2.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, r0.w, l(0), t5.xyzw
          r1.x = gpuSkinBase[]..swiz;
          r1.y = gpuSkinBase[]..swiz;
          r1.z = gpuSkinBase[]..swiz;
          r1.w = gpuSkinBase[]..swiz;
            r1.x = dot(r1.xyz, v0.xyz);
            r1.x = r1.x + r1.w;
            r2.x = r1.x * v1.w + r2.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, r0.w, l(16), t5.xyzw
          r1.x = gpuSkinBase[]..swiz;
          r1.y = gpuSkinBase[]..swiz;
          r1.z = gpuSkinBase[]..swiz;
          r1.w = gpuSkinBase[]..swiz;
            r1.x = dot(r1.xyz, v0.xyz);
            r1.x = r1.x + r1.w;
            r2.y = r1.x * v1.w + r2.y;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, r0.w, l(32), t5.xyzw
          r1.x = gpuSkinBase[]..swiz;
          r1.y = gpuSkinBase[]..swiz;
          r1.z = gpuSkinBase[]..swiz;
          r1.w = gpuSkinBase[]..swiz;
            r0.w = dot(r1.xyz, v0.xyz);
            r0.w = r0.w + r1.w;
            r2.z = r0.w * v1.w + r2.z;
          }
        }
      }
    } else {
      r2.xyz = v0.xyz;
    }
  } else {
    r1.yw = (uint2)r0.xy;
    r1.x = v2.x;
    r1.z = 0;
    r3.xyzw = gpuSkinQuat.Load(r1.xyz).xyzw;
    r4.xyzw = gpuSkinQuat.Load(r1.xwz).xyzw;
    r0.xyw = gpuSkinPos.Load(r1.xyz).xyz;
    r5.xyz = gpuSkinPos.Load(r1.xwz).xyz;
    r6.xyz = gpuSkinBase.Load(r1.xzz).xyz;
    r4.xyzw = r4.xyzw + -r3.xyzw;
    r3.xyzw = r0.zzzz * r4.xyzw + r3.xyzw;
    r4.xyz = r5.xyz + -r0.xyw;
    r0.xyw = r0.zzz * r4.xyz + r0.xyw;
    r4.xyz = v0.xyz + -r6.xyz;
    r2.w = dot(r3.xyzw, r3.xyzw);
    r2.w = rsqrt(r2.w);
    r3.xyzw = r3.xyzw * r2.wwww;
    r5.xyz = r3.xyz + r3.xyz;
    r7.xyz = r5.xxx * r3.xzw;
    r2.w = r5.y * r3.w;
    r5.zw = r5.zz * r3.wz;
    r4.w = r3.y * r5.y + r5.w;
    r8.x = 1 + -r4.w;
    r9.x = r3.z * r5.x + -r2.w;
    r8.y = r3.y * r5.x + -r5.z;
    r10.xy = r3.yx * r5.xx + r5.zw;
    r10.z = r3.z * r5.y + -r7.z;
    r3.xyz = r3.zwy * r5.yyy + r7.zyx;
    r8.z = r3.y;
    r5.x = dot(r4.xyz, r8.xyz);
    r10.w = 1 + -r10.y;
    r5.y = dot(r4.xzy, r10.xzw);
    r9.yz = r3.xz * float2(1,-1) + float2(0,1);
    r5.z = dot(r4.xyz, r9.xyz);
    r3.xyz = r5.xyz + r6.xyz;
    r0.xyw = r3.xyz + r0.xyw;
    r2.xyz = v1.xxx * r0.xyw;
    r0.x = cmp(v1.y != 0.000000);
    if (r0.x != 0) {
      r1.x = v2.y;
      r3.xyzw = gpuSkinQuat.Load(r1.xyz).xyzw;
      r4.xyzw = gpuSkinQuat.Load(r1.xwz).xyzw;
      r0.xyw = gpuSkinPos.Load(r1.xyz).xyz;
      r5.xyz = gpuSkinPos.Load(r1.xwz).xyz;
      r6.xyz = gpuSkinBase.Load(r1.xzz).xyz;
      r4.xyzw = r4.xyzw + -r3.xyzw;
      r3.xyzw = r0.zzzz * r4.xyzw + r3.xyzw;
      r4.xyz = r5.xyz + -r0.xyw;
      r0.xyw = r0.zzz * r4.xyz + r0.xyw;
      r4.xyz = v0.xyz + -r6.xyz;
      r2.w = dot(r3.xyzw, r3.xyzw);
      r2.w = rsqrt(r2.w);
      r3.xyzw = r3.xyzw * r2.wwww;
      r5.xyz = r3.xyz + r3.xyz;
      r7.xyz = r5.xxx * r3.xzw;
      r2.w = r5.y * r3.w;
      r5.zw = r5.zz * r3.wz;
      r4.w = r3.y * r5.y + r5.w;
      r8.x = 1 + -r4.w;
      r9.x = r3.z * r5.x + -r2.w;
      r8.y = r3.y * r5.x + -r5.z;
      r10.xy = r3.yx * r5.xx + r5.zw;
      r10.z = r3.z * r5.y + -r7.z;
      r3.xyz = r3.zwy * r5.yyy + r7.zyx;
      r8.z = r3.y;
      r5.x = dot(r4.xyz, r8.xyz);
      r10.w = 1 + -r10.y;
      r5.y = dot(r4.xzy, r10.xzw);
      r9.yz = r3.xz * float2(1,-1) + float2(0,1);
      r5.z = dot(r4.xyz, r9.xyz);
      r3.xyz = r5.xyz + r6.xyz;
      r0.xyw = r3.xyz + r0.xyw;
      r2.xyz = r0.xyw * v1.yyy + r2.xyz;
      r0.x = cmp(v1.z != 0.000000);
      if (r0.x != 0) {
        r1.x = v2.z;
        r3.xyzw = gpuSkinQuat.Load(r1.xyz).xyzw;
        r4.xyzw = gpuSkinQuat.Load(r1.xwz).xyzw;
        r0.xyw = gpuSkinPos.Load(r1.xyz).xyz;
        r5.xyz = gpuSkinPos.Load(r1.xwz).xyz;
        r6.xyz = gpuSkinBase.Load(r1.xzz).xyz;
        r4.xyzw = r4.xyzw + -r3.xyzw;
        r3.xyzw = r0.zzzz * r4.xyzw + r3.xyzw;
        r4.xyz = r5.xyz + -r0.xyw;
        r0.xyw = r0.zzz * r4.xyz + r0.xyw;
        r4.xyz = v0.xyz + -r6.xyz;
        r2.w = dot(r3.xyzw, r3.xyzw);
        r2.w = rsqrt(r2.w);
        r3.xyzw = r3.xyzw * r2.wwww;
        r5.xyz = r3.xyz + r3.xyz;
        r7.xyz = r5.xxx * r3.xzw;
        r2.w = r5.y * r3.w;
        r5.zw = r5.zz * r3.wz;
        r4.w = r3.y * r5.y + r5.w;
        r8.x = 1 + -r4.w;
        r9.x = r3.z * r5.x + -r2.w;
        r8.y = r3.y * r5.x + -r5.z;
        r10.xy = r3.yx * r5.xx + r5.zw;
        r10.z = r3.z * r5.y + -r7.z;
        r3.xyz = r3.zwy * r5.yyy + r7.zyx;
        r8.z = r3.y;
        r5.x = dot(r4.xyz, r8.xyz);
        r10.w = 1 + -r10.y;
        r5.y = dot(r4.xzy, r10.xzw);
        r9.yz = r3.xz * float2(1,-1) + float2(0,1);
        r5.z = dot(r4.xyz, r9.xyz);
        r3.xyz = r5.xyz + r6.xyz;
        r0.xyw = r3.xyz + r0.xyw;
        r2.xyz = r0.xyw * v1.zzz + r2.xyz;
        r0.x = cmp(v1.w != 0.000000);
        if (r0.x != 0) {
          r1.x = v2.w;
          r3.xyzw = gpuSkinQuat.Load(r1.xyz).xyzw;
          r4.xyzw = gpuSkinQuat.Load(r1.xwz).xyzw;
          r0.xyw = gpuSkinPos.Load(r1.xyz).xyz;
          r5.xyz = gpuSkinPos.Load(r1.xwz).xyz;
          r1.xyz = gpuSkinBase.Load(r1.xzz).xyz;
          r4.xyzw = r4.xyzw + -r3.xyzw;
          r3.xyzw = r0.zzzz * r4.xyzw + r3.xyzw;
          r4.xyz = r5.xyz + -r0.xyw;
          r0.xyz = r0.zzz * r4.xyz + r0.xyw;
          r4.xyz = v0.xyz + -r1.xyz;
          r0.w = dot(r3.xyzw, r3.xyzw);
          r0.w = rsqrt(r0.w);
          r3.xyzw = r3.xyzw * r0.wwww;
          r5.xyz = r3.xyz + r3.xyz;
          r6.xyz = r5.xxx * r3.xzw;
          r0.w = r5.y * r3.w;
          r5.zw = r5.zz * r3.wz;
          r1.w = r3.y * r5.y + r5.w;
          r7.x = 1 + -r1.w;
          r8.x = r3.z * r5.x + -r0.w;
          r7.y = r3.y * r5.x + -r5.z;
          r9.xy = r3.yx * r5.xx + r5.zw;
          r9.z = r3.z * r5.y + -r6.z;
          r3.xyz = r3.zwy * r5.yyy + r6.zyx;
          r7.z = r3.y;
          r5.x = dot(r4.xyz, r7.xyz);
          r9.w = 1 + -r9.y;
          r5.y = dot(r4.xzy, r9.xzw);
          r8.yz = r3.xz * float2(1,-1) + float2(0,1);
          r5.z = dot(r4.xyz, r8.xyz);
          r1.xyz = r5.xyz + r1.xyz;
          r0.xyz = r1.xyz + r0.xyz;
          r2.xyz = r0.xyz * v1.www + r2.xyz;
        }
      }
    }
  }
  r0.xyz = -eyeOffset.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = abs(skyRotationTransition.zzz) * r0.xyz;
  r2.xyz = viewProjectionMatrix._m10_m11_m13 * r1.yyy;
  r2.xyz = r1.xxx * viewProjectionMatrix._m00_m01_m03 + r2.xyz;
  r2.xyz = r1.zzz * viewProjectionMatrix._m20_m21_m23 + r2.xyz;
  o0.xyw = viewProjectionMatrix._m30_m31_m33 + r2.xyz;
  r2.xy = float2(1,-1) * skyRotationTransition.yx;
  o1.x = dot(r0.xy, r2.xy);
  o1.y = dot(r0.xy, skyRotationTransition.xy);
  r0.x = cmp(skyRotationTransition.z < 0);
  o1.z = r0.x ? -r0.z : r0.z;
  r0.xyz = eyeOffset.xyz + -skyOrigin.xyz;
  o3.x = dot(r0.xy, r2.xy);
  o3.y = dot(r0.xy, skyRotationTransition.xy);
  o0.z = 0;
  o2.xyz = r1.xyz;
  o3.z = r0.z;
  return;
}