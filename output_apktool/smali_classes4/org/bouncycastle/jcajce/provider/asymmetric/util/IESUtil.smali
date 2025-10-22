.class public Lorg/bouncycastle/jcajce/provider/asymmetric/util/IESUtil;
.super Ljava/lang/Object;
.source "IESUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static guessParameterSpec(Lorg/bouncycastle/crypto/BufferedBlockCipher;[B)Lorg/bouncycastle/jce/spec/IESParameterSpec;
    .locals 13
    .param p0, "iesBlockCipher"    # Lorg/bouncycastle/crypto/BufferedBlockCipher;
    .param p1, "nonce"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "iesBlockCipher",
            "nonce"
        }
    .end annotation

    .line 11
    if-nez p0, :cond_0

    .line 13
    new-instance v0, Lorg/bouncycastle/jce/spec/IESParameterSpec;

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Lorg/bouncycastle/jce/spec/IESParameterSpec;-><init>([B[BI)V

    return-object v0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    .line 19
    .local v0, "underlyingCipher":Lorg/bouncycastle/crypto/BlockCipher;
    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DES"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 20
    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RC2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 21
    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RC5-32"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 22
    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RC5-64"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v12, p1

    goto :goto_0

    .line 26
    :cond_1
    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SKIPJACK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 28
    new-instance v2, Lorg/bouncycastle/jce/spec/IESParameterSpec;

    const/16 v5, 0x50

    const/16 v6, 0x50

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p1

    .end local p1    # "nonce":[B
    .local v7, "nonce":[B
    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/jce/spec/IESParameterSpec;-><init>([B[BII[B)V

    move-object v12, v7

    .end local v7    # "nonce":[B
    .local v12, "nonce":[B
    return-object v2

    .line 30
    .end local v12    # "nonce":[B
    .restart local p1    # "nonce":[B
    :cond_2
    move-object v12, p1

    .end local p1    # "nonce":[B
    .restart local v12    # "nonce":[B
    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "GOST28147"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 32
    new-instance v7, Lorg/bouncycastle/jce/spec/IESParameterSpec;

    const/16 v10, 0x100

    const/16 v11, 0x100

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v7 .. v12}, Lorg/bouncycastle/jce/spec/IESParameterSpec;-><init>([B[BII[B)V

    return-object v7

    .line 35
    :cond_3
    new-instance v7, Lorg/bouncycastle/jce/spec/IESParameterSpec;

    const/16 v10, 0x80

    const/16 v11, 0x80

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v7 .. v12}, Lorg/bouncycastle/jce/spec/IESParameterSpec;-><init>([B[BII[B)V

    return-object v7

    .line 21
    .end local v12    # "nonce":[B
    .restart local p1    # "nonce":[B
    :cond_4
    move-object v12, p1

    .end local p1    # "nonce":[B
    .restart local v12    # "nonce":[B
    goto :goto_0

    .line 20
    .end local v12    # "nonce":[B
    .restart local p1    # "nonce":[B
    :cond_5
    move-object v12, p1

    .end local p1    # "nonce":[B
    .restart local v12    # "nonce":[B
    goto :goto_0

    .line 19
    .end local v12    # "nonce":[B
    .restart local p1    # "nonce":[B
    :cond_6
    move-object v12, p1

    .line 24
    .end local p1    # "nonce":[B
    .restart local v12    # "nonce":[B
    :goto_0
    new-instance v7, Lorg/bouncycastle/jce/spec/IESParameterSpec;

    const/16 v10, 0x40

    const/16 v11, 0x40

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v7 .. v12}, Lorg/bouncycastle/jce/spec/IESParameterSpec;-><init>([B[BII[B)V

    return-object v7
.end method
