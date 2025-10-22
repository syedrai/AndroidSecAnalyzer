.class public Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "EtsiTs102941DataContent.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final authorizationRequest:I = 0x2

.field public static final authorizationResponse:I = 0x3

.field public static final authorizationValidationRequest:I = 0x7

.field public static final authorizationValidationResponse:I = 0x8

.field public static final caCertificateRequest:I = 0x9

.field public static final certificateRevocationList:I = 0x4

.field public static final certificateTrustListRca:I = 0x6

.field public static final certificateTrustListTlm:I = 0x5

.field public static final doubleSignedlinkCertificateRca:I = 0xc

.field public static final enrolmentRequest:I = 0x0

.field public static final enrolmentResponse:I = 0x1

.field public static final linkCertificateTlm:I = 0xa

.field public static final singleSignedLinkCertificateRca:I = 0xb


# instance fields
.field private final choice:I

.field private final etsiTs102941DataContent:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "choice"    # I
    .param p2, "etsiTs102941DataContent"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "choice",
            "etsiTs102941DataContent"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 57
    iput p1, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;->choice:I

    .line 58
    iput-object p2, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;->etsiTs102941DataContent:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 59
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 4
    .param p1, "asn1TaggedObject"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "asn1TaggedObject"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 64
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;->choice:I

    .line 65
    iget v0, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;->choice:I

    packed-switch v0, :pswitch_data_0

    .line 100
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;->choice:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "choice not implemented "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :pswitch_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/etsi102941/CaCertificateRequest;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/CaCertificateRequest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;->etsiTs102941DataContent:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 93
    return-void

    .line 89
    :pswitch_2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;->etsiTs102941DataContent:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 90
    return-void

    .line 86
    :pswitch_3
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationRequest;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationRequest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;->etsiTs102941DataContent:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 87
    return-void

    .line 83
    :pswitch_4
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedRcaCtl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedRcaCtl;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;->etsiTs102941DataContent:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 84
    return-void

    .line 80
    :pswitch_5
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedTlmCtl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedTlmCtl;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;->etsiTs102941DataContent:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 81
    return-void

    .line 77
    :pswitch_6
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/etsi102941/InnerAtResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/InnerAtResponse;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;->etsiTs102941DataContent:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 78
    return-void

    .line 74
    :pswitch_7
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/etsi102941/InnerAtRequest;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/InnerAtRequest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;->etsiTs102941DataContent:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 75
    return-void

    .line 71
    :pswitch_8
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/etsi102941/InnerEcResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/InnerEcResponse;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;->etsiTs102941DataContent:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 72
    return-void

    .line 68
    :pswitch_9
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/etsi102941/InnerEcRequestSignedForPop;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/InnerEcRequestSignedForPop;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;->etsiTs102941DataContent:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 69
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;
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

    .line 116
    instance-of v0, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;

    if-eqz v0, :cond_0

    .line 118
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;

    return-object v0

    .line 121
    :cond_0
    if-eqz p0, :cond_1

    .line 123
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;

    const/16 v1, 0x80

    invoke-static {p0, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    .line 126
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getChoice()I
    .locals 1

    .line 106
    iget v0, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;->choice:I

    return v0
.end method

.method public getEtsiTs102941DataContent()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;->etsiTs102941DataContent:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 131
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;->etsiTs102941DataContent:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
