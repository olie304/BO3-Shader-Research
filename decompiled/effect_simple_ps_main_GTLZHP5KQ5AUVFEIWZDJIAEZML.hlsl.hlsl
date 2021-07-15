// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:57 2021

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
  float hdrScale : packoffset(c11.z);
  uint zFeatherComputeSprites : packoffset(c11.w);
  float desaturationAmount : packoffset(c12);
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
Texture2D<float4> emissiveMap : register(t24);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  float3 v2 : COLOR1,
  float4 v3 : COLOR2,
  float4 v4 : TEXCOORD0,
  float4 v5 : TEXCOORD1,
  nointerpolation float4 v6 : TEXCOORD2,
  float4 v7 : TEXCOORD3,
  float2 v8 : TEXCOORD4,
  float2 w8 : TEXCOORD5,
  nointerpolation uint4 v9 : TEXCOORD6,
  float4 v10 : TEXCOORD7,
  float3 v11 : TEXCOORD8,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = ddx_coarse(v4.xy);
  r0.zw = ddy_coarse(v4.xy);
  r1.z = (uint)v9.x;
  r1.xy = w8.xy;
  r1.xyz = lmapTex.Sample(colorSampler_s, r1.xyz).xyz;
  r1.xyz = v1.xyz * r1.xyz;
  r1.w = dot(v5.xyz, v5.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = v5.xyz * r1.www;
  r3.xy = cmp((int2)v6.ww == int2(1,2));
  r1.w = dot(v7.xyz, v5.xyz);
  r4.xyz = -v7.xyz * r1.www + v5.xyz;
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = r4.xyz * r1.www;
  r3.yzw = r3.yyy ? r4.xyz : v7.xyz;
  r2.xyz = r3.xxx ? r2.xyz : r3.yzw;
  r1.w = dot(-v5.xyz, -v5.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = -v5.xyz * r1.www;
  r1.w = dot(r3.xyz, r2.xyz);
  r2.xyzw = colorMap.SampleGrad(colorSampler_s, v4.xy, r0.xyxx, r0.zwzz).xyzw;
  r3.xy = cmp(v6.xy != float2(0,1));
  if (r3.x != 0) {
    r4.xyzw = colorMap.SampleGrad(colorSampler_s, v4.zw, r0.xyxx, r0.zwzz).xyzw;
    r4.xyzw = r4.xyzw + -r2.xyzw;
    r2.xyzw = v6.xxxx * r4.xyzw + r2.xyzw;
  }
  r3.z = dot(r2.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r4.xyz = r3.zzz + -r2.xyz;
  r4.xyz = desaturationAmount * r4.xyz + r2.xyz;
  r5.xyzw = cmp(levelsControls.xyzw == float4(0,1,0,1));
  r3.z = r5.y ? r5.x : 0;
  r3.z = r5.z ? r3.z : 0;
  r3.z = r5.w ? r3.z : 0;
  r3.w = max(9.99999975e-05, r2.w);
  r5.xyz = saturate(r4.xyz / r3.www);
  r5.xyz = saturate(-levelsControls.xxx + r5.xyz);
  r6.xy = levelsControls.yw + -levelsControls.xz;
  r4.w = max(9.99999975e-05, r6.x);
  r5.xyz = r5.xyz / r4.www;
  r5.xyz = min(float3(1,1,1), r5.xyz);
  r5.xyz = r5.xyz * r6.yyy + levelsControls.zzz;
  r6.xyz = cmp(float3(0.0404499993,0.0404499993,0.0404499993) >= r5.xyz);
  r7.xyz = float3(0.0773993805,0.0773993805,0.0773993805) * r5.xyz;
  r5.xyz = float3(0.0549999997,0.0549999997,0.0549999997) + r5.xyz;
  r5.xyz = float3(0.947867334,0.947867334,0.947867334) * abs(r5.xyz);
  r5.xyz = log2(r5.xyz);
  r5.xyz = float3(2.4000001,2.4000001,2.4000001) * r5.xyz;
  r5.xyz = exp2(r5.xyz);
  r5.xyz = r6.xyz ? r7.xyz : r5.xyz;
  r5.xyz = r5.xyz * r2.www;
  r2.xyz = r3.zzz ? r4.xyz : r5.xyz;
  r4.xy = (int2)v0.xy;
  r4.zw = float2(0,0);
  r3.z = floatZSampler.Load(r4.xyz).x;
  r4.x = cmp(v6.z == 0.000000);
  r4.y = 1 / v6.z;
  r4.x = r4.x ? 60000 : r4.y;
  r4.y = cmp(r3.z >= 0.984375);
  r4.z = 1.01587307 * r3.z;
  r3.z = r3.z * 64 + -63;
  r3.z = r4.y ? r3.z : r4.z;
  r3.z = max(9.99999994e-09, r3.z);
  r3.z = rcp(r3.z);
  r4.y = cmp(v0.z >= 0.984375);
  r4.z = 1.01587307 * v0.z;
  r4.w = v0.z * 64 + -63;
  r4.y = r4.y ? r4.w : r4.z;
  r4.y = max(9.99999994e-09, r4.y);
  r4.y = rcp(r4.y);
  r5.xyz = r2.xyz / r3.www;
  r3.w = v1.w + r2.w;
  r6.y = saturate(r3.w * v6.y + -v6.y);
  r6.xzw = r6.yyy * r5.xyz;
  r2.xyzw = r3.yyyy ? r6.xzwy : r2.xyzw;
  r6.x = 1;
  r3.yw = r3.yy ? r6.xy : v1.ww;
  r4.z = cmp(r4.y < r3.z);
  r3.z = -r4.y + r3.z;
  r3.z = saturate(r3.z * r4.x);
  r3.z = r4.z ? r3.z : 1;
  r1.w = r1.w * r1.w;
  r1.w = saturate(r1.w * v8.x + v8.y);
  r3.w = r3.w * r3.z;
  r3.w = r3.w * r1.w;
  r2.xyzw = r3.zzzz * r2.xyzw;
  r2.xyzw = r2.xyzw * r3.yyyy;
  r2.xyzw = r2.xyzw * r1.wwww;
  r1.w = emissiveMap.SampleGrad(colorSampler_s, v4.xy, r0.x, r0.z).x;
  if (r3.x != 0) {
    r0.x = emissiveMap.SampleGrad(colorSampler_s, v4.zw, r0.x, r0.z).x;
    r0.x = r0.x + -r1.w;
    r1.w = v6.x * r0.x + r1.w;
  }
  r0.x = r1.w * r3.w;
  r0.y = dot(r1.xyz, float3(0.298999995,0.587000012,0.114));
  r0.y = max(9.99999975e-05, r0.y);
  r0.y = max(relHDRExposure.x, r0.y);
  r0.y = hdrScale * r0.y;
  r0.y = v5.w * r0.y;
  r0.y = useOldHDRScale ? hdrScale : r0.y;
  r0.x = r0.y * r0.x;
  r0.xyz = v2.xyz * r0.xxx + r1.xyz;
  r1.xyz = v3.xyz * r2.www;
  r3.xyz = v11.xyz * r2.www;
  r0.xyz = r2.xyz * r0.xyz + -r1.xyz;
  r0.xyz = v3.www * r0.xyz + r1.xyz;
  r0.xyz = r0.xyz * v10.xyz + r3.xyz;
  r0.xyz = relHDRExposure.yyy * r0.xyz;
  r1.xyz = cmp(r0.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r0.xyz = r1.xyz ? r0.xyz : 0;
  o0.xyz = min(float3(65024,65024,64512), r0.xyz);
  o0.w = r2.w;
  return;
}