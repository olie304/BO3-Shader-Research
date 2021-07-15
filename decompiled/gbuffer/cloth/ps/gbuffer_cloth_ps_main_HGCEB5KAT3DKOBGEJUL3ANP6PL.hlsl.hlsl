// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:26:57 2021

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
  float baseNormalHeight : packoffset(c10);
  float2 glossRange : packoffset(c10.y);
  float detailScaleHeight : packoffset(c10.w);
  float detailScaleHeight1 : packoffset(c11);
  float detailScaleHeight2 : packoffset(c11.y);
  float detailScaleHeight3 : packoffset(c11.z);
  float waterRefractionAmount : packoffset(c11.w);
  float2 tintScale : packoffset(c12);
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
SamplerState detailMaskSampler_s : register(s5);
SamplerState velveteenSampler_s : register(s6);
SamplerState tintBlendSampler_s : register(s7);
Texture2D<float4> colorMap : register(t0);
Texture2D<float4> normalMap : register(t6);
Texture2D<float4> glossMap : register(t7);
Texture2D<float4> aoMap : register(t9);
Texture2D<float4> detailNormal1 : register(t10);
Texture2D<float4> detailNormal2 : register(t11);
Texture2D<float4> detailNormal3 : register(t12);
Texture2D<float4> detailNormal4 : register(t14);
Texture2D<float4> detailNormalMask : register(t15);
Texture2D<float4> velveteenMask : register(t16);
Texture2D<float4> tintBlendMask : register(t17);


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
  float3 v4 : TEXCOORD3,
  float3 v5 : OFFPOSITION0,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = colorMap.Sample(colorSampler_s, w1.xy).xyzw;
  r0.w = v1.x * r0.w;
  r1.x = cmp(r0.w < 0.5);
  if (r1.x != 0) discard;
  r1.x = aoMap.Sample(aoSampler_s, w1.xy).x;
  r1.y = glossMap.Sample(specColorSampler_s, w1.xy).x;
  r1.z = glossRange.y + -glossRange.x;
  r1.y = r1.y * r1.z + glossRange.x;
  r1.y = saturate(0.0588235296 * r1.y);
  r2.xyz = normalMap.Sample(normalSampler_s, w1.xy).xyz;
  r2.xyz = float3(-0.5,-0.5,-0) + r2.xyz;
  r2.xyz = baseNormalHeight * r2.xyz + float3(0.5,0.5,0);
  r1.zw = r2.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.x = dot(r1.zw, r1.zw);
  r2.x = 1 + -r2.x;
  r2.x = max(0, r2.x);
  r3.z = sqrt(r2.x);
  r2.x = r2.z * r2.z;
  r2.x = 0.333333343 * r2.x;
  r2.x = min(1, r2.x);
  r4.xyzw = detailNormalMask.Sample(detailMaskSampler_s, w1.xy).xyzw;
  r2.y = cmp(0 < r4.x);
  r2.zw = detailScale3.xy * w1.xy;
  r5.xyz = detailNormal1.Sample(normalSampler_s, r2.zw).xyz;
  r2.zw = detailScale2.xy * w1.xy;
  r6.xyz = detailNormal2.Sample(normalSampler_s, r2.zw).xyz;
  r2.zw = detailScale1.xy * w1.xy;
  r7.xyz = detailNormal3.Sample(normalSampler_s, r2.zw).xyz;
  r2.zw = detailScale.xy * w1.xy;
  r8.xyz = detailNormal4.Sample(normalSampler_s, r2.zw).xyz;
  if (r2.y != 0) {
    r2.y = detailScaleHeight3 * r4.x;
    r8.xyz = r5.xyz;
  } else {
    r2.z = cmp(0 < r4.y);
    if (r2.z != 0) {
      r2.y = detailScaleHeight2 * r4.y;
      r8.xyz = r6.xyz;
    } else {
      r2.z = cmp(0 < r4.z);
      if (r2.z != 0) {
        r2.y = detailScaleHeight1 * r4.z;
        r8.xyz = r7.xyz;
      } else {
        r2.z = cmp(0 < r4.w);
        if (r2.z != 0) {
          r2.y = detailScaleHeight * r4.w;
        } else {
          r8.xyz = float3(0,0,0);
          r2.y = 0;
        }
      }
    }
  }
  r2.zw = r8.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r3.w = r8.z * r8.z;
  r3.w = 0.333333343 * r3.w;
  r3.w = min(1, r3.w);
  r3.xy = r2.zw * r2.yy + r1.zw;
  r1.z = dot(r3.xyz, r3.xyz);
  r1.z = rsqrt(r1.z);
  r3.xyz = r3.xyz * r1.zzz;
  r1.z = r3.w * r2.y + r2.x;
  r1.w = v6.x ? 1 : -1;
  r2.x = dot(v2.xyz, v2.xyz);
  r2.x = rsqrt(r2.x);
  r2.xyz = v2.xyz * r2.xxx;
  r4.xyz = r2.xyz * r1.www;
  r2.w = dot(v3.xyz, v3.xyz);
  r2.w = rsqrt(r2.w);
  r5.xyz = v3.xyz * r2.www;
  r5.xyz = r5.xyz * r1.www;
  r2.w = dot(v4.xyz, v4.xyz);
  r2.w = rsqrt(r2.w);
  r6.xyz = v4.xyz * r2.www;
  r6.xyz = r6.xyz * r1.www;
  r1.y = -17 * r1.y;
  r1.y = exp2(r1.y);
  r1.y = r1.z + r1.y;
  r1.y = log2(r1.y);
  r1.y = saturate(-0.0588235296 * r1.y);
  r6.xyz = r6.xyz * r3.yyy;
  r3.xyw = r5.xyz * r3.xxx + r6.xyz;
  r3.xyz = r4.xyz * r3.zzz + r3.xyw;
  r1.z = dot(r3.xyz, r3.xyz);
  r1.z = rsqrt(r1.z);
  r3.yzw = r3.xyz * r1.zzz;
  r4.zw = tintScale.xy * w1.xy;
  r4.zw = tintBlendMask.Sample(tintBlendSampler_s, r4.zw).xy;
  r5.xyz = float3(-1,-1,-1) + clothPrimaryTint.xyz;
  r5.xyz = r4.zzz * r5.xyz + float3(1,1,1);
  r6.xyz = clothSecondaryTint.xyz + -r5.xyz;
  r5.xyz = r4.www * r6.xyz + r5.xyz;
  r0.w = saturate(r0.w);
  r5.xyz = float3(-1,-1,-1) + r5.xyz;
  r5.xyz = r0.www * r5.xyz + float3(1,1,1);
  r6.xyz = r5.xyz * r0.xyz;
  r0.w = velveteenMask.Sample(velveteenSampler_s, w1.xy).x;
  r1.z = waterRefractionAmount * r0.w;
  r1.z = cmp(0 < r1.z);
  r2.w = 17 * r1.y;
  r2.w = exp2(r2.w);
  r2.w = 2 + r2.w;
  r2.w = 2 / r2.w;
  r2.w = sqrt(r2.w);
  r4.z = dot(-v5.xyz, -v5.xyz);
  r4.z = rsqrt(r4.z);
  r7.xyz = -v5.xyz * r4.zzz;
  r4.z = saturate(dot(r3.yzw, r7.xyz));
  r4.z = 1 + -r4.z;
  r2.w = 1 / r2.w;
  r4.z = log2(r4.z);
  r2.w = r4.z * r2.w;
  r2.w = exp2(r2.w);
  r0.w = saturate(-r0.w * waterRefractionAmount + 1);
  r0.w = r0.w + r2.w;
  r0.w = min(1, r0.w);
  r0.xyz = r0.xyz * r5.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r0.xyz = r2.www * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = r6.xyz * r0.www;
  o0.xyz = r1.zzz ? r5.xyz : r6.xyz;
  r0.xyz = r1.zzz ? r0.xyz : float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = r4.x + r4.y;
  r0.w = r2.z * r1.w + r0.w;
  r0.w = 0.5 * r0.w;
  r2.xyz = r2.xyz * r1.www + -r0.www;
  r1.z = max(r2.y, r2.z);
  r1.z = max(r2.x, r1.z);
  r0.w = max(r1.z, r0.w);
  r1.z = cmp(r0.w == r2.x);
  r4.yzw = float3(1,-1,-1) * r3.yzw;
  r1.w = 2 + r0.w;
  r4.x = 1;
  r3.x = 0;
  r3.xyzw = r1.zzzz ? r4.xyzw : r3.xyzw;
  r0.w = r1.z ? r1.w : r0.w;
  r1.z = cmp(r0.w == r2.y);
  r4.yzw = float3(-1,1,-1) * r3.yzw;
  r1.w = 2 + r0.w;
  r4.x = 2;
  r3.xyzw = r1.zzzz ? r4.xyzw : r3.xyzw;
  r0.w = r1.z ? r1.w : r0.w;
  r0.w = cmp(r0.w == r2.z);
  r2.yzw = float3(-1,-1,1) * r3.yzw;
  r2.x = 3;
  r2.xyzw = r0.wwww ? r2.xyzw : r3.xyzw;
  r0.w = r2.y + r2.z;
  r3.z = r0.w + r2.w;
  r3.y = r2.w + -r2.y;
  r3.x = -r2.z * 3 + r3.z;
  r2.yzw = float3(0.408248305,0.707106769,0.577350259) * r3.xyz;
  r0.w = 1 + abs(r2.w);
  r0.w = rsqrt(r0.w);
  r1.zw = r2.yz * r0.ww;
  o1.xy = r1.zw * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  o1.z = r1.y * 0.49755621 + 0.00146627566;
  r0.w = (uint)r2.x;
  o1.w = 0.333333343 * r0.w;
  r1.yz = (uint2)v0.xy;
  r2.y = r0.x + -r0.z;
  r0.x = r2.y * 0.5 + r0.z;
  r2.z = r0.y + -r0.x;
  r2.x = r2.z * 0.5 + r0.x;
  r0.xy = (int2)r1.yz & int2(1,1);
  r0.x = cmp((int)r0.y == (int)r0.x);
  r0.xy = r0.xx ? r2.xy : r2.xz;
  o2.xy = r0.xy * float2(1,0.5) + float2(0,0.5);
  o0.w = 1;
  o2.z = r1.x;
  o2.w = 0.333333343;
  return;
}