.class public Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;
.super Ljava/lang/Object;
.source "SignedData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private hashId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;

.field private signature:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;

.field private signer:Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;

.field private tbsData:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSignedData()Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;
    .locals 5

    .line 129
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;->hashId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;->tbsData:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData;

    iget-object v3, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;->signer:Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;

    iget-object v4, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;->signature:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData;Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;)V

    return-object v0
.end method

.method public setHashId(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;)Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;
    .locals 0
    .param p1, "hashId"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hashId"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;->hashId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;

    .line 106
    return-object p0
.end method

.method public setSignature(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;)Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;
    .locals 0
    .param p1, "signature"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signature"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;->signature:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;

    .line 124
    return-object p0
.end method

.method public setSigner(Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;)Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;
    .locals 0
    .param p1, "signer"    # Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signer"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;->signer:Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;

    .line 118
    return-object p0
.end method

.method public setTbsData(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData;)Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;
    .locals 0
    .param p1, "tbsData"    # Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tbsData"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;->tbsData:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData;

    .line 112
    return-object p0
.end method
