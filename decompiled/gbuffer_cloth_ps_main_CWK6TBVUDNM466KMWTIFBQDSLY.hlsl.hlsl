// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:26:55 2021

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
  float waterRefractionAmount : packoffset(c11.w);
}

SamplerState colorSampler_s : register(s1);
SamplerState specColorSampler_s : register(s2);
SamplerState normalSampler_s : register(s3);
SamplerState aoSampler_s : register(s4);
SamplerState velveteenSampler_s : register(s5);
Texture2D<float4> colorMap : register(t0);
Texture2D<float4> normalMap : register(t6);
Texture2D<float4> glossMap : register(t7);
Texture2D<float4> aoMap : register(t9);
Texture2D<float4> detailMap : register(t10);
Texture2D<float4> velveteenMask : register(t11);


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
  float3 v6 : OFFPOSITION0,
  uint v7 : SV_IsFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = glossMap.Sample(specColorSampler_s, v2.xy).x;
  r0.y = glossRange.y + -glossRange.x;
  r0.x = r0.x * r0.y + glossRange.x;
  r0.x = saturate(0.0588235296 * r0.x);
  r0.x = -17 * r0.x;
  r0.x = exp2(r0.x);
  r0.yzw = normalMap.Sample(normalSampler_s, v2.xy).xyz;
  r0.yzw = float3(-0.5,-0.5,-0) + r0.yzw;
  r0.yzw = baseNormalHeight * r0.yzw + float3(0.5,0.5,0);
  r0.w = r0.w * r0.w;
  r0.yz = r0.yz * float2(1.9921875,1.9921875) + float2(-1,-1);
  r0.w = 0.333333343 * r0.w;
  r1.xy = detailScale.xy * v2.xy;
  r1.xyz = detailMap.Sample(normalSampler_s, r1.xy).xyz;
  r1.z = r1.z * r1.z;
  r1.xy = r1.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.xy = r1.xy * detailScaleHeight + r0.yz;
  r0.y = dot(r0.yz, r0.yz);
  r0.y = 1 + -r0.y;
  r0.y = max(0, r0.y);
  r2.z = sqrt(r0.y);
  r0.y = 0.333333343 * r1.z;
  r0.yw = min(float2(1,1), r0.yw);
  r0.y = r0.y * detailScaleHeight + r0.w;
  r0.x = r0.y + r0.x;
  r0.x = log2(r0.x);
  r0.x = saturate(-0.0588235296 * r0.x);
  r0.y = 17 * r0.x;
  o1.z = r0.x * 0.49755621 + 0.00146627566;
  r0.x = exp2(r0.y);
  r0.x = 2 + r0.x;
  r0.x = 2 / r0.x;
  r0.x = sqrt(r0.x);
  r0.x = 1 / r0.x;
  r0.y = dot(r2.xyz, r2.xyz);
  r0.y = rsqrt(r0.y);
  r0.yzw = r2.xyz * r0.yyy;
  r1.x = dot(v5.xyz, v5.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v5.xyz * r1.xxx;
  r1.w = v7.x ? 1 : -1;
  r1.xyz = r1.xyz * r1.www;
  r1.xyz = r1.xyz * r0.zzz;
  r0.z = dot(v4.xyz, v4.xyz);
  r0.z = rsqrt(r0.z);
  r2.xyz = v4.xyz * r0.zzz;
  r2.xyz = r2.xyz * r1.www;
  r1.xyz = r2.xyz * r0.yyy + r1.xyz;
  r0.y = dot(v3.xyz, v3.xyz);
  r0.y = rsqrt(r0.y);
  r2.xyz = v3.xyz * r0.yyy;
  r3.xyz = r2.xyz * r1.www;
  r0.yzw = r3.xyz * r0.www + r1.xyz;
  r1.x = r3.x + r3.y;
  r1.x = r2.z * r1.w + r1.x;
  r1.x = 0.5 * r1.x;
  r1.y = dot(r0.yzw, r0.yzw);
  r1.y = rsqrt(r1.y);
  r3.yzw = r1.yyy * r0.yzw;
  r0.y = dot(-v6.xyz, -v6.xyz);
  r0.y = rsqrt(r0.y);
  r0.yzw = -v6.xyz * r0.yyy;
  r0.y = saturate(dot(r3.yzw, r0.yzw));
  r0.y = 1 + -r0.y;
  r0.y = log2(r0.y);
  r0.x = r0.x * r0.y;
  r0.x = exp2(r0.x);
  r0.y = velveteenMask.Sample(velveteenSampler_s, v2.xy).x;
  r0.z = saturate(-r0.y * waterRefractionAmount + 1);
  r0.y = waterRefractionAmount * r0.y;
  r0.y = cmp(0 < r0.y);
  r0.z = r0.z + r0.x;
  r0.z = min(1, r0.z);
  r4.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r5.xyzw = colorMap.Sample(colorSampler_s, v2.xy).xyzw;
  r4.xyz = r5.www * r4.xyz + float3(1,1,1);
  r4.xyz = r5.xyz * r4.xyz;
  r5.xyz = v1.xyz * r4.xyz;
  r4.xyz = r4.xyz * v1.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r4.xyz = r0.xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r4.xyz = r0.yyy ? r4.xyz : float3(0.0399999991,0.0399999991,0.0399999991);
  r0.xzw = r5.xyz * r0.zzz;
  o0.xyz = r0.yyy ? r0.xzw : r5.xyz;
  o0.w = 1;
  r0.xyz = r2.xyz * r1.www + -r1.xxx;
  r0.w = max(r0.y, r0.z);
  r0.w = max(r0.x, r0.w);
  r0.w = max(r1.x, r0.w);
  r0.x = cmp(r0.w == r0.x);
  r1.x = 2 + r0.w;
  r0.w = r0.x ? r1.x : r0.w;
  r0.y = cmp(r0.w == r0.y);
  r1.x = 2 + r0.w;
  r0.w = r0.y ? r1.x : r0.w;
  r0.z = cmp(r0.w == r0.z);
  r1.yzw = float3(1,-1,-1) * r3.yzw;
  r1.x = 1;
  r3.x = 0;
  r1.xyzw = r0.xxxx ? r1.xyzw : r3.xyzw;
  r2.yzw = float3(-1,1,-1) * r1.yzw;
  r2.x = 2;
  r1.xyzw = r0.yyyy ? r2.xyzw : r1.xyzw;
  r2.yzw = float3(-1,-1,1) * r1.yzw;
  r2.x = 3;
  r0.xyzw = r0.zzzz ? r2.xyzw : r1.xyzw;
  r1.x = r0.y + r0.z;
  r1.z = r1.x + r0.w;
  r1.x = -r0.z * 3 + r1.z;
  r1.y = r0.w + -r0.y;
  r0.x = (uint)r0.x;
  o1.w = 0.333333343 * r0.x;
  r0.xyz = float3(0.408248305,0.707106769,0.577350259) * r1.xyz;
  r0.z = 1 + abs(r0.z);
  r0.z = rsqrt(r0.z);
  r0.xy = r0.xy * r0.zz;
  o1.xy = r0.xy * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  r0.y = r4.x + -r4.z;
  r0.w = r0.y * 0.5 + r4.z;
  r0.z = r4.y + -r0.w;
  r0.x = r0.z * 0.5 + r0.w;
  r1.xy = (uint2)v0.xy;
  r1.xy = (int2)r1.xy & int2(1,1);
  r0.w = cmp((int)r1.y == (int)r1.x);
  r0.xy = r0.ww ? r0.xy : r0.xz;
  o2.xy = r0.xy * float2(1,0.5) + float2(0,0.5);
  r0.x = aoMap.Sample(aoSampler_s, v2.xy).x;
  o2.z = r0.x;
  o2.w = 0.333333343;
  return;
}