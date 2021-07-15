// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:27:55 2021

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
  float3 colorTint : packoffset(c10);
  float baseNormalHeight : packoffset(c10.w);
  float2 glossRange : packoffset(c11);
  float2 wind1Parms : packoffset(c11.z);
  float2 wind2Parms : packoffset(c12);
  float2 wind3Parms : packoffset(c12.z);
  float2 vertexColorScale : packoffset(c13);
}

SamplerState colorSampler_s : register(s1);
SamplerState specColorSampler_s : register(s2);
SamplerState normalSampler_s : register(s3);
SamplerState aoSampler_s : register(s4);
Texture2D<float4> resolvedNormal : register(t0);
Texture2D<float4> colorMap : register(t6);
Texture2D<float4> tintMask : register(t7);
Texture2D<float4> normalMap : register(t9);
Texture2D<float4> glossMap : register(t10);
Texture2D<float4> aoMap : register(t11);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float3 v1 : COLOR0,
  float w1 : COLOR1,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float4 v4 : TEXCOORD2,
  float3 v5 : TEXCOORD3,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = tintMask.Sample(colorSampler_s, v2.xy).x;
  r0.yzw = float3(-1,-1,-1) + colorTint.xyz;
  r0.xyz = r0.xxx * r0.yzw + float3(1,1,1);
  r1.xyzw = colorMap.Sample(colorSampler_s, v2.xy).xyzw;
  r0.xyz = r1.xyz * r0.xyz;
  o0.xyz = r0.xyz * r1.www;
  o0.w = r1.w;
  o1.w = r1.w;
  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r0.w = v6.x ? 1 : -1;
  r0.xyz = r0.xyz * r0.www;
  r1.x = dot(v5.xyz, v5.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v5.xyz * r1.xxx;
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = normalMap.Sample(normalSampler_s, v2.xy).xyz;
  r2.xyz = float3(-0.5,-0.5,-0) + r2.xyz;
  r2.xyz = baseNormalHeight * r2.xyz + float3(0.5,0.5,0);
  r2.xy = r2.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.z = r2.z * r2.z;
  r2.z = 0.333333343 * r2.z;
  r2.z = min(1, r2.z);
  r1.xyz = r2.yyy * r1.xyz;
  r0.xyz = r0.xyz * r2.xxx + r1.xyz;
  r1.x = dot(r2.xy, r2.xy);
  r1.x = 1 + -r1.x;
  r1.x = max(0, r1.x);
  r1.x = sqrt(r1.x);
  r1.y = dot(v3.xyz, v3.xyz);
  r1.y = rsqrt(r1.y);
  r2.xyw = v3.xyz * r1.yyy;
  r2.xyw = r2.xyw * r0.www;
  r0.xyz = r2.xyw * r1.xxx + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r3.xy = (uint2)v0.xy;
  r3.zw = float2(0,0);
  r1.xy = resolvedNormal.Load(r3.xyz).zw;
  r0.w = r1.y * 3 + 0.5;
  r0.w = (uint)r0.w;
  r3.xyzw = (int4)r0.wwww & int4(2,1,2,1);
  r3.xyzw = r3.zwxy ? float4(-0.577350259,-0.577350259,1.40129846e-45,1.40129846e-45) : float4(0.577350259,0.577350259,0,0);
  r0.w = (int)r3.w ^ (int)r3.z;
  r3.z = r0.w ? -0.577350259 : 0.577350259;
  r0.w = dot(r0.xyz, r3.xyz);
  r0.w = 1 + abs(r0.w);
  r0.w = rsqrt(r0.w);
  r2.xyw = float3(0.707106769,-1.41421354,0.707106769) * r3.xyz;
  r1.yz = float2(-1.22474492,1.22474492) * r3.xz;
  r3.y = dot(r0.xz, r1.yz);
  r3.x = dot(r0.xyz, r2.xyw);
  r0.xy = r3.xy * r0.ww;
  r0.xy = r0.xy * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  r0.w = glossMap.Sample(specColorSampler_s, v2.xy).x;
  r1.y = glossRange.y + -glossRange.x;
  r0.w = r0.w * r1.y + glossRange.x;
  r0.w = saturate(0.0588235296 * r0.w);
  r0.w = -17 * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r2.z + r0.w;
  r0.w = log2(r0.w);
  r0.w = -0.0588235296 * r0.w;
  r0.w = max(0, r0.w);
  r1.y = cmp(r1.x >= 0.5);
  r1.x = cmp(0 < r1.x);
  r1.y = r1.y ? 0.5 : 0.00146627566;
  r0.z = r0.w * 0.49755621 + r1.y;
  r0.xyz = r1.xxx ? r0.xyz : 0;
  o1.xyz = r0.xyz * r1.www;
  r0.z = aoMap.Sample(aoSampler_s, v2.xy).x;
  r0.xyw = float3(0.0399999991,0.5,1);
  o2.xyzw = r0.xyzw * r1.wwww;
  return;
}