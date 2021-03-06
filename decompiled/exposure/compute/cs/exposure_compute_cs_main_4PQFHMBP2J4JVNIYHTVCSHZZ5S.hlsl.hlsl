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



// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main()
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u1
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_structured g0, 4, 64
// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_structured g1, 4, 64
// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_structured g2, 4, 8
// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  [vThreadIDInGroupFlattened.x].0 = g1.x;
  [vThreadIDInGroupFlattened.x].0 = g0.x;
  u0.GetDimensions(0, uiDest.x, uiDest.y, uiDest.z);
  r0.xy = uiDest.xy;
  r0.zw = (int2)r0.xy + int2(7,7);
  r0.zw = (uint2)r0.zw >> int2(3,3);
  r1.xy = (int2)r0.zw * (int2)vThreadIDInGroup.xy;
  r0.zw = mad((int2)vThreadIDInGroup.xy, (int2)r0.zw, (int2)r0.zw);
  r0.xy = min((uint2)r0.zw, (uint2)r0.xy);
  r0.z = r1.y;
  while (true) {
    r0.w = cmp((uint)r0.z >= (uint)r0.y);
    if (r0.w != 0) break;
    r2.yzw = r0.zzz;
    r2.x = r1.x;
    while (true) {
      r0.w = cmp((uint)r2.x >= (uint)r0.x);
      if (r0.w != 0) break;
    // No code for instruction (needs manual fix):
        ld_uav_typed_indexable(texture2d)(float,float,float,float) r0.w, r2.xyzw, u0.yzwx
      r0.w = max(0.00100000005, r0.w);
      r0.w = log2(r0.w);
    // Known bad code for instruction (needs manual fix):
        ld_structured r1.z, vThreadIDInGroupFlattened.x, l(0), g0.xxxx
    r1.z = gExposureInOut[]..swiz;
      r0.w = r0.w * 0.693147182 + r1.z;
      [vThreadIDInGroupFlattened.x].0 = g0.x;
    // Known bad code for instruction (needs manual fix):
        ld_structured r0.w, vThreadIDInGroupFlattened.x, l(0), g1.xxxx
    r0.w = gExposureInOut[]..swiz;
      r0.w = 1 + r0.w;
      [vThreadIDInGroupFlattened.x].0 = g1.x;
      r2.x = (int)r2.x + 1;
    }
    r0.z = (int)r0.z + 1;
  }
// Known bad code for instruction (needs manual fix):
ld_structured r0.x, vThreadIDInGroupFlattened.x, l(0), g1.xxxx
r0.x = gExposureInOut[]..swiz;
  r0.y = cmp(1 < r0.x);
  if (r0.y != 0) {
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.y, vThreadIDInGroupFlattened.x, l(0), g0.xxxx
  r0.y = gExposureInOut[]..swiz;
    r0.x = r0.y / r0.x;
    [vThreadIDInGroupFlattened.x].0 = g0.x;
    [vThreadIDInGroupFlattened.x].0 = g1.x;
  }
  r0.xyzw = cmp((uint4)vThreadIDInGroupFlattened.xxxx < int4(8,32,16,4));
  if (r0.x != 0) {
    r1.x = vThreadIDInGroupFlattened.x;
    r1.yzw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    ld_uav_typed_indexable(texture2d)(float,float,float,float) r1.x, r1.xyzw, u1.xyzw
    [vThreadIDInGroupFlattened.x].0 = g2.x;
  }
  GroupMemoryBarrierWithGroupSync();
  r1.x = cmp(0 < (uint)vThreadIDInGroupFlattened.x);
  r1.x = r0.x ? r1.x : 0;
  if (r1.x != 0) {
    r1.x = (int)vThreadIDInGroupFlattened.x + -1;
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.x, r1.x, l(0), g2.xxxx
  r1.x = gExposureInOut[]..swiz;
    r2.x = vThreadIDInGroupFlattened.x;
    r2.yzw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.xyzw, r1.xxxx
  }
  if (r0.y != 0) {
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.y, vThreadIDInGroupFlattened.x, l(0), g1.xxxx
  r0.y = gExposureInOut[]..swiz;
    r1.x = (int)vThreadIDInGroupFlattened.x + 32;
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.y, r1.x, l(0), g1.xxxx
  r1.y = gExposureInOut[]..swiz;
    r0.y = r1.y + r0.y;
    [vThreadIDInGroupFlattened.x].0 = g1.x;
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.y, vThreadIDInGroupFlattened.x, l(0), g0.xxxx
  r0.y = gExposureInOut[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.x, r1.x, l(0), g0.xxxx
  r1.x = gExposureInOut[]..swiz;
    r0.y = r1.x + r0.y;
    [vThreadIDInGroupFlattened.x].0 = g0.x;
  }
  GroupMemoryBarrierWithGroupSync();
  if (r0.z != 0) {
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.y, vThreadIDInGroupFlattened.x, l(0), g1.xxxx
  r0.y = gExposureInOut[]..swiz;
    r0.z = (int)vThreadIDInGroupFlattened.x + 16;
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.x, r0.z, l(0), g1.xxxx
  r1.x = gExposureInOut[]..swiz;
    r0.y = r1.x + r0.y;
    [vThreadIDInGroupFlattened.x].0 = g1.x;
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.y, vThreadIDInGroupFlattened.x, l(0), g0.xxxx
  r0.y = gExposureInOut[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.z, r0.z, l(0), g0.xxxx
  r0.z = gExposureInOut[]..swiz;
    r0.y = r0.y + r0.z;
    [vThreadIDInGroupFlattened.x].0 = g0.x;
  }
  GroupMemoryBarrierWithGroupSync();
  if (r0.x != 0) {
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.y, vThreadIDInGroupFlattened.x, l(0), g1.xxxx
  r0.y = gExposureInOut[]..swiz;
    r0.z = (int)vThreadIDInGroupFlattened.x + 8;
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.x, r0.z, l(0), g1.xxxx
  r1.x = gExposureInOut[]..swiz;
    r0.y = r1.x + r0.y;
    [vThreadIDInGroupFlattened.x].0 = g1.x;
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.y, vThreadIDInGroupFlattened.x, l(0), g0.xxxx
  r0.y = gExposureInOut[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.z, r0.z, l(0), g0.xxxx
  r0.z = gExposureInOut[]..swiz;
    r0.y = r0.y + r0.z;
    [vThreadIDInGroupFlattened.x].0 = g0.x;
  }
  GroupMemoryBarrierWithGroupSync();
  if (r0.w != 0) {
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.y, vThreadIDInGroupFlattened.x, l(0), g1.xxxx
  r0.y = gExposureInOut[]..swiz;
    r0.z = (int)vThreadIDInGroupFlattened.x + 4;
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.w, r0.z, l(0), g1.xxxx
  r0.w = gExposureInOut[]..swiz;
    r0.y = r0.y + r0.w;
    [vThreadIDInGroupFlattened.x].0 = g1.x;
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.y, vThreadIDInGroupFlattened.x, l(0), g0.xxxx
  r0.y = gExposureInOut[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.w, r0.z, l(0), g0.xxxx
  r0.w = gExposureInOut[]..swiz;
    r0.y = r0.y + r0.w;
    [vThreadIDInGroupFlattened.x].0 = g0.x;
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.y, vThreadIDInGroupFlattened.x, l(0), g2.xxxx
  r0.y = gExposureInOut[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.z, r0.z, l(0), g2.xxxx
  r0.z = gExposureInOut[]..swiz;
    r0.y = r0.y + r0.z;
    [vThreadIDInGroupFlattened.x].0 = g2.x;
  }
  GroupMemoryBarrierWithGroupSync();
  r0.yz = cmp((uint2)vThreadIDInGroupFlattened.xx < int2(2,1));
  if (r0.y != 0) {
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.y, vThreadIDInGroupFlattened.x, l(0), g1.xxxx
  r0.y = gExposureInOut[]..swiz;
    r0.w = (int)vThreadIDInGroupFlattened.x + 2;
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.x, r0.w, l(0), g1.xxxx
  r1.x = gExposureInOut[]..swiz;
    r0.y = r1.x + r0.y;
    [vThreadIDInGroupFlattened.x].0 = g1.x;
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.y, vThreadIDInGroupFlattened.x, l(0), g0.xxxx
  r0.y = gExposureInOut[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.x, r0.w, l(0), g0.xxxx
  r1.x = gExposureInOut[]..swiz;
    r0.y = r1.x + r0.y;
    [vThreadIDInGroupFlattened.x].0 = g0.x;
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.y, vThreadIDInGroupFlattened.x, l(0), g2.xxxx
  r0.y = gExposureInOut[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.w, r0.w, l(0), g2.xxxx
  r0.w = gExposureInOut[]..swiz;
    r0.y = r0.y + r0.w;
    [vThreadIDInGroupFlattened.x].0 = g2.x;
  }
  GroupMemoryBarrierWithGroupSync();
  if (r0.z != 0) {
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.y, l(0), l(0), g1.xxxx
  r0.y = gExposureInOut[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.z, l(1), l(0), g1.xxxx
  r0.z = gExposureInOut[]..swiz;
    r0.y = r0.y + r0.z;
    [0].0 = g1.x;
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.y, l(0), l(0), g0.xxxx
  r0.y = gExposureInOut[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.z, l(1), l(0), g0.xxxx
  r0.z = gExposureInOut[]..swiz;
    r0.y = r0.y + r0.z;
    [0].0 = g0.x;
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.y, l(0), l(0), g2.xxxx
  r0.y = gExposureInOut[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.z, l(1), l(0), g2.xxxx
  r0.z = gExposureInOut[]..swiz;
    r0.y = r0.y + r0.z;
    [0].0 = g2.x;
  }
  GroupMemoryBarrierWithGroupSync();
  if (vThreadIDInGroupFlattened.x == 0) {
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.y, l(0), l(0), g0.xxxx
  r0.y = gExposureInOut[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.z, l(0), l(0), g1.xxxx
  r0.z = gExposureInOut[]..swiz;
    r0.y = r0.y / r0.z;
    r0.y = 1.44269502 * r0.y;
    r0.y = exp2(r0.y);
    r0.y = postFxControl1.y * r0.y;
    r0.y = 5.55555534 * r0.y;
    r0.y = log2(r0.y);
    r0.y = postFxControl0.z + r0.y;
    r0.y = 3 + r0.y;
    r0.y = -postFxControl1.x + r0.y;
    r0.y = postFxControl0.w * r0.y + postFxControl1.x;
    r0.y = max(postFxControl0.x, r0.y);
    r0.y = min(postFxControl0.y, r0.y);
    r0.zw = float2(-1,1) + postFxControl1.xx;
    r0.y = max(r0.y, r0.z);
    r0.y = min(r0.y, r0.w);
    r0.y = -3 + r0.y;
    r0.y = exp2(r0.y);
    r0.z = cmp(0.5 < postFxControl1.z);
  // No code for instruction (needs manual fix):
    ld_uav_typed_indexable(texture2d)(float,float,float,float) r0.w, l(8, 0, 0, 0), u1.yzwx
    r1.x = 0.0399999991 + r0.y;
    r1.x = 0.0399999991 / r1.x;
    r1.y = 1 + -r1.x;
    r1.y = 0.100000001 * r1.y;
    r1.x = r1.x * 0.400000006 + r1.y;
    r1.y = r0.y + -r0.w;
    r1.x = 60 * r1.x;
    r1.x = rcp(r1.x);
    r1.x = -1.44269502 * r1.x;
    r1.x = exp2(r1.x);
    r1.x = 1 + -r1.x;
    r0.w = r1.y * r1.x + r0.w;
    r0.w = r0.z ? r0.w : r0.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, l(0,0,0,0), r0.wwww
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.x, l(0), l(0), g2.xxxx
  r1.x = gExposureInOut[]..swiz;
    r0.w = r1.x + r0.w;
    r0.w = 0.111111112 * r0.w;
    r0.y = r0.z ? r0.w : r0.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, l(8,0,0,0), r0.yyyy
    r0.y = postFxControl1.y / r0.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, vThreadIDInGroup.xyyy, r0.yyyy
  }
  r0.y = cmp(postFxControl1.z < 0.5);
  r0.x = r0.y ? r0.x : 0;
  if (r0.x != 0) {
  // No code for instruction (needs manual fix):
    ld_uav_typed_indexable(texture2d)(float,float,float,float) r0.x, l(8, 0, 0, 0), u1.xyzw
    r1.x = vThreadIDInGroupFlattened.x;
    r1.yzw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r1.xyzw, r0.xxxx
  }
  return;
}