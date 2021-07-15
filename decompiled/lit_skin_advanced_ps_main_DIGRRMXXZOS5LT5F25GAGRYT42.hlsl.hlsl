// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:38:34 2021



// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float v1 : COLOR1,
  float2 w1 : TEXCOORD0,
  uint4 v2 : TEXCOORD4,
  float4 v3 : TEXCOORD1,
  float4 v4 : TEXCOORD2,
  float3 v5 : TEXCOORD3,
  float3 v6 : OFFPOSITION0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 1;
  r1.x = 0;
  r2.x = dot(v3.xyz, v3.xyz);
  r2.x = rsqrt(r2.x);
  r1.yzw = v3.xyz * r2.xxx;
  r2.y = r1.y + r1.z;
  r2.y = v3.z * r2.x + r2.y;
  r2.y = 0.5 * r2.y;
  r2.xzw = v3.xyz * r2.xxx + -r2.yyy;
  r3.x = max(r2.z, r2.w);
  r3.x = max(r3.x, r2.x);
  r2.y = max(r3.x, r2.y);
  r2.x = cmp(r2.y == r2.x);
  r0.yzw = float3(1,-1,-1) * r1.yzw;
  r0.xyzw = r2.xxxx ? r0.xyzw : r1.xyzw;
  r1.yzw = float3(-1,1,-1) * r0.yzw;
  r1.x = 2;
  r3.x = 2 + r2.y;
  r2.x = r2.x ? r3.x : r2.y;
  r2.y = cmp(r2.x == r2.z);
  r0.xyzw = r2.yyyy ? r1.xyzw : r0.xyzw;
  r1.yzw = float3(-1,-1,1) * r0.yzw;
  r2.z = 2 + r2.x;
  r2.x = r2.y ? r2.z : r2.x;
  r2.x = cmp(r2.x == r2.w);
  r1.x = 3;
  r0.xyzw = r2.xxxx ? r1.xyzw : r0.xyzw;
  r1.x = r0.y + r0.z;
  r1.z = r1.x + r0.w;
  r1.x = -r0.z * 3 + r1.z;
  r1.y = r0.w + -r0.y;
  r0.x = (uint)r0.x;
  o0.w = 0.333333343 * r0.x;
  r0.xyz = float3(0.408248305,0.707106769,0.577350259) * r1.xyz;
  r0.z = 1 + abs(r0.z);
  r0.z = rsqrt(r0.z);
  r0.xy = r0.xy * r0.zz;
  o0.xy = r0.xy * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  o0.z = 0;
  return;
}