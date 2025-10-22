.class public Lorg/bouncycastle/crypto/params/DSAValidationParameters;
.super Ljava/lang/Object;
.source "DSAValidationParameters.java"


# instance fields
.field private counter:I

.field private seed:[B

.field private usageIndex:I


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

    .line 15
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BII)V

    .line 16
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .param p1, "seed"    # [B
    .param p2, "counter"    # I
    .param p3, "usageIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "seed",
            "counter",
            "usageIndex"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

    .line 24
    iput p2, p0, Lorg/bouncycastle/crypto/params/DSAValidationParameters;->counter:I

    .line 25
    iput p3, p0, Lorg/bouncycastle/crypto/params/DSAValidationParameters;->usageIndex:I

    .line 26
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

    .line 51
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/DSAValidationParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 53
    return v1

    .line 56
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/DSAValidationParameters;

    .line 58
    .local v0, "other":Lorg/bouncycastle/crypto/params/DSAValidationParameters;
    iget v2, v0, Lorg/bouncycastle/crypto/params/DSAValidationParameters;->counter:I

    iget v3, p0, Lorg/bouncycastle/crypto/params/DSAValidationParameters;->counter:I

    if-eq v2, v3, :cond_1

    .line 60
    return v1

    .line 63
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

    iget-object v2, v0, Lorg/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    return v1
.end method

.method public getCounter()I
    .locals 1

    .line 30
    iget v0, p0, Lorg/bouncycastle/crypto/params/DSAValidationParameters;->counter:I

    return v0
.end method

.method public getSeed()[B
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getUsageIndex()I
    .locals 1

    .line 40
    iget v0, p0, Lorg/bouncycastle/crypto/params/DSAValidationParameters;->usageIndex:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 45
    iget v0, p0, Lorg/bouncycastle/crypto/params/DSAValidationParameters;->counter:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
