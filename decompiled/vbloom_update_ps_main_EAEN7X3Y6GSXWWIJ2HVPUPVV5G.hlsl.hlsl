// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:48 2021

SamplerState bilinearClamp_s : register(s0);
Texture2D<float4> codeTexture0 : register(t0);
Texture3D<float3> codeTexture1 : register(t1);
Texture2D<float4> codeTexture2 : register(t2);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : TEXCOORD0,
  nointerpolation float v1 : TEXCOORD1,
  float4 v2 : SV_POSITION0,
  out float3 o0 : SV_TARGET0,
  out float o1 : SV_TARGET1)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = (int2)v2.xy;
  r0.zw = float2(0,0);
  r0.xyz = codeTexture2.Load(r0.xyz).xyz;
  r0.xyz = r0.xyz * v1.xxx + float3(0.00872999988,0.00872999988,0.00872999988);
  r0.xyz = log2(r0.xyz);
  r0.xyz = saturate(r0.xyz * float3(0.0727029592,0.0727029592,0.0727029592) + float3(0.598205984,0.598205984,0.598205984));
  r1.xyz = r0.xyz * float3(7.71294689,7.71294689,7.71294689) + float3(-19.3115273,-19.3115273,-19.3115273);
  r1.xyz = r1.xyz * r0.xyz + float3(14.2751675,14.2751675,14.2751675);
  r1.xyz = r1.xyz * r0.xyz + float3(-2.49004531,-2.49004531,-2.49004531);
  r1.xyz = r1.xyz * r0.xyz + float3(0.87808305,0.87808305,0.87808305);
  r0.xyz = saturate(r1.xyz * r0.xyz + float3(-0.0669102818,-0.0669102818,-0.0669102818));
  r1.xyz = codeTexture0.Sample(bilinearClamp_s, v0.xy).xyz;
  r1.xyz = saturate(float3(0.00390625233,0.00390625233,0.00390625233) * r1.xyz);
  r2.xyz = r1.xyz + r0.xyz;
  r0.xyz = -r0.xyz * r1.xyz + r2.xyz;
  r0.xyz = r0.xyz * float3(0.96875,0.96875,0.96875) + float3(0.015625,0.015625,0.015625);
  r0.xyz = codeTexture1.Sample(bilinearClamp_s, r0.xyz).xyz;
  r1.xyz = float3(0.0989999995,0.0989999995,0.0989999995) + r0.xyz;
  r1.xyz = float3(0.909918129,0.909918129,0.909918129) * r1.xyz;
  r1.xyz = log2(r1.xyz);
  r1.xyz = float3(2.22222233,2.22222233,2.22222233) * r1.xyz;
  r1.xyz = exp2(r1.xyz);
  r2.xyz = cmp(float3(0.0810000002,0.0810000002,0.0810000002) >= r0.xyz);
  r3.xyz = float3(0.222222224,0.222222224,0.222222224) * r0.xyz;
  o1.x = dot(r0.xyz, float3(0.212670997,0.715160012,0.0721689984));
  r0.xyz = r2.xyz ? r3.xyz : r1.xyz;
  o0.xyz = float3(32768,32768,32768) * r0.xyz;
  return;
}