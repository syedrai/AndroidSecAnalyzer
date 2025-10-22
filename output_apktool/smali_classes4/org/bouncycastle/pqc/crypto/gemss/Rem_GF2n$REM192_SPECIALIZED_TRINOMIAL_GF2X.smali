.class public Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;
.super Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;
.source "Rem_GF2n.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "REM192_SPECIALIZED_TRINOMIAL_GF2X"
.end annotation


# instance fields
.field private final k3:I

.field private final k364:I

.field private final ki_k3:I


# direct methods
.method constructor <init>(IIIIJ)V
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

    .line 22
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;-><init>()V

    .line 23
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    .line 24
    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    .line 25
    iput p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    .line 26
    iput p4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    .line 27
    iput-wide p5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->mask:J

    .line 28
    sub-int v0, p2, p1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki_k3:I

    .line 29
    return-void
.end method


# virtual methods
.method public rem_gf2n([JI[J)V
    .locals 12
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

    .line 33
    const/4 v0, 0x2

    aget-wide v1, p3, v0

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v1, v3

    const/4 v3, 0x3

    aget-wide v4, p3, v3

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v4, v6

    xor-long/2addr v1, v4

    .line 34
    .local v1, "Q0":J
    aget-wide v3, p3, v3

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v3, v5

    const/4 v5, 0x4

    aget-wide v6, p3, v5

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v6, v8

    xor-long/2addr v3, v6

    .line 35
    .local v3, "Q1":J
    aget-wide v5, p3, v5

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v5, v7

    const/4 v7, 0x5

    aget-wide v7, p3, v7

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v7, v9

    xor-long/2addr v5, v7

    .line 36
    .local v5, "Q2":J
    add-int/lit8 v7, p2, 0x1

    const/4 v8, 0x1

    aget-wide v8, p3, v8

    xor-long/2addr v8, v3

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long v10, v1, v10

    xor-long/2addr v8, v10

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v10, v3, v10

    xor-long/2addr v8, v10

    aput-wide v8, p1, v7

    .line 37
    add-int/lit8 v7, p2, 0x2

    aget-wide v8, p3, v0

    xor-long/2addr v8, v5

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long v10, v3, v0

    xor-long/2addr v8, v10

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v10, v5, v0

    xor-long/2addr v8, v10

    iget-wide v10, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->mask:J

    and-long/2addr v8, v10

    aput-wide v8, p1, v7

    .line 38
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki_k3:I

    ushr-long v7, v5, v0

    xor-long/2addr v1, v7

    .line 39
    const/4 v0, 0x0

    aget-wide v7, p3, v0

    xor-long/2addr v7, v1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v9, v1, v0

    xor-long/2addr v7, v9

    aput-wide v7, p1, p2

    .line 40
    return-void
.end method

.method public rem_gf2n_xor([JI[J)V
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

    .line 44
    const/4 v0, 0x2

    aget-wide v1, p3, v0

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v1, v3

    const/4 v3, 0x3

    aget-wide v4, p3, v3

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v4, v6

    xor-long/2addr v1, v4

    .line 45
    .local v1, "Q0":J
    aget-wide v3, p3, v3

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v3, v5

    const/4 v5, 0x4

    aget-wide v6, p3, v5

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v6, v8

    xor-long/2addr v3, v6

    .line 46
    .local v3, "Q1":J
    aget-wide v5, p3, v5

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v5, v7

    const/4 v7, 0x5

    aget-wide v7, p3, v7

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v7, v9

    xor-long/2addr v5, v7

    .line 47
    .local v5, "Q2":J
    add-int/lit8 v7, p2, 0x1

    aget-wide v8, p1, v7

    const/4 v10, 0x1

    aget-wide v10, p3, v10

    xor-long/2addr v10, v3

    iget v12, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long v12, v1, v12

    xor-long/2addr v10, v12

    iget v12, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v12, v3, v12

    xor-long/2addr v10, v12

    xor-long/2addr v8, v10

    aput-wide v8, p1, v7

    .line 48
    add-int/lit8 v7, p2, 0x2

    aget-wide v8, p1, v7

    aget-wide v10, p3, v0

    xor-long/2addr v10, v5

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long v12, v3, v0

    xor-long/2addr v10, v12

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v12, v5, v0

    xor-long/2addr v10, v12

    iget-wide v12, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->mask:J

    and-long/2addr v10, v12

    xor-long/2addr v8, v10

    aput-wide v8, p1, v7

    .line 49
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki_k3:I

    ushr-long v7, v5, v0

    xor-long/2addr v1, v7

    .line 50
    aget-wide v7, p1, p2

    const/4 v0, 0x0

    aget-wide v9, p3, v0

    xor-long/2addr v9, v1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v11, v1, v0

    xor-long/2addr v9, v11

    xor-long/2addr v7, v9

    aput-wide v7, p1, p2

    .line 51
    return-void
.end method
