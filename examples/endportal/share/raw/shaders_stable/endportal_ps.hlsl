// Made By: olie304
// This Version: https://github.com/olie304/BO3-Shader-Research/tree/main/examples/endportal
// Unity version: https://github.com/olie304/unity-shaders/tree/main/endportal

//  Default Techset constants
uint zFeatherComputeSprites;
float hdrScale;
float emissiveFalloffPower;
bool relativeHDR;
bool invertFalloff;

// Custom Constants
float portalAnimSpeed;

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

SamplerState colorSampler: register(s1);
Texture2D<float4> endPortal : register(t21);
Texture2D<float4> endSky : register(t22);

RWTexture2D<uint> gOit_Pixels : register(u6);
RWTexture2DArray<uint2> gOit_Nodes : register(u7);

#define cmp(e) bool(e)

// Lookup Java random value using Minecraft seed for end portal
static const float randomMap[] = {0.09449595f,0.5119912f,0.4775676f,0.0021561384f,0.830713f,0.52125f,0.2421807f,0.827019f,0.60521126f,0.49845827f,0.8482403f,0.72256434f,0.70861703f,0.84773946f,0.3606466f,0.6288944f,0.32963306f,0.6073999f,0.81780994f,0.5439297f,0.99656105f,0.87238294f,0.8953165f,0.0017044544f,0.8615218f,0.51143605f,0.9519068f,0.6794915f,0.19169158f,0.68505853f,0.86813074f,0.30622542f,0.18865299f,0.2900399f,0.90332574f,0.65054363f,0.9805945f,0.057396412f,0.28817332f,0.036404908f,0.7766893f,0.6098513f,0.6186982f,0.76004106f,0.20826548f,0.042864203f,0.14446187f,0.9844728f};
static uint randomIndex = 0;
inline float GetNextFloat() {
    return randomMap[randomIndex++];
}

[earlydepthstencil]
void ps_main(
    float4 iposition: SV_POSITION0,
    float3 icolor: COLOR0,
    float icolorAlpha: COLOR1,
    float2 iuv: TEXCOORD0,
    float2 w2: TEXCOORD9,
    nointerpolation float3 v3: UVOFFSETS0,
    nointerpolation uint w3: TEXCOORD4,
    float4 normal: TEXCOORD1, // Normal?
    float4 tangent: TEXCOORD2, // Tangent?
    float3 bitangent: TEXCOORD3, // BiTangent?
    float3 offposition: OFFPOSITION0,
    float3 v8: TEXCOORD10,
    uint isFrontFace: SV_IsFrontFace0,
    out float4 output: SV_TARGET0) {
    float4 r0, r1, r2, r3, r4;
    uint4 bitmask;

    //  ------ Compute TBN ------
    r0.xyz = -normalize(offposition.xyz);
    r1.x = dot(r0.xyz, tangent.xyz);
    r1.y = dot(r0.xyz, bitangent.xyz);
    r0.w = dot(r0.xyz, normal.xyz);
    r1.z = cmp(0 < r0.w);
    float3 vie = float3(r1.xy, r0.w);
    vie = normalize(vie);
    r1.xy = -vie.xy / vie.z;
    r1.xy = r1.zz ? r1.xy : 0;
    //  ------ Compute TBN ------

    //  ------ Get Ender Portal Pixel ------

    float4 color = float4(0, 0, 0, 0);
    for (uint j = 0; j < 16; ++j) {
        float2 uv = iuv;
        float adjDepth = j + 1;
        //float colorCoeff = 1.0F / ((16 - j) + 1.0F);  // Real Colors (Dark and boring)
        float colorCoeff = 2.0 f / (18 - j); // Better than real colors (Epic and based)

        uv += r1.xy * ((16 - j) - 0.75); // Transforms each layer in Tangent space for parallax effect
        uv.xy -= 0.5 f;
        float s = sin(radians((adjDepth * adjDepth * 4321.0 f + adjDepth * 9.0 f) * 2.0 f));
        float c = cos(radians((adjDepth * adjDepth * 4321.0 f + adjDepth * 9.0 f) * 2.0 f));
        float2x2 rotationMatrix = float2x2(c, -s, s, c);
        rotationMatrix *= 0.5 f;
        rotationMatrix += 0.5 f;
        rotationMatrix = rotationMatrix * 2 - 1;
        uv.xy = mul(uv.xy, rotationMatrix);
        uv.xy += 0.5 f;

        uv.xy *= 4.0;
        uv.x -= 17.0 f / adjDepth;
        float speed = portalAnimSpeed == 0 ? 1 : portalAnimSpeed;
        uv.y += (2.0 f + adjDepth / 1.5 f) * (gameTime.w % (80.0 f * (1.0 f / speed)) / (80.0 f * (1.0 f / speed)));

        float4 tempCol = float4(0, 0, 0, 0);
        if (j == 0) {
            colorCoeff = 0.15 f;
            tempCol = endSky.Sample(colorSampler, uv * 0.125 f);
        }
        if (j >= 1) {
            if (j == 1) {
                tempCol = endPortal.Sample(colorSampler, uv * 0.5 f) * (1.0 f - color.w);
            } else {
                tempCol = endPortal.Sample(colorSampler, uv * 0.0625 f);
            }
        }
        tempCol.x *= (GetNextFloat() * 0.5 f + 0.1 f) * colorCoeff;
        tempCol.y *= (GetNextFloat() * 0.5 f + 0.4 f) * colorCoeff;
        tempCol.z *= (GetNextFloat() * 0.5 f + 0.5 f) * colorCoeff;
        color += tempCol;
    }

    //  ------ Get Ender Portal Pixel ------

    r1.zw = saturate(r1.xy);
    r0.w = dot(normal.xyz, normal.xyz);
    r0.w = rsqrt(r0.w);
    r2.xyz = normal.xyz * r0.www;
    r0.x = saturate(dot(r0.xyz, r2.xyz));

    r0.yzw = color;

    r1.x = log2(r0.x);
    r1.x = emissiveFalloffPower * r1.x;
    r1.x = exp2(r1.x);
    r0.x = 1 + -r0.x;
    r0.x = log2(r0.x);
    r0.x = emissiveFalloffPower * r0.x;
    r0.x = exp2(r0.x);
    r0.x = invertFalloff ? r0.x : r1.x;
    r1.x = cmp(emissiveFalloffPower == 0.000000);
    r0.x = r1.x ? 1 : r0.x;
    r0.x = hdrScale * r0.x;
    r0.xyz = r0.yzw * r0.xxx;

    r0.w = 1.0; // Hard code exposure coef to 1 instead of using flicker

    // Adjust brightness
    r0.xyz = r0.xyz * r0.www;
    r1.xyz = relHDRExposure.xxx * r0.xyz;
    r0.xyz = relativeHDR ? r1.xyz : r0.xyz;
    r0.w = dot(r0.xyz, float3(0.298999995, 0.587000012, 0.114));
    r0.w = r0.w / relHDRExposure.x;
    r1.w = saturate(1 + r0.w);

    // --- Generic Fog Section ---
    r0.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
    if (r0.w != 0) {
        r0.w = dot(offposition.xyz, offposition.xyz);
        r2.x = rsqrt(r0.w);
        r2.xyz = offposition.xyz * r2.xxx;
        r0.w = sqrt(r0.w);
        r2.w = cmp(0 < fogConstants.blendAmount);
        if (r2.w != 0) {
            r3.xy = r0.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
            r3.xy = fogConstants.atmospherefogdensityatcamera.xy * r3.xy;
            r2.w = cmp(0.00999999978 < abs(offposition.z));
            r3.zw = fogConstants.atmospherefogheightdensityscale.xy * offposition.zz;
            r4.xy = float2(-1.44269502, -1.44269502) * r3.zw;
            r4.xy = exp2(r4.xy);
            r4.xy = float2(1, 1) + -r4.xy;
            r3.zw = r4.xy / r3.zw;
            r3.zw = r3.xy * r3.zw;
            r3.xy = r2.ww ? r3.zw : r3.xy;
            r3.xzw = fogConstants.atmosphereTotalDensity.xyz * r3.xxx;
            r3.xzw = exp2(r3.xzw);
            r4.xyz = fogConstants.atmosphereTotalDensity.xyz * r3.yyy;
            r4.xyz = exp2(r4.xyz);
            r4.xyz = r4.xyz + -r3.xzw;
            r3.xyz = fogConstants.blendAmount * r4.xyz + r3.xzw;
        } else {
            r2.w = r0.w * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
            r2.w = fogConstants.atmospherefogdensityatcamera.x * r2.w;
            r3.w = cmp(0.00999999978 < abs(offposition.z));
            r4.x = fogConstants.atmospherefogheightdensityscale.x * offposition.z;
            r4.y = -1.44269502 * r4.x;
            r4.y = exp2(r4.y);
            r4.y = 1 + -r4.y;
            r4.x = r4.y / r4.x;
            r4.x = r4.x * r2.w;
            r2.w = r3.w ? r4.x : r2.w;
            r4.xyz = fogConstants.atmosphereTotalDensity.xyz * r2.www;
            r3.xyz = exp2(r4.xyz);
        }
        r3.xyz = r3.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1, 1, 1);
        r3.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r3.xyz);
        r2.x = dot(fogConstants.wldSunFogDir.xyz, -r2.xyz);
        r2.y = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
        r2.z = fogConstants.atmosphereMieSchlickK * -r2.x + 1;
        r2.z = r2.z * r2.z;
        r2.z = 12.566371 * r2.z;
        r2.y = r2.y / r2.z;
        r0.w = -fogConstants.atmospherehazebasedist + r0.w;
        r0.w = saturate(fogConstants.atmospherehazefadedist * r0.w);
        r0.w = r2.y * r0.w;
        r2.x = saturate(r2.x);
        r2.x = r2.x * r2.x + 1;
        r2.x = r2.x * 0.0596831031 + -1;
        r2.x = fogConstants.atmospheresunstrength * r2.x + 1;
        r2.yzw = fogConstants.atmosphereMieDensity.xyz * r0.www;
        r2.xyz = r2.xxx * fogConstants.atmosphereRayleighDensity.xyz + r2.yzw;
        r2.xyz = fogConstants.atmosphereInScatterIntensity * r2.xyz;
        r4.xyz = float3(1, 1, 1) + -r3.xyz;
        r2.xyz = r4.xyz * r2.xyz;
        r2.xyz = r0.xyz * r3.xyz + r2.xyz;
    } else {
        r0.w = fogConstants.heightFalloff * offposition.z;
        r2.w = fogConstants.heightFalloff * offposition.z + fogConstants.K0;
        r3.x = cmp(abs(r0.w) < 9.99999975e-05);
        r3.y = min(64, r2.w);
        r3.y = 1.44269502 * r3.y;
        r3.y = exp2(r3.y);
        r3.z = saturate(fogConstants.K0b);
        r3.w = cmp(r2.w < 0);
        r2.w = 1 + r2.w;
        r2.w = r3.w ? r3.y : r2.w;
        r2.w = -fogConstants.K0b + r2.w;
        r0.w = r3.x ? 1 : r0.w;
        r0.w = r2.w / r0.w;
        r0.w = r3.x ? r3.z : r0.w;
        r0.w = fogConstants.expMul * r0.w;
        r2.w = dot(offposition.xyz, offposition.xyz);
        r3.x = sqrt(r2.w);
        r0.w = r0.w * r3.x + fogConstants.expAdd;
        r0.w = exp2(r0.w);
        r0.w = min(1, r0.w);
        r0.w = 1 + -r0.w;
        r2.w = rsqrt(r2.w);
        r3.xyz = offposition.xyz * r2.www;
        r2.w = dot(fogConstants.wldSunFogDir.xyz, r3.xyz);
        r2.w = saturate(fogConstants.sunFogAngles.y * r2.w + fogConstants.sunFogAngles.x);
        r3.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
        r3.xyzw = r2.wwww * r3.xyzw + fogConstants.sunFogColor.xyzw;
        r0.w = r3.w * r0.w;
        r3.xyz = r3.xyz + -r0.xyz;
        r2.xyz = r0.www * r3.xyz + r0.xyz;
    }
    // --- Generic Fog Section ---

    // Exposure adjustment + clamping?
    r0.xyz = relHDRExposure.yyy * r2.xyz;
    bool3 getest = bool3(0, 0, 0);
    getest.x = cmp(r0.x >= 6.10351563e-05);
    getest.y = cmp(r0.y >= 6.10351563e-05);
    getest.z = cmp(r0.z >= 6.10351563e-05);
    r0.xyz = getest.xyz ? r0.xyz : 0;
    r0.xyz = min(float3(65024, 65024, 64512), r0.xyz);
    // Exposure adjustment + clamping?

    // -------- USE_OIT --------
    r2.xyz = max(float3(0, 0, 0), r0.xyz);
    r1.xyz = r2.xyz * r1.www;
    r3.x = r1.x == 0;
    r3.y = r1.y == 0;
    r3.z = r1.z == 0;
    r3.w = r1.w == 0;
    r3.xy = r3.zw ? r3.xy : 0;
    r0.w = r3.y ? r3.x : 0;
    if (r0.w == 0) {
        InterlockedAdd(gOit_Pixels[iposition.xy], 1, r3.z);
        r0.w = cmp((uint) r3.z < oitMaxEntries);
        if (r0.w != 0) {
            r0.w = max(r1.y, r1.z);
            r0.w = max(r1.x, r0.w);
            r0.w = (int) r0.w & 0x7f800000;
            r0.w = (int) r0.w + 0x00800000;
            r2.xyz = r2.xyz * r1.www + r0.www;
            if (8 == 0) r2.x = 0;
            else if (8 + 15 < 32) {
                r2.x = (uint) r2.x << (32 - (8 + 15));
                r2.x = (uint) r2.x >> (32 - 8);
            } else r2.x = (uint) r2.x >> 15;
            r2.yz = (uint2) r2.yz >> int2(15, 15);
            bitmask.y = ((~(-1 << 8)) << 8) & 0xffffffff;
            r2.y = (((uint) r2.y << 8) & bitmask.y) | ((uint) 0 & ~bitmask.y);
            bitmask.z = ((~(-1 << 8)) << 16) & 0xffffffff;
            r2.z = (((uint) r2.z << 16) & bitmask.z) | ((uint) 0 & ~bitmask.z);
            r2.x = (int) r2.y + (int) r2.x;
            r2.x = (int) r2.z + (int) r2.x;
            r0.w = (uint) r0.w << 1;
            r2.xzw = (int3) r0.www + (int3) r2.xxx;
            r0.w = 2046 * r1.w;
            r0.w = (uint) r0.w;
            r3.w = (uint) iposition.z << 2;
            r0.w = (int) r0.w & 2046;
            bitmask.w = ((~(-1 << 11)) << 0) & 0xffffffff;
            r0.w = (((uint) r0.w << 0) & bitmask.w) | ((uint) r3.w & ~bitmask.w);
            bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;
            r2.y = (((uint) zFeatherComputeSprites << 0) & bitmask.y) | ((uint) r0.w & ~bitmask.y);
            gOit_Nodes[uint3(r3.xyz)] = uint2(r2.xy);
            r0.w = -1;
        } else {
            r0.w = 0;
        }
    } else {
        r0.w = -1;
    }
    r1.xyz = r0.xyz * r1.www;
    //output.xyzw = r0.wwww ? float4(0,0,0,0) : r1.xyzw; // This doesn't work properly, replacing it seems to be fine though
    // -------- USE_OIT --------

    output.xyzw = r1.xyzw; // Always output color no matter what r0.w is
    return;
}