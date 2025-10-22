.class public Lorg/bouncycastle/crypto/generators/Poly1305KeyGenerator;
.super Lorg/bouncycastle/crypto/CipherKeyGenerator;
.source "Poly1305KeyGenerator.java"


# static fields
.field private static final R_MASK_HIGH_4:B = 0xft

.field private static final R_MASK_LOW_2:B = -0x4t


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lorg/bouncycastle/crypto/CipherKeyGenerator;-><init>()V

    return-void
.end method

.method public static checkKey([B)V
    .locals 2
    .param p0, "key"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 94
    array-length v0, p0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 99
    const/4 v0, 0x3

    aget-byte v0, p0, v0

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/generators/Poly1305KeyGenerator;->checkMask(BB)V

    .line 100
    const/4 v0, 0x7

    aget-byte v0, p0, v0

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/generators/Poly1305KeyGenerator;->checkMask(BB)V

    .line 101
    const/16 v0, 0xb

    aget-byte v0, p0, v0

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/generators/Poly1305KeyGenerator;->checkMask(BB)V

    .line 102
    aget-byte v0, p0, v1

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/generators/Poly1305KeyGenerator;->checkMask(BB)V

    .line 104
    const/4 v0, 0x4

    aget-byte v0, p0, v0

    const/4 v1, -0x4

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/generators/Poly1305KeyGenerator;->checkMask(BB)V

    .line 105
    const/16 v0, 0x8

    aget-byte v0, p0, v0

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/generators/Poly1305KeyGenerator;->checkMask(BB)V

    .line 106
    const/16 v0, 0xc

    aget-byte v0, p0, v0

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/generators/Poly1305KeyGenerator;->checkMask(BB)V

    .line 107
    return-void

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Poly1305 key must be 256 bits."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkMask(BB)V
    .locals 2
    .param p0, "b"    # B
    .param p1, "mask"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "b",
            "mask"
        }
    .end annotation

    .line 111
    not-int v0, p1

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    .line 115
    return-void

    .line 113
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid format for r portion of Poly1305 key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static clamp([B)V
    .locals 3
    .param p0, "key"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 63
    array-length v0, p0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 71
    const/4 v0, 0x3

    aget-byte v1, p0, v0

    const/16 v2, 0xf

    and-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 72
    const/4 v0, 0x7

    aget-byte v1, p0, v0

    and-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 73
    const/16 v0, 0xb

    aget-byte v1, p0, v0

    and-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 74
    aget-byte v0, p0, v2

    and-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, p0, v2

    .line 79
    const/4 v0, 0x4

    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, -0x4

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 80
    const/16 v0, 0x8

    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, -0x4

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 81
    const/16 v0, 0xc

    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, -0x4

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 82
    return-void

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Poly1305 key must be 256 bits."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public generateKey()[B
    .locals 1

    .line 42
    invoke-super {p0}, Lorg/bouncycastle/crypto/CipherKeyGenerator;->generateKey()[B

    move-result-object v0

    .line 43
    .local v0, "key":[B
    invoke-static {v0}, Lorg/bouncycastle/crypto/generators/Poly1305KeyGenerator;->clamp([B)V

    .line 44
    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 3
    .param p1, "param"    # Lorg/bouncycastle/crypto/KeyGenerationParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 32
    new-instance v0, Lorg/bouncycastle/crypto/KeyGenerationParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-super {p0, v0}, Lorg/bouncycastle/crypto/CipherKeyGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 33
    return-void
.end method
