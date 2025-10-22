.class public abstract Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;
.super Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;
.source "NTRUHPSParameterSet.java"


# direct methods
.method constructor <init>(IIIII)V
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

    .line 21
    invoke-direct/range {p0 .. p5}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;-><init>(IIIII)V

    .line 22
    return-void
.end method


# virtual methods
.method public createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .locals 1

    .line 27
    new-instance v0, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;-><init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;)V

    return-object v0
.end method

.method public sampleFgBytes()I
    .locals 2

    .line 33
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->sampleIidBytes()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->sampleFixedTypeBytes()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public sampleRmBytes()I
    .locals 2

    .line 39
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->sampleIidBytes()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->sampleFixedTypeBytes()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public weight()I
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->q()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, -0x2

    return v0
.end method
