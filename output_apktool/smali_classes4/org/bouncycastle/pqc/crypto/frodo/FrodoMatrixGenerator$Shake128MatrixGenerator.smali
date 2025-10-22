.class Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;
.super Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;
.source "FrodoMatrixGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Shake128MatrixGenerator"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "q"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "q"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;-><init>(II)V

    .line 29
    return-void
.end method


# virtual methods
.method genMatrix([B)[S
    .locals 10
    .param p1, "seedA"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seedA"
        }
    .end annotation

    .line 33
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;->n:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;->n:I

    mul-int v0, v0, v1

    new-array v0, v0, [S

    .line 35
    .local v0, "A":[S
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;->n:I

    mul-int/lit8 v1, v1, 0x10

    div-int/lit8 v1, v1, 0x8

    new-array v1, v1, [B

    .line 36
    .local v1, "tmp":[B
    array-length v2, p1

    const/4 v3, 0x2

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 37
    .local v2, "b":[B
    array-length v4, p1

    const/4 v5, 0x0

    invoke-static {p1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    new-instance v3, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    .line 41
    .local v3, "digest":Lorg/bouncycastle/crypto/Xof;
    const/4 v4, 0x0

    .local v4, "i":S
    :goto_0
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;->n:I

    if-ge v4, v6, :cond_1

    .line 44
    invoke-static {v4, v2, v5}, Lorg/bouncycastle/util/Pack;->shortToLittleEndian(S[BI)V

    .line 47
    array-length v6, v2

    invoke-interface {v3, v2, v5, v6}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 48
    array-length v6, v1

    invoke-interface {v3, v1, v5, v6}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 49
    const/4 v6, 0x0

    .local v6, "j":S
    :goto_1
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;->n:I

    if-ge v6, v7, :cond_0

    .line 51
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;->n:I

    mul-int v7, v7, v4

    add-int/2addr v7, v6

    mul-int/lit8 v8, v6, 0x2

    invoke-static {v1, v8}, Lorg/bouncycastle/util/Pack;->littleEndianToShort([BI)S

    move-result v8

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;->q:I

    add-int/lit8 v9, v9, -0x1

    and-int/2addr v8, v9

    int-to-short v8, v8

    aput-short v8, v0, v7

    .line 49
    add-int/lit8 v7, v6, 0x1

    int-to-short v6, v7

    goto :goto_1

    .line 41
    :cond_0
    add-int/lit8 v7, v4, 0x1

    int-to-short v4, v7

    goto :goto_0

    .line 54
    .end local v6    # "j":S
    :cond_1
    return-object v0
.end method
