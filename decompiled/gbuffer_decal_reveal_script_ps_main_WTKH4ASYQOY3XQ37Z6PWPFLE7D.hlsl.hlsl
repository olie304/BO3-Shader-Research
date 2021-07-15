// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:28:17 2021

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
  float alphaRevealSoftEdge : packoffset(c10);
  float alphaRevealRamp : packoffset(c10.y);
  float2 revealScale : packoffset(c10.z);
  float3 colorTint : packoffset(c11);
  float baseNormalHeight : packoffset(c11.w);
  float2 glossRange : packoffset(c12);
  float detailScaleHeight : packoffset(c12.z);
  float scriptProxy : packoffset(c12.w);
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

SamplerState revealSampler_s : register(s1);
SamplerState colorSampler_s : register(s2);
SamplerState specColorSampler_s : register(s3);
SamplerState normalSampler_s : register(s4);
SamplerState aoSampler_s : register(s5);
StructuredBuffer<shaderConstantSetBuffer> shaderConstantSetBuffer : register(t0);
StructuredBuffer<modelInstanceBuffer> modelInstanceBuffer : register(t4);
Texture2D<float4> resolvedNormal : register(t6);
Texture2D<float4> revealMap : register(t7);
Texture2D<float4> colorMap : register(t9);
Texture2D<float4> tintMask : register(t10);
Texture2D<float4> normalMap : register(t11);
Texture2D<float4> glossMap : register(t12);
Texture2D<float4> aoMap : register(t14);
Texture2D<float4> detailMap : register(t15);
Texture2D<float4> transitionDiffuse : register(t16);
Texture2D<float4> transitionNormal : register(t17);
Texture2D<float4> transitionGloss : register(t18);


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
  float3 v5 : TEXCOORD3,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t0, 384
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t4, 24
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = colorMap.Sample(colorSampler_s, w1.xy).xyz;
  r0.w = tintMask.Sample(colorSampler_s, w1.xy).x;
  r1.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r1.xyz = r0.www * r1.xyz + float3(1,1,1);
  r0.xyz = r1.xyz * r0.xyz;
  r0.w = aoMap.Sample(aoSampler_s, w1.xy).x;
  r1.w = glossMap.Sample(specColorSampler_s, w1.xy).x;
  r2.x = glossRange.y + -glossRange.x;
  r1.w = r1.w * r2.x + glossRange.x;
  r1.w = saturate(0.0588235296 * r1.w);
  r2.yzw = normalMap.Sample(normalSampler_s, w1.xy).xyz;
  r2.yzw = float3(-0.5,-0.5,-0) + r2.yzw;
  r2.yzw = baseNormalHeight * r2.yzw + float3(0.5,0.5,0);
  r2.yz = r2.yz * float2(1.9921875,1.9921875) + float2(-1,-1);
  r3.x = dot(r2.yz, r2.yz);
  r3.x = 1 + -r3.x;
  r3.x = max(0, r3.x);
  r3.z = sqrt(r3.x);
  r2.w = r2.w * r2.w;
  r2.w = 0.333333343 * r2.w;
  r2.w = min(1, r2.w);
  r4.xy = detailScale.xy * w1.xy;
  r4.xyz = detailMap.Sample(normalSampler_s, r4.xy).xyz;
  r4.xy = r4.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r3.w = r4.z * r4.z;
  r3.w = 0.333333343 * r3.w;
  r3.w = min(1, r3.w);
  r3.xy = r4.xy * detailScaleHeight + r2.yz;
  r2.y = dot(r3.xyz, r3.xyz);
  r2.y = rsqrt(r2.y);
  r3.xyz = r3.xyz * r2.yyy;
  r2.y = r3.w * detailScaleHeight + r2.w;
  r2.z = v6.x ? 1 : -1;
  r2.w = dot(v3.xyz, v3.xyz);
  r2.w = rsqrt(r2.w);
  r4.xyz = v3.xyz * r2.www;
  r4.xyz = r4.xyz * r2.zzz;
  r2.w = dot(v4.xyz, v4.xyz);
  r2.w = rsqrt(r2.w);
  r5.xyz = v4.xyz * r2.www;
  r5.xyz = r5.xyz * r2.zzz;
  r2.w = dot(v5.xyz, v5.xyz);
  r2.w = rsqrt(r2.w);
  r6.xyz = v5.xyz * r2.www;
  r6.xyz = r6.xyz * r2.zzz;
  r1.w = -17 * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r2.y + r1.w;
  r1.w = log2(r1.w);
  r1.w = saturate(-0.0588235296 * r1.w);
  r7.xyz = r6.xyz * r3.yyy;
  r3.xyw = r5.xyz * r3.xxx + r7.xyz;
  r3.xyz = r4.xyz * r3.zzz + r3.xyw;
  r2.z = dot(r3.xyz, r3.xyz);
  r2.z = rsqrt(r2.z);
  r3.xyz = r3.xyz * r2.zzz;
  r2.z = debugGlossOverride.x * r2.x + glossRange.x;
  r2.z = saturate(0.0588235296 * r2.z);
  r2.w = -17 * r2.z;
  r2.w = exp2(r2.w);
  r2.y = r2.y + r2.w;
  r2.y = log2(r2.y);
  r2.y = saturate(-0.0588235296 * r2.y);
  r2.w = cmp(0 < debugStreamerControl.w);
  if (r2.w != 0) {
    r3.w = (int)debugStreamerControl.w;
    r4.w = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, w1.xy);
    r5.w = colorMap.CalculateLevelOfDetail(colorSampler_s, w1.xy);
    r4.w = cmp(r4.w < r5.w);
    r5.w = cmp(0 < r5.w);
    r7.xyz = (int3)r3.www & int3(1,2,4);
    r8.xyz = r7.xxx ? float3(1,0,1) : r0.xyz;
    r7.xyw = r7.yyy ? float3(0,1,1) : r0.xyz;
    r7.xyw = r5.www ? r8.xyz : r7.xyw;
    r8.xyz = r7.zzz ? float3(0,1,0) : r0.xyz;
    r0.xyz = r4.www ? r7.xyw : r8.xyz;
  }
  r7.xyz = debugColorOverride.xyz + -r0.xyz;
  r0.xyz = debugColorOverride.www * r7.xyz + r0.xyz;
  r7.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + debugSpecularOverride.xyz;
  r7.xyz = debugSpecularOverride.www * r7.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r2.y = r2.y + -r1.w;
  r1.w = debugGlossOverride.w * r2.y + r1.w;
  r2.y = debugOcclusionOverride.x + -r0.w;
  r0.w = debugOcclusionOverride.w * r2.y + r0.w;
  r8.xyz = v6.xxx ? v3.xyz : -v3.xyz;
  r2.y = dot(r8.xyz, r8.xyz);
  r2.y = rsqrt(r2.y);
  r9.xyz = r8.xyz * r2.yyy + -r3.xyz;
  r3.xyz = debugNormalOverride.www * r9.xyz + r3.xyz;
  r9.xyz = transitionDiffuse.Sample(colorSampler_s, w1.xy).xyz;
  r1.xyz = r9.xyz * r1.xyz;
  r3.w = transitionGloss.Sample(specColorSampler_s, w1.xy).x;
  r2.x = r3.w * r2.x + glossRange.x;
  r2.x = saturate(0.0588235296 * r2.x);
  r9.xyz = transitionNormal.Sample(normalSampler_s, w1.xy).xyz;
  r9.xyz = float3(-0.5,-0.5,-0) + r9.xyz;
  r9.xyz = baseNormalHeight * r9.xyz + float3(0.5,0.5,0);
  r9.xy = r9.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r3.w = dot(r9.xy, r9.xy);
  r3.w = 1 + -r3.w;
  r3.w = max(0, r3.w);
  r3.w = sqrt(r3.w);
  r4.w = r9.z * r9.z;
  r4.w = 0.333333343 * r4.w;
  r4.w = min(1, r4.w);
  r2.x = -17 * r2.x;
  r2.x = exp2(r2.x);
  r2.x = r4.w + r2.x;
  r2.x = log2(r2.x);
  r2.x = -0.0588235296 * r2.x;
  r2.x = max(0, r2.x);
  r6.xyz = r9.yyy * r6.xyz;
  r5.xyz = r5.xyz * r9.xxx + r6.xyz;
  r4.xyz = r4.xyz * r3.www + r5.xyz;
  r3.w = dot(r4.xyz, r4.xyz);
  r3.w = rsqrt(r3.w);
  r4.xyz = r4.xyz * r3.www;
  if (r2.w != 0) {
    r2.w = (int)debugStreamerControl.w;
    r3.w = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, w1.xy);
    r4.w = colorMap.CalculateLevelOfDetail(colorSampler_s, w1.xy);
    r3.w = cmp(r3.w < r4.w);
    r4.w = cmp(0 < r4.w);
    r5.xyz = (int3)r2.www & int3(1,2,4);
    r6.xyz = r5.xxx ? float3(1,0,1) : r1.xyz;
    r5.xyw = r5.yyy ? float3(0,1,1) : r1.xyz;
    r5.xyw = r4.www ? r6.xyz : r5.xyw;
    r6.xyz = r5.zzz ? float3(0,1,0) : r1.xyz;
    r1.xyz = r3.www ? r5.xyw : r6.xyz;
  }
  r5.xyz = debugColorOverride.xyz + -r1.xyz;
  r1.xyz = debugColorOverride.www * r5.xyz + r1.xyz;
  r2.z = r2.z + -r2.x;
  r2.x = debugGlossOverride.w * r2.z + r2.x;
  r2.z = -1 + debugOcclusionOverride.x;
  r2.z = debugOcclusionOverride.w * r2.z + 1;
  r5.xyz = r8.xyz * r2.yyy + -r4.xyz;
  r4.xyz = debugNormalOverride.www * r5.xyz + r4.xyz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r2.y, v2.x, l(4), t4.xxxx
r2.y = revealSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r2.y, r2.y, l(0), t0.xxxx
r2.y = revealSampler[]..swiz;
  r2.w = revealMap.Sample(revealSampler_s, w1.xy).x;
  r2.y = saturate(r2.y * 0.998000026 + 0.00100000005);
  r3.w = 1 + -r2.y;
  r4.w = saturate(alphaRevealParms.y);
  r2.y = log2(r2.y);
  r2.y = r4.w * r2.y;
  r2.y = exp2(r2.y);
  r5.x = -r2.y;
  r2.y = log2(r3.w);
  r2.y = r4.w * r2.y;
  r5.y = exp2(r2.y);
  r5.xy = saturate(alphaRevealParms.xx * r5.xy + r3.ww);
  r2.y = -r5.x + r2.w;
  r2.w = r5.y + -r5.x;
  r2.y = saturate(r2.y / r2.w);
  r2.w = cmp(r2.y >= 0.99000001);
  r2.w = r2.w ? 1.000000 : 0;
  r0.xyz = -r1.xyz + r0.xyz;
  r0.xyz = r2.www * r0.xyz + r1.xyz;
  r1.x = -r2.x + r1.w;
  r1.x = r2.w * r1.x + r2.x;
  r5.z = min(r2.z, r0.w);
  r1.yzw = -r4.xyz + r3.xyz;
  r1.yzw = r2.www * r1.yzw + r4.xyz;
  o0.xyz = r0.xyz * r2.yyy;
  r0.xy = (uint2)v0.xy;
  r0.zw = float2(0,0);
  r0.zw = resolvedNormal.Load(r0.xyz).zw;
  r2.x = cmp(0 < r0.z);
  r0.w = r0.w * 3 + 0.5;
  r0.w = (uint)r0.w;
  r3.xyzw = (int4)r0.wwww & int4(2,1,2,1);
  r3.xyzw = r3.zwxy ? float4(-0.577350259,-0.577350259,1.40129846e-45,1.40129846e-45) : float4(0.577350259,0.577350259,0,0);
  r0.w = (int)r3.w ^ (int)r3.z;
  r3.z = r0.w ? -0.577350259 : 0.577350259;
  r2.zw = float2(-1.22474492,1.22474492) * r3.xz;
  r4.xyz = float3(0.707106769,-1.41421354,0.707106769) * r3.xyz;
  r4.x = dot(r1.yzw, r4.xyz);
  r4.y = dot(r1.yw, r2.zw);
  r0.w = dot(r1.yzw, r3.xyz);
  r0.w = 1 + abs(r0.w);
  r0.w = rsqrt(r0.w);
  r1.yz = r4.xy * r0.ww;
  r3.xy = r1.yz * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  r0.z = cmp(r0.z >= 0.5);
  r0.z = r0.z ? 0.5 : 0.00146627566;
  r3.z = r1.x * 0.49755621 + r0.z;
  r1.xyz = r2.xxx ? r3.xyz : 0;
  o1.xyz = r1.xyz * r2.yyy;
  r1.y = r7.x + -r7.z;
  r0.z = r1.y * 0.5 + r7.z;
  r1.z = r7.y + -r0.z;
  r1.x = r1.z * 0.5 + r0.z;
  r0.xy = (int2)r0.xy & int2(1,1);
  r0.x = cmp((int)r0.y == (int)r0.x);
  r0.xy = r0.xx ? r1.xy : r1.xz;
  r5.xy = r0.xy * float2(1,0.5) + float2(0,0.5);
  r5.w = 1;
  o2.xyzw = r5.xyzw * r2.yyyy;
  o0.w = r2.y;
  o1.w = r2.y;
  return;
}