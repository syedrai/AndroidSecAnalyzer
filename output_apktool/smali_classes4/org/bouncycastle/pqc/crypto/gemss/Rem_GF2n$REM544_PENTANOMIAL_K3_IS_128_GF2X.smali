.class public Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;
.super Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;
.source "Rem_GF2n.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "REM544_PENTANOMIAL_K3_IS_128_GF2X"
.end annotation


# instance fields
.field private final k1:I

.field private final k164:I

.field private final k2:I

.field private final k264:I


# direct methods
.method public constructor <init>(IIIIIIJ)V
    .locals 0
    .param p1, "k1"    # I
    .param p2, "k2"    # I
    .param p3, "ki"    # I
    .param p4, "ki64"    # I
    .param p5, "k164"    # I
    .param p6, "k264"    # I
    .param p7, "mask"    # J
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
            "k1",
            "k2",
            "ki",
            "ki64",
            "k164",
            "k264",
            "mask"
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;-><init>()V

    .line 115
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    .line 116
    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    .line 117
    iput p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    .line 118
    iput p4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    .line 119
    iput p5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    .line 120
    iput p6, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    .line 121
    iput-wide p7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->mask:J

    .line 122
    return-void
.end method


# virtual methods
.method public rem_gf2n([JI[J)V
    .locals 20
    .param p1, "P"    # [J
    .param p2, "p_cp"    # I
    .param p3, "Pol"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "P",
            "p_cp",
            "Pol"
        }
    .end annotation

    .line 126
    move-object/from16 v0, p0

    const/16 v1, 0xa

    aget-wide v2, p3, v1

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v2, v4

    const/16 v4, 0xb

    aget-wide v5, p3, v4

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v5, v7

    xor-long/2addr v2, v5

    .line 127
    .local v2, "Q2":J
    aget-wide v4, p3, v4

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v4, v6

    const/16 v6, 0xc

    aget-wide v7, p3, v6

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v7, v9

    xor-long/2addr v4, v7

    .line 128
    .local v4, "Q3":J
    aget-wide v6, p3, v6

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v6, v8

    const/16 v8, 0xd

    aget-wide v9, p3, v8

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v9, v11

    xor-long/2addr v6, v9

    .line 129
    .local v6, "Q1":J
    add-int/lit8 v9, p2, 0x4

    const/4 v10, 0x4

    aget-wide v10, p3, v10

    xor-long/2addr v10, v6

    xor-long/2addr v10, v2

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v12, v4, v12

    xor-long/2addr v10, v12

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v12, v6, v12

    xor-long/2addr v10, v12

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long v12, v4, v12

    xor-long/2addr v10, v12

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v12, v6, v12

    xor-long/2addr v10, v12

    aput-wide v10, p1, v9

    .line 130
    aget-wide v8, p3, v8

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v8, v10

    const/16 v10, 0xe

    aget-wide v11, p3, v10

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v11, v13

    xor-long/2addr v8, v11

    .line 131
    .local v8, "Q5":J
    add-int/lit8 v11, p2, 0x5

    const/4 v12, 0x5

    aget-wide v12, p3, v12

    xor-long/2addr v12, v8

    xor-long/2addr v12, v4

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v14, v6, v14

    xor-long/2addr v12, v14

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v14, v8, v14

    xor-long/2addr v12, v14

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long v14, v6, v14

    xor-long/2addr v12, v14

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v14, v8, v14

    xor-long/2addr v12, v14

    aput-wide v12, p1, v11

    .line 132
    aget-wide v10, p3, v10

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v10, v12

    const/16 v12, 0xf

    aget-wide v13, p3, v12

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v13, v15

    xor-long/2addr v10, v13

    .line 133
    .local v10, "Q0":J
    add-int/lit8 v13, p2, 0x6

    const/4 v14, 0x6

    aget-wide v14, p3, v14

    xor-long/2addr v14, v10

    xor-long/2addr v14, v6

    const/16 v16, 0xa

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v17, v8, v1

    xor-long v14, v14, v17

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v17, v10, v1

    xor-long v14, v14, v17

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long v17, v8, v1

    xor-long v14, v14, v17

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v17, v10, v1

    xor-long v14, v14, v17

    aput-wide v14, p1, v13

    .line 134
    aget-wide v12, p3, v12

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v12, v1

    const/16 v1, 0x10

    aget-wide v14, p3, v1

    const/16 v17, 0x10

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v14, v1

    xor-long v6, v12, v14

    .line 135
    add-int/lit8 v1, p2, 0x7

    const/4 v12, 0x7

    aget-wide v12, p3, v12

    xor-long/2addr v12, v6

    xor-long/2addr v12, v8

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v14, v10, v14

    xor-long/2addr v12, v14

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v14, v6, v14

    xor-long/2addr v12, v14

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long v14, v10, v14

    xor-long/2addr v12, v14

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v14, v6, v14

    xor-long/2addr v12, v14

    aput-wide v12, p1, v1

    .line 136
    aget-wide v12, p3, v17

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long v8, v12, v1

    .line 137
    add-int/lit8 v1, p2, 0x8

    const/16 v12, 0x8

    aget-wide v13, p3, v12

    xor-long/2addr v13, v8

    xor-long/2addr v13, v10

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v18, v6, v15

    xor-long v13, v13, v18

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v18, v8, v15

    xor-long v13, v13, v18

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long v18, v6, v15

    xor-long v13, v13, v18

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v18, v8, v15

    xor-long v13, v13, v18

    move-wide/from16 v18, v13

    const/16 v15, 0x8

    iget-wide v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->mask:J

    and-long v12, v18, v12

    aput-wide v12, p1, v1

    .line 138
    aget-wide v12, p3, v15

    xor-long/2addr v12, v10

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v12, v1

    const/16 v1, 0x9

    aget-wide v14, p3, v1

    xor-long/2addr v14, v6

    const/16 v18, 0x9

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v14, v1

    xor-long/2addr v12, v14

    aget-wide v14, p3, v17

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long/2addr v14, v1

    xor-long v10, v12, v14

    .line 139
    aget-wide v12, p3, v18

    xor-long/2addr v12, v6

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v12, v1

    aget-wide v14, p3, v16

    xor-long/2addr v14, v8

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v14, v1

    xor-long v6, v12, v14

    .line 140
    const/4 v1, 0x0

    aget-wide v12, p3, v1

    xor-long/2addr v12, v10

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v14, v10, v1

    xor-long/2addr v12, v14

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v14, v10, v1

    xor-long/2addr v12, v14

    aput-wide v12, p1, p2

    .line 141
    add-int/lit8 v1, p2, 0x1

    const/4 v12, 0x1

    aget-wide v12, p3, v12

    xor-long/2addr v12, v6

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v14, v10, v14

    xor-long/2addr v12, v14

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v14, v6, v14

    xor-long/2addr v12, v14

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long v14, v10, v14

    xor-long/2addr v12, v14

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v14, v6, v14

    xor-long/2addr v12, v14

    aput-wide v12, p1, v1

    .line 142
    add-int/lit8 v1, p2, 0x2

    const/4 v12, 0x2

    aget-wide v12, p3, v12

    xor-long/2addr v12, v2

    xor-long/2addr v12, v10

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v14, v6, v14

    xor-long/2addr v12, v14

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v14, v2, v14

    xor-long/2addr v12, v14

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long v14, v6, v14

    xor-long/2addr v12, v14

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v14, v2, v14

    xor-long/2addr v12, v14

    aput-wide v12, p1, v1

    .line 143
    add-int/lit8 v1, p2, 0x3

    const/4 v12, 0x3

    aget-wide v12, p3, v12

    xor-long/2addr v12, v4

    xor-long/2addr v12, v6

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v14, v2, v14

    xor-long/2addr v12, v14

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v14, v4, v14

    xor-long/2addr v12, v14

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long v14, v2, v14

    xor-long/2addr v12, v14

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v14, v4, v14

    xor-long/2addr v12, v14

    aput-wide v12, p1, v1

    .line 144
    return-void
.end method

.method public rem_gf2n_xor([JI[J)V
    .locals 22
    .param p1, "P"    # [J
    .param p2, "p_cp"    # I
    .param p3, "Pol"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "P",
            "p_cp",
            "Pol"
        }
    .end annotation

    .line 148
    move-object/from16 v0, p0

    const/16 v1, 0xa

    aget-wide v2, p3, v1

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v2, v4

    const/16 v4, 0xb

    aget-wide v5, p3, v4

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v5, v7

    xor-long/2addr v2, v5

    .line 149
    .local v2, "Q2":J
    aget-wide v4, p3, v4

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v4, v6

    const/16 v6, 0xc

    aget-wide v7, p3, v6

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v7, v9

    xor-long/2addr v4, v7

    .line 150
    .local v4, "Q3":J
    aget-wide v6, p3, v6

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v6, v8

    const/16 v8, 0xd

    aget-wide v9, p3, v8

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v9, v11

    xor-long/2addr v6, v9

    .line 151
    .local v6, "Q1":J
    add-int/lit8 v9, p2, 0x4

    aget-wide v10, p1, v9

    const/4 v12, 0x4

    aget-wide v12, p3, v12

    xor-long/2addr v12, v6

    xor-long/2addr v12, v2

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v14, v4, v14

    xor-long/2addr v12, v14

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v14, v6, v14

    xor-long/2addr v12, v14

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long v14, v4, v14

    xor-long/2addr v12, v14

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v14, v6, v14

    xor-long/2addr v12, v14

    xor-long/2addr v10, v12

    aput-wide v10, p1, v9

    .line 152
    aget-wide v8, p3, v8

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v8, v10

    const/16 v10, 0xe

    aget-wide v11, p3, v10

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v11, v13

    xor-long/2addr v8, v11

    .line 153
    .local v8, "Q5":J
    add-int/lit8 v11, p2, 0x5

    aget-wide v12, p1, v11

    const/4 v14, 0x5

    aget-wide v14, p3, v14

    xor-long/2addr v14, v8

    xor-long/2addr v14, v4

    const/16 v16, 0xa

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v17, v6, v1

    xor-long v14, v14, v17

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v17, v8, v1

    xor-long v14, v14, v17

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long v17, v6, v1

    xor-long v14, v14, v17

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v17, v8, v1

    xor-long v14, v14, v17

    xor-long/2addr v12, v14

    aput-wide v12, p1, v11

    .line 154
    aget-wide v10, p3, v10

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v10, v1

    const/16 v1, 0xf

    aget-wide v12, p3, v1

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v12, v14

    xor-long/2addr v10, v12

    .line 155
    .local v10, "Q0":J
    add-int/lit8 v12, p2, 0x6

    aget-wide v13, p1, v12

    const/4 v15, 0x6

    aget-wide v17, p3, v15

    xor-long v17, v17, v10

    xor-long v17, v17, v6

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v19, v8, v15

    xor-long v17, v17, v19

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v19, v10, v15

    xor-long v17, v17, v19

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long v19, v8, v15

    xor-long v17, v17, v19

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v19, v10, v15

    xor-long v17, v17, v19

    xor-long v13, v13, v17

    aput-wide v13, p1, v12

    .line 156
    aget-wide v12, p3, v1

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v12, v1

    const/16 v1, 0x10

    aget-wide v14, p3, v1

    const/16 v17, 0x10

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v14, v1

    xor-long v6, v12, v14

    .line 157
    add-int/lit8 v1, p2, 0x7

    aget-wide v12, p1, v1

    const/4 v14, 0x7

    aget-wide v14, p3, v14

    xor-long/2addr v14, v6

    xor-long/2addr v14, v8

    move/from16 v18, v1

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v19, v10, v1

    xor-long v14, v14, v19

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v19, v6, v1

    xor-long v14, v14, v19

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long v19, v10, v1

    xor-long v14, v14, v19

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v19, v6, v1

    xor-long v14, v14, v19

    xor-long/2addr v12, v14

    aput-wide v12, p1, v18

    .line 158
    aget-wide v12, p3, v17

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long v8, v12, v1

    .line 159
    add-int/lit8 v1, p2, 0x8

    aget-wide v12, p1, v1

    const/16 v14, 0x8

    aget-wide v18, p3, v14

    xor-long v18, v18, v8

    xor-long v18, v18, v10

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v20, v6, v15

    xor-long v18, v18, v20

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v20, v8, v15

    xor-long v18, v18, v20

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long v20, v6, v15

    xor-long v18, v18, v20

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v20, v8, v15

    xor-long v18, v18, v20

    const/16 v20, 0x8

    iget-wide v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->mask:J

    and-long v14, v18, v14

    xor-long/2addr v12, v14

    aput-wide v12, p1, v1

    .line 160
    aget-wide v12, p3, v20

    xor-long/2addr v12, v10

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v12, v1

    const/16 v1, 0x9

    aget-wide v14, p3, v1

    xor-long/2addr v14, v6

    const/16 v18, 0x9

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v14, v1

    xor-long/2addr v12, v14

    aget-wide v14, p3, v17

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long/2addr v14, v1

    xor-long v10, v12, v14

    .line 161
    aget-wide v12, p3, v18

    xor-long/2addr v12, v6

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v12, v1

    aget-wide v14, p3, v16

    xor-long/2addr v14, v8

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v14, v1

    xor-long v6, v12, v14

    .line 162
    aget-wide v12, p1, p2

    const/4 v1, 0x0

    aget-wide v14, p3, v1

    xor-long/2addr v14, v10

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v16, v10, v1

    xor-long v14, v14, v16

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v16, v10, v1

    xor-long v14, v14, v16

    xor-long/2addr v12, v14

    aput-wide v12, p1, p2

    .line 163
    add-int/lit8 v1, p2, 0x1

    aget-wide v12, p1, v1

    const/4 v14, 0x1

    aget-wide v14, p3, v14

    xor-long/2addr v14, v6

    move/from16 v16, v1

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v17, v10, v1

    xor-long v14, v14, v17

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v17, v6, v1

    xor-long v14, v14, v17

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long v17, v10, v1

    xor-long v14, v14, v17

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v17, v6, v1

    xor-long v14, v14, v17

    xor-long/2addr v12, v14

    aput-wide v12, p1, v16

    .line 164
    add-int/lit8 v1, p2, 0x2

    aget-wide v12, p1, v1

    const/4 v14, 0x2

    aget-wide v14, p3, v14

    xor-long/2addr v14, v2

    xor-long/2addr v14, v10

    move/from16 v16, v1

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v17, v6, v1

    xor-long v14, v14, v17

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v17, v2, v1

    xor-long v14, v14, v17

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long v17, v6, v1

    xor-long v14, v14, v17

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v17, v2, v1

    xor-long v14, v14, v17

    xor-long/2addr v12, v14

    aput-wide v12, p1, v16

    .line 165
    add-int/lit8 v1, p2, 0x3

    aget-wide v12, p1, v1

    const/4 v14, 0x3

    aget-wide v14, p3, v14

    xor-long/2addr v14, v4

    xor-long/2addr v14, v6

    move/from16 v16, v1

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v17, v2, v1

    xor-long v14, v14, v17

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v17, v4, v1

    xor-long v14, v14, v17

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long v17, v2, v1

    xor-long v14, v14, v17

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v17, v4, v1

    xor-long v14, v14, v17

    xor-long/2addr v12, v14

    aput-wide v12, p1, v16

    .line 166
    return-void
.end method
