// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:26 2021

SamplerState bilinearClamp_s : register(s0);
Texture2D<float4> codeTexture0 : register(t0);
Texture2D<float4> codeTexture1 : register(t1);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.w = 1;
  r0.xyzw = codeTexture0.Gather(bilinearClamp_s, v0.xy).xyzw;
  r1.xyzw = r0.xyzw * float4(0.212599993,0.212599993,0.212599993,0.212599993) + float4(1,1,1,1);
  r2.xyzw = codeTexture0.Gather(bilinearClamp_s, v0.xy).xyzw;
  r1.xyzw = r2.xyzw * float4(0.715200007,0.715200007,0.715200007,0.715200007) + r1.xyzw;
  r3.xyzw = codeTexture0.Gather(bilinearClamp_s, v0.xy).xyzw;
  r1.xyzw = r3.xyzw * float4(0.0722000003,0.0722000003,0.0722000003,0.0722000003) + r1.xyzw;
  r1.xyzw = rcp(r1.xyzw);
  r4.xyzw = codeTexture1.Gather(bilinearClamp_s, v0.xy).xyzw;
  r5.xyzw = cmp(r4.xyzw >= float4(0.0418848172,0.0418848172,0.0418848172,0.0418848172));
  r5.xyzw = r5.xyzw ? float4(1,1,1,1) : 0;
  r6.xyzw = r5.xyzw * r1.xyzw;
  r1.x = r6.x + r6.y;
  r1.x = r1.z * r5.z + r1.x;
  r1.x = r1.w * r5.w + r1.x;
  r1.y = cmp(0 < r1.x);
  r1.x = rcp(r1.x);
  r1.x = r1.y ? r1.x : 0;
  r0.x = dot(r0.xyzw, r6.xyzw);
  o0.x = r0.x * r1.x;
  r0.x = dot(r2.xyzw, r6.xyzw);
  r0.y = dot(r3.xyzw, r6.xyzw);
  o0.yz = r0.xy * r1.xx;
  r0.x = r5.x + r5.y;
  r0.x = r0.x + r5.z;
  r0.x = r0.x + r5.w;
  r0.y = dot(r4.xyzw, r5.xyzw);
  r0.z = cmp(0 < r0.x);
  r0.w = rcp(r0.x);
  r0.z = r0.z ? r0.w : 0;
  o1.xy = r0.yx * r0.zz;
  o1.zw = float2(1,1);
  return;
}