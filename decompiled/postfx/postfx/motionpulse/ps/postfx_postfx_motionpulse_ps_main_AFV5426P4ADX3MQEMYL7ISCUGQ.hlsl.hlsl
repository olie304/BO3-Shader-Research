// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:17 2021

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

SamplerState samp0_s : register(s0);
Texture2D<float4> floatZSampler : register(t0);
Texture2D<float4> codeTexture0 : register(t6);
Texture2D<float4> codeTexture1 : register(t7);
Texture2D<float4> codeTexture2 : register(t9);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = renderTargetSize.xy * v1.xy;
  r0.xy = (int2)r0.xy;
  r0.zw = float2(0,0);
  r0.x = floatZSampler.Load(r0.xyz).x;
  r0.y = cmp(r0.x >= 0.984375);
  r0.z = 1.01587307 * r0.x;
  r0.x = r0.x * 64 + -63;
  r0.x = r0.y ? r0.x : r0.z;
  r0.x = max(9.99999994e-09, r0.x);
  r0.y = rcp(r0.x);
  r0.z = -0.5 + v1.x;
  r0.z = r0.z * r0.y;
  r0.x = 1.69885421 * r0.z;
  r0.x = dot(r0.xy, r0.xy);
  r0.x = sqrt(r0.x);
  r0.x = postFxControl1.x + -r0.x;
  r0.x = saturate(postFxControl1.y * r0.x);
  r0.z = codeTexture2.Sample(samp0_s, v1.xy).x;
  r1.xz = float2(0,0);
  r1.yw = float2(-0.00138888892,0.00138888892) * postFxControl0.ww;
  r1.xyzw = v1.xyxy + r1.xyzw;
  r0.w = codeTexture2.Sample(samp0_s, r1.zw).x;
  r2.xz = float2(-0.000781250012,0.000781250012) * postFxControl0.ww;
  r2.yw = float2(0,0);
  r2.xyzw = v1.xyxy + r2.xyzw;
  r3.x = codeTexture2.Sample(samp0_s, r2.xy).x;
  r0.w = max(r3.x, r0.w);
  r3.x = codeTexture2.Sample(samp0_s, r2.zw).x;
  r0.w = max(r3.x, r0.w);
  r3.x = codeTexture2.Sample(samp0_s, r1.xy).x;
  r3.y = max(r3.x, r0.w);
  r4.xyzw = codeTexture1.Sample(samp0_s, v1.xy).xyzw;
  r0.w = dot(r4.xyz, float3(1,1,1));
  r3.z = cmp(0 != r4.w);
  r3.z = ~(int)r3.z;
  r0.w = cmp(r0.w == 0.000000);
  r4.xyz = codeTexture1.Sample(samp0_s, r1.zw).xyz;
  r1.xyz = codeTexture1.Sample(samp0_s, r1.xy).xyz;
  r1.w = dot(r4.xyz, float3(1,1,1));
  r4.xyz = r1.xyz + r4.xyz;
  r1.x = dot(r1.xyz, float3(1,1,1));
  r5.xyz = codeTexture1.Sample(samp0_s, r2.xy).xyz;
  r2.xyz = codeTexture1.Sample(samp0_s, r2.zw).xyz;
  r1.y = dot(r5.xyz, float3(1,1,1));
  r4.xyz = r5.xyz + r4.xyz;
  r4.xyz = r4.xyz + r2.xyz;
  r1.z = dot(r2.xyz, float3(1,1,1));
  r2.xyz = float3(0.25,0.25,0.25) * r4.xyz;
  r1.y = max(r1.w, r1.y);
  r1.y = max(r1.y, r1.z);
  r3.x = max(r1.y, r1.x);
  r0.y = 0;
  r0.yz = r0.ww ? r3.xy : r0.yz;
  r0.yw = cmp(float2(0,0) < r0.yz);
  r1.xyz = postFxControl0.zzz * r2.xyz;
  r2.xyz = postFxControl0.yyy * r2.xyz;
  r1.xyz = r0.yyy ? r1.xyz : 0;
  r0.y = floatZSampler.Sample(samp0_s, v1.xy).x;
  r0.z = cmp(r0.z < r0.y);
  r0.y = cmp(0.899999976 < r0.y);
  r0.z = r0.z ? r0.w : 0;
  r0.w = r3.z ? r0.y : 0;
  r0.z = (int)r0.w | (int)r0.z;
  r1.xyz = r0.zzz ? float3(0,0,0) : r1.xyz;
  r3.xy = float2(1710,1970) * v1.xy;
  r3.xy = cos(r3.xy);
  r3.xy = r3.xy * float2(0.5,0.5) + float2(0.5,0.5);
  r2.xyz = r3.xxx * r2.xyz;
  r2.xyz = r2.xyz * r3.yyy;
  r2.xyz = r0.zzz ? float3(0,0,0) : r2.xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r0.z = max(r1.x, r1.y);
  r1.w = max(r0.z, r1.z);
  r0.x = r1.w * r0.x;
  r0.z = gameTime.w + -postFxControl2.z;
  r0.z = r0.z / postFxControl2.w;
  r0.z = 1 + -r0.z;
  r0.z = r0.x * r0.z;
  r2.xyzw = codeTexture0.Sample(samp0_s, v1.xy).xyzw;
  r3.xyz = float3(3.05175781e-05,3.05175781e-05,3.05175781e-05) * r2.xyz;
  r0.w = dot(r3.xyz, float3(0.349999994,0.5,0.150000006));
  r3.xyzw = -r2.xyzw * float4(3.05175781e-05,3.05175781e-05,3.05175781e-05,1) + r0.wwww;
  r2.xyzw = float4(3.05175781e-05,3.05175781e-05,3.05175781e-05,1) * r2.xyzw;
  r2.xyzw = postFxControl0.xxxx * r3.xyzw + r2.xyzw;
  r1.xyzw = -r2.xyzw + r1.xyzw;
  r3.xyzw = r0.zzzz * r1.xyzw + r2.xyzw;
  r1.xyzw = r0.xxxx * r1.xyzw + r2.xyzw;
  r0.xz = cmp(postFxControl2.wy != float2(0,0));
  r1.xyzw = r0.zzzz ? r1.xyzw : r2.xyzw;
  r0.x = r0.x ? r0.y : 0;
  r0.xyzw = r0.xxxx ? r3.xyzw : r1.xyzw;
  o0.xyzw = float4(32768,32768,32768,1) * r0.xyzw;
  return;
}