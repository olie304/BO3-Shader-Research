// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:28:15 2021

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
  float baseNormalHeight : packoffset(c10);
  float2 glossRange : packoffset(c10.y);
  float scriptProxy : packoffset(c10.w);
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
SamplerState normalSampler_s : register(s2);
SamplerState revealSampler_s : register(s3);
StructuredBuffer<shaderConstantSetBuffer> shaderConstantSetBuffer : register(t0);
StructuredBuffer<modelInstanceBuffer> modelInstanceBuffer : register(t4);
Texture2D<float4> resolvedNormal : register(t6);
Texture2D<float4> colorMap : register(t7);
Texture2D<float4> normalMap : register(t9);
Texture2D<float4> revealMap : register(t10);
Texture2D<float4> transitionDiffuse : register(t11);
Texture2D<float4> transitionNormal : register(t12);


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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = colorMap.Sample(colorSampler_s, w1.xy).xyz;
  r0.w = glossRange.y + -glossRange.x;
  r1.x = saturate(0.0588235296 * glossRange.y);
  r1.yzw = normalMap.Sample(normalSampler_s, w1.xy).xyz;
  r1.yzw = float3(-0.5,-0.5,-0) + r1.yzw;
  r1.yzw = baseNormalHeight * r1.yzw + float3(0.5,0.5,0);
  r1.yz = r1.yz * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.x = dot(r1.yz, r1.yz);
  r2.x = 1 + -r2.x;
  r2.x = max(0, r2.x);
  r2.x = sqrt(r2.x);
  r1.w = r1.w * r1.w;
  r1.w = 0.333333343 * r1.w;
  r1.w = min(1, r1.w);
  r2.y = v6.x ? 1 : -1;
  r2.z = dot(v3.xyz, v3.xyz);
  r2.z = rsqrt(r2.z);
  r3.xyz = v3.xyz * r2.zzz;
  r3.xyz = r3.xyz * r2.yyy;
  r2.z = dot(v4.xyz, v4.xyz);
  r2.z = rsqrt(r2.z);
  r4.xyz = v4.xyz * r2.zzz;
  r4.xyz = r4.xyz * r2.yyy;
  r2.z = dot(v5.xyz, v5.xyz);
  r2.z = rsqrt(r2.z);
  r5.xyz = v5.xyz * r2.zzz;
  r2.yzw = r5.xyz * r2.yyy;
  r1.x = -17 * r1.x;
  r1.x = exp2(r1.x);
  r3.w = r1.w + r1.x;
  r3.w = log2(r3.w);
  r3.w = -0.0588235296 * r3.w;
  r3.w = max(0, r3.w);
  r5.xyz = r2.yzw * r1.zzz;
  r5.xyz = r4.xyz * r1.yyy + r5.xyz;
  r5.xyz = r3.xyz * r2.xxx + r5.xyz;
  r1.y = dot(r5.xyz, r5.xyz);
  r1.y = rsqrt(r1.y);
  r5.xyz = r5.xyz * r1.yyy;
  r0.w = debugGlossOverride.x * r0.w + glossRange.x;
  r0.w = saturate(0.0588235296 * r0.w);
  r1.y = -17 * r0.w;
  r1.y = exp2(r1.y);
  r1.y = r1.w + r1.y;
  r1.y = log2(r1.y);
  r1.y = -0.0588235296 * r1.y;
  r1.y = max(0, r1.y);
  r1.z = cmp(0 < debugStreamerControl.w);
  if (r1.z != 0) {
    r1.w = (int)debugStreamerControl.w;
    r2.x = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, w1.xy);
    r4.w = colorMap.CalculateLevelOfDetail(colorSampler_s, w1.xy);
    r2.x = cmp(r2.x < r4.w);
    r4.w = cmp(0 < r4.w);
    r6.xyz = (int3)r1.www & int3(1,2,4);
    r7.xyz = r6.xxx ? float3(1,0,1) : r0.xyz;
    r6.xyw = r6.yyy ? float3(0,1,1) : r0.xyz;
    r6.xyw = r4.www ? r7.xyz : r6.xyw;
    r7.xyz = r6.zzz ? float3(0,1,0) : r0.xyz;
    r0.xyz = r2.xxx ? r6.xyw : r7.xyz;
  }
  r6.xyz = debugColorOverride.xyz + -r0.xyz;
  r0.xyz = debugColorOverride.www * r6.xyz + r0.xyz;
  r6.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + debugSpecularOverride.xyz;
  r6.xyz = debugSpecularOverride.www * r6.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r1.y = r1.y + -r3.w;
  r1.y = debugGlossOverride.w * r1.y + r3.w;
  r1.w = -1 + debugOcclusionOverride.x;
  r7.z = debugOcclusionOverride.w * r1.w + 1;
  r8.xyz = v6.xxx ? v3.xyz : -v3.xyz;
  r1.w = dot(r8.xyz, r8.xyz);
  r1.w = rsqrt(r1.w);
  r9.xyz = r8.xyz * r1.www + -r5.xyz;
  r5.xyz = debugNormalOverride.www * r9.xyz + r5.xyz;
  r9.xyz = transitionDiffuse.Sample(colorSampler_s, w1.xy).xyz;
  r10.xyz = transitionNormal.Sample(normalSampler_s, w1.xy).xyz;
  r10.xyz = float3(-0.5,-0.5,-0) + r10.xyz;
  r10.xyz = baseNormalHeight * r10.xyz + float3(0.5,0.5,0);
  r10.xy = r10.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.x = dot(r10.xy, r10.xy);
  r2.x = 1 + -r2.x;
  r2.x = max(0, r2.x);
  r2.x = sqrt(r2.x);
  r3.w = r10.z * r10.z;
  r3.w = 0.333333343 * r3.w;
  r3.w = min(1, r3.w);
  r1.x = r3.w + r1.x;
  r1.x = log2(r1.x);
  r1.x = -0.0588235296 * r1.x;
  r1.x = max(0, r1.x);
  r2.yzw = r10.yyy * r2.yzw;
  r2.yzw = r4.xyz * r10.xxx + r2.yzw;
  r2.xyz = r3.xyz * r2.xxx + r2.yzw;
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = rsqrt(r2.w);
  r2.xyz = r2.xyz * r2.www;
  if (r1.z != 0) {
    r1.z = (int)debugStreamerControl.w;
    r2.w = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, w1.xy);
    r3.x = colorMap.CalculateLevelOfDetail(colorSampler_s, w1.xy);
    r2.w = cmp(r2.w < r3.x);
    r3.x = cmp(0 < r3.x);
    r3.yzw = (int3)r1.zzz & int3(1,2,4);
    r4.xyz = r3.yyy ? float3(1,0,1) : r9.xyz;
    r10.xyz = r3.zzz ? float3(0,1,1) : r9.xyz;
    r3.xyz = r3.xxx ? r4.xyz : r10.xyz;
    r4.xyz = r3.www ? float3(0,1,0) : r9.xyz;
    r9.xyz = r2.www ? r3.xyz : r4.xyz;
  }
  r3.xyz = debugColorOverride.xyz + -r9.xyz;
  r3.xyz = debugColorOverride.www * r3.xyz + r9.xyz;
  r0.w = -r1.x + r0.w;
  r0.w = debugGlossOverride.w * r0.w + r1.x;
  r1.xzw = r8.xyz * r1.www + -r2.xyz;
  r1.xzw = debugNormalOverride.www * r1.xzw + r2.xyz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r2.x, v2.x, l(4), t4.xxxx
r2.x = colorSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r2.x, r2.x, l(0), t0.xxxx
r2.x = colorSampler[]..swiz;
  r2.y = revealMap.Sample(revealSampler_s, w1.xy).x;
  r2.x = saturate(r2.x * 0.998000026 + 0.00100000005);
  r2.z = 1 + -r2.x;
  r2.w = saturate(alphaRevealParms.y);
  r2.x = log2(r2.x);
  r2.x = r2.w * r2.x;
  r2.x = exp2(r2.x);
  r4.x = -r2.x;
  r2.x = log2(r2.z);
  r2.x = r2.w * r2.x;
  r4.y = exp2(r2.x);
  r2.xz = saturate(alphaRevealParms.xx * r4.xy + r2.zz);
  r2.y = r2.y + -r2.x;
  r2.x = r2.z + -r2.x;
  r2.x = saturate(r2.y / r2.x);
  r2.y = cmp(r2.x >= 0.99000001);
  r2.y = r2.y ? 1.000000 : 0;
  r0.xyz = -r3.xyz + r0.xyz;
  r0.xyz = r2.yyy * r0.xyz + r3.xyz;
  r1.y = r1.y + -r0.w;
  r0.w = r2.y * r1.y + r0.w;
  r3.xyz = r5.xyz + -r1.xzw;
  r1.xyz = r2.yyy * r3.xyz + r1.xzw;
  o0.xyz = r0.xyz * r2.xxx;
  r3.xy = (uint2)v0.xy;
  r3.zw = float2(0,0);
  r0.xy = resolvedNormal.Load(r3.xyz).zw;
  r0.z = cmp(0 < r0.x);
  r0.y = r0.y * 3 + 0.5;
  r0.y = (uint)r0.y;
  r4.xyzw = (int4)r0.yyyy & int4(2,1,2,1);
  r4.xyzw = r4.zwxy ? float4(-0.577350259,-0.577350259,1.40129846e-45,1.40129846e-45) : float4(0.577350259,0.577350259,0,0);
  r0.y = (int)r4.w ^ (int)r4.z;
  r4.z = r0.y ? -0.577350259 : 0.577350259;
  r2.yz = float2(-1.22474492,1.22474492) * r4.xz;
  r5.xyz = float3(0.707106769,-1.41421354,0.707106769) * r4.xyz;
  r5.x = dot(r1.xyz, r5.xyz);
  r5.y = dot(r1.xz, r2.yz);
  r0.y = dot(r1.xyz, r4.xyz);
  r0.y = 1 + abs(r0.y);
  r0.y = rsqrt(r0.y);
  r1.xy = r5.xy * r0.yy;
  r1.xy = r1.xy * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  r0.x = cmp(r0.x >= 0.5);
  r0.x = r0.x ? 0.5 : 0.00146627566;
  r1.z = r0.w * 0.49755621 + r0.x;
  r0.xyz = r0.zzz ? r1.xyz : 0;
  o1.xyz = r0.xyz * r2.xxx;
  r0.y = r6.x + -r6.z;
  r0.w = r0.y * 0.5 + r6.z;
  r0.z = r6.y + -r0.w;
  r0.x = r0.z * 0.5 + r0.w;
  r1.xy = (int2)r3.xy & int2(1,1);
  r0.w = cmp((int)r1.y == (int)r1.x);
  r0.xy = r0.ww ? r0.xy : r0.xz;
  r7.xy = r0.xy * float2(1,0.5) + float2(0,0.5);
  r7.w = 1;
  o2.xyzw = r7.xyzw * r2.xxxx;
  o0.w = r2.x;
  o1.w = r2.x;
  return;
}