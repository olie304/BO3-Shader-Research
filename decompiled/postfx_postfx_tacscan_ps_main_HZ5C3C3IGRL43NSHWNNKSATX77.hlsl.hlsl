// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:18 2021

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
SamplerState samplerBilinearWrap_s : register(s2);
Texture2D<float4> floatZSampler : register(t0);
Texture2D<float4> codeTexture0 : register(t6);
Texture2D<float4> codeTexture1 : register(t7);
Texture2D<float4> codeTexture2 : register(t9);
Texture2D<float4> gridTexture : register(t10);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = codeTexture0.Sample(samp0_s, v1.xy).xyz;
  r0.w = codeTexture2.Sample(samp0_s, v1.xy).x;
  r1.x = floatZSampler.Sample(samp0_s, v1.xy).x;
  r1.yzw = codeTexture1.Sample(samp0_s, v1.xy).xyz;
  r2.xy = renderTargetSize.xy * v1.xy;
  r2.xy = (int2)r2.xy;
  r2.zw = float2(0,0);
  r2.x = codeTexture2.Load(r2.xyz).x;
  r2.x = max(9.99999994e-09, r2.x);
  r2.y = zNear.x / r2.x;
  r3.xy = v1.xy * r2.yy;
  r3.xy = r3.xy / postFxControlF.xx;
  r2.w = gridTexture.Sample(samplerBilinearWrap_s, r3.xy).x;
  r3.xyz = float3(1,0.25,1) * r1.yyw;
  r3.xyz = r3.xyz * r2.www;
  r4.xy = float2(-0.5,-0.5) + v1.xy;
  r2.w = r4.x * r2.y;
  r2.z = postFxControlF.z * r2.w;
  r2.w = -r4.y * r2.y;
  r2.x = postFxControlF.w * r2.w;
  r4.x = renderTargetSize.z;
  r4.yz = float2(0,0);
  r4.xy = v1.xy + r4.xy;
  r5.xy = renderTargetSize.xy * r4.xy;
  r5.xy = (int2)r5.xy;
  r5.zw = float2(0,0);
  r2.w = codeTexture2.Load(r5.xyz).x;
  r2.w = max(9.99999994e-09, r2.w);
  r5.x = zNear.x / r2.w;
  r2.w = -0.5 + r4.x;
  r2.w = r2.w * r2.y;
  r5.y = postFxControlF.z * r2.w;
  r4.w = -renderTargetSize.w;
  r4.xy = v1.xy + r4.zw;
  r4.xz = renderTargetSize.xy * r4.xy;
  r6.xy = (int2)r4.xz;
  r6.zw = float2(0,0);
  r2.w = codeTexture2.Load(r6.xyz).x;
  r2.w = max(9.99999994e-09, r2.w);
  r6.y = zNear.x / r2.w;
  r2.w = -0.5 + r4.y;
  r2.w = -r2.w * r2.y;
  r6.x = postFxControlF.w * r2.w;
  r2.w = cmp(r2.y == 0.000000);
  r3.w = cmp(r5.x == 0.000000);
  r2.w = (int)r2.w | (int)r3.w;
  r3.w = cmp(r6.y == 0.000000);
  r2.w = (int)r2.w | (int)r3.w;
  r3.w = -r5.x + r2.y;
  r3.w = cmp(100 < abs(r3.w));
  r2.w = (int)r2.w | (int)r3.w;
  r3.w = -r6.y + r2.y;
  r3.w = cmp(100 < abs(r3.w));
  r2.w = (int)r2.w | (int)r3.w;
  r2.w = r2.w ? 0 : 1;
  r5.z = r2.x;
  r4.xyz = r5.xyz + -r2.yzx;
  r6.z = r2.z;
  r2.xyz = r6.xyz + -r2.xyz;
  r5.xyz = r4.xyz * r2.xyz;
  r2.xyz = r4.zxy * r2.yzx + -r5.xyz;
  r3.w = dot(r2.xyz, r2.xyz);
  r3.w = sqrt(r3.w);
  r2.xyz = r2.xyz / r3.www;
  r2.xyz = r2.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r2.xyz = r2.xyz * r2.www;
  r4.xz = float2(0,0);
  r4.yw = float2(-2,2) * renderTargetSize.ww;
  r4.xyzw = v1.xyxy + r4.xyzw;
  r5.xyz = codeTexture1.Sample(samp0_s, r4.xy).xyz;
  r6.xyz = codeTexture1.Sample(samp0_s, r4.zw).xyz;
  r7.xz = float2(-2,2) * renderTargetSize.zz;
  r7.yw = float2(0,0);
  r7.xyzw = v1.xyxy + r7.xyzw;
  r8.xyz = codeTexture1.Sample(samp0_s, r7.xy).xyz;
  r9.xyz = codeTexture1.Sample(samp0_s, r7.zw).xyz;
  r5.xyz = r6.xyz + r5.xyz;
  r5.xyz = r5.xyz + r8.xyz;
  r5.xyz = r5.xyz + r9.xyz;
  r5.xyz = float3(0.25,0.25,0.25) * r5.xyz;
  r2.w = cmp(0 != r5.z);
  r1.z = max(r1.z, r1.w);
  r1.z = max(r1.y, r1.z);
  r1.z = cmp(0 < r1.z);
  r5.xyz = r1.zzz ? float3(0,0,0) : r5.xyz;
  r5.x = dot(r5.xyz, float3(1,1,1));
  r1.z = cmp(0 < r5.x);
  r1.w = codeTexture2.Sample(samp0_s, r4.xy).x;
  r3.w = codeTexture2.Sample(samp0_s, r4.zw).x;
  r4.x = codeTexture2.Sample(samp0_s, r7.xy).x;
  r4.y = codeTexture2.Sample(samp0_s, r7.zw).x;
  if (r1.z != 0) {
    r1.y = cmp(r1.y == 0.000000);
    if (r1.y != 0) {
      r1.y = max(r4.x, r4.y);
      r1.y = max(r3.w, r1.y);
      r0.w = max(r1.y, r1.w);
    }
  }
  r0.w = 9.99999975e-05 + r0.w;
  r1.y = cmp(r1.x < r0.w);
  r1.z = (int)r1.y | (int)r2.w;
  r4.xyz = r1.zzz ? float3(0,0,0) : r3.xyz;
  r5.y = 0;
  r1.yzw = r1.yyy ? float3(0,0,0) : r5.yxx;
  r0.w = cmp(r0.w < r1.x);
  r3.w = (int)r0.w | (int)r2.w;
  r3.xyz = r3.www ? float3(0,0,0) : r3.xyz;
  r5.xyz = r0.www ? float3(0,0,0) : r5.yxx;
  r3.xyz = r2.www ? r3.xyz : r4.xyz;
  r1.yzw = r2.www ? r5.xyz : r1.yzw;
  r0.w = cmp(0.899999976 < r1.x);
  r3.xyz = r0.www ? float3(0,0,0) : r3.xyz;
  r1.xyz = r0.www ? float3(0,0,0) : r1.yzw;
  r4.z = gameTime.w;
  r4.w = v1.y;
  r0.w = dot(r4.zw, float2(37.3498383,59.3948402));
  r4.x = frac(r0.w);
  r0.w = dot(r4.xzw, float3(81.2394867,37.3498383,59.3948402));
  r4.y = frac(r0.w);
  r0.w = dot(r4.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r4.z = frac(r0.w);
  r0.w = dot(r4.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r4.w = frac(r0.w);
  r0.w = dot(r4.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r0.w = frac(r0.w);
  r0.w = frac(r0.w);
  r2.xyz = r3.xyz * r2.xyz;
  r1.xyz = r1.xyz * r0.www;
  r1.xyz = r2.xyz * r0.www + r1.xyz;
  r0.xyz = r0.xyz * float3(3.05175781e-05,3.05175781e-05,3.05175781e-05) + r1.xyz;
  o0.xyz = float3(32768,32768,32768) * r0.xyz;
  o0.w = 1;
  return;
}