.class public Lorg/bouncycastle/cert/crmf/CertificateRepMessageBuilder;
.super Ljava/lang/Object;
.source "CertificateRepMessageBuilder.java"


# instance fields
.field private final caCerts:[Lorg/bouncycastle/asn1/cmp/CMPCertificate;

.field private final responses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/asn1/cmp/CertResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lorg/bouncycastle/cert/X509CertificateHolder;)V
    .locals 4
    .param p1, "caCerts"    # [Lorg/bouncycastle/cert/X509CertificateHolder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "caCerts"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRepMessageBuilder;->responses:Ljava/util/List;

    .line 26
    array-length v0, p1

    new-array v0, v0, [Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    iput-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRepMessageBuilder;->caCerts:[Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    .line 28
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 30
    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/CertificateRepMessageBuilder;->caCerts:[Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    new-instance v2, Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    aget-object v3, p1, v0

    invoke-virtual {v3}, Lorg/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;)V

    aput-object v2, v1, v0

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public addCertificateResponse(Lorg/bouncycastle/cert/crmf/CertificateResponse;)Lorg/bouncycastle/cert/crmf/CertificateRepMessageBuilder;
    .locals 2
    .param p1, "response"    # Lorg/bouncycastle/cert/crmf/CertificateResponse;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRepMessageBuilder;->responses:Ljava/util/List;

    invoke-virtual {p1}, Lorg/bouncycastle/cert/crmf/CertificateResponse;->toASN1Structure()Lorg/bouncycastle/asn1/cmp/CertResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    return-object p0
.end method

.method public build()Lorg/bouncycastle/cert/crmf/CertificateRepMessage;
    .locals 4

    .line 43
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRepMessageBuilder;->caCerts:[Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    array-length v0, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Lorg/bouncycastle/asn1/cmp/CertRepMessage;

    iget-object v2, p0, Lorg/bouncycastle/cert/crmf/CertificateRepMessageBuilder;->caCerts:[Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    iget-object v3, p0, Lorg/bouncycastle/cert/crmf/CertificateRepMessageBuilder;->responses:Ljava/util/List;

    new-array v1, v1, [Lorg/bouncycastle/asn1/cmp/CertResponse;

    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/bouncycastle/asn1/cmp/CertResponse;

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/asn1/cmp/CertRepMessage;-><init>([Lorg/bouncycastle/asn1/cmp/CMPCertificate;[Lorg/bouncycastle/asn1/cmp/CertResponse;)V

    .local v0, "repMessage":Lorg/bouncycastle/asn1/cmp/CertRepMessage;
    goto :goto_0

    .line 50
    .end local v0    # "repMessage":Lorg/bouncycastle/asn1/cmp/CertRepMessage;
    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/cmp/CertRepMessage;

    iget-object v2, p0, Lorg/bouncycastle/cert/crmf/CertificateRepMessageBuilder;->responses:Ljava/util/List;

    new-array v1, v1, [Lorg/bouncycastle/asn1/cmp/CertResponse;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/bouncycastle/asn1/cmp/CertResponse;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/asn1/cmp/CertRepMessage;-><init>([Lorg/bouncycastle/asn1/cmp/CMPCertificate;[Lorg/bouncycastle/asn1/cmp/CertResponse;)V

    .line 53
    .restart local v0    # "repMessage":Lorg/bouncycastle/asn1/cmp/CertRepMessage;
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/CertificateRepMessageBuilder;->responses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 55
    new-instance v1, Lorg/bouncycastle/cert/crmf/CertificateRepMessage;

    invoke-direct {v1, v0}, Lorg/bouncycastle/cert/crmf/CertificateRepMessage;-><init>(Lorg/bouncycastle/asn1/cmp/CertRepMessage;)V

    return-object v1
.end method
