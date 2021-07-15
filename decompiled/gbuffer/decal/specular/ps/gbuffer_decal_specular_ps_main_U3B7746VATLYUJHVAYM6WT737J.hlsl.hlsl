// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:28:25 2021

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
Texture2D<float4> resolvedNormal : register(t6);
Texture2D<float4> colorMap : register(t7);
Texture2D<float4> thicknessMap : register(t9);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  nointerpolation float4 v1 : TEXCOORD1,
  nointerpolation float4 v2 : TEXCOORD2,
  nointerpolation float4 v3 : TEXCOORD3,
  nointerpolation float4 v4 : TEXCOORD4,
  nointerpolation float3 v5 : TEXCOORD5,
  nointerpolation uint w5 : TEXCOORD13,
  nointerpolation float4 v6 : TEXCOORD6,
  nointerpolation float4 v7 : TEXCOORD7,
  nointerpolation float4 v8 : TEXCOORD8,
  nointerpolation float4 v9 : TEXCOORD9,
  nointerpolation float4 v10 : TEXCOORD12,
  out float4 o2 : SV_TARGET2)
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
  r0.x = rcp(r0.x);
  r0.yz = -subpixelOffset.xy + v0.xy;
  r0.yz = renderTargetSize.zw * r0.yz;
  r0.yz = r0.yz * float2(2,-2) + float2(-1,1);
  r1.x = inverseProjectionMatrix._m00 * r0.y;
  r1.y = inverseProjectionMatrix._m11 * r0.z;
  r1.z = 1;
  r0.xyz = r1.xyz * r0.xxx;
  r1.xyz = inverseViewMatrix._m10_m11_m12 * r0.yyy;
  r0.xyw = r0.xxx * inverseViewMatrix._m00_m01_m02 + r1.xyz;
  r0.xyz = r0.zzz * inverseViewMatrix._m20_m21_m22 + r0.xyw;
  r1.xyz = eyeOffset.xyz + r0.xyz;
  r2.xyz = v2.xyz * r1.yyy;
  r1.xyw = r1.xxx * v1.xyz + r2.xyz;
  r1.xyz = r1.zzz * v3.xyz + r1.xyw;
  r1.xyz = v4.xyz + r1.xyz;
  r2.xyz = float3(1,1,1) + -abs(r1.xyz);
  r2.xyz = cmp(r2.xyz < float3(0,0,0));
  r0.w = (int)r2.y | (int)r2.x;
  r0.w = (int)r2.z | (int)r0.w;
  if (r0.w != 0) discard;
  if (w5.x != 0) {
    r2.xyz = ddy_coarse(r0.zxy);
    r3.xyz = ddx_coarse(r0.yzx);
    r4.xyz = r3.xyz * r2.xyz;
    r2.xyz = r2.zxy * r3.yzx + -r4.xyz;
    r0.w = dot(r2.xyz, r2.xyz);
    r0.w = rsqrt(r0.w);
    r2.xyz = r2.xyz * r0.www;
    r0.w = dot(r2.xyz, v5.xyz);
    r0.w = -0.5 + r0.w;
    r0.w = cmp(r0.w < 0);
    if (r0.w != 0) discard;
  } else {
    r2.xy = (uint2)v0.xy;
    r2.zw = float2(0,0);
    r2.xyz = resolvedNormal.Load(r2.xyz).xyw;
    r0.w = r2.z * 3 + 0.5;
    r0.w = (uint)r0.w;
    r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
    r2.xy = float2(0.850000024,0.850000024) * r2.xy;
    r1.w = dot(r2.xy, r2.xy);
    r3.zw = float2(2,1) + -r1.ww;
    r1.w = sqrt(r3.z);
    r3.xy = r2.xy * r1.ww;
    r2.xyzw = (int4)r0.wwww & int4(2,1,2,1);
    r2.xyzw = r2.zwxy ? float4(-1,-1,1.40129846e-45,1.40129846e-45) : float4(1,1,0,0);
    r0.w = (int)r2.w ^ (int)r2.z;
    r2.z = r0.w ? -1 : 1;
    r4.xyz = float3(-1,0,1) * r2.xyz;
    r5.xyz = float3(1,-2,1) * r2.xyz;
    r3.xyz = float3(0.408248305,0.707106769,0.577350259) * r3.xyw;
    r4.xyz = r4.xyz * r3.yyy;
    r3.xyw = r5.xyz * r3.xxx + r4.xyz;
    r2.xyz = r2.xyz * r3.zzz + r3.xyw;
    r0.w = dot(r2.xyz, v5.xyz);
    r0.w = -0.5 + r0.w;
    r0.w = cmp(r0.w < 0);
    if (r0.w != 0) discard;
  }
  r2.xyz = float3(1,1,1) + -v9.xyz;
  r3.xyz = -v9.xyz + abs(r1.xyz);
  r2.xyz = float3(1,1,1) / r2.xyz;
  r2.xyz = saturate(r3.xyz * r2.xyz);
  r3.xyz = r2.xyz * float3(-2,-2,-2) + float3(3,3,3);
  r2.xyz = r2.xyz * r2.xyz;
  r2.xyz = -r3.xyz * r2.xyz + float3(1,1,1);
  r0.w = min(r2.x, r2.y);
  r0.w = min(r0.w, r2.z);
  r0.w = v8.w * r0.w;
  r1.xy = r1.yz * float2(0.5,-0.5) + float2(0.5,0.5);
  r1.xy = r1.xy * v10.zw + v10.xy;
  r1.z = dot(-r0.xyz, -r0.xyz);
  r1.z = rsqrt(r1.z);
  r0.xyz = r1.zzz * -r0.xyz;
  r2.x = dot(r0.xyz, v6.xyz);
  r2.y = dot(r0.xyz, v7.xyz);
  r0.x = dot(r0.xyz, v5.xyz);
  r0.y = cmp(0 < r0.x);
  r0.xz = -r2.xy / r0.xx;
  r0.xy = r0.yy ? r0.xz : 0;
  r1.xy = float2(-0.5,-0.5) + r1.xy;
  r0.z = 9.99999975e-06 + layerDepth;
  r0.xy = r0.xy * r0.zz;
  r0.xy = scaleUVs.xy * r0.xy;
  r1.xy = r1.xy * scaleUVs.xy + r0.xy;
  r1.xy = offsetUVs.xy * scaleUVs.xy + r1.xy;
  r0.z = rotateUVs.y * gameTime.w + 1;
  r0.z = rotateUVs.x * r0.z;
  r0.z = 0.0174532924 * r0.z;
  sincos(r0.z, r2.x, r3.x);
  r3.y = r3.x;
  r3.z = r2.x;
  r4.x = dot(r3.yz, r1.xy);
  r3.x = -r2.x;
  r4.y = dot(r3.xy, r1.xy);
  r1.xy = gameTime.ww * scrollUVs.xy;
  r1.zw = r1.xy * scaleUVs.xy + r4.xy;
  r0.z = gameTime.w * zoomRate;
  r0.z = cos(r0.z);
  r0.z = r0.z * 0.5 + 0.5;
  r0.z = 1 + -r0.z;
  r2.x = zoomUVs.y + -zoomUVs.x;
  r0.z = r0.z * r2.x + zoomUVs.x;
  r1.zw = r1.zw / r0.zz;
  r1.zw = float2(0.5,0.5) + r1.zw;
  r2.xy = saturate(r1.zw);
  r1.zw = clampU ? r2.xy : r1.zw;
  r1.zw = float2(-0.5,-0.5) + r1.zw;
  r0.xy = r1.zw * scaleUVs.xy + r0.xy;
  r0.xy = offsetUVs.xy * scaleUVs.xy + r0.xy;
  r2.x = dot(r3.yz, r0.xy);
  r2.y = dot(r3.xy, r0.xy);
  r0.xy = r1.xy * scaleUVs.xy + r2.xy;
  r0.xy = r0.xy / r0.zz;
  r0.xy = float2(0.5,0.5) + r0.xy;
  r1.xy = saturate(r0.xy);
  r0.xy = clampU ? r1.xy : r0.xy;
  r1.xyzw = colorMap.Sample(colorSampler_s, r0.xy).xyzw;
  r1.xyz = v8.xyz * r1.xyz;
  r0.z = r1.w * r0.w;
  r0.x = thicknessMap.Sample(colorSampler_s, r0.xy).x;
  r0.x = 1 + -r0.x;
  r0.y = r1.z * r0.x;
  r1.zw = (uint2)v0.xy;
  r2.y = r1.x * r0.x + -r0.y;
  r0.y = r2.y * 0.5 + r0.y;
  r2.z = r1.y * r0.x + -r0.y;
  r2.x = r2.z * 0.5 + r0.y;
  r0.xy = (int2)r1.zw & int2(1,1);
  r0.x = cmp((int)r0.y == (int)r0.x);
  r0.xy = r0.xx ? r2.xy : r2.xz;
  r1.xy = r0.xy * float2(1,0.5) + float2(0,0.5);
  r1.zw = float2(0,1);
  o2.xyzw = r1.xyzw * r0.zzzz;
  return;
}