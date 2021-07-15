// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:39 2021

cbuffer _Globals : register(b0)
{
  float4 flagParams : packoffset(c0);
  float4 colorObjMin : packoffset(c1);
  float4 colorObjMax : packoffset(c2);
  float colorObjMinBaseBlend : packoffset(c3);
  float colorObjMaxBaseBlend : packoffset(c3.y);
  float2 uvScroll : packoffset(c3.z);
  float4 detailScale : packoffset(c4);
  float4 detailScale1 : packoffset(c5);
  float4 detailScale2 : packoffset(c6);
  float4 detailScale3 : packoffset(c7);
  float4 alphaRevealParms : packoffset(c8);
  float4 colorDetailScale : packoffset(c9);
  float4 BackgroundColor : packoffset(c10);
  float4 MomentumColor : packoffset(c11);
  float4 GradientColor : packoffset(c12);
  float4 TickMarkColorAndHarshness : packoffset(c13);
  float4 PositiveColor : packoffset(c14);
  float4 NegativeColor : packoffset(c15);
}

cbuffer GenericsCBuffer : register(b3)
{
  float4 scriptVector0 : packoffset(c0);
  float4 scriptVector1 : packoffset(c1);
  float4 scriptVector2 : packoffset(c2);
  float4 scriptVector3 : packoffset(c3);
  float4 scriptVector4 : packoffset(c4);
  float4 scriptVector5 : packoffset(c5);
  float4 scriptVector6 : packoffset(c6);
  float4 scriptVector7 : packoffset(c7);
  float4 weaponParam0 : packoffset(c8);
  float4 weaponParam1 : packoffset(c9);
  float4 weaponParam2 : packoffset(c10);
  float4 weaponParam3 : packoffset(c11);
  float4 weaponParam4 : packoffset(c12);
  float4 weaponParam5 : packoffset(c13);
  float4 weaponParam6 : packoffset(c14);
  float4 weaponParam7 : packoffset(c15);
}



// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float2 v2 : TEXCOORD1,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = float2(-0.5,-0.5) + v2.xy;
  r0.z = max(abs(r0.x), abs(r0.y));
  r0.z = 1 / r0.z;
  r0.w = min(abs(r0.x), abs(r0.y));
  r0.z = r0.w * r0.z;
  r0.w = r0.z * r0.z;
  r1.x = r0.w * 0.0208350997 + -0.0851330012;
  r1.x = r0.w * r1.x + 0.180141002;
  r1.x = r0.w * r1.x + -0.330299497;
  r0.w = r0.w * r1.x + 0.999866009;
  r1.x = r0.z * r0.w;
  r1.x = r1.x * -2 + 1.57079637;
  r1.y = cmp(abs(r0.y) < abs(r0.x));
  r1.x = r1.y ? r1.x : 0;
  r0.z = r0.z * r0.w + r1.x;
  r0.w = cmp(r0.y < -r0.y);
  r0.w = r0.w ? -3.141593 : 0;
  r0.z = r0.z + r0.w;
  r0.w = min(r0.x, r0.y);
  r0.x = max(r0.x, r0.y);
  r0.x = cmp(r0.x >= -r0.x);
  r0.y = cmp(r0.w < -r0.w);
  r0.x = r0.x ? r0.y : 0;
  r0.x = r0.x ? -r0.z : r0.z;
  r0.y = saturate(-0.318309873 * r0.x);
  r0.x = cmp(r0.x < 0);
  r0.x = r0.x ? 1.000000 : 0;
  r0.z = scriptVector2.x + scriptVector0.x;
  r0.w = saturate(r0.y + -r0.z);
  r0.w = min(r0.y, r0.w);
  r1.x = 1 + -r0.z;
  r0.z = max(r1.x, r0.z);
  r0.z = r0.w / r0.z;
  r0.z = saturate(100 * r0.z);
  r0.w = 1 + -r0.z;
  r1.x = saturate(-scriptVector0.x + r0.y);
  r1.x = min(r1.x, r0.y);
  r1.y = 1 + -scriptVector0.x;
  r1.y = max(scriptVector0.x, r1.y);
  r1.x = r1.x / r1.y;
  r1.x = saturate(100 * r1.x);
  r1.x = 1 + -r1.x;
  r1.y = 1 + -r1.x;
  r0.w = r1.y * r0.w;
  r0.z = r1.x * r0.z;
  r0.z = max(r0.w, r0.z);
  r0.w = scriptVector0.x + -r0.y;
  r0.w = min(r0.w, r0.y);
  r2.xyzw = scriptVector1.xyzw + -r0.yyyy;
  r2.xyzw = saturate(TickMarkColorAndHarshness.wwww * abs(r2.xyzw));
  r2.xyzw = float4(1,1,1,1) + -r2.xyzw;
  r1.yz = max(r2.xz, r2.yw);
  r0.y = max(r1.y, r1.z);
  r0.w = saturate(scriptVector0.y * r0.w);
  r2.xyzw = -GradientColor.xyzw + MomentumColor.xyzw;
  r2.xyzw = r0.wwww * r2.xyzw + GradientColor.xyzw;
  r2.xyzw = -BackgroundColor.xyzw + r2.xyzw;
  r1.xyzw = r1.xxxx * r2.xyzw + BackgroundColor.xyzw;
  r0.w = cmp(0 < scriptVector2.x);
  r2.x = cmp(scriptVector2.x < 0);
  r0.w = (int)-r0.w + (int)r2.x;
  r0.w = (int)r0.w;
  r0.w = saturate(r0.w);
  r2.xyzw = -NegativeColor.xyzw + PositiveColor.xyzw;
  r2.xyzw = r0.wwww * r2.xyzw + NegativeColor.xyzw;
  r2.xyzw = r2.xyzw + -r1.xyzw;
  r1.xyzw = r0.zzzz * r2.xyzw + r1.xyzw;
  r2.xyz = TickMarkColorAndHarshness.xyz + -r1.xyz;
  r2.w = 1 + -r1.w;
  r1.xyzw = r0.yyyy * r2.xyzw + r1.xyzw;
  r0.y = 1 / scriptVector0.w;
  r0.z = -scriptVector0.z + -r0.y;
  r0.y = 1 + -r0.y;
  r0.z = 1 + r0.z;
  r2.xy = float2(0.5,0.5) + -v2.xy;
  r0.w = dot(r2.xy, r2.xy);
  r0.w = sqrt(r0.w);
  r0.z = -r0.w * 2 + r0.z;
  r0.y = r0.w * 2 + -r0.y;
  r0.yz = saturate(scriptVector0.ww * r0.yz);
  r0.y = max(r0.y, r0.z);
  r0.y = 1 + -r0.y;
  r0.x = r0.x * r0.y;
  r1.w = r1.w * r0.x;
  o0.xyzw = v1.xyzw * r1.xyzw;
  return;
}