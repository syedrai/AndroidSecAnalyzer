.class public Lorg/bouncycastle/crypto/engines/Shacal2Engine;
.super Ljava/lang/Object;
.source "Shacal2Engine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final BLOCK_SIZE:I = 0x20

.field private static final K:[I

.field private static final ROUNDS:I = 0x40


# instance fields
.field private forEncryption:Z

.field private workingKey:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->K:[I

    return-void

    :array_0
    .array-data 4
        0x428a2f98
        0x71374491
        -0x4a3f0431
        -0x164a245b
        0x3956c25b
        0x59f111f1
        -0x6dc07d5c    # -6.043E-28f
        -0x54e3a12b
        -0x27f85568
        0x12835b01
        0x243185be
        0x550c7dc3
        0x72be5d74
        -0x7f214e02
        -0x6423f959
        -0x3e640e8c
        -0x1b64963f
        -0x1041b87a
        0xfc19dc6
        0x240ca1cc
        0x2de92c6f
        0x4a7484aa    # 4006186.5f
        0x5cb0a9dc
        0x76f988da
        -0x67c1aeae
        -0x57ce3993
        -0x4ffcd838
        -0x40a68039
        -0x391ff40d
        -0x2a586eb9
        0x6ca6351
        0x14292967
        0x27b70a85
        0x2e1b2138
        0x4d2c6dfc    # 1.80805568E8f
        0x53380d13
        0x650a7354
        0x766a0abb
        -0x7e3d36d2
        -0x6d8dd37b
        -0x5d40175f
        -0x57e599b5
        -0x3db47490
        -0x3893ae5d
        -0x2e6d17e7
        -0x2966f9dc
        -0xbf1ca7b
        0x106aa070
        0x19a4c116
        0x1e376c08
        0x2748774c
        0x34b0bcb5
        0x391c0cb3
        0x4ed8aa4a    # 1.81751936E9f
        0x5b9cca4f
        0x682e6ff3
        0x748f82ee
        0x78a5636f
        -0x7b3787ec
        -0x7338fdf8
        -0x6f410006
        -0x5baf9315
        -0x41065c09
        -0x398e870e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->forEncryption:Z

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->workingKey:[I

    .line 45
    return-void
.end method

.method private byteBlockToInts([B[III)V
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "block"    # [I
    .param p3, "bytesPos"    # I
    .param p4, "blockPos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bytes",
            "block",
            "bytesPos",
            "blockPos"
        }
    .end annotation

    .line 188
    move v0, p4

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 190
    add-int/lit8 v2, p3, 0x1

    .end local p3    # "bytesPos":I
    .local v2, "bytesPos":I
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    shl-int/lit8 p3, p3, 0x18

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "bytesPos":I
    .local v3, "bytesPos":I
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr p3, v2

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "bytesPos":I
    .restart local v2    # "bytesPos":I
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v1, v3, 0x8

    or-int/2addr p3, v1

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "bytesPos":I
    .local v1, "bytesPos":I
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr p3, v2

    aput p3, p2, v0

    .line 188
    add-int/lit8 v0, v0, 0x1

    move p3, v1

    goto :goto_0

    .line 195
    .end local v0    # "i":I
    .end local v1    # "bytesPos":I
    .restart local p3    # "bytesPos":I
    :cond_0
    return-void
.end method

.method private bytes2ints([B[III)V
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "block"    # [I
    .param p3, "bytesPos"    # I
    .param p4, "blockPos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bytes",
            "block",
            "bytesPos",
            "blockPos"
        }
    .end annotation

    .line 199
    move v0, p4

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    div-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_0

    .line 201
    add-int/lit8 v1, p3, 0x1

    .end local p3    # "bytesPos":I
    .local v1, "bytesPos":I
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    shl-int/lit8 p3, p3, 0x18

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "bytesPos":I
    .local v2, "bytesPos":I
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr p3, v1

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "bytesPos":I
    .restart local v1    # "bytesPos":I
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr p3, v2

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "bytesPos":I
    .restart local v2    # "bytesPos":I
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr p3, v1

    aput p3, p2, v0

    .line 199
    add-int/lit8 v0, v0, 0x1

    move p3, v2

    goto :goto_0

    .line 206
    .end local v0    # "i":I
    .end local v2    # "bytesPos":I
    .restart local p3    # "bytesPos":I
    :cond_0
    return-void
.end method

.method private decryptBlock([BI[BI)V
    .locals 12
    .param p1, "in"    # [B
    .param p2, "inOffset"    # I
    .param p3, "out"    # [B
    .param p4, "outOffset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOffset",
            "out",
            "outOffset"
        }
    .end annotation

    .line 132
    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 133
    .local v0, "block":[I
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->byteBlockToInts([B[III)V

    .line 134
    const/16 v2, 0x3f

    .local v2, "i":I
    :goto_0
    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    .line 136
    aget v3, v0, v1

    const/4 v4, 0x1

    aget v5, v0, v4

    const/4 v6, 0x2

    ushr-int/2addr v5, v6

    aget v7, v0, v4

    shl-int/lit8 v7, v7, -0x2

    or-int/2addr v5, v7

    aget v7, v0, v4

    ushr-int/lit8 v7, v7, 0xd

    aget v8, v0, v4

    shl-int/lit8 v8, v8, -0xd

    or-int/2addr v7, v8

    xor-int/2addr v5, v7

    aget v7, v0, v4

    ushr-int/lit8 v7, v7, 0x16

    aget v8, v0, v4

    shl-int/lit8 v8, v8, -0x16

    or-int/2addr v7, v8

    xor-int/2addr v5, v7

    sub-int/2addr v3, v5

    aget v5, v0, v4

    aget v7, v0, v6

    and-int/2addr v5, v7

    aget v7, v0, v4

    const/4 v8, 0x3

    aget v9, v0, v8

    and-int/2addr v7, v9

    xor-int/2addr v5, v7

    aget v7, v0, v6

    aget v9, v0, v8

    and-int/2addr v7, v9

    xor-int/2addr v5, v7

    sub-int/2addr v3, v5

    .line 140
    .local v3, "tmp":I
    aget v5, v0, v4

    aput v5, v0, v1

    .line 141
    aget v5, v0, v6

    aput v5, v0, v4

    .line 142
    aget v4, v0, v8

    aput v4, v0, v6

    .line 143
    const/4 v4, 0x4

    aget v5, v0, v4

    sub-int/2addr v5, v3

    aput v5, v0, v8

    .line 144
    const/4 v5, 0x5

    aget v6, v0, v5

    aput v6, v0, v4

    .line 145
    const/4 v6, 0x6

    aget v7, v0, v6

    aput v7, v0, v5

    .line 146
    const/4 v7, 0x7

    aget v8, v0, v7

    aput v8, v0, v6

    .line 147
    sget-object v8, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->K:[I

    aget v8, v8, v2

    sub-int v8, v3, v8

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->workingKey:[I

    aget v9, v9, v2

    sub-int/2addr v8, v9

    aget v9, v0, v4

    ushr-int/2addr v9, v6

    aget v10, v0, v4

    shl-int/lit8 v10, v10, -0x6

    or-int/2addr v9, v10

    aget v10, v0, v4

    ushr-int/lit8 v10, v10, 0xb

    aget v11, v0, v4

    shl-int/lit8 v11, v11, -0xb

    or-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget v10, v0, v4

    ushr-int/lit8 v10, v10, 0x19

    aget v11, v0, v4

    shl-int/lit8 v11, v11, -0x19

    or-int/2addr v10, v11

    xor-int/2addr v9, v10

    sub-int/2addr v8, v9

    aget v9, v0, v4

    aget v5, v0, v5

    and-int/2addr v5, v9

    aget v4, v0, v4

    not-int v4, v4

    aget v6, v0, v6

    and-int/2addr v4, v6

    xor-int/2addr v4, v5

    sub-int/2addr v8, v4

    aput v8, v0, v7

    .line 134
    .end local v3    # "tmp":I
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 153
    .end local v2    # "i":I
    :cond_0
    move-object v1, p3

    move/from16 v2, p4

    invoke-direct {p0, v0, p3, v2}, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->ints2bytes([I[BI)V

    .line 154
    return-void
.end method

.method private encryptBlock([BI[BI)V
    .locals 10
    .param p1, "in"    # [B
    .param p2, "inOffset"    # I
    .param p3, "out"    # [B
    .param p4, "outOffset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOffset",
            "out",
            "outOffset"
        }
    .end annotation

    .line 102
    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 103
    .local v0, "block":[I
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->byteBlockToInts([B[III)V

    .line 105
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_0

    .line 107
    const/4 v3, 0x4

    aget v4, v0, v3

    const/4 v5, 0x6

    ushr-int/2addr v4, v5

    aget v6, v0, v3

    shl-int/lit8 v6, v6, -0x6

    or-int/2addr v4, v6

    aget v6, v0, v3

    ushr-int/lit8 v6, v6, 0xb

    aget v7, v0, v3

    shl-int/lit8 v7, v7, -0xb

    or-int/2addr v6, v7

    xor-int/2addr v4, v6

    aget v6, v0, v3

    ushr-int/lit8 v6, v6, 0x19

    aget v7, v0, v3

    shl-int/lit8 v7, v7, -0x19

    or-int/2addr v6, v7

    xor-int/2addr v4, v6

    aget v6, v0, v3

    const/4 v7, 0x5

    aget v8, v0, v7

    and-int/2addr v6, v8

    aget v8, v0, v3

    not-int v8, v8

    aget v9, v0, v5

    and-int/2addr v8, v9

    xor-int/2addr v6, v8

    add-int/2addr v4, v6

    const/4 v6, 0x7

    aget v8, v0, v6

    add-int/2addr v4, v8

    sget-object v8, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->K:[I

    aget v8, v8, v2

    add-int/2addr v4, v8

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->workingKey:[I

    aget v8, v8, v2

    add-int/2addr v4, v8

    .line 113
    .local v4, "tmp":I
    aget v8, v0, v5

    aput v8, v0, v6

    .line 114
    aget v6, v0, v7

    aput v6, v0, v5

    .line 115
    aget v5, v0, v3

    aput v5, v0, v7

    .line 116
    const/4 v5, 0x3

    aget v6, v0, v5

    add-int/2addr v6, v4

    aput v6, v0, v3

    .line 117
    const/4 v3, 0x2

    aget v6, v0, v3

    aput v6, v0, v5

    .line 118
    const/4 v6, 0x1

    aget v7, v0, v6

    aput v7, v0, v3

    .line 119
    aget v7, v0, v1

    aput v7, v0, v6

    .line 120
    aget v6, v0, v1

    ushr-int/2addr v6, v3

    aget v7, v0, v1

    shl-int/lit8 v7, v7, -0x2

    or-int/2addr v6, v7

    aget v7, v0, v1

    ushr-int/lit8 v7, v7, 0xd

    aget v8, v0, v1

    shl-int/lit8 v8, v8, -0xd

    or-int/2addr v7, v8

    xor-int/2addr v6, v7

    aget v7, v0, v1

    ushr-int/lit8 v7, v7, 0x16

    aget v8, v0, v1

    shl-int/lit8 v8, v8, -0x16

    or-int/2addr v7, v8

    xor-int/2addr v6, v7

    add-int/2addr v6, v4

    aget v7, v0, v1

    aget v8, v0, v3

    and-int/2addr v7, v8

    aget v8, v0, v1

    aget v9, v0, v5

    and-int/2addr v8, v9

    xor-int/2addr v7, v8

    aget v3, v0, v3

    aget v5, v0, v5

    and-int/2addr v3, v5

    xor-int/2addr v3, v7

    add-int/2addr v6, v3

    aput v6, v0, v1

    .line 105
    .end local v4    # "tmp":I
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 127
    .end local v2    # "i":I
    :cond_0
    invoke-direct {p0, v0, p3, p4}, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->ints2bytes([I[BI)V

    .line 128
    return-void
.end method

.method private ints2bytes([I[BI)V
    .locals 3
    .param p1, "block"    # [I
    .param p2, "out"    # [B
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "block",
            "out",
            "pos"
        }
    .end annotation

    .line 210
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 212
    add-int/lit8 v1, p3, 0x1

    .end local p3    # "pos":I
    .local v1, "pos":I
    aget v2, p1, v0

    ushr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 213
    add-int/lit8 p3, v1, 0x1

    .end local v1    # "pos":I
    .restart local p3    # "pos":I
    aget v2, p1, v0

    ushr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 214
    add-int/lit8 v1, p3, 0x1

    .end local p3    # "pos":I
    .restart local v1    # "pos":I
    aget v2, p1, v0

    ushr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 215
    add-int/lit8 p3, v1, 0x1

    .end local v1    # "pos":I
    .restart local p3    # "pos":I
    aget v2, p1, v0

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 53
    const-string v0, "Shacal2"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .line 58
    const/16 v0, 0x20

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 6
    .param p1, "_forEncryption"    # Z
    .param p2, "params"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "_forEncryption",
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 64
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_1

    .line 68
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->forEncryption:Z

    .line 69
    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->workingKey:[I

    .line 70
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    .line 71
    .local v0, "key":[B
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->setKey([B)V

    .line 72
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x8

    .line 73
    .local v1, "keyBits":I
    new-instance v2, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    .line 74
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x100

    if-ge v1, v4, :cond_0

    move v4, v1

    :cond_0
    iget-boolean v5, p0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->forEncryption:Z

    invoke-static {v5}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v5

    invoke-direct {v2, v3, v4, p2, v5}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 73
    invoke-static {v2}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 75
    return-void

    .line 66
    .end local v0    # "key":[B
    .end local v1    # "keyBits":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only simple KeyParameter expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processBlock([BI[BI)I
    .locals 2
    .param p1, "in"    # [B
    .param p2, "inOffset"    # I
    .param p3, "out"    # [B
    .param p4, "outOffset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOffset",
            "out",
            "outOffset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->workingKey:[I

    if-eqz v0, :cond_3

    .line 164
    add-int/lit8 v0, p2, 0x20

    array-length v1, p1

    if-gt v0, v1, :cond_2

    .line 169
    add-int/lit8 v0, p4, 0x20

    array-length v1, p3

    if-gt v0, v1, :cond_1

    .line 174
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 176
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->encryptBlock([BI[BI)V

    goto :goto_0

    .line 180
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->decryptBlock([BI[BI)V

    .line 183
    :goto_0
    const/16 v0, 0x20

    return v0

    .line 171
    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shacal2 not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 0

    .line 49
    return-void
.end method

.method public setKey([B)V
    .locals 8
    .param p1, "kb"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kb"
        }
    .end annotation

    .line 79
    array-length v0, p1

    if-eqz v0, :cond_1

    array-length v0, p1

    const/16 v1, 0x40

    if-gt v0, v1, :cond_1

    array-length v0, p1

    const/16 v2, 0x10

    if-lt v0, v2, :cond_1

    array-length v0, p1

    rem-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    .line 84
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->workingKey:[I

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v2}, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->bytes2ints([B[III)V

    .line 86
    const/16 v0, 0x10

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 88
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->workingKey:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->workingKey:[I

    add-int/lit8 v4, v0, -0x2

    aget v3, v3, v4

    ushr-int/lit8 v3, v3, 0x11

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->workingKey:[I

    add-int/lit8 v5, v0, -0x2

    aget v4, v4, v5

    shl-int/lit8 v4, v4, -0x11

    or-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->workingKey:[I

    add-int/lit8 v5, v0, -0x2

    aget v4, v4, v5

    ushr-int/lit8 v4, v4, 0x13

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->workingKey:[I

    add-int/lit8 v6, v0, -0x2

    aget v5, v5, v6

    shl-int/lit8 v5, v5, -0x13

    or-int/2addr v4, v5

    xor-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->workingKey:[I

    add-int/lit8 v5, v0, -0x2

    aget v4, v4, v5

    ushr-int/lit8 v4, v4, 0xa

    xor-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->workingKey:[I

    add-int/lit8 v5, v0, -0x7

    aget v4, v4, v5

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->workingKey:[I

    add-int/lit8 v5, v0, -0xf

    aget v4, v4, v5

    ushr-int/lit8 v4, v4, 0x7

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->workingKey:[I

    add-int/lit8 v6, v0, -0xf

    aget v5, v5, v6

    shl-int/lit8 v5, v5, -0x7

    or-int/2addr v4, v5

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->workingKey:[I

    add-int/lit8 v6, v0, -0xf

    aget v5, v5, v6

    ushr-int/lit8 v5, v5, 0x12

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->workingKey:[I

    add-int/lit8 v7, v0, -0xf

    aget v6, v6, v7

    shl-int/lit8 v6, v6, -0x12

    or-int/2addr v5, v6

    xor-int/2addr v4, v5

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->workingKey:[I

    add-int/lit8 v6, v0, -0xf

    aget v5, v5, v6

    ushr-int/lit8 v5, v5, 0x3

    xor-int/2addr v4, v5

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->workingKey:[I

    add-int/lit8 v5, v0, -0x10

    aget v4, v4, v5

    add-int/2addr v3, v4

    aput v3, v2, v0

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 81
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Shacal2-key must be 16 - 64 bytes and multiple of 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
