// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:19 2021

cbuffer _Globals : register(b0)
{
  float shadowMaskAmount : packoffset(c0);
  float2 shadowMaskScale : packoffset(c0.y);
  float chromaticAberration : packoffset(c0.w);
  float2 ghostImageOffset : packoffset(c1);
  float ghostImageAmount : packoffset(c1.z);
  float3 ghostImageTint : packoffset(c2);
  float4 flagParams : packoffset(c3);
  float4 colorObjMin : packoffset(c4);
  float4 colorObjMax : packoffset(c5);
  float colorObjMinBaseBlend : packoffset(c6);
  float colorObjMaxBaseBlend : packoffset(c6.y);
  float2 uvScroll : packoffset(c6.z);
  float4 detailScale : packoffset(c7);
  float4 detailScale1 : packoffset(c8);
  float4 detailScale2 : packoffset(c9);
  float4 detailScale3 : packoffset(c10);
  float4 alphaRevealParms : packoffset(c11);
  float4 colorDetailScale : packoffset(c12);
}

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

SamplerState samp0_s : register(s0);
SamplerState bilinearClamp_s : register(s1);
Texture2D<float4> colorMapSampler : register(t0);
Texture2D<float4> hudTexture : register(t6);
Texture2D<float4> shadowMaskTexture : register(t7);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_TARGET0)
{
  const float4 icb[] = { { 0.001342, 0, 0, 0},
                              { 0.004077, 0, 0, 0},
                              { 0.007940, 0, 0, 0},
                              { 0.009916, 0, 0, 0},
                              { 0.007940, 0, 0, 0},
                              { 0.004077, 0, 0, 0},
                              { 0.001342, 0, 0, 0},
                              { 0.004077, 0, 0, 0},
                              { 0.012383, 0, 0, 0},
                              { 0.024120, 0, 0, 0},
                              { 0.030122, 0, 0, 0},
                              { 0.024120, 0, 0, 0},
                              { 0.012383, 0, 0, 0},
                              { 0.004077, 0, 0, 0},
                              { 0.007940, 0, 0, 0},
                              { 0.024120, 0, 0, 0},
                              { 0.046979, 0, 0, 0},
                              { 0.058669, 0, 0, 0},
                              { 0.046979, 0, 0, 0},
                              { 0.024120, 0, 0, 0},
                              { 0.007940, 0, 0, 0},
                              { 0.009916, 0, 0, 0},
                              { 0.030122, 0, 0, 0},
                              { 0.058669, 0, 0, 0},
                              { 0.073269, 0, 0, 0},
                              { 0.058669, 0, 0, 0},
                              { 0.030122, 0, 0, 0},
                              { 0.009916, 0, 0, 0},
                              { 0.007940, 0, 0, 0},
                              { 0.024120, 0, 0, 0},
                              { 0.046979, 0, 0, 0},
                              { 0.058669, 0, 0, 0},
                              { 0.046979, 0, 0, 0},
                              { 0.024120, 0, 0, 0},
                              { 0.007940, 0, 0, 0},
                              { 0.004077, 0, 0, 0},
                              { 0.012383, 0, 0, 0},
                              { 0.024120, 0, 0, 0},
                              { 0.030122, 0, 0, 0},
                              { 0.024120, 0, 0, 0},
                              { 0.012383, 0, 0, 0},
                              { 0.004077, 0, 0, 0},
                              { 0.001342, 0, 0, 0},
                              { 0.004077, 0, 0, 0},
                              { 0.007940, 0, 0, 0},
                              { 0.009916, 0, 0, 0},
                              { 0.007940, 0, 0, 0},
                              { 0.004077, 0, 0, 0},
                              { 0.001342, 0, 0, 0} };
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xz = chromaticAberration;
  r0.y = 0;
  r1.xy = float2(-0.5,-0.5) + v1.xy;
  r1.zw = r1.xy * r1.xy;
  r0.w = r1.z + r1.w;
  r1.z = sqrt(r0.w);
  r1.z = postFxControl0.z * r1.z;
  r0.xyz = r0.xyz * float3(0.150000006,1.5,-0.150000006) + r1.zzz;
  r0.xyz = r0.www * r0.xyz + float3(1,1,1);
  r0.xyz = postFxControl1.zzz * r0.xyz;
  r2.xyz = r0.xyz * r1.xxx + float3(0.5,0.5,0.5);
  r0.xyz = r0.xzy * r1.yyy + float3(0.5,0.5,0.5);
  r2.w = r0.x;
  r1.x = hudTexture.Sample(bilinearClamp_s, r2.xw).x;
  r0.xw = r2.zy;
  r1.y = hudTexture.Sample(bilinearClamp_s, r0.wz).y;
  r1.z = hudTexture.Sample(bilinearClamp_s, r0.xy).z;
  r0.xyzw = colorMapSampler.Sample(samp0_s, v1.xy).xyzw;
  r2.xy = shadowMaskScale.xy * v1.xy;
  r2.xy = float2(5,5) * r2.xy;
  r2.xy = frac(r2.xy);
  r2.xyzw = shadowMaskTexture.Sample(bilinearClamp_s, r2.xy).xyzw;
  r3.xy = float2(0.00156250002,0.00277777785) * ghostImageOffset.xy;
  r3.z = cmp(0.5 < v1.x);
  r4.x = r3.z ? -r3.x : r3.x;
  r3.x = cmp(v1.y < 0.5);
  r4.y = r3.x ? -r3.y : r3.y;
  r3.xyzw = float4(0,0,0,0);
  r4.zw = float2(0,-3);
  while (true) {
    r5.x = cmp(3 < r4.w);
    if (r5.x != 0) break;
    r5.y = 0.00277777785 * r4.w;
    r6.xyzw = r3.xyzw;
    r5.z = r4.z;
    r5.w = -3;
    while (true) {
      r7.x = cmp(3 < r5.w);
      if (r7.x != 0) break;
      r5.x = 0.00156250002 * r5.w;
      r7.xy = v1.xy + r5.xy;
      r7.xy = r7.xy + r4.xy;
      r7.xyzw = hudTexture.Sample(bilinearClamp_s, r7.xy).xyzw;
      r6.xyzw = icb[r5.z+0].xxxx * r7.xyzw + r6.xyzw;
      r5.z = (int)r5.z + 1;
      r5.w = 1 + r5.w;
    }
    r3.xyzw = r6.xyzw;
    r4.z = r5.z;
    r4.w = 1 + r4.w;
  }
  r3.xyzw = ghostImageAmount * r3.xyzw;
  r3.xyz = ghostImageTint.xyz * r3.xyz;
  r1.w = 255;
  r3.xyzw = float4(9.99999975e-06,9.99999975e-06,9.99999975e-06,9.99999975e-06) * r3.xyzw;
  r1.xyzw = r1.xyzw * float4(255,255,255,1) + r3.xyzw;
  r2.xyzw = shadowMaskAmount * r2.xyzw + float4(1,1,1,1);
  r1.xyzw = r2.xyzw * float4(9.99999975e-05,9.99999975e-05,9.99999975e-05,9.99999975e-05) + r1.xyzw;
  r2.x = dot(float3(0.349999994,0.5,0.150000006), r1.xyz);
  r2.y = dot(r0.xyz, float3(0.349999994,0.5,0.150000006));
  r2.z = postFxControl0.x * r2.x;
  r2.x = r2.y + r2.x;
  r2.x = saturate(r2.z / r2.x);
  r3.xyzw = r1.xyzw + -r0.xyzw;
  r0.xyzw = r2.xxxx * r3.xyzw + r0.xyzw;
  o0.xyzw = postFxControl0.yyyy * r1.xyzw + r0.xyzw;
  return;
}