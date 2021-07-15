// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:26:56 2021

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
  float v1 : COLOR1,
  float2 w1 : TEXCOORD0,
  nointerpolation uint4 v2 : TEXCOORD4,
  float4 v3 : TEXCOORD1,
  float4 v4 : TEXCOORD2,
  float4 v5 : TEXCOORD3,
  float4 v6 : TEXCOORD7,
  float3 v7 : OFFPOSITION0,
  uint v8 : SV_IsFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2,
  out float2 o3 : SV_TARGET3)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t0, 384
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t4, 24
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.x, v2.x, l(4), t4.xxxx
r0.x = colorSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.x, r0.x, l(0), t0.xxxx
r0.x = colorSampler[]..swiz;
  r0.y = transRevealMap.Sample(transitionSampler_s, w1.xy).x;
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
  r0.yz = transScale.xy * w1.xy;
  r1.xyzw = colorMap.Sample(colorSampler_s, w1.xy).xyzw;
  r0.w = v1.x * r1.w;
  r2.x = specColorMap.Sample(specColorSampler_s, w1.xy).x;
  r2.yzw = float3(-0.0399999991,-0.0399999991,-0.0399999991) + specColorTint.xyz;
  r2.yzw = r2.xxx * r2.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r2.x = saturate(1 + -r2.x);
  r3.xyz = r2.xxx * r1.xyz;
  r3.w = aoMap.Sample(aoSampler_s, w1.xy).x;
  r4.x = glossMap.Sample(specColorSampler_s, w1.xy).x;
  r4.y = glossRange.y + -glossRange.x;
  r4.x = r4.x * r4.y + glossRange.x;
  r4.x = saturate(0.0588235296 * r4.x);
  r4.z = cmp(0 < r0.x);
  r5.xyzw = transColorMap.Sample(transitionSampler_s, r0.yz).xyzw;
  r4.w = transGlossMap.Sample(transitionSampler_s, r0.yz).x;
  if (r4.z != 0) {
    r4.z = v1.x * r5.w;
    r5.w = transGlossRange.y + -transGlossRange.x;
    r4.w = r4.w * r5.w + transGlossRange.x;
    r4.w = saturate(0.0588235296 * r4.w);
    r4.z = r4.z * r0.x;
    r1.xyz = -r1.xyz * r2.xxx + r5.xyz;
    r3.xyz = r4.zzz * r1.xyz + r3.xyz;
    r1.x = r4.w * 2 + -1;
    r1.x = r4.z * r1.x + 1;
    r4.x = saturate(r4.x * r1.x);
    r1.xyz = float3(0.0399999991,0.0399999991,0.0399999991) + -r2.yzw;
    r2.yzw = r4.zzz * r1.xyz + r2.yzw;
  } else {
    r4.z = 0;
  }
  r1.xyz = normalMap.Sample(normalSampler_s, w1.xy).xyz;
  r1.xyz = float3(-0.5,-0.5,-0) + r1.xyz;
  r1.xyz = baseNormalHeight * r1.xyz + float3(0.5,0.5,0);
  r1.xy = r1.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.x = dot(r1.xy, r1.xy);
  r2.x = 1 + -r2.x;
  r2.x = max(0, r2.x);
  r5.z = sqrt(r2.x);
  r1.z = r1.z * r1.z;
  r1.z = 0.333333343 * r1.z;
  r1.z = min(1, r1.z);
  r6.xy = detailScale.xy * w1.xy;
  r6.xyz = detailMap.Sample(normalSampler_s, r6.xy).xyz;
  r6.xy = r6.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.x = r6.z * r6.z;
  r2.x = 0.333333343 * r2.x;
  r2.x = min(1, r2.x);
  r5.xy = r6.xy * detailScaleHeight + r1.xy;
  r1.x = dot(r5.xyz, r5.xyz);
  r1.x = rsqrt(r1.x);
  r5.xyz = r5.xyz * r1.xxx;
  r1.x = r2.x * detailScaleHeight + r1.z;
  r1.y = cmp(0 < r4.z);
  r6.xyz = transNormalMap.Sample(transitionSampler_s, r0.yz).xyz;
  if (r1.y != 0) {
    r6.xyz = float3(-0.5,-0.5,-0) + r6.xyz;
    r6.xyz = transNormalHeight * r6.xyz + float3(0.5,0.5,0);
    r0.yz = r6.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
    r1.y = r6.z * r6.z;
    r1.y = 0.333333343 * r1.y;
    r1.y = min(1, r1.y);
    r5.xy = r0.yz * r4.zz + r5.xy;
    r0.y = dot(r5.xyz, r5.xyz);
    r0.y = rsqrt(r0.y);
    r5.xyz = r5.xyz * r0.yyy;
    r1.x = r1.y * r4.z + r1.x;
  }
  r0.y = v8.x ? 1 : -1;
  r0.z = dot(v3.xyz, v3.xyz);
  r0.z = rsqrt(r0.z);
  r6.xyz = v3.xyz * r0.zzz;
  r7.xyz = r6.xyz * r0.yyy;
  r0.z = dot(v4.xyz, v4.xyz);
  r0.z = rsqrt(r0.z);
  r8.xyz = v4.xyz * r0.zzz;
  r8.xyz = r8.xyz * r0.yyy;
  r0.z = dot(v5.xyz, v5.xyz);
  r0.z = rsqrt(r0.z);
  r9.xyz = v5.xyz * r0.zzz;
  r9.xyz = r9.xyz * r0.yyy;
  r0.z = -17 * r4.x;
  r0.z = exp2(r0.z);
  r0.z = r1.x + r0.z;
  r0.z = log2(r0.z);
  r0.z = saturate(-0.0588235296 * r0.z);
  r4.xzw = r9.xyz * r5.yyy;
  r4.xzw = r8.xyz * r5.xxx + r4.xzw;
  r4.xzw = r7.xyz * r5.zzz + r4.xzw;
  r1.y = dot(r4.xzw, r4.xzw);
  r1.y = rsqrt(r1.y);
  r4.xzw = r4.xzw * r1.yyy;
  r1.y = debugGlossOverride.x * r4.y + glossRange.x;
  r1.y = saturate(0.0588235296 * r1.y);
  r1.y = -17 * r1.y;
  r1.y = exp2(r1.y);
  r1.x = r1.x + r1.y;
  r1.x = log2(r1.x);
  r1.x = saturate(-0.0588235296 * r1.x);
  r1.y = cmp(0 < debugStreamerControl.w);
  if (r1.y != 0) {
    r1.y = (int)debugStreamerControl.w;
    r1.z = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, w1.xy);
    r2.x = colorMap.CalculateLevelOfDetail(colorSampler_s, w1.xy);
    r1.z = cmp(r1.z < r2.x);
    r2.x = cmp(0 < r2.x);
    r5.xyz = (int3)r1.yyy & int3(1,2,4);
    r8.xyz = r5.xxx ? float3(1,0,1) : r3.xyz;
    r5.xyw = r5.yyy ? float3(0,1,1) : r3.xyz;
    r5.xyw = r2.xxx ? r8.xyz : r5.xyw;
    r8.xyz = r5.zzz ? float3(0,1,0) : r3.xyz;
    r3.xyz = r1.zzz ? r5.xyw : r8.xyz;
  }
  r5.xyz = debugColorOverride.xyz + -r3.xyz;
  r3.xyz = debugColorOverride.www * r5.xyz + r3.xyz;
  r1.y = -r1.w * v1.x + debugAlphaOverride.x;
  r0.w = debugAlphaOverride.w * r1.y + r0.w;
  r1.yzw = debugSpecularOverride.xyz + -r2.yzw;
  r1.yzw = debugSpecularOverride.www * r1.yzw + r2.yzw;
  r1.x = r1.x + -r0.z;
  r0.z = debugGlossOverride.w * r1.x + r0.z;
  r1.x = debugOcclusionOverride.x + -r3.w;
  o2.z = debugOcclusionOverride.w * r1.x + r3.w;
  r2.xyz = v8.xxx ? v3.xyz : -v3.xyz;
  r1.x = dot(r2.xyz, r2.xyz);
  r1.x = rsqrt(r1.x);
  r2.xyz = r2.xyz * r1.xxx + -r4.xzw;
  r2.yzw = debugNormalOverride.www * r2.xyz + r4.xzw;
  r4.xy = tintScale.xy * w1.xy;
  r4.xy = tintBlendMask.Sample(tintBlendSampler_s, r4.xy).xy;
  r5.xyz = float3(-1,-1,-1) + clothPrimaryTint.xyz;
  r4.xzw = r4.xxx * r5.xyz + float3(1,1,1);
  r5.xyz = clothSecondaryTint.xyz + -r4.xzw;
  r4.xyz = r4.yyy * r5.xyz + r4.xzw;
  r0.w = saturate(r0.w + -r0.x);
  r4.xyz = float3(-1,-1,-1) + r4.xyz;
  r4.xyz = r0.www * r4.xyz + float3(1,1,1);
  r5.xyz = r4.xyz * r3.xyz;
  r0.w = velveteenMask.Sample(velveteenSampler_s, w1.xy).x;
  r1.x = waterRefractionAmount * r0.w;
  r1.x = cmp(0 < r1.x);
  r3.w = 17 * r0.z;
  r3.w = exp2(r3.w);
  r3.w = 2 + r3.w;
  r3.w = 2 / r3.w;
  r3.w = sqrt(r3.w);
  r4.w = dot(-v7.xyz, -v7.xyz);
  r4.w = rsqrt(r4.w);
  r8.xyz = -v7.xyz * r4.www;
  r4.w = saturate(dot(r2.yzw, r8.xyz));
  r4.w = 1 + -r4.w;
  r3.w = max(9.99999975e-05, r3.w);
  r3.w = 1 / r3.w;
  r4.w = log2(r4.w);
  r3.w = r4.w * r3.w;
  r3.w = exp2(r3.w);
  r0.w = saturate(-r0.w * waterRefractionAmount + 1);
  r0.w = r0.w + r3.w;
  r0.w = min(1, r0.w);
  r3.w = r3.w + -r0.x;
  r3.w = max(0, r3.w);
  r3.xyz = r3.xyz * r4.xyz + -r1.yzw;
  r3.xyz = r3.www * r3.xyz + r1.yzw;
  r0.x = r0.w + r0.x;
  r0.x = min(1, r0.x);
  r4.xyz = r5.xyz * r0.xxx;
  o0.xyz = r1.xxx ? r4.xyz : r5.xyz;
  r1.xyz = r1.xxx ? r3.xyz : r1.yzw;
  r0.xw = v6.xy / v6.ww;
  r3.xy = float2(0.5,0.5) * renderTargetSize.xy;
  r4.x = r3.x * r0.x;
  r4.y = -r3.y * r0.w;
  r0.xw = renderTargetSize.xy * float2(0.5,0.5) + r4.xy;
  r0.xw = v0.xy + -r0.xw;
  r1.w = r7.x + r7.y;
  r1.w = r6.z * r0.y + r1.w;
  r1.w = 0.5 * r1.w;
  r3.xyz = r6.xyz * r0.yyy + -r1.www;
  r0.y = max(r3.y, r3.z);
  r0.y = max(r3.x, r0.y);
  r0.y = max(r1.w, r0.y);
  r1.w = cmp(r0.y == r3.x);
  r4.yzw = float3(1,-1,-1) * r2.yzw;
  r3.x = 2 + r0.y;
  r4.x = 1;
  r2.x = 0;
  r2.xyzw = r1.wwww ? r4.xyzw : r2.xyzw;
  r0.y = r1.w ? r3.x : r0.y;
  r1.w = cmp(r0.y == r3.y);
  r4.yzw = float3(-1,1,-1) * r2.yzw;
  r3.x = 2 + r0.y;
  r4.x = 2;
  r2.xyzw = r1.wwww ? r4.xyzw : r2.xyzw;
  r0.y = r1.w ? r3.x : r0.y;
  r0.y = cmp(r0.y == r3.z);
  r3.yzw = float3(-1,-1,1) * r2.yzw;
  r3.x = 3;
  r2.xyzw = r0.yyyy ? r3.xyzw : r2.xyzw;
  r0.y = r2.y + r2.z;
  r3.z = r0.y + r2.w;
  r3.y = r2.w + -r2.y;
  r3.x = -r2.z * 3 + r3.z;
  r2.yzw = float3(0.408248305,0.707106769,0.577350259) * r3.xyz;
  r0.y = 1 + abs(r2.w);
  r0.y = rsqrt(r0.y);
  r2.yz = r2.yz * r0.yy;
  o1.xy = r2.yz * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  o1.z = r0.z * 0.49755621 + 0.00146627566;
  r0.y = (uint)r2.x;
  o1.w = 0.333333343 * r0.y;
  r0.yz = (uint2)v0.xy;
  r2.y = r1.x + -r1.z;
  r1.x = r2.y * 0.5 + r1.z;
  r2.z = r1.y + -r1.x;
  r2.x = r2.z * 0.5 + r1.x;
  r0.yz = (int2)r0.yz & int2(1,1);
  r0.y = cmp((int)r0.z == (int)r0.y);
  r0.yz = r0.yy ? r2.xy : r2.xz;
  o2.xy = r0.yz * float2(1,0.5) + float2(0,0.5);
  r0.yz = float2(-10,-10) + abs(r0.xw);
  r0.yz = saturate(float2(0.0333333351,0.0333333351) * r0.yz);
  r1.xy = float2(0.100000001,0.100000001) * abs(r0.xw);
  r1.xy = min(float2(1,1), r1.xy);
  r1.xy = r1.xy + -r0.yz;
  r0.yz = r1.xy * float2(0.5,0.5) + r0.yz;
  r0.xw = cmp(r0.xw >= float2(0,0));
  o3.xy = r0.xw ? r0.yz : -r0.yz;
  o0.w = 1;
  o2.w = 0.333333343;
  return;
}