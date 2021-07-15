// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:29:32 2021

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
  float detailScaleHeight : packoffset(c11.z);
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
Texture2D<float4> colorMap : register(t0);
Texture2D<float4> normalMap : register(t6);
Texture2D<float4> detailMap : register(t7);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float3 v1 : COLOR0,
  float w1 : COLOR1,
  float2 v2 : TEXCOORD0,
  nointerpolation float3 v3 : UVOFFSETS0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float3 v6 : TEXCOORD3,
  uint v7 : SV_IsFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v3.xy + v2.xy;
  r0.xy = v3.zz + r0.xy;
  r0.xy = detailScale.xy * r0.xy;
  r1.xyzw = colorMap.Sample(colorSampler_s, r0.xy).xyzw;
  r2.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r2.xyz = r1.www * r2.xyz + float3(1,1,1);
  r1.xyz = r2.xyz * r1.xyz;
  r1.xyz = v1.xyz * r1.xyz;
  r0.z = glossRange.y + -glossRange.x;
  r0.w = saturate(0.0588235296 * glossRange.y);
  r2.xyz = normalMap.Sample(normalSampler_s, v2.xy).xyz;
  r2.xyz = float3(-0.5,-0.5,-0) + r2.xyz;
  r2.xyz = baseNormalHeight * r2.xyz + float3(0.5,0.5,0);
  r2.xy = r2.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r1.w = dot(r2.xy, r2.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r3.z = sqrt(r1.w);
  r1.w = r2.z * r2.z;
  r1.w = 0.333333343 * r1.w;
  r1.w = min(1, r1.w);
  r4.xyz = detailMap.Sample(normalSampler_s, r0.xy).xyz;
  r0.xy = r4.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.z = r4.z * r4.z;
  r2.z = 0.333333343 * r2.z;
  r2.z = min(1, r2.z);
  r3.xy = r0.xy * detailScaleHeight + r2.xy;
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = rsqrt(r0.x);
  r2.xyw = r3.xyz * r0.xxx;
  r0.x = r2.z * detailScaleHeight + r1.w;
  r0.y = v7.x ? 1 : -1;
  r1.w = dot(v4.xyz, v4.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = v4.xyz * r1.www;
  r4.xyz = r3.xyz * r0.yyy;
  r1.w = dot(v5.xyz, v5.xyz);
  r1.w = rsqrt(r1.w);
  r5.xyz = v5.xyz * r1.www;
  r5.xyz = r5.xyz * r0.yyy;
  r1.w = dot(v6.xyz, v6.xyz);
  r1.w = rsqrt(r1.w);
  r6.xyz = v6.xyz * r1.www;
  r6.xyz = r6.xyz * r0.yyy;
  r0.w = -17 * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r0.x + r0.w;
  r0.w = log2(r0.w);
  r6.xyz = r6.xyz * r2.yyy;
  r2.xyz = r5.xyz * r2.xxx + r6.xyz;
  r2.xyz = r4.xyz * r2.www + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  r0.z = debugGlossOverride.x * r0.z + glossRange.x;
  r0.zw = saturate(float2(0.0588235296,-0.0588235296) * r0.zw);
  r0.z = -17 * r0.z;
  r0.z = exp2(r0.z);
  r0.x = r0.x + r0.z;
  r0.x = log2(r0.x);
  r0.x = saturate(-0.0588235296 * r0.x);
  r0.z = cmp(0 < debugStreamerControl.w);
  if (r0.z != 0) {
    r0.z = (int)debugStreamerControl.w;
    r1.w = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, v2.xy);
    r2.w = colorMap.CalculateLevelOfDetail(colorSampler_s, v2.xy);
    r1.w = cmp(r1.w < r2.w);
    r2.w = cmp(0 < r2.w);
    r5.xyz = (int3)r0.zzz & int3(1,2,4);
    r6.xyz = r5.xxx ? float3(1,0,1) : r1.xyz;
    r5.xyw = r5.yyy ? float3(0,1,1) : r1.xyz;
    r5.xyw = r2.www ? r6.xyz : r5.xyw;
    r6.xyz = r5.zzz ? float3(0,1,0) : r1.xyz;
    r1.xyz = r1.www ? r5.xyw : r6.xyz;
  }
  r5.xyz = debugColorOverride.xyz + -r1.xyz;
  o0.xyz = debugColorOverride.www * r5.xyz + r1.xyz;
  r1.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + debugSpecularOverride.xyz;
  r1.xyz = debugSpecularOverride.www * r1.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.x = r0.x + -r0.w;
  r0.x = debugGlossOverride.w * r0.x + r0.w;
  r0.z = -1 + debugOcclusionOverride.x;
  o2.z = debugOcclusionOverride.w * r0.z + 1;
  r5.xyz = v7.xxx ? v4.xyz : -v4.xyz;
  r0.z = dot(r5.xyz, r5.xyz);
  r0.z = rsqrt(r0.z);
  r5.xyz = r5.xyz * r0.zzz + -r2.xyz;
  r2.yzw = debugNormalOverride.www * r5.xyz + r2.xyz;
  r0.z = r4.x + r4.y;
  r0.z = r3.z * r0.y + r0.z;
  r0.z = 0.5 * r0.z;
  r3.xyz = r3.xyz * r0.yyy + -r0.zzz;
  r0.y = max(r3.y, r3.z);
  r0.y = max(r3.x, r0.y);
  r0.y = max(r0.z, r0.y);
  r0.z = cmp(r0.y == r3.x);
  r4.yzw = float3(1,-1,-1) * r2.yzw;
  r0.w = 2 + r0.y;
  r4.x = 1;
  r2.x = 0;
  r2.xyzw = r0.zzzz ? r4.xyzw : r2.xyzw;
  r0.y = r0.z ? r0.w : r0.y;
  r0.z = cmp(r0.y == r3.y);
  r4.yzw = float3(-1,1,-1) * r2.yzw;
  r0.w = 2 + r0.y;
  r4.x = 2;
  r2.xyzw = r0.zzzz ? r4.xyzw : r2.xyzw;
  r0.y = r0.z ? r0.w : r0.y;
  r0.y = cmp(r0.y == r3.z);
  r3.yzw = float3(-1,-1,1) * r2.yzw;
  r3.x = 3;
  r2.xyzw = r0.yyyy ? r3.xyzw : r2.xyzw;
  r0.y = r2.y + r2.z;
  r3.z = r0.y + r2.w;
  r3.y = r2.w + -r2.y;
  r3.x = -r2.z * 3 + r3.z;
  r0.yzw = float3(0.408248305,0.707106769,0.577350259) * r3.xyz;
  r0.w = 1 + abs(r0.w);
  r0.w = rsqrt(r0.w);
  r0.yz = r0.yz * r0.ww;
  o1.xy = r0.yz * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  o1.z = r0.x * 0.49755621 + 0.00146627566;
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