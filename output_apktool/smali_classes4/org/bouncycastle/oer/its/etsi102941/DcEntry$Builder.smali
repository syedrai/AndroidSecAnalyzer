.class public Lorg/bouncycastle/oer/its/etsi102941/DcEntry$Builder;
.super Ljava/lang/Object;
.source "DcEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/etsi102941/DcEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private cert:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfHashedId8;

.field private url:Lorg/bouncycastle/oer/its/etsi102941/Url;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDcEntry()Lorg/bouncycastle/oer/its/etsi102941/DcEntry;
    .locals 3

    .line 93
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/DcEntry;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/etsi102941/DcEntry$Builder;->url:Lorg/bouncycastle/oer/its/etsi102941/Url;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi102941/DcEntry$Builder;->cert:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfHashedId8;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/etsi102941/DcEntry;-><init>(Lorg/bouncycastle/oer/its/etsi102941/Url;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfHashedId8;)V

    return-object v0
.end method

.method public setCert(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfHashedId8;)Lorg/bouncycastle/oer/its/etsi102941/DcEntry$Builder;
    .locals 0
    .param p1, "cert"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfHashedId8;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cert"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/DcEntry$Builder;->cert:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfHashedId8;

    .line 88
    return-object p0
.end method

.method public setUrl(Lorg/bouncycastle/oer/its/etsi102941/Url;)Lorg/bouncycastle/oer/its/etsi102941/DcEntry$Builder;
    .locals 0
    .param p1, "url"    # Lorg/bouncycastle/oer/its/etsi102941/Url;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/DcEntry$Builder;->url:Lorg/bouncycastle/oer/its/etsi102941/Url;

    .line 82
    return-object p0
.end method
