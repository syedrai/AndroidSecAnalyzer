.class public Lorg/bouncycastle/pqc/crypto/gemss/GeMSSUtils;
.super Ljava/lang/Object;
.source "GeMSSUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static CMP_LT_UINT(JJ)J
    .locals 9
    .param p0, "a"    # J
    .param p2, "b"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 54
    const/16 v0, 0x3f

    ushr-long v1, p0, v0

    ushr-long v3, p2, v0

    xor-long/2addr v1, v3

    ushr-long v3, p0, v0

    ushr-long v5, p2, v0

    sub-long/2addr v3, v5

    ushr-long/2addr v3, v0

    and-long/2addr v1, v3

    ushr-long v3, p0, v0

    ushr-long v5, p2, v0

    xor-long/2addr v3, v5

    const-wide/16 v5, 0x1

    xor-long/2addr v3, v5

    const-wide v5, 0x7fffffffffffffffL

    and-long v7, p0, v5

    and-long/2addr v5, p2

    sub-long/2addr v7, v5

    ushr-long v5, v7, v0

    and-long/2addr v3, v5

    xor-long/2addr v1, v3

    return-wide v1
.end method

.method static Highest_One(I)I
    .locals 1
    .param p0, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 66
    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 67
    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 68
    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 69
    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 70
    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 71
    ushr-int/lit8 v0, p0, 0x1

    xor-int/2addr v0, p0

    return v0
.end method

.method static NORBITS_UINT(J)J
    .locals 3
    .param p0, "n"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 7
    const/16 v0, 0x20

    shl-long v1, p0, v0

    or-long/2addr p0, v1

    .line 8
    ushr-long/2addr p0, v0

    .line 9
    const-wide/16 v0, 0x1

    sub-long/2addr p0, v0

    .line 10
    const/16 v0, 0x3f

    ushr-long v0, p0, v0

    return-wide v0
.end method

.method static ORBITS_UINT(J)J
    .locals 3
    .param p0, "n"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 38
    const/16 v0, 0x20

    shl-long v1, p0, v0

    or-long/2addr p0, v1

    .line 39
    ushr-long/2addr p0, v0

    .line 40
    const-wide v1, 0xffffffffL

    add-long/2addr p0, v1

    .line 41
    ushr-long v0, p0, v0

    return-wide v0
.end method

.method static XORBITS_UINT(J)J
    .locals 4
    .param p0, "n"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 31
    const/4 v0, 0x1

    shl-long v0, p0, v0

    xor-long/2addr p0, v0

    .line 32
    const/4 v0, 0x2

    shl-long v0, p0, v0

    xor-long/2addr p0, v0

    .line 33
    const-wide v0, -0x7777777777777778L    # -1.48603973805866E-267

    and-long/2addr v0, p0

    const-wide v2, 0x1111111111111111L

    mul-long v0, v0, v2

    const/16 v2, 0x3f

    ushr-long/2addr v0, v2

    return-wide v0
.end method

.method static maskUINT(I)J
    .locals 4
    .param p0, "k"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "k"
        }
    .end annotation

    .line 61
    if-eqz p0, :cond_0

    const-wide/16 v0, 0x1

    shl-long v2, v0, p0

    sub-long/2addr v2, v0

    goto :goto_0

    :cond_0
    const-wide/16 v2, -0x1

    :goto_0
    return-wide v2
.end method
