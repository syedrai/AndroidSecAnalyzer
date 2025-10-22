.class public Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePublicKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyParameters;
.source "SNTRUPrimePublicKeyParameters.java"


# instance fields
.field private final encH:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;[B)V
    .locals 1
    .param p1, "params"    # Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;
    .param p2, "encH"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "params",
            "encH"
        }
    .end annotation

    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;)V

    .line 13
    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePublicKeyParameters;->encH:[B

    .line 14
    return-void
.end method


# virtual methods
.method getEncH()[B
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePublicKeyParameters;->encH:[B

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePublicKeyParameters;->encH:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
