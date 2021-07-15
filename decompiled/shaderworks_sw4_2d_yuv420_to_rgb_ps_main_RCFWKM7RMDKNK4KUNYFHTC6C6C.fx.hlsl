// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:41 2021

SamplerState YUV_Image_Sampler_s : register(s1);
Texture2D<float4> YUV_Image : register(t0);


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

  r0.xy = float2(0.666666687,1) * v1.xy;
  r0.x = YUV_Image.Sample(YUV_Image_Sampler_s, r0.xy).w;
  r0.x = -0.0149999997 + r0.x;
  r0.x = 1.01522839 * r0.x;
  r1.xyzw = v1.xyxy * float4(0.333333343,0.5,0.333333343,0.5) + float4(0.666666687,0,0.666666687,0.5);
  r0.y = YUV_Image.Sample(YUV_Image_Sampler_s, r1.zw).w;
  r0.z = YUV_Image.Sample(YUV_Image_Sampler_s, r1.xy).w;
  r1.x = cmp(0.0156862754 >= r0.z);
  r0.w = 1;
  r2.y = dot(r0.xyzw, float4(1.16412354,-0.813476563,-0.391448975,0.529705048));
  r2.x = dot(r0.xyw, float3(1.16412354,1.59579468,-0.87065506));
  r2.z = dot(r0.xzw, float3(1.16412354,2.01782227,-1.08166885));
  o0.xyz = r1.xxx ? float3(0,0,0) : r2.xyz;
  o0.w = 1;
  return;
}