// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:18 2021



// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main()
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_structured u6, 4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 64, 1, 1
  [vThreadIDInGroupFlattened.x].0 = u6.x;
  return;
}