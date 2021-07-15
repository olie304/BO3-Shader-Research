// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:03 2021

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


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main()
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_structured g0, 4, 1024
// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 16, 16, 1
  r0.xy = (int2)vThreadIDInGroup.xy + (int2)vThreadID.xy;
  r0.xy = (int2)r0.xy + int2(-7,-7);
  r0.xy = (uint2)r0.xy;
  r0.xy = hemiAOGlobals.invSliceDimension.xy * r0.xy;
  r0.xyzw = codeTexture0.Gather(LinearSampler_s, r0.xy).xyzw;
  r1.x = (uint)vThreadIDInGroup.x << 1;
  r1.x = mad((int)vThreadIDInGroup.y, 64, (int)r1.x);
  codeTexture0[r1.x].0 = g0.x;
  r0.w = (int)r1.x + 1;
  codeTexture0[r0.w].0 = g0.x;
  r0.zw = (int2)r1.xx + int2(32,33);
  codeTexture0[r0.z].0 = g0.x;
  codeTexture0[r0.w].0 = g0.x;
  GroupMemoryBarrierWithGroupSync();
  r0.x = mad((int)vThreadIDInGroup.y, 32, (int)vThreadIDInGroup.x);
  r1.xyzw = (int4)r0.xxxx + int4(256,264,268,260);
// Known bad code for instruction (needs manual fix):
ld_structured r0.y, r1.w, l(0), g0.xxxx
r0.y = LinearSampler[]..swiz;
  r0.zw = hemiAOGlobals.insensitivity * hemiAOGlobals.invThicknessTable[0].yw;
// Known bad code for instruction (needs manual fix):
ld_structured r1.y, r1.y, l(0), g0.xxxx
r1.y = LinearSampler[]..swiz;
  r1.y = 1 / r1.y;
  r0.zw = r1.yy * r0.zw;
  r1.w = 0.5 * hemiAOGlobals.insensitivity;
  r2.xy = hemiAOGlobals.invThicknessTable[0].yw * hemiAOGlobals.insensitivity + -r1.ww;
  r0.y = r0.y * r0.z + -r2.x;
  r2.z = -hemiAOGlobals.rejectFadeoff * r0.y;
// Known bad code for instruction (needs manual fix):
ld_structured r1.z, r1.z, l(0), g0.xxxx
r1.z = LinearSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured r1.x, r1.x, l(0), g0.xxxx
r1.x = LinearSampler[]..swiz;
  r1.x = r1.x * r0.w + -r2.y;
  r1.z = r1.z * r0.z + -r2.x;
  r2.z = saturate(max(r1.z, r2.z));
  r1.z = -hemiAOGlobals.rejectFadeoff * r1.z;
  r0.y = saturate(max(r1.z, r0.y));
  r0.y = r2.z + r0.y;
  r3.xyzw = (int4)r0.xxxx + int4(392,136,272,520);
// Known bad code for instruction (needs manual fix):
ld_structured r1.z, r3.y, l(0), g0.xxxx
r1.z = LinearSampler[]..swiz;
  r1.z = r1.z * r0.z + -r2.x;
  r2.z = -hemiAOGlobals.rejectFadeoff * r1.z;
// Known bad code for instruction (needs manual fix):
ld_structured r2.w, r3.x, l(0), g0.xxxx
r2.w = LinearSampler[]..swiz;
  r0.z = r2.w * r0.z + -r2.x;
  r2.x = saturate(max(r0.z, r2.z));
  r0.z = -hemiAOGlobals.rejectFadeoff * r0.z;
  r0.z = saturate(max(r1.z, r0.z));
  r0.z = r2.x + r0.z;
  r0.y = r0.y + r0.z;
  r4.xyzw = (int4)r0.xxxx + int4(8,326,202,330);
// Known bad code for instruction (needs manual fix):
ld_structured r0.z, r4.x, l(0), g0.xxxx
r0.z = LinearSampler[]..swiz;
  r0.z = r0.z * r0.w + -r2.y;
  r1.z = -hemiAOGlobals.rejectFadeoff * r0.z;
// Known bad code for instruction (needs manual fix):
ld_structured r2.x, r3.w, l(0), g0.xxxx
r2.x = LinearSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured r2.z, r3.z, l(0), g0.xxxx
r2.z = LinearSampler[]..swiz;
  r2.z = r2.z * r0.w + -r2.y;
  r0.w = r2.x * r0.w + -r2.y;
  r1.z = saturate(max(r0.w, r1.z));
  r0.w = -hemiAOGlobals.rejectFadeoff * r0.w;
  r0.z = saturate(max(r0.z, r0.w));
  r0.z = r1.z + r0.z;
  r0.w = -hemiAOGlobals.rejectFadeoff * r1.x;
  r0.w = saturate(max(r2.z, r0.w));
  r1.z = -hemiAOGlobals.rejectFadeoff * r2.z;
  r1.x = saturate(max(r1.x, r1.z));
  r0.w = r1.x + r0.w;
  r0.z = r0.w + r0.z;
  r0.yz = hemiAOGlobals.sampleWeightTable[0].yw * r0.yz;
  r0.z = 0.5 * r0.z;
  r0.y = r0.y * 0.5 + r0.z;
// Known bad code for instruction (needs manual fix):
ld_structured r0.z, r4.z, l(0), g0.xxxx
r0.z = LinearSampler[]..swiz;
  r1.xz = hemiAOGlobals.insensitivity * hemiAOGlobals.invThicknessTable[1].xz;
  r1.xz = r1.xz * r1.yy;
  r2.xy = hemiAOGlobals.invThicknessTable[1].xz * hemiAOGlobals.insensitivity + -r1.ww;
  r2.zw = hemiAOGlobals.invThicknessTable[2].xw * hemiAOGlobals.insensitivity + -r1.ww;
  r0.z = r0.z * r1.x + -r2.x;
  r0.w = -hemiAOGlobals.rejectFadeoff * r0.z;
// Known bad code for instruction (needs manual fix):
ld_structured r1.w, r4.y, l(0), g0.xxxx
r1.w = LinearSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured r3.x, r4.w, l(0), g0.xxxx
r3.x = LinearSampler[]..swiz;
  r3.x = r3.x * r1.x + -r2.x;
  r1.w = r1.w * r1.x + -r2.x;
  r0.w = saturate(max(r1.w, r0.w));
  r1.w = -hemiAOGlobals.rejectFadeoff * r1.w;
  r0.z = saturate(max(r1.w, r0.z));
  r0.z = r0.w + r0.z;
  r4.xyzw = (int4)r0.xxxx + int4(198,388,140,396);
// Known bad code for instruction (needs manual fix):
ld_structured r0.w, r4.x, l(0), g0.xxxx
r0.w = LinearSampler[]..swiz;
  r0.w = r0.w * r1.x + -r2.x;
  r1.x = -hemiAOGlobals.rejectFadeoff * r0.w;
  r1.x = saturate(max(r3.x, r1.x));
  r1.w = -hemiAOGlobals.rejectFadeoff * r3.x;
  r0.w = saturate(max(r1.w, r0.w));
  r0.w = r1.x + r0.w;
  r0.z = r0.z + r0.w;
  r0.z = hemiAOGlobals.sampleWeightTable[1].x * r0.z;
  r0.y = r0.z * 0.5 + r0.y;
// Known bad code for instruction (needs manual fix):
ld_structured r0.z, r4.z, l(0), g0.xxxx
r0.z = LinearSampler[]..swiz;
  r1.xw = hemiAOGlobals.insensitivity * hemiAOGlobals.invThicknessTable[2].xw;
  r1.xy = r1.xw * r1.yy;
  r0.z = r0.z * r1.x + -r2.z;
  r0.w = -hemiAOGlobals.rejectFadeoff * r0.z;
// Known bad code for instruction (needs manual fix):
ld_structured r1.w, r4.y, l(0), g0.xxxx
r1.w = LinearSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured r2.x, r4.w, l(0), g0.xxxx
r2.x = LinearSampler[]..swiz;
  r2.x = r2.x * r1.x + -r2.z;
  r1.w = r1.w * r1.x + -r2.z;
  r0.w = saturate(max(r1.w, r0.w));
  r1.w = -hemiAOGlobals.rejectFadeoff * r1.w;
  r0.z = saturate(max(r1.w, r0.z));
  r0.z = r0.w + r0.z;
  r3.xyzw = (int4)r0.xxxx + int4(132,450,78,462);
// Known bad code for instruction (needs manual fix):
ld_structured r0.w, r3.x, l(0), g0.xxxx
r0.w = LinearSampler[]..swiz;
  r0.w = r0.w * r1.x + -r2.z;
  r1.x = -hemiAOGlobals.rejectFadeoff * r0.w;
  r1.x = saturate(max(r2.x, r1.x));
  r1.w = -hemiAOGlobals.rejectFadeoff * r2.x;
  r0.w = saturate(max(r1.w, r0.w));
  r0.w = r1.x + r0.w;
  r0.z = r0.z + r0.w;
  r0.z = hemiAOGlobals.sampleWeightTable[2].x * r0.z;
  r0.y = r0.z * 0.5 + r0.y;
// Known bad code for instruction (needs manual fix):
ld_structured r0.z, r3.z, l(0), g0.xxxx
r0.z = LinearSampler[]..swiz;
  r0.z = r0.z * r1.y + -r2.w;
  r0.w = -hemiAOGlobals.rejectFadeoff * r0.z;
// Known bad code for instruction (needs manual fix):
ld_structured r1.x, r3.y, l(0), g0.xxxx
r1.x = LinearSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured r1.w, r3.w, l(0), g0.xxxx
r1.w = LinearSampler[]..swiz;
  r1.w = r1.w * r1.y + -r2.w;
  r1.x = r1.x * r1.y + -r2.w;
  r0.w = saturate(max(r1.x, r0.w));
  r1.x = -hemiAOGlobals.rejectFadeoff * r1.x;
  r0.z = saturate(max(r1.x, r0.z));
  r0.z = r0.w + r0.z;
  r3.xyzw = (int4)r0.xxxx + int4(66,458,70,454);
// Known bad code for instruction (needs manual fix):
ld_structured r0.w, r3.x, l(0), g0.xxxx
r0.w = LinearSampler[]..swiz;
  r0.w = r0.w * r1.y + -r2.w;
  r1.x = -hemiAOGlobals.rejectFadeoff * r0.w;
  r1.x = saturate(max(r1.w, r1.x));
  r1.y = -hemiAOGlobals.rejectFadeoff * r1.w;
  r0.w = saturate(max(r1.y, r0.w));
  r0.w = r1.x + r0.w;
  r0.z = r0.z + r0.w;
  r0.z = hemiAOGlobals.sampleWeightTable[2].w * r0.z;
  r0.y = r0.z * 0.5 + r0.y;
// Known bad code for instruction (needs manual fix):
ld_structured r0.z, r3.z, l(0), g0.xxxx
r0.z = LinearSampler[]..swiz;
  r0.z = r0.z * r1.z + -r2.y;
  r0.w = -hemiAOGlobals.rejectFadeoff * r0.z;
// Known bad code for instruction (needs manual fix):
ld_structured r1.x, r3.y, l(0), g0.xxxx
r1.x = LinearSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured r1.y, r3.w, l(0), g0.xxxx
r1.y = LinearSampler[]..swiz;
  r1.y = r1.y * r1.z + -r2.y;
  r1.x = r1.x * r1.z + -r2.y;
  r0.w = saturate(max(r1.x, r0.w));
  r1.x = -hemiAOGlobals.rejectFadeoff * r1.x;
  r0.z = saturate(max(r1.x, r0.z));
  r0.z = r0.w + r0.z;
  r3.xyzw = (int4)r0.xxxx + int4(74,334,194,322);
  r0.x = (int)r0.x + 206;
// Known bad code for instruction (needs manual fix):
ld_structured r0.x, r0.x, l(0), g0.xxxx
r0.x = LinearSampler[]..swiz;
  r0.x = r0.x * r1.z + -r2.y;
// Known bad code for instruction (needs manual fix):
ld_structured r0.w, r3.x, l(0), g0.xxxx
r0.w = LinearSampler[]..swiz;
  r0.w = r0.w * r1.z + -r2.y;
  r1.x = -hemiAOGlobals.rejectFadeoff * r0.w;
  r1.x = saturate(max(r1.y, r1.x));
  r1.y = -hemiAOGlobals.rejectFadeoff * r1.y;
  r0.w = saturate(max(r1.y, r0.w));
  r0.w = r1.x + r0.w;
  r0.z = r0.z + r0.w;
// Known bad code for instruction (needs manual fix):
ld_structured r0.w, r3.z, l(0), g0.xxxx
r0.w = LinearSampler[]..swiz;
  r0.w = r0.w * r1.z + -r2.y;
  r1.x = -hemiAOGlobals.rejectFadeoff * r0.w;
// Known bad code for instruction (needs manual fix):
ld_structured r1.y, r3.y, l(0), g0.xxxx
r1.y = LinearSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured r1.w, r3.w, l(0), g0.xxxx
r1.w = LinearSampler[]..swiz;
  r1.w = r1.w * r1.z + -r2.y;
  r1.y = r1.y * r1.z + -r2.y;
  r1.x = saturate(max(r1.y, r1.x));
  r1.y = -hemiAOGlobals.rejectFadeoff * r1.y;
  r0.w = saturate(max(r1.y, r0.w));
  r0.w = r1.x + r0.w;
  r0.z = r0.z + r0.w;
  r0.w = -hemiAOGlobals.rejectFadeoff * r0.x;
  r0.w = saturate(max(r1.w, r0.w));
  r1.x = -hemiAOGlobals.rejectFadeoff * r1.w;
  r0.x = saturate(max(r1.x, r0.x));
  r0.x = r0.w + r0.x;
  r0.x = r0.z + r0.x;
  r0.x = hemiAOGlobals.sampleWeightTable[1].z * r0.x;
  r0.x = r0.x * 0.25 + r0.y;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, vThreadID.xyyy, r0.xxxx
  return;
}