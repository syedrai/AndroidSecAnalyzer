.class public Lorg/bouncycastle/crypto/paddings/TBCPadding;
.super Ljava/lang/Object;
.source "TBCPadding.java"

# interfaces
.implements Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPadding([BI)I
    .locals 4
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff"
        }
    .end annotation

    .line 52
    array-length v0, p1

    sub-int/2addr v0, p2

    .line 55
    .local v0, "count":I
    const/16 v1, 0xff

    const/4 v2, 0x0

    if-lez p2, :cond_1

    .line 57
    add-int/lit8 v3, p2, -0x1

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    int-to-byte v1, v1

    .local v1, "code":B
    goto :goto_2

    .line 61
    .end local v1    # "code":B
    :cond_1
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    int-to-byte v1, v1

    .line 64
    .restart local v1    # "code":B
    :goto_2
    array-length v2, p1

    if-ge p2, v2, :cond_3

    .line 66
    aput-byte v1, p1, p2

    .line 67
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 70
    :cond_3
    return v0
.end method

.method public getPaddingName()Ljava/lang/String;
    .locals 1

    .line 35
    const-string v0, "TBC"

    return-object v0
.end method

.method public init(Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "random"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public padCount([B)I
    .locals 6
    .param p1, "in"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 79
    array-length v0, p1

    .line 80
    .local v0, "i":I
    add-int/lit8 v0, v0, -0x1

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    .local v1, "code":I
    const/4 v2, 0x1

    .local v2, "count":I
    const/4 v3, -0x1

    .line 81
    .local v3, "countingMask":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 83
    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    .line 84
    .local v4, "next":I
    xor-int v5, v4, v1

    add-int/lit8 v5, v5, -0x1

    shr-int/lit8 v5, v5, 0x1f

    .line 85
    .local v5, "matchMask":I
    and-int/2addr v3, v5

    .line 86
    sub-int/2addr v2, v3

    .line 87
    .end local v4    # "next":I
    .end local v5    # "matchMask":I
    goto :goto_0

    .line 88
    :cond_0
    return v2
.end method
