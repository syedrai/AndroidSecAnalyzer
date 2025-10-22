.class public Lorg/bouncycastle/crypto/engines/SkipjackEngine;
.super Ljava/lang/Object;
.source "SkipjackEngine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field static final BLOCK_SIZE:I = 0x8

.field static ftable:[S


# instance fields
.field private encrypting:Z

.field private key0:[I

.field private key1:[I

.field private key2:[I

.field private key3:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const/16 v0, 0x100

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->ftable:[S

    return-void

    :array_0
    .array-data 2
        0xa3s
        0xd7s
        0x9s
        0x83s
        0xf8s
        0x48s
        0xf6s
        0xf4s
        0xb3s
        0x21s
        0x15s
        0x78s
        0x99s
        0xb1s
        0xafs
        0xf9s
        0xe7s
        0x2ds
        0x4ds
        0x8as
        0xces
        0x4cs
        0xcas
        0x2es
        0x52s
        0x95s
        0xd9s
        0x1es
        0x4es
        0x38s
        0x44s
        0x28s
        0xas
        0xdfs
        0x2s
        0xa0s
        0x17s
        0xf1s
        0x60s
        0x68s
        0x12s
        0xb7s
        0x7as
        0xc3s
        0xe9s
        0xfas
        0x3ds
        0x53s
        0x96s
        0x84s
        0x6bs
        0xbas
        0xf2s
        0x63s
        0x9as
        0x19s
        0x7cs
        0xaes
        0xe5s
        0xf5s
        0xf7s
        0x16s
        0x6as
        0xa2s
        0x39s
        0xb6s
        0x7bs
        0xfs
        0xc1s
        0x93s
        0x81s
        0x1bs
        0xees
        0xb4s
        0x1as
        0xeas
        0xd0s
        0x91s
        0x2fs
        0xb8s
        0x55s
        0xb9s
        0xdas
        0x85s
        0x3fs
        0x41s
        0xbfs
        0xe0s
        0x5as
        0x58s
        0x80s
        0x5fs
        0x66s
        0xbs
        0xd8s
        0x90s
        0x35s
        0xd5s
        0xc0s
        0xa7s
        0x33s
        0x6s
        0x65s
        0x69s
        0x45s
        0x0s
        0x94s
        0x56s
        0x6ds
        0x98s
        0x9bs
        0x76s
        0x97s
        0xfcs
        0xb2s
        0xc2s
        0xb0s
        0xfes
        0xdbs
        0x20s
        0xe1s
        0xebs
        0xd6s
        0xe4s
        0xdds
        0x47s
        0x4as
        0x1ds
        0x42s
        0xeds
        0x9es
        0x6es
        0x49s
        0x3cs
        0xcds
        0x43s
        0x27s
        0xd2s
        0x7s
        0xd4s
        0xdes
        0xc7s
        0x67s
        0x18s
        0x89s
        0xcbs
        0x30s
        0x1fs
        0x8ds
        0xc6s
        0x8fs
        0xaas
        0xc8s
        0x74s
        0xdcs
        0xc9s
        0x5ds
        0x5cs
        0x31s
        0xa4s
        0x70s
        0x88s
        0x61s
        0x2cs
        0x9fs
        0xds
        0x2bs
        0x87s
        0x50s
        0x82s
        0x54s
        0x64s
        0x26s
        0x7ds
        0x3s
        0x40s
        0x34s
        0x4bs
        0x1cs
        0x73s
        0xd1s
        0xc4s
        0xfds
        0x3bs
        0xccs
        0xfbs
        0x7fs
        0xabs
        0xe6s
        0x3es
        0x5bs
        0xa5s
        0xads
        0x4s
        0x23s
        0x9cs
        0x14s
        0x51s
        0x22s
        0xf0s
        0x29s
        0x79s
        0x71s
        0x7es
        0xffs
        0x8cs
        0xes
        0xe2s
        0xcs
        0xefs
        0xbcs
        0x72s
        0x75s
        0x6fs
        0x37s
        0xa1s
        0xecs
        0xd3s
        0x8es
        0x62s
        0x8bs
        0x86s
        0x10s
        0xe8s
        0x8s
        0x77s
        0x11s
        0xbes
        0x92s
        0x4fs
        0x24s
        0xc5s
        0x32s
        0x36s
        0x9ds
        0xcfs
        0xf3s
        0xa6s
        0xbbs
        0xacs
        0x5es
        0x6cs
        0xa9s
        0x13s
        0x57s
        0x25s
        0xb5s
        0xe3s
        0xbds
        0xa8s
        0x3as
        0x1s
        0x5s
        0x59s
        0x2as
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x50

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 46
    return-void
.end method

.method private g(II)I
    .locals 7
    .param p1, "k"    # I
    .param p2, "w"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "k",
            "w"
        }
    .end annotation

    .line 144
    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 145
    .local v0, "g1":I
    and-int/lit16 v1, p2, 0xff

    .line 147
    .local v1, "g2":I
    sget-object v2, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->ftable:[S

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key0:[I

    aget v3, v3, p1

    xor-int/2addr v3, v1

    aget-short v2, v2, v3

    xor-int/2addr v2, v0

    .line 148
    .local v2, "g3":I
    sget-object v3, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->ftable:[S

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key1:[I

    aget v4, v4, p1

    xor-int/2addr v4, v2

    aget-short v3, v3, v4

    xor-int/2addr v3, v1

    .line 149
    .local v3, "g4":I
    sget-object v4, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->ftable:[S

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key2:[I

    aget v5, v5, p1

    xor-int/2addr v5, v3

    aget-short v4, v4, v5

    xor-int/2addr v4, v2

    .line 150
    .local v4, "g5":I
    sget-object v5, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->ftable:[S

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key3:[I

    aget v6, v6, p1

    xor-int/2addr v6, v4

    aget-short v5, v5, v6

    xor-int/2addr v5, v3

    .line 152
    .local v5, "g6":I
    shl-int/lit8 v6, v4, 0x8

    add-int/2addr v6, v5

    return v6
.end method

.method private getPurpose()Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .locals 1

    .line 273
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key0:[I

    if-nez v0, :cond_0

    .line 275
    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    return-object v0

    .line 278
    :cond_0
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->encrypting:Z

    if-eqz v0, :cond_1

    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ENCRYPTION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->DECRYPTION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    :goto_0
    return-object v0
.end method

.method private h(II)I
    .locals 7
    .param p1, "k"    # I
    .param p2, "w"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "k",
            "w"
        }
    .end annotation

    .line 212
    and-int/lit16 v0, p2, 0xff

    .line 213
    .local v0, "h1":I
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 215
    .local v1, "h2":I
    sget-object v2, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->ftable:[S

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key3:[I

    aget v3, v3, p1

    xor-int/2addr v3, v1

    aget-short v2, v2, v3

    xor-int/2addr v2, v0

    .line 216
    .local v2, "h3":I
    sget-object v3, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->ftable:[S

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key2:[I

    aget v4, v4, p1

    xor-int/2addr v4, v2

    aget-short v3, v3, v4

    xor-int/2addr v3, v1

    .line 217
    .local v3, "h4":I
    sget-object v4, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->ftable:[S

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key1:[I

    aget v5, v5, p1

    xor-int/2addr v5, v3

    aget-short v4, v4, v5

    xor-int/2addr v4, v2

    .line 218
    .local v4, "h5":I
    sget-object v5, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->ftable:[S

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key0:[I

    aget v6, v6, p1

    xor-int/2addr v6, v4

    aget-short v5, v5, v6

    xor-int/2addr v5, v3

    .line 220
    .local v5, "h6":I
    shl-int/lit8 v6, v5, 0x8

    add-int/2addr v6, v4

    return v6
.end method


# virtual methods
.method public decryptBlock([BI[BI)I
    .locals 11
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

    .line 229
    add-int/lit8 v0, p2, 0x0

    aget-byte v0, p1, v0

    const/16 v1, 0x8

    shl-int/2addr v0, v1

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v0, v2

    .line 230
    .local v0, "w2":I
    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    shl-int/2addr v2, v1

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    .line 231
    .local v2, "w1":I
    add-int/lit8 v3, p2, 0x4

    aget-byte v3, p1, v3

    shl-int/2addr v3, v1

    add-int/lit8 v4, p2, 0x5

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    .line 232
    .local v3, "w4":I
    add-int/lit8 v4, p2, 0x6

    aget-byte v4, p1, v4

    shl-int/2addr v4, v1

    add-int/lit8 v5, p2, 0x7

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    .line 234
    .local v4, "w3":I
    const/16 v5, 0x1f

    .line 236
    .local v5, "k":I
    const/4 v6, 0x0

    .local v6, "t":I
    :goto_0
    const/4 v7, 0x2

    if-ge v6, v7, :cond_2

    .line 238
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v1, :cond_0

    .line 240
    move v8, v3

    .line 241
    .local v8, "tmp":I
    move v3, v4

    .line 242
    move v4, v0

    .line 243
    invoke-direct {p0, v5, v2}, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->h(II)I

    move-result v0

    .line 244
    xor-int v9, v0, v8

    add-int/lit8 v10, v5, 0x1

    xor-int v2, v9, v10

    .line 245
    nop

    .end local v8    # "tmp":I
    add-int/lit8 v5, v5, -0x1

    .line 238
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 248
    .end local v7    # "i":I
    :cond_0
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    if-ge v7, v1, :cond_1

    .line 250
    move v8, v3

    .line 251
    .restart local v8    # "tmp":I
    move v3, v4

    .line 252
    xor-int v9, v2, v0

    add-int/lit8 v10, v5, 0x1

    xor-int v4, v9, v10

    .line 253
    invoke-direct {p0, v5, v2}, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->h(II)I

    move-result v0

    .line 254
    move v2, v8

    .line 255
    nop

    .end local v8    # "tmp":I
    add-int/lit8 v5, v5, -0x1

    .line 248
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 236
    .end local v7    # "i":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 259
    .end local v6    # "t":I
    :cond_2
    add-int/lit8 v6, p4, 0x0

    shr-int/lit8 v7, v0, 0x8

    int-to-byte v7, v7

    aput-byte v7, p3, v6

    .line 260
    add-int/lit8 v6, p4, 0x1

    int-to-byte v7, v0

    aput-byte v7, p3, v6

    .line 261
    add-int/lit8 v6, p4, 0x2

    shr-int/lit8 v7, v2, 0x8

    int-to-byte v7, v7

    aput-byte v7, p3, v6

    .line 262
    add-int/lit8 v6, p4, 0x3

    int-to-byte v7, v2

    aput-byte v7, p3, v6

    .line 263
    add-int/lit8 v6, p4, 0x4

    shr-int/lit8 v7, v3, 0x8

    int-to-byte v7, v7

    aput-byte v7, p3, v6

    .line 264
    add-int/lit8 v6, p4, 0x5

    int-to-byte v7, v3

    aput-byte v7, p3, v6

    .line 265
    add-int/lit8 v6, p4, 0x6

    shr-int/lit8 v7, v4, 0x8

    int-to-byte v7, v7

    aput-byte v7, p3, v6

    .line 266
    add-int/lit8 v6, p4, 0x7

    int-to-byte v7, v4

    aput-byte v7, p3, v6

    .line 268
    return v1
.end method

.method public encryptBlock([BI[BI)I
    .locals 11
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

    .line 161
    add-int/lit8 v0, p2, 0x0

    aget-byte v0, p1, v0

    const/16 v1, 0x8

    shl-int/2addr v0, v1

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v0, v2

    .line 162
    .local v0, "w1":I
    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    shl-int/2addr v2, v1

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    .line 163
    .local v2, "w2":I
    add-int/lit8 v3, p2, 0x4

    aget-byte v3, p1, v3

    shl-int/2addr v3, v1

    add-int/lit8 v4, p2, 0x5

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    .line 164
    .local v3, "w3":I
    add-int/lit8 v4, p2, 0x6

    aget-byte v4, p1, v4

    shl-int/2addr v4, v1

    add-int/lit8 v5, p2, 0x7

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    .line 166
    .local v4, "w4":I
    const/4 v5, 0x0

    .line 168
    .local v5, "k":I
    const/4 v6, 0x0

    .local v6, "t":I
    :goto_0
    const/4 v7, 0x2

    if-ge v6, v7, :cond_2

    .line 170
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v1, :cond_0

    .line 172
    move v8, v4

    .line 173
    .local v8, "tmp":I
    move v4, v3

    .line 174
    move v3, v2

    .line 175
    invoke-direct {p0, v5, v0}, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->g(II)I

    move-result v2

    .line 176
    xor-int v9, v2, v8

    add-int/lit8 v10, v5, 0x1

    xor-int v0, v9, v10

    .line 177
    nop

    .end local v8    # "tmp":I
    add-int/lit8 v5, v5, 0x1

    .line 170
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 180
    .end local v7    # "i":I
    :cond_0
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    if-ge v7, v1, :cond_1

    .line 182
    move v8, v4

    .line 183
    .restart local v8    # "tmp":I
    move v4, v3

    .line 184
    xor-int v9, v0, v2

    add-int/lit8 v10, v5, 0x1

    xor-int v3, v9, v10

    .line 185
    invoke-direct {p0, v5, v0}, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->g(II)I

    move-result v2

    .line 186
    move v0, v8

    .line 187
    nop

    .end local v8    # "tmp":I
    add-int/lit8 v5, v5, 0x1

    .line 180
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 168
    .end local v7    # "i":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 191
    .end local v6    # "t":I
    :cond_2
    add-int/lit8 v6, p4, 0x0

    shr-int/lit8 v7, v0, 0x8

    int-to-byte v7, v7

    aput-byte v7, p3, v6

    .line 192
    add-int/lit8 v6, p4, 0x1

    int-to-byte v7, v0

    aput-byte v7, p3, v6

    .line 193
    add-int/lit8 v6, p4, 0x2

    shr-int/lit8 v7, v2, 0x8

    int-to-byte v7, v7

    aput-byte v7, p3, v6

    .line 194
    add-int/lit8 v6, p4, 0x3

    int-to-byte v7, v2

    aput-byte v7, p3, v6

    .line 195
    add-int/lit8 v6, p4, 0x4

    shr-int/lit8 v7, v3, 0x8

    int-to-byte v7, v7

    aput-byte v7, p3, v6

    .line 196
    add-int/lit8 v6, p4, 0x5

    int-to-byte v7, v3

    aput-byte v7, p3, v6

    .line 197
    add-int/lit8 v6, p4, 0x6

    shr-int/lit8 v7, v4, 0x8

    int-to-byte v7, v7

    aput-byte v7, p3, v6

    .line 198
    add-int/lit8 v6, p4, 0x7

    int-to-byte v7, v4

    aput-byte v7, p3, v6

    .line 200
    return v1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 90
    const-string v0, "SKIPJACK"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .line 95
    const/16 v0, 0x8

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 5
    .param p1, "encrypting"    # Z
    .param p2, "params"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "encrypting",
            "params"
        }
    .end annotation

    .line 60
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_1

    .line 65
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    .line 67
    .local v0, "keyBytes":[B
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->encrypting:Z

    .line 68
    const/16 v1, 0x20

    new-array v2, v1, [I

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key0:[I

    .line 69
    new-array v2, v1, [I

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key1:[I

    .line 70
    new-array v2, v1, [I

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key2:[I

    .line 71
    new-array v2, v1, [I

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key3:[I

    .line 77
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 79
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key0:[I

    mul-int/lit8 v4, v2, 0x4

    rem-int/lit8 v4, v4, 0xa

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v2

    .line 80
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key1:[I

    mul-int/lit8 v4, v2, 0x4

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0xa

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v2

    .line 81
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key2:[I

    mul-int/lit8 v4, v2, 0x4

    add-int/lit8 v4, v4, 0x2

    rem-int/lit8 v4, v4, 0xa

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v2

    .line 82
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key3:[I

    mul-int/lit8 v4, v2, 0x4

    add-int/lit8 v4, v4, 0x3

    rem-int/lit8 v4, v4, 0xa

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v2

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    .end local v2    # "i":I
    :cond_0
    new-instance v1, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x50

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->getPurpose()Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v4

    invoke-direct {v1, v2, v3, p2, v4}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v1}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 86
    return-void

    .line 62
    .end local v0    # "keyBytes":[B
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid parameter passed to SKIPJACK init - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

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

    .line 104
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key1:[I

    if-eqz v0, :cond_3

    .line 109
    add-int/lit8 v0, p2, 0x8

    array-length v1, p1

    if-gt v0, v1, :cond_2

    .line 114
    add-int/lit8 v0, p4, 0x8

    array-length v1, p3

    if-gt v0, v1, :cond_1

    .line 119
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->encrypting:Z

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->encryptBlock([BI[BI)I

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->decryptBlock([BI[BI)I

    .line 128
    :goto_0
    const/16 v0, 0x8

    return v0

    .line 116
    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SKIPJACK engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 0

    .line 133
    return-void
.end method
