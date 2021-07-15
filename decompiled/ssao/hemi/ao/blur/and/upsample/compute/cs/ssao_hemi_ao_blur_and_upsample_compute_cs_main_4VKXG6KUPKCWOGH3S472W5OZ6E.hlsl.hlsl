// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:01 2021

cbuffer SSAOGlobals : register(b5)
{

  struct
  {
    float2 invSourceDimension;
    float2 invSliceDimension;
    float4 invThicknessTable[3];
    float4 sampleWeightTable[3];
    float2 invLowResolution;
    float2 invHighResolution;
    float noiseFilterStrength;
    float stepSize;
    float blurTolerance;
    float upsampleTolerance;
    float insensitivity;
    float zClear;
    float rejectFadeoff;
    float _padding_29;
  } hemiAOGlobals : packoffset(c0);

}

SamplerState LinearSampler_s : register(s2);
Texture2D<float> codeTexture0 : register(t0);
Texture2D<float> codeTexture2 : register(t2);
Texture2D<float> codeTexture3 : register(t3);
Texture2D<float> GBufferDepth : register(t4);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main()
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_structured g0, 4, 256
// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_structured g1, 4, 256
// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_structured g2, 4, 256
// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_structured g3, 4, 256
// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.x = (uint)vThreadIDInGroup.x << 1;
  r0.x = mad((int)vThreadIDInGroup.y, 32, (int)r0.x);
  r0.yz = (int2)vThreadIDInGroup.xy + (int2)vThreadID.xy;
  r0.yz = (int2)r0.yz + int2(-2,-2);
  r0.yz = (int2)r0.yz;
  r0.yz = hemiAOGlobals.invLowResolution.xy * r0.yz;
  r1.xyzw = codeTexture2.Gather(LinearSampler_s, r0.yz).xyzw;
  r2.xyzw = codeTexture3.Gather(LinearSampler_s, r0.yz).xyzw;
  codeTexture0[r0.x].0 = g3.x;
  r0.w = (int)r0.x + 1;
  codeTexture0[r0.w].0 = g3.x;
  r2.zw = (int2)r0.xx + int2(16,17);
  codeTexture0[r2.z].0 = g3.x;
  codeTexture0[r2.w].0 = g3.x;
  codeTexture0[r0.x].0 = g1.x;
  codeTexture0[r0.w].0 = g1.x;
  codeTexture0[r2.z].0 = g1.x;
  codeTexture0[r2.w].0 = g1.x;
  r1.xyzw = codeTexture0.Gather(LinearSampler_s, r0.yz).xyzw;
  r1.xyzw = float4(1,1,1,1) / r1.xyzw;
  codeTexture0[r0.x].0 = g0.x;
  codeTexture0[r0.w].0 = g0.x;
  codeTexture0[r2.z].0 = g0.x;
  codeTexture0[r2.w].0 = g0.x;
  GroupMemoryBarrierWithGroupSync();
  r0.xy = cmp((uint2)vThreadIDInGroupFlattened.xx < int2(39,45));
  if (r0.x != 0) {
    uiDest.x = (uint)vThreadIDInGroupFlattened.x / 3;
    r1.x = (uint)vThreadIDInGroupFlattened.x % 3;
    r0.x = uiDest.x;
    r0.z = (int)r1.x * 3;
    r0.x = mad((int)r0.x, 16, (int)r0.z);
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.z, r0.x, l(0), g1.xxxx
  r0.z = LinearSampler[]..swiz;
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.w, r1.x, l(0), g1.xxxx
  r0.w = LinearSampler[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r2.x, r1.y, l(0), g1.xxxx
  r2.x = LinearSampler[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r2.y, r1.z, l(0), g1.xxxx
  r2.y = LinearSampler[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r2.z, r1.w, l(0), g1.xxxx
  r2.z = LinearSampler[]..swiz;
    r3.xy = (int2)r0.xx + int2(5,6);
  // Known bad code for instruction (needs manual fix):
    ld_structured r2.w, r3.x, l(0), g1.xxxx
  r2.w = LinearSampler[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r3.z, r3.y, l(0), g1.xxxx
  r3.z = LinearSampler[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r3.w, r0.x, l(0), g0.xxxx
  r3.w = LinearSampler[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r4.x, r1.x, l(0), g0.xxxx
  r4.x = LinearSampler[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r4.y, r1.y, l(0), g0.xxxx
  r4.y = LinearSampler[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.z, r1.z, l(0), g0.xxxx
  r1.z = LinearSampler[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.w, r1.w, l(0), g0.xxxx
  r1.w = LinearSampler[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r3.x, r3.x, l(0), g0.xxxx
  r3.x = LinearSampler[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r3.y, r3.y, l(0), g0.xxxx
  r3.y = LinearSampler[]..swiz;
    r3.w = r4.x + -r3.w;
    r4.x = r4.y + -r4.x;
    r4.y = r1.z + -r4.y;
    r1.z = r1.w + -r1.z;
    r1.w = r3.x + -r1.w;
    r3.x = r3.y + -r3.x;
    r3.y = r3.w * r3.w + hemiAOGlobals.stepSize;
    r4.z = r4.x * r4.x + hemiAOGlobals.stepSize;
    r4.w = r4.y * r4.y + hemiAOGlobals.stepSize;
    r5.x = r1.z * r1.z + hemiAOGlobals.stepSize;
    r5.y = r1.w * r1.w + hemiAOGlobals.stepSize;
    r5.z = r3.x * r3.x + hemiAOGlobals.stepSize;
    r3.w = r3.w * r4.x + hemiAOGlobals.stepSize;
    r3.w = r3.w * r3.w;
    r3.y = r4.z * r3.y;
    r3.y = hemiAOGlobals.blurTolerance * r3.y;
    r3.y = cmp(r3.y < r3.w);
    r3.w = r4.x * r4.y + hemiAOGlobals.stepSize;
    r3.w = r3.w * r3.w;
    r4.x = r4.z * r4.w;
    r4.x = hemiAOGlobals.blurTolerance * r4.x;
    r3.w = cmp(r4.x < r3.w);
    r4.x = r4.y * r1.z + hemiAOGlobals.stepSize;
    r4.x = r4.x * r4.x;
    r4.y = r5.x * r4.w;
    r4.y = hemiAOGlobals.blurTolerance * r4.y;
    r4.x = cmp(r4.y < r4.x);
    r1.z = r1.z * r1.w + hemiAOGlobals.stepSize;
    r1.z = r1.z * r1.z;
    r4.y = r5.x * r5.y;
    r4.y = hemiAOGlobals.blurTolerance * r4.y;
    r1.z = cmp(r4.y < r1.z);
    r1.w = r1.w * r3.x + hemiAOGlobals.stepSize;
    r1.w = r1.w * r1.w;
    r3.x = r5.y * r5.z;
    r3.x = hemiAOGlobals.blurTolerance * r3.x;
    r1.w = cmp(r3.x < r1.w);
    r3.x = (int)r3.w | (int)r3.y;
    r3.x = (int)r3.x & 1;
    r3.x = r3.x ? r0.w : r2.x;
    r0.z = r3.y ? r0.z : r3.x;
    r3.y = (int)r3.w | (int)r4.x;
    r3.y = r3.y ? 0.000000 : 0;
    r5.x = (int)r3.y ? r2.x : r2.y; r6.x = (int)r3.y ? r2.y : r2.x;
    r3.y = r4.x ? r2.z : r6.x;
    r0.z = r3.y + r0.z;
    r0.z = r0.z * 0.5 + r3.x;
    r0.z = r0.z + r2.x;
    r0.z = r0.z + r6.x;
    r0.z = 0.25 * r0.z;
    codeTexture0[r0.x].0 = g2.x;
    r0.z = r3.w ? r0.w : r5.x;
    r0.w = (int)r4.x | (int)r1.z;
    r0.w = (int)r0.w & 1;
    r3.x = (int)r0.w ? r2.y : r2.z; r6.x = (int)r0.w ? r2.z : r2.y;
    r0.w = r1.z ? r2.w : r6.x;
    r0.z = r0.z + r0.w;
    r0.z = r0.z * 0.5 + r5.x;
    r0.z = r0.z + r2.y;
    r0.z = r0.z + r6.x;
    r0.z = 0.25 * r0.z;
    codeTexture0[r1.x].0 = g2.x;
    r0.z = r4.x ? r2.x : r3.x;
    r0.w = (int)r1.z | (int)r1.w;
    r0.w = (int)r0.w & 1;
    r0.w = r0.w ? r2.w : r2.z;
    r1.x = r1.w ? r3.z : r0.w;
    r0.z = r1.x + r0.z;
    r0.z = r0.z * 0.5 + r3.x;
    r0.z = r0.z + r2.z;
    r0.z = r0.z + r0.w;
    r0.z = 0.25 * r0.z;
    codeTexture0[r1.y].0 = g2.x;
  }
  GroupMemoryBarrierWithGroupSync();
  if (r0.y != 0) {
    uiDest.x = (uint)vThreadIDInGroupFlattened.x / 9;
    r1.x = (uint)vThreadIDInGroupFlattened.x % 9;
    r0.x = uiDest.x;
    r0.x = mad((int)r0.x, 32, (int)r1.x);
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.y, r0.x, l(0), g2.xxxx
  r0.y = LinearSampler[]..swiz;
    r0.z = (int)r0.x + 16;
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.w, r0.z, l(0), g2.xxxx
  r0.w = LinearSampler[]..swiz;
    r1.xyzw = (int4)r0.xxxx + int4(32,48,64,80);
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.x, r1.x, l(0), g2.xxxx
  r1.x = LinearSampler[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.y, r1.y, l(0), g2.xxxx
  r1.y = LinearSampler[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.z, r1.z, l(0), g2.xxxx
  r1.z = LinearSampler[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.w, r1.w, l(0), g2.xxxx
  r1.w = LinearSampler[]..swiz;
    r2.xyzw = (int4)r0.xxxx + int4(2,18,34,50);
  // Known bad code for instruction (needs manual fix):
    ld_structured r2.x, r2.x, l(0), g0.xxxx
  r2.x = LinearSampler[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r2.y, r2.y, l(0), g0.xxxx
  r2.y = LinearSampler[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r3.x, r2.z, l(0), g0.xxxx
  r3.x = LinearSampler[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r3.y, r2.w, l(0), g0.xxxx
  r3.y = LinearSampler[]..swiz;
    r3.zw = (int2)r0.xx + int2(66,82);
  // Known bad code for instruction (needs manual fix):
    ld_structured r3.z, r3.z, l(0), g0.xxxx
  r3.z = LinearSampler[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r3.w, r3.w, l(0), g0.xxxx
  r3.w = LinearSampler[]..swiz;
    r2.x = r2.y + -r2.x;
    r2.y = r3.x + -r2.y;
    r3.x = r3.y + -r3.x;
    r3.y = r3.z + -r3.y;
    r3.z = r3.w + -r3.z;
    r3.w = r2.x * r2.x + hemiAOGlobals.stepSize;
    r4.x = r2.y * r2.y + hemiAOGlobals.stepSize;
    r4.y = r3.x * r3.x + hemiAOGlobals.stepSize;
    r4.z = r3.y * r3.y + hemiAOGlobals.stepSize;
    r4.w = r3.z * r3.z + hemiAOGlobals.stepSize;
    r2.x = r2.x * r2.y + hemiAOGlobals.stepSize;
    r2.x = r2.x * r2.x;
    r3.w = r4.x * r3.w;
    r3.w = hemiAOGlobals.blurTolerance * r3.w;
    r2.x = cmp(r3.w < r2.x);
    r2.y = r2.y * r3.x + hemiAOGlobals.stepSize;
    r2.y = r2.y * r2.y;
    r3.w = r4.x * r4.y;
    r3.w = hemiAOGlobals.blurTolerance * r3.w;
    r2.y = cmp(r3.w < r2.y);
    r3.x = r3.x * r3.y + hemiAOGlobals.stepSize;
    r3.x = r3.x * r3.x;
    r3.w = r4.y * r4.z;
    r3.w = hemiAOGlobals.blurTolerance * r3.w;
    r3.y = r3.y * r3.z + hemiAOGlobals.stepSize;
    r3.y = r3.y * r3.y;
    r3.z = r4.z * r4.w;
    r3.z = hemiAOGlobals.blurTolerance * r3.z;
    r3.xy = cmp(r3.wz < r3.xy);
    r3.z = (int)r2.y | (int)r2.x;
    r3.z = (int)r3.z & 1;
    r3.z = r3.z ? r0.w : r1.x;
    r0.y = r2.x ? r0.y : r3.z;
    r2.x = (int)r2.y | (int)r3.x;
    r2.x = r2.x ? 0.000000 : 0;
    r2.x = (int)r2.x ? r1.x : r1.y; r4.x = (int)r2.x ? r1.y : r1.x;
    r3.w = r3.x ? r1.z : r4.x;
    r0.y = r3.w + r0.y;
    r0.y = r0.y * 0.5 + r3.z;
    r0.y = r0.y + r1.x;
    r0.y = r0.y + r4.x;
    r0.w = r2.y ? r0.w : r2.x;
    r1.x = (int)r3.x | (int)r3.y;
    r1.x = (int)r1.x & 1;
    r1.x = r1.x ? r1.z : r1.y;
    r1.z = r3.y ? r1.w : r1.x;
    r0.w = r1.z + r0.w;
    r0.w = r0.w * 0.5 + r2.x;
    r0.w = r0.w + r1.y;
    r0.w = r0.w + r1.x;
    r0.yw = float2(0.25,0.25) * r0.yw;
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.x, r2.z, l(0), g3.xxxx
  r1.x = LinearSampler[]..swiz;
    r0.y = r1.x * r0.y;
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.x, r2.w, l(0), g3.xxxx
  r1.x = LinearSampler[]..swiz;
    r0.w = r1.x * r0.w;
    codeTexture0[r0.x].0 = g1.x;
    codeTexture0[r0.z].0 = g1.x;
  }
  GroupMemoryBarrierWithGroupSync();
  r0.x = mad((int)vThreadIDInGroup.y, 16, (int)vThreadIDInGroup.x);
  r0.yzw = (int3)r0.xxx + int3(16,17,1);
// Known bad code for instruction (needs manual fix):
ld_structured r1.y, r0.y, l(0), g1.xxxx
r1.y = LinearSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured r1.z, r0.z, l(0), g1.xxxx
r1.z = LinearSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured r1.w, r0.w, l(0), g1.xxxx
r1.w = LinearSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured r1.x, r0.x, l(0), g1.xxxx
r1.x = LinearSampler[]..swiz;
  r0.xy = (uint2)vThreadID.xy;
  r2.xyzw = (uint4)vThreadID.xyyy << int4(1,1,1,1);
  r0.zw = (uint2)r2.xw;
  r0.xyzw = hemiAOGlobals.invLowResolution.xyzw * r0.xyzw;
  r3.xyzw = GBufferDepth.Gather(LinearSampler_s, r0.zw).xyzw;
  r4.xyzw = cmp(r3.xyzw >= float4(0.984375,0.984375,0.984375,0.984375));
  r0.zw = float2(1.01587307,1.01587307) * r3.xy;
  r3.xy = r3.xy * float2(64,64) + float2(-63,-63);
  r0.zw = r4.xy ? r3.xy : r0.zw;
  r0.zw = max(float2(9.99999994e-09,9.99999994e-09), r0.zw);
  r0.zw = rcp(r0.zw);
  r0.zw = min(float2(65504,65504), r0.zw);
  r3.xy = float2(1.01587307,1.01587307) * r3.zw;
  r3.zw = r3.zw * float2(64,64) + float2(-63,-63);
  r3.xy = r4.zw ? r3.zw : r3.xy;
  r3.xy = max(float2(9.99999994e-09,9.99999994e-09), r3.xy);
  r3.xy = rcp(r3.xy);
  r3.xy = min(float2(65504,65504), r3.xy);
  r4.xyzw = codeTexture0.Gather(LinearSampler_s, r0.xy).xyzw;
  r5.xyzw = -r4.xyzw + r0.zzzz;
  r5.xyzw = hemiAOGlobals.upsampleTolerance + abs(r5.xyzw);
  r5.xyzw = float4(9,3,1,3) / r5.xyzw;
  r0.x = dot(r5.xyzw, float4(1,1,1,1));
  r0.y = dot(r1.yzwx, r5.xyzw);
  r0.xy = hemiAOGlobals.noiseFilterStrength + r0.xy;
  r0.x = r0.y / r0.x;
  r5.xyzw = -r4.yzwx + r0.wwww;
  r5.xyzw = hemiAOGlobals.upsampleTolerance + abs(r5.xyzw);
  r5.xyzw = float4(9,3,1,3) / r5.xyzw;
  r0.y = dot(r5.xyzw, float4(1,1,1,1));
  r0.z = dot(r1.zwxy, r5.xyzw);
  r0.yz = hemiAOGlobals.noiseFilterStrength + r0.yz;
  r0.y = r0.z / r0.y;
  r5.xyzw = -r4.zwxy + r3.xxxx;
  r5.xyzw = hemiAOGlobals.upsampleTolerance + abs(r5.xyzw);
  r5.xyzw = float4(9,3,1,3) / r5.xyzw;
  r0.z = dot(r5.xyzw, float4(1,1,1,1));
  r0.w = dot(r1.wxyz, r5.xyzw);
  r0.zw = hemiAOGlobals.noiseFilterStrength + r0.zw;
  r0.z = r0.w / r0.z;
  r3.xyzw = -r4.wxyz + r3.yyyy;
  r3.xyzw = hemiAOGlobals.upsampleTolerance + abs(r3.xyzw);
  r3.xyzw = float4(9,3,1,3) / r3.xyzw;
  r0.w = dot(r3.xyzw, float4(1,1,1,1));
  r0.w = hemiAOGlobals.noiseFilterStrength + r0.w;
  r1.x = dot(r1.xyzw, r3.xyzw);
  r1.x = hemiAOGlobals.noiseFilterStrength + r1.x;
  r0.w = r1.x / r0.w;
  r1.xyzw = (int4)r2.xwxw + int4(-1,0,0,-1);
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xyyy, r0.xxxx
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r2.xwww, r0.yyyy
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.zwww, r0.zzzz
  r1.xyzw = (int4)r2.xyzw + int4(-1,-1,-1,-1);
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xyzw, r0.wwww
  return;
}