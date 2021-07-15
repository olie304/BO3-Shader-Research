// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:27:38 2021

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
  float baseNormalHeight : packoffset(c10.w);
  float2 glossRange : packoffset(c11);
  float2 mixScale : packoffset(c11.z);
  float detailScaleHeight1 : packoffset(c12);
  float detailScaleHeight2 : packoffset(c12.y);
  float4 colorTint1 : packoffset(c13);
  float2 glossRange2 : packoffset(c14);
  float rotateUVs1 : packoffset(c14.z);
  float rotateUVs2 : packoffset(c14.w);
  bool useUVOffsets1 : packoffset(c15);
  bool useUVOffsets2 : packoffset(c15.y);
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
SamplerState mixSampler_s : register(s5);
Texture2D<float4> resolvedNormal : register(t0);
Texture2D<float4> colorMap : register(t6);
Texture2D<float4> tintMask : register(t7);
Texture2D<float4> normalMap : register(t9);
Texture2D<float4> glossMap : register(t10);
Texture2D<float4> aoMap : register(t11);
Texture2D<float4> detailMap1 : register(t12);
Texture2D<float4> tintMask2 : register(t14);
Texture2D<float4> detailMap2 : register(t15);
Texture2D<float4> glossMapDetail2 : register(t16);
Texture2D<float4> colorMapDetail2 : register(t17);
Texture2D<float4> mixMap : register(t18);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float v1 : COLOR1,
  float2 w1 : TEXCOORD0,
  nointerpolation float3 v2 : UVOFFSETS0,
  float4 v3 : TEXCOORD1,
  float4 v4 : TEXCOORD2,
  float3 v5 : TEXCOORD3,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = mixScale.xy * w1.xy;
  r0.x = mixMap.Sample(mixSampler_s, r0.xy).x;
  r0.yzw = normalMap.Sample(normalSampler_s, w1.xy).xyz;
  r0.yzw = float3(-0.5,-0.5,-0) + r0.yzw;
  r0.yzw = baseNormalHeight * r0.yzw + float3(0.5,0.5,0);
  r0.yz = r0.yz * float2(1.9921875,1.9921875) + float2(-1,-1);
  r1.x = dot(r0.yz, r0.yz);
  r1.x = 1 + -r1.x;
  r1.x = max(0, r1.x);
  r1.z = sqrt(r1.x);
  r0.w = r0.w * r0.w;
  r0.w = 0.333333343 * r0.w;
  r0.w = min(1, r0.w);
  sincos(rotateUVs1, r2.x, r3.x);
  r4.x = -r2.x;
  r2.yz = float2(-0.5,-0.5) + w1.xy;
  r4.y = r3.x;
  r4.z = r2.x;
  r3.x = dot(r2.yz, r4.yz);
  r3.y = dot(r2.yz, r4.xy);
  r2.xw = v2.yx + r3.xy;
  r1.w = 0.5 + v2.z;
  r2.xw = r2.xw + r1.ww;
  r2.xw = detailScale1.xy * r2.xw;
  r3.xy = float2(0.5,0.5) + r3.xy;
  r3.xy = detailScale1.xy * r3.xy;
  r2.xw = useUVOffsets1 ? r2.xw : r3.xy;
  r3.xyzw = colorMap.Sample(colorSampler_s, r2.xw).xyzw;
  r4.x = tintMask.Sample(colorSampler_s, r2.xw).x;
  r4.yzw = float3(-1,-1,-1) + colorTint.xyz;
  r4.xyz = r4.xxx * r4.yzw + float3(1,1,1);
  r3.xyz = r4.xyz * r3.xyz;
  r4.x = glossMap.Sample(specColorSampler_s, r2.xw).x;
  r4.yzw = detailMap1.Sample(normalSampler_s, r2.xw).xyz;
  r2.xw = r4.yz * float2(1.9921875,1.9921875) + float2(-1,-1);
  r4.y = r4.w * r4.w;
  r4.y = 0.333333343 * r4.y;
  sincos(rotateUVs2, r5.x, r6.x);
  r7.x = -r5.x;
  r7.y = r6.x;
  r7.z = r5.x;
  r5.x = dot(r2.yz, r7.yz);
  r5.y = dot(r2.yz, r7.xy);
  r2.yz = v2.yx + r5.xy;
  r2.yz = r2.yz + r1.ww;
  r2.yz = detailScale2.xy * r2.yz;
  r4.zw = float2(0.5,0.5) + r5.xy;
  r4.zw = detailScale2.xy * r4.zw;
  r2.yz = useUVOffsets1 ? r2.yz : r4.zw;
  r5.xyzw = colorMapDetail2.Sample(colorSampler_s, r2.yz).xyzw;
  r1.w = tintMask2.Sample(colorSampler_s, r2.yz).x;
  r6.xyz = float3(-1,-1,-1) + colorTint1.xyz;
  r6.xyz = r1.www * r6.xyz + float3(1,1,1);
  r5.xyz = r6.xyz * r5.xyz;
  r1.w = glossMapDetail2.Sample(specColorSampler_s, r2.yz).x;
  r6.xyz = detailMap2.Sample(normalSampler_s, r2.yz).xyz;
  r5.xyzw = r5.xyzw + -r3.xyzw;
  r3.xyzw = r0.xxxx * r5.xyzw + r3.xyzw;
  r2.y = glossRange.y + -glossRange.x;
  r2.z = r4.x * r2.y + glossRange.x;
  r2.z = saturate(0.0588235296 * r2.z);
  r4.x = glossRange2.y + -glossRange2.x;
  r1.w = r1.w * r4.x + glossRange2.x;
  r1.w = saturate(0.0588235296 * r1.w);
  r1.w = r1.w + -r2.z;
  r1.w = r0.x * r1.w + r2.z;
  r2.z = aoMap.Sample(aoSampler_s, w1.xy).x;
  r4.xz = r6.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r4.w = r6.z * r6.z;
  r4.w = 0.333333343 * r4.w;
  r4.yw = min(float2(1,1), r4.yw);
  r1.xy = r2.xw * detailScaleHeight1 + r0.yz;
  r2.x = dot(r1.xyz, r1.xyz);
  r2.x = rsqrt(r2.x);
  r5.xyz = r2.xxx * r1.xyz;
  r5.w = r4.y * detailScaleHeight1 + r0.w;
  r1.xy = r4.xz * detailScaleHeight2 + r0.yz;
  r0.y = dot(r1.xyz, r1.xyz);
  r0.y = rsqrt(r0.y);
  r6.xyz = r1.xyz * r0.yyy;
  r6.w = r4.w * detailScaleHeight2 + r0.w;
  r4.xyzw = r6.xyzw + -r5.xyzw;
  r0.xyzw = r0.xxxx * r4.xyzw + r5.xyzw;
  r1.x = v6.x ? 1 : -1;
  r1.y = dot(v3.xyz, v3.xyz);
  r1.y = rsqrt(r1.y);
  r4.xyz = v3.xyz * r1.yyy;
  r4.xyz = r4.xyz * r1.xxx;
  r1.z = dot(v4.xyz, v4.xyz);
  r1.z = rsqrt(r1.z);
  r5.xyz = v4.xyz * r1.zzz;
  r5.xyz = r5.xyz * r1.xxx;
  r1.z = dot(v5.xyz, v5.xyz);
  r1.z = rsqrt(r1.z);
  r6.xyz = v5.xyz * r1.zzz;
  r6.xyz = r6.xyz * r1.xxx;
  r1.x = -17 * r1.w;
  r1.x = exp2(r1.x);
  r0.w = r1.x + r0.w;
  r0.w = log2(r0.w);
  r0.w = saturate(-0.0588235296 * r0.w);
  r1.xzw = r6.xyz * r0.yyy;
  r1.xzw = r5.xyz * r0.xxx + r1.xzw;
  r0.xyz = r4.xyz * r0.zzz + r1.xzw;
  r1.x = dot(r0.xyz, r0.xyz);
  r1.x = rsqrt(r1.x);
  r0.xyz = r1.xxx * r0.xyz;
  r1.x = debugGlossOverride.x * r2.y + glossRange.x;
  r1.x = saturate(0.0588235296 * r1.x);
  r1.z = cmp(0 < debugStreamerControl.w);
  if (r1.z != 0) {
    r1.z = (int)debugStreamerControl.w;
    r1.w = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, w1.xy);
    r2.x = colorMap.CalculateLevelOfDetail(colorSampler_s, w1.xy);
    r1.w = cmp(r1.w < r2.x);
    r2.x = cmp(0 < r2.x);
    r4.xyz = (int3)r1.zzz & int3(1,2,4);
    r5.xyz = r4.xxx ? float3(1,0,1) : r3.xyz;
    r4.xyw = r4.yyy ? float3(0,1,1) : r3.xyz;
    r2.xyw = r2.xxx ? r5.xyz : r4.xyw;
    r4.xyz = r4.zzz ? float3(0,1,0) : r3.xyz;
    r3.xyz = r1.www ? r2.xyw : r4.xyz;
  }
  r2.xyw = debugColorOverride.xyz + -r3.xyz;
  r2.xyw = debugColorOverride.www * r2.xyw + r3.xyz;
  r1.z = debugAlphaOverride.x + -r3.w;
  r1.z = debugAlphaOverride.w * r1.z + r3.w;
  r3.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + debugSpecularOverride.xyz;
  r3.xyz = debugSpecularOverride.www * r3.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r1.x = r1.x + -r0.w;
  r0.w = debugGlossOverride.w * r1.x + r0.w;
  r1.x = debugOcclusionOverride.x + -r2.z;
  r4.z = debugOcclusionOverride.w * r1.x + r2.z;
  r1.xyw = v3.xyz * r1.yyy + -r0.xyz;
  r0.xyz = debugNormalOverride.www * r1.xyw + r0.xyz;
  o0.xyz = r2.xyw * r1.zzz;
  r2.xy = (uint2)v0.xy;
  r2.zw = float2(0,0);
  r1.xy = resolvedNormal.Load(r2.xyz).zw;
  r1.w = cmp(0 < r1.x);
  r1.y = r1.y * 3 + 0.5;
  r1.y = (uint)r1.y;
  r5.xyzw = (int4)r1.yyyy & int4(2,1,2,1);
  r5.xyzw = r5.zwxy ? float4(-0.577350259,-0.577350259,1.40129846e-45,1.40129846e-45) : float4(0.577350259,0.577350259,0,0);
  r1.y = (int)r5.w ^ (int)r5.z;
  r5.z = r1.y ? -0.577350259 : 0.577350259;
  r2.zw = float2(-1.22474492,1.22474492) * r5.xz;
  r6.xyz = float3(0.707106769,-1.41421354,0.707106769) * r5.xyz;
  r6.x = dot(r0.xyz, r6.xyz);
  r6.y = dot(r0.xz, r2.zw);
  r0.x = dot(r0.xyz, r5.xyz);
  r0.x = 1 + abs(r0.x);
  r0.x = rsqrt(r0.x);
  r0.xy = r6.xy * r0.xx;
  r0.xy = r0.xy * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  r1.x = cmp(r1.x >= 0.5);
  r1.x = r1.x ? 0.5 : 0.00146627566;
  r0.z = r0.w * 0.49755621 + r1.x;
  r0.xyz = r1.www ? r0.xyz : 0;
  o1.xyz = r0.xyz * r1.zzz;
  r0.y = r3.x + -r3.z;
  r0.w = r0.y * 0.5 + r3.z;
  r0.z = r3.y + -r0.w;
  r0.x = r0.z * 0.5 + r0.w;
  r1.xy = (int2)r2.xy & int2(1,1);
  r0.w = cmp((int)r1.y == (int)r1.x);
  r0.xy = r0.ww ? r0.xy : r0.xz;
  r4.xy = r0.xy * float2(1,0.5) + float2(0,0.5);
  r4.w = 1;
  o2.xyzw = r4.xyzw * r1.zzzz;
  o0.w = r1.z;
  o1.w = r1.z;
  return;
}