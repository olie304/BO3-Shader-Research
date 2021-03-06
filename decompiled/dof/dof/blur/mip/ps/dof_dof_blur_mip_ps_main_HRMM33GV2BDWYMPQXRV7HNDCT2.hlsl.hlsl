// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:22 2021

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

SamplerState bilinearClamp_s : register(s1);
Texture2D<float4> codeTexture0 : register(t0);
Texture2D<float4> codeTexture1 : register(t1);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = codeTexture1.SampleLevel(bilinearClamp_s, v1.xy, 0).x;
  r0.y = cmp(0 < r0.x);
  if (r0.y != 0) {
    r0.y = sqrt(r0.x);
    r0.y = 5 * r0.y;
    r0.y = floor(r0.y);
    r0.y = max(1, r0.y);
    r0.y = min(4, r0.y);
    r0.z = 4 / r0.y;
    r1.xyz = codeTexture0.SampleLevel(bilinearClamp_s, v1.xy, 0).xyz;
    r0.w = rcp(r0.x);
    r1.w = r0.x * r0.z;
    r2.xyzw = float4(0.0957000032,-0.231000006,-0.0957000032,0.231000006) * r1.wwww;
    r3.xyzw = r2.wzyx * postFxControl2.zwzw + v1.xyxy;
    r4.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r3.xy, 0).xyz;
    r3.xy = codeTexture1.SampleLevel(bilinearClamp_s, r3.xy, 0).xy;
    r3.x = -r3.x + r0.x;
    r3.x = saturate(abs(r3.x) * r0.w);
    r3.x = 1 + -r3.x;
    r4.w = r3.x * r3.y;
    r1.xyz = r4.xyz * r4.www + r1.xyz;
    r3.x = r3.x * r3.y + 1;
    r4.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r3.zw, 0).xyz;
    r3.yz = codeTexture1.SampleLevel(bilinearClamp_s, r3.zw, 0).xy;
    r3.y = -r3.y + r0.x;
    r3.y = saturate(abs(r3.y) * r0.w);
    r3.y = 1 + -r3.y;
    r3.w = r3.y * r3.z;
    r1.xyz = r4.xyz * r3.www + r1.xyz;
    r3.x = r3.y * r3.z + r3.x;
    r4.xyzw = float4(-0.0957000032,-0.231000006,0.0957000032,0.231000006) * r1.wwww;
    r5.xyzw = r4.yxwz * postFxControl2.zwzw + v1.xyxy;
    r3.yzw = codeTexture0.SampleLevel(bilinearClamp_s, r5.xy, 0).xyz;
    r5.xy = codeTexture1.SampleLevel(bilinearClamp_s, r5.xy, 0).xy;
    r5.x = -r5.x + r0.x;
    r5.x = saturate(abs(r5.x) * r0.w);
    r5.x = 1 + -r5.x;
    r6.x = r5.x * r5.y;
    r1.xyz = r3.yzw * r6.xxx + r1.xyz;
    r3.x = r5.x * r5.y + r3.x;
    r3.yzw = codeTexture0.SampleLevel(bilinearClamp_s, r5.zw, 0).xyz;
    r5.xy = codeTexture1.SampleLevel(bilinearClamp_s, r5.zw, 0).xy;
    r5.x = -r5.x + r0.x;
    r5.x = saturate(abs(r5.x) * r0.w);
    r5.x = 1 + -r5.x;
    r5.z = r5.x * r5.y;
    r1.xyz = r3.yzw * r5.zzz + r1.xyz;
    r3.x = r5.x * r5.y + r3.x;
    r4.xyzw = r4.xyzw * postFxControl2.zwzw + v1.xyxy;
    r3.yzw = codeTexture0.SampleLevel(bilinearClamp_s, r4.xy, 0).xyz;
    r4.xy = codeTexture1.SampleLevel(bilinearClamp_s, r4.xy, 0).xy;
    r4.x = -r4.x + r0.x;
    r4.x = saturate(abs(r4.x) * r0.w);
    r4.x = 1 + -r4.x;
    r5.x = r4.x * r4.y;
    r1.xyz = r3.yzw * r5.xxx + r1.xyz;
    r3.x = r4.x * r4.y + r3.x;
    r3.yzw = codeTexture0.SampleLevel(bilinearClamp_s, r4.zw, 0).xyz;
    r4.xy = codeTexture1.SampleLevel(bilinearClamp_s, r4.zw, 0).xy;
    r4.x = -r4.x + r0.x;
    r4.x = saturate(abs(r4.x) * r0.w);
    r4.x = 1 + -r4.x;
    r4.z = r4.x * r4.y;
    r1.xyz = r3.yzw * r4.zzz + r1.xyz;
    r3.x = r4.x * r4.y + r3.x;
    r2.xyzw = r2.xyzw * postFxControl2.zwzw + v1.xyxy;
    r3.yzw = codeTexture0.SampleLevel(bilinearClamp_s, r2.xy, 0).xyz;
    r2.xy = codeTexture1.SampleLevel(bilinearClamp_s, r2.xy, 0).xy;
    r2.x = -r2.x + r0.x;
    r2.x = saturate(abs(r2.x) * r0.w);
    r2.x = 1 + -r2.x;
    r4.x = r2.x * r2.y;
    r1.xyz = r3.yzw * r4.xxx + r1.xyz;
    r2.x = r2.x * r2.y + r3.x;
    r3.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r2.zw, 0).xyz;
    r2.yz = codeTexture1.SampleLevel(bilinearClamp_s, r2.zw, 0).xy;
    r2.y = -r2.y + r0.x;
    r2.y = saturate(abs(r2.y) * r0.w);
    r2.y = 1 + -r2.y;
    r2.w = r2.y * r2.z;
    r3.xyz = r3.xyz * r2.www + r1.xyz;
    r3.w = r2.y * r2.z + r2.x;
    r1.xyz = cmp(r0.yyy >= float3(2,3,4));
    if (r1.x != 0) {
      r2.xyzw = float4(-0.353599995,0.353599995,0.461899996,-0.191300005) * r1.wwww;
      r4.xyzw = r2.xyyx * postFxControl2.zwzw + v1.xyxy;
      r5.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r4.xy, 0).xyz;
      r4.xy = codeTexture1.SampleLevel(bilinearClamp_s, r4.xy, 0).xy;
      r0.y = -r4.x + r0.x;
      r0.y = saturate(abs(r0.y) * r0.w);
      r0.y = 1 + -r0.y;
      r1.x = r0.y * r4.y;
      r5.xyz = r5.xyz * r1.xxx + r3.xyz;
      r0.y = r0.y * r4.y + r3.w;
      r6.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r4.zw, 0).xyz;
      r4.xy = codeTexture1.SampleLevel(bilinearClamp_s, r4.zw, 0).xy;
      r1.x = -r4.x + r0.x;
      r1.x = saturate(abs(r1.x) * r0.w);
      r1.x = 1 + -r1.x;
      r4.x = r1.x * r4.y;
      r4.xzw = r6.xyz * r4.xxx + r5.xyz;
      r0.y = r1.x * r4.y + r0.y;
      r5.xyzw = r2.zwxx * postFxControl2.zwzw + v1.xyxy;
      r6.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r5.xy, 0).xyz;
      r5.xy = codeTexture1.SampleLevel(bilinearClamp_s, r5.xy, 0).xy;
      r1.x = -r5.x + r0.x;
      r1.x = saturate(abs(r1.x) * r0.w);
      r1.x = 1 + -r1.x;
      r2.x = r1.x * r5.y;
      r4.xyz = r6.xyz * r2.xxx + r4.xzw;
      r0.y = r1.x * r5.y + r0.y;
      r6.xyzw = float4(0,-0.5,0.191300005,-0.461899996) * r1.wwww;
      r7.xyzw = r6.wzyx * postFxControl2.zwzw + v1.xyxy;
      r8.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r7.xy, 0).xyz;
      r5.xy = codeTexture1.SampleLevel(bilinearClamp_s, r7.xy, 0).xy;
      r1.x = -r5.x + r0.x;
      r1.x = saturate(abs(r1.x) * r0.w);
      r1.x = 1 + -r1.x;
      r2.x = r1.x * r5.y;
      r4.xyz = r8.xyz * r2.xxx + r4.xyz;
      r0.y = r1.x * r5.y + r0.y;
      r8.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r7.zw, 0).xyz;
      r5.xy = codeTexture1.SampleLevel(bilinearClamp_s, r7.zw, 0).xy;
      r1.x = -r5.x + r0.x;
      r1.x = saturate(abs(r1.x) * r0.w);
      r1.x = 1 + -r1.x;
      r2.x = r1.x * r5.y;
      r4.xyz = r8.xyz * r2.xxx + r4.xyz;
      r0.y = r1.x * r5.y + r0.y;
      r7.xyzw = float4(-0.191300005,-0.461899996,0,0.5) * r1.wwww;
      r8.xyzw = r7.wzyx * postFxControl2.zwzw + v1.xyxy;
      r9.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r8.xy, 0).xyz;
      r5.xy = codeTexture1.SampleLevel(bilinearClamp_s, r8.xy, 0).xy;
      r1.x = -r5.x + r0.x;
      r1.x = saturate(abs(r1.x) * r0.w);
      r1.x = 1 + -r1.x;
      r2.x = r1.x * r5.y;
      r4.xyz = r9.xyz * r2.xxx + r4.xyz;
      r0.y = r1.x * r5.y + r0.y;
      r9.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r8.zw, 0).xyz;
      r5.xy = codeTexture1.SampleLevel(bilinearClamp_s, r8.zw, 0).xy;
      r1.x = -r5.x + r0.x;
      r1.x = saturate(abs(r1.x) * r0.w);
      r1.x = 1 + -r1.x;
      r2.x = r1.x * r5.y;
      r4.xyz = r9.xyz * r2.xxx + r4.xyz;
      r0.y = r1.x * r5.y + r0.y;
      r8.xyzw = float4(0.461899996,0.191300005,0.191300005,0.461899996) * r1.wwww;
      r8.xyzw = r8.xyzw * postFxControl2.zwzw + v1.xyxy;
      r9.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r8.xy, 0).xyz;
      r5.xy = codeTexture1.SampleLevel(bilinearClamp_s, r8.xy, 0).xy;
      r1.x = -r5.x + r0.x;
      r1.x = saturate(abs(r1.x) * r0.w);
      r1.x = 1 + -r1.x;
      r2.x = r1.x * r5.y;
      r4.xyz = r9.xyz * r2.xxx + r4.xyz;
      r0.y = r1.x * r5.y + r0.y;
      r9.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r5.zw, 0).xyz;
      r5.xy = codeTexture1.SampleLevel(bilinearClamp_s, r5.zw, 0).xy;
      r1.x = -r5.x + r0.x;
      r1.x = saturate(abs(r1.x) * r0.w);
      r1.x = 1 + -r1.x;
      r2.x = r1.x * r5.y;
      r4.xyz = r9.xyz * r2.xxx + r4.xyz;
      r0.y = r1.x * r5.y + r0.y;
      r2.xyzw = r2.yywz * postFxControl2.zwzw + v1.xyxy;
      r5.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r2.xy, 0).xyz;
      r2.xy = codeTexture1.SampleLevel(bilinearClamp_s, r2.xy, 0).xy;
      r1.x = -r2.x + r0.x;
      r1.x = saturate(abs(r1.x) * r0.w);
      r1.x = 1 + -r1.x;
      r2.x = r1.x * r2.y;
      r4.xyz = r5.xyz * r2.xxx + r4.xyz;
      r0.y = r1.x * r2.y + r0.y;
      r5.xyzw = r7.xyzw * postFxControl2.zwzw + v1.xyxy;
      r7.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r5.xy, 0).xyz;
      r2.xy = codeTexture1.SampleLevel(bilinearClamp_s, r5.xy, 0).xy;
      r1.x = -r2.x + r0.x;
      r1.x = saturate(abs(r1.x) * r0.w);
      r1.x = 1 + -r1.x;
      r2.x = r1.x * r2.y;
      r4.xyz = r7.xyz * r2.xxx + r4.xyz;
      r0.y = r1.x * r2.y + r0.y;
      r7.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r8.zw, 0).xyz;
      r2.xy = codeTexture1.SampleLevel(bilinearClamp_s, r8.zw, 0).xy;
      r1.x = -r2.x + r0.x;
      r1.x = saturate(abs(r1.x) * r0.w);
      r1.x = 1 + -r1.x;
      r2.x = r1.x * r2.y;
      r4.xyz = r7.xyz * r2.xxx + r4.xyz;
      r0.y = r1.x * r2.y + r0.y;
      r6.xyzw = r6.xyzw * postFxControl2.zwzw + v1.xyxy;
      r7.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r6.xy, 0).xyz;
      r2.xy = codeTexture1.SampleLevel(bilinearClamp_s, r6.xy, 0).xy;
      r1.x = -r2.x + r0.x;
      r1.x = saturate(abs(r1.x) * r0.w);
      r1.x = 1 + -r1.x;
      r2.x = r1.x * r2.y;
      r4.xyz = r7.xyz * r2.xxx + r4.xyz;
      r0.y = r1.x * r2.y + r0.y;
      r7.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r5.zw, 0).xyz;
      r2.xy = codeTexture1.SampleLevel(bilinearClamp_s, r5.zw, 0).xy;
      r1.x = -r2.x + r0.x;
      r1.x = saturate(abs(r1.x) * r0.w);
      r1.x = 1 + -r1.x;
      r2.x = r1.x * r2.y;
      r4.xyz = r7.xyz * r2.xxx + r4.xyz;
      r0.y = r1.x * r2.y + r0.y;
      r5.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r6.zw, 0).xyz;
      r2.xy = codeTexture1.SampleLevel(bilinearClamp_s, r6.zw, 0).xy;
      r1.x = -r2.x + r0.x;
      r1.x = saturate(abs(r1.x) * r0.w);
      r1.x = 1 + -r1.x;
      r2.x = r1.x * r2.y;
      r4.xyz = r5.xyz * r2.xxx + r4.xyz;
      r0.y = r1.x * r2.y + r0.y;
      r5.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r2.zw, 0).xyz;
      r2.xy = codeTexture1.SampleLevel(bilinearClamp_s, r2.zw, 0).xy;
      r1.x = -r2.x + r0.x;
      r1.x = saturate(abs(r1.x) * r0.w);
      r1.x = 1 + -r1.x;
      r2.x = r1.x * r2.y;
      r3.xyz = r5.xyz * r2.xxx + r4.xyz;
      r3.w = r1.x * r2.y + r0.y;
    }
    if (r1.y != 0) {
      r2.xyzw = float4(-0.595000029,0.45660001,0.595000029,-0.45660001) * r1.wwww;
      r4.xyzw = r2.yxwz * postFxControl2.zwzw + v1.xyxy;
      r5.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r4.xy, 0).xyz;
      r1.xy = codeTexture1.SampleLevel(bilinearClamp_s, r4.xy, 0).xy;
      r0.y = -r1.x + r0.x;
      r0.y = saturate(abs(r0.y) * r0.w);
      r0.y = 1 + -r0.y;
      r1.x = r0.y * r1.y;
      r5.xyz = r5.xyz * r1.xxx + r3.xyz;
      r0.y = r0.y * r1.y + r3.w;
      r6.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r4.zw, 0).xyz;
      r1.xy = codeTexture1.SampleLevel(bilinearClamp_s, r4.zw, 0).xy;
      r1.x = -r1.x + r0.x;
      r1.x = saturate(abs(r1.x) * r0.w);
      r1.x = 1 + -r1.x;
      r4.x = r1.x * r1.y;
      r4.xyz = r6.xyz * r4.xxx + r5.xyz;
      r0.y = r1.x * r1.y + r0.y;
      r2.xyzw = r2.xyzw * postFxControl2.zwzw + v1.xyxy;
      r5.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r2.xy, 0).xyz;
      r1.xy = codeTexture1.SampleLevel(bilinearClamp_s, r2.xy, 0).xy;
      r1.x = -r1.x + r0.x;
      r1.x = saturate(abs(r1.x) * r0.w);
      r1.x = 1 + -r1.x;
      r2.x = r1.x * r1.y;
      r4.xyz = r5.xyz * r2.xxx + r4.xyz;
      r0.y = r1.x * r1.y + r0.y;
      r5.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r2.zw, 0).xyz;
      r1.xy = codeTexture1.SampleLevel(bilinearClamp_s, r2.zw, 0).xy;
      r1.x = -r1.x + r0.x;
      r1.x = saturate(abs(r1.x) * r0.w);
      r1.x = 1 + -r1.x;
      r2.x = r1.x * r1.y;
      r2.xyz = r5.xyz * r2.xxx + r4.xyz;
      r0.y = r1.x * r1.y + r0.y;
      r4.xyzw = float4(0.287,-0.692900002,-0.287,0.692900002) * r1.wwww;
      r5.xyzw = r4.wzyx * postFxControl2.zwzw + v1.xyxy;
      r6.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r5.xy, 0).xyz;
      r1.xy = codeTexture1.SampleLevel(bilinearClamp_s, r5.xy, 0).xy;
      r1.x = -r1.x + r0.x;
      r1.x = saturate(abs(r1.x) * r0.w);
      r1.x = 1 + -r1.x;
      r2.w = r1.x * r1.y;
      r2.xyz = r6.xyz * r2.www + r2.xyz;
      r0.y = r1.x * r1.y + r0.y;
      r6.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r5.zw, 0).xyz;
      r1.xy = codeTexture1.SampleLevel(bilinearClamp_s, r5.zw, 0).xy;
      r1.x = -r1.x + r0.x;
      r1.x = saturate(abs(r1.x) * r0.w);
      r1.x = 1 + -r1.x;
      r2.w = r1.x * r1.y;
      r2.xyz = r6.xyz * r2.www + r2.xyz;
      r0.y = r1.x * r1.y + r0.y;
      r5.xyzw = float4(-0.0979000032,0.743600011,0.0979000032,-0.743600011) * r1.wwww;
      r6.xyzw = r5.wzyx * postFxControl2.zwzw + v1.xyxy;
      r7.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r6.xy, 0).xyz;
      r1.xy = codeTexture1.SampleLevel(bilinearClamp_s, r6.xy, 0).xy;
      r1.x = -r1.x + r0.x;
      r1.x = saturate(abs(r1.x) * r0.w);
      r1.x = 1 + -r1.x;
      r2.w = r1.x * r1.y;
      r2.xyz = r7.xyz * r2.www + r2.xyz;
      r0.y = r1.x * r1.y + r0.y;
      r7.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r6.zw, 0).xyz;
      r1.xy = codeTexture1.SampleLevel(bilinearClamp_s, r6.zw, 0).xy;
      r1.x = -r1.x + r0.x;
      r1.x = saturate(abs(r1.x) * r0.w);
      r1.x = 1 + -r1.x;
      r2.w = r1.x * r1.y;
      r2.xyz = r7.xyz * r2.www + r2.xyz;
      r0.y = r1.x * r1.y + r0.y;
      r6.xyzw = float4(-0.0979000032,-0.743600011,0.0979000032,0.743600011) * r1.wwww;
      r7.xyzw = r6.yxwz * postFxControl2.zwzw + v1.xyxy;
      r8.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r7.xy, 0).xyz;
      r1.xy = codeTexture1.SampleLevel(bilinearClamp_s, r7.xy, 0).xy;
      r1.x = -r1.x + r0.x;
      r1.x = saturate(abs(r1.x) * r0.w);
      r1.x = 1 + -r1.x;
      r2.w = r1.x * r1.y;
      r2.xyz = r8.xyz * r2.www + r2.xyz;
      r0.y = r1.x * r1.y + r0.y;
      r8.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r7.zw, 0).xyz;
      r1.xy = codeTexture1.SampleLevel(bilinearClamp_s, r7.zw, 0).xy;
      r1.x = -r1.x + r0.x;
      r1.x = saturate(abs(r1.x) * r0.w);
      r1.x = 1 + -r1.x;
      r2.w = r1.x * r1.y;
      r2.xyz = r8.xyz * r2.www + r2.xyz;
      r0.y = r1.x * r1.y + r0.y;
      r7.xyzw = float4(-0.287,-0.692900002,0.287,0.692900002) * r1.wwww;
      r8.xyzw = r7.yxwz * postFxControl2.zwzw + v1.xyxy;
      r9.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r8.xy, 0).xyz;
      r1.xy = codeTexture1.SampleLevel(bilinearClamp_s, r8.xy, 0).xy;
      r1.x = -r1.x + r0.x;
      r1.x = saturate(abs(r1.x) * r0.w);
      r1.x = 1 + -r1.x;
      r2.w = r1.x * r1.y;
      r2.xyz = r9.xyz * r2.www + r2.xyz;
      r0.y = r1.x * r1.y + r0.y;
      r9.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r8.zw, 0).xyz;
      r1.xy = codeTexture1.SampleLevel(bilinearClamp_s, r8.zw, 0).xy;
      r1.x = -r1.x + r0.x;
      r1.x = saturate(abs(r1.x) * r0.w);
      r1.x = 1 + -r1.x;
      r2.w = r1.x * r1.y;
      r2.xyz = r9.xyz * r2.www + r2.xyz;
      r0.y = r1.x * r1.y + r0.y;
      r8.xyzw = float4(0.45660001,0.595000029,-0.45660001,-0.595000029) * r1.wwww;
      r9.xyzw = r8.wzyx * postFxControl2.zwzw + v1.xyxy;
      r10.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r9.xy, 0).xyz;
      r1.xy = codeTexture1.SampleLevel(bilinearClamp_s, r9.xy, 0).xy;
      r1.x = -r1.x + r0.x;
      r1.x = saturate(abs(r1.x) * r0.w);
      r1.x = 1 + -r1.x;
      r2.w = r1.x * r1.y;
      r2.xyz = r10.xyz * r2.www + r2.xyz;
      r0.y = r1.x * r1.y + r0.y;
      r10.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r9.zw, 0).xyz;
      r1.xy = codeTexture1.SampleLevel(bilinearClamp_s, r9.zw, 0).xy;
      r1.x = -r1.x + r0.x;
      r1.x = saturate(abs(r1.x) * r0.w);
      r1.x = 1 + -r1.x;
      r2.w = r1.x * r1.y;
      r2.xyz = r10.xyz * r2.www + r2.xyz;
      r0.y = r1.x * r1.y + r0.y;
      r8.xyzw = r8.xyzw * postFxControl2.zwzw + v1.xyxy;
      r9.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r8.xy, 0).xyz;
      r1.xy = codeTexture1.SampleLevel(bilinearClamp_s, r8.xy, 0).xy;
      r1.x = -r1.x + r0.x;
      r1.x = saturate(abs(r1.x) * r0.w);
      r1.x = 1 + -r1.x;
      r2.w = r1.x * r1.y;
      r2.xyz = r9.xyz * r2.www + r2.xyz;
      r0.y = r1.x * r1.y + r0.y;
      r9.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r8.zw, 0).xyz;
      r1.xy = codeTexture1.SampleLevel(bilinearClamp_s, r8.zw, 0).xy;
      r1.x = -r1.x + r0.x;
      r1.x = saturate(abs(r1.x) * r0.w);
      r1.x = 1 + -r1.x;
      r2.w = r1.x * r1.y;
      r2.xyz = r9.xyz * r2.www + r2.xyz;
      r0.y = r1.x * r1.y + r0.y;
      r7.xyzw = r7.xyzw * postFxControl2.zwzw + v1.xyxy;
      r8.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r7.xy, 0).xyz;
      r1.xy = codeTexture1.SampleLevel(bilinearClamp_s, r7.xy, 0).xy;
      r1.x = -r1.x + r0.x;
      r1.x = saturate(abs(r1.x) * r0.w);
      r1.x = 1 + -r1.x;
      r2.w = r1.x * r1.y;
      r2.xyz = r8.xyz * r2.www + r2.xyz;
      r0.y = r1.x * r1.y + r0.y;
      r8.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r7.zw, 0).xyz;
      r1.xy = codeTexture1.SampleLevel(bilinearClamp_s, r7.zw, 0).xy;
      r1.x = -r1.x + r0.x;
      r1.x = saturate(abs(r1.x) * r0.w);
      r1.x = 1 + -r1.x;
      r2.w = r1.x * r1.y;
      r2.xyz = r8.xyz * r2.www + r2.xyz;
      r0.y = r1.x * r1.y + r0.y;
      r6.xyzw = r6.xyzw * postFxControl2.zwzw + v1.xyxy;
      r7.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r6.xy, 0).xyz;
      r1.xy = codeTexture1.SampleLevel(bilinearClamp_s, r6.xy, 0).xy;
      r1.x = -r1.x + r0.x;
      r1.x = saturate(abs(r1.x) * r0.w);
      r1.x = 1 + -r1.x;
      r2.w = r1.x * r1.y;
      r2.xyz = r7.xyz * r2.www + r2.xyz;
      r0.y = r1.x * r1.y + r0.y;
      r7.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r6.zw, 0).xyz;
      r1.xy = codeTexture1.SampleLevel(bilinearClamp_s, r6.zw, 0).xy;
      r1.x = -r1.x + r0.x;
      r1.x = saturate(abs(r1.x) * r0.w);
      r1.x = 1 + -r1.x;
      r2.w = r1.x * r1.y;
      r2.xyz = r7.xyz * r2.www + r2.xyz;
      r0.y = r1.x * r1.y + r0.y;
      r5.xyzw = r5.xyzw * postFxControl2.zwzw + v1.xyxy;
      r6.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r5.xy, 0).xyz;
      r1.xy = codeTexture1.SampleLevel(bilinearClamp_s, r5.xy, 0).xy;
      r1.x = -r1.x + r0.x;
      r1.x = saturate(abs(r1.x) * r0.w);
      r1.x = 1 + -r1.x;
      r2.w = r1.x * r1.y;
      r2.xyz = r6.xyz * r2.www + r2.xyz;
      r0.y = r1.x * r1.y + r0.y;
      r6.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r5.zw, 0).xyz;
      r1.xy = codeTexture1.SampleLevel(bilinearClamp_s, r5.zw, 0).xy;
      r1.x = -r1.x + r0.x;
      r1.x = saturate(abs(r1.x) * r0.w);
      r1.x = 1 + -r1.x;
      r2.w = r1.x * r1.y;
      r2.xyz = r6.xyz * r2.www + r2.xyz;
      r0.y = r1.x * r1.y + r0.y;
      r4.xyzw = r4.xyzw * postFxControl2.zwzw + v1.xyxy;
      r5.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r4.xy, 0).xyz;
      r1.xy = codeTexture1.SampleLevel(bilinearClamp_s, r4.xy, 0).xy;
      r1.x = -r1.x + r0.x;
      r1.x = saturate(abs(r1.x) * r0.w);
      r1.x = 1 + -r1.x;
      r2.w = r1.x * r1.y;
      r2.xyz = r5.xyz * r2.www + r2.xyz;
      r0.y = r1.x * r1.y + r0.y;
      r5.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r4.zw, 0).xyz;
      r1.xy = codeTexture1.SampleLevel(bilinearClamp_s, r4.zw, 0).xy;
      r1.x = -r1.x + r0.x;
      r1.x = saturate(abs(r1.x) * r0.w);
      r1.x = 1 + -r1.x;
      r2.w = r1.x * r1.y;
      r3.xyz = r5.xyz * r2.www + r2.xyz;
      r3.w = r1.x * r1.y + r0.y;
    }
    if (r1.z != 0) {
      r2.xyzw = float4(0.831499994,-0.555599988,-0.831499994,0.555599988) * r1.wwww;
      r4.xyzw = r2.yxwz * postFxControl2.zwzw + v1.xyxy;
      r1.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r4.xy, 0).xyz;
      r4.xy = codeTexture1.SampleLevel(bilinearClamp_s, r4.xy, 0).xy;
      r0.y = -r4.x + r0.x;
      r0.y = saturate(abs(r0.y) * r0.w);
      r0.y = 1 + -r0.y;
      r4.x = r0.y * r4.y;
      r1.xyz = r1.xyz * r4.xxx + r3.xyz;
      r0.y = r0.y * r4.y + r3.w;
      r5.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r4.zw, 0).xyz;
      r4.xy = codeTexture1.SampleLevel(bilinearClamp_s, r4.zw, 0).xy;
      r4.x = -r4.x + r0.x;
      r4.x = saturate(abs(r4.x) * r0.w);
      r4.x = 1 + -r4.x;
      r4.z = r4.x * r4.y;
      r1.xyz = r5.xyz * r4.zzz + r1.xyz;
      r0.y = r4.x * r4.y + r0.y;
      r4.xyzw = float4(-0.707099974,0.707099974,0.923900008,-0.382699996) * r1.wwww;
      r5.xyzw = r4.xyyx * postFxControl2.zwzw + v1.xyxy;
      r6.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r5.xy, 0).xyz;
      r5.xy = codeTexture1.SampleLevel(bilinearClamp_s, r5.xy, 0).xy;
      r5.x = -r5.x + r0.x;
      r5.x = saturate(abs(r5.x) * r0.w);
      r5.x = 1 + -r5.x;
      r6.w = r5.x * r5.y;
      r1.xyz = r6.xyz * r6.www + r1.xyz;
      r0.y = r5.x * r5.y + r0.y;
      r6.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r5.zw, 0).xyz;
      r5.xy = codeTexture1.SampleLevel(bilinearClamp_s, r5.zw, 0).xy;
      r5.x = -r5.x + r0.x;
      r5.x = saturate(abs(r5.x) * r0.w);
      r5.x = 1 + -r5.x;
      r5.z = r5.x * r5.y;
      r1.xyz = r6.xyz * r5.zzz + r1.xyz;
      r0.y = r5.x * r5.y + r0.y;
      r2.xyzw = r2.xyzw * postFxControl2.zwzw + v1.xyxy;
      r5.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r2.xy, 0).xyz;
      r2.xy = codeTexture1.SampleLevel(bilinearClamp_s, r2.xy, 0).xy;
      r2.x = -r2.x + r0.x;
      r2.x = saturate(abs(r2.x) * r0.w);
      r2.x = 1 + -r2.x;
      r5.w = r2.x * r2.y;
      r1.xyz = r5.xyz * r5.www + r1.xyz;
      r0.y = r2.x * r2.y + r0.y;
      r5.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r2.zw, 0).xyz;
      r2.xy = codeTexture1.SampleLevel(bilinearClamp_s, r2.zw, 0).xy;
      r2.x = -r2.x + r0.x;
      r2.x = saturate(abs(r2.x) * r0.w);
      r2.x = 1 + -r2.x;
      r2.z = r2.x * r2.y;
      r1.xyz = r5.xyz * r2.zzz + r1.xyz;
      r0.y = r2.x * r2.y + r0.y;
      r2.xyzw = r4.zwxx * postFxControl2.zwzw + v1.xyxy;
      r5.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r2.xy, 0).xyz;
      r2.xy = codeTexture1.SampleLevel(bilinearClamp_s, r2.xy, 0).xy;
      r2.x = -r2.x + r0.x;
      r2.x = saturate(abs(r2.x) * r0.w);
      r2.x = 1 + -r2.x;
      r4.x = r2.x * r2.y;
      r1.xyz = r5.xyz * r4.xxx + r1.xyz;
      r0.y = r2.x * r2.y + r0.y;
      r5.xyzw = float4(-0.195099995,0.980799973,0.382699996,-0.923900008) * r1.wwww;
      r6.xyzw = r5.wzyx * postFxControl2.zwzw + v1.xyxy;
      r7.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r6.xy, 0).xyz;
      r2.xy = codeTexture1.SampleLevel(bilinearClamp_s, r6.xy, 0).xy;
      r2.x = -r2.x + r0.x;
      r2.x = saturate(abs(r2.x) * r0.w);
      r2.x = 1 + -r2.x;
      r4.x = r2.x * r2.y;
      r1.xyz = r7.xyz * r4.xxx + r1.xyz;
      r0.y = r2.x * r2.y + r0.y;
      r7.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r6.zw, 0).xyz;
      r2.xy = codeTexture1.SampleLevel(bilinearClamp_s, r6.zw, 0).xy;
      r2.x = -r2.x + r0.x;
      r2.x = saturate(abs(r2.x) * r0.w);
      r2.x = 1 + -r2.x;
      r4.x = r2.x * r2.y;
      r1.xyz = r7.xyz * r4.xxx + r1.xyz;
      r0.y = r2.x * r2.y + r0.y;
      r6.xyzw = float4(0,-1,0.195099995,-0.980799973) * r1.wwww;
      r7.xyzw = r6.wzyx * postFxControl2.zwzw + v1.xyxy;
      r8.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r7.xy, 0).xyz;
      r2.xy = codeTexture1.SampleLevel(bilinearClamp_s, r7.xy, 0).xy;
      r2.x = -r2.x + r0.x;
      r2.x = saturate(abs(r2.x) * r0.w);
      r2.x = 1 + -r2.x;
      r4.x = r2.x * r2.y;
      r1.xyz = r8.xyz * r4.xxx + r1.xyz;
      r0.y = r2.x * r2.y + r0.y;
      r8.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r7.zw, 0).xyz;
      r2.xy = codeTexture1.SampleLevel(bilinearClamp_s, r7.zw, 0).xy;
      r2.x = -r2.x + r0.x;
      r2.x = saturate(abs(r2.x) * r0.w);
      r2.x = 1 + -r2.x;
      r4.x = r2.x * r2.y;
      r1.xyz = r8.xyz * r4.xxx + r1.xyz;
      r0.y = r2.x * r2.y + r0.y;
      r7.xw = r0.zz * r0.xx;
      r7.yz = float2(0,0);
      r7.xyzw = r7.xyzw * postFxControl2.zwzw + v1.xyxy;
      r8.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r7.xy, 0).xyz;
      r2.xy = codeTexture1.SampleLevel(bilinearClamp_s, r7.xy, 0).xy;
      r0.z = -r2.x + r0.x;
      r0.z = saturate(abs(r0.z) * r0.w);
      r0.z = 1 + -r0.z;
      r2.x = r0.z * r2.y;
      r1.xyz = r8.xyz * r2.xxx + r1.xyz;
      r0.y = r0.z * r2.y + r0.y;
      r8.xyzw = float4(0.195099995,0.980799973,-0.195099995,-0.980799973) * r1.wwww;
      r9.xyzw = r8.wzyx * postFxControl2.zwzw + v1.xyxy;
      r10.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r9.xy, 0).xyz;
      r2.xy = codeTexture1.SampleLevel(bilinearClamp_s, r9.xy, 0).xy;
      r0.z = -r2.x + r0.x;
      r0.z = saturate(abs(r0.z) * r0.w);
      r0.z = 1 + -r0.z;
      r2.x = r0.z * r2.y;
      r1.xyz = r10.xyz * r2.xxx + r1.xyz;
      r0.y = r0.z * r2.y + r0.y;
      r10.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r9.zw, 0).xyz;
      r2.xy = codeTexture1.SampleLevel(bilinearClamp_s, r9.zw, 0).xy;
      r0.z = -r2.x + r0.x;
      r0.z = saturate(abs(r0.z) * r0.w);
      r0.z = 1 + -r0.z;
      r2.x = r0.z * r2.y;
      r1.xyz = r10.xyz * r2.xxx + r1.xyz;
      r0.y = r0.z * r2.y + r0.y;
      r9.xyzw = float4(-0.382699996,-0.923900008,0.382699996,0.923900008) * r1.wwww;
      r10.xyzw = r9.yxwz * postFxControl2.zwzw + v1.xyxy;
      r11.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r10.xy, 0).xyz;
      r2.xy = codeTexture1.SampleLevel(bilinearClamp_s, r10.xy, 0).xy;
      r0.z = -r2.x + r0.x;
      r0.z = saturate(abs(r0.z) * r0.w);
      r0.z = 1 + -r0.z;
      r2.x = r0.z * r2.y;
      r1.xyz = r11.xyz * r2.xxx + r1.xyz;
      r0.y = r0.z * r2.y + r0.y;
      r11.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r10.zw, 0).xyz;
      r2.xy = codeTexture1.SampleLevel(bilinearClamp_s, r10.zw, 0).xy;
      r0.z = -r2.x + r0.x;
      r0.z = saturate(abs(r0.z) * r0.w);
      r0.z = 1 + -r0.z;
      r2.x = r0.z * r2.y;
      r1.xyz = r11.xyz * r2.xxx + r1.xyz;
      r0.y = r0.z * r2.y + r0.y;
      r10.xyzw = float4(-0.555599988,-0.831499994,0.555599988,0.831499994) * r1.wwww;
      r11.xyzw = r10.wzyx * postFxControl2.zwzw + v1.xyxy;
      r12.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r11.xy, 0).xyz;
      r2.xy = codeTexture1.SampleLevel(bilinearClamp_s, r11.xy, 0).xy;
      r0.z = -r2.x + r0.x;
      r0.z = saturate(abs(r0.z) * r0.w);
      r0.z = 1 + -r0.z;
      r1.w = r0.z * r2.y;
      r1.xyz = r12.xyz * r1.www + r1.xyz;
      r0.y = r0.z * r2.y + r0.y;
      r12.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r11.zw, 0).xyz;
      r2.xy = codeTexture1.SampleLevel(bilinearClamp_s, r11.zw, 0).xy;
      r0.z = -r2.x + r0.x;
      r0.z = saturate(abs(r0.z) * r0.w);
      r0.z = 1 + -r0.z;
      r1.w = r0.z * r2.y;
      r1.xyz = r12.xyz * r1.www + r1.xyz;
      r0.y = r0.z * r2.y + r0.y;
      r11.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r2.zw, 0).xyz;
      r2.xy = codeTexture1.SampleLevel(bilinearClamp_s, r2.zw, 0).xy;
      r0.z = -r2.x + r0.x;
      r0.z = saturate(abs(r0.z) * r0.w);
      r0.z = 1 + -r0.z;
      r1.w = r0.z * r2.y;
      r1.xyz = r11.xyz * r1.www + r1.xyz;
      r0.y = r0.z * r2.y + r0.y;
      r2.xyzw = r4.yywz * postFxControl2.zwzw + v1.xyxy;
      r4.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r2.xy, 0).xyz;
      r2.xy = codeTexture1.SampleLevel(bilinearClamp_s, r2.xy, 0).xy;
      r0.z = -r2.x + r0.x;
      r0.z = saturate(abs(r0.z) * r0.w);
      r0.z = 1 + -r0.z;
      r1.w = r0.z * r2.y;
      r1.xyz = r4.xyz * r1.www + r1.xyz;
      r0.y = r0.z * r2.y + r0.y;
      r4.xyzw = r10.xyzw * postFxControl2.zwzw + v1.xyxy;
      r10.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r4.xy, 0).xyz;
      r2.xy = codeTexture1.SampleLevel(bilinearClamp_s, r4.xy, 0).xy;
      r0.z = -r2.x + r0.x;
      r0.z = saturate(abs(r0.z) * r0.w);
      r0.z = 1 + -r0.z;
      r1.w = r0.z * r2.y;
      r1.xyz = r10.xyz * r1.www + r1.xyz;
      r0.y = r0.z * r2.y + r0.y;
      r10.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r4.zw, 0).xyz;
      r2.xy = codeTexture1.SampleLevel(bilinearClamp_s, r4.zw, 0).xy;
      r0.z = -r2.x + r0.x;
      r0.z = saturate(abs(r0.z) * r0.w);
      r0.z = 1 + -r0.z;
      r1.w = r0.z * r2.y;
      r1.xyz = r10.xyz * r1.www + r1.xyz;
      r0.y = r0.z * r2.y + r0.y;
      r4.xyzw = r9.xyzw * postFxControl2.zwzw + v1.xyxy;
      r9.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r4.xy, 0).xyz;
      r2.xy = codeTexture1.SampleLevel(bilinearClamp_s, r4.xy, 0).xy;
      r0.z = -r2.x + r0.x;
      r0.z = saturate(abs(r0.z) * r0.w);
      r0.z = 1 + -r0.z;
      r1.w = r0.z * r2.y;
      r1.xyz = r9.xyz * r1.www + r1.xyz;
      r0.y = r0.z * r2.y + r0.y;
      r9.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r4.zw, 0).xyz;
      r2.xy = codeTexture1.SampleLevel(bilinearClamp_s, r4.zw, 0).xy;
      r0.z = -r2.x + r0.x;
      r0.z = saturate(abs(r0.z) * r0.w);
      r0.z = 1 + -r0.z;
      r1.w = r0.z * r2.y;
      r1.xyz = r9.xyz * r1.www + r1.xyz;
      r0.y = r0.z * r2.y + r0.y;
      r4.xyzw = r8.xyzw * postFxControl2.zwzw + v1.xyxy;
      r8.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r4.xy, 0).xyz;
      r2.xy = codeTexture1.SampleLevel(bilinearClamp_s, r4.xy, 0).xy;
      r0.z = -r2.x + r0.x;
      r0.z = saturate(abs(r0.z) * r0.w);
      r0.z = 1 + -r0.z;
      r1.w = r0.z * r2.y;
      r1.xyz = r8.xyz * r1.www + r1.xyz;
      r0.y = r0.z * r2.y + r0.y;
      r8.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r4.zw, 0).xyz;
      r2.xy = codeTexture1.SampleLevel(bilinearClamp_s, r4.zw, 0).xy;
      r0.z = -r2.x + r0.x;
      r0.z = saturate(abs(r0.z) * r0.w);
      r0.z = 1 + -r0.z;
      r1.w = r0.z * r2.y;
      r1.xyz = r8.xyz * r1.www + r1.xyz;
      r0.y = r0.z * r2.y + r0.y;
      r4.xyzw = r6.xyzw * postFxControl2.zwzw + v1.xyxy;
      r6.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r4.xy, 0).xyz;
      r2.xy = codeTexture1.SampleLevel(bilinearClamp_s, r4.xy, 0).xy;
      r0.z = -r2.x + r0.x;
      r0.z = saturate(abs(r0.z) * r0.w);
      r0.z = 1 + -r0.z;
      r1.w = r0.z * r2.y;
      r1.xyz = r6.xyz * r1.www + r1.xyz;
      r0.y = r0.z * r2.y + r0.y;
      r6.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r7.zw, 0).xyz;
      r2.xy = codeTexture1.SampleLevel(bilinearClamp_s, r7.zw, 0).xy;
      r0.z = -r2.x + r0.x;
      r0.z = saturate(abs(r0.z) * r0.w);
      r0.z = 1 + -r0.z;
      r1.w = r0.z * r2.y;
      r1.xyz = r6.xyz * r1.www + r1.xyz;
      r0.y = r0.z * r2.y + r0.y;
      r6.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r4.zw, 0).xyz;
      r2.xy = codeTexture1.SampleLevel(bilinearClamp_s, r4.zw, 0).xy;
      r0.z = -r2.x + r0.x;
      r0.z = saturate(abs(r0.z) * r0.w);
      r0.z = 1 + -r0.z;
      r1.w = r0.z * r2.y;
      r1.xyz = r6.xyz * r1.www + r1.xyz;
      r0.y = r0.z * r2.y + r0.y;
      r4.xyzw = r5.xyzw * postFxControl2.zwzw + v1.xyxy;
      r5.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r4.xy, 0).xyz;
      r2.xy = codeTexture1.SampleLevel(bilinearClamp_s, r4.xy, 0).xy;
      r0.z = -r2.x + r0.x;
      r0.z = saturate(abs(r0.z) * r0.w);
      r0.z = 1 + -r0.z;
      r1.w = r0.z * r2.y;
      r1.xyz = r5.xyz * r1.www + r1.xyz;
      r0.y = r0.z * r2.y + r0.y;
      r5.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r4.zw, 0).xyz;
      r2.xy = codeTexture1.SampleLevel(bilinearClamp_s, r4.zw, 0).xy;
      r0.z = -r2.x + r0.x;
      r0.z = saturate(abs(r0.z) * r0.w);
      r0.z = 1 + -r0.z;
      r1.w = r0.z * r2.y;
      r1.xyz = r5.xyz * r1.www + r1.xyz;
      r0.y = r0.z * r2.y + r0.y;
      r4.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r2.zw, 0).xyz;
      r2.xy = codeTexture1.SampleLevel(bilinearClamp_s, r2.zw, 0).xy;
      r0.x = -r2.x + r0.x;
      r0.x = saturate(abs(r0.x) * r0.w);
      r0.x = 1 + -r0.x;
      r0.z = r0.x * r2.y;
      r3.xyz = r4.xyz * r0.zzz + r1.xyz;
      r3.w = r0.x * r2.y + r0.y;
    }
    r0.x = rcp(r3.w);
    r0.y = r3.w * r0.x;
    r0.xzw = r3.xyz * r0.xxx + float3(0.00872999988,0.00872999988,0.00872999988);
    r0.xzw = log2(r0.xzw);
    o0.xyz = saturate(r0.xzw * float3(0.0727029592,0.0727029592,0.0727029592) + float3(0.598205984,0.598205984,0.598205984));
    o0.w = r0.y;
  } else {
    o0.xyzw = float4(0,0,0,0);
  }
  return;
}