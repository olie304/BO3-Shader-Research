// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:28:45 2021

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
  float detailScaleHeight : packoffset(c11.z);
  float eyeIrisSize : packoffset(c11.w);
  float eyeWetness : packoffset(c12);
  float eyeRedness : packoffset(c12.y);
  float eyePupil : packoffset(c12.z);
  float eyeAOTop : packoffset(c12.w);
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
StructuredBuffer<shaderConstantSetBuffer> shaderConstantSetBuffer : register(t0);
StructuredBuffer<modelInstanceBuffer> modelInstanceBuffer : register(t4);
Texture2D<float4> colorMap : register(t6);
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
  float w2 : TEXCOORD12,
  nointerpolation uint v3 : TEXCOORD4,
  nointerpolation float3 w3 : TEXCOORD9,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : TEXCOORD7,
  float4 v8 : TEXCOORD8,
  nointerpolation float4 v9 : TEXCOORD10,
  nointerpolation float4 v10 : TEXCOORD11,
  float2 v11 : TEXCOORD13,
  uint v12 : SV_IsFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2,
  out float2 o3 : SV_TARGET3)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t0, 384
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t4, 24
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v9.xyz, v9.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v9.xyz * r0.xxx;
  r0.w = dot(w3.xyz, w3.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = w3.xyz * r0.www;
  r0.w = dot(-v8.xyz, -v8.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -v8.xyz * r0.www;
  r3.xyz = float3(0.726957083,0.726957083,0.726957083) * r2.xyz;
  r0.w = dot(v4.xyz, v4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = v4.xyz * r0.www;
  r1.w = dot(r4.xyz, r2.xyz);
  r2.xy = r1.ww * float2(0.726957083,0.726957083) + float2(-0.726957083,0.726957083);
  r2.x = r2.x * r2.y + 1;
  r2.x = sqrt(r2.x);
  r1.w = r1.w * 0.726957083 + -r2.x;
  r2.xyz = r1.www * r4.xyz + -r3.xyz;
  r1.x = dot(r1.xyz, -r2.xyz);
  r1.x = w2.x / r1.x;
  r1.xyz = r1.xxx * r2.xyz;
  r0.x = dot(r1.xyz, r0.xyz);
  r0.z = dot(v10.xyz, v10.xyz);
  r0.z = rsqrt(r0.z);
  r2.xyz = v10.xyz * r0.zzz;
  r0.y = dot(r1.xyz, r2.xyz);
  r0.z = 1 + -eyeIrisSize;
  r1.xy = float2(-0.5,-0.5) + v2.xy;
  r1.zw = r1.xy * r0.zz;
  r1.xy = r0.zz * r1.xy + float2(0.5,0.5);
  r0.z = dot(r1.zw, r1.zw);
  r0.z = sqrt(r0.z);
  r2.x = -0.100000001 + r0.z;
  r2.x = -r2.x * 100 + 5;
  r2.x = 1.44269502 * r2.x;
  r2.x = exp2(r2.x);
  r2.x = 1 + r2.x;
  r2.x = 1.01357996 / r2.x;
  r2.x = saturate(-0.00669999979 + r2.x);
  r3.x = 1 + -r2.x;
  r2.x = eyeWetness * r2.x;
  r2.x = 0.5 * r2.x;
  r3.y = -r3.x;
  r0.xy = r3.xy * r0.xy + r1.xy;
  r0.xy = float2(-0.5,-0.5) + r0.xy;
  r2.y = dot(r0.xy, r0.xy);
  r2.y = sqrt(r2.y);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r2.z, v3.x, l(4), t4.xxxx
r2.z = colorSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r2.z, r2.z, l(0), t0.xxxx
r2.z = colorSampler[]..swiz;
  r2.z = saturate(r2.z);
  r2.z = r2.z * 0.390000015 + 0.00999999978;
  r2.w = -r2.z * 0.200000003 + r2.y;
  r2.z = -r2.z * 0.200000003 + 0.200000003;
  r2.z = saturate(r2.w / r2.z);
  r2.z = r2.z * 0.159999996 + 0.0399999991;
  r2.w = cmp(0.200000003 >= r2.y);
  r2.z = r2.w ? r2.z : r2.y;
  r2.y = 0.00100000005 + r2.y;
  r0.xy = r0.xy / r2.yy;
  r0.xy = r0.xy * r2.zz + float2(0.5,0.5);
  r2.yzw = colorMap.Sample(colorSampler_s, r0.xy).xyz;
  r0.xy = r1.zw / r0.zz;
  r0.z = eyeRedness * r0.z;
  r1.zw = float2(1.22000003,3.33333325) * r0.zz;
  r0.xy = r0.xy * float2(0.0549999997,0.0549999997) + r1.xy;
  r0.xyz = colorMap.Sample(colorSampler_s, r0.xy).xyz;
  r1.xyz = r0.xyz * r1.zzz;
  r1.xyz = r1.xyz * float3(0.299999952,-0.949999988,-0.949999988) + r0.xyz;
  r0.x = saturate(-r0.z * 2 + 1);
  r3.yzw = r1.xyz * r1.www;
  r3.yzw = float3(-0.300000012,-0.699999988,-0.699999988) * r3.yzw;
  r0.xyz = saturate(r0.xxx * r3.yzw + r1.xyz);
  r1.xyz = r2.yzw + -r0.xyz;
  o0.xyz = r3.xxx * r1.xyz + r0.xyz;
  o0.w = 1;
  r0.xy = eyeWetness * float2(-0.200000003,0.0500000007) + float2(0.400000006,0.649999976);
  r0.xz = v2.xy * r0.xx;
  o1.z = r0.y * 0.49755621 + 0.00146627566;
  r0.xy = detailScale.xy * r0.xz;
  r0.xy = detailMap.Sample(normalSampler_s, r0.xy).xy;
  r1.xy = r0.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r0.xy = float2(1.9921875,1.9921875) * r0.xy;
  r1.x = dot(r1.xy, r1.xy);
  r1.x = 1 + -r1.x;
  r1.x = max(0, r1.x);
  r0.z = sqrt(r1.x);
  r0.xyz = float3(-1,-1,-1) + r0.xyz;
  r0.xyz = r2.xxx * r0.xyz + float3(0,0,1);
  r1.x = dot(v6.xyz, v6.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v6.xyz * r1.xxx;
  r1.xyz = r1.xyz * r0.yyy;
  r0.y = dot(v5.xyz, v5.xyz);
  r0.y = rsqrt(r0.y);
  r2.xyz = v5.xyz * r0.yyy;
  r1.xyz = r0.xxx * r2.xyz + r1.xyz;
  r1.yzw = r0.zzz * r4.xyz + r1.xyz;
  r0.x = r4.x + r4.y;
  r0.x = v4.z * r0.w + r0.x;
  r0.x = 0.5 * r0.x;
  r2.yzw = float3(1,-1,-1) * r1.yzw;
  r0.yzw = v4.xyz * r0.www + -r0.xxx;
  r3.x = max(r0.z, r0.w);
  r3.x = max(r3.x, r0.y);
  r0.x = max(r3.x, r0.x);
  r0.y = cmp(r0.x == r0.y);
  r2.x = 1;
  r1.x = 0;
  r1.xyzw = r0.yyyy ? r2.xyzw : r1.xyzw;
  r2.yzw = float3(-1,1,-1) * r1.yzw;
  r3.x = 2 + r0.x;
  r0.x = r0.y ? r3.x : r0.x;
  r0.y = cmp(r0.x == r0.z);
  r2.x = 2;
  r1.xyzw = r0.yyyy ? r2.xyzw : r1.xyzw;
  r2.yzw = float3(-1,-1,1) * r1.yzw;
  r0.z = 2 + r0.x;
  r0.x = r0.y ? r0.z : r0.x;
  r0.x = cmp(r0.x == r0.w);
  r2.x = 3;
  r0.xyzw = r0.xxxx ? r2.xyzw : r1.xyzw;
  r1.x = r0.y + r0.z;
  r1.z = r1.x + r0.w;
  r1.x = -r0.z * 3 + r1.z;
  r1.y = r0.w + -r0.y;
  r0.x = (uint)r0.x;
  o1.w = 0.333333343 * r0.x;
  r0.xyz = float3(0.408248305,0.707106769,0.577350259) * r1.xyz;
  r0.z = 1 + abs(r0.z);
  r0.z = rsqrt(r0.z);
  r0.xy = r0.xy * r0.zz;
  o1.xy = r0.xy * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  o2.xyzw = float4(0.0399999991,0.5,1,0.333333343);
  r0.xy = v7.xy / v7.ww;
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