// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:28:12 2021

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
  float alphaRevealSoftEdge : packoffset(c10);
  float alphaRevealRamp : packoffset(c10.y);
  float2 revealScale : packoffset(c10.z);
  float3 colorTint : packoffset(c11);
  float3 specColorTint : packoffset(c12);
  float baseNormalHeight : packoffset(c12.w);
  float2 glossRange : packoffset(c13);
  float detailScaleHeight : packoffset(c13.z);
}

SamplerState revealSampler_s : register(s1);
SamplerState colorSampler_s : register(s2);
SamplerState specColorSampler_s : register(s3);
SamplerState normalSampler_s : register(s4);
SamplerState aoSampler_s : register(s5);
Texture2D<float4> resolvedNormal : register(t0);
Texture2D<float4> revealMap : register(t6);
Texture2D<float4> colorMap : register(t7);
Texture2D<float4> tintMask : register(t9);
Texture2D<float4> specColorMap : register(t10);
Texture2D<float4> normalMap : register(t11);
Texture2D<float4> glossMap : register(t12);
Texture2D<float4> aoMap : register(t14);
Texture2D<float4> detailMap : register(t15);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float v1 : COLOR1,
  float2 w1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float3 v4 : TEXCOORD3,
  uint v5 : SV_IsFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = tintMask.Sample(colorSampler_s, w1.xy).x;
  r0.yzw = float3(-1,-1,-1) + colorTint.xyz;
  r0.xyz = r0.xxx * r0.yzw + float3(1,1,1);
  r1.xyz = colorMap.Sample(colorSampler_s, w1.xy).xyz;
  r0.xyz = r1.xyz * r0.xyz;
  r0.w = specColorMap.Sample(specColorSampler_s, w1.xy).x;
  r1.x = saturate(1 + -r0.w);
  r0.xyz = r1.xxx * r0.xyz;
  r1.x = saturate(v1.x * 0.998000026 + 0.00100000005);
  r1.y = log2(r1.x);
  r1.x = 1 + -r1.x;
  r1.z = saturate(alphaRevealRamp);
  r1.y = r1.z * r1.y;
  r1.y = exp2(r1.y);
  r2.x = -r1.y;
  r1.y = log2(r1.x);
  r1.y = r1.z * r1.y;
  r2.y = exp2(r1.y);
  r1.xy = saturate(alphaRevealSoftEdge * r2.xy + r1.xx);
  r1.zw = revealScale.xy * w1.xy;
  r1.z = revealMap.Sample(revealSampler_s, r1.zw).x;
  r1.z = r1.z + -r1.x;
  r1.x = r1.y + -r1.x;
  r1.x = saturate(r1.z / r1.x);
  o0.xyz = r1.xxx * r0.xyz;
  o0.w = r1.x;
  r0.xyz = normalMap.Sample(normalSampler_s, w1.xy).xyz;
  r0.xyz = float3(-0.5,-0.5,-0) + r0.xyz;
  r0.xyz = baseNormalHeight * r0.xyz + float3(0.5,0.5,0);
  r0.xy = r0.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r0.z = r0.z * r0.z;
  r0.z = 0.333333343 * r0.z;
  r0.z = min(1, r0.z);
  r1.y = dot(r0.xy, r0.xy);
  r1.y = 1 + -r1.y;
  r1.y = max(0, r1.y);
  r2.z = sqrt(r1.y);
  r1.yz = detailScale.xy * w1.xy;
  r1.yzw = detailMap.Sample(normalSampler_s, r1.yz).xyz;
  r1.yz = r1.yz * float2(1.9921875,1.9921875) + float2(-1,-1);
  r1.w = r1.w * r1.w;
  r1.w = 0.333333343 * r1.w;
  r1.w = min(1, r1.w);
  r0.z = r1.w * detailScaleHeight + r0.z;
  r2.xy = r1.yz * detailScaleHeight + r0.xy;
  r0.x = dot(r2.xyz, r2.xyz);
  r0.x = rsqrt(r0.x);
  r1.yzw = r2.xyz * r0.xxx;
  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r2.xyz = v4.xyz * r0.xxx;
  r0.x = v5.x ? 1 : -1;
  r2.xyz = r2.xyz * r0.xxx;
  r2.xyz = r2.xyz * r1.zzz;
  r0.y = dot(v3.xyz, v3.xyz);
  r0.y = rsqrt(r0.y);
  r3.xyz = v3.xyz * r0.yyy;
  r3.xyz = r3.xyz * r0.xxx;
  r2.xyz = r3.xyz * r1.yyy + r2.xyz;
  r0.y = dot(v2.xyz, v2.xyz);
  r0.y = rsqrt(r0.y);
  r3.xyz = v2.xyz * r0.yyy;
  r3.xyz = r3.xyz * r0.xxx;
  r1.yzw = r3.xyz * r1.www + r2.xyz;
  r0.x = dot(r1.yzw, r1.yzw);
  r0.x = rsqrt(r0.x);
  r1.yzw = r1.yzw * r0.xxx;
  r2.zw = float2(0,0);
  r2.xy = (uint2)v0.xy;
  r0.xy = resolvedNormal.Load(r2.xyz).zw;
  r2.xy = (int2)r2.xy & int2(1,1);
  r2.x = cmp((int)r2.y == (int)r2.x);
  r0.y = r0.y * 3 + 0.5;
  r0.y = (uint)r0.y;
  r3.xyzw = (int4)r0.yyyy & int4(2,1,2,1);
  r3.xyzw = r3.zwxy ? float4(-0.577350259,-0.577350259,1.40129846e-45,1.40129846e-45) : float4(0.577350259,0.577350259,0,0);
  r0.y = (int)r3.w ^ (int)r3.z;
  r3.z = r0.y ? -0.577350259 : 0.577350259;
  r0.y = dot(r1.yzw, r3.xyz);
  r0.y = 1 + abs(r0.y);
  r0.y = rsqrt(r0.y);
  r2.yzw = float3(0.707106769,-1.41421354,0.707106769) * r3.xyz;
  r3.xy = float2(-1.22474492,1.22474492) * r3.xz;
  r3.y = dot(r1.yw, r3.xy);
  r3.x = dot(r1.yzw, r2.yzw);
  r1.yz = r3.xy * r0.yy;
  r3.xy = r1.yz * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  r0.y = glossMap.Sample(specColorSampler_s, w1.xy).x;
  r1.y = glossRange.y + -glossRange.x;
  r0.y = r0.y * r1.y + glossRange.x;
  r0.y = saturate(0.0588235296 * r0.y);
  r0.y = -17 * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r0.z + r0.y;
  r0.y = log2(r0.y);
  r0.y = saturate(-0.0588235296 * r0.y);
  r0.z = cmp(r0.x >= 0.5);
  r0.x = cmp(0 < r0.x);
  r0.z = r0.z ? 0.5 : 0.00146627566;
  r3.z = r0.y * 0.49755621 + r0.z;
  r0.xyz = r0.xxx ? r3.xyz : 0;
  o1.xyz = r0.xyz * r1.xxx;
  o1.w = r1.x;
  r0.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + specColorTint.xyz;
  r0.xyz = r0.www * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r3.y = r0.x + -r0.z;
  r0.x = r3.y * 0.5 + r0.z;
  r3.z = r0.y + -r0.x;
  r3.x = r3.z * 0.5 + r0.x;
  r0.xy = r2.xx ? r3.xy : r3.xz;
  r0.xy = r0.xy * float2(1,0.5) + float2(0,0.5);
  r0.z = aoMap.Sample(aoSampler_s, w1.xy).x;
  r0.w = 1;
  o2.xyzw = r0.xyzw * r1.xxxx;
  return;
}