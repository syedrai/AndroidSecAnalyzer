.class public Lorg/bouncycastle/oer/its/etsi102941/InnerAtResponse;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "InnerAtResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/etsi102941/InnerAtResponse$Builder;
    }
.end annotation


# instance fields
.field private final certificate:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

.field private final requestHash:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private final responseCode:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;)V
    .locals 0
    .param p1, "requestHash"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .param p2, "responseCode"    # Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;
    .param p3, "certificate"    # Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestHash",
            "responseCode",
            "certificate"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerAtResponse;->requestHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 35
    iput-object p2, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerAtResponse;->responseCode:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    .line 36
    iput-object p3, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerAtResponse;->certificate:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

    .line 37
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerAtResponse;->requestHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerAtResponse;->responseCode:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    .line 47
    const-class v0, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerAtResponse;->certificate:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

    .line 48
    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "expected sequence size of 3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static builder()Lorg/bouncycastle/oer/its/etsi102941/InnerAtResponse$Builder;
    .locals 1

    .line 88
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/InnerAtResponse$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/etsi102941/InnerAtResponse$Builder;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/InnerAtResponse;
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

    .line 52
    instance-of v0, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerAtResponse;

    if-eqz v0, :cond_0

    .line 54
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/etsi102941/InnerAtResponse;

    return-object v0

    .line 57
    :cond_0
    if-eqz p0, :cond_1

    .line 59
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/InnerAtResponse;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/InnerAtResponse;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 62
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getCertificate()Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerAtResponse;->certificate:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

    return-object v0
.end method

.method public getRequestHash()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerAtResponse;->requestHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getResponseCode()Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerAtResponse;->responseCode:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 83
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerAtResponse;->requestHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerAtResponse;->responseCode:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    aput-object v3, v1, v2

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerAtResponse;->certificate:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

    invoke-static {v2}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
