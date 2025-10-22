.class public Lorg/bouncycastle/oer/its/etsi102941/TlmEntry$Builder;
.super Ljava/lang/Object;
.source "TlmEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/etsi102941/TlmEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private accessPoint:Lorg/bouncycastle/oer/its/etsi102941/Url;

.field private selfSignedTLMCertificate:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

.field private successorTo:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTlmEntry()Lorg/bouncycastle/oer/its/etsi102941/TlmEntry;
    .locals 4

    .line 112
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/TlmEntry;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/etsi102941/TlmEntry$Builder;->selfSignedTLMCertificate:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi102941/TlmEntry$Builder;->successorTo:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi102941/TlmEntry$Builder;->accessPoint:Lorg/bouncycastle/oer/its/etsi102941/Url;

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/oer/its/etsi102941/TlmEntry;-><init>(Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;Lorg/bouncycastle/oer/its/etsi102941/Url;)V

    return-object v0
.end method

.method public setAccessPoint(Lorg/bouncycastle/oer/its/etsi102941/Url;)Lorg/bouncycastle/oer/its/etsi102941/TlmEntry$Builder;
    .locals 0
    .param p1, "accessPoint"    # Lorg/bouncycastle/oer/its/etsi102941/Url;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accessPoint"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/TlmEntry$Builder;->accessPoint:Lorg/bouncycastle/oer/its/etsi102941/Url;

    .line 107
    return-object p0
.end method

.method public setSelfSignedTLMCertificate(Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;)Lorg/bouncycastle/oer/its/etsi102941/TlmEntry$Builder;
    .locals 0
    .param p1, "selfSignedTLMCertificate"    # Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selfSignedTLMCertificate"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/TlmEntry$Builder;->selfSignedTLMCertificate:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

    .line 95
    return-object p0
.end method

.method public setSuccessorTo(Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;)Lorg/bouncycastle/oer/its/etsi102941/TlmEntry$Builder;
    .locals 0
    .param p1, "successorTo"    # Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "successorTo"
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/TlmEntry$Builder;->successorTo:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

    .line 101
    return-object p0
.end method
