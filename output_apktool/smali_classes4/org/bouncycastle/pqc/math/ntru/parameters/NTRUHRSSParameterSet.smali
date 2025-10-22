.class public abstract Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHRSSParameterSet;
.super Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;
.source "NTRUHRSSParameterSet.java"


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

    .line 20
    invoke-direct/range {p0 .. p5}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;-><init>(IIIII)V

    .line 21
    return-void
.end method


# virtual methods
.method public createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .locals 2

    .line 26
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHRSSParameterSet;->n()I

    move-result v0

    const/16 v1, 0x55d

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;-><init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHRSSParameterSet;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;-><init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHRSSParameterSet;)V

    :goto_0
    return-object v0
.end method

.method public sampleFgBytes()I
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHRSSParameterSet;->sampleIidBytes()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public sampleRmBytes()I
    .locals 1

    .line 38
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHRSSParameterSet;->sampleIidBytes()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method
