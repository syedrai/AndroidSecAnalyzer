.class public Lorg/bouncycastle/cert/crmf/CertificateRepMessage;
.super Ljava/lang/Object;
.source "CertificateRepMessage.java"


# instance fields
.field private final caCerts:[Lorg/bouncycastle/asn1/cmp/CMPCertificate;

.field private final resps:[Lorg/bouncycastle/asn1/cmp/CertResponse;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/CertRepMessage;)V
    .locals 1
    .param p1, "repMessage"    # Lorg/bouncycastle/asn1/cmp/CertRepMessage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "repMessage"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cmp/CertRepMessage;->getResponse()[Lorg/bouncycastle/asn1/cmp/CertResponse;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRepMessage;->resps:[Lorg/bouncycastle/asn1/cmp/CertResponse;

    .line 21
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cmp/CertRepMessage;->getCaPubs()[Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRepMessage;->caCerts:[Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    .line 22
    return-void
.end method

.method public static fromPKIBody(Lorg/bouncycastle/asn1/cmp/PKIBody;)Lorg/bouncycastle/cert/crmf/CertificateRepMessage;
    .locals 4
    .param p0, "pkiBody"    # Lorg/bouncycastle/asn1/cmp/PKIBody;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkiBody"
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cmp/PKIBody;->getType()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/cert/crmf/CertificateRepMessage;->isCertificateRepMessage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Lorg/bouncycastle/cert/crmf/CertificateRepMessage;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cmp/PKIBody;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/cmp/CertRepMessage;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CertRepMessage;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/crmf/CertificateRepMessage;-><init>(Lorg/bouncycastle/asn1/cmp/CertRepMessage;)V

    return-object v0

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cmp/PKIBody;->getType()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content of PKIBody wrong type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isCertificateRepMessage(I)Z
    .locals 1
    .param p0, "bodyType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bodyType"
        }
    .end annotation

    .line 36
    sparse-switch p0, :sswitch_data_0

    .line 44
    const/4 v0, 0x0

    return v0

    .line 42
    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_0
        0x8 -> :sswitch_0
        0xe -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getCMPCertificates()[Lorg/bouncycastle/asn1/cmp/CMPCertificate;
    .locals 4

    .line 98
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRepMessage;->caCerts:[Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    array-length v0, v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    .line 100
    .local v0, "certs":[Lorg/bouncycastle/asn1/cmp/CMPCertificate;
    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/CertificateRepMessage;->caCerts:[Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    return-object v0
.end method

.method public getResponses()[Lorg/bouncycastle/cert/crmf/CertificateResponse;
    .locals 4

    .line 50
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRepMessage;->resps:[Lorg/bouncycastle/asn1/cmp/CertResponse;

    array-length v0, v0

    new-array v0, v0, [Lorg/bouncycastle/cert/crmf/CertificateResponse;

    .line 51
    .local v0, "responses":[Lorg/bouncycastle/cert/crmf/CertificateResponse;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 53
    new-instance v2, Lorg/bouncycastle/cert/crmf/CertificateResponse;

    iget-object v3, p0, Lorg/bouncycastle/cert/crmf/CertificateRepMessage;->resps:[Lorg/bouncycastle/asn1/cmp/CertResponse;

    aget-object v3, v3, v1

    invoke-direct {v2, v3}, Lorg/bouncycastle/cert/crmf/CertificateResponse;-><init>(Lorg/bouncycastle/asn1/cmp/CertResponse;)V

    aput-object v2, v0, v1

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public getX509Certificates()[Lorg/bouncycastle/cert/X509CertificateHolder;
    .locals 4

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v0, "certs":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/cert/X509CertificateHolder;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/cert/crmf/CertificateRepMessage;->caCerts:[Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    array-length v2, v2

    if-eq v1, v2, :cond_1

    .line 65
    iget-object v2, p0, Lorg/bouncycastle/cert/crmf/CertificateRepMessage;->caCerts:[Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;->isX509v3PKCert()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    new-instance v2, Lorg/bouncycastle/cert/X509CertificateHolder;

    iget-object v3, p0, Lorg/bouncycastle/cert/crmf/CertificateRepMessage;->caCerts:[Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;->getX509v3PKCert()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/cert/X509CertificateHolder;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [Lorg/bouncycastle/cert/X509CertificateHolder;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/bouncycastle/cert/X509CertificateHolder;

    return-object v1
.end method

.method public isOnlyX509PKCertificates()Z
    .locals 3

    .line 81
    const/4 v0, 0x1

    .line 83
    .local v0, "isOnlyX509":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/cert/crmf/CertificateRepMessage;->caCerts:[Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 85
    iget-object v2, p0, Lorg/bouncycastle/cert/crmf/CertificateRepMessage;->caCerts:[Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;->isX509v3PKCert()Z

    move-result v2

    and-int/2addr v0, v2

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/cmp/CertRepMessage;
    .locals 3

    .line 107
    new-instance v0, Lorg/bouncycastle/asn1/cmp/CertRepMessage;

    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/CertificateRepMessage;->caCerts:[Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    iget-object v2, p0, Lorg/bouncycastle/cert/crmf/CertificateRepMessage;->resps:[Lorg/bouncycastle/asn1/cmp/CertResponse;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/CertRepMessage;-><init>([Lorg/bouncycastle/asn1/cmp/CMPCertificate;[Lorg/bouncycastle/asn1/cmp/CertResponse;)V

    return-object v0
.end method
