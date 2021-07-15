// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:28 2021

cbuffer GenericsCBuffer : register(b3)
{
  float4 scriptVector0 : packoffset(c0);
  float4 scriptVector1 : packoffset(c1);
  float4 scriptVector2 : packoffset(c2);
  float4 scriptVector3 : packoffset(c3);
  float4 scriptVector4 : packoffset(c4);
  float4 scriptVector5 : packoffset(c5);
  float4 scriptVector6 : packoffset(c6);
  float4 scriptVector7 : packoffset(c7);
  float4 weaponParam0 : packoffset(c8);
  float4 weaponParam1 : packoffset(c9);
  float4 weaponParam2 : packoffset(c10);
  float4 weaponParam3 : packoffset(c11);
  float4 weaponParam4 : packoffset(c12);
  float4 weaponParam5 : packoffset(c13);
  float4 weaponParam6 : packoffset(c14);
  float4 weaponParam7 : packoffset(c15);
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

Texture2DArray<float3> gSRVReflectionArray : register(t0);
Texture2D<float3> gSRVReflection0 : register(t1);
Texture2D<float3> gSRVReflection1 : register(t2);
Texture2D<float3> gSRVReflection2 : register(t3);
Texture2D<float3> gSRVReflection3 : register(t4);
Texture2D<float3> gSRVReflection4 : register(t5);
Texture2D<float3> gSRVReflection5 : register(t6);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main()
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2darray (float,float,float,float) u0
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2darray (float,float,float,float) u1
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2darray (float,float,float,float) u2
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2darray (float,float,float,float) u3
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_structured g0, 12, 64
// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = (uint2)scriptVector0.xz;
  r0.z = cmp((int)r0.x == 256);
  if (r0.y != 0) {
    r1.xyz = vThreadID.xyz;
    r1.w = 0;
    r1.xyz = gSRVReflectionArray.Load(r1.xyzw).xyz;
  } else {
    switch (vThreadID.z) {
      case 0 :      r2.xy = vThreadID.xy;
      r2.zw = float2(0,0);
      r1.xyz = gSRVReflection0.Load(r2.xyz).xyz;
      break;
      case 1 :      r2.xy = vThreadID.xy;
      r2.zw = float2(0,0);
      r1.xyz = gSRVReflection1.Load(r2.xyz).xyz;
      break;
      case 2 :      r2.xy = vThreadID.xy;
      r2.zw = float2(0,0);
      r1.xyz = gSRVReflection2.Load(r2.xyz).xyz;
      break;
      case 3 :      r2.xy = vThreadID.xy;
      r2.zw = float2(0,0);
      r1.xyz = gSRVReflection3.Load(r2.xyz).xyz;
      break;
      case 4 :      r2.xy = vThreadID.xy;
      r2.zw = float2(0,0);
      r1.xyz = gSRVReflection4.Load(r2.xyz).xyz;
      break;
      default :
      r2.xy = vThreadID.xy;
      r2.zw = float2(0,0);
      r1.xyz = gSRVReflection5.Load(r2.xyz).xyz;
      break;
    }
  }
  r0.y = mad((int)vThreadIDInGroup.y, 8, (int)vThreadIDInGroup.x);
  r0.w = (int)r0.x + -1;
  r0.w = (int)r0.w + (int)-vThreadID.y;
  r1.w = 0.75 * hdrControl0.w;
  r2.x = vThreadID.y;
  r2.y = r0.z ? r0.w : r2.x;
  r3.xyzw = r0.zzzz ? r1.wwww : r1.xyzx;
  r2.xzw = vThreadID.xzz;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r2.xyzw, r3.xyzw
  gSRVReflectionArray[r0.y].0 = g0.xyz;
  r0.x = (uint)r0.x >> 1;
  r0.w = min(4, (uint)r0.x);
  GroupMemoryBarrierWithGroupSync();
  r1.xy = cmp((uint2)vThreadIDInGroup.xy < (uint2)r0.ww);
  r1.x = r1.y ? r1.x : 0;
  if (r1.x != 0) {
    r1.xy = (uint2)vThreadIDInGroup.xy << int2(1,1);
    r1.y = (uint)r1.y << 3;
    r1.x = (int)r1.y + (int)r1.x;
  // Known bad code for instruction (needs manual fix):
    ld_structured r2.xyz, r1.x, l(0), g0.xyzx
  r2.x = gSRVReflectionArray[]..swiz;
  r2.y = gSRVReflectionArray[]..swiz;
  r2.z = gSRVReflectionArray[]..swiz;
    r1.y = (int)r1.x + 1;
  // Known bad code for instruction (needs manual fix):
    ld_structured r3.xyz, r1.y, l(0), g0.xyzx
  r3.x = gSRVReflectionArray[]..swiz;
  r3.y = gSRVReflectionArray[]..swiz;
  r3.z = gSRVReflectionArray[]..swiz;
    r2.xyzw = r3.xyzx + r2.xyzx;
    r1.xy = (int2)r1.xx + int2(8,9);
  // Known bad code for instruction (needs manual fix):
    ld_structured r3.xyz, r1.x, l(0), g0.xyzx
  r3.x = gSRVReflectionArray[]..swiz;
  r3.y = gSRVReflectionArray[]..swiz;
  r3.z = gSRVReflectionArray[]..swiz;
    r2.xyzw = r3.xyzx + r2.xyzw;
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.xyz, r1.y, l(0), g0.xyzx
  r1.x = gSRVReflectionArray[]..swiz;
  r1.y = gSRVReflectionArray[]..swiz;
  r1.z = gSRVReflectionArray[]..swiz;
    r2.xyzw = r2.xyzw + r1.xyzx;
    r2.xyzw = float4(0.25,0.25,0.25,0.25) * r2.xyzw;
    gSRVReflectionArray[r0.y].0 = g0.xyz;
    r3.xy = mad((int2)vThreadGroupID.yx, (int2)r0.ww, (int2)vThreadIDInGroup.yx);
    r1.x = (int)r0.x + -1;
    r1.x = (int)-r3.x + (int)r1.x;
    r3.z = r0.z ? r1.x : r3.x;
    r2.xyzw = r0.zzzz ? r1.wwww : r2.xyzw;
    r3.w = vThreadID.z;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.yzww, r2.xyzw
  }
  r0.xw = (uint2)r0.xw >> int2(1,1);
  GroupMemoryBarrierWithGroupSync();
  r1.xy = cmp((uint2)vThreadIDInGroup.xy < (uint2)r0.ww);
  r1.x = r1.y ? r1.x : 0;
  if (r1.x != 0) {
    r1.xy = (uint2)vThreadIDInGroup.xy << int2(1,1);
    r1.y = (uint)r1.y << 3;
    r1.x = (int)r1.y + (int)r1.x;
  // Known bad code for instruction (needs manual fix):
    ld_structured r2.xyz, r1.x, l(0), g0.xyzx
  r2.x = gSRVReflectionArray[]..swiz;
  r2.y = gSRVReflectionArray[]..swiz;
  r2.z = gSRVReflectionArray[]..swiz;
    r1.y = (int)r1.x + 1;
  // Known bad code for instruction (needs manual fix):
    ld_structured r3.xyz, r1.y, l(0), g0.xyzx
  r3.x = gSRVReflectionArray[]..swiz;
  r3.y = gSRVReflectionArray[]..swiz;
  r3.z = gSRVReflectionArray[]..swiz;
    r2.xyzw = r3.xyzx + r2.xyzx;
    r1.xy = (int2)r1.xx + int2(8,9);
  // Known bad code for instruction (needs manual fix):
    ld_structured r3.xyz, r1.x, l(0), g0.xyzx
  r3.x = gSRVReflectionArray[]..swiz;
  r3.y = gSRVReflectionArray[]..swiz;
  r3.z = gSRVReflectionArray[]..swiz;
    r2.xyzw = r3.xyzx + r2.xyzw;
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.xyz, r1.y, l(0), g0.xyzx
  r1.x = gSRVReflectionArray[]..swiz;
  r1.y = gSRVReflectionArray[]..swiz;
  r1.z = gSRVReflectionArray[]..swiz;
    r2.xyzw = r2.xyzw + r1.xyzx;
    r2.xyzw = float4(0.25,0.25,0.25,0.25) * r2.xyzw;
    gSRVReflectionArray[r0.y].0 = g0.xyz;
    r3.xy = mad((int2)vThreadGroupID.yx, (int2)r0.ww, (int2)vThreadIDInGroup.yx);
    r0.y = (int)r0.x + -1;
    r0.y = (int)-r3.x + (int)r0.y;
    r3.z = r0.z ? r0.y : r3.x;
    r2.xyzw = r0.zzzz ? r1.wwww : r2.xyzw;
    r3.w = vThreadID.z;
  // No code for instruction (needs manual fix):
    store_uav_typed u2.xyzw, r3.yzww, r2.xyzw
  }
  r0.y = (uint)r0.w >> 1;
  GroupMemoryBarrierWithGroupSync();
  r0.yw = cmp((uint2)vThreadIDInGroup.xy < (uint2)r0.yy);
  r0.y = r0.w ? r0.y : 0;
  if (r0.y != 0) {
    r0.x = (uint)r0.x >> 1;
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.xyz, l(0), l(0), g0.xyzx
  r1.x = gSRVReflectionArray[]..swiz;
  r1.y = gSRVReflectionArray[]..swiz;
  r1.z = gSRVReflectionArray[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r2.xyz, l(1), l(0), g0.xyzx
  r2.x = gSRVReflectionArray[]..swiz;
  r2.y = gSRVReflectionArray[]..swiz;
  r2.z = gSRVReflectionArray[]..swiz;
    r2.xyzw = r2.xyzx + r1.xyzx;
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.xyz, l(8), l(0), g0.xyzx
  r1.x = gSRVReflectionArray[]..swiz;
  r1.y = gSRVReflectionArray[]..swiz;
  r1.z = gSRVReflectionArray[]..swiz;
    r2.xyzw = r2.xyzw + r1.xyzx;
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.xyz, l(9), l(0), g0.xyzx
  r1.x = gSRVReflectionArray[]..swiz;
  r1.y = gSRVReflectionArray[]..swiz;
  r1.z = gSRVReflectionArray[]..swiz;
    r2.xyzw = r2.xyzw + r1.xyzx;
    r2.xyzw = float4(0.25,0.25,0.25,0.25) * r2.xyzw;
    r0.x = (int)r0.x + -1;
    r0.x = (int)r0.x + (int)-vThreadGroupID.y;
    r0.y = vThreadGroupID.y;
    r3.y = r0.z ? r0.x : r0.y;
    r0.xyzw = r0.zzzz ? r1.wwww : r2.xyzw;
    r3.x = vThreadGroupID.x;
    r3.zw = vThreadID.zz;
  // No code for instruction (needs manual fix):
    store_uav_typed u3.xyzw, r3.xyzw, r0.xyzw
  }
  return;
}