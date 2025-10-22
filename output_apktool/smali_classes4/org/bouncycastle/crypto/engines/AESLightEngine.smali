.class public Lorg/bouncycastle/crypto/engines/AESLightEngine;
.super Ljava/lang/Object;
.source "AESLightEngine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final BLOCK_SIZE:I = 0x10

.field private static final S:[B

.field private static final Si:[B

.field private static final m1:I = -0x7f7f7f80

.field private static final m2:I = 0x7f7f7f7f

.field private static final m3:I = 0x1b

.field private static final m4:I = -0x3f3f3f40

.field private static final m5:I = 0x3f3f3f3f

.field private static final rcon:[I


# instance fields
.field private ROUNDS:I

.field private WorkingKey:[[I

.field private forEncryption:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    .line 77
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    .line 113
    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->rcon:[I

    return-void

    :array_0
    .array-data 1
        0x63t
        0x7ct
        0x77t
        0x7bt
        -0xet
        0x6bt
        0x6ft
        -0x3bt
        0x30t
        0x1t
        0x67t
        0x2bt
        -0x2t
        -0x29t
        -0x55t
        0x76t
        -0x36t
        -0x7et
        -0x37t
        0x7dt
        -0x6t
        0x59t
        0x47t
        -0x10t
        -0x53t
        -0x2ct
        -0x5et
        -0x51t
        -0x64t
        -0x5ct
        0x72t
        -0x40t
        -0x49t
        -0x3t
        -0x6dt
        0x26t
        0x36t
        0x3ft
        -0x9t
        -0x34t
        0x34t
        -0x5bt
        -0x1bt
        -0xft
        0x71t
        -0x28t
        0x31t
        0x15t
        0x4t
        -0x39t
        0x23t
        -0x3dt
        0x18t
        -0x6at
        0x5t
        -0x66t
        0x7t
        0x12t
        -0x80t
        -0x1et
        -0x15t
        0x27t
        -0x4et
        0x75t
        0x9t
        -0x7dt
        0x2ct
        0x1at
        0x1bt
        0x6et
        0x5at
        -0x60t
        0x52t
        0x3bt
        -0x2at
        -0x4dt
        0x29t
        -0x1dt
        0x2ft
        -0x7ct
        0x53t
        -0x2ft
        0x0t
        -0x13t
        0x20t
        -0x4t
        -0x4ft
        0x5bt
        0x6at
        -0x35t
        -0x42t
        0x39t
        0x4at
        0x4ct
        0x58t
        -0x31t
        -0x30t
        -0x11t
        -0x56t
        -0x5t
        0x43t
        0x4dt
        0x33t
        -0x7bt
        0x45t
        -0x7t
        0x2t
        0x7ft
        0x50t
        0x3ct
        -0x61t
        -0x58t
        0x51t
        -0x5dt
        0x40t
        -0x71t
        -0x6et
        -0x63t
        0x38t
        -0xbt
        -0x44t
        -0x4at
        -0x26t
        0x21t
        0x10t
        -0x1t
        -0xdt
        -0x2et
        -0x33t
        0xct
        0x13t
        -0x14t
        0x5ft
        -0x69t
        0x44t
        0x17t
        -0x3ct
        -0x59t
        0x7et
        0x3dt
        0x64t
        0x5dt
        0x19t
        0x73t
        0x60t
        -0x7ft
        0x4ft
        -0x24t
        0x22t
        0x2at
        -0x70t
        -0x78t
        0x46t
        -0x12t
        -0x48t
        0x14t
        -0x22t
        0x5et
        0xbt
        -0x25t
        -0x20t
        0x32t
        0x3at
        0xat
        0x49t
        0x6t
        0x24t
        0x5ct
        -0x3et
        -0x2dt
        -0x54t
        0x62t
        -0x6ft
        -0x6bt
        -0x1ct
        0x79t
        -0x19t
        -0x38t
        0x37t
        0x6dt
        -0x73t
        -0x2bt
        0x4et
        -0x57t
        0x6ct
        0x56t
        -0xct
        -0x16t
        0x65t
        0x7at
        -0x52t
        0x8t
        -0x46t
        0x78t
        0x25t
        0x2et
        0x1ct
        -0x5at
        -0x4ct
        -0x3at
        -0x18t
        -0x23t
        0x74t
        0x1ft
        0x4bt
        -0x43t
        -0x75t
        -0x76t
        0x70t
        0x3et
        -0x4bt
        0x66t
        0x48t
        0x3t
        -0xat
        0xet
        0x61t
        0x35t
        0x57t
        -0x47t
        -0x7at
        -0x3ft
        0x1dt
        -0x62t
        -0x1ft
        -0x8t
        -0x68t
        0x11t
        0x69t
        -0x27t
        -0x72t
        -0x6ct
        -0x65t
        0x1et
        -0x79t
        -0x17t
        -0x32t
        0x55t
        0x28t
        -0x21t
        -0x74t
        -0x5ft
        -0x77t
        0xdt
        -0x41t
        -0x1at
        0x42t
        0x68t
        0x41t
        -0x67t
        0x2dt
        0xft
        -0x50t
        0x54t
        -0x45t
        0x16t
    .end array-data

    :array_1
    .array-data 1
        0x52t
        0x9t
        0x6at
        -0x2bt
        0x30t
        0x36t
        -0x5bt
        0x38t
        -0x41t
        0x40t
        -0x5dt
        -0x62t
        -0x7ft
        -0xdt
        -0x29t
        -0x5t
        0x7ct
        -0x1dt
        0x39t
        -0x7et
        -0x65t
        0x2ft
        -0x1t
        -0x79t
        0x34t
        -0x72t
        0x43t
        0x44t
        -0x3ct
        -0x22t
        -0x17t
        -0x35t
        0x54t
        0x7bt
        -0x6ct
        0x32t
        -0x5at
        -0x3et
        0x23t
        0x3dt
        -0x12t
        0x4ct
        -0x6bt
        0xbt
        0x42t
        -0x6t
        -0x3dt
        0x4et
        0x8t
        0x2et
        -0x5ft
        0x66t
        0x28t
        -0x27t
        0x24t
        -0x4et
        0x76t
        0x5bt
        -0x5et
        0x49t
        0x6dt
        -0x75t
        -0x2ft
        0x25t
        0x72t
        -0x8t
        -0xat
        0x64t
        -0x7at
        0x68t
        -0x68t
        0x16t
        -0x2ct
        -0x5ct
        0x5ct
        -0x34t
        0x5dt
        0x65t
        -0x4at
        -0x6et
        0x6ct
        0x70t
        0x48t
        0x50t
        -0x3t
        -0x13t
        -0x47t
        -0x26t
        0x5et
        0x15t
        0x46t
        0x57t
        -0x59t
        -0x73t
        -0x63t
        -0x7ct
        -0x70t
        -0x28t
        -0x55t
        0x0t
        -0x74t
        -0x44t
        -0x2dt
        0xat
        -0x9t
        -0x1ct
        0x58t
        0x5t
        -0x48t
        -0x4dt
        0x45t
        0x6t
        -0x30t
        0x2ct
        0x1et
        -0x71t
        -0x36t
        0x3ft
        0xft
        0x2t
        -0x3ft
        -0x51t
        -0x43t
        0x3t
        0x1t
        0x13t
        -0x76t
        0x6bt
        0x3at
        -0x6ft
        0x11t
        0x41t
        0x4ft
        0x67t
        -0x24t
        -0x16t
        -0x69t
        -0xet
        -0x31t
        -0x32t
        -0x10t
        -0x4ct
        -0x1at
        0x73t
        -0x6at
        -0x54t
        0x74t
        0x22t
        -0x19t
        -0x53t
        0x35t
        -0x7bt
        -0x1et
        -0x7t
        0x37t
        -0x18t
        0x1ct
        0x75t
        -0x21t
        0x6et
        0x47t
        -0xft
        0x1at
        0x71t
        0x1dt
        0x29t
        -0x3bt
        -0x77t
        0x6ft
        -0x49t
        0x62t
        0xet
        -0x56t
        0x18t
        -0x42t
        0x1bt
        -0x4t
        0x56t
        0x3et
        0x4bt
        -0x3at
        -0x2et
        0x79t
        0x20t
        -0x66t
        -0x25t
        -0x40t
        -0x2t
        0x78t
        -0x33t
        0x5at
        -0xct
        0x1ft
        -0x23t
        -0x58t
        0x33t
        -0x78t
        0x7t
        -0x39t
        0x31t
        -0x4ft
        0x12t
        0x10t
        0x59t
        0x27t
        -0x80t
        -0x14t
        0x5ft
        0x60t
        0x51t
        0x7ft
        -0x57t
        0x19t
        -0x4bt
        0x4at
        0xdt
        0x2dt
        -0x1bt
        0x7at
        -0x61t
        -0x6dt
        -0x37t
        -0x64t
        -0x11t
        -0x60t
        -0x20t
        0x3bt
        0x4dt
        -0x52t
        0x2at
        -0xbt
        -0x50t
        -0x38t
        -0x15t
        -0x45t
        0x3ct
        -0x7dt
        0x53t
        -0x67t
        0x61t
        0x17t
        0x2bt
        0x4t
        0x7et
        -0x46t
        0x77t
        -0x2at
        0x26t
        -0x1ft
        0x69t
        0x14t
        0x63t
        0x55t
        0x21t
        0xct
        0x7dt
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x1b
        0x36
        0x6c
        0xd8
        0xab
        0x4d
        0x9a
        0x2f
        0x5e
        0xbc
        0x63
        0xc6
        0x97
        0x35
        0x6a
        0xd4
        0xb3
        0x7d
        0xfa
        0xef
        0xc5
        0x91
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->WorkingKey:[[I

    .line 325
    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->bitsOfSecurity()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 326
    return-void
.end method

.method private static FFmulX(I)I
    .locals 2
    .param p0, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 132
    const v0, 0x7f7f7f7f

    and-int/2addr v0, p0

    shl-int/lit8 v0, v0, 0x1

    const v1, -0x7f7f7f80

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x1b

    xor-int/2addr v0, v1

    return v0
.end method

.method private static FFmulX2(I)I
    .locals 4
    .param p0, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 137
    const v0, 0x3f3f3f3f

    and-int/2addr v0, p0

    shl-int/lit8 v0, v0, 0x2

    .line 138
    .local v0, "t0":I
    const v1, -0x3f3f3f40

    and-int/2addr v1, p0

    .line 139
    .local v1, "t1":I
    ushr-int/lit8 v2, v1, 0x1

    xor-int/2addr v1, v2

    .line 140
    ushr-int/lit8 v2, v1, 0x2

    xor-int/2addr v2, v0

    ushr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    return v2
.end method

.method private bitsOfSecurity()I
    .locals 1

    .line 482
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->WorkingKey:[[I

    if-nez v0, :cond_0

    .line 484
    const/16 v0, 0x100

    return v0

    .line 486
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->WorkingKey:[[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x7

    shl-int/lit8 v0, v0, 0x5

    return v0
.end method

.method private decryptBlock([BI[BI[[I)V
    .locals 20
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I
    .param p5, "KW"    # [[I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "out",
            "outOff",
            "KW"
        }
    .end annotation

    .line 440
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    add-int/lit8 v3, p2, 0x0

    invoke-static {v1, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    .line 441
    .local v3, "C0":I
    add-int/lit8 v4, p2, 0x4

    invoke-static {v1, v4}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    .line 442
    .local v4, "C1":I
    add-int/lit8 v5, p2, 0x8

    invoke-static {v1, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    .line 443
    .local v5, "C2":I
    add-int/lit8 v6, p2, 0xc

    invoke-static {v1, v6}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v6

    .line 445
    .local v6, "C3":I
    iget v7, v0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    aget-object v7, p5, v7

    const/4 v8, 0x0

    aget v7, v7, v8

    xor-int/2addr v7, v3

    .line 446
    .local v7, "t0":I
    iget v9, v0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    aget-object v9, p5, v9

    const/4 v10, 0x1

    aget v9, v9, v10

    xor-int/2addr v9, v4

    .line 447
    .local v9, "t1":I
    iget v11, v0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    aget-object v11, p5, v11

    const/4 v12, 0x2

    aget v11, v11, v12

    xor-int/2addr v11, v5

    .line 449
    .local v11, "t2":I
    iget v13, v0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    sub-int/2addr v13, v10

    .local v13, "r":I
    iget v14, v0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    aget-object v14, p5, v14

    const/4 v15, 0x3

    aget v14, v14, v15

    xor-int/2addr v14, v6

    .line 450
    .local v14, "r3":I
    :goto_0
    if-le v13, v10, :cond_0

    .line 452
    sget-object v16, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    const/16 v17, 0x0

    and-int/lit16 v8, v7, 0xff

    aget-byte v8, v16, v8

    and-int/lit16 v8, v8, 0xff

    sget-object v16, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    const/16 v18, 0x1

    shr-int/lit8 v10, v14, 0x8

    and-int/lit16 v10, v10, 0xff

    aget-byte v10, v16, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v8, v10

    sget-object v10, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    const/16 v16, 0x2

    shr-int/lit8 v12, v11, 0x10

    and-int/lit16 v12, v12, 0xff

    aget-byte v10, v10, v12

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    xor-int/2addr v8, v10

    sget-object v10, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v12, v9, 0x18

    and-int/lit16 v12, v12, 0xff

    aget-byte v10, v10, v12

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v8, v10

    invoke-static {v8}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v8

    aget-object v10, p5, v13

    aget v10, v10, v17

    xor-int/2addr v8, v10

    .line 453
    .local v8, "r0":I
    sget-object v10, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v12, v9, 0xff

    aget-byte v10, v10, v12

    and-int/lit16 v10, v10, 0xff

    sget-object v12, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    const/16 v19, 0x3

    shr-int/lit8 v15, v7, 0x8

    and-int/lit16 v15, v15, 0xff

    aget-byte v12, v12, v15

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    xor-int/2addr v10, v12

    sget-object v12, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v15, v14, 0x10

    and-int/lit16 v15, v15, 0xff

    aget-byte v12, v12, v15

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    xor-int/2addr v10, v12

    sget-object v12, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v15, v11, 0x18

    and-int/lit16 v15, v15, 0xff

    aget-byte v12, v12, v15

    shl-int/lit8 v12, v12, 0x18

    xor-int/2addr v10, v12

    invoke-static {v10}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v10

    aget-object v12, p5, v13

    aget v12, v12, v18

    xor-int/2addr v10, v12

    .line 454
    .local v10, "r1":I
    sget-object v12, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v15, v11, 0xff

    aget-byte v12, v12, v15

    and-int/lit16 v12, v12, 0xff

    sget-object v15, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v0, v9, 0x8

    and-int/lit16 v0, v0, 0xff

    aget-byte v0, v15, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    xor-int/2addr v0, v12

    sget-object v12, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v15, v7, 0x10

    and-int/lit16 v15, v15, 0xff

    aget-byte v12, v12, v15

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    xor-int/2addr v0, v12

    sget-object v12, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v15, v14, 0x18

    and-int/lit16 v15, v15, 0xff

    aget-byte v12, v12, v15

    shl-int/lit8 v12, v12, 0x18

    xor-int/2addr v0, v12

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v0

    aget-object v12, p5, v13

    aget v12, v12, v16

    xor-int/2addr v0, v12

    .line 455
    .local v0, "r2":I
    sget-object v12, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v15, v14, 0xff

    aget-byte v12, v12, v15

    and-int/lit16 v12, v12, 0xff

    sget-object v15, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v1, v11, 0x8

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v15, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    xor-int/2addr v1, v12

    sget-object v12, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v15, v9, 0x10

    and-int/lit16 v15, v15, 0xff

    aget-byte v12, v12, v15

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    xor-int/2addr v1, v12

    sget-object v12, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v15, v7, 0x18

    and-int/lit16 v15, v15, 0xff

    aget-byte v12, v12, v15

    shl-int/lit8 v12, v12, 0x18

    xor-int/2addr v1, v12

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v1

    add-int/lit8 v12, v13, -0x1

    .end local v13    # "r":I
    .local v12, "r":I
    aget-object v13, p5, v13

    aget v13, v13, v19

    xor-int/2addr v1, v13

    .line 456
    .end local v14    # "r3":I
    .local v1, "r3":I
    sget-object v13, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v14, v8, 0xff

    aget-byte v13, v13, v14

    and-int/lit16 v13, v13, 0xff

    sget-object v14, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v15, v1, 0x8

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    xor-int/2addr v13, v14

    sget-object v14, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v15, v0, 0x10

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x10

    xor-int/2addr v13, v14

    sget-object v14, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v15, v10, 0x18

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    shl-int/lit8 v14, v14, 0x18

    xor-int/2addr v13, v14

    invoke-static {v13}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v13

    aget-object v14, p5, v12

    aget v14, v14, v17

    xor-int v7, v13, v14

    .line 457
    sget-object v13, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v14, v10, 0xff

    aget-byte v13, v13, v14

    and-int/lit16 v13, v13, 0xff

    sget-object v14, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v15, v8, 0x8

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    xor-int/2addr v13, v14

    sget-object v14, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v15, v1, 0x10

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x10

    xor-int/2addr v13, v14

    sget-object v14, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v15, v0, 0x18

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    shl-int/lit8 v14, v14, 0x18

    xor-int/2addr v13, v14

    invoke-static {v13}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v13

    aget-object v14, p5, v12

    aget v14, v14, v18

    xor-int v9, v13, v14

    .line 458
    sget-object v13, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v14, v0, 0xff

    aget-byte v13, v13, v14

    and-int/lit16 v13, v13, 0xff

    sget-object v14, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v15, v10, 0x8

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    xor-int/2addr v13, v14

    sget-object v14, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v15, v8, 0x10

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x10

    xor-int/2addr v13, v14

    sget-object v14, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v15, v1, 0x18

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    shl-int/lit8 v14, v14, 0x18

    xor-int/2addr v13, v14

    invoke-static {v13}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v13

    aget-object v14, p5, v12

    aget v14, v14, v16

    xor-int v11, v13, v14

    .line 459
    sget-object v13, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v14, v1, 0xff

    aget-byte v13, v13, v14

    and-int/lit16 v13, v13, 0xff

    sget-object v14, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v15, v0, 0x8

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    xor-int/2addr v13, v14

    sget-object v14, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v15, v10, 0x10

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x10

    xor-int/2addr v13, v14

    sget-object v14, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v15, v8, 0x18

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    shl-int/lit8 v14, v14, 0x18

    xor-int/2addr v13, v14

    invoke-static {v13}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v13

    add-int/lit8 v14, v12, -0x1

    .end local v12    # "r":I
    .local v14, "r":I
    aget-object v12, p5, v12

    aget v12, v12, v19

    xor-int v1, v13, v12

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x2

    const/4 v15, 0x3

    move-object/from16 v0, p0

    move v13, v14

    move v14, v1

    move-object/from16 v1, p1

    goto/16 :goto_0

    .line 462
    .end local v0    # "r2":I
    .end local v1    # "r3":I
    .end local v8    # "r0":I
    .end local v10    # "r1":I
    .restart local v13    # "r":I
    .local v14, "r3":I
    :cond_0
    const/16 v16, 0x2

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x3

    sget-object v0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v1, v7, 0xff

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    sget-object v1, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v14, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v1, v1, v8

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    xor-int/2addr v0, v1

    sget-object v1, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v11, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v1, v1, v8

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    xor-int/2addr v0, v1

    sget-object v1, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v9, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v1, v1, v8

    shl-int/lit8 v1, v1, 0x18

    xor-int/2addr v0, v1

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v0

    aget-object v1, p5, v13

    aget v1, v1, v17

    xor-int/2addr v0, v1

    .line 463
    .local v0, "r0":I
    sget-object v1, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v8, v9, 0xff

    aget-byte v1, v1, v8

    and-int/lit16 v1, v1, 0xff

    sget-object v8, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v10, v7, 0x8

    and-int/lit16 v10, v10, 0xff

    aget-byte v8, v8, v10

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    xor-int/2addr v1, v8

    sget-object v8, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v10, v14, 0x10

    and-int/lit16 v10, v10, 0xff

    aget-byte v8, v8, v10

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    xor-int/2addr v1, v8

    sget-object v8, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v10, v11, 0x18

    and-int/lit16 v10, v10, 0xff

    aget-byte v8, v8, v10

    shl-int/lit8 v8, v8, 0x18

    xor-int/2addr v1, v8

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v1

    aget-object v8, p5, v13

    aget v8, v8, v18

    xor-int/2addr v1, v8

    .line 464
    .local v1, "r1":I
    sget-object v8, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v10, v11, 0xff

    aget-byte v8, v8, v10

    and-int/lit16 v8, v8, 0xff

    sget-object v10, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v12, v9, 0x8

    and-int/lit16 v12, v12, 0xff

    aget-byte v10, v10, v12

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v8, v10

    sget-object v10, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v12, v7, 0x10

    and-int/lit16 v12, v12, 0xff

    aget-byte v10, v10, v12

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    xor-int/2addr v8, v10

    sget-object v10, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v12, v14, 0x18

    and-int/lit16 v12, v12, 0xff

    aget-byte v10, v10, v12

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v8, v10

    invoke-static {v8}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v8

    aget-object v10, p5, v13

    aget v10, v10, v16

    xor-int/2addr v8, v10

    .line 465
    .local v8, "r2":I
    sget-object v10, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v12, v14, 0xff

    aget-byte v10, v10, v12

    and-int/lit16 v10, v10, 0xff

    sget-object v12, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v15, v11, 0x8

    and-int/lit16 v15, v15, 0xff

    aget-byte v12, v12, v15

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    xor-int/2addr v10, v12

    sget-object v12, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v15, v9, 0x10

    and-int/lit16 v15, v15, 0xff

    aget-byte v12, v12, v15

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    xor-int/2addr v10, v12

    sget-object v12, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v15, v7, 0x18

    and-int/lit16 v15, v15, 0xff

    aget-byte v12, v12, v15

    shl-int/lit8 v12, v12, 0x18

    xor-int/2addr v10, v12

    invoke-static {v10}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v10

    aget-object v12, p5, v13

    aget v12, v12, v19

    xor-int/2addr v10, v12

    .line 469
    .end local v14    # "r3":I
    .local v10, "r3":I
    sget-object v12, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v14, v0, 0xff

    aget-byte v12, v12, v14

    and-int/lit16 v12, v12, 0xff

    sget-object v14, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v15, v10, 0x8

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    xor-int/2addr v12, v14

    sget-object v14, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v15, v8, 0x10

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x10

    xor-int/2addr v12, v14

    sget-object v14, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v15, v1, 0x18

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    shl-int/lit8 v14, v14, 0x18

    xor-int/2addr v12, v14

    aget-object v14, p5, v17

    aget v14, v14, v17

    xor-int v3, v12, v14

    .line 470
    sget-object v12, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v14, v1, 0xff

    aget-byte v12, v12, v14

    and-int/lit16 v12, v12, 0xff

    sget-object v14, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v15, v0, 0x8

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    xor-int/2addr v12, v14

    sget-object v14, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v15, v10, 0x10

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x10

    xor-int/2addr v12, v14

    sget-object v14, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v15, v8, 0x18

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    shl-int/lit8 v14, v14, 0x18

    xor-int/2addr v12, v14

    aget-object v14, p5, v17

    aget v14, v14, v18

    xor-int v4, v12, v14

    .line 471
    sget-object v12, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v14, v8, 0xff

    aget-byte v12, v12, v14

    and-int/lit16 v12, v12, 0xff

    sget-object v14, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v15, v1, 0x8

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    xor-int/2addr v12, v14

    sget-object v14, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v15, v0, 0x10

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x10

    xor-int/2addr v12, v14

    sget-object v14, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v15, v10, 0x18

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    shl-int/lit8 v14, v14, 0x18

    xor-int/2addr v12, v14

    aget-object v14, p5, v17

    aget v14, v14, v16

    xor-int v5, v12, v14

    .line 472
    sget-object v12, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v14, v10, 0xff

    aget-byte v12, v12, v14

    and-int/lit16 v12, v12, 0xff

    sget-object v14, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v15, v8, 0x8

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    xor-int/2addr v12, v14

    sget-object v14, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v15, v1, 0x10

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x10

    xor-int/2addr v12, v14

    sget-object v14, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v15, v0, 0x18

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    shl-int/lit8 v14, v14, 0x18

    xor-int/2addr v12, v14

    aget-object v14, p5, v17

    aget v14, v14, v19

    xor-int v6, v12, v14

    .line 474
    add-int/lit8 v12, p4, 0x0

    invoke-static {v3, v2, v12}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 475
    add-int/lit8 v12, p4, 0x4

    invoke-static {v4, v2, v12}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 476
    add-int/lit8 v12, p4, 0x8

    invoke-static {v5, v2, v12}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 477
    add-int/lit8 v12, p4, 0xc

    invoke-static {v6, v2, v12}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 478
    return-void
.end method

.method private encryptBlock([BI[BI[[I)V
    .locals 21
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I
    .param p5, "KW"    # [[I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "out",
            "outOff",
            "KW"
        }
    .end annotation

    .line 398
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    add-int/lit8 v2, p2, 0x0

    invoke-static {v0, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    .line 399
    .local v2, "C0":I
    add-int/lit8 v3, p2, 0x4

    invoke-static {v0, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    .line 400
    .local v3, "C1":I
    add-int/lit8 v4, p2, 0x8

    invoke-static {v0, v4}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    .line 401
    .local v4, "C2":I
    add-int/lit8 v5, p2, 0xc

    invoke-static {v0, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    .line 403
    .local v5, "C3":I
    const/4 v6, 0x0

    aget-object v7, p5, v6

    aget v7, v7, v6

    xor-int/2addr v7, v2

    .line 404
    .local v7, "t0":I
    aget-object v8, p5, v6

    const/4 v9, 0x1

    aget v8, v8, v9

    xor-int/2addr v8, v3

    .line 405
    .local v8, "t1":I
    aget-object v10, p5, v6

    const/4 v11, 0x2

    aget v10, v10, v11

    xor-int/2addr v10, v4

    .line 407
    .local v10, "t2":I
    const/4 v12, 0x1

    .local v12, "r":I
    aget-object v13, p5, v6

    const/4 v14, 0x3

    aget v13, v13, v14

    xor-int/2addr v13, v5

    .line 408
    .local v13, "r3":I
    :goto_0
    const/16 v16, 0x0

    move-object/from16 v15, p0

    iget v6, v15, Lorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    sub-int/2addr v6, v9

    if-ge v12, v6, :cond_0

    .line 410
    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    const/16 v17, 0x1

    and-int/lit16 v9, v7, 0xff

    aget-byte v6, v6, v9

    and-int/lit16 v6, v6, 0xff

    sget-object v9, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    const/16 v18, 0x2

    shr-int/lit8 v11, v8, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v9, v9, v11

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    xor-int/2addr v6, v9

    sget-object v9, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v10, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v9, v9, v11

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    xor-int/2addr v6, v9

    sget-object v9, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v13, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v9, v9, v11

    shl-int/lit8 v9, v9, 0x18

    xor-int/2addr v6, v9

    invoke-static {v6}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v6

    aget-object v9, p5, v12

    aget v9, v9, v16

    xor-int/2addr v6, v9

    .line 411
    .local v6, "r0":I
    sget-object v9, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v11, v8, 0xff

    aget-byte v9, v9, v11

    and-int/lit16 v9, v9, 0xff

    sget-object v11, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    const/16 v19, 0x3

    shr-int/lit8 v14, v10, 0x8

    and-int/lit16 v14, v14, 0xff

    aget-byte v11, v11, v14

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    xor-int/2addr v9, v11

    sget-object v11, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v14, v13, 0x10

    and-int/lit16 v14, v14, 0xff

    aget-byte v11, v11, v14

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    xor-int/2addr v9, v11

    sget-object v11, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v14, v7, 0x18

    and-int/lit16 v14, v14, 0xff

    aget-byte v11, v11, v14

    shl-int/lit8 v11, v11, 0x18

    xor-int/2addr v9, v11

    invoke-static {v9}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v9

    aget-object v11, p5, v12

    aget v11, v11, v17

    xor-int/2addr v9, v11

    .line 412
    .local v9, "r1":I
    sget-object v11, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v14, v10, 0xff

    aget-byte v11, v11, v14

    and-int/lit16 v11, v11, 0xff

    sget-object v14, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v0, v13, 0x8

    and-int/lit16 v0, v0, 0xff

    aget-byte v0, v14, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    xor-int/2addr v0, v11

    sget-object v11, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v14, v7, 0x10

    and-int/lit16 v14, v14, 0xff

    aget-byte v11, v11, v14

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    xor-int/2addr v0, v11

    sget-object v11, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v14, v8, 0x18

    and-int/lit16 v14, v14, 0xff

    aget-byte v11, v11, v14

    shl-int/lit8 v11, v11, 0x18

    xor-int/2addr v0, v11

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v0

    aget-object v11, p5, v12

    aget v11, v11, v18

    xor-int/2addr v0, v11

    .line 413
    .local v0, "r2":I
    sget-object v11, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v14, v13, 0xff

    aget-byte v11, v11, v14

    and-int/lit16 v11, v11, 0xff

    sget-object v14, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    move/from16 v20, v2

    .end local v2    # "C0":I
    .local v20, "C0":I
    shr-int/lit8 v2, v7, 0x8

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v14, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    xor-int/2addr v2, v11

    sget-object v11, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v14, v8, 0x10

    and-int/lit16 v14, v14, 0xff

    aget-byte v11, v11, v14

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    xor-int/2addr v2, v11

    sget-object v11, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v14, v10, 0x18

    and-int/lit16 v14, v14, 0xff

    aget-byte v11, v11, v14

    shl-int/lit8 v11, v11, 0x18

    xor-int/2addr v2, v11

    invoke-static {v2}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v2

    add-int/lit8 v11, v12, 0x1

    .end local v12    # "r":I
    .local v11, "r":I
    aget-object v12, p5, v12

    aget v12, v12, v19

    xor-int/2addr v2, v12

    .line 414
    .end local v13    # "r3":I
    .local v2, "r3":I
    sget-object v12, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v13, v6, 0xff

    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    sget-object v13, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v14, v9, 0x8

    and-int/lit16 v14, v14, 0xff

    aget-byte v13, v13, v14

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    xor-int/2addr v12, v13

    sget-object v13, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v14, v0, 0x10

    and-int/lit16 v14, v14, 0xff

    aget-byte v13, v13, v14

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    xor-int/2addr v12, v13

    sget-object v13, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v14, v2, 0x18

    and-int/lit16 v14, v14, 0xff

    aget-byte v13, v13, v14

    shl-int/lit8 v13, v13, 0x18

    xor-int/2addr v12, v13

    invoke-static {v12}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v12

    aget-object v13, p5, v11

    aget v13, v13, v16

    xor-int v7, v12, v13

    .line 415
    sget-object v12, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v13, v9, 0xff

    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    sget-object v13, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v14, v0, 0x8

    and-int/lit16 v14, v14, 0xff

    aget-byte v13, v13, v14

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    xor-int/2addr v12, v13

    sget-object v13, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v14, v2, 0x10

    and-int/lit16 v14, v14, 0xff

    aget-byte v13, v13, v14

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    xor-int/2addr v12, v13

    sget-object v13, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v14, v6, 0x18

    and-int/lit16 v14, v14, 0xff

    aget-byte v13, v13, v14

    shl-int/lit8 v13, v13, 0x18

    xor-int/2addr v12, v13

    invoke-static {v12}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v12

    aget-object v13, p5, v11

    aget v13, v13, v17

    xor-int v8, v12, v13

    .line 416
    sget-object v12, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v13, v0, 0xff

    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    sget-object v13, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v14, v2, 0x8

    and-int/lit16 v14, v14, 0xff

    aget-byte v13, v13, v14

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    xor-int/2addr v12, v13

    sget-object v13, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v14, v6, 0x10

    and-int/lit16 v14, v14, 0xff

    aget-byte v13, v13, v14

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    xor-int/2addr v12, v13

    sget-object v13, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v14, v9, 0x18

    and-int/lit16 v14, v14, 0xff

    aget-byte v13, v13, v14

    shl-int/lit8 v13, v13, 0x18

    xor-int/2addr v12, v13

    invoke-static {v12}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v12

    aget-object v13, p5, v11

    aget v13, v13, v18

    xor-int v10, v12, v13

    .line 417
    sget-object v12, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v13, v2, 0xff

    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    sget-object v13, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v14, v6, 0x8

    and-int/lit16 v14, v14, 0xff

    aget-byte v13, v13, v14

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    xor-int/2addr v12, v13

    sget-object v13, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v14, v9, 0x10

    and-int/lit16 v14, v14, 0xff

    aget-byte v13, v13, v14

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    xor-int/2addr v12, v13

    sget-object v13, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v14, v0, 0x18

    and-int/lit16 v14, v14, 0xff

    aget-byte v13, v13, v14

    shl-int/lit8 v13, v13, 0x18

    xor-int/2addr v12, v13

    invoke-static {v12}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v12

    add-int/lit8 v13, v11, 0x1

    .end local v11    # "r":I
    .local v13, "r":I
    aget-object v11, p5, v11

    aget v11, v11, v19

    xor-int v2, v12, v11

    move-object/from16 v0, p1

    move v12, v13

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v11, 0x2

    const/4 v14, 0x3

    move v13, v2

    move/from16 v2, v20

    goto/16 :goto_0

    .line 420
    .end local v0    # "r2":I
    .end local v6    # "r0":I
    .end local v9    # "r1":I
    .end local v20    # "C0":I
    .local v2, "C0":I
    .restart local v12    # "r":I
    .local v13, "r3":I
    :cond_0
    move/from16 v20, v2

    const/16 v17, 0x1

    const/16 v18, 0x2

    const/16 v19, 0x3

    .end local v2    # "C0":I
    .restart local v20    # "C0":I
    sget-object v0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v2, v7, 0xff

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    sget-object v2, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v6, v8, 0x8

    and-int/lit16 v6, v6, 0xff

    aget-byte v2, v2, v6

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    xor-int/2addr v0, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v6, v10, 0x10

    and-int/lit16 v6, v6, 0xff

    aget-byte v2, v2, v6

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    xor-int/2addr v0, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v6, v13, 0x18

    and-int/lit16 v6, v6, 0xff

    aget-byte v2, v2, v6

    shl-int/lit8 v2, v2, 0x18

    xor-int/2addr v0, v2

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v0

    aget-object v2, p5, v12

    aget v2, v2, v16

    xor-int/2addr v0, v2

    .line 421
    .local v0, "r0":I
    sget-object v2, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v6, v8, 0xff

    aget-byte v2, v2, v6

    and-int/lit16 v2, v2, 0xff

    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v9, v10, 0x8

    and-int/lit16 v9, v9, 0xff

    aget-byte v6, v6, v9

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    xor-int/2addr v2, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v9, v13, 0x10

    and-int/lit16 v9, v9, 0xff

    aget-byte v6, v6, v9

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    xor-int/2addr v2, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v9, v7, 0x18

    and-int/lit16 v9, v9, 0xff

    aget-byte v6, v6, v9

    shl-int/lit8 v6, v6, 0x18

    xor-int/2addr v2, v6

    invoke-static {v2}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v2

    aget-object v6, p5, v12

    aget v6, v6, v17

    xor-int/2addr v2, v6

    .line 422
    .local v2, "r1":I
    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v9, v10, 0xff

    aget-byte v6, v6, v9

    and-int/lit16 v6, v6, 0xff

    sget-object v9, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v13, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v9, v9, v11

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    xor-int/2addr v6, v9

    sget-object v9, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v7, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v9, v9, v11

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    xor-int/2addr v6, v9

    sget-object v9, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v8, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v9, v9, v11

    shl-int/lit8 v9, v9, 0x18

    xor-int/2addr v6, v9

    invoke-static {v6}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v6

    aget-object v9, p5, v12

    aget v9, v9, v18

    xor-int/2addr v6, v9

    .line 423
    .local v6, "r2":I
    sget-object v9, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v11, v13, 0xff

    aget-byte v9, v9, v11

    and-int/lit16 v9, v9, 0xff

    sget-object v11, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v14, v7, 0x8

    and-int/lit16 v14, v14, 0xff

    aget-byte v11, v11, v14

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    xor-int/2addr v9, v11

    sget-object v11, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v14, v8, 0x10

    and-int/lit16 v14, v14, 0xff

    aget-byte v11, v11, v14

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    xor-int/2addr v9, v11

    sget-object v11, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v14, v10, 0x18

    and-int/lit16 v14, v14, 0xff

    aget-byte v11, v11, v14

    shl-int/lit8 v11, v11, 0x18

    xor-int/2addr v9, v11

    invoke-static {v9}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v9

    add-int/lit8 v11, v12, 0x1

    .end local v12    # "r":I
    .restart local v11    # "r":I
    aget-object v12, p5, v12

    aget v12, v12, v19

    xor-int/2addr v9, v12

    .line 427
    .end local v13    # "r3":I
    .local v9, "r3":I
    sget-object v12, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v13, v0, 0xff

    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    sget-object v13, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v14, v2, 0x8

    and-int/lit16 v14, v14, 0xff

    aget-byte v13, v13, v14

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    xor-int/2addr v12, v13

    sget-object v13, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v14, v6, 0x10

    and-int/lit16 v14, v14, 0xff

    aget-byte v13, v13, v14

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    xor-int/2addr v12, v13

    sget-object v13, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v14, v9, 0x18

    and-int/lit16 v14, v14, 0xff

    aget-byte v13, v13, v14

    shl-int/lit8 v13, v13, 0x18

    xor-int/2addr v12, v13

    aget-object v13, p5, v11

    aget v13, v13, v16

    xor-int/2addr v12, v13

    .line 428
    .end local v20    # "C0":I
    .local v12, "C0":I
    sget-object v13, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v14, v2, 0xff

    aget-byte v13, v13, v14

    and-int/lit16 v13, v13, 0xff

    sget-object v14, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    move/from16 v16, v0

    .end local v0    # "r0":I
    .local v16, "r0":I
    shr-int/lit8 v0, v6, 0x8

    and-int/lit16 v0, v0, 0xff

    aget-byte v0, v14, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    xor-int/2addr v0, v13

    sget-object v13, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v14, v9, 0x10

    and-int/lit16 v14, v14, 0xff

    aget-byte v13, v13, v14

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    xor-int/2addr v0, v13

    sget-object v13, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v14, v16, 0x18

    and-int/lit16 v14, v14, 0xff

    aget-byte v13, v13, v14

    shl-int/lit8 v13, v13, 0x18

    xor-int/2addr v0, v13

    aget-object v13, p5, v11

    aget v13, v13, v17

    xor-int/2addr v0, v13

    .line 429
    .end local v3    # "C1":I
    .local v0, "C1":I
    sget-object v3, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v13, v6, 0xff

    aget-byte v3, v3, v13

    and-int/lit16 v3, v3, 0xff

    sget-object v13, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v14, v9, 0x8

    and-int/lit16 v14, v14, 0xff

    aget-byte v13, v13, v14

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    xor-int/2addr v3, v13

    sget-object v13, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v14, v16, 0x10

    and-int/lit16 v14, v14, 0xff

    aget-byte v13, v13, v14

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    xor-int/2addr v3, v13

    sget-object v13, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v14, v2, 0x18

    and-int/lit16 v14, v14, 0xff

    aget-byte v13, v13, v14

    shl-int/lit8 v13, v13, 0x18

    xor-int/2addr v3, v13

    aget-object v13, p5, v11

    aget v13, v13, v18

    xor-int/2addr v3, v13

    .line 430
    .end local v4    # "C2":I
    .local v3, "C2":I
    sget-object v4, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v13, v9, 0xff

    aget-byte v4, v4, v13

    and-int/lit16 v4, v4, 0xff

    sget-object v13, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v14, v16, 0x8

    and-int/lit16 v14, v14, 0xff

    aget-byte v13, v13, v14

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    xor-int/2addr v4, v13

    sget-object v13, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v14, v2, 0x10

    and-int/lit16 v14, v14, 0xff

    aget-byte v13, v13, v14

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    xor-int/2addr v4, v13

    sget-object v13, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v14, v6, 0x18

    and-int/lit16 v14, v14, 0xff

    aget-byte v13, v13, v14

    shl-int/lit8 v13, v13, 0x18

    xor-int/2addr v4, v13

    aget-object v13, p5, v11

    aget v13, v13, v19

    xor-int/2addr v4, v13

    .line 432
    .end local v5    # "C3":I
    .local v4, "C3":I
    add-int/lit8 v5, p4, 0x0

    invoke-static {v12, v1, v5}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 433
    add-int/lit8 v5, p4, 0x4

    invoke-static {v0, v1, v5}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 434
    add-int/lit8 v5, p4, 0x8

    invoke-static {v3, v1, v5}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 435
    add-int/lit8 v5, p4, 0xc

    invoke-static {v4, v1, v5}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 436
    return-void
.end method

.method private generateWorkingKey([BZ)[[I
    .locals 23
    .param p1, "key"    # [B
    .param p2, "forEncryption"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "forEncryption"
        }
    .end annotation

    .line 186
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    .line 187
    .local v2, "keyLen":I
    const/16 v3, 0x10

    if-lt v2, v3, :cond_5

    const/16 v4, 0x20

    if-gt v2, v4, :cond_5

    and-int/lit8 v4, v2, 0x7

    if-nez v4, :cond_5

    .line 192
    ushr-int/lit8 v4, v2, 0x2

    .line 193
    .local v4, "KC":I
    add-int/lit8 v5, v4, 0x6

    iput v5, v0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    .line 194
    iget v5, v0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    const/4 v7, 0x2

    new-array v8, v7, [I

    const/4 v9, 0x4

    aput v9, v8, v6

    const/4 v10, 0x0

    aput v5, v8, v10

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    .line 196
    .local v5, "W":[[I
    const/16 v8, 0x14

    const/16 v11, 0xc

    const/16 v12, 0x8

    const/4 v13, 0x3

    packed-switch v4, :pswitch_data_0

    .line 296
    :pswitch_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v6, "Should never get here"

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 259
    :pswitch_1
    invoke-static {v1, v10}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v14

    .local v14, "col0":I
    aget-object v15, v5, v10

    aput v14, v15, v10

    .line 260
    invoke-static {v1, v9}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v15

    .local v15, "col1":I
    aget-object v16, v5, v10

    aput v15, v16, v6

    .line 261
    invoke-static {v1, v12}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v16

    .local v16, "col2":I
    aget-object v17, v5, v10

    aput v16, v17, v7

    .line 262
    invoke-static {v1, v11}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v11

    .local v11, "col3":I
    aget-object v17, v5, v10

    aput v11, v17, v13

    .line 264
    invoke-static {v1, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    .local v3, "col4":I
    aget-object v17, v5, v6

    aput v3, v17, v10

    .line 265
    invoke-static {v1, v8}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v8

    .local v8, "col5":I
    aget-object v17, v5, v6

    aput v8, v17, v6

    .line 266
    const/16 v17, 0x1

    const/16 v6, 0x18

    invoke-static {v1, v6}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v6

    .local v6, "col6":I
    aget-object v18, v5, v17

    aput v6, v18, v7

    .line 267
    const/16 v18, 0x2

    const/16 v7, 0x1c

    invoke-static {v1, v7}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v7

    .local v7, "col7":I
    aget-object v19, v5, v17

    aput v7, v19, v13

    .line 269
    const/16 v19, 0x2

    .local v19, "i":I
    const/16 v20, 0x1

    .line 272
    .local v20, "rcon":I
    :goto_0
    invoke-static {v7, v12}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v21

    invoke-static/range {v21 .. v21}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->subWord(I)I

    move-result v21

    xor-int v21, v21, v20

    .local v21, "colx":I
    shl-int/lit8 v20, v20, 0x1

    .line 273
    xor-int v14, v14, v21

    aget-object v22, v5, v19

    aput v14, v22, v10

    .line 274
    xor-int/2addr v15, v14

    aget-object v22, v5, v19

    aput v15, v22, v17

    .line 275
    xor-int v16, v16, v15

    aget-object v22, v5, v19

    aput v16, v22, v18

    .line 276
    xor-int v11, v11, v16

    aget-object v22, v5, v19

    aput v11, v22, v13

    .line 277
    const/16 v22, 0x3

    add-int/lit8 v13, v19, 0x1

    .line 279
    .end local v19    # "i":I
    .local v13, "i":I
    const/16 v12, 0xf

    if-lt v13, v12, :cond_0

    .line 281
    goto/16 :goto_3

    .line 284
    :cond_0
    invoke-static {v11}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->subWord(I)I

    move-result v12

    .line 285
    .end local v21    # "colx":I
    .local v12, "colx":I
    xor-int/2addr v3, v12

    aget-object v21, v5, v13

    aput v3, v21, v10

    .line 286
    xor-int/2addr v8, v3

    aget-object v21, v5, v13

    aput v8, v21, v17

    .line 287
    xor-int/2addr v6, v8

    aget-object v21, v5, v13

    aput v6, v21, v18

    .line 288
    xor-int/2addr v7, v6

    aget-object v21, v5, v13

    aput v7, v21, v22

    .line 289
    add-int/lit8 v13, v13, 0x1

    move/from16 v19, v13

    const/16 v12, 0x8

    const/4 v13, 0x3

    goto :goto_0

    .line 218
    .end local v3    # "col4":I
    .end local v6    # "col6":I
    .end local v7    # "col7":I
    .end local v8    # "col5":I
    .end local v11    # "col3":I
    .end local v12    # "colx":I
    .end local v13    # "i":I
    .end local v14    # "col0":I
    .end local v15    # "col1":I
    .end local v16    # "col2":I
    .end local v20    # "rcon":I
    :pswitch_2
    const/16 v17, 0x1

    const/16 v18, 0x2

    const/16 v22, 0x3

    invoke-static {v1, v10}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v6

    .local v6, "col0":I
    aget-object v7, v5, v10

    aput v6, v7, v10

    .line 219
    invoke-static {v1, v9}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v7

    .local v7, "col1":I
    aget-object v12, v5, v10

    aput v7, v12, v17

    .line 220
    const/16 v12, 0x8

    invoke-static {v1, v12}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v13

    .local v13, "col2":I
    aget-object v12, v5, v10

    aput v13, v12, v18

    .line 221
    invoke-static {v1, v11}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v11

    .restart local v11    # "col3":I
    aget-object v12, v5, v10

    aput v11, v12, v22

    .line 223
    invoke-static {v1, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    .line 224
    .restart local v3    # "col4":I
    invoke-static {v1, v8}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v8

    .line 226
    .restart local v8    # "col5":I
    const/4 v12, 0x1

    .local v12, "i":I
    const/4 v14, 0x1

    .line 229
    .local v14, "rcon":I
    :goto_1
    aget-object v15, v5, v12

    aput v3, v15, v10

    .line 230
    aget-object v15, v5, v12

    aput v8, v15, v17

    .line 231
    const/16 v15, 0x8

    invoke-static {v8, v15}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v16

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->subWord(I)I

    move-result v15

    xor-int/2addr v15, v14

    .local v15, "colx":I
    shl-int/lit8 v14, v14, 0x1

    .line 232
    xor-int/2addr v6, v15

    aget-object v16, v5, v12

    aput v6, v16, v18

    .line 233
    xor-int/2addr v7, v6

    aget-object v16, v5, v12

    aput v7, v16, v22

    .line 235
    xor-int/2addr v13, v7

    add-int/lit8 v16, v12, 0x1

    aget-object v16, v5, v16

    aput v13, v16, v10

    .line 236
    xor-int/2addr v11, v13

    add-int/lit8 v16, v12, 0x1

    aget-object v16, v5, v16

    aput v11, v16, v17

    .line 237
    xor-int/2addr v3, v11

    add-int/lit8 v16, v12, 0x1

    aget-object v16, v5, v16

    aput v3, v16, v18

    .line 238
    xor-int/2addr v8, v3

    add-int/lit8 v16, v12, 0x1

    aget-object v16, v5, v16

    aput v8, v16, v22

    .line 240
    const/16 v9, 0x8

    invoke-static {v8, v9}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v20

    invoke-static/range {v20 .. v20}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->subWord(I)I

    move-result v9

    xor-int/2addr v9, v14

    .end local v15    # "colx":I
    .local v9, "colx":I
    shl-int/lit8 v14, v14, 0x1

    .line 241
    xor-int/2addr v6, v9

    add-int/lit8 v15, v12, 0x2

    aget-object v15, v5, v15

    aput v6, v15, v10

    .line 242
    xor-int/2addr v7, v6

    add-int/lit8 v15, v12, 0x2

    aget-object v15, v5, v15

    aput v7, v15, v17

    .line 243
    xor-int/2addr v13, v7

    add-int/lit8 v15, v12, 0x2

    aget-object v15, v5, v15

    aput v13, v15, v18

    .line 244
    xor-int/2addr v11, v13

    add-int/lit8 v15, v12, 0x2

    aget-object v15, v5, v15

    aput v11, v15, v22

    .line 246
    add-int/lit8 v12, v12, 0x3

    const/16 v15, 0xd

    if-lt v12, v15, :cond_1

    .line 248
    goto :goto_3

    .line 251
    :cond_1
    xor-int/2addr v3, v11

    .line 252
    xor-int/2addr v8, v3

    const/4 v9, 0x4

    goto :goto_1

    .line 200
    .end local v3    # "col4":I
    .end local v6    # "col0":I
    .end local v7    # "col1":I
    .end local v8    # "col5":I
    .end local v9    # "colx":I
    .end local v11    # "col3":I
    .end local v12    # "i":I
    .end local v13    # "col2":I
    .end local v14    # "rcon":I
    :pswitch_3
    const/16 v17, 0x1

    const/16 v18, 0x2

    const/16 v22, 0x3

    invoke-static {v1, v10}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    .local v3, "col0":I
    aget-object v6, v5, v10

    aput v3, v6, v10

    .line 201
    const/4 v6, 0x4

    invoke-static {v1, v6}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v7

    .restart local v7    # "col1":I
    aget-object v6, v5, v10

    aput v7, v6, v17

    .line 202
    const/16 v15, 0x8

    invoke-static {v1, v15}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v6

    .local v6, "col2":I
    aget-object v8, v5, v10

    aput v6, v8, v18

    .line 203
    invoke-static {v1, v11}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v8

    .local v8, "col3":I
    aget-object v9, v5, v10

    aput v8, v9, v22

    .line 205
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_2
    const/16 v11, 0xa

    if-gt v9, v11, :cond_2

    .line 207
    const/16 v15, 0x8

    invoke-static {v8, v15}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v11

    invoke-static {v11}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->subWord(I)I

    move-result v11

    sget-object v12, Lorg/bouncycastle/crypto/engines/AESLightEngine;->rcon:[I

    add-int/lit8 v13, v9, -0x1

    aget v12, v12, v13

    xor-int/2addr v11, v12

    .line 208
    .local v11, "colx":I
    xor-int/2addr v3, v11

    aget-object v12, v5, v9

    aput v3, v12, v10

    .line 209
    xor-int/2addr v7, v3

    aget-object v12, v5, v9

    aput v7, v12, v17

    .line 210
    xor-int/2addr v6, v7

    aget-object v12, v5, v9

    aput v6, v12, v18

    .line 211
    xor-int/2addr v8, v6

    aget-object v12, v5, v9

    aput v8, v12, v22

    .line 205
    .end local v11    # "colx":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 214
    .end local v9    # "i":I
    :cond_2
    nop

    .line 300
    .end local v3    # "col0":I
    .end local v6    # "col2":I
    .end local v7    # "col1":I
    .end local v8    # "col3":I
    :goto_3
    if-nez p2, :cond_4

    .line 302
    const/4 v3, 0x1

    .local v3, "j":I
    :goto_4
    iget v6, v0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    if-ge v3, v6, :cond_4

    .line 304
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_5
    const/4 v7, 0x4

    if-ge v6, v7, :cond_3

    .line 306
    aget-object v8, v5, v3

    aget-object v9, v5, v3

    aget v9, v9, v6

    invoke-static {v9}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v9

    aput v9, v8, v6

    .line 304
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 302
    .end local v6    # "i":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 311
    .end local v3    # "j":I
    :cond_4
    return-object v5

    .line 189
    .end local v4    # "KC":I
    .end local v5    # "W":[[I
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Key length not 128/192/256 bits."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static inv_mcol(I)I
    .locals 3
    .param p0, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 164
    move v0, p0

    .line 165
    .local v0, "t0":I
    const/16 v1, 0x8

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v1

    xor-int/2addr v1, v0

    .line 166
    .local v1, "t1":I
    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->FFmulX(I)I

    move-result v2

    xor-int/2addr v0, v2

    .line 167
    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->FFmulX2(I)I

    move-result v2

    xor-int/2addr v1, v2

    .line 168
    const/16 v2, 0x10

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v2

    xor-int/2addr v2, v1

    xor-int/2addr v0, v2

    .line 169
    return v0
.end method

.method private static mcol(I)I
    .locals 4
    .param p0, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 156
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v0

    .line 157
    .local v0, "t0":I
    xor-int v1, p0, v0

    .line 158
    .local v1, "t1":I
    const/16 v2, 0x10

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v2

    xor-int/2addr v2, v0

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->FFmulX(I)I

    move-result v3

    xor-int/2addr v2, v3

    return v2
.end method

.method private static shift(II)I
    .locals 2
    .param p0, "r"    # I
    .param p1, "shift"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "r",
            "shift"
        }
    .end annotation

    .line 119
    ushr-int v0, p0, p1

    neg-int v1, p1

    shl-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private static subWord(I)I
    .locals 3
    .param p0, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 175
    sget-object v0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v1, p0, 0xff

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    sget-object v1, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    sget-object v1, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    sget-object v1, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 355
    const-string v0, "AES"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .line 360
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

    .line 340
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    .line 342
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->generateWorkingKey([BZ)[[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->WorkingKey:[[I

    .line 343
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->forEncryption:Z

    .line 345
    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->bitsOfSecurity()I

    move-result v2

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v3

    invoke-direct {v0, v1, v2, p2, v3}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 347
    return-void

    .line 350
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid parameter passed to AES init - "

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
    .locals 7
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

    .line 365
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->WorkingKey:[[I

    if-eqz v1, :cond_3

    .line 370
    array-length v2, p1

    const/16 v6, 0x10

    sub-int/2addr v2, v6

    if-gt p2, v2, :cond_2

    .line 375
    array-length v4, p3

    sub-int/2addr v4, v6

    if-gt p4, v4, :cond_1

    .line 380
    iget-boolean v4, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->forEncryption:Z

    if-eqz v4, :cond_0

    .line 382
    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->WorkingKey:[[I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->encryptBlock([BI[BI[[I)V

    goto :goto_0

    .line 386
    :cond_0
    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->WorkingKey:[[I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->decryptBlock([BI[BI[[I)V

    .line 389
    :goto_0
    return v6

    .line 377
    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AES engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 0

    .line 394
    return-void
.end method
