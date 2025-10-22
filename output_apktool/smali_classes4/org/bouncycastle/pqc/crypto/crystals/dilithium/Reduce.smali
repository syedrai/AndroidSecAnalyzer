.class Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Reduce;
.super Ljava/lang/Object;
.source "Reduce.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static conditionalAddQ(I)I
    .locals 2
    .param p0, "a"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 25
    shr-int/lit8 v0, p0, 0x1f

    const v1, 0x7fe001

    and-int/2addr v0, v1

    add-int/2addr p0, v0

    .line 26
    return p0
.end method

.method static montgomeryReduce(J)I
    .locals 6
    .param p0, "a"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 8
    const-wide/32 v0, 0x3802001

    mul-long v0, v0, p0

    long-to-int v1, v0

    .line 9
    .local v1, "t":I
    int-to-long v2, v1

    const-wide/32 v4, 0x7fe001

    mul-long v2, v2, v4

    sub-long v2, p0, v2

    const/16 v0, 0x20

    ushr-long/2addr v2, v0

    long-to-int v0, v2

    .line 11
    .end local v1    # "t":I
    .local v0, "t":I
    return v0
.end method

.method static reduce32(I)I
    .locals 2
    .param p0, "a"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 18
    const/high16 v0, 0x400000

    add-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x17

    .line 19
    .local v0, "t":I
    const v1, 0x7fe001

    mul-int v1, v1, v0

    sub-int v0, p0, v1

    .line 20
    return v0
.end method
