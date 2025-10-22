.class public Lorg/bouncycastle/its/bc/BcITSContentSigner;
.super Ljava/lang/Object;
.source "BcITSContentSigner.java"

# interfaces
.implements Lorg/bouncycastle/its/operator/ITSContentSigner;


# instance fields
.field private final curveID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private final digest:Lorg/bouncycastle/crypto/Digest;

.field private final digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final parentData:[B

.field private final parentDigest:[B

.field private final privKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

.field private final signerCert:Lorg/bouncycastle/its/ITSCertificate;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;)V
    .locals 1
    .param p1, "privKey"    # Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privKey"
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/its/bc/BcITSContentSigner;-><init>(Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lorg/bouncycastle/its/ITSCertificate;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lorg/bouncycastle/its/ITSCertificate;)V
    .locals 5
    .param p1, "privKey"    # Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;
    .param p2, "signerCert"    # Lorg/bouncycastle/its/ITSCertificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "privKey",
            "signerCert"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->privKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 47
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;->getName()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->curveID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 48
    iput-object p2, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->signerCert:Lorg/bouncycastle/its/ITSCertificate;

    .line 49
    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->curveID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    iput-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->curveID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP256r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    iput-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->curveID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP384r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    iput-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 68
    :goto_0
    :try_start_0
    sget-object v0, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider;->INSTANCE:Lorg/bouncycastle/operator/bc/BcDigestProvider;

    iget-object v1, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-interface {v0, v1}, Lorg/bouncycastle/operator/bc/BcDigestProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/crypto/ExtendedDigest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->digest:Lorg/bouncycastle/crypto/Digest;
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    nop

    .line 75
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 79
    :try_start_1
    invoke-virtual {p2}, Lorg/bouncycastle/its/ITSCertificate;->getEncoded()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->parentData:[B

    .line 80
    iget-object v1, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->parentDigest:[B

    .line 82
    iget-object v1, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->parentData:[B

    iget-object v3, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->parentData:[B

    array-length v3, v3

    invoke-interface {v1, v2, v0, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 84
    iget-object v1, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->parentDigest:[B

    invoke-interface {v1, v2, v0}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 89
    goto :goto_1

    .line 86
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "signer certificate encoding failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->parentData:[B

    .line 95
    iget-object v1, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->parentDigest:[B

    .line 96
    iget-object v1, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->parentDigest:[B

    invoke-interface {v1, v2, v0}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 98
    :goto_1
    return-void

    .line 70
    :catch_1
    move-exception v0

    .line 72
    .local v0, "e":Lorg/bouncycastle/operator/OperatorCreationException;
    new-instance v1, Ljava/lang/IllegalStateException;

    iget-object v2, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot recognise digest type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    .end local v0    # "e":Lorg/bouncycastle/operator/OperatorCreationException;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown key type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAssociatedCertificate()Lorg/bouncycastle/its/ITSCertificate;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->signerCert:Lorg/bouncycastle/its/ITSCertificate;

    return-object v0
.end method

.method public getAssociatedCertificateDigest()[B
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->parentDigest:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getCurveID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->curveID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    .line 117
    new-instance v0, Lorg/bouncycastle/crypto/io/DigestOutputStream;

    iget-object v1, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/io/DigestOutputStream;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    return-object v0
.end method

.method public getSignature()[B
    .locals 5

    .line 132
    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 134
    .local v0, "clientCertDigest":[B
    iget-object v1, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 136
    new-instance v1, Lorg/bouncycastle/crypto/signers/DSADigestSigner;

    new-instance v3, Lorg/bouncycastle/crypto/signers/ECDSASigner;

    invoke-direct {v3}, Lorg/bouncycastle/crypto/signers/ECDSASigner;-><init>()V

    iget-object v4, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {v1, v3, v4}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;-><init>(Lorg/bouncycastle/crypto/DSA;Lorg/bouncycastle/crypto/Digest;)V

    .line 138
    .local v1, "signer":Lorg/bouncycastle/crypto/signers/DSADigestSigner;
    const/4 v3, 0x1

    iget-object v4, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->privKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v1, v3, v4}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 140
    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->update([BII)V

    .line 142
    iget-object v3, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->parentDigest:[B

    iget-object v4, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->parentDigest:[B

    array-length v4, v4

    invoke-virtual {v1, v3, v2, v4}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->update([BII)V

    .line 144
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->generateSignature()[B

    move-result-object v2

    return-object v2
.end method

.method public isForSelfSigning()Z
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->parentData:[B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
