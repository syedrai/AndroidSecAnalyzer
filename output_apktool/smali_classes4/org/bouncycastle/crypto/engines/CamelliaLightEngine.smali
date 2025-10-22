.class public Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;
.super Ljava/lang/Object;
.source "CamelliaLightEngine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final BLOCK_SIZE:I = 0x10

.field private static final MASK8:I = 0xff

.field private static final SBOX1:[B

.field private static final SIGMA:[I


# instance fields
.field private _keySize:I

.field private forEncryption:Z

.field private initialized:Z

.field private ke:[I

.field private kw:[I

.field private subkey:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->SIGMA:[I

    .line 42
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->SBOX1:[B

    return-void

    nop

    :array_0
    .array-data 4
        -0x5f619981
        0x3bcc908b
        -0x498517a8
        0x4caa73b2    # 8.9365904E7f
        -0x3910c8d1
        -0x16b07d42
        0x54ff53a5
        -0xe2c90e4
        0x10e527fa
        -0x2197d2e3
        -0x4fa9773e
        -0x4c193e03
    .end array-data

    :array_1
    .array-data 1
        0x70t
        -0x7et
        0x2ct
        -0x14t
        -0x4dt
        0x27t
        -0x40t
        -0x1bt
        -0x1ct
        -0x7bt
        0x57t
        0x35t
        -0x16t
        0xct
        -0x52t
        0x41t
        0x23t
        -0x11t
        0x6bt
        -0x6dt
        0x45t
        0x19t
        -0x5bt
        0x21t
        -0x13t
        0xet
        0x4ft
        0x4et
        0x1dt
        0x65t
        -0x6et
        -0x43t
        -0x7at
        -0x48t
        -0x51t
        -0x71t
        0x7ct
        -0x15t
        0x1ft
        -0x32t
        0x3et
        0x30t
        -0x24t
        0x5ft
        0x5et
        -0x3bt
        0xbt
        0x1at
        -0x5at
        -0x1ft
        0x39t
        -0x36t
        -0x2bt
        0x47t
        0x5dt
        0x3dt
        -0x27t
        0x1t
        0x5at
        -0x2at
        0x51t
        0x56t
        0x6ct
        0x4dt
        -0x75t
        0xdt
        -0x66t
        0x66t
        -0x5t
        -0x34t
        -0x50t
        0x2dt
        0x74t
        0x12t
        0x2bt
        0x20t
        -0x10t
        -0x4ft
        -0x7ct
        -0x67t
        -0x21t
        0x4ct
        -0x35t
        -0x3et
        0x34t
        0x7et
        0x76t
        0x5t
        0x6dt
        -0x49t
        -0x57t
        0x31t
        -0x2ft
        0x17t
        0x4t
        -0x29t
        0x14t
        0x58t
        0x3at
        0x61t
        -0x22t
        0x1bt
        0x11t
        0x1ct
        0x32t
        0xft
        -0x64t
        0x16t
        0x53t
        0x18t
        -0xet
        0x22t
        -0x2t
        0x44t
        -0x31t
        -0x4et
        -0x3dt
        -0x4bt
        0x7at
        -0x6ft
        0x24t
        0x8t
        -0x18t
        -0x58t
        0x60t
        -0x4t
        0x69t
        0x50t
        -0x56t
        -0x30t
        -0x60t
        0x7dt
        -0x5ft
        -0x77t
        0x62t
        -0x69t
        0x54t
        0x5bt
        0x1et
        -0x6bt
        -0x20t
        -0x1t
        0x64t
        -0x2et
        0x10t
        -0x3ct
        0x0t
        0x48t
        -0x5dt
        -0x9t
        0x75t
        -0x25t
        -0x76t
        0x3t
        -0x1at
        -0x26t
        0x9t
        0x3ft
        -0x23t
        -0x6ct
        -0x79t
        0x5ct
        -0x7dt
        0x2t
        -0x33t
        0x4at
        -0x70t
        0x33t
        0x73t
        0x67t
        -0xat
        -0xdt
        -0x63t
        0x7ft
        -0x41t
        -0x1et
        0x52t
        -0x65t
        -0x28t
        0x26t
        -0x38t
        0x37t
        -0x3at
        0x3bt
        -0x7ft
        -0x6at
        0x6ft
        0x4bt
        0x13t
        -0x42t
        0x63t
        0x2et
        -0x17t
        0x79t
        -0x59t
        -0x74t
        -0x61t
        0x6et
        -0x44t
        -0x72t
        0x29t
        -0xbt
        -0x7t
        -0x4at
        0x2ft
        -0x3t
        -0x4ct
        0x59t
        0x78t
        -0x68t
        0x6t
        0x6at
        -0x19t
        0x46t
        0x71t
        -0x46t
        -0x2ct
        0x25t
        -0x55t
        0x42t
        -0x78t
        -0x5et
        -0x73t
        -0x6t
        0x72t
        0x7t
        -0x47t
        0x55t
        -0x8t
        -0x12t
        -0x54t
        0xat
        0x36t
        0x49t
        0x2at
        0x68t
        0x3ct
        0x38t
        -0xft
        -0x5ct
        0x40t
        0x28t
        -0x2dt
        0x7bt
        -0x45t
        -0x37t
        0x43t
        -0x3ft
        0x15t
        -0x1dt
        -0x53t
        -0xct
        0x77t
        -0x39t
        -0x80t
        -0x62t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->initialized:Z

    .line 24
    const/16 v0, 0x60

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    .line 25
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    .line 26
    const/16 v0, 0xc

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    .line 540
    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bitsOfSecurity()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 541
    return-void
.end method

.method private bitsOfSecurity()I
    .locals 1

    .line 602
    iget v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->_keySize:I

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method private bytes2int([BI)I
    .locals 4
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "src",
            "offset"
        }
    .end annotation

    .line 173
    const/4 v0, 0x0

    .line 175
    .local v0, "word":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 177
    shl-int/lit8 v2, v0, 0x8

    add-int v3, v1, p2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int v0, v2, v3

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method private camelliaF2([I[II)V
    .locals 12
    .param p1, "s"    # [I
    .param p2, "skey"    # [I
    .param p3, "keyoff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "skey",
            "keyoff"
        }
    .end annotation

    .line 215
    const/4 v0, 0x0

    aget v1, p1, v0

    add-int/lit8 v2, p3, 0x0

    aget v2, p2, v2

    xor-int/2addr v1, v2

    .line 216
    .local v1, "t1":I
    and-int/lit16 v2, v1, 0xff

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->sbox4(I)I

    move-result v2

    .line 217
    .local v2, "u":I
    ushr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->sbox3(I)I

    move-result v3

    const/16 v4, 0x8

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 218
    ushr-int/lit8 v3, v1, 0x10

    and-int/lit16 v3, v3, 0xff

    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->sbox2(I)I

    move-result v3

    const/16 v5, 0x10

    shl-int/2addr v3, v5

    or-int/2addr v2, v3

    .line 219
    sget-object v3, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->SBOX1:[B

    ushr-int/lit8 v6, v1, 0x18

    and-int/lit16 v6, v6, 0xff

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    .line 221
    const/4 v3, 0x1

    aget v6, p1, v3

    add-int/lit8 v7, p3, 0x1

    aget v7, p2, v7

    xor-int/2addr v6, v7

    .line 222
    .local v6, "t2":I
    sget-object v7, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->SBOX1:[B

    and-int/lit16 v8, v6, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    .line 223
    .local v7, "v":I
    ushr-int/lit8 v8, v6, 0x8

    and-int/lit16 v8, v8, 0xff

    invoke-direct {p0, v8}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->sbox4(I)I

    move-result v8

    shl-int/2addr v8, v4

    or-int/2addr v7, v8

    .line 224
    ushr-int/lit8 v8, v6, 0x10

    and-int/lit16 v8, v8, 0xff

    invoke-direct {p0, v8}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->sbox3(I)I

    move-result v8

    shl-int/2addr v8, v5

    or-int/2addr v7, v8

    .line 225
    ushr-int/lit8 v8, v6, 0x18

    and-int/lit16 v8, v8, 0xff

    invoke-direct {p0, v8}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->sbox2(I)I

    move-result v8

    shl-int/lit8 v8, v8, 0x18

    or-int/2addr v7, v8

    .line 227
    invoke-static {v7, v4}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->leftRotate(II)I

    move-result v7

    .line 228
    xor-int/2addr v2, v7

    .line 229
    invoke-static {v7, v4}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->leftRotate(II)I

    move-result v8

    xor-int v7, v8, v2

    .line 230
    invoke-static {v2, v4}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->rightRotate(II)I

    move-result v8

    xor-int v2, v8, v7

    .line 231
    const/4 v8, 0x2

    aget v9, p1, v8

    invoke-static {v7, v5}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->leftRotate(II)I

    move-result v10

    xor-int/2addr v10, v2

    xor-int/2addr v9, v10

    aput v9, p1, v8

    .line 232
    const/4 v9, 0x3

    aget v10, p1, v9

    invoke-static {v2, v4}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->leftRotate(II)I

    move-result v11

    xor-int/2addr v10, v11

    aput v10, p1, v9

    .line 234
    aget v8, p1, v8

    add-int/lit8 v10, p3, 0x2

    aget v10, p2, v10

    xor-int v1, v8, v10

    .line 235
    and-int/lit16 v8, v1, 0xff

    invoke-direct {p0, v8}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->sbox4(I)I

    move-result v2

    .line 236
    ushr-int/lit8 v8, v1, 0x8

    and-int/lit16 v8, v8, 0xff

    invoke-direct {p0, v8}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->sbox3(I)I

    move-result v8

    shl-int/2addr v8, v4

    or-int/2addr v2, v8

    .line 237
    ushr-int/lit8 v8, v1, 0x10

    and-int/lit16 v8, v8, 0xff

    invoke-direct {p0, v8}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->sbox2(I)I

    move-result v8

    shl-int/2addr v8, v5

    or-int/2addr v2, v8

    .line 238
    sget-object v8, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->SBOX1:[B

    ushr-int/lit8 v10, v1, 0x18

    and-int/lit16 v10, v10, 0xff

    aget-byte v8, v8, v10

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    or-int/2addr v2, v8

    .line 240
    aget v8, p1, v9

    add-int/lit8 v9, p3, 0x3

    aget v9, p2, v9

    xor-int v6, v8, v9

    .line 241
    sget-object v8, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->SBOX1:[B

    and-int/lit16 v9, v6, 0xff

    aget-byte v8, v8, v9

    and-int/lit16 v7, v8, 0xff

    .line 242
    ushr-int/lit8 v8, v6, 0x8

    and-int/lit16 v8, v8, 0xff

    invoke-direct {p0, v8}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->sbox4(I)I

    move-result v8

    shl-int/2addr v8, v4

    or-int/2addr v7, v8

    .line 243
    ushr-int/lit8 v8, v6, 0x10

    and-int/lit16 v8, v8, 0xff

    invoke-direct {p0, v8}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->sbox3(I)I

    move-result v8

    shl-int/2addr v8, v5

    or-int/2addr v7, v8

    .line 244
    ushr-int/lit8 v8, v6, 0x18

    and-int/lit16 v8, v8, 0xff

    invoke-direct {p0, v8}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->sbox2(I)I

    move-result v8

    shl-int/lit8 v8, v8, 0x18

    or-int/2addr v7, v8

    .line 246
    invoke-static {v7, v4}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->leftRotate(II)I

    move-result v7

    .line 247
    xor-int/2addr v2, v7

    .line 248
    invoke-static {v7, v4}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->leftRotate(II)I

    move-result v8

    xor-int v7, v8, v2

    .line 249
    invoke-static {v2, v4}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->rightRotate(II)I

    move-result v8

    xor-int v2, v8, v7

    .line 250
    aget v8, p1, v0

    invoke-static {v7, v5}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->leftRotate(II)I

    move-result v5

    xor-int/2addr v5, v2

    xor-int/2addr v5, v8

    aput v5, p1, v0

    .line 251
    aget v0, p1, v3

    invoke-static {v2, v4}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->leftRotate(II)I

    move-result v4

    xor-int/2addr v0, v4

    aput v0, p1, v3

    .line 252
    return-void
.end method

.method private camelliaFLs([I[II)V
    .locals 6
    .param p1, "s"    # [I
    .param p2, "fkey"    # [I
    .param p3, "keyoff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "fkey",
            "keyoff"
        }
    .end annotation

    .line 257
    const/4 v0, 0x1

    aget v1, p1, v0

    const/4 v2, 0x0

    aget v3, p1, v2

    add-int/lit8 v4, p3, 0x0

    aget v4, p2, v4

    and-int/2addr v3, v4

    invoke-static {v3, v0}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->leftRotate(II)I

    move-result v3

    xor-int/2addr v1, v3

    aput v1, p1, v0

    .line 258
    aget v1, p1, v2

    add-int/lit8 v3, p3, 0x1

    aget v3, p2, v3

    aget v4, p1, v0

    or-int/2addr v3, v4

    xor-int/2addr v1, v3

    aput v1, p1, v2

    .line 260
    const/4 v1, 0x2

    aget v2, p1, v1

    add-int/lit8 v3, p3, 0x3

    aget v3, p2, v3

    const/4 v4, 0x3

    aget v5, p1, v4

    or-int/2addr v3, v5

    xor-int/2addr v2, v3

    aput v2, p1, v1

    .line 261
    aget v2, p1, v4

    add-int/lit8 v3, p3, 0x2

    aget v3, p2, v3

    aget v1, p1, v1

    and-int/2addr v1, v3

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->leftRotate(II)I

    move-result v0

    xor-int/2addr v0, v2

    aput v0, p1, v4

    .line 262
    return-void
.end method

.method private static decroldq(I[II[II)V
    .locals 4
    .param p0, "rot"    # I
    .param p1, "ki"    # [I
    .param p2, "ioff"    # I
    .param p3, "ko"    # [I
    .param p4, "ooff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rot",
            "ki",
            "ioff",
            "ko",
            "ooff"
        }
    .end annotation

    .line 135
    add-int/lit8 v0, p4, 0x2

    add-int/lit8 v1, p2, 0x0

    aget v1, p1, v1

    shl-int/2addr v1, p0

    add-int/lit8 v2, p2, 0x1

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x20

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 136
    add-int/lit8 v0, p4, 0x3

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    shl-int/2addr v1, p0

    add-int/lit8 v2, p2, 0x2

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x20

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 137
    add-int/lit8 v0, p4, 0x0

    add-int/lit8 v1, p2, 0x2

    aget v1, p1, v1

    shl-int/2addr v1, p0

    add-int/lit8 v2, p2, 0x3

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x20

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 138
    add-int/lit8 v0, p4, 0x1

    add-int/lit8 v1, p2, 0x3

    aget v1, p1, v1

    shl-int/2addr v1, p0

    add-int/lit8 v2, p2, 0x0

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x20

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 139
    add-int/lit8 v0, p2, 0x0

    add-int/lit8 v1, p4, 0x2

    aget v1, p3, v1

    aput v1, p1, v0

    .line 140
    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, p4, 0x3

    aget v1, p3, v1

    aput v1, p1, v0

    .line 141
    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v1, p4, 0x0

    aget v1, p3, v1

    aput v1, p1, v0

    .line 142
    add-int/lit8 v0, p2, 0x3

    add-int/lit8 v1, p4, 0x1

    aget v1, p3, v1

    aput v1, p1, v0

    .line 143
    return-void
.end method

.method private static decroldqo32(I[II[II)V
    .locals 4
    .param p0, "rot"    # I
    .param p1, "ki"    # [I
    .param p2, "ioff"    # I
    .param p3, "ko"    # [I
    .param p4, "ooff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rot",
            "ki",
            "ioff",
            "ko",
            "ooff"
        }
    .end annotation

    .line 161
    add-int/lit8 v0, p4, 0x2

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    add-int/lit8 v2, p0, -0x20

    shl-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x2

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x40

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 162
    add-int/lit8 v0, p4, 0x3

    add-int/lit8 v1, p2, 0x2

    aget v1, p1, v1

    add-int/lit8 v2, p0, -0x20

    shl-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x3

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x40

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 163
    add-int/lit8 v0, p4, 0x0

    add-int/lit8 v1, p2, 0x3

    aget v1, p1, v1

    add-int/lit8 v2, p0, -0x20

    shl-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x0

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x40

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 164
    add-int/lit8 v0, p4, 0x1

    add-int/lit8 v1, p2, 0x0

    aget v1, p1, v1

    add-int/lit8 v2, p0, -0x20

    shl-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x1

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x40

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 165
    add-int/lit8 v0, p2, 0x0

    add-int/lit8 v1, p4, 0x2

    aget v1, p3, v1

    aput v1, p1, v0

    .line 166
    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, p4, 0x3

    aget v1, p3, v1

    aput v1, p1, v0

    .line 167
    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v1, p4, 0x0

    aget v1, p3, v1

    aput v1, p1, v0

    .line 168
    add-int/lit8 v0, p2, 0x3

    add-int/lit8 v1, p4, 0x1

    aget v1, p3, v1

    aput v1, p1, v0

    .line 169
    return-void
.end method

.method private int2bytes(I[BI)V
    .locals 3
    .param p1, "word"    # I
    .param p2, "dst"    # [B
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "word",
            "dst",
            "offset"
        }
    .end annotation

    .line 184
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 186
    rsub-int/lit8 v1, v0, 0x3

    add-int/2addr v1, p3

    int-to-byte v2, p1

    aput-byte v2, p2, v1

    .line 187
    ushr-int/lit8 p1, p1, 0x8

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private lRot8(BI)B
    .locals 3
    .param p1, "v"    # B
    .param p2, "rot"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "rot"
        }
    .end annotation

    .line 193
    shl-int v0, p1, p2

    and-int/lit16 v1, p1, 0xff

    rsub-int/lit8 v2, p2, 0x8

    ushr-int/2addr v1, v2

    or-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method private static leftRotate(II)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "s"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "s"
        }
    .end annotation

    .line 116
    shl-int v0, p0, p1

    rsub-int/lit8 v1, p1, 0x20

    ushr-int v1, p0, v1

    add-int/2addr v0, v1

    return v0
.end method

.method private processBlock128([BI[BI)I
    .locals 9
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "out",
            "outOff"
        }
    .end annotation

    .line 467
    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 469
    .local v1, "state":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 471
    mul-int/lit8 v3, v2, 0x4

    add-int/2addr v3, p2

    invoke-direct {p0, p1, v3}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v4, v4, v2

    xor-int/2addr v3, v4

    aput v3, v1, v2

    .line 469
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 474
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    .line 475
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    invoke-direct {p0, v1, v2, v0}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    .line 476
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v4, 0x8

    invoke-direct {p0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    .line 477
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaFLs([I[II)V

    .line 478
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v4, 0xc

    invoke-direct {p0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    .line 479
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v4, 0x10

    invoke-direct {p0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    .line 480
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v5, 0x14

    invoke-direct {p0, v1, v2, v5}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    .line 481
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    invoke-direct {p0, v1, v2, v0}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaFLs([I[II)V

    .line 482
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v5, 0x18

    invoke-direct {p0, v1, v2, v5}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    .line 483
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v5, 0x1c

    invoke-direct {p0, v1, v2, v5}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    .line 484
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v5, 0x20

    invoke-direct {p0, v1, v2, v5}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    .line 486
    const/4 v2, 0x2

    aget v5, v1, v2

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v0, v6, v0

    xor-int/2addr v0, v5

    aput v0, v1, v2

    .line 487
    const/4 v0, 0x3

    aget v5, v1, v0

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    const/4 v7, 0x5

    aget v6, v6, v7

    xor-int/2addr v5, v6

    aput v5, v1, v0

    .line 488
    aget v5, v1, v3

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    const/4 v7, 0x6

    aget v6, v6, v7

    xor-int/2addr v5, v6

    aput v5, v1, v3

    .line 489
    const/4 v5, 0x1

    aget v6, v1, v5

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    const/4 v8, 0x7

    aget v7, v7, v8

    xor-int/2addr v6, v7

    aput v6, v1, v5

    .line 491
    aget v2, v1, v2

    invoke-direct {p0, v2, p3, p4}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->int2bytes(I[BI)V

    .line 492
    aget v0, v1, v0

    add-int/lit8 v2, p4, 0x4

    invoke-direct {p0, v0, p3, v2}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->int2bytes(I[BI)V

    .line 493
    aget v0, v1, v3

    add-int/lit8 v2, p4, 0x8

    invoke-direct {p0, v0, p3, v2}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->int2bytes(I[BI)V

    .line 494
    aget v0, v1, v5

    add-int/lit8 v2, p4, 0xc

    invoke-direct {p0, v0, p3, v2}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->int2bytes(I[BI)V

    .line 496
    return v4
.end method

.method private processBlock192or256([BI[BI)I
    .locals 9
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "out",
            "outOff"
        }
    .end annotation

    .line 502
    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 504
    .local v1, "state":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 506
    mul-int/lit8 v3, v2, 0x4

    add-int/2addr v3, p2

    invoke-direct {p0, p1, v3}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v4, v4, v2

    xor-int/2addr v3, v4

    aput v3, v1, v2

    .line 504
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 509
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    .line 510
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    invoke-direct {p0, v1, v2, v0}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    .line 511
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v4, 0x8

    invoke-direct {p0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    .line 512
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaFLs([I[II)V

    .line 513
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v5, 0xc

    invoke-direct {p0, v1, v2, v5}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    .line 514
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v5, 0x10

    invoke-direct {p0, v1, v2, v5}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    .line 515
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v6, 0x14

    invoke-direct {p0, v1, v2, v6}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    .line 516
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    invoke-direct {p0, v1, v2, v0}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaFLs([I[II)V

    .line 517
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v6, 0x18

    invoke-direct {p0, v1, v2, v6}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    .line 518
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v6, 0x1c

    invoke-direct {p0, v1, v2, v6}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    .line 519
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v6, 0x20

    invoke-direct {p0, v1, v2, v6}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    .line 520
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    invoke-direct {p0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaFLs([I[II)V

    .line 521
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v4, 0x24

    invoke-direct {p0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    .line 522
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v4, 0x28

    invoke-direct {p0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    .line 523
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v4, 0x2c

    invoke-direct {p0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    .line 525
    const/4 v2, 0x2

    aget v4, v1, v2

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v0, v6, v0

    xor-int/2addr v0, v4

    aput v0, v1, v2

    .line 526
    const/4 v0, 0x3

    aget v4, v1, v0

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    const/4 v7, 0x5

    aget v6, v6, v7

    xor-int/2addr v4, v6

    aput v4, v1, v0

    .line 527
    aget v4, v1, v3

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    const/4 v7, 0x6

    aget v6, v6, v7

    xor-int/2addr v4, v6

    aput v4, v1, v3

    .line 528
    const/4 v4, 0x1

    aget v6, v1, v4

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    const/4 v8, 0x7

    aget v7, v7, v8

    xor-int/2addr v6, v7

    aput v6, v1, v4

    .line 530
    aget v2, v1, v2

    invoke-direct {p0, v2, p3, p4}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->int2bytes(I[BI)V

    .line 531
    aget v0, v1, v0

    add-int/lit8 v2, p4, 0x4

    invoke-direct {p0, v0, p3, v2}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->int2bytes(I[BI)V

    .line 532
    aget v0, v1, v3

    add-int/lit8 v2, p4, 0x8

    invoke-direct {p0, v0, p3, v2}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->int2bytes(I[BI)V

    .line 533
    aget v0, v1, v4

    add-int/lit8 v2, p4, 0xc

    invoke-direct {p0, v0, p3, v2}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->int2bytes(I[BI)V

    .line 535
    return v5
.end method

.method private static rightRotate(II)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "s"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "s"
        }
    .end annotation

    .line 111
    ushr-int v0, p0, p1

    rsub-int/lit8 v1, p1, 0x20

    shl-int v1, p0, v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static roldq(I[II[II)V
    .locals 4
    .param p0, "rot"    # I
    .param p1, "ki"    # [I
    .param p2, "ioff"    # I
    .param p3, "ko"    # [I
    .param p4, "ooff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rot",
            "ki",
            "ioff",
            "ko",
            "ooff"
        }
    .end annotation

    .line 122
    add-int/lit8 v0, p4, 0x0

    add-int/lit8 v1, p2, 0x0

    aget v1, p1, v1

    shl-int/2addr v1, p0

    add-int/lit8 v2, p2, 0x1

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x20

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 123
    add-int/lit8 v0, p4, 0x1

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    shl-int/2addr v1, p0

    add-int/lit8 v2, p2, 0x2

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x20

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 124
    add-int/lit8 v0, p4, 0x2

    add-int/lit8 v1, p2, 0x2

    aget v1, p1, v1

    shl-int/2addr v1, p0

    add-int/lit8 v2, p2, 0x3

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x20

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 125
    add-int/lit8 v0, p4, 0x3

    add-int/lit8 v1, p2, 0x3

    aget v1, p1, v1

    shl-int/2addr v1, p0

    add-int/lit8 v2, p2, 0x0

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x20

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 126
    add-int/lit8 v0, p2, 0x0

    add-int/lit8 v1, p4, 0x0

    aget v1, p3, v1

    aput v1, p1, v0

    .line 127
    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, p4, 0x1

    aget v1, p3, v1

    aput v1, p1, v0

    .line 128
    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v1, p4, 0x2

    aget v1, p3, v1

    aput v1, p1, v0

    .line 129
    add-int/lit8 v0, p2, 0x3

    add-int/lit8 v1, p4, 0x3

    aget v1, p3, v1

    aput v1, p1, v0

    .line 130
    return-void
.end method

.method private static roldqo32(I[II[II)V
    .locals 4
    .param p0, "rot"    # I
    .param p1, "ki"    # [I
    .param p2, "ioff"    # I
    .param p3, "ko"    # [I
    .param p4, "ooff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rot",
            "ki",
            "ioff",
            "ko",
            "ooff"
        }
    .end annotation

    .line 148
    add-int/lit8 v0, p4, 0x0

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    add-int/lit8 v2, p0, -0x20

    shl-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x2

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x40

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 149
    add-int/lit8 v0, p4, 0x1

    add-int/lit8 v1, p2, 0x2

    aget v1, p1, v1

    add-int/lit8 v2, p0, -0x20

    shl-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x3

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x40

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 150
    add-int/lit8 v0, p4, 0x2

    add-int/lit8 v1, p2, 0x3

    aget v1, p1, v1

    add-int/lit8 v2, p0, -0x20

    shl-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x0

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x40

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 151
    add-int/lit8 v0, p4, 0x3

    add-int/lit8 v1, p2, 0x0

    aget v1, p1, v1

    add-int/lit8 v2, p0, -0x20

    shl-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x1

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x40

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 152
    add-int/lit8 v0, p2, 0x0

    add-int/lit8 v1, p4, 0x0

    aget v1, p3, v1

    aput v1, p1, v0

    .line 153
    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, p4, 0x1

    aget v1, p3, v1

    aput v1, p1, v0

    .line 154
    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v1, p4, 0x2

    aget v1, p3, v1

    aput v1, p1, v0

    .line 155
    add-int/lit8 v0, p2, 0x3

    add-int/lit8 v1, p4, 0x3

    aget v1, p3, v1

    aput v1, p1, v0

    .line 156
    return-void
.end method

.method private sbox2(I)I
    .locals 2
    .param p1, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 198
    sget-object v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->SBOX1:[B

    aget-byte v0, v0, p1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->lRot8(BI)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private sbox3(I)I
    .locals 2
    .param p1, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 203
    sget-object v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->SBOX1:[B

    aget-byte v0, v0, p1

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->lRot8(BI)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private sbox4(I)I
    .locals 3
    .param p1, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 208
    sget-object v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->SBOX1:[B

    int-to-byte v1, p1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->lRot8(BI)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private setKey(Z[B)V
    .locals 29
    .param p1, "forEncryption"    # Z
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "forEncryption",
            "key"
        }
    .end annotation

    .line 266
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iput-boolean v1, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->forEncryption:Z

    .line 267
    const/16 v3, 0x8

    new-array v4, v3, [I

    .line 268
    .local v4, "k":[I
    const/4 v5, 0x4

    new-array v6, v5, [I

    .line 269
    .local v6, "ka":[I
    new-array v7, v5, [I

    .line 270
    .local v7, "kb":[I
    new-array v8, v5, [I

    .line 271
    .local v8, "t":[I
    array-length v9, v2

    iput v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->_keySize:I

    .line 273
    array-length v9, v2

    const/16 v10, 0x1c

    const/16 v11, 0x18

    const/16 v14, 0x14

    const/16 v16, 0x7

    const/16 v12, 0x10

    const/16 v17, 0x6

    const/16 v13, 0xc

    const/16 v18, 0x3

    const/16 v19, 0x2

    const/16 v20, 0x1

    const/16 v21, 0x5

    const/4 v15, 0x0

    sparse-switch v9, :sswitch_data_0

    .line 303
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "key sizes are only 16/24/32 bytes."

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 293
    :sswitch_0
    invoke-direct {v0, v2, v15}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v9

    aput v9, v4, v15

    .line 294
    invoke-direct {v0, v2, v5}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v9

    aput v9, v4, v20

    .line 295
    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v9

    aput v9, v4, v19

    .line 296
    invoke-direct {v0, v2, v13}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v9

    aput v9, v4, v18

    .line 297
    invoke-direct {v0, v2, v12}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v9

    aput v9, v4, v5

    .line 298
    invoke-direct {v0, v2, v14}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v9

    aput v9, v4, v21

    .line 299
    invoke-direct {v0, v2, v11}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v9

    aput v9, v4, v17

    .line 300
    invoke-direct {v0, v2, v10}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v9

    aput v9, v4, v16

    .line 301
    goto :goto_0

    .line 283
    :sswitch_1
    invoke-direct {v0, v2, v15}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v9

    aput v9, v4, v15

    .line 284
    invoke-direct {v0, v2, v5}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v9

    aput v9, v4, v20

    .line 285
    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v9

    aput v9, v4, v19

    .line 286
    invoke-direct {v0, v2, v13}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v9

    aput v9, v4, v18

    .line 287
    invoke-direct {v0, v2, v12}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v9

    aput v9, v4, v5

    .line 288
    invoke-direct {v0, v2, v14}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v9

    aput v9, v4, v21

    .line 289
    aget v9, v4, v5

    not-int v9, v9

    aput v9, v4, v17

    .line 290
    aget v9, v4, v21

    not-int v9, v9

    aput v9, v4, v16

    .line 291
    goto :goto_0

    .line 276
    :sswitch_2
    invoke-direct {v0, v2, v15}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v9

    aput v9, v4, v15

    .line 277
    invoke-direct {v0, v2, v5}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v9

    aput v9, v4, v20

    .line 278
    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v9

    aput v9, v4, v19

    .line 279
    invoke-direct {v0, v2, v13}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v9

    aput v9, v4, v18

    .line 280
    aput v15, v4, v16

    aput v15, v4, v17

    aput v15, v4, v21

    aput v15, v4, v5

    .line 281
    nop

    .line 307
    :goto_0
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v5, :cond_0

    .line 309
    aget v22, v4, v9

    add-int/lit8 v23, v9, 0x4

    aget v23, v4, v23

    xor-int v22, v22, v23

    aput v22, v6, v9

    .line 307
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 312
    .end local v9    # "i":I
    :cond_0
    sget-object v9, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->SIGMA:[I

    invoke-direct {v0, v6, v9, v15}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    .line 313
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_2
    if-ge v9, v5, :cond_1

    .line 315
    aget v22, v6, v9

    aget v23, v4, v9

    xor-int v22, v22, v23

    aput v22, v6, v9

    .line 313
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 317
    .end local v9    # "i":I
    :cond_1
    sget-object v9, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->SIGMA:[I

    invoke-direct {v0, v6, v9, v5}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    .line 319
    iget v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->_keySize:I

    const/16 v14, 0x1e

    const/16 v3, 0x11

    const/16 v10, 0xf

    if-ne v9, v12, :cond_3

    .line 321
    const/16 v26, 0x12

    if-eqz v1, :cond_2

    .line 324
    const/16 v27, 0x13

    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v16, v4, v15

    aput v16, v9, v15

    .line 325
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v16, v4, v20

    aput v16, v9, v20

    .line 326
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v16, v4, v19

    aput v16, v9, v19

    .line 327
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v16, v4, v18

    aput v16, v9, v18

    .line 328
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    invoke-static {v10, v4, v15, v9, v5}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    .line 329
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    invoke-static {v14, v4, v15, v9, v13}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    .line 330
    invoke-static {v10, v4, v15, v8, v15}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    .line 331
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    aget v13, v8, v19

    aput v13, v9, v26

    .line 332
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    aget v13, v8, v18

    aput v13, v9, v27

    .line 333
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    invoke-static {v3, v4, v15, v9, v5}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    .line 334
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    invoke-static {v3, v4, v15, v9, v11}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    .line 335
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v11, 0x20

    invoke-static {v3, v4, v15, v9, v11}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    .line 337
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    aget v11, v6, v15

    aput v11, v9, v15

    .line 338
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    aget v11, v6, v20

    aput v11, v9, v20

    .line 339
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    aget v11, v6, v19

    aput v11, v9, v19

    .line 340
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    aget v11, v6, v18

    aput v11, v9, v18

    .line 341
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v11, 0x8

    invoke-static {v10, v6, v15, v9, v11}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    .line 342
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    invoke-static {v10, v6, v15, v9, v15}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    .line 343
    invoke-static {v10, v6, v15, v8, v15}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    .line 344
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    aget v11, v8, v15

    aput v11, v9, v12

    .line 345
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    aget v11, v8, v20

    aput v11, v9, v3

    .line 346
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v11, 0x14

    invoke-static {v10, v6, v15, v9, v11}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    .line 347
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v10, 0x1c

    const/16 v11, 0x22

    invoke-static {v11, v6, v15, v9, v10}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldqo32(I[II[II)V

    .line 348
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    invoke-static {v3, v6, v15, v9, v5}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    goto/16 :goto_4

    .line 354
    :cond_2
    const/16 v27, 0x13

    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v28, v4, v15

    aput v28, v9, v5

    .line 355
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v28, v4, v20

    aput v28, v9, v21

    .line 356
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v21, v4, v19

    aput v21, v9, v17

    .line 357
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v17, v4, v18

    aput v17, v9, v16

    .line 358
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v12, 0x1c

    const/16 v28, 0x10

    invoke-static {v10, v4, v15, v9, v12}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    .line 359
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v12, 0x14

    invoke-static {v14, v4, v15, v9, v12}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    .line 360
    invoke-static {v10, v4, v15, v8, v15}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    .line 361
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    aget v12, v8, v15

    aput v12, v9, v28

    .line 362
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    aget v12, v8, v20

    aput v12, v9, v3

    .line 363
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    invoke-static {v3, v4, v15, v9, v15}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    .line 364
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v12, 0x8

    invoke-static {v3, v4, v15, v9, v12}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    .line 365
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    invoke-static {v3, v4, v15, v9, v15}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    .line 367
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    aget v12, v6, v15

    const/16 v24, 0x22

    aput v12, v9, v24

    .line 368
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v12, 0x23

    aget v14, v6, v20

    aput v14, v9, v12

    .line 369
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    aget v12, v6, v19

    const/16 v25, 0x20

    aput v12, v9, v25

    .line 370
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v12, 0x21

    aget v14, v6, v18

    aput v14, v9, v12

    .line 371
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    invoke-static {v10, v6, v15, v9, v11}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    .line 372
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    invoke-static {v10, v6, v15, v9, v5}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    .line 373
    invoke-static {v10, v6, v15, v8, v15}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    .line 374
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    aget v11, v8, v19

    aput v11, v9, v26

    .line 375
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    aget v11, v8, v18

    aput v11, v9, v27

    .line 376
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    invoke-static {v10, v6, v15, v9, v13}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    .line 377
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v11, 0x22

    invoke-static {v11, v6, v15, v9, v5}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldqo32(I[II[II)V

    .line 378
    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    invoke-static {v3, v6, v15, v5, v15}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    goto/16 :goto_4

    .line 384
    :cond_3
    const/16 v28, 0x10

    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_3
    if-ge v9, v5, :cond_4

    .line 386
    aget v12, v6, v9

    add-int/lit8 v26, v9, 0x4

    aget v26, v4, v26

    xor-int v12, v12, v26

    aput v12, v7, v9

    .line 384
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 388
    .end local v9    # "i":I
    :cond_4
    sget-object v9, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->SIGMA:[I

    const/16 v12, 0x8

    invoke-direct {v0, v7, v9, v12}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    .line 390
    const/16 v9, 0x2d

    if-eqz v1, :cond_5

    .line 393
    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v16, v4, v15

    aput v16, v12, v15

    .line 394
    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v16, v4, v20

    aput v16, v12, v20

    .line 395
    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v16, v4, v19

    aput v16, v12, v19

    .line 396
    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v16, v4, v18

    aput v16, v12, v18

    .line 397
    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v13, 0x10

    invoke-static {v9, v4, v15, v12, v13}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldqo32(I[II[II)V

    .line 398
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    invoke-static {v10, v4, v15, v9, v5}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    .line 399
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v12, 0x20

    invoke-static {v3, v4, v15, v9, v12}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    .line 400
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v9, 0x2c

    const/16 v12, 0x22

    invoke-static {v12, v4, v15, v3, v9}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldqo32(I[II[II)V

    .line 402
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    invoke-static {v10, v4, v5, v3, v5}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    .line 403
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    invoke-static {v10, v4, v5, v3, v15}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    .line 404
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    invoke-static {v14, v4, v5, v3, v11}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    .line 405
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v9, 0x24

    const/16 v11, 0x22

    invoke-static {v11, v4, v5, v3, v9}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldqo32(I[II[II)V

    .line 407
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v12, 0x8

    invoke-static {v10, v6, v15, v3, v12}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    .line 408
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v11, 0x14

    invoke-static {v14, v6, v15, v3, v11}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    .line 410
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    aget v9, v6, v20

    aput v9, v3, v12

    .line 411
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    const/16 v9, 0x9

    aget v10, v6, v19

    aput v10, v3, v9

    .line 412
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    const/16 v9, 0xa

    aget v10, v6, v18

    aput v10, v3, v9

    .line 413
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    const/16 v9, 0xb

    aget v10, v6, v15

    aput v10, v3, v9

    .line 414
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v9, 0x28

    const/16 v10, 0x31

    invoke-static {v10, v6, v15, v3, v9}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldqo32(I[II[II)V

    .line 417
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    aget v9, v7, v15

    aput v9, v3, v15

    .line 418
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    aget v9, v7, v20

    aput v9, v3, v20

    .line 419
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    aget v9, v7, v19

    aput v9, v3, v19

    .line 420
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    aget v9, v7, v18

    aput v9, v3, v18

    .line 421
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v9, 0xc

    invoke-static {v14, v7, v15, v3, v9}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    .line 422
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v10, 0x1c

    invoke-static {v14, v7, v15, v3, v10}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    .line 423
    const/16 v3, 0x33

    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    invoke-static {v3, v7, v15, v9, v5}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldqo32(I[II[II)V

    goto/16 :goto_4

    .line 429
    :cond_5
    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v13, v4, v15

    aput v13, v12, v5

    .line 430
    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v13, v4, v20

    aput v13, v12, v21

    .line 431
    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v13, v4, v19

    aput v13, v12, v17

    .line 432
    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v13, v4, v18

    aput v13, v12, v16

    .line 433
    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v13, 0x1c

    invoke-static {v9, v4, v15, v12, v13}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldqo32(I[II[II)V

    .line 434
    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    invoke-static {v10, v4, v15, v12, v5}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    .line 435
    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v13, 0xc

    invoke-static {v3, v4, v15, v12, v13}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    .line 436
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v12, 0x22

    invoke-static {v12, v4, v15, v3, v15}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldqo32(I[II[II)V

    .line 438
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v12, 0x28

    invoke-static {v10, v4, v5, v3, v12}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    .line 439
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    const/16 v12, 0x8

    invoke-static {v10, v4, v5, v3, v12}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    .line 440
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v13, 0x14

    invoke-static {v14, v4, v5, v3, v13}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    .line 441
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v13, 0x22

    invoke-static {v13, v4, v5, v3, v12}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldqo32(I[II[II)V

    .line 443
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v12, 0x24

    invoke-static {v10, v6, v15, v3, v12}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    .line 444
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    invoke-static {v14, v6, v15, v3, v11}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    .line 446
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    aget v10, v6, v20

    aput v10, v3, v19

    .line 447
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    aget v10, v6, v19

    aput v10, v3, v18

    .line 448
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    aget v10, v6, v18

    aput v10, v3, v15

    .line 449
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    aget v10, v6, v15

    aput v10, v3, v20

    .line 450
    const/16 v3, 0x31

    iget-object v10, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    invoke-static {v3, v6, v15, v10, v5}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldqo32(I[II[II)V

    .line 453
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v5, 0x2e

    aget v10, v7, v15

    aput v10, v3, v5

    .line 454
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v5, 0x2f

    aget v10, v7, v20

    aput v10, v3, v5

    .line 455
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v5, 0x2c

    aget v10, v7, v19

    aput v10, v3, v5

    .line 456
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    aget v5, v7, v18

    aput v5, v3, v9

    .line 457
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v11, 0x20

    invoke-static {v14, v7, v15, v3, v11}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    .line 458
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v13, 0x10

    invoke-static {v14, v7, v15, v3, v13}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    .line 459
    const/16 v3, 0x33

    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    invoke-static {v3, v7, v15, v5, v15}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldqo32(I[II[II)V

    .line 462
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_2
        0x18 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 545
    const-string v0, "Camellia"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .line 550
    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 4
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "forEncryption",
            "params"
        }
    .end annotation

    .line 555
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    .line 560
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->setKey(Z[B)V

    .line 561
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->initialized:Z

    .line 563
    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bitsOfSecurity()I

    move-result v2

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v3

    invoke-direct {v0, v1, v2, p2, v3}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 564
    return-void

    .line 557
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only simple KeyParameter expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processBlock([BI[BI)I
    .locals 2
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "out",
            "outOff"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 571
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->initialized:Z

    if-eqz v0, :cond_3

    .line 576
    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-gt v0, v1, :cond_2

    .line 581
    add-int/lit8 v0, p4, 0x10

    array-length v1, p3

    if-gt v0, v1, :cond_1

    .line 586
    iget v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->_keySize:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 588
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->processBlock128([BI[BI)I

    move-result v0

    return v0

    .line 592
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->processBlock192or256([BI[BI)I

    move-result v0

    return v0

    .line 583
    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 573
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Camellia is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 0

    .line 598
    return-void
.end method
