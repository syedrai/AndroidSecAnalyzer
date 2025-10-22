.class public Lorg/bouncycastle/crypto/paddings/ISO7816d4Padding;
.super Ljava/lang/Object;
.source "ISO7816d4Padding.java"

# interfaces
.implements Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
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

    .line 43
    array-length v0, p1

    sub-int/2addr v0, p2

    .line 45
    .local v0, "added":I
    const/16 v1, -0x80

    aput-byte v1, p1, p2

    .line 46
    add-int/lit8 p2, p2, 0x1

    .line 48
    :goto_0
    array-length v1, p1

    if-ge p2, v1, :cond_0

    .line 50
    const/4 v1, 0x0

    aput-byte v1, p1, p2

    .line 51
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 54
    :cond_0
    return v0
.end method

.method public getPaddingName()Ljava/lang/String;
    .locals 1

    .line 32
    const-string v0, "ISO7816-4"

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

    .line 23
    return-void
.end method

.method public padCount([B)I
    .locals 8
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

    .line 63
    const/4 v0, -0x1

    .local v0, "position":I
    const/4 v1, -0x1

    .line 64
    .local v1, "still00Mask":I
    array-length v2, p1

    .line 65
    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    .line 67
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    .line 68
    .local v3, "next":I
    xor-int/lit8 v4, v3, 0x0

    add-int/lit8 v4, v4, -0x1

    shr-int/lit8 v4, v4, 0x1f

    .line 69
    .local v4, "match00Mask":I
    xor-int/lit16 v5, v3, 0x80

    add-int/lit8 v5, v5, -0x1

    shr-int/lit8 v5, v5, 0x1f

    .line 70
    .local v5, "match80Mask":I
    xor-int v6, v2, v0

    and-int v7, v1, v5

    and-int/2addr v6, v7

    xor-int/2addr v0, v6

    .line 71
    and-int/2addr v1, v4

    .line 72
    .end local v3    # "next":I
    .end local v4    # "match00Mask":I
    .end local v5    # "match80Mask":I
    goto :goto_0

    .line 73
    :cond_0
    if-ltz v0, :cond_1

    .line 77
    array-length v3, p1

    sub-int/2addr v3, v0

    return v3

    .line 75
    :cond_1
    new-instance v3, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v4, "pad block corrupted"

    invoke-direct {v3, v4}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
