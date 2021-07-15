// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:27:59 2021

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
Texture2D<float4> resolvedNormal : register(t0);
Texture2D<float4> colorMap : register(t6);
Texture2D<float4> tintMask : register(t7);
Texture2D<float4> normalMap : register(t9);
Texture2D<float4> glossMap : register(t10);
Texture2D<float4> aoMap : register(t11);


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

  r0.xy = v2.xy + w1.xy;
  r0.xy = v2.zz + r0.xy;
  r1.xyzw = colorMap.Sample(colorSampler_s, r0.xy).xyzw;
  r0.z = tintMask.Sample(colorSampler_s, r0.xy).x;
  r2.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r2.xyz = r0.zzz * r2.xyz + float3(1,1,1);
  r1.xyz = r2.xyz * r1.xyz;
  r0.z = v1.x * r1.w;
  r0.w = aoMap.Sample(aoSampler_s, w1.xy).x;
  r2.x = glossMap.Sample(specColorSampler_s, r0.xy).x;
  r2.y = glossRange.y + -glossRange.x;
  r2.x = r2.x * r2.y + glossRange.x;
  r2.x = saturate(0.0588235296 * r2.x);
  r3.xyz = normalMap.Sample(normalSampler_s, r0.xy).xyz;
  r3.xyz = float3(-0.5,-0.5,-0) + r3.xyz;
  r3.xyz = baseNormalHeight * r3.xyz + float3(0.5,0.5,0);
  r0.xy = r3.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.z = dot(r0.xy, r0.xy);
  r2.z = 1 + -r2.z;
  r2.z = max(0, r2.z);
  r2.z = sqrt(r2.z);
  r2.w = r3.z * r3.z;
  r2.w = 0.333333343 * r2.w;
  r2.w = min(1, r2.w);
  r3.x = v6.x ? 1 : -1;
  r3.y = dot(v3.xyz, v3.xyz);
  r3.y = rsqrt(r3.y);
  r3.yzw = v3.xyz * r3.yyy;
  r3.yzw = r3.yzw * r3.xxx;
  r4.x = dot(v4.xyz, v4.xyz);
  r4.x = rsqrt(r4.x);
  r4.xyz = v4.xyz * r4.xxx;
  r4.xyz = r4.xyz * r3.xxx;
  r4.w = dot(v5.xyz, v5.xyz);
  r4.w = rsqrt(r4.w);
  r5.xyz = v5.xyz * r4.www;
  r5.xyz = r5.xyz * r3.xxx;
  r2.x = -17 * r2.x;
  r2.x = exp2(r2.x);
  r2.x = r2.w + r2.x;
  r2.x = log2(r2.x);
  r2.x = -0.0588235296 * r2.x;
  r2.x = max(0, r2.x);
  r5.xyz = r5.xyz * r0.yyy;
  r4.xyz = r4.xyz * r0.xxx + r5.xyz;
  r3.xyz = r3.yzw * r2.zzz + r4.xyz;
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = rsqrt(r0.x);
  r3.xyz = r3.xyz * r0.xxx;
  r0.x = debugGlossOverride.x * r2.y + glossRange.x;
  r0.x = saturate(0.0588235296 * r0.x);
  r0.x = -17 * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r2.w + r0.x;
  r0.x = log2(r0.x);
  r0.x = -0.0588235296 * r0.x;
  r0.x = max(0, r0.x);
  r0.y = cmp(0 < debugStreamerControl.w);
  if (r0.y != 0) {
    r0.y = (int)debugStreamerControl.w;
    r2.y = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, w1.xy);
    r2.z = colorMap.CalculateLevelOfDetail(colorSampler_s, w1.xy);
    r2.y = cmp(r2.y < r2.z);
    r2.z = cmp(0 < r2.z);
    r4.xyz = (int3)r0.yyy & int3(1,2,4);
    r5.xyz = r4.xxx ? float3(1,0,1) : r1.xyz;
    r4.xyw = r4.yyy ? float3(0,1,1) : r1.xyz;
    r4.xyw = r2.zzz ? r5.xyz : r4.xyw;
    r5.xyz = r4.zzz ? float3(0,1,0) : r1.xyz;
    r1.xyz = r2.yyy ? r4.xyw : r5.xyz;
  }
  r2.yzw = debugColorOverride.xyz + -r1.xyz;
  r1.xyz = debugColorOverride.www * r2.yzw + r1.xyz;
  r0.y = -r1.w * v1.x + debugAlphaOverride.x;
  r0.y = debugAlphaOverride.w * r0.y + r0.z;
  r2.yzw = float3(-0.0399999991,-0.0399999991,-0.0399999991) + debugSpecularOverride.xyz;
  r2.yzw = debugSpecularOverride.www * r2.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.x = r0.x + -r2.x;
  r0.x = debugGlossOverride.w * r0.x + r2.x;
  r0.z = debugOcclusionOverride.x + -r0.w;
  r4.z = debugOcclusionOverride.w * r0.z + r0.w;
  r5.xyz = v6.xxx ? v3.xyz : -v3.xyz;
  r0.z = dot(r5.xyz, r5.xyz);
  r0.z = rsqrt(r0.z);
  r5.xyz = r5.xyz * r0.zzz + -r3.xyz;
  r3.xyz = debugNormalOverride.www * r5.xyz + r3.xyz;
  o0.xyz = r1.xyz * r0.yyy;
  r1.xy = (uint2)v0.xy;
  r1.zw = float2(0,0);
  r0.zw = resolvedNormal.Load(r1.xyz).zw;
  r1.z = cmp(0 < r0.z);
  r0.w = r0.w * 3 + 0.5;
  r0.w = (uint)r0.w;
  r5.xyzw = (int4)r0.wwww & int4(2,1,2,1);
  r5.xyzw = r5.zwxy ? float4(-0.577350259,-0.577350259,1.40129846e-45,1.40129846e-45) : float4(0.577350259,0.577350259,0,0);
  r0.w = (int)r5.w ^ (int)r5.z;
  r5.z = r0.w ? -0.577350259 : 0.577350259;
  r6.xy = float2(-1.22474492,1.22474492) * r5.xz;
  r7.xyz = float3(0.707106769,-1.41421354,0.707106769) * r5.xyz;
  r7.x = dot(r3.xyz, r7.xyz);
  r7.y = dot(r3.xz, r6.xy);
  r0.w = dot(r3.xyz, r5.xyz);
  r0.w = 1 + abs(r0.w);
  r0.w = rsqrt(r0.w);
  r3.xy = r7.xy * r0.ww;
  r3.xy = r3.xy * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  r0.z = cmp(r0.z >= 0.5);
  r0.z = r0.z ? 0.5 : 0.00146627566;
  r3.z = r0.x * 0.49755621 + r0.z;
  r0.xzw = r1.zzz ? r3.xyz : 0;
  o1.xyz = r0.xzw * r0.yyy;
  r3.y = r2.y + -r2.w;
  r0.x = r3.y * 0.5 + r2.w;
  r3.z = r2.z + -r0.x;
  r3.x = r3.z * 0.5 + r0.x;
  r0.xz = (int2)r1.xy & int2(1,1);
  r0.x = cmp((int)r0.z == (int)r0.x);
  r0.xz = r0.xx ? r3.xy : r3.xz;
  r4.xy = r0.xz * float2(1,0.5) + float2(0,0.5);
  r4.w = 1;
  o2.xyzw = r4.xyzw * r0.yyyy;
  o0.w = r0.y;
  o1.w = r0.y;
  return;
}