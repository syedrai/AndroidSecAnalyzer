.class public Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;
.super Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;
.source "Rem_GF2n.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "REM544_PENTANOMIAL_GF2X"
.end annotation


# instance fields
.field private final k1:I

.field private final k164:I

.field private final k2:I

.field private final k264:I

.field private final k3:I

.field private final k364:I

.field private final ki_k1:I

.field private final ki_k2:I

.field private final ki_k3:I


# direct methods
.method public constructor <init>(IIIIIIIIJ)V
    .locals 1
    .param p1, "k1"    # I
    .param p2, "k2"    # I
    .param p3, "k3"    # I
    .param p4, "ki"    # I
    .param p5, "ki64"    # I
    .param p6, "k164"    # I
    .param p7, "k264"    # I
    .param p8, "k364"    # I
    .param p9, "mask"    # J
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
            "k1",
            "k2",
            "k3",
            "ki",
            "ki64",
            "k164",
            "k264",
            "k364",
            "mask"
        }
    .end annotation

    .line 186
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;-><init>()V

    .line 187
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k1:I

    .line 188
    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k2:I

    .line 189
    iput p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k3:I

    .line 190
    iput p4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki:I

    .line 191
    iput p5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki64:I

    .line 192
    iput p6, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k164:I

    .line 193
    iput p7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k264:I

    .line 194
    iput p8, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k364:I

    .line 195
    iput-wide p9, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->mask:J

    .line 196
    sub-int v0, p4, p3

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki_k3:I

    .line 197
    sub-int v0, p4, p2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki_k2:I

    .line 198
    sub-int v0, p4, p1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki_k1:I

    .line 199
    return-void
.end method


# virtual methods
.method public rem_gf2n([JI[J)V
    .locals 16
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

    .line 203
    move-object/from16 v0, p0

    const/16 v1, 0x10

    aget-wide v2, p3, v1

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki:I

    ushr-long/2addr v2, v4

    .line 204
    .local v2, "Q8":J
    const/16 v4, 0x8

    aget-wide v5, p3, v4

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki:I

    ushr-long/2addr v5, v7

    const/16 v7, 0x9

    aget-wide v8, p3, v7

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki64:I

    shl-long/2addr v8, v10

    xor-long/2addr v5, v8

    .line 205
    .local v5, "Q0":J
    aget-wide v7, p3, v7

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki:I

    ushr-long/2addr v7, v9

    const/16 v9, 0xa

    aget-wide v10, p3, v9

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki64:I

    shl-long/2addr v10, v12

    xor-long/2addr v7, v10

    .line 206
    .local v7, "Q1":J
    add-int/lit8 v10, p2, 0x1

    const/4 v11, 0x1

    aget-wide v11, p3, v11

    xor-long/2addr v11, v7

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k164:I

    ushr-long v13, v5, v13

    xor-long/2addr v11, v13

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k1:I

    shl-long v13, v7, v13

    xor-long/2addr v11, v13

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k264:I

    ushr-long v13, v5, v13

    xor-long/2addr v11, v13

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k2:I

    shl-long v13, v7, v13

    xor-long/2addr v11, v13

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k364:I

    ushr-long v13, v5, v13

    xor-long/2addr v11, v13

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k3:I

    shl-long v13, v7, v13

    xor-long/2addr v11, v13

    aput-wide v11, p1, v10

    .line 208
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki_k3:I

    ushr-long v10, v2, v10

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki_k2:I

    ushr-long v12, v2, v12

    xor-long/2addr v10, v12

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki_k1:I

    ushr-long v12, v2, v12

    xor-long/2addr v10, v12

    xor-long/2addr v5, v10

    .line 209
    const/4 v10, 0x0

    aget-wide v10, p3, v10

    xor-long/2addr v10, v5

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k1:I

    shl-long v12, v5, v12

    xor-long/2addr v10, v12

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k2:I

    shl-long v12, v5, v12

    xor-long/2addr v10, v12

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k3:I

    shl-long v12, v5, v12

    xor-long/2addr v10, v12

    aput-wide v10, p1, p2

    .line 210
    aget-wide v9, p3, v9

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki:I

    ushr-long/2addr v9, v11

    const/16 v11, 0xb

    aget-wide v12, p3, v11

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki64:I

    shl-long/2addr v12, v14

    xor-long v5, v9, v12

    .line 211
    add-int/lit8 v9, p2, 0x2

    const/4 v10, 0x2

    aget-wide v12, p3, v10

    xor-long/2addr v12, v5

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k164:I

    ushr-long v14, v7, v10

    xor-long/2addr v12, v14

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k1:I

    shl-long v14, v5, v10

    xor-long/2addr v12, v14

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k264:I

    ushr-long v14, v7, v10

    xor-long/2addr v12, v14

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k2:I

    shl-long v14, v5, v10

    xor-long/2addr v12, v14

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k364:I

    ushr-long v14, v7, v10

    xor-long/2addr v12, v14

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k3:I

    shl-long v14, v5, v10

    xor-long/2addr v12, v14

    aput-wide v12, p1, v9

    .line 212
    aget-wide v9, p3, v11

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki:I

    ushr-long/2addr v9, v11

    const/16 v11, 0xc

    aget-wide v12, p3, v11

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki64:I

    shl-long/2addr v12, v14

    xor-long v7, v9, v12

    .line 213
    add-int/lit8 v9, p2, 0x3

    const/4 v10, 0x3

    aget-wide v12, p3, v10

    xor-long/2addr v12, v7

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k164:I

    ushr-long v14, v5, v10

    xor-long/2addr v12, v14

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k1:I

    shl-long v14, v7, v10

    xor-long/2addr v12, v14

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k264:I

    ushr-long v14, v5, v10

    xor-long/2addr v12, v14

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k2:I

    shl-long v14, v7, v10

    xor-long/2addr v12, v14

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k364:I

    ushr-long v14, v5, v10

    xor-long/2addr v12, v14

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k3:I

    shl-long v14, v7, v10

    xor-long/2addr v12, v14

    aput-wide v12, p1, v9

    .line 214
    aget-wide v9, p3, v11

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki:I

    ushr-long/2addr v9, v11

    const/16 v11, 0xd

    aget-wide v12, p3, v11

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki64:I

    shl-long/2addr v12, v14

    xor-long v5, v9, v12

    .line 215
    add-int/lit8 v9, p2, 0x4

    const/4 v10, 0x4

    aget-wide v12, p3, v10

    xor-long/2addr v12, v5

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k164:I

    ushr-long v14, v7, v10

    xor-long/2addr v12, v14

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k1:I

    shl-long v14, v5, v10

    xor-long/2addr v12, v14

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k264:I

    ushr-long v14, v7, v10

    xor-long/2addr v12, v14

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k2:I

    shl-long v14, v5, v10

    xor-long/2addr v12, v14

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k364:I

    ushr-long v14, v7, v10

    xor-long/2addr v12, v14

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k3:I

    shl-long v14, v5, v10

    xor-long/2addr v12, v14

    aput-wide v12, p1, v9

    .line 216
    aget-wide v9, p3, v11

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki:I

    ushr-long/2addr v9, v11

    const/16 v11, 0xe

    aget-wide v12, p3, v11

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki64:I

    shl-long/2addr v12, v14

    xor-long v7, v9, v12

    .line 217
    add-int/lit8 v9, p2, 0x5

    const/4 v10, 0x5

    aget-wide v12, p3, v10

    xor-long/2addr v12, v7

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k164:I

    ushr-long v14, v5, v10

    xor-long/2addr v12, v14

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k1:I

    shl-long v14, v7, v10

    xor-long/2addr v12, v14

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k264:I

    ushr-long v14, v5, v10

    xor-long/2addr v12, v14

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k2:I

    shl-long v14, v7, v10

    xor-long/2addr v12, v14

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k364:I

    ushr-long v14, v5, v10

    xor-long/2addr v12, v14

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k3:I

    shl-long v14, v7, v10

    xor-long/2addr v12, v14

    aput-wide v12, p1, v9

    .line 218
    aget-wide v9, p3, v11

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki:I

    ushr-long/2addr v9, v11

    const/16 v11, 0xf

    aget-wide v12, p3, v11

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki64:I

    shl-long/2addr v12, v14

    xor-long v5, v9, v12

    .line 219
    add-int/lit8 v9, p2, 0x6

    const/4 v10, 0x6

    aget-wide v12, p3, v10

    xor-long/2addr v12, v5

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k164:I

    ushr-long v14, v7, v10

    xor-long/2addr v12, v14

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k1:I

    shl-long v14, v5, v10

    xor-long/2addr v12, v14

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k264:I

    ushr-long v14, v7, v10

    xor-long/2addr v12, v14

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k2:I

    shl-long v14, v5, v10

    xor-long/2addr v12, v14

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k364:I

    ushr-long v14, v7, v10

    xor-long/2addr v12, v14

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k3:I

    shl-long v14, v5, v10

    xor-long/2addr v12, v14

    aput-wide v12, p1, v9

    .line 220
    aget-wide v9, p3, v11

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki:I

    ushr-long/2addr v9, v11

    aget-wide v11, p3, v1

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki64:I

    shl-long/2addr v11, v1

    xor-long v7, v9, v11

    .line 221
    add-int/lit8 v1, p2, 0x7

    const/4 v9, 0x7

    aget-wide v9, p3, v9

    xor-long/2addr v9, v7

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k164:I

    ushr-long v11, v5, v11

    xor-long/2addr v9, v11

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k1:I

    shl-long v11, v7, v11

    xor-long/2addr v9, v11

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k264:I

    ushr-long v11, v5, v11

    xor-long/2addr v9, v11

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k2:I

    shl-long v11, v7, v11

    xor-long/2addr v9, v11

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k364:I

    ushr-long v11, v5, v11

    xor-long/2addr v9, v11

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k3:I

    shl-long v11, v7, v11

    xor-long/2addr v9, v11

    aput-wide v9, p1, v1

    .line 222
    add-int/lit8 v1, p2, 0x8

    aget-wide v9, p3, v4

    xor-long/2addr v9, v2

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k164:I

    ushr-long v11, v7, v4

    xor-long/2addr v9, v11

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k1:I

    shl-long v11, v2, v4

    xor-long/2addr v9, v11

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k264:I

    ushr-long v11, v7, v4

    xor-long/2addr v9, v11

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k2:I

    shl-long v11, v2, v4

    xor-long/2addr v9, v11

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k364:I

    ushr-long v11, v7, v4

    xor-long/2addr v9, v11

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k3:I

    shl-long v11, v2, v4

    xor-long/2addr v9, v11

    iget-wide v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->mask:J

    and-long/2addr v9, v11

    aput-wide v9, p1, v1

    .line 223
    return-void
.end method

.method public rem_gf2n_xor([JI[J)V
    .locals 18
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

    .line 227
    move-object/from16 v0, p0

    const/16 v1, 0x10

    aget-wide v2, p3, v1

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki:I

    ushr-long/2addr v2, v4

    .line 228
    .local v2, "Q8":J
    const/16 v4, 0x8

    aget-wide v5, p3, v4

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki:I

    ushr-long/2addr v5, v7

    const/16 v7, 0x9

    aget-wide v8, p3, v7

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki64:I

    shl-long/2addr v8, v10

    xor-long/2addr v5, v8

    .line 229
    .local v5, "Q0":J
    aget-wide v7, p3, v7

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki:I

    ushr-long/2addr v7, v9

    const/16 v9, 0xa

    aget-wide v10, p3, v9

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki64:I

    shl-long/2addr v10, v12

    xor-long/2addr v7, v10

    .line 230
    .local v7, "Q1":J
    add-int/lit8 v10, p2, 0x1

    aget-wide v11, p1, v10

    const/4 v13, 0x1

    aget-wide v13, p3, v13

    xor-long/2addr v13, v7

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k164:I

    ushr-long v15, v5, v15

    xor-long/2addr v13, v15

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k1:I

    shl-long v15, v7, v15

    xor-long/2addr v13, v15

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k264:I

    ushr-long v15, v5, v15

    xor-long/2addr v13, v15

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k2:I

    shl-long v15, v7, v15

    xor-long/2addr v13, v15

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k364:I

    ushr-long v15, v5, v15

    xor-long/2addr v13, v15

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k3:I

    shl-long v15, v7, v15

    xor-long/2addr v13, v15

    xor-long/2addr v11, v13

    aput-wide v11, p1, v10

    .line 232
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki_k3:I

    ushr-long v10, v2, v10

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki_k2:I

    ushr-long v12, v2, v12

    xor-long/2addr v10, v12

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki_k1:I

    ushr-long v12, v2, v12

    xor-long/2addr v10, v12

    xor-long/2addr v5, v10

    .line 233
    aget-wide v10, p1, p2

    const/4 v12, 0x0

    aget-wide v12, p3, v12

    xor-long/2addr v12, v5

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k1:I

    shl-long v14, v5, v14

    xor-long/2addr v12, v14

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k2:I

    shl-long v14, v5, v14

    xor-long/2addr v12, v14

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k3:I

    shl-long v14, v5, v14

    xor-long/2addr v12, v14

    xor-long/2addr v10, v12

    aput-wide v10, p1, p2

    .line 234
    aget-wide v9, p3, v9

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki:I

    ushr-long/2addr v9, v11

    const/16 v11, 0xb

    aget-wide v12, p3, v11

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki64:I

    shl-long/2addr v12, v14

    xor-long v5, v9, v12

    .line 235
    add-int/lit8 v9, p2, 0x2

    aget-wide v12, p1, v9

    const/4 v10, 0x2

    aget-wide v14, p3, v10

    xor-long/2addr v14, v5

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k164:I

    ushr-long v16, v7, v10

    xor-long v14, v14, v16

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k1:I

    shl-long v16, v5, v10

    xor-long v14, v14, v16

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k264:I

    ushr-long v16, v7, v10

    xor-long v14, v14, v16

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k2:I

    shl-long v16, v5, v10

    xor-long v14, v14, v16

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k364:I

    ushr-long v16, v7, v10

    xor-long v14, v14, v16

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k3:I

    shl-long v16, v5, v10

    xor-long v14, v14, v16

    xor-long/2addr v12, v14

    aput-wide v12, p1, v9

    .line 236
    aget-wide v9, p3, v11

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki:I

    ushr-long/2addr v9, v11

    const/16 v11, 0xc

    aget-wide v12, p3, v11

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki64:I

    shl-long/2addr v12, v14

    xor-long v7, v9, v12

    .line 237
    add-int/lit8 v9, p2, 0x3

    aget-wide v12, p1, v9

    const/4 v10, 0x3

    aget-wide v14, p3, v10

    xor-long/2addr v14, v7

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k164:I

    ushr-long v16, v5, v10

    xor-long v14, v14, v16

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k1:I

    shl-long v16, v7, v10

    xor-long v14, v14, v16

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k264:I

    ushr-long v16, v5, v10

    xor-long v14, v14, v16

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k2:I

    shl-long v16, v7, v10

    xor-long v14, v14, v16

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k364:I

    ushr-long v16, v5, v10

    xor-long v14, v14, v16

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k3:I

    shl-long v16, v7, v10

    xor-long v14, v14, v16

    xor-long/2addr v12, v14

    aput-wide v12, p1, v9

    .line 238
    aget-wide v9, p3, v11

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki:I

    ushr-long/2addr v9, v11

    const/16 v11, 0xd

    aget-wide v12, p3, v11

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki64:I

    shl-long/2addr v12, v14

    xor-long v5, v9, v12

    .line 239
    add-int/lit8 v9, p2, 0x4

    aget-wide v12, p1, v9

    const/4 v10, 0x4

    aget-wide v14, p3, v10

    xor-long/2addr v14, v5

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k164:I

    ushr-long v16, v7, v10

    xor-long v14, v14, v16

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k1:I

    shl-long v16, v5, v10

    xor-long v14, v14, v16

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k264:I

    ushr-long v16, v7, v10

    xor-long v14, v14, v16

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k2:I

    shl-long v16, v5, v10

    xor-long v14, v14, v16

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k364:I

    ushr-long v16, v7, v10

    xor-long v14, v14, v16

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k3:I

    shl-long v16, v5, v10

    xor-long v14, v14, v16

    xor-long/2addr v12, v14

    aput-wide v12, p1, v9

    .line 240
    aget-wide v9, p3, v11

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki:I

    ushr-long/2addr v9, v11

    const/16 v11, 0xe

    aget-wide v12, p3, v11

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki64:I

    shl-long/2addr v12, v14

    xor-long v7, v9, v12

    .line 241
    add-int/lit8 v9, p2, 0x5

    aget-wide v12, p1, v9

    const/4 v10, 0x5

    aget-wide v14, p3, v10

    xor-long/2addr v14, v7

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k164:I

    ushr-long v16, v5, v10

    xor-long v14, v14, v16

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k1:I

    shl-long v16, v7, v10

    xor-long v14, v14, v16

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k264:I

    ushr-long v16, v5, v10

    xor-long v14, v14, v16

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k2:I

    shl-long v16, v7, v10

    xor-long v14, v14, v16

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k364:I

    ushr-long v16, v5, v10

    xor-long v14, v14, v16

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k3:I

    shl-long v16, v7, v10

    xor-long v14, v14, v16

    xor-long/2addr v12, v14

    aput-wide v12, p1, v9

    .line 242
    aget-wide v9, p3, v11

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki:I

    ushr-long/2addr v9, v11

    const/16 v11, 0xf

    aget-wide v12, p3, v11

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki64:I

    shl-long/2addr v12, v14

    xor-long v5, v9, v12

    .line 243
    add-int/lit8 v9, p2, 0x6

    aget-wide v12, p1, v9

    const/4 v10, 0x6

    aget-wide v14, p3, v10

    xor-long/2addr v14, v5

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k164:I

    ushr-long v16, v7, v10

    xor-long v14, v14, v16

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k1:I

    shl-long v16, v5, v10

    xor-long v14, v14, v16

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k264:I

    ushr-long v16, v7, v10

    xor-long v14, v14, v16

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k2:I

    shl-long v16, v5, v10

    xor-long v14, v14, v16

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k364:I

    ushr-long v16, v7, v10

    xor-long v14, v14, v16

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k3:I

    shl-long v16, v5, v10

    xor-long v14, v14, v16

    xor-long/2addr v12, v14

    aput-wide v12, p1, v9

    .line 244
    aget-wide v9, p3, v11

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki:I

    ushr-long/2addr v9, v11

    aget-wide v11, p3, v1

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki64:I

    shl-long/2addr v11, v1

    xor-long v7, v9, v11

    .line 245
    add-int/lit8 v1, p2, 0x7

    aget-wide v9, p1, v1

    const/4 v11, 0x7

    aget-wide v11, p3, v11

    xor-long/2addr v11, v7

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k164:I

    ushr-long v13, v5, v13

    xor-long/2addr v11, v13

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k1:I

    shl-long v13, v7, v13

    xor-long/2addr v11, v13

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k264:I

    ushr-long v13, v5, v13

    xor-long/2addr v11, v13

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k2:I

    shl-long v13, v7, v13

    xor-long/2addr v11, v13

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k364:I

    ushr-long v13, v5, v13

    xor-long/2addr v11, v13

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k3:I

    shl-long v13, v7, v13

    xor-long/2addr v11, v13

    xor-long/2addr v9, v11

    aput-wide v9, p1, v1

    .line 246
    add-int/lit8 v1, p2, 0x8

    aget-wide v9, p1, v1

    aget-wide v11, p3, v4

    xor-long/2addr v11, v2

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k164:I

    ushr-long v13, v7, v4

    xor-long/2addr v11, v13

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k1:I

    shl-long v13, v2, v4

    xor-long/2addr v11, v13

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k264:I

    ushr-long v13, v7, v4

    xor-long/2addr v11, v13

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k2:I

    shl-long v13, v2, v4

    xor-long/2addr v11, v13

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k364:I

    ushr-long v13, v7, v4

    xor-long/2addr v11, v13

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k3:I

    shl-long v13, v2, v4

    xor-long/2addr v11, v13

    iget-wide v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->mask:J

    and-long/2addr v11, v13

    xor-long/2addr v9, v11

    aput-wide v9, p1, v1

    .line 247
    return-void
.end method
