.class public Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "EtsiTs102941CtlRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest$Builder;
    }
.end annotation


# instance fields
.field private final issuerId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

.field private final lastKnownCtlSequence:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "sequence"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequence"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest;->issuerId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    .line 33
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 35
    const-class v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest;->lastKnownCtlSequence:Lorg/bouncycastle/asn1/ASN1Integer;

    goto :goto_0

    .line 39
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest;->lastKnownCtlSequence:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 42
    :goto_0
    return-void

    .line 29
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "expected sequence size of 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;Lorg/bouncycastle/asn1/ASN1Integer;)V
    .locals 0
    .param p1, "issuerId"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;
    .param p2, "lastKnownCtlSequence"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "issuerId",
            "lastKnownCtlSequence"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest;->issuerId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    .line 48
    iput-object p2, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest;->lastKnownCtlSequence:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 49
    return-void
.end method

.method public static builder()Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest$Builder;
    .locals 1

    .line 85
    new-instance v0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest$Builder;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest;
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

    .line 53
    instance-of v0, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest;

    if-eqz v0, :cond_0

    .line 55
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest;

    return-object v0

    .line 58
    :cond_0
    if-eqz p0, :cond_1

    .line 60
    new-instance v0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 63
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getIssuerId()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest;->issuerId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    return-object v0
.end method

.method public getLastKnownCtlSequence()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest;->lastKnownCtlSequence:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 80
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest;->issuerId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    aput-object v3, v1, v2

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CtlRequest;->lastKnownCtlSequence:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-static {v2}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
