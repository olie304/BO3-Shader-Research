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
float2 vertexColorScale;

SamplerState colorSampler : register(s1);
SamplerState normalSampler : register(s2);
Texture2D<float4> colorMap : register(t0);
Texture2D<float4> normalMap : register(t6);


struct PixelShaderInput          
{
    float4 v0 : SV_POSITION0;   // Position
    float4 v1 : COLOR0;         // Color
    float4 v2 : TEXCOORD0;      // UV
    float4 v3 : TEXCOORD1;      // ???
    float4 v4 : TEXCOORD2;      // ???
    float3 v5 : TEXCOORD3;      // ???
    uint v6 : SV_IsFrontFace0;  // IsFrontFace
};

struct PixelShaderOutput          
{
    float4 o0 : SV_TARGET0;  // Color & Tint
    float4 o1 : SV_TARGET1;  // ???
    float4 o2 : SV_TARGET2;  // ???
};


PixelShaderOutput ps_main(const PixelShaderInput input)
{
    PixelShaderOutput output;

    float4 r0,r1,r2,r3;
    uint4 bitmask, uiDest;
    float4 fDest;

    r0.xyz = float3(-1,-1,-1) + colorTint.xyz;
    r1.xyzw = colorMap.Sample(colorSampler, input.v2.xy).xyzw;
    r0.xyz = r1.www * r0.xyz + float3(1,1,1);
    output.o0.xyz = r1.xyz * r0.xyz;
    output.o0.w = 1;
    r0.xyz = normalMap.Sample(normalSampler, input.v2.xy).xyz;
    r0.xyz = float3(-0.5,-0.5,-0) + r0.xyz;
    r0.xyz = baseNormalHeight * r0.xyz + float3(0.5,0.5,0);
    r0.xy = r0.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
    r0.z = r0.z * r0.z;
    r0.z = 0.333333343 * r0.z;
    r0.z = min(1, r0.z);
    r0.w = dot(input.v5.xyz, input.v5.xyz);
    r0.w = rsqrt(r0.w);
    r1.xyz = input.v5.xyz * r0.www;
    r0.w = input.v6.x ? 1 : -1;
    r1.xyz = r1.xyz * r0.www;
    r1.xyz = r1.xyz * r0.yyy;
    r1.w = dot(input.v4.xyz, input.v4.xyz);
    r1.w = rsqrt(r1.w);
    r2.xyz = input.v4.xyz * r1.www;
    r2.xyz = r2.xyz * r0.www;
    r1.xyz = r2.xyz * r0.xxx + r1.xyz;
    r0.x = dot(r0.xy, r0.xy);
    r0.x = 1 + -r0.x;
    r0.x = max(0, r0.x);
    r0.x = sqrt(r0.x);
    r0.y = dot(input.v3.xyz, input.v3.xyz);
    r0.y = rsqrt(r0.y);
    r2.xyz = input.v3.xyz * r0.yyy;
    r3.xyz = r2.xyz * r0.www;
    r1.xyz = r3.xyz * r0.xxx + r1.xyz;
    r0.x = r3.x + r3.y;
    r0.x = r2.z * r0.w + r0.x;
    r0.x = 0.5 * r0.x;
    r0.y = dot(r1.xyz, r1.xyz);
    r0.y = rsqrt(r0.y);
    r1.yzw = r1.xyz * r0.yyy;
    r3.yzw = float3(1,-1,-1) * r1.yzw;
    r3.x = 1;
    r1.x = 0;
    r2.xyz = r2.xyz * r0.www + -r0.xxx;
    r0.y = max(r2.y, r2.z);
    r0.y = max(r2.x, r0.y);
    r0.x = max(r0.x, r0.y);
    r0.y = float(r0.x == r2.x);
    r1.xyzw = r0.yyyy ? r3.xyzw : r1.xyzw;
    r3.yzw = float3(-1,1,-1) * r1.yzw;
    r3.x = 2;
    r0.w = 2 + r0.x;
    r0.x = r0.y ? r0.w : r0.x;
    r0.y = float(r0.x == r2.y);
    r1.xyzw = r0.yyyy ? r3.xyzw : r1.xyzw;
    r3.yzw = float3(-1,-1,1) * r1.yzw;
    r0.w = 2 + r0.x;
    r0.x = r0.y ? r0.w : r0.x;
    r0.x = float(r0.x == r2.z);
    r3.x = 3;
    r1.xyzw = r0.xxxx ? r3.xyzw : r1.xyzw;
    r0.x = r1.y + r1.z;
    r2.z = r0.x + r1.w;
    r2.x = -r1.z * 3 + r2.z;
    r2.y = r1.w + -r1.y;
    r0.x = (uint)r1.x;
    output.o1.w = 0.333333343 * r0.x;
    r0.xyw = float3(0.408248305,0.707106769,0.577350259) * r2.xyz;
    r0.w = 1 + abs(r0.w);
    r0.w = rsqrt(r0.w);
    r0.xy = r0.xy * r0.ww;
    output.o1.xy = r0.xy * float2(0.588235319,0.588235319) + float2(0.5,0.5);
    r0.x = saturate(0.0588235296 * glossRange.y);
    r0.x = -17 * r0.x;
    r0.x = exp2(r0.x);
    r0.x = r0.z + r0.x;
    r0.x = log2(r0.x);
    r0.x = -0.0588235296 * r0.x;
    r0.x = max(0, r0.x);
    output.o1.z = r0.x * 0.49755621 + 0.00146627566;
    output.o2.xyzw = float4(0.0399999991,0.5,1,0.333333343);
    return output;
}