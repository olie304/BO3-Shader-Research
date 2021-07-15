// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:23 2021

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

SamplerState bilinearClamp_s : register(s0);
SamplerState nearestClamp_s : register(s1);
Texture2D<float4> codeTexture0 : register(t0);
Texture2D<float4> codeTexture1 : register(t6);
Texture2D<float4> codeTexture2 : register(t7);
Texture2D<float4> codeTexture3 : register(t9);
Texture2D<float4> codeTexture4 : register(t10);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : TEXCOORD0,
  nointerpolation float2 v1 : TEXCOORD1,
  float4 v2 : SV_POSITION0,
  out float3 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = codeTexture0.Sample(bilinearClamp_s, v0.xy).xyz;
  r0.w = codeTexture4.Sample(nearestClamp_s, v0.xy).x;
  r1.z = codeTexture1.SampleLevel(bilinearClamp_s, v0.xy, 0).x;
  r0.w = cmp(0 < r0.w);
  if (r0.w != 0) {
    r2.xy = frac(v0.wz);
    r2.zw = r2.xy * r2.xy;
    r2.xy = r2.xy * float2(-2,-2) + float2(3,3);
    r3.xy = r2.zw * r2.xy;
    r2.xy = -r2.wz * r2.yx + float2(1,1);
    r4.y = r3.y * r3.x;
    r4.xz = r2.xy * r3.xy;
    r4.w = r2.x * r2.y;
    r2.xyzw = codeTexture2.Gather(bilinearClamp_s, v0.xy).xyzw;
    r3.xyzw = codeTexture2.Gather(bilinearClamp_s, v0.xy).xyzw;
    r5.xyzw = codeTexture2.Gather(bilinearClamp_s, v0.xy).xyzw;
    r6.xyzw = codeTexture3.Gather(bilinearClamp_s, v0.xy).xyzw;
    r6.xyzw = cmp(float4(0,0,0,0) < r6.xyzw);
    r6.xyzw = r6.xyzw ? float4(1,1,1,1) : 0;
    r7.xyzw = r6.xyzw * r4.xyzw;
    r2.x = dot(r2.xyzw, r7.xyzw);
    r2.y = dot(r3.xyzw, r7.xyzw);
    r2.z = dot(r5.xyzw, r7.xyzw);
    r0.w = r7.y + r7.z;
    r0.w = r6.w * r4.w + r0.w;
    r0.w = r6.x * r4.x + r0.w;
    r1.w = cmp(0 < r0.w);
    r3.xyz = r2.xyz / r0.www;
    r2.xyz = r1.www ? r3.xyz : r2.xyz;
    r0.w = postFxConst00.x * r1.z;
    r0.w = saturate(r0.w);
    r1.w = saturate(r1.z * postFxConst00.y + postFxConst00.z);
    r2.w = 1 + -r0.w;
    r0.w = 0.25 * r0.w;
    r3.xy = v1.xy + v0.xy;
    r4.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r3.xy, 0).xyz;
    r5.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r3.xy, 0, int2(1, 0)).xyz;
    r4.xyz = r5.xyz + r4.xyz;
    r5.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r3.xy, 0, int2(1, 1)).xyz;
    r4.xyz = r5.xyz + r4.xyz;
    r3.xyz = codeTexture0.SampleLevel(bilinearClamp_s, r3.xy, 0, int2(0, 1)).xyz;
    r3.xyz = r4.xyz + r3.xyz;
    r3.xyz = r3.xyz * r0.www;
    r3.xyz = r0.xyz * r2.www + r3.xyz;
    r0.w = 1 + -r1.w;
    r3.xyz = r3.xyz * r0.www;
    r0.xyz = r2.xyz * r1.www + r3.xyz;
  }
  r0.x = dot(r0.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r0.y = cmp(0 < r1.z);
  r0.y = r0.y ? 1.000000 : 0;
  r1.xy = float2(-0,-1);
  r1.xyz = float3(1,0,-0) + r1.xyz;
  r0.yzw = r0.yyy * r1.xyz + float3(0,1,0);
  r0.xyz = r0.xxx * r0.yzw;
  r1.xy = v0.xy * postFxControl6.xy + postFxControl6.zw;
  r0.w = dot(r1.xy, r1.xy);
  r1.x = r0.w * r0.w;
  r1.x = -r1.x * postFxControl7.x + 1;
  r0.xyz = r1.xxx * r0.xyz;
  r0.w = sqrt(r0.w);
  r0.w = cmp(0.5 < r0.w);
  r0.w = r0.w ? 0.75 : 1;
  o0.xyz = r0.xyz * r0.www;
  return;
}