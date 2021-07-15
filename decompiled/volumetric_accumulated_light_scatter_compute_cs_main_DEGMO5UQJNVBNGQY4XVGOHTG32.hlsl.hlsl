// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:53 2021

SamplerState volumeLightSamplerState_s : register(s1);
Texture3D<float3> codeTexture0 : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main()
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture3d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = vThreadID.xy;
  r0.w = 0;
  r1.xyz = codeTexture0.Load(r0.xyww).xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xyww, r1.xyzx
  r2.xyz = uiDest.xyz;
// Unknown use of GetDimensions for resinfo_ from missing reflection info, need manual fix.
// resinfo_indexable(texture3d)(float,float,float,float)_uint r2.xyz, l(0), t0.xyzw
// Example for texture2d type, uint return:
tx.GetDimensions(0, uiDest.x, uiDest.y, uiDest.z);
rx = uiDest;
 state=1, constZero.eType=4, returnType=2, texture.eType=7, afImmediates[0]=0.000000
  r2.xyz = (uint3)r2.xyz;
  r2.xyz = float3(1,1,1) / r2.xyz;
  r3.xyz = float3(0.5,0.5,0.5) * r2.xyz;
  r4.x = 1.5 * r2.x;
  r4.yz = float2(0,0);
  r5.x = -1.5 * r2.x;
  r5.yz = float2(0,0);
  r2.w = 1.5;
  r6.xyw = r0.xyw;
  r7.xyw = r6.xyw;
  r8.xyz = r1.xyz;
  r0.z = 0;
  while (true) {
    r1.w = cmp((uint)r0.z >= 128);
    if (r1.w != 0) break;
    r9.xyz = codeTexture0.Load(r0.xyzw).xyz;
    r10.xyz = (uint3)r0.xyz;
    r10.xyz = r10.xyz * r2.xyz + r3.xyz;
    r11.xyz = r10.xyz + r4.xzz;
    r11.xyz = codeTexture0.SampleLevel(volumeLightSamplerState_s, r11.xyz, 0).xyz;
    r9.xyz = r9.xyz * float3(2,2,2) + r11.xyz;
    r11.xyz = r10.xyz + r5.xzz;
    r11.xyz = codeTexture0.SampleLevel(volumeLightSamplerState_s, r11.xyz, 0).xyz;
    r9.xyz = r11.xyz + r9.xyz;
    r11.xyz = float3(0,1.5,0) * r2.wyw + r10.xyz;
    r11.xyz = codeTexture0.SampleLevel(volumeLightSamplerState_s, r11.xyz, 0).xyz;
    r9.xyz = r11.xyz + r9.xyz;
    r10.xyz = float3(0,-1.5,0) * r2.wyw + r10.xyz;
    r10.xyz = codeTexture0.SampleLevel(volumeLightSamplerState_s, r10.xyz, 0).xyz;
    r9.xyz = r10.xyz + r9.xyz;
    r9.xyz = r9.xyz * float3(0.166666672,0.166666672,0.166666672) + r8.xyz;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xyzz, r9.xyzx
    r6.z = (int)r0.z + 1;
    r10.xyz = codeTexture0.Load(r6.xyzw).xyz;
    r11.xyz = (uint3)r6.xyz;
    r11.xyz = r11.xyz * r2.xyz + r3.xyz;
    r12.xyz = r11.xyz + r4.xzz;
    r12.xyz = codeTexture0.SampleLevel(volumeLightSamplerState_s, r12.xyz, 0).xyz;
    r10.xyz = r10.xyz * float3(2,2,2) + r12.xyz;
    r12.xyz = r11.xyz + r5.xzz;
    r12.xyz = codeTexture0.SampleLevel(volumeLightSamplerState_s, r12.xyz, 0).xyz;
    r10.xyz = r12.xyz + r10.xyz;
    r12.xyz = float3(0,1.5,0) * r2.wyw + r11.xyz;
    r12.xyz = codeTexture0.SampleLevel(volumeLightSamplerState_s, r12.xyz, 0).xyz;
    r10.xyz = r12.xyz + r10.xyz;
    r11.xyz = float3(0,-1.5,0) * r2.wyw + r11.xyz;
    r11.xyz = codeTexture0.SampleLevel(volumeLightSamplerState_s, r11.xyz, 0).xyz;
    r10.xyz = r11.xyz + r10.xyz;
    r9.xyz = r10.xyz * float3(0.166666672,0.166666672,0.166666672) + r9.xyz;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r6.xyzz, r9.xyzx
    r7.z = (int)r6.z + 1;
    r10.xyz = codeTexture0.Load(r7.xyzw).xyz;
    r11.xyz = (uint3)r7.xyz;
    r11.xyz = r11.xyz * r2.xyz + r3.xyz;
    r12.xyz = r11.xyz + r4.xzz;
    r12.xyz = codeTexture0.SampleLevel(volumeLightSamplerState_s, r12.xyz, 0).xyz;
    r10.xyz = r10.xyz * float3(2,2,2) + r12.xyz;
    r12.xyz = r11.xyz + r5.xzz;
    r12.xyz = codeTexture0.SampleLevel(volumeLightSamplerState_s, r12.xyz, 0).xyz;
    r10.xyz = r12.xyz + r10.xyz;
    r12.xyz = float3(0,1.5,0) * r2.wyw + r11.xyz;
    r12.xyz = codeTexture0.SampleLevel(volumeLightSamplerState_s, r12.xyz, 0).xyz;
    r10.xyz = r12.xyz + r10.xyz;
    r11.xyz = float3(0,-1.5,0) * r2.wyw + r11.xyz;
    r11.xyz = codeTexture0.SampleLevel(volumeLightSamplerState_s, r11.xyz, 0).xyz;
    r10.xyz = r11.xyz + r10.xyz;
    r9.xyz = r10.xyz * float3(0.166666672,0.166666672,0.166666672) + r9.xyz;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r7.xyzz, r9.xyzx
    r7.z = (int)r7.z | 3;
    r10.xyz = codeTexture0.Load(r7.xyzw).xyz;
    r11.xyz = (uint3)r7.xyz;
    r11.xyz = r11.xyz * r2.xyz + r3.xyz;
    r12.xyz = r11.xyz + r4.xyz;
    r12.xyz = codeTexture0.SampleLevel(volumeLightSamplerState_s, r12.xyz, 0).xyz;
    r10.xyz = r10.xyz * float3(2,2,2) + r12.xyz;
    r12.xyz = r11.xyz + r5.xyz;
    r12.xyz = codeTexture0.SampleLevel(volumeLightSamplerState_s, r12.xyz, 0).xyz;
    r10.xyz = r12.xyz + r10.xyz;
    r12.xyz = float3(0,1.5,0) * r2.wyw + r11.xyz;
    r12.xyz = codeTexture0.SampleLevel(volumeLightSamplerState_s, r12.xyz, 0).xyz;
    r10.xyz = r12.xyz + r10.xyz;
    r11.xyz = float3(0,-1.5,0) * r2.wyw + r11.xyz;
    r11.xyz = codeTexture0.SampleLevel(volumeLightSamplerState_s, r11.xyz, 0).xyz;
    r10.xyz = r11.xyz + r10.xyz;
    r8.xyz = r10.xyz * float3(0.166666672,0.166666672,0.166666672) + r9.xyz;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r7.xyzz, r8.xyzx
    r0.z = (int)r7.z + 1;
  }
  return;
}