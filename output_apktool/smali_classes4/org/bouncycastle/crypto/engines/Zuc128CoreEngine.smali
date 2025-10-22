.class public Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;
.super Ljava/lang/Object;
.source "Zuc128CoreEngine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/StreamCipher;
.implements Lorg/bouncycastle/util/Memoable;


# static fields
.field private static final EK_d:[S

.field private static final S0:[B

.field private static final S1:[B


# instance fields
.field private final BRC:[I

.field private final F:[I

.field private final LFSR:[I

.field private final keyStream:[B

.field private theIndex:I

.field private theIterations:I

.field private theResetState:Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->S0:[B

    .line 41
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->S1:[B

    .line 61
    const/16 v0, 0x10

    new-array v0, v0, [S

    fill-array-data v0, :array_2

    sput-object v0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    return-void

    :array_0
    .array-data 1
        0x3et
        0x72t
        0x5bt
        0x47t
        -0x36t
        -0x20t
        0x0t
        0x33t
        0x4t
        -0x2ft
        0x54t
        -0x68t
        0x9t
        -0x47t
        0x6dt
        -0x35t
        0x7bt
        0x1bt
        -0x7t
        0x32t
        -0x51t
        -0x63t
        0x6at
        -0x5bt
        -0x48t
        0x2dt
        -0x4t
        0x1dt
        0x8t
        0x53t
        0x3t
        -0x70t
        0x4dt
        0x4et
        -0x7ct
        -0x67t
        -0x1ct
        -0x32t
        -0x27t
        -0x6ft
        -0x23t
        -0x4at
        -0x7bt
        0x48t
        -0x75t
        0x29t
        0x6et
        -0x54t
        -0x33t
        -0x3ft
        -0x8t
        0x1et
        0x73t
        0x43t
        0x69t
        -0x3at
        -0x4bt
        -0x43t
        -0x3t
        0x39t
        0x63t
        0x20t
        -0x2ct
        0x38t
        0x76t
        0x7dt
        -0x4et
        -0x59t
        -0x31t
        -0x13t
        0x57t
        -0x3bt
        -0xdt
        0x2ct
        -0x45t
        0x14t
        0x21t
        0x6t
        0x55t
        -0x65t
        -0x1dt
        -0x11t
        0x5et
        0x31t
        0x4ft
        0x7ft
        0x5at
        -0x5ct
        0xdt
        -0x7et
        0x51t
        0x49t
        0x5ft
        -0x46t
        0x58t
        0x1ct
        0x4at
        0x16t
        -0x2bt
        0x17t
        -0x58t
        -0x6et
        0x24t
        0x1ft
        -0x74t
        -0x1t
        -0x28t
        -0x52t
        0x2et
        0x1t
        -0x2dt
        -0x53t
        0x3bt
        0x4bt
        -0x26t
        0x46t
        -0x15t
        -0x37t
        -0x22t
        -0x66t
        -0x71t
        -0x79t
        -0x29t
        0x3at
        -0x80t
        0x6ft
        0x2ft
        -0x38t
        -0x4ft
        -0x4ct
        0x37t
        -0x9t
        0xat
        0x22t
        0x13t
        0x28t
        0x7ct
        -0x34t
        0x3ct
        -0x77t
        -0x39t
        -0x3dt
        -0x6at
        0x56t
        0x7t
        -0x41t
        0x7et
        -0x10t
        0xbt
        0x2bt
        -0x69t
        0x52t
        0x35t
        0x41t
        0x79t
        0x61t
        -0x5at
        0x4ct
        0x10t
        -0x2t
        -0x44t
        0x26t
        -0x6bt
        -0x78t
        -0x76t
        -0x50t
        -0x5dt
        -0x5t
        -0x40t
        0x18t
        -0x6ct
        -0xet
        -0x1ft
        -0x1bt
        -0x17t
        0x5dt
        -0x30t
        -0x24t
        0x11t
        0x66t
        0x64t
        0x5ct
        -0x14t
        0x59t
        0x42t
        0x75t
        0x12t
        -0xbt
        0x74t
        -0x64t
        -0x56t
        0x23t
        0xet
        -0x7at
        -0x55t
        -0x42t
        0x2at
        0x2t
        -0x19t
        0x67t
        -0x1at
        0x44t
        -0x5et
        0x6ct
        -0x3et
        -0x6dt
        -0x61t
        -0xft
        -0xat
        -0x6t
        0x36t
        -0x2et
        0x50t
        0x68t
        -0x62t
        0x62t
        0x71t
        0x15t
        0x3dt
        -0x2at
        0x40t
        -0x3ct
        -0x1et
        0xft
        -0x72t
        -0x7dt
        0x77t
        0x6bt
        0x25t
        0x5t
        0x3ft
        0xct
        0x30t
        -0x16t
        0x70t
        -0x49t
        -0x5ft
        -0x18t
        -0x57t
        0x65t
        -0x73t
        0x27t
        0x1at
        -0x25t
        -0x7ft
        -0x4dt
        -0x60t
        -0xct
        0x45t
        0x7at
        0x19t
        -0x21t
        -0x12t
        0x78t
        0x34t
        0x60t
    .end array-data

    :array_1
    .array-data 1
        0x55t
        -0x3et
        0x63t
        0x71t
        0x3bt
        -0x38t
        0x47t
        -0x7at
        -0x61t
        0x3ct
        -0x26t
        0x5bt
        0x29t
        -0x56t
        -0x3t
        0x77t
        -0x74t
        -0x3bt
        -0x6ct
        0xct
        -0x5at
        0x1at
        0x13t
        0x0t
        -0x1dt
        -0x58t
        0x16t
        0x72t
        0x40t
        -0x7t
        -0x8t
        0x42t
        0x44t
        0x26t
        0x68t
        -0x6at
        -0x7ft
        -0x27t
        0x45t
        0x3et
        0x10t
        0x76t
        -0x3at
        -0x59t
        -0x75t
        0x39t
        0x43t
        -0x1ft
        0x3at
        -0x4bt
        0x56t
        0x2at
        -0x40t
        0x6dt
        -0x4dt
        0x5t
        0x22t
        0x66t
        -0x41t
        -0x24t
        0xbt
        -0x6t
        0x62t
        0x48t
        -0x23t
        0x20t
        0x11t
        0x6t
        0x36t
        -0x37t
        -0x3ft
        -0x31t
        -0xat
        0x27t
        0x52t
        -0x45t
        0x69t
        -0xbt
        -0x2ct
        -0x79t
        0x7ft
        -0x7ct
        0x4ct
        -0x2et
        -0x64t
        0x57t
        -0x5ct
        -0x44t
        0x4ft
        -0x66t
        -0x21t
        -0x2t
        -0x2at
        -0x73t
        0x7at
        -0x15t
        0x2bt
        0x53t
        -0x28t
        0x5ct
        -0x5ft
        0x14t
        0x17t
        -0x5t
        0x23t
        -0x2bt
        0x7dt
        0x30t
        0x67t
        0x73t
        0x8t
        0x9t
        -0x12t
        -0x49t
        0x70t
        0x3ft
        0x61t
        -0x4et
        0x19t
        -0x72t
        0x4et
        -0x1bt
        0x4bt
        -0x6dt
        -0x71t
        0x5dt
        -0x25t
        -0x57t
        -0x53t
        -0xft
        -0x52t
        0x2et
        -0x35t
        0xdt
        -0x4t
        -0xct
        0x2dt
        0x46t
        0x6et
        0x1dt
        -0x69t
        -0x18t
        -0x2ft
        -0x17t
        0x4dt
        0x37t
        -0x5bt
        0x75t
        0x5et
        -0x7dt
        -0x62t
        -0x55t
        -0x7et
        -0x63t
        -0x47t
        0x1ct
        -0x20t
        -0x33t
        0x49t
        -0x77t
        0x1t
        -0x4at
        -0x43t
        0x58t
        0x24t
        -0x5et
        0x5ft
        0x38t
        0x78t
        -0x67t
        0x15t
        -0x70t
        0x50t
        -0x48t
        -0x6bt
        -0x1ct
        -0x30t
        -0x6ft
        -0x39t
        -0x32t
        -0x13t
        0xft
        -0x4ct
        0x6ft
        -0x60t
        -0x34t
        -0x10t
        0x2t
        0x4at
        0x79t
        -0x3dt
        -0x22t
        -0x5dt
        -0x11t
        -0x16t
        0x51t
        -0x1at
        0x6bt
        0x18t
        -0x14t
        0x1bt
        0x2ct
        -0x80t
        -0x9t
        0x74t
        -0x19t
        -0x1t
        0x21t
        0x5at
        0x6at
        0x54t
        0x1et
        0x41t
        0x31t
        -0x6et
        0x35t
        -0x3ct
        0x33t
        0x7t
        0xat
        -0x46t
        0x7et
        0xet
        0x34t
        -0x78t
        -0x4ft
        -0x68t
        0x7ct
        -0xdt
        0x3dt
        0x60t
        0x6ct
        0x7bt
        -0x36t
        -0x2dt
        0x1ft
        0x32t
        0x65t
        0x4t
        0x28t
        0x64t
        -0x42t
        -0x7bt
        -0x65t
        0x2ft
        0x59t
        -0x76t
        -0x29t
        -0x50t
        0x25t
        -0x54t
        -0x51t
        0x12t
        0x3t
        -0x1et
        -0xet
    .end array-data

    :array_2
    .array-data 2
        0x44d7s
        0x26bcs
        0x626bs
        0x135es
        0x5789s
        0x35e2s
        0x7135s
        0x9afs
        0x4d78s
        0x2f13s
        0x6bc4s
        0x1af1s
        0x5e26s
        0x3c4ds
        0x789as
        0x47acs
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->F:[I

    .line 71
    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->BRC:[I

    .line 81
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->keyStream:[B

    .line 98
    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;)V
    .locals 2
    .param p1, "pSource"    # Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pSource"
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->F:[I

    .line 71
    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->BRC:[I

    .line 81
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->keyStream:[B

    .line 107
    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->reset(Lorg/bouncycastle/util/Memoable;)V

    .line 108
    return-void
.end method

.method private AddM(II)I
    .locals 3
    .param p1, "a"    # I
    .param p2, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 269
    add-int v0, p1, p2

    .line 270
    .local v0, "c":I
    const v1, 0x7fffffff

    and-int/2addr v1, v0

    ushr-int/lit8 v2, v0, 0x1f

    add-int/2addr v1, v2

    return v1
.end method

.method private BitReorganization()V
    .locals 8

    .line 366
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->BRC:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v2, 0xf

    aget v1, v1, v2

    const v3, 0x7fff8000

    and-int/2addr v1, v3

    const/4 v3, 0x1

    shl-int/2addr v1, v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v5, 0xe

    aget v4, v4, v5

    const v5, 0xffff

    and-int/2addr v4, v5

    or-int/2addr v1, v4

    const/4 v4, 0x0

    aput v1, v0, v4

    .line 367
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->BRC:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v6, 0xb

    aget v1, v1, v6

    and-int/2addr v1, v5

    shl-int/lit8 v1, v1, 0x10

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v7, 0x9

    aget v6, v6, v7

    ushr-int/2addr v6, v2

    or-int/2addr v1, v6

    aput v1, v0, v3

    .line 368
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->BRC:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v3, 0x7

    aget v1, v1, v3

    and-int/2addr v1, v5

    shl-int/lit8 v1, v1, 0x10

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v6, 0x5

    aget v3, v3, v6

    ushr-int/2addr v3, v2

    or-int/2addr v1, v3

    const/4 v3, 0x2

    aput v1, v0, v3

    .line 369
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->BRC:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v1, v1, v3

    and-int/2addr v1, v5

    shl-int/lit8 v1, v1, 0x10

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v3, v3, v4

    ushr-int/lit8 v2, v3, 0xf

    or-int/2addr v1, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 370
    return-void
.end method

.method private static L1(I)I
    .locals 2
    .param p0, "X"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "X"
        }
    .end annotation

    .line 392
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->ROT(II)I

    move-result v0

    xor-int/2addr v0, p0

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->ROT(II)I

    move-result v1

    xor-int/2addr v0, v1

    const/16 v1, 0x12

    invoke-static {p0, v1}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->ROT(II)I

    move-result v1

    xor-int/2addr v0, v1

    const/16 v1, 0x18

    invoke-static {p0, v1}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->ROT(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private static L2(I)I
    .locals 2
    .param p0, "X"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "X"
        }
    .end annotation

    .line 403
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->ROT(II)I

    move-result v0

    xor-int/2addr v0, p0

    const/16 v1, 0xe

    invoke-static {p0, v1}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->ROT(II)I

    move-result v1

    xor-int/2addr v0, v1

    const/16 v1, 0x16

    invoke-static {p0, v1}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->ROT(II)I

    move-result v1

    xor-int/2addr v0, v1

    const/16 v1, 0x1e

    invoke-static {p0, v1}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->ROT(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private LFSRWithInitialisationMode(I)V
    .locals 11
    .param p1, "u"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "u"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 293
    .local v0, "f":I
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v2, v2, v1

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MulByPow2(II)I

    move-result v2

    .line 294
    .local v2, "v":I
    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->AddM(II)I

    move-result v0

    .line 295
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v5, 0x4

    aget v4, v4, v5

    const/16 v6, 0x14

    invoke-static {v4, v6}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MulByPow2(II)I

    move-result v2

    .line 296
    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->AddM(II)I

    move-result v0

    .line 297
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v6, 0xa

    aget v4, v4, v6

    const/16 v7, 0x15

    invoke-static {v4, v7}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MulByPow2(II)I

    move-result v2

    .line 298
    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->AddM(II)I

    move-result v0

    .line 299
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v7, 0xd

    aget v4, v4, v7

    const/16 v8, 0x11

    invoke-static {v4, v8}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MulByPow2(II)I

    move-result v2

    .line 300
    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->AddM(II)I

    move-result v0

    .line 301
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v8, 0xf

    aget v4, v4, v8

    invoke-static {v4, v8}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MulByPow2(II)I

    move-result v2

    .line 302
    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->AddM(II)I

    move-result v0

    .line 303
    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->AddM(II)I

    move-result v0

    .line 306
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    aput v9, v4, v1

    .line 307
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v9, 0x2

    aget v4, v4, v9

    aput v4, v1, v10

    .line 308
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v10, 0x3

    aget v4, v4, v10

    aput v4, v1, v9

    .line 309
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v4, v4, v5

    aput v4, v1, v10

    .line 310
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v9, 0x5

    aget v4, v4, v9

    aput v4, v1, v5

    .line 311
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v5, 0x6

    aget v4, v4, v5

    aput v4, v1, v9

    .line 312
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v9, 0x7

    aget v4, v4, v9

    aput v4, v1, v5

    .line 313
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v4, v4, v3

    aput v4, v1, v9

    .line 314
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v5, 0x9

    aget v4, v4, v5

    aput v4, v1, v3

    .line 315
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v3, v3, v6

    aput v3, v1, v5

    .line 316
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v4, 0xb

    aget v3, v3, v4

    aput v3, v1, v6

    .line 317
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v5, 0xc

    aget v3, v3, v5

    aput v3, v1, v4

    .line 318
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v3, v3, v7

    aput v3, v1, v5

    .line 319
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v4, 0xe

    aget v3, v3, v4

    aput v3, v1, v7

    .line 320
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v3, v3, v8

    aput v3, v1, v4

    .line 321
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aput v0, v1, v8

    .line 322
    return-void
.end method

.method private LFSRWithWorkMode()V
    .locals 11

    .line 330
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 331
    .local v0, "f":I
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v2, v2, v1

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MulByPow2(II)I

    move-result v2

    .line 332
    .local v2, "v":I
    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->AddM(II)I

    move-result v0

    .line 333
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v5, 0x4

    aget v4, v4, v5

    const/16 v6, 0x14

    invoke-static {v4, v6}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MulByPow2(II)I

    move-result v2

    .line 334
    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->AddM(II)I

    move-result v0

    .line 335
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v6, 0xa

    aget v4, v4, v6

    const/16 v7, 0x15

    invoke-static {v4, v7}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MulByPow2(II)I

    move-result v2

    .line 336
    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->AddM(II)I

    move-result v0

    .line 337
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v7, 0xd

    aget v4, v4, v7

    const/16 v8, 0x11

    invoke-static {v4, v8}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MulByPow2(II)I

    move-result v2

    .line 338
    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->AddM(II)I

    move-result v0

    .line 339
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v8, 0xf

    aget v4, v4, v8

    invoke-static {v4, v8}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MulByPow2(II)I

    move-result v2

    .line 340
    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->AddM(II)I

    move-result v0

    .line 343
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    aput v9, v4, v1

    .line 344
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v9, 0x2

    aget v4, v4, v9

    aput v4, v1, v10

    .line 345
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v10, 0x3

    aget v4, v4, v10

    aput v4, v1, v9

    .line 346
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v4, v4, v5

    aput v4, v1, v10

    .line 347
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v9, 0x5

    aget v4, v4, v9

    aput v4, v1, v5

    .line 348
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v5, 0x6

    aget v4, v4, v5

    aput v4, v1, v9

    .line 349
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v9, 0x7

    aget v4, v4, v9

    aput v4, v1, v5

    .line 350
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v4, v4, v3

    aput v4, v1, v9

    .line 351
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v5, 0x9

    aget v4, v4, v5

    aput v4, v1, v3

    .line 352
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v3, v3, v6

    aput v3, v1, v5

    .line 353
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v4, 0xb

    aget v3, v3, v4

    aput v3, v1, v6

    .line 354
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v5, 0xc

    aget v3, v3, v5

    aput v3, v1, v4

    .line 355
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v3, v3, v7

    aput v3, v1, v5

    .line 356
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v4, 0xe

    aget v3, v3, v4

    aput v3, v1, v7

    .line 357
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v3, v3, v8

    aput v3, v1, v4

    .line 358
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aput v0, v1, v8

    .line 359
    return-void
.end method

.method private static MAKEU31(BSB)I
    .locals 2
    .param p0, "a"    # B
    .param p1, "b"    # S
    .param p2, "c"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "a",
            "b",
            "c"
        }
    .end annotation

    .line 453
    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x17

    const v1, 0xffff

    and-int/2addr v1, p1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p2, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static MAKEU32(BBBB)I
    .locals 2
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "c"    # B
    .param p3, "d"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "a",
            "b",
            "c",
            "d"
        }
    .end annotation

    .line 420
    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x18

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static MulByPow2(II)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "x",
            "k"
        }
    .end annotation

    .line 282
    shl-int v0, p0, p1

    rsub-int/lit8 v1, p1, 0x1f

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method static ROT(II)I
    .locals 2
    .param p0, "a"    # I
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "k"
        }
    .end annotation

    .line 381
    shl-int v0, p0, p1

    rsub-int/lit8 v1, p1, 0x20

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static encode32be(I[BI)V
    .locals 2
    .param p0, "val"    # I
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "val",
            "buf",
            "off"
        }
    .end annotation

    .line 252
    shr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 253
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 254
    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 255
    add-int/lit8 v0, p2, 0x3

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    .line 256
    return-void
.end method

.method private makeKeyStream()V
    .locals 3

    .line 529
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->makeKeyStreamWord()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->keyStream:[B

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->encode32be(I[BI)V

    .line 530
    return-void
.end method

.method private setKeyAndIV([B[B)V
    .locals 3
    .param p1, "k"    # [B
    .param p2, "iv"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "k",
            "iv"
        }
    .end annotation

    .line 506
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    invoke-virtual {p0, v0, p1, p2}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->setKeyAndIV([I[B[B)V

    .line 509
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->F:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 510
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->F:[I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 511
    const/16 v0, 0x20

    .line 512
    .local v0, "nCount":I
    :goto_0
    if-lez v0, :cond_0

    .line 514
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->BitReorganization()V

    .line 515
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->F()I

    move-result v1

    .line 516
    .local v1, "w":I
    ushr-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSRWithInitialisationMode(I)V

    .line 517
    nop

    .end local v1    # "w":I
    add-int/lit8 v0, v0, -0x1

    .line 518
    goto :goto_0

    .line 519
    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->BitReorganization()V

    .line 520
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->F()I

    .line 521
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSRWithWorkMode()V

    .line 522
    return-void
.end method


# virtual methods
.method F()I
    .locals 13

    .line 429
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->BRC:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->F:[I

    aget v2, v2, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->F:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    add-int/2addr v0, v2

    .line 430
    .local v0, "W":I
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->F:[I

    aget v2, v2, v1

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->BRC:[I

    aget v4, v4, v3

    add-int/2addr v2, v4

    .line 431
    .local v2, "W1":I
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->F:[I

    aget v4, v4, v3

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->BRC:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    xor-int/2addr v4, v5

    .line 432
    .local v4, "W2":I
    shl-int/lit8 v5, v2, 0x10

    ushr-int/lit8 v6, v4, 0x10

    or-int/2addr v5, v6

    invoke-static {v5}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->L1(I)I

    move-result v5

    .line 433
    .local v5, "u":I
    shl-int/lit8 v6, v4, 0x10

    ushr-int/lit8 v7, v2, 0x10

    or-int/2addr v6, v7

    invoke-static {v6}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->L2(I)I

    move-result v6

    .line 434
    .local v6, "v":I
    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->F:[I

    sget-object v8, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->S0:[B

    ushr-int/lit8 v9, v5, 0x18

    aget-byte v8, v8, v9

    sget-object v9, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->S1:[B

    ushr-int/lit8 v10, v5, 0x10

    and-int/lit16 v10, v10, 0xff

    aget-byte v9, v9, v10

    sget-object v10, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->S0:[B

    ushr-int/lit8 v11, v5, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    sget-object v11, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->S1:[B

    and-int/lit16 v12, v5, 0xff

    aget-byte v11, v11, v12

    invoke-static {v8, v9, v10, v11}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU32(BBBB)I

    move-result v8

    aput v8, v7, v1

    .line 436
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->F:[I

    sget-object v7, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->S0:[B

    ushr-int/lit8 v8, v6, 0x18

    aget-byte v7, v7, v8

    sget-object v8, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->S1:[B

    ushr-int/lit8 v9, v6, 0x10

    and-int/lit16 v9, v9, 0xff

    aget-byte v8, v8, v9

    sget-object v9, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->S0:[B

    ushr-int/lit8 v10, v6, 0x8

    and-int/lit16 v10, v10, 0xff

    aget-byte v9, v9, v10

    sget-object v10, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->S1:[B

    and-int/lit16 v11, v6, 0xff

    aget-byte v10, v10, v11

    invoke-static {v7, v8, v9, v10}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU32(BBBB)I

    move-result v7

    aput v7, v1, v3

    .line 438
    return v0
.end method

.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 1

    .line 556
    new-instance v0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;-><init>(Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;)V

    return-object v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 169
    const-string v0, "Zuc-128"

    return-object v0
.end method

.method protected getMaxIterations()I
    .locals 1

    .line 159
    const/16 v0, 0x7ff

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 7
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "forEncryption",
            "params"
        }
    .end annotation

    .line 125
    move-object v0, p2

    .line 126
    .local v0, "myParams":Lorg/bouncycastle/crypto/CipherParameters;
    const/4 v1, 0x0

    .line 127
    .local v1, "newKey":[B
    const/4 v2, 0x0

    .line 128
    .local v2, "newIV":[B
    instance-of v3, v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v3, :cond_0

    .line 130
    move-object v3, v0

    check-cast v3, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 131
    .local v3, "ivParams":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v2

    .line 132
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    .line 134
    .end local v3    # "ivParams":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    :cond_0
    instance-of v3, v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v3, :cond_1

    .line 136
    move-object v3, v0

    check-cast v3, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 137
    .local v3, "keyParam":Lorg/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    .line 141
    .end local v3    # "keyParam":Lorg/bouncycastle/crypto/params/KeyParameter;
    :cond_1
    const/4 v3, 0x0

    iput v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->theIndex:I

    .line 142
    iput v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->theIterations:I

    .line 143
    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->setKeyAndIV([B[B)V

    .line 145
    new-instance v3, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v4

    array-length v5, v1

    mul-int/lit8 v5, v5, 0x8

    .line 146
    if-eqz p1, :cond_2

    sget-object v6, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ENCRYPTION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    goto :goto_0

    :cond_2
    sget-object v6, Lorg/bouncycastle/crypto/CryptoServicePurpose;->DECRYPTION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    :goto_0
    invoke-direct {v3, v4, v5, p2, v6}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 145
    invoke-static {v3}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 149
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->copy()Lorg/bouncycastle/util/Memoable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;

    iput-object v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->theResetState:Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;

    .line 150
    return-void
.end method

.method protected makeKeyStreamWord()I
    .locals 3

    .line 539
    iget v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->theIterations:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->theIterations:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->getMaxIterations()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 543
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->BitReorganization()V

    .line 544
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->F()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->BRC:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    xor-int/2addr v0, v1

    .line 545
    .local v0, "result":I
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSRWithWorkMode()V

    .line 546
    return v0

    .line 541
    .end local v0    # "result":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Too much data processed by singleKey/IV"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processBytes([BII[BI)I
    .locals 3
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "in",
            "inOff",
            "len",
            "out",
            "outOff"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->theResetState:Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;

    if-eqz v0, :cond_3

    .line 193
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    .line 197
    add-int v0, p5, p3

    array-length v1, p4

    if-gt v0, v1, :cond_1

    .line 203
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 205
    add-int v1, v0, p5

    add-int v2, v0, p2

    aget-byte v2, p1, v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->returnByte(B)B

    move-result v2

    aput-byte v2, p4, v1

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    .end local v0    # "i":I
    :cond_0
    return p3

    .line 199
    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not initialised"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    .line 215
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->theResetState:Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->theResetState:Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->reset(Lorg/bouncycastle/util/Memoable;)V

    .line 219
    :cond_0
    return-void
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .locals 5
    .param p1, "pState"    # Lorg/bouncycastle/util/Memoable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pState"
        }
    .end annotation

    .line 566
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;

    .line 567
    .local v0, "e":Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 568
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->F:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->F:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->F:[I

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 569
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->BRC:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->BRC:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->BRC:[I

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 570
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->keyStream:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->keyStream:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->keyStream:[B

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 571
    iget v1, v0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->theIndex:I

    iput v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->theIndex:I

    .line 572
    iget v1, v0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->theIterations:I

    iput v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->theIterations:I

    .line 573
    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->theResetState:Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;

    .line 574
    return-void
.end method

.method public returnByte(B)B
    .locals 2
    .param p1, "in"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "in"
        }
    .end annotation

    .line 230
    iget v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->theIndex:I

    if-nez v0, :cond_0

    .line 232
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->makeKeyStream()V

    .line 236
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->keyStream:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->theIndex:I

    aget-byte v0, v0, v1

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    .line 237
    .local v0, "out":B
    iget v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->theIndex:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->theIndex:I

    .line 240
    return v0
.end method

.method protected setKeyAndIV([I[B[B)V
    .locals 5
    .param p1, "pLFSR"    # [I
    .param p2, "k"    # [B
    .param p3, "iv"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "pLFSR",
            "k",
            "iv"
        }
    .end annotation

    .line 468
    if-eqz p2, :cond_1

    array-length v0, p2

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 472
    if-eqz p3, :cond_0

    array-length v0, p3

    if-ne v0, v1, :cond_0

    .line 478
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v1, 0x0

    aget-byte v2, p2, v1

    sget-object v3, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    aget-short v3, v3, v1

    aget-byte v4, p3, v1

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v2

    aput v2, v0, v1

    .line 479
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v1, 0x1

    aget-byte v2, p2, v1

    sget-object v3, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    aget-short v3, v3, v1

    aget-byte v4, p3, v1

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v2

    aput v2, v0, v1

    .line 480
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v1, 0x2

    aget-byte v2, p2, v1

    sget-object v3, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    aget-short v3, v3, v1

    aget-byte v4, p3, v1

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v2

    aput v2, v0, v1

    .line 481
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v1, 0x3

    aget-byte v2, p2, v1

    sget-object v3, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    aget-short v3, v3, v1

    aget-byte v4, p3, v1

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v2

    aput v2, v0, v1

    .line 482
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v1, 0x4

    aget-byte v2, p2, v1

    sget-object v3, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    aget-short v3, v3, v1

    aget-byte v4, p3, v1

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v2

    aput v2, v0, v1

    .line 483
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v1, 0x5

    aget-byte v2, p2, v1

    sget-object v3, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    aget-short v3, v3, v1

    aget-byte v4, p3, v1

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v2

    aput v2, v0, v1

    .line 484
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v1, 0x6

    aget-byte v2, p2, v1

    sget-object v3, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    aget-short v3, v3, v1

    aget-byte v4, p3, v1

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v2

    aput v2, v0, v1

    .line 485
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v1, 0x7

    aget-byte v2, p2, v1

    sget-object v3, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    aget-short v3, v3, v1

    aget-byte v4, p3, v1

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v2

    aput v2, v0, v1

    .line 486
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v1, 0x8

    aget-byte v2, p2, v1

    sget-object v3, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    aget-short v3, v3, v1

    aget-byte v4, p3, v1

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v2

    aput v2, v0, v1

    .line 487
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v1, 0x9

    aget-byte v2, p2, v1

    sget-object v3, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    aget-short v3, v3, v1

    aget-byte v4, p3, v1

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v2

    aput v2, v0, v1

    .line 488
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v1, 0xa

    aget-byte v2, p2, v1

    sget-object v3, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    aget-short v3, v3, v1

    aget-byte v4, p3, v1

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v2

    aput v2, v0, v1

    .line 489
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v1, 0xb

    aget-byte v2, p2, v1

    sget-object v3, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    aget-short v3, v3, v1

    aget-byte v4, p3, v1

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v2

    aput v2, v0, v1

    .line 490
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v1, 0xc

    aget-byte v2, p2, v1

    sget-object v3, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    aget-short v3, v3, v1

    aget-byte v4, p3, v1

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v2

    aput v2, v0, v1

    .line 491
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v1, 0xd

    aget-byte v2, p2, v1

    sget-object v3, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    aget-short v3, v3, v1

    aget-byte v4, p3, v1

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v2

    aput v2, v0, v1

    .line 492
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v1, 0xe

    aget-byte v2, p2, v1

    sget-object v3, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    aget-short v3, v3, v1

    aget-byte v4, p3, v1

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v2

    aput v2, v0, v1

    .line 493
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v1, 0xf

    aget-byte v2, p2, v1

    sget-object v3, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    aget-short v3, v3, v1

    aget-byte v4, p3, v1

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v2

    aput v2, v0, v1

    .line 494
    return-void

    .line 474
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "An IV of 16 bytes is needed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A key of 16 bytes is needed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
