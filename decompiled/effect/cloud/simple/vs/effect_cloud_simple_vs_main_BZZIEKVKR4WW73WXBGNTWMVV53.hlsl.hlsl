// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:36 2021

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
  float2 featherParms : packoffset(c11.z);
  float1 alphaDissolve : packoffset(c12);
  bool useOldHDRScale : packoffset(c12.y);
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

StructuredBuffer<fxExclusionVolumes> fxExclusionVolumes : register(t0);
StructuredBuffer<particleCloudInstanceBuffer> particleCloudInstanceBuffer : register(t21);
Buffer<float4> particleCloudVertexBuffer : register(t22);
StructuredBuffer<fx_randomTable> fx_randomTable : register(t24);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  uint v0 : SV_VertexID0,
  uint v1 : TEXCOORD15,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0,
  out float2 o2 : TEXCOORD0)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t0, 64
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t21, 64
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_raw t24
// Needs manual fix for instruction: 
// unknown dcl_: dcl_input_sgv v0.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (uint)v1.x >> 12;
  r0.y = (int)v1.x & 4095;
  if (1 == 0) r0.z = 0; else if (1+1 < 32) {   r0.z = (uint)v0.x << (32-(1 + 1)); r0.z = (uint)r0.z >> (32-1);  } else r0.z = (uint)v0.x >> 1;
  r1.x = (uint)r0.z;
  r0.z = (int)v0.x & 1;
  r1.y = (uint)r0.z;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r0.x, l(0), t21.xyzw
r2.x = fxExclusionVolumes[]..swiz;
r2.y = fxExclusionVolumes[]..swiz;
r2.z = fxExclusionVolumes[]..swiz;
r2.w = fxExclusionVolumes[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.x, l(16), t21.xyzw
r3.x = fxExclusionVolumes[]..swiz;
r3.y = fxExclusionVolumes[]..swiz;
r3.z = fxExclusionVolumes[]..swiz;
r3.w = fxExclusionVolumes[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.x, l(32), t21.xyzw
r4.x = fxExclusionVolumes[]..swiz;
r4.y = fxExclusionVolumes[]..swiz;
r4.z = fxExclusionVolumes[]..swiz;
r4.w = fxExclusionVolumes[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.zw, r0.x, l(48), t21.xxxy
r0.z = fxExclusionVolumes[]..swiz;
r0.w = fxExclusionVolumes[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.x, r0.x, l(60), t21.xxxx
r0.x = fxExclusionVolumes[]..swiz;
  r1.z = (int)r4.y & 255;
  r1.z = (uint)r1.z;
  o1.x = 0.00392156886 * r1.z;
  if (8 == 0) r1.z = 0; else if (8+8 < 32) {   r1.z = (uint)r4.y << (32-(8 + 8)); r1.z = (uint)r1.z >> (32-8);  } else r1.z = (uint)r4.y >> 8;
  if (8 == 0) r1.w = 0; else if (8+16 < 32) {   r1.w = (uint)r4.y << (32-(8 + 16)); r1.w = (uint)r1.w >> (32-8);  } else r1.w = (uint)r4.y >> 16;
  r1.zw = (uint2)r1.zw;
  o1.yz = float2(0.00392156886,0.00392156886) * r1.zw;
  r1.z = (uint)r4.y >> 24;
  r1.z = (uint)r1.z;
  r1.z = 0.00392156886 * r1.z;
  r5.xyz = particleCloudVertexBuffer.Load(r0.y).xyz;
  r6.xyzw = (uint4)r3.xyzw >> int4(16,16,16,16);
  r3.xyzw = f16tof32(r3.xwzy);
  r6.xyzw = f16tof32(r6.wxyz);
  r7.xz = r3.xw;
  r7.yw = r6.yz;
  r8.xyzw = r7.xyzw * r7.xxxx;
  r9.xyz = r8.xzw + r8.xzw;
  r10.xyz = r7.zwy * r6.yyy;
  r1.w = r10.y + r10.y;
  r7.xy = r7.wz * r3.ww;
  r7.xy = r7.xy + r7.xy;
  r4.y = r10.z * 2 + r7.y;
  r11.x = 1 + -r4.y;
  r11.yz = r8.yx * float2(2,2) + r7.xy;
  r11.w = r8.z * 2 + -r1.w;
  r7.yzw = r11.xyw * r2.www;
  r8.x = r8.y * 2 + -r7.x;
  r8.y = 1 + -r11.z;
  r9.xyw = r10.xyz * float3(2,2,2) + r9.zyx;
  r8.z = r9.x;
  r8.xyz = r8.xyz * r2.www;
  r10.y = r10.x * 2 + -r9.z;
  r10.xz = r9.yw * float2(1,-1) + float2(0,1);
  r9.xyz = r10.xyz * r2.www;
  r2.xyz = -eyeOffset.xyz + r2.xyz;
  r8.xyz = r8.xyz * r5.yyy;
  r5.xyw = r5.xxx * r7.yzw + r8.xyz;
  r5.xyz = r5.zzz * r9.xyz + r5.xyw;
  r2.xyz = r5.xyz + r2.xyz;
  if (1 == 0) r5.x = 0; else if (1+19 < 32) {   r5.x = (uint)r0.x << (32-(1 + 19)); r5.x = (uint)r5.x >> (32-1);  } else r5.x = (uint)r0.x >> 19;
  if (1 == 0) r5.y = 0; else if (1+20 < 32) {   r5.y = (uint)r0.x << (32-(1 + 20)); r5.y = (uint)r5.y >> (32-1);  } else r5.y = (uint)r0.x >> 20;
  r0.x = dot(-r2.xy, -r2.xy);
  r0.x = rsqrt(r0.x);
  r7.xz = -r2.yx * r0.xx;
  r7.y = 0;
  r3.x = r6.w;
  r8.xyz = r3.yzx * r7.xyz;
  r7.xyz = r3.xyz * r7.yzx + -r8.xyz;
  r0.x = dot(r7.xyz, r7.xyz);
  r0.x = rsqrt(r0.x);
  r7.xyz = r7.xyz * r0.xxx;
  r6.y = f16tof32(r4.x);
  r4.xy = float2(-0.5,-0.5) + r1.xy;
  r5.zw = r4.xy * r6.xy;
  r6.yzw = r7.xyz * r5.zzz + r2.xyz;
  r6.yzw = r3.zxy * r5.www + r6.yzw;
  r3.w = r6.x;
  r3.xyzw = r4.xxyy * r3.zxyw;
  r3.xy = r3.xy + r3.zw;
  r3.yzw = inverseViewMatrix._m10_m11_m12 * r3.yyy;
  r3.xyz = r3.xxx * inverseViewMatrix._m00_m01_m02 + r3.yzw;
  r2.xyz = r3.xyz + r2.xyz;
  r2.xyz = r5.xxx ? r6.yzw : r2.xyz;
  r3.xyzw = viewProjectionMatrix._m10_m11_m12_m13 * r2.yyyy;
  r3.xyzw = r2.xxxx * viewProjectionMatrix._m00_m01_m02_m03 + r3.xyzw;
  r3.xyzw = r2.zzzz * viewProjectionMatrix._m20_m21_m22_m23 + r3.xyzw;
  r3.xyzw = viewProjectionMatrix._m30_m31_m32_m33 + r3.xyzw;
  if (r0.z != 0) {
    if (r0.z != 0) {
      if (14 == 0) r6.x = 0; else if (14+16 < 32) {       r6.x = (uint)r0.w << (32-(14 + 16)); r6.x = (uint)r6.x >> (32-14);      } else r6.x = (uint)r0.w >> 16;
      if (8 == 0) r6.y = 0; else if (8+8 < 32) {       r6.y = (uint)r0.z << (32-(8 + 8)); r6.y = (uint)r6.y >> (32-8);      } else r6.y = (uint)r0.z >> 8;
      if (8 == 0) r6.z = 0; else if (8+16 < 32) {       r6.z = (uint)r0.z << (32-(8 + 16)); r6.z = (uint)r6.z >> (32-8);      } else r6.z = (uint)r0.z >> 16;
      if (8 == 0) r6.w = 0; else if (8+8 < 32) {       r6.w = (uint)r0.w << (32-(8 + 8)); r6.w = (uint)r6.w >> (32-8);      } else r6.w = (uint)r0.w >> 8;
      r0.x = mad((int)r0.y, 500, (int)r6.x);
      r0.x = (uint)r0.x % 809;
      r1.w = (uint)r0.z >> 24;
      r7.xyzw = (int4)r0.wwzz & int4(65535,15,3,4);
      if (4 == 0) r8.z = 0; else if (4+4 < 32) {       r8.z = (uint)r7.x << (32-(4 + 4)); r8.z = (uint)r8.z >> (32-4);      } else r8.z = (uint)r7.x >> 4;
      r0.w = (int)r7.y + (int)r8.z;
      r2.w = 1 << (int)r0.w;
      r0.x = (uint)r0.x << 2;
      r0.x = (int)r0.x + 88;
    // No code for instruction (needs manual fix):
        ld_raw_indexable(raw_buffer)(mixed,mixed,mixed,mixed) r0.x, r0.x, t24.xxxx
      r0.x = (int)r0.x & 0x0000ffff;
      r0.x = (int)r2.w * (int)r0.x;
      r0.x = (uint)r0.x >> 16;
      r5.xzw = cmp((int3)r7.zzz == int3(1,0,3));
      r2.w = (int)r2.w + -1;
      if (r0.w == 0) r0.y = 0; else if (r0.w+0 < 32) {       r0.y = (uint)r0.y << (32-(r0.w + 0)); r0.y = (uint)r0.y >> (32-r0.w);      } else r0.y = (uint)r0.y >> 0;
      r0.x = r5.x ? r0.x : r0.y;
      r0.y = (int)r5.w | (int)r5.z;
      r0.x = r0.y ? r6.y : r0.x;
      r0.x = (uint)r0.x;
      r0.y = (int)r6.w + 1;
      r4.x = (uint)r0.y;
      r4.y = r4.z * r4.x + r0.x;
      r4.z = (uint)r6.z;
      r4.z = r4.w * r4.z;
      r0.x = r4.z * 0.00100000005 + r0.x;
      r0.x = r7.w ? r4.y : r0.x;
      r4.y = floor(r0.x);
      r9.x = (uint)r4.y;
      r0.x = ceil(r0.x);
      r9.y = (uint)r0.x;
      r4.yzw = (int3)r0.zzz & int3(8,16,32);
      r0.x = (int)r1.w * (int)r0.y;
      r0.xy = cmp((uint2)r9.xy >= (uint2)r0.xx);
      r0.xy = r0.xy ? r6.ww : r9.xy;
      r0.xy = r4.yy ? r0.xy : r9.xy;
      r0.z = rcp(r4.x);
      r5.xz = (uint2)r0.xy;
      r5.xz = r5.xz * r0.zz;
      r5.xz = frac(r5.xz);
      r4.xy = r5.xz * r4.xx;
      r4.xy = (uint2)r4.xy;
      r4.xy = (int2)r4.xy + (int2)r6.yy;
      r0.xy = r5.ww ? r4.xy : r0.xy;
      r0.y = r4.z ? r0.y : r0.x;
      if (r0.w == 0) r0.x = 0; else if (r0.w+0 < 32) {       r0.x = (uint)r0.x << (32-(r0.w + 0)); r0.x = (uint)r0.x >> (32-r0.w);      } else r0.x = (uint)r0.x >> 0;
      if (r0.w == 0) r0.y = 0; else if (r0.w+0 < 32) {       r0.y = (uint)r0.y << (32-(r0.w + 0)); r0.y = (uint)r0.y >> (32-r0.w);      } else r0.y = (uint)r0.y >> 0;
      r0.y = (int)-r0.y + (int)r2.w;
      r8.x = r4.w ? r0.y : r0.x;
      r8.y = r7.y;
    } else {
      r8.xyz = float3(0,0,0);
    }
    r0.xy = (uint2)r8.yz << int2(23,23);
    r0.xy = (int2)-r0.xy + int2(1065353216,1065353216);
    if (r8.y == 0) r0.z = 0; else if (r8.y+0 < 32) {     r0.z = (uint)r8.x << (32-(r8.y + 0)); r0.z = (uint)r0.z >> (32-r8.y);    } else r0.z = (uint)r8.x >> 0;
    if (r8.z == 0) r0.w = 0; else if (r8.z+r8.y < 32) {     r0.w = (uint)r8.x << (32-(r8.z + r8.y)); r0.w = (uint)r0.w >> (32-r8.z);    } else r0.w = (uint)r8.x >> r8.y;
    r4.xy = (uint2)r0.zw;
    r0.zw = r4.xy + r1.xy;
    o2.xy = r0.zw * r0.xy;
  } else {
    o2.xy = r1.xy;
  }
  r0.x = cmp(1 >= featherParms.x);
  r0.y = saturate(featherParms.x * r3.w);
  r0.y = r1.z * r0.y;
  r0.x = r0.x ? r0.y : r1.z;
  r0.y = cmp((int)r5.y != 0);
  r1.xyz = eyeOffset.xyz + r2.xyz;
  r2.y = 0;
  r0.zw = float2(0,0);
  r1.w = 0;
  while (true) {
    r2.z = cmp((int)r0.w >= 5);
    r1.w = 0;
    if (r2.z != 0) break;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.z, r0.w, l(0), t0.xxxx
  r2.z = fxExclusionVolumes[]..swiz;
    if (r2.z != 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.w, l(4), t0.xyzw
    r4.x = fxExclusionVolumes[]..swiz;
    r4.y = fxExclusionVolumes[]..swiz;
    r4.z = fxExclusionVolumes[]..swiz;
    r4.w = fxExclusionVolumes[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r0.w, l(20), t0.xyzw
    r5.x = fxExclusionVolumes[]..swiz;
    r5.y = fxExclusionVolumes[]..swiz;
    r5.z = fxExclusionVolumes[]..swiz;
    r5.w = fxExclusionVolumes[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyzw, r0.w, l(36), t0.xyzw
    r6.x = fxExclusionVolumes[]..swiz;
    r6.y = fxExclusionVolumes[]..swiz;
    r6.z = fxExclusionVolumes[]..swiz;
    r6.w = fxExclusionVolumes[]..swiz;
      r7.xy = r4.xw;
      r7.z = r5.z;
      r7.x = dot(r1.xyz, r7.xyz);
      r8.x = r4.y;
      r8.yz = r5.xw;
      r7.y = dot(r1.xyz, r8.xyz);
      r5.x = r4.z;
      r5.z = r6.x;
      r7.z = dot(r1.xyz, r5.xyz);
      r4.xyz = r7.xyz + r6.yzw;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyz, r0.w, l(52), t0.xyzx
    r5.x = fxExclusionVolumes[]..swiz;
    r5.y = fxExclusionVolumes[]..swiz;
    r5.z = fxExclusionVolumes[]..swiz;
      r4.xyz = cmp(abs(r4.xyz) < r5.xyz);
      r2.z = r4.y ? r4.x : 0;
      r2.z = r4.z ? r2.z : 0;
      if (r2.z != 0) {
        r0.z = -1;
        r1.w = -1;
        break;
      }
      r1.w = r2.z;
    } else {
      r1.w = 0;
    }
    r2.x = (int)r0.w + 1;
    r0.zw = r2.yx;
  }
  r0.z = (int)r0.z & (int)r1.w;
  r0.y = r0.y ? r0.z : 0;
  o1.w = r0.y ? 0 : r0.x;
  o0.xyzw = r3.xyzw;
  return;
}