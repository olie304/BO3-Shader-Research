// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:25:12 2021

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
  float2 rotateUVs : packoffset(c11.z);
  float2 scrollUVs : packoffset(c12);
  float2 scaleUVs : packoffset(c12.z);
  float2 offsetUVs : packoffset(c13);
  float2 zoomUVs : packoffset(c13.z);
  float zoomRate : packoffset(c14);
  float layerDepth : packoffset(c14.y);
  bool clampU : packoffset(c14.z);
  bool clampV : packoffset(c14.w);
  uint zFeatherComputeSprites : packoffset(c15);
  float desaturationAmount : packoffset(c15.y);
  float4 levelsControls : packoffset(c16);
  bool useOldHDRScale : packoffset(c17);
  float2 scaleUVsAlpha : packoffset(c17.y);
  float zFeatherOverride : packoffset(c17.w);
  float2 scaleUVsColor : packoffset(c18);
  float2 offsetUVsColor : packoffset(c18.z);
  float2 rotateUVsColor : packoffset(c19);
  float2 scrollUVsColor : packoffset(c19.z);
  float2 scaleUVsEmissive : packoffset(c20);
  float2 offsetUVsEmissive : packoffset(c20.z);
  float2 rotateUVsEmissive : packoffset(c21);
  float2 scrollUVsEmissive : packoffset(c21.z);
  float translucentShadowOpacity : packoffset(c22);
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
Texture2D<float4> colorMap : register(t0);
Texture2D<float4> alphaMap : register(t21);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  nointerpolation float4 v4 : TEXCOORD2,
  float4 v5 : TEXCOORD3,
  float2 v6 : TEXCOORD4,
  float2 w6 : TEXCOORD5,
  uint v7 : TEXCOORD6,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = ddx_coarse(v2.xy);
  r0.zw = ddy_coarse(v2.xy);
  r1.xy = float2(-0.5,-0.5) + v2.xy;
  r1.zw = offsetUVsColor.xy * scaleUVsColor.xy;
  r1.xy = r1.xy * scaleUVsColor.xy + r1.zw;
  r2.xy = gameTime.ww * scrollUVsColor.xy;
  r2.z = rotateUVsColor.y * gameTime.w + 1;
  r2.z = rotateUVsColor.x * r2.z;
  r2.z = 0.0174532924 * r2.z;
  sincos(r2.z, r3.x, r4.x);
  r4.y = r4.x;
  r4.z = r3.x;
  r5.x = dot(r4.yz, r1.xy);
  r4.x = -r3.x;
  r5.y = dot(r4.xy, r1.xy);
  r1.xy = r2.xy * scaleUVsColor.xy + r5.xy;
  r1.xy = float2(0.5,0.5) + r1.xy;
  r3.xyzw = colorMap.SampleGrad(colorSampler_s, r1.xy, r0.xyxx, r0.zwzz).xyzw;
  r1.xy = cmp(v4.xy != float2(0,1));
  if (r1.x != 0) {
    r2.zw = float2(-0.5,-0.5) + v2.zw;
    r1.zw = r2.zw * scaleUVsColor.xy + r1.zw;
    r5.x = dot(r4.yz, r1.zw);
    r5.y = dot(r4.xy, r1.zw);
    r1.zw = r2.xy * scaleUVsColor.xy + r5.xy;
    r1.zw = float2(0.5,0.5) + r1.zw;
    r2.xyzw = colorMap.SampleGrad(colorSampler_s, r1.zw, r0.xyxx, r0.zwzz).xyzw;
    r2.xyzw = r2.xyzw + -r3.xyzw;
    r3.xyzw = v4.xxxx * r2.xyzw + r3.xyzw;
  }
  r1.z = dot(r3.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r2.xyz = r1.zzz + -r3.xyz;
  r2.xyz = desaturationAmount * r2.xyz + r3.xyz;
  r4.xyzw = cmp(levelsControls.xyzw == float4(0,1,0,1));
  r1.z = r4.y ? r4.x : 0;
  r1.z = r4.z ? r1.z : 0;
  r1.z = r4.w ? r1.z : 0;
  r1.w = max(9.99999975e-05, r3.w);
  r4.xyz = saturate(r2.xyz / r1.www);
  r4.xyz = saturate(-levelsControls.xxx + r4.xyz);
  r3.yz = levelsControls.yw + -levelsControls.xz;
  r1.w = max(9.99999975e-05, r3.y);
  r4.xyz = r4.xyz / r1.www;
  r4.xyz = min(float3(1,1,1), r4.xyz);
  r4.xyz = r4.xyz * r3.zzz + levelsControls.zzz;
  r5.xyz = cmp(float3(0.0404499993,0.0404499993,0.0404499993) >= r4.xyz);
  r6.xyz = float3(0.0773993805,0.0773993805,0.0773993805) * r4.xyz;
  r4.xyz = float3(0.0549999997,0.0549999997,0.0549999997) + r4.xyz;
  r4.xyz = float3(0.947867334,0.947867334,0.947867334) * abs(r4.xyz);
  r4.xyz = log2(r4.xyz);
  r4.xyz = float3(2.4000001,2.4000001,2.4000001) * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r5.xyz ? r6.xyz : r4.xyz;
  r4.xyz = r4.xyz * r3.www;
  r2.xyz = r1.zzz ? r2.xyz : r4.xyz;
  r1.z = v1.w + r3.w;
  r4.x = saturate(r1.z * v4.y + -v4.y);
  r4.y = 1;
  r3.x = v1.w;
  r1.yz = r1.yy ? r4.xy : r3.wx;
  r2.w = r1.y * r1.z;
  r1.yz = useOldHDRScale * v2.xy;
  r1.y = alphaMap.SampleGrad(colorSampler_s, r1.yz, r0.y, r0.w).x;
  if (r1.x != 0) {
    r1.xz = useOldHDRScale * v2.zw;
    r0.x = alphaMap.SampleGrad(colorSampler_s, r1.xz, r0.x, r0.z).x;
    r0.x = r0.x + -r1.y;
    r1.y = v4.x * r0.x + r1.y;
  }
  r0.xyzw = r2.xyzw * r1.yyyy;
  r1.w = translucentShadowOpacity * r0.w;
  r0.w = cmp(r1.w < 0.25);
  if (r0.w != 0) discard;
  r0.xyz = v1.xyz * r0.xyz;
  r0.xyz = relHDRExposure.yyy * r0.xyz;
  r2.xyz = cmp(r0.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r0.xyz = r2.xyz ? r0.xyz : 0;
  r1.xyz = min(float3(65024,65024,64512), r0.xyz);
  r0.xy = cmp(float2(0.995000005,0.995000005) < w6.xy);
  r0.x = (int)r0.y | (int)r0.x;
  r0.yz = cmp(w6.xy < float2(0.00499999989,0.00499999989));
  r0.y = (int)r0.z | (int)r0.y;
  r0.x = (int)r0.y | (int)r0.x;
  r2.xz = float2(0,0.5) * relHDRExposure.xx;
  r2.w = 1;
  o0.xyzw = r0.xxxx ? r2.xxzw : r1.xyzw;
  return;
}