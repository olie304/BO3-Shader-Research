// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:47 2021

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

Texture2D<float4> codeTexture0 : register(t0);


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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_structured g0, 4, 64
// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_structured g1, 4, 64
// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = (uint2)vThreadID.xy << int2(1,1);
  r0.zw = float2(0,0);
  r1.xyz = codeTexture0.Load(r0.xyz).xyz;
  r2.xyzw = (int4)r0.xyxy + int4(-2,0,2,0);
  r3.xy = r2.zw;
  r3.zw = float2(0,0);
  r3.xyz = codeTexture0.Load(r3.xyz).xyz;
  r2.zw = float2(0,0);
  r2.xyz = codeTexture0.Load(r2.xyz).xyz;
  r4.xyzw = (int4)r0.xyxy + int4(0,-2,0,2);
  r5.xy = r4.zw;
  r5.zw = float2(0,0);
  r5.xyz = codeTexture0.Load(r5.xyz).xyz;
  r4.zw = float2(0,0);
  r4.xyz = codeTexture0.Load(r4.xyz).xyz;
  r6.xyzw = (int4)r0.xyxy + int4(-2,-2,2,-2);
  r7.xy = r6.zw;
  r7.zw = float2(0,0);
  r7.xyz = codeTexture0.Load(r7.xyz).xyz;
  r6.zw = float2(0,0);
  r6.xyz = codeTexture0.Load(r6.xyz).xyz;
  r8.xyzw = (int4)r0.xyxy + int4(2,2,-2,2);
  r9.xy = r8.zw;
  r9.zw = float2(0,0);
  r9.xyz = codeTexture0.Load(r9.xyz).xyz;
  r8.zw = float2(0,0);
  r8.xyz = codeTexture0.Load(r8.xyz).xyz;
  r10.xyzw = (int4)r0.xyxy + int4(-1,-1,1,-1);
  r11.xy = r10.zw;
  r11.zw = float2(0,0);
  r11.xyz = codeTexture0.Load(r11.xyz).xyz;
  r10.zw = float2(0,0);
  r10.xyz = codeTexture0.Load(r10.xyz).xyz;
  r0.xy = (int2)r0.xy + int2(-1,1);
  r0.zw = float2(0,0);
  r0.xyz = codeTexture0.Load(r0.xyz).xyz;
  r12.xy = mad((int2)vThreadID.xy, int2(2,2), int2(1,1));
  r12.zw = float2(0,0);
  r12.xyz = codeTexture0.Load(r12.xyz).xyz;
  r0.w = dot(r1.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r0.w = 1 + r0.w;
  r0.w = 1 / r0.w;
  r1.w = dot(r3.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r1.w = 1 + r1.w;
  r1.w = 1 / r1.w;
  r2.w = dot(r2.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r2.w = 1 + r2.w;
  r2.w = 1 / r2.w;
  r3.w = dot(r5.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r3.w = 1 + r3.w;
  r3.w = 1 / r3.w;
  r4.w = dot(r4.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r4.w = 1 + r4.w;
  r4.w = 1 / r4.w;
  r5.w = dot(r7.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r5.w = 1 + r5.w;
  r5.w = 1 / r5.w;
  r6.w = dot(r6.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r6.w = 1 + r6.w;
  r6.w = 1 / r6.w;
  r7.w = dot(r9.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r7.w = 1 + r7.w;
  r7.w = 1 / r7.w;
  r8.w = dot(r8.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r8.w = 1 + r8.w;
  r8.w = 1 / r8.w;
  r9.w = dot(r11.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r9.w = 1 + r9.w;
  r9.w = 1 / r9.w;
  r10.w = dot(r10.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r10.w = 1 + r10.w;
  r10.w = 1 / r10.w;
  r11.w = dot(r0.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r11.w = 1 + r11.w;
  r11.w = 1 / r11.w;
  r12.w = dot(r12.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r12.w = 1 + r12.w;
  r12.w = 1 / r12.w;
  r13.xyz = r1.xyz * r0.www;
  r14.xyz = r2.xyz * r2.www;
  r1.xyz = r1.xyz * r0.www + r14.xyz;
  r1.xyz = r6.xyz * r6.www + r1.xyz;
  r1.xyz = r4.xyz * r4.www + r1.xyz;
  r6.x = r2.w + r0.w;
  r6.x = r6.x + r6.w;
  r6.x = r6.x + r4.w;
  r1.xyz = r1.xyz / r6.xxx;
  r4.xyz = r4.xyz * r4.www + r13.xyz;
  r4.xyz = r7.xyz * r5.www + r4.xyz;
  r4.xyz = r3.xyz * r1.www + r4.xyz;
  r4.w = r4.w + r0.w;
  r4.w = r4.w + r5.w;
  r4.w = r4.w + r1.w;
  r4.xyz = r4.xyz / r4.www;
  r4.xyz = float3(0.125,0.125,0.125) * r4.xyz;
  r1.xyz = r1.xyz * float3(0.125,0.125,0.125) + r4.xyz;
  r3.xyz = r3.xyz * r1.www + r13.xyz;
  r3.xyz = r8.xyz * r8.www + r3.xyz;
  r3.xyz = r5.xyz * r3.www + r3.xyz;
  r1.w = r1.w + r0.w;
  r1.w = r1.w + r8.w;
  r1.w = r1.w + r3.w;
  r3.xyz = r3.xyz / r1.www;
  r1.xyz = r3.xyz * float3(0.125,0.125,0.125) + r1.xyz;
  r3.xyz = r5.xyz * r3.www + r13.xyz;
  r3.xyz = r9.xyz * r7.www + r3.xyz;
  r2.xyz = r2.xyz * r2.www + r3.xyz;
  r0.w = r3.w + r0.w;
  r0.w = r0.w + r7.w;
  r0.w = r0.w + r2.w;
  r2.xyz = r2.xyz / r0.www;
  r1.xyz = r2.xyz * float3(0.125,0.125,0.125) + r1.xyz;
  r2.xyz = r10.xyz * r10.www;
  r2.xyz = r11.xyz * r9.www + r2.xyz;
  r0.xyz = r0.xyz * r11.www + r2.xyz;
  r0.xyz = r12.xyz * r12.www + r0.xyz;
  r0.w = r10.w + r9.w;
  r0.w = r0.w + r11.w;
  r0.w = r0.w + r12.w;
  r0.xyz = r0.xyz / r0.www;
  r0.xyz = r0.xyz * float3(0.5,0.5,0.5) + r1.xyz;
  r1.xy = (uint2)vThreadID.xy;
  r1.xy = cmp(r1.xy < renderTargetSize.xy);
  r0.w = r1.y ? r1.x : 0;
  if (r0.w != 0) {
    r1.x = dot(r0.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r1.x = max(0.00100000005, r1.x);
    r1.x = log2(r1.x);
    r1.x = 0.693147182 * r1.x;
    r1.y = 1;
  } else {
    r1.xy = float2(0,0);
  }
  codeTexture0[vThreadIDInGroupFlattened.x].0 = g1.x;
  codeTexture0[vThreadIDInGroupFlattened.x].0 = g0.x;
  GroupMemoryBarrierWithGroupSync();
  r1.xyzw = cmp((uint4)vThreadIDInGroupFlattened.xxxx < int4(32,16,8,4));
  if (r1.x != 0) {
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.x, vThreadIDInGroupFlattened.x, l(0), g1.xxxx
  r1.x = codeTexture0[]..swiz;
    r2.x = (int)vThreadIDInGroupFlattened.x + 32;
  // Known bad code for instruction (needs manual fix):
    ld_structured r2.y, r2.x, l(0), g1.xxxx
  r2.y = codeTexture0[]..swiz;
    r1.x = r2.y + r1.x;
    codeTexture0[vThreadIDInGroupFlattened.x].0 = g1.x;
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.x, vThreadIDInGroupFlattened.x, l(0), g0.xxxx
  r1.x = codeTexture0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r2.x, r2.x, l(0), g0.xxxx
  r2.x = codeTexture0[]..swiz;
    r1.x = r2.x + r1.x;
    codeTexture0[vThreadIDInGroupFlattened.x].0 = g0.x;
  }
  GroupMemoryBarrierWithGroupSync();
  if (r1.y != 0) {
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.x, vThreadIDInGroupFlattened.x, l(0), g1.xxxx
  r1.x = codeTexture0[]..swiz;
    r1.y = (int)vThreadIDInGroupFlattened.x + 16;
  // Known bad code for instruction (needs manual fix):
    ld_structured r2.x, r1.y, l(0), g1.xxxx
  r2.x = codeTexture0[]..swiz;
    r1.x = r2.x + r1.x;
    codeTexture0[vThreadIDInGroupFlattened.x].0 = g1.x;
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.x, vThreadIDInGroupFlattened.x, l(0), g0.xxxx
  r1.x = codeTexture0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.y, r1.y, l(0), g0.xxxx
  r1.y = codeTexture0[]..swiz;
    r1.x = r1.x + r1.y;
    codeTexture0[vThreadIDInGroupFlattened.x].0 = g0.x;
  }
  GroupMemoryBarrierWithGroupSync();
  if (r1.z != 0) {
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.x, vThreadIDInGroupFlattened.x, l(0), g1.xxxx
  r1.x = codeTexture0[]..swiz;
    r1.y = (int)vThreadIDInGroupFlattened.x + 8;
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.z, r1.y, l(0), g1.xxxx
  r1.z = codeTexture0[]..swiz;
    r1.x = r1.x + r1.z;
    codeTexture0[vThreadIDInGroupFlattened.x].0 = g1.x;
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.x, vThreadIDInGroupFlattened.x, l(0), g0.xxxx
  r1.x = codeTexture0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.y, r1.y, l(0), g0.xxxx
  r1.y = codeTexture0[]..swiz;
    r1.x = r1.x + r1.y;
    codeTexture0[vThreadIDInGroupFlattened.x].0 = g0.x;
  }
  GroupMemoryBarrierWithGroupSync();
  if (r1.w != 0) {
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.x, vThreadIDInGroupFlattened.x, l(0), g1.xxxx
  r1.x = codeTexture0[]..swiz;
    r1.y = (int)vThreadIDInGroupFlattened.x + 4;
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.z, r1.y, l(0), g1.xxxx
  r1.z = codeTexture0[]..swiz;
    r1.x = r1.x + r1.z;
    codeTexture0[vThreadIDInGroupFlattened.x].0 = g1.x;
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.x, vThreadIDInGroupFlattened.x, l(0), g0.xxxx
  r1.x = codeTexture0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.y, r1.y, l(0), g0.xxxx
  r1.y = codeTexture0[]..swiz;
    r1.x = r1.x + r1.y;
    codeTexture0[vThreadIDInGroupFlattened.x].0 = g0.x;
  }
  GroupMemoryBarrierWithGroupSync();
  r1.xy = cmp((uint2)vThreadIDInGroupFlattened.xx < int2(2,1));
  if (r1.x != 0) {
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.x, vThreadIDInGroupFlattened.x, l(0), g1.xxxx
  r1.x = codeTexture0[]..swiz;
    r1.z = (int)vThreadIDInGroupFlattened.x + 2;
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.w, r1.z, l(0), g1.xxxx
  r1.w = codeTexture0[]..swiz;
    r1.x = r1.x + r1.w;
    codeTexture0[vThreadIDInGroupFlattened.x].0 = g1.x;
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.x, vThreadIDInGroupFlattened.x, l(0), g0.xxxx
  r1.x = codeTexture0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.z, r1.z, l(0), g0.xxxx
  r1.z = codeTexture0[]..swiz;
    r1.x = r1.x + r1.z;
    codeTexture0[vThreadIDInGroupFlattened.x].0 = g0.x;
  }
  GroupMemoryBarrierWithGroupSync();
  if (r1.y != 0) {
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.x, l(0), l(0), g1.xxxx
  r1.x = codeTexture0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.y, l(1), l(0), g1.xxxx
  r1.y = codeTexture0[]..swiz;
    r1.x = r1.x + r1.y;
    codeTexture0[0].0 = g1.x;
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.x, l(0), l(0), g0.xxxx
  r1.x = codeTexture0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.y, l(1), l(0), g0.xxxx
  r1.y = codeTexture0[]..swiz;
    r1.x = r1.x + r1.y;
    codeTexture0[0].0 = g0.x;
  }
  GroupMemoryBarrierWithGroupSync();
  if (vThreadIDInGroupFlattened.x == 0) {
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.x, l(0), l(0), g0.xxxx
  r1.x = codeTexture0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.y, l(0), l(0), g1.xxxx
  r1.y = codeTexture0[]..swiz;
    r1.y = max(1, r1.y);
    r1.x = r1.x / r1.y;
    r1.x = 1.44269502 * r1.x;
    r1.x = exp2(r1.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, vThreadGroupID.xyyy, r1.xxxx
  }
  if (r0.w != 0) {
    r1.xyz = postFxConst00.xxx * r0.xyz;
    r1.w = dot(r0.xyz, postFxConst00.yzw);
    r0.xyzw = float4(5.55555534,5.55555534,5.55555534,5.55555534) * r1.xyzw;
    r0.xyzw = log2(r0.xyzw);
    r1.xyzw = cmp(r0.xyzw < float4(0,0,0,0));
    r2.xyzw = postFxConst01.xxxy * r0.xyzw;
    r0.xyzw = postFxConst01.zzzw * r0.xyzw;
    r0.xyzw = r1.xyzw ? r2.xyzw : r0.xyzw;
    r0.xyzw = exp2(r0.xyzw);
    r0.xyzw = float4(0.180000007,0.180000007,0.180000007,0.180000007) * r0.xyzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, vThreadID.xyyy, r0.xyzw
  }
  return;
}