.class public Lorg/bouncycastle/cert/crmf/CertificateReqMessagesBuilder;
.super Ljava/lang/Object;
.source "CertificateReqMessagesBuilder.java"


# instance fields
.field private final requests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/asn1/crmf/CertReqMsg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateReqMessagesBuilder;->requests:Ljava/util/List;

    .line 15
    return-void
.end method


# virtual methods
.method public addRequest(Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;)V
    .locals 2
    .param p1, "request"    # Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateReqMessagesBuilder;->requests:Ljava/util/List;

    invoke-virtual {p1}, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->toASN1Structure()Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method

.method public build()Lorg/bouncycastle/cert/crmf/CertificateReqMessages;
    .locals 4

    .line 24
    new-instance v0, Lorg/bouncycastle/cert/crmf/CertificateReqMessages;

    new-instance v1, Lorg/bouncycastle/asn1/crmf/CertReqMessages;

    iget-object v2, p0, Lorg/bouncycastle/cert/crmf/CertificateReqMessagesBuilder;->requests:Ljava/util/List;

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    .line 25
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/crmf/CertReqMessages;-><init>([Lorg/bouncycastle/asn1/crmf/CertReqMsg;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/crmf/CertificateReqMessages;-><init>(Lorg/bouncycastle/asn1/crmf/CertReqMessages;)V

    .line 27
    .local v0, "certificateReqMessages":Lorg/bouncycastle/cert/crmf/CertificateReqMessages;
    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/CertificateReqMessagesBuilder;->requests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 29
    return-object v0
.end method
