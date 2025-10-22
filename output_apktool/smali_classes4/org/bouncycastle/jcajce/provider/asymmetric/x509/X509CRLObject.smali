.class Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;
.source "X509CRLObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject$X509CRLException;
    }
.end annotation


# instance fields
.field private final cacheLock:Ljava/lang/Object;

.field private volatile hashValue:I

.field private volatile hashValueSet:Z

.field private internalCRLValue:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;


# direct methods
.method constructor <init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/asn1/x509/CertificateList;)V
    .locals 6
    .param p1, "bcHelper"    # Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    .param p2, "c"    # Lorg/bouncycastle/asn1/x509/CertificateList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bcHelper",
            "c"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 26
    invoke-static {p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->createSigAlgName(Lorg/bouncycastle/asn1/x509/CertificateList;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->createSigAlgParams(Lorg/bouncycastle/asn1/x509/CertificateList;)[B

    move-result-object v4

    invoke-static {p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->isIndirectCRL(Lorg/bouncycastle/asn1/x509/CertificateList;)Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "bcHelper":Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    .end local p2    # "c":Lorg/bouncycastle/asn1/x509/CertificateList;
    .local v1, "bcHelper":Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    .local v2, "c":Lorg/bouncycastle/asn1/x509/CertificateList;
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/asn1/x509/CertificateList;Ljava/lang/String;[BZ)V

    .line 18
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->cacheLock:Ljava/lang/Object;

    .line 27
    return-void
.end method

.method private static createSigAlgName(Lorg/bouncycastle/asn1/x509/CertificateList;)Ljava/lang/String;
    .locals 5
    .param p0, "c"    # Lorg/bouncycastle/asn1/x509/CertificateList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 117
    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->getSignatureName(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 119
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject$X509CRLException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CRL contents invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject$X509CRLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static createSigAlgParams(Lorg/bouncycastle/asn1/x509/CertificateList;)[B
    .locals 5
    .param p0, "c"    # Lorg/bouncycastle/asn1/x509/CertificateList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 129
    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 130
    .local v0, "parameters":Lorg/bouncycastle/asn1/ASN1Encodable;
    if-nez v0, :cond_0

    .line 132
    const/4 v1, 0x0

    return-object v1

    .line 135
    :cond_0
    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 137
    .end local v0    # "parameters":Lorg/bouncycastle/asn1/ASN1Encodable;
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/cert/CRLException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CRL contents invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getInternalCRL()Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;
    .locals 11

    .line 80
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->cacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->internalCRLValue:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->internalCRLValue:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    monitor-exit v1

    return-object v0

    .line 86
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 88
    const/4 v1, 0x0

    .line 89
    .local v1, "encoding":[B
    const/4 v2, 0x0

    .line 92
    .local v2, "exception":Ljava/security/cert/CRLException;
    :try_start_1
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->c:Lorg/bouncycastle/asn1/x509/CertificateList;

    const-string v3, "DER"

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/x509/CertificateList;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v0

    .line 97
    move-object v9, v1

    move-object v10, v2

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject$X509CRLException;

    invoke-direct {v3, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject$X509CRLException;-><init>(Ljava/lang/Throwable;)V

    move-object v2, v3

    move-object v9, v1

    move-object v10, v2

    .line 99
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "encoding":[B
    .end local v2    # "exception":Ljava/security/cert/CRLException;
    .local v9, "encoding":[B
    .local v10, "exception":Ljava/security/cert/CRLException;
    :goto_0
    new-instance v3, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->bcHelper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->c:Lorg/bouncycastle/asn1/x509/CertificateList;

    iget-object v6, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->sigAlgName:Ljava/lang/String;

    iget-object v7, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->sigAlgParams:[B

    iget-boolean v8, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->isIndirect:Z

    invoke-direct/range {v3 .. v10}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/asn1/x509/CertificateList;Ljava/lang/String;[BZ[BLjava/security/cert/CRLException;)V

    .line 102
    .local v3, "temp":Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->cacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 104
    :try_start_2
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->internalCRLValue:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    if-nez v0, :cond_1

    .line 106
    iput-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->internalCRLValue:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    .line 109
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->internalCRLValue:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    monitor-exit v2

    return-object v0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 86
    .end local v3    # "temp":Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;
    .end local v9    # "encoding":[B
    .end local v10    # "exception":Ljava/security/cert/CRLException;
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private static isIndirectCRL(Lorg/bouncycastle/asn1/x509/CertificateList;)Z
    .locals 3
    .param p0, "c"    # Lorg/bouncycastle/asn1/x509/CertificateList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 147
    :try_start_0
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->getExtensionOctets(Lorg/bouncycastle/asn1/x509/CertificateList;Ljava/lang/String;)[B

    move-result-object v0

    .line 148
    .local v0, "extOctets":[B
    if-nez v0, :cond_0

    .line 150
    const/4 v1, 0x0

    return v1

    .line 153
    :cond_0
    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->isIndirectCRL()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 155
    .end local v0    # "extOctets":[B
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/ExtCRLException;

    const-string v2, "Exception reading IssuingDistributionPoint"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/ExtCRLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 36
    if-ne p0, p1, :cond_0

    .line 38
    const/4 v0, 0x1

    return v0

    .line 41
    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;

    if-eqz v0, :cond_4

    .line 43
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;

    .line 45
    .local v0, "otherBC":Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;
    iget-boolean v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->hashValueSet:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->hashValueSet:Z

    if-eqz v1, :cond_1

    .line 47
    iget v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->hashValue:I

    iget v3, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->hashValue:I

    if-eq v1, v3, :cond_3

    .line 49
    return v2

    .line 52
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->internalCRLValue:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->internalCRLValue:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    if-nez v1, :cond_3

    .line 54
    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->c:Lorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/CertificateList;->getSignature()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    .line 55
    .local v1, "signature":Lorg/bouncycastle/asn1/ASN1BitString;
    if-eqz v1, :cond_3

    iget-object v3, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->c:Lorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/CertificateList;->getSignature()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1BitString;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 57
    return v2

    .line 61
    .end local v1    # "signature":Lorg/bouncycastle/asn1/ASN1BitString;
    :cond_3
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->getInternalCRL()Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    move-result-object v1

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->getInternalCRL()Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 64
    .end local v0    # "otherBC":Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;
    :cond_4
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->getInternalCRL()Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->getInternalCRL()Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 69
    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->hashValueSet:Z

    if-nez v0, :cond_0

    .line 71
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->getInternalCRL()Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->hashValue:I

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->hashValueSet:Z

    .line 75
    :cond_0
    iget v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->hashValue:I

    return v0
.end method
