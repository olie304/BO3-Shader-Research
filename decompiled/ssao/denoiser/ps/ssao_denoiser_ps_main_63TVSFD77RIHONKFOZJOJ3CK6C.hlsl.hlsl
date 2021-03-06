// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:00 2021

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

SamplerState linearSampler_s : register(s0);
Texture2D<float4> depthTex0 : register(t0);
Texture2D<float4> depthTex2 : register(t2);
Texture2D<float4> velocityTex0 : register(t3);
Texture2D<float4> velocityTex1 : register(t4);
Texture2D<float4> aoTex : register(t5);
Texture2D<float4> aoHistoryTex2 : register(t7);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = renderTargetSize.zw * float2(-0.5,-0.5) + v1.xy;
  r1.xyzw = depthTex0.Gather(linearSampler_s, r0.xy).xyzw;
  r0.z = cmp(r1.y < 65504);
  if (r0.z != 0) {
    r0.zw = float2(0.00999999978,0.100000001) * r1.yy;
    r0.zw = rcp(r0.zw);
    r2.xyzw = renderTargetSize.zwzw * float4(-0.5,1.5,1.5,1.5) + v1.xyxy;
    r3.xyzw = depthTex0.Gather(linearSampler_s, r2.xy).xyzw;
    r4.x = r0.z * r1.y;
    r3.xyzw = r0.zzzz * r3.xyzw + -r4.xxxx;
    r5.xyzw = depthTex0.Gather(linearSampler_s, r2.zw).xyzw;
    r5.xyzw = r0.zzzz * r5.xyzw + -r4.xxxx;
    r4.yz = float2(0.5,0.5) * renderTargetSize.zw;
    r6.xyzw = renderTargetSize.zwzw * float4(1.5,-0.5,0.5,0.5) + v1.xyxy;
    r7.xyzw = depthTex0.Gather(linearSampler_s, r6.xy).xyzw;
    r7.xyzw = r0.zzzz * r7.xyzw + -r4.xxxx;
    r8.xyzw = r0.zzzz * r1.xyzw + -r4.xxxx;
    r9.xyzw = aoTex.Gather(linearSampler_s, r2.xy).zxwy;
    r1.xzw = float3(0.353553385,0.44721359,0.44721359) * r5.yxz;
    r1.xzw = r3.yxw * float3(0.5,0.44721359,0.707106769) + r1.zxw;
    r0.z = 0.707106769 * r8.w;
    r2.x = r3.x * 0.44721359 + r0.z;
    r2.y = min(abs(r2.x), abs(r1.z));
    r2.y = min(abs(r3.x), r2.y);
    r2.y = 1 + -r2.y;
    r2.y = max(0, r2.y);
    r10.xz = r9.yw;
    r10.yw = float2(1,1);
    r4.xw = r3.wy * float2(0.707106769,0.5) + r8.xz;
    r11.xy = min(abs(r4.wx), abs(r1.xw));
    r3.xy = min(r11.xy, abs(r3.yw));
    r3.xy = float2(1,1) + -r3.xy;
    r3.xy = max(float2(0,0), r3.xy);
    r3.xw = r3.xx * r10.zw;
    r3.xw = r2.yy * r10.xy + r3.xw;
    r2.y = r5.w * 0.707106769 + r3.z;
    r10.x = r8.y * inf + r3.z;
    r10.y = min(abs(r10.x), abs(r2.y));
    r3.z = min(r10.y, abs(r3.z));
    r3.z = 1 + -r3.z;
    r3.z = max(0, r3.z);
    r9.yw = float2(1,1);
    r3.xz = r3.zz * r9.xy + r3.xw;
    r3.xy = r3.yy * r9.zw + r3.xz;
    r9.xyzw = aoTex.Gather(linearSampler_s, r2.zw).zxwy;
    r10.yzw = float3(0.707106769,0.44721359,0.5) * r7.wzy;
    r10.yzw = r5.xyz * float3(0.44721359,0.353553385,0.44721359) + r10.yzw;
    r1.xzw = min(abs(r10.yzw), abs(r1.xzw));
    r1.xzw = min(abs(r5.xyz), r1.xzw);
    r1.xzw = float3(1,1,1) + -r1.xzw;
    r1.xzw = max(float3(0,0,0), r1.xzw);
    r11.xz = r9.yw;
    r11.yw = float2(1,1);
    r2.zw = r1.xx * r11.xy + r3.xy;
    r1.xz = r1.zz * r11.zw + r2.zw;
    r9.yw = float2(1,1);
    r1.xz = r1.ww * r9.xy + r1.xz;
    r1.w = r5.w * 0.707106769 + r7.x;
    r2.y = min(abs(r2.y), abs(r1.w));
    r2.y = min(abs(r5.w), r2.y);
    r2.y = 1 + -r2.y;
    r2.y = max(0, r2.y);
    r1.xz = r2.yy * r9.zw + r1.xz;
    r3.xyzw = aoTex.Gather(linearSampler_s, r6.xy).zxwy;
    r2.y = r8.y * inf + r7.x;
    r1.w = min(abs(r2.y), abs(r1.w));
    r1.w = min(abs(r7.x), r1.w);
    r1.w = 1 + -r1.w;
    r1.w = max(0, r1.w);
    r5.xz = r3.yw;
    r5.yw = float2(1,1);
    r1.xz = r1.ww * r5.xy + r1.xz;
    r2.zw = r7.yw * float2(0.5,0.707106769) + r8.xz;
    r5.xy = min(abs(r2.zw), abs(r10.wy));
    r5.xy = min(abs(r7.yw), r5.xy);
    r5.xy = float2(1,1) + -r5.xy;
    r5.xy = max(float2(0,0), r5.xy);
    r1.xz = r5.xx * r5.zw + r1.xz;
    r0.z = r7.z * 0.44721359 + r0.z;
    r1.w = min(abs(r0.z), abs(r10.z));
    r1.w = min(abs(r7.z), r1.w);
    r1.w = 1 + -r1.w;
    r1.w = max(0, r1.w);
    r3.yw = float2(1,1);
    r1.xz = r1.ww * r3.xy + r1.xz;
    r1.xz = r5.yy * r3.zw + r1.xz;
    r3.xyzw = aoTex.Gather(linearSampler_s, r0.xy).zxwy;
    r2.zw = min(abs(r2.zw), abs(r4.xw));
    r2.zw = min(abs(r8.xz), r2.zw);
    r2.zw = float2(1,1) + -r2.zw;
    r2.zw = max(float2(0,0), r2.zw);
    r5.xz = r3.yw;
    r5.yw = float2(1,1);
    r1.xz = r2.zz * r5.xy + r1.xz;
    r1.w = min(abs(r2.y), abs(r10.x));
    r1.w = min(abs(r8.y), r1.w);
    r1.w = 1 + -r1.w;
    r1.w = max(0, r1.w);
    r1.xz = r1.ww * r5.zw + r1.xz;
    r3.yw = float2(1,1);
    r1.xz = r2.ww * r3.xy + r1.xz;
    r0.z = min(abs(r0.z), abs(r2.x));
    r0.z = min(abs(r8.w), r0.z);
    r0.z = 1 + -r0.z;
    r0.z = max(0, r0.z);
    r1.xz = r0.zz * r3.zw + r1.xz;
    r0.z = r1.x / r1.z;
    r1.xz = velocityTex0.SampleLevel(linearSampler_s, v1.xy, 0).xy;
    r2.xy = float2(-0.5,-0.5) + abs(r1.xz);
    r2.xy = saturate(r2.xy + r2.xy);
    r2.zw = abs(r1.xz) + abs(r1.xz);
    r2.zw = min(float2(1,1), r2.zw);
    r2.zw = float2(10,10) * r2.zw;
    r2.xy = r2.xy * float2(30,30) + r2.zw;
    r1.xz = cmp(r1.xz >= float2(0,0));
    r1.xz = r1.xz ? r2.xy : -r2.xy;
    r2.xy = -r4.zy * r1.zx + v1.yx;
    r2.zw = velocityTex1.SampleLevel(linearSampler_s, r2.yx, 0).xy;
    r3.xy = float2(-0.5,-0.5) + abs(r2.zw);
    r3.xy = saturate(r3.xy + r3.xy);
    r3.zw = abs(r2.zw) + abs(r2.zw);
    r3.zw = min(float2(1,1), r3.zw);
    r3.zw = float2(10,10) * r3.zw;
    r3.xy = r3.xy * float2(30,30) + r3.zw;
    r2.zw = cmp(r2.zw >= float2(0,0));
    r2.zw = r2.zw ? r3.xy : -r3.xy;
    r2.xy = -r4.zy * r2.wz + r2.xy;
    r3.xyzw = aoHistoryTex2.Gather(linearSampler_s, r2.yx).xyzw;
    r2.xy = r2.xy * renderTargetSize.yx + float2(-0.498046875,-0.498046875);
    r4.xy = (int2)r2.yx;
    r5.xy = (int2)r4.yx + int2(1,1);
    r4.z = r5.x;
    r4.w = 0;
    r1.w = depthTex2.Load(r4.xzw).x;
    r5.z = 0;
    r4.z = depthTex2.Load(r5.yxz).x;
    r5.w = r4.y;
    r5.x = depthTex2.Load(r5.ywz).x;
    r4.x = depthTex2.Load(r4.xyw).x;
    r4.y = dot(r1.xz, r1.xz);
    r4.w = dot(r2.zw, r2.zw);
    r4.y = max(r4.y, r4.w);
    r4.y = (uint)r4.y >> 1;
    r4.y = (int)r4.y + 0x1fbd1df5;
    r4.w = saturate(r4.y);
    r5.y = postFxControl1.x + -postFxControl1.y;
    r4.w = r4.w * r5.y + postFxControl1.y;
    r4.y = saturate(40 + -r4.y);
    r4.y = r4.w * r4.y;
    r2.xy = frac(r2.xy);
    r5.yz = float2(1,1) + -r2.yx;
    r4.w = r2.y * r2.x;
    r2.xy = r5.yz * r2.xy;
    r5.y = r5.y * r5.z;
    r1.w = r1.y + -r1.w;
    r1.w = saturate(-r0.w * r1.w + 1);
    r3.xyzw = r3.xyzw + -r0.zzzz;
    r1.w = r1.w * r3.x + r0.z;
    r3.x = -r4.z + r1.y;
    r3.x = saturate(-r0.w * r3.x + 1);
    r3.x = r3.x * r3.y + r0.z;
    r3.x = r4.w * r3.x;
    r1.w = r2.x * r1.w + r3.x;
    r2.x = -r5.x + r1.y;
    r2.x = saturate(-r0.w * r2.x + 1);
    r2.x = r2.x * r3.z + r0.z;
    r1.w = r2.y * r2.x + r1.w;
    r1.y = -r4.x + r1.y;
    r0.w = saturate(-r0.w * r1.y + 1);
    r0.w = r0.w * r3.w + r0.z;
    r0.w = r5.y * r0.w + r1.w;
    r0.x = aoTex.SampleLevel(linearSampler_s, r0.xy, 0).x;
    r0.y = aoTex.SampleLevel(linearSampler_s, r6.zw, 0).x;
    r3.xyzw = renderTargetSize.zwzw * float4(-0.5,0.5,0.5,-0.5) + v1.xyxy;
    r1.y = aoTex.SampleLevel(linearSampler_s, r3.xy, 0).x;
    r1.w = aoTex.SampleLevel(linearSampler_s, r3.zw, 0).x;
    r2.x = min(r1.y, r1.w);
    r2.x = min(r2.x, r0.y);
    r2.x = min(r2.x, r0.x);
    r2.x = min(r2.x, r0.z);
    r1.y = max(r1.y, r1.w);
    r0.y = max(r1.y, r0.y);
    r0.x = max(r0.x, r0.y);
    r0.x = max(r0.z, r0.x);
    r1.xy = -r2.zw + r1.xz;
    r0.y = dot(r1.xy, r1.xy);
    r0.y = (uint)r0.y >> 1;
    r0.y = (int)r0.y + 0x1fbd1df5;
    r0.y = saturate(-r0.y * 0.25 + 1);
    r1.x = r0.y * -2 + 3;
    r0.y = r0.y * r0.y;
    r0.y = r1.x * r0.y;
    r1.x = r0.x + -r2.x;
    r0.y = r1.x * r0.y;
    r1.x = -r0.y * 0.5 + r2.x;
    r0.x = r0.y * 0.5 + r0.x;
    r0.y = max(r1.x, r0.w);
    r0.w = max(r0.w, r0.x);
    r0.x = max(r1.x, r0.x);
    r0.x = min(r0.w, r0.x);
    r0.x = min(r0.y, r0.x);
    r0.x = r0.x + -r0.z;
    o0.x = r4.y * r0.x + r0.z;
  } else {
    o0.x = 1;
  }
  return;
}