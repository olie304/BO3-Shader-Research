// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:42:45 2021

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
  float alphaRevealSoftEdge : packoffset(c10);
  float alphaRevealRamp : packoffset(c10.y);
  float2 revealScale : packoffset(c10.z);
  float3 colorTint : packoffset(c11);
  float baseNormalHeight : packoffset(c11.w);
  float2 glossRange : packoffset(c12);
  float2 rotateUVs : packoffset(c12.z);
  float2 scrollUVs : packoffset(c13);
  float2 scaleUVs : packoffset(c13.z);
  float2 offsetUVs : packoffset(c14);
  float2 zoomUVs : packoffset(c14.z);
  float zoomRate : packoffset(c15);
  float layerDepth : packoffset(c15.y);
  bool clampU : packoffset(c15.z);
  bool clampV : packoffset(c15.w);
  float2 flickerSeed : packoffset(c16);
  float flickerSpeed : packoffset(c16.z);
  float2 flickerRange : packoffset(c17);
  float flickerPower : packoffset(c17.z);
  float hdrScale : packoffset(c17.w);
  float emissiveFalloffPower : packoffset(c18);
  bool invertFalloff : packoffset(c18.y);
  float shieldCushion : packoffset(c18.z);
  float shieldOpacity : packoffset(c18.w);
  float warpPixels : packoffset(c19);
  float2 normalScale : packoffset(c19.y);
  float2 normalScroll : packoffset(c20);
  float4 scanlineConsts : packoffset(c21);
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
  float4 v4 : TANGENT0,
  float4 v5 : BLENDWEIGHT0,
  uint4 v6 : BLENDINDICES0,
  uint v7 : TEXCOORD15,
  out float4 o0 : SV_POSITION0,
  out float3 o1 : COLOR0,
  out float p1 : COLOR1,
  out float2 o2 : TEXCOORD0,
  out float2 p2 : TEXCOORD9,
  out float3 o3 : UVOFFSETS0,
  out uint p3 : TEXCOORD4,
  out float3 o4 : TEXCOORD1,
  out float p4 : TEXCOORD11,
  out float4 o5 : TEXCOORD2,
  out float3 o6 : TEXCOORD3,
  out float3 o7 : OFFPOSITION0,
  out float3 o8 : TEXCOORD10)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t0, 384
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t4, 24
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t5, 64
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.xy, v7.x, l(0), t4.xyxx
r0.x = shaderConstantSetBuffer[]..swiz;
r0.y = shaderConstantSetBuffer[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.z, r0.y, l(48), t0.xxxx
r0.z = shaderConstantSetBuffer[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) o1.w, r0.y, l(64), t0.xxxx
r1.w = shaderConstantSetBuffer[]..swiz;
  r1.xyz = v3.xyz * float3(2.00195694,2.00195694,2.00195694) + float3(-1.00195694,-1.00195694,-1.00195694);
  r2.xyz = shieldCushion * r1.xyz;
  r0.yzw = r2.xyz * r0.zzz;
  r0.yzw = r0.yzw * v1.www + v0.xyz;
  r2.xyzw = r0.wzyw * r1.xxyy;
  r3.xy = r0.yz * r1.zz;
  r2.xyzw = float4(0.013888889,0.013888889,0.013888889,0.013888889) * r2.xyzw;
  r2.xy = r2.xy + r2.zw;
  p2.xy = r3.xy * float2(0.013888889,0.013888889) + r2.xy;
  r2.xyz = v4.xyz * float3(2.00195694,2.00195694,2.00195694) + float3(-1.00195694,-1.00195694,-1.00195694);
  r1.w = v4.w * 2 + -1;
  if (r0.x != 0) {
    r2.w = cmp(v5.x != 0.000000);
    if (r2.w != 0) {
      r2.w = (int)r0.x + (int)v6.x;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r2.w, l(0), t5.xyzw
    r3.x = shaderConstantSetBuffer[]..swiz;
    r3.y = shaderConstantSetBuffer[]..swiz;
    r3.z = shaderConstantSetBuffer[]..swiz;
    r3.w = shaderConstantSetBuffer[]..swiz;
      r4.x = dot(r3.xyz, r0.yzw);
      r3.w = r4.x + r3.w;
      r4.x = v5.x * r3.w;
      r3.w = dot(r3.xyz, r1.xyz);
      r5.x = v5.x * r3.w;
      r3.x = dot(r3.xyz, r2.xyz);
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyzw, r2.w, l(16), t5.xyzw
    r6.x = shaderConstantSetBuffer[]..swiz;
    r6.y = shaderConstantSetBuffer[]..swiz;
    r6.z = shaderConstantSetBuffer[]..swiz;
    r6.w = shaderConstantSetBuffer[]..swiz;
      r3.w = dot(r6.xyz, r0.yzw);
      r3.w = r3.w + r6.w;
      r4.y = v5.x * r3.w;
      r3.w = dot(r6.xyz, r1.xyz);
      r5.y = v5.x * r3.w;
      r3.w = dot(r6.xyz, r2.xyz);
      r3.xy = v5.xx * r3.xw;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyzw, r2.w, l(32), t5.xyzw
    r6.x = shaderConstantSetBuffer[]..swiz;
    r6.y = shaderConstantSetBuffer[]..swiz;
    r6.z = shaderConstantSetBuffer[]..swiz;
    r6.w = shaderConstantSetBuffer[]..swiz;
      r2.w = dot(r6.xyz, r0.yzw);
      r2.w = r2.w + r6.w;
      r4.z = v5.x * r2.w;
      r2.w = dot(r6.xyz, r1.xyz);
      r5.z = v5.x * r2.w;
      r2.w = dot(r6.xyz, r2.xyz);
      r3.z = v5.x * r2.w;
      r2.w = cmp(v5.y != 0.000000);
      if (r2.w != 0) {
        r2.w = (int)r0.x + (int)v6.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyzw, r2.w, l(0), t5.xyzw
      r6.x = shaderConstantSetBuffer[]..swiz;
      r6.y = shaderConstantSetBuffer[]..swiz;
      r6.z = shaderConstantSetBuffer[]..swiz;
      r6.w = shaderConstantSetBuffer[]..swiz;
        r3.w = dot(r6.xyz, r0.yzw);
        r3.w = r3.w + r6.w;
        r4.x = r3.w * v5.y + r4.x;
        r3.w = dot(r6.xyz, r1.xyz);
        r5.x = r3.w * v5.y + r5.x;
        r3.w = dot(r6.xyz, r2.xyz);
        r3.x = r3.w * v5.y + r3.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyzw, r2.w, l(16), t5.xyzw
      r6.x = shaderConstantSetBuffer[]..swiz;
      r6.y = shaderConstantSetBuffer[]..swiz;
      r6.z = shaderConstantSetBuffer[]..swiz;
      r6.w = shaderConstantSetBuffer[]..swiz;
        r3.w = dot(r6.xyz, r0.yzw);
        r3.w = r3.w + r6.w;
        r4.y = r3.w * v5.y + r4.y;
        r3.w = dot(r6.xyz, r1.xyz);
        r5.y = r3.w * v5.y + r5.y;
        r3.w = dot(r6.xyz, r2.xyz);
        r3.y = r3.w * v5.y + r3.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyzw, r2.w, l(32), t5.xyzw
      r6.x = shaderConstantSetBuffer[]..swiz;
      r6.y = shaderConstantSetBuffer[]..swiz;
      r6.z = shaderConstantSetBuffer[]..swiz;
      r6.w = shaderConstantSetBuffer[]..swiz;
        r2.w = dot(r6.xyz, r0.yzw);
        r2.w = r2.w + r6.w;
        r4.z = r2.w * v5.y + r4.z;
        r2.w = dot(r6.xyz, r1.xyz);
        r5.z = r2.w * v5.y + r5.z;
        r2.w = dot(r6.xyz, r2.xyz);
        r3.z = r2.w * v5.y + r3.z;
        r2.w = cmp(v5.z != 0.000000);
        if (r2.w != 0) {
          r2.w = (int)r0.x + (int)v6.z;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyzw, r2.w, l(0), t5.xyzw
        r6.x = shaderConstantSetBuffer[]..swiz;
        r6.y = shaderConstantSetBuffer[]..swiz;
        r6.z = shaderConstantSetBuffer[]..swiz;
        r6.w = shaderConstantSetBuffer[]..swiz;
          r3.w = dot(r6.xyz, r0.yzw);
          r3.w = r3.w + r6.w;
          r4.x = r3.w * v5.z + r4.x;
          r3.w = dot(r6.xyz, r1.xyz);
          r5.x = r3.w * v5.z + r5.x;
          r3.w = dot(r6.xyz, r2.xyz);
          r3.x = r3.w * v5.z + r3.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyzw, r2.w, l(16), t5.xyzw
        r6.x = shaderConstantSetBuffer[]..swiz;
        r6.y = shaderConstantSetBuffer[]..swiz;
        r6.z = shaderConstantSetBuffer[]..swiz;
        r6.w = shaderConstantSetBuffer[]..swiz;
          r3.w = dot(r6.xyz, r0.yzw);
          r3.w = r3.w + r6.w;
          r4.y = r3.w * v5.z + r4.y;
          r3.w = dot(r6.xyz, r1.xyz);
          r5.y = r3.w * v5.z + r5.y;
          r3.w = dot(r6.xyz, r2.xyz);
          r3.y = r3.w * v5.z + r3.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyzw, r2.w, l(32), t5.xyzw
        r6.x = shaderConstantSetBuffer[]..swiz;
        r6.y = shaderConstantSetBuffer[]..swiz;
        r6.z = shaderConstantSetBuffer[]..swiz;
        r6.w = shaderConstantSetBuffer[]..swiz;
          r2.w = dot(r6.xyz, r0.yzw);
          r2.w = r2.w + r6.w;
          r4.z = r2.w * v5.z + r4.z;
          r2.w = dot(r6.xyz, r1.xyz);
          r5.z = r2.w * v5.z + r5.z;
          r2.w = dot(r6.xyz, r2.xyz);
          r3.z = r2.w * v5.z + r3.z;
          r2.w = cmp(v5.w != 0.000000);
          if (r2.w != 0) {
            r0.x = (int)r0.x + (int)v6.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyzw, r0.x, l(0), t5.xyzw
          r6.x = shaderConstantSetBuffer[]..swiz;
          r6.y = shaderConstantSetBuffer[]..swiz;
          r6.z = shaderConstantSetBuffer[]..swiz;
          r6.w = shaderConstantSetBuffer[]..swiz;
            r2.w = dot(r6.xyz, r0.yzw);
            r2.w = r2.w + r6.w;
            r4.x = r2.w * v5.w + r4.x;
            r2.w = dot(r6.xyz, r1.xyz);
            r5.x = r2.w * v5.w + r5.x;
            r2.w = dot(r6.xyz, r2.xyz);
            r3.x = r2.w * v5.w + r3.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyzw, r0.x, l(16), t5.xyzw
          r6.x = shaderConstantSetBuffer[]..swiz;
          r6.y = shaderConstantSetBuffer[]..swiz;
          r6.z = shaderConstantSetBuffer[]..swiz;
          r6.w = shaderConstantSetBuffer[]..swiz;
            r2.w = dot(r6.xyz, r0.yzw);
            r2.w = r2.w + r6.w;
            r4.y = r2.w * v5.w + r4.y;
            r2.w = dot(r6.xyz, r1.xyz);
            r5.y = r2.w * v5.w + r5.y;
            r2.w = dot(r6.xyz, r2.xyz);
            r3.y = r2.w * v5.w + r3.y;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyzw, r0.x, l(32), t5.xyzw
          r6.x = shaderConstantSetBuffer[]..swiz;
          r6.y = shaderConstantSetBuffer[]..swiz;
          r6.z = shaderConstantSetBuffer[]..swiz;
          r6.w = shaderConstantSetBuffer[]..swiz;
            r0.x = dot(r6.xyz, r0.yzw);
            r0.x = r0.x + r6.w;
            r4.z = r0.x * v5.w + r4.z;
            r0.x = dot(r6.xyz, r1.xyz);
            r5.z = r0.x * v5.w + r5.z;
            r0.x = dot(r6.xyz, r2.xyz);
            r3.z = r0.x * v5.w + r3.z;
          }
        }
      }
    } else {
      r4.xyz = float3(0,0,0);
      r5.xyz = float3(0,0,0);
      r3.xyz = float3(0,0,0);
    }
    r0.x = dot(r5.xyz, r5.xyz);
    r0.x = rsqrt(r0.x);
    r1.xyz = r5.xyz * r0.xxx;
    r0.x = dot(r3.xyz, r3.xyz);
    r0.x = rsqrt(r0.x);
    r2.xyz = r3.xyz * r0.xxx;
  } else {
    r4.xyz = r0.yzw;
  }
  r3.xyz = r2.yzx * r1.zxy;
  r3.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r3.xyz = r3.xyz * r1.www;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.x, v7.x, l(12), t4.xxxx
r0.x = shaderConstantSetBuffer[]..swiz;
  if (r0.x != 0) {
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r0.x, l(0), t5.xyzw
  r5.x = shaderConstantSetBuffer[]..swiz;
  r5.y = shaderConstantSetBuffer[]..swiz;
  r5.z = shaderConstantSetBuffer[]..swiz;
  r5.w = shaderConstantSetBuffer[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyzw, r0.x, l(16), t5.xyzw
  r6.x = shaderConstantSetBuffer[]..swiz;
  r6.y = shaderConstantSetBuffer[]..swiz;
  r6.z = shaderConstantSetBuffer[]..swiz;
  r6.w = shaderConstantSetBuffer[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r0.x, l(32), t5.xywz
  r7.x = shaderConstantSetBuffer[]..swiz;
  r7.y = shaderConstantSetBuffer[]..swiz;
  r7.z = shaderConstantSetBuffer[]..swiz;
  r7.w = shaderConstantSetBuffer[]..swiz;
    r8.xyz = r7.xyw;
    r7.x = r5.w;
    r7.y = r6.w;
  } else {
    r5.xyz = float3(1,0,0);
    r6.xyz = float3(0,1,0);
    r8.xyz = float3(0,0,1);
    r7.xyz = float3(0,0,0);
  }
  r7.xyz = -eyeOffset.xyz + r7.xyz;
  r4.w = 1;
  r5.w = r7.x;
  r9.x = dot(r4.xyzw, r5.xyzw);
  r6.w = r7.y;
  r9.y = dot(r4.xyzw, r6.xyzw);
  r8.w = r7.z;
  r9.z = dot(r4.xyzw, r8.xyzw);
  r4.x = dot(r1.xyz, r5.xyz);
  r4.y = dot(r1.xyz, r6.xyz);
  r4.z = dot(r1.xyz, r8.xyz);
  r1.x = dot(r4.xyz, r4.xyz);
  r1.x = rsqrt(r1.x);
  o4.xyz = r4.xyz * r1.xxx;
  r1.x = dot(r2.xyz, r5.xyz);
  r1.y = dot(r2.xyz, r6.xyz);
  r1.z = dot(r2.xyz, r8.xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o5.xyz = r1.xyz * r1.www;
  r1.x = dot(r3.xyz, r5.xyz);
  r1.y = dot(r3.xyz, r6.xyz);
  r1.z = dot(r3.xyz, r8.xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  r1.xyzw = viewProjectionMatrix._m10_m11_m12_m13 * r9.yyyy;
  r1.xyzw = r9.xxxx * viewProjectionMatrix._m00_m01_m02_m03 + r1.xyzw;
  r1.xyzw = r9.zzzz * viewProjectionMatrix._m20_m21_m22_m23 + r1.xyzw;
  o0.xyzw = viewProjectionMatrix._m30_m31_m32_m33 + r1.xyzw;
  r1.xyz = log2(abs(v1.xyz));
  r1.xyz = float3(2.20000005,2.20000005,2.20000005) * r1.xyz;
  o1.xyz = exp2(r1.xyz);
  if (r0.x != 0) {
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.x, r0.x, l(12), t5.xxxx
  r1.x = shaderConstantSetBuffer[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.y, r0.x, l(28), t5.xxxx
  r1.y = shaderConstantSetBuffer[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.z, r0.x, l(44), t5.xxxx
  r1.z = shaderConstantSetBuffer[]..swiz;
  } else {
    r1.xyz = float3(0,0,0);
  }
  r1.xyz = float3(0.100000001,0.100000001,0.100000001) * r1.xyz;
  o3.xyz = frac(r1.xyz);
  o2.xy = v2.xy;
  p3.x = v7.x;
  p4.x = v1.w;
  o7.xyz = r9.xyz;
  o8.xyz = r0.yzw;
  return;
}