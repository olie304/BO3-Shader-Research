// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:42:30 2021

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
  float2 wind1Parms : packoffset(c11.z);
  float2 wind2Parms : packoffset(c12);
  float2 wind3Parms : packoffset(c12.z);
  uint zFeatherComputeSprites : packoffset(c13);
  float hdrScale : packoffset(c13.y);
  float emissiveFalloffPower : packoffset(c13.z);
  float3 emissiveTint1 : packoffset(c14);
  bool relativeHDR : packoffset(c14.w);
  bool invertFalloff : packoffset(c15);
  float layerDepth : packoffset(c15.y);
  float uvMotionToggle1 : packoffset(c15.z) = {0};
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
  float4 v1 : COLOR0,
  float2 v2 : TEXCOORD0,
  float3 v3 : NORMAL0,
  float4 v4 : BLENDWEIGHT0,
  uint4 v5 : BLENDINDICES0,
  uint v6 : TEXCOORD15,
  out float4 o0 : SV_POSITION0,
  out float3 o1 : TEXCOORD1)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t4, 24
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t5, 64
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v3.xyz * float3(2.00195694,2.00195694,2.00195694) + float3(-1.00195694,-1.00195694,-1.00195694);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r1.xy, v6.x, l(12), t4.xyxx
r1.x = gpuSkinBase[]..swiz;
r1.y = gpuSkinBase[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r1.y, l(48), t5.xyzw
r2.x = gpuSkinBase[]..swiz;
r2.y = gpuSkinBase[]..swiz;
r2.z = gpuSkinBase[]..swiz;
r2.w = gpuSkinBase[]..swiz;
  r2.xyzw = r1.yyyy ? r2.xyzw : float4(0,0,0,0);
  r0.w = cmp(0 != r2.w);
  if (r0.w != 0) {
    r0.w = (uint)r2.w;
    if (r0.w != 0) {
      r1.y = (int)r0.w + (int)v5.x;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r1.y, l(0), t5.xyzw
    r3.x = gpuSkinBase[]..swiz;
    r3.y = gpuSkinBase[]..swiz;
    r3.z = gpuSkinBase[]..swiz;
    r3.w = gpuSkinBase[]..swiz;
      r1.z = dot(r3.xyz, v0.xyz);
      r1.z = r1.z + r3.w;
      r4.x = v4.x * r1.z;
      r1.z = dot(r3.xyz, r0.xyz);
      r3.x = v4.x * r1.z;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r1.y, l(16), t5.xyzw
    r5.x = gpuSkinBase[]..swiz;
    r5.y = gpuSkinBase[]..swiz;
    r5.z = gpuSkinBase[]..swiz;
    r5.w = gpuSkinBase[]..swiz;
      r1.z = dot(r5.xyz, v0.xyz);
      r1.z = r1.z + r5.w;
      r4.y = v4.x * r1.z;
      r1.z = dot(r5.xyz, r0.xyz);
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r1.y, l(32), t5.xyzw
    r5.x = gpuSkinBase[]..swiz;
    r5.y = gpuSkinBase[]..swiz;
    r5.z = gpuSkinBase[]..swiz;
    r5.w = gpuSkinBase[]..swiz;
      r1.y = dot(r5.xyz, v0.xyz);
      r1.y = r1.y + r5.w;
      r4.z = v4.x * r1.y;
      r1.y = dot(r5.xyz, r0.xyz);
      r3.yz = v4.xx * r1.zy;
      r1.y = cmp(v4.y != 0.000000);
      if (r1.y != 0) {
        r1.y = (int)r0.w + (int)v5.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r1.y, l(0), t5.xyzw
      r5.x = gpuSkinBase[]..swiz;
      r5.y = gpuSkinBase[]..swiz;
      r5.z = gpuSkinBase[]..swiz;
      r5.w = gpuSkinBase[]..swiz;
        r1.z = dot(r5.xyz, v0.xyz);
        r1.z = r1.z + r5.w;
        r4.x = r1.z * v4.y + r4.x;
        r1.z = dot(r5.xyz, r0.xyz);
        r3.x = r1.z * v4.y + r3.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r1.y, l(16), t5.xyzw
      r5.x = gpuSkinBase[]..swiz;
      r5.y = gpuSkinBase[]..swiz;
      r5.z = gpuSkinBase[]..swiz;
      r5.w = gpuSkinBase[]..swiz;
        r1.z = dot(r5.xyz, v0.xyz);
        r1.z = r1.z + r5.w;
        r4.y = r1.z * v4.y + r4.y;
        r1.z = dot(r5.xyz, r0.xyz);
        r3.y = r1.z * v4.y + r3.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r1.y, l(32), t5.xyzw
      r5.x = gpuSkinBase[]..swiz;
      r5.y = gpuSkinBase[]..swiz;
      r5.z = gpuSkinBase[]..swiz;
      r5.w = gpuSkinBase[]..swiz;
        r1.y = dot(r5.xyz, v0.xyz);
        r1.y = r1.y + r5.w;
        r4.z = r1.y * v4.y + r4.z;
        r1.y = dot(r5.xyz, r0.xyz);
        r3.z = r1.y * v4.y + r3.z;
        r1.y = cmp(v4.z != 0.000000);
        if (r1.y != 0) {
          r1.y = (int)r0.w + (int)v5.z;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r1.y, l(0), t5.xyzw
        r5.x = gpuSkinBase[]..swiz;
        r5.y = gpuSkinBase[]..swiz;
        r5.z = gpuSkinBase[]..swiz;
        r5.w = gpuSkinBase[]..swiz;
          r1.z = dot(r5.xyz, v0.xyz);
          r1.z = r1.z + r5.w;
          r4.x = r1.z * v4.z + r4.x;
          r1.z = dot(r5.xyz, r0.xyz);
          r3.x = r1.z * v4.z + r3.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r1.y, l(16), t5.xyzw
        r5.x = gpuSkinBase[]..swiz;
        r5.y = gpuSkinBase[]..swiz;
        r5.z = gpuSkinBase[]..swiz;
        r5.w = gpuSkinBase[]..swiz;
          r1.z = dot(r5.xyz, v0.xyz);
          r1.z = r1.z + r5.w;
          r4.y = r1.z * v4.z + r4.y;
          r1.z = dot(r5.xyz, r0.xyz);
          r3.y = r1.z * v4.z + r3.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r1.y, l(32), t5.xyzw
        r5.x = gpuSkinBase[]..swiz;
        r5.y = gpuSkinBase[]..swiz;
        r5.z = gpuSkinBase[]..swiz;
        r5.w = gpuSkinBase[]..swiz;
          r1.y = dot(r5.xyz, v0.xyz);
          r1.y = r1.y + r5.w;
          r4.z = r1.y * v4.z + r4.z;
          r1.y = dot(r5.xyz, r0.xyz);
          r3.z = r1.y * v4.z + r3.z;
          r1.y = cmp(v4.w != 0.000000);
          if (r1.y != 0) {
            r0.w = (int)r0.w + (int)v5.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r0.w, l(0), t5.xyzw
          r5.x = gpuSkinBase[]..swiz;
          r5.y = gpuSkinBase[]..swiz;
          r5.z = gpuSkinBase[]..swiz;
          r5.w = gpuSkinBase[]..swiz;
            r1.y = dot(r5.xyz, v0.xyz);
            r1.y = r1.y + r5.w;
            r4.x = r1.y * v4.w + r4.x;
            r1.y = dot(r5.xyz, r0.xyz);
            r3.x = r1.y * v4.w + r3.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r0.w, l(16), t5.xyzw
          r5.x = gpuSkinBase[]..swiz;
          r5.y = gpuSkinBase[]..swiz;
          r5.z = gpuSkinBase[]..swiz;
          r5.w = gpuSkinBase[]..swiz;
            r1.y = dot(r5.xyz, v0.xyz);
            r1.y = r1.y + r5.w;
            r4.y = r1.y * v4.w + r4.y;
            r1.y = dot(r5.xyz, r0.xyz);
            r3.y = r1.y * v4.w + r3.y;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r0.w, l(32), t5.xyzw
          r5.x = gpuSkinBase[]..swiz;
          r5.y = gpuSkinBase[]..swiz;
          r5.z = gpuSkinBase[]..swiz;
          r5.w = gpuSkinBase[]..swiz;
            r0.w = dot(r5.xyz, v0.xyz);
            r0.w = r0.w + r5.w;
            r4.z = r0.w * v4.w + r4.z;
            r0.w = dot(r5.xyz, r0.xyz);
            r3.z = r0.w * v4.w + r3.z;
          }
        }
      }
      r0.w = dot(r3.xyz, r3.xyz);
      r0.w = rsqrt(r0.w);
      r0.xyz = r3.xyz * r0.www;
    } else {
      r4.xyz = v0.xyz;
    }
  } else {
    r3.yw = (uint2)r2.xy;
    r3.x = v5.x;
    r3.z = 0;
    r5.xyzw = gpuSkinQuat.Load(r3.xyz).xyzw;
    r6.xyzw = gpuSkinQuat.Load(r3.xwz).xyzw;
    r1.yzw = gpuSkinPos.Load(r3.xyz).xyz;
    r2.xyw = gpuSkinPos.Load(r3.xwz).xyz;
    r7.xyz = gpuSkinBase.Load(r3.xzz).xyz;
    r6.xyzw = r6.xyzw + -r5.xyzw;
    r5.xyzw = r2.zzzz * r6.xyzw + r5.xyzw;
    r2.xyw = r2.xyw + -r1.yzw;
    r1.yzw = r2.zzz * r2.xyw + r1.yzw;
    r2.xyw = v0.xyz + -r7.xyz;
    r0.w = dot(r5.xyzw, r5.xyzw);
    r0.w = rsqrt(r0.w);
    r5.xyzw = r5.xyzw * r0.wwww;
    r6.xyz = r5.xyz + r5.xyz;
    r8.xyz = r6.xxx * r5.xzw;
    r0.w = r6.y * r5.w;
    r6.zw = r6.zz * r5.wz;
    r4.w = r5.y * r6.y + r6.w;
    r9.x = 1 + -r4.w;
    r10.x = r5.z * r6.x + -r0.w;
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
    r5.x = dot(r0.xyz, r9.xyz);
    r5.y = dot(r0.xzy, r11.xzw);
    r5.z = dot(r0.xyz, r10.xyz);
    r2.xyw = r6.xyz + r7.xyz;
    r1.yzw = r2.xyw + r1.yzw;
    r4.xyz = v4.xxx * r1.yzw;
    r1.yzw = v4.xxx * r5.xyz;
    r0.w = cmp(v4.y != 0.000000);
    if (r0.w != 0) {
      r3.x = v5.y;
      r5.xyzw = gpuSkinQuat.Load(r3.xyz).xyzw;
      r6.xyzw = gpuSkinQuat.Load(r3.xwz).xyzw;
      r2.xyw = gpuSkinPos.Load(r3.xyz).xyz;
      r7.xyz = gpuSkinPos.Load(r3.xwz).xyz;
      r8.xyz = gpuSkinBase.Load(r3.xzz).xyz;
      r6.xyzw = r6.xyzw + -r5.xyzw;
      r5.xyzw = r2.zzzz * r6.xyzw + r5.xyzw;
      r6.xyz = r7.xyz + -r2.xyw;
      r2.xyw = r2.zzz * r6.xyz + r2.xyw;
      r6.xyz = v0.xyz + -r8.xyz;
      r0.w = dot(r5.xyzw, r5.xyzw);
      r0.w = rsqrt(r0.w);
      r5.xyzw = r5.xyzw * r0.wwww;
      r7.xyz = r5.xyz + r5.xyz;
      r9.xyz = r7.xxx * r5.xzw;
      r0.w = r7.y * r5.w;
      r7.zw = r7.zz * r5.wz;
      r4.w = r5.y * r7.y + r7.w;
      r10.x = 1 + -r4.w;
      r11.x = r5.z * r7.x + -r0.w;
      r10.y = r5.y * r7.x + -r7.z;
      r12.xy = r5.yx * r7.xx + r7.zw;
      r12.z = r5.z * r7.y + -r9.z;
      r5.xyz = r5.zwy * r7.yyy + r9.zyx;
      r10.z = r5.y;
      r7.x = dot(r6.xyz, r10.xyz);
      r12.w = 1 + -r12.y;
      r7.y = dot(r6.xzy, r12.xzw);
      r11.yz = r5.xz * float2(1,-1) + float2(0,1);
      r7.z = dot(r6.xyz, r11.xyz);
      r5.x = dot(r0.xyz, r10.xyz);
      r5.y = dot(r0.xzy, r12.xzw);
      r5.z = dot(r0.xyz, r11.xyz);
      r6.xyz = r7.xyz + r8.xyz;
      r2.xyw = r6.xyz + r2.xyw;
      r4.xyz = r2.xyw * v4.yyy + r4.xyz;
      r1.yzw = r5.xyz * v4.yyy + r1.yzw;
      r0.w = cmp(v4.z != 0.000000);
      if (r0.w != 0) {
        r3.x = v5.z;
        r5.xyzw = gpuSkinQuat.Load(r3.xyz).xyzw;
        r6.xyzw = gpuSkinQuat.Load(r3.xwz).xyzw;
        r2.xyw = gpuSkinPos.Load(r3.xyz).xyz;
        r7.xyz = gpuSkinPos.Load(r3.xwz).xyz;
        r8.xyz = gpuSkinBase.Load(r3.xzz).xyz;
        r6.xyzw = r6.xyzw + -r5.xyzw;
        r5.xyzw = r2.zzzz * r6.xyzw + r5.xyzw;
        r6.xyz = r7.xyz + -r2.xyw;
        r2.xyw = r2.zzz * r6.xyz + r2.xyw;
        r6.xyz = v0.xyz + -r8.xyz;
        r0.w = dot(r5.xyzw, r5.xyzw);
        r0.w = rsqrt(r0.w);
        r5.xyzw = r5.xyzw * r0.wwww;
        r7.xyz = r5.xyz + r5.xyz;
        r9.xyz = r7.xxx * r5.xzw;
        r0.w = r7.y * r5.w;
        r7.zw = r7.zz * r5.wz;
        r4.w = r5.y * r7.y + r7.w;
        r10.x = 1 + -r4.w;
        r11.x = r5.z * r7.x + -r0.w;
        r10.y = r5.y * r7.x + -r7.z;
        r12.xy = r5.yx * r7.xx + r7.zw;
        r12.z = r5.z * r7.y + -r9.z;
        r5.xyz = r5.zwy * r7.yyy + r9.zyx;
        r10.z = r5.y;
        r7.x = dot(r6.xyz, r10.xyz);
        r12.w = 1 + -r12.y;
        r7.y = dot(r6.xzy, r12.xzw);
        r11.yz = r5.xz * float2(1,-1) + float2(0,1);
        r7.z = dot(r6.xyz, r11.xyz);
        r5.x = dot(r0.xyz, r10.xyz);
        r5.y = dot(r0.xzy, r12.xzw);
        r5.z = dot(r0.xyz, r11.xyz);
        r6.xyz = r7.xyz + r8.xyz;
        r2.xyw = r6.xyz + r2.xyw;
        r4.xyz = r2.xyw * v4.zzz + r4.xyz;
        r1.yzw = r5.xyz * v4.zzz + r1.yzw;
        r0.w = cmp(v4.w != 0.000000);
        if (r0.w != 0) {
          r3.x = v5.w;
          r5.xyzw = gpuSkinQuat.Load(r3.xyz).xyzw;
          r6.xyzw = gpuSkinQuat.Load(r3.xwz).xyzw;
          r2.xyw = gpuSkinPos.Load(r3.xyz).xyz;
          r7.xyz = gpuSkinPos.Load(r3.xwz).xyz;
          r3.xyz = gpuSkinBase.Load(r3.xzz).xyz;
          r6.xyzw = r6.xyzw + -r5.xyzw;
          r5.xyzw = r2.zzzz * r6.xyzw + r5.xyzw;
          r6.xyz = r7.xyz + -r2.xyw;
          r2.xyz = r2.zzz * r6.xyz + r2.xyw;
          r6.xyz = v0.xyz + -r3.xyz;
          r0.w = dot(r5.xyzw, r5.xyzw);
          r0.w = rsqrt(r0.w);
          r5.xyzw = r5.xyzw * r0.wwww;
          r7.xyz = r5.xyz + r5.xyz;
          r8.xyz = r7.xxx * r5.xzw;
          r0.w = r7.y * r5.w;
          r7.zw = r7.zz * r5.wz;
          r2.w = r5.y * r7.y + r7.w;
          r9.x = 1 + -r2.w;
          r10.x = r5.z * r7.x + -r0.w;
          r9.y = r5.y * r7.x + -r7.z;
          r11.xy = r5.yx * r7.xx + r7.zw;
          r11.z = r5.z * r7.y + -r8.z;
          r5.xyz = r5.zwy * r7.yyy + r8.zyx;
          r9.z = r5.y;
          r7.x = dot(r6.xyz, r9.xyz);
          r11.w = 1 + -r11.y;
          r7.y = dot(r6.xzy, r11.xzw);
          r10.yz = r5.xz * float2(1,-1) + float2(0,1);
          r7.z = dot(r6.xyz, r10.xyz);
          r5.x = dot(r0.xyz, r9.xyz);
          r5.y = dot(r0.xzy, r11.xzw);
          r5.z = dot(r0.xyz, r10.xyz);
          r3.xyz = r7.xyz + r3.xyz;
          r2.xyz = r3.xyz + r2.xyz;
          r4.xyz = r2.xyz * v4.www + r4.xyz;
          r1.yzw = r5.xyz * v4.www + r1.yzw;
        }
      }
    }
    r0.w = dot(r1.yzw, r1.yzw);
    r0.w = rsqrt(r0.w);
    r0.xyz = r1.yzw * r0.www;
  }
  r2.xyzw = float4(1,1,1,1) + -v2.xyxy;
  r1.yz = wind1Parms.xy * r2.zw;
  r2.xyzw = wind2Parms.xyzw * r2.xyzw;
  r1.yz = float2(3.63189912,3.63189912) * r1.yz;
  r0.w = r1.y + r1.z;
  r1.y = gameTime.w + flagParams.y;
  r1.y = flagParams.x * r1.y;
  r0.w = r1.y * 5.6548667 + r0.w;
  r2.xyzw = float4(8.37758064,8.37758064,20.2683392,20.2683392) * r2.xyzw;
  r1.zw = r2.xz + r2.yw;
  r1.yz = r1.yy * float2(9.42477798,7.53982306) + r1.zw;
  r0.w = sin(r0.w);
  r1.yz = sin(r1.yz);
  r1.y = 3 * r1.y;
  r0.w = r0.w * 7.5 + r1.y;
  r0.w = r1.z * 1.70000005 + r0.w;
  r0.w = v1.y * r0.w;
  r2.xyz = r0.www * r0.xyz + r4.xyz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.w, v6.x, l(0), t4.xxxx
r0.w = gpuSkinBase[]..swiz;
  r1.x = (int)r0.w + (int)r1.x;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r1.x, l(0), t5.xyzw
r3.x = gpuSkinBase[]..swiz;
r3.y = gpuSkinBase[]..swiz;
r3.z = gpuSkinBase[]..swiz;
r3.w = gpuSkinBase[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r1.x, l(16), t5.xyzw
r4.x = gpuSkinBase[]..swiz;
r4.y = gpuSkinBase[]..swiz;
r4.z = gpuSkinBase[]..swiz;
r4.w = gpuSkinBase[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, r1.x, l(32), t5.xyzw
r1.x = gpuSkinBase[]..swiz;
r1.y = gpuSkinBase[]..swiz;
r1.z = gpuSkinBase[]..swiz;
r1.w = gpuSkinBase[]..swiz;
  r5.x = r3.w;
  r5.y = r4.w;
  r5.z = r1.w;
  r5.xyw = -eyeOffset.xyz + r5.xyz;
  r2.w = 1;
  r3.w = r5.x;
  r1.w = dot(r2.xyzw, r3.xyzw);
  r4.w = r5.y;
  r3.x = dot(r2.xyzw, r4.xyzw);
  r5.xyz = r1.xyz;
  r1.x = dot(r2.xyzw, r5.xyzw);
  r2.xyzw = viewProjectionMatrix._m10_m11_m12_m13 * r3.xxxx;
  r2.xyzw = r1.wwww * viewProjectionMatrix._m00_m01_m02_m03 + r2.xyzw;
  r1.xyzw = r1.xxxx * viewProjectionMatrix._m20_m21_m22_m23 + r2.xyzw;
  o0.xyzw = viewProjectionMatrix._m30_m31_m32_m33 + r1.xyzw;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r1.x, v6.x, l(12), t4.xxxx
r1.x = gpuSkinBase[]..swiz;
  r0.w = (int)r0.w + (int)r1.x;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyz, r0.w, l(0), t5.xyzx
r1.x = gpuSkinBase[]..swiz;
r1.y = gpuSkinBase[]..swiz;
r1.z = gpuSkinBase[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyz, r0.w, l(16), t5.xyzx
r2.x = gpuSkinBase[]..swiz;
r2.y = gpuSkinBase[]..swiz;
r2.z = gpuSkinBase[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyz, r0.w, l(32), t5.xyzx
r3.x = gpuSkinBase[]..swiz;
r3.y = gpuSkinBase[]..swiz;
r3.z = gpuSkinBase[]..swiz;
  o1.x = dot(r0.xyz, r1.xyz);
  o1.y = dot(r0.xyz, r2.xyz);
  o1.z = dot(r0.xyz, r3.xyz);
  return;
}