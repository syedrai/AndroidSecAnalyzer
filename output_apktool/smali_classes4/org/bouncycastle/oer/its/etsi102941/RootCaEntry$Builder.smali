.class public Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry$Builder;
.super Ljava/lang/Object;
.source "RootCaEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private selfsignedRootCa:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

.field private successorTo:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createRootCaEntry()Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry;
    .locals 3

    .line 97
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry$Builder;->selfsignedRootCa:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry$Builder;->successorTo:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry;-><init>(Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;)V

    return-object v0
.end method

.method public setSelfsignedRootCa(Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;)Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry$Builder;
    .locals 0
    .param p1, "selfsignedRootCa"    # Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selfsignedRootCa"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry$Builder;->selfsignedRootCa:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

    .line 85
    return-object p0
.end method

.method public setSuccessorTo(Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;)Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry$Builder;
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

    .line 90
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry$Builder;->successorTo:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

    .line 91
    return-object p0
.end method
