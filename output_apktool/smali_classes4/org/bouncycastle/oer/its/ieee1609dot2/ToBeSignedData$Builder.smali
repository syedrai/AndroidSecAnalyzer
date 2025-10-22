.class public Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData$Builder;
.super Ljava/lang/Object;
.source "ToBeSignedData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private headerInfo:Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;

.field private payload:Lorg/bouncycastle/oer/its/ieee1609dot2/SignedDataPayload;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createToBeSignedData()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData;
    .locals 3

    .line 95
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData$Builder;->payload:Lorg/bouncycastle/oer/its/ieee1609dot2/SignedDataPayload;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData$Builder;->headerInfo:Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/SignedDataPayload;Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;)V

    return-object v0
.end method

.method public setHeaderInfo(Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData$Builder;
    .locals 0
    .param p1, "headerInfo"    # Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "headerInfo"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData$Builder;->headerInfo:Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;

    .line 90
    return-object p0
.end method

.method public setPayload(Lorg/bouncycastle/oer/its/ieee1609dot2/SignedDataPayload;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData$Builder;
    .locals 0
    .param p1, "payload"    # Lorg/bouncycastle/oer/its/ieee1609dot2/SignedDataPayload;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "payload"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData$Builder;->payload:Lorg/bouncycastle/oer/its/ieee1609dot2/SignedDataPayload;

    .line 84
    return-object p0
.end method
