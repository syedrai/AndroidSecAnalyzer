.class public Lorg/bouncycastle/crypto/paddings/PKCS7Padding;
.super Ljava/lang/Object;
.source "PKCS7Padding.java"

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

    int-to-byte v0, v0

    .line 44
    .local v0, "code":B
    :goto_0
    array-length v1, p1

    if-ge p2, v1, :cond_0

    .line 46
    aput-byte v0, p1, p2

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
    const-string v0, "PKCS7"

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
    .locals 7
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
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p1, v0

    .line 60
    .local v0, "countAsByte":B
    and-int/lit16 v1, v0, 0xff

    .line 61
    .local v1, "count":I
    array-length v2, p1

    sub-int/2addr v2, v1

    .line 63
    .local v2, "position":I
    add-int/lit8 v3, v1, -0x1

    or-int/2addr v3, v2

    shr-int/lit8 v3, v3, 0x1f

    .line 64
    .local v3, "failed":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_0

    .line 66
    aget-byte v5, p1, v4

    xor-int/2addr v5, v0

    sub-int v6, v4, v2

    shr-int/lit8 v6, v6, 0x1f

    not-int v6, v6

    and-int/2addr v5, v6

    or-int/2addr v3, v5

    .line 64
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 68
    .end local v4    # "i":I
    :cond_0
    if-nez v3, :cond_1

    .line 73
    return v1

    .line 70
    :cond_1
    new-instance v4, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v5, "pad block corrupted"

    invoke-direct {v4, v5}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
