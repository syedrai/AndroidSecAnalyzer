.class public Lorg/bouncycastle/oer/BitBuilder;
.super Ljava/lang/Object;
.source "BitBuilder.java"


# static fields
.field private static final bits:[B


# instance fields
.field buf:[B

.field pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/oer/BitBuilder;->bits:[B

    return-void

    :array_0
    .array-data 1
        -0x80t
        0x40t
        0x20t
        0x10t
        0x8t
        0x4t
        0x2t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/oer/BitBuilder;->buf:[B

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/oer/BitBuilder;->pos:I

    return-void
.end method


# virtual methods
.method public pad()V
    .locals 2

    .line 96
    iget v0, p0, Lorg/bouncycastle/oer/BitBuilder;->pos:I

    iget v1, p0, Lorg/bouncycastle/oer/BitBuilder;->pos:I

    rem-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/oer/BitBuilder;->pos:I

    .line 97
    return-void
.end method

.method public write(Ljava/io/OutputStream;)I
    .locals 3
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputStream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    iget v0, p0, Lorg/bouncycastle/oer/BitBuilder;->pos:I

    iget v1, p0, Lorg/bouncycastle/oer/BitBuilder;->pos:I

    rem-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    .line 77
    .local v0, "l":I
    iget-object v1, p0, Lorg/bouncycastle/oer/BitBuilder;->buf:[B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 78
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 79
    return v0
.end method

.method public write7BitBytes(I)V
    .locals 7
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "writing":Z
    const/4 v1, 0x4

    .local v1, "t":I
    :goto_0
    if-ltz v1, :cond_2

    .line 107
    if-nez v0, :cond_0

    const/high16 v2, -0x2000000

    and-int/2addr v2, p1

    if-eqz v2, :cond_0

    .line 109
    const/4 v0, 0x1

    .line 111
    :cond_0
    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {p0, v1}, Lorg/bouncycastle/oer/BitBuilder;->writeBit(I)Lorg/bouncycastle/oer/BitBuilder;

    move-result-object v2

    int-to-long v3, p1

    const/16 v5, 0x20

    const/4 v6, 0x7

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/bouncycastle/oer/BitBuilder;->writeBits(JII)Lorg/bouncycastle/oer/BitBuilder;

    .line 115
    :cond_1
    shl-int/lit8 p1, p1, 0x7

    .line 105
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 117
    .end local v1    # "t":I
    :cond_2
    return-void
.end method

.method public write7BitBytes(Ljava/math/BigInteger;)V
    .locals 10
    .param p1, "value"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 121
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x8

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    div-int/2addr v0, v2

    .line 122
    .local v0, "size":I
    const-wide/16 v3, 0xfe

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    mul-int/lit8 v3, v0, 0x8

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 126
    .local v1, "mask":Ljava/math/BigInteger;
    const/4 v3, 0x0

    .line 127
    .local v3, "writing":Z
    move v4, v0

    .local v4, "t":I
    :goto_0
    if-ltz v4, :cond_2

    .line 129
    if-nez v3, :cond_0

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    sget-object v6, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 131
    const/4 v3, 0x1

    .line 133
    :cond_0
    const/4 v5, 0x7

    if-eqz v3, :cond_1

    .line 135
    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    mul-int/lit8 v7, v0, 0x8

    sub-int/2addr v7, v2

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 136
    .local v6, "b":Ljava/math/BigInteger;
    invoke-virtual {p0, v4}, Lorg/bouncycastle/oer/BitBuilder;->writeBit(I)Lorg/bouncycastle/oer/BitBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9, v2, v5}, Lorg/bouncycastle/oer/BitBuilder;->writeBits(JII)Lorg/bouncycastle/oer/BitBuilder;

    .line 138
    .end local v6    # "b":Ljava/math/BigInteger;
    :cond_1
    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 127
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 140
    .end local v4    # "t":I
    :cond_2
    return-void
.end method

.method public writeAndClear(Ljava/io/OutputStream;)I
    .locals 3
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputStream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    iget v0, p0, Lorg/bouncycastle/oer/BitBuilder;->pos:I

    iget v1, p0, Lorg/bouncycastle/oer/BitBuilder;->pos:I

    rem-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    .line 87
    .local v0, "l":I
    iget-object v1, p0, Lorg/bouncycastle/oer/BitBuilder;->buf:[B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 88
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 89
    invoke-virtual {p0}, Lorg/bouncycastle/oer/BitBuilder;->zero()V

    .line 90
    return v0
.end method

.method public writeBit(I)Lorg/bouncycastle/oer/BitBuilder;
    .locals 5
    .param p1, "bit"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bit"
        }
    .end annotation

    .line 26
    iget v0, p0, Lorg/bouncycastle/oer/BitBuilder;->pos:I

    div-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/bouncycastle/oer/BitBuilder;->buf:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 28
    iget-object v0, p0, Lorg/bouncycastle/oer/BitBuilder;->buf:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 29
    .local v0, "newBytes":[B
    iget-object v1, p0, Lorg/bouncycastle/oer/BitBuilder;->buf:[B

    iget v2, p0, Lorg/bouncycastle/oer/BitBuilder;->pos:I

    div-int/lit8 v2, v2, 0x8

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    iget-object v1, p0, Lorg/bouncycastle/oer/BitBuilder;->buf:[B

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    .line 31
    iput-object v0, p0, Lorg/bouncycastle/oer/BitBuilder;->buf:[B

    .line 34
    .end local v0    # "newBytes":[B
    :cond_0
    if-nez p1, :cond_1

    .line 36
    iget-object v0, p0, Lorg/bouncycastle/oer/BitBuilder;->buf:[B

    iget v1, p0, Lorg/bouncycastle/oer/BitBuilder;->pos:I

    div-int/lit8 v1, v1, 0x8

    aget-byte v2, v0, v1

    sget-object v3, Lorg/bouncycastle/oer/BitBuilder;->bits:[B

    iget v4, p0, Lorg/bouncycastle/oer/BitBuilder;->pos:I

    rem-int/lit8 v4, v4, 0x8

    aget-byte v3, v3, v4

    not-int v3, v3

    and-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0

    .line 40
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/oer/BitBuilder;->buf:[B

    iget v1, p0, Lorg/bouncycastle/oer/BitBuilder;->pos:I

    div-int/lit8 v1, v1, 0x8

    aget-byte v2, v0, v1

    sget-object v3, Lorg/bouncycastle/oer/BitBuilder;->bits:[B

    iget v4, p0, Lorg/bouncycastle/oer/BitBuilder;->pos:I

    rem-int/lit8 v4, v4, 0x8

    aget-byte v3, v3, v4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 42
    :goto_0
    iget v0, p0, Lorg/bouncycastle/oer/BitBuilder;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/oer/BitBuilder;->pos:I

    .line 44
    return-object p0
.end method

.method public writeBits(JI)Lorg/bouncycastle/oer/BitBuilder;
    .locals 6
    .param p1, "value"    # J
    .param p3, "start"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "start"
        }
    .end annotation

    .line 50
    add-int/lit8 v0, p3, -0x1

    .local v0, "p":I
    :goto_0
    if-ltz v0, :cond_1

    .line 52
    const-wide/16 v1, 0x1

    shl-long/2addr v1, v0

    and-long/2addr v1, p1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 53
    .local v1, "set":I
    :goto_1
    invoke-virtual {p0, v1}, Lorg/bouncycastle/oer/BitBuilder;->writeBit(I)Lorg/bouncycastle/oer/BitBuilder;

    .line 50
    .end local v1    # "set":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 56
    .end local v0    # "p":I
    :cond_1
    return-object p0
.end method

.method public writeBits(JII)Lorg/bouncycastle/oer/BitBuilder;
    .locals 6
    .param p1, "value"    # J
    .param p3, "start"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "start",
            "len"
        }
    .end annotation

    .line 62
    add-int/lit8 v0, p3, -0x1

    .local v0, "p":I
    :goto_0
    sub-int v1, p3, p4

    if-lt v0, v1, :cond_1

    .line 64
    const-wide/16 v1, 0x1

    shl-long/2addr v1, v0

    and-long/2addr v1, p1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 65
    .local v1, "set":I
    :goto_1
    invoke-virtual {p0, v1}, Lorg/bouncycastle/oer/BitBuilder;->writeBit(I)Lorg/bouncycastle/oer/BitBuilder;

    .line 62
    .end local v1    # "set":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 68
    .end local v0    # "p":I
    :cond_1
    return-object p0
.end method

.method public zero()V
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/bouncycastle/oer/BitBuilder;->buf:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/oer/BitBuilder;->pos:I

    .line 146
    return-void
.end method
