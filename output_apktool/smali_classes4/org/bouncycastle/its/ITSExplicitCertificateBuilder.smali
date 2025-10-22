.class public Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;
.super Lorg/bouncycastle/its/ITSCertificateBuilder;
.source "ITSExplicitCertificateBuilder.java"


# instance fields
.field private final signer:Lorg/bouncycastle/its/operator/ITSContentSigner;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/its/operator/ITSContentSigner;Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;)V
    .locals 0
    .param p1, "signer"    # Lorg/bouncycastle/its/operator/ITSContentSigner;
    .param p2, "tbsCertificate"    # Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "signer",
            "tbsCertificate"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p2}, Lorg/bouncycastle/its/ITSCertificateBuilder;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;)V

    .line 41
    iput-object p1, p0, Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;->signer:Lorg/bouncycastle/its/operator/ITSContentSigner;

    .line 42
    return-void
.end method


# virtual methods
.method public build(Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;Lorg/bouncycastle/its/ITSPublicVerificationKey;)Lorg/bouncycastle/its/ITSCertificate;
    .locals 1
    .param p1, "certificateId"    # Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;
    .param p2, "verificationKey"    # Lorg/bouncycastle/its/ITSPublicVerificationKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "certificateId",
            "verificationKey"
        }
    .end annotation

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;->build(Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;Lorg/bouncycastle/its/ITSPublicVerificationKey;Lorg/bouncycastle/its/ITSPublicEncryptionKey;)Lorg/bouncycastle/its/ITSCertificate;

    move-result-object v0

    return-object v0
.end method

.method public build(Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;Lorg/bouncycastle/its/ITSPublicVerificationKey;Lorg/bouncycastle/its/ITSPublicEncryptionKey;)Lorg/bouncycastle/its/ITSCertificate;
    .locals 13
    .param p1, "certificateId"    # Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;
    .param p2, "verificationKey"    # Lorg/bouncycastle/its/ITSPublicVerificationKey;
    .param p3, "publicEncryptionKey"    # Lorg/bouncycastle/its/ITSPublicEncryptionKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "certificateId",
            "verificationKey",
            "publicEncryptionKey"
        }
    .end annotation

    .line 51
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    iget-object v1, p0, Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;->tbsCertificateBuilder:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;)V

    move-object v1, v0

    .line 53
    .local v1, "tbsBldr":Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;
    invoke-virtual {v1, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->setId(Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    .line 55
    if-eqz p3, :cond_0

    .line 57
    invoke-virtual/range {p3 .. p3}, Lorg/bouncycastle/its/ITSPublicEncryptionKey;->toASN1Structure()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->setEncryptionKey(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    .line 60
    :cond_0
    nop

    .line 61
    invoke-virtual {p2}, Lorg/bouncycastle/its/ITSPublicVerificationKey;->toASN1Structure()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;->verificationKey(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;)Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;

    move-result-object v0

    .line 60
    invoke-virtual {v1, v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->setVerifyKeyIndicator(Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    .line 63
    invoke-virtual {v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->createToBeSignedCertificate()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    move-result-object v2

    .line 65
    .local v2, "tbsCertificate":Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;
    const/4 v0, 0x0

    .line 67
    .local v0, "signerCert":Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;
    iget-object v3, p0, Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;->signer:Lorg/bouncycastle/its/operator/ITSContentSigner;

    invoke-interface {v3}, Lorg/bouncycastle/its/operator/ITSContentSigner;->isForSelfSigning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    invoke-virtual {v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->getVerifyKeyIndicator()Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;

    move-result-object v3

    move-object v4, v3

    move-object v3, v0

    .local v3, "verificationKeyIndicator":Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;
    goto :goto_0

    .line 73
    .end local v3    # "verificationKeyIndicator":Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;
    :cond_1
    iget-object v3, p0, Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;->signer:Lorg/bouncycastle/its/operator/ITSContentSigner;

    invoke-interface {v3}, Lorg/bouncycastle/its/operator/ITSContentSigner;->getAssociatedCertificate()Lorg/bouncycastle/its/ITSCertificate;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/its/ITSCertificate;->toASN1Structure()Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;->getToBeSigned()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->getVerifyKeyIndicator()Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;

    move-result-object v3

    move-object v4, v3

    move-object v3, v0

    .line 77
    .end local v0    # "signerCert":Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;
    .local v3, "signerCert":Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;
    .local v4, "verificationKeyIndicator":Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;->signer:Lorg/bouncycastle/its/operator/ITSContentSigner;

    invoke-interface {v0}, Lorg/bouncycastle/its/operator/ITSContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 81
    .local v5, "sOut":Ljava/io/OutputStream;
    :try_start_0
    sget-object v0, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->ToBeSignedCertificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {v0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->build()Lorg/bouncycastle/oer/Element;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/bouncycastle/oer/OEREncoder;->toByteArray(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 83
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    nop

    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "sig":Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;
    invoke-virtual {v4}, Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;->getChoice()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 103
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "unknown key type"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 100
    :pswitch_0
    sget-object v6, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP384r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v7, p0, Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;->signer:Lorg/bouncycastle/its/operator/ITSContentSigner;

    invoke-interface {v7}, Lorg/bouncycastle/its/operator/ITSContentSigner;->getSignature()[B

    move-result-object v7

    invoke-static {v6, v7}, Lorg/bouncycastle/its/operator/ECDSAEncoder;->toITS(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;

    move-result-object v0

    .line 101
    goto :goto_1

    .line 97
    :pswitch_1
    sget-object v6, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP256r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v7, p0, Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;->signer:Lorg/bouncycastle/its/operator/ITSContentSigner;

    invoke-interface {v7}, Lorg/bouncycastle/its/operator/ITSContentSigner;->getSignature()[B

    move-result-object v7

    invoke-static {v6, v7}, Lorg/bouncycastle/its/operator/ECDSAEncoder;->toITS(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;

    move-result-object v0

    .line 98
    goto :goto_1

    .line 94
    :pswitch_2
    sget-object v6, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v7, p0, Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;->signer:Lorg/bouncycastle/its/operator/ITSContentSigner;

    invoke-interface {v7}, Lorg/bouncycastle/its/operator/ITSContentSigner;->getSignature()[B

    move-result-object v7

    invoke-static {v6, v7}, Lorg/bouncycastle/its/operator/ECDSAEncoder;->toITS(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;

    move-result-object v0

    .line 95
    nop

    .line 106
    :goto_1
    new-instance v6, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;

    invoke-direct {v6}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;-><init>()V

    .line 108
    .local v6, "baseBldr":Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;
    iget-object v7, p0, Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;->signer:Lorg/bouncycastle/its/operator/ITSContentSigner;

    invoke-interface {v7}, Lorg/bouncycastle/its/operator/ITSContentSigner;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    .line 112
    .local v7, "digestAlg":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    iget-object v8, p0, Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;->signer:Lorg/bouncycastle/its/operator/ITSContentSigner;

    invoke-interface {v8}, Lorg/bouncycastle/its/operator/ITSContentSigner;->isForSelfSigning()Z

    move-result v8

    const-string/jumbo v9, "unknown digest"

    if-eqz v8, :cond_4

    .line 115
    sget-object v8, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7, v8}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 117
    sget-object v8, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;->sha256:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;

    invoke-static {v8}, Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;->self(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;)Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;

    move-result-object v8

    .local v8, "issuerIdentifier":Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;
    goto :goto_2

    .line 119
    .end local v8    # "issuerIdentifier":Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;
    :cond_2
    sget-object v8, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7, v8}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 121
    sget-object v8, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;->sha384:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;

    invoke-static {v8}, Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;->self(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;)Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;

    move-result-object v8

    .restart local v8    # "issuerIdentifier":Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;
    goto :goto_2

    .line 125
    .end local v8    # "issuerIdentifier":Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;
    :cond_3
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 130
    :cond_4
    iget-object v8, p0, Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;->signer:Lorg/bouncycastle/its/operator/ITSContentSigner;

    invoke-interface {v8}, Lorg/bouncycastle/its/operator/ITSContentSigner;->getAssociatedCertificateDigest()[B

    move-result-object v8

    .line 131
    .local v8, "parentDigest":[B
    new-instance v10, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    array-length v11, v8

    add-int/lit8 v11, v11, -0x8

    array-length v12, v8

    invoke-static {v8, v11, v12}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;-><init>([B)V

    .line 132
    .local v10, "hashedID":Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;
    sget-object v11, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7, v11}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 134
    invoke-static {v10}, Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;->sha256AndDigest(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;)Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;

    move-result-object v9

    move-object v8, v9

    .local v9, "issuerIdentifier":Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;
    goto :goto_2

    .line 136
    .end local v9    # "issuerIdentifier":Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;
    :cond_5
    sget-object v11, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7, v11}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 138
    invoke-static {v10}, Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;->sha384AndDigest(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;)Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;

    move-result-object v9

    move-object v8, v9

    .line 146
    .end local v10    # "hashedID":Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;
    .local v8, "issuerIdentifier":Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;
    :goto_2
    iget-object v9, p0, Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;->version:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    invoke-virtual {v6, v9}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->setVersion(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;)Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;

    .line 147
    sget-object v9, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateType;->explicit:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateType;

    invoke-virtual {v6, v9}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->setType(Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateType;)Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;

    .line 148
    invoke-virtual {v6, v8}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->setIssuer(Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;)Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;

    .line 150
    invoke-virtual {v6, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->setToBeSigned(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;

    .line 151
    invoke-virtual {v6, v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->setSignature(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;)Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;

    .line 155
    new-instance v9, Lorg/bouncycastle/its/ITSCertificate;

    invoke-virtual {v6}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->createCertificateBase()Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/bouncycastle/its/ITSCertificate;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;)V

    return-object v9

    .line 142
    .local v8, "parentDigest":[B
    .restart local v10    # "hashedID":Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;
    :cond_6
    new-instance v11, Ljava/lang/IllegalStateException;

    invoke-direct {v11, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 85
    .end local v0    # "sig":Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;
    .end local v6    # "baseBldr":Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;
    .end local v7    # "digestAlg":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v8    # "parentDigest":[B
    .end local v10    # "hashedID":Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "cannot produce certificate signature"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
