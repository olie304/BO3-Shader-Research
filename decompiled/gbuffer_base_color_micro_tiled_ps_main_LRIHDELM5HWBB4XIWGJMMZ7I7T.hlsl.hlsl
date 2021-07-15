// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:26:45 2021

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
  float detailScaleHeight : packoffset(c12.z);
  float baseGloss : packoffset(c12.w);
  float baseReflectance : packoffset(c13);
  float3 colorTint1 : packoffset(c13.y);
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
SamplerState baseColorSampler_s : register(s5);
Texture2D<float4> colorMap : register(t0);
Texture2D<float4> specColorMap : register(t6);
Texture2D<float4> normalMap : register(t7);
Texture2D<float4> glossMap : register(t9);
Texture2D<float4> aoMap : register(t10);
Texture2D<float4> detailMap : register(t11);
Texture2D<float4> baseColorMap : register(t12);


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

  r0.xy = v2.xy + w1.xy;
  r0.xy = v2.zz + r0.xy;
  r0.xy = detailScale.xy * r0.xy;
  r1.xyzw = colorMap.Sample(colorSampler_s, r0.xy).xyzw;
  r2.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r2.xyz = r1.www * r2.xyz + float3(1,1,1);
  r1.xyz = r2.xyz * r1.xyz;
  r0.z = specColorMap.Sample(specColorSampler_s, r0.xy).x;
  r2.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + specColorTint.xyz;
  r2.xyz = r0.zzz * r2.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.z = saturate(1 + -r0.z);
  r1.xyz = r1.xyz * r0.zzz;
  r0.z = aoMap.Sample(aoSampler_s, w1.xy).x;
  r0.x = glossMap.Sample(specColorSampler_s, r0.xy).x;
  r0.y = glossRange.y + -glossRange.x;
  r0.x = r0.x * r0.y + glossRange.x;
  r0.x = saturate(0.0588235296 * r0.x);
  r3.xyz = normalMap.Sample(normalSampler_s, w1.xy).xyz;
  r3.xyz = float3(-0.5,-0.5,-0) + r3.xyz;
  r3.xyz = baseNormalHeight * r3.xyz + float3(0.5,0.5,0);
  r3.xy = r3.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r0.w = dot(r3.xy, r3.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r0.w = r3.z * r3.z;
  r0.w = 0.333333343 * r0.w;
  r0.w = min(1, r0.w);
  r3.zw = detailScale.xy * w1.xy;
  r5.xyz = detailMap.Sample(normalSampler_s, r3.zw).xyz;
  r3.zw = r5.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r1.w = r5.z * r5.z;
  r1.w = 0.333333343 * r1.w;
  r1.w = min(1, r1.w);
  r4.xy = r3.zw * detailScaleHeight + r3.xy;
  r2.w = dot(r4.xyz, r4.xyz);
  r2.w = rsqrt(r2.w);
  r3.xyz = r4.xyz * r2.www;
  r0.w = r1.w * detailScaleHeight + r0.w;
  r1.w = v7.x ? 1 : -1;
  r2.w = dot(v3.xyz, v3.xyz);
  r2.w = rsqrt(r2.w);
  r4.xyz = v3.xyz * r2.www;
  r5.xyz = r4.xyz * r1.www;
  r2.w = dot(v4.xyz, v4.xyz);
  r2.w = rsqrt(r2.w);
  r6.xyz = v4.xyz * r2.www;
  r6.xyz = r6.xyz * r1.www;
  r2.w = dot(v5.xyz, v5.xyz);
  r2.w = rsqrt(r2.w);
  r7.xyz = v5.xyz * r2.www;
  r7.xyz = r7.xyz * r1.www;
  r0.x = -17 * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.w + r0.x;
  r0.x = log2(r0.x);
  r0.x = saturate(-0.0588235296 * r0.x);
  r7.xyz = r7.xyz * r3.yyy;
  r3.xyw = r6.xyz * r3.xxx + r7.xyz;
  r3.xyz = r5.xyz * r3.zzz + r3.xyw;
  r2.w = dot(r3.xyz, r3.xyz);
  r2.w = rsqrt(r2.w);
  r3.xyz = r3.xyz * r2.www;
  r6.xyzw = baseColorMap.Sample(baseColorSampler_s, w1.xy).xyzw;
  r7.xyzw = colorTint1.xyz * r6.xyzw;
  r2.w = 1 + -r6.w;
  r6.xyz = r7.xyz * r6.www;
  r1.xyz = r1.xyz * r2.www + r6.xyz;
  r2.xyz = r2.xyz * r2.www + r7.www;
  r3.w = baseGloss * r0.y + glossRange.x;
  r3.w = saturate(0.0588235296 * r3.w);
  r3.w = -17 * r3.w;
  r3.w = exp2(r3.w);
  r3.w = r3.w + r0.w;
  r3.w = log2(r3.w);
  r3.w = saturate(-0.0588235296 * r3.w);
  r3.w = r3.w * r6.w;
  r0.x = r0.x * r2.w + r3.w;
  r0.y = debugGlossOverride.x * r0.y + glossRange.x;
  r0.y = saturate(0.0588235296 * r0.y);
  r0.y = -17 * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r0.w + r0.y;
  r0.y = log2(r0.y);
  r0.y = saturate(-0.0588235296 * r0.y);
  r0.w = cmp(0 < debugStreamerControl.w);
  if (r0.w != 0) {
    r0.w = (int)debugStreamerControl.w;
    r2.w = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, w1.xy);
    r3.w = colorMap.CalculateLevelOfDetail(colorSampler_s, w1.xy);
    r2.w = cmp(r2.w < r3.w);
    r3.w = cmp(0 < r3.w);
    r6.xyz = (int3)r0.www & int3(1,2,4);
    r7.xyz = r6.xxx ? float3(1,0,1) : r1.xyz;
    r6.xyw = r6.yyy ? float3(0,1,1) : r1.xyz;
    r6.xyw = r3.www ? r7.xyz : r6.xyw;
    r7.xyz = r6.zzz ? float3(0,1,0) : r1.xyz;
    r1.xyz = r2.www ? r6.xyw : r7.xyz;
  }
  r6.xyz = debugColorOverride.xyz + -r1.xyz;
  o0.xyz = debugColorOverride.www * r6.xyz + r1.xyz;
  r1.xyz = debugSpecularOverride.xyz + -r2.xyz;
  r1.xyz = debugSpecularOverride.www * r1.xyz + r2.xyz;
  r0.y = r0.y + -r0.x;
  r0.x = debugGlossOverride.w * r0.y + r0.x;
  r0.y = debugOcclusionOverride.x + -r0.z;
  o2.z = debugOcclusionOverride.w * r0.y + r0.z;
  r0.yzw = v7.xxx ? v3.xyz : -v3.xyz;
  r2.x = dot(r0.yzw, r0.yzw);
  r2.x = rsqrt(r2.x);
  r0.yzw = r0.yzw * r2.xxx + -r3.xyz;
  r2.yzw = debugNormalOverride.www * r0.yzw + r3.xyz;
  r0.yz = v6.xy / v6.ww;
  r3.xy = float2(0.5,0.5) * renderTargetSize.xy;
  r6.x = r3.x * r0.y;
  r6.y = -r3.y * r0.z;
  r0.yz = renderTargetSize.xy * float2(0.5,0.5) + r6.xy;
  r0.yz = v0.xy + -r0.yz;
  r0.w = r5.x + r5.y;
  r0.w = r4.z * r1.w + r0.w;
  r0.w = 0.5 * r0.w;
  r3.xyz = r4.xyz * r1.www + -r0.www;
  r1.w = max(r3.y, r3.z);
  r1.w = max(r3.x, r1.w);
  r0.w = max(r1.w, r0.w);
  r1.w = cmp(r0.w == r3.x);
  r4.yzw = float3(1,-1,-1) * r2.yzw;
  r3.x = 2 + r0.w;
  r4.x = 1;
  r2.x = 0;
  r2.xyzw = r1.wwww ? r4.xyzw : r2.xyzw;
  r0.w = r1.w ? r3.x : r0.w;
  r1.w = cmp(r0.w == r3.y);
  r4.yzw = float3(-1,1,-1) * r2.yzw;
  r3.x = 2 + r0.w;
  r4.x = 2;
  r2.xyzw = r1.wwww ? r4.xyzw : r2.xyzw;
  r0.w = r1.w ? r3.x : r0.w;
  r0.w = cmp(r0.w == r3.z);
  r3.yzw = float3(-1,-1,1) * r2.yzw;
  r3.x = 3;
  r2.xyzw = r0.wwww ? r3.xyzw : r2.xyzw;
  r0.w = r2.y + r2.z;
  r3.z = r0.w + r2.w;
  r3.y = r2.w + -r2.y;
  r3.x = -r2.z * 3 + r3.z;
  r2.yzw = float3(0.408248305,0.707106769,0.577350259) * r3.xyz;
  r0.w = 1 + abs(r2.w);
  r0.w = rsqrt(r0.w);
  r2.yz = r2.yz * r0.ww;
  o1.xy = r2.yz * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  o1.z = r0.x * 0.49755621 + 0.00146627566;
  r0.x = (uint)r2.x;
  o1.w = 0.333333343 * r0.x;
  r0.xw = (uint2)v0.xy;
  r2.y = r1.x + -r1.z;
  r1.x = r2.y * 0.5 + r1.z;
  r2.z = r1.y + -r1.x;
  r2.x = r2.z * 0.5 + r1.x;
  r0.xw = (int2)r0.xw & int2(1,1);
  r0.x = cmp((int)r0.w == (int)r0.x);
  r0.xw = r0.xx ? r2.xy : r2.xz;
  o2.xy = r0.xw * float2(1,0.5) + float2(0,0.5);
  r0.xw = float2(-10,-10) + abs(r0.yz);
  r0.xw = saturate(float2(0.0333333351,0.0333333351) * r0.xw);
  r1.xy = float2(0.100000001,0.100000001) * abs(r0.yz);
  r1.xy = min(float2(1,1), r1.xy);
  r1.xy = r1.xy + -r0.xw;
  r0.xw = r1.xy * float2(0.5,0.5) + r0.xw;
  r0.yz = cmp(r0.yz >= float2(0,0));
  o3.xy = r0.yz ? r0.xw : -r0.xw;
  o0.w = 1;
  o2.w = 0.333333343;
  return;
}