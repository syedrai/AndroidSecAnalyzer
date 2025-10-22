.class public Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "HeaderInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;
    }
.end annotation


# instance fields
.field private final contributedExtensions:Lorg/bouncycastle/oer/its/ieee1609dot2/ContributedExtensionBlocks;

.field private final encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;

.field private final expiryTime:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;

.field private final generationLocation:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ThreeDLocation;

.field private final generationTime:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;

.field private final inlineP2pcdRequest:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfHashedId3;

.field private final missingCrlIdentifier:Lorg/bouncycastle/oer/its/ieee1609dot2/MissingCrlIdentifier;

.field private final p2pcdLearningRequest:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

.field private final pduFunctionalType:Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;

.field private final psid:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;

.field private final requestedCertificate:Lorg/bouncycastle/oer/its/ieee1609dot2/Certificate;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "sequence"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequence"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/16 v1, 0xb

    const/4 v2, 0x7

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "expected sequence size of 11 or 7"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 61
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/bouncycastle/asn1/ASN1Encodable;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->psid:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;

    .line 62
    const-class v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;

    iput-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->generationTime:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;

    .line 63
    const-class v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;

    iput-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->expiryTime:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;

    .line 64
    const-class v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ThreeDLocation;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ThreeDLocation;

    iput-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->generationLocation:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ThreeDLocation;

    .line 65
    const-class v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    iput-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->p2pcdLearningRequest:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    .line 66
    const-class v1, Lorg/bouncycastle/oer/its/ieee1609dot2/MissingCrlIdentifier;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/oer/its/ieee1609dot2/MissingCrlIdentifier;

    iput-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->missingCrlIdentifier:Lorg/bouncycastle/oer/its/ieee1609dot2/MissingCrlIdentifier;

    .line 67
    const-class v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;

    iput-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;

    .line 68
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-le v1, v2, :cond_2

    .line 70
    const-class v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfHashedId3;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfHashedId3;

    iput-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->inlineP2pcdRequest:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfHashedId3;

    .line 71
    const-class v1, Lorg/bouncycastle/oer/its/ieee1609dot2/Certificate;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/oer/its/ieee1609dot2/Certificate;

    iput-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->requestedCertificate:Lorg/bouncycastle/oer/its/ieee1609dot2/Certificate;

    .line 72
    const-class v1, Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;

    iput-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->pduFunctionalType:Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;

    .line 73
    const-class v1, Lorg/bouncycastle/oer/its/ieee1609dot2/ContributedExtensionBlocks;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/oer/its/ieee1609dot2/ContributedExtensionBlocks;

    iput-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->contributedExtensions:Lorg/bouncycastle/oer/its/ieee1609dot2/ContributedExtensionBlocks;

    goto :goto_1

    .line 77
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->inlineP2pcdRequest:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfHashedId3;

    .line 78
    iput-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->requestedCertificate:Lorg/bouncycastle/oer/its/ieee1609dot2/Certificate;

    .line 79
    iput-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->pduFunctionalType:Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;

    .line 80
    iput-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->contributedExtensions:Lorg/bouncycastle/oer/its/ieee1609dot2/ContributedExtensionBlocks;

    .line 82
    :goto_1
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ThreeDLocation;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;Lorg/bouncycastle/oer/its/ieee1609dot2/MissingCrlIdentifier;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfHashedId3;Lorg/bouncycastle/oer/its/ieee1609dot2/Certificate;Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;Lorg/bouncycastle/oer/its/ieee1609dot2/ContributedExtensionBlocks;)V
    .locals 0
    .param p1, "psid"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;
    .param p2, "generationTime"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;
    .param p3, "expiryTime"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;
    .param p4, "generationLocation"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ThreeDLocation;
    .param p5, "p2pcdLearningRequest"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;
    .param p6, "missingCrlIdentifier"    # Lorg/bouncycastle/oer/its/ieee1609dot2/MissingCrlIdentifier;
    .param p7, "encryptionKey"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;
    .param p8, "inlineP2pcdRequest"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfHashedId3;
    .param p9, "requestedCertificate"    # Lorg/bouncycastle/oer/its/ieee1609dot2/Certificate;
    .param p10, "pduFunctionalType"    # Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;
    .param p11, "contributedExtensions"    # Lorg/bouncycastle/oer/its/ieee1609dot2/ContributedExtensionBlocks;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "psid",
            "generationTime",
            "expiryTime",
            "generationLocation",
            "p2pcdLearningRequest",
            "missingCrlIdentifier",
            "encryptionKey",
            "inlineP2pcdRequest",
            "requestedCertificate",
            "pduFunctionalType",
            "contributedExtensions"
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 108
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->psid:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;

    .line 109
    iput-object p2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->generationTime:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;

    .line 110
    iput-object p3, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->expiryTime:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;

    .line 111
    iput-object p4, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->generationLocation:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ThreeDLocation;

    .line 112
    iput-object p5, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->p2pcdLearningRequest:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    .line 113
    iput-object p6, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->missingCrlIdentifier:Lorg/bouncycastle/oer/its/ieee1609dot2/MissingCrlIdentifier;

    .line 114
    iput-object p7, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;

    .line 115
    iput-object p8, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->inlineP2pcdRequest:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfHashedId3;

    .line 116
    iput-object p9, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->requestedCertificate:Lorg/bouncycastle/oer/its/ieee1609dot2/Certificate;

    .line 117
    iput-object p10, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->pduFunctionalType:Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;

    .line 118
    iput-object p11, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->contributedExtensions:Lorg/bouncycastle/oer/its/ieee1609dot2/ContributedExtensionBlocks;

    .line 119
    return-void
.end method

.method public static builder()Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;
    .locals 1

    .line 210
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 123
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;

    if-eqz v0, :cond_0

    .line 125
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;

    return-object v0

    .line 128
    :cond_0
    if-eqz p0, :cond_1

    .line 130
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 133
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getContributedExtensions()Lorg/bouncycastle/oer/its/ieee1609dot2/ContributedExtensionBlocks;
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->contributedExtensions:Lorg/bouncycastle/oer/its/ieee1609dot2/ContributedExtensionBlocks;

    return-object v0
.end method

.method public getEncryptionKey()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;

    return-object v0
.end method

.method public getExpiryTime()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->expiryTime:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;

    return-object v0
.end method

.method public getGenerationLocation()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ThreeDLocation;
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->generationLocation:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ThreeDLocation;

    return-object v0
.end method

.method public getGenerationTime()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->generationTime:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;

    return-object v0
.end method

.method public getInlineP2pcdRequest()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfHashedId3;
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->inlineP2pcdRequest:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfHashedId3;

    return-object v0
.end method

.method public getMissingCrlIdentifier()Lorg/bouncycastle/oer/its/ieee1609dot2/MissingCrlIdentifier;
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->missingCrlIdentifier:Lorg/bouncycastle/oer/its/ieee1609dot2/MissingCrlIdentifier;

    return-object v0
.end method

.method public getP2pcdLearningRequest()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->p2pcdLearningRequest:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    return-object v0
.end method

.method public getPduFunctionalType()Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->pduFunctionalType:Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;

    return-object v0
.end method

.method public getPsid()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->psid:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;

    return-object v0
.end method

.method public getRequestedCertificate()Lorg/bouncycastle/oer/its/ieee1609dot2/Certificate;
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->requestedCertificate:Lorg/bouncycastle/oer/its/ieee1609dot2/Certificate;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 193
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    const/16 v1, 0xb

    new-array v1, v1, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->psid:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;

    aput-object v3, v1, v2

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->generationTime:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;

    .line 195
    invoke-static {v2}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->expiryTime:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;

    .line 196
    invoke-static {v2}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->generationLocation:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ThreeDLocation;

    .line 197
    invoke-static {v2}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->p2pcdLearningRequest:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    .line 198
    invoke-static {v2}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->missingCrlIdentifier:Lorg/bouncycastle/oer/its/ieee1609dot2/MissingCrlIdentifier;

    .line 199
    invoke-static {v2}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;

    .line 200
    invoke-static {v2}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->inlineP2pcdRequest:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfHashedId3;

    .line 201
    invoke-static {v2}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->requestedCertificate:Lorg/bouncycastle/oer/its/ieee1609dot2/Certificate;

    .line 202
    invoke-static {v2}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->pduFunctionalType:Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;

    .line 203
    invoke-static {v2}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->contributedExtensions:Lorg/bouncycastle/oer/its/ieee1609dot2/ContributedExtensionBlocks;

    .line 204
    invoke-static {v2}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 193
    return-object v0
.end method
