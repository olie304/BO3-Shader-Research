// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:26:01 2021

cbuffer PostFxCBuffer : register(b8)
{
  float4 postFxControl0 : packoffset(c0);
  float4 postFxControl1 : packoffset(c1);
  float4 postFxControl2 : packoffset(c2);
  float4 postFxControl3 : packoffset(c3);
  float4 postFxControl4 : packoffset(c4);
  float4 postFxControl5 : packoffset(c5);
  float4 postFxControl6 : packoffset(c6);
  float4 postFxControl7 : packoffset(c7);
  float4 postFxControl8 : packoffset(c8);
  float4 postFxControl9 : packoffset(c9);
  float4 postFxControlA : packoffset(c10);
  float4 postFxControlB : packoffset(c11);
  float4 postFxControlC : packoffset(c12);
  float4 postFxControlD : packoffset(c13);
  float4 postFxControlE : packoffset(c14);
  float4 postFxControlF : packoffset(c15);
  float4 postFxConst00 : packoffset(c16);
  float4 postFxConst01 : packoffset(c17);
  float4 postFxConst02 : packoffset(c18);
  float4 postFxConst03 : packoffset(c19);
  float4 postFxConst04 : packoffset(c20);
  float4 postFxConst05 : packoffset(c21);
  float4 postFxConst06 : packoffset(c22);
  float4 postFxConst07 : packoffset(c23);
  float4 postFxConst08 : packoffset(c24);
  float4 postFxConst09 : packoffset(c25);
  float4 postFxConst10 : packoffset(c26);
  float4 postFxConst11 : packoffset(c27);
  float4 postFxConst12 : packoffset(c28);
  float4 postFxConst13 : packoffset(c29);
  float4 postFxConst14 : packoffset(c30);
  float4 postFxConst15 : packoffset(c31);
  float4 postFxConst16 : packoffset(c32);
  float4 postFxConst17 : packoffset(c33);
  float4 postFxConst18 : packoffset(c34);
  float4 postFxConst19 : packoffset(c35);
  float4 postFxConst20 : packoffset(c36);
  float4 postFxConst21 : packoffset(c37);
  float4 postFxConst22 : packoffset(c38);
  float4 postFxConst23 : packoffset(c39);
  float4 postFxConst24 : packoffset(c40);
  float4 postFxConst25 : packoffset(c41);
  float4 postFxConst26 : packoffset(c42);
  float4 postFxConst27 : packoffset(c43);
  float4 postFxConst28 : packoffset(c44);
  float4 postFxConst29 : packoffset(c45);
  float4 postFxConst30 : packoffset(c46);
  float4 postFxConst31 : packoffset(c47);
  float4 postFxConst32 : packoffset(c48);
  float4 postFxConst33 : packoffset(c49);
  float4 postFxConst34 : packoffset(c50);
  float4 postFxConst35 : packoffset(c51);
  float4 postFxConst36 : packoffset(c52);
  float4 postFxConst37 : packoffset(c53);
  float4 postFxConst38 : packoffset(c54);
  float4 postFxConst39 : packoffset(c55);
  float4 postFxConst40 : packoffset(c56);
  float4 postFxConst41 : packoffset(c57);
  float4 postFxConst42 : packoffset(c58);
  float4 postFxConst43 : packoffset(c59);
  float4 postFxConst44 : packoffset(c60);
  float4 postFxConst45 : packoffset(c61);
  float4 postFxConst46 : packoffset(c62);
  float4 postFxConst47 : packoffset(c63);
  float4 postFxConst48 : packoffset(c64);
  float4 postFxConst49 : packoffset(c65);
  float4 postFxConst50 : packoffset(c66);
  float4 postFxConst51 : packoffset(c67);
  float4 postFxConst52 : packoffset(c68);
  float4 postFxConst53 : packoffset(c69);
  float4 postFxConst54 : packoffset(c70);
  float4 postFxConst55 : packoffset(c71);
  float4 postFxConst56 : packoffset(c72);
  float4 postFxConst57 : packoffset(c73);
  float4 postFxConst58 : packoffset(c74);
  float4 postFxConst59 : packoffset(c75);
  float4 postFxConst60 : packoffset(c76);
  float4 postFxConst61 : packoffset(c77);
  float4 postFxConst62 : packoffset(c78);
  float4 postFxConst63 : packoffset(c79);
  float4 postFxBloom00 : packoffset(c80);
  float4 postFxBloom01 : packoffset(c81);
  float4 postFxBloom02 : packoffset(c82);
  float4 postFxBloom03 : packoffset(c83);
  float4 postFxBloom04 : packoffset(c84);
  float4 postFxBloom05 : packoffset(c85);
  float4 postFxBloom06 : packoffset(c86);
  float4 postFxBloom07 : packoffset(c87);
  float4 postFxBloom08 : packoffset(c88);
  float4 postFxBloom09 : packoffset(c89);
  float4 postFxBloom10 : packoffset(c90);
  float4 postFxBloom11 : packoffset(c91);
  float4 postFxBloom12 : packoffset(c92);
  float4 postFxBloom13 : packoffset(c93);
  float4 postFxBloom14 : packoffset(c94);
  float4 postFxBloom15 : packoffset(c95);
  float4 postFxBloom16 : packoffset(c96);
  float4 postFxBloom17 : packoffset(c97);
  float4 postFxBloom18 : packoffset(c98);
  float4 postFxBloom19 : packoffset(c99);
  float4 postFxBloom20 : packoffset(c100);
  float4 postFxBloom21 : packoffset(c101);
  float4 postFxBloom22 : packoffset(c102);
  float4 postFxBloom23 : packoffset(c103);
  float4 postFxBloom24 : packoffset(c104);
  float4 postFxBloom25 : packoffset(c105);
  float4 filterTap[8] : packoffset(c106);
  float4 postfxViewMatrix0 : packoffset(c114);
  float4 postfxViewMatrix1 : packoffset(c115);
  float4 postfxViewMatrix2 : packoffset(c116);
  float4 postfxViewMatrix3 : packoffset(c117);
  float4 postfxProjMatrix0 : packoffset(c118);
  float4 postfxProjMatrix1 : packoffset(c119);
  float4 postfxProjMatrix2 : packoffset(c120);
  float4 postfxProjMatrix3 : packoffset(c121);
  float4 postfxViewProjMatrix0 : packoffset(c122);
  float4 postfxViewProjMatrix1 : packoffset(c123);
  float4 postfxViewProjMatrix2 : packoffset(c124);
  float4 postfxViewProjMatrix3 : packoffset(c125);
}

SamplerState LinearSampler_s : register(s0);
Texture2D<float3> Color : register(t0);
Texture2D<float> Luma : register(t1);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main()
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_structured_opc u0, 16
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_structured_opc u1, 16
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_structured g0, 4, 100
// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.x = max((uint)vThreadIDInGroup.x, (uint)vThreadIDInGroup.y);
  r0.x = cmp((uint)r0.x < 5);
  if (r0.x != 0) {
    r0.xy = (int2)vThreadIDInGroup.xy + (int2)vThreadID.xy;
    r0.xy = (int2)r0.xy;
    r0.xy = postFxControl0.xy * r0.xy;
    r0.xyzw = Luma.Gather(LinearSampler_s, r0.xy).xyzw;
    r1.x = mad((int)vThreadIDInGroup.y, 10, (int)vThreadIDInGroup.x);
    r1.y = (uint)r1.x << 1;
    Color[r1.y].0 = g0.x;
    r0.w = mad((int)r1.x, 2, 1);
    Color[r0.w].0 = g0.x;
    r0.z = (int)r1.y + 10;
    Color[r0.z].0 = g0.x;
    r0.x = (int)r0.z + 1;
    Color[r0.x].0 = g0.x;
  }
  GroupMemoryBarrierWithGroupSync();
  r0.x = (int)vThreadIDInGroup.x + 1;
  r0.x = mad((int)vThreadIDInGroup.y, 10, (int)r0.x);
// Known bad code for instruction (needs manual fix):
ld_structured r0.y, r0.x, l(0), g0.xxxx
r0.y = LinearSampler[]..swiz;
  r1.xyzw = (int4)r0.xxxx + int4(10,9,11,20);
// Known bad code for instruction (needs manual fix):
ld_structured r0.z, r1.y, l(0), g0.xxxx
r0.z = LinearSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured r0.w, r1.x, l(0), g0.xxxx
r0.w = LinearSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured r1.x, r1.z, l(0), g0.xxxx
r1.x = LinearSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured r1.y, r1.w, l(0), g0.xxxx
r1.y = LinearSampler[]..swiz;
  r1.z = max(r0.y, r0.z);
  r1.w = max(r1.y, r0.w);
  r1.w = max(r1.x, r1.w);
  r1.z = max(r1.z, r1.w);
  r1.w = min(r0.y, r0.z);
  r2.x = min(r1.y, r0.w);
  r2.x = min(r2.x, r1.x);
  r1.w = min(r2.x, r1.w);
  r1.z = r1.z + -r1.w;
  r1.w = cmp(r1.z < postFxControl0.z);
  if (r1.w != 0) {
    return;
  }
  r2.xyzw = (int4)r0.xxxx + int4(-1,1,19,21);
// Known bad code for instruction (needs manual fix):
ld_structured r0.x, r2.x, l(0), g0.xxxx
r0.x = LinearSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured r1.w, r2.y, l(0), g0.xxxx
r1.w = LinearSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured r2.x, r2.z, l(0), g0.xxxx
r2.x = LinearSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured r2.y, r2.w, l(0), g0.xxxx
r2.y = LinearSampler[]..swiz;
  r2.zw = r1.yx + r0.yz;
  r3.x = r2.x + r0.x;
  r3.y = r2.y + r1.w;
  r2.x = r2.x + r2.y;
  r0.x = r1.w + r0.x;
  r1.w = -r0.z * 2 + r3.x;
  r2.y = -r0.w * 2 + r2.z;
  r1.w = abs(r2.y) * 2 + abs(r1.w);
  r2.y = -r1.x * 2 + r3.y;
  r1.w = abs(r2.y) + r1.w;
  r2.x = -r1.y * 2 + r2.x;
  r2.y = -r0.w * 2 + r2.w;
  r2.x = abs(r2.y) * 2 + abs(r2.x);
  r0.x = -r0.y * 2 + r0.x;
  r0.x = r2.x + abs(r0.x);
  r2.x = r2.z + r2.w;
  r2.x = r2.x * 2 + r3.x;
  r2.x = r2.x + r3.y;
  r2.x = r2.x * 0.0833333358 + -r0.w;
  r1.z = saturate(abs(r2.x) / r1.z);
  r2.x = r1.z * -2 + 3;
  r1.z = r1.z * r1.z;
  r1.z = r2.x * r1.z;
  r1.z = r1.z * r1.z;
  r1.z = saturate(dot(r1.zz, postFxControl0.ww));
  r0.x = cmp(r1.w >= r0.x);
  r0.y = r0.x ? r0.y : r0.z;
  r0.z = r0.x ? r1.y : r1.x;
  r0.yz = r0.yz + -r0.ww;
  r0.y = cmp(abs(r0.z) >= abs(r0.y));
  r0.z = 254 * r1.z;
  r0.z = (uint)r0.z;
  r0.z = (int)r0.z & 254;
  r1.xy = (uint2)vThreadID.yx << int2(20,8);
  r0.w = (int)r1.y | (int)r1.x;
  r0.z = (int)r0.w + (int)r0.z;
  bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r1.x = (((uint)r0.y << 0) & bitmask.x) | ((uint)r0.z & ~bitmask.x);
  r2.xy = vThreadID.xy;
  r2.zw = float2(0,0);
  r2.xyz = Color.Load(r2.xyz).xyz;
  r3.xyz = (int3)r2.xyz & int3(2139095040,2139095040,2139095040);
  r3.xyz = cmp((int3)r3.xyz != int3(2139095040,2139095040,2139095040));
  r2.xyz = f32tof16(r2.xyz);
  r2.xyz = r3.xyz ? r2.xyz : float3(31743,31743,31743);
  if (r0.x != 0) {
    bitmask.x = ((~(-1 << 1)) << 1) & 0xffffffff;  r0.x = (((uint)r0.y << 1) & bitmask.x) | ((uint)0 & ~bitmask.x);
    r3.y = (int)r0.x + (int)vThreadID.y;
    r3.x = vThreadID.x;
    r3.xy = (int2)r3.xy + int2(0,-1);
    r3.zw = float2(0,0);
    r0.xzw = Color.Load(r3.xyz).xyz;
    r3.xyz = (int3)r0.xzw & int3(2139095040,2139095040,2139095040);
    r3.xyz = cmp((int3)r3.xyz != int3(2139095040,2139095040,2139095040));
    r0.xzw = f32tof16(r0.xzw);
    r0.xzw = r3.xyz ? r0.xzw : float3(31743,31743,31743);
    r1.yzw = mad((int3)r0.xzw, int3(65536,65536,65536), (int3)r2.xyz);
    // Needs manual fix for instruction:
    imm_atomic_alloc r3.x, u0
    InterlockedExchange ?(dest, value, orig_value);
    Color[r3.x].0 = u0.xyzw;
  } else {
    bitmask.x = ((~(-1 << 1)) << 1) & 0xffffffff;  r0.x = (((uint)r0.y << 1) & bitmask.x) | ((uint)0 & ~bitmask.x);
    r0.x = (int)r0.x + (int)vThreadID.x;
    r0.y = vThreadID.y;
    r0.xy = (int2)r0.xy + int2(-1,0);
    r0.zw = float2(0,0);
    r0.xyz = Color.Load(r0.xyz).xyz;
    r3.xyz = (int3)r0.xyz & int3(2139095040,2139095040,2139095040);
    r3.xyz = cmp((int3)r3.xyz != int3(2139095040,2139095040,2139095040));
    r0.xyz = f32tof16(r0.xyz);
    r0.xyz = r3.xyz ? r0.xyz : float3(31743,31743,31743);
    r1.yzw = mad((int3)r0.xyz, int3(65536,65536,65536), (int3)r2.xyz);
    // Needs manual fix for instruction:
    imm_atomic_alloc r0.x, u1
    InterlockedExchange ?(dest, value, orig_value);
    Color[r0.x].0 = u1.xyzw;
  }
  return;
}