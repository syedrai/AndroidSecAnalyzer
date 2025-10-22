.class Lorg/bouncycastle/crypto/util/SSHBuffer;
.super Ljava/lang/Object;
.source "SSHBuffer.java"


# instance fields
.field private final buffer:[B

.field private pos:I


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->pos:I

    .line 32
    iput-object p1, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->buffer:[B

    .line 33
    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 3
    .param p1, "magic"    # [B
    .param p2, "buffer"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "magic",
            "buffer"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->pos:I

    .line 18
    iput-object p2, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->buffer:[B

    .line 19
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_1

    .line 21
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    if-ne v1, v2, :cond_0

    .line 19
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "magic-number incorrect"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 27
    .end local v0    # "i":I
    :cond_1
    iget v0, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->pos:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->pos:I

    .line 28
    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->buffer:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public hasRemaining()Z
    .locals 2

    .line 152
    iget v0, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->pos:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->buffer:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readBigNumPositive()Ljava/math/BigInteger;
    .locals 5

    .line 134
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/util/SSHBuffer;->readU32()I

    move-result v0

    .line 135
    .local v0, "len":I
    iget v1, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->pos:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->buffer:[B

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 140
    iget v1, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->pos:I

    .local v1, "start":I
    iget v2, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->pos:I

    .line 141
    iget-object v2, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->buffer:[B

    iget v3, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->pos:I

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 142
    .local v2, "d":[B
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v3

    .line 137
    .end local v1    # "start":I
    .end local v2    # "d":[B
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "not enough data for big num"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readBlock()[B
    .locals 4

    .line 57
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/util/SSHBuffer;->readU32()I

    move-result v0

    .line 58
    .local v0, "len":I
    if-nez v0, :cond_0

    .line 60
    const/4 v1, 0x0

    new-array v1, v1, [B

    return-object v1

    .line 63
    :cond_0
    iget v1, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->pos:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->buffer:[B

    array-length v2, v2

    sub-int/2addr v2, v0

    if-gt v1, v2, :cond_1

    .line 68
    iget v1, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->pos:I

    .local v1, "start":I
    iget v2, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->pos:I

    .line 69
    iget-object v2, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->buffer:[B

    iget v3, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->pos:I

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    return-object v2

    .line 65
    .end local v1    # "start":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "not enough data for block"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readPaddedBlock()[B
    .locals 1

    .line 85
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/util/SSHBuffer;->readPaddedBlock(I)[B

    move-result-object v0

    return-object v0
.end method

.method public readPaddedBlock(I)[B
    .locals 10
    .param p1, "blockSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blockSize"
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/util/SSHBuffer;->readU32()I

    move-result v0

    .line 91
    .local v0, "len":I
    if-nez v0, :cond_0

    .line 93
    const/4 v1, 0x0

    new-array v1, v1, [B

    return-object v1

    .line 96
    :cond_0
    iget v1, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->pos:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->buffer:[B

    array-length v2, v2

    sub-int/2addr v2, v0

    if-gt v1, v2, :cond_4

    .line 101
    rem-int v1, v0, p1

    .line 102
    .local v1, "align":I
    if-nez v1, :cond_3

    .line 107
    iget v2, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->pos:I

    .local v2, "start":I
    iget v3, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->pos:I

    add-int/2addr v3, v0

    iput v3, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->pos:I

    .line 108
    iget v3, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->pos:I

    .line 110
    .local v3, "end":I
    if-lez v0, :cond_2

    .line 113
    iget-object v4, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->buffer:[B

    iget v5, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->pos:I

    add-int/lit8 v5, v5, -0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    .line 114
    .local v4, "lastByte":I
    if-lez v4, :cond_2

    if-ge v4, p1, :cond_2

    .line 116
    move v5, v4

    .line 117
    .local v5, "padCount":I
    sub-int/2addr v3, v5

    .line 119
    const/4 v6, 0x1

    .local v6, "i":I
    move v7, v3

    .local v7, "padPos":I
    :goto_0
    if-gt v6, v5, :cond_2

    .line 121
    iget-object v8, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->buffer:[B

    aget-byte v8, v8, v7

    and-int/lit16 v8, v8, 0xff

    if-ne v6, v8, :cond_1

    .line 119
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 123
    :cond_1
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "incorrect padding"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 129
    .end local v4    # "lastByte":I
    .end local v5    # "padCount":I
    .end local v6    # "i":I
    .end local v7    # "padPos":I
    :cond_2
    iget-object v4, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->buffer:[B

    invoke-static {v4, v2, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    return-object v4

    .line 104
    .end local v2    # "start":I
    .end local v3    # "end":I
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "missing padding"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    .end local v1    # "align":I
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "not enough data for block"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readString()Ljava/lang/String;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/util/SSHBuffer;->readBlock()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readU32()I
    .locals 4

    .line 37
    iget v0, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->pos:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->buffer:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x4

    if-gt v0, v1, :cond_0

    .line 42
    iget-object v0, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->buffer:[B

    iget v1, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 43
    .local v0, "i":I
    iget-object v1, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->buffer:[B

    iget v2, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->pos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 44
    iget-object v1, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->buffer:[B

    iget v2, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->pos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 45
    iget-object v1, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->buffer:[B

    iget v2, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->pos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 47
    return v0

    .line 39
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "4 bytes for U32 exceeds buffer."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skipBlock()V
    .locals 3

    .line 74
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/util/SSHBuffer;->readU32()I

    move-result v0

    .line 75
    .local v0, "len":I
    iget v1, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->pos:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->buffer:[B

    array-length v2, v2

    sub-int/2addr v2, v0

    if-gt v1, v2, :cond_0

    .line 80
    iget v1, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/bouncycastle/crypto/util/SSHBuffer;->pos:I

    .line 81
    return-void

    .line 77
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "not enough data for block"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
