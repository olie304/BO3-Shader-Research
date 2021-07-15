// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:28:20 2021

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
  float baseNormalHeight : packoffset(c11.w);
  float2 glossRange : packoffset(c12);
  float2 rotateUVs : packoffset(c12.z);
  float2 scrollUVs : packoffset(c13);
  float2 scaleUVs : packoffset(c13.z);
  float2 offsetUVs : packoffset(c14);
  float2 zoomUVs : packoffset(c14.z);
  float zoomRate : packoffset(c15);
  float layerDepth : packoffset(c15.y);
  bool clampU : packoffset(c15.z);
  bool clampV : packoffset(c15.w);
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
Texture2D<float4> normalMap : register(t10);
Texture2D<float4> glossMap : register(t11);
Texture2D<float4> aoMap : register(t12);


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
  float3 v5 : TEXCOORD10,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(-v5.xyz, -v5.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = -v5.xyz * r0.xxx;
  r1.x = dot(r0.xyz, v3.xyz);
  r1.y = dot(r0.xyz, v4.xyz);
  r0.x = dot(r0.xyz, v2.xyz);
  r0.yz = -r1.xy / r0.xx;
  r0.x = cmp(0 < r0.x);
  r0.xy = r0.xx ? r0.yz : 0;
  r0.z = 9.99999975e-06 + layerDepth;
  r0.xy = r0.xy * r0.zz;
  r0.xy = scaleUVs.xy * r0.xy;
  r0.zw = float2(-0.5,-0.5) + w1.xy;
  r0.xy = r0.zw * scaleUVs.xy + r0.xy;
  r0.xy = offsetUVs.xy * scaleUVs.xy + r0.xy;
  r0.z = rotateUVs.y * gameTime.w + 1;
  r0.z = rotateUVs.x * r0.z;
  r0.z = 0.0174532924 * r0.z;
  sincos(r0.z, r1.x, r2.x);
  r3.z = r1.x;
  r3.y = r2.x;
  r3.x = -r1.x;
  r1.y = dot(r3.xy, r0.xy);
  r1.x = dot(r3.yz, r0.xy);
  r0.xy = gameTime.ww * scrollUVs.xy;
  r0.xy = r0.xy * scaleUVs.xy + r1.xy;
  r0.z = gameTime.w * zoomRate;
  r0.z = cos(r0.z);
  r0.z = r0.z * 0.5 + 0.5;
  r0.z = 1 + -r0.z;
  r0.w = zoomUVs.y + -zoomUVs.x;
  r0.z = r0.z * r0.w + zoomUVs.x;
  r0.xy = r0.xy / r0.zz;
  r0.xy = float2(0.5,0.5) + r0.xy;
  r0.zw = saturate(r0.xy);
  r0.xy = clampU ? r0.zw : r0.xy;
  r0.z = tintMask.Sample(colorSampler_s, r0.xy).x;
  r1.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r1.xyz = r0.zzz * r1.xyz + float3(1,1,1);
  r2.xyz = colorMap.Sample(colorSampler_s, r0.xy).xyz;
  r1.xyz = r2.xyz * r1.xyz;
  r0.zw = revealScale.xy * r0.xy;
  r0.z = revealMap.Sample(revealSampler_s, r0.zw).x;
  r0.w = saturate(v1.x * 0.998000026 + 0.00100000005);
  r1.w = log2(r0.w);
  r0.w = 1 + -r0.w;
  r2.x = saturate(alphaRevealRamp);
  r1.w = r2.x * r1.w;
  r1.w = exp2(r1.w);
  r3.x = -r1.w;
  r1.w = log2(r0.w);
  r1.w = r2.x * r1.w;
  r3.y = exp2(r1.w);
  r2.xy = saturate(alphaRevealSoftEdge * r3.xy + r0.ww);
  r0.z = -r2.x + r0.z;
  r0.w = r2.y + -r2.x;
  r0.z = saturate(r0.z / r0.w);
  o0.xyz = r1.xyz * r0.zzz;
  o0.w = r0.z;
  r0.w = glossMap.Sample(specColorSampler_s, r0.xy).x;
  r1.x = glossRange.y + -glossRange.x;
  r0.w = r0.w * r1.x + glossRange.x;
  r0.w = saturate(0.0588235296 * r0.w);
  r0.w = -17 * r0.w;
  r0.w = exp2(r0.w);
  r1.xyz = normalMap.Sample(normalSampler_s, r0.xy).xyz;
  r2.z = aoMap.Sample(aoSampler_s, r0.xy).x;
  r1.xyz = float3(-0.5,-0.5,-0) + r1.xyz;
  r1.xyz = baseNormalHeight * r1.xyz + float3(0.5,0.5,0);
  r0.x = r1.z * r1.z;
  r1.xy = r1.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r0.x = 0.333333343 * r0.x;
  r0.x = min(1, r0.x);
  r0.x = r0.x + r0.w;
  r0.x = log2(r0.x);
  r0.x = -0.0588235296 * r0.x;
  r0.x = max(0, r0.x);
  r3.xy = (uint2)v0.xy;
  r3.zw = float2(0,0);
  r0.yw = resolvedNormal.Load(r3.xyz).zw;
  r1.z = cmp(r0.y >= 0.5);
  r1.z = r1.z ? 0.5 : 0.00146627566;
  r3.z = r0.x * 0.49755621 + r1.z;
  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r4.xyz = v4.xyz * r0.xxx;
  r0.x = v6.x ? 1 : -1;
  r4.xyz = r4.xyz * r0.xxx;
  r4.xyz = r4.xyz * r1.yyy;
  r1.z = dot(v3.xyz, v3.xyz);
  r1.z = rsqrt(r1.z);
  r5.xyz = v3.xyz * r1.zzz;
  r5.xyz = r5.xyz * r0.xxx;
  r4.xyz = r5.xyz * r1.xxx + r4.xyz;
  r1.x = dot(r1.xy, r1.xy);
  r1.x = 1 + -r1.x;
  r1.x = max(0, r1.x);
  r1.x = sqrt(r1.x);
  r1.y = dot(v2.xyz, v2.xyz);
  r1.y = rsqrt(r1.y);
  r1.yzw = v2.xyz * r1.yyy;
  r1.yzw = r1.yzw * r0.xxx;
  r1.xyz = r1.yzw * r1.xxx + r4.xyz;
  r0.x = dot(r1.xyz, r1.xyz);
  r0.x = rsqrt(r0.x);
  r1.xyz = r1.xyz * r0.xxx;
  r0.x = r0.w * 3 + 0.5;
  r0.y = cmp(0 < r0.y);
  r0.x = (uint)r0.x;
  r4.xyzw = (int4)r0.xxxx & int4(2,1,2,1);
  r4.xyzw = r4.zwxy ? float4(-0.577350259,-0.577350259,1.40129846e-45,1.40129846e-45) : float4(0.577350259,0.577350259,0,0);
  r0.x = (int)r4.w ^ (int)r4.z;
  r4.z = r0.x ? -0.577350259 : 0.577350259;
  r0.x = dot(r1.xyz, r4.xyz);
  r0.x = 1 + abs(r0.x);
  r0.x = rsqrt(r0.x);
  r5.xyz = float3(0.707106769,-1.41421354,0.707106769) * r4.xyz;
  r4.xy = float2(-1.22474492,1.22474492) * r4.xz;
  r4.y = dot(r1.xz, r4.xy);
  r4.x = dot(r1.xyz, r5.xyz);
  r0.xw = r4.xy * r0.xx;
  r3.xy = r0.xw * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  r0.xyw = r0.yyy ? r3.xyz : 0;
  o1.xyz = r0.xyw * r0.zzz;
  o1.w = r0.z;
  r2.xyw = float3(0.0399999991,0.5,1);
  o2.xyzw = r2.xyzw * r0.zzzz;
  return;
}