.class public Lorg/bouncycastle/oer/its/etsi102941/CaCertificateRequest$Builder;
.super Ljava/lang/Object;
.source "CaCertificateRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/etsi102941/CaCertificateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private publicKeys:Lorg/bouncycastle/oer/its/etsi102941/basetypes/PublicKeys;

.field private requestedSubjectAttributes:Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createCaCertificateRequest()Lorg/bouncycastle/oer/its/etsi102941/CaCertificateRequest;
    .locals 3

    .line 94
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/CaCertificateRequest;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/etsi102941/CaCertificateRequest$Builder;->publicKeys:Lorg/bouncycastle/oer/its/etsi102941/basetypes/PublicKeys;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi102941/CaCertificateRequest$Builder;->requestedSubjectAttributes:Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/etsi102941/CaCertificateRequest;-><init>(Lorg/bouncycastle/oer/its/etsi102941/basetypes/PublicKeys;Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;)V

    return-object v0
.end method

.method public setPublicKeys(Lorg/bouncycastle/oer/its/etsi102941/basetypes/PublicKeys;)Lorg/bouncycastle/oer/its/etsi102941/CaCertificateRequest$Builder;
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

    .line 82
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/CaCertificateRequest$Builder;->publicKeys:Lorg/bouncycastle/oer/its/etsi102941/basetypes/PublicKeys;

    .line 83
    return-object p0
.end method

.method public setRequestedSubjectAttributes(Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;)Lorg/bouncycastle/oer/its/etsi102941/CaCertificateRequest$Builder;
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

    .line 88
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/CaCertificateRequest$Builder;->requestedSubjectAttributes:Lorg/bouncycastle/oer/its/etsi102941/basetypes/CertificateSubjectAttributes;

    .line 89
    return-object p0
.end method
