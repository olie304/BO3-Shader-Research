float4 flagParams;
float4 colorObjMin;
float4 colorObjMax;
float colorObjMinBaseBlend;
float colorObjMaxBaseBlend;
float2 uvScroll;
float4 detailScale;
float4 detailScale1;
float4 detailScale2;
float4 detailScale3;
float4 alphaRevealParms;
float4 colorDetailScale;
float3 colorTint;
float baseNormalHeight;
float2 glossRange;
float2 wind1Parms;
float2 wind2Parms;
float2 wind3Parms;
//float2 vertexColorScale;

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


struct VertexShaderInput       
{                              
    float3 v0 : POSITION0;
    float4 v1 : COLOR0;
    float2 v2 : TEXCOORD0;
    float3 v3 : NORMAL0;
    float4 v4 : TANGENT0;
    float4 v5 : BLENDWEIGHT0;
    uint4 v6 : BLENDINDICES0;
    uint v7 : TEXCOORD15;
};

struct PixelShaderInput          
{
    float4 o0 : SV_POSITION0;
    float4 o1 : COLOR0;
    float4 o2 : TEXCOORD0;
    float4 o3 : TEXCOORD1;
    float4 o4 : TEXCOORD2;
    float3 o5 : TEXCOORD3;
};


struct GpuShaderConstantSet
{
    
    float4 scriptVector0;          // Offset:    0
    float4 scriptVector1;          // Offset:   16
    float4 scriptVector2;          // Offset:   32
    float4 scriptVector3;          // Offset:   48
    float4 scriptVector4;          // Offset:   64
    float4 scriptVector5;          // Offset:   80
    float4 scriptVector6;          // Offset:   96
    float4 scriptVector7;          // Offset:  112
    float4 weaponParam0;           // Offset:  128
    float4 weaponParam1;           // Offset:  144
    float4 weaponParam2;           // Offset:  160
    float4 weaponParam3;           // Offset:  176
    float4 weaponParam4;           // Offset:  192
    float4 weaponParam5;           // Offset:  208
    float4 weaponParam6;           // Offset:  224
    float4 weaponParam7;           // Offset:  240
    float4 characterParam0;        // Offset:  256
    float4 characterParam1;        // Offset:  272
    float4 characterParam2;        // Offset:  288
    float4 characterParam3;        // Offset:  304
    float4 characterParam4;        // Offset:  320
    float4 characterParam5;        // Offset:  336
    float4 characterParam6;        // Offset:  352
    float4 characterParam7;        // Offset:  368

};                                 // Offset:    0 Size:   384

struct ModelInstanceData
{
    uint boneArrayIndex;                 // Offset:    0
    uint shaderConstantSet;              // Offset:    4
    uint flagsAndPrevFrameIndex;         // Offset:    8
    uint worldMatrix;                    // Offset:   12
    uint siegeAnimStateOffset;           // Offset:   16
    uint prevFrameSiegeAnimStateOffset;  // Offset:   20
};                                       // Offset:    0 Size:    24


struct GpuBoneData
{
    float4 mat[3];  // Offset:    0
    float4 extra;   // Offset:   48
};                  // Offset:    0 Size:    64


StructuredBuffer<GpuShaderConstantSet> shaderConstantSetBuffer : register(t0);
StructuredBuffer<ModelInstanceData> modelInstanceBuffer : register(t4);
StructuredBuffer<GpuBoneData> boneMatrixBuffer : register(t5);

PixelShaderInput vs_main(const VertexShaderInput input)
{
    PixelShaderInput output;
    float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
    uint4 bitmask, uiDest;
    float4 fDest;

    r0.xyz = input.v3.xyz * float3(2.00195694,2.00195694,2.00195694) + float3(-1.00195694,-1.00195694,-1.00195694);
    
    //ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r1.xy, input.v7.x, l(0), t4.xyxx
	r1.x = modelInstanceBuffer[input.v7.x].boneArrayIndex;
    r1.y = modelInstanceBuffer[input.v7.x].shaderConstantSet;

    //ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.w, r1.y, l(96), t0.xxxx
    r0.w = shaderConstantSetBuffer[r1.y].scriptVector6.x;

    r2.xyz = r0.xyz * r0.www + input.v0.xyz;
    r1.yzw = input.v4.xyz * float3(2.00195694,2.00195694,2.00195694) + float3(-1.00195694,-1.00195694,-1.00195694);
    r0.w = input.v4.w * 2 + -1;
    if (r1.x != 0) {
        if (input.v5.x != 0.000000) {
            r3.x = (int)r1.x + (int)input.v6.x;
            
            //ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r3.x, l(0), t5.xyzw
            r4.x = boneMatrixBuffer[r3.x].mat[0].x;
            r4.y = boneMatrixBuffer[r3.x].mat[0].y;
            r4.z = boneMatrixBuffer[r3.x].mat[0].z;
            r4.w = boneMatrixBuffer[r3.x].mat[0].w;
            
            r3.y = dot(r4.xyz, r2.xyz);
            r3.y = r3.y + r4.w;
            r5.x = input.v5.x * r3.y;
            r3.y = dot(r4.xyz, r0.xyz);
            r6.x = input.v5.x * r3.y;
            r3.y = dot(r4.xyz, r1.yzw);
            r4.x = input.v5.x * r3.y;

            //ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r3.x, l(16), t5.xyzw
            r7.x = boneMatrixBuffer[r3.x].mat[1].x;
            r7.y = boneMatrixBuffer[r3.x].mat[1].y;
            r7.z = boneMatrixBuffer[r3.x].mat[1].z;
            r7.w = boneMatrixBuffer[r3.x].mat[1].w;
        
            r3.y = dot(r7.xyz, r2.xyz);
            r3.y = r3.y + r7.w;
            r5.y = input.v5.x * r3.y;
            r3.y = dot(r7.xyz, r0.xyz);
            r6.y = input.v5.x * r3.y;
            r3.y = dot(r7.xyz, r1.yzw);
            r4.y = input.v5.x * r3.y;
            
            //ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r3.x, l(32), t5.xyzw
            r3.x = boneMatrixBuffer[r3.x].mat[2].x;
            r3.y = boneMatrixBuffer[r3.x].mat[2].y;
            r3.z = boneMatrixBuffer[r3.x].mat[2].z;
            r3.w = boneMatrixBuffer[r3.x].mat[2].w;
            
            r4.w = dot(r3.xyz, r2.xyz);
            r3.w = r4.w + r3.w;
            r5.z = input.v5.x * r3.w;
            r3.w = dot(r3.xyz, r0.xyz);
            r6.z = input.v5.x * r3.w;
            r3.x = dot(r3.xyz, r1.yzw);
            r4.z = input.v5.x * r3.x;
            if (input.v5.y != 0.000000) {
                r3.x = (int)r1.x + (int)input.v6.y;
                
                //ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r3.x, l(0), t5.xyzw
                r7.x = boneMatrixBuffer[r3.x].mat[0].x;
                r7.y = boneMatrixBuffer[r3.x].mat[0].y;
                r7.z = boneMatrixBuffer[r3.x].mat[0].z;
                r7.w = boneMatrixBuffer[r3.x].mat[0].w;
              
                r3.y = dot(r7.xyz, r2.xyz);
                r3.y = r3.y + r7.w;
                r8.x = r3.y * input.v5.y + r5.x;
                r3.y = dot(r7.xyz, r0.xyz);
                r6.x = r3.y * input.v5.y + r6.x;
                r3.y = dot(r7.xyz, r1.yzw);
                r4.x = r3.y * input.v5.y + r4.x;

                //ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r3.x, l(16), t5.xyzw
                r7.x = boneMatrixBuffer[r3.x].mat[1].x;
                r7.y = boneMatrixBuffer[r3.x].mat[1].y;
                r7.z = boneMatrixBuffer[r3.x].mat[1].z;
                r7.w = boneMatrixBuffer[r3.x].mat[1].w;
                
                r3.y = dot(r7.xyz, r2.xyz);
                r3.y = r3.y + r7.w;
                r8.y = r3.y * input.v5.y + r5.y;
                r3.y = dot(r7.xyz, r0.xyz);
                r6.y = r3.y * input.v5.y + r6.y;
                r3.y = dot(r7.xyz, r1.yzw);
                r4.y = r3.y * input.v5.y + r4.y;
                
                //ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r3.x, l(32), t5.xyzw
                r3.x = boneMatrixBuffer[r3.x].mat[2].x;
                r3.y = boneMatrixBuffer[r3.x].mat[2].y;
                r3.z = boneMatrixBuffer[r3.x].mat[2].z;
                r3.w = boneMatrixBuffer[r3.x].mat[2].w;
                
                r4.w = dot(r3.xyz, r2.xyz);
                r3.w = r4.w + r3.w;
                r8.z = r3.w * input.v5.y + r5.z;
                r3.w = dot(r3.xyz, r0.xyz);
                r6.z = r3.w * input.v5.y + r6.z;
                r3.x = dot(r3.xyz, r1.yzw);
                r4.z = r3.x * input.v5.y + r4.z;
                if (input.v5.z != 0.000000) {
                    r3.x = (int)r1.x + (int)input.v6.z;

                    //ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r3.x, l(0), t5.xyzw
                    r7.x = boneMatrixBuffer[r3.x].mat[0].x;
                    r7.y = boneMatrixBuffer[r3.x].mat[0].y;
                    r7.z = boneMatrixBuffer[r3.x].mat[0].z;
                    r7.w = boneMatrixBuffer[r3.x].mat[0].w;
                    
                    r3.y = dot(r7.xyz, r2.xyz);
                    r3.y = r3.y + r7.w;
                    r9.x = r3.y * input.v5.z + r8.x;
                    r3.y = dot(r7.xyz, r0.xyz);
                    r6.x = r3.y * input.v5.z + r6.x;
                    r3.y = dot(r7.xyz, r1.yzw);
                    r4.x = r3.y * input.v5.z + r4.x;
                    
                    //ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r3.x, l(16), t5.xyzw
                    r7.x = boneMatrixBuffer[r3.x].mat[1].x;
                    r7.y = boneMatrixBuffer[r3.x].mat[1].y;
                    r7.z = boneMatrixBuffer[r3.x].mat[1].z;
                    r7.w = boneMatrixBuffer[r3.x].mat[1].w;
                    
                    r3.y = dot(r7.xyz, r2.xyz);
                    r3.y = r3.y + r7.w;
                    r9.y = r3.y * input.v5.z + r8.y;
                    r3.y = dot(r7.xyz, r0.xyz);
                    r6.y = r3.y * input.v5.z + r6.y;
                    r3.y = dot(r7.xyz, r1.yzw);
                    r4.y = r3.y * input.v5.z + r4.y;

                    //ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r3.x, l(32), t5.xyzw
                    r3.x = boneMatrixBuffer[r3.x].mat[2].x;
                    r3.y = boneMatrixBuffer[r3.x].mat[2].y;
                    r3.z = boneMatrixBuffer[r3.x].mat[2].z;
                    r3.w = boneMatrixBuffer[r3.x].mat[2].w;

                    r4.w = dot(r3.xyz, r2.xyz);
                    r3.w = r4.w + r3.w;
                    r9.z = r3.w * input.v5.z + r8.z;
                    r3.w = dot(r3.xyz, r0.xyz);
                    r6.z = r3.w * input.v5.z + r6.z;
                    r3.x = dot(r3.xyz, r1.yzw);
                    r4.z = r3.x * input.v5.z + r4.z;
                    if (input.v5.w != 0.000000) {
                        r1.x = (int)r1.x + (int)input.v6.w;

                        //ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r1.x, l(0), t5.xyzw
                        r3.x = boneMatrixBuffer[r3.x].mat[0].x;
                        r3.y = boneMatrixBuffer[r3.x].mat[0].y;
                        r3.z = boneMatrixBuffer[r3.x].mat[0].z;
                        r3.w = boneMatrixBuffer[r3.x].mat[0].w;
                    
                        r4.w = dot(r3.xyz, r2.xyz);
                        r3.w = r4.w + r3.w;
                        r7.x = r3.w * input.v5.w + r9.x;
                        r3.w = dot(r3.xyz, r0.xyz);
                        r6.x = r3.w * input.v5.w + r6.x;
                        r3.x = dot(r3.xyz, r1.yzw);
                        r4.x = r3.x * input.v5.w + r4.x;

                        //ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r1.x, l(16), t5.xyzw
                        r3.x = boneMatrixBuffer[r3.x].mat[1].x;
                        r3.y = boneMatrixBuffer[r3.x].mat[1].y;
                        r3.z = boneMatrixBuffer[r3.x].mat[1].z;
                        r3.w = boneMatrixBuffer[r3.x].mat[1].w;
                        
                        r4.w = dot(r3.xyz, r2.xyz);
                        r3.w = r4.w + r3.w;
                        r7.y = r3.w * input.v5.w + r9.y;
                        r3.w = dot(r3.xyz, r0.xyz);
                        r6.y = r3.w * input.v5.w + r6.y;
                        r3.x = dot(r3.xyz, r1.yzw);
                        r4.y = r3.x * input.v5.w + r4.y;

                        //ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r1.x, l(32), t5.xyzw
                        r3.x = boneMatrixBuffer[r3.x].mat[2].x;
                        r3.y = boneMatrixBuffer[r3.x].mat[2].y;
                        r3.z = boneMatrixBuffer[r3.x].mat[2].z;
                        r3.w = boneMatrixBuffer[r3.x].mat[2].w;
                        
                        r1.x = dot(r3.xyz, r2.xyz);
                        r1.x = r1.x + r3.w;
                        r7.z = r1.x * input.v5.w + r9.z;
                        r1.x = dot(r3.xyz, r0.xyz);
                        r6.z = r1.x * input.v5.w + r6.z;
                        r1.x = dot(r3.xyz, r1.yzw);
                        r4.z = r1.x * input.v5.w + r4.z;
                        r2.xyz = r7.xyz;
                    } else {
                        r2.xyz = r9.xyz;
                    }
                } else {
                    r2.xyz = r8.xyz;
                }
            } else {
                r2.xyz = r5.xyz;
            }
        } else {
            r2.xyz = float3(0,0,0);
            r6.xyz = float3(0,0,0);
            r4.xyz = float3(0,0,0);
        }
        r1.x = dot(r6.xyz, r6.xyz);
        r1.x = rsqrt(r1.x);
        r0.xyz = r6.xyz * r1.xxx;
        r1.x = dot(r4.xyz, r4.xyz);
        r1.x = rsqrt(r1.x);
        r1.yzw = r4.xyz * r1.xxx;
    }
    r3.xyz = r1.zwy * r0.zxy;
    r3.xyz = r0.yzx * r1.wyz + -r3.xyz;
    r3.xyz = r3.xyz * r0.www;

    //ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.w, input.v7.x, l(12), t4.xxxx
    r0.w = modelInstanceBuffer[input.v7.x].worldMatrix;
    
    if (r0.w != 0) {
        
        //ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.w, l(0), t5.xyzw
        r4.x = boneMatrixBuffer[r0.w].mat[0].x;
        r4.y = boneMatrixBuffer[r0.w].mat[0].y;
        r4.z = boneMatrixBuffer[r0.w].mat[0].z;
        r4.w = boneMatrixBuffer[r0.w].mat[0].w;
    
        //ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r0.w, l(16), t5.xyzw
        r5.x = boneMatrixBuffer[r0.w].mat[1].x;
        r5.y = boneMatrixBuffer[r0.w].mat[1].y;
        r5.z = boneMatrixBuffer[r0.w].mat[1].z;
        r5.w = boneMatrixBuffer[r0.w].mat[1].w;

        //ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyzw, r0.w, l(32), t5.xywz
        r6.x = boneMatrixBuffer[r0.w].mat[2].x;
        r6.y = boneMatrixBuffer[r0.w].mat[2].y;
        r6.z = boneMatrixBuffer[r0.w].mat[2].z;
        r6.w = boneMatrixBuffer[r0.w].mat[2].w;
    
        r7.xyz = r6.xyw;
        r6.x = r4.w;
        r6.y = r5.w;
    } else {
        r4.xyz = float3(1,0,0);
        r5.xyz = float3(0,1,0);
        r7.xyz = float3(0,0,1);
        r6.xyz = float3(0,0,0);
    }
  
  
    r6.xyz = -eyeOffset.xyz + r6.xyz;
    r2.w = 1;
    r4.w = r6.x;
    r8.x = dot(r2.xyzw, r4.xyzw);
    r5.w = r6.y;
    r8.y = dot(r2.xyzw, r5.xyzw);
    r7.w = r6.z;
    r8.z = dot(r2.xyzw, r7.xyzw);
    
    r2.x = dot(r0.xyz, r4.xyz);
    r2.y = dot(r0.xyz, r5.xyz);
    r2.z = dot(r0.xyz, r7.xyz);
    
    //r0.x = dot(r2.xyz, r2.xyz);
    //r0.x = rsqrt(r0.x);
    //output.o3.xyz = r2.xyz * r0.xxx;
    output.o3.xyz = normalize(r2.xyz);
    
    r0.x = dot(r1.yzw, r4.xyz);
    r0.y = dot(r1.yzw, r5.xyz);
    r0.z = dot(r1.yzw, r7.xyz);
    
    //r1.x = dot(r0.xyz, r0.xyz);
    //r1.x = rsqrt(r1.x);
    //output.o4.xyz = r1.xxx * r0.xyz;
    output.o4.xyz = normalize(r0.xyz);
    
    r0.x = dot(r3.xyz, r4.xyz);
    r0.y = dot(r3.xyz, r5.xyz);
    r0.z = dot(r3.xyz, r7.xyz);
    
    //r1.x = dot(r0.xyz, r0.xyz);
    //r1.x = rsqrt(r1.x);
    //output.o5.xyz = r1.xxx * r0.xyz;
    output.o5.xyz = normalize(r0.xyz);
    //r1.zw = vertexColorScale.xy * input.v1.xy;
    r1.zw = input.v1.xy;
    
    if (r0.w != 0) {
        //ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.x, r0.w, l(12), t5.xxxx
        r0.x = boneMatrixBuffer[r0.w].mat[0].w;

        //ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.y, r0.w, l(28), t5.xxxx
        r0.y = boneMatrixBuffer[r0.w].mat[1].w;
    } else {
        r0.xy = float2(0,0);
    }

    r2.xyz = eyeOffset.xyz + r8.xyz;
    r0.z = weather.windSpeed * gameTime.w;
    r0.w = gameTime.w * weather.windSpeed + 0.5;
    r0.xy = float2(0.100000001,0.100000001) * r0.xy;
    r0.x = r0.z * 0.899999976 + r0.x;
    r0.x = 0.0700000003 * r0.x;
    r0.x = sin(r0.x);
    r0.x = r0.x * 0.5 + 0.5;
    r0.y = r0.w * 0.699999988 + r0.y;
    r0.y = 0.0700000003 * r0.y;
    r0.y = cos(r0.y);
    r0.x = r0.y * 0.5 + r0.x;
    r0.x = 0.5 + r0.x;
    r0.x = 0.5 * r0.x;
    r0.y = dot(input.v0.xz, input.v0.xz);
    r0.y = sqrt(r0.y);
    r0.y = weather.windSpeed * r0.y;
    r0.y = weather.windDirSin * r0.y;
    r0.y = r0.y * r0.x;
    r1.x = r0.y * r1.z;
    r0.y = dot(input.v0.yz, input.v0.yz);
    r0.y = sqrt(r0.y);
    r0.y = weather.windSpeed * r0.y;
    r0.y = weather.windDirCos * r0.y;
    r0.x = r0.y * r0.x;
    r1.y = r0.x * r1.z;
    r0.xyz = r1.xyz * float3(0.00999999978,0.00999999978,0) + r2.xyz;
    r2.xyzw = -eyeOffset.yyyy * viewProjectionMatrix._m10_m11_m12_m13;
    r2.xyzw = -eyeOffset.xxxx * viewProjectionMatrix._m00_m01_m02_m03 + r2.xyzw;
    r2.xyzw = -eyeOffset.zzzz * viewProjectionMatrix._m20_m21_m22_m23 + r2.xyzw;
    r2.xyzw = viewProjectionMatrix._m30_m31_m32_m33 + r2.xyzw;
    r3.xyzw = viewProjectionMatrix._m10_m11_m12_m13 * r0.yyyy;
    r3.xyzw = r0.xxxx * viewProjectionMatrix._m00_m01_m02_m03 + r3.xyzw;
    r0.xyzw = r0.zzzz * viewProjectionMatrix._m20_m21_m22_m23 + r3.xyzw;
    output.o0.xyzw = r0.xyzw + r2.xyzw;
    output.o1.xy = r1.zw;
    output.o1.zw = input.v1.zw;
    output.o2.xy = input.v2.xy;
    return output;
}