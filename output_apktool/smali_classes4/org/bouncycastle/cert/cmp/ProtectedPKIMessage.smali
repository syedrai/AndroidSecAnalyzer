.class public Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;
.super Ljava/lang/Object;
.source "ProtectedPKIMessage.java"


# instance fields
.field private pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/cmp/PKIMessage;)V
    .locals 2
    .param p1, "pkiMessage"    # Lorg/bouncycastle/asn1/cmp/PKIMessage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkiMessage"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cmp/PKIMessage;->getHeader()Lorg/bouncycastle/asn1/cmp/PKIHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/PKIHeader;->getProtectionAlg()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    iput-object p1, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;

    .line 53
    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PKIMessage not protected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/cert/cmp/GeneralPKIMessage;)V
    .locals 2
    .param p1, "pkiMessage"    # Lorg/bouncycastle/cert/cmp/GeneralPKIMessage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkiMessage"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Lorg/bouncycastle/cert/cmp/GeneralPKIMessage;->hasProtection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p1}, Lorg/bouncycastle/cert/cmp/GeneralPKIMessage;->toASN1Structure()Lorg/bouncycastle/asn1/cmp/PKIMessage;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;

    .line 43
    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PKIMessage not protected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createProtected()Lorg/bouncycastle/asn1/DERSequence;
    .locals 2

    .line 186
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 187
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cmp/PKIMessage;->getHeader()Lorg/bouncycastle/asn1/cmp/PKIHeader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 188
    iget-object v1, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cmp/PKIMessage;->getBody()Lorg/bouncycastle/asn1/cmp/PKIBody;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 189
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method private verifySignature([BLorg/bouncycastle/operator/ContentVerifier;)Z
    .locals 2
    .param p1, "signature"    # [B
    .param p2, "verifier"    # Lorg/bouncycastle/operator/ContentVerifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "signature",
            "verifier"
        }
    .end annotation

    .line 179
    invoke-direct {p0}, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->createProtected()Lorg/bouncycastle/asn1/DERSequence;

    move-result-object v0

    invoke-interface {p2}, Lorg/bouncycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/cert/cmp/CMPUtil;->derEncodeToStream(Lorg/bouncycastle/asn1/ASN1Object;Ljava/io/OutputStream;)V

    .line 181
    invoke-interface {p2, p1}, Lorg/bouncycastle/operator/ContentVerifier;->verify([B)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getBody()Lorg/bouncycastle/asn1/cmp/PKIBody;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/PKIMessage;->getBody()Lorg/bouncycastle/asn1/cmp/PKIBody;

    move-result-object v0

    return-object v0
.end method

.method public getCertificates()[Lorg/bouncycastle/cert/X509CertificateHolder;
    .locals 5

    .line 113
    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/PKIMessage;->getExtraCerts()[Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    move-result-object v0

    .line 115
    .local v0, "certs":[Lorg/bouncycastle/asn1/cmp/CMPCertificate;
    if-nez v0, :cond_0

    .line 117
    const/4 v1, 0x0

    new-array v1, v1, [Lorg/bouncycastle/cert/X509CertificateHolder;

    return-object v1

    .line 120
    :cond_0
    array-length v1, v0

    new-array v1, v1, [Lorg/bouncycastle/cert/X509CertificateHolder;

    .line 121
    .local v1, "res":[Lorg/bouncycastle/cert/X509CertificateHolder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-eq v2, v3, :cond_1

    .line 123
    new-instance v3, Lorg/bouncycastle/cert/X509CertificateHolder;

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;->getX509v3PKCert()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/cert/X509CertificateHolder;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;)V

    aput-object v3, v1, v2

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public getHeader()Lorg/bouncycastle/asn1/cmp/PKIHeader;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/PKIMessage;->getHeader()Lorg/bouncycastle/asn1/cmp/PKIHeader;

    move-result-object v0

    return-object v0
.end method

.method public getProtectionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/PKIMessage;->getHeader()Lorg/bouncycastle/asn1/cmp/PKIHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/PKIHeader;->getProtectionAlg()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public hasPasswordBasedMacProtection()Z
    .locals 2

    .line 93
    sget-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->passwordBasedMac:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0}, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->getProtectionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    return v0
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/cmp/PKIMessage;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;

    return-object v0
.end method

.method public verify(Lorg/bouncycastle/operator/ContentVerifierProvider;)Z
    .locals 5
    .param p1, "verifierProvider"    # Lorg/bouncycastle/operator/ContentVerifierProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "verifierProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/cmp/CMPException;
        }
    .end annotation

    .line 142
    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->getProtectionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/operator/ContentVerifierProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/ContentVerifier;

    move-result-object v0

    .line 144
    .local v0, "verifier":Lorg/bouncycastle/operator/ContentVerifier;
    iget-object v1, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cmp/PKIMessage;->getProtection()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->verifySignature([BLorg/bouncycastle/operator/ContentVerifier;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 146
    .end local v0    # "verifier":Lorg/bouncycastle/operator/ContentVerifier;
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/bouncycastle/cert/cmp/CMPException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to verify signature: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cert/cmp/CMPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public verify(Lorg/bouncycastle/operator/PBEMacCalculatorProvider;[C)Z
    .locals 5
    .param p1, "pbeMacCalculatorProvider"    # Lorg/bouncycastle/operator/PBEMacCalculatorProvider;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pbeMacCalculatorProvider",
            "password"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/cmp/CMPException;
        }
    .end annotation

    .line 165
    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->getProtectionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lorg/bouncycastle/operator/PBEMacCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[C)Lorg/bouncycastle/operator/MacCalculator;

    move-result-object v0

    .line 167
    .local v0, "calculator":Lorg/bouncycastle/operator/MacCalculator;
    invoke-direct {p0}, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->createProtected()Lorg/bouncycastle/asn1/DERSequence;

    move-result-object v1

    invoke-interface {v0}, Lorg/bouncycastle/operator/MacCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/cert/cmp/CMPUtil;->derEncodeToStream(Lorg/bouncycastle/asn1/ASN1Object;Ljava/io/OutputStream;)V

    .line 169
    invoke-interface {v0}, Lorg/bouncycastle/operator/MacCalculator;->getMac()[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cmp/PKIMessage;->getProtection()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 171
    .end local v0    # "calculator":Lorg/bouncycastle/operator/MacCalculator;
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/bouncycastle/cert/cmp/CMPException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to verify MAC: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cert/cmp/CMPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
