// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:39:57 2021

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



// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


[maxvertexcount(23)]
void main( 
  inout TriangleStream<float> m0,
  float4 v0 : SV_POSITION0,
  float3 v1 : NORMAL0,
  float w1 : TEXCOORD3,
  float4 v2 : COLOR0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  uint4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD4,
  uint4 v7 : TEXCOORD5,
  float4 v8 : TEXCOORD6,
  out float4 o0 : SV_POSITION0,
  out float3 o1 : NORMAL0,
  out float4 o2 : COLOR0,
  out uint o3 : TEXCOORD0)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_input_siv v[3][0].xyzw, position
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_inputprimitive triangle 
// Needs manual fix for instruction:  
//dcl_stream m0
// Needs manual fix for instruction: 
// unknown dcl_: dcl_outputtopology trianglestrip 
  r0.xyz = v[2][3].zxy + -v[0][3].zxy;
  r1.xyz = v[1][3].yzx + -v[0][3].yzx;
  r2.xyz = r1.xyz * r0.xyz;
  r0.xyz = r0.zxy * r1.yzx + -r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = -v[0][3].xyz + eyeOffset.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r0.w = dot(r0.xyz, r1.xyz);
  r1.xyz = -v[1][3].xyz + eyeOffset.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  r1.x = dot(r0.xyz, r1.xyz);
  r1.yzw = -v[2][3].xyz + eyeOffset.xyz;
  r2.x = dot(r1.yzw, r1.yzw);
  r2.x = rsqrt(r2.x);
  r1.yzw = r2.xxx * r1.yzw;
  r1.y = dot(r0.xyz, r1.yzw);
  r2.xyz = (int3)triDensityFlags.xxx & int3(32,1,6);
  if (r2.x != 0) {
    r1.z = v[0][0].z + 9.99999975e-05;
    o0.xyw = v[0][0].xyw;
    o0.z = r1.z;
    o1.xyz = r0.xyz;
    o2.xyzw = float4(1,1,1,1);
    o3.x = 1;
  // Needs manual fix for instruction, maybe. 
//    emit_stream m0
  m0.Append(0); 
    r1.z = v[1][0].z + 9.99999975e-05;
    o0.xyw = v[1][0].xyw;
    o0.z = r1.z;
    o1.xyz = r0.xyz;
    o2.xyzw = float4(1,1,1,1);
    o3.x = 1;
  // Needs manual fix for instruction, maybe. 
//    emit_stream m0
  m0.Append(0); 
    r1.z = v[2][0].z + 9.99999975e-05;
    o0.xyw = v[2][0].xyw;
    o0.z = r1.z;
    o1.xyz = r0.xyz;
    o2.xyzw = float4(1,1,1,1);
    o3.x = 1;
  // Needs manual fix for instruction, maybe. 
//    emit_stream m0
  m0.Append(0); 
  // Needs manual fix for instruction, maybe. 
//    cut_stream m0
  m0.RestartStrip(); 
  }
  if (r2.y != 0) {
    r0.xy = (int2)triDensityFlags.xx & int2(8,16);
    r0.z = -0.100000001 + r0.w;
    r0.z = saturate(1.42857146 * r0.z);
    r1.z = r0.z * -2 + 3;
    r0.z = r0.z * r0.z;
    r0.z = r1.z * r0.z;
    r3.xy = r0.xy ? r0.zz : float2(1,1);
    r0.z = triDensityParams.y * r3.x;
    r4.xy = float2(0,0);
    r4.z = triDensityParams.z;
    r3.z = 1;
    r2.xyw = r4.yyz * r3.zzy;
    r3.xyzw = r0.zzzz * float4(-0.5,0.5,0,0) + v[0][4].xyzw;
    r1.zw = renderTargetSize.zw * r3.xy;
    r1.zw = r1.zw * float2(2,-2) + float2(-1,1);
    r1.zw = r1.zw * r3.ww;
    o0.xy = r1.zw;
    o0.zw = r3.zw;
    o1.xyz = float3(0,0,0);
    o2.xzw = r2.yyw;
    o2.y = 1;
    o3.x = 0;
  // Needs manual fix for instruction, maybe. 
//    emit_stream m0
  m0.Append(0); 
    r3.xyzw = r0.zzzz * float4(-0.5,-0.5,0,0) + v[0][4].xyzw;
    r1.zw = renderTargetSize.zw * r3.xy;
    r1.zw = r1.zw * float2(2,-2) + float2(-1,1);
    r1.zw = r1.zw * r3.ww;
    o0.xy = r1.zw;
    o0.zw = r3.zw;
    o1.xyz = float3(0,0,0);
    o2.xzw = r2.yyw;
    o2.y = 1;
    o3.x = 0;
  // Needs manual fix for instruction, maybe. 
//    emit_stream m0
  m0.Append(0); 
    r3.xyzw = r0.zzzz * float4(0.5,0.5,0,0) + v[0][4].xyzw;
    r1.zw = renderTargetSize.zw * r3.xy;
    r1.zw = r1.zw * float2(2,-2) + float2(-1,1);
    r1.zw = r1.zw * r3.ww;
    o0.xy = r1.zw;
    o0.zw = r3.zw;
    o1.xyz = float3(0,0,0);
    o2.xzw = r2.yyw;
    o2.y = 1;
    o3.x = 0;
  // Needs manual fix for instruction, maybe. 
//    emit_stream m0
  m0.Append(0); 
    r3.xyzw = r0.zzzz * float4(0.5,-0.5,0,0) + v[0][4].xyzw;
    r1.zw = renderTargetSize.zw * r3.xy;
    r1.zw = r1.zw * float2(2,-2) + float2(-1,1);
    r1.zw = r1.zw * r3.ww;
    o0.xy = r1.zw;
    o0.zw = r3.zw;
    o1.xyz = float3(0,0,0);
    o2.xzw = r2.xyw;
    o2.y = 1;
    o3.x = 0;
  // Needs manual fix for instruction, maybe. 
//    emit_stream m0
  m0.Append(0); 
  // Needs manual fix for instruction, maybe. 
//    cut_stream m0
  m0.RestartStrip(); 
    r0.z = -0.100000001 + r1.x;
    r0.z = saturate(1.42857146 * r0.z);
    r1.z = r0.z * -2 + 3;
    r0.z = r0.z * r0.z;
    r0.z = r1.z * r0.z;
    r3.xy = r0.xy ? r0.zz : float2(1,1);
    r0.z = triDensityParams.y * r3.x;
    r3.z = 1;
    r2.xyw = r4.yyz * r3.zzy;
    r3.xyzw = r0.zzzz * float4(-0.5,0.5,0,0) + v[1][4].xyzw;
    r1.zw = renderTargetSize.zw * r3.xy;
    r1.zw = r1.zw * float2(2,-2) + float2(-1,1);
    r1.zw = r1.zw * r3.ww;
    o0.xy = r1.zw;
    o0.zw = r3.zw;
    o1.xyz = float3(0,0,0);
    o2.xzw = r2.yyw;
    o2.y = 1;
    o3.x = 0;
  // Needs manual fix for instruction, maybe. 
//    emit_stream m0
  m0.Append(0); 
    r3.xyzw = r0.zzzz * float4(-0.5,-0.5,0,0) + v[1][4].xyzw;
    r1.zw = renderTargetSize.zw * r3.xy;
    r1.zw = r1.zw * float2(2,-2) + float2(-1,1);
    r1.zw = r1.zw * r3.ww;
    o0.xy = r1.zw;
    o0.zw = r3.zw;
    o1.xyz = float3(0,0,0);
    o2.xzw = r2.yyw;
    o2.y = 1;
    o3.x = 0;
  // Needs manual fix for instruction, maybe. 
//    emit_stream m0
  m0.Append(0); 
    r3.xyzw = r0.zzzz * float4(0.5,0.5,0,0) + v[1][4].xyzw;
    r1.zw = renderTargetSize.zw * r3.xy;
    r1.zw = r1.zw * float2(2,-2) + float2(-1,1);
    r1.zw = r1.zw * r3.ww;
    o0.xy = r1.zw;
    o0.zw = r3.zw;
    o1.xyz = float3(0,0,0);
    o2.xzw = r2.yyw;
    o2.y = 1;
    o3.x = 0;
  // Needs manual fix for instruction, maybe. 
//    emit_stream m0
  m0.Append(0); 
    r3.xyzw = r0.zzzz * float4(0.5,-0.5,0,0) + v[1][4].xyzw;
    r1.zw = renderTargetSize.zw * r3.xy;
    r1.zw = r1.zw * float2(2,-2) + float2(-1,1);
    r1.zw = r1.zw * r3.ww;
    o0.xy = r1.zw;
    o0.zw = r3.zw;
    o1.xyz = float3(0,0,0);
    o2.xzw = r2.xyw;
    o2.y = 1;
    o3.x = 0;
  // Needs manual fix for instruction, maybe. 
//    emit_stream m0
  m0.Append(0); 
  // Needs manual fix for instruction, maybe. 
//    cut_stream m0
  m0.RestartStrip(); 
    r0.z = -0.100000001 + r1.y;
    r0.z = saturate(1.42857146 * r0.z);
    r1.z = r0.z * -2 + 3;
    r0.z = r0.z * r0.z;
    r0.z = r1.z * r0.z;
    r0.xy = r0.xy ? r0.zz : float2(1,1);
    r0.x = triDensityParams.y * r0.x;
    r0.z = 1;
    r2.xyw = r4.xyz * r0.zzy;
    r3.xyzw = r0.xxxx * float4(-0.5,0.5,0,0) + v[2][4].xyzw;
    r0.yz = renderTargetSize.zw * r3.xy;
    r0.yz = r0.yz * float2(2,-2) + float2(-1,1);
    r0.yz = r0.yz * r3.ww;
    o0.xy = r0.yz;
    o0.zw = r3.zw;
    o1.xyz = float3(0,0,0);
    o2.xzw = r2.yyw;
    o2.y = 1;
    o3.x = 0;
  // Needs manual fix for instruction, maybe. 
//    emit_stream m0
  m0.Append(0); 
    r3.xyzw = r0.xxxx * float4(-0.5,-0.5,0,0) + v[2][4].xyzw;
    r0.yz = renderTargetSize.zw * r3.xy;
    r0.yz = r0.yz * float2(2,-2) + float2(-1,1);
    r0.yz = r0.yz * r3.ww;
    o0.xy = r0.yz;
    o0.zw = r3.zw;
    o1.xyz = float3(0,0,0);
    o2.xzw = r2.yyw;
    o2.y = 1;
    o3.x = 0;
  // Needs manual fix for instruction, maybe. 
//    emit_stream m0
  m0.Append(0); 
    r3.xyzw = r0.xxxx * float4(0.5,0.5,0,0) + v[2][4].xyzw;
    r0.yz = renderTargetSize.zw * r3.xy;
    r0.yz = r0.yz * float2(2,-2) + float2(-1,1);
    r0.yz = r0.yz * r3.ww;
    o0.xy = r0.yz;
    o0.zw = r3.zw;
    o1.xyz = float3(0,0,0);
    o2.xzw = r2.yyw;
    o2.y = 1;
    o3.x = 0;
  // Needs manual fix for instruction, maybe. 
//    emit_stream m0
  m0.Append(0); 
    r3.xyzw = r0.xxxx * float4(0.5,-0.5,0,0) + v[2][4].xyzw;
    r0.xy = renderTargetSize.zw * r3.xy;
    r0.xy = r0.xy * float2(2,-2) + float2(-1,1);
    r0.xy = r0.xy * r3.ww;
    o0.xy = r0.xy;
    o0.zw = r3.zw;
    o1.xyz = float3(0,0,0);
    o2.xzw = r2.xyw;
    o2.y = 1;
    o3.x = 0;
  // Needs manual fix for instruction, maybe. 
//    emit_stream m0
  m0.Append(0); 
  // Needs manual fix for instruction, maybe. 
//    cut_stream m0
  m0.RestartStrip(); 
  }
  r0.x = (int)v[1][5].x | (int)v[0][5].x;
  r0.x = (int)r0.x | (int)v[2][5].x;
  r0.x = ~(int)r0.x;
  r0.y = cmp(0 < r0.w);
  r0.z = cmp(0 < r1.x);
  r0.y = (int)r0.z | (int)r0.y;
  r0.z = cmp(0 < r1.y);
  r0.y = (int)r0.z | (int)r0.y;
  r0.x = r0.y ? r0.x : 0;
  r0.y = cmp((int)r2.z != 0);
  r0.x = r0.y ? r0.x : 0;
  if (r0.x != 0) {
    r0.x = r1.x + r0.w;
    r0.x = r0.x + r1.y;
    r0.yzw = v[0][4].xyz + v[1][4].xyz;
    r0.yzw = v[2][4].xyz + r0.yzw;
    r1.xyz = float3(0.333333343,0.333333343,0.333333343) * r0.yzw;
    r0.y = min(v[0][4].w, v[1][4].w);
    r1.w = min(v[2][4].w, r0.y);
    r0.yz = (int2)triDensityFlags.xx & int2(4,2);
    if (r0.y != 0) {
      r0.yw = (int2)triDensityFlags.xx & int2(8,16);
      r2.x = r0.x * 0.333333343 + -0.100000001;
      r2.x = saturate(1.42857146 * r2.x);
      r2.y = r2.x * -2 + 3;
      r2.x = r2.x * r2.x;
      r2.x = r2.y * r2.x;
      r2.xy = r0.yw ? r2.xx : float2(1,1);
      r0.y = triDensityParams.y * r2.x;
      r3.xy = float2(0,0);
      r3.z = triDensityParams.z;
      r2.z = 1;
      r2.xyz = r3.xyz * r2.zzy;
      r3.xyzw = r0.yyyy * float4(-0.5,0.5,0,0) + r1.xyzw;
      r3.xy = renderTargetSize.zw * r3.xy;
      r3.xy = r3.xy * float2(2,-2) + float2(-1,1);
      r3.xy = r3.xy * r3.ww;
      o0.xy = r3.xy;
      o0.zw = r3.zw;
      o1.xyz = float3(0,0,0);
      o2.xzw = r2.yyz;
      o2.y = 1;
      o3.x = 0;
    // Needs manual fix for instruction, maybe. 
//        emit_stream m0
    m0.Append(0); 
      r3.xyzw = r0.yyyy * float4(-0.5,-0.5,0,0) + r1.xyzw;
      r3.xy = renderTargetSize.zw * r3.xy;
      r3.xy = r3.xy * float2(2,-2) + float2(-1,1);
      r3.xy = r3.xy * r3.ww;
      o0.xy = r3.xy;
      o0.zw = r3.zw;
      o1.xyz = float3(0,0,0);
      o2.xzw = r2.yyz;
      o2.y = 1;
      o3.x = 0;
    // Needs manual fix for instruction, maybe. 
//        emit_stream m0
    m0.Append(0); 
      r3.xyzw = r0.yyyy * float4(0.5,0.5,0,0) + r1.xyzw;
      r3.xy = renderTargetSize.zw * r3.xy;
      r3.xy = r3.xy * float2(2,-2) + float2(-1,1);
      r3.xy = r3.xy * r3.ww;
      o0.xy = r3.xy;
      o0.zw = r3.zw;
      o1.xyz = float3(0,0,0);
      o2.xzw = r2.yyz;
      o2.y = 1;
      o3.x = 0;
    // Needs manual fix for instruction, maybe. 
//        emit_stream m0
    m0.Append(0); 
      r3.xyzw = r0.yyyy * float4(0.5,-0.5,0,0) + r1.xyzw;
      r0.yw = renderTargetSize.zw * r3.xy;
      r0.yw = r0.yw * float2(2,-2) + float2(-1,1);
      r0.yw = r0.yw * r3.ww;
      o0.xy = r0.yw;
      o0.zw = r3.zw;
      o1.xyz = float3(0,0,0);
      o2.xzw = r2.xyz;
      o2.y = 1;
      o3.x = 0;
    // Needs manual fix for instruction, maybe. 
//        emit_stream m0
    m0.Append(0); 
    // Needs manual fix for instruction, maybe. 
//        cut_stream m0
    m0.RestartStrip(); 
    }
    if (r0.z != 0) {
      r0.y = v[1][4].x + -v[0][4].x;
      r0.z = v[2][4].y + -v[0][4].y;
      r0.w = v[0][4].x + -v[2][4].x;
      r2.x = v[0][4].y + -v[1][4].y;
      r0.w = r2.x * r0.w;
      r0.y = r0.y * r0.z + -r0.w;
      r0.z = 0.5 * r0.y;
      r0.y = cmp(r0.y >= 0);
      r0.z = cmp(r0.z < triDensityParams.x);
      r0.y = r0.z ? r0.y : 0;
      if (r0.y != 0) {
        r0.yz = (int2)triDensityFlags.xx & int2(8,16);
        r0.x = r0.x * 0.333333343 + -0.100000001;
        r0.x = saturate(1.42857146 * r0.x);
        r0.w = r0.x * -2 + 3;
        r0.x = r0.x * r0.x;
        r0.x = r0.w * r0.x;
        r0.xy = r0.yz ? r0.xx : float2(1,1);
        r0.x = triDensityParams.y * r0.x;
        r2.xy = float2(0,0);
        r2.z = triDensityParams.z;
        r0.z = 1;
        r0.yzw = r2.xyz * r0.zzy;
        r2.xyzw = r0.xxxx * float4(-0.5,0.5,0,0) + r1.xyzw;
        r2.xy = renderTargetSize.zw * r2.xy;
        r2.xy = r2.xy * float2(2,-2) + float2(-1,1);
        r2.xy = r2.xy * r2.ww;
        o0.xy = r2.xy;
        o0.zw = r2.zw;
        o1.xyz = float3(0,0,0);
        o2.xzw = r0.zzw;
        o2.y = 1;
        o3.x = 0;
      // Needs manual fix for instruction, maybe. 
//            emit_stream m0
      m0.Append(0); 
        r2.xyzw = r0.xxxx * float4(-0.5,-0.5,0,0) + r1.xyzw;
        r2.xy = renderTargetSize.zw * r2.xy;
        r2.xy = r2.xy * float2(2,-2) + float2(-1,1);
        r2.xy = r2.xy * r2.ww;
        o0.xy = r2.xy;
        o0.zw = r2.zw;
        o1.xyz = float3(0,0,0);
        o2.xzw = r0.zzw;
        o2.y = 1;
        o3.x = 0;
      // Needs manual fix for instruction, maybe. 
//            emit_stream m0
      m0.Append(0); 
        r2.xyzw = r0.xxxx * float4(0.5,0.5,0,0) + r1.xyzw;
        r2.xy = renderTargetSize.zw * r2.xy;
        r2.xy = r2.xy * float2(2,-2) + float2(-1,1);
        r2.xy = r2.xy * r2.ww;
        o0.xy = r2.xy;
        o0.zw = r2.zw;
        o1.xyz = float3(0,0,0);
        o2.xzw = r0.zzw;
        o2.y = 1;
        o3.x = 0;
      // Needs manual fix for instruction, maybe. 
//            emit_stream m0
      m0.Append(0); 
        r1.xyzw = r0.xxxx * float4(0.5,-0.5,0,0) + r1.xyzw;
        r1.xy = renderTargetSize.zw * r1.xy;
        r1.xy = r1.xy * float2(2,-2) + float2(-1,1);
        r1.xy = r1.xy * r1.ww;
        o0.xy = r1.xy;
        o0.zw = r1.zw;
        o1.xyz = float3(0,0,0);
        o2.xzw = r0.yzw;
        o2.y = 1;
        o3.x = 0;
      // Needs manual fix for instruction, maybe. 
//            emit_stream m0
      m0.Append(0); 
      // Needs manual fix for instruction, maybe. 
//            cut_stream m0
      m0.RestartStrip(); 
      }
    }
  }
  return;
}