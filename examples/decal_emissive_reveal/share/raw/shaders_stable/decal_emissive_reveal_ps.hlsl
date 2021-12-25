// Created by: olie304
// https://github.com/olie304/BO3-Shader-Research/tree/main/examples/decal_emissive_reveal

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
float alphaRevealSoftEdge;
float alphaRevealRamp;
float2 revealScale;
float3 colorTint;
float3 specColorTint;
float baseNormalHeight;
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
  
cbuffer PerSceneConsts: register(b1) {
    row_major float4x4 projectionMatrix: packoffset(c0);
    row_major float4x4 viewMatrix: packoffset(c4);
    row_major float4x4 viewProjectionMatrix: packoffset(c8);
    row_major float4x4 inverseProjectionMatrix: packoffset(c12);
    row_major float4x4 inverseViewMatrix: packoffset(c16);
    row_major float4x4 inverseViewProjectionMatrix: packoffset(c20);
    float4 eyeOffset: packoffset(c24);
    float4 adsZScale: packoffset(c25);
    float4 hdrControl0: packoffset(c26);
    float4 hdrControl1: packoffset(c27);
    float4 fogColor: packoffset(c28);
    float4 fogConsts: packoffset(c29);
    float4 fogConsts2: packoffset(c30);
    float4 fogConsts3: packoffset(c31);
    float4 fogConsts4: packoffset(c32);
    float4 fogConsts5: packoffset(c33);
    float4 fogConsts6: packoffset(c34);
    float4 fogConsts7: packoffset(c35);
    float4 fogConsts8: packoffset(c36);
    float4 fogConsts9: packoffset(c37);
    float3 sunFogDir: packoffset(c38);
    float4 sunFogColor: packoffset(c39);
    float2 sunFog: packoffset(c40);
    float4 zNear: packoffset(c41);
    float3 clothPrimaryTint: packoffset(c42);
    float3 clothSecondaryTint: packoffset(c43);
    float4 renderTargetSize: packoffset(c44);
    float4 upscaledTargetSize: packoffset(c45);
    float4 materialColor: packoffset(c46);
    float4 cameraUp: packoffset(c47);
    float4 cameraLook: packoffset(c48);
    float4 cameraSide: packoffset(c49);
    float4 cameraVelocity: packoffset(c50);
    float4 skyMxR: packoffset(c51);
    float4 skyMxG: packoffset(c52);
    float4 skyMxB: packoffset(c53);
    float4 sunMxR: packoffset(c54);
    float4 sunMxG: packoffset(c55);
    float4 sunMxB: packoffset(c56);
    float4 skyRotationTransition: packoffset(c57);
    float4 debugColorOverride: packoffset(c58);
    float4 debugAlphaOverride: packoffset(c59);
    float4 debugNormalOverride: packoffset(c60);
    float4 debugSpecularOverride: packoffset(c61);
    float4 debugGlossOverride: packoffset(c62);
    float4 debugOcclusionOverride: packoffset(c63);
    float4 debugStreamerControl: packoffset(c64);
    float4 emblemLUTSelector: packoffset(c65);
    float4 colorMatrixR: packoffset(c66);
    float4 colorMatrixG: packoffset(c67);
    float4 colorMatrixB: packoffset(c68);
    float4 gameTime: packoffset(c69);
    float4 gameTick: packoffset(c70);
    float4 subpixelOffset: packoffset(c71);
    float4 viewportDimensions: packoffset(c72);
    float4 viewSpaceScaleBias: packoffset(c73);
    float4 ui3dUVSetup0: packoffset(c74);
    float4 ui3dUVSetup1: packoffset(c75);
    float4 ui3dUVSetup2: packoffset(c76);
    float4 ui3dUVSetup3: packoffset(c77);
    float4 ui3dUVSetup4: packoffset(c78);
    float4 ui3dUVSetup5: packoffset(c79);
    float4 clipSpaceLookupScale: packoffset(c80);
    float4 clipSpaceLookupOffset: packoffset(c81);
    uint4 computeSpriteControl: packoffset(c82);
    float4 invBcTexSizes: packoffset(c83);
    float4 invMaskTexSizes: packoffset(c84);
    float4 relHDRExposure: packoffset(c85);
    uint4 triDensityFlags: packoffset(c86);
    float4 triDensityParams: packoffset(c87);
    float4 voldecalRevealTextureInfo: packoffset(c88);
    float4 extraClipPlane0: packoffset(c89);
    float4 extraClipPlane1: packoffset(c90);
    float4 shaderDebug: packoffset(c91);
    uint isDepthHack: packoffset(c92);
}

struct SSTConstants {
    float2 dimensionInTiles;
    float inchesPerTexel;
    float spanInInches;
};

struct SSTLightingConstants {
    SSTConstants constants;

    row_major float4x4 offToPinTransform;
    float coordScale;
    uint rootOffset;
    uint2 pad0;
};

cbuffer LightingGlobals: register(b2) {
    uint numLights: packoffset(c0);
    uint numRefProbes: packoffset(c0.y);
    uint numRefProbeBlends: packoffset(c0.z);
    uint numDedicatedLights: packoffset(c0.w);
    float4 clearColor: packoffset(c1);
    float4 sssParams: packoffset(c2);

    struct CoreFogConstants {
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
    }
    fogConstants: packoffset(c3);

    struct CoreSunConstants {
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

    }
    sunConstants: packoffset(c17);

    struct SSTMinMaxConstants {
        float2 sstToMinMaxScale;
        float2 pad0;
        float2 halfMinTexelSize;
        float rcpInchesDimLevel0;
        float shadowBiasInches;
    }
    minMaxConstants: packoffset(c33);

    struct CoreGlobalProbePack {
        uint4 data[3];
    }
    globalProbeConstants: packoffset(c35);

    struct CoreWeatherConsts {
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
    }
    weather: packoffset(c38);

    SSTLightingConstants outdoorSSTConstants: packoffset(c43);

    float4 pinToWorldZ: packoffset(c49);

    struct CoreVolumetricConstants {
        uint firstSpotLight;
        uint lastSpotLight;
        uint firstOmniLight;
        uint lastOmniLight;
        uint firstProbe;
        uint lastProbe;
        uint padding0;
        uint padding1;
    }
    volumetric: packoffset(c50);

    uint viewID: packoffset(c52);
    uint enableCountDebug: packoffset(c52.y);
    uint centerGroupIDx: packoffset(c52.z);
    uint centerGroupIDy: packoffset(c52.w);
    uint viewmodelSunShadowRaw: packoffset(c53);
    uint debugDrawOverlayType: packoffset(c53.y);
    float drawNumLighstScale: packoffset(c53.z);
    float drawNumLightsAlpha: packoffset(c53.w);
    uint probeDebug: packoffset(c54);
    float probeDebugRadius: packoffset(c54.y);
    uint showSunVis: packoffset(c54.z);
    uint enableAO: packoffset(c54.w);
    uint showAO: packoffset(c55);
    uint numGpuCullTilesWidth: packoffset(c55.y);
    uint numGpuCullTilesHeight: packoffset(c55.z);
    int permuteHighlight: packoffset(c55.w);
    uint overdrawOverlayMaxValue: packoffset(c56);
    float overdrawOverlayAlpha: packoffset(c56.y);
    uint overdrawDecals: packoffset(c56.z);
    uint overdrawDecalsLayers: packoffset(c56.w);
    uint permuteStride: packoffset(c57);
    uint numDecals: packoffset(c57.y);
    uint numStaticDecals: packoffset(c57.z);
    uint numDynamicDecals: packoffset(c57.w);
    uint numOverrideProbes: packoffset(c58);
    uint enableDitheredShadow: packoffset(c58.y);
    uint oitMaxEntries: packoffset(c58.z);
    uint numAttenuationVolumes: packoffset(c58.w);
}

SamplerState colorSampler : register(s1);
SamplerState lookupSampler : register(s3);
SamplerState revealSampler : register(s4);
Texture2D<float4> flickerLookupMap : register(t0);
Texture2D<float4> emissiveMap : register(t21);
Texture2D<float4> emissiveMask : register(t22);
Texture2D<float4> revealMap : register(t23);
Texture2D<float4> distortionMap : register(t24);

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
    r0.w = rotateUVs.y * gameTime.w + 1;
    r0.w = rotateUVs.x * r0.w;
    r0.w = 0.0174532924 * r0.w;
    sincos(r0.w, r2.x, r3.x);
    r3.y = r3.x;
    r3.z = r2.x;
    r4.x = dot(r3.yz, r1.xy);
    r3.x = -r2.x;
    r4.y = dot(r3.xy, r1.xy);
    r1.xy = gameTime.ww * scrollUVs.xy;
    r1.xy = r1.xy * scaleUVs.xy + r4.xy;
    r0.w = gameTime.w * zoomRate;
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
    r1.xy = renderTargetSize.zw * relativeHDR;
    r2.xy = distortionScaleUVs.xy * v2.xy;
    r2.zw = emissiveScaleUVs.xy * v2.xy;
    r1.zw = gameTime.ww * relativeHDR + r2.xy;
    r1.zw = distortionMap.Sample(colorSampler_s, r1.zw).xy;
    r1.zw = r1.zw * float2(1.9921875,1.9921875) + float2(-1,-1);
    r1.xy = r1.zw * r1.xy + r2.zw;
    r1.xy = gameTime.ww * emissiveScrollUVs.xy + r1.xy;
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
    r1.y = gameTime.w * flickerSpeed + r0.w;
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
    r0.w = max(relHDRExposure.x, r0.w);
    r1.xyz = r0.xyz * r0.www;
    r0.xyz = relativeHDR ? r1.xyz : r0.xyz;
    r0.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
    if (r0.w != 0) {
        r0.w = dot(v7.xyz, v7.xyz);
        r1.x = rsqrt(r0.w);
        r1.xyz = v7.xyz * r1.xxx;
        r0.w = sqrt(r0.w);
        r1.w = cmp(0 < fogConstants.blendAmount);
        if (r1.w != 0) {
            r2.xy = r0.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
            r2.xy = fogConstants.atmospherefogdensityatcamera.xy * r2.xy;
            r1.w = cmp(0.00999999978 < abs(v7.z));
            r2.zw = fogConstants.atmospherefogheightdensityscale.xy * v7.zz;
            r3.xy = float2(-1.44269502,-1.44269502) * r2.zw;
            r3.xy = exp2(r3.xy);
            r3.xy = float2(1,1) + -r3.xy;
            r2.zw = r3.xy / r2.zw;
            r2.zw = r2.xy * r2.zw;
            r2.xy = r1.ww ? r2.zw : r2.xy;
            r2.xzw = fogConstants.atmosphereTotalDensity.xyz * r2.xxx;
            r2.xzw = exp2(r2.xzw);
            r3.xyz = fogConstants.atmosphereTotalDensity.xyz * r2.yyy;
            r3.xyz = exp2(r3.xyz);
            r3.xyz = r3.xyz + -r2.xzw;
            r2.xyz = fogConstants.blendAmount * r3.xyz + r2.xzw;
        } else {
            r1.w = r0.w * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
            r1.w = fogConstants.atmospherefogdensityatcamera.x * r1.w;
            r2.w = cmp(0.00999999978 < abs(v7.z));
            r3.x = fogConstants.atmospherefogheightdensityscale.x * v7.z;
            r3.y = -1.44269502 * r3.x;
            r3.y = exp2(r3.y);
            r3.y = 1 + -r3.y;
            r3.x = r3.y / r3.x;
            r3.x = r3.x * r1.w;
            r1.w = r2.w ? r3.x : r1.w;
            r3.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.www;
            r2.xyz = exp2(r3.xyz);
        }
        r2.xyz = r2.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
        r2.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r2.xyz);
        r1.x = dot(fogConstants.wldSunFogDir.xyz, -r1.xyz);
        r1.y = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
        r1.z = fogConstants.atmosphereMieSchlickK * -r1.x + 1;
        r1.z = r1.z * r1.z;
        r1.z = 12.566371 * r1.z;
        r1.y = r1.y / r1.z;
        r0.w = -fogConstants.atmospherehazebasedist + r0.w;
        r0.w = saturate(fogConstants.atmospherehazefadedist * r0.w);
        r0.w = r1.y * r0.w;
        r1.x = saturate(r1.x);
        r1.x = r1.x * r1.x + 1;
        r1.x = r1.x * 0.0596831031 + -1;
        r1.x = fogConstants.atmospheresunstrength * r1.x + 1;
        r1.yzw = fogConstants.atmosphereMieDensity.xyz * r0.www;
        r1.xyz = r1.xxx * fogConstants.atmosphereRayleighDensity.xyz + r1.yzw;
        r1.xyz = fogConstants.atmosphereInScatterIntensity * r1.xyz;
        r3.xyz = float3(1,1,1) + -r2.xyz;
        r1.xyz = r3.xyz * r1.xyz;
        r1.xyz = r0.xyz * r2.xyz + r1.xyz;
    } else {
        r0.w = fogConstants.heightFalloff * v7.z;
        r1.w = fogConstants.heightFalloff * v7.z + fogConstants.K0;
        r2.x = cmp(abs(r0.w) < 9.99999975e-05);
        r2.y = min(64, r1.w);
        r2.y = 1.44269502 * r2.y;
        r2.y = exp2(r2.y);
        r2.z = saturate(fogConstants.K0b);
        r2.w = cmp(r1.w < 0);
        r1.w = 1 + r1.w;
        r1.w = r2.w ? r2.y : r1.w;
        r1.w = -fogConstants.K0b + r1.w;
        r0.w = r2.x ? 1 : r0.w;
        r0.w = r1.w / r0.w;
        r0.w = r2.x ? r2.z : r0.w;
        r0.w = fogConstants.expMul * r0.w;
        r1.w = dot(v7.xyz, v7.xyz);
        r2.x = sqrt(r1.w);
        r0.w = r0.w * r2.x + fogConstants.expAdd;
        r0.w = exp2(r0.w);
        r0.w = min(1, r0.w);
        r0.w = 1 + -r0.w;
        r1.w = rsqrt(r1.w);
        r2.xyz = v7.xyz * r1.www;
        r1.w = dot(fogConstants.wldSunFogDir.xyz, r2.xyz);
        r1.w = saturate(fogConstants.sunFogAngles.y * r1.w + fogConstants.sunFogAngles.x);
        r2.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
        r2.xyzw = r1.wwww * r2.xyzw + fogConstants.sunFogColor.xyzw;
        r0.w = r2.w * r0.w;
        r2.xyz = r2.xyz + -r0.xyz;
        r1.xyz = r0.www * r2.xyz + r0.xyz;
    }
    r0.xyz = relHDRExposure.yyy * r1.xyz;
    //r1.xyz = cmp(r0.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
    //r0.xyz = r1.xyz ? r0.xyz : 0;
    //o0.xyz = min(float3(65024,65024,64512), r0.xyz);
    bool3 getest = bool3(0, 0, 0);
    getest.x = cmp(r0.x >= 6.10351563e-05);
    getest.y = cmp(r0.y >= 6.10351563e-05);
    getest.z = cmp(r0.z >= 6.10351563e-05);
    r0.xyz = getest.xyz ? r0.xyz : 0;
    o0.xyz = min(float3(65024, 65024, 64512), r0.xyz);
    o0.w = 1;
    return;
}