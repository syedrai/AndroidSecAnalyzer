.class public Lorg/bouncycastle/cert/dane/TruncatingDigestCalculator;
.super Ljava/lang/Object;
.source "TruncatingDigestCalculator.java"

# interfaces
.implements Lorg/bouncycastle/operator/DigestCalculator;


# instance fields
.field private final baseCalculator:Lorg/bouncycastle/operator/DigestCalculator;

.field private final length:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/operator/DigestCalculator;)V
    .locals 1
    .param p1, "baseCalculator"    # Lorg/bouncycastle/operator/DigestCalculator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseCalculator"
        }
    .end annotation

    .line 25
    const/16 v0, 0x1c

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cert/dane/TruncatingDigestCalculator;-><init>(Lorg/bouncycastle/operator/DigestCalculator;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/operator/DigestCalculator;I)V
    .locals 0
    .param p1, "baseCalculator"    # Lorg/bouncycastle/operator/DigestCalculator;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseCalculator",
            "length"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/bouncycastle/cert/dane/TruncatingDigestCalculator;->baseCalculator:Lorg/bouncycastle/operator/DigestCalculator;

    .line 37
    iput p2, p0, Lorg/bouncycastle/cert/dane/TruncatingDigestCalculator;->length:I

    .line 38
    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/bouncycastle/cert/dane/TruncatingDigestCalculator;->baseCalculator:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v0}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getDigest()[B
    .locals 4

    .line 52
    iget v0, p0, Lorg/bouncycastle/cert/dane/TruncatingDigestCalculator;->length:I

    new-array v0, v0, [B

    .line 54
    .local v0, "rv":[B
    iget-object v1, p0, Lorg/bouncycastle/cert/dane/TruncatingDigestCalculator;->baseCalculator:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v1}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v1

    .line 56
    .local v1, "dig":[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/bouncycastle/cert/dane/TruncatingDigestCalculator;->baseCalculator:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v0}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method
