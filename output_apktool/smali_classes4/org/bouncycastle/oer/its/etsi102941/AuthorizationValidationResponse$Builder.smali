.class public Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse$Builder;
.super Ljava/lang/Object;
.source "AuthorizationValidationResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private confirmedSubjectAttributes:Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;

.field private requestHash:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private responseCode:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAuthorizationValidationResponse()Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse;
    .locals 4

    .line 126
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse$Builder;->requestHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse$Builder;->responseCode:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse$Builder;->confirmedSubjectAttributes:Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse;-><init>(Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;)V

    return-object v0
.end method

.method public setConfirmedSubjectAttributes(Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;)Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse$Builder;
    .locals 0
    .param p1, "confirmedSubjectAttributes"    # Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "confirmedSubjectAttributes"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse$Builder;->confirmedSubjectAttributes:Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;

    .line 121
    return-object p0
.end method

.method public setRequestHash(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse$Builder;
    .locals 0
    .param p1, "requestHash"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestHash"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse$Builder;->requestHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 103
    return-object p0
.end method

.method public setRequestHash([B)Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse$Builder;
    .locals 2
    .param p1, "requestHash"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestHash"
        }
    .end annotation

    .line 108
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse$Builder;->requestHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 109
    return-object p0
.end method

.method public setResponseCode(Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;)Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse$Builder;
    .locals 0
    .param p1, "responseCode"    # Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "responseCode"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse$Builder;->responseCode:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponseCode;

    .line 115
    return-object p0
.end method
