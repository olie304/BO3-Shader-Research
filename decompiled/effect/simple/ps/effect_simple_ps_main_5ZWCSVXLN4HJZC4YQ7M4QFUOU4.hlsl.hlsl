// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:48 2021

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
  float2 falloffParms : packoffset(c11.z);
  uint zFeatherComputeSprites : packoffset(c12);
  float desaturationAmount : packoffset(c12.y);
  float4 levelsControls : packoffset(c13);
  bool useOldHDRScale : packoffset(c14);
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
Texture2D<float4> floatZSampler : register(t0);
Texture2D<float4> colorMap : register(t21);
Texture2DArray<float4> lmapTex : register(t22);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  float4 v2 : COLOR2,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  nointerpolation float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float2 v7 : TEXCOORD4,
  float2 w7 : TEXCOORD5,
  nointerpolation uint4 v8 : TEXCOORD6,
  float4 v9 : TEXCOORD7,
  float3 v10 : TEXCOORD8,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = (int2)v0.xy;
  r0.zw = float2(0,0);
  r0.x = floatZSampler.Load(r0.xyz).x;
  r0.y = cmp(r0.x >= 0.984375);
  r0.z = 1.01587307 * r0.x;
  r0.x = r0.x * 64 + -63;
  r0.x = r0.y ? r0.x : r0.z;
  r0.x = max(9.99999994e-09, r0.x);
  r0.y = cmp(v0.z >= 0.984375);
  r0.z = 1.01587307 * v0.z;
  r0.w = v0.z * 64 + -63;
  r0.y = r0.y ? r0.w : r0.z;
  r0.y = max(9.99999994e-09, r0.y);
  r0.xy = rcp(r0.xy);
  r0.z = r0.x + -r0.y;
  r0.x = cmp(r0.y < r0.x);
  r0.y = cmp(v5.z == 0.000000);
  r0.w = 1 / v5.z;
  r0.y = r0.y ? 60000 : r0.w;
  r0.y = saturate(r0.z * r0.y);
  r0.x = r0.x ? r0.y : 1;
  r1.xyzw = cmp(levelsControls.xyzw == float4(0,1,0,1));
  r0.y = r1.y ? r1.x : 0;
  r0.y = r1.z ? r0.y : 0;
  r0.y = r1.w ? r0.y : 0;
  r0.zw = v3.xy / v3.zz;
  r1.xy = ddx_coarse(r0.zw);
  r1.zw = ddy_coarse(r0.zw);
  r1.xyzw = colorMap.SampleGrad(colorSampler_s, r0.zw, r1.xyxx, r1.zwzz).xyzw;
  r0.z = dot(r1.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r2.xyz = r0.zzz + -r1.xyz;
  r2.xyz = desaturationAmount * r2.xyz + r1.xyz;
  r0.z = max(9.99999975e-05, r1.w);
  r3.xyz = saturate(r2.xyz / r0.zzz);
  r3.xyz = saturate(-levelsControls.xxx + r3.xyz);
  r4.xy = levelsControls.yw + -levelsControls.xz;
  r0.w = max(9.99999975e-05, r4.x);
  r3.xyz = r3.xyz / r0.www;
  r3.xyz = min(float3(1,1,1), r3.xyz);
  r3.xyz = r3.xyz * r4.yyy + levelsControls.zzz;
  r4.xyz = float3(0.0549999997,0.0549999997,0.0549999997) + r3.xyz;
  r4.xyz = float3(0.947867334,0.947867334,0.947867334) * abs(r4.xyz);
  r4.xyz = log2(r4.xyz);
  r4.xyz = float3(2.4000001,2.4000001,2.4000001) * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r5.xyz = cmp(float3(0.0404499993,0.0404499993,0.0404499993) >= r3.xyz);
  r3.xyz = float3(0.0773993805,0.0773993805,0.0773993805) * r3.xyz;
  r3.xyz = r5.xyz ? r3.xyz : r4.xyz;
  r3.xyz = r3.xyz * r1.www;
  r1.xyz = r0.yyy ? r2.xyz : r3.xyz;
  r0.yzw = r1.xyz / r0.zzz;
  r2.x = v1.w + r1.w;
  r2.w = saturate(r2.x * v5.y + -v5.y);
  r2.xyz = r2.www * r0.yzw;
  r0.y = cmp(v5.y != 1.000000);
  r1.xyzw = r0.yyyy ? r2.xyzw : r1.xyzw;
  r0.y = r0.y ? 1 : v1.w;
  r1.xyzw = r1.xyzw * r0.xxxx;
  r0.xyzw = r1.xyzw * r0.yyyy;
  r1.x = saturate(v7.y);
  r0.xyzw = r1.xxxx * r0.xyzw;
  r1.xyz = v2.xyz * r0.www;
  r2.z = (uint)v8.x;
  r2.xy = w7.xy;
  r2.xyz = lmapTex.Sample(colorSampler_s, r2.xyz).xyz;
  r2.xyz = v1.xyz * r2.xyz;
  r2.xyz = r0.xyz * r2.xyz + -r1.xyz;
  r1.xyz = v2.www * r2.xyz + r1.xyz;
  r2.xyz = v10.xyz * r0.www;
  r1.xyz = r1.xyz * v9.xyz + r2.xyz;
  r1.xyz = relHDRExposure.yyy * r1.xyz;
  r2.xyz = cmp(r1.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r1.xyz = r2.xyz ? r1.xyz : 0;
  r0.xyz = min(float3(65024,65024,64512), r1.xyz);
  r1.xy = cmp(float2(0.995000005,0.995000005) < w7.xy);
  r1.x = (int)r1.y | (int)r1.x;
  r1.yz = cmp(w7.xy < float2(0.00499999989,0.00499999989));
  r1.y = (int)r1.z | (int)r1.y;
  r1.x = (int)r1.y | (int)r1.x;
  r2.xz = float2(0,0.5) * relHDRExposure.xx;
  r2.w = 1;
  o0.xyzw = r1.xxxx ? r2.xxzw : r0.xyzw;
  return;
}