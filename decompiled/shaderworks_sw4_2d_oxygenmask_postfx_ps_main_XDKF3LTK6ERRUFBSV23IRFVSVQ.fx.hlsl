// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:39 2021

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
  float WarpHeight : packoffset(c10);
  float3 SmokeColor : packoffset(c10.y);
  float BlurAmountMax : packoffset(c11);
}

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

SamplerState Smoke_Sampler_s : register(s1);
SamplerState BlurMask_Sampler_s : register(s2);
SamplerState Normal_Map_Sampler_s : register(s3);
SamplerState resolvedScene_C2_P0_sampler_s : register(s4);
Texture2D<float4> Smoke : register(t0);
Texture2D<float4> BlurMask : register(t6);
Texture2D<float4> Normal_Map : register(t7);
Texture2D<float4> resolvedScene_C2_P0 : register(t9);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = Normal_Map.Sample(Normal_Map_Sampler_s, v1.xy).xy;
  r0.xyzw = r0.xyxy * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r1.xyzw = -r0.zwzw * WarpHeight + v3.xyzw;
  r0.xyzw = -r0.xyzw * WarpHeight + v4.xyzw;
  r2.xyz = resolvedScene_C2_P0.Sample(resolvedScene_C2_P0_sampler_s, r1.xy).xyz;
  r1.xyz = resolvedScene_C2_P0.Sample(resolvedScene_C2_P0_sampler_s, r1.zw).xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r2.xyz = resolvedScene_C2_P0.Sample(resolvedScene_C2_P0_sampler_s, r0.xy).xyz;
  r0.xyz = resolvedScene_C2_P0.Sample(resolvedScene_C2_P0_sampler_s, r0.zw).xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xy = v1.xy * float2(2,2) + float2(-1,-1);
  r1.xy = r1.xy * float2(0.5,0.5) + float2(0.5,0.5);
  r1.xyz = resolvedScene_C2_P0.Sample(resolvedScene_C2_P0_sampler_s, r1.xy).xyz;
  r0.xyz = r0.xyz * float3(0.25,0.25,0.25) + -r1.xyz;
  r0.w = BlurMask.Sample(BlurMask_Sampler_s, v1.xy).x;
  r0.xyz = r0.www * r0.xyz + r1.xyz;
  r1.xyzw = Smoke.Sample(Smoke_Sampler_s, v1.xy).xyzw;
  r1.xyz = SmokeColor.xyz * r1.xyz + -r0.xyz;
  r0.w = scriptVector0.y + r1.w;
  r0.w = saturate(-1 + r0.w);
  r0.xyz = r0.www * r1.xyz + r0.xyz;
  r0.w = 1;
  r1.xyzw = resolvedScene_C2_P0.Sample(resolvedScene_C2_P0_sampler_s, v1.xy).xyzw;
  r0.xyzw = -r1.xyzw + r0.xyzw;
  r2.x = saturate(scriptVector0.x);
  o0.xyzw = r2.xxxx * r0.xyzw + r1.xyzw;
  return;
}