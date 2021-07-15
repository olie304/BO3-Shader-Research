// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:26:10 2021

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
Texture2D<float4> thicknessMap : register(t11);


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
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = colorMap.Sample(colorSampler_s, w1.xy).xyzw;
  r1.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r1.xyz = r0.www * r1.xyz + float3(1,1,1);
  r0.xyz = r1.xyz * r0.xyz;
  r0.w = specColorMap.Sample(specColorSampler_s, w1.xy).x;
  r1.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + specColorTint.xyz;
  r1.xyz = r0.www * r1.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = saturate(1 + -r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = aoMap.Sample(aoSampler_s, w1.xy).x;
  r1.w = glossMap.Sample(specColorSampler_s, w1.xy).x;
  r2.x = glossRange.y + -glossRange.x;
  r1.w = r1.w * r2.x + glossRange.x;
  r1.w = saturate(0.0588235296 * r1.w);
  r2.xyz = normalMap.Sample(normalSampler_s, w1.xy).xyz;
  r2.xyz = float3(-0.5,-0.5,-0) + r2.xyz;
  r2.xyz = baseNormalHeight * r2.xyz + float3(0.5,0.5,0);
  r2.xy = r2.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.w = dot(r2.xy, r2.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r2.z = r2.z * r2.z;
  r2.z = 0.333333343 * r2.z;
  r2.z = min(1, r2.z);
  r3.x = v5.x ? 1 : -1;
  r3.y = dot(v2.xyz, v2.xyz);
  r3.y = rsqrt(r3.y);
  r3.yzw = v2.xyz * r3.yyy;
  r4.xyz = r3.yzw * r3.xxx;
  r4.w = dot(v3.xyz, v3.xyz);
  r4.w = rsqrt(r4.w);
  r5.xyz = v3.xyz * r4.www;
  r5.xyz = r5.xyz * r3.xxx;
  r4.w = dot(v4.xyz, v4.xyz);
  r4.w = rsqrt(r4.w);
  r6.xyz = v4.xyz * r4.www;
  r6.xyz = r6.xyz * r3.xxx;
  r1.w = -17 * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r2.z + r1.w;
  r1.w = log2(r1.w);
  r1.w = -0.0588235296 * r1.w;
  r1.w = max(0, r1.w);
  r6.xyz = r6.xyz * r2.yyy;
  r2.xyz = r5.xyz * r2.xxx + r6.xyz;
  r2.xyz = r4.xyz * r2.www + r2.xyz;
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = rsqrt(r2.w);
  r2.yzw = r2.xyz * r2.www;
  r4.z = dot(float3(0.212599993,0.715200007,0.0722000003), r1.xyz);
  r4.z = cmp(0.0909999982 < r4.z);
  if (r4.z != 0) {
    r4.z = r4.x + r4.y;
    r4.z = r3.w * r3.x + r4.z;
    r4.z = 0.5 * r4.z;
    r5.xyz = r3.yzw * r3.xxx + -r4.zzz;
    r4.w = max(r5.y, r5.z);
    r4.w = max(r5.x, r4.w);
    r4.z = max(r4.z, r4.w);
    r4.w = cmp(r4.z == r5.x);
    r6.yzw = float3(1,-1,-1) * r2.yzw;
    r5.x = 2 + r4.z;
    r6.x = 1;
    r2.x = 0;
    r6.xyzw = r4.wwww ? r6.xyzw : r2.xyzw;
    r4.z = r4.w ? r5.x : r4.z;
    r4.w = cmp(r4.z == r5.y);
    r7.yzw = float3(-1,1,-1) * r6.yzw;
    r5.x = 2 + r4.z;
    r7.x = 2;
    r6.xyzw = r4.wwww ? r7.xyzw : r6.xyzw;
    r4.z = r4.w ? r5.x : r4.z;
    r4.z = cmp(r4.z == r5.z);
    r5.yzw = float3(-1,-1,1) * r6.yzw;
    r5.x = 3;
    r5.xyzw = r4.zzzz ? r5.xyzw : r6.xyzw;
    r4.z = r5.y + r5.z;
    r6.z = r4.z + r5.w;
    r6.y = r5.w + -r5.y;
    r6.x = -r5.z * 3 + r6.z;
    r5.yzw = float3(0.408248305,0.707106769,0.577350259) * r6.xyz;
    r4.z = 1 + abs(r5.w);
    r4.z = rsqrt(r4.z);
    r4.zw = r5.yz * r4.zz;
    o1.xy = r4.zw * float2(0.588235319,0.588235319) + float2(0.5,0.5);
    o1.z = r1.w * 0.49755621 + 0.00146627566;
    r4.z = (uint)r5.x;
    o1.w = 0.333333343 * r4.z;
    r4.zw = (uint2)v0.xy;
    r5.y = r1.x + -r1.z;
    r1.x = r5.y * 0.5 + r1.z;
    r5.z = r1.y + -r1.x;
    r5.x = r5.z * 0.5 + r1.x;
    r1.xy = (int2)r4.zw & int2(1,1);
    r1.x = cmp((int)r1.y == (int)r1.x);
    r1.xy = r1.xx ? r5.xy : r5.xz;
    o2.xy = r1.xy * float2(1,0.5) + float2(0,0.5);
    o0.xyz = r0.xyz;
    o0.w = 1;
    o2.z = r0.w;
    o2.w = 0.333333343;
    return;
  }
  r1.x = thicknessMap.Sample(colorSampler_s, w1.xy).x;
  r5.xyz = backlightScatterColor.xyz * r0.xyz;
  r1.x = 1 + -r1.x;
  r1.y = r5.z * r1.x;
  r1.z = r4.x + r4.y;
  r1.z = r3.w * r3.x + r1.z;
  r1.z = 0.5 * r1.z;
  r3.xyz = r3.yzw * r3.xxx + -r1.zzz;
  r3.w = max(r3.y, r3.z);
  r3.w = max(r3.x, r3.w);
  r1.z = max(r3.w, r1.z);
  r3.x = cmp(r1.z == r3.x);
  r4.yzw = float3(1,-1,-1) * r2.yzw;
  r3.w = 2 + r1.z;
  r4.x = 1;
  r2.x = 0;
  r2.xyzw = r3.xxxx ? r4.xyzw : r2.xyzw;
  r1.z = r3.x ? r3.w : r1.z;
  r3.x = cmp(r1.z == r3.y);
  r4.yzw = float3(-1,1,-1) * r2.yzw;
  r3.y = 2 + r1.z;
  r4.x = 2;
  r2.xyzw = r3.xxxx ? r4.xyzw : r2.xyzw;
  r1.z = r3.x ? r3.y : r1.z;
  r1.z = cmp(r1.z == r3.z);
  r3.yzw = float3(-1,-1,1) * r2.yzw;
  r3.x = 3;
  r2.xyzw = r1.zzzz ? r3.xyzw : r2.xyzw;
  r1.z = r2.y + r2.z;
  r3.z = r1.z + r2.w;
  r3.y = r2.w + -r2.y;
  r3.x = -r2.z * 3 + r3.z;
  r2.yzw = float3(0.408248305,0.707106769,0.577350259) * r3.xyz;
  r1.z = 1 + abs(r2.w);
  r1.z = rsqrt(r1.z);
  r2.yz = r2.yz * r1.zz;
  o1.xy = r2.yz * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  o1.z = r1.w * 0.49755621 + 0.5;
  r1.z = (uint)r2.x;
  o1.w = 0.333333343 * r1.z;
  r1.zw = (uint2)v0.xy;
  r2.y = r5.x * r1.x + -r1.y;
  r1.y = r2.y * 0.5 + r1.y;
  r2.z = r5.y * r1.x + -r1.y;
  r2.x = r2.z * 0.5 + r1.y;
  r1.xy = (int2)r1.zw & int2(1,1);
  r1.x = cmp((int)r1.y == (int)r1.x);
  r1.xy = r1.xx ? r2.xy : r2.xz;
  o2.xy = r1.xy * float2(1,0.5) + float2(0,0.5);
  o0.xyz = r0.xyz;
  o0.w = 1;
  o2.z = r0.w;
  o2.w = 0.666666687;
  return;
}