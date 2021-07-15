// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:30:43 2021

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
  float3 specColorTint : packoffset(c10);
  float baseNormalHeight : packoffset(c10.w);
  float2 glossRange : packoffset(c11);
  float2 mixScale : packoffset(c11.z);
  float detailScaleHeight1 : packoffset(c12);
  float detailScaleHeight2 : packoffset(c12.y);
  float4 colorTint : packoffset(c13);
  float4 colorTint1 : packoffset(c14);
  float2 glossRange2 : packoffset(c15);
  float rotateUVs1 : packoffset(c15.z);
  float rotateUVs2 : packoffset(c15.w);
  bool useUVOffsets1 : packoffset(c16);
  bool useUVOffsets2 : packoffset(c16.y);
  float4 specColorTint1 : packoffset(c17);
}

SamplerState colorSampler_s : register(s1);
SamplerState specColorSampler_s : register(s2);
SamplerState normalSampler_s : register(s3);
SamplerState aoSampler_s : register(s4);
SamplerState mixSampler_s : register(s5);
Texture2D<float4> colorMap : register(t0);
Texture2D<float4> specColorMap : register(t6);
Texture2D<float4> normalMap : register(t7);
Texture2D<float4> glossMap : register(t9);
Texture2D<float4> aoMap : register(t10);
Texture2D<float4> detailMap1 : register(t11);
Texture2D<float4> detailMap2 : register(t12);
Texture2D<float4> glossMapDetail2 : register(t14);
Texture2D<float4> colorMapDetail2 : register(t15);
Texture2D<float4> mixMap : register(t16);
Texture2D<float4> specularMapDetail2 : register(t17);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float3 v1 : COLOR0,
  float w1 : COLOR1,
  float2 v2 : TEXCOORD0,
  nointerpolation float3 v3 : UVOFFSETS0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float3 v6 : TEXCOORD3,
  uint v7 : SV_IsFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = abs(v3.x) + abs(v3.y);
  r0.x = abs(v3.z) + r0.x;
  r0.x = (uint)r0.x;
  r0.y = (uint)r0.x << 4;
  r0.z = (int)r0.x + 0x9e3779b9;
  r0.y = (int)r0.z ^ (int)r0.y;
  r0.z = (uint)r0.x >> 5;
  r0.y = (int)r0.z ^ (int)r0.y;
  r0.y = (int)r0.y + (int)r0.x;
  r0.z = (uint)r0.y << 4;
  r0.w = (int)r0.y + 0x9e3779b9;
  r0.z = (int)r0.w ^ (int)r0.z;
  r0.w = (uint)r0.y >> 5;
  r0.z = (int)r0.w ^ (int)r0.z;
  r0.x = (int)r0.z + (int)r0.x;
  r0.z = (uint)r0.x << 4;
  r0.w = (int)r0.x + 0x3c6ef372;
  r0.z = (int)r0.w ^ (int)r0.z;
  r0.w = (uint)r0.x >> 5;
  r0.z = (int)r0.w ^ (int)r0.z;
  r0.y = (int)r0.z + (int)r0.y;
  r0.z = (uint)r0.y << 4;
  r0.w = (int)r0.y + 0x3c6ef372;
  r0.z = (int)r0.w ^ (int)r0.z;
  r0.w = (uint)r0.y >> 5;
  r0.z = (int)r0.w ^ (int)r0.z;
  r0.x = (int)r0.z + (int)r0.x;
  r0.z = (uint)r0.x << 4;
  r0.w = (int)r0.x + 0xdaa66d2b;
  r0.x = (uint)r0.x >> 5;
  r0.z = (int)r0.w ^ (int)r0.z;
  r0.x = (int)r0.x ^ (int)r0.z;
  r0.x = (int)r0.x + (int)r0.y;
  r0.x = (int)r0.x & 0x0000ffff;
  r0.x = (uint)r0.x;
  r0.xyz = cmp(float3(49151.25,32767.5,16383.75) < r0.xxx);
  r1.xy = mixScale.xy * v2.xy;
  r1.xyzw = mixMap.Sample(mixSampler_s, r1.xy).xyzw;
  r0.z = r0.z ? r1.y : r1.x;
  r0.y = r0.y ? r1.z : r0.z;
  r0.x = r0.x ? r1.w : r0.y;
  r0.yzw = float3(0.100000001,0.100000001,0.100000001) * v3.xyz;
  r0.yzw = frac(r0.yzw);
  sincos(rotateUVs1, r1.x, r2.x);
  r3.z = r1.x;
  r3.y = r2.x;
  r3.x = -r1.x;
  r1.xy = float2(-0.5,-0.5) + v2.xy;
  r2.x = dot(r1.xy, r3.yz);
  r2.y = dot(r1.xy, r3.xy);
  r1.zw = r2.xy + r0.zy;
  r2.xy = float2(0.5,0.5) + r2.xy;
  r2.xy = detailScale1.xy * r2.xy;
  r0.w = 0.5 + r0.w;
  r1.zw = r1.zw + r0.ww;
  r1.zw = detailScale1.xy * r1.zw;
  r1.zw = useUVOffsets1 ? r1.zw : r2.xy;
  r2.xyzw = colorMap.Sample(colorSampler_s, r1.zw).xyzw;
  r3.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r3.xyz = r2.www * r3.xyz + float3(1,1,1);
  r2.xyz = r3.xyz * r2.xyz;
  sincos(rotateUVs2, r3.x, r4.x);
  r5.z = r3.x;
  r5.y = r4.x;
  r5.x = -r3.x;
  r3.y = dot(r1.xy, r5.xy);
  r3.x = dot(r1.xy, r5.yz);
  r0.yz = r3.xy + r0.zy;
  r1.xy = float2(0.5,0.5) + r3.xy;
  r1.xy = detailScale2.xy * r1.xy;
  r0.yz = r0.yz + r0.ww;
  r0.yz = detailScale2.xy * r0.yz;
  r0.yz = useUVOffsets1 ? r0.yz : r1.xy;
  r3.xyzw = colorMapDetail2.Sample(colorSampler_s, r0.yz).xyzw;
  r4.xyz = float3(-1,-1,-1) + colorTint1.xyz;
  r4.xyz = r3.www * r4.xyz + float3(1,1,1);
  r3.xyz = r3.xyz * r4.xyz + -r2.xyz;
  r2.xyz = r0.xxx * r3.xyz + r2.xyz;
  r2.xyz = v1.xyz * r2.xyz;
  r0.w = specularMapDetail2.Sample(specColorSampler_s, r0.yz).x;
  r1.x = specColorMap.Sample(specColorSampler_s, r1.zw).x;
  r1.y = -r1.x + r0.w;
  r1.y = r0.x * r1.y + r1.x;
  r1.y = 1 + -r1.y;
  o0.xyz = r2.xyz * r1.yyy;
  o0.w = 1;
  r1.y = glossMapDetail2.Sample(specColorSampler_s, r0.yz).x;
  r2.xyz = detailMap2.Sample(normalSampler_s, r0.yz).xyz;
  r0.y = glossRange2.y + -glossRange2.x;
  r0.y = r1.y * r0.y + glossRange2.x;
  r0.y = saturate(0.0588235296 * r0.y);
  r0.z = glossMap.Sample(specColorSampler_s, r1.zw).x;
  r1.yzw = detailMap1.Sample(normalSampler_s, r1.zw).xyz;
  r2.w = glossRange.y + -glossRange.x;
  r0.z = r0.z * r2.w + glossRange.x;
  r0.z = saturate(0.0588235296 * r0.z);
  r0.y = r0.y + -r0.z;
  r0.y = r0.x * r0.y + r0.z;
  r0.y = -17 * r0.y;
  r0.y = exp2(r0.y);
  r0.z = r2.z * r2.z;
  r2.xy = r2.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r0.z = 0.333333343 * r0.z;
  r0.z = min(1, r0.z);
  r3.xyz = normalMap.Sample(normalSampler_s, v2.xy).xyz;
  r3.xyz = float3(-0.5,-0.5,-0) + r3.xyz;
  r3.xyz = baseNormalHeight * r3.xyz + float3(0.5,0.5,0);
  r2.z = r3.z * r3.z;
  r3.xy = r3.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.z = 0.333333343 * r2.z;
  r2.z = min(1, r2.z);
  r4.w = r0.z * detailScaleHeight2 + r2.z;
  r0.z = r1.w * r1.w;
  r1.yz = r1.yz * float2(1.9921875,1.9921875) + float2(-1,-1);
  r5.xy = r1.yz * detailScaleHeight1 + r3.xy;
  r0.z = 0.333333343 * r0.z;
  r0.z = min(1, r0.z);
  r6.w = r0.z * detailScaleHeight1 + r2.z;
  r2.xy = r2.xy * detailScaleHeight2 + r3.xy;
  r0.z = dot(r3.xy, r3.xy);
  r0.z = 1 + -r0.z;
  r0.z = max(0, r0.z);
  r5.z = sqrt(r0.z);
  r2.z = r5.z;
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = rsqrt(r0.z);
  r4.xyz = r2.xyz * r0.zzz;
  r0.z = dot(r5.xyz, r5.xyz);
  r0.z = rsqrt(r0.z);
  r6.xyz = r5.xyz * r0.zzz;
  r2.xyzw = -r6.xyzw + r4.xyzw;
  r2.xyzw = r0.xxxx * r2.xyzw + r6.xyzw;
  r0.y = r2.w + r0.y;
  r0.y = log2(r0.y);
  r0.y = saturate(-0.0588235296 * r0.y);
  o1.z = r0.y * 0.49755621 + 0.00146627566;
  r0.y = dot(v6.xyz, v6.xyz);
  r0.y = rsqrt(r0.y);
  r1.yzw = v6.xyz * r0.yyy;
  r0.y = v7.x ? 1 : -1;
  r1.yzw = r1.yzw * r0.yyy;
  r1.yzw = r1.yzw * r2.yyy;
  r0.z = dot(v5.xyz, v5.xyz);
  r0.z = rsqrt(r0.z);
  r3.xyz = v5.xyz * r0.zzz;
  r3.xyz = r3.xyz * r0.yyy;
  r1.yzw = r3.xyz * r2.xxx + r1.yzw;
  r0.z = dot(v4.xyz, v4.xyz);
  r0.z = rsqrt(r0.z);
  r2.xyw = v4.xyz * r0.zzz;
  r3.xyz = r2.xyw * r0.yyy;
  r1.yzw = r3.xyz * r2.zzz + r1.yzw;
  r0.z = r3.x + r3.y;
  r0.z = r2.w * r0.y + r0.z;
  r0.z = 0.5 * r0.z;
  r2.z = dot(r1.yzw, r1.yzw);
  r2.z = rsqrt(r2.z);
  r3.yzw = r2.zzz * r1.yzw;
  r4.yzw = float3(1,-1,-1) * r3.yzw;
  r4.x = 1;
  r3.x = 0;
  r1.yzw = r2.xyw * r0.yyy + -r0.zzz;
  r0.y = max(r1.z, r1.w);
  r0.y = max(r1.y, r0.y);
  r0.y = max(r0.z, r0.y);
  r0.z = cmp(r0.y == r1.y);
  r2.xyzw = r0.zzzz ? r4.xyzw : r3.xyzw;
  r3.yzw = float3(-1,1,-1) * r2.yzw;
  r3.x = 2;
  r1.y = 2 + r0.y;
  r0.y = r0.z ? r1.y : r0.y;
  r0.z = cmp(r0.y == r1.z);
  r2.xyzw = r0.zzzz ? r3.xyzw : r2.xyzw;
  r3.yzw = float3(-1,-1,1) * r2.yzw;
  r1.y = 2 + r0.y;
  r0.y = r0.z ? r1.y : r0.y;
  r0.y = cmp(r0.y == r1.w);
  r3.x = 3;
  r2.xyzw = r0.yyyy ? r3.xyzw : r2.xyzw;
  r0.y = r2.y + r2.z;
  r3.z = r0.y + r2.w;
  r3.x = -r2.z * 3 + r3.z;
  r3.y = r2.w + -r2.y;
  r0.y = (uint)r2.x;
  o1.w = 0.333333343 * r0.y;
  r1.yzw = float3(0.408248305,0.707106769,0.577350259) * r3.xyz;
  r0.y = 1 + abs(r1.w);
  r0.y = rsqrt(r0.y);
  r0.yz = r1.yz * r0.yy;
  o1.xy = r0.yz * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  r1.yzw = float3(-0.0399999991,-0.0399999991,-0.0399999991) + specColorTint1.xyz;
  r0.yzw = r0.www * r1.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r1.yzw = float3(-0.0399999991,-0.0399999991,-0.0399999991) + specColorTint.xyz;
  r1.xyz = r1.xxx * r1.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.yzw = -r1.xyz + r0.yzw;
  r0.xyz = r0.xxx * r0.yzw + r1.xyz;
  r1.y = r0.x + -r0.z;
  r0.x = r1.y * 0.5 + r0.z;
  r1.z = r0.y + -r0.x;
  r1.x = r1.z * 0.5 + r0.x;
  r0.xy = (uint2)v0.xy;
  r0.xy = (int2)r0.xy & int2(1,1);
  r0.x = cmp((int)r0.y == (int)r0.x);
  r0.xy = r0.xx ? r1.xy : r1.xz;
  o2.xy = r0.xy * float2(1,0.5) + float2(0,0.5);
  r0.x = aoMap.Sample(aoSampler_s, v2.xy).x;
  o2.z = r0.x;
  o2.w = 0.333333343;
  return;
}