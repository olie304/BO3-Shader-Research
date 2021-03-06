//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:43:21 2021
//
//
// Buffer Definitions: 
//
// Resource bind info for umbraOcclusionBuffer
// {
//
//   float $Element;                    // Offset:    0 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// umbraOcclusionBuffer              texture  struct         r/o             t1      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_VertexID              0   x           0   VERTID    uint   x   
// TEXCOORD                15   x           1     NONE    uint   x   
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_resource_structured t1, 4
dcl_input_sgv v0.x, vertex_id
dcl_input v1.x
dcl_output_siv o0.xyzw, position
dcl_temps 1
and r0.x, v0.x, l(1)
utof r0.x, r0.x
mul r0.x, r0.x, l(0.015625)
and r0.y, v1.x, l(63)
utof r0.y, r0.y
mad r0.x, r0.y, l(0.015625), r0.x
mad o0.x, r0.x, l(2.000000), l(-1.000000)
ubfe r0.x, l(4), l(2), v1.x
ishl r0.x, r0.x, l(4)
ushr r0.y, v1.x, l(6)
ushr r0.z, r0.y, l(2)
imad r0.x, r0.z, l(256), r0.x
bfi r0.z, l(2), l(2), r0.y, l(0)
iadd r0.x, r0.x, r0.z
bfi r0.x, l(2), l(0), v1.x, r0.x
ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r0.x, r0.x, l(0), t1.xxxx
add_sat r0.x, -r0.x, l(0.999910)
lt r0.z, r0.x, l(0.00009710)
movc r0.x, r0.z, l(0), r0.x
lt r0.z, l(0.000000), r0.x
mov o0.z, r0.x
and o0.w, r0.z, l(0x3f800000)
ubfe r0.x, l(1), l(1), v0.x
utof r0.xy, r0.xyxx
mul r0.x, r0.x, l(0.015625)
mad r0.x, r0.y, l(0.015625), r0.x
mad o0.y, r0.x, l(2.000000), l(-1.000000)
ret 
// Approximately 28 instruction slots used
