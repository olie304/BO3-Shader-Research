// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:29:12 2021

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
  float scriptReplacement : packoffset(c13.z);
}

SamplerState revealSampler_s : register(s1);
SamplerState colorSampler_s : register(s2);
SamplerState specColorSampler_s : register(s3);
SamplerState normalSampler_s : register(s4);
SamplerState aoSampler_s : register(s5);
Texture2D<float4> revealMap : register(t0);
Texture2D<float4> colorMap : register(t6);
Texture2D<float4> specColorMap : register(t7);
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
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = revealScale.xy * v2.xy;
  r0.x = revealMap.Sample(revealSampler_s, r0.xy).x;
  r0.y = saturate(w1.x * 0.998000026 + 0.00100000005);
  r0.z = 1 + -r0.y;
  r0.w = saturate(alphaRevealRamp);
  r0.y = log2(r0.y);
  r0.y = r0.w * r0.y;
  r0.y = exp2(r0.y);
  r1.x = -r0.y;
  r0.y = log2(r0.z);
  r0.y = r0.w * r0.y;
  r1.y = exp2(r0.y);
  r0.yz = saturate(alphaRevealSoftEdge * r1.xy + r0.zz);
  r0.x = r0.x + -r0.y;
  r0.y = r0.z + -r0.y;
  r0.x = saturate(r0.x / r0.y);
  r0.x = cmp(r0.x < 0.5);
  if (r0.x != 0) discard;
  r0.xyzw = colorMap.Sample(colorSampler_s, v2.xy).xyzw;
  r1.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r1.xyz = r0.www * r1.xyz + float3(1,1,1);
  r0.xyz = r1.xyz * r0.xyz;
  r0.xyz = v1.xyz * r0.xyz;
  r0.w = specColorMap.Sample(specColorSampler_s, v2.xy).x;
  r1.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + specColorTint.xyz;
  r1.xyz = r0.www * r1.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = saturate(1 + -r0.w);
  o0.xyz = r0.xyz * r0.www;
  r0.x = aoMap.Sample(aoSampler_s, v2.xy).x;
  r0.y = glossMap.Sample(specColorSampler_s, v2.xy).x;
  r0.z = glossRange.y + -glossRange.x;
  r0.y = r0.y * r0.z + glossRange.x;
  r0.y = saturate(0.0588235296 * r0.y);
  r2.xyz = normalMap.Sample(normalSampler_s, v2.xy).xyz;
  r2.xyz = float3(-0.5,-0.5,-0) + r2.xyz;
  r2.xyz = baseNormalHeight * r2.xyz + float3(0.5,0.5,0);
  r0.zw = r2.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r1.w = dot(r0.zw, r0.zw);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r2.x = r2.z * r2.z;
  r2.x = 0.333333343 * r2.x;
  r2.x = min(1, r2.x);
  r2.y = v6.x ? 1 : -1;
  r2.z = dot(v3.xyz, v3.xyz);
  r2.z = rsqrt(r2.z);
  r3.xyz = v3.xyz * r2.zzz;
  r4.xyz = r3.xyz * r2.yyy;
  r2.z = dot(v4.xyz, v4.xyz);
  r2.z = rsqrt(r2.z);
  r5.xyz = v4.xyz * r2.zzz;
  r5.xyz = r5.xyz * r2.yyy;
  r2.z = dot(v5.xyz, v5.xyz);
  r2.z = rsqrt(r2.z);
  r6.xyz = v5.xyz * r2.zzz;
  r6.xyz = r6.xyz * r2.yyy;
  r0.y = -17 * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r2.x + r0.y;
  r0.y = log2(r0.y);
  r0.y = -0.0588235296 * r0.y;
  r0.y = max(0, r0.y);
  r2.xzw = r6.xyz * r0.www;
  r2.xzw = r5.xyz * r0.zzz + r2.xzw;
  r2.xzw = r4.xyz * r1.www + r2.xzw;
  r0.z = dot(r2.xzw, r2.xzw);
  r0.z = rsqrt(r0.z);
  r5.yzw = r2.xzw * r0.zzz;
  r0.z = r4.x + r4.y;
  r0.z = r3.z * r2.y + r0.z;
  r0.z = 0.5 * r0.z;
  r2.xyz = r3.xyz * r2.yyy + -r0.zzz;
  r0.w = max(r2.y, r2.z);
  r0.w = max(r2.x, r0.w);
  r0.z = max(r0.z, r0.w);
  r0.w = cmp(r0.z == r2.x);
  r3.yzw = float3(1,-1,-1) * r5.yzw;
  r1.w = 2 + r0.z;
  r3.x = 1;
  r5.x = 0;
  r3.xyzw = r0.wwww ? r3.xyzw : r5.xyzw;
  r0.z = r0.w ? r1.w : r0.z;
  r0.w = cmp(r0.z == r2.y);
  r4.yzw = float3(-1,1,-1) * r3.yzw;
  r1.w = 2 + r0.z;
  r4.x = 2;
  r3.xyzw = r0.wwww ? r4.xyzw : r3.xyzw;
  r0.z = r0.w ? r1.w : r0.z;
  r0.z = cmp(r0.z == r2.z);
  r2.yzw = float3(-1,-1,1) * r3.yzw;
  r2.x = 3;
  r2.xyzw = r0.zzzz ? r2.xyzw : r3.xyzw;
  r0.z = r2.y + r2.z;
  r3.z = r0.z + r2.w;
  r3.y = r2.w + -r2.y;
  r3.x = -r2.z * 3 + r3.z;
  r2.yzw = float3(0.408248305,0.707106769,0.577350259) * r3.xyz;
  r0.z = 1 + abs(r2.w);
  r0.z = rsqrt(r0.z);
  r0.zw = r2.yz * r0.zz;
  o1.xy = r0.zw * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  o1.z = r0.y * 0.49755621 + 0.00146627566;
  r0.y = (uint)r2.x;
  o1.w = 0.333333343 * r0.y;
  r0.yz = (uint2)v0.xy;
  r2.y = r1.x + -r1.z;
  r0.w = r2.y * 0.5 + r1.z;
  r2.z = r1.y + -r0.w;
  r2.x = r2.z * 0.5 + r0.w;
  r0.yz = (int2)r0.yz & int2(1,1);
  r0.y = cmp((int)r0.z == (int)r0.y);
  r0.yz = r0.yy ? r2.xy : r2.xz;
  o2.xy = r0.yz * float2(1,0.5) + float2(0,0.5);
  o0.w = 1;
  o2.z = r0.x;
  o2.w = 0.333333343;
  return;
}