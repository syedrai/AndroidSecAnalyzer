.class public Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;
.super Ljava/lang/Object;
.source "BasicOCSPRespBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;

.field private responderID:Lorg/bouncycastle/cert/ocsp/RespID;

.field private responseExtensions:Lorg/bouncycastle/asn1/x509/Extensions;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/operator/DigestCalculator;)V
    .locals 1
    .param p1, "key"    # Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .param p2, "digCalc"    # Lorg/bouncycastle/operator/DigestCalculator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "digCalc"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->list:Ljava/util/List;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->responseExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    .line 120
    new-instance v0, Lorg/bouncycastle/cert/ocsp/RespID;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/cert/ocsp/RespID;-><init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/operator/DigestCalculator;)V

    iput-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->responderID:Lorg/bouncycastle/cert/ocsp/RespID;

    .line 121
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/cert/ocsp/RespID;)V
    .locals 1
    .param p1, "responderID"    # Lorg/bouncycastle/cert/ocsp/RespID;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "responderID"
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->list:Ljava/util/List;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->responseExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    .line 106
    iput-object p1, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->responderID:Lorg/bouncycastle/cert/ocsp/RespID;

    .line 107
    return-void
.end method


# virtual methods
.method public addResponse(Lorg/bouncycastle/cert/ocsp/CertificateID;Lorg/bouncycastle/cert/ocsp/CertificateStatus;)Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;
    .locals 6
    .param p1, "certID"    # Lorg/bouncycastle/cert/ocsp/CertificateID;
    .param p2, "certStatus"    # Lorg/bouncycastle/cert/ocsp/CertificateStatus;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "certID",
            "certStatus"
        }
    .end annotation

    .line 133
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "certID":Lorg/bouncycastle/cert/ocsp/CertificateID;
    .end local p2    # "certStatus":Lorg/bouncycastle/cert/ocsp/CertificateStatus;
    .local v1, "certID":Lorg/bouncycastle/cert/ocsp/CertificateID;
    .local v2, "certStatus":Lorg/bouncycastle/cert/ocsp/CertificateStatus;
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->addResponse(Lorg/bouncycastle/cert/ocsp/CertificateID;Lorg/bouncycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;

    .line 135
    return-object v0
.end method

.method public addResponse(Lorg/bouncycastle/cert/ocsp/CertificateID;Lorg/bouncycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;)Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;
    .locals 6
    .param p1, "certID"    # Lorg/bouncycastle/cert/ocsp/CertificateID;
    .param p2, "certStatus"    # Lorg/bouncycastle/cert/ocsp/CertificateStatus;
    .param p3, "thisUpdate"    # Ljava/util/Date;
    .param p4, "nextUpdate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "certID",
            "certStatus",
            "thisUpdate",
            "nextUpdate"
        }
    .end annotation

    .line 188
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "certID":Lorg/bouncycastle/cert/ocsp/CertificateID;
    .end local p2    # "certStatus":Lorg/bouncycastle/cert/ocsp/CertificateStatus;
    .end local p3    # "thisUpdate":Ljava/util/Date;
    .end local p4    # "nextUpdate":Ljava/util/Date;
    .local v1, "certID":Lorg/bouncycastle/cert/ocsp/CertificateID;
    .local v2, "certStatus":Lorg/bouncycastle/cert/ocsp/CertificateStatus;
    .local v3, "thisUpdate":Ljava/util/Date;
    .local v4, "nextUpdate":Ljava/util/Date;
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->addResponse(Lorg/bouncycastle/cert/ocsp/CertificateID;Lorg/bouncycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;

    .line 190
    return-object v0
.end method

.method public addResponse(Lorg/bouncycastle/cert/ocsp/CertificateID;Lorg/bouncycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;
    .locals 7
    .param p1, "certID"    # Lorg/bouncycastle/cert/ocsp/CertificateID;
    .param p2, "certStatus"    # Lorg/bouncycastle/cert/ocsp/CertificateStatus;
    .param p3, "thisUpdate"    # Ljava/util/Date;
    .param p4, "nextUpdate"    # Ljava/util/Date;
    .param p5, "singleExtensions"    # Lorg/bouncycastle/asn1/x509/Extensions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "certID",
            "certStatus",
            "thisUpdate",
            "nextUpdate",
            "singleExtensions"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->list:Ljava/util/List;

    new-instance v1, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "certID":Lorg/bouncycastle/cert/ocsp/CertificateID;
    .end local p2    # "certStatus":Lorg/bouncycastle/cert/ocsp/CertificateStatus;
    .end local p3    # "thisUpdate":Ljava/util/Date;
    .end local p4    # "nextUpdate":Ljava/util/Date;
    .end local p5    # "singleExtensions":Lorg/bouncycastle/asn1/x509/Extensions;
    .local v2, "certID":Lorg/bouncycastle/cert/ocsp/CertificateID;
    .local v3, "certStatus":Lorg/bouncycastle/cert/ocsp/CertificateStatus;
    .local v4, "thisUpdate":Ljava/util/Date;
    .local v5, "nextUpdate":Ljava/util/Date;
    .local v6, "singleExtensions":Lorg/bouncycastle/asn1/x509/Extensions;
    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;-><init>(Lorg/bouncycastle/cert/ocsp/CertificateID;Lorg/bouncycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/Extensions;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    return-object p0
.end method

.method public addResponse(Lorg/bouncycastle/cert/ocsp/CertificateID;Lorg/bouncycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;
    .locals 6
    .param p1, "certID"    # Lorg/bouncycastle/cert/ocsp/CertificateID;
    .param p2, "certStatus"    # Lorg/bouncycastle/cert/ocsp/CertificateStatus;
    .param p3, "nextUpdate"    # Ljava/util/Date;
    .param p4, "singleExtensions"    # Lorg/bouncycastle/asn1/x509/Extensions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "certID",
            "certStatus",
            "nextUpdate",
            "singleExtensions"
        }
    .end annotation

    .line 169
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "certID":Lorg/bouncycastle/cert/ocsp/CertificateID;
    .end local p2    # "certStatus":Lorg/bouncycastle/cert/ocsp/CertificateStatus;
    .end local p3    # "nextUpdate":Ljava/util/Date;
    .end local p4    # "singleExtensions":Lorg/bouncycastle/asn1/x509/Extensions;
    .local v1, "certID":Lorg/bouncycastle/cert/ocsp/CertificateID;
    .local v2, "certStatus":Lorg/bouncycastle/cert/ocsp/CertificateStatus;
    .local v4, "nextUpdate":Ljava/util/Date;
    .local v5, "singleExtensions":Lorg/bouncycastle/asn1/x509/Extensions;
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->addResponse(Lorg/bouncycastle/cert/ocsp/CertificateID;Lorg/bouncycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;

    .line 171
    return-object v0
.end method

.method public addResponse(Lorg/bouncycastle/cert/ocsp/CertificateID;Lorg/bouncycastle/cert/ocsp/CertificateStatus;Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;
    .locals 6
    .param p1, "certID"    # Lorg/bouncycastle/cert/ocsp/CertificateID;
    .param p2, "certStatus"    # Lorg/bouncycastle/cert/ocsp/CertificateStatus;
    .param p3, "singleExtensions"    # Lorg/bouncycastle/asn1/x509/Extensions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "certID",
            "certStatus",
            "singleExtensions"
        }
    .end annotation

    .line 150
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .end local p1    # "certID":Lorg/bouncycastle/cert/ocsp/CertificateID;
    .end local p2    # "certStatus":Lorg/bouncycastle/cert/ocsp/CertificateStatus;
    .end local p3    # "singleExtensions":Lorg/bouncycastle/asn1/x509/Extensions;
    .local v1, "certID":Lorg/bouncycastle/cert/ocsp/CertificateID;
    .local v2, "certStatus":Lorg/bouncycastle/cert/ocsp/CertificateStatus;
    .local v5, "singleExtensions":Lorg/bouncycastle/asn1/x509/Extensions;
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->addResponse(Lorg/bouncycastle/cert/ocsp/CertificateID;Lorg/bouncycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;

    .line 152
    return-object v0
.end method

.method public build(Lorg/bouncycastle/operator/ContentSigner;[Lorg/bouncycastle/cert/X509CertificateHolder;Ljava/util/Date;)Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;
    .locals 9
    .param p1, "signer"    # Lorg/bouncycastle/operator/ContentSigner;
    .param p2, "chain"    # [Lorg/bouncycastle/cert/X509CertificateHolder;
    .param p3, "producedAt"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "signer",
            "chain",
            "producedAt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 235
    .local v0, "it":Ljava/util/Iterator;
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 237
    .local v1, "responses":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;

    invoke-virtual {v2}, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->toResponse()Lorg/bouncycastle/asn1/ocsp/SingleResponse;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    goto :goto_0

    .line 243
    :catch_0
    move-exception v2

    .line 245
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/bouncycastle/cert/ocsp/OCSPException;

    const-string v4, "exception creating Request"

    invoke-direct {v3, v4, v2}, Lorg/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 249
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v2, Lorg/bouncycastle/asn1/ocsp/ResponseData;

    iget-object v3, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->responderID:Lorg/bouncycastle/cert/ocsp/RespID;

    invoke-virtual {v3}, Lorg/bouncycastle/cert/ocsp/RespID;->toASN1Primitive()Lorg/bouncycastle/asn1/ocsp/ResponderID;

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {v4, p3}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/util/Date;)V

    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    iget-object v6, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->responseExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/bouncycastle/asn1/ocsp/ResponseData;-><init>(Lorg/bouncycastle/asn1/ocsp/ResponderID;Lorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/ASN1Sequence;Lorg/bouncycastle/asn1/x509/Extensions;)V

    .line 254
    .local v2, "tbsResp":Lorg/bouncycastle/asn1/ocsp/ResponseData;
    :try_start_1
    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 256
    .local v3, "sigOut":Ljava/io/OutputStream;
    const-string v4, "DER"

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ocsp/ResponseData;->getEncoded(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 257
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 259
    new-instance v4, Lorg/bouncycastle/asn1/DERBitString;

    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getSignature()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 264
    .end local v3    # "sigOut":Ljava/io/OutputStream;
    .local v4, "bitSig":Lorg/bouncycastle/asn1/DERBitString;
    nop

    .line 266
    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    .line 268
    .local v3, "sigAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    const/4 v5, 0x0

    .line 269
    .local v5, "chainSeq":Lorg/bouncycastle/asn1/DERSequence;
    if-eqz p2, :cond_2

    array-length v6, p2

    if-lez v6, :cond_2

    .line 271
    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 273
    .local v6, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v8, p2

    if-eq v7, v8, :cond_1

    .line 275
    aget-object v8, p2, v7

    invoke-virtual {v8}, Lorg/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 273
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 278
    .end local v7    # "i":I
    :cond_1
    new-instance v7, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v7, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object v5, v7

    .line 281
    .end local v6    # "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_2
    new-instance v6, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

    new-instance v7, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-direct {v7, v2, v3, v4, v5}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;-><init>(Lorg/bouncycastle/asn1/ocsp/ResponseData;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/DERBitString;Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-direct {v6, v7}, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;-><init>(Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;)V

    return-object v6

    .line 261
    .end local v3    # "sigAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v4    # "bitSig":Lorg/bouncycastle/asn1/DERBitString;
    .end local v5    # "chainSeq":Lorg/bouncycastle/asn1/DERSequence;
    :catch_1
    move-exception v3

    .line 263
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/bouncycastle/cert/ocsp/OCSPException;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception processing TBSRequest: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lorg/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public setResponseExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;
    .locals 0
    .param p1, "responseExtensions"    # Lorg/bouncycastle/asn1/x509/Extensions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "responseExtensions"
        }
    .end annotation

    .line 222
    iput-object p1, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->responseExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    .line 224
    return-object p0
.end method
