// ---- Created with 3Dmigoto v1.3.16 on Sun Jan 09 20:24:14 2022
Texture2D<float4> t14 : register(t14);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s14_s : register(s14);

SamplerState s11_s : register(s11);

SamplerState s3_s : register(s3);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[49];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[15];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[87];
}

cbuffer cb13 : register(b13)
{
  float4 cb13[1];
}




// 3Dmigoto declarations
#define cmp -
#include "ParallaxEffect.h"


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD4,
  float4 v3 : TEXCOORD1,
  float4 v4 : TEXCOORD2,
  float4 v5 : TEXCOORD3,
  float4 v6 : TEXCOORD5,
  float4 v7 : TEXCOORD8,
  float4 v8 : TEXCOORD9,
  float3 v9 : TEXCOORD10,
  float4 v10 : COLOR0,
  float4 v11 : COLOR1,
  float v12 : SV_ClipDistance0,
  float w12 : SV_CullDistance0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2)
{
  const float4 icb[] = { { 1.000000, 0, 0, 0},
                              { 0, 1.000000, 0, 0},
                              { 0, 0, 1.000000, 0},
                              { 0, 0, 0, 1.000000} };
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v0.xy * cb0[2].xy + cb0[2].zw;
  r0.x = cb12[86].x * r0.x;
  r0.z = cmp(r0.x >= 0.5);
  r0.z = r0.z ? 1.000000 : 0;
  r0.w = (uint)cb13[0].y;
  r0.z = (int)r0.w * (int)r0.z;
  r1.x = (uint)r0.z;
  r1.y = -r1.x * 0.5 + r0.x;
  r1.y = r1.y + r1.y;
  r2.x = r0.w ? r1.y : r0.x;
  r2.y = -r0.y * cb12[86].y + 1;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r0.x = (uint)r0.z << 2;
  r2.z = v0.z;
  r2.w = 1;
  r3.x = dot(cb12[r0.x+64].xyzw, r2.xyzw);
  r3.y = dot(cb12[r0.x+65].xyzw, r2.xyzw);
  r3.z = dot(cb12[r0.x+66].xyzw, r2.xyzw);
  r0.y = dot(cb12[r0.x+67].xyzw, r2.xyzw);
  r2.xyz = r3.xyz / r0.yyy;
  r0.y = (int)r0.z * 0;
  r2.w = 1;
  r3.x = dot(cb2[r0.y+1].xyzw, r2.xyzw);
  r3.y = dot(cb2[r0.y+2].xyzw, r2.xyzw);
  r3.z = dot(cb2[r0.y+3].xyzw, r2.xyzw);
  r3.w = 1;
  r4.x = dot(cb2[r0.y+7].xyzw, r3.xyzw);
  r4.y = dot(cb2[r0.y+8].xyzw, r3.xyzw);
  r4.z = dot(cb2[r0.y+9].xyzw, r3.xyzw);
  r0.y = dot(v6.xyz, v6.xyz);
  r0.y = rsqrt(r0.y);
  r0.yzw = v6.xyz * r0.yyy;
  r1.yz = GetParallaxCoords(v1.xy, v6.xyz, v3.xyz, v4.xyz, v5.xyz);
  r3.xyzw = t0.Sample(s0_s, r1.yz).xyzw;
  r5.xyzw = t1.Sample(s1_s, r1.yz).xyzw;
  r1.yzw = r5.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r5.x = min(7, cb2[48].x);
  r6.x = dot(v3.xyz, r1.yzw);
  r6.y = dot(v4.xyz, r1.yzw);
  r6.z = dot(v5.xyz, r1.yzw);
  r5.y = dot(r6.xyz, r6.xyz);
  r5.y = rsqrt(r5.y);
  r6.xyz = r6.xyz * r5.yyy;
  r5.yz = cb12[86].xy * v0.xy;
  r7.xy = r5.yz * cb0[2].xy + cb0[2].zw;
  r7.yz = cb12[85].xy * r7.xy;
  r7.x = cmp(r7.x >= 0.5);
  r7.w = r7.x ? 1.000000 : 0;
  r7.w = cb12[86].z * r7.w;
  r8.x = 0.5 * r7.w;
  r7.x = r7.x ? 2 : 1;
  r7.x = cb12[86].z * r7.x;
  r9.x = 0.5 * r7.x;
  r8.y = 0;
  r7.xy = max(r8.xy, r7.yz);
  r9.y = cb12[85].y;
  r7.xy = min(r9.xy, r7.xy);
  r7.xyzw = t14.Sample(s14_s, r7.xy).xyzw;
  r8.xyz = cb2[13].xyz * r7.xxx;
  r8.w = saturate(dot(r6.xyz, cb2[0].xyz));
  r8.xyz = r8.xyz * r8.www;
  r8.w = cmp(0 < r5.x);
  if (r8.w != 0) {
    r8.w = min(4, cb2[48].y);
    r9.xyz = r8.xyz;
    r9.w = 0;
    while (true) {
      r10.x = cmp(r9.w >= r5.x);
      if (r10.x != 0) break;
      r10.x = cmp(r9.w < r8.w);
      if (r10.x != 0) {
        r10.x = (uint)r9.w;
        r10.x = dot(cb2[14].xyzw, icb[r10.x+0].xyzw);
        r10.x = min(3, r10.x);
        r10.x = (uint)r10.x;
        r10.x = dot(r7.xyzw, icb[r10.x+0].xyzw);
      } else {
        r10.x = 1;
      }
      r10.y = r1.x * r5.x + r9.w;
      r10.y = (int)r10.y;
      r10.yzw = cb2[r10.y+27].xyz + -v2.xyz;
      r11.x = (int)r9.w;
      r11.y = dot(r10.yzw, r10.yzw);
      r11.z = sqrt(r11.y);
      r11.z = saturate(r11.z / cb2[r11.x+27].w);
      r11.z = -r11.z * r11.z + 1;
      r12.xyz = cb2[r11.x+41].xyz * r10.xxx;
      r10.x = rsqrt(r11.y);
      r10.xyz = r10.yzw * r10.xxx;
      r10.x = saturate(dot(r6.xyz, r10.xyz));
      r10.xyz = r12.xyz * r10.xxx;
      r9.xyz = r10.xyz * r11.zzz + r9.xyz;
      r9.w = 1 + r9.w;
    }
    r8.xyz = r9.xyz;
  }
  r0.y = saturate(dot(r0.yzw, r6.xyz));
  r0.z = saturate(dot(float2(0.164398998,-0.986393988), r6.yz));
  r0.z = cb1[14].y * r0.z;
  r0.y = r0.y * cb1[14].x + r0.z;
  r0.z = t11.Sample(s11_s, r5.yz).x;
  r0.z = cb1[14].z * r0.z;
  r0.z = max(0, r0.z);
  r0.z = min(cb1[14].w, r0.z);
  r0.yzw = r0.yyy * r0.zzz + r8.xyz;
  r6.w = 1;
  r5.x = dot(cb2[23].xyzw, r6.xyzw);
  r5.y = dot(cb2[24].xyzw, r6.xyzw);
  r5.z = dot(cb2[25].xyzw, r6.xyzw);
  r5.xyz = cb2[16].yzw + r5.xyz;
  r0.yzw = r5.xyz + r0.yzw;
  r0.yzw = cb1[8].yzw * cb1[8].xxx + r0.yzw;
  r0.yzw = r0.yzw * r3.xyz;
  r3.xyz = v10.xyz * r0.yzw;
  r5.x = dot(cb12[r0.x+24].xyzw, r2.xyzw);
  r5.y = dot(cb12[r0.x+25].xyzw, r2.xyzw);
  r1.x = dot(cb12[r0.x+27].xyzw, r2.xyzw);
  r2.xy = r5.xy / r1.xx;
  r4.w = 1;
  r5.x = dot(cb12[r0.x+32].xyzw, r4.xyzw);
  r5.y = dot(cb12[r0.x+33].xyzw, r4.xyzw);
  r0.x = dot(cb12[r0.x+35].xyzw, r4.xyzw);
  r2.zw = r5.xy / r0.xx;
  r2.xy = r2.xy + -r2.zw;
  r2.xy = float2(-0.5,0.5) * r2.xy;
  r0.xyz = -r0.yzw * v10.xyz + v11.xyz;
  r0.xyz = v11.www * r0.xyz + r3.xyz;
  r0.xyz = -r0.xyz * cb0[0].www + r3.xyz;
  r4.xyz = cb12[84].yyy * r0.xyz;
  r0.xyz = r0.xyz * cb12[84].yyy + cb0[1].xxx;
  r0.xyz = min(r3.xyz, r0.xyz);
  r0.w = cb2[15].z * r3.w;
  o0.w = v10.w * r0.w;
  o0.xyz = -r4.xyz * cb12[84].zzz + r0.xyz;
  r0.x = cmp(9.99999975e-006 < cb2[19].z);
  o1.xy = r0.xx ? float2(1,0) : r2.xy;
  r0.x = dot(v7.xyz, r1.yzw);
  r0.y = dot(v8.xyz, r1.yzw);
  r0.z = dot(v9.xyz, r1.yzw);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = -9.99999975e-006 + cb2[19].x;
  r1.x = cb2[19].y + -r0.w;
  r0.w = r5.w + -r0.w;
  r1.x = 1 / r1.x;
  r0.w = saturate(r1.x * r0.w);
  r1.x = r0.w * -2 + 3;
  r0.w = r0.w * r0.w;
  r0.w = r1.x * r0.w;
  o2.w = cb2[19].w * r0.w;
  r0.z = r0.z * -8 + 8;
  r0.z = sqrt(r0.z);
  r0.z = max(0.00100000005, r0.z);
  r0.xy = r0.xy / r0.zz;
  o2.xy = float2(0.5,0.5) + r0.xy;
  o1.zw = float2(0,1);
  o2.z = 0;
  return;
}