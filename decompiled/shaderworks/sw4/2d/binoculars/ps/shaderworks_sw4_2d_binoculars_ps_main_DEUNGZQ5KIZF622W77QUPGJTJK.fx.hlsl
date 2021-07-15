// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:31 2021

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
  float DispersionAmount : packoffset(c10);
  float2 WarpAmount : packoffset(c10.y);
  float ScratchStrength : packoffset(c10.w);
}

SamplerState OverlayMap_Sampler_s : register(s1);
SamplerState WarpMap_Sampler_s : register(s2);
SamplerState resolvedScene_C4_P0_sampler_s : register(s3);
Texture2D<float4> OverlayMap : register(t0);
Texture2D<float4> WarpMap : register(t6);
Texture2D<float4> resolvedScene_C4_P0 : register(t7);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float2 v2 : TEXCOORD1,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 1 + -DispersionAmount;
  r0.yz = v2.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r0.yz, r0.yz);
  r0.w = sqrt(r0.w);
  r1.xy = WarpAmount.xy * r0.ww;
  r1.zw = -r0.ww * WarpAmount.xy + float2(1,1);
  r1.zw = r1.zw * r0.yz;
  r1.zw = r1.zw * float2(0.5,0.5) + float2(0.5,0.5);
  r2.y = resolvedScene_C4_P0.Sample(resolvedScene_C4_P0_sampler_s, r1.zw).y;
  r0.xw = -r1.xy * r0.xx + float2(1,1);
  r0.xw = r0.yz * r0.xw;
  r0.xw = r0.xw * float2(0.5,0.5) + float2(0.5,0.5);
  r2.x = resolvedScene_C4_P0.Sample(resolvedScene_C4_P0_sampler_s, r0.xw).x;
  r0.x = 1 + DispersionAmount;
  r0.xw = -r1.xy * r0.xx + float2(1,1);
  r0.xy = r0.yz * r0.xw;
  r0.xy = r0.xy * float2(0.5,0.5) + float2(0.5,0.5);
  r2.z = resolvedScene_C4_P0.Sample(resolvedScene_C4_P0_sampler_s, r0.xy).z;
  r0.xyz = WarpMap.Sample(WarpMap_Sampler_s, v2.xy).xyz;
  r1.xyz = r0.xxx + -r2.xyz;
  r0.xzw = r0.zzz * r1.xyz + r2.xyz;
  r0.y = ScratchStrength * r0.y;
  r1.xyz = resolvedScene_C4_P0.Sample(resolvedScene_C4_P0_sampler_s, v2.xy).xyz;
  r1.x = dot(r1.xyz, float3(0.333400011,0.333400011,0.333400011));
  r0.y = r0.y * r1.x + 1;
  r0.xyz = r0.xzw * r0.yyy;
  r1.xyz = v1.xyz * r0.xyz;
  r2.xyzw = OverlayMap.Sample(OverlayMap_Sampler_s, v2.xy).xyzw;
  r0.xyz = -r0.xyz * v1.xyz + r2.xyz;
  o0.xyz = r2.www * r0.xyz + r1.xyz;
  r0.x = 1;
  o0.w = saturate(r0.x * v1.w + r2.w);
  return;
}