.class public Lorg/bouncycastle/crypto/params/DHValidationParameters;
.super Ljava/lang/Object;
.source "DHValidationParameters.java"


# instance fields
.field private counter:I

.field private seed:[B


# direct methods
.method public constructor <init>([BI)V
    .locals 1
    .param p1, "seed"    # [B
    .param p2, "counter"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seed",
            "counter"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    .line 15
    iput p2, p0, Lorg/bouncycastle/crypto/params/DHValidationParameters;->counter:I

    .line 16
    return-void
.end method


# virtual methods
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

    .line 31
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/DHValidationParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 33
    return v1

    .line 36
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/DHValidationParameters;

    .line 38
    .local v0, "other":Lorg/bouncycastle/crypto/params/DHValidationParameters;
    iget v2, v0, Lorg/bouncycastle/crypto/params/DHValidationParameters;->counter:I

    iget v3, p0, Lorg/bouncycastle/crypto/params/DHValidationParameters;->counter:I

    if-eq v2, v3, :cond_1

    .line 40
    return v1

    .line 43
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    iget-object v2, v0, Lorg/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    return v1
.end method

.method public getCounter()I
    .locals 1

    .line 20
    iget v0, p0, Lorg/bouncycastle/crypto/params/DHValidationParameters;->counter:I

    return v0
.end method

.method public getSeed()[B
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 48
    iget v0, p0, Lorg/bouncycastle/crypto/params/DHValidationParameters;->counter:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
