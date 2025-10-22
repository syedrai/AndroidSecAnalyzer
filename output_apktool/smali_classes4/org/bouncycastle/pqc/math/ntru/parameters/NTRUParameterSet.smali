.class public abstract Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;
.super Ljava/lang/Object;
.source "NTRUParameterSet.java"


# instance fields
.field private final logQ:I

.field private final n:I

.field private final prfKeyBytes:I

.field private final seedBytes:I

.field private final sharedKeyBytes:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "logQ"    # I
    .param p3, "seedBytes"    # I
    .param p4, "prfKeyBytes"    # I
    .param p5, "sharedKeyBytes"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "n",
            "logQ",
            "seedBytes",
            "prfKeyBytes",
            "sharedKeyBytes"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n:I

    .line 24
    iput p2, p0, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->logQ:I

    .line 25
    iput p3, p0, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->seedBytes:I

    .line 26
    iput p4, p0, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->prfKeyBytes:I

    .line 27
    iput p5, p0, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->sharedKeyBytes:I

    .line 28
    return-void
.end method


# virtual methods
.method public abstract createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;
.end method

.method public logQ()I
    .locals 1

    .line 54
    iget v0, p0, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->logQ:I

    return v0
.end method

.method public n()I
    .locals 1

    .line 44
    iget v0, p0, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n:I

    return v0
.end method

.method public ntruCiphertextBytes()I
    .locals 1

    .line 201
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->owcpaBytes()I

    move-result v0

    return v0
.end method

.method public ntruPublicKeyBytes()I
    .locals 1

    .line 181
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->owcpaPublicKeyBytes()I

    move-result v0

    return v0
.end method

.method public ntruSecretKeyBytes()I
    .locals 2

    .line 191
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->owcpaSecretKeyBytes()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->prfKeyBytes:I

    add-int/2addr v0, v1

    return v0
.end method

.method public owcpaBytes()I
    .locals 2

    .line 171
    iget v0, p0, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->logQ:I

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v1

    mul-int v0, v0, v1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public owcpaMsgBytes()I
    .locals 1

    .line 141
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packTrinaryBytes()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public owcpaPublicKeyBytes()I
    .locals 2

    .line 151
    iget v0, p0, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->logQ:I

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v1

    mul-int v0, v0, v1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public owcpaSecretKeyBytes()I
    .locals 2

    .line 161
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packTrinaryBytes()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->owcpaPublicKeyBytes()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public packDegree()I
    .locals 1

    .line 123
    iget v0, p0, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public packTrinaryBytes()I
    .locals 1

    .line 131
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public prfKeyBytes()I
    .locals 1

    .line 84
    iget v0, p0, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->prfKeyBytes:I

    return v0
.end method

.method public q()I
    .locals 2

    .line 64
    const/4 v0, 0x1

    iget v1, p0, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->logQ:I

    shl-int/2addr v0, v1

    return v0
.end method

.method public abstract sampleFgBytes()I
.end method

.method public sampleFixedTypeBytes()I
    .locals 1

    .line 108
    iget v0, p0, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x1e

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public sampleIidBytes()I
    .locals 1

    .line 100
    iget v0, p0, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public abstract sampleRmBytes()I
.end method

.method public seedBytes()I
    .locals 1

    .line 74
    iget v0, p0, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->seedBytes:I

    return v0
.end method

.method public sharedKeyBytes()I
    .locals 1

    .line 92
    iget v0, p0, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->sharedKeyBytes:I

    return v0
.end method
