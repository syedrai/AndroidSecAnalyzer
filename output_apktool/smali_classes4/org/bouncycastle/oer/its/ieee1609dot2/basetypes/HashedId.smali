.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "HashedId.java"


# instance fields
.field private final id:[B


# direct methods
.method protected constructor <init>([B)V
    .locals 1
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
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 16
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId;->id:[B

    .line 17
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 32
    if-ne p0, p1, :cond_0

    .line 34
    const/4 v0, 0x1

    return v0

    .line 36
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 40
    :cond_1
    invoke-super {p0, p1}, Lorg/bouncycastle/asn1/ASN1Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 42
    return v0

    .line 45
    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId;

    .line 47
    .local v0, "hashedId":Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId;
    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId;->id:[B

    iget-object v2, v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId;->id:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1

    .line 38
    .end local v0    # "hashedId":Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId;
    :cond_3
    :goto_0
    return v0
.end method

.method public getHashBytes()[B
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId;->id:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 53
    invoke-super {p0}, Lorg/bouncycastle/asn1/ASN1Object;->hashCode()I

    move-result v0

    .line 54
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId;->id:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    .line 55
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 26
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId;->id:[B

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0
.end method
