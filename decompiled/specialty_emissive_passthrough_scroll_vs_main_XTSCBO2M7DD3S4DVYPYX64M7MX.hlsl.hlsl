// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:41:07 2021

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
  float2 rotateUVs : packoffset(c11.z);
  float2 scrollUVs : packoffset(c12);
  float2 scaleUVs : packoffset(c12.z);
  float2 offsetUVs : packoffset(c13);
  float2 zoomUVs : packoffset(c13.z);
  float zoomRate : packoffset(c14);
  float layerDepth : packoffset(c14.y);
  bool clampU : packoffset(c14.z);
  bool clampV : packoffset(c14.w);
  float2 flickerSeed : packoffset(c15);
  float flickerSpeed : packoffset(c15.z);
  float2 flickerRange : packoffset(c16);
  float flickerPower : packoffset(c16.z);
  float2 wind1Parms : packoffset(c17);
  float2 wind2Parms : packoffset(c17.z);
  float2 wind3Parms : packoffset(c18);
  uint zFeatherComputeSprites : packoffset(c18.z);
  float hdrScale : packoffset(c18.w);
  float emissiveFalloffPower : packoffset(c19);
  float3 emissiveTint1 : packoffset(c19.y);
  bool relativeHDR : packoffset(c20);
  bool invertFalloff : packoffset(c20.y);
  float3 scriptControl : packoffset(c21);
  float3 tint1 : packoffset(c22);
  float3 tint2 : packoffset(c23);
  float3 tint3 : packoffset(c24);
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
  float4 v5 : BLENDWEIGHT0,
  uint4 v6 : BLENDINDICES0,
  uint v7 : TEXCOORD15,
  out float4 o0 : SV_POSITION0,
  out float o1 : COLOR1,
  out float2 p1 : TEXCOORD0,
  out float3 o2 : UVOFFSETS0,
  out uint p2 : TEXCOORD4,
  out float4 o3 : TEXCOORD1,
  out float4 o4 : TEXCOORD2,
  out float3 o5 : TEXCOORD3,
  out float3 o6 : OFFPOSITION0)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t4, 24
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t5, 64
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = float2(1,1) + -v2.xy;
  r1.xyzw = wind1Parms.xyzw * r0.xyxy;
  r0.xy = wind3Parms.xy * r0.xy;
  r1.xyzw = float4(3.63189912,3.63189912,8.37758064,8.37758064) * r1.xyzw;
  r0.zw = r1.xz + r1.yw;
  r1.x = gameTime.w + flagParams.y;
  r1.x = flagParams.x * r1.x;
  r0.zw = r1.xx * float2(5.6548667,9.42477798) + r0.zw;
  r0.xy = float2(20.2683392,20.2683392) * r0.xy;
  r0.x = r0.x + r0.y;
  r0.x = r1.x * 7.53982306 + r0.x;
  sincos(r0.zw, r1.xy, r2.xy);
  r0.yz = float2(7.5,3) * r1.xy;
  r0.y = r0.y + r0.z;
  sincos(r0.x, r0.x, r1.x);
  r0.x = r0.x * 1.70000005 + r0.y;
  r0.x = v1.y * r0.x;
  r0.yzw = v3.xyz * float3(2.00195694,2.00195694,2.00195694) + float3(-1.00195694,-1.00195694,-1.00195694);
  r3.xyz = r0.xxx * r0.yzw + v0.xyz;
  r1.yzw = v4.xyz * float3(2.00195694,2.00195694,2.00195694) + float3(-1.00195694,-1.00195694,-1.00195694);
  r0.x = v4.w * 2 + -1;
  r4.xyz = r1.zwy * r0.wyz;
  r4.xyz = r0.zwy * r1.wyz + -r4.xyz;
  r4.xyz = r4.xyz * r0.xxx;
  r2.z = dot(r4.xyz, r4.xyz);
  r2.z = rsqrt(r2.z);
  r4.xyz = r4.xyz * r2.zzz;
  r2.zw = float2(27.2392426,25.1327419) * wind1Parms.xz;
  r5.xy = wind1Parms.yw * r2.xy;
  r2.xy = r2.zw * r2.xy;
  r2.zw = float2(27.2392426,25.1327419) * r5.xy;
  r4.w = 34.4561768 * wind3Parms.x;
  r5.x = wind3Parms.y * r1.x;
  r2.x = r2.x + r2.y;
  r1.x = r4.w * r1.x + r2.x;
  r1.x = v1.y * r1.x;
  r1.x = 0.0250000004 * r1.x;
  r2.x = r2.z + r2.w;
  r2.x = r5.x * 34.4561768 + r2.x;
  r2.x = v1.y * r2.x;
  r2.x = 0.0250000004 * r2.x;
  r2.xyz = r2.xxx * r4.xyz;
  r2.xyz = r1.xxx * r1.yzw + r2.xyz;
  r0.yzw = r2.xyz + r0.yzw;
  r1.x = dot(r0.yzw, r0.yzw);
  r1.x = rsqrt(r1.x);
  r0.yzw = r1.xxx * r0.yzw;
  r0.yzw = r0.yzw * float3(2.00195694,2.00195694,2.00195694) + float3(-1.00195694,-1.00195694,-1.00195694);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r1.x, v7.x, l(0), t4.xxxx
r1.x = modelInstanceBuffer[]..swiz;
  if (r1.x != 0) {
    r2.x = cmp(v5.x != 0.000000);
    if (r2.x != 0) {
      r2.x = (int)r1.x + (int)v6.x;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r2.x, l(0), t5.xyzw
    r4.x = modelInstanceBuffer[]..swiz;
    r4.y = modelInstanceBuffer[]..swiz;
    r4.z = modelInstanceBuffer[]..swiz;
    r4.w = modelInstanceBuffer[]..swiz;
      r2.y = dot(r4.xyz, r3.xyz);
      r2.y = r2.y + r4.w;
      r5.x = v5.x * r2.y;
      r2.y = dot(r4.xyz, r0.yzw);
      r6.x = v5.x * r2.y;
      r2.y = dot(r4.xyz, r1.yzw);
      r4.x = v5.x * r2.y;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r2.x, l(16), t5.xyzw
    r7.x = modelInstanceBuffer[]..swiz;
    r7.y = modelInstanceBuffer[]..swiz;
    r7.z = modelInstanceBuffer[]..swiz;
    r7.w = modelInstanceBuffer[]..swiz;
      r2.y = dot(r7.xyz, r3.xyz);
      r2.y = r2.y + r7.w;
      r5.y = v5.x * r2.y;
      r2.y = dot(r7.xyz, r0.yzw);
      r6.y = v5.x * r2.y;
      r2.y = dot(r7.xyz, r1.yzw);
      r4.y = v5.x * r2.y;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r2.x, l(32), t5.xyzw
    r2.x = modelInstanceBuffer[]..swiz;
    r2.y = modelInstanceBuffer[]..swiz;
    r2.z = modelInstanceBuffer[]..swiz;
    r2.w = modelInstanceBuffer[]..swiz;
      r4.w = dot(r2.xyz, r3.xyz);
      r2.w = r4.w + r2.w;
      r5.z = v5.x * r2.w;
      r2.w = dot(r2.xyz, r0.yzw);
      r6.z = v5.x * r2.w;
      r2.x = dot(r2.xyz, r1.yzw);
      r4.z = v5.x * r2.x;
      r2.x = cmp(v5.y != 0.000000);
      if (r2.x != 0) {
        r2.x = (int)r1.x + (int)v6.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r2.x, l(0), t5.xyzw
      r7.x = modelInstanceBuffer[]..swiz;
      r7.y = modelInstanceBuffer[]..swiz;
      r7.z = modelInstanceBuffer[]..swiz;
      r7.w = modelInstanceBuffer[]..swiz;
        r2.y = dot(r7.xyz, r3.xyz);
        r2.y = r2.y + r7.w;
        r8.x = r2.y * v5.y + r5.x;
        r2.y = dot(r7.xyz, r0.yzw);
        r6.x = r2.y * v5.y + r6.x;
        r2.y = dot(r7.xyz, r1.yzw);
        r4.x = r2.y * v5.y + r4.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r2.x, l(16), t5.xyzw
      r7.x = modelInstanceBuffer[]..swiz;
      r7.y = modelInstanceBuffer[]..swiz;
      r7.z = modelInstanceBuffer[]..swiz;
      r7.w = modelInstanceBuffer[]..swiz;
        r2.y = dot(r7.xyz, r3.xyz);
        r2.y = r2.y + r7.w;
        r8.y = r2.y * v5.y + r5.y;
        r2.y = dot(r7.xyz, r0.yzw);
        r6.y = r2.y * v5.y + r6.y;
        r2.y = dot(r7.xyz, r1.yzw);
        r4.y = r2.y * v5.y + r4.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r2.x, l(32), t5.xyzw
      r2.x = modelInstanceBuffer[]..swiz;
      r2.y = modelInstanceBuffer[]..swiz;
      r2.z = modelInstanceBuffer[]..swiz;
      r2.w = modelInstanceBuffer[]..swiz;
        r4.w = dot(r2.xyz, r3.xyz);
        r2.w = r4.w + r2.w;
        r8.z = r2.w * v5.y + r5.z;
        r2.w = dot(r2.xyz, r0.yzw);
        r6.z = r2.w * v5.y + r6.z;
        r2.x = dot(r2.xyz, r1.yzw);
        r4.z = r2.x * v5.y + r4.z;
        r2.x = cmp(v5.z != 0.000000);
        if (r2.x != 0) {
          r2.x = (int)r1.x + (int)v6.z;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r2.x, l(0), t5.xyzw
        r7.x = modelInstanceBuffer[]..swiz;
        r7.y = modelInstanceBuffer[]..swiz;
        r7.z = modelInstanceBuffer[]..swiz;
        r7.w = modelInstanceBuffer[]..swiz;
          r2.y = dot(r7.xyz, r3.xyz);
          r2.y = r2.y + r7.w;
          r9.x = r2.y * v5.z + r8.x;
          r2.y = dot(r7.xyz, r0.yzw);
          r6.x = r2.y * v5.z + r6.x;
          r2.y = dot(r7.xyz, r1.yzw);
          r4.x = r2.y * v5.z + r4.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r2.x, l(16), t5.xyzw
        r7.x = modelInstanceBuffer[]..swiz;
        r7.y = modelInstanceBuffer[]..swiz;
        r7.z = modelInstanceBuffer[]..swiz;
        r7.w = modelInstanceBuffer[]..swiz;
          r2.y = dot(r7.xyz, r3.xyz);
          r2.y = r2.y + r7.w;
          r9.y = r2.y * v5.z + r8.y;
          r2.y = dot(r7.xyz, r0.yzw);
          r6.y = r2.y * v5.z + r6.y;
          r2.y = dot(r7.xyz, r1.yzw);
          r4.y = r2.y * v5.z + r4.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r2.x, l(32), t5.xyzw
        r2.x = modelInstanceBuffer[]..swiz;
        r2.y = modelInstanceBuffer[]..swiz;
        r2.z = modelInstanceBuffer[]..swiz;
        r2.w = modelInstanceBuffer[]..swiz;
          r4.w = dot(r2.xyz, r3.xyz);
          r2.w = r4.w + r2.w;
          r9.z = r2.w * v5.z + r8.z;
          r2.w = dot(r2.xyz, r0.yzw);
          r6.z = r2.w * v5.z + r6.z;
          r2.x = dot(r2.xyz, r1.yzw);
          r4.z = r2.x * v5.z + r4.z;
          r2.x = cmp(v5.w != 0.000000);
          if (r2.x != 0) {
            r1.x = (int)r1.x + (int)v6.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r1.x, l(0), t5.xyzw
          r2.x = modelInstanceBuffer[]..swiz;
          r2.y = modelInstanceBuffer[]..swiz;
          r2.z = modelInstanceBuffer[]..swiz;
          r2.w = modelInstanceBuffer[]..swiz;
            r4.w = dot(r2.xyz, r3.xyz);
            r2.w = r4.w + r2.w;
            r7.x = r2.w * v5.w + r9.x;
            r2.w = dot(r2.xyz, r0.yzw);
            r6.x = r2.w * v5.w + r6.x;
            r2.x = dot(r2.xyz, r1.yzw);
            r4.x = r2.x * v5.w + r4.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r1.x, l(16), t5.xyzw
          r2.x = modelInstanceBuffer[]..swiz;
          r2.y = modelInstanceBuffer[]..swiz;
          r2.z = modelInstanceBuffer[]..swiz;
          r2.w = modelInstanceBuffer[]..swiz;
            r4.w = dot(r2.xyz, r3.xyz);
            r2.w = r4.w + r2.w;
            r7.y = r2.w * v5.w + r9.y;
            r2.w = dot(r2.xyz, r0.yzw);
            r6.y = r2.w * v5.w + r6.y;
            r2.x = dot(r2.xyz, r1.yzw);
            r4.y = r2.x * v5.w + r4.y;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r1.x, l(32), t5.xyzw
          r2.x = modelInstanceBuffer[]..swiz;
          r2.y = modelInstanceBuffer[]..swiz;
          r2.z = modelInstanceBuffer[]..swiz;
          r2.w = modelInstanceBuffer[]..swiz;
            r1.x = dot(r2.xyz, r3.xyz);
            r1.x = r1.x + r2.w;
            r7.z = r1.x * v5.w + r9.z;
            r1.x = dot(r2.xyz, r0.yzw);
            r6.z = r1.x * v5.w + r6.z;
            r1.x = dot(r2.xyz, r1.yzw);
            r4.z = r1.x * v5.w + r4.z;
            r3.xyz = r7.xyz;
          } else {
            r3.xyz = r9.xyz;
          }
        } else {
          r3.xyz = r8.xyz;
        }
      } else {
        r3.xyz = r5.xyz;
      }
    } else {
      r3.xyz = float3(0,0,0);
      r6.xyz = float3(0,0,0);
      r4.xyz = float3(0,0,0);
    }
    r1.x = dot(r6.xyz, r6.xyz);
    r1.x = rsqrt(r1.x);
    r0.yzw = r6.xyz * r1.xxx;
    r1.x = dot(r4.xyz, r4.xyz);
    r1.x = rsqrt(r1.x);
    r1.yzw = r4.xyz * r1.xxx;
  }
  r2.xyz = r1.zwy * r0.wyz;
  r2.xyz = r0.zwy * r1.wyz + -r2.xyz;
  r2.xyz = r2.xyz * r0.xxx;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.x, v7.x, l(12), t4.xxxx
r0.x = modelInstanceBuffer[]..swiz;
  if (r0.x != 0) {
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.x, l(0), t5.xyzw
  r4.x = modelInstanceBuffer[]..swiz;
  r4.y = modelInstanceBuffer[]..swiz;
  r4.z = modelInstanceBuffer[]..swiz;
  r4.w = modelInstanceBuffer[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r0.x, l(16), t5.xyzw
  r5.x = modelInstanceBuffer[]..swiz;
  r5.y = modelInstanceBuffer[]..swiz;
  r5.z = modelInstanceBuffer[]..swiz;
  r5.w = modelInstanceBuffer[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyzw, r0.x, l(32), t5.xywz
  r6.x = modelInstanceBuffer[]..swiz;
  r6.y = modelInstanceBuffer[]..swiz;
  r6.z = modelInstanceBuffer[]..swiz;
  r6.w = modelInstanceBuffer[]..swiz;
    r7.xyz = r6.xyw;
    r6.x = r4.w;
    r6.y = r5.w;
  } else {
    r4.xyz = float3(1,0,0);
    r5.xyz = float3(0,1,0);
    r7.xyz = float3(0,0,1);
    r6.xyz = float3(0,0,0);
  }
  r6.xyz = -eyeOffset.xyz + r6.xyz;
  r3.w = 1;
  r4.w = r6.x;
  r8.x = dot(r3.xyzw, r4.xyzw);
  r5.w = r6.y;
  r8.y = dot(r3.xyzw, r5.xyzw);
  r7.w = r6.z;
  r8.z = dot(r3.xyzw, r7.xyzw);
  r3.x = dot(r0.yzw, r4.xyz);
  r3.y = dot(r0.yzw, r5.xyz);
  r3.z = dot(r0.yzw, r7.xyz);
  r0.y = dot(r3.xyz, r3.xyz);
  r0.y = rsqrt(r0.y);
  o3.xyz = r3.xyz * r0.yyy;
  r3.x = dot(r1.yzw, r4.xyz);
  r3.y = dot(r1.yzw, r5.xyz);
  r3.z = dot(r1.yzw, r7.xyz);
  r0.y = dot(r3.xyz, r3.xyz);
  r0.y = rsqrt(r0.y);
  o4.xyz = r3.xyz * r0.yyy;
  r1.x = dot(r2.xyz, r4.xyz);
  r1.y = dot(r2.xyz, r5.xyz);
  r1.z = dot(r2.xyz, r7.xyz);
  r0.y = dot(r1.xyz, r1.xyz);
  r0.y = rsqrt(r0.y);
  o5.xyz = r1.xyz * r0.yyy;
  r1.xyzw = viewProjectionMatrix._m10_m11_m12_m13 * r8.yyyy;
  r1.xyzw = r8.xxxx * viewProjectionMatrix._m00_m01_m02_m03 + r1.xyzw;
  r1.xyzw = r8.zzzz * viewProjectionMatrix._m20_m21_m22_m23 + r1.xyzw;
  o0.xyzw = viewProjectionMatrix._m30_m31_m32_m33 + r1.xyzw;
  if (r0.x != 0) {
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.x, r0.x, l(12), t5.xxxx
  r1.x = modelInstanceBuffer[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.y, r0.x, l(28), t5.xxxx
  r1.y = modelInstanceBuffer[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.z, r0.x, l(44), t5.xxxx
  r1.z = modelInstanceBuffer[]..swiz;
  } else {
    r1.xyz = float3(0,0,0);
  }
  r0.xyz = float3(0.100000001,0.100000001,0.100000001) * r1.xyz;
  o2.xyz = frac(r0.xyz);
  p2.x = v7.x;
  o1.x = 1;
  p1.xy = v2.xy;
  o6.xyz = r8.xyz;
  return;
}