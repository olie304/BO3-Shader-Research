// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:28:16 2021

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
SamplerState specColorSampler_s : register(s2);
SamplerState normalSampler_s : register(s3);
SamplerState aoSampler_s : register(s4);
SamplerState revealSampler_s : register(s5);
StructuredBuffer<shaderConstantSetBuffer> shaderConstantSetBuffer : register(t0);
StructuredBuffer<modelInstanceBuffer> modelInstanceBuffer : register(t4);
Texture2D<float4> floatZSampler : register(t6);
Texture2D<float4> resolvedNormal : register(t7);
Texture2D<float4> colorMap : register(t9);
Texture2D<float4> normalMap : register(t10);
Texture2D<float4> glossMap : register(t11);
Texture2D<float4> aoMap : register(t12);
Texture2D<float4> revealMap : register(t14);
Texture2D<float4> transitionDiffuse : register(t15);
Texture2D<float4> transitionNormal : register(t16);
Texture2D<float4> transitionGloss : register(t17);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  nointerpolation float4 v1 : TEXCOORD1,
  nointerpolation float4 v2 : TEXCOORD2,
  nointerpolation float4 v3 : TEXCOORD3,
  nointerpolation float4 v4 : TEXCOORD4,
  nointerpolation float3 v5 : TEXCOORD5,
  nointerpolation uint w5 : TEXCOORD13,
  nointerpolation float4 v6 : TEXCOORD6,
  nointerpolation float4 v7 : TEXCOORD7,
  nointerpolation float4 v8 : TEXCOORD8,
  float4 v9 : TEXCOORD9,
  nointerpolation float4 v10 : TEXCOORD12,
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

  r0.xy = (int2)v0.xy;
  r0.zw = float2(0,0);
  r0.x = floatZSampler.Load(r0.xyz).x;
  r0.y = cmp(r0.x >= 0.984375);
  r0.z = 1.01587307 * r0.x;
  r0.x = r0.x * 64 + -63;
  r0.x = r0.y ? r0.x : r0.z;
  r0.x = max(9.99999994e-09, r0.x);
  r0.x = rcp(r0.x);
  r0.yz = -subpixelOffset.xy + v0.xy;
  r0.yz = renderTargetSize.zw * r0.yz;
  r0.yz = r0.yz * float2(2,-2) + float2(-1,1);
  r1.x = inverseProjectionMatrix._m00 * r0.y;
  r1.y = inverseProjectionMatrix._m11 * r0.z;
  r1.z = 1;
  r0.xyz = r1.xyz * r0.xxx;
  r1.xyz = inverseViewMatrix._m11_m12_m10 * r0.yyy;
  r0.xyw = r0.xxx * inverseViewMatrix._m01_m02_m00 + r1.xyz;
  r0.xyz = r0.zzz * inverseViewMatrix._m21_m22_m20 + r0.xyw;
  r1.xyz = eyeOffset.xyz + r0.zxy;
  r2.xyz = v2.xyz * r1.yyy;
  r1.xyw = r1.xxx * v1.xyz + r2.xyz;
  r1.xyz = r1.zzz * v3.xyz + r1.xyw;
  r1.xyz = v4.xyz + r1.xyz;
  r2.xyz = float3(1,1,1) + -abs(r1.xyz);
  r2.xyz = cmp(r2.xyz < float3(0,0,0));
  r0.w = (int)r2.y | (int)r2.x;
  r0.w = (int)r2.z | (int)r0.w;
  if (r0.w != 0) discard;
  if (w5.x != 0) {
    r2.xyz = ddy_coarse(r0.yzx);
    r0.xyz = ddx_coarse(r0.xyz);
    r3.xyz = r2.xyz * r0.xyz;
    r0.xyz = r2.zxy * r0.yzx + -r3.xyz;
    r0.w = dot(r0.xyz, r0.xyz);
    r0.w = rsqrt(r0.w);
    r0.xyz = r0.xyz * r0.www;
    r0.x = dot(r0.xyz, v5.xyz);
    r0.x = -0.5 + r0.x;
    r0.x = cmp(r0.x < 0);
    if (r0.x != 0) discard;
  } else {
    r0.xy = (uint2)v0.xy;
    r0.zw = float2(0,0);
    r0.xyz = resolvedNormal.Load(r0.xyz).xyw;
    r0.z = r0.z * 3 + 0.5;
    r0.z = (uint)r0.z;
    r0.xy = r0.xy * float2(2,2) + float2(-1,-1);
    r0.xy = float2(0.850000024,0.850000024) * r0.xy;
    r0.w = dot(r0.xy, r0.xy);
    r2.zw = float2(2,1) + -r0.ww;
    r0.w = sqrt(r2.z);
    r2.xy = r0.xy * r0.ww;
    r0.xyzw = (int4)r0.zzzz & int4(2,1,2,1);
    r0.xyzw = r0.zwxy ? float4(-1,-1,1.40129846e-45,1.40129846e-45) : float4(1,1,0,0);
    r0.w = (int)r0.w ^ (int)r0.z;
    r0.z = r0.w ? -1 : 1;
    r3.xyz = float3(-1,0,1) * r0.xyz;
    r4.xyz = float3(1,-2,1) * r0.xyz;
    r2.xyz = float3(0.408248305,0.707106769,0.577350259) * r2.xyw;
    r3.xyz = r3.xyz * r2.yyy;
    r2.xyw = r4.xyz * r2.xxx + r3.xyz;
    r0.xyz = r0.xyz * r2.zzz + r2.xyw;
    r0.x = dot(r0.xyz, v5.xyz);
    r0.x = -0.5 + r0.x;
    r0.x = cmp(r0.x < 0);
    if (r0.x != 0) discard;
  }
  r0.xy = r1.yz * float2(0.5,-0.5) + float2(0.5,0.5);
  r0.xy = r0.xy * v10.zw + v10.xy;
  r1.xyz = colorMap.Sample(colorSampler_s, r0.xy).xyz;
  r1.xyz = v8.xyz * r1.xyz;
  r0.z = aoMap.Sample(aoSampler_s, r0.xy).x;
  r0.w = glossMap.Sample(specColorSampler_s, r0.xy).x;
  r1.w = glossRange.y + -glossRange.x;
  r0.w = r0.w * r1.w + glossRange.x;
  r0.w = saturate(0.0588235296 * r0.w);
  r2.xyz = normalMap.Sample(normalSampler_s, r0.xy).xyz;
  r2.xyz = float3(-0.5,-0.5,-0) + r2.xyz;
  r2.xyz = baseNormalHeight * r2.xyz + float3(0.5,0.5,0);
  r2.xy = r2.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.w = dot(r2.xy, r2.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r2.z = r2.z * r2.z;
  r2.z = 0.333333343 * r2.z;
  r2.z = min(1, r2.z);
  r3.x = dot(v5.xyz, v5.xyz);
  r3.x = rsqrt(r3.x);
  r3.yzw = v5.xyz * r3.xxx;
  r4.x = dot(v6.xyz, v6.xyz);
  r4.x = rsqrt(r4.x);
  r4.xyz = v6.xyz * r4.xxx;
  r4.w = dot(v7.xyz, v7.xyz);
  r4.w = rsqrt(r4.w);
  r5.xyz = v7.xyz * r4.www;
  r0.w = -17 * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r2.z + r0.w;
  r0.w = log2(r0.w);
  r0.w = -0.0588235296 * r0.w;
  r0.w = max(0, r0.w);
  r6.xyz = r5.xyz * r2.yyy;
  r6.xyz = r4.xyz * r2.xxx + r6.xyz;
  r2.xyw = r3.yzw * r2.www + r6.xyz;
  r4.w = dot(r2.xyw, r2.xyw);
  r4.w = rsqrt(r4.w);
  r2.xyw = r4.www * r2.xyw;
  r4.w = debugGlossOverride.x * r1.w + glossRange.x;
  r4.w = saturate(0.0588235296 * r4.w);
  r5.w = -17 * r4.w;
  r5.w = exp2(r5.w);
  r2.z = r5.w + r2.z;
  r2.z = log2(r2.z);
  r2.z = -0.0588235296 * r2.z;
  r2.z = max(0, r2.z);
  r5.w = cmp(0 < debugStreamerControl.w);
  if (r5.w != 0) {
    r6.x = (int)debugStreamerControl.w;
    r6.y = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, r0.xy);
    r6.z = colorMap.CalculateLevelOfDetail(colorSampler_s, r0.xy);
    r6.y = cmp(r6.y < r6.z);
    r6.z = cmp(0 < r6.z);
    r7.xyz = (int3)r6.xxx & int3(1,2,4);
    r8.xyz = r7.xxx ? float3(1,0,1) : r1.xyz;
    r7.xyw = r7.yyy ? float3(0,1,1) : r1.xyz;
    r6.xzw = r6.zzz ? r8.xyz : r7.xyw;
    r7.xyz = r7.zzz ? float3(0,1,0) : r1.xyz;
    r1.xyz = r6.yyy ? r6.xzw : r7.xyz;
  }
  r6.xyz = debugColorOverride.xyz + -r1.xyz;
  r1.xyz = debugColorOverride.www * r6.xyz + r1.xyz;
  r6.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + debugSpecularOverride.xyz;
  r6.xyz = debugSpecularOverride.www * r6.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r2.z = r2.z + -r0.w;
  r0.w = debugGlossOverride.w * r2.z + r0.w;
  r2.z = debugOcclusionOverride.x + -r0.z;
  r0.z = debugOcclusionOverride.w * r2.z + r0.z;
  r7.xyz = v5.xyz * r3.xxx + -r2.xyw;
  r2.xyz = debugNormalOverride.www * r7.xyz + r2.xyw;
  r7.xyz = transitionDiffuse.Sample(colorSampler_s, r0.xy).xyz;
  r7.xyz = v8.xyz * r7.xyz;
  r2.w = transitionGloss.Sample(specColorSampler_s, r0.xy).x;
  r1.w = r2.w * r1.w + glossRange.x;
  r1.w = saturate(0.0588235296 * r1.w);
  r8.xyz = transitionNormal.Sample(normalSampler_s, r0.xy).xyz;
  r8.xyz = float3(-0.5,-0.5,-0) + r8.xyz;
  r8.xyz = baseNormalHeight * r8.xyz + float3(0.5,0.5,0);
  r8.xy = r8.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.w = dot(r8.xy, r8.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r6.w = r8.z * r8.z;
  r6.w = 0.333333343 * r6.w;
  r6.w = min(1, r6.w);
  r1.w = -17 * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r6.w + r1.w;
  r1.w = log2(r1.w);
  r1.w = -0.0588235296 * r1.w;
  r1.w = max(0, r1.w);
  r5.xyz = r8.yyy * r5.xyz;
  r4.xyz = r4.xyz * r8.xxx + r5.xyz;
  r3.yzw = r3.yzw * r2.www + r4.xyz;
  r2.w = dot(r3.yzw, r3.yzw);
  r2.w = rsqrt(r2.w);
  r3.yzw = r3.yzw * r2.www;
  if (r5.w != 0) {
    r2.w = (int)debugStreamerControl.w;
    r4.x = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, r0.xy);
    r4.y = colorMap.CalculateLevelOfDetail(colorSampler_s, r0.xy);
    r4.x = cmp(r4.x < r4.y);
    r4.y = cmp(0 < r4.y);
    r5.xyz = (int3)r2.www & int3(1,2,4);
    r8.xyz = r5.xxx ? float3(1,0,1) : r7.xyz;
    r5.xyw = r5.yyy ? float3(0,1,1) : r7.xyz;
    r5.xyw = r4.yyy ? r8.xyz : r5.xyw;
    r8.xyz = r5.zzz ? float3(0,1,0) : r7.xyz;
    r7.xyz = r4.xxx ? r5.xyw : r8.xyz;
  }
  r4.xyz = debugColorOverride.xyz + -r7.xyz;
  r4.xyz = debugColorOverride.www * r4.xyz + r7.xyz;
  r2.w = r4.w * 1 + -r1.w;
  r1.w = debugGlossOverride.w * r2.w + r1.w;
  r2.w = -1 + debugOcclusionOverride.x;
  r2.w = debugOcclusionOverride.w * r2.w + 1;
  r5.xyz = v5.xyz * r3.xxx + -r3.yzw;
  r3.xyz = debugNormalOverride.www * r5.xyz + r3.yzw;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r3.w, l(0), l(4), t4.xxxx
r3.w = colorSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r3.w, r3.w, l(0), t0.xxxx
r3.w = colorSampler[]..swiz;
  r0.x = revealMap.Sample(revealSampler_s, r0.xy).x;
  r0.y = saturate(r3.w * 0.998000026 + 0.00100000005);
  r3.w = 1 + -r0.y;
  r4.w = saturate(alphaRevealParms.y);
  r0.y = log2(r0.y);
  r0.y = r4.w * r0.y;
  r0.y = exp2(r0.y);
  r5.x = -r0.y;
  r0.y = log2(r3.w);
  r0.y = r4.w * r0.y;
  r5.y = exp2(r0.y);
  r5.xy = saturate(alphaRevealParms.xx * r5.xy + r3.ww);
  r0.x = -r5.x + r0.x;
  r0.y = r5.y + -r5.x;
  r0.x = saturate(r0.x / r0.y);
  r0.y = cmp(r0.x >= 0.99000001);
  r0.y = r0.y ? 1.000000 : 0;
  r1.xyz = -r4.xyz + r1.xyz;
  r1.xyz = r0.yyy * r1.xyz + r4.xyz;
  r0.w = -r1.w + r0.w;
  r0.w = r0.y * r0.w + r1.w;
  r4.z = min(r2.w, r0.z);
  r2.xyz = -r3.xyz + r2.xyz;
  r2.xyz = r0.yyy * r2.xyz + r3.xyz;
  o0.xyz = r1.xyz * r0.xxx;
  r1.xy = (uint2)v0.xy;
  r1.zw = float2(0,0);
  r0.yz = resolvedNormal.Load(r1.xyz).zw;
  r1.z = cmp(0 < r0.y);
  r0.z = r0.z * 3 + 0.5;
  r0.z = (uint)r0.z;
  r3.xyzw = (int4)r0.zzzz & int4(2,1,2,1);
  r3.xyzw = r3.zwxy ? float4(-0.577350259,-0.577350259,1.40129846e-45,1.40129846e-45) : float4(0.577350259,0.577350259,0,0);
  r0.z = (int)r3.w ^ (int)r3.z;
  r3.z = r0.z ? -0.577350259 : 0.577350259;
  r5.xy = float2(-1.22474492,1.22474492) * r3.xz;
  r7.xyz = float3(0.707106769,-1.41421354,0.707106769) * r3.xyz;
  r7.x = dot(r2.xyz, r7.xyz);
  r7.y = dot(r2.xz, r5.xy);
  r0.z = dot(r2.xyz, r3.xyz);
  r0.z = 1 + abs(r0.z);
  r0.z = rsqrt(r0.z);
  r2.xy = r7.xy * r0.zz;
  r2.xy = r2.xy * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  r0.y = cmp(r0.y >= 0.5);
  r0.y = r0.y ? 0.5 : 0.00146627566;
  r2.z = r0.w * 0.49755621 + r0.y;
  r0.yzw = r1.zzz ? r2.xyz : 0;
  o1.xyz = r0.yzw * r0.xxx;
  r2.y = r6.x + -r6.z;
  r0.y = r2.y * 0.5 + r6.z;
  r2.z = r6.y + -r0.y;
  r2.x = r2.z * 0.5 + r0.y;
  r0.yz = (int2)r1.xy & int2(1,1);
  r0.y = cmp((int)r0.z == (int)r0.y);
  r0.yz = r0.yy ? r2.xy : r2.xz;
  r4.xy = r0.yz * float2(1,0.5) + float2(0,0.5);
  r4.w = 1;
  o2.xyzw = r4.xyzw * r0.xxxx;
  o0.w = r0.x;
  o1.w = r0.x;
  return;
}