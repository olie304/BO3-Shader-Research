// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:20 2021

cbuffer GenericsCBuffer : register(b3)
{
  float4 scriptVector0 : packoffset(c0);
  float4 scriptVector1 : packoffset(c1);
  float4 scriptVector2 : packoffset(c2);
  float4 scriptVector3 : packoffset(c3);
  float4 scriptVector4 : packoffset(c4);
  float4 scriptVector5 : packoffset(c5);
  float4 scriptVector6 : packoffset(c6);
  float4 scriptVector7 : packoffset(c7);
  float4 weaponParam0 : packoffset(c8);
  float4 weaponParam1 : packoffset(c9);
  float4 weaponParam2 : packoffset(c10);
  float4 weaponParam3 : packoffset(c11);
  float4 weaponParam4 : packoffset(c12);
  float4 weaponParam5 : packoffset(c13);
  float4 weaponParam6 : packoffset(c14);
  float4 weaponParam7 : packoffset(c15);
}

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 6
  r0.x = (uint)scriptVector0.y;
  r0.yz = cmp((uint2)vThreadID.xy >= (uint2)r0.xx);
  r0.y = (int)r0.z | (int)r0.y;
  if (r0.y != 0) {
    return;
  }
  r0.yz = (uint2)vThreadID.xy;
  r0.yz = float2(0.5,0.5) + r0.yz;
  r0.y = r0.y + r0.y;
  r0.x = (uint)r0.x;
  r0.y = r0.y / r0.x;
  r0.z = -2 * r0.z;
  r0.x = r0.z / r0.x;
  r0.xy = float2(1,-1) + r0.xy;
  switch (vThreadID.z) {
    case 0 :    r2.xyz = float3(0,1,0) * r0.xxx;
    r2.xyz = r0.yyy * float3(0,0,-1) + r2.xyz;
    r2.xyz = float3(1,0,0) + r2.xyz;
    r0.z = dot(r2.xyz, r2.xyz);
    r0.z = rsqrt(r0.z);
    r1.xyz = r2.xyz * r0.zzz;
    break;
    case 1 :    r2.xyz = float3(0,1,0) * r0.xxx;
    r2.xyz = r0.yyy * float3(0,0,1) + r2.xyz;
    r2.xyz = float3(-1,0,0) + r2.xyz;
    r0.z = dot(r2.xyz, r2.xyz);
    r0.z = rsqrt(r0.z);
    r1.xyz = r2.xyz * r0.zzz;
    break;
    case 2 :    r2.xyz = float3(0,0,-1) * r0.xxx;
    r2.xyz = r0.yyy * float3(1,0,0) + r2.xyz;
    r2.xyz = float3(0,1,0) + r2.xyz;
    r0.z = dot(r2.xyz, r2.xyz);
    r0.z = rsqrt(r0.z);
    r1.xyz = r2.xyz * r0.zzz;
    break;
    case 3 :    r2.xyz = float3(0,0,1) * r0.xxx;
    r2.xyz = r0.yyy * float3(1,0,0) + r2.xyz;
    r2.xyz = float3(0,-1,0) + r2.xyz;
    r0.z = dot(r2.xyz, r2.xyz);
    r0.z = rsqrt(r0.z);
    r1.xyz = r2.xyz * r0.zzz;
    break;
    case 4 :    r2.xyz = float3(0,1,0) * r0.xxx;
    r2.xyz = r0.yyy * float3(1,0,0) + r2.xyz;
    r2.xyz = float3(0,0,1) + r2.xyz;
    r0.z = dot(r2.xyz, r2.xyz);
    r0.z = rsqrt(r0.z);
    r1.xyz = r2.xyz * r0.zzz;
    break;
    case 5 :    r0.xzw = float3(0,1,0) * r0.xxx;
    r0.xyz = r0.yyy * float3(-1,0,0) + r0.xzw;
    r0.xyz = float3(0,0,-1) + r0.xyz;
    r0.w = dot(r0.xyz, r0.xyz);
    r0.w = rsqrt(r0.w);
    r1.xyz = r0.xyz * r0.www;
    break;
    default :
    break;
  }
  r0.x = (uint)vThreadID.y << 4;
  r0.y = (int)vThreadID.y + 0x9e3779b9;
  r0.x = (int)r0.y ^ (int)r0.x;
  r0.y = (uint)vThreadID.y >> 5;
  r0.x = (int)r0.y ^ (int)r0.x;
  r0.x = (int)r0.x + (int)vThreadID.x;
  r0.y = (uint)r0.x << 4;
  r0.z = (int)r0.x + 0x9e3779b9;
  r0.y = (int)r0.z ^ (int)r0.y;
  r0.z = (uint)r0.x >> 5;
  r0.y = (int)r0.z ^ (int)r0.y;
  r0.y = (int)r0.y + (int)vThreadID.y;
  r0.z = (uint)r0.y << 4;
  r0.w = (int)r0.y + 0x3c6ef372;
  r0.z = (int)r0.w ^ (int)r0.z;
  r0.w = (uint)r0.y >> 5;
  r0.z = (int)r0.w ^ (int)r0.z;
  r0.x = (int)r0.z + (int)r0.x;
  r0.z = (uint)r0.x << 4;
  r0.w = (int)r0.x + 0x3c6ef372;
  r0.z = (int)r0.w ^ (int)r0.z;
  r0.w = (uint)r0.x >> 5;
  r0.z = (int)r0.w ^ (int)r0.z;
  r0.y = (int)r0.z + (int)r0.y;
  r0.z = (uint)r0.y << 4;
  r0.w = (int)r0.y + 0xdaa66d2b;
  r0.z = (int)r0.w ^ (int)r0.z;
  r0.w = (uint)r0.y >> 5;
  r0.z = (int)r0.w ^ (int)r0.z;
  r0.x = (int)r0.z + (int)r0.x;
  r0.z = (uint)r0.x << 4;
  r0.w = (int)r0.x + 0xdaa66d2b;
  r0.z = (int)r0.w ^ (int)r0.z;
  r0.w = (uint)r0.x >> 5;
  r0.z = (int)r0.w ^ (int)r0.z;
  r0.y = (int)r0.z + (int)r0.y;
  r0.x = (int)r0.x & 0x0000ffff;
  r2.x = (int)r0.y & 0x0000ffff;
  r0.y = (int)r2.x ^ 0x00008000;
  r0.z = cmp(abs(r1.z) < 0.999000013);
  r3.xyz = r0.zzz ? float3(1,0,0) : float3(0,1,0);
  r4.xyz = r3.xyz * r1.yzx;
  r3.xyz = r3.zxy * r1.zxy + -r4.xyz;
  r0.z = dot(r3.xyz, r3.xyz);
  r0.z = rsqrt(r0.z);
  r3.xyz = r3.xyz * r0.zzz;
  r4.xyz = r3.yzx * r1.zxy;
  r4.xyz = r1.yzx * r3.zxy + -r4.xyz;
  r5.w = 0;
  r6.xyz = float3(0,0,0);
  r2.y = 0;
  while (true) {
    r0.z = cmp((int)r2.y >= 128);
    if (r0.z != 0) break;
    r0.z = (uint)r2.y << 16;
    r0.z = (uint)r0.z >> 7;
    r0.z = (int)r0.x ^ (int)r0.z;
    r0.w = cmp((int)r2.y != 0);
    r1.w = (int)r2.y & 1;
    r7.x = r1.w ? r0.y : r2.x;
    r7.y = (uint)r2.y >> 1;
    r2.zw = r2.yy ? r7.xy : r2.xy;
    r1.w = cmp((int)r2.w != 0);
    r0.w = r0.w ? r1.w : 0;
    r1.w = (int)r2.w & 1;
    r3.w = (int)r2.z ^ 0x0000c000;
    r7.x = r1.w ? r3.w : r2.z;
    r7.y = (uint)r2.w >> 1;
    r2.zw = r0.ww ? r7.xy : r2.zw;
    r1.w = cmp((int)r2.w != 0);
    r0.w = r0.w ? r1.w : 0;
    r1.w = (int)r2.w & 1;
    r3.w = (int)r2.z ^ 0x0000e000;
    r7.x = r1.w ? r3.w : r2.z;
    r7.y = (uint)r2.w >> 1;
    r2.zw = r0.ww ? r7.xy : r2.zw;
    r1.w = cmp((int)r2.w != 0);
    r0.w = r0.w ? r1.w : 0;
    r1.w = (int)r2.w & 1;
    r3.w = (int)r2.z ^ 0x0000f000;
    r7.x = r1.w ? r3.w : r2.z;
    r7.y = (uint)r2.w >> 1;
    r2.zw = r0.ww ? r7.xy : r2.zw;
    r1.w = cmp((int)r2.w != 0);
    r0.w = r0.w ? r1.w : 0;
    r1.w = (int)r2.w & 1;
    r3.w = (int)r2.z ^ 0x0000f800;
    r7.x = r1.w ? r3.w : r2.z;
    r7.y = (uint)r2.w >> 1;
    r2.zw = r0.ww ? r7.xy : r2.zw;
    r1.w = cmp((int)r2.w != 0);
    r0.w = r0.w ? r1.w : 0;
    r1.w = (int)r2.w & 1;
    r3.w = (int)r2.z ^ 0x0000fc00;
    r7.x = r1.w ? r3.w : r2.z;
    r7.y = (uint)r2.w >> 1;
    r2.zw = r0.ww ? r7.xy : r2.zw;
    r1.w = cmp((int)r2.w != 0);
    r0.w = r0.w ? r1.w : 0;
    r1.w = (int)r2.w & 1;
    r3.w = (int)r2.z ^ 0x0000fe00;
    r7.x = r1.w ? r3.w : r2.z;
    r7.y = (uint)r2.w >> 1;
    r2.zw = r0.ww ? r7.xy : r2.zw;
    r1.w = cmp((int)r2.w != 0);
    r0.w = r0.w ? r1.w : 0;
    r1.w = (int)r2.z ^ 0x0000ff00;
    r0.w = r0.w ? r1.w : r2.z;
    r7.xy = (uint2)r0.zw;
    r0.zw = float2(1.52587891e-05,1.52587891e-05) * r7.xy;
    r0.zw = min(float2(1,1), r0.zw);
    r0.z = 6.28318548 * r0.z;
    r1.w = sqrt(r0.w);
    sincos(r0.z, r7.x, r8.x);
    r0.z = r8.x * r1.w;
    r1.w = r7.x * r1.w;
    r0.w = 1 + -r0.w;
    r0.w = sqrt(r0.w);
    r7.xyz = r4.xyz * r1.www;
    r7.xyz = r3.xyz * r0.zzz + r7.xyz;
    r7.xyz = r1.xyz * r0.www + r7.xyz;
    r0.z = dot(r7.xyz, r7.xyz);
    r0.z = rsqrt(r0.z);
    r5.xyz = r7.xyz * r0.zzz;
    r5.xyz = gSRVReflectionArray.SampleLevel(gReflectionProbeSampler_s, r5.xyzw, 5).xyz;
    r6.xyz = r6.xyz + r5.xyz;
    r2.y = (int)r2.y + 1;
  }
  r0.xyzw = r6.xyzx;
  r0.xyzw = float4(0.0078125,0.0078125,0.0078125,0.0078125) * r0.xyzw;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, vThreadID.xyzz, r0.xyzw
  return;
}