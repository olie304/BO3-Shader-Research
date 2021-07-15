// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:16 2021

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

SamplerState bilinearWrapSampler_s : register(s0);
Texture2D<float4> zebraWarningMap : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main()
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (uint,uint,uint,uint) u0
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (uint,uint,uint,uint) u1
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (uint,uint,uint,uint) u2
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = (uint2)renderTargetSize.xy;
  r0.xy = cmp((uint2)r0.xy < (uint2)vThreadID.xy);
  r0.x = (int)r0.y | (int)r0.x;
  if (r0.x != 0) {
    return;
  }
// No code for instruction (needs manual fix):
ld_uav_typed_indexable(texture2d)(uint,uint,uint,uint) r0.x, vThreadID.xyyy, u0.xyzw
// No code for instruction (needs manual fix):
ld_uav_typed_indexable(texture2d)(uint,uint,uint,uint) r0.y, vThreadID.xyyy, u1.yxzw
  if (10 == 0) r0.z = 0; else if (10+20 < 32) {   r0.z = (uint)r0.y << (32-(10 + 20)); r0.z = (uint)r0.z >> (32-10);  } else r0.z = (uint)r0.y >> 20;
  r0.z = (uint)r0.z;
// No code for instruction (needs manual fix):
ld_uav_typed_indexable(texture2d)(uint,uint,uint,uint) r0.w, vThreadID.xyyy, u2.yzwx
  r1.xyzw = (int4)vThreadID.xyxy + int4(-1,0,0,-1);
// No code for instruction (needs manual fix):
ld_uav_typed_indexable(texture2d)(uint,uint,uint,uint) r1.x, r1.xyyy, u2.xyzw
// No code for instruction (needs manual fix):
ld_uav_typed_indexable(texture2d)(uint,uint,uint,uint) r1.y, r1.zwww, u2.yxzw
  r2.xyzw = (int4)vThreadID.xyxy + int4(1,0,0,1);
// No code for instruction (needs manual fix):
ld_uav_typed_indexable(texture2d)(uint,uint,uint,uint) r1.z, r2.xyyy, u2.yzxw
// No code for instruction (needs manual fix):
ld_uav_typed_indexable(texture2d)(uint,uint,uint,uint) r1.w, r2.zwww, u2.yzwx
  r2.x = cmp(r0.z >= 511.5);
  r2.y = cmp(0 < r0.z);
  r2.y = r2.y ? 0.000000 : 0;
  r2.y = r2.x ? 2 : r2.y;
  if (r2.y == 0) {
    return;
  }
  r2.z = r0.x ? 0.000000 : 0;
  r3.x = (uint)r2.z;
  if (8 == 0) r2.z = 0; else if (8+8 < 32) {   r2.z = (uint)r0.x << (32-(8 + 8)); r2.z = (uint)r2.z >> (32-8);  } else r2.z = (uint)r0.x >> 8;
  if (8 == 0) r2.w = 0; else if (8+16 < 32) {   r2.w = (uint)r0.x << (32-(8 + 16)); r2.w = (uint)r2.w >> (32-8);  } else r2.w = (uint)r0.x >> 16;
  r3.yz = (uint2)r2.zw;
  r4.xyz = float3(0.00392156886,0.00392156886,0.00392156886) * r3.xyz;
  r4.xyz = cmp(float3(0.0404499993,0.0404499993,0.0404499993) >= r4.xyz);
  r5.xyz = float3(0.000303526991,0.000303526991,0.000303526991) * r3.xyz;
  r3.xyz = r3.xyz * float3(0.00392156886,0.00392156886,0.00392156886) + float3(0.0549999997,0.0549999997,0.0549999997);
  r3.xyz = float3(0.947867334,0.947867334,0.947867334) * r3.xyz;
  r3.xyz = log2(r3.xyz);
  r3.xyz = float3(2.4000001,2.4000001,2.4000001) * r3.xyz;
  r3.xyz = exp2(r3.xyz);
  r3.xyz = r4.xyz ? r5.xyz : r3.xyz;
  r0.x = r0.y ? 0.000000 : 0;
  r4.x = (uint)r0.x;
  if (10 == 0) r0.x = 0; else if (10+10 < 32) {   r0.x = (uint)r0.y << (32-(10 + 10)); r0.x = (uint)r0.x >> (32-10);  } else r0.x = (uint)r0.y >> 10;
  r4.y = (uint)r0.x;
  r0.x = (uint)r0.y >> 30;
  r0.y = (int)r0.w & 1023;
  r5.x = (uint)r0.y;
  if (10 == 0) r2.z = 0; else if (10+10 < 32) {   r2.z = (uint)r0.w << (32-(10 + 10)); r2.z = (uint)r2.z >> (32-10);  } else r2.z = (uint)r0.w >> 10;
  if (10 == 0) r2.w = 0; else if (10+20 < 32) {   r2.w = (uint)r0.w << (32-(10 + 20)); r2.w = (uint)r2.w >> (32-10);  } else r2.w = (uint)r0.w >> 20;
  r5.yz = (uint2)r2.zw;
  r6.y = saturate(0.000977517106 * r5.z);
  r0.y = (uint)r0.w >> 30;
  r0.w = (int)r1.x & 1023;
  r7.x = (uint)r0.w;
  if (10 == 0) r0.w = 0; else if (10+10 < 32) {   r0.w = (uint)r1.x << (32-(10 + 10)); r0.w = (uint)r0.w >> (32-10);  } else r0.w = (uint)r1.x >> 10;
  r7.y = (uint)r0.w;
  r0.w = (uint)r1.x >> 30;
  r0.xyw = (uint3)r0.xyw;
  r1.x = (int)r1.y & 1023;
  r8.x = (uint)r1.x;
  if (10 == 0) r1.x = 0; else if (10+10 < 32) {   r1.x = (uint)r1.y << (32-(10 + 10)); r1.x = (uint)r1.x >> (32-10);  } else r1.x = (uint)r1.y >> 10;
  r8.y = (uint)r1.x;
  r1.x = (uint)r1.y >> 30;
  r1.y = (int)r1.z & 1023;
  r9.x = (uint)r1.y;
  if (10 == 0) r1.y = 0; else if (10+10 < 32) {   r1.y = (uint)r1.z << (32-(10 + 10)); r1.y = (uint)r1.y >> (32-10);  } else r1.y = (uint)r1.z >> 10;
  r9.y = (uint)r1.y;
  r1.y = (uint)r1.z >> 30;
  r1.z = (int)r1.w & 1023;
  r10.x = (uint)r1.z;
  if (10 == 0) r1.z = 0; else if (10+10 < 32) {   r1.z = (uint)r1.w << (32-(10 + 10)); r1.z = (uint)r1.z >> (32-10);  } else r1.z = (uint)r1.w >> 10;
  r10.y = (uint)r1.z;
  r1.z = (uint)r1.w >> 30;
  r1.xyz = (uint3)r1.xyz;
  r0.xyw = float3(0.5,0.5,0.5) + r0.xyw;
  r5.xy = r5.xy * float2(0.000977517106,0.00195503421) + float2(0,-1);
  r0.xyw = (uint3)r0.xyw;
  r0.w = cmp((int)r0.y == (int)r0.w);
  r2.zw = r7.xy * float2(0.000977517106,0.00195503421) + float2(0,-1);
  r2.zw = r0.ww ? r2.zw : float2(-1,0);
  r0.w = 0.5 + r1.x;
  r0.w = (uint)r0.w;
  r0.w = cmp((int)r0.y == (int)r0.w);
  r1.xw = r8.xy * float2(0.000977517106,0.00195503421) + float2(0,-1);
  r1.xw = r0.ww ? r1.xw : float2(-1,0);
  r0.w = 0.5 + r1.y;
  r0.w = (uint)r0.w;
  r0.w = cmp((int)r0.y == (int)r0.w);
  r4.zw = r9.xy * float2(0.000977517106,0.00195503421) + float2(0,-1);
  r4.zw = r0.ww ? r4.zw : float2(-1,0);
  r0.w = 0.5 + r1.z;
  r0.w = (uint)r0.w;
  r0.y = cmp((int)r0.y == (int)r0.w);
  r1.yz = r10.xy * float2(0.000977517106,0.00195503421) + float2(0,-1);
  r0.yw = r0.yy ? r1.yz : float2(-1,0);
  r7.x = r2.z;
  r7.y = r1.x;
  r7.z = r4.z;
  r7.w = r0.y;
  r7.xyzw = r7.xyzw + -r5.xxxx;
  r7.xyzw = cmp(abs(r7.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r7.xyzw = r7.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r0.y = r7.x + r7.y;
  r0.y = r0.y + r7.z;
  r0.y = r0.y + r7.w;
  r1.x = r7.y * r1.w;
  r1.x = r7.x * r2.w + r1.x;
  r1.x = r7.z * r4.w + r1.x;
  r0.w = r7.w * r0.w + r1.x;
  r5.z = r0.w / r0.y;
  r0.y = cmp(0 >= r0.y);
  r5.yz = r0.yy ? float2(0,0) : r5.yz;
  r0.yw = (int2)vThreadID.xy & int2(1,1);
  r0.y = cmp((int)r0.w == (int)r0.y);
  r1.xyz = r0.yyy ? r5.xyz : r5.xzy;
  r0.w = -r1.z * 0.5 + r1.x;
  r5.y = r1.z + r0.w;
  r5.z = -r1.y * 0.5 + r0.w;
  r5.x = r5.z + r1.y;
  r1.xy = r4.xy * float2(0.00195503421,0.00195503421) + float2(-1,-1);
  r1.xy = float2(0.850000024,0.850000024) * r1.xy;
  r0.w = dot(r1.xy, r1.xy);
  r4.zw = float2(2,1) + -r0.ww;
  r0.w = sqrt(r4.z);
  r4.xy = r1.xy * r0.ww;
  r1.xyzw = (int4)r0.xxxx & int4(2,1,2,1);
  r1.xyzw = r1.xzwy ? float4(1,-1,-1,1) : float4(0,1,1,0);
  r0.x = (int)r1.w ^ (int)r1.x;
  r1.w = r0.x ? -1 : 1;
  r7.xyz = float3(-1,0,1) * r1.yzw;
  r8.xyz = float3(1,-2,1) * r1.yzw;
  r4.xyz = float3(0.408248305,0.707106769,0.577350259) * r4.xyw;
  r7.xyz = r7.xyz * r4.yyy;
  r4.xyw = r8.xyz * r4.xxx + r7.xyz;
  r1.yzw = r1.yzw * r4.zzz + r4.xyw;
  r0.xw = r2.xx ? float2(0.5,-0.5) : float2(0.00146627566,-0.00146627566);
  r0.z = r0.z * 0.000977517106 + r0.w;
  r0.z = saturate(2.00982332 * r0.z);
  r0.w = dot(r3.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r2.x = dot(r5.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r2.z = cmp(r0.w < 0.0130000003);
  r2.w = cmp((int)r2.y != 1);
  r4.xy = cmp(r2.xx < float2(0.0599999987,0.0170000009));
  r7.xyz = r4.xxx ? float3(0,0,0) : r5.xyz;
  r5.w = -1;
  r7.w = r4.x;
  r7.xyzw = r2.wwww ? r5.xyzw : r7.xyzw;
  r2.w = (int)r2.w | (int)r4.x;
  r4.xzw = r2.www ? float3(1,0.150000006,0.0500000007) : r3.xyz;
  r5.w = 0;
  r5.xyzw = r2.zzzz ? r7.xyzw : r5.xyzw;
  r3.xyz = r2.zzz ? r4.xzw : r3.xyz;
  r2.z = cmp((int)r2.y == 1);
  r4.xz = cmp(float2(0.00300000003,0.896000028) < r0.ww);
  r0.w = cmp(0.0599999987 < r2.x);
  r0.w = r0.w ? r4.x : 0;
  r0.w = r0.w ? r2.z : 0;
  r3.xyz = r0.www ? float3(1,0.00999999978,1) : r3.xyz;
  r0.w = (int)r4.z | (int)r0.w;
  r3.xyz = r4.zzz ? float3(0,0.800000012,1) : r3.xyz;
  r2.x = r4.y ? r2.z : 0;
  r3.xyz = r2.xxx ? float3(1,0,0) : r3.zyx;
  r0.w = (int)r0.w | (int)r2.x;
  r4.xyzw = r0.wwww ? float4(0,0,0,-nan) : r5.xyzw;
  if (r4.w != 0) {
    r2.xz = (uint2)vThreadID.xy;
    r2.xz = r2.xz / renderTargetSize.xy;
    r0.w = -0.100000001 * gameTime.w;
    r2.xz = r2.xz * float2(16,16) + r0.ww;
    r0.w = zebraWarningMap.SampleLevel(bilinearWrapSampler_s, r2.xz, 0).x;
    r3.xyz = r3.xyz * r0.www;
  }
  r0.w = (uint)r2.y;
  r6.x = saturate(0.333333343 * r0.w);
  r0.w = r1.y + r1.z;
  r0.w = r0.w + r1.w;
  r2.x = 0.5 * r0.w;
  r2.yzw = -r0.www * float3(0.5,0.5,0.5) + r1.yzw;
  r0.w = max(r2.z, r2.w);
  r0.w = max(r2.y, r0.w);
  r0.w = max(r2.x, r0.w);
  r2.x = cmp(r0.w == r2.y);
  r5.yzw = float3(1,-1,-1) * r1.yzw;
  r2.y = 2 + r0.w;
  r5.x = 1;
  r1.x = 0;
  r1.xyzw = r2.xxxx ? r5.xyzw : r1.xyzw;
  r0.w = r2.x ? r2.y : r0.w;
  r2.x = cmp(r0.w == r2.z);
  r5.yzw = float3(-1,1,-1) * r1.yzw;
  r2.y = 2 + r2.z;
  r5.x = 2;
  r1.xyzw = r2.xxxx ? r5.xyzw : r1.xyzw;
  r0.w = r2.x ? r2.y : r0.w;
  r0.w = cmp(r0.w == r2.w);
  r2.yzw = float3(-1,-1,1) * r1.yzw;
  r2.x = 3;
  r1.xyzw = r0.wwww ? r2.xyzw : r1.xyzw;
  r0.w = r1.y + r1.z;
  r2.z = r0.w + r1.w;
  r2.y = r1.w + -r1.y;
  r2.x = -r1.z * 3 + r2.z;
  r1.yzw = float3(0.408248305,0.707106769,0.577350259) * r2.xyz;
  r0.w = 1 + abs(r1.w);
  r0.w = rsqrt(r0.w);
  r1.yz = r1.zy * r0.ww;
  r2.zw = saturate(r1.yz * float2(0.588235319,0.588235319) + float2(0.5,0.5));
  r2.y = saturate(r0.z * 0.49755621 + r0.x);
  r0.x = (uint)r1.x;
  r2.x = saturate(0.333333343 * r0.x);
  r1.y = r4.x + -r4.z;
  r0.x = r1.y * 0.5 + r4.z;
  r1.z = r4.y + -r0.x;
  r1.x = r1.z * 0.5 + r0.x;
  r0.xy = r0.yy ? r1.yx : r1.zx;
  r6.zw = saturate(r0.xy * float2(0.5,1) + float2(0.5,0));
  r3.xyz = saturate(r3.xyz);
  r0.xyz = cmp(float3(0.00313080009,0.00313080009,0.00313080009) >= r3.xyz);
  r1.xyz = float3(12.9200001,12.9200001,12.9200001) * r3.xyz;
  r3.xyz = log2(r3.xyz);
  r3.xyz = float3(0.416660011,0.416660011,0.416660011) * r3.xyz;
  r3.xyz = exp2(r3.xyz);
  r3.xyz = r3.xyz * float3(1.05499995,1.05499995,1.05499995) + float3(-0.0549999997,-0.0549999997,-0.0549999997);
  r0.xyz = r0.xyz ? r1.xyz : r3.xyz;
  r0.xyz = r0.xyz * float3(255,255,255) + float3(0.5,0.5,0.5);
  r0.xyz = (uint3)r0.xyz;
  r0.xy = (uint2)r0.xy << int2(16,8);
  r0.x = (int)r0.x | 0xff000000;
  r0.x = (int)r0.y | (int)r0.x;
  r0.x = (int)r0.z | (int)r0.x;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, vThreadID.xyyy, r0.xxxx
  r0.xyzw = r2.xyzw * float4(3,1023,1023,1023) + float4(0.5,0.5,0.5,0.5);
  r0.xyzw = (uint4)r0.xyzw;
  r0.yz = (uint2)r0.yz << int2(20,10);
  r0.x = mad((int)r0.x, 0x40000000, (int)r0.y);
  r0.x = (int)r0.x + (int)r0.z;
  r0.x = (int)r0.x + (int)r0.w;
// No code for instruction (needs manual fix):
store_uav_typed u1.xyzw, vThreadID.xyyy, r0.xxxx
  r0.xyzw = r6.xyzw * float4(3,1023,1023,1023) + float4(0.5,0.5,0.5,0.5);
  r0.xyzw = (uint4)r0.xyzw;
  r0.yz = (uint2)r0.yz << int2(20,10);
  r0.x = mad((int)r0.x, 0x40000000, (int)r0.y);
  r0.x = (int)r0.x + (int)r0.z;
  r0.x = (int)r0.x + (int)r0.w;
// No code for instruction (needs manual fix):
store_uav_typed u2.xyzw, vThreadID.xyyy, r0.xxxx
  return;
}