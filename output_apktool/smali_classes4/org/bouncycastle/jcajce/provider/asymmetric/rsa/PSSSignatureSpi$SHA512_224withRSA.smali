.class public Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$SHA512_224withRSA;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;
.source "PSSSignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SHA512_224withRSA"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 488
    new-instance v0, Lorg/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    new-instance v1, Ljava/security/spec/PSSParameterSpec;

    new-instance v4, Ljava/security/spec/MGF1ParameterSpec;

    const-string v2, "SHA-512(224)"

    invoke-direct {v4, v2}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x1c

    const/4 v6, 0x1

    const-string v2, "SHA-512(224)"

    const-string v3, "MGF1"

    invoke-direct/range {v1 .. v6}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Ljava/security/spec/PSSParameterSpec;)V

    .line 489
    return-void
.end method
