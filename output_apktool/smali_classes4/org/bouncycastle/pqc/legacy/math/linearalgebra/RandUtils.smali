.class public Lorg/bouncycastle/pqc/legacy/math/linearalgebra/RandUtils;
.super Ljava/lang/Object;
.source "RandUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static nextInt(Ljava/security/SecureRandom;I)I
    .locals 4
    .param p0, "rand"    # Ljava/security/SecureRandom;
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rand",
            "n"
        }
    .end annotation

    .line 10
    neg-int v0, p1

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    .line 12
    int-to-long v0, p1

    invoke-virtual {p0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v2

    ushr-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    mul-long v0, v0, v2

    const/16 v2, 0x1f

    shr-long/2addr v0, v2

    long-to-int v1, v0

    return v1

    .line 18
    :cond_0
    invoke-virtual {p0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x1

    .line 19
    .local v0, "bits":I
    rem-int v1, v0, p1

    .line 21
    .local v1, "value":I
    sub-int v2, v0, v1

    add-int/lit8 v3, p1, -0x1

    add-int/2addr v2, v3

    if-ltz v2, :cond_0

    .line 23
    return v1
.end method
