.class public Lorg/bouncycastle/crypto/digests/MD2Digest;
.super Ljava/lang/Object;
.source "MD2Digest.java"

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;
.implements Lorg/bouncycastle/util/Memoable;


# static fields
.field private static final DIGEST_LENGTH:I = 0x10

.field private static final S:[B


# instance fields
.field private C:[B

.field private COff:I

.field private M:[B

.field private X:[B

.field private mOff:I

.field private final purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

.field private xOff:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 216
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/digests/MD2Digest;->S:[B

    return-void

    :array_0
    .array-data 1
        0x29t
        0x2et
        0x43t
        -0x37t
        -0x5et
        -0x28t
        0x7ct
        0x1t
        0x3dt
        0x36t
        0x54t
        -0x5ft
        -0x14t
        -0x10t
        0x6t
        0x13t
        0x62t
        -0x59t
        0x5t
        -0xdt
        -0x40t
        -0x39t
        0x73t
        -0x74t
        -0x68t
        -0x6dt
        0x2bt
        -0x27t
        -0x44t
        0x4ct
        -0x7et
        -0x36t
        0x1et
        -0x65t
        0x57t
        0x3ct
        -0x3t
        -0x2ct
        -0x20t
        0x16t
        0x67t
        0x42t
        0x6ft
        0x18t
        -0x76t
        0x17t
        -0x1bt
        0x12t
        -0x42t
        0x4et
        -0x3ct
        -0x2at
        -0x26t
        -0x62t
        -0x22t
        0x49t
        -0x60t
        -0x5t
        -0xbt
        -0x72t
        -0x45t
        0x2ft
        -0x12t
        0x7at
        -0x57t
        0x68t
        0x79t
        -0x6ft
        0x15t
        -0x4et
        0x7t
        0x3ft
        -0x6ct
        -0x3et
        0x10t
        -0x77t
        0xbt
        0x22t
        0x5ft
        0x21t
        -0x80t
        0x7ft
        0x5dt
        -0x66t
        0x5at
        -0x70t
        0x32t
        0x27t
        0x35t
        0x3et
        -0x34t
        -0x19t
        -0x41t
        -0x9t
        -0x69t
        0x3t
        -0x1t
        0x19t
        0x30t
        -0x4dt
        0x48t
        -0x5bt
        -0x4bt
        -0x2ft
        -0x29t
        0x5et
        -0x6et
        0x2at
        -0x54t
        0x56t
        -0x56t
        -0x3at
        0x4ft
        -0x48t
        0x38t
        -0x2et
        -0x6at
        -0x5ct
        0x7dt
        -0x4at
        0x76t
        -0x4t
        0x6bt
        -0x1et
        -0x64t
        0x74t
        0x4t
        -0xft
        0x45t
        -0x63t
        0x70t
        0x59t
        0x64t
        0x71t
        -0x79t
        0x20t
        -0x7at
        0x5bt
        -0x31t
        0x65t
        -0x1at
        0x2dt
        -0x58t
        0x2t
        0x1bt
        0x60t
        0x25t
        -0x53t
        -0x52t
        -0x50t
        -0x47t
        -0xat
        0x1ct
        0x46t
        0x61t
        0x69t
        0x34t
        0x40t
        0x7et
        0xft
        0x55t
        0x47t
        -0x5dt
        0x23t
        -0x23t
        0x51t
        -0x51t
        0x3at
        -0x3dt
        0x5ct
        -0x7t
        -0x32t
        -0x46t
        -0x3bt
        -0x16t
        0x26t
        0x2ct
        0x53t
        0xdt
        0x6et
        -0x7bt
        0x28t
        -0x7ct
        0x9t
        -0x2dt
        -0x21t
        -0x33t
        -0xct
        0x41t
        -0x7ft
        0x4dt
        0x52t
        0x6at
        -0x24t
        0x37t
        -0x38t
        0x6ct
        -0x3ft
        -0x55t
        -0x6t
        0x24t
        -0x1ft
        0x7bt
        0x8t
        0xct
        -0x43t
        -0x4ft
        0x4at
        0x78t
        -0x78t
        -0x6bt
        -0x75t
        -0x1dt
        0x63t
        -0x18t
        0x6dt
        -0x17t
        -0x35t
        -0x2bt
        -0x2t
        0x3bt
        0x0t
        0x1dt
        0x39t
        -0xet
        -0x11t
        -0x49t
        0xet
        0x66t
        0x58t
        -0x30t
        -0x1ct
        -0x5at
        0x77t
        0x72t
        -0x8t
        -0x15t
        0x75t
        0x4bt
        0xat
        0x31t
        0x44t
        0x50t
        -0x4ct
        -0x71t
        -0x13t
        0x1ft
        0x1at
        -0x25t
        -0x67t
        -0x73t
        0x33t
        -0x61t
        0x11t
        -0x7dt
        0x14t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/MD2Digest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 2
    .param p1, "purpose"    # Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "purpose"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/16 v0, 0x30

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->X:[B

    .line 22
    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    .line 25
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->C:[B

    .line 35
    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    .line 37
    const/16 v0, 0x40

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 39
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/MD2Digest;->reset()V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/MD2Digest;)V
    .locals 2
    .param p1, "t"    # Lorg/bouncycastle/crypto/digests/MD2Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/16 v0, 0x30

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->X:[B

    .line 22
    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    .line 25
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->C:[B

    .line 44
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/MD2Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    .line 46
    const/16 v0, 0x40

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 48
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/MD2Digest;->copyIn(Lorg/bouncycastle/crypto/digests/MD2Digest;)V

    .line 49
    return-void
.end method

.method private copyIn(Lorg/bouncycastle/crypto/digests/MD2Digest;)V
    .locals 4
    .param p1, "t"    # Lorg/bouncycastle/crypto/digests/MD2Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 53
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/MD2Digest;->X:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->X:[B

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/MD2Digest;->X:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    iget v0, p1, Lorg/bouncycastle/crypto/digests/MD2Digest;->xOff:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->xOff:I

    .line 55
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    iget v0, p1, Lorg/bouncycastle/crypto/digests/MD2Digest;->mOff:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->mOff:I

    .line 57
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/MD2Digest;->C:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->C:[B

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/MD2Digest;->C:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    iget v0, p1, Lorg/bouncycastle/crypto/digests/MD2Digest;->COff:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->COff:I

    .line 59
    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 1

    .line 263
    new-instance v0, Lorg/bouncycastle/crypto/digests/MD2Digest;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/digests/MD2Digest;-><init>(Lorg/bouncycastle/crypto/digests/MD2Digest;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 4
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "outOff"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    array-length v0, v0

    iget v1, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->mOff:I

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    .line 90
    .local v0, "paddingByte":B
    iget v1, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->mOff:I

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 92
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    aput-byte v0, v2, v1

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/digests/MD2Digest;->processCheckSum([B)V

    .line 97
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/digests/MD2Digest;->processBlock([B)V

    .line 99
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->C:[B

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/digests/MD2Digest;->processBlock([B)V

    .line 101
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->X:[B

    iget v2, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->xOff:I

    const/16 v3, 0x10

    invoke-static {v1, v2, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/MD2Digest;->reset()V

    .line 105
    return v3
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 68
    const-string v0, "MD2"

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    .line 258
    const/16 v0, 0x10

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    .line 77
    const/16 v0, 0x10

    return v0
.end method

.method protected processBlock([B)V
    .locals 6
    .param p1, "m"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "m"
        }
    .end annotation

    .line 197
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 199
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->X:[B

    add-int/lit8 v2, v0, 0x10

    aget-byte v3, p1, v0

    aput-byte v3, v1, v2

    .line 200
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->X:[B

    add-int/lit8 v2, v0, 0x20

    aget-byte v3, p1, v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->X:[B

    aget-byte v4, v4, v0

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .line 205
    .local v0, "t":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    const/16 v2, 0x12

    if-ge v1, v2, :cond_2

    .line 207
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_2
    const/16 v3, 0x30

    if-ge v2, v3, :cond_1

    .line 209
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->X:[B

    aget-byte v4, v3, v2

    sget-object v5, Lorg/bouncycastle/crypto/digests/MD2Digest;->S:[B

    aget-byte v5, v5, v0

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 210
    .end local v0    # "t":I
    .local v4, "t":I
    and-int/lit16 v0, v4, 0xff

    .line 207
    .end local v4    # "t":I
    .restart local v0    # "t":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 212
    .end local v2    # "k":I
    :cond_1
    add-int v2, v0, v1

    rem-int/lit16 v0, v2, 0x100

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 214
    .end local v1    # "j":I
    :cond_2
    return-void
.end method

.method protected processCheckSum([B)V
    .locals 6
    .param p1, "m"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "m"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->C:[B

    const/16 v1, 0xf

    aget-byte v0, v0, v1

    .line 189
    .local v0, "L":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 191
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->C:[B

    aget-byte v3, v2, v1

    sget-object v4, Lorg/bouncycastle/crypto/digests/MD2Digest;->S:[B

    aget-byte v5, p1, v1

    xor-int/2addr v5, v0

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 192
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->C:[B

    aget-byte v0, v2, v1

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->xOff:I

    .line 113
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->X:[B

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 115
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->X:[B

    aput-byte v0, v2, v1

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    .end local v1    # "i":I
    :cond_0
    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->mOff:I

    .line 118
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    array-length v2, v2

    if-eq v1, v2, :cond_1

    .line 120
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    aput-byte v0, v2, v1

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 122
    .end local v1    # "i":I
    :cond_1
    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->COff:I

    .line 123
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->C:[B

    array-length v2, v2

    if-eq v1, v2, :cond_2

    .line 125
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->C:[B

    aput-byte v0, v2, v1

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 127
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .locals 1
    .param p1, "other"    # Lorg/bouncycastle/util/Memoable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 268
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/digests/MD2Digest;

    .line 270
    .local v0, "d":Lorg/bouncycastle/crypto/digests/MD2Digest;
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/MD2Digest;->copyIn(Lorg/bouncycastle/crypto/digests/MD2Digest;)V

    .line 271
    return-void
.end method

.method public update(B)V
    .locals 3
    .param p1, "in"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->mOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->mOff:I

    aput-byte p1, v0, v1

    .line 137
    iget v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->mOff:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 139
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/MD2Digest;->processCheckSum([B)V

    .line 140
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/MD2Digest;->processBlock([B)V

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->mOff:I

    .line 143
    :cond_0
    return-void
.end method

.method public update([BII)V
    .locals 3
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "len"
        }
    .end annotation

    .line 157
    nop

    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->mOff:I

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    .line 159
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/MD2Digest;->update(B)V

    .line 160
    add-int/lit8 p2, p2, 0x1

    .line 161
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 167
    :cond_0
    :goto_1
    const/16 v0, 0x10

    if-lt p3, v0, :cond_1

    .line 169
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/MD2Digest;->processCheckSum([B)V

    .line 171
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/MD2Digest;->processBlock([B)V

    .line 172
    add-int/lit8 p3, p3, -0x10

    .line 173
    add-int/lit8 p2, p2, 0x10

    goto :goto_1

    .line 179
    :cond_1
    :goto_2
    if-lez p3, :cond_2

    .line 181
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/MD2Digest;->update(B)V

    .line 182
    add-int/lit8 p2, p2, 0x1

    .line 183
    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    .line 185
    :cond_2
    return-void
.end method
