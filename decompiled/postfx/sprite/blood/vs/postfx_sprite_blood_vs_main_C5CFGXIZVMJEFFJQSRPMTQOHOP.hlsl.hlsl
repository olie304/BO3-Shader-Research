// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:24 2021

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
  float alphaRevealSoftEdge : packoffset(c10);
  float alphaRevealRamp : packoffset(c10.y);
  float heightScale : packoffset(c10.z);
  float2 sprites : packoffset(c11);
  float2 source : packoffset(c11.z);
  float count : packoffset(c12);
  float seed : packoffset(c12.y);
  float2 scaleMin : packoffset(c12.z);
  float2 scaleMax : packoffset(c13);
  float2 lifeMaxMin : packoffset(c13.z);
  float2 fadeInMaxMin : packoffset(c14);
  float2 fadeOutMaxMin : packoffset(c14.z);
  float2 pauseMaxMin : packoffset(c15);
  float2 stretchMaxMin : packoffset(c15.z);
  float2 slideMaxMin : packoffset(c16);
  float2 heightMaxMin : packoffset(c16.z);
  float2 warpMaxMin : packoffset(c17);
  float2 jitterMaxMin : packoffset(c17.z);
  float2 rotationMaxMin : packoffset(c18);
  float falseElapsedTime : packoffset(c18.z);
  bool useOverride : packoffset(c18.w);
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
  float4 v0 : POSITION0,
  float4 v1 : TEXCOORD0,
  uint v2 : TEXCOORD15,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD3,
  out float4 o2 : TEXCOORD2)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = floor(v0.x);
  r0.y = cmp(r0.x >= count);
  r0.z = cmp(heightScale == 0.000000);
  r0.y = (int)r0.z | (int)r0.y;
  if (r0.y != 0) {
    o0.xyzw = float4(0,0,0,0);
    o1.xyzw = float4(0,0,0,0);
    o2.xyzw = float4(0,0,0,0);
    return;
  }
  r0.yz = v1.xy * float2(2,2) + float2(-1,-1);
  r0.w = 1.00000011e-06 * scriptVector7.x;
  r1.x = cmp(r0.w >= -r0.w);
  r0.w = frac(abs(r0.w));
  r0.w = r1.x ? r0.w : -r0.w;
  r0.w = 1000 * r0.w;
  r1.x = 0.00100000005 * falseElapsedTime;
  r1.y = cmp(r1.x >= -r1.x);
  r1.x = frac(abs(r1.x));
  r1.x = r1.y ? r1.x : -r1.x;
  r1.x = 1000 * r1.x;
  r0.w = useOverride ? r1.x : r0.w;
  r1.x = r0.x * 7.55950022 + seed;
  r1.xyzw = float4(6.23400021,1.02499998,0.238999993,9.34500027) + r1.xxxx;
  r2.x = dot(r1.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r1.x = frac(r2.x);
  r2.x = dot(r1.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r1.y = frac(r2.x);
  r2.x = dot(r1.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r1.z = frac(r2.x);
  r2.x = dot(r1.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r1.w = frac(r2.x);
  r2.x = dot(r1.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r1.x = frac(r2.x);
  r2.x = dot(r1.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r1.y = frac(r2.x);
  r2.x = dot(r1.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r1.z = frac(r2.x);
  r1.w = dot(r1.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r1.w = frac(r1.w);
  r2.x = lifeMaxMin.x + -lifeMaxMin.y;
  r1.y = r1.y * r2.x + lifeMaxMin.y;
  r1.x = r1.x * lifeMaxMin.x + r0.w;
  r2.x = r1.x / r1.y;
  r2.x = floor(r2.x);
  r1.x = -r2.x * r1.y + r1.x;
  r2.x = r2.x * r1.y + seed;
  r2.x = scriptVector6.z + r2.x;
  r2.y = r0.x * 23.2474995 + r2.x;
  r3.xyzw = float4(33.1469994,1.54299998,74.3499985,87.3399963) + r2.yyyy;
  r2.y = dot(r3.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r3.x = frac(r2.y);
  r2.y = dot(r3.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r3.y = frac(r2.y);
  r2.y = dot(r3.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r3.z = frac(r2.y);
  r2.y = dot(r3.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r3.w = frac(r2.y);
  r2.y = dot(r3.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r3.x = frac(r2.y);
  r2.y = dot(r3.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r3.y = frac(r2.y);
  r2.y = dot(r3.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r3.z = frac(r2.y);
  r2.y = dot(r3.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r3.w = frac(r2.y);
  r4.xyzw = r0.xxxx * float4(13.0072002,13.0072002,13.0072002,13.0072002) + float4(0.344999999,9.35000038,1.34500003,12.04);
  r4.xyzw = r2.xxxx * float4(3.34573007,3.34573007,3.34573007,3.34573007) + r4.xyzw;
  r2.y = dot(r4.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r4.x = frac(r2.y);
  r2.y = dot(r4.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r4.y = frac(r2.y);
  r2.y = dot(r4.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r4.z = frac(r2.y);
  r2.y = dot(r4.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r4.w = frac(r2.y);
  r2.y = dot(r4.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r4.x = frac(r2.y);
  r2.y = dot(r4.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r4.y = frac(r2.y);
  r2.y = dot(r4.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r4.z = frac(r2.y);
  r2.y = dot(r4.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r2.y = frac(r2.y);
  r2.zw = r3.zw * float2(2,2) + float2(-1,-1);
  r5.xy = float2(1,1.77777779) * r2.zw;
  r4.w = cmp(r0.w >= -r0.w);
  r0.w = frac(abs(r0.w));
  r0.w = r4.w ? r0.w : -r0.w;
  r0.x = r0.x * 13.0072002 + r0.w;
  r0.x = r2.x * 3.34573007 + r0.x;
  r6.xyzw = float4(0.233999997,2.1099999,5.56449986,2.25399995) + r0.xxxx;
  r0.x = dot(r6.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r6.x = frac(r0.x);
  r0.x = dot(r6.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r6.y = frac(r0.x);
  r0.x = dot(r6.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r6.z = frac(r0.x);
  r0.x = dot(r6.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r6.w = frac(r0.x);
  r0.x = dot(r6.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r6.x = frac(r0.x);
  r0.x = dot(r6.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r6.y = frac(r0.x);
  r0.x = dot(r6.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r6.z = frac(r0.x);
  r0.x = dot(r6.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r0.x = frac(r0.x);
  r5.zw = scaleMax.xy + -scaleMin.xy;
  r5.zw = r3.xx * r5.zw + scaleMin.xy;
  r6.xy = fadeInMaxMin.xz + -fadeInMaxMin.yw;
  r0.w = r3.z * r6.x + fadeInMaxMin.y;
  r2.x = r3.w * r6.y + fadeOutMaxMin.y;
  r3.xz = jitterMaxMin.x + -jitterMaxMin.y;
  r3.x = r3.y * r3.x + jitterMaxMin.y;
  r3.yw = slideMaxMin.xz + -slideMaxMin.yw;
  r1.w = r1.w * r3.y + slideMaxMin.y;
  o2.w = r4.x * r3.z + warpMaxMin.y;
  r3.y = r4.y * r3.w + heightMaxMin.y;
  r3.y = heightScale * r3.y;
  r3.y = 30 * r3.y;
  r3.zw = pauseMaxMin.xz + -pauseMaxMin.yw;
  r3.z = r4.z * r3.z + pauseMaxMin.y;
  r6.x = r2.y * r3.w + stretchMaxMin.y;
  r2.y = rotationMaxMin.x + -rotationMaxMin.y;
  r1.z = r1.z * r2.y + rotationMaxMin.y;
  r4.xz = -source.xy * float2(1,1.77777779) + r5.xy;
  r2.y = dot(r4.xz, r4.xz);
  r2.y = rsqrt(r2.y);
  r4.xz = r4.xz * r2.yy;
  r0.yz = r5.zw * r0.yz;
  r2.y = max(9.99999975e-05, r6.x);
  r6.y = 1 / r2.y;
  r2.y = -r3.z + r1.x;
  r3.w = saturate(r2.y / r1.y);
  r5.zw = float2(-1,-1) + r6.xy;
  r5.zw = r3.ww * r5.zw + float2(1,1);
  r0.yz = r5.zw * r0.yz;
  r3.y = r3.y / r5.z;
  r3.w = cmp(r0.w == 0.000000);
  r0.w = saturate(r1.x / r0.w);
  r4.w = r0.w * -2 + 3;
  r0.w = r0.w * r0.w;
  r0.w = r4.w * r0.w;
  r0.w = r3.w ? 1 : r0.w;
  r0.w = r3.y * r0.w;
  r3.y = cmp(r2.x == 0.000000);
  r1.y = r1.x + -r1.y;
  r1.y = r1.y + r2.x;
  r1.y = saturate(r1.y / r2.x);
  r2.x = r1.y * -2 + 3;
  r1.y = r1.y * r1.y;
  r1.y = -r2.x * r1.y + 1;
  r1.y = r3.y ? 1 : r1.y;
  o2.z = r1.y * r0.w;
  r0.w = min(abs(r4.z), abs(r4.x));
  r1.y = max(abs(r4.z), abs(r4.x));
  r1.y = 1 / r1.y;
  r0.w = r1.y * r0.w;
  r1.y = r0.w * r0.w;
  r2.x = r1.y * 0.0208350997 + -0.0851330012;
  r2.x = r1.y * r2.x + 0.180141002;
  r2.x = r1.y * r2.x + -0.330299497;
  r1.y = r1.y * r2.x + 0.999866009;
  r2.x = r1.y * r0.w;
  r3.y = cmp(abs(r4.x) < abs(r4.z));
  r2.x = r2.x * -2 + 1.57079637;
  r2.x = r3.y ? r2.x : 0;
  r0.w = r0.w * r1.y + r2.x;
  r1.y = cmp(r4.x < -r4.x);
  r1.y = r1.y ? -3.141593 : 0;
  r0.w = r1.y + r0.w;
  r1.y = min(r4.z, r4.x);
  r2.x = max(r4.z, r4.x);
  r1.y = cmp(r1.y < -r1.y);
  r2.x = cmp(r2.x >= -r2.x);
  r1.y = r1.y ? r2.x : 0;
  r0.w = r1.y ? -r0.w : r0.w;
  r0.w = r1.z * 0.0174532924 + -r0.w;
  sincos(r0.w, r2.x, r6.x);
  r6.y = r6.x;
  r6.z = r2.x;
  r7.x = dot(r6.yz, r0.yz);
  r6.x = -r2.x;
  r7.y = dot(r6.xy, r0.yz);
  r0.y = cmp(r3.z < r1.x);
  r0.z = r2.y * r2.y;
  r0.zw = r4.xz * r0.zz;
  r0.zw = r0.zw * r1.ww;
  r0.zw = r0.zw * float2(0.00999999978,0.00999999978) + r5.xy;
  r0.yz = r0.yy ? r0.zw : r5.xy;
  r1.yz = r2.zw * float2(1,1.77777779) + r7.xy;
  p1.xy = saturate(r1.yz * float2(0.5,0.5) + float2(0.5,0.5));
  r0.yz = r7.xy + r0.yz;
  r0.w = cmp(r1.x < r3.z);
  r1.x = 0.00999999978 * r3.x;
  r1.yz = r4.xz * r0.xx;
  r1.xy = r1.xx * r1.yz + r0.yz;
  r0.xy = r0.ww ? r1.xy : r0.yz;
  r0.z = sprites.x * r4.y;
  r0.z = sprites.y * r0.z;
  r0.z = floor(r0.z);
  r1.xy = v1.xy / sprites.xy;
  r0.z = r0.z / sprites.x;
  r0.w = cmp(r0.z >= -r0.z);
  r1.z = frac(abs(r0.z));
  r0.w = r0.w ? r1.z : -r1.z;
  r2.x = sprites.x * r0.w;
  r2.y = floor(r0.z);
  r0.zw = r2.xy / sprites.xy;
  o1.xy = r1.xy + r0.zw;
  o0.y = -r0.y;
  o0.x = r0.x;
  o0.zw = float2(1,1);
  o2.xy = r6.zy;
  return;
}