// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:28 2021

SamplerState bilinearClamp_s : register(s0);
Texture2D<float4> codeTexture0 : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float3 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = float4(0.0344827585,0.0344827585,0.0163934417,0.0163934417) * v0.xyxy;
  r1.xyzw = frac(r0.xyzw);
  r1.xyzw = r1.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r1.x = dot(r1.xy, r1.xy);
  r1.y = dot(r1.zw, r1.zw);
  r1.xy = sqrt(r1.xy);
  r2.x = ddx_coarse(r1.x);
  r2.y = ddy_coarse(r1.x);
  r1.z = dot(r2.xy, r2.xy);
  r1.z = sqrt(r1.z);
  r1.w = r1.z * 0.75 + 1;
  r1.z = -r1.z * 0.75 + 1;
  r1.xw = r1.xw + -r1.zz;
  r1.z = 1 / r1.w;
  r1.x = saturate(r1.x * r1.z);
  r1.z = r1.x * -2 + 3;
  r1.x = r1.x * r1.x;
  r1.x = -r1.z * r1.x + 1;
  r2.xyzw = cmp(r0.xyzw >= -r0.xyzw);
  r0.xyzw = frac(abs(r0.xyzw));
  r0.xyzw = r2.xyzw ? r0.xyzw : -r0.xyzw;
  r0.xyzw = -r0.xyzw * float4(29,29,61,61) + v0.xyxy;
  r0.xyzw = float4(14.5,14.5,30.5,30.5) + r0.xyzw;
  r0.xyzw = (int4)r0.zwxy;
  r2.xy = r0.zw;
  r2.zw = float2(0,0);
  r2.xyz = codeTexture0.Load(r2.xyz).xyz;
  r2.xyz = float3(-32768,-32768,-32768) + r2.xyz;
  r1.xzw = r1.xxx * r2.xyz + float3(32768,32768,32768);
  r1.xzw = min(float3(32768,32768,32768), r1.xzw);
  r2.x = ddx_coarse(r1.y);
  r2.y = ddy_coarse(r1.y);
  r2.x = dot(r2.xy, r2.xy);
  r2.x = sqrt(r2.x);
  r2.y = -r2.x * 0.75 + 1;
  r2.x = r2.x * 0.75 + 1;
  r2.x = r2.x + -r2.y;
  r1.y = -r2.y + r1.y;
  r2.x = 1 / r2.x;
  r1.y = saturate(r2.x * r1.y);
  r2.x = r1.y * -2 + 3;
  r1.y = r1.y * r1.y;
  r1.y = -r2.x * r1.y + 1;
  r0.zw = float2(0,0);
  r0.xyz = codeTexture0.Load(r0.xyz).xyz;
  r0.xyz = float3(-32768,-32768,-32768) + r0.xyz;
  r0.xyz = r1.yyy * r0.xyz + float3(32768,32768,32768);
  r0.xyz = min(r1.xzw, r0.xyz);
  r1.xyzw = float4(0.0212765951,0.0212765951,0.0909090936,0.0909090936) * v0.xyxy;
  r2.xyzw = frac(r1.xyzw);
  r2.xyzw = r2.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r0.w = dot(r2.xy, r2.xy);
  r2.x = dot(r2.zw, r2.zw);
  r0.w = sqrt(r0.w);
  r3.x = ddx_coarse(r0.w);
  r3.y = ddy_coarse(r0.w);
  r2.y = dot(r3.xy, r3.xy);
  r2.xy = sqrt(r2.xy);
  r2.z = r2.y * 0.75 + 1;
  r2.y = -r2.y * 0.75 + 1;
  r2.z = r2.z + -r2.y;
  r0.w = -r2.y + r0.w;
  r2.y = 1 / r2.z;
  r0.w = saturate(r2.y * r0.w);
  r2.y = r0.w * -2 + 3;
  r0.w = r0.w * r0.w;
  r0.w = -r2.y * r0.w + 1;
  r3.xyzw = cmp(r1.xyzw >= -r1.xyzw);
  r1.xyzw = frac(abs(r1.xyzw));
  r1.xyzw = r3.xyzw ? r1.xyzw : -r1.xyzw;
  r1.xyzw = -r1.xyzw * float4(47,47,11,11) + v0.xyxy;
  r1.xyzw = float4(23.5,23.5,5.5,5.5) + r1.xyzw;
  r1.xyzw = (int4)r1.zwxy;
  r3.xy = r1.zw;
  r3.zw = float2(0,0);
  r2.yzw = codeTexture0.Load(r3.xyz).xyz;
  r2.yzw = float3(-32768,-32768,-32768) + r2.yzw;
  r2.yzw = r0.www * r2.yzw + float3(32768,32768,32768);
  r0.xyz = min(r2.yzw, r0.xyz);
  r3.x = ddx_coarse(r2.x);
  r3.y = ddy_coarse(r2.x);
  r0.w = dot(r3.xy, r3.xy);
  r0.w = sqrt(r0.w);
  r2.y = -r0.w * 0.75 + 1;
  r0.w = r0.w * 0.75 + 1;
  r0.w = r0.w + -r2.y;
  r2.x = r2.x + -r2.y;
  r0.w = 1 / r0.w;
  r0.w = saturate(r2.x * r0.w);
  r2.x = r0.w * -2 + 3;
  r0.w = r0.w * r0.w;
  r0.w = -r2.x * r0.w + 1;
  r1.zw = float2(0,0);
  r1.xyz = codeTexture0.Load(r1.xyz).xyz;
  r1.xyz = float3(-32768,-32768,-32768) + r1.xyz;
  r1.xyz = r0.www * r1.xyz + float3(32768,32768,32768);
  r0.xyz = min(r1.xyz, r0.xyz);
  r0.xyz = float3(3.05175781e-05,3.05175781e-05,3.05175781e-05) * r0.xyz;
  r1.xyz = codeTexture0.Sample(bilinearClamp_s, v1.xy, int2(0, 0)).xyz;
  r0.w = dot(r1.xyz, float3(6.48803689e-06,2.18261721e-05,2.20336915e-06));
  r1.xyz = codeTexture0.Sample(bilinearClamp_s, v1.xy, int2(0, 0)).xyz;
  r1.x = dot(r1.xyz, float3(6.48803689e-06,2.18261721e-05,2.20336915e-06));
  r1.yzw = codeTexture0.Sample(bilinearClamp_s, v1.xy, int2(0, 0)).xyz;
  r1.y = dot(r1.yzw, float3(6.48803689e-06,2.18261721e-05,2.20336915e-06));
  r1.x = r1.x * 2 + r1.y;
  r2.xyz = codeTexture0.Sample(bilinearClamp_s, v1.xy, int2(0, 0)).xyz;
  r1.z = dot(r2.xyz, float3(6.48803689e-06,2.18261721e-05,2.20336915e-06));
  r1.x = r1.x + r1.z;
  r1.y = -r1.y + r1.z;
  r2.xyz = codeTexture0.Sample(bilinearClamp_s, v1.xy, int2(0, 0)).xyz;
  r1.z = dot(r2.xyz, float3(6.48803689e-06,2.18261721e-05,2.20336915e-06));
  r1.x = r1.x + -r1.z;
  r0.w = r0.w * -2 + r1.x;
  r2.xyz = codeTexture0.Sample(bilinearClamp_s, v1.xy, int2(0, 0)).xyz;
  r1.x = dot(r2.xyz, float3(6.48803689e-06,2.18261721e-05,2.20336915e-06));
  r0.w = -r1.x + r0.w;
  r0.w = r0.w * r0.w;
  r2.xyz = codeTexture0.Sample(bilinearClamp_s, v1.xy, int2(0, 0)).xyz;
  r1.w = dot(r2.xyz, float3(6.48803689e-06,2.18261721e-05,2.20336915e-06));
  r1.y = r1.w * -2 + r1.y;
  r2.xyz = codeTexture0.Sample(bilinearClamp_s, v1.xy, int2(0, 0)).xyz;
  r1.w = dot(r2.xyz, float3(6.48803689e-06,2.18261721e-05,2.20336915e-06));
  r1.y = r1.w * 2 + r1.y;
  r1.y = r1.y + -r1.z;
  r1.x = r1.y + r1.x;
  r0.w = r1.x * r1.x + r0.w;
  r0.xyzw = sqrt(r0.xyzw);
  r0.w = -0.125 + r0.w;
  r0.w = saturate(8 * r0.w);
  r1.x = r0.w * -2 + 3;
  r0.w = r0.w * r0.w;
  r0.w = -r1.x * r0.w + 1;
  r0.w = sqrt(r0.w);
  o0.xyz = r0.xyz * r0.www;
  return;
}