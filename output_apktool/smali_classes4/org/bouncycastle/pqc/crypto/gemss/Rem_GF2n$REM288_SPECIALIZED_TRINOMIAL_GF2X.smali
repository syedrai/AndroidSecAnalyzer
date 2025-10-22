.class public Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;
.super Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;
.source "Rem_GF2n.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "REM288_SPECIALIZED_TRINOMIAL_GF2X"
.end annotation


# instance fields
.field private final k3:I

.field private final k364:I

.field private final k364ki:I

.field private final k3_ki:I


# direct methods
.method public constructor <init>(IIIIJ)V
    .locals 1
    .param p1, "k3"    # I
    .param p2, "ki"    # I
    .param p3, "ki64"    # I
    .param p4, "k364"    # I
    .param p5, "mask"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "k3",
            "ki",
            "ki64",
            "k364",
            "mask"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;-><init>()V

    .line 66
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    .line 67
    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    .line 68
    iput p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    .line 69
    iput p4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    .line 70
    iput-wide p5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->mask:J

    .line 71
    add-int v0, p4, p2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->k364ki:I

    .line 72
    sub-int v0, p1, p2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->k3_ki:I

    .line 73
    return-void
.end method


# virtual methods
.method public rem_gf2n([JI[J)V
    .locals 14
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

    .line 77
    const/4 v0, 0x5

    aget-wide v1, p3, v0

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v1, v3

    const/4 v3, 0x6

    aget-wide v4, p3, v3

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v4, v6

    xor-long/2addr v1, v4

    .line 78
    .local v1, "Q1":J
    aget-wide v3, p3, v3

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v3, v5

    const/4 v5, 0x7

    aget-wide v6, p3, v5

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v6, v8

    xor-long/2addr v3, v6

    .line 79
    .local v3, "Q2":J
    add-int/lit8 v6, p2, 0x2

    const/4 v7, 0x2

    aget-wide v7, p3, v7

    xor-long/2addr v7, v3

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long v9, v1, v9

    xor-long/2addr v7, v9

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v9, v3, v9

    xor-long/2addr v7, v9

    aput-wide v7, p1, v6

    .line 80
    aget-wide v5, p3, v5

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v5, v7

    const/16 v7, 0x8

    aget-wide v8, p3, v7

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v8, v10

    xor-long/2addr v5, v8

    .line 81
    .local v5, "Q3":J
    add-int/lit8 v8, p2, 0x3

    const/4 v9, 0x3

    aget-wide v9, p3, v9

    xor-long/2addr v9, v5

    iget v11, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long v11, v3, v11

    xor-long/2addr v9, v11

    iget v11, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v11, v5, v11

    xor-long/2addr v9, v11

    aput-wide v9, p1, v8

    .line 82
    aget-wide v7, p3, v7

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v7, v9

    .line 83
    .local v7, "Q4":J
    const/4 v9, 0x4

    aget-wide v10, p3, v9

    iget v12, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v10, v12

    aget-wide v12, p3, v0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v12, v0

    xor-long/2addr v10, v12

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->k364ki:I

    ushr-long v12, v5, v0

    xor-long/2addr v10, v12

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->k3_ki:I

    shl-long v12, v7, v0

    xor-long v3, v10, v12

    .line 84
    add-int/lit8 v0, p2, 0x4

    aget-wide v9, p3, v9

    xor-long/2addr v9, v7

    iget v11, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long v11, v5, v11

    xor-long/2addr v9, v11

    iget v11, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v11, v7, v11

    xor-long/2addr v9, v11

    iget-wide v11, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->mask:J

    and-long/2addr v9, v11

    aput-wide v9, p1, v0

    .line 85
    const/4 v0, 0x0

    aget-wide v9, p3, v0

    xor-long/2addr v9, v3

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v11, v3, v0

    xor-long/2addr v9, v11

    aput-wide v9, p1, p2

    .line 86
    add-int/lit8 v0, p2, 0x1

    const/4 v9, 0x1

    aget-wide v9, p3, v9

    xor-long/2addr v9, v1

    iget v11, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v11, v1, v11

    xor-long/2addr v9, v11

    iget v11, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long v11, v3, v11

    xor-long/2addr v9, v11

    aput-wide v9, p1, v0

    .line 87
    return-void
.end method

.method public rem_gf2n_xor([JI[J)V
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

    .line 91
    move-object/from16 v0, p0

    const/4 v1, 0x5

    aget-wide v2, p3, v1

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v2, v4

    const/4 v4, 0x6

    aget-wide v5, p3, v4

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v5, v7

    xor-long/2addr v2, v5

    .line 92
    .local v2, "Q1":J
    aget-wide v4, p3, v4

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v4, v6

    const/4 v6, 0x7

    aget-wide v7, p3, v6

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v7, v9

    xor-long/2addr v4, v7

    .line 93
    .local v4, "Q2":J
    add-int/lit8 v7, p2, 0x2

    aget-wide v8, p1, v7

    const/4 v10, 0x2

    aget-wide v10, p3, v10

    xor-long/2addr v10, v4

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long v12, v2, v12

    xor-long/2addr v10, v12

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v12, v4, v12

    xor-long/2addr v10, v12

    xor-long/2addr v8, v10

    aput-wide v8, p1, v7

    .line 94
    aget-wide v6, p3, v6

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v6, v8

    const/16 v8, 0x8

    aget-wide v9, p3, v8

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v9, v11

    xor-long/2addr v6, v9

    .line 95
    .local v6, "Q3":J
    add-int/lit8 v9, p2, 0x3

    aget-wide v10, p1, v9

    const/4 v12, 0x3

    aget-wide v12, p3, v12

    xor-long/2addr v12, v6

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long v14, v4, v14

    xor-long/2addr v12, v14

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v14, v6, v14

    xor-long/2addr v12, v14

    xor-long/2addr v10, v12

    aput-wide v10, p1, v9

    .line 96
    aget-wide v8, p3, v8

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long v4, v8, v10

    .line 97
    add-int/lit8 v8, p2, 0x4

    aget-wide v9, p1, v8

    const/4 v11, 0x4

    aget-wide v12, p3, v11

    xor-long/2addr v12, v4

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long v14, v6, v14

    xor-long/2addr v12, v14

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v14, v4, v14

    xor-long/2addr v12, v14

    iget-wide v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->mask:J

    and-long/2addr v12, v14

    xor-long/2addr v9, v12

    aput-wide v9, p1, v8

    .line 98
    aget-wide v8, p3, v11

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v8, v10

    aget-wide v10, p3, v1

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v10, v1

    xor-long/2addr v8, v10

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->k364ki:I

    ushr-long v10, v6, v1

    xor-long/2addr v8, v10

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->k3_ki:I

    shl-long v10, v4, v1

    xor-long v6, v8, v10

    .line 99
    aget-wide v8, p1, p2

    const/4 v1, 0x0

    aget-wide v10, p3, v1

    xor-long/2addr v10, v6

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v12, v6, v1

    xor-long/2addr v10, v12

    xor-long/2addr v8, v10

    aput-wide v8, p1, p2

    .line 100
    add-int/lit8 v1, p2, 0x1

    aget-wide v8, p1, v1

    const/4 v10, 0x1

    aget-wide v10, p3, v10

    xor-long/2addr v10, v2

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v12, v2, v12

    xor-long/2addr v10, v12

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long v12, v6, v12

    xor-long/2addr v10, v12

    xor-long/2addr v8, v10

    aput-wide v8, p1, v1

    .line 101
    return-void
.end method
