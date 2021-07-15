// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:20 2021

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
  float4 v4 : BLENDWEIGHT0,
  uint4 v5 : BLENDINDICES0,
  uint v6 : TEXCOORD15,
  out float4 o0 : SV_POSITION0,
  out float o1 : COLOR0,
  out float2 p1 : TEXCOORD0,
  out float3 o2 : TEXCOORD1)
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

  r0.xyz = v3.xyz * float3(2.00195694,2.00195694,2.00195694) + float3(-1.00195694,-1.00195694,-1.00195694);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r1.xy, v6.x, l(0), t4.xyxx
r1.x = shaderConstantSetBuffer[]..swiz;
r1.y = shaderConstantSetBuffer[]..swiz;
  if (r1.x != 0) {
    r0.w = cmp(v4.x != 0.000000);
    if (r0.w != 0) {
      r0.w = (int)r1.x + (int)v5.x;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r0.w, l(0), t5.xyzw
    r2.x = shaderConstantSetBuffer[]..swiz;
    r2.y = shaderConstantSetBuffer[]..swiz;
    r2.z = shaderConstantSetBuffer[]..swiz;
    r2.w = shaderConstantSetBuffer[]..swiz;
      r1.z = dot(r2.xyz, v0.xyz);
      r1.z = r1.z + r2.w;
      r3.x = v4.x * r1.z;
      r1.z = dot(r2.xyz, r0.xyz);
      r2.x = v4.x * r1.z;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.w, l(16), t5.xyzw
    r4.x = shaderConstantSetBuffer[]..swiz;
    r4.y = shaderConstantSetBuffer[]..swiz;
    r4.z = shaderConstantSetBuffer[]..swiz;
    r4.w = shaderConstantSetBuffer[]..swiz;
      r1.z = dot(r4.xyz, v0.xyz);
      r1.z = r1.z + r4.w;
      r3.y = v4.x * r1.z;
      r1.z = dot(r4.xyz, r0.xyz);
      r2.y = v4.x * r1.z;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.w, l(32), t5.xyzw
    r4.x = shaderConstantSetBuffer[]..swiz;
    r4.y = shaderConstantSetBuffer[]..swiz;
    r4.z = shaderConstantSetBuffer[]..swiz;
    r4.w = shaderConstantSetBuffer[]..swiz;
      r0.w = dot(r4.xyz, v0.xyz);
      r0.w = r0.w + r4.w;
      r3.z = v4.x * r0.w;
      r0.w = dot(r4.xyz, r0.xyz);
      r2.z = v4.x * r0.w;
      r0.w = cmp(v4.y != 0.000000);
      if (r0.w != 0) {
        r0.w = (int)r1.x + (int)v5.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.w, l(0), t5.xyzw
      r4.x = shaderConstantSetBuffer[]..swiz;
      r4.y = shaderConstantSetBuffer[]..swiz;
      r4.z = shaderConstantSetBuffer[]..swiz;
      r4.w = shaderConstantSetBuffer[]..swiz;
        r1.z = dot(r4.xyz, v0.xyz);
        r1.z = r1.z + r4.w;
        r3.x = r1.z * v4.y + r3.x;
        r1.z = dot(r4.xyz, r0.xyz);
        r2.x = r1.z * v4.y + r2.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.w, l(16), t5.xyzw
      r4.x = shaderConstantSetBuffer[]..swiz;
      r4.y = shaderConstantSetBuffer[]..swiz;
      r4.z = shaderConstantSetBuffer[]..swiz;
      r4.w = shaderConstantSetBuffer[]..swiz;
        r1.z = dot(r4.xyz, v0.xyz);
        r1.z = r1.z + r4.w;
        r3.y = r1.z * v4.y + r3.y;
        r1.z = dot(r4.xyz, r0.xyz);
        r2.y = r1.z * v4.y + r2.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.w, l(32), t5.xyzw
      r4.x = shaderConstantSetBuffer[]..swiz;
      r4.y = shaderConstantSetBuffer[]..swiz;
      r4.z = shaderConstantSetBuffer[]..swiz;
      r4.w = shaderConstantSetBuffer[]..swiz;
        r0.w = dot(r4.xyz, v0.xyz);
        r0.w = r0.w + r4.w;
        r3.z = r0.w * v4.y + r3.z;
        r0.w = dot(r4.xyz, r0.xyz);
        r2.z = r0.w * v4.y + r2.z;
        r0.w = cmp(v4.z != 0.000000);
        if (r0.w != 0) {
          r0.w = (int)r1.x + (int)v5.z;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.w, l(0), t5.xyzw
        r4.x = shaderConstantSetBuffer[]..swiz;
        r4.y = shaderConstantSetBuffer[]..swiz;
        r4.z = shaderConstantSetBuffer[]..swiz;
        r4.w = shaderConstantSetBuffer[]..swiz;
          r1.z = dot(r4.xyz, v0.xyz);
          r1.z = r1.z + r4.w;
          r3.x = r1.z * v4.z + r3.x;
          r1.z = dot(r4.xyz, r0.xyz);
          r2.x = r1.z * v4.z + r2.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.w, l(16), t5.xyzw
        r4.x = shaderConstantSetBuffer[]..swiz;
        r4.y = shaderConstantSetBuffer[]..swiz;
        r4.z = shaderConstantSetBuffer[]..swiz;
        r4.w = shaderConstantSetBuffer[]..swiz;
          r1.z = dot(r4.xyz, v0.xyz);
          r1.z = r1.z + r4.w;
          r3.y = r1.z * v4.z + r3.y;
          r1.z = dot(r4.xyz, r0.xyz);
          r2.y = r1.z * v4.z + r2.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.w, l(32), t5.xyzw
        r4.x = shaderConstantSetBuffer[]..swiz;
        r4.y = shaderConstantSetBuffer[]..swiz;
        r4.z = shaderConstantSetBuffer[]..swiz;
        r4.w = shaderConstantSetBuffer[]..swiz;
          r0.w = dot(r4.xyz, v0.xyz);
          r0.w = r0.w + r4.w;
          r3.z = r0.w * v4.z + r3.z;
          r0.w = dot(r4.xyz, r0.xyz);
          r2.z = r0.w * v4.z + r2.z;
          r0.w = cmp(v4.w != 0.000000);
          if (r0.w != 0) {
            r0.w = (int)r1.x + (int)v5.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.w, l(0), t5.xyzw
          r4.x = shaderConstantSetBuffer[]..swiz;
          r4.y = shaderConstantSetBuffer[]..swiz;
          r4.z = shaderConstantSetBuffer[]..swiz;
          r4.w = shaderConstantSetBuffer[]..swiz;
            r1.x = dot(r4.xyz, v0.xyz);
            r1.x = r1.x + r4.w;
            r3.x = r1.x * v4.w + r3.x;
            r1.x = dot(r4.xyz, r0.xyz);
            r2.x = r1.x * v4.w + r2.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.w, l(16), t5.xyzw
          r4.x = shaderConstantSetBuffer[]..swiz;
          r4.y = shaderConstantSetBuffer[]..swiz;
          r4.z = shaderConstantSetBuffer[]..swiz;
          r4.w = shaderConstantSetBuffer[]..swiz;
            r1.x = dot(r4.xyz, v0.xyz);
            r1.x = r1.x + r4.w;
            r3.y = r1.x * v4.w + r3.y;
            r1.x = dot(r4.xyz, r0.xyz);
            r2.y = r1.x * v4.w + r2.y;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.w, l(32), t5.xyzw
          r4.x = shaderConstantSetBuffer[]..swiz;
          r4.y = shaderConstantSetBuffer[]..swiz;
          r4.z = shaderConstantSetBuffer[]..swiz;
          r4.w = shaderConstantSetBuffer[]..swiz;
            r0.w = dot(r4.xyz, v0.xyz);
            r0.w = r0.w + r4.w;
            r3.z = r0.w * v4.w + r3.z;
            r0.w = dot(r4.xyz, r0.xyz);
            r2.z = r0.w * v4.w + r2.z;
          }
        }
      }
    } else {
      r3.xyz = float3(0,0,0);
      r2.xyz = float3(0,0,0);
    }
    r0.w = dot(r2.xyz, r2.xyz);
    r0.w = rsqrt(r0.w);
    r0.xyz = r2.xyz * r0.www;
  } else {
    r3.xyz = v0.xyz;
  }
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.w, v6.x, l(12), t4.xxxx
r0.w = shaderConstantSetBuffer[]..swiz;
  if (r0.w != 0) {
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r0.w, l(0), t5.xyzw
  r2.x = shaderConstantSetBuffer[]..swiz;
  r2.y = shaderConstantSetBuffer[]..swiz;
  r2.z = shaderConstantSetBuffer[]..swiz;
  r2.w = shaderConstantSetBuffer[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.w, l(16), t5.xyzw
  r4.x = shaderConstantSetBuffer[]..swiz;
  r4.y = shaderConstantSetBuffer[]..swiz;
  r4.z = shaderConstantSetBuffer[]..swiz;
  r4.w = shaderConstantSetBuffer[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r0.w, l(32), t5.xywz
  r5.x = shaderConstantSetBuffer[]..swiz;
  r5.y = shaderConstantSetBuffer[]..swiz;
  r5.z = shaderConstantSetBuffer[]..swiz;
  r5.w = shaderConstantSetBuffer[]..swiz;
    r6.xyz = r5.xyw;
    r5.x = r2.w;
    r5.y = r4.w;
  } else {
    r2.xyz = float3(1,0,0);
    r4.xyz = float3(0,1,0);
    r6.xyz = float3(0,0,1);
    r5.xyz = float3(0,0,0);
  }
  r1.xzw = -eyeOffset.xyz + r5.xyz;
  r3.w = 1;
  r2.w = r1.x;
  r1.x = dot(r3.xyzw, r2.xyzw);
  r4.w = r1.z;
  r1.z = dot(r3.xyzw, r4.xyzw);
  r6.w = r1.w;
  r1.w = dot(r3.xyzw, r6.xyzw);
  r2.xyzw = viewProjectionMatrix._m10_m11_m12_m13 * r1.zzzz;
  r2.xyzw = r1.xxxx * viewProjectionMatrix._m00_m01_m02_m03 + r2.xyzw;
  r2.xyzw = r1.wwww * viewProjectionMatrix._m20_m21_m22_m23 + r2.xyzw;
  o0.xyzw = viewProjectionMatrix._m30_m31_m32_m33 + r2.xyzw;
  if (r0.w != 0) {
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xzw, r0.w, l(0), t5.xxyz
  r1.x = shaderConstantSetBuffer[]..swiz;
  r1.z = shaderConstantSetBuffer[]..swiz;
  r1.w = shaderConstantSetBuffer[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyz, r0.w, l(16), t5.xyzx
  r2.x = shaderConstantSetBuffer[]..swiz;
  r2.y = shaderConstantSetBuffer[]..swiz;
  r2.z = shaderConstantSetBuffer[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyz, r0.w, l(32), t5.xyzx
  r3.x = shaderConstantSetBuffer[]..swiz;
  r3.y = shaderConstantSetBuffer[]..swiz;
  r3.z = shaderConstantSetBuffer[]..swiz;
  } else {
    r1.xzw = float3(1,0,0);
    r2.xyz = float3(0,1,0);
    r3.xyz = float3(0,0,1);
  }
  o2.x = dot(r0.xyz, r1.xzw);
  o2.y = dot(r0.xyz, r2.xyz);
  o2.z = dot(r0.xyz, r3.xyz);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.x, r1.y, l(0), t0.xxxx
r0.x = shaderConstantSetBuffer[]..swiz;
  o1.x = v1.w * 9.99999975e-05 + r0.x;
  p1.xy = v2.xy;
  return;
}