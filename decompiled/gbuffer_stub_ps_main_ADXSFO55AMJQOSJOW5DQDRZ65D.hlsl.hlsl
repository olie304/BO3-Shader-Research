// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:31:34 2021

SamplerState colorSampler_s : register(s1);
Texture2D<float4> colorMap : register(t0);


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

  r0.x = colorMap.Sample(colorSampler_s, v2.xy).x;
  r0.y = cmp(r0.x < 0.5);
  if (r0.y != 0) discard;
  r0.y = dot(v3.xyz, v3.xyz);
  r0.y = rsqrt(r0.y);
  r1.yzw = v3.xyz * r0.yyy;
  r0.z = r1.y + r1.z;
  r0.z = v3.z * r0.y + r0.z;
  r0.z = 0.5 * r0.z;
  r2.xyz = v3.xyz * r0.yyy + -r0.zzz;
  r0.y = max(r2.y, r2.z);
  r0.y = max(r2.x, r0.y);
  r0.y = max(r0.z, r0.y);
  r0.z = cmp(r0.y == r2.x);
  r3.yzw = float3(1,-1,-1) * r1.yzw;
  r0.w = 2 + r0.y;
  r3.x = 1;
  r1.x = 0;
  r1.xyzw = r0.zzzz ? r3.xyzw : r1.xyzw;
  r0.y = r0.z ? r0.w : r0.y;
  r0.z = cmp(r0.y == r2.y);
  r3.yzw = float3(-1,1,-1) * r1.yzw;
  r0.w = 2 + r0.y;
  r3.x = 2;
  r1.xyzw = r0.zzzz ? r3.xyzw : r1.xyzw;
  r0.y = r0.z ? r0.w : r0.y;
  r0.y = cmp(r0.y == r2.z);
  r2.yzw = float3(-1,-1,1) * r1.yzw;
  r2.x = 3;
  r1.xyzw = r0.yyyy ? r2.xyzw : r1.xyzw;
  r0.y = r1.y + r1.z;
  r2.z = r0.y + r1.w;
  r2.y = r1.w + -r1.y;
  r2.x = -r1.z * 3 + r2.z;
  r0.yzw = float3(0.408248305,0.707106769,0.577350259) * r2.xyz;
  r0.w = 1 + abs(r0.w);
  r0.w = rsqrt(r0.w);
  r0.yz = r0.yz * r0.ww;
  o1.xy = r0.yz * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  r0.y = (uint)r1.x;
  o1.w = 0.333333343 * r0.y;
  o0.xyz = r0.xxx;
  o0.w = 1;
  o1.z = 0.499022484;
  o2.xyzw = float4(0.0399999991,0.5,1,0.333333343);
  return;
}