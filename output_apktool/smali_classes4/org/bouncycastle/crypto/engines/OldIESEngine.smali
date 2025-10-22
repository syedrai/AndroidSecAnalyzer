.class public Lorg/bouncycastle/crypto/engines/OldIESEngine;
.super Lorg/bouncycastle/crypto/engines/IESEngine;
.source "OldIESEngine.java"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BasicAgreement;Lorg/bouncycastle/crypto/DerivationFunction;Lorg/bouncycastle/crypto/Mac;)V
    .locals 0
    .param p1, "agree"    # Lorg/bouncycastle/crypto/BasicAgreement;
    .param p2, "kdf"    # Lorg/bouncycastle/crypto/DerivationFunction;
    .param p3, "mac"    # Lorg/bouncycastle/crypto/Mac;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "agree",
            "kdf",
            "mac"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/IESEngine;-><init>(Lorg/bouncycastle/crypto/BasicAgreement;Lorg/bouncycastle/crypto/DerivationFunction;Lorg/bouncycastle/crypto/Mac;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BasicAgreement;Lorg/bouncycastle/crypto/DerivationFunction;Lorg/bouncycastle/crypto/Mac;Lorg/bouncycastle/crypto/BufferedBlockCipher;)V
    .locals 0
    .param p1, "agree"    # Lorg/bouncycastle/crypto/BasicAgreement;
    .param p2, "kdf"    # Lorg/bouncycastle/crypto/DerivationFunction;
    .param p3, "mac"    # Lorg/bouncycastle/crypto/Mac;
    .param p4, "cipher"    # Lorg/bouncycastle/crypto/BufferedBlockCipher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "agree",
            "kdf",
            "mac",
            "cipher"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/IESEngine;-><init>(Lorg/bouncycastle/crypto/BasicAgreement;Lorg/bouncycastle/crypto/DerivationFunction;Lorg/bouncycastle/crypto/Mac;Lorg/bouncycastle/crypto/BufferedBlockCipher;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected getLengthTag([B)[B
    .locals 3
    .param p1, "p2"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p2"
        }
    .end annotation

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 55
    .local v0, "L2":[B
    if-eqz p1, :cond_0

    .line 57
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x8

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 59
    :cond_0
    return-object v0
.end method
