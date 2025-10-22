.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;
.super Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId;
.source "HashedId8.java"


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "string"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId;-><init>([B)V

    .line 11
    array-length v0, p1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 15
    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hash id not 8 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;
    .locals 2
    .param p0, "src"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    .line 19
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    if-eqz v0, :cond_0

    .line 21
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    return-object v0

    .line 24
    :cond_0
    if-eqz p0, :cond_1

    .line 26
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    .line 27
    .local v0, "octetString":[B
    new-instance v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    invoke-direct {v1, v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;-><init>([B)V

    return-object v1

    .line 30
    .end local v0    # "octetString":[B
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
