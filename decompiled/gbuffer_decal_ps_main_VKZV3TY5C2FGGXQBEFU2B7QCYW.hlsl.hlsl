// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:28:10 2021

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
Texture2D<float4> floatZSampler : register(t0);
Texture2D<float4> resolvedNormal : register(t6);
Texture2D<float4> colorMap : register(t7);
Texture2D<float4> tintMask : register(t9);
Texture2D<float4> specColorMap : register(t10);
Texture2D<float4> normalMap : register(t11);
Texture2D<float4> glossMap : register(t12);
Texture2D<float4> aoMap : register(t14);


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
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
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
  r1.xyz = inverseViewMatrix._m11_m12_m10 * r0.yyy;
  r0.xyw = r0.xxx * inverseViewMatrix._m01_m02_m00 + r1.xyz;
  r0.xyz = r0.zzz * inverseViewMatrix._m21_m22_m20 + r0.xyw;
  r1.xyz = eyeOffset.xyz + r0.zxy;
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
    r2.xyz = ddy_coarse(r0.yzx);
    r0.xyz = ddx_coarse(r0.xyz);
    r3.xyz = r2.xyz * r0.xyz;
    r0.xyz = r2.zxy * r0.yzx + -r3.xyz;
    r0.w = dot(r0.xyz, r0.xyz);
    r0.w = rsqrt(r0.w);
    r0.xyz = r0.xyz * r0.www;
    r0.x = dot(r0.xyz, v5.xyz);
    r0.x = -0.5 + r0.x;
    r0.x = cmp(r0.x < 0);
    if (r0.x != 0) discard;
  } else {
    r0.xy = (uint2)v0.xy;
    r0.zw = float2(0,0);
    r0.xyz = resolvedNormal.Load(r0.xyz).xyw;
    r0.z = r0.z * 3 + 0.5;
    r0.z = (uint)r0.z;
    r0.xy = r0.xy * float2(2,2) + float2(-1,-1);
    r0.xy = float2(0.850000024,0.850000024) * r0.xy;
    r0.w = dot(r0.xy, r0.xy);
    r2.zw = float2(2,1) + -r0.ww;
    r0.w = sqrt(r2.z);
    r2.xy = r0.xy * r0.ww;
    r0.xyzw = (int4)r0.zzzz & int4(2,1,2,1);
    r0.xyzw = r0.zwxy ? float4(-1,-1,1.40129846e-45,1.40129846e-45) : float4(1,1,0,0);
    r0.w = (int)r0.w ^ (int)r0.z;
    r0.z = r0.w ? -1 : 1;
    r3.xyz = float3(-1,0,1) * r0.xyz;
    r4.xyz = float3(1,-2,1) * r0.xyz;
    r2.xyz = float3(0.408248305,0.707106769,0.577350259) * r2.xyw;
    r3.xyz = r3.xyz * r2.yyy;
    r2.xyw = r4.xyz * r2.xxx + r3.xyz;
    r0.xyz = r0.xyz * r2.zzz + r2.xyw;
    r0.x = dot(r0.xyz, v5.xyz);
    r0.x = -0.5 + r0.x;
    r0.x = cmp(r0.x < 0);
    if (r0.x != 0) discard;
  }
  r0.xyz = float3(1,1,1) + -v9.xyz;
  r2.xyz = -v9.xyz + abs(r1.xyz);
  r0.xyz = float3(1,1,1) / r0.xyz;
  r0.xyz = saturate(r2.xyz * r0.xyz);
  r2.xyz = r0.xyz * float3(-2,-2,-2) + float3(3,3,3);
  r0.xyz = r0.xyz * r0.xyz;
  r0.xyz = -r2.xyz * r0.xyz + float3(1,1,1);
  r0.x = min(r0.x, r0.y);
  r0.x = min(r0.x, r0.z);
  r0.x = v8.w * r0.x;
  r0.yz = r1.yz * float2(0.5,-0.5) + float2(0.5,0.5);
  r0.yz = r0.yz * v10.zw + v10.xy;
  r1.xyzw = colorMap.Sample(colorSampler_s, r0.yz).xyzw;
  r0.w = tintMask.Sample(colorSampler_s, r0.yz).x;
  r2.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r2.xyz = r0.www * r2.xyz + float3(1,1,1);
  r1.xyz = r2.xyz * r1.xyz;
  r1.xyz = v8.xyz * r1.xyz;
  r0.w = r1.w * r0.x;
  r2.x = specColorMap.Sample(specColorSampler_s, r0.yz).x;
  r2.yzw = float3(-0.0399999991,-0.0399999991,-0.0399999991) + specColorTint.xyz;
  r2.yzw = r2.xxx * r2.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r2.x = saturate(1 + -r2.x);
  r1.xyz = r2.xxx * r1.xyz;
  r2.x = aoMap.Sample(aoSampler_s, r0.yz).x;
  r3.x = glossMap.Sample(specColorSampler_s, r0.yz).x;
  r3.y = glossRange.y + -glossRange.x;
  r3.x = r3.x * r3.y + glossRange.x;
  r3.x = saturate(0.0588235296 * r3.x);
  r4.xyz = normalMap.Sample(normalSampler_s, r0.yz).xyz;
  r4.xyz = float3(-0.5,-0.5,-0) + r4.xyz;
  r4.xyz = baseNormalHeight * r4.xyz + float3(0.5,0.5,0);
  r3.zw = r4.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r4.x = dot(r3.zw, r3.zw);
  r4.x = 1 + -r4.x;
  r4.x = max(0, r4.x);
  r4.x = sqrt(r4.x);
  r4.y = r4.z * r4.z;
  r4.y = 0.333333343 * r4.y;
  r4.y = min(1, r4.y);
  r4.z = dot(v5.xyz, v5.xyz);
  r4.z = rsqrt(r4.z);
  r5.xyz = v5.xyz * r4.zzz;
  r4.w = dot(v6.xyz, v6.xyz);
  r4.w = rsqrt(r4.w);
  r6.xyz = v6.xyz * r4.www;
  r4.w = dot(v7.xyz, v7.xyz);
  r4.w = rsqrt(r4.w);
  r7.xyz = v7.xyz * r4.www;
  r3.x = -17 * r3.x;
  r3.x = exp2(r3.x);
  r3.x = r4.y + r3.x;
  r3.x = log2(r3.x);
  r3.x = -0.0588235296 * r3.x;
  r7.xyz = r7.xyz * r3.www;
  r6.xyz = r6.xyz * r3.zzz + r7.xyz;
  r5.xyz = r5.xyz * r4.xxx + r6.xyz;
  r3.z = dot(r5.xyz, r5.xyz);
  r3.z = rsqrt(r3.z);
  r5.xyz = r5.xyz * r3.zzz;
  r3.y = debugGlossOverride.x * r3.y + glossRange.x;
  r3.y = saturate(0.0588235296 * r3.y);
  r3.y = -17 * r3.y;
  r3.y = exp2(r3.y);
  r3.y = r4.y + r3.y;
  r3.y = log2(r3.y);
  r3.y = -0.0588235296 * r3.y;
  r3.xy = max(float2(0,0), r3.xy);
  r3.z = cmp(0 < debugStreamerControl.w);
  if (r3.z != 0) {
    r3.z = (int)debugStreamerControl.w;
    r3.w = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, r0.yz);
    r0.y = colorMap.CalculateLevelOfDetail(colorSampler_s, r0.yz);
    r0.z = cmp(r3.w < r0.y);
    r0.y = cmp(0 < r0.y);
    r4.xyw = (int3)r3.zzz & int3(1,2,4);
    r6.xyz = r4.xxx ? float3(1,0,1) : r1.xyz;
    r7.xyz = r4.yyy ? float3(0,1,1) : r1.xyz;
    r6.xyz = r0.yyy ? r6.xyz : r7.xyz;
    r4.xyw = r4.www ? float3(0,1,0) : r1.xyz;
    r1.xyz = r0.zzz ? r6.xyz : r4.xyw;
  }
  r4.xyw = debugColorOverride.xyz + -r1.xyz;
  r1.xyz = debugColorOverride.www * r4.xyw + r1.xyz;
  r0.x = -r1.w * r0.x + debugAlphaOverride.x;
  r0.x = debugAlphaOverride.w * r0.x + r0.w;
  r0.yzw = debugSpecularOverride.xyz + -r2.yzw;
  r0.yzw = debugSpecularOverride.www * r0.yzw + r2.yzw;
  r1.w = r3.y + -r3.x;
  r1.w = debugGlossOverride.w * r1.w + r3.x;
  r2.y = debugOcclusionOverride.x + -r2.x;
  r2.z = debugOcclusionOverride.w * r2.y + r2.x;
  r3.xyz = v5.xyz * r4.zzz + -r5.xyz;
  r3.xyz = debugNormalOverride.www * r3.xyz + r5.xyz;
  o0.xyz = r1.xyz * r0.xxx;
  r4.xy = (uint2)v0.xy;
  r4.zw = float2(0,0);
  r1.xy = resolvedNormal.Load(r4.xyz).zw;
  r1.z = cmp(0 < r1.x);
  r1.y = r1.y * 3 + 0.5;
  r1.y = (uint)r1.y;
  r5.xyzw = (int4)r1.yyyy & int4(2,1,2,1);
  r5.xyzw = r5.zwxy ? float4(-0.577350259,-0.577350259,1.40129846e-45,1.40129846e-45) : float4(0.577350259,0.577350259,0,0);
  r1.y = (int)r5.w ^ (int)r5.z;
  r5.z = r1.y ? -0.577350259 : 0.577350259;
  r4.zw = float2(-1.22474492,1.22474492) * r5.xz;
  r6.xyz = float3(0.707106769,-1.41421354,0.707106769) * r5.xyz;
  r6.x = dot(r3.xyz, r6.xyz);
  r6.y = dot(r3.xz, r4.zw);
  r1.y = dot(r3.xyz, r5.xyz);
  r1.y = 1 + abs(r1.y);
  r1.y = rsqrt(r1.y);
  r3.xy = r6.xy * r1.yy;
  r3.xy = r3.xy * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  r1.x = cmp(r1.x >= 0.5);
  r1.x = r1.x ? 0.5 : 0.00146627566;
  r3.z = r1.w * 0.49755621 + r1.x;
  r1.xyz = r1.zzz ? r3.xyz : 0;
  o1.xyz = r1.xyz * r0.xxx;
  r1.y = r0.y + -r0.w;
  r0.y = r1.y * 0.5 + r0.w;
  r1.z = r0.z + -r0.y;
  r1.x = r1.z * 0.5 + r0.y;
  r0.yz = (int2)r4.xy & int2(1,1);
  r0.y = cmp((int)r0.z == (int)r0.y);
  r0.yz = r0.yy ? r1.xy : r1.xz;
  r2.xy = r0.yz * float2(1,0.5) + float2(0,0.5);
  r2.w = 1;
  o2.xyzw = r2.xyzw * r0.xxxx;
  o0.w = r0.x;
  o1.w = r0.x;
  return;
}