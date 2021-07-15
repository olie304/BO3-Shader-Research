// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:28:52 2021

cbuffer _Globals : register(b0)
{
  float4 flagParams : packoffset(c0);
  float4 colorObjMin : packoffset(c1);
  float4 colorObjMax : packoffset(c2);
  float colorObjMinBaseBlend : packoffset(c3);
  float colorObjMaxBaseBlend : packoffset(c3.y);
  float2 uvScroll : packoffset(c3.z);
  float4 detailScale : packoffset(c4);
  float4 detailScale1 : packoffset(c5);
  float4 detailScale2 : packoffset(c6);
  float4 detailScale3 : packoffset(c7);
  float4 alphaRevealParms : packoffset(c8);
  float4 colorDetailScale : packoffset(c9);
  float3 specColorTint : packoffset(c10);
  float baseNormalHeight : packoffset(c10.w);
  float2 glossRange : packoffset(c11);
  float detailScaleHeight : packoffset(c11.z);
  float detailScaleHeight1 : packoffset(c11.w);
  float detailScaleHeight2 : packoffset(c12);
  float detailScaleHeight3 : packoffset(c12.y);
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

SamplerState colorSampler_s : register(s1);
SamplerState specColorSampler_s : register(s2);
SamplerState normalSampler_s : register(s3);
SamplerState aoSampler_s : register(s4);
SamplerState detailMaskSampler_s : register(s5);
Texture2D<float4> customizeMask : register(t0);
StructuredBuffer<modelInstanceBuffer> modelInstanceBuffer : register(t4);
StructuredBuffer<shaderConstantSetBuffer> shaderConstantSetBuffer : register(t6);
Texture2D<float4> colorMap : register(t7);
Texture2D<float4> specColorMap : register(t9);
Texture2D<float4> normalMap : register(t10);
Texture2D<float4> glossMap : register(t11);
Texture2D<float4> aoMap : register(t12);
Texture2D<float4> detailNormal1 : register(t14);
Texture2D<float4> detailNormal2 : register(t15);
Texture2D<float4> detailNormal3 : register(t16);
Texture2D<float4> detailNormal4 : register(t17);
Texture2D<float4> detailNormalMask : register(t18);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float v1 : COLOR1,
  float2 w1 : TEXCOORD0,
  nointerpolation uint4 v2 : TEXCOORD4,
  float4 v3 : TEXCOORD1,
  float4 v4 : TEXCOORD2,
  float4 v5 : TEXCOORD3,
  float4 v6 : TEXCOORD7,
  uint v7 : SV_IsFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2,
  out float2 o3 : SV_TARGET3)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t4, 24
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t6, 384
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.x, v2.x, l(4), t4.xxxx
r0.x = colorSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r1.xyzw, r0.x, l(256), t6.xyzw
r1.x = colorSampler[]..swiz;
r1.y = colorSampler[]..swiz;
r1.z = colorSampler[]..swiz;
r1.w = colorSampler[]..swiz;
  r0.y = cmp(0 < r1.w);
  if (r0.y != 0) {
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.yzw, r0.x, l(288), t6.xxyz
  r0.y = colorSampler[]..swiz;
  r0.z = colorSampler[]..swiz;
  r0.w = colorSampler[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r2.xyz, r0.x, l(320), t6.xyzx
  r2.x = colorSampler[]..swiz;
  r2.y = colorSampler[]..swiz;
  r2.z = colorSampler[]..swiz;
    r3.xyz = customizeMask.Sample(colorSampler_s, w1.xy).xyz;
    r0.x = r3.x + r3.y;
    r0.x = saturate(r0.x + r3.z);
    r0.yzw = r3.yyy * r0.yzw;
    r0.yzw = r3.xxx * r1.xyz + r0.yzw;
    r0.yzw = r3.zzz * r2.xyz + r0.yzw;
    r0.x = 1 + -r0.x;
    r1.xyz = float3(1,1,1) + -r0.yzw;
    r0.xyz = r0.xxx * r1.xyz + r0.yzw;
  } else {
    r0.xyz = float3(1,1,1);
  }
  r1.xyzw = colorMap.Sample(colorSampler_s, w1.xy).xyzw;
  r0.xyz = float3(-1,-1,-1) + r0.xyz;
  r0.xyz = r1.www * r0.xyz + float3(1,1,1);
  o0.xyz = r1.xyz * r0.xyz;
  r0.xyz = specColorMap.Sample(specColorSampler_s, w1.xy).xyz;
  r0.w = aoMap.Sample(aoSampler_s, w1.xy).x;
  r1.x = glossMap.Sample(specColorSampler_s, w1.xy).x;
  r1.y = glossRange.y + -glossRange.x;
  r1.x = r1.x * r1.y + glossRange.x;
  r1.x = saturate(0.0588235296 * r1.x);
  r1.yzw = normalMap.Sample(normalSampler_s, w1.xy).xyz;
  r1.yzw = float3(-0.5,-0.5,-0) + r1.yzw;
  r1.yzw = baseNormalHeight * r1.yzw + float3(0.5,0.5,0);
  r1.yz = r1.yz * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.x = dot(r1.yz, r1.yz);
  r2.x = 1 + -r2.x;
  r2.x = max(0, r2.x);
  r2.z = sqrt(r2.x);
  r1.w = r1.w * r1.w;
  r1.w = 0.333333343 * r1.w;
  r1.w = min(1, r1.w);
  r3.xyzw = detailNormalMask.Sample(detailMaskSampler_s, w1.xy).xyzw;
  r2.w = cmp(0 < r3.x);
  r4.xy = detailScale3.xy * w1.xy;
  r4.xyz = detailNormal1.Sample(normalSampler_s, r4.xy).xyz;
  r5.xy = detailScale2.xy * w1.xy;
  r5.xyz = detailNormal2.Sample(normalSampler_s, r5.xy).xyz;
  r6.xy = detailScale1.xy * w1.xy;
  r6.xyz = detailNormal3.Sample(normalSampler_s, r6.xy).xyz;
  r7.xy = detailScale.xy * w1.xy;
  r7.xyz = detailNormal4.Sample(normalSampler_s, r7.xy).xyz;
  if (r2.w != 0) {
    r2.w = detailScaleHeight3 * r3.x;
    r7.xyz = r4.xyz;
  } else {
    r3.x = cmp(0 < r3.y);
    if (r3.x != 0) {
      r2.w = detailScaleHeight2 * r3.y;
      r7.xyz = r5.xyz;
    } else {
      r3.x = cmp(0 < r3.z);
      if (r3.x != 0) {
        r2.w = detailScaleHeight1 * r3.z;
        r7.xyz = r6.xyz;
      } else {
        r3.x = cmp(0 < r3.w);
        if (r3.x != 0) {
          r2.w = detailScaleHeight * r3.w;
        } else {
          r7.xyz = float3(0,0,0);
          r2.w = 0;
        }
      }
    }
  }
  r3.xy = r7.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r3.z = r7.z * r7.z;
  r3.z = 0.333333343 * r3.z;
  r3.z = min(1, r3.z);
  r2.xy = r3.xy * r2.ww + r1.yz;
  r1.y = dot(r2.xyz, r2.xyz);
  r1.y = rsqrt(r1.y);
  r2.xyz = r2.xyz * r1.yyy;
  r1.y = r3.z * r2.w + r1.w;
  r1.z = v7.x ? 1 : -1;
  r1.w = dot(v3.xyz, v3.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = v3.xyz * r1.www;
  r4.xyz = r3.xyz * r1.zzz;
  r1.w = dot(v4.xyz, v4.xyz);
  r1.w = rsqrt(r1.w);
  r5.xyz = v4.xyz * r1.www;
  r5.xyz = r5.xyz * r1.zzz;
  r1.w = dot(v5.xyz, v5.xyz);
  r1.w = rsqrt(r1.w);
  r6.xyz = v5.xyz * r1.www;
  r6.xyz = r6.xyz * r1.zzz;
  r1.x = -17 * r1.x;
  r1.x = exp2(r1.x);
  r1.x = r1.y + r1.x;
  r1.x = log2(r1.x);
  r1.x = saturate(-0.0588235296 * r1.x);
  r6.xyz = r6.xyz * r2.yyy;
  r2.xyw = r5.xyz * r2.xxx + r6.xyz;
  r2.xyz = r4.xyz * r2.zzz + r2.xyw;
  r1.y = dot(r2.xyz, r2.xyz);
  r1.y = rsqrt(r1.y);
  r2.yzw = r2.xyz * r1.yyy;
  r1.yw = v6.xy / v6.ww;
  r4.zw = float2(0.5,0.5) * renderTargetSize.xy;
  r5.x = r4.z * r1.y;
  r5.y = -r4.w * r1.w;
  r1.yw = renderTargetSize.xy * float2(0.5,0.5) + r5.xy;
  r1.yw = v0.xy + -r1.yw;
  r3.w = r4.x + r4.y;
  r3.w = r3.z * r1.z + r3.w;
  r3.w = 0.5 * r3.w;
  r3.xyz = r3.xyz * r1.zzz + -r3.www;
  r1.z = max(r3.y, r3.z);
  r1.z = max(r3.x, r1.z);
  r1.z = max(r3.w, r1.z);
  r3.x = cmp(r1.z == r3.x);
  r4.yzw = float3(1,-1,-1) * r2.yzw;
  r3.w = 2 + r1.z;
  r4.x = 1;
  r2.x = 0;
  r2.xyzw = r3.xxxx ? r4.xyzw : r2.xyzw;
  r1.z = r3.x ? r3.w : r1.z;
  r3.x = cmp(r1.z == r3.y);
  r4.yzw = float3(-1,1,-1) * r2.yzw;
  r3.y = 2 + r1.z;
  r4.x = 2;
  r2.xyzw = r3.xxxx ? r4.xyzw : r2.xyzw;
  r1.z = r3.x ? r3.y : r1.z;
  r1.z = cmp(r1.z == r3.z);
  r3.yzw = float3(-1,-1,1) * r2.yzw;
  r3.x = 3;
  r2.xyzw = r1.zzzz ? r3.xyzw : r2.xyzw;
  r1.z = r2.y + r2.z;
  r3.z = r1.z + r2.w;
  r3.y = r2.w + -r2.y;
  r3.x = -r2.z * 3 + r3.z;
  r2.yzw = float3(0.408248305,0.707106769,0.577350259) * r3.xyz;
  r1.z = 1 + abs(r2.w);
  r1.z = rsqrt(r1.z);
  r2.yz = r2.yz * r1.zz;
  o1.xy = r2.yz * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  o1.z = r1.x * 0.49755621 + 0.00146627566;
  r1.x = (uint)r2.x;
  o1.w = 0.333333343 * r1.x;
  r1.xz = (uint2)v0.xy;
  r2.y = r0.x + -r0.z;
  r0.x = r2.y * 0.5 + r0.z;
  r2.z = r0.y + -r0.x;
  r2.x = r2.z * 0.5 + r0.x;
  r0.xy = (int2)r1.xz & int2(1,1);
  r0.x = cmp((int)r0.y == (int)r0.x);
  r0.xy = r0.xx ? r2.xy : r2.xz;
  o2.xy = r0.xy * float2(1,0.5) + float2(0,0.5);
  r0.xy = float2(-10,-10) + abs(r1.yw);
  r0.xy = saturate(float2(0.0333333351,0.0333333351) * r0.xy);
  r1.xz = float2(0.100000001,0.100000001) * abs(r1.yw);
  r1.xz = min(float2(1,1), r1.xz);
  r1.xz = r1.xz + -r0.xy;
  r0.xy = r1.xz * float2(0.5,0.5) + r0.xy;
  r1.xy = cmp(r1.yw >= float2(0,0));
  o3.xy = r1.xy ? r0.xy : -r0.xy;
  o0.w = 1;
  o2.z = r0.w;
  o2.w = 0.333333343;
  return;
}