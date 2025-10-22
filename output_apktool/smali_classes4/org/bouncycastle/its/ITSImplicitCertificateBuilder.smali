.class public Lorg/bouncycastle/its/ITSImplicitCertificateBuilder;
.super Lorg/bouncycastle/its/ITSCertificateBuilder;
.source "ITSImplicitCertificateBuilder.java"


# instance fields
.field private final issuerIdentifier:Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/its/ITSCertificate;Lorg/bouncycastle/operator/DigestCalculatorProvider;Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;)V
    .locals 7
    .param p1, "issuer"    # Lorg/bouncycastle/its/ITSCertificate;
    .param p2, "digestCalculatorProvider"    # Lorg/bouncycastle/operator/DigestCalculatorProvider;
    .param p3, "tbsCertificate"    # Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "issuer",
            "digestCalculatorProvider",
            "tbsCertificate"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p3}, Lorg/bouncycastle/its/ITSCertificateBuilder;-><init>(Lorg/bouncycastle/its/ITSCertificate;Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;)V

    .line 33
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 34
    .local v0, "digestAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    .line 38
    .local v1, "digestAlg":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    :try_start_0
    invoke-interface {p2, v0}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v2
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 43
    .local v2, "calculator":Lorg/bouncycastle/operator/DigestCalculator;
    nop

    .line 47
    :try_start_1
    invoke-interface {v2}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 48
    .local v3, "os":Ljava/io/OutputStream;
    invoke-virtual {p1}, Lorg/bouncycastle/its/ITSCertificate;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 49
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 54
    .end local v3    # "os":Ljava/io/OutputStream;
    nop

    .line 56
    invoke-interface {v2}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v3

    .line 59
    .local v3, "parentDigest":[B
    new-instance v4, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    array-length v5, v3

    add-int/lit8 v5, v5, -0x8

    array-length v6, v3

    invoke-static {v3, v5, v6}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;-><init>([B)V

    .line 62
    .local v4, "hashedID":Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;
    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 64
    invoke-static {v4}, Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;->sha256AndDigest(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;)Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;

    move-result-object v5

    iput-object v5, p0, Lorg/bouncycastle/its/ITSImplicitCertificateBuilder;->issuerIdentifier:Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;

    goto :goto_0

    .line 66
    :cond_0
    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 68
    invoke-static {v4}, Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;->sha384AndDigest(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;)Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;

    move-result-object v5

    iput-object v5, p0, Lorg/bouncycastle/its/ITSImplicitCertificateBuilder;->issuerIdentifier:Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;

    .line 75
    :goto_0
    return-void

    .line 72
    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "unknown digest"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 51
    .end local v3    # "parentDigest":[B
    .end local v4    # "hashedID":Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;
    :catch_0
    move-exception v3

    .line 53
    .local v3, "ioex":Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 40
    .end local v2    # "calculator":Lorg/bouncycastle/operator/DigestCalculator;
    .end local v3    # "ioex":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 42
    .local v2, "e":Lorg/bouncycastle/operator/OperatorCreationException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Lorg/bouncycastle/operator/OperatorCreationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public build(Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/its/ITSCertificate;
    .locals 1
    .param p1, "certificateId"    # Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;
    .param p2, "x"    # Ljava/math/BigInteger;
    .param p3, "y"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "certificateId",
            "x",
            "y"
        }
    .end annotation

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/bouncycastle/its/ITSImplicitCertificateBuilder;->build(Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;)Lorg/bouncycastle/its/ITSCertificate;

    move-result-object v0

    return-object v0
.end method

.method public build(Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;)Lorg/bouncycastle/its/ITSCertificate;
    .locals 5
    .param p1, "certificateId"    # Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;
    .param p2, "x"    # Ljava/math/BigInteger;
    .param p3, "y"    # Ljava/math/BigInteger;
    .param p4, "publicEncryptionKey"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "certificateId",
            "x",
            "y",
            "publicEncryptionKey"
        }
    .end annotation

    .line 84
    invoke-static {p2, p3}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EccP256CurvePoint;->uncompressedP256(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EccP256CurvePoint;

    move-result-object v0

    .line 86
    .local v0, "reconstructionValue":Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EccP256CurvePoint;
    new-instance v1, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    iget-object v2, p0, Lorg/bouncycastle/its/ITSImplicitCertificateBuilder;->tbsCertificateBuilder:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    invoke-direct {v1, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;)V

    .line 88
    .local v1, "tbsBldr":Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;
    invoke-virtual {v1, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->setId(Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    .line 90
    if-eqz p4, :cond_0

    .line 92
    invoke-virtual {v1, p4}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->setEncryptionKey(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    .line 95
    :cond_0
    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;->reconstructionValue(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EccP256CurvePoint;)Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->setVerifyKeyIndicator(Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    .line 98
    new-instance v2, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;

    invoke-direct {v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;-><init>()V

    .line 100
    .local v2, "baseBldr":Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;
    iget-object v3, p0, Lorg/bouncycastle/its/ITSImplicitCertificateBuilder;->version:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->setVersion(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;)Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;

    .line 101
    sget-object v3, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateType;->implicit:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateType;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->setType(Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateType;)Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;

    .line 103
    iget-object v3, p0, Lorg/bouncycastle/its/ITSImplicitCertificateBuilder;->issuerIdentifier:Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->setIssuer(Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;)Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;

    .line 105
    invoke-virtual {v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->createToBeSignedCertificate()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->setToBeSigned(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;

    .line 107
    new-instance v3, Lorg/bouncycastle/its/ITSCertificate;

    invoke-virtual {v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->createCertificateBase()Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/its/ITSCertificate;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;)V

    return-object v3
.end method
