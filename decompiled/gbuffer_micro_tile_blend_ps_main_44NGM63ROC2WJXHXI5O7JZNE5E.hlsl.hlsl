// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:30:42 2021

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
  float2 mixScale : packoffset(c11.z);
  float detailScaleHeight1 : packoffset(c12);
  float detailScaleHeight2 : packoffset(c12.y);
  float4 colorTint : packoffset(c13);
  float4 colorTint1 : packoffset(c14);
  float2 glossRange2 : packoffset(c15);
  float rotateUVs1 : packoffset(c15.z);
  float rotateUVs2 : packoffset(c15.w);
  bool useUVOffsets1 : packoffset(c16);
  bool useUVOffsets2 : packoffset(c16.y);
  float4 specColorTint1 : packoffset(c17);
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
Texture2D<float4> colorMap : register(t0);
Texture2D<float4> specColorMap : register(t6);
Texture2D<float4> normalMap : register(t7);
Texture2D<float4> glossMap : register(t9);
Texture2D<float4> aoMap : register(t10);
Texture2D<float4> detailMap1 : register(t11);
Texture2D<float4> detailMap2 : register(t12);
Texture2D<float4> glossMapDetail2 : register(t14);
Texture2D<float4> colorMapDetail2 : register(t15);
Texture2D<float4> mixMap : register(t16);
Texture2D<float4> specularMapDetail2 : register(t17);


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
  float4 v5 : TEXCOORD3,
  float4 v6 : TEXCOORD7,
  uint v7 : SV_IsFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2,
  out float2 o3 : SV_TARGET3)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  sincos(rotateUVs1, r0.x, r1.x);
  r2.z = r0.x;
  r2.y = r1.x;
  r2.x = -r0.x;
  r0.xy = float2(-0.5,-0.5) + w1.xy;
  r1.x = dot(r0.xy, r2.yz);
  r1.y = dot(r0.xy, r2.xy);
  r0.zw = v2.yx + r1.xy;
  r1.xy = float2(0.5,0.5) + r1.xy;
  r1.xy = detailScale1.xy * r1.xy;
  r1.z = 0.5 + v2.z;
  r0.zw = r1.zz + r0.zw;
  r0.zw = detailScale1.xy * r0.zw;
  r0.zw = useUVOffsets1 ? r0.zw : r1.xy;
  r2.xyzw = colorMap.Sample(colorSampler_s, r0.zw).xyzw;
  r1.xyw = float3(-1,-1,-1) + colorTint.xyz;
  r1.xyw = r2.www * r1.xyw + float3(1,1,1);
  r1.xyw = r2.xyz * r1.xyw;
  sincos(rotateUVs2, r2.x, r3.x);
  r4.z = r2.x;
  r4.y = r3.x;
  r4.x = -r2.x;
  r2.y = dot(r0.xy, r4.xy);
  r2.x = dot(r0.xy, r4.yz);
  r0.xy = v2.yx + r2.xy;
  r2.xy = float2(0.5,0.5) + r2.xy;
  r2.xy = detailScale2.xy * r2.xy;
  r0.xy = r0.xy + r1.zz;
  r0.xy = detailScale2.xy * r0.xy;
  r0.xy = useUVOffsets1 ? r0.xy : r2.xy;
  r2.xyzw = colorMapDetail2.Sample(colorSampler_s, r0.xy).xyzw;
  r3.xyz = float3(-1,-1,-1) + colorTint1.xyz;
  r3.xyz = r2.www * r3.xyz + float3(1,1,1);
  r2.xyz = r2.xyz * r3.xyz + -r1.xyw;
  r3.xy = mixScale.xy * w1.xy;
  r1.z = mixMap.Sample(mixSampler_s, r3.xy).x;
  r1.xyw = r1.zzz * r2.xyz + r1.xyw;
  r2.x = specularMapDetail2.Sample(specColorSampler_s, r0.xy).x;
  r2.y = specColorMap.Sample(specColorSampler_s, r0.zw).x;
  r2.z = r2.x + -r2.y;
  r2.z = r1.z * r2.z + r2.y;
  r2.z = 1 + -r2.z;
  o0.xyz = r2.zzz * r1.xyw;
  o0.w = 1;
  r1.x = glossMapDetail2.Sample(specColorSampler_s, r0.xy).x;
  r3.xyz = detailMap2.Sample(normalSampler_s, r0.xy).xyz;
  r0.x = glossRange2.y + -glossRange2.x;
  r0.x = r1.x * r0.x + glossRange2.x;
  r0.x = saturate(0.0588235296 * r0.x);
  r0.y = glossMap.Sample(specColorSampler_s, r0.zw).x;
  r1.xyw = detailMap1.Sample(normalSampler_s, r0.zw).xyz;
  r0.z = glossRange.y + -glossRange.x;
  r0.y = r0.y * r0.z + glossRange.x;
  r0.y = saturate(0.0588235296 * r0.y);
  r0.x = r0.x + -r0.y;
  r0.x = r1.z * r0.x + r0.y;
  r0.x = -17 * r0.x;
  r0.x = exp2(r0.x);
  r0.y = r3.z * r3.z;
  r0.zw = r3.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r0.y = 0.333333343 * r0.y;
  r0.y = min(1, r0.y);
  r3.xyz = normalMap.Sample(normalSampler_s, w1.xy).xyz;
  r3.xyz = float3(-0.5,-0.5,-0) + r3.xyz;
  r3.xyz = baseNormalHeight * r3.xyz + float3(0.5,0.5,0);
  r2.z = r3.z * r3.z;
  r3.xy = r3.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.z = 0.333333343 * r2.z;
  r2.z = min(1, r2.z);
  r4.w = r0.y * detailScaleHeight2 + r2.z;
  r0.y = r1.w * r1.w;
  r1.xy = r1.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r5.xy = r1.xy * detailScaleHeight1 + r3.xy;
  r0.y = 0.333333343 * r0.y;
  r0.y = min(1, r0.y);
  r6.w = r0.y * detailScaleHeight1 + r2.z;
  r7.xy = r0.zw * detailScaleHeight2 + r3.xy;
  r0.y = dot(r3.xy, r3.xy);
  r0.y = 1 + -r0.y;
  r0.y = max(0, r0.y);
  r5.z = sqrt(r0.y);
  r7.z = r5.z;
  r0.y = dot(r7.xyz, r7.xyz);
  r0.y = rsqrt(r0.y);
  r4.xyz = r7.xyz * r0.yyy;
  r0.y = dot(r5.xyz, r5.xyz);
  r0.y = rsqrt(r0.y);
  r6.xyz = r5.xyz * r0.yyy;
  r3.xyzw = -r6.xyzw + r4.xyzw;
  r3.xyzw = r1.zzzz * r3.xyzw + r6.xyzw;
  r0.x = r3.w + r0.x;
  r0.x = log2(r0.x);
  r0.x = saturate(-0.0588235296 * r0.x);
  o1.z = r0.x * 0.49755621 + 0.00146627566;
  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v5.xyz * r0.xxx;
  r0.w = v7.x ? 1 : -1;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r0.xyz * r3.yyy;
  r1.x = dot(v4.xyz, v4.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyw = v4.xyz * r1.xxx;
  r1.xyw = r1.xyw * r0.www;
  r0.xyz = r1.xyw * r3.xxx + r0.xyz;
  r1.x = dot(v3.xyz, v3.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyw = v3.xyz * r1.xxx;
  r3.xyw = r1.xyw * r0.www;
  r0.xyz = r3.xyw * r3.zzz + r0.xyz;
  r2.z = r3.x + r3.y;
  r2.z = r1.w * r0.w + r2.z;
  r2.z = 0.5 * r2.z;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = rsqrt(r2.w);
  r3.yzw = r2.www * r0.xyz;
  r4.yzw = float3(1,-1,-1) * r3.yzw;
  r4.x = 1;
  r3.x = 0;
  r0.xyz = r1.xyw * r0.www + -r2.zzz;
  r0.w = max(r0.y, r0.z);
  r0.w = max(r0.x, r0.w);
  r0.w = max(r2.z, r0.w);
  r0.x = cmp(r0.w == r0.x);
  r3.xyzw = r0.xxxx ? r4.xyzw : r3.xyzw;
  r4.yzw = float3(-1,1,-1) * r3.yzw;
  r4.x = 2;
  r1.x = 2 + r0.w;
  r0.x = r0.x ? r1.x : r0.w;
  r0.y = cmp(r0.x == r0.y);
  r3.xyzw = r0.yyyy ? r4.xyzw : r3.xyzw;
  r4.yzw = float3(-1,-1,1) * r3.yzw;
  r0.w = 2 + r0.x;
  r0.x = r0.y ? r0.w : r0.x;
  r0.x = cmp(r0.x == r0.z);
  r4.x = 3;
  r0.xyzw = r0.xxxx ? r4.xyzw : r3.xyzw;
  r1.x = r0.y + r0.z;
  r3.z = r1.x + r0.w;
  r3.x = -r0.z * 3 + r3.z;
  r3.y = r0.w + -r0.y;
  r0.x = (uint)r0.x;
  o1.w = 0.333333343 * r0.x;
  r0.xyz = float3(0.408248305,0.707106769,0.577350259) * r3.xyz;
  r0.z = 1 + abs(r0.z);
  r0.z = rsqrt(r0.z);
  r0.xy = r0.xy * r0.zz;
  o1.xy = r0.xy * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  r0.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + specColorTint1.xyz;
  r0.xyz = r2.xxx * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r1.xyw = float3(-0.0399999991,-0.0399999991,-0.0399999991) + specColorTint.xyz;
  r1.xyw = r2.yyy * r1.xyw + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.xyz = -r1.xyw + r0.xyz;
  r0.xyz = r1.zzz * r0.xyz + r1.xyw;
  r1.y = r0.x + -r0.z;
  r0.x = r1.y * 0.5 + r0.z;
  r1.z = r0.y + -r0.x;
  r1.x = r1.z * 0.5 + r0.x;
  r0.xy = (uint2)v0.xy;
  r0.xy = (int2)r0.xy & int2(1,1);
  r0.x = cmp((int)r0.y == (int)r0.x);
  r0.xy = r0.xx ? r1.xy : r1.xz;
  o2.xy = r0.xy * float2(1,0.5) + float2(0,0.5);
  r0.x = aoMap.Sample(aoSampler_s, w1.xy).x;
  o2.z = r0.x;
  o2.w = 0.333333343;
  r0.xy = v6.xy / v6.ww;
  r0.zw = float2(0.5,0.5) * renderTargetSize.xy;
  r1.x = r0.x * r0.z;
  r1.y = r0.y * -r0.w;
  r0.xy = renderTargetSize.xy * float2(0.5,0.5) + r1.xy;
  r0.xy = v0.xy + -r0.xy;
  r0.zw = float2(0.100000001,0.100000001) * abs(r0.xy);
  r0.zw = min(float2(1,1), r0.zw);
  r1.xy = float2(-10,-10) + abs(r0.xy);
  r0.xy = cmp(r0.xy >= float2(0,0));
  r1.xy = saturate(float2(0.0333333351,0.0333333351) * r1.xy);
  r0.zw = -r1.xy + r0.zw;
  r0.zw = r0.zw * float2(0.5,0.5) + r1.xy;
  o3.xy = r0.xy ? r0.zw : -r0.zw;
  return;
}