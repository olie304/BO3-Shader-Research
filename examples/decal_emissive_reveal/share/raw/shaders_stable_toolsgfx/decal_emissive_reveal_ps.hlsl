// Created by: olie304
// https://github.com/olie304/BO3-Shader-Research/tree/main/examples/decal_emissive_reveal

// FOR TOOLSGFX ONLY!
// modified version of: decal_emissive_mask/ps_main_ps_5_0_937b65dca013ab1185c7ce371427ea0e.lz4

float3 colorTint;
float baseNormalHeight;
float3 specColorTint;
float2 glossRange;
float2 rotateUVs;
float2 scrollUVs;
float2 scaleUVs;
float2 offsetUVs;
float2 zoomUVs;
float zoomRate;
float layerDepth;
bool clampU;
bool clampV;
float2 flickerSeed;
float flickerSpeed;
float2 flickerRange;
float flickerPower;
float hdrScale;
float emissiveFalloffPower;
float3 emissiveTint1;
bool relativeHDR;
float distortionAmount;
float2 distortionScrollUVs;
float2 distortionScaleUVs;
float2 emissiveScaleUVs;
float2 emissiveScrollUVs;
float4 alphaRevealParms;
float alphaRevealSoftEdge;
float alphaRevealRamp;
float2 revealScale;

struct SSTConstants 
{
    float2 dimensionInTiles;
    float inchesPerTexel;
    float spanInInches;
};

struct SSTLightingConstants 
{
    SSTConstants constants;

    row_major float4x4 offToPinTransform;
    float coordScale;
    uint rootOffset;
    uint2 pad0;
};

struct CodeSceneTransforms
{
    row_major float4x4 wldToCamMatrix;
    row_major float4x4 camToOffMatrix;
    row_major float4x4 offToCamMatrix;
    row_major float4x4 camToClpMatrix;
    row_major float4x4 camToWldMatrix;
    row_major float4x4 wldToClpMatrix;
    row_major float4x4 offToClpMatrix;
    row_major float4x4 clpToCamMatrix;
};

struct CoreFogConstants
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
};

struct CoreSunConstants
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
    
    SSTLightingConstants sstLightingConstants;

};

struct CoreGlobalProbePack
{
    uint4 data[3];
};

struct CoreWeatherConsts
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
};

struct TriDensitySettings
{
    uint4 flags;
    float4 params;
};

struct ShaderDebugConstants
{
    float4 debugTunable0;
    float4 debugTunable1;
    float4 debugTunable2;
    float4 debugTunable3;
    float debugSlider0;
    float debugSlider1;
    float debugSlider2;
    float debugSlider3;
    uint debugToggle0;
    uint debugToggle1;
    uint debugToggle2;
    uint debugToggle3;
};


cbuffer CodeSceneConstBuffer : register(b9)
{
    struct CodeSceneConsts
    {
        CodeSceneTransforms transforms;
        CoreFogConstants fog;
        CoreSunConstants sun;
        CoreGlobalProbePack globalProbe;
        CoreWeatherConsts weather;
        TriDensitySettings triDensity;
        SSTLightingConstants outdoorOcclusionTreeConstants;
        float4 outdoorPinToWorldZ;
        ShaderDebugConstants shaderDebugConstants;
        
        float3 wldCameraPosition;
        float padding1;
        float4 viewSpaceScaleBias;
        uint2 renderTargetSize;
        float2 renderTargetInvSize;
        float nearClip;
        float farClipScale;
        float time;
        float siegeTime;
        float exposure;
        float invExposure;
        float exposureClamped;
        float padding2;
        uint numLights;
        uint numProbes;
        uint numShadowedLights;
        uint numOverrideProbes;
        uint lightingMode;
        uint numLitFogVolumes;
        uint numComputeSprites;
        uint padding3;
        float2 gSpotShadowResolutionAndRcp;
        uint computeSpritesDebug;
        uint numComputeLmaps;
        float2 skyRotation;
        float skySize;
        float skyTransition;
        uint forceViewToNormal;
        uint numForwardDecals;
        uint numAttenuationVolumes;
        uint fullHDR;
        float4 extraClipPlane0;
        float4 extraClipPlane1;
    } gScene : packoffset(c0);
}


SamplerState colorSampler : register(s0);
SamplerState lookupSampler : register(s1);
SamplerState revealSampler : register(s2);
Texture2D<float4> flickerLookupMap : register(t0);
Texture2D<float4> emissiveMap : register(t1);
Texture2D<float4> emissiveMask : register(t2);
Texture2D<float4> distortionMap : register(t3);
Texture2D<float4> revealMap : register(t4);


#define cmp(x) bool(x)
#define colorSampler_s colorSampler
#define lookupSampler_s lookupSampler


void ps_main( 
  float4 v0 : SV_POSITION0,
  float3 v1 : COLOR0,
  float w1 : COLOR1,
  float2 v2 : TEXCOORD0,
  nointerpolation float3 v3 : UVOFFSETS0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float3 v6 : TEXCOORD3,
  float3 v7 : OFFPOSITION0,
  uint v8 : SV_IsFrontFace0,
  out float4 o0 : SV_TARGET0)
  {
    float4 r0,r1,r2,r3,r4;
    uint4 bitmask, uiDest;
    float4 fDest;
    
    r0.x = dot(-v7.xyz, -v7.xyz);
    r0.x = rsqrt(r0.x);
    r0.xyz = -v7.xyz * r0.xxx;
    r1.x = dot(r0.xyz, v5.xyz);
    r1.y = dot(r0.xyz, v6.xyz);
    r0.w = dot(r0.xyz, v4.xyz);
    r1.z = cmp(0 < r0.w);
    r1.xy = -r1.xy / r0.ww;
    r1.xy = r1.zz ? r1.xy : 0;
    r1.zw = float2(-0.5,-0.5) + v2.xy;
    r0.w = 9.99999975e-06 + layerDepth;
    r1.xy = r1.xy * r0.ww;
    r1.xy = scaleUVs.xy * r1.xy;
    r1.xy = r1.zw * scaleUVs.xy + r1.xy;
    r1.xy = offsetUVs.xy * scaleUVs.xy + r1.xy;
    r0.w = rotateUVs.y * gScene.time + 1;
    r0.w = rotateUVs.x * r0.w;
    r0.w = 0.0174532924 * r0.w;
    sincos(r0.w, r2.x, r3.x);
    r3.y = r3.x;
    r3.z = r2.x;
    r4.x = dot(r3.yz, r1.xy);
    r3.x = -r2.x;
    r4.y = dot(r3.xy, r1.xy);
    r1.xy = gScene.time * scrollUVs.xy;
    r1.xy = r1.xy * scaleUVs.xy + r4.xy;
    r0.w = gScene.time * zoomRate;
    r0.w = cos(r0.w);
    r0.w = r0.w * 0.5 + 0.5;
    r0.w = 1 + -r0.w;
    r1.z = zoomUVs.y + -zoomUVs.x;
    r0.w = r0.w * r1.z + zoomUVs.x;
    r1.xy = r1.xy / r0.ww;
    r1.xy = float2(0.5,0.5) + r1.xy;
    r1.zw = saturate(r1.xy);
    r1.xy = clampU ? r1.zw : r1.xy;
    r0.w = emissiveMask.Sample(colorSampler_s, r1.xy).x;
    r1.xy = gScene.renderTargetInvSize.xy * relativeHDR;
    
    //r2.xyzw = distortionScaleUVs.xyzw * v2.xyxy;  // Bad decompile
    r2.xy = distortionScaleUVs.xy * v2.xy;
    r2.zw = emissiveScaleUVs.xy * v2.xy;
    
    r1.zw = gScene.time * relativeHDR + r2.xy;
    r1.zw = distortionMap.Sample(colorSampler_s, r1.zw).xy;
    r1.zw = r1.zw * float2(1.9921875,1.9921875) + float2(-1,-1);
    r1.xy = r1.zw * r1.xy + r2.zw;
    r1.xy = gScene.time * emissiveScrollUVs.xy + r1.xy;
    r1.xyzw = emissiveMap.Sample(colorSampler_s, r1.xy).xyzw;


    // Reveal stuff (Taken from gbuffer_decal.hlsl compiled with USE_REVEAL)
    float4 ar0, ar1, ar2;
    ar0.w = saturate(w1.x * 0.998000026 + 0.00100000005);
    ar1.x = log2(ar0.w);
    ar0.w = 1 + -ar0.w;
    ar1.y = saturate(alphaRevealRamp);
    ar1.x = ar1.y * ar1.x;
    ar1.x = exp2(ar1.x);
    ar2.x = -ar1.x;
    ar1.x = log2(ar0.w);
    ar1.x = ar1.y * ar1.x;
    ar2.y = exp2(ar1.x);
    ar1.xy = saturate(alphaRevealSoftEdge * ar2.xy + ar0.ww);
    ar1.zw = revealScale.xy * v2.xy;
    ar0.w = revealMap.Sample(revealSampler, ar1.zw).x;
    ar0.w = ar0.w + -ar1.x;
    ar1.x = ar1.y + -ar1.x;
    ar0.w = saturate(ar0.w / ar1.x);
    r1.xyz = r1.xyz * ar0.w;
    r1.w = ar0.w;
    // Reveal stuff


    r0.w = hdrScale * r0.w;
    r1.xyz = emissiveTint1.xyz * r1.xyz;
    r2.x = dot(v4.xyz, v4.xyz);
    r2.x = rsqrt(r2.x);
    r2.xyz = v4.xyz * r2.xxx;
    r0.x = saturate(dot(r0.xyz, r2.xyz));
    r0.y = cmp(emissiveFalloffPower == 0.000000);
    r0.x = log2(r0.x);
    r0.x = emissiveFalloffPower * r0.x;
    r0.x = exp2(r0.x);
    r0.x = r0.y ? 1 : r0.x;
    r0.y = r0.w * r1.w;
    r0.x = r0.y * r0.x;
    r0.xyz = r1.xyz * r0.xxx;
    r0.w = v3.x + v3.y;
    r0.w = v3.z + r0.w;
    r0.w = flickerSeed.y + r0.w;
    r0.w = frac(r0.w);
    r1.y = gScene.time * flickerSpeed + r0.w;
    r1.x = flickerSeed.x;
    r0.w = flickerLookupMap.SampleLevel(lookupSampler_s, r1.xy, 0).x;
    r0.w = log2(abs(r0.w));
    r0.w = flickerPower * r0.w;
    r0.w = exp2(r0.w);
    r1.x = flickerRange.y + -flickerRange.x;
    r0.w = r0.w * r1.x + flickerRange.x;
    r0.xyz = r0.xyz * r0.www;
    r0.w = dot(r0.xyz, float3(0.298999995,0.587000012,0.114));
    r0.w = max(9.99999975e-05, r0.w);
    r0.w = max(gScene.exposureClamped, r0.w);
    r1.xyz = r0.xyz * r0.www;
    r0.xyz = relativeHDR ? r1.xyz : r0.xyz;
    r0.w = cmp(0 < gScene.fog.atmosphereExtinctionIntensity);
    if (r0.w != 0) {
        r0.w = dot(v7.xyz, v7.xyz);
        r1.x = rsqrt(r0.w);
        r1.xyz = v7.xyz * r1.xxx;
        r0.w = sqrt(r0.w);
        r1.w = cmp(0 < gScene.fog.blendAmount);
        if (r1.w != 0) {
            r2.xy = r0.ww * gScene.fog.atmospherefogdistancedensityscale.xy + gScene.fog.atmospherefogdistanceoffset.xy;
            r2.xy = gScene.fog.atmospherefogdensityatcamera.xy * r2.xy;
            r1.w = cmp(0.00999999978 < abs(v7.z));
            r2.zw = gScene.fog.atmospherefogheightdensityscale.xy * v7.zz;
            r3.xy = float2(-1.44269502,-1.44269502) * r2.zw;
            r3.xy = exp2(r3.xy);
            r3.xy = float2(1,1) + -r3.xy;
            r2.zw = r3.xy / r2.zw;
            r2.zw = r2.xy * r2.zw;
            r2.xy = r1.ww ? r2.zw : r2.xy;
            r2.xzw = gScene.fog.atmosphereTotalDensity.xyz * r2.xxx;
            r2.xzw = exp2(r2.xzw);
            r3.xyz = gScene.fog.atmosphereTotalDensity.xyz * r2.yyy;
            r3.xyz = exp2(r3.xyz);
            r3.xyz = r3.xyz + -r2.xzw;
            r2.xyz = gScene.fog.blendAmount * r3.xyz + r2.xzw;
        } else {
            r1.w = r0.w * gScene.fog.atmospherefogdistancedensityscale.x + gScene.fog.atmospherefogdistanceoffset.x;
            r1.w = gScene.fog.atmospherefogdensityatcamera.x * r1.w;
            r2.w = cmp(0.00999999978 < abs(v7.z));
            r3.x = gScene.fog.atmospherefogheightdensityscale.x * v7.z;
            r3.y = -1.44269502 * r3.x;
            r3.y = exp2(r3.y);
            r3.y = 1 + -r3.y;
            r3.x = r3.y / r3.x;
            r3.x = r3.x * r1.w;
            r1.w = r2.w ? r3.x : r1.w;
            r3.xyz = gScene.fog.atmosphereTotalDensity.xyz * r1.www;
            r2.xyz = exp2(r3.xyz);
        }
        r2.xyz = r2.xyz * gScene.fog.atmosphereExtinctionIntensity + float3(1,1,1);
        r2.xyz = saturate(-gScene.fog.atmosphereExtinctionIntensity + r2.xyz);
        r1.x = dot(gScene.fog.wldSunFogDir.xyz, -r1.xyz);
        r1.y = -gScene.fog.atmosphereMieSchlickK * gScene.fog.atmosphereMieSchlickK + 1;
        r1.z = gScene.fog.atmosphereMieSchlickK * -r1.x + 1;
        r1.z = r1.z * r1.z;
        r1.z = 12.566371 * r1.z;
        r1.y = r1.y / r1.z;
        r0.w = -gScene.fog.atmospherehazebasedist + r0.w;
        r0.w = saturate(gScene.fog.atmospherehazefadedist * r0.w);
        r0.w = r1.y * r0.w;
        r1.x = saturate(r1.x);
        r1.x = r1.x * r1.x + 1;
        r1.x = r1.x * 0.0596831031 + -1;
        r1.x = gScene.fog.atmospheresunstrength * r1.x + 1;
        r1.yzw = gScene.fog.atmosphereMieDensity.xyz * r0.www;
        r1.xyz = r1.xxx * gScene.fog.atmosphereRayleighDensity.xyz + r1.yzw;
        r1.xyz = gScene.fog.atmosphereInScatterIntensity * r1.xyz;
        r3.xyz = float3(1,1,1) + -r2.xyz;
        r1.xyz = r3.xyz * r1.xyz;
        r1.xyz = r0.xyz * r2.xyz + r1.xyz;
    } else {
        r0.w = gScene.fog.heightFalloff * v7.z;
        r1.w = gScene.fog.heightFalloff * v7.z + gScene.fog.K0;
        r2.x = cmp(abs(r0.w) < 9.99999975e-05);
        r2.y = 1.44269502 * r1.w;
        r2.y = exp2(r2.y);
        r2.z = saturate(gScene.fog.K0b);
        r2.w = cmp(r1.w < 0);
        r1.w = 1 + r1.w;
        r1.w = r2.w ? r2.y : r1.w;
        r1.w = -gScene.fog.K0b + r1.w;
        r0.w = r2.x ? 1 : r0.w;
        r0.w = r1.w / r0.w;
        r0.w = r2.x ? r2.z : r0.w;
        r0.w = gScene.fog.expMul * r0.w;
        r1.w = dot(v7.xyz, v7.xyz);
        r2.x = sqrt(r1.w);
        r0.w = r0.w * r2.x + gScene.fog.expAdd;
        r0.w = exp2(r0.w);
        r0.w = min(1, r0.w);
        r0.w = 1 + -r0.w;
        r1.w = rsqrt(r1.w);
        r2.xyz = v7.xyz * r1.www;
        r1.w = dot(gScene.fog.wldSunFogDir.xyz, r2.xyz);
        r1.w = saturate(gScene.fog.sunFogAngles.y * r1.w + gScene.fog.sunFogAngles.x);
        r2.xyzw = -gScene.fog.sunFogColor.xyzw + gScene.fog.fogColor.xyzw;
        r2.xyzw = r1.wwww * r2.xyzw + gScene.fog.sunFogColor.xyzw;
        r0.w = r2.w * r0.w;
        r2.xyz = r2.xyz + -r0.xyz;
        r1.xyz = r0.www * r2.xyz + r0.xyz;
    }
    r0.xyz = gScene.invExposure * r1.xyz;
    r1.xyz = (int3)r1.xyz & int3(2139095040,2139095040,2139095040);
    
    //r1.xyz = cmp((int3)r1.xyz != int3(2139095040,2139095040,2139095040));
    r1.x = (int)r1.x != 2139095040;
    r1.y = (int)r1.y != 2139095040;
    r1.z = (int)r1.z != 2139095040;
    
    r0.w = r1.y ? r1.x : 0;
    r0.w = r1.z ? r0.w : 0;
    r1.xyz = (int3)r0.xyz & (int3)r0.www;
    
    //r2.xyz = cmp(r0.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
    //r0.xyz = r2.xyz ? r0.xyz : 0;
    bool3 getest = bool3(0, 0, 0);
    getest.x = cmp(r0.x >= 6.10351563e-05);
    getest.y = cmp(r0.y >= 6.10351563e-05);
    getest.z = cmp(r0.z >= 6.10351563e-05);
    r0.xyz = getest.xyz ? r0.xyz : 0;
    
    r0.xyz = min(float3(65024,65024,64512), r0.xyz);
    o0.xyz = gScene.fullHDR ? r1.xyz : r0.xyz;
    o0.w = 1;
    return;
}