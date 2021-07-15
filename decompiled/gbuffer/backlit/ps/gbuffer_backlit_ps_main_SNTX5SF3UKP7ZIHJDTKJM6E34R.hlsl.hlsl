// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:26:22 2021

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
  float rowCount : packoffset(c11.z);
  float columnCount : packoffset(c11.w);
  float imageTime : packoffset(c12);
  float3 backlightScatterColor : packoffset(c12.y);
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
Texture2D<float4> colorMap : register(t0);
Texture2D<float4> normalMap : register(t6);
Texture2D<float4> glossMap : register(t7);
Texture2D<float4> aoMap : register(t9);
Texture2D<float4> thicknessMap : register(t10);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float v1 : COLOR1,
  float2 w1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD7,
  float2 v6 : TEXCOORD9,
  uint v7 : SV_IsFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2,
  out float2 o3 : SV_TARGET3)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = colorMap.Sample(colorSampler_s, w1.xy).xyzw;
  r1.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r1.xyz = r0.www * r1.xyz + float3(1,1,1);
  r0.xyz = r1.xyz * r0.xyz;
  r0.w = aoMap.Sample(aoSampler_s, w1.xy).x;
  r1.x = glossMap.Sample(specColorSampler_s, w1.xy).x;
  r1.y = glossRange.y + -glossRange.x;
  r1.x = r1.x * r1.y + glossRange.x;
  r1.x = saturate(0.0588235296 * r1.x);
  r2.xyz = normalMap.Sample(normalSampler_s, w1.xy).xyz;
  r2.xyz = float3(-0.5,-0.5,-0) + r2.xyz;
  r2.xyz = baseNormalHeight * r2.xyz + float3(0.5,0.5,0);
  r1.zw = r2.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.x = dot(r1.zw, r1.zw);
  r2.x = 1 + -r2.x;
  r2.x = max(0, r2.x);
  r2.x = sqrt(r2.x);
  r2.y = r2.z * r2.z;
  r2.y = 0.333333343 * r2.y;
  r2.y = min(1, r2.y);
  r2.z = v7.x ? 1 : -1;
  r2.w = dot(v2.xyz, v2.xyz);
  r2.w = rsqrt(r2.w);
  r3.xyz = v2.xyz * r2.www;
  r4.xyz = r3.xyz * r2.zzz;
  r2.w = dot(v3.xyz, v3.xyz);
  r2.w = rsqrt(r2.w);
  r5.xyz = v3.xyz * r2.www;
  r5.xyz = r5.xyz * r2.zzz;
  r2.w = dot(v4.xyz, v4.xyz);
  r2.w = rsqrt(r2.w);
  r6.xyz = v4.xyz * r2.www;
  r6.xyz = r6.xyz * r2.zzz;
  r1.x = -17 * r1.x;
  r1.x = exp2(r1.x);
  r1.x = r2.y + r1.x;
  r1.x = log2(r1.x);
  r1.x = -0.0588235296 * r1.x;
  r6.xyz = r6.xyz * r1.www;
  r5.xyz = r5.xyz * r1.zzz + r6.xyz;
  r5.xyz = r4.xyz * r2.xxx + r5.xyz;
  r1.z = dot(r5.xyz, r5.xyz);
  r1.z = rsqrt(r1.z);
  r5.xyz = r5.xyz * r1.zzz;
  r1.y = debugGlossOverride.x * r1.y + glossRange.x;
  r1.y = saturate(0.0588235296 * r1.y);
  r1.y = -17 * r1.y;
  r1.y = exp2(r1.y);
  r1.y = r2.y + r1.y;
  r1.y = log2(r1.y);
  r1.y = -0.0588235296 * r1.y;
  r1.xy = max(float2(0,0), r1.xy);
  r1.z = cmp(0 < debugStreamerControl.w);
  if (r1.z != 0) {
    r1.z = (int)debugStreamerControl.w;
    r1.w = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, w1.xy);
    r2.x = colorMap.CalculateLevelOfDetail(colorSampler_s, w1.xy);
    r1.w = cmp(r1.w < r2.x);
    r2.x = cmp(0 < r2.x);
    r6.xyz = (int3)r1.zzz & int3(1,2,4);
    r7.xyz = r6.xxx ? float3(1,0,1) : r0.xyz;
    r6.xyw = r6.yyy ? float3(0,1,1) : r0.xyz;
    r2.xyw = r2.xxx ? r7.xyz : r6.xyw;
    r6.xyz = r6.zzz ? float3(0,1,0) : r0.xyz;
    r0.xyz = r1.www ? r2.xyw : r6.xyz;
  }
  r2.xyw = debugColorOverride.xyz + -r0.xyz;
  r0.xyz = debugColorOverride.www * r2.xyw + r0.xyz;
  r1.y = r1.y + -r1.x;
  r1.x = debugGlossOverride.w * r1.y + r1.x;
  r1.y = debugOcclusionOverride.x + -r0.w;
  o2.z = debugOcclusionOverride.w * r1.y + r0.w;
  r1.yzw = v7.xxx ? v2.xyz : -v2.xyz;
  r0.w = dot(r1.yzw, r1.yzw);
  r0.w = rsqrt(r0.w);
  r1.yzw = r1.yzw * r0.www + -r5.xyz;
  r5.yzw = debugNormalOverride.www * r1.yzw + r5.xyz;
  r0.w = thicknessMap.Sample(colorSampler_s, v6.xy).x;
  r1.yzw = backlightScatterColor.xyz * r0.xyz;
  r0.w = 1 + -r0.w;
  r1.w = r1.w * r0.w;
  r2.xy = v5.xy / v5.ww;
  r4.zw = float2(0.5,0.5) * renderTargetSize.xy;
  r6.x = r4.z * r2.x;
  r6.y = -r4.w * r2.y;
  r2.xy = renderTargetSize.xy * float2(0.5,0.5) + r6.xy;
  r2.xy = v0.xy + -r2.xy;
  r2.w = r4.x + r4.y;
  r2.w = r3.z * r2.z + r2.w;
  r2.w = 0.5 * r2.w;
  r3.xyz = r3.xyz * r2.zzz + -r2.www;
  r2.z = max(r3.y, r3.z);
  r2.z = max(r3.x, r2.z);
  r2.z = max(r2.w, r2.z);
  r2.w = cmp(r2.z == r3.x);
  r4.yzw = float3(1,-1,-1) * r5.yzw;
  r3.x = 2 + r2.z;
  r4.x = 1;
  r5.x = 0;
  r4.xyzw = r2.wwww ? r4.xyzw : r5.xyzw;
  r2.z = r2.w ? r3.x : r2.z;
  r2.w = cmp(r2.z == r3.y);
  r5.yzw = float3(-1,1,-1) * r4.yzw;
  r3.x = 2 + r2.z;
  r5.x = 2;
  r4.xyzw = r2.wwww ? r5.xyzw : r4.xyzw;
  r2.z = r2.w ? r3.x : r2.z;
  r2.z = cmp(r2.z == r3.z);
  r3.yzw = float3(-1,-1,1) * r4.yzw;
  r3.x = 3;
  r3.xyzw = r2.zzzz ? r3.xyzw : r4.xyzw;
  r2.z = r3.y + r3.z;
  r4.z = r2.z + r3.w;
  r4.y = r3.w + -r3.y;
  r4.x = -r3.z * 3 + r4.z;
  r3.yzw = float3(0.408248305,0.707106769,0.577350259) * r4.xyz;
  r2.z = 1 + abs(r3.w);
  r2.z = rsqrt(r2.z);
  r2.zw = r3.yz * r2.zz;
  o1.xy = r2.zw * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  o1.z = r1.x * 0.49755621 + 0.5;
  r1.x = (uint)r3.x;
  o1.w = 0.333333343 * r1.x;
  r2.zw = (uint2)v0.xy;
  r3.y = r1.y * r0.w + -r1.w;
  r1.x = r3.y * 0.5 + r1.w;
  r3.z = r1.z * r0.w + -r1.x;
  r3.x = r3.z * 0.5 + r1.x;
  r1.xy = (int2)r2.zw & int2(1,1);
  r0.w = cmp((int)r1.y == (int)r1.x);
  r1.xy = r0.ww ? r3.xy : r3.xz;
  o2.xy = r1.xy * float2(1,0.5) + float2(0,0.5);
  r1.xy = float2(-10,-10) + abs(r2.xy);
  r1.xy = saturate(float2(0.0333333351,0.0333333351) * r1.xy);
  r1.zw = float2(0.100000001,0.100000001) * abs(r2.xy);
  r1.zw = min(float2(1,1), r1.zw);
  r1.zw = r1.zw + -r1.xy;
  r1.xy = r1.zw * float2(0.5,0.5) + r1.xy;
  r1.zw = cmp(r2.xy >= float2(0,0));
  o3.xy = r1.zw ? r1.xy : -r1.xy;
  o0.xyz = r0.xyz;
  o0.w = 1;
  o2.w = 0.666666687;
  return;
}