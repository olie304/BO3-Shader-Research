// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:28 2021

SamplerState gReflectionProbeSampler_s : register(s0);
TextureCubeArray<float3> gSRVReflectionArray : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main()
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2darray (float,float,float,float) u0
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2darray (float,float,float,float) u1
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2darray (float,float,float,float) u2
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2darray (float,float,float,float) u3
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2darray (float,float,float,float) u4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2darray (float,float,float,float) u5
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2darray (float,float,float,float) u6
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_structured g0, 12, 64
// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_structured g1, 4, 64
// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.x = mad((int)vThreadIDInGroup.y, 8, (int)vThreadIDInGroup.x);
  r1.xyzw = (int4)r0.xxxx + int4(8,1,16,24);
  r2.xyzw = (int4)r0.xxxx + int4(32,40,9,48);
  r3.xyzw = (int4)r0.xxxx + int4(2,17,25,33);
  r4.xyzw = (int4)r0.xxxx + int4(41,10,49,3);
  r5.xyzw = (int4)r0.xxxx + int4(18,26,34,42);
  r6.xyzw = (int4)r0.xxxx + int4(11,50,4,19);
  r7.xyzw = (int4)r0.xxxx + int4(27,35,43,12);
  r8.xyzw = (int4)r0.xxxx + int4(51,5,20,28);
  r9.xyzw = (int4)r0.xxxx + int4(36,44,13,52);
  r10.xyzw = (int4)r0.xxxx + int4(6,21,29,37);
  r11.xyzw = (int4)r0.xxxx + int4(45,14,53,22);
  r12.xyzw = (int4)r0.xxxx + int4(30,38,46,54);
  r13.w = 0;
  r14.zw = vThreadGroupID.zz;
  r15.zw = vThreadGroupID.zz;
  r16.zw = vThreadGroupID.zz;
  r17.zw = vThreadGroupID.zz;
  r18.zw = vThreadGroupID.zz;
  r19.zw = vThreadGroupID.zz;
  r0.y = 0;
  while (true) {
    r0.z = cmp((uint)r0.y >= 7);
    if (r0.z != 0) break;
    r0.zw = int2(4,256) >> (int2)r0.yy;
    r0.z = max(1, (uint)r0.z);
    r20.xy = (int2)r0.zz * (int2)vThreadGroupID.xy;
    r20.xy = cmp((uint2)r20.xy < (uint2)r0.ww);
    r20.x = r20.y ? r20.x : 0;
    if (r20.x != 0) {
      uiDest.x = 8 / (uint)r0.z;
      r20.x = uiDest.x;
      r20.y = (int)r20.x * (int)r20.x;
      uiDest.xy = (uint2)vThreadIDInGroup.xy / (uint2)r20.xx;
      r22.xy = (uint2)vThreadIDInGroup.xy % (uint2)r20.xx;
      r21.xy = uiDest.xy;
      r14.xy = mad((int2)vThreadGroupID.xy, (int2)r0.zz, (int2)r21.xy);
      uiDest.z = 128 / (uint)r20.y;
      r0.z = uiDest.z;
      r20.y = mad((int)r22.y, (int)r20.x, (int)r22.x);
      r20.z = (int)r0.z * (int)r20.y;
      r0.z = mad((int)r20.y, (int)r0.z, (int)r0.z);
      r20.y = (uint)r0.y;
      r20.y = -r20.y * 0.166666672 + 1;
      r20.y = max(0, r20.y);
      r20.y = 17 * r20.y;
      r20.y = exp2(r20.y);
      r21.xy = (uint2)r14.xy;
      r21.xy = float2(0.5,0.5) + r21.xy;
      r20.w = r21.x + r21.x;
      r0.w = (uint)r0.w;
      r20.w = r20.w / r0.w;
      r20.yw = float2(2,-1) + r20.yw;
      r21.x = -2 * r21.y;
      r0.w = r21.x / r0.w;
      r0.w = 1 + r0.w;
      switch (vThreadGroupID.z) {
        case 0 :        r23.xyz = float3(0,1,0) * r0.www;
        r23.xyz = r20.www * float3(0,0,-1) + r23.xyz;
        r23.xyz = float3(1,0,0) + r23.xyz;
        r21.w = dot(r23.xyz, r23.xyz);
        r21.w = rsqrt(r21.w);
        r21.xyz = r23.xyz * r21.www;
        break;
        case 1 :        r23.xyz = float3(0,1,0) * r0.www;
        r23.xyz = r20.www * float3(0,0,1) + r23.xyz;
        r23.xyz = float3(-1,0,0) + r23.xyz;
        r21.w = dot(r23.xyz, r23.xyz);
        r21.w = rsqrt(r21.w);
        r21.xyz = r23.xyz * r21.www;
        break;
        case 2 :        r23.xyz = float3(0,0,-1) * r0.www;
        r23.xyz = r20.www * float3(1,0,0) + r23.xyz;
        r23.xyz = float3(0,1,0) + r23.xyz;
        r21.w = dot(r23.xyz, r23.xyz);
        r21.w = rsqrt(r21.w);
        r21.xyz = r23.xyz * r21.www;
        break;
        case 3 :        r23.xyz = float3(0,0,1) * r0.www;
        r23.xyz = r20.www * float3(1,0,0) + r23.xyz;
        r23.xyz = float3(0,-1,0) + r23.xyz;
        r21.w = dot(r23.xyz, r23.xyz);
        r21.w = rsqrt(r21.w);
        r21.xyz = r23.xyz * r21.www;
        break;
        case 4 :        r23.xyz = float3(0,1,0) * r0.www;
        r23.xyz = r20.www * float3(1,0,0) + r23.xyz;
        r23.xyz = float3(0,0,1) + r23.xyz;
        r21.w = dot(r23.xyz, r23.xyz);
        r21.w = rsqrt(r21.w);
        r21.xyz = r23.xyz * r21.www;
        break;
        case 5 :        r23.xyz = float3(0,1,0) * r0.www;
        r23.xyz = r20.www * float3(-1,0,0) + r23.xyz;
        r23.xyz = float3(0,0,-1) + r23.xyz;
        r0.w = dot(r23.xyz, r23.xyz);
        r0.w = rsqrt(r0.w);
        r21.xyz = r23.xyz * r0.www;
        break;
        default :
        break;
      }
      r0.w = (int)r0.y + -1;
      r0.w = max(0, (int)r0.w);
      r20.w = (uint)r14.y << 4;
      r21.w = (int)r14.y + 0x9e3779b9;
      r20.w = (int)r20.w ^ (int)r21.w;
      r21.w = (uint)r14.y >> 5;
      r20.w = (int)r20.w ^ (int)r21.w;
      r20.w = (int)r14.x + (int)r20.w;
      r21.w = (uint)r20.w << 4;
      r22.z = (int)r20.w + 0x9e3779b9;
      r21.w = (int)r21.w ^ (int)r22.z;
      r22.z = (uint)r20.w >> 5;
      r21.w = (int)r21.w ^ (int)r22.z;
      r21.w = (int)r14.y + (int)r21.w;
      r22.z = (uint)r21.w << 4;
      r22.w = (int)r21.w + 0x3c6ef372;
      r22.z = (int)r22.w ^ (int)r22.z;
      r22.w = (uint)r21.w >> 5;
      r22.z = (int)r22.w ^ (int)r22.z;
      r20.w = (int)r20.w + (int)r22.z;
      r22.z = (uint)r20.w << 4;
      r22.w = (int)r20.w + 0x3c6ef372;
      r22.z = (int)r22.w ^ (int)r22.z;
      r22.w = (uint)r20.w >> 5;
      r22.z = (int)r22.w ^ (int)r22.z;
      r21.w = (int)r21.w + (int)r22.z;
      r22.z = (uint)r21.w << 4;
      r22.w = (int)r21.w + 0xdaa66d2b;
      r22.z = (int)r22.w ^ (int)r22.z;
      r22.w = (uint)r21.w >> 5;
      r22.z = (int)r22.w ^ (int)r22.z;
      r20.w = (int)r20.w + (int)r22.z;
      r22.z = (uint)r20.w << 4;
      r22.w = (int)r20.w + 0xdaa66d2b;
      r22.z = (int)r22.w ^ (int)r22.z;
      r22.w = (uint)r20.w >> 5;
      r22.z = (int)r22.w ^ (int)r22.z;
      r21.w = (int)r21.w + (int)r22.z;
      r20.w = (int)r20.w & 0x0000ffff;
      r23.x = (int)r21.w & 0x0000ffff;
      r21.w = (int)r23.x ^ 0x00008000;
      r20.y = 2 / r20.y;
      r20.y = -1 + r20.y;
      r22.z = cmp(abs(r21.z) < 0.999000013);
      r24.xyz = r22.zzz ? float3(1,0,0) : float3(0,1,0);
      r25.xyz = r24.xyz * r21.yzx;
      r24.xyz = r24.zxy * r21.zxy + -r25.xyz;
      r22.z = dot(r24.xyz, r24.xyz);
      r22.z = rsqrt(r22.z);
      r24.xyz = r24.xyz * r22.zzz;
      r25.xyz = r24.yzx * r21.zxy;
      r25.xyz = r21.yzx * r24.zxy + -r25.xyz;
      r0.w = (uint)r0.w;
      r26.xyz = float3(0,0,0);
      r22.z = 0;
      r23.y = r20.z;
      while (true) {
        r22.w = cmp((uint)r23.y >= (uint)r0.z);
        if (r22.w != 0) break;
        r22.w = (uint)r23.y << 16;
        r22.w = (uint)r22.w >> 7;
        r22.w = (int)r20.w ^ (int)r22.w;
        r23.z = cmp((int)r23.y != 0);
        r23.w = (int)r23.y & 1;
        r27.x = r23.w ? r21.w : r23.x;
        r27.y = (uint)r23.y >> 1;
        r27.xy = r23.yy ? r27.xy : r23.xy;
        r23.w = cmp((int)r27.y != 0);
        r23.z = r23.w ? r23.z : 0;
        r23.w = (int)r27.y & 1;
        r24.w = (int)r27.x ^ 0x0000c000;
        r28.x = r23.w ? r24.w : r27.x;
        r28.y = (uint)r27.y >> 1;
        r27.xy = r23.zz ? r28.xy : r27.xy;
        r23.w = cmp((int)r27.y != 0);
        r23.z = r23.w ? r23.z : 0;
        r23.w = (int)r27.y & 1;
        r24.w = (int)r27.x ^ 0x0000e000;
        r28.x = r23.w ? r24.w : r27.x;
        r28.y = (uint)r27.y >> 1;
        r27.xy = r23.zz ? r28.xy : r27.xy;
        r23.w = cmp((int)r27.y != 0);
        r23.z = r23.w ? r23.z : 0;
        r23.w = (int)r27.y & 1;
        r24.w = (int)r27.x ^ 0x0000f000;
        r28.x = r23.w ? r24.w : r27.x;
        r28.y = (uint)r27.y >> 1;
        r27.xy = r23.zz ? r28.xy : r27.xy;
        r23.w = cmp((int)r27.y != 0);
        r23.z = r23.w ? r23.z : 0;
        r23.w = (int)r27.y & 1;
        r24.w = (int)r27.x ^ 0x0000f800;
        r28.x = r23.w ? r24.w : r27.x;
        r28.y = (uint)r27.y >> 1;
        r27.xy = r23.zz ? r28.xy : r27.xy;
        r23.w = cmp((int)r27.y != 0);
        r23.z = r23.w ? r23.z : 0;
        r23.w = (int)r27.y & 1;
        r24.w = (int)r27.x ^ 0x0000fc00;
        r28.x = r23.w ? r24.w : r27.x;
        r28.y = (uint)r27.y >> 1;
        r27.xy = r23.zz ? r28.xy : r27.xy;
        r23.w = cmp((int)r27.y != 0);
        r23.z = r23.w ? r23.z : 0;
        r23.w = (int)r27.y & 1;
        r24.w = (int)r27.x ^ 0x0000fe00;
        r28.x = r23.w ? r24.w : r27.x;
        r28.y = (uint)r27.y >> 1;
        r27.xy = r23.zz ? r28.xy : r27.xy;
        r23.w = cmp((int)r27.y != 0);
        r23.z = r23.w ? r23.z : 0;
        r23.w = (int)r27.y & 1;
        r24.w = (int)r27.x ^ 0x0000ff00;
        r28.x = r23.w ? r24.w : r27.x;
        r28.y = (uint)r27.y >> 1;
        r27.xy = r23.zz ? r28.xy : r27.xy;
        r23.w = cmp((int)r27.y != 0);
        r23.z = r23.w ? r23.z : 0;
        r23.w = (int)r27.y & 1;
        r24.w = (int)r27.x ^ 0x0000ff80;
        r28.x = r23.w ? r24.w : r27.x;
        r28.y = (uint)r27.y >> 1;
        r27.xy = r23.zz ? r28.xy : r27.xy;
        r23.w = cmp((int)r27.y != 0);
        r23.z = r23.w ? r23.z : 0;
        r23.w = (int)r27.y & 1;
        r24.w = (int)r27.x ^ 0x0000ffc0;
        r28.x = r23.w ? r24.w : r27.x;
        r28.y = (uint)r27.y >> 1;
        r27.xy = r23.zz ? r28.xy : r27.xy;
        r23.w = cmp((int)r27.y != 0);
        r23.z = r23.w ? r23.z : 0;
        r23.w = (int)r27.y & 1;
        r24.w = (int)r27.x ^ 0x0000ffe0;
        r28.x = r23.w ? r24.w : r27.x;
        r28.y = (uint)r27.y >> 1;
        r27.xy = r23.zz ? r28.xy : r27.xy;
        r23.w = cmp((int)r27.y != 0);
        r23.z = r23.w ? r23.z : 0;
        r23.w = (int)r27.y & 1;
        r24.w = (int)r27.x ^ 0x0000fff0;
        r28.x = r23.w ? r24.w : r27.x;
        r28.y = (uint)r27.y >> 1;
        r27.xy = r23.zz ? r28.xy : r27.xy;
        r23.w = cmp((int)r27.y != 0);
        r23.z = r23.w ? r23.z : 0;
        r23.w = (int)r27.y & 1;
        r24.w = (int)r27.x ^ 0x0000fff8;
        r28.x = r23.w ? r24.w : r27.x;
        r28.y = (uint)r27.y >> 1;
        r27.xy = r23.zz ? r28.xy : r27.xy;
        r23.w = cmp((int)r27.y != 0);
        r23.z = r23.w ? r23.z : 0;
        r23.w = (int)r27.y & 1;
        r24.w = (int)r27.x ^ 0x0000fffc;
        r28.x = r23.w ? r24.w : r27.x;
        r28.y = (uint)r27.y >> 1;
        r27.xy = r23.zz ? r28.xy : r27.xy;
        r23.w = cmp((int)r27.y != 0);
        r23.z = r23.w ? r23.z : 0;
        r23.w = (int)r27.y & 1;
        r24.w = (int)r27.x ^ 0x0000fffe;
        r28.x = r23.w ? r24.w : r27.x;
        r28.y = (uint)r27.y >> 1;
        r27.xy = r23.zz ? r28.xy : r27.xy;
        r23.w = cmp((int)r27.y != 0);
        r23.z = r23.w ? r23.z : 0;
        r23.w = (int)r27.y & 1;
        r24.w = (int)r27.x ^ 0x0000ffff;
        r28.x = r23.w ? r24.w : r27.x;
        r28.y = (uint)r27.y >> 1;
        r27.xy = r23.zz ? r28.xy : r27.xy;
        r23.w = cmp((int)r27.y != 0);
        r23.z = r23.w ? r23.z : 0;
        r23.w = (int)r27.y & 1;
        r24.w = (int)r27.x ^ 0x0000ffff;
        r28.x = r23.w ? r24.w : r27.x;
        r28.y = (uint)r27.y >> 1;
        r27.xy = r23.zz ? r28.xy : r27.xy;
        r23.w = cmp((int)r27.y != 0);
        r23.z = r23.w ? r23.z : 0;
        r23.w = (int)r27.y & 1;
        r24.w = (int)r27.x ^ 0x0000ffff;
        r28.x = r23.w ? r24.w : r27.x;
        r28.y = (uint)r27.y >> 1;
        r27.xy = r23.zz ? r28.xy : r27.xy;
        r23.w = cmp((int)r27.y != 0);
        r23.z = r23.w ? r23.z : 0;
        r23.w = (int)r27.y & 1;
        r24.w = (int)r27.x ^ 0x0000ffff;
        r28.x = r23.w ? r24.w : r27.x;
        r28.y = (uint)r27.y >> 1;
        r27.xy = r23.zz ? r28.xy : r27.xy;
        r23.w = cmp((int)r27.y != 0);
        r23.z = r23.w ? r23.z : 0;
        r23.w = (int)r27.y & 1;
        r24.w = (int)r27.x ^ 0x0000ffff;
        r28.x = r23.w ? r24.w : r27.x;
        r28.y = (uint)r27.y >> 1;
        r27.xy = r23.zz ? r28.xy : r27.xy;
        r23.w = cmp((int)r27.y != 0);
        r23.z = r23.w ? r23.z : 0;
        r23.w = (int)r27.y & 1;
        r24.w = (int)r27.x ^ 0x0000ffff;
        r28.x = r23.w ? r24.w : r27.x;
        r28.y = (uint)r27.y >> 1;
        r27.xy = r23.zz ? r28.xy : r27.xy;
        r23.w = cmp((int)r27.y != 0);
        r23.z = r23.w ? r23.z : 0;
        r23.w = (int)r27.y & 1;
        r24.w = (int)r27.x ^ 0x0000ffff;
        r28.x = r23.w ? r24.w : r27.x;
        r28.y = (uint)r27.y >> 1;
        r27.xy = r23.zz ? r28.xy : r27.xy;
        r23.w = cmp((int)r27.y != 0);
        r23.z = r23.w ? r23.z : 0;
        r23.w = (int)r27.y & 1;
        r24.w = (int)r27.x ^ 0x0000ffff;
        r28.x = r23.w ? r24.w : r27.x;
        r28.y = (uint)r27.y >> 1;
        r27.xy = r23.zz ? r28.xy : r27.xy;
        r23.w = cmp((int)r27.y != 0);
        r23.z = r23.w ? r23.z : 0;
        r23.w = (int)r27.y & 1;
        r24.w = (int)r27.x ^ 0x0000ffff;
        r28.x = r23.w ? r24.w : r27.x;
        r28.y = (uint)r27.y >> 1;
        r27.xy = r23.zz ? r28.xy : r27.xy;
        r23.w = cmp((int)r27.y != 0);
        r23.z = r23.w ? r23.z : 0;
        r23.w = (int)r27.y & 1;
        r24.w = (int)r27.x ^ 0x0000ffff;
        r28.x = r23.w ? r24.w : r27.x;
        r28.y = (uint)r27.y >> 1;
        r27.xy = r23.zz ? r28.xy : r27.xy;
        r23.w = cmp((int)r27.y != 0);
        r23.z = r23.w ? r23.z : 0;
        r23.w = (int)r27.y & 1;
        r24.w = (int)r27.x ^ 0x0000ffff;
        r28.x = r23.w ? r24.w : r27.x;
        r28.y = (uint)r27.y >> 1;
        r27.xy = r23.zz ? r28.xy : r27.xy;
        r23.w = cmp((int)r27.y != 0);
        r23.z = r23.w ? r23.z : 0;
        r23.w = (int)r27.y & 1;
        r24.w = (int)r27.x ^ 0x0000ffff;
        r28.x = r23.w ? r24.w : r27.x;
        r28.y = (uint)r27.y >> 1;
        r27.xy = r23.zz ? r28.xy : r27.xy;
        r23.w = cmp((int)r27.y != 0);
        r23.z = r23.w ? r23.z : 0;
        r23.w = (int)r27.y & 1;
        r24.w = (int)r27.x ^ 0x0000ffff;
        r28.x = r23.w ? r24.w : r27.x;
        r28.y = (uint)r27.y >> 1;
        r27.xy = r23.zz ? r28.xy : r27.xy;
        r23.w = cmp((int)r27.y != 0);
        r23.z = r23.w ? r23.z : 0;
        r23.w = (int)r27.y & 1;
        r24.w = (int)r27.x ^ 0x0000ffff;
        r28.x = r23.w ? r24.w : r27.x;
        r28.y = (uint)r27.y >> 1;
        r27.xy = r23.zz ? r28.xy : r27.xy;
        r23.w = cmp((int)r27.y != 0);
        r23.z = r23.w ? r23.z : 0;
        r23.w = (int)r27.y & 1;
        r24.w = (int)r27.x ^ 0x0000ffff;
        r28.x = r23.w ? r24.w : r27.x;
        r28.y = (uint)r27.y >> 1;
        r27.xy = r23.zz ? r28.xy : r27.xy;
        r23.w = cmp((int)r27.y != 0);
        r23.z = r23.w ? r23.z : 0;
        r23.w = (int)r27.y & 1;
        r24.w = (int)r27.x ^ 0x0000ffff;
        r28.x = r23.w ? r24.w : r27.x;
        r28.y = (uint)r27.y >> 1;
        r27.xy = r23.zz ? r28.xy : r27.xy;
        r23.w = cmp((int)r27.y != 0);
        r23.z = r23.w ? r23.z : 0;
        r23.w = (int)r27.x ^ 0x0000ffff;
        r23.z = r23.z ? r23.w : r27.x;
        r27.x = (uint)r22.w;
        r27.y = (uint)r23.z;
        r23.zw = float2(1.52587891e-05,1.52587891e-05) * r27.xy;
        r23.zw = min(float2(1,1), r23.zw);
        r22.w = 6.28318548 * r23.z;
        r23.z = 1 + -r23.w;
        r23.w = r20.y * r23.w + 1;
        r23.z = r23.z / r23.w;
        r23.z = min(1, r23.z);
        r23.w = sqrt(r23.z);
        r23.z = 1 + -r23.z;
        r23.z = sqrt(r23.z);
        sincos(r22.w, r27.x, r28.x);
        r22.w = r28.x * r23.z;
        r23.z = r27.x * r23.z;
        r27.xyz = r25.xyz * r23.zzz;
        r27.xyz = r24.xyz * r22.www + r27.xyz;
        r27.xyz = r21.xyz * r23.www + r27.xyz;
        r22.w = dot(r27.xyz, r27.xyz);
        r22.w = rsqrt(r22.w);
        r27.xyz = r27.xyz * r22.www;
        r22.w = dot(r21.xyz, r27.xyz);
        r23.z = cmp(9.99999975e-05 < r22.w);
        if (r23.z != 0) {
          r22.w = r22.w + r22.w;
          r13.xyz = r22.www * r27.xyz + -r21.xyz;
          r22.w = saturate(dot(r21.xyz, r13.xyz));
          r13.xyz = gSRVReflectionArray.SampleLevel(gReflectionProbeSampler_s, r13.xyzw, r0.w).xyz;
          r26.xyz = r13.xyz * r22.www + r26.xyz;
          r22.z = r22.z + r22.w;
        }
        r23.y = (int)r23.y + 1;
      }
      gSRVReflectionArray[r0.x].0 = g0.xyz;
      gSRVReflectionArray[r0.x].0 = g1.x;
      GroupMemoryBarrierWithGroupSync();
      r0.zw = cmp((int2)r22.xy == int2(0,0));
      r0.z = r0.w ? r0.z : 0;
      if (r0.z != 0) {
      // Known bad code for instruction (needs manual fix):
            ld_structured r13.xyz, r0.x, l(0), g0.xyzx
      r13.x = gReflectionProbeSampler[]..swiz;
      r13.y = gReflectionProbeSampler[]..swiz;
      r13.z = gReflectionProbeSampler[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured r0.z, r0.x, l(0), g1.xxxx
      r0.z = gReflectionProbeSampler[]..swiz;
        r0.w = cmp(1 < (uint)r20.x);
        if (r0.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured r20.yzw, r1.x, l(0), g0.xxyz
        r20.y = gReflectionProbeSampler[]..swiz;
        r20.z = gReflectionProbeSampler[]..swiz;
        r20.w = gReflectionProbeSampler[]..swiz;
          r13.xyz = r20.yzw + r13.xyz;
        // Known bad code for instruction (needs manual fix):
                ld_structured r20.y, r1.x, l(0), g1.xxxx
        r20.y = gReflectionProbeSampler[]..swiz;
          r0.z = r20.y + r0.z;
          r20.y = cmp(2 < (uint)r20.x);
          if (r20.y != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured r20.yzw, r1.z, l(0), g0.xxyz
          r20.y = gReflectionProbeSampler[]..swiz;
          r20.z = gReflectionProbeSampler[]..swiz;
          r20.w = gReflectionProbeSampler[]..swiz;
            r13.xyz = r20.yzw + r13.xyz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured r20.y, r1.z, l(0), g1.xxxx
          r20.y = gReflectionProbeSampler[]..swiz;
            r0.z = r20.y + r0.z;
            r20.y = cmp(3 < (uint)r20.x);
            if (r20.y != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured r20.yzw, r1.w, l(0), g0.xxyz
            r20.y = gReflectionProbeSampler[]..swiz;
            r20.z = gReflectionProbeSampler[]..swiz;
            r20.w = gReflectionProbeSampler[]..swiz;
              r13.xyz = r20.yzw + r13.xyz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r20.y, r1.w, l(0), g1.xxxx
            r20.y = gReflectionProbeSampler[]..swiz;
              r0.z = r20.y + r0.z;
              r20.y = cmp(4 < (uint)r20.x);
              if (r20.y != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured r20.yzw, r2.x, l(0), g0.xxyz
              r20.y = gReflectionProbeSampler[]..swiz;
              r20.z = gReflectionProbeSampler[]..swiz;
              r20.w = gReflectionProbeSampler[]..swiz;
                r13.xyz = r20.yzw + r13.xyz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured r20.y, r2.x, l(0), g1.xxxx
              r20.y = gReflectionProbeSampler[]..swiz;
                r0.z = r20.y + r0.z;
                r20.y = cmp(5 < (uint)r20.x);
                if (r20.y != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured r20.yzw, r2.y, l(0), g0.xxyz
                r20.y = gReflectionProbeSampler[]..swiz;
                r20.z = gReflectionProbeSampler[]..swiz;
                r20.w = gReflectionProbeSampler[]..swiz;
                  r13.xyz = r20.yzw + r13.xyz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured r20.y, r2.y, l(0), g1.xxxx
                r20.y = gReflectionProbeSampler[]..swiz;
                  r0.z = r20.y + r0.z;
                  r20.y = cmp(6 < (uint)r20.x);
                  if (r20.y != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured r20.yzw, r2.w, l(0), g0.xxyz
                  r20.y = gReflectionProbeSampler[]..swiz;
                  r20.z = gReflectionProbeSampler[]..swiz;
                  r20.w = gReflectionProbeSampler[]..swiz;
                    r13.xyz = r20.yzw + r13.xyz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured r20.y, r2.w, l(0), g1.xxxx
                  r20.y = gReflectionProbeSampler[]..swiz;
                    r0.z = r20.y + r0.z;
                  }
                }
              }
            }
          }
        }
        r20.yzw = r13.xyz;
        r21.x = r0.z;
        if (r0.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured r21.yzw, r1.y, l(0), g0.xxyz
        r21.y = gReflectionProbeSampler[]..swiz;
        r21.z = gReflectionProbeSampler[]..swiz;
        r21.w = gReflectionProbeSampler[]..swiz;
          r20.yzw = r21.yzw + r20.yzw;
        // Known bad code for instruction (needs manual fix):
                ld_structured r0.w, r1.y, l(0), g1.xxxx
        r0.w = gReflectionProbeSampler[]..swiz;
          r0.w = r21.x + r0.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured r21.xyz, r2.z, l(0), g0.xyzx
        r21.x = gReflectionProbeSampler[]..swiz;
        r21.y = gReflectionProbeSampler[]..swiz;
        r21.z = gReflectionProbeSampler[]..swiz;
          r13.xyz = r21.xyz + r20.yzw;
        // Known bad code for instruction (needs manual fix):
                ld_structured r20.y, r2.z, l(0), g1.xxxx
        r20.y = gReflectionProbeSampler[]..swiz;
          r0.z = r20.y + r0.w;
          r0.w = cmp(2 < (uint)r20.x);
          if (r0.w != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured r20.yzw, r3.y, l(0), g0.xxyz
          r20.y = gReflectionProbeSampler[]..swiz;
          r20.z = gReflectionProbeSampler[]..swiz;
          r20.w = gReflectionProbeSampler[]..swiz;
            r20.yzw = r20.yzw + r13.xyz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured r0.w, r3.y, l(0), g1.xxxx
          r0.w = gReflectionProbeSampler[]..swiz;
            r0.w = r0.z + r0.w;
            r21.x = cmp(3 < (uint)r20.x);
            if (r21.x != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured r21.yzw, r3.z, l(0), g0.xxyz
            r21.y = gReflectionProbeSampler[]..swiz;
            r21.z = gReflectionProbeSampler[]..swiz;
            r21.w = gReflectionProbeSampler[]..swiz;
              r20.yzw = r21.yzw + r20.yzw;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r21.y, r3.z, l(0), g1.xxxx
            r21.y = gReflectionProbeSampler[]..swiz;
              r0.w = r21.y + r0.w;
              r21.y = cmp(4 < (uint)r20.x);
              if (r21.y != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured r21.yzw, r3.w, l(0), g0.xxyz
              r21.y = gReflectionProbeSampler[]..swiz;
              r21.z = gReflectionProbeSampler[]..swiz;
              r21.w = gReflectionProbeSampler[]..swiz;
                r20.yzw = r21.yzw + r20.yzw;
              // Known bad code for instruction (needs manual fix):
                            ld_structured r21.y, r3.w, l(0), g1.xxxx
              r21.y = gReflectionProbeSampler[]..swiz;
                r0.w = r21.y + r0.w;
                r21.y = cmp(5 < (uint)r20.x);
                if (r21.y != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured r21.yzw, r4.x, l(0), g0.xxyz
                r21.y = gReflectionProbeSampler[]..swiz;
                r21.z = gReflectionProbeSampler[]..swiz;
                r21.w = gReflectionProbeSampler[]..swiz;
                  r20.yzw = r21.yzw + r20.yzw;
                // Known bad code for instruction (needs manual fix):
                                ld_structured r21.y, r4.x, l(0), g1.xxxx
                r21.y = gReflectionProbeSampler[]..swiz;
                  r0.w = r21.y + r0.w;
                  r21.y = cmp(6 < (uint)r20.x);
                  if (r21.y != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured r21.yzw, r4.z, l(0), g0.xxyz
                  r21.y = gReflectionProbeSampler[]..swiz;
                  r21.z = gReflectionProbeSampler[]..swiz;
                  r21.w = gReflectionProbeSampler[]..swiz;
                    r20.yzw = r21.yzw + r20.yzw;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured r21.y, r4.z, l(0), g1.xxxx
                  r21.y = gReflectionProbeSampler[]..swiz;
                    r0.w = r21.y + r0.w;
                  }
                }
              }
            }
          // Known bad code for instruction (needs manual fix):
                    ld_structured r21.yzw, r3.x, l(0), g0.xxyz
          r21.y = gReflectionProbeSampler[]..swiz;
          r21.z = gReflectionProbeSampler[]..swiz;
          r21.w = gReflectionProbeSampler[]..swiz;
            r20.yzw = r21.yzw + r20.yzw;
          // Known bad code for instruction (needs manual fix):
                    ld_structured r21.y, r3.x, l(0), g1.xxxx
          r21.y = gReflectionProbeSampler[]..swiz;
            r0.w = r21.y + r0.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured r21.yzw, r4.y, l(0), g0.xxyz
          r21.y = gReflectionProbeSampler[]..swiz;
          r21.z = gReflectionProbeSampler[]..swiz;
          r21.w = gReflectionProbeSampler[]..swiz;
            r20.yzw = r21.yzw + r20.yzw;
          // Known bad code for instruction (needs manual fix):
                    ld_structured r21.y, r4.y, l(0), g1.xxxx
          r21.y = gReflectionProbeSampler[]..swiz;
            r0.w = r21.y + r0.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured r21.yzw, r5.x, l(0), g0.xxyz
          r21.y = gReflectionProbeSampler[]..swiz;
          r21.z = gReflectionProbeSampler[]..swiz;
          r21.w = gReflectionProbeSampler[]..swiz;
            r13.xyz = r21.yzw + r20.yzw;
          // Known bad code for instruction (needs manual fix):
                    ld_structured r20.y, r5.x, l(0), g1.xxxx
          r20.y = gReflectionProbeSampler[]..swiz;
            r0.z = r20.y + r0.w;
            if (r21.x != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured r20.yzw, r5.y, l(0), g0.xxyz
            r20.y = gReflectionProbeSampler[]..swiz;
            r20.z = gReflectionProbeSampler[]..swiz;
            r20.w = gReflectionProbeSampler[]..swiz;
              r20.yzw = r20.yzw + r13.xyz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r0.w, r5.y, l(0), g1.xxxx
            r0.w = gReflectionProbeSampler[]..swiz;
              r0.w = r0.z + r0.w;
              r21.x = cmp(4 < (uint)r20.x);
              if (r21.x != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured r21.yzw, r5.z, l(0), g0.xxyz
              r21.y = gReflectionProbeSampler[]..swiz;
              r21.z = gReflectionProbeSampler[]..swiz;
              r21.w = gReflectionProbeSampler[]..swiz;
                r20.yzw = r21.yzw + r20.yzw;
              // Known bad code for instruction (needs manual fix):
                            ld_structured r21.y, r5.z, l(0), g1.xxxx
              r21.y = gReflectionProbeSampler[]..swiz;
                r0.w = r21.y + r0.w;
                r21.y = cmp(5 < (uint)r20.x);
                if (r21.y != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured r21.yzw, r5.w, l(0), g0.xxyz
                r21.y = gReflectionProbeSampler[]..swiz;
                r21.z = gReflectionProbeSampler[]..swiz;
                r21.w = gReflectionProbeSampler[]..swiz;
                  r20.yzw = r21.yzw + r20.yzw;
                // Known bad code for instruction (needs manual fix):
                                ld_structured r21.y, r5.w, l(0), g1.xxxx
                r21.y = gReflectionProbeSampler[]..swiz;
                  r0.w = r21.y + r0.w;
                  r21.y = cmp(6 < (uint)r20.x);
                  if (r21.y != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured r21.yzw, r6.y, l(0), g0.xxyz
                  r21.y = gReflectionProbeSampler[]..swiz;
                  r21.z = gReflectionProbeSampler[]..swiz;
                  r21.w = gReflectionProbeSampler[]..swiz;
                    r20.yzw = r21.yzw + r20.yzw;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured r21.y, r6.y, l(0), g1.xxxx
                  r21.y = gReflectionProbeSampler[]..swiz;
                    r0.w = r21.y + r0.w;
                  }
                }
              }
            // Known bad code for instruction (needs manual fix):
                        ld_structured r21.yzw, r4.w, l(0), g0.xxyz
            r21.y = gReflectionProbeSampler[]..swiz;
            r21.z = gReflectionProbeSampler[]..swiz;
            r21.w = gReflectionProbeSampler[]..swiz;
              r20.yzw = r21.yzw + r20.yzw;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r21.y, r4.w, l(0), g1.xxxx
            r21.y = gReflectionProbeSampler[]..swiz;
              r0.w = r21.y + r0.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r21.yzw, r6.x, l(0), g0.xxyz
            r21.y = gReflectionProbeSampler[]..swiz;
            r21.z = gReflectionProbeSampler[]..swiz;
            r21.w = gReflectionProbeSampler[]..swiz;
              r20.yzw = r21.yzw + r20.yzw;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r21.y, r6.x, l(0), g1.xxxx
            r21.y = gReflectionProbeSampler[]..swiz;
              r0.w = r21.y + r0.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r21.yzw, r6.w, l(0), g0.xxyz
            r21.y = gReflectionProbeSampler[]..swiz;
            r21.z = gReflectionProbeSampler[]..swiz;
            r21.w = gReflectionProbeSampler[]..swiz;
              r20.yzw = r21.yzw + r20.yzw;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r21.y, r6.w, l(0), g1.xxxx
            r21.y = gReflectionProbeSampler[]..swiz;
              r0.w = r21.y + r0.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r21.yzw, r7.x, l(0), g0.xxyz
            r21.y = gReflectionProbeSampler[]..swiz;
            r21.z = gReflectionProbeSampler[]..swiz;
            r21.w = gReflectionProbeSampler[]..swiz;
              r13.xyz = r21.yzw + r20.yzw;
            // Known bad code for instruction (needs manual fix):
                        ld_structured r20.y, r7.x, l(0), g1.xxxx
            r20.y = gReflectionProbeSampler[]..swiz;
              r0.z = r20.y + r0.w;
              if (r21.x != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured r20.yzw, r7.y, l(0), g0.xxyz
              r20.y = gReflectionProbeSampler[]..swiz;
              r20.z = gReflectionProbeSampler[]..swiz;
              r20.w = gReflectionProbeSampler[]..swiz;
                r20.yzw = r20.yzw + r13.xyz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured r0.w, r7.y, l(0), g1.xxxx
              r0.w = gReflectionProbeSampler[]..swiz;
                r0.w = r0.z + r0.w;
                r21.x = cmp(5 < (uint)r20.x);
                if (r21.x != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured r21.yzw, r7.z, l(0), g0.xxyz
                r21.y = gReflectionProbeSampler[]..swiz;
                r21.z = gReflectionProbeSampler[]..swiz;
                r21.w = gReflectionProbeSampler[]..swiz;
                  r20.yzw = r21.yzw + r20.yzw;
                // Known bad code for instruction (needs manual fix):
                                ld_structured r21.y, r7.z, l(0), g1.xxxx
                r21.y = gReflectionProbeSampler[]..swiz;
                  r0.w = r21.y + r0.w;
                  r21.y = cmp(6 < (uint)r20.x);
                  if (r21.y != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured r21.yzw, r8.x, l(0), g0.xxyz
                  r21.y = gReflectionProbeSampler[]..swiz;
                  r21.z = gReflectionProbeSampler[]..swiz;
                  r21.w = gReflectionProbeSampler[]..swiz;
                    r20.yzw = r21.yzw + r20.yzw;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured r21.y, r8.x, l(0), g1.xxxx
                  r21.y = gReflectionProbeSampler[]..swiz;
                    r0.w = r21.y + r0.w;
                  }
                }
              // Known bad code for instruction (needs manual fix):
                            ld_structured r21.yzw, r6.z, l(0), g0.xxyz
              r21.y = gReflectionProbeSampler[]..swiz;
              r21.z = gReflectionProbeSampler[]..swiz;
              r21.w = gReflectionProbeSampler[]..swiz;
                r20.yzw = r21.yzw + r20.yzw;
              // Known bad code for instruction (needs manual fix):
                            ld_structured r21.y, r6.z, l(0), g1.xxxx
              r21.y = gReflectionProbeSampler[]..swiz;
                r0.w = r21.y + r0.w;
              // Known bad code for instruction (needs manual fix):
                            ld_structured r21.yzw, r7.w, l(0), g0.xxyz
              r21.y = gReflectionProbeSampler[]..swiz;
              r21.z = gReflectionProbeSampler[]..swiz;
              r21.w = gReflectionProbeSampler[]..swiz;
                r20.yzw = r21.yzw + r20.yzw;
              // Known bad code for instruction (needs manual fix):
                            ld_structured r21.y, r7.w, l(0), g1.xxxx
              r21.y = gReflectionProbeSampler[]..swiz;
                r0.w = r21.y + r0.w;
              // Known bad code for instruction (needs manual fix):
                            ld_structured r21.yzw, r8.z, l(0), g0.xxyz
              r21.y = gReflectionProbeSampler[]..swiz;
              r21.z = gReflectionProbeSampler[]..swiz;
              r21.w = gReflectionProbeSampler[]..swiz;
                r20.yzw = r21.yzw + r20.yzw;
              // Known bad code for instruction (needs manual fix):
                            ld_structured r21.y, r8.z, l(0), g1.xxxx
              r21.y = gReflectionProbeSampler[]..swiz;
                r0.w = r21.y + r0.w;
              // Known bad code for instruction (needs manual fix):
                            ld_structured r21.yzw, r8.w, l(0), g0.xxyz
              r21.y = gReflectionProbeSampler[]..swiz;
              r21.z = gReflectionProbeSampler[]..swiz;
              r21.w = gReflectionProbeSampler[]..swiz;
                r20.yzw = r21.yzw + r20.yzw;
              // Known bad code for instruction (needs manual fix):
                            ld_structured r21.y, r8.w, l(0), g1.xxxx
              r21.y = gReflectionProbeSampler[]..swiz;
                r0.w = r21.y + r0.w;
              // Known bad code for instruction (needs manual fix):
                            ld_structured r21.yzw, r9.x, l(0), g0.xxyz
              r21.y = gReflectionProbeSampler[]..swiz;
              r21.z = gReflectionProbeSampler[]..swiz;
              r21.w = gReflectionProbeSampler[]..swiz;
                r13.xyz = r21.yzw + r20.yzw;
              // Known bad code for instruction (needs manual fix):
                            ld_structured r20.y, r9.x, l(0), g1.xxxx
              r20.y = gReflectionProbeSampler[]..swiz;
                r0.z = r20.y + r0.w;
                if (r21.x != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured r20.yzw, r9.y, l(0), g0.xxyz
                r20.y = gReflectionProbeSampler[]..swiz;
                r20.z = gReflectionProbeSampler[]..swiz;
                r20.w = gReflectionProbeSampler[]..swiz;
                  r20.yzw = r20.yzw + r13.xyz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured r0.w, r9.y, l(0), g1.xxxx
                r0.w = gReflectionProbeSampler[]..swiz;
                  r0.w = r0.z + r0.w;
                  r20.x = cmp(6 < (uint)r20.x);
                  if (r20.x != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured r21.xyz, r9.w, l(0), g0.xyzx
                  r21.x = gReflectionProbeSampler[]..swiz;
                  r21.y = gReflectionProbeSampler[]..swiz;
                  r21.z = gReflectionProbeSampler[]..swiz;
                    r20.yzw = r21.xyz + r20.yzw;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured r21.x, r9.w, l(0), g1.xxxx
                  r21.x = gReflectionProbeSampler[]..swiz;
                    r0.w = r21.x + r0.w;
                  }
                // Known bad code for instruction (needs manual fix):
                                ld_structured r21.xyz, r8.y, l(0), g0.xyzx
                r21.x = gReflectionProbeSampler[]..swiz;
                r21.y = gReflectionProbeSampler[]..swiz;
                r21.z = gReflectionProbeSampler[]..swiz;
                  r20.yzw = r21.xyz + r20.yzw;
                // Known bad code for instruction (needs manual fix):
                                ld_structured r21.x, r8.y, l(0), g1.xxxx
                r21.x = gReflectionProbeSampler[]..swiz;
                  r0.w = r21.x + r0.w;
                // Known bad code for instruction (needs manual fix):
                                ld_structured r21.xyz, r9.z, l(0), g0.xyzx
                r21.x = gReflectionProbeSampler[]..swiz;
                r21.y = gReflectionProbeSampler[]..swiz;
                r21.z = gReflectionProbeSampler[]..swiz;
                  r20.yzw = r21.xyz + r20.yzw;
                // Known bad code for instruction (needs manual fix):
                                ld_structured r21.x, r9.z, l(0), g1.xxxx
                r21.x = gReflectionProbeSampler[]..swiz;
                  r0.w = r21.x + r0.w;
                // Known bad code for instruction (needs manual fix):
                                ld_structured r21.xyz, r10.y, l(0), g0.xyzx
                r21.x = gReflectionProbeSampler[]..swiz;
                r21.y = gReflectionProbeSampler[]..swiz;
                r21.z = gReflectionProbeSampler[]..swiz;
                  r20.yzw = r21.xyz + r20.yzw;
                // Known bad code for instruction (needs manual fix):
                                ld_structured r21.x, r10.y, l(0), g1.xxxx
                r21.x = gReflectionProbeSampler[]..swiz;
                  r0.w = r21.x + r0.w;
                // Known bad code for instruction (needs manual fix):
                                ld_structured r21.xyz, r10.z, l(0), g0.xyzx
                r21.x = gReflectionProbeSampler[]..swiz;
                r21.y = gReflectionProbeSampler[]..swiz;
                r21.z = gReflectionProbeSampler[]..swiz;
                  r20.yzw = r21.xyz + r20.yzw;
                // Known bad code for instruction (needs manual fix):
                                ld_structured r21.x, r10.z, l(0), g1.xxxx
                r21.x = gReflectionProbeSampler[]..swiz;
                  r0.w = r21.x + r0.w;
                // Known bad code for instruction (needs manual fix):
                                ld_structured r21.xyz, r10.w, l(0), g0.xyzx
                r21.x = gReflectionProbeSampler[]..swiz;
                r21.y = gReflectionProbeSampler[]..swiz;
                r21.z = gReflectionProbeSampler[]..swiz;
                  r20.yzw = r21.xyz + r20.yzw;
                // Known bad code for instruction (needs manual fix):
                                ld_structured r21.x, r10.w, l(0), g1.xxxx
                r21.x = gReflectionProbeSampler[]..swiz;
                  r0.w = r21.x + r0.w;
                // Known bad code for instruction (needs manual fix):
                                ld_structured r21.xyz, r11.x, l(0), g0.xyzx
                r21.x = gReflectionProbeSampler[]..swiz;
                r21.y = gReflectionProbeSampler[]..swiz;
                r21.z = gReflectionProbeSampler[]..swiz;
                  r13.xyz = r21.xyz + r20.yzw;
                // Known bad code for instruction (needs manual fix):
                                ld_structured r20.y, r11.x, l(0), g1.xxxx
                r20.y = gReflectionProbeSampler[]..swiz;
                  r0.z = r20.y + r0.w;
                  if (r20.x != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured r20.xyz, r11.z, l(0), g0.xyzx
                  r20.x = gReflectionProbeSampler[]..swiz;
                  r20.y = gReflectionProbeSampler[]..swiz;
                  r20.z = gReflectionProbeSampler[]..swiz;
                    r20.xyz = r20.xyz + r13.xyz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured r0.w, r11.z, l(0), g1.xxxx
                  r0.w = gReflectionProbeSampler[]..swiz;
                    r0.w = r0.z + r0.w;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured r21.xyz, r10.x, l(0), g0.xyzx
                  r21.x = gReflectionProbeSampler[]..swiz;
                  r21.y = gReflectionProbeSampler[]..swiz;
                  r21.z = gReflectionProbeSampler[]..swiz;
                    r20.xyz = r21.xyz + r20.xyz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured r20.w, r10.x, l(0), g1.xxxx
                  r20.w = gReflectionProbeSampler[]..swiz;
                    r0.w = r20.w + r0.w;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured r21.xyz, r11.y, l(0), g0.xyzx
                  r21.x = gReflectionProbeSampler[]..swiz;
                  r21.y = gReflectionProbeSampler[]..swiz;
                  r21.z = gReflectionProbeSampler[]..swiz;
                    r20.xyz = r21.xyz + r20.xyz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured r20.w, r11.y, l(0), g1.xxxx
                  r20.w = gReflectionProbeSampler[]..swiz;
                    r0.w = r20.w + r0.w;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured r21.xyz, r11.w, l(0), g0.xyzx
                  r21.x = gReflectionProbeSampler[]..swiz;
                  r21.y = gReflectionProbeSampler[]..swiz;
                  r21.z = gReflectionProbeSampler[]..swiz;
                    r20.xyz = r21.xyz + r20.xyz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured r20.w, r11.w, l(0), g1.xxxx
                  r20.w = gReflectionProbeSampler[]..swiz;
                    r0.w = r20.w + r0.w;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured r21.xyz, r12.x, l(0), g0.xyzx
                  r21.x = gReflectionProbeSampler[]..swiz;
                  r21.y = gReflectionProbeSampler[]..swiz;
                  r21.z = gReflectionProbeSampler[]..swiz;
                    r20.xyz = r21.xyz + r20.xyz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured r20.w, r12.x, l(0), g1.xxxx
                  r20.w = gReflectionProbeSampler[]..swiz;
                    r0.w = r20.w + r0.w;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured r21.xyz, r12.y, l(0), g0.xyzx
                  r21.x = gReflectionProbeSampler[]..swiz;
                  r21.y = gReflectionProbeSampler[]..swiz;
                  r21.z = gReflectionProbeSampler[]..swiz;
                    r20.xyz = r21.xyz + r20.xyz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured r20.w, r12.y, l(0), g1.xxxx
                  r20.w = gReflectionProbeSampler[]..swiz;
                    r0.w = r20.w + r0.w;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured r21.xyz, r12.z, l(0), g0.xyzx
                  r21.x = gReflectionProbeSampler[]..swiz;
                  r21.y = gReflectionProbeSampler[]..swiz;
                  r21.z = gReflectionProbeSampler[]..swiz;
                    r20.xyz = r21.xyz + r20.xyz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured r20.w, r12.z, l(0), g1.xxxx
                  r20.w = gReflectionProbeSampler[]..swiz;
                    r0.w = r20.w + r0.w;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured r21.xyz, r12.w, l(0), g0.xyzx
                  r21.x = gReflectionProbeSampler[]..swiz;
                  r21.y = gReflectionProbeSampler[]..swiz;
                  r21.z = gReflectionProbeSampler[]..swiz;
                    r13.xyz = r21.xyz + r20.xyz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured r20.x, r12.w, l(0), g1.xxxx
                  r20.x = gReflectionProbeSampler[]..swiz;
                    r0.z = r20.x + r0.w;
                  }
                }
              }
            }
          }
        }
        r20.xyzw = r13.xyzx / r0.zzzz;
        switch (r0.y) {
          case 0 :        // No code for instruction (needs manual fix):
                store_uav_typed u0.xyzw, r14.xyzz, r20.wyzw
          break;
          case 1 :        // No code for instruction (needs manual fix):
                store_uav_typed u1.xyzw, r14.xyww, r20.wyzw
          break;
          case 2 :          r15.xy = r14.xy;
        // No code for instruction (needs manual fix):
                store_uav_typed u2.xyzw, r15.xyzw, r20.xyzw
          break;
          case 3 :          r16.xy = r14.xy;
        // No code for instruction (needs manual fix):
                store_uav_typed u3.xyzw, r16.xyzw, r20.xyzw
          break;
          case 4 :          r17.xy = r14.xy;
        // No code for instruction (needs manual fix):
                store_uav_typed u4.xyzw, r17.xyzw, r20.xyzw
          break;
          case 5 :          r18.xy = r14.xy;
        // No code for instruction (needs manual fix):
                store_uav_typed u5.xyzw, r18.xyzw, r20.xyzw
          break;
          case 6 :          r19.xy = r14.xy;
        // No code for instruction (needs manual fix):
                store_uav_typed u6.xyzw, r19.xyzw, r20.xyzw
          break;
          default :
          break;
        }
      }
    }
    GroupMemoryBarrierWithGroupSync();
    r0.y = (int)r0.y + 1;
  }
  return;
}