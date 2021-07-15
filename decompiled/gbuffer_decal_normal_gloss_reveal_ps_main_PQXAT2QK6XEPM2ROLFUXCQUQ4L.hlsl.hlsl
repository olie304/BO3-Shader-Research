// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:27:49 2021

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
  float alphaRevealSoftEdge : packoffset(c10);
  float alphaRevealRamp : packoffset(c10.y);
  float2 revealScale : packoffset(c10.z);
  float baseNormalHeight : packoffset(c11);
  float2 glossRange : packoffset(c11.y);
  float2 normalMapScale : packoffset(c12);
  float4 flowParams : packoffset(c13);
  float4 noiseParams : packoffset(c14);
  bool useOrientedNormalMap : packoffset(c15);
  float3 colorTint : packoffset(c15.y);
  bool scaleReveal : packoffset(c16);
  float2 normalsFlowScaleMin : packoffset(c16.y);
  float3 normalAdjustAndGloss : packoffset(c17);
  bool scaleNormalsWithFlow : packoffset(c17.w);
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

SamplerState revealSampler_s : register(s1);
SamplerState colorSampler_s : register(s2);
SamplerState specColorSampler_s : register(s3);
SamplerState normalSampler_s : register(s4);
SamplerState flowSampler_s : register(s5);
SamplerState noiseSampler_s : register(s6);
Texture2D<float4> resolvedNormal : register(t0);
Texture2D<float4> revealMap : register(t6);
Texture2D<float4> colorMap : register(t7);
Texture2D<float4> normalMap : register(t9);
Texture2D<float4> glossMap : register(t10);
Texture2D<float4> flowMap : register(t11);
Texture2D<float4> noiseMap : register(t12);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float3 v1 : COLOR0,
  float w1 : COLOR1,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float4 v4 : TEXCOORD2,
  float3 v5 : TEXCOORD3,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = normalMapScale.xy * v2.xy;
  r0.zw = scaleReveal ? r0.xy : v2.xy;
  r0.zw = revealScale.xy * r0.zw;
  r0.z = revealMap.Sample(revealSampler_s, r0.zw).x;
  r0.w = saturate(w1.x * 0.998000026 + 0.00100000005);
  r1.x = 1 + -r0.w;
  r1.y = saturate(alphaRevealRamp);
  r0.w = log2(r0.w);
  r0.w = r1.y * r0.w;
  r0.w = exp2(r0.w);
  r2.x = -r0.w;
  r0.w = log2(r1.x);
  r0.w = r1.y * r0.w;
  r2.y = exp2(r0.w);
  r1.xy = saturate(alphaRevealSoftEdge * r2.xy + r1.xx);
  r0.z = -r1.x + r0.z;
  r0.w = r1.y + -r1.x;
  r0.z = saturate(r0.z / r0.w);
  r1.xyz = float3(-1,-1,-1) + useOrientedNormalMap;
  r1.xyz = r0.zzz * r1.xyz + float3(1,1,1);
  r0.w = glossMap.Sample(specColorSampler_s, v2.xy).x;
  r1.w = glossRange.y + -glossRange.x;
  r0.w = r0.w * r1.w + glossRange.x;
  r0.w = saturate(0.0588235296 * r0.w);
  r2.x = v6.x ? 1 : -1;
  r2.y = dot(v3.xyz, v3.xyz);
  r2.y = rsqrt(r2.y);
  r2.yzw = v3.xyz * r2.yyy;
  r3.x = dot(v4.xyz, v4.xyz);
  r3.x = rsqrt(r3.x);
  r3.xyz = v4.xyz * r3.xxx;
  r3.xyz = r3.xyz * r2.xxx;
  r3.w = dot(v5.xyz, v5.xyz);
  r3.w = rsqrt(r3.w);
  r4.xyz = v5.xyz * r3.www;
  r4.xyz = r4.xyz * r2.xxx;
  r5.xy = gameTime.ww * noiseParams.xy;
  r5.xy = v2.xy * noiseParams.zz + r5.xy;
  r5.xy = noiseMap.Sample(noiseSampler_s, r5.xy).xy;
  r5.xy = noiseParams.ww * r5.xy;
  r5.xy = v2.xy * flowParams.xx + r5.xy;
  r5.zw = frac(r5.xy);
  r6.xy = r5.zw * float2(-2,-2) + float2(3,3);
  r5.zw = r5.zw * r5.zw;
  r6.zw = r6.xy * r5.zw;
  normalMap.GetDimensions(0, fDest.x, fDest.y, fDest.z);
  r7.xy = fDest.xy;
  r7.xy = r7.xy * r0.xy;
  r7.zw = ddx_coarse(r7.xy);
  r7.xy = ddy_coarse(r7.xy);
  r3.w = dot(r7.zw, r7.zw);
  r4.w = dot(r7.xy, r7.xy);
  r3.w = max(r4.w, r3.w);
  r3.w = log2(r3.w);
  r3.w = 0.5 * r3.w;
  r7.xy = floor(r5.xy);
  r7.xy = r7.xy / flowParams.xx;
  r7.xy = flowMap.Sample(flowSampler_s, r7.xy).xy;
  r7.xy = r7.xy + r7.xy;
  r8.xyzw = float4(1,0,0,1) + r5.xyxy;
  r8.xyzw = floor(r8.xyzw);
  r8.xyzw = r8.xyzw / flowParams.xxxx;
  r7.zw = flowMap.Sample(flowSampler_s, r8.xy).xy;
  r7.zw = r7.zw + r7.zw;
  r8.xy = flowMap.Sample(flowSampler_s, r8.zw).xy;
  r8.xy = r8.xy + r8.xy;
  r5.xy = float2(1,1) + r5.xy;
  r5.xy = floor(r5.xy);
  r5.xy = r5.xy / flowParams.xx;
  r5.xy = flowMap.Sample(flowSampler_s, r5.xy).xy;
  r5.xy = r5.xy + r5.xy;
  if (scaleNormalsWithFlow != 0) {
    r8.zw = flowMap.Sample(flowSampler_s, v2.xy).xy;
    r9.xy = r8.zw + r8.zw;
    r9.zw = r9.xy * float2(-1,1) + float2(1,-1);
    r8.zw = r9.xw * float2(-1,1) + float2(1,0);
    r4.w = dot(r9.zw, r8.zw);
    r4.w = sqrt(r4.w);
    r4.w = r4.w * scaleReveal + scaleReveal;
    r8.zw = normalAdjustAndGloss.xy * r4.ww;
  } else {
    r8.zw = normalAdjustAndGloss.xy;
  }
  r5.zw = -r6.xy * r5.zw + float2(1,1);
  r5.zw = r5.zw * r5.zw;
  r5.zw = r6.zw * r6.zw + r5.zw;
  r5.zw = rsqrt(r5.zw);
  if (useOrientedNormalMap == 0) {
    r4.w = gameTime.w * flowParams.y;
    r6.xy = r7.xy * float2(-1,1) + float2(1,-1);
    r6.xy = r6.xy * r4.ww + r0.xy;
    r6.xy = normalMap.SampleLevel(normalSampler_s, r6.xy, r3.w).xy;
    r9.xy = r7.zw * float2(-1,1) + float2(1,-1);
    r9.xy = r9.xy * r4.ww + r0.xy;
    r9.xy = normalMap.SampleLevel(normalSampler_s, r9.xy, r3.w).xy;
    r9.xy = r9.xy + -r6.xy;
    r6.xy = r6.zz * r9.xy + r6.xy;
    r9.xy = r8.xy * float2(-1,1) + float2(1,-1);
    r9.xy = r9.xy * r4.ww + r0.xy;
    r9.xy = normalMap.SampleLevel(normalSampler_s, r9.xy, r3.w).xy;
    r9.zw = r5.xy * float2(-1,1) + float2(1,-1);
    r0.xy = r9.zw * r4.ww + r0.xy;
    r0.xy = normalMap.SampleLevel(normalSampler_s, r0.xy, r3.w).xy;
    r0.xy = r0.xy + -r9.xy;
    r0.xy = r6.zz * r0.xy + r9.xy;
    r0.xy = r0.xy + -r6.xy;
    r0.xy = r6.ww * r0.xy + r6.xy;
    r0.xy = r0.xy * r8.zz + r8.ww;
  } else {
    r6.xy = r7.xy * float2(-1,1) + float2(1,-1);
    r4.w = dot(r6.xy, r6.xy);
    r4.w = sqrt(r4.w);
    r4.w = max(9.99999975e-06, r4.w);
    r9.xy = r6.xy / r4.ww;
    r9.z = -r9.x;
    r6.x = dot(v2.xy, r9.yz);
    r6.y = dot(v2.xy, -r9.xy);
    r10.xy = normalMapScale.xy * r6.xy;
    r4.w = gameTime.w * r4.w;
    r10.z = -r4.w * flowParams.y + r10.y;
    r6.xy = normalMap.SampleLevel(normalSampler_s, r10.xz, r3.w).xy;
    r6.xy = r6.xy * r8.zz + r8.ww;
    r7.x = dot(r6.xy, r9.yz);
    r7.y = dot(r6.xy, -r9.xy);
    r6.xy = r7.zw * float2(-1,1) + float2(1,-1);
    r4.w = dot(r6.xy, r6.xy);
    r4.w = sqrt(r4.w);
    r4.w = max(9.99999975e-06, r4.w);
    r9.xy = r6.xy / r4.ww;
    r9.z = -r9.x;
    r6.x = dot(v2.xy, r9.yz);
    r6.y = dot(v2.xy, -r9.xy);
    r10.xy = normalMapScale.xy * r6.xy;
    r4.w = gameTime.w * r4.w;
    r10.z = -r4.w * flowParams.y + r10.y;
    r6.xy = normalMap.SampleLevel(normalSampler_s, r10.xz, r3.w).xy;
    r6.xy = r6.xy * r8.zz + r8.ww;
    r10.x = dot(r6.xy, r9.yz);
    r10.y = dot(r6.xy, -r9.xy);
    r6.xy = r10.xy + -r7.xy;
    r6.xy = r6.zz * r6.xy + r7.xy;
    r7.xy = r8.xy * float2(-1,1) + float2(1,-1);
    r4.w = dot(r7.xy, r7.xy);
    r4.w = sqrt(r4.w);
    r4.w = max(9.99999975e-06, r4.w);
    r7.xy = r7.xy / r4.ww;
    r7.z = -r7.x;
    r8.x = dot(v2.xy, r7.yz);
    r8.y = dot(v2.xy, -r7.xy);
    r9.xy = normalMapScale.xy * r8.xy;
    r4.w = gameTime.w * r4.w;
    r9.z = -r4.w * flowParams.y + r9.y;
    r8.xy = normalMap.SampleLevel(normalSampler_s, r9.xz, r3.w).xy;
    r8.xy = r8.xy * r8.zz + r8.ww;
    r9.x = dot(r8.xy, r7.yz);
    r9.y = dot(r8.xy, -r7.xy);
    r5.xy = r5.xy * float2(-1,1) + float2(1,-1);
    r4.w = dot(r5.xy, r5.xy);
    r4.w = sqrt(r4.w);
    r4.w = max(9.99999975e-06, r4.w);
    r7.xy = r5.xy / r4.ww;
    r7.z = -r7.x;
    r5.x = dot(v2.xy, r7.yz);
    r5.y = dot(v2.xy, -r7.xy);
    r10.xy = normalMapScale.xy * r5.xy;
    r4.w = gameTime.w * r4.w;
    r10.z = -r4.w * flowParams.y + r10.y;
    r5.xy = normalMap.SampleLevel(normalSampler_s, r10.xz, r3.w).xy;
    r5.xy = r5.xy * r8.zz + r8.ww;
    r8.x = dot(r5.xy, r7.yz);
    r8.y = dot(r5.xy, -r7.xy);
    r5.xy = r8.xy + -r9.xy;
    r5.xy = r6.zz * r5.xy + r9.xy;
    r5.xy = r5.xy + -r6.xy;
    r0.xy = r6.ww * r5.xy + r6.xy;
  }
  r3.w = r5.z * r5.w;
  r0.xy = r3.ww * r0.xy;
  r4.xyz = r4.xyz * r0.yyy;
  r3.xyz = r3.xyz * r0.xxx + r4.xyz;
  r2.xyz = r2.yzw * r2.xxx + r3.xyz;
  r0.x = dot(r2.xyz, r2.xyz);
  r0.x = rsqrt(r0.x);
  r2.xyz = r2.xyz * r0.xxx;
  r0.x = debugGlossOverride.x * r1.w + glossRange.x;
  r0.x = saturate(0.0588235296 * r0.x);
  r0.y = cmp(0 < debugStreamerControl.w);
  if (r0.y != 0) {
    r0.y = (int)debugStreamerControl.w;
    r1.w = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, v2.xy);
    r2.w = colorMap.CalculateLevelOfDetail(colorSampler_s, v2.xy);
    r1.w = cmp(r1.w < r2.w);
    r2.w = cmp(0 < r2.w);
    r3.xyz = (int3)r0.yyy & int3(1,2,4);
    r4.xyz = r3.xxx ? float3(1,0,1) : r1.xyz;
    r3.xyw = r3.yyy ? float3(0,1,1) : r1.xyz;
    r3.xyw = r2.www ? r4.xyz : r3.xyw;
    r4.xyz = r3.zzz ? float3(0,1,0) : r1.xyz;
    r1.xyz = r1.www ? r3.xyw : r4.xyz;
  }
  r3.xyz = debugColorOverride.xyz + -r1.xyz;
  o0.xyz = debugColorOverride.www * r3.xyz + r1.xyz;
  r0.y = debugAlphaOverride.x + -r0.z;
  r0.y = debugAlphaOverride.w * r0.y + r0.z;
  r0.x = r0.x + -r0.w;
  r0.x = debugGlossOverride.w * r0.x + r0.w;
  r1.xyz = v6.xxx ? v3.xyz : -v3.xyz;
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = rsqrt(r0.z);
  r1.xyz = r1.xyz * r0.zzz + -r2.xyz;
  r1.xyz = debugNormalOverride.www * r1.xyz + r2.xyz;
  r2.xy = (uint2)v0.xy;
  r2.zw = float2(0,0);
  r0.zw = resolvedNormal.Load(r2.xyz).zw;
  r1.w = cmp(0 < r0.z);
  r0.w = r0.w * 3 + 0.5;
  r0.w = (uint)r0.w;
  r2.xyzw = (int4)r0.wwww & int4(2,1,2,1);
  r2.xyzw = r2.zwxy ? float4(-0.577350259,-0.577350259,1.40129846e-45,1.40129846e-45) : float4(0.577350259,0.577350259,0,0);
  r0.w = (int)r2.w ^ (int)r2.z;
  r2.z = r0.w ? -0.577350259 : 0.577350259;
  r3.xy = float2(-1.22474492,1.22474492) * r2.xz;
  r4.xyz = float3(0.707106769,-1.41421354,0.707106769) * r2.xyz;
  r4.x = dot(r1.xyz, r4.xyz);
  r4.y = dot(r1.xz, r3.xy);
  r0.w = dot(r1.xyz, r2.xyz);
  r0.w = 1 + abs(r0.w);
  r0.w = rsqrt(r0.w);
  r1.xy = r4.xy * r0.ww;
  r1.xy = r1.xy * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  r0.z = cmp(r0.z >= 0.5);
  r0.z = r0.z ? 0.5 : 0.00146627566;
  r1.z = r0.x * 0.49755621 + r0.z;
  r0.xzw = r1.www ? r1.xyz : 0;
  o1.xyz = r0.xzw * r0.yyy;
  o0.w = r0.y;
  o1.w = r0.y;
  return;
}