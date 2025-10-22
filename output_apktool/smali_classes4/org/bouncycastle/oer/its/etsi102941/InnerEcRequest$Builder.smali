.class public Lorg/bouncycastle/oer/its/etsi102941/InnerEcRequest$Builder;
.super Ljava/lang/Object;
.source "InnerEcRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/etsi102941/InnerEcRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private certificateFormat:Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateFormat;

.field private itsId:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private publicKeys:Lorg/bouncycastle/oer/its/etsi102941/basetypes/PublicKeys;

.field private requestedSubjectAttributes:Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInnerEcRequest()Lorg/bouncycastle/oer/its/etsi102941/InnerEcRequest;
    .locals 5

    .line 142
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/InnerEcRequest;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerEcRequest$Builder;->itsId:Lorg/bouncycastle/asn1/ASN1OctetString;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerEcRequest$Builder;->certificateFormat:Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateFormat;

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerEcRequest$Builder;->publicKeys:Lorg/bouncycastle/oer/its/etsi102941/basetypes/PublicKeys;

    iget-object v4, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerEcRequest$Builder;->requestedSubjectAttributes:Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/oer/its/etsi102941/InnerEcRequest;-><init>(Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateFormat;Lorg/bouncycastle/oer/its/etsi102941/basetypes/PublicKeys;Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;)V

    return-object v0
.end method

.method public setCertificateFormat(Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateFormat;)Lorg/bouncycastle/oer/its/etsi102941/InnerEcRequest$Builder;
    .locals 0
    .param p1, "certificateFormat"    # Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certificateFormat"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerEcRequest$Builder;->certificateFormat:Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateFormat;

    .line 125
    return-object p0
.end method

.method public setItsId(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/oer/its/etsi102941/InnerEcRequest$Builder;
    .locals 0
    .param p1, "itsId"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itsId"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerEcRequest$Builder;->itsId:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 113
    return-object p0
.end method

.method public setItsId([B)Lorg/bouncycastle/oer/its/etsi102941/InnerEcRequest$Builder;
    .locals 2
    .param p1, "itsId"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itsId"
        }
    .end annotation

    .line 118
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerEcRequest$Builder;->itsId:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 119
    return-object p0
.end method

.method public setPublicKeys(Lorg/bouncycastle/oer/its/etsi102941/basetypes/PublicKeys;)Lorg/bouncycastle/oer/its/etsi102941/InnerEcRequest$Builder;
    .locals 0
    .param p1, "publicKeys"    # Lorg/bouncycastle/oer/its/etsi102941/basetypes/PublicKeys;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "publicKeys"
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerEcRequest$Builder;->publicKeys:Lorg/bouncycastle/oer/its/etsi102941/basetypes/PublicKeys;

    .line 131
    return-object p0
.end method

.method public setRequestedSubjectAttributes(Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;)Lorg/bouncycastle/oer/its/etsi102941/InnerEcRequest$Builder;
    .locals 0
    .param p1, "requestedSubjectAttributes"    # Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestedSubjectAttributes"
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerEcRequest$Builder;->requestedSubjectAttributes:Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;

    .line 137
    return-object p0
.end method
