.class Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;
.super Ljava/lang/Object;
.source "GF2Field.java"


# static fields
.field public static final MASK:I = 0xff

.field static final gfInvTable:[B

.field static final gfMulTable:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/16 v2, 0x100

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    sput-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gfMulTable:[[B

    .line 17
    new-array v0, v2, [B

    sput-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gfInvTable:[B

    .line 22
    const-wide v0, 0x101010101010101L

    .line 23
    .local v0, "p":J
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    const/16 v4, 0xff

    const-wide v5, 0x808080808080808L

    if-gt v3, v4, :cond_1

    .line 25
    const-wide v7, 0x706050403020100L

    .line 26
    .local v7, "q":J
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v2, :cond_0

    .line 28
    invoke-static {v0, v1, v7, v8}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Mul_64(JJ)J

    move-result-wide v9

    .line 29
    .local v9, "r":J
    sget-object v11, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gfMulTable:[[B

    aget-object v11, v11, v3

    invoke-static {v9, v10, v11, v4}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    .line 30
    add-long/2addr v7, v5

    .line 26
    .end local v9    # "r":J
    add-int/lit8 v4, v4, 0x8

    goto :goto_1

    .line 33
    .end local v4    # "j":I
    :cond_0
    const-wide v4, 0x101010101010101L

    add-long/2addr v0, v4

    .line 23
    .end local v7    # "q":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 38
    .end local v0    # "p":J
    .end local v3    # "i":I
    :cond_1
    const-wide v0, 0x706050403020100L

    .line 39
    .restart local v0    # "p":J
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v2, :cond_2

    .line 41
    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Inv_64(J)J

    move-result-wide v7

    .line 42
    .local v7, "r":J
    sget-object v4, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gfInvTable:[B

    invoke-static {v7, v8, v4, v3}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    .line 43
    add-long/2addr v0, v5

    .line 39
    .end local v7    # "r":J
    add-int/lit8 v3, v3, 0x8

    goto :goto_2

    .line 46
    .end local v0    # "p":J
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addElem(SS)S
    .locals 1
    .param p0, "a"    # S
    .param p1, "b"    # S
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

    .line 155
    xor-int v0, p0, p1

    int-to-short v0, v0

    return v0
.end method

.method public static addElem_64(JJ)J
    .locals 2
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

    .line 160
    xor-long v0, p0, p2

    return-wide v0
.end method

.method private static gf16Mul(SS)S
    .locals 9
    .param p0, "a"    # S
    .param p1, "b"    # S
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

    .line 79
    and-int/lit8 v0, p0, 0x3

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 80
    .local v0, "a0":S
    ushr-int/lit8 v1, p0, 0x2

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    .line 81
    .local v1, "a1":S
    and-int/lit8 v2, p1, 0x3

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    .line 82
    .local v2, "b0":S
    ushr-int/lit8 v3, p1, 0x2

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    .line 83
    .local v3, "b1":S
    invoke-static {v0, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf4Mul(SS)S

    move-result v4

    .line 84
    .local v4, "a0b0":S
    invoke-static {v1, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf4Mul(SS)S

    move-result v5

    .line 85
    .local v5, "a1b1":S
    xor-int v6, v0, v1

    int-to-short v6, v6

    xor-int v7, v2, v3

    int-to-short v7, v7

    invoke-static {v6, v7}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf4Mul(SS)S

    move-result v6

    xor-int/2addr v6, v4

    int-to-short v6, v6

    .line 86
    .local v6, "a0b1_a1b0":S
    invoke-static {v5}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf4Mul2(S)S

    move-result v7

    .line 87
    .local v7, "a1b1_x2":S
    shl-int/lit8 v8, v6, 0x2

    xor-int/2addr v8, v4

    xor-int/2addr v8, v7

    and-int/lit16 v8, v8, 0xff

    int-to-short v8, v8

    return v8
.end method

.method private static gf16Mul8(S)S
    .locals 4
    .param p0, "a"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 101
    and-int/lit8 v0, p0, 0x3

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 102
    .local v0, "a0":S
    ushr-int/lit8 v1, p0, 0x2

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    .line 103
    .local v1, "a1":S
    xor-int v2, v0, v1

    int-to-short v2, v2

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf4Mul2(S)S

    move-result v2

    shl-int/lit8 v2, v2, 0x2

    .line 104
    .local v2, "r":I
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf4Mul3(S)S

    move-result v3

    or-int/2addr v2, v3

    .line 105
    and-int/lit16 v3, v2, 0xff

    int-to-short v3, v3

    return v3
.end method

.method private static gf16Mul8_64(J)J
    .locals 11
    .param p0, "p"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 256
    const-wide v0, 0x3333333333333333L    # 4.667261458395856E-62

    and-long/2addr v0, p0

    .line 257
    .local v0, "p0":J
    const-wide v2, -0x3333333333333334L    # -9.255963134931783E61

    and-long/2addr v2, p0

    .line 259
    .local v2, "p1":J
    const/4 v4, 0x2

    shl-long v5, v0, v4

    xor-long/2addr v5, v2

    ushr-long v7, v2, v4

    xor-long/2addr v5, v7

    .line 260
    .local v5, "pk":J
    invoke-static {v5, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf4Mul2_64(J)J

    move-result-wide v7

    .line 261
    .local v7, "t":J
    ushr-long v9, v2, v4

    xor-long/2addr v9, v7

    return-wide v9
.end method

.method private static gf16Mul_64(JJ)J
    .locals 15
    .param p0, "p"    # J
    .param p2, "q"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "q"
        }
    .end annotation

    .line 235
    invoke-static/range {p0 .. p3}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf4Mul_64(JJ)J

    move-result-wide v0

    .line 237
    .local v0, "t":J
    const-wide v2, 0x3333333333333333L    # 4.667261458395856E-62

    and-long/2addr v2, v0

    .line 238
    .local v2, "a0b0":J
    const-wide v4, -0x3333333333333334L    # -9.255963134931783E61

    and-long v6, v0, v4

    .line 240
    .local v6, "a1b1":J
    const/4 v8, 0x2

    shl-long v9, p0, v8

    xor-long/2addr v9, p0

    and-long/2addr v9, v4

    ushr-long v11, v6, v8

    xor-long/2addr v9, v11

    .line 241
    .local v9, "pk":J
    shl-long v11, p2, v8

    xor-long v11, v11, p2

    and-long/2addr v4, v11

    const-wide v11, 0x2222222222222222L

    xor-long/2addr v4, v11

    .line 243
    .local v4, "qk":J
    invoke-static {v9, v10, v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf4Mul_64(JJ)J

    move-result-wide v11

    .line 244
    .local v11, "v":J
    shl-long v13, v2, v8

    xor-long/2addr v13, v11

    xor-long/2addr v13, v2

    return-wide v13
.end method

.method private static gf16Squ(S)S
    .locals 5
    .param p0, "a"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 92
    and-int/lit8 v0, p0, 0x3

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 93
    .local v0, "a0":S
    ushr-int/lit8 v1, p0, 0x2

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    .line 94
    .local v1, "a1":S
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf4Squ(S)S

    move-result v1

    .line 95
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf4Mul2(S)S

    move-result v2

    .line 96
    .local v2, "a1squ_x2":S
    shl-int/lit8 v3, v1, 0x2

    xor-int/2addr v3, v2

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf4Squ(S)S

    move-result v4

    xor-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    return v3
.end method

.method private static gf16Squ_64(J)J
    .locals 6
    .param p0, "p"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 249
    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf4Squ_64(J)J

    move-result-wide v0

    .line 250
    .local v0, "t":J
    const-wide v2, -0x3333333333333334L    # -9.255963134931783E61

    and-long/2addr v2, v0

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf4Mul2_64(J)J

    move-result-wide v2

    .line 251
    .local v2, "u":J
    const/4 v4, 0x2

    ushr-long v4, v2, v4

    xor-long/2addr v4, v0

    return-wide v4
.end method

.method private static gf256Inv(S)S
    .locals 9
    .param p0, "a"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 133
    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Squ(S)S

    move-result v0

    .line 134
    .local v0, "a2":S
    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Squ(S)S

    move-result v1

    .line 135
    .local v1, "a4":S
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Squ(S)S

    move-result v2

    .line 136
    .local v2, "a8":S
    invoke-static {v1, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Mul(SS)S

    move-result v3

    .line 137
    .local v3, "a4_2":S
    invoke-static {v3, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Mul(SS)S

    move-result v4

    .line 138
    .local v4, "a8_4_2":S
    invoke-static {v4}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Squ(S)S

    move-result v5

    .line 139
    .local v5, "a64_":S
    invoke-static {v5}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Squ(S)S

    move-result v5

    .line 140
    invoke-static {v5}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Squ(S)S

    move-result v5

    .line 141
    invoke-static {v5, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Mul(SS)S

    move-result v6

    .line 142
    .local v6, "a64_2":S
    invoke-static {v6}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Squ(S)S

    move-result v7

    .line 143
    .local v7, "a128_":S
    invoke-static {v0, v7}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Mul(SS)S

    move-result v8

    return v8
.end method

.method private static gf256Inv_64(J)J
    .locals 18
    .param p0, "p"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 289
    invoke-static/range {p0 .. p1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Squ_64(J)J

    move-result-wide v0

    .line 290
    .local v0, "p2":J
    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Squ_64(J)J

    move-result-wide v2

    .line 291
    .local v2, "p4":J
    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Squ_64(J)J

    move-result-wide v4

    .line 292
    .local v4, "p8":J
    invoke-static {v2, v3, v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Mul_64(JJ)J

    move-result-wide v6

    .line 293
    .local v6, "p4_2":J
    invoke-static {v6, v7, v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Mul_64(JJ)J

    move-result-wide v8

    .line 294
    .local v8, "p8_4_2":J
    invoke-static {v8, v9}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Squ_64(J)J

    move-result-wide v10

    .line 295
    .local v10, "p64_":J
    invoke-static {v10, v11}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Squ_64(J)J

    move-result-wide v10

    .line 296
    invoke-static {v10, v11}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Squ_64(J)J

    move-result-wide v10

    .line 297
    invoke-static {v10, v11, v8, v9}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Mul_64(JJ)J

    move-result-wide v12

    .line 298
    .local v12, "p64_2":J
    invoke-static {v12, v13}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Squ_64(J)J

    move-result-wide v14

    .line 299
    .local v14, "p128_":J
    invoke-static {v0, v1, v14, v15}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Mul_64(JJ)J

    move-result-wide v16

    return-wide v16
.end method

.method private static gf256Mul(SS)S
    .locals 9
    .param p0, "a"    # S
    .param p1, "b"    # S
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

    .line 110
    and-int/lit8 v0, p0, 0xf

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 111
    .local v0, "a0":S
    ushr-int/lit8 v1, p0, 0x4

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    .line 112
    .local v1, "a1":S
    and-int/lit8 v2, p1, 0xf

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    .line 113
    .local v2, "b0":S
    ushr-int/lit8 v3, p1, 0x4

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    .line 114
    .local v3, "b1":S
    invoke-static {v0, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf16Mul(SS)S

    move-result v4

    .line 115
    .local v4, "a0b0":S
    invoke-static {v1, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf16Mul(SS)S

    move-result v5

    .line 116
    .local v5, "a1b1":S
    xor-int v6, v0, v1

    int-to-short v6, v6

    xor-int v7, v2, v3

    int-to-short v7, v7

    invoke-static {v6, v7}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf16Mul(SS)S

    move-result v6

    xor-int/2addr v6, v4

    int-to-short v6, v6

    .line 117
    .local v6, "a0b1_a1b0":S
    invoke-static {v5}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf16Mul8(S)S

    move-result v7

    .line 118
    .local v7, "a1b1_x2":S
    shl-int/lit8 v8, v6, 0x4

    xor-int/2addr v8, v4

    xor-int/2addr v8, v7

    and-int/lit16 v8, v8, 0xff

    int-to-short v8, v8

    return v8
.end method

.method private static gf256Mul_64(JJ)J
    .locals 15
    .param p0, "p"    # J
    .param p2, "q"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "q"
        }
    .end annotation

    .line 266
    invoke-static/range {p0 .. p3}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf16Mul_64(JJ)J

    move-result-wide v0

    .line 268
    .local v0, "t":J
    const-wide v2, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long/2addr v2, v0

    .line 269
    .local v2, "a0b0":J
    const-wide v4, -0xf0f0f0f0f0f0f10L    # -1.0773087426743214E236

    and-long v6, v0, v4

    .line 271
    .local v6, "a1b1":J
    const/4 v8, 0x4

    shl-long v9, p0, v8

    xor-long/2addr v9, p0

    and-long/2addr v9, v4

    ushr-long v11, v6, v8

    xor-long/2addr v9, v11

    .line 272
    .local v9, "pk":J
    shl-long v11, p2, v8

    xor-long v11, v11, p2

    and-long/2addr v4, v11

    const-wide v11, 0x808080808080808L

    xor-long/2addr v4, v11

    .line 274
    .local v4, "qk":J
    invoke-static {v9, v10, v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf16Mul_64(JJ)J

    move-result-wide v11

    .line 275
    .local v11, "v":J
    shl-long v13, v2, v8

    xor-long/2addr v13, v11

    xor-long/2addr v13, v2

    return-wide v13
.end method

.method private static gf256Squ(S)S
    .locals 5
    .param p0, "a"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 123
    and-int/lit8 v0, p0, 0xf

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 124
    .local v0, "a0":S
    ushr-int/lit8 v1, p0, 0x4

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    .line 125
    .local v1, "a1":S
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf16Squ(S)S

    move-result v1

    .line 126
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf16Mul8(S)S

    move-result v2

    .line 127
    .local v2, "a1squ_x8":S
    shl-int/lit8 v3, v1, 0x4

    xor-int/2addr v3, v2

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf16Squ(S)S

    move-result v4

    xor-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    return v3
.end method

.method private static gf256Squ_64(J)J
    .locals 8
    .param p0, "p"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 280
    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf16Squ_64(J)J

    move-result-wide v0

    .line 281
    .local v0, "t":J
    const-wide v2, -0xf0f0f0f0f0f0f10L    # -1.0773087426743214E236

    and-long/2addr v2, v0

    .line 282
    .local v2, "a1Sq":J
    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf16Mul8_64(J)J

    move-result-wide v4

    .line 284
    .local v4, "a1squ_x8":J
    const/4 v6, 0x4

    ushr-long v6, v4, v6

    xor-long/2addr v6, v0

    return-wide v6
.end method

.method private static gf4Mul(SS)S
    .locals 3
    .param p0, "a"    # S
    .param p1, "b"    # S
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

    .line 66
    and-int/lit8 v0, p1, 0x1

    mul-int v0, v0, p0

    .line 67
    .local v0, "r":I
    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf4Mul2(S)S

    move-result v1

    ushr-int/lit8 v2, p1, 0x1

    mul-int v1, v1, v2

    xor-int/2addr v0, v1

    .line 68
    and-int/lit16 v1, v0, 0xff

    int-to-short v1, v1

    return v1
.end method

.method private static gf4Mul2(S)S
    .locals 2
    .param p0, "a"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 52
    shl-int/lit8 v0, p0, 0x1

    .line 53
    .local v0, "r":I
    ushr-int/lit8 v1, p0, 0x1

    mul-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    .line 54
    and-int/lit16 v1, v0, 0xff

    int-to-short v1, v1

    return v1
.end method

.method private static gf4Mul2_64(J)J
    .locals 9
    .param p0, "p"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 207
    const-wide v0, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr v0, p0

    .line 208
    .local v0, "p0":J
    const-wide v2, -0x5555555555555556L

    and-long/2addr v2, p0

    .line 209
    .local v2, "p1":J
    const/4 v4, 0x1

    shl-long v5, v0, v4

    xor-long/2addr v5, v2

    ushr-long v7, v2, v4

    xor-long/2addr v5, v7

    return-wide v5
.end method

.method private static gf4Mul3(S)S
    .locals 4
    .param p0, "a"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 59
    add-int/lit8 v0, p0, -0x2

    ushr-int/lit8 v0, v0, 0x1

    .line 60
    .local v0, "msk":I
    mul-int/lit8 v1, p0, 0x3

    and-int/2addr v1, v0

    not-int v2, v0

    add-int/lit8 v3, p0, -0x1

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 61
    .local v1, "r":I
    and-int/lit16 v2, v1, 0xff

    int-to-short v2, v2

    return v2
.end method

.method private static gf4Mul_64(JJ)J
    .locals 9
    .param p0, "p"    # J
    .param p2, "q"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "q"
        }
    .end annotation

    .line 221
    const/4 v0, 0x1

    shl-long v1, p0, v0

    and-long/2addr v1, p2

    shl-long v3, p2, v0

    and-long/2addr v3, p0

    xor-long/2addr v1, v3

    const-wide v3, -0x5555555555555556L

    and-long/2addr v1, v3

    .line 222
    .local v1, "r1":J
    and-long v5, p0, p2

    .line 224
    .local v5, "r02":J
    xor-long v7, v5, v1

    and-long/2addr v3, v5

    ushr-long/2addr v3, v0

    xor-long/2addr v3, v7

    return-wide v3
.end method

.method private static gf4Squ(S)S
    .locals 2
    .param p0, "a"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 73
    ushr-int/lit8 v0, p0, 0x1

    xor-int/2addr v0, p0

    .line 74
    .local v0, "r":I
    and-int/lit16 v1, v0, 0xff

    int-to-short v1, v1

    return v1
.end method

.method private static gf4Squ_64(J)J
    .locals 4
    .param p0, "p"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 229
    const-wide v0, -0x5555555555555556L

    and-long/2addr v0, p0

    .line 230
    .local v0, "p1":J
    const/4 v2, 0x1

    ushr-long v2, v0, v2

    xor-long/2addr v2, p0

    return-wide v2
.end method

.method public static invElem(S)S
    .locals 1
    .param p0, "a"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 174
    sget-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gfInvTable:[B

    aget-byte v0, v0, p0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public static invElem_64(J)J
    .locals 2
    .param p0, "a"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 179
    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Inv_64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static multElem(SS)S
    .locals 1
    .param p0, "a"    # S
    .param p1, "b"    # S
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
    sget-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gfMulTable:[[B

    aget-object v0, v0, p0

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public static multElem_64(JJ)J
    .locals 2
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

    .line 198
    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Mul_64(JJ)J

    move-result-wide v0

    return-wide v0
.end method
