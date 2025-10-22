.class public Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;
.super Ljava/lang/Object;
.source "BasicOCSPResp.java"

# interfaces
.implements Lorg/bouncycastle/util/Encodable;


# instance fields
.field private data:Lorg/bouncycastle/asn1/ocsp/ResponseData;

.field private extensions:Lorg/bouncycastle/asn1/x509/Extensions;

.field private resp:Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;)V
    .locals 1
    .param p1, "resp"    # Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resp"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    .line 45
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getTbsResponseData()Lorg/bouncycastle/asn1/ocsp/ResponseData;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->data:Lorg/bouncycastle/asn1/ocsp/ResponseData;

    .line 46
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getTbsResponseData()Lorg/bouncycastle/asn1/ocsp/ResponseData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/ResponseData;->getResponseExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    .line 47
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 207
    if-ne p1, p0, :cond_0

    .line 209
    const/4 v0, 0x1

    return v0

    .line 212
    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

    if-nez v0, :cond_1

    .line 214
    const/4 v0, 0x0

    return v0

    .line 217
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

    .line 219
    .local v0, "r":Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;
    iget-object v1, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    iget-object v2, v0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getCerts()[Lorg/bouncycastle/cert/X509CertificateHolder;
    .locals 5

    .line 149
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getCerts()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getCerts()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 153
    .local v0, "s":Lorg/bouncycastle/asn1/ASN1Sequence;
    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v1, v1, [Lorg/bouncycastle/cert/X509CertificateHolder;

    .line 157
    .local v1, "certs":[Lorg/bouncycastle/cert/X509CertificateHolder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-eq v2, v3, :cond_0

    .line 159
    new-instance v3, Lorg/bouncycastle/cert/X509CertificateHolder;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/cert/X509CertificateHolder;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;)V

    aput-object v3, v1, v2

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 165
    .end local v1    # "certs":[Lorg/bouncycastle/cert/X509CertificateHolder;
    :cond_1
    sget-object v1, Lorg/bouncycastle/cert/ocsp/OCSPUtils;->EMPTY_CERTS:[Lorg/bouncycastle/cert/X509CertificateHolder;

    return-object v1

    .line 169
    .end local v0    # "s":Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_2
    sget-object v0, Lorg/bouncycastle/cert/ocsp/OCSPUtils;->EMPTY_CERTS:[Lorg/bouncycastle/cert/X509CertificateHolder;

    return-object v0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-static {v0}, Lorg/bouncycastle/cert/ocsp/OCSPUtils;->getCriticalExtensionOIDs(Lorg/bouncycastle/asn1/x509/Extensions;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;
    .locals 1
    .param p1, "oid"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oid"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object v0

    return-object v0

    .line 115
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtensionOIDs()Ljava/util/List;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-static {v0}, Lorg/bouncycastle/cert/ocsp/OCSPUtils;->getExtensionOIDs(Lorg/bouncycastle/asn1/x509/Extensions;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-static {v0}, Lorg/bouncycastle/cert/ocsp/OCSPUtils;->getNonCriticalExtensionOIDs(Lorg/bouncycastle/asn1/x509/Extensions;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getProducedAt()Ljava/util/Date;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->data:Lorg/bouncycastle/asn1/ocsp/ResponseData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/ResponseData;->getProducedAt()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/cert/ocsp/OCSPUtils;->extractDate(Lorg/bouncycastle/asn1/ASN1GeneralizedTime;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getResponderId()Lorg/bouncycastle/cert/ocsp/RespID;
    .locals 2

    .line 82
    new-instance v0, Lorg/bouncycastle/cert/ocsp/RespID;

    iget-object v1, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->data:Lorg/bouncycastle/asn1/ocsp/ResponseData;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ocsp/ResponseData;->getResponderID()Lorg/bouncycastle/asn1/ocsp/ResponderID;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/ocsp/RespID;-><init>(Lorg/bouncycastle/asn1/ocsp/ResponderID;)V

    return-object v0
.end method

.method public getResponses()[Lorg/bouncycastle/cert/ocsp/SingleResp;
    .locals 5

    .line 92
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->data:Lorg/bouncycastle/asn1/ocsp/ResponseData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/ResponseData;->getResponses()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 93
    .local v0, "s":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v1, v1, [Lorg/bouncycastle/cert/ocsp/SingleResp;

    .line 95
    .local v1, "rs":[Lorg/bouncycastle/cert/ocsp/SingleResp;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-eq v2, v3, :cond_0

    .line 97
    new-instance v3, Lorg/bouncycastle/cert/ocsp/SingleResp;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/SingleResponse;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/cert/ocsp/SingleResp;-><init>(Lorg/bouncycastle/asn1/ocsp/SingleResponse;)V

    aput-object v3, v1, v2

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public getSignature()[B
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getSignature()Lorg/bouncycastle/asn1/DERBitString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERBitString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public getSignatureAlgOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getSignatureAlgorithmID()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getTBSResponseData()[B
    .locals 2

    .line 57
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getTbsResponseData()Lorg/bouncycastle/asn1/ocsp/ResponseData;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ocsp/ResponseData;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 59
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getVersion()I
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->data:Lorg/bouncycastle/asn1/ocsp/ResponseData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/ResponseData;->getVersion()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasExtensions()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 224
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSignatureValid(Lorg/bouncycastle/operator/ContentVerifierProvider;)Z
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
            Lorg/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 182
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/operator/ContentVerifierProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/ContentVerifier;

    move-result-object v0

    .line 183
    .local v0, "verifier":Lorg/bouncycastle/operator/ContentVerifier;
    invoke-interface {v0}, Lorg/bouncycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 185
    .local v1, "vOut":Ljava/io/OutputStream;
    iget-object v2, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getTbsResponseData()Lorg/bouncycastle/asn1/ocsp/ResponseData;

    move-result-object v2

    const-string v3, "DER"

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ocsp/ResponseData;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 186
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 188
    invoke-virtual {p0}, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->getSignature()[B

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/bouncycastle/operator/ContentVerifier;->verify([B)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 190
    .end local v0    # "verifier":Lorg/bouncycastle/operator/ContentVerifier;
    .end local v1    # "vOut":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/bouncycastle/cert/ocsp/OCSPException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception processing sig: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
