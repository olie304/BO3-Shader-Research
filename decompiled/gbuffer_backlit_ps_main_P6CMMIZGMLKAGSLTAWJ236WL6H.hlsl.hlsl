// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:26:21 2021

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
  float3 specColorTint : packoffset(c11);
  float baseNormalHeight : packoffset(c11.w);
  float2 glossRange : packoffset(c12);
  float detailScaleHeight : packoffset(c12.z);
  float3 backlightScatterColor : packoffset(c13);
}

SamplerState colorSampler_s : register(s1);
SamplerState specColorSampler_s : register(s2);
SamplerState normalSampler_s : register(s3);
SamplerState aoSampler_s : register(s4);
Texture2D<float4> colorMap : register(t0);
Texture2D<float4> specColorMap : register(t6);
Texture2D<float4> normalMap : register(t7);
Texture2D<float4> glossMap : register(t9);
Texture2D<float4> aoMap : register(t10);
Texture2D<float4> detailMap : register(t11);
Texture2D<float4> thicknessMap : register(t12);


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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = colorMap.Sample(colorSampler_s, v2.xy).xyzw;
  r1.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r1.xyz = r0.www * r1.xyz + float3(1,1,1);
  r0.xyz = r1.xyz * r0.xyz;
  r0.xyz = v1.xyz * r0.xyz;
  r0.w = specColorMap.Sample(specColorSampler_s, v2.xy).x;
  r1.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + specColorTint.xyz;
  r1.xyz = r0.www * r1.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = saturate(1 + -r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = aoMap.Sample(aoSampler_s, v2.xy).x;
  r1.w = glossMap.Sample(specColorSampler_s, v2.xy).x;
  r2.x = glossRange.y + -glossRange.x;
  r1.w = r1.w * r2.x + glossRange.x;
  r1.w = saturate(0.0588235296 * r1.w);
  r2.xyz = normalMap.Sample(normalSampler_s, v2.xy).xyz;
  r2.xyz = float3(-0.5,-0.5,-0) + r2.xyz;
  r2.xyz = baseNormalHeight * r2.xyz + float3(0.5,0.5,0);
  r2.xy = r2.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.w = dot(r2.xy, r2.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r3.z = sqrt(r2.w);
  r2.z = r2.z * r2.z;
  r2.z = 0.333333343 * r2.z;
  r4.xy = detailScale.xy * v2.xy;
  r4.xyz = detailMap.Sample(normalSampler_s, r4.xy).xyz;
  r4.xy = r4.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.w = r4.z * r4.z;
  r2.w = 0.333333343 * r2.w;
  r2.zw = min(float2(1,1), r2.zw);
  r3.xy = r4.xy * detailScaleHeight + r2.xy;
  r2.x = dot(r3.xyz, r3.xyz);
  r2.x = rsqrt(r2.x);
  r3.xyz = r3.xyz * r2.xxx;
  r2.x = r2.w * detailScaleHeight + r2.z;
  r2.y = v6.x ? 1 : -1;
  r2.z = dot(v3.xyz, v3.xyz);
  r2.z = rsqrt(r2.z);
  r4.xyz = v3.xyz * r2.zzz;
  r5.xyz = r4.xyz * r2.yyy;
  r2.z = dot(v4.xyz, v4.xyz);
  r2.z = rsqrt(r2.z);
  r6.xyz = v4.xyz * r2.zzz;
  r6.xyz = r6.xyz * r2.yyy;
  r2.z = dot(v5.xyz, v5.xyz);
  r2.z = rsqrt(r2.z);
  r7.xyz = v5.xyz * r2.zzz;
  r7.xyz = r7.xyz * r2.yyy;
  r1.w = -17 * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r2.x + r1.w;
  r1.w = log2(r1.w);
  r1.w = saturate(-0.0588235296 * r1.w);
  r2.xzw = r7.xyz * r3.yyy;
  r2.xzw = r6.xyz * r3.xxx + r2.xzw;
  r2.xzw = r5.xyz * r3.zzz + r2.xzw;
  r3.x = dot(r2.xzw, r2.xzw);
  r3.x = rsqrt(r3.x);
  r3.yzw = r3.xxx * r2.xzw;
  r2.x = dot(float3(0.212599993,0.715200007,0.0722000003), r1.xyz);
  r2.x = cmp(0.0909999982 < r2.x);
  if (r2.x != 0) {
    r2.x = r5.x + r5.y;
    r2.x = r4.z * r2.y + r2.x;
    r2.x = 0.5 * r2.x;
    r6.xyz = r4.xyz * r2.yyy + -r2.xxx;
    r2.z = max(r6.y, r6.z);
    r2.z = max(r6.x, r2.z);
    r2.x = max(r2.x, r2.z);
    r2.z = cmp(r2.x == r6.x);
    r7.yzw = float3(1,-1,-1) * r3.yzw;
    r2.w = 2 + r2.x;
    r7.x = 1;
    r3.x = 0;
    r7.xyzw = r2.zzzz ? r7.xyzw : r3.xyzw;
    r2.x = r2.z ? r2.w : r2.x;
    r2.z = cmp(r2.x == r6.y);
    r8.yzw = float3(-1,1,-1) * r7.yzw;
    r2.w = 2 + r2.x;
    r8.x = 2;
    r7.xyzw = r2.zzzz ? r8.xyzw : r7.xyzw;
    r2.x = r2.z ? r2.w : r2.x;
    r2.x = cmp(r2.x == r6.z);
    r6.yzw = float3(-1,-1,1) * r7.yzw;
    r6.x = 3;
    r6.xyzw = r2.xxxx ? r6.xyzw : r7.xyzw;
    r2.x = r6.y + r6.z;
    r7.z = r2.x + r6.w;
    r7.y = r6.w + -r6.y;
    r7.x = -r6.z * 3 + r7.z;
    r2.xzw = float3(0.408248305,0.707106769,0.577350259) * r7.xyz;
    r2.w = 1 + abs(r2.w);
    r2.w = rsqrt(r2.w);
    r2.xz = r2.xz * r2.ww;
    o1.xy = r2.xz * float2(0.588235319,0.588235319) + float2(0.5,0.5);
    o1.z = r1.w * 0.49755621 + 0.00146627566;
    r2.x = (uint)r6.x;
    o1.w = 0.333333343 * r2.x;
    r2.xz = (uint2)v0.xy;
    r6.y = r1.x + -r1.z;
    r1.x = r6.y * 0.5 + r1.z;
    r6.z = r1.y + -r1.x;
    r6.x = r6.z * 0.5 + r1.x;
    r1.xy = (int2)r2.xz & int2(1,1);
    r1.x = cmp((int)r1.y == (int)r1.x);
    r1.xy = r1.xx ? r6.xy : r6.xz;
    o2.xy = r1.xy * float2(1,0.5) + float2(0,0.5);
    o0.xyz = r0.xyz;
    o0.w = 1;
    o2.z = r0.w;
    o2.w = 0.333333343;
    return;
  }
  r1.x = thicknessMap.Sample(colorSampler_s, v2.xy).x;
  r2.xzw = backlightScatterColor.xyz * r0.xyz;
  r1.x = 1 + -r1.x;
  r1.y = r2.w * r1.x;
  r1.z = r5.x + r5.y;
  r1.z = r4.z * r2.y + r1.z;
  r1.z = 0.5 * r1.z;
  r4.xyz = r4.xyz * r2.yyy + -r1.zzz;
  r2.y = max(r4.y, r4.z);
  r2.y = max(r4.x, r2.y);
  r1.z = max(r2.y, r1.z);
  r2.y = cmp(r1.z == r4.x);
  r5.yzw = float3(1,-1,-1) * r3.yzw;
  r2.w = 2 + r1.z;
  r5.x = 1;
  r3.x = 0;
  r3.xyzw = r2.yyyy ? r5.xyzw : r3.xyzw;
  r1.z = r2.y ? r2.w : r1.z;
  r2.y = cmp(r1.z == r4.y);
  r5.yzw = float3(-1,1,-1) * r3.yzw;
  r2.w = 2 + r1.z;
  r5.x = 2;
  r3.xyzw = r2.yyyy ? r5.xyzw : r3.xyzw;
  r1.z = r2.y ? r2.w : r1.z;
  r1.z = cmp(r1.z == r4.z);
  r4.yzw = float3(-1,-1,1) * r3.yzw;
  r4.x = 3;
  r3.xyzw = r1.zzzz ? r4.xyzw : r3.xyzw;
  r1.z = r3.y + r3.z;
  r4.z = r1.z + r3.w;
  r4.y = r3.w + -r3.y;
  r4.x = -r3.z * 3 + r4.z;
  r3.yzw = float3(0.408248305,0.707106769,0.577350259) * r4.xyz;
  r1.z = 1 + abs(r3.w);
  r1.z = rsqrt(r1.z);
  r2.yw = r3.yz * r1.zz;
  o1.xy = r2.yw * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  o1.z = r1.w * 0.49755621 + 0.5;
  r1.z = (uint)r3.x;
  o1.w = 0.333333343 * r1.z;
  r1.zw = (uint2)v0.xy;
  r3.y = r2.x * r1.x + -r1.y;
  r1.y = r3.y * 0.5 + r1.y;
  r3.z = r2.z * r1.x + -r1.y;
  r3.x = r3.z * 0.5 + r1.y;
  r1.xy = (int2)r1.zw & int2(1,1);
  r1.x = cmp((int)r1.y == (int)r1.x);
  r1.xy = r1.xx ? r3.xy : r3.xz;
  o2.xy = r1.xy * float2(1,0.5) + float2(0,0.5);
  o0.xyz = r0.xyz;
  o0.w = 1;
  o2.z = r0.w;
  o2.w = 0.666666687;
  return;
}