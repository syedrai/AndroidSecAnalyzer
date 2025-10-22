.class public Lorg/bouncycastle/oer/its/ieee1609dot2/PreSharedKeyRecipientInfo;
.super Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;
.source "PreSharedKeyRecipientInfo.java"


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "string"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;-><init>([B)V

    .line 16
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/PreSharedKeyRecipientInfo;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 21
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PreSharedKeyRecipientInfo;

    if-eqz v0, :cond_0

    .line 23
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/ieee1609dot2/PreSharedKeyRecipientInfo;

    return-object v0

    .line 26
    :cond_0
    if-eqz p0, :cond_2

    .line 28
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId;

    if-eqz v0, :cond_1

    .line 30
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/PreSharedKeyRecipientInfo;

    move-object v1, p0

    check-cast v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId;

    invoke-virtual {v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId;->getHashBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/PreSharedKeyRecipientInfo;-><init>([B)V

    return-object v0

    .line 33
    :cond_1
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/PreSharedKeyRecipientInfo;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/PreSharedKeyRecipientInfo;-><init>([B)V

    return-object v0

    .line 36
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
