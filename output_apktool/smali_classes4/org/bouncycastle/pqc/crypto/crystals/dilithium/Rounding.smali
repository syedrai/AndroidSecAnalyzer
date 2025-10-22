.class Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Rounding;
.super Ljava/lang/Object;
.source "Rounding.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decompose(II)[I
    .locals 4
    .param p0, "a"    # I
    .param p1, "gamma2"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "gamma2"
        }
    .end annotation

    .line 18
    add-int/lit8 v0, p0, 0x7f

    shr-int/lit8 v0, v0, 0x7

    .line 19
    .local v0, "a1":I
    const v1, 0x3ff00

    if-ne p1, v1, :cond_0

    .line 21
    mul-int/lit16 v1, v0, 0x401

    const/high16 v2, 0x200000

    add-int/2addr v1, v2

    shr-int/lit8 v0, v1, 0x16

    .line 22
    and-int/lit8 v0, v0, 0xf

    goto :goto_0

    .line 24
    :cond_0
    const v1, 0x17400

    if-ne p1, v1, :cond_1

    .line 26
    mul-int/lit16 v1, v0, 0x2c0b

    const/high16 v2, 0x800000

    add-int/2addr v1, v2

    shr-int/lit8 v0, v1, 0x18

    .line 27
    rsub-int/lit8 v1, v0, 0x2b

    shr-int/lit8 v1, v1, 0x1f

    and-int/2addr v1, v0

    xor-int/2addr v0, v1

    .line 34
    :goto_0
    mul-int/lit8 v1, v0, 0x2

    mul-int v1, v1, p1

    sub-int v1, p0, v1

    .line 35
    .local v1, "a0":I
    const v2, 0x3ff000

    sub-int/2addr v2, v1

    shr-int/lit8 v2, v2, 0x1f

    const v3, 0x7fe001

    and-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 36
    filled-new-array {v1, v0}, [I

    move-result-object v2

    return-object v2

    .line 31
    .end local v1    # "a0":I
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Wrong Gamma2!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static makeHint(IILorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)I
    .locals 3
    .param p0, "a0"    # I
    .param p1, "a1"    # I
    .param p2, "engine"    # Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a0",
            "a1",
            "engine"
        }
    .end annotation

    .line 41
    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma2()I

    move-result v0

    .local v0, "g2":I
    const v1, 0x7fe001

    .line 42
    .local v1, "q":I
    if-le p0, v0, :cond_1

    sub-int v2, v1, v0

    if-gt p0, v2, :cond_1

    sub-int v2, v1, v0

    if-ne p0, v2, :cond_0

    if-nez p1, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 44
    :cond_1
    :goto_0
    const/4 v2, 0x0

    return v2
.end method

.method public static power2Round(I)[I
    .locals 4
    .param p0, "a"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 7
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 9
    .local v0, "out":[I
    add-int/lit16 v1, p0, 0x1000

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0xd

    const/4 v3, 0x0

    aput v1, v0, v3

    .line 10
    aget v1, v0, v3

    shl-int/lit8 v1, v1, 0xd

    sub-int v1, p0, v1

    aput v1, v0, v2

    .line 11
    return-object v0
.end method

.method public static useHint(III)I
    .locals 5
    .param p0, "a"    # I
    .param p1, "hint"    # I
    .param p2, "gamma2"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "hint",
            "gamma2"
        }
    .end annotation

    .line 53
    invoke-static {p0, p2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Rounding;->decompose(II)[I

    move-result-object v0

    .line 54
    .local v0, "intArray":[I
    const/4 v1, 0x0

    aget v2, v0, v1

    .line 55
    .local v2, "a0":I
    const/4 v3, 0x1

    aget v3, v0, v3

    .line 58
    .local v3, "a1":I
    if-nez p1, :cond_0

    .line 60
    return v3

    .line 63
    :cond_0
    const v4, 0x3ff00

    if-ne p2, v4, :cond_2

    .line 65
    if-lez v2, :cond_1

    .line 67
    add-int/lit8 v1, v3, 0x1

    and-int/lit8 v1, v1, 0xf

    return v1

    .line 71
    :cond_1
    add-int/lit8 v1, v3, -0x1

    and-int/lit8 v1, v1, 0xf

    return v1

    .line 74
    :cond_2
    const v4, 0x17400

    if-ne p2, v4, :cond_6

    .line 76
    const/16 v4, 0x2b

    if-lez v2, :cond_4

    .line 78
    if-ne v3, v4, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v3, 0x1

    :goto_0
    return v1

    .line 82
    :cond_4
    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v3, -0x1

    :goto_1
    return v4

    .line 87
    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v4, "Wrong Gamma2!"

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
