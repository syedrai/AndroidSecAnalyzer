.class public Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider;
.super Ljava/lang/Object;
.source "BcDigestCalculatorProvider.java"

# interfaces
.implements Lorg/bouncycastle/operator/DigestCalculatorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;
    }
.end annotation


# instance fields
.field private digestProvider:Lorg/bouncycastle/operator/bc/BcDigestProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider;->INSTANCE:Lorg/bouncycastle/operator/bc/BcDigestProvider;

    iput-object v0, p0, Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider;->digestProvider:Lorg/bouncycastle/operator/bc/BcDigestProvider;

    return-void
.end method


# virtual methods
.method public get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;
    .locals 3
    .param p1, "algorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "algorithm"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider;->digestProvider:Lorg/bouncycastle/operator/bc/BcDigestProvider;

    invoke-interface {v0, p1}, Lorg/bouncycastle/operator/bc/BcDigestProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/crypto/ExtendedDigest;

    move-result-object v0

    .line 22
    .local v0, "dig":Lorg/bouncycastle/crypto/Digest;
    new-instance v1, Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 24
    .local v1, "stream":Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;
    new-instance v2, Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider$1;

    invoke-direct {v2, p0, p1, v1}, Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider$1;-><init>(Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;)V

    return-object v2
.end method
