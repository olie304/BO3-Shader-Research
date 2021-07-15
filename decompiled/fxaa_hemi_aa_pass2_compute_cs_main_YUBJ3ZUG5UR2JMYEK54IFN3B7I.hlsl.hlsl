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
Texture2D<float> Luma : register(t0);
StructuredBuffer<WorkQueue> WorkQueue : register(t1);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main()
{
  const float4 icb[] = { { 1.000000, 0, 0, 0},
                              { 2.500000, 0, 0, 0},
                              { 4.500000, 0, 0, 0},
                              { 6.500000, 0, 0, 0},
                              { 8.500000, 0, 0, 0},
                              { 10.500000, 0, 0, 0},
                              { 14.500000, 0, 0, 0},
                              { 22.500000, 0, 0, 0} };
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t1, 16
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 64, 1, 1
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=16)(mixed,mixed,mixed,mixed) r0.xyzw, vThreadID.x, l(0), t1.xyzw
r0.x = LinearSampler[]..swiz;
r0.y = LinearSampler[]..swiz;
r0.z = LinearSampler[]..swiz;
r0.w = LinearSampler[]..swiz;
  r1.xy = (uint2)r0.xx >> int2(8,20);
  r1.yz = (int2)r1.xy & int2(4095,4095);
  r2.xy = (int2)r0.xx & int2(254,1);
  r2.xy = (uint2)r2.xy;
  r2.x = 0.00196850393 * r2.x;
  bitmask.x = ((~(-1 << 1)) << 1) & 0xffffffff;  r0.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)0 & ~bitmask.x);
  r1.x = (int)r1.y + (int)r0.x;
  r3.xy = (int2)r1.xz + int2(-1,0);
  r3.zw = float2(0,0);
  r0.x = Luma.Load(r3.xyz).x;
  r3.xy = (uint2)r1.yz;
  r2.z = 0.5;
  r2.yz = r3.xy + r2.yz;
  r1.w = 0;
  r1.x = Luma.Load(r1.yzw).x;
  r1.w = r1.x + r0.x;
  r0.x = -r1.x + r0.x;
  r1.x = cmp(0 < r0.x);
  r2.w = cmp(r0.x < 0);
  r1.x = (int)-r1.x + (int)r2.w;
  r1.x = (int)r1.x;
  r0.x = 0.25 * abs(r0.x);
  r3.x = 0;
  r3.y = postFxControl0.y;
  r4.xy = float2(22.5,0);
  r5.xy = float2(22.5,0);
  r2.w = 0;
  while (true) {
    r3.z = cmp((uint)r2.w >= 7);
    if (r3.z != 0) break;
    r3.zw = icb[r2.w+0].xx * r3.xy;
    r4.zw = r2.yz * postFxControl0.xy + -r3.zw;
    r3.zw = r2.yz * postFxControl0.xy + r3.zw;
    r4.z = Luma.SampleLevel(LinearSampler_s, r4.zw, 0).x;
    r4.z = -r1.w * 0.5 + r4.z;
    r4.w = cmp(abs(r4.z) >= r0.x);
    r5.z = cmp(icb[r2.w+0].x < r4.x);
    r4.w = r4.w ? r5.z : 0;
    r5.z = cmp(0 < r4.z);
    r4.z = cmp(r4.z < 0);
    r4.z = (int)-r5.z + (int)r4.z;
    r4.z = (int)r4.z;
    r6.y = cmp(r1.x == r4.z);
    r6.xz = icb[r2.w+0].xx;
    r4.xy = r4.ww ? r6.xy : r4.xy;
    r3.z = Luma.SampleLevel(LinearSampler_s, r3.zw, 0).x;
    r3.z = -r1.w * 0.5 + r3.z;
    r3.w = cmp(abs(r3.z) >= r0.x);
    r4.z = cmp(icb[r2.w+0].x < r5.x);
    r3.w = r3.w ? r4.z : 0;
    r4.z = cmp(0 < r3.z);
    r3.z = cmp(r3.z < 0);
    r3.z = (int)-r4.z + (int)r3.z;
    r3.z = (int)r3.z;
    r6.w = cmp(r1.x == r3.z);
    r5.xy = r3.ww ? r6.zw : r5.xy;
    r2.w = (int)r2.w + 1;
  }
  r0.x = min(r5.x, r4.x);
  r1.x = r5.x + r4.x;
  r0.x = r0.x / r1.x;
  r0.x = 0.5 + -r0.x;
  r1.x = cmp(r4.x < r5.x);
  r1.x = r1.x ? r4.y : r5.y;
  r0.x = (int)r0.x & (int)r1.x;
  r0.x = max(r2.x, r0.x);
  r1.x = cmp(0.00999999978 < r0.x);
  if (r1.x != 0) {
    r2.xyzw = f16tof32(r0.yzwy);
    r3.xyzw = (uint4)r0.yzwy >> int4(16,16,16,16);
    r3.xyzw = f16tof32(r3.xyzw);
    r3.xyzw = r3.xyzw + -r2.wyzw;
    r0.xyzw = r0.xxxx * r3.xyzw + r2.xyzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yzzz, r0.xyzw
  }
  return;
}