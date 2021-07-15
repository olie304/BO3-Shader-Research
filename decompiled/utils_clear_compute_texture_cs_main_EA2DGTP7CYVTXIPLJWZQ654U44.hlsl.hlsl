// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:45 2021



// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main()
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, vThreadID.xyyy, l(0,0,0,0)
  return;
}