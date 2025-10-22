.class abstract Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;
.super Ljava/lang/Object;
.source "Mul_GF2x.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul17;,
        Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul13;,
        Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul12;,
        Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul9;,
        Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul6;
    }
.end annotation


# direct methods
.method static bridge synthetic -$$Nest$smSQR128_NO_SIMD_GF2X([JI[JI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->SQR128_NO_SIMD_GF2X([JI[JI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smSQR256_NO_SIMD_GF2X([JI[JI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->SQR256_NO_SIMD_GF2X([JI[JI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smSQR32_NO_SIMD_GF2X(J)J
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->SQR32_NO_SIMD_GF2X(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$smSQR64_NO_SIMD_GF2X([JIJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->SQR64_NO_SIMD_GF2X([JIJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smmul288_no_simd_gf2x([JI[JI[JI[J)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul288_no_simd_gf2x([JI[JI[JI[J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smmul288_no_simd_gf2x_xor([JI[JI[JI[J)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul288_no_simd_gf2x_xor([JI[JI[JI[J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smmul384_no_simd_gf2x([J[JI[JI[J)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul384_no_simd_gf2x([J[JI[JI[J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smmul384_no_simd_gf2x_xor([J[JI[JI[J)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul384_no_simd_gf2x_xor([J[JI[JI[J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smmul416_no_simd_gf2x([J[JI[JI[J)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul416_no_simd_gf2x([J[JI[JI[J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smmul416_no_simd_gf2x_xor([J[JI[JI[J[J)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul416_no_simd_gf2x_xor([J[JI[JI[J[J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smmul544_no_simd_gf2x([J[JI[JI[J[J[J)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul544_no_simd_gf2x([J[JI[JI[J[J[J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smmul544_no_simd_gf2x_xor([J[JI[JI[J[J[J[J)V
    .locals 0

    invoke-static/range {p0 .. p8}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul544_no_simd_gf2x_xor([J[JI[JI[J[J[J[J)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static MUL32_NO_SIMD_GF2X(JJ)J
    .locals 7
    .param p0, "a"    # J
    .param p2, "b"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 193
    const-wide/16 v0, 0x1

    and-long v2, p2, v0

    neg-long v2, v2

    and-long/2addr v2, p0

    .line 194
    .local v2, "tmp":J
    const/4 v4, 0x1

    ushr-long v5, p2, v4

    and-long/2addr v5, v0

    neg-long v5, v5

    and-long/2addr v5, p0

    shl-long v4, v5, v4

    xor-long/2addr v2, v4

    .line 195
    const/4 v4, 0x2

    ushr-long v5, p2, v4

    and-long/2addr v5, v0

    neg-long v5, v5

    and-long/2addr v5, p0

    shl-long v4, v5, v4

    xor-long/2addr v2, v4

    .line 196
    const/4 v4, 0x3

    ushr-long v5, p2, v4

    and-long/2addr v5, v0

    neg-long v5, v5

    and-long/2addr v5, p0

    shl-long v4, v5, v4

    xor-long/2addr v2, v4

    .line 197
    const/4 v4, 0x4

    ushr-long v5, p2, v4

    and-long/2addr v5, v0

    neg-long v5, v5

    and-long/2addr v5, p0

    shl-long v4, v5, v4

    xor-long/2addr v2, v4

    .line 198
    const/4 v4, 0x5

    ushr-long v5, p2, v4

    and-long/2addr v5, v0

    neg-long v5, v5

    and-long/2addr v5, p0

    shl-long v4, v5, v4

    xor-long/2addr v2, v4

    .line 199
    const/4 v4, 0x6

    ushr-long v5, p2, v4

    and-long/2addr v5, v0

    neg-long v5, v5

    and-long/2addr v5, p0

    shl-long v4, v5, v4

    xor-long/2addr v2, v4

    .line 200
    const/4 v4, 0x7

    ushr-long v5, p2, v4

    and-long/2addr v5, v0

    neg-long v5, v5

    and-long/2addr v5, p0

    shl-long v4, v5, v4

    xor-long/2addr v2, v4

    .line 201
    const/16 v4, 0x8

    ushr-long v5, p2, v4

    and-long/2addr v5, v0

    neg-long v5, v5

    and-long/2addr v5, p0

    shl-long v4, v5, v4

    xor-long/2addr v2, v4

    .line 202
    const/16 v4, 0x9

    ushr-long v5, p2, v4

    and-long/2addr v5, v0

    neg-long v5, v5

    and-long/2addr v5, p0

    shl-long v4, v5, v4

    xor-long/2addr v2, v4

    .line 203
    const/16 v4, 0xa

    ushr-long v5, p2, v4

    and-long/2addr v5, v0

    neg-long v5, v5

    and-long/2addr v5, p0

    shl-long v4, v5, v4

    xor-long/2addr v2, v4

    .line 204
    const/16 v4, 0xb

    ushr-long v5, p2, v4

    and-long/2addr v5, v0

    neg-long v5, v5

    and-long/2addr v5, p0

    shl-long v4, v5, v4

    xor-long/2addr v2, v4

    .line 205
    const/16 v4, 0xc

    ushr-long v5, p2, v4

    and-long/2addr v5, v0

    neg-long v5, v5

    and-long/2addr v5, p0

    shl-long v4, v5, v4

    xor-long/2addr v2, v4

    .line 206
    const/16 v4, 0xd

    ushr-long v5, p2, v4

    and-long/2addr v5, v0

    neg-long v5, v5

    and-long/2addr v5, p0

    shl-long v4, v5, v4

    xor-long/2addr v2, v4

    .line 207
    const/16 v4, 0xe

    ushr-long v5, p2, v4

    and-long/2addr v5, v0

    neg-long v5, v5

    and-long/2addr v5, p0

    shl-long v4, v5, v4

    xor-long/2addr v2, v4

    .line 208
    const/16 v4, 0xf

    ushr-long v5, p2, v4

    and-long/2addr v5, v0

    neg-long v5, v5

    and-long/2addr v5, p0

    shl-long v4, v5, v4

    xor-long/2addr v2, v4

    .line 209
    const/16 v4, 0x10

    ushr-long v5, p2, v4

    and-long/2addr v5, v0

    neg-long v5, v5

    and-long/2addr v5, p0

    shl-long v4, v5, v4

    xor-long/2addr v2, v4

    .line 210
    const/16 v4, 0x11

    ushr-long v5, p2, v4

    and-long/2addr v5, v0

    neg-long v5, v5

    and-long/2addr v5, p0

    shl-long v4, v5, v4

    xor-long/2addr v2, v4

    .line 211
    const/16 v4, 0x12

    ushr-long v5, p2, v4

    and-long/2addr v5, v0

    neg-long v5, v5

    and-long/2addr v5, p0

    shl-long v4, v5, v4

    xor-long/2addr v2, v4

    .line 212
    const/16 v4, 0x13

    ushr-long v5, p2, v4

    and-long/2addr v5, v0

    neg-long v5, v5

    and-long/2addr v5, p0

    shl-long v4, v5, v4

    xor-long/2addr v2, v4

    .line 213
    const/16 v4, 0x14

    ushr-long v5, p2, v4

    and-long/2addr v5, v0

    neg-long v5, v5

    and-long/2addr v5, p0

    shl-long v4, v5, v4

    xor-long/2addr v2, v4

    .line 214
    const/16 v4, 0x15

    ushr-long v5, p2, v4

    and-long/2addr v5, v0

    neg-long v5, v5

    and-long/2addr v5, p0

    shl-long v4, v5, v4

    xor-long/2addr v2, v4

    .line 215
    const/16 v4, 0x16

    ushr-long v4, p2, v4

    and-long/2addr v4, v0

    neg-long v4, v4

    and-long/2addr v4, p0

    const/16 v6, 0x16

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    .line 216
    const/16 v4, 0x17

    ushr-long v4, p2, v4

    and-long/2addr v4, v0

    neg-long v4, v4

    and-long/2addr v4, p0

    const/16 v6, 0x17

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    .line 217
    const/16 v4, 0x18

    ushr-long v4, p2, v4

    and-long/2addr v4, v0

    neg-long v4, v4

    and-long/2addr v4, p0

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    .line 218
    const/16 v4, 0x19

    ushr-long v4, p2, v4

    and-long/2addr v4, v0

    neg-long v4, v4

    and-long/2addr v4, p0

    const/16 v6, 0x19

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    .line 219
    const/16 v4, 0x1a

    ushr-long v4, p2, v4

    and-long/2addr v4, v0

    neg-long v4, v4

    and-long/2addr v4, p0

    const/16 v6, 0x1a

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    .line 220
    const/16 v4, 0x1b

    ushr-long v4, p2, v4

    and-long/2addr v4, v0

    neg-long v4, v4

    and-long/2addr v4, p0

    const/16 v6, 0x1b

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    .line 221
    const/16 v4, 0x1c

    ushr-long v4, p2, v4

    and-long/2addr v4, v0

    neg-long v4, v4

    and-long/2addr v4, p0

    const/16 v6, 0x1c

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    .line 222
    const/16 v4, 0x1d

    ushr-long v4, p2, v4

    and-long/2addr v4, v0

    neg-long v4, v4

    and-long/2addr v4, p0

    const/16 v6, 0x1d

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    .line 223
    const/16 v4, 0x1e

    ushr-long v4, p2, v4

    and-long/2addr v4, v0

    neg-long v4, v4

    and-long/2addr v4, p0

    const/16 v6, 0x1e

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    .line 224
    const/16 v4, 0x1f

    ushr-long v4, p2, v4

    and-long/2addr v0, v4

    neg-long v0, v0

    and-long/2addr v0, p0

    const/16 v4, 0x1f

    shl-long/2addr v0, v4

    xor-long/2addr v0, v2

    .line 225
    .end local v2    # "tmp":J
    .local v0, "tmp":J
    return-wide v0
.end method

.method private static MUL64_NO_SIMD_GF2X([JIJJ)V
    .locals 31
    .param p0, "C"    # [J
    .param p1, "c_cp"    # I
    .param p2, "A"    # J
    .param p4, "B"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "C",
            "c_cp",
            "A",
            "B"
        }
    .end annotation

    .line 231
    const-wide/16 v0, 0x1

    and-long v2, p4, v0

    neg-long v2, v2

    and-long v2, v2, p2

    .line 233
    .local v2, "c0":J
    const/16 v4, 0x3f

    ushr-long v5, p4, v4

    neg-long v5, v5

    and-long v5, v5, p2

    .line 234
    .local v5, "tmp":J
    shl-long v7, v5, v4

    xor-long/2addr v2, v7

    .line 235
    const/4 v7, 0x1

    ushr-long v8, v5, v7

    .line 236
    .local v8, "c1":J
    ushr-long v10, p4, v7

    and-long/2addr v10, v0

    neg-long v10, v10

    and-long v5, v10, p2

    .line 237
    shl-long v10, v5, v7

    xor-long/2addr v2, v10

    .line 238
    ushr-long v10, v5, v4

    xor-long/2addr v8, v10

    .line 239
    const/4 v4, 0x2

    ushr-long v10, p4, v4

    and-long/2addr v10, v0

    neg-long v10, v10

    and-long v5, v10, p2

    .line 240
    shl-long v10, v5, v4

    xor-long/2addr v2, v10

    .line 241
    const/16 v7, 0x3e

    ushr-long v10, v5, v7

    xor-long/2addr v8, v10

    .line 242
    const/4 v10, 0x3

    ushr-long v11, p4, v10

    and-long/2addr v11, v0

    neg-long v11, v11

    and-long v5, v11, p2

    .line 243
    shl-long v11, v5, v10

    xor-long/2addr v2, v11

    .line 244
    const/16 v11, 0x3d

    ushr-long v12, v5, v11

    xor-long/2addr v8, v12

    .line 245
    const/4 v12, 0x4

    ushr-long v13, p4, v12

    and-long/2addr v13, v0

    neg-long v13, v13

    and-long v5, v13, p2

    .line 246
    shl-long v13, v5, v12

    xor-long/2addr v2, v13

    .line 247
    const/16 v13, 0x3c

    ushr-long v14, v5, v13

    xor-long/2addr v8, v14

    .line 248
    const/4 v14, 0x5

    ushr-long v15, p4, v14

    move-wide/from16 v17, v0

    and-long v0, v15, v17

    neg-long v0, v0

    and-long v0, v0, p2

    .line 249
    .end local v5    # "tmp":J
    .local v0, "tmp":J
    shl-long v5, v0, v14

    xor-long/2addr v2, v5

    .line 250
    const/16 v5, 0x3b

    ushr-long v15, v0, v5

    xor-long/2addr v8, v15

    .line 251
    const/4 v6, 0x6

    ushr-long v15, p4, v6

    const/16 v19, 0x2

    const/16 v20, 0x3b

    and-long v4, v15, v17

    neg-long v4, v4

    and-long v0, v4, p2

    .line 252
    shl-long v4, v0, v6

    xor-long/2addr v2, v4

    .line 253
    const/16 v4, 0x3a

    ushr-long v15, v0, v4

    xor-long/2addr v8, v15

    .line 254
    const/4 v5, 0x7

    ushr-long v15, p4, v5

    const/16 v21, 0x3a

    const/16 v22, 0x7

    and-long v4, v15, v17

    neg-long v4, v4

    and-long v0, v4, p2

    .line 255
    shl-long v4, v0, v22

    xor-long/2addr v2, v4

    .line 256
    const/16 v4, 0x39

    ushr-long v15, v0, v4

    xor-long/2addr v8, v15

    .line 257
    const/16 v5, 0x8

    ushr-long v15, p4, v5

    const/16 v23, 0x39

    const/16 v24, 0x8

    and-long v4, v15, v17

    neg-long v4, v4

    and-long v0, v4, p2

    .line 258
    shl-long v4, v0, v24

    xor-long/2addr v2, v4

    .line 259
    const/16 v4, 0x38

    ushr-long v15, v0, v4

    xor-long/2addr v8, v15

    .line 260
    const/16 v5, 0x9

    ushr-long v15, p4, v5

    const/16 v25, 0x38

    const/16 v26, 0x9

    and-long v4, v15, v17

    neg-long v4, v4

    and-long v0, v4, p2

    .line 261
    shl-long v4, v0, v26

    xor-long/2addr v2, v4

    .line 262
    const/16 v4, 0x37

    ushr-long v15, v0, v4

    xor-long/2addr v8, v15

    .line 263
    const/16 v5, 0xa

    ushr-long v15, p4, v5

    const/16 v27, 0x37

    const/16 v28, 0xa

    and-long v4, v15, v17

    neg-long v4, v4

    and-long v0, v4, p2

    .line 264
    shl-long v4, v0, v28

    xor-long/2addr v2, v4

    .line 265
    const/16 v4, 0x36

    ushr-long v15, v0, v4

    xor-long/2addr v8, v15

    .line 266
    const/16 v5, 0xb

    ushr-long v15, p4, v5

    const/16 v29, 0x36

    const/16 v30, 0xb

    and-long v4, v15, v17

    neg-long v4, v4

    and-long v0, v4, p2

    .line 267
    shl-long v4, v0, v30

    xor-long/2addr v2, v4

    .line 268
    const/16 v4, 0x35

    ushr-long v4, v0, v4

    xor-long/2addr v4, v8

    .line 269
    .end local v8    # "c1":J
    .local v4, "c1":J
    const/16 v8, 0xc

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 270
    const/16 v8, 0xc

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 271
    const/16 v8, 0x34

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 272
    const/16 v8, 0xd

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 273
    const/16 v8, 0xd

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 274
    const/16 v8, 0x33

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 275
    const/16 v8, 0xe

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 276
    const/16 v8, 0xe

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 277
    const/16 v8, 0x32

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 278
    const/16 v8, 0xf

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 279
    const/16 v8, 0xf

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 280
    const/16 v8, 0x31

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 281
    const/16 v8, 0x10

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 282
    const/16 v8, 0x10

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 283
    const/16 v8, 0x30

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 284
    const/16 v8, 0x11

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 285
    const/16 v8, 0x11

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 286
    const/16 v8, 0x2f

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 287
    const/16 v8, 0x12

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 288
    const/16 v8, 0x12

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 289
    const/16 v8, 0x2e

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 290
    const/16 v8, 0x13

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 291
    const/16 v8, 0x13

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 292
    const/16 v8, 0x2d

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 293
    const/16 v8, 0x14

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 294
    const/16 v8, 0x14

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 295
    const/16 v8, 0x2c

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 296
    const/16 v8, 0x15

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 297
    const/16 v8, 0x15

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 298
    const/16 v8, 0x2b

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 299
    const/16 v8, 0x16

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 300
    const/16 v8, 0x16

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 301
    const/16 v8, 0x2a

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 302
    const/16 v8, 0x17

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 303
    const/16 v8, 0x17

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 304
    const/16 v8, 0x29

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 305
    const/16 v8, 0x18

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 306
    const/16 v8, 0x18

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 307
    const/16 v8, 0x28

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 308
    const/16 v8, 0x19

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 309
    const/16 v8, 0x19

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 310
    const/16 v8, 0x27

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 311
    const/16 v8, 0x1a

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 312
    const/16 v8, 0x1a

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 313
    const/16 v8, 0x26

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 314
    const/16 v8, 0x1b

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 315
    const/16 v8, 0x1b

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 316
    const/16 v8, 0x25

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 317
    const/16 v8, 0x1c

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 318
    const/16 v8, 0x1c

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 319
    const/16 v8, 0x24

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 320
    const/16 v8, 0x1d

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 321
    const/16 v8, 0x1d

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 322
    const/16 v8, 0x23

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 323
    const/16 v8, 0x1e

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 324
    const/16 v8, 0x1e

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 325
    const/16 v8, 0x22

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 326
    const/16 v8, 0x1f

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 327
    const/16 v8, 0x1f

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 328
    const/16 v8, 0x21

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 329
    const/16 v8, 0x20

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 330
    const/16 v8, 0x20

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 331
    const/16 v8, 0x20

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 332
    const/16 v8, 0x21

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 333
    const/16 v8, 0x21

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 334
    const/16 v8, 0x1f

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 335
    const/16 v8, 0x22

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 336
    const/16 v8, 0x22

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 337
    const/16 v8, 0x1e

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 338
    const/16 v8, 0x23

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 339
    const/16 v8, 0x23

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 340
    const/16 v8, 0x1d

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 341
    const/16 v8, 0x24

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 342
    const/16 v8, 0x24

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 343
    const/16 v8, 0x1c

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 344
    const/16 v8, 0x25

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 345
    const/16 v8, 0x25

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 346
    const/16 v8, 0x1b

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 347
    const/16 v8, 0x26

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 348
    const/16 v8, 0x26

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 349
    const/16 v8, 0x1a

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 350
    const/16 v8, 0x27

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 351
    const/16 v8, 0x27

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 352
    const/16 v8, 0x19

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 353
    const/16 v8, 0x28

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 354
    const/16 v8, 0x28

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 355
    const/16 v8, 0x18

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 356
    const/16 v8, 0x29

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 357
    const/16 v8, 0x29

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 358
    const/16 v8, 0x17

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 359
    const/16 v8, 0x2a

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 360
    const/16 v8, 0x2a

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 361
    const/16 v8, 0x16

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 362
    const/16 v8, 0x2b

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 363
    const/16 v8, 0x2b

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 364
    const/16 v8, 0x15

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 365
    const/16 v8, 0x2c

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 366
    const/16 v8, 0x2c

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 367
    const/16 v8, 0x14

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 368
    const/16 v8, 0x2d

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 369
    const/16 v8, 0x2d

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 370
    const/16 v8, 0x13

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 371
    const/16 v8, 0x2e

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 372
    const/16 v8, 0x2e

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 373
    const/16 v8, 0x12

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 374
    const/16 v8, 0x2f

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 375
    const/16 v8, 0x2f

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 376
    const/16 v8, 0x11

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 377
    const/16 v8, 0x30

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 378
    const/16 v8, 0x30

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 379
    const/16 v8, 0x10

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 380
    const/16 v8, 0x31

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 381
    const/16 v8, 0x31

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 382
    const/16 v8, 0xf

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 383
    const/16 v8, 0x32

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 384
    const/16 v8, 0x32

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 385
    const/16 v8, 0xe

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 386
    const/16 v8, 0x33

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 387
    const/16 v8, 0x33

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 388
    const/16 v8, 0xd

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 389
    const/16 v8, 0x34

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 390
    const/16 v8, 0x34

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 391
    const/16 v8, 0xc

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 392
    const/16 v8, 0x35

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 393
    const/16 v8, 0x35

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 394
    ushr-long v8, v0, v30

    xor-long/2addr v4, v8

    .line 395
    ushr-long v8, p4, v29

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 396
    shl-long v8, v0, v29

    xor-long/2addr v2, v8

    .line 397
    ushr-long v8, v0, v28

    xor-long/2addr v4, v8

    .line 398
    ushr-long v8, p4, v27

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 399
    shl-long v8, v0, v27

    xor-long/2addr v2, v8

    .line 400
    ushr-long v8, v0, v26

    xor-long/2addr v4, v8

    .line 401
    ushr-long v8, p4, v25

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 402
    shl-long v8, v0, v25

    xor-long/2addr v2, v8

    .line 403
    ushr-long v8, v0, v24

    xor-long/2addr v4, v8

    .line 404
    ushr-long v8, p4, v23

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 405
    shl-long v8, v0, v23

    xor-long/2addr v2, v8

    .line 406
    ushr-long v8, v0, v22

    xor-long/2addr v4, v8

    .line 407
    ushr-long v8, p4, v21

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 408
    shl-long v8, v0, v21

    xor-long/2addr v2, v8

    .line 409
    ushr-long v8, v0, v6

    xor-long/2addr v4, v8

    .line 410
    ushr-long v8, p4, v20

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 411
    shl-long v8, v0, v20

    xor-long/2addr v2, v8

    .line 412
    ushr-long v8, v0, v14

    xor-long/2addr v4, v8

    .line 413
    ushr-long v8, p4, v13

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 414
    shl-long v8, v0, v13

    xor-long/2addr v2, v8

    .line 415
    ushr-long v8, v0, v12

    xor-long/2addr v4, v8

    .line 416
    ushr-long v8, p4, v11

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 417
    shl-long v8, v0, v11

    xor-long/2addr v2, v8

    .line 418
    ushr-long v8, v0, v10

    xor-long/2addr v4, v8

    .line 419
    ushr-long v8, p4, v7

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 420
    shl-long v6, v0, v7

    xor-long/2addr v6, v2

    aput-wide v6, p0, p1

    .line 421
    add-int/lit8 v6, p1, 0x1

    ushr-long v7, v0, v19

    xor-long/2addr v7, v4

    aput-wide v7, p0, v6

    .line 422
    return-void
.end method

.method private static MUL64_NO_SIMD_GF2X_XOR([JIJJ)V
    .locals 31
    .param p0, "C"    # [J
    .param p1, "c_cp"    # I
    .param p2, "A"    # J
    .param p4, "B"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "C",
            "c_cp",
            "A",
            "B"
        }
    .end annotation

    .line 427
    const-wide/16 v0, 0x1

    and-long v2, p4, v0

    neg-long v2, v2

    and-long v2, v2, p2

    .line 429
    .local v2, "c0":J
    const/16 v4, 0x3f

    ushr-long v5, p4, v4

    neg-long v5, v5

    and-long v5, v5, p2

    .line 430
    .local v5, "tmp":J
    shl-long v7, v5, v4

    xor-long/2addr v2, v7

    .line 431
    const/4 v7, 0x1

    ushr-long v8, v5, v7

    .line 432
    .local v8, "c1":J
    ushr-long v10, p4, v7

    and-long/2addr v10, v0

    neg-long v10, v10

    and-long v5, v10, p2

    .line 433
    shl-long v10, v5, v7

    xor-long/2addr v2, v10

    .line 434
    ushr-long v10, v5, v4

    xor-long/2addr v8, v10

    .line 435
    const/4 v4, 0x2

    ushr-long v10, p4, v4

    and-long/2addr v10, v0

    neg-long v10, v10

    and-long v5, v10, p2

    .line 436
    shl-long v10, v5, v4

    xor-long/2addr v2, v10

    .line 437
    const/16 v7, 0x3e

    ushr-long v10, v5, v7

    xor-long/2addr v8, v10

    .line 438
    const/4 v10, 0x3

    ushr-long v11, p4, v10

    and-long/2addr v11, v0

    neg-long v11, v11

    and-long v5, v11, p2

    .line 439
    shl-long v11, v5, v10

    xor-long/2addr v2, v11

    .line 440
    const/16 v11, 0x3d

    ushr-long v12, v5, v11

    xor-long/2addr v8, v12

    .line 441
    const/4 v12, 0x4

    ushr-long v13, p4, v12

    and-long/2addr v13, v0

    neg-long v13, v13

    and-long v5, v13, p2

    .line 442
    shl-long v13, v5, v12

    xor-long/2addr v2, v13

    .line 443
    const/16 v13, 0x3c

    ushr-long v14, v5, v13

    xor-long/2addr v8, v14

    .line 444
    const/4 v14, 0x5

    ushr-long v15, p4, v14

    move-wide/from16 v17, v0

    and-long v0, v15, v17

    neg-long v0, v0

    and-long v0, v0, p2

    .line 445
    .end local v5    # "tmp":J
    .local v0, "tmp":J
    shl-long v5, v0, v14

    xor-long/2addr v2, v5

    .line 446
    const/16 v5, 0x3b

    ushr-long v15, v0, v5

    xor-long/2addr v8, v15

    .line 447
    const/4 v6, 0x6

    ushr-long v15, p4, v6

    const/16 v19, 0x2

    const/16 v20, 0x3b

    and-long v4, v15, v17

    neg-long v4, v4

    and-long v0, v4, p2

    .line 448
    shl-long v4, v0, v6

    xor-long/2addr v2, v4

    .line 449
    const/16 v4, 0x3a

    ushr-long v15, v0, v4

    xor-long/2addr v8, v15

    .line 450
    const/4 v5, 0x7

    ushr-long v15, p4, v5

    const/16 v21, 0x3a

    const/16 v22, 0x7

    and-long v4, v15, v17

    neg-long v4, v4

    and-long v0, v4, p2

    .line 451
    shl-long v4, v0, v22

    xor-long/2addr v2, v4

    .line 452
    const/16 v4, 0x39

    ushr-long v15, v0, v4

    xor-long/2addr v8, v15

    .line 453
    const/16 v5, 0x8

    ushr-long v15, p4, v5

    const/16 v23, 0x39

    const/16 v24, 0x8

    and-long v4, v15, v17

    neg-long v4, v4

    and-long v0, v4, p2

    .line 454
    shl-long v4, v0, v24

    xor-long/2addr v2, v4

    .line 455
    const/16 v4, 0x38

    ushr-long v15, v0, v4

    xor-long/2addr v8, v15

    .line 456
    const/16 v5, 0x9

    ushr-long v15, p4, v5

    const/16 v25, 0x38

    const/16 v26, 0x9

    and-long v4, v15, v17

    neg-long v4, v4

    and-long v0, v4, p2

    .line 457
    shl-long v4, v0, v26

    xor-long/2addr v2, v4

    .line 458
    const/16 v4, 0x37

    ushr-long v15, v0, v4

    xor-long/2addr v8, v15

    .line 459
    const/16 v5, 0xa

    ushr-long v15, p4, v5

    const/16 v27, 0x37

    const/16 v28, 0xa

    and-long v4, v15, v17

    neg-long v4, v4

    and-long v0, v4, p2

    .line 460
    shl-long v4, v0, v28

    xor-long/2addr v2, v4

    .line 461
    const/16 v4, 0x36

    ushr-long v15, v0, v4

    xor-long/2addr v8, v15

    .line 462
    const/16 v5, 0xb

    ushr-long v15, p4, v5

    const/16 v29, 0x36

    const/16 v30, 0xb

    and-long v4, v15, v17

    neg-long v4, v4

    and-long v0, v4, p2

    .line 463
    shl-long v4, v0, v30

    xor-long/2addr v2, v4

    .line 464
    const/16 v4, 0x35

    ushr-long v4, v0, v4

    xor-long/2addr v4, v8

    .line 465
    .end local v8    # "c1":J
    .local v4, "c1":J
    const/16 v8, 0xc

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 466
    const/16 v8, 0xc

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 467
    const/16 v8, 0x34

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 468
    const/16 v8, 0xd

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 469
    const/16 v8, 0xd

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 470
    const/16 v8, 0x33

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 471
    const/16 v8, 0xe

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 472
    const/16 v8, 0xe

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 473
    const/16 v8, 0x32

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 474
    const/16 v8, 0xf

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 475
    const/16 v8, 0xf

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 476
    const/16 v8, 0x31

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 477
    const/16 v8, 0x10

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 478
    const/16 v8, 0x10

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 479
    const/16 v8, 0x30

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 480
    const/16 v8, 0x11

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 481
    const/16 v8, 0x11

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 482
    const/16 v8, 0x2f

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 483
    const/16 v8, 0x12

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 484
    const/16 v8, 0x12

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 485
    const/16 v8, 0x2e

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 486
    const/16 v8, 0x13

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 487
    const/16 v8, 0x13

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 488
    const/16 v8, 0x2d

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 489
    const/16 v8, 0x14

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 490
    const/16 v8, 0x14

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 491
    const/16 v8, 0x2c

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 492
    const/16 v8, 0x15

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 493
    const/16 v8, 0x15

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 494
    const/16 v8, 0x2b

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 495
    const/16 v8, 0x16

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 496
    const/16 v8, 0x16

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 497
    const/16 v8, 0x2a

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 498
    const/16 v8, 0x17

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 499
    const/16 v8, 0x17

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 500
    const/16 v8, 0x29

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 501
    const/16 v8, 0x18

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 502
    const/16 v8, 0x18

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 503
    const/16 v8, 0x28

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 504
    const/16 v8, 0x19

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 505
    const/16 v8, 0x19

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 506
    const/16 v8, 0x27

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 507
    const/16 v8, 0x1a

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 508
    const/16 v8, 0x1a

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 509
    const/16 v8, 0x26

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 510
    const/16 v8, 0x1b

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 511
    const/16 v8, 0x1b

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 512
    const/16 v8, 0x25

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 513
    const/16 v8, 0x1c

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 514
    const/16 v8, 0x1c

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 515
    const/16 v8, 0x24

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 516
    const/16 v8, 0x1d

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 517
    const/16 v8, 0x1d

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 518
    const/16 v8, 0x23

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 519
    const/16 v8, 0x1e

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 520
    const/16 v8, 0x1e

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 521
    const/16 v8, 0x22

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 522
    const/16 v8, 0x1f

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 523
    const/16 v8, 0x1f

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 524
    const/16 v8, 0x21

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 525
    const/16 v8, 0x20

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 526
    const/16 v8, 0x20

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 527
    const/16 v8, 0x20

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 528
    const/16 v8, 0x21

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 529
    const/16 v8, 0x21

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 530
    const/16 v8, 0x1f

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 531
    const/16 v8, 0x22

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 532
    const/16 v8, 0x22

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 533
    const/16 v8, 0x1e

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 534
    const/16 v8, 0x23

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 535
    const/16 v8, 0x23

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 536
    const/16 v8, 0x1d

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 537
    const/16 v8, 0x24

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 538
    const/16 v8, 0x24

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 539
    const/16 v8, 0x1c

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 540
    const/16 v8, 0x25

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 541
    const/16 v8, 0x25

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 542
    const/16 v8, 0x1b

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 543
    const/16 v8, 0x26

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 544
    const/16 v8, 0x26

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 545
    const/16 v8, 0x1a

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 546
    const/16 v8, 0x27

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 547
    const/16 v8, 0x27

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 548
    const/16 v8, 0x19

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 549
    const/16 v8, 0x28

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 550
    const/16 v8, 0x28

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 551
    const/16 v8, 0x18

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 552
    const/16 v8, 0x29

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 553
    const/16 v8, 0x29

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 554
    const/16 v8, 0x17

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 555
    const/16 v8, 0x2a

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 556
    const/16 v8, 0x2a

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 557
    const/16 v8, 0x16

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 558
    const/16 v8, 0x2b

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 559
    const/16 v8, 0x2b

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 560
    const/16 v8, 0x15

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 561
    const/16 v8, 0x2c

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 562
    const/16 v8, 0x2c

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 563
    const/16 v8, 0x14

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 564
    const/16 v8, 0x2d

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 565
    const/16 v8, 0x2d

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 566
    const/16 v8, 0x13

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 567
    const/16 v8, 0x2e

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 568
    const/16 v8, 0x2e

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 569
    const/16 v8, 0x12

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 570
    const/16 v8, 0x2f

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 571
    const/16 v8, 0x2f

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 572
    const/16 v8, 0x11

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 573
    const/16 v8, 0x30

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 574
    const/16 v8, 0x30

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 575
    const/16 v8, 0x10

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 576
    const/16 v8, 0x31

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 577
    const/16 v8, 0x31

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 578
    const/16 v8, 0xf

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 579
    const/16 v8, 0x32

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 580
    const/16 v8, 0x32

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 581
    const/16 v8, 0xe

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 582
    const/16 v8, 0x33

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 583
    const/16 v8, 0x33

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 584
    const/16 v8, 0xd

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 585
    const/16 v8, 0x34

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 586
    const/16 v8, 0x34

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 587
    const/16 v8, 0xc

    ushr-long v8, v0, v8

    xor-long/2addr v4, v8

    .line 588
    const/16 v8, 0x35

    ushr-long v8, p4, v8

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 589
    const/16 v8, 0x35

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 590
    ushr-long v8, v0, v30

    xor-long/2addr v4, v8

    .line 591
    ushr-long v8, p4, v29

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 592
    shl-long v8, v0, v29

    xor-long/2addr v2, v8

    .line 593
    ushr-long v8, v0, v28

    xor-long/2addr v4, v8

    .line 594
    ushr-long v8, p4, v27

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 595
    shl-long v8, v0, v27

    xor-long/2addr v2, v8

    .line 596
    ushr-long v8, v0, v26

    xor-long/2addr v4, v8

    .line 597
    ushr-long v8, p4, v25

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 598
    shl-long v8, v0, v25

    xor-long/2addr v2, v8

    .line 599
    ushr-long v8, v0, v24

    xor-long/2addr v4, v8

    .line 600
    ushr-long v8, p4, v23

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 601
    shl-long v8, v0, v23

    xor-long/2addr v2, v8

    .line 602
    ushr-long v8, v0, v22

    xor-long/2addr v4, v8

    .line 603
    ushr-long v8, p4, v21

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 604
    shl-long v8, v0, v21

    xor-long/2addr v2, v8

    .line 605
    ushr-long v8, v0, v6

    xor-long/2addr v4, v8

    .line 606
    ushr-long v8, p4, v20

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 607
    shl-long v8, v0, v20

    xor-long/2addr v2, v8

    .line 608
    ushr-long v8, v0, v14

    xor-long/2addr v4, v8

    .line 609
    ushr-long v8, p4, v13

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 610
    shl-long v8, v0, v13

    xor-long/2addr v2, v8

    .line 611
    ushr-long v8, v0, v12

    xor-long/2addr v4, v8

    .line 612
    ushr-long v8, p4, v11

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 613
    shl-long v8, v0, v11

    xor-long/2addr v2, v8

    .line 614
    ushr-long v8, v0, v10

    xor-long/2addr v4, v8

    .line 615
    ushr-long v8, p4, v7

    and-long v8, v8, v17

    neg-long v8, v8

    and-long v0, v8, p2

    .line 616
    aget-wide v8, p0, p1

    shl-long v6, v0, v7

    xor-long/2addr v6, v2

    xor-long/2addr v6, v8

    aput-wide v6, p0, p1

    .line 617
    add-int/lit8 v6, p1, 0x1

    aget-wide v7, p0, v6

    ushr-long v9, v0, v19

    xor-long/2addr v9, v4

    xor-long/2addr v7, v9

    aput-wide v7, p0, v6

    .line 618
    return-void
.end method

.method private static SQR128_NO_SIMD_GF2X([JI[JI)V
    .locals 3
    .param p0, "C"    # [J
    .param p1, "c_cp"    # I
    .param p2, "A"    # [J
    .param p3, "a_cp"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "C",
            "c_cp",
            "A",
            "a_cp"
        }
    .end annotation

    .line 181
    add-int/lit8 v0, p1, 0x2

    add-int/lit8 v1, p3, 0x1

    aget-wide v1, p2, v1

    invoke-static {p0, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->SQR64_NO_SIMD_GF2X([JIJ)V

    .line 182
    aget-wide v0, p2, p3

    invoke-static {p0, p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->SQR64_NO_SIMD_GF2X([JIJ)V

    .line 183
    return-void
.end method

.method private static SQR256_NO_SIMD_GF2X([JI[JI)V
    .locals 2
    .param p0, "C"    # [J
    .param p1, "c_cp"    # I
    .param p2, "A"    # [J
    .param p3, "a_cp"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "C",
            "c_cp",
            "A",
            "a_cp"
        }
    .end annotation

    .line 187
    add-int/lit8 v0, p1, 0x4

    add-int/lit8 v1, p3, 0x2

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->SQR128_NO_SIMD_GF2X([JI[JI)V

    .line 188
    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->SQR128_NO_SIMD_GF2X([JI[JI)V

    .line 189
    return-void
.end method

.method private static SQR32_NO_SIMD_GF2X(J)J
    .locals 4
    .param p0, "A"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "A"
        }
    .end annotation

    .line 156
    const/16 v0, 0x10

    shl-long v0, p0, v0

    xor-long/2addr v0, p0

    const-wide v2, 0xffff0000ffffL

    and-long p0, v0, v2

    .line 157
    const/16 v0, 0x8

    shl-long v0, p0, v0

    xor-long/2addr v0, p0

    const-wide v2, 0xff00ff00ff00ffL

    and-long p0, v0, v2

    .line 158
    const/4 v0, 0x4

    shl-long v0, p0, v0

    xor-long/2addr v0, p0

    const-wide v2, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long p0, v0, v2

    .line 159
    const/4 v0, 0x2

    shl-long v0, p0, v0

    xor-long/2addr v0, p0

    const-wide v2, 0x3333333333333333L    # 4.667261458395856E-62

    and-long p0, v0, v2

    .line 160
    const/4 v0, 0x1

    shl-long v0, p0, v0

    xor-long/2addr v0, p0

    const-wide v2, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private static SQR64LOW_NO_SIMD_GF2X(J)J
    .locals 4
    .param p0, "A"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "A"
        }
    .end annotation

    .line 166
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    const/16 v2, 0x10

    shl-long v2, p0, v2

    xor-long/2addr v0, v2

    const-wide v2, 0xffff0000ffffL

    and-long p0, v0, v2

    .line 167
    const/16 v0, 0x8

    shl-long v0, p0, v0

    xor-long/2addr v0, p0

    const-wide v2, 0xff00ff00ff00ffL

    and-long p0, v0, v2

    .line 168
    const/4 v0, 0x4

    shl-long v0, p0, v0

    xor-long/2addr v0, p0

    const-wide v2, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long p0, v0, v2

    .line 169
    const/4 v0, 0x2

    shl-long v0, p0, v0

    xor-long/2addr v0, p0

    const-wide v2, 0x3333333333333333L    # 4.667261458395856E-62

    and-long p0, v0, v2

    .line 170
    const/4 v0, 0x1

    shl-long v0, p0, v0

    xor-long/2addr v0, p0

    const-wide v2, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private static SQR64_NO_SIMD_GF2X([JIJ)V
    .locals 3
    .param p0, "C"    # [J
    .param p1, "c_cp"    # I
    .param p2, "A"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "C",
            "c_cp",
            "A"
        }
    .end annotation

    .line 175
    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x20

    ushr-long v1, p2, v1

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->SQR32_NO_SIMD_GF2X(J)J

    move-result-wide v1

    aput-wide v1, p0, v0

    .line 176
    invoke-static {p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->SQR64LOW_NO_SIMD_GF2X(J)J

    move-result-wide v0

    aput-wide v0, p0, p1

    .line 177
    return-void
.end method

.method private static mul128_no_simd_gf2x([JIJJJJ)V
    .locals 6
    .param p0, "C"    # [J
    .param p1, "c_cp"    # I
    .param p2, "a0"    # J
    .param p4, "a1"    # J
    .param p6, "b0"    # J
    .param p8, "b1"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "C",
            "c_cp",
            "a0",
            "a1",
            "b0",
            "b1"
        }
    .end annotation

    .line 632
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p6

    .end local p0    # "C":[J
    .end local p1    # "c_cp":I
    .end local p2    # "a0":J
    .end local p6    # "b0":J
    .local v0, "C":[J
    .local v1, "c_cp":I
    .local v2, "a0":J
    .local v4, "b0":J
    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    .line 633
    .end local v0    # "C":[J
    .restart local p0    # "C":[J
    add-int/lit8 p1, v1, 0x2

    move-wide p2, p4

    move-wide p4, p8

    .end local p8    # "b1":J
    .local p2, "a1":J
    .local p4, "b1":J
    invoke-static/range {p0 .. p5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    .line 634
    move-wide p6, p2

    .end local p2    # "a1":J
    .end local p4    # "b1":J
    .local p6, "a1":J
    .restart local p8    # "b1":J
    add-int/lit8 p1, v1, 0x2

    aget-wide p2, p0, p1

    add-int/lit8 p4, v1, 0x1

    aget-wide p4, p0, p4

    xor-long/2addr p2, p4

    aput-wide p2, p0, p1

    .line 635
    add-int/lit8 p1, v1, 0x1

    aget-wide p2, p0, v1

    add-int/lit8 p4, v1, 0x2

    aget-wide p4, p0, p4

    xor-long/2addr p2, p4

    aput-wide p2, p0, p1

    .line 636
    add-int/lit8 p1, v1, 0x2

    aget-wide p2, p0, p1

    add-int/lit8 p4, v1, 0x3

    aget-wide p4, p0, p4

    xor-long/2addr p2, p4

    aput-wide p2, p0, p1

    .line 637
    add-int/lit8 p1, v1, 0x1

    xor-long p2, v2, p6

    xor-long p4, v4, p8

    invoke-static/range {p0 .. p5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    .line 638
    return-void
.end method

.method private static mul128_no_simd_gf2x([JI[JI[JI)V
    .locals 12
    .param p0, "C"    # [J
    .param p1, "c_cp"    # I
    .param p2, "A"    # [J
    .param p3, "a_cp"    # I
    .param p4, "B"    # [J
    .param p5, "b_cp"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "C",
            "c_cp",
            "A",
            "a_cp",
            "B",
            "b_cp"
        }
    .end annotation

    .line 622
    aget-wide v2, p2, p3

    aget-wide v4, p4, p5

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    .line 623
    add-int/lit8 v7, p1, 0x2

    add-int/lit8 v0, p3, 0x1

    aget-wide v8, p2, v0

    add-int/lit8 v0, p5, 0x1

    aget-wide v10, p4, v0

    move-object v6, p0

    invoke-static/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    .line 624
    add-int/lit8 v0, p1, 0x2

    aget-wide v1, p0, v0

    add-int/lit8 v3, p1, 0x1

    aget-wide v3, p0, v3

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 625
    add-int/lit8 v0, p1, 0x1

    aget-wide v1, p0, p1

    add-int/lit8 v3, p1, 0x2

    aget-wide v3, p0, v3

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 626
    add-int/lit8 v0, p1, 0x2

    aget-wide v1, p0, v0

    add-int/lit8 v3, p1, 0x3

    aget-wide v3, p0, v3

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 627
    add-int/lit8 v7, p1, 0x1

    aget-wide v0, p2, p3

    add-int/lit8 v2, p3, 0x1

    aget-wide v2, p2, v2

    xor-long v8, v0, v2

    aget-wide v0, p4, p5

    add-int/lit8 v2, p5, 0x1

    aget-wide v2, p4, v2

    xor-long v10, v0, v2

    invoke-static/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    .line 628
    return-void
.end method

.method private static mul128_no_simd_gf2x_xor([JIJJJJ[J)V
    .locals 10
    .param p0, "C"    # [J
    .param p1, "c_cp"    # I
    .param p2, "a0"    # J
    .param p4, "a1"    # J
    .param p6, "b0"    # J
    .param p8, "b1"    # J
    .param p10, "RESERVED_BUF"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "C",
            "c_cp",
            "a0",
            "a1",
            "b0",
            "b1",
            "RESERVED_BUF"
        }
    .end annotation

    .line 642
    const/4 v1, 0x0

    move-wide v2, p2

    move-wide/from16 v4, p6

    move-object/from16 v0, p10

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    .line 644
    const/4 v1, 0x2

    move-wide v2, p4

    move-wide/from16 v4, p8

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    .line 646
    aget-wide v0, p0, p1

    const/4 v2, 0x0

    aget-wide v3, p10, v2

    xor-long/2addr v0, v3

    aput-wide v0, p0, p1

    .line 647
    const/4 v0, 0x2

    aget-wide v3, p10, v0

    const/4 v1, 0x1

    aget-wide v5, p10, v1

    xor-long/2addr v3, v5

    aput-wide v3, p10, v0

    .line 648
    add-int/lit8 v1, p1, 0x1

    aget-wide v3, p0, v1

    aget-wide v5, p10, v2

    aget-wide v7, p10, v0

    xor-long/2addr v5, v7

    xor-long/2addr v3, v5

    aput-wide v3, p0, v1

    .line 649
    add-int/lit8 v1, p1, 0x2

    aget-wide v2, p0, v1

    aget-wide v4, p10, v0

    const/4 v0, 0x3

    aget-wide v6, p10, v0

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p0, v1

    .line 650
    add-int/lit8 v1, p1, 0x3

    aget-wide v2, p0, v1

    aget-wide v4, p10, v0

    xor-long/2addr v2, v4

    aput-wide v2, p0, v1

    .line 651
    add-int/lit8 v5, p1, 0x1

    xor-long v6, p2, p4

    xor-long v8, p6, p8

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    .line 652
    return-void
.end method

.method public static mul192_no_simd_gf2x([JI[JI[JI)V
    .locals 12
    .param p0, "C"    # [J
    .param p1, "c_cp"    # I
    .param p2, "A"    # [J
    .param p3, "a_cp"    # I
    .param p4, "B"    # [J
    .param p5, "b_cp"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "C",
            "c_cp",
            "A",
            "a_cp",
            "B",
            "b_cp"
        }
    .end annotation

    .line 657
    aget-wide v2, p2, p3

    aget-wide v4, p4, p5

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    .line 659
    add-int/lit8 v7, p1, 0x4

    add-int/lit8 v0, p3, 0x2

    aget-wide v8, p2, v0

    add-int/lit8 v0, p5, 0x2

    aget-wide v10, p4, v0

    move-object v6, p0

    invoke-static/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    .line 661
    add-int/lit8 v7, p1, 0x2

    add-int/lit8 v0, p3, 0x1

    aget-wide v8, p2, v0

    add-int/lit8 v0, p5, 0x1

    aget-wide v10, p4, v0

    invoke-static/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    .line 662
    add-int/lit8 v0, p1, 0x1

    aget-wide v1, p0, v0

    add-int/lit8 v3, p1, 0x2

    aget-wide v3, p0, v3

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 663
    add-int/lit8 v0, p1, 0x3

    aget-wide v1, p0, v0

    add-int/lit8 v3, p1, 0x4

    aget-wide v3, p0, v3

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 664
    add-int/lit8 v0, p1, 0x4

    add-int/lit8 v1, p1, 0x3

    aget-wide v1, p0, v1

    add-int/lit8 v3, p1, 0x5

    aget-wide v3, p0, v3

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 665
    add-int/lit8 v0, p1, 0x2

    add-int/lit8 v1, p1, 0x3

    aget-wide v1, p0, v1

    add-int/lit8 v3, p1, 0x1

    aget-wide v3, p0, v3

    xor-long/2addr v1, v3

    aget-wide v3, p0, p1

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 666
    add-int/lit8 v0, p1, 0x3

    add-int/lit8 v1, p1, 0x1

    aget-wide v1, p0, v1

    add-int/lit8 v3, p1, 0x4

    aget-wide v3, p0, v3

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 667
    add-int/lit8 v0, p1, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p0, p1

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 668
    add-int/lit8 v7, p1, 0x1

    aget-wide v0, p2, p3

    add-int/lit8 v2, p3, 0x1

    aget-wide v2, p2, v2

    xor-long v8, v0, v2

    aget-wide v0, p4, p5

    add-int/lit8 v2, p5, 0x1

    aget-wide v2, p4, v2

    xor-long v10, v0, v2

    invoke-static/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    .line 670
    add-int/lit8 v7, p1, 0x3

    add-int/lit8 v0, p3, 0x1

    aget-wide v0, p2, v0

    add-int/lit8 v2, p3, 0x2

    aget-wide v2, p2, v2

    xor-long v8, v0, v2

    add-int/lit8 v0, p5, 0x1

    aget-wide v0, p4, v0

    add-int/lit8 v2, p5, 0x2

    aget-wide v2, p4, v2

    xor-long v10, v0, v2

    invoke-static/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    .line 672
    add-int/lit8 v7, p1, 0x2

    aget-wide v0, p2, p3

    add-int/lit8 v2, p3, 0x2

    aget-wide v2, p2, v2

    xor-long v8, v0, v2

    aget-wide v0, p4, p5

    add-int/lit8 v2, p5, 0x2

    aget-wide v2, p4, v2

    xor-long v10, v0, v2

    invoke-static/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    .line 673
    return-void
.end method

.method public static mul192_no_simd_gf2x_xor([JI[JI[JI[J)V
    .locals 15
    .param p0, "C"    # [J
    .param p1, "c_cp"    # I
    .param p2, "A"    # [J
    .param p3, "a_cp"    # I
    .param p4, "B"    # [J
    .param p5, "b_cp"    # I
    .param p6, "Buffer"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "C",
            "c_cp",
            "A",
            "a_cp",
            "B",
            "b_cp",
            "Buffer"
        }
    .end annotation

    .line 678
    aget-wide v2, p2, p3

    aget-wide v4, p4, p5

    const/4 v1, 0x0

    move-object/from16 v0, p6

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    .line 680
    add-int/lit8 v0, p3, 0x2

    aget-wide v8, p2, v0

    add-int/lit8 v0, p5, 0x2

    aget-wide v10, p4, v0

    const/4 v7, 0x4

    move-object/from16 v6, p6

    invoke-static/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    .line 682
    add-int/lit8 v0, p3, 0x1

    aget-wide v8, p2, v0

    add-int/lit8 v0, p5, 0x1

    aget-wide v10, p4, v0

    const/4 v7, 0x2

    invoke-static/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    .line 683
    aget-wide v0, p0, p1

    const/4 v2, 0x0

    aget-wide v3, p6, v2

    xor-long/2addr v0, v3

    aput-wide v0, p0, p1

    .line 684
    const/4 v0, 0x1

    aget-wide v3, p6, v0

    const/4 v1, 0x2

    aget-wide v5, p6, v1

    xor-long/2addr v3, v5

    aput-wide v3, p6, v0

    .line 685
    const/4 v1, 0x3

    aget-wide v3, p6, v1

    const/4 v5, 0x4

    aget-wide v6, p6, v5

    xor-long/2addr v3, v6

    aput-wide v3, p6, v1

    .line 686
    aget-wide v3, p6, v1

    const/4 v6, 0x5

    aget-wide v7, p6, v6

    xor-long/2addr v3, v7

    aput-wide v3, p6, v5

    .line 687
    aget-wide v3, p6, v2

    aget-wide v7, p6, v0

    xor-long/2addr v3, v7

    aput-wide v3, p6, v2

    .line 688
    add-int/lit8 v3, p1, 0x1

    aget-wide v7, p0, v3

    aget-wide v9, p6, v2

    xor-long/2addr v7, v9

    aput-wide v7, p0, v3

    .line 689
    add-int/lit8 v3, p1, 0x2

    aget-wide v7, p0, v3

    aget-wide v9, p6, v1

    aget-wide v1, p6, v2

    xor-long/2addr v1, v9

    xor-long/2addr v1, v7

    aput-wide v1, p0, v3

    .line 690
    add-int/lit8 v1, p1, 0x3

    aget-wide v2, p0, v1

    aget-wide v7, p6, v0

    aget-wide v9, p6, v5

    xor-long/2addr v7, v9

    xor-long/2addr v2, v7

    aput-wide v2, p0, v1

    .line 691
    add-int/lit8 v0, p1, 0x4

    aget-wide v1, p0, v0

    aget-wide v3, p6, v5

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 692
    add-int/lit8 v0, p1, 0x5

    aget-wide v1, p0, v0

    aget-wide v3, p6, v6

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 693
    add-int/lit8 v4, p1, 0x1

    aget-wide v0, p2, p3

    add-int/lit8 v2, p3, 0x1

    aget-wide v2, p2, v2

    xor-long v5, v0, v2

    aget-wide v0, p4, p5

    add-int/lit8 v2, p5, 0x1

    aget-wide v2, p4, v2

    xor-long v7, v0, v2

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    .line 695
    add-int/lit8 v10, p1, 0x3

    add-int/lit8 v0, p3, 0x1

    aget-wide v0, p2, v0

    add-int/lit8 v2, p3, 0x2

    aget-wide v2, p2, v2

    xor-long v11, v0, v2

    add-int/lit8 v0, p5, 0x1

    aget-wide v0, p4, v0

    add-int/lit8 v2, p5, 0x2

    aget-wide v2, p4, v2

    xor-long v13, v0, v2

    move-object v9, p0

    invoke-static/range {v9 .. v14}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    .line 697
    add-int/lit8 v10, p1, 0x2

    aget-wide v0, p2, p3

    add-int/lit8 v2, p3, 0x2

    aget-wide v2, p2, v2

    xor-long v11, v0, v2

    aget-wide v0, p4, p5

    add-int/lit8 v2, p5, 0x2

    aget-wide v2, p4, v2

    xor-long v13, v0, v2

    invoke-static/range {v9 .. v14}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    .line 698
    return-void
.end method

.method private static mul288_no_simd_gf2x([JI[JI[JI[J)V
    .locals 18
    .param p0, "C"    # [J
    .param p1, "c_cp"    # I
    .param p2, "A"    # [J
    .param p3, "a_cp"    # I
    .param p4, "B"    # [J
    .param p5, "b_cp"    # I
    .param p6, "RESERVED_BUF"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "C",
            "c_cp",
            "A",
            "a_cp",
            "B",
            "b_cp",
            "RESERVED_BUF"
        }
    .end annotation

    .line 702
    aget-wide v2, p2, p3

    add-int/lit8 v0, p3, 0x1

    aget-wide v4, p2, v0

    aget-wide v6, p4, p5

    add-int/lit8 v0, p5, 0x1

    aget-wide v8, p4, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x([JIJJJJ)V

    .line 703
    add-int/lit8 v11, p1, 0x4

    add-int/lit8 v0, p3, 0x2

    aget-wide v12, p2, v0

    add-int/lit8 v0, p5, 0x2

    aget-wide v14, p4, v0

    move-object/from16 v10, p0

    invoke-static/range {v10 .. v15}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    .line 704
    add-int/lit8 v11, p1, 0x7

    add-int/lit8 v0, p3, 0x3

    aget-wide v12, p2, v0

    add-int/lit8 v0, p5, 0x3

    aget-wide v14, p4, v0

    invoke-static/range {v10 .. v15}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    .line 705
    add-int/lit8 v0, p1, 0x7

    aget-wide v1, p0, v0

    add-int/lit8 v3, p1, 0x5

    aget-wide v3, p0, v3

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 706
    add-int/lit8 v0, p1, 0x8

    aget-wide v1, p0, v0

    add-int/lit8 v3, p3, 0x4

    aget-wide v3, p2, v3

    add-int/lit8 v5, p5, 0x4

    aget-wide v5, p4, v5

    invoke-static {v3, v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL32_NO_SIMD_GF2X(JJ)J

    move-result-wide v3

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 707
    add-int/lit8 v0, p1, 0x5

    add-int/lit8 v1, p1, 0x7

    aget-wide v1, p0, v1

    add-int/lit8 v3, p1, 0x4

    aget-wide v3, p0, v3

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 708
    add-int/lit8 v0, p1, 0x7

    aget-wide v1, p0, v0

    add-int/lit8 v3, p1, 0x8

    aget-wide v3, p0, v3

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 709
    add-int/lit8 v0, p1, 0x6

    add-int/lit8 v1, p1, 0x7

    aget-wide v1, p0, v1

    add-int/lit8 v3, p1, 0x4

    aget-wide v3, p0, v3

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 710
    add-int/lit8 v11, p1, 0x5

    add-int/lit8 v0, p3, 0x2

    aget-wide v0, p2, v0

    add-int/lit8 v2, p3, 0x3

    aget-wide v2, p2, v2

    xor-long v12, v0, v2

    add-int/lit8 v0, p5, 0x2

    aget-wide v0, p4, v0

    add-int/lit8 v2, p5, 0x3

    aget-wide v2, p4, v2

    xor-long v14, v0, v2

    invoke-static/range {v10 .. v15}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    .line 712
    add-int/lit8 v11, p1, 0x7

    add-int/lit8 v0, p3, 0x3

    aget-wide v0, p2, v0

    add-int/lit8 v2, p3, 0x4

    aget-wide v2, p2, v2

    xor-long v12, v0, v2

    add-int/lit8 v0, p5, 0x3

    aget-wide v0, p4, v0

    add-int/lit8 v2, p5, 0x4

    aget-wide v2, p4, v2

    xor-long v14, v0, v2

    invoke-static/range {v10 .. v15}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    .line 714
    add-int/lit8 v11, p1, 0x6

    add-int/lit8 v0, p3, 0x2

    aget-wide v0, p2, v0

    add-int/lit8 v2, p3, 0x4

    aget-wide v2, p2, v2

    xor-long v12, v0, v2

    add-int/lit8 v0, p5, 0x2

    aget-wide v0, p4, v0

    add-int/lit8 v2, p5, 0x4

    aget-wide v2, p4, v2

    xor-long v14, v0, v2

    invoke-static/range {v10 .. v15}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    .line 715
    add-int/lit8 v0, p1, 0x4

    aget-wide v1, p0, v0

    add-int/lit8 v3, p1, 0x2

    aget-wide v3, p0, v3

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 716
    add-int/lit8 v0, p1, 0x5

    aget-wide v1, p0, v0

    add-int/lit8 v3, p1, 0x3

    aget-wide v3, p0, v3

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 717
    aget-wide v0, p2, p3

    add-int/lit8 v2, p3, 0x2

    aget-wide v2, p2, v2

    xor-long v6, v0, v2

    .line 718
    .local v6, "AA0":J
    add-int/lit8 v0, p3, 0x1

    aget-wide v0, p2, v0

    add-int/lit8 v2, p3, 0x3

    aget-wide v2, p2, v2

    xor-long v10, v0, v2

    .line 719
    .local v10, "AA1":J
    aget-wide v0, p4, p5

    add-int/lit8 v2, p5, 0x2

    aget-wide v2, p4, v2

    xor-long v8, v0, v2

    .line 720
    .local v8, "BB0":J
    add-int/lit8 v0, p5, 0x1

    aget-wide v0, p4, v0

    add-int/lit8 v2, p5, 0x3

    aget-wide v2, p4, v2

    xor-long v12, v0, v2

    .line 721
    .local v12, "BB1":J
    const/4 v5, 0x0

    move-object/from16 v4, p6

    invoke-static/range {v4 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    .line 722
    move-wide v0, v8

    .end local v8    # "BB0":J
    .local v0, "BB0":J
    const/4 v9, 0x2

    move-object/from16 v8, p6

    invoke-static/range {v8 .. v13}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    .line 723
    move-wide v2, v10

    move-wide v4, v12

    .end local v10    # "AA1":J
    .end local v12    # "BB1":J
    .local v2, "AA1":J
    .local v4, "BB1":J
    const/4 v8, 0x2

    aget-wide v9, p6, v8

    const/4 v11, 0x1

    aget-wide v11, p6, v11

    xor-long/2addr v9, v11

    aput-wide v9, p6, v8

    .line 724
    const/4 v9, 0x3

    aget-wide v10, p6, v9

    add-int/lit8 v12, p3, 0x4

    aget-wide v12, p2, v12

    add-int/lit8 v14, p5, 0x4

    aget-wide v14, p4, v14

    invoke-static {v12, v13, v14, v15}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL32_NO_SIMD_GF2X(JJ)J

    move-result-wide v12

    xor-long/2addr v10, v12

    aput-wide v10, p6, v9

    .line 725
    add-int/lit8 v10, p1, 0x2

    add-int/lit8 v11, p1, 0x4

    aget-wide v11, p0, v11

    aget-wide v13, p0, p1

    xor-long/2addr v11, v13

    const/4 v13, 0x0

    aget-wide v14, p6, v13

    xor-long/2addr v11, v14

    aput-wide v11, p0, v10

    .line 726
    add-int/lit8 v10, p1, 0x3

    add-int/lit8 v11, p1, 0x5

    aget-wide v11, p0, v11

    add-int/lit8 v14, p1, 0x1

    aget-wide v14, p0, v14

    xor-long/2addr v11, v14

    aget-wide v14, p6, v8

    xor-long/2addr v11, v14

    aget-wide v14, p6, v13

    xor-long/2addr v11, v14

    aput-wide v11, p0, v10

    .line 727
    aget-wide v10, p6, v8

    aget-wide v14, p6, v9

    xor-long/2addr v10, v14

    aput-wide v10, p6, v8

    .line 728
    add-int/lit8 v10, p1, 0x4

    aget-wide v11, p0, v10

    add-int/lit8 v14, p1, 0x6

    aget-wide v14, p0, v14

    aget-wide v16, p6, v8

    xor-long v14, v14, v16

    aget-wide v16, p6, v13

    xor-long v14, v14, v16

    xor-long/2addr v11, v14

    aput-wide v11, p0, v10

    .line 729
    add-int/lit8 v10, p1, 0x5

    aget-wide v11, p0, v10

    add-int/lit8 v13, p1, 0x7

    aget-wide v13, p0, v13

    aget-wide v15, p6, v8

    xor-long/2addr v13, v15

    xor-long/2addr v11, v13

    aput-wide v11, p0, v10

    .line 730
    add-int/lit8 v8, p1, 0x6

    aget-wide v10, p0, v8

    add-int/lit8 v12, p1, 0x8

    aget-wide v12, p0, v12

    aget-wide v14, p6, v9

    xor-long/2addr v12, v14

    xor-long/2addr v10, v12

    aput-wide v10, p0, v8

    .line 731
    add-int/lit8 v11, p1, 0x3

    xor-long v12, v6, v2

    xor-long v14, v0, v4

    move-object/from16 v10, p0

    invoke-static/range {v10 .. v15}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    .line 733
    add-int/lit8 v11, p1, 0x5

    add-int/lit8 v8, p3, 0x4

    aget-wide v8, p2, v8

    xor-long v12, v2, v8

    add-int/lit8 v8, p5, 0x4

    aget-wide v8, p4, v8

    xor-long v14, v4, v8

    invoke-static/range {v10 .. v15}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    .line 735
    add-int/lit8 v11, p1, 0x4

    add-int/lit8 v8, p3, 0x4

    aget-wide v8, p2, v8

    xor-long v12, v6, v8

    add-int/lit8 v8, p5, 0x4

    aget-wide v8, p4, v8

    xor-long v14, v0, v8

    invoke-static/range {v10 .. v15}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    .line 736
    return-void
.end method

.method private static mul288_no_simd_gf2x_xor([JI[JI[JI[J)V
    .locals 26
    .param p0, "C"    # [J
    .param p1, "c_cp"    # I
    .param p2, "A"    # [J
    .param p3, "a_cp"    # I
    .param p4, "B"    # [J
    .param p5, "b_cp"    # I
    .param p6, "Buffer"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "C",
            "c_cp",
            "A",
            "a_cp",
            "B",
            "b_cp",
            "Buffer"
        }
    .end annotation

    .line 740
    aget-wide v2, p2, p3

    add-int/lit8 v0, p3, 0x1

    aget-wide v4, p2, v0

    aget-wide v6, p4, p5

    add-int/lit8 v0, p5, 0x1

    aget-wide v8, p4, v0

    const/4 v1, 0x0

    move-object/from16 v0, p6

    invoke-static/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x([JIJJJJ)V

    .line 741
    add-int/lit8 v0, p3, 0x2

    aget-wide v12, p2, v0

    add-int/lit8 v0, p5, 0x2

    aget-wide v14, p4, v0

    const/4 v11, 0x4

    move-object/from16 v10, p6

    invoke-static/range {v10 .. v15}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    .line 742
    add-int/lit8 v0, p3, 0x3

    aget-wide v12, p2, v0

    add-int/lit8 v0, p5, 0x3

    aget-wide v14, p4, v0

    const/4 v11, 0x7

    invoke-static/range {v10 .. v15}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    .line 743
    const/4 v0, 0x7

    aget-wide v1, p6, v0

    const/4 v3, 0x5

    aget-wide v4, p6, v3

    xor-long/2addr v1, v4

    aput-wide v1, p6, v0

    .line 744
    const/16 v1, 0x8

    aget-wide v4, p6, v1

    add-int/lit8 v2, p3, 0x4

    aget-wide v6, p2, v2

    add-int/lit8 v2, p5, 0x4

    aget-wide v8, p4, v2

    invoke-static {v6, v7, v8, v9}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL32_NO_SIMD_GF2X(JJ)J

    move-result-wide v6

    xor-long/2addr v4, v6

    aput-wide v4, p6, v1

    .line 745
    aget-wide v4, p6, v0

    const/4 v2, 0x4

    aget-wide v6, p6, v2

    xor-long/2addr v4, v6

    aput-wide v4, p6, v3

    .line 746
    aget-wide v4, p6, v0

    aget-wide v6, p6, v1

    xor-long/2addr v4, v6

    aput-wide v4, p6, v0

    .line 747
    aget-wide v4, p6, v0

    aget-wide v6, p6, v2

    xor-long/2addr v4, v6

    const/4 v6, 0x6

    aput-wide v4, p6, v6

    .line 748
    aget-wide v4, p6, v2

    const/4 v7, 0x2

    aget-wide v8, p6, v7

    xor-long/2addr v4, v8

    aput-wide v4, p6, v2

    .line 749
    aget-wide v4, p6, v3

    const/4 v8, 0x3

    aget-wide v9, p6, v8

    xor-long/2addr v4, v9

    aput-wide v4, p6, v3

    .line 750
    aget-wide v4, p0, p1

    const/4 v9, 0x0

    aget-wide v10, p6, v9

    xor-long/2addr v4, v10

    aput-wide v4, p0, p1

    .line 751
    add-int/lit8 v4, p1, 0x1

    aget-wide v10, p0, v4

    const/4 v5, 0x1

    aget-wide v12, p6, v5

    xor-long/2addr v10, v12

    aput-wide v10, p0, v4

    .line 752
    add-int/lit8 v4, p1, 0x2

    aget-wide v10, p0, v4

    aget-wide v12, p6, v2

    aget-wide v14, p6, v9

    xor-long/2addr v12, v14

    xor-long/2addr v10, v12

    aput-wide v10, p0, v4

    .line 753
    add-int/lit8 v4, p3, 0x2

    aget-wide v10, p2, v4

    add-int/lit8 v4, p3, 0x3

    aget-wide v12, p2, v4

    xor-long/2addr v12, v10

    add-int/lit8 v4, p5, 0x2

    aget-wide v10, p4, v4

    add-int/lit8 v4, p5, 0x3

    aget-wide v14, p4, v4

    xor-long/2addr v14, v10

    const/4 v11, 0x5

    move-object/from16 v10, p6

    invoke-static/range {v10 .. v15}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    .line 755
    add-int/lit8 v4, p3, 0x3

    aget-wide v10, p2, v4

    add-int/lit8 v4, p3, 0x4

    aget-wide v12, p2, v4

    xor-long/2addr v12, v10

    add-int/lit8 v4, p5, 0x3

    aget-wide v10, p4, v4

    add-int/lit8 v4, p5, 0x4

    aget-wide v14, p4, v4

    xor-long/2addr v14, v10

    const/4 v11, 0x7

    move-object/from16 v10, p6

    invoke-static/range {v10 .. v15}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    .line 757
    add-int/lit8 v4, p3, 0x2

    aget-wide v10, p2, v4

    add-int/lit8 v4, p3, 0x4

    aget-wide v12, p2, v4

    xor-long/2addr v12, v10

    add-int/lit8 v4, p5, 0x2

    aget-wide v10, p4, v4

    add-int/lit8 v4, p5, 0x4

    aget-wide v14, p4, v4

    xor-long/2addr v14, v10

    const/4 v11, 0x6

    move-object/from16 v10, p6

    invoke-static/range {v10 .. v15}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    .line 758
    add-int/lit8 v4, p1, 0x3

    aget-wide v10, p0, v4

    aget-wide v12, p6, v3

    aget-wide v14, p6, v5

    xor-long/2addr v12, v14

    xor-long/2addr v10, v12

    aput-wide v10, p0, v4

    .line 759
    add-int/lit8 v4, p1, 0x4

    aget-wide v10, p0, v4

    aget-wide v12, p6, v2

    aget-wide v14, p6, v6

    xor-long/2addr v12, v14

    xor-long/2addr v10, v12

    aput-wide v10, p0, v4

    .line 760
    add-int/lit8 v2, p1, 0x5

    aget-wide v10, p0, v2

    aget-wide v3, p6, v3

    aget-wide v12, p6, v0

    xor-long/2addr v3, v12

    xor-long/2addr v3, v10

    aput-wide v3, p0, v2

    .line 761
    add-int/lit8 v2, p1, 0x6

    aget-wide v3, p0, v2

    aget-wide v10, p6, v6

    aget-wide v12, p6, v1

    xor-long/2addr v10, v12

    xor-long/2addr v3, v10

    aput-wide v3, p0, v2

    .line 762
    add-int/lit8 v2, p1, 0x7

    aget-wide v3, p0, v2

    aget-wide v10, p6, v0

    xor-long/2addr v3, v10

    aput-wide v3, p0, v2

    .line 763
    add-int/lit8 v0, p1, 0x8

    aget-wide v2, p0, v0

    aget-wide v10, p6, v1

    xor-long/2addr v2, v10

    aput-wide v2, p0, v0

    .line 764
    aget-wide v0, p2, p3

    add-int/lit8 v2, p3, 0x2

    aget-wide v2, p2, v2

    xor-long v12, v0, v2

    .line 765
    .local v12, "AA0":J
    add-int/lit8 v0, p3, 0x1

    aget-wide v0, p2, v0

    add-int/lit8 v2, p3, 0x3

    aget-wide v2, p2, v2

    xor-long/2addr v0, v2

    .line 766
    .local v0, "AA1":J
    aget-wide v2, p4, p5

    add-int/lit8 v4, p5, 0x2

    aget-wide v10, p4, v4

    xor-long v14, v2, v10

    .line 767
    .local v14, "BB0":J
    add-int/lit8 v2, p5, 0x1

    aget-wide v2, p4, v2

    add-int/lit8 v4, p5, 0x3

    aget-wide v10, p4, v4

    xor-long/2addr v2, v10

    .line 768
    .local v2, "BB1":J
    const/4 v11, 0x0

    move-object/from16 v10, p6

    invoke-static/range {v10 .. v15}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    .line 769
    move-wide/from16 v16, v12

    move-wide/from16 v18, v14

    .end local v12    # "AA0":J
    .end local v14    # "BB0":J
    .local v16, "AA0":J
    .local v18, "BB0":J
    const/4 v11, 0x2

    move-wide v12, v0

    move-wide v14, v2

    .end local v0    # "AA1":J
    .end local v2    # "BB1":J
    .local v12, "AA1":J
    .local v14, "BB1":J
    invoke-static/range {v10 .. v15}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    .line 770
    aget-wide v0, p6, v7

    aget-wide v2, p6, v5

    xor-long/2addr v0, v2

    aput-wide v0, p6, v7

    .line 771
    aget-wide v0, p6, v8

    add-int/lit8 v2, p3, 0x4

    aget-wide v2, p2, v2

    add-int/lit8 v4, p5, 0x4

    aget-wide v4, p4, v4

    invoke-static {v2, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL32_NO_SIMD_GF2X(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    aput-wide v0, p6, v8

    .line 772
    add-int/lit8 v0, p1, 0x2

    aget-wide v1, p0, v0

    aget-wide v3, p6, v9

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 773
    add-int/lit8 v0, p1, 0x3

    aget-wide v1, p0, v0

    aget-wide v3, p6, v7

    aget-wide v5, p6, v9

    xor-long/2addr v3, v5

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 774
    aget-wide v0, p6, v7

    aget-wide v2, p6, v8

    xor-long/2addr v0, v2

    aput-wide v0, p6, v7

    .line 775
    add-int/lit8 v0, p1, 0x4

    aget-wide v1, p0, v0

    aget-wide v3, p6, v7

    aget-wide v5, p6, v9

    xor-long/2addr v3, v5

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 776
    add-int/lit8 v0, p1, 0x5

    aget-wide v1, p0, v0

    aget-wide v3, p6, v7

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 777
    add-int/lit8 v0, p1, 0x6

    aget-wide v1, p0, v0

    aget-wide v3, p6, v8

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 778
    add-int/lit8 v4, p1, 0x3

    xor-long v5, v16, v12

    xor-long v7, v18, v14

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v8}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    .line 780
    add-int/lit8 v21, p1, 0x5

    add-int/lit8 v0, p3, 0x4

    aget-wide v0, p2, v0

    xor-long v22, v12, v0

    add-int/lit8 v0, p5, 0x4

    aget-wide v0, p4, v0

    xor-long v24, v14, v0

    move-object/from16 v20, p0

    invoke-static/range {v20 .. v25}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    .line 782
    add-int/lit8 v21, p1, 0x4

    add-int/lit8 v0, p3, 0x4

    aget-wide v0, p2, v0

    xor-long v22, v16, v0

    add-int/lit8 v0, p5, 0x4

    aget-wide v0, p4, v0

    xor-long v24, v18, v0

    invoke-static/range {v20 .. v25}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    .line 783
    return-void
.end method

.method private static mul384_no_simd_gf2x([J[JI[JI[J)V
    .locals 28
    .param p0, "C"    # [J
    .param p1, "A"    # [J
    .param p2, "a_cp"    # I
    .param p3, "B"    # [J
    .param p4, "b_cp"    # I
    .param p5, "Buffer"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "C",
            "A",
            "a_cp",
            "B",
            "b_cp",
            "Buffer"
        }
    .end annotation

    .line 787
    const/4 v1, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul192_no_simd_gf2x([JI[JI[JI)V

    .line 788
    add-int/lit8 v5, p2, 0x3

    add-int/lit8 v7, p4, 0x3

    const/4 v3, 0x6

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul192_no_simd_gf2x([JI[JI[JI)V

    .line 789
    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x3

    aget-wide v2, p1, v2

    xor-long v6, v0, v2

    .line 790
    .local v6, "AA0":J
    add-int/lit8 v0, p2, 0x1

    aget-wide v0, p1, v0

    add-int/lit8 v2, p2, 0x4

    aget-wide v2, p1, v2

    xor-long v10, v0, v2

    .line 791
    .local v10, "AA1":J
    add-int/lit8 v0, p2, 0x2

    aget-wide v0, p1, v0

    add-int/lit8 v2, p2, 0x5

    aget-wide v2, p1, v2

    xor-long v14, v0, v2

    .line 792
    .local v14, "AA2":J
    aget-wide v0, p3, p4

    add-int/lit8 v2, p4, 0x3

    aget-wide v2, p3, v2

    xor-long v8, v0, v2

    .line 793
    .local v8, "BB0":J
    add-int/lit8 v0, p4, 0x1

    aget-wide v0, p3, v0

    add-int/lit8 v2, p4, 0x4

    aget-wide v2, p3, v2

    xor-long/2addr v0, v2

    .line 794
    .local v0, "BB1":J
    add-int/lit8 v2, p4, 0x2

    aget-wide v2, p3, v2

    add-int/lit8 v4, p4, 0x5

    aget-wide v4, p3, v4

    xor-long v16, v2, v4

    .line 795
    .local v16, "BB2":J
    const/4 v2, 0x6

    aget-wide v3, p0, v2

    const/16 v18, 0x3

    aget-wide v12, p0, v18

    xor-long/2addr v3, v12

    aput-wide v3, p0, v2

    .line 796
    const/4 v3, 0x7

    aget-wide v4, p0, v3

    const/16 v19, 0x4

    aget-wide v12, p0, v19

    xor-long/2addr v4, v12

    aput-wide v4, p0, v3

    .line 797
    const/16 v20, 0x8

    aget-wide v4, p0, v20

    const/16 v21, 0x5

    aget-wide v12, p0, v21

    xor-long/2addr v4, v12

    aput-wide v4, p0, v20

    .line 798
    const/4 v5, 0x0

    move-object/from16 v4, p5

    invoke-static/range {v4 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    .line 800
    move-wide/from16 v22, v6

    move-wide/from16 v24, v8

    .end local v6    # "AA0":J
    .end local v8    # "BB0":J
    .local v22, "AA0":J
    .local v24, "BB0":J
    const/4 v13, 0x4

    move-object/from16 v12, p5

    invoke-static/range {v12 .. v17}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    .line 802
    const/4 v9, 0x2

    move-object/from16 v8, p5

    move-wide v12, v0

    .end local v0    # "BB1":J
    .local v12, "BB1":J
    invoke-static/range {v8 .. v13}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    .line 803
    aget-wide v0, p0, v2

    const/4 v4, 0x0

    aget-wide v5, p0, v4

    xor-long/2addr v0, v5

    aget-wide v5, p5, v4

    xor-long/2addr v0, v5

    aput-wide v0, p0, v18

    .line 804
    const/4 v0, 0x1

    aget-wide v5, p5, v0

    const/4 v1, 0x2

    aget-wide v7, p5, v1

    xor-long/2addr v5, v7

    aput-wide v5, p5, v0

    .line 805
    aget-wide v5, p5, v4

    aget-wide v7, p5, v0

    xor-long/2addr v5, v7

    aput-wide v5, p5, v4

    .line 806
    aget-wide v5, p5, v18

    aget-wide v7, p5, v19

    xor-long/2addr v5, v7

    aput-wide v5, p5, v18

    .line 807
    aget-wide v5, p5, v18

    aget-wide v7, p5, v21

    xor-long/2addr v5, v7

    aput-wide v5, p5, v19

    .line 808
    aget-wide v5, p0, v20

    aget-wide v7, p0, v1

    xor-long/2addr v5, v7

    aget-wide v7, p5, v18

    xor-long/2addr v5, v7

    aget-wide v7, p5, v4

    xor-long/2addr v5, v7

    aput-wide v5, p0, v21

    .line 809
    aget-wide v5, p0, v2

    const/16 v1, 0x9

    aget-wide v7, p0, v1

    aget-wide v26, p5, v0

    xor-long v7, v7, v26

    aget-wide v26, p5, v19

    xor-long v7, v7, v26

    xor-long/2addr v5, v7

    aput-wide v5, p0, v2

    .line 810
    aget-wide v1, p0, v3

    aget-wide v5, p0, v0

    xor-long/2addr v1, v5

    aget-wide v4, p5, v4

    xor-long/2addr v1, v4

    aput-wide v1, p0, v19

    .line 811
    aget-wide v0, p0, v3

    const/16 v2, 0xa

    aget-wide v4, p0, v2

    aget-wide v6, p5, v19

    xor-long/2addr v4, v6

    xor-long/2addr v0, v4

    aput-wide v0, p0, v3

    .line 812
    aget-wide v0, p0, v20

    const/16 v2, 0xb

    aget-wide v2, p0, v2

    aget-wide v4, p5, v21

    xor-long/2addr v2, v4

    xor-long/2addr v0, v2

    aput-wide v0, p0, v20

    .line 813
    xor-long v4, v22, v10

    xor-long v6, v24, v12

    const/4 v3, 0x4

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    .line 815
    xor-long v4, v10, v14

    xor-long v6, v12, v16

    const/4 v3, 0x6

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    .line 817
    xor-long v4, v22, v14

    xor-long v6, v24, v16

    const/4 v3, 0x5

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    .line 818
    return-void
.end method

.method private static mul384_no_simd_gf2x_xor([J[JI[JI[J)V
    .locals 33
    .param p0, "C"    # [J
    .param p1, "A"    # [J
    .param p2, "a_cp"    # I
    .param p3, "B"    # [J
    .param p4, "b_cp"    # I
    .param p5, "Buffer"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "C",
            "A",
            "a_cp",
            "B",
            "b_cp",
            "Buffer"
        }
    .end annotation

    .line 822
    const/4 v1, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v0, p5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul192_no_simd_gf2x([JI[JI[JI)V

    .line 823
    add-int/lit8 v5, p2, 0x3

    add-int/lit8 v7, p4, 0x3

    const/4 v3, 0x6

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v2, p5

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul192_no_simd_gf2x([JI[JI[JI)V

    .line 824
    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x3

    aget-wide v2, p1, v2

    xor-long/2addr v2, v0

    .line 825
    .local v2, "AA0":J
    add-int/lit8 v0, p2, 0x1

    aget-wide v0, p1, v0

    add-int/lit8 v4, p2, 0x4

    aget-wide v4, p1, v4

    xor-long v6, v0, v4

    .line 826
    .local v6, "AA1":J
    add-int/lit8 v0, p2, 0x2

    aget-wide v0, p1, v0

    add-int/lit8 v4, p2, 0x5

    aget-wide v4, p1, v4

    xor-long v8, v0, v4

    .line 827
    .local v8, "AA2":J
    aget-wide v0, p3, p4

    add-int/lit8 v4, p4, 0x3

    aget-wide v4, p3, v4

    xor-long/2addr v4, v0

    .line 828
    .local v4, "BB0":J
    add-int/lit8 v0, p4, 0x1

    aget-wide v0, p3, v0

    add-int/lit8 v10, p4, 0x4

    aget-wide v10, p3, v10

    xor-long/2addr v10, v0

    .line 829
    .local v10, "BB1":J
    add-int/lit8 v0, p4, 0x2

    aget-wide v0, p3, v0

    add-int/lit8 v12, p4, 0x5

    aget-wide v12, p3, v12

    xor-long/2addr v12, v0

    .line 830
    .local v12, "BB2":J
    const/4 v14, 0x6

    aget-wide v0, p5, v14

    const/4 v15, 0x3

    aget-wide v16, p5, v15

    xor-long v0, v0, v16

    aput-wide v0, p5, v14

    .line 831
    const/16 v16, 0x7

    aget-wide v0, p5, v16

    const/16 v17, 0x4

    aget-wide v18, p5, v17

    xor-long v0, v0, v18

    aput-wide v0, p5, v16

    .line 832
    const/16 v18, 0x8

    aget-wide v0, p5, v18

    const/16 v19, 0x5

    aget-wide v20, p5, v19

    xor-long v0, v0, v20

    aput-wide v0, p5, v18

    .line 833
    const/16 v20, 0x0

    aget-wide v0, p0, v20

    aget-wide v21, p5, v20

    xor-long v0, v0, v21

    aput-wide v0, p0, v20

    .line 834
    const/16 v21, 0x1

    aget-wide v0, p0, v21

    aget-wide v22, p5, v21

    xor-long v0, v0, v22

    aput-wide v0, p0, v21

    .line 835
    const/16 v22, 0x2

    aget-wide v0, p0, v22

    aget-wide v23, p5, v22

    xor-long v0, v0, v23

    aput-wide v0, p0, v22

    .line 836
    aget-wide v0, p0, v15

    aget-wide v23, p5, v14

    aget-wide v25, p5, v20

    xor-long v23, v23, v25

    xor-long v0, v0, v23

    aput-wide v0, p0, v15

    .line 837
    aget-wide v0, p0, v19

    aget-wide v23, p5, v18

    aget-wide v25, p5, v22

    xor-long v23, v23, v25

    xor-long v0, v0, v23

    aput-wide v0, p0, v19

    .line 838
    aget-wide v0, p0, v14

    aget-wide v23, p5, v14

    const/16 v25, 0x9

    aget-wide v26, p5, v25

    xor-long v23, v23, v26

    xor-long v0, v0, v23

    aput-wide v0, p0, v14

    .line 839
    aget-wide v0, p0, v17

    aget-wide v23, p5, v16

    aget-wide v26, p5, v21

    xor-long v23, v23, v26

    xor-long v0, v0, v23

    aput-wide v0, p0, v17

    .line 840
    aget-wide v0, p0, v16

    aget-wide v23, p5, v16

    const/16 v26, 0xa

    aget-wide v27, p5, v26

    xor-long v23, v23, v27

    xor-long v0, v0, v23

    aput-wide v0, p0, v16

    .line 841
    aget-wide v0, p0, v18

    aget-wide v23, p5, v18

    const/16 v27, 0xb

    aget-wide v28, p5, v27

    xor-long v23, v23, v28

    xor-long v0, v0, v23

    aput-wide v0, p0, v18

    .line 842
    aget-wide v0, p0, v25

    aget-wide v23, p5, v25

    xor-long v0, v0, v23

    aput-wide v0, p0, v25

    .line 843
    aget-wide v0, p0, v26

    aget-wide v23, p5, v26

    xor-long v0, v0, v23

    aput-wide v0, p0, v26

    .line 844
    aget-wide v0, p0, v27

    aget-wide v23, p5, v27

    xor-long v0, v0, v23

    aput-wide v0, p0, v27

    .line 845
    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    .line 847
    move-wide/from16 v23, v2

    move-wide/from16 v25, v4

    .end local v2    # "AA0":J
    .end local v4    # "BB0":J
    .local v23, "AA0":J
    .local v25, "BB0":J
    const/4 v1, 0x4

    move-wide v2, v8

    move-wide v4, v12

    .end local v8    # "AA2":J
    .end local v12    # "BB2":J
    .local v2, "AA2":J
    .local v4, "BB2":J
    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    .line 849
    .end local v2    # "AA2":J
    .end local v4    # "BB2":J
    .restart local v8    # "AA2":J
    .restart local v12    # "BB2":J
    const/4 v1, 0x2

    move-wide v2, v6

    move-wide v4, v10

    .end local v6    # "AA1":J
    .end local v10    # "BB1":J
    .local v2, "AA1":J
    .local v4, "BB1":J
    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    .line 850
    aget-wide v0, p0, v15

    aget-wide v6, p5, v20

    xor-long/2addr v0, v6

    aput-wide v0, p0, v15

    .line 851
    aget-wide v0, p5, v21

    aget-wide v6, p5, v22

    xor-long/2addr v0, v6

    aput-wide v0, p5, v21

    .line 852
    aget-wide v0, p5, v20

    aget-wide v6, p5, v21

    xor-long/2addr v0, v6

    aput-wide v0, p5, v20

    .line 853
    aget-wide v0, p5, v15

    aget-wide v6, p5, v17

    xor-long/2addr v0, v6

    aput-wide v0, p5, v15

    .line 854
    aget-wide v0, p5, v15

    aget-wide v6, p5, v19

    xor-long/2addr v0, v6

    aput-wide v0, p5, v17

    .line 855
    aget-wide v0, p0, v19

    aget-wide v6, p5, v15

    aget-wide v10, p5, v20

    xor-long/2addr v6, v10

    xor-long/2addr v0, v6

    aput-wide v0, p0, v19

    .line 856
    aget-wide v0, p0, v14

    aget-wide v6, p5, v21

    aget-wide v10, p5, v17

    xor-long/2addr v6, v10

    xor-long/2addr v0, v6

    aput-wide v0, p0, v14

    .line 857
    aget-wide v0, p0, v17

    aget-wide v6, p5, v20

    xor-long/2addr v0, v6

    aput-wide v0, p0, v17

    .line 858
    aget-wide v0, p0, v16

    aget-wide v6, p5, v17

    xor-long/2addr v0, v6

    aput-wide v0, p0, v16

    .line 859
    aget-wide v0, p0, v18

    aget-wide v6, p5, v19

    xor-long/2addr v0, v6

    aput-wide v0, p0, v18

    .line 860
    xor-long v29, v23, v2

    xor-long v31, v25, v4

    const/16 v28, 0x4

    move-object/from16 v27, p0

    invoke-static/range {v27 .. v32}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    .line 862
    xor-long v16, v2, v8

    xor-long v18, v4, v12

    const/4 v15, 0x6

    move-object/from16 v14, p0

    invoke-static/range {v14 .. v19}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    .line 864
    xor-long v16, v23, v8

    xor-long v18, v25, v12

    const/4 v15, 0x5

    invoke-static/range {v14 .. v19}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    .line 865
    return-void
.end method

.method private static mul416_no_simd_gf2x([J[JI[JI[J)V
    .locals 36
    .param p0, "C"    # [J
    .param p1, "A"    # [J
    .param p2, "a_cp"    # I
    .param p3, "B"    # [J
    .param p4, "b_cp"    # I
    .param p5, "RESERVED_BUF"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "C",
            "A",
            "a_cp",
            "B",
            "b_cp",
            "RESERVED_BUF"
        }
    .end annotation

    .line 869
    const/4 v1, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul192_no_simd_gf2x([JI[JI[JI)V

    .line 870
    add-int/lit8 v0, p2, 0x3

    aget-wide v4, p1, v0

    add-int/lit8 v0, p2, 0x4

    aget-wide v6, p1, v0

    add-int/lit8 v0, p4, 0x3

    aget-wide v8, p3, v0

    add-int/lit8 v0, p4, 0x4

    aget-wide v10, p3, v0

    const/4 v3, 0x6

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v11}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x([JIJJJJ)V

    .line 871
    add-int/lit8 v0, p2, 0x5

    aget-wide v4, p1, v0

    add-int/lit8 v0, p4, 0x5

    aget-wide v6, p3, v0

    const/16 v3, 0xa

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    .line 872
    add-int/lit8 v0, p2, 0x6

    aget-wide v0, p1, v0

    add-int/lit8 v2, p4, 0x6

    aget-wide v2, p3, v2

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL32_NO_SIMD_GF2X(JJ)J

    move-result-wide v0

    const/16 v13, 0xb

    aget-wide v2, p0, v13

    xor-long/2addr v0, v2

    const/16 v14, 0xc

    aput-wide v0, p0, v14

    .line 873
    const/16 v0, 0xa

    aget-wide v1, p0, v0

    aget-wide v3, p0, v14

    xor-long/2addr v1, v3

    aput-wide v1, p0, v13

    .line 874
    add-int/lit8 v1, p2, 0x5

    aget-wide v1, p1, v1

    add-int/lit8 v3, p2, 0x6

    aget-wide v3, p1, v3

    xor-long/2addr v1, v3

    add-int/lit8 v3, p4, 0x5

    aget-wide v3, p3, v3

    add-int/lit8 v5, p4, 0x6

    aget-wide v5, p3, v5

    xor-long/2addr v3, v5

    move-wide v6, v3

    const/16 v3, 0xb

    move-wide v4, v1

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    .line 875
    const/16 v1, 0x8

    aget-wide v2, p0, v1

    aget-wide v4, p0, v0

    xor-long/2addr v2, v4

    aput-wide v2, p0, v1

    .line 876
    aget-wide v2, p0, v13

    const/16 v15, 0x9

    aget-wide v4, p0, v15

    xor-long/2addr v2, v4

    aput-wide v2, p0, v13

    .line 877
    aget-wide v2, p0, v1

    aget-wide v4, p0, v14

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    .line 878
    aget-wide v2, p0, v1

    const/16 v16, 0x6

    aget-wide v4, p0, v16

    xor-long/2addr v2, v4

    aput-wide v2, p0, v1

    .line 879
    aget-wide v2, p0, v13

    const/16 v17, 0x7

    aget-wide v4, p0, v17

    xor-long/2addr v2, v4

    aput-wide v2, p0, v15

    .line 880
    add-int/lit8 v2, p2, 0x3

    aget-wide v2, p1, v2

    add-int/lit8 v4, p2, 0x5

    aget-wide v4, p1, v4

    xor-long/2addr v4, v2

    add-int/lit8 v2, p2, 0x4

    aget-wide v2, p1, v2

    add-int/lit8 v6, p2, 0x6

    aget-wide v6, p1, v6

    xor-long/2addr v6, v2

    add-int/lit8 v2, p4, 0x3

    aget-wide v2, p3, v2

    add-int/lit8 v8, p4, 0x5

    aget-wide v8, p3, v8

    xor-long/2addr v8, v2

    add-int/lit8 v2, p4, 0x4

    aget-wide v2, p3, v2

    add-int/lit8 v10, p4, 0x6

    aget-wide v10, p3, v10

    xor-long/2addr v10, v2

    const/16 v3, 0x8

    move-object/from16 v2, p0

    move-object/from16 v12, p5

    invoke-static/range {v2 .. v12}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x_xor([JIJJJJ[J)V

    .line 882
    aget-wide v2, p1, p2

    add-int/lit8 v4, p2, 0x3

    aget-wide v4, p1, v4

    xor-long/2addr v4, v2

    .line 883
    .local v4, "AA0":J
    add-int/lit8 v2, p2, 0x1

    aget-wide v2, p1, v2

    add-int/lit8 v6, p2, 0x4

    aget-wide v6, p1, v6

    xor-long/2addr v6, v2

    .line 884
    .local v6, "AA1":J
    add-int/lit8 v2, p2, 0x2

    aget-wide v2, p1, v2

    add-int/lit8 v8, p2, 0x5

    aget-wide v8, p1, v8

    xor-long v18, v2, v8

    .line 885
    .local v18, "AA2":J
    add-int/lit8 v2, p2, 0x6

    aget-wide v2, p1, v2

    .line 886
    .local v2, "AA3":J
    aget-wide v8, p3, p4

    add-int/lit8 v10, p4, 0x3

    aget-wide v10, p3, v10

    xor-long/2addr v8, v10

    .line 887
    .local v8, "BB0":J
    add-int/lit8 v10, p4, 0x1

    aget-wide v10, p3, v10

    add-int/lit8 v12, p4, 0x4

    aget-wide v20, p3, v12

    xor-long v10, v10, v20

    .line 888
    .local v10, "BB1":J
    add-int/lit8 v12, p4, 0x2

    aget-wide v20, p3, v12

    add-int/lit8 v12, p4, 0x5

    aget-wide v22, p3, v12

    xor-long v20, v20, v22

    .line 889
    .local v20, "BB2":J
    add-int/lit8 v12, p4, 0x6

    const/16 v22, 0xa

    const/16 v23, 0x8

    aget-wide v0, p3, v12

    .line 890
    .local v0, "BB3":J
    aget-wide v24, p0, v16

    const/4 v12, 0x3

    aget-wide v26, p0, v12

    xor-long v24, v24, v26

    aput-wide v24, p0, v16

    .line 891
    aget-wide v24, p0, v17

    const/16 v26, 0x4

    aget-wide v27, p0, v26

    xor-long v24, v24, v27

    aput-wide v24, p0, v17

    .line 892
    aget-wide v24, p0, v23

    const/16 v27, 0x5

    aget-wide v28, p0, v27

    xor-long v24, v24, v28

    aput-wide v24, p0, v23

    .line 893
    move-wide/from16 v24, v2

    .end local v2    # "AA3":J
    .local v24, "AA3":J
    const/4 v3, 0x0

    move-object/from16 v2, p5

    move-wide/from16 v13, v24

    const/16 v28, 0xb

    const/16 v29, 0xc

    .end local v24    # "AA3":J
    .local v13, "AA3":J
    invoke-static/range {v2 .. v11}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x([JIJJJJ)V

    .line 894
    move-wide/from16 v24, v4

    move-wide/from16 v30, v6

    move-wide/from16 v32, v8

    move-wide/from16 v34, v10

    .end local v4    # "AA0":J
    .end local v6    # "AA1":J
    .end local v8    # "BB0":J
    .end local v10    # "BB1":J
    .local v24, "AA0":J
    .local v30, "AA1":J
    .local v32, "BB0":J
    .local v34, "BB1":J
    const/4 v3, 0x4

    move-wide/from16 v4, v18

    move-wide/from16 v6, v20

    .end local v18    # "AA2":J
    .end local v20    # "BB2":J
    .local v4, "AA2":J
    .local v6, "BB2":J
    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    .line 895
    .end local v4    # "AA2":J
    .end local v6    # "BB2":J
    .restart local v18    # "AA2":J
    .restart local v20    # "BB2":J
    invoke-static {v13, v14, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL32_NO_SIMD_GF2X(JJ)J

    move-result-wide v2

    aget-wide v4, p5, v27

    xor-long/2addr v2, v4

    aput-wide v2, p5, v16

    .line 896
    aget-wide v2, p5, v26

    aget-wide v4, p5, v16

    xor-long/2addr v2, v4

    aput-wide v2, p5, v27

    .line 897
    xor-long v4, v18, v13

    xor-long v6, v20, v0

    const/4 v3, 0x5

    move-object/from16 v2, p5

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    .line 898
    aget-wide v2, p0, v16

    const/4 v4, 0x0

    aget-wide v5, p0, v4

    xor-long/2addr v2, v5

    aget-wide v5, p5, v4

    xor-long/2addr v2, v5

    aput-wide v2, p0, v12

    .line 899
    aget-wide v2, p0, v17

    const/4 v5, 0x1

    aget-wide v6, p0, v5

    xor-long/2addr v2, v6

    aget-wide v6, p5, v5

    xor-long/2addr v2, v6

    aput-wide v2, p0, v26

    .line 900
    const/4 v2, 0x2

    aget-wide v6, p5, v2

    aget-wide v8, p5, v26

    xor-long/2addr v6, v8

    aput-wide v6, p5, v2

    .line 901
    aget-wide v6, p5, v12

    aget-wide v8, p5, v27

    xor-long/2addr v6, v8

    aput-wide v6, p5, v12

    .line 902
    aget-wide v6, p0, v23

    aget-wide v8, p0, v2

    xor-long/2addr v6, v8

    aget-wide v8, p5, v2

    xor-long/2addr v6, v8

    aget-wide v3, p5, v4

    xor-long/2addr v3, v6

    aput-wide v3, p0, v27

    .line 903
    aget-wide v3, p0, v16

    aget-wide v6, p0, v15

    aget-wide v8, p5, v12

    xor-long/2addr v6, v8

    aget-wide v8, p5, v5

    xor-long/2addr v6, v8

    xor-long/2addr v3, v6

    aput-wide v3, p0, v16

    .line 904
    aget-wide v3, p0, v17

    aget-wide v5, p0, v22

    aget-wide v7, p5, v2

    xor-long/2addr v5, v7

    aget-wide v7, p5, v16

    xor-long/2addr v5, v7

    xor-long/2addr v3, v5

    aput-wide v3, p0, v17

    .line 905
    aget-wide v2, p0, v23

    aget-wide v4, p0, v28

    aget-wide v6, p5, v12

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p0, v23

    .line 906
    aget-wide v2, p0, v15

    aget-wide v4, p0, v29

    aget-wide v6, p5, v16

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p0, v15

    .line 907
    xor-long v4, v24, v18

    xor-long v6, v30, v13

    xor-long v8, v32, v20

    xor-long v10, v34, v0

    const/4 v3, 0x5

    move-object/from16 v2, p0

    move-object/from16 v12, p5

    invoke-static/range {v2 .. v12}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x_xor([JIJJJJ[J)V

    .line 908
    return-void
.end method

.method private static mul416_no_simd_gf2x_xor([J[JI[JI[J[J)V
    .locals 37
    .param p0, "C"    # [J
    .param p1, "A"    # [J
    .param p2, "a_cp"    # I
    .param p3, "B"    # [J
    .param p4, "b_cp"    # I
    .param p5, "Buffer"    # [J
    .param p6, "Buffer2"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "C",
            "A",
            "a_cp",
            "B",
            "b_cp",
            "Buffer",
            "Buffer2"
        }
    .end annotation

    .line 912
    const/4 v1, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v0, p5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul192_no_simd_gf2x([JI[JI[JI)V

    .line 913
    add-int/lit8 v0, p2, 0x3

    aget-wide v2, p1, v0

    add-int/lit8 v0, p2, 0x4

    aget-wide v4, p1, v0

    add-int/lit8 v0, p4, 0x3

    aget-wide v6, p3, v0

    add-int/lit8 v0, p4, 0x4

    aget-wide v8, p3, v0

    const/4 v1, 0x6

    move-object/from16 v0, p5

    invoke-static/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x([JIJJJJ)V

    .line 914
    add-int/lit8 v0, p2, 0x5

    aget-wide v2, p1, v0

    add-int/lit8 v0, p4, 0x5

    aget-wide v4, p3, v0

    const/16 v1, 0xa

    move-object/from16 v0, p5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    .line 915
    add-int/lit8 v0, p2, 0x6

    aget-wide v0, p1, v0

    add-int/lit8 v2, p4, 0x6

    aget-wide v2, p3, v2

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL32_NO_SIMD_GF2X(JJ)J

    move-result-wide v0

    const/16 v11, 0xb

    aget-wide v2, p5, v11

    xor-long/2addr v0, v2

    const/16 v12, 0xc

    aput-wide v0, p5, v12

    .line 916
    const/16 v13, 0xa

    aget-wide v0, p5, v13

    aget-wide v2, p5, v12

    xor-long/2addr v0, v2

    aput-wide v0, p5, v11

    .line 917
    add-int/lit8 v0, p2, 0x5

    aget-wide v0, p1, v0

    add-int/lit8 v2, p2, 0x6

    aget-wide v2, p1, v2

    xor-long/2addr v2, v0

    add-int/lit8 v0, p4, 0x5

    aget-wide v0, p3, v0

    add-int/lit8 v4, p4, 0x6

    aget-wide v4, p3, v4

    xor-long/2addr v4, v0

    const/16 v1, 0xb

    move-object/from16 v0, p5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    .line 918
    const/16 v14, 0x8

    aget-wide v0, p5, v14

    aget-wide v2, p5, v13

    xor-long/2addr v0, v2

    aput-wide v0, p5, v14

    .line 919
    aget-wide v0, p5, v11

    const/16 v15, 0x9

    aget-wide v2, p5, v15

    xor-long/2addr v0, v2

    aput-wide v0, p5, v11

    .line 920
    aget-wide v0, p5, v14

    aget-wide v2, p5, v12

    xor-long/2addr v0, v2

    aput-wide v0, p5, v13

    .line 921
    aget-wide v0, p5, v14

    const/16 v16, 0x6

    aget-wide v2, p5, v16

    xor-long/2addr v0, v2

    aput-wide v0, p5, v14

    .line 922
    aget-wide v0, p5, v11

    const/16 v17, 0x7

    aget-wide v2, p5, v17

    xor-long/2addr v0, v2

    aput-wide v0, p5, v15

    .line 923
    aget-wide v0, p5, v16

    const/16 v18, 0x3

    aget-wide v2, p5, v18

    xor-long/2addr v0, v2

    aput-wide v0, p5, v16

    .line 924
    aget-wide v0, p5, v17

    const/16 v19, 0x4

    aget-wide v2, p5, v19

    xor-long/2addr v0, v2

    aput-wide v0, p5, v17

    .line 925
    aget-wide v0, p5, v14

    const/16 v20, 0x5

    aget-wide v2, p5, v20

    xor-long/2addr v0, v2

    aput-wide v0, p5, v14

    .line 926
    add-int/lit8 v0, p2, 0x3

    aget-wide v0, p1, v0

    add-int/lit8 v2, p2, 0x5

    aget-wide v2, p1, v2

    xor-long/2addr v2, v0

    add-int/lit8 v0, p2, 0x4

    aget-wide v0, p1, v0

    add-int/lit8 v4, p2, 0x6

    aget-wide v4, p1, v4

    xor-long/2addr v4, v0

    add-int/lit8 v0, p4, 0x3

    aget-wide v0, p3, v0

    add-int/lit8 v6, p4, 0x5

    aget-wide v6, p3, v6

    xor-long/2addr v6, v0

    add-int/lit8 v0, p4, 0x4

    aget-wide v0, p3, v0

    add-int/lit8 v8, p4, 0x6

    aget-wide v8, p3, v8

    xor-long/2addr v8, v0

    const/16 v1, 0x8

    move-object/from16 v0, p5

    move-object/from16 v10, p6

    invoke-static/range {v0 .. v10}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x_xor([JIJJJJ[J)V

    .line 928
    const/4 v10, 0x0

    aget-wide v0, p0, v10

    aget-wide v2, p5, v10

    xor-long/2addr v0, v2

    aput-wide v0, p0, v10

    .line 929
    const/16 v21, 0x1

    aget-wide v0, p0, v21

    aget-wide v2, p5, v21

    xor-long/2addr v0, v2

    aput-wide v0, p0, v21

    .line 930
    const/16 v22, 0x2

    aget-wide v0, p0, v22

    aget-wide v2, p5, v22

    xor-long/2addr v0, v2

    aput-wide v0, p0, v22

    .line 931
    aget-wide v0, p0, v18

    aget-wide v2, p5, v16

    aget-wide v4, p5, v10

    xor-long/2addr v2, v4

    xor-long/2addr v0, v2

    aput-wide v0, p0, v18

    .line 932
    aget-wide v0, p0, v19

    aget-wide v2, p5, v17

    aget-wide v4, p5, v21

    xor-long/2addr v2, v4

    xor-long/2addr v0, v2

    aput-wide v0, p0, v19

    .line 933
    aget-wide v0, p0, v20

    aget-wide v2, p5, v14

    aget-wide v4, p5, v22

    xor-long/2addr v2, v4

    xor-long/2addr v0, v2

    aput-wide v0, p0, v20

    .line 934
    aget-wide v0, p0, v16

    aget-wide v2, p5, v16

    aget-wide v4, p5, v15

    xor-long/2addr v2, v4

    xor-long/2addr v0, v2

    aput-wide v0, p0, v16

    .line 935
    aget-wide v0, p0, v17

    aget-wide v2, p5, v17

    aget-wide v4, p5, v13

    xor-long/2addr v2, v4

    xor-long/2addr v0, v2

    aput-wide v0, p0, v17

    .line 936
    aget-wide v0, p0, v14

    aget-wide v2, p5, v14

    aget-wide v4, p5, v11

    xor-long/2addr v2, v4

    xor-long/2addr v0, v2

    aput-wide v0, p0, v14

    .line 937
    aget-wide v0, p0, v15

    aget-wide v2, p5, v15

    aget-wide v4, p5, v12

    xor-long/2addr v2, v4

    xor-long/2addr v0, v2

    aput-wide v0, p0, v15

    .line 938
    aget-wide v0, p0, v13

    aget-wide v2, p5, v13

    xor-long/2addr v0, v2

    aput-wide v0, p0, v13

    .line 939
    aget-wide v0, p0, v11

    aget-wide v2, p5, v11

    xor-long/2addr v0, v2

    aput-wide v0, p0, v11

    .line 940
    aget-wide v0, p0, v12

    aget-wide v2, p5, v12

    xor-long/2addr v0, v2

    aput-wide v0, p0, v12

    .line 941
    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x3

    aget-wide v2, p1, v2

    xor-long/2addr v2, v0

    .line 942
    .local v2, "AA0":J
    add-int/lit8 v0, p2, 0x1

    aget-wide v0, p1, v0

    add-int/lit8 v4, p2, 0x4

    aget-wide v4, p1, v4

    xor-long/2addr v4, v0

    .line 943
    .local v4, "AA1":J
    add-int/lit8 v0, p2, 0x2

    aget-wide v0, p1, v0

    add-int/lit8 v6, p2, 0x5

    aget-wide v6, p1, v6

    xor-long v11, v0, v6

    .line 944
    .local v11, "AA2":J
    add-int/lit8 v0, p2, 0x6

    aget-wide v0, p1, v0

    .line 945
    .local v0, "AA3":J
    aget-wide v6, p3, p4

    add-int/lit8 v8, p4, 0x3

    aget-wide v8, p3, v8

    xor-long/2addr v6, v8

    .line 946
    .local v6, "BB0":J
    add-int/lit8 v8, p4, 0x1

    aget-wide v8, p3, v8

    add-int/lit8 v13, p4, 0x4

    aget-wide v23, p3, v13

    xor-long v8, v8, v23

    .line 947
    .local v8, "BB1":J
    add-int/lit8 v13, p4, 0x2

    aget-wide v23, p3, v13

    add-int/lit8 v13, p4, 0x5

    aget-wide v25, p3, v13

    xor-long v23, v23, v25

    .line 948
    .local v23, "BB2":J
    add-int/lit8 v13, p4, 0x6

    const/16 v25, 0x8

    const/16 v26, 0x9

    aget-wide v14, p3, v13

    .line 949
    .local v14, "BB3":J
    move-wide/from16 v27, v0

    .end local v0    # "AA3":J
    .local v27, "AA3":J
    const/4 v1, 0x0

    move-object/from16 v0, p5

    move-wide/from16 v29, v11

    move-wide/from16 v11, v27

    .end local v27    # "AA3":J
    .local v11, "AA3":J
    .local v29, "AA2":J
    invoke-static/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x([JIJJJJ)V

    .line 950
    move-wide/from16 v27, v2

    move-wide/from16 v31, v4

    move-wide/from16 v33, v6

    move-wide/from16 v35, v8

    .end local v2    # "AA0":J
    .end local v4    # "AA1":J
    .end local v6    # "BB0":J
    .end local v8    # "BB1":J
    .local v27, "AA0":J
    .local v31, "AA1":J
    .local v33, "BB0":J
    .local v35, "BB1":J
    const/4 v1, 0x4

    move-wide/from16 v4, v23

    move-wide/from16 v2, v29

    .end local v23    # "BB2":J
    .end local v29    # "AA2":J
    .local v2, "AA2":J
    .local v4, "BB2":J
    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    .line 951
    .end local v2    # "AA2":J
    .end local v4    # "BB2":J
    .restart local v23    # "BB2":J
    .restart local v29    # "AA2":J
    invoke-static {v11, v12, v14, v15}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL32_NO_SIMD_GF2X(JJ)J

    move-result-wide v0

    aget-wide v2, p5, v20

    xor-long/2addr v0, v2

    aput-wide v0, p5, v16

    .line 952
    aget-wide v0, p5, v19

    aget-wide v2, p5, v16

    xor-long/2addr v0, v2

    aput-wide v0, p5, v20

    .line 953
    xor-long v2, v29, v11

    xor-long v4, v23, v14

    const/4 v1, 0x5

    move-object/from16 v0, p5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    .line 954
    aget-wide v0, p0, v18

    aget-wide v2, p5, v10

    xor-long/2addr v0, v2

    aput-wide v0, p0, v18

    .line 955
    aget-wide v0, p0, v19

    aget-wide v2, p5, v21

    xor-long/2addr v0, v2

    aput-wide v0, p0, v19

    .line 956
    aget-wide v0, p5, v22

    aget-wide v2, p5, v19

    xor-long/2addr v0, v2

    aput-wide v0, p5, v22

    .line 957
    aget-wide v0, p5, v18

    aget-wide v2, p5, v20

    xor-long/2addr v0, v2

    aput-wide v0, p5, v18

    .line 958
    aget-wide v0, p0, v20

    aget-wide v2, p5, v22

    aget-wide v4, p5, v10

    xor-long/2addr v2, v4

    xor-long/2addr v0, v2

    aput-wide v0, p0, v20

    .line 959
    aget-wide v0, p0, v16

    aget-wide v2, p5, v18

    aget-wide v4, p5, v21

    xor-long/2addr v2, v4

    xor-long/2addr v0, v2

    aput-wide v0, p0, v16

    .line 960
    aget-wide v0, p0, v17

    aget-wide v2, p5, v22

    aget-wide v4, p5, v16

    xor-long/2addr v2, v4

    xor-long/2addr v0, v2

    aput-wide v0, p0, v17

    .line 961
    aget-wide v0, p0, v25

    aget-wide v2, p5, v18

    xor-long/2addr v0, v2

    aput-wide v0, p0, v25

    .line 962
    aget-wide v0, p0, v26

    aget-wide v2, p5, v16

    xor-long/2addr v0, v2

    aput-wide v0, p0, v26

    .line 963
    xor-long v2, v27, v29

    xor-long v4, v31, v11

    xor-long v6, v33, v23

    xor-long v8, v35, v14

    const/4 v1, 0x5

    move-object/from16 v0, p0

    move-object/from16 v10, p5

    invoke-static/range {v0 .. v10}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x_xor([JIJJJJ[J)V

    .line 964
    return-void
.end method

.method private static mul544_no_simd_gf2x([J[JI[JI[J[J[J)V
    .locals 21
    .param p0, "C"    # [J
    .param p1, "A"    # [J
    .param p2, "a_cp"    # I
    .param p3, "B"    # [J
    .param p4, "b_cp"    # I
    .param p5, "AA"    # [J
    .param p6, "BB"    # [J
    .param p7, "RESERVED_BUF9"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "C",
            "A",
            "a_cp",
            "B",
            "b_cp",
            "AA",
            "BB",
            "RESERVED_BUF9"
        }
    .end annotation

    .line 969
    aget-wide v2, p1, p2

    add-int/lit8 v0, p2, 0x1

    aget-wide v4, p1, v0

    aget-wide v6, p3, p4

    add-int/lit8 v0, p4, 0x1

    aget-wide v8, p3, v0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x([JIJJJJ)V

    .line 970
    add-int/lit8 v0, p2, 0x2

    aget-wide v12, p1, v0

    add-int/lit8 v0, p2, 0x3

    aget-wide v14, p1, v0

    add-int/lit8 v0, p4, 0x2

    aget-wide v16, p3, v0

    add-int/lit8 v0, p4, 0x3

    aget-wide v18, p3, v0

    const/4 v11, 0x4

    move-object/from16 v10, p0

    invoke-static/range {v10 .. v19}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x([JIJJJJ)V

    .line 971
    const/4 v0, 0x4

    aget-wide v1, p0, v0

    const/4 v3, 0x2

    aget-wide v4, p0, v3

    xor-long/2addr v1, v4

    aput-wide v1, p0, v0

    .line 972
    const/4 v1, 0x5

    aget-wide v4, p0, v1

    const/4 v2, 0x3

    aget-wide v6, p0, v2

    xor-long/2addr v4, v6

    aput-wide v4, p0, v1

    .line 973
    aget-wide v4, p0, v0

    const/4 v6, 0x0

    aget-wide v7, p0, v6

    xor-long/2addr v4, v7

    aput-wide v4, p0, v3

    .line 974
    aget-wide v4, p0, v1

    const/4 v7, 0x1

    aget-wide v8, p0, v7

    xor-long/2addr v4, v8

    aput-wide v4, p0, v2

    .line 975
    aget-wide v4, p0, v0

    const/4 v8, 0x6

    aget-wide v9, p0, v8

    xor-long/2addr v4, v9

    aput-wide v4, p0, v0

    .line 976
    aget-wide v4, p0, v1

    const/4 v9, 0x7

    aget-wide v10, p0, v9

    xor-long/2addr v4, v10

    aput-wide v4, p0, v1

    .line 977
    aget-wide v4, p1, p2

    add-int/lit8 v10, p2, 0x2

    aget-wide v10, p1, v10

    xor-long v12, v4, v10

    add-int/lit8 v4, p2, 0x1

    aget-wide v4, p1, v4

    add-int/lit8 v10, p2, 0x3

    aget-wide v10, p1, v10

    xor-long v14, v4, v10

    aget-wide v4, p3, p4

    add-int/lit8 v10, p4, 0x2

    aget-wide v10, p3, v10

    xor-long v16, v4, v10

    add-int/lit8 v4, p4, 0x1

    aget-wide v4, p3, v4

    add-int/lit8 v10, p4, 0x3

    aget-wide v10, p3, v10

    xor-long v18, v4, v10

    const/4 v11, 0x2

    move-object/from16 v10, p0

    move-object/from16 v20, p7

    invoke-static/range {v10 .. v20}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x_xor([JIJJJJ[J)V

    .line 979
    add-int/lit8 v13, p2, 0x4

    add-int/lit8 v15, p4, 0x4

    const/16 v11, 0x8

    move-object/from16 v12, p1

    move-object/from16 v14, p3

    move-object/from16 v16, p7

    invoke-static/range {v10 .. v16}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul288_no_simd_gf2x([JI[JI[JI[J)V

    .line 980
    const/16 v4, 0x8

    aget-wide v10, p0, v4

    aget-wide v12, p0, v0

    xor-long/2addr v10, v12

    aput-wide v10, p0, v4

    .line 981
    const/16 v5, 0x9

    aget-wide v10, p0, v5

    aget-wide v12, p0, v1

    xor-long/2addr v10, v12

    aput-wide v10, p0, v5

    .line 982
    const/16 v10, 0xa

    aget-wide v11, p0, v10

    aget-wide v13, p0, v8

    xor-long/2addr v11, v13

    aput-wide v11, p0, v10

    .line 983
    const/16 v11, 0xb

    aget-wide v12, p0, v11

    aget-wide v14, p0, v9

    xor-long/2addr v12, v14

    aput-wide v12, p0, v11

    .line 984
    aget-wide v12, p0, v4

    aget-wide v14, p0, v6

    xor-long/2addr v12, v14

    aput-wide v12, p0, v0

    .line 985
    aget-wide v12, p0, v5

    aget-wide v14, p0, v7

    xor-long/2addr v12, v14

    aput-wide v12, p0, v1

    .line 986
    aget-wide v12, p0, v10

    aget-wide v14, p0, v3

    xor-long/2addr v12, v14

    aput-wide v12, p0, v8

    .line 987
    aget-wide v12, p0, v11

    aget-wide v14, p0, v2

    xor-long/2addr v12, v14

    aput-wide v12, p0, v9

    .line 988
    aget-wide v8, p0, v4

    const/16 v1, 0xc

    aget-wide v12, p0, v1

    xor-long/2addr v8, v12

    aput-wide v8, p0, v4

    .line 989
    aget-wide v8, p0, v5

    const/16 v4, 0xd

    aget-wide v12, p0, v4

    xor-long/2addr v8, v12

    aput-wide v8, p0, v5

    .line 990
    aget-wide v4, p0, v10

    const/16 v8, 0xe

    aget-wide v8, p0, v8

    xor-long/2addr v4, v8

    aput-wide v4, p0, v10

    .line 991
    aget-wide v4, p0, v11

    const/16 v8, 0xf

    aget-wide v8, p0, v8

    xor-long/2addr v4, v8

    aput-wide v4, p0, v11

    .line 992
    aget-wide v4, p0, v1

    const/16 v8, 0x10

    aget-wide v8, p0, v8

    xor-long/2addr v4, v8

    aput-wide v4, p0, v1

    .line 993
    aget-wide v4, p1, p2

    add-int/lit8 v1, p2, 0x4

    aget-wide v8, p1, v1

    xor-long/2addr v4, v8

    aput-wide v4, p5, v6

    .line 994
    add-int/lit8 v1, p2, 0x1

    aget-wide v4, p1, v1

    add-int/lit8 v1, p2, 0x5

    aget-wide v8, p1, v1

    xor-long/2addr v4, v8

    aput-wide v4, p5, v7

    .line 995
    add-int/lit8 v1, p2, 0x2

    aget-wide v4, p1, v1

    add-int/lit8 v1, p2, 0x6

    aget-wide v8, p1, v1

    xor-long/2addr v4, v8

    aput-wide v4, p5, v3

    .line 996
    add-int/lit8 v1, p2, 0x3

    aget-wide v4, p1, v1

    add-int/lit8 v1, p2, 0x7

    aget-wide v8, p1, v1

    xor-long/2addr v4, v8

    aput-wide v4, p5, v2

    .line 997
    add-int/lit8 v1, p2, 0x8

    aget-wide v4, p1, v1

    aput-wide v4, p5, v0

    .line 998
    aget-wide v4, p3, p4

    add-int/lit8 v1, p4, 0x4

    aget-wide v8, p3, v1

    xor-long/2addr v4, v8

    aput-wide v4, p6, v6

    .line 999
    add-int/lit8 v1, p4, 0x1

    aget-wide v4, p3, v1

    add-int/lit8 v1, p4, 0x5

    aget-wide v8, p3, v1

    xor-long/2addr v4, v8

    aput-wide v4, p6, v7

    .line 1000
    add-int/lit8 v1, p4, 0x2

    aget-wide v4, p3, v1

    add-int/lit8 v1, p4, 0x6

    aget-wide v6, p3, v1

    xor-long/2addr v4, v6

    aput-wide v4, p6, v3

    .line 1001
    add-int/lit8 v1, p4, 0x3

    aget-wide v3, p3, v1

    add-int/lit8 v1, p4, 0x7

    aget-wide v5, p3, v1

    xor-long/2addr v3, v5

    aput-wide v3, p6, v2

    .line 1002
    add-int/lit8 v1, p4, 0x8

    aget-wide v1, p3, v1

    aput-wide v1, p6, v0

    .line 1003
    const/4 v13, 0x0

    const/4 v15, 0x0

    const/4 v11, 0x4

    move-object/from16 v10, p0

    move-object/from16 v12, p5

    move-object/from16 v14, p6

    invoke-static/range {v10 .. v16}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul288_no_simd_gf2x_xor([JI[JI[JI[J)V

    .line 1004
    return-void
.end method

.method private static mul544_no_simd_gf2x_xor([J[JI[JI[J[J[J[J)V
    .locals 21
    .param p0, "C"    # [J
    .param p1, "A"    # [J
    .param p2, "a_cp"    # I
    .param p3, "B"    # [J
    .param p4, "b_cp"    # I
    .param p5, "AA"    # [J
    .param p6, "BB"    # [J
    .param p7, "Buffer"    # [J
    .param p8, "Buffer2"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "C",
            "A",
            "a_cp",
            "B",
            "b_cp",
            "AA",
            "BB",
            "Buffer",
            "Buffer2"
        }
    .end annotation

    .line 1009
    aget-wide v2, p1, p2

    add-int/lit8 v0, p2, 0x1

    aget-wide v4, p1, v0

    aget-wide v6, p3, p4

    add-int/lit8 v0, p4, 0x1

    aget-wide v8, p3, v0

    const/4 v1, 0x0

    move-object/from16 v0, p7

    invoke-static/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x([JIJJJJ)V

    .line 1010
    add-int/lit8 v0, p2, 0x2

    aget-wide v12, p1, v0

    add-int/lit8 v0, p2, 0x3

    aget-wide v14, p1, v0

    add-int/lit8 v0, p4, 0x2

    aget-wide v16, p3, v0

    add-int/lit8 v0, p4, 0x3

    aget-wide v18, p3, v0

    const/4 v11, 0x4

    move-object/from16 v10, p7

    invoke-static/range {v10 .. v19}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x([JIJJJJ)V

    .line 1011
    const/4 v0, 0x4

    aget-wide v1, p7, v0

    const/4 v3, 0x2

    aget-wide v4, p7, v3

    xor-long/2addr v1, v4

    aput-wide v1, p7, v0

    .line 1012
    const/4 v1, 0x5

    aget-wide v4, p7, v1

    const/4 v2, 0x3

    aget-wide v6, p7, v2

    xor-long/2addr v4, v6

    aput-wide v4, p7, v1

    .line 1013
    aget-wide v4, p7, v0

    const/4 v6, 0x0

    aget-wide v7, p7, v6

    xor-long/2addr v4, v7

    aput-wide v4, p7, v3

    .line 1014
    aget-wide v4, p7, v1

    const/4 v7, 0x1

    aget-wide v8, p7, v7

    xor-long/2addr v4, v8

    aput-wide v4, p7, v2

    .line 1015
    aget-wide v4, p7, v0

    const/4 v8, 0x6

    aget-wide v9, p7, v8

    xor-long/2addr v4, v9

    aput-wide v4, p7, v0

    .line 1016
    aget-wide v4, p7, v1

    const/4 v9, 0x7

    aget-wide v10, p7, v9

    xor-long/2addr v4, v10

    aput-wide v4, p7, v1

    .line 1017
    aget-wide v4, p1, p2

    add-int/lit8 v10, p2, 0x2

    aget-wide v10, p1, v10

    xor-long v12, v4, v10

    add-int/lit8 v4, p2, 0x1

    aget-wide v4, p1, v4

    add-int/lit8 v10, p2, 0x3

    aget-wide v10, p1, v10

    xor-long v14, v4, v10

    aget-wide v4, p3, p4

    add-int/lit8 v10, p4, 0x2

    aget-wide v10, p3, v10

    xor-long v16, v4, v10

    add-int/lit8 v4, p4, 0x1

    aget-wide v4, p3, v4

    add-int/lit8 v10, p4, 0x3

    aget-wide v10, p3, v10

    xor-long v18, v4, v10

    const/4 v11, 0x2

    move-object/from16 v10, p7

    move-object/from16 v20, p8

    invoke-static/range {v10 .. v20}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x_xor([JIJJJJ[J)V

    .line 1019
    add-int/lit8 v13, p2, 0x4

    add-int/lit8 v15, p4, 0x4

    const/16 v11, 0x8

    move-object/from16 v12, p1

    move-object/from16 v14, p3

    move-object/from16 v16, p8

    invoke-static/range {v10 .. v16}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul288_no_simd_gf2x([JI[JI[JI[J)V

    .line 1020
    const/16 v4, 0x8

    aget-wide v10, p7, v4

    aget-wide v12, p7, v0

    xor-long/2addr v10, v12

    aput-wide v10, p7, v4

    .line 1021
    const/16 v5, 0x9

    aget-wide v10, p7, v5

    aget-wide v12, p7, v1

    xor-long/2addr v10, v12

    aput-wide v10, p7, v5

    .line 1022
    const/16 v10, 0xa

    aget-wide v11, p7, v10

    aget-wide v13, p7, v8

    xor-long/2addr v11, v13

    aput-wide v11, p7, v10

    .line 1023
    const/16 v11, 0xb

    aget-wide v12, p7, v11

    aget-wide v14, p7, v9

    xor-long/2addr v12, v14

    aput-wide v12, p7, v11

    .line 1024
    aget-wide v12, p0, v6

    aget-wide v14, p7, v6

    xor-long/2addr v12, v14

    aput-wide v12, p0, v6

    .line 1025
    aget-wide v12, p0, v7

    aget-wide v14, p7, v7

    xor-long/2addr v12, v14

    aput-wide v12, p0, v7

    .line 1026
    aget-wide v12, p0, v3

    aget-wide v14, p7, v3

    xor-long/2addr v12, v14

    aput-wide v12, p0, v3

    .line 1027
    aget-wide v12, p0, v2

    aget-wide v14, p7, v2

    xor-long/2addr v12, v14

    aput-wide v12, p0, v2

    .line 1028
    aget-wide v12, p0, v0

    aget-wide v14, p7, v4

    aget-wide v16, p7, v6

    xor-long v14, v14, v16

    xor-long/2addr v12, v14

    aput-wide v12, p0, v0

    .line 1029
    aget-wide v12, p0, v1

    aget-wide v14, p7, v5

    aget-wide v16, p7, v7

    xor-long v14, v14, v16

    xor-long/2addr v12, v14

    aput-wide v12, p0, v1

    .line 1030
    aget-wide v12, p0, v8

    aget-wide v14, p7, v10

    aget-wide v16, p7, v3

    xor-long v14, v14, v16

    xor-long/2addr v12, v14

    aput-wide v12, p0, v8

    .line 1031
    aget-wide v12, p0, v9

    aget-wide v14, p7, v11

    aget-wide v16, p7, v2

    xor-long v14, v14, v16

    xor-long/2addr v12, v14

    aput-wide v12, p0, v9

    .line 1032
    aget-wide v8, p0, v4

    aget-wide v12, p7, v4

    const/16 v1, 0xc

    aget-wide v14, p7, v1

    xor-long/2addr v12, v14

    xor-long/2addr v8, v12

    aput-wide v8, p0, v4

    .line 1033
    aget-wide v8, p0, v5

    aget-wide v12, p7, v5

    const/16 v4, 0xd

    aget-wide v14, p7, v4

    xor-long/2addr v12, v14

    xor-long/2addr v8, v12

    aput-wide v8, p0, v5

    .line 1034
    aget-wide v8, p0, v10

    aget-wide v12, p7, v10

    const/16 v5, 0xe

    aget-wide v14, p7, v5

    xor-long/2addr v12, v14

    xor-long/2addr v8, v12

    aput-wide v8, p0, v10

    .line 1035
    aget-wide v8, p0, v11

    aget-wide v12, p7, v11

    const/16 v10, 0xf

    aget-wide v14, p7, v10

    xor-long/2addr v12, v14

    xor-long/2addr v8, v12

    aput-wide v8, p0, v11

    .line 1036
    aget-wide v8, p0, v1

    aget-wide v11, p7, v1

    const/16 v13, 0x10

    aget-wide v14, p7, v13

    xor-long/2addr v11, v14

    xor-long/2addr v8, v11

    aput-wide v8, p0, v1

    .line 1037
    aget-wide v8, p0, v4

    aget-wide v11, p7, v4

    xor-long/2addr v8, v11

    aput-wide v8, p0, v4

    .line 1038
    aget-wide v8, p0, v5

    aget-wide v11, p7, v5

    xor-long/2addr v8, v11

    aput-wide v8, p0, v5

    .line 1039
    aget-wide v4, p0, v10

    aget-wide v8, p7, v10

    xor-long/2addr v4, v8

    aput-wide v4, p0, v10

    .line 1040
    aget-wide v4, p0, v13

    aget-wide v8, p7, v13

    xor-long/2addr v4, v8

    aput-wide v4, p0, v13

    .line 1041
    aget-wide v4, p1, p2

    add-int/lit8 v1, p2, 0x4

    aget-wide v8, p1, v1

    xor-long/2addr v4, v8

    aput-wide v4, p5, v6

    .line 1042
    add-int/lit8 v1, p2, 0x1

    aget-wide v4, p1, v1

    add-int/lit8 v1, p2, 0x5

    aget-wide v8, p1, v1

    xor-long/2addr v4, v8

    aput-wide v4, p5, v7

    .line 1043
    add-int/lit8 v1, p2, 0x2

    aget-wide v4, p1, v1

    add-int/lit8 v1, p2, 0x6

    aget-wide v8, p1, v1

    xor-long/2addr v4, v8

    aput-wide v4, p5, v3

    .line 1044
    add-int/lit8 v1, p2, 0x3

    aget-wide v4, p1, v1

    add-int/lit8 v1, p2, 0x7

    aget-wide v8, p1, v1

    xor-long/2addr v4, v8

    aput-wide v4, p5, v2

    .line 1045
    add-int/lit8 v1, p2, 0x8

    aget-wide v4, p1, v1

    aput-wide v4, p5, v0

    .line 1046
    aget-wide v4, p3, p4

    add-int/lit8 v1, p4, 0x4

    aget-wide v8, p3, v1

    xor-long/2addr v4, v8

    aput-wide v4, p6, v6

    .line 1047
    add-int/lit8 v1, p4, 0x1

    aget-wide v4, p3, v1

    add-int/lit8 v1, p4, 0x5

    aget-wide v8, p3, v1

    xor-long/2addr v4, v8

    aput-wide v4, p6, v7

    .line 1048
    add-int/lit8 v1, p4, 0x2

    aget-wide v4, p3, v1

    add-int/lit8 v1, p4, 0x6

    aget-wide v6, p3, v1

    xor-long/2addr v4, v6

    aput-wide v4, p6, v3

    .line 1049
    add-int/lit8 v1, p4, 0x3

    aget-wide v3, p3, v1

    add-int/lit8 v1, p4, 0x7

    aget-wide v5, p3, v1

    xor-long/2addr v3, v5

    aput-wide v3, p6, v2

    .line 1050
    add-int/lit8 v1, p4, 0x8

    aget-wide v1, p3, v1

    aput-wide v1, p6, v0

    .line 1051
    const/4 v13, 0x0

    const/4 v15, 0x0

    const/4 v11, 0x4

    move-object/from16 v10, p0

    move-object/from16 v12, p5

    move-object/from16 v14, p6

    move-object/from16 v16, p7

    invoke-static/range {v10 .. v16}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul288_no_simd_gf2x_xor([JI[JI[JI[J)V

    .line 1052
    return-void
.end method


# virtual methods
.method public abstract mul_gf2x(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "C",
            "A",
            "B"
        }
    .end annotation
.end method

.method public abstract mul_gf2x_xor(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "res",
            "A",
            "B"
        }
    .end annotation
.end method

.method public abstract sqr_gf2x([J[JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "res",
            "A",
            "a_cp"
        }
    .end annotation
.end method
