.class public Lorg/bouncycastle/its/ETSIRecipientID;
.super Ljava/lang/Object;
.source "ETSIRecipientID.java"

# interfaces
.implements Lorg/bouncycastle/util/Selector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/bouncycastle/util/Selector<",
        "Lorg/bouncycastle/its/ETSIRecipientInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final id:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;)V
    .locals 0
    .param p1, "id"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/bouncycastle/its/ETSIRecipientID;->id:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    .line 22
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "id"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 16
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    invoke-direct {v0, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/its/ETSIRecipientID;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;)V

    .line 17
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    .line 59
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 27
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 29
    return v0

    .line 31
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 36
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/bouncycastle/its/ETSIRecipientID;

    .line 38
    .local v2, "that":Lorg/bouncycastle/its/ETSIRecipientID;
    iget-object v3, p0, Lorg/bouncycastle/its/ETSIRecipientID;->id:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    if-eqz v3, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/its/ETSIRecipientID;->id:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    iget-object v1, v2, Lorg/bouncycastle/its/ETSIRecipientID;->id:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lorg/bouncycastle/its/ETSIRecipientID;->id:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 33
    .end local v2    # "that":Lorg/bouncycastle/its/ETSIRecipientID;
    :cond_4
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/bouncycastle/its/ETSIRecipientID;->id:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/its/ETSIRecipientID;->id:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic match(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "obj"
        }
    .end annotation

    .line 9
    check-cast p1, Lorg/bouncycastle/its/ETSIRecipientInfo;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/its/ETSIRecipientID;->match(Lorg/bouncycastle/its/ETSIRecipientInfo;)Z

    move-result p1

    return p1
.end method

.method public match(Lorg/bouncycastle/its/ETSIRecipientInfo;)Z
    .locals 3
    .param p1, "obj"    # Lorg/bouncycastle/its/ETSIRecipientInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 49
    invoke-virtual {p1}, Lorg/bouncycastle/its/ETSIRecipientInfo;->getRecipientInfo()Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;->getChoice()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 51
    invoke-virtual {p1}, Lorg/bouncycastle/its/ETSIRecipientInfo;->getRecipientInfo()Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;->getRecipientInfo()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo;

    move-result-object v0

    .line 52
    .local v0, "objPkInfo":Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo;
    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo;->getRecipientId()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId;->getHashBytes()[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/its/ETSIRecipientID;->id:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    invoke-virtual {v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;->getHashBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    return v1

    .line 54
    .end local v0    # "objPkInfo":Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
