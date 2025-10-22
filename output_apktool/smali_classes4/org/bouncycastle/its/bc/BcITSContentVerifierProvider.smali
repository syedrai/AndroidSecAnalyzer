.class public Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;
.super Ljava/lang/Object;
.source "BcITSContentVerifierProvider.java"

# interfaces
.implements Lorg/bouncycastle/its/operator/ITSContentVerifierProvider;


# instance fields
.field private final digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final issuer:Lorg/bouncycastle/its/ITSCertificate;

.field private final parentData:[B

.field private final pubParams:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

.field private final sigChoice:I


# direct methods
.method static bridge synthetic -$$Nest$fgetdigestAlgo(Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpubParams(Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;)Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->pubParams:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    return-object p0
.end method

.method public constructor <init>(Lorg/bouncycastle/its/ITSCertificate;)V
    .locals 5
    .param p1, "issuer"    # Lorg/bouncycastle/its/ITSCertificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "issuer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->issuer:Lorg/bouncycastle/its/ITSCertificate;

    .line 37
    invoke-virtual {p1}, Lorg/bouncycastle/its/ITSCertificate;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->parentData:[B

    .line 38
    nop

    .line 39
    invoke-virtual {p1}, Lorg/bouncycastle/its/ITSCertificate;->toASN1Structure()Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;->getToBeSigned()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    move-result-object v0

    .line 40
    .local v0, "toBeSignedCertificate":Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;
    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->getVerifyKeyIndicator()Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;

    move-result-object v1

    .line 42
    .local v1, "vki":Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;
    invoke-virtual {v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;->getVerificationKeyIndicator()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;

    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;->getVerificationKeyIndicator()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;

    move-result-object v2

    .line 45
    .local v2, "pvi":Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;
    invoke-virtual {v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;->getChoice()I

    move-result v3

    iput v3, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->sigChoice:I

    .line 47
    invoke-virtual {v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;->getChoice()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 59
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "unknown key type"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 56
    :pswitch_0
    new-instance v3, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    iput-object v3, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 57
    goto :goto_0

    .line 53
    :pswitch_1
    new-instance v3, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    iput-object v3, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 54
    goto :goto_0

    .line 50
    :pswitch_2
    new-instance v3, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    iput-object v3, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 51
    nop

    .line 62
    :goto_0
    new-instance v3, Lorg/bouncycastle/its/bc/BcITSPublicVerificationKey;

    invoke-direct {v3, v2}, Lorg/bouncycastle/its/bc/BcITSPublicVerificationKey;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;)V

    invoke-virtual {v3}, Lorg/bouncycastle/its/bc/BcITSPublicVerificationKey;->getKey()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    iput-object v3, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->pubParams:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 63
    .end local v2    # "pvi":Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;
    nop

    .line 68
    return-void

    .line 66
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "not public verification key"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public get(I)Lorg/bouncycastle/operator/ContentVerifier;
    .locals 8
    .param p1, "verifierAlgorithmIdentifier"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "verifierAlgorithmIdentifier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 83
    iget v0, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->sigChoice:I

    if-ne v0, p1, :cond_2

    .line 88
    sget-object v0, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider;->INSTANCE:Lorg/bouncycastle/operator/bc/BcDigestProvider;

    iget-object v1, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-interface {v0, v1}, Lorg/bouncycastle/operator/bc/BcDigestProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/crypto/ExtendedDigest;

    move-result-object v5

    .line 90
    .local v5, "digest":Lorg/bouncycastle/crypto/Digest;
    invoke-interface {v5}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v7, v0, [B

    .line 92
    .local v7, "parentDigest":[B
    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->parentData:[B

    iget-object v1, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->parentData:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-interface {v5, v0, v2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 94
    invoke-interface {v5, v7, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 96
    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->issuer:Lorg/bouncycastle/its/ITSCertificate;

    invoke-virtual {v0}, Lorg/bouncycastle/its/ITSCertificate;->getIssuer()Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    .line 98
    .local v6, "parentTBSDigest":[B
    if-eqz v6, :cond_1

    .line 100
    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->issuer:Lorg/bouncycastle/its/ITSCertificate;

    invoke-virtual {v0}, Lorg/bouncycastle/its/ITSCertificate;->toASN1Structure()Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;->getToBeSigned()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->ToBeSignedCertificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->build()Lorg/bouncycastle/oer/Element;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/oer/OEREncoder;->toByteArray(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)[B

    move-result-object v0

    .line 101
    .local v0, "enc":[B
    array-length v1, v0

    invoke-interface {v5, v0, v2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 102
    invoke-interface {v5, v6, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 105
    .end local v0    # "enc":[B
    :cond_1
    new-instance v4, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$1;

    invoke-direct {v4, p0, v5}, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$1;-><init>(Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;Lorg/bouncycastle/crypto/Digest;)V

    .line 126
    .local v4, "os":Ljava/io/OutputStream;
    new-instance v2, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;-><init>(Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;Ljava/io/OutputStream;Lorg/bouncycastle/crypto/Digest;[B[B)V

    return-object v2

    .line 85
    .end local v4    # "os":Ljava/io/OutputStream;
    .end local v5    # "digest":Lorg/bouncycastle/crypto/Digest;
    .end local v6    # "parentTBSDigest":[B
    .end local v7    # "parentDigest":[B
    :cond_2
    new-instance v0, Lorg/bouncycastle/operator/OperatorCreationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wrong verifier for algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAssociatedCertificate()Lorg/bouncycastle/its/ITSCertificate;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->issuer:Lorg/bouncycastle/its/ITSCertificate;

    return-object v0
.end method

.method public hasAssociatedCertificate()Z
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->issuer:Lorg/bouncycastle/its/ITSCertificate;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
