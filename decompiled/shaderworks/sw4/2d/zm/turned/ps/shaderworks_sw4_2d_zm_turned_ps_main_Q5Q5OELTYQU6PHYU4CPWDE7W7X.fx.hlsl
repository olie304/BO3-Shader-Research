// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:41 2021

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
  float BlurAmount : packoffset(c10);
}

SamplerState sonarColorSampler_C1_P0_sampler_s : register(s1);
Texture2D<float4> sonarColorSampler_C1_P0 : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = BlurAmount * float4(-0.00326211983,-0.00405809982,-0.00840143953,-0.000735799957) + v1.xyxy;
  r1.xyzw = sonarColorSampler_C1_P0.Sample(sonarColorSampler_C1_P0_sampler_s, r0.xy).xyzw;
  r0.xyzw = sonarColorSampler_C1_P0.Sample(sonarColorSampler_C1_P0_sampler_s, r0.zw).xyzw;
  r0.xyzw = r1.xyzw + r0.xyzw;
  r1.xyzw = BlurAmount * float4(-0.00695913937,0.00457136985,-0.00203344994,0.00620715972) + v1.xyxy;
  r2.xyzw = sonarColorSampler_C1_P0.Sample(sonarColorSampler_C1_P0_sampler_s, r1.xy).xyzw;
  r1.xyzw = sonarColorSampler_C1_P0.Sample(sonarColorSampler_C1_P0_sampler_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw + r0.xyzw;
  r0.xyzw = r0.xyzw + r1.xyzw;
  r1.xyzw = BlurAmount * float4(0.00962339994,-0.00194982998,0.00473434012,-0.00480026007) + v1.xyxy;
  r2.xyzw = sonarColorSampler_C1_P0.Sample(sonarColorSampler_C1_P0_sampler_s, r1.xy).xyzw;
  r1.xyzw = sonarColorSampler_C1_P0.Sample(sonarColorSampler_C1_P0_sampler_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw + r0.xyzw;
  r0.xyzw = r0.xyzw + r1.xyzw;
  r1.xyzw = BlurAmount * float4(0.00519456016,0.00767021999,0.00185460993,-0.00893124007) + v1.xyxy;
  r2.xyzw = sonarColorSampler_C1_P0.Sample(sonarColorSampler_C1_P0_sampler_s, r1.xy).xyzw;
  r1.xyzw = sonarColorSampler_C1_P0.Sample(sonarColorSampler_C1_P0_sampler_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw + r0.xyzw;
  r0.xyzw = r0.xyzw + r1.xyzw;
  r1.xyzw = BlurAmount * float4(0.00507430965,0.000644249958,0.00896419957,0.00412457995) + v1.xyxy;
  r2.xyzw = sonarColorSampler_C1_P0.Sample(sonarColorSampler_C1_P0_sampler_s, r1.xy).xyzw;
  r1.xyzw = sonarColorSampler_C1_P0.Sample(sonarColorSampler_C1_P0_sampler_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw + r0.xyzw;
  r0.xyzw = r0.xyzw + r1.xyzw;
  r1.xyzw = BlurAmount * float4(-0.00321940007,-0.00932614971,-0.00791558996,-0.00597710023) + v1.xyxy;
  r2.xyzw = sonarColorSampler_C1_P0.Sample(sonarColorSampler_C1_P0_sampler_s, r1.xy).xyzw;
  r1.xyzw = sonarColorSampler_C1_P0.Sample(sonarColorSampler_C1_P0_sampler_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw + r0.xyzw;
  r0.xyzw = r0.xyzw + r1.xyzw;
  r0.xyzw = float4(0.0833333358,0.0833333358,0.0833333358,0.0833333358) * r0.xyzw;
  o0.xyz = r0.xyz * r0.www;
  o0.w = r0.w;
  return;
}