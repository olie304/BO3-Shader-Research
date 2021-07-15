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
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2darray (float,float,float,float) u1
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.x = (((uint)vThreadID.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  bitmask.y = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.y = (((uint)vThreadID.y << 1) & bitmask.y) | ((uint)1 & ~bitmask.y);
  bitmask.z = ((~(-1 << 2)) << 2) & 0xffffffff;  r0.z = (((uint)vThreadID.y << 2) & bitmask.z) | ((uint)0 & ~bitmask.z);
  r0.xy = (uint2)r0.xy;
  bitmask.z = ((~(-1 << 2)) << 0) & 0xffffffff;  r1.z = (((uint)vThreadID.x << 0) & bitmask.z) | ((uint)r0.z & ~bitmask.z);
  bitmask.w = ((~(-1 << 2)) << 0) & 0xffffffff;  r1.w = (((uint)vThreadID.x << 0) & bitmask.w) | ((uint)r0.z & ~bitmask.w);
  r0.xy = hemiAOGlobals.invSourceDimension.xy * r0.xy;
  r0.xyzw = codeTexture0.Gather(LinearSampler_s, r0.xy).xyzw;
  r0.xy = max(r0.xz, r0.yw);
  r0.x = max(r0.x, r0.y);
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, vThreadID.xyyy, r0.xxxx
  r1.xy = (uint2)vThreadID.xy >> int2(2,2);
// No code for instruction (needs manual fix):
store_uav_typed u1.xyzw, r1.xyzw, r0.xxxx
  return;
}