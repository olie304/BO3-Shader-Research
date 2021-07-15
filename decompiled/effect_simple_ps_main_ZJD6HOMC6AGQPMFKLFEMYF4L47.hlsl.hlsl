// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:25:15 2021

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
  float hdrScale : packoffset(c15);
  uint zFeatherComputeSprites : packoffset(c15.y);
  float desaturationAmount : packoffset(c15.z);
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
Texture2D<float4> alphaMap : register(t25);


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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
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
  r2.xyzw = float4(-0.5,-0.5,-0.5,-0.5) + v4.xyzw;
  r3.xy = offsetUVsColor.xy * scaleUVsColor.xy;
  r3.zw = r2.xy * scaleUVsColor.xy + r3.xy;
  r4.xy = gameTime.ww * scrollUVsColor.xy;
  r4.z = rotateUVsColor.y * gameTime.w + 1;
  r4.z = rotateUVsColor.x * r4.z;
  r4.z = 0.0174532924 * r4.z;
  sincos(r4.z, r5.x, r6.x);
  r6.y = r6.x;
  r6.z = r5.x;
  r7.x = dot(r6.yz, r3.zw);
  r6.x = -r5.x;
  r7.y = dot(r6.xy, r3.zw);
  r3.zw = r4.xy * scaleUVsColor.xy + r7.xy;
  r3.zw = float2(0.5,0.5) + r3.zw;
  r5.xyzw = colorMap.SampleGrad(colorSampler_s, r3.zw, r0.xyxx, r0.zwzz).xyzw;
  r3.zw = cmp(v6.xy != float2(0,1));
  if (r3.z != 0) {
    r3.xy = r2.zw * scaleUVsColor.xy + r3.xy;
    r7.x = dot(r6.yz, r3.xy);
    r7.y = dot(r6.xy, r3.xy);
    r3.xy = r4.xy * scaleUVsColor.xy + r7.xy;
    r3.xy = float2(0.5,0.5) + r3.xy;
    r4.xyzw = colorMap.SampleGrad(colorSampler_s, r3.xy, r0.xyxx, r0.zwzz).xyzw;
    r4.xyzw = r4.xyzw + -r5.xyzw;
    r5.xyzw = v6.xxxx * r4.xyzw + r5.xyzw;
  }
  r3.x = dot(r5.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r4.xyz = r3.xxx + -r5.xyz;
  r4.xyz = desaturationAmount * r4.xyz + r5.xyz;
  r6.xyzw = cmp(levelsControls.xyzw == float4(0,1,0,1));
  r3.x = r6.y ? r6.x : 0;
  r3.x = r6.z ? r3.x : 0;
  r3.x = r6.w ? r3.x : 0;
  r3.y = max(9.99999975e-05, r5.w);
  r6.xyz = saturate(r4.xyz / r3.yyy);
  r6.xyz = saturate(-levelsControls.xxx + r6.xyz);
  r7.xy = levelsControls.yw + -levelsControls.xz;
  r4.w = max(9.99999975e-05, r7.x);
  r6.xyz = r6.xyz / r4.www;
  r6.xyz = min(float3(1,1,1), r6.xyz);
  r6.xyz = r6.xyz * r7.yyy + levelsControls.zzz;
  r7.xyz = cmp(float3(0.0404499993,0.0404499993,0.0404499993) >= r6.xyz);
  r8.xyz = float3(0.0773993805,0.0773993805,0.0773993805) * r6.xyz;
  r6.xyz = float3(0.0549999997,0.0549999997,0.0549999997) + r6.xyz;
  r6.xyz = float3(0.947867334,0.947867334,0.947867334) * abs(r6.xyz);
  r6.xyz = log2(r6.xyz);
  r6.xyz = float3(2.4000001,2.4000001,2.4000001) * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r6.xyz = r7.xyz ? r8.xyz : r6.xyz;
  r6.xyz = r6.xyz * r5.www;
  r5.xyz = r3.xxx ? r4.xyz : r6.xyz;
  r4.xy = (int2)v0.xy;
  r4.zw = float2(0,0);
  r3.x = floatZSampler.Load(r4.xyz).x;
  r4.x = cmp(v6.z == 0.000000);
  r4.y = 1 / v6.z;
  r4.x = r4.x ? 60000 : r4.y;
  r4.y = cmp(r3.x >= 0.984375);
  r4.z = 1.01587307 * r3.x;
  r3.x = r3.x * 64 + -63;
  r3.x = r4.y ? r3.x : r4.z;
  r3.x = max(9.99999994e-09, r3.x);
  r3.x = rcp(r3.x);
  r4.y = cmp(v0.z >= 0.984375);
  r4.z = 1.01587307 * v0.z;
  r4.w = v0.z * 64 + -63;
  r4.y = r4.y ? r4.w : r4.z;
  r4.y = max(9.99999994e-09, r4.y);
  r4.y = rcp(r4.y);
  r6.xyz = r5.xyz / r3.yyy;
  r3.y = v1.w + r5.w;
  r7.y = saturate(r3.y * v6.y + -v6.y);
  r7.xzw = r7.yyy * r6.xyz;
  r5.xyzw = r3.wwww ? r7.xzwy : r5.xyzw;
  r7.x = 1;
  r3.yw = r3.ww ? r7.xy : v1.ww;
  r4.z = cmp(r4.y < r3.x);
  r3.x = -r4.y + r3.x;
  r3.x = saturate(r3.x * r4.x);
  r3.x = r4.z ? r3.x : 1;
  r1.w = r1.w * r1.w;
  r1.w = saturate(r1.w * v8.x + v8.y);
  r3.w = r3.w * r3.x;
  r3.w = r3.w * r1.w;
  r4.xyzw = r5.xyzw * r3.xxxx;
  r4.xyzw = r4.xyzw * r3.yyyy;
  r4.xyzw = r4.xyzw * r1.wwww;
  r3.xy = offsetUVsEmissive.xy * scaleUVsEmissive.xy;
  r2.xy = r2.xy * scaleUVsEmissive.xy + r3.xy;
  r5.xy = gameTime.ww * scrollUVsEmissive.xy;
  r1.w = rotateUVsEmissive.y * gameTime.w + 1;
  r1.w = rotateUVsEmissive.x * r1.w;
  r1.w = 0.0174532924 * r1.w;
  sincos(r1.w, r6.x, r7.x);
  r7.y = r7.x;
  r7.z = r6.x;
  r8.x = dot(r7.yz, r2.xy);
  r7.x = -r6.x;
  r8.y = dot(r7.xy, r2.xy);
  r2.xy = r5.xy * scaleUVsEmissive.xy + r8.xy;
  r2.xy = float2(0.5,0.5) + r2.xy;
  r1.w = emissiveMap.SampleGrad(colorSampler_s, r2.xy, r0.x, r0.z).x;
  if (r3.z != 0) {
    r2.xy = r2.zw * scaleUVsEmissive.xy + r3.xy;
    r3.x = dot(r7.yz, r2.xy);
    r3.y = dot(r7.xy, r2.xy);
    r2.xy = r5.xy * scaleUVsEmissive.xy + r3.xy;
    r2.xy = float2(0.5,0.5) + r2.xy;
    r2.x = emissiveMap.SampleGrad(colorSampler_s, r2.xy, r0.x, r0.z).x;
    r2.x = r2.x + -r1.w;
    r1.w = v6.x * r2.x + r1.w;
  }
  r1.w = r1.w * r3.w;
  r2.x = dot(r1.xyz, float3(0.298999995,0.587000012,0.114));
  r2.x = max(9.99999975e-05, r2.x);
  r2.x = max(relHDRExposure.x, r2.x);
  r2.x = hdrScale * r2.x;
  r2.x = v5.w * r2.x;
  r2.x = useOldHDRScale ? hdrScale : r2.x;
  r1.w = r2.x * r1.w;
  r1.xyz = v2.xyz * r1.www + r1.xyz;
  r2.xy = useOldHDRScale * v4.xy;
  r1.w = alphaMap.SampleGrad(colorSampler_s, r2.xy, r0.x, r0.z).x;
  if (r3.z != 0) {
    r2.xy = useOldHDRScale * v4.zw;
    r0.x = alphaMap.SampleGrad(colorSampler_s, r2.xy, r0.x, r0.z).x;
    r0.x = r0.x + -r1.w;
    r1.w = v6.x * r0.x + r1.w;
  }
  r0.xyzw = r4.xyzw * r1.wwww;
  r2.xyz = v3.xyz * r0.www;
  r3.xyz = v11.xyz * r0.www;
  r1.xyz = r0.xyz * r1.xyz + -r2.xyz;
  r1.xyz = v3.www * r1.xyz + r2.xyz;
  r1.xyz = r1.xyz * v10.xyz + r3.xyz;
  r1.xyz = relHDRExposure.yyy * r1.xyz;
  r2.xyz = cmp(r1.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r1.xyz = r2.xyz ? r1.xyz : 0;
  r0.xyz = min(float3(65024,65024,64512), r1.xyz);
  r1.xy = cmp(float2(0.995000005,0.995000005) < w8.xy);
  r1.x = (int)r1.y | (int)r1.x;
  r1.yz = cmp(w8.xy < float2(0.00499999989,0.00499999989));
  r1.y = (int)r1.z | (int)r1.y;
  r1.x = (int)r1.y | (int)r1.x;
  r2.xz = float2(0,0.5) * relHDRExposure.xx;
  r2.w = 1;
  o0.xyzw = r1.xxxx ? r2.xxzw : r0.xyzw;
  return;
}