.class public Lorg/bouncycastle/cms/KEKRecipientId;
.super Lorg/bouncycastle/cms/RecipientId;
.source "KEKRecipientId.java"


# instance fields
.field private keyIdentifier:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "keyIdentifier"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyIdentifier"
        }
    .end annotation

    .line 17
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/RecipientId;-><init>(I)V

    .line 19
    iput-object p1, p0, Lorg/bouncycastle/cms/KEKRecipientId;->keyIdentifier:[B

    .line 20
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 47
    new-instance v0, Lorg/bouncycastle/cms/KEKRecipientId;

    iget-object v1, p0, Lorg/bouncycastle/cms/KEKRecipientId;->keyIdentifier:[B

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/KEKRecipientId;-><init>([B)V

    return-object v0
.end method

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

    .line 30
    instance-of v0, p1, Lorg/bouncycastle/cms/KEKRecipientId;

    if-nez v0, :cond_0

    .line 32
    const/4 v0, 0x0

    return v0

    .line 35
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/cms/KEKRecipientId;

    .line 37
    .local v0, "id":Lorg/bouncycastle/cms/KEKRecipientId;
    iget-object v1, p0, Lorg/bouncycastle/cms/KEKRecipientId;->keyIdentifier:[B

    iget-object v2, v0, Lorg/bouncycastle/cms/KEKRecipientId;->keyIdentifier:[B

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    return v1
.end method

.method public getKeyIdentifier()[B
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/bouncycastle/cms/KEKRecipientId;->keyIdentifier:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/bouncycastle/cms/KEKRecipientId;->keyIdentifier:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 52
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lorg/bouncycastle/cms/KEKRecipientId;->keyIdentifier:[B

    move-object v1, p1

    check-cast v1, [B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    return v0

    .line 56
    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/cms/KEKRecipientInformation;

    if-eqz v0, :cond_1

    .line 58
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/cms/KEKRecipientInformation;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/KEKRecipientInformation;->getRID()Lorg/bouncycastle/cms/RecipientId;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 61
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
