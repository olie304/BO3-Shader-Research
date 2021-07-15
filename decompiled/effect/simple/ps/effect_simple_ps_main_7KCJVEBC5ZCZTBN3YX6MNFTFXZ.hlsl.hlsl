// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:49 2021

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
  float2 falloffParms : packoffset(c15);
  float hdrScale : packoffset(c15.z);
  uint zFeatherComputeSprites : packoffset(c15.w);
  float desaturationAmount : packoffset(c16);
  float4 levelsControls : packoffset(c17);
  bool useOldHDRScale : packoffset(c18);
  float2 scaleUVsAlpha : packoffset(c18.y);
  float zFeatherOverride : packoffset(c18.w);
  float2 scaleUVsColor : packoffset(c19);
  float2 offsetUVsColor : packoffset(c19.z);
  float2 rotateUVsColor : packoffset(c20);
  float2 scrollUVsColor : packoffset(c20.z);
  float2 scaleUVsEmissive : packoffset(c21);
  float2 offsetUVsEmissive : packoffset(c21.z);
  float2 rotateUVsEmissive : packoffset(c22);
  float2 scrollUVsEmissive : packoffset(c22.z);
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
Texture2D<float4> emissiveMap : register(t22);
Texture2D<float4> alphaMap : register(t24);


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
  uint4 v9 : TEXCOORD6,
  float4 v10 : TEXCOORD7,
  float3 v11 : TEXCOORD8,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v5.xyz * r0.xxx;
  r0.w = dot(v7.xyz, v5.xyz);
  r1.xyz = -v7.xyz * r0.www + v5.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xy = cmp((int2)v6.ww == int2(1,2));
  r1.xyz = r2.yyy ? r1.xyz : v7.xyz;
  r0.xyz = r2.xxx ? r0.xyz : r1.xyz;
  r0.w = dot(-v5.xyz, -v5.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = -v5.xyz * r0.www;
  r0.x = dot(r1.xyz, r0.xyz);
  r0.x = r0.x * r0.x;
  r0.x = saturate(r0.x * v8.x + v8.y);
  r1.xy = (int2)v0.xy;
  r1.zw = float2(0,0);
  r0.y = floatZSampler.Load(r1.xyz).x;
  r0.z = cmp(r0.y >= 0.984375);
  r0.w = 1.01587307 * r0.y;
  r0.y = r0.y * 64 + -63;
  r0.y = r0.z ? r0.y : r0.w;
  r0.y = max(9.99999994e-09, r0.y);
  r0.z = cmp(v0.z >= 0.984375);
  r0.w = 1.01587307 * v0.z;
  r1.x = v0.z * 64 + -63;
  r0.z = r0.z ? r1.x : r0.w;
  r0.z = max(9.99999994e-09, r0.z);
  r0.yz = rcp(r0.yz);
  r0.w = r0.y + -r0.z;
  r0.y = cmp(r0.z < r0.y);
  r0.z = cmp(v6.z == 0.000000);
  r1.x = 1 / v6.z;
  r0.z = r0.z ? 60000 : r1.x;
  r0.z = saturate(r0.w * r0.z);
  r0.y = r0.y ? r0.z : 1;
  r1.xyzw = cmp(levelsControls.xyzw == float4(0,1,0,1));
  r0.z = r1.y ? r1.x : 0;
  r0.z = r1.z ? r0.z : 0;
  r0.z = r1.w ? r0.z : 0;
  r1.xy = gameTime.ww * scrollUVsColor.xy;
  r0.w = rotateUVsColor.y * gameTime.w + 1;
  r0.w = rotateUVsColor.x * r0.w;
  r0.w = 0.0174532924 * r0.w;
  sincos(r0.w, r2.x, r3.x);
  r4.z = r2.x;
  r4.y = r3.x;
  r4.x = -r2.x;
  r1.zw = offsetUVsColor.xy * scaleUVsColor.xy;
  r2.xy = v4.xy / v4.zz;
  r2.zw = float2(-0.5,-0.5) + r2.xy;
  r1.zw = r2.zw * scaleUVsColor.xy + r1.zw;
  r3.x = dot(r4.yz, r1.zw);
  r3.y = dot(r4.xy, r1.zw);
  r1.xy = r1.xy * scaleUVsColor.xy + r3.xy;
  r1.xy = float2(0.5,0.5) + r1.xy;
  r1.zw = ddx_coarse(r2.xy);
  r3.xy = ddy_coarse(r2.xy);
  r2.xy = useOldHDRScale * r2.xy;
  r0.w = alphaMap.SampleGrad(colorSampler_s, r2.xy, r1.z, r3.x).x;
  r4.xyzw = colorMap.SampleGrad(colorSampler_s, r1.xy, r1.zwzz, r3.xyxx).xyzw;
  r1.x = dot(r4.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r5.xyz = r1.xxx + -r4.xyz;
  r5.xyz = desaturationAmount * r5.xyz + r4.xyz;
  r1.x = max(9.99999975e-05, r4.w);
  r6.xyz = saturate(r5.xyz / r1.xxx);
  r6.xyz = saturate(-levelsControls.xxx + r6.xyz);
  r2.xy = levelsControls.yw + -levelsControls.xz;
  r1.y = max(9.99999975e-05, r2.x);
  r6.xyz = r6.xyz / r1.yyy;
  r6.xyz = min(float3(1,1,1), r6.xyz);
  r6.xyz = r6.xyz * r2.yyy + levelsControls.zzz;
  r7.xyz = float3(0.0549999997,0.0549999997,0.0549999997) + r6.xyz;
  r7.xyz = float3(0.947867334,0.947867334,0.947867334) * abs(r7.xyz);
  r7.xyz = log2(r7.xyz);
  r7.xyz = float3(2.4000001,2.4000001,2.4000001) * r7.xyz;
  r7.xyz = exp2(r7.xyz);
  r8.xyz = cmp(float3(0.0404499993,0.0404499993,0.0404499993) >= r6.xyz);
  r6.xyz = float3(0.0773993805,0.0773993805,0.0773993805) * r6.xyz;
  r6.xyz = r8.xyz ? r6.xyz : r7.xyz;
  r6.xyz = r6.xyz * r4.www;
  r4.xyz = r0.zzz ? r5.xyz : r6.xyz;
  r5.xyz = r4.xyz / r1.xxx;
  r0.z = v1.w + r4.w;
  r6.y = saturate(r0.z * v6.y + -v6.y);
  r6.xzw = r6.yyy * r5.xyz;
  r0.z = cmp(v6.y != 1.000000);
  r4.xyzw = r0.zzzz ? r6.xzwy : r4.xyzw;
  r4.xyzw = r4.xyzw * r0.yyyy;
  r6.x = 1;
  r1.xy = r0.zz ? r6.xy : v1.ww;
  r4.xyzw = r4.xyzw * r1.xxxx;
  r0.y = r1.y * r0.y;
  r0.y = r0.y * r0.x;
  r4.xyzw = r4.xyzw * r0.xxxx;
  r4.xyzw = r4.xyzw * r0.wwww;
  r0.xzw = v3.xyz * r4.www;
  r1.xy = offsetUVsEmissive.xy * scaleUVsEmissive.xy;
  r1.xy = r2.zw * scaleUVsEmissive.xy + r1.xy;
  r2.x = rotateUVsEmissive.y * gameTime.w + 1;
  r2.x = rotateUVsEmissive.x * r2.x;
  r2.x = 0.0174532924 * r2.x;
  sincos(r2.x, r2.x, r5.x);
  r6.z = r2.x;
  r6.y = r5.x;
  r6.x = -r2.x;
  r2.y = dot(r6.xy, r1.xy);
  r2.x = dot(r6.yz, r1.xy);
  r1.xy = gameTime.ww * scrollUVsEmissive.xy;
  r1.xy = r1.xy * scaleUVsEmissive.xy + r2.xy;
  r1.xy = float2(0.5,0.5) + r1.xy;
  r1.x = emissiveMap.SampleGrad(colorSampler_s, r1.xy, r1.z, r3.x).x;
  r0.y = r1.x * r0.y;
  r1.x = dot(v1.xyz, float3(0.298999995,0.587000012,0.114));
  r1.x = max(9.99999975e-05, r1.x);
  r1.x = max(relHDRExposure.x, r1.x);
  r1.x = hdrScale * r1.x;
  r1.x = v5.w * r1.x;
  r1.x = useOldHDRScale ? hdrScale : r1.x;
  r0.y = r1.x * r0.y;
  r1.xyz = v2.xyz * r0.yyy + v1.xyz;
  r1.xyz = r4.xyz * r1.xyz + -r0.xzw;
  r0.xyz = v3.www * r1.xyz + r0.xzw;
  r1.xyz = v11.xyz * r4.www;
  o0.w = r4.w;
  r0.xyz = r0.xyz * v10.xyz + r1.xyz;
  r0.xyz = relHDRExposure.yyy * r0.xyz;
  r1.xyz = cmp(r0.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r0.xyz = r1.xyz ? r0.xyz : 0;
  o0.xyz = min(float3(65024,65024,64512), r0.xyz);
  return;
}