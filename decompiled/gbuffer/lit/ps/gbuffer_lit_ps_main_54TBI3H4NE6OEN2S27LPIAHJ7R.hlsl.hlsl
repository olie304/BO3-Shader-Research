// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:28:56 2021

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
  float detailScaleHeight : packoffset(c11.z);
}

SamplerState colorSampler_s : register(s1);
SamplerState specColorSampler_s : register(s2);
SamplerState normalSampler_s : register(s3);
SamplerState aoSampler_s : register(s4);
Texture2D<float4> colorMap : register(t0);
Texture2D<float4> tintMask : register(t6);
Texture2D<float4> normalMap : register(t7);
Texture2D<float4> glossMap : register(t9);
Texture2D<float4> aoMap : register(t10);
Texture2D<float4> detailMap : register(t11);


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
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = colorMap.Sample(colorSampler_s, w1.xy).xyzw;
  r0.w = v1.x * r0.w;
  r0.w = cmp(r0.w < 0.5);
  if (r0.w != 0) discard;
  r0.w = tintMask.Sample(colorSampler_s, w1.xy).x;
  r1.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r1.xyz = r0.www * r1.xyz + float3(1,1,1);
  o0.xyz = r1.xyz * r0.xyz;
  r0.x = aoMap.Sample(aoSampler_s, w1.xy).x;
  r0.y = glossMap.Sample(specColorSampler_s, w1.xy).x;
  r0.z = glossRange.y + -glossRange.x;
  r0.y = r0.y * r0.z + glossRange.x;
  r0.y = saturate(0.0588235296 * r0.y);
  r1.xyz = normalMap.Sample(normalSampler_s, w1.xy).xyz;
  r1.xyz = float3(-0.5,-0.5,-0) + r1.xyz;
  r1.xyz = baseNormalHeight * r1.xyz + float3(0.5,0.5,0);
  r0.zw = r1.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r1.x = dot(r0.zw, r0.zw);
  r1.x = 1 + -r1.x;
  r1.x = max(0, r1.x);
  r2.z = sqrt(r1.x);
  r1.x = r1.z * r1.z;
  r1.x = 0.333333343 * r1.x;
  r1.x = min(1, r1.x);
  r1.yz = detailScale.xy * w1.xy;
  r1.yzw = detailMap.Sample(normalSampler_s, r1.yz).xyz;
  r1.yz = r1.yz * float2(1.9921875,1.9921875) + float2(-1,-1);
  r1.w = r1.w * r1.w;
  r1.w = 0.333333343 * r1.w;
  r1.w = min(1, r1.w);
  r2.xy = r1.yz * detailScaleHeight + r0.zw;
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = rsqrt(r0.z);
  r2.xyz = r2.xyz * r0.zzz;
  r0.z = r1.w * detailScaleHeight + r1.x;
  r0.w = v5.x ? 1 : -1;
  r1.x = dot(v2.xyz, v2.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v2.xyz * r1.xxx;
  r3.xyz = r1.xyz * r0.www;
  r1.w = dot(v3.xyz, v3.xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = v3.xyz * r1.www;
  r4.xyz = r4.xyz * r0.www;
  r1.w = dot(v4.xyz, v4.xyz);
  r1.w = rsqrt(r1.w);
  r5.xyz = v4.xyz * r1.www;
  r5.xyz = r5.xyz * r0.www;
  r0.y = -17 * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r0.z + r0.y;
  r0.y = log2(r0.y);
  r0.y = saturate(-0.0588235296 * r0.y);
  r5.xyz = r5.xyz * r2.yyy;
  r2.xyw = r4.xyz * r2.xxx + r5.xyz;
  r2.xyz = r3.xyz * r2.zzz + r2.xyw;
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = rsqrt(r0.z);
  r2.yzw = r2.xyz * r0.zzz;
  r0.z = r3.x + r3.y;
  r0.z = r1.z * r0.w + r0.z;
  r0.z = 0.5 * r0.z;
  r1.xyz = r1.xyz * r0.www + -r0.zzz;
  r0.w = max(r1.y, r1.z);
  r0.w = max(r1.x, r0.w);
  r0.z = max(r0.z, r0.w);
  r0.w = cmp(r0.z == r1.x);
  r3.yzw = float3(1,-1,-1) * r2.yzw;
  r1.x = 2 + r0.z;
  r3.x = 1;
  r2.x = 0;
  r2.xyzw = r0.wwww ? r3.xyzw : r2.xyzw;
  r0.z = r0.w ? r1.x : r0.z;
  r0.w = cmp(r0.z == r1.y);
  r3.yzw = float3(-1,1,-1) * r2.yzw;
  r1.x = 2 + r0.z;
  r3.x = 2;
  r2.xyzw = r0.wwww ? r3.xyzw : r2.xyzw;
  r0.z = r0.w ? r1.x : r0.z;
  r0.z = cmp(r0.z == r1.z);
  r1.yzw = float3(-1,-1,1) * r2.yzw;
  r1.x = 3;
  r1.xyzw = r0.zzzz ? r1.xyzw : r2.xyzw;
  r0.z = r1.y + r1.z;
  r2.z = r0.z + r1.w;
  r2.y = r1.w + -r1.y;
  r2.x = -r1.z * 3 + r2.z;
  r1.yzw = float3(0.408248305,0.707106769,0.577350259) * r2.xyz;
  r0.z = 1 + abs(r1.w);
  r0.z = rsqrt(r0.z);
  r0.zw = r1.yz * r0.zz;
  o1.xy = r0.zw * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  o1.z = r0.y * 0.49755621 + 0.00146627566;
  r0.y = (uint)r1.x;
  o1.w = 0.333333343 * r0.y;
  o0.w = 1;
  o2.xyw = float3(0.0399999991,0.5,0.333333343);
  o2.z = r0.x;
  return;
}