.class public Lorg/bouncycastle/oer/its/etsi102941/EaEntry$Builder;
.super Ljava/lang/Object;
.source "EaEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/etsi102941/EaEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private aaAccessPoint:Lorg/bouncycastle/oer/its/etsi102941/Url;

.field private eaCertificate:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

.field private itsAccessPoint:Lorg/bouncycastle/oer/its/etsi102941/Url;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createEaEntry()Lorg/bouncycastle/oer/its/etsi102941/EaEntry;
    .locals 4

    .line 110
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/EaEntry;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/etsi102941/EaEntry$Builder;->eaCertificate:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi102941/EaEntry$Builder;->aaAccessPoint:Lorg/bouncycastle/oer/its/etsi102941/Url;

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi102941/EaEntry$Builder;->itsAccessPoint:Lorg/bouncycastle/oer/its/etsi102941/Url;

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/oer/its/etsi102941/EaEntry;-><init>(Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;Lorg/bouncycastle/oer/its/etsi102941/Url;Lorg/bouncycastle/oer/its/etsi102941/Url;)V

    return-object v0
.end method

.method public setAaAccessPoint(Lorg/bouncycastle/oer/its/etsi102941/Url;)Lorg/bouncycastle/oer/its/etsi102941/EaEntry$Builder;
    .locals 0
    .param p1, "aaAccessPoint"    # Lorg/bouncycastle/oer/its/etsi102941/Url;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aaAccessPoint"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/EaEntry$Builder;->aaAccessPoint:Lorg/bouncycastle/oer/its/etsi102941/Url;

    .line 99
    return-object p0
.end method

.method public setEaCertificate(Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;)Lorg/bouncycastle/oer/its/etsi102941/EaEntry$Builder;
    .locals 0
    .param p1, "eaCertificate"    # Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eaCertificate"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/EaEntry$Builder;->eaCertificate:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

    .line 93
    return-object p0
.end method

.method public setItsAccessPoint(Lorg/bouncycastle/oer/its/etsi102941/Url;)Lorg/bouncycastle/oer/its/etsi102941/EaEntry$Builder;
    .locals 0
    .param p1, "itsAccessPoint"    # Lorg/bouncycastle/oer/its/etsi102941/Url;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itsAccessPoint"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/EaEntry$Builder;->itsAccessPoint:Lorg/bouncycastle/oer/its/etsi102941/Url;

    .line 105
    return-object p0
.end method
