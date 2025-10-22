.class Lorg/bouncycastle/pqc/crypto/crystals/kyber/Reduce;
.super Ljava/lang/Object;
.source "Reduce.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static barretReduce(S)S
    .locals 6
    .param p0, "a"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 21
    const-wide/32 v0, 0x4000000

    .line 22
    .local v0, "shift":J
    const-wide/16 v2, 0x680

    add-long/2addr v2, v0

    const-wide/16 v4, 0xd01

    div-long/2addr v2, v4

    long-to-int v3, v2

    int-to-short v2, v3

    .line 23
    .local v2, "v":S
    mul-int v3, v2, p0

    shr-int/lit8 v3, v3, 0x1a

    int-to-short v3, v3

    .line 24
    .local v3, "t":S
    mul-int/lit16 v4, v3, 0xd01

    int-to-short v3, v4

    .line 25
    sub-int v4, p0, v3

    int-to-short v4, v4

    return v4
.end method

.method public static conditionalSubQ(S)S
    .locals 1
    .param p0, "a"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 30
    add-int/lit16 v0, p0, -0xd01

    int-to-short p0, v0

    .line 31
    shr-int/lit8 v0, p0, 0xf

    and-int/lit16 v0, v0, 0xd01

    add-int/2addr v0, p0

    int-to-short p0, v0

    .line 32
    return p0
.end method

.method public static montgomeryReduce(I)S
    .locals 3
    .param p0, "a"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 11
    const v0, 0xf301

    mul-int v0, v0, p0

    int-to-short v0, v0

    .line 12
    .local v0, "u":S
    mul-int/lit16 v1, v0, 0xd01

    .line 13
    .local v1, "t":I
    sub-int v1, p0, v1

    .line 14
    shr-int/lit8 v1, v1, 0x10

    .line 15
    int-to-short v2, v1

    return v2
.end method
