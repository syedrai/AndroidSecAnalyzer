.class public Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;
.super Ljava/lang/Object;
.source "JcaITSContentSigner.java"

# interfaces
.implements Lorg/bouncycastle/its/operator/ITSContentSigner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/its/jcajce/JcaITSContentSigner$Builder;
    }
.end annotation


# instance fields
.field private final curveID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private final digest:Lorg/bouncycastle/operator/DigestCalculator;

.field private final digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private final parentData:[B

.field private final parentDigest:[B

.field private final privateKey:Ljava/security/interfaces/ECPrivateKey;

.field private final signer:Ljava/lang/String;

.field private final signerCert:Lorg/bouncycastle/its/ITSCertificate;


# direct methods
.method private constructor <init>(Ljava/security/interfaces/ECPrivateKey;Lorg/bouncycastle/its/ITSCertificate;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 7
    .param p1, "privateKey"    # Ljava/security/interfaces/ECPrivateKey;
    .param p2, "signerCert"    # Lorg/bouncycastle/its/ITSCertificate;
    .param p3, "helper"    # Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "privateKey",
            "signerCert",
            "helper"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->privateKey:Ljava/security/interfaces/ECPrivateKey;

    .line 73
    iput-object p2, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->signerCert:Lorg/bouncycastle/its/ITSCertificate;

    .line 74
    iput-object p3, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 80
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    .line 81
    .local v0, "pkInfo":Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->curveID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 83
    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->curveID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    const-string v2, "SHA256withECDSA"

    if-eqz v1, :cond_0

    .line 85
    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    iput-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 86
    iput-object v2, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->signer:Ljava/lang/String;

    goto :goto_0

    .line 88
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->curveID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v3, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP256r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    iput-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 91
    iput-object v2, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->signer:Ljava/lang/String;

    goto :goto_0

    .line 93
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->curveID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP384r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 95
    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    iput-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 96
    const-string v1, "SHA384withECDSA"

    iput-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->signer:Ljava/lang/String;

    .line 108
    :goto_0
    :try_start_0
    new-instance v1, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    invoke-direct {v1}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;-><init>()V

    invoke-virtual {v1, p3}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;->setHelper(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    move-result-object v1

    .line 109
    .local v1, "bld":Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;
    invoke-virtual {v1}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;->build()Lorg/bouncycastle/operator/DigestCalculatorProvider;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 114
    .end local v1    # "bld":Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;
    .local v2, "digestCalculatorProvider":Lorg/bouncycastle/operator/DigestCalculatorProvider;
    nop

    .line 118
    :try_start_1
    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-interface {v2, v1}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->digest:Lorg/bouncycastle/operator/DigestCalculator;
    :try_end_1
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 123
    nop

    .line 125
    if-eqz p2, :cond_2

    .line 129
    :try_start_2
    invoke-virtual {p2}, Lorg/bouncycastle/its/ITSCertificate;->getEncoded()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->parentData:[B

    .line 130
    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->digest:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v1}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 131
    .local v1, "os":Ljava/io/OutputStream;
    iget-object v3, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->parentData:[B

    iget-object v4, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->parentData:[B

    array-length v4, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 132
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 133
    iget-object v3, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->digest:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v3}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->parentDigest:[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 138
    .end local v1    # "os":Ljava/io/OutputStream;
    goto :goto_1

    .line 135
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "signer certificate encoding failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 143
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->parentData:[B

    .line 144
    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->digest:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v1}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->parentDigest:[B

    .line 147
    :goto_1
    return-void

    .line 120
    :catch_1
    move-exception v1

    .line 122
    .local v1, "e":Lorg/bouncycastle/operator/OperatorCreationException;
    new-instance v3, Ljava/lang/IllegalStateException;

    iget-object v4, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot recognise digest type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 111
    .end local v1    # "e":Lorg/bouncycastle/operator/OperatorCreationException;
    .end local v2    # "digestCalculatorProvider":Lorg/bouncycastle/operator/DigestCalculatorProvider;
    :catch_2
    move-exception v1

    .line 113
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 100
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "unknown key type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method synthetic constructor <init>(Ljava/security/interfaces/ECPrivateKey;Lorg/bouncycastle/its/ITSCertificate;Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/its/jcajce/JcaITSContentSigner-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;-><init>(Ljava/security/interfaces/ECPrivateKey;Lorg/bouncycastle/its/ITSCertificate;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    return-void
.end method


# virtual methods
.method public getAssociatedCertificate()Lorg/bouncycastle/its/ITSCertificate;
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->signerCert:Lorg/bouncycastle/its/ITSCertificate;

    return-object v0
.end method

.method public getAssociatedCertificateDigest()[B
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->parentDigest:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getCurveID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 194
    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->curveID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 189
    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->digest:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v0}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()[B
    .locals 5

    .line 158
    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->digest:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v0}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v0

    .line 162
    .local v0, "clientCertDigest":[B
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    iget-object v2, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->signer:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 163
    .local v1, "signature":Ljava/security/Signature;
    iget-object v2, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->privateKey:Ljava/security/interfaces/ECPrivateKey;

    invoke-virtual {v1, v2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 164
    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/security/Signature;->update([BII)V

    .line 165
    iget-object v2, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->parentDigest:[B

    iget-object v4, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->parentDigest:[B

    array-length v4, v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/Signature;->update([BII)V

    .line 166
    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 168
    .end local v1    # "signature":Ljava/security/Signature;
    :catch_0
    move-exception v1

    .line 170
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public isForSelfSigning()Z
    .locals 1

    .line 199
    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->parentData:[B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
