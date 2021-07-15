// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:20 2021

SamplerState nearestClamp_s : register(s0);
Texture2D<float4> codeTexture0 : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : TEXCOORD0,
  nointerpolation float v1 : TEXCOORD1,
  nointerpolation float w1 : TEXCOORD2,
  float4 v2 : SV_POSITION0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.w = 1;
  r1.w = 1;
  r2.xyzw = codeTexture0.Sample(nearestClamp_s, v0.xy).wxyz;
  r3.x = dot(r2.yzw, float3(0.212599993,0.715200007,0.0722000003));
  r3.x = 1 + r3.x;
  r3.x = (int)-r3.x + 0x7ef311c2;
  r1.xyz = r2.yzw;
  r1.xyzw = r3.xxxx * r1.xyzw;
  r3.w = 1;
  r2.w = v1.x;
  r2.yz = float2(1,0);
  r4.xy = v0.xy + r2.zw;
  r4.xyzw = codeTexture0.Sample(nearestClamp_s, r4.xy).wxyz;
  r5.x = dot(r4.yzw, float3(0.212599993,0.715200007,0.0722000003));
  r5.x = 1 + r5.x;
  r5.x = (int)-r5.x + 0x7ef311c2;
  r3.xyz = r4.yzw;
  r3.xyzw = r5.xxxx * r3.xyzw;
  r5.x = w1.x * w1.x;
  r6.xyzw = float4(-11.5415602,-8.01497173,-5.12958288,-2.88539004) * r5.xxxx;
  r5.xy = float2(-1.28239572,-0.32059893) * r5.xx;
  r5.xy = exp2(r5.xy);
  r6.xyzw = exp2(r6.xyzw);
  r3.xyzw = r6.yyyy * r3.xyzw;
  r1.xyzw = r6.xxxx * r1.xyzw + r3.xyzw;
  r3.w = 1;
  r7.xyzw = float4(2,2,3,3) * r2.zwzw + v0.xyxy;
  r8.xyzw = codeTexture0.Sample(nearestClamp_s, r7.xy).xyzw;
  r7.xyzw = codeTexture0.Sample(nearestClamp_s, r7.zw).wxyz;
  r5.z = dot(r8.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r5.z = 1 + r5.z;
  r5.z = (int)-r5.z + 0x7ef311c2;
  r3.xyz = r8.xyz;
  r4.z = r8.w;
  r3.xyzw = r5.zzzz * r3.xyzw;
  r1.xyzw = r6.zzzz * r3.xyzw + r1.xyzw;
  r3.w = 1;
  r5.z = dot(r7.yzw, float3(0.212599993,0.715200007,0.0722000003));
  r5.z = 1 + r5.z;
  r5.z = (int)-r5.z + 0x7ef311c2;
  r3.xyz = r7.yzw;
  r3.xyzw = r5.zzzz * r3.xyzw;
  r1.xyzw = r6.wwww * r3.xyzw + r1.xyzw;
  r3.w = 1;
  r8.xyzw = float4(4,4,5,5) * r2.zwzw + v0.xyxy;
  r9.xyzw = codeTexture0.Sample(nearestClamp_s, r8.xy).xyzw;
  r8.xyzw = codeTexture0.Sample(nearestClamp_s, r8.zw).wxyz;
  r5.z = dot(r9.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r5.z = 1 + r5.z;
  r5.z = (int)-r5.z + 0x7ef311c2;
  r3.xyz = r9.xyz;
  r7.z = r9.w;
  r3.xyzw = r5.zzzz * r3.xyzw;
  r1.xyzw = r5.xxxx * r3.xyzw + r1.xyzw;
  r3.w = 1;
  r5.z = dot(r8.yzw, float3(0.212599993,0.715200007,0.0722000003));
  r5.z = 1 + r5.z;
  r5.z = (int)-r5.z + 0x7ef311c2;
  r3.xyz = r8.yzw;
  r3.xyzw = r5.zzzz * r3.xyzw;
  r1.xyzw = r5.yyyy * r3.xyzw + r1.xyzw;
  r3.xyzw = float4(6,6,7,7) * r2.zwzw + v0.xyxy;
  r9.xyzw = codeTexture0.Sample(nearestClamp_s, r3.xy).xyzw;
  r3.xyzw = codeTexture0.Sample(nearestClamp_s, r3.zw).wxyz;
  r5.z = dot(r9.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r5.z = 1 + r5.z;
  r5.z = (int)-r5.z + 0x7ef311c2;
  r0.xyz = r9.xyz;
  r8.z = r9.w;
  r0.xyzw = r5.zzzz * r0.xyzw + r1.xyzw;
  r1.w = 1;
  r5.z = dot(r3.yzw, float3(0.212599993,0.715200007,0.0722000003));
  r5.z = 1 + r5.z;
  r5.z = (int)-r5.z + 0x7ef311c2;
  r1.xyz = r3.yzw;
  r1.xyzw = r5.zzzz * r1.xyzw;
  r0.xyzw = r5.yyyy * r1.xyzw + r0.xyzw;
  r1.w = 1;
  r9.xyzw = float4(8,8,9,9) * r2.zwzw + v0.xyxy;
  r10.xyzw = codeTexture0.Sample(nearestClamp_s, r9.xy).xyzw;
  r9.xyzw = codeTexture0.Sample(nearestClamp_s, r9.zw).wxyz;
  r5.z = dot(r10.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r5.z = 1 + r5.z;
  r5.z = (int)-r5.z + 0x7ef311c2;
  r1.xyz = r10.xyz;
  r3.z = r10.w;
  r1.xyzw = r5.zzzz * r1.xyzw;
  r0.xyzw = r5.xxxx * r1.xyzw + r0.xyzw;
  r1.w = 1;
  r5.z = dot(r9.yzw, float3(0.212599993,0.715200007,0.0722000003));
  r5.z = 1 + r5.z;
  r5.z = (int)-r5.z + 0x7ef311c2;
  r1.xyz = r9.yzw;
  r1.xyzw = r5.zzzz * r1.xyzw;
  r0.xyzw = r6.wwww * r1.xyzw + r0.xyzw;
  r1.w = 1;
  r10.xyzw = float4(10,10,11,11) * r2.zwzw + v0.xyxy;
  r2.zw = float2(12,12) * r2.zw + v0.xy;
  r11.xyzw = codeTexture0.Sample(nearestClamp_s, r2.zw).xyzw;
  r12.xyzw = codeTexture0.Sample(nearestClamp_s, r10.xy).xyzw;
  r10.xyzw = codeTexture0.Sample(nearestClamp_s, r10.zw).wxyz;
  r2.z = dot(r12.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r2.z = 1 + r2.z;
  r2.z = (int)-r2.z + 0x7ef311c2;
  r1.xyz = r12.xyz;
  r9.z = r12.w;
  r1.xyzw = r2.zzzz * r1.xyzw;
  r0.xyzw = r6.zzzz * r1.xyzw + r0.xyzw;
  r1.x = dot(r10.yzw, float3(0.212599993,0.715200007,0.0722000003));
  r1.x = 1 + r1.x;
  r1.x = (int)-r1.x + 0x7ef311c2;
  r12.xyz = r10.yzw;
  r12.w = 1;
  r1.xyzw = r12.xyzw * r1.xxxx;
  r0.xyzw = r6.yyyy * r1.xyzw + r0.xyzw;
  r1.x = dot(r11.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r1.x = 1 + r1.x;
  r1.x = (int)-r1.x + 0x7ef311c2;
  r10.z = r11.w;
  r11.w = 1;
  r1.xyzw = r11.xyzw * r1.xxxx;
  r0.xyzw = r6.xxxx * r1.xyzw + r0.xyzw;
  r0.w = rcp(r0.w);
  o0.xyz = r0.xyz * r0.www;
  r4.yw = float2(1,1);
  r0.xy = r6.yy * r4.xy;
  r0.xy = r6.xx * r2.xy + r0.xy;
  r0.xy = r6.zz * r4.zw + r0.xy;
  r7.yw = float2(1,1);
  r0.xy = r6.ww * r7.xy + r0.xy;
  r0.xy = r5.xx * r7.zw + r0.xy;
  r8.yw = float2(1,1);
  r0.xy = r5.yy * r8.xy + r0.xy;
  r0.xy = r0.xy + r8.zw;
  r3.yw = float2(1,1);
  r0.xy = r5.yy * r3.xy + r0.xy;
  r0.xy = r5.xx * r3.zw + r0.xy;
  r9.yw = float2(1,1);
  r0.xy = r6.ww * r9.xy + r0.xy;
  r0.xy = r6.zz * r9.zw + r0.xy;
  r10.yw = float2(1,1);
  r0.xy = r6.yy * r10.xy + r0.xy;
  r0.xy = r6.xx * r10.zw + r0.xy;
  o0.w = r0.x / r0.y;
  return;
}