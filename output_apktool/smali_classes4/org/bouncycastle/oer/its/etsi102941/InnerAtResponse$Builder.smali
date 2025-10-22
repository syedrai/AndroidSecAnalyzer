.class public Lorg/bouncycastle/oer/its/etsi102941/InnerAtResponse$Builder;
.super Ljava/lang/Object;
.source "InnerAtResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/etsi102941/InnerAtResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private certificate:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

.field private requestHash:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private responseCode:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInnerAtResponse()Lorg/bouncycastle/oer/its/etsi102941/InnerAtResponse;
    .locals 4

    .line 123
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/InnerAtResponse;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerAtResponse$Builder;->requestHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerAtResponse$Builder;->responseCode:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerAtResponse$Builder;->certificate:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/oer/its/etsi102941/InnerAtResponse;-><init>(Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;)V

    return-object v0
.end method

.method public setCertificate(Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;)Lorg/bouncycastle/oer/its/etsi102941/InnerAtResponse$Builder;
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

    .line 117
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerAtResponse$Builder;->certificate:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

    .line 118
    return-object p0
.end method

.method public setRequestHash(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/oer/its/etsi102941/InnerAtResponse$Builder;
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

    .line 99
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerAtResponse$Builder;->requestHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 100
    return-object p0
.end method

.method public setRequestHash([B)Lorg/bouncycastle/oer/its/etsi102941/InnerAtResponse$Builder;
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

    .line 105
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerAtResponse$Builder;->requestHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 106
    return-object p0
.end method

.method public setResponseCode(Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;)Lorg/bouncycastle/oer/its/etsi102941/InnerAtResponse$Builder;
    .locals 0
    .param p1, "responseCode"    # Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "responseCode"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/InnerAtResponse$Builder;->responseCode:Lorg/bouncycastle/oer/its/etsi102941/AuthorizationResponseCode;

    .line 112
    return-object p0
.end method
