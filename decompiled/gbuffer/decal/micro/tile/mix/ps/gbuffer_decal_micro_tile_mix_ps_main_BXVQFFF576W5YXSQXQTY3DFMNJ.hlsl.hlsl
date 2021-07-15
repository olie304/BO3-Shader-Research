// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:27:38 2021

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
  float2 mixScale : packoffset(c12.z);
  float detailScaleHeight1 : packoffset(c13);
  float detailScaleHeight2 : packoffset(c13.y);
  float4 colorTint1 : packoffset(c14);
  float2 glossRange2 : packoffset(c15);
  float rotateUVs1 : packoffset(c15.z);
  float rotateUVs2 : packoffset(c15.w);
  bool useUVOffsets1 : packoffset(c16);
  bool useUVOffsets2 : packoffset(c16.y);
  float4 specColorTint1 : packoffset(c17);
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
SamplerState mixSampler_s : register(s5);
Texture2D<float4> floatZSampler : register(t0);
Texture2D<float4> resolvedNormal : register(t6);
Texture2D<float4> colorMap : register(t7);
Texture2D<float4> tintMask : register(t9);
Texture2D<float4> specColorMap : register(t10);
Texture2D<float4> normalMap : register(t11);
Texture2D<float4> glossMap : register(t12);
Texture2D<float4> aoMap : register(t14);
Texture2D<float4> detailMap1 : register(t15);
Texture2D<float4> tintMask2 : register(t16);
Texture2D<float4> detailMap2 : register(t17);
Texture2D<float4> glossMapDetail2 : register(t18);
Texture2D<float4> colorMapDetail2 : register(t19);
Texture2D<float4> mixMap : register(t20);
Texture2D<float4> specularMapDetail2 : register(t22);


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
  float4 v9 : TEXCOORD9,
  nointerpolation float4 v10 : TEXCOORD12,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
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
  r2.xyz = r1.xxx * v1.xyz + r2.xyz;
  r2.xyz = r1.zzz * v3.xyz + r2.xyz;
  r2.xyz = v4.xyz + r2.xyz;
  r3.xyz = float3(1,1,1) + -abs(r2.xyz);
  r3.xyz = cmp(r3.xyz < float3(0,0,0));
  r0.w = (int)r3.y | (int)r3.x;
  r0.w = (int)r3.z | (int)r0.w;
  if (r0.w != 0) discard;
  if (w5.x != 0) {
    r3.xyz = ddy_coarse(r0.yzx);
    r0.xyz = ddx_coarse(r0.xyz);
    r4.xyz = r3.xyz * r0.xyz;
    r0.xyz = r3.zxy * r0.yzx + -r4.xyz;
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
    r3.zw = float2(2,1) + -r0.ww;
    r0.w = sqrt(r3.z);
    r3.xy = r0.xy * r0.ww;
    r0.xyzw = (int4)r0.zzzz & int4(2,1,2,1);
    r0.xyzw = r0.zwxy ? float4(-1,-1,1.40129846e-45,1.40129846e-45) : float4(1,1,0,0);
    r0.w = (int)r0.w ^ (int)r0.z;
    r0.z = r0.w ? -1 : 1;
    r4.xyz = float3(-1,0,1) * r0.xyz;
    r5.xyz = float3(1,-2,1) * r0.xyz;
    r3.xyz = float3(0.408248305,0.707106769,0.577350259) * r3.xyw;
    r4.xyz = r4.xyz * r3.yyy;
    r3.xyw = r5.xyz * r3.xxx + r4.xyz;
    r0.xyz = r0.xyz * r3.zzz + r3.xyw;
    r0.x = dot(r0.xyz, v5.xyz);
    r0.x = -0.5 + r0.x;
    r0.x = cmp(r0.x < 0);
    if (r0.x != 0) discard;
  }
  r0.xy = r2.yz * float2(0.5,-0.5) + float2(0.5,0.5);
  r0.xy = r0.xy * v10.zw + v10.xy;
  r1.xyz = float3(0.100000001,0.100000001,0.100000001) * r1.xyz;
  r1.xyz = frac(r1.xyz);
  r0.zw = mixScale.xy * r0.xy;
  r0.z = mixMap.Sample(mixSampler_s, r0.zw).x;
  r2.xyz = normalMap.Sample(normalSampler_s, r0.xy).xyz;
  r2.xyz = float3(-0.5,-0.5,-0) + r2.xyz;
  r2.xyz = baseNormalHeight * r2.xyz + float3(0.5,0.5,0);
  r2.xy = r2.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r0.w = dot(r2.xy, r2.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r3.z = sqrt(r0.w);
  r0.w = r2.z * r2.z;
  r0.w = 0.333333343 * r0.w;
  r0.w = min(1, r0.w);
  sincos(rotateUVs1, r4.x, r5.x);
  r6.x = -r4.x;
  r2.zw = float2(-0.5,-0.5) + r0.xy;
  r6.y = r5.x;
  r6.z = r4.x;
  r4.x = dot(r2.zw, r6.yz);
  r4.y = dot(r2.zw, r6.xy);
  r4.zw = r4.xy + r1.yx;
  r1.z = 0.5 + r1.z;
  r4.zw = r4.zw + r1.zz;
  r4.xy = float2(0.5,0.5) + r4.xy;
  r4.xyzw = detailScale1.xyxy * r4.xyzw;
  r4.xy = useUVOffsets1 ? r4.zw : r4.xy;
  r5.xyzw = colorMap.Sample(colorSampler_s, r4.xy).xyzw;
  r1.w = tintMask.Sample(colorSampler_s, r4.xy).x;
  r6.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r6.xyz = r1.www * r6.xyz + float3(1,1,1);
  r5.xyz = r6.xyz * r5.xyz;
  r1.w = specColorMap.Sample(specColorSampler_s, r4.xy).x;
  r6.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + specColorTint.xyz;
  r6.xyz = r1.www * r6.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r3.w = glossMap.Sample(specColorSampler_s, r4.xy).x;
  r4.xyz = detailMap1.Sample(normalSampler_s, r4.xy).xyz;
  r4.xy = r4.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r4.z = r4.z * r4.z;
  r4.z = 0.333333343 * r4.z;
  r4.z = min(1, r4.z);
  sincos(rotateUVs2, r7.x, r8.x);
  r9.x = -r7.x;
  r9.y = r8.x;
  r9.z = r7.x;
  r7.x = dot(r2.zw, r9.yz);
  r7.y = dot(r2.zw, r9.xy);
  r1.xy = r7.xy + r1.yx;
  r1.xy = r1.xy + r1.zz;
  r1.xy = detailScale2.xy * r1.xy;
  r2.zw = float2(0.5,0.5) + r7.xy;
  r2.zw = detailScale2.xy * r2.zw;
  r1.xy = useUVOffsets1 ? r1.xy : r2.zw;
  r7.xyzw = colorMapDetail2.Sample(colorSampler_s, r1.xy).xyzw;
  r1.z = tintMask2.Sample(colorSampler_s, r1.xy).x;
  r8.xyz = float3(-1,-1,-1) + colorTint1.xyz;
  r8.xyz = r1.zzz * r8.xyz + float3(1,1,1);
  r7.xyz = r8.xyz * r7.xyz;
  r1.z = specularMapDetail2.Sample(specColorSampler_s, r1.xy).x;
  r8.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + specColorTint1.xyz;
  r8.xyz = r1.zzz * r8.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r2.z = glossMapDetail2.Sample(specColorSampler_s, r1.xy).x;
  r9.xyz = detailMap2.Sample(normalSampler_s, r1.xy).xyz;
  r7.xyzw = r7.xyzw + -r5.xyzw;
  r5.xyzw = r0.zzzz * r7.xyzw + r5.xyzw;
  r5.xyz = v8.xyz * r5.xyz;
  r1.x = r1.z + -r1.w;
  r1.x = r0.z * r1.x + r1.w;
  r1.yzw = r8.xyz + -r6.xyz;
  r1.yzw = r0.zzz * r1.yzw + r6.xyz;
  r1.x = 1 + -r1.x;
  r5.xyz = r5.xyz * r1.xxx;
  r1.x = glossRange.y + -glossRange.x;
  r1.x = r3.w * r1.x + glossRange.x;
  r1.x = saturate(0.0588235296 * r1.x);
  r2.w = glossRange2.y + -glossRange2.x;
  r2.z = r2.z * r2.w + glossRange2.x;
  r2.z = saturate(0.0588235296 * r2.z);
  r2.z = r2.z + -r1.x;
  r1.x = r0.z * r2.z + r1.x;
  r6.z = aoMap.Sample(aoSampler_s, r0.xy).x;
  r0.xy = r9.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.z = r9.z * r9.z;
  r2.z = 0.333333343 * r2.z;
  r2.z = min(1, r2.z);
  r3.xy = r4.xy * detailScaleHeight1 + r2.xy;
  r2.w = dot(r3.xyz, r3.xyz);
  r2.w = rsqrt(r2.w);
  r7.xyz = r3.xyz * r2.www;
  r7.w = r4.z * detailScaleHeight1 + r0.w;
  r3.xy = r0.xy * detailScaleHeight2 + r2.xy;
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = rsqrt(r0.x);
  r3.xyz = r3.xyz * r0.xxx;
  r3.w = r2.z * detailScaleHeight2 + r0.w;
  r2.xyzw = r3.xyzw + -r7.xyzw;
  r0.xyzw = r0.zzzz * r2.xyzw + r7.xyzw;
  r2.x = dot(v5.xyz, v5.xyz);
  r2.x = rsqrt(r2.x);
  r2.xyz = v5.xyz * r2.xxx;
  r2.w = dot(v6.xyz, v6.xyz);
  r2.w = rsqrt(r2.w);
  r3.xyz = v6.xyz * r2.www;
  r2.w = dot(v7.xyz, v7.xyz);
  r2.w = rsqrt(r2.w);
  r4.xyz = v7.xyz * r2.www;
  r1.x = -17 * r1.x;
  r1.x = exp2(r1.x);
  r0.w = r1.x + r0.w;
  r0.w = log2(r0.w);
  r0.w = saturate(-0.0588235296 * r0.w);
  r4.xyz = r4.xyz * r0.yyy;
  r3.xyz = r3.xyz * r0.xxx + r4.xyz;
  r0.xyz = r2.xyz * r0.zzz + r3.xyz;
  r1.x = dot(r0.xyz, r0.xyz);
  r1.x = rsqrt(r1.x);
  r0.xyz = r1.xxx * r0.xyz;
  o0.xyz = r5.xyz * r5.www;
  r2.xy = (uint2)v0.xy;
  r2.zw = float2(0,0);
  r2.zw = resolvedNormal.Load(r2.xyz).zw;
  r1.x = cmp(0 < r2.z);
  r2.w = r2.w * 3 + 0.5;
  r2.w = (uint)r2.w;
  r3.xyzw = (int4)r2.wwww & int4(2,1,2,1);
  r3.xyzw = r3.zwxy ? float4(-0.577350259,-0.577350259,1.40129846e-45,1.40129846e-45) : float4(0.577350259,0.577350259,0,0);
  r2.w = (int)r3.w ^ (int)r3.z;
  r3.z = r2.w ? -0.577350259 : 0.577350259;
  r4.xy = float2(-1.22474492,1.22474492) * r3.xz;
  r5.xyz = float3(0.707106769,-1.41421354,0.707106769) * r3.xyz;
  r5.x = dot(r0.xyz, r5.xyz);
  r5.y = dot(r0.xz, r4.xy);
  r0.x = dot(r0.xyz, r3.xyz);
  r0.x = 1 + abs(r0.x);
  r0.x = rsqrt(r0.x);
  r0.xy = r5.xy * r0.xx;
  r0.xy = r0.xy * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  r2.z = cmp(r2.z >= 0.5);
  r2.z = r2.z ? 0.5 : 0.00146627566;
  r0.z = r0.w * 0.49755621 + r2.z;
  r0.xyz = r1.xxx ? r0.xyz : 0;
  o1.xyz = r0.xyz * r5.www;
  r0.y = r1.y + -r1.w;
  r0.w = r0.y * 0.5 + r1.w;
  r0.z = r1.z + -r0.w;
  r0.x = r0.z * 0.5 + r0.w;
  r1.xy = (int2)r2.xy & int2(1,1);
  r0.w = cmp((int)r1.y == (int)r1.x);
  r0.xy = r0.ww ? r0.xy : r0.xz;
  r6.xy = r0.xy * float2(1,0.5) + float2(0,0.5);
  r6.w = 1;
  o2.xyzw = r6.xyzw * r5.wwww;
  o0.w = r5.w;
  o1.w = r5.w;
  return;
}