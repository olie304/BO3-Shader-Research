// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:39:58 2021

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

cbuffer MotionVectorParams : register(b7)
{

  struct
  {
    row_major float4x4 prevFrameOffToClpMatrixFull;
    row_major float4x4 prevFrameOffToClpMatrixPartial;
    row_major float4x4 curFrameCamToOffMatrix;
    float3 prevFrameEyeOffset;
    float motionStrength;
    float3 eyeOffsetFrameDelta;
    float _padding_23;
    float2 curFrameHalfNearPlaneSize;
    float2 _padding_26;
  } motionVectorConstants : packoffset(c0);

}

Texture2D<uint> stencilTex : register(t0);
Texture2D<float2> dynamicVelocityTex : register(t1);
Texture2D<float4> floatZSampler : register(t6);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main()
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u1
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = (uint2)vThreadID.xy;
  r0.xy = float2(0.5,0.5) + r0.xy;
  r1.xy = (int2)r0.xy;
  r1.zw = float2(0,0);
  r0.z = floatZSampler.Load(r1.xyz).x;
  r0.w = cmp(r0.z >= 0.984375);
  r1.x = 1.01587307 * r0.z;
  r0.z = r0.z * 64 + -63;
  r0.z = r0.w ? r0.z : r1.x;
  r0.z = max(9.99999994e-09, r0.z);
  r0.z = rcp(r0.z);
  r1.xy = vThreadID.xy;
  r1.zw = float2(0,0);
  r0.w = stencilTex.Load(r1.xyw).x;
  if (r0.w != 0) {
    r1.xy = dynamicVelocityTex.Load(r1.xyz).xy;
    r1.zw = float2(-0.5,-0.5) + abs(r1.xy);
    r1.zw = saturate(r1.zw + r1.zw);
    r2.xy = abs(r1.xy) + abs(r1.xy);
    r2.xy = min(float2(1,1), r2.xy);
    r2.xy = float2(10,10) * r2.xy;
    r1.zw = r1.zw * float2(30,30) + r2.xy;
    r1.xy = cmp(r1.xy >= float2(0,0));
    r1.xy = r1.xy ? r1.zw : -r1.zw;
  } else {
    r1.zw = -subpixelOffset.xy + r0.xy;
    r1.zw = renderTargetSize.zw * r1.zw;
    r1.zw = r1.zw * float2(2,-2) + float2(-1,1);
    r2.xy = motionVectorConstants.curFrameHalfNearPlaneSize.xy * r1.zw;
    r2.z = 1;
    r2.xyz = r2.xyz * r0.zzz;
    r3.xyz = motionVectorConstants.curFrameCamToOffMatrix._m10_m11_m12 * r2.yyy;
    r2.xyw = r2.xxx * motionVectorConstants.curFrameCamToOffMatrix._m00_m01_m02 + r3.xyz;
    r2.xyz = r2.zzz * motionVectorConstants.curFrameCamToOffMatrix._m20_m21_m22 + r2.xyw;
    r2.xyz = motionVectorConstants.curFrameCamToOffMatrix._m30_m31_m32 + r2.xyz;
    r2.xyz = motionVectorConstants.eyeOffsetFrameDelta.xyz + r2.xyz;
    r3.xyz = motionVectorConstants.prevFrameOffToClpMatrixFull._m10_m11_m13 * r2.yyy;
    r2.xyw = r2.xxx * motionVectorConstants.prevFrameOffToClpMatrixFull._m00_m01_m03 + r3.xyz;
    r2.xyz = r2.zzz * motionVectorConstants.prevFrameOffToClpMatrixFull._m20_m21_m23 + r2.xyw;
    r2.xyz = motionVectorConstants.prevFrameOffToClpMatrixFull._m30_m31_m33 + r2.xyz;
    r1.zw = r2.xy / r2.zz;
    r1.zw = r1.zw * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.xy = r0.xy * renderTargetSize.zw + -r1.zw;
    r1.xy = renderTargetSize.xy * r0.xy;
  }
  r2.xyzw = float4(-10,-10,-10,-10) + abs(r1.xyxx);
  r2.xyzw = saturate(float4(0.0333333351,0.0333333351,0.0333333351,0.0333333351) * r2.xyzw);
  r3.xyzw = float4(0.100000001,0.100000001,0.100000001,0.100000001) * abs(r1.xyxx);
  r3.xyzw = min(float4(1,1,1,1), r3.xyzw);
  r3.xyzw = r3.xyzw + -r2.wyww;
  r2.xyzw = r3.xyzw * float4(0.5,0.5,0.5,0.5) + r2.xyzw;
  r3.xyzw = cmp(r1.xyxx >= float4(0,0,0,0));
  r2.xyzw = r3.xyzw ? r2.xyzw : -r2.wyww;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, vThreadID.xyyy, r2.xyzw
  r0.xyw = motionVectorConstants.motionStrength * r1.xyx;
  r1.xyz = renderTargetSize.xyx / upscaledTargetSize.xyx;
  r0.xyw = r1.xyz * r0.xyw;
  r0.xyw = float3(0.5,0.5,0.5) * r0.xyw;
  r1.x = dot(r0.yw, r0.yw);
  r1.x = sqrt(r1.x);
  r1.y = min(20, r1.x);
  r1.y = r1.y + r1.y;
  r0.xyw = r1.yyy * r0.xyw;
  r1.x = 9.99999975e-05 + r1.x;
  r0.xyw = r0.xyw / r1.xxx;
  r1.xyw = r0.xyw * float3(0.00392156886,0.00392156886,0.00392156886) + float3(0.501960814,0.501960814,0.501960814);
  r0.x = 0.000122070313 * r0.z;
  r0.x = min(1, r0.x);
  r1.z = sqrt(r0.x);
// No code for instruction (needs manual fix):
store_uav_typed u1.xyzw, vThreadID.xyyy, r1.xyzw
  return;
}