// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:04 2021

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
  float2 mixScale : packoffset(c10);
  float rotateUVs1 : packoffset(c10.z);
  float rotateUVs2 : packoffset(c10.w);
  bool useUVOffsets1 : packoffset(c11);
  bool useUVOffsets2 : packoffset(c11.y);
}

SamplerState mixSampler_s : register(s1);
SamplerState colorSampler_s : register(s2);
Texture2D<float4> colorMap : register(t0);
Texture2D<float4> colorMapDetail2 : register(t6);
Texture2D<float4> mixMap : register(t7);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float w1 : COLOR0,
  nointerpolation float3 v2 : UVOFFSETS0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = mixScale.xy * v1.xy;
  r0.x = mixMap.Sample(mixSampler_s, r0.xy).x;
  sincos(rotateUVs1, r1.x, r2.x);
  r3.x = -r1.x;
  r0.yz = float2(-0.5,-0.5) + v1.xy;
  r3.y = r2.x;
  r3.z = r1.x;
  r1.x = dot(r0.yz, r3.yz);
  r1.y = dot(r0.yz, r3.xy);
  r1.zw = v2.yx + r1.xy;
  r0.w = 0.5 + v2.z;
  r1.zw = r1.zw + r0.ww;
  r1.xy = float2(0.5,0.5) + r1.xy;
  r1.xyzw = detailScale1.xyxy * r1.xyzw;
  r1.xy = useUVOffsets1 ? r1.zw : r1.xy;
  r1.x = colorMap.Sample(colorSampler_s, r1.xy).w;
  sincos(rotateUVs2, r2.x, r3.x);
  r4.x = -r2.x;
  r4.y = r3.x;
  r4.z = r2.x;
  r2.x = dot(r0.yz, r4.yz);
  r2.y = dot(r0.yz, r4.xy);
  r0.yz = v2.yx + r2.xy;
  r0.yz = r0.yz + r0.ww;
  r0.yz = detailScale2.xy * r0.yz;
  r1.yz = float2(0.5,0.5) + r2.xy;
  r1.yz = detailScale2.xy * r1.yz;
  r0.yz = useUVOffsets1 ? r0.yz : r1.yz;
  r0.y = colorMapDetail2.Sample(colorSampler_s, r0.yz).w;
  r0.y = r0.y + -r1.x;
  r0.x = r0.x * r0.y + r1.x;
  r0.x = w1.x * r0.x;
  r0.x = cmp(r0.x < 0.5);
  if (r0.x != 0) discard;
  return;
}