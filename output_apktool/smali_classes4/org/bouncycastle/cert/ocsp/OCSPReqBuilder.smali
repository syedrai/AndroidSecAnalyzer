.class public Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;
.super Ljava/lang/Object;
.source "OCSPReqBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;

.field private requestExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

.field private requestorName:Lorg/bouncycastle/asn1/x509/GeneralName;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->list:Ljava/util/List;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->requestorName:Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 27
    iput-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->requestExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-void
.end method

.method private generateRequest(Lorg/bouncycastle/operator/ContentSigner;[Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/cert/ocsp/OCSPReq;
    .locals 9
    .param p1, "contentSigner"    # Lorg/bouncycastle/operator/ContentSigner;
    .param p2, "chain"    # [Lorg/bouncycastle/cert/X509CertificateHolder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "contentSigner",
            "chain"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 113
    .local v0, "it":Ljava/util/Iterator;
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 115
    .local v1, "requests":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;

    invoke-virtual {v2}, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;->toRequest()Lorg/bouncycastle/asn1/ocsp/Request;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    goto :goto_0

    .line 121
    :catch_0
    move-exception v2

    .line 123
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/bouncycastle/cert/ocsp/OCSPException;

    const-string v4, "exception creating Request"

    invoke-direct {v3, v4, v2}, Lorg/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 127
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v2, Lorg/bouncycastle/asn1/ocsp/TBSRequest;

    iget-object v3, p0, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->requestorName:Lorg/bouncycastle/asn1/x509/GeneralName;

    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    iget-object v5, p0, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->requestExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-direct {v2, v3, v4, v5}, Lorg/bouncycastle/asn1/ocsp/TBSRequest;-><init>(Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/asn1/ASN1Sequence;Lorg/bouncycastle/asn1/x509/Extensions;)V

    .line 129
    .local v2, "tbsReq":Lorg/bouncycastle/asn1/ocsp/TBSRequest;
    const/4 v3, 0x0

    .line 131
    .local v3, "signature":Lorg/bouncycastle/asn1/ocsp/Signature;
    if-eqz p1, :cond_4

    .line 133
    iget-object v4, p0, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->requestorName:Lorg/bouncycastle/asn1/x509/GeneralName;

    if-eqz v4, :cond_3

    .line 140
    :try_start_1
    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 142
    .local v4, "sOut":Ljava/io/OutputStream;
    const-string v5, "DER"

    invoke-virtual {v2, v5}, Lorg/bouncycastle/asn1/ocsp/TBSRequest;->getEncoded(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 144
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 149
    .end local v4    # "sOut":Ljava/io/OutputStream;
    nop

    .line 151
    new-instance v4, Lorg/bouncycastle/asn1/DERBitString;

    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getSignature()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    .line 153
    .local v4, "bitSig":Lorg/bouncycastle/asn1/DERBitString;
    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    .line 155
    .local v5, "sigAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    if-eqz p2, :cond_2

    array-length v6, p2

    if-lez v6, :cond_2

    .line 157
    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 159
    .local v6, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v8, p2

    if-eq v7, v8, :cond_1

    .line 161
    aget-object v8, p2, v7

    invoke-virtual {v8}, Lorg/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 159
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 164
    .end local v7    # "i":I
    :cond_1
    new-instance v7, Lorg/bouncycastle/asn1/ocsp/Signature;

    new-instance v8, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v8, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v7, v5, v4, v8}, Lorg/bouncycastle/asn1/ocsp/Signature;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/DERBitString;Lorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object v3, v7

    .line 165
    .end local v6    # "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    goto :goto_2

    .line 168
    :cond_2
    new-instance v6, Lorg/bouncycastle/asn1/ocsp/Signature;

    invoke-direct {v6, v5, v4}, Lorg/bouncycastle/asn1/ocsp/Signature;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/DERBitString;)V

    move-object v3, v6

    goto :goto_2

    .line 146
    .end local v4    # "bitSig":Lorg/bouncycastle/asn1/DERBitString;
    .end local v5    # "sigAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :catch_1
    move-exception v4

    .line 148
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Lorg/bouncycastle/cert/ocsp/OCSPException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception processing TBSRequest: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lorg/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 135
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v4, Lorg/bouncycastle/cert/ocsp/OCSPException;

    const-string v5, "requestorName must be specified if request is signed."

    invoke-direct {v4, v5}, Lorg/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 172
    :cond_4
    :goto_2
    new-instance v4, Lorg/bouncycastle/cert/ocsp/OCSPReq;

    new-instance v5, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-direct {v5, v2, v3}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;-><init>(Lorg/bouncycastle/asn1/ocsp/TBSRequest;Lorg/bouncycastle/asn1/ocsp/Signature;)V

    invoke-direct {v4, v5}, Lorg/bouncycastle/cert/ocsp/OCSPReq;-><init>(Lorg/bouncycastle/asn1/ocsp/OCSPRequest;)V

    return-object v4
.end method


# virtual methods
.method public addRequest(Lorg/bouncycastle/cert/ocsp/CertificateID;)Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;
    .locals 3
    .param p1, "certId"    # Lorg/bouncycastle/cert/ocsp/CertificateID;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certId"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->list:Ljava/util/List;

    new-instance v1, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;-><init>(Lorg/bouncycastle/cert/ocsp/CertificateID;Lorg/bouncycastle/asn1/x509/Extensions;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    return-object p0
.end method

.method public addRequest(Lorg/bouncycastle/cert/ocsp/CertificateID;Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;
    .locals 2
    .param p1, "certId"    # Lorg/bouncycastle/cert/ocsp/CertificateID;
    .param p2, "singleRequestExtensions"    # Lorg/bouncycastle/asn1/x509/Extensions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "certId",
            "singleRequestExtensions"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->list:Ljava/util/List;

    new-instance v1, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;

    invoke-direct {v1, p1, p2}, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;-><init>(Lorg/bouncycastle/cert/ocsp/CertificateID;Lorg/bouncycastle/asn1/x509/Extensions;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    return-object p0
.end method

.method public build()Lorg/bouncycastle/cert/ocsp/OCSPReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->generateRequest(Lorg/bouncycastle/operator/ContentSigner;[Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/cert/ocsp/OCSPReq;

    move-result-object v0

    return-object v0
.end method

.method public build(Lorg/bouncycastle/operator/ContentSigner;[Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/cert/ocsp/OCSPReq;
    .locals 2
    .param p1, "signer"    # Lorg/bouncycastle/operator/ContentSigner;
    .param p2, "chain"    # [Lorg/bouncycastle/cert/X509CertificateHolder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "signer",
            "chain"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/ocsp/OCSPException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 192
    if-eqz p1, :cond_0

    .line 197
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->generateRequest(Lorg/bouncycastle/operator/ContentSigner;[Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/cert/ocsp/OCSPReq;

    move-result-object v0

    return-object v0

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no signer specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRequestExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;
    .locals 0
    .param p1, "requestExtensions"    # Lorg/bouncycastle/asn1/x509/Extensions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestExtensions"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->requestExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    .line 103
    return-object p0
.end method

.method public setRequestorName(Lorg/bouncycastle/asn1/x500/X500Name;)Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;
    .locals 2
    .param p1, "requestorName"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestorName"
        }
    .end annotation

    .line 85
    new-instance v0, Lorg/bouncycastle/asn1/x509/GeneralName;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->requestorName:Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 87
    return-object p0
.end method

.method public setRequestorName(Lorg/bouncycastle/asn1/x509/GeneralName;)Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;
    .locals 0
    .param p1, "requestorName"    # Lorg/bouncycastle/asn1/x509/GeneralName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestorName"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->requestorName:Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 95
    return-object p0
.end method
