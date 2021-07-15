// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:55 2021

cbuffer PostFxCBuffer : register(b8)
{
  float4 postFxControl0 : packoffset(c0);
  float4 postFxControl1 : packoffset(c1);
  float4 postFxControl2 : packoffset(c2);
  float4 postFxControl3 : packoffset(c3);
  float4 postFxControl4 : packoffset(c4);
  float4 postFxControl5 : packoffset(c5);
  float4 postFxControl6 : packoffset(c6);
  float4 postFxControl7 : packoffset(c7);
  float4 postFxControl8 : packoffset(c8);
  float4 postFxControl9 : packoffset(c9);
  float4 postFxControlA : packoffset(c10);
  float4 postFxControlB : packoffset(c11);
  float4 postFxControlC : packoffset(c12);
  float4 postFxControlD : packoffset(c13);
  float4 postFxControlE : packoffset(c14);
  float4 postFxControlF : packoffset(c15);
  float4 postFxConst00 : packoffset(c16);
  float4 postFxConst01 : packoffset(c17);
  float4 postFxConst02 : packoffset(c18);
  float4 postFxConst03 : packoffset(c19);
  float4 postFxConst04 : packoffset(c20);
  float4 postFxConst05 : packoffset(c21);
  float4 postFxConst06 : packoffset(c22);
  float4 postFxConst07 : packoffset(c23);
  float4 postFxConst08 : packoffset(c24);
  float4 postFxConst09 : packoffset(c25);
  float4 postFxConst10 : packoffset(c26);
  float4 postFxConst11 : packoffset(c27);
  float4 postFxConst12 : packoffset(c28);
  float4 postFxConst13 : packoffset(c29);
  float4 postFxConst14 : packoffset(c30);
  float4 postFxConst15 : packoffset(c31);
  float4 postFxConst16 : packoffset(c32);
  float4 postFxConst17 : packoffset(c33);
  float4 postFxConst18 : packoffset(c34);
  float4 postFxConst19 : packoffset(c35);
  float4 postFxConst20 : packoffset(c36);
  float4 postFxConst21 : packoffset(c37);
  float4 postFxConst22 : packoffset(c38);
  float4 postFxConst23 : packoffset(c39);
  float4 postFxConst24 : packoffset(c40);
  float4 postFxConst25 : packoffset(c41);
  float4 postFxConst26 : packoffset(c42);
  float4 postFxConst27 : packoffset(c43);
  float4 postFxConst28 : packoffset(c44);
  float4 postFxConst29 : packoffset(c45);
  float4 postFxConst30 : packoffset(c46);
  float4 postFxConst31 : packoffset(c47);
  float4 postFxConst32 : packoffset(c48);
  float4 postFxConst33 : packoffset(c49);
  float4 postFxConst34 : packoffset(c50);
  float4 postFxConst35 : packoffset(c51);
  float4 postFxConst36 : packoffset(c52);
  float4 postFxConst37 : packoffset(c53);
  float4 postFxConst38 : packoffset(c54);
  float4 postFxConst39 : packoffset(c55);
  float4 postFxConst40 : packoffset(c56);
  float4 postFxConst41 : packoffset(c57);
  float4 postFxConst42 : packoffset(c58);
  float4 postFxConst43 : packoffset(c59);
  float4 postFxConst44 : packoffset(c60);
  float4 postFxConst45 : packoffset(c61);
  float4 postFxConst46 : packoffset(c62);
  float4 postFxConst47 : packoffset(c63);
  float4 postFxConst48 : packoffset(c64);
  float4 postFxConst49 : packoffset(c65);
  float4 postFxConst50 : packoffset(c66);
  float4 postFxConst51 : packoffset(c67);
  float4 postFxConst52 : packoffset(c68);
  float4 postFxConst53 : packoffset(c69);
  float4 postFxConst54 : packoffset(c70);
  float4 postFxConst55 : packoffset(c71);
  float4 postFxConst56 : packoffset(c72);
  float4 postFxConst57 : packoffset(c73);
  float4 postFxConst58 : packoffset(c74);
  float4 postFxConst59 : packoffset(c75);
  float4 postFxConst60 : packoffset(c76);
  float4 postFxConst61 : packoffset(c77);
  float4 postFxConst62 : packoffset(c78);
  float4 postFxConst63 : packoffset(c79);
  float4 postFxBloom00 : packoffset(c80);
  float4 postFxBloom01 : packoffset(c81);
  float4 postFxBloom02 : packoffset(c82);
  float4 postFxBloom03 : packoffset(c83);
  float4 postFxBloom04 : packoffset(c84);
  float4 postFxBloom05 : packoffset(c85);
  float4 postFxBloom06 : packoffset(c86);
  float4 postFxBloom07 : packoffset(c87);
  float4 postFxBloom08 : packoffset(c88);
  float4 postFxBloom09 : packoffset(c89);
  float4 postFxBloom10 : packoffset(c90);
  float4 postFxBloom11 : packoffset(c91);
  float4 postFxBloom12 : packoffset(c92);
  float4 postFxBloom13 : packoffset(c93);
  float4 postFxBloom14 : packoffset(c94);
  float4 postFxBloom15 : packoffset(c95);
  float4 postFxBloom16 : packoffset(c96);
  float4 postFxBloom17 : packoffset(c97);
  float4 postFxBloom18 : packoffset(c98);
  float4 postFxBloom19 : packoffset(c99);
  float4 postFxBloom20 : packoffset(c100);
  float4 postFxBloom21 : packoffset(c101);
  float4 postFxBloom22 : packoffset(c102);
  float4 postFxBloom23 : packoffset(c103);
  float4 postFxBloom24 : packoffset(c104);
  float4 postFxBloom25 : packoffset(c105);
  float4 filterTap[8] : packoffset(c106);
  float4 postfxViewMatrix0 : packoffset(c114);
  float4 postfxViewMatrix1 : packoffset(c115);
  float4 postfxViewMatrix2 : packoffset(c116);
  float4 postfxViewMatrix3 : packoffset(c117);
  float4 postfxProjMatrix0 : packoffset(c118);
  float4 postfxProjMatrix1 : packoffset(c119);
  float4 postfxProjMatrix2 : packoffset(c120);
  float4 postfxProjMatrix3 : packoffset(c121);
  float4 postfxViewProjMatrix0 : packoffset(c122);
  float4 postfxViewProjMatrix1 : packoffset(c123);
  float4 postfxViewProjMatrix2 : packoffset(c124);
  float4 postfxViewProjMatrix3 : packoffset(c125);
}

cbuffer LightingGlobals : register(b2)
{
  uint numLights : packoffset(c0);
  uint numRefProbes : packoffset(c0.y);
  uint numRefProbeBlends : packoffset(c0.z);
  uint numDedicatedLights : packoffset(c0.w);
  float4 clearColor : packoffset(c1);
  float4 sssParams : packoffset(c2);

  struct
  {
    float4 fogColor;
    float4 sunFogColor;
    float K0;
    float skyK0;
    float expMul;
    float expAdd;
    float heightFalloff;
    float skyHeightFalloff;
    float K0b;
    float padding0;
    float skyK0b;
    float3 wldSunFogDir;
    float2 sunFogAngles;
    float atmospheresunstrength;
    float atmosphereMieSchlickK;
    float2 atmosphereskyfogdensityatcamera;
    float atmosphereExtinctionIntensity;
    float atmosphereInScatterIntensity;
    float3 atmosphereRayleighDensity;
    float atmospherehazebasedist;
    float3 atmosphereMieDensity;
    float atmospherehazefadedist;
    float3 atmosphereTotalDensity;
    float worldfogskysize;
    float3 atmosphereInScatterIntensityOverTotalDensity;
    float blendAmount;
    float2 atmosphereskyfogheightdensityscale;
    float2 atmospherefogdistanceoffset;
    float2 atmospherefogdistancedensityscale;
    float2 atmospherefogheightdensityscale;
    float2 atmospherefogdensityatcamera;
    float2 padding1;
  } fogConstants : packoffset(c3);


  struct
  {
    float3 wldDir;
    float splitDepthOffset;
    float3 color;
    float specScale;
    float globalProbeExposure;
    float3 avgGlobalProbeColor;
    float4 splitPinTransform[3];
    uint sunCookieIndex;
    float sunCookieIntensity;
    float sunVolumetricCookieIntensity;
    uint toolsGfxDisableSunShadow;
    float4 sunCookieTransform[2];
    float intensity;
    int splitArrayOffset;
    float2 pad0;

    struct
    {

      struct
      {
        float2 dimensionInTiles;
        float inchesPerTexel;
        float spanInInches;
      } constants;

      row_major float4x4 offToPinTransform;
      float coordScale;
      uint rootOffset;
      uint2 pad0;
    } sstLightingConstants;

  } sunConstants : packoffset(c17);


  struct
  {
    float2 sstToMinMaxScale;
    float2 pad0;
    float2 halfMinTexelSize;
    float rcpInchesDimLevel0;
    float shadowBiasInches;
  } minMaxConstants : packoffset(c33);


  struct
  {
    uint4 data[3];
  } globalProbeConstants : packoffset(c35);


  struct
  {
    float rain;
    float windSpeed;
    float windDirSin;
    float windDirCos;
    float weatherTile;
    float3 weatherVector;
    float3 weatherVector2;
    float padding0;
    float3 weatherTint;
    float padding1;
    float3 weatherTint2;
    float padding2;
  } weather : packoffset(c38);


  struct
  {

    struct
    {
      float2 dimensionInTiles;
      float inchesPerTexel;
      float spanInInches;
    } constants;

    row_major float4x4 offToPinTransform;
    float coordScale;
    uint rootOffset;
    uint2 pad0;
  } outdoorSSTConstants : packoffset(c43);

  float4 pinToWorldZ : packoffset(c49);

  struct
  {
    uint firstSpotLight;
    uint lastSpotLight;
    uint firstOmniLight;
    uint lastOmniLight;
    uint firstProbe;
    uint lastProbe;
    uint padding0;
    uint padding1;
  } volumetric : packoffset(c50);

  uint viewID : packoffset(c52);
  uint enableCountDebug : packoffset(c52.y);
  uint centerGroupIDx : packoffset(c52.z);
  uint centerGroupIDy : packoffset(c52.w);
  uint viewmodelSunShadowRaw : packoffset(c53);
  uint debugDrawOverlayType : packoffset(c53.y);
  float drawNumLighstScale : packoffset(c53.z);
  float drawNumLightsAlpha : packoffset(c53.w);
  uint probeDebug : packoffset(c54);
  float probeDebugRadius : packoffset(c54.y);
  uint showSunVis : packoffset(c54.z);
  uint enableAO : packoffset(c54.w);
  uint showAO : packoffset(c55);
  uint numGpuCullTilesWidth : packoffset(c55.y);
  uint numGpuCullTilesHeight : packoffset(c55.z);
  int permuteHighlight : packoffset(c55.w);
  uint overdrawOverlayMaxValue : packoffset(c56);
  float overdrawOverlayAlpha : packoffset(c56.y);
  uint overdrawDecals : packoffset(c56.z);
  uint overdrawDecalsLayers : packoffset(c56.w);
  uint permuteStride : packoffset(c57);
  uint numDecals : packoffset(c57.y);
  uint numStaticDecals : packoffset(c57.z);
  uint numDynamicDecals : packoffset(c57.w);
  uint numOverrideProbes : packoffset(c58);
  uint enableDitheredShadow : packoffset(c58.y);
  uint oitMaxEntries : packoffset(c58.z);
  uint numAttenuationVolumes : packoffset(c58.w);
}

cbuffer LightingPackCBuffer : register(b9)
{

  struct
  {
    uint4 data[15];
  } lightConstantsCB[273] : packoffset(c0);

}

SamplerState ScatterSampler_s : register(s2);
SamplerComparisonState ShadowSamplerComparisonState_s : register(s13);
Texture2DArray<uint> codeTexture0 : register(t0);
StructuredBuffer<gLitFogVolumes> gLitFogVolumes : register(t1);
Texture2DArray<float> gSpotShadowmapArray : register(t9);
StructuredBuffer<gCullConstants> gCullConstants : register(t11);
Texture2DArray<float> gSunShadowmapArray : register(t13);
Texture2DArray<uint> codeTexture1 : register(t21);
Texture3D<float3> codeTexture7 : register(t22);
Texture3D<float3> codeTexture4 : register(t24);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main()
{
  const float4 icb[] = { { 0.228132, 0.672324, 0, 0},
                              { 0.848557, 0.135723, 0, 0},
                              { 0.748208, 0.639651, 0, 0},
                              { 0.472545, 0.351474, 0, 0},
                              { 0.962882, 0.387343, 0, 0},
                              { 0.087598, 0.896250, 0, 0},
                              { 0.203232, 0.124367, 0, 0},
                              { 0.564528, 0.974024, 0, 0} };
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t1, 208
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t11, 80
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture3d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[1];
  float4 x1[1];
  float4 x2[1];
  float4 x3[1];
  float4 x4[1];
  float4 x5[1];
  float4 x6[1];
  float4 x7[1];
// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.x = (uint)postFxControlE.x;
  r0.x = (int)r0.x + (int)vThreadID.x;
  r0.y = (uint)vThreadID.y << 1;
  r0.x = (int)r0.y + (int)r0.x;
  r0.x = (int)r0.x & 7;
  r0.xy = icb[r0.x+0].xy + float2(-0.5,-0.5);
  r0.zw = (uint2)vThreadID.xy;
  r0.xy = r0.xy * float2(0.5,0.5) + r0.zw;
  r0.xy = max(float2(0,0), r0.xy);
  r1.xy = float2(0.5,0.5) + r0.zw;
  r1.xy = r1.xy * float2(0.0125000002,-0.0222222228) + float2(-1,1);
  r0.xy = float2(0.5,0.5) + r0.xy;
  r0.xy = r0.xy * float2(0.0125000002,-0.0222222228) + float2(-1,1);
  r2.xyz = postFxControlB.xyz * r0.yyy;
  r2.xyz = postFxControlA.xyz * r0.xxx + r2.xyz;
  r2.xyz = postFxControlC.xyz + r2.xyz;
  r0.x = dot(r2.xyz, r2.xyz);
  r0.x = rsqrt(r0.x);
  r3.xyz = r2.xyz * r0.xxx;
  r0.x = (int)postFxControl4.z & 0x0000ffff;
  r0.y = (uint)vThreadGroupID.z << 3;
  r1.z = mad((int)vThreadGroupID.z, 8, 7);
  r0.zw = postFxControlF.zw * r0.zw;
  r4.xy = postFxControl7.xx * r0.zw;
  r4.xy = float2(0.015625,0.015625) * r4.xy;
  r1.w = dot(sunConstants.wldDir.xyz, -r3.xyz);
  r4.zw = uiDest.xy;
// Unknown use of GetDimensions for resinfo_ from missing reflection info, need manual fix.
// resinfo_indexable(texture3d)(float,float,float,float)_uint r4.zw, l(0), t24.zwxy
// Example for texture2d type, uint return:
tx.GetDimensions(0, uiDest.x, uiDest.y, uiDest.z);
rx = uiDest;
 state=1, constZero.eType=4, returnType=2, texture.eType=7, afImmediates[0]=0.000000
  r0.zw = (uint2)r0.zw;
  r0.zw = (uint2)r0.zw;
  r0.zw = float2(0.5,0.5) + r0.zw;
  r4.zw = (uint2)r4.zw;
  r2.w = 16 / postFxControl7.x;
  r4.zw = r4.zw * r2.ww;
  r5.xy = r0.zw / r4.zw;
  r0.z = max(-1, r1.w);
  r0.z = min(1, r0.z);
  r4.xy = (uint2)r4.xy;
  r6.xyzw = (uint14)volumetric.firstSpotLight >> int4(5,5,5,5);
  r4.w = 0;
  r7.xy = r4.xy;
  r7.w = 0;
  r8.w = 1;
  r9.xy = float2(0,0);
  while (true) {
    r0.w = cmp((uint)r9.y >= (uint)r0.x);
    if (r0.w != 0) break;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r10.xyzw, r9.y, l(24), t1.xyzw
  r10.x = ScatterSampler[]..swiz;
  r10.y = ScatterSampler[]..swiz;
  r10.z = ScatterSampler[]..swiz;
  r10.w = ScatterSampler[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r11.xyzw, r9.y, l(52), t1.xyzw
  r11.x = ScatterSampler[]..swiz;
  r11.y = ScatterSampler[]..swiz;
  r11.z = ScatterSampler[]..swiz;
  r11.w = ScatterSampler[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r0.w, r9.y, l(68), t1.xxxx
  r0.w = ScatterSampler[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r12.xyzw, r9.y, l(84), t1.xyzw
  r12.x = ScatterSampler[]..swiz;
  r12.y = ScatterSampler[]..swiz;
  r12.z = ScatterSampler[]..swiz;
  r12.w = ScatterSampler[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r1.w, r9.y, l(100), t1.xxxx
  r1.w = ScatterSampler[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r13.xyzw, r9.y, l(116), t1.xyzw
  r13.x = ScatterSampler[]..swiz;
  r13.y = ScatterSampler[]..swiz;
  r13.z = ScatterSampler[]..swiz;
  r13.w = ScatterSampler[]..swiz;
    r2.w = dot(r3.xyz, r10.xyz);
    r3.w = max(1.00000001e-07, abs(r2.w));
    r3.w = 1 / r3.w;
    r9.z = r10.w * r3.w;
    r3.w = r11.x * r3.w;
    r2.w = cmp(0 < -r2.w);
    r10.x = max(-131072, r9.z);
    r10.y = min(131072, -r3.w);
    r14.y = min(131072, -r9.z);
    r14.x = max(-131072, r3.w);
    r9.zw = r2.ww ? r10.xy : r14.xy;
    r2.w = dot(r3.xyz, r11.yzw);
    r3.w = max(1.00000001e-07, abs(r2.w));
    r3.w = 1 / r3.w;
    r0.w = r3.w * r0.w;
    r3.w = r12.x * r3.w;
    r2.w = cmp(0 < -r2.w);
    r10.x = max(r0.w, r9.z);
    r10.y = min(-r3.w, r9.w);
    r11.y = min(-r0.w, r9.w);
    r11.x = max(r3.w, r9.z);
    r9.zw = r2.ww ? r10.xy : r11.xy;
    r0.w = dot(r3.xyz, r12.yzw);
    r2.w = max(1.00000001e-07, abs(r0.w));
    r2.w = 1 / r2.w;
    r1.w = r2.w * r1.w;
    r2.w = r13.x * r2.w;
    r0.w = cmp(0 < -r0.w);
    r10.x = max(r1.w, r9.z);
    r10.y = min(-r2.w, r9.w);
    r11.y = min(-r1.w, r9.w);
    r11.x = max(r2.w, r9.z);
    r9.zw = r0.ww ? r10.xy : r11.xy;
    r0.w = cmp(r9.z < r9.w);
    if (r0.w != 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r10.xyzw, r9.y, l(136), t1.xyzw
    r10.x = ScatterSampler[]..swiz;
    r10.y = ScatterSampler[]..swiz;
    r10.z = ScatterSampler[]..swiz;
    r10.w = ScatterSampler[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r11.xy, r9.y, l(152), t1.xyxx
    r11.x = ScatterSampler[]..swiz;
    r11.y = ScatterSampler[]..swiz;
      r0.w = max(0, r9.z);
      r11.z = r10.w;
      r11.xyz = r11.zxy + r10.yyy;
      r10.zw = (int2)r10.zz & int2(5,2);
      switch (r10.z) {
        case 1 :        r12.xyz = x0[0].xyz;
        x1[0].xyz = r12.xyz;
        r1.w = 0.000714285707 * r0.w;
        r1.w = rsqrt(r1.w);
        r1.w = 1 / r1.w;
        r1.w = 127 * r1.w;
        r1.w = floor(r1.w);
        r1.w = (uint)r1.w;
        r1.w = max((uint)r1.w, (uint)r0.y);
        r2.w = 0.000714285707 * r9.w;
        r2.w = rsqrt(r2.w);
        r2.w = 1 / r2.w;
        r2.w = 127 * r2.w;
        r2.w = floor(r2.w);
        r2.w = (uint)r2.w;
        r2.w = min((uint)r2.w, (uint)r1.z);
        r3.w = 100 * r13.y;
        r9.z = r10.x * r0.z + 1;
        r9.z = max(9.99999997e-07, r9.z);
        r9.z = min(2, r9.z);
        r10.z = -r10.x * r10.x + 1;
        r10.z = 0.0795774683 * r10.z;
        r9.z = r9.z * r9.z;
        r9.z = rcp(r9.z);
        r9.z = r10.z * r9.z;
        r9.z = max(0, r9.z);
        r9.z = min(10000, r9.z);
        r10.z = r9.x;
        r11.w = r1.w;
        while (true) {
          r12.x = cmp((uint)r2.w < (uint)r11.w);
          if (r12.x != 0) break;
          r12.x = (uint)r11.w;
          r12.x = 0.5 + r12.x;
          r12.y = 0.0078125 * r12.x;
          r12.y = r12.y * r12.y;
          r12.y = 1400 * r12.y;
          r12.x = r12.x * 0.0078125 + 0.0078125;
          r12.x = r12.x * r12.x;
          r12.x = r12.x * 1400 + -r12.y;
          r14.xyz = r12.yyy * r2.xyz;
          r12.z = dot(r14.xyz, r14.xyz);
          r12.z = sqrt(r12.z);
          r12.w = (int)-r0.y + (int)r11.w;
          r13.x = 1 << (int)r12.w;
          r13.x = (int)r10.z & (int)r13.x;
          r15.xyz = x1[0].xyz;
          r15.xyz = r13.xxx ? r15.xyz : float3(0,0,0);
          r13.x = r2.z * r12.y + r13.w;
          r13.x = -r13.z * r13.x;
          r13.x = exp2(r13.x);
          r13.x = min(1, r13.x);
          r13.x = r13.y * r13.x;
          r13.x = min(r13.x, r3.w);
          r16.xyz = r13.xxx * r11.xyz;
          r13.x = r13.x * r10.y;
          r16.xyz = -r16.xyz * r12.zzz;
          r16.xyz = exp2(r16.xyz);
          r17.xyz = r2.xyz * r12.yyy + postFxControl5.xyz;
          r12.y = dot(r17.xyz, postFxControl6.xyz);
          r12.y = postFxControl6.w + r12.y;
          r12.y = 0.00300000003 * r12.y;
          r12.y = max(1, r12.y);
          r12.y = min(2, r12.y);
          r12.y = (uint)r12.y;
          r17.xyz = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * r14.yyy;
          r14.xyw = r14.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r17.xyz;
          r14.xyz = r14.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r14.xyw;
          r14.xyz = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r14.xyz;
          r14.xy = -sunConstants.splitPinTransform[r12.y].xy + r14.xy;
          r14.xy = sunConstants.splitPinTransform[r12.y].zz * r14.xy;
          r17.xy = r14.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r14.x = -sunConstants.splitDepthOffset + r14.z;
          r14.x = -r14.x * 6.10351563e-05 + 0.999499977;
          r12.y = (int)r12.y + (int16)sunConstants.splitArrayOffset;
          r17.z = (uint)r12.y;
          r12.y = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r14.x).x;
          r12.x = r13.x * r12.x;
          r12.y = r12.x * r12.y;
          r14.xyz = r16.xyz * r12.yyy;
          r12.y = 0.000500000024 * r12.z;
          r5.z = min(1, r12.y);
          r17.xyz = codeTexture4.SampleLevel(ScatterSampler_s, r5.xyz, 0).xyz;
          r16.xyz = r17.xyz * r16.xyz;
          r12.xyz = r16.xyz * r12.xxx;
          r14.xyz = sunConstants.color.xyz * r14.xyz;
          r12.xyz = float3(0.0795774683,0.0795774683,0.0795774683) * r12.xyz;
          r12.xyz = r14.xyz * r9.zzz + r12.xyz;
          r12.xyz = r15.xyz + r12.xyz;
          x1[0].xyz = r12.xyz;
          bitmask.z = ((~(-1 << 1)) << r12.w) & 0xffffffff;  r10.z = (((uint)1 << r12.w) & bitmask.z) | ((uint)r10.z & ~bitmask.z);
          r11.w = (int)r11.w + 1;
        }
        r9.x = r10.z;
        r12.xyz = x1[0].xyz;
        x0[0].xyz = r12.xyz;
        break;
        case 4 :        r12.xyz = x0[0].xyz;
        x2[0].xyz = r12.xyz;
        r1.w = 0.000714285707 * r0.w;
        r1.w = rsqrt(r1.w);
        r1.w = 1 / r1.w;
        r1.w = 127 * r1.w;
        r1.w = floor(r1.w);
        r1.w = (uint)r1.w;
        r1.w = max((uint)r1.w, (uint)r0.y);
        r2.w = 0.000714285707 * r9.w;
        r2.w = rsqrt(r2.w);
        r2.w = 1 / r2.w;
        r2.w = 127 * r2.w;
        r2.w = floor(r2.w);
        r2.w = (uint)r2.w;
        r2.w = min((uint)r2.w, (uint)r1.z);
        r3.w = 100 * r13.y;
        r9.z = r10.x * r0.z + 1;
        r9.z = max(9.99999997e-07, r9.z);
        r9.z = min(2, r9.z);
        r11.w = -r10.x * r10.x + 1;
        r11.w = 0.0795774683 * r11.w;
        r9.z = r9.z * r9.z;
        r9.z = rcp(r9.z);
        r9.z = r11.w * r9.z;
        r9.z = max(0, r9.z);
        r9.z = min(10000, r9.z);
        r11.w = r9.x;
        r12.x = r1.w;
        while (true) {
          r12.y = cmp((uint)r2.w < (uint)r12.x);
          if (r12.y != 0) break;
          r12.y = (uint)r12.x;
          r12.y = 0.5 + r12.y;
          r12.z = 0.0078125 * r12.y;
          r12.z = r12.z * r12.z;
          r12.z = 1400 * r12.z;
          r12.y = r12.y * 0.0078125 + 0.0078125;
          r12.y = r12.y * r12.y;
          r12.y = r12.y * 1400 + -r12.z;
          r14.xyz = r12.zzz * r2.xyz;
          r12.w = dot(r14.xyz, r14.xyz);
          r12.w = sqrt(r12.w);
          r13.x = (int)-r0.y + (int)r12.x;
          r14.w = 1 << (int)r13.x;
          r14.w = (int)r11.w & (int)r14.w;
          r15.xyz = x2[0].xyz;
          r15.xyz = r14.www ? r15.xyz : float3(0,0,0);
          r14.w = r2.z * r12.z + r13.w;
          r14.w = r14.w * -r13.z;
          r14.w = exp2(r14.w);
          r14.w = min(1, r14.w);
          r14.w = r14.w * r13.y;
          r14.w = min(r14.w, r3.w);
          r16.xyz = r14.www * r11.xyz;
          r14.w = r14.w * r10.y;
          r16.xyz = -r16.xyz * r12.www;
          r16.xyz = exp2(r16.xyz);
          r17.xyz = r2.xyz * r12.zzz + postFxControl5.xyz;
          r12.z = dot(r17.xyz, postFxControl6.xyz);
          r12.z = postFxControl6.w + r12.z;
          r12.z = 0.00300000003 * r12.z;
          r12.z = max(1, r12.z);
          r12.z = min(2, r12.z);
          r12.z = (uint)r12.z;
          r17.xyz = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * r14.yyy;
          r17.xyz = r14.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r17.xyz;
          r14.xyz = r14.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r17.xyz;
          r14.xyz = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r14.xyz;
          r14.xy = -sunConstants.splitPinTransform[r12.z].xy + r14.xy;
          r14.xy = sunConstants.splitPinTransform[r12.z].zz * r14.xy;
          r17.xy = r14.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r14.x = -sunConstants.splitDepthOffset + r14.z;
          r14.x = -r14.x * 6.10351563e-05 + 0.999499977;
          r12.z = (int)r12.z + (int16)sunConstants.splitArrayOffset;
          r17.z = (uint)r12.z;
          r12.z = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r14.x).x;
          r12.y = r14.w * r12.y;
          r12.z = r12.y * r12.z;
          r14.xyz = r16.xyz * r12.zzz;
          r12.z = 0.000500000024 * r12.w;
          r5.w = min(1, r12.z);
          r17.xyz = codeTexture4.SampleLevel(ScatterSampler_s, r5.xyw, 0).xyz;
          r16.xyz = r17.xyz * r16.xyz;
          r12.yzw = r16.xyz * r12.yyy;
          r14.xyz = sunConstants.color.xyz * r14.xyz;
          r12.yzw = float3(0.0795774683,0.0795774683,0.0795774683) * r12.yzw;
          r12.yzw = r14.xyz * r9.zzz + r12.yzw;
          r12.yzw = r15.xyz + r12.yzw;
          x2[0].xyz = r12.yzw;
          bitmask.w = ((~(-1 << 1)) << r13.x) & 0xffffffff;  r11.w = (((uint)1 << r13.x) & bitmask.w) | ((uint)r11.w & ~bitmask.w);
          r12.x = (int)r12.x + 1;
        }
        r9.x = r11.w;
        r12.xyz = x2[0].xyz;
        x0[0].xyz = r12.xyz;
        break;
        case 5 :        r12.xyz = x0[0].xyz;
        x3[0].xyz = r12.xyz;
        r1.w = 0.000714285707 * r0.w;
        r1.w = rsqrt(r1.w);
        r1.w = 1 / r1.w;
        r1.w = 127 * r1.w;
        r1.w = floor(r1.w);
        r1.w = (uint)r1.w;
        r1.w = max((uint)r1.w, (uint)r0.y);
        r2.w = 0.000714285707 * r9.w;
        r2.w = rsqrt(r2.w);
        r2.w = 1 / r2.w;
        r2.w = 127 * r2.w;
        r2.w = floor(r2.w);
        r2.w = (uint)r2.w;
        r2.w = min((uint)r2.w, (uint)r1.z);
        r3.w = 100 * r13.y;
        r5.w = r10.x * r0.z + 1;
        r5.w = max(9.99999997e-07, r5.w);
        r5.w = min(2, r5.w);
        r9.z = -r10.x * r10.x + 1;
        r9.z = 0.0795774683 * r9.z;
        r5.w = r5.w * r5.w;
        r5.w = rcp(r5.w);
        r5.w = r9.z * r5.w;
        r5.w = max(0, r5.w);
        r5.w = min(10000, r5.w);
        r9.z = r9.x;
        r12.x = r1.w;
        while (true) {
          r12.y = cmp((uint)r2.w < (uint)r12.x);
          if (r12.y != 0) break;
          r12.y = (uint)r12.x;
          r12.y = 0.5 + r12.y;
          r12.z = 0.0078125 * r12.y;
          r12.z = r12.z * r12.z;
          r12.z = 1400 * r12.z;
          r12.y = r12.y * 0.0078125 + 0.0078125;
          r12.y = r12.y * r12.y;
          r12.y = r12.y * 1400 + -r12.z;
          r14.xyz = r12.zzz * r2.xyz;
          r12.w = dot(r14.xyz, r14.xyz);
          r12.w = sqrt(r12.w);
          r13.x = (int)-r0.y + (int)r12.x;
          r14.w = 1 << (int)r13.x;
          r14.w = (int)r9.z & (int)r14.w;
          r15.xyz = x3[0].xyz;
          r15.xyz = r14.www ? r15.xyz : float3(0,0,0);
          r14.w = r2.z * r12.z + r13.w;
          r14.w = r14.w * -r13.z;
          r14.w = exp2(r14.w);
          r14.w = min(1, r14.w);
          r14.w = r14.w * r13.y;
          r14.w = min(r14.w, r3.w);
          r16.xyz = r14.www * r11.xyz;
          r14.w = r14.w * r10.y;
          r16.xyz = -r16.xyz * r12.www;
          r16.xyz = exp2(r16.xyz);
          r17.xyz = r2.xyz * r12.zzz + postFxControl5.xyz;
          r12.z = dot(r17.xyz, postFxControl6.xyz);
          r12.z = postFxControl6.w + r12.z;
          r12.z = 0.00300000003 * r12.z;
          r12.z = max(1, r12.z);
          r12.z = min(2, r12.z);
          r12.z = (uint)r12.z;
          r17.xyz = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * r14.yyy;
          r17.xyz = r14.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r17.xyz;
          r14.xyz = r14.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r17.xyz;
          r14.xyz = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r14.xyz;
          r14.xy = -sunConstants.splitPinTransform[r12.z].xy + r14.xy;
          r14.xy = sunConstants.splitPinTransform[r12.z].zz * r14.xy;
          r17.xy = r14.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r14.x = -sunConstants.splitDepthOffset + r14.z;
          r14.x = -r14.x * 6.10351563e-05 + 0.999499977;
          r12.z = (int)r12.z + (int16)sunConstants.splitArrayOffset;
          r17.z = (uint)r12.z;
          r12.z = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r14.x).x;
          r12.y = r14.w * r12.y;
          r12.z = r12.y * r12.z;
          r14.xyz = r16.xyz * r12.zzz;
          r12.z = 0.000500000024 * r12.w;
          r5.z = min(1, r12.z);
          r17.xyz = codeTexture4.SampleLevel(ScatterSampler_s, r5.xyz, 0).xyz;
          r16.xyz = r17.xyz * r16.xyz;
          r12.yzw = r16.xyz * r12.yyy;
          r14.xyz = sunConstants.color.xyz * r14.xyz;
          r12.yzw = float3(0.0795774683,0.0795774683,0.0795774683) * r12.yzw;
          r12.yzw = r14.xyz * r5.www + r12.yzw;
          r12.yzw = r15.xyz + r12.yzw;
          x3[0].xyz = r12.yzw;
          bitmask.z = ((~(-1 << 1)) << r13.x) & 0xffffffff;  r9.z = (((uint)1 << r13.x) & bitmask.z) | ((uint)r9.z & ~bitmask.z);
          r12.x = (int)r12.x + 1;
        }
        r9.x = r9.z;
        r12.xyz = x3[0].xyz;
        x0[0].xyz = r12.xyz;
        break;
        default :
        break;
      }
      if (r10.w != 0) {
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r1.w, r9.y, l(184), t1.xxxx
      r1.w = ScatterSampler[]..swiz;
        r12.xyz = x0[0].xyz;
        x4[0].xyz = r12.xyz;
        r2.w = 100 * r13.y;
        r3.w = -r10.x * r10.x + 1;
        r3.w = 0.0795774683 * r3.w;
        r5.z = r9.x;
        r4.z = r6.x;
        while (true) {
          r5.w = cmp((uint)r6.y < (uint)r4.z);
          if (r5.w != 0) break;
          r5.w = codeTexture0.Load(r4.xyzw).x;
          r10.w = (uint)r4.z << 5;
          r12.x = r5.z;
          r12.y = r5.w;
          while (true) {
            if (r12.y == 0) break;
            r12.z = firstbitlow((uint)r12.y);
            r12.w = 1 << (int)r12.z;
            r13.x = (int)r12.w & (int)r12.y;
            if (r13.x != 0) {
              r12.y = (int)r12.w ^ (int)r12.y;
              r12.z = (int)r10.w + (int)r12.z;
              r14.xyz = x4[0].xyz;
              x5[0].xyz = r14.xyz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r14.xyz, r12.z, l(12), t11.xyzx
            r14.x = ScatterSampler[]..swiz;
            r14.y = ScatterSampler[]..swiz;
            r14.z = ScatterSampler[]..swiz;
              r12.w = dot(r14.xyz, r14.xyz);
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r14.xyz, r12.z, l(0), t11.xyzx
            r14.x = ScatterSampler[]..swiz;
            r14.y = ScatterSampler[]..swiz;
            r14.z = ScatterSampler[]..swiz;
              r13.x = dot(-r14.xyz, r3.xyz);
              r14.x = dot(-r14.xyz, -r14.xyz);
              r12.w = r14.x + -r12.w;
              r12.w = r13.x * r13.x + -r12.w;
              r14.x = cmp(0 < r12.w);
              r12.w = sqrt(r12.w);
              r14.y = -r13.x + -r12.w;
              r12.w = -r13.x + r12.w;
              r13.x = min(r14.y, r12.w);
              r12.w = max(r14.y, r12.w);
              r13.x = max(r13.x, r0.w);
              r13.x = min(r13.x, r9.w);
              r12.w = max(r12.w, r0.w);
              r12.w = min(r12.w, r9.w);
              r14.y = 9.99999997e-07 + r13.x;
              r14.y = cmp(r14.y < r12.w);
              r14.x = r14.y ? r14.x : 0;
              if (r14.x != 0) {
                r12.z = (int)r12.z * 15;
                r14.x = 0.000714285707 * r13.x;
                r14.x = rsqrt(r14.x);
                r14.x = 1 / r14.x;
                r14.x = 127 * r14.x;
                r14.x = floor(r14.x);
                r14.x = (uint)r14.x;
                r14.x = max((uint)r14.x, (uint)r0.y);
                r12.w = 0.000714285707 * r12.w;
                r12.w = rsqrt(r12.w);
                r12.w = 1 / r12.w;
                r12.w = 127 * r12.w;
                r12.w = floor(r12.w);
                r12.w = (uint)r12.w;
                r12.w = min((uint)r12.w, (uint)r1.z);
                if (3 == 0) r14.y = 0; else if (3+27 < 32) {                 r14.y = (uint)lightConstantsCB[r12.z].data[1].w << (32-(3 + 27)); r14.y = (uint)r14.y >> (32-3);                } else r14.y = (uint)lightConstantsCB[r12.z].data[1].w >> 27;
                r14.z = 0x0000ffff & (int)lightConstantsCB[r12.z].data[1].w;
                r14.w = lightConstantsCB[r12.z].data[3].x * lightConstantsCB[r12.z].data[3].x;
                r15.x = cmp(lightConstantsCB[r12.z].data[10].w < 0.00048828125);
                r16.z = (uint)r14.z;
                r14.y = cmp((int)r14.y != 1);
                r17.xyz = lightConstantsCB[r12.z].data[7].yzw;
                r17.w = lightConstantsCB[r12.z].data[8].x;
                r18.xyz = lightConstantsCB[r12.z].data[4].yzw;
                r18.w = lightConstantsCB[r12.z].data[5].x;
                r19.xyz = lightConstantsCB[r12.z].data[5].yzw;
                r19.w = lightConstantsCB[r12.z].data[6].x;
                r20.xyz = lightConstantsCB[r12.z].data[6].yzw;
                r20.w = lightConstantsCB[r12.z].data[7].x;
                r14.z = r12.x;
                r15.y = r14.x;
                while (true) {
                  r15.z = cmp((uint)r12.w < (uint)r15.y);
                  if (r15.z != 0) break;
                  r15.z = (uint)r15.y;
                  r15.z = 0.5 + r15.z;
                  r15.w = 0.0078125 * r15.z;
                  r15.w = r15.w * r15.w;
                  r15.w = 1400 * r15.w;
                  r8.xyz = r15.www * r2.xyz;
                  r16.w = (int)-r0.y + (int)r15.y;
                  r21.x = 1 << (int)r16.w;
                  r21.x = (int)r14.z & (int)r21.x;
                  r21.yzw = x5[0].xyz;
                  r21.xyz = r21.xxx ? r21.yzw : float3(0,0,0);
                  r21.w = dot(r17.xyzw, r8.xyzw);
                  r22.x = 1 / r21.w;
                  r22.y = cmp(r22.x < 1);
                  if (r22.y != 0) {
                    r23.x = dot(r18.xyzw, r8.xyzw);
                    r23.y = dot(r19.xyzw, r8.xyzw);
                    r23.z = dot(r20.xyzw, r8.xyzw);
                    r22.xyz = r23.xyz * r22.xxx;
                    r23.xyz = -r2.xyz * r15.www + lightConstantsCB[r12.z].data[0].xyz;
                    r22.w = dot(r23.xyz, r23.xyz);
                    r23.w = r14.w / r22.w;
                    r23.w = min(1, r23.w);
                    r24.xy = saturate(r21.ww * lightConstantsCB[r12.z].data[2].xz + lightConstantsCB[r12.z].data[2].yw);
                    r24.zw = r24.xy * r24.xy;
                    r24.xy = r24.xy * float2(-2,-2) + float2(3,3);
                    r24.xy = r24.zw * r24.xy;
                    r23.w = r24.x * r23.w;
                    r23.w = r23.w * r24.y;
                    if (r15.x != 0) {
                      r24.xy = saturate(abs(r22.xy) * lightConstantsCB[r12.z].data[12].xy + lightConstantsCB[r12.z].data[12].zw);
                      r24.zw = r24.xy * r24.xy;
                      r24.xy = r24.xy * float2(-2,-2) + float2(3,3);
                      r24.xy = r24.zw * r24.xy;
                      r24.x = r24.x * r24.y;
                    } else {
                      r25.xyzw = saturate(lightConstantsCB[r12.z].data[11].xyzw * abs(r22.yyxx));
                      r25.xyzw = log2(r25.xyzw);
                      r25.xyzw = lightConstantsCB[r12.z].data[12].zzzz * r25.xyzw;
                      r25.xyzw = exp2(r25.xyzw);
                      r24.yz = r25.xy + r25.zw;
                      r24.yz = log2(r24.yz);
                      r24.yz = lightConstantsCB[r12.z].data[12].ww * r24.yz;
                      r24.yz = exp2(r24.yz);
                      r24.y = lightConstantsCB[r12.z].data[12].x * r24.y;
                      r24.w = lightConstantsCB[r12.z].data[12].y * r24.z + -1;
                      r24.y = lightConstantsCB[r12.z].data[12].y * r24.z + -r24.y;
                      r24.y = saturate(r24.w / r24.y);
                      r24.z = r24.y * r24.y;
                      r24.y = r24.y * -2 + 3;
                      r24.x = r24.z * r24.y;
                    }
                    r23.w = r24.x * r23.w;
                    r24.x = cmp(0 < r23.w);
                    if (r24.x != 0) {
                      if (r14.y != 0) {
                        r22.xy = saturate(r22.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                        r16.x = r22.x * lightConstantsCB[r12.z].data[8].y + lightConstantsCB[r12.z].data[8].z;
                        r16.y = r22.y * lightConstantsCB[r12.z].data[8].w + lightConstantsCB[r12.z].data[9].x;
                        r24.xyz = float3(0.0029296875,0.0029296875,0) + r16.xyz;
                        r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r22.z).x;
                        r24.xyz = float3(-0.0029296875,0.0029296875,0) + r16.xyz;
                        r22.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r22.z).x;
                        r22.x = r22.x + r22.y;
                        r24.xyz = float3(0.0029296875,-0.0029296875,0) + r16.xyz;
                        r22.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r22.z).x;
                        r22.x = r22.x + r22.y;
                        r24.xyz = float3(-0.0029296875,-0.0029296875,0) + r16.xyz;
                        r16.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r22.z).x;
                        r16.x = r22.x + r16.x;
                        r16.x = 0.25 * r16.x;
                      } else {
                        r16.x = 1;
                      }
                      r16.x = r16.x * r23.w;
                      r16.y = cmp(0 < r16.x);
                      if (r16.y != 0) {
                        r15.z = r15.z * 0.0078125 + 0.0078125;
                        r15.z = r15.z * r15.z;
                        r15.z = r15.z * 1400 + -r15.w;
                        r8.x = dot(r8.xyz, r8.xyz);
                        r8.x = sqrt(r8.x);
                        r8.y = r2.z * r15.w + r13.w;
                        r8.y = -r13.z * r8.y;
                        r8.y = exp2(r8.y);
                        r8.y = min(1, r8.y);
                        r8.y = r13.y * r8.y;
                        r8.y = min(r8.y, r2.w);
                        r22.xyz = r11.xyz * r8.yyy;
                        r8.y = r10.y * r8.y;
                        r8.z = rsqrt(r22.w);
                        r23.xyz = r23.xyz * r8.zzz;
                        r8.z = dot(-r3.xyz, r23.xyz);
                        r8.z = max(-1, r8.z);
                        r8.z = min(1, r8.z);
                        r8.z = r10.x * r8.z + 1;
                        r8.z = max(9.99999997e-07, r8.z);
                        r8.z = min(2, r8.z);
                        r8.z = r8.z * r8.z;
                        r8.z = rcp(r8.z);
                        r8.z = r8.z * r3.w;
                        r8.z = max(0, r8.z);
                        r8.z = min(10000, r8.z);
                        r15.w = r8.x + -r13.x;
                        r15.w = max(0, r15.w);
                        r15.z = min(r15.z, r15.w);
                        r8.x = r21.w + r8.x;
                        r22.xyz = r22.xyz * -r8.xxx;
                        r22.xyz = exp2(r22.xyz);
                        r22.xyz = min(float3(1,1,1), r22.xyz);
                        r8.x = r8.y * r8.z;
                        r8.x = r8.x * r15.z;
                        r8.x = r8.x * r16.x;
                        r8.xyz = r22.xyz * r8.xxx;
                        r8.xyz = r8.xyz * r1.www;
                        r22.x = lightConstantsCB[r12.z].data[0].w * r8.x;
                        r22.yz = lightConstantsCB[r12.z].data[1].xy * r8.yz;
                      } else {
                        r22.xyz = float3(0,0,0);
                      }
                    } else {
                      r22.xyz = float3(0,0,0);
                      r16.y = 0;
                    }
                  } else {
                    r22.xyz = float3(0,0,0);
                    r16.y = 0;
                  }
                  r8.xyz = r22.xyz + r21.xyz;
                  r21.xyz = x5[0].xyz;
                  r8.xyz = r16.yyy ? r8.xyz : r21.xyz;
                  x5[0].xyz = r8.xyz;
                  bitmask.x = ((~(-1 << 1)) << r16.w) & 0xffffffff;  r8.x = (((uint)1 << r16.w) & bitmask.x) | ((uint)r14.z & ~bitmask.x);
                  r14.z = r16.y ? r8.x : r14.z;
                  r15.y = (int)r15.y + 1;
                }
                r12.x = r14.z;
              }
              r8.xyz = x5[0].xyz;
              x4[0].xyz = r8.xyz;
            }
          }
          r5.z = r12.x;
          r4.z = (int)r4.z + 1;
        }
        r8.xyz = x4[0].xyz;
        x6[0].xyz = r8.xyz;
        r9.x = r5.z;
        r7.z = r6.z;
        while (true) {
          r4.z = cmp((uint)r6.w < (uint)r7.z);
          if (r4.z != 0) break;
          r4.z = codeTexture1.Load(r7.xyzw).x;
          r5.w = (uint)r7.z << 5;
          r8.x = r9.x;
          r8.y = r4.z;
          while (true) {
            if (r8.y == 0) break;
            r8.z = firstbitlow((uint)r8.y);
            r10.w = 1 << (int)r8.z;
            r12.y = (int)r8.y & (int)r10.w;
            if (r12.y != 0) {
              r8.y = (int)r8.y ^ (int)r10.w;
              r8.z = (int)r5.w + (int)r8.z;
              r12.yzw = x6[0].xyz;
              x7[0].xyz = r12.yzw;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r12.yzw, r8.z, l(12), t11.xxyz
            r12.y = ScatterSampler[]..swiz;
            r12.z = ScatterSampler[]..swiz;
            r12.w = ScatterSampler[]..swiz;
              r10.w = max(r12.z, r12.w);
              r10.w = max(r12.y, r10.w);
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r12.yzw, r8.z, l(0), t11.xxyz
            r12.y = ScatterSampler[]..swiz;
            r12.z = ScatterSampler[]..swiz;
            r12.w = ScatterSampler[]..swiz;
              r13.x = dot(-r12.yzw, r3.xyz);
              r12.y = dot(-r12.yzw, -r12.yzw);
              r10.w = -r10.w * r10.w + r12.y;
              r10.w = r13.x * r13.x + -r10.w;
              r12.y = cmp(0 < r10.w);
              r10.w = sqrt(r10.w);
              r12.z = -r13.x + -r10.w;
              r10.w = -r13.x + r10.w;
              r12.w = min(r12.z, r10.w);
              r10.w = max(r12.z, r10.w);
              r12.z = max(r12.w, r0.w);
              r12.z = min(r12.z, r9.w);
              r10.w = max(r10.w, r0.w);
              r10.w = min(r10.w, r9.w);
              r12.w = 9.99999997e-07 + r12.z;
              r12.w = cmp(r12.w < r10.w);
              r12.y = r12.w ? r12.y : 0;
              if (r12.y != 0) {
                r8.z = (int)r8.z * 15;
                r12.y = 0.000714285707 * r12.z;
                r12.y = rsqrt(r12.y);
                r12.y = 1 / r12.y;
                r12.y = 127 * r12.y;
                r12.y = floor(r12.y);
                r12.y = (uint)r12.y;
                r12.y = max((uint)r12.y, (uint)r0.y);
                r10.w = 0.000714285707 * r10.w;
                r10.w = rsqrt(r10.w);
                r10.w = 1 / r10.w;
                r10.w = 127 * r10.w;
                r10.w = floor(r10.w);
                r10.w = (uint)r10.w;
                r10.w = min((uint)r10.w, (uint)r1.z);
                r12.z = lightConstantsCB[r8.z].data[3].x * lightConstantsCB[r8.z].data[3].x;
                r12.w = r8.x;
                r13.x = r12.y;
                while (true) {
                  r14.x = cmp((uint)r10.w < (uint)r13.x);
                  if (r14.x != 0) break;
                  r14.x = (uint)r13.x;
                  r14.x = 0.5 + r14.x;
                  r14.y = 0.0078125 * r14.x;
                  r14.y = r14.y * r14.y;
                  r14.y = 1400 * r14.y;
                  r15.xyz = r14.yyy * r2.xyz;
                  r14.w = (int)-r0.y + (int)r13.x;
                  r15.w = 1 << (int)r14.w;
                  r15.w = (int)r12.w & (int)r15.w;
                  r16.xyz = x7[0].xyz;
                  r16.xyz = r15.www ? r16.xyz : float3(0,0,0);
                  r17.xyz = -r2.xyz * r14.yyy + lightConstantsCB[r8.z].data[0].xyz;
                  r15.w = dot(r17.xyz, r17.xyz);
                  r16.w = sqrt(r15.w);
                  r17.w = r12.z / r15.w;
                  r17.w = min(1, r17.w);
                  r18.xy = saturate(r16.ww * lightConstantsCB[r8.z].data[2].xz + lightConstantsCB[r8.z].data[2].yw);
                  r18.zw = r18.xy * r18.xy;
                  r18.xy = r18.xy * float2(-2,-2) + float2(3,3);
                  r18.xy = r18.zw * r18.xy;
                  r17.w = r18.x * r17.w;
                  r17.w = r17.w * r18.y;
                  r18.x = cmp(0 < r17.w);
                  if (r18.x != 0) {
                    r14.x = r14.x * 0.0078125 + 0.0078125;
                    r14.x = r14.x * r14.x;
                    r14.x = r14.x * 1400 + -r14.y;
                    r15.x = dot(r15.xyz, r15.xyz);
                    r15.x = sqrt(r15.x);
                    r14.y = r2.z * r14.y + r13.w;
                    r14.y = r14.y * -r13.z;
                    r14.y = exp2(r14.y);
                    r14.y = min(1, r14.y);
                    r14.y = r14.y * r13.y;
                    r14.y = min(r14.y, r2.w);
                    r18.yzw = r14.yyy * r11.xyz;
                    r14.y = r14.y * r10.y;
                    r15.y = rsqrt(r15.w);
                    r15.yzw = r17.xyz * r15.yyy;
                    r15.y = dot(-r3.xyz, r15.yzw);
                    r15.y = max(-1, r15.y);
                    r15.y = min(1, r15.y);
                    r15.y = r10.x * r15.y + 1;
                    r15.y = max(9.99999997e-07, r15.y);
                    r15.y = min(2, r15.y);
                    r15.y = r15.y * r15.y;
                    r15.y = rcp(r15.y);
                    r15.y = r15.y * r3.w;
                    r15.y = max(0, r15.y);
                    r15.x = r16.w + r15.x;
                    r15.xzw = r18.yzw * -r15.xxx;
                    r15.xzw = exp2(r15.xzw);
                    r15.xyzw = min(float4(1,10000,1,1), r15.xyzw);
                    r14.y = r15.y * r14.y;
                    r14.x = r14.y * r14.x;
                    r14.x = r14.x * r17.w;
                    r15.xyz = r15.xzw * r14.xxx;
                    r15.xyz = r15.xyz * r1.www;
                    r17.x = lightConstantsCB[r8.z].data[0].w * r15.x;
                    r17.yz = lightConstantsCB[r8.z].data[1].xy * r15.yz;
                  } else {
                    r17.xyz = float3(0,0,0);
                  }
                  r15.xyz = r17.xyz + r16.xyz;
                  r16.xyz = x7[0].xyz;
                  r15.xyz = r18.xxx ? r15.xyz : r16.xyz;
                  x7[0].xyz = r15.xyz;
                  bitmask.x = ((~(-1 << 1)) << r14.w) & 0xffffffff;  r14.x = (((uint)1 << r14.w) & bitmask.x) | ((uint)r12.w & ~bitmask.x);
                  r12.w = r18.x ? r14.x : r12.w;
                  r13.x = (int)r13.x + 1;
                }
                r8.x = r12.w;
              }
              r14.xyw = x7[0].xyz;
              x6[0].xyz = r14.xyw;
            }
          }
          r9.x = r8.x;
          r7.z = (int)r7.z + 1;
        }
        r10.xyw = x6[0].xyz;
        x0[0].xyz = r10.xyw;
      }
    }
    r9.y = (int)r9.y + 1;
  }
  r0.xzw = postFxControlB.xyz * r1.yyy;
  r0.xzw = postFxControlA.xyz * r1.xxx + r0.xzw;
  r0.xzw = postFxControlC.xyz + r0.xzw;
  r1.xyz = x0[0].xyz;
  r2.xy = vThreadID.xy;
  r3.xy = vThreadID.xy;
  r1.w = 0;
  while (true) {
    r4.x = cmp((uint)r1.w >= 8);
    if (r4.x != 0) break;
    r2.zw = (int2)r0.yy + (int2)r1.ww;
    r4.x = 1 << (int)r1.w;
    r4.x = (int)r4.x & (int)r9.x;
    if (r4.x == 0) {
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r2.xyzw, l(0,0,0,0)
    } else {
      r2.z = (uint)r2.w;
      r2.z = 0.00787401572 * r2.z;
      r2.z = r2.z * r2.z;
      r2.z = 1400 * r2.z;
      r4.xyz = r0.xzw * r2.zzz + postFxControlD.xyz;
      r5.xyz = postFxConst01.xyw * r4.yyy;
      r4.xyw = r4.xxx * postFxConst00.xyw + r5.xyz;
      r4.xyz = r4.zzz * postFxConst02.xyw + r4.xyw;
      r4.xyz = postFxConst03.xyw + r4.xyz;
      r4.xy = r4.xy / r4.zz;
      r5.xy = r4.xy * float2(0.5,-0.5) + float2(0.5,0.5);
      r2.z = 0.000714285707 * r4.z;
      r2.z = rsqrt(r2.z);
      r5.z = 1 / r2.z;
      r4.xyz = saturate(r5.xyz);
      r4.xyz = r5.xyz + -r4.xyz;
      r2.z = dot(r4.xyz, float3(1,1,1));
      r2.z = cmp(abs(r2.z) < 9.99999997e-07);
      r2.z = r2.z ? 0.850000 : 0;
      r4.xyz = codeTexture7.SampleLevel(ScatterSampler_s, r5.xyz, 0).xyz;
      r4.xyzw = r4.xyzx + -r1.xyzx;
      r4.xyzw = r2.zzzz * r4.xyzw + r1.xyzx;
      r3.zw = r2.ww;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r3.xyzw, r4.xyzw
    }
    r1.w = (int)r1.w + 1;
  }
  return;
}