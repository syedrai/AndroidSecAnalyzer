.class public Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;
.super Ljava/lang/Object;
.source "JcaITSContentVerifierProvider.java"

# interfaces
.implements Lorg/bouncycastle/its/operator/ITSContentVerifierProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$Builder;
    }
.end annotation


# instance fields
.field private digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private final issuer:Lorg/bouncycastle/its/ITSCertificate;

.field private final parentData:[B

.field private pubParams:Ljava/security/interfaces/ECPublicKey;

.field private sigChoice:I


# direct methods
.method static bridge synthetic -$$Nest$fgetpubParams(Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;)Ljava/security/interfaces/ECPublicKey;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->pubParams:Ljava/security/interfaces/ECPublicKey;

    return-object p0
.end method

.method private constructor <init>(Lorg/bouncycastle/its/ITSCertificate;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 5
    .param p1, "issuer"    # Lorg/bouncycastle/its/ITSCertificate;
    .param p2, "helper"    # Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "issuer",
            "helper"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->issuer:Lorg/bouncycastle/its/ITSCertificate;

    .line 73
    iput-object p2, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 76
    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/its/ITSCertificate;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->parentData:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    nop

    .line 82
    nop

    .line 83
    invoke-virtual {p1}, Lorg/bouncycastle/its/ITSCertificate;->toASN1Structure()Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;->getToBeSigned()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    move-result-object v0

    .line 84
    .local v0, "toBeSignedCertificate":Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;
    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->getVerifyKeyIndicator()Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;

    move-result-object v1

    .line 86
    .local v1, "vki":Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;
    invoke-virtual {v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;->getVerificationKeyIndicator()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;

    if-eqz v2, :cond_0

    .line 88
    invoke-virtual {v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;->getVerificationKeyIndicator()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;

    move-result-object v2

    .line 89
    .local v2, "pvi":Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;
    invoke-direct {p0, v2, p2}, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->initForPvi(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    .line 90
    .end local v2    # "pvi":Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;
    nop

    .line 95
    return-void

    .line 93
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "not public verification key"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    .end local v0    # "toBeSignedCertificate":Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;
    .end local v1    # "vki":Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to extract parent data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/its/ITSCertificate;Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;-><init>(Lorg/bouncycastle/its/ITSCertificate;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/its/ITSPublicVerificationKey;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 1
    .param p1, "pvi"    # Lorg/bouncycastle/its/ITSPublicVerificationKey;
    .param p2, "helper"    # Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pvi",
            "helper"
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->issuer:Lorg/bouncycastle/its/ITSCertificate;

    .line 100
    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->parentData:[B

    .line 101
    iput-object p2, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 103
    invoke-virtual {p1}, Lorg/bouncycastle/its/ITSPublicVerificationKey;->toASN1Structure()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->initForPvi(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    .line 104
    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/its/ITSPublicVerificationKey;Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;-><init>(Lorg/bouncycastle/its/ITSPublicVerificationKey;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    return-void
.end method

.method private initForPvi(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 2
    .param p1, "pvi"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;
    .param p2, "helper"    # Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pvi",
            "helper"
        }
    .end annotation

    .line 108
    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;->getChoice()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->sigChoice:I

    .line 109
    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;->getChoice()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown key type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :pswitch_0
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 119
    goto :goto_0

    .line 115
    :pswitch_1
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 116
    goto :goto_0

    .line 112
    :pswitch_2
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 113
    nop

    .line 124
    :goto_0
    new-instance v0, Lorg/bouncycastle/its/jcajce/JcaITSPublicVerificationKey;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/its/jcajce/JcaITSPublicVerificationKey;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    invoke-virtual {v0}, Lorg/bouncycastle/its/jcajce/JcaITSPublicVerificationKey;->getKey()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->pubParams:Ljava/security/interfaces/ECPublicKey;

    .line 125
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public get(I)Lorg/bouncycastle/operator/ContentVerifier;
    .locals 10
    .param p1, "verifierAlgorithmIdentifier"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
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

    .line 141
    iget v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->sigChoice:I

    if-ne v0, p1, :cond_2

    .line 150
    :try_start_0
    new-instance v0, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    invoke-direct {v0}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;->setHelper(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    move-result-object v0

    .line 151
    .local v0, "bld":Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;
    invoke-virtual {v0}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;->build()Lorg/bouncycastle/operator/DigestCalculatorProvider;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 156
    .end local v0    # "bld":Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;
    .local v1, "digestCalculatorProvider":Lorg/bouncycastle/operator/DigestCalculatorProvider;
    nop

    .line 158
    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-interface {v1, v0}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v5

    .line 161
    .local v5, "calculator":Lorg/bouncycastle/operator/DigestCalculator;
    :try_start_1
    invoke-interface {v5}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 162
    .local v4, "os":Ljava/io/OutputStream;
    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->parentData:[B

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->parentData:[B

    iget-object v3, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->parentData:[B

    array-length v3, v3

    invoke-virtual {v4, v0, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 166
    :cond_0
    invoke-interface {v5}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v8

    .line 170
    .local v8, "parentDigest":[B
    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->issuer:Lorg/bouncycastle/its/ITSCertificate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->issuer:Lorg/bouncycastle/its/ITSCertificate;

    invoke-virtual {v0}, Lorg/bouncycastle/its/ITSCertificate;->getIssuer()Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->issuer:Lorg/bouncycastle/its/ITSCertificate;

    invoke-virtual {v0}, Lorg/bouncycastle/its/ITSCertificate;->toASN1Structure()Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;->getToBeSigned()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    move-result-object v0

    sget-object v3, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->ToBeSignedCertificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->build()Lorg/bouncycastle/oer/Element;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/bouncycastle/oer/OEREncoder;->toByteArray(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)[B

    move-result-object v0

    .line 173
    .local v0, "enc":[B
    array-length v3, v0

    invoke-virtual {v4, v0, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 174
    invoke-interface {v5}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v2

    .line 175
    .end local v0    # "enc":[B
    .local v2, "parentTBSDigest":[B
    move-object v7, v2

    goto :goto_0

    .line 178
    .end local v2    # "parentTBSDigest":[B
    :cond_1
    const/4 v0, 0x0

    move-object v2, v0

    move-object v7, v2

    .line 182
    .local v7, "parentTBSDigest":[B
    :goto_0
    iget v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->sigChoice:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    packed-switch v0, :pswitch_data_0

    .line 192
    move-object v3, p0

    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 189
    :pswitch_0
    :try_start_3
    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    const-string v2, "SHA384withECDSA"

    invoke-interface {v0, v2}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 190
    .local v0, "signature":Ljava/security/Signature;
    move-object v6, v0

    goto :goto_1

    .line 186
    .end local v0    # "signature":Ljava/security/Signature;
    :pswitch_1
    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    const-string v2, "SHA256withECDSA"

    invoke-interface {v0, v2}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 187
    .restart local v0    # "signature":Ljava/security/Signature;
    move-object v6, v0

    .line 195
    .end local v0    # "signature":Ljava/security/Signature;
    .local v6, "signature":Ljava/security/Signature;
    :goto_1
    new-instance v2, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v3, p0

    :try_start_4
    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;-><init>(Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;Ljava/io/OutputStream;Lorg/bouncycastle/operator/DigestCalculator;Ljava/security/Signature;[B[B)V

    return-object v2

    .line 192
    .end local v6    # "signature":Ljava/security/Signature;
    :goto_2
    iget v2, v3, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->sigChoice:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "choice "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " not supported"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "digestCalculatorProvider":Lorg/bouncycastle/operator/DigestCalculatorProvider;
    .end local v5    # "calculator":Lorg/bouncycastle/operator/DigestCalculator;
    .end local p1    # "verifierAlgorithmIdentifier":I
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 237
    .end local v4    # "os":Ljava/io/OutputStream;
    .end local v7    # "parentTBSDigest":[B
    .end local v8    # "parentDigest":[B
    .restart local v1    # "digestCalculatorProvider":Lorg/bouncycastle/operator/DigestCalculatorProvider;
    .restart local v5    # "calculator":Lorg/bouncycastle/operator/DigestCalculator;
    .restart local p1    # "verifierAlgorithmIdentifier":I
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v3, p0

    .line 239
    .local v0, "ex":Ljava/lang/Exception;
    :goto_3
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 153
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "digestCalculatorProvider":Lorg/bouncycastle/operator/DigestCalculatorProvider;
    .end local v5    # "calculator":Lorg/bouncycastle/operator/DigestCalculator;
    :catch_2
    move-exception v0

    move-object v3, p0

    .line 155
    .restart local v0    # "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 143
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    move-object v3, p0

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

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAssociatedCertificate()Lorg/bouncycastle/its/ITSCertificate;
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->issuer:Lorg/bouncycastle/its/ITSCertificate;

    return-object v0
.end method

.method public hasAssociatedCertificate()Z
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->issuer:Lorg/bouncycastle/its/ITSCertificate;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
