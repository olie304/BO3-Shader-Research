// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:30:57 2021

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
  float3 v5 : TEXCOORD3,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = abs(v2.x) + abs(v2.y);
  r0.x = abs(v2.z) + r0.x;
  r0.x = (uint)r0.x;
  r0.y = (uint)r0.x << 4;
  r0.z = (int)r0.x + 0x9e3779b9;
  r0.y = (int)r0.z ^ (int)r0.y;
  r0.z = (uint)r0.x >> 5;
  r0.y = (int)r0.z ^ (int)r0.y;
  r0.y = (int)r0.y + (int)r0.x;
  r0.z = (uint)r0.y << 4;
  r0.w = (int)r0.y + 0x9e3779b9;
  r0.z = (int)r0.w ^ (int)r0.z;
  r0.w = (uint)r0.y >> 5;
  r0.z = (int)r0.w ^ (int)r0.z;
  r0.x = (int)r0.z + (int)r0.x;
  r0.z = (uint)r0.x << 4;
  r0.w = (int)r0.x + 0x3c6ef372;
  r0.z = (int)r0.w ^ (int)r0.z;
  r0.w = (uint)r0.x >> 5;
  r0.z = (int)r0.w ^ (int)r0.z;
  r0.y = (int)r0.z + (int)r0.y;
  r0.z = (uint)r0.y << 4;
  r0.w = (int)r0.y + 0x3c6ef372;
  r0.z = (int)r0.w ^ (int)r0.z;
  r0.w = (uint)r0.y >> 5;
  r0.z = (int)r0.w ^ (int)r0.z;
  r0.x = (int)r0.z + (int)r0.x;
  r0.z = (uint)r0.x << 4;
  r0.w = (int)r0.x + 0xdaa66d2b;
  r0.z = (int)r0.w ^ (int)r0.z;
  r0.x = (uint)r0.x >> 5;
  r0.x = (int)r0.x ^ (int)r0.z;
  r0.x = (int)r0.x + (int)r0.y;
  r0.x = (int)r0.x & 0x0000ffff;
  r0.x = (uint)r0.x;
  r0.yz = mixScale.xy * w1.xy;
  r1.xyzw = mixMap.Sample(mixSampler_s, r0.yz).xyzw;
  r0.xyz = cmp(float3(49151.25,32767.5,16383.75) < r0.xxx);
  r0.z = r0.z ? r1.y : r1.x;
  r0.y = r0.y ? r1.z : r0.z;
  r0.x = r0.x ? r1.w : r0.y;
  r0.yzw = float3(0.100000001,0.100000001,0.100000001) * v2.xyz;
  r0.yzw = frac(r0.yzw);
  r1.xyz = normalMap.Sample(normalSampler_s, w1.xy).xyz;
  r1.xyz = float3(-0.5,-0.5,-0) + r1.xyz;
  r1.xyz = baseNormalHeight * r1.xyz + float3(0.5,0.5,0);
  r1.xy = r1.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r1.w = dot(r1.xy, r1.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r2.z = sqrt(r1.w);
  r1.z = r1.z * r1.z;
  r1.z = 0.333333343 * r1.z;
  r1.z = min(1, r1.z);
  sincos(rotateUVs1, r3.x, r4.x);
  r5.x = -r3.x;
  r3.yz = float2(-0.5,-0.5) + w1.xy;
  r5.y = r4.x;
  r5.z = r3.x;
  r4.x = dot(r3.yz, r5.yz);
  r4.y = dot(r3.yz, r5.xy);
  r3.xw = r4.xy + r0.zy;
  r0.w = 0.5 + r0.w;
  r3.xw = r3.xw + r0.ww;
  r3.xw = detailScale1.xy * r3.xw;
  r4.xy = float2(0.5,0.5) + r4.xy;
  r4.xy = detailScale1.xy * r4.xy;
  r3.xw = useUVOffsets1 ? r3.xw : r4.xy;
  r4.xyzw = colorMap.Sample(colorSampler_s, r3.xw).xyzw;
  r5.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r5.xyz = r4.www * r5.xyz + float3(1,1,1);
  r4.xyz = r5.xyz * r4.xyz;
  r1.w = specColorMap.Sample(specColorSampler_s, r3.xw).x;
  r5.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + specColorTint.xyz;
  r5.xyz = r1.www * r5.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r2.w = glossMap.Sample(specColorSampler_s, r3.xw).x;
  r6.xyz = detailMap1.Sample(normalSampler_s, r3.xw).xyz;
  r3.xw = r6.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r4.w = r6.z * r6.z;
  r4.w = 0.333333343 * r4.w;
  r4.w = min(1, r4.w);
  sincos(rotateUVs2, r6.x, r7.x);
  r8.x = -r6.x;
  r8.y = r7.x;
  r8.z = r6.x;
  r6.x = dot(r3.yz, r8.yz);
  r6.y = dot(r3.yz, r8.xy);
  r0.yz = r6.xy + r0.zy;
  r0.yz = r0.yz + r0.ww;
  r0.yz = detailScale2.xy * r0.yz;
  r3.yz = float2(0.5,0.5) + r6.xy;
  r3.yz = detailScale2.xy * r3.yz;
  r0.yz = useUVOffsets1 ? r0.yz : r3.yz;
  r6.xyzw = colorMapDetail2.Sample(colorSampler_s, r0.yz).xyzw;
  r7.xyz = float3(-1,-1,-1) + colorTint1.xyz;
  r7.xyz = r6.www * r7.xyz + float3(1,1,1);
  r0.w = specularMapDetail2.Sample(specColorSampler_s, r0.yz).x;
  r8.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + specColorTint1.xyz;
  r8.xyz = r0.www * r8.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r3.y = glossMapDetail2.Sample(specColorSampler_s, r0.yz).x;
  r9.xyz = detailMap2.Sample(normalSampler_s, r0.yz).xyz;
  r6.xyz = r6.xyz * r7.xyz + -r4.xyz;
  r4.xyz = r0.xxx * r6.xyz + r4.xyz;
  r0.y = r0.w + -r1.w;
  r0.y = r0.x * r0.y + r1.w;
  r6.xyz = r8.xyz + -r5.xyz;
  r5.xyz = r0.xxx * r6.xyz + r5.xyz;
  r0.y = 1 + -r0.y;
  r0.yzw = r4.xyz * r0.yyy;
  r1.w = glossRange.y + -glossRange.x;
  r2.w = r2.w * r1.w + glossRange.x;
  r2.w = saturate(0.0588235296 * r2.w);
  r3.z = glossRange2.y + -glossRange2.x;
  r3.y = r3.y * r3.z + glossRange2.x;
  r3.y = saturate(0.0588235296 * r3.y);
  r3.y = r3.y + -r2.w;
  r2.w = r0.x * r3.y + r2.w;
  r3.y = aoMap.Sample(aoSampler_s, w1.xy).x;
  r4.xy = r9.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r3.z = r9.z * r9.z;
  r3.z = 0.333333343 * r3.z;
  r3.z = min(1, r3.z);
  r2.xy = r3.xw * detailScaleHeight1 + r1.xy;
  r3.x = dot(r2.xyz, r2.xyz);
  r3.x = rsqrt(r3.x);
  r6.xyz = r3.xxx * r2.xyz;
  r6.w = r4.w * detailScaleHeight1 + r1.z;
  r2.xy = r4.xy * detailScaleHeight2 + r1.xy;
  r1.x = dot(r2.xyz, r2.xyz);
  r1.x = rsqrt(r1.x);
  r4.xyz = r2.xyz * r1.xxx;
  r4.w = r3.z * detailScaleHeight2 + r1.z;
  r4.xyzw = r4.xyzw + -r6.xyzw;
  r4.xyzw = r0.xxxx * r4.xyzw + r6.xyzw;
  r0.x = v6.x ? 1 : -1;
  r1.x = dot(v3.xyz, v3.xyz);
  r1.x = rsqrt(r1.x);
  r2.xyz = v3.xyz * r1.xxx;
  r3.xzw = r2.xyz * r0.xxx;
  r1.y = dot(v4.xyz, v4.xyz);
  r1.y = rsqrt(r1.y);
  r6.xyz = v4.xyz * r1.yyy;
  r6.xyz = r6.xyz * r0.xxx;
  r1.y = dot(v5.xyz, v5.xyz);
  r1.y = rsqrt(r1.y);
  r7.xyz = v5.xyz * r1.yyy;
  r7.xyz = r7.xyz * r0.xxx;
  r1.y = -17 * r2.w;
  r1.y = exp2(r1.y);
  r1.y = r4.w + r1.y;
  r1.y = log2(r1.y);
  r7.xyz = r7.xyz * r4.yyy;
  r4.xyw = r6.xyz * r4.xxx + r7.xyz;
  r4.xyz = r3.xzw * r4.zzz + r4.xyw;
  r1.z = dot(r4.xyz, r4.xyz);
  r1.z = rsqrt(r1.z);
  r4.xyz = r4.xyz * r1.zzz;
  r1.z = debugGlossOverride.x * r1.w + glossRange.x;
  r1.yz = saturate(float2(-0.0588235296,0.0588235296) * r1.yz);
  r1.w = cmp(0 < debugStreamerControl.w);
  if (r1.w != 0) {
    r1.w = (int)debugStreamerControl.w;
    r2.w = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, w1.xy);
    r3.w = colorMap.CalculateLevelOfDetail(colorSampler_s, w1.xy);
    r2.w = cmp(r2.w < r3.w);
    r3.w = cmp(0 < r3.w);
    r6.xyz = (int3)r1.www & int3(1,2,4);
    r7.xyz = r6.xxx ? float3(1,0,1) : r0.yzw;
    r6.xyw = r6.yyy ? float3(0,1,1) : r0.yzw;
    r6.xyw = r3.www ? r7.xyz : r6.xyw;
    r7.xyz = r6.zzz ? float3(0,1,0) : r0.yzw;
    r0.yzw = r2.www ? r6.xyw : r7.xyz;
  }
  r6.xyz = debugColorOverride.xyz + -r0.yzw;
  o0.xyz = debugColorOverride.www * r6.xyz + r0.yzw;
  r0.yzw = debugSpecularOverride.xyz + -r5.xyz;
  r0.yzw = debugSpecularOverride.www * r0.yzw + r5.xyz;
  r1.z = r1.z + -r1.y;
  r1.y = debugGlossOverride.w * r1.z + r1.y;
  r1.z = debugOcclusionOverride.x + -r3.y;
  o2.z = debugOcclusionOverride.w * r1.z + r3.y;
  r1.xzw = v3.xyz * r1.xxx + -r4.xyz;
  r4.yzw = debugNormalOverride.www * r1.xzw + r4.xyz;
  r1.x = r3.x + r3.z;
  r1.x = r2.z * r0.x + r1.x;
  r1.x = 0.5 * r1.x;
  r2.xyz = r2.xyz * r0.xxx + -r1.xxx;
  r0.x = max(r2.y, r2.z);
  r0.x = max(r2.x, r0.x);
  r0.x = max(r1.x, r0.x);
  r1.x = cmp(r0.x == r2.x);
  r3.yzw = float3(1,-1,-1) * r4.yzw;
  r1.z = 2 + r0.x;
  r3.x = 1;
  r4.x = 0;
  r3.xyzw = r1.xxxx ? r3.xyzw : r4.xyzw;
  r0.x = r1.x ? r1.z : r0.x;
  r1.x = cmp(r0.x == r2.y);
  r4.yzw = float3(-1,1,-1) * r3.yzw;
  r1.z = 2 + r0.x;
  r4.x = 2;
  r3.xyzw = r1.xxxx ? r4.xyzw : r3.xyzw;
  r0.x = r1.x ? r1.z : r0.x;
  r0.x = cmp(r0.x == r2.z);
  r2.yzw = float3(-1,-1,1) * r3.yzw;
  r2.x = 3;
  r2.xyzw = r0.xxxx ? r2.xyzw : r3.xyzw;
  r0.x = r2.y + r2.z;
  r3.z = r0.x + r2.w;
  r3.y = r2.w + -r2.y;
  r3.x = -r2.z * 3 + r3.z;
  r1.xzw = float3(0.408248305,0.707106769,0.577350259) * r3.xyz;
  r0.x = 1 + abs(r1.w);
  r0.x = rsqrt(r0.x);
  r1.xz = r1.xz * r0.xx;
  o1.xy = r1.xz * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  o1.z = r1.y * 0.49755621 + 0.00146627566;
  r0.x = (uint)r2.x;
  o1.w = 0.333333343 * r0.x;
  r1.xy = (uint2)v0.xy;
  r2.y = r0.y + -r0.w;
  r0.x = r2.y * 0.5 + r0.w;
  r2.z = r0.z + -r0.x;
  r2.x = r2.z * 0.5 + r0.x;
  r0.xy = (int2)r1.xy & int2(1,1);
  r0.x = cmp((int)r0.y == (int)r0.x);
  r0.xy = r0.xx ? r2.xy : r2.xz;
  o2.xy = r0.xy * float2(1,0.5) + float2(0,0.5);
  o0.w = 1;
  o2.w = 0.333333343;
  return;
}