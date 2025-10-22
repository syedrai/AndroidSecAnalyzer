.class public Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;
.super Lorg/bouncycastle/crypto/params/ECDomainParameters;
.source "ECNamedDomainParameters.java"


# instance fields
.field private name:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParameters;)V
    .locals 0
    .param p1, "name"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "x9"    # Lorg/bouncycastle/asn1/x9/X9ECParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "x9"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lorg/bouncycastle/asn1/x9/X9ECParameters;)V

    .line 42
    iput-object p1, p0, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;->name:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/crypto/params/ECDomainParameters;)V
    .locals 6
    .param p1, "name"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "domainParameters"    # Lorg/bouncycastle/crypto/params/ECDomainParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "domainParameters"
        }
    .end annotation

    .line 35
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 36
    iput-object p1, v0, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;->name:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V
    .locals 7
    .param p1, "name"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "curve"    # Lorg/bouncycastle/math/ec/ECCurve;
    .param p3, "G"    # Lorg/bouncycastle/math/ec/ECPoint;
    .param p4, "n"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "curve",
            "G",
            "n"
        }
    .end annotation

    .line 18
    sget-object v5, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "name":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local p2    # "curve":Lorg/bouncycastle/math/ec/ECCurve;
    .end local p3    # "G":Lorg/bouncycastle/math/ec/ECPoint;
    .end local p4    # "n":Ljava/math/BigInteger;
    .local v1, "name":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v2, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    .local v3, "G":Lorg/bouncycastle/math/ec/ECPoint;
    .local v4, "n":Ljava/math/BigInteger;
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 19
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 7
    .param p1, "name"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "curve"    # Lorg/bouncycastle/math/ec/ECCurve;
    .param p3, "G"    # Lorg/bouncycastle/math/ec/ECPoint;
    .param p4, "n"    # Ljava/math/BigInteger;
    .param p5, "h"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "curve",
            "G",
            "n",
            "h"
        }
    .end annotation

    .line 23
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "name":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local p2    # "curve":Lorg/bouncycastle/math/ec/ECCurve;
    .end local p3    # "G":Lorg/bouncycastle/math/ec/ECPoint;
    .end local p4    # "n":Ljava/math/BigInteger;
    .end local p5    # "h":Ljava/math/BigInteger;
    .local v1, "name":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v2, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    .local v3, "G":Lorg/bouncycastle/math/ec/ECPoint;
    .local v4, "n":Ljava/math/BigInteger;
    .local v5, "h":Ljava/math/BigInteger;
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 24
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 6
    .param p1, "name"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "curve"    # Lorg/bouncycastle/math/ec/ECCurve;
    .param p3, "G"    # Lorg/bouncycastle/math/ec/ECPoint;
    .param p4, "n"    # Ljava/math/BigInteger;
    .param p5, "h"    # Ljava/math/BigInteger;
    .param p6, "seed"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "curve",
            "G",
            "n",
            "h",
            "seed"
        }
    .end annotation

    .line 28
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .end local p2    # "curve":Lorg/bouncycastle/math/ec/ECCurve;
    .end local p3    # "G":Lorg/bouncycastle/math/ec/ECPoint;
    .end local p4    # "n":Ljava/math/BigInteger;
    .end local p5    # "h":Ljava/math/BigInteger;
    .end local p6    # "seed":[B
    .local v1, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    .local v2, "G":Lorg/bouncycastle/math/ec/ECPoint;
    .local v3, "n":Ljava/math/BigInteger;
    .local v4, "h":Ljava/math/BigInteger;
    .local v5, "seed":[B
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 30
    iput-object p1, v0, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;->name:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 31
    return-void
.end method


# virtual methods
.method public getName()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;->name:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method
