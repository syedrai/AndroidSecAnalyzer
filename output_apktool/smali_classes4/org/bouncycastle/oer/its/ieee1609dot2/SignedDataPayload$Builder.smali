.class public Lorg/bouncycastle/oer/its/ieee1609dot2/SignedDataPayload$Builder;
.super Ljava/lang/Object;
.source "SignedDataPayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/ieee1609dot2/SignedDataPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private data:Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data;

.field private extDataHash:Lorg/bouncycastle/oer/its/ieee1609dot2/HashedData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSignedDataPayload()Lorg/bouncycastle/oer/its/ieee1609dot2/SignedDataPayload;
    .locals 3

    .line 102
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedDataPayload;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedDataPayload$Builder;->data:Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedDataPayload$Builder;->extDataHash:Lorg/bouncycastle/oer/its/ieee1609dot2/HashedData;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedDataPayload;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data;Lorg/bouncycastle/oer/its/ieee1609dot2/HashedData;)V

    return-object v0
.end method

.method public setData(Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data;)Lorg/bouncycastle/oer/its/ieee1609dot2/SignedDataPayload$Builder;
    .locals 0
    .param p1, "data"    # Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedDataPayload$Builder;->data:Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data;

    .line 91
    return-object p0
.end method

.method public setExtDataHash(Lorg/bouncycastle/oer/its/ieee1609dot2/HashedData;)Lorg/bouncycastle/oer/its/ieee1609dot2/SignedDataPayload$Builder;
    .locals 0
    .param p1, "extDataHash"    # Lorg/bouncycastle/oer/its/ieee1609dot2/HashedData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extDataHash"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedDataPayload$Builder;->extDataHash:Lorg/bouncycastle/oer/its/ieee1609dot2/HashedData;

    .line 97
    return-object p0
.end method
