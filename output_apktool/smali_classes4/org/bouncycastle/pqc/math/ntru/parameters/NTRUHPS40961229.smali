.class public Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPS40961229;
.super Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;
.source "NTRUHPS40961229.java"


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 16
    const/16 v4, 0x20

    const/16 v5, 0x20

    const/16 v1, 0x4cd

    const/16 v2, 0xc

    const/16 v3, 0x20

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;-><init>(IIIII)V

    .line 23
    return-void
.end method


# virtual methods
.method public createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .locals 1

    .line 28
    new-instance v0, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;-><init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;)V

    return-object v0
.end method
