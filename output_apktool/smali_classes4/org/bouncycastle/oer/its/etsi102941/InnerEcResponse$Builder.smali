.class public Lorg/bouncycastle/oer/its/etsi102941/InnerEcResponse$Builder;
.super Ljava/lang/Object;
.source "InnerEcResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/etsi102941/InnerEcResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private certificate:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

.field private requestHash:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private responseCode:Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInnerEcResponse()Lorg/bouncycastle/oer/its/etsi102941/InnerEcResponse;
    .locals 4

    .line 125
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/InnerEcResponse;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerEcResponse$Builder;->requestHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerEcResponse$Builder;->responseCode:Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerEcResponse$Builder;->certificate:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/oer/its/etsi102941/InnerEcResponse;-><init>(Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;)V

    return-object v0
.end method

.method public setCertificate(Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;)Lorg/bouncycastle/oer/its/etsi102941/InnerEcResponse$Builder;
    .locals 0
    .param p1, "certificate"    # Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certificate"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerEcResponse$Builder;->certificate:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

    .line 120
    return-object p0
.end method

.method public setRequestHash(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/oer/its/etsi102941/InnerEcResponse$Builder;
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

    .line 100
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerEcResponse$Builder;->requestHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 101
    return-object p0
.end method

.method public setRequestHash([B)Lorg/bouncycastle/oer/its/etsi102941/InnerEcResponse$Builder;
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

    .line 106
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerEcResponse$Builder;->requestHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 107
    return-object p0
.end method

.method public setResponseCode(Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;)Lorg/bouncycastle/oer/its/etsi102941/InnerEcResponse$Builder;
    .locals 0
    .param p1, "responseCode"    # Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "responseCode"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerEcResponse$Builder;->responseCode:Lorg/bouncycastle/oer/its/etsi102941/EnrolmentResponseCode;

    .line 114
    return-object p0
.end method
