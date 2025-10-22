.class public Lorg/bouncycastle/cert/crmf/CertificateReqMessages;
.super Ljava/lang/Object;
.source "CertificateReqMessages.java"


# instance fields
.field private final reqs:[Lorg/bouncycastle/asn1/crmf/CertReqMsg;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/crmf/CertReqMessages;)V
    .locals 1
    .param p1, "certReqMessages"    # Lorg/bouncycastle/asn1/crmf/CertReqMessages;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certReqMessages"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/crmf/CertReqMessages;->toCertReqMsgArray()[Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateReqMessages;->reqs:[Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    .line 14
    return-void
.end method

.method public static fromPKIBody(Lorg/bouncycastle/asn1/cmp/PKIBody;)Lorg/bouncycastle/cert/crmf/CertificateReqMessages;
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

    .line 18
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cmp/PKIBody;->getType()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/cert/crmf/CertificateReqMessages;->isCertificateRequestMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    new-instance v0, Lorg/bouncycastle/cert/crmf/CertificateReqMessages;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cmp/PKIBody;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/crmf/CertReqMessages;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/CertReqMessages;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/crmf/CertificateReqMessages;-><init>(Lorg/bouncycastle/asn1/crmf/CertReqMessages;)V

    return-object v0

    .line 20
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

.method public static isCertificateRequestMessages(I)Z
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

    .line 28
    sparse-switch p0, :sswitch_data_0

    .line 37
    const/4 v0, 0x0

    return v0

    .line 35
    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_0
        0x7 -> :sswitch_0
        0x9 -> :sswitch_0
        0xd -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getRequests()[Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;
    .locals 4

    .line 43
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateReqMessages;->reqs:[Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    array-length v0, v0

    new-array v0, v0, [Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;

    .line 44
    .local v0, "requestMessages":[Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 46
    new-instance v2, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;

    iget-object v3, p0, Lorg/bouncycastle/cert/crmf/CertificateReqMessages;->reqs:[Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    aget-object v3, v3, v1

    invoke-direct {v2, v3}, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;-><init>(Lorg/bouncycastle/asn1/crmf/CertReqMsg;)V

    aput-object v2, v0, v1

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/crmf/CertReqMessages;
    .locals 2

    .line 54
    new-instance v0, Lorg/bouncycastle/asn1/crmf/CertReqMessages;

    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/CertificateReqMessages;->reqs:[Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/crmf/CertReqMessages;-><init>([Lorg/bouncycastle/asn1/crmf/CertReqMsg;)V

    return-object v0
.end method
