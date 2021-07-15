// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:53 2021

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

cbuffer PerSceneConsts : register(b1)
{
  row_major float4x4 projectionMatrix : packoffset(c0);
  row_major float4x4 viewMatrix : packoffset(c4);
  row_major float4x4 viewProjectionMatrix : packoffset(c8);
  row_major float4x4 inverseProjectionMatrix : packoffset(c12);
  row_major float4x4 inverseViewMatrix : packoffset(c16);
  row_major float4x4 inverseViewProjectionMatrix : packoffset(c20);
  float4 eyeOffset : packoffset(c24);
  float4 adsZScale : packoffset(c25);
  float4 hdrControl0 : packoffset(c26);
  float4 hdrControl1 : packoffset(c27);
  float4 fogColor : packoffset(c28);
  float4 fogConsts : packoffset(c29);
  float4 fogConsts2 : packoffset(c30);
  float4 fogConsts3 : packoffset(c31);
  float4 fogConsts4 : packoffset(c32);
  float4 fogConsts5 : packoffset(c33);
  float4 fogConsts6 : packoffset(c34);
  float4 fogConsts7 : packoffset(c35);
  float4 fogConsts8 : packoffset(c36);
  float4 fogConsts9 : packoffset(c37);
  float3 sunFogDir : packoffset(c38);
  float4 sunFogColor : packoffset(c39);
  float2 sunFog : packoffset(c40);
  float4 zNear : packoffset(c41);
  float3 clothPrimaryTint : packoffset(c42);
  float3 clothSecondaryTint : packoffset(c43);
  float4 renderTargetSize : packoffset(c44);
  float4 upscaledTargetSize : packoffset(c45);
  float4 materialColor : packoffset(c46);
  float4 cameraUp : packoffset(c47);
  float4 cameraLook : packoffset(c48);
  float4 cameraSide : packoffset(c49);
  float4 cameraVelocity : packoffset(c50);
  float4 skyMxR : packoffset(c51);
  float4 skyMxG : packoffset(c52);
  float4 skyMxB : packoffset(c53);
  float4 sunMxR : packoffset(c54);
  float4 sunMxG : packoffset(c55);
  float4 sunMxB : packoffset(c56);
  float4 skyRotationTransition : packoffset(c57);
  float4 debugColorOverride : packoffset(c58);
  float4 debugAlphaOverride : packoffset(c59);
  float4 debugNormalOverride : packoffset(c60);
  float4 debugSpecularOverride : packoffset(c61);
  float4 debugGlossOverride : packoffset(c62);
  float4 debugOcclusionOverride : packoffset(c63);
  float4 debugStreamerControl : packoffset(c64);
  float4 emblemLUTSelector : packoffset(c65);
  float4 colorMatrixR : packoffset(c66);
  float4 colorMatrixG : packoffset(c67);
  float4 colorMatrixB : packoffset(c68);
  float4 gameTime : packoffset(c69);
  float4 gameTick : packoffset(c70);
  float4 subpixelOffset : packoffset(c71);
  float4 viewportDimensions : packoffset(c72);
  float4 viewSpaceScaleBias : packoffset(c73);
  float4 ui3dUVSetup0 : packoffset(c74);
  float4 ui3dUVSetup1 : packoffset(c75);
  float4 ui3dUVSetup2 : packoffset(c76);
  float4 ui3dUVSetup3 : packoffset(c77);
  float4 ui3dUVSetup4 : packoffset(c78);
  float4 ui3dUVSetup5 : packoffset(c79);
  float4 clipSpaceLookupScale : packoffset(c80);
  float4 clipSpaceLookupOffset : packoffset(c81);
  uint4 computeSpriteControl : packoffset(c82);
  float4 invBcTexSizes : packoffset(c83);
  float4 invMaskTexSizes : packoffset(c84);
  float4 relHDRExposure : packoffset(c85);
  uint4 triDensityFlags : packoffset(c86);
  float4 triDensityParams : packoffset(c87);
  float4 voldecalRevealTextureInfo : packoffset(c88);
  float4 extraClipPlane0 : packoffset(c89);
  float4 extraClipPlane1 : packoffset(c90);
  float4 shaderDebug : packoffset(c91);
  uint isDepthHack : packoffset(c92);
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

cbuffer RefProbePackCBuffer : register(b10)
{

  struct
  {
    uint4 data[14];
  } refProbeConstantsCB[273] : packoffset(c0);

}

cbuffer RefProbeBlendPackCBuffer : register(b11)
{

  struct
  {
    uint4 data[6];
  } refProbeAttenuationConstantsCB[682] : packoffset(c0);

}

SamplerState samplerLinearClamp_s : register(s4);
Texture2D<float> postEffect1 : register(t0);
Texture2DArray<uint> visibleProbes : register(t7);
Texture3D<float3> gProbeXArray : register(t17);
Texture3D<float3> gProbeYArray : register(t18);
Texture3D<float3> gProbeZArray : register(t19);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main()
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture3d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 4, 4, 4
  r0.xy = mad((int2)vThreadGroupID.xy, int2(4,4), (int2)vThreadIDInGroup.xy);
// Unknown use of GetDimensions for resinfo_ from missing reflection info, need manual fix.
// resinfo_indexable(texture3d)(float,float,float,float)_uint r1.xy, l(0), u0.xyzw
// Example for texture2d type, uint return:
tx.GetDimensions(0, uiDest.x, uiDest.y, uiDest.z);
rx = uiDest;
 state=1, constZero.eType=4, returnType=2, texture.eType=30, afImmediates[0]=0.000000
  r1.xy = cmp((uint2)r0.xy < (uint2)r1.xy);
  r1.x = r1.y ? r1.x : 0;
  if (r1.x == 0) {
    return;
  }
  r1.xy = (uint2)r0.xy;
  r1.z = 16 / postFxControl7.x;
  r2.xy = r1.xy * r1.zz;
  r2.xy = (uint2)r2.xy;
  r2.zw = float2(0,0);
  r1.w = postEffect1.Load(r2.xyz).x;
  r3.xyzw = (int4)r2.xyxy + int4(0,3,3,0);
  r4.xy = r3.zw;
  r4.zw = float2(0,0);
  r2.z = postEffect1.Load(r4.xyz).x;
  r3.zw = float2(0,0);
  r2.w = postEffect1.Load(r3.xyz).x;
  r3.xy = (int2)r2.xy + int2(3,3);
  r3.zw = float2(0,0);
  r2.x = postEffect1.Load(r3.xyz).x;
  r2.y = max(r2.z, r2.w);
  r1.w = max(r2.y, r1.w);
  r1.w = max(r1.w, r2.x);
  r2.x = cmp(r1.w < 0);
  if (r2.x != 0) {
    r0.z = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xyzz, l(0,0,0,0)
    return;
  }
  r1.xy = float2(0.5,0.5) + r1.xy;
  r1.xy = r1.xy * r1.zz;
  r1.xy = r1.xy / renderTargetSize.xy;
  r1.xy = r1.xy * float2(2,-2) + float2(-1,1);
  r1.xy = postFxControl4.xy * r1.xy;
  r1.z = 1;
  r1.xyz = r1.xyz * r1.www;
  r2.xyz = postFxControl1.xyz * r1.yyy;
  r1.xyw = r1.xxx * postFxControl0.xyz + r2.xyz;
  r1.xyz = r1.zzz * postFxControl2.xyz + r1.xyw;
  r1.xyz = postFxControl3.xyz + r1.xyz;
  r1.xyz = -postFxControl5.xyz + r1.xyz;
  r0.z = dot(r1.xyz, r1.xyz);
  r1.w = sqrt(r0.z);
  r2.x = max(1, zNear.x);
  r2.y = (uint)vThreadGroupID.z << 5;
  r2.z = (int)r2.y + 32;
  r2.w = 2000 + -r2.x;
  r0.z = rsqrt(r0.z);
  r1.xyz = r1.xyz * r0.zzz;
  if (26 == 0) r3.x = 0; else if (26+2 < 32) {   r3.x = (uint)r0.x << (32-(26 + 2)); r3.x = (uint)r3.x >> (32-26);  } else r3.x = (uint)r0.x >> 2;
  if (26 == 0) r3.y = 0; else if (26+2 < 32) {   r3.y = (uint)r0.y << (32-(26 + 2)); r3.y = (uint)r3.y >> (32-26);  } else r3.y = (uint)r0.y >> 2;
  r4.xy = (uint10)volumetric.firstProbe >> int2(5,5);
  r5.x = 0;
  r6.w = 0;
  r7.yz = float2(0,1);
  r8.x = 1;
  r9.xyz = float3(0,0,0);
  r0.z = r2.y;
  while (true) {
    r3.w = cmp((uint)r0.z >= (uint)r2.z);
    if (r3.w != 0) break;
    r0.w = (int)r0.z + (int)vThreadIDInGroup.z;
    r3.w = (uint)r0.w;
    r3.w = r3.w * r2.w;
    r3.w = r3.w * 0.015625 + r2.x;
    r4.z = cmp(r3.w < r1.w);
    if (r4.z != 0) {
      r10.xyz = r1.xyz * r3.www + postFxControl5.xyz;
      r4.z = dot(r10.xyz, postFxControl6.xyz);
      r4.z = postFxControl6.w + r4.z;
      r4.z = 0.0078125 * r4.z;
      r4.z = max(0, r4.z);
      r4.z = min(15, r4.z);
      r4.z = (uint)r4.z;
      r3.z = (uint)r4.z << 4;
      r9.xyz = float3(0,0,0);
      r5.z = r4.x;
      while (true) {
        r4.z = cmp((uint)r4.y < (uint)r5.z);
        if (r4.z != 0) break;
        r6.xyz = (int3)r3.xyz + (int3)r5.xxz;
        r4.z = visibleProbes.Load(r6.xyzw).x;
        r4.w = (uint)r5.z << 5;
        r10.xyz = r9.xyz;
        r10.w = r4.z;
        while (true) {
          if (r10.w == 0) break;
          r5.y = firstbitlow((uint)r10.w);
          r5.w = 1 << (int)r5.y;
          r6.x = (int)r5.w & (int)r10.w;
          if (r6.x != 0) {
            r10.w = (int)r5.w ^ (int)r10.w;
            r5.y = (int)r4.w + (int)r5.y;
            r5.y = (int)r5.y * 14;
            r6.xyz = r1.xyz * r3.www + -refProbeConstantsCB[r5.y].data[0].xyz;
            r5.w = 0x0000ffff & (int)refProbeConstantsCB[r5.y].data[7].z;
            if (6 == 0) r7.w = 0; else if (6+25 < 32) {             r7.w = (uint)refProbeConstantsCB[r5.y].data[7].z << (32-(6 + 25)); r7.w = (uint)r7.w >> (32-6);            } else r7.w = (uint)refProbeConstantsCB[r5.y].data[7].z >> 25;
            r8.z = (int)r5.w * 6;
            r8.w = dot(refProbeAttenuationConstantsCB[r8.z].data[0].xyz, r6.xyz);
            r8.w = saturate(refProbeAttenuationConstantsCB[r8.z].data[0].w + r8.w);
            r9.w = dot(refProbeAttenuationConstantsCB[r8.z].data[1].xyz, r6.xyz);
            r9.w = saturate(refProbeAttenuationConstantsCB[r8.z].data[1].w + r9.w);
            r8.w = r9.w * r8.w;
            r9.w = dot(refProbeAttenuationConstantsCB[r8.z].data[2].xyz, r6.xyz);
            r9.w = saturate(refProbeAttenuationConstantsCB[r8.z].data[2].w + r9.w);
            r8.w = r9.w * r8.w;
            r9.w = dot(refProbeAttenuationConstantsCB[r8.z].data[3].xyz, r6.xyz);
            r9.w = saturate(refProbeAttenuationConstantsCB[r8.z].data[3].w + r9.w);
            r8.w = r9.w * r8.w;
            r9.w = dot(refProbeAttenuationConstantsCB[r8.z].data[4].xyz, r6.xyz);
            r9.w = saturate(refProbeAttenuationConstantsCB[r8.z].data[4].w + r9.w);
            r8.w = r9.w * r8.w;
            r9.w = dot(refProbeAttenuationConstantsCB[r8.z].data[5].xyz, r6.xyz);
            r8.z = saturate(refProbeAttenuationConstantsCB[r8.z].data[5].w + r9.w);
            r7.x = r8.w * r8.z;
            r8.z = 1 & (int)refProbeConstantsCB[r5.y].data[6].x;
            r8.zw = r8.zz ? r7.xy : r7.zx;
            r7.x = refProbeConstantsCB[r5.y].data[6].x;
            r11.xy = r8.zw;
            r9.w = 1;
            while (true) {
              r11.z = cmp((int)r9.w >= (int)r7.w);
              if (r11.z != 0) break;
              r11.z = (int)r5.w + (int)r9.w;
              r11.z = (int)r11.z * 6;
              r11.w = dot(refProbeAttenuationConstantsCB[r11.z].data[0].xyz, r6.xyz);
              r11.w = saturate(refProbeAttenuationConstantsCB[r11.z].data[0].w + r11.w);
              r11.w = r11.x * r11.w;
              r12.x = dot(refProbeAttenuationConstantsCB[r11.z].data[1].xyz, r6.xyz);
              r12.x = saturate(refProbeAttenuationConstantsCB[r11.z].data[1].w + r12.x);
              r11.w = r12.x * r11.w;
              r12.x = dot(refProbeAttenuationConstantsCB[r11.z].data[2].xyz, r6.xyz);
              r12.x = saturate(refProbeAttenuationConstantsCB[r11.z].data[2].w + r12.x);
              r11.w = r12.x * r11.w;
              r12.x = dot(refProbeAttenuationConstantsCB[r11.z].data[3].xyz, r6.xyz);
              r12.x = saturate(refProbeAttenuationConstantsCB[r11.z].data[3].w + r12.x);
              r11.w = r12.x * r11.w;
              r12.x = dot(refProbeAttenuationConstantsCB[r11.z].data[4].xyz, r6.xyz);
              r12.x = saturate(refProbeAttenuationConstantsCB[r11.z].data[4].w + r12.x);
              r11.w = r12.x * r11.w;
              r12.x = dot(refProbeAttenuationConstantsCB[r11.z].data[5].xyz, r6.xyz);
              r11.z = saturate(refProbeAttenuationConstantsCB[r11.z].data[5].w + r12.x);
              r11.x = r11.w * r11.z;
              r12.x = (uint)r7.x >> 2;
              if (1 == 0) r12.y = 0; else if (1+2 < 32) {               r12.y = (uint)r7.x << (32-(1 + 2)); r12.y = (uint)r12.y >> (32-1);              } else r12.y = (uint)r7.x >> 2;
              r12.z = (int)r12.x & 2;
              r12.w = max(r11.y, r11.x);
              r11.z = -r11.w * r11.z + 1;
              r11.z = r11.y * r11.z;
              r8.y = r12.z ? r11.z : r12.w;
              r11.xy = r12.yy ? r11.xy : r8.xy;
              r9.w = (int)r9.w + 1;
              r7.x = r12.x;
            }
            r11.y = saturate(r11.y);
            r5.w = refProbeConstantsCB[r5.y].data[6].y * r11.y;
            r5.w = refProbeConstantsCB[r5.y].data[7].y * r5.w;
            r12.x = refProbeConstantsCB[r5.y].data[0].w;
            r12.y = refProbeConstantsCB[r5.y].data[1].z;
            r12.z = refProbeConstantsCB[r5.y].data[2].y;
            r12.x = dot(r6.xyz, r12.xyz);
            r13.xy = refProbeConstantsCB[r5.y].data[1].xw;
            r13.z = refProbeConstantsCB[r5.y].data[2].z;
            r12.y = dot(r6.xyz, r13.xyz);
            r13.x = refProbeConstantsCB[r5.y].data[1].y;
            r13.yz = refProbeConstantsCB[r5.y].data[2].xw;
            r12.z = dot(r6.xyz, r13.xyz);
            r6.xyz = saturate(r12.xyz * refProbeConstantsCB[r5.y].data[3].xyz + float3(0.5,0.5,0.5));
            r12.xy = refProbeConstantsCB[r5.y].data[4].zw * r6.xy;
            r12.z = refProbeConstantsCB[r5.y].data[5].x * r6.z;
            r6.xyz = refProbeConstantsCB[r5.y].data[5].yzw + r12.xyz;
            r8.yzw = gProbeXArray.SampleLevel(samplerLinearClamp_s, r6.xyz, 0).xyz;
            r11.xzw = float3(0,0,0.5) + r6.xyz;
            r12.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r11.xzw, 0).xyz;
            r8.yzw = r12.xyz + r8.yzw;
            r12.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r6.xyz, 0).xyz;
            r8.yzw = r12.xyz + r8.yzw;
            r12.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r11.xzw, 0).xyz;
            r8.yzw = r12.xyz + r8.yzw;
            r6.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r6.xyz, 0).xyz;
            r6.xyz = r8.yzw + r6.xyz;
            r8.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r11.xzw, 0).xyz;
            r6.xyz = r8.yzw + r6.xyz;
            r5.w = 0.166666672 * r5.w;
            r6.xyz = r6.xyz * r5.www;
            r12.xy = refProbeConstantsCB[r5.y].data[6].zw * r6.xy;
            r12.z = refProbeConstantsCB[r5.y].data[7].x * r6.z;
            r10.xyz = r12.xyz + r10.xyz;
          }
        }
        r9.xyz = r10.xyz;
        r5.z = (int)r5.z + 1;
      }
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r0.xyww, r9.xyzx
    } else {
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r0.xyww, r9.xyzx
    }
    r0.z = (int)r0.z + 4;
  }
  return;
}