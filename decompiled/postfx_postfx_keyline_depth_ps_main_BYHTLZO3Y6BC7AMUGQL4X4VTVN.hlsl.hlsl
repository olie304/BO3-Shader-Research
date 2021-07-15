// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:16 2021

Texture2D<float4> floatZSampler : register(t0);
Texture2D<float4> codeTexture0 : register(t6);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = (int2)v0.xy;
  r0.zw = float2(0,0);
  r1.x = floatZSampler.Load(r0.xyw).x;
  r1.y = cmp(0.984375 < r1.x);
  if (r1.y != 0) {
    o0.xyzw = float4(0,0,0,1);
    return;
  }
  r1.y = codeTexture0.Load(r0.xyw, int3(0, 0, 0)).x;
  r1.z = codeTexture0.Load(r0.xyw, int3(0, 0, 0)).x;
  r1.w = codeTexture0.Load(r0.xyw, int3(0, 0, 0)).x;
  r2.x = codeTexture0.Load(r0.xyw, int3(0, 0, 0)).x;
  r2.y = codeTexture0.Load(r0.xyw, int3(0, 0, 0)).x;
  r2.z = codeTexture0.Load(r0.xyw, int3(0, 0, 0)).x;
  r2.w = codeTexture0.Load(r0.xyw, int3(0, 0, 0)).x;
  r3.x = codeTexture0.Load(r0.xyw, int3(0, 0, 0)).x;
  r0.x = codeTexture0.Load(r0.xyz, int3(0, 0, 0)).x;
  r0.y = max(r1.z, r1.w);
  r0.y = max(r1.y, r0.y);
  r0.z = max(r2.y, r2.z);
  r0.w = max(r3.x, r0.x);
  r0.zw = max(r2.xw, r0.zw);
  r0.z = max(r0.z, r0.w);
  r0.y = max(r0.y, r0.z);
  r0.z = cmp(0 < r0.y);
  r0.y = cmp(r0.y < r1.x);
  r0.y = r0.y ? r0.z : 0;
  if (r0.y != 0) {
    o0.xyzw = float4(0,0,0,1);
    return;
  }
  r0.y = r2.x * -2 + -r1.y;
  r0.y = r0.y + -r2.w;
  r0.y = r0.y + r1.w;
  r0.y = r2.z * 2 + r0.y;
  r0.y = r0.y + r0.x;
  r0.z = r1.z * -2 + -r1.y;
  r0.z = r0.z + -r1.w;
  r0.z = r0.z + r2.w;
  r0.z = r3.x * 2 + r0.z;
  r0.x = r0.z + r0.x;
  r0.x = r0.x * r0.x;
  r0.x = r0.y * r0.y + r0.x;
  r0.z = sqrt(r0.x);
  r0.w = 1 + r0.z;
  r0.xy = r0.zw * r0.zz;
  o0.xyz = float3(131072,131072,131072) * r0.xzy;
  o0.w = 1;
  return;
}