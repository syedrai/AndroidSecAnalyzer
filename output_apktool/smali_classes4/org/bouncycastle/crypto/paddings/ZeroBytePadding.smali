.class public Lorg/bouncycastle/crypto/paddings/ZeroBytePadding;
.super Ljava/lang/Object;
.source "ZeroBytePadding.java"

# interfaces
.implements Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPadding([BI)I
    .locals 2
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

    .line 42
    array-length v0, p1

    sub-int/2addr v0, p2

    .line 44
    .local v0, "added":I
    :goto_0
    array-length v1, p1

    if-ge p2, v1, :cond_0

    .line 46
    const/4 v1, 0x0

    aput-byte v1, p1, p2

    .line 47
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 50
    :cond_0
    return v0
.end method

.method public getPaddingName()Ljava/lang/String;
    .locals 1

    .line 31
    const-string v0, "ZeroByte"

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

    .line 22
    return-void
.end method

.method public padCount([B)I
    .locals 5
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

    .line 59
    const/4 v0, 0x0

    .local v0, "count":I
    const/4 v1, -0x1

    .line 60
    .local v1, "still00Mask":I
    array-length v2, p1

    .line 61
    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    .line 63
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    .line 64
    .local v3, "next":I
    xor-int/lit8 v4, v3, 0x0

    add-int/lit8 v4, v4, -0x1

    shr-int/lit8 v4, v4, 0x1f

    .line 65
    .local v4, "match00Mask":I
    and-int/2addr v1, v4

    .line 66
    sub-int/2addr v0, v1

    .line 67
    .end local v3    # "next":I
    .end local v4    # "match00Mask":I
    goto :goto_0

    .line 68
    :cond_0
    return v0
.end method
