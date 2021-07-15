// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:28:06 2021

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
  float3 specColorTint : packoffset(c12);
  float baseNormalHeight : packoffset(c12.w);
  float2 glossRange : packoffset(c13);
  float detailScaleHeight : packoffset(c13.z);
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
Texture2D<float4> resolvedNormal : register(t0);
Texture2D<float4> revealMap : register(t6);
Texture2D<float4> colorMap : register(t7);
Texture2D<float4> tintMask : register(t9);
Texture2D<float4> specColorMap : register(t10);
Texture2D<float4> normalMap : register(t11);
Texture2D<float4> glossMap : register(t12);
Texture2D<float4> aoMap : register(t14);
Texture2D<float4> detailMap : register(t15);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float3 v1 : COLOR0,
  float w1 : COLOR1,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float4 v4 : TEXCOORD2,
  float3 v5 : TEXCOORD3,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = colorMap.Sample(colorSampler_s, v2.xy).xyz;
  r0.w = tintMask.Sample(colorSampler_s, v2.xy).x;
  r1.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r1.xyz = r0.www * r1.xyz + float3(1,1,1);
  r0.xyz = r1.xyz * r0.xyz;
  r0.xyz = v1.xyz * r0.xyz;
  r1.xy = revealScale.xy * v2.xy;
  r0.w = revealMap.Sample(revealSampler_s, r1.xy).x;
  r1.x = saturate(w1.x * 0.998000026 + 0.00100000005);
  r1.y = 1 + -r1.x;
  r1.z = saturate(alphaRevealRamp);
  r1.x = log2(r1.x);
  r1.x = r1.z * r1.x;
  r1.x = exp2(r1.x);
  r2.x = -r1.x;
  r1.x = log2(r1.y);
  r1.x = r1.z * r1.x;
  r2.y = exp2(r1.x);
  r1.xy = saturate(alphaRevealSoftEdge * r2.xy + r1.yy);
  r0.w = -r1.x + r0.w;
  r1.x = r1.y + -r1.x;
  r0.w = saturate(r0.w / r1.x);
  r1.x = specColorMap.Sample(specColorSampler_s, v2.xy).x;
  r1.yzw = float3(-0.0399999991,-0.0399999991,-0.0399999991) + specColorTint.xyz;
  r1.yzw = r1.xxx * r1.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r1.x = saturate(1 + -r1.x);
  r0.xyz = r1.xxx * r0.xyz;
  r1.x = aoMap.Sample(aoSampler_s, v2.xy).x;
  r2.x = glossMap.Sample(specColorSampler_s, v2.xy).x;
  r2.y = glossRange.y + -glossRange.x;
  r2.x = r2.x * r2.y + glossRange.x;
  r2.x = saturate(0.0588235296 * r2.x);
  r3.xyz = normalMap.Sample(normalSampler_s, v2.xy).xyz;
  r3.xyz = float3(-0.5,-0.5,-0) + r3.xyz;
  r3.xyz = baseNormalHeight * r3.xyz + float3(0.5,0.5,0);
  r2.zw = r3.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r3.x = dot(r2.zw, r2.zw);
  r3.x = 1 + -r3.x;
  r3.x = max(0, r3.x);
  r4.z = sqrt(r3.x);
  r3.x = r3.z * r3.z;
  r3.x = 0.333333343 * r3.x;
  r3.x = min(1, r3.x);
  r3.yz = detailScale.xy * v2.xy;
  r3.yzw = detailMap.Sample(normalSampler_s, r3.yz).xyz;
  r3.yz = r3.yz * float2(1.9921875,1.9921875) + float2(-1,-1);
  r3.w = r3.w * r3.w;
  r3.w = 0.333333343 * r3.w;
  r3.w = min(1, r3.w);
  r4.xy = r3.yz * detailScaleHeight + r2.zw;
  r2.z = dot(r4.xyz, r4.xyz);
  r2.z = rsqrt(r2.z);
  r4.xyz = r4.xyz * r2.zzz;
  r2.z = r3.w * detailScaleHeight + r3.x;
  r2.w = v6.x ? 1 : -1;
  r3.x = dot(v3.xyz, v3.xyz);
  r3.x = rsqrt(r3.x);
  r3.xyz = v3.xyz * r3.xxx;
  r3.xyz = r3.xyz * r2.www;
  r3.w = dot(v4.xyz, v4.xyz);
  r3.w = rsqrt(r3.w);
  r5.xyz = v4.xyz * r3.www;
  r5.xyz = r5.xyz * r2.www;
  r3.w = dot(v5.xyz, v5.xyz);
  r3.w = rsqrt(r3.w);
  r6.xyz = v5.xyz * r3.www;
  r6.xyz = r6.xyz * r2.www;
  r2.x = -17 * r2.x;
  r2.x = exp2(r2.x);
  r2.x = r2.z + r2.x;
  r2.x = log2(r2.x);
  r6.xyz = r6.xyz * r4.yyy;
  r4.xyw = r5.xyz * r4.xxx + r6.xyz;
  r3.xyz = r3.xyz * r4.zzz + r4.xyw;
  r2.w = dot(r3.xyz, r3.xyz);
  r2.w = rsqrt(r2.w);
  r3.xyz = r3.xyz * r2.www;
  r2.y = debugGlossOverride.x * r2.y + glossRange.x;
  r2.xy = saturate(float2(-0.0588235296,0.0588235296) * r2.xy);
  r2.y = -17 * r2.y;
  r2.y = exp2(r2.y);
  r2.y = r2.z + r2.y;
  r2.y = log2(r2.y);
  r2.y = saturate(-0.0588235296 * r2.y);
  r2.z = cmp(0 < debugStreamerControl.w);
  if (r2.z != 0) {
    r2.z = (int)debugStreamerControl.w;
    r2.w = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, v2.xy);
    r3.w = colorMap.CalculateLevelOfDetail(colorSampler_s, v2.xy);
    r2.w = cmp(r2.w < r3.w);
    r3.w = cmp(0 < r3.w);
    r4.xyz = (int3)r2.zzz & int3(1,2,4);
    r5.xyz = r4.xxx ? float3(1,0,1) : r0.xyz;
    r4.xyw = r4.yyy ? float3(0,1,1) : r0.xyz;
    r4.xyw = r3.www ? r5.xyz : r4.xyw;
    r5.xyz = r4.zzz ? float3(0,1,0) : r0.xyz;
    r0.xyz = r2.www ? r4.xyw : r5.xyz;
  }
  r4.xyz = debugColorOverride.xyz + -r0.xyz;
  r0.xyz = debugColorOverride.www * r4.xyz + r0.xyz;
  r2.z = debugAlphaOverride.x + -r0.w;
  r0.w = debugAlphaOverride.w * r2.z + r0.w;
  r4.xyz = debugSpecularOverride.xyz + -r1.yzw;
  r1.yzw = debugSpecularOverride.www * r4.xyz + r1.yzw;
  r2.y = r2.y + -r2.x;
  r2.x = debugGlossOverride.w * r2.y + r2.x;
  r2.y = debugOcclusionOverride.x + -r1.x;
  r4.z = debugOcclusionOverride.w * r2.y + r1.x;
  r2.yzw = v6.xxx ? v3.xyz : -v3.xyz;
  r1.x = dot(r2.yzw, r2.yzw);
  r1.x = rsqrt(r1.x);
  r2.yzw = r2.yzw * r1.xxx + -r3.xyz;
  r2.yzw = debugNormalOverride.www * r2.yzw + r3.xyz;
  o0.xyz = r0.xyz * r0.www;
  r3.xy = (uint2)v0.xy;
  r3.zw = float2(0,0);
  r0.xy = resolvedNormal.Load(r3.xyz).zw;
  r0.z = cmp(0 < r0.x);
  r0.y = r0.y * 3 + 0.5;
  r0.y = (uint)r0.y;
  r5.xyzw = (int4)r0.yyyy & int4(2,1,2,1);
  r5.xyzw = r5.zwxy ? float4(-0.577350259,-0.577350259,1.40129846e-45,1.40129846e-45) : float4(0.577350259,0.577350259,0,0);
  r0.y = (int)r5.w ^ (int)r5.z;
  r5.z = r0.y ? -0.577350259 : 0.577350259;
  r3.zw = float2(-1.22474492,1.22474492) * r5.xz;
  r6.xyz = float3(0.707106769,-1.41421354,0.707106769) * r5.xyz;
  r6.x = dot(r2.yzw, r6.xyz);
  r6.y = dot(r2.yw, r3.zw);
  r0.y = dot(r2.yzw, r5.xyz);
  r0.y = 1 + abs(r0.y);
  r0.y = rsqrt(r0.y);
  r2.yz = r6.xy * r0.yy;
  r5.xy = r2.yz * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  r0.x = cmp(r0.x >= 0.5);
  r0.x = r0.x ? 0.5 : 0.00146627566;
  r5.z = r2.x * 0.49755621 + r0.x;
  r0.xyz = r0.zzz ? r5.xyz : 0;
  o1.xyz = r0.xyz * r0.www;
  r0.y = r1.y + -r1.w;
  r1.x = r0.y * 0.5 + r1.w;
  r0.z = r1.z + -r1.x;
  r0.x = r0.z * 0.5 + r1.x;
  r1.xy = (int2)r3.xy & int2(1,1);
  r1.x = cmp((int)r1.y == (int)r1.x);
  r0.xy = r1.xx ? r0.xy : r0.xz;
  r4.xy = r0.xy * float2(1,0.5) + float2(0,0.5);
  r4.w = 1;
  o2.xyzw = r4.xyzw * r0.wwww;
  o0.w = r0.w;
  o1.w = r0.w;
  return;
}