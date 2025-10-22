.class public Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl$Builder;
.super Ljava/lang/Object;
.source "ToBeSignedCrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private entries:Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCrlEntry;

.field private nextUpdate:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

.field private thisUpdate:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

.field private version:Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createToBeSignedCrl()Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl;
    .locals 5

    .line 127
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl$Builder;->version:Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl$Builder;->thisUpdate:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl$Builder;->nextUpdate:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    iget-object v4, p0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl$Builder;->entries:Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCrlEntry;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl;-><init>(Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCrlEntry;)V

    return-object v0
.end method

.method public setEntries(Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCrlEntry;)Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl$Builder;
    .locals 0
    .param p1, "entries"    # Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCrlEntry;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entries"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl$Builder;->entries:Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCrlEntry;

    .line 122
    return-object p0
.end method

.method public setNextUpdate(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;)Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl$Builder;
    .locals 0
    .param p1, "nextUpdate"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nextUpdate"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl$Builder;->nextUpdate:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    .line 116
    return-object p0
.end method

.method public setThisUpdate(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;)Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl$Builder;
    .locals 0
    .param p1, "thisUpdate"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thisUpdate"
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl$Builder;->thisUpdate:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    .line 110
    return-object p0
.end method

.method public setVersion(Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;)Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl$Builder;
    .locals 0
    .param p1, "version"    # Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl$Builder;->version:Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;

    .line 104
    return-object p0
.end method
