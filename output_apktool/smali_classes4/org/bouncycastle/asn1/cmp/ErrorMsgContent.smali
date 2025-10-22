.class public Lorg/bouncycastle/asn1/cmp/ErrorMsgContent;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "ErrorMsgContent.java"


# instance fields
.field private errorCode:Lorg/bouncycastle/asn1/ASN1Integer;

.field private errorDetails:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

.field private final pkiStatusInfo:Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 35
    .local v0, "en":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/ErrorMsgContent;->pkiStatusInfo:Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    .line 37
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 41
    .local v1, "o":Ljava/lang/Object;
    instance-of v2, v1, Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v2, :cond_0

    .line 43
    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/cmp/ErrorMsgContent;->errorCode:Lorg/bouncycastle/asn1/ASN1Integer;

    goto :goto_1

    .line 47
    :cond_0
    invoke-static {v1}, Lorg/bouncycastle/asn1/cmp/PKIFreeText;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/cmp/ErrorMsgContent;->errorDetails:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    .line 49
    .end local v1    # "o":Ljava/lang/Object;
    :goto_1
    goto :goto_0

    .line 50
    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;)V
    .locals 1
    .param p1, "pkiStatusInfo"    # Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkiStatusInfo"
        }
    .end annotation

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/bouncycastle/asn1/cmp/ErrorMsgContent;-><init>(Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/cmp/PKIFreeText;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/cmp/PKIFreeText;)V
    .locals 2
    .param p1, "pkiStatusInfo"    # Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;
    .param p2, "errorCode"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .param p3, "errorDetails"    # Lorg/bouncycastle/asn1/cmp/PKIFreeText;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pkiStatusInfo",
            "errorCode",
            "errorDetails"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 62
    if-eqz p1, :cond_0

    .line 67
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/ErrorMsgContent;->pkiStatusInfo:Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    .line 68
    iput-object p2, p0, Lorg/bouncycastle/asn1/cmp/ErrorMsgContent;->errorCode:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 69
    iput-object p3, p0, Lorg/bouncycastle/asn1/cmp/ErrorMsgContent;->errorDetails:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    .line 70
    return-void

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'pkiStatusInfo\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "v"    # Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .param p2, "obj"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "obj"
        }
    .end annotation

    .line 128
    if-eqz p2, :cond_0

    .line 130
    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 132
    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/ErrorMsgContent;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 74
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/ErrorMsgContent;

    if-eqz v0, :cond_0

    .line 76
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmp/ErrorMsgContent;

    return-object v0

    .line 79
    :cond_0
    if-eqz p0, :cond_1

    .line 81
    new-instance v0, Lorg/bouncycastle/asn1/cmp/ErrorMsgContent;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/ErrorMsgContent;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 84
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getErrorCode()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/ErrorMsgContent;->errorCode:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getErrorDetails()Lorg/bouncycastle/asn1/cmp/PKIFreeText;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/ErrorMsgContent;->errorDetails:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    return-object v0
.end method

.method public getPKIStatusInfo()Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/ErrorMsgContent;->pkiStatusInfo:Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 117
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 119
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/ErrorMsgContent;->pkiStatusInfo:Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 120
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/ErrorMsgContent;->errorCode:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/asn1/cmp/ErrorMsgContent;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 121
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/ErrorMsgContent;->errorDetails:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/asn1/cmp/ErrorMsgContent;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 123
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
