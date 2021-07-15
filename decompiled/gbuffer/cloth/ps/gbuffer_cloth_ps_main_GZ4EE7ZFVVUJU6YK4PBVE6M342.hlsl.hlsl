// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:26:57 2021

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
  float3 specColorTint : packoffset(c11);
  float baseNormalHeight : packoffset(c11.w);
  float2 glossRange : packoffset(c12);
  float detailScaleHeight : packoffset(c12.z);
  float3 transColorTint : packoffset(c13);
  float transNormalHeight : packoffset(c13.w);
  float2 transGlossRange : packoffset(c14);
  float transRevealSoftEdge : packoffset(c14.z);
  float transRevealRamp : packoffset(c14.w);
  float2 transScale : packoffset(c15);
  float waterRefractionAmount : packoffset(c15.z);
  float2 tintScale : packoffset(c16);
  float scriptReplacement : packoffset(c16.z);
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
SamplerState transitionSampler_s : register(s5);
SamplerState velveteenSampler_s : register(s6);
SamplerState tintBlendSampler_s : register(s7);
StructuredBuffer<shaderConstantSetBuffer> shaderConstantSetBuffer : register(t0);
StructuredBuffer<modelInstanceBuffer> modelInstanceBuffer : register(t4);
Texture2D<float4> colorMap : register(t6);
Texture2D<float4> specColorMap : register(t7);
Texture2D<float4> normalMap : register(t9);
Texture2D<float4> glossMap : register(t10);
Texture2D<float4> aoMap : register(t11);
Texture2D<float4> detailMap : register(t12);
Texture2D<float4> transColorMap : register(t14);
Texture2D<float4> transNormalMap : register(t15);
Texture2D<float4> transGlossMap : register(t16);
Texture2D<float4> transRevealMap : register(t17);
Texture2D<float4> velveteenMask : register(t18);
Texture2D<float4> tintBlendMask : register(t19);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float3 v1 : COLOR0,
  float w1 : COLOR1,
  float4 v2 : TEXCOORD0,
  nointerpolation uint4 v3 : TEXCOORD4,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float3 v6 : TEXCOORD3,
  float3 v7 : OFFPOSITION0,
  uint v8 : SV_IsFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t0, 384
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t4, 24
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.x, v3.x, l(4), t4.xxxx
r0.x = colorSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.x, r0.x, l(0), t0.xxxx
r0.x = colorSampler[]..swiz;
  r0.y = transRevealMap.Sample(transitionSampler_s, v2.xy).x;
  r0.x = saturate(r0.x * 0.998000026 + 0.00100000005);
  r0.z = 1 + -r0.x;
  r0.w = saturate(transRevealRamp);
  r0.x = log2(r0.x);
  r0.x = r0.w * r0.x;
  r0.x = exp2(r0.x);
  r1.x = -r0.x;
  r0.x = log2(r0.z);
  r0.x = r0.w * r0.x;
  r1.y = exp2(r0.x);
  r0.xz = saturate(transRevealSoftEdge * r1.xy + r0.zz);
  r0.y = r0.y + -r0.x;
  r0.x = r0.z + -r0.x;
  r0.x = saturate(r0.y / r0.x);
  r0.yz = transScale.xy * v2.xy;
  r1.xyzw = colorMap.Sample(colorSampler_s, v2.xy).xyzw;
  r2.xyzw = v1.xyzw * r1.xyzw;
  r0.w = specColorMap.Sample(specColorSampler_s, v2.xy).x;
  r1.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + specColorTint.xyz;
  r1.xyz = r0.www * r1.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = saturate(1 + -r0.w);
  r2.xyz = r2.xyz * r0.www;
  r0.w = aoMap.Sample(aoSampler_s, v2.xy).x;
  r3.x = glossMap.Sample(specColorSampler_s, v2.xy).x;
  r3.y = glossRange.y + -glossRange.x;
  r3.x = r3.x * r3.y + glossRange.x;
  r3.x = saturate(0.0588235296 * r3.x);
  r3.z = cmp(0 < r0.x);
  r4.xyzw = transColorMap.Sample(transitionSampler_s, r0.yz).xyzw;
  r3.w = transGlossMap.Sample(transitionSampler_s, r0.yz).x;
  if (r3.z != 0) {
    r3.z = w1.x * r4.w;
    r4.w = transGlossRange.y + -transGlossRange.x;
    r3.w = r3.w * r4.w + transGlossRange.x;
    r3.w = saturate(0.0588235296 * r3.w);
    r3.z = r3.z * r0.x;
    r4.xyz = r4.xyz * v1.xyz + -r2.xyz;
    r2.xyz = r3.zzz * r4.xyz + r2.xyz;
    r3.w = r3.w * 2 + -1;
    r3.w = r3.z * r3.w + 1;
    r3.x = saturate(r3.x * r3.w);
    r4.xyz = float3(0.0399999991,0.0399999991,0.0399999991) + -r1.xyz;
    r1.xyz = r3.zzz * r4.xyz + r1.xyz;
  } else {
    r3.z = 0;
  }
  r4.xyz = normalMap.Sample(normalSampler_s, v2.xy).xyz;
  r4.xyz = float3(-0.5,-0.5,-0) + r4.xyz;
  r4.xyz = baseNormalHeight * r4.xyz + float3(0.5,0.5,0);
  r4.xy = r4.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r3.w = dot(r4.xy, r4.xy);
  r3.w = 1 + -r3.w;
  r3.w = max(0, r3.w);
  r5.z = sqrt(r3.w);
  r3.w = r4.z * r4.z;
  r3.w = 0.333333343 * r3.w;
  r3.w = min(1, r3.w);
  r4.zw = detailScale.xy * v2.xy;
  r6.xyz = detailMap.Sample(normalSampler_s, r4.zw).xyz;
  r4.zw = r6.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r5.w = r6.z * r6.z;
  r5.w = 0.333333343 * r5.w;
  r5.w = min(1, r5.w);
  r5.xy = r4.zw * detailScaleHeight + r4.xy;
  r4.x = dot(r5.xyz, r5.xyz);
  r4.x = rsqrt(r4.x);
  r4.xyz = r5.xyz * r4.xxx;
  r3.w = r5.w * detailScaleHeight + r3.w;
  r4.w = cmp(0 < r3.z);
  r5.xyz = transNormalMap.Sample(transitionSampler_s, r0.yz).xyz;
  if (r4.w != 0) {
    r5.xyz = float3(-0.5,-0.5,-0) + r5.xyz;
    r5.xyz = transNormalHeight * r5.xyz + float3(0.5,0.5,0);
    r0.yz = r5.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
    r4.w = r5.z * r5.z;
    r4.w = 0.333333343 * r4.w;
    r4.w = min(1, r4.w);
    r4.xy = r0.yz * r3.zz + r4.xy;
    r0.y = dot(r4.xyz, r4.xyz);
    r0.y = rsqrt(r0.y);
    r4.xyz = r4.xyz * r0.yyy;
    r3.w = r4.w * r3.z + r3.w;
  }
  r0.y = v8.x ? 1 : -1;
  r0.z = dot(v4.xyz, v4.xyz);
  r0.z = rsqrt(r0.z);
  r5.xyz = v4.xyz * r0.zzz;
  r6.xyz = r5.xyz * r0.yyy;
  r0.z = dot(v5.xyz, v5.xyz);
  r0.z = rsqrt(r0.z);
  r7.xyz = v5.xyz * r0.zzz;
  r7.xyz = r7.xyz * r0.yyy;
  r0.z = dot(v6.xyz, v6.xyz);
  r0.z = rsqrt(r0.z);
  r8.xyz = v6.xyz * r0.zzz;
  r8.xyz = r8.xyz * r0.yyy;
  r0.z = -17 * r3.x;
  r0.z = exp2(r0.z);
  r0.z = r3.w + r0.z;
  r0.z = log2(r0.z);
  r0.z = saturate(-0.0588235296 * r0.z);
  r8.xyz = r8.xyz * r4.yyy;
  r4.xyw = r7.xyz * r4.xxx + r8.xyz;
  r4.xyz = r6.xyz * r4.zzz + r4.xyw;
  r3.x = dot(r4.xyz, r4.xyz);
  r3.x = rsqrt(r3.x);
  r4.xyz = r4.xyz * r3.xxx;
  r3.x = debugGlossOverride.x * r3.y + glossRange.x;
  r3.x = saturate(0.0588235296 * r3.x);
  r3.x = -17 * r3.x;
  r3.x = exp2(r3.x);
  r3.x = r3.w + r3.x;
  r3.x = log2(r3.x);
  r3.x = saturate(-0.0588235296 * r3.x);
  r3.y = cmp(0 < debugStreamerControl.w);
  if (r3.y != 0) {
    r3.y = (int)debugStreamerControl.w;
    r3.z = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, v2.xy);
    r3.w = colorMap.CalculateLevelOfDetail(colorSampler_s, v2.xy);
    r3.z = cmp(r3.z < r3.w);
    r3.w = cmp(0 < r3.w);
    r7.xyz = (int3)r3.yyy & int3(1,2,4);
    r8.xyz = r7.xxx ? float3(1,0,1) : r2.xyz;
    r7.xyw = r7.yyy ? float3(0,1,1) : r2.xyz;
    r7.xyw = r3.www ? r8.xyz : r7.xyw;
    r8.xyz = r7.zzz ? float3(0,1,0) : r2.xyz;
    r2.xyz = r3.zzz ? r7.xyw : r8.xyz;
  }
  r3.yzw = debugColorOverride.xyz + -r2.xyz;
  r2.xyz = debugColorOverride.www * r3.yzw + r2.xyz;
  r1.w = -r1.w * w1.x + debugAlphaOverride.x;
  r1.w = debugAlphaOverride.w * r1.w + r2.w;
  r3.yzw = debugSpecularOverride.xyz + -r1.xyz;
  r1.xyz = debugSpecularOverride.www * r3.yzw + r1.xyz;
  r2.w = r3.x + -r0.z;
  r0.z = debugGlossOverride.w * r2.w + r0.z;
  r2.w = debugOcclusionOverride.x + -r0.w;
  o2.z = debugOcclusionOverride.w * r2.w + r0.w;
  r3.xyz = v8.xxx ? v4.xyz : -v4.xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www + -r4.xyz;
  r3.yzw = debugNormalOverride.www * r3.xyz + r4.xyz;
  r4.xy = tintScale.xy * v2.xy;
  r4.xy = tintBlendMask.Sample(tintBlendSampler_s, r4.xy).xy;
  r7.xyz = float3(-1,-1,-1) + clothPrimaryTint.xyz;
  r4.xzw = r4.xxx * r7.xyz + float3(1,1,1);
  r7.xyz = clothSecondaryTint.xyz + -r4.xzw;
  r4.xyz = r4.yyy * r7.xyz + r4.xzw;
  r0.w = saturate(r1.w + -r0.x);
  r4.xyz = float3(-1,-1,-1) + r4.xyz;
  r4.xyz = r0.www * r4.xyz + float3(1,1,1);
  r7.xyz = r4.xyz * r2.xyz;
  r0.w = velveteenMask.Sample(velveteenSampler_s, v2.xy).x;
  r1.w = waterRefractionAmount * r0.w;
  r1.w = cmp(0 < r1.w);
  r2.w = 17 * r0.z;
  r2.w = exp2(r2.w);
  r2.w = 2 + r2.w;
  r2.w = 2 / r2.w;
  r2.w = sqrt(r2.w);
  r4.w = dot(-v7.xyz, -v7.xyz);
  r4.w = rsqrt(r4.w);
  r8.xyz = -v7.xyz * r4.www;
  r4.w = saturate(dot(r3.yzw, r8.xyz));
  r4.w = 1 + -r4.w;
  r2.w = max(9.99999975e-05, r2.w);
  r2.w = 1 / r2.w;
  r4.w = log2(r4.w);
  r2.w = r4.w * r2.w;
  r2.w = exp2(r2.w);
  r0.w = saturate(-r0.w * waterRefractionAmount + 1);
  r0.w = r0.w + r2.w;
  r0.w = min(1, r0.w);
  r2.w = r2.w + -r0.x;
  r2.w = max(0, r2.w);
  r2.xyz = r2.xyz * r4.xyz + -r1.xyz;
  r2.xyz = r2.www * r2.xyz + r1.xyz;
  r0.x = r0.w + r0.x;
  r0.x = min(1, r0.x);
  r4.xyz = r7.xyz * r0.xxx;
  o0.xyz = r1.www ? r4.xyz : r7.xyz;
  r1.xyz = r1.www ? r2.xyz : r1.xyz;
  r0.x = r6.x + r6.y;
  r0.x = r5.z * r0.y + r0.x;
  r0.x = 0.5 * r0.x;
  r2.xyz = r5.xyz * r0.yyy + -r0.xxx;
  r0.y = max(r2.y, r2.z);
  r0.y = max(r2.x, r0.y);
  r0.x = max(r0.x, r0.y);
  r0.y = cmp(r0.x == r2.x);
  r4.yzw = float3(1,-1,-1) * r3.yzw;
  r0.w = 2 + r0.x;
  r4.x = 1;
  r3.x = 0;
  r3.xyzw = r0.yyyy ? r4.xyzw : r3.xyzw;
  r0.x = r0.y ? r0.w : r0.x;
  r0.y = cmp(r0.x == r2.y);
  r4.yzw = float3(-1,1,-1) * r3.yzw;
  r0.w = 2 + r0.x;
  r4.x = 2;
  r3.xyzw = r0.yyyy ? r4.xyzw : r3.xyzw;
  r0.x = r0.y ? r0.w : r0.x;
  r0.x = cmp(r0.x == r2.z);
  r2.yzw = float3(-1,-1,1) * r3.yzw;
  r2.x = 3;
  r2.xyzw = r0.xxxx ? r2.xyzw : r3.xyzw;
  r0.x = r2.y + r2.z;
  r3.z = r0.x + r2.w;
  r3.y = r2.w + -r2.y;
  r3.x = -r2.z * 3 + r3.z;
  r0.xyw = float3(0.408248305,0.707106769,0.577350259) * r3.xyz;
  r0.w = 1 + abs(r0.w);
  r0.w = rsqrt(r0.w);
  r0.xy = r0.xy * r0.ww;
  o1.xy = r0.xy * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  o1.z = r0.z * 0.49755621 + 0.00146627566;
  r0.x = (uint)r2.x;
  o1.w = 0.333333343 * r0.x;
  r0.xy = (uint2)v0.xy;
  r2.y = r1.x + -r1.z;
  r0.z = r2.y * 0.5 + r1.z;
  r2.z = r1.y + -r0.z;
  r2.x = r2.z * 0.5 + r0.z;
  r0.xy = (int2)r0.xy & int2(1,1);
  r0.x = cmp((int)r0.y == (int)r0.x);
  r0.xy = r0.xx ? r2.xy : r2.xz;
  o2.xy = r0.xy * float2(1,0.5) + float2(0,0.5);
  o0.w = 1;
  o2.w = 0.333333343;
  return;
}