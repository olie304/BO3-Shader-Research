// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:27:59 2021

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
Texture2D<float4> normalMap : register(t9);
Texture2D<float4> glossMap : register(t10);
Texture2D<float4> aoMap : register(t11);


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
  nointerpolation float4 v5 : TEXCOORD5,
  nointerpolation float4 v6 : TEXCOORD6,
  nointerpolation float4 v7 : TEXCOORD7,
  nointerpolation float4 v8 : TEXCOORD8,
  nointerpolation float4 v9 : TEXCOORD9,
  nointerpolation float4 v10 : TEXCOORD12,
  nointerpolation uint2 v11 : TEXCOORD13,
  nointerpolation float w11 : TEXCOORD0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
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
  if (v11.x != 0) {
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
  r0.y = v8.w * r0.x;
  r0.zw = r1.yz * float2(0.5,-0.5) + float2(0.5,0.5);
  r1.xy = r0.zw * v10.zw + v10.xy;
  r0.z = (int)v11.y & 255;
  r2.w = (uint)v11.y >> 28;
  if (8 == 0) r2.x = 0; else if (8+8 < 32) {   r2.x = (uint)v11.y << (32-(8 + 8)); r2.x = (uint)r2.x >> (32-8);  } else r2.x = (uint)v11.y >> 8;
  if (4 == 0) r2.y = 0; else if (4+24 < 32) {   r2.y = (uint)v11.y << (32-(4 + 24)); r2.y = (uint)r2.y >> (32-4);  } else r2.y = (uint)v11.y >> 24;
  if (8 == 0) r2.z = 0; else if (8+16 < 32) {   r2.z = (uint)v11.y << (32-(8 + 16)); r2.z = (uint)r2.z >> (32-8);  } else r2.z = (uint)v11.y >> 16;
  r0.w = (uint)r2.z;
  r3.z = 0.00390625 * r0.w;
  r4.xy = (uint2)r2.yw << int2(23,23);
  r4.xy = (int2)-r4.xy + int2(1065353216,1065353216);
  if (r2.y == 0) r0.w = 0; else if (r2.y+0 < 32) {   r0.w = (uint)r0.z << (32-(r2.y + 0)); r0.w = (uint)r0.w >> (32-r2.y);  } else r0.w = (uint)r0.z >> 0;
  if (r2.w == 0) r0.z = 0; else if (r2.w+r2.y < 32) {   r0.z = (uint)r0.z << (32-(r2.w + r2.y)); r0.z = (uint)r0.z >> (32-r2.w);  } else r0.z = (uint)r0.z >> r2.y;
  if (r2.y == 0) r1.w = 0; else if (r2.y+0 < 32) {   r1.w = (uint)r2.x << (32-(r2.y + 0)); r1.w = (uint)r1.w >> (32-r2.y);  } else r1.w = (uint)r2.x >> 0;
  if (r2.w == 0) r2.x = 0; else if (r2.w+r2.y < 32) {   r2.x = (uint)r2.x << (32-(r2.w + r2.y)); r2.x = (uint)r2.x >> (32-r2.w);  } else r2.x = (uint)r2.x >> r2.y;
  r5.xy = (uint2)r0.wz;
  r6.x = (uint)r1.w;
  r6.y = (uint)r2.x;
  r0.zw = r4.xy * r1.xy;
  r2.xy = r5.xy * r4.xy + r0.zw;
  r3.xy = r6.xy * r4.xy + r0.zw;
  r0.zw = v11.yy ? r2.xy : r1.xy;
  r1.z = 0;
  r1.xyz = v11.yyy ? r3.xyz : r1.xyz;
  r2.xyzw = colorMap.Sample(colorSampler_s, r0.zw).xyzw;
  r2.xyz = v8.xyz * r2.xyz;
  r1.w = r2.w * r0.y;
  r3.x = aoMap.Sample(aoSampler_s, r0.zw).x;
  r3.y = glossMap.Sample(specColorSampler_s, r0.zw).x;
  r3.z = glossRange.y + -glossRange.x;
  r3.y = r3.y * r3.z + glossRange.x;
  r3.y = saturate(0.0588235296 * r3.y);
  r4.xyz = normalMap.Sample(normalSampler_s, r0.zw).xyz;
  r4.xyz = float3(-0.5,-0.5,-0) + r4.xyz;
  r4.xyz = baseNormalHeight * r4.xyz + float3(0.5,0.5,0);
  r4.xy = r4.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r3.w = dot(r4.xy, r4.xy);
  r3.w = 1 + -r3.w;
  r3.w = max(0, r3.w);
  r3.w = sqrt(r3.w);
  r4.z = r4.z * r4.z;
  r4.z = 0.333333343 * r4.z;
  r4.z = min(1, r4.z);
  r4.w = dot(v5.xyz, v5.xyz);
  r4.w = rsqrt(r4.w);
  r5.xyz = v5.xyz * r4.www;
  r5.w = dot(v6.xyz, v6.xyz);
  r5.w = rsqrt(r5.w);
  r6.xyz = v6.xyz * r5.www;
  r5.w = dot(v7.xyz, v7.xyz);
  r5.w = rsqrt(r5.w);
  r7.xyz = v7.xyz * r5.www;
  r3.y = -17 * r3.y;
  r3.y = exp2(r3.y);
  r3.y = r4.z + r3.y;
  r3.y = log2(r3.y);
  r3.y = -0.0588235296 * r3.y;
  r3.y = max(0, r3.y);
  r8.xyz = r7.xyz * r4.yyy;
  r8.xyz = r6.xyz * r4.xxx + r8.xyz;
  r8.xyz = r5.xyz * r3.www + r8.xyz;
  r3.w = dot(r8.xyz, r8.xyz);
  r3.w = rsqrt(r3.w);
  r8.xyz = r8.xyz * r3.www;
  r3.w = debugGlossOverride.x * r3.z + glossRange.x;
  r3.w = saturate(0.0588235296 * r3.w);
  r3.w = -17 * r3.w;
  r3.w = exp2(r3.w);
  r4.x = r4.z + r3.w;
  r4.x = log2(r4.x);
  r4.x = -0.0588235296 * r4.x;
  r4.x = max(0, r4.x);
  r4.y = cmp(0 < debugStreamerControl.w);
  if (r4.y != 0) {
    r4.z = (int)debugStreamerControl.w;
    r5.w = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, r0.zw);
    r0.z = colorMap.CalculateLevelOfDetail(colorSampler_s, r0.zw);
    r0.w = cmp(r5.w < r0.z);
    r0.z = cmp(0 < r0.z);
    r9.xyz = (int3)r4.zzz & int3(1,2,4);
    r10.xyz = r9.xxx ? float3(1,0,1) : r2.xyz;
    r9.xyw = r9.yyy ? float3(0,1,1) : r2.xyz;
    r9.xyw = r0.zzz ? r10.xyz : r9.xyw;
    r10.xyz = r9.zzz ? float3(0,1,0) : r2.xyz;
    r2.xyz = r0.www ? r9.xyw : r10.xyz;
  }
  r9.xyz = debugColorOverride.xyz + -r2.xyz;
  r2.xyz = debugColorOverride.www * r9.xyz + r2.xyz;
  r0.z = -r2.w * r0.y + debugAlphaOverride.x;
  r0.z = debugAlphaOverride.w * r0.z + r1.w;
  r9.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + debugSpecularOverride.xyz;
  r9.xyz = debugSpecularOverride.www * r9.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = r4.x + -r3.y;
  r0.w = debugGlossOverride.w * r0.w + r3.y;
  r1.w = debugOcclusionOverride.x + -r3.x;
  r10.z = debugOcclusionOverride.w * r1.w + r3.x;
  r11.xyz = v5.xyz * r4.www + -r8.xyz;
  r8.xyz = debugNormalOverride.www * r11.xyz + r8.xyz;
  r1.w = cmp(w11.x != 1.000000);
  r2.w = max(0.00100000005, r0.y);
  r3.x = r0.z / r2.w;
  r3.x = v8.w * r0.x + r3.x;
  r3.x = saturate(r3.x * w11.x + -w11.x);
  r11.w = r1.w ? r3.x : r0.z;
  r0.z = cmp(r1.z != 0.000000);
  if (r0.z != 0) {
    r12.xyzw = colorMap.Sample(colorSampler_s, r1.xy).xyzw;
    r12.xyz = v8.xyz * r12.xyz;
    r0.z = r12.w * r0.y;
    r3.x = aoMap.Sample(aoSampler_s, r1.xy).x;
    r3.y = glossMap.Sample(specColorSampler_s, r1.xy).x;
    r3.y = r3.y * r3.z + glossRange.x;
    r3.y = saturate(0.0588235296 * r3.y);
    r13.xyz = normalMap.Sample(normalSampler_s, r1.xy).xyz;
    r13.xyz = float3(-0.5,-0.5,-0) + r13.xyz;
    r13.xyz = baseNormalHeight * r13.xyz + float3(0.5,0.5,0);
    r4.xz = r13.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
    r3.z = dot(r4.xz, r4.xz);
    r3.z = 1 + -r3.z;
    r3.z = max(0, r3.z);
    r3.z = sqrt(r3.z);
    r5.w = r13.z * r13.z;
    r5.w = 0.333333343 * r5.w;
    r5.w = min(1, r5.w);
    r3.y = -17 * r3.y;
    r3.y = exp2(r3.y);
    r3.y = r5.w + r3.y;
    r3.y = log2(r3.y);
    r3.y = -0.0588235296 * r3.y;
    r7.xyz = r7.xyz * r4.zzz;
    r6.xyz = r6.xyz * r4.xxx + r7.xyz;
    r5.xyz = r5.xyz * r3.zzz + r6.xyz;
    r3.z = dot(r5.xyz, r5.xyz);
    r3.z = rsqrt(r3.z);
    r5.xyz = r5.xyz * r3.zzz;
    r3.z = r5.w + r3.w;
    r3.z = log2(r3.z);
    r3.z = -0.0588235296 * r3.z;
    r3.yz = max(float2(0,0), r3.yz);
    if (r4.y != 0) {
      r3.w = (int)debugStreamerControl.w;
      r4.x = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, r1.xy);
      r1.x = colorMap.CalculateLevelOfDetail(colorSampler_s, r1.xy);
      r1.y = cmp(r4.x < r1.x);
      r1.x = cmp(0 < r1.x);
      r4.xyz = (int3)r3.www & int3(1,2,4);
      r6.xyz = r4.xxx ? float3(1,0,1) : r12.xyz;
      r7.xyz = r4.yyy ? float3(0,1,1) : r12.xyz;
      r6.xyz = r1.xxx ? r6.xyz : r7.xyz;
      r4.xyz = r4.zzz ? float3(0,1,0) : r12.xyz;
      r12.xyz = r1.yyy ? r6.xyz : r4.xyz;
    }
    r4.xyz = debugColorOverride.xyz + -r12.xyz;
    r4.xyz = debugColorOverride.www * r4.xyz + r12.xyz;
    r0.y = -r12.w * r0.y + debugAlphaOverride.x;
    r0.y = debugAlphaOverride.w * r0.y + r0.z;
    r0.z = r3.z + -r3.y;
    r0.z = debugGlossOverride.w * r0.z + r3.y;
    r1.x = debugOcclusionOverride.x + -r3.x;
    r1.x = debugOcclusionOverride.w * r1.x + r3.x;
    r3.xyz = v5.xyz * r4.www + -r5.xyz;
    r3.xyz = debugNormalOverride.www * r3.xyz + r5.xyz;
    r1.y = r0.y / r2.w;
    r0.x = v8.w * r0.x + r1.y;
    r0.x = saturate(r0.x * w11.x + -w11.x);
    r0.x = r1.w ? r0.x : r0.y;
    r4.xyz = r4.xyz + -r2.xyz;
    r2.xyz = r1.zzz * r4.xyz + r2.xyz;
    r0.x = r0.x + -r11.w;
    r11.w = r1.z * r0.x + r11.w;
    r3.xyz = r3.xyz + -r8.xyz;
    r8.xyz = r1.zzz * r3.xyz + r8.xyz;
    r0.x = r0.z + -r0.w;
    r0.w = r1.z * r0.x + r0.w;
    r0.x = r1.x + -r10.z;
    r10.z = r1.z * r0.x + r10.z;
  }
  r11.xyz = r11.www * r2.xyz;
  r1.xy = (uint2)v0.xy;
  r1.zw = float2(0,0);
  r0.xy = resolvedNormal.Load(r1.xyz).zw;
  r0.z = cmp(0 < r0.x);
  r0.y = r0.y * 3 + 0.5;
  r0.y = (uint)r0.y;
  r2.xyzw = (int4)r0.yyyy & int4(2,1,2,1);
  r2.xyzw = r2.zwxy ? float4(-0.577350259,-0.577350259,1.40129846e-45,1.40129846e-45) : float4(0.577350259,0.577350259,0,0);
  r0.y = (int)r2.w ^ (int)r2.z;
  r2.z = r0.y ? -0.577350259 : 0.577350259;
  r1.zw = float2(-1.22474492,1.22474492) * r2.xz;
  r3.xyz = float3(0.707106769,-1.41421354,0.707106769) * r2.xyz;
  r3.x = dot(r8.xyz, r3.xyz);
  r3.y = dot(r8.xz, r1.zw);
  r0.y = dot(r8.xyz, r2.xyz);
  r0.y = 1 + abs(r0.y);
  r0.y = rsqrt(r0.y);
  r1.zw = r3.xy * r0.yy;
  r2.xy = r1.zw * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  r0.x = cmp(r0.x >= 0.5);
  r0.x = r0.x ? 0.5 : 0.00146627566;
  r2.z = r0.w * 0.49755621 + r0.x;
  r0.xyz = r0.zzz ? r2.xyz : 0;
  o1.xyz = r0.xyz * r11.www;
  r0.y = r9.x + -r9.z;
  r0.w = r0.y * 0.5 + r9.z;
  r0.z = r9.y + -r0.w;
  r0.x = r0.z * 0.5 + r0.w;
  r1.xy = (int2)r1.xy & int2(1,1);
  r0.w = cmp((int)r1.y == (int)r1.x);
  r0.xy = r0.ww ? r0.xy : r0.xz;
  r10.xy = r0.xy * float2(1,0.5) + float2(0,0.5);
  r10.w = 1;
  o2.xyzw = r11.wwww * r10.xyzw;
  o0.xyzw = r11.xyzw;
  o1.w = r11.w;
  return;
}