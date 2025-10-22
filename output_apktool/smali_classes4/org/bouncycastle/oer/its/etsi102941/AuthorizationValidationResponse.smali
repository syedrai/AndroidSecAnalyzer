.class public Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "AuthorizationValidationResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse$Builder;
    }
.end annotation


# instance fields
.field private final confirmedSubjectAttributes:Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;

.field private final requestHash:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private final responseCode:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;)V
    .locals 0
    .param p1, "requestHash"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .param p2, "responseCode"    # Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;
    .param p3, "confirmedSubjectAttributes"    # Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestHash",
            "responseCode",
            "confirmedSubjectAttributes"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse;->requestHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 39
    iput-object p2, p0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse;->responseCode:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

    .line 40
    iput-object p3, p0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse;->confirmedSubjectAttributes:Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;

    .line 41
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

    .line 44
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse;->requestHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse;->responseCode:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

    .line 51
    const-class v0, Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse;->confirmedSubjectAttributes:Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;

    .line 52
    return-void

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "expected sequence size of 3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static builder()Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse$Builder;
    .locals 1

    .line 91
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse$Builder;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse;
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

    .line 56
    instance-of v0, p0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse;

    if-eqz v0, :cond_0

    .line 58
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse;

    return-object v0

    .line 61
    :cond_0
    if-eqz p0, :cond_1

    .line 63
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 65
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getConfirmedSubjectAttributes()Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse;->confirmedSubjectAttributes:Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;

    return-object v0
.end method

.method public getRequestHash()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse;->requestHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getResponseCode()Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse;->responseCode:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 86
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse;->requestHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse;->responseCode:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

    aput-object v3, v1, v2

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse;->confirmedSubjectAttributes:Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;

    invoke-static {v2}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
