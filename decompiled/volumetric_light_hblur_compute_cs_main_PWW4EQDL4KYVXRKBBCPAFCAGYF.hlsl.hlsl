// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:54 2021

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

Texture2D<float4> postEffectSrc : register(t0);
Texture2D<float> codeTexture0 : register(t2);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main()
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_structured g0, 16, 74
// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_structured g1, 4, 74
// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 64, 1, 1
// Unknown use of GetDimensions for resinfo_ from missing reflection info, need manual fix.
// resinfo_indexable(texture2d)(float,float,float,float)_uint r0.xy, l(0), u0.xyzw
// Example for texture2d type, uint return:
tx.GetDimensions(0, uiDest.x, uiDest.y, uiDest.z);
rx = uiDest;
 state=1, constZero.eType=4, returnType=2, texture.eType=30, afImmediates[0]=0.000000
  postEffectSrc.GetDimensions(0, uiDest.x, uiDest.y, uiDest.z);
  r0.zw = uiDest.xy;
  codeTexture0.GetDimensions(0, uiDest.x, uiDest.y, uiDest.z);
  r1.xy = uiDest.xy;
  r0.xy = min((uint2)r1.xy, (uint2)r0.xy);
  r0.xy = min((uint2)r0.zw, (uint2)r0.xy);
  r1.xy = min((uint2)vThreadID.xy, (uint2)r0.xy);
  r0.z = (int)vThreadIDInGroupFlattened.x + 5;
  r1.zw = float2(0,0);
  r2.xyzw = postEffectSrc.Load(r1.xyw).xyzw;
  r0.w = codeTexture0.Load(r1.xyz).x;
  r0.w = max(9.99999994e-09, r0.w);
  postEffectSrc[r0.z].0 = g0.xyz;
  postEffectSrc[r0.z].0 = g1.x;
  r0.xy = (int2)r0.xy + int2(-1,-1);
  r0.xy = max(int2(0,0), (int2)r0.xy);
  r1.z = cmp((uint)vThreadIDInGroupFlattened.x < 5);
  if (r1.z != 0) {
    r3.yz = (int2)vThreadID.xy + int2(-5,0);
    r3.x = max(0, (int)r3.y);
    r3.xy = min((int2)r3.xz, (int2)r0.xy);
    r3.zw = float2(0,0);
    r4.xyz = postEffectSrc.Load(r3.xyw).xyz;
    r1.z = codeTexture0.Load(r3.xyz).x;
    r1.z = max(9.99999994e-09, r1.z);
    postEffectSrc[vThreadIDInGroupFlattened.x].0 = g0.xyz;
    postEffectSrc[vThreadIDInGroupFlattened.x].0 = g1.x;
  } else {
    r1.z = cmp((uint)vThreadIDInGroupFlattened.x >= 59);
    if (r1.z != 0) {
      r1.zw = (int2)vThreadID.xy + int2(5,0);
      r3.xy = min((int2)r1.zw, (int2)r0.xy);
      r0.x = (int)vThreadIDInGroupFlattened.x + 10;
      r3.zw = float2(0,0);
      r4.xyz = postEffectSrc.Load(r3.xyw).xyz;
      r0.y = codeTexture0.Load(r3.xyz).x;
      r0.y = max(9.99999994e-09, r0.y);
      postEffectSrc[r0.x].0 = g0.xyz;
      postEffectSrc[r0.x].0 = g1.x;
    }
  }
  GroupMemoryBarrierWithGroupSync();
  r0.x = cmp(r0.w >= 0.984375);
  if (r0.x != 0) {
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xyyy, r2.xyzw
    return;
  }
// Known bad code for instruction (needs manual fix):
ld_structured r2.xyz, vThreadIDInGroupFlattened.x, l(0), g0.xyzx
r2.x = postEffectSrc[]..swiz;
r2.y = postEffectSrc[]..swiz;
r2.z = postEffectSrc[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured r0.x, vThreadIDInGroupFlattened.x, l(0), g1.xxxx
r0.x = postEffectSrc[]..swiz;
  r0.y = cmp(r0.x < 0.984375);
  r0.x = r0.x + -r0.w;
  r0.x = postFxControlA.z * abs(r0.x);
  r0.x = -r0.x * r0.x;
  r0.x = exp2(r0.x);
  r3.w = 0.00930000003 * r0.x;
  r3.xyz = r3.www * r2.xyz;
  r2.xyzw = r0.yyyy ? r3.xyzw : 0;
  r3.xyzw = (int4)vThreadIDInGroupFlattened.xxxx + int4(1,2,3,4);
// Known bad code for instruction (needs manual fix):
ld_structured r4.xyz, r3.x, l(0), g0.xyzx
r4.x = postEffectSrc[]..swiz;
r4.y = postEffectSrc[]..swiz;
r4.z = postEffectSrc[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured r0.x, r3.x, l(0), g1.xxxx
r0.x = postEffectSrc[]..swiz;
  r0.y = cmp(r0.x < 0.984375);
  r0.x = r0.x + -r0.w;
  r0.x = postFxControlA.z * abs(r0.x);
  r0.x = -r0.x * r0.x;
  r0.x = exp2(r0.x);
  r1.z = 0.0280019995 * r0.x;
  r4.xyz = r4.xyz * r1.zzz + r2.xyz;
  r4.w = r0.x * 0.0280019995 + r2.w;
  r2.xyzw = r0.yyyy ? r4.xyzw : r2.xyzw;
// Known bad code for instruction (needs manual fix):
ld_structured r4.xyz, r3.y, l(0), g0.xyzx
r4.x = postEffectSrc[]..swiz;
r4.y = postEffectSrc[]..swiz;
r4.z = postEffectSrc[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured r0.x, r3.y, l(0), g1.xxxx
r0.x = postEffectSrc[]..swiz;
  r0.y = cmp(r0.x < 0.984375);
  r0.x = r0.x + -r0.w;
  r0.x = postFxControlA.z * abs(r0.x);
  r0.x = -r0.x * r0.x;
  r0.x = exp2(r0.x);
  r1.z = 0.0659840032 * r0.x;
  r4.xyz = r4.xyz * r1.zzz + r2.xyz;
  r4.w = r0.x * 0.0659840032 + r2.w;
  r2.xyzw = r0.yyyy ? r4.xyzw : r2.xyzw;
// Known bad code for instruction (needs manual fix):
ld_structured r4.xyz, r3.z, l(0), g0.xyzx
r4.x = postEffectSrc[]..swiz;
r4.y = postEffectSrc[]..swiz;
r4.z = postEffectSrc[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured r0.x, r3.z, l(0), g1.xxxx
r0.x = postEffectSrc[]..swiz;
  r0.y = cmp(r0.x < 0.984375);
  r0.x = r0.x + -r0.w;
  r0.x = postFxControlA.z * abs(r0.x);
  r0.x = -r0.x * r0.x;
  r0.x = exp2(r0.x);
  r1.z = 0.121702999 * r0.x;
  r4.xyz = r4.xyz * r1.zzz + r2.xyz;
  r4.w = r0.x * 0.121702999 + r2.w;
  r2.xyzw = r0.yyyy ? r4.xyzw : r2.xyzw;
// Known bad code for instruction (needs manual fix):
ld_structured r3.xyz, r3.w, l(0), g0.xyzx
r3.x = postEffectSrc[]..swiz;
r3.y = postEffectSrc[]..swiz;
r3.z = postEffectSrc[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured r0.x, r3.w, l(0), g1.xxxx
r0.x = postEffectSrc[]..swiz;
  r0.y = cmp(r0.x < 0.984375);
  r0.x = r0.x + -r0.w;
  r0.x = postFxControlA.z * abs(r0.x);
  r0.x = -r0.x * r0.x;
  r0.x = exp2(r0.x);
  r1.z = 0.175713003 * r0.x;
  r3.xyz = r3.xyz * r1.zzz + r2.xyz;
  r3.w = r0.x * 0.175713003 + r2.w;
  r2.xyzw = r0.yyyy ? r3.xyzw : r2.xyzw;
// Known bad code for instruction (needs manual fix):
ld_structured r3.xyz, r0.z, l(0), g0.xyzx
r3.x = postEffectSrc[]..swiz;
r3.y = postEffectSrc[]..swiz;
r3.z = postEffectSrc[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured r0.x, r0.z, l(0), g1.xxxx
r0.x = postEffectSrc[]..swiz;
  r0.y = cmp(r0.x < 0.984375);
  r0.x = r0.x + -r0.w;
  r0.x = postFxControlA.z * abs(r0.x);
  r0.x = -r0.x * r0.x;
  r0.x = exp2(r0.x);
  r0.z = 0.198596001 * r0.x;
  r3.xyz = r3.xyz * r0.zzz + r2.xyz;
  r3.w = r0.x * 0.198596001 + r2.w;
  r2.xyzw = r0.yyyy ? r3.xyzw : r2.xyzw;
  r3.xyzw = (int4)vThreadIDInGroupFlattened.xxxx + int4(6,7,8,9);
// Known bad code for instruction (needs manual fix):
ld_structured r0.xyz, r3.x, l(0), g0.xyzx
r0.x = postEffectSrc[]..swiz;
r0.y = postEffectSrc[]..swiz;
r0.z = postEffectSrc[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured r1.z, r3.x, l(0), g1.xxxx
r1.z = postEffectSrc[]..swiz;
  r1.w = cmp(r1.z < 0.984375);
  r1.z = r1.z + -r0.w;
  r1.z = postFxControlA.z * abs(r1.z);
  r1.z = -r1.z * r1.z;
  r1.z = exp2(r1.z);
  r3.x = 0.175713003 * r1.z;
  r4.xyz = r0.xyz * r3.xxx + r2.xyz;
  r4.w = r1.z * 0.175713003 + r2.w;
  r2.xyzw = r1.wwww ? r4.xyzw : r2.xyzw;
// Known bad code for instruction (needs manual fix):
ld_structured r0.xyz, r3.y, l(0), g0.xyzx
r0.x = postEffectSrc[]..swiz;
r0.y = postEffectSrc[]..swiz;
r0.z = postEffectSrc[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured r1.z, r3.y, l(0), g1.xxxx
r1.z = postEffectSrc[]..swiz;
  r1.w = cmp(r1.z < 0.984375);
  r1.z = r1.z + -r0.w;
  r1.z = postFxControlA.z * abs(r1.z);
  r1.z = -r1.z * r1.z;
  r1.z = exp2(r1.z);
  r3.x = 0.121702999 * r1.z;
  r4.xyz = r0.xyz * r3.xxx + r2.xyz;
  r4.w = r1.z * 0.121702999 + r2.w;
  r2.xyzw = r1.wwww ? r4.xyzw : r2.xyzw;
// Known bad code for instruction (needs manual fix):
ld_structured r0.xyz, r3.z, l(0), g0.xyzx
r0.x = postEffectSrc[]..swiz;
r0.y = postEffectSrc[]..swiz;
r0.z = postEffectSrc[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured r1.z, r3.z, l(0), g1.xxxx
r1.z = postEffectSrc[]..swiz;
  r1.w = cmp(r1.z < 0.984375);
  r1.z = r1.z + -r0.w;
  r1.z = postFxControlA.z * abs(r1.z);
  r1.z = -r1.z * r1.z;
  r1.z = exp2(r1.z);
  r3.x = 0.0659840032 * r1.z;
  r4.xyz = r0.xyz * r3.xxx + r2.xyz;
  r4.w = r1.z * 0.0659840032 + r2.w;
  r2.xyzw = r1.wwww ? r4.xyzw : r2.xyzw;
// Known bad code for instruction (needs manual fix):
ld_structured r0.xyz, r3.w, l(0), g0.xyzx
r0.x = postEffectSrc[]..swiz;
r0.y = postEffectSrc[]..swiz;
r0.z = postEffectSrc[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured r1.z, r3.w, l(0), g1.xxxx
r1.z = postEffectSrc[]..swiz;
  r1.w = cmp(r1.z < 0.984375);
  r1.z = r1.z + -r0.w;
  r1.z = postFxControlA.z * abs(r1.z);
  r1.z = -r1.z * r1.z;
  r1.z = exp2(r1.z);
  r3.x = 0.0280019995 * r1.z;
  r3.xyz = r0.xyz * r3.xxx + r2.xyz;
  r3.w = r1.z * 0.0280019995 + r2.w;
  r2.xyzw = r1.wwww ? r3.xyzw : r2.xyzw;
  r0.x = (int)vThreadIDInGroupFlattened.x + 10;
// Known bad code for instruction (needs manual fix):
ld_structured r3.xyz, r0.x, l(0), g0.xyzx
r3.x = postEffectSrc[]..swiz;
r3.y = postEffectSrc[]..swiz;
r3.z = postEffectSrc[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured r0.x, r0.x, l(0), g1.xxxx
r0.x = postEffectSrc[]..swiz;
  r0.y = cmp(r0.x < 0.984375);
  r0.x = r0.x + -r0.w;
  r0.x = postFxControlA.z * abs(r0.x);
  r0.x = -r0.x * r0.x;
  r0.x = exp2(r0.x);
  r0.z = 0.00930000003 * r0.x;
  r3.xyz = r3.xyz * r0.zzz + r2.xyz;
  r3.w = r0.x * 0.00930000003 + r2.w;
  r0.xyzw = r0.yyyy ? r3.xyzw : r2.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r0.w = 0;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xyyy, r0.xyzw
  return;
}