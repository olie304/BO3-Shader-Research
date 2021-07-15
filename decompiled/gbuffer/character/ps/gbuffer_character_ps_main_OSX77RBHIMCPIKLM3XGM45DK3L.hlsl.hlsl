// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:26:50 2021

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
  float3 colorTint : packoffset(c10);
  float3 specColorTint : packoffset(c11);
  float baseNormalHeight : packoffset(c11.w);
  float2 glossRange : packoffset(c12);
  float2 swatch1Scale : packoffset(c12.z);
  float2 swatch2Scale : packoffset(c13);
  float swatchHeight : packoffset(c13.z);
  float4 colorTint1 : packoffset(c14);
  float4 colorTint2 : packoffset(c15);
  float4 colorTint3 : packoffset(c16);
  float2 glossRange1 : packoffset(c17);
  float2 glossRange2 : packoffset(c17.z);
  float2 glossRange3 : packoffset(c18);
  float2 specTweak1 : packoffset(c18.z);
  float2 specTweak2 : packoffset(c19);
  float2 specTweak3 : packoffset(c19.z);
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
StructuredBuffer<shaderConstantSetBuffer> shaderConstantSetBuffer : register(t0);
StructuredBuffer<modelInstanceBuffer> modelInstanceBuffer : register(t4);
Texture2D<float4> colorMap : register(t6);
Texture2D<float4> specColorMap : register(t7);
Texture2D<float4> normalMap : register(t9);
Texture2D<float4> glossMap : register(t10);
Texture2D<float4> aoMap : register(t11);
Texture2D<float4> styleMaskMap : register(t12);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float4 v4 : TEXCOORD2,
  float4 v5 : TEXCOORD3,
  float4 v6 : TEXCOORD4,
  float4 v7 : TEXCOORD6,
  nointerpolation uint v8 : TEXCOORD9,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2,
  out float2 o3 : SV_TARGET3)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t0, 384
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t4, 24
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.x, v8.x, l(4), t4.xxxx
r0.x = colorSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r1.xyzw, r0.x, l(256), t0.xyzw
r1.x = colorSampler[]..swiz;
r1.y = colorSampler[]..swiz;
r1.z = colorSampler[]..swiz;
r1.w = colorSampler[]..swiz;
  r0.y = cmp(0 < r1.w);
  if (r0.y != 0) {
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r2.xyzw, r0.x, l(272), t0.xyzw
  r2.x = colorSampler[]..swiz;
  r2.y = colorSampler[]..swiz;
  r2.z = colorSampler[]..swiz;
  r2.w = colorSampler[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.yzw, r0.x, l(288), t0.xxyz
  r0.y = colorSampler[]..swiz;
  r0.z = colorSampler[]..swiz;
  r0.w = colorSampler[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r3.xyzw, r0.x, l(304), t0.xyzw
  r3.x = colorSampler[]..swiz;
  r3.y = colorSampler[]..swiz;
  r3.z = colorSampler[]..swiz;
  r3.w = colorSampler[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r4.xyz, r0.x, l(320), t0.xyzx
  r4.x = colorSampler[]..swiz;
  r4.y = colorSampler[]..swiz;
  r4.z = colorSampler[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r5.xyzw, r0.x, l(336), t0.xyzw
  r5.x = colorSampler[]..swiz;
  r5.y = colorSampler[]..swiz;
  r5.z = colorSampler[]..swiz;
  r5.w = colorSampler[]..swiz;
    r6.xy = r2.zw;
    r6.zw = r3.zw;
  } else {
    r6.xy = specTweak1.xy;
    r6.zw = specTweak2.xy;
    r1.xyz = colorTint1.xyz;
    r0.yzw = colorTint2.xyz;
    r4.xyz = colorTint3.xyz;
    r2.xy = glossRange1.xy;
    r3.xy = glossRange2.xy;
    r5.xy = glossRange3.xy;
    r5.zw = specTweak3.xy;
  }
  r7.xyz = styleMaskMap.Sample(colorSampler_s, v2.xy).xyz;
  r0.x = r7.x + r7.y;
  r0.x = saturate(r0.x + r7.z);
  r2.zw = r7.yy * r3.xy;
  r2.xy = r7.xx * r2.xy + r2.zw;
  r2.xy = r7.zz * r5.xy + r2.xy;
  r0.x = 1 + -r0.x;
  r2.zw = glossRange.xy + -r2.xy;
  r2.xy = r0.xx * r2.zw + r2.xy;
  r2.xy = max(float2(0,0), r2.xy);
  r2.xy = min(float2(17,17), r2.xy);
  r3.xyzw = colorMap.Sample(colorSampler_s, v2.xy).xyzw;
  r8.xyzw = v1.xyzw * r3.xyzw;
  r3.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r3.xyz = r8.www * r3.xyz + float3(1,1,1);
  r3.xyz = r8.xyz * r3.xyz;
  r1.w = cmp(0 < debugStreamerControl.w);
  if (r1.w != 0) {
    r1.w = (int)debugStreamerControl.w;
    r2.z = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, v2.xy);
    r2.w = colorMap.CalculateLevelOfDetail(colorSampler_s, v2.xy);
    r2.z = cmp(r2.z < r2.w);
    r2.w = cmp(0 < r2.w);
    r8.xyz = (int3)r1.www & int3(1,2,4);
    r9.xyz = r8.xxx ? float3(1,0,1) : r3.xyz;
    r10.xyz = r8.yyy ? float3(0,1,1) : r3.xyz;
    r9.xyz = r2.www ? r9.xyz : r10.xyz;
    r8.xyz = r8.zzz ? float3(0,1,0) : r3.xyz;
    r3.xyz = r2.zzz ? r9.xyz : r8.xyz;
  }
  r8.xyz = normalMap.Sample(normalSampler_s, v2.xy).xyz;
  r8.xyz = float3(-0.5,-0.5,-0) + r8.xyz;
  r8.xyz = baseNormalHeight * r8.xyz + float3(0.5,0.5,0);
  r9.xyz = specColorMap.Sample(specColorSampler_s, v2.xy).xyz;
  r1.w = glossMap.Sample(specColorSampler_s, v2.xy).x;
  r2.y = r2.y + -r2.x;
  r1.w = r1.w * r2.y + r2.x;
  r1.w = saturate(0.0588235296 * r1.w);
  r2.x = aoMap.Sample(aoSampler_s, v2.xy).x;
  r2.yz = r8.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.w = dot(r2.yz, r2.yz);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r4.w = r8.z * r8.z;
  r4.w = 0.333333343 * r4.w;
  r4.w = min(1, r4.w);
  r1.w = 17 * r1.w;
  r1.w = exp2(r1.w);
  r1.w = 1 / r1.w;
  r1.w = r4.w + r1.w;
  r1.w = 1 / r1.w;
  r1.w = log2(r1.w);
  r1.w = 0.0588235296 * r1.w;
  r1.w = max(0, r1.w);
  r3.w = -r3.w * v1.w + debugAlphaOverride.x;
  r3.w = debugAlphaOverride.w * r3.w + r8.w;
  r8.xyz = debugColorOverride.xyz + -r3.xyz;
  r3.xyz = debugColorOverride.www * r8.xyz + r3.xyz;
  r5.xy = debugNormalOverride.xy + -r2.yz;
  r2.yz = debugNormalOverride.ww * r5.xy + r2.yz;
  r8.xyz = debugSpecularOverride.xyz + -r9.xyz;
  r8.xyz = debugSpecularOverride.www * r8.xyz + r9.xyz;
  r4.w = debugGlossOverride.x + -r1.w;
  r1.w = debugGlossOverride.w * r4.w + r1.w;
  r4.w = debugOcclusionOverride.x + -r2.x;
  o2.z = debugOcclusionOverride.w * r4.w + r2.x;
  r9.xyz = v5.xyz * r2.zzz;
  r2.xyz = v4.xyz * r2.yyy + r9.xyz;
  r2.xyz = v3.xyz * r2.www + r2.xyz;
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = rsqrt(r2.w);
  r9.yzw = r2.xyz * r2.www;
  r3.w = cmp(r3.w != 0.000000);
  r0.yzw = r7.yyy * r0.yzw;
  r0.yzw = r7.xxx * r1.xyz + r0.yzw;
  r0.yzw = r7.zzz * r4.xyz + r0.yzw;
  r1.xyz = float3(1,1,1) + -r0.yzw;
  r0.yzw = r0.xxx * r1.xyz + r0.yzw;
  r1.xyz = r0.yzw * r3.xyz;
  r4.x = dot(r8.xyz, float3(0.298999995,0.587000012,0.114));
  r4.y = dot(r7.xy, r6.xz);
  r4.y = r7.z * r5.z + r4.y;
  r0.x = saturate(r4.y + r0.x);
  r4.yzw = r8.xyz + -r4.xxx;
  r4.xyz = r0.xxx * r4.yzw + r4.xxx;
  r0.x = dot(r7.xy, r6.yw);
  r0.x = r7.z * r5.w + r0.x;
  r4.xyz = saturate(r4.xyz + r0.xxx);
  r0.xyz = -r0.yzw * r3.xyz + debugColorOverride.xyz;
  r0.xyz = debugColorOverride.www * r0.xyz + r1.xyz;
  o0.xyz = r3.www ? r0.xyz : r3.xyz;
  r0.xyz = r3.www ? r4.xyz : r8.xyz;
  r1.xy = v7.xy / v7.ww;
  r3.xy = float2(0.5,0.5) * renderTargetSize.xy;
  r4.x = r3.x * r1.x;
  r4.y = -r3.y * r1.y;
  r1.xy = renderTargetSize.xy * float2(0.5,0.5) + r4.xy;
  r1.xy = v0.xy + -r1.xy;
  r0.w = r9.y + r9.z;
  r0.w = r2.z * r2.w + r0.w;
  r0.w = 0.5 * r0.w;
  r2.xyz = r2.xyz * r2.www + -r0.www;
  r1.z = max(r2.y, r2.z);
  r1.z = max(r2.x, r1.z);
  r0.w = max(r1.z, r0.w);
  r1.z = cmp(r0.w == r2.x);
  r3.yzw = float3(1,-1,-1) * r9.yzw;
  r2.x = 2 + r0.w;
  r3.x = 1;
  r9.x = 0;
  r3.xyzw = r1.zzzz ? r3.xyzw : r9.xyzw;
  r0.w = r1.z ? r2.x : r0.w;
  r1.z = cmp(r0.w == r2.y);
  r4.yzw = float3(-1,1,-1) * r3.yzw;
  r2.x = 2 + r0.w;
  r4.x = 2;
  r3.xyzw = r1.zzzz ? r4.xyzw : r3.xyzw;
  r0.w = r1.z ? r2.x : r0.w;
  r0.w = cmp(r0.w == r2.z);
  r2.yzw = float3(-1,-1,1) * r3.yzw;
  r2.x = 3;
  r2.xyzw = r0.wwww ? r2.xyzw : r3.xyzw;
  r0.w = r2.y + r2.z;
  r3.z = r0.w + r2.w;
  r3.y = r2.w + -r2.y;
  r3.x = -r2.z * 3 + r3.z;
  r2.yzw = float3(0.408248305,0.707106769,0.577350259) * r3.xyz;
  r0.w = 1 + abs(r2.w);
  r0.w = rsqrt(r0.w);
  r2.yz = r2.yz * r0.ww;
  o1.xy = r2.yz * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  o1.z = r1.w * 0.49755621 + 0.00146627566;
  r0.w = (uint)r2.x;
  o1.w = 0.333333343 * r0.w;
  r1.zw = (uint2)v0.xy;
  r2.y = r0.x + -r0.z;
  r0.x = r2.y * 0.5 + r0.z;
  r2.z = r0.y + -r0.x;
  r2.x = r2.z * 0.5 + r0.x;
  r0.xy = (int2)r1.zw & int2(1,1);
  r0.x = cmp((int)r0.y == (int)r0.x);
  r0.xy = r0.xx ? r2.xy : r2.xz;
  o2.xy = r0.xy * float2(1,0.5) + float2(0,0.5);
  r0.xy = float2(-10,-10) + abs(r1.xy);
  r0.xy = saturate(float2(0.0333333351,0.0333333351) * r0.xy);
  r0.zw = float2(0.100000001,0.100000001) * abs(r1.xy);
  r0.zw = min(float2(1,1), r0.zw);
  r0.zw = r0.zw + -r0.xy;
  r0.xy = r0.zw * float2(0.5,0.5) + r0.xy;
  r0.zw = cmp(r1.xy >= float2(0,0));
  o3.xy = r0.zw ? r0.xy : -r0.xy;
  o0.w = 1;
  o2.w = 0.333333343;
  return;
}