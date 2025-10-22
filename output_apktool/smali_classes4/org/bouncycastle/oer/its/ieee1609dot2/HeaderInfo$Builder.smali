.class public Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;
.super Ljava/lang/Object;
.source "HeaderInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private contributedExtensions:Lorg/bouncycastle/oer/its/ieee1609dot2/ContributedExtensionBlocks;

.field private encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;

.field private expiryTime:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;

.field private generationLocation:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ThreeDLocation;

.field private generationTime:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;

.field private inlineP2pcdRequest:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfHashedId3;

.field private missingCrlIdentifier:Lorg/bouncycastle/oer/its/ieee1609dot2/MissingCrlIdentifier;

.field private p2pcdLearningRequest:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

.field private pduFunctionalType:Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;

.field private psid:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;

.field private requestedCertificate:Lorg/bouncycastle/oer/its/ieee1609dot2/Certificate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createHeaderInfo()Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;
    .locals 12

    .line 295
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->psid:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->generationTime:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;

    iget-object v3, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->expiryTime:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;

    iget-object v4, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->generationLocation:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ThreeDLocation;

    iget-object v5, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->p2pcdLearningRequest:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    iget-object v6, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->missingCrlIdentifier:Lorg/bouncycastle/oer/its/ieee1609dot2/MissingCrlIdentifier;

    iget-object v7, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;

    iget-object v8, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->inlineP2pcdRequest:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfHashedId3;

    iget-object v9, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->requestedCertificate:Lorg/bouncycastle/oer/its/ieee1609dot2/Certificate;

    iget-object v10, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->pduFunctionalType:Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;

    iget-object v11, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->contributedExtensions:Lorg/bouncycastle/oer/its/ieee1609dot2/ContributedExtensionBlocks;

    invoke-direct/range {v0 .. v11}, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ThreeDLocation;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;Lorg/bouncycastle/oer/its/ieee1609dot2/MissingCrlIdentifier;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfHashedId3;Lorg/bouncycastle/oer/its/ieee1609dot2/Certificate;Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;Lorg/bouncycastle/oer/its/ieee1609dot2/ContributedExtensionBlocks;)V

    return-object v0
.end method

.method public setContributedExtensions(Lorg/bouncycastle/oer/its/ieee1609dot2/ContributedExtensionBlocks;)Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;
    .locals 0
    .param p1, "contributedExtensions"    # Lorg/bouncycastle/oer/its/ieee1609dot2/ContributedExtensionBlocks;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contributedExtensions"
        }
    .end annotation

    .line 289
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->contributedExtensions:Lorg/bouncycastle/oer/its/ieee1609dot2/ContributedExtensionBlocks;

    .line 290
    return-object p0
.end method

.method public setEncryptionKey(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;)Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;
    .locals 0
    .param p1, "encryptionKey"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encryptionKey"
        }
    .end annotation

    .line 259
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;

    .line 260
    return-object p0
.end method

.method public setExpiryTime(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;)Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;
    .locals 0
    .param p1, "expiryTime"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expiryTime"
        }
    .end annotation

    .line 241
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->expiryTime:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;

    .line 242
    return-object p0
.end method

.method public setGenerationLocation(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ThreeDLocation;)Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;
    .locals 0
    .param p1, "generationLocation"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ThreeDLocation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "generationLocation"
        }
    .end annotation

    .line 247
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->generationLocation:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ThreeDLocation;

    .line 248
    return-object p0
.end method

.method public setGenerationTime(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;)Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;
    .locals 0
    .param p1, "generationTime"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "generationTime"
        }
    .end annotation

    .line 235
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->generationTime:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;

    .line 236
    return-object p0
.end method

.method public setInlineP2pcdRequest(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfHashedId3;)Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;
    .locals 0
    .param p1, "inlineP2pcdRequest"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfHashedId3;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inlineP2pcdRequest"
        }
    .end annotation

    .line 271
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->inlineP2pcdRequest:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfHashedId3;

    .line 272
    return-object p0
.end method

.method public setMissingCrlIdentifier(Lorg/bouncycastle/oer/its/ieee1609dot2/MissingCrlIdentifier;)Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;
    .locals 0
    .param p1, "missingCrlIdentifier"    # Lorg/bouncycastle/oer/its/ieee1609dot2/MissingCrlIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "missingCrlIdentifier"
        }
    .end annotation

    .line 265
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->missingCrlIdentifier:Lorg/bouncycastle/oer/its/ieee1609dot2/MissingCrlIdentifier;

    .line 266
    return-object p0
.end method

.method public setP2pcdLearningRequest(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;)Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;
    .locals 0
    .param p1, "p2pcdLearningRequest"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p2pcdLearningRequest"
        }
    .end annotation

    .line 253
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->p2pcdLearningRequest:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    .line 254
    return-object p0
.end method

.method public setPduFunctionalType(Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;)Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;
    .locals 0
    .param p1, "pduFunctionalType"    # Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pduFunctionalType"
        }
    .end annotation

    .line 283
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->pduFunctionalType:Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;

    .line 284
    return-object p0
.end method

.method public setPsid(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;)Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;
    .locals 0
    .param p1, "psid"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "psid"
        }
    .end annotation

    .line 229
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->psid:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;

    .line 230
    return-object p0
.end method

.method public setRequestedCertificate(Lorg/bouncycastle/oer/its/ieee1609dot2/Certificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;
    .locals 0
    .param p1, "requestedCertificate"    # Lorg/bouncycastle/oer/its/ieee1609dot2/Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestedCertificate"
        }
    .end annotation

    .line 277
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->requestedCertificate:Lorg/bouncycastle/oer/its/ieee1609dot2/Certificate;

    .line 278
    return-object p0
.end method
