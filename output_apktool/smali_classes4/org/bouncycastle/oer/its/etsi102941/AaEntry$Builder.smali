.class public Lorg/bouncycastle/oer/its/etsi102941/AaEntry$Builder;
.super Ljava/lang/Object;
.source "AaEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/etsi102941/AaEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private aaCertificate:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

.field private accessPoint:Lorg/bouncycastle/oer/its/etsi102941/Url;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAaEntry()Lorg/bouncycastle/oer/its/etsi102941/AaEntry;
    .locals 3

    .line 94
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/AaEntry;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/etsi102941/AaEntry$Builder;->aaCertificate:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi102941/AaEntry$Builder;->accessPoint:Lorg/bouncycastle/oer/its/etsi102941/Url;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/etsi102941/AaEntry;-><init>(Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;Lorg/bouncycastle/oer/its/etsi102941/Url;)V

    return-object v0
.end method

.method public setAaCertificate(Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;)Lorg/bouncycastle/oer/its/etsi102941/AaEntry$Builder;
    .locals 0
    .param p1, "aaCertificate"    # Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aaCertificate"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/AaEntry$Builder;->aaCertificate:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

    .line 83
    return-object p0
.end method

.method public setAccessPoint(Lorg/bouncycastle/oer/its/etsi102941/Url;)Lorg/bouncycastle/oer/its/etsi102941/AaEntry$Builder;
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

    .line 88
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/AaEntry$Builder;->accessPoint:Lorg/bouncycastle/oer/its/etsi102941/Url;

    .line 89
    return-object p0
.end method
